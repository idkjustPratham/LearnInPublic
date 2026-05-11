/*
24. Find average yearly and hourly salary,after june 1, 2023
*/

select 
    job_title_short,
    job_posted_date,
    round(avg(salary_hour_avg)) as hour_avg,
    round(avg(salary_year_avg)) as year_avg
from job_postings_fact
where 
    job_posted_date > '2023-06-01'
group BY
    job_title_short,job_posted_date
limit 10;
