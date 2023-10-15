USE hr;

-- 1.Вывести job_id тех сотрудников, которые зарабатывают больше своего менеджера(прием SELF join)

SELECT 
t2.job_id
FROM employees t1 
INNER JOIN employees t2 
ON t1.manager_id = t2.employee_id
WHERE t2.commission_pct IS NULL;

-- 2.Вывести имя, фамилию и город сотрудников, которые работают в Seattle или Toronto (участвуют три таблицы)

SELECT 
t3.first_name,
t3.last_name,
t1.city
FROM locations t1 
INNER JOIN departments t2
ON t1.location_id = t2.location_id
INNER JOIN employees t3
ON t2.department_id = t3.department_id
WHERE t1.city IN ('Seattle', 'Toronto');


-- 3.Вывести имя, фамилию, название департамента и название должности сотрудника(участвуют три таблицы)

SELECT
t1.first_name,
t1.last_name,
t2.department_name,
t3.job_title
FROM employees t1
INNER JOIN departments t2
ON t1.department_id = t2.department_id
INNER JOIN jobs t3
ON t1.job_id = t3.job_id;





 