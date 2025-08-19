-- Query 1: Extracting Employee Details from a Specific Department:
SELECT Employee.Employee_ID, Employee.First_name, Employee.Last_Name, Employee.DOB, Employee.Address, Employee.Contact_Num, Employee.Hire_Date, Employee.Emp_Status, Emp_Department.Department_Name
FROM Employee
INNER JOIN Emp_Department ON Employee.Employee_ID = Emp_Department.Employee_ID
WHERE Emp_Department.Department_Name = 'Human Resources';

GO
-- View 1:
CREATE VIEW Emp_HR_View AS
SELECT Employee.Employee_ID, Employee.First_name, Employee.Last_Name, Employee.DOB, Employee.Address, Employee.Contact_Num, Employee.Hire_Date, Employee.Emp_Status, Emp_Department.Department_Name
FROM Employee
INNER JOIN Emp_Department ON Employee.Employee_ID = Emp_Department.Employee_ID
WHERE Emp_Department.Department_Name = 'Human Resources';
GO 

SELECT * FROM Emp_HR_View
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Query 2: Attendance details of employees on a specific date:
GO
SELECT m.Employee_ID, n.First_Name, n.Last_Name, m.Date, m.Time_In, m.Time_Out, m.Hours_Worked
FROM Fact_Emp_Attendance m
INNER JOIN Employee n ON m.Employee_ID = n.Employee_ID
WHERE m.Date = '2024-04-21';

GO
-- View 2:
CREATE VIEW Emp_Atten_View AS
SELECT m.Employee_ID, n.First_Name, n.Last_Name, m.Date, m.Time_In, m.Time_Out, m.Hours_Worked
FROM Fact_Emp_Attendance m
INNER JOIN Employee n ON m.Employee_ID = n.Employee_ID
WHERE m.Date = '2024-04-21';
GO 

SELECT * FROM Emp_Atten_View
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Query 3: Salary Information of Employees:
SELECT f.Employee_ID, g.First_Name, g.Last_Name, f.Pay_Date, f.Current_Pay, f.Deductions, f.Pay_Freq
FROM Fact_Emp_Salary f
INNER JOIN Employee g ON f.Employee_ID = g.Employee_ID
WHERE f.Pay_Date >= '2024-02-01' AND f.Pay_Date < '2024-03-01';
GO

-- View 3:
CREATE VIEW Emp_Sal_View AS
SELECT f.Employee_ID, g.First_Name, g.Last_Name, f.Pay_Date, f.Current_Pay, f.Deductions, f.Pay_Freq
FROM Fact_Emp_Salary f
INNER JOIN Employee g ON f.Employee_ID = g.Employee_ID
WHERE f.Pay_Date >= '2024-02-01' AND f.Pay_Date < '2024-03-01';
GO

SELECT * FROM Emp_Sal_View
