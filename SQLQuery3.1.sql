create database Day3_assingnment;

use Day3_assingnment;

create table Customers (
   Customerid char primary key,
   CompanyName varchar(40),
   contactName char(30),
   Address varchar(max) ,
   City char(15) ,
   Phone char(24) ,
   Fax char(24) ,
   
);
select * from Customers;

CREATE TABLE Orders(
OrderId integer primary key,
customerId char foreign key references Customers(customerId) ,
Orderdate datetime ,
Shippeddate datetime ,
Freight money ,
Shipname varchar(40) ,
Shipaddres varchar(max) ,
Quantity integer ,
);

select * from Customers;
select * from Orders;