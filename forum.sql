-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2018 at 02:02 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `review` varchar(100) NOT NULL,
  `rating` int(5) NOT NULL,
  `hint` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `review`, `rating`, `hint`) VALUES
('pratik', 'vu@fg', 'vuhType herghe', 4, 'Type hereui');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `gender` text NOT NULL,
  `phoneno` int(12) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` text NOT NULL,
  `job` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`fname`, `lname`, `gender`, `phoneno`, `address`, `city`, `state`, `job`) VALUES
('', '', '', 0, '', '', '', ''),
('', '', '', 0, '', '', '', ''),
('dfghj', 'vhbj', 'rdftgyhuji', 7852189, 'kjhgfvbju', 'fghuytf', 'ghjuyt', 'gfghjuy'),
('abha', 'bisen', 'female', 987654321, 'kabir nagar', 'raipur', 'cg', 'intern');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `passwd` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`name`, `email`, `passwd`) VALUES
('pratik', 'abc@123.com', 'a'),
('Pratik', 'abc@we', 'a'),
('Ritika', 'r@g', '1'),
('Anil', 'ab@c', '2'),
('ANIL', 'A@h', 'l'),
('Ritika', 'a@com', '1'),
('huma', 'huma@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `name` text NOT NULL,
  `lname` text NOT NULL,
  `location` varchar(20) NOT NULL,
  `jobf` varchar(10) NOT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`name`, `lname`, `location`, `jobf`, `phone`, `email`, `message`) VALUES
('', '', 'korba', 'engg', 78956256, 'p@com', 'want to change'),
('pratik', 'mahobia', 'korba', 'engg', 78956256, 'PRATIK@GMAIL.COM', 'sf');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
