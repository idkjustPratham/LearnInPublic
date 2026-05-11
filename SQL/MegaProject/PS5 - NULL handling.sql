/*
Section 5 — NULL Handling
Concepts: IS NULL, IS NOT NULL, COALESCE, NULLIF

List all customers where phone number is NULL.
Display customer names with their phone — if phone is NULL, show 'Not Provided' using COALESCE.
Find orders where coupon_code is NULL and status is 'Delivered'. How many customers never used a coupon?
Use NULLIF to avoid division-by-zero when computing average discount only for orders where discount_pct > 0.

/*
select * from customers
where phone is NULL

select full_name,phone from customers

select * from orders
where coupon_code is NULL AND status <> 'Delivered'
*/
q 25 pending