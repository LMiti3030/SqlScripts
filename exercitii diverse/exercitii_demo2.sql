USE contacts;

SELECT p.person_first_name, p.person_last_name
FROM person p
ORDER BY p.person_last_name;

SELECT count(*) 
FROM person;

SELECT AVG(p.person_contacted_number)
FROM person p;

SELECT MAX(p.person_first_name)
FROM person p;

SELECT MIN(p.person_first_name)
FROM person p;

SELECT SUM(p.person_contacted_number)
FROM person p;