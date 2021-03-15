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
INSERT INTO MATRICULAS (ID_MATRICULA, FECHA, ID_ANIO_ESCOLAR, ID_ALUMNO, ID_NIVEL_EDUCATIVO) VALUES ('6',SYSDATE, '1', '6', '4');


--INSERTAR EN PROFESORES
INSERT INTO PROFESORES VALUES('1','Eliud','Varela','5202202', 'TGU','99999999','C:Imagenes/foto.jpg',1);
INSERT INTO PROFESORES VALUES('2','Tania','Garcia','5202202', 'TGU','99999999','C:Imagenes/foto.jpg',1);
INSERT INTO PROFESORES VALUES('3','Carlos','Oliva','5202202', 'TGU','99999999','C:Imagenes/foto.jpg',1);
INSERT INTO PROFESORES VALUES('4','Lionel','Messi','5202202', 'TGU','99999999','C:Imagenes/foto.jpg',1);
INSERT INTO PROFESORES VALUES('5','Cristiano','Ronaldo','5202202', 'TGU','99999999','C:Imagenes/foto.jpg',1);
INSERT INTO PROFESORES VALUES('6','Gerard','Pique','5202202', 'TGU','99999999','C:Imagenes/foto.jpg',1);
INSERT INTO PROFESORES VALUES('7','Neymar','Santos','5202202', 'TGU','99999999','C:Imagenes/foto.jpg',1);
INSERT INTO PROFESORES VALUES('8','Andres','Iniesta','5202202', 'TGU','99999999','C:Imagenes/foto.jpg',1);
INSERT INTO PROFESORES VALUES('9','Iker','Casillas','5202202', 'TGU','99999999','C:Imagenes/foto.jpg',1);
INSERT INTO PROFESORES VALUES('10','David','Villa','5202202', 'TGU','99999999','C:Imagenes/foto.jpg',1);
INSERT INTO PROFESORES VALUES('11','Pedro','Gonzales','5202202', 'TGU','99999999','C:Imagenes/foto.jpg',1);
INSERT INTO PROFESORES VALUES('12','Jordi','Alba','5202202', 'TGU','99999999','C:Imagenes/foto.jpg',1);

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
ALTER TABLE NVL_EDUCATIVO_PROFESORES ADD(CONSTRAINT NVLP_PROFESORES_FK FOREIGN KEY (ID_PROFESOR) REFERENCES PROFESORES (ID_PROFESOR));

INSERT INTO ASIGNATURAS VALUES('1','Espa�ol', 'Clase Importante', '5','8:00','9:00');
INSERT INTO ASIGNATURAS VALUES('2','Ingles', 'Clase Importante', '5','8:00','9:00');
INSERT INTO ASIGNATURAS VALUES('3','Matematicas', 'Clase Importante', '5','8:00','9:00');
INSERT INTO ASIGNATURAS VALUES('4','Ciencias Naturales', 'Clase Importante', '5','8:00','9:00');

INSERT INTO NVL_EDUCATIVO_ASIGNATURAS VALUES(2,1);
INSERT INTO NVL_EDUCATIVO_ASIGNATURAS VALUES(2,2);
INSERT INTO NVL_EDUCATIVO_ASIGNATURAS VALUES(2,3);
INSERT INTO NVL_EDUCATIVO_ASIGNATURAS VALUES(2,4);
INSERT INTO NVL_EDUCATIVO_ASIGNATURAS VALUES(2,5);
INSERT INTO NVL_EDUCATIVO_ASIGNATURAS VALUES(2,6);
INSERT INTO NVL_EDUCATIVO_ASIGNATURAS VALUES(4,1);
INSERT INTO NVL_EDUCATIVO_ASIGNATURAS VALUES(4,2);
INSERT INTO NVL_EDUCATIVO_ASIGNATURAS VALUES(4,3);
INSERT INTO NVL_EDUCATIVO_ASIGNATURAS VALUES(4,4);
INSERT INTO NVL_EDUCATIVO_ASIGNATURAS VALUES(4,5);
INSERT INTO NVL_EDUCATIVO_ASIGNATURAS VALUES(4,6);

alter table calificaciones modify nota1 number(3,0);      
alter table calificaciones modify nota2 number(3,0);
alter table calificaciones modify nota3 number(3,0);
alter table calificaciones modify nota4 number(3,0);
 

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

--FUNCION INCREMENTO DE ID
CREATE or replace FUNCTION INCREMENT_ID_CALIFICACIONES RETURN NUMBER AS 
    v_codigo_calificacion NUMBER;
