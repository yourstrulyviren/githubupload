-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2024 at 11:53 AM
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
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'GOLDSTARVIREN', 'admin@gmail.com', 'yourstrulyviren', '76beeb7832025bedbca23f9a05a430f0', '2024-03-20 08:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

DROP TABLE IF EXISTS `tblauthors`;
CREATE TABLE IF NOT EXISTS `tblauthors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(16, 'Vallabh Bhatt', '2024-01-29 12:10:38', NULL),
(17, 'Dr. Rakesh Mehta', '2024-01-29 12:11:08', NULL),
(18, 'Mohandas ( Gandhiji )', '2024-01-29 12:12:21', NULL),
(19, 'Navneet Publication ', '2024-01-29 12:12:48', NULL),
(20, 'Nathalal Mathur', '2024-01-29 12:13:29', NULL),
(21, 'Vedvyas', '2024-01-29 12:14:14', NULL),
(22, 'Hari Om', '2024-01-29 12:14:52', NULL),
(23, 'Jaydeep Bharodiya', '2024-01-29 12:15:18', NULL),
(24, 'Zavechand Meghani', '2024-01-29 12:16:08', NULL),
(25, 'Liberty Publication ', '2024-01-29 12:16:29', NULL),
(26, 'Jagdusha ', '2024-01-29 12:16:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

DROP TABLE IF EXISTS `tblbooks`;
CREATE TABLE IF NOT EXISTS `tblbooks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int DEFAULT NULL,
  `AuthorId` int DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(12, 'Bahuchar Maa Pragatyakatha', 10, 16, 'ISBN-978-93-02-6', '210.00', 'afcf48b12d2586bbbecdd4aa24e595d0jpeg', 0, '2024-01-29 12:20:59', '2024-01-31 07:05:02'),
