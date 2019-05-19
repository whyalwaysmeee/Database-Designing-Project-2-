begin try 
exec ExpensiveTrips 5;
end try 
BEGIN CATCH
PRINT 'Error Number: ' + CONVERT(varchar(100), ERROR_NUMBER());
PRINT 'Error Message: ' + CONVERT(varchar(100), ERROR_MESSAGE());
END CATCH;