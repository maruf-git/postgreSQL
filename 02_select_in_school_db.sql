drop table if exists students;

-- create student table
create table students(
  student_id varchar(50) primary key,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  age int,
  grade char(2),
  course varchar(50),
  email varchar(100) unique,
  dob date,
  blood_group varchar(5),
  country varchar(30)
);


INSERT INTO students VALUES
('S001', 'Rahim', 'Ahmed', 20, 'A1', 'Computer Science', 'rahim.ahmed1@gmail.com', '2004-01-15', 'A+', 'Bangladesh'),
('S002', 'Karim', 'Hossain', 22, 'B1', 'Mathematics', 'karim.hossain2@gmail.com', '2002-03-22', 'B+', 'India'),
('S003', 'Ayesha', 'Islam', 19, 'A2', 'Physics', 'ayesha.islam3@gmail.com', '2005-07-10', 'O+', 'Pakistan'),
('S004', 'Nusrat', 'Jahan', 21, 'B2', 'Chemistry', 'nusrat.jahan4@gmail.com', '2003-09-05', 'AB+', 'Nepal'),
('S005', 'Tanvir', 'Hasan', 23, 'C1', 'Biology', 'tanvir.hasan5@gmail.com', '2001-11-18', 'A-', 'Sri Lanka'),

('S006', 'Sadia', 'Rahman', 20, 'A1', 'Computer Science', 'sadia.rahman6@gmail.com', '2004-02-12', 'B-', 'Bangladesh'),
('S007', 'Mehedi', 'Hasan', 24, 'B1', 'Statistics', 'mehedi.hasan7@gmail.com', '2000-06-30', 'O-', 'India'),
('S008', 'Farhana', 'Akter', 18, 'A2', 'English', 'farhana.akter8@gmail.com', '2006-04-25', 'A+', 'Pakistan'),
('S009', 'Rafi', 'Khan', 22, 'C2', 'Economics', 'rafi.khan9@gmail.com', '2002-08-14', 'B+', 'Nepal'),
('S010', 'Mim', 'Sultana', 21, 'B2', 'Sociology', 'mim.sultana10@gmail.com', '2003-12-01', 'AB-', 'Sri Lanka'),

('S011', 'Sabbir', 'Ahmed', 23, 'A1', 'Computer Science', 'sabbir.ahmed11@gmail.com', '2001-05-17', 'A+', 'Bangladesh'),
('S012', 'Tania', 'Kabir', 19, 'B1', 'Physics', 'tania.kabir12@gmail.com', '2005-10-09', 'O+', 'India'),
('S013', 'Arif', 'Mahmud', 20, 'A2', 'Mathematics', 'arif.mahmud13@gmail.com', '2004-07-21', 'B-', 'Pakistan'),
('S014', 'Jannat', 'Ara', 22, 'C1', 'Chemistry', 'jannat.ara14@gmail.com', '2002-02-28', 'A-', 'Nepal'),
('S015', 'Shakil', 'Islam', 21, 'B2', 'Biology', 'shakil.islam15@gmail.com', '2003-03-13', 'O-', 'Sri Lanka'),

('S016', 'Priya', 'Das', 18, 'A1', 'English', 'priya.das16@gmail.com', '2006-09-19', 'A+', 'Bangladesh'),
('S017', 'Rakib', 'Uddin', 24, 'B1', 'Economics', 'rakib.uddin17@gmail.com', '2000-12-11', 'B+', 'India'),
('S018', 'Sumaiya', 'Noor', 20, 'A2', 'Statistics', 'sumaiya.noor18@gmail.com', '2004-05-07', 'AB+', 'Pakistan'),
('S019', 'Fahim', 'Chowdhury', 23, 'C2', 'Computer Science', 'fahim.chowdhury19@gmail.com', '2001-08-23', 'O+', 'Nepal'),
('S020', 'Lamia', 'Haque', 19, 'B2', 'Sociology', 'lamia.haque20@gmail.com', '2005-01-30', 'A-', 'Sri Lanka'),

