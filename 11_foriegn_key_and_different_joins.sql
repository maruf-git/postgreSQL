-- foriegn key

-- user table
create table users(
  id serial primary key,
  username varchar(50) not null
);

-- post table
create table posts(
  id serial primary key,
  title text not null,
  user_id int references users(id)
);

insert into users (username) values ('maruf');
insert into users (username) values ('rahim');
insert into users (username) values ('karim');
insert into users (username) values ('sadia');
insert into users (username) values ('nabila');

insert into posts (title, user_id) values ('My first post', 1);
insert into posts (title, user_id) values ('Learning PostgreSQL', 1);
insert into posts (title, user_id) values ('Foreign key practice', 2);
insert into posts (title, user_id) values ('Backend journey', 3);
insert into posts (title, user_id) values ('Database design tips', 5);
insert into posts (title) values ('no topic chilling only');

-- join (inner join)
select title,username from posts
join users
on posts.user_id = users.id;

-- display all information
select * from posts
join users
on posts.user_id = users.id;

select p.id as post_id,title,username from posts as p
join users as u
on p.user_id = u.id;

-- same as
select p.id as post_id,title,username from posts as p
inner join users as u -- join manei inner join
on p.user_id = u.id;


-- note: join and inner join is 100% same it is just syntax difference
-- inner join
select * from posts
inner join users
on posts.user_id = users.id;
-- join
select * from posts
join users
on posts.user_id = users.id;

-- note: left join and left outer join is 100% same it just syntax difference
-- left join
select * from posts
left join users
on posts.user_id = users.id;
-- left outer join
select * from posts
left outer join users
on posts.user_id = users.id;

-- note: right join and right outer join is 100% same it just syntax difference
-- right join
select * from posts
right join users
on posts.user_id = users.id;
-- right join
select * from posts
right outer join users
on posts.user_id = users.id;

-- note: full join and full outer join are 100% same it is just syntax difference
-- full join
select * from posts
full join users 
on posts.user_id = users.id;
-- full outer join
select * from posts
full outer join users 
on posts.user_id = users.id;










