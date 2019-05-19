begin try
exec Expire '2024-01-01','2021-01-01';
end try 
begin catch 
PRINT 'Error Number: ' + CONVERT(varchar(100), ERROR_NUMBER());
PRINT 'Error Message: ' + CONVERT(varchar(100), ERROR_MESSAGE());
END CATCH;