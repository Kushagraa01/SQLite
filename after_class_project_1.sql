
-- create
CREATE TABLE  CUSTOMERS(
  number int,
  first_name varchar(15),
  last_name varchar(15),
  address varchar(22),
  grade int
);

-- insert
INSERT INTO CUSTOMERS(number,first_name,last_name,address,grade) VALUES (1, 'Rohan', 'Yadav','Russia', 100);
INSERT INTO CUSTOMERS(number,first_name,last_name,address,grade) VALUES (2, 'Ali', 'Khan','New York',120);
INSERT INTO CUSTOMERS(number,first_name,last_name,address,grade) VALUES (3, 'Anuv', 'Jain','New York',80);
INSERT INTO CUSTOMERS(number,first_name,last_name,address,grade) VALUES (4, 'Samiksha', 'Tiwari','India',180);
INSERT INTO CUSTOMERS(number,first_name,last_name,address,grade) VALUES (5, 'Amit', 'Dubey','New York',170);
INSERT INTO CUSTOMERS(number,first_name,last_name,address,grade) VALUES (6, 'Ravi', 'Kushwaha','Japan',60);
INSERT INTO CUSTOMERS(number,first_name,last_name,address,grade) VALUES (7, 'Sonam', 'Sinha','New York',150);
INSERT INTO CUSTOMERS(number,first_name,last_name,address,grade) VALUES (8, 'Laksh', 'Sangtani','America',145);
INSERT INTO CUSTOMERS(number,first_name,last_name,address,grade) VALUES (9, 'Bhoomi', 'Rawat','New York',130)
INSERT INTO CUSTOMERS(number,first_name,last_name,address,grade) VALUES (10, 'Divyansh', 'Mishra','Japan',56);
INSERT INTO CUSTOMERS(number,first_name,last_name,address,grade) VALUES (11, 'Vansh', 'Kesharwani','New York',70);
INSERT INTO CUSTOMERS(number,first_name,last_name,address,grade) VALUES (12, 'Ansh', 'Jain','New York',76);
-- fetch 
SELECT * FROM CUSTOMERS;

SELECT first_name,last_name FROM CUSTOMERS
WHERE address='New York' AND grade > 100;

SELECT first_name,last_name FROM CUSTOMERS
WHERE address='New York' OR grade > 100;