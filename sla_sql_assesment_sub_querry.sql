##creating and using  database

CREATE DATABASE SCHOOL_ASSES6;
USE SCHOOL_ASSES6;

## crete table students

CREATE TABLE Students
 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    mark INT,
    course VARCHAR(50)
);



### INSERTING VALUES 

INSERT INTO Students VALUES
(101, 'shahul', 'tamil', 85, 'Bca'),
(102, 'hameed', 'english', 45, 'Bca'),
(103, 'abdul', 'statistics', 90, 'Bsc'),
(104, 'aziz', 'python', 60, 'Bcom'),
(105, 'aafiyah', 'sql', 40, 'BCom');

select * from students;

##Student details whose mark is greater than average

SELECT * FROM Students
WHERE mark >
(
    SELECT AVG(mark) FROM Students
);

###Multi Row Subquery: Students with Marks > 50

SELECT * FROM Students
WHERE id IN
(
    SELECT id FROM Students 
    WHERE mark > 50
);