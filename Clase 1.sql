CREATE DATABASE Curso;
USE Curso;
SET IMPLICIT_TRANSACTIONS on;


--Crear tabla de estudiantes--
CREATE TABLE Estudiantes ( 
	id					INT				IDENTITY(1,1),
	Nombre				VARCHAR(100)	NOT NULL,
	apellidos			VARCHAR(100)	NOT NULL,
	email				VARCHAR(100)	UNIQUE,
	fecha_registro		DATE			DEFAULT GETDATE(),
	PRIMARY KEY(id)
);