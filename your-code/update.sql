UPDATE mydb1.Customers 
SET email = "ppicasso@gmail.com" 
WHERE idCustomers = 1;
UPDATE mydb1.Customers 
SET email = "lincoln@us.gov"
WHERE idCustomers = 2;
UPDATE mydb1.Customers 
SET email = "hello@napoleon.me"
WHERE idCustomers = 3;

select * from mydb1.Customers;