--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ALUMNOS
--------------------------------------------------------

  CREATE TABLE "ALUMNOS" ("ID_ALUMNO" NUMBER(9,0), "NOMBRES" VARCHAR2(75), "APELLIDOS" VARCHAR2(75), "RTN" VARCHAR2(20), "DIRECCION" VARCHAR2(500), "TELEFONO" VARCHAR2(20))
REM INSERTING into ALUMNOS
SET DEFINE OFF;
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (1,'Brayan Eludes','Alvarez Gonzales','0852012320','TGU',null);
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (2,'Flavio Daniel','Carmona Hernandez','8520103025','SPS',null);
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (3,'Angel Geovani','Carcamo Carcamo ','90205050','Olancho ',null);
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (4,'Abdiel Enmanuel','Licona Erazo ','0805201020','Ceiba ',null);
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (5,'David Alejandro ','Erazo Alvarez ','0503200041122','EEUU ',null);
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (6,'Selvin Daniel','Alvarez Barahona','00202002','TGU',null);
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (7,'Marcela','Gutierrez','08052000300','TGU',null);
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (8,'Lineth','Alvarez','0805201','TGU','999999');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (9,'Francisco','Matute','0805250044','TGU','999998');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (10,'Kevin','Alvarenga','08072000300','TGU','333302');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (11,'Pamela','Ortiz','06052000300','TGU','99021030');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (12,'Elias','Arteaga','09052000300','TGU','22105032');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (13,'Noel','Valladares','03031111','TGU','90302015');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (14,'Brayan','Alvarez','01081050','TGU','999999');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (15,'Marcela','Trochez','88888','SPS','88888');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (16,'Marvin','Josue','161616','Ceiba','1111');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (17,'Elkin','Portillo','020202002','Siguatepeque','002020202');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (18,'Alonso','Gonzales','2222222','TGU','895623');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (19,'Adelman','Eliud ','1232','AAA','QWEQWE');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (20,'Jessu','Varela','85201326','TGU','9999');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (21,'Gabriel','Alvarado','56565652','TGU','80201560');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (22,'Hector','Pedro','05050505','TGU			','96966');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (23,'marcela','flores','86436854','tgu','2374873');
Insert into ALUMNOS (ID_ALUMNO,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO) values (24,'Maria','Perez','36457865','Col. La Kenneddy','3675845');
--------------------------------------------------------
--  DDL for Index ALUMNOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS_PK" ON "ALUMNOS" ("ID_ALUMNO")
--------------------------------------------------------
--  Constraints for Table ALUMNOS
--------------------------------------------------------

  ALTER TABLE "ALUMNOS" ADD CONSTRAINT "ALUMNOS_PK" PRIMARY KEY ("ID_ALUMNO") ENABLE
  ALTER TABLE "ALUMNOS" MODIFY ("RTN" NOT NULL ENABLE)
  ALTER TABLE "ALUMNOS" MODIFY ("APELLIDOS" NOT NULL ENABLE)
  ALTER TABLE "ALUMNOS" MODIFY ("NOMBRES" NOT NULL ENABLE)
  

--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ANIO_ESCOLAR
--------------------------------------------------------

  CREATE TABLE "ANIO_ESCOLAR" ("ID_ANIO_ESCOLAR" NUMBER, "ANIO" DATE, "FECHA_INICIO" DATE, "FECHA_FIN" DATE)
