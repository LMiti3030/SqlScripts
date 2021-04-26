-- create database drusgtoreappmysql;

-- drop table order_drugs;
-- drop table orders;
-- drop table drugs;
-- drop table categories;
-- drop table clients;
-- drop table pharmacists;
-- drop table payment_methods;

USE drugstoreappmysql;
CREATE TABLE pharmacists
(
    pharmacist_id  INTEGER auto_increment PRIMARY KEY,
    first_name   varchar(30) NOT NULL,
    last_name    varchar(30) NOT NULL,
    title        varchar(40) NULL,
    email        varchar(80) NULL,
    phone_number varchar(20) NOT NULL
);

CREATE TABLE clients
(
    client_id  INTEGER auto_increment PRIMARY KEY,
    first_name   varchar(30) NOT NULL,
    last_name    varchar(30) NOT NULL,
    delivery_address varchar(2000) NOT NULL,
    email        varchar(80) NOT NULL,
    phone_number varchar(20) NOT NULL
);

CREATE TABLE categories
(
	category_id  INTEGER auto_increment PRIMARY KEY,
	name varchar(80) NOT NULL
);

CREATE TABLE drugs
(
	drug_id  INTEGER auto_increment PRIMARY KEY,
	name varchar(30) NOT NULL,
	category_id integer NOT NULL,
	description varchar(2000) NULL,
	price numeric (5,2) NOT NULL,
	stock integer null,
	constraint
	FK_categ_id
	foreign key(category_id)
	references categories (category_id)
);

CREATE TABLE payment_methods
(
	payment_id  INTEGER auto_increment PRIMARY KEY,
	description varchar(80) NOT NULL
);

CREATE TABLE orders
(
	order_id  INTEGER auto_increment PRIMARY KEY,
	order_date date NOT NULL,
	pharmacist_id integer NOT NULL,
	client_id integer NOT NULL,
	payment_id integer NOT NULL,
	notes varchar(2000) NULL,
    constraint
    FK_pharmacist_id
    foreign key (pharmacist_id)
    references pharmacists(pharmacist_id),
    constraint
    FK_client_id
    foreign key (client_id)
    references clients(client_id),
    constraint
    FK_payment_id
    foreign key (payment_id)
    references payment_methods(payment_id)
);

CREATE TABLE order_drugs
(
	order_id integer NOT NULL,
	drug_id integer NOT NULL,
	quantity integer NOT NULL,
    constraint
    FK_order_id
    foreign key (order_id)
    references orders(order_id),
    constraint
    FK_drug_id
    foreign key (drug_id)
    references drugs(drug_id)
);
