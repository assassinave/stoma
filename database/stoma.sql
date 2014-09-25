-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 24, 2014 at 05:30 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `stoma_id` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `taken` varchar(255) NOT NULL,
  `correct` varchar(255) NOT NULL DEFAULT 'false',
  `correct2` varchar(255) NOT NULL,
  `x` varchar(255) NOT NULL,
  `y` varchar(255) NOT NULL,
  `x2` varchar(255) NOT NULL,
  `y2` varchar(255) NOT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1179 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `user_id`, `stoma_id`, `position`, `taken`, `correct`, `correct2`, `x`, `y`, `x2`, `y2`) VALUES
(1167, '234', '1', '', 'yes', 'true', '', '363', '796', '', ''),
(1168, '234', '2', '', 'yes', 'true', '', '355', '958', '', ''),
(1169, '234', '3', '', 'yes', 'false', '', '875', '792', '', ''),
(1170, '234', '4', '', 'yes', 'true', 'true', '492', '981', '742', '976'),
(1171, '234', '5', '', 'yes', 'false', '', '508', '484', '', ''),
(1172, '234', '6', '', 'yes', 'true', '', '496', '768', '', ''),
(1173, '234', '7', '', 'yes', 'false', '', '379', '981', '', ''),
(1174, '234', '8', '', 'yes', 'false', '', '653', '814', '', ''),
(1175, '234', '9', '', 'yes', 'false', '', '387', '1055', '', ''),
(1176, '234', '10', '', 'yes', 'false', '', '353', '1073', '', ''),
(1177, '234', '11', '', 'yes', 'true', '', '401', '304', '', ''),
(1178, '234', '12', '', 'yes', 'true', '', '448', '1297', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `hospital` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name_1` varchar(255) NOT NULL,
  `name_2` varchar(255) NOT NULL,
  `name_3` varchar(255) NOT NULL,
  `name_4` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=235 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `hospital`, `email`, `type`, `name_1`, `name_2`, `name_3`, `name_4`) VALUES
(234, 'dsfsdf', 'ssad', 'sdhfd@jdhsjdh.com', 'nurse', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
