create function CarDateRange
(@DateMax smalldatetime, @DateMin smalldatetime)
returns table

return (select * from Cars
where CarYear between @DateMax and @DateMin);