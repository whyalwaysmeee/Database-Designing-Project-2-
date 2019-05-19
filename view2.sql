create view HighestScore as
select top 5 D.DriverID, FirstName + ' ' + LastName as DriverName, AverageScore, BankAccountID,BankName,TypeOfAccount,RountingNumber,AccountNumber
from Drivers as D join DriverBankAccounts as DBA on D.DriverID = DBA.DriverID
where AverageScore > 
(select avg(AverageScore) 
from Drivers)
order by AverageScore DESC;