BEGIN
    SELECT nvl(MAX(ID_CALIFICACION),0)+1
    INTO v_codigo_calificacion
    FROM CALIFICACIONES;
    IF v_codigo_calificacion IS NULL THEN
        RETURN 1;
    ELSE
        RETURN v_codigo_calificacion;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error OBTENER SIGUIENTE_CODIGO_DEP: '||SQLERRM);
END INCREMENT_ID_CALIFICACIONES;

--INSERTAR CALIFICACION
create or replace PROCEDURE INSERTAR_CALIFICACION (
    V_NOTA1 NUMBER,
    V_NOTA2 NUMBER,
    V_NOTA3 NUMBER,
    V_NOTA4 NUMBER,
    V_ID_ALUMNO NUMBER,
    V_ID_ASIGNATURA NUMBER,
    V_ID_PROFESOR NUMBER,
    V_ERROR OUT NUMBER,
    V_DESCRIPCION_ERR OUT VARCHAR2
) AS
BEGIN
    V_ERROR := 0;
    INSERT INTO CALIFICACIONES(ID_CALIFICACION, NOTA1, NOTA2, NOTA3, NOTA4, ID_ALUMNO, ID_ASIGNATURA, ID_PROFESOR) 
       VALUES (INCREMENT_ID_CALIFICACIONES,V_NOTA1, V_NOTA2,V_NOTA3,V_NOTA4,V_ID_ALUMNO,V_ID_ASIGNATURA,V_ID_PROFESOR);  
EXCEPTION
    WHEN OTHERS THEN
    V_ERROR := 1;
        V_DESCRIPCION_ERR := SQLERRM;
END INSERTAR_CALIFICACION;

--ACTUALIZAR CALIFICACION
create or replace PROCEDURE ACTUALIZAR_CALIFICACION (
    V_ID_CALIFICACION NUMBER,
    V_NOTA1 NUMBER,
    V_NOTA2 NUMBER,
    V_NOTA3 NUMBER,
    V_NOTA4 NUMBER,
    V_ID_ALUMNO NUMBER,
    V_ID_ASIGNATURA NUMBER,
    V_ID_PROFESOR NUMBER,
    V_ERROR OUT NUMBER,
    V_DESCRIPCION_ERR OUT VARCHAR2
) AS
BEGIN
    V_ERROR := 0;
    UPDATE CALIFICACIONES
        SET NOTA1 = V_NOTA1, NOTA2 =  V_NOTA2, NOTA3 = V_NOTA3, NOTA4 = V_NOTA4, ID_ALUMNO = V_ID_ALUMNO, ID_ASIGNATURA = V_ID_ASIGNATURA, ID_PROFESOR = V_ID_PROFESOR 
        WHERE ID_CALIFICACION = V_ID_CALIFICACION;
EXCEPTION
    WHEN OTHERS THEN
    V_ERROR := 1;
    V_DESCRIPCION_ERR := SQLERRM;
END ACTUALIZAR_CALIFICACION;


--LISTAR EL ALUMNO CALIFICADO,     
CREATE OR REPLACE PROCEDURE CURSOR_CALIFICACIONES (
    P_NOMBRE_GRADO IN VARCHAR2, 
    P_SECCION IN VARCHAR2, 
    C_ALUMNOS_CALIFICADOS OUT SYS_REFCURSOR
)
IS BEGIN
    OPEN C_ALUMNOS_CALIFICADOS FOR 
    SELECT C.ID_CALIFICACION, A.NOMBRES||' '||A.APELLIDOS,C.NOTA1, C.NOTA2, C.NOTA3, C.NOTA4, 
    AI.NOMBRE, P.NOMBRES||' '||P.APELLIDOS
    FROM CALIFICACIONES C INNER JOIN ALUMNOS A ON C.ID_ALUMNO = A.ID_ALUMNO
    INNER JOIN MATRICULAS M ON A.ID_ALUMNO = M.ID_ALUMNO
    INNER JOIN NIVEL_EDUCATIVO NE ON M.ID_NIVEL_EDUCATIVO = NE.ID_NIVEL_EDUCATIVO
    INNER JOIN ANIO_ESCOLAR AE ON M.ID_ANIO_ESCOLAR = AE.ID_ANIO_ESCOLAR
    INNER JOIN ASIGNATURAS AI ON C.ID_ASIGNATURA = AI.ID_ASIGNATURA
    INNER JOIN PROFESORES P ON C.ID_PROFESOR = P.ID_PROFESOR
