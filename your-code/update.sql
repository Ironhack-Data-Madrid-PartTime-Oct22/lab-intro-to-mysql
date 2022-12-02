-- error en la tabla salesperson
UPDATE salesperson
SET store = 'Miami'
WHERE staffid = '00005';

SELECT * FROM salesperson;

-- añadir emails en la tabla de customers
UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE `name` = 'Pablo Picasso';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE `name` = 'Abraham Lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE `name` = 'Napoléon Bonaparte';

SELECT * FROM customers;