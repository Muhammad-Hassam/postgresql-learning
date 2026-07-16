DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users(
	 user_id SERIAL PRIMARY KEY,
	 name VARCHAR(50) NOT NULL,
	 email VARCHAR(50) NOT NULL UNIQUE,
	 age INT,
	 city VARCHAR(50)
);

ALTER TABLE users
RENAME COLUMN name TO username;


SELECT * FROM users;

INSERT INTO users(username, email, age, city)
VALUES('kamran','kamran@gmail.com',34,'lahore'),
      ('Shan','shan@gmail.com',29,'lahore');

SELECT user_id,username FROM users;

UPDATE users
SET age=26
WHERE username='kamran';

SELECT * FROM users ORDER BY user_id ASC;
SELECT * FROM users ORDER BY username ASC;

UPDATE users 
SET city='karachi'
WHERE age>27;

UPDATE users 
SET username='Danial', age=24
WHERE user_id=1;

UPDATE users
SET age=age+1
WHERE email LIKE '%@gmail.com'

DELETE FROM users WHERE user_id=3;
