-- Problem 1
--USE Database Mobi

-- Problem 2
SELECT * FROM [Departments];

-- Problem 3
SELECT [Name] FROM [Departments];

-- Problmem 4
SELECT [FirstName], [LastName], [Salary] FROM [Employees];

-- Problem 5
SELECT [FirstName],[MiddleName], [LastName] FROM [Employees];

-- Problem 6
SELECT CONCAT([FirstName], '.', [LastName], '@mobi.com') AS "Full Email Address"
FROM Employees;


-- Problem 7
SELECT DISTINCT [Salary] FROM [Employees];

-- Problem 8
SELECT * FROM [Employees] WHERE [JobTitle] = 'Production Technician';


-- Problem 9
SELECT [FirstName], [LastName], [JobTitle] FROM [Employees]
WHERE [Salary] BETWEEN 20000 AND 30000;

-- Problem 10
SELECT CONCAT([FirstName], ' ', COALESCE([MiddleName] + ' ', ''), [LastName]) AS [Full Name]
FROM [Employees]
WHERE [Salary] IN (25000, 32700, 13500, 327000);

-- Check the number of rows returned
SELECT COUNT(*) AS [Total Rows]
FROM [Employees]
WHERE [Salary] IN (25000, 32700, 13500, 327000);

-- Problem 11
SELECT [FirstName], [LastName] FROM [Employees]
WHERE [ManagerID] IS NULL;

-- Problem 12
SELECT [FirstName], [LastName], [Salary] FROM [Employees]
WHERE [Salary] > 55000
ORDER BY [Salary] DESC;

-- Problem 13
SELECT TOP 5 [FirstName], [LastName], [Salary] FROM [Employees]
ORDER BY [Salary] DESC;

-- Problem 14
SELECT [FirstName], [LastName] FROM [Employees]
WHERE [DepartmentID] <> 3;


-- Problem 15
SELECT * FROM [Employees]
ORDER BY [Salary] DESC, [FirstName] ASC, [LastName] DESC, [MiddleName] ASC;

-- Problem 16
CREATE VIEW V_EmployeesSalaries AS
SELECT [FirstName], [LastName], [Salary]
FROM [Employees];

SELECT *
FROM V_EmployeesSalaries;

-- Problem 17
CREATE VIEW V_EmployeeNameJobTitle AS
SELECT 
    CONCAT(
        [FirstName],
        ' ',
        CASE WHEN [MiddleName] IS NULL THEN '' ELSE [MiddleName] END,
        ' ',
        [LastName]
    ) AS [Full Name],
    [JobTitle]
FROM [Employees];


SELECT * 
FROM V_EmployeeNameJobTitle

-- Problem 18
SELECT DISTINCT [JobTitle]
FROM [Employees];

-- Problem 19
SELECT TOP 7 [FirstName], [LastName], [HireDate] 
FROM [Employees]
ORDER BY [HireDate] DESC

-- Problem 20
UPDATE [Employees]
SET [Salary] = [Salary] * 1.10
WHERE [DepartmentID] IN (4, 12, 42, 46);

SELECT Salary
FROM Employees;

UPDATE [Employees]
SET [Salary] = [Salary] * 0.90 -- Decrease salaries by 10% (90% of the original value)
WHERE [DepartmentID] IN (4, 12, 42, 46);



-- Problem 21
INSERT INTO [Employees] ([FirstName], [LastName], [MiddleName], [JobTitle], [DepartmentID], [ManagerID], [HireDate], [Salary], [AddressID])
VALUES ('John', 'Greham', 'L', 'Engineer', 1, 12, '2023-06-14 09:00:00', 85000, 150);

SELECT * FROM [Employees]
WHERE[FirstName] = 'John';

--Problem 22
DELETE FROM [Employees]
WHERE [FirstName] = 'John' AND [LastName] = 'Evans';




