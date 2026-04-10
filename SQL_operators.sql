-- NOT , BETWEEN & IN Operator

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

-- NOT Operator are used for the contradiction of the conditions
select * from dbo.EmployeeRecords

select * from dbo.EmployeeRecords
where not FirstName = 'John' and not Salary = 60000

select * from dbo.EmployeeRecords
where not LastName = 'Miller' or  not Department = 'HR'

-- Between Operators show records of a given range where both start and end records are inclusive
select * from dbo.EmployeeRecords
where Salary between 75000 and 85000

select * from dbo.EmployeeRecords
where Salary >= 75000 and Salary <=85000

-- Contradiction of Between statement that is not between
select * from dbo.EmployeeRecords
where Salary not between 75000 and 85000

-- IN Operator
select * from dbo.EmployeeRecords
where Department = 'HR' or Department = 'IT'

select * from dbo.EmployeeRecords
where Department in ('HR','IT') -- SELECTS RECORDS WHERE DEPARTMENT IS EITHER 'HR' OR 'IT'

select * from dbo.EmployeeRecords
where Department not in ('HR','IT') -- Contradiction of IN Operator

select * from dbo.EmployeeRecords
where not Department in ('HR','IT')
