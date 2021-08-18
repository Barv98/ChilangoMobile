CREATE DATABASE chilangomobile;
USE chilangomobile;
CREATE USER chilango@localhost;
GRANT SELECT, INSERT ON *.* TO 'chilango'@'localhost';
FLUSH PRIVILEGES;

CREATE TABLE rutas(id INT PRIMARY KEY, inicio VARCHAR(30), 
	destino VARCHAR(30), tiempo TIME, horario VARCHAR(15),costo INT, ruta VARCHAR(800));

CREATE TABLE registro(horaActual DATETIME PRIMARY KEY, inicioU VARCHAR(30), 
	destinoU VARCHAR(30), costoU INT, formaPago VARCHAR(20));

CREATE TABLE comentarios(horaRegistro DATETIME PRIMARY KEY, nombre VARCHAR(30), 
	correo VARCHAR(30), telefono VARCHAR(30), texto VARCHAR(200));

INSERT INTO rutas VALUES(1, "CASA", "MNAH", '01:40:00', "MATUTINO", 19, "Paso 1:
Tomar el microbús de la ruta 35 con base en (La draga), bajar en la base.
Tiempo: 1 Hora 
Paso 2:
Tomar el metro (Línea 2, dirección cuatro caminos) y bajar en la estación Hidalgo.
Tiempo: 20 minutos 
Paso 2:
Tomar el Metrobús (Línea 7, dirección Campo Marte) y bajar en la estación Campo Marte.
Tiempo: 15 minutos");
INSERT INTO rutas VALUES(2, "CASA", "MNAH", '01:20:00', "VESPERTINO",19, "Paso 1:
Tomar el microbús de la ruta 35 con base en (La draga), bajar en la base.
Tiempo: 1 Hora
Paso 2:
Tomar el metro (Línea 2, dirección cuatro caminos) y bajar en la estación Hidalgo.
Tiempo: 20 minutos
Paso 2:
Tomar el Metrobús (Línea 7, dirección Campo Marte) y bajar en la estación Campo Marte.
Tiempo: 15 minutos");
INSERT INTO rutas VALUES(3, "CASA", "MNAH", '00:58:00', "NOCTURNO", 19, "Paso 1:
Tomar el microbús de la ruta 35 con base en “La draga”, bajar en la base.
Tiempo: 1 Hora 
Paso 2:
Tomar el metro (Línea 2, dirección cuatro caminos) y bajar en la estación Hidalgo.
Tiempo: 20 minutos
Paso 2:
Tomar el Metrobús (Línea 7, dirección Campo Marte) y bajar en la estación Campo Marte.
Tiempo: 15 minutos");
INSERT INTO rutas VALUES(4, "CASA", "FI", '01:56:00', "MATUTINO", 3, "Paso 1:
Tomar el RTP anunciado como CU - Santa Catarina; pasa aproximadamente cada 30 minutos.
Tiempo: 1:40
Paso 2:
Tomar el Pumabus de línea 1
Tiempo: 20 minutos ");

INSERT INTO rutas VALUES(5, "CASA", "FI", '01:35:00', "VESPERTINO", 3, "Paso 1:
Tomar el RTP anunciado como CU - Santa Catarina; pasa aproximadamente cada 30 minutos.
Tiempo: 1:40
Paso 2:
Tomar el Pumabus de línea 1
Tiempo: 20 minutos ");

INSERT INTO rutas VALUES(6, "CASA", "FI", '01:21:00', "NOCTURNO", 3, "Paso 1:
Tomar el RTP anunciado como CU - Santa Catarina; pasa aproximadamente cada 30 minutos.
Tiempo: 1:40
Paso 2:
Tomar el Pumabus de línea 1
Tiempo: 20 minutos (Tarde)");

INSERT INTO rutas VALUES(7, "FI", "MNAH", '01:20:00', "MATUTINO", 12, "Paso 1:
Tomar el pumabus (Ruta 2) y bajar en metro Universidad
Tiempo: 3 minutos 
Paso 2:
Tomar el metro (Línea 3, dirección Indios Verdes) y bajar en la estación Hidalgo.
Tiempo: 33 minutos 
Paso 3:
Tomar el Metrobús (Línea 7, dirección Campo Marte) y bajar en la estación Campo Marte.
Tiempo: 15 minutos ");

INSERT INTO rutas VALUES(8, "FI", "MNAH", '01:00:00', "VESPERTINO",12, "Paso 1:
Tomar el pumabus (Ruta 2) y bajar en metro Universidad
Tiempo: 3 minutos 
Paso 2:
Tomar el metro (Línea 3, dirección Indios Verdes) y bajar en la estación Hidalgo.
Tiempo: 33 minutos 
Paso 3:
Tomar el Metrobús (Línea 7, dirección Campo Marte) y bajar en la estación Campo Marte.
Tiempo: 15 minutos ");

INSERT INTO rutas VALUES(9, "FI", "MNAH", '00:50:00', "NOCTURNO", 12, "Paso 1:
Tomar el pumabus (Ruta 2) y bajar en metro Universidad
Tiempo: 3 minutos 
Paso 2:
Tomar el metro (Línea 3, dirección Indios Verdes) y bajar en la estación Hidalgo.
Tiempo: 33 minutos
Paso 3:
Tomar el Metrobús (Línea 7, dirección Campo Marte) y bajar en la estación Campo Marte.
Tiempo: 15 minutos");

INSERT INTO rutas VALUES(10, "MNAH", "CASA", '01:40:00', "MATUTINO", 20, "Paso 1:
Tomar el microbús de la ruta 34-A con base en (Chapultepec), bajar en Constituyentes
Tiempo: 20 minutos 
Paso 2:
Tomar el metro (Línea 7, dirección barranca del muertos ) y bajar en la estación ,Mixcoac.
Tiempo: 20 minutos 
Paso 3:
Tomar el metro (Línea 12, dirección Tláhuac) y bajar en la estación Nopalera.
Tiempo: 1 Hora");

INSERT INTO rutas VALUES(11, "MNAH", "CASA", '01:20:00', "VESPERTINO", 20, "Paso 1:
Tomar el microbús de la ruta 34-A con base en (Chapultepec), bajar en Constituyentes
Tiempo: 20 minutos 
Paso 2:
Tomar el metro (Línea 7, dirección barranca del muertos ) y bajar en la estación ,Mixcoac.
Tiempo: 20 minutos 
Paso 3:
Tomar el metro (Línea 12, dirección Tláhuac) y bajar en la estación Nopalera.
Tiempo: 1 Hora");

INSERT INTO rutas VALUES(12, "MNAH", "CASA", '00:40:00', "NOCTURNO", 20, "Paso 1:
Tomar el microbús de la ruta 34-A con base en (Chapultepec), bajar en Constituyentes
Tiempo: 20 minutos 
Paso 2:
Tomar el metro (Línea 7, dirección barranca del muertos ) y bajar en la estación ,Mixcoac.
Tiempo: 20 minutos 
Paso 3:
Tomar el metro (Línea 12, dirección Tláhuac) y bajar en la estación Nopalera.
Tiempo: 1 Hora");

INSERT INTO rutas VALUES(13, "FI", "CASA", '01:56:00', "MATUTINO", 3, "Paso 1:
Tomar el Pumabus de línea 1
Tiempo: 20 minutos
Paso 2:
Tomar el RTP anunciado como CU - Santa Catarina; pasa aproximadamente cada 30 minutos.
Tiempo: 1 Hora con 40 minutos ");

INSERT INTO rutas VALUES(14, "FI", "CASA", '01:40:00', "VESPERTINO", 3, "Paso 1:
Tomar el Pumabus de línea 1
Tiempo: 20 minutos
Paso 2:
Tomar el RTP anunciado como CU - Santa Catarina; pasa aproximadamente cada 30 minutos.
Tiempo: 1 Hora con 20 minutos ");

INSERT INTO rutas VALUES(15, "FI", "CASA", '01:36:00', "NOCTURNO", 3, "Paso 1:
Tomar el Pumabus de línea 1
Tiempo: 20 minutos
Paso 2:
Tomar el RTP anunciado como CU - Santa Catarina; pasa aproximadamente cada 30 minutos.
Tiempo: 1 Hora ");

INSERT INTO rutas VALUES(16, "MNAH", "FI", '01:20:00', "MATUTINO", 12, "Paso 1:
Tomar el Metrobús (Línea 7, dirección Campo Marte) y bajar en la estación Campo Marte.
Tiempo: 15 minutos 
Paso 2:
Tomar el metro (Línea 3, dirección Indios Verdes) y bajar en la estación Hidalgo.
Tiempo: 33 minutos 
Paso 3:
Tomar el pumabus (Ruta 2) y bajar en metro Universidad
Tiempo: 3 minutos ");

INSERT INTO rutas VALUES(17, "MNAH", "FI", '01:00:00', "VESPERTINO",12, "Paso 1:
Tomar el Metrobús (Línea 7, dirección Campo Marte) y bajar en la estación Campo Marte.
Tiempo: 15 minutos 
Paso 2:
Tomar el metro (Línea 3, dirección Indios Verdes) y bajar en la estación Hidalgo.
Tiempo: 33 minutos 
Paso 3:
Tomar el pumabus (Ruta 2) y bajar en metro Universidad
Tiempo: 3 minutos ");

INSERT INTO rutas VALUES(18, "MNAH", "FI", '00:50:00', "NOCTURNO", 12, "Paso 1:
Tomar el Metrobús (Línea 7, dirección Campo Marte) y bajar en la estación Campo Marte.
Tiempo: 15 minutos 
Paso 2:
Tomar el metro (Línea 3, dirección Indios Verdes) y bajar en la estación Hidalgo.
Tiempo: 33 minutos 
Paso 3:
Tomar el pumabus (Ruta 2) y bajar en metro Universidad
Tiempo: 3 minutos ");




