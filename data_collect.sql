-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 06:27 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_collect`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `pass`) VALUES
(1, 'maxwellsarpong07@gmail.com', 'bigmax@9');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(255) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`) VALUES
(1, 'Sex'),
(2, 'Age'),
(3, 'Level of schooling'),
(4, 'Marital Status'),
(5, 'Religious Affiliations'),
(6, 'What is your employment status'),
(7, 'On the average, how much do you earn per month?'),
(8, 'Do you know of NHIS?'),
(9, 'How did you get to know of NHIS'),
(10, 'Do you know where the nearest NHIS registration centre is?'),
(11, 'How long will it take (in minutes) to get covered under health insurance scheme?'),
(12, 'Have you ever been registered or covered under health insuarance scheme'),
(13, 'What is the main reason for not registering? '),
(14, 'Are you still an active NHIS subscriber?'),
(15, 'What is the main reason why you have not renewed your membership? '),
(16, 'Have you benefited from NHIS before?'),
(17, 'Are you a new subscriber who have not renewed menbershp before?'),
(18, 'How long have you been a member of the scheme? '),
(19, 'What is your NHIS status?'),
(20, 'Do you consider the premium to be cheap, moderate or expensive?'),
(21, 'With respect to the most recent illness, what kind of disease were you suffering from? '),
(22, 'How do you consider the severity of your most recent sickness?'),
(23, 'Did you attempt to treat your illness?'),
(24, 'How many days after the onset of the disease symptoms did you get care from a provider? '),
(25, 'Where did you seek treatment?'),
(26, 'Was the facility visited the nearest?'),
(27, 'What means of transport did you use?'),
(28, 'How long did it take (in minutes) to get to the nearest formal health sector? '),
(29, 'Is that facility a formal healthcare facility?'),
(30, 'How long will it take (in minutes) to get to the nearest formal healthcare? '),
(31, 'Did you pay for transport?'),
(32, 'How much did you pay? '),
(33, 'How long did you wait to receive treatment at the facility? '),
(34, 'Did you pay cash to receive treatment?'),
(35, 'How much did you pay? '),
(36, 'Was the amount paid cheap, moderate or expensive?');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `First_Name` varchar(250) NOT NULL,
  `Last_Name` varchar(250) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `First_Name`, `Last_Name`, `Phone`, `Email`, `Password`) VALUES
(1, 'Maxwell', 'Sarpong', 208502588, 'maxwellsarpong07@gmail.com', 'bigmax@9'),
(2, 'Micheal', 'Gyimah', 249908178, 'maxwellsarpong@gmail.com', 'big'),
(3, 'William', 'Danquah', 208502588, 'kelvin@gmail.com', 'kelvin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
