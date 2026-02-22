-- limit, offset

select * from students;

-- limit
select * from students
limit 5;

-- offset
select * from students
limit 5 offset 2; -- gives 5 students and removes first 2 students

-- limit and offset are used for pagination
-- select * from students 
-- limit perpagedatacount offset perpagedatacount * (pageno-1);






