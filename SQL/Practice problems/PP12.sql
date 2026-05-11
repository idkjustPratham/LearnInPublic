/*
12. In invoices fact table add,subtract,multiply,divide hours spent and hours rate.
*/
SELECT 
	hours_spent + hours_rate as Addition,
    hours_spent - hours_rate as subtraction,
	hours_spent * hours_rate as multiplication,
	hours_spent / hours_rate as division

FROM invoices_fact
