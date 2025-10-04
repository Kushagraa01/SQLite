-- ====================================================================
-- create
-- ====================================================================

-- Create Salesman Table using proper data types (INT for ID, DECIMAL for commission)
CREATE TABLE IF NOT EXISTS Salesman (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    commission DECIMAL(4, 2) -- e.g., 0.15
);

-- Create Customer Table
CREATE TABLE IF NOT EXISTS Customer (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    grade INT, -- e.g., 100, 200, 300
    salesman_id INT,
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id)
);

-- Create Orders Table
CREATE TABLE IF NOT EXISTS Orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10, 2), -- Purchase amount with up to 10 total digits, 2 after decimal
    ord_date DATE,
    customer_id INT,
    salesman_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id)
);


-- ====================================================================
-- insert
-- ====================================================================

-- Insert data into Salesman
INSERT INTO Salesman(salesman_id, name, city, commission) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);

-- Insert data into Customer
INSERT INTO Customer(customer_id, cust_name, city, grade, salesman_id) VALUES
(3002, 'Nick brands', 'new york', 100, 5001),
(3007, 'brad davis', 'new york', 200, 5001),
(3005, 'graham max', 'california', 200, 5002),
(3008, 'julian green', 'london', 300, 5002),
(3004, 'fabian johnson', 'paris', 300, 5006),
(3009, 'geoff samson', 'berlin', 100, 5003),
(3003, 'joey alldoza', 'moscow', 200, 5007),
(3001, 'brad guzan', 'london', NULL, 5005); -- Using NULL for blank grade

-- Insert data into Orders
INSERT INTO Orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
(70001, 150.50, '2012-10-05', 3001, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.50, '2012-08-17', 3009, 5003),
(70007, 948.50, '2012-09-10', 3005, 5002),
(70005, 2400.60, '2012-07-27', 3007, 5001);


-- ====================================================================
-- fetch
-- ====================================================================

-- 1. Matching customers and salesmen by city
SELECT
    C.cust_name,
    S.name AS salesman_name,
    S.city
FROM Customer C
JOIN Salesman S ON C.city = S.city;

-- 2. Linking customers to their salesmen (showing customer name and salesman name)
SELECT
    C.cust_name AS customer_name,
    S.name AS salesman_name
FROM Customer C
JOIN Salesman S ON C.salesman_id = S.salesman_id;

-- 3. Fetching orders where customer's city does not match salesman's city
SELECT
    O.ord_no,
    C.cust_name AS customer_name,
    C.city AS customer_city,
    S.name AS salesman_name,
    S.city AS salesman_city
FROM Orders O
JOIN Customer C ON O.customer_id = C.customer_id
JOIN Salesman S ON O.salesman_id = S.salesman_id
WHERE C.city <> S.city;

-- 4. Fetching all orders with customer names
SELECT
    O.ord_no,
    C.cust_name AS customer_name,
    O.purch_amt
FROM Orders O
JOIN Customer C ON O.customer_id = C.customer_id;

-- 5. Customers with grades (show customer name and grade where grade is not null)
SELECT
    C.cust_name AS "Customer",
    C.grade AS "Grade"
FROM Customer C
WHERE C.grade IS NOT NULL;

-- 6. Customers with salesmen where commission is between 0.12 and 0.14
SELECT
    C.cust_name AS "Customer",
    C.city AS "City",
    S.name AS "Salesman",
    S.commission
FROM Customer C
JOIN Salesman S ON C.salesman_id = S.salesman_id
WHERE S.commission BETWEEN 0.12 AND 0.14;

-- 7. Calculating commissions for orders where customer grade is 200 or more
SELECT
    O.ord_no,
    C.cust_name,
    O.purch_amt * S.commission AS "Commission Amount"
FROM Orders O
JOIN Salesman S ON O.salesman_id = S.salesman_id
JOIN Customer C ON O.customer_id = C.customer_id
WHERE C.grade >= 200;

-- 8. Orders on a specific date ('2012-10-05')
SELECT
    O.*,
    C.cust_name AS customer_name
FROM Orders O
JOIN Customer C ON O.customer_id = C.customer_id
WHERE O.ord_date = '2012-10-05';
GO