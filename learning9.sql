CREATE TABLE productS;

SELECT UPPER(category) AS category_capital
FROM products;

SELECT LOWER(category) AS category_capital
FROM products;

SELECT CONCAT(product_name,' - ' ,category) AS  merge_data
FROM products;

SELECT product_name,LENGTH(product_name) AS count_of_char
FROM products;

SELECT LENGTH(TRIM(' MONITOR ')) AS trimmed_text;
SELECT LENGTH(' MONITOR ') AS trimmed_text;

SELECT REPLACE(product_name,'Laptop','device') AS updated_data
FROM products;

SELECT RIGHT(category,3) AS category_capital
FROM products;

SELECT LEFT(category,3) AS category_capital
FROM products;