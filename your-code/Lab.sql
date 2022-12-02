INSERT INTO CARS(idCARS,VIN,Manufacturer,Model,Year,Color)
VALUES
	(0, "3K096I98581DHSNUP", "Volkswagen","Tiguan", 2019,"Blue"),
    (1, "ZM8G7BEUQZ97IH46V", "Peugeot","Rifter", 2019,"Red"),
    (2, "RKXVNNIHLVVZOUB4M", "Ford","Fusion",2018, "white"),
    (3, "HKNDGS7CU31E9Z7JW", "Toyota","RAV4",2018, "Silver"),
    (4, "DAM41UDN3CHU2WVF6", "Volvo","V60",2019, "Gray"),
	(5, "DAM41UDN3CHU2WVF6", "Volvo","V60 Cross Country",2019, "Gray");
    
    select * from CARS;
INSERT INTO CUSTOMERS(idCUSTOMERS,Name,Phone,Address,City,State_Province,Country,Postal)
VALUES

(0,10001,"Pablo Picasso","+34636176382","Paseo de la Chopera 14","Madrid","Madrid	Spain",	"28045"),
(1,20001,"Abraham Lincoln",	"+1 305 907 7086","120 SW 8th St"	,"Miami","Florida,United States","33130"),
(2,30001,"Napoléon Bonaparte","+33 1 79 75 40 00",	"40 Rue du Colisée","Paris","Île-de-France	France"	,"75008");




INSERT INTO SALESPERSONS(idSalespersons,STAFF_ID,Name,Store)
VALUES
    
(0,"00001","Petey Cruiser","Madrid"),
(1,"00002","Anna Sthesia","Barcelona"),
(2,"00003","Paul Molive","Berlin"),
(3,"00004","Gail Forcewind","Paris"),
(4,"00005","Paige Turner","Mimia"),
(5,"00006","Bob Frapples","Mexico City"),
(6,"00007","Walter Melon","Amsterdam"),
(7,"00008","Shonda Leer","São Paulo");


INSERT INTO INVOICES(ID,InvoiceNumber,Date,Car,Customer,Sales_Person)
VALUES
(0,"852399038",	"22-08-2018",	"0"	,"1","3"),
(1,"731166526","31-12-2018"	, "3","0","5"),
(2,	"271135104","22-01-2019",	"2","2","7");


Error Code: 1062. Duplicate entry '1' for key 'cars.PRIMARY'
Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ID,Name,Store)   VALUES      (0, 00001,"Petey Cruiser","Madrid"), (1,00002,"Anna' at line 1

Error Code: 1054. Unknown column 'STAFF_ID' in 'field list'
Error Code: 1054. Unknown column 'CustomerID' in 'field list'
