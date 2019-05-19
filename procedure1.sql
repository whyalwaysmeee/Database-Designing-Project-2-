use UberCompetitor
go
create proc Expire
@DateMin varchar(50) = null,
@DateMax varchar(50) = null
as
IF @DateMin IS NULL OR @DateMax IS NULL
THROW 50001, 'Please type in required parameters', 1;
IF NOT (ISDATE(@DateMin) = 1 AND ISDATE(@DateMax) = 1)
THROW 50001, 'Please make sure the format of parameters is valid', 1;
IF CAST(@DateMin AS datetime) > CAST(@DateMax AS datetime)
THROW 50001, 'The DateMin parameter must be earlier than DateMax', 1;

else 
select D.DriverID, FirstName + ' ' + LastName as DriverName, PhoneNumber,D.LicenseNumber,DateOfIssue,DateOfExpicy 
from Drivers as D join DriverLicenses as DL on D.DriverID = DL.DriverID
where DateOfExpicy > @DateMin and DateOfExpicy < @DateMax
order by DateOfExpicy DESC;