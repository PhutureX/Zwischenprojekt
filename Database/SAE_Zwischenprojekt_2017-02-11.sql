# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.13-MariaDB)
# Database: SAE_Zwischenprojekt
# Generation Time: 2017-02-10 23:26:38 +0000
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
  `factor` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;

INSERT INTO `currencies` (`id`, `name`, `short`, `factor`)
VALUES
	(1,'Euro','EUR',1.00),
	(2,'US Dollar','USD',1.08),
	(3,'Pound','GBP',0.86),
	(4,'Japanese Yen','YPN',122.00);

/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;


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
	(1,'Red is not Dead tour starting soon!','We know exactly how long you\'ve been waiting for our new album. Of course we all know what a new album means, that\'s right! Starting this February, we will tour around the area of Austria, Germany, Switzerland, Paris, Italy, etc. For more information about our tour, make sure to check out our tours page!','We know exactly how long you\'ve been waiting for our new album. Of course we all know what a new album means, that\'s right! Starting this February, we will tour around the area of Austria, Germany, Switzerland, Paris, Italy, etc. For more information about our tour, make sure to check out our tours page!\r\n\r\nSo we know exactly how you feel. We\'ve been in the same spot just a few years ago! In our last tour \"Summer Splash 2016\" we got to know you guys really good and we can assure you, we miss you at least as much as our hardcore fans have missed us. Without the people supporting us throughout the whole year, we would\'ve been nowhere near from where we are now. After we heard you sing along to \"18 Hours\" or \"From Above\", we just couldn\'t resist to make more and more and more for you!\r\n\r\nOur motivation, creating more content for you guys, just skyrocketed to a level we would\'ve never dreamt possible. So we worked hard to be able to arrange and perform the best tour this album could ever dream to deserve. \r\n\r\nSo get ready, cause we ain\'t stopping!','1483392221',1,'img/news/viperroom.png','img/news/viperroom1.jpg','img/news/viperroom2.jpg','img/news/viperroom3.jpg'),
	(2,'\"Conversation\" is out now!','Just a brief reminder, that our new album is out for sale from this day on! We really hope you guys will enjoy the tracks on this one just as much as our other songs and we are pumped to see you guys very soon!','Just a brief reminder, that our new album is out for sale from this day on! We really hope you guys will enjoy the tracks on this one just as much as our other songs and we are pumped to see you guys very soon! We\'ve known exactly what we have gotten our selves into when Patrick had the idea of this albums theme. You will be surprised to not only see more songs with deeper meaning, but also songs in our good old fashioned alternative/punk scene.\r\n\r\nAfter the support we\'ve gotten from you guys, we just knew we couldn\'t stop here! We spend everyday trying to write the sickest songs and bringing them up to perfection. You know, usually good songs write themselves, now imagine we polish them up a bit and make sure we dont\'t lose our touch with the old school genre of ours.\r\n\r\nThis album drop does not only mean, you guys get to hear new music, it also means that you can prepare yourselves for some good months to come. Make sure you always keep track of us since we will be announcing a lot of new stuff very soon!','1482916516',1,'img/news/album2-1.jpg','img/news/conversation1.jpg','img/news/conversation2.jpg','img/news/conversation3.jpg'),
	(3,'Red July wishes you Merry Christmas!','On behalf of every member of the band aswell as the whole production team, we wish you merry christmas! Looking back at 2016 we could not complain even a little! You guys have supported us a lot this year. Lets recap a bit shall we?','On behalf of every member of the band aswell as the whole production team, we wish you merry christmas! Looking back at 2016 we could not complain even a little! You guys have supported us a lot this year. Lets recap a bit shall we?\r\n\r\nWhen 2016 started we had just released our single \"Fathers Song\" which by the way is to date still our most sold solo EP! Woohoo! But let\'s not forget what happened right after that. We released From above which was a huge hit especially in the UK. Followed by \"Toxic\" and last but not least, we released \"18 Hours\" which is still our most viewed video on Youtube. After a few concerts around in Europe, we decided to start our mid year surprise, which was the ultimate alternative/punk experience!\r\n\r\nThat\'s right, you guys blew us away in the \"Summer Splash\" tour. It was the best feeling ever! So why would anyone think we wouldn\'t wanna do anything like that again? We\'re not saying that a \"Summer Splash 2\" is on your way. But i think you guys will be quite happy with the news we are going to share pretty soon, so stay tuned and keep an eye on the news! ','1482218619',1,'img/news/mcrjh.jpg','img/news/mcrj1.jpg','img/news/mcrj3.jpg','img/news/mcrj2.jpg'),
	(4,'Yo whattup','asdjhaslkjdhasd','asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi \r\n\r\n\r\nasdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi \r\n\r\nasdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi \r\n\r\nasdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi \r\n\r\nasdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi asdl hasdhuas hid alhja dslhjas dljhdas lhjads has lhads hlads iph api hadspih sadpi as pias pihaphia rhpi arphi ','1486686076',1,'img/news/18hoursmakingof.png','img/news/18hoursmakingof3.jpg','img/news/0101011.jpg','img/news/aaa.jpg');

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
	(1,2,2,'FeelsGoodMan','1484705229'),
	(2,2,1,'savage','1483712688'),
	(3,2,9,'Woah thats Awesome DUDE!!!!!','1484119128'),
	(4,3,9,'Are yo kidding me!? its been like 4 months since you guys just chilled out here','1483119165'),
	(5,1,9,'DOOOOOOD I KNEW IT!','1484119181'),
	(6,1,9,'sry caps...','1484119190'),
	(7,3,10,'dude who need christmas lol','1483119624'),
	(8,1,10,'OMFG thats like the best christmas present ever!!!!!!!!!!','1484119657'),
	(9,2,10,'TELL ME IM NOT DREAMING OOOOOOOOOOOOOOHHHHH i\'ve waited too long for this thats awesome omg!!','1484119711'),
	(10,2,5,'NOOO WAAAAY ARE YOU KIDDING MEEE!!!!! 2017 best year ever!!!! <3','1484129382'),
	(11,3,3,'what a joke laaaaaameeeeeee','1483292842'),
	(13,1,4,'lol Jeffrey','1484122113'),
	(14,4,1,'aosjapodjakösjd asdöl jasöd as','1486686108');

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

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `quantity`)
VALUES
	(1,0,1,1),
	(2,0,1,1),
	(3,5,1,1),
	(4,6,7,1),
	(5,7,1,1),
	(6,8,3,1),
	(7,9,1,1),
	(8,10,1,1),
	(9,11,3,1),
	(10,0,3,1),
	(11,0,3,1),
	(12,0,3,1),
	(13,0,3,1),
	(14,0,3,1),
	(15,0,3,1),
	(16,0,3,1),
	(17,0,2,1),
	(18,0,2,1),
	(19,0,2,1),
	(20,0,2,1);

