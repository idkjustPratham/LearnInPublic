/*
Section 4 — Aggregations & Grouping
Concepts: COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING

Total revenue generated per payment method (only for 'Success' payments).
Count of orders per status. Show only statuses with more than 2 orders.
Average order value per customer. Show only customers whose average exceeds ₹20,000.
Which category has the highest total quantity of products sold? (Join order_items → products → categories.)
Find the month with the highest number of orders placed (extract month from order_date).
*/

/* 
select DISTINCT method,sum(amount_paid) as total_revenue from payments
where status = 'Success'
group by
    method;

select distinct status,count(*),count(status) as status_count from orders
GROUP BY status
having count(*) >= 2

SELECT customers.full_name,round(avg(unit_price)) as average from customers
LEFT JOIN orders on customers.customer_id = orders.customer_id 
left JOIN order_items on orders.order_id = order_items.order_id
group BY 
    full_name

SELECT category_name, quantity from categories
left join products on categories.category_id = products.category_id
left join order_items on products.product_id = order_items.product_id
ORDER BY quantity desc;

select count(*),extract (month from order_date) as Month from orders
GROUP BY MONTH
order by count(*) DESC;

*/