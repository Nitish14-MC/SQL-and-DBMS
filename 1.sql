create database INTRO_SQL;


use intro_sql;

create table Students
(
student_id int,
student_name varchar(20),
age int,
gender varchar(10),
location varchar(20)
);


insert into Students values(1,'Nitish',20,'Male','Vijayawada');
insert into Students values(2,'Tom',22,'Female','China');
insert into Students values(3,'Hari',26,'Male','Dubai');
insert into Students values(4,'',20,'Female','Vizag');


select * from Students;

drop table Students;

create table Students
(
student_id int,
student_name varchar(20) not null,
age int,
gender varchar(10),
location varchar(20)
);

insert into Students values(1,'Nitish',20,'Male','Vijayawada');
insert into Students values(2,'Tom',22,'Female','China');
insert into Students values(3,'Hari',26,'Male','Dubai');
insert into Students values(4,20,'Female','Vizag');
select * from Students;
drop database intro_sql;