delete from accessTokens;
delete from orders;
delete from products;
delete from users;

ALTER TABLE users AUTO_INCREMENT = 0;
ALTER TABLE products AUTO_INCREMENT = 0;
ALTER TABLE accessTokens AUTO_INCREMENT = 0;
ALTER TABLE orders AUTO_INCREMENT = 0;

insert into users (username, password, name, email, isMerchant, phoneNumber, address)
VALUES ('test_merchant', '$2b$12$ALAusESrcY3VzOwhF67oZOep8se2YWemmG/M9l5AIYN6iGzM3U7dq', 'John Smith', 'test_merchant@gmail.com', true, '0412345678', 'Unit 123 202A Point St Pyrmont');

insert into users (username, password, name, email, isMerchant, phoneNumber, address)
VALUES ('test_purchaser', '$2b$12$197iV9i7y3oA8aw9Hm0tU.6pUxR4Sm4Zd36XdTlMs47mW8NkjuWjm', 'Jane Doe', 'test_purchaser@gmail.com', false, '0412345678', '200 Harris St Pyrmont');



INSERT INTO products (merchantId, name, description, price, availableDate, image)
VALUES (1, 'Spaghetti bolognese', 'Spaghetti with mince beef and tomato sauce', '8.50', '8pm', 'dbb1af75-99bb-4ad0-9d8b-6d27e193a989.jpg');

INSERT INTO products (merchantId, name, description, price, availableDate, image)
VALUES (1, 'Pizza', 'Pizza with cheesee and pepperoni', '12.00', '5pm', 'c54d3197-e1d3-4c7d-bdd2-c8ed002d29f6.jpg');

INSERT INTO products (merchantId, name, description, price, availableDate, image)
VALUES (1, 'Pork dumplings', 'Pork dumplings lorem ispum long long long', '9.50', '7pm', '5a282cd5-4d1a-4026-ae4e-a19c298eb4f2.jpg');

INSERT INTO products (merchantId, name, description, price, availableDate, image)
VALUES (1, 'Fish and Chips', 'Snapper fish with chips that with chicken salt', '11.00', '9pm', '1a98f6e7-3d19-4219-a641-f2a527c085bb.jpg');


INSERT INTO accessTokens(userId, token, expiry)
VALUES (2, 'lu8wgdEn4ZKI2/SL3AELkCJ5frPw4ax9', '2025-04-05 13:21:09');


INSERT INTO accessTokens(userId, token, expiry)
VALUES (1, '/3oLILDDNGH5jUj3FAVPPABAMR5IjSvB', '2025-04-05 13:21:09');