REM INSERTING into ANIO_ESCOLAR
SET DEFINE OFF;
Insert into ANIO_ESCOLAR (ID_ANIO_ESCOLAR,ANIO,FECHA_INICIO,FECHA_FIN) values (1,to_date('11-MAR-21','DD-MON-RR'),to_date('15-JAN-21','DD-MON-RR'),to_date('15-NOV-21','DD-MON-RR'));
Insert into ANIO_ESCOLAR (ID_ANIO_ESCOLAR,ANIO,FECHA_INICIO,FECHA_FIN) values (2,to_date('06-MAR-20','DD-MON-RR'),to_date('12-MAY-21','DD-MON-RR'),to_date('26-NOV-21','DD-MON-RR'));
Insert into ANIO_ESCOLAR (ID_ANIO_ESCOLAR,ANIO,FECHA_INICIO,FECHA_FIN) values (22,to_date('05-MAR-22','DD-MON-RR'),to_date('05-MAR-22','DD-MON-RR'),to_date('12-MAR-22','DD-MON-RR'));
Insert into ANIO_ESCOLAR (ID_ANIO_ESCOLAR,ANIO,FECHA_INICIO,FECHA_FIN) values (7,to_date('08-MAR-30','DD-MON-RR'),to_date('13-MAR-21','DD-MON-RR'),to_date('15-MAR-30','DD-MON-RR'));
--------------------------------------------------------
--  DDL for Index ANIO_ESCOLAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ANIO_ESCOLAR_PK" ON "ANIO_ESCOLAR" ("ID_ANIO_ESCOLAR")
--------------------------------------------------------
--  Constraints for Table ANIO_ESCOLAR
--------------------------------------------------------

  ALTER TABLE "ANIO_ESCOLAR" ADD CONSTRAINT "ANIO_ESCOLAR_PK" PRIMARY KEY ("ID_ANIO_ESCOLAR") ENABLE
  ALTER TABLE "ANIO_ESCOLAR" MODIFY ("FECHA_FIN" NOT NULL ENABLE)
  ALTER TABLE "ANIO_ESCOLAR" MODIFY ("FECHA_INICIO" NOT NULL ENABLE)
  ALTER TABLE "ANIO_ESCOLAR" MODIFY ("ANIO" NOT NULL ENABLE)
  ALTER TABLE "ANIO_ESCOLAR" MODIFY ("ID_ANIO_ESCOLAR" NOT NULL ENABLE)


--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ASIGNATURAS
--------------------------------------------------------

  CREATE TABLE "ASIGNATURAS" ("ID_ASIGNATURA" NUMBER(9,0), "NOMBRE" VARCHAR2(40), "DESCRIPCION" VARCHAR2(500), "CREDITOS" VARCHAR2(2), "HORA_INICIO" VARCHAR2(8), "HORA_FIN" VARCHAR2(8))
REM INSERTING into ASIGNATURAS
SET DEFINE OFF;
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (1,'Espa�ol','Clase Importante','5','8:00','9:00');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (2,'Ingles','Clase Importante','5','8:00','9:00');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (3,'Matematicas','Clase Importante','5','8:00','9:00');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (4,'Ciencias Naturales','Clase Importante','5','8:00','9:00');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (5,'Ciencias Sociales','Clase nueva','4','10:30','11:45');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (6,'Programacion',null,'3',null,null);
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (7,'Dise�o grafico','Hola mundo','3','8:30','9:30');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (8,'Redes','Clase importante','3','10:30','11:50');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (9,'Fisica','Clase Importante','3','10:40','11:50');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (10,'Estadistica','Hola','3','10:40','11:50');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (11,'Fisica II','Hola Mundo','4','20:30','22:30');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (12,'Espa�ol II','Hola','3','10-30','11-30');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (13,'Espa�ol Tres','Hola','3','10-30','11-30');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (14,'Espa�ol III','Hola mundo	','3','10-30','10-50');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (15,'Espa�oll','Hola mundo	','3','10-30','10-50');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (16,'Filosofia','Hola','3','12-00','12-30');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (17,'Diseno','ASD','3','20-30','21-30');
Insert into ASIGNATURAS (ID_ASIGNATURA,NOMBRE,DESCRIPCION,CREDITOS,HORA_INICIO,HORA_FIN) values (18,'Fisica Molecular','Fisica','3','08-00','08-30');
--------------------------------------------------------
--  DDL for Index ASIGNATURAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ASIGNATURAS_PK" ON "ASIGNATURAS" ("ID_ASIGNATURA")
--------------------------------------------------------
--  Constraints for Table ASIGNATURAS
--------------------------------------------------------

  ALTER TABLE "ASIGNATURAS" MODIFY ("CREDITOS" NOT NULL ENABLE)
  ALTER TABLE "ASIGNATURAS" ADD CONSTRAINT "ASIGNATURAS_PK" PRIMARY KEY ("ID_ASIGNATURA") ENABLE
  ALTER TABLE "ASIGNATURAS" MODIFY ("NOMBRE" NOT NULL ENABLE)
  
