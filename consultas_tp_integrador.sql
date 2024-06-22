select * from contenido;
select * from recomendacion;
select * from genero;
select * from emocion;
select * from participe;
select * from rol;
select * from formato;
select * from pais;

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

