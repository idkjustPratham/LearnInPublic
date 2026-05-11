/*
13. In job_postings_fact count total number of job offers that provide health insturance. 
*/
select count(*)
from job_postings_fact
where job_health_insurance = true
limit 10;

