DROP TABLE persona;
CREATE TABLE persona(
    id_persona NUMBER(4) PRIMARY KEY,
    Nombres VARCHAR2(100) NOT NULL,
    Apellidos VARCHAR2(100) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    LicenciaConducir VARCHAR2(10)
);

CREATE SEQUENCE sq_idpersona START WITH 1000;

INSERT INTO persona (Id_persona, Nombres, Apellidos, FechaNacimiento, LicenciaConducir)
VALUES (sq_idpersona.NEXTVAL, 'Sebastián', 'Contreras', '03/05/1989', 'B');

SELECT * FROM persona;

/*
SINTAXIS
========
-- BORRAR TABLAS:
DRO TABLE [NOMBRE TABLA];

-- CREAR TABLAS:
CREATE TABLE [nombre de tabla] (
    [nombre atributo] [tipo dato] [PRIMARY KEY, nulo o no nulos],
    [nombre atributo] [tipo dato] [PRIMARY KEY, nulo o no nulos]
);

-- INSERTAR DATOS
INSERT INTO [NOMBRE TABLA] (COLUMNA1, COLUMNA2, COLUMNA3)
VALUES (VALOR1, VALOR2, VALOR3)

-- CREAR Sequencias
CREATE SEQUENCE sq_idpersona START WITH 100;

*/