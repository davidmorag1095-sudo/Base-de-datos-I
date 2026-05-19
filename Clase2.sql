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
----------------------------------------------------------------------------------
--Sin integridad Referencial
insert into empleado(idEmpleado,nombre,salario,provincia,idDepartamento)
values(6, 'Prueba sin IR',100,'Puntarenas',10);
--Lo inserta porque no se ha levantado la integridad referencial
--Lo cual no deberia pasar
----------------------------------------------------------------------------------
--DELETE = Borrar registros
DELETE from empleado
where idEmpleado = 6;
----------------------------------------------------------------------------------
--MODIFICAR DATOS
UPDATE empleado 
set nombre = 'nuevo_nombre'
where idEmpleado = 6;
----------------------------------------------------------------------------------
--Levantar la Integridad Referencial
--se coloca en la tabla hija 
--donde se tienen las FK so las tablas hijas 
alter table Empleado add foreign key(idDepartamento)
references Departamento(idDepartamento);
----------------------------------------------------------------------------------
--RECORDAR
--Funciones de agrupamiento
--SUM, AVG, MAX, MIN
-----------------------------------GROUP BY---------------------------------------

							--agrupar registros
							--se agrupan por campos repetidos 

select * from empleado;

--Mostrar la cantidad de empleados que existen en la tabla
select count(*) from empleado;


--Mostrar la cantidad de empleados por provincia
select provincia,count(*) as "Cantidad"
from empleado
group by provincia;

--Mostrar cuantos empleados por provincia
--ganan mas de 100 colones
select provincia,count(*) as "Cantidad"
from empleado
where salario>100
group by provincia;

--NOTA 
--NO SE PUEDE TENER UN CAMPO Y UNA FUNCION SIN UN GROUP BY
select provincia,count(*) as "Cantidad"
from empleado; --DA ERROR 


--Mostrar cuantos empleados 
--existen por provincia y departamento
select provincia,idDepartamento,count(*) as "Cantidad"
from empleado
group by provincia,idDepartamento
order by provincia; --Ordena por provincia


--Mostrar el salario maximo por departamento
select idDepartamento,max(salario) as "Salario"
from empleado
group by idDepartamento;


--Que devuelve este select?
select nombre,max(salario) as "Salario"
from empleado
group by nombre;
--No se agrupa por campos que no se repiten 
--NO TIENE SENTIDO

--Porque esto funciona?
select count(*)
from empleado;


------------------------------------HAVING------------------------------------------
							--Having es el where del group by
							--se aplica luego de agrupar 
							--y si permite funciones de agrupamiento

--EJEMPLO
--Mostrar los departamentos que tengan
--mas de dos empleados 

select idDepartamento,count(*) as "Empleados"
from empleado
group by idDepartamento
having count(*) > 2;

--En el having si se pueden usar funciones de agrupamiento
--En el where no

----------------------------------------JOINS---------------------------------------
--es la forma de unir tablas 
--mediante un campo en comun 

--Mostrar el id del empleado, su nombre,
--id del apartamento y nombre del dep donde trabaja 

--Join explisito, mejor forma de hacerlo
select e.idEmpleado,e.nombre,d.idDepartamento,d.nombre
from empleado e, departamento d
where d.idDepartamento = e.idDepartamento;

--Join intermitente 
select * 
from empleado e
join departamento d ON d.idDepartamento = e.idDepartamento;

--Join se conoce como INNER JOIN
--Donde los datos deben existir en ambas tablas para relacionarlos

--RIGHT JOIN
select * 
from empleado e
right join departamento d ON d.idDepartamento = e.idDepartamento;

--LEFT JOIN 
select *
from empleado e
left join departamento d ON d.idDepartamento = e.idDepartamento;


--FULL JOIN 
select * 
from empleado e 
full join departamento d ON d.idDepartamento = e.idDepartamento;

--EL 99.9% DE LAS VECES ES EL JOIN NORMAL MAS COMUN QUE SE UTILIZA

--PRODUCTO CARTESIANO
--muy peligroso
--Es relacionas todos los datos de una tabla contra
--todos los datos de otra tabla 

select * 
from empleado e, departamento d
order by e.nombre

--FATAL NO SE DEBE HACER QUE UN SELECT SEA PRODUCTO CARTESIANO