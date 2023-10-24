use qa32e_readonly;

-- 1. Prepare a list of offices sorted by country, state, city.
SELECT
country,
state,
city
FROM offices;

-- 2. How many employees are there in the company?

SELECT count(employeeNumber) AS amountOfEmployees
FROM employees;

-- 3. What is the total of payments received?

SELECT SUM(amount) AS totalAmount
FROM payments;

-- 4. List the product lines that contain 'Cars'.

SELECT *
FROM products
WHERE productLine LIKE '%Cars%';

-- 5. Report total payments for October 28, 2004.

SELECT SUM(amount) as total
FROM payments
WHERE paymentDate = '2004-10-28';

-- 6.Report those payments greater than $100,000.

SELECT *
FROM payments
WHERE amount > 100000;


-- 7. List the products in each product line.

SELECT productLine
FROM products;

-- 8. How many products in each product line?

SELECT COUNT(productLine) as result
FROM products;

-- 9. What is the minimum payment received?

SELECT MIN(amount)
FROM payments;

-- 10. List all payments greater than twice the average payment.

SELECT *
FROM payments
WHERE amount > (SELECT AVG(amount) * 2 FROM payments);

-- 11. What is the average percentage markup of the MSRP on buyPrice?

SELECT
AVG(MSRP/buyPrice) * 100 as profit
FROM products;

-- 12. How many distinct products does ClassicModels sell?

SELECT DISTINCT COUNT(productName)  
FROM products
WHERE productLine = 'Classic Cars';

-- 13. Report the name and city of customers who don't have sales representatives?

SELECT *  
FROM customers
WHERE salesRepEmployeeNumber IS NULL;

-- 14. What are the names of executives with VP or Manager in their title? 
-- Use the CONCAT function
-- to combine the employee's first name and last name into a single field for reporting.

SELECT  CONCAT(firstName,' ', lastName) as result, jobTitle  
FROM employees
WHERE (jobTitle LIKE '%VP%' OR  jobTitle LIKE '%Manager%');

-- 15. Which orders have a value greater than $5,000?

SELECT orderNumber
FROM orderdetails
WHERE (SELECT SUM(quantityOrdered * priceEach) FROM orderdetails) > 5000
GROUP BY orderNumber;

 