SELECT * from products;

SELECT product_name,price,
      CASE
	      WHEN price>=30000 THEN 'Expensive'
		  WHEN price>=10000 AND price<= 29999 THEN 'Moderate'
		  ELSE 'Affordable'
	  END AS price_category
FROM products;