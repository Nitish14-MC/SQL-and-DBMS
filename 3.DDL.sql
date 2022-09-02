create database ddl;
use ddl;

create table employees
(
emp_name varchar(50),
emp_id int not null,
manager_name varchar(50),
division int,
primary key(emp_id)
);

create table emp_new
(
firstname varchar(25),
lastname varchar(25),
title varchar(5),
age int,
salary int
);

alter table emp_new add gender varchar(2);
alter table emp_new add random varchar(2);
select * from emp_new;

alter table emp_new drop column random;
select * from emp_new;

show tables;