/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ordernumber` int(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `payment` varchar(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `ordernumber`, `user_id`, `created_at`, `payment`, `status`)
VALUES
	(1,20171,0,1486015947,'0',0),
	(2,20172,0,1486015974,'0',0),
	(3,20173,0,1486015985,'0',0),
	(4,20174,2,1486016067,'0',0),
	(5,20175,2,1486016241,'0',0),
	(6,20176,2,1486016327,'0',0),
	(7,20177,0,1486016388,'0',0),
	(8,20178,0,1486016535,'0',0),
	(9,20179,0,1486060752,'0',0),
	(10,201710,0,1486062507,'0',0),
	(11,201711,0,1486073497,'0',0);

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


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
	(5,'Tableware'),
	(6,'Albums'),
	(7,'Digital Downloads'),
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
	(3,3,'img/shop/hoodie1-1.png'),
	(4,4,'img/shop/hoodie2-1.png'),
	(7,7,'img/shop/cup1-1.png'),
	(8,8,'img/shop/cup1-1.png'),
	(9,9,'img/shop/mousepad1-1.png'),
	(10,10,'img/shop/backpack1-1.png'),
	(12,1,'img/shop/shirt1-2.png'),
	(13,2,'img/shop/shirt2-2.png'),
	(14,12,'img/shop/notebook1-1.png'),
	(15,16,'img/shop/digital1-1.jpg'),
	(16,17,'img/shop/digital1-1.jpg'),
	(17,18,'img/shop/digital1-1.jpg'),
	(18,19,'img/shop/digital1-1.jpg'),
	(19,20,'img/shop/album1-1.jpg'),
	(20,21,'img/shop/album2-1.jpg'),
	(21,14,'img/shop/album1-1.jpg'),
	(22,15,'img/shop/album2-1.jpg'),
	(23,24,NULL),
	(24,25,NULL),
	(25,25,NULL),
	(26,26,'img/shop/digital1-1.jpg'),
	(27,27,'img/shop/digital1-1.jpg'),
	(28,28,'img/shop/digital1-1.jpg'),
	(29,29,'img/shop/digital1-1.jpg'),
	(30,28,'img/shop/digital1-1.jpg'),
	(31,29,'img/shop/digital1-1.jpg'),
	(32,30,'img/shop/digital1-1.jpg'),
	(33,31,'img/shop/digital1-1.jpg'),
	(34,32,'img/shop/digital1-1.jpg');

/*!40000 ALTER TABLE `product_imgs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `description` text,
  `stock` int(11) DEFAULT NULL,
  `stock_s` int(11) DEFAULT NULL,
  `stock_m` int(11) DEFAULT NULL,
  `stock_l` int(11) DEFAULT NULL,
  `stock_xl` int(11) DEFAULT NULL,
  `stock_2xl` int(11) DEFAULT NULL,
  `stock_3xl` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `price_sale` decimal(11,2) DEFAULT NULL,
  `product_type` int(10) NOT NULL,
  `created_at` varchar(30) DEFAULT NULL,
  `updated_at` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `description`, `stock`, `stock_s`, `stock_m`, `stock_l`, `stock_xl`, `stock_2xl`, `stock_3xl`, `sale`, `price_sale`, `product_type`, `created_at`, `updated_at`)
