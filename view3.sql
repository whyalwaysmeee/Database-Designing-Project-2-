create view VIPCustomer as
select UserID, FirstName + ' ' + LastName as CustomerName, NumberOfTripWithinAYear, StoredCreditCard
from Customers
where NumberOfTripWithinAYear = (
select max(NumberOfTripWithinAYear)
from Customers);