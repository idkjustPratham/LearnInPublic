/*
Section 14 — Normalization (Conceptual + Applied)
Concepts: 1NF, 2NF, 3NF

Document in comments/notes: How does this schema satisfy 1NF, 2NF, and 3NF? Identify one example of a potential normalization violation you deliberately avoided.
Create an addresses table to split city/region out of customers into a proper normalized structure. Write the migration INSERT.
*/

/*
The schema is already normalized during creation by claude.

CREATE TABLE addresses(
    address_id int primary key,
    customer_id int,
    city varchar(50),
    region_id int,
    foreign key (customer_id) references customers(customer_id),
    foreign key (region_id) references regions(region_id)
);
insert into addresses
    select 
        row_number() over (order by customer_id),
        customer_id,
        city,
        region_id
from customers;
*/
select * from addresses