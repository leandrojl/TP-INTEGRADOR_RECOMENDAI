# Recomend"ai"

## Descripcion del Proyecto:
### Base de Datos Relacional de una Inteligencia Artificial para la sugerencia de contenido multimedia
El objetivo del proyecto es a traves de la utilizacion de MySQL crear una base de datos relacional para poder guardar la informacion que en una conversacion la IA reciba del usuario y asi recomendarle un contenido multimedia. A traves de este proyecto se puede apreciar el poder de asociacion que se puede presentar con el guardado de datos acerca de los usuarios cuando estos interactuan con una iteligencia artificial.
### Tecnologias utilizadas:

Para la creacion del proyecto se utilizo: 
- MySQL Community Server 9.0.0
- Innovation conjuntamente con MySQL Workbench 8.0.38

## Diagrama Entidad Relacion:
![DER IA](https://github.com/leandrojl/TP-INTEGRADOR_RECOMENDAI/blob/master/der_tp_integrador_2625%20-Com_01-2363_grupo4_2024.drawio.png)

## Modelo Relacional:

1) TIPO_DE_RELACION(ID_TIPO_DE_RELACION, DESCRIPCION)

2) CARACTERÍSTICA(ID_CARACTERISTICA, DESCRIPCION)

3) TEMATICA(ID_TEMATICA, DESCRIPCION)

4) GENERO(ID_GENERO, DESCRIPCION)

5) EMOCION(ID_EMOCION, DESCIRPCION)

6) PARTICIPE( ID_PARTICIPE, DESCRIPCION)

7) ROL(ID_ROL, DESCRIPCION)

8) FORMATO(ID_FORMATO, DESCRIPCION)

9) PAIS(ID_PAIS, DESCRIPCION)

10) IDIOMA(ID_IDIOMA, DESCRIPCION)

11) UNIDAD DE MEDIDA(ID_UNIDAD_DE_MEDIDA, DESCRIPCION)

