--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package PROFESOR_DB
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PROFESOR_DB" AS
     PROCEDURE INSERTAR_PROFESOR(
     P_NOMBRES IN VARCHAR2,
     P_APELLIDOS IN VARCHAR2,
     P_RTN IN VARCHAR2,
     P_DIRECCION IN VARCHAR2,
     P_TELEFONO IN VARCHAR2,
     P_ESTADO IN NUMBER
);

   FUNCTION INCREMENT_ID_PROFESOR RETURN NUMBER;

       PROCEDURE ACTUALIZAR_PROFE (
    P_ID_PROFESOR NUMBER,
    P_NOMBRE VARCHAR2,
    P_APELLIDOS VARCHAR2,
    P_RTN VARCHAR2,
    P_DIRECCION VARCHAR2,
    P_TELEFONO VARCHAR2,
    P_ESTADO NUMBER
);

    PROCEDURE BUSCAR_PROFESORES (CURSOR_PROFE OUT SYS_REFCURSOR);

    PROCEDURE BUS_ID_PROFESOR (
    V_ID_PROFESOR IN NUMBER,
    C_BUSQ_PROFESOR OUT SYS_REFCURSOR
    );

    PROCEDURE ACTIVAR_PROFE (
    P_ID_PROFESOR NUMBER
    );

    PROCEDURE DESACTIVAR_PROFE (
    P_ID_PROFESOR NUMBER
    );
    
    FUNCTION PROFESOR_YA_REGISTRADO(V_RTN IN VARCHAR2) RETURN BOOLEAN;

END PROFESOR_DB;
