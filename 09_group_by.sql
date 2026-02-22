-- group by
select country, avg(age) from students
group by country;

-- gorup by is split, aggrigate apply and combine process

-- count students by country
select country,count(student_id) from students group by country;


-- count students by grade
select grade, count(*) from students group by grade;







