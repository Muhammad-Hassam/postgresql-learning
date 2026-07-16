CREATE TABLE employees4(
	   employee_id SERIAL PRIMARY KEY,
	   first_name VARCHAR(50),
	   last_name VARCHAR(50),
	   department_id INT
);

INSERT INTO employees4 (first_name, last_name, department_id)
VALUES
('Rehan','danish',101),
('Payal','mehr',102),
('Anam','asad',103),
('Saad','khan',NULL),
('Aman','nomi',101);

SELECT * FROM employees4;

CREATE TABLE departments(
	   department_id INT PRIMARY KEY,
	   department_name VARCHAR(50)
);

INSERT INTO departments(department_id, department_name)
VALUES
(101,'Sales'),
(102,'Mrketing'),
(103,'IT'),
(104,'HR');

SELECT * FROM departments;

SELECT e.employee_id, e.first_name, e.last_name,
       d.department_id,d.department_name
FROM employees4 e
INNER JOIN
departments d
ON e.department_id=d.department_id;

SELECT e.employee_id, e.first_name, e.last_name,
       d.department_id,d.department_name
FROM employees4 e
LEFT JOIN
departments d
ON e.department_id=d.department_id;

SELECT e.employee_id, e.first_name, e.last_name,
       d.department_id,d.department_name
FROM employees4 e
RIGHT JOIN
departments d
ON e.department_id=d.department_id;

SELECT e.employee_id, e.first_name, e.last_name,
       d.department_id,d.department_name
FROM employees4 e
FULL OUTER JOIN
departments d
ON e.department_id=d.department_id;


SELECT e.first_name, e.last_name, d.department_name
FROM employees4 e
CROSS JOIN
     departments d;


SELECT e1.first_name AS employee_name1,
       e2.first_name AS employee_name2
FROM employees4 e1 JOIN employees4 e2
ON e1.department_id=e2.department_id AND e1.employee_id!=e2.employee_id;


