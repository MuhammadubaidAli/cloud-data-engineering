
-- SUB QUERY
SELECT * FROM sales.orders
WHERE customer_id IN(
select
      customer_id
from
    sales.customers
where 
     city = 'New York'
  )


SELECT * FROM production.products
WHERE list_price > (
select
      avg (list_price)
from
    production.products
where 
     brand_id in
  (select brand_id from production.brands where brand_name in ('electra', 'trek')));


SELECT * FROM product_name FROM production.products
WHERE 


SELECT * FROM production.products
WHERE category_id in (SELECT category_id FROM production.categories
WHERE category_name in ('Comfort Bicycles', 'Electric Bikes'))


SELECT * FROM production.products
WHERE product_id in (
select
      product_id
from
    production.stocks
where 
     quantity > 25)

     GROUP BY HAVING SUBQUERY