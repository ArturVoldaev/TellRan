use qa32e_readonly;

-- 1. Prepare a list of offices sorted by country, state, city.
SELECT 
    country, state, city
FROM
    offices;

-- 2. How many employees are there in the company?

SELECT 
    COUNT(employeeNumber) AS amountOfEmployees
FROM
    employees;

-- 3. What is the total of payments received?

SELECT 
    SUM(amount) AS totalAmount
FROM
    payments;

-- 4. List the product lines that contain 'Cars'.

SELECT 
    *
FROM
    products
WHERE
    productLine LIKE '%Cars%';

-- 5. Report total payments for October 28, 2004.

SELECT 
    SUM(amount) AS total
FROM
    payments
WHERE
    paymentDate = '2004-10-28';

-- 6.Report those payments greater than $100,000.

SELECT 
    *
FROM
    payments
WHERE
    amount > 100000;


-- 7. List the products in each product line.

SELECT 
    productLine
FROM
    products;

-- 8. How many products in each product line?

SELECT 
    COUNT(productLine) AS result
FROM
    products;

-- 9. What is the minimum payment received?

SELECT 
    MIN(amount)
FROM
    payments;

-- 10. List all payments greater than twice the average payment.

SELECT 
    *
FROM
    payments
WHERE
    amount > (SELECT 
            AVG(amount) * 2
        FROM
            payments);

-- 11. What is the average percentage markup of the MSRP on buyPrice?

SELECT 
    AVG(MSRP / buyPrice) * 100 AS profit
FROM
    products;

-- 12. How many distinct products does ClassicModels sell?

SELECT DISTINCT
    COUNT(productName)
FROM
    products
WHERE
    productLine = 'Classic Cars';

-- 13. Report the name and city of customers who don't have sales representatives?

SELECT 
    *
FROM
    customers
WHERE
    salesRepEmployeeNumber IS NULL;

-- 14. What are the names of executives with VP or Manager in their title? 
-- Use the CONCAT function
-- to combine the employee's first name and last name into a single field for reporting.

SELECT 
    CONCAT(firstName, ' ', lastName) AS result, jobTitle
FROM
    employees
WHERE
    (jobTitle LIKE '%VP%'
        OR jobTitle LIKE '%Manager%');

-- 15. Which orders have a value greater than $5,000?

SELECT 
    orderNumber
FROM
    orderdetails
WHERE
    (SELECT 
            SUM(quantityOrdered * priceEach)
        FROM
            orderdetails) > 5000
GROUP BY orderNumber;


-- One to many relationship
-- 1. Report the account representative for each customer.
SELECT 
    t1.customerName, t2.lastName
FROM
    customers t1
        LEFT JOIN
    employees t2 ON t1.salesRepEmployeeNumber = t2.employeeNumber;
 
--  2. Report total payments for Atelier graphique
SELECT 
    t1.customerName, t2.amount
FROM
    customers t1
        INNER JOIN
    payments t2 ON t1.customerNumber = t2.customerNumber;

-- 3. Report the total payments by date

SELECT 
    paymentDate, SUM(amount)
FROM
    payments
GROUP BY paymentDate;

-- 4.Report the products that have not been sold

SELECT 
    t1.productName
FROM
    qa32e_readonly.products t1
        INNER JOIN
    qa32e_readonly.orderdetails t2 ON t1.productCode = t2.productCode
        INNER JOIN
    orders t3 ON t2.orderNumber = t3.orderNumber
WHERE
    t3.status != 'Shipped';

-- 5. List the amount paid by each customer.

SELECT 
    t1.amount, t2.customerName
FROM
    payments t1
        RIGHT JOIN
    customers t2 ON t1.customerNumber = t2.customerNumber;


-- 6. How many orders have been placed by Herkku Gifts?

SELECT 
    COUNT(*) AS 'HOW MANY'
FROM
    customers t1
        INNER JOIN
    orders t2 ON t1.customerNumber = t2.customerNumber
WHERE
    t1.customerName = 'Herkku Gifts';

-- 6. List the products ordered on a Monday

SELECT 
    t3.productName
FROM
    orders t1
        INNER JOIN
    orderdetails t2 ON t1.orderNumber = t2.orderNumber
        INNER JOIN
    products t3 ON t2.productCode = t3.productCode
WHERE
    DAYOFYEAR(t1.orderDate) = 2;


-- 7. Who are the employees in Boston?
SELECT 
    t1.lastName, t1.firstName, t2.city
FROM
    employees t1
        INNER JOIN
    offices t2 ON t1.officeCode = t2.officeCode
WHERE
    t2.city = 'Boston';

-- 8. Report those payments greater than $100,000. Sort the report so the customer who made the
-- highest payment appears first.
SELECT 
    *
FROM
    payments
WHERE
    amount > 100000
ORDER BY amount DESC;

-- 9. List the value of 'On Hold' orders.
SELECT 
    t1.orderNumber, t2.priceEach
FROM
    orders t1
        INNER JOIN
    orderdetails t2 ON t1.orderNumber = t2.orderNumber
