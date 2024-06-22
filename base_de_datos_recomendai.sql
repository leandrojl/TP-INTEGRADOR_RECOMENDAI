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

ALTER TABLE genero AUTO_INCREMENT = 0;
ALTER TABLE genero ALTER COLUMN id_genero SET DEFAULT 0;

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

show create table conversacion_tematica;

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

show create table contenido;

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
consumio boolean not null,
interes boolean not null,
puntaje int not null,
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




