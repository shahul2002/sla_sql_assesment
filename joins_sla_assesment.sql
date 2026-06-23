### creating and using the database

create database shoppingjoins;
use shoppingjoins;



### creating a table stopping

create table shopping
(
product_name varchar(20),
product_id int primary key,
price decimal(10,2)
);


select * from shopping;

## creating table orders

create table orders
(
product_id int primary key,
order_status varchar(20),
shipping_details varchar(20)
);

select * from orders;

###inserting records in shopping table

insert into shopping values
("IPHONE 17 PRO MAX",1,150000.00),
("dslr camera",2,250000.00),
("SAMSUNG ULTRA S26",3,130000),
("PS 5",4,60000.00),
("ASUS LAPTOP 6 GEN",5,75000.00);

select * from shopping;

###inserting records in orders table

insert into orders values
(1,"delivered","chennai"),
(2,"processing","mumbai"),
(5,"delivered","bengalore");

select * from orders;

### innner join

select
s.product_id,
s.product_name,
s.price,
o.order_status,
o.shipping_details

from shopping s
join orders o on s.product_id = o.product_id;

##left join

select
s.product_id,
s.product_name,
s.price,
o.order_status,
o.shipping_details

from shopping s
left join orders o on s.product_id = o.product_id;

###right join

select
s.product_id,
s.product_name,
s.price,
o.order_status,
o.shipping_details

from shopping s
right join orders o on s.product_id = o.product_id;

###outer join

select
s.product_id,
s.product_name,
s.price,
o.order_status,
o.shipping_details

from shopping s
left join orders o on s.product_id = o.product_id

union

select
s.product_id,
s.product_name,
s.price,
o.order_status,
o.shipping_details

from shopping s
right join orders o on s.product_id = o.product_id;
