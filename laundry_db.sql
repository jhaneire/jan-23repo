-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 08:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(250) NOT NULL,
  `created_on` date NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `fname`, `contact`, `email`, `password`, `created_on`, `group_id`) VALUES
(1, 'admin', 'admin', '0000000000', 'admin@admin.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', '2018-04-30', 1),
(2, 'user', 'Jhaneire Clode Mendez', '09561250951', 'jcmendez187@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', '2023-01-15', 3),
(3, 'user', 'dASDA', '09774861088', 'admins@admin.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', '2023-01-16', 3),
(4, 'user', 'Czxcz', '09951116737', 'amen@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', '2023-01-17', 2),
(159, 'user', 'bobo', '09951116738', 'cj@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', '2023-01-20', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(11) NOT NULL,
  `case_no` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `location` varchar(100) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `witnesses` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(11) NOT NULL,
  `datetime` varchar(250) NOT NULL,
  `crimedate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `case_no`, `fname`, `contact`, `email`, `location`, `barangay`, `type`, `witnesses`, `description`, `status`, `datetime`, `crimedate`) VALUES
(1, 9, '', '', '', 'hakdog', 'barangay-2', 'informant', '', 'uauaua', 1, 'Jan.17 2023 03:54 pm', ''),
(1, 24, 'admin', '0000000000', 'admin@admin.com', 'rqwerqwr', 'barangay-1', 'crashed-vehicle', 'guilty', 'rqwerqwr', 2, 'Jan.20 2023 12:54 am', '2022-12-29'),
(1, 25, 'admin', '0000000000', 'admin@admin.com', '', 'barangay-1', 'crashed-vehicle', 'guilty', '', 3, 'Jan.20 2023 12:54 am', ''),
(1, 26, 'admin', '0000000000', 'admin@admin.com', 'RQWERQWR', 'barangay-1', 'crashed-vehicle', 'guilty', 'qwerqwer', 3, 'Jan.20 2023 01:02 am', '2022-12-30'),
(1, 34, 'admin', '0000000000', 'admin@admin.com', 'fasdfasdfasf', 'barangay-1', 'crashed-vehicle', 'guilty', 'afsdfadsfas', 3, 'Jan.20 2023 08:54 pm', '2023-02-04'),
(4, 36, 'Jhaneire Clode', '09951116737', 'amen@gmail.com', 'cxcZXCZC', 'barangay-1', 'crashed-vehicle', 'guilty', 'CZXXZC', 0, 'Jan.20 2023 09:01 pm', '2023-01-29'),
(4, 37, 'admin', '09951116737', 'amen@gmail.com', 'cZXCZ', 'barangay-1', 'crashed-vehicle', 'guilty', 'cZXCZCZX', 0, 'Jan.20 2023 09:02 pm', '2023-01-21'),
(4, 38, 'Jhaneire Clode', '09951116737', 'amen@gmail.com', 'zvxcvzcxv', 'barangay-1', 'crashed-vehicle', 'guilty', 'vzxcvzxcvz', 0, 'Jan.20 2023 09:03 pm', '2023-01-28'),
(4, 39, 'Czxcz', '09951116737', 'amen@gmail.com', 'ZVCZXV', 'barangay-1', 'crashed-vehicle', 'guilty', 'VZXCVZXCV', 0, 'Jan.20 2023 09:04 pm', '2023-01-12'),
(0, 40, 'admin', '', '', 'ZXCVXCVX', 'barangay-1', 'crashed-vehicle', 'guilty', 'ZVZVCZXV', 0, 'Jan.20 2023 09:05 pm', '2023-01-07'),
(1, 41, 'admin', '0000000000', 'admin@admin.com', 'fasdfsf', 'barangay-1', 'crashed-vehicle', 'guilty', 'asdfasfsdfas', 0, 'Jan.20 2023 11:51 pm', '2023-01-11'),
(159, 42, 'bobo', '09951116738', 'cj@gmail.com', 'boboako', 'barangay-2', 'wild-animal', 'informant', 'boboboako', 0, 'Jan.21 2023 12:21 am', '2023-01-15'),
(1, 43, 'admin', '0000000000', 'admin@admin.com', 'twertet', 'barangay-1', 'crashed-vehicle', 'guilty', 'wetertwet', 0, 'Jan.21 2023 01:24 am', '2023-01-20'),
(159, 44, 'bobo', '09951116738', 'cj@gmail.com', 'qwerqwr', 'barangay-1', 'crashed-vehicle', 'guilty', 'qwerqwerq', 0, 'Jan.22 2023 06:32 pm', '2023-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `customertype` varchar(100) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `customertype`, `contact`, `address`) VALUES
(16, 'Lay Bare Waxing Salon Megamall', 'Business', '09123456789', 'EDIT ADDRESS HERE'),
(17, 'Lay Bare Waxing Salon Pasig', 'Business', '09123456789', 'EDIT ADDRESS HERE'),
(18, 'Lay Bare Waxing Salon Vista Mall', 'Business', '09123456789', 'EDIT ADDRESS HERE'),
(21, 'Juan Dela Cruz', 'Individual', '09123456789', 'Manila City');

-- --------------------------------------------------------

--
-- Table structure for table `manage_website`
--

CREATE TABLE `manage_website` (
  `id` int(11) NOT NULL,
  `title` varchar(600) NOT NULL,
  `short_title` varchar(600) NOT NULL,
  `logo` text NOT NULL,
  `footer` text NOT NULL,
  `currency_code` varchar(600) NOT NULL,
  `currency_symbol` varchar(600) NOT NULL,
  `login_logo` text NOT NULL,
  `invoice_logo` text NOT NULL,
  `background_login_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_website`
--

INSERT INTO `manage_website` (`id`, `title`, `short_title`, `logo`, `footer`, `currency_code`, `currency_symbol`, `login_logo`, `invoice_logo`, `background_login_image`) VALUES
(1, 'City of Laguna ~ San Pedro ', 'Crime and Incident Reporting', 'crime.png', '© 2023 Crime & Incident Report. All rights reserved.', '', '', 'trial1.jpg', '', 'trial2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `week` varchar(200) NOT NULL,
  `todays_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `linen` int(200) NOT NULL,
  `towel` int(255) NOT NULL,
  `pillowcase` int(255) NOT NULL,
  `robe` int(255) NOT NULL,
  `rug` int(255) NOT NULL,
  `facetowel` int(255) NOT NULL,
  `pillow` int(255) NOT NULL,
  `weight` double(255,1) NOT NULL,
  `perkg` int(255) NOT NULL,
  `prizes` int(255) NOT NULL,
  `delivery_status` tinyint(4) NOT NULL,
  `total` double(255,2) NOT NULL,
  `sname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `fname`, `month`, `week`, `todays_date`, `delivery_date`, `linen`, `towel`, `pillowcase`, `robe`, `rug`, `facetowel`, `pillow`, `weight`, `perkg`, `prizes`, `delivery_status`, `total`, `sname`) VALUES
(442, '16', 'DECEMBER', 'Week 5', '2022-12-30', '2023-01-01', 1, 0, 0, 0, 0, 0, 0, 8.0, 30, 0, 1, 240.00, ''),
(444, '21', 'DECEMBER', 'Week 5', '2022-12-30', '2023-01-01', 10, 9, 8, 7, 6, 5, 4, 8.0, 30, 0, 1, 240.00, ''),
(446, '21', 'DECEMBER', 'Week 1', '2023-01-07', '2023-01-09', 0, 0, 0, 0, 0, 0, 0, 12.0, 100, 2, 0, 1202.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `prize` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `sname`, `prize`) VALUES
(4, 'washing', '50'),
(14, 'rollpessing', '160'),
(15, 'ironing', '100'),
(16, 'Ironing', '20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_config`
--

CREATE TABLE `tbl_email_config` (
  `e_id` int(21) NOT NULL,
  `name` varchar(500) NOT NULL,
  `mail_driver_host` varchar(5000) NOT NULL,
  `mail_port` int(50) NOT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(30) NOT NULL,
  `mail_encrypt` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_email_config`
--

INSERT INTO `tbl_email_config` (`e_id`, `name`, `mail_driver_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encrypt`) VALUES
(1, '<Laundry Management> ', 'mail.gmail.com', 587, 'ndbhalerao91@gmail.com', 'x(ilz?cWumI2', 'sdsad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `name`, `description`) VALUES
(1, 'admin', 'admin'),
(2, 'Resident', 'They are residence and user from City of laguna, San pedro'),
(3, 'mendez', 'Dummy account');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `display_name` varchar(200) NOT NULL,
  `operation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permission`
--

INSERT INTO `tbl_permission` (`id`, `name`, `display_name`, `operation`) VALUES
(1, 'manage_user', 'Manage User', 'manage_user'),
(2, 'add_user', 'Add User', 'add_user'),
(3, 'edit_user', 'Edit User', 'edit_user'),
(4, 'delete_user', 'Delete User', 'delete_user'),
(5, 'add_order', 'Add Laundry', 'add_order'),
(6, 'edit_order', 'Edit Laundry', 'edit_order'),
(7, 'delete_order', 'Delete Laundry', 'delete_order'),
(8, 'edit_customer', 'Edit Client', 'edit_customer'),
(9, 'delete_customer', 'Delete Client', 'delete_customer'),
(10, 'add_services', 'Website Management', 'add_services'),
(11, 'delete_services', 'Delete Services', 'delete_services');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission_role`
--

CREATE TABLE `tbl_permission_role` (
  `id` int(30) NOT NULL,
  `permission_id` int(30) NOT NULL,
  `role_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permission_role`
--

INSERT INTO `tbl_permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(119, 1, 13),
(120, 2, 13),
(121, 5, 14),
(122, 7, 14),
(123, 1, 3),
(124, 2, 3),
(125, 3, 3),
(126, 4, 3),
(130, 1, 2),
(131, 2, 2),
(132, 3, 2),
(133, 4, 2),
(134, 5, 2),
(135, 6, 2),
(136, 7, 2),
(137, 8, 2),
(138, 9, 2),
(139, 10, 2),
(140, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_config`
--

CREATE TABLE `tbl_sms_config` (
  `smsid` int(20) NOT NULL,
  `senderid` int(20) NOT NULL,
  `sms_username` varchar(30) NOT NULL,
  `sms_password` varchar(20) NOT NULL,
  `auth_key` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sms_config`
--

INSERT INTO `tbl_sms_config` (`smsid`, `senderid`, `sms_username`, `sms_password`, `auth_key`) VALUES
(1, 101, 'username', 'password', 'authkey');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`case_no`),
  ADD UNIQUE KEY `id` (`id`,`fname`,`location`,`barangay`,`type`,`description`) USING HASH;

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission_role`
--
ALTER TABLE `tbl_permission_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_permission_role`
--
ALTER TABLE `tbl_permission_role`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
