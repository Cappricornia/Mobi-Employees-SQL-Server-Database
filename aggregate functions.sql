-- Aggregate Functions (Transact-SQL)

USE Mobi
   
-- SUM Salary 

SELECT [DepartmentID], SUM(Salary) AS [TotalSalary]
   FROM [Mobi].[dbo].[Employees]
   GROUP BY DepartmentID
   ORDER BY DepartmentID

--MAX salary in each department 

SELECT DepartmentID, MAX(Salary) AS [MaxSalary]
  FROM [Mobi].[dbo].[Employees]
  GROUP BY DepartmentID
  ORDER BY DepartmentID

-- MIN salary in each department 

SELECT MIN(Salary) AS [MinSalary]
   FROM [Mobi].[dbo].[Employees]
   GROUP BY DepartmentID


-- AVG salary in each department 

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

USE Mobi

--  2nd Highest Salary

SELECT DISTINCT [DepartmentID], 
                 Salary AS [Second Highest Salary]
FROM (
		SELECT [DepartmentID],
		       Salary,
			   DENSE_RANK() OVER(PARTITION BY [DepartmentID] ORDER BY Salary DESC) AS SalRank
		FROM Employees 
		) AS SalRankSubQ
WHERE SalRank = 2

-- Employees Count Salaries
SELECT Count(Salary) AS [CountSalary]
FROM Employees
WHERE ManagerID = 16


-- Calculate employees' maximum salaries
SELECT DepartmentID, MAX(Salary) AS [MaxSalary]
FROM Employees
GROUP BY DepartmentID
HAVING MAX(Salary)NOT BETWEEN 20000 AND 40000


-- Calculate employees' average salaries

SELECT FirstName, LastName, DepartmentID, ManagerID, Salary
INTO SelectedSalaries
FROM Employees
WHERE Salary > 20000

DELETE  FROM SelectedSalaries
WHERE ManagerID = 16

UPDATE SelectedSalaries
SET Salary += 400
WHERE DepartmentID = 3

SELECT DepartmentID, 
       AVG(Salary) AS AverageSalary
FROM SelectedSalaries
GROUP BY DepartmentID

 
-- Find all employees with a salary higher than the average salary of their respective departments.

SELECT TOP (3) 
       e.FirstName, 
       e.LastName,
	   e.DepartmentID
FROM Employees AS e
WHERE Salary > 
			   (
				SELECT  AVG(Salary) AS DepAveSal
				 FROM Employees AS es
				WHERE es.[DepartmentID] = e.[DepartmentID]
			 GROUP BY es.[DepartmentID]
			  ) 
ORDER BY e.[DepartmentID]

-- Sum departments total salaries

SELECT DepartmentID, SUM(Salary) AS [Total Salary]
FROM Employees
GROUP BY DepartmentID
ORDER BY DepartmentID

-- Calculate employees' minimum salaries

SELECT DepartmentID, MIN (Salary) AS [MinimumSalary]
FROM Employees
WHERE DepartmentID IN (2, 5) AND HireDate > '1999-01-01'
GROUP BY DepartmentID


