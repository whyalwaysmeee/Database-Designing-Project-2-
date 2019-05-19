create view DriversPhone as
select DriverID, FirstName + ' ' + LastName as 'Name', PhoneNumber
from Drivers;

