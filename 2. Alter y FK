-- creamos las tablas
CREATE TABLE persona (
    ID_Persona NUMBER(4) NOT NULL,
    Nombre_Persona VARCHAR2(50) NOT NULL,
    Apellido_Persona VARCHAR2(50) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    Email VARCHAR2(80),
    Sexo CHAR NOT NULL
);
CREATE TABLE mascota (
    ID_Mascota NUMBER(4) NOT NULL,
    Nombre_Mascota VARCHAR2(50) NOT NULL,
    ID_Persona NUMBER(4) NOT NULL
    
    /*constrain: fk_persona --> es llave foránea
    ( columna ID_Persona -> persona(id_persona)  )
    */
    
)

-- ejecutar alters de llaves primarias
ALTER TABLE persona 
ADD CONSTRAINT pk_persona
PRIMARY KEY(id_persona);

ALTER TABLE mascota
ADD CONSTRAINT pk_mascota
PRIMARY KEY(ID_Mascota);

-- alters de llaves foráneas
ALTER TABLE mascota
ADD CONSTRAINT fk_persona
FOREIGN KEY (ID_Persona)
REFERENCES persona(id_persona);

-- seleccionamos para comprobar las llaves agregadas.
SELECT OWNER, CONSTRAINT_NAME, STATUS
FROM user_constraints
WHERE table_name = 'MASCOTA';

--  HABILITAR Y DESHABILITAR CONSTRAINTS
ALTER TABLE mascota
DISABLE CONSTRAINT FK_Persona;

ALTER TABLE mascota
ENABLE CONSTRAINT FK_Persona;

INSERT INTO persona (id_persona, nombre_persona,apellido_persona, fecha_nacimiento, email, sexo)
VALUES (1, 'Sebastián', 'Contreras', '03/05/1989', NULL, 'M');
INSERT INTO persona (id_persona, nombre_persona,apellido_persona, fecha_nacimiento, email, sexo)
VALUES (2, 'Francisca', 'Morales', '03/05/1989', 'franmorales@gmail.com', 'F');

select * from persona;
select * from mascota;

INSERT INTO mascota
VALUES (1, 'Copito', 1);

INSERT INTO mascota
VALUES (2, 'Cachupin', 2);


/* DATOS VINCULADOS O JOINS */
SELECT m.id_mascota, m.nombre_mascota, p.nombre_persona, p.apellido_persona
FROM mascota m
JOIN persona p ON p.ID_Persona = m.ID_Persona;
