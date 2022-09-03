--alter table Customers
--drop constraint Customerid;
select * from Customers 
where Customerid='fk_gr_Customerid'

if exists(select * from Customers  where Customerid='fk_gr_Customerid')
begin
alter table Customers
drop constraint fk_gr_Customerid
end;
