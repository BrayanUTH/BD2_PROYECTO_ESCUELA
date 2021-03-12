INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('1', 'Preparatoria', 'A');
INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('2', 'Primer Grado', 'A');
INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('3', 'Primer Grado', 'B');
INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('4', 'Segundo Grado', 'A');
INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('5', 'Segundo Grado', 'B');
INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('6', 'Tercer Grado', 'A');
INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('7', 'Tercer Grado', 'B');
INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('8', 'Cuarto Grado', 'A');
INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('9', 'Cuarto Grado', 'B');
INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('10', 'Quinto Grado', 'A');
INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('11', 'Quinto Grado', 'B');
INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('12', 'Sexto Grado', 'A');
INSERT INTO NIVEL_EDUCATIVO (ID_NIVEL_EDUCATIVO, NOMBRE, SECCION) VALUES ('13', 'Sexto Grado', 'B');

SELECT *
    FROM MATRICULAS;    
    
    
--MATRICULA PRIMER GRADO SECCION A
INSERT INTO MATRICULAS (ID_MATRICULA, FECHA, ID_ANIO_ESCOLAR, ID_ALUMNO, ID_NIVEL_EDUCATIVO) VALUES ('1',SYSDATE, '1', '1', '2');    
INSERT INTO MATRICULAS (ID_MATRICULA, FECHA, ID_ANIO_ESCOLAR, ID_ALUMNO, ID_NIVEL_EDUCATIVO) VALUES ('2',SYSDATE, '1', '2', '2');
INSERT INTO MATRICULAS (ID_MATRICULA, FECHA, ID_ANIO_ESCOLAR, ID_ALUMNO, ID_NIVEL_EDUCATIVO) VALUES ('3',SYSDATE, '1', '3', '2');


--MATRICULA SEGUNDO GRADO SECCION A
INSERT INTO MATRICULAS (ID_MATRICULA, FECHA, ID_ANIO_ESCOLAR, ID_ALUMNO, ID_NIVEL_EDUCATIVO) VALUES ('4',SYSDATE, '1', '4', '4');    
INSERT INTO MATRICULAS (ID_MATRICULA, FECHA, ID_ANIO_ESCOLAR, ID_ALUMNO, ID_NIVEL_EDUCATIVO) VALUES ('5',SYSDATE, '1', '5', '4');
INSERT INTO MATRICULAS (ID_MATRICULA, FECHA, ID_ANIO_ESCOLAR, ID_ALUMNO, ID_NIVEL_EDUCATIVO) VALUES ('6',SYSDATE, '1', '5', '4');


--INSERTAR EN PROFESORES
INSERT INTO PROFESORES VALUES('1','Eliud','Varela','5202202', 'TGU','99999999','C:Imagenes/foto.jpg','A');
INSERT INTO PROFESORES VALUES('2','Tania','Garcia','5202202', 'TGU','99999999','C:Imagenes/foto.jpg','A');
INSERT INTO PROFESORES VALUES('3','Carlos','Oliva','5202202', 'TGU','99999999','C:Imagenes/foto.jpg','A');
INSERT INTO PROFESORES VALUES('4','Lionel','Messi','5202202', 'TGU','99999999','C:Imagenes/foto.jpg','A');
INSERT INTO PROFESORES VALUES('5','Cristiano','Ronaldo','5202202', 'TGU','99999999','C:Imagenes/foto.jpg','A');
INSERT INTO PROFESORES VALUES('6','Gerard','Pique','5202202', 'TGU','99999999','C:Imagenes/foto.jpg','A');
INSERT INTO PROFESORES VALUES('7','Neymar','Santos','5202202', 'TGU','99999999','C:Imagenes/foto.jpg','A');
INSERT INTO PROFESORES VALUES('8','Andres','Iniesta','5202202', 'TGU','99999999','C:Imagenes/foto.jpg','A');
INSERT INTO PROFESORES VALUES('9','Iker','Casillas','5202202', 'TGU','99999999','C:Imagenes/foto.jpg','A');
INSERT INTO PROFESORES VALUES('10','David','Villa','5202202', 'TGU','99999999','C:Imagenes/foto.jpg','A');
INSERT INTO PROFESORES VALUES('11','Pedro','Gonzales','5202202', 'TGU','99999999','C:Imagenes/foto.jpg','A');
INSERT INTO PROFESORES VALUES('12','Jordi','Alba','5202202', 'TGU','99999999','C:Imagenes/foto.jpg','A');

--INSERTAR EN TABLA PROFESORES NVL EDUCATIVO
INSERT INTO NVL_EDUCATIVO_PROFESORES VALUES(2,1);
INSERT INTO NVL_EDUCATIVO_PROFESORES VALUES(2,2);
INSERT INTO NVL_EDUCATIVO_PROFESORES VALUES(2,3);

INSERT INTO NVL_EDUCATIVO_PROFESORES VALUES(4,4);
INSERT INTO NVL_EDUCATIVO_PROFESORES VALUES(4,5);
INSERT INTO NVL_EDUCATIVO_PROFESORES VALUES(4,6);

INSERT INTO NVL_EDUCATIVO_PROFESORES VALUES(6,7);
INSERT INTO NVL_EDUCATIVO_PROFESORES VALUES(6,8);
INSERT INTO NVL_EDUCATIVO_PROFESORES VALUES(6,9);

