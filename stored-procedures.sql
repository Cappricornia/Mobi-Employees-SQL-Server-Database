-- Stored Procedures
USE Mobi

GO 

CREATE OR ALTER PROC usp_EmployeesSalaryGreaterThanNumber @minSalary DECIMAL(18, 4)

AS

BEGIN
	
	SELECT FirstName
	      ,LastName
	  FROM Employees 
	WHERE Salary >= @minSalary
END

GO

EXEC usp_EmployeesSalaryGreaterThanNumber 34666

GO 

CREATE OR ALTER PROC usp_GetEmployeesSalaryAbove65000 
AS

BEGIN
	
	SELECT FirstName
	      ,LastName
	  FROM Employees 
	WHERE Salary > 65000
END

EXEC usp_GetSalaryAbove65000 


GO 

CREATE OR ALTER PROC usp_EmployeesFromTown @town VARCHAR(50)

AS

BEGIN
	
	SELECT e.FirstName
	      ,e.LastName
	  FROM Employees AS e
	  LEFT JOIN Addresses AS a 
			ON e.AddressID = a.AddressID
	  LEFT JOIN Towns As t 
		   ON t.TownID = a.TownID
	  WHERE t.[Name] = @town
END

GO

EXEC  usp_EmployeesFromTown 'London'

GO

CREATE FUNCTION ufn_GetNewSalaryLevel (@salary DECIMAL(18,4))
RETURNS VARCHAR(7)
AS
BEGIN
     DECLARE @salaryLevel VARCHAR(7) 

	 IF (@salary < 30000)
	 BEGIN
		SET @salaryLevel = 'Low'
	END
	ELSE IF (@salary BETWEEN 30000 AND 40000)
	BEGIN
		SET @salaryLevel = 'Average'
	END
	ELSE
	BEGIN
		SET @salaryLevel = 'High'
	END

	RETURN @salaryLevel
END

GO

SELECT Salary,
      dbo.ufn_GetNewSalaryLevel (Salary) AS [Salary Level]
	FROM Employees

SELECT dbo.ufn_GetNewSalaryLevel (12500)

GO

 CREATE OR ALTER PROC usp_EmployeesBySalaryLevel @salaryLevel VARCHAR(7)
 AS
 BEGIN
	SELECT FirstName,
	       LastName,
		   Salary
	FROM Employees
	WHERE dbo.ufn_GetNewSalaryLevel(Salary) = @salaryLevel

 END

 GO

 EXEC usp_EmployeesBySalaryLevel 'Low'
 EXEC usp_EmployeesBySalaryLevel 'Average'
 EXEC usp_EmployeesBySalaryLevel 'High'


GO


ALTER TABLE Employees
ADD [IsDeleted] BIT 

CREATE PROC usp_DeleteEmployeesFromDepartment (@departmentId INT) 
AS
BEGIN
	UPDATE Employees
	SET [IsDeleted] = 0

	UPDATE Employees
	SET [IsDeleted] = 1
	WHERE DepartmentID = @departmentId
END


EXEC usp_DeleteEmployeesFromDepartmentInReal  5




