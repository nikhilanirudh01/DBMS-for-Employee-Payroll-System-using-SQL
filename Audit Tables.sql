/*

** Author Name: Nikhil Anirudh Naishadham, Sumi Mohan
** Course: IFT 530
** SQL Server Version: Microsoft SQL Server 2012 (SP1)
** Assignment: Final Project - Team 47
** Date of Submission: April 24, 204      

*/

-- Creating triggers for the operations:
--INSERT TRIGGER:
CREATE TRIGGER EmpDept_insert
ON Emp_Department
AFTER INSERT
AS
BEGIN
	INSERT INTO Emp_Dept_Audit (Department_ID, Employee_ID, Department_Name, Manager_Name, Location, Operation_perf)
	SELECT Department_ID, Employee_ID, Department_Name, Manager_Name, Location, 'INSERT'
	FROM inserted;
END;
GO

-- UPDATE TRIGGER:
CREATE TRIGGER EmpDept_update
ON Emp_Department
AFTER UPDATE
AS
BEGIN
	INSERT INTO Emp_Dept_Audit (Department_ID, Employee_ID, Department_Name, Manager_Name, Location, Operation_perf)
	SELECT Department_ID, Employee_ID, Department_Name, Manager_Name, Location, 'UPDATE'
	FROM inserted;
END;
GO

-- DELETE TRIGGER:
CREATE TRIGGER EmpDept_delete
ON Emp_Department
AFTER DELETE
AS
BEGIN
	INSERT INTO Emp_Dept_Audit (Department_ID, Employee_ID, Department_Name, Manager_Name, Location, Operation_perf)
	SELECT Department_ID, Employee_ID, Department_Name, Manager_Name, Location, 'DELETE'
	FROM deleted;
END;
GO


--Create an Audit Table:
CREATE TABLE Emp_Dept_Audit
(
	Audit_ID INTEGER IDENTITY (1, 1) PRIMARY KEY,
	Department_ID INTEGER,
	Employee_ID INTEGER,
	Department_Name VARCHAR(25),
	Manager_Name VARCHAR(50),
	Location VARCHAR(50),
	Operation_perf VARCHAR(10) NOT NULL,
	Date_Changed DATETIME DEFAULT GETDATE()
);
SELECT * FROM Emp_Dept_Audit

GO

---- Inserting values into the Emp_Department Table: ----
INSERT INTO Emp_Department (Department_ID, Employee_ID, Department_Name, Manager_Name, Location)
VALUES
	(202, 20240, 'Information Technology', 'Ashish Gulati', 'Tempe');

---- Updating in the Emp_Department Table: ----
UPDATE Emp_Department
SET Department_ID = 204,
	Employee_ID = 20241, 
	Department_Name = 'Data Analysis', 
	Manager_Name = 'Asmaa Elbadrawy', 
	Location = 'Tempe'
WHERE Employee_ID = 20241;
GO

---- Deleting values into the Emp_Department Table: ----
DELETE FROM Emp_Department
WHERE Employee_ID = 20241;
GO

SELECT * FROM Emp_Dept_Audit
