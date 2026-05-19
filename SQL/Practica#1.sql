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
--INSERTS EMP
insert into EMP(ENO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
values(7369,'Smith','Clerk',7902,'1980-12-17',800,NULL,20);

insert into EMP(ENO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
values(7369,'ALLEN','SALESMAN',7698,'1981-02-20',800,NULL,20);

select * 
from EMP