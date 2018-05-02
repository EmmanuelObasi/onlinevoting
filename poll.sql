-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2018 at 12:15 AM
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
-- Database: `poll`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbadministrators`
--

CREATE TABLE `tbadministrators` (
  `admin_id` int(5) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbadministrators`
--

INSERT INTO `tbadministrators` (`admin_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Emmamuel ', 'Obasi', '1509234@rgu.ac.uk', '9634b22a2fa0a9b70efa80bb1d1754b9');

-- --------------------------------------------------------

--
-- Table structure for table `tbcandidates`
--

CREATE TABLE `tbcandidates` (
  `candidate_id` int(5) NOT NULL,
  `candidate_name` varchar(45) NOT NULL,
  `candidate_position` varchar(45) NOT NULL,
  `candidate_cvotes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbcandidates`
--

INSERT INTO `tbcandidates` (`candidate_id`, `candidate_name`, `candidate_position`, `candidate_cvotes`) VALUES
(32, 'Michael Ife', 'President-(Communication', 11),
(33, 'Graham Hunter ', 'President-(Communication', 10),
(35, 'Kerry Harrison', 'President-(Education', 3),
(36, 'Blessing Brown', 'President-(Education', 1),
(37, 'Eilidh Paterson', 'President-(Sport', 1),
(40, 'Mathew Tindale ', 'President-(Sport', 2),
(42, 'Gonzalo Lara De Leyva', 'Vice-President-(Environment', 0),
(43, 'Blessing Brown', 'Vice-President-(Environment', 1),
(44, 'Michael Apiah', 'Vice-President-(International)', 0),
(45, 'Suleiman Mamman', 'Vice-President-(International)', 2),
(46, 'Austine Nwana', 'Chancellor', 1),
(47, 'Femi Matins', 'Chancellor', 2),
(48, 'Martha Gilmore', 'Vice-President-(Societies)', 0),
(49, 'Nancy Jones ', 'Vice-President-(Societies)', 0),
(50, 'Mustapha Haji', 'Vice-President-(Sport)', 0),
(51, 'Williams Karlson', 'Vice-President-(Sport)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbmembers`
--

CREATE TABLE `tbmembers` (
  `member_id` int(5) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbmembers`
--

INSERT INTO `tbmembers` (`member_id`, `first_name`, `last_name`, `email`, `password`, `image`) VALUES
(8, 'John', 'Ibe', 'authentic.emmy@yahoo.com', 'f75cfad35ff4031e79fc10aa9fa847e0', ''),
(9, 'Fella', 'Kuti', 'fella@yahoo.com', '630793a76f7f864fe9e85ae193eba76f', ''),
(11, 'Blessing', 'Okafor', 'Okafor@yahoo.com', 'c9fdf6877d16b598d2c79a5653f97d4d', ''),
(17, 'Igene', 'John', 'igenejohn@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(20, 'Grace ', 'John', '123@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(23, 'Susan', 'Obi', 'obi@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(24, 'Emeka', 'Obi', 'emeka@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(25, 'Austin', 'Brown', '1234@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(26, 'Emeka', 'Obi', 'emeka@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(33, 'Oba', 'Brown', 'oba@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(36, 'Grace ', 'John', '123@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(37, 'Eden', 'Hazard', 'eden@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(38, 'Eden', 'Hazard', 'eden@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(39, 'Mark', 'Simon', 'simon@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(41, 'Mikel', 'Obi', 'obi1@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(42, 'Mandy', 'San', 'San@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(43, 'Larence', 'Jamas', 'jam@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(44, 'Matins', 'Oke', 'oke@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(46, 'Agatha', 'chi', 'chi@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(47, 'mark ', 'Mark', '1234@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(48, 'Agatha', 'chi', 'chi@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(49, 'Mandy', 'James', '12@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(50, 'Mandy', 'James', '12@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(53, 'Blessing', 'Emma', 'emma@yahoo.com', '202cb962ac59075b964b07152d234b70', ''),
(58, 'Vivick', 'Johnson', 'jon@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(60, 'Janet', 'Brown', 'jan@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(61, 'Agatha', 'igene', 'ag@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(63, 'Jojo', 'Jo', 'authentic.emmy@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(64, 'Jojo', 'Jo', 'authentic.emmy@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(70, 'Josphine', 'Emeka', '123@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(71, 'Mac', 'Cyjee', 'jee@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(72, 'Agatha', 'Cyjee', 'authentic.emmy@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(73, 'Agatha', 'Emma', 'authentic.emmy@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(74, 'kk', 'Kendal', 'kk@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(75, 'Nancy', 'Joy', 'joy@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(76, 'Nancy', 'Joy', 'joy@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(77, 'Omolayo', 'P', 'p@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(78, 'Ife', 'Oluwa', 'ife@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(79, 'Prince', 'Ade', 'ade@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(80, 'Prince', 'Ade', 'ade@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(81, 'Prince', 'Ade', 'ade@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(82, 'Naomi', 'Mark', 'na@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(83, 'Naomi', 'Mark', 'na@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(84, 'Ronaldo', 'Messi', 'ro@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(85, 'emmy', 'Jan', 'jan@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbpositions`
--

CREATE TABLE `tbpositions` (
  `position_id` int(5) NOT NULL,
  `position_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpositions`
--

INSERT INTO `tbpositions` (`position_id`, `position_name`) VALUES
(1, 'President-(Communication & Democracy)'),
(2, 'President-(Education & Welfare)'),
(3, 'President-(Sport & Physical Activity)'),
(4, 'Chancellor'),
(5, 'Vice-President-(Entertainment & Events)'),
(6, 'Vice-President-(Environment & Ethics)'),
(7, 'Vice-President-(International)'),
(8, 'Vice-President-(Societies)'),
(9, 'Vice-President-(Sport)'),
(10, 'Vice-President-(Wellbeing & Equal Opportuniti'),
(29, 'President-(Communication & Democracy)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbadministrators`
--
ALTER TABLE `tbadministrators`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbcandidates`
--
ALTER TABLE `tbcandidates`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `tbmembers`
--
ALTER TABLE `tbmembers`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbpositions`
--
ALTER TABLE `tbpositions`
  ADD PRIMARY KEY (`position_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbadministrators`
--
ALTER TABLE `tbadministrators`
  MODIFY `admin_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbcandidates`
--
ALTER TABLE `tbcandidates`
  MODIFY `candidate_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbmembers`
--
ALTER TABLE `tbmembers`
  MODIFY `member_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbpositions`
--
ALTER TABLE `tbpositions`
  MODIFY `position_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
