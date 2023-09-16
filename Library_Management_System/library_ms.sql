-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2023 at 04:46 PM
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
-- Database: `library_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `books_details`
--

CREATE TABLE `books_details` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books_details`
--

INSERT INTO `books_details` (`book_id`, `book_name`, `author`, `quantity`) VALUES
(1, 'Java', 'Herbert Schildt', 2),
(2, 'Python', ' John M Zelle', 0),
(3, 'PHP', 'Larry Ullman', 2),
(4, 'C', 'Dennis Ritchie', 3),
(5, 'C++', 'Bjarne Stroustrup', 5);

-- --------------------------------------------------------

--
-- Table structure for table `issue_book_details`
--

CREATE TABLE `issue_book_details` (
  `issue_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_name` varchar(100) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_book_details`
--

INSERT INTO `issue_book_details` (`issue_id`, `book_id`, `book_name`, `student_id`, `student_name`, `issue_date`, `due_date`, `STATUS`) VALUES
(4, 1, 'Java', 1, 'Saidur', '2022-09-06', '2022-09-13', 'returned'),
(5, 1, 'Java', 2, 'Rahaman', '2022-09-05', '2022-09-12', 'returned'),
(6, 3, 'PHP', 1, 'Saidur', '2022-09-01', '2022-09-07', 'returned'),
(7, 1, 'Java', 2, 'Rahaman', '2022-09-02', '2022-09-10', 'returned'),
(8, 2, 'Python', 2, 'Rahaman', '2022-09-07', '2022-09-11', 'pending'),
(9, 3, 'PHP', 1, 'Saidur', '2022-09-02', '2022-09-05', 'pending'),
(10, 2, 'Python', 1, 'Saidur', '2022-09-01', '2022-09-05', 'pending'),
(11, 4, 'C', 1, 'Saidur', '2022-09-01', '2022-09-05', 'pending'),
(12, 1, 'Java', 2, 'Rahaman', '2022-09-01', '2022-09-11', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `student_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `course` varchar(50) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`student_id`, `name`, `course`, `dept_name`) VALUES
(1, 'Saidur', 'BSc', 'CSE'),
(2, 'Rahaman', 'M.Sc.', 'CSE'),
(3, 'Yasin', 'B.Sc.', 'EEE'),
(4, 'Arafat', 'BSS(Hon\'s)', 'SOCIOLOGY');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `contact`) VALUES
(211, 'sai', '12345', 'sai@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books_details`
--
ALTER TABLE `books_details`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `issue_book_details`
--
ALTER TABLE `issue_book_details`
  ADD PRIMARY KEY (`issue_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books_details`
--
ALTER TABLE `books_details`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `issue_book_details`
--
ALTER TABLE `issue_book_details`
  MODIFY `issue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issue_book_details`
--
ALTER TABLE `issue_book_details`
  ADD CONSTRAINT `issue_book_details_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books_details` (`book_id`),
  ADD CONSTRAINT `issue_book_details_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student_details` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
