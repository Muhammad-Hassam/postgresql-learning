CREATE TABLE products(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(50),
	category VARCHAR(50),
	price NUMERIC(10,2),
	quantity INT,
	added_date DATE,
	discount_rate NUMERIC(5,2)
);

INSERT INTO products(product_name, category, price, quantity, added_date, discount_rate)
VALUES ('Laptop Pro 15', 'Electronics', 125000.00, 15, '2026-01-10', 10.00),
 	   ('Wireless Mouse', 'Electronics', 2500.00, 100, '2026-01-12', 5.00),
	   ('Mechanical Keyboard', 'Electronics', 8500.00, 50, '2026-01-15', 7.50),
       ('Office Chair', 'Furniture', 18000.00, 20, '2026-01-18', 12.00),
       ('Study Table', 'Furniture', 22000.00, 10, '2026-01-20', 8.00),
	   ('LED Monitor 24"', 'Electronics', 32000.00, 25, '2026-01-22', 15.00),
	   ('Notebook A5', 'Stationery', 250.00, 500, '2026-01-25', 0.00),
       ('Ball Pen Pack', 'Stationery', 150.00, 1000, '2026-01-27', 2.00),
       ('Water Bottle', 'Accessories', 800.00, 150, '2026-02-01', 5.00),
       ('Backpack', 'Accessories', 3500.00, 60, '2026-02-03', 10.00);


SELECT * FROM products;

SELECT SUM(quantity) AS total_quantity
FROM products;

SELECT SUM(quantity) AS quantity_of_ele
FROM products 
WHERE category='Electronics' AND price > 20000;

SELECT COUNT(*) AS total_products
FROM products;

SELECT COUNT(*) AS total_products
FROM products
WHERE product_name LIKE '%phone%';

SELECT AVG(price) AS avg_price
FROM products;

SELECT AVG(price) AS avg_price
FROM products
WHERE category='Electronics' OR added_date > '2026-01-08';


SELECT MAX(price) AS max_price,
 	   MIN(price) AS min_price
FROM products;