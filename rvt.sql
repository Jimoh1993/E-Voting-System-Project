-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2014 at 07:05 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rvt`
--

-- --------------------------------------------------------

--
-- Table structure for table `academiclevels`
--

CREATE TABLE IF NOT EXISTS `academiclevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reallevels` varchar(10) NOT NULL,
  `contesting` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `academiclevels`
--

INSERT INTO `academiclevels` (`id`, `reallevels`, `contesting`) VALUES
(2, 'ND2', 1),
(4, 'HND2', 1),
(5, 'HND3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminreg_tab`
--

CREATE TABLE IF NOT EXISTS `adminreg_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activeness` int(11) NOT NULL,
  `photo` varchar(83) NOT NULL,
  `fullname` text NOT NULL,
  `faculty` text NOT NULL,
  `department` text NOT NULL,
  `level` varchar(6) NOT NULL,
  `rank` varchar(10) NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `cell` varchar(15) NOT NULL,
  `hid` int(11) NOT NULL,
  `block` int(11) NOT NULL,
  `qs` text NOT NULL,
  `ase` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `adminreg_tab`
--

INSERT INTO `adminreg_tab` (`id`, `activeness`, `photo`, `fullname`, `faculty`, `department`, `level`, `rank`, `password`, `email`, `cell`, `hid`, `block`, `qs`, `ase`) VALUES
(14, 1, '1415681056IMG_20131202_072233.jpg', 'Akindutire Timileyin Samuel', 'APPLIED SCIENCE', 'Computer Science', 'ND2', 'Chairman', '3ac75a6d60271efab41eb1747d172619', 'akins@gmail.com', '08107926083', 0, 0, 'Country You Love Most', 'NIGERIA'),
(15, 0, '1415682042IMG_20131217_133638.jpg', 'Akinbuluma Juliet Grace', 'SCHOOL OF BUSINESS', 'Accountancy', 'HND2', 'Pro', '5b7469905a5d0b934bea241ce552b9e2', 'jul@gmail.com', '081443545554', 0, 0, 'What Is Your Best Food', 'BEANS'),
(16, 0, '14157391361 (7).jpg', 'Olatujoye Daniel Skiripari', 'APPLIED SCIENCE', 'Computer Science', 'ND2', 'Chairman', '3ac75a6d60271efab41eb1747d172619', 'alabama@gmail.com', '0814435455', 0, 0, 'What Is Your Best Food', 'RICE'),
(17, 1, '1415741641IMG_20140717_211815.jpg', 'Laide Sayo Tope', 'APPLIED SCIENCE', 'Computer Science', 'ND2', 'Member', 'eedc939024b27d0522b1d45a9b5bb3bb', 'olu@gmail.com', '08107826468', 0, 0, 'What Is Your Best Food', 'RICE');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE IF NOT EXISTS `alumni` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `electorallevel_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `petname` text NOT NULL,
  `description` text NOT NULL,
  `votes` bigint(20) NOT NULL,
  `photo` text NOT NULL,
  `ref` varchar(20) NOT NULL,
  `vc` varchar(4) NOT NULL,
  `post_name` text NOT NULL,
  `fac` text NOT NULL,
  `dept` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `post_id`, `electorallevel_id`, `program_id`, `name`, `petname`, `description`, `votes`, `photo`, `ref`, `vc`, `post_name`, `fac`, `dept`) VALUES
(1, 1, 1, 1, 'Akindutire ayomide samuel', 'Sir Kay2k15', 'Nice', 0, '1410490973IMG_20140710_115815.jpg', 'SO5/COM/2012/516', '2014', 'President', 'Applied Science', 'Computer science');

-- --------------------------------------------------------

--
-- Table structure for table `cad_post`
--

CREATE TABLE IF NOT EXISTS `cad_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `electorallevel_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `petname` text NOT NULL,
  `description` text NOT NULL,
  `votes` int(20) NOT NULL,
  `photo` text NOT NULL,
  `ref` varchar(20) NOT NULL,
  `vc` varchar(4) NOT NULL,
  `post_name` text NOT NULL,
  `fac` text NOT NULL,
  `dept` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cad_post`
--

