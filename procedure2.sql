use UberCompetitor
go
create proc ExpensiveTrips
@cost int = null
as

if @cost < (
select min(cost)
from TripsAndReservations
)
throw  50001, 'The given cost cannot be smaller than the least expensive trip',1;
if @cost is null
throw 50002,'Please type in a needed amount of money',1;

select C.UserID,DriverID,FirstName + ' ' + LastName as CustomerName,PhoneNumber as CustomerPhoneNumber, NumberOfTripWithinAYear,Cost
from Customers as C join TripsAndReservations as T on 
C.UserID = T.UserID
where Cost > @cost
order by cost DESC;