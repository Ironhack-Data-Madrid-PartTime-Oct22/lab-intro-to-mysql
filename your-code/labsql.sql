

USE labsql2;

INSERT INTO cars
VALUES 
(0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
(1, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019 ,"Red"),
(2, "RKXVNNIHLVVZOUB4M" , "Ford", "Fusion" , 2018, "White"),
(3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
(4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
(5, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");


INSERT INTO salesperson
VALUES
(0, "00001", "Petey Cruiser", "Madrid"),
(1, "00002", "Anna Sthesia", "Barcelona"),
(2, "00003", "Paul Molive", "Berlin"),
(3, "00004", "Gail Forcewind", "Paris"),
(4, "00005", "Paige Turner", "Mimia"),
(5, "00006", "Bob Frapples", "Mexico City"),
(6, "00007", "Walter Melon", "Amsterdam"),
(7, "00008", "Shonda Leer", "São Paulo");

update salesperson
set store = "Miami"
where idsalesperson = 4;


 INSERT INTO customer
 VALUES
(0, "10001", "Pablo Picasso", 76382, "ppicasso@gmail.com", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045"),
(3, "20001", "Abraham Lincoln", 7086, "lincoln@us.gov", "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
(2, "30001", "Napoléon Bonaparte", 4000, "hello@napoleon.me", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");


INSERT INTO invoices
VALUES
(5, "852399038",  "2018-08-22", 1, 5, 4),
(6, "731166526", "2018-12-31", 3, 3, 3),
(7, "271135104", "2019-01-22", 2, 7, 2);
