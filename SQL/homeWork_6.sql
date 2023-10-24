use shop;

-- 1

SELECT 
CNAME
FROM customers
WHERE CUST_ID IN (
	SELECT
	CUST_ID 
	FROM orders 
	WHERE AMT > 1000);
    
-- 2
SELECT 
CNAME
FROM customers
WHERE CUST_ID IN (
	SELECT
	CUST_ID 
	FROM orders 
	WHERE AMT > 1000);
    
-- 3

SELECT 
t1.SNAME,
t1.COMM - t2.COMM AS difference
FROM SELLERS t1
LEFT JOIN SELLERS t2
ON t1.SELL_ID = t2.BOSS_ID;

-- 4

SELECT
t1.CNAME,
t2.SNAME,
t2.CITY
FROM customers t1
INNER JOIN sellers t2
ON t1.CITY = t2.CITY;


