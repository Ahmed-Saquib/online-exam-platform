-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2019 at 04:25 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(5, 'abcd', 'abcd123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT '0',
  `ans` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(168, 1, 1, 'A. Collection of interrelated data'),
(169, 1, 0, 'B. Collection of programs to access data'),
(170, 1, 0, 'C. Collection of data describing one particular enterprise'),
(171, 1, 0, ' D. All of the above'),
(172, 2, 0, ' A. Physical Level'),
(173, 2, 1, 'B. Critical Level'),
(174, 2, 0, 'C. Logical Level'),
(175, 2, 0, ' D. View Level'),
(176, 3, 0, ' A. Physical Level'),
(177, 3, 1, 'B. Critical Level'),
(178, 3, 0, 'C. Logical Level'),
(179, 3, 0, ' D. View Level'),
(180, 4, 0, 'A.ronaldo'),
(181, 4, 1, 'B.messi'),
(182, 4, 0, 'C.pele'),
(183, 4, 0, 'D.maradona'),
(184, 5, 1, 'A. Entity sets'),
(185, 5, 0, ' B. Attributes'),
(186, 5, 0, ' C. Database'),
(187, 5, 0, ' D. Tables'),
(188, 6, 0, ' A. Transaction Manager'),
(189, 6, 1, 'B. Logical Manager'),
(190, 6, 0, 'C. Buffer Manager'),
(191, 6, 0, ' D. File Manager'),
(192, 7, 0, ' A. Retrieval of information stored in database'),
(193, 7, 0, ' B. Insertion of new information into the database'),
(194, 7, 0, ' C. Deletion of information from the database'),
(195, 7, 1, 'D. All of the above'),
(196, 8, 0, 'Database Schema'),
(197, 8, 0, ' B. Physical Schema'),
(198, 8, 1, 'C. Critical Schema'),
(199, 8, 0, ' D. Logical Schema'),
(200, 9, 0, ' A. Data Definition Language'),
(201, 9, 0, ' B. Data Manipulation Language'),
(202, 9, 0, ' C. Query Language'),
(203, 9, 1, 'D. All of the above'),
(204, 10, 0, ' A. Entity-Relationship model'),
(205, 10, 0, ' B. Relational data model'),
(206, 10, 0, ' C. Object-Based data model'),
(207, 10, 1, 'D. All of the above'),
(208, 11, 1, 'Hyper Text Markup Language'),
(209, 11, 0, 'Hyper text programing Language'),
(210, 11, 0, 'hyper text machine language'),
(211, 11, 0, 'hyper text mother language');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE `tbl_ques` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(50, 1, 'A Database Management System (DBMS) is'),
(51, 2, 'Which of the following is not a level of data abstraction?'),
(52, 3, 'Which of the following is not a level of data abstraction?'),
(53, 4, 'Who is best player of all time?'),
(54, 5, 'In an Entity-Relationship Diagram Rectangles represents'),
(55, 6, 'Which of the following is not a Storage Manager Component?'),
(56, 7, 'Data Manipulation Language enables users to'),
(57, 8, 'Which of the following is not an Schema?'),
(58, 9, ' Which of the following is Database Language?'),
(59, 10, 'Which of the following is a Data Model?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
(9, 'akashh', 'akash123', 'c8837b23ff8aaa8a2dde915473ce0991', 'akash.uri@gmail.com', 0),
(12, 'Ahmed Saquib', 'Sakib123', 'bf8f6bea8fdfd338c8f91d8d5ae3bfd5', 'ahm.saquib@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
