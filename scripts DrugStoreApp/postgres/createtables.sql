CREATE TABLE pharmacists
(
    pharmacist_id  SERIAL PRIMARY KEY,
    first_name   varchar(30) NOT NULL,
    last_name    varchar(30) NOT NULL,
    title        varchar(40) NULL,
    email        varchar(80) NULL,
    phone_number varchar(20) NOT NULL
);


CREATE TABLE clients
(
    client_id  SERIAL PRIMARY KEY,
    first_name   varchar(30) NOT NULL,
    last_name    varchar(30) NOT NULL,
    delivery_address varchar(2000) NOT NULL,
    email        varchar(80) NOT NULL,
    phone_number varchar(20) NOT NULL
);

CREATE TABLE categories
(
	category_id  SERIAL PRIMARY KEY,
	name varchar(80) NOT NULL
);

CREATE TABLE drugs
(
	drug_id  SERIAL PRIMARY KEY,
	name varchar(200) NOT NULL,
	category_id integer NOT NULL REFERENCES categories(category_id),
	description varchar(2000) NULL,
	price numeric (5,2) NOT NULL,
	stock integer NULL
);


CREATE TABLE payment_methods
(
	payment_id  SERIAL PRIMARY KEY,
	description varchar(80) NOT NULL
);

CREATE TABLE orders
(
	order_id  SERIAL PRIMARY KEY,
	order_date date NOT NULL,
	pharmacist_id integer NOT NULL REFERENCES pharmacists(pharmacist_id),
	client_id integer NOT NULL REFERENCES clients(client_id),
	payment_id integer NOT NULL REFERENCES payment_methods(payment_id),
	notes varchar(2000) NULL
);

CREATE TABLE order_drugs
(
	order_id integer NOT NULL REFERENCES orders(order_id),
	drug_id integer NOT NULL REFERENCES drugs(drug_id),
	quantity integer NOT NULL
);