/*
15. calcualte total ernings per project, simulate a hike of 5$
*/


SELECT 
project_id,
	sum(hours_spent * hours_rate) as total_earnings,
    hours_rate + 5 as hike
FROM invoices_fact
group by
	Project_id
limit 10;
