-- DQL CONCEPTS::

-- 1.Creating a database
create database Employee;

-- Activate Database
use Employee;



-- Creating a table
create table emp_info
(
first_name varchar(20),
last_name varchar(20),
id int not null,
age int,
city varchar(20),
state varchar(10),
primary key(id)
);

show tables;

-- Insert values into the table
insert into emp_info values ( 'John','Jones',99980,45,'Payson','Arizona');
insert into emp_info values ( 'Mary','Jones',99982,25,'Payson','Arizona');
insert into emp_info values ( 'Eric','Edwards',88232,32,'San Diego','California');
insert into emp_info values ( 'Mary Ann','Edwards',88233,32,'Phoenix','Arizona');
insert into emp_info values ( 'Ginger','Howell',98002,42,'Cottonwood','Arizona');
insert into emp_info values ( 'Sebastian','Smith',92001,23,'Gila Bend','Arizona');
insert into emp_info values ( 'Gus','Gray',22322,35,'Bagdad','Arizona');
insert into emp_info values ( 'Mary Ann','May',32326,52,'Tucson','Arizona');
insert into emp_info values ( 'Erica','Williams',32327,60,'Show Low','Arizona');
insert into emp_info values ( 'Leroy','Brown',32380,22,'Pinetop','Arizona');
insert into emp_info values ( 'Elroy','Cleaver',32382,22,'Globe','Arizona');


-- Trying to insert null values in attribute "id"
insert into emp_info values ( 'Elroy','Cleaver',null,22,'Globe','Arizona');
-- insert into emp_info values ( 'Elroy','Cleaver',,22,'Globe','Arizona');

-- Now how to see the data which we have inserted --> use DQL (SELECT)
select * from emp_info;

-- Fetching only the firstname and lastname from the table
select first_name,last_name from emp_info;

-- How to find how many records exist in the particular table
select count(id) from emp_info;

-- How to find how many records exist in the particular table
-- Giving alias name for the same
select count(id) as Records_count from emp_info;

-- Fetching only the firstname and lastname from the table
-- Here changing first_name,last_name to firstname and lastname
select first_name as firstname ,last_name as lastname from emp_info;



-- FILTERS ASSIGNMENT
-- 1.	Select the firstname, lastname, city from the table
select first_name,last_name,city from emp_info;

-- 2 .	Select the firstname, lastname, city from the table whose age is greater than 30
select first_name,last_name,city from emp_info where age>30;

-- 3 .	From the above table ,Select the records  whose age is greater than 30 and less than 50
select * from emp_info where age>30 and age<50;

-- 4. From the above table, Select the records  whose firstname starts with ‘E’
select * from emp_info where first_name like 'E%';
-- U can use lowercase as well:: In both ways it works same --> select * from emp_info where first_name like 'e%';

-- 5.	From the above table, Select the customer records  whose lastname ends with ‘S’
select * from emp_info where last_name like '%S';

-- 6.	From the above table, Select the customer records  whose age is 22,32
select * from emp_info where age=22 or age=32;
-- The above is one way of doing it

-- The other way of doing same is by using " in " operator
select * from emp_info where age in (22,32);

-- 7.	From the above table, Select the customer records  whose age is either 22 or 32 or 21 or 25 or 32 or 10 or 12 or 52 or 46 or 33 or 24 or 52 or 65 or …..
-- The effective use of "in operator " is when u have large number for conditions
select * from emp_info where age in (22,32,42,52,62,72);

-- 8.	From the above table, Select the customer records  whose city has letter “A” in it.
select * from emp_info where city like '%a%';

-- 9.Get the record whose firstname is ‘Gus’ ,lastname is ‘Gray’ and id=22322
select * from emp_info where first_name='Gus' and last_name='Gray' and  id=22322;
