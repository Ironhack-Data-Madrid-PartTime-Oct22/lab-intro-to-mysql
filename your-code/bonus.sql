SELECT * FROM salesperson;

UPDATE salesperson
SET store = "Miami"
WHERE idsalesperson = 5;

SELECT * FROM customers;

UPDATE customers SET email = "ppicasso@gmail.com" WHERE idcustomers = 1;
UPDATE customers SET email = "lincoln@us.gov" WHERE idcustomers = 2;
UPDATE customers SET email = "hello@napoleon.me" WHERE idcustomers = 3;

SELECT * FROM cars;

DELETE FROM cars 
WHERE idcars = 5;


