/*
Section 7 — Date Functions
Concepts: date arithmetic, EXTRACT, DATE_DIFF, CURRENT_DATE, DATE_FORMAT

How many days has each customer been a member as of today?
List all orders placed in Q4 (October–December) across any year.
Find customers who signed up more than 2 years ago but have placed fewer than 2 orders total.
Show month-wise order count for 2024 in the format 'YYYY-MM'.
Calculate the number of days between order_date and payment_date for each order.
*/
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
