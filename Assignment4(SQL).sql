use aaft;
CREATE TABLE Departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50));

INSERT INTO Departments VALUES (1, 'HR');
INSERT INTO Departments VALUES (2, 'Sales');
INSERT INTO Departments VALUES (3, 'IT');
INSERT INTO Departments VALUES (4, 'Finance');
INSERT INTO Departments VALUES (5, 'Marketing');

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
age INT,
salary INT,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES Departments(dept_id));

INSERT INTO Employees VALUES (101, 'John', 30, 50000, 2);
INSERT INTO Employees VALUES (102, 'Alice', 28, 60000, 3);
INSERT INTO Employees VALUES (103, 'Bob', 35, 70000, 2);
INSERT INTO Employees VALUES (104, 'Emma', 40, 80000, 4);
INSERT INTO Employees VALUES (105, 'David', 25, 45000, 1);
INSERT INTO Employees VALUES (106, 'Sophia', 38, 75000, 5);

SELECT emp_name, salary FROM Employees WHERE salary > (SELECT AVG(salary)FROM Employees);

SELECT emp_name FROM Employees WHERE dept_id = (SELECT dept_id FROM Employees WHERE emp_name = 'John');

SELECT emp_name FROM Employees WHERE dept_id NOT IN (SELECT dept_id FROM Departments);

SELECT MAX(salary) AS Second_Highest_Salary FROM Employees WHERE salary < (SELECT MAX(salary)FROM Employees);

SELECT emp_name, age FROM Employees WHERE age > ANY (SELECT age FROM Employees WHERE dept_id = (SELECT dept_id FROM Departments WHERE dept_name = 'Sales'));


