-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2018 at 09:09 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `PHONE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`NAME`, `ADDRESS`, `PHONE`) VALUES
('Elshark', 'Egypt/\nElmansoura', '12903'),
('El_Horia', 'Damanhour/\nShobra/\nBus_Station', '01289078443'),
('Med_City', 'Damanhour /\nShobra  /\nBus Station', '010114367832');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `BARCODE` varchar(20) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `CODE` varchar(10) NOT NULL,
  `COST_PRICE` double NOT NULL,
  `SELLING_PRICE` double NOT NULL,
  `EXPIRY` varchar(20) NOT NULL,
  `COMPANY_NAME` varchar(50) NOT NULL,
  `PRODUCTION_DATE` date NOT NULL,
  `EXPIRATION_DATE` date NOT NULL,
  `PLACE` varchar(20) NOT NULL,
  `QUANTITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`NAME`, `TYPE`, `BARCODE`, `DOSE`, `CODE`, `COST_PRICE`, `SELLING_PRICE`, `EXPIRY`, `COMPANY_NAME`, `PRODUCTION_DATE`, `EXPIRATION_DATE`, `PLACE`, `QUANTITY`) VALUES
('Novalo', 'Bills', 'fsdgjfihjorodsf', 'normal', '3d00', 2, 3, 'Available for use', 'Med_City', '2017-03-03', '2019-03-03', 'N-Right', 40),
('novafol', 'Bills', 'ftrkl432432md', 'normal', '2xaa', 33, 40, 'Available for use', 'Med_City', '2016-01-01', '2017-01-01', 'N-Left', 27);

-- --------------------------------------------------------

--
-- Table structure for table `expiry`
--

