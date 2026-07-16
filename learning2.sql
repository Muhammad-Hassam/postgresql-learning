CREATE TABLE employees2(
	employee_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	designation VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);

SELECT * from employees2;

INSERT INTO employees(name,designation,department,hire_date,salary)
VALUES (101,'Kamran','Manager','Finance','2021-09-03',170000.00),
		(102,'Imran','VP','Finance','2020-10-01',200000.00),
		(10'kashif','Head','Finance','2023-09-01',150000.00)