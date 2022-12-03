use labsemana6mydb; 
select * from customers; 

UPDATE customers
SET mail = "ppicasso@gmail.com",
WHERE name = "Pablo Picasso";

UPDATE customers
SET mail = "lincoln@us.gov",
WHERE name = "Abraham Lincoln";

UPDATE customers
SET mail = "hello@napoleon.me",
WHERE name = "Napoléon Bonaparte";