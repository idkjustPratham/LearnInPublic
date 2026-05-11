/*
Section 1 — Database Setup & Basics
Concepts: DDL, DML, integrity constraints, data types

Write the CREATE TABLE statements for all 8 tables with appropriate data types, primary keys, foreign keys, NOT NULL, and UNIQUE constraints. (The schema is provided — reproduce it from scratch.)
Insert at least 3 new customers using INSERT INTO.
Update the stock_qty of product_id 15 to 0 since it is discontinued.
Delete the customer with no phone number and no orders.
Use TRUNCATE on a test table you create, and explain how it differs from DELETE.
Demonstrate COMMIT and ROLLBACK with a transaction that updates an order status.
*/

/* 1 - 
create table ps1
(
    SrNo int primary key,
    name varchar(20),
    stock_qty int,
    phone int
);

insert into ps1 values (
    2, 'Patil', 15, 1234567890
);

update ps1 SET stock_qty = 0 where srno = 2;

select * from ps1
 
commit;

truncate table ps1;

rollback;

*/