CREATE TABLE `expiry` (
  `PRODUCT_NAME` varchar(50) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `DATE_OF_EXPIRY` varchar(10) NOT NULL,
  `QUANTITY_REMAIN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_sales`
--

CREATE TABLE `history_sales` (
  `USER_NAME` varchar(20) NOT NULL,
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL,
  `DATE` varchar(15) NOT NULL,
  `TIME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_sales`
--

INSERT INTO `history_sales` (`USER_NAME`, `BARCODE`, `NAME`, `TYPE`, `DOSE`, `QUANTITY`, `PRICE`, `AMOUNT`, `DATE`, `TIME`) VALUES
('Ebrahem Samer', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 2, 6, 12, '12-02-2017', '05:02:06'),
('Ebrahem Samer', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 2, 6, 12, '12-02-2017', '05:02:26'),
('Ebrahem Samer', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 4, 6, 24, '12-02-2017', '05:02:40'),
('Ebrahem Samer', 'nbhdl4978549', 'Morfin', 'Injection', '1 (Day)', 2, 14, 28, '13-02-2017', '01:38:00'),
('Ebrahem Samer', 'nbhdl4978549', 'Morfin', 'Injection', '1 (Day)', 2, 14, 28, '13-02-2017', '01:38:10'),
('Ebrahem Samer', 'nbhdl4978549', 'Morfin', 'Injection', '1 (Day)', 7, 14, 98, '13-02-2017', '01:38:28'),
('Ebrahem Samer', 'nbhdl4978549', 'Morfin', 'Injection', '1 (Day)', 1, 14, 14, '13-02-2017', '01:38:46'),
('Shimaa Ahmed', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 2, 6, 12, '13-02-2017', '01:59:34'),
('Shimaa Ahmed', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 5, 6, 30, '13-02-2017', '01:59:43'),
('Ebrahem Samer', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 1, 6, 6, '13-02-2017', '02:12:33'),
('Ebrahem Samer', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 2, 14, 28, '17-02-2017', '09:55:43'),
('Ebrahem Samer', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 2, 14, 28, '17-02-2017', '09:55:58'),
('Ebrahem Samer', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 5, 14, 70, '17-02-2017', '09:56:11'),
('Ebrahem Samer', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 2, 17, 34, '17-02-2017', '10:04:58'),
('Ebrahem Samer', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 2, 17, 34, '17-02-2017', '10:05:15'),
('Ebrahem Samer', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 5, 17, 85, '17-02-2017', '10:05:26'),
('Ebrahem Samer', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 4, 20, 80, '18-02-2017', '11:16:08'),
('Ebrahem Samer', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 4, 20, 80, '18-02-2017', '11:16:28'),
('Ebrahem Samer', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 4, 14, 56, '18-02-2017', '11:17:06'),
('Ebrahem Samer', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 4, 14, 56, '18-02-2017', '11:17:15'),
('Ebrahem Samer', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 7, 14, 98, '18-02-2017', '11:17:24'),
('Shimaa Ahmed', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 6, 14, 84, '18-02-2017', '11:18:29'),
('Shimaa Ahmed', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 2, 14, 28, '18-02-2017', '11:18:41'),
('Shimaa Ahmed', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 2, 14, 28, '18-02-2017', '11:18:45'),
('Ebrahem Samer', 'ftrkl432432md', 'novafol', 'Bills', 'normal', 2, 40, 80, '14-04-2017', '04:50:32'),
('Ebrahem Samer', 'ftrkl432432md', 'novafol', 'Bills', 'normal', 2, 40, 80, '14-04-2017', '04:50:53'),
('Ebrahem Samer', 'ftrkl432432md', 'novafol', 'Bills', 'normal', 6, 40, 240, '14-04-2017', '04:51:01'),
('Ebrahem Samer', 'ftrkl432432md', 'novafol', 'Bills', 'normal', 1, 40, 40, '03-05-2017', '03:33:30'),
('Ebrahem Samer', 'ftrkl432432md', 'novafol', 'Bills', 'normal', 1, 40, 40, '03-05-2017', '03:33:36'),
('Ebrahem Samer', 'ftrkl432432md', 'novafol', 'Bills', 'normal', 1, 40, 40, '03-05-2017', '03:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `MESSAGE_FROM` varchar(20) NOT NULL,
  `MESSAGE_TO` varchar(20) NOT NULL,
  `MESSAGE_TEXT` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`MESSAGE_FROM`, `MESSAGE_TO`, `MESSAGE_TEXT`) VALUES
('Ebrahem Samer', 'Shimaa Ahmed', 'Welcome shimaa'),
('Shimaa Ahmed', 'Ebrahem Samer', 'Welcome sir'),
('Ebrahem Samer', 'Shimaa Ahmed', 'Hay , Shimaa '),
('Shimaa Ahmed', 'Ebrahem Samer', 'Hay Doctor Ebrahem'),
('Shimaa Ahmed', 'Ebrahem Samer', 'Welcome Doctor Ebrahem'),
('Ebrahem Samer', 'Shimaa Ahmed', 'Hello , Shimaa'),
('Ebrahem Samer', 'Shimaa Ahmed', 'Shimaa , Please go and update\nthe drug roof '),
('Ebrahem Samer', 'Ali Mostafa', 'Welcome'),
('Ebrahem Samer', 'Shimaa Ahmed', 'This is your salary on the disk , \n3000 , close in 12  ; good luck'),
('Ebrahem Samer', 'Shimaa Ahmed', 'good job meet me in five'),
('Shimaa Ahmed', 'Ebrahem Samer', 'Ok i will '),
('Ebrahem Samer', 'Shimaa Ahmed', 'gdfgfdgfdgfdg'),
('Ebrahem Samer', 'Shimaa Ahmed', 'haaaaaaaaaaaaaaaai'),
('Ebrahem Samer', 'Shimaa Ahmed', 'What is wrong ? '),
('Shimaa Ahmed', 'Ebrahem Samer', 'I am okay thanks ');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `DATE` varchar(20) NOT NULL,
  `TIME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`NAME`, `TYPE`, `DATE`, `TIME`) VALUES
('Ebrahem Samer', 'Admin', '17-02-2017', '10:30:24'),
('Ebrahem Samer', 'Admin', '17-02-2017', '10:32:48'),
('Shimaa Ahmed', 'Employee', '17-02-2017', '10:32:56'),
('Ebrahem Samer', 'Admin', '17-02-2017', '10:33:10'),
('Shimaa Ahmed', 'Employee', '17-02-2017', '10:33:37'),
('Ebrahem Samer', 'Admin', '17-02-2017', '10:36:21'),
('Ebrahem Samer', 'Admin', '17-02-2017', '10:36:53'),
('Ebrahem Samer', 'Admin', '17-02-2017', '10:49:27'),
('Ebrahem Samer', 'Admin', '17-02-2017', '11:02:23'),
('Ebrahem Samer', 'Admin', '17-02-2017', '01:40:08'),
('Ebrahem Samer', 'Admin', '18-02-2017', '10:50:29'),
('Ebrahem Samer', 'Admin', '18-02-2017', '10:51:50'),
('Ebrahem Samer', 'Admin', '18-02-2017', '10:53:33'),
('Ebrahem Samer', 'Admin', '18-02-2017', '10:58:41'),
('Ebrahem Samer', 'Admin', '18-02-2017', '11:15:39'),
('Shimaa Ahmed', 'Employee', '18-02-2017', '11:18:19'),
('Ebrahem Samer', 'Admin', '18-02-2017', '11:23:25'),
('Shimaa Ahmed', 'Employee', '18-02-2017', '11:24:19'),
('Ebrahem Samer', 'Admin', '04-04-2017', '06:32:57'),
('Shimaa Ahmed', 'Employee', '04-04-2017', '06:39:00'),
('Ebrahem Samer', 'Admin', '13-04-2017', '02:57:26'),
('Ebrahem Samer', 'Admin', '13-04-2017', '03:06:11'),
('Ebrahem Samer', 'Admin', '13-04-2017', '03:08:31'),
('Ebrahem Samer', 'Admin', '13-04-2017', '03:09:40'),
('Ebrahem Samer', 'Admin', '13-04-2017', '03:13:24'),
('Ebrahem Samer', 'Admin', '13-04-2017', '05:04:26'),
('Ebrahem Samer', 'Admin', '13-04-2017', '05:07:20'),
('Ebrahem Samer', 'Admin', '13-04-2017', '05:10:11'),
('Ebrahem Samer', 'Admin', '13-04-2017', '05:21:53'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:11:57'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:13:44'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:17:42'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:19:38'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:22:00'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:28:37'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:30:48'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:35:00'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:39:54'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:41:53'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:44:29'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:47:08'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:48:24'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:49:36'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:51:28'),
('Ebrahem Samer', 'Admin', '14-04-2017', '05:53:15'),
('Ebrahem Samer', 'Admin', '14-04-2017', '06:22:53'),
('Ebrahem Samer', 'Admin', '14-04-2017', '06:30:59'),
('Ebrahem Samer', 'Admin', '14-04-2017', '02:32:24'),
('Ebrahem Samer', 'Admin', '14-04-2017', '02:40:18'),
('Ebrahem Samer', 'Admin', '14-04-2017', '02:43:43'),
('Ebrahem Samer', 'Admin', '14-04-2017', '02:46:41'),
('Ebrahem Samer', 'Admin', '14-04-2017', '02:48:26'),
('Ebrahem Samer', 'Admin', '14-04-2017', '02:49:19'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '02:52:01'),
('Ebrahem Samer', 'Admin', '14-04-2017', '02:58:36'),
('Ebrahem Samer', 'Admin', '14-04-2017', '03:14:22'),
('Ebrahem Samer', 'Admin', '14-04-2017', '03:17:23'),
('Ebrahem Samer', 'Admin', '14-04-2017', '03:19:28'),
('Ebrahem Samer', 'Admin', '14-04-2017', '03:27:34'),
('Ebrahem Samer', 'Admin', '14-04-2017', '04:49:24'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '04:55:06'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '05:01:50'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '05:03:59'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '05:14:50'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '05:17:01'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '05:17:50'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '05:21:19'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '05:23:30'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '05:26:03'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '05:28:53'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '05:32:36'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '05:35:04'),
('Shimaa Ahmed', 'Employee', '14-04-2017', '05:37:17'),
('Ebrahem Samer', 'Admin', '14-04-2017', '07:19:33'),
('Shimaa Ahmed', 'Employee', '15-04-2017', '02:03:12'),
('Ebrahem Samer', 'Admin', '15-04-2017', '02:47:28'),
('Ebrahem Samer', 'Admin', '15-04-2017', '02:56:16'),
('Ebrahem Samer', 'Admin', '15-04-2017', '03:06:20'),
('Ebrahem Samer', 'Admin', '15-04-2017', '03:36:58'),
('Ebrahem Samer', 'Admin', '15-04-2017', '03:42:44'),
('Ebrahem Samer', 'Admin', '03-05-2017', '01:23:14'),
('Ebrahem Samer', 'Admin', '03-05-2017', '01:51:20'),
('Ebrahem Samer', 'Admin', '03-05-2017', '01:52:35'),
('Ebrahem Samer', 'Admin', '03-05-2017', '03:31:40'),
('Ebrahem Samer', 'Admin', '03-05-2017', '03:47:32'),
('Ebrahem Samer', 'Admin', '05-05-2017', '01:24:00'),
('Ebrahem Samer', 'Admin', '05-05-2017', '03:06:19'),
('Ebrahem Samer', 'Admin', '05-05-2017', '07:54:02'),
('Shimaa Ahmed', 'Employee', '05-05-2017', '07:55:52'),
('Ebrahem Samer', 'Admin', '05-05-2017', '08:01:50'),
('Ebrahem Samer', 'Admin', '05-05-2017', '08:02:44'),
('Ebrahem Samer', 'Admin', '05-05-2017', '08:05:37'),
('Ebrahem Samer', 'Admin', '05-05-2017', '08:07:37'),
('Shimaa Ahmed', 'Employee', '05-05-2017', '08:09:23'),
('Ebrahem Samer', 'Admin', '05-05-2017', '08:14:18'),
('Shimaa Ahmed', 'Employee', '05-05-2017', '08:15:44'),
('Ebrahem Samer', 'Admin', '05-05-2017', '08:16:15'),
('Ebrahem Samer', 'Admin', '06-05-2017', '09:51:33'),
('Shimaa Ahmed', 'Employee', '06-05-2017', '09:52:46'),
('Shimaa Ahmed', 'Employee', '06-05-2017', '09:54:33'),
('Ebrahem Samer', 'Admin', '07-05-2017', '04:44:39'),
('Ebrahem Samer', 'Admin', '07-05-2017', '10:02:15'),
('Ebrahem Samer', 'Admin', '07-05-2017', '10:12:11'),
('Ebrahem Samer', 'Admin', '27-05-2017', '03:53:36'),
('Ebrahem Samer', 'Admin', '27-05-2017', '03:54:05'),
('Ebrahem Samer', 'Admin', '27-05-2017', '04:05:04'),
('Shimaa Ahmed', 'Employee', '27-05-2017', '04:06:02'),
('Ebrahem Samer', 'Admin', '30-05-2017', '03:13:41'),
('Ebrahem Samer', 'Admin', '31-05-2017', '10:57:35'),
('Ebrahem Samer', 'Admin', '31-05-2017', '11:00:02'),
('Ebrahem Samer', 'Admin', '31-05-2017', '11:06:32'),
('Ebrahem Samer', 'Admin', '07-06-2017', '08:38:00'),
('Ebrahem Samer', 'Admin', '07-06-2017', '08:40:43'),
('Ebrahem Samer', 'Admin', '07-06-2017', '08:41:28'),
('Shimaa Ahmed', 'Employee', '19-09-2017', '06:10:07'),
('Ebrahem Samer', 'Admin', '07-10-2017', '04:39:50'),
('Ebrahem Samer', 'Admin', '07-10-2017', '04:40:39'),
('Ebrahem Samer', 'Admin', '21-11-2017', '09:06:10'),
('Ebrahem Samer', 'Admin', '21-11-2017', '09:15:39'),
('Shimaa Ahmed', 'Employee', '14-12-2017', '02:56:45'),
('Ebrahem Samer', 'Admin', '24-03-2018', '07:20:36'),
('Ebrahem Samer', 'Admin', '24-03-2018', '08:47:14'),
('Ebrahem Samer', 'Admin', '24-03-2018', '08:51:01'),
('Shimaa Ahmed', 'Employee', '24-03-2018', '08:52:17'),
('Ebrahem Samer', 'Admin', '24-03-2018', '08:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `message_history`
--

CREATE TABLE `message_history` (
  `MESSAGE_FROM` varchar(20) NOT NULL,
  `MESSAGE_TO` varchar(20) NOT NULL,
  `MESSAGE_TEXT` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `COMPANY_NAME` varchar(20) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`BARCODE`, `NAME`, `TYPE`, `COMPANY_NAME`, `QUANTITY`, `PRICE`, `AMOUNT`) VALUES
('fsdgjfihjorodsf', 'Novalo', 'Bills', 'Med_City', 40, 2, 80);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL,
  `DATE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `SALARY` double NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `NAME`, `DOB`, `ADDRESS`, `PHONE`, `SALARY`, `PASSWORD`) VALUES
(1, 'Ebrahem Samer', '23-12-1995', 'Damanhour/\r\nst/Elshona', '01128284736', 5000, '000000gggh'),
(2, 'Shimaa Ahmed', '3-2-1972', 'Damanhour/\nShobra', '01290789432', 2000, 'shimaamohammed'),
(3, 'Ahmed Ali', '3-2-1971', 'Egypt/\nElmanaoura', '01147893423', 4000, 'ahmedali'),
(4, 'Ali Mostafa', '7-8-1977', 'Egypt/\nEl_mansoura/\nshobra', '011804368743', 3000, 'alimohammed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`NAME`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`BARCODE`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`BARCODE`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
