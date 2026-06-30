/*
Section 2 — Filtering & Pattern Matching
Concepts: SELECT, WHERE, LIKE, BETWEEN, DISTINCT, wildcards, aliases

List all customers from cities that start with the letter 'K'.
Find all products whose name contains 'air' (case-insensitive).
Get all orders placed between 1st July 2023 and 31st December 2023.
List distinct payment methods used across all transactions.
Find all customers whose email ends with '@email.com' and who have no phone number on record.
Use aliases to display: customer full name as Customer, city as Location, and signup year as Member Since.
*/

/*
select * from customers
where city like 'K%';

select * from products
where product_name like '%Air%';

select * from orders
where order_date between '2023-07-01' and '2023-12-31';

select DISTINCT method as Payment_Methods from payments

select * from customers
where email like '%email.com' and phone is NULL;

select full_name as Customer, city as Location, signup_date as Member_since from customers

*/