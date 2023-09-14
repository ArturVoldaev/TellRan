use hr;

select  
	* 
from employees;

select  
	job_id 
from employees
where job_id = 'IT_PROG';

select  
	first_name,
    last_name
from employees
where salary > 10000.00;

select  
	first_name,
    last_name
from employees
where salary between 10000.00 and 20000.00;

select  
	first_name,
    last_name
from employees
where department_id NOT IN(60, 100, 30);

select  
	first_name,
    last_name
from employees
where department_id IN(90);

select 
	last_name
from employees
where last_name like 'a%';

select 
	salary
from employees
where first_name = 'Lex' and last_name = 'De Haan';

use departments;

select  
	* 
from departments;

select 
	department_name
from departments
where location_id in (1700);

