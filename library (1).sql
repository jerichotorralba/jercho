-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 10:07 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`, `pic`) VALUES
(3, 'admin', 'admin', 'admin', 'admin', 'admin', '001100110', 'thinking.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `name`, `author`, `edition`, `status`, `quantity`) VALUES
(1, 'Information Technology', 'test', '1st', 'Available', 2),
(2022, 'Capstone ', 'test', '2nd', 'Available', 2),
(2, 'sample', 'sample', '2nd', 'Available', 3),
(3, 'test', 'test', 'test', 'test', 3),
(4, 'testing ', 'testing', 'testing', 'testing', 1),
(5, 'testing', 'testing', 'testing', 'testing', 1),
(6, 'testing', 'testing', 'testing', 'testing', 6),
(7, 'testing', 'testing', 'testing', 'testing', 7),
(8, 'testing', 'testing', '1st', 'Available', 2);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`) VALUES
(49, 'Admin', 'Hi ! Good Day! Welcome to Public Library Management System, What can i Help You !'),
(51, 'Admin', 'hi'),
(52, 'user', 'hellow');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `approve` varchar(100) NOT NULL,
  `issue` varchar(100) NOT NULL,
  `return` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`username`, `bid`, `approve`, `issue`, `return`) VALUES
('user', 2022, '<p style=\"color:yellow; background-color:red;\">EXPIRED</p>', '04-22-2022', '04-23-2022'),
('test', 2, '<p style=\"color:yellow; background-color:red;\">EXPIRED</p>', '05-12-2022', '05-13-2022'),
('user', 8, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '05-13-2022', '05-14-2022'),
('user', 2, '<p style=\"color:yellow; background-color:red;\">EXPIRED</p>', '05-13-2022', '05-15-2022');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `firstName` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `birth` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`firstName`, `lastname`, `username`, `password`, `email`, `contact`, `address`, `birth`, `gender`) VALUES
('user', 'user', 'user', 'user', 'user@gmail.com', '09268930708', 'purok 3 tugawe dauin negros oriental', '1998-08-27', 'male'),
('test', 'test', 'test', 'test', 'test@gmail.com', '090227212', 'Tugawe', '1998-08-27', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
