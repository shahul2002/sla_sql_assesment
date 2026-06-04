----CREATING DATABASE----

create database MALL;
show databases;

----USING THE SPECIFIC DATABASE----

use MALL;

---CREATING TABLE----

CREATE TABLE Shopping 
(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

----INSERTING RECORDS INTO THE TABLE---

INSERT INTO Shopping VALUES
(1, 'Laptop', 55000.00),
(2, 'Mobile', 25000.00),
(3, 'Headphones', 1500.00),
(4, 'Smart Watch', 5000.00),
(5, 'Tablet', 30000.00);

select * from shopping;


---HIGHEST PRICE PRODUCT----

SELECT * FROM Shopping
WHERE price = (SELECT MAX(price) FROM Shopping);


---LOWEST PRICE PRODUCT---

SELECT * FROM Shopping
WHERE price = (SELECT MIN(price) FROM Shopping);

