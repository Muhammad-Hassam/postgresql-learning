DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	department VARCHAR(50),
	salary DECIMAL(10,2) CHECK(salary>0),
	joining_date DATE NOT NULL,
	age INT CHECK(age>=18)
);

INSERT INTO employees(first_name,last_name,department,salary,joining_date,age)
	VALUES('Amit','Sharma','IT',60000.00,'2022-05-01',29),
	('Rahul','Verma','HR',45000.00,'2021-08-15',32),
	('Priya','Singh','Finance',70000.00,'2020-11-10',35),
	('Neha','Gupta','Marketing',55000.00,'2023-01-20',27),
	('Arjun','Patel','IT',80000.00,'2019-07-05',38),
	('Sneha','Mehta','Sales',50000.00,'2022-09-12',30),
	('Vikram','Joshi','Operations',65000.00,'2021-03-18',34),
	('Pooja','Agarwal','Finance',72000.00,'2020-06-25',31),
	('Karan','Malhotra','IT',90000.00,'2018-12-01',40),
	('Anjali','Reddy','HR',48000.00,'2023-04-08',26),
	('Rohit','Kapoor','Sales',53000.00,'2022-02-14',28),
	('Meera','Nair','Marketing',61000.00,'2021-10-30',33),
	('Suresh','Yadav','Operations',58000.00,'2020-08-22',36),
	('Kavita','Chopra','Finance',75000.00,'2019-05-17',37),
	('Manish','Bansal','IT',85000.00,'2018-11-11',41)

SELECT first_name, department FROM employees;

UPDATE employees
SET salary=salary + (salary * 0.10)
WHERE department='IT';

SELECT * FROM employees;

DELETE FROM employees WHERE age>39;

ALTER TABLE employees
ADD COLUMN email VARCHAR(50) UNIQUE;

ALTER TABLE employees
RENAME COLUMN department TO dept_name;

SELECT first_name FRom employees WHERE joining_date>DATE('2021-01-01');

ALTER TABLE employees
ALTER COLUMN salary TYPE INT;

SELECT * FROM employees ORDER BY age, salary DESC;

INSERT INTO employees(first_name,last_name,dept_name,salary,joining_date,age)
	VALUES('Raj','Singh','Marketing',60000.00,'2023-09-15',29);

UPDATE employees
SET age=age+1;