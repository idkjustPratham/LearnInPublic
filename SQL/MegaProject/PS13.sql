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
