IF DB_ID('UberCompetitor') IS NOT NULL
	DROP DATABASE UberCompetitor
GO

create database UberCompetitor
go

use UberCompetitor
go

create table Customers(
UserID bigint not null identity(1,1),
FirstName varchar(40) not null,
LastName varchar(40) not null,
HomeAddress varchar(40) null,
PhoneNumber varchar(40) not null,
StoredCreditCard bigint not null,
NumberOfTripWithinAYear int default 0,
CONSTRAINT PK_UserID PRIMARY KEY CLUSTERED (
	UserID ASC)
	)

go

create table Drivers(
DriverID bigint not null identity(1,1),
FirstName varchar(40) not null,
LastName varchar(40) not null,
PhoneNumber varchar(40) not null,
DateOfBirth smalldatetime not null check (DateOfBirth > '1930-01-01'),
DriverStatus varchar(20) not null,
StartTime smalldatetime not null,
SSN bigint not null,
HomeAddress varchar(40) not null,
AverageScore decimal(10,2) not null check (AverageScore >= 0) ,check (AverageScore <= 5),
LicenseNumber bigint not null,
InsuranceNumber bigint not null
CONSTRAINT PK_DriverID PRIMARY KEY CLUSTERED (
	DriverID ASC)
	)

go

create table TripsAndReservations(
OrderNumber bigint not null  identity(1,1),
TripOrReservation varchar(30) not null,
UserID bigint not null,
DriverID bigint not null,
BookedDate smalldatetime not null,
PickUpTime smalldatetime not null check (PickUpTime > BookedDate),
DropOffTime smalldatetime ,
PickUpLocation varchar(50) not null,
DropOffLocation varchar(50) not null,
Cost decimal(10,2) not null
CONSTRAINT PK_OrderNumber PRIMARY KEY CLUSTERED (
	OrderNumber ASC)
	)

go 

create table DriverBankAccounts(
BankAccountID bigint  identity(1,1),
DriverID bigint not null,
BankName varchar(10) not null,
TypeOfAccount varchar(10) not null,
RountingNumber bigint not null,
AccountNumber bigint not null
CONSTRAINT PK_BankAccountID PRIMARY KEY CLUSTERED (
	BankAccountID ASC)
	)

go

create table DriverInsurances(
InsuranceNumber bigint not null identity(1,1),
DriverID bigint not null,
DateOfIssue smalldatetime not null,
DateOfExpicy smalldatetime not null, check (DateOfExpicy > DateOfIssue),
CONSTRAINT PK_InsuranceID PRIMARY KEY CLUSTERED (
	InsuranceNumber ASC)
	)

go

create table DriverLicenses(
LicenseNumber bigint not null identity(1,1),
DriverID bigint not null,
DateOfIssue smalldatetime not null,
DateOfExpicy smalldatetime not null check (DateOfExpicy > DateOfIssue),
CONSTRAINT PK_LicenseNumber PRIMARY KEY CLUSTERED (
	LicenseNumber ASC)
	)

go 

create table Cars(
PlateNumber bigint not null identity(1,1),
DriverID bigint not null,
Made varchar(20) not null,
Model varchar(30) not null,
CarYear smalldatetime not null,
Color varchar(10) not null,
Class varchar(10) not null,
NumberOfPassengers int not null,
NumberOfBags int not null,
CONSTRAINT PK_PlateNumber PRIMARY KEY CLUSTERED (
	PlateNumber ASC)
	)
go


