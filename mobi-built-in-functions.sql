-- Built-in functions SQL Server


-- Problem 1 - Using Wildcards
SELECT
      [FirstName]
      ,[LastName]
  FROM [Employees]
  WHERE [FirstName] LIKE 'Ta%'

  -- Problem 2 -- Using Wildcards
  SELECT
      [FirstName]
      ,[LastName]
  FROM [Employees]
  WHERE [LastName] LIKE '%erg%'

    -- Problem 3 - using DEPART
  SELECT
      [FirstName]
  FROM [Employees]
  WHERE [DepartmentID] = 6 OR [DepartmentID] = 13 AND
  DATEPART(YEAR, [HireDate]) BETWEEN 2000 AND 2005

    -- Problem 4
  SELECT
      [FirstName]
      ,[LastName]
  FROM [Employees]
  WHERE NOT ([JobTitle] LIKE '%engineer%')

    -- Problem 5 - using LEN

  SELECT 
       [Name]
  FROM [Towns]
  WHERE LEN([Name]) IN  [4, 6]
  ORDER BY [Name]


  -- Problem 6
  SELECT 
    [TownID]
    ,[Name]
  FROM [Towns]
  WHERE NOT [Name] LIKE '[RBD]%'
  ORDER BY [Name] 

  -- Problem 7 - create a view

  CREATE VIEW [V_EmployeesHiredAfter2002] AS
  SELECT
      [FirstName]
      ,[LastName]
  FROM [Employees]
  WHERE DATEPART(YEAR, [HireDate]) > 2002;

  SELECT * FROM V_EmployeesHiredAfter2002

  -- Problem 8
  SELECT
	  [FirstName]
      ,[LastName]
  FROM[Employees]
  WHERE LEN([LastName]) = 4;

  -- Problem 9 - Rank
  SELECT
	   [EmployeeID]
	  ,[FirstName]
          ,[LastName]
	  ,[Salary]
	  ,DENSE_RANK() OVER(PARTITION BY [Salary] ORDER BY [EmployeeID]) AS [Rank]
  FROM[Employees]
  WHERE [Salary] BETWEEN 20000 AND 40000
  ORDER BY [Salary] DESC

  -- Problem 10 - DENSE RANK and CTE

  WITH CTE AS (
  SELECT
	   *
	  ,DENSE_RANK() OVER
	  (PARTITION BY Salary ORDER BY EmployeeID) AS Rank
  FROM[Employees]
  )
  
  SELECT
	   [EmployeeID]
	  ,[FirstName]
          ,[LastName]
	  ,[Salary]
	  ,[Rank]
  FROM cte
  WHERE  Rank = 2 AND [Salary] BETWEEN 20000 AND 40000 
  ORDER BY [Salary] DESC

-- Problem 11

-- Create the Person table
CREATE TABLE [Person] (
  [Id] INT IDENTITY(1,1) PRIMARY KEY,
  [FirstName] VARCHAR(100),
  [LastName] VARCHAR(100),
  [Birthdate] DATE
);

-- Problem 12
-- Insert records into the Person table
INSERT INTO [Person] ([FirstName], [LastName], [Birthdate])
VALUES
    ('John', 'Doe', '1990-01-01'),
    ('Jane', 'Smith', '1985-05-15'),
    ('Michael', 'Johnson', '1992-09-30'),
    ('Emily', 'Brown', '1998-07-22'),
    ('William', 'Davis', '1991-04-10'),
    ('Olivia', 'Miller', '1987-12-05'),
    ('James', 'Anderson', '1994-08-18'),
    ('Sophia', 'Martinez', '1989-03-25'),
    ('Alexander', 'Garcia', '1996-11-28'),
    ('Mia', 'Wilson', '1993-10-12'),
    ('Benjamin', 'Taylor', '1999-06-06'),
    ('Ava', 'Clark', '1992-02-14'),
    ('Daniel', 'Thomas', '1997-09-08'),
    ('Chloe', 'Rodriguez', '1995-07-03'),
    ('Joseph', 'Lee', '1988-11-20'),
    ('Ella', 'Lewis', '1991-03-02'),
    ('Matthew', 'Hernandez', '1986-09-17'),
    ('Grace', 'Walker', '1994-05-24'),
    ('Samuel', 'Lopez', '1998-01-30'),
    ('Lily', 'Hall', '1993-08-13'),
    ('David', 'Young', '1989-04-07'),
    ('Avery', 'King', '1996-12-23'),
    ('Charlotte', 'Baker', '1990-07-09'),
    ('Daniel', 'Harris', '1997-02-26'),
    ('Abigail', 'Parker', '1992-10-11'),
    ('Jackson', 'Wright', '1995-06-25'),
    ('Sofia', 'Gonzalez', '1999-03-13'),
    ('Andrew', 'Turner', '1994-09-29'),
    ('Harper', 'Carter', '1991-05-05'),
    ('Sebastian', 'Murphy', '1988-12-21');

-- Problem 13 -DATEDIFF
SELECT 
       [Id]
      ,[FirstName]
      ,[LastName]
      ,[Birthdate]
      ,DATEDIFF(YEAR, [Birthdate] , GETDATE()) AS [Age in Years]
      ,DATEDIFF(MONTH, [Birthdate] , GETDATE()) AS [Age in Months]
      ,DATEDIFF(DAY, [Birthdate] , GETDATE()) AS [Age in Day]
      ,DATEDIFF(MINUTE, [Birthdate] , GETDATE()) AS [Age in Minutes]
      ,DATEDIFF(SECOND, [Birthdate] , GETDATE()) AS [Age in Seconds]
  FROM [Person]
