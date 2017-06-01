-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2017 at 10:03 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id789227_reliefsupport`
--

-- --------------------------------------------------------

--
-- Table structure for table `device_token_details`
--

CREATE TABLE `device_token_details` (
  `device_token_id` int(11) NOT NULL,
  `device_token_text` longtext,
  `device_token_user_id` int(11) DEFAULT NULL,
  `device_token_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device_token_details`
--

INSERT INTO `device_token_details` (`device_token_id`, `device_token_text`, `device_token_user_id`, `device_token_active`) VALUES
(15, 'dM10OKNhW8k:APA91bEbrgS2SAd1pfptfhD0FIWhg91nHhXA81pbz4VX-lYSDcBNHP3RX6L9qSYjtqhEThwR0jXAK7NE8J5Sid7p2JGhYpKrqMD4m4MZau9UN1xiyOwbzqHYNpZovS_Or9F2U9EoJbEQ', NULL, 1),
(18, 'dmq_G5n39Hw:APA91bEIAiaWYmG-GefbfhiB8vbgfUgDK56C3-GLkPUxGqIaEByg1znNssBP8CN9nQyiC0hSYJ0nHjJ1rs5taJvazWDOBW0m0_QTsTYUz67LWf1tGHdOPi30D7pFgyv8WfWchtU9tuKt', NULL, 1),
(26, 'fqm6dX2EHAU:APA91bGW9GiJR9PFQO7AQBofa-ecHOh_BFWTfOxKpECBBu4Sr89XBwIbKiJXztdVxaCjN90_ZmhzlqbDm6vUcOdi5SUtoE3pf9r3_UWcr0ComKPfsY6cP5eLRvGXydWvwcEjbZGSD3I-', NULL, 1),
(29, 'efl1sz0LNsw:APA91bF1TPoB-2dVGZ-3ec6k07yrYXhpgulLasm4dManpH1-ZK0yTyuHYtZvNZxuFW6GMyiU8O7SypTJcxHVA60WicLzfJ9HaSu9z_2oXG02Uh3mtiGkz8Y0cJOR1joRAIZLFfAXNGox', NULL, 1),
(33, 'fRwifiERNgU:APA91bH891j0EW71OCKPl9D3RVZ7gEarecugEoD9_tY6rtQNKgLAqAAfmgTrzqcDXmah9WxfPJAVdWuEuQvrxKrZQ06gCtvDgR6lToAzOseISA1B2Z4Y26LuTxMUHVS4NwNC98c_oeIn', NULL, 1),
(36, 'dM10OKNhW8k:APA91bEbrgS2SAd1pfptfhD0FIWhg91nHhXA81pbz4VX-lYSDcBNHP3RX6L9qSYjtqhEThwR0jXAK7NE8J5Sid7p2JGhYpKrqMD4m4MZau9UN1xiyOwbzqHYNpZovS_Or9F2U9EoJbEQ', NULL, 1),
(37, '', NULL, 1),
(38, 'dM10OKNhW8k:APA91bEbrgS2SAd1pfptfhD0FIWhg91nHhXA81pbz4VX-lYSDcBNHP3RX6L9qSYjtqhEThwR0jXAK7NE8J5Sid7p2JGhYpKrqMD4m4MZau9UN1xiyOwbzqHYNpZovS_Or9F2U9EoJbEQ', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `disaster_area_details`
--

CREATE TABLE `disaster_area_details` (
  `disaster_area_id` int(11) NOT NULL,
  `disaster_area_name` varchar(255) DEFAULT NULL,
  `disaster_area_lat` varchar(255) NOT NULL,
  `disaster_area_lng` varchar(255) NOT NULL,
  `disaster_area_reason` longtext,
  `disaster_area_special_note` longtext,
  `disaster_area_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `donation` text NOT NULL,
  `information` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `identifier` varchar(2) DEFAULT 'W' COMMENT 'a- android,i - IOS, b- BOT, W - Web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `name`, `telephone`, `address`, `city`, `donation`, `information`, `created_at`, `updated_at`, `identifier`) VALUES
