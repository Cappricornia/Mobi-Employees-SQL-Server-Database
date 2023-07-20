-- Aggregate Functions (Transact-SQL)

-- SUM Salary 

SELECT [DepartmentID], SUM(Salary) AS [TotalSalary]
   FROM [Mobi].[dbo].[Employees]
   GROUP BY DepartmentID
   ORDER BY DepartmentID

--MAX salary in each Department 

SELECT DepartmentID, MAX(Salary) AS [MaxSalary]
  FROM [Mobi].[dbo].[Employees]
  GROUP BY DepartmentID
  ORDER BY DepartmentID

-- MIN salary in each Department 

SELECT MIN(Salary) AS [MinSalary]
   FROM [Mobi].[dbo].[Employees]
   GROUP BY DepartmentID


-- AVG salary in each Department 

SELECT DepartmentID, AVG(Salary) AS [AvgSalary]
   FROM [Mobi].[dbo].[Employees]
   GROUP BY DepartmentID
   ORDER BY DepartmentID

-- STRING_AGG

SELECT DepartmentID, SUM(Salary) AS [Salary], STRING_AGG(CONCAT(FirstName, ' ', LastName), ', ')
  FROM [Mobi].[dbo].[Employees]
GROUP BY DepartmentID

-- HAVING Clouse 

SELECT DepartmentID, COUNT(EmployeeID) AS [EmployeeID]
  FROM [Mobi].[dbo].[Employees]
  GROUP BY DepartmentID
  HAVING COUNT(EmployeeID) >= 5

-- Filter departments having total salary more than or equal to 60,000

SELECT DepartmentID, SUM(Salary) AS TotalSalary
    FROM [Mobi].[dbo].[Employees]
GROUP BY DepartmentID
  HAVING SUM(Salary) >= 60000


