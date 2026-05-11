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