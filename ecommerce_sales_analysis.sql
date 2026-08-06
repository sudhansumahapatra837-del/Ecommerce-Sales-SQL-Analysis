create database ecommerce;
use ecommerce;

create table orders (order_id int primary key,order_date date , customer_name varchar(50),product varchar(50),category varchar(50),city varchar(50),quantity int, unit_price int);

insert into orders values(101,'2026-01-01','Amit','Laptop','Electronics','Bhubaneswar',1,55000),
(102,'2026-01-02','Priya','Mobile','Electronics','Cuttack',2,18000),
(103,'2026-01-03','Rahul','Chair','Furniture','Puri',4,2500),
(104,'2026-01-04','Sneha','Table','Furniture','Angul',2,5000),
(105,'2026-01-05','Mohan','Shoes','Fashion','Bhubaneswar',3,2000),
(106,'2026-01-06','Rina','Monitor','Electronics','Cuttack',1,12000),
(107,'2026-01-07','Ajay','Watch','Fashion','Puri',2,4000),
(108,'2026-01-08','Pooja','Keyboard','Electronics','Angul',2,1500),
(109,'2026-01-09','Kiran','Bag','Fashion','Bhubaneswar',3,2500),
(110,'2026-01-10','Sita','Printer','Electronics','Cuttack',1,15000);

select * from orders;
select sum(quantity * unit_price) as total_sales from orders;
select category, sum(quantity*unit_price) as total_sales from orders group by category;
select city,sum(quantity*unit_price) as total_sales from orders group by city;
select order_id,customer_name,product,category,city,quantity,unit_price,(quantity * unit_price) as total_sales from orders order by total_sales desc limit 5;
select category,avg(quantity*unit_price)as aveg_sales from orders group by category;  
select city, count(*) as total_city from orders group by city;
select * from orders where category = 'Electronics';
select product,(quantity*unit_price) as total_sales,rank() over (order by quantity * unit_price desc) as sales_rank from orders;
select * from orders where month(order_date) = 1;