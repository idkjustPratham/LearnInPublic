/*
25. Count number of job postings by month in 2023.
    Adjust date to be in US Eastern time (EST/EDT).
*/
SELECT
    COUNT(*) AS job_count,
    EXTRACT(MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York') AS month
FROM job_postings_fact
WHERE (job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York')
      BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY month
ORDER BY month;