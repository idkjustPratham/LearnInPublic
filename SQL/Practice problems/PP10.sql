/*
10. From job_posting_fact return all columns. Rename job_via,job_posted_site,salary_year_avg.
*/
select
    job_via as via,
    salary_year_avg as avg_salary
from job_postings_fact
limit 10;