select * from mydb1.Customers;

select * from mydb1.Car;

INSERT INTO mydb1.Customers
VALUES
(1, "Pablo Picasso", "+34 636 17 63 82", "pablo@example.com", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
(2, "Abraham Lincoln", "+1 305 907 7086", "abraham@example.com", "120 SW 8th St", "Miami", "Florida", "United States", 33130),
(3, "Napoléon Bonaparte", "+33 1 79 75 40 00","napoleon@example.com" , "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);

alter table mydb1.Car MODIFY VIN VARCHAR(20);
alter table mydb1.Salesperson MODIFY staff_id VARCHAR(20);
alter table mydb1.Car MODIFY year VARCHAR(20);
  
INSERT INTO mydb1.Salesperson
VALUES
(10, "00001", "Petey Cruiser", "Madrid"),
(11, "00002", "Anna Sthesia", "Barcelona"),
(12, "00003", "Paul Molive", "Berlin"),
(13, "00004", "Gail Forcewind", "Paris"),
(14, "00005", "Paige Turner", "Mimia"),
(15, "00006", "Bob Frapples", "Mexico City"),
(16, "00007", "Walter Melon", "Amsterdam"),
(17, "00008", "Shonda Leer", "São Paulo");

select * from mydb1.Salesperson; 

INSERT INTO mydb1.Invoice
VALUES
(21, 852399038, "2018-08-22", 2, 10),
(22, 731166526, "2018-12-31", 1, 11),
(23, 271135104, "2019-01-22", 3, 12);

select * from mydb1.Invoice; 


INSERT INTO mydb1.Car
VALUES
(18, "3K096I98581DHSNUP", "Volkswagen", "Tiguan","2019", "Blue",21),
(19, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter","2019", "Red",22),
(20, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion","2018", "White",23),
(21, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4","2018", "Silver",23),
(22, "DAM41UDN3CHU2WVF6", "Volvo", "V60", "2019", "Gray",21),
(23, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country","2019","Gray",21);
select * from mydb1.Car;
