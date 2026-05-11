/*
Section 9 — CASE Expressions
Concepts: CASE WHEN, ELSE

Segment customers by membership duration:

< 1 year → 'New'
1–2 years → 'Regular'
2 years → 'Loyal'

Classify orders by order value (after discount) into 'Low' (<5K), 'Mid' (5K–50K), 'High' (>50K).
For each product, label margin as 'Low Margin' (<20%), 'Healthy' (20–40%), 'Premium' (>40%).
Flag payments as 'Discount Applied' or 'Full Price' based on whether the order had a coupon code.
*/

/*


SELECT
    full_name,
    CASE
        WHEN ('2026-05-09'::date - signup_date::date) < 365 THEN 'New'
        WHEN ('2026-05-09'::date - signup_date::date) BETWEEN 365 AND 730 THEN 'Regular'
        WHEN ('2026-05-09'::date - signup_date::date) > 730 THEN 'Loyal'
    END AS membership_tier
FROM customers;

SELECT *,
    CASE
        WHEN after_dis < 5000 THEN 'Low'
        WHEN after_dis BETWEEN 5000 AND 50000 THEN 'Healthy'
        WHEN after_dis > 50000 THEN 'Premium'
    END AS order_tier
FROM (
    SELECT 
        order_items.*,
        orders.discount_pct,
        orders.status,
        (order_items.unit_price - (order_items.unit_price * orders.discount_pct / 100)) AS after_dis
    FROM order_items
    LEFT JOIN orders ON order_items.order_id = orders.order_id
) AS sub;


select *, 
CASE
    when coupon_code is NOT NULL THEN 'Discount applied'
    else 'Full price'
END
from orders

*/
