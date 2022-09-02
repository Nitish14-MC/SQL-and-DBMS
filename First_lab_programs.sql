use college;

-- create Student table:
CREATE TABLE Student1  
(  
Student_ID int,  
Stu_Name varchar (25),    
Stu_Subject_ID varchar (10),    
Stu_Marks int,  
Stu_Age int  
);

-- creates Subject table:
CREATE TABLE Subject  
(  
Subject_ID varchar (10),    
Subject_Name varchar (30)    
);   

-- insert the data of students into Student table:
INSERT INTO Student1 VALUES (101, 'Akhil', 'BCA101', 85, 20);    
INSERT INTO Student1 VALUES (102, 'Balram', 'BCA104', 78, 19);  
INSERT INTO Student1 VALUES (103, 'Bheem', 'BCA102', 80, 22);  
INSERT INTO Student1 VALUES (104, 'Chetan', 'BCA103', 95, 20);  
INSERT INTO Student1 VALUES (105, 'Diksha', 'BCA104', 99, 20);  
INSERT INTO Student1 VALUES (106, 'Raman', 'BCA105', 88, 19);   
INSERT INTO Student1 VALUES (107, 'Sheetal', 'BCA103', 98, 22);   

-- inserts Subject_ID and Subject_Name into the Subject table:

INSERT INTO Subject VALUES ('BCA101', 'C');  
INSERT INTO Subject VALUES ('BCA102', 'C++');   
INSERT INTO Subject VALUES ('BCA103', 'Principle of Management');  
INSERT INTO Subject VALUES ('BCA104', 'Core Java');  
INSERT INTO Subject VALUES ('BCA105', 'Math');  
INSERT INTO Subject VALUES ('BCA106', 'Android');


-- A. Write a query to view all the records of those Students whose age is 20 by using the WHERE clause.
SELECT * FROM Student1 WHERE Stu_Age = 20; 
-- B. Write a query that shows the Subject_Name of those subjects whose Subject_ID is BCA103 and BCA106
SELECT * FROM Student1 WHERE Subject_Name = 'Android'; 

SELECT MAX(Stu_Marks), MIN(Stu_Marks) FROM Student1;  

-- Write a query shows the Student_ID and Student_name whose marks are greater than or equal to 80 in Student1 table
SELECT  Student_ID, Stu_Name
FROM Student1
WHERE Stu_Marks >= 80;

select * from Student1;