use airport;

SELECT 
    *
FROM
    tickets;

SELECT 
    id,
    CASE
        WHEN price >= 10000 AND price <= 11000 THEN 'Economy'
        WHEN price >= 20000 AND price <= 30000 THEN 'PremiumEconomy'
        WHEN price > 100000 THEN 'Business'
        else 'UNSET'
    END AS service_class,
    price
FROM
    tickets;
    
SELECT 
    *
FROM
    airliners;
    
    
SELECT 
    side_number,
CASE
        WHEN production_year < 2000 THEN 'Old'
        WHEN production_year >= 2000 AND production_year <= 2010 THEN 'Mid'
        WHEN production_year > 2010 THEN 'New'
        ELSE 'UNSET'
    END AS age
    
FROM
    airliners
    where side_number < 10000;
    
SELECT 
    *
FROM
    tickets;
    
SELECT 
    id,
    trip_id,
    CASE
        WHEN trip_id = 'LL4S1G8PQW' AND service_class = 'PremiumEconomy'  THEN price - price * 0.20
        WHEN trip_id = 'LL4S1G8PQW' AND service_class = 'Business'  THEN price - price * 0.10
        WHEN trip_id = 'LL4S1G8PQW' AND service_class = 'Economy'  THEN price - price * 0.15
		WHEN trip_id = '0SE4S0HRRU' AND service_class = 'PremiumEconomy'  THEN price - price * 0.20
        WHEN trip_id = '0SE4S0HRRU' AND service_class = 'Business'  THEN price - price * 0.10
        WHEN trip_id = '0SE4S0HRRU' AND service_class = 'Economy'  THEN price - price * 0.15
		WHEN trip_id = 'JQF04Q8I9G' AND service_class = 'PremiumEconomy'  THEN price - price * 0.20
        WHEN trip_id = 'JQF04Q8I9G' AND service_class = 'Business'  THEN price - price * 0.10
        WHEN trip_id = 'JQF04Q8I9G' AND service_class = 'Economy'  THEN price - price * 0.15
        else price * 1 
    END AS new_price
FROM
    tickets;

use hr;

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE 'D%'
ORDER BY first_name ASC;
