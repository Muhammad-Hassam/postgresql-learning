CREATE TABLE employees(
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);

SELECT * from employees;

ALTER TABLE employees
RENAME COLUMN position TO designation;

INSERT INTO employees(name,designation,department,hire_date,salary)
VALUES ('Kamran','Manager','Finance','2021-09-03',170000.00),
		('Imran','VP','Finance','2020-10-01',200000.00),
		('kashif','Head','Finance','2023-09-01',150000.00)

TRUNCATE TABLE employees;

TRUNCATE TABLE employees RESTART IDENTITY;