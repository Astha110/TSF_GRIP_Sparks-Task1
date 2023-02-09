-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 06:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Astha', 'Neha', 200, '2023-02-01 18:58:27'),
(2, 'Smriti', 'Astha', 200, '2023-02-01 19:00:31'),
(3, 'Neha', 'Harsh', 5000, '2023-02-01 19:01:32'),
(4, 'Astha', 'Shivam', 5000, '2023-02-01 19:06:15'),
(5, 'Smriti', 'Satyam', 500, '2023-02-01 19:28:24'),
(6, 'Neha', 'Satyam', 500, '2023-02-01 19:30:31'),
(7, 'Gaurav', 'Saurav', 200, '2023-02-01 19:31:22'),
(8, 'Harsh', 'Saurav', 520, '2023-02-01 07:39:58'),
(9, 'Arnav', 'Astha', 500, '2023-02-01 09:37:08'),
(10, 'Smriti', 'Saurav', 100, '2023-02-01 11:52:18'),
(11, 'Astha', 'Harsh', 10000, '2023-02-04 18:16:35'),
(12, 'Smriti', 'Astha', 6000, '2023-02-04 18:27:58'),
(13, 'Astha', 'Saurav', 100, '2023-02-04 20:18:06'),
(14, 'Satyam', 'Astha', 200, '2023-02-04 20:18:59'),
(15, 'Astha', 'Saurav', 200, '2023-02-04 20:24:39'),
(16, 'Arnav', 'Satyam', 5000, '2023-02-04 20:41:58'),
(17, 'Shivam', 'Astha', 7000, '2023-02-04 21:02:37'),
(18, 'Arnav', 'Astha', 30, '2023-02-06 21:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1087, 'Astha', 'astha@gmail.com', 49530),
(2654, 'Neha', 'neha@gmail.com', 40620),
(3624, 'Smriti', 'smriti@gmail.com', 34000),
(4542, 'Harsh', 'harsh@gmail.com', 48800),
(5345, 'Satyam', 'satyam@gmail.com', 39800),
(5465, 'Shivam', 'shivam@gmail.com', 42500),
(6554, 'Shreyash', 'shreyash@gmail.com', 40000),
(7875, 'Arnav', 'arnav@gmail.com', 44450),
(8877, 'Gaurav', 'gaurav@gmail.com', 40000),
(9245, 'Saurav', 'saurav@gmail.com', 30300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
