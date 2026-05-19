USE curso;
--Crear tabla 
CREATE table EMP
(ENO int,
ENAME CHAR (6) NOT NULL,
JOB CHAR (9) NOT NULL,
MGR INT NULL,
HIREDATE DATE NOT NULL,
SAL INT NOT NULL,
COMM INT NULL,
DEPTNO INT NOT NULL,
PRIMARY KEY (ENO));

----------------------
select * from EMP;
DROP TABLE EMP
-------------------------------------------------------------------------------
--CREAR LA TABLA DEPT

CREATE TABLE DEPT 
(DEPTNO INT NOT NULL,
DNAME CHAR (10) NOT NULL,
LOC CHAR (8) NOT NULL,
PRIMARY KEY (DEPTNO )); 
----------------------
DROP TABLE DEPT
select * 
from DEPT;
-------------------------------------------------------------------------------
--Integridad Referencial 
ALTER TABLE EMP ADD FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO);
ALTER TABLE EMP ADD FOREIGN KEY (MGR) REFERENCES EMP(ENO); 
-------------------------------------------------------------------------------
--INSERT DEPT
insert into DEPT(DEPTNO,DNAME,LOC)
values(20,'Research','Dallas');
------------------------------------
insert into DEPT(DEPTNO,DNAME,LOC)
values(10,'Accounting','New York');
------------------------------------
insert into DEPT(DEPTNO,DNAME,LOC)
values(30,'Sales','Chicago');
------------------------------------
insert into DEPT(DEPTNO,DNAME,LOC)
values(40,'Operations','Boston');
-------------------------------------------------------------------------------
--INSERTS EMP
insert into EMP(ENO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
values(7369,'Smith','Clerk',7902,'1980-12-17',800,NULL,20);
-----------------------------------------------------------------
insert into EMP(ENO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
values(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10);
-----------------------------------------------------------------
insert into EMP(ENO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
values(7369,'Smith','Clerk',7902,'1980-12-17',800,NULL,20);
-----------------------------------------------------------------
insert into EMP(ENO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
values(7698,'´BLAKE','MANAGER',7839,'1981-5-1',2850,NULL,10);
-----------------------------------------------------------------
select * 
from EMP
delete from EMP;