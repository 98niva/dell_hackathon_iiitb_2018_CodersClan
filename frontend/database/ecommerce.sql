-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 12, 2018 at 09:40 PM
-- Server version: 5.7.23
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE IF NOT EXISTS `admin_login` (
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_username`, `admin_password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptops'),
(2, 'Desktops'),
(3, 'Tablets'),
(4, 'Gaming'),
(5, 'Workstations'),
(6, 'Monitors');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturing_details`
--

DROP TABLE IF EXISTS `manufacturing_details`;
CREATE TABLE IF NOT EXISTS `manufacturing_details` (
  `warehouse_id` int(25) NOT NULL,
  `product_id` int(25) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `stock_keeping_unit` varchar(255) NOT NULL,
  `available_stock` int(25) NOT NULL,
  `location_tier` varchar(25) NOT NULL,
  `shipping_date` date NOT NULL,
  `product_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturing_details`
--

INSERT INTO `manufacturing_details` (`warehouse_id`, `product_id`, `product_name`, `stock_keeping_unit`, `available_stock`, `location_tier`, `shipping_date`, `product_img`) VALUES
(1, 1, 'New Inspiron 15 5570 Laptop', '55705202TB2B', 200, 'Bangalore', '2018-09-14', '503262.jpg'),
(2, 2, 'Dell Vostro 3000', 'Z555112U1N9', 300, 'Mumbai', '2017-12-12', 'vostro.png'),
(3, 3, 'Inspiron 15 7572 Laptop', '207124', 400, 'Hyderabad', '2018-02-12', '32029583_1SZ.jpg'),
(4, 4, 'Dell Inspiron 13 5378 2-in-1', '8378781TBiGT', 400, 'Pune', '2018-03-13', 'u_10174163.jpg'),
(5, 5, 'XPS 13 Laptop', '206956', 250, 'Delhi', '2018-04-14', 'xps.jpg'),
(6, 6, 'Dell Inspiron 3520 Desktop Computer', '175238', 470, 'Kolkata', '2018-04-14', 'dell-inspiron-3520-desktop-500x500.jpg'),
(7, 7, 'XPS 8920 Desktop Tower', 'XPS8920-l77700', 1626, 'Bhubaneswar', '2018-05-23', 'xps_desktop.jpg'),
(8, 8, 'New Inspiron 22 3275 All-in-One', '3275A641TBiB', 600, 'Bhubaneswar', '2018-10-05', 'intel-inspiron-3000-aio-video-en.jpg'),
(9, 9, 'Inspiron 27 7000 All-in-One', '6146004', 560, 'Chennai', '2018-11-03', 'inspiron-27-7000-video-en.jpg'),
(10, 10, 'Dell Venue 7 3741 Tablet', 'DELLVALUE7', 700, 'Mysore', '2018-03-15', '41JHK2aGagL.jpg'),
(11, 11, 'Latitude Dell 5175 Tablet', 'CN6XM', 800, 'Bangalore', '2018-10-15', '41oHfqUOdTL.jpg'),
(12, 12, 'DELL Inspiron 7570 15.6-inch FHD Laptop', '7570781TB4PS', 600, 'Bhubaneswar', '2018-05-18', '419GX2cOPnL.jpg'),
(13, 13, 'Dell G3 15 Gaming Laptop', '3579581TB4B', 700, 'Chennai', '2018-09-14', 'notebook-g3-3579.jpg'),
(14, 14, 'Dell G5 15 Gaming Laptop', '509909', 700, 'Mumbai', '2018-03-26', 'g-series-15-5587-nontouch-notebook.jpg'),
(15, 15, 'Dell G7 15 Gaming Laptop', '75889161TB6B', 700, 'Lucknow', '2018-04-17', '61XHScwkpXL._SL1280_.jpg'),
(16, 16, 'Dell Alienware 15 15.6\" Gaming Laptop', '5713021', 690, 'Varanasi', '2018-11-04', 'alienware-laptop.jpg'),
(17, 17, 'Precision 5520 Mobile Workstation', '62297374736', 500, 'Pune', '2018-02-19', 'workstation-precision.jpg'),
(18, 18, 'Dell G Series G7 7588 15.6-inch FHD Laptop', '5713021', 490, 'Lucknow', '2018-03-16', '61XHScwkpXL._SX425_.jpg'),
(19, 19, 'Dell Precision M5510 WorkStation Laptop', 'dell 5510i7', 800, 'Chennai', '2018-06-12', 'dell-precision.jpg'),
(20, 20, 'Dell 24 UltraSharp Monitor', 'U2417H', 800, 'Hyderabad', '2018-10-02', 'dell-u2415.jpg'),
(21, 21, 'Alienware 25 Gaming Monitor', 'AW2518H', 780, 'Chennai', '2018-04-12', '91EN10GQToL._SX425_.jpg'),
(22, 22, 'Dell UltraSharp 27 4K HDR Monitor', 'UP2718Q', 790, 'Varanasi', '2018-01-27', 'dell-ultrasharp.jpg'),
(23, 23, 'Dell 27 Monitor', 'SE2717H', 595, 'Lucknow', '2018-01-19', 'monitor_dell.jpg'),
(24, 24, 'Dell 24 Touch Monitor', 'P2418HT', 800, 'Kolkata', '2018-09-18', 'monitor-p2418ht-touch-black.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `predict2`
--

DROP TABLE IF EXISTS `predict2`;
CREATE TABLE IF NOT EXISTS `predict2` (
  `Column_1` int(11) DEFAULT NULL,
  `Product` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `Stock_in_date` date DEFAULT NULL,
  `Location` varchar(15) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `predict2`
--

INSERT INTO `predict2` (`Column_1`, `Product`, `Stock_in_date`, `Location`) VALUES
(2, 'Alienware 15', '2018-08-04', 'New Delhi'),
(7, 'Alienware 17', '2018-09-04', 'Andhra Pradesh'),
(15, 'Alienware 17', '2018-10-07', 'New Delhi'),
(18, 'Alienware 17', '2018-07-30', 'Maharshtra'),
(22, 'Inspiron 3168', '2018-10-19', 'Andhra Pradesh'),
(23, 'Inspiron 3179', '2018-10-21', 'Andhra Pradesh'),
(28, 'Inspiron 3552', '2018-08-29', 'Karnataka'),
(29, 'Inspiron 3552', '2018-09-03', 'Odisha'),
(31, 'Inspiron 3552', '2018-08-27', 'Odisha'),
(33, 'Inspiron 3567', '2018-10-15', 'Gujarat'),
(38, 'Inspiron 3567', '2018-09-03', 'Gujarat'),
(39, 'Inspiron 3567', '2018-08-18', 'Gujarat'),
(41, 'Inspiron 3567', '2018-10-10', 'Maharshtra'),
(46, 'Inspiron 3567', '2018-08-25', 'West Bengal'),
(47, 'Inspiron 3567', '2018-07-30', 'Gujarat'),
(50, 'Inspiron 3567', '2018-10-12', 'Tamil Nadu'),
(53, 'Inspiron 3567', '2018-07-24', 'Gujarat'),
(57, 'Inspiron 3567', '2018-10-28', 'Maharshtra'),
(59, 'Inspiron 3567', '2018-09-30', 'Maharshtra'),
(63, 'Inspiron 3576', '2018-06-20', 'Gujarat'),
(66, 'Inspiron 3576', '2018-07-05', 'Maharshtra'),
(72, 'Inspiron 5370', '2018-10-06', 'Madhya Pradesh'),
(73, 'Inspiron 5378', '2018-09-04', 'Gujarat'),
(76, 'Inspiron 5379', '2018-10-07', 'Gujarat'),
(80, 'Inspiron 5567', '2018-06-15', 'Gujarat'),
(84, 'Inspiron 5567', '2018-10-31', 'Gujarat'),
(87, 'Inspiron 5567', '2018-05-26', 'Tamil Nadu'),
(88, 'Inspiron 5567', '2018-05-31', 'Madhya Pradesh'),
(92, 'Inspiron 5567', '2018-06-17', 'Karnataka'),
(94, 'Inspiron 5568', '2018-10-13', 'Gujarat'),
(95, 'Inspiron 5570', '2018-09-15', 'Gujarat'),
(100, 'Inspiron 5570', '2018-07-11', 'Madhya Pradesh'),
(101, 'Inspiron 5570', '2018-11-07', 'Gujarat'),
(102, 'Inspiron 5570', '2018-09-06', 'Gujarat'),
(103, 'Inspiron 5570', '2018-10-25', 'New Delhi'),
(104, 'Inspiron 5570', '2018-08-20', 'Gujarat'),
(105, 'Inspiron 5570', '2018-09-24', 'Karnataka'),
(109, 'Inspiron 5570', '2018-09-03', 'Gujarat'),
(110, 'Inspiron 5570', '2018-06-15', 'Gujarat'),
(112, 'Inspiron 5570', '2018-11-07', 'Madhya Pradesh'),
(119, 'Inspiron 5578', '2018-08-18', 'Maharshtra'),
(121, 'Inspiron 5579', '2018-07-26', 'Gujarat'),
(122, 'Inspiron 5579', '2018-08-21', 'Gujarat'),
(124, 'Inspiron 5767', '2018-05-28', 'Gujarat'),
(127, 'Inspiron 5770', '2018-09-21', 'Tamil Nadu'),
(130, 'Inspiron 5770', '2018-07-06', 'Karnataka'),
(136, 'Inspiron 7559', '2018-10-29', 'Uttar Pradesh'),
(142, 'Inspiron 7567', '2018-08-12', 'New Delhi'),
(146, 'Inspiron 7567', '2018-08-14', 'Gujarat'),
(148, 'Inspiron 7570', '2018-10-07', 'Gujarat'),
(153, 'Inspiron 7577', '2018-11-02', 'Uttar Pradesh'),
(154, 'Inspiron 7577', '2018-08-13', 'Gujarat'),
(155, 'Inspiron 7577', '2018-10-29', 'Tamil Nadu'),
(156, 'Inspiron 7577', '2018-05-15', 'Gujarat'),
(157, 'Inspiron 7577', '2018-07-04', 'Gujarat'),
(159, 'Inspiron 7579', '2018-08-03', 'Gujarat'),
(161, 'Inspiron 7773', '2018-08-20', 'New Delhi'),
(163, 'Insprion 5767', '2018-08-30', 'New Delhi'),
(165, 'Latitude 3380', '2018-05-11', 'New Delhi'),
(166, 'Latitude 3380', '2018-09-19', 'Tamil Nadu'),
(168, 'Latitude 3480', '2018-09-26', 'Tamil Nadu'),
(169, 'Latitude 3570', '2018-06-19', 'Andhra Pradesh'),
(171, 'Latitude 3580', '2018-08-31', 'Madhya Pradesh'),
(175, 'Latitude 5480', '2018-08-27', 'Maharshtra'),
(176, 'Latitude 5480', '2018-07-09', 'New Delhi'),
(178, 'Latitude 5480', '2018-08-21', 'Tamil Nadu'),
(179, 'Latitude 5480', '2018-08-14', 'Maharshtra'),
(181, 'Latitude 5480', '2018-09-14', 'Tamil Nadu'),
(185, 'Latitude 5580', '2018-08-20', 'New Delhi'),
(186, 'Latitude 5580', '2018-08-21', 'Karnataka'),
(189, 'Latitude 5580', '2018-09-30', 'Karnataka'),
(190, 'Latitude 5580', '2018-10-14', 'New Delhi'),
(191, 'Latitude 5580', '2018-05-28', 'New Delhi'),
(193, 'Latitude 5580', '2018-09-10', 'Gujarat'),
(194, 'Latitude 5580', '2018-09-24', 'Karnataka'),
(196, 'Latitude 5590', '2018-11-04', 'Gujarat'),
(197, 'Latitude 5590', '2018-07-18', 'Tamil Nadu'),
(198, 'Latitude 7280', '2018-07-14', 'Tamil Nadu'),
(199, 'Latitude 7280', '2018-08-18', 'Andhra Pradesh'),
(214, 'Latitude E7470', '2018-08-19', 'New Delhi'),
(220, 'Precision 3520', '2018-10-15', 'Tamil Nadu'),
(221, 'Precision 3520', '2018-09-21', 'Tamil Nadu'),
(226, 'Precision M5520', '2018-07-20', 'Andhra Pradesh'),
(228, 'Vostro 3559', '2018-07-28', 'Karnataka'),
(231, 'Vostro 3568', '2018-10-15', 'Tamil Nadu'),
(233, 'Vostro 3568', '2018-06-22', 'Odisha'),
(234, 'Vostro 3568', '2018-10-26', 'Maharshtra'),
(243, 'Vostro 3568', '2018-05-13', 'Maadhya Pradesh'),
(244, 'Vostro 3568', '2018-10-18', 'Odisha'),
(246, 'Vostro 3568', '2018-07-25', 'West Bengal'),
(250, 'Vostro 5468', '2018-11-04', 'Madhya Pradesh'),
(256, 'Vostro 5568', '2018-07-12', 'Karnataka'),
(257, 'Vostro 5568', '2018-08-27', 'Gujarat'),
(260, 'XPS 13', '2018-06-08', 'Madhya Pradesh'),
(263, 'XPS 13', '2018-09-08', 'Gujarat'),
(264, 'XPS 13', '2018-09-06', 'Gujarat'),
(266, 'XPS 13', '2018-10-04', 'New Delhi'),
(267, 'XPS 13', '2018-08-21', 'Andhra Pradesh'),
(268, 'XPS 13', '2018-10-15', 'Tamil Nadu'),
(270, 'XPS 13', '2018-10-26', 'Madhya Pradesh'),
(272, 'XPS 13', '2018-10-23', 'Madhya Pradesh'),
(274, 'XPS 13', '2018-08-30', 'Andhra Pradesh'),
(277, 'XPS 13', '2018-06-11', 'Gujarat'),
(281, 'XPS 13', '2018-09-18', 'Gujarat'),
(283, 'XPS 13', '2018-10-14', 'New Delhi'),
(284, 'XPS 13', '2018-09-29', 'Odisha'),
(286, 'XPS 13', '2018-10-11', 'Odisha'),
(289, 'XPS 13', '2018-10-01', 'Gujarat'),
(291, 'XPS 15', '2018-09-02', 'Tamil Nadu'),
(294, 'XPS 15', '2018-10-11', 'Tamil Nadu'),
(297, 'XPS 15', '2018-06-17', 'Tamil Nadu'),
(299, 'XPS 15 2-in-1', '2018-05-27', 'New Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  `available` decimal(4,3) DEFAULT NULL,
  `discontinued` decimal(4,3) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`, `available`, `discontinued`, `discount_price`) VALUES
