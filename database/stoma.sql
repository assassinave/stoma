-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 23, 2014 at 06:13 PM
-- Server version: 5.5.29
-- PHP Version: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stoma`
--

-- --------------------------------------------------------

--
-- Table structure for table `stoma`
--

CREATE TABLE `stoma` (
  `stoma_id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `x` varchar(255) NOT NULL,
  `y` varchar(255) NOT NULL,
  `x2` varchar(255) NOT NULL,
  `y2` varchar(255) NOT NULL,
  PRIMARY KEY (`stoma_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `stoma`
--

INSERT INTO `stoma` (`stoma_id`, `type`, `position`, `active`, `info`, `image`, `x`, `y`, `x2`, `y2`) VALUES
(1, 'Ileostomy', '', 'true', 'Drag the target on the right to the area to the correct stoma siting. When you are happy with the position of the siting simply press select to continue.', 'stoma3.jpg', '341', '804', '', ''),
(2, 'Ileostomy', '', 'true', 'Drag the target on the right to the area to the correct stoma siting. When you are happy with the position of the siting simply press select to continue.', 'stoma1.jpg', '365', '977', '', ''),
(3, 'Colostomy', '', 'true', 'Drag the target on the right to the area to the correct stoma siting. When you are happy with the position of the siting simply press select to continue.', 'stoma9.jpg', '678', '747', '', ''),
(4, 'Colostomy & Urostomy', '', 'true', 'This patient requires two stoma sitings,a Colostomy and Urostomy.Please select the Colostomy siting first.', 'stoma10.jpg', '498', '999', '696', '1007'),
(5, 'Colostomy', '', 'true', 'Drag the target on the right to the area to the correct stoma siting. When you are happy with the position of the siting simply press select to continue.', 'stoma2.jpg', '476', '534', '', ''),
(6, 'Ileostomy', '', 'true', 'Drag the target on the right to the area to the correct stoma siting. When you are happy with the position of the siting simply press select to continue.', 'stoma11.jpg', '468', '765', '', ''),
(7, 'Colostomy', '', 'true', 'Drag the target on the right to the area to the correct stoma siting. When you are happy with the position of the siting simply press select to continue.', 'stoma4.jpg', '671', '981', '', ''),
(8, 'Urostomy', '', 'true', 'Drag the target on the right to the area to the correct stoma siting. When you are happy with the position of the siting simply press select to continue.', 'stoma8.jpg', '466', '814', '', ''),
(9, 'Urostomy', '', 'true', 'Drag the target on the right to the area to the correct stoma siting. When you are happy with the position of the siting simply press select to continue.', 'stoma5.jpg', '337', '1094', '', ''),
(10, 'Ileostomy', '', 'true', 'Drag the target on the right to the area to the correct stoma siting. When you are happy with the position of the siting simply press select to continue.', 'stoma7.jpg', '413', '1032', '', ''),
(11, 'Ileostomy', '', 'true', 'Drag the target on the right to the area to the correct stoma siting. When you are happy with the position of the siting simply press select to continue.', 'stoma12.jpg', '379', '299', '', ''),
(12, 'Loop Colostomy', '', 'true', 'Drag the target on the right to the area to the correct stoma siting. When you are happy with the position of the siting simply press select to continue.', 'stoma6.jpg', '454', '1300', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
