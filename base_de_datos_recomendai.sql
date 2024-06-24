CREATE DATABASE IF NOT EXISTS base_de_datos_tp_integrador_recomendai_2024;
use base_de_datos_tp_integrador_recomendai_2024;

create table tipo_de_relacion (
id_tipo_relacion int,  -- auto increment 
descripcion varchar(25) not null,
constraint pk_tipo_de_relacion primary key (id_tipo_relacion)
);

create table caracteristica(
id_caracteristica int, -- auto increment
descripcion varchar(25) not null,
constraint pk_caracteristia primary key (id_caracteristica));

create table tematica(
id_tematica int, -- auto increment
descripcion varchar(25) not null,
constraint pk_tematica primary key (id_tematica)
);

create table genero(
id_genero int, -- auto_increment
descripcion varchar(25) not null,
constraint pk_genero primary key (id_genero)
);

create table emocion(
id_emocion int, -- auto_increment
descripcion varchar(25) not null,
constraint pk_emocion primary key (id_emocion)
);

create table participe(
id_participe int, -- auto_increment
descripcion varchar(40) not null,
constraint pk_participe primary key (id_participe)
);

create table rol(
id_rol int, -- auto_increment
descripcion varchar(25) not null,
constraint pk_rol primary key (id_rol)
);

create table formato(
id_formato int, -- auto_increment
descripcion varchar(25) not null,
constraint pk_formato primary key (id_formato)
);

create table pais (
id_pais int, -- auto_increment
descripcion varchar(25) not null,
constraint pk_pais primary key (id_pais)
);

create table idioma(
id_idioma int, -- auto_increment
descripcion varchar(25) not null,
constraint pk_idioma primary key (id_idioma)
);

create table unidad_de_medida(
id_unidad_de_medida int, -- auto_increment
descripcion varchar(25) not null,
constraint pk_unidad_de_medida primary key (id_unidad_de_medida)
);


create table usuario(
id_usuario int, -- auto_increment
email varchar(50) not null,
contraseña varchar(30) not null,
sexo varchar(10) not null,
fecha_nacimiento date not null, --  YY-MM-DD
fk_id_pais_origen int not null,
fk_id_pais_reside int not null,
constraint pk_usuario primary key (id_usuario),
constraint fk_pais_origen foreign key (fk_id_pais_origen) references pais(id_pais),
constraint fk_pais_reside foreign key (fk_id_pais_reside) references pais(id_pais)
);

create table conversacion(
nro_conversacion int, -- auto_increment
fk_id_usuario int,
fecha date not null, -- YY:MM:DD
constraint pk_conversacion primary key (nro_conversacion, fk_id_usuario),
constraint fk_conversacion_usuario foreign key (fk_id_usuario) references usuario(id_usuario)
);

create table conversacion_emocion(
fk_nro_conversacion int not null,
fk_id_usuario int not null,
fk_id_emocion int not null,
constraint pk_conversacion_emocion primary key (fk_nro_conversacion, fk_id_usuario, fk_id_emocion),
constraint fk_conversacion_emocion_conversacion_usuario foreign key (fk_nro_conversacion, fk_id_usuario) references conversacion(nro_conversacion,fk_id_usuario),
constraint fk_conversacion_emocion_emocion foreign key (fk_id_emocion) references emocion(id_emocion)
);

show create table conversacion_caracteristica;


create table conversacion_caracteristica(
fk_nro_conversacion int not null,
fk_id_usuario int not null,
fk_id_caracteristica int not null,
estimacion int,
constraint pk_conversacion_caracteristica primary key (fk_nro_conversacion, fk_id_usuario, fk_id_caracteristica),
constraint fk_conversacion_caracteristica_conversacion_usuario foreign key (fk_nro_conversacion, fk_id_usuario) references conversacion(nro_conversacion,fk_id_usuario),
constraint fk_conversacion_caracteristica_caracteristica foreign key (fk_id_caracteristica) references caracteristica(id_caracteristica)
);

create table conversacion_tematica(
fk_nro_conversacion int not null,
fk_id_usuario int not null,
fk_id_tematica int not null,
constraint pk_conversacion_tematica primary key (fk_nro_conversacion, fk_id_usuario, fk_id_tematica),
constraint fk_conversacion_tematica_conversacion_usuario foreign key (fk_nro_conversacion, fk_id_usuario) references conversacion(nro_conversacion,fk_id_usuario),
constraint fk_conversacion_tematica_tematica foreign key (fk_id_tematica) references tematica(id_tematica)
);

