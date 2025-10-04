-- Create Salesman Table
-- NOTE: The original text uses "Comiession" which is assumed to be "Commission" for better readability/correctness.
CREATE TABLE IF NOT EXISTS Salesman(
    salesman_id TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    commission TEXT -- Stored as TEXT (e.g., '0.15'), should be REAL or DECIMAL in a production DB
);

-- Create Customer Table
CREATE TABLE IF NOT EXISTS Customer(
    customer_id TEXT PRIMARY KEY,
    cust_name TEXT,
    city TEXT,
    grade TEXT, -- Stored as TEXT (e.g., '100'), should be INTEGER in a production DB
    salesman_id TEXT
);

-- Create Orders Table
CREATE TABLE IF NOT EXISTS Orders(
    ord_no TEXT PRIMARY KEY,
    purch_amt TEXT, -- Stored as TEXT (e.g., '150.5'), should be REAL or DECIMAL
    ord_date TEXT, -- Stored as TEXT (e.g., '2012-10-05'), should be DATE
    customer_id TEXT,
    salesman_id TEXT
);


-- ====================================================================
-- DML (Data Manipulation Language) - Insert Data
-- ====================================================================

-- Insert data into Salesman
INSERT INTO Salesman(salesman_id, name, city, commission) VALUES
('5001', 'James Hoog', 'New York', '0.15'),
('5002', 'Nail Knite', 'Paris', '0.13'),
('5005', 'Pit Alex', 'London', '0.11'),
('5006', 'Mc Lyon', 'Paris', '0.14'),
('5007', 'Paul Adam', 'Rome', '0.13'),
('5003', 'Lauson Hen', 'San Jose', '0.12');

-- Insert data into Customer
INSERT INTO Customer(customer_id, cust_name, city, grade, salesman_id) VALUES
('3002', 'Nick brands', 'new york', '100', '5001'),
('3007', 'brad davis', 'new york', '200', '5001'),
('3005', 'graham max', 'california', '200', '5002'),
('3008', 'julian green', 'london', '300', '5002'),
('3004', 'fabian johnson', 'paris', '300', '5006'),
('3009', 'geoff samson', 'berlin', '100', '5003'),
('3003', 'joey alldoza', 'moscow', '200', '5007'),
('3001', 'brad guzan', 'london', '', '5005'); -- Grade is blank here

-- Insert data into Orders
INSERT INTO Orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
('70001', '150.5', '2012-10-05', '3001', '5002'),
('70009', '270.65', '2012-09-10', '3001', '5005'),
('70002', '65.26', '2012-10-05', '3002', '5001'),
('70004', '110.5', '2012-08-17', '3009', '5003'),
('70007', '948.5', '2012-09-10', '3005', '5002'),
('70005', '2400.6', '2012-07-27', '3007', '5001');


-- ====================================================================
-- Queries
-- ====================================================================

-- 1. Matching customers and salesmen by city
SELECT
    Customer.cust_name,
    Salesman.name,
    Salesman.city
FROM Customer
JOIN Salesman ON Customer.city = Salesman.city;

-- 2. Linking customers to their salesmen (showing customer name and salesman name)
SELECT
    Customer.cust_name,
    Salesman.name
FROM Customer
JOIN Salesman ON Customer.salesman_id = Salesman.salesman_id;

-- 3. Fetching orders where customer's city does not match salesman's city
SELECT
    Orders.ord_no,
    Customer.customer_id,
    Orders.salesman_id,
    Orders.ord_no,
    Orders.customer_id,
    Orders.salesman_id
FROM Orders
JOIN Customer ON Orders.customer_id = Customer.customer_id
JOIN Salesman ON Orders.salesman_id = Salesman.salesman_id
WHERE Customer.city <> Salesman.city;

-- 4. Fetching all orders with customer names
SELECT
    Orders.ord_no,
    Customer.cust_name
FROM Orders
JOIN Customer ON Orders.customer_id = Customer.customer_id;

-- 5. Customers with grades (show customer name and grade where grade is not null/empty)
SELECT
    Customer.cust_name AS "Customer",
    Customer.grade AS "Grade"
FROM Orders
JOIN Salesman ON Orders.salesman_id = Salesman.salesman_id
JOIN Customer ON Orders.customer_id = Customer.customer_id
WHERE Customer.grade IS NOT NULL AND Customer.grade <> ''; -- Added check for empty string ('')

-- 6. Customers with salesmen where commission is between 0.12 and 0.14
SELECT
    Customer.cust_name AS "Customer",
    Customer.city AS "City",
    Salesman.name AS "Salesman",
    Salesman.commission
FROM Customer
JOIN Salesman ON Customer.salesman_id = Salesman.salesman_id
WHERE CAST(Salesman.commission AS REAL) BETWEEN 0.12 AND 0.14; -- CAST assumes commissions are numeric

-- 7. Calculating commissions for orders where customer grade is 200 or more
-- NOTE: This calculation is often done in the application layer, but here it is done in SQL.
SELECT
    Orders.ord_no,
    Customer.cust_name,
    CAST(Orders.purch_amt AS REAL) * CAST(Salesman.commission AS REAL) AS "Commission Amount"
FROM Orders
JOIN Salesman ON Orders.salesman_id = Salesman.salesman_id
JOIN Customer ON Orders.customer_id = Customer.customer_id
WHERE CAST(Customer.grade AS REAL) >= 200; -- CAST assumes grades are numeric

-- 8. Orders on a specific date ('2012-10-05')
SELECT
    *
FROM Customer
JOIN Orders ON Customer.customer_id = Orders.customer_id
WHERE Orders.ord_date = '2012-10-05';
