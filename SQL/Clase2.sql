use curso;
select * from empleado;

CREATE TABLE departamento(
	idDepartamento int,
	nombre varchar(20),
PRIMARY KEY(idDepartamento));


INSERT INTO departamento VALUES (1,'Informatica');
INSERT INTO departamento VALUES (2,'Compras');
INSERT INTO departamento VALUES (3,'RH');

select * from departamento;

select * from empleado;