create table conversacion_genero(
fk_nro_conversacion int not null,
fk_id_usuario int not null,
fk_id_genero int not null,
constraint pk_conversacion_genero primary key (fk_nro_conversacion, fk_id_usuario, fk_id_genero),
constraint fk_conversacion_genero_conversacion_usuario foreign key (fk_nro_conversacion, fk_id_usuario) references conversacion(nro_conversacion,fk_id_usuario),
constraint fk_conversacion_genero_genero foreign key (fk_id_genero) references genero(id_genero)
);

create table contenido(
id_contenido int, -- auto_increment
titulo varchar(50) not null,
año_publicacion year not null,
fk_id_pais_es_de int references pais(id_pais),
fk_id_formato int references formato(id_formato),
fk_id_unidad_de_medida int references unidad_de_medida(id_unidad_de_medida),
tiempo_consumido int,
constraint pk_contenido primary key (id_contenido)
);

create table contenido_genero(
fk_id_contenido int references contenido(id_contenido),
fk_id_genero int references genero(id_genero),
constraint pk_contenido_genero primary key (fk_id_contenido,fk_id_genero)
);

create table contenido_caracteristica(
fk_id_contenido int references contenido(id_contenido),
fk_id_caracteristica int references caracteristica(id_caracteristica),
constraint pk_contenido_caracteristica primary key (fk_id_contenido,fk_id_caracteristica)
);

show create table contenido_tematica;
show create table usuario;

create table contenido_tematica(
fk_id_contenido int references contenido(id_contenido),
fk_id_tematica int references tematica(id_tematica),
constraint pk_contenido_tematica primary key (fk_id_contenido,fk_id_tematica)
);

create table contenido_emocion(
fk_id_contenido int references contenido(id_contenido),
fk_id_emocion int references emocion(id_emocion),
constraint pk_contenido_emocion primary key (fk_id_contenido,fk_id_emocion)
);

create table recomendacion(
id_recomendacion int, -- auto_increment
opinion varchar(100),
consumio int,
interes int,
puntaje int,
comentario varchar(50),
fk_id_contenido int references contenido(id_contenido),
fk_id_tematica int references tematica(id_tematica),
fk_id_genero int references genero(id_genero),
fk_id_caracteristica int references caracteristica(id_caracteristica),
fk_id_emocion int references emocion(id_emocion),
fk_id_usuario int not null,
fk_nro_conversacion int not null,
constraint pk_recomendacion primary key (id_recomendacion),
constraint fk_recomendacion_conversacion_usuario foreign key (fk_nro_conversacion, fk_id_usuario) references conversacion(nro_conversacion, fk_id_usuario)
);


create table esta_basado(
fk_id_contenido_1 int not null references contenido(id_contenido),
fk_id_contenido_2 int not null references contenido(id_contenido),
fk_id_tipo_de_relacion int not null references tipo_de_relacion(id_tipo_de_relacion),
constraint pk_esta_basado primary key (fk_id_contenido_1, fk_id_contenido_2)
);

create table participa(
fk_id_participe int not null references participe(id_participe),
fk_id_rol int not null references rol(id_rol),
fk_id_contenido int not null references contenido(id_contenido),
constraint pk_participa primary key (fk_id_participe,fk_id_rol,fk_id_contenido)
);

create table preferencia (
id_preferencia int not null, -- auto_increment
fk_id_usuario int not null references usuario(id_usuario), 
descripcion varchar(25) not null,
fk_id_caracteristica int not null references caracteristica(id_caracteristica),
constraint pk_preferencia primary key (id_preferencia, fk_id_usuario)
);

create table usuario_idioma(
fk_id_idioma int not null references idioma(id_idioma),
fk_id_usuario int not null references usuario(id_usuario),
constraint pk_usuario_idioma primary key (fk_id_idioma, fk_id_usuario)
);

create table idioma_contenido(
fk_id_idioma int not null,
fk_id_contenido int not null,
constraint pk_idioma_contenido primary key (fk_id_idioma, fk_id_contenido),
constraint fk_idioma_contenido_idioma foreign key (fk_id_idioma) references idioma(id_idioma),
constraint fk_idioma_contenido_contenido foreign key (fk_id_contenido) references contenido(id_contenido)
);

