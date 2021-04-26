USE contacts;
-- DROP TABLE new_person;
CREATE TABLE new_person(
	person_id integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
    person_first_name VARCHAR(256) NOT NULL,
    person_last_name VARCHAR(256),
    person_contacted_number INTEGER NOT NULL,
    person_date_last_contacted DATETIME NOT NULL,
    peson_date_added DATETIME NOT NULL
);

INSERT INTO new_person
SELECT p.person_id, p.person_first_name, p.person_last_name, p.person_contacted_number, p.person_date_last_contacted, p.person_date_added
FROM person p
WHERE p.person_first_name LIKE '%j%';