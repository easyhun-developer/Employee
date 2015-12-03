

select * from dept;

select * from emp;

select *
  from dept d inner join emp e
    on d.deptno = e.deptno
 where d.deptno = 81  


--
-- Member Table
-- DDL(Data Definition Language)
drop table member;

create table member (
	id				int,
	email			varchar(255),
	name			varchar(255),
	password 		varchar(255),
	register_date	date,
	constraint pk_id primary key (id)
);

-- 
-- Member CRUD (Create, Read, Update, Delete)
-- DML(Data Manipulation Language)
-- Create

create sequence member_id_seq

insert into member
(id, email, name, password, register_date)
values
(member_id_seq.nextval, 'xxx@yyy', '홍길동', '1234', '2015/11/11')

-- Read
select * from member;

-- Update
update member
   set name = '홍순이2',
       password = '12349876' 
 where id = 5;
 
-- Delete
delete from member
 where id = 1;

--
-- city
-- 
drop table city
 
create table city (
  id			numeric(11),
  name			char(50) not null,
  countrycode	char(3) not null,
  district		char(30) not null,
  population	numeric(11) not null,
  constraint city_pk_id primary key (id)
)

select count(*) from city

select rownum, c.*
  from city c
-- where rownum >= 11
--   and rownum <= 20

 order by countrycode asc, name asc

select * from city where countrycode='KOR'

delete from city

drop sequence city_id_generator;

create sequence city_id_generator start with 4200;

select city_id_generator.nextVal from dual;


insert into city
(
	id,
	name, 
	countrycode, 
	district, 
	population
)
values
(
	city_id_generator.nextVal,
	'seoul',
	'KOR',
	'Asia',
	99998
)

--
-- inner join
-- left outer join
-- right outer join
--
select * from dept
select * from emp

select d.deptno as dept_deptno,
	   d.dname  as dept_dname,
	   d.loc    as dept_loc,
	   e.empno  as emp_empno,
	   e.ename  as emp_ename,
	   e.job	as emp_job
  from dept d inner join emp e
    on d.deptno = e.deptno
    
select d.deptno as dept_deptno,
	   d.dname  as dept_dname,
	   d.loc    as dept_loc,
	   e.empno  as emp_empno,
	   e.ename  as emp_ename,
	   e.job	as emp_job
  from dept d left outer join emp e 
    on d.deptno = e.deptno
    
    
delete from dept where deptno = 61  


select outer.*
  from ( select rownum r, inner.*
  		   from ( select *
  		   			from city 
  		   		   order by countrycode asc, name asc
  		        ) inner
  	   ) outer
 where outer.r >= 21
   and outer.r <= 30

/*
 * Country
 */
drop table country   
   
create table country (
  code 				char(3),
  name 				char(52),
  continent 		char(50),
  region 			char(26),
  surfacearea 		numeric(10,2),
  indepyear 		numeric(6),
  population 		numeric(11),
  lifeexpectancy 	numeric(3,1),
  gnp 				numeric(10,2),
  gnpold 			numeric(10,2),
  
  localname 		char(45),
  governmentform 	char(45),
  headofstate 		char(60),
  capital 			numeric(11),
  code2 			char(2),
  constraint pk_country_code primary key (code)
)


select * from city






 
 