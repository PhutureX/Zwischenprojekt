-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 14. Feb 2017 um 14:21
-- Server-Version: 10.1.19-MariaDB
-- PHP-Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `sae_zwischenprojekt`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short` varchar(10) DEFAULT NULL,
  `factor` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `short`, `factor`) VALUES
(1, 'Euro', 'EUR', '1.00'),
(2, 'US Dollar', 'USD', '1.08'),
(3, 'Pound', 'GBP', '0.86'),
(4, 'Japanese Yen', 'YPN', '122.00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `nav`
--

CREATE TABLE `nav` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `nav`
--

INSERT INTO `nav` (`id`, `name`, `link`, `position`) VALUES
(1, 'Home', 'home', 1),
(2, 'News', 'news', 2),
(3, 'Tours', 'tours', 3),
(4, 'Contact Us', 'contact_us', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `news`
--

CREATE TABLE `news` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `preview` text,
  `content` text,
  `created_at` varchar(50) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `headerimg` varchar(50) DEFAULT NULL,
  `img1` varchar(50) DEFAULT NULL,
  `img2` varchar(50) DEFAULT NULL,
  `img3` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `news`
--

INSERT INTO `news` (`id`, `title`, `preview`, `content`, `created_at`, `author_id`, `headerimg`, `img1`, `img2`, `img3`) VALUES
(1, 'Red is not Dead tour starting soon!', 'We know exactly how long you''ve been waiting for our new album. Of course we all know what a new album means, that''s right! Starting this February, we will tour around the area of Austria, Germany, Switzerland, Paris, Italy, etc. For more information about our tour, make sure to check out our tours page!', 'We know exactly how long you''ve been waiting for our new album. Of course we all know what a new album means, that''s right! Starting this February, we will tour around the area of Austria, Germany, Switzerland, Paris, Italy, etc. For more information about our tour, make sure to check out our tours page!\r\n\r\nSo we know exactly how you feel. We''ve been in the same spot just a few years ago! In our last tour "Summer Splash 2016" we got to know you guys really good and we can assure you, we miss you at least as much as our hardcore fans have missed us. Without the people supporting us throughout the whole year, we would''ve been nowhere near from where we are now. After we heard you sing along to "18 Hours" or "From Above", we just couldn''t resist to make more and more and more for you!\r\n\r\nOur motivation, creating more content for you guys, just skyrocketed to a level we would''ve never dreamt possible. So we worked hard to be able to arrange and perform the best tour this album could ever dream to deserve. \r\n\r\nSo get ready, cause we ain''t stopping!', '1483392221', 1, 'img/news/viperroom.png', 'img/news/viperroom1.jpg', 'img/news/viperroom2.jpg', 'img/news/viperroom3.jpg'),
(2, '"Conversation" is out now!', 'Just a brief reminder, that our new album is out for sale from this day on! We really hope you guys will enjoy the tracks on this one just as much as our other songs and we are pumped to see you guys very soon!', 'Just a brief reminder, that our new album is out for sale from this day on! We really hope you guys will enjoy the tracks on this one just as much as our other songs and we are pumped to see you guys very soon! We''ve known exactly what we have gotten our selves into when Patrick had the idea of this albums theme. You will be surprised to not only see more songs with deeper meaning, but also songs in our good old fashioned alternative/punk scene.\r\n\r\nAfter the support we''ve gotten from you guys, we just knew we couldn''t stop here! We spend everyday trying to write the sickest songs and bringing them up to perfection. You know, usually good songs write themselves, now imagine we polish them up a bit and make sure we dont''t lose our touch with the old school genre of ours.\r\n\r\nThis album drop does not only mean, you guys get to hear new music, it also means that you can prepare yourselves for some good months to come. Make sure you always keep track of us since we will be announcing a lot of new stuff very soon!', '1482916516', 1, 'img/news/album2-1.jpg', 'img/news/conversation1.jpg', 'img/news/conversation2.jpg', 'img/news/conversation3.jpg'),
(3, 'Red July wishes you Merry Christmas!', 'On behalf of every member of the band aswell as the whole production team, we wish you merry christmas! Looking back at 2016 we could not complain even a little! You guys have supported us a lot this year. Lets recap a bit shall we?', 'On behalf of every member of the band aswell as the whole production team, we wish you merry christmas! Looking back at 2016 we could not complain even a little! You guys have supported us a lot this year. Lets recap a bit shall we?\r\n\r\nWhen 2016 started we had just released our single "Fathers Song" which by the way is to date still our most sold solo EP! Woohoo! But let''s not forget what happened right after that. We released From above which was a huge hit especially in the UK. Followed by "Toxic" and last but not least, we released "18 Hours" which is still our most viewed video on Youtube. After a few concerts around in Europe, we decided to start our mid year surprise, which was the ultimate alternative/punk experience!\r\n\r\nThat''s right, you guys blew us away in the "Summer Splash" tour. It was the best feeling ever! So why would anyone think we wouldn''t wanna do anything like that again? We''re not saying that a "Summer Splash 2" is on your way. But i think you guys will be quite happy with the news we are going to share pretty soon, so stay tuned and keep an eye on the news! ', '1482218619', 1, 'img/news/mcrjh.jpg', 'img/news/mcrj1.jpg', 'img/news/mcrj3.jpg', 'img/news/mcrj2.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `news_comments`
--

CREATE TABLE `news_comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `comment` text,
  `created_at` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `news_comments`
