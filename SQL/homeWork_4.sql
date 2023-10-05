use learn;

/*drop table students;*/

CREATE TABLE students (
    name VARCHAR(128) NOT NULL,
    lastname VARCHAR(128) NOT NULL,
    avg_mark NUMERIC(2 , 1 ),
    CONSTRAINT check_avg_mark CHECK (avg_mark BETWEEN 0 AND 5),
    gender VARCHAR(128) CHECK (gender IN ('M' , 'F'))
);   

INSERT INTO students (name, lastname, avg_mark, gender) VALUES('Oleg','Petrov',4.3,'M'),
                                                              ('Semen','Stepanov',3.1,'M'),
                                                              ('Olga','Semenova',4.7,'F'),
                                                              ('Igor','Romanov',3.1,'M'),
                                                              ('Irina','Ivanova', 2.2 ,'F');

SELECT *
FROM students;

SET sql_safe_updates=0;

ALTER TABLE students
ADD COLUMN id integer primary key auto_increment;

ALTER TABLE students 
MODIFY COLUMN gender varchar(1);

INSERT INTO students (name, lastname, avg_mark, gender) 
VALUES('OlegOleg','Petrov',4.3,'M');

ALTER TABLE students 
MODIFY COLUMN gender varchar(1);

ALTER TABLE students 
RENAME COLUMN name TO firstname;

SELECT firstname, lastname, id, avg_mark
FROM students
WHERE avg_mark > 4;

SELECT firstname, lastname, id, avg_mark
FROM students
WHERE avg_mark <= 3 OR avg_mark >= 4;

SELECT firstname, lastname, id
FROM students
WHERE firstname LIKE 'И%';

SELECT firstname, lastname, id, avg_mark
FROM students
WHERE avg_mark IN (2.2 , 3.1, 4.7);

CREATE VIEW v_only_m AS
SELECT *
FROM students
WHERE gender IN ('M');

SELECT *
FROM v_only_m;

CREATE VIEW v_only_f AS
SELECT *
FROM students
WHERE gender IN ('F');

SELECT *
FROM v_only_f;

SELECT DISTINCT avg_mark
FROM students;

ALTER TABLE students
MODIFY avg_mark numeric(3,1);

ALTER TABLE students
DROP constraint check_avg_mark;

ALTER TABLE students
ADD constraint check_avg_mark 
CHECK (avg_mark between 0 and 100);

UPDATE students 
SET avg_mark = avg_mark * 10;

SELECT *
FROM students;

UPDATE students 
SET lastname = 'Sidorov'
WHERE firstname = 'Oleg' AND lastname = 'Petrov';

UPDATE students 
SET avg_mark = avg_mark + 10
WHERE avg_mark < 31;