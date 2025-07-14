-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2025 at 05:46 PM
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
-- Database: `smartcityhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `Acode` bigint(10) NOT NULL,
  `Aname` varchar(75) NOT NULL,
  `Longitude` double NOT NULL,
  `Latitude` double NOT NULL,
  `Is_Emergency_Point` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_service`
--

CREATE TABLE `emergency_service` (
  `service_id` int(11) NOT NULL,
  `Ename` varchar(255) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Aid` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `P_id` int(11) NOT NULL,
  `Pname` varchar(150) NOT NULL,
  `Aid` bigint(20) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Current_Occupancy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `Route_id` int(11) NOT NULL,
  `Rname` varchar(255) NOT NULL,
  `Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `Station_id` int(11) NOT NULL,
  `Sname` varchar(150) NOT NULL,
  `Aid` bigint(20) NOT NULL,
  `is_Bus_Stop?` tinyint(1) NOT NULL,
  `is_Metro_Station?` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `street`
--

CREATE TABLE `street` (
  `S_id` int(11) NOT NULL,
  `Start_aid` bigint(20) NOT NULL,
  `End_aid` bigint(20) NOT NULL,
  `Distance` double NOT NULL,
  `Is_One_Way` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`Acode`);

--
-- Indexes for table `emergency_service`
--
ALTER TABLE `emergency_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`P_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`Route_id`);

--
-- Indexes for table `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`S_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
