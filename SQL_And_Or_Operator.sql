

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

-- AND operator for queries that need two conditions to be necessarily satisfied
select * from EmployeeRecords
where LastName = 'Miller' and EmployeeID = 3

select * from EmployeeRecords
where LastName = 'Miller' and EmployeeID = '3' 

-- OR operator for queries that only require a single condition to be satisfied from all conditions
select * from EmployeeRecords
where Department = 'HR' or Department = 'Finance'

select * from EmployeeRecords
where (Department = 'HR' or Department = 'Finance') and Salary = 60000
