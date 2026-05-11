/*
4. In job_postings_fact table get the job_id,job_title_short,job_locaiton,job_via,salary_year_avg. Return rows where job location is 'Tampa, FL'
*/

select
    job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
from job_postings_fact
where 
    job_location in ('Tampa, FL')
Limit 10;