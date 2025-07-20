-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 20, 2025 at 02:16 PM
-- Server version: 5.5.28-log
-- PHP Version: 5.4.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `drdo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE IF NOT EXISTS `complaints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `user_group` varchar(50) DEFAULT NULL,
  `complaint_type` varchar(100) DEFAULT NULL,
  `complaint_details` text,
  `status` varchar(20) DEFAULT 'Not Viewed',
  `remark` text,
  `feedback` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `username`, `designation`, `user_group`, `complaint_type`, `complaint_details`, `status`, `remark`, `feedback`, `created_at`) VALUES
(1, 'user1', 'Scientist B', 'Radar', 'Infrastructure', 'just a test', 'Pending', 'good', 'keep it up', '2025-07-17 15:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `user_group` varchar(100) DEFAULT NULL,
  `role` enum('user','officer') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `designation`, `user_group`, `role`) VALUES
(1, 'user1', 'pass1', 'Scientist B', 'Radar', 'user'),
(2, 'officer1', 'pass2', 'Admin Head', 'Missile', 'officer');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