INSERT INTO `cad_post` (`id`, `post_id`, `electorallevel_id`, `program_id`, `name`, `petname`, `description`, `votes`, `photo`, `ref`, `vc`, `post_name`, `fac`, `dept`) VALUES
(1, 1, 1, 1, 'Dotman Graphite', 'Adebisi2k14', 'Ruu', 2, '141359189662144_399396086847303_658717517_n.jpg', 'SO5/COM/2012/824', '2014', 'President', 'APPLIED SCIENCE', 'Computer Science'),
(2, 2, 2, 1, 'Titus Bingo', 'Ay2k12', 'GGG', 3, '1413592012426201_170125523106055_1572849606_n.jpg', 'SO5/COM/2012/827', '2014', 'Sport Director', 'APPLIED SCIENCE', 'Computer Science'),
(3, 16, 1, 1, 'Omiwale Joseph J.', 'Coolest2k14', 'Fff', 2, '1413592074263566_10150227096707253_2511550_n.jpg', 'SO5/COM/2012/520', '2014', 'Welfare Director', 'Applied Science', 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `cad_ref_tab`
--

CREATE TABLE IF NOT EXISTS `cad_ref_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cad_id` varchar(45) NOT NULL,
  `s_id` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `ph` varchar(100) NOT NULL,
  `pt` varchar(45) NOT NULL,
  `e` int(11) NOT NULL,
  `p` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fac_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `election_relative` int(11) NOT NULL,
  `dept_name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `fac_id`, `program_id`, `election_relative`, `dept_name`) VALUES
(1, 1, 1, 3, 'Computer Science'),
(2, 1, 1, 3, 'Nutrition And Diatectics'),
(3, 1, 1, 3, 'Food Science Technology'),
(4, 1, 1, 3, 'Mathematics And Statistics'),
(5, 1, 1, 3, 'Hospital Management Technology'),
(6, 3, 2, 4, 'Business Administration Management'),
(7, 3, 2, 4, 'Accountancy'),
(8, 3, 2, 4, 'Banking And Finance'),
(9, 3, 2, 4, 'Computer Science'),
(10, 3, 2, 4, 'Nutrition And Diatectics'),
(11, 3, 2, 4, 'Public Administration(PAD)'),
(12, 3, 2, 4, 'Mechanical Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `edu_pro`
--

CREATE TABLE IF NOT EXISTS `edu_pro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr` varchar(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `edu_pro`
--

INSERT INTO `edu_pro` (`id`, `pr`) VALUES
(1, 'FT'),
(2, 'PT');

-- --------------------------------------------------------

--
-- Table structure for table `electionlevels`
--

CREATE TABLE IF NOT EXISTS `electionlevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(11) NOT NULL,
  `sublevel` text NOT NULL,
  `lockoption` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `electionlevels`
--

INSERT INTO `electionlevels` (`id`, `program_id`, `sublevel`, `lockoption`) VALUES
(1, 1, 'SUG', 1),
(2, 1, 'FACULTY', 1),
(3, 1, 'DEPARTMENTAL', 0),
(4, 2, 'DEPARTMENTAL', 0),
(5, 2, 'PTSA', 0),
(6, 2, 'FACULTY', 0),
(7, 3, 'enactus home', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eligiblevoters`
--

CREATE TABLE IF NOT EXISTS `eligiblevoters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fac_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `department` text NOT NULL,
  `faculty` text NOT NULL,
  `level` varchar(8) NOT NULL,
  `photo` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE IF NOT EXISTS `faculties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(11) NOT NULL,
  `election_relative` int(11) NOT NULL,
  `faculty` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `program_id`, `election_relative`, `faculty`) VALUES
(1, 1, 2, 'APPLIED SCIENCE'),
(3, 2, 0, 'CEC (CONTINOUS EDUCATION COUNCIL)'),
(4, 1, 2, 'SCHOOL OF BUSINESS'),
(5, 1, 2, 'SOCIAL SCIENCE'),
(23, 1, 2, 'ENVIRONMENTAL'),
(24, 1, 2, 'ENGINEERING');

-- --------------------------------------------------------

--
-- Table structure for table `inec_rank`
--

CREATE TABLE IF NOT EXISTS `inec_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ranks` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `inec_rank`
--

INSERT INTO `inec_rank` (`id`, `ranks`) VALUES
(1, 'Chairman'),
(2, 'Pro'),
(7, 'Secretary'),
(8, 'Auditor');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE IF NOT EXISTS `logo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` text NOT NULL,
  `usage` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `logo`, `usage`) VALUES
(13, '1404462463logo.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_tab`
--

CREATE TABLE IF NOT EXISTS `master_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fac_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `department` text NOT NULL,
  `faculty` text NOT NULL,
  `level` varchar(8) NOT NULL,
  `program` text NOT NULL,
  `photo` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mat_reg`
--

CREATE TABLE IF NOT EXISTS `mat_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mat` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mat_regi`
--

CREATE TABLE IF NOT EXISTS `mat_regi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mat` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `mat_regi`
--

INSERT INTO `mat_regi` (`id`, `mat`) VALUES
(1, 'SO5/FST/2012/581'),
(2, 'SO5/COM/2012/528'),
(3, 'SO5/MAC/2012/1281'),
(4, 'SO6/EET/2012/771'),
(5, 'SO5/COM/2012/557'),
(6, 'SO1/BFN/2012/2805'),
(7, 'SO3/ARC/2012/721'),
(8, 'SO6/MEC/2012/404'),
(9, 'SO5/MAC/2012/528'),
(10, 'SO1/BFN/2012/2687'),
(11, 'SO1/BFN/2012/3103'),
(12, 'SO6/CTE/2012/409'),
(13, 'SO1/BFN/2012/2895'),
(14, 'SO3/EST/2012/612'),
(15, 'SO6/EET/2012/784'),
(16, 'SO6/EET/2012/760'),
(17, 'SO6/EET/2012/759'),
(18, 'SO5/COM/2012/462'),
(19, 'SO5/COM/2012/537'),
(20, 'SO5/COM/2012/490'),
(21, 'SO6/EET/2012/762'),
(22, 'SO3/EST/2012/610'),
(23, 'SO5/COM/2012/509'),
(24, 'SO5/MAC/2012/1147'),
(25, 'SO5/COM/2012/542'),
(26, 'SO5/COM/2012/600'),
(27, 'SO5/COM/2012/891'),
(28, 'SO5/COM/2012/825'),
(29, 'SO5/COM/2012/815'),
(30, 'SO5/COM/2012/817'),
(31, 'SO5/COM/2012/789'),
(32, 'SO5/COM/2012/873'),
(33, 'SO5/COM/2012/807'),
(34, 'SO5/COM/2012/853'),
(35, 'SO5/COM/2012/791'),
(36, 'SO5/COM/2012/806'),
(37, 'SO5/COM/2012/831'),
(38, 'SO5/COM/2012/838'),
(39, 'SO5/COM/2012/871'),
(40, 'SO5/COM/2012/843'),
(41, 'SO5/COM/2012/824'),
(42, 'SO5/COM/2012/827'),
(43, 'SO5/COM/2012/520');

-- --------------------------------------------------------

--
-- Table structure for table `messageboard`
--

CREATE TABLE IF NOT EXISTS `messageboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myinbox` int(11) NOT NULL,
  `fromi` int(11) NOT NULL,
  `toi` int(11) NOT NULL,
  `message` text NOT NULL,
  `time` varchar(20) NOT NULL,
  `status` text NOT NULL,
  `personality` int(11) NOT NULL,
  `xpersonality` int(11) NOT NULL,
  `mthday` varchar(15) NOT NULL,
  `hmsa` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `messageboard`
--

INSERT INTO `messageboard` (`id`, `myinbox`, `fromi`, `toi`, `message`, `time`, `status`, `personality`, `xpersonality`, `mthday`, `hmsa`) VALUES
(1, 15, 15, 14, 'Can u see my message', '2014 11 11 21 06 29 ', 'read', 15, 14, 'Nov 11', '09:06 pm'),
(2, 14, 15, 14, 'Can u see my message', '2014 11 11 21 06 29 ', 'read', 15, 14, 'Nov 11', '09:06 pm'),
(3, 15, 15, 14, 'Hey', '2014 11 11 21 06 44 ', 'read', 15, 14, 'Nov 11', '09:06 pm'),
(4, 14, 15, 14, 'Hey', '2014 11 11 21 06 44 ', 'read', 15, 14, 'Nov 11', '09:06 pm'),
(5, 14, 14, 15, 'yap', '2014 11 11 21 16 36 ', 'read', 14, 15, 'Nov 11', '09:16 pm'),
(6, 15, 14, 15, 'yap', '2014 11 11 21 16 36 ', 'read', 14, 15, 'Nov 11', '09:16 pm'),
(7, 15, 15, 14, 'wow', '2014 11 11 21 17 22 ', 'read', 15, 14, 'Nov 11', '09:17 pm'),
(8, 14, 15, 14, 'wow', '2014 11 11 21 17 22 ', 'read', 15, 14, 'Nov 11', '09:17 pm'),
(9, 15, 15, 14, 'Yeap', '2014 11 11 21 21 54 ', 'read', 15, 14, 'Nov 11', '09:21 pm'),
(10, 14, 15, 14, 'Yeap', '2014 11 11 21 21 54 ', 'read', 15, 14, 'Nov 11', '09:21 pm'),
(11, 15, 15, 14, 'wewe', '2014 11 11 21 23 41 ', 'read', 15, 14, 'Nov 11', '09:23 pm'),
(12, 14, 15, 14, 'wewe', '2014 11 11 21 23 41 ', 'read', 15, 14, 'Nov 11', '09:23 pm'),
(14, 15, 14, 15, 'hey', '2014 11 11 21 49 24 ', 'read', 14, 15, 'Nov 11', '09:49 pm'),
(15, 14, 14, 15, 'wad up', '2014 11 11 21 49 37 ', 'read', 14, 15, 'Nov 11', '09:49 pm'),
(16, 15, 14, 15, 'wad up', '2014 11 11 21 49 37 ', 'read', 14, 15, 'Nov 11', '09:49 pm'),
(17, 15, 15, 14, 'yes i saw it', '2014 11 11 21 50 18 ', 'read', 15, 14, 'Nov 11', '09:50 pm'),
(18, 14, 15, 14, 'yes i saw it', '2014 11 11 21 50 18 ', 'read', 15, 14, 'Nov 11', '09:50 pm'),
(19, 16, 16, 15, 'hello', '2014 11 11 21 55 56 ', 'read', 16, 15, 'Nov 11', '09:55 pm'),
(20, 15, 16, 15, 'hello', '2014 11 11 21 55 56 ', 'noterd', 16, 15, 'Nov 11', '09:55 pm'),
(21, 16, 16, 14, 'yes oo', '2014 11 11 21 56 04 ', 'read', 16, 14, 'Nov 11', '09:56 pm'),
(22, 14, 16, 14, 'yes oo', '2014 11 11 21 56 04 ', 'read', 16, 14, 'Nov 11', '09:56 pm'),
(23, 14, 14, 16, 'Hello', '2014 11 11 22 09 03 ', 'read', 14, 16, 'Nov 11', '10:09 pm'),
(24, 16, 14, 16, 'Hello', '2014 11 11 22 09 03 ', 'noterd', 14, 16, 'Nov 11', '10:09 pm'),
(25, 17, 17, 14, 'I am New to this forum', '2014 11 11 22 35 29 ', 'read', 17, 14, 'Nov 11', '10:35 pm'),
(26, 14, 17, 14, 'I am New to this forum', '2014 11 11 22 35 29 ', 'read', 17, 14, 'Nov 11', '10:35 pm'),
(28, 17, 14, 17, 'No problem\r\n', '2014 11 12 19 13 02 ', 'noterd', 14, 17, 'Nov 12', '07:13 pm'),
(29, 14, 14, 17, 'hey', '2014 11 12 19 13 13 ', 'read', 14, 17, 'Nov 12', '07:13 pm'),
(30, 17, 14, 17, 'hey', '2014 11 12 19 13 13 ', 'noterd', 14, 17, 'Nov 12', '07:13 pm'),
(31, 14, 14, 17, 'hello', '2014 11 12 19 36 29 ', 'read', 14, 17, 'Nov 12', '07:36 pm'),
(32, 17, 14, 17, 'hello', '2014 11 12 19 36 29 ', 'noterd', 14, 17, 'Nov 12', '07:36 pm'),
(34, 17, 14, 17, 'hey', '2014 11 12 19 47 53 ', 'noterd', 14, 17, 'Nov 12', '07:47 pm'),
(35, 14, 14, 17, 'Wats up baby, ao r u doing over there.', '2014 11 13 20 53 25 ', 'read', 14, 17, 'Nov 13', '08:53 pm'),
(36, 17, 14, 17, 'Wats up baby, ao r u doing over there.', '2014 11 13 20 53 25 ', 'noterd', 14, 17, 'Nov 13', '08:53 pm');

-- --------------------------------------------------------

--
-- Table structure for table `mycand_tab`
--

CREATE TABLE IF NOT EXISTS `mycand_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `election_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `posts` int(11) NOT NULL,
  `postname` varchar(50) NOT NULL,
  `visit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pins`
--

CREATE TABLE IF NOT EXISTS `pins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p` text NOT NULL,
  `hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `pins`
--

INSERT INTO `pins` (`id`, `p`, `hash`) VALUES
(1, 'desw', 'c5c283d0a76d5186c8f248d374d00a6b'),
(2, 'great', 'acaa16770db76c1ffb9cee51c3cabfcf'),
(3, 'sswe', '75d5bf40a27a72d2024e08480d1a7e48'),
(4, 'sx', '2c38b9e45cec1b324dde4e3d5b22c648'),
(5, '12sw', 'cec37c421bd932a82fcf4ec751463d5f'),
(6, 'cv', 'de3ec0aa2234aa1e3ee275bbc715c6c9'),
(7, 'abdulganiyu', '16c0ac70b2edf2d0f186810129a66116'),
(8, 'seun', 'f15117b4bc582e2b21cb2116f2d5c88d'),
(9, 'desmond', '708111aa93d5d4d2f04ae9dee4ab5cf5'),
(10, 'zx', 'e6c760b3216a51c656c5861d72d5bf62'),
(11, 'feranmi', '2b805c44a7ea238298aadc24d2788d10'),
(12, 'sunday', '787c74a2e618a696e34e025adda33ad3'),
(13, 'desm', 'a6aea726356bc3dead35c05c0ed40f05'),
(14, 'ladi', '29ef522adefacb16c1f15473ed6dfacd'),
(15, 'diamond', '75c6f03161d020201000414cd1501f9f'),
(16, 'dc', '3212f5f463edb370ff55d3c3a7a15c8f'),
(17, 'dc', '3212f5f463edb370ff55d3c3a7a15c8f'),
(18, 'dc', '3212f5f463edb370ff55d3c3a7a15c8f'),
(19, 'dc', '3212f5f463edb370ff55d3c3a7a15c8f'),
(20, 'drake', '3ac75a6d60271efab41eb1747d172619'),
(21, 'juliet', '5b7469905a5d0b934bea241ce552b9e2'),
(22, 'drake', '3ac75a6d60271efab41eb1747d172619'),
(23, 'olu', 'eedc939024b27d0522b1d45a9b5bb3bb');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `electorallevel_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `liable_level` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `name`, `electorallevel_id`, `program_id`, `liable_level`) VALUES
(1, 'President', 1, 1, 'ND2'),
(2, 'Sport Director', 2, 1, 'ND2'),
(3, 'Sport Director', 3, 1, 'ND2'),
(5, 'Financial Secretary', 1, 1, 'HND2'),
(6, 'General Secretary', 2, 1, 'ND2'),
(12, 'President', 3, 1, 'HND2'),
(13, 'Team Leader', 7, 3, 'HND1'),
(14, 'Fin Sec', 7, 3, 'HND2'),
(16, 'Welfare Director', 1, 1, 'ND2'),
(18, 'Treasurer', 1, 1, 'ND2'),
(29, 'Public Relation Officer', 2, 1, 'ND2'),
(30, 'Liberian', 2, 1, 'ND2'),
(31, 'Vice President', 2, 1, 'HND2'),
(32, 'Treasurer', 2, 1, 'HND2'),
(33, 'Welfare Director', 2, 1, 'HND2'),
(34, 'President', 2, 1, 'HND2'),
(35, 'Financial Secretary', 2, 1, 'HND2'),
(36, 'Treasurer', 3, 1, 'ND2'),
(37, 'Vice President', 3, 1, 'ND2'),
(38, 'Financial Secretary', 3, 1, 'HND2'),
(39, 'Assistant Gen. Sec.', 3, 1, 'ND2'),
(40, 'Public Relation Officer', 3, 1, 'HND2'),
(41, 'Social Director', 3, 1, 'ND2'),
(42, 'Vice President', 4, 2, 'ND2'),
(43, 'Financial Secretary', 4, 2, 'HND3'),
(44, 'Treasurer', 4, 2, 'HND3'),
(55, 'President', 4, 2, 'HND3'),
(56, 'Public Relation Officer', 4, 2, 'ND3'),
(57, 'Social Director', 4, 2, 'HND3'),
(58, 'Welfare Director', 4, 2, 'ND3'),
(59, 'Chairman', 5, 2, 'HND3'),
(60, 'Financial Secretary', 5, 2, 'HND3'),
(61, 'Welfare Director', 5, 2, 'HND3'),
(62, 'Treasurer', 5, 2, 'ND3'),
(63, 'Public Relation Officer', 5, 2, 'ND3'),
(64, 'Social Director', 5, 2, 'HND3'),
(65, 'General Secretary', 5, 2, 'HND3'),
(67, 'Treasurer', 6, 2, 'ND3'),
(68, 'Public Relation Officer', 6, 2, 'ND3'),
(69, 'Financial Secretary', 6, 2, 'ND3'),
(72, 'Assistant Gen. Sec', 6, 2, 'HND3'),
(73, 'Vice President', 6, 2, 'ND3'),
(79, 'President', 6, 2, 'ND3'),
(80, 'General Secretary', 6, 2, 'HND3'),
(81, 'Assistant Gen. Sec', 5, 2, 'HND3'),
(82, 'Assistant Gen. Sec', 1, 1, 'HND2'),
(83, 'Assistant Gen. Sec', 2, 1, 'HND2'),
(84, 'Public Rel. Officer', 1, 1, 'HND2'),
(85, 'Vice President', 1, 1, 'HND2'),
(86, 'General Secretary', 1, 1, 'HND2'),
(87, 'Director Of Socials', 1, 1, 'ND2'),
(88, 'Director Of Sports', 1, 1, 'ND2'),
(89, 'Src-ND', 1, 1, 'ND2'),
(90, 'Src-HND', 1, 1, 'HND2');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE IF NOT EXISTS `program` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `pr`) VALUES
(1, 'SUG'),
(2, 'PTSA'),
(3, 'ENACTUS');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE IF NOT EXISTS `rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `rule`) VALUES
(1, 'You Must Not Use More The Stated Time In Voting'),
(5, 'Do Not Make Noise In The Hall'),
(6, 'Do Not Try To Reload The Browser Otherwise You May Lose Your Vote'),
(7, 'Any Fraudulent Use Of Computer May Attract Severe Penalty'),
(8, 'You Must Be One Of The Stated Institutional Level Of Voting');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gp` double NOT NULL,
  `switch` int(11) NOT NULL,
  `votetime` varchar(8) NOT NULL,
  `accessadminreg` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `slogan` text NOT NULL,
  `requirements` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `gp`, `switch`, `votetime`, `accessadminreg`, `phone`, `email`, `slogan`, `requirements`) VALUES
(1, 3, 1, '00:05:00', 1, '+23409577699498', 'akindutire33@gmail.com', 'electronic voting ...', 3.1);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slides` text NOT NULL,
  `usage` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `slides`, `usage`) VALUES
