USE contacts;
/*INSERT INTO 
person ( person_id, person_first_name, person_last_name, person_contacted_number, person_date_last_contacted, person_date_added)
VALUES
(0,  'Foo', 'Bar', 3, '2021-04-26 17:27', '2021-04-26 17:27' );*/

UPDATE person p
SET p.person_first_name = 'Bob', p.person_last_name = 'Foo'
WHERE p.person_id = 0;

DELETE FROM person
WHERE person_id > 4;