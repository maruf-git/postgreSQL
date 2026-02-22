drop table if exists students;


select * from students;
-- null in postgres is always null
-- coalesce function in postgres

select coalesce(null,null,2,3);
select coalesce(null,1,null,2,3);

insert into students
values('5031','Rifat','Rahman'); -- rest of the data is null

select first_name, last_name,coalesce(email, 'Not Provided') as email from students;




