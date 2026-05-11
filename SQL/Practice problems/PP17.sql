/*
17. find job postings that dont have annual salary or hourly rate.
*/

select *
from job_postings_fact
where salary_hour_avg is null OR
salary_hour_avg is null
limit 10;