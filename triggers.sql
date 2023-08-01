-- MOBI DB

-- Create Table Salary Logs and add a trigger to it each time the salary is updated.

CREATE TABLE SalaryLogs(
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	EmployeeID INT NOT NULL,
        OldSalary MONEY,
	NewSalary MONEY,
	UpdateDate DATETIME2
)


CREATE TRIGGER tr_SalaryLogs
ON Employees FOR UPDATE
AS
INSERT INTO SalaryLogs(EmployeeID, OldSalary, NewSalary, UpdateDate)
SELECT d.EmployeeID, d.Salary, i.Salary, GETDATE() 
	FROM inserted AS i
	JOIN deleted AS d 
    ON i.EmployeeID = d.EmployeeID AND i.Salary <> d.Salary


-- Update 

UPDATE Employees SET Salary += 1500 
	WHERE EmployeeId IN (1, 4, 6, 9);

-- Select
SELECT * FROM SalaryLogs
ORDER BY EmployeeID;

-- Create table Deleted Employees

CREATE TABLE Deleted_Employees (
        Id INT PRIMARY KEY IDENTITY NOT NULL,
		EmployeeId INT NOT NULL,
		FirstName VARCHAR(50) NOT NULL,
		LastName VARCHAR(50) NOT NULL, 
		MiddleName VARCHAR(50) NULL,
		JobTitle VARCHAR(50) NOT NULL, 
		DepartmentId INT NOT NULL,
		Salary MONEY NOT NULL
	)

-- Create a trigger DeletedEmployees on the table Employees

CREATE TRIGGER tr_DeletedEmployees 
ON Employees
FOR DELETE
AS
BEGIN
    -- Insert the deleted records into Deleted_Employees
    INSERT INTO Deleted_Employees (EmployeeId, FirstName, LastName, MiddleName, JobTitle, DepartmentId, Salary)
    SELECT d.EmployeeId, d.FirstName, d.LastName, d.MiddleName, d.JobTitle, d.DepartmentId, d.Salary
    FROM deleted d;
END;

-- Add column IsDeleted Bool
ALTER TABLE Employees
ADD [IsDeleted] BIT 


-- Create a procedure to delete 
CREATE PROC usp_DeleteEmployees (@departmentId INT) 
AS
BEGIN
    --  Insert the deleted employees' details into the Deleted_Employees table using the trigger
    -- This will happen automatically when the employees are deleted in the next step)
    --  Update Employees to set IsDeleted = 1 for employees in the specified department
    UPDATE Employees
    SET [IsDeleted] = 1
    WHERE DepartmentID = @departmentId;

    -- Perform other actions related to employee' deletion 
    DELETE FROM Employees
    WHERE DepartmentID = @departmentId;
END


EXEC usp_DeleteEmployees 7

SELECT *
FROM Deleted_Employees



