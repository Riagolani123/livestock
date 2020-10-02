-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2020 at 11:55 AM
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
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(10) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`id`, `name`, `email`, `mobile`, `PASSWORD`, `address`) VALUES
(1, 'Riya Golani', 'riyagolani@gmail.com', 2147483647, 'riya123', 'Godhra'),
(2, 'Riya Golani', 'abc123@gmail.com', 2147483647, '123456', 'Amikrupa Girls Hostel, University Circle, Mota Bazaar, Vallabh Vidhyanagar'),
(3, 'abc', 'ria@gmail.com', 2147483647, '1234567', 'xyz'),
(4, 'Krihna', 'krishna@gmail.com', 1234578889, 'kris1234', 'Surat'),
(5, 'Riya', 'hack@gmail.com', 2147483647, '123456', 'dahod');

-- --------------------------------------------------------

--
-- Table structure for table `stockdetails`
--

CREATE TABLE `stockdetails` (
  `stockid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `typeofstock` varchar(50) NOT NULL,
  `load_date` date NOT NULL,
  `dept_date` date NOT NULL,
  `weight` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockdetails`
--

INSERT INTO `stockdetails` (`stockid`, `email`, `typeofstock`, `load_date`, `dept_date`, `weight`, `cost`, `status`) VALUES
(19, 'abc@gmail.com', 'cotton', '2020-07-09', '2020-07-11', 50, 2000, 'Finished'),
(20, '123@gmail.com', 'Groundnut', '2020-07-01', '2020-07-06', 40, 4000, 'Finished'),
(21, 'riyagolani@gmail.com', 'Cashew', '2020-07-02', '2020-07-22', 70, 28000, 'Finished'),
(22, 'riyagolani@gmail.com', 'bajri', '2020-07-07', '2020-07-30', 10, 4600, 'Finished'),
(23, '123@gmail.com', 'bajri', '2020-07-02', '2020-07-07', 12, 1200, 'Finished');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockdetails`
--
ALTER TABLE `stockdetails`
  ADD PRIMARY KEY (`stockid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stockdetails`
--
ALTER TABLE `stockdetails`
  MODIFY `stockid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
