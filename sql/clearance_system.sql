-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 10:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clearance_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` int(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `dt`) VALUES
(1, 0, 'admin1234', '2022-09-25 19:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `faculty`, `dt`) VALUES
(1, 'Computer Science', 'Applied Science', '2022-09-25 19:48:37'),
(2, 'Food Technology', 'Applied Science', '2022-09-25 19:48:48'),
(3, 'Agric Technology', 'Engineering', '2022-09-25 19:48:53');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `name`, `faculty`, `department`, `level`, `dt`) VALUES
(1, 'Final Year Project', 'Applied Science', 'Computer Science', 'HND2', '2022-09-25 19:59:15'),
(2, 'SUG fee', 'Applied Science', 'Computer Science', 'HND2', '2022-09-25 19:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `faculty_name` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `faculty_name`, `dt`) VALUES
(1, 'Applied Science', '2022-09-25 19:48:21'),
(2, 'Engineering', '2022-09-25 19:48:25'),
(3, 'Taxation', '2022-09-25 19:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `name`, `amount`, `faculty`, `department`, `level`, `dt`) VALUES
(1, 'Library Fee', '1000', 'Applied Science', 'Computer Science', 'HND2', '2022-09-25 19:58:32'),
(2, 'School Fee', '2000', 'Applied Science', 'Computer Science', 'HND2', '2022-09-25 19:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `name`, `department`, `dt`) VALUES
(1, 'HND2', 'Computer Science', '2022-09-25 19:49:06'),
(2, 'ND1', 'Computer Science', '2022-09-25 19:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `fee_id` int(11) NOT NULL,
  `matric_no` varchar(255) NOT NULL,
  `fee_name` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `fee_id`, `matric_no`, `fee_name`, `amount`, `student_name`, `dt`) VALUES
(1, 2, 'H/CS/20/0000', 'School Fee', '2000', 'Tunde Shola', '2022-09-25 19:59:47'),
(2, 2, 'H/CS/20/2323', 'School Fee', '2000', 'samuel joseph', '2022-11-04 09:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session_name` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session_name`, `dt`) VALUES
(2, '2021/2022', '2022-09-25 19:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `matric_no` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `matric_no`, `faculty`, `department`, `level`, `password`, `dt`) VALUES
(1, 'Tunde Shola', 'H/CS/20/0000', 'Applied Science', 'Computer Science', 'HND2', '$2y$10$RtH7hpnhwWDJBzqYu7U06utv03ZeW6Tmnei6rlGHbG4A3SQHZ9uk6', '2022-09-25 19:49:39'),
(2, 'samuel joseph', 'H/CS/20/2323', 'Applied Science', 'Computer Science', 'HND2', '$2y$10$npX1AWjFQVIXai1HSfst8uHO1dMAFlXk6sZuoAKWtSfsHH9eThQRi', '2022-11-04 09:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `upload_document`
--

CREATE TABLE `upload_document` (
  `id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `matric_no` varchar(255) NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `document_file` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload_document`
--

INSERT INTO `upload_document` (`id`, `document_id`, `matric_no`, `document_name`, `document_file`, `student_name`, `status`, `dt`) VALUES
(1, 2, 'H/CS/20/0000', 'SUG fee', 'about1.jpg', 'Tunde Shola', 'approved', '2022-09-25 20:00:28'),
(2, 2, 'H/CS/20/2323', 'SUG fee', 'Screenshot (17).png', 'samuel joseph', 'pending', '2022-11-04 09:20:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_document`
--
ALTER TABLE `upload_document`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upload_document`
--
ALTER TABLE `upload_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
