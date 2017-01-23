# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.13-MariaDB)
# Database: SAE_Zwischenprojekt
# Generation Time: 2017-01-23 04:12:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `comment` text,
  `created_at` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;

INSERT INTO `comments` (`id`, `news_id`, `author_id`, `comment`, `created_at`)
VALUES
	(7,1,1,'tetetetest','1485136448'),
	(8,1,1,'tetetetest','1485136719'),
	(9,1,1,'tetetetest','1485136735'),
	(10,1,1,'tetetetest','1485136760'),
	(11,1,1,'tetetetest','1485136809'),
	(12,1,1,'TESTETSFSDFosdfkjposd pdosjfp osdjf posd fposdfk posdmfpo skdpof ksdpof mposd mfposdm fposdm pfomsd opfm spdomf posdm fposmdopf msdpof msdpo fm','1485139242');

/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;


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
  `headerimg` varchar(100) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `pic2` varchar(100) DEFAULT NULL,
  `pic3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO `news` (`id`, `title`, `preview`, `content`, `created_at`, `author_id`, `headerimg`, `pic1`, `pic2`, `pic3`)
VALUES
	(1,'Awesome Night at Viper Room','Adwords Keyword research for beginners When you embark on your first PPC journey, you need to keep a\n                  small number of keywords at first. Keyword lists that are thousands of words long should be left to the more\n                  experienced PPC marketer. Ideally, a beginner should use around 100 targeted keywords, anything more will\n                  probably prove too cumbersome for you to manipulate. If you can?t harness the power of large keyword...','Probably prove too.Adwords Keyword research for beginners When you embark on your first PPC journey, youneed to keep a small number of keywords at first. Keyword lists that are thousands of words long should be left to the more experienced PPC marketer. Ideally, a beginner should use around 100 targeted keywords, anything more will probably prove too cumbersome for you to manipulate. If you can?t harness the power of large keyword. AdwordsKeyword research for beginners When you embark on your first PPC journey, you need to keep a small number of keywords at first. 100 targeted keywords, anything more will probably prove too cumbersome for you to manipulate.\n\nIf you can?t harness the power of large keyword. Keywordlists that are thousands of words long should be left to the moreexperienced PPC marketer. Ideally, a beginner should use around 100 targeted keywords, anything more willprobablyprovetoo cumbersome for you to manipulate. Ideally, a beginner should use around 100 targetedkeywords, anything more will probably prove too.probably prove too.Adwords Keyword research for beginners When you embark on your first PPC journey, youneed to keep a small number of keywords at first. Keyword lists that are thousands of words long should be left to the more experienced PPC marketer. Ideally, a beginner should use around 100 targeted keywords, anything more will probably prove too cumbersome for you to manipulate. If you can?t harness the power of large keyword. AdwordsKeyword research for beginners When you embark on your first PPC journey.\n\nYou need to keep a small number of keywords at first. 100 targeted keywords, anything more will probably prove too cumbersome for you to manipulate. If you can?t harness the power of large keyword. Keywordlists that are thousands of words long should be left to the moreexperienced PPC marketer. Ideally, a beginner should use around 100 targeted keywords, anything more willprobablyprovetoo cumbersome for you to manipulate. Ideally, a beginner should use around 100 targetedkeywords, anything more will probably prove too.probably prove too.\n\nAdwords Keyword research for beginners When you embark on your first PPC journey, youneed to keep a small number of keywords at first. Keyword lists that are thousands of words long should be left to the more experienced PPC marketer. Ideally, a beginner should use around 100 targeted keywords, anything more will probably prove too cumbersome for you to manipulate. If you can?t harness the power of large keyword. AdwordsKeyword research for beginners When you embark on your first PPC journey, you need to keep a small number of keywords at first. 100 targeted keywords, anything more will probably prove too cumbersome for you to manipulate. If you can?t harness the power of large keyword. Keywordlists that are thousands of words long should be left to the moreexperienced PPC marketer. Ideally, a beginner should use around 100 targeted keywords, anything more willprobablyprovetoo cumbersome for you to manipulate. Ideally, a beginner should use around 100 targetedkeywords, anything more will probably prove too.probably prove too.Adwords Keyword research for beginners When you embark on your first PPC journey, youneed to keep a small number of keywords at first.\n\nKeyword lists that are thousands of words long should be left to the more experienced PPC marketer. Ideally, a beginner should use around 100 targeted keywords, anything more will probably prove too cumbersome for you to manipulate. If you can?t harness the power of large keyword. AdwordsKeyword research for beginners When you embark on your first PPC journey, you need to keep a small number of keywords at first. 100 targeted keywords, anything more will probably prove too cumbersome for you to manipulate. If you can?t harness the power of large keyword. Keywordlists that are thousands of words long should be left to the moreexperienced PPC marketer. Ideally, a beginner should use around 100 targeted keywords, anything more willprobablyprovetoo cumbersome for you to manipulate.\n\nIdeally, a beginner should use around 100 targetedkeywords, anything more will probably prove too.probably prove too.Adwords Keyword research for beginners When you embark on your first PPC journey, youneed to keep a small number of keywords at first. Keyword lists that are thousands of words long should be left to the more experienced PPC marketer. Ideally, a beginner should use around 100 targeted keywords, anything more will probably prove too cumbersome for you to manipulate. If you can?t harness the power of large keyword. AdwordsKeyword research for beginners When you embark on your first PPC journey, you need to keep a small number of keywords at first. 100 targeted keywords, anything more will probably prove too cumbersome for you to manipulate.\n\nIf you can?t harness the power of large keyword. Keywordlists that are thousands of words long should be left to the moreexperienced PPC marketer. Ideally, a beginner should use around 100 targeted keywords, anything more willprobablyprovetoo cumbersome for you to manipulate. Ideally, a beginner should use around 100 targetedkeywords, anything more will probably prove too.','1481912123',1,'img/news/viperroom.png','img/news/viperroom1.jpg','img/news/viperroom2.jpg','img/news/viperroom3.jpg');

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



# Dump of table product_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_categories`;

CREATE TABLE `product_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table product_imgs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_imgs`;

CREATE TABLE `product_imgs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



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
  `created_at` varchar(30) DEFAULT NULL,
  `updated_at` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



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
  `adress` varchar(50) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `is_premium` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `uname`, `first_name`, `last_name`, `password`, `email`, `adress`, `zip`, `city`, `phone`, `is_admin`, `is_premium`, `rank`)
VALUES
	(1,'OfficialxSmoker','Patrick','Gomez','2f2a515f52a607e82988aa8dbadb96ad283b85d1:41543','red-july@hotmail.com','Seuttergasse 10/15',1130,'Vienna',2147483647,1,NULL,NULL),
	(2,'PhutureX','Christoph','Reich','43a79e498cbf02d21c758a8482b46111c8c2f713:32409','christoph.reich@gmx.at','Rolandweg 10/5',1160,'Vienna',5502285,1,NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
