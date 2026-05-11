/*
2. In job_postings_fact table get the columns job_id, job_title_short, job_location, job_via columns and order by asc job_location.
*/

select
    job_id,
    job_title_short,
    job_location,
    job_via
from job_postings_fact
order BY
    job_location asc
limit 10;