('S021', 'Imran', 'Ali', 22, 'A1', 'Physics', 'imran.ali21@gmail.com', '2002-04-16', 'B+', 'Bangladesh'),
('S022', 'Nabila', 'Siddique', 21, 'B1', 'Chemistry', 'nabila.siddique22@gmail.com', '2003-06-08', 'AB-', 'India'),
('S023', 'Hasib', 'Rahman', 20, 'A2', 'Mathematics', 'hasib.rahman23@gmail.com', '2004-11-27', 'O-', 'Pakistan'),
('S024', 'Rima', 'Khatun', 18, 'C1', 'English', 'rima.khatun24@gmail.com', '2006-03-03', 'A+', 'Nepal'),
('S025', 'Adnan', 'Mia', 24, 'B2', 'Economics', 'adnan.mia25@gmail.com', '2000-07-15', 'B-', 'Sri Lanka'),

('S026', 'Tasnim', 'Jerin', 19, 'A1', 'Biology', 'tasnim.jerin26@gmail.com', '2005-09-29', 'AB+', 'Bangladesh'),
('S027', 'Mahadi', 'Hassan', 23, 'B1', 'Statistics', 'mahadi.hassan27@gmail.com', '2001-02-05', 'A-', 'India'),
('S028', 'Ritu', 'Moni', 21, 'A2', 'Sociology', 'ritu.moni28@gmail.com', '2003-10-12', 'O+', 'Pakistan'),
('S029', 'Shuvo', 'Roy', 22, 'C2', 'Computer Science', 'shuvo.roy29@gmail.com', '2002-01-08', 'B+', 'Nepal'),
('S030', 'Mahi', 'Akter', 20, 'B2', 'Physics', 'mahi.akter30@gmail.com', '2004-06-18', 'A+', 'Sri Lanka');

-- select

select first_name,age from students;
select * from students;

-- command alias
select first_name as "First Name", age as User_age from students; -- must use double quoatation

-- sort
select first_name,blood_group,country,age from students
order by age desc
-- sort
select first_name,blood_group,country,age from students
order by age asc


-- distinct
select country from students;
select distinct country from students;
select distinct course from students;

-- select the students from bangladesh
select * from students
where country = 'Bangladesh';

select first_name,age,course,grade,country from students
where country = 'Bangladesh';


-- logical and, or, not in sql
-- select studetn with A1 grade in physiscs
select * from students
where course = 'Physics' and grade = 'A1';


-- select studetnts from the nepal or bangladesh
select * from students
where country = 'Nepal' or country = 'Bangladesh';

-- select students with a grade of 'A1' or 'B1' in Mathematics or Physics
-- multiple condition
select * from students
where (grade = 'A1' or grade = 'B1') and (course = 'Mathematics' or course = 'Physics');

-- select students from nepal or bangladesh and the age is 22
select first_name,age,country from students
where (country = 'Nepal' or country = 'Bangladesh') and age = 22;

-- comparision operators
-- select students older than 20
select * from students
where age>20;

select first_name,country from students
where country != 'Nepal'; -- is not eqal operator

-- same as
select first_name,country from students
where country <> 'Nepal'; -- <> is not equal operator

-- between operator
-- seelct students whose age is between 20 and 22
select first_name,age from students
where age>=20 and age<=22;

-- same as
select first_name,age from students
where age between 20 and 22;

-- in operator
select first_name,country from students
where country = 'Bangladesh' or country = 'Nepal' or country='Pakistan';
-- same as
select first_name,country from students
where country in ('Bangladesh', 'Nepal', 'Pakistan');


-- like operator
-- used when we dont know exact but we know the pattern

-- select students whose first name starts with 'A'
select * from students
where first_name like 'A%'; -- workd like regx

-- select students whose first name starts with 'A' and has total 4 characters
select * from students
where first_name like 'A___'; -- workd like regx

-- select students whose first name ends with 'a'
select * from students
where first_name like '%a'; -- workd like regx

-- select studetnws whose email has gmail.com
select first_name,email from students
where email like '%gmail.com';

-- like is case sensitive
-- ilike is case insensitive

-- not operator
-- select students whose country is not bangladesh
select first_name,country,course from students
where not country = 'Bangladesh';
