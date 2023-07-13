-- JOIN and SUBQUERIES IN SQL SERVER

-- Problem 1
SELECT TOP (5)
       e.[EmployeeID]
      ,e.[JobTitle]
      ,a.[AddressID]
	  ,a.[AddressText]
 FROM [Employees] AS e
 JOIN [Addresses] AS a ON e.AddressID = a.AddressID
 ORDER BY a.[AddressID]

 -- Problem 2
 SELECT TOP (5) 
	  e.[EmployeeID]
      ,e.[FirstName]
      ,e.[Salary]
      , d.[Name] AS DepartmentName
  FROM [Employees] AS e
  JOIN [Departments] AS d ON e.DepartmentID = d.DepartmentID
  WHERE e.[Salary] > 15000
  ORDER BY d.DepartmentID

  -- Problem 3

  SELECT 
		  e.[EmployeeID]
		 ,e.[FirstName] 
		 ,e.[ManagerID]
         ,m.[FirstName] AS ManagerName
  FROM [Employees] AS e
  JOIN [Employees] AS m ON e.[ManagerID] = m.[EmployeeID]
  WHERE e.[ManagerID] IN (3, 7)
  ORDER BY e.[EmployeeID]

-- Problem 4

SELECT 
	* 
FROM Employees AS e
JOIN Departments AS d ON e.DepartmentID = d.DepartmentID

-- Problem 5
SELECT 
	* 
FROM Employees AS e
JOIN Employees AS m ON e.ManagerID = m.EmployeeID

-- Problem 6

SELECT 
	* 
FROM Employees AS e
   LEFT JOIN Departments AS d ON e.DepartmentID = d.DepartmentID

-- Problem 7
SELECT 
	* 
FROM Employees AS e
LEFT JOIN Employees AS m ON e.ManagerID = m.EmployeeID

-- Problem 8

SELECT TOP (50)
	 e.FirstName
	, e.LastName
	, t.[Name] AS Town
	, a.AddressText
FROM Employees AS e
JOIN Addresses AS a ON e.AddressID = a.AddressID
JOIN Towns AS t ON a.TownID = t.TownID
ORDER BY e.FirstName, e.LastName


-- Problem 9

SELECT 
    e.EmployeeID
	, e.FirstName
	, e.LastName
	, d.[Name] As DepartmentName
FROM Employees AS e
	JOIN Departments AS d 
		ON e.DepartmentID = d.DepartmentID 
WHERE d.[Name] = 'Finance'
ORDER BY EmployeeID

-- Problem 10

SELECT
	 e.FirstName
	, e.LastName
	, e.HireDate
	, d.[Name] As DepartmentName
FROM Employees AS e
	JOIN Departments AS d
		ON e.DepartmentID = d.DepartmentID
WHERE e.HireDate > '2000-01-01' 
   AND d.[Name] IN ('Production', 'Finance')
ORDER BY e.HireDate

-- Problem 11

SELECT TOP (20)
	e.EmployeeID
	, CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName
	, CONCAT(m.FirstName, ' ', m.LastName) AS ManagerName
	, d.[Name] AS DepartmentName
FROM Employees AS e
JOIN Employees AS m ON e.ManagerID = m.EmployeeID
JOIN Departments AS d ON e.DepartmentID = d.DepartmentID
ORDER BY e.EmployeeID

-- Problem 12

SELECT * FROM Employees AS e
 WHERE e.DepartmentID IN 
  (
   SELECT d.DepartmentID
       FROM Departments AS d
    WHERE d.[Name] = 'Design'
  )

-- Problem 13
SELECT * FROM
	(SELECT * FROM Employees
		WHERE Jobtitle LIKE 'Production%') AS e
WHERE e.HireDate BETWEEN '2000-12-31' AND '2002-01-01';

-- Problem 14

SELECT 
	MIN(s.AvgSalary) 
FROM 
   (SELECT AVG(Salary) AS AvgSalary FROM Employees GROUP BY DepartmentID) AS s;

-- Problem 15
WITH AvgSalCTE (AvgSalary)
AS
(SELECT AVG(Salary) AS AvgSalary FROM Employees GROUP BY DepartmentID)

SELECT MIN(AvgSalary) FROM AvgSalCTE;

-- Problem 15

SELECT 
	e.EmployeeID,
	e.Salary,
	d.[Name] AS [Department Name]
FROM Employees AS e
   LEFT OUTER JOIN Departments AS d 
   ON e.DepartmentID = d.DepartmentID
WHERE d.[Name]= 'Marketing' AND e.Salary < 30000

