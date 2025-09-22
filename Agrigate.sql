
-- create
CREATE TABLE PRODUCTS (
  product_id int,
  product_name varchar(15),
  unit varchar(10),
  category varchar(20),
  price real
);

-- insert
INSERT INTO PRODUCTS (product_id, product_name, unit, category, price) VALUES
(1, 'Apple', 'kg', 'Fruits', 1.50),
(2, 'Milk', 'liter', 'Dairy', 2.25),
(3, 'Bread', 'loaf', 'Bakery', 3.00),
(4, 'Tomato', 'kg', 'Vegetables', 1.75),
(5, 'Cheese', 'block', 'Dairy', 4.50),
(6, 'Chicken', 'kg', 'Meat', 8.99),
(7, 'Rice', 'bag', 'Grains', 5.50),
(8, 'Pasta', 'box', 'Grains', 2.75),
(9, 'Eggs', 'dozen', 'Dairy', 3.50),
(10, 'Onion', 'kg', 'Vegetables', 1.20);
-- fetch 
SELECT * FROM PRODUCTS ;

SELECT COUNT(unit)
FROM PRODUCTS;

SELECT SUM(price)
FROM PRODUCTS;

SELECT AVG(price)
FROM PRODUCTS;

SELECT DISTINCT category,product_id
FROM PRODUCTS;