##creating database
CREATE DATABASE ECOMERCE;

SHOW DATABASES;

-------------------------------------
##using the specific database
USE ECOMERCE;

-------------------------------------------------
##Creating a table

CREATE TABLE amazon (
product_ID INT PRIMARY KEY,
product_name VARCHAR(20),
price DECIMAL(10,2),
quantity int
);

SELECT * FROM amazon;

----------------------------------
## inserting values into the table

INSERT INTO amazon values
(101,'mattres pillow',1999.00,2),
(102,'charger cable',900.00,3),
(103,'ps 5',55000.00,1),
(104,'dolo 650',100.00,30),
(105,'bed sheet',2500.00,5);

SELECT * FROM amazon;
