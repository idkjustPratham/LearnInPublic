/*
21. Data types, table creation and manipulateion.
*/
create table job_applied (
    job_id int,
    application_sent_date date,
    custom_resume boolean,
    resume_file_name varchar(200),
    cover_letter_sent boolean,
    cover_letter_file_name varchar (200),
    status varchar(25)
);
insert into job_applied
(
    job_id,
    application_sent_date,
    custom_resume,
    resume_file_name,
    cover_letter_sent,
    cover_letter_file_name,
    status
)
values (
    1,
    '2026-4-27',
    true,
    'resume1.pdf',
    true,
    'cover_letter1.pdf',
    'submitted'
),(
    2,
    '2026-4-28',
    false,
    'resume2.pdf',
    false,
    'cover_letter2.pdf',
    'not submitted'
);


Alter table table_name
	Add col_name datatype,
	Rename column col_name to New_name,
	Alter column col_name type datatype,
	Drop column col_name

alter table job_applied
add contact varchar(10);

Update-for data, set-rename, where
update job_applied
set contact = 'Pratham'
where job_id = 1;
