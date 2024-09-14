--Task1
Create Database Department
use Department
Create Table Employees
(
  Id int Primary Key Identity,
  Fullname nvarchar(255) not null, 
  Age int not null Check(Age>0),
  Email nvarchar(255)  not null unique,
  Salary decimal(18,2) not null Check(Salary Between 300 and 2000),
  Profession nvarchar(50) Not Null,
  BranchId int Foreign Key References Branch(Id)
)

Select * From Employees

--Task2
Create Table Branch
(
Id int Primary Key Identity,
[Name] nvarchar(50) Not Null,
EmployeeCount int Check(EmployeeCount<26),
Filed nvarchar(50) Not Null
)

Create Table BranchProfessions
(
Id int Primary Key Identity,
[Name] nvarchar(50) Not Null,
BranchFieldId int Foreign Key References Branch(Id)
)

Insert Into Branch Values
('Branch1',20,'Field1'),
('Branch2',22,'Field2'),
('Branch3',24,'Field3'),
('Branch4',19,'Field4')

Insert Into Employees Values 
('Name1',22,'Name1@gmail.com',600.64,'Pro1',1),
('Name2',27,'Name2@gmail.com',1978.97,'Pro2',2),
('Name3',18,'Name3@gmail.com',1600.5,'Pro3',3),
('Name4',35,'Name4@gmail.com',1100.14,'Pro4',4),
('Name5',29,'Name5@gmail.com',1400.14,'Pro4',4)

Insert Into BranchProfessions Values
('Pro1',1),('Pro2',2),('Pro3',3),('Pro4',4),('Pro5',1)