-- Examples of 'WHERE' clause

CREATE TABLE EmployeeRecords (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50),
    Salary DECIMAL(10, 2)
);


INSERT INTO EmployeeRecords (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
(1, 'John', 'Miller', 'HR', 60000),
(2, 'Jane', 'Smith', 'Finance', 75000),
(3, 'John', 'Miller', 'HR', 60000),
(4, 'Emily', 'Davis', 'IT', 85000),
(5, 'Michael', 'Brown', 'Finance', 75000),
(6, 'Jane', 'Smith', 'Finance', 75000);


select * from [dbo].[EmployeeRecords]
where EmployeeID = 2  -- This querty filters required data from DataBase

select EmployeeID , FirstName from [dbo].[EmployeeRecords]
where EmployeeID = 3

select * from dbo.EmployeeRecords where Salary>=75000.00

select * from dbo.EmployeeRecords where Salary<75000.00
 
select distinct * from dbo.EmployeeRecords where Salary<75000.00

select FirstName , LastName, Department, Salary
from dbo.EmployeeRecords where Salary <75000.00

select distinct FirstName , LastName, Department, Salary
from dbo.EmployeeRecords where Salary <75000.00
