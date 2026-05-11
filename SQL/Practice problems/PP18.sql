/*
18. retrive job titles for and company name for data scientist. Use job posting fact and company dim
*/
select
    jpf.job_title_short,
    comp.company_id,
    comp.name
from job_postings_fact as jpf
LEFT JOIN company_dim as comp on jpf.company_id = comp.company_id
limit 10;