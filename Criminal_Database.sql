-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 15, 2020 at 05:42 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Criminal_Database`
--

-- --------------------------------------------------------

--
-- Table structure for table `ACCESS`
--

CREATE TABLE `ACCESS` (
  `mail_id` varchar(100) NOT NULL,
  `crime_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `COURT`
--

CREATE TABLE `COURT` (
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `type` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `CRIME`
--

CREATE TABLE `CRIME` (
  `id` int(11) NOT NULL,
  `type` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CRIME`
--

INSERT INTO `CRIME` (`id`, `type`, `name`) VALUES
(1, 'murder', 'Rasel Shah'),
(2, 'theft', 'Karim Rahman'),
(3, 'murder', 'Sameul Islam'),
(4, 'rape', 'Andrew Ardan'),
(5, 'rape', 'James Moore'),
(6, 'theft', 'Bob Smith'),
(7, 'rape', 'Steven Howel'),
(8, 'murder', 'Ahmed Karim'),
(9, 'robbery', 'Jamila Noor'),
(10, 'theft', 'Rudmila Sheikh'),
(11, 'rape', 'Ritwik Shah'),
(12, 'murder', 'Sanjana Islam'),
(13, 'robbery', 'Sanjida Alam'),
(14, 'murder', 'Fahim Kabir'),
(15, 'rape', 'Wasik Hasan');

-- --------------------------------------------------------

--
-- Table structure for table `CRIMINAL`
--

CREATE TABLE `CRIMINAL` (
  `age` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `fingerprint` blob DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CRIMINAL`
--

INSERT INTO `CRIMINAL` (`age`, `weight`, `height`, `id`, `fingerprint`, `address`, `gender`, `name`) VALUES
(45, 50, 6, 1, NULL, 'Dhaka', 'male', 'Rasel Shah'),
(15, 40, 5, 2, NULL, 'Sylhet', 'male', 'Karim Rahman'),
(50, 45, 6, 3, NULL, 'Comilla', 'male', 'Sameul Islam'),
(50, 48, 6, 4, NULL, 'Comilla', 'male', 'Andrew Ardan'),
(25, 40, 6, 5, NULL, 'Dhaka', 'male', 'James Moore'),
(22, 45, 5, 6, NULL, 'Dhaka', 'male', 'Bob Smith'),
(23, 46, 6, 7, NULL, 'Comilla', 'male', 'Steven Howel'),
(24, 50, 6, 8, NULL, 'Dhaka', 'male', 'Ahmed Karim'),
(26, 55, 4, 9, NULL, 'Sylhet', 'female', 'Jamila Noor'),
(36, 59, 5, 10, NULL, 'Comilla', 'female', 'Rudmila Sheikh'),
(35, 52, 6, 11, NULL, 'Chittagong', 'male', 'Ritwik Shah'),
(28, 66, 6, 12, NULL, 'Dhaka', 'female', 'Sanjana Islam'),
(20, 45, 5, 13, NULL, 'Dhaka', 'female', 'Sanjida Alam'),
(40, 72, 6, 14, NULL, 'Rangpur', 'male', 'Fahim Kabir'),
(25, 53, 6, 15, NULL, 'Dhanmondi', 'male', 'Wasik Hasan');

-- --------------------------------------------------------

--
-- Table structure for table `DONE_BY`
--

CREATE TABLE `DONE_BY` (
  `crime_id` int(11) NOT NULL,
  `criminal_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `DONE_BY`
--

INSERT INTO `DONE_BY` (`crime_id`, `criminal_id`, `date`) VALUES
(1, 1, '2018-09-16'),
(2, 2, '2020-02-15'),
(3, 3, '2020-03-01'),
(4, 4, '2018-09-16'),
(5, 5, '2019-12-12'),
(6, 6, '2020-02-15'),
(7, 7, '2018-09-16'),
(8, 8, '2019-12-12'),
(9, 9, '2018-09-16'),
(10, 10, '2020-02-15'),
(11, 11, '2020-03-01'),
(12, 12, '2019-12-12'),
(13, 13, '2018-09-16'),
(14, 14, '2020-02-15'),
(15, 15, '2019-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `FIR`
--

CREATE TABLE `FIR` (
  `id` int(11) NOT NULL,
  `type` varchar(80) NOT NULL,
  `date` date NOT NULL,
  `CR_id` int(11) NOT NULL,
  `police_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `JUDGED_IN`
--

CREATE TABLE `JUDGED_IN` (
  `Court_name` varchar(100) NOT NULL,
  `criminal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `LOGIN`
--

CREATE TABLE `LOGIN` (
  `login_username` varchar(100) NOT NULL,
  `login_id` int(11) NOT NULL,
  `login_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `LOGIN`
--

INSERT INTO `LOGIN` (`login_username`, `login_id`, `login_password`) VALUES
('wxy', 1, '123'),
('abc', 2, '456'),
('abc', 3, '789');

-- --------------------------------------------------------

--
-- Table structure for table `MOBILE`
--

CREATE TABLE `MOBILE` (
  `email_id` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `PAST_RECORDS`
--

CREATE TABLE `PAST_RECORDS` (
  `crime_id` int(11) NOT NULL,
  `crime_type` varchar(80) NOT NULL,
  `date` date NOT NULL,
  `C_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `POLICE`
--

CREATE TABLE `POLICE` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rank` varchar(80) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `station_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `POLICE_STATION`
--

CREATE TABLE `POLICE_STATION` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `RECORDS`
--

CREATE TABLE `RECORDS` (
  `phone` int(11) NOT NULL,
  `FIR_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mobile` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `USER`
--

INSERT INTO `USER` (`email`, `name`, `user_id`, `mobile`, `address`, `image`) VALUES
('abc@hotmail.com', 'abc', 3, NULL, NULL, NULL),
('wxy@gmail.com', 'wxy', 1, NULL, NULL, NULL),
('xyz@hotmail.com', 'xyz', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `VICTIM`
--

CREATE TABLE `VICTIM` (
  `age` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `F_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `WITNESS`
--

CREATE TABLE `WITNESS` (
  `age` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ACCESS`
--
ALTER TABLE `ACCESS`
  ADD KEY `mail_id` (`mail_id`),
  ADD KEY `crime_id` (`crime_id`);

--
-- Indexes for table `COURT`
--
ALTER TABLE `COURT`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `CRIME`
--
ALTER TABLE `CRIME`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CRIMINAL`
--
ALTER TABLE `CRIMINAL`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DONE_BY`
--
ALTER TABLE `DONE_BY`
  ADD KEY `crime_id` (`crime_id`),
  ADD KEY `criminal_id` (`criminal_id`);

--
-- Indexes for table `FIR`
--
ALTER TABLE `FIR`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CR_id` (`CR_id`),
  ADD KEY `police_id` (`police_id`);

--
-- Indexes for table `JUDGED_IN`
--
ALTER TABLE `JUDGED_IN`
  ADD KEY `criminal_id` (`criminal_id`),
  ADD KEY `Court_name` (`Court_name`);

--
-- Indexes for table `LOGIN`
--
ALTER TABLE `LOGIN`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `MOBILE`
--
ALTER TABLE `MOBILE`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `PAST_RECORDS`
--
ALTER TABLE `PAST_RECORDS`
  ADD PRIMARY KEY (`crime_id`),
  ADD KEY `C_id` (`C_id`);

--
-- Indexes for table `POLICE`
--
ALTER TABLE `POLICE`
  ADD PRIMARY KEY (`id`),
  ADD KEY `station_id` (`station_id`);

--
-- Indexes for table `POLICE_STATION`
--
ALTER TABLE `POLICE_STATION`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RECORDS`
--
ALTER TABLE `RECORDS`
  ADD KEY `phone` (`phone`),
  ADD KEY `FIR_ID` (`FIR_ID`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `VICTIM`
--
ALTER TABLE `VICTIM`
  ADD PRIMARY KEY (`id`),
  ADD KEY `F_ID` (`F_ID`);

--
-- Indexes for table `WITNESS`
--
ALTER TABLE `WITNESS`
  ADD PRIMARY KEY (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CRIME`
--
ALTER TABLE `CRIME`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `CRIMINAL`
--
ALTER TABLE `CRIMINAL`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `FIR`
--
ALTER TABLE `FIR`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LOGIN`
--
ALTER TABLE `LOGIN`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `PAST_RECORDS`
--
ALTER TABLE `PAST_RECORDS`
  MODIFY `crime_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `POLICE`
--
ALTER TABLE `POLICE`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `POLICE_STATION`
--
ALTER TABLE `POLICE_STATION`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `VICTIM`
--
ALTER TABLE `VICTIM`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `WITNESS`
--
ALTER TABLE `WITNESS`
  MODIFY `mobile` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ACCESS`
--
ALTER TABLE `ACCESS`
  ADD CONSTRAINT `ACCESS_ibfk_1` FOREIGN KEY (`mail_id`) REFERENCES `USER` (`email`),
  ADD CONSTRAINT `ACCESS_ibfk_2` FOREIGN KEY (`crime_id`) REFERENCES `CRIME` (`id`);

--
-- Constraints for table `DONE_BY`
--
ALTER TABLE `DONE_BY`
  ADD CONSTRAINT `DONE_BY_ibfk_1` FOREIGN KEY (`crime_id`) REFERENCES `CRIME` (`id`),
  ADD CONSTRAINT `DONE_BY_ibfk_2` FOREIGN KEY (`criminal_id`) REFERENCES `CRIMINAL` (`id`);

--
-- Constraints for table `FIR`
--
ALTER TABLE `FIR`
  ADD CONSTRAINT `FIR_ibfk_1` FOREIGN KEY (`CR_id`) REFERENCES `CRIME` (`id`),
  ADD CONSTRAINT `FIR_ibfk_2` FOREIGN KEY (`police_id`) REFERENCES `POLICE` (`id`);

--
-- Constraints for table `JUDGED_IN`
--
ALTER TABLE `JUDGED_IN`
  ADD CONSTRAINT `JUDGED_IN_ibfk_1` FOREIGN KEY (`criminal_id`) REFERENCES `CRIMINAL` (`id`),
  ADD CONSTRAINT `JUDGED_IN_ibfk_2` FOREIGN KEY (`Court_name`) REFERENCES `COURT` (`name`);

--
-- Constraints for table `MOBILE`
--
ALTER TABLE `MOBILE`
  ADD CONSTRAINT `MOBILE_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `USER` (`email`);

--
-- Constraints for table `PAST_RECORDS`
--
ALTER TABLE `PAST_RECORDS`
  ADD CONSTRAINT `PAST_RECORDS_ibfk_1` FOREIGN KEY (`C_id`) REFERENCES `CRIMINAL` (`id`);

--
-- Constraints for table `POLICE`
--
ALTER TABLE `POLICE`
  ADD CONSTRAINT `POLICE_ibfk_1` FOREIGN KEY (`station_id`) REFERENCES `POLICE_STATION` (`id`);

--
-- Constraints for table `RECORDS`
--
ALTER TABLE `RECORDS`
  ADD CONSTRAINT `RECORDS_ibfk_1` FOREIGN KEY (`phone`) REFERENCES `WITNESS` (`mobile`),
  ADD CONSTRAINT `RECORDS_ibfk_2` FOREIGN KEY (`FIR_ID`) REFERENCES `FIR` (`id`);

--
-- Constraints for table `USER`
--
ALTER TABLE `USER`
  ADD CONSTRAINT `USER_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `LOGIN` (`login_id`);

--
-- Constraints for table `VICTIM`
--
ALTER TABLE `VICTIM`
  ADD CONSTRAINT `VICTIM_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `FIR` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
