USE contacts;

INSERT INTO 
person
( person_id, 
person_first_name,
person_last_name,
person_contacted_number,
person_date_last_contacted,
person_date_added
)
VALUES
(
5, 
'Laura',
'Mititelu',
0,
'2021-04-26 17:27',
'2021-04-26 17:27'
);

INSERT INTO 
person ( person_id, person_first_name, person_last_name, person_contacted_number, person_date_last_contacted, person_date_added)
VALUES
(6,  'Foo', 'Bar', 3, '2021-04-26 17:27', '2021-04-26 17:27' ),
(7, 'Gar', 'Mar', 2, '2021-04-26 17:27', '2021-04-26 17:27'),
(42, 'Dar', 'Lat', 2, '2021-04-26 17:27', '2021-04-26 17:27');


