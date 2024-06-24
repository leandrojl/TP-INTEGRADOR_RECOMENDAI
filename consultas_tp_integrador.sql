
INSERT INTO genero (id_genero, descripcion)
VALUES (1,'Acción'),(2,'Aventura'),(3,'Comedia'), (4,'Drama'),(5,'Fantasía'), (6,'Ciencia ficción'),(7,'Terror'),
(8,'Suspense'),(9,'Musical'),(10,'Romance'),(11,'Animación'),(12,'Familiar'),(13,'Documental'),(14,'Biográfica'),(15,'Western'),(16,'Cortometraje');


INSERT INTO caracteristica (id_caracteristica,descripcion) VALUES 
(1,'Efectos especiales'),(2,'MUNDO MAGICO'),(3,'SISTEMA MAGICO'),(4,'Popular'),(5,'HUMOR'),(6,'INFANTIL'),(7,'ADULTO'),(8,'Compleja'),(9,'Narrativa'),(10,'Taquilla');


INSERT INTO emocion (id_emocion, descripcion) 
VALUES (1, 'Felicidad'),(2, 'Tristeza'),(3, 'Enojo'),(4, 'Miedo'),(5, 'Sorpresa'),(6, 'Asco'),
(7, 'Amor'),(8, 'Vergüenza'),(9, 'Ansiedad'),(10, 'Confianza');

select * from rol;

INSERT INTO rol (id_rol, descripcion) VALUES
(1, 'Administrador'),(2, 'Editor'),(3, 'Autor'),(4, 'Colaborador'),(5, 'Suscriptor'),(6, 'Moderador'),(7, 'Analista'),(8, 'Diseñador'),(9, 'Desarrollador'),(10, 'Gerente'),
(11, 'Soporte Técnico'),(12, 'Ventas'),(13, 'Marketing'),(14, 'Consultor'),(15, 'Tester'),(16, 'Escritor'),(17, 'Ilustrador'),(18, 'Corrector de estilo'),(19, 'Editor literario'),
(20, 'Diagramador'),(21, 'Agente literario'),(22, 'Publicista'),(23, 'Compositor'),(24, 'Letrista'),(25, 'Arreglista'),(26, 'Productor musical'),(27, 'Ingeniero de sonido'),
(28, 'Músico de sesión'),(29, 'Vocalista'),(30, 'Director de coro'),(31, 'Director'),(32, 'Productor'),(33, 'Guionista'),(34, 'Director de fotografía'),(35, 'Actor'),
(36, 'Editor de video'),(37, 'Diseñador de sonido'),(38, 'Director de arte'),(39, 'Vestuarista'),(40, 'Maquillador'),(41, 'Efectos especiales'),(42, 'Gaffer');

select * from participe;

INSERT INTO participe (id_participe, descripcion) VALUES
(1, 'Daniel Radcliffe'),(2, 'Emma Watson'),(3, 'Rupert Grint'),(4, 'Tom Hanks'),(5, 'Robert De Niro'),(6, 'J.K. Rowling'),(7, 'Stephen King'),(8, 'George Clooney'),(9, 'Brad Pitt'),
(10, 'Angelina Jolie'),(11, 'Johnny Depp'),(12, 'Nicole Kidman'),(13, 'Matt Damon'),(14, 'Anne Hathaway'),(15, 'Will Smith'),(16, 'Charlize Theron'),(17, 'Chris Hemsworth'),
(18, 'Scarlett Johansson'),(19, 'Denzel Washington'),(20, 'Emma Watson'),(21, 'Hugh Jackman'),(22, 'Natalie Portman'),(23, 'Clint Eastwood'),(24, 'Julia Roberts'),(25, 'Leonardo DiCaprio'),
(26, 'Sandra Bullock'),(27, 'George R.R. Martin'),(28, 'J.R.R. Tolkien'),(29, 'Agatha Christie'),(30, 'Ernest Hemingway'),(31,'Morgan Freeman'),(32,'Meryl Streep');

select * from pais;

INSERT INTO pais (id_pais, descripcion) VALUES
(1, 'Argentina'),(2, 'Estados Unidos'),(3, 'Chile'),(4, 'Uruguay'),(5, 'Paraguay'),(6, 'Perú'),(7, 'Bolivia'),(8, 'Ecuador'),(9, 'Colombia'),(10, 'Venezuela'),(11, 'Panamá'),
(12, 'Costa Rica'),(13, 'Nicaragua'),(14, 'Honduras'),(15, 'El Salvador'),(16, 'Guatemala'),(17, 'México'),(18, 'Brasil'),(19, 'Canadá'),(20, 'España'),(21, 'Francia'),
(22, 'Alemania'),(23, 'Italia'),(24, 'Reino Unido'),(25, 'Irlanda'),(26, 'Portugal'),(27, 'Rusia'),(28, 'China'),(29, 'Japón'),(30, 'Australia');

