SELECT * FROM products;

ALTER COLUMN discount_price  NUMERIC (10,2);

ALTER TABLE products
DROP COLUMN discount_price;

UPDATE products
SET discount_price = NULL
WHERE product_name IN('Laptop Pro 15','Wireless Mouse');

UPDATE products
SET discount_price = price * 0.9
WHERE product_name NOT IN('Laptop Pro 15','Wireless Mouse');

SELECT product_name,price,discount_price,
	COALESCE(discount_price, price) AS final_price
FROM products;