create table feedback(
fk_id_contenido int not null,
fk_id_emocion int not null,
fk_id_caracteristica int not null,
ponderacion int,
constraint pk_feedback primary key (fk_id_contenido,fk_id_emocion,fk_id_caracteristica),
constraint fk_feedback_id_contenido foreign key (fk_id_contenido) references contenido (id_contenido),
constraint fk_feedback_id_emocion foreign key (fk_id_emocion) references emocion(id_emocion),
constraint fk_feedback_id_caracteristica foreign key (fk_id_caracteristica) references caracteristica(id_caracteristica)
);


insert into genero 
(id_genero, descripcion)
values 
(1,'Acción'),(2,'Aventura'),(3,'Comedia'), (4,'Drama'),(5,'Fantasía'), (6,'Ciencia ficción'),(7,'Terror'),
(8,'Suspense'),(9,'Musical'),(10,'Romance'),(11,'Animación'),(12,'Familiar'),(13,'Documental'),(14,'Biográfica'),(15,'Western'),(16,'Cortometraje');

insert into caracteristica 
(id_caracteristica,descripcion) 
VALUES 
(1,'Efectos especiales'),(2,'MUNDO MAGICO'),(3,'SISTEMA MAGICO'),(4,'Popular'),(5,'HUMOR'),(6,'INFANTIL'),(7,'ADULTO'),(8,'Compleja'),(9,'Narrativa'),(10,'Taquilla');

insert into emocion 
(id_emocion, descripcion) 
values 
(1, 'Felicidad'),(2, 'Tristeza'),(3, 'Enojo'),(4, 'Miedo'),(5, 'Sorpresa'),(6, 'Asco'),
(7, 'Amor'),(8, 'Vergüenza'),(9, 'Ansiedad'),(10, 'Confianza');

insert into rol 
(id_rol, descripcion) 
values
(1, 'Administrador'),(2, 'Editor'),(3, 'Autor'),(4, 'Colaborador'),(5, 'Suscriptor'),(6, 'Moderador'),(7, 'Analista'),(8, 'Diseñador'),(9, 'Desarrollador'),(10, 'Gerente'),
(11, 'Soporte Técnico'),(12, 'Ventas'),(13, 'Marketing'),(14, 'Consultor'),(15, 'Tester'),(16, 'Escritor'),(17, 'Ilustrador'),(18, 'Corrector de estilo'),(19, 'Editor literario'),
(20, 'Diagramador'),(21, 'Agente literario'),(22, 'Publicista'),(23, 'Compositor'),(24, 'Letrista'),(25, 'Arreglista'),(26, 'Productor musical'),(27, 'Ingeniero de sonido'),
(28, 'Músico de sesión'),(29, 'Vocalista'),(30, 'Director de coro'),(31, 'Director'),(32, 'Productor'),(33, 'Guionista'),(34, 'Director de fotografía'),(35, 'Actor'),
(36, 'Editor de video'),(37, 'Diseñador de sonido'),(38, 'Director de arte'),(39, 'Vestuarista'),(40, 'Maquillador'),(41, 'Efectos especiales'),(42, 'Gaffer');

insert into participe 
(id_participe, descripcion) 
values
(1, 'Daniel Radcliffe'),(2, 'Emma Watson'),(3, 'Rupert Grint'),(4, 'Tom Hanks'),(5, 'Robert De Niro'),(6, 'J.K. Rowling'),(7, 'Stephen King'),(8, 'George Clooney'),(9, 'Brad Pitt'),
(10, 'Angelina Jolie'),(11, 'Johnny Depp'),(12, 'Nicole Kidman'),(13, 'Matt Damon'),(14, 'Anne Hathaway'),(15, 'Will Smith'),(16, 'Charlize Theron'),(17, 'Chris Hemsworth'),
(18, 'Scarlett Johansson'),(19, 'Denzel Washington'),(20, 'Emma Watson'),(21, 'Hugh Jackman'),(22, 'Natalie Portman'),(23, 'Clint Eastwood'),(24, 'Julia Roberts'),(25, 'Leonardo DiCaprio'),
(26, 'Sandra Bullock'),(27, 'George R.R. Martin'),(28, 'J.R.R. Tolkien'),(29, 'Agatha Christie'),(30, 'Ernest Hemingway'),(31,'Morgan Freeman'),(32,'Meryl Streep');

