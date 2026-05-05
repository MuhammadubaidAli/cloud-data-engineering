--Create Database Name
CREATE DATABASE BikeStores;


-- Selection

SELECT * FROM sales.customers;

SELECT * FROM production.products;

SELECT product_id, product_name FROM production.products;

SELECT * FROM sales.orders;

SELECT * FROM sales.customers
WHERE customer_id = 94;

SELECT first_name, last_name FROM sales.customers
WHERE customer_id = 94;

SELECT * FROM sales.customers;


-- Order of Execution

SELECT * FROM sales.customers
WHERE city = 'New York';


SELECT * FROM sales.customers
WHERE state = 'NY';


-- Order By
-- Syntax
/*
SELECT
      select_list
FROM 
    table_name
ORDER BY
     coloumn_name | expression [ASC | DESC ]
*/

SELECT first_name, last_name  FROM sales.customers
order by first_name DESC;


-- Sort a result by multiple columns

SELECT city, first_name, last_name
FROM sales.customers
order by city, first_name ;

SELECT * FROM production.products
ORDER BY model_year, list_price;


SELECT * FROM sales.orders
ORDER BY order_date DESC;

SELECT 
    city, first_name, last_name, state
FROM 
    sales.customers
WHERE 
    state= 'NY'
order by 
   city;

-- LIMITING ROWS

SELECT TOP 10 * FROM production.products
ORDER BY list_price DESC;








