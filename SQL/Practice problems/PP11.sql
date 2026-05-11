/*
11.Look for non senior data and business analyst roles. get job title,location and avg yearly salary.
*/

SELECT
	job_title_short,
    job_location,
    salary_year_avg
FROM job_postings_fact 
where
	job_title_short <> '%Senior%' or
    job_title_short = 'buisness analyst' 
limit 10;