(1, 1, 'New Inspiron 15 5570 Laptop', 38000, 'Core i5 (8th Gen)/8GB RAM/2TB HDD/15.6\'\' ', '503262.jpg', 'inspiron laptops', '0.004', '0.996', 26600),
(2, 1, 'Dell Vostro 3000 ', 30500, 'Core i3 - 6th Gen/4 GB RAM/1 TB HDD/15.6 Inch/DOS', 'vostro.png', 'dell laptops vostro', '0.994', '0.006', 28975),
(3, 1, 'Inspiron 15 7572 Laptop', 72000, '2018 Dell Inspiron 15 7000 15.6\" FHD IPS Laptop Computer, Intel Quad Core i7-8550U up to 4.00GHz, 8GB DDR4 RAM, 256GB SSD, USB 3.0, HDMI, 802.11ac Wireless, Bluetooth 4.1, Windows 10 Home', '32029583_1SZ.jpg', 'dell laptops inspiron core i7', '0.904', '0.096', 68400),
(4, 1, 'Dell Inspiron 13 5378 2-in-1 ', 52000, 'Core i3 (7th Gen)/4GB RAM/1TB HDD/33.78 cm (13.3)/Windows 10', 'u_10174163.jpg', 'laptops inspiron 2-in-1', '0.002', '0.998', 36400),
(5, 1, 'XPS 13 Laptop', 91000, 'XPS 13 is the smallest 13.3 (33.8cm) laptop that has a virtually borderless InfinityEdge display — available with touch.', 'xps.jpg', ' dell laptops xps13', '0.980', '0.020', 86450),
(6, 2, 'Dell Inspiron 3520 Desktop Computer', 38000, 'Dell Inspiron 3268 7th Gen Core i3/4 GB/1 TB/Ubuntu Linux', 'dell-inspiron-3520-desktop-500x500.jpg', 'dell desktop inspiron', '0.672', '0.328', 36100),
(7, 2, 'XPS 8920 Desktop Tower', 65000, 'The Intel® i5 or Intel® i7 Quad Core™ processor and high-performance graphics gives speed and power for video editing, video playback and gaming.', 'xps_desktop.jpg', 'dell desktop xps tower', '0.112', '0.888', 48750),
(8, 2, 'New Inspiron 22 3275 All-in-One', 37000, '55.8cm (22) all-in-one desktop delivers seamless streaming for video and chats all in one place with Full HD on a wide-angle IPS display with pop-up webcam.', 'intel-inspiron-3000-aio-video-en.jpg', 'dell desktop inspiron all-in-one', '0.954', '0.046', 35150),
(9, 2, 'Inspiron 27 7000 All-in-One', 98500, 'The Inspiron 27 7000 All-in-One is Ready for VR with an InfinityEdge display and the rich, deep colors of up to 4K.', 'inspiron-27-7000-video-en.jpg', 'dell desktop inspiron 7000 all-in-one', '0.980', '0.020', 93575),
(10, 3, 'Dell Venue 7 3741 Tablet ', 13000, '6.95 inch, 8GB, Wi-Fi+3G+Voice Calling, Black', '41JHK2aGagL.jpg', 'dell tablets venue 3741', '1.000', '0.000', 12350),
(11, 3, 'Latitude Dell 5175 Tablet', 87000, '8GB 128GB OS Windows 10 ', '41oHfqUOdTL.jpg', 'dell tablets latitude', '0.574', '0.426', 82650),
(12, 4, 'DELL Inspiron 7570 15.6-inch FHD Laptop', 92000, '8th Gen-Core i7-8550U/8GB/1TB HDD + 128 GB SSD/Windows 10/MS Office/Nvidia GeForce MX130 4GB Graphics', '419GX2cOPnL.jpg', 'dell gaming laptops inspiron 7570', '1.000', '0.000', 87400),
(13, 4, 'Dell G3 15 Gaming Laptop', 70500, '38.1 cm (15) gaming laptop engineered with NVIDIA® GeForce® discrete graphics, 8th Gen Intel® processors and thin design for the ultimate immersive gaming experience.', 'notebook-g3-3579.jpg', 'dell gaming laptops g3 series', '1.000', '0.000', 66975),
(14, 4, 'Dell G5 15 Gaming Laptop', 94000, 'G5 5587 Non-Touch Gaming Notebook', 'g-series-15-5587-nontouch-notebook.jpg', 'dell gaming laptops g5 series', '0.012', '0.988', 65800),
(15, 4, 'Dell G7 15 Gaming Laptop', 124900, '38.1 cm (15) gaming laptop designed for a powerful, immersive in-game experience featuring NVIDIA® GeForce® GTX 1060 graphics and the latest 8th Gen Intel® Quad-and-Hex Core™ CPUs.', '61XHScwkpXL._SL1280_.jpg', 'dell gaming laptops g7 series', '0.992', '0.008', 118655),
(16, 4, 'Dell Alienware 15 15.6\" Gaming Laptop ', 160700, '6thGen Corei5/8GB/1TB/2GB Graphics/Windows 10', 'alienware-laptop.jpg', 'dell gaming laptop alienware', '0.760', '0.240', 152665),
(17, 5, 'Precision 5520 Mobile Workstation', 256000, 'The world’s thinnest, lightest, smallest 15\" mobile workstation with 7th Gen Intel® processors and PremierColor 4K InfinityEdge display.', 'workstation-precision.jpg', 'dell workstation precision', '0.972', '0.028', 243200),
(18, 5, 'Dell G Series G7 7588 15.6-inch FHD Laptop', 124990, '8th gen Core i7-8750H/16GB/1TB + 128GB SSD/Windows 10 + Ms Office Home & Student 2016/6GB Graphics', '61XHScwkpXL._SX425_.jpg', 'dell workstation G Series', '0.976', '0.024', 118740),
(19, 5, 'Dell Precision M5510 WorkStation Laptop', 151947, '15.6inch FHD IPS Display, Intel Core 6th Generation i7-6820HQ, 32 GB DDR4, 500 GB HDD, NVIDIA Quadro M1000M, Windows 10 Pro ', 'dell-precision.jpg', 'dell precision workstation', '0.990', '0.010', 144350),
(20, 6, 'Dell 24 UltraSharp Monitor', 45800, 'The Dell UltraSharp 24 Monitor takes your view to the edge with a near-seamless multi-monitor experience and exceptional colour accuracy.', 'dell-u2415.jpg', 'dell monitor ultrasharp', '0.998', '0.002', 43510),
(21, 6, 'Alienware 25 Gaming Monitor', 51300, 'Uninterrupted gaming with unbelievable views\r\nResponsive gameplay and rapid refresh\r\nAlienFX lighting and NVIDIA® G-SYNCTM technolo', '91EN10GQToL._SX425_.jpg', 'dell monitor alienware gaming', '0.030', '0.970', 35910),
(22, 6, 'Dell UltraSharp 27 4K HDR Monitor ', 70290, 'Dell PremierColor—Exceptional for color professionals\r\nDetails even in the dark\r\nThe video editor’s choice\r\nCapture every nuance\r\nFine-tune with precision', 'dell-ultrasharp.jpg', 'dell monitor ultrasharp', '0.000', '1.000', 38660),
(23, 6, 'Dell 27 Monitor', 30700, 'Experience every thrill in Dell HDR with integrated speakers in this beautiful 68.5cm (27) monitor featuring a virtually borderless InfinityEdge display.', 'monitor_dell.jpg', 'dell monitor S Models', '0.114', '0.886', 23025),
(24, 6, 'Dell 24 Touch Monitor', 29750, 'Work efficiently without sacrificing comfort on the world’s best 23.8-inch touch monitor. Featuring an articulating stand and anti-glare touch screen.', 'monitor-p2418ht-touch-black.png', 'dell monitor touch P Models', '0.598', '0.402', 28262);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Bidyashree', 'Rout', 'bidyashreerout@gmail.com', 'f7765b25fd3571cb4e8d97cef80f6d8e', '9876512345', 'Lingaraj Vihar, Pokhariput', 'Bhubaneswar');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
