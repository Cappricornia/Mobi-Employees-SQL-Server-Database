-------------------------------------------------------------------
-- This script will create a sample database "Mobi" in        --
-- MS SQL Server and will populate sample data in its tables.    --
-------------------------------------------------------------------

USE master
GO

CREATE DATABASE Mobi
GO

USE Mobi
GO

CREATE TABLE Towns(
  TownID int IDENTITY NOT NULL,
  Name VARCHAR(50) NOT NULL,
  CONSTRAINT PK_Towns PRIMARY KEY CLUSTERED(TownID ASC)
)
GO

SET IDENTITY_INSERT Towns ON

INSERT INTO Towns (TownID, Name)
VALUES (1, 'London')

INSERT INTO Towns (TownID, Name)
VALUES (2, 'Madrid')

INSERT INTO Towns (TownID, Name)
VALUES (3, 'Edmonds')

INSERT INTO Towns (TownID, Name)
VALUES (4, 'Seattle')

INSERT INTO Towns (TownID, Name)
VALUES (5, 'Paris')

INSERT INTO Towns (TownID, Name)
VALUES (6, 'Viena')

INSERT INTO Towns (TownID, Name)
VALUES (7, 'Sofia')

INSERT INTO Towns (TownID, Name)
VALUES (8, 'Rome')

INSERT INTO Towns (TownID, Name)
VALUES (9, 'San Francisco')

INSERT INTO Towns (TownID, Name)
VALUES (10, 'Toronto')

INSERT INTO Towns (TownID, Name)
VALUES (11, 'Los Angeles')

INSERT INTO Towns (TownID, Name)
VALUES (12, 'New York')

INSERT INTO Towns (TownID, Name)
VALUES (13, 'Singapore')

INSERT INTO Towns (TownID, Name)
VALUES (14, 'Beijing')

INSERT INTO Towns (TownID, Name)
VALUES (15, 'Shanghai')

INSERT INTO Towns (TownID, Name)
VALUES (16, 'New Delhi')

INSERT INTO Towns (TownID, Name)
VALUES (17, 'Dubai')

INSERT INTO Towns (TownID, Name)
VALUES (18, 'Gold Bar')

INSERT INTO Towns (TownID, Name)
VALUES (19, 'Nevada')

INSERT INTO Towns (TownID, Name)
VALUES (20, 'Sydney')

INSERT INTO Towns (TownID, Name)
VALUES (21, 'Melbourne')

INSERT INTO Towns (TownID, Name)
VALUES (22, 'Kent')

INSERT INTO Towns (TownID, Name)
VALUES (23, 'Cambridge')

INSERT INTO Towns (TownID, Name)
VALUES (24, 'Oxford')

INSERT INTO Towns (TownID, Name)
VALUES (25, 'Portland')

INSERT INTO Towns (TownID, Name)
VALUES (26, 'Edinburgh')

INSERT INTO Towns (TownID, Name)
VALUES (27, 'Dublin')

INSERT INTO Towns (TownID, Name)
VALUES (28, 'Memphis')

INSERT INTO Towns (TownID, Name)
VALUES (29, 'Moscow')

INSERT INTO Towns (TownID, Name)
VALUES (30, 'Bordeaux')

INSERT INTO Towns (TownID, Name)
VALUES (31, 'Berlin')

INSERT INTO Towns (TownID, Name)
VALUES (32, 'Bucharest')

SET IDENTITY_INSERT Towns OFF

GO

CREATE TABLE Addresses(
  AddressID int IDENTITY NOT NULL,
  AddressText VARCHAR(100) NOT NULL,
  TownID int NULL,
  CONSTRAINT PK_Addresses PRIMARY KEY CLUSTERED (AddressID ASC)
)
GO