--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CALIFICACIONES
--------------------------------------------------------

  CREATE TABLE "CALIFICACIONES" ("ID_CALIFICACION" NUMBER(9,0), "NOTA1" NUMBER(3,0), "NOTA2" NUMBER(3,0), "NOTA3" NUMBER(3,0), "NOTA4" NUMBER(3,0), "ID_ALUMNO" NUMBER, "ID_ASIGNATURA" NUMBER, "ID_PROFESOR" NUMBER)
REM INSERTING into CALIFICACIONES
SET DEFINE OFF;
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (3,99,99,100,100,1,1,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (4,99,99,99,99,4,1,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (5,0,0,0,0,8,2,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (6,1,1,11,11,8,1,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (7,11,11,11,11,9,1,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (8,90,90,90,90,13,4,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (9,20,20,20,100,13,2,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (10,88,88,88,88,8,4,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (11,50,50,50,50,19,1,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (12,80,80,80,80,4,3,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (13,80,80,80,80,13,3,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (14,50,50,95,78,10,7,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (15,95,50,75,85,12,5,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (1,99,99,99,99,3,4,2);
Insert into CALIFICACIONES (ID_CALIFICACION,NOTA1,NOTA2,NOTA3,NOTA4,ID_ALUMNO,ID_ASIGNATURA,ID_PROFESOR) values (2,99,100,50,50,1,2,2);
--------------------------------------------------------
--  DDL for Index CALIFICACIONES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CALIFICACIONES_PK" ON "CALIFICACIONES" ("ID_CALIFICACION")
--------------------------------------------------------
--  Constraints for Table CALIFICACIONES
--------------------------------------------------------

  ALTER TABLE "CALIFICACIONES" ADD CONSTRAINT "CALIFICACIONES_PK" PRIMARY KEY ("ID_CALIFICACION") ENABLE
  ALTER TABLE "CALIFICACIONES" MODIFY ("NOTA4" NOT NULL ENABLE)
  ALTER TABLE "CALIFICACIONES" MODIFY ("NOTA3" NOT NULL ENABLE)
  ALTER TABLE "CALIFICACIONES" MODIFY ("NOTA2" NOT NULL ENABLE)
  ALTER TABLE "CALIFICACIONES" MODIFY ("NOTA1" NOT NULL ENABLE)
  ALTER TABLE "CALIFICACIONES" MODIFY ("ID_CALIFICACION" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table CALIFICACIONES
--------------------------------------------------------

  ALTER TABLE "CALIFICACIONES" ADD CONSTRAINT "CALIFICACIONES_ALUMNO_FK" FOREIGN KEY ("ID_ALUMNO") REFERENCES "ALUMNOS" ("ID_ALUMNO") ENABLE
  ALTER TABLE "CALIFICACIONES" ADD CONSTRAINT "CALIFICACIONES_ASIGNATURA_FK" FOREIGN KEY ("ID_ASIGNATURA") REFERENCES "ASIGNATURAS" ("ID_ASIGNATURA") ENABLE
  ALTER TABLE "CALIFICACIONES" ADD CONSTRAINT "CALIFICACIONES_PROFESOR_FK" FOREIGN KEY ("ID_PROFESOR") REFERENCES "PROFESORES" ("ID_PROFESOR") ENABLE


--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MATRICULAS
--------------------------------------------------------

  CREATE TABLE "MATRICULAS" ("ID_MATRICULA" NUMBER(9,0), "FECHA" DATE, "ID_ANIO_ESCOLAR" NUMBER, "ID_ALUMNO" NUMBER, "ID_NIVEL_EDUCATIVO" NUMBER)
REM INSERTING into MATRICULAS
SET DEFINE OFF;
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (1,to_date('11-MAR-21','DD-MON-RR'),1,1,2);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (2,to_date('11-MAR-21','DD-MON-RR'),1,2,2);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (3,to_date('11-MAR-21','DD-MON-RR'),1,3,2);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (4,to_date('11-MAR-21','DD-MON-RR'),1,4,4);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (5,to_date('11-MAR-21','DD-MON-RR'),1,5,4);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (7,to_date('12-MAR-21','DD-MON-RR'),1,7,3);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (8,to_date('12-MAR-21','DD-MON-RR'),1,8,3);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (9,to_date('12-MAR-21','DD-MON-RR'),1,9,5);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (10,to_date('12-MAR-21','DD-MON-RR'),1,10,5);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (11,to_date('12-MAR-21','DD-MON-RR'),2,11,1);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (12,to_date('12-MAR-21','DD-MON-RR'),1,12,6);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (13,to_date('13-MAR-21','DD-MON-RR'),1,13,2);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (14,to_date('04-MAR-21','DD-MON-RR'),1,14,1);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (15,to_date('03-MAR-21','DD-MON-RR'),1,15,13);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (16,to_date('19-MAR-99','DD-MON-RR'),1,16,13);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (17,to_date('06-MAR-21','DD-MON-RR'),1,17,1);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (18,to_date('05-MAR-21','DD-MON-RR'),1,18,2);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (19,to_date('05-MAR-21','DD-MON-RR'),1,19,1);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (20,to_date('05-MAR-21','DD-MON-RR'),1,20,10);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (21,to_date('04-MAR-21','DD-MON-RR'),1,21,11);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (22,to_date('04-MAR-21','DD-MON-RR'),1,22,1);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (23,to_date('02-MAR-21','DD-MON-RR'),1,23,3);
Insert into MATRICULAS (ID_MATRICULA,FECHA,ID_ANIO_ESCOLAR,ID_ALUMNO,ID_NIVEL_EDUCATIVO) values (24,to_date('11-MAR-21','DD-MON-RR'),1,24,6);
--------------------------------------------------------
--  DDL for Index MATRICULAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MATRICULAS_PK" ON "MATRICULAS" ("ID_MATRICULA")
--------------------------------------------------------
--  Constraints for Table MATRICULAS
--------------------------------------------------------

  ALTER TABLE "MATRICULAS" ADD CONSTRAINT "MATRICULAS_PK" PRIMARY KEY ("ID_MATRICULA") ENABLE
  ALTER TABLE "MATRICULAS" MODIFY ("FECHA" NOT NULL ENABLE)
  ALTER TABLE "MATRICULAS" MODIFY ("ID_MATRICULA" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table MATRICULAS
--------------------------------------------------------

  ALTER TABLE "MATRICULAS" ADD CONSTRAINT "MATRICULAS_ALUMNOS_FK" FOREIGN KEY ("ID_ALUMNO") REFERENCES "ALUMNOS" ("ID_ALUMNO") ENABLE
  ALTER TABLE "MATRICULAS" ADD CONSTRAINT "MATRICULAS_ANIOESC_FK" FOREIGN KEY ("ID_ANIO_ESCOLAR") REFERENCES "ANIO_ESCOLAR" ("ID_ANIO_ESCOLAR") ENABLE
  ALTER TABLE "MATRICULAS" ADD CONSTRAINT "MATRICULAS_NVLEDUCAT_FK" FOREIGN KEY ("ID_NIVEL_EDUCATIVO") REFERENCES "NIVEL_EDUCATIVO" ("ID_NIVEL_EDUCATIVO") ENABLE


--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NIVEL_EDUCATIVO
--------------------------------------------------------

  CREATE TABLE "NIVEL_EDUCATIVO" ("ID_NIVEL_EDUCATIVO" NUMBER(9,0), "NOMBRE" VARCHAR2(40), "SECCION" VARCHAR2(1))
REM INSERTING into NIVEL_EDUCATIVO
SET DEFINE OFF;
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (1,'Preparatoria','A');
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (2,'Primer Grado','A');
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (3,'Primer Grado','B');
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (4,'Segundo Grado','A');
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (5,'Segundo Grado','B');
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (6,'Tercer Grado','A');
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (7,'Tercer Grado','B');
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (8,'Cuarto Grado','A');
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (9,'Cuarto Grado','B');
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (10,'Quinto Grado','A');
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (11,'Quinto Grado','B');
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (12,'Sexto Grado','A');
Insert into NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO,NOMBRE,SECCION) values (13,'Sexto Grado','B');
--------------------------------------------------------
--  DDL for Index NIVEL_EDUCATIVO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NIVEL_EDUCATIVO_PK" ON "NIVEL_EDUCATIVO" ("ID_NIVEL_EDUCATIVO")
--------------------------------------------------------
--  Constraints for Table NIVEL_EDUCATIVO
--------------------------------------------------------

  ALTER TABLE "NIVEL_EDUCATIVO" ADD CONSTRAINT "NIVEL_EDUCATIVO_PK" PRIMARY KEY ("ID_NIVEL_EDUCATIVO") ENABLE
  ALTER TABLE "NIVEL_EDUCATIVO" MODIFY ("SECCION" NOT NULL ENABLE)
  ALTER TABLE "NIVEL_EDUCATIVO" MODIFY ("NOMBRE" NOT NULL ENABLE)
  ALTER TABLE "NIVEL_EDUCATIVO" MODIFY ("ID_NIVEL_EDUCATIVO" NOT NULL ENABLE)


--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NVL_EDUCATIVO_ASIGNATURAS
--------------------------------------------------------

  CREATE TABLE "NVL_EDUCATIVO_ASIGNATURAS" ("ID_NIVEL_EDUCATIVO" NUMBER, "ID_ASIGNATURA" NUMBER)
REM INSERTING into NVL_EDUCATIVO_ASIGNATURAS
SET DEFINE OFF;
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (2,1);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (2,2);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (2,3);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (2,4);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (13,2);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (8,2);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (13,1);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (13,3);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (1,3);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (1,4);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (1,5);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (1,6);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (1,8);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (1,16);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (1,17);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (13,4);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (7,14);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (1,1);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (13,5);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (8,1);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (1,2);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (8,3);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (5,5);
Insert into NVL_EDUCATIVO_ASIGNATURAS (ID_NIVEL_EDUCATIVO,ID_ASIGNATURA) values (5,6);
--------------------------------------------------------
--  Ref Constraints for Table NVL_EDUCATIVO_ASIGNATURAS
--------------------------------------------------------

  ALTER TABLE "NVL_EDUCATIVO_ASIGNATURAS" ADD CONSTRAINT "NVLASIGNTURAS_ASIGNATURA_FK" FOREIGN KEY ("ID_ASIGNATURA") REFERENCES "ASIGNATURAS" ("ID_ASIGNATURA") ENABLE
  ALTER TABLE "NVL_EDUCATIVO_ASIGNATURAS" ADD CONSTRAINT "NVLASIGNTURAS_NVLEDUCATIVO_FK" FOREIGN KEY ("ID_NIVEL_EDUCATIVO") REFERENCES "NIVEL_EDUCATIVO" ("ID_NIVEL_EDUCATIVO") ENABLE


--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PROFESORES
--------------------------------------------------------

  CREATE TABLE "PROFESORES" ("ID_PROFESOR" NUMBER(9,0), "NOMBRES" VARCHAR2(75), "APELLIDOS" VARCHAR2(75), "RTN" VARCHAR2(20), "DIRECCION" VARCHAR2(500), "TELEFONO" VARCHAR2(15), "ESTADO" NUMBER(1,0) DEFAULT 1)
REM INSERTING into PROFESORES
SET DEFINE OFF;
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (2,'Tania','Garcia','5202202','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (3,'Carlos','Oliva','5202202','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (4,'Lionel','Messi','5202202','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (5,'Cristiano','Ronaldo','5202202','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (6,'Gerard','Pique','5202202','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (7,'Neymar','Santos','5202202','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (8,'Andres','Iniesta','5202202','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (9,'Iker','Casillas','5202202','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (10,'David','Villa','5202202','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (11,'Pedro','Gonzales','5202202','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (12,'Jordi','Alba','5202202','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (13,'Brayan','Alvarez','312312','QQQQQQQ','222222',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (1,'Eliud','Varela','5202202','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (14,'Brayan','Eludes','222222','QWQW','222',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (15,'Brayan','Alvarez','0000000','TGU','89652233',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (16,'Lionel ','Mesi','888888','ESPANA','555555',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (17,'Pep','Guardiola','8888','TGU','999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (18,'HOLS`','JHKHKJ','978','HHKHKJ','7978',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (19,'Adelman','Varela','0202023','TGU','89898',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (20,'Nata','Nael','06600600606','TGU','99999999',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (21,'JEsus','Roberto','95203102','HAKSJDA','132123',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (22,'Elkin','Barahona','895653200','TGU','963215',1);
Insert into PROFESORES (ID_PROFESOR,NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO) values (23,'Rodolfo','Zelaya','0583843','SPS','909034',1);
--------------------------------------------------------
--  DDL for Index PROFESORES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROFESORES_PK" ON "PROFESORES" ("ID_PROFESOR")
--------------------------------------------------------
--  Constraints for Table PROFESORES
--------------------------------------------------------

  ALTER TABLE "PROFESORES" ADD CONSTRAINT "PROFESORES_PK" PRIMARY KEY ("ID_PROFESOR") ENABLE
  ALTER TABLE "PROFESORES" MODIFY ("TELEFONO" NOT NULL ENABLE)
  ALTER TABLE "PROFESORES" MODIFY ("RTN" NOT NULL ENABLE)
  ALTER TABLE "PROFESORES" MODIFY ("APELLIDOS" NOT NULL ENABLE)
  ALTER TABLE "PROFESORES" MODIFY ("NOMBRES" NOT NULL ENABLE)


--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PROFESORES_ASIGNATURAS_CURSO
--------------------------------------------------------

  CREATE TABLE "PROFESORES_ASIGNATURAS_CURSO" ("ID_PROFESOR" NUMBER, "ID_ASIGNATURA" NUMBER, "ID_NIVEL_EDUCATIVO" NUMBER)
REM INSERTING into PROFESORES_ASIGNATURAS_CURSO
SET DEFINE OFF;
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (5,1,13);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (9,4,8);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (10,2,8);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (1,2,1);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (1,3,1);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (1,4,1);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (1,1,3);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (1,2,3);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (1,3,3);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (1,4,3);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (1,4,12);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (1,3,11);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (2,7,11);
Insert into PROFESORES_ASIGNATURAS_CURSO (ID_PROFESOR,ID_ASIGNATURA,ID_NIVEL_EDUCATIVO) values (1,4,13);
--------------------------------------------------------
--  Ref Constraints for Table PROFESORES_ASIGNATURAS_CURSO
--------------------------------------------------------

  ALTER TABLE "PROFESORES_ASIGNATURAS_CURSO" ADD CONSTRAINT "PROFASIGC_ASIGNATURA_FK" FOREIGN KEY ("ID_ASIGNATURA") REFERENCES "ASIGNATURAS" ("ID_ASIGNATURA") ENABLE
  ALTER TABLE "PROFESORES_ASIGNATURAS_CURSO" ADD CONSTRAINT "PROFASIGC_NVLEDUACT_FK" FOREIGN KEY ("ID_NIVEL_EDUCATIVO") REFERENCES "NIVEL_EDUCATIVO" ("ID_NIVEL_EDUCATIVO") ENABLE
  ALTER TABLE "PROFESORES_ASIGNATURAS_CURSO" ADD CONSTRAINT "PROFASIGC_PROFESORES_FK" FOREIGN KEY ("ID_PROFESOR") REFERENCES "PROFESORES" ("ID_PROFESOR") ENABLE


--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ROL
--------------------------------------------------------

  CREATE TABLE "ROL" ("ID_ROL" NUMBER(8,0), "NOMBRE" VARCHAR2(40), "DESCRIPCION" VARCHAR2(250))
REM INSERTING into ROL
SET DEFINE OFF;
Insert into ROL (ID_ROL,NOMBRE,DESCRIPCION) values (1,'Administrador',' ');
Insert into ROL (ID_ROL,NOMBRE,DESCRIPCION) values (2,'Director',' ');
Insert into ROL (ID_ROL,NOMBRE,DESCRIPCION) values (3,'Profesor',' ');
Insert into ROL (ID_ROL,NOMBRE,DESCRIPCION) values (4,'Secretaria',' ');
--------------------------------------------------------
--  DDL for Index ROL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ROL_PK" ON "ROL" ("ID_ROL")
--------------------------------------------------------
--  Constraints for Table ROL
--------------------------------------------------------

  ALTER TABLE "ROL" ADD CONSTRAINT "ROL_PK" PRIMARY KEY ("ID_ROL") ENABLE
  ALTER TABLE "ROL" MODIFY ("NOMBRE" NOT NULL ENABLE)
  ALTER TABLE "ROL" MODIFY ("ID_ROL" NOT NULL ENABLE)


--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table USUARIOS
--------------------------------------------------------

  CREATE TABLE "USUARIOS" ("ID_USUARIO" NUMBER(9,0), "NOMBRE" VARCHAR2(30), "PASSWORD" VARCHAR2(128), "ID_ROL" NUMBER)
REM INSERTING into USUARIOS
SET DEFINE OFF;
Insert into USUARIOS (ID_USUARIO,NOMBRE,PASSWORD,ID_ROL) values (1,'admin','admin',1);
Insert into USUARIOS (ID_USUARIO,NOMBRE,PASSWORD,ID_ROL) values (2,'director','director',2);
Insert into USUARIOS (ID_USUARIO,NOMBRE,PASSWORD,ID_ROL) values (3,'eludes','brayan',1);
Insert into USUARIOS (ID_USUARIO,NOMBRE,PASSWORD,ID_ROL) values (4,'secretaria','secretaria',4);
Insert into USUARIOS (ID_USUARIO,NOMBRE,PASSWORD,ID_ROL) values (5,'profesor','profesor',3);
Insert into USUARIOS (ID_USUARIO,NOMBRE,PASSWORD,ID_ROL) values (6,'prueba','prueba',1);
Insert into USUARIOS (ID_USUARIO,NOMBRE,PASSWORD,ID_ROL) values (7,'hola','hola',1);
--------------------------------------------------------
--  DDL for Index USUARIOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USUARIOS_PK" ON "USUARIOS" ("ID_USUARIO")
--------------------------------------------------------
--  Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "USUARIOS" ADD CONSTRAINT "USUARIOS_PK" PRIMARY KEY ("ID_USUARIO") ENABLE
  ALTER TABLE "USUARIOS" MODIFY ("PASSWORD" NOT NULL ENABLE)
  ALTER TABLE "USUARIOS" MODIFY ("NOMBRE" NOT NULL ENABLE)
  ALTER TABLE "USUARIOS" MODIFY ("ID_USUARIO" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "USUARIOS" ADD CONSTRAINT "USUARIOS_ROL_FK" FOREIGN KEY ("ID_ROL") REFERENCES "ROL" ("ID_ROL") ENABLE
  
  
