/*

select *, rank() over (order by amount_paid desc) from payments
select *, dense_rank() over (order by amount_paid desc) from payments

select * from (select *, row_number() over (partition by customer_id order by order_date) as rn from orders)
where rn=1
*/
q 53-55 pending
