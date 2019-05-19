create function fnUserID()
returns bigint
begin
return
(select UserID from Customers
where NumberOfTripWithinAYear =
(select max(NumberOfTripWithinAYear) 
from Customers));
end;