(28, '1412790315IMG_20140427_183439.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `somepins`
--

CREATE TABLE IF NOT EXISTS `somepins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `used` int(11) NOT NULL,
  `mat` varchar(23) NOT NULL,
  `pn` varchar(8) NOT NULL,
  `hash` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `somepins`
--

INSERT INTO `somepins` (`id`, `used`, `mat`, `pn`, `hash`) VALUES
(1, 0, 'SO5/COM/2012/517', '848269CX', '40c85c805ce7a87d11ce322e076dba6f');

-- --------------------------------------------------------

--
-- Table structure for table `sqs`
--

CREATE TABLE IF NOT EXISTS `sqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qst` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `sqs`
--

INSERT INTO `sqs` (`id`, `qst`) VALUES
(1, 'What is your best food'),
(2, 'your brother first name'),
(3, 'Your favorite football player '),
(4, 'Your favorite Movie'),
(5, 'Country You Love most'),
(6, 'Your best friend'),
(7, 'Most favorite drinks'),
(8, 'your sister''s best friend'),
(9, 'your hobby');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `fullname` text NOT NULL,
  `sex` text NOT NULL,
  `dateofbirth` text NOT NULL,
  `admissionset` text NOT NULL,
  `program` text NOT NULL,
  `courseofstudy` text NOT NULL,
  `department` text NOT NULL,
  `matricno` text NOT NULL,
  `regnumber` varchar(11) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `country` text NOT NULL,
  `phone` text NOT NULL,
  `stateoforigin` text NOT NULL,
  `email` text NOT NULL,
  `lga` text NOT NULL,
  `maritalstatus` text NOT NULL,
  `fax` text NOT NULL,
  `nextofkin` text NOT NULL,
  `nextofkinphone` text NOT NULL,
  `photo` text NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `passkey` text NOT NULL,
  `faculty` text NOT NULL,
  `level` varchar(8) NOT NULL,
  `cgpa` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2095 ;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`fullname`, `sex`, `dateofbirth`, `admissionset`, `program`, `courseofstudy`, `department`, `matricno`, `regnumber`, `address`, `city`, `country`, `phone`, `stateoforigin`, `email`, `lga`, `maritalstatus`, `fax`, `nextofkin`, `nextofkinphone`, `photo`, `id`, `passkey`, `faculty`, `level`, `cgpa`) VALUES
('Babatunde kilani samuel', 'M', '14-3-1992', '12/13', 'FT', 'Food and Science', 'Food and Science', 'SO5/FST/2012/581', '91730715OE', 'Ijapo Estate Alade street', 'Akure', 'Nigeria', '081249729249', 'Ondo State', 'babatundekilanisamuel@gmail.com', 'Akure', 'Married', '01-1269', 'Titilope', '081249249249', 'MSO5FST2012581.jpg', 1, '1269126912691269', 'Applied Science', 'HND2', 3.45),
('Arowosewa Babatunde samuel', 'M', '25-7-1993', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/517', '35171293BC', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081457510457', 'Ondo State', 'arowosewababatundesamuel@gmail.com', 'Ondo', 'Married', '01-1189', 'Titilope', '081457457457', 'MSO5COM2012517.jpg', 2, '1189118911891189', 'Applied Science', 'ND2', 3.69),
('Arowosewa Kilani Desmond', 'M', '22-10-1985', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/512', '69634633JX', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081682167682', 'Ondo State', 'arowosewakilanidesmond@gmail.com', 'Ondo', 'Married', '01-2956', 'Titilope', '081682682682', 'MSO5COM2012512.jpg', 3, '2956295629562956', 'Applied Science', 'ND2', 3.32),
('Akinbulma timileyin Desmond', 'M', '10-7-1980', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/509', '82554690HC', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081603391603', 'Ondo State', 'akinbulmatimileyindesmond@gmail.com', 'Ondo', 'Married', '01-1593', 'Titilope', '081603603603', 'MSO5COM2012509.jpg', 4, '1593159315931593', 'Applied Science', 'ND2', 3.68),
('Babatunde Desmond N.', 'M', '30-11-1994', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/537', '34243375TP', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081259796259', 'Ondo State', 'babatundedesmondn@gmail.com', 'Ondo', 'Married', '01-6133', 'Titilope', '081259259259', 'MSO5COM2012537.jpg', 5, '6133613361336133', 'Applied Science', 'ND2', 3.58),
('Babatunde Bayo M.', 'M', '10-8-1988', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/475', '57658793PL', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081166762166', 'Ondo State', 'babatundebayom@gmail.com', 'Ondo', 'Married', '01-1355', 'Titilope', '081166166166', 'MSO5COM2012475.jpg', 6, '1355135513551355', 'Applied Science', 'ND2', 3.82),
('Akintan Desmond D.', 'M', '21-1-1987', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/542', '65499141IQ', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081716476716', 'Ondo State', 'akintandesmondd@gmail.com', 'Ondo', 'Married', '01-5794', 'Titilope', '081716716716', 'MSO5COM2012542.jpg', 7, '5794579457945794', 'Applied Science', 'ND2', 3.2),
('Akintanye Timileyin D.', 'M', '4-6-1990', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/462', '41483055CR', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081772303772', 'Ondo State', 'akintanyetimileyind@gmail.com', 'Ondo', 'Married', '01-1727', 'Titilope', '081772772772', 'MSO5COM2012462.jpg', 8, '1727172717271727', 'Applied Science', 'ND2', 3.17),
('Olu Desmond D.', 'M', '27-7-1990', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/585', '22617632PT', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081276168276', 'Ondo State', 'oludesmondd@gmail.com', 'Ondo', 'Married', '01-1189', 'Titilope', '081276276276', 'MSO5COM2012585.jpg', 9, '1189118911891189', 'Applied Science', 'ND2', 3.23),
('Akinbulma Ayo D.', 'M', '15-4-1985', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/466', '79022318IE', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081444593444', 'Ondo State', 'akinbulmaayod@gmail.com', 'Ondo', 'Married', '01-7960', 'Titilope', '081444444444', 'MSO5COM2012466.jpg', 10, '7960796079607960', 'Applied Science', 'ND2', 3.82),
('Akin Joy J.', 'M', '3-6-1998', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/557', '55630230VK', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081767415767', 'Ondo State', 'akinjoyj@gmail.com', 'Ondo', 'Married', '01-3569', 'Titilope', '081767767767', 'MSO5COM2012557.jpg', 11, '3569356935693569', 'Applied Science', 'ND2', 3.35),
('Akin Paul J.', 'M', '21-10-1985', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/528', '10435566CU', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081810312810', 'Ondo State', 'akinpaulj@gmail.com', 'Ondo', 'Married', '01-5300', 'Titilope', '081810810810', 'MSO5COM2012528.jpg', 12, '5300530053005300', 'Applied Science', 'ND2', 3.42),
('Paul John J.', 'M', '11-2-1996', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/542', '67192327AL', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081412519412', 'Ondo State', 'pauljohnj@gmail.com', 'Ondo', 'Married', '01-4183', 'Titilope', '081412412412', 'MSO5COM2012542.jpg', 13, '4183418341834183', 'Applied Science', 'ND2', 3.43),
('Pascal John J.', 'M', '17-12-1989', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/569', '96627964PK', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081692210692', 'Ondo State', 'pascaljohnj@gmail.com', 'Ondo', 'Married', '01-7000', 'Titilope', '081692692692', 'MSO5COM2012569.jpg', 14, '7000700070007000', 'Applied Science', 'ND2', 3.11),
('Omiwale Joseph J.', 'M', '7-6-1982', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/520', '63057976XP', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081237193237', 'Ondo State', 'omiwalejosephj@gmail.com', 'Ondo', 'Married', '01-6282', 'Titilope', '081237237237', 'MSO5COM2012520.jpg', 15, '6282628262826282', 'Applied Science', 'ND2', 3.31),
('Joseph Goodness S.', 'M', '9-8-1989', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/490', '67928989KA', 'Oke ijebu Oluwadele street', 'Akure', 'Nigeria', '081115626115', 'Ondo State', 'josephgoodnesss@gmail.com', 'Ondo', 'Married', '01-6310', 'Titilope', '081115115115', 'MSO5COM2012490.jpg', 16, '6310631063106310', 'Applied Science', 'ND2', 3.63),
('Samuel Josephine J.', 'F', '27-12-1988', '12/13', 'PT', 'Mathematics and Statistics', 'Mathematics and Statistics', 'SO5/MTH/2012/716', '94587914CX', 'Yanyan, Burahi  street', 'Kuje', 'Nigeria', '081183192183', 'Abuja', 'samueljosephinej@gmail.com', 'Kuje', 'Single', '01-5896', 'Akin', '081183183183', 'FSO5MTH2012716.jpg', 17, '5896589658965896', 'Applied Science', 'HND3', 2.22),
('Akintan Grace J.', 'F', '16-9-1981', '12/13', 'PT', 'Mathematics and Statistics', 'Mathematics and Statistics', 'SO5/MTH/2012/742', '17016725PD', 'Yanyan, Burahi  street', 'Kuje', 'Nigeria', '081298420298', 'Abuja', 'akintangracej@gmail.com', 'Kuje', 'Single', '01-7010', 'Akin', '081298298298', 'FSO5MTH2012742.jpg', 18, '7010701070107010', 'Applied Science', 'HND2', 3.1),
('Akintan Bola A.', 'F', '28-12-1991', '12/13', 'PT', 'Mathematics and Statistics', 'Mathematics and Statistics', 'SO5/MTH/2012/764', '26582784NU', 'Yanyan, Burahi  street', 'Kuje', 'Nigeria', '081192797192', 'Abuja', 'akintanbolaa@gmail.com', 'Kuje', 'Single', '01-2213', 'Akin', '081192192192', 'FSO5MTH2012764.jpg', 19, '2213221322132213', 'Applied Science', 'HND3', 3.51),
('Akinyemi Joy M.', 'F', '26-4-1991', '12/13', 'PT', 'Mathematics and Statistics', 'Mathematics and Statistics', 'SO5/MTH/2012/679', '23457563NL', 'Yanyan, Burahi  street', 'Kuje', 'Nigeria', '081832132832', 'Abuja', 'akinyemijoym@gmail.com', 'Kuje', 'Single', '01-6789', 'Akin', '081832832832', 'FSO5MTH2012679.jpg', 20, '6789678967896789', 'Applied Science', 'HND3', 2.56),
('AkinyeLE Joyce k.', 'F', '5-5-1988', '12/13', 'PT', 'Mathematics and Statistics', 'Mathematics and Statistics', 'SO5/MTH/2012/712', '92949693NZ', 'Yanyan, Burahi  street', 'Kuje', 'Nigeria', '081256116256', 'Abuja', 'akinyelejoycek@gmail.com', 'Kuje', 'Single', '01-1765', 'Akin', '081256256256', 'FSO5MTH2012712.jpg', 21, '1765176517651765', 'Applied Science', 'HND2', 3.14),
('Jimoh Pelumi M.', 'M', '30-4-1990', '12/13', 'PT', 'Mass Communication', 'Mass Communication', 'SO5/MAC/2012/988', '', 'Yanyan, Burahi  street', 'Kuje', 'Nigeria', '081182543182', 'Ondo', 'jimohpelumim@gmail.com', 'Ikare', 'Single', '01-7926', 'Akindele', '081182182182', 'MSO5MAC2012988.jpg', 22, '7926792679267926', 'Social Science', 'ND3', 3.57),
('Gani Bashiru L.', 'M', '4-1-1993', '12/13', 'PT', 'Mass Communication', 'Mass Communication', 'SO5/MAC/2012/1281', '', 'Yanyan, Burahi  street', 'Kuje', 'Nigeria', '081601354601', 'Ondo', 'ganibashirul@gmail.com', 'Ikare', 'Single', '01-7802', 'Akindele', '081601601601', 'MSO5MAC20121281.jpg', 23, '7802780278027802', 'Social Science', 'ND3', 3.77),
('Jimoh Lamidi L.', 'M', '5-5-1987', '12/13', 'PT', 'Mass Communication', 'Mass Communication', 'SO5/MAC/2012/1328', '', 'Yanyan, Burahi  street', 'Kuje', 'Nigeria', '081776329776', 'Ondo', 'jimohlamidil@gmail.com', 'Ikare', 'Single', '01-3673', 'Akindele', '081776776776', 'MSO5MAC20121328.jpg', 24, '3673367336733673', 'Social Science', 'ND3', 2.67),
('Salah Sharafat T.', 'M', '24-5-1993', '12/13', 'PT', 'Mass Communication', 'Mass Communication', 'SO5/MAC/2012/1147', '', 'Yanyan, Burahi  street', 'Kuje', 'Nigeria', '081249810249', 'Ondo', 'salahsharafatt@gmail.com', 'Ikare', 'Single', '01-3572', 'Akindele', '081249249249', 'MSO5MAC20121147.jpg', 25, '3572357235723572', 'Social Science', 'ND3', 3.92),
('Gani Tajudeen L.', 'M', '4-8-1982', '12/13', 'PT', 'Mass Communication', 'Mass Communication', 'SO5/MAC/2012/1201', '', 'Yanyan, Burahi  street', 'Kuje', 'Nigeria', '081636244636', 'Ondo', 'ganitajudeenl@gmail.com', 'Ikare', 'Single', '01-7280', 'Akindele', '081636636636', 'MSO5MAC20121201.jpg', 26, '7280728072807280', 'Social Science', 'ND3', 2.94),
('Jimoh Tajudeen T.', 'M', '23-4-1984', '12/13', 'FT', 'Mass Communication', 'Mass Communication', 'SO5/MAC/2012/528', '15357052DC', 'Yanyan, Burahi  street', 'Garki', 'Nigeria', '081227371227', 'Ondo', 'jimohtajudeent@gmail.com', 'Ijare', 'Single', '01-8327', 'Timothy', '081227227227', 'MSO5MAC2012528.jpg', 27, '8327832783278327', 'Social Science', 'ND2', 3.44),
('Akindutire Alade L.', 'M', '6-9-1986', '12/13', 'FT', 'Mass Communication', 'Mass Communication', 'SO5/MAC/2012/771', '21970285OD', 'Yanyan, Burahi  street', 'Garki', 'Nigeria', '081588624588', 'Ondo', 'akindutirealadel@gmail.com', 'Ijare', 'Single', '01-3995', 'Timothy', '081588588588', 'MSO5MAC2012771.jpg', 28, '3995399539953995', 'Social Science', 'ND2', 2.13),
('Orimolade Goodness I.', 'M', '30-4-1990', '12/13', 'FT', 'Mass Communication', 'Mass Communication', 'SO5/MAC/2012/850', '92895826JC', 'Yanyan, Burahi  street', 'Garki', 'Nigeria', '081360824360', 'Ondo', 'orimoladegoodnessi@gmail.com', 'Ijare', 'Single', '01-5316', 'Timothy', '081360360360', 'MSO5MAC2012850.jpg', 29, '5316531653165316', 'Social Science', 'ND2', 2.55),
('Orimolade Isreal T.', 'M', '4-11-1980', '12/13', 'FT', 'Mass Communication', 'Mass Communication', 'SO5/MAC/2012/801', '97894563GM', 'Yanyan, Burahi  street', 'Garki', 'Nigeria', '081258561258', 'Ondo', 'orimoladeisrealt@gmail.com', 'Ijare', 'Single', '01-7071', 'Timothy', '081258258258', 'MSO5MAC2012801.jpg', 30, '7071707170717071', 'Social Science', 'ND2', 2.1),
('Akintade Tola K.', 'M', '3-2-1987', '12/13', 'FT', 'Mass Communication', 'Mass Communication', 'SO5/MAC/2012/520', '84496068AH', 'Yanyan, Burahi  street', 'Garki', 'Nigeria', '081873226873', 'Ondo', 'akintadetolak@gmail.com', 'Ijare', 'Single', '01-5790', 'Timothy', '081873873873', 'MSO5MAC2012520.jpg', 31, '5790579057905790', 'Social Science', 'ND2', 3.19),
('Akindutire Isreal M.', 'M', '8-8-1994', '12/13', 'FT', 'Banking and Finance', 'Banking and Finance', 'SO1/BFN/2012/3118', '40271176MK', 'Okitipupa, Kalejaye  street', 'Surulere', 'Nigeria', '080470393470', 'Ondo', 'akindutireisrealm@gmail.com', 'Ose', 'Single', '09-1755', 'Tope', '081470470470', 'MSO1BFN20123118.jpg', 32, '1755175517551755', 'Business Studies', 'HND2', 3.17),
('Akintade Folayemi L.', 'M', '2-4-1981', '12/13', 'FT', 'Banking and Finance', 'Banking and Finance', 'SO1/BFN/2012/2839', '49273361IB', 'Okitipupa, Kalejaye  street', 'Surulere', 'Nigeria', '080790365790', 'Ondo', 'akintadefolayemil@gmail.com', 'Ose', 'Single', '09-8998', 'Tope', '081790790790', 'MSO1BFN20122839.jpg', 33, '8998899889988998', 'Business Studies', 'HND2', 3.5),
('Zachariah Sunday R.', 'M', '9-4-1989', '12/13', 'FT', 'Banking and Finance', 'Banking and Finance', 'SO1/BFN/2012/2687', '70862149NP', 'Okitipupa, Kalejaye  street', 'Surulere', 'Nigeria', '080849872849', 'Ondo', 'zachariahsundayr@gmail.com', 'Ose', 'Single', '09-1299', 'Tope', '081849849849', 'MSO1BFN20122687.jpg', 34, '1299129912991299', 'Business Studies', 'HND2', 3.77),
('Rolins Zachariah S.', 'M', '12-8-1988', '12/13', 'FT', 'Banking and Finance', 'Banking and Finance', 'SO1/BFN/2012/2805', '55737565BW', 'Okitipupa, Kalejaye  street', 'Surulere', 'Nigeria', '080337126337', 'Ondo', 'rolinszachariahs@gmail.com', 'Ose', 'Single', '09-2190', 'Tope', '081337337337', 'MSO1BFN20122805.jpg', 35, '2190219021902190', 'Business Studies', 'HND2', 3.59),
('Aknbuluma Rolins Z.', 'M', '18-5-1996', '12/13', 'FT', 'Banking and Finance', 'Banking and Finance', 'SO1/BFN/2012/3103', '75368997DJ', 'Okitipupa, Kalejaye  street', 'Surulere', 'Nigeria', '080620674620', 'Ondo', 'aknbulumarolinsz@gmail.com', 'Ose', 'Single', '09-6953', 'Tope', '081620620620', 'MSO1BFN20123103.jpg', 36, '6953695369536953', 'Business Studies', 'HND2', 3.75),
('Akintan Zachariah S.', 'M', '6-8-1993', '12/13', 'FT', 'Banking and Finance', 'Banking and Finance', 'SO1/BFN/2012/2577', '92482323ZI', 'Okitipupa, Kalejaye  street', 'Surulere', 'Nigeria', '080138470138', 'Ondo', 'akintanzachariahs@gmail.com', 'Ose', 'Single', '09-8617', 'Tope', '081138138138', 'MSO1BFN20122577.jpg', 37, '8617861786178617', 'Business Studies', 'HND2', 3.52),
('Fawehmi John S.', 'M', '26-2-1996', '12/13', 'FT', 'Banking and Finance', 'Banking and Finance', 'SO1/BFN/2012/2895', '89979913ML', 'Okitipupa, Kalejaye  street', 'Surulere', 'Nigeria', '080208553208', 'Ondo', 'fawehmijohns@gmail.com', 'Ose', 'Single', '09-7965', 'Tope', '081208208208', 'MSO1BFN20122895.jpg', 38, '7965796579657965', 'Business Studies', 'HND2', 3.82),
('Ganiyat Monirat V.', 'F', '28-3-1992', '12/13', 'PT', 'Computer Engineering', 'Computer Engineering', 'SO6/CTE/2012/395', '13832994LT', 'Otapete, Onile  street', 'Owo', 'Nigeria', '080420280420', 'Ekiti', 'ganiyatmoniratv@gmail.com', 'ikere', 'Married', '09-7528', 'Tope', '081420420420', 'FSO6CTE2012395.jpg', 39, '7528752875287528', 'Engineering', 'HND3', 3.47),
('Suleman Monirat V.', 'F', '14-3-1998', '12/13', 'PT', 'Computer Engineering', 'Computer Engineering', 'SO6/CTE/2012/396', '13090645JN', 'Otapete, Onile  street', 'Owo', 'Nigeria', '080439846439', 'Ekiti', 'sulemanmoniratv@gmail.com', 'ikere', 'Married', '09-5587', 'Tope', '081439439439', 'FSO6CTE2012396.jpg', 40, '5587558755875587', 'Engineering', 'HND3', 3.35),
('Akinde Vivian C.', 'F', '20-8-1990', '12/13', 'PT', 'Computer Engineering', 'Computer Engineering', 'SO6/CTE/2012/399', '80215475EZ', 'Otapete, Onile  street', 'Owo', 'Nigeria', '080206516206', 'Ekiti', 'akindevivianc@gmail.com', 'ikere', 'Married', '09-6174', 'Tope', '081206206206', 'FSO6CTE2012399.jpg', 41, '6174617461746174', 'Engineering', 'HND2', 3.94),
('Jegede Toyin B.', 'F', '3-9-1985', '12/13', 'PT', 'Computer Engineering', 'Computer Engineering', 'SO6/CTE/2012/409', '30512516NV', 'Otapete, Onile  street', 'Owo', 'Nigeria', '080136644136', 'Ekiti', 'jegedetoyinb@gmail.com', 'ikere', 'Married', '09-5069', 'Tope', '081136136136', 'FSO6CTE2012409.jpg', 42, '5069506950695069', 'Engineering', 'ND3', 3.42),
('Akin tunde R.', 'M', '27-12-1984', '12/13', 'PT', 'Mechanical Engineering', 'Mechanical Engineering', 'SO6/MEC/2012/424', '', 'Otapete, Onile  street', 'Owo', 'Nigeria', '080522894522', 'Osun', 'akintunder@gmail.com', 'idigbanm', 'Single', '09-7804', 'Topelll', '081522522522', 'MSO6MEC2012424.jpg', 43, '7804780478047804', 'Engineering', 'HND3', 3.11),
('Akindele Bayo I.', 'M', '3-4-1985', '12/13', 'PT', 'Mechanical Engineering', 'Mechanical Engineering', 'SO6/MEC/2012/404', '', 'Otapete, Onile  street', 'Owo', 'Nigeria', '080126284126', 'Osun', 'akindelebayoi@gmail.com', 'idigbanm', 'Single', '09-7660', 'Topelll', '081126126126', 'MSO6MEC2012404.jpg', 44, '7660766076607660', 'Engineering', 'HND3', 3.94),
('Akindele Goodness I.', 'M', '22-7-1998', '12/13', 'PT', 'Mechanical Engineering', 'Mechanical Engineering', 'SO6/MEC/2012/465', '', 'Otapete, Onile  street', 'Owo', 'Nigeria', '080392712392', 'Osun', 'akindelegoodnessi@gmail.com', 'idigbanm', 'Single', '09-3668', 'Topelll', '081392392392', 'MSO6MEC2012465.jpg', 45, '3668366836683668', 'Engineering', 'HND3', 3.86),
('Alade Isreal B.', 'M', '6-2-1980', '12/13', 'PT', 'Mechanical Engineering', 'Mechanical Engineering', 'SO6/MEC/2012/489', '', 'Otapete, Onile  street', 'Owo', 'Nigeria', '080834520834', 'Osun', 'aladeisrealb@gmail.com', 'idigbanm', 'Single', '09-2609', 'Topelll', '081834834834', 'MSO6MEC2012489.jpg', 46, '2609260926092609', 'Engineering', 'HND3', 3.77),
('Origadade Dare A.', 'M', '18-3-1989', '12/13', 'PT', 'Architechture', 'Architechture', 'SO3/ARC/2012/721', '', 'Birimilke, Onile  street', 'Ibadan', 'Nigeria', '080843515843', 'Oyo', 'origadadedarea@gmail.com', 'Brikipe', 'Single', '09-5016', 'Seyel', '081843843843', 'MSO3ARC2012721.jpg', 47, '5016501650165016', 'Environmental', 'HND3', 3.43),
('Bunmi Sunday D.', 'M', '22-11-1980', '12/13', 'PT', 'Architechture', 'Architechture', 'SO3/ARC/2012/739', '', 'Birimilke, Onile  street', 'Ibadan', 'Nigeria', '080683857683', 'Oyo', 'bunmisundayd@gmail.com', 'Brikipe', 'Single', '09-7169', 'Seyel', '081683683683', 'MSO3ARC2012739.jpg', 48, '7169716971697169', 'Environmental', 'HND3', 3.86),
('Asa Dare A.', 'M', '18-7-1982', '12/13', 'PT', 'Architechture', 'Architechture', 'SO3/ARC/2012/713', '', 'Birimilke, Onile  street', 'Ibadan', 'Nigeria', '080897434897', 'Oyo', 'asadarea@gmail.com', 'Brikipe', 'Single', '09-3099', 'Seyel', '081897897897', 'MSO3ARC2012713.jpg', 49, '3099309930993099', 'Environmental', 'HND3', 3.95),
('Maloma Tunde G.', 'M', '14-10-1986', '12/13', 'FT', 'URP', 'URP', 'SO3/URP/2012/678', '24375912DE', 'Birimilke, Onile  street', 'Ibadan', 'Nigeria', '080900389900', 'Oyo', 'malomatundeg@gmail.com', 'Brikipe', 'Single', '09-2588', 'Seyemi', '081900900900', 'MSO3URP2012678.jpg', 50, '2588258825882588', 'Environmental', 'HND2', 3.43),
('Maloma John G.', 'M', '8-3-1992', '12/13', 'FT', 'URP', 'URP', 'SO3/URP/2012/666', '54232597ED', 'Birimilke, Onile  street', 'Ibadan', 'Nigeria', '080782182782', 'Oyo', 'malomajohng@gmail.com', 'Brikipe', 'Single', '09-1166', 'Seyemi', '081782782782', 'MSO3URP2012666.jpg', 51, '1166116611661166', 'Environmental', 'HND2', 3.28),
('Adefela George M.', 'M', '20-5-1989', '12/13', 'FT', 'Estate Management', 'Estate Management', 'SO3/EST/2012/612', '27521232HL', 'Kpere, Uko  street', 'Okene', 'Nigeria', '081709283709', 'Kogi', 'adefelageorgem@gmail.com', 'Ekpe', 'Single', '09-6117', 'Seyemi', '090709709709', 'MSO3EST2012612.jpg', 52, '6117611761176117', 'Environmental', 'ND2', 3.39),
('Akinlo Segun I.', 'M', '18-11-1985', '12/13', 'FT', 'Estate Management', 'Estate Management', 'SO3/EST/2012/610', '88156690ZQ', 'Kpere, Uko  street', 'Okene', 'Nigeria', '081320720320', 'Kogi', 'akinloseguni@gmail.com', 'Ekpe', 'Single', '09-6469', 'Seyemi', '090320320320', 'MSO3EST2012610.jpg', 53, '6469646964696469', 'Environmental', 'ND2', 3.73),
('Demola Dare D.', 'M', '4-11-1989', '12/13', 'FT', 'Electrical Engineering', 'Electrical Engineering', 'SO6/EET/2012/762', '78327728QX', 'Pere, Uko  street', 'Igede', 'Nigeria', '081534460534', 'Ogun', 'demoladared@gmail.com', 'Lade', 'Single', '01-7004', 'funmi', '090534534534', 'MSO6EET2012762.jpg', 54, '7004700470047004', 'Engineering', 'HND2', 3.65),
('Balogun Kehinde S.', 'M', '4-3-1997', '12/13', 'FT', 'Electrical Engineering', 'Electrical Engineering', 'SO6/EET/2012/759', '85082666ZA', 'Pere, Uko  street', 'Igede', 'Nigeria', '081540102540', 'Ogun', 'balogunkehindes@gmail.com', 'Lade', 'Single', '01-6255', 'funmi', '090540540540', 'MSO6EET2012759.jpg', 55, '6255625562556255', 'Engineering', 'HND2', 3.81),
('Eniola Seun T.', 'M', '4-11-1997', '12/13', 'FT', 'Electrical Engineering', 'Electrical Engineering', 'SO6/EET/2012/760', '70810210WZ', 'Pere, Uko  street', 'Igede', 'Nigeria', '081402428402', 'Ogun', 'eniolaseunt@gmail.com', 'Lade', 'Single', '01-6501', 'funmi', '090402402402', 'MSO6EET2012760.jpg', 56, '6501650165016501', 'Engineering', 'HND2', 3.59),
('Abiola Eniola T.', 'M', '27-10-1994', '12/13', 'FT', 'Electrical Engineering', 'Electrical Engineering', 'SO6/EET/2012/799', '90872784JB', 'Pere, Uko  street', 'Igede', 'Nigeria', '081463118463', 'Ogun', 'abiolaeniolat@gmail.com', 'Lade', 'Single', '01-7775', 'funmi', '090463463463', 'MSO6EET2012799.jpg', 57, '7775777577757775', 'Engineering', 'HND2', 3.73),
('Kareem Kabiru F.', 'M', '14-8-1994', '12/13', 'FT', 'Electrical Engineering', 'Electrical Engineering', 'SO6/EET/2012/786', '75646759UR', 'Pere, Uko  street', 'Igede', 'Nigeria', '081738109738', 'Ogun', 'kareemkabiruf@gmail.com', 'Lade', 'Single', '01-1857', 'funmi', '090738738738', 'MSO6EET2012786.jpg', 58, '1857185718571857', 'Engineering', 'HND2', 3.15),
('Falonipe Christain G.', 'M', '13-6-1991', '12/13', 'FT', 'Electrical Engineering', 'Electrical Engineering', 'SO6/EET/2012/784', '27252282XE', 'Pere, Uko  street', 'Igede', 'Nigeria', '081316483316', 'Ogun', 'falonipechristaing@gmail.com', 'Lade', 'Single', '01-6280', 'funmi', '090316316316', 'MSO6EET2012784.jpg', 59, '6280628062806280', 'Engineering', 'HND2', 3.65),
('Segun Christain G.', 'M', '11-9-1991', '12/13', 'FT', 'Electrical Engineering', 'Electrical Engineering', 'SO6/EET/2012/771', '69048910UX', 'Pere, Uko  street', 'Igede', 'Nigeria', '081765671765', 'Ogun', 'segunchristaing@gmail.com', 'Lade', 'Single', '01-2323', 'funmi', '090765765765', 'MSO6EET2012771.jpg', 60, '2323232323232323', 'Engineering', 'HND2', 3.78),
('Raymond Collins D.', 'M', '24-8-1994', '12/13', 'FT', 'Electrical Engineering', 'Electrical Engineering', 'SO6/EET/2012/766', '42312020TE', 'Pere, Uko  street', 'Igede', 'Nigeria', '081724495724', 'Ogun', 'raymondcollinsd@gmail.com', 'Lade', 'Single', '01-1019', 'funmi', '090724724724', 'MSO6EET2012766.jpg', 61, '1019101910191019', 'Engineering', 'HND2', 3.3),
('Atiwaye kehinde', 'F', '05-01-1990', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/600', '23270239BZ', 'Ijapo Estate', 'Akure', 'Nigeria', '081089375839', 'Lagos', 'atiwaye@yahoo.com', 'onimije', 'Single', '01-848394', 'Atiwaye Sunday', '0819388499', 'FSO5COM2012600.jpg', 62, '90940304900', 'Applied Science', 'HND2', 3.7),
('Akinde Samson L.', 'M', '09-4-1993', '12/13', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/601', '13400412CX', '09 Ijapo', 'Kadil', 'Nigeria', '0829299300', 'Kaduna', 'Akindeserah@yahoo.com', 'Chibok', 'Single', '01-8499398', 'Akinde Lots', '09388399290', 'MSO5COM2012601.jpg', 63, '0838388488438', 'Applied Science', 'ND2', 3.9),
('Aladegoke Sunkanmi Tunde', 'M', '12-08-2000', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/900', '26547790HO', '22 Alagbaka Akure', 'Akure', 'Nigeria', '0810897637', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/900', 64, '7878878877978989', 'APPLIED SCIENCE', 'ND2', 3.9),
('Maloma Adams G.', 'M', '1041984', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/784', '48880249AH', '58Ijapo Estate', 'Akure', 'Nigeria', '08158755480', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/784', 123, '975913903407', 'APPLIED SCIENCE', 'ND2', 3),
('Maloma moses G.', 'M', '1281914', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/837', '88079287AH', '25Ijapo Estate', 'Akure', 'Nigeria', '08160844400', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/837', 124, '938317834378', 'APPLIED SCIENCE', 'ND2', 3),
('Maloma Gop G.', 'M', '1671923', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/857', '89364591AH', '34Ijapo Estate', 'Akure', 'Nigeria', '08148624553', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/857', 125, '309874354041', 'APPLIED SCIENCE', 'ND2', 3),
('Maloma Edema G.', 'M', '971925', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/828', '57682565AH', '64Ijapo Estate', 'Akure', 'Nigeria', '08162561398', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/828', 126, '429643034096', 'APPLIED SCIENCE', 'ND2', 3),
('Maloma leo G.', 'M', '391898', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/821', '65169487AH', '34Ijapo Estate', 'Akure', 'Nigeria', '08111280655', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/821', 127, '584147632892', 'APPLIED SCIENCE', 'ND2', 3),
('Maloma Danny G.', 'M', '1181908', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/782', '63584109AH', '42Ijapo Estate', 'Akure', 'Nigeria', '08153121339', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/782', 128, '931521793309', 'APPLIED SCIENCE', 'ND2', 3),
('Maloma kilia G.', 'M', '2751927', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/803', '46742462AH', '23Ijapo Estate', 'Akure', 'Nigeria', '08162768120', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/803', 129, '927044828027', 'APPLIED SCIENCE', 'ND2', 3),
('Maloma moshood G.', 'M', '581960', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/792', '63587847AH', '51Ijapo Estate', 'Akure', 'Nigeria', '08111733149', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/792', 130, '447445442216', 'APPLIED SCIENCE', 'ND2', 3),
('Maloma John L.', 'M', '12121972', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/865', '79540643AH', '75Ijapo Estate', 'Akure', 'Nigeria', '08145178256', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/865', 131, '916558535476', 'APPLIED SCIENCE', 'ND2', 3),
('Maloma flote G.', 'M', '2951912', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/893', '40258301AH', '76Ijapo Estate', 'Akure', 'Nigeria', '08169728148', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/893', 132, '130286844159', 'APPLIED SCIENCE', 'ND2', 3),
('Maloma gegeon G.', 'M', '1531946', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/891', '83682753AH', '15Ijapo Estate', 'Akure', 'Nigeria', '08113524397', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/891', 133, '580941833307', 'APPLIED SCIENCE', 'ND2', 3),
('Akinye gegeon G.', 'M', '9-9-1988', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/835', '73055799AH', '36Ijapo Estate', 'Akure', 'Nigeria', '08138373527', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/835', 2028, '215424635670', 'APPLIED SCIENCE', 'ND2', 3),
('Akinye kunle G.', 'M', '5-7-1969', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/849', '62320643AH', '68Ijapo Estate', 'Akure', 'Nigeria', '08147942822', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/849', 2029, '925643057334', 'APPLIED SCIENCE', 'ND2', 3),
('Adeyeye gegeon G.', 'M', '28-12-1891', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/831', '74457237AH', '38Ijapo Estate', 'Akure', 'Nigeria', '08150672171', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/831', 2030, '652876563079', 'APPLIED SCIENCE', 'ND2', 3),
('Bashit  Faruq', 'M', '15-5-1958', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/891', '69765172AH', '51Ijapo Estate', 'Akure', 'Nigeria', '08117165593', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/891', 2031, '328532883556', 'APPLIED SCIENCE', 'ND2', 3),
('Tunde sunday  G.', 'M', '7-7-1973', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/879', '57054813AH', '23Ijapo Estate', 'Akure', 'Nigeria', '08168671321', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/879', 2032, '743954284264', 'APPLIED SCIENCE', 'ND2', 3),
('Enahoro Moses', 'M', '6-3-1897', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/896', '55925900AH', '55Ijapo Estate', 'Akure', 'Nigeria', '08165226337', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/896', 2033, '974263296013', 'APPLIED SCIENCE', 'ND2', 3),
('Williams James', 'M', '14-1-1974', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/846', '59855148AH', '21Ijapo Estate', 'Akure', 'Nigeria', '08148347606', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/846', 2034, '404319493911', 'APPLIED SCIENCE', 'ND2', 3),
('Faret Loius', 'M', '8-5-1922', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/823', '47535250AH', '19Ijapo Estate', 'Akure', 'Nigeria', '08111327278', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/823', 2035, '753318247819', 'APPLIED SCIENCE', 'ND2', 3),
('Desmond Alex H.', 'M', '12-9-1898', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/782', '46837270AH', '25Ijapo Estate', 'Akure', 'Nigeria', '08137480258', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/782', 2036, '899673436153', 'APPLIED SCIENCE', 'ND2', 3),
('Ibigbami Titus', 'M', '8-11-1903', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/810', '46153850AH', '61Ijapo Estate', 'Akure', 'Nigeria', '08170660241', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/810', 2037, '706358215234', 'APPLIED SCIENCE', 'ND2', 3),
('Ibigbami Titi', 'M', '10-3-1906', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/795', '57281404AH', '64Ijapo Estate', 'Akure', 'Nigeria', '08153076490', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/795', 2038, '345640805677', 'APPLIED SCIENCE', 'ND2', 3),
('Ajike Hilop', 'M', '7-12-1977', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/817', '78273122AH', '50Ijapo Estate', 'Akure', 'Nigeria', '08162184451', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/817', 2039, '524167173965', 'APPLIED SCIENCE', 'ND2', 3),
('Rollins Ruby', 'M', '2-8-1895', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/816', '55122172AH', '60Ijapo Estate', 'Akure', 'Nigeria', '08120946535', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/816', 2040, '907822846616', 'APPLIED SCIENCE', 'ND2', 3),
('Nosal Fret', 'M', '20-9-1909', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/863', '45252694AH', '34Ijapo Estate', 'Akure', 'Nigeria', '08118321733', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/863', 2041, '347147596570', 'APPLIED SCIENCE', 'ND2', 3),
('Gesha Sadin M.', 'M', '25-8-1922', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/831', '79482402AH', '42Ijapo Estate', 'Akure', 'Nigeria', '08119237813', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/831', 2042, '701881253656', 'APPLIED SCIENCE', 'ND2', 3),
('Spag Titus', 'M', '18-5-1939', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/785', '74055789AH', '22Ijapo Estate', 'Akure', 'Nigeria', '08163041519', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/785', 2043, '766041436162', 'APPLIED SCIENCE', 'ND2', 3),
('Moses Egg', 'M', '14-5-1989', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/891', '44126718AH', '74Ijapo Estate', 'Akure', 'Nigeria', '08134559558', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/891', 2044, '993280257226', 'APPLIED SCIENCE', 'ND2', 3),
('Moses Ruby', 'M', '18-12-1939', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/843', '65939632AH', '61Ijapo Estate', 'Akure', 'Nigeria', '08145667427', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/843', 2045, '121451165299', 'APPLIED SCIENCE', 'ND2', 3),
('Pius Thief', 'M', '6-7-1943', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/862', '88676345AH', '44Ijapo Estate', 'Akure', 'Nigeria', '08123087191', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/862', 2046, '797881585717', 'APPLIED SCIENCE', 'ND2', 3),
('Akinbuluma Dayo', 'M', '20-11-1940', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/876', '47570849AH', '21Ijapo Estate', 'Akure', 'Nigeria', '08129157680', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/876', 2047, '804039753390', 'APPLIED SCIENCE', 'ND2', 3),
('Yakayoko Yellow', 'M', '26-4-1892', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/794', '76667507AH', '15Ijapo Estate', 'Akure', 'Nigeria', '08132463526', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/794', 2048, '481128433262', 'APPLIED SCIENCE', 'ND2', 3),
('Louis Desmond', 'M', '10-1-1917', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/781', '70533863AH', '19Ijapo Estate', 'Akure', 'Nigeria', '08145775313', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/781', 2049, '254488672994', 'APPLIED SCIENCE', 'ND2', 3),
('Adekunle Adekola', 'M', '21-3-1892', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/797', '47380431AH', '16Ijapo Estate', 'Akure', 'Nigeria', '08118833403', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/797', 2050, '858761547139', 'APPLIED SCIENCE', 'ND2', 3),
('Orisaboneye Tayo', 'M', '20-9-1900', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/879', '61364501AH', '66Ijapo Estate', 'Akure', 'Nigeria', '08136680340', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/879', 2051, '863181893521', 'APPLIED SCIENCE', 'ND2', 3),
('Adams Kim', 'M', '15-7-1945', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/799', '64921540AH', '41Ijapo Estate', 'Akure', 'Nigeria', '08129879636', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/799', 2052, '496245112593', 'APPLIED SCIENCE', 'ND2', 3),
('Titus Bingo', 'M', '4-12-1972', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/827', '71650789AH', '68Ijapo Estate', 'Akure', 'Nigeria', '08134063588', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/827', 2053, '970921887527', 'APPLIED SCIENCE', 'ND2', 3),
('Ferdinard Kabiru', 'M', '16-12-1898', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/788', '68342861AH', '48Ijapo Estate', 'Akure', 'Nigeria', '08121634855', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/788', 2054, '209440883199', 'APPLIED SCIENCE', 'ND2', 3),
('Dotman Graphite', 'M', '25-2-1952', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/824', '77855749AH', '34Ijapo Estate', 'Akure', 'Nigeria', '08139855489', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/824', 2055, '268329608128', 'APPLIED SCIENCE', 'ND2', 3),
('Ray Bills', 'M', '19-7-1965', '2012/2013', 'FT', 'Computer Science', 'Computer Science', 'SO5/COM/2012/814', '71548217AH', '29Ijapo Estate', 'Akure', 'Nigeria', '08142052295', 'Ondo', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO5/COM/2012/814', 2056, '363771056794', 'APPLIED SCIENCE', 'ND2', 3),
('Dest Yong', 'M', '12-9-1951', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/895', '67747257AC', '17Ijapo Estate', 'Akure', 'Nigeria', '08165238325', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/895', 2076, '861482884828', 'APPLIED SCIENCE', 'HND2', 3.09),
('Yong Ying', 'M', '3-1-1946', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/846', '54287308AC', '56Ijapo Estate', 'Akure', 'Nigeria', '08118155132', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/846', 2077, '425537732015', 'APPLIED SCIENCE', 'HND2', 3.09),
('Vonye chaka chaka ', 'M', '11-10-1902', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/818', '48051258AC', '64Ijapo Estate', 'Akure', 'Nigeria', '08167056724', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/818', 2078, '300361985483', 'APPLIED SCIENCE', 'HND2', 3.09),
('Adeyeye Oluwa', 'M', '19-1-1969', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/860', '84488299AC', '40Ijapo Estate', 'Akure', 'Nigeria', '08130151558', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/860', 2079, '967523853845', 'APPLIED SCIENCE', 'HND2', 3.09),
('Hilary Oluwa', 'M', '22-11-1900', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/882', '47031396AC', '78Ijapo Estate', 'Akure', 'Nigeria', '08159256639', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/882', 2080, '968026122044', 'APPLIED SCIENCE', 'HND2', 3.09),
('Feranmi Joy', 'M', '8-9-1917', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/806', '80858490AC', '27Ijapo Estate', 'Akure', 'Nigeria', '08144941760', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/806', 2081, '727230814040', 'APPLIED SCIENCE', 'HND2', 3.09),
('Marta Williams K.', 'M', '24-8-1897', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/836', '53769695AC', '15Ijapo Estate', 'Akure', 'Nigeria', '08158986491', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/836', 2082, '980037008086', 'APPLIED SCIENCE', 'HND2', 3.09),
('Marta Simeon K.', 'M', '2-7-1924', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/886', '70060703AC', '28Ijapo Estate', 'Akure', 'Nigeria', '08164351169', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/886', 2083, '295321562008', 'APPLIED SCIENCE', 'HND2', 3.09),
('Adike Favor K.', 'M', '9-4-1894', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/849', '82269780AC', '11Ijapo Estate', 'Akure', 'Nigeria', '08152885304', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/849', 2084, '701937862556', 'APPLIED SCIENCE', 'HND2', 3.09),
('Akindele Morins', 'M', '15-5-1966', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/875', '53753365AC', '18Ijapo Estate', 'Akure', 'Nigeria', '08159877194', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/875', 2085, '712577586605', 'APPLIED SCIENCE', 'HND2', 3.09),
('Adejuni Alex', 'M', '17-7-1949', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/790', '71544675AC', '24Ijapo Estate', 'Akure', 'Nigeria', '08158029499', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/790', 2086, '949411415327', 'APPLIED SCIENCE', 'HND2', 3.09),
('Kater tayo', 'M', '20-8-1969', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/854', '58429100AC', '80Ijapo Estate', 'Akure', 'Nigeria', '08133375268', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/854', 2087, '769382834648', 'APPLIED SCIENCE', 'HND2', 3.09),
('Taye Mored', 'M', '11-6-1960', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/827', '85739807AC', '48Ijapo Estate', 'Akure', 'Nigeria', '08161271309', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/827', 2088, '288158877937', 'APPLIED SCIENCE', 'HND2', 3.09),
('Gotez Cingult', 'M', '2-3-1909', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/841', '85790133AC', '46Ijapo Estate', 'Akure', 'Nigeria', '08117140216', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/841', 2089, '606439804990', 'APPLIED SCIENCE', 'HND2', 3.09),
('Moyes elliot', 'M', '30-9-1982', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/829', '63965398AC', '40Ijapo Estate', 'Akure', 'Nigeria', '08118445154', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/829', 2090, '433783955076', 'APPLIED SCIENCE', 'HND2', 3.09),
('Asa Niyi', 'M', '21-8-1921', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/795', '62085291AC', '71Ijapo Estate', 'Akure', 'Nigeria', '08113170262', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/795', 2091, '814369437041', 'APPLIED SCIENCE', 'HND2', 3.09),
('Olowodasa Edwin', 'M', '6-7-1913', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/845', '70127677AC', '64Ijapo Estate', 'Akure', 'Nigeria', '08138532851', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/845', 2092, '851729887170', 'APPLIED SCIENCE', 'HND2', 3.09),
('Moteye Actor', 'M', '4-7-1982', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/855', '89144797AC', '58Ijapo Estate', 'Akure', 'Nigeria', '08153988232', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/855', 2093, '633816217063', 'APPLIED SCIENCE', 'HND2', 3.09),
('MebinonE sEUN', 'M', '8-6-1915', '2012/2013', 'PT', 'Library', 'Library', 'SO7/LIB/2012/864', '43379866AC', '79Ijapo Estate', 'Akure', 'Nigeria', '08116680446', 'Lagos', 'tuns@gmail.com', 'Okitipupa', 'Single', '09-889977', 'Aladegoke Jose', '08288884789', 'MSO7/LIB/2012/864', 2094, '557937372612', 'APPLIED SCIENCE', 'HND2', 3.09);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