insert into pais 
(id_pais, descripcion) 
values
(1, 'Argentina'),(2, 'Estados Unidos'),(3, 'Chile'),(4, 'Uruguay'),(5, 'Paraguay'),(6, 'Perú'),(7, 'Bolivia'),(8, 'Ecuador'),(9, 'Colombia'),(10, 'Venezuela'),(11, 'Panamá'),
(12, 'Costa Rica'),(13, 'Nicaragua'),(14, 'Honduras'),(15, 'El Salvador'),(16, 'Guatemala'),(17, 'México'),(18, 'Brasil'),(19, 'Canadá'),(20, 'España'),(21, 'Francia'),
(22, 'Alemania'),(23, 'Italia'),(24, 'Reino Unido'),(25, 'Irlanda'),(26, 'Portugal'),(27, 'Rusia'),(28, 'China'),(29, 'Japón'),(30, 'Australia');

insert into idioma 
(id_idioma, descripcion) 
values
(1, 'Inglés'),(2, 'Chino Mandarín'),(3, 'Hindú'),(4, 'Español'),(5, 'Francés'),(6, 'Árabe'),(7, 'Bengalí'),(8, 'Ruso'),
(9, 'Portugués'),(10, 'Indonesio'),(11, 'Urdu'),(12, 'Alemán'),(13, 'Japonés'),(14, 'Swahili'),(15, 'Maratí');

insert into tematica 
(id_tematica, descripcion) 
values 
(1, 'Tecnología'), (2, 'Deportes'), (3, 'Música'), (4, 'Cine'),(5, 'Literatura'),(6, 'Viajes'),(7, 'Gastronomía'),(8, 'Moda'),(9, 'Salud'),(10, 'Fitness'),(11, 'Educación'),
(12, 'Política'),(13, 'Finanzas'),(14, 'Ciencia'),(15, 'Arte'),(16, 'Fotografía'),(17, 'Historia'),(18, 'Animales'),(19, 'Videojuegos'),(20, 'Medio Ambiente');

insert into formato 
(id_formato,descripcion) 
values
(1,'Cancion'),(2,'Película'),(3,'Streaming'),(4,'Blog'),(5,'Juego'),(6,'Libro'),(7,'Serie'),(8,'Podcast');

insert into unidad_de_medida 
(id_unidad_de_medida,descripcion) 
values
(1,'Minutos'),(2,'Horas'),(3,'Palabras'),(4,'Páginas'),(5,'Episodios'),(6,'Días'),
(7,'Elementos'),(8,'Imágenes'),(9,'Eventos');

insert into usuario 
(id_usuario, email, contraseña, sexo, fecha_nacimiento, fk_id_pais_origen, fk_id_pais_reside) 
values
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

insert into conversacion 
(nro_conversacion, fk_id_usuario, fecha) 
values
(1, 1, '2023-01-01'),(2, 1, '2023-02-15'),(3, 1, '2023-03-10'),(4, 1, '2023-04-20'),(5, 1, '2023-05-05'),
(1, 2, '2023-06-30'),(2, 2, '2023-07-15'),(3, 2, '2023-08-25'),(4, 2, '2023-09-10'),(5, 2, '2023-10-20');

insert into conversacion_emocion
(fk_nro_conversacion, fk_id_usuario, fk_id_emocion) 
values
(1,1,1), (1,1,2), (1,1,3), (1,1,4);

insert into conversacion_caracteristica
(fk_nro_conversacion, fk_id_usuario, fk_id_caracteristica) 
values
(1,1,1), (1,1,2), (1,1,3), (1,1,4);

insert into conversacion_genero
(fk_nro_conversacion, fk_id_usuario, fk_id_genero)
values
(1,1,1), (1,1,2), (1,1,3), (1,1,4);