select * from idioma;

INSERT INTO idioma (id_idioma, descripcion) VALUES
(1, 'Inglés'),(2, 'Chino Mandarín'),(3, 'Hindú'),(4, 'Español'),(5, 'Francés'),(6, 'Árabe'),(7, 'Bengalí'),(8, 'Ruso'),
(9, 'Portugués'),(10, 'Indonesio'),(11, 'Urdu'),(12, 'Alemán'),(13, 'Japonés'),(14, 'Swahili'),(15, 'Maratí');

select * from tematica;

INSERT INTO tematica (id_tematica, descripcion) 
VALUES (1, 'Tecnología'), (2, 'Deportes'), (3, 'Música'), (4, 'Cine'),(5, 'Literatura'),(6, 'Viajes'),(7, 'Gastronomía'),(8, 'Moda'),(9, 'Salud'),(10, 'Fitness'),(11, 'Educación'),
(12, 'Política'),(13, 'Finanzas'),(14, 'Ciencia'),(15, 'Arte'),(16, 'Fotografía'),(17, 'Historia'),(18, 'Animales'),(19, 'Videojuegos'),(20, 'Medio Ambiente');

select * from formato;

INSERT INTO formato (id_formato,descripcion) VALUES 
(1,'Cancion'),(2,'Película'),(3,'Streaming'),(4,'Blog'),(5,'Juego'),(6,'Libro'),(7,'Serie'),(8,'Podcast'),(9,'Revista'),(10,'Periódico'),(11,'Documentale'),(12,'Video Musical'),
(13,'Entrevista'),(14,'Obra de Teatro'),(15,'Exposicion'),(16,'Videojuego'),(17,'Webinar'),(18,'Tutorial'),(19,'Educación Online'),(20,'Infografía'),(21,'Fotografía'),
(22,'Comic'),(23,'Manga'),(24,'Manual'),(25,'Noticiero'),(26,'Reality Shows'),(27,'Deporte en Vivo'),(28,'Programa de TV'),(29,'Evento en Vivo'),(30,'Conferencia'),
(31,'Seminario'),(32,'Concursos'),(33,'Publicaciones Académicas');

INSERT INTO unidad_de_medida (id_unidad_de_medida,descripcion) VALUES 
(1,'Minutos'),(2,'Horas'),(3,'Palabras'),(4,'Páginas'),(5,'Episodios'),(6,'Días'),
(7,'Elementos'),(8,'Imágenes'),(9,'Eventos');

select * from usuario;
select * from pais;

INSERT INTO usuario (id_usuario, email, contraseña, sexo, fecha_nacimiento, fk_id_pais_origen, fk_id_pais_reside) 
VALUES
(1, 'user1@example.com', 'password1', 'Masculino', '1990-01-01', 1, 1),
(2, 'user2@example.com', 'password2', 'Femenino', '1985-05-15', 2, 5),
(3, 'user3@example.com', 'password3', 'Masculino', '1992-07-22', 3, 6),
(4, 'user4@example.com', 'password4', 'Femenino', '1988-12-30', 4, 7),
(5, 'user5@example.com', 'password5', 'Masculino', '1995-09-09', 5, 8),
(6, 'user6@example.com', 'password6', 'Femenino', '1993-03-03', 6, 9),
(7, 'user7@example.com', 'password7', 'Masculino', '1987-11-11', 7, 10),
(8, 'user8@example.com', 'password8', 'Femenino', '1991-06-17', 8, 11),
(9, 'user9@example.com', 'password9', 'Masculino', '1989-08-24', 9, 12),
(10, 'user10@example.com', 'password10', 'Femenino', '1994-04-04', 10, 13),
(11, 'user11@example.com', 'password11', 'Masculino', '1996-02-28', 11, 14),
(12, 'user12@example.com', 'password12', 'Femenino', '1998-10-10', 12, 15);


select * from conversacion;

select * from recomendacion;

