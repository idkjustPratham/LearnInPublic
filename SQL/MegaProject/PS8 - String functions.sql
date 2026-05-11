/*
Section 8 — String Functions
Concepts: UPPER, LOWER, CONCAT, LENGTH, SUBSTRING, TRIM, REPLACE

Display all customer names in UPPERCASE.
Create a display label combining product name and price: e.g., Samsung Galaxy S23 — ₹62999.
Extract the domain from customer email addresses (everything after '@').
Find all products whose name has more than 20 characters.
Replace 'Delivered' with 'Completed' in the status column for display purposes (do not update the table).
*/
/*

select upper(full_name) from customers

select concat_ws('-',product_name,price) from products

select substring(email from position('@' in email)) as domain from customers

select * from products
where length(product_name) > 20;

update orders
set status = replace(status,'Delivered','Compleated')
select * from orders
 */