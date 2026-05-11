/*
1. Get unique (distinct) job locations in job_postings_fact table. Order in alphabetical order(asc).
*/
select 
    DISTINCT job_location
FROM job_postings_fact
order by 
    job_location asc
limit 10;