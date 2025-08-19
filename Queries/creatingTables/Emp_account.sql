-- Create table for 'Employee Account Details': 
CREATE TABLE Emp_Acc_Details
(
	Employee_ID INTEGER NOT NULL,
	Account_ID INTEGER NOT NULL PRIMARY KEY,
	Bank_name VARCHAR(10) NOT NULL,
	Account_Num INTEGER NOT NULL,
	Account_Type VARCHAR(10) NOT NULL,
	FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

-- Inserting values into the table:
INSERT INTO Emp_Acc_Details(Employee_ID, Account_ID, Bank_name, Account_Num, Account_Type)
VALUES
	(20241, '00001', 'Bank A', 123456789, 'Savings'),
	(20242, '00002', 'Bank C', 753159852, 'Savings'),
	(20243, '00003', 'Bank D', 963147852, 'Checking'),
	(20244, '00004', 'Bank E', 159852753, 'Savings'),
	(20245, '00005', 'Bank B', 745696541, 'Checking'),
	(20246, '00006', 'Bank A', 852963123, 'Checking'),
	(20247, '00007', 'Bank E', 753982145, 'Checking'),
	(20248, '00008', 'Bank D', 985214763, 'Savings'),
	(20249, '00009', 'Bank B', 863412579, 'Checking'),
	(20240, '00010', 'Bank B', 258369147, 'Savings');

SELECT * FROM Emp_Acc_Details
