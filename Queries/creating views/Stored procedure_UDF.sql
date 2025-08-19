/*

** Author Name: Nikhil Anirudh Naishadham, Sumi Mohan
** Course: IFT 530
** SQL Server Version: Microsoft SQL Server 2012 (SP1)
** Assignment: Final Project - Team 47
** Date of Submission: April 24, 204      

*/

-- DROP Existing UDF:
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('dbo.EmpSal.Calc'))
DROP FUNCTION dbo.Emp_AnnSal_Calc;
GO

-- Create the UDF:
CREATE FUNCTION Emp_AnnSal_Calc
(
    @Employee_ID INTEGER
)
RETURNS DECIMAL(10,2)
AS 
BEGIN
    DECLARE @Annual_pay DECIMAL(10,2);

    -- Calculate annual pay for the employee
    SELECT @Annual_pay = Current_Pay * 12
    FROM Emp_Salary
    WHERE Employee_ID = @Employee_ID;

    RETURN @Annual_pay;
END;
GO
----------------------------------------------------------------------------------------------------

-- DROP Existing Stored Procedure:
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('dbo.EmpSal.Calc'))
DROP PROCEDURE dbo.AnnualPay_Calc;
GO

-- Create the stored procedure:
CREATE PROCEDURE AnnualPay_Calc
    @Employee_ID INTEGER
AS
BEGIN
    DECLARE @AnnualPay DECIMAL(10, 2);

    -- Call the UDF to calculate annual  pay
    SET @AnnualPay = dbo.Emp_AnnSal_Calc(@Employee_ID);

    -- Print the annual  pay for the employee
    PRINT 'Annual pay for employee ' + CAST(@Employee_ID AS VARCHAR) + ' is $' + CAST(@AnnualPay AS VARCHAR);
END;
GO

-- Test the code:
EXEC AnnualPay_Calc @Employee_ID = 20241;
