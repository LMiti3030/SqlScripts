-- CREATE DATABASE contacts_V2;

USE contacts_V2;
CREATE TABLE person
(
	person_id INTEGER,
    person_first_name VARCHAR(256),
    person_last_name VARCHAR(256)
);

ALTER TABLE person
ADD CONSTRAINT
PK_person_id 
PRIMARY KEY (person_id);

-- ALTER TABLE person
-- ADD CONSTRAINT
-- NN_person_id 
-- NOT NULL;

-- DROP TABLE person;
CREATE TABLE person
(
	person_id INTEGER PRIMARY KEY NOT NULL,
    person_first_name VARCHAR(256),
    person_last_name VARCHAR(256)
);

-- CREATE TABLE email_address
-- (
-- 	email_address_id INTEGER NOT NULL PRIMARY KEY,
--     email_address VARCHAR(256),
--     email_address_person_id INTEGER,
--     CONSTRAINT 
--     FK_email_address
--     FOREIGN KEY (email_address_person_id) REFERENCES person(person_id)
-- ) ;


CREATE TABLE email_addressFK_email_address
(
	email_address_id INTEGER NOT NULL PRIMARY KEY,
    email_address VARCHAR(256),
    email_address_person_id INTEGER
) ;

ALTER TABLE email_address
ADD CONSTRAINT 
FK_email_address
FOREIGN KEY (email_address_person_id) REFERENCES person(person_id);