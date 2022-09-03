select * from Orders
--set default constraint
alter table Orders alter column Quantity int NOT NULL;
alter table Orders ADD CONSTRAINT UQ_Orders_OrderId unique(OrderId);
alter table Orders ADD CHECK(Quantity>5);
alter table Orders add constraint default_Shippeddate default getdate() for Shippeddate;