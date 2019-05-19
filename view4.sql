create view OlderThan40Years as
select D.DriverID, FirstName + ' ' + LastName as DriverName, PhoneNumber, DateOfBirth,DriverStatus,StartTime,SSN,AverageScore,D.LicenseNumber,DateOfIssue,DateOfExpicy 
from Drivers as D join DriverLicenses as DL 
on D.DriverID = DL.DriverID
where DateOfBirth < '1979-04-15 00:00:00'