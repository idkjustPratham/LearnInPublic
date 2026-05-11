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