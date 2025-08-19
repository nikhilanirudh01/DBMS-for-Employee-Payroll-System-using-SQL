/*

** Author Name: Nikhil Anirudh Naishadham, Sumi Mohan
** Course: IFT 530
** SQL Server Version: Microsoft SQL Server 2012 (SP1)
** Assignment: Final Project - Team 47
** Date of Submission: April 24, 204      

*/

-- Create table for 'Employee Attendance': 
CREATE TABLE Emp_Attendance
(
	Attendance_ID INTEGER NOT NULL PRIMARY KEY,
	Employee_ID INTEGER NOT NULL,
	Date DATE NOT NULL,
	Time_In TIME NOT NULL,
	Time_Out TIME NOT NULL,
	Hours_worked VARCHAR(50) NOT NULL,
	Work_Mode VARCHAR(25) NOT NULL,
	FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
);

-- Insert values into this table:
INSERT INTO Emp_Attendance (Attendance_ID, Employee_ID, Date, Time_In, Time_Out, Hours_worked, Work_Mode)
VALUES
	(1, 20241, '2024-04-20', '08:00', '16:30', '08 hours 50 minutes', 'WFH'),
	(2, 20242, '2024-04-20', '08:11', '17:00', '08 hours 49 minutes', 'On-Site'),
	(3, 20243, '2024-04-20', '09:25', '18:30', '09 hours 05 minutes', 'WFH'),
	(4, 20244, '2024-04-20', '09:40', '17:15', '07 hours 35 minutes', 'WFH' ),
	(5, 20245, '2024-04-20', '08:20', '17:00', '08 hours 40 minutes', 'On-Site'),	
	(6, 20246, '2024-04-20', '10:00', '16:00', '06 hours 00 minutes', 'On-Site'),
	(7, 20247, '2024-04-20', '09:00', '18:00', '10 hours 00 minutes', 'On-Site'),
	(8, 20248, '2024-04-20', '10:30', '18:30', '08 hours 00 minutes', 'WFH'),
	(9, 20249, '2024-04-20', '10:15', '17:00', '06 hours 45 minutes', 'WFH'),
	(10, 20240, '2024-04-20', '09:30', '18:00', '08 hours 30 minutes', 'On-Site');

SELECT * FROM Emp_Attendance