/*
7. Get job details for both data and business analyst position where data analyst >100k,buisness analyst>70k. Job location in either 'Boston, MA'or anywhere.
*/

select * 
from job_postings_fact
where job_location in ('Boston, MA', 'Anywhere') and 
(
    job_title_short = 'Data Analyst' and salary_year_avg > 100000 OR
    job_title_short = 'Business Analyst' and salary_year_avg > 70000
)
Limit 10;