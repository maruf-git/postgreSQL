drop table if exists students;

create table students(
  id serial,
  username varchar(50) not null,
  email varchar(50) unique,
  age int check (age>=18),
  isActive boolean default true,
  primary key(id),
);

insert into students(username,email,age)
values 
('maruf','maruf@gmail.com',23),
('rifat','rifat@gmail.com',24),
('shifat','shifat@gmail.com',25),
('taushif','taushif@gmail.com',26);

select * from students;