(1, 'Sumudu Sahan', '0715467935', 'police station road,kurundugaha, elpitiya', 'galle', '*10water bottles\r\n*50 soaps', 'test info 1', '2017-05-30 00:00:00', '2017-05-30 00:00:00', 'W'),
(2, 'Sahan Weerasuriya', '0716117877', 'police station road,kurundugaha, elpitiya', 'Galle', '*500 bottles', 'test info 2', '2017-05-30 00:00:00', '2017-05-30 00:00:00', 'A'),
(3, 'sumudu sahan', '0715467925', 'address', 'city', 'new test way', 'info', '2017-05-30 10:04:53', '2017-05-30 10:04:53', 'W'),
(9, 'naveen', '1534545', 'matara', 'matara', 'water bottles', 'i can give itemz', '2017-05-30 11:08:49', '2017-05-30 11:08:49', 'a'),
(10, 'test record', '8875784', 'test address', 'st cty', 'test methid', 'test info', '2017-05-30 11:11:03', '2017-05-30 11:11:03', 'I'),
(11, 'test record', '8875784', 'test address', 'st cty', 'test methid', 'test info', '2017-05-30 11:42:44', '2017-05-30 11:42:44', 'B'),
(12, 'udaya - test', '0716266268', 'test', 'test', 'water', 'test', '2017-05-30 13:00:45', '2017-05-30 13:00:45', 'B'),
(13, 'nfjfjd', '5;54545', 'dhdhfhf', 'dhrhdhd', 'hdhchd', 'dhdjd', '2017-05-30 15:31:32', '2017-05-30 15:31:32', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `needs`
--

CREATE TABLE `needs` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `needs` text NOT NULL,
  `heads` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `identifier` varchar(1) DEFAULT 'W' COMMENT 'a- android,i - IOS, b- BOT, W - Web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `needs`
--

INSERT INTO `needs` (`id`, `name`, `telephone`, `address`, `city`, `needs`, `heads`, `created_at`, `updated_at`, `identifier`) VALUES
(1, 'Sumudu Sahan', '0715467935', 'Police station road, elpitiya', 'Galle', '100 bottles', 100, '2017-05-30 00:00:00', '2017-05-30 00:00:00', 'A'),
(2, 'Sahan Weerasuriya', '0716117877', 'Police station road, elpitiya', 'Galle', '50 Soaps', 50, '2017-05-30 00:00:00', '2017-05-30 00:00:00', 'W'),
(7, 'harsha', '0710567167', 'godagama', 'mathara', 'water', 50, '2017-05-30 11:30:19', '2017-05-30 11:30:19', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `notification_details`
--

CREATE TABLE `notification_details` (
  `notification_id` int(11) NOT NULL,
  `notification_main_value` varchar(255) DEFAULT NULL,
  `notification_sub_value_1` varchar(255) DEFAULT NULL,
  `notification_sub_value_2` varchar(255) DEFAULT NULL,
  `notification_sub_value_3` varchar(255) DEFAULT NULL,
  `notification_sub_value_4` varchar(255) DEFAULT NULL,
  `notification_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `notification_active` int(1) NOT NULL DEFAULT '1' COMMENT '1 = active,  0 = inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_details`
--

INSERT INTO `notification_details` (`notification_id`, `notification_main_value`, `notification_sub_value_1`, `notification_sub_value_2`, `notification_sub_value_3`, `notification_sub_value_4`, `notification_date_time`, `notification_active`) VALUES
(1, 'test main', 'test sub 1', 'test sub 2', 'test sub 3', 'test sub 4', '2017-05-30 04:51:04', 1),
(4, '[ReliefSupport] New Donation', 'naveen', 'matara', 'water bottles', 'i can give itemz', '2017-05-30 05:38:49', 1),
(5, '[ReliefSupport] New Donation', 'test record', 'test address', 'test methid', 'test info', '2017-05-30 05:41:06', 1),
(6, '[ReliefSupport] New Need', 'harsha', 'godagama', 'water', '50', '2017-05-30 06:00:19', 1),
(7, '[ReliefSupport] New Donation', 'test record', 'test address', 'test methid', 'test info', '2017-05-30 06:12:44', 1),
(8, '[ReliefSupport] New Donation', 'udaya - test', 'test', 'water', 'test', '2017-05-30 07:30:45', 1),
(9, '[ReliefSupport] New Donation', 'nfjfjd', 'dhdhfhf', 'hdhchd', 'dhdjd', '2017-05-30 10:01:32', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `device_token_details`
--
ALTER TABLE `device_token_details`
  ADD PRIMARY KEY (`device_token_id`);

--
-- Indexes for table `disaster_area_details`
--
ALTER TABLE `disaster_area_details`
  ADD PRIMARY KEY (`disaster_area_id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `needs`
--
ALTER TABLE `needs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_details`
--
ALTER TABLE `notification_details`
  ADD PRIMARY KEY (`notification_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `device_token_details`
--
ALTER TABLE `device_token_details`
  MODIFY `device_token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `disaster_area_details`
--
ALTER TABLE `disaster_area_details`
  MODIFY `disaster_area_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `needs`
--
ALTER TABLE `needs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `notification_details`
--
ALTER TABLE `notification_details`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
