-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2019 at 10:17 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railres`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('cse311@gmail.com', '1234'),
('naeem@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `interlist`
--

CREATE TABLE `interlist` (
  `Number` int(6) DEFAULT NULL,
  `st1` varchar(10) DEFAULT NULL,
  `st1arri` varchar(10) DEFAULT NULL,
  `st2` varchar(10) DEFAULT NULL,
  `st2arri` varchar(10) DEFAULT NULL,
  `st3` varchar(10) DEFAULT NULL,
  `st3arri` varchar(10) DEFAULT NULL,
  `st4` varchar(10) DEFAULT NULL,
  `st4arri` varchar(10) DEFAULT NULL,
  `st5` varchar(10) DEFAULT NULL,
  `st5arri` varchar(10) DEFAULT NULL,
  `Ori` varchar(20) NOT NULL,
  `Oriarri` varchar(10) NOT NULL,
  `Dest` varchar(20) NOT NULL,
  `Desarri` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interlist`
--

INSERT INTO `interlist` (`Number`, `st1`, `st1arri`, `st2`, `st2arri`, `st3`, `st3arri`, `st4`, `st4arri`, `st5`, `st5arri`, `Ori`, `Oriarri`, `Dest`, `Desarri`, `Name`) VALUES
(101, 'Dhaka', '01:00', 'Jamuna', '03:00', 'Pabna', '05:00', 'Jessore', '06:00', 'Khulna', '07:00', 'Dhaka', '12.00', 'Khulna', '07:00', 'Chitra Express'),
(102, 'Dhaka', '01:00', 'Airport', '02:00', 'Norsingdi', '03:00', 'Mymensing', '04:00', 'Chittagong', '06:00', 'Dhaka', '12.30', 'Chittagong', '06:00', 'Subarna Express'),
(103, 'Dhaka', '03:00', 'Airport', '04:00', 'Joydebpur', '05:00', 'Norsingdi', '06:00', 'Dinajpur', '07:00', 'Dhaka', '02.00', 'Dinajpur', '07:00', 'Ekota Express'),
(104, 'Dhaka', '04:00', 'Airport', '05:00', 'Joydebpur', '06:00', 'Comilla', '07:00', 'Noakhali', '08:00', 'Dhaka', '03.00', 'Noakhali', '08:00', 'Upukol Express'),
(105, 'Dhaka', '10:00', 'Airport', '11:00', 'Joydebpur', '12:00', 'Norsingdi', '01:00', 'Sylet', '03:00', 'Dhaka', '09.00', 'Noakhali', '03:00', 'Uddayan Express');

-- --------------------------------------------------------

--
-- Table structure for table `seats_availability`
--

CREATE TABLE `seats_availability` (
  `Train_Name` varchar(20) NOT NULL,
  `doj` varchar(255) DEFAULT NULL,
  `seatno` int(11) DEFAULT NULL,
  `amount` int(255) DEFAULT NULL,
  `condi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `book` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats_availability`
--

INSERT INTO `seats_availability` (`Train_Name`, `doj`, `seatno`, `amount`, `condi`, `email`, `book`) VALUES
('Chitra Express', '2019-12-14', 1, 1500, 'Tapanukul', 'naeem@gmail.com', 'Reserved'),
('Chitra Express', '2019-12-14', 2, 500, 'good', 'Free', 'Free'),
('Chitra Express', '2019-12-14', 3, 1500, 'Tapanukul', 'free', 'Free'),
('Chitra Express', '2019-12-10', 5, 0, 'Tapanukul', 'mdparvex443@gmail.com', 'Reserved'),
('Subarna Espress', '2019-12-14', 2, 1500, 'Tapanukul', 'Free', 'Free'),
('Chitra Express', '2019-12-14', 1, 1500, 'Tapanukul', 'naeem@gmail.com', 'Reserved'),
('Subarna Espress', '2019-12-12', 25, 1500, 'Tapanukul', 'mdparvex443@gmail.com', 'Reserved'),
('Ekota Express', '2019-12-04', 500, 1500, 'Tapanukul', 'asdasdasdaasdasd@gmail.com', 'Free'),
('Subarna Espress', '2019-12-12', 25, 1500, 'Tapanukul', 'mdparvex443@gmail.com', 'Reserved'),
('Subarna Espress', '2019-12-12', 25, 1500, 'Tapanukul', 'mdparvex443@gmail.com', 'Reserved'),
('Subarna Espress', '2019-12-12', 25, 1500, 'Tapanukul', 'mdparvex443@gmail.com', 'Reserved'),
('Ekota Express', '2019-12-18', 500, 1500, '2nd Class-Shovon', 'Free', 'Free');

-- --------------------------------------------------------

--
-- Table structure for table `train_list`
--

CREATE TABLE `train_list` (
  `Number` int(6) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Origin` varchar(20) NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `Arrival` varchar(10) NOT NULL,
  `Departure` varchar(10) NOT NULL,
  `Date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train_list`
--

INSERT INTO `train_list` (`Number`, `Name`, `Origin`, `Destination`, `Arrival`, `Departure`, `Date`) VALUES
(101, 'Chitra Express', 'Dhaka', 'Khulna', '12:00', '12.30', '14/12/2019'),
(102, 'Subarna Espress', 'Dhaka', 'Chittagong', '12:30', '01.00', '14/12/2019'),
(103, 'Ekota Express', 'Dhaka', 'Dinajpur', '2:30', '03:00', '15/12/2019'),
(104, 'Upukol Express', 'Dhaka', 'Noakhali', '03:30', '04:00', '16/12/2019'),
(105, 'Uddayan Express', 'Dhaka', 'Noakhali', '09:30', '10:00', '17/12/2019');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`f_name`, `l_name`, `email`, `password`, `gender`, `mobile`) VALUES
('naeem', 'sana', 'naeem@gmail.com', '1234', 'male', 1793447018),
('md', 'parvez', 'mdparvex443@gmail.com', '123456', 'Male', 1623833730);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `train_list`
--
ALTER TABLE `train_list`
  ADD PRIMARY KEY (`Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
