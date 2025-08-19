/*

** Author Name: Nikhil Anirudh Naishadham, Sumi Mohan
** Course: IFT 530
** SQL Server Version: Microsoft SQL Server 2012 (SP1)
** Assignment: Final Project - Team 47
** Date of Submission: April 24, 204      

*/

-- Create table for 'Employee Qualifications': 
CREATE TABLE Emp_Qualifications
(
	Education_ID INTEGER NOT NULL PRIMARY KEY,
	Employee_ID INTEGER NOT NULL,
	Highest_degree VARCHAR(25) NOT NULL,
	Major_study VARCHAR(25) NOT NULL,
	Univ_Name VARCHAR(50) NOT NULL,
	Grad_Year INTEGER NOT NULL,
	FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

--Insert values into above table:
INSERT INTO Emp_Qualifications(Education_ID, Employee_ID, Highest_degree, Major_study, Univ_Name, Grad_Year)
VALUES
	(1, 20241, 'Bachelor of Science', 'Computer Science', 'University B', 2016),
	(2, 20242, 'Bachelor of Arts', 'English Literature', 'University A', 2018),
	(3, 20243, 'Master of Science', 'Business Administration', 'University C', 2014),
	(4, 20244, 'Bachelor of Science', 'Electrical Engineering', 'University D', 2016),
	(5, 20245, 'Bachelor of Arts', 'Marketing', 'University F', 2017),
	(6, 20246, 'Mastwe of Science', 'Data Science', 'University H', 2020),
	(7, 20247, 'Bachelor of Science', 'Computer Applications', 'University G', 2022),
	(8, 20248, 'Bachelor of Arts', 'History', 'University K', 2019),
	(9, 20249, 'Doctor of Science', 'Medicine', 'University J', 2016),
	(10, 20240, 'Bachelor of Science', 'Chemistry', 'University I', 2015);

SELECT * FROM Emp_Qualifications