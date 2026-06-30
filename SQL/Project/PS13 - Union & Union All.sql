/*
Section 13 — UNION & UNION ALL
Concepts: UNION, UNION ALL, set operations

UNION: List all cities from both the customers table and a manually written list of target cities — remove duplicates.
UNION ALL: Combine delivered orders and returned orders into a single activity log with a event_type label column.
Use UNION to produce a single report of top 3 products by revenue and top 3 products by quantity sold.
*/

/*

select city from customers
UNION
select city from customers

SELECT *
FROM (
    SELECT order_id, customer_id, order_date, 'Delivered' AS event_type
    FROM orders
    WHERE status = 'Delivered'

    UNION ALL

    SELECT order_id, customer_id, order_date, 'Returned' AS event_type
    FROM orders
    WHERE status = 'Returned'
) AS activity_log;


select product_name, price from products
UNION all
select product_name, stock_qty from products ORDER BY price DESC
*/
