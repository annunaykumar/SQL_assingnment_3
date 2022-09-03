select * from Orders
--set default constraint
alter table Orders alter column Quantity int NOT NULL;