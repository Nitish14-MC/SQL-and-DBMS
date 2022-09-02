use ddl;
create table customer 
(
Id int not null,
Name varchar(50),
Email varchar(50),
Payment varchar(20),
primary key (Id)
);

create table Customer_order
(
ID int not null,
OrderDescription varchar(50),
DateOfOrder varchar(50),
Price int,
primary key (ID),
Customer_ID int references customer(Id)
);

-- Inserting some values into the first table ( customer )
insert into customer values(1,'Ram','ram456@gmail.com','Phonepay');
insert into customer values(2,'Ravi','ravi789@gmail.com','Googlepay');
insert into customer values(3,'Raju','raju999@gmail.com','Cash');

-- Inserting some values into the second table ( Customer_order )
insert into Customer_order values (1,'Hp Laptop','01/09/22',220000,1);
insert into Customer_order values (2,'Asus Mobile','21/08/22',25000,2);
insert into Customer_order values (3,'LG Refrigerator','09/07/22',27000,3);



select * from customer;
select * from Customer_order;

-- Successfully a foreign key has been created between two tables