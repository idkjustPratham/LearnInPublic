/*
select * from orders
INNER JOIN customers on customers.customer_id = orders.customer_id
inner JOIN order_items on orders.order_id = order_items.order_id
INNER JOIN products on products.product_id = order_items.product_id

select * from customers
left join orders on orders.customer_id = customers.customer_id

q28 pending

select a.full_name , b.full_name, a.city
from customers a, customers b
where a.customer_id = b.customer_id
and a.city = b.city
order by a.city

select * from regions
cross JOIN payments


select * from orders
FULL OUTER JOIN payments on payments.order_id = orders.order_id
*/