insert into contenido
(id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values
 (1,"Harry Potter y la Piedra Filosofal", 2001, 2, 2,2,3);

insert into contenido
 (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values
 (2,"Harry Potter y la camara de los secretos", 2002, 2, 2,2,3);

insert into contenido
 (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values
 (3,"Harry Potter y el prisionero de Azkaban", 2004, 2, 2,2,3);

insert into contenido
 (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values
 (4,"Star Wars 1", 1999, 2, 2,2,2);

insert into contenido
 (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values
 (5,"Star Wars 2", 2002, 2, 2,2,2);

insert into contenido
 (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values
 (6,"Star Wars 3", 2005, 2, 2,2,2);

insert into contenido
 (id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato, fk_id_unidad_de_medida, tiempo_consumido)
values
 	(7,"El profeta", 2005, 4,1,1,3),(8,"Tormenta",2010,7,1,1,4),(9,"Ves", 2011,7,1,1,3),(10,"Jose Sabia",2018,4,1,1,3);

insert into contenido 
(id_contenido,
 titulo,
 año_publicacion,
 fk_id_pais_es_de,
 fk_id_formato,
 fk_id_unidad_de_medida,
 tiempo_consumido)
values 	
(11,"Clarobscuro",1990,4,1,1,5),
(12,"Spaghetti del rock",1989,7,2,1,3),
(13,"Par mil",1995,1,2,1,3);

insert into contenido 
(id_contenido,
 titulo,
 año_publicacion,
 fk_id_pais_es_de,
 fk_id_formato,
 fk_id_unidad_de_medida,
 tiempo_consumido)
values 
(14, "El hobbit", 1937, 24,6,4,310),
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

insert into contenido 
(id_contenido,
 titulo,
 año_publicacion,
 fk_id_pais_es_de,
 fk_id_formato,
 fk_id_unidad_de_medida,
 tiempo_consumido)
values (25,"Gonna Fly Now", 1976, 2, 1, 1, 4);

insert into contenido 
(id_contenido,
 titulo,
 año_publicacion,
 fk_id_pais_es_de,
 fk_id_formato,
 fk_id_unidad_de_medida,
 tiempo_consumido)
values (26,"All Star", 1999, 2, 1, 1, 4);

insert into recomendacion 
(id_recomendacion,
 opinion,
 consumio,
 interes,
 puntaje,
 comentario,
 fk_id_contenido,
 fk_id_tematica,
 fk_id_genero,
 fk_id_caracteristica,
 fk_id_emocion,
 fk_id_usuario,
 fk_nro_conversacion)
values (1, "...", 1, 1, 5, "...", 1, 4, 2, 1, 1, 1, 1);

insert into recomendacion
 (id_recomendacion,
 opinion,
 consumio,
 interes,
 puntaje,
 comentario,
 fk_id_contenido,
 fk_id_tematica,
 fk_id_genero,
 fk_id_caracteristica,
 fk_id_emocion,
 fk_id_usuario,
 fk_nro_conversacion)
values
 (2,"...", 1, 1, 5, "...", 2,4,4,2,7,1,1);

insert into recomendacion 
(id_recomendacion,
 opinion,
 consumio,
 interes,
 puntaje,
 comentario,
 fk_id_contenido,
 fk_id_tematica,
 fk_id_genero,
 fk_id_caracteristica,
 fk_id_emocion,
 fk_id_usuario,
 fk_nro_conversacion)
values
 (3,"...", null, null, null, "...", 2,4,4,2,7,1,1);

insert into recomendacion 
(id_recomendacion,
 opinion,
 consumio,
 interes,
 puntaje,
 comentario,
 fk_id_contenido,
 fk_id_tematica,
 fk_id_genero,
 fk_id_caracteristica,
 fk_id_emocion,
 fk_id_usuario,
 fk_nro_conversacion)
values 
(4,"...", 1, 1, 5, "...", 25,null,null,12,11,2,1), 
(5,"...", 1, 1, 5, "...", 26,null,null,12,11,2,1);

insert into emocion
(id_emocion, descripcion)
values (11,"aburrido");

insert into caracteristica
(id_caracteristica, descripcion)
values (11, "atrapante");

insert into caracteristica
(id_caracteristica, descripcion)
values (12, "emocionante");

insert into contenido_emocion
(fk_id_contenido, fk_id_emocion)
values (25, 11);

insert into contenido_caracteristica
(fk_id_contenido, fk_id_caracteristica)
values (25, 12);

insert into contenido_emocion 
(fk_id_contenido, fk_id_emocion)
values (25, 11);

insert into contenido_caracteristica 
(fk_id_contenido, fk_id_caracteristica)
values (25, 12);

insert into contenido_emocion 
(fk_id_contenido, fk_id_emocion)
values (26, 11);

insert into contenido_caracteristica 
(fk_id_contenido, fk_id_caracteristica)
values (10, 12);

insert into contenido_emocion 
(fk_id_contenido, fk_id_emocion)
values (10, 11);

insert into contenido_caracteristica 
(fk_id_contenido, fk_id_caracteristica)
values (26, 12);

insert into tipo_de_relacion
(id_tipo_relacion, descripcion)
values (1,"saga");

insert into tipo_de_relacion
(id_tipo_relacion,
 descripcion)
values
(1,"primer entrega"),
(2,"segunda entrega"),
(3,"tercera entrega"),
(4, "precuela"),
(5,	"secuela"),
(6,"referencia"),
(7, "adaptacion");
        
insert into contenido
(id_contenido, titulo, año_publicacion, fk_id_formato, fk_id_pais_es_de, fk_id_unidad_de_medida, tiempo_consumido)
values (27, "Hitman La Pelicula", 2007,2,2,2,2), (28, "Hitman El Juego", 2000,5,2,2,10);

insert into esta_basado
(fk_id_contenido_1, fk_id_contenido_2, fk_id_tipo_de_relacion)
values (2,1,2),(3,2,2),(5,4,2),(6,5,2),(19,18,2),(21,19,2),(20,18,1),(27,28,4);

insert into tipo_de_relacion
(id_tipo_relacion, descripcion)
values (1,	'precuela'),(2, "secuela"),(3, "referencia"),(4,"adaptacion");

insert into contenido_caracteristica
(fk_id_contenido, fk_id_caracteristica)
values (1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(27,11),(28,11),(18,11),(19,11),(21,11);

insert into participe
(id_participe, descripcion)
values (33, "sujeto prueba de formatos");

insert into participa
(fk_id_participe, fk_id_rol, fk_id_contenido)
values (33,1,7),(33,1,1),(33,1,29),(33,1,30),(33,1,18),(33,1,14),(33,1,23),(33,1,31);

insert into preferencia
(id_preferencia, fk_id_usuario, descripcion, fk_id_caracteristica)
values (1,1,1,1),(2,1,2,2),(3,1,3,3),
	   (4,1,4,4),(5,1,5,5),(6,1,6,6),
	   (7,1,7,7),(8,1,8,8),(9,1,9,9),
	   (10,1,10,11);
       
insert into usuario_idioma
(fk_id_usuario, fk_id_idioma)
values (1,1),(1,2),(1,3);

insert into contenido
(id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato,fk_id_unidad_de_medida,tiempo_consumido)
values (29, "prueba de streaming",2000, 1, 3, 1,1),
		(30, "prueba de blog",2000, 1, 4, 1,1),
        (31, "prueba de podcast", 2000, 1,8,1,1);
        
insert into contenido
(id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato,fk_id_unidad_de_medida,tiempo_consumido)
values (32, "El Streaming de Daniel Radcliffe", 2015,2,3,2,1),
		(33, "El Blog de Daniel Radcliffe", 2015,2,4,2,1),
        (34, "El Podcast de Daniel Radcliffe", 2017,2,8,2,1),
        (35, "La cancion de Daniel Radcliffe", 2015,2,1,1,5),
        (36, "Harry Potter The Game", 2005,2,5,2,11),
        (37, "Harry Potter, the Book of Daniel Radcliffe", 2018,2,6,4,400);
        
insert into contenido
(id_contenido, titulo, año_publicacion, fk_id_pais_es_de, fk_id_formato,fk_id_unidad_de_medida,tiempo_consumido)
values (38, "Harry Potter the Series with Daniel Radcliffe", 2005,2,7,2,11);
	
insert into participa
(fk_id_participe, fk_id_rol, fk_id_contenido)
values (1,6,32),(1,3,33),(1,43,34),(1,29,35),(1,32,36),(1,3,37);

insert into participa
(fk_id_participe, fk_id_rol, fk_id_contenido)
values (1,43,38);

insert into contenido_genero
(fk_id_contenido, fk_id_genero)
values (1,2),(1,4),(1,8);

insert into contenido_genero
(fk_id_contenido, fk_id_genero)
values (2,2),(2,4),(2,8);

insert into contenido_genero
(fk_id_contenido, fk_id_genero)
values (3,2),(3,4),(3,8);

insert into rol
(id_rol, descripcion)
values (43,"Protagonista");

insert into participa
(fk_id_participe, fk_id_rol, fk_id_contenido)
values  (1,43,1),(2,43,1),(3,43,1),
		(1,43,2),(2,43,2),(3,43,2),
		(1,43,3),(2,43,3),(3,43,3);
        
insert into contenido_tematica
(fk_id_contenido, fk_id_tematica)
values (1,1),(1,4);

insert into contenido_tematica
(fk_id_contenido, fk_id_tematica)
values (2,1),(2,4),(3,1),(3,4);

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





