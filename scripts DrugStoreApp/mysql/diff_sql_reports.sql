USE drugstoreappmysql;

-- show drugs and their category in alphabetic order

SELECT d.name as DrugName, c.name as CategoryName, d.description as DrugDescription, d.price as DrugPrice, d.stock as DrugStock
FROM drugs d, categories c
WHERE d.category_id = c.category_id
ORDER BY DrugName;

-- show categories and drugs in alphabetic order

SELECT c.name as CategoryName, d.name as DrugName, d.description as DrugDescription, d.price as DrugPrice, d.stock as DrugStock
FROM drugs d, categories c
WHERE d.category_id = c.category_id
ORDER BY CategoryName;

-- show only those drugs that have had orders in alphabetical order
SELECT d.name as DrugName,  c.name as CategoryName, d.description as DrugDescription, d.price as DrugPrice, d.stock as DrugStock, od.order_id as OrderID
FROM categories c, drugs d
INNER JOIN
order_drugs od
ON od.drug_id = d.drug_id
WHERE d.category_id = c.category_id
ORDER BY DrugName;

-- show details of orders
SELECT DISTINCT o.order_id as OrderID, o.order_date as OrderDate, p.first_name as PharmacistFirstName, p.last_name as PharmacistLastName, c.first_name as ClientFirstName, c.last_name as ClientLastName, pm.description as PaymentMethod
FROM orders o, pharmacists p, payment_methods pm, clients c, order_drugs od
WHERE o.pharmacist_id = p.pharmacist_id AND c.client_id = o.client_id AND pm.payment_id=o.payment_id
ORDER BY o.order_id ;

-- show list of clients from 2021-04-11 in alphabetical order
select c.client_id, c.first_name, c.last_name, c.delivery_address, c.email, c.phone_number, o.order_date
from clients c
INNER JOIN orders o
ON c.client_id = o.order_id
WHERE o.order_date = '2021-04-11'
ORDER BY c.last_name;

-- show details of orders from from 2021-04-12
SELECT DISTINCT o.order_id as OrderID, o.order_date as OrderDate, p.first_name as PharmacistFirstName, p.last_name as PharmacistLastName, c.first_name as ClientFirstName, c.last_name as ClientLastName, pm.description as PaymentMethod
FROM orders o, pharmacists p, payment_methods pm, clients c, order_drugs od
WHERE o.pharmacist_id = p.pharmacist_id AND c.client_id = o.client_id AND pm.payment_id=o.payment_id AND o.order_date = '2021-04-12'
ORDER BY o.order_id ;

-- show no of orders/pharmacist
SELECT p.pharmacist_id,  p.first_name, p.last_name, p.title, count(o.order_id) as NumberOfOrders
FROM pharmacists p
LEFT OUTER JOIN
orders o
ON o.pharmacist_id = p.pharmacist_id
GROUP BY p.pharmacist_id;

-- show drugs, quantity and price  for all orders
SELECT o.order_id, d.name, d.price, od.quantity
FROM drugs d 
INNER JOIN 
order_drugs od
ON od.drug_id = d.drug_id 
INNER JOIN
 orders o
 ON od.order_id = o.order_id
ORDER BY o.order_id;

-- show drugs, quantity and price  from order_id =3
SELECT o.order_id, d.name, d.price, od.quantity
FROM drugs d 
INNER JOIN 
order_drugs od
ON od.drug_id = d.drug_id 
INNER JOIN
 orders o
 ON od.order_id = o.order_id
WHERE o.order_id = 3;