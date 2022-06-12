create database Ali_Nino
use Ali_Nino

create table Books(
Id int primary key identity,
Name nvarchar(30),
Info nvarchar(100),
isAvaiable bit,
Price decimal,
Discount tinyint,
[Image] nvarchar(100),
Rate tinyint,
CampaignId int foreign key references Campaigns(Id)
)

alter table Books
drop column Price

alter table Books
add Price decimal (6,2)

create table Users(
Id int primary key identity,
FirstName nvarchar(30),
LastName nvarchar(30),
Email nvarchar(30) unique
)

create table Comments(
Id int primary key identity,
Date smalldatetime,
Rate tinyint,
UserId int foreign key references Users(Id),
BookId int foreign key references Books(Id)
)

create table Campaigns(
Id int primary key,
[Percent] tinyint
)

create table PageCounts(
Id int primary key identity,
BookId int foreign key references Books(Id)
)

create table Colors(
Id int primary key identity,
Name nvarchar(30),
)

create table Orders(
Id int primary key identity,
[Date] smalldatetime,
Total decimal(6,2),
UserId int foreign key references Users(Id)
)

create table OrderBooks(
Id int primary key identity,
OrderId int foreign key references Orders(Id),
BookId int foreign key references Books(Id)
)

create table Settings(
Id int primary key identity,
logo nvarchar(100),
Adress nvarchar(100),
Phone nvarchar(100),
Email nvarchar(100),
FbUrl nvarchar(100),
IngUrl nvarchar(100),
YouUrl nvarchar(100)
)
