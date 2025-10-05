
-- create
CREATE TABLE EMPLOYEE (
  number int,
  first_name varchar(15),
  last_name varchar(15),
  department varchar(15),
  salary int 
);

-- insert
INSERT INTO EMPLOYEE(number,first_name,last_name,department,salary) VALUES (1, 'Rohan', 'Yadav','Accounting',13000);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,salary) VALUES (2, 'Ali', 'Khan','Sales',16000);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,salary) VALUES (3, 'Anuv', 'Jain','Manufacture',22000);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,salary) VALUES (4, 'Samiksha', 'Tiwari','Accounting',15000);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,salary) VALUES (5, 'Amit', 'Dubey','Marketing',5000);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,salary) VALUES (6, 'Ravi', 'Kushwaha','Accounting',20000);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,salary) VALUES (7, 'Sonam', 'Sinha','Sales',19000);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,salary) VALUES (8, 'Laksh', 'Sangtani','Marketing',10000);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,salary) VALUES (9, 'Bhoomi', 'Rawat','Manufacture', 14000)
INSERT INTO EMPLOYEE(number,first_name,last_name,department,salary) VALUES (10, 'Divyansh', 'Mishra','Marketing',13000);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,salary) VALUES (11, 'Vansh', 'Kesharwani','Sales',8000);
INSERT INTO EMPLOYEE(number,first_name,last_name,department,salary) VALUES (12, 'Ansh', 'Jain','Accounting',16000);
-- fetch 
SELECT * FROM EMPLOYEE;

SELECT AVG(salary) AS average_salary
FROM EMPLOYEE;

SELECT SUM(salary) AS sum_of_salary 
FROM EMPLOYEE;

SELECT COUNT(department) AS count_of_department
FROM EMPLOYEE;
 
SELECT MAX(salary) AS maximum_salary FROM EMPLOYEE;

SELECT MIN(salary) AS minimum_salary FROM EMPLOYEE;