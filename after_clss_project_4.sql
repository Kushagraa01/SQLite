CREATE TABLE EMPLOYEE (
  number int,
  employee_id varchar(12) PRIMARY KEY,
  first_name varchar(15),
  last_name varchar(15),
  department varchar(15),
  salary int NOT NULL
);

-- insert
INSERT INTO EMPLOYEE(number,employee_id,first_name,last_name,department,salary) VALUES (1,'1100','Rohan', 'Yadav','Accounting',13000);
INSERT INTO EMPLOYEE(number,employee_id,first_name,last_name,department,salary) VALUES (2,'1101','Ali', 'Khan','Sales',16000);
INSERT INTO EMPLOYEE(number,employee_id,first_name,last_name,department,salary) VALUES (3,'1102','Anuv', 'Jain','Manufacture',22000);
INSERT INTO EMPLOYEE(number,employee_id,first_name,last_name,department,salary) VALUES (4,'1103', 'Samiksha', 'Tiwari','Accounting',15000);
INSERT INTO EMPLOYEE(number,employee_id,first_name,last_name,department,salary) VALUES (5,'1104','Amit', 'Dubey','Marketing',5000);
INSERT INTO EMPLOYEE(number,employee_id,first_name,last_name,department,salary) VALUES (6,'1105','Ravi', 'Kushwaha','Accounting',20000);
INSERT INTO EMPLOYEE(number,employee_id,first_name,last_name,department,salary) VALUES (7,'1106', 'Sonam', 'Sinha','Sales',19000);
INSERT INTO EMPLOYEE(number,employee_id,first_name,last_name,department,salary) VALUES (8,'1107','Laksh', 'Sangtani','Marketing',10000);
INSERT INTO EMPLOYEE(number,employee_id,first_name,last_name,department,salary) VALUES (9,'1108','Bhoomi', 'Rawat','Manufacture', 14000)
INSERT INTO EMPLOYEE(number,employee_id,first_name,last_name,department,salary) VALUES (10,'1109', 'Divyansh', 'Mishra','Marketing',13000);
INSERT INTO EMPLOYEE(number,employee_id,first_name,last_name,department,salary) VALUES (11,'1110', 'Vansh', 'Kesharwani','Sales',8000);
INSERT INTO EMPLOYEE(number,employee_id,first_name,last_name,department,salary) VALUES (12,'1111', 'Ansh', 'Jain','Accounting',16000);
-- fetch 
SELECT * FROM EMPLOYEE;