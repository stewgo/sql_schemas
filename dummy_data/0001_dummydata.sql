delete from orders;
delete from products;
delete from users;

ALTER TABLE users AUTO_INCREMENT = 0;
ALTER TABLE products AUTO_INCREMENT = 0;

insert into users (username, password, name, email, isMerchant, phoneNumber, address)
VALUES ('test_merchant', '$2b$12$ALAusESrcY3VzOwhF67oZOep8se2YWemmG/M9l5AIYN6iGzM3U7dq', 'John Smith', 'test_merchant@gmail.com', true, '0412345678', 'Unit 123 202A Point St Pyrmont');

insert into users (username, password, name, email, isMerchant, phoneNumber, address)
VALUES ('test_purchaser', '$2b$12$197iV9i7y3oA8aw9Hm0tU.6pUxR4Sm4Zd36XdTlMs47mW8NkjuWjm', 'Jane Doe', 'test_purchaser@gmail.com', false, '0412345678', '200 Harris St Pyrmont');



INSERT INTO products (merchantId, name, description, price, availableDate)
VALUES (1, 'Spaghetti bolognese', 'Spaghetti with mince beef and tomato sauce', '8.50', '8pm');

INSERT INTO products (merchantId, name, description, price, availableDate)
VALUES (1, 'Pizza', 'Pizza with cheesee and pepperoni', '12.00', '5pm');

INSERT INTO products (merchantId, name, description, price, availableDate)
VALUES (1, 'Pork dumplings', 'Pork dumplings lorem ispum long long long', '9.50', '7pm');

INSERT INTO products (merchantId, name, description, price, availableDate)
VALUES (1, 'Fish and Chips', 'Snapper fish with chips that with chicken salt', '11.00', '9pm');