VALUES
	(1,1,'White RJ T-Shirt',12.99,'Our white designer T-shirt with the official Red July logo.',30,5,5,5,5,5,5,0,NULL,0,'1485827060',NULL),
	(2,1,'Black RJ T-Shirt',12.99,'Our black designer T-shirt with the official Red July logo.',32,5,5,10,10,5,2,1,9.99,0,'1485827052',NULL),
	(3,2,'White RJ Hoodie',29.99,'Our white designer Hoodie with the official Red July logo.',1,1,0,0,0,0,0,0,NULL,0,'1485827060',NULL),
	(4,2,'Black RJ Hoodie',29.99,'Our black designer Hoodie with the official Red July logo.',48,5,5,10,15,5,8,1,24.99,0,'1485827052',NULL),
	(5,3,'Red July Cap',19.99,'Our official designer Cap with the official Red July Logo.',12,0,0,0,0,0,0,0,NULL,1,'1485827052',NULL),
	(7,5,'Red July Cup ',9.99,'The official Red July Cup, with the official Red July Logo printed on it.',20,0,0,0,0,0,0,1,4.99,1,'1485827060',NULL),
	(9,99,'Red July Mousepad',14.99,'The official Red July Mousepad, with the official Logo Printed on it. <br>400 x 300 x 3mm',0,0,0,0,0,0,0,0,NULL,1,'1485827060',NULL),
	(10,4,'Red July Backpack',34.99,'Our official Backpack, with the official Red July Logo printed on the front.',8,0,0,0,0,0,0,0,NULL,1,'1485827052',NULL),
	(12,99,'Red July Notebook',1.99,'A notebook with 50 pages, with the official Red July Logo on the front.',50,0,0,0,0,0,0,0,NULL,1,'1485827060',NULL),
	(14,6,'Youth Box',14.99,'Our  First Album with 5 Songs<br>1. I Can\'t Forget You <br>2. 18 Hours <br>3. Fathers Song <br>4. I Need You <br> 5. Confessions',100,0,0,0,0,0,0,1,9.99,1,'1485827052',NULL),
	(15,6,'Conversation',19.99,'Our Second Album with 6 Songs<br>1. Toxic <br>2. Sympathy <br>3. Pot Song <br>4. Soul <br>5. From Above <br>6. A Simple Goodbye',100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'1485827060',NULL),
	(16,7,'Red July - I Can\'t Forget You',0.99,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'1485827060',NULL),
	(17,7,'Red July - 18 Hours',0.99,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'1485827060',NULL),
	(18,7,'Red July - Fathers Song',0.99,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'1485827052',NULL),
	(19,7,'Red July - I Need You',0.99,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'1485827052',NULL),
	(20,7,'Youth Box - Download',14.99,'Our  First Album with 5 Songs now as Digital Download available!<br>1. I Can\'t Forget You <br>2. 18 Hours <br>3. Fathers Song <br>4. I Need You <br> 5. Confessions',-1,NULL,NULL,NULL,NULL,NULL,NULL,1,9.99,2,NULL,NULL),
	(21,7,'Conversation - Download',19.99,'Our Second Album with 6 Songs now as Digital Download available!<br>1. Toxic <br>2. Sympathy <br>3. Pot Song <br>4. Soul <br>5. From Above <br>6. A Simple Goodbye',-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	(26,7,'Red July - Confessions',0.99,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	(27,7,'Red July - Toxic',0.99,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	(28,7,'Red July - Sympathy',0.99,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	(29,7,'Red July - Pot Song',0.99,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	(30,7,'Red July - Soul',0.99,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	(31,7,'Red July - From Above',0.99,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	(32,7,'Red July - A Simple Goodbye',0.99,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);

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



# Dump of table tours
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tours`;

CREATE TABLE `tours` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `feat` varchar(50) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `tourday` varchar(50) DEFAULT NULL,
  `ticketlink` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;

INSERT INTO `tours` (`id`, `title`, `feat`, `location`, `city`, `country`, `tourday`, `ticketlink`)
VALUES
	(1,'Red is not Dead Tour','Cake Break','Palladium','Cologne','Germany','14.02.2017','http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
	(2,'Red is not Dead Tour','Cake Break','Sporthalle Hamburg','Hamburg','Germany','16.02.2017','http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
	(3,'Red is not Dead Tour','Cake Break','Columbiahalle','Berlin','Germany','17.02.2017','http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
	(4,'Red is not Dead Tour','Cake Break','Gasometer','Vienna','Austria','18.02.2017','http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
	(5,'Red is not Dead Tour','Cake Break','Alcatraz','Milan','Italy','20.02.2017','http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
	(6,'Red is not Dead Tour','Cake Break','Volkshaus','Zürich','Switzerland','21.02.2017','http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
	(11,'Red is not Dead Tour','Cake Break','Trianon','Paris','France','23.02.2017','');

/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;


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
  `country` varchar(100) DEFAULT NULL,
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
	(1,'OfficialxSmoker','Patrick','Gomez','2f2a515f52a607e82988aa8dbadb96ad283b85d1:41543','red-july@hotmail.com','Seuttergasse 10/15',1130,'Vienna','Austria','06644571908',1,NULL,NULL),
	(2,'PhutureX','Christoph','Reich','43a79e498cbf02d21c758a8482b46111c8c2f713:32409','christoph.reich@gmx.at','Rolandweg 10/5',1160,'Vienna','Austria','06647281920',1,NULL,NULL),
	(3,'RandomUser','Random','User','db4e2cbe55cb5b9e4a794c6b087cb738ce9f226c:83783','random@user.com','Randomstreet 10/15',1130,'Vienna','Austria','06602193123',0,NULL,NULL),
	(4,'Phillipson','Phil','Lippe','08b03f32bfdbc174b7c795b840ac296dbfe2620f:19211','phil@lip.com','Beefsontown 10/2',1130,'Kobe','Japan','06644871201',0,NULL,NULL),
	(5,'Johnny19','Johnny','Bravo','52f6484f835090327311436766fc1ba799729114:63179','johnny@hotmail.com','Johnson Road 3/21',1130,'Köln','Germany','06761829324',0,NULL,NULL),
	(6,'admin','Admin','Istrator','171288e5fbc7fb97004229ca0dbbdc720076e615:74973','admin@redjuly.com','Rainbowstreet 42',1337,'Arkham City','United States','06603748273',1,NULL,NULL),
	(9,'JeffreyFan','Jeffrey','Porter','5c0ca6f735323ad974e61666b0c2784dbebe4454:71031','Jeffport@gmail.com','Bakerstreet 62',42311,'Exeter','United Kingdom','01282748293',NULL,NULL,NULL),
	(10,'Dark_Dragon_Lord_666','Death','Lord','af27191225ccdfa8533d21893d96419d25c57c30:69740','d6d6d6@gmail.com','why should i tell you',12412,'Kansas','United Stated','0123729372',NULL,NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
