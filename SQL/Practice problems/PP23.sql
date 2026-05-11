-- Chapter 19 - Practice problem 6
-- Create monthwise tables
Create table january_jobs as
    select *
    from job_postings_fact
    where extract(month from job_posted_date) = 1;


Create table february_jobs as
    select *
    from job_postings_fact
    where extract(month from job_posted_date) = 2;


Create table march_jobs as
    select *
    from job_postings_fact
    where extract(month from job_posted_date) = 3;s
