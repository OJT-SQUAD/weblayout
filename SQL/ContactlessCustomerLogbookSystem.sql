-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 07, 2020 at 12:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customerlogbooksystem`
--

-- --------------------------------------------------------

--
-- 
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `fullname` text NOT NULL,
  `address` text NOT NULL,
  `birthdate` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `level` int(2) NOT NULL DEFAULT 0,
  `status` text NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`

INSERT INTO `users` (`id`, `image`, `fullname`, `address`, `birthdate`, `email`, `password`, `level`, `status`) VALUES
(1, NULL, 'keyla ianelle', 'bacolod city', '2019-01-07', 'keylaianelle@gmail.com', '$2y$12$xuukMR8IxUKaxltg2upKqOa0Y/V38ykTxKWG1bu23R2K7F3Xdq1wS', 2, 'active'),
(2, NULL, 'kim nicole sabordo', 'bacolod city', '1970-01-01', 'kimnicole.dev@gmail.com', '$2y$12$II0r4FUtRNYPXFkynQYAkueHKewjUne7Q8gZwWkhXMUWAUVJvuHs6', 2, 'active'),
(3, NULL, 'georgia lorenz fernin', 'bacolod city', '1970-01-01', 'georgia.fernin@gmail.com', '$2y$12$VTeG/qPBOezwZI2KInqjw.1p/fiK0ZHBOFmOuqjpRp2XLZFSozy76', 2, 'active'),
(4, 'bill_gates_10072020034942..', 'bill gates', 'bacolod city', '1970-01-01', 'billgates@gmail.com', '$2y$12$g5ltJMX9JFH7SbmaI0JmlODBSH7/yHU18Bn9r90bBj/8m64MlqYwm', 1, 'active');

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
