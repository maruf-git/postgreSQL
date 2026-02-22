-- group by with filtering(having)

-- courses with more than 2 students

select course, count(course) as student_count from students
group by course
having count(course) > 2; 

-- having filters on each group
-- where filters on each row in the table

-- countries with average student age is greater than 21
select country, avg(age) from students
group by country
having avg(age) > 21;







