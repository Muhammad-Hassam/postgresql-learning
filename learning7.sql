CREATE TABLE students_2024(
	std_id INT PRIMARY KEY,
	std_name VARCHAR(50) NOT NULL,
	course VARCHAR(50)
);

INSERT INTO students_2024(std_id,std_name,course)
VALUES (1,'Arham Durrani','Computer Science'),
	   (2,'Liaqat Mehr','Mechanical engineer'),
	   (3,'Jameel Patel','Electronics'),
	   (4,'Shanawaz Gohar','Civil Engineering'),
	   (5,'Hania Alam','Computer Science');


CREATE TABLE students_2025(
	std_id INT PRIMARY KEY,
	std_name VARCHAR(50) NOT NULL,
	course VARCHAR(50)
);

INSERT INTO students_2025(std_id,std_name,course)
VALUES (3,'Jameel Patel','Electronics'),
	   (4,'Shanawaz Gohar','Civil Engineering'),
	   (6,'Meerab Ahan','Computer Science'),
	   (7,'Kashan Ameeri','Mathematics'),
	   (8,'Tehreem Sikandar','Physics ');

SELECT * FROM students_2024;

SELECT * FROM students_2025;

--set operators UNION, UNION ALL, INTERSECT

SELECT std_name,course 
FROM students_2024
UNION
SELECT std_name,course 
FROM students_2025;


SELECT std_name,course 
FROM students_2024
UNION ALL
SELECT std_name,course 
FROM students_2025;

SELECT std_name,course 
FROM students_2024
INTERSECT
SELECT std_name,course 
FROM students_2025;


SELECT std_name,course 
FROM students_2024
EXCEPT
SELECT std_name,course 
FROM students_2025;

	   