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