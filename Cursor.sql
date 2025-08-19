/*

** Author Name: Nikhil Anirudh Naishadham, Sumi Mohan
** Course: IFT 530
** SQL Server Version: Microsoft SQL Server 2012 (SP1)
** Assignment: Final Project - Team 47
** Date of Submission: April 24, 204      

*/

-- CREATE A CURSOR --

-- Initialize the variables:
DECLARE @ProjectID INTEGER,
		@EmpID INTEGER,
		@DeptID INTEGER,
		@ProjectName VARCHAR(50),
		@StartDate DATE,
		@EndDate DATE;

-- Declare the cursor:
DECLARE ProjAssign_Cursor CURSOR FOR
SELECT Project_ID, Employee_ID, Department_ID, Project_Name, StartDate, EndDate
FROM Projects_Assigned;

-- Open Cursor created:
OPEN ProjAssign_Cursor;

-- Fetch first row:
FETCH NEXT FROM ProjAssign_Cursor INTO @ProjectID, @EmpID, @DeptID, @ProjectName, @StartDate, @EndDate;

WHILE @@FETCH_STATUS = 0
BEGIN
PRINT 'Project Id: ' +CAST(@ProjectID AS VARCHAR(10)) + ', Employee ID: ' + CAST(@EmpID AS VARCHAR(10)) + ', Department ID: ' + CAST(@DeptID AS VARCHAR(10)) + ', Project Name: '+ @ProjectName +', Start Date: ' + CONVERT(VARCHAR(10), @StartDate, 101) + ', End Date: ' + ISNULL(CONVERT(VARCHAR(10), @EndDate, 101), 'N/A');

-- Fetch next row:
FETCH NEXT FROM ProjAssign_Cursor INTO @ProjectID, @EmpID, @DeptID, @ProjectName, @StartDate, @EndDate;
END

-- Close and deallocate:
CLOSE ProjAssign_Cursor;
DEALLOCATE ProjAssign_Cursor;

-- Drop the cursor:
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjAssign_Cursor]'))
BEGIN
CLOSE ProjAssign_Cursor;
DEALLOCATE ProjAssign_Cursor;
END
