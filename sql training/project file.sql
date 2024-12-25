
create database project;
use project;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    job_title VARCHAR(50),
    department VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10, 2)
);

INSERT INTO Employees (employee_id, name, email, phone_number, job_title, department, hire_date, salary) 
VALUES(1, 'Priya Mehta', 'priya.mehta@example.com', '9876543210', 'Sales Manager', 'Sales', '2020-03-15', 75000.00),
(2, 'Arjun Verma', 'arjun.verma@example.com', '9123456789', 'Marketing Executive', 'Marketing', '2021-06-20', 55000.00),
(3, 'Sneha Roy', 'sneha.roy@example.com', '9988776655', 'Product Manager', 'Product Development', '2019-10-05', 95000.00),
(4, 'Rahul Sharma', 'rahul.sharma@example.com', '9876123456', 'Regional Sales Executive', 'Sales', '2022-02-10', 45000.00),
(5, 'Meera Iyer', 'meera.iyer@example.com', '9123456788', 'HR Manager', 'Human Resources', '2018-12-01', 80000.00),
(6, 'Anil Kapoor', 'anil.kapoor@example.com', '9998877665', 'Finance Analyst', 'Finance', '2021-04-15', 60000.00),
(7, 'Kavita Jain', 'kavita.jain@example.com', '9823456710', 'Digital Marketing Specialist', 'Marketing', '2023-01-05', 50000.00),
(8, 'Amit Mishra', 'amit.mishra@example.com', '9876549999', 'Logistics Manager', 'Operations', '2017-07-23', 70000.00),
(9, 'Sunita Gupta', 'sunita.gupta@example.com', '8765432190', 'Product Designer', 'Product Development', '2019-11-30', 85000.00),
(10, 'Rohan Das', 'rohan.das@example.com', '9123345678', 'Customer Service Manager', 'Customer Support', '2020-08-17', 65000.00);

select * from employees;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    address VARCHAR(255),
    date_of_birth DATE,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

INSERT INTO Customers (customer_id, name, email, phone_number, address, date_of_birth, employee_id) 
VALUES(1, 'Ananya Sharma', 'ananya.sharma@example.com', '9876543210', '123, MG Road, Mumbai', '1992-05-14', 1),
(2, 'Ravi Kumar', 'ravi.kumar@example.com', '9123456789', '456, BKC, Mumbai', '1985-09-24', 2),
(3, 'Snehal Patil', 'snehal.patil@example.com', '9988776655', '789, Juhu, Mumbai', '1990-12-10', 3),
(4, 'Pooja Desai', 'pooja.desai@example.com', '9123458888', '22, Vashi, Navi Mumbai', '1993-03-22', 1),
(5, 'Amit Joshi', 'amit.joshi@example.com', '9876123456', '89, Baner, Pune', '1988-01-15', 4),
(6, 'Megha Iyer', 'megha.iyer@example.com', '9876509876', '120, Aundh, Pune', '1995-06-18', 2),
(7, 'Karan Singh', 'karan.singh@example.com', '9876508765', '56, Koramangala, Bengaluru', '1994-09-10', 3),
(8, 'Deepak Choudhary', 'deepak.choudhary@example.com', '8765432190', '22, Whitefield, Bengaluru', '1991-11-30', 4),
(9, 'Ritika Jain', 'ritika.jain@example.com', '9123456788', '34, Powai, Mumbai', '1990-07-25', 1),
(10, 'Nikhil Verma', 'nikhil.verma@example.com', '9876549999', '75, Andheri, Mumbai', '1987-04-12', 2);

select * from customers;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
);

INSERT INTO Products (product_id, product_name, category, price, stock_quantity) 
VALUES
(101, 'L’Oréal Paris Revitalift Cream', 'Skincare', 899.99, 150),
(102, 'L’Oréal Paris Extraordinary Oil', 'Haircare', 499.99, 200),
(103, 'L’Oréal Paris True Match Foundation', 'Makeup', 899.00, 120),
(104, 'L’Oréal Paris Voluminous Mascara', 'Makeup', 650.00, 180),
(105, 'L’Oréal Paris Total Repair 5 Shampoo', 'Haircare', 349.00, 250),
(106, 'L’Oréal Paris Hyaluronic Serum', 'Skincare', 1199.99, 100),
(107, 'L’Oréal Paris Pure Clay Mask', 'Skincare', 699.99, 80),
(108, 'L’Oréal Paris Hair Spa Cream', 'Haircare', 599.99, 140),
(109, 'L’Oréal Paris Color Riche Lipstick', 'Makeup', 999.00, 160),
(110, 'L’Oréal Paris Magic Retouch Spray', 'Haircare', 399.00, 200),
(111, 'L’Oréal Paris Glow Mask', NULL, 799.99, NULL);

select * from products;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES(201, 1, '2024-11-20', 2399.97), 
(202, 2, '2024-11-21', 999.00),
(203, 3, '2024-11-22', 1500.00),
(204, 4, '2024-11-23', 1199.99),
(205, 5, '2024-11-23', 2599.98),
(206, 6, '2024-11-24', 1798.00),
(207, 7, '2024-11-24', 699.99),
(208, 8, '2024-11-25', 1998.99),
(209, 9, '2024-11-25', 1299.98),
(210, 10, '2024-11-25', 1599.97);

