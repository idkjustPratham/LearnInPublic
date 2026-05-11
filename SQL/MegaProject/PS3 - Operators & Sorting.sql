/*
Section 3 — Operators & Sorting
Concepts: arithmetic, logical, comparison operators, ORDER BY, LIMIT

Calculate the profit margin per product: (price - cost_price) / price * 100, aliased as margin_pct. Show top 5 most profitable products.
List all orders where discount is greater than 0, sorted by discount descending.
Show all products that are active AND have stock below 100.
Find all payments where amount paid is above ₹50,000 OR method is 'COD'.
*/

/*
select *,round((price - cost_price)/price * 100) as margin_pct from products
order by margin_pct desc
limit 5;

select * from orders
where discount_pct > 0
order by 
    discount_pct asc;

select * from products
WHERE is_active is TRUE AND stock_qty < 100;

select * from payments
WHERE amount_paid > 50000 OR method = 'COD'

*/