# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.13-MariaDB)
# Database: SAE_Zwischenprojekt
# Generation Time: 2017-01-30 05:47:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table currencies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `short` varchar(10) DEFAULT NULL,
  `factor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table nav
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nav`;

CREATE TABLE `nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `nav` WRITE;
/*!40000 ALTER TABLE `nav` DISABLE KEYS */;

INSERT INTO `nav` (`id`, `name`, `link`, `position`)
VALUES
	(1,'Home','home',1),
	(2,'News','news',2),
	(3,'Tours','tours',3),
	(4,'Contact Us','contact_us',4);

/*!40000 ALTER TABLE `nav` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `preview` text,
  `content` text,
  `created_at` varchar(50) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `headerimg` varchar(50) DEFAULT NULL,
  `img1` varchar(50) DEFAULT NULL,
  `img2` varchar(50) DEFAULT NULL,
  `img3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO `news` (`id`, `title`, `preview`, `content`, `created_at`, `author_id`, `headerimg`, `img1`, `img2`, `img3`)
VALUES
	(1,'Coole News','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','1483492221',1,'img/news/viperroom.png','img/news/viperroom1.jpg','img/news/viperroom2.jpg','img/news/viperroom3.jpg');

/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table news_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news_comments`;

CREATE TABLE `news_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `comment` text,
  `created_at` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `news_comments` WRITE;
/*!40000 ALTER TABLE `news_comments` DISABLE KEYS */;

INSERT INTO `news_comments` (`id`, `news_id`, `author_id`, `comment`, `created_at`)
VALUES
	(1,1,1,'asdasdas','1485705229'),
	(2,2,1,'asdasda','1485712688');

/*!40000 ALTER TABLE `news_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table order_products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_products`;

CREATE TABLE `order_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ordernumber` int(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table payments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;

INSERT INTO `payments` (`id`, `name`)
VALUES
	(1,'Credit Card'),
	(2,'PayPal'),
	(3,'Sofort');

/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_categories`;

CREATE TABLE `product_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;

INSERT INTO `product_categories` (`id`, `name`)
VALUES
	(1,'Shirts'),
	(2,'Hoodies'),
	(3,'Hats'),
	(4,'Backpacks'),
	(5,'Cups'),
	(99,'Others');

/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_imgs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_imgs`;

CREATE TABLE `product_imgs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `product_imgs` WRITE;
/*!40000 ALTER TABLE `product_imgs` DISABLE KEYS */;

INSERT INTO `product_imgs` (`id`, `product_id`, `path`)
VALUES
	(1,1,'img/shop/shirt1-1.png'),
	(2,2,'img/shop/shirt2-1.png'),
	(3,3,'img/shop/hoodie1.png'),
	(4,4,'img/shop/hoodie2.png'),
	(7,7,'img/shop/cup1.png'),
	(8,8,'img/shop/cup1.png'),
	(9,9,'img/shop/mousepad1.png'),
	(10,10,'img/shop/bag1.png'),
	(11,11,'img/shop/bag1.png'),
	(12,1,'img/shop/shirt1-2.png'),
	(13,2,'img/shop/shirt2-2.png'),
	(14,12,'img/shop/notebook1.png');

/*!40000 ALTER TABLE `product_imgs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(11,0) DEFAULT NULL,
  `description` text,
  `stock` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `price_sale` decimal(11,0) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` varchar(30) DEFAULT NULL,
  `updated_at` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `description`, `stock`, `sale`, `price_sale`, `type`, `created_at`, `updated_at`)
VALUES
	(1,1,'Red July Shirt 1',1299,NULL,20,0,NULL,0,NULL,NULL),
	(2,1,'Red July Shirt 2',1299,NULL,15,1,999,0,NULL,NULL),
	(3,2,'Red July Hoodie 1',2999,NULL,25,0,NULL,0,NULL,NULL),
	(4,2,'Red July Hoodie 2',2999,NULL,30,1,2499,0,NULL,NULL),
	(5,3,'Red July Cap',1999,NULL,12,0,NULL,1,NULL,NULL),
	(6,3,'Red July Beanie',1499,NULL,18,0,NULL,1,NULL,NULL),
	(7,5,'Red July Cup 1',999,NULL,20,1,499,1,NULL,NULL),
	(8,5,'Red July Cup 2',999,NULL,12,0,NULL,1,NULL,NULL),
	(9,99,'Red July Mousepad',1499,NULL,18,0,NULL,1,NULL,NULL),
	(10,4,'Red July Backpack',3499,NULL,8,0,NULL,1,NULL,NULL),
	(11,4,'Red July Bag',1599,NULL,12,0,NULL,1,NULL,NULL);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table shop_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_comments`;

CREATE TABLE `shop_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `comment` text,
  `rating` int(11) DEFAULT NULL,
  `created_at` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table shop_nav
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_nav`;

CREATE TABLE `shop_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `is_premium` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `uname`, `first_name`, `last_name`, `password`, `email`, `address`, `zip`, `city`, `country`, `phone`, `is_admin`, `is_premium`, `rank`)
VALUES
	(1,'OfficialxSmoker','Patrick','Gomez','2f2a515f52a607e82988aa8dbadb96ad283b85d1:41543','red-july@hotmail.com','Seuttergasse 10/15',1130,'Vienna',0,'06644571908',1,NULL,NULL),
	(2,'PhutureX','Christoph','Reich','43a79e498cbf02d21c758a8482b46111c8c2f713:32409','christoph.reich@gmx.at','Rolandweg 10/5',1160,'Vienna',0,'06647281920',1,NULL,NULL),
	(3,'RandomUser','Random','User','db4e2cbe55cb5b9e4a794c6b087cb738ce9f226c:83783','random@user.com','Randomstreet 10/15',1130,'Vienna',0,'06602193123',NULL,NULL,NULL),
	(4,'Phillipson','Phil','Lippe','08b03f32bfdbc174b7c795b840ac296dbfe2620f:19211','phil@lip.com','Beefsontown 10/2',1130,'Kobe',2,'06644871201',NULL,NULL,NULL),
	(5,'Johnny19','Johnny','Bravo','52f6484f835090327311436766fc1ba799729114:63179','johnny@hotmail.com','Johnson Road 3/21',1130,'Köln',1,'06761829324',0,NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
