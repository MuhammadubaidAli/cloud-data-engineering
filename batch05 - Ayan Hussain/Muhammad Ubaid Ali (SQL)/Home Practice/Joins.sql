SELECT product_id, product_name, list_price 
FROM production.products
INNER JOIN Production.categories
	ON Products.category_id = Categories.category_id
ORDER BY 
	product_name desc;


SELECT product_id, product_name, list_price, category_name
FROM production.products
INNER JOIN Production.categories
	ON Products.category_id = Categories.category_id
ORDER BY 
	product_name desc;


SELECT 
product_id, 
product_name, 
list_price, 
category_name
FROM production.products p
INNER JOIN Production.categories c
	ON p.category_id = c.category_id
ORDER BY 
	product_name desc;




SELECT first_name + ' ' + last_name as full_name, order_status, order_date
FROM sales.customers
INNER JOIN sales.orders 
	ON customers.customer_id = orders.customer_id





