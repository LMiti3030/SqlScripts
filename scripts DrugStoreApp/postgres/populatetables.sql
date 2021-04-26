INSERT INTO pharmacists(first_name,last_name,title,email,phone_number )
VALUES ('Ionut', 'Popescu', 'Asistent farmacist', 'ionut@yahoo.com', '0757'),
('Mircea', 'Mititelu', 'Farmacist sef', 'mircea@yahoo.com', '0758'),
('Adina', 'Magdescu', 'Farmacist', 'adina@yahoo.com', '0756');

INSERT INTO clients(first_name,last_name,delivery_address,email,phone_number )
VALUES ('Maria', 'Andronache', 'Ploiesti, str. Lunei nr. 3', 'maria@yahoo.com', '0753'),
('Valeriu', 'Ionescu', 'Galati, Str. Brailei nr. 3, ap. 10', 'valeriu@gmail.com', '0755'),
('Georgeta', 'Misculici', 'Timisoara, Str. Aradului nr. 4', 'georgieta@yahoo.com', '0769');

INSERT INTO categories(name)
VALUES ('Sedative'), ('Antihistaminice'), ('Analgezice'), ('Imunitate');


INSERT INTO drugs(name, category_id, description, price, stock)
VALUES ('Vagostabyl, 40 capsule, Dr. Reddys', '1', 'Vagostabyl este un sedativ ușor, recomandat în stări de agitație psihică sau tulburări ușoare ale somnului.', '24.50', '10'),
('Sedatif PC, 40 comprimate, Boiron', '1', 'Sedatif PC este un medicament homeopatic utilizat în mod tradiţional în tratamentul stărilor de anxietate şi de emotivitate, dar şi în cazul tulburărilor de somn. ', '16.00','25'), 
('Loratadină 10 mg, 10 comprimate, Slavia Pharm', '2', 'Antihistaminic de uz sistemic. Loratadina este indicată în tratamentul simptomatic al riniței alergice şi al urticariei cronice idiopatice.', '5.50', '50'),
('Claritine 10mg, 10 comprimate, Bayer', '2', 'Substanta activa este loratadina. Celelalte componente sunt: lactoza monohidrat, amidon de porumb, stearat de magneziu.', '15.00', '14'),
('Dermodrin unguent, 20 grame, Montavit', '2', 'Dermodrin aparţine clasei de medicamente numite antihistaminice pentru uz topic şi este un unguent care acţionează împotriva manifestărilor alergiilor datorate descărcării de histamină (antihistaminic)  precum: roşeaţă, mâncărime a pielii şi durere. Suplimentar reduce sau previne apariţia umflăturilor pielii având drept cauză alergiile. Dermodrin unguent actioneaza ca o emulsie ulei in apa si are un efect racoritor, crescand astfel efectul de ameliorare a durerii. Efectul se simte la scurt timp după aplicarea unguentului şi persistă timp de 2 până la 6 ore. ', '10.00', '3'),
('Antinevralgic Forte, 20 comprimate, Zentiva', '3', 'Antinevralgic Forte este un analgezic, reduce febra si este un medicament cu efect antiinflamator.', '14.00', '30'),
('Nurofen Immedia Ultra 400 mg, 24 drajeuri, Rockitt Benckiser Healthcare', '3', 'Nurofen Immedia Ultra 400 mg drajeuri calmează durerea menstruală, acţionând în 15 minute, pentru mai bine de 8 ore.', '27.50', '17'),
('Ibalgin Forte 400 mg, 12 comprimate, Sanofi', '3', 'Ibalgin Forte este indicat pentru: tratamentul afecţiunilor reumatismale acute sau cronice: reumatism articular inflamator sau degenerativ, reumatism extraarticular, tratamentul simptomatic al afecţiunilor dureroase: cefalee, migrenă (tratament şi profilaxie), dureri dentare, dismenoree, dureri osteo-articulare şi musculare (inclusiv tendinite, bursite, luxaţii, entorse), tratamentul simptomatic al febrei.', '14.00', '18'),
('Flavosol soluție orală 300mg, 25 ml, Tis Farmaceutic', '4', 'Flavosol este un medicament obținut din propolis brut, având proprietăți antibacteriene și antivirale.', '7.50', '11');


INSERT INTO payment_methods(description)
VALUES ('numerar'), ('card');

SET DATESTYLE TO PostgreSQL,European;

INSERT INTO orders(order_date, pharmacist_id, client_id, payment_id )
VALUES('2021-04-11', '1', '1', '1'),
('2021-04-11', '3', '2', '2'),
('2021-04-12', '2', '1', '2'),
('2021-04-12', '3', '2', '1'),
('2021-04-13','2', '3', '1');

INSERT INTO order_drugs(order_id, drug_id, quantity)
VALUES('1', '1', '2'),
('1', '5', '1'),
('2', '3', '2'),
('3', '4', '1'),
('3', '9', '2'),
('4', '2', '1'),
('5', '7', '2'); 