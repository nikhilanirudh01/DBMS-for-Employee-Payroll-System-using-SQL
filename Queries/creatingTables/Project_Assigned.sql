/*

** Author Name: Nikhil Anirudh Naishadham, Sumi Mohan
** Course: IFT 530
** SQL Server Version: Microsoft SQL Server 2012 (SP1)
** Assignment: Final Project - Team 47
** Date of Submission: April 24, 204      

*/

-- Create table for 'Projects Assigned': 
CREATE TABLE Projects_Assigned
(
	Project_ID INTEGER NOT NULL PRIMARY KEY,
	Employee_ID INTEGER NOT NULL,
	Department_ID INTEGER NOT NULL,
	Project_Name VARCHAR(50) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE,
	FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
);

-- Inserting values:
INSERT INTO Projects_Assigned (Project_ID, Employee_ID, Department_ID, Project_Name, StartDate, EndDate)
VALUES
	(1, 20241, 201, 'HR System Upgrade', '2024-04-01', '2024-06-30'),
	(2, 20242, 202, 'Budget Planning', '2024-03-15', '2024-05-20'),
	(3, 20243, 203, 'Finanical Aduit Prep', '2024-04-10', '2024-06-15'), 
	(4, 20244, 201, 'Sales Planning Analysis', '2024-03-21', '2024-07-25'), 
	(5, 20245, 203, 'Cloud Performance Analysis', '2024-04-05', '2024-07-10'), 
	(6, 20246, 201, 'Market Research Analysis', '2024-02-01', '2024-04-30'), 
	(7, 20247, 202, 'Operating System Upgradation', '2024-03-15', '2024-05-15'), 
	(8, 20248, 204, 'UI/UX Update Planning', '2024-01-31', '2024-08-30'), 
	(9, 20249, 204, 'New Product Launch Campaign', '2024-04-10', '2024-06-20'), 
	(10, 20240, 204, 'Sales Training Program', '2024-04-01', '2024-08-30');  

SELECT * FROM Projects_Assigned