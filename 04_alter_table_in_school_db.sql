-- alter table in sql
-- alter table table_name action;
-- rename table name
-- add/drop column
-- rename column name
-- modify data type
-- setting default value
-- add/drop table level constraint

create table employee(
  id serial,
  name varchar(50),
  age int
);

-- rename a table
alter table employee
rename to teachers;

-- add a column
alter table teachers
add column email varchar(50);

-- drop a column
alter table teachers
drop column email;

-- rename a column
alter table teachers
rename column name to teachername;

-- modify data type
alter table teachers
alter column teachername type varchar(100);

-- add new constraint
alter table teachers
alter column email set not null;

-- drop constraint
alter table teachers
alter column email drop not null;

-- set default value
insert into teachers (teachername,age)
values
('maruf',24);

select * from teachers;

alter table teachers
alter column email set default 'test@gmail.com';

insert into teachers (teachername,age)
values
('rifat',24);

select * from teachers;

-- remove default
alter table teachers
alter column email drop default;

-- add table level constraint
alter table teachers
add constraint unique_teachers_email unique(email);

insert into teachers (teachername,age,email)
values
('shifat',24,'shifat@gmail.com');


alter table teachers
add constraint pk_teachers_id primary key(id);

-- drop table level constraint
alter table teachers
drop constraint unique_teachers_email;







