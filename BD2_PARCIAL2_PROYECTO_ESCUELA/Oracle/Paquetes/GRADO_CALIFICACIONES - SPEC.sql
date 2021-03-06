--------------------------------------------------------
--  File created - Saturday-March-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package GRADO_CALIFICACIONES
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "GRADO_CALIFICACIONES" AS
    PROCEDURE LISTA_ALUMNOSC
     ( P_NOMBRE_GRADO IN VARCHAR2
    ,  P_SECCION IN VARCHAR2
    , P_ANIO IN DATE
    ,  C_CURSOR OUT SYS_REFCURSOR);
    
    PROCEDURE CURSOR_CALIFICACIONES (
    P_NOMBRE_GRADO IN VARCHAR2, 
    P_SECCION IN VARCHAR2, 
    P_ANIO IN DATE,
    C_ALUMNOS_CALIFICADOS OUT SYS_REFCURSOR    
);
    
    PROCEDURE COMBO_PROFESOR_LISTAR (C_CURSOR_COMBOBOX OUT SYS_REFCURSOR);
    
    PROCEDURE COMBO_ASIGNATURA_LISTAR (C_CURSOR_COMBOASIG OUT SYS_REFCURSOR);

    FUNCTION INCREMENT_ID_CALIFICACIONES RETURN NUMBER;
    
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
    );
    
    
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
);
    
END GRADO_CALIFICACIONES;
