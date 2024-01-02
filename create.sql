CREATE TABLE `cars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vin` varchar(17) DEFAULT NULL,
  `manufacturer` char(45) DEFAULT NULL,
  `model` char(45) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `color` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cust_id` int DEFAULT NULL,
  `cust_name` char(30) DEFAULT NULL,
  `cust_phone` varchar(20) DEFAULT NULL,
  `cust_email` varchar(30) DEFAULT NULL,
  `cust_address` varchar(20) DEFAULT NULL,
  `cust_city` char(20) DEFAULT NULL,
  `cust_state` varchar(20) DEFAULT NULL,
  `cust_country` char(20) DEFAULT NULL,
  `cust_zipcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
CREATE TABLE `salespersons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int DEFAULT NULL,
  `name` char(30) DEFAULT NULL,
  `store` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
CREATE TABLE `invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_number` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `store` varchar(20) DEFAULT NULL,
  `car` int DEFAULT NULL,
  `customer` int DEFAULT NULL,
  `salesperson` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `car_id` (`car`),
  KEY `customer_id` (`customer`),
  KEY `salesperson_id` (`salesperson`),
  CONSTRAINT `car_id` FOREIGN KEY (`car`) REFERENCES `cars` (`id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`),
  CONSTRAINT `salesperson_id` FOREIGN KEY (`salesperson`) REFERENCES `salespersons` (`id`)
);

