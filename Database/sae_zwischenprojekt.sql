-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 03. Feb 2017 um 07:41
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
(1, 'Coole News', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '1483492221', 1, 'img/news/viperroom.png', 'img/news/viperroom1.jpg', 'img/news/viperroom2.jpg', 'img/news/viperroom3.jpg');

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
(1, 1, 1, 'asdasdas', '1485705229'),
(2, 2, 1, 'asdasda', '1485712688');

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
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `orders`
--

INSERT INTO `orders` (`id`, `ordernumber`, `user_id`, `created_at`, `payment`, `status`) VALUES
(1, 20171, 0, 1486015947, '0', 0),
(2, 20172, 0, 1486015974, '0', 0),
(3, 20173, 0, 1486015985, '0', 0),
(4, 20174, 2, 1486016067, '0', 0),
(5, 20175, 2, 1486016241, '0', 0),
(6, 20176, 2, 1486016327, '0', 0),
(7, 20177, 0, 1486016388, '0', 0),
(8, 20178, 0, 1486016535, '0', 0),
(9, 20179, 0, 1486060752, '0', 0),
(10, 201710, 0, 1486062507, '0', 0),
(11, 201711, 0, 1486073497, '0', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 0, 1, 1),
(2, 0, 1, 1),
(3, 5, 1, 1),
(4, 6, 7, 1),
(5, 7, 1, 1),
(6, 8, 3, 1),
(7, 9, 1, 1),
(8, 10, 1, 1),
(9, 11, 3, 1),
(10, 0, 3, 1),
(11, 0, 3, 1),
(12, 0, 3, 1),
(13, 0, 3, 1),
(14, 0, 3, 1),
(15, 0, 3, 1),
(16, 0, 3, 1);

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
(1, 1, 'White RJ T-Shirt', '12.99', 'Our white designer T-shirt with the official Red July logo.', 30, 5, 5, 5, 5, 5, 5, 0, NULL, 0, '1485827060', NULL),
(2, 1, 'Black RJ T-Shirt', '12.99', 'Our black designer T-shirt with the official Red July logo.', 32, 5, 5, 10, 10, 5, 2, 1, '9.99', 0, '1485827052', NULL),
(3, 2, 'White RJ Hoodie', '29.99', 'Our white designer Hoodie with the official Red July logo.', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 0, '1485827060', NULL),
(4, 2, 'Black RJ Hoodie', '29.99', 'Our black designer Hoodie with the official Red July logo.', 48, 5, 5, 10, 15, 5, 8, 1, '24.99', 0, '1485827052', NULL),
(5, 3, 'Red July Cap', '19.99', 'Our official designer Cap with the official Red July Logo.', 12, 0, 0, 0, 0, 0, 0, 0, NULL, 1, '1485827052', NULL),
(7, 5, 'Red July Cup ', '9.99', 'The official Red July Cup, with the official Red July Logo printed on it.', 20, 0, 0, 0, 0, 0, 0, 1, '4.99', 1, '1485827060', NULL),
(9, 99, 'Red July Mousepad', '14.99', 'The official Red July Mousepad, with the official Logo Printed on it. <br>400 x 300 x 3mm', 0, 0, 0, 0, 0, 0, 0, 0, NULL, 1, '1485827060', NULL),
(10, 4, 'Red July Backpack', '34.99', 'Our official Backpack, with the official Red July Logo printed on the front.', 8, 0, 0, 0, 0, 0, 0, 0, NULL, 1, '1485827052', NULL),
(12, 99, 'Red July Notebook', '1.99', 'A notebook with 50 pages, with the official Red July Logo on the front.', 50, 0, 0, 0, 0, 0, 0, 0, NULL, 1, '1485827060', NULL),
(14, 6, 'Youth Box', '14.99', 'Our  First Album with 5 Songs<br>1. I Can''t Forget You <br>2. 18 Hours <br>3. Fathers Song <br>4. I Need You <br> 5. Confessions', 100, 0, 0, 0, 0, 0, 0, 1, '9.99', 1, '1485827052', NULL),
(15, 6, 'Conversation', '19.99', 'Our Second Album with 6 Songs<br>1. Toxic <br>2. Sympathy <br>3. Pot Song <br>4. Soul <br>5. From Above <br>6. A Simple Goodbye', 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1485827060', NULL),
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
(1, 'Red''s not Dead', 'Cake Break', 'Palladium', 'Cologne', 'Germany', '14.02.2017', 'http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
(2, 'Red''s not Dead', 'Cake Break', 'Sporthalle Hamburg', 'Hamburg', 'Germany', '16.02.2017', 'http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
(3, 'Red''s not Dead', 'Cake Break', 'Columbiahalle', 'Berlin', 'Germany', '17.02.2017', 'http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
(4, 'Red''s not Dead', 'Cake Break', 'Gasometer', 'Vienna', 'Austria', '18.02.2017', 'http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
(5, 'Red is not Dead', 'Cake Break', 'Alcatraz', 'Milan', 'Italy', '20.02.2017', 'http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
(6, 'Red''s not Dead', 'Cake Break', 'Volkshaus', 'Zürich', 'Switzerland', '21.02.2017', 'http://www.ticketmaster.at/search/?keyword=red+july&language=en-us'),
(11, 'Red''s not Dead', 'Cake Break', 'Trianon', 'Paris', 'France', '23.02.2017', '');

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
(2, 'PhutureX', 'Christoph', 'Reich', '43a79e498cbf02d21c758a8482b46111c8c2f713:32409', 'christoph.reich@gmx.at', 'Rolandweg 10/5', 1160, 'Vienna', 'Austria', '06647281920', 1, NULL, NULL),
(3, 'RandomUser', 'Random', 'User', 'db4e2cbe55cb5b9e4a794c6b087cb738ce9f226c:83783', 'random@user.com', 'Randomstreet 10/15', 1130, 'Vienna', 'Austria', '06602193123', 0, NULL, NULL),
(4, 'Phillipson', 'Phil', 'Lippe', '08b03f32bfdbc174b7c795b840ac296dbfe2620f:19211', 'phil@lip.com', 'Beefsontown 10/2', 1130, 'Kobe', 'Japan', '06644871201', 0, NULL, NULL),
(5, 'Johnny19', 'Johnny', 'Bravo', '52f6484f835090327311436766fc1ba799729114:63179', 'johnny@hotmail.com', 'Johnson Road 3/21', 1130, 'Köln', 'Germany', '06761829324', 0, NULL, NULL),
(6, 'admin', 'Admin', 'Istrator', '853d33d0663b1b1988130e6af8640050a2e29646:18981', 'admin@admin.com', 'Adminstreet 1', 1111, 'Admin City', 'Austria', '12345678901', 1, NULL, NULL),
(8, 'test', 'test', 'test', 'f04b669390ce7ee75112b61dabbf9f987b1e33cc:13677', 'test@test.com', 'teststreet 112', 1111, 'testcity112', 'Canada', '12345678901', 0, NULL, NULL);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT für Tabelle `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
