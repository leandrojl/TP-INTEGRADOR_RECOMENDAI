-- i) Top 10 de contenidos (a su criterio) que tengan al menos 5 puntuaciones.

select 
	  c.titulo, avg(r.puntaje) as prom
from 
	  recomendacion r
join contenido c on c.id_contenido = r.fk_id_contenido
group by 
	  c.id_contenido, c.titulo
having avg(r.puntaje)>=5
order by prom DESC;

-- ii) Por cada formato, mostrar cantidad de contenidos, de recomendaciones hechas, de consumidas y promedio de puntuación global.

select 
	form.descripcion, 
	count(distinct cont.id_contenido) as Cantidad_de_Contenidos,
	count(rec.id_recomendacion) as Cantidad_de_Recomendacion,
	count(rec.consumio) as Cantidad_Consumidas,
	coalesce(avg(rec.puntaje),"sin puntuar") as PuntajePromedio 
from 
	formato form
left join contenido cont on cont.fk_id_formato = form.id_formato
left join recomendacion rec on cont.id_contenido = rec.fk_id_contenido
group by 
	form.descripcion;


-- iii)  Armar una playlist de recomendadas con canciones emocionantes para cuando estás aburrido.

select 
	c.id_contenido, c.titulo
from 
	recomendacion r 
join contenido c on r.fk_id_contenido = c.id_contenido
join contenido_emocion ce on c.id_contenido =  ce.fk_id_contenido
join contenido_caracteristica cc on c.id_contenido = cc.fk_id_contenido
where 
	r.fk_id_usuario= 2
	and r.fk_nro_conversacion = 1
	and c.fk_id_formato = 1 -- es una cancion
	and ce.fk_id_emocion = 11 -- es la emocion aburrido
	and cc.fk_id_caracteristica = 12;

-- esta consulta nos trae todas las canciones emocionantes para cuando estas aburrido
select 
	c.id_contenido, c.titulo
from 
	contenido c
join contenido_emocion ce on c.id_contenido =  ce.fk_id_contenido
join contenido_caracteristica cc on c.id_contenido = cc.fk_id_contenido
where 
	c.fk_id_formato = 1 
	and ce.fk_id_emocion = 11 
	and cc.fk_id_caracteristica = 12; 


-- iv) Saga de películas más “atrapante” del catálogo.

select 
	distinct c.id_contenido, c.titulo
from 
	contenido c
join contenido_caracteristica cc on c.id_contenido = cc.fk_id_contenido
join esta_basado eb on c.id_contenido = eb.fk_id_contenido_1 or c.id_contenido = eb.fk_id_contenido_2
where 
	cc.fk_id_caracteristica = 11 
	and (
	eb.fk_id_tipo_de_relacion = 1
	or
	eb.fk_id_tipo_de_relacion = 2
	)
	and c.fk_id_formato = 2;

-- v) Personas que participen de alguna manera en contenidos de todos los formatos posibles

select 
	p.descripcion
from 
	participe p
where not exists
	(select 1
	from formato f
	where not exists
		(select 1
		from contenido c
		join participa pa on p.id_participe = pa.fk_id_participe
		where c.fk_id_formato = f.id_formato
		and c.id_contenido = pa.fk_id_contenido
		)
		);
        
        
-- vi) Elaborar una consulta interesante para este modelo. Enunciarla en lenguaje natural y en sql.

-- vii) Generar una vista de la ficha técnica de un contenido cualquiera.

select * from ficha_tecnica;

create or replace view Ficha_Tecnica as
select 
    c.titulo as Titulo,
    f.descripcion as Formato,
    c.tiempo_consumido as Duracion,
    edm.descripcion as Unidad_de_Medida,
    c.año_publicacion as Año_Publicacion,
    p.descripcion as Pais_Origen,
    GROUP_CONCAT(distinct g.descripcion separator ', ') as Generos, -- esta funcion me permite concatenar los generos pertenecientes a X pelicula y el separator es una funcion para establecer como se separa el contenido
	GROUP_CONCAT(distinct pe.descripcion separator ', ') as Participes,
    GROUP_CONCAT(distinct t.descripcion separator ', ') as Tematicas,
    GROUP_CONCAT(distinct carac.descripcion separator ', ') as Caracteristicas
from
    contenido c
    join pais p on c.fk_id_pais_es_de = p.id_pais
    join formato f on c.fk_id_formato = f.id_formato
    join unidad_de_medida edm on c.fk_id_unidad_de_medida = edm.id_unidad_de_medida
    join contenido_genero cg on c.id_contenido = cg.fk_id_contenido
    join genero g on cg.fk_id_genero = g.id_genero
    join participa par on par.fk_id_contenido = c.id_contenido
    join participe pe on pe.id_participe = par.fk_id_participe
    join contenido_tematica ct on c.id_contenido = ct.fk_id_contenido
    join tematica t on t.id_tematica = ct.fk_id_tematica
    join contenido_caracteristica cc on cc.fk_id_contenido = c.id_contenido
    join caracteristica carac on carac.id_caracteristica = cc.fk_id_caracteristica
where c.id_contenido in (1)
group by 
    c.id_contenido;
    
   
    