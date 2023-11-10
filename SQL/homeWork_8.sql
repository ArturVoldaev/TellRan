use hr;

SELECT t1.first_name, t1.last_name, t1.salary, t1.department_id
FROM employees t1
WHERE t1.salary = (
  SELECT MAX(salary)
  FROM employees
  WHERE department_id = t1.department_id
);