select* from orders;

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price_at_purchase DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price_at_purchase) 
VALUES(301, 201, 101, 1, 899.99), 
(302, 201, 102, 2, 499.99), 
(303, 201, 103, 1, 899.00), 
(304, 202, 109, 1, 999.00),
(305, 203, 104, 2, 650.00),
(306, 203, 102, 1, 499.99),
(307, 204, 106, 1, 1199.99),
(308, 205, 101, 2, 899.99),
(309, 205, 107, 1, 699.99),
(310, 206, 103, 2, 899.00),
(311, 206, 108, 1, 599.99),
(312, 207, 107, 1, 699.99),
(313, 208, 105, 3, 349.00),
(314, 208, 102, 1, 499.99),
(315, 209, 109, 1, 999.00),
(316, 209, 108, 1, 599.99),
(317, 210, 103, 1, 899.00),
(318, 210, 101, 1, 899.99),
(319, 210, 102, 1, 499.99);

select * from order_items;

SELECT order_id,product_id,quantity, price_at_purchase,(quantity * price_at_purchase) AS total_cost
FROM Order_Items;

SELECT order_id,customer_id, order_date,total_amount FROM Orders
WHERE (order_date >= '2024-11-20' AND total_amount > 1500) OR customer_id != 5;

SELECT * FROM Customers
WHERE employee_id = 1;

SELECT order_id, customer_id, total_amount FROM Orders
WHERE total_amount < 1000;

SELECT product_id, product_name, category FROM Products
WHERE category != 'Skincare';

SELECT product_id, product_name, stock_quantity FROM Products
WHERE stock_quantity > 100;

SELECT order_id, order_date, total_amount FROM Orders
WHERE order_date <= '2024-11-22';

SELECT customer_id, name, address FROM Customers
WHERE customer_id >= 5;

SELECT product_id, product_name, category FROM Products
WHERE category IS NULL;

SELECT product_id, product_name, category FROM Products
WHERE category IS NOT NULL;

SELECT order_id, customer_id, order_date, total_amount FROM Orders
WHERE total_amount > 1000 AND order_date > '2024-11-20';

SELECT order_id, customer_id, order_date, total_amount FROM Orders
WHERE total_amount > 2000 OR customer_id = 5;

SELECT order_id, customer_id, order_date, total_amount FROM Orders
WHERE (total_amount > 1500 AND order_date > '2024-11-20') OR customer_id = 5;

SELECT customer_id, name, Phone_number FROM Customers
WHERE Employee_id IN (2);

SELECT order_id, customer_id, order_date, total_amount FROM Orders
WHERE customer_id NOT IN (1, 3, 5);

SELECT order_id, customer_id, order_date, total_amount FROM Orders
WHERE total_amount BETWEEN 1000 AND 2000;

SELECT order_id, customer_id, order_date, total_amount FROM Orders
WHERE total_amount NOT BETWEEN 1000 AND 2000;

SELECT customer_id, name, address FROM Customers
WHERE name LIKE 'A%';

SELECT customer_id, name, address FROM Customers
WHERE name NOT LIKE '%e%';

SELECT order_id, customer_id, order_date, total_amount FROM Orders
ORDER BY total_amount ASC;

SELECT order_id, customer_id, order_date, total_amount FROM Orders
ORDER BY total_amount DESC;

ALTER TABLE Customers
CHANGE COLUMN address location VARCHAR(50);

SELECT  * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS    
WHERE TABLE_NAME = 'orders';

UPDATE Customers
SET email = NULL
WHERE customer_id = 3;

select * from customers;

SELECT SUM(total_amount) AS TotalSales
FROM Orders;

SELECT CURDATE() AS CurrentDate;

SELECT ROUND(123.4567, 2) AS RoundedValue;

SELECT UPPER(name) AS UpperCaseName
FROM Customers;

SELECT Customers.name, Products.product_name FROM Customers
CROSS JOIN Products;


SELECT Customers.name, Orders.order_id, Orders.total_amount FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

SELECT Customers.name, Orders.order_id, Orders.total_amount FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;


SELECT e1.employee_id AS Employee_ID,e1.name AS Employee_Name,e2.employee_id AS Manager_ID,e2.name AS Manager_Name,e1.department
FROM Employees e1
JOIN Employees e2 ON e1.department = e2.department AND e1.employee_id < e2.employee_id;

SELECT name AS Person_Name, 'Employee' AS Type FROM Employees
UNION
SELECT name AS Person_Name, 'Customer' AS Type FROM Customers;

SELECT category AS Description, 'Product Category' AS Type FROM Products
UNION ALL
SELECT location AS Description, 'Customer Address' AS Type FROM Customers;

SELECT product_id, product_name, IFNULL(category, 'Uncategorized') AS category FROM Products;

SELECT product_id, product_name, NULLIF(stock_quantity, 100) AS adjusted_stock_quantity FROM Products;

SELECT name, salary FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

SELECT name FROM Customers
WHERE customer_id IN (SELECT customer_id FROM Orders WHERE total_amount > 2000);

CREATE VIEW EmployeeSalaries AS
SELECT name, salary FROM Employees;

SELECT * FROM EmployeeSalaries;











