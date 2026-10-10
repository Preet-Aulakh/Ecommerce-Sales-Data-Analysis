create database ecommerce_db;
use ecommerce_db;
select * from ecommerce;

create table ecommerce (
OrderID varchar(10) primary key,
OrderDate date,
CustomerName varchar(100),
City varchar(50),
State varchar(50),
Category varchar(50),
Subcategory varchar(50),
Amount int,
Quantity int,
Profit int,
PaymentMode varchar(30));


select sum(Amount) as Total_Sales,
sum(Profit) as Total_Profit,
sum(Quantity) as Total_Quantity_Sold,
(sum(Profit) / sum(Amount))* 100 as Profit_Margin_Percentage
From ecommerce;

select City,State,sum(Profit) as Total_Profit
from ecommerce
group by City,State
order by Total_Profit desc limit 5;

select Category, Subcategory, sum(Amount) as Total_Sales, sum(Quantity) as Total_Quantity
from ecommerce
group by Category, Subcategory
order by Total_Sales desc;
 
select PaymentMode, count(OrderID) as Total_Orders, sum(Amount) as Total_Sales
from ecommerce
group by PaymentMode
order by Total_Orders desc;

select Date_Format(OrderDate, '%Y-%m')as Month,
sum(Amount) as Monthly_Sales,
sum(Profit) as Monthly_Profit
from ecommerce group by month
order by Month;

