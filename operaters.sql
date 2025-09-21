
-- create
CREATE TABLE EMPLOYEE (
  number int,
  first_name varchar(15),
  last_name varchar(15),
  department varchar(15),
  address varchar(18),
  experience int
);

-- insert
INSERT INTO EMPLOYEE(number,first_name,last_name,department,address,experience) VALUES (1, 'Rohan', 'Yadav','Accounting','Madhya Pradesh', 4);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,address,experience) VALUES (2, 'Ali', 'Khan','Sales','Jharkhand',6);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,address,experience) VALUES (3, 'Anuv', 'Jain','Manufacture','Punjab',2);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,address,experience) VALUES (4, 'Samiksha', 'Tiwari','Accounting','Maharashtra',3);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,address,experience) VALUES (5, 'Amit', 'Dubey','Marketing','Uttar Pradesh',5);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,address,experience) VALUES (6, 'Ravi', 'Kushwaha','Accounting','Jharkhand',6);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,address,experience) VALUES (7, 'Sonam', 'Sinha','Sales','Delhi',3);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,address,experience) VALUES (8, 'Laksh', 'Sangtani','Marketing','Kerela',8);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,address,experience) VALUES (9, 'Bhoomi', 'Rawat','Manufacture', 'Madhya Pradesh', 4)
INSERT INTO EMPLOYEE(number,first_name,last_name,department,address,experience) VALUES (10, 'Divyansh', 'Mishra','Marketing', 'Delhi',5);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,address,experience) VALUES (11, 'Vansh', 'Kesharwani','Sales','Delhi',5);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,address,experience) VALUES (12, 'Ansh', 'Jain','Accounting','Maharashtra',6);
-- fetch 
SELECT * FROM EMPLOYEE;

SELECT first_name,last_name,experience FROM EMPLOYEE
WHERE department="Accounting" AND experience > 4;

SELECT first_name,address FROM EMPLOYEE
WHERE address ="Kerela" OR address="Delhi"

SELECT MAX(experience) AS best_employee FROM EMPLOYEE
 
DELETE FROM EMPLOYEE
WHERE experience<3
SELECT * FROM EMPLOYEE;