-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 28, 2024 at 07:54 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vomato`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adm_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'vomato', 'viren', 'hindbharat39@gmail.com ', '', '2024-02-20 07:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Mobile` varchar(30) NOT NULL,
  `Text_area` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`First_name`, `Last_name`, `Email`, `Mobile`, `Text_area`) VALUES
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
CREATE TABLE IF NOT EXISTS `dishes` (
  `d_id` int NOT NULL AUTO_INCREMENT,
  `rs_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 10, 'dal makhni ', 'whole black lentils & red kidney beans are slow cooked with spices, butter & cream. Served in Brown reach cream gravy.', '230.00', '6603cdb153f6f.jpg'),
(2, 3, 'subz pulao', 'Pulao is a one pot rice dish made by cooking fragrant basmati rice with aromatic whole spices, herbs & sometimes stock.', '189.00', '6603d13f5b9f1.jpg'),
(3, 5, 'JB CTC ', 'combine of colourful chutney, sun ripped tomatoes , cucumber and creamy chese between piece of freshly bread. ', '150.00', '6603c1b7184ee.jpg'),
(4, 5, 'dahi vada ', 'urad dal balls soaked in curd and served with promograbnate and sev on top of it ', '170.00', '6603d1b5530c4.jpg'),
(5, 8, 'swiss style fondue ', 'Swiss dish of melted cheese, usually including one or more of the varieties Emmentaler, Vacherin', '599.00', '6603cef9b0940.jpg'),
(6, 12, 'Swad gadh na gadh junagadh no ', 'kathiyawadi thali with lots of food items , like papad , chhash , 2 sweet , 6 subji , dal rice ', '300.00', '6603c35d53311.jpg'),
(7, 2, 'Tom sour soup', 'garlic and ginger soup with slightly turmeric powder ', '190.00', '6603ce2962178.jpg'),
(8, 4, 'churoson chocolate', 'chourx pastry mix with doublew toned milk , taste like sweet and garniched with caramel on top of it', '340.00', '6603c68a9c27a.jpg'),
(9, 8, 'veg banzara', 'made with vegetable and little bit mixture of lentils famous in india', '375.00', '6603c866546c5.jpg'),
(10, 7, 'dry manchurian ', 'it is northeeastern food item ofindia wil be served with 8 pieces os cobbage - potatop balls , tossed with onion ginger garlic .', '330.00', '6603c77536470.jpg'),
(11, 11, 'Aglio-Olio-Preperencino ', 'made of garlic and olive oil , taste simply salted and one type of pasta strecheed like noodle', '545.00', '6603c5d35d200.jpg'),
(12, 12, 'bajri no rotlo ', ' made of indian more growned millet name as bajra , inside chula ', '70.00', '6603cea91b030.jpg'),
(13, 2, 'arancini ', 'arancini is special chef recommanded dish ', '723.00', '6603cd25a22c1.jpg'),
(14, 9, 'Lemon Rice ', 'made with frangrant basmati rice , fresh lemon and blend of indian spices.', '399.00', '6603c23ac9e69.jpg'),
(15, 1, 'funghi ', 'mushroom dish with garlic base taste ', '550.00', '6603d07e03223.jpg'),
(16, 6, 'onigiri', 'onigiri is food with steamed rice wrapped in banana leaf. ', '820.00', '6603c116499ec.jpg'),
(17, 10, 'Hariyali Naan ', 'single layer indian brad with fluffy texture and golden brownspots from the baking process', '129.00', '6603c2c392ef3.jpg'),
(18, 3, 'Raj special paneer ', 'paneer cubes oiled with amul butter tossed in single pan , creany and smooth texture, red gravy is the base of this item', '520.00', '6603cbc0afd13.jpg'),
(19, 1, 'lasagna', 'cheesy layered pasta with tri colour chese ', '385.00', '6603cf57b09f1.jpg'),
(23, 10, 'Kake Naan ', 'Longest Butter Naan of India', '239.00', '661d0eccd0425.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

DROP TABLE IF EXISTS `remark`;
CREATE TABLE IF NOT EXISTS `remark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `frm_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(16, 23, 'in process', 'Please be patience, our delivery boy will be reaching to you in just 5 minutes. ', '2024-03-28 09:29:46'),
(17, 23, 'closed', 'your order is delivered succesfully', '2024-03-28 10:01:23'),
(18, 23, 'in process', 'Hey please be patience ,  our delivery boy got stuck in traffic. ', '2024-03-28 10:14:14'),
(19, 23, 'in process', 'hhhhhh', '2024-03-28 10:40:51'),
(20, 25, 'dispatch', 'hey  your order is packed & dispatched for delivery  ', '2024-03-28 11:34:30'),
(21, 25, 'rejected', 'cancelled ', '2024-03-28 11:43:17'),
(22, 25, 'dispatch', 'dispached    ..', '2024-03-28 11:43:56'),
(23, 25, 'closed', 'ff', '2024-03-28 12:01:44'),
(24, 25, 'dispatch', 'empty', '2024-03-28 12:02:05'),
(25, 25, 'dispatch', 'htn ', '2024-03-28 12:02:17'),
(26, 26, 'dispatch', 'delivery boy detail \r\n\r\nmeet kumar \r\n9265337168', '2024-03-28 12:47:28'),
(27, 27, 'in process', 'fff', '2024-03-28 13:30:46'),
(28, 27, 'rejected', 'dasdad', '2024-03-28 13:33:42'),
(29, 27, 'closed', 'Test', '2024-03-28 13:39:40'),
(30, 29, 'dispatch', 'Your Order Will Be At your Door Step within 30 Minutes \r\n\r\n\r\nOur Delivery Boy Mr. BADAMSINGH  will Deliver your order. you can contact him via phone +919088567120 ', '2024-04-15 12:09:32'),
(31, 33, 'rejected', 'empty stock', '2024-04-24 16:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `rs_id` int NOT NULL AUTO_INCREMENT,
  `c_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 2, 'Sale and Pepe', 'northsalepepe@gmail.com  ', '+91 3547854700', 'https://www.instagram.com/saleandpepe.in/?hl=en ', '7am', '6pm', 'mon-wed', 'first floot , time square 2 , baghban partyplot , thaltej , ahmedabad, 380060', '6603cb42e500f.jpg', '2024-03-15 07:36:46'),