12) USUARIO(ID_USUARIO, EMAIL, CONTRASEÑA, SEXO, FECHA_NACIMIENTO, FK_ID_PAIS_ORIGEN, FK_ID_PAIS_RESIDE,

13) CONVERSACION( NRO_CONVERSACION, FK_ID_USUARIO, FECHA

14) CONVERSACION_EMOCION( FK_NRO_CONVERSACION, FK_ID_USUARIO, FK_ID_EMOCION

15) CONVERSACION_CARACTERISTICA ( FK_NRO_CONVERSACION, FK_ID_USUARIO, FK_ID_CARACTERISTICA, ESTIMACION

16) CONVERSACION_TEMATICA( FK_NRO_CONVERSACION, FK_ID_USUARIO , FK_ID_TEMATICA

17) CONVERSACION_GENERO( FK_NRO_CONVERSACION, FK_ID_USUARIO ,FK_ID_GENERO

18) RECOMENDACION(ID_RECOMENDACION, OPINION, CONSUMIO, INTERES, PUNTAJE, COMENTARIO, FK_ID_CONTENIDO, FK_ID_TEMATICA, FK_ID_GENERO, FK_ID_CARACTERISTICA, FK_ID_EMOCION, FK_ID_USUARIO, FK_NRO_CONVERSACION

19) CONTENIDO(ID_CONTENIDO,TITULO, AÑO_PUBLICACION, FK_ID_PAIS_ES_DE, FK_ID_FORMATO, FK_ID_UNIDAD_DE_MEDIDA, TIEMPO_CONSUMIDO,

20) ESTA_BASADO(FK_ID_CONTENIDO_1, FK_ID_CONTENIDO_2, FK_ID_TIPO_DE_RELACION

21) CONTENIDO_GENERO(FK_ID_CONTENIDO, FK_ID_GENERO

22) CONTENIDO_CARACTERISTICA( FK_ID_CONTENIDO, FK_ID_CARACTERISTICA

23) CONTENIDO_TEMATICA( FK_ID_CONTENIDO, FK_ID_TEMATICA

24) CONTENIDO_EMOCION( FK_ID_CONTENIDO, FK_ID_EMOCION

25) PARTICIPA( FK_ID_PARTICIPE, FK_ID_ROL, FK_ID_CONTENIDO

26) PREFERENCIA(ID_PREFERENCIA, FK_ID_USUARIO, DESCRIPCION, FK_ID_CARACTERISTICA

27) USUARIO_IDIOMA(FK_ID_IDIOMA, FK_ID_USUARIO

28) IDIOMA_CONTENIDO( FK_ID_IDIOMA, FK_ID_CONTENIDO


29) FEEDBACK( FK_ID_CONTENIDO, FK_ID_EMOCION, FK_ID_CARACTERISTICA, PONDERACION


## Lista de claves foraneas

USUARIO.FK_ID_PAIS_ORIGEN → PAIS.ID_PAIS

USUARIO.FK_ID_PAIS_RESIDE → PAIS.ID_PAIS

CONVERSACION.FK_ID_USUARIO → USUARIO.ID_USUARIO

CONVERSACION_EMOCION.FK_NRO_CONVERSACION+FK_ID_USUARIO → CONVERSACION.NRO_CONVERSACION+FK_ID_USUARIO

CONVERSACION_EMOCION.FK_ID_EMOCION → EMOCION.ID_EMOCION

CONVERSACION_CARACTERISTICA.FK_NRO_CONVERSACION+FK_ID_USUARIO → CONVERSACION.NRO_CONVERSACION+FK_ID_USUARIO;

CONVERSACION_CARACTERISTICA.FK_ID_CARACTERISTICA → CARACTERISTICA.ID_CARACTERISTICA


CONVERSACION_TEMATICA.FK_NRO_CONVERSACION+FK_ID_USUARIO → CONVERSACION.NRO_CONVERSACION+FK_ID_USUARIO

CONVERSACION_TEMATICA.FK_ID_TEMATICA → TEMATICA.ID_TEMATICA

CONVERSACION_GENERO.FK_NRO_CONVERSACION+FK_ID_USUARIO → CONVERSACION.NRO_CONVERSACION+FK_ID_USUARIO

CONVERSACION_GENERO.FK_ID_GENERO → GENERO.ID_GENERO

RECOMENDACION.FK_ID_CONTENIDO → CONTENIDO.ID_CONTENIDO

RECOMENDACION. FK_ID_TEMATICA → TEMATICA.ID_TEMATICA

RECOMENDACION.FK_ID_GENERO → GENERO.ID_GENERO

RECOMENDACION.FK_ID_CARACTERISTICA → CARACTERISTICA.ID_CARACTERISTICA

RECOMENDACION.FK_ID_EMOCION → EMOCION.ID_EMOCION

RECOMENDACION.FK_NRO_CONVERSACION+FK_ID_USUARIO → CONVERSACION.NRO_CONVERSACION+FK_ID_USUARIO

CONTENIDO.FK_ID_PAIS_ES_DE → PAIS.ID_PAIS

CONTENIDO.FK_ID_FORMATO → FORMATO.ID_FORMATO

CONTENIDO.FK_ID_UNIDAD_DE_MEDIDA → UNIDAD_DE_MEDIDA.ID_UNIDAD_DE_MEDIDA

ESTA_BASADO.FK_ID_CONTENIDO_1 → CONTENIDO.ID_CONTENIDO

ESTA_BASADO.FK_ID_CONTENIDO_2 → CONTENIDO.ID_CONTENIDO

ESTA_BASADO.FK_ID_TIPO_DE_RELACION → TIPO_DE_RELACION.ID_TIPO_DE_RELACION

CONTENIDO_GENERO.FK_ID_CONTENIDO → CONTENIDO.ID_CONTENIDO


CONTENIDO_GENERO.FK_ID_GENERO → GENERO.ID_GENERO

CONTENIDO_CARACTERISTICA.FK_ID_CONTENIDO → CONTENIDO.ID_CONTENIDO

CONTENIDO_CARACTERISTICA.FK_ID_CARACTERISTICA → CARACTERISTICA.ID_CARACTERISTICA

CONTENIDO_TEMATICA.FK_ID_CONTENIDO → CONTENIDO.ID_CONTENIDO

CONTENIDO_TEMATICA.FK_ID_TEMATICA → TEMATICA.ID_TEMATICA

CONTENIDO_EMOCION.FK_ID_CONTENIDO → CONTENIDO.ID_CONTENIDO

CONTENIDO_EMOCION.FK_ID_EMOCION → EMOCION.ID_EMOCION

PARTICIPA.FK_ID_PARTICIPE → PARTICIPE.ID_PARTICIPE

PARTICIPA.FK_ID_ROL → ROL.ID_ROL

PARTICIPA.FK_ID_CONTENIDO → CONTENIDO.ID_CONTENIDO

PREFERENCIA.FK_ID_USUARIO → USUARIO.ID_USUARIO

PREFERENCIA.FK_ID_CARACTERISTICA → CARACTERISTICA.ID_CARACTERISTICA

USUARIO_IDIOMA.FK_ID_IDIOMA → IDIOMA.ID_IDIOMA

USUARIO_IDIOMA.FK_ID_USUARIO → USUARIO.ID_USUARIO

IDIOMA_CONTENIDO.FK_ID_IDIOMA → IDIOMA.ID_IDIOMA

IDIOMA_CONTENIDO.FK_ID_CONTENIDO → CONTENIDO.ID_CONTENIDO

FEEDBACK.FK_ID_CONTENIDO → CONTENIDO.ID_CONTENIDO

FEEDBACK.FK_ID_EMOCION → EMOCION.ID_EMOCION

FEEDBACK.FK_ID_CARACTERISTICA → CARACTERISTICA.ID_CARACTERISTICA
