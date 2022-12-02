USE lab_mysql;

UPDATE customers
SET Email ="ppicasso@gmail.com" 
WHERE idcustomers = 0;

UPDATE customers
SET Email ="lincoln@us.gov" 
WHERE idcustomers = 1;

UPDATE customers
SET Email ="hello@napoleon.me" 
WHERE idcustomers = 2;

UPDATE salespersons
SET Store ="Miami" 
WHERE idsalespersons = 4;