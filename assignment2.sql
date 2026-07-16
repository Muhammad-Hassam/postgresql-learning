SELECT * FROM products;


SELECT product_name, quantity,
       CASE
	       WHEN quantity>=50 THEN 'IN STOCKS'
		   WHEN quantity BETWEEN 15 AND 49 THEN 'LIMITED STOCKS'
		   ELSE 'OUT OF STOCKS SOON'
	   END AS stock_status
FROM products;


SELECT product_name, category,
       CASE
	       WHEN category LIKE 'Electronic%' THEN 'HOME APPLIANCE'
	       WHEN category LIKE 'FURNITURE%' THEN 'HOME DECORE'
		   ELSE 'DAILY USE ITEM'
	   END AS category_status
FROM products;