INSERT INTO conversacion (nro_conversacion, fk_id_usuario, fecha) 
VALUES
(1, 1, '2023-01-01'),(2, 1, '2023-02-15'),(3, 1, '2023-03-10'),(4, 1, '2023-04-20'),(5, 1, '2023-05-05'),
(1, 2, '2023-06-30'),(2, 2, '2023-07-15'),(3, 2, '2023-08-25'),(4, 2, '2023-09-10'),(5, 2, '2023-10-20');

-- conversacion emocion

select * from emocion;

select * from conversacion_emocion;

insert into conversacion_emocion(fk_nro_conversacion, fk_id_usuario, fk_id_emocion) values
(1,1,1), (1,1,2), (1,1,3), (1,1,4);

-- conversacion_caracteristica

select * from caracteristica;

select * from conversacion_caracteristica;

insert into conversacion_caracteristica(fk_nro_conversacion, fk_id_usuario, fk_id_caracteristica) values
(1,1,1), (1,1,2), (1,1,3), (1,1,4);

-- conversacion_genero

select * from genero;

select * from conversacion_genero;

insert into conversacion_genero(fk_nro_conversacion, fk_id_usuario, fk_id_genero) values
(1,1,1), (1,1,2), (1,1,3), (1,1,4);

-- recomendacion
select * from pais;
select * from formato;
select * from unidad_de_medida;
select * from contenido;
select * from recomendacion;

-- tabla CONTENIDO

