--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body GRADO_CALIFICACIONES
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "PROYECTO_ESCUELA"."GRADO_CALIFICACIONES" AS
    PROCEDURE LISTA_ALUMNOSC
 ( P_NOMBRE_GRADO IN VARCHAR2
,  P_SECCION IN VARCHAR2
, P_ANIO IN DATE
,  C_CURSOR OUT SYS_REFCURSOR)
IS begin
  open C_CURSOR for 
    SELECT A.ID_ALUMNO, A.NOMBRES||' '||A.APELLIDOS, A.RTN 
    FROM ALUMNOS A JOIN MATRICULAS M ON A.ID_ALUMNO = m.id_alumno
     JOIN ANIO_ESCOLAR AN ON m.id_anio_escolar = an.id_anio_escolar
     JOIN NIVEL_EDUCATIVO NE ON m.id_nivel_educativo = ne.id_nivel_educativo
  WHERE ne.nombre = P_NOMBRE_GRADO 
  AND ne.seccion = P_SECCION
  AND EXTRACT(YEAR FROM AN.anio) = EXTRACT(YEAR FROM P_ANIO)
  ORDER BY A.NOMBRES;
END LISTA_ALUMNOSC;

--
PROCEDURE CURSOR_CALIFICACIONES (
    P_NOMBRE_GRADO IN VARCHAR2, 
    P_SECCION IN VARCHAR2, 
    P_ANIO IN DATE,
    C_ALUMNOS_CALIFICADOS OUT SYS_REFCURSOR    
)
IS BEGIN
    OPEN C_ALUMNOS_CALIFICADOS FOR 
    SELECT C.ID_CALIFICACION,c.id_alumno, c.id_asignatura,c.id_profesor ,A.NOMBRES||' '||A.APELLIDOS,C.NOTA1, C.NOTA2, C.NOTA3, C.NOTA4, 
    AI.NOMBRE, P.NOMBRES||' '||P.APELLIDOS
    FROM CALIFICACIONES C INNER JOIN ALUMNOS A ON C.ID_ALUMNO = A.ID_ALUMNO
    INNER JOIN MATRICULAS M ON A.ID_ALUMNO = M.ID_ALUMNO
    INNER JOIN NIVEL_EDUCATIVO NE ON M.ID_NIVEL_EDUCATIVO = NE.ID_NIVEL_EDUCATIVO
    INNER JOIN ANIO_ESCOLAR AE ON M.ID_ANIO_ESCOLAR = AE.ID_ANIO_ESCOLAR
    INNER JOIN ASIGNATURAS AI ON C.ID_ASIGNATURA = AI.ID_ASIGNATURA
    INNER JOIN PROFESORES P ON C.ID_PROFESOR = P.ID_PROFESOR
WHERE NE.NOMBRE = P_NOMBRE_GRADO
      AND NE.SECCION = P_SECCION
      AND EXTRACT(YEAR FROM AE.anio) = EXTRACT(YEAR FROM P_ANIO);
END CURSOR_CALIFICACIONES;


--
PROCEDURE COMBO_PROFESOR_LISTAR (C_CURSOR_COMBOBOX OUT SYS_REFCURSOR)
IS BEGIN
    OPEN C_CURSOR_COMBOBOX FOR
    SELECT ID_PROFESOR, NOMBRES||' '||APELLIDOS
        FROM PROFESORES
    WHERE estado = 1; 
END COMBO_PROFESOR_LISTAR;

--
PROCEDURE COMBO_ASIGNATURA_LISTAR (C_CURSOR_COMBOASIG OUT SYS_REFCURSOR)
IS BEGIN
    OPEN C_CURSOR_COMBOASIG FOR
    SELECT ID_ASIGNATURA, NOMBRE
        FROM ASIGNATURAS; 
END COMBO_ASIGNATURA_LISTAR;

--
PROCEDURE INSERTAR_CALIFICACIONES (
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
END INSERTAR_CALIFICACIONES;

--
FUNCTION INCREMENT_ID_CALIFICACIONES RETURN NUMBER AS 
    v_codigo_calificacion NUMBER;
BEGIN
    SELECT SEQ_CALIFICACIONES.NEXTVAL
        INTO v_codigo_calificacion
        FROM DUAL;
    IF v_codigo_calificacion IS NULL THEN
        RETURN 1;
    ELSE
        RETURN v_codigo_calificacion;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error OBTENER SIGUIENTE_CODIGO_DEP: '||SQLERRM);
END INCREMENT_ID_CALIFICACIONES;

PROCEDURE ACTUALIZAR_CALIFICACION (
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

END GRADO_CALIFICACIONES;
