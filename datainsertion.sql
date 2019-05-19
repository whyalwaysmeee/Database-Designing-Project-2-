use UberCompetitor

SET IDENTITY_INSERT Customers ON 
insert Customers (UserID,FirstName,LastName,HomeAddress,PhoneNumber,StoredCreditCard,NumberOfTripWithinAYear)
values
(100001, 'Leon','Hill','PO Box 7005','(800) 555-1205',1111111111,24),
(100002, 'Ben','Russell','PO Box 96621','(301) 555-8950',2222222222,13),
(100003, 'Steve', 'Jackson','4669 N Fresno','(800) 555-8725',3333333333,7),
(100004, 'Zach','Lowe','1528 N Sierra Vista','(559) 555-9999',4444444444,10),
(100005, 'Luka', 'Grant','4583 E Home','(559) 555-1551',5555555555,12);
SET IDENTITY_INSERT Customers OFF
go

SET IDENTITY_INSERT Drivers ON 
insert Drivers (DriverID,FirstName,LastName,PhoneNumber,DateOfBirth,DriverStatus,StartTime,SSN,HomeAddress,AverageScore,LicenseNumber,InsuranceNumber)
values
(200001,'Frank','Oden','(559) 555-7473','1988-02-22 00:00:00','Active','2016-05-22 00:00:00',123456789,'4420 N. First Street, Suite 108',4.5,538769,14223),
(200002,'Tim','Pan','(314) 555-8834','1959-02-14 00:00:00','Active','2012-12-22 00:00:00',223456789,'4486 N. First Street, Suite 108', 4.2,638769,14224),
(200003,'Landry','Parker','(314) 575-8834','1991-02-27 00:00:00','Active','2017-06-13 00:00:00',323456789,'3255 Ramos Cir', 4.8,738769,14225),
(200004,'Chris','Howard','(314) 575-8831','1969-09-27 00:00:00','Active','2017-02-13 00:00:00',423456789,'3219 Ramos Cir', 4.2,838769,14226),
(200005,'Jason','Wagner','(315) 888-8834','1957-07-14 00:00:00','Active','2009-06-16 00:00:00',523456789,'3441 W Macarthur Blvd', 4.6,938769,14227);
SET IDENTITY_INSERT Drivers OFF
go

SET IDENTITY_INSERT TripsAndReservations ON 
insert TripsAndReservations (OrderNumber,TripOrReservation, UserID,DriverID,BookedDate,PickUpTime,DropOffTime,PickUpLocation,DropOffLocation,Cost)
values
(300001,'Trip',100004,200004,'2016-05-22 00:00:00','2016-05-23 00:00:00','2016-05-23 00:01:00','PO Box 2069','PO Box 1192',15.3),
(300002,'Reservation',100001,200001,'2016-05-25 00:00:00','2016-05-27 00:00:00',null,'PO Box 2044','PO Box 1172',16),
(300003,'Trip',100003,200003,'2017-05-22 00:00:00','2017-05-23 00:00:00','2017-05-23 00:01:00','415 E Olive Ave','117 W Micheltorena Top Floor',24.3),
(300004,'Trip',100002,200002,'2018-05-22 00:00:00','2018-05-23 00:00:00','2018-05-23 00:01:00','Secretary Of State','1626 E Street',14),
(300005,'Trip',100005,200005,'2018-01-22 00:00:00','2018-01-23 00:00:00','2018-01-23 00:01:00','Secretary Of State','1615 E Street',19);
SET IDENTITY_INSERT TripsAndReservations OFF
go

SET IDENTITY_INSERT DriverBankAccounts ON 
insert DriverBankAccounts (BankAccountID, DriverID,BankName,TypeOfAccount,RountingNumber,AccountNumber)
values
(400006,200001,'AAA','Saving',19486122,109484623),
(400007,200002,'GGG','Saving',19486121,109487623),
(400008,200003,'TTT','cheking',19486115,109484699),
(400009,200004,'AAA','Saving',59486122,104424623),
(400010,200005,'TTT','Saving',19486135,109400823);
SET IDENTITY_INSERT DriverBankAccounts OFF
go

SET IDENTITY_INSERT DriverInsurances ON 
insert DriverInsurances (InsuranceNumber, DriverID,DateOfIssue,DateOfExpicy)
VALUES
(14223, 200001,'2002-05-23 00:00:00','2022-05-23 00:00:00'),
(14224, 200002,'2008-05-28 00:00:00','2028-05-28 00:00:00'),
(14225, 200003,'2015-01-23 00:00:00','2035-01-23 00:00:00'),
(14226, 200004,'2002-05-23 00:00:00','2022-05-23 00:00:00'),
(14227, 200005,'2009-09-15 00:00:00','2029-09-15 00:00:00');
SET IDENTITY_INSERT DriverInsurances OFF
go

SET IDENTITY_INSERT DriverLicenses ON 
insert DriverLicenses (LicenseNumber, DriverID,DateOfIssue,DateOfExpicy)
values
(538769, 200001,'2002-05-23 00:00:00','2022-05-23 00:00:00'),
(638769, 200002,'2008-05-28 00:00:00','2028-05-28 00:00:00'),
(738769, 200003,'2015-01-23 00:00:00','2035-01-23 00:00:00'),
(838769, 200004,'2002-05-23 00:00:00','2022-05-23 00:00:00'),
(938769, 200005,'2009-09-15 00:00:00','2029-09-15 00:00:00');
SET IDENTITY_INSERT DriverLicenses OFF 
go

SET IDENTITY_INSERT Cars ON 
insert Cars (PlateNumber,DriverID,Made,Model,CarYear,Color,Class,NumberOfPassengers,NumberOfBags)
values
(500005,200001,'Honda','A','2010','Yellow','B',4,5),
(500006,200002,'Toyota','C','2015','Brown','B',6,8),
(500007,200003,'Chevy','D','2017','White','C',4,6),
(500008,200004,'Dodge','A','2015','Grey','A',7,5),
(500009,200005,'Honda','C','2010','Black','B',4,7);
SET IDENTITY_INSERT Cars OFF
go