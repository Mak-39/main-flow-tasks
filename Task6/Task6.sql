CREATE TABLE Employees (EmployeeID INT PRIMARY KEY, EmployeeName VARCHAR(50),Department VARCHAR(30),Salary INT, JoiningDate DATE
);
INSERT INTO Employees (EmployeeID, EmployeeName, Department, Salary, JoiningDate)
VALUES (1, 'Amit', 'HR', 30000, '2023-08-02'),
(2, 'Priya', 'IT', 45000, '2024-05-06'),
(3, 'Ravi', 'Sales', 25000, '2024-06-18'),
(4, 'Sneha', 'IT', 40000, '2023-09-20'),
(5, 'Rahul', 'HR', 20000, '2022-05-13'),
(6, 'Meena', 'Finance', 38000, '2021-04-12'),
(7, 'Varun', 'IT', 32000, '2022-04-26'),
(8, 'Divya', 'Sales', 27000, '2024-12-25'),
(9, 'Kiran', 'Finance', 22000, '2021-06-12'),
(10, 'Neha', 'HR', 36000, '2024-10-18');
ALTER TABLE Employees ADD COLUMN LastUpdated DATE;
ALTER TABLE Employees ADD COLUMN Status VARCHAR(15);
UPDATE Employees SET LastUpdated = '2024-01-01' WHERE EmployeeID IN (2, 5);
UPDATE Employees SET LastUpdated = CURRENT_DATE WHERE EmployeeID NOT IN (2, 5);
SET SQL_SAFE_UPDATES = 0;
UPDATE Employees SET Status = 'Active';
SELECT * FROM Employees;
UPDATE Employees SET Status = 'Inactive' WHERE Salary < 25000;
SELECT * FROM Employees;
DELETE FROM Employees WHERE Status = 'Inactive';
SELECT * FROM Employees;
SELECT * FROM Employees WHERE LastUpdated < '2025-01-01';
DELETE FROM Employees WHERE LastUpdated < '2025-01-01';
SELECT * FROM Employees;
SET SQL_SAFE_UPDATES = 1;

