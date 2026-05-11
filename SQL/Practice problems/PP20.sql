/*
20. Find average salary and number of job postings for each skill.
*/
select
	skd.skills,
    count(jpf.job_id)  as No_of_postings,
	round(avg(jpf.salary_year_avg)) as avg_salary
from
	job_postings_fact as jpf
left join 
	skills_job_dim as skjd on jpf.job_id = skjd.job_id
left join
	skills_dim as skd
    on skd.skill_id = skjd.skill_id
group by
	skd.skills
order by
	no_of_postings DESC
limit 10;