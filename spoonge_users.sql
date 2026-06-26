-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 26, 2026 at 11:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SPOONGE`
--

-- --------------------------------------------------------

--
-- Table structure for table `spoonge_users`
--

CREATE TABLE `spoonge_users` (
  `member_id` int(11) NOT NULL,
  `members_name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `SCORE` int(11) DEFAULT NULL,
  `member_password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `device_os` varchar(30) NOT NULL DEFAULT 'Andriod',
  `arrival` datetime NOT NULL DEFAULT current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spoonge_users`
--

INSERT INTO `spoonge_users` (`member_id`, `members_name`, `description`, `SCORE`, `member_password`, `email`, `device_os`, `arrival`, `active`) VALUES
(1, 'Mark Lukas', 'Tall', 40, 'Mark23@', 'markrobert@aol.com', 'ios', '2026-09-26 00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `spoonge_users`
--
ALTER TABLE `spoonge_users`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `spoonge_users`
--
ALTER TABLE `spoonge_users`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
