CREATE DATABASE Curso;
USE Curso;
SET IMPLICIT_TRANSACTIONS on;


drop table estudiantes;

--Crear tabla de estudiantes--
CREATE TABLE Estudiantes ( 
	id					INT				IDENTITY(1,1),
	Nombre				VARCHAR(100)	NOT NULL,
	apellidos			VARCHAR(100)	NOT NULL,
	email				VARCHAR(100)	UNIQUE,
	fecha_registro		DATE			DEFAULT GETDATE(),
	PRIMARY KEY(id)
  );

--Insertar datos de ejemplo
  INSERT INTO Estudiantes (nombre, apellidos, email)
  VALUES
	 ('Ana', 'Garcia', 'ana@gmailcom'),
	 ('Carlos', 'Martinez', 'carlos@gmail.com'),
	 ('Lucia', 'Fernandez', 'lucia@gmail.com');

--Ver todos los registros
SELECT * FROM Estudiantes;

--Contar Registros
SELECT COUNT(*) AS Total
FROM Estudiantes; 

--Buscar por nombre
SELECT nombre, apellidos
FROM Estudiantes
WHERE nombre LIKE 'A%';