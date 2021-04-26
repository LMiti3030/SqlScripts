USE contacts;

SELECT p. person_first_name, p.person_last_name, e.email_address
FROM person p, email_address e;

SELECT p.person_first_name, p.person_last_name, e.email_address
FROM person p
INNER JOIN email_address e
ON e.email_address_person_id = p.person_id;

SELECT p.person_first_name, p.person_last_name, e.email_address
FROM person p
LEFT OUTER JOIN email_address e
ON e.email_address_person_id = p.person_id;

SELECT p.person_first_name, p.person_last_name, e.email_address
FROM person p
RIGHT OUTER JOIN email_address e
ON e.email_address_person_id = p.person_id;

SELECT p.person_first_name, p.person_last_name, e.email_address
FROM person p
LEFT OUTER JOIN email_address e
ON e.email_address_person_id = p.person_id
UNION DISTINCT
SELECT p.person_first_name, p.person_last_name, e.email_address
FROM person p
RIGHT OUTER JOIN email_address e
ON e.email_address_person_id = p.person_id;