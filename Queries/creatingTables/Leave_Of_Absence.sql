/*

** Author Name: Nikhil Anirudh Naishadham, Sumi Mohan
** Course: IFT 530
** SQL Server Version: Microsoft SQL Server 2012 (SP1)
** Assignment: Final Project - Team 47
** Date of Submission: April 24, 204      

*/

-- Create table for 'Leave Of Absence': 
CREATE TABLE Leave_Of_Absence
(
	Leave_ID INTEGER NOT NULL PRIMARY KEY,
	Employee_ID INTEGER NOT NULL,
	Department_ID INTEGER NOT NULL,
	TypeOfLeave VARCHAR(25) NOT NULL,
	Leave_StartDate DATE NOT NULL,
	Leave_EndDate DATE NOT NULL,
	TotalHours_Leave DECIMAL NOT NULL,
	FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
);

INSERT INTO Leave_Of_Absence (Leave_ID, Employee_ID, Department_ID, TypeOfLeave, Leave_StartDate, Leave_EndDate, TotalHours_Leave)
VALUES
	(1, 20241, 201, 'Vacation', '2024-05-10', '2024-05-15', 40.0),
	(2, 20242, 202, 'Sick Leave', '2024-05-01', '2024-05-03', 24.0),
	(3, 20243, 203, 'Maternity Leave', '2024-05-20', '2024-08-20', 480.0),
	(4, 20244, 201, 'Personal Leave', '2024-06-01', '2024-06-05', 40.0),
	(5, 20245, 203, 'Vacation', '2024-07-10', '2024-07-20', 80.0),
	(6, 20246, 204, 'Sick Leave', '2024-05-05', '2024-05-07', 24.0),
	(7, 20247, 202, 'Personal Leave', '2024-06-15', '2024-06-20', 40.0),
	(8, 20248, 202, 'Vacation', '2024-05-25', '2024-05-29', 40.0),
	(9, 20249, 201, 'Wedding Leave', '2024-07-01', '2024-07-03', 24.0),
	(10, 20240, 204, 'Vacation', '2024-08-05', '2024-08-15', 80.0);

SELECT * FROM Leave_Of_Absence