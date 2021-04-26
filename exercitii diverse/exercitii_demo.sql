-- SELECT 'Hello', 'World';
-- SELECT 'Hello' as FirstWord, 'World' as SecondWord;
-- personUSE contacts;
/*
INSERT INTO person (person_id, person_first_name, person_last_name, person_contacted_number,person_date_last_contacted,person_date_added) 
VALUES (4, 'Fritz', 'Cabbage', 3,'2013-07-14 11:43:31','2013-03-14 11:43:31');

SELECT p.person_first_name as FirstName
FROM person p;

SELECT DISTINCT p.person_first_name as FirstName, p.person_last_name as LastName
FROM person p;

SELECT p.person_last_name
FROM person p
WHERE p.person_first_name = 'Fritz';

UPDATE person 
SET person_last_name = 'Ahern', person_first_name= 'Jon', person_contacted_number = '10'
WHERE person_id = 4;

SELECT p.person_last_name
FROM person p
WHERE p.person_first_name = 'Jon'
AND p.person_contacted_number > 5;

SELECT p.person_last_name
FROM person p
WHERE p.person_first_name = 'Jon'
OR p.person_contacted_number > 0;

SELECT p.person_last_name
FROM person p
WHERE p.person_contacted_number
BETWEEN 1 AND 20;

SELECT p.person_last_name
FROM person p
WHERE p.person_first_name 
LIKE 'J%';

SELECT p.person_last_name
FROM person p
WHERE p.person_first_name
IN ('Jon', 'Fritz');

SELECT p.person_last_name
FROM
person p
WHERE p.person_contacted_number
IS NULL;*/

SELECT e.email_address_person_id, e.email_address
FROM email_address e
where e.email_address_person_id IS NOT NULL;

