
-- create
CREATE TABLE EMPLOYEE (
  empId int,
  name varchar(15),
  dept varchar(10),
  address varchar(20),
  experience int
);

-- insert
INSERT INTO EMPLOYEE(empId,name,dept,address,experience) VALUES (1, 'Clark', 'Sales','bihar',3);
INSERT INTO EMPLOYEE(empId,name,dept,address,experience) VALUES (2, 'Dave', 'Accounting','tamil nadu',4);
INSERT INTO EMPLOYEE(empId,name,dept,address,experience) VALUES (3, 'Ava', 'Sales','delhi',1);

-- fetch 
SELECT * FROM EMPLOYEE;
