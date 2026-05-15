-- Crear base de datos
create database curso;
-------------------------------------------------------------------------------------------------
--Borrar base de datos
drop database curso;
-------------------------------------------------------------------------------------------------
USE Curso;
-------------------------------------------------------------------------------------------------
--Crear tablas 
create table empleado
(idEmpleado int,
nombre varchar(40),
salario int,
provincia varchar(20),
idDepartamento int,
primary key(idEmpleado));
--Borrar tablas
--drop table empleado;
-------------------------------------------------------------------------------------------------
--Tipos de datos comunes
--int, char, varchar, date
-------------------------------------------------------------------------------------------------
--Insertar registros 
insert into empleado(idEmpleado,nombre,salario,provincia,idDepartamento)
values(1,'Juan',200,'Puntarenas',1);

insert into empleado(idEmpleado,nombre,salario,provincia,idDepartamento)
values(2,'Maria',200,'Puntarenas',1);

insert into empleado(idEmpleado,nombre,salario,provincia,idDepartamento)
values(3,'Ana',150,'Alajuela',2);

insert into empleado(idEmpleado,nombre,salario,provincia,idDepartamento)
values(4, 'José',250,'Puntarenas',2);
-------------------------------------------------------------------------------------------------
--Seleccionar todos los datos(Muestra la tabla basicamente)
select * from empleado;

-- SELECT 

--Select -> campos
--from -> tablas
--where -> condiciones(opciones)

--NOTA: Las condiciones se aplican de manera individual registro por registro

--Mostrar el codigo y el nombre de todos los empleados
