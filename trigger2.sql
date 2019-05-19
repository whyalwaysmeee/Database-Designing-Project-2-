create trigger TurnNOPTo4
on Cars
after update
as
update Cars
set NumberOfPassengers = 4
where  NumberOfPassengers = 0 and Class = 'B' or Class = 'C';