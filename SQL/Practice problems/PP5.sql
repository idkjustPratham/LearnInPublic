/*
5. In job_postings_fact table get the job_id,job_title_short,job_locaiton,job_via,salary_year_avg. Return only 'Full time jobs'
*/

select 
    job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg,
    job_schedule_type
from job_postings_fact
where job_schedule_type = 'Full-time'
Limit 10;
