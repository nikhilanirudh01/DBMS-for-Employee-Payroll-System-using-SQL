/*

** Author Name: Nikhil Anirudh Naishadham, Sumi Mohan
** Course: IFT 530
** SQL Server Version: Microsoft SQL Server 2012 (SP1)
** Assignment: Final Project - Team 47
** Date of Submission: April 24, 204      

*/

-- Fact Table 2:
CREATE TABLE Fact_Emp_Salary
(
	Salary_ID INTEGER NOT NULL PRIMARY KEY,
	Employee_ID INTEGER NOT NULL,
	Pay_Date DATE NOT NULL,
	Current_Pay DECIMAL(8,2),
	Pay_Freq VARCHAR(10) NOT NULL,
	Deductions DECIMAL (5,2),
	FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
);

INSERT INTO Fact_Emp_Salary (Salary_ID, Employee_ID, Pay_Date, Current_Pay, Pay_Freq, Deductions)
VALUES
    (1, 20241, '2024-04-01', 4000.00, 'Monthly', 200.00),
    (2, 20242, '2024-04-01', 4500.00, 'Monthly', 250.00),
    (3, 20243, '2024-04-01', 4200.00, 'Monthly', 300.00),
    (4, 20244, '2024-04-01', 3800.00, 'Monthly', 150.00),
    (5, 20245, '2024-04-01', 4300.00, 'Monthly', 200.00),
    (6, 20246, '2024-04-01', 4100.00, 'Monthly', 180.00),
    (7, 20247, '2024-04-01', 4700.00, 'Monthly', 220.00),
    (8, 20248, '2024-04-01', 4600.00, 'Monthly', 240.00),
    (9, 20249, '2024-04-01', 5000.00, 'Monthly', 280.00),
    (10, 20240, '2024-04-01', 4800.00, 'Monthly', 250.00),
	(11, 20241, '2024-03-01', 4000.00, 'Monthly', 200.00),
    (12, 20242, '2024-03-01', 4500.00, 'Monthly', 250.00),
    (13, 20243, '2024-03-01', 4200.00, 'Monthly', 300.00),
    (14, 20244, '2024-03-01', 3800.00, 'Monthly', 150.00),
    (15, 20245, '2024-03-01', 4300.00, 'Monthly', 200.00),
    (16, 20246, '2024-03-01', 4100.00, 'Monthly', 180.00),
    (17, 20247, '2024-03-01', 4700.00, 'Monthly', 220.00),
    (18, 20248, '2024-03-01', 4600.00, 'Monthly', 240.00),
    (19, 20249, '2024-03-01', 5000.00, 'Monthly', 280.00),
    (20, 20240, '2024-03-01', 4800.00, 'Monthly', 250.00),
    (21, 20241, '2024-02-01', 4000.00, 'Monthly', 200.00),
    (22, 20242, '2024-02-01', 4500.00, 'Monthly', 250.00),
    (23, 20243, '2024-02-01', 4200.00, 'Monthly', 300.00),
    (24, 20244, '2024-02-01', 3800.00, 'Monthly', 150.00),
    (25, 20245, '2024-02-01', 4300.00, 'Monthly', 200.00),
    (26, 20246, '2024-02-01', 4100.00, 'Monthly', 180.00),
    (27, 20247, '2024-02-01', 4700.00, 'Monthly', 220.00),
    (28, 20248, '2024-02-01', 4600.00, 'Monthly', 240.00),
    (29, 20249, '2024-02-01', 5000.00, 'Monthly', 280.00),
    (30, 20240, '2024-02-01', 4800.00, 'Monthly', 250.00);
    
SELECT * FROM Fact_Emp_Salary