update salespersons
set Store = "Miami" 
where idSalespersons = 5;

update customers
set Email = "ppicasso@gmail.com" 
where idCustomers = 1;

update customers
set Email = "lincoln@us.gov"
where idCustomers = 2;

update customers
set Email = "hello@napoleon.me"
where idCustomers = 3;

select*from customers
