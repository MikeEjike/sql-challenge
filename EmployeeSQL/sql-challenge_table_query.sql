create table departments(
dept_no varchar(50) Primary Key,
dept_name varchar(50)
)
create table titles(
title_id varchar(50) Primary Key,
title varchar(50)
)
create table salaries(
emp_no int Primary Key,
salary int
)
create table dept_manager(
dept_no varchar(50),
emp_no int
)
create table employees(
emp_no int Primary Key,
emp_title varchar(50),
birth_date date,
first_name varchar(50),
last_name varchar(50),
sex varchar(50),
hire_date date
)
create table dept_emp(
emp_no int,
dept_no int
)