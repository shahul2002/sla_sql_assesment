##creating database

CREATE DATABASE testbank;
SHOW DATABASES;
----------------------------------
##using the specific database
USE testbank;
--------------------------------------------
## Creating a Table

CREATE TABLE Bank (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    bank_balance DECIMAL(10,2),
    active_status VARCHAR(10)
);

select * from bank;
------------------------------------------------
#### inserting values into the table

INSERT INTO Bank VALUES
(1, 'csk', 10000.00, 'Active'),
(2, 'kkr', 450.00, 'Active'),
(3, 'rcb', 0.00, 'Active'),
(4, 'mi', 9000.00, 'Active'),
(5, 'srh', 300.00, 'Active');

select * from bank;
------------------------------------------------
## Update Active Status to Inactive, for Customers with Balance Below 500

SET SQL_SAFE_UPDATES = 0;

UPDATE Bank
SET active_status = 'Inactive'
WHERE bank_balance < 500;

select * from bank;
------------------------------------------------
## Delete Customers with Balance 0 and change Active Status Inactive

DELETE FROM Bank
WHERE bank_balance = 0
AND active_status = 'Inactive';

SELECT * FROM Bank;




