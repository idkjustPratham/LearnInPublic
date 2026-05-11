/*
3. In job_postings_fact table get the columns job_id, job_title_short, job_location, job_via, salary_year_avg columns and and only look at rows where job_title_short is 'Data engineer'
*/

select
    job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
from job_postings_fact
where 
    job_title_short = 'Data Engineer'
Limit 10;