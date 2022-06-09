-- DROP TABLE
DROP TABLE mes CASCADE CONSTRAINTS;
DROP TABLE empleado_empresa CASCADE CONSTRAINTS;
DROP TABLE empresa CASCADE CONSTRAINTS;
DROP TABLE registroasistencia CASCADE CONSTRAINTS;
DROP TABLE empleado CASCADE CONSTRAINTS;
DROP TABLE estadocivil CASCADE CONSTRAINTS;
DROP TABLE region CASCADE CONSTRAINTS;
DROP TABLE provincia CASCADE CONSTRAINTS;
DROP TABLE comuna CASCADE CONSTRAINTS;

DROP sequence sq_empleado;
drop sequence sq_registromes;

-- CREATE TABLE
CREATE TABLE mes(
    idmes integer NOT NULL,
    descripcionmes VARCHAR2(50) NOT NULL
);
CREATE TABLE registroasistencia(
    mes_idmes INTEGER NOT NULL,
    empleado_idempleado  INTEGER NOT NULL,
    idregistroasistencia INTEGER NOT NULL,
    dia INTEGER NOT NULL,
    mes INTEGER NOT NULL,
    anmo INTEGER NOT NULL
);
CREATE TABLE empleado_empresa(
    empresa_idempresa INTEGER NOT NULL,
    empresa_idempleado INTEGER NOT NULL
);
CREATE TABLE empresa(
    IdEmpresa INTEGER NOT NULL,
    NombreEmpresa VARCHAR2(30) NOT NULL,
    FechaCreacion DATE NOT NULL
);
CREATE TABLE empleado(
    region_idregion INTEGER NOT NULL,
    idEmpleado INTEGER NOT NULL,
    RutEmpleado VARCHAR(30) NOT NULL,
    NombreEmpleado VARCHAR(30) NOT NULL,
    ApellidosEmpleado VARCHAR(30) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    Sueldo INTEGER NOT NULL,
    EstadoCivil_idEstadoCivil INTEGER NOT NULL
);
CREATE TABLE estadocivil(
    idEstadoCivil INTEGER NOT NULL,
    DescripcionEstadoCivil VARCHAR2(30) NOT NULL
);
CREATE TABLE region(
    idRegion INTEGER NOT NULL,
    DescripcionRegion VARCHAR(30) NOT NULL
);
CREATE TABLE provincia(
    idProvincia INTEGER NOT NULL,
    DescripcionProvincia VARCHAR2(30) NOT NULL,
    Region_idRegion INTEGER NOT NULL
);
CREATE TABLE comuna(
    idComuna INTEGER NOT NULL,
    DescripcionComuna VARCHAR2(30) NOT NULL,
    Provincia_idProvincia INTEGER NOT NULL
);

create sequence sq_empleado START WITH 1;
create sequence sq_registromes start with 1;

-- ALTER
-- llaves primarias
ALTER TABLE mes
ADD CONSTRAINT Mes_PK
PRIMARY KEY(idMes);

ALTER TABLE registroasistencia
ADD CONSTRAINT RegistroAsistencia_PK
PRIMARY KEY(idRegistroAsistencia);

ALTER TABLE empleado
ADD CONSTRAINT Empleado_PK
PRIMARY KEY(idEmpleado);

ALTER TABLE Empleado_Empresa
ADD CONSTRAINT Empleado_Empresa_PK
PRIMARY KEY(Empresa_idEmpresa, empresa_idempleado);

ALTER TABLE Empresa
ADD CONSTRAINT Empresa_PK
PRIMARY KEY(idEmpresa);


ALTER TABLE EstadoCivil
ADD CONSTRAINT EstadoCivil_PK
PRIMARY KEY(idEstadoCivil);


ALTER TABLE Region
ADD CONSTRAINT Region_PK
PRIMARY KEY(idRegion);

ALTER TABLE Provincia
ADD CONSTRAINT Provincia_PK
PRIMARY KEY(idProvincia);

ALTER TABLE Comuna
ADD CONSTRAINT Comuna_PK
PRIMARY KEY(idComuna);

-- ALTER FOREIGN KEY
ALTER TABLE RegistroAsistencia
ADD CONSTRAINT RegistroAsistencia_Mes_FK
FOREIGN KEY (Mes_idMes)
REFERENCES Mes(idMes);

ALTER TABLE RegistroAsistencia
ADD CONSTRAINT RegistroAsistencia_Empleado_FK
FOREIGN KEY (Empleado_IdEmpleado)
REFERENCES Empleado(idEmpleado);

-- (...)

-- INSERT

-- insert de empleado

INSERT INTO empleado
VALUES (1, sq_empleado.NEXTVAL, 'a', 'a', 'a', sysdate, 0, 1);
INSERT INTO empleado
VALUES (1, sq_empleado.NEXTVAL, 'a', 'a', 'a', sysdate, 0, 1);
INSERT INTO empleado
VALUES (1, sq_empleado.NEXTVAL, 'a', 'a', 'a', sysdate, 0, 1);
INSERT INTO empleado
VALUES (1, sq_empleado.NEXTVAL, 'a', 'a', 'a', sysdate, 0, 1);
INSERT INTO empleado
VALUES (1, sq_empleado.NEXTVAL, 'a', 'a', 'a', sysdate, 0, 1);

INSERT INTO MES VALUES(1, 'ENERO');
INSERT INTO MES VALUES(2, 'FEBRERO');
INSERT INTO MES VALUES(3, 'MARZO');


INSERT INTO registroasistencia
VALUES (1, 1, sq_registromes.nextval, 12, 01, 2022);
INSERT INTO registroasistencia
VALUES (2, 3, sq_registromes.nextval, 05, 03, 2022);
INSERT INTO registroasistencia
VALUES (3, 2, sq_registromes.nextval, 28, 02, 2022);

-- COMMIT
COMMIT;


SELECT * FROM REGISTROASISTENCIA;
