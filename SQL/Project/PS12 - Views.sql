/*
Section 12 — Views
Concepts: CREATE VIEW, querying views

Create a view vw_customer_summary showing: customer name, city, region, total orders, total spend, premium status.
Create a view vw_product_performance showing: product name, category, total units sold, total revenue, profit.
Create a view vw_monthly_revenue showing: year, month, total revenue, total orders.
Query your views to answer: Which region generated the highest revenue? Which product is most profitable?
*/

/*CREATE VIEW vw_customer_summary AS
select full_name,city,region_id,is_premium
from customers;
select * from vw_customer_summary


create view vw_product_performance AS
select * from products;
select * from vw_product_performance

CREATE VIEW vw_monthly_revenue
select * from returns;
select * from vw_monthly_revenue
*/
