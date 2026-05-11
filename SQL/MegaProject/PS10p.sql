/*
                                assisted
SELECT 
    customer_id,
    COUNT(*) AS co
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > (
    SELECT AVG(order_count)
    FROM (
        SELECT COUNT(*) AS order_count
        FROM orders
        GROUP BY customer_id
    ) AS sub
);


SELECT products.product_id, products.product_name
FROM products
LEFT JOIN order_items ON products.product_id = order_items.product_id
WHERE order_items.product_id IS NULL
ORDER BY products.product_id ASC;
*/
q 48 to 50 pending