-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 26, 2014 at 03:38 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1323 ;

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
(1178, '234', '12', '', 'yes', 'true', '', '448', '1297', '', ''),
(1179, '235', '1', '', 'yes', 'false', '', '325', '732', '', ''),
(1180, '235', '2', '', 'yes', 'true', '', '346', '950', '', ''),
(1181, '235', '3', '', 'yes', 'false', '', '443', '819', '', ''),
(1182, '235', '4', '', 'yes', 'true', 'true', '475', '1018', '718', '1011'),
(1183, '235', '5', '', 'no', 'false', '', '', '', '', ''),
(1184, '235', '6', '', 'no', 'false', '', '', '', '', ''),
(1185, '235', '7', '', 'no', 'false', '', '', '', '', ''),
(1186, '235', '8', '', 'no', 'false', '', '', '', '', ''),
(1187, '235', '9', '', 'no', 'false', '', '', '', '', ''),
(1188, '235', '10', '', 'no', 'false', '', '', '', '', ''),
(1189, '235', '11', '', 'no', 'false', '', '', '', '', ''),
(1190, '235', '12', '', 'no', 'false', '', '', '', '', ''),
(1191, '236', '1', '', 'no', 'false', '', '', '', '', ''),
(1192, '236', '2', '', 'no', 'false', '', '', '', '', ''),
(1193, '236', '3', '', 'no', 'false', '', '', '', '', ''),
(1194, '236', '4', '', 'no', 'false', '', '', '', '', ''),
(1195, '236', '5', '', 'no', 'false', '', '', '', '', ''),
(1196, '236', '6', '', 'no', 'false', '', '', '', '', ''),
(1197, '236', '7', '', 'no', 'false', '', '', '', '', ''),
(1198, '236', '8', '', 'no', 'false', '', '', '', '', ''),
(1199, '236', '9', '', 'no', 'false', '', '', '', '', ''),
(1200, '236', '10', '', 'no', 'false', '', '', '', '', ''),
(1201, '236', '11', '', 'no', 'false', '', '', '', '', ''),
(1202, '236', '12', '', 'no', 'false', '', '', '', '', ''),
(1203, '237', '1', '', 'yes', 'false', '', '', '', '', ''),
(1204, '237', '2', '', 'yes', 'false', '', '556', '796', '', ''),
(1205, '237', '3', '', 'yes', 'false', '', '441', '934', '', ''),
(1206, '237', '4', '', 'yes', 'true', 'true', '478', '990', '714', '986'),
(1207, '237', '5', '', 'yes', 'false', '', '498', '484', '', ''),
(1208, '237', '6', '', 'yes', 'true', '', '446', '808', '', ''),
(1209, '237', '7', '', 'yes', 'false', '', '', '', '', ''),
(1210, '237', '8', '', 'yes', 'true', '', '476', '840', '', ''),
(1211, '237', '9', '', 'yes', 'false', '', '403', '1038', '', ''),
(1212, '237', '10', '', 'no', 'false', '', '', '', '', ''),
(1213, '237', '11', '', 'no', 'false', '', '', '', '', ''),
(1214, '237', '12', '', 'no', 'false', '', '', '', '', ''),
(1215, '238', '1', '', 'no', 'false', '', '', '', '', ''),
(1216, '238', '2', '', 'no', 'false', '', '', '', '', ''),
(1217, '238', '3', '', 'no', 'false', '', '', '', '', ''),
(1218, '238', '4', '', 'no', 'false', '', '', '', '', ''),
(1219, '238', '5', '', 'no', 'false', '', '', '', '', ''),
(1220, '238', '6', '', 'no', 'false', '', '', '', '', ''),
(1221, '238', '7', '', 'no', 'false', '', '', '', '', ''),
(1222, '238', '8', '', 'no', 'false', '', '', '', '', ''),
(1223, '238', '9', '', 'no', 'false', '', '', '', '', ''),
(1224, '238', '10', '', 'no', 'false', '', '', '', '', ''),
(1225, '238', '11', '', 'no', 'false', '', '', '', '', ''),
(1226, '238', '12', '', 'no', 'false', '', '', '', '', ''),
(1227, '239', '1', '', 'yes', 'false', '', '377', '858', '', ''),
(1228, '239', '2', '', 'yes', 'true', '', '318', '934', '', ''),
(1229, '239', '3', '', 'yes', 'true', '', '664', '778', '', ''),
(1230, '239', '4', '', 'yes', 'true', 'false', '482', '974', '712', '952'),
(1231, '239', '5', '', 'yes', 'true', '', '508', '491', '', ''),
(1232, '239', '6', '', 'yes', 'true', '', '440', '751', '', ''),
(1233, '239', '7', '', 'yes', 'false', '', '367', '1006', '', ''),
(1234, '239', '8', '', 'yes', 'false', '', '448', '873', '', ''),
(1235, '239', '9', '', 'yes', 'false', '', '355', '1022', '', ''),
(1236, '239', '10', '', 'yes', 'true', '', '375', '1065', '', ''),
(1237, '239', '11', '', 'yes', 'true', '', '423', '304', '', ''),
(1238, '239', '12', '', 'yes', 'true', '', '448', '1281', '', ''),
(1239, '240', '1', '', 'yes', 'true', '', '359', '778', '', ''),
(1240, '240', '2', '', 'yes', 'true', '', '349', '956', '', ''),
(1241, '240', '3', '', 'yes', 'false', '', '427', '833', '', ''),
(1242, '240', '4', '', 'yes', 'true', 'true', '494', '982', '704', '986'),
(1243, '240', '5', '', 'yes', 'false', '', '526', '468', '', ''),
(1244, '240', '6', '', 'yes', 'true', '', '460', '744', '', ''),
(1245, '240', '7', '', 'yes', 'false', '', '383', '988', '', ''),
(1246, '240', '8', '', 'yes', 'false', '', '673', '853', '', ''),
(1247, '240', '9', '', 'yes', 'false', '', '401', '1046', '', ''),
(1248, '240', '10', '', 'yes', 'false', '', '347', '1046', '', ''),
(1249, '240', '11', '', 'yes', 'true', '', '415', '310', '', ''),
(1250, '240', '12', '', 'yes', 'true', '', '452', '1301', '', ''),
(1251, '241', '1', '', 'yes', 'true', '', '363', '785', '', ''),
(1252, '241', '2', '', 'yes', 'true', '', '349', '955', '', ''),
(1253, '241', '3', '', 'yes', 'false', '', '405', '814', '', ''),
(1254, '241', '4', '', 'yes', 'true', 'true', '452', '998', '726', '992'),
(1255, '241', '5', '', 'yes', 'false', '', '510', '469', '', ''),
(1256, '241', '6', '', 'yes', 'true', '', '458', '748', '', ''),
(1257, '241', '7', '', 'yes', 'false', '', '373', '962', '', ''),
(1258, '241', '8', '', 'yes', 'false', '', '666', '859', '', ''),
(1259, '241', '9', '', 'yes', 'true', '', '369', '1051', '', ''),
(1260, '241', '10', '', 'yes', 'true', '', '369', '1050', '', ''),
(1261, '241', '11', '', 'yes', 'true', '', '405', '290', '', ''),
(1262, '241', '12', '', 'yes', 'true', '', '456', '1301', '', ''),
(1263, '242', '1', '', 'yes', 'false', '', '', '', '', ''),
(1264, '242', '2', '', 'yes', 'false', '', '', '', '', ''),
(1265, '242', '3', '', 'yes', 'false', '', '', '', '', ''),
(1266, '242', '4', '', 'yes', 'false', 'false', '730', '782', '304', '873'),
(1267, '242', '5', '', 'yes', 'true', '', '496', '502', '', ''),
(1268, '242', '6', '', 'yes', 'true', '', '486', '810', '', ''),
(1269, '242', '7', '', 'yes', 'false', '', '347', '1000', '', ''),
(1270, '242', '8', '', 'yes', 'true', '', '438', '861', '', ''),
(1271, '242', '9', '', 'yes', 'false', '', '381', '1034', '', ''),
(1272, '242', '10', '', 'yes', 'true', '', '407', '993', '', ''),
(1273, '242', '11', '', 'yes', 'false', '', '403', '242', '', ''),
(1274, '242', '12', '', 'yes', 'false', '', '444', '1245', '', ''),
(1275, '243', '1', '', 'yes', 'true', '', '375', '803', '', ''),
(1276, '243', '2', '', 'yes', 'true', '', '355', '938', '', ''),
(1277, '243', '3', '', 'yes', 'true', '', '670', '734', '', ''),
(1278, '243', '4', '', 'yes', 'true', 'true', '476', '975', '710', '966'),
(1279, '243', '5', '', 'yes', 'false', '', '528', '452', '', ''),
(1280, '243', '6', '', 'no', 'false', '', '', '', '', ''),
(1281, '243', '7', '', 'no', 'false', '', '', '', '', ''),
(1282, '243', '8', '', 'no', 'false', '', '', '', '', ''),
(1283, '243', '9', '', 'no', 'false', '', '', '', '', ''),
(1284, '243', '10', '', 'no', 'false', '', '', '', '', ''),
(1285, '243', '11', '', 'no', 'false', '', '', '', '', ''),
(1286, '243', '12', '', 'no', 'false', '', '', '', '', ''),
(1287, '244', '1', '', 'no', 'false', '', '', '', '', ''),
(1288, '244', '2', '', 'no', 'false', '', '', '', '', ''),
(1289, '244', '3', '', 'no', 'false', '', '', '', '', ''),
(1290, '244', '4', '', 'no', 'false', '', '', '', '', ''),
(1291, '244', '5', '', 'no', 'false', '', '', '', '', ''),
(1292, '244', '6', '', 'no', 'false', '', '', '', '', ''),
(1293, '244', '7', '', 'no', 'false', '', '', '', '', ''),
(1294, '244', '8', '', 'no', 'false', '', '', '', '', ''),
(1295, '244', '9', '', 'no', 'false', '', '', '', '', ''),
(1296, '244', '10', '', 'no', 'false', '', '', '', '', ''),
(1297, '244', '11', '', 'no', 'false', '', '', '', '', ''),
(1298, '244', '12', '', 'no', 'false', '', '', '', '', ''),
(1299, '245', '1', '', 'yes', 'true', '', '369', '796', '', ''),
(1300, '245', '2', '', 'no', 'false', '', '', '', '', ''),
(1301, '245', '3', '', 'no', 'false', '', '', '', '', ''),
(1302, '245', '4', '', 'no', 'false', '', '', '', '', ''),
(1303, '245', '5', '', 'no', 'false', '', '', '', '', ''),
(1304, '245', '6', '', 'no', 'false', '', '', '', '', ''),
(1305, '245', '7', '', 'no', 'false', '', '', '', '', ''),
(1306, '245', '8', '', 'no', 'false', '', '', '', '', ''),
(1307, '245', '9', '', 'no', 'false', '', '', '', '', ''),
(1308, '245', '10', '', 'no', 'false', '', '', '', '', ''),
(1309, '245', '11', '', 'no', 'false', '', '', '', '', ''),
(1310, '245', '12', '', 'no', 'false', '', '', '', '', ''),
(1311, '246', '1', '', 'yes', 'true', '', '349', '817', '', ''),
(1312, '246', '2', '', 'yes', 'false', '', '335', '909', '', ''),
(1313, '246', '3', '', 'yes', 'false', '', '391', '839', '', ''),
(1314, '246', '4', '', 'yes', 'true', 'true', '472', '984', '736', '981'),
(1315, '246', '5', '', 'yes', 'false', '', '528', '449', '', ''),
(1316, '246', '6', '', 'yes', 'false', '', '583', '815', '', ''),
(1317, '246', '7', '', 'yes', 'false', '', '423', '925', '', ''),
(1318, '246', '8', '', 'yes', 'false', '', '660', '802', '', ''),
(1319, '246', '9', '', 'yes', 'false', '', '385', '1009', '', ''),
(1320, '246', '10', '', 'yes', 'true', '', '387', '1053', '', ''),
(1321, '246', '11', '', 'yes', 'true', '', '412', '291', '', ''),
(1322, '246', '12', '', 'yes', 'true', '', '442', '1309', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=247 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `hospital`, `email`, `type`, `name_1`, `name_2`, `name_3`, `name_4`) VALUES
(234, 'dsfsdf', 'ssad', 'sdhfd@jdhsjdh.com', 'nurse', '', '', '', ''),
(235, 'dsads', 'adsad', 'adsad@agdhg.com', 'nurse', '', '', '', ''),
(236, 'sdsf', 'dsfsf', 'adga@gafdg.com', 'nurse', '', '', '', ''),
(237, 'saf', 'dsfds', 'dsfsf@fsdhg.com', 'nurse', '', '', '', ''),
(238, 'dfdds', 'fdsfdsf', 'dsfdf@fdsfd.com', 'nurse', '', '', '', ''),
(239, 'Team Test', '', '', 'team', '', '', '', ''),
(240, 'hjgsd', 'sbdhadhs', 'sbdh@fsdfg.com', 'nurse', '', '', '', ''),
(241, 'sd', 'sadds', 'asdsa@fdgf.com', 'nurse', '', '', '', ''),
(242, '', '', 'awder@sdhsgd.com', 'nurse', '', '', '', ''),
(243, 'jkbjkx', 'ndsasnd', 'shgdsh@hdhgsd.com', 'nurse', '', '', '', ''),
(244, 'jhgsd', 'jhjdsg', 'hjdghsa@dgfdg.com', 'nurse', '', '', '', ''),
(245, 'dsfdsf', 'sdfsdf', 'sdsad@hgadhg.com', 'nurse', '', '', '', ''),
(246, 'dasdad', 'skdhakjshd', 'sjdkahd@jhsdjh.com', 'nurse', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
