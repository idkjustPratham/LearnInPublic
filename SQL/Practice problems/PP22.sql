/*
22. Date functions
*/

-- :: - type casting
--Select - 2026-04-27 :: Date,
select
    job_title_short,
    job_location,
    job_posted_date::DATE
from job_postings_fact
limit 10;

--AT TIME ZONE ‘IST’
 select
    job_title_short,
    job_location,
    job_posted_date at time zone 'utc' at time zone 'ist'
from job_postings_fact
limit 10;

-- Extract 
--Select extract (year/month/day from col_name)
select
    job_title_short,
    job_location,
    job_posted_date at time zone 'utc' at time zone 'ist',
    extract (month from job_posted_date)
from job_postings_fact
limit 10;