WHERE
    t1.status = 'On hold';
    
-- 10. Report the number of orders 'On Hold' for each customer.
SELECT DISTINCT
    t2.customerName, COUNT(t1.orderNumber) AS amount, t1.status
FROM
    orders t1
        INNER JOIN
    customers t2 ON t1.customerNumber = t2.customerNumber
WHERE
    status = 'On hold'
GROUP BY t2.customerName;

-- Many to many relationship

SELECT 
    t3.productName
FROM
    orders t1
        INNER JOIN
    orderdetails t2 ON t1.orderNumber = t2.orderNumber
        INNER JOIN
    products t3 ON t2.productCode = t3.productCode
GROUP BY orderDate;

-- 2. List the order dates in descending order for orders for the 1940 Ford Pickup Truck
SELECT 
    t3.productName, t1.orderDate
FROM
    orders t1
        INNER JOIN
    orderdetails t2 ON t1.orderNumber = t2.orderNumber
        INNER JOIN
    products t3 ON t2.productCode = t3.productCode
WHERE
    productName = '1940 Ford Pickup Truck'
ORDER BY orderDate DESC;

-- 3. List the names of customers and their corresponding order number
-- where a particular order
-- from that customer has a value greater than $25,000?

SELECT 
    t2.customerNumber,
    t1.customerName,
    SUM(priceEach * quantityOrdered) AS value
FROM
    customers t1
        JOIN
    orders t2 ON t1.customerNumber = t2.customerNumber
        JOIN
    orderdetails t3 ON t3.orderNumber = t2.orderNumber
GROUP BY customerName
HAVING value > 25000;

-- 4. List the names of products sold at less than 80% of the MSRP

SELECT 
    *
FROM
    products t1
        INNER JOIN
    orderdetails t2 ON t1.productCode = t2.productCode
        INNER JOIN
    orders t3 ON t2.orderNumber = t3.orderNumber
WHERE
    (((t1.MSRP - t1.buyPrice) / t1.buyPrice) * 100) <= 80
        AND t3.status = 'Shipped';

-- 5. Reports those products that have been sold with a markup of 100% or more (i.e., the
-- priceEach is at least twice the buyPrice)
SELECT 
    t1.productName, t1.buyPrice, t2.priceEach
FROM
    products t1
        INNER JOIN
    orderdetails t2 ON t1.productCode = t2.productCode
        INNER JOIN
    orders t3 ON t2.orderNumber = t3.orderNumber
WHERE
    t2.priceEach >= t1.buyPrice * 2
        AND t3.status = 'Shipped';

-- 6. List the products ordered on a Monday

SELECT 
    t1.productName, t3.orderDate
FROM
    products t1
        INNER JOIN
    orderdetails t2 ON t1.productCode = t2.productCode
        INNER JOIN
    orders t3 ON t2.orderNumber = t3.orderNumber
WHERE
    DAYOFYEAR(t3.orderDate) = 2;

-- 7. What is the quantity on hand for products listed on 'On Hold' orders?
SELECT 
    COUNT(t1.productName) AS productsOnHold
FROM
    products t1
        INNER JOIN
    orderdetails t2 ON t1.productCode = t2.productCode
        INNER JOIN
    orders t3 ON t2.orderNumber = t3.orderNumber
WHERE
    t3.status = 'On hold';


-- Regular expressions

-- 1. Find products containing the name ‘Ford’

select * from products
where productName regexp "Ford";

-- 2. List products ending in 'ship'

SELECT 
    productName
FROM
    products
WHERE
    productName REGEXP 'ship$';

-- 3. Report the number of customers in Denmark, Norway, and Sweden

select count(*) from customers
where country regexp "Denmark|Norway|Sweden";

-- 4. What are the products with a product code in the range $700_1000 to $700_1499?

SELECT 
    *
FROM
    products
WHERE
    productCode REGEXP 's700_1[0-4][0-9][1-9]';

-- 5. Which customers have a digit in their name?

SELECT 
    *
FROM
    customers
WHERE
    customerName REGEXP '[0-9]';

-- 6. List the names of employees called Dianne or Diane.

SELECT 
    *
FROM
    employees
WHERE
    lastName REGEXP 'Dianne|Diane'
        OR firstName REGEXP 'Dianne|Diane';

-- 7. List the products containing ship or boat in their product name
SELECT 
    *
FROM
    products
WHERE
    productName REGEXP 'ship|boat';

-- 8. List the products with a product code beginning with S700

SELECT 
    *
FROM
    products
WHERE
    productCode REGEXP '^S700';

-- 9. List the names of employees called Larry or Barry

SELECT 
    *
FROM
    employees
WHERE
    lastName REGEXP 'Larry|Barry'
        OR firstName REGEXP 'Larry|Barry';

-- 10. List the names of employees with non-alphabetic characters in their names

SELECT 
    *
FROM
    employees
WHERE
    lastName REGEXP 'W'
        OR firstName REGEXP 'W';

-- 11. List the vendors whose name ends in Diecast

SELECT 
    *
FROM
    products
WHERE
    productVendor REGEXP 'Diecast$';
