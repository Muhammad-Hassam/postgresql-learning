CREATE TABLE users(
	user_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE,
	age INTEGER CHECK (age>=18),
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO users(user_id,name,email,age)
VALUES (1,'Kamran','kamran@gamil.com',25);

SELECT * from users;