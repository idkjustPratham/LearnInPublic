/*
Section 6 — Joins
Concepts: INNER, LEFT, RIGHT, FULL OUTER, SELF, CROSS JOIN

List every order with customer name, city, product name, quantity, and order status. (INNER JOIN across orders, customers, order_items, products.)
Show all customers and their orders. Include customers who have never placed an order. (LEFT JOIN)
Find products that have never appeared in any order. (LEFT JOIN with NULL check)
Self-join: Find pairs of customers from the same city.
Cross join: Generate all combinations of regions and payment methods (for a hypothetical marketing grid).
Full outer join (or simulated): Identify orders with no matching payment record, and payments with no matching order.
*/
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