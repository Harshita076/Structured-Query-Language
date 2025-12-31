use aaft;
CREATE TABLE Store (
store_id INT PRIMARY KEY,
product_name VARCHAR(50),
category VARCHAR(30),
price INT,
quantity INT);

INSERT INTO Store VALUES
(1, 'Rice', 'Grocery', 60, 100),
(2, 'Milk', 'Dairy', 45, 50),
(3, 'Bread', 'Bakery', 40, 30),
(4, 'Soap', 'Personal Care', 25, 80),
(5, 'Oil', 'Grocery', 150, 40);

SELECT * FROM Store;

ALTER TABLE Store ADD supplier VARCHAR(40);

ALTER TABLE Store ADD store_type VARCHAR(20);

TRUNCATE TABLE Store;

DROP TABLE Store;




