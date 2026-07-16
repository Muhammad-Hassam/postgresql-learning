SELECT * FROM products;

SELECT NOW() AS date_now;

SELECT current_date AS today_date;

SELECT Added_date, Current_date, (CURRENT_DATE- added_date) AS days_difference 
FROM products;

SELECT product_name, EXTRACT(YEAR FROM added_date) AS year_added,
			EXTRACT(MONTH FROM added_date) AS month_added,
			EXTRACT(DAY FROM added_date) AS day_added
FROM products;

SELECT product_name,
       AGE(CURRENT_DATE,added_date) AS age_since_added
FROM products;

SELECT product_name,
       TO_CHAR(added_date,'DD-Mon-YYYY') AS formated_date
FROM products;

SELECT product_name,added_date,
       DATE_PART('dow', added_date) AS day_of_week
FROM products;

SELECT product_name,added_date,
       DATE_PART('month', added_date) AS month_of_year
FROM products;

SELECT product_name,added_date,
       DATE_PART('year', added_date) AS month_of_year
FROM products;

SELECT product_name,added_date,
      DATE_TRUNC('month',added_date) AS Month_start
FROM products;

SELECT product_name,added_date,
      DATE_TRUNC('week',added_date) AS Month_start
FROM products;

SELECT product_name,added_date,
      DATE_TRUNC('week',added_date) AS Month_start,
	  DATE_PART('isodow',added_date) AS day_of_week
FROM products;

SELECT product_name,added_date,
      added_date + INTERVAL '6 days' AS new_date
FROM products;

SELECT product_name,added_date,
      added_date + INTERVAL '6 months' AS new_month
FROM products;

SELECT CURRENT_TIME AS crnt_time;

SELECT TO_DATE('28-11-04','DD-MM-YYYY') AS converted_date;
