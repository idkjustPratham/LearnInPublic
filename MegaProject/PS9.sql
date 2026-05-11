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
