CREATE TABLE employees3(
	employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	department VARCHAR(50),
	salary NUMERIC(10,2),
	joining_date DATE,
	age INT
);

SELECT * FROM employees3;

COPY employees3(
    first_name,
	last_name ,
	department,
	salary,
	joining_date,
	age) FROM '/Users/hassam/Downloads/employees_100.csv'
DELIMITER','
CSV HEADER;