(13, 'Dipression', 15, 17, 'ISBN-9624-92-01-7', '452.00', 'a9ad17e87921e268af8659d11b18db1b.jpg', 1, '2024-01-29 12:22:23', '2024-01-31 07:05:25'),
(14, 'Speakable India', 13, 19, 'ISBN-9444-98-18-6', '365.00', '94cbcb15dddbd1095259f17891a0d905jpeg', NULL, '2024-01-29 12:24:20', '2024-01-31 07:05:52'),
(15, 'satya na prayogo ', 8, 18, 'ISBN-00016-539-07-9', '70.00', '516d4d9da6f44f91c0836aa4638888b0.png', NULL, '2024-01-29 12:29:25', '2024-01-31 07:06:11'),
(16, 'Mahabharat', 17, 21, 'ISBN-9865-765-32-8', '500.00', 'd184050eb1964f37af643ef9a39e2e49jpeg', 1, '2024-01-29 12:30:21', '2024-01-31 07:06:34'),
(17, 'Janava Jevu ', 16, 19, 'ISBN-84664-787-08-2', '1350.00', '1c247742bb2fed143764a6b83bd43c6cjpeg', NULL, '2024-01-29 12:31:20', '2024-01-31 07:06:56'),
(18, 'Verbal Skill ', 13, 25, 'ISBN-98756-234-98-2', '174.00', 'c7e243915c3faf3ed6fee75f0a69d66djpeg', 1, '2024-01-29 12:33:32', '2024-01-31 07:07:22'),
(19, 'Saurashtra Ni Rasdhar', 8, 24, 'ISBN-6543-432-29-5', '877.00', 'ec6bdba9f67ea3acd22f03b33b07c2aajpeg', NULL, '2024-01-29 12:34:42', '2024-01-31 07:07:40'),
(20, 'TADAP', 4, 23, 'ISBN-3735-482-12-9', '390.00', '002dc1ab3510b4359796e57da323fe80jpeg', 1, '2024-01-29 12:35:38', '2024-01-31 07:08:00'),
(21, '365 Stories of Panch-Tantra', 12, 26, 'ISBN-2386-459-91-4', '409.00', 'b3ab3af7e3862a073a2e32d54ed26065jpeg', NULL, '2024-01-29 12:37:26', '2024-01-31 07:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE IF NOT EXISTS `tblcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2024-02-06 07:23:03', '2024-01-29 12:05:19'),
(8, 'General', 1, '2024-01-06 12:05:27', '2024-01-29 12:05:42'),
(10, 'Devotion', 1, '2024-01-29 11:56:20', '0000-00-00 00:00:00'),
(11, 'Horror', 1, '2024-01-29 11:57:07', '0000-00-00 00:00:00'),
(12, 'Kids', 1, '2024-01-29 11:57:32', '2024-01-29 11:58:03'),
(13, 'Skills', 1, '2024-01-29 11:57:41', '0000-00-00 00:00:00'),
(14, 'Medical', 1, '2024-01-29 11:57:50', '0000-00-00 00:00:00'),
(15, 'Illness', 1, '2024-01-29 11:58:52', '0000-00-00 00:00:00'),
(16, 'Knowledge', 1, '2024-01-29 11:59:16', '0000-00-00 00:00:00'),
(17, 'History', 1, '2024-01-29 11:59:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

DROP TABLE IF EXISTS `tblissuedbookdetails`;
CREATE TABLE IF NOT EXISTS `tblissuedbookdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BookId` int DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int DEFAULT NULL,
  `fine` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(13, 13, 'SID017', '2024-01-29 13:14:00', '2024-01-29 13:27:19', 1, 300),
(14, 16, 'SID018', '2024-01-29 13:15:47', NULL, NULL, NULL),
(15, 20, 'SID019', '2024-01-29 13:17:19', NULL, NULL, NULL),
(16, 18, 'SID014', '2024-01-29 13:20:07', NULL, NULL, NULL),
(17, 12, 'SID013', '2024-01-29 13:21:06', '2024-01-29 13:29:19', 1, 0),
(18, 13, 'SID017', '2024-01-29 13:28:24', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

DROP TABLE IF EXISTS `tblstudents`;
CREATE TABLE IF NOT EXISTS `tblstudents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `StudentId` (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(12, 'SID013', 'user unknown', 'user@gmail.com', '9265446182', '76beeb7832025bedbca23f9a05a430f0', 1, '2024-01-29 12:43:57', NULL),
(13, 'SID014', 'Bhikhalal  ', 'bhikho@gmail.com', '9365337191', '56c3cc4340b7268e5c66f2bb77f5f6fe', 1, '2024-01-29 12:52:55', NULL),
(14, '2', 'Manjo', 'manj@gmail.com', '9365337192', 'a706b2177d6394ea08f098fd121f1b2c', 0, '2024-01-29 12:53:54', '2024-03-18 10:34:01'),
(15, 'SID016', 'kittu ', 'kit24@gmail.com', '9643221610', 'ccbf00b02a62c72194d9a75f5bc70836', 1, '2024-01-29 12:55:33', NULL),
(16, 'SID017', 'birendra zala', 'birendrasinh.zala@sal.edu.in', '9265757339', 'f276f53eab5b1493ddb72f54bbb27585', 1, '2024-01-29 13:05:03', NULL),
(17, 'SID018', 'neha minocha    ', 'nea.sal@edu.in', '9898921094', '5c15a0eda991cc5ea03f2e0ab65d3e9d', 1, '2024-01-29 13:06:33', NULL),
(18, 'SID019', 'Rupesh vasani  ', 'varsani23@gmail.com', '9678347122', 'e193a6b40e6b1e88aa4f46903be81d9c', 1, '2024-01-29 13:07:41', '2024-01-29 13:24:52'),
(19, '1', 'viren', 'hindbharat399@gmail.com', '9265446182', '76beeb7832025bedbca23f9a05a430f0', 1, '2024-03-18 10:15:14', NULL),
(21, '3', 'hasmukh', 'has@gmail.com', '9265446182', '03cf3b091c7b1c4cb8c517e6ba781dda', 1, '2024-03-18 10:35:29', NULL),
(22, '4', 'LENOVO', 'l@gmail.com', '9265446182', 'c35cc662178863ac7c8e7e360825d064', 1, '2024-03-18 10:40:48', NULL),
(23, '5', 'Viren Girishkumar Patel', 'hindbharat0399@gmail.com', '9265446182', '76beeb7832025bedbca23f9a05a430f0', 1, '2024-03-20 08:47:09', NULL),
(29, '6', 'sahil ', 's@gmail.com', '9200000052', '1ee951e7cdc7661e30f3d4130fdcb99f', 1, '2024-05-11 11:05:42', NULL),
(30, '7', 'patel', 'p@gmail.com', '9900000053', '1ee951e7cdc7661e30f3d4130fdcb99f', 1, '2024-05-11 11:10:44', NULL),
(31, '8', 'manan vachheta ', 'm@gmail.com', '9900000058', '1ee951e7cdc7661e30f3d4130fdcb99f', 1, '2024-05-11 11:12:21', NULL),
(32, '9', 'vedant ', 'v@gmail.com', '9900000000', '1ee951e7cdc7661e30f3d4130fdcb99f', 1, '2024-05-11 11:13:14', NULL),
(33, '10', 'sulemaan patel ', 'sullu@gmail.com', '9900000001', '1ee951e7cdc7661e30f3d4130fdcb99f', 1, '2024-05-11 11:14:11', NULL),
(34, '11', 'viru', 'viru@gmail.com', '9900000097', '1ee951e7cdc7661e30f3d4130fdcb99f', 1, '2024-05-11 11:15:20', NULL),
(35, '12', 'SAIYARU', 'K@GMAIL.COM', '9200000000', '1ee951e7cdc7661e30f3d4130fdcb99f', 1, '2024-05-11 11:50:20', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
