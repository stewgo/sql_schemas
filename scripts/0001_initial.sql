CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `isMerchant` tinyint(1) NOT NULL DEFAULT 0,
  `phoneNumber` varchar(40) NOT NULL,
  `address` varchar(400) NOT NULL,
  `pickupInfo` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `merchantId` int(11) unsigned NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `description` varchar(80) NOT NULL DEFAULT '',
  `price` varchar(15) NOT NULL DEFAULT '',
  `availableDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_ProductsUsers` (`merchantId`),
  CONSTRAINT `FK_ProductsUsers` FOREIGN KEY (`merchantId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productId` int(11) unsigned NOT NULL,
  `purchaserId` int(11) unsigned NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_OrdersUsers` (`purchaserId`),
  KEY `FK_OrdersProducts` (`productId`),
  CONSTRAINT `FK_OrdersProducts` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  CONSTRAINT `FK_OrdersUsers` FOREIGN KEY (`purchaserId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `accessTokens` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) unsigned NOT NULL,
  `token` varchar(64) NOT NULL,
  `expiry` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_Token` (`token`),
  KEY `FK_AccessTokensUsers` (`userId`),
  CONSTRAINT `FK_AccessTokensUsers` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

