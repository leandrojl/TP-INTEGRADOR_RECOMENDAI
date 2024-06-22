select * from contenido;
select * from recomendacion;
select * from genero;
select * from emocion;
select * from participe;
select * from rol;
select * from formato;
select * from pais;
select * from idioma;
select * from usuario;
select * from tipo_de_relacion;

show create table genero;

INSERT INTO genero (id_genero, descripcion)
VALUES (1,'Acción'),(2,'Aventura'),(3,'Comedia'), (4,'Drama'),(5,'Fantasía'), (6,'Ciencia ficción'),(7,'Terror'),
(8,'Suspense'),(9,'Musical'),(10,'Romance'),(11,'Animación'),(12,'Familiar'),(13,'Documental'),(14,'Biográfica'),(15,'Western'),(16,'Cortometraje');

select * from caracteristica;

INSERT INTO caracteristica (id_caracteristica,descripcion) VALUES 
(1,'Efectos especiales'),(2,'MUNDO MAGICO'),(3,'SISTEMA MAGICO'),(4,'Popular'),(5,'HUMOR'),(6,'INFANTIL'),(7,'ADULTO'),(8,'Compleja'),(9,'Narrativa'),(10,'Taquilla');

select * from emocion;

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


