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
-------------------------------------------------------------------------------------------------
--SELECT 

--Select -> campos
--from -> tablas
--where -> condiciones(opciones)

--NOTA: Las condiciones se aplican de manera individual registro por registro
-------------------------------------------------------------------------------------------------

--EJEMPLO: 
--Mostrar el codigo y el nombre de todos los empleados
select idEmpleado,nombre
from empleado;
-------------------------------------------------------------------------------------------------
--Listar el nombre de los empleados
--Que trabajan en el departamento 1

select nombre
from empleado
where idDepartamento = 1;
-------------------------------------------------------------------------------------------------
--Listar los empleados
--Que vivan en Puntarenas y trabajen 
--En el departamento 2

select * 
from empleado
where provincia = 'Puntarenas'
	and idDepartamento = 2;
-------------------------------------------------------------------------------------------------
--Que devuelve este select?
select *
from empleado
where idDepartamento = 1 and idDepartamento = 2;

--Esto sucede debido a que la validacion se esta haciendo con un and y en los and se deben cumplir ambos
--Con un or si muestra a todos los empleados 
select *
from empleado
where idDepartamento = 1 or idDepartamento = 2;
-------------------------------------------------------------------------------------------------

---------------------------------FUNCIONES DE AGRUPAMIENTO---------------------------------------
							-- SUM, COUNT, MAX, MIN, AVG
							--NOTA: No se pueden usar en el where de manera directa
--EJEMPLO:

--Mostrar cuántos empleados existen
select count(*) as Total from empleado;
 --El as se utiliza para poner etiquetas a una columna

 --Si usamos campos dentro del count,
 --No se toman en cuenta los nulos

 select count(idEmpleado) as Empleados from empleado;
 -------------------------------------------------------------------------------------------------
 select sum(salario) as Total, count(salario) as Salarios from empleado;
 -------------------------------------------------------------------------------------------------
 --Mostrar el monto del salario maximo que se paga
 select max(salario) as "Salario Maximo" from empleado;
 -------------------------------------------------------------------------------------------------
 --Mostrar salario minimo 
 select min(salario) as "Salario Minimo" from empleado;
 -------------------------------------------------------------------------------------------------
 --Mostrar salario promedio que se paga 
 select avg(salario) as "Salario Promedio" from empleado;
 -------------------------------------------------------------------------------------------------
 --Mostrar cuanto se paga en TOTAL
 select sum(salario) as "Total a pagar" from empleado;
-------------------------------------------------------------------------------------------------
--Listar el salario maximo y minimo 
--de los empleados de Puntarenas
select max(salario) as "Salario Maximo", min(salario) as "Salario Minimo" from empleado
where provincia = 'Puntarenas';
-------------------------------------------------------------------------------------------------

---------------------------------------IN, NOT IN------------------------------------------------
						--Se utiliza para buscar en conjunto de datos
						
--IN : Se utiliza para buscar algo que este en un conjunto 
--NOT IN: Se utiliza para buscar algo que no esta en un conjunto
-------------------------------------------------------------------------------------------------
--EJEMPLO:

--Listar los empleados 
--que vivan en Puntarenas o Alajuela

select * 
from empleado
where provincia IN('Puntarenas', 'Alajuela');

--Listar los empleados
--que no vivan en Puntarenas o Alajuela
select * 
from empleado
where provincia NOT IN('Puntarenas', 'Alajuela');
-------------------------------------------------------------------------------------------------
------------------------------------------LIKE---------------------------------------------------

--Listar los empleados
--que el nombre inicia con j
select * 
from empleado
where nombre like 'j%'; --El porcentaje hace que muestre todo lo que tiene 


--Listar los empleados
--que el nombre tenga una 'u' de segunda letra 
select *
from empleado
where nombre like '_u%'; -- El '_' Toma el lugar de la primera letra porque lo tenemos de primero
						--Si quisiesemos ver los empleados que tengan u en la tercera letra hacemos '__u%'

