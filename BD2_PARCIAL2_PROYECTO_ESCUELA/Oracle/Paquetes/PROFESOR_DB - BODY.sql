--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body PROFESOR_DB
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "PROFESOR_DB" AS
     PROCEDURE INSERTAR_PROFESOR(
     P_NOMBRES IN VARCHAR2,
     P_APELLIDOS IN VARCHAR2,
     P_RTN IN VARCHAR2,
     P_DIRECCION IN VARCHAR2,
     P_TELEFONO IN VARCHAR2,
     P_ESTADO IN NUMBER
)AS BEGIN

    INSERT INTO PROFESORES(ID_PROFESOR, NOMBRES, APELLIDOS, RTN, DIRECCION,TELEFONO,ESTADO) 
       VALUES (INCREMENT_ID_PROFESOR,P_NOMBRES,P_APELLIDOS, P_RTN,P_DIRECCION,P_TELEFONO,P_ESTADO);  
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error OBTENER SIGUIENTE_CODIGO_DEP: '||SQLERRM);
END INSERTAR_PROFESOR;

    FUNCTION INCREMENT_ID_PROFESOR RETURN NUMBER AS 
    v_codigo_profesor NUMBER;
BEGIN
    SELECT nvl(MAX(ID_PROFESOR),0)+1
    INTO v_codigo_profesor
    FROM PROFESORES;
    IF v_codigo_profesor IS NULL THEN
        RETURN 1;
    ELSE
        RETURN v_codigo_profesor;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error OBTENER SIGUIENTE_CODIGO_DEP: '||SQLERRM);
END INCREMENT_ID_PROFESOR;

     PROCEDURE ACTUALIZAR_PROFE (
    P_ID_PROFESOR NUMBER,
    P_NOMBRE VARCHAR2,
    P_APELLIDOS VARCHAR2,
    P_RTN VARCHAR2,
    P_DIRECCION VARCHAR2,
    P_TELEFONO VARCHAR2,
    P_ESTADO NUMBER
) AS
BEGIN
    UPDATE PROFESORES
        SET NOMBRES = P_NOMBRE,APELLIDOS = P_APELLIDOS,RTN = P_RTN,DIRECCION = P_DIRECCION,TELEFONO = P_TELEFONO,ESTADO = P_ESTADO
        WHERE ID_PROFESOR = P_ID_PROFESOR;
EXCEPTION
    WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('Error ACTUALIZAR EL PROFESOR: '||SQLERRM);
END ACTUALIZAR_PROFE;

        PROCEDURE BUSCAR_PROFESORES (CURSOR_PROFE OUT SYS_REFCURSOR)
IS BEGIN
    OPEN CURSOR_PROFE FOR
    SELECT ID_PROFESOR, NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO
        FROM PROFESORES ORDER BY ID_PROFESOR;
END BUSCAR_PROFESORES;

        PROCEDURE BUS_ID_PROFESOR (
    V_ID_PROFESOR IN NUMBER,
    C_BUSQ_PROFESOR OUT SYS_REFCURSOR
)
IS BEGIN
    OPEN C_BUSQ_PROFESOR FOR
    SELECT NOMBRES,APELLIDOS,RTN,DIRECCION,TELEFONO,ESTADO
        FROM PROFESORES
    WHERE ID_PROFESOR = V_ID_PROFESOR;
END BUS_ID_PROFESOR; 

         PROCEDURE ACTIVAR_PROFE (
    P_ID_PROFESOR NUMBER
) AS
BEGIN
    UPDATE PROFESORES
        SET ESTADO = 1
        WHERE ID_PROFESOR = P_ID_PROFESOR;
EXCEPTION
    WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('Error ACTUALIZAR EL PROFESOR: '||SQLERRM);
END ACTIVAR_PROFE;

          PROCEDURE DESACTIVAR_PROFE (
    P_ID_PROFESOR NUMBER
) AS
BEGIN
    UPDATE PROFESORES
        SET ESTADO = 0
        WHERE ID_PROFESOR = P_ID_PROFESOR;
EXCEPTION
    WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('Error ACTUALIZAR EL PROFESOR: '||SQLERRM);
END DESACTIVAR_PROFE;


FUNCTION PROFESOR_YA_REGISTRADO(V_RTN IN VARCHAR2) RETURN BOOLEAN AS 
        v_contador NUMBER;
    BEGIN
        SELECT count(1)
            INTO v_contador
            FROM PROFESORES
        WHERE RTN = V_RTN;
        RETURN (v_contador > 0);
    END PROFESOR_YA_REGISTRADO;

END PROFESOR_DB;