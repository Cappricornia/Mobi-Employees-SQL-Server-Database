-- MOBI DB

-- Create Table Salary Logs and add trigger to it each time the salary is updated.

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
SELECT d.EmployeeID, d.Salary, i.Salary, GETDATE() FROM inserted AS i
JOIN deleted AS d 
ON i.EmployeeID = d.EmployeeID AND i.Salary <> d.Salary


-- Update 

UPDATE Employees SET Salary += 1500 WHERE EmployeeId IN (1, 4, 6, 9);

-- Select
SELECT * FROM SalaryLogs
ORDER BY EmployeeID;