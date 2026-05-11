/*
14. In job_postings_fact count total number of job offers for each country.
*/

select count(*) as number_of_job_offers,
    job_location
from job_postings_fact
group BY
    job_location
limit 10;