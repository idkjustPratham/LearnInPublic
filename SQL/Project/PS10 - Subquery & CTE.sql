/*
Section 10 — Subqueries & CTEs
Concepts: correlated subqueries, scalar subqueries, IN/EXISTS, WITH clause

Find all customers who have placed more orders than the average number of orders per customer. (Subquery)
List products that have never been ordered. (NOT IN / NOT EXISTS — write both versions.)
Using a CTE, calculate each customer's total spend and rank them by spend descending.
Multi-level CTE: First compute monthly revenue, then compute quarter-over-quarter change.
Correlated subquery: For each order, show whether the customer's order value is above or below their own personal average.
*/

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