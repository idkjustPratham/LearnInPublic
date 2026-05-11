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
