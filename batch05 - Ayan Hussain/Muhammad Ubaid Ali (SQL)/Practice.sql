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

SELECT TOP 10 
       product_id, product_name, list_price 
FROM production.products
ORDER BY list_price DESC;


SELECT TOP 2 PERCENT 
*
FROM
Production.products
ORDER BY list_price;

--OFFSET -- FETCH 

SELECT 
* 
FROM production.products
ORDER BY list_price DESC
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;

SELECT 
 * 
FROM production.products
ORDER BY list_price DESC
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;

SELECT 
 * 
FROM 
 sales.customers
ORDER BY street;


--SELECT DISTINCT COLUMN_NAME 
-- FROM TABLE_NAME

SELECT * 
FROM sales.customers
ORDER BY CITY;


SELECT DISTINCT CITY 
FROM sales.customers
ORDER BY CITY;

SELECT DISTINCT state  
FROM sales.customers
ORDER BY state;


SELECT DISTINCT MODEL_YEAR  
FROM production.products
ORDER BY MODEL_YEAR;


SELECT DISTINCT CITY, STATE
FROM sales.customers ;

SELECT DISTINCT STATE, CITY
FROM sales.customers ;

SELECT * FROM sales.customers;

SELECT phone 
FROM sales.customers
WHERE phone IS NOT NULL
ORDER BY phone;


SELECT DISTINCT phone 
FROM sales.customers
ORDER BY phone;

-- LOGICAL OPERATORS 
-- AND | OR
SELECT * 
FROM production.products
WHERE category_id = 1 AND list_price > 400
ORDER BY list_price;

SELECT * 
FROM production.products
WHERE category_id = 1 OR list_price > 400
ORDER BY list_price DESC;

SELECT * 
FROM production.products
WHERE list_price > 300 AND model_year = 2018
ORDER BY list_price DESC;


SELECT *
FROM production.products
WHERE  list_price > 1000 AND (brand_id = 1 OR brand_id=2)
ORDER BY brand_id;


-- like 
-- Logical operator that check or watches with specified string/text
-- Used with wild cards % _ ^ []

-- % Represent multiple characters
SELECT customer_id, first_name, last_name from sales.customers
WHERE first_name like '%g'
ORDER BY first_name;

SELECT customer_id, first_name, last_name  
FROM sales.customers
WHERE first_name like '%s' AND last_name like '%g';
 

SELECT customer_id, first_name, last_name  
FROM sales.customers
WHERE first_name like 't%s';
 

SELECT customer_id, first_name, last_name  
FROM sales.customers
WHERE first_name like '_a%';
 
 --first name must be 'a'
 SELECT customer_id, first_name, last_name
 FROM sales.customers
 WHERE first_name NOT like 'a%'
 ORDER BY first_name;


 --JOINS


 CREATE SCHEMA hr;
 go

 CREATE TABLE hr.candidates(
 id int primary key identity,
 fullname varchar(100) not null);
 

 CREATE TABLE hr.employess(
 id int primary key identity,
 fullname varchar(100) not null);


 INSERT INTO 
      hr.candidates(full_name)
values
     ('Saad')
     ('Mohsin')
     ('Owais')
     ('Haseeb')

insert into  
    hr.employess(fullname)
values
     ('Saad')
     ('Mohsin')
     ('Owais')
     ('Haseeb')












