-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 27, 2022 at 12:58 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devproxdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `staff_data`
--

DROP TABLE IF EXISTS `staff_data`;
CREATE TABLE IF NOT EXISTS `staff_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `idNo` varchar(13) NOT NULL,
  `dateofbirth` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_data`
--

INSERT INTO `staff_data` (`id`, `firstName`, `lastName`, `idNo`, `dateofbirth`) VALUES
(1, 'Kevin', 'September', '0006025245082', '02/06/2000'),
(2, 'Amy', 'DeWett', '0105095245082', '09/05/2001'),
(3, 'Peter', 'Parker', '9902035245082', '03/02/1999');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
