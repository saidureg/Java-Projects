-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2023 at 04:10 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mess_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `id` int(9) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `id`, `username`, `password`) VALUES
('saidur', 111, 'sae', '123'),
('Saidur Rahaman', 211015013, 'saidur', '12345'),
('arfat', 211, 'arfat', '123'),
('Saidur Rahaman', 211015013, 'saidur', '12345'),
('Saidur Rahaman', 211015013, 'saidur', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `bazarlist`
--

CREATE TABLE `bazarlist` (
  `Saturday` varchar(20) NOT NULL,
  `Sunday` varchar(20) NOT NULL,
  `Monday` varchar(20) NOT NULL,
  `Tuesday` varchar(20) NOT NULL,
  `Wednesday` varchar(20) NOT NULL,
  `Thursday` varchar(20) NOT NULL,
  `Friday` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bazarlist`
--

INSERT INTO `bazarlist` (`Saturday`, `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`) VALUES
('saidur', 'limon', 'yasir', 'sazzad', 'yasin', 'imtiaz', 'shuvo '),
('a', 's', 'x', 'x', 'w', 's', 'd ');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `username` varchar(20) NOT NULL,
  `complaint` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`username`, `complaint`) VALUES
('saidur', 'This is problem.'),
('rahaman', 'Thank you for this project .'),
('', 'Thank you for this project.I do not like to \nsay here is a problem.You are fail to data \nshow in this project.Overall It is great \nproject.  '),
('', ' is a problem.You are fail to data \nshow in this project.Overall It is great \nproject.  ');

-- --------------------------------------------------------

--
-- Table structure for table `groceries`
--

CREATE TABLE `groceries` (
  `Date` varchar(12) NOT NULL,
  `Member_Name` varchar(30) NOT NULL,
  `G_Name` varchar(30) DEFAULT NULL,
  `Quantity` double(8,2) NOT NULL,
  `Unit_Price` double(8,2) NOT NULL,
  `Total_Amount` double(8,2) NOT NULL,
  `Amount` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groceries`
--

INSERT INTO `groceries` (`Date`, `Member_Name`, `G_Name`, `Quantity`, `Unit_Price`, `Total_Amount`, `Amount`) VALUES
('12-09-2022', 'saidur', 'meat', 1.00, 200.00, 200.00, 200.00),
('21.09.2022', 'manik', 'fish', 1.60, 280.00, 448.00, 448.00),
('22.09.2022', 'yasin', 'meat', 0.50, 750.00, 375.00, 375.00);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `sname` varchar(20) NOT NULL,
  `sid` int(10) NOT NULL,
  `susername` varchar(10) NOT NULL,
  `spassword` varchar(15) NOT NULL,
  `sphone` varchar(11) NOT NULL,
  `semail` varchar(20) NOT NULL,
  `messdue` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`sname`, `sid`, `susername`, `spassword`, `sphone`, `semail`, `messdue`) VALUES
('Yasir Arafat', 201002090, 'yasir', '1234', '1234422466', 'yasir@gmail.com', 0),
('Saidur Rahaman', 211015013, 'saidur', '12345', '143465765', 'saidur@gmail.com', 0),
('Saidur Rahaman', 211015014, 'sharmin', '12345', '14349807', 'sharmin@gmail.com', 0),
('Syadur Rahaman', 211015017, 'rahaman', '12345', '01828212387', 'syadur@gmail.com', 500);

-- --------------------------------------------------------

--
-- Table structure for table `messmenu`
--

CREATE TABLE `messmenu` (
  `breakfast` varchar(10) NOT NULL,
  `lunch` varchar(10) NOT NULL,
  `dinner` varchar(10) NOT NULL,
  `ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messmenu`
--

INSERT INTO `messmenu` (`breakfast`, `lunch`, `dinner`, `ID`) VALUES
('1', '1', '1', '211015013'),
('1', '2', '1', '211015013');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD UNIQUE KEY `sid` (`sid`),
  ADD UNIQUE KEY `susername` (`susername`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
