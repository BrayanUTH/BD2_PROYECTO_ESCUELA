--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body MATRICULA_ALUMNO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "MATRICULA_ALUMNO" AS
    FUNCTION ALUMNO_YA_MATRICULADO(V_RTN IN VARCHAR2) RETURN BOOLEAN AS 
        v_contador NUMBER;
    BEGIN
        SELECT count(1)
            INTO v_contador
            FROM MATRICULAS M INNER JOIN ALUMNOS A ON M.ID_ALUMNO = A.ID_ALUMNO
        WHERE A.RTN = V_RTN;
        RETURN (v_contador > 0);
    END ALUMNO_YA_MATRICULADO;
    
---------------------
    PROCEDURE SP_INSERTAR_MATRICULA(
        V_NOMBRES IN VARCHAR2,
        V_APELLIDOS IN VARCHAR2,
        V_RTN IN VARCHAR2,
        V_DIRECCION IN VARCHAR2,
        V_TELEFONO IN VARCHAR2,
        V_FECHA DATE,
        V_ID_ANIO_ESCOLAR NUMBER,
        V_ID_NIVEL_EDUCATIVO NUMBER
)
AS BEGIN
    INSERT INTO ALUMNOS (ID_ALUMNO, NOMBRES, APELLIDOS, RTN, DIRECCION, TELEFONO)
           VALUES (obtener_siguiente_cod_alumno,V_NOMBRES,V_APELLIDOS,V_RTN, V_DIRECCION, V_TELEFONO);
    INSERT INTO MATRICULAS(ID_MATRICULA, FECHA, ID_ANIO_ESCOLAR,ID_ALUMNO, ID_NIVEL_EDUCATIVO)
            VALUES (obtener_siguiente_matricula,V_FECHA, V_ID_ANIO_ESCOLAR, ultimo_id_alumno, V_ID_NIVEL_EDUCATIVO);
END SP_INSERTAR_MATRICULA;

---------------------
FUNCTION OBTENER_SIGUIENTE_COD_ALUMNO RETURN NUMBER AS 
    v_codigo_alumno NUMBER;
BEGIN
    SELECT nvl(MAX(ID_ALUMNO),0)+1
    INTO v_codigo_alumno
    FROM ALUMNOS;
  RETURN v_codigo_alumno;
EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error OBTENER SIGUIENTE_CODIGO_DEP: '||SQLERRM);
END OBTENER_SIGUIENTE_COD_ALUMNO;

----------------------
FUNCTION OBTENER_SIGUIENTE_MATRICULA RETURN NUMBER AS 
    v_codigo_matricula NUMBER;
BEGIN
    SELECT nvl(MAX(ID_MATRICULA),0)+1
    INTO v_codigo_matricula
    FROM MATRICULAS;
  RETURN v_codigo_matricula;
EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error OBTENER SIGUIENTE_CODIGO_DEP: '||SQLERRM);
END OBTENER_SIGUIENTE_MATRICULA;

---------------------------
FUNCTION ULTIMO_ID_ALUMNO RETURN NUMBER AS 
    v_codigo NUMBER;
BEGIN
    SELECT MAX(ID_ALUMNO)
    INTO v_codigo
    FROM ALUMNOS;
  RETURN v_codigo;
EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error OBTENER SIGUIENTE_CODIGO_DEP: '||SQLERRM);
END ULTIMO_ID_ALUMNO;

---------------------------
PROCEDURE SP_ACTUALIZAR_MATRICULA (
    V_ID_MATRICULA IN NUMBER,
    V_ID_ALUMNO IN NUMBER,
    V_NOMBRE IN VARCHAR,
    V_APELLIDO IN VARCHAR,
    V_DIRECCION IN VARCHAR,
    V_RTN IN VARCHAR,
    V_TELEFONO IN VARCHAR,
    V_ID_ANIO_ESCOLAR NUMBER,
    V_ID_NIVEL_EDUCATIVO IN NUMBER,
    V_FECHA DATE,
    V_ERROR OUT NUMBER,
    V_DESCRIPCION_ERR OUT VARCHAR2
) AS
BEGIN
    V_ERROR := 0;
    UPDATE MATRICULAS
        SET FECHA = V_FECHA, ID_ANIO_ESCOLAR = V_ID_ANIO_ESCOLAR, ID_ALUMNO = V_ID_ALUMNO, id_nivel_educativo = V_ID_NIVEL_EDUCATIVO
        WHERE ID_MATRICULA = V_ID_MATRICULA;
    UPDATE ALUMNOS
        SET NOMBRES = V_NOMBRE, APELLIDOS = V_APELLIDO, RTN = V_RTN, DIRECCION = V_DIRECCION, TELEFONO = V_TELEFONO
        WHERE ID_ALUMNO = V_ID_ALUMNO;
EXCEPTION
    WHEN OTHERS THEN
    V_ERROR := 1;
    V_DESCRIPCION_ERR := SQLERRM;
END SP_ACTUALIZAR_MATRICULA;

-----------------------
PROCEDURE SP_COMBO_LISTAR_ANIO (
    C_CURSOR_ANIO OUT SYS_REFCURSOR
)
IS BEGIN
    OPEN C_CURSOR_ANIO FOR
        SELECT ID_ANIO_ESCOLAR ,TO_CHAR(ANIO,'YYYY')
            FROM ANIO_ESCOLAR;
END SP_COMBO_LISTAR_ANIO;

---------------------
PROCEDURE SP_LISTAR_MATRICULA(
    V_BUSQUEDA IN NUMBER,
    C_CURSOR OUT SYS_REFCURSOR
)
IS BEGIN
    OPEN C_CURSOR FOR
    SELECT M.ID_MATRICULA, M.ID_ALUMNO , a.nombres, a.apellidos, a.rtn, m.id_nivel_educativo, ne.nombre,ne.seccion, m.id_anio_escolar, TO_CHAR(ae.anio,'YYYY'), a.telefono, a.direccion, m.fecha
        FROM MATRICULAS M INNER JOIN ALUMNOS A ON M.ID_ALUMNO = A.ID_ALUMNO
        INNER JOIN NIVEl_EDUCATIVO NE ON M.ID_NIVEL_EDUCATIVO = NE.ID_NIVEL_EDUCATIVO
        INNER JOIN ANIO_ESCOLAR AE ON m.id_anio_escolar = ae.id_anio_escolar
    WHERE A.RTN LIKE '%'||V_BUSQUEDA||'%';
END SP_LISTAR_MATRICULA;

END MATRICULA_ALUMNO;