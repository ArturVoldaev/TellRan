use uni;

/*

Make it as part of homework

8.Вывести имя студента и имена  старост, которые есть на курсах, которые он проходит
"Display the name of the student and the names of the headman representatives 
who are present in the courses that he is taking."
*/

SELECT
t1.title as course_name,
t2.name as names_of_headman,
t3.name as names_of_studen
FROM Courses t1
INNER JOIN Students t2
ON t1.headman_id = t2.id
INNER JOIN Students t3
ON t3.id = t1.id;


use shop;

-- 2 

SELECT 
t1.CNAME,
t3.SNAME
FROM customers t1
INNER JOIN orders t2
ON t1.CUST_ID = t2.CUST_ID
INNER JOIN sellers t3
ON t2.SELL_ID = t3.SELL_ID;


-- 3

SELECT 
t1.CNAME
FROM customers t1
LEFT JOIN orders t2
ON t1.CUST_ID = t2.CUST_ID
WHERE ORDER_ID IS NULL;

SELECT 
CNAME
FROM customers
WHERE CUST_ID NOT IN (
	SELECT CUST_ID FROM orders
);


