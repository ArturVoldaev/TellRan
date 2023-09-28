use learn;

-- drop table staff;

CREATE TABLE staff(
id MEDIUMINT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (id),
name varchar(64),
surename varchar(64),
age int(64),
position varchar(64)
);

INSERT INTO staff (name, surename, age, position) VALUES
    ('Alex','Alexeev', 24, 'worker'),
    ('Oleg','Olegov', 36, 'administration'),
	('Alex','Alexeev', 50, 'security'),
	('Alex','Alexeev', 24, 'worker'),
    ('Oleg','Olegov', 50, 'administration'),
	('Alex','Alexeev', 20, 'security'),
    ('Oleg','Olegov', 36, 'administration');

SELECT * FROM staff;
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE staff ADD salary int(64);

SELECT * FROM staff;

UPDATE staff
SET salary = 1000
WHERE position = 'worker';

UPDATE staff
SET salary = 5000
WHERE position = 'administration';

UPDATE staff
SET salary = 2000
WHERE position = 'security';

SELECT * FROM staff;

UPDATE staff
SET salary = salary * 2;

SELECT * FROM staff;

DELETE FROM staff
WHERE age > 45;

SELECT * FROM staff;

CREATE VIEW v_staff_only_worker AS
SELECT *
FROM staff
WHERE position IN ('worker');

SELECT * FROM v_staff_only_worker;

CREATE VIEW v_staff_only_security AS
SELECT *
FROM staff
WHERE position IN ('security');

SELECT * FROM v_staff_only_security;

CREATE VIEW v_staff_only_administration AS
SELECT *
FROM staff
WHERE position IN ('administration');

SELECT * FROM v_staff_only_administration;

SELECT * FROM staff;

CREATE TABLE new_staff_v2 AS
SELECT name, surename, position  
FROM staff
WHERE position = 'administration';

SELECT * FROM new_staff_v2;

ALTER TABLE new_staff_v2
DROP COLUMN position;

SELECT * FROM new_staff_v2;
