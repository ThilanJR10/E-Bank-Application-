-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2017 at 08:50 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebank`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminemployee`
--

CREATE TABLE `adminemployee` (
  `userName` varchar(20) NOT NULL,
  `passWord` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminemployee`
--

INSERT INTO `adminemployee` (`userName`, `passWord`) VALUES
('jehan', '4545');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` varchar(25) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `acntType` varchar(20) NOT NULL,
  `acntNmb` int(11) NOT NULL,
  `sortCode` varchar(20) NOT NULL,
  `balance` double NOT NULL,
  `card` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `dob`, `address`, `mobile`, `email`, `acntType`, `acntNmb`, `sortCode`, `balance`, `card`) VALUES
('ramzan', '1/1/2000', '56/Lotus road,Negombo.', 1234567890, '89', 'current', 89, '8989', 99.5, '89'),
('Sachintha Ayeshan', '23/02/1996', '56, Sellakanda road, Negombo', 777052773, 'sachiya99@gmail.com', 'savings', 1231247, 'w35786546', 245643, '546464'),
('Ayaa Nazar', '26/11/1996', '56, Beach road, Negombo', 757052456, 'mohoayaas99@gmail.com', 'current', 1245667, 'w356746', 3674443, '356434');

-- --------------------------------------------------------

--
-- Table structure for table `employeedata`
--

CREATE TABLE `employeedata` (
  `name` varchar(30) NOT NULL,
  `position` varchar(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedata`
--

INSERT INTO `employeedata` (`name`, `position`, `userName`, `password`) VALUES
('Shaheedha Jehan', 'Principal', 'Jehan', 'ramzan1'),
('Ramzan Dieze', 'YYYYY', 'Rama', '12345'),
('test', 'test', 'test', '6789');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `empType` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userName`, `password`, `empType`) VALUES
('555555555', '5555555555', 'M'),
('Ramzan', '123', 'A'),
('Sachintha', '678', 'M'),
('test', '6789', 'M');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminemployee`
--
ALTER TABLE `adminemployee`
  ADD PRIMARY KEY (`userName`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`acntNmb`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `employeedata`
--
ALTER TABLE `employeedata`
  ADD PRIMARY KEY (`userName`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userName`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
