/*

select ('2026-05-09'::date - signup_date::date) from customers

SELECT EXTRACT(MONTH FROM order_date) AS order_month
FROM orders
WHERE EXTRACT(MONTH FROM order_date) IN (10, 11, 12);

select *  from customers
left join orders on orders.customer_id = customers.customer_id
left join order_items on orders.order_id = order_items.order_id
where ('2026-05-09'::date - signup_date::date) > 730 and order_items.quantity <= 2;

select *, to_char(order_date,'YYYY-MM') from orders

SELECT 
    orders.order_id,
    orders.order_date,
    payments.payment_date,
    (orders.order_date::date - payments.payment_date::date) AS days_between
FROM orders
LEFT JOIN payments ON orders.order_id = payments.order_id
*/
