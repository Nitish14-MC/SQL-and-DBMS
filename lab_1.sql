-- Creating a database with name "db"
create database db; 

-- USE statement is used to select the database ( which ever u have created ) to perform operations
use db;

-- Creating table with name as Student and the attrributes are Student_id, Student_name, Age, Gender, Address
create table student
(
std_id int,
Name varchar(30),
Age int,
Gender varchar(1),
Address varchar(30)
);

-- The INSERT INTO statement is used to insert  records in a table.
insert into student values(1,'Nitish',20,'M','Vijayawada');
insert into student values(2,'Naveen',25,'M','Vizag');
insert into student values(3,'Nikhil',26,'M','Vellore');
insert into student values(4,'Ajay',22,'M','Aluva');
insert into student values(5,'Ram',25,'M','Nellore');
insert into student values(6,'Tom',27,'M','Pune');
insert into student values(7,'Nandessh',23,'M','Vijayawada');
insert into student values(8,'Nani',20,'M','Neerukonda');
insert into student values(9,'Ramu',24,'M','Mangalagiri');
insert into student values(10,'Nivin',26,'M','Tirupathi');

-- Adding new attributes into the table

alter table student add Location varchar(10);


-- Drop the column "Location"

select * from student;

alter table student drop Location;

select * from student;
