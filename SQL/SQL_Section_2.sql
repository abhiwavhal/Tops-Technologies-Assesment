
-- Section 2: Practical SQL Questions

-- 1.	Write a SQL statement to create a table employees with columns id, name, role, and salary.

create database test1;

use test1;

create table employees(
id int primary key,
name varchar(50) not null,
role varchar(50),
salary int not null);

-- 2.	How would you update the salary of a single employee in the employees table?
update employees
set salary = new_salary
where id = 101;

-- 3.	Construct a SQL query to find the third highest salary in the employees table.
select salary
from employees
order by salary desc
limit 1 offset 2;

-- 4.	Write a SQL statement to delete all employees who have a role of 'Intern'.
delete from employees
where role = 'Intern';


-- 5.	Write a SQL query to list employees and their roles, but only include roles that have more than five employees.
select role, count(*)
from employees
group by role
having count(*) > 5;