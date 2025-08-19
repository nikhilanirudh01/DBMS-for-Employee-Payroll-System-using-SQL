/*

** Author Name: Nikhil Anirudh Naishadham, Sumi Mohan
** Course: IFT 530
** SQL Server Version: Microsoft SQL Server 2012 (SP1)
** Assignment: Final Project - Team 47
** Date of Submission: April 24, 204      

*/

-- Create table for 'Work Location': 
CREATE TABLE Work_Loc
(
	Location_ID INTEGER NOT NULL PRIMARY KEY,
	Employee_ID INTEGER NOT NULL,
	Block VARCHAR(25) NOT NULL,
	Department_Name VARCHAR(25) NOT NULL,
	Loc_Address VARCHAR(50) NOT NULL,
	Num_emps INTEGER NOT NULL,
	FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
);

--Inserting values into the table:
INSERT INTO Work_Loc(Location_ID, Employee_ID, Block, Department_Name, Loc_Address, Num_emps)
VALUES
	(1, 20241, 'A', 'Human Resources', '123 Main St', 15),
	(2, 20242, 'D', 'Sales', '113 Main St', 20),
	(3, 20243, 'C', 'Finance', '120 Main St', 28),
	(4, 20244, 'B', 'Customer Services', '850 Birch St', 25),
	(5, 20245, 'A', 'Human Resources', '123 Main St', 15),
	(6, 20246, 'E', 'Information Technology', '1202 Univ Dr', 14),
	(7, 20247, 'F', 'Operations', '965 Southern Ave', 30),
	(8, 20248, 'C', 'Finance', '927 Oak St', 28),
	(9, 20249, 'D', 'Sales', '502 Spruce St', 20),
	(10, 20240, 'G', 'QA', '110 Priest dr', 22);

SELECT * FROM Work_Loc