--SOLUCION ERROR DE NVL_EDUCATIVO_PROFESORES
ALTER TABLE NVL_EDUCATIVO_PROFESORES RENAME COLUMN ID_ASIGNATURA TO ID_PROFESOR;
alter table NVL_EDUCATIVO_PROFESORES drop constraint NVLP_ASIGNATURAS_FK;
ALTER TABLE NVL_EDUCATIVO_PROFESORES ADD(CONSTRAINT NVLP_PROFESORES_FK FOREIGN KEY (ID_PROFESOR) REFERENCES PROFESORES (ID_PROFESOR))



INSERT INTO ASIGNATURAS VALUES('1','Espa�ol', 'Clase Importante', '5','8:00','9:00');
INSERT INTO ASIGNATURAS VALUES('2','Ingles', 'Clase Importante', '5','8:00','9:00');
INSERT INTO ASIGNATURAS VALUES('3','Matematicas', 'Clase Importante', '5','8:00','9:00');
INSERT INTO ASIGNATURAS VALUES('4','Ciencias Naturales', 'Clase Importante', '5','8:00','9:00');

SELECT *
    FROM ASIGNATURAS 






SELECT *
    FROM NVL_EDUCATIVO_PROFESORES;

ALTER TABLE CALIFICACIONES 
    ADD(id_profesor NUMBER)
    ADD (CONSTRAINT CALIFICACIONES_PROFESOR_FK FOREIGN KEY (id_profesor) REFERENCES PROFESORES (id_profesor))
;

--INICIO PROCEDIMINETOS ALMACENADOS
CREATE OR REPLACE PROCEDURE LISTA_ALUMNOSC
 ( P_NOMBRE_GRADO IN VARCHAR2
, P_SECCION IN VARCHAR2
,  C_CURSOR OUT SYS_REFCURSOR)
IS begin
  open C_CURSOR for 
    SELECT A.ID_ALUMNO, A.NOMBRES||' '||A.APELLIDOS, A.RTN 
    FROM ALUMNOS A JOIN MATRICULAS M ON A.ID_ALUMNO = m.id_alumno
     JOIN ANIO_ESCOLAR AN ON m.id_anio_escolar = an.id_anio_escolar
     JOIN NIVEL_EDUCATIVO NE ON m.id_nivel_educativo = ne.id_nivel_educativo
  WHERE ne.nombre = P_NOMBRE_GRADO 
  AND ne.seccion = P_SECCION
  AND TO_CHAR(an.anio,'YYYY') = TO_CHAR(SYSDATE,'YYYY')
  ORDER BY A.NOMBRES;
END LISTA_ALUMNOSC;

--LISTAR PROFESORES EN COMBOBOX
CREATE OR REPLACE PROCEDURE COMBO_PROFESOR_LISTAR (P_NOMBRE_GRADO IN VARCHAR2, P_SECCION IN VARCHAR2, C_CURSOR_COMBOBOX OUT SYS_REFCURSOR)
IS BEGIN
    OPEN C_CURSOR_COMBOBOX FOR
    SELECT P.ID_PROFESOR, P.NOMBRES
        FROM PROFESORES P INNER JOIN NVL_EDUCATIVO_PROFESORES PNE ON P.ID_PROFESOR = PNE.ID_PROFESOR
        INNER JOIN NIVEL_EDUCATIVO NE ON pne.id_nivel_educativo = ne.id_nivel_educativo
        INNER JOIN MATRICULAS M ON ne.id_nivel_educativo = m.id_nivel_educativo
        INNER JOIN ANIO_ESCOLAR AE ON m.id_anio_escolar = ae.id_anio_escolar
    WHERE ne.nombre = 'Primer Grado'    --P_NOMBRE_GRADO
    AND ne.seccion = 'A'--P_SECCION
    AND TO_CHAR(AE.anio,'YYYY') = TO_CHAR(SYSDATE,'YYYY');
END COMBO_PROFESOR_LISTAR;

--Listar las asignaturas
CREATE OR REPLACE PROCEDURE COMBO_ASIGNATURA_LISTAR (C_CURSOR_COMBOASIG OUT SYS_REFCURSOR)
IS BEGIN
    OPEN C_CURSOR_COMBOASIG FOR
    SELECT ID_ASIGNATURA, NOMBRE
        FROM ASIGNATURAS; 
END COMBO_ASIGNATURA_LISTAR;


SELECT P.ID_PROFESOR, P.NOMBRES
        FROM PROFESORES P INNER JOIN NVL_EDUCATIVO_PROFESORES PNE ON P.ID_PROFESOR = PNE.ID_PROFESOR
        INNER JOIN NIVEL_EDUCATIVO NE ON pne.id_nivel_educativo = ne.id_nivel_educativo
        INNER JOIN MATRICULAS M ON ne.id_nivel_educativo = m.id_nivel_educativo
        INNER JOIN ANIO_ESCOLAR AE ON m.id_anio_escolar = ae.id_anio_escolar
    WHERE ne.nombre = 'Primer Grado'    --P_NOMBRE_GRADO
    AND ne.seccion = 'A'--P_SECCION
    AND TO_CHAR(AE.anio,'YYYY') = TO_CHAR(SYSDATE,'YYYY');
    









