/*
Section 11 — Window Functions
Concepts: ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD, SUM OVER, AVG OVER

Rank customers by total spend using RANK() and DENSE_RANK() — show the difference.
Assign row numbers to orders per customer, ordered by order_date. Identify each customer's first order.
Running total of revenue month by month using SUM() OVER (ORDER BY month).
Use LAG() to compute month-over-month revenue change.
For each product sold, show the previous product ordered in the same order using LAG() OVER (PARTITION BY order_id).
*/

/*

select *, rank() over (order by amount_paid desc) from payments
select *, dense_rank() over (order by amount_paid desc) from payments

select * from (select *, row_number() over (partition by customer_id order by order_date) as rn from orders)
where rn=1
*/
q 53-55 pending
