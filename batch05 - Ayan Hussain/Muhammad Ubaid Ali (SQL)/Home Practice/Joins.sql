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



--INNER JOIN

SELECT product_name, order_id 
FROM sales.order_items o
INNER JOIN production.products p
	ON o.product_id = p.product_id

--LEFT JOIN


SELECT p.product_name, i.order_id, o.order_date, i.item_id
FROM sales.orders o
LEFT JOIN sales.order_items i
		ON o.order_id = i.order_id
	LEFT JOIN production.products p
			ON i.product_id = p.product_id
ORDER BY order_date;


SELECT *
FROM sales.orders o
LEFT JOIN sales.order_items i
		ON o.order_id = i.order_id
	LEFT JOIN production.products p
			ON i.product_id = p.product_id
ORDER BY order_date;



SELECT
	p.product_name,
	oi.order_id
FROM
	sales.order_items oi
RIGHT JOIN production.products p
	ON p.product_id = oi.product_id
ORDER BY order_id;







