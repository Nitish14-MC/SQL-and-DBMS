create database company;
use company;

create table dep
( depid int not null,
depname varchar(100),
depaddress varchar(255),
primary key(depid)
);

insert into dep values(1,'Forensic','Hyderabad');
insert into dep values(2,'Bio','Bmbay');
insert into dep values(3,'Cybercell','Vizag');
insert into dep values(4,'Narcotic-cell','Vijayawada');
select * from dep;


create table emp
(
empid int,
empname varchar(100),
empadd varchar(200),
-- depid int,
primary key (empid),
foreign key (depid) references dep(depid)
);


insert into emp values(11,'Hari','Hyderabad',1);
insert into emp values(22,'Ravi','Bmbay',2);
insert into emp values(33,'Babu','Vizag',3);
insert into emp values(44,'Tom','Vijayawada',4);

insert into emp values(11,'Hari','Hyderabad');
insert into emp values(22,'Ravi','Bmbay');
insert into emp values(33,'Babu','Vizag');
insert into emp values(44,'Tom','Vijayawada');

select * from emp;




