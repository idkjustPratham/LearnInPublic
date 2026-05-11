/*
8. In company_dim table find all company name tech followed by a single character.
*/

Select NAME
from company_dim
where name like '%Tech_'
Limit 10;