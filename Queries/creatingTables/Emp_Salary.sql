/*

** Author Name: Nikhil Anirudh Naishadham, Sumi Mohan
** Course: IFT 530
** SQL Server Version: Microsoft SQL Server 2012 (SP1)
** Assignment: Final Project - Team 47
** Date of Submission: April 24, 204      

*/

-- Create table for 'Employee Salary': 
CREATE TABLE Emp_Salary
(
	Salary_ID INTEGER NOT NULL PRIMARY KEY,
	Employee_ID INTEGER NOT NULL,
	Current_Pay DECIMAL(8,2),
	Pay_Freq VARCHAR(10) NOT NULL,
	Deductions DECIMAL (5,2),
	Pay_Date DATE NOT NULL,
	FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
);

-- Inserting values:
INSERT INTO Emp_Salary(Salary_ID, Employee_ID, Current_Pay, Pay_Freq, Deductions, Pay_Date)
VALUES
	(1, 20241, 4800.00, 'Monthly', 100.00, '2024-04-30'),
	(2, 20242, 4500.00, 'Monthly', 120.00, '2024-04-30'),
	(3, 20243, 5000.00, 'Monthly', 150.00, '2024-04-30'),
	(4, 20244, 3200.00, 'Monthly', 50.00, '2024-04-30'),
	(5, 20245, 4200.00, 'Monthly', 100.00, '2024-04-30'),
	(6, 20246, 3000.00, 'Monthly', 50.00, '2024-04-30'),
	(7, 20247, 3500.00, 'Monthly', 50.00, '2024-04-30'),
	(8, 20248, 5100.00, 'Monthly', 180.00, '2024-04-30'),
	(9, 20249, 4600.00, 'Monthly', 120.00, '2024-04-30'),
	(10, 20240, 4800.00, 'Monthly', 190.00, '2024-04-30');

SELECT * FROM Emp_Salary