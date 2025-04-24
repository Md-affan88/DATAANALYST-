
drop database collage;

create database collage;

create table student(
    id int primary key,
    name varchar(20),
    markes varchar(20),
    grade varchar(10),
    city varchar(20)
    );
-- drop table students;
insert into student
(id ,name,markes,grade,city)    
values
(101,"amit",69,"C","pune"),
(102,"arun",80,"B","mumbai"),
(103,"anand",93,"A","delhi"),
(104,"saurabh",95,"A","mumbai"),
(105,"harsh",87,"B","delhi"),
(106,"anubhav",17,"F","pune");

select markes from student;
select city from student;
select grade from student;
select * from student;
select * from student where markes > 80;
select * from student where city ='delhi';
select * from student where markes > 80 and city = "mumbai";
select * from student where markes+10 >100;
select * from student where city ="pune" ;
select * from student where markes = 95 ;
select * from student where markes >90 or city ="pune";
select * from student where markes = 80 and 90 ;
select * from student where city in ("delhi","pune") ;
select * from student where city in ("delhi","pune","kolkata") ;
select * from student where city not in ("delhi","pune") ;
select * from  student limit 3;
select * from student where markes > 75 limit 3;
select * from student order by city asc;
select * from student order by city asc limit 3;
select * from student order by markes desc ;
select * from student order by markes desc limit 3;
select  max(markes) from student;
select min(markes) from student ;
select avg(markes) from student;
select sum(markes) from student;
select count(markes) from student;
select city from student group by city;
select city,name from student group by city,name;
select city,name,count(id) from student group by city,name;
select city,avg(markes) from student group by city;
select city,avg(markes) from student group by city order by avg(markes);
select grade from student group by grade;
select grade from student group by grade order by grade;
select grade,count(id) from student group by grade order by grade;
select city ,count(id) from student group by city having max(markes) > 90;
select city from student where grade ="A" group by city;

set sql_safe_updates = 0;

update student set grade ="o" where grade ="A";

update student set markes = 97 where id =103;

update student set markes = markes +1;
delete from student where markes < 33;

create table dept(
    id int primary key,
    name varchar(20)
    );
    
create table teacher (
    id int primary key ,
    name varchar (20),
    dept_id int,
    foreign key (dept_id) references dept(id)
    
    );
        
alter table student add column age int;

alter table student drop column age  ;

alter table student add column age int not null default 19;

select avg(markes) from student;

select name,markes from student where markes >86;

select name ,markes from student where markes > (select avg(markes) from student);

select id from student where id%2 = 0;

select name from student where id in (102,104);
select name,id,markes from student where id in (102,104);

select name,id from student where id in (select id from student where id%2 = 0);

select * from student where city ="delhi";

select max(markes) from (select * from student where city ="mumbai") as temp; 

select max (markes ) from student where  city = "delhi";

create view view1 as
select id,name, markes from student;

select * from view1;



 

select *from student;















drop table student;