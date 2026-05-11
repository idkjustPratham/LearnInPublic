/*
19. fetch all jobs with skils which are located in new york and have health insturance.
*/

select *
from job_postings_fact as jpf
left join skills_job_dim as sjd on jpf.job_id = sjd.job_id
left join skills_dim as sd on sjd.skill_id = sd.skill_id
where job_location = 'New York, NY' AND job_health_insurance is TRUE
limit 10; 