SET IDENTITY_INSERT Addresses ON

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (1, '23 Abinghton Court', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (2, '1343 Prospect St', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (3, '1648 EagelLane', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (4, '2284 Cargo Avenue', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (5, '2947 Vinely Lane', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (6, '3067 Goldstream', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (7, '3197 Rubic Place', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (8, '3284 S. Bubble Avenue', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (9, '332 Laguna Blue', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (10, '3454 Bush Drive', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (11, '3670 All Ways Drive', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (12, '3708 Corighgel', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (13, '3711 Rollingwood Dr', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (14, '3919 Pinto Road', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (15, '4311 Clay Rd', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (16, '4777 Rockne Drive', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (17, '5678 Clear Court', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (18, '5863 Sierra', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (19, '6058 Hill Street', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (20, '6118 Grasswood Circle', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (21, '620 Woodside Ct.', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (22, '6307 Greenbelt Way', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (23, '6448 Castle Court', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (24, '6774 Bonanza', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (25, '6968 Wren Ave.', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (26, '7221 Peachwillow Street', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (27, '7270 Pepper Way', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (28, '7396 Stratton Circle', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (29, '7808 Brown St.', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (30, '7902 Grammercy Lane', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (31, '8668 Via Neruda', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (32, '8684 Military East', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (33, '8751 Mogi Drive', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (34, '9320 Teak Dr.', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (35, '9435 Breck Court', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (36, '9745 Bonita Ct.', 5)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (37, 'Pascalstr 951', 31)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (38, '94, rue Descartes', 30)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (39, '1226 Shoe St.', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (40, '1399 Firestone Drive', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (41, '1902 Santa Cruz', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (42, '1970 Napa Ct.', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (43, '250 Race Court', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (44, '5672 Hale Dr.', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (48, '7484 Roundtree Drive', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (49, '8157 W. Book', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (50, '9539 Glenside Dr', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (51, '9833 Mt. Dias Blv.', 8)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (52, '10203 Acorn Avenue', 2)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (53, '3997 Via De Luna', 23)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (54, 'Downshire Way', 23)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (55, '1411 Ranch Drive', 15)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (56, '3074 Arbor Drive', 15)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (57, '390 Ridgewood Ct.', 15)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (58, '9666 Northridge Ct.', 15)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (59, '9752 Jeanne Circle', 15)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (60, '8154 Via Mexico', 27)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (61, '80 Sunview Terrace', 26)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (62, '1825 Corte Del Prado', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (63, '2598 La Vista Circle', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (64, '3421 Bouncing Road', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (68, '8209 Green View Court', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (69, '8463 Vista Avenue', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (70, '9693 Mellowood Street', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (71, '991 Vista Verde', 17)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (72, '1061 Buskrik Avenue', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (73, '172 Turning Dr.', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (74, '2038 Encino Drive', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (75, '2046 Las Palmas', 3)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (109, '5452 Corte Gilberto', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (110, '6629 Polson Circle', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (111, '7640 First Ave.', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (112, '7883 Missing Canyon Court', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (113, '8624 Pepper Way', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (114, '9241 St George Dr.', 7)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (119, '9605 Pheasant Circle', 18)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (120, '1245 Clay Road', 10)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (121, '1748 Bird Drive', 10)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (123, '3127 El Camino Drive', 10)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (124, '3514 Sunshine', 10)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (125, '1144 Paradise Ct.', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (126, '1921 Ranch Road', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (130, '5256 Chickpea Ct.', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (131, '5979 El Pueblo', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (135, '7772 Golden Meadow', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (136, '8585 Los Gatos Ct.', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (137, '9314 Icicle Way', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (138, '9530 Vine Lane', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (139, '989 Crown Ct', 6)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (140, '25 95th Ave NE', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (143, '463 H Stagecoach Rd.', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (146, '5458 Gladstone Drive', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (149, '6697 Ridge Park Drive', 20)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (152, '350 Pastel Drive', 22)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (153, '34 Waterloo Road', 21)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (154, '8291 Crossbow Way', 28)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (155, '5678 Lakeview Blvd.', 24)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (156, '1356 Grove Way', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (157, '158 Walnut Ave', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (158, '1792 Belmont Rd.', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (159, '2275 Valley Blvd.', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (160, '3747 W. Landing Avenue', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (161, '3841 Silver Oaks Place', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (162, '4566 La Jolla', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (163, '4734 Sycamore Court', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (164, '5030 Blue Ridge Dr.', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (165, '5734 Ashford Court', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (166, '7726 Driftwood Drive', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (167, '8310 Ridge Circle', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (168, '896 Southdale', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (169, '9652 Los Angeles', 12)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (170, '2487 Riverside Drive', 19)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (171, '1397 Paradise Ct.', 14)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (172, '1400 Gate Drive', 14)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (178, '9100 Sheppard Avenue North', 29)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (179, '636 Vine Hill Way', 25)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (184, '2427 Notre Dame Ave.', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (185, '2482 Buckingham Dr.', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (186, '3066 Wallace Dr.', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (187, '3397 Rancho View Drive', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (192, '7297 RisingView', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (193, '8000 Crane Court', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (198, '9863 Ridge Place', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (199, '9882 Clay Rde', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (200, '9906 Oak Grove Road', 1)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (201, '1378 String Dr', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (202, '1803 Olive Hill', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (203, '2176 Brown Street', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (209, '5670 Bel Air Dr.', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (210, '5980 Icicle Circle', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (216, '9495 Limewood Place', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (217, '9533 Working Drive', 13)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (218, '177 11th Ave', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (223, '4444 Pepper Way', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (224, '4525 Benedict Ct.', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (225, '5263 Etcheverry Dr', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (226, '535 Greendell Pl', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (227, '6871 Thornwood Dr.', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (228, '6951 Harmony Way', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (229, '7086 O St.', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (230, '7145 Matchstick Drive', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (231, '7820 Bird Drive', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (233, '8316 La Salle St.', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (234, '9104 Mt. Sequoia Ct.', 16)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (235, '1234 Seaside Way', 9)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (236, '5725 Glaze Drive', 9)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (241, '136 Balboa Court', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (242, '137 Mazatlan', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (256, '5375 Clearland Circle', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (257, '5376 Catanzaro Way', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (268, '7403 N. Broadway', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (269, '7439 Laguna Niguel', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (270, '7594 Alexander Pl.', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (271, '7616 Honey Court', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (279, '9537 Ridgewood Drive', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (280, '9964 North Ridge Drive', 4)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (285, '3280 Pheasant Circle', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (288, '5724 Victory Lane', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (289, '591 Merriewood Drive', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (290, '7230 Vine Maple Street', 11)

INSERT INTO Addresses (AddressID, AddressText, TownID)
VALUES (291, '163 Nishava Str, ent A, apt. 1', 32)

SET IDENTITY_INSERT Addresses OFF

GO

CREATE TABLE Departments(
  DepartmentID int IDENTITY NOT NULL,
  Name VARCHAR(50) NOT NULL,
  ManagerID int NOT NULL,
  CONSTRAINT PK_Departments PRIMARY KEY CLUSTERED (DepartmentID ASC)
)
GO

SET IDENTITY_INSERT Departments ON

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (1, 'Engineering', 12)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (2, 'Design', 4)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (3, 'Sales', 273)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (4, 'Marketing', 46)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (5, 'Purchasing', 6)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (6, 'Research and Development', 42)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (7, 'Production', 148)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (8, 'Production Control', 21)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (9, 'Human Resources', 30)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (10, 'Finance', 3)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (11, 'Information Services', 42)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (12, 'Document Control', 90)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (13, 'Quality Assurance', 274)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (14, 'Facilities and Maintenance', 218)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (15, 'Shipping and Receiving', 85)

INSERT INTO Departments (DepartmentID, Name, ManagerID)
VALUES (16, 'Executive', 109)

SET IDENTITY_INSERT Departments OFF

GO

CREATE TABLE Employees(
  EmployeeID int IDENTITY NOT NULL,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  MiddleName VARCHAR(50) NULL,
  JobTitle VARCHAR(50) NOT NULL,
  DepartmentID int NOT NULL,
  ManagerID int NULL,
  HireDate smalldatetime NOT NULL,
  Salary money NOT NULL,
  AddressID int NULL,
  CONSTRAINT PK_Employees PRIMARY KEY CLUSTERED (EmployeeID ASC)
)
GO

SET IDENTITY_INSERT Employees ON

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (1, 'Alastar', 'Guilder', 'R', 'Production Technician', 7, 16, '19980731', 12500, 166)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (2, 'Anabel', 'Brown', 'F', 'Marketing Assistant', 4, 6, '19990226', 13500, 102)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (3, 'Ana', 'Gorrdo', NULL, 'Engineering Manager', 1, 12, '19991212', 43300, 193)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (4, 'Matt', 'Walters', NULL, 'Senior Tool Designer', 2, 3, '20000105', 29800, 155)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (5, 'Tara', 'Doje', 'B', 'Tool Designer', 2, 263, '20000111', 25000, 40)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (6, 'David', 'Bradley', 'M', 'Marketing Manager', 5, 109, '20000120', 37500, 199)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (7, 'Hannah', 'Dobney', 'M', 'Production Supervisor', 7, 21, '20000126', 25000, 275)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (8, 'Ruth', 'Ellerbrock', 'Ann', 'Production Technician', 7, 185, '20000206', 13500, 108)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (9, 'Gail', 'Erickson', 'A', 'Design Engineer', 1, 3, '20000206', 32700, 22)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (10, 'Barry', 'Johnson', 'K', 'Production Technician', 7, 185, '20000207', 13500, 285)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (11, 'Jossef', 'Goldberg', 'H', 'Design Engineer', 1, 3, '20000224', 32700, 214)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (12, 'Tamara', 'Duffy', 'Lee', 'Vice President of Engineering', 1, 109, '20000303', 63500, 209)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (13, 'Sidney', 'Higa', 'M', 'Production Technician', 7, 185, '20000305', 13500, 73)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (14, 'Taylor', 'Maxwell', 'R', 'Production Supervisor', 7, 21, '20000311', 25000, 82)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (15, 'Jeffrey', 'Ford', 'L', 'Production Technician', 7, 185, '20000323', 13500, 156)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (16, 'Jo', 'Brown', 'A', 'Production Supervisor', 7, 21, '20000330', 25000, 70)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (17, 'Doris', 'Hartwig', 'M', 'Production Technician', 7, 185, '20000411', 13500, 144)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (18, 'John', 'Campbell', 'T', 'Production Supervisor', 7, 21, '20000418', 25000, 245)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (19, 'Diane', 'Glimp', 'R', 'Production Technician', 7, 185, '20000429', 13500, 184)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (20, 'Steven', 'Selikoff', 'T', 'Production Technician', 7, 173, '20010102', 9500, 104)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (21, 'Peter', 'Krebs', 'J', 'Production Control Manager', 8, 148, '20010102', 24500, 11)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (22, 'Stuart', 'Munson', 'V', 'Production Technician', 7, 197, '20010103', 10000, 36)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (23, 'Greg', 'Alderson', 'F', 'Production Technician', 7, 197, '20010103', 10000, 18)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (24, 'David', 'Johnson', '', 'Production Technician', 7, 184, '20010103', 9500, 142)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (25, 'Zheng', 'Mu', 'W', 'Production Supervisor', 7, 21, '20010104', 25000, 278)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (26, 'Ivo', 'Salmre', 'William', 'Production Technician', 7, 108, '20010105', 14000, 165)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (27, 'Paul', 'Komosinski', 'B', 'Production Technician', 7, 87, '20010105', 15000, 32)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (28, 'Ashvini', 'Sharma', 'R', 'Network Administrator', 11, 150, '20010105', 32500, 133)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (29, 'Kendall', 'Keil', 'C', 'Production Technician', 7, 14, '20010106', 11000, 257)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (30, 'Paula', 'Barreto de Mattos', 'M', 'Human Resources Manager', 9, 140, '20010107', 27100, 2)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (31, 'Alejandro', 'McGuel', 'E', 'Production Technician', 7, 210, '20010107', 15000, 274)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (32, 'Garrett', 'Young', 'R', 'Production Technician', 7, 184, '20010108', 9500, 283)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (33, 'Jian Shuo', 'Wang', NULL, 'Production Technician', 7, 135, '20010108', 9500, 160)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (34, 'Susan', 'Eaton', 'W', 'Stocker', 15, 85, '20010108', 9000, 204)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (35, 'Vamsi', 'Kuppa', '', 'Shipping and Receiving Clerk', 15, 85, '20010108', 9500, 51)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (36, 'Alice', 'Ciccu', 'O', 'Production Technician', 7, 38, '20010108', 11000, 284)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (37, 'Simon', 'Rapier', 'D', 'Production Technician', 7, 7, '20010109', 12500, 64)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (38, 'Jinghao', 'Liu', 'K', 'Production Supervisor', 7, 21, '20010109', 25000, 55)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (39, 'Michael', 'Hines', 'T', 'Production Technician', 7, 182, '20010110', 14000, 168)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (40, 'Yvonne', 'McKay', 'S', 'Production Technician', 7, 159, '20010110', 10000, 107)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (41, 'Peng', 'Wu', 'J', 'Quality Assurance Supervisor', 13, 200, '20010110', 21600, 39)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (42, 'Jean', 'Trenary', 'E', 'Information Services Manager', 11, 109, '20010112', 50500, 194)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (43, 'Russell', 'Hunter', NULL, 'Production Technician', 7, 74, '20010113', 11000, 258)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (44, 'A. Scott', 'Wright', NULL, 'Master Scheduler', 8, 148, '20010113', 23600, 172)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (45, 'Fred', 'Northup', 'T', 'Production Technician', 7, 210, '20010113', 15000, 282)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (46, 'Sariya', 'Harnpadoungsataya', 'E', 'Marketing Specialist', 4, 6, '20010113', 14400, 106)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (47, 'Willis', 'Johnson', 'T', 'Recruiter', 9, 30, '20010114', 18300, 99)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (48, 'Jun', 'Cao', 'T', 'Production Technician', 7, 38, '20010115', 11000, 197)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (49, 'Christian', 'Kleinerman', 'E', 'Maintenance Supervisor', 14, 218, '20010115', 20400, 118)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (50, 'Susan', 'Metters', 'A', 'Production Technician', 7, 184, '20010115', 9500, 224)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (51, 'Reuben', 'D''sa', 'H', 'Production Supervisor', 7, 21, '20010116', 25000, 249)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (52, 'Kirk', 'Koenigsbauer', 'J', 'Production Technician', 7, 123, '20010116', 10000, 250)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (53, 'David', 'Ortiz', 'J', 'Production Technician', 7, 18, '20010116', 12500, 267)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (54, 'Tengiz', 'Kharatishvili', '', 'Control Specialist', 12, 90, '20010117', 16800, 129)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (55, 'Hanying', 'Feng', 'P', 'Production Technician', 7, 143, '20010117', 14000, 182)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (56, 'Kevin', 'Liu', 'H', 'Production Technician', 7, 210, '20010118', 15000, 259)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (57, 'Annik', 'Stahl', 'O', 'Production Technician', 7, 16, '20010118', 12500, 262)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (58, 'Suroor', 'Fatima', 'R', 'Production Technician', 7, 38, '20010118', 11000, 86)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (59, 'Deborah', 'Poe', 'E', 'Accounts Receivable Specialist', 10, 139, '20010119', 19000, 103)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (60, 'Jim', 'Scardelis', 'H', 'Production Technician', 7, 74, '20010120', 11000, 88)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (61, 'Carole', 'Poland', 'M', 'Production Technician', 7, 173, '20010120', 9500, 72)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (62, 'George', 'Li', 'Z', 'Production Technician', 7, 184, '20010122', 9500, 58)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (63, 'Gary', 'Yukish', 'W', 'Production Technician', 7, 87, '20010123', 15000, 80)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (64, 'Cristian', 'Petculescu', 'K', 'Production Supervisor', 7, 21, '20010123', 25000, 276)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (65, 'Raymond', 'Sam', 'K', 'Production Technician', 7, 143, '20010124', 14000, 75)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (66, 'Janaina', 'Bueno', 'Barreiro Gambaro', 'Application Specialist', 11, 42, '20010124', 27400, 131)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (67, 'Bob', 'Hohman', '', 'Production Technician', 7, 14, '20010125', 11000, 44)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (68, 'Shammi', 'Mohamed', 'G', 'Production Technician', 7, 210, '20010125', 15000, 4)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (69, 'Linda', 'Moschell', 'K', 'Production Technician', 7, 38, '20010126', 11000, 5)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (70, 'Mindy', 'Martin', 'C', 'Benefits Specialist', 9, 30, '20010126', 16600, 171)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (71, 'Wendy', 'Kahn', 'Beth', 'Finance Manager', 10, 140, '20010126', 43300, 232)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (72, 'Kim', 'Ralls', 'T', 'Stocker', 15, 85, '20010127', 9000, 42)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (73, 'Sandra', 'Reategui Alayo', NULL, 'Production Technician', 7, 135, '20010127', 9500, 255)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (74, 'Kok-Ho', 'Loh', 'T', 'Production Supervisor', 7, 21, '20010128', 25000, 10)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (75, 'Douglas', 'Hite', 'B', 'Production Technician', 7, 159, '20010128', 10000, 57)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (76, 'James', 'Kramer', 'D', 'Production Technician', 7, 7, '20010128', 12500, 162)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (77, 'Sean', 'Alexander', 'P', 'Quality Assurance Technician', 13, 41, '20010129', 10600, 210)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (78, 'Nitin', 'Mirchandani', 'S', 'Production Technician', 7, 182, '20010129', 14000, 231)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (79, 'Diane', 'Margheim', 'L', 'Research and Development Engineer', 6, 158, '20010130', 40900, 111)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (80, 'Rebecca', 'Laszlo', 'A', 'Production Technician', 7, 16, '20010130', 12500, 6)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (81, 'Rajesh', 'Patel', 'M', 'Production Technician', 7, 210, '20010201', 15000, 81)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (82, 'Vidur', 'Luthra', 'X', 'Recruiter', 9, 30, '20010202', 18300, 176)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (83, 'John', 'Evans', 'P', 'Production Technician', 7, 38, '20010202', 11000, 253)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (84, 'Nancy', 'Anderson', 'A', 'Production Technician', 7, 7, '20010203', 12500, 227)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (85, 'Pilar', 'Ackerman', 'G', 'Shipping and Receiving Supervisor', 15, 21, '20010203', 19200, 269)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (86, 'David', 'Yalovsky', 'A', 'Production Technician', 7, 184, '20010203', 9500, 241)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (87, 'David', 'Hamilton', 'P', 'Production Supervisor', 7, 21, '20010204', 25000, 150)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (88, 'Laura', 'Steele', 'C', 'Production Technician', 7, 123, '20010204', 10000, 62)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (89, 'Margie', 'Shoop', 'W', 'Production Technician', 7, 16, '20010205', 12500, 92)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (90, 'Zainal', 'Arifin', 'T', 'Document Control Manager', 12, 200, '20010205', 17800, 128)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (91, 'Lorraine', 'Nay', 'O', 'Production Technician', 7, 210, '20010205', 15000, 94)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (92, 'Fadi', 'Fakhouri', 'K', 'Production Technician', 7, 143, '20010205', 14000, 281)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (93, 'Ryan', 'Cornelsen', 'L', 'Production Technician', 7, 51, '20010206', 15000, 228)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (94, 'Candy', 'Spoon', 'L', 'Accounts Receivable Specialist', 10, 139, '20010207', 19000, 122)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (95, 'Nuan', 'Yu', NULL, 'Production Technician', 7, 74, '20010207', 11000, 12)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (96, 'William', 'Vong', 'S', 'Scheduling Assistant', 8, 44, '20010208', 16000, 35)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (97, 'Bjorn', 'Rettig', 'M', 'Production Technician', 7, 173, '20010208', 9500, 268)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (98, 'Scott', 'Gode', 'R', 'Production Technician', 7, 197, '20010209', 10000, 256)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (99, 'Michael', 'Rothkugel', 'L', 'Production Technician', 7, 87, '20010211', 15000, 93)

INSERT INTO Employees (EmployeeID, FirstName, LastName, MiddleName, JobTitle, DepartmentID, ManagerID, HireDate, Salary, AddressID)
VALUES (100, 'Scarlett', 'Sacksteder', 'M', 'Production Technician', 7, 143, '20010212', 14000, 239)

SET IDENTITY_INSERT Employees OFF

GO

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Addresses FOREIGN KEY(AddressID)
REFERENCES Addresses(AddressID)
GO

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Departments FOREIGN KEY(DepartmentID)
REFERENCES Departments(DepartmentID)
GO

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Employees FOREIGN KEY(ManagerID)
REFERENCES Employees(EmployeeID)
GO

ALTER TABLE Departments
ADD CONSTRAINT FK_Departments_Employees FOREIGN KEY(ManagerID)
REFERENCES Employees(EmployeeID)
GO

ALTER TABLE Addresses
ADD CONSTRAINT FK_Addresses_Towns FOREIGN KEY(TownID)
REFERENCES Towns(TownID)
GO
