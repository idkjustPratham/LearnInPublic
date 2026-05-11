/*
9. In job_posting_fact table find job_title 'Engineer' follwed by one character after. Get job_id, job_title and job_posted date.
*/

Select job_id,
    job_title,
    job_posted_date
from job_postings_fact
where job_title like '%Engineer_'
limit 10;
