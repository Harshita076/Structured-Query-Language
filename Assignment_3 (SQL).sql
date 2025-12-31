use aaft;
CREATE TABLE Customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50) NOT NULL,
city VARCHAR(30),
age INT CHECK (age >= 18));

INSERT INTO Customers VALUES (1, 'John', 'Delhi', 25);
INSERT INTO Customers VALUES (2, 'Alice', 'Mumbai', 30);
INSERT INTO Customers VALUES (3, 'Bob', 'Delhi', 28);
INSERT INTO Customers VALUES (4, 'Emma', 'Pune', 35);
INSERT INTO Customers VALUES (5, 'David', 'Chennai', 40);

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT,
product VARCHAR(50),
amount INT CHECK (amount > 0),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id));

INSERT INTO Orders VALUES (101, 1, 'Laptop', 60000);
INSERT INTO Orders VALUES (102, 2, 'Mobile', 30000);
INSERT INTO Orders VALUES (103, 1, 'Tablet', 20000);
INSERT INTO Orders VALUES (104, 3, 'Headphones', 5000);
INSERT INTO Orders VALUES (105, 5, 'Monitor', 15000);

SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT customer_name, city FROM Customers;

SELECT customer_name, age FROM Customers ORDER BY age DESC;
set sql_safe_updates=0;
UPDATE Customers SET age = age + 1 WHERE customer_name = 'John';

DELETE FROM Customers WHERE city = 'Pune';

SELECT emp_name, salary FROM Employees WHERE salary > (SELECT AVG(salary)FROM Employees);

SELECT c.customer_name, o.product, o.amount FROM Customers c INNER JOIN Orders o ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.product FROM Customers c JOIN Orders o ON c.customer_id = o.customer_id WHERE c.city = 'Delhi';