WHERE NE.NOMBRE = P_NOMBRE_GRADO
      AND NE.SECCION = P_SECCION
      AND TO_CHAR(AE.anio,'YYYY') = TO_CHAR(SYSDATE,'YYYY');
END CURSOR_CALIFICACIONES;

--Buscar profesor por ID y que lo devuelva
CREATE OR REPLACE PROCEDURE SP_BUSQUEDA_ID_PROFESOR (
    V_ID_PROFESOR IN NUMBER,
    C_BUSQUEDA_PROFESOR OUT SYS_REFCURSOR
)
IS BEGIN
    OPEN C_BUSQUEDA_PROFESOR FOR
    SELECT ID_PROFESOR, NOMBRES||' '||APELLIDOS
        FROM PROFESORES
    WHERE ID_PROFESOR = V_ID_PROFESOR;
END SP_BUSQUEDA_ID_PROFESOR;    

--LISTAR ID_ASIGNATURA Y NOMBRE ASIGNATURA
CREATE OR REPLACE PROCEDURE SP_ASIGNATURA (
    C_LISTA_ASIGNATURA OUT SYS_REFCURSOR
)
IS BEGIN
    OPEN C_LISTA_ASIGNATURA FOR
    SELECT ID_ASIGNATURA, NOMBRE
        FROM ASIGNATURAS;
END SP_ASIGNATURA;  

--INSERTAR PROFESORES_ASIGNATURAS
CREATE OR REPLACE PROCEDURE SP_INSERTAR_ASIG_PROFESORES (
    V_ID_PROFESOR NUMBER,
    V_ID_ASIGNATURA NUMBER,
    V_ERROR OUT NUMBER,
    V_DESCRIPCION_ERR OUT VARCHAR2 
) AS
BEGIN
    V_ERROR := 0;
    INSERT INTO PROFESORES_ASIGNATURAS(ID_PROFESOR,ID_ASIGNATURA) 
       VALUES (V_ID_PROFESOR,V_ID_ASIGNATURA);  
EXCEPTION
    WHEN OTHERS THEN
    V_ERROR := 1;
    V_DESCRIPCION_ERR := SQLERRM;
END SP_INSERTAR_ASIG_PROFESORES;

SELECT *
    FROM PROFESORES_ASIGNATURAS;

--LISTAR ID_ASIGNATURA Y NOMBRE ASIGNATURA
create or replace PROCEDURE SP_ASIGNATURA_LISTA (
    V_BUSQUEDA IN VARCHAR2,
    C_LISTA_ASIGNACIONES OUT SYS_REFCURSOR
)
IS BEGIN
    OPEN C_LISTA_ASIGNACIONES FOR
    SELECT P.ID_PROFESOR, P.NOMBRES||' '||P.APELLIDOS, A.ID_ASIGNATURA, A.NOMBRE
        FROM PROFESORES_ASIGNATURAS PA INNER JOIN PROFESORES P ON PA.ID_PROFESOR = P.ID_PROFESOR
        INNER JOIN ASIGNATURAS A ON PA.ID_ASIGNATURA = A.ID_ASIGNATURA
    WHERE P.NOMBRES LIKE V_BUSQUEDA;    
END SP_ASIGNATURA_LISTA;

--LISTAR NIVELES_EDUCATIVOS PARA PROFESORES_ASIGNATURAS
create or replace PROCEDURE SP_GRADOS_LISTA (
    C_LISTA_GRADOS OUT SYS_REFCURSOR
)
IS BEGIN
    OPEN C_LISTA_GRADOS FOR
    SELECT ID_NIVEL_EDUCATIVO, NOMBRE, SECCION
        FROM NIVEL_EDUCATIVO;
END SP_GRADOS_LISTA;

--SP PARA LISTAR EN LA TABLA RESULTANTE Y DESPUES PODER MODIFICAR
CREATE OR REPLACE PROCEDURE SP_LISTAR_ASIGN_ID (
    V_ID_PROFESOR IN NUMBER,
    C_LISTA_RESULTANTE OUT SYS_REFCURSOR
)
IS BEGIN
OPEN C_LISTA_RESULTANTE FOR
    SELECT pac.id_asignatura, a.nombre
        FROM PROFESORES_ASIGNATURAS_CURSO PAC INNER JOIN ASIGNATURAS A ON pac.id_asignatura = a.id_asignatura
        INNER JOIN PROFESORES P ON pac.id_profesor = p.id_profesor
WHERE pac.id_profesor = V_ID_PROFESOR;
END SP_LISTAR_ASIGN_ID;

