CREATE DATABASE lab_mysql
USE lab_mysql;

SHOW TABLES;

CREATE TABLE cars (VIN VARCHAR(45), manufacturer VARCHAR(45),
       model VARCHAR(45), year YEAR(4), color VARCHAR(45));
       
CREATE TABLE costumers (customerid INT, name VARCHAR(45),
       phone VARCHAR(45), email VARCHAR(45), adress VARCHAR(100), city VARCHAR(45), state VARCHAR(45), country VARCHAR(45), zip INT);
       
CREATE TABLE invoices (invoicenumber INT, date DATE, cars_idcars INT,
	customers_idecustomers INT, salespersons_idsalespersons INT);
    
CREATE TABLE salespersons (staffid INT, name VARCHAR(45), store VARCHAR(45));

SHOW TABLES;
Describe cars
