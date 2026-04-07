

Create database employee_details

use employee_details

CREATE TABLE Employees (
	EmployeeID VARCHAR(50),
	FirstName VARCHAR(50),
	LastName Varchar(50),
	Department VARCHAR(50),
	Salary DECIMAL(10, 2),
	HireDate DATE
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(1, 'John', 'Doe', 'R', 50000.00, '2020-01-15'),
(2, 'Jane', 'Smith', 'Finanace', 60000.00, '2019-03-23'),
(3, 'Alice', 'Johnson', 'IT', 75000.00, '2021-07-10'),
(4, 'Bob', 'Brown', 'Marketing', 55000.00, '2018-09-30'),
(5, 'Charlie', 'Davis', 'IT', 70000.00, '2022-02-20');

select * from[dbo].[Employees]
order by Salary

select * from [dbo].[Employees]
order by Salary desc

select * from [dbo].[Employees]
order by FirstName asc, Salary desc

select * from [dbo].[Employees]
order by Department asc, Salary desc