(2, 1, 'Eulogia', 'info@eulogiainn.com ', ' +91 75670 16000 ', 'https://www.eulogiahotels.com/grandeulogia/ ', '6am', '4pm', '24hr-x7', ' Gota Bridge, Eulogia Hotel Rd, opp. Safal Vivan, Beside Prime Status, Gota, Ahmedabad, Gujarat 382481', '6603ca8cea9f6.jpg', '2024-03-15 07:28:12'),
(3, 6, 'The RAJ', 'info@theraj.in ', '+91-7096049108 ', 'https://theraj.in/menu/ ', '8am', '8pm', 'mon-sat', ' The Raj (Bopal) K. K. House, S. P. Ring Road, Ambli-Bopal, Ahmedabad  ', '6603c9cda810d.jpg', '2024-03-15 07:25:01'),
(4, 4, 'AMADO ', 'recipeamado@mail.com', '6545687458', 'www.amado.com', '9am', '6pm', 'mon-thu', 'Amado , cb-218 , corner complex , navarangpura , ahmedabad , 380025', '6603c48118784.jpg', '2024-03-15 07:02:25'),
(5, 7, 'Jay Bhavani ', 'jbvfoods24x7@gmail.com ', '+91-7575805500 ', 'https://www.jbvfoods.com/contact-us/ ', '9am', '11pm', 'Mon-Sat', 'Jay Bhavani , near Empire skyline , Science city , Ahmedabad 380060', '6603b7af7a70b.jpg', '2024-03-15 06:07:43'),
(6, 8, 'Lollo Rosso ', 'info@lollorossoindia.com ', '+91 079 4890 7329 ', 'https://lollorosso.in/About-Us-LR.html# ', '12pm', '12am', 'Mon-Sat', 'Lollo Rosso , Ground Floor, One World Capital, Ahmedabad, India. ', '6603b876c525d.jpg', '2024-03-15 06:11:02'),
(7, 3, 'Wok On Fire', 'wokonfirevastral@gmail.com ', '+91 99999 8888 ', 'https://www.wokonfire.in/ ', '12pm', '11pm', 'Mon-Fri', 'Wok On Fire, off to new golden market , chacha nehru marg , vastral , ahmedabad. 382410', '6603b99272ca5.jpg', '2024-03-15 06:15:46'),
(8, 1, 'Mango ', 'shardasaambagan@gmail.com ', '+91 99252 38230 ', 'https://atmango.com/ ', '10am', '12am', 'Mon-Sat', 'Mango , near sindhubhavan hall , sindhubhavan marg , thaltej , ahmedabad. 380051', '6603ba67d36b2.png', '2024-03-15 06:19:19'),
(9, 5, 'Kovallam  ', 'kovallamambli@gmail.com ', '+91 46 5739 8190', 'https://www.zomato.com/ahmedabad/kovallam-bopal/book ', '11am', '10pm', 'Mon-Thu', 'Kovallam , bopal-ambli road , behind ashok vatika ,  Ahmedabad', '6603bbbc52607.jpg', '2024-03-15 06:25:00'),
(10, 6, 'Kake Di Hatti ', ':customercare@kakedihatti.com', '+91 9810909754 ', ' https://kakedihatti.com/index.html ', '9am', '9pm', 'Mon-Wed', 'FF-Dev Aurum, Near Deer Circle, Anandnagar Road, Ahmedabad - 380015 ', '6603bc7c06835.jpg', '2024-03-15 06:28:12'),
(11, 2, 'Toroni ', 'toronishilaj@gmail.com ', '+91 079 8158 7329  ', 'www.toroni.food.in', '10am', '6pm', 'mon-thu', ' 2nd floor, A-square, in front kaveri sangham, Sardar Patel Ring Rd, near shilaj circle, Shilaj, Ahmedabad, Gujarat 380059  ', '660c0d3b60c53.png', '2024-04-02 13:50:51'),
(12, 9, 'rajwadu ', 'rajwadu1@gmail.com ', '+91 79-2664 3845, ', 'https://rajwadu.com/food-and-menu/ ', '10am', '3am', '24hr-x7', 'Nr. Jivraj Tolnaka,\r\nBehind Ambaji Temple,\r\nMalav Talav,\r\nAhmedabad.  ', '6603bfabe2504.jpg', '2024-03-15 06:41:47'),
(14, 1, 'mahamahal ', 'mahamahal@gmail.com', '6359595984', 'https://mahamahal.in/about-us/', '9am', '2am', 'Mon-Sat', 'FF-120, Shreeya Amalga Thaltej,\r\nOpp. Bhavin School, Ahmedabad – 380059 ', '660bf8fbcb131.png', '2024-04-02 12:24:27'),
(15, 7, 'MMV (Mumbaiya Misal Vadapav) ', 'customercare@mmvmumbaiya.com ', '9938001547', 'https://mmvmumbaiya.com/', '10am', '6pm', 'Mon-Sat', 'Smit Complex Near Ganesh plaza gali ,  Chimanlal Girdharlal Rd, Ahmedabad ', '661d0a05a6568.jpg', '2024-04-15 11:05:41'),
(18, 7, 'Jodhpuri Jayka ', 'jaykaofjaipur@gmail.com ', '9938047547', 'https://jjahmedabad.com/', '10am', '8pm', 'Mon-Sat', 'Shreeya Amalga , Opp. Avalon 3-star Hotel , Thaltej , Ahmedabad ', '661d0c0b2e97b.jpg', '2024-04-15 11:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

DROP TABLE IF EXISTS `res_category`;
CREATE TABLE IF NOT EXISTS `res_category` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Continental', '2024-03-01 08:07:35'),
(2, 'Italian', '2024-03-01 08:45:23'),
(3, 'Chinese', '2024-03-01 08:45:25'),
(4, 'Mexican', '2024-03-01 05:57:08'),
(5, 'South-Indian', '2024-03-01 06:02:18'),
(6, 'North-Indian', '2024-03-01 05:58:04'),
(7, 'Streetfood', '2024-04-15 11:06:31'),
(8, 'Japanese', '2024-03-01 06:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'viren', 'viren', 'patel', 'hindbharat399@gmail.com', '9265446182', '1ee951e7cdc7661e30f3d4130fdcb99f', 'B-408,  KAVERI SANGAM , SHILAJ , AHMEDABAD , 380059.', 1, '2024-02-20 05:55:12'),
(10, 'manan', 'manan', 'vacheta', 'manan@gmail.com', '9898764510', '0e8f7019fb32c0903f2b385e2d53c0cf', 'G-202, Karmachari nagar, ghatlodia , ahmedabad , 380024.', 1, '2024-04-10 11:01:17'),
(11, 'aanand', 'Aanand', 'Kumar', 'aanad23@gmail.com', '9265446182', '300551bf06965f6248de809c9cda1d70', 'K.K. Nagar , Ahmedabad 380051 ', 1, '2024-04-17 07:50:29'),
(12, 'anuj', 'anuj', 'sengunder', 'anuj123@gmail.com', '9876543290', '300551bf06965f6248de809c9cda1d70', 'hostel saliter sola ', 1, '2024-04-20 05:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

DROP TABLE IF EXISTS `users_orders`;
CREATE TABLE IF NOT EXISTS `users_orders` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(28, 1, 'dahi vada ', 1, '170.00', NULL, '2024-04-02 05:38:07'),
(29, 1, 'onigiri', 1, '820.00', 'dispatch', '2024-04-15 12:09:32'),
(30, 1, 'churoson chocolate', 1, '340.00', NULL, '2024-04-15 11:57:22'),
(31, 1, 'JB CTC ', 1, '150.00', NULL, '2024-04-19 18:25:24'),
(32, 1, 'subz pulao', 1, '189.00', NULL, '2024-04-20 06:51:54'),
(33, 1, 'Raj special paneer ', 1, '520.00', 'rejected', '2024-04-24 16:45:32');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
