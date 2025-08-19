/*

** Author Name: Nikhil Anirudh Naishadham, Sumi Mohan
** Course: IFT 530
** SQL Server Version: Microsoft SQL Server 2012 (SP1)
** Assignment: Final Project - Team 47
** Date of Submission: April 24, 204      

*/

-- Create table for 'Employee Department': 
CREATE TABLE Emp_Department 
(
	Employee_ID INTEGER NOT NULL,
	Department_ID INTEGER NOT NULL,
	Department_Name VARCHAR(25) NOT NULL,
	Manager_Name VARCHAR(50) NOT NULL,
	Location VARCHAR(30) NOT NULL,
	FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

-- Insert into the emp_department table:
INSERT INTO Emp_Department(Department_ID, Employee_ID, Department_Name, Manager_Name, Location)
VALUES
	(201, 20241, 'Human Resources', 'John Lewis', 'New York'),
	(202, 20242, 'Sales', 'Joe Smith', 'Los Angeles'),
	(203, 20243, 'Sales', 'Rocky', 'Los Angeles'),
	(201, 20244, 'Human Resources', 'John Lewis', 'New York'),
	(203, 20245, 'Marketing', 'Aarya Sharma', 'Chicago'),
	(201, 20246, 'Human Resources', 'John Lewis', 'New York'),
	(203, 20247, 'Marketing', 'Aarya Sharma', 'Chicago'),
	(202, 20248, 'Sales', 'Joe Smith', 'Los Angeles'),
	(204, 20249, 'Finance', 'Dinesh Sthapit', 'Houston'),
	(204, 20240, 'Finance', 'Dinesh Sthapit', 'Houston');

SELECT * FROM Emp_Department