insert into contenido (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values (1,"Harry Potter y la Piedra Filosofal", 2001, 2, 2,2,3);

insert into contenido (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values (2,"Harry Potter y la camara de los secretos", 2002, 2, 2,2,3);

insert into contenido (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values (3,"Harry Potter y el prisionero de Azkaban", 2004, 2, 2,2,3);

insert into contenido (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values (4,"Star Wars 1", 1999, 2, 2,2,2);

insert into contenido (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values (5,"Star Wars 2", 2002, 2, 2,2,2);

insert into contenido (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values (6,"Star Wars 3", 2005, 2, 2,2,2);

insert into contenido (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values 	(7,"El profeta", 2005, 4,1,1,3),(8,"Tormenta",2010,7,1,1,4),(9,"Ves", 2011,7,1,1,3),(10,"Jose Sabia",2018,4,1,1,3);

insert into contenido (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values 	
(11,"Clarobscuro",1990,4,1,1,5),
(12,"Spaghetti del rock",1989,7,2,1,3),
(13,"Par mil",1995,1,2,1,3);

insert into contenido (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values (14, "El hobbit", 1937, 24,6,4,310),
	   (15, "La comunidad del anillo", 1954, 24,6,4,423),
       (16,"El Retorno del Rey",1955,24,6,4,416),
       (17,"Las Dos Torres", 1954, 24,6,4,352),
       (18,"God of War",2005,2,5,2,12),
		(19,"God of War II",2007,2,5,2,15),
		(20,"God of War: Chains of Olympus",2008,2,5,2,7),
		(21,"God of War III",2010,2,5,2,12),
		(22,"God of War: Ghost of Sparta",2010,2,5,2,8),
        (23,"Los Simpson - Temporada 1",1989,2,7,1,286),
        (24,"Los Simpson - Temporada 2", 1990,2,7,1,484);

insert into contenido (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values (25,"Gonna Fly Now", 1976, 2, 1, 1, 4);

insert into contenido (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values (26,"All Star", 1999, 2, 1, 1, 4);

select * from
contenido c
join formato f on c.fk_id_formato = f.id_formato;

select * from
contenido;
select * from tematica;
select * from genero;
select * from caracteristica;
select * from emocion;
select * from recomendacion;

insert into recomendacion (id_recomendacion, opinion, consumio, interes, puntaje, comentario, fk_id_contenido, fk_id_tematica, fk_id_genero, fk_id_caracteristica, fk_id_emocion, fk_id_usuario, fk_nro_conversacion)
values (1, "...", 1, 1, 5, "...", 1, 4, 2, 1, 1, 1, 1);

insert into recomendacion (id_recomendacion, opinion, consumio, interes, puntaje, comentario, fk_id_contenido, fk_id_tematica, fk_id_genero, fk_id_caracteristica, fk_id_emocion, fk_id_usuario, fk_nro_conversacion)
values (2,"...", 1, 1, 5, "...", 2,4,4,2,7,1,1);

insert into recomendacion (id_recomendacion, opinion, consumio, interes, puntaje, comentario, fk_id_contenido, fk_id_tematica, fk_id_genero, fk_id_caracteristica, fk_id_emocion, fk_id_usuario, fk_nro_conversacion)
values (3,"...", null, null, null, "...", 2,4,4,2,7,1,1);

insert into recomendacion (id_recomendacion, opinion, consumio, interes, puntaje, comentario, fk_id_contenido, fk_id_tematica, fk_id_genero, fk_id_caracteristica, fk_id_emocion, fk_id_usuario, fk_nro_conversacion)
values (4,"...", 1, 1, 5, "...", 25,null,null,12,11,2,1), (5,"...", 1, 1, 5, "...", 26,null,null,12,11,2,1);

select * from contenido;

-- i) Top 10 de contenidos (a su criterio) que tengan al menos 5 puntuaciones.

select * from contenido;
select * from recomendacion;

select *
from contenido c
join recomendacion r on c.id_contenido = r.fk_id_contenido;

select c.titulo, avg(r.puntaje) as prom
from recomendacion r
join contenido c on c.id_contenido = r.fk_id_contenido
group by c.id_contenido, c.titulo
having avg(r.puntaje)>=5
order by prom DESC;

-- ii) Por cada formato, mostrar cantidad de contenidos, de recomendaciones hechas, de consumidas y promedio de puntuación global.

select form.descripcion, 
count(distinct cont.id_contenido) as Cantidad_de_Contenidos,
count(rec.id_recomendacion) as Cantidad_de_Recomendacion,
count(rec.consumio) as Cantidad_Consumidas,
coalesce(avg(rec.puntaje),"sin puntuar") as PuntajePromedio -- coalesce(avg(rec.puntaje),0) as PuntajePromedio (esta funcion evita los null)  -- avg(rec.puntaje) as PuntajePromedio
from formato form
left join contenido cont on cont.fk_id_formato = form.id_formato
left join recomendacion rec on cont.id_contenido = rec.fk_id_contenido
group by form.descripcion;

select c.titulo 
from recomendacion r
join contenido c on r.fk_id_contenido = c.id_contenido;

-- iii)  Armar una playlist de recomendadas con canciones emocionantes para cuando estás aburrido.

-- la consulta trae todas las canciones de la tabla contenido que asocia con la caracteristica emocionante y la emocion aburrido
select c.id_contenido, c.titulo
from contenido c
join contenido_emocion ce on c.id_contenido =  ce.fk_id_contenido
join contenido_caracteristica cc on c.id_contenido = cc.fk_id_contenido
where c.fk_id_formato = 1 -- es una cancion
and ce.fk_id_emocion = 11 
and cc.fk_id_caracteristica = 12;

-- la consulta trae todas las canciones de la tabla recomendacion que asocia con la caracteristica emocionante y la emocion aburrido
select c.id_contenido, c.titulo
from recomendacion r 
join contenido c on r.fk_id_contenido = c.id_contenido
join contenido_emocion ce on c.id_contenido =  ce.fk_id_contenido
join contenido_caracteristica cc on c.id_contenido = cc.fk_id_contenido
where c.fk_id_formato = 1 -- es una cancion
and ce.fk_id_emocion = 11 -- es la emocion aburrido
and cc.fk_id_caracteristica = 12;

-- aca buscamos todos los registros de recomendaciones y armamos una playlist con las canciones que le recomendo a un usuario X en una conversacion X

select c.id_contenido, c.titulo
from recomendacion r 
join contenido c on r.fk_id_contenido = c.id_contenido
join contenido_emocion ce on c.id_contenido =  ce.fk_id_contenido
join contenido_caracteristica cc on c.id_contenido = cc.fk_id_contenido
where r.fk_id_usuario= 2
and r.fk_nro_conversacion = 1
and c.fk_id_formato = 1 -- es una cancion
and ce.fk_id_emocion = 11 -- es la emocion aburrido
and cc.fk_id_caracteristica = 12;

select * from emocion;
select * from caracteristica;
select * from contenido;

insert into emocion
(id_emocion, descripcion)
values (11,"aburrido");

insert into caracteristica
(id_caracteristica, descripcion)
values (11, "atrapante");

insert into caracteristica
(id_caracteristica, descripcion)
values (12, "emocionante");

select * from contenido_emocion;
select * from contenido_caracteristica;

insert into contenido_emocion
(fk_id_contenido, fk_id_emocion)
values (25, 11);

insert into contenido_caracteristica
(fk_id_contenido, fk_id_caracteristica)
values (25, 12);

insert into contenido_emocion -- a la cancion con id 25 GONNA FLY NOW le agregamos la emocion aburrido
(fk_id_contenido, fk_id_emocion)
values (25, 11);

insert into contenido_caracteristica -- a la cancion con id 25 gonna fly now le agregamos la caracteristica emocionante
(fk_id_contenido, fk_id_caracteristica)
values (25, 12);

insert into contenido_emocion -- a la cancion con id 26 all star le agregamos la emocion aburrido
(fk_id_contenido, fk_id_emocion)
values (26, 11);

insert into contenido_caracteristica -- a la cancion con id 10 jose sabia la caracteristica emocionante
(fk_id_contenido, fk_id_caracteristica)
values (10, 12);

insert into contenido_emocion -- a la cancion con id 10 jose sabia le agregamos la emocion aburrido
(fk_id_contenido, fk_id_emocion)
values (10, 11);

insert into contenido_caracteristica -- a la cancion con id 26 all star la caracteristica emocionante
(fk_id_contenido, fk_id_caracteristica)
values (26, 12);

select c.titulo, e.descripcion as emocion, ca.descripcion as caracteristica
from contenido c
join contenido_emocion ce on c.id_contenido = ce.fk_id_contenido
join emocion e on ce.fk_id_emocion = e.id_emocion
join contenido_caracteristica cc on c.id_contenido = cc.fk_id_contenido
join caracteristica ca on cc.fk_id_caracteristica = ca.id_caracteristica;

select * from recomendacion;

select c.id_contenido, c.titulo
from contenido c
join contenido_emocion ce on c.id_contenido =  ce.fk_id_contenido
join contenido_caracteristica cc on c.id_contenido = cc.fk_id_contenido
where c.fk_id_formato = 1 -- es una cancion
and ce.fk_id_emocion = 11 -- es la emocion aburrido
and cc.fk_id_caracteristica = 12; --  es la caracteristica emocionante

select * 
from conversacion c
join recomendacion r on c.nro_conversacion = r.fk_nro_conversacion and c.fk_id_usuario = r.fk_id_usuario;


-- iv) Saga de películas más “atrapante” del catálogo.
select * from contenido;
select * from caracteristica;
-- filtrar por pelicula
-- filtrar por saga, es decir, 2 o mas peliculas / harry potter, star wars
-- filtrar por atrapante
-- atrapante es una caracterisitca id=11

select * from tipo_de_relacion;
select * from caracteristica;

insert into tipo_de_relacion
(id_tipo_relacion, descripcion)
values (1,"saga");

insert into tipo_de_relacion
(id_tipo_relacion, descripcion)
values (1,"primer entrega"),(2,"segunda entrega"),(3,"tercera entrega"),(4, "precuela"),
		(5,	"secuela"),(6,"referencia"),(7, "adaptacion");
        
select * from tipo_de_Relacion;
select * from contenido;
select * from caracteristica;
select * from contenido_caracteristica;
select * from formato;
select * from unidad_de_medida;

insert into contenido
(id_contenido, titulo, año_publicacion, fk_id_formato, fk_id_pais_es_de, fk_id_unidad_de_medida, tiempo_consumido)
values (27, "Hitman La Pelicula", 2007,2,2,2,2), (28, "Hitman El Juego", 2000,5,2,2,10);

insert into esta_basado
(fk_id_contenido_1, fk_id_contenido_2, fk_id_tipo_de_relacion)
values (2,1,2),(3,2,2),(5,4,2),(6,5,2),(19,18,2),(21,19,2),(20,18,1),(27,28,4);

select * from contenido;
select * from tipo_de_relacion;

insert into tipo_de_relacion
(id_tipo_relacion, descripcion)
values (1,	'precuela'),(2, "secuela"),(3, "referencia"),(4,"adaptacion");


select *
from esta_basado;

insert into contenido_caracteristica
(fk_id_contenido, fk_id_caracteristica)
values (1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(27,11),(28,11),(18,11),(19,11),(21,11);

select * 
from esta_basado;


select * 
from contenido_caracteristica;

select * from tipo_de_relacion;

-- traemos las peliculas con relacion en esta_basado que son atrapantes
select distinct c.id_contenido, c.titulo
from contenido c
join contenido_caracteristica cc on c.id_contenido = cc.fk_id_contenido
join esta_basado eb on c.id_contenido = eb.fk_id_contenido_1 or c.id_contenido = eb.fk_id_contenido_2
where cc.fk_id_caracteristica = 11 -- atrapante
and (
eb.fk_id_tipo_de_relacion = 1
or
eb.fk_id_tipo_de_relacion = 2
)
and c.fk_id_formato = 2; -- pelicula

select * from usuario_idioma;

select * from idioma;

select * from caracteristica;

insert into preferencia
(id_preferencia, fk_id_usuario, descripcion, fk_id_caracteristica)
values (1,1,1,1),(2,1,2,2),(3,1,3,3),
	   (4,1,4,4),(5,1,5,5),(6,1,6,6),
	   (7,1,7,7),(8,1,8,8),(9,1,9,9),
	   (10,1,10,11);
       
select * from usuario u
join preferencia p on u.id_usuario = p.fk_id_usuario
join caracteristica c on p.fk_id_caracteristica = c.id_caracteristica;
       
insert into usuario_idioma
(fk_id_usuario, fk_id_idioma)
values (1,1),(1,2),(1,3);

select * from contenido;
select * from formato;

-- vii) Generar una vista de la ficha técnica de un contenido cualquiera.

select * from contenido;



select * from ficha_tecnica;

select * from genero;
select * from contenido_genero;

insert into contenido_genero
(fk_id_contenido, fk_id_genero)
values (1,2),(1,4),(1,8);

insert into contenido_genero
(fk_id_contenido, fk_id_genero)
values (2,2),(2,4),(2,8);

insert into contenido_genero
(fk_id_contenido, fk_id_genero)
values (3,2),(3,4),(3,8);


select * 
from ficha_tecnica;

select * from participe;

select * from rol;

insert into rol
(id_rol, descripcion)
values (43,"Protagonista");

insert into participa
(fk_id_participe, fk_id_rol, fk_id_contenido)
values  (1,43,1),(2,43,1),(3,43,1),
		(1,43,2),(2,43,2),(3,43,2),
		(1,43,3),(2,43,3),(3,43,3);
        
select *
from contenido_tematica;
select *
from tematica;

insert into contenido_tematica
(fk_id_contenido, fk_id_tematica)
values (1,1),(1,4);

insert into contenido_tematica
(fk_id_contenido, fk_id_tematica)
values (2,1),(2,4),(3,1),(3,4);
        
select * from participa;
select * from contenido;
select * from caracteristica;

select * from contenido_caracteristica;

insert into contenido_caracteristica
(fk_id_contenido, fk_id_caracteristica)
values  (1,1);

insert into contenido_caracteristica
(fk_id_contenido, fk_id_caracteristica)
values  (1,2),(1,3),(1,12);

insert into contenido_caracteristica
(fk_id_contenido, fk_id_caracteristica)
values  (2,1),(2,2),(2,3),(2,12),
        (3,1),(3,2),(3,3),(3,12);

select * from ficha_tecnica;

CREATE OR REPLACE VIEW Ficha_Tecnica AS
SELECT 
    c.titulo AS Titulo,
    f.descripcion AS Formato,
    c.tiempo_consumido AS Duracion,
    edm.descripcion AS Unidad_de_Medida,
    c.año_publicacion AS Año_Publicacion,
    p.descripcion AS Pais_Origen,
    GROUP_CONCAT(distinct g.descripcion SEPARATOR ', ') AS Generos, -- esta funcion me permite concatenar los generos pertenecientes a X pelicula y el separator es una funcion para establecer como se separa el contenido
	GROUP_CONCAT(distinct pe.descripcion SEPARATOR ', ') as Participes,
    GROUP_CONCAT(distinct t.descripcion SEPARATOR ', ') as Tematicas,
    GROUP_CONCAT(distinct carac.descripcion SEPARATOR ', ') as Caracteristicas
FROM 
    contenido c
    JOIN pais p ON c.fk_id_pais_es_de = p.id_pais
    JOIN formato f ON c.fk_id_formato = f.id_formato
    JOIN unidad_de_medida edm ON c.fk_id_unidad_de_medida = edm.id_unidad_de_medida
    LEFT JOIN contenido_genero cg ON c.id_contenido = cg.fk_id_contenido
    LEFT JOIN genero g ON cg.fk_id_genero = g.id_genero
    left join participa par on par.fk_id_contenido = c.id_contenido
    left join participe pe on pe.id_participe = par.fk_id_participe
    left join contenido_tematica ct on c.id_contenido = ct.fk_id_contenido
    left join tematica t on t.id_tematica = ct.fk_id_tematica
    left join contenido_caracteristica cc on cc.fk_id_contenido = c.id_contenido
    left join caracteristica carac on carac.id_caracteristica = cc.fk_id_caracteristica
WHERE c.id_contenido in (1)
GROUP BY 
    c.id_contenido;
    
   
    