CREATE OR REPLACE PROCEDURE ELIMINAR_PROF_ASIG_CUR(
    V_ID_PROFESOR NUMBER ,
    V_ID_GRADO NUMBER
)
AS BEGIN
    DELETE FROM PROFESORES_ASIGNATURAS_CURSO WHERE ID_PROFESOR = V_ID_PROFESOR AND id_nivel_educativo = V_ID_GRADO;
END ELIMINAR_PROF_ASIG_CUR;

--USUARIOS
--INCREMENTADOR DE USUARIOS
create or replace FUNCTION INCREMENT_ID_USUARIOS RETURN NUMBER AS 
    V_CODIGO_USUARIO NUMBER;
BEGIN
    SELECT nvl(MAX(ID_USUARIO),0)+1
    INTO V_CODIGO_USUARIO
    FROM USUARIOS;
    IF V_CODIGO_USUARIO IS NULL THEN
        RETURN 1;
    ELSE
        RETURN V_CODIGO_USUARIO;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error OBTENER SIGUIENTE_CODIGO_DEP: '||SQLERRM);
END INCREMENT_ID_USUARIOS;

CREATE OR REPLACE PROCEDURE SP_INSERTAR_USUARIO (
    V_USUARIO VARCHAR2,
    V_PASWORD VARCHAR2,
    V_ID_ROL NUMBER,
    V_ERROR OUT NUMBER,
    V_DESCRIPCION OUT VARCHAR2
)
AS BEGIN
    V_ERROR := 0;
    INSERT INTO USUARIOS(ID_USUARIO, NOMBRE, PASSWORD, ID_ROL) 
        VALUES (INCREMENT_ID_USUARIOS,V_USUARIO,V_PASWORD,V_ID_ROL);
EXCEPTION
    WHEN OTHERS THEN 
         V_ERROR := 1;
         V_DESCRIPCION := SQLERRM;
END SP_INSERTAR_USUARIO;

--
CREATE OR REPLACE PROCEDURE SP_LISTAR_ROLES (
    C_CURSOR OUT SYS_REFCURSOR
)
IS BEGIN
    OPEN C_CURSOR FOR
    SELECT *
        FROM ROL;
END SP_LISTAR_ROLES;

create or replace PROCEDURE SP_USUARIO_LISTA (
    V_BUSQUEDA IN VARCHAR2,
    C_LISTA_USUARIO OUT SYS_REFCURSOR
)
IS BEGIN
    OPEN C_LISTA_USUARIO FOR
    SELECT A.ID_USUARIO, A.nombre, A.ID_ROL, r.nombre
    FROM USUARIOS A INNER JOIN ROL R ON A.ID_ROL = R.ID_ROL
    WHERE A.nombre LIKE '%'||V_BUSQUEDA||'%';    
END SP_USUARIO_LISTA;

create or replace PROCEDURE ACTUALIZAR_USUARIO (
    V_ID_USUARIO NUMBER,
    V_USUARIO VARCHAR,
    V_PASSWORD VARCHAR,
    V_ID_ROL NUMBER,
    V_ERROR OUT NUMBER,
    V_DESCRIPCION_ERR OUT VARCHAR2
) AS
BEGIN
    V_ERROR := 0;
    UPDATE USUARIOS
        SET NOMBRE = V_USUARIO, PASSWORD = V_PASSWORD, ID_ROL = v_id_rol
        WHERE ID_USUARIO = V_ID_USUARIO;
EXCEPTION
    WHEN OTHERS THEN
    V_ERROR := 1;
    V_DESCRIPCION_ERR := SQLERRM;
END ACTUALIZAR_USUARIO;


CREATE OR REPLACE PROCEDURE SP_LOGIN (
    V_USUARIO VARCHAR2,
    V_PASSWORD VARCHAR2,
    C_CURSOR_LOGIN OUT SYS_REFCURSOR
)
IS BEGIN
    OPEN C_CURSOR_LOGIN FOR
    SELECT U.ID_USUARIO, U.NOMBRE, U.ID_ROL, R.NOMBRE, U.PASSWORD,
        FROM USUARIOS U INNER JOIN ROL R ON U.ID_ROL = R.ID_ROL
    WHERE U.NOMBRE = V_USUARIO AND U.PASSWORD = V_PASSWORD;    
END SP_LOGIN;

INSERT INTO ROL VALUES('1','Administrador',' ');
INSERT INTO ROL VALUES('2','Director',' ');
INSERT INTO ROL VALUES('3','Profesor',' ');
INSERT INTO ROL VALUES('4','secretaria',' ');


    
    






