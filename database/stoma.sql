-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 24, 2014 at 12:15 PM
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
  `x` varchar(255) NOT NULL,
  `y` varchar(255) NOT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=999 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `user_id`, `stoma_id`, `position`, `taken`, `correct`, `x`, `y`) VALUES
(759, '200', '1', '', 'no', 'false', '', ''),
(760, '200', '2', '', 'no', 'false', '', ''),
(761, '200', '3', '', 'no', 'false', '', ''),
(762, '200', '4', '', 'no', 'false', '', ''),
(763, '200', '5', '', 'no', 'false', '', ''),
(764, '200', '6', '', 'no', 'false', '', ''),
(765, '200', '7', '', 'no', 'false', '', ''),
(766, '200', '8', '', 'no', 'false', '', ''),
(767, '200', '9', '', 'no', 'false', '', ''),
(768, '200', '1', '', 'no', 'false', '', ''),
(769, '200', '1', '', 'no', 'false', '', ''),
(770, '200', '1', '', 'no', 'false', '', ''),
(771, '201', '1', '', 'yes', 'false', '180', '669'),
(772, '201', '2', '', 'yes', 'false', '363', '919'),
(773, '201', '3', '', 'yes', 'false', '504', '799'),
(774, '201', '4', '', 'yes', 'true', '496', '1025'),
(775, '201', '5', '', 'yes', 'true', '484', '497'),
(776, '201', '6', '', 'yes', 'false', '601', '687'),
(777, '201', '7', '', 'yes', 'false', '482', '907'),
(778, '201', '8', '', 'yes', 'false', '702', '918'),
(779, '201', '9', '', 'yes', 'false', '700', '1089'),
(780, '201', '10', '', 'yes', 'true', '399', '1050'),
(781, '201', '11', '', 'yes', 'true', '401', '324'),
(782, '201', '12', '', 'yes', 'true', '432', '1310'),
(783, '202', '1', '', 'no', 'false', '', ''),
(784, '202', '2', '', 'no', 'false', '', ''),
(785, '202', '3', '', 'no', 'false', '', ''),
(786, '202', '4', '', 'no', 'false', '', ''),
(787, '202', '5', '', 'no', 'false', '', ''),
(788, '202', '6', '', 'no', 'false', '', ''),
(789, '202', '7', '', 'no', 'false', '', ''),
(790, '202', '8', '', 'no', 'false', '', ''),
(791, '202', '9', '', 'no', 'false', '', ''),
(792, '202', '10', '', 'no', 'false', '', ''),
(793, '202', '11', '', 'no', 'false', '', ''),
(794, '202', '12', '', 'no', 'false', '', ''),
(795, '203', '1', '', 'yes', 'true', '371', '806'),
(796, '203', '2', '', 'yes', 'false', '359', '983'),
(797, '203', '3', '', 'yes', 'false', '724', '846'),
(798, '203', '4', '', 'yes', 'true', '470', '999'),
(799, '203', '5', '', 'yes', 'true', '490', '499'),
(800, '203', '6', '', 'yes', 'false', '688', '860'),
(801, '203', '7', '', 'yes', 'true', '649', '989'),
(802, '203', '8', '', 'yes', 'false', '655', '893'),
(803, '203', '9', '', 'yes', 'false', '690', '1013'),
(804, '203', '10', '', 'yes', 'false', '397', '1084'),
(805, '203', '11', '', 'yes', 'true', '403', '251'),
(806, '203', '12', '', 'yes', 'true', '442', '1302'),
(807, '204', '1', '', 'yes', 'false', '779', '426'),
(808, '204', '2', '', 'yes', 'true', '353', '957'),
(809, '204', '3', '', 'yes', 'true', '706', '750'),
(810, '204', '4', '', 'yes', 'false', '508', '1052'),
(811, '204', '5', '', 'yes', 'true', '496', '503'),
(812, '204', '6', '', 'yes', 'false', '393', '737'),
(813, '204', '7', '', 'yes', 'true', '625', '981'),
(814, '204', '8', '', 'yes', 'true', '439', '824'),
(815, '204', '9', '', 'yes', 'false', '694', '993'),
(816, '204', '10', '', 'yes', 'true', '405', '1064'),
(817, '204', '11', '', 'yes', 'true', '371', '266'),
(818, '204', '12', '', 'yes', 'false', '373', '1298'),
(819, '205', '1', '', 'yes', 'true', '327', '761'),
(820, '205', '2', '', 'yes', 'true', '339', '961'),
(821, '205', '3', '', 'yes', 'true', '667', '779'),
(822, '205', '4', '', 'yes', 'true', '478', '1008'),
(823, '205', '5', '', 'yes', 'true', '502', '499'),
(824, '205', '6', '', 'yes', 'true', '448', '749'),
(825, '205', '7', '', 'yes', 'true', '647', '989'),
(826, '205', '8', '', 'yes', 'true', '464', '818'),
(827, '205', '9', '', 'yes', 'true', '335', '1118'),
(828, '205', '10', '', 'yes', 'true', '367', '1026'),
(829, '205', '11', '', 'yes', 'true', '371', '263'),
(830, '205', '12', '', 'yes', 'true', '452', '1290'),
(831, '206', '1', '', 'yes', 'true', '339', '808'),
(832, '206', '2', '', 'yes', 'false', '599', '525'),
(833, '206', '3', '', 'yes', 'true', '708', '785'),
(834, '206', '4', '', 'yes', 'false', '452', '864'),
(835, '206', '5', '', 'yes', 'false', '464', '606'),
(836, '206', '6', '', 'yes', 'true', '438', '763'),
(837, '206', '7', '', 'yes', 'false', '617', '995'),
(838, '206', '8', '', 'yes', 'false', '661', '826'),
(839, '206', '9', '', 'yes', 'false', '399', '1044'),
(840, '206', '10', '', 'yes', 'true', '450', '983'),
(841, '206', '11', '', 'yes', 'true', '385', '296'),
(842, '206', '12', '', 'yes', 'true', '444', '1298'),
(843, '207', '1', '', 'yes', 'false', '510', '892'),
(844, '207', '2', '', 'yes', 'true', '353', '967'),
(845, '207', '3', '', 'yes', 'false', '359', '646'),
(846, '207', '4', '', 'yes', 'false', '553', '610'),
(847, '207', '5', '', 'yes', 'true', '456', '505'),
(848, '207', '6', '', 'yes', 'true', '442', '767'),
(849, '207', '7', '', 'yes', 'false', '613', '1040'),
(850, '207', '8', '', 'yes', 'false', '327', '863'),
(851, '207', '9', '', 'yes', 'true', '355', '1124'),
(852, '207', '10', '', 'yes', 'false', '726', '804'),
(853, '207', '11', '', 'yes', 'false', '504', '372'),
(854, '207', '12', '', 'yes', 'false', '446', '1245'),
(855, '208', '1', '', 'yes', 'false', '391', '842'),
(856, '208', '2', '', 'no', 'false', '', ''),
(857, '208', '3', '', 'no', 'false', '', ''),
(858, '208', '4', '', 'no', 'false', '', ''),
(859, '208', '5', '', 'no', 'false', '', ''),
(860, '208', '6', '', 'no', 'false', '', ''),
(861, '208', '7', '', 'no', 'false', '', ''),
(862, '208', '8', '', 'no', 'false', '', ''),
(863, '208', '9', '', 'no', 'false', '', ''),
(864, '208', '10', '', 'no', 'false', '', ''),
(865, '208', '11', '', 'no', 'false', '', ''),
(866, '208', '12', '', 'no', 'false', '', ''),
(867, '209', '1', '', 'no', 'false', '', ''),
(868, '209', '2', '', 'no', 'false', '', ''),
(869, '209', '3', '', 'no', 'false', '', ''),
(870, '209', '4', '', 'no', 'false', '', ''),
(871, '209', '5', '', 'no', 'false', '', ''),
(872, '209', '6', '', 'no', 'false', '', ''),
(873, '209', '7', '', 'no', 'false', '', ''),
(874, '209', '8', '', 'no', 'false', '', ''),
(875, '209', '9', '', 'no', 'false', '', ''),
(876, '209', '10', '', 'no', 'false', '', ''),
(877, '209', '11', '', 'no', 'false', '', ''),
(878, '209', '12', '', 'no', 'false', '', ''),
(879, '210', '1', '', 'yes', 'false', '333', '933'),
(880, '210', '2', '', 'yes', 'true', '347', '957'),
(881, '210', '3', '', 'yes', 'false', '510', '874'),
(882, '210', '4', '', 'yes', 'true', '488', '973'),
(883, '210', '5', '', 'yes', 'true', '494', '495'),
(884, '210', '6', '', 'yes', 'true', '423', '779'),
(885, '210', '7', '', 'yes', 'false', '605', '1030'),
(886, '210', '8', '', 'yes', 'true', '444', '836'),
(887, '210', '9', '', 'yes', 'true', '355', '1110'),
(888, '210', '10', '', 'yes', 'true', '381', '1045'),
(889, '210', '11', '', 'yes', 'false', '415', '362'),
(890, '210', '12', '', 'yes', 'true', '458', '1300'),
(891, '211', '1', '', 'no', 'false', '', ''),
(892, '211', '2', '', 'no', 'false', '', ''),
(893, '211', '3', '', 'no', 'false', '', ''),
(894, '211', '4', '', 'no', 'false', '', ''),
(895, '211', '5', '', 'no', 'false', '', ''),
(896, '211', '6', '', 'no', 'false', '', ''),
(897, '211', '7', '', 'no', 'false', '', ''),
(898, '211', '8', '', 'no', 'false', '', ''),
(899, '211', '9', '', 'no', 'false', '', ''),
(900, '211', '10', '', 'no', 'false', '', ''),
(901, '211', '11', '', 'no', 'false', '', ''),
(902, '211', '12', '', 'no', 'false', '', ''),
(903, '212', '1', '', 'yes', 'false', '724', '746'),
(904, '212', '2', '', 'yes', 'false', '351', '923'),
(905, '212', '3', '', 'yes', 'false', '347', '870'),
(906, '212', '4', '', 'yes', 'true', '488', '1026'),
(907, '212', '5', '', 'yes', 'false', '518', '472'),
(908, '212', '6', '', 'yes', 'false', '623', '680'),
(909, '212', '7', '', 'yes', 'false', '718', '590'),
(910, '212', '8', '', 'yes', 'false', '502', '883'),
(911, '212', '9', '', 'yes', 'true', '351', '1074'),
(912, '212', '10', '', 'yes', 'true', '399', '1018'),
(913, '212', '11', '', 'yes', 'true', '381', '285'),
(914, '212', '12', '', 'yes', 'true', '431', '1278'),
(915, '213', '1', '', 'yes', 'false', '341', '693'),
(916, '213', '2', '', 'yes', 'false', '793', '832'),
(917, '213', '3', '', 'yes', 'false', '351', '836'),
(918, '213', '4', '', 'yes', 'true', '500', '1020'),
(919, '213', '5', '', 'yes', 'false', '510', '482'),
(920, '213', '6', '', 'yes', 'true', '427', '734'),
(921, '213', '7', '', 'yes', 'false', '645', '784'),
(922, '213', '8', '', 'yes', 'false', '357', '792'),
(923, '213', '9', '', 'yes', 'true', '356', '1067'),
(924, '213', '10', '', 'yes', 'true', '377', '1032'),
(925, '213', '11', '', 'yes', 'true', '423', '316'),
(926, '213', '12', '', 'yes', 'true', '458', '1307'),
(927, '214', '1', '', 'yes', 'true', '357', '784'),
(928, '214', '2', '', 'yes', 'true', '335', '950'),
(929, '214', '3', '', 'yes', 'false', '397', '820'),
(930, '214', '4', '', 'yes', 'true', '474', '998'),
(931, '214', '5', '', 'yes', 'true', '492', '506'),
(932, '214', '6', '', 'yes', 'false', '619', '780'),
(933, '214', '7', '', 'yes', 'false', '496', '867'),
(934, '214', '8', '', 'yes', 'true', '460', '820'),
(935, '214', '9', '', 'yes', 'false', '532', '873'),
(936, '214', '10', '', 'yes', 'false', '613', '1063'),
(937, '214', '11', '', 'yes', 'false', '861', '492'),
(938, '214', '12', '', 'yes', 'false', '274', '1215'),
(939, '215', '1', '', 'yes', 'true', '349', '766'),
(940, '215', '2', '', 'yes', 'true', '345', '961'),
(941, '215', '3', '', 'yes', 'false', '474', '766'),
(942, '215', '4', '', 'yes', 'true', '480', '1022'),
(943, '215', '5', '', 'yes', 'false', '494', '481'),
(944, '215', '6', '', 'yes', 'false', '468', '821'),
(945, '215', '7', '', 'yes', 'false', '359', '1049'),
(946, '215', '8', '', 'yes', 'false', '650', '850'),
(947, '215', '9', '', 'yes', 'false', '730', '1011'),
(948, '215', '10', '', 'yes', 'true', '381', '1046'),
(949, '215', '11', '', 'yes', 'true', '405', '302'),
(950, '215', '12', '', 'yes', 'true', '452', '1268'),
(951, '216', '1', '', 'yes', 'true', '349', '780'),
(952, '216', '2', '', 'yes', 'true', '347', '960'),
(953, '216', '3', '', 'yes', 'false', '391', '885'),
(954, '216', '4', '', 'yes', 'true', '462', '1012'),
(955, '216', '5', '', 'yes', 'false', '510', '474'),
(956, '216', '6', '', 'yes', 'false', '605', '800'),
(957, '216', '7', '', 'yes', 'false', '613', '964'),
(958, '216', '8', '', 'yes', 'true', '476', '836'),
(959, '216', '9', '', 'yes', 'true', '355', '1052'),
(960, '216', '10', '', 'yes', 'true', '375', '1071'),
(961, '216', '11', '', 'yes', 'true', '419', '318'),
(962, '216', '12', '', 'yes', 'true', '452', '1294'),
(963, '217', '1', '', 'yes', 'true', '361', '778'),
(964, '217', '2', '', 'yes', 'false', '660', '835'),
(965, '217', '3', '', 'yes', 'false', '381', '844'),
(966, '217', '4', '', 'yes', 'true', '472', '1002'),
(967, '217', '5', '', 'yes', 'false', '512', '482'),
(968, '217', '6', '', 'yes', 'true', '460', '750'),
(969, '217', '7', '', 'yes', 'false', '391', '932'),
(970, '217', '8', '', 'yes', 'true', '458', '819'),
(971, '217', '9', '', 'yes', 'false', '391', '1054'),
(972, '217', '10', '', 'yes', 'true', '387', '1081'),
(973, '217', '11', '', 'yes', 'true', '401', '278'),
(974, '217', '12', '', 'yes', 'false', '466', '1242'),
(975, '218', '1', '', 'yes', 'true', '361', '778'),
(976, '218', '2', '', 'yes', 'true', '339', '944'),
(977, '218', '3', '', 'yes', 'false', '413', '863'),
(978, '218', '4', '', 'yes', 'true', '478', '986'),
(979, '218', '5', '', 'yes', 'false', '506', '480'),
(980, '218', '6', '', 'yes', 'true', '468', '742'),
(981, '218', '7', '', 'yes', 'false', '383', '998'),
(982, '218', '8', '', 'yes', 'false', '671', '865'),
(983, '218', '9', '', 'yes', 'false', '373', '1043'),
(984, '218', '10', '', 'yes', 'true', '393', '1042'),
(985, '218', '11', '', 'yes', 'true', '409', '300'),
(986, '218', '12', '', 'yes', 'true', '450', '1279'),
(987, '219', '1', '', 'yes', 'true', '374', '787'),
(988, '219', '2', '', 'yes', 'true', '353', '949'),
(989, '219', '3', '', 'yes', 'false', '379', '859'),
(990, '219', '4', '', 'yes', 'true', '482', '1028'),
(991, '219', '5', '', 'no', 'false', '', ''),
(992, '219', '6', '', 'no', 'false', '', ''),
(993, '219', '7', '', 'no', 'false', '', ''),
(994, '219', '8', '', 'no', 'false', '', ''),
(995, '219', '9', '', 'no', 'false', '', ''),
(996, '219', '10', '', 'no', 'false', '', ''),
(997, '219', '11', '', 'no', 'false', '', ''),
(998, '219', '12', '', 'no', 'false', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=220 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `hospital`, `email`, `type`, `name_1`, `name_2`, `name_3`, `name_4`) VALUES
(199, '', '', 'testjfjshfg@gsfhsgf.com', '', '', '', '', ''),
(200, '', '', 'dfdsf@gdhgs.com', '', '', '', '', ''),
(201, '', '', 'hjgjghj@ghdgsh.com', '', '', '', '', ''),
(202, '', '', 'vdsfs@fgsdf.com', '', '', '', '', ''),
(203, '', '', 'sdsfds@fagfd.com', '', '', '', '', ''),
(204, '', '', 'fsdf@gfdsgd.com', '', '', '', '', ''),
(205, 'David', 'Hospital', 'Test@test.com', '', '', '', '', ''),
(206, 'sadsad', 'asdsad', 'sydft@fagsfs.com', '', '', '', '', ''),
(207, '', '', 'sdad@ffdsg.com', '', '', '', '', ''),
(208, '', '', 'dfsf@ggdsh.com', '', '', '', '', ''),
(209, '', '', 'sadadasd@ghagah.com', '', '', '', '', ''),
(210, 'jhfghfhgfghfghfgf', 'trytryrtyrtytyr', 'rtyrty@fgsfdg.com', '', '', '', '', ''),
(211, '', '', 'sadsad@sgdf.com', '', '', '', '', ''),
(212, '', '', 'sdadad@afdgfd.com', '', '', '', '', ''),
(213, '', '', 'asdf@fgdfg.com', '', '', '', '', ''),
(214, '', '', 'gaghdf@fgdfagd.com', '', '', '', '', ''),
(215, 'dsdgdf', 'dfgfdg', 'dfgsfd@gahghs.com', '', '', '', '', ''),
(216, '', '', 'shdghg@gafdgsd.com', '', '', '', '', ''),
(217, 'dgfd', 'dfgfd', 'dfgdfg@gfdgf.com', '', '', '', '', ''),
(218, '', '', 'dsa@gdgsf.com', '', '', '', '', ''),
(219, '', '', 'sffdsdsf@dvd.com', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
