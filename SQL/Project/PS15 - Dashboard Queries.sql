/*
Section 15 — Final Business Dashboard Queries
These are the GitHub-showcase queries. Each should be clean, well-commented, and production-quality.

Customer Lifetime Value Report: Total spend, order count, avg order value, first order date, last order date, membership tier (CASE) — for all customers.
Product Profitability Report: Product, category, units sold, revenue, cost, profit, margin%, ranked by profit.
Regional Sales Breakdown: Region, total orders, total revenue, top product in that region (subquery).
Cohort-style Retention: Group customers by signup year. Show how many placed orders in their first year vs overall.
Payment Funnel: Total orders → Successful payments → Failed → Refunded. Show conversion % at each stage.
Returns Analysis: Return rate by category. Which category has the highest return rate?
*/

/*
Customer lifetime value report

SELECT 
    customers.customer_id,
    customers.full_name,
    customers.is_premium,
    orders.order_date,
    payments.amount_paid
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
LEFT JOIN payments ON payments.order_id = orders.order_id;

Product profitability report


SELECT 
    products.product_id,
    products.product_name,
    categories.category_name,
    SUM(order_items.quantity) AS total_units_sold,
    SUM(order_items.quantity * order_items.unit_price) AS total_revenue,
    (order_items.unit_price - products.cost_price) AS profit,
    ROUND((order_items.unit_price - products.cost_price) / order_items.unit_price * 100, 2) AS margin_pct,
    DENSE_RANK() OVER (ORDER BY SUM(order_items.quantity * order_items.unit_price) DESC) AS revenue_rank
FROM products
LEFT JOIN categories ON categories.category_id = products.category_id
LEFT JOIN order_items ON order_items.product_id = products.product_id
GROUP BY 
    products.product_id,
    products.product_name,
    categories.category_name,
    order_items.unit_price,
    products.cost_price;

Regional sales background

WITH totals AS (
    SELECT 
        customers.region_id,
        COUNT(DISTINCT orders.order_id) AS total_orders,
        SUM(order_items.quantity * order_items.unit_price) AS revenue
    FROM orders
    LEFT JOIN order_items ON order_items.order_id = orders.order_id
    LEFT JOIN customers ON customers.customer_id = orders.customer_id
    GROUP BY customers.region_id
)
SELECT 
    regions.region_name,
    totals.total_orders,
    totals.revenue
FROM totals
LEFT JOIN regions ON regions.region_id = totals.region_id
ORDER BY revenue DESC;

Cohort style retention

SELECT 
    customers.full_name,
    EXTRACT(YEAR FROM customers.signup_date) AS signup_year,
    orders.customer_id,
    SUM(order_items.quantity) AS total_qty
FROM customers
LEFT JOIN orders ON orders.customer_id = customers.customer_id
LEFT JOIN order_items ON order_items.order_id = orders.order_id
GROUP BY 
    customers.full_name,
    EXTRACT(YEAR FROM customers.signup_date),
    orders.customer_id;

Payment funnel


WITH success AS (
    SELECT order_id, status FROM payments WHERE status = 'Success'
),
failed AS (
    SELECT order_id, status FROM payments WHERE status = 'Failed'
),
refunded AS (
    SELECT order_id, status FROM payments WHERE status = 'Refunded'
)
SELECT 
    orders.order_id,
    payments.status,
    success.status  AS success_status,
    failed.status   AS failed_status,
    refunded.status AS refunded_status
FROM orders
LEFT JOIN payments  ON payments.order_id  = orders.order_id
LEFT JOIN success   ON success.order_id   = orders.order_id
LEFT JOIN failed    ON failed.order_id    = orders.order_id
LEFT JOIN refunded  ON refunded.order_id  = orders.order_id;

select 
    count (DISTINCT orders.order_id) as total_orders,
    count (case when payments.status = 'Success' then 1 end) as sucessfull,
    count (case when payments.status = 'Failed' then 1 end) as failed,
    count (case when payments.status = 'Refunded' then 1 end) as Refunded,
    round(count (case when payments.status = 'Success' then 1 end) * 100 / count (DISTINCT orders.order_id) )as sucessfull_pct,
    round(count (case when payments.status = 'Failed' then 1 end)* 100 / count (DISTINCT orders.order_id)  )as failed_pct,
    round(count (case when payments.status = 'Refunded' then 1 end)* 100 / count (DISTINCT orders.order_id) ) as Refunded_pct
from orders
left join payments on payments.order_id = orders.order_id

*/



