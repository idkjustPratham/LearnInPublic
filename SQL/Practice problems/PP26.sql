/*
26. Categorize salary for each job posting as High, Medium, Low for Data Analyst.
*/

SELECT
    job_title_short,
    salary_year_avg,
    CASE
        WHEN salary_year_avg > (SELECT AVG(salary_year_avg) FROM job_postings_fact WHERE job_title_short = 'Data Analyst') THEN 'High'
        WHEN salary_year_avg = (SELECT AVG(salary_year_avg) FROM job_postings_fact WHERE job_title_short = 'Data Analyst') THEN 'Medium'
        WHEN salary_year_avg < (SELECT AVG(salary_year_avg) FROM job_postings_fact WHERE job_title_short = 'Data Analyst') THEN 'Low'
        ELSE 'Unknown'
    END AS salary_bucket
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
group BY salary_year_avg ,job_title_short
ORDER BY salary_year_avg DESC;