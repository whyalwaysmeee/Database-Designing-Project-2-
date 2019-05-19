create trigger Customers_Name_Update
on Customers
after update
as
update Customers
set FirstName = upper(left(FirstName,1))+substring(FirstName,2,len(FirstName)),
LastName = upper(left(LastName,1))+substring(LastName,2,len(LastName));