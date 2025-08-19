/*

** Author Name: Nikhil Anirudh Naishadham, Sumi Mohan
** Course: IFT 530
** SQL Server Version: Microsoft SQL Server 2012 (SP1)
** Assignment: Final Project - Team 47
** Date of Submission: April 24, 204      

*/

-- Create table for 'Employee': 
CREATE TABLE Employee
(
	Employee_ID INTEGER NOT NULL PRIMARY KEY,
	First_Name VARCHAR(25) NOT NULL,
	Last_Name VARCHAR(25) NOT NULL,
	DOB DATE NOT NULL,
	Emp_Gender VARCHAR(10) NOT NULL,
	Address VARCHAR(80) NOT NULL,
	Contact_Num BIGINT NOT NULL,
	Hire_Date DATE NOT NULL,
	Department_ID INTEGER NOT NULL,
	Emp_Status VARCHAR(10) NOT NULL,
);

-- Inserting values into this table:
INSERT INTO Employee(Employee_ID, First_Name, Last_Name, DOB, Emp_Gender,
Address, Contact_Num, Hire_Date, Department_ID, Emp_Status)
VALUES
    (20241, 'Ram', 'Kapoor', '1990-5-15', 'Male', '1655 Main St, Tempe, AZ', 1234567899, '2020-01-01', 201, 'Full TIme'),
    (20242, 'Harry', 'Potter', '1988-09-21', 'Male', '1255 E Dr, Chandler, AZ', 2345678990, '2019-05-10', 202, 'Full Time'),
    (20243, 'Jennifer', 'Lawrence', '1994-05-08', 'Female', '789 Oak St, Phoenix, AZ', 7894561238, '2021-03-15', 202, 'Full Time'),
    (20244, 'Emily', 'Williams', '1992-11-12', 'Female', '985 Pine St, Tempe, AZ', 8527419633, '2018-07-20', 201, 'Intern'),
    (20245, 'Santosh', 'Kumar', '1987-07-25', 'Male', '202 Cedar St, Tempe, AZ', 9638524561, '2019-09-30', 204, 'Full Time'),
    (20246, 'Micheal', 'Jackson', '1993-12-18', 'Male', '303 Maple St, Mesa, AZ', 7418529638, '2022-02-05', 201, 'Intern'),
    (20247, 'Taylor', 'Generes', '1989-04-03', 'Female', '404 Brich St, Mesa, AZ', 6549879632, '2023-01-10', 203, 'Intern'),
    (20248, 'Amanda', 'Chang', '1998-08-28', 'Female', '505 Walnut St, Gilbert, AZ', 3219874568, '2016-11-15', 202, 'Full Time'),
    (20249, 'Aarya', 'Sharma', '1991-06-07', 'Male', '503 Spruce St, Gilbert, AZ', 9871238524, '2019-08-22', 203, 'Full Time'),
    (20240, 'Amanda', 'Chang', '1998-08-28', 'Female', '505 Walnut St, Gilbert, AZ', 3219874568, '2016-11-15', 204, 'Full Time');

SELECT * FROM Employee