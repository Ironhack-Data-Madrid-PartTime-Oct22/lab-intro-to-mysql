use hola;

insert into customers
values
(0,"10001","Pablo Picasso","+34 636 17 63 82","-","Paseo de la Chopera, 14","Madrid","Madrid","Spain",28045),
(1,"20001", "Abraham Lincoln", "+1 305 907 7086","-", "120 SW 8th St","Miami","Florida","United States",33130),
(2,"30001", "Napoleon Bonaparte","+33 1 79 75 40 00","-","40 Rue du Colisée","Paris","Île-de-France","France",75008);

select*from customers

insert into salespersons
values
(0,"00001","Petey Cruiser","Madrid"),
(1,"00002","Anna Sthesia","Barcelona"),
(2,"00003","Paul Molive","Berlin"),
(3,"00004","Gail Forcewind","Paris"),
(4,"00005","Paige Turner","Mimia"),
(5,"00006","Bob Frapples","Mexico City"),
(6,"00007","Walter Melon","Amsterdam"),
(7,"00008","Shonda Leer","São Paulo");

select*from salespersons

insert into cars
values
(0,"3K096I98581DHSNUP","Volkswagen","Tiguan",2019,"Blue"),
(1,"ZM8G7BEUQZ97IH46V","Peugeot","Rifter",2019,"Red"),
(2,"RKXVNNIHLVVZOUB4M","Ford","Fusion",2018,"White"),
(3,"HKNDGS7CU31E9Z7JW","Toyota","RAV4",2018,"Silver"),
(4,"DAM41UDN3CHU2WVF6","Volvo","V60",2019,"Gray"),
(5,"DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country",2019,"Gray");

select*from cars
select*from invoices

insert into invoices
values
(0,852399038,"2018-08-22",1,2,3),
(1,731166526,"2018-12-31",4,1,5),
(2,271135104,"2019-01-22",3,3,7);

"""noseporque invoices no me ha funcionado he cambiado los indices porq cars y custumers empiezan con id 1 pero aun asi me sale este error"""
00:07:20	(2,731166526,"2018-12-31",4,1,5), (3,271135104,"2019-01-22",3,3,7)	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2,731166526,"2018-12-31",4,1,5), (3,271135104,"2019-01-22",3,3,7)' at line 1	0.000 sec