--

INSERT INTO `news_comments` (`id`, `news_id`, `author_id`, `comment`, `created_at`) VALUES
(1, 2, 2, 'FeelsGoodMan', '1484705229'),
(2, 2, 1, 'savage', '1483712688'),
(3, 2, 9, 'Woah thats Awesome DUDE!!!!!', '1484119128'),
(4, 3, 9, 'Are yo kidding me!? its been like 4 months since you guys just chilled out here', '1483119165'),
(5, 1, 9, 'DOOOOOOD I KNEW IT!', '1484119181'),
(6, 1, 9, 'sry caps...', '1484119190'),
(7, 3, 10, 'dude who need christmas lol', '1483119624'),
(8, 1, 10, 'OMFG thats like the best christmas present ever!!!!!!!!!!', '1484119657'),
(9, 2, 10, 'TELL ME IM NOT DREAMING OOOOOOOOOOOOOOHHHHH i''ve waited too long for this thats awesome omg!!', '1484119711'),
(10, 2, 5, 'NOOO WAAAAY ARE YOU KIDDING MEEE!!!!! 2017 best year ever!!!! <3', '1484129382'),
(11, 3, 3, 'what a joke laaaaaameeeeeee', '1483292842'),
(13, 1, 4, 'lol Jeffrey', '1484122113');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `ordernumber` int(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `payment` varchar(11) DEFAULT NULL,
  `shipping` varchar(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `orders`
--

INSERT INTO `orders` (`id`, `ordernumber`, `user_id`, `created_at`, `payment`, `shipping`, `status`) VALUES
(50, 20171, 2, 1486975193, 'PayPal', 'UPS', 0),
(86, 201751, 2, 1487078446, 'Sofort', 'DHL', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size`, `quantity`) VALUES
(32, 0, 2, '0', 1),
(33, 0, 4, '0', 1),
(34, 0, 4, '0', 1),
(35, 0, 3, '0', 1),
(36, 0, 1, '0', 1),
(124, 50, 4, '2XL', 1),
(125, 50, 1, 'XL', 1),
(126, 50, 3, '3XL', 1),
(127, 50, 12, 'Red July Notebook', 1),
(128, 50, 14, 'Youth Box', 1),
(129, 50, 15, 'Conversation', 1),
(163, 0, 1, 'S', 1),
(164, 0, 1, 'S', 1),
(165, 0, 1, 'S', 1),
(166, 0, 1, 'S', 1),
(167, 0, 1, 'S', 1),
(168, 0, 1, 'S', 1),
(169, 0, 1, 'S', 1),
(170, 0, 1, 'S', 1),
(171, 0, 1, 'S', 1),
(172, 0, 9, 'Red July Mousepad', 1),
(173, 0, 9, 'Red July Mousepad', 1),
(174, 0, 9, 'Red July Mousepad', 1),
(193, 86, 1, 'S', 1),
(194, 86, 1, 'S', 1),
(195, 86, 15, 'Conversation', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `payments`
--

CREATE TABLE `payments` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `payments`
--

INSERT INTO `payments` (`id`, `name`) VALUES
(1, 'Credit Card'),
(2, 'PayPal'),
(3, 'Sofort');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `updated_at` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `description`, `stock`, `stock_s`, `stock_m`, `stock_l`, `stock_xl`, `stock_2xl`, `stock_3xl`, `sale`, `price_sale`, `product_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'White RJ T-Shirt', '12.99', 'Our white designer T-shirt with the official Red July logo.', 28, 3, 5, 5, 5, 5, 5, 0, NULL, 0, '1485827060', NULL),
(2, 1, 'Black RJ T-Shirt', '12.99', 'Our black designer T-shirt with the official Red July logo.', 26, 2, 3, 1, 0, 10, 10, 1, '9.99', 0, '1485827052', NULL),
(3, 2, 'White RJ Hoodie', '29.99', 'Our white designer Hoodie with the official Red July logo.', 25, 5, 5, 3, 2, 5, 5, 0, NULL, 0, '1485827060', NULL),
(4, 2, 'Black RJ Hoodie', '29.99', 'Our black designer Hoodie with the official Red July logo.', 31, 1, 5, 5, 10, 5, 5, 1, '24.99', 0, '1485827052', NULL),
(5, 3, 'Red July Cap', '19.99', 'Our official designer Cap with the official Red July Logo.', 12, 0, 0, 0, 0, 0, 0, 0, NULL, 1, '1485827052', NULL),
(7, 5, 'Red July Cup ', '9.99', 'The official Red July Cup, with the official Red July Logo printed on it.', 23, 0, 0, 0, 0, 0, 0, 1, '4.99', 1, '1485827060', NULL),
(9, 99, 'Red July Mousepad', '14.99', 'The official Red July Mousepad, with the official Logo Printed on it. <br>400 x 300 x 3mm', 2, 0, 0, 0, 0, 0, 0, 0, NULL, 1, '1485827060', NULL),
(10, 4, 'Red July Backpack', '34.99', 'Our official Backpack, with the official Red July Logo printed on the front.', 18, 0, 0, 0, 0, 0, 0, 0, NULL, 1, '1485827052', NULL),
(12, 99, 'Red July Notebook', '1.99', 'A notebook with 50 pages, with the official Red July Logo on the front.', 99, 0, 0, 0, 0, 0, 0, 0, NULL, 1, '1485827060', NULL),
(14, 6, 'Youth Box', '14.99', 'Our  First Album with 5 Songs<br>1. I Can''t Forget You <br>2. 18 Hours <br>3. Fathers Song <br>4. I Need You <br> 5. Confessions', 74, 0, 0, 0, 0, 3, 0, 1, '9.99', 1, '1485827052', NULL),
(15, 6, 'Conversation', '19.99', 'Our Second Album with 6 Songs<br>1. Toxic <br>2. Sympathy <br>3. Pot Song <br>4. Soul <br>5. From Above <br>6. A Simple Goodbye', 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1485827060', NULL),
(16, 7, 'Red July - I Can''t Forget You', '0.99', NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1485827060', NULL),
(17, 7, 'Red July - 18 Hours', '0.99', NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1485827060', NULL),
(18, 7, 'Red July - Fathers Song', '0.99', NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1485827052', NULL),
(19, 7, 'Red July - I Need You', '0.99', NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1485827052', NULL),
(20, 7, 'Youth Box - Download', '14.99', 'Our  First Album with 5 Songs now as Digital Download available!<br>1. I Can''t Forget You <br>2. 18 Hours <br>3. Fathers Song <br>4. I Need You <br> 5. Confessions', -1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9.99', 2, NULL, NULL),
(21, 7, 'Conversation - Download', '19.99', 'Our Second Album with 6 Songs now as Digital Download available!<br>1. Toxic <br>2. Sympathy <br>3. Pot Song <br>4. Soul <br>5. From Above <br>6. A Simple Goodbye', -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(26, 7, 'Red July - Confessions', '0.99', NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(27, 7, 'Red July - Toxic', '0.99', NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(28, 7, 'Red July - Sympathy', '0.99', NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(29, 7, 'Red July - Pot Song', '0.99', NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(30, 7, 'Red July - Soul', '0.99', NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(31, 7, 'Red July - From Above', '0.99', NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(32, 7, 'Red July - A Simple Goodbye', '0.99', NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`) VALUES
(1, 'Shirts'),
(2, 'Hoodies'),
(3, 'Hats'),
(4, 'Backpacks'),
(5, 'Tableware'),
(6, 'Albums'),
(7, 'Digital Downloads'),
(99, 'Others');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product_imgs`
--

CREATE TABLE `product_imgs` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `product_imgs`
--

INSERT INTO `product_imgs` (`id`, `product_id`, `path`) VALUES
(1, 1, 'img/shop/shirt1-1.png'),
(2, 2, 'img/shop/shirt2-1.png'),
(3, 3, 'img/shop/hoodie1-1.png'),
(4, 4, 'img/shop/hoodie2-1.png'),
(7, 7, 'img/shop/cup1-1.png'),
(8, 8, 'img/shop/cup1-1.png'),
(9, 9, 'img/shop/mousepad1-1.png'),
(10, 10, 'img/shop/backpack1-1.png'),
(12, 1, 'img/shop/shirt1-2.png'),
(13, 2, 'img/shop/shirt2-2.png'),
(14, 12, 'img/shop/notebook1-1.png'),
(15, 16, 'img/shop/digital1-1.jpg'),
(16, 17, 'img/shop/digital1-1.jpg'),
(17, 18, 'img/shop/digital1-1.jpg'),
(18, 19, 'img/shop/digital1-1.jpg'),
(19, 20, 'img/shop/album1-1.jpg'),
(20, 21, 'img/shop/album2-1.jpg'),
(21, 14, 'img/shop/album1-1.jpg'),
(22, 15, 'img/shop/album2-1.jpg'),
(23, 24, NULL),
(24, 25, NULL),
(25, 25, NULL),
(26, 26, 'img/shop/digital1-1.jpg'),
(27, 27, 'img/shop/digital1-1.jpg'),
(28, 28, 'img/shop/digital1-1.jpg'),
(29, 29, 'img/shop/digital1-1.jpg'),
(30, 28, 'img/shop/digital1-1.jpg'),
(31, 29, 'img/shop/digital1-1.jpg'),
(32, 30, 'img/shop/digital1-1.jpg'),
(33, 31, 'img/shop/digital1-1.jpg'),
(34, 32, 'img/shop/digital1-1.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `shop_comments`
--

CREATE TABLE `shop_comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `comment` text,
  `rating` int(11) DEFAULT NULL,
  `created_at` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `shop_nav`
--

CREATE TABLE `shop_nav` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tours`
--

CREATE TABLE `tours` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `feat` varchar(50) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `tourday` varchar(50) DEFAULT NULL,
  `ticketlink` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `tours`
--

INSERT INTO `tours` (`id`, `title`, `feat`, `location`, `city`, `country`, `tourday`, `ticketlink`) VALUES
(1, 'Red is not Dead Tour', 'Cake Break', 'Palladium', 'Cologne', 'Germany', '14.02.2017', 'http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
(2, 'Red is not Dead Tour', 'Cake Break', 'Sporthalle Hamburg', 'Hamburg', 'Germany', '16.02.2017', 'http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
(3, 'Red is not Dead Tour', 'Cake Break', 'Columbiahalle', 'Berlin', 'Germany', '17.02.2017', 'http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
(4, 'Red is not Dead Tour', 'Cake Break', 'Gasometer', 'Vienna', 'Austria', '18.02.2017', 'http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
(5, 'Red is not Dead Tour', 'Cake Break', 'Alcatraz', 'Milan', 'Italy', '20.02.2017', 'http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
(6, 'Red is not Dead Tour', 'Cake Break', 'Volkshaus', 'Zürich', 'Switzerland', '21.02.2017', 'http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
(11, 'Red is not Dead Tour', 'Cake Break', 'Trianon', 'Paris', 'France', '23.02.2017', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `uname`, `first_name`, `last_name`, `password`, `email`, `address`, `zip`, `city`, `country`, `phone`, `is_admin`, `is_premium`, `rank`) VALUES
(1, 'OfficialxSmoker', 'Patrick', 'Gomez', '2f2a515f52a607e82988aa8dbadb96ad283b85d1:41543', 'red-july@hotmail.com', 'Seuttergasse 10/15', 1130, 'Vienna', 'Austria', '06644571908', 1, NULL, NULL),
(2, 'PhutureX', 'Christoph', 'Reich', '43a79e498cbf02d21c758a8482b46111c8c2f713:32409', 'christoph.reich@gmx.at', 'Rolandweg 10/5', 1160, 'Vienna', 'Austria', '06605502285', 1, NULL, NULL),
(3, 'RandomUser', 'Random', 'User', 'db4e2cbe55cb5b9e4a794c6b087cb738ce9f226c:83783', 'random@user.com', 'Randomstreet 10/15', 1130, 'Vienna', 'Austria', '06602193123', 0, NULL, NULL),
(4, 'Phillipson', 'Phil', 'Lippe', '08b03f32bfdbc174b7c795b840ac296dbfe2620f:19211', 'phil@lip.com', 'Beefsontown 10/2', 1130, 'Kobe', 'Japan', '06644871201', 0, NULL, NULL),
(5, 'Johnny19', 'Johnny', 'Bravo', '52f6484f835090327311436766fc1ba799729114:63179', 'johnny@hotmail.com', 'Johnson Road 3/21', 1130, 'Köln', 'Germany', '06761829324', 0, NULL, NULL),
(6, 'admin', 'Admin', 'Istrator', '171288e5fbc7fb97004229ca0dbbdc720076e615:74973', 'admin@redjuly.com', 'Rainbowstreet 42', 1337, 'Arkham City', 'United States', '06603748273', 1, NULL, NULL),
(9, 'JeffreyFan', 'Jeffrey', 'Porter', '5c0ca6f735323ad974e61666b0c2784dbebe4454:71031', 'Jeffport@gmail.com', 'Bakerstreet 62', 42311, 'Exeter', 'United Kingdom', '01282748293', NULL, NULL, NULL),
(10, 'Dark_Dragon_Lord_666', 'Death', 'Lord', 'af27191225ccdfa8533d21893d96419d25c57c30:69740', 'd6d6d6@gmail.com', 'why should i tell you', 12412, 'Kansas', 'United Stated', '0123729372', NULL, NULL, NULL);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `news_comments`
--
ALTER TABLE `news_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `product_imgs`
--
ALTER TABLE `product_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `shop_comments`
--
ALTER TABLE `shop_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `shop_nav`
--
ALTER TABLE `shop_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `nav`
--
ALTER TABLE `nav`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT für Tabelle `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT für Tabelle `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT für Tabelle `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT für Tabelle `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT für Tabelle `product_imgs`
--
ALTER TABLE `product_imgs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT für Tabelle `shop_comments`
--
ALTER TABLE `shop_comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `shop_nav`
--
ALTER TABLE `shop_nav`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
