--change column name
ALTER TABLE users
RENAME COLUMN username TO  full_name;

SELECT * FROM users ORDER BY user_id ASC;

--change datatype
ALTER TABLE users 
ALTER COLUMN age TYPE SMALLINT;

--change constraint
ALTER TABLE users
ALTER COLUMN city SET NOT NULL;

--add check constrant to age
ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18);

--drop contraint 
ALTER TABLE users
DROP CONSTRAINT age;

INSERT INTO users(user_id,full_name,email,age,city)
VALUES (3,'Kamran','kamran@gmail.com',35,'lahore');

--change table name
ALTER TABLE users
RENAME TO customres;

SELECT * FROM customres ORDER BY user_id ASC;