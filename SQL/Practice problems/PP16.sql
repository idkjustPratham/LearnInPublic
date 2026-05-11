/*
16. check for categories that donot have skills assigned to them.
*/

select  
   *
from skills_dim
where skills is NULL
limit 10;
