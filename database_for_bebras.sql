-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 28, 2020 at 09:25 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_for_bebras`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add role', 7, 'add_role'),
(26, 'Can change role', 7, 'change_role'),
(27, 'Can delete role', 7, 'delete_role'),
(28, 'Can view role', 7, 'view_role'),
(29, 'Can add user role', 8, 'add_userrole'),
(30, 'Can change user role', 8, 'change_userrole'),
(31, 'Can delete user role', 8, 'delete_userrole'),
(32, 'Can view user role', 8, 'view_userrole'),
(33, 'Can add user role location', 9, 'add_userrolelocation'),
(34, 'Can change user role location', 9, 'change_userrolelocation'),
(35, 'Can delete user role location', 9, 'delete_userrolelocation'),
(36, 'Can view user role location', 9, 'view_userrolelocation'),
(37, 'Can add address', 10, 'add_address'),
(38, 'Can change address', 10, 'change_address'),
(39, 'Can delete address', 10, 'delete_address'),
(40, 'Can view address', 10, 'view_address'),
(41, 'Can add class', 11, 'add_class'),
(42, 'Can change class', 11, 'change_class'),
(43, 'Can delete class', 11, 'delete_class'),
(44, 'Can view class', 11, 'view_class'),
(45, 'Can add code', 12, 'add_code'),
(46, 'Can change code', 12, 'change_code'),
(47, 'Can delete code', 12, 'delete_code'),
(48, 'Can view code', 12, 'view_code'),
(49, 'Can add code group', 13, 'add_codegroup'),
(50, 'Can change code group', 13, 'change_codegroup'),
(51, 'Can delete code group', 13, 'delete_codegroup'),
(52, 'Can view code group', 13, 'view_codegroup'),
(53, 'Can add countries', 14, 'add_countries'),
(54, 'Can change countries', 14, 'change_countries'),
(55, 'Can delete countries', 14, 'delete_countries'),
(56, 'Can view countries', 14, 'view_countries'),
(57, 'Can add school', 15, 'add_school'),
(58, 'Can change school', 15, 'change_school'),
(59, 'Can delete school', 15, 'delete_school'),
(60, 'Can view school', 15, 'view_school'),
(61, 'Can add states', 16, 'add_states'),
(62, 'Can change states', 16, 'change_states'),
(63, 'Can delete states', 16, 'delete_states'),
(64, 'Can view states', 16, 'view_states'),
(65, 'Can add school class', 17, 'add_schoolclass'),
(66, 'Can change school class', 17, 'change_schoolclass'),
(67, 'Can delete school class', 17, 'delete_schoolclass'),
(68, 'Can view school class', 17, 'view_schoolclass'),
(69, 'Can add districts', 18, 'add_districts'),
(70, 'Can change districts', 18, 'change_districts'),
(71, 'Can delete districts', 18, 'delete_districts'),
(72, 'Can view districts', 18, 'view_districts'),
(73, 'Can add option', 19, 'add_option'),
(74, 'Can change option', 19, 'change_option'),
(75, 'Can delete option', 19, 'delete_option'),
(76, 'Can view option', 19, 'view_option'),
(77, 'Can add question', 20, 'add_question'),
(78, 'Can change question', 20, 'change_question'),
(79, 'Can delete question', 20, 'delete_question'),
(80, 'Can view question', 20, 'view_question'),
(81, 'Can add question translation', 21, 'add_questiontranslation'),
(82, 'Can change question translation', 21, 'change_questiontranslation'),
(83, 'Can delete question translation', 21, 'delete_questiontranslation'),
(84, 'Can view question translation', 21, 'view_questiontranslation'),
(85, 'Can add option translation', 22, 'add_optiontranslation'),
(86, 'Can change option translation', 22, 'change_optiontranslation'),
(87, 'Can delete option translation', 22, 'delete_optiontranslation'),
(88, 'Can view option translation', 22, 'view_optiontranslation'),
(89, 'Can add image', 23, 'add_image'),
(90, 'Can change image', 23, 'change_image'),
(91, 'Can delete image', 23, 'delete_image'),
(92, 'Can view image', 23, 'view_image'),
(93, 'Can add correct option', 24, 'add_correctoption'),
(94, 'Can change correct option', 24, 'change_correctoption'),
(95, 'Can delete correct option', 24, 'delete_correctoption'),
(96, 'Can view correct option', 24, 'view_correctoption'),
(97, 'Can add age group', 25, 'add_agegroup'),
(98, 'Can change age group', 25, 'change_agegroup'),
(99, 'Can delete age group', 25, 'delete_agegroup'),
(100, 'Can view age group', 25, 'view_agegroup'),
(101, 'Can add age group class', 26, 'add_agegroupclass'),
(102, 'Can change age group class', 26, 'change_agegroupclass'),
(103, 'Can delete age group class', 26, 'delete_agegroupclass'),
(104, 'Can view age group class', 26, 'view_agegroupclass'),
(105, 'Can add competition', 27, 'add_competition'),
(106, 'Can change competition', 27, 'change_competition'),
(107, 'Can delete competition', 27, 'delete_competition'),
(108, 'Can view competition', 27, 'view_competition'),
(109, 'Can add competition age', 28, 'add_competitionage'),
(110, 'Can change competition age', 28, 'change_competitionage'),
(111, 'Can delete competition age', 28, 'delete_competitionage'),
(112, 'Can view competition age', 28, 'view_competitionage'),
(113, 'Can add competition question', 29, 'add_competitionquestion'),
(114, 'Can change competition question', 29, 'change_competitionquestion'),
(115, 'Can delete competition question', 29, 'delete_competitionquestion'),
(116, 'Can view competition question', 29, 'view_competitionquestion'),
(117, 'Can add student enrollment', 30, 'add_studentenrollment'),
(118, 'Can change student enrollment', 30, 'change_studentenrollment'),
(119, 'Can delete student enrollment', 30, 'delete_studentenrollment'),
(120, 'Can view student enrollment', 30, 'view_studentenrollment'),
(121, 'Can add student response', 31, 'add_studentresponse'),
(122, 'Can change student response', 31, 'change_studentresponse'),
(123, 'Can delete student response', 31, 'delete_studentresponse'),
(124, 'Can view student response', 31, 'view_studentresponse'),
(125, 'Can add question age', 32, 'add_questionage'),
(126, 'Can change question age', 32, 'change_questionage'),
(127, 'Can delete question age', 32, 'delete_questionage'),
(128, 'Can view question age', 32, 'view_questionage'),
(129, 'Can add competition_ mark scheme', 33, 'add_competition_markscheme'),
(130, 'Can change competition_ mark scheme', 33, 'change_competition_markscheme'),
(131, 'Can delete competition_ mark scheme', 33, 'delete_competition_markscheme'),
(132, 'Can view competition_ mark scheme', 33, 'view_competition_markscheme'),
(133, 'Can add auth token', 34, 'add_authtoken'),
(134, 'Can change auth token', 34, 'change_authtoken'),
(135, 'Can delete auth token', 34, 'delete_authtoken'),
(136, 'Can view auth token', 34, 'view_authtoken');

-- --------------------------------------------------------

--
-- Table structure for table `cmp_agegroup`
--

CREATE TABLE `cmp_agegroup` (
  `AgeGroupID` int(11) NOT NULL,
  `AgeGroupName` varchar(30) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmp_agegroup`
--

INSERT INTO `cmp_agegroup` (`AgeGroupID`, `AgeGroupName`, `created_on`) VALUES
(1, 'Aryabhata-English', '2018-12-11'),
(2, 'Brahmagupta-English', '2018-12-11'),
(3, 'Aryabhata-Hindi', '2018-12-11'),
(4, 'Aryabhata-English', '2019-01-02'),
(5, 'Bramhagupta-English', '2019-01-02'),
(6, 'Aryabhata-Marathi', '2019-01-02'),
(7, 'Aryabhata-Gujarati', '2019-02-11'),
(8, 'Bhaskara-English', '2019-02-11'),
(9, 'Bramhagupta-Gujarati', '2019-02-11'),
(10, 'Bhaskara-Gujarati', '2019-02-11'),
(11, 'Mahavira-English', '2019-02-11'),
(12, 'Aryabhata-English', '2020-04-11'),
(13, 'Brahmagupta-English', '2020-04-11'),
(14, 'Bhaskara-English', '2020-04-11'),
(15, 'Bhaskara-Gujarati', '2020-04-11'),
(16, 'Mahavira-English', '2020-04-11'),
(17, 'Mahavira-Gujarati', '2020-04-11'),
(18, 'Ramanujan-English', '2020-04-11'),
(19, 'Ramanujan-Gujarati', '2020-04-14'),
(20, 'Aryabhata-Marathi', '2020-04-14'),
(21, 'Aryabhata-Telugu', '2020-04-14'),
(22, 'Aryabhata-Tamil', '2020-04-14'),
(23, 'Brahmagupta-Gujarati', '2020-04-14'),
(24, 'Aryabhata-Gujarati', '2020-04-14'),
(25, 'Aryabhata-Kannada', '2020-05-11'),
(26, 'Brahmagupta-Marathi', '2020-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `cmp_agegroupclass`
--

CREATE TABLE `cmp_agegroupclass` (
  `AgeGroupClassID` int(11) NOT NULL,
  `AgeGroupID` int(11) DEFAULT NULL,
  `classID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmp_agegroupclass`
--

INSERT INTO `cmp_agegroupclass` (`AgeGroupClassID`, `AgeGroupID`, `classID`) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 2, 5),
(4, 2, 6),
(5, 3, 3),
(6, 3, 4),
(7, 4, 3),
(8, 4, 4),
(9, 5, 5),
(10, 5, 6),
(11, 6, 3),
(12, 6, 4),
(13, 7, 3),
(14, 7, 4),
(15, 8, 7),
(16, 8, 8),
(17, 9, 5),
(18, 9, 6),
(19, 10, 7),
(20, 10, 8),
(21, 11, 9),
(22, 11, 10),
(23, 12, 3),
(24, 12, 4),
(25, 13, 5),
(26, 13, 6),
(27, 14, 7),
(28, 14, 8),
(29, 15, 7),
(30, 15, 8),
(31, 16, 9),
(32, 16, 10),
(33, 17, 9),
(34, 17, 10),
(35, 18, 11),
(36, 18, 12),
(37, 19, 11),
(38, 19, 12),
(39, 20, 3),
(40, 20, 4),
(41, 21, 3),
(42, 21, 4),
(43, 22, 3),
(44, 22, 4),
(45, 23, 5),
(46, 23, 6),
(47, 24, 3),
(48, 24, 4),
(49, 25, 3),
(50, 25, 4),
(51, 25, 5),
(52, 26, 5),
(53, 26, 6),
(54, 26, 7);

-- --------------------------------------------------------

--
-- Table structure for table `cmp_competition`
--

CREATE TABLE `cmp_competition` (
  `competitionID` int(11) NOT NULL,
  `competitionName` varchar(50) NOT NULL,
  `competitionInfo` varchar(100) NOT NULL,
  `startDate` datetime(6) NOT NULL,
  `endDate` datetime(6) NOT NULL,
  `testDuration` time(6) NOT NULL,
  `competitionType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmp_competition`
--

INSERT INTO `cmp_competition` (`competitionID`, `competitionName`, `competitionInfo`, `startDate`, `endDate`, `testDuration`, `competitionType`) VALUES
(1, 'Bebras Challenge 2018', 'Bebras Challenge to be taken in 2018', '2018-11-05 08:00:00.000000', '2018-11-24 17:00:00.000000', '00:45:00.000000', 111001),
(2, 'Bebras Practice Challenge', 'Practice Challeng in 2018', '2018-03-01 00:00:00.000000', '2019-02-01 00:00:00.000000', '00:20:00.000000', 111002),
(3, 'Bebras Practice Challenge 2019', 'Bebras Practice Challenge to be taken in 2019', '2019-03-01 00:00:00.000000', '2020-01-01 00:00:00.000000', '00:20:00.000000', 111002),
(4, 'Bebras Challenge 2019', 'Main Challenge to be  taken in 2019', '2019-11-04 08:00:00.000000', '2019-11-23 17:00:00.000000', '00:45:00.000000', 111001),
(5, 'Bebras Challenge-I 2020', 'Main Challenge to be taken in 2020', '2020-05-04 08:00:00.000000', '2020-05-26 23:05:15.000000', '00:45:00.000000', 111001),
(6, 'Bebras Practice Challenge 2020', 'Practice Challenge to be taken in the year 2020', '2020-02-03 00:00:00.000000', '2021-01-04 00:00:00.000000', '00:45:00.000000', 111002),
(7, 'Bebras Challenge-II 2020', 'Main Challenge to be taken in November 2020', '2020-06-10 08:00:00.000000', '2020-11-27 17:00:00.000000', '00:45:00.000000', 111001),
(8, 'Bebras Challenge-III', '3rd Main challenge to be taken in the year of 2020.', '2020-12-04 08:00:00.000000', '2020-12-24 16:00:00.000000', '00:45:00.000000', 111001);

-- --------------------------------------------------------

--
-- Table structure for table `cmp_competitionage`
--

CREATE TABLE `cmp_competitionage` (
  `competitionAgeID` int(11) NOT NULL,
  `defaultBonusMarks` int(11) NOT NULL,
  `AgeGroupClassID` int(11) DEFAULT NULL,
  `competitionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmp_competitionage`
--

INSERT INTO `cmp_competitionage` (`competitionAgeID`, `defaultBonusMarks`, `AgeGroupClassID`, `competitionID`) VALUES
(1, 45, 1, 1),
(2, 45, 2, 1),
(3, 40, 3, 1),
(4, 40, 4, 1),
(5, 0, 5, 2),
(6, 0, 6, 2),
(7, 0, 1, 2),
(8, 0, 2, 2),
(9, 0, 7, 3),
(10, 0, 8, 3),
(11, 0, 9, 3),
(12, 0, 10, 3),
(13, 40, 7, 4),
(14, 40, 8, 4),
(15, 50, 11, 4),
(16, 50, 12, 4),
(17, 40, 9, 4),
(18, 40, 10, 4),
(19, 45, 15, 4),
(20, 45, 16, 4),
(21, 40, 21, 4),
(22, 40, 22, 4),
(23, 45, 13, 4),
(24, 45, 14, 4),
(25, 45, 17, 4),
(26, 45, 18, 4),
(27, 40, 23, 5),
(28, 40, 24, 5),
(29, 50, 39, 5),
(30, 50, 40, 5),
(31, 40, 41, 5),
(32, 40, 42, 5),
(33, 40, 27, 5),
(34, 40, 28, 5),
(35, 40, 25, 5),
(36, 40, 26, 5),
(37, 0, 35, 6),
(38, 0, 36, 6),
(39, 40, 23, 7),
(40, 40, 24, 7),
(41, 40, 49, 7),
(42, 40, 50, 7),
(43, 40, 51, 7),
(44, 40, 43, 7),
(45, 40, 44, 7),
(46, 40, 47, 7),
(47, 40, 48, 7),
(48, 30, 25, 8),
(49, 30, 26, 8),
(50, 25, 27, 8),
(51, 25, 28, 8);

-- --------------------------------------------------------

--
-- Table structure for table `cmp_competitionquestion`
--

CREATE TABLE `cmp_competitionquestion` (
  `competitionQuestionID` int(11) NOT NULL,
  `competitionAgeID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `questionLevelCodeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmp_competitionquestion`
--

INSERT INTO `cmp_competitionquestion` (`competitionQuestionID`, `competitionAgeID`, `questionID`, `questionLevelCodeID`) VALUES
(1, 1, 1, 107002),
(2, 2, 1, 107002),
(3, 3, 2, 107002),
(4, 4, 2, 107002),
(5, 1, 8, 107001),
(6, 2, 8, 107001),
(7, 3, 4, 107003),
(8, 4, 4, 107003),
(9, 7, 3, 107001),
(10, 8, 3, 107001),
(11, 7, 6, 107002),
(12, 8, 6, 107002),
(13, 5, 6, 107003),
(14, 6, 6, 107003),
(15, 5, 9, 107001),
(16, 6, 9, 107001),
(17, 5, 3, 107002),
(18, 6, 3, 107002),
(19, 1, 7, 107003),
(20, 2, 7, 107003),
(21, 1, 5, 107002),
(22, 2, 5, 107002),
(23, 1, 2, 107003),
(24, 2, 2, 107003),
(25, 3, 1, 107001),
(26, 4, 1, 107001),
(27, 9, 20, 107001),
(28, 10, 20, 107001),
(29, 9, 21, 107002),
(30, 10, 21, 107002),
(31, 11, 21, 107001),
(32, 12, 21, 107001),
(33, 11, 19, 107002),
(34, 12, 19, 107002),
(35, 13, 10, 107001),
(36, 14, 10, 107001),
(37, 13, 23, 107002),
(38, 14, 23, 107002),
(39, 13, 13, 107003),
(40, 14, 13, 107003),
(41, 13, 11, 107002),
(42, 14, 11, 107002),
(43, 13, 15, 107002),
(44, 14, 15, 107001),
(47, 17, 13, 107002),
(48, 18, 13, 107002),
(49, 17, 12, 107001),
(50, 18, 12, 107001),
(51, 17, 23, 107001),
(52, 18, 23, 107001),
(53, 17, 16, 107003),
(54, 18, 16, 107003),
(55, 17, 22, 107002),
(56, 18, 22, 107002),
(57, 15, 14, 107001),
(58, 16, 14, 107001),
(59, 15, 10, 107002),
(60, 16, 10, 107002),
(61, 15, 11, 107003),
(62, 16, 11, 107003),
(63, 25, 15, 107003),
(64, 26, 15, 107003),
(65, 25, 10, 107001),
(66, 26, 10, 107001),
(67, 25, 13, 107002),
(68, 26, 13, 107002),
(69, 23, 12, 107003),
(70, 24, 12, 107003),
(71, 23, 14, 107001),
(72, 24, 14, 107001),
(73, 23, 11, 107002),
(74, 24, 11, 107002),
(75, 19, 16, 107001),
(76, 20, 16, 107001),
(77, 19, 17, 107003),
(78, 20, 17, 107003),
(79, 19, 22, 107001),
(80, 20, 22, 107001),
(81, 19, 18, 107002),
(82, 20, 18, 107002),
(83, 19, 24, 107003),
(84, 20, 24, 107003),
(85, 21, 18, 107001),
(86, 22, 18, 107001),
(87, 21, 24, 107002),
(88, 22, 24, 107002),
(89, 21, 25, 107003),
(90, 22, 25, 107003),
(91, 21, 17, 107002),
(92, 22, 17, 107002),
(93, 29, 27, 107003),
(94, 30, 27, 107003),
(95, 29, 34, 107002),
(96, 30, 34, 107002),
(97, 29, 29, 107003),
(98, 30, 29, 107003),
(99, 31, 27, 107003),
(100, 32, 27, 107003),
(101, 31, 34, 107002),
(102, 32, 34, 107002),
(103, 31, 29, 107003),
(104, 32, 29, 107003),
(105, 27, 28, 107001),
(106, 28, 28, 107001),
(107, 27, 32, 107002),
(108, 28, 32, 107002),
(109, 27, 27, 107003),
(110, 28, 27, 107003),
(111, 27, 26, 107002),
(112, 28, 26, 107002),
(113, 27, 31, 107003),
(114, 28, 31, 107003),
(115, 35, 30, 107001),
(116, 36, 30, 107001),
(117, 35, 31, 107002),
(118, 36, 31, 107002),
(119, 35, 38, 107003),
(120, 36, 38, 107003),
(121, 35, 36, 107001),
(122, 36, 36, 107001),
(123, 35, 39, 107003),
(124, 36, 39, 107003),
(125, 35, 29, 107003),
(126, 36, 29, 107003),
(127, 33, 37, 107003),
(128, 34, 37, 107003),
(129, 33, 33, 107002),
(130, 34, 33, 107002),
(131, 33, 38, 107001),
(132, 34, 38, 107001),
(133, 33, 27, 107001),
(134, 34, 27, 107001),
(135, 37, 40, 107002),
(136, 38, 40, 107002),
(137, 37, 44, 107001),
(138, 38, 44, 107001),
(139, 37, 41, 107003),
(140, 38, 41, 107003),
(142, 41, 52, 107003),
(143, 42, 52, 107003),
(144, 43, 52, 107003),
(145, 41, 57, 107001),
(146, 42, 57, 107001),
(147, 43, 57, 107001),
(148, 41, 53, 107002),
(149, 42, 53, 107002),
(150, 43, 53, 107002),
(151, 41, 54, 107003),
(152, 42, 54, 107003),
(153, 43, 54, 107003),
(154, 41, 50, 107001),
(155, 42, 50, 107001),
(156, 43, 50, 107001),
(157, 41, 48, 107002),
(158, 42, 48, 107002),
(159, 43, 48, 107002),
(160, 41, 51, 107001),
(161, 42, 51, 107001),
(162, 43, 51, 107001),
(163, 41, 49, 107002),
(164, 42, 49, 107002),
(165, 43, 49, 107002),
(166, 46, 34, 107003),
(167, 47, 34, 107003),
(168, 46, 27, 107002),
(169, 47, 27, 107002),
(170, 44, 34, 107003),
(171, 45, 34, 107003),
(172, 44, 27, 107002),
(173, 45, 27, 107002),
(174, 39, 43, 107003),
(175, 40, 43, 107003),
(176, 39, 42, 107001),
(177, 40, 42, 107001),
(178, 39, 48, 107002),
(179, 40, 48, 107002),
(180, 39, 53, 107001),
(181, 40, 53, 107001),
(182, 39, 51, 107002),
(183, 40, 51, 107002),
(184, 39, 52, 107003),
(185, 40, 52, 107003),
(186, 39, 47, 107002),
(187, 40, 47, 107002),
(188, 39, 49, 107003),
(189, 40, 49, 107003),
(190, 39, 50, 107001),
(191, 40, 50, 107001),
(192, 39, 45, 107003),
(193, 40, 45, 107003),
(194, 39, 56, 107001),
(195, 40, 56, 107001),
(196, 39, 57, 107001),
(197, 40, 57, 107001),
(198, 39, 54, 107003),
(199, 40, 54, 107003),
(200, 39, 30, 107002),
(201, 40, 30, 107002),
(202, 39, 32, 107002),
(203, 40, 32, 107002),
(204, 48, 46, 107001),
(205, 49, 46, 107001),
(208, 48, 43, 107002),
(209, 49, 43, 107002),
(210, 48, 39, 107003),
(211, 49, 39, 107003),
(212, 48, 30, 107001),
(213, 49, 30, 107001),
(214, 50, 37, 107003),
(215, 51, 37, 107003);

-- --------------------------------------------------------

--
-- Table structure for table `cmp_competition_markscheme`
--

CREATE TABLE `cmp_competition_markscheme` (
  `competition_MarkSchemeID` int(11) NOT NULL,
  `correctMarks` int(11) NOT NULL,
  `incorrectMarks` int(11) NOT NULL,
  `competitionAgeID` int(11) NOT NULL,
  `questionLevelCodeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmp_competition_markscheme`
--

INSERT INTO `cmp_competition_markscheme` (`competition_MarkSchemeID`, `correctMarks`, `incorrectMarks`, `competitionAgeID`, `questionLevelCodeID`) VALUES
(1, 5, -2, 1, 107001),
(2, 5, -2, 2, 107001),
(3, 7, -3, 1, 107002),
(4, 7, -3, 2, 107002),
(5, 10, -5, 1, 107003),
(6, 10, -5, 2, 107003),
(7, 7, -3, 3, 107001),
(8, 7, -3, 4, 107001),
(9, 10, -5, 3, 107002),
(10, 10, -5, 4, 107002),
(11, 15, -7, 3, 107003),
(12, 15, -7, 4, 107003),
(13, 4, -1, 5, 107001),
(14, 4, -1, 6, 107001),
(15, 6, -2, 5, 107002),
(16, 6, -2, 6, 107002),
(17, 8, -3, 5, 107003),
(18, 8, -3, 6, 107003),
(19, 4, -1, 7, 107001),
(20, 4, -1, 8, 107001),
(21, 6, -2, 7, 107002),
(22, 6, -2, 8, 107002),
(23, 8, -3, 7, 107003),
(24, 8, -3, 8, 107003),
(25, 5, -1, 9, 107001),
(26, 5, -1, 10, 107001),
(27, 7, -2, 9, 107002),
(28, 7, -2, 10, 107002),
(29, 9, -3, 9, 107003),
(30, 9, -3, 10, 107003),
(31, 5, -1, 11, 107001),
(32, 5, -1, 12, 107001),
(33, 7, -2, 11, 107002),
(34, 7, -2, 12, 107002),
(35, 9, -3, 11, 107003),
(36, 9, -3, 12, 107003),
(37, 10, -2, 13, 107001),
(38, 10, -2, 14, 107001),
(39, 12, -3, 13, 107002),
(40, 12, -3, 14, 107002),
(41, 15, -5, 13, 107003),
(42, 15, -5, 14, 107003),
(43, 10, -2, 15, 107001),
(44, 10, -2, 16, 107001),
(45, 12, -3, 15, 107002),
(46, 12, -3, 16, 107002),
(47, 15, -5, 15, 107003),
(48, 15, -5, 16, 107003),
(49, 8, -2, 17, 107001),
(50, 8, -2, 18, 107001),
(51, 12, -3, 17, 107002),
(52, 12, -3, 18, 107002),
(53, 15, -5, 17, 107003),
(54, 15, -5, 18, 107003),
(55, 10, -2, 19, 107001),
(56, 10, -2, 20, 107001),
(57, 15, -3, 19, 107002),
(58, 15, -3, 20, 107002),
(59, 18, -5, 19, 107003),
(60, 18, -5, 20, 107003),
(61, 10, -3, 21, 107001),
(62, 10, -3, 22, 107001),
(63, 15, -5, 21, 107002),
(64, 15, -5, 22, 107002),
(65, 18, -7, 21, 107003),
(66, 18, -7, 22, 107003),
(67, 10, -2, 23, 107001),
(68, 10, -2, 24, 107001),
(69, 12, -3, 23, 107002),
(70, 12, -3, 24, 107002),
(71, 15, -5, 23, 107003),
(72, 15, -5, 24, 107003),
(73, 10, -2, 25, 107001),
(74, 10, -2, 26, 107001),
(75, 12, -3, 25, 107002),
(76, 12, -3, 26, 107002),
(77, 15, -5, 25, 107003),
(78, 15, -5, 26, 107003),
(79, 7, -1, 27, 107001),
(80, 12, -4, 27, 107003),
(81, 10, -2, 27, 107002),
(82, 12, -4, 28, 107003),
(83, 10, -2, 28, 107002),
(84, 7, -1, 28, 107001),
(85, 8, -1, 29, 107001),
(86, 8, -1, 30, 107001),
(87, 10, -3, 29, 107002),
(88, 10, -3, 30, 107002),
(89, 15, -5, 29, 107003),
(90, 15, -5, 30, 107003),
(91, 8, -1, 31, 107001),
(92, 8, -1, 32, 107001),
(93, 10, -2, 31, 107002),
(94, 15, -3, 31, 107003),
(95, 10, -2, 32, 107002),
(96, 15, -3, 32, 107003),
(97, 10, -3, 33, 107001),
(98, 12, -4, 33, 107002),
(99, 10, -3, 34, 107001),
(100, 12, -4, 34, 107002),
(101, 15, -5, 33, 107003),
(102, 15, -5, 34, 107003),
(103, 9, -2, 35, 107001),
(104, 12, -3, 35, 107002),
(105, 9, -2, 36, 107001),
(106, 15, -5, 35, 107003),
(107, 12, -3, 36, 107002),
(108, 15, -5, 36, 107003),
(109, 5, -1, 37, 107001),
(110, 5, -1, 38, 107001),
(111, 10, -3, 37, 107002),
(112, 15, -5, 37, 107003),
(113, 10, -3, 38, 107002),
(114, 15, -5, 38, 107003),
(115, 8, -1, 39, 107002),
(116, 10, -3, 39, 107001),
(117, 8, -1, 40, 107002),
(118, 10, -3, 40, 107001),
(119, 12, -5, 39, 107003),
(120, 12, -5, 40, 107003),
(121, 8, -4, 41, 107001),
(122, 10, -5, 41, 107002),
(123, 8, -4, 42, 107001),
(124, 10, -5, 42, 107002),
(125, 12, -6, 41, 107003),
(126, 8, -4, 43, 107001),
(127, 12, -6, 42, 107003),
(128, 10, -5, 43, 107002),
(129, 12, -6, 43, 107003),
(130, 8, -2, 44, 107001),
(131, 8, -2, 45, 107001),
(132, 10, -3, 44, 107002),
(133, 12, -5, 44, 107003),
(134, 10, -3, 45, 107002),
(135, 12, -5, 45, 107003),
(136, 8, -3, 46, 107001),
(137, 8, -3, 47, 107001),
(138, 10, -4, 46, 107002),
(139, 12, -5, 46, 107003),
(140, 10, -4, 47, 107002),
(141, 12, -5, 47, 107003),
(142, 5, -2, 48, 107002),
(143, 7, -3, 48, 107003),
(144, 7, -3, 49, 107003),
(145, 3, -1, 48, 107001),
(146, 5, -2, 49, 107002),
(147, 3, -1, 49, 107001),
(148, 4, -2, 50, 107001),
(149, 4, -2, 51, 107001),
(150, 6, -4, 50, 107002),
(151, 8, -6, 50, 107003),
(152, 6, -4, 51, 107002),
(153, 8, -6, 51, 107003);

-- --------------------------------------------------------

--
-- Table structure for table `cmp_questionage`
--

CREATE TABLE `cmp_questionage` (
  `QuestionAgeID` int(11) NOT NULL,
  `AgeGroupID` int(11) DEFAULT NULL,
  `questionID` int(11) NOT NULL,
  `questionLevelCodeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmp_questionage`
--

INSERT INTO `cmp_questionage` (`QuestionAgeID`, `AgeGroupID`, `questionID`, `questionLevelCodeID`) VALUES
(1, 1, 1, 107002),
(2, 2, 1, 107001),
(3, 1, 2, 107003),
(4, 2, 2, 107002),
(5, 1, 3, 107001),
(6, 3, 3, 107002),
(7, 2, 4, 107003),
(8, 1, 5, 107002),
(9, 2, 5, 107001),
(10, 1, 6, 107002),
(11, 3, 6, 107003),
(12, 1, 7, 107003),
(13, 1, 8, 107001),
(14, 3, 9, 107001),
(15, 4, 10, 107001),
(16, 6, 10, 107002),
(17, 7, 10, 107003),
(18, 9, 10, 107001),
(19, 4, 11, 107002),
(20, 5, 11, 107002),
(21, 8, 11, 107001),
(22, 7, 11, 107002),
(23, 6, 11, 107003),
(24, 9, 11, 107002),
(25, 4, 12, 107001),
(26, 7, 12, 107003),
(27, 5, 12, 107001),
(28, 5, 13, 107002),
(29, 9, 13, 107002),
(30, 8, 13, 107002),
(31, 4, 13, 107003),
(32, 6, 14, 107001),
(33, 4, 15, 107002),
(34, 7, 14, 107001),
(35, 9, 15, 107003),
(36, 5, 15, 107001),
(37, 5, 16, 107003),
(38, 8, 17, 107003),
(39, 11, 17, 107002),
(40, 8, 18, 107002),
(41, 11, 18, 107001),
(42, 5, 19, 107002),
(43, 4, 20, 107001),
(44, 8, 16, 107001),
(45, 4, 21, 107002),
(46, 5, 21, 107001),
(47, 5, 22, 107002),
(48, 8, 22, 107001),
(49, 4, 23, 107002),
(50, 8, 24, 107003),
(51, 11, 24, 107002),
(52, 11, 25, 107003),
(53, 8, 19, 107002),
(54, 5, 23, 107001),
(55, 12, 26, 107002),
(56, 13, 26, 107001),
(57, 12, 27, 107003),
(58, 13, 27, 107002),
(59, 14, 27, 107001),
(60, 20, 27, 107003),
(61, 21, 27, 107003),
(62, 13, 28, 107003),
(63, 14, 28, 107002),
(64, 12, 28, 107001),
(65, 13, 29, 107003),
(66, 14, 29, 107002),
(67, 16, 29, 107001),
(68, 12, 30, 107002),
(69, 13, 30, 107001),
(70, 12, 31, 107003),
(71, 13, 31, 107002),
(72, 16, 31, 107001),
(73, 12, 32, 107002),
(74, 13, 32, 107001),
(75, 16, 33, 107001),
(76, 14, 33, 107002),
(77, 12, 34, 107002),
(78, 13, 34, 107001),
(79, 21, 34, 107002),
(80, 20, 34, 107002),
(83, 12, 36, 107002),
(84, 13, 36, 107001),
(85, 14, 37, 107003),
(86, 16, 37, 107002),
(87, 13, 38, 107003),
(88, 14, 38, 107002),
(89, 14, 38, 107001),
(90, 13, 39, 107003),
(91, 14, 39, 107002),
(92, 16, 39, 107001),
(93, 20, 29, 107003),
(94, 21, 29, 107003),
(95, 18, 40, 107002),
(96, 18, 41, 107003),
(97, 12, 42, 107001),
(98, 12, 43, 107003),
(99, 13, 43, 107002),
(100, 14, 43, 107001),
(101, 18, 44, 107001),
(102, 12, 45, 107003),
(103, 13, 45, 107002),
(104, 14, 45, 107001),
(105, 13, 46, 107001),
(106, 12, 47, 107002),
(107, 12, 48, 107002),
(108, 13, 48, 107001),
(109, 12, 49, 107003),
(110, 12, 50, 107001),
(111, 12, 51, 107002),
(112, 13, 51, 107001),
(113, 12, 52, 107003),
(114, 25, 52, 107003),
(115, 12, 53, 107001),
(116, 25, 53, 107002),
(117, 12, 54, 107003),
(118, 25, 54, 107003),
(119, 12, 55, 107003),
(120, 14, 55, 107001),
(121, 12, 56, 107001),
(122, 12, 57, 107001),
(123, 25, 57, 107001),
(124, 25, 48, 107002),
(125, 25, 49, 107002),
(126, 25, 50, 107001),
(127, 25, 51, 107001),
(128, 24, 27, 107002),
(129, 22, 27, 107002),
(130, 22, 34, 107003),
(131, 24, 34, 107003),
(135, 12, 59, 107001),
(136, 12, 60, 107002),
(137, 12, 61, 107001);

-- --------------------------------------------------------

--
-- Table structure for table `cmp_studentenrollment`
--

CREATE TABLE `cmp_studentenrollment` (
  `studentEnrollmentID` int(11) NOT NULL,
  `timeTaken` time(6) NOT NULL,
  `score` int(11) NOT NULL,
  `additionalTime` time(6) DEFAULT NULL,
  `bonusMarks` int(11) NOT NULL,
  `competitionAgeID` int(11) NOT NULL,
  `languageCodeID` int(11) NOT NULL,
  `schoolClassID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmp_studentenrollment`
--

INSERT INTO `cmp_studentenrollment` (`studentEnrollmentID`, `timeTaken`, `score`, `additionalTime`, `bonusMarks`, `competitionAgeID`, `languageCodeID`, `schoolClassID`, `userID`) VALUES
(1, '00:38:00.000000', 17, NULL, 45, 1, 102001, 3, 8),
(2, '00:43:00.000000', 14, NULL, 45, 1, 102001, 3, 10),
(3, '00:30:00.000000', 22, NULL, 45, 1, 102001, 3, 12),
(4, '00:45:00.000000', 19, NULL, 45, 2, 102001, 4, 9),
(5, '00:33:00.000000', 9, NULL, 45, 2, 102001, 4, 11),
(6, '00:40:00.000000', 24, NULL, 45, 2, 102001, 4, 25),
(7, '00:35:00.000000', -1, NULL, 45, 1, 102001, 15, 13),
(8, '00:24:00.000000', 19, NULL, 45, 1, 102001, 15, 14),
(9, '00:40:00.000000', 12, NULL, 45, 1, 102001, 15, 16),
(10, '00:12:00.000000', -3, NULL, 45, 2, 102001, 16, 17),
(11, '00:39:32.000000', 22, NULL, 45, 2, 102001, 16, 18),
(12, '00:38:00.000000', 10, NULL, 40, 3, 102001, 5, 26),
(13, '00:20:21.000000', 0, NULL, 40, 3, 102001, 5, 27),
(14, '00:17:00.000000', 7, NULL, 40, 3, 102001, 5, 28),
(15, '00:20:52.000000', 10, NULL, 40, 3, 102001, 5, 29),
(16, '00:15:00.000000', -5, NULL, 40, 4, 102001, 6, 30),
(17, '00:17:23.000000', 0, NULL, 40, 4, 102001, 6, 31),
(18, '00:25:20.000000', 22, NULL, 40, 4, 102001, 6, 32),
(19, '00:19:00.000000', 10, NULL, 40, 3, 102001, 17, 19),
(20, '00:13:00.000000', -5, NULL, 40, 3, 102001, 17, 20),
(21, '00:35:00.000000', 10, NULL, 40, 3, 102001, 17, 21),
(22, '00:11:00.000000', 7, NULL, 40, 4, 102001, 18, 22),
(23, '00:25:21.000000', 22, NULL, 40, 4, 102001, 18, 23),
(24, '00:10:17.000000', 7, NULL, 40, 4, 102001, 18, 24),
(25, '00:21:00.000000', 17, NULL, 50, 15, 102005, 39, 43),
(26, '00:29:00.000000', 22, NULL, 50, 15, 102005, 39, 44),
(27, '00:30:12.000000', 5, NULL, 50, 15, 102005, 39, 45),
(28, '00:27:00.000000', 2, NULL, 50, 15, 102005, 39, 46),
(29, '00:29:27.000000', 17, NULL, 50, 16, 102005, 40, 47),
(30, '00:30:27.000000', 10, NULL, 50, 16, 102005, 40, 48),
(31, '00:28:12.000000', 5, NULL, 50, 16, 102005, 40, 49),
(32, '00:25:00.000000', 10, NULL, 50, 16, 102005, 40, 50),
(33, '00:26:00.000000', 5, NULL, 45, 23, 102003, 43, 57),
(34, '00:12:00.000000', 10, NULL, 45, 23, 102003, 43, 58),
(35, '00:31:59.000000', 10, NULL, 45, 23, 102003, 43, 59),
(36, '00:23:00.000000', 2, NULL, 45, 24, 102003, 44, 60),
(37, '00:29:00.000000', 17, NULL, 45, 24, 102003, 44, 61),
(38, '00:22:00.000000', 5, NULL, 45, 25, 102003, 45, 62),
(39, '00:25:00.000000', -10, NULL, 45, 25, 102003, 45, 63),
(40, '00:32:00.000000', 22, NULL, 45, 26, 102003, 46, 64),
(41, '00:28:40.000000', 10, NULL, 45, 26, 102003, 46, 65),
(42, '00:33:00.000000', 19, NULL, 40, 14, 102001, 28, 36),
(43, '00:32:00.000000', 16, NULL, 40, 14, 102001, 28, 37),
(44, '00:27:05.000000', 11, NULL, 40, 14, 102001, 28, 38),
(45, '00:20:00.000000', 4, NULL, 40, 14, 102001, 28, 39),
(46, '00:39:27.000000', 0, NULL, 40, 17, 102001, 29, 40),
(47, '00:42:00.000000', 10, NULL, 40, 17, 102001, 29, 41),
(48, '00:30:00.000000', 14, NULL, 40, 13, 102001, 3, 52),
(49, '00:34:00.000000', 11, NULL, 40, 13, 102001, 3, 53),
(50, '00:37:12.000000', -4, NULL, 40, 13, 102001, 3, 54),
(51, '00:33:00.000000', 13, NULL, 40, 21, 102001, 9, 55),
(52, '00:39:27.000000', 13, NULL, 40, 21, 102001, 9, 56),
(53, '00:36:00.000000', 16, NULL, 40, 14, 102001, 16, 66),
(54, '00:24:00.000000', 11, NULL, 40, 14, 102001, 16, 67),
(55, '00:17:05.000000', 16, NULL, 40, 14, 102001, 16, 68),
(56, '00:39:00.000000', 18, NULL, 40, 21, 102001, 21, 69),
(57, '00:30:00.000000', 5, NULL, 40, 21, 102001, 21, 70),
(58, '00:32:12.000000', 0, NULL, 40, 21, 102001, 21, 71),
(59, '00:29:00.000000', 18, NULL, 40, 22, 102001, 22, 72),
(60, '00:25:27.000000', -7, NULL, 40, 22, 102001, 22, 73),
(61, '00:38:00.000000', 14, NULL, 40, 14, 102001, 4, 8),
(62, '00:13:00.000000', -1, NULL, 40, 14, 102001, 4, 10),
(63, '00:35:00.000000', 19, NULL, 40, 14, 102001, 4, 12),
(64, '00:35:00.000000', 10, NULL, 40, 17, 102001, 5, 9),
(65, '00:33:00.000000', 15, NULL, 40, 17, 102001, 5, 11),
(66, '00:28:00.000000', 15, NULL, 40, 17, 102001, 5, 25),
(67, '00:25:00.000000', 26, NULL, 40, 14, 102001, 16, 13),
(68, '00:27:00.000000', 19, NULL, 40, 14, 102001, 16, 14),
(69, '00:36:00.000000', 16, NULL, 40, 14, 102001, 16, 16),
(70, '00:40:00.000000', 10, NULL, 40, 17, 102001, 17, 17),
(71, '00:39:32.000000', 55, NULL, 40, 17, 102001, 17, 18),
(72, '00:38:00.000000', 20, NULL, 45, 18, 102001, 6, 26),
(73, '00:41:21.000000', 25, NULL, 45, 18, 102001, 6, 27),
(74, '00:22:00.000000', 20, NULL, 45, 18, 102001, 6, 28),
(75, '00:30:52.000000', -5, NULL, 45, 18, 102001, 6, 29),
(76, '00:12:00.000000', 24, NULL, 45, 19, 102001, 7, 30),
(77, '00:23:00.000000', 19, NULL, 45, 19, 102001, 7, 31),
(78, '00:20:00.000000', 25, NULL, 45, 19, 102001, 7, 32),
(79, '00:29:00.000000', 10, NULL, 45, 18, 102001, 18, 19),
(80, '00:33:00.000000', 15, NULL, 45, 18, 102001, 18, 20),
(81, '00:38:00.000000', 5, NULL, 45, 18, 102001, 18, 21),
(82, '00:30:00.000000', 7, NULL, 45, 19, 102001, 19, 22),
(83, '00:25:01.000000', 18, NULL, 45, 19, 102001, 19, 23),
(84, '00:17:00.000000', 13, NULL, 45, 19, 102001, 19, 24),
(85, '00:28:00.000000', 22, NULL, 40, 31, 102007, 67, 86),
(86, '00:26:27.000000', 10, NULL, 40, 31, 102007, 67, 87),
(87, '00:32:00.000000', 10, NULL, 40, 31, 102007, 67, 88),
(88, '00:24:50.000000', 4, NULL, 40, 31, 102007, 67, 89),
(89, '00:18:00.000000', 22, NULL, 40, 32, 102007, 68, 90),
(90, '00:35:00.000000', 28, NULL, 40, 32, 102007, 68, 91),
(91, '00:22:11.000000', 4, NULL, 40, 32, 102007, 68, 92),
(92, '00:41:00.000000', 28, NULL, 40, 32, 102007, 68, 93),
(93, '00:29:00.000000', 10, NULL, 40, 32, 102007, 68, 94),
(94, '00:38:00.000000', 7, NULL, 40, 27, 102001, 89, 105),
(95, '00:12:00.000000', 19, NULL, 40, 27, 102001, 89, 106),
(96, '00:20:52.000000', 11, NULL, 40, 28, 102001, 90, 107),
(97, '00:30:23.000000', 15, NULL, 40, 28, 102001, 90, 108),
(98, '00:43:47.000000', 23, NULL, 40, 28, 102001, 90, 109),
(99, '00:21:17.000000', 11, NULL, 40, 33, 102001, 81, 99),
(100, '00:30:49.000000', 14, NULL, 40, 33, 102001, 81, 100),
(101, '00:27:20.000000', 18, NULL, 40, 34, 102001, 82, 101),
(102, '00:27:23.000000', 7, NULL, 40, 29, 102005, 40, 43),
(103, '00:22:00.000000', 0, NULL, 40, 29, 102005, 40, 44),
(104, '00:00:00.000000', 999, NULL, 40, 30, 102005, 40, 45),
(105, '00:00:00.000000', 999, NULL, 40, 30, 102005, 40, 46),
(106, '00:00:00.000000', 999, NULL, 40, 35, 102001, 5, 95),
(107, '00:00:00.000000', 999, NULL, 40, 35, 102001, 5, 96),
(108, '11:19:23.662262', 999, NULL, 40, 36, 102001, 6, 97),
(109, '00:00:00.000000', 999, NULL, 40, 36, 102001, 6, 98),
(110, '00:00:00.000000', 999, NULL, 40, 42, 102004, 67, 87),
(111, '16:16:43.820597', 999, NULL, 40, 42, 102004, 67, 86),
(112, '11:25:39.392270', 999, NULL, 40, 46, 102003, 44, 57),
(113, '00:04:56.000000', 8, NULL, 40, 47, 102003, 44, 58),
(114, '00:00:00.000000', 999, NULL, 40, 39, 102001, 77, 102),
(115, '00:00:00.000000', 999, NULL, 40, 39, 102001, 77, 103),
(116, '00:00:00.000000', 999, NULL, 40, 39, 102001, 77, 104),
(117, '00:00:00.000000', 999, NULL, 0, 48, 102001, 5, 27),
(118, '00:00:00.000000', 999, NULL, 0, 49, 102001, 6, 29),
(119, '00:00:00.000000', 999, NULL, 0, 49, 102001, 6, 30),
(120, '00:00:00.000000', 999, NULL, 0, 49, 102001, 6, 31),
(121, '00:00:00.000000', 999, NULL, 0, 49, 102001, 6, 32),
(122, '00:00:00.000000', 999, NULL, 0, 49, 102001, 6, 95),
(123, '00:00:00.000000', 999, NULL, 0, 49, 102001, 6, 96),
(124, '00:00:00.000000', 999, NULL, 0, 49, 102001, 6, 97);

-- --------------------------------------------------------

--
-- Table structure for table `cmp_studentresponse`
--

CREATE TABLE `cmp_studentresponse` (
  `studentResponseID` int(11) NOT NULL,
  `ansText` varchar(20) DEFAULT NULL,
  `time` double NOT NULL,
  `competitionQuestionID` int(11) NOT NULL,
  `optionTranslationID` int(11) DEFAULT NULL,
  `studentEnrollmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmp_studentresponse`
--

INSERT INTO `cmp_studentresponse` (`studentResponseID`, `ansText`, `time`, `competitionQuestionID`, `optionTranslationID`, `studentEnrollmentID`) VALUES
(1, NULL, 8, 1, 3, 1),
(2, NULL, 5, 5, 27, 1),
(3, NULL, 10, 19, 21, 1),
(4, NULL, 10, 23, 7, 1),
(5, NULL, 5, 21, 20, 1),
(6, NULL, 8, 1, 3, 2),
(7, NULL, 6, 5, 25, 2),
(8, NULL, 10, 19, 24, 2),
(9, NULL, 10, 23, 6, 2),
(10, NULL, 9, 21, 17, 2),
(11, NULL, 5, 1, 3, 3),
(12, NULL, 5, 5, 26, 3),
(13, NULL, 10, 19, 24, 3),
(14, NULL, 5, 23, 7, 3),
(15, NULL, 5, 21, 19, 3),
(16, NULL, 8, 2, 2, 4),
(17, NULL, 6, 6, 25, 4),
(18, NULL, 12, 20, 24, 4),
(19, NULL, 12, 24, 7, 4),
(20, NULL, 7, 22, 17, 4),
(21, NULL, 6, 2, 3, 5),
(22, NULL, 5, 6, 25, 5),
(23, NULL, 10, 20, 23, 5),
(24, NULL, 8, 24, 6, 5),
(25, NULL, 4, 22, 20, 5),
(26, NULL, 7.5, 2, 3, 6),
(27, NULL, 3, 6, 25, 6),
(28, NULL, 10, 20, 24, 6),
(29, NULL, 12, 24, 5, 6),
(30, NULL, 7.5, 22, 20, 6),
(31, NULL, 5.7, 1, 3, 7),
(32, NULL, 4.8, 5, 25, 7),
(33, NULL, 12.3, 19, 21, 7),
(34, NULL, 8, 23, 8, 7),
(35, NULL, 4.2, 21, 19, 7),
(36, NULL, 3.5, 1, 2, 8),
(37, NULL, 6.6, 1, 1, 9),
(38, NULL, 4.5, 5, 25, 8),
(39, NULL, 6, 19, 24, 8),
(40, NULL, 6, 23, 7, 8),
(41, NULL, 4, 21, 18, 8),
(42, NULL, 5.7, 5, 27, 9),
(43, NULL, 10.3, 19, 24, 9),
(44, NULL, 11, 23, 7, 9),
(45, NULL, 6.4, 21, 17, 9),
(46, NULL, 2.2, 2, 2, 10),
(47, NULL, 1, 6, 26, 10),
(48, NULL, 3, 20, 24, 10),
(49, NULL, 4, 24, 6, 10),
(50, NULL, 1.8, 22, 19, 10),
(51, NULL, 6.32, 2, 3, 11),
(52, NULL, 3, 6, 26, 11),
(53, NULL, 10, 20, 24, 11),
(54, NULL, 12, 24, 7, 11),
(55, NULL, 8, 22, 18, 11),
(56, NULL, 10.5, 3, 7, 12),
(57, NULL, 16, 7, 15, 12),
(58, NULL, 11.5, 25, 3, 12),
(59, NULL, 7.3, 3, 7, 13),
(60, NULL, 10.15, 7, 13, 13),
(61, NULL, 3.3, 25, 2, 13),
(62, NULL, 4.3, 3, 5, 14),
(63, NULL, 10.7, 7, 14, 14),
(64, NULL, 2, 25, 4, 14),
(65, NULL, 8.21, 3, 7, 15),
(66, NULL, 10.31, 7, 15, 15),
(67, NULL, 2, 25, 3, 15),
(68, NULL, 3.5, 4, 6, 16),
(69, NULL, 8, 8, 16, 16),
(70, NULL, 3.5, 26, 3, 16),
(71, NULL, 5.13, 4, 7, 17),
(72, NULL, 9.6, 8, 13, 17),
(73, NULL, 3.4, 26, 1, 17),
(74, NULL, 7, 4, 7, 18),
(75, NULL, 12.12, 8, 14, 18),
(76, NULL, 6.8, 26, 4, 18),
(77, NULL, 7, 3, 7, 19),
(78, NULL, 8, 7, 15, 19),
(79, NULL, 4, 25, 3, 19),
(80, NULL, 5.3, 3, 8, 20),
(81, NULL, 6, 7, 13, 20),
(82, NULL, 1.7, 25, 3, 20),
(83, NULL, 11.6, 3, 7, 21),
(84, NULL, 17, 7, 16, 21),
(85, NULL, 6.4, 25, 3, 21),
(86, NULL, 4.5, 4, 8, 22),
(87, NULL, 4.5, 8, 14, 22),
(88, NULL, 2, 26, 1, 22),
(89, NULL, 7, 4, 7, 23),
(90, NULL, 12.13, 8, 14, 23),
(91, NULL, 6.8, 26, 4, 23),
(92, NULL, 5.13, 4, 5, 24),
(93, NULL, 2.4, 8, 14, 24),
(94, NULL, 3, 26, 2, 24),
(95, NULL, 5.5, 57, 78, 25),
(96, NULL, 6.5, 59, 54, 25),
(97, NULL, 9, 61, 69, 25),
(98, NULL, 7, 57, 78, 26),
(99, NULL, 10.77, 59, 53, 26),
(100, NULL, 11.23, 61, 70, 26),
(101, NULL, 8.44, 57, 79, 27),
(102, NULL, 10.56, 59, 54, 27),
(103, NULL, 11.12, 61, 71, 27),
(104, NULL, 5, 57, 78, 28),
(105, NULL, 11, 59, 55, 28),
(106, NULL, 11, 61, 71, 28),
(107, NULL, 7.77, 58, 78, 29),
(108, NULL, 10.27, 60, 54, 29),
(109, NULL, 11.23, 62, 69, 29),
(110, NULL, 8.56, 58, 77, 30),
(111, NULL, 10.27, 60, 56, 30),
(112, NULL, 11.44, 62, 70, 30),
(113, NULL, 6, 58, 77, 31),
(114, NULL, 10.12, 60, 54, 31),
(115, NULL, 12, 62, 69, 31),
(116, NULL, 4.88, 58, 77, 32),
(117, NULL, 8.06, 60, 55, 32),
(118, NULL, 12.06, 62, 70, 32),
(119, NULL, 4.7, 36, 37, 42),
(120, NULL, 6.3, 38, 121, 42),
(121, NULL, 9, 40, 50, 42),
(122, NULL, 6.5, 42, 42, 42),
(123, NULL, 6.5, 44, 85, 42),
(124, NULL, 4.3, 36, 38, 43),
(125, NULL, 6.7, 38, 121, 43),
(126, NULL, 9, 40, 50, 43),
(127, NULL, 6, 42, 43, 43),
(128, NULL, 6, 44, 87, 43),
(129, NULL, 3.8, 36, 38, 44),
(130, NULL, 5.5, 38, 123, 44),
(131, NULL, 8, 40, 51, 44),
(132, NULL, 5.5, 42, 41, 44),
(133, NULL, 4.2, 44, 85, 44),
(134, NULL, 2.4, 36, 37, 45),
(135, NULL, 5.1, 38, 122, 45),
(136, NULL, 6.2, 40, 50, 45),
(137, NULL, 3.2, 42, 41, 45),
(138, NULL, 3.1, 44, 87, 45),
(139, NULL, 3.3, 35, 37, 48),
(140, NULL, 6.1, 37, 122, 48),
(141, NULL, 7.6, 39, 49, 48),
(142, NULL, 7, 41, 42, 48),
(143, NULL, 6, 43, 86, 48),
(144, NULL, 4, 35, 38, 49),
(145, NULL, 7, 37, 122, 49),
(146, NULL, 10, 39, 49, 49),
(147, NULL, 5, 41, 42, 49),
(148, NULL, 8, 43, 85, 49),
(149, NULL, 4.6, 35, 38, 50),
(150, NULL, 7.6, 37, 122, 50),
(151, NULL, 12, 39, 49, 50),
(152, NULL, 8, 41, 41, 50),
(153, NULL, 6, 43, 85, 50),
(154, NULL, 3, 36, 38, 53),
(155, NULL, 5.3, 38, 122, 53),
(156, NULL, 13, 40, 50, 53),
(157, NULL, 7.3, 42, 41, 53),
(158, NULL, 7.4, 44, 87, 53),
(159, NULL, 2, 36, 38, 54),
(160, NULL, 3.2, 38, 122, 54),
(161, NULL, 8, 40, 49, 54),
(162, NULL, 5.8, 42, 41, 54),
(163, NULL, 5, 44, 86, 54),
(164, NULL, 1.05, 36, 38, 55),
(165, NULL, 7, 38, 122, 55),
(166, NULL, 4, 40, 50, 55),
(167, NULL, 3.5, 42, 41, 55),
(168, NULL, 1.5, 44, 85, 55),
(169, NULL, 6, 36, 37, 61),
(170, NULL, 8, 38, 123, 61),
(171, NULL, 11, 40, 49, 61),
(172, NULL, 8.7, 42, 42, 61),
(173, NULL, 4.3, 44, 87, 61),
(174, NULL, 0.5, 36, 37, 62),
(175, NULL, 2.5, 38, 121, 62),
(176, NULL, 6, 40, 48, 62),
(177, NULL, 3, 42, 44, 62),
(178, NULL, 1, 44, 86, 62),
(179, NULL, 4, 36, 39, 63),
(180, NULL, 6, 38, 124, 63),
(181, NULL, 13, 40, 50, 63),
(182, NULL, 6, 42, 42, 63),
(183, NULL, 6, 44, 85, 63),
(184, NULL, 2.7, 36, 38, 67),
(185, NULL, 3.7, 38, 121, 67),
(186, NULL, 9.6, 40, 51, 67),
(187, NULL, 5, 42, 42, 67),
(188, NULL, 4, 44, 86, 67),
(189, NULL, 3, 36, 37, 68),
(190, NULL, 4, 38, 122, 68),
(191, NULL, 11, 40, 50, 68),
(192, NULL, 3.2, 42, 43, 68),
(193, NULL, 5.8, 44, 86, 68),
(194, NULL, 4, 36, 38, 69),
(195, NULL, 6, 38, 121, 69),
(196, NULL, 14, 40, 50, 69),
(197, NULL, 7, 42, 44, 69),
(198, NULL, 5, 44, 87, 69),
(199, NULL, 11, 69, 77, 33),
(200, NULL, 5, 71, 89, 33),
(201, NULL, 10, 73, 58, 33),
(202, NULL, 6, 69, 76, 34),
(203, NULL, 2.43, 71, 91, 34),
(204, NULL, 3.57, 73, 57, 34),
(205, NULL, 13.56, 70, 76, 35),
(206, NULL, 7.03, 72, 89, 35),
(207, NULL, 11, 74, 57, 35),
(208, NULL, 9, 70, 75, 36),
(209, NULL, 6.5, 72, 90, 36),
(210, NULL, 7.5, 74, 60, 36),
(211, NULL, 12, 70, 77, 37),
(212, NULL, 6.75, 72, 90, 37),
(213, NULL, 10.25, 74, 58, 37),
(214, NULL, 9, 63, 93, 38),
(215, NULL, 5.5, 65, 63, 38),
(216, NULL, 7.5, 67, 84, 38),
(217, NULL, 11, 63, 96, 39),
(218, NULL, 4, 65, 61, 39),
(219, NULL, 10, 67, 83, 39),
(220, NULL, 14.22, 64, 94, 40),
(221, NULL, 7.48, 66, 62, 40),
(222, NULL, 10.3, 68, 82, 40),
(223, NULL, 12, 64, 94, 41),
(224, NULL, 6, 66, 64, 41),
(225, NULL, 10.4, 68, 82, 41),
(226, NULL, 7.7, 47, 49, 46),
(227, NULL, 4.05, 49, 47, 46),
(228, NULL, 5, 51, 122, 46),
(229, NULL, 13.11, 53, 97, 46),
(230, NULL, 10.4, 55, 117, 46),
(231, NULL, 8.2, 47, 49, 47),
(232, NULL, 5.4, 49, 45, 47),
(233, NULL, 6.4, 51, 122, 47),
(234, NULL, 14, 53, 100, 47),
(235, NULL, 8, 55, 117, 47),
(236, NULL, 7.5, 47, 50, 64),
(237, NULL, 5, 49, 47, 64),
(238, NULL, 5, 51, 123, 64),
(239, NULL, 9, 53, 99, 64),
(240, NULL, 8.5, 55, 118, 64),
(241, NULL, 7.5, 47, 51, 65),
(242, NULL, 4, 49, 48, 65),
(243, NULL, 4.73, 51, 123, 65),
(244, NULL, 11.27, 53, 99, 65),
(245, NULL, 6, 55, 119, 65),
(246, NULL, 6, 47, 51, 66),
(247, NULL, 3, 49, 45, 66),
(248, NULL, 5, 51, 122, 66),
(249, NULL, 9, 53, 99, 66),
(250, NULL, 5, 55, 118, 66),
(251, NULL, 8, 47, 51, 70),
(252, NULL, 4.2, 49, 45, 70),
(253, NULL, 6, 51, 122, 70),
(254, NULL, 13, 53, 100, 70),
(255, NULL, 8.8, 55, 117, 70),
(256, NULL, 7, 47, 50, 71),
(257, NULL, 4.2, 49, 45, 71),
(258, NULL, 6, 51, 123, 71),
(259, NULL, 14, 53, 99, 71),
(260, NULL, 8.12, 55, 117, 71),
(261, NULL, 8, 48, 52, 72),
(262, NULL, 5.4, 50, 45, 72),
(263, NULL, 3.5, 52, 123, 72),
(264, NULL, 11.5, 54, 97, 72),
(265, NULL, 9.6, 56, 117, 72),
(266, NULL, 8, 48, 49, 73),
(267, NULL, 5.2, 50, 45, 73),
(268, NULL, 6.1, 52, 123, 73),
(269, NULL, 13, 54, 99, 73),
(270, NULL, 9, 56, 119, 73),
(271, NULL, 4, 48, 50, 74),
(272, NULL, 2, 50, 47, 74),
(273, NULL, 3, 52, 124, 74),
(274, NULL, 8, 54, 99, 74),
(275, NULL, 5, 56, 120, 74),
(276, NULL, 7.31, 48, 52, 75),
(277, NULL, 3.21, 50, 45, 75),
(278, NULL, 5.5, 52, 121, 75),
(279, NULL, 8.5, 54, 98, 75),
(280, NULL, 6, 56, 120, 75),
(281, NULL, 7, 48, 49, 79),
(282, NULL, 2, 50, 46, 79),
(283, NULL, 5, 52, 123, 79),
(284, NULL, 8, 54, 97, 79),
(285, NULL, 7, 56, 117, 79),
(286, NULL, 7.66, 48, 52, 80),
(287, NULL, 4.17, 50, 45, 80),
(288, NULL, 5, 52, 122, 80),
(289, NULL, 10, 54, 99, 80),
(290, NULL, 6.17, 56, 118, 80),
(291, NULL, 8.6, 48, 52, 81),
(292, NULL, 3.4, 50, 45, 81),
(293, NULL, 5.5, 52, 123, 81),
(294, NULL, 11.5, 54, 98, 81),
(295, NULL, 9, 56, 119, 81),
(296, NULL, 5.2, 85, 104, 51),
(297, NULL, 7.8, 87, 127, 51),
(298, NULL, 12.54, 89, 132, 51),
(299, '3', 7.46, 91, NULL, 51),
(300, NULL, 6.08, 85, 104, 52),
(301, NULL, 9.05, 87, 128, 52),
(302, NULL, 13.64, 89, 130, 52),
(303, '4', 10.5, 91, NULL, 52),
(304, NULL, 7.08, 85, 104, 56),
(305, NULL, 8.05, 87, 126, 56),
(306, NULL, 13.7, 89, 131, 56),
(307, '1', 10.17, 91, NULL, 56),
(308, NULL, 5, 85, 103, 57),
(309, NULL, 6.92, 87, 126, 57),
(310, NULL, 11.08, 89, 131, 57),
(311, '2', 7, 91, NULL, 57),
(312, NULL, 5.06, 85, 101, 58),
(313, NULL, 7.88, 87, 125, 58),
(314, NULL, 10.06, 89, 129, 58),
(315, '4', 9.12, 91, NULL, 58),
(316, NULL, 4, 86, 104, 59),
(317, NULL, 7.29, 88, 125, 59),
(318, NULL, 12.71, 90, 131, 59),
(319, '3', 5, 92, NULL, 59),
(320, NULL, 3.02, 86, 104, 60),
(321, NULL, 6.08, 88, 128, 60),
(322, NULL, 9.09, 90, 130, 60),
(323, '2', 7.08, 92, NULL, 60),
(324, NULL, 0.25, 75, 97, 76),
(325, '3', 2.75, 77, NULL, 76),
(326, '', 0.5, 79, 118, 76),
(327, '', 3.5, 81, 104, 76),
(328, '', 5, 83, 137, 76),
(329, NULL, 3, 75, 99, 77),
(330, '4', 4, 77, NULL, 77),
(331, '', 3, 79, 119, 77),
(332, '', 7, 81, 102, 77),
(333, '', 6, 83, 139, 77),
(334, '', 2.34, 75, 99, 78),
(335, '1', 5.33, 77, NULL, 78),
(336, '', 3.33, 79, 117, 78),
(337, '', 4.05, 81, 104, 78),
(338, '', 6.95, 83, 140, 78),
(339, NULL, 4.37, 75, 99, 82),
(340, '2', 7.63, 77, NULL, 82),
(341, NULL, 3, 79, 117, 82),
(342, NULL, 6.93, 81, 101, 82),
(343, NULL, 8.07, 83, 139, 82),
(344, NULL, 2.21, 75, 99, 83),
(345, '1', 7.79, 77, NULL, 83),
(346, NULL, 1, 79, 118, 83),
(347, NULL, 5, 81, 103, 83),
(348, NULL, 9.01, 83, 137, 83),
(349, NULL, 1.08, 75, 98, 84),
(350, '2', 6.24, 77, NULL, 84),
(351, NULL, 0.75, 79, 117, 84),
(352, NULL, 3.57, 81, 104, 84),
(353, NULL, 5.36, 83, 139, 84),
(354, NULL, 9.47, 99, 170, 85),
(355, NULL, 10.53, 103, 189, 85),
(356, NULL, 8, 101, 177, 85),
(357, NULL, 7.77, 99, 171, 86),
(358, NULL, 11.23, 103, 189, 86),
(359, NULL, 7.27, 101, 178, 86),
(360, NULL, 10.53, 99, 169, 87),
(361, NULL, 10.87, 103, 190, 87),
(362, NULL, 10.16, 101, 179, 87),
(363, NULL, 8.25, 99, 171, 88),
(364, NULL, 9.5, 103, 192, 88),
(365, NULL, 6.75, 101, 177, 88),
(366, NULL, 4.33, 100, 169, 89),
(367, NULL, 8.47, 104, 191, 89),
(368, NULL, 5.2, 102, 177, 89),
(369, NULL, 13.99, 100, 169, 90),
(370, NULL, 14.01, 104, 189, 90),
(371, NULL, 7, 102, 179, 90),
(372, NULL, 7.06, 100, 170, 91),
(373, NULL, 7.05, 104, 191, 91),
(374, NULL, 8, 102, 177, 91),
(375, NULL, 15.08, 100, 169, 92),
(376, NULL, 16.82, 104, 189, 92),
(377, NULL, 9.1, 102, 178, 92),
(378, NULL, 6.94, 100, 170, 93),
(379, NULL, 12.88, 104, 189, 93),
(380, NULL, 9.18, 102, 180, 93),
(381, NULL, 3.7, 105, 142, 94),
(382, '7014832', 4.3, 107, NULL, 94),
(383, NULL, 10, 109, 134, 94),
(384, NULL, 7.43, 111, 133, 94),
(385, NULL, 13.53, 113, 152, 94),
(386, NULL, 0.75, 105, 142, 95),
(387, '7014831', 1.5, 107, NULL, 95),
(388, NULL, 3.5, 109, 138, 95),
(389, NULL, 2, 111, 133, 95),
(390, NULL, 4.25, 113, 149, 95),
(391, NULL, 2.23, 106, 141, 96),
(392, '7014831', 4.23, 108, NULL, 96),
(393, '', 7.54, 110, 139, 96),
(394, '', 3.21, 112, 133, 96),
(395, '', 3.31, 114, 150, 96),
(396, '', 5, 106, 144, 97),
(397, '7014829', 6, 108, NULL, 97),
(398, '', 8, 110, 138, 97),
(399, '', 4.23, 112, 133, 97),
(400, '', 7, 114, 151, 97),
(401, NULL, 6.23, 106, 142, 98),
(402, '7014831', 5.24, 108, NULL, 98),
(403, NULL, 13, 110, 137, 98),
(404, NULL, 7, 112, 134, 98),
(405, NULL, 12, 114, 150, 98),
(406, NULL, 7.1, 127, 162, 99),
(407, NULL, 5, 129, 153, 99),
(408, NULL, 4.07, 131, 174, 99),
(409, NULL, 5, 133, 165, 99),
(410, NULL, 10.43, 127, 161, 100),
(411, NULL, 9.5, 129, 155, 100),
(412, NULL, 5.5, 131, 174, 100),
(413, NULL, 5.06, 133, 166, 100),
(414, NULL, 11, 128, 163, 101),
(415, NULL, 6.1, 130, 154, 101),
(416, NULL, 5.1, 132, 175, 101),
(417, NULL, 5, 134, 165, 101),
(418, NULL, 7.13, 93, 165, 102),
(419, NULL, 6.07, 95, 182, 102),
(420, NULL, 14, 97, 194, 102),
(421, NULL, 6.09, 93, 167, 103),
(422, NULL, 5.81, 95, 181, 103),
(423, NULL, 10.1, 97, 196, 103),
(424, NULL, 0.1167, 126, 145, 108),
(425, '21', 0.25, 116, NULL, 108),
(426, NULL, 0.3667, 118, 149, 108),
(427, NULL, 0.1167, 158, 232, 111),
(428, '6', 0.2, 164, NULL, 111),
(429, NULL, 3.2166, 169, 291, 113),
(430, NULL, 1.7333, 167, 297, 113),
(431, NULL, 0.1, 168, 291, 112),
(432, NULL, 0.0833, 166, 297, 112),
(433, NULL, 0.1834, 155, NULL, 111),
(434, NULL, 0.0667, 161, 245, 111),
(435, NULL, 0.1, 143, 256, 111),
(436, NULL, 0.05, 149, 266, 111),
(437, NULL, 0.05, 152, 279, 111),
(438, NULL, 0.0667, 146, 287, 111);

-- --------------------------------------------------------

--
-- Table structure for table `com_address`
--

CREATE TABLE `com_address` (
  `AddressID` int(11) NOT NULL,
  `Line1` longtext NOT NULL,
  `Line2` longtext NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` int(11) NOT NULL,
  `latitude` decimal(25,20) DEFAULT NULL,
  `longitude` decimal(25,20) DEFAULT NULL,
  `countryID` int(11) NOT NULL,
  `districtID` int(11) NOT NULL,
  `stateID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_address`
--

INSERT INTO `com_address` (`AddressID`, `Line1`, `Line2`, `city`, `pincode`, `latitude`, `longitude`, `countryID`, `districtID`, `stateID`) VALUES
(1, 'Near, HS-2, Sector No. : 27A,', 'Sant Tukaram Garden Rd, Pradhikaran', 'Nigdi', 411007, '18.65258800000000000000', '73.77268800000000000000', 99, 393, 12),
(2, 'Off Senapati Bapat Road,', 'Patrakar Nagar Rd, Gokhalenagar', 'Pune', 411016, '18.52356100000000000000', '73.82569000000000000000', 99, 393, 12),
(3, 'Block- DG/3, Action Area-I', 'Newtown, Rajarhat', 'Newtown', 700156, '22.58171400000000000000', '88.47889400000000000000', 99, 719, 24),
(4, 'Wafgaon - Loni Rd', 'Takalkar Wadi', 'Takalkarwadi', 410510, '18.88767000000000000000', '74.01163600000000000000', 99, 393, 12),
(5, 'Opp. Sardar Baug, Shanala Road,', 'Punit Nagar, Morbi', 'Morbi', 363641, '22.96387000000000000000', '70.81338000000000000000', 99, 201, 4),
(6, 'Chottanikkara Vandippetta Rd', 'Thiruvaniyoor', 'Kochi', 682308, '11.71144400000000000000', '76.25020000000000000000', 99, 303, 10),
(7, '16, 6th B Main Rd, Dollar Layout,', '3rd Phase, J. P. Nagar,', 'Bengaluru', 560078, '12.91275400000000000000', '77.59740200000000000000', 99, 274, 9),
(8, 'Navakheda, Mahaveer Tapobhumi', 'Sanwer Road', 'Ujjain', 456001, '23.10649100000000000000', '75.81017200000000000000', 99, 365, 11),
(9, 'Sohabatia Bagh', 'Allahpur', 'Prayagraj', 211006, '25.44707600000000000000', '81.86319100000000000000', 99, 620, 23),
(10, 'Opposite to Main Road', 'Aashirwad Lawns', 'Gandhinagar', 416119, '16.70541780000000000000', '74.30530030000000000000', 99, 382, 12);

-- --------------------------------------------------------

--
-- Table structure for table `com_class`
--

CREATE TABLE `com_class` (
  `classID` int(11) NOT NULL,
  `classNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_class`
--

INSERT INTO `com_class` (`classID`, `classNo`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `com_code`
--

CREATE TABLE `com_code` (
  `codeID` int(11) NOT NULL,
  `codeName` varchar(100) NOT NULL,
  `codeGroupID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_code`
--

INSERT INTO `com_code` (`codeID`, `codeName`, `codeGroupID`) VALUES
(100001, 'Male', 100),
(100002, 'Female', 100),
(100003, 'Other', 100),
(101001, 'Government', 101),
(101002, 'Private', 101),
(101003, 'Other', 101),
(102001, 'English', 102),
(102002, 'Hindi', 102),
(102003, 'Gujarati', 102),
(102004, 'Kannada', 102),
(102005, 'Marathi', 102),
(102006, 'Tamil', 102),
(102007, 'Telugu', 102),
(102008, 'Malayalam', 102),
(102009, 'Punjabi', 102),
(103001, 'Mcqs_With_Images', 103),
(103002, 'Mcqs', 103),
(104001, 'Algorithms and Programming', 104),
(104002, 'Iterative Pattern and Process', 104),
(104003, 'Information Processing', 104),
(104004, 'Systematic Listing, Counting and Reasoning', 104),
(104005, 'Discrete Modelling', 104),
(105001, 'ImageQuestion', 105),
(105002, 'ImageOption', 105),
(105003, 'ImageAnsExplanation', 105),
(106001, 'unapproved', 106),
(106002, 'approved', 106),
(106003, 'inactive', 106),
(107001, 'A', 107),
(107002, 'B', 107),
(107003, 'C', 107),
(108001, 'Abstraction', 108),
(108002, 'Algorithmic Thinking', 108),
(108003, 'Decomposition', 108),
(108004, 'Evaluation', 108),
(109001, 'schoolID', 109),
(109002, 'stateID', 109),
(109003, 'countryID', 109),
(110001, 'Khed', 110),
(110002, 'Others', 110),
(110003, 'Ekya', 110),
(111001, 'Main Challenge', 111),
(111002, 'Practice Challenge', 111);

-- --------------------------------------------------------

--
-- Table structure for table `com_codegroup`
--

CREATE TABLE `com_codegroup` (
  `codeGroupID` int(11) NOT NULL,
  `codeGroupName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_codegroup`
--

INSERT INTO `com_codegroup` (`codeGroupID`, `codeGroupName`) VALUES
(100, 'gender'),
(101, 'school'),
(102, 'language'),
(103, 'question'),
(104, 'domain'),
(105, 'image'),
(106, 'statusCode'),
(107, 'questionLevel'),
(108, 'skills'),
(109, 'locationType'),
(110, 'schoolGroup'),
(111, 'competitionType');

-- --------------------------------------------------------

--
-- Table structure for table `com_countries`
--

CREATE TABLE `com_countries` (
  `countryID` int(11) NOT NULL,
  `iso` varchar(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` varchar(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_countries`
--

INSERT INTO `com_countries` (`countryID`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `com_districts`
--

CREATE TABLE `com_districts` (
  `districtID` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `stateID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_districts`
--

INSERT INTO `com_districts` (`districtID`, `name`, `stateID`) VALUES
(1, 'North Andaman', 31),
(2, 'South Andaman', 31),
(3, 'Nicobar', 31),
(4, 'Anantapur', 1),
(5, 'Chittoor', 1),
(6, 'East Godavari', 1),
(7, 'Guntur', 1),
(8, 'Kadapa', 1),
(9, 'Krishna', 1),
(10, 'Kurnool', 1),
(11, 'Prakasam', 1),
(12, 'Srikakulam', 1),
(13, 'Sri Potti Sriramulu Nellore', 1),
(14, 'Vishakhapatnam', 1),
(15, 'Vizianagaram', 1),
(16, 'West Godavari', 1),
(17, 'Anjaw', 3),
(18, 'Changlang', 3),
(19, 'East Siang', 3),
(20, 'East Kameng', 3),
(21, 'Kamle', 3),
(22, 'Kra Daadi', 3),
(23, 'Kurung Kumey', 3),
(24, 'Lepa Rada', 3),
(25, 'Lohit', 3),
(26, 'Longding', 3),
(27, 'Lower Dibang Valley', 3),
(28, 'Lower Siang', 3),
(29, 'Lower Subansiri', 3),
(30, 'Papum Pare', 3),
(31, 'Namsai', 3),
(32, 'Pakke-Kessang', 3),
(33, 'Shi Yomi', 3),
(34, 'Siang', 3),
(35, 'Tawang', 3),
(36, 'Tirap', 3),
(37, 'Upper Dibang Valley', 3),
(38, 'Upper Siang', 3),
(39, 'Upper Subansiri', 3),
(40, 'West Kameng', 3),
(41, 'West Siang', 3),
(42, 'Baksa', 2),
(43, 'Barpeta', 2),
(44, 'Bishwanath', 2),
(45, 'Bongaigaon', 2),
(46, 'Cachar', 2),
(47, 'Charaideo', 2),
(48, 'Chirang', 2),
(49, 'Darrang', 2),
(50, 'Dhemaji', 2),
(51, 'Dima Hasao', 2),
(52, 'Dhubri', 2),
(53, 'Dibrugarh', 2),
(54, 'Goalpara', 2),
(55, 'Golaghat', 2),
(56, 'Hailakandi', 2),
(57, 'Jorhat', 2),
(58, 'Hojai', 2),
(59, 'Kamrup', 2),
(60, 'Kamrup Metropolitan', 2),
(61, 'Karbi Anglong', 2),
(62, 'Karimganj', 2),
(63, 'Kokrajhar', 2),
(64, 'Lakhimpur', 2),
(65, 'Majuli', 2),
(66, 'Morigaon', 2),
(67, 'Nagaon', 2),
(68, 'Nalbari', 2),
(69, 'Sivasagar', 2),
(70, 'Sonitpur', 2),
(71, 'South Salmara', 2),
(72, 'Tinsukia', 2),
(73, 'Udalguri', 2),
(74, 'West Karbi Anglong', 2),
(113, 'Araria', 5),
(114, 'Arwal', 5),
(115, 'Aurangabad', 5),
(116, 'Banka', 5),
(117, 'Begusarai', 5),
(118, 'Bhagalpur', 5),
(119, 'Bhojpur', 5),
(120, 'Buxar', 5),
(121, 'Darbhanga', 5),
(122, 'East Champaran', 5),
(123, 'Gaya', 5),
(124, 'Gopalganj', 5),
(125, 'Jamui', 5),
(126, 'Jehanabad', 5),
(127, 'Kaimur', 5),
(128, 'Katihar', 5),
(129, 'Khagaria', 5),
(130, 'Kishanganj', 5),
(131, 'Lakhisarai', 5),
(132, 'Madhepura', 5),
(133, 'Madhubani', 5),
(134, 'Munger', 5),
(135, 'Muzaffarpur', 5),
(136, 'Nalanda', 5),
(137, 'Nawada', 5),
(138, 'Patna', 5),
(139, 'Purnia', 5),
(140, 'Rohtas', 5),
(141, 'Saharsa', 5),
(142, 'Samastipur', 5),
(143, 'Saran', 5),
(144, 'Sheikhpura', 5),
(145, 'Sheohar', 5),
(146, 'Sitamarhi', 5),
(147, 'Siwan', 5),
(148, 'Supaul', 5),
(149, 'Vaishali', 5),
(150, 'West Champaran', 5),
(151, 'Balod', 34),
(152, 'Baloda Bazar', 34),
(153, 'Balrampur', 34),
(154, 'Bastar', 34),
(155, 'Bijapur', 34),
(156, 'Bemetara', 34),
(157, 'Bilaspur', 34),
(158, 'Dantewada', 34),
(159, 'Dhamtari', 34),
(160, 'Durg', 34),
(161, 'Gariaband', 34),
(162, 'Gaurela-Pendra-Marwahi', 34),
(163, 'Jashpur', 34),
(164, 'Janjgir-Champa', 34),
(165, 'Korba', 34),
(166, 'Koriya', 34),
(167, 'Kanker', 34),
(168, 'Kondagaon', 34),
(169, 'Kabirdham', 34),
(170, 'Mahasamund', 34),
(171, 'Mungeli', 34),
(172, 'Narayanpur', 34),
(173, 'Raigarh', 34),
(174, 'Rajnandgaon', 34),
(175, 'Raipur', 34),
(176, 'Surguja', 34),
(177, 'Sukma', 34),
(178, 'Surajpur', 34),
(179, 'North Goa', 25),
(180, 'South Goa', 25),
(181, 'Ahmedabad', 4),
(182, 'Amreli', 4),
(183, 'Anand', 4),
(184, 'Aravalli', 4),
(185, 'Banaskantha', 4),
(186, 'Bharuch', 4),
(187, 'Bhavnagar', 4),
(188, 'Botad', 4),
(189, 'Chhota Udepur', 4),
(190, 'Dahod', 4),
(191, 'Dang', 4),
(192, 'Devbhoomi Dwarka', 4),
(193, 'Gandhinagar', 4),
(194, 'Gir Somnath', 4),
(195, 'Jamnagar', 4),
(196, 'Junagadh', 4),
(197, 'Kutch', 4),
(198, 'Kheda', 4),
(199, 'Mahisagar', 4),
(200, 'Mehsana', 4),
(201, 'Morbi', 4),
(202, 'Narmada', 4),
(203, 'Navsari', 4),
(204, 'Patan', 4),
(205, 'Panchmahal', 4),
(206, 'Porbandar', 4),
(207, 'Rajkot', 4),
(208, 'Sabarkantha', 4),
(209, 'Surendranagar', 4),
(210, 'Surat', 4),
(211, 'Tapi', 4),
(212, 'Vadodara', 4),
(213, 'Valsad', 4),
(214, 'Ambala', 6),
(215, 'Bhiwani', 6),
(216, 'Faridabad', 6),
(217, 'Charkhi Dadri', 6),
(218, 'Fatehabad', 6),
(219, 'Gurgaon', 6),
(220, 'Hissar', 6),
(221, 'Jhajjar', 6),
(222, 'Jind', 6),
(223, 'Karnal', 6),
(224, 'Kaithal', 6),
(225, 'Kurukshetra', 6),
(226, 'Mahendragarh', 6),
(227, 'Nuh', 6),
(228, 'Palwal', 6),
(229, 'Panchkula', 6),
(230, 'Panipat', 6),
(231, 'Rewari', 6),
(232, 'Rohtak', 6),
(233, 'Sirsa', 6),
(234, 'Sonipat', 6),
(235, 'Yamuna Nagar', 6),
(236, 'Bilaspur', 7),
(237, 'Chamba', 7),
(238, 'Hamirpur', 7),
(239, 'Kangra', 7),
(240, 'Kinnaur', 7),
(241, 'Kullu', 7),
(242, 'Lahaul and Spiti', 7),
(243, 'Mandi', 7),
(244, 'Shimla', 7),
(245, 'Sirmaur', 7),
(246, 'Solan', 7),
(247, 'Una', 7),
(248, 'Bokaro', 33),
(249, 'Chatra', 33),
(250, 'Deoghar', 33),
(251, 'Dhanbad', 33),
(252, 'Dumka', 33),
(253, 'East Singhbhum', 33),
(254, 'Garhwa', 33),
(255, 'Giridih', 33),
(256, 'Godda', 33),
(257, 'Gumla', 33),
(258, 'Hazaribag', 33),
(259, 'Jamtara', 33),
(260, 'Khunti', 33),
(261, 'Koderma', 33),
(262, 'Latehar', 33),
(263, 'Lohardaga', 33),
(264, 'Pakur', 33),
(265, 'Palamu', 33),
(266, 'Ramgarh', 33),
(267, 'Ranchi', 33),
(268, 'Sahibganj', 33),
(269, 'Seraikela Kharsawan', 33),
(270, 'Simdega', 33),
(271, 'West Singhbhum', 33),
(272, 'Bagalkot', 9),
(273, 'Bengaluru Rural', 9),
(274, 'Bengaluru Urban', 9),
(275, 'Belgaum', 9),
(276, 'Bellary', 9),
(277, 'Bidar', 9),
(278, 'Bijapur(Vijaypura)', 9),
(279, 'Chamarajnagar', 9),
(280, 'Chikkamagaluru', 9),
(281, 'Chikkaballapur', 9),
(282, 'Chitradurga', 9),
(283, 'Davanagere', 9),
(284, 'Dharwad', 9),
(285, 'Dakshina Kannada', 9),
(286, 'Gadag', 9),
(287, 'Gulbarga(Kalaburagi)', 9),
(288, 'Hassan', 9),
(289, 'Haveri', 9),
(290, 'Kodagu', 9),
(291, 'Kolar', 9),
(292, 'Koppal', 9),
(293, 'Mandya', 9),
(294, 'Mysuru', 9),
(295, 'Raichur', 9),
(296, 'Shimoga', 9),
(297, 'Tumkuru', 9),
(298, 'Udupi', 9),
(299, 'Uttara Kannada', 9),
(300, 'Ramanagara', 9),
(301, 'Yadgir', 9),
(302, 'Alappuzha', 10),
(303, 'Ernakulam', 10),
(304, 'Idukki', 10),
(305, 'Kannur', 10),
(306, 'Kasaragod', 10),
(307, 'Kollam', 10),
(308, 'Kottayam', 10),
(309, 'Kozhikode', 10),
(310, 'Malappuram', 10),
(311, 'Palakkad', 10),
(312, 'Pathanamthitta', 10),
(313, 'Thrissur', 10),
(314, 'Thiruvananthapuram', 10),
(315, 'Wayanad', 10),
(316, 'Agar Malwa', 11),
(317, 'Alirajpur', 11),
(318, 'Anuppur', 11),
(319, 'Ashok Nagar', 11),
(320, 'Balaghat', 11),
(321, 'Barwani', 11),
(322, 'Betul', 11),
(323, 'Bhind', 11),
(324, 'Bhopal', 11),
(325, 'Burhanpur', 11),
(326, 'Chhatarpur', 11),
(327, 'Chhindwara', 11),
(328, 'Damoh', 11),
(329, 'Datia', 11),
(330, 'Dewas', 11),
(331, 'Dhar', 11),
(332, 'Dindori', 11),
(333, 'Guna', 11),
(334, 'Gwalior', 11),
(335, 'Harda', 11),
(336, 'Hoshangabad', 11),
(337, 'Indore', 11),
(338, 'Jabalpur', 11),
(339, 'Jhabua', 11),
(340, 'Katni', 11),
(341, 'Khandwa (East Nimar)', 11),
(342, 'Khargone (West Nimar)', 11),
(343, 'Mandla', 11),
(344, 'Mandsaur', 11),
(345, 'Morena', 11),
(346, 'Narsinghpur', 11),
(347, 'Neemuch', 11),
(348, 'Niwari', 11),
(349, 'Panna', 11),
(350, 'Raisen', 11),
(351, 'Rajgarh', 11),
(352, 'Ratlam', 11),
(353, 'Rewa', 11),
(354, 'Sagar', 11),
(355, 'Satna', 11),
(356, 'Sehore', 11),
(357, 'Seoni', 11),
(358, 'Shahdol', 11),
(359, 'Shajapur', 11),
(360, 'Sheopur', 11),
(361, 'Shivpuri', 11),
(362, 'Sidhi', 11),
(363, 'Singrauli', 11),
(364, 'Tikamgarh', 11),
(365, 'Ujjain', 11),
(366, 'Umaria', 11),
(367, 'Vidisha', 11),
(368, 'Ahmednagar', 12),
(369, 'Akola', 12),
(370, 'Amravati', 12),
(371, 'Aurangabad', 12),
(372, 'Beed', 12),
(373, 'Bhandara', 12),
(374, 'Buldhana', 12),
(375, 'Chandrapur', 12),
(376, 'Dhule', 12),
(377, 'Gadchiroli', 12),
(378, 'Gondia', 12),
(379, 'Hingoli', 12),
(380, 'Jalgaon', 12),
(381, 'Jalna', 12),
(382, 'Kolhapur', 12),
(383, 'Latur', 12),
(384, 'Mumbai City', 12),
(385, 'Mumbai suburban', 12),
(386, 'Nanded', 12),
(387, 'Nandurbar', 12),
(388, 'Nagpur', 12),
(389, 'Nashik', 12),
(390, 'Osmanabad', 12),
(391, 'Parbhani', 12),
(392, 'Palghar', 12),
(393, 'Pune', 12),
(394, 'Raigad', 12),
(395, 'Ratnagiri', 12),
(396, 'Sangli', 12),
(397, 'Satara', 12),
(398, 'Sindhudurg', 12),
(399, 'Solapur', 12),
(400, 'Thane', 12),
(401, 'Wardha', 12),
(402, 'Washim', 12),
(403, 'Yavatmal', 12),
(404, 'Bishnupur', 13),
(405, 'Churachandpur', 13),
(406, 'Chandel', 13),
(407, 'Imphal East', 13),
(408, 'Jiribam', 13),
(409, 'Kakching', 13),
(410, 'Kamjong', 13),
(411, 'Kangpokpi', 13),
(412, 'Noney', 13),
(413, 'Pherzawl', 13),
(414, 'Senapati', 13),
(415, 'Tamenglong', 13),
(416, 'Tengnoupal', 13),
(417, 'Thoubal', 13),
(418, 'Ukhrul', 13),
(419, 'Imphal West', 13),
(420, 'East Garo Hills', 14),
(421, 'East Khasi Hills', 14),
(422, 'East Jaintia Hills', 14),
(423, 'North Garo Hills', 14),
(424, 'Ri Bhoi', 14),
(425, 'South Garo Hills', 14),
(426, 'South West Garo Hills', 14),
(427, 'South West Khasi Hills', 14),
(428, 'West Jaintia Hills', 14),
(429, 'West Garo Hills', 14),
(430, 'West Khasi Hills', 14),
(431, 'Aizawl', 15),
(432, 'Champhai', 15),
(433, 'Kolasib', 15),
(434, 'Lawngtlai', 15),
(435, 'Lunglei', 15),
(436, 'Mamit', 15),
(437, 'Saiha', 15),
(438, 'Serchhip', 15),
(439, 'Dimapur', 16),
(440, 'Kiphire', 16),
(441, 'Kohima', 16),
(442, 'Longleng', 16),
(443, 'Mokokchung', 16),
(444, 'Mon', 16),
(445, 'Noklak', 16),
(446, 'Peren', 16),
(447, 'Phek', 16),
(448, 'Tuensang', 16),
(449, 'Wokha', 16),
(450, 'Zunheboto', 16),
(451, 'Angul', 17),
(452, 'Boudh (Bauda)', 17),
(453, 'Bhadrak', 17),
(454, 'Balangir', 17),
(455, 'Bargarh (Baragarh)', 17),
(456, 'Balasore', 17),
(457, 'Cuttack', 17),
(458, 'Debagarh (Deogarh)', 17),
(459, 'Dhenkanal', 17),
(460, 'Ganjam', 17),
(461, 'Gajapati', 17),
(462, 'Jharsuguda', 17),
(463, 'Jajpur', 17),
(464, 'Jagatsinghpur', 17),
(465, 'Khordha', 17),
(466, 'Kendujhar (Keonjhar)', 17),
(467, 'Kalahandi', 17),
(468, 'Kandhamal', 17),
(469, 'Koraput', 17),
(470, 'Kendrapara', 17),
(471, 'Malkangiri', 17),
(472, 'Mayurbhanj', 17),
(473, 'Nabarangpur', 17),
(474, 'Nuapada', 17),
(475, 'Nayagarh', 17),
(476, 'Puri', 17),
(477, 'Rayagada', 17),
(478, 'Sambalpur', 17),
(479, 'Subarnapur (Sonepur)', 17),
(480, 'Sundergarh', 17),
(481, 'Amritsar', 18),
(482, 'Barnala', 18),
(483, 'Bathinda', 18),
(484, 'Firozpur', 18),
(485, 'Faridkot', 18),
(486, 'Fatehgarh Sahib', 18),
(487, 'Fazilka', 18),
(488, 'Gurdaspur', 18),
(489, 'Hoshiarpur', 18),
(490, 'Jalandhar', 18),
(491, 'Kapurthala', 18),
(492, 'Ludhiana', 18),
(493, 'Mansa', 18),
(494, 'Moga', 18),
(495, 'Sri Muktsar Sahib', 18),
(496, 'Pathankot', 18),
(497, 'Patiala', 18),
(498, 'Rupnagar', 18),
(499, 'Ajitgarh (Mohali)', 18),
(500, 'Sangrur', 18),
(501, 'Shahid Bhagat Singh Nagar', 18),
(502, 'Tarn Taran', 18),
(503, 'Ajmer', 19),
(504, 'Alwar', 19),
(505, 'Bikaner', 19),
(506, 'Barmer', 19),
(507, 'Banswara', 19),
(508, 'Bharatpur', 19),
(509, 'Baran', 19),
(510, 'Bundi', 19),
(511, 'Bhilwara', 19),
(512, 'Churu', 19),
(513, 'Chittorgarh', 19),
(514, 'Dausa', 19),
(515, 'Dholpur', 19),
(516, 'Dungapur', 19),
(517, 'Ganganagar', 19),
(518, 'Hanumangarh', 19),
(519, 'Jhunjhunu', 19),
(520, 'Jalore', 19),
(521, 'Jodhpur', 19),
(522, 'Jaipur', 19),
(523, 'Jaisalmer', 19),
(524, 'Jhalawar', 19),
(525, 'Karauli', 19),
(526, 'Kota', 19),
(527, 'Nagaur', 19),
(528, 'Pali', 19),
(529, 'Pratapgarh', 19),
(530, 'Rajsamand', 19),
(531, 'Sikar', 19),
(532, 'Sawai Madhopur', 19),
(533, 'Sirohi', 19),
(534, 'Tonk', 19),
(535, 'Udaipur', 19),
(536, 'East Sikkim', 20),
(537, 'North Sikkim', 20),
(538, 'South Sikkim', 20),
(539, 'West Sikkim', 20),
(540, 'Ariyalur', 21),
(541, 'Chengalpattu', 21),
(542, 'Chennai', 21),
(543, 'Coimbatore', 21),
(544, 'Cuddalore', 21),
(545, 'Dharmapuri', 21),
(546, 'Dindigul', 21),
(547, 'Erode', 21),
(548, 'Kallakurichi', 21),
(549, 'Kanchipuram', 21),
(550, 'Kanyakumari', 21),
(551, 'Karur', 21),
(552, 'Krishnagiri', 21),
(553, 'Madurai', 21),
(554, 'Nagapattinam', 21),
(555, 'Nilgiris', 21),
(556, 'Namakkal', 21),
(557, 'Perambalur', 21),
(558, 'Pudukkottai', 21),
(559, 'Ramanathapuram', 21),
(560, 'Ranipet', 21),
(561, 'Salem', 21),
(562, 'Sivaganga', 21),
(563, 'Tenkasi', 21),
(564, 'Tirupur', 21),
(565, 'Tiruchirappalli', 21),
(566, 'Theni', 21),
(567, 'Tirunelveli', 21),
(568, 'Thanjavur', 21),
(569, 'Thoothukudi', 21),
(570, 'Tiruvallur', 21),
(571, 'Tiruvarur', 21),
(572, 'Tirupattur', 21),
(573, 'Tiruvannamalai', 21),
(574, 'Vellore', 21),
(575, 'Viluppuram', 21),
(576, 'Virudhunagar', 21),
(577, 'Adilabad', 36),
(578, 'Komaram Bheem', 36),
(579, 'Bhadradri Kothagudem', 36),
(580, 'Hyderabad', 36),
(581, 'Jagtial', 36),
(582, 'Jangaon', 36),
(583, 'Jayashankar Bhupalpally', 36),
(584, 'Jogulamba Gadwal', 36),
(585, 'Kamareddy', 36),
(586, 'Karimnagar', 36),
(587, 'Khammam', 36),
(588, 'Mahabubabad', 36),
(589, 'Mahbubnagar', 36),
(590, 'Mancherial', 36),
(591, 'Medak', 36),
(592, 'Medchal-Malkajgiri', 36),
(593, 'Mulugu', 36),
(594, 'Nalgonda', 36),
(595, 'Narayanpet', 36),
(596, 'Nagarkurnool', 36),
(597, 'Nirmal', 36),
(598, 'Nizamabad', 36),
(599, 'Peddapalli', 36),
(600, 'Rajanna Sircilla', 36),
(601, 'Ranga Reddy', 36),
(602, 'Sangareddy', 36),
(603, 'Siddipet', 36),
(604, 'Suryapet', 36),
(605, 'Vikarabad', 36),
(606, 'Wanaparthy', 36),
(607, 'Warangal Urban', 36),
(608, 'Warangal Rural', 36),
(609, 'Yadadri Bhuvanagiri', 36),
(610, 'Dhalai', 22),
(611, 'Gomati', 22),
(612, 'Sepahijala', 22),
(613, 'North Tripura', 22),
(614, 'South Tripura', 22),
(615, 'Khowai', 22),
(616, 'West Tripura', 22),
(617, 'Unokoti', 22),
(618, 'Agra', 23),
(619, 'Aligarh', 23),
(620, 'Allahabad', 23),
(621, 'Ambedkar Nagar', 23),
(622, 'Amethi', 23),
(623, 'Amroha', 23),
(624, 'Auraiya', 23),
(625, 'Azamgarh', 23),
(626, 'Bagpat', 23),
(627, 'Bahraich', 23),
(628, 'Ballia', 23),
(629, 'Balrampur', 23),
(630, 'Banda', 23),
(631, 'Barabanki', 23),
(632, 'Bareilly', 23),
(633, 'Basti', 23),
(634, 'Bhadohi', 23),
(635, 'Bijnor', 23),
(636, 'Budaun', 23),
(637, 'Bulandshahr', 23),
(638, 'Chandauli', 23),
(639, 'Chitrakoot', 23),
(640, 'Deoria', 23),
(641, 'Etah', 23),
(642, 'Etawah', 23),
(643, 'Faizabad', 23),
(644, 'Farrukhabad', 23),
(645, 'Fatehpur', 23),
(646, 'Firozabad', 23),
(647, 'Gautam Buddh Nagar', 23),
(648, 'Ghaziabad', 23),
(649, 'Ghazipur', 23),
(650, 'Gonda', 23),
(651, 'Gorakhpur', 23),
(652, 'Hamirpur', 23),
(653, 'Hapur', 23),
(654, 'Hardoi', 23),
(655, 'Hathras', 23),
(656, 'Jalaun', 23),
(657, 'Jaunpur', 23),
(658, 'Jhansi', 23),
(659, 'Kannauj', 23),
(660, 'Kanpur Dehat', 23),
(661, 'Kanpur Nagar', 23),
(662, 'Kasganj', 23),
(663, 'Kaushambi', 23),
(664, 'Kushinagar', 23),
(665, 'Lakhimpur Kheri', 23),
(666, 'Lalitpur', 23),
(667, 'Lucknow', 23),
(668, 'Maharajganj', 23),
(669, 'Mahoba', 23),
(670, 'Mainpuri', 23),
(671, 'Mathura', 23),
(672, 'Mau', 23),
(673, 'Meerut', 23),
(674, 'Mirzapur', 23),
(675, 'Moradabad', 23),
(676, 'Muzaffarnagar', 23),
(677, 'Pilibhit', 23),
(678, 'Pratapgarh', 23),
(679, 'Raebareli', 23),
(680, 'Rampur', 23),
(681, 'Saharanpur', 23),
(682, 'Sambhal', 23),
(683, 'Sant Kabir Nagar', 23),
(684, 'Shahjahanpur', 23),
(685, 'Shamli', 23),
(686, 'Shravasti', 23),
(687, 'Siddharthnagar', 23),
(688, 'Sitapur', 23),
(689, 'Sonbhadra', 23),
(690, 'Sultanpur', 23),
(691, 'Unnao', 23),
(692, 'Varanasi', 23),
(693, 'Almora', 40),
(694, 'Bageshwar', 40),
(695, 'Chamoli', 40),
(696, 'Champawat', 40),
(697, 'Dehradun', 40),
(698, 'Haridwar', 40),
(699, 'Nainital', 40),
(700, 'Pauri Garhwal', 40),
(701, 'Pithoragarh', 40),
(702, 'Rudraprayag', 40),
(703, 'Tehri Garhwal', 40),
(704, 'Udham Singh Nagar', 40),
(705, 'Uttarkashi', 40),
(706, 'Alipurduar', 24),
(707, 'Bankura', 24),
(708, 'Paschim Bardhaman', 24),
(709, 'Purva Bardhaman', 24),
(710, 'Birbhum', 24),
(711, 'Cooch Behar', 24),
(712, 'Dakshin Dinajpur', 24),
(713, 'Darjeeling', 24),
(714, 'Hooghly', 24),
(715, 'Howrah', 24),
(716, 'Jalpaiguri', 24),
(717, 'Jhargram', 24),
(718, 'Kalimpong', 24),
(719, 'Kolkata', 24),
(720, 'Maldah', 24),
(721, 'Murshidabad', 24),
(722, 'Nadia', 24),
(723, 'North 24 Parganas', 24),
(724, 'Paschim Medinipur', 24),
(725, 'Purba Medinipur', 24),
(726, 'Purulia', 24),
(727, 'South 24 Parganas', 24),
(728, 'Uttar Dinajpur', 24),
(729, 'Chandigarh', 30),
(730, 'Daman', 28),
(731, 'Diu', 28),
(732, 'Dadra and Nagar Haveli', 29),
(733, 'Anantnag', 8),
(734, 'Badgam', 8),
(735, 'Bandipora', 8),
(736, 'Baramulla', 8),
(737, 'Doda', 8),
(738, 'Ganderbal', 8),
(739, 'Jammu', 8),
(741, 'Kathua', 8),
(742, 'Kishtwar', 8),
(743, 'Kupwara', 8),
(744, 'Kulgam', 8),
(745, 'Poonch', 8),
(746, 'Pulwama', 8),
(747, 'Rajouri', 8),
(748, 'Ramban', 8),
(749, 'Reasi', 8),
(750, 'Samba', 8),
(751, 'Shopian', 8),
(752, 'Srinagar', 8),
(753, 'Udhampur', 8),
(754, 'Leh', 38),
(755, 'Kargil', 38),
(756, 'Lakshadweep', 27),
(757, 'Central Delhi', 37),
(758, 'East Delhi', 37),
(759, 'New Delhi', 37),
(760, 'North Delhi', 37),
(761, 'North East Delhi', 37),
(762, 'North West Delhi', 37),
(763, 'Shahdara', 37),
(764, 'South Delhi', 37),
(765, 'South West Delhi', 37),
(766, 'South East Delhi', 37),
(767, 'West Delhi', 37),
(768, 'Karaikal', 39),
(769, 'Mahe', 39),
(770, 'Pondicherry', 39),
(771, 'Yanam', 39);

-- --------------------------------------------------------

--
-- Table structure for table `com_school`
--

CREATE TABLE `com_school` (
  `schoolID` int(11) NOT NULL,
  `schoolName` varchar(100) NOT NULL,
  `UDISEcode` varchar(11) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `registered_By` varchar(100) NOT NULL,
  `registered_On` date NOT NULL,
  `modified_on` date NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  `addressID` int(11) NOT NULL,
  `schoolGroupID` int(11) NOT NULL,
  `schoolTypeCodeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_school`
--

INSERT INTO `com_school` (`schoolID`, `schoolName`, `UDISEcode`, `tag`, `phone`, `registered_By`, `registered_On`, `modified_on`, `modified_by`, `addressID`, `schoolGroupID`, `schoolTypeCodeID`) VALUES
(1, 'City Pride School', '37251505401', '#cityprideschool', '+919087657853', '	\r\nprajakta@gmail.com', '2018-02-05', '2020-06-20', 'komal.amrutkar@cumminscollege.in', 1, 110002, 101002),
(2, 'Vikhe Patil Memorial School', '27251405511', '#vpms', '+912025658170', 'george@gmail.com', '2018-04-09', '2020-05-09', 'komal.amrutkar@cumminscollege.in', 2, 110002, 101002),
(3, 'Delhi Public School Newtown', '19170106310', '#dpskolkata', '+919830688888', 'suyog@gmail.com\r\n', '2019-02-07', '2020-04-03', 'suyog@gmail.com', 3, 110002, 101002),
(4, 'Zilla Parishad School', '29251515403', '#Zpschool', '+918798782981', 'Rama@gmail.com', '2019-02-08', '2020-04-03', 'Rama@gmail.com', 4, 110001, 101001),
(5, 'Om Shanti English Medium School', '39251405511', '#omshantienglishschool', '+912822227979', 'Reeta@gmail.com', '2029-03-09', '2020-04-03', 'Reeta@gmail.com', 5, 110002, 101002),
(6, 'Cochin Refineries School ', '49288815403', '#cochinrefineries', '+914842714800', 'Aman@gmail.com', '2020-02-06', '2020-04-03', 'Aman@gmail.com', 6, 110002, 101002),
(7, 'Ekya Schools ', '27351406511', '#ekyaschools', '+918046809096', 'Uma@gmail.com', '2020-02-15', '2020-04-03', 'Uma@gmail.com', 7, 110003, 101002),
(8, 'Aadharshila Academy', '28256505703', '#aadharshila', '+918899870013', 'Jyoti@gmail.com', '2020-02-20', '2020-04-03', 'Jyoti@gmail.com', 8, 110002, 101002),
(9, 'Sohbatiyabagh Government Primary School', '39170106310', '#sgps', '+919891780112', 'Raghu@gmail.com', '2020-02-23', '2020-04-03', 'Raghu@gmail.com', 9, 110002, 101001),
(10, 'Gandhinagar High School', '90909111111', '', '+918657676149', 'shalaka@gmail.com', '1997-11-11', '1997-11-11', 'shalaka@gmail.com', 10, 110002, 101002);

-- --------------------------------------------------------

--
-- Table structure for table `com_schoolclass`
--

CREATE TABLE `com_schoolclass` (
  `schoolClassID` int(11) NOT NULL,
  `classNumber` int(11) NOT NULL,
  `schoolID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_schoolclass`
--

INSERT INTO `com_schoolclass` (`schoolClassID`, `classNumber`, `schoolID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 1, 2),
(14, 2, 2),
(15, 3, 2),
(16, 4, 2),
(17, 5, 2),
(18, 6, 2),
(19, 7, 2),
(20, 8, 2),
(21, 9, 2),
(22, 10, 2),
(23, 11, 2),
(24, 12, 2),
(25, 1, 3),
(26, 2, 3),
(27, 3, 3),
(28, 4, 3),
(29, 5, 3),
(30, 6, 3),
(31, 7, 3),
(32, 8, 3),
(33, 9, 3),
(34, 10, 3),
(35, 11, 3),
(36, 12, 3),
(37, 1, 4),
(38, 2, 4),
(39, 3, 4),
(40, 4, 4),
(41, 1, 5),
(42, 2, 5),
(43, 3, 5),
(44, 4, 5),
(45, 5, 5),
(46, 6, 5),
(47, 7, 5),
(48, 8, 5),
(49, 9, 5),
(50, 10, 5),
(51, 11, 5),
(52, 12, 5),
(53, 1, 6),
(54, 2, 6),
(55, 3, 6),
(56, 4, 6),
(57, 5, 6),
(58, 6, 6),
(59, 7, 6),
(60, 8, 6),
(61, 9, 6),
(62, 10, 6),
(63, 11, 6),
(64, 12, 6),
(65, 1, 7),
(66, 2, 7),
(67, 3, 7),
(68, 4, 7),
(69, 5, 7),
(70, 6, 7),
(71, 7, 7),
(72, 8, 7),
(73, 9, 7),
(74, 10, 7),
(75, 1, 8),
(76, 2, 8),
(77, 3, 8),
(78, 4, 8),
(79, 5, 8),
(80, 6, 8),
(81, 7, 8),
(82, 8, 8),
(83, 9, 8),
(84, 10, 8),
(85, 11, 8),
(86, 12, 8),
(87, 1, 9),
(88, 2, 9),
(89, 3, 9),
(90, 4, 9),
(91, 1, 10),
(92, 2, 10),
(93, 3, 10),
(94, 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `com_states`
--

CREATE TABLE `com_states` (
  `stateID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `countryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_states`
--

INSERT INTO `com_states` (`stateID`, `name`, `countryID`) VALUES
(1, 'ANDHRA PRADESH', 99),
(2, 'ASSAM', 99),
(3, 'ARUNACHAL PRADESH', 99),
(4, 'GUJARAT', 99),
(5, 'BIHAR', 99),
(6, 'HARYANA', 99),
(7, 'HIMACHAL PRADESH', 99),
(8, 'JAMMU & KASHMIR', 99),
(9, 'KARNATAKA', 99),
(10, 'KERALA', 99),
(11, 'MADHYA PRADESH', 99),
(12, 'MAHARASHTRA', 99),
(13, 'MANIPUR', 99),
(14, 'MEGHALAYA', 99),
(15, 'MIZORAM', 99),
(16, 'NAGALAND', 99),
(17, 'ODISHA', 99),
(18, 'PUNJAB', 99),
(19, 'RAJASTHAN', 99),
(20, 'SIKKIM', 99),
(21, 'TAMIL NADU', 99),
(22, 'TRIPURA', 99),
(23, 'UTTAR PRADESH', 99),
(24, 'WEST BENGAL', 99),
(25, 'GOA', 99),
(26, 'PONDICHERY', 99),
(27, 'LAKSHADWEEP', 99),
(28, 'DAMAN & DIU', 99),
(29, 'DADRA & NAGAR HAVELI', 99),
(30, 'CHANDIGARH', 99),
(31, 'ANDAMAN & NICOBAR', 99),
(33, 'JHARKHAND', 99),
(34, 'CHATTISGARH', 99),
(35, 'ASSAM', 99),
(36, 'TELANGANA', 99),
(37, 'DELHI', 99),
(38, 'LADAKH', 99),
(39, 'PUDUCHERRY', 99),
(40, 'UTTARAKHAND', 99);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(25, 'cmp', 'agegroup'),
(26, 'cmp', 'agegroupclass'),
(27, 'cmp', 'competition'),
(28, 'cmp', 'competitionage'),
(29, 'cmp', 'competitionquestion'),
(33, 'cmp', 'competition_markscheme'),
(32, 'cmp', 'questionage'),
(30, 'cmp', 'studentenrollment'),
(31, 'cmp', 'studentresponse'),
(10, 'com', 'address'),
(11, 'com', 'class'),
(12, 'com', 'code'),
(13, 'com', 'codegroup'),
(14, 'com', 'countries'),
(18, 'com', 'districts'),
(15, 'com', 'school'),
(17, 'com', 'schoolclass'),
(16, 'com', 'states'),
(4, 'contenttypes', 'contenttype'),
(34, 'knox', 'authtoken'),
(24, 'ques', 'correctoption'),
(23, 'ques', 'image'),
(19, 'ques', 'option'),
(22, 'ques', 'optiontranslation'),
(20, 'ques', 'question'),
(21, 'ques', 'questiontranslation'),
(5, 'sessions', 'session'),
(7, 'usr', 'role'),
(6, 'usr', 'user'),
(8, 'usr', 'userrole'),
(9, 'usr', 'userrolelocation');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'com', '0001_initial', '2020-06-17 09:07:35.117915'),
(2, 'usr', '0001_initial', '2020-06-17 09:07:47.143094'),
(3, 'contenttypes', '0001_initial', '2020-06-17 09:07:54.823633'),
(4, 'admin', '0001_initial', '2020-06-17 09:07:55.397700'),
(5, 'admin', '0002_logentry_remove_auto_add', '2020-06-17 09:07:57.955107'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-17 09:07:57.992654'),
(7, 'contenttypes', '0002_remove_content_type_name', '2020-06-17 09:07:58.869764'),
(8, 'auth', '0001_initial', '2020-06-17 09:08:00.758932'),
(9, 'auth', '0002_alter_permission_name_max_length', '2020-06-17 09:08:05.115846'),
(10, 'auth', '0003_alter_user_email_max_length', '2020-06-17 09:08:05.172467'),
(11, 'auth', '0004_alter_user_username_opts', '2020-06-17 09:08:05.211819'),
(12, 'auth', '0005_alter_user_last_login_null', '2020-06-17 09:08:05.281705'),
(13, 'auth', '0006_require_contenttypes_0002', '2020-06-17 09:08:05.597582'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2020-06-17 09:08:05.722540'),
(15, 'auth', '0008_alter_user_username_max_length', '2020-06-17 09:08:05.818117'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2020-06-17 09:08:05.968145'),
(17, 'auth', '0010_alter_group_name_max_length', '2020-06-17 09:08:06.162533'),
(18, 'auth', '0011_update_proxy_permissions', '2020-06-17 09:08:06.242515'),
(19, 'ques', '0001_initial', '2020-06-17 09:08:08.958774'),
(20, 'cmp', '0001_initial', '2020-06-17 09:08:25.692823'),
(21, 'knox', '0001_initial', '2020-06-17 09:08:49.648058'),
(22, 'knox', '0002_auto_20150916_1425', '2020-06-17 09:08:51.261975'),
(23, 'knox', '0003_auto_20150916_1526', '2020-06-17 09:08:52.555307'),
(24, 'knox', '0004_authtoken_expires', '2020-06-17 09:08:53.316696'),
(25, 'knox', '0005_authtoken_token_key', '2020-06-17 09:08:53.468535'),
(26, 'knox', '0006_auto_20160818_0932', '2020-06-17 09:08:54.868094'),
(27, 'knox', '0007_auto_20190111_0542', '2020-06-17 09:08:55.038680'),
(28, 'sessions', '0001_initial', '2020-06-17 09:08:55.589005'),
(29, 'usr', '0002_auto_20200622_1935', '2020-06-22 14:05:17.343239');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `knox_authtoken`
--

CREATE TABLE `knox_authtoken` (
  `digest` varchar(128) NOT NULL,
  `salt` varchar(16) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expiry` datetime(6) DEFAULT NULL,
  `token_key` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knox_authtoken`
--

INSERT INTO `knox_authtoken` (`digest`, `salt`, `created`, `user_id`, `expiry`, `token_key`) VALUES
('69cb3eaf3353848398ba81204b2eef5f1039ee2fbae25a57eb930d64b5327549bd37c4e345d2ef7613254f9fbcd64bf6e847964ab9f1fccd32e662174b483a78', '95145dd054c94537', '2020-06-27 18:37:51.882375', 1, '2020-06-28 04:37:51.881380', '80c7db72'),
('de5752643e4d0c5e76b734a4a3e02c056d9672f6f1d1a0f08da46cc5fbde8a61aa3832f571338ed265858269670bd190b05ce774544bd5166b3567a15e77859b', 'bd6ebac24bfb39e6', '2020-06-27 18:50:44.471822', 1, '2020-06-28 04:50:44.471822', '419fc2fd');

-- --------------------------------------------------------

--
-- Table structure for table `ques_correctoption`
--

CREATE TABLE `ques_correctoption` (
  `correctOptionID` int(11) NOT NULL,
  `ansText` varchar(20) DEFAULT NULL,
  `optionTranslationID` int(11) DEFAULT NULL,
  `questionTranslationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ques_correctoption`
--

INSERT INTO `ques_correctoption` (`correctOptionID`, `ansText`, `optionTranslationID`, `questionTranslationID`) VALUES
(1, NULL, 3, 1),
(2, NULL, 7, 2),
(3, NULL, 10, 3),
(4, NULL, 14, 4),
(5, NULL, 20, 5),
(6, '22', NULL, 6),
(7, NULL, 24, 7),
(8, NULL, 25, 8),
(9, '22', NULL, 9),
(10, NULL, 30, 10),
(11, NULL, 36, 11),
(12, NULL, 38, 12),
(13, NULL, 42, 13),
(14, NULL, 45, 14),
(15, NULL, 50, 15),
(16, NULL, 54, 16),
(17, NULL, 58, 17),
(18, NULL, 62, 18),
(19, NULL, 66, 19),
(20, NULL, 70, 20),
(21, NULL, 76, 21),
(22, NULL, 78, 22),
(23, NULL, 84, 23),
(24, NULL, 86, 24),
(25, NULL, 90, 25),
(26, NULL, 94, 26),
(27, NULL, 99, 27),
(28, '4', NULL, 28),
(29, NULL, 104, 29),
(30, NULL, 107, 30),
(31, NULL, 111, 31),
(32, NULL, 114, 32),
(33, NULL, 117, 33),
(34, NULL, 123, 34),
(35, NULL, 127, 35),
(36, NULL, 131, 36),
(37, NULL, 133, 37),
(38, NULL, 137, 38),
(39, NULL, 142, 39),
(40, NULL, 145, 40),
(41, '32', NULL, 41),
(42, NULL, 151, 42),
(43, '7014831', NULL, 43),
(44, NULL, 155, 44),
(45, NULL, 157, 45),
(46, '4', NULL, 46),
(47, NULL, 163, 47),
(48, NULL, 165, 48),
(49, NULL, 169, 49),
(50, NULL, 174, 50),
(51, NULL, 177, 51),
(52, NULL, 181, 52),
(53, NULL, 186, 53),
(54, NULL, 189, 54),
(55, NULL, 193, 55),
(56, NULL, 197, 56),
(57, NULL, 204, 57),
(58, NULL, 208, 58),
(59, NULL, 209, 59),
(60, NULL, 214, 60),
(61, NULL, 218, 61),
(62, '3', NULL, 62),
(63, NULL, 223, 63),
(64, NULL, 228, 64),
(65, NULL, 232, 65),
(66, '6', NULL, 66),
(67, '6', NULL, 67),
(68, NULL, 235, 68),
(69, NULL, 239, 69),
(70, NULL, 244, 70),
(71, NULL, 248, 71),
(72, NULL, 252, 72),
(73, NULL, 256, 73),
(74, NULL, 260, 74),
(75, NULL, 263, 75),
(76, NULL, 268, 76),
(77, NULL, 272, 77),
(78, NULL, 276, 78),
(79, NULL, 279, 80),
(80, NULL, 281, 81),
(81, NULL, 285, 82),
(82, NULL, 289, 83),
(83, NULL, 294, 84),
(84, NULL, 297, 85),
(85, NULL, 301, 86),
(86, NULL, 306, 87),
(87, NULL, 310, 88),
(88, NULL, 315, 89),
(89, NULL, 320, 90),
(90, NULL, 323, 91);

-- --------------------------------------------------------

--
-- Table structure for table `ques_image`
--

CREATE TABLE `ques_image` (
  `ImageID` int(11) NOT NULL,
  `ImageName` varchar(50) NOT NULL,
  `ObjectID` int(11) NOT NULL,
  `uploadedFile` varchar(128) NOT NULL,
  `ImageTypeCodeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ques_image`
--

INSERT INTO `ques_image` (`ImageID`, `ImageName`, `ObjectID`, `uploadedFile`, `ImageTypeCodeID`) VALUES
(1, '2)Worm_Exp_2020-5-5_2-8-12.png', 1, 'media/images/2)Worm_Exp_2020-5-5_2-8-12.png', 105003),
(2, '2)Worm_1_2020-5-5_2-8-12.png', 1, 'media/images/2)Worm_1_2020-5-5_2-8-12.png', 105001),
(3, 'fish_2020-5-5_2-56-24.png', 2, 'media/images/fish_2020-5-5_2-56-24.png', 105001),
(4, 'fish1_2020-5-5_2-56-24.png', 5, 'media/images/fish1_2020-5-5_2-56-24.png', 105002),
(5, 'fish2_2020-5-5_2-56-24.png', 6, 'media/images/fish2_2020-5-5_2-56-24.png', 105002),
(6, 'fish3_2020-5-5_2-56-24.png', 7, 'media/images/fish3_2020-5-5_2-56-24.png', 105002),
(7, 'fish4_2020-5-5_2-56-24.png', 8, 'media/images/fish4_2020-5-5_2-56-24.png', 105002),
(8, '3)Circle City_Exp_2020-5-5_10-48-43.png', 4, 'media/images/3)Circle City_Exp_2020-5-5_10-48-43.png', 105003),
(9, '3)Circle City_1_2020-5-5_10-48-43.png', 4, 'media/images/3)Circle City_1_2020-5-5_10-48-43.png', 105001),
(10, 'LetterPuzzle_2020-5-5_11-7-13.png', 5, 'media/images/LetterPuzzle_2020-5-5_11-7-13.png', 105001),
(11, 'FindX_2020-5-5_11-40-36.png', 7, 'media/images/FindX_2020-5-5_11-40-36.png', 105001),
(12, 'MirrorImg_2020-5-5_14-44-41.png', 9, 'media/images/MirrorImg_2020-5-5_14-44-41.png', 105001),
(13, 'MirrorImg1_2020-5-5_14-44-41.png', 9, 'media/images/MirrorImg1_2020-5-5_14-44-41.png', 105001),
(14, 'beaverCoins_2020-5-5_23-5-43.png', 10, 'media/images/beaverCoins_2020-5-5_23-5-43.png', 105001),
(15, 'Tower1_2020-5-6_0-19-23.png', 11, 'media/images/Tower1_2020-5-6_0-19-23.png', 105003),
(16, 'Tower_2020-5-6_0-19-23.png', 11, 'media/images/Tower_2020-5-6_0-19-23.png', 105001),
(17, 'MissingLetter_2020-5-6_0-39-24.png', 12, 'media/images/MissingLetter_2020-5-6_0-39-24.png', 105001),
(18, 'Snowmen_2020-5-6_1-16-46.png', 13, 'media/images/Snowmen_2020-5-6_1-16-46.png', 105001),
(19, 'Snowmen1_2020-5-6_1-16-46.png', 45, 'media/images/Snowmen1_2020-5-6_1-16-46.png', 105002),
(20, 'Snowmen2_2020-5-6_1-16-46.png', 46, 'media/images/Snowmen2_2020-5-6_1-16-46.png', 105002),
(21, 'Snowmen3_2020-5-6_1-16-46.png', 47, 'media/images/Snowmen3_2020-5-6_1-16-46.png', 105002),
(22, 'Snowmen4_2020-5-6_1-16-46.png', 48, 'media/images/Snowmen4_2020-5-6_1-16-46.png', 105002),
(23, 'decorate_2020-5-6_12-17-28.png', 14, 'media/images/decorate_2020-5-6_12-17-28.png', 105001),
(24, 'decorate1_2020-5-6_12-17-28.png', 49, 'media/images/decorate1_2020-5-6_12-17-28.png', 105002),
(25, 'decorate2_2020-5-6_12-17-28.png', 50, 'media/images/decorate2_2020-5-6_12-17-28.png', 105002),
(26, 'decorate3_2020-5-6_12-17-28.png', 51, 'media/images/decorate3_2020-5-6_12-17-28.png', 105002),
(27, 'decorate4_2020-5-6_12-17-28.png', 52, 'media/images/decorate4_2020-5-6_12-17-28.png', 105002),
(28, '1)Strawberry Hunt _ Exp_2020-5-6_13-28-52.png', 15, 'media/images/1)Strawberry Hunt _ Exp_2020-5-6_13-28-52.png', 105003),
(29, '1)Strawberry Hunt _ 1_2020-5-6_13-28-52.png', 15, 'media/images/1)Strawberry Hunt _ 1_2020-5-6_13-28-52.png', 105001),
(30, 'scratch5_2020-5-6_15-42-59.png', 16, 'media/images/scratch5_2020-5-6_15-42-59.png', 105003),
(31, 'scratch_2020-5-6_15-42-59.png', 16, 'media/images/scratch_2020-5-6_15-42-59.png', 105001),
(32, 'scratch1_2020-5-6_15-42-59.png', 57, 'media/images/scratch1_2020-5-6_15-42-59.png', 105002),
(33, 'scratch2_2020-5-6_15-42-59.png', 58, 'media/images/scratch2_2020-5-6_15-42-59.png', 105002),
(34, 'scratch3_2020-5-6_15-42-59.png', 59, 'media/images/scratch3_2020-5-6_15-42-59.png', 105002),
(35, 'scratch4_2020-5-6_15-42-59.png', 60, 'media/images/scratch4_2020-5-6_15-42-59.png', 105002),
(36, 'Parking_2020-5-6_16-16-38.png', 18, 'media/images/Parking_2020-5-6_16-16-38.png', 105001),
(37, 'balloons_2020-5-6_16-36-59.png', 20, 'media/images/balloons_2020-5-6_16-36-59.png', 105001),
(38, '13)IceCream_2020-5-6_17-49-43.png', 21, 'media/images/13)IceCream_2020-5-6_17-49-43.png', 105001),
(39, '5)PaintingWallpaper_Exp_2020-5-6_17-58-13.png', 22, 'media/images/5)PaintingWallpaper_Exp_2020-5-6_17-58-13.png', 105003),
(40, '5)Painting Wallpaper_1_2020-5-6_17-58-13.png', 22, 'media/images/5)Painting Wallpaper_1_2020-5-6_17-58-13.png', 105001),
(41, '5)PaintingWallpaper_Opt1_2020-5-6_17-58-13.png', 77, 'media/images/5)PaintingWallpaper_Opt1_2020-5-6_17-58-13.png', 105002),
(42, '5)PaintingWallpaper_Opt2_2020-5-6_17-58-13.png', 78, 'media/images/5)PaintingWallpaper_Opt2_2020-5-6_17-58-13.png', 105002),
(43, '5)PaintingWallpaper_Opt3_2020-5-6_17-58-13.png', 79, 'media/images/5)PaintingWallpaper_Opt3_2020-5-6_17-58-13.png', 105002),
(44, '5)PaintingWallpaper_Opt4_2020-5-6_17-58-13.png', 80, 'media/images/5)PaintingWallpaper_Opt4_2020-5-6_17-58-13.png', 105002),
(45, 'Meal_2020-5-6_18-27-22.png', 23, 'media/images/Meal_2020-5-6_18-27-22.png', 105001),
(46, '11)Robot_Exp1_2020-5-6_18-39-19.png', 24, 'media/images/11)Robot_Exp1_2020-5-6_18-39-19.png', 105003),
(47, '11)Robot_Exp2_2020-5-6_18-39-19.png', 24, 'media/images/11)Robot_Exp2_2020-5-6_18-39-19.png', 105003),
(48, '11)Robot_Exp3_2020-5-6_18-39-19.png', 24, 'media/images/11)Robot_Exp3_2020-5-6_18-39-19.png', 105003),
(49, '11)Robot_Exp4_2020-5-6_18-39-19.png', 24, 'media/images/11)Robot_Exp4_2020-5-6_18-39-19.png', 105003),
(50, '11)Robot_Exp5_2020-5-6_18-39-19.png', 24, 'media/images/11)Robot_Exp5_2020-5-6_18-39-19.png', 105003),
(51, '11)Robot_1_2020-5-6_18-39-19.png', 24, 'media/images/11)Robot_1_2020-5-6_18-39-19.png', 105001),
(52, 'Cloud_2020-5-6_18-50-50.png', 25, 'media/images/Cloud_2020-5-6_18-50-50.png', 105001),
(53, 'Cloud1_2020-5-6_18-50-50.png', 25, 'media/images/Cloud1_2020-5-6_18-50-50.png', 105001),
(54, '15)Only nine keys_1_2020-5-6_23-20-53.png', 26, 'media/images/15)Only nine keys_1_2020-5-6_23-20-53.png', 105001),
(55, 'plates1_2020-5-6_23-49-12.png', 27, 'media/images/plates1_2020-5-6_23-49-12.png', 105003),
(56, 'plates2_2020-5-6_23-49-12.png', 27, 'media/images/plates2_2020-5-6_23-49-12.png', 105003),
(57, 'plates3_2020-5-6_23-49-12.png', 27, 'media/images/plates3_2020-5-6_23-49-12.png', 105003),
(58, 'plates_2020-5-6_23-49-12.png', 27, 'media/images/plates_2020-5-6_23-49-12.png', 105001),
(59, 'Image Rep_2020-5-7_0-2-24.png', 28, 'media/images/Image Rep_2020-5-7_0-2-24.png', 105001),
(60, 'Image Rep1_2020-5-7_0-2-24.png', 101, 'media/images/Image Rep1_2020-5-7_0-2-24.png', 105002),
(61, 'Image Rep2_2020-5-7_0-2-24.png', 102, 'media/images/Image Rep2_2020-5-7_0-2-24.png', 105002),
(62, 'Image Rep3_2020-5-7_0-2-24.png', 103, 'media/images/Image Rep3_2020-5-7_0-2-24.png', 105002),
(63, 'Image Rep4_2020-5-7_0-2-24.png', 104, 'media/images/Image Rep4_2020-5-7_0-2-24.png', 105002),
(64, 'elder_2020-5-7_1-10-47.png', 29, 'media/images/elder_2020-5-7_1-10-47.png', 105001),
(65, 'elder1_2020-5-7_1-10-47.png', 29, 'media/images/elder1_2020-5-7_1-10-47.png', 105001),
(66, 'elder2_2020-5-7_1-10-47.png', 29, 'media/images/elder2_2020-5-7_1-10-47.png', 105001),
(67, 'Building T_2020-5-7_1-39-14.png', 31, 'media/images/Building T_2020-5-7_1-39-14.png', 105001),
(68, 'Building T1_2020-5-7_1-39-14.png', 109, 'media/images/Building T1_2020-5-7_1-39-14.png', 105002),
(69, 'Building T2_2020-5-7_1-39-14.png', 110, 'media/images/Building T2_2020-5-7_1-39-14.png', 105002),
(70, 'Building T3_2020-5-7_1-39-14.png', 111, 'media/images/Building T3_2020-5-7_1-39-14.png', 105002),
(71, 'Building T4_2020-5-7_1-39-14.png', 112, 'media/images/Building T4_2020-5-7_1-39-14.png', 105002),
(72, '16)Abacus_1_2020-5-7_1-46-30.png', 32, 'media/images/16)Abacus_1_2020-5-7_1-46-30.png', 105001),
(73, '16)Abacus_2_2020-5-7_1-46-30.png', 32, 'media/images/16)Abacus_2_2020-5-7_1-46-30.png', 105001),
(74, '19)Beavers on the run_1_2020-5-7_1-56-5.png', 33, 'media/images/19)Beavers on the run_1_2020-5-7_1-56-5.png', 105001),
(75, '19)Beavers on the run_2_2020-5-7_1-56-5.png', 33, 'media/images/19)Beavers on the run_2_2020-5-7_1-56-5.png', 105001),
(76, 'triplets_2020-5-7_11-23-2.JPG', 34, 'media/images/triplets_2020-5-7_11-23-2.JPG', 105001),
(77, 'triplets1_2020-5-7_11-23-2.png', 117, 'media/images/triplets1_2020-5-7_11-23-2.png', 105002),
(78, 'triplets2_2020-5-7_11-23-2.png', 118, 'media/images/triplets2_2020-5-7_11-23-2.png', 105002),
(79, 'triplets3_2020-5-7_11-23-2.png', 119, 'media/images/triplets3_2020-5-7_11-23-2.png', 105002),
(80, 'triplets4_2020-5-7_11-23-2.png', 120, 'media/images/triplets4_2020-5-7_11-23-2.png', 105002),
(81, '8)Tunnels_1_2020-5-7_12-4-28.png', 36, 'media/images/8)Tunnels_1_2020-5-7_12-4-28.png', 105001),
(82, 'Quipu_2020-5-7_13-42-57.png', 37, 'media/images/Quipu_2020-5-7_13-42-57.png', 105001),
(83, '4)News_Exp_2020-5-7_15-44-49.png', 38, 'media/images/4)News_Exp_2020-5-7_15-44-49.png', 105003),
(84, '4)News_1_2020-5-7_15-44-49.png', 38, 'media/images/4)News_1_2020-5-7_15-44-49.png', 105001),
(85, 'Wood_2020-5-7_16-38-18.png', 39, 'media/images/Wood_2020-5-7_16-38-18.png', 105001),
(86, 'Wood1_2020-5-7_16-38-18.png', 39, 'media/images/Wood1_2020-5-7_16-38-18.png', 105001),
(87, '7)Railroad_Exp_2020-5-7_22-54-56.png', 40, 'media/images/7)Railroad_Exp_2020-5-7_22-54-56.png', 105003),
(88, '7)Railroad_1_2020-5-7_22-54-56.png', 40, 'media/images/7)Railroad_1_2020-5-7_22-54-56.png', 105001),
(89, '9)IconC_Exp_2020-5-7_23-23-21.png', 41, 'media/images/9)IconC_Exp_2020-5-7_23-23-21.png', 105003),
(90, '9)IconC_1_2020-5-7_23-23-21.png', 41, 'media/images/9)IconC_1_2020-5-7_23-23-21.png', 105001),
(91, '9)IconC_2_2020-5-7_23-23-21.png', 41, 'media/images/9)IconC_2_2020-5-7_23-23-21.png', 105001),
(92, '10)Book Sharing_1_2020-5-8_13-21-35.png', 42, 'media/images/10)Book Sharing_1_2020-5-8_13-21-35.png', 105001),
(93, 'Socks5_2020-5-8_13-41-39.png', 43, 'media/images/Socks5_2020-5-8_13-41-39.png', 105003),
(94, 'Socks_2020-5-8_13-41-39.png', 43, 'media/images/Socks_2020-5-8_13-41-39.png', 105001),
(95, 'Socks1_2020-5-8_13-41-39.png', 145, 'media/images/Socks1_2020-5-8_13-41-39.png', 105002),
(96, 'Socks2_2020-5-8_13-41-39.png', 146, 'media/images/Socks2_2020-5-8_13-41-39.png', 105002),
(97, 'Socks3_2020-5-8_13-41-39.png', 147, 'media/images/Socks3_2020-5-8_13-41-39.png', 105002),
(98, 'Socks4_2020-5-8_13-41-39.png', 148, 'media/images/Socks4_2020-5-8_13-41-39.png', 105002),
(99, 'Aircraft_2020-5-8_14-6-15.png', 44, 'media/images/Aircraft_2020-5-8_14-6-15.png', 105001),
(100, 'Aircraft1_2020-5-8_14-6-15.png', 44, 'media/images/Aircraft1_2020-5-8_14-6-15.png', 105001),
(101, '14)Magical Bracelet_Exp_2020-5-8_15-30-51.png', 45, 'media/images/14)Magical Bracelet_Exp_2020-5-8_15-30-51.png', 105003),
(102, '14)Magical Bracelet_1_2020-5-8_15-30-51.png', 45, 'media/images/14)Magical Bracelet_1_2020-5-8_15-30-51.png', 105001),
(103, '14)Magical_Opt1_2020-5-8_15-30-51.png', 153, 'media/images/14)Magical_Opt1_2020-5-8_15-30-51.png', 105002),
(104, '14)Magical_Opt2_2020-5-8_15-30-51.png', 154, 'media/images/14)Magical_Opt2_2020-5-8_15-30-51.png', 105002),
(105, '14)Magical_Opt3_2020-5-8_15-30-51.png', 155, 'media/images/14)Magical_Opt3_2020-5-8_15-30-51.png', 105002),
(106, '14)Magical_Opt4_2020-5-8_15-30-51.png', 156, 'media/images/14)Magical_Opt4_2020-5-8_15-30-51.png', 105002),
(107, '17)Village_Exp_2020-5-8_15-43-55.png', 46, 'media/images/17)Village_Exp_2020-5-8_15-43-55.png', 105003),
(108, '17)Village_1_2020-5-8_15-43-55.png', 46, 'media/images/17)Village_1_2020-5-8_15-43-55.png', 105001),
(109, '17)Village_2_2020-5-8_15-43-55.png', 46, 'media/images/17)Village_2_2020-5-8_15-43-55.png', 105001),
(110, 'Flowers_2020-5-8_16-39-23.png', 48, 'media/images/Flowers_2020-5-8_16-39-23.png', 105001),
(111, 'Flower1_2020-5-8_16-39-23.svg', 161, 'media/images/Flower1_2020-5-8_16-39-23.svg', 105002),
(112, 'Flower2_2020-5-8_16-39-23.svg', 162, 'media/images/Flower2_2020-5-8_16-39-23.svg', 105002),
(113, 'Flower3_2020-5-8_16-39-23.svg', 163, 'media/images/Flower3_2020-5-8_16-39-23.svg', 105002),
(114, 'Flower4_2020-5-8_16-39-23.svg', 164, 'media/images/Flower4_2020-5-8_16-39-23.svg', 105002),
(115, 'Ring_2020-5-8_17-11-37.svg', 49, 'media/images/Ring_2020-5-8_17-11-37.svg', 105001),
(116, 'Ring1_2020-5-8_17-11-37.svg', 49, 'media/images/Ring1_2020-5-8_17-11-37.svg', 105001),
(117, 'Ring2_2020-5-8_17-11-37.png', 49, 'media/images/Ring2_2020-5-8_17-11-37.png', 105001),
(118, 'Robots_2020-5-8_17-52-3.JPG', 50, 'media/images/Robots_2020-5-8_17-52-3.JPG', 105001),
(119, 'Icecream_2020-5-9_1-23-34.JPG', 51, 'media/images/Icecream_2020-5-9_1-23-34.JPG', 105001),
(120, 'Icecream1_2020-5-9_1-23-34.JPG', 169, 'media/images/Icecream1_2020-5-9_1-23-34.JPG', 105002),
(121, 'Icecream2_2020-5-9_1-23-34.JPG', 170, 'media/images/Icecream2_2020-5-9_1-23-34.JPG', 105002),
(122, 'Icecream3_2020-5-9_1-23-34.JPG', 171, 'media/images/Icecream3_2020-5-9_1-23-34.JPG', 105002),
(123, 'Icecream4_2020-5-9_1-23-34.JPG', 172, 'media/images/Icecream4_2020-5-9_1-23-34.JPG', 105002),
(124, 'Football_2020-5-14_18-5-10.png', 52, 'media/images/Football_2020-5-14_18-5-10.png', 105001),
(125, 'Clothes_2020-5-14_18-46-3.JPG', 53, 'media/images/Clothes_2020-5-14_18-46-3.JPG', 105001),
(126, 'Clothes1_2020-5-14_18-46-3.JPG', 177, 'media/images/Clothes1_2020-5-14_18-46-3.JPG', 105002),
(127, 'Clothes2_2020-5-14_18-46-3.JPG', 178, 'media/images/Clothes2_2020-5-14_18-46-3.JPG', 105002),
(128, 'Clothes3_2020-5-14_18-46-3.JPG', 179, 'media/images/Clothes3_2020-5-14_18-46-3.JPG', 105002),
(129, 'Clothes4_2020-5-14_18-46-3.JPG', 180, 'media/images/Clothes4_2020-5-14_18-46-3.JPG', 105002),
(130, 'Bridge_2020-5-14_19-14-25.png', 54, 'media/images/Bridge_2020-5-14_19-14-25.png', 105001),
(131, 'Bridge1_2020-5-14_19-14-25.png', 54, 'media/images/Bridge1_2020-5-14_19-14-25.png', 105001),
(132, 'Bridge2_2020-5-14_19-14-25.png', 54, 'media/images/Bridge2_2020-5-14_19-14-25.png', 105001),
(133, 'Bridge3_2020-5-14_19-14-25.png', 54, 'media/images/Bridge3_2020-5-14_19-14-25.png', 105001),
(134, 'Map_2020-6-21_22-59-23.png', 58, 'media/images/Map_2020-6-21_22-59-23.png', 105001);

-- --------------------------------------------------------

--
-- Table structure for table `ques_option`
--

CREATE TABLE `ques_option` (
  `optionID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ques_option`
--

INSERT INTO `ques_option` (`optionID`, `questionID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 5),
(18, 5),
(19, 5),
(20, 5),
(21, 7),
(22, 7),
(23, 7),
(24, 7),
(25, 8),
(26, 8),
(27, 8),
(28, 8),
(29, 9),
(30, 9),
(31, 9),
(32, 9),
(33, 10),
(34, 10),
(35, 10),
(36, 10),
(37, 11),
(38, 11),
(39, 11),
(40, 11),
(41, 12),
(42, 12),
(43, 12),
(44, 12),
(45, 13),
(46, 13),
(47, 13),
(48, 13),
(49, 14),
(50, 14),
(51, 14),
(52, 14),
(53, 15),
(54, 15),
(55, 15),
(56, 15),
(57, 16),
(58, 16),
(59, 16),
(60, 16),
(61, 18),
(62, 18),
(63, 18),
(64, 18),
(65, 19),
(66, 19),
(67, 19),
(68, 19),
(69, 20),
(70, 20),
(71, 20),
(72, 20),
(73, 21),
(74, 21),
(75, 21),
(76, 21),
(77, 22),
(78, 22),
(79, 22),
(80, 22),
(81, 23),
(82, 23),
(83, 23),
(84, 23),
(85, 24),
(86, 24),
(87, 24),
(88, 24),
(89, 25),
(90, 25),
(91, 25),
(92, 25),
(93, 26),
(94, 26),
(95, 26),
(96, 26),
(97, 27),
(98, 27),
(99, 27),
(100, 27),
(101, 28),
(102, 28),
(103, 28),
(104, 28),
(105, 29),
(106, 29),
(107, 29),
(108, 29),
(109, 31),
(110, 31),
(111, 31),
(112, 31),
(113, 33),
(114, 33),
(115, 33),
(116, 33),
(117, 34),
(118, 34),
(119, 34),
(120, 34),
(121, 37),
(122, 37),
(123, 37),
(124, 37),
(125, 38),
(126, 38),
(127, 38),
(128, 38),
(129, 39),
(130, 39),
(131, 39),
(132, 39),
(133, 40),
(134, 40),
(135, 40),
(136, 40),
(137, 41),
(138, 41),
(139, 41),
(140, 41),
(141, 42),
(142, 42),
(143, 42),
(144, 42),
(145, 43),
(146, 43),
(147, 43),
(148, 43),
(149, 44),
(150, 44),
(151, 44),
(152, 44),
(153, 45),
(154, 45),
(155, 45),
(156, 45),
(157, 47),
(158, 47),
(159, 47),
(160, 47),
(161, 48),
(162, 48),
(163, 48),
(164, 48),
(165, 50),
(166, 50),
(167, 50),
(168, 50),
(169, 51),
(170, 51),
(171, 51),
(172, 51),
(173, 52),
(174, 52),
(175, 52),
(176, 52),
(177, 53),
(178, 53),
(179, 53),
(180, 53),
(181, 54),
(182, 54),
(183, 54),
(184, 54),
(185, 55),
(186, 55),
(187, 55),
(188, 55),
(189, 56),
(190, 56),
(191, 56),
(192, 56),
(193, 57),
(194, 57),
(195, 57),
(196, 57),
(197, 58),
(198, 58),
(199, 58),
(200, 58),
(201, 59),
(202, 59),
(203, 59),
(204, 59),
(205, 60),
(206, 60),
(207, 60),
(208, 60),
(209, 61),
(210, 61),
(211, 61),
(212, 61);

-- --------------------------------------------------------

--
-- Table structure for table `ques_optiontranslation`
--

CREATE TABLE `ques_optiontranslation` (
  `optionTranslationID` int(11) NOT NULL,
  `translationO` longtext NOT NULL,
  `languageCodeID` int(11) NOT NULL,
  `optionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ques_optiontranslation`
--

INSERT INTO `ques_optiontranslation` (`optionTranslationID`, `translationO`, `languageCodeID`, `optionID`) VALUES
(1, '{\"option\":\"4\"}', 102001, 1),
(2, '{\"option\":\"9\"}', 102001, 2),
(3, '{\"option\":\"13\"}', 102001, 3),
(4, '{\"option\":\"15\"}', 102001, 4),
(5, '{\"option\":\"A\"}', 102001, 5),
(6, '{\"option\":\"B\"}', 102001, 6),
(7, '{\"option\":\"C\"}', 102001, 7),
(8, '{\"option\":\"D\"}', 102001, 8),
(9, '{\"option\":\"B\"}', 102001, 9),
(10, '{\"option\":\"A\"}', 102001, 10),
(11, '{\"option\":\"H\"}', 102001, 11),
(12, '{\"option\":\"D\"}', 102001, 12),
(13, '{\"option\":\"A\"}', 102001, 13),
(14, '{\"option\":\"B\"}', 102001, 14),
(15, '{\"option\":\"C\"}', 102001, 15),
(16, '{\"option\":\"D\"}', 102001, 16),
(17, '{\"option\":\"16A\"}', 102001, 17),
(18, '{\"option\":\"9C\"}', 102001, 18),
(19, '{\"option\":\"18B\"}', 102001, 19),
(20, '{\"option\":\"16C\"}', 102001, 20),
(21, '{\"option\":\"4\"}', 102001, 21),
(22, '{\"option\":\"16\"}', 102001, 22),
(23, '{\"option\":\"25\"}', 102001, 23),
(24, '{\"option\":\"36\"}', 102001, 24),
(25, '{\"option\":\"moropalti\"}', 102001, 25),
(26, '{\"option\":\"krekindrita\"}', 102001, 26),
(27, '{\"option\":\"altiblaf\"}', 102001, 27),
(28, '{\"option\":\"dritaalti\"}', 102001, 28),
(29, '{\"option\":\"B\"}', 102002, 9),
(30, '{\"option\":\"A\"}', 102002, 10),
(31, '{\"option\":\"H\"}', 102002, 11),
(32, '{\"option\":\"D\"}', 102002, 12),
(33, '{\"option\":\"1\"}', 102002, 29),
(34, '{\"option\":\"2\"}', 102002, 30),
(35, '{\"option\":\"3\"}', 102002, 31),
(36, '{\"option\":\"4\"}', 102002, 32),
(37, '{\"option\":\"2\"}', 102001, 33),
(38, '{\"option\":\"3\"}', 102001, 34),
(39, '{\"option\":\"4\"}', 102001, 35),
(40, '{\"option\":\"5\"}', 102001, 36),
(41, '{\"option\":\"4\"}', 102001, 37),
(42, '{\"option\":\"5\"}', 102001, 38),
(43, '{\"option\":\"6\"}', 102001, 39),
(44, '{\"option\":\"7\"}', 102001, 40),
(45, '{\"option\":\"E12\"}', 102001, 41),
(46, '{\"option\":\"F21\"}', 102001, 42),
(47, '{\"option\":\"Q15\"}', 102001, 43),
(48, '{\"option\":\"C12\"}', 102001, 44),
(49, '{\"option\":\"A\"}', 102001, 45),
(50, '{\"option\":\"B\"}', 102001, 46),
(51, '{\"option\":\"C\"}', 102001, 47),
(52, '{\"option\":\"D\"}', 102001, 48),
(53, '{\"option\":\"2\"}', 102005, 33),
(54, '{\"option\":\"3\"}', 102005, 34),
(55, '{\"option\":\"4\"}', 102005, 35),
(56, '{\"option\":\"5\"}', 102005, 36),
(57, '{\"option\":\"4\"}', 102003, 37),
(58, '{\"option\":\"5\"}', 102003, 38),
(59, '{\"option\":\"6\"}', 102003, 39),
(60, '{\"option\":\"7\"}', 102003, 40),
(61, '{\"option\":\"2\"}', 102003, 33),
(62, '{\"option\":\"3\"}', 102003, 34),
(63, '{\"option\":\"4\"}', 102003, 35),
(64, '{\"option\":\"5\"}', 102003, 36),
(65, '{\"option\":\"A\"}', 102001, 49),
(66, '{\"option\":\"B\"}', 102001, 50),
(67, '{\"option\":\"C\"}', 102001, 51),
(68, '{\"option\":\"D\"}', 102001, 52),
(69, '{\"option\":\"4\"}', 102005, 37),
(70, '{\"option\":\"5\"}', 102005, 38),
(71, '{\"option\":\"6\"}', 102005, 39),
(72, '{\"option\":\"7\"}', 102005, 40),
(73, '{\"option\":\"F21\"}', 102003, 41),
(74, '{\"option\":\"Q15\"}', 102003, 42),
(75, '{\"option\":\"F12\"}', 102003, 43),
(76, '{\"option\":\"E12\"}', 102003, 44),
(77, '{\"option\":\"A\"}', 102005, 49),
(78, '{\"option\":\"B\"}', 102005, 50),
(79, '{\"option\":\"C\"}', 102005, 51),
(80, '{\"option\":\"D\"}', 102005, 52),
(81, '{\"option\":\"A\"}', 102003, 45),
(82, '{\"option\":\"B\"}', 102003, 46),
(83, '{\"option\":\"C\"}', 102003, 47),
(84, '{\"option\":\"D\"}', 102003, 48),
(85, '{\"option\":\"Beaver 1 and Beaver 3\"}', 102001, 53),
(86, '{\"option\":\"Beaver 1 and Beaver 2\"}', 102001, 54),
(87, '{\"option\":\"Beaver 3 and Beaver 4\"}', 102001, 55),
(88, '{\"option\":\"Beaver 2 and Beaver 4\"}', 102001, 56),
(89, '{\"option\":\"A\"}', 102003, 49),
(90, '{\"option\":\"B\"}', 102003, 50),
(91, '{\"option\":\"C\"}', 102003, 51),
(92, '{\"option\":\"D\"}', 102003, 52),
(93, '{\"option\":\"\\u0aac\\u0ac0\\u0ab5\\u0ab0 1 \\u0a85\\u0aa8\\u0ac7 \\u0aac\\u0ac0\\u0ab5\\u0ab0 3\"}', 102003, 53),
(94, '{\"option\":\"\\u0aac\\u0ac0\\u0ab5\\u0ab0 1 \\u0a85\\u0aa8\\u0ac7 \\u0aac\\u0ac0\\u0ab5\\u0ab0 2\"}', 102003, 54),
(95, '{\"option\":\"\\u0aac\\u0ac0\\u0ab5\\u0ab0 3 \\u0a85\\u0aa8\\u0ac7 \\u0aac\\u0ac0\\u0ab5\\u0ab0 4\"}', 102003, 55),
(96, '{\"option\":\"\\u0aac\\u0ac0\\u0ab5\\u0ab0 2 \\u0a85\\u0aa8\\u0ac7 \\u0aac\\u0ac0\\u0ab5\\u0ab0 4\"}', 102003, 56),
(97, '{\"option\":\"A\"}', 102001, 57),
(98, '{\"option\":\"B\"}', 102001, 58),
(99, '{\"option\":\"C\"}', 102001, 59),
(100, '{\"option\":\"D\"}', 102001, 60),
(101, '{\"option\":\"Car F\"}', 102001, 61),
(102, '{\"option\":\"Car G\"}', 102001, 62),
(103, '{\"option\":\"Car H\"}', 102001, 63),
(104, '{\"option\":\"Car I\"}', 102001, 64),
(105, '{\"option\":\"peslstrisi\"}', 102001, 65),
(106, '{\"option\":\"gantipesl\"}', 102001, 66),
(107, '{\"option\":\"vosefstrisi\"}', 102001, 67),
(108, '{\"option\":\"oltastrisi\"}', 102001, 68),
(109, '{\"option\":\"8\"}', 102001, 69),
(110, '{\"option\":\"16\"}', 102001, 70),
(111, '{\"option\":\"16,64\"}', 102001, 71),
(112, '{\"option\":\"25\"}', 102001, 72),
(113, '{\"option\":\"  ... Chocolate, Smurf and Strawberry!\"}', 102001, 73),
(114, '{\"option\":\"... Strawberry, Smurf and Chocolate!\"}', 102001, 74),
(115, '{\"option\":\"... Chocolate, Strawberry and Smurf! \"}', 102001, 75),
(116, '{\"option\":\"... Strawberry, Chocolate and Smurf!\"}', 102001, 76),
(117, '{\"option\":\"A\"}', 102001, 77),
(118, '{\"option\":\"B\"}', 102001, 78),
(119, '{\"option\":\"C\"}', 102001, 79),
(120, '{\"option\":\"D\"}', 102001, 80),
(121, '{\"option\":\"If Raju packs Roti  Vegetable for lunch, he cannot pack a Sandwich for his snack\"}', 102001, 81),
(122, '{\"option\":\"If Raju packs Paratha for lunch, he can only pack Fruit Bhel for his snack\"}', 102001, 82),
(123, '{\"option\":\"If Raju packs Rice for lunch, he can pack Poha for his snack\"}', 102001, 83),
(124, '{\"option\":\"If Raju packs Rice for lunch, he can pack either a Sandwich or Fruit Bhel for his snack\"}', 102001, 84),
(125, '{\"option\":\"10\"}', 102001, 85),
(126, '{\"option\":\"12\"}', 102001, 86),
(127, '{\"option\":\"14\"}', 102001, 87),
(128, '{\"option\":\"16\"}', 102001, 88),
(129, '{\"option\":\"Thunderstorm\"}', 102001, 89),
(130, '{\"option\":\"light rain\"}', 102001, 90),
(131, '{\"option\":\"Cloudy\"}', 102001, 91),
(132, '{\"option\":\"sunny\"}', 102001, 92),
(133, '{\"option\":\"Miriam\"}', 102001, 93),
(134, '{\"option\":\"Iris\"}', 102001, 94),
(135, '{\"option\":\"Emma\"}', 102001, 95),
(136, '{\"option\":\"Ina\"}', 102001, 96),
(137, '{\"option\":\"2\"}', 102001, 97),
(138, '{\"option\":\"3\"}', 102001, 98),
(139, '{\"option\":\"5\"}', 102001, 99),
(140, '{\"option\":\"8\"}', 102001, 100),
(141, '{\"option\":\"A\"}', 102001, 101),
(142, '{\"option\":\"B\"}', 102001, 102),
(143, '{\"option\":\"C\"}', 102001, 103),
(144, '{\"option\":\"D\"}', 102001, 104),
(145, '{\"option\":\"SAVEWATER\"}', 102001, 105),
(146, '{\"option\":\"CLEARDAYS\"}', 102001, 106),
(147, '{\"option\":\"SAVEMYDAM\"}', 102001, 107),
(148, '{\"option\":\"CAREFORME\"}', 102001, 108),
(149, '{\"option\":\"A\"}', 102001, 109),
(150, '{\"option\":\"B\"}', 102001, 110),
(151, '{\"option\":\"C\"}', 102001, 111),
(152, '{\"option\":\"D\"}', 102001, 112),
(153, '{\"option\":\"4756123\"}', 102001, 113),
(154, '{\"option\":\"6574321\"}', 102001, 114),
(155, '{\"option\":\"2165347\"}', 102001, 115),
(156, '{\"option\":\"5761432\"}', 102001, 116),
(157, '{\"option\":\"A\"}', 102001, 117),
(158, '{\"option\":\"B\"}', 102001, 118),
(159, '{\"option\":\"C\"}', 102001, 119),
(160, '{\"option\":\"D\"}', 102001, 120),
(161, '{\"option\":\"2\"}', 102001, 121),
(162, '{\"option\":\"3\"}', 102001, 122),
(163, '{\"option\":\"4\"}', 102001, 123),
(164, '{\"option\":\"5\"}', 102001, 124),
(165, '{\"option\":\"2\"}', 102005, 97),
(166, '{\"option\":\"3\"}', 102005, 98),
(167, '{\"option\":\"5\"}', 102005, 99),
(168, '{\"option\":\"8\"}', 102005, 100),
(169, '{\"option\":\"2\"}', 102007, 97),
(170, '{\"option\":\"3\"}', 102007, 98),
(171, '{\"option\":\"5\"}', 102007, 99),
(172, '{\"option\":\"8\"}', 102007, 100),
(173, '{\"option\":\"4\"}', 102001, 125),
(174, '{\"option\":\"5\"}', 102001, 126),
(175, '{\"option\":\"6\"}', 102001, 127),
(176, '{\"option\":\"10\"}', 102001, 128),
(177, '{\"option\":\"A\"}', 102007, 117),
(178, '{\"option\":\"B\"}', 102007, 118),
(179, '{\"option\":\"C\"}', 102007, 119),
(180, '{\"option\":\"D\"}', 102007, 120),
(181, '{\"option\":\"A\"}', 102005, 117),
(182, '{\"option\":\"B\"}', 102005, 118),
(183, '{\"option\":\"C\"}', 102005, 119),
(184, '{\"option\":\"D\"}', 102005, 120),
(185, '{\"option\":\"2\"}', 102001, 129),
(186, '{\"option\":\"3\"}', 102001, 130),
(187, '{\"option\":\"4\"}', 102001, 131),
(188, '{\"option\":\"5\"}', 102001, 132),
(189, '{\"option\":\"SAVEWATER\"}', 102007, 105),
(190, '{\"option\":\"CLEARDAYS\"}', 102007, 106),
(191, '{\"option\":\"SAVEMYDAM\"}', 102007, 107),
(192, '{\"option\":\"CAREFORME\"}', 102007, 108),
(193, '{\"option\":\"SAVEWATER\"}', 102005, 105),
(194, '{\"option\":\"CLEARDAYS\"}', 102005, 106),
(195, '{\"option\":\"SAVEMYDAM\"}', 102005, 107),
(196, '{\"option\":\"CAREFORME\"}', 102005, 108),
(197, '{\"option\":\"a e c g b f d h\"}', 102001, 133),
(198, '{\"option\":\"a d c g b f e h\"}', 102001, 134),
(199, '{\"option\":\"a g c d b f e h \"}', 102001, 135),
(200, '{\"option\":\"a c e d f g h b\"}', 102001, 136),
(201, '{\"option\":\"(1110)\"}', 102001, 137),
(202, '{\"option\":\"(11(1011)1)\"}', 102001, 138),
(203, '{\"option\":\"(111(1(1101)11))\"}', 102001, 139),
(204, '{\"option\":\"(111(1(1011)11))\"}', 102001, 140),
(205, '{\"option\":\"Tom\"}', 102001, 141),
(206, '{\"option\":\"Sarah\"}', 102001, 142),
(207, '{\"option\":\"Bill\"}', 102001, 143),
(208, '{\"option\":\"Kim\"}', 102001, 144),
(209, '{\"option\":\"A\"}', 102001, 145),
(210, '{\"option\":\"B\"}', 102001, 146),
(211, '{\"option\":\"C\"}', 102001, 147),
(212, '{\"option\":\"D\"}', 102001, 148),
(213, '{\"option\":\"3\"}', 102001, 149),
(214, '{\"option\":\"4\"}', 102001, 150),
(215, '{\"option\":\"5\"}', 102001, 151),
(216, '{\"option\":\"6\"}', 102001, 152),
(217, '{\"option\":\"A\"}', 102001, 153),
(218, '{\"option\":\"B\"}', 102001, 154),
(219, '{\"option\":\"C\"}', 102001, 155),
(220, '{\"option\":\"D\"}', 102001, 156),
(221, '{\"option\":\"3 hours\"}', 102001, 157),
(222, '{\"option\":\"2 hours \"}', 102001, 158),
(223, '{\"option\":\"1 hour and a half\"}', 102001, 159),
(224, '{\"option\":\"1 hour\"}', 102001, 160),
(225, '{\"option\":\"A\"}', 102001, 161),
(226, '{\"option\":\"B\"}', 102001, 162),
(227, '{\"option\":\"C\"}', 102001, 163),
(228, '{\"option\":\"D\"}', 102001, 164),
(229, '{\"option\":\"A\"}', 102004, 161),
(230, '{\"option\":\"B\"}', 102004, 162),
(231, '{\"option\":\"C\"}', 102004, 163),
(232, '{\"option\":\"D\"}', 102004, 164),
(233, '{\"option\":\"2 and 3\"}', 102001, 165),
(234, '{\"option\":\"1 and 3\"}', 102001, 166),
(235, '{\"option\":\"1 and 5\"}', 102001, 167),
(236, '{\"option\":\"None\"}', 102001, 168),
(237, '{\"option\":\"\\u0ce8 \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 \\u0ce9\"}', 102004, 165),
(238, '{\"option\":\"\\u0ce7 \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 \\u0ce9\"}', 102004, 166),
(239, '{\"option\":\"\\u0ce7 \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 \\u0ceb\"}', 102004, 167),
(240, '{\"option\":\"\\u0caf\\u0cbe\\u0cb5\\u0cc1\\u0ca6\\u0cc2 \\u0c85\\u0cb2\\u0ccd\\u0cb2\"}', 102004, 168),
(241, '{\"option\":\"A\"}', 102001, 169),
(242, '{\"option\":\"B\"}', 102001, 170),
(243, '{\"option\":\"C\"}', 102001, 171),
(244, '{\"option\":\"D\"}', 102001, 172),
(245, '{\"option\":\"A\"}', 102004, 169),
(246, '{\"option\":\"B\"}', 102004, 170),
(247, '{\"option\":\"C\"}', 102004, 171),
(248, '{\"option\":\"D\"}', 102004, 172),
(249, '{\"option\":\"Monday\"}', 102001, 173),
(250, '{\"option\":\"Tuesday\"}', 102001, 174),
(251, '{\"option\":\"Wednesday\"}', 102001, 175),
(252, '{\"option\":\"Thursday\"}', 102001, 176),
(253, '{\"option\":\"Monday\"}', 102004, 173),
(254, '{\"option\":\"Tuesday\"}', 102004, 174),
(255, '{\"option\":\"Wednesday\"}', 102004, 175),
(256, '{\"option\":\"Thursday\"}', 102004, 176),
(257, '{\"option\":\"4\"}', 102001, 177),
(258, '{\"option\":\"B\"}', 102001, 178),
(259, '{\"option\":\"C\"}', 102001, 179),
(260, '{\"option\":\"D\"}', 102001, 180),
(261, '{\"option\":\"Drop a carrot down waterfall 3\"}', 102001, 181),
(262, '{\"option\":\"Drop a carrot down waterfall 2\"}', 102001, 182),
(263, '{\"option\":\"Drop a fish down waterfall 2\"}', 102001, 183),
(264, '{\"option\":\"Drop a fish down waterfall 1\"}', 102001, 184),
(265, '{\"option\":\"A\"}', 102004, 177),
(266, '{\"option\":\"B\"}', 102004, 178),
(267, '{\"option\":\"C\"}', 102004, 179),
(268, '{\"option\":\"D\"}', 102004, 180),
(269, '{\"option\":\"Assam\"}', 102001, 185),
(270, '{\"option\":\"Himachal Pradesh\"}', 102001, 186),
(271, '{\"option\":\"Meghalaya\"}', 102001, 187),
(272, '{\"option\":\"Jammu and Kashmir\"}', 102001, 188),
(273, '{\"option\":\"fitness walking is a better form of exercise than weight lifting.\"}', 102001, 189),
(274, '{\"option\":\"a membership in a health club is a poor investment.\"}', 102001, 190),
(275, '{\"option\":\"walking outdoors provides a better workout than walking indoors.\"}', 102001, 191),
(276, '{\"option\":\"fitness walking is a convenient and valuable form of exercise.\"}', 102001, 192),
(277, '{\"option\":\"3 \\u0ca8\\u0cc7 \\u0c9c\\u0cb2\\u0caa\\u0cbe\\u0ca4\\u0ca6\\u0cbf\\u0c82\\u0ca6 \\u0c95\\u0ccd\\u0caf\\u0cbe\\u0cb0\\u0cc6\\u0c9f\\u0ccd \\u0c85\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cac\\u0cbf\\u0ca1\\u0cbf\"}', 102004, 181),
(278, '{\"option\":\"1 \\u0ca8\\u0cc7 \\u0c9c\\u0cb2\\u0caa\\u0cbe\\u0ca4\\u0ca6 \\u0c95\\u0cc6\\u0cb3\\u0c97\\u0cc6 \\u0c92\\u0c82\\u0ca6\\u0cc1 \\u0cae\\u0cc0\\u0ca8\\u0cc1 \\u0cac\\u0cbf\\u0ca1\\u0cbf\"}', 102004, 182),
(279, '{\"option\":\"2 \\u0ca8\\u0cc7 \\u0c9c\\u0cb2\\u0caa\\u0cbe\\u0ca4\\u0ca6 \\u0c95\\u0cc6\\u0cb3\\u0c97\\u0cc6 \\u0c92\\u0c82\\u0ca6\\u0cc1 \\u0cae\\u0cc0\\u0ca8\\u0cc1 \\u0cac\\u0cbf\\u0ca1\\u0cbf\"}', 102004, 183),
(280, '{\"option\":\"2 \\u0ca8\\u0cc7 \\u0c9c\\u0cb2\\u0caa\\u0cbe\\u0ca4\\u0ca6\\u0cbf\\u0c82\\u0ca6 \\u0c95\\u0ccd\\u0caf\\u0cbe\\u0cb0\\u0cc6\\u0c9f\\u0ccd \\u0c85\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cac\\u0cbf\\u0ca1\\u0cbf\"}', 102004, 184),
(281, '{\"option\":\"0\"}', 102001, 193),
(282, '{\"option\":\"1\"}', 102001, 194),
(283, '{\"option\":\"2\"}', 102001, 195),
(284, '{\"option\":\"3\"}', 102001, 196),
(285, '{\"option\":\"\\u0ce6\"}', 102004, 193),
(286, '{\"option\":\"\\u0ce7\"}', 102004, 194),
(287, '{\"option\":\"\\u0ce8\"}', 102004, 195),
(288, '{\"option\":\"\\u0ce9\"}', 102004, 196),
(289, '{\"option\":\"\\u0ae8\"}', 102003, 97),
(290, '{\"option\":\"\\u0ae9\"}', 102003, 98),
(291, '{\"option\":\"\\u0aeb\"}', 102003, 99),
(292, '{\"option\":\"\\u0aee\"}', 102003, 100),
(293, '{\"option\":\"2\"}', 102006, 97),
(294, '{\"option\":\"3\"}', 102006, 98),
(295, '{\"option\":\"5\"}', 102006, 99),
(296, '{\"option\":\"8\"}', 102006, 100),
(297, '{\"option\":\"A\"}', 102003, 117),
(298, '{\"option\":\"B\"}', 102003, 118),
(299, '{\"option\":\"C\"}', 102003, 119),
(300, '{\"option\":\"D\"}', 102003, 120),
(301, '{\"option\":\"A\"}', 102006, 117),
(302, '{\"option\":\"B\"}', 102006, 118),
(303, '{\"option\":\"C\"}', 102006, 119),
(304, '{\"option\":\"D\"}', 102006, 120),
(305, '{\"option\":\"City C to City B\"}', 102001, 197),
(306, '{\"option\":\"City A to City D\"}', 102001, 198),
(307, '{\"option\":\"City A to City C\"}', 102001, 199),
(308, '{\"option\":\"City B to City E\"}', 102001, 200),
(309, '{\"option\":\"\\u0cb8\\u0cbf \\u0ca8\\u0c97\\u0cb0\\u0ca6\\u0cbf\\u0c82\\u0ca6 \\u0cac \\u0ca8\\u0c97\\u0cb0\\u0c95\\u0ccd\\u0c95\\u0cc6\"}', 102004, 197),
(310, '{\"option\":\"\\u0c8e \\u0ca8\\u0c97\\u0cb0\\u0ca6\\u0cbf\\u0c82\\u0ca6 \\u0ca1 \\u0ca8\\u0c97\\u0cb0\\u0c95\\u0ccd\\u0c95\\u0cc6\"}', 102004, 198),
(311, '{\"option\":\"\\u0c8e \\u0ca8\\u0c97\\u0cb0\\u0ca6\\u0cbf\\u0c82\\u0ca6 \\u0cb8\\u0cbf \\u0ca8\\u0c97\\u0cb0\\u0c95\\u0ccd\\u0c95\\u0cc6\"}', 102004, 199),
(312, '{\"option\":\"\\u0cac \\u0ca8\\u0c97\\u0cb0\\u0ca6\\u0cbf\\u0c82\\u0ca6 \\u0c87 \\u0ca8\\u0c97\\u0cb0\\u0c95\\u0ccd\\u0c95\\u0cc6\"}', 102004, 200),
(313, '{\"option\":\"10\"}', 102001, 201),
(314, '{\"option\":\"15\"}', 102001, 202),
(315, '{\"option\":\"20\"}', 102001, 203),
(316, '{\"option\":\"25\"}', 102001, 204),
(317, '{\"option\":\"India and Australia\"}', 102001, 205),
(318, '{\"option\":\"India and Pakistan\"}', 102001, 206),
(319, '{\"option\":\"Australia and South Africa\"}', 102001, 207),
(320, '{\"option\":\"England and Australia\"}', 102001, 208),
(321, '{\"option\":\" Nepal\"}', 102001, 209),
(322, '{\"option\":\" Bangladesh\"}', 102001, 210),
(323, '{\"option\":\"Bhutan\"}', 102001, 211),
(324, '{\"option\":\"Sri Lanka\"}', 102001, 212);

-- --------------------------------------------------------

--
-- Table structure for table `ques_question`
--

CREATE TABLE `ques_question` (
  `questionID` int(11) NOT NULL,
  `cs_skills` varchar(50) NOT NULL,
  `countryID` int(11) NOT NULL,
  `domainCodeID` int(11) NOT NULL,
  `questionTypeCodeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ques_question`
--

INSERT INTO `ques_question` (`questionID`, `cs_skills`, `countryID`, `domainCodeID`, `questionTypeCodeID`) VALUES
(1, '108001,108004', 21, 104005, 103002),
(2, '108002,108003', 99, 104002, 103001),
(3, '108001', 99, 104004, 103002),
(4, '108002,108004', 55, 104004, 103002),
(5, '108004', 99, 104004, 103002),
(6, '108004', 99, 104003, 103002),
(7, '108004', 99, 104004, 103002),
(8, '108001', 99, 104003, 103002),
(9, '108004', 99, 104002, 103002),
(10, '108004', 206, 104002, 103002),
(11, '108002', 38, 104001, 103002),
(12, '108002', 99, 104005, 103002),
(13, '108003', 123, 104002, 103001),
(14, '108004', 97, 104002, 103001),
(15, '108002', 177, 104001, 103002),
(16, '108001', 112, 104002, 103001),
(17, '108002', 73, 104001, 103002),
(18, '108002', 21, 104002, 103002),
(19, '108004,108002', 99, 104001, 103002),
(20, '108004', 99, 104004, 103002),
(21, '108003,108004', 38, 104004, 103002),
(22, '108002,108003,108001', 97, 104002, 103001),
(23, '108004', 99, 104003, 103002),
(24, '108002', 177, 104001, 103002),
(25, '108004', 206, 104005, 103002),
(26, '108004,108003,108002', 38, 104004, 103002),
(27, '108002,108003,108004', 177, 104002, 103002),
(28, '108002', 218, 104001, 103001),
(29, '108002,108003', 206, 104001, 103002),
(30, '108001,108004', 97, 104005, 103002),
(31, '108003,108004', 193, 104002, 103001),
(32, '108003,108002', 99, 104001, 103002),
(33, '108001,108003,108002', 21, 104001, 103002),
(34, '108003,108004', 193, 104002, 103001),
(36, '108002', 21, 104001, 103002),
(37, '108001', 107, 104001, 103002),
(38, '108003,108004', 38, 104004, 103002),
(39, '108001,108003,108004', 193, 104005, 103002),
(40, '108002,108003', 38, 104001, 103002),
(41, '108004,108003', 107, 104005, 103002),
(42, '108002,108003,108004', 97, 104003, 103002),
(43, '108003,108002', 99, 104002, 103001),
(44, '108001,108002,108003,108004', 99, 104004, 103002),
(45, '108003', 21, 104002, 103001),
(46, '108002', 99, 104001, 103002),
(47, '108001', 97, 104003, 103002),
(48, '108004', 13, 104002, 103001),
(49, '108004', 13, 104003, 103002),
(50, '108001', 13, 104003, 103002),
(51, '108004', 13, 104002, 103001),
(52, '108004', 13, 104004, 103002),
(53, '108003,108004', 21, 104002, 103001),
(54, '108002', 21, 104001, 103002),
(55, '108004', 99, 104003, 103002),
(56, '108004,108003', 99, 104003, 103002),
(57, '108004', 21, 104004, 103002),
(58, '108003,108004', 225, 104002, 103002),
(59, '108004', 99, 104003, 103002),
(60, '108004,108003', 99, 104003, 103002),
(61, '108004', 99, 104003, 103002);

-- --------------------------------------------------------

--
-- Table structure for table `ques_questiontranslation`
--

CREATE TABLE `ques_questiontranslation` (
  `questionTranslationID` int(11) NOT NULL,
  `translation` longtext NOT NULL,
  `modified_on` date NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  `Identifier` varchar(50) NOT NULL,
  `languageCodeID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ques_questiontranslation`
--

INSERT INTO `ques_questiontranslation` (`questionTranslationID`, `translation`, `modified_on`, `modified_by`, `Identifier`, `languageCodeID`, `questionID`) VALUES
(1, '{\"caption\":\"Worm\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_710895040_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_710895040_0_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_2_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A worm sits at the end of the branch of the big tree.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The worm&nbsp;wants to eat all the apples by moving through the tree branches.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">(The tree is made of branch sections of 1 feet long).</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/2)Worm_1_2020-5-5_2-8-12.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question:&nbsp;</strong></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What is the&nbsp;shortest distance,&nbsp;in feet, that the worm has to crawl to eat all of the apples?</span></span><br></p></div></div></div></div></div></div></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_710895040_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_710895040_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><p style=\\\"margin: 0in 0in 15.65pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Worm has to reach all apples. 4 and 6 are not the correct answers, because it is not possible to reach all apples passing 4 or 6 branch parts only.</span></span></p><p style=\\\"margin: 0in 0in 15.65pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"> -The path with lengths 4 or 6 branch parts will allow worm to collect only one apple.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"> -The path with length 13 allows worm to reach all apples. First he has to reach the closest apple and then the remaining three apples. Notice it does not matter in which order the worm&nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">will reach the remaining apples.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"> -The path with length 15 is too long.</span></span><span style=\\\"font-size:11.0pt;\\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#3D3F32\\\"><o:p></o:p></span></p></div><div id=\\\"answerContent\\\"><br></div><div id=\\\"answerContent\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/2)Worm_Exp_2020-5-5_2-8-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"\\\"></div></div></div></div></div>\"}', '2020-06-09', 'komal.amrutkar@cumminscollege.in', '2018-BE-01-Worm_EN', 102001, 1),
(2, '{\"caption\":\"Fish Bowl\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Jayesh wanted to buy a fish bowl having Goldfish, Angelfish, Betta, Tetra and Guppy.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p>&nbsp;<img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/fish_2020-5-5_2-56-24.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">He visited a pet shop and learnt that not all of the fish that he wanted were friends with each other and fish that are not friends cannot live together in the same bowl.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;He learnt that:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">-Angelfish is friends with Betta and Tetra&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">-Guppy and Tetra are friends with Betta</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;-Goldfish is friends with Betta and Guppy&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">-If two fish of the same kind are kept in a bowl, only two Angels, Goldfish, Guppies &nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"> </span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">&nbsp;</span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">and Tetras can be friends with each other</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question :</strong></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Which fishbowl will Jayesh take home?</span></span><span style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px;\\\">\\ufeff\\ufeff</span><br></p></div></div></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_2rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_2_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option A: Is incorrect because Angelfish and Goldfish are not friends with each other. </span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option B: Is incorrect because Goldfish is not friends with Betta. </span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option D: Is incorrect because two Betta cannot be together and Angel is not friends with Guppy. </span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option C: We have two Tetra, one Guppy and one Betta, all friends which each other and as per rules, two tetras can live together. </span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This option satisfies all the conditions.  </span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s<strong> </strong></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><strong>Computational Thinking</strong></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">:  </span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In this problem, one is given a practical situation of selecting fish species for a household aquarium.  As one might know, certain fish do not get along with certain other groups of fish. The rules or constraints for selection of fish are listed. While applying computer science methods to develop solution to problems, computer scientists come across a set of constraints. The solution that they build needs to check which constraints are satisfied. Constraints can be simple conditions. One can also consider more complex conditions where the constraints are combined by logical operators like conjunction (A and B), which means both constraints A and B have to be satisfied,), disjunction (A or B means satisfying just one of them is enough) or negation ( not A means A is not satisfied). To solve the above problem each rule has to be satisfied (AND) and within each rule we use a combination of the other logical operators.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-05', 'komal.amrutkar@cumminscollege.in', '2018-IN-01-Fish_EN', 102001, 2),
(3, '{\"caption\":\"Steps\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In a lake, there are 10 steps labelled using alphabets from A to J.</span></span><span style=\\\"background-color: unset; text-align: inherit; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.01071em;\\\">&nbsp;</span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Starting from step A,every minute a frog jumps to the 4th step from where it started-that is from the step A.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">From A it would go to to the step E.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">From E it would go to the step I.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">From I it would go to C etc.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question </strong></span><span style=\\\"font-size: 14pt;\\\">:</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Where would the frog be at the 60th minute if it starts at the step A?</span></span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 9.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The steps are labelled using alphabets from A to J.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">TO MAKE IT EASY, WE HAVE ASSIGNED NUMBERS TO THE STEPS AS FOLLOWS:</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;Labelled with alphabets : A B C D E F G H I J&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Labelled with numbers : 1 2 3 4 5 6 7 8 9 10&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The frog takes total 60 minutes and takes 4 step length jumps every time.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Thus,&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1st minute : 1 + 4 = 5th step (E)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">2nd minute : 5 + 4 = 9th step (I)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">3rd minute : 9 + 4 = 3rd step (C)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">4th minute : 3 + 4 = 7th step (G)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">5th minute : 7 + 4 = 11 = 10+1 = 1st step (A)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The same process is repeated 12 x 5 times.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Then, the jumping positions are&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1 5 9 3 7&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1 5 9 3 7&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1 5 9 3 7&nbsp;</span></span><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">and so on.&nbsp;</span></span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">After 15 cycles, frog will be in the 1st position i.e., at 5th minute, 10th minute, 15minutes....60th minute frog will be in the 1st position. i.e., at 60th</span></span></span></p><div><br></div></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-05', 'komal.amrutkar@cumminscollege.in', '2018-IN-02-Steps_EN', 102001, 3),
(4, '{\"caption\":\"Circle City\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_2rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_2_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In Circle&nbsp;City, navigation software does&nbsp;not&nbsp;give instructions like&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981\\tAt&nbsp;the next traffic&nbsp;circle, take the 4th exit.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981\\tAt the next traffic&nbsp;circle, take the 1st exit.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981\\tAt the next traffic&nbsp;circle, take the 2nd exit.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Instead, it gives you a sequence of numbers, like \\\"4 1 2\\\" which would make you go this way</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/3)Circle City_1_2020-5-5_10-48-43.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question </strong></span><span style=\\\"font-size: 14pt;\\\">:</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">If we start from A and follow the sequence 3 1 3 2 3, where will we end up?</span></span><br></p></div></div></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_3rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_3_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/3)Circle City_Exp_2020-5-5_10-48-43.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"\\\" width=\\\"459.9480519480519\\\" height=\\\"304\\\"></p><p><br></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A sequence of instructions - what we gave to the car - is the basis for a computer program. In this task we have a very simple set of instructions - it means that we have a very simple programming language.&nbsp;</span></span></p></div></div>\"}', '2020-06-05', 'komal.amrutkar@cumminscollege.in', '2018-CU-01-City_EN', 102001, 4),
(5, '{\"caption\":\"Letter Puzzle\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Missing Letter Puzzle:</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/LetterPuzzle_2020-5-5_11-7-13.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px;\\\">&nbsp;</span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;Find the missing letter from the below series?</span></span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In each column, out of the letters A, B and C, each of these must appear once.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Along the diagonals, the sum of two numbers is equal to the third number.&nbsp;</span></span></p><p><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\">The missing number will be (7 + 9) i.e. 16 and the letter will be C.  So, the answer is 16C.</span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-05', 'komal.amrutkar@cumminscollege.in', '2018-IN-03-LetterPuzzle_EN', 102001, 5),
(6, '{\"caption\":\"\\u092d\\u093e\\u0930\\u0924\\u0940\\u092f \\u0938\\u0902\\u0935\\u093f\\u0927\\u093e\\u0928\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div id=\\\"0\\\" class=\\\"react-draggable\\\" style=\\\"touch-action: none; transform: translate(0px, 0px);\\\"><pre style=\\\"white-space: pre-wrap; font-family: Arial;\\\"></pre></div><div id=\\\"1\\\" class=\\\"react-draggable react-draggable-dragged\\\" style=\\\"touch-action: none; transform: translate(-5px, 33px);\\\"><p><span style=\\\"font-size: 14pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><strong>Question </strong>:</span></span></p><p><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></p><p><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">\\u0935\\u0930\\u094d\\u0924\\u092e\\u093e\\u0928 \\u092e\\u0947\\u0902 \\u092d\\u093e\\u0930\\u0924\\u0940\\u092f \\u0938\\u0902\\u0935\\u093f\\u0927\\u093e\\u0928 \\u092e\\u0947\\u0902 \\u0915\\u093f\\u0924\\u0928\\u0940 \\u0930\\u093e\\u091c\\u092d\\u093e\\u0937\\u093e\\u090f\\u0902 \\u0935\\u0930\\u094d\\u0923\\u093f\\u0924 \\u0939\\u0948\\u0902?</span></span></p></div></div></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 9.925px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0935\\u0930\\u094d\\u0924\\u092e\\u093e\\u0928 \\u092e\\u0947\\u0902 \\u092d\\u093e\\u0930\\u0924\\u0940\\u092f \\u0938\\u0902\\u0935\\u093f\\u0927\\u093e\\u0928 \\u092e\\u0947\\u0902 22 \\u0930\\u093e\\u091c\\u092d\\u093e\\u0937\\u093e\\u090f\\u0902 \\u0935\\u0930\\u094d\\u0923\\u093f\\u0924 \\u0939\\u0948\\u0902. \\u0935\\u0930\\u094d\\u0924\\u092e\\u093e\\u0928 \\u092e\\u0947\\u0902 22 \\u0930\\u093e\\u091c\\u092d\\u093e\\u0937\\u093e\\u090f\\u0902 \\u0907\\u0938 \\u092a\\u094d\\u0930\\u0915\\u093e\\u0930 \\u0939\\u0948\\u0902; \\u092c\\u0902\\u0917\\u093e\\u0932\\u0940, \\u092c\\u094b\\u0921\\u093c\\u094b, \\u0921\\u094b\\u0917\\u0930\\u0940, \\u0917\\u0941\\u091c\\u0930\\u093e\\u0924\\u0940, \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940, \\u0915\\u0928\\u094d\\u0928\\u0921\\u093c, \\u0915\\u0936\\u094d\\u092e\\u0940\\u0930\\u0940, \\u0915\\u094b\\u0902\\u0915\\u0923\\u0940, \\u092e\\u0948\\u0925\\u093f\\u0932\\u0940, \\u092e\\u0932\\u092f\\u093e\\u0932\\u092e, \\u092e\\u0923\\u093f\\u092a\\u0941\\u0930\\u0940, \\u092e\\u0930\\u093e\\u0920\\u0940, \\u0928\\u0947\\u092a\\u093e\\u0932\\u0940, \\u0913\\u0921\\u093c\\u093f\\u092f\\u093e, \\u092a\\u0902\\u091c\\u093e\\u092c\\u0940 , \\u0938\\u0902\\u0938\\u094d\\u0915\\u0943\\u0924, \\u0938\\u0902\\u0925\\u093e\\u0932\\u0940, \\u0938\\u093f\\u0928\\u094d\\u0927\\u0940, \\u0924\\u092e\\u093f\\u0932, \\u0924\\u0947\\u0932\\u0941\\u0917\\u0942, \\u0909\\u0930\\u094d\\u0926\\u0942 \\u0914\\u0930 \\u0905\\u0938\\u092e\\u093f\\u092f\\u093e.</span></span></p></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-05', 'komal.amrutkar@cumminscollege.in', '2018-IN-04-Constitution_HI', 102002, 6),
(7, '{\"caption\":\"Find X\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><br><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/FindX_2020-5-5_11-40-36.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize e-rte-drag-image\\\"></p><p><br></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What is the value of X in above figure?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The value of X in above figure is 36 in every figure the sum of the square root of all corner digits comes in middle box.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Hence square root of 9 = 3.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2022\\tSquare root 64= 8,&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2022\\tSquare root of 1=1 3+8+1= 12&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2022\\t18-12=6(6)2 =36</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-05', 'komal.amrutkar@cumminscollege.in', '2018-IN-05-FindX_EN', 102001, 7),
(8, '{\"caption\":\"Artificial Language\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Here are some words translated from an artificial language.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;-krekinblaf means workforce&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;-dritakrekin means groundwork&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;-krekinalti means workplace</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\"><br></span></p><p><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\">Which word could mean \\u201csomeplace\\u201d?</span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Krekin means work; blaf means force; drita means ground; and alti means place.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;Drita means ground, so that rules out choices b and d. Choice c isn\\u2019t correct because blaf means force.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">That leaves choice a as the only possible answer.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-05', 'komal.amrutkar@cumminscollege.in', '2018-IN-06-ArtificialL_EN', 102001, 8),
(9, '{\"caption\":\"Indian Constitution\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div id=\\\"0\\\" class=\\\"react-draggable\\\" style=\\\"touch-action: none; transform: translate(0px, 0px);\\\"></div><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">How many languages are defined currently in the Indian Constitution?</span></span></p></div></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Currently 22 languages are there in Indian Constitution</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-06', 'komal.amrutkar@cumminscollege.in', '2018-IN-04-Constitution_EN', 102001, 6),
(10, '{\"caption\":\"\\u0938\\u094d\\u091f\\u0947\\u092a\\u094d\\u0938\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u090f\\u0915 \\u091d\\u0940\\u0932 \\u092e\\u0947\\u0902, A \\u0938\\u0947 J \\u0924\\u0915 \\u0915\\u0947 \\u0905\\u0915\\u094d\\u0937\\u0930 \\u0915\\u093e \\u0909\\u092a\\u092f\\u094b\\u0917 \\u0915\\u0930\\u0924\\u0947 \\u0939\\u0941\\u090f 10 \\u0938\\u094d\\u091f\\u0947\\u092a \\u0939\\u0948\\u0902\\u0964&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0938\\u094d\\u091f\\u0947\\u092a A \\u0938\\u0947 \\u0936\\u0941\\u0930\\u0942 \\u0939\\u094b\\u0915\\u0930, \\u0939\\u0930 \\u092e\\u093f\\u0928\\u091f \\u090f\\u0915 \\u092e\\u0947\\u0902\\u0922\\u0915 4 \\u0935\\u0947\\u0902 \\u0938\\u094d\\u091f\\u0947\\u092a \\u092a\\u0930 \\u0915\\u0942\\u0926\\u0924\\u093e \\u0939\\u0948, \\u091c\\u0939\\u093e\\u0901 \\u0938\\u0947 \\u092f\\u0939 \\u0936\\u0941\\u0930\\u0942 \\u0939\\u0941\\u0906 \\u0925\\u093e- A \\u0938\\u094d\\u091f\\u0947\\u092a\\u0964&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A \\u0938\\u0947 \\u092f\\u0939 \\u0938\\u094d\\u091f\\u0947\\u092a E \\u092a\\u0930 \\u091c\\u093e\\u0924\\u093e \\u0939\\u0948\\u0964&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">E \\u0938\\u0947 \\u092f\\u0939 \\u0938\\u094d\\u091f\\u0947\\u092a I \\u092a\\u0930 \\u091c\\u093e\\u0924\\u093e \\u0939\\u0948\\u0964&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">I \\u0938\\u0947 \\u092f\\u0939 \\u0938\\u094d\\u091f\\u0947\\u092a C \\u092a\\u0930 \\u091c\\u093e\\u0924\\u093e \\u0939\\u0948\\u0964&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u092f\\u0926\\u093f \\u092f\\u0939 \\u0938\\u094d\\u091f\\u0947\\u092a A \\u092a\\u0930 \\u0936\\u0941\\u0930\\u0942 \\u0939\\u094b\\u0924\\u093e \\u0939\\u0948 \\u0924\\u094b \\u092e\\u0947\\u0902\\u0922\\u0915 60 \\u0935\\u0947\\u0902 \\u092e\\u093f\\u0928\\u091f \\u092e\\u0947\\u0902 \\u0915\\u0939\\u093e\\u0902 \\u0939\\u094b\\u0917\\u093e?</span></span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The steps are labelled using alphabets from A to J.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">TO MAKE IT EASY, WE HAVE ASSIGNED NUMBERS TO THE STEPS AS FOLLOWS:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Labelled with alphabets : A B C D E F G H I J&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Labelled with numbers : 1 2 3 4 5 6 7 8 9 10&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The frog takes total 60 minutes and takes 4 step length jumps every time.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Thus,&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1st minute : 1 + 4 = 5th step (E)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">2nd minute : 5 + 4 = 9th step (I)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">3rd minute : 9 + 4 = 3rd step (C)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">4th minute : 3 + 4 = 7th step (G)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">5th minute : 7 + 4 = 11 = 10+1 = 1st step (A)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The same process is repeated 12 x 5 times.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Then, the jumping positions are&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1 5 9 3 7&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1 5 9 3 7&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1 5 9 3 7 and so on.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">After 15 cycles, frog will be in the 1st position i.e., at 5th minute, 10th minute, 15minutes....60th minute frog will be in the 1st position. i.e., at 60t</span></span></p><div><br></div></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-06', 'komal.amrutkar@cumminscollege.in', '2018-IN-02-Steps_HI', 102002, 3),
(11, '{\"caption\":\"\\u092e\\u093f\\u0930\\u0930 \\u0907\\u092e\\u0947\\u091c\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><br><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/MirrorImg_2020-5-5_14-44-41.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><br></p><p>&nbsp; &nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question </strong></span><span style=\\\"font-size: 12pt;\\\">:</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp; &nbsp;\\u091a\\u093e\\u0930 \\u0935\\u093f\\u0915\\u0932\\u094d\\u092a\\u094b\\u0902 \\u092e\\u0947\\u0902 \\u0938\\u0947 \\u0909\\u092a\\u0930 \\u0926\\u0940 \\u0917\\u0908 \\u0906\\u0915\\u0943\\u0924\\u093f (X) \\u0915\\u0940 \\u0938\\u0939\\u0940 \\u0926\\u0930\\u094d\\u092a\\u0923 \\u091b\\u0935\\u093f \\u091a\\u0941\\u0928\\u0947\\u0902:</span></span></p><p><font face=\\\"Roboto, Segoe UI, GeezaPro, DejaVu Serif, sans-serif, -apple-system, BlinkMacSystemFont\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></font><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/MirrorImg1_2020-5-5_14-44-41.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option 4 is correct mirror image of given image X</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-06', 'shreya.bhat@cumminscollege.in', '2018-IN-07-MirrorImags_HI', 102002, 9),
(12, '{\"caption\":\"Beavercoins\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In the country of the beavers the currency \\u201cbeavercoin\\u201d is used. The coins have the following face value:&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/beaverCoins_2020-5-5_23-5-43.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"621.9615384615385\\\" height=\\\"157\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;The beavers don\\u2019t like to carry around too many coins so they pay with as few coins as possible.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">With how many coins would you pay 13 beavercoins if you use as few coins as possible?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The optimal and therefore correct solution is to pay with 8,4 and 1, that is with an 8 beavercoin coin, a 4 beavercoin coin and a 1 beavercoin coin. The sum of the coins is 8 + 4 + 1 = 13. It is not possible to use fewer coins, because a coin larger than the 8 beavercoin coin would already be the 16 beavercoin coin and there is no coin of the value of the missing 5 beavercoins. The next-smallest coins is the 4 beavercoin coin which together with the 1 beavercoin coin already gives the solution from above with three coins.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;To find the right solution one can also start with any other combination, for instance with two 4 beavercoin coins, one 2 beavercoin coin and three 1 beavercoin coins. Next one can swap two coins of the same value for one coin of twice the value until the right solution is given.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;It\\u2019s <strong>Computational Thinking</strong>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;Computer scientists are experts in how to represent information. That includes the representation of numbers. This task is about paying a certain amount of money with different combinations of coins.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;There isn\\u2019t just one possible solution, several different combinations yield the same total value. So this task is also about finding a combination with the least number of coins. The coins in this task are chosen so that two coins together always have the same value as the coin of the next-largest value. That yields the binary number system with the place values 1, 2, 4, 8, 16 and so forth. In the binary number system the representation of a number like 13 is always unique: a place value is used or not.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Similar to this is how the Abacus works, a calculating machine that has been used for many hundreds of years, and which is still used today in the age of the digital calculator in some regions of the earth.</span></span></p><div><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-06', 'komal.amrutkar@cumminscollege.in', '2019-CH-01-Beavercoins_EN', 102001, 10);
INSERT INTO `ques_questiontranslation` (`questionTranslationID`, `translation`, `modified_on`, `modified_by`, `Identifier`, `languageCodeID`, `questionID`) VALUES
(13, '{\"caption\":\"Special Towers\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A tower is called special if all towers to the left of it are smaller and all towers to the right of it are larger.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Tower_2020-5-6_0-19-23.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 12pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">How many towers in the picture above are special?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The following five towers are special as one can easily see with the lines, so that answer B) is correct:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><div><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div></div></div><div id=\\\"answerContent\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/Tower1_2020-5-6_0-19-23.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"\\\"></div><div id=\\\"answerContent\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\"><span style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\">&nbsp;</span></div><div id=\\\"answerContent\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;It\\u2019s <strong>Computational Thinking</strong>:&nbsp;</span></span></div><div id=\\\"answerContent\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;In this task towers are compared based on their height. Such comparisons happen during Searching and Sorting , a branch of computer science that has been researched very thoroughly. Many different algorithms for sorting exist which are suitable for different applications. The Quicksort algorithm is a common and fast algorithm for sorting. A central element of the Quicksort algorithm is to identify values for which all values to the left of it are smaller and all values to the right of it are larger. Such an element divides the array to be sorted into two partions and thus the array to be sorted into two smaller arrays. Such an element is called a pivot element . Other than in this task, however, for the Quicksort algorithm initially not all elements to the left of the pivot element must be smaller and all elements to the right of it must be larger: this is the goal to be achieved by swapping. This partitioning is repeated for every smaller array again and again until these smaller arrays only contain one element ...and that is already sorted by definition. This recursive method to divide big problems into smaller problems and to solve these instead is called divide &amp; conquer . It is a common method to solve difficult problems. The Quicksort algorithm is quicker compared to other sorting algorithms. That is because usually by selecting a pivot element the size of the arrays to sort is cut in half. An array of 1000 elements usually needs approximately 10 levels of partitioning (mathematically speaking it\\u2019s log 2 (1000) levels of partioning). Since in addition to this every element needs to be compared to the pivot element this gives 10,000 comparisons. Other common sorting algorithms rather need in the order of magnitude of 1,000,000 comparisons.</span></span><br></div></div></div>\"}', '2020-06-06', 'komal.amrutkar@cumminscollege.in', '2019-CA-01-STowers_EN', 102001, 11),
(14, '{\"caption\":\"Missing Letter\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Missing Letter Puzzle:</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/MissingLetter_2020-5-6_0-39-24.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"272.976\\\" height=\\\"242\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px;\\\">&nbsp;</span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question&nbsp;</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;Find the missing letter from the above series?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Each row consists of alternate letters.&nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Thus, first row contains letters V, X, Z; third row contains letters P, R, T.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;So, the missing letter is E.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;The numbers in each column form an arithmetic series. Thus, first column contains numbers 4, 5, 6. The second column contains numbers 2, 3, 4.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;The numbers in the third column will form the series 9, 12, 15.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;So, the answer is E12.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-06', 'komal.amrutkar@cumminscollege.in', '2019-IN-01-MLetter_EN', 102001, 12),
(15, '{\"caption\":\"Snowmen and Hats\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Five snowmen stand in line. From left to right each receives its own hat according to its size. The hats are on a stack and are distributed from top to bottom.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Snowmen_2020-5-6_1-16-46.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Which stack of hats belongs to which line of snowmen?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The first stack of hats belongs to the second line of snowmen. The first snowman is the largest of the snowmen and the first hat is the largest hat. The second snowman is the second largest of and gets the second largest hat and so on.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The second stack of hats belongs to the third line of snowmen. The first snowman is the second largest snowman and the first hat is the second largest hat.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Also the remaining snowmen each receive their own hat. The third stack of hats belongs to the fourth line of snowmen. In this case the snowmen are sorted from left to right from the smallest to the largest. Also the hats are sorted from top to bottom from the smallest to the largest. So again every snowman receives its own hat. Answer A) is not correct, because the smallest snowman in the first line would get the second largest hat.&nbsp;</span></span><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\">Answer B) is not correct, because like for answer A) the smallest snowman in the first line would get the largest hat. Answer C) is not correct, because like for answer B) the smallest snowman in the first line would get the second largest hat.&nbsp;</span></p><p><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\"><br></span></p><p><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\">&nbsp;It\\u2019s <strong>Computational Thinking</strong>:&nbsp;</span></p><p><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\"><br></span></p><p><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\">If one assigns each of the snowmen \\u201cits own\\u201d hat without changing the order of the snowmen or the hats one calls it a structure-preserving map . For every line of snowmen and for every stack of hats always the first, second, third, fourth and fifth element are defined, which need to fit for every assignment. One can look at the order of the sizes of the hats and snowmen as a tuple : an ordered set of elements. For this shrewdly only the interesting property is looked at, the size of the snowman and the hat respectively. The sizes of the hat in the first stack for instance are (5, 4,3, 2, 1) and the size of the snowmen in the first line are (1, 2, 3, 4, 5). If these two were to be connected, the tuples would have to be the same. The hats are presented in the form of a stack . A stack is an abstract data type which can only do a few things (the so-called operations ): to pop the topmost element and to push an element onto the top. Sometimes stacks also offer to take a look at the top element and to check if the stack is empty . The snowmen are presented in the form of a queue . A queue is an abstract data type which can also only do a few things: to remove ( dequeue ) the first element and to add ( enqueue ) an element at the back. Sometimes queues also offer to take a look at the first element and to check if the queue is empty . So one can remove an element from both the stack and the queue and compare it: if hat and snowman don\\u2019t fit the solution can\\u2019t be correct anymore. This argument is used for the explanation of the solution: for all wrong answers it was explained why the first snowman of the first line of snowmen cannot fit to the first hat of the stack of hats. By the way, we don\\u2019t know if the stack of hats really is a stack: it could also be that the hats were put below the stack (so that the stack is actually a queue). It could also be that the snowmen \\u201ccut line\\u201d, that is that they put themselves in front of the other snowmen (so that the queue actually would have worked like a stack).</span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-06', 'komal.amrutkar@cumminscollege.in', '2019-LI-01-SnowmanHats_EN', 102001, 13),
(16, '{\"caption\":\"\\u092c\\u0940\\u0935\\u094d\\u0939\\u0930\\u0915\\u094b\\u0907\\u0928\\u094d\\u0938\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u092c\\u0940\\u0935\\u0930\\u094d\\u0938\\u091a\\u094d\\u092f\\u093e \\u0926\\u0947\\u0936\\u093e\\u0924 \\u201c\\u092c\\u0940\\u0935\\u094d\\u0939\\u0930\\u0915\\u094b\\u0907\\u0928\\u201d \\u091a\\u0932\\u0928 \\u0935\\u093e\\u092a\\u0930\\u0932\\u0947 \\u091c\\u093e\\u0924\\u0947. \\u0928\\u093e\\u0923\\u094d\\u092f\\u093e\\u0902\\u092e\\u0927\\u094d\\u092f\\u0947 \\u0916\\u093e\\u0932\\u0940\\u0932\\u092a\\u094d\\u0930\\u092e\\u093e\\u0923\\u0947 \\u0906\\u0939\\u0947 \\u0926\\u0930\\u094d\\u0936\\u0928\\u0940 \\u092e\\u0942\\u0932\\u094d\\u092f:&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/beaverCoins_2020-5-5_23-5-43.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"566.2745098039215\\\" height=\\\"152\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u092c\\u0940\\u0935\\u094d\\u0939\\u0930\\u0928\\u093e \\u092c\\u0930\\u094d\\u200d\\u092f\\u093e\\u091a \\u0928\\u093e\\u0923\\u0940 \\u0918\\u0947\\u090a\\u0928 \\u091c\\u093e\\u0923\\u0947 \\u0906\\u0935\\u0921\\u0924 \\u0928\\u093e\\u0939\\u0940 \\u091c\\u0947\\u0923\\u0947\\u0915\\u0930\\u0942\\u0928 \\u0924\\u0947 \\u0936\\u0915\\u094d\\u092f \\u0924\\u093f\\u0924\\u0915\\u0947 \\u0915\\u092e\\u0940 \\u0928\\u093e\\u0923\\u0940 \\u0935\\u093e\\u092a\\u0930\\u0924\\u093e</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 12pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0906\\u092a\\u0923 \\u0936\\u0915\\u094d\\u092f \\u0924\\u093f\\u0924\\u0915\\u094d\\u092f\\u093e \\u0915\\u092e\\u0940 \\u0928\\u093e\\u0923\\u094d\\u092f\\u093e\\u0902\\u091a\\u093e \\u0935\\u093e\\u092a\\u0930 \\u0915\\u0947\\u0932\\u094d\\u092f\\u093e\\u0938 \\u0915\\u093f\\u0924\\u0940 \\u0928\\u093e\\u0923\\u0940 \\u0924\\u0941\\u092e\\u094d\\u0939\\u093e\\u0932\\u093e 13 \\u092c\\u0940\\u0935\\u094d\\u0939\\u0930\\u0915\\u094b\\u0907\\u0928\\u094d\\u0938 \\u0926\\u0947\\u0924\\u093e\\u0924?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The optimal and therefore correct solution is to pay with 8,4 and 1, that is with an 8 beavercoin coin, a 4 beavercoin coin and a 1 beavercoin coin. The sum of the coins is 8 + 4 + 1 = 13. It is not possible to use fewer coins, because a coin larger than the 8 beavercoin coin would already be the 16 beavercoin coin and there is no coin of the value of the missing 5 beavercoins. The next-smallest coins is the 4 beavercoin coin which together with the 1 beavercoin coin already gives the solution from above with three coins.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;To find the right solution one can also start with any other combination, for instance with two 4 beavercoin coins, one 2 beavercoin coin and three 1 beavercoin coins. Next one can swap two coins of the same value for one coin of twice the value until the right solution is given.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;It\\u2019s&nbsp;<span style=\\\"font-weight: 700;\\\">Computational Thinking</span>:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;Computer scientists are experts in how to represent information. That includes the representation of numbers. This task is about paying a certain amount of money with different combinations of coins.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;There isn\\u2019t just one possible solution, several different combinations yield the same total value. So this task is also about finding a combination with the least number of coins. The coins in this task are chosen so that two coins together always have the same value as the coin of the next-largest value. That yields the binary number system with the place values 1, 2, 4, 8, 16 and so forth. In the binary number system the representation of a number like 13 is always unique: a place value is used or not.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Similar to this is how the Abacus works, a calculating machine that has been used for many hundreds of years, and which is still used today in the age of the digital calculator in some regions of the earth.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-06', 'komal.amrutkar@cumminscollege.in', '2019-CH-01-Beavercoins_MR', 102005, 10),
(17, '{\"caption\":\"\\u0ab5\\u0abf\\u0ab6\\u0ac7\\u0ab7 \\u0a9f\\u0abe\\u0ab5\\u0ab0\\u0acd\\u0ab8\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0a9f\\u0abe\\u0ab5\\u0ab0\\u0aa8\\u0ac7 \\u0a96\\u0abe\\u0ab8 \\u0a95\\u0ab9\\u0ac7\\u0ab5\\u0abe\\u0aae\\u0abe\\u0a82 \\u0a86\\u0ab5\\u0ac7 \\u0a9b\\u0ac7 \\u0a9c\\u0acb \\u0aa4\\u0ac7\\u0aa8\\u0ac0 \\u0aa1\\u0abe\\u0aac\\u0ac0 \\u0aac\\u0abe\\u0a9c\\u0ac1\\u0aa8\\u0abe \\u0aac\\u0aa7\\u0abe \\u0a9f\\u0abe\\u0ab5\\u0ab0\\u0acd\\u0ab8 \\u0aa8\\u0abe\\u0aa8\\u0abe \\u0ab9\\u0acb\\u0aaf \\u0a85\\u0aa8\\u0ac7 \\u0aa4\\u0ac7\\u0aa8\\u0ac0 \\u0a9c\\u0aae\\u0aa3\\u0ac0 \\u0aa4\\u0ab0\\u0aab\\u0aa8\\u0abe \\u0aac\\u0aa7\\u0abe \\u0a9f\\u0abe\\u0ab5\\u0ab0 \\u0aae\\u0acb\\u0a9f\\u0abe \\u0ab9\\u0acb\\u0aaf.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Tower_2020-5-6_0-19-23.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question&nbsp;</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0a89\\u0aaa\\u0ab0\\u0aa8\\u0abe \\u0a9a\\u0abf\\u0aa4\\u0acd\\u0ab0\\u0aae\\u0abe\\u0a82 \\u0a95\\u0ac7\\u0a9f\\u0ab2\\u0abe \\u0a9f\\u0abe\\u0ab5\\u0ab0 \\u0a96\\u0abe\\u0ab8 \\u0a9b\\u0ac7?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><div style=\\\"letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The following five towers are special as one can easily see with the lines, so that answer B) is correct:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><div><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div></div></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/Tower1_2020-5-6_0-19-23.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"box-sizing: inherit;\\\"></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"letter-spacing: 0.15008px;\\\">&nbsp;</span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;It\\u2019s&nbsp;<span style=\\\"font-weight: 700;\\\">Computational Thinking</span>:&nbsp;</span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;In this task towers are compared based on their height. Such comparisons happen during Searching and Sorting , a branch of computer science that has been researched very thoroughly. Many different algorithms for sorting exist which are suitable for different applications. The Quicksort algorithm is a common and fast algorithm for sorting. A central element of the Quicksort algorithm is to identify values for which all values to the left of it are smaller and all values to the right of it are larger. Such an element divides the array to be sorted into two partions and thus the array to be sorted into two smaller arrays. Such an element is called a pivot element . Other than in this task, however, for the Quicksort algorithm initially not all elements to the left of the pivot element must be smaller and all elements to the right of it must be larger: this is the goal to be achieved by swapping. This partitioning is repeated for every smaller array again and again until these smaller arrays only contain one element ...and that is already sorted by definition. This recursive method to divide big problems into smaller problems and to solve these instead is called divide &amp; conquer . It is a common method to solve difficult problems. The Quicksort algorithm is quicker compared to other sorting algorithms. That is because usually by selecting a pivot element the size of the arrays to sort is cut in half. An array of 1000 elements usually needs approximately 10 levels of partitioning (mathematically speaking it\\u2019s log 2 (1000) levels of partioning). Since in addition to this every element needs to be compared to the pivot element this gives 10,000 comparisons. Other common sorting algorithms rather need in the order of magnitude of 1,000,000 comparisons.</span></span></div></div></div></div>\"}', '2020-06-06', 'shreya.bhat@cumminscollege.in', '2019-CA-01-STowers_GU', 102003, 11),
(18, '{\"caption\":\"\\u0aac\\u0ac0\\u0ab5\\u0ab0\\u0a95\\u0acb\\u0a87\\u0aa8\\u0acd\\u0ab8\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0aac\\u0abf\\u0ab5\\u0ab0\\u0acd\\u0ab8\\u0aa8\\u0abe \\u0aa6\\u0ac7\\u0ab6\\u0aae\\u0abe\\u0a82 \\\"\\u0aac\\u0ac0\\u0ab5\\u0ab0\\u0a95\\u0acb\\u0a87\\u0aa8\\\" \\u0a9a\\u0ab2\\u0aa3\\u0aa8\\u0acb \\u0a89\\u0aaa\\u0aaf\\u0acb\\u0a97 \\u0aa5\\u0abe\\u0aaf \\u0a9b\\u0ac7. \\u0ab8\\u0abf\\u0a95\\u0acd\\u0a95\\u0abe \\u0aa8\\u0ac0\\u0a9a\\u0ac7 \\u0aae\\u0ac1\\u0a9c\\u0aac \\u0a9b\\u0ac7 \\u0aab\\u0ac7\\u0ab8 \\u0ab5\\u0ac7\\u0ab2\\u0acd\\u0aaf\\u0ac1:</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/beaverCoins_2020-5-5_23-5-43.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"547\\\" height=\\\"152\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0aac\\u0abf\\u0ab5\\u0ab0\\u0acd\\u0ab8 \\u0a98\\u0aa3\\u0abe \\u0aac\\u0aa7\\u0abe \\u0ab8\\u0abf\\u0a95\\u0acd\\u0a95\\u0abe\\u0aa8\\u0ac0 \\u0a86\\u0ab8\\u0aaa\\u0abe\\u0ab8 \\u0ab2\\u0a87 \\u0a9c\\u0ab5\\u0abe\\u0aa8\\u0ac1\\u0a82 \\u0aaa\\u0ab8\\u0a82\\u0aa6 \\u0a95\\u0ab0\\u0aa4\\u0abe \\u0aa8\\u0aa5\\u0ac0 \\u0a9c\\u0ac7\\u0aa5\\u0ac0 \\u0aa4\\u0ac7\\u0a93 \\u0ab6\\u0a95\\u0acd\\u0aaf \\u0aa4\\u0ac7\\u0a9f\\u0ab2\\u0abe \\u0a93\\u0a9b\\u0abe \\u0ab8\\u0abf\\u0a95\\u0acd\\u0a95\\u0abe \\u0ab8\\u0abe\\u0aa5\\u0ac7 \\u0a9a\\u0ac2\\u0a95\\u0ab5\\u0aa3\\u0ac0 \\u0a95\\u0ab0\\u0ac7.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">&nbsp;</span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0a9c\\u0acb \\u0aa4\\u0aae\\u0ac7 \\u0ab6\\u0a95\\u0acd\\u0aaf \\u0aa4\\u0ac7\\u0a9f\\u0ab2\\u0abe \\u0aa5\\u0acb\\u0aa1\\u0abe \\u0ab8\\u0abf\\u0a95\\u0acd\\u0a95\\u0abe\\u0a93\\u0aa8\\u0acb \\u0a89\\u0aaa\\u0aaf\\u0acb\\u0a97 \\u0a95\\u0ab0\\u0acb \\u0aa4\\u0acb \\u0aa4\\u0aae\\u0ac7 \\u0a95\\u0ac7\\u0a9f\\u0ab2\\u0abe \\u0ab8\\u0abf\\u0a95\\u0acd\\u0a95\\u0abe \\u0ab8\\u0abe\\u0aa5\\u0ac7 13 \\u0aac\\u0ac0\\u0ab5\\u0ab0\\u0a95\\u0acb\\u0a87\\u0aa8\\u0acd\\u0ab8 \\u0a9a\\u0ac2\\u0a95\\u0ab5\\u0ab6\\u0acb?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The optimal and therefore correct solution is to pay with 8,4 and 1, that is with an 8 beavercoin coin, a 4 beavercoin coin and a 1 beavercoin coin. The sum of the coins is 8 + 4 + 1 = 13. It is not possible to use fewer coins, because a coin larger than the 8 beavercoin coin would already be the 16 beavercoin coin and there is no coin of the value of the missing 5 beavercoins. The next-smallest coins is the 4 beavercoin coin which together with the 1 beavercoin coin already gives the solution from above with three coins.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">To find the right solution one can also start with any other combination, for instance with two 4 beavercoin coins, one 2 beavercoin coin and three 1 beavercoin coins. Next one can swap two coins of the same value for one coin of twice the value until the right solution is given.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;It\\u2019s&nbsp;<span style=\\\"font-weight: 700;\\\">Computational Thinking</span>:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;Computer scientists are experts in how to represent information. That includes the representation of numbers. This task is about paying a certain amount of money with different combinations of coins.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">There isn\\u2019t just one possible solution, several different combinations yield the same total value. So this task is also about finding a combination with the least number of coins. The coins in this task are chosen so that two coins together always have the same value as the coin of the next-largest value. That yields the binary number system with the place values 1, 2, 4, 8, 16 and so forth. In the binary number system the representation of a number like 13 is always unique: a place value is used or not.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Similar to this is how the Abacus works, a calculating machine that has been used for many hundreds of years, and which is still used today in the age of the digital calculator in some regions of the earth.</span></span></p><div><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-06', 'shreya.bhat@cumminscollege.in', '2019-CH-01-Beavercoins_GU', 102003, 10),
(19, '{\"caption\":\"Let\\u2019s Decorate\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Deepa would like to decorate the tables for the anniversary of her parents. There are 5 tables in one row. She can use light-blue and dark-red tablecloths, and 3 different flower variations.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/decorate_2020-5-6_12-17-28.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">She wishes that:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u25cf every kind of flower is used, or only one kind of flower is used,&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u25cf tablecloths of the same color shouldn\\u2019t be on two tables next to each other.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question&nbsp;</strong></span><span style=\\\"font-size: 14pt;\\\"> :&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Which one of the following plans should Deepa choose?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_489534432_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In B the tablecloth color changes each time, and every kind of flower is used.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;In A and D the restriction for the color of the tablecloths is not fulfilled. We have 2 blue squares in a row in A, and 3 red squares in a row in D. In C the restriction on available flowers is not fulfilled. Either all flowers need to be present or only one, and we instead have 4 yellow flowers, one blue and no white.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;It\\u2019s </span></span><strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Computational Thinking</span></span></strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;We can usually write down IT problems with a list of restrictions. In this case, the task is to find a solution which fulfills all the requirements. Facing complex tasks, we use logical operations in order to solve the problem. AND and OR are such logical operations. AND means conjunction, where both restrictions should be true  simultaneously, OR means disjunction, where at least one of the requirements should be true. In this Bebras task, these two logical operation type should be combined and solved by the students, thereby developing their logical thinking and their IT problem-solving skill.</span></span></p></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-06', 'shreya.bhat@cumminscollege.in', '2019-HU-01-Decorate_EN', 102001, 14);
INSERT INTO `ques_questiontranslation` (`questionTranslationID`, `translation`, `modified_on`, `modified_by`, `Identifier`, `languageCodeID`, `questionID`) VALUES
(20, '{\"caption\":\"\\u0935\\u093f\\u0936\\u0947\\u0937 \\u091f\\u0949\\u0935\\u0930\\u094d\\u0938\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0921\\u093e\\u0935\\u0940\\u0915\\u0921\\u0940\\u0932 \\u0921\\u093e\\u0935\\u0947 \\u0938\\u0930\\u094d\\u0935 \\u091f\\u0949\\u0935\\u0930\\u094d\\u0938 \\u0932\\u0939\\u093e\\u0928 \\u0905\\u0938\\u0932\\u094d\\u092f\\u093e\\u0938 \\u0906\\u0923\\u093f \\u0909\\u091c\\u0935\\u0940\\u0915\\u0921\\u0947 \\u0938\\u0930\\u094d\\u0935 \\u091f\\u0949\\u0935\\u0930\\u094d\\u0938 \\u092e\\u094b\\u0920\\u0947 \\u0905\\u0938\\u0932\\u094d\\u092f\\u093e\\u0938 \\u091f\\u0949\\u0935\\u0930\\u0932\\u093e \\u0935\\u093f\\u0936\\u0947\\u0937 \\u092e\\u094d\\u0939\\u0923\\u0924\\u093e\\u0924.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Tower_2020-5-6_0-19-23.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 12pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0935\\u0930\\u0940\\u0932 \\u091a\\u093f\\u0924\\u094d\\u0930\\u093e\\u0924\\u0940\\u0932 \\u0915\\u093f\\u0924\\u0940 \\u091f\\u0949\\u0935\\u0930\\u094d\\u0938 \\u0916\\u093e\\u0938 \\u0906\\u0939\\u0947\\u0924?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><div style=\\\"letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The following five towers are special as one can easily see with the lines, so that answer B) is correct:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><div><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div></div></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/Tower1_2020-5-6_0-19-23.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"box-sizing: inherit;\\\"></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"letter-spacing: 0.15008px;\\\">&nbsp;</span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;It\\u2019s&nbsp;<span style=\\\"font-weight: 700;\\\">Computational Thinking</span>:&nbsp;</span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;In this task towers are compared based on their height. Such comparisons happen during Searching and Sorting , a branch of computer science that has been researched very thoroughly. Many different algorithms for sorting exist which are suitable for different applications. The Quicksort algorithm is a common and fast algorithm for sorting. A central element of the Quicksort algorithm is to identify values for which all values to the left of it are smaller and all values to the right of it are larger. Such an element divides the array to be sorted into two partions and thus the array to be sorted into two smaller arrays. Such an element is called a pivot element . Other than in this task, however, for the Quicksort algorithm initially not all elements to the left of the pivot element must be smaller and all elements to the right of it must be larger: this is the goal to be achieved by swapping. This partitioning is repeated for every smaller array again and again until these smaller arrays only contain one element ...and that is already sorted by definition. This recursive method to divide big problems into smaller problems and to solve these instead is called divide &amp; conquer . It is a common method to solve difficult problems. The Quicksort algorithm is quicker compared to other sorting algorithms. That is because usually by selecting a pivot element the size of the arrays to sort is cut in half. An array of 1000 elements usually needs approximately 10 levels of partitioning (mathematically speaking it\\u2019s log 2 (1000) levels of partioning). Since in addition to this every element needs to be compared to the pivot element this gives 10,000 comparisons. Other common sorting algorithms rather need in the order of magnitude of 1,000,000 comparisons.</span></span></div></div></div></div>\"}', '2020-06-07', 'shreya.bhat@cumminscollege.in', '2019-CA-01-STowers_MR', 102005, 11),
(21, '{\"caption\":\"\\u0aae\\u0ac2\\u0ab3\\u0abe\\u0a95\\u0acd\\u0ab7\\u0ab0\\u0acb \\u0a96\\u0ac2\\u0a9f\\u0ac7 \\u0a9b\\u0ac7\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0a96\\u0ac2\\u0a9f\\u0ac7 \\u0a9b\\u0ac7 \\u0aae\\u0ac2\\u0ab3\\u0abe\\u0a95\\u0acd\\u0ab7\\u0ab0 \\u0aaa\\u0a9d\\u0ab2:</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/MissingLetter_2020-5-6_0-39-24.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0a89\\u0aaa\\u0ab0\\u0aa8\\u0ac0 \\u0ab6\\u0acd\\u0ab0\\u0ac7\\u0aa3\\u0ac0\\u0aae\\u0abe\\u0a82\\u0aa5\\u0ac0 \\u0a97\\u0ac1\\u0aae \\u0aa5\\u0aaf\\u0ac7\\u0ab2 \\u0aae\\u0ac2\\u0ab3\\u0abe\\u0a95\\u0acd\\u0ab7\\u0ab0\\u0acb \\u0ab6\\u0acb\\u0aa7\\u0acb?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Each row consists of alternate letters.&nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Thus, first row contains letters V, X, Z; third row contains letters P, R, T.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">So, the missing letter is E.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The numbers in each column form an arithmetic series. Thus, first column contains numbers 4, 5, 6. The second column contains numbers 2, 3, 4.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The numbers in the third column will form the series 9, 12, 15.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">So, the answer is E12.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'shreya.bhat@cumminscollege.in', '2019-IN-01-MLetter_GU', 102003, 12),
(22, '{\"caption\":\"\\u0938\\u091c\\u093e\\u0935\\u091f \\u0915\\u0930\\u0942\\u092f\\u093e\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0926\\u0940\\u092a\\u093e\\u0932\\u093e \\u0924\\u093f\\u091a\\u094d\\u092f\\u093e \\u092a\\u093e\\u0932\\u0915\\u093e\\u0902\\u091a\\u094d\\u092f\\u093e \\u0935\\u0930\\u094d\\u0927\\u093e\\u092a\\u0928\\u0926\\u093f\\u0928\\u093e\\u0928\\u093f\\u092e\\u093f\\u0924\\u094d\\u0924 \\u091f\\u0947\\u092c\\u0932\\u094d\\u0938 \\u0938\\u091c\\u0935\\u0923\\u0947 \\u0906\\u0935\\u0921\\u0947\\u0932. 5 \\u0906\\u0939\\u0947\\u0924\\u090f\\u0915\\u093e \\u0913\\u0933\\u0940\\u0924 \\u0938\\u093e\\u0930\\u0923\\u094d\\u092f\\u093e. \\u0924\\u0940 \\u092b\\u093f\\u0915\\u091f \\u0928\\u093f\\u0933\\u0947 \\u0906\\u0923\\u093f \\u0917\\u0921\\u0926-\\u0932\\u093e\\u0932 \\u0930\\u0902\\u0917\\u093e\\u091a\\u0947 \\u091f\\u0947\\u092c\\u0932\\u0915\\u094d\\u0932\\u094b\\u0925\\u094d\\u0938 \\u0906\\u0923\\u093f 3 \\u092d\\u093f\\u0928\\u094d\\u0928 \\u092b\\u094d\\u0932\\u0949\\u0935\\u0930 \\u0935\\u093e\\u092a\\u0930\\u0942 \\u0936\\u0915\\u0924\\u0947</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/decorate_2020-5-6_12-17-28.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0924\\u093f\\u0932\\u093e \\u0905\\u0936\\u0940 \\u0907\\u091a\\u094d\\u091b\\u093e \\u0906\\u0939\\u0947 \\u0915\\u0940\\u0903&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u25cf \\u092a\\u094d\\u0930\\u0924\\u094d\\u092f\\u0947\\u0915 \\u092a\\u094d\\u0930\\u0915\\u093e\\u0930\\u091a\\u0947 \\u092b\\u0942\\u0932 \\u0935\\u093e\\u092a\\u0930\\u0932\\u0947 \\u091c\\u093e\\u0935\\u0947, \\u0915\\u093f\\u0902\\u0935\\u093e \\u092b\\u0915\\u094d\\u0924 \\u090f\\u0915 \\u092a\\u094d\\u0930\\u0915\\u093e\\u0930\\u091a\\u0947 \\u092b\\u0942\\u0932 \\u0935\\u093e\\u092a\\u0930\\u0932\\u0947 \\u091c\\u093e\\u0935\\u0947,&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u25cf \\u090f\\u0915\\u093e\\u091a \\u0930\\u0902\\u0917\\u093e\\u091a\\u0947 \\u091f\\u0947\\u092c\\u0932\\u0915\\u094d\\u0932\\u094b\\u0925 \\u0926\\u094b\\u0928 \\u0936\\u0947\\u091c\\u093e\\u0930\\u091a\\u094d\\u092f\\u093e \\u091f\\u0947\\u092c\\u0932 \\u0935\\u0930 \\u0928\\u0938\\u093e\\u0935\\u0947\\u0924.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0926\\u0940\\u092a\\u093e\\u0928\\u0947 \\u0916\\u093e\\u0932\\u0940\\u0932\\u092a\\u0948\\u0915\\u0940 \\u0915\\u094b\\u0923\\u0924\\u0940 \\u092f\\u094b\\u091c\\u0928\\u093e \\u0928\\u093f\\u0935\\u0921\\u093e\\u0935\\u0940?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_2rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_2_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In B the tablecloth color changes each time, and every kind of flower is used.</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;In A and D the restriction for the color of the tablecloths is not fulfilled. We have 2 blue squares in a row in A, and 3 red squares in a row in D. In C the restriction on available flowers is not fulfilled. Either all flowers need to be present or only one, and we instead have 4 yellow flowers, one blue and no white.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;It\\u2019s&nbsp;</span></span><span style=\\\"font-weight: 700;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Computational Thinking</span></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;We can usually write down IT problems with a list of restrictions. In this case, the task is to find a solution which fulfills all the requirements. Facing complex tasks, we use logical operations in order to solve the problem. AND and OR are such logical operations. AND means conjunction, where both restrictions should be true simultaneously, OR means disjunction, where at least one of the requirements should be true. In this Bebras task, these two logical operation type should be combined and solved by the students, thereby developing their logical thinking and their IT problem-solving skill.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'shreya.bhat@cumminscollege.in', '2019-HU-01-Decorate_MR', 102005, 14),
(23, '{\"caption\":\"\\u0ab8\\u0acd\\u0aa8\\u0acb\\u0aae\\u0ac7\\u0aa8 \\u0a85\\u0aa8\\u0ac7 \\u0a9f\\u0acb\\u0aaa\\u0ac0\\u0a93\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0aaa\\u0abe\\u0a82\\u0a9a \\u0ab8\\u0acd\\u0aa8\\u0acb\\u0aae\\u0ac7\\u0aa8 \\u0ab2\\u0abe\\u0a87\\u0aa8\\u0aae\\u0abe\\u0a82 .\\u0aad\\u0abe \\u0a9b\\u0ac7. \\u0aa1\\u0abe\\u0aac\\u0ac7\\u0aa5\\u0ac0 \\u0a9c\\u0aae\\u0aa3\\u0ac7 \\u0aa6\\u0ab0\\u0ac7\\u0a95 \\u0aa4\\u0ac7\\u0aa8\\u0abe \\u0a95\\u0aa6 \\u0a85\\u0aa8\\u0ac1\\u0ab8\\u0abe\\u0ab0 \\u0aa4\\u0ac7\\u0aa8\\u0ac0 \\u0aaa\\u0acb\\u0aa4\\u0abe\\u0aa8\\u0ac0 \\u0a9f\\u0acb\\u0aaa\\u0ac0 \\u0aae\\u0ac7\\u0ab3\\u0ab5\\u0ac7 \\u0a9b\\u0ac7.  \\u0a9f\\u0acb\\u0aaa\\u0ac0\\u0a93 \\u0a8f\\u0a95 \\u0ab8\\u0acd\\u0a9f\\u0ac7\\u0a95 \\u0aaa\\u0ab0 \\u0ab9\\u0acb\\u0aaf \\u0a9b\\u0ac7 \\u0a85\\u0aa8\\u0ac7 \\u0a89\\u0aaa\\u0ab0\\u0aa5\\u0ac0 \\u0aa8\\u0ac0\\u0a9a\\u0ac7 \\u0ab8\\u0ac1\\u0aa7\\u0ac0 \\u0ab5\\u0abf\\u0aa4\\u0ab0\\u0abf\\u0aa4 \\u0a95\\u0ab0\\u0ab5\\u0abe\\u0aae\\u0abe\\u0a82 \\u0a86\\u0ab5\\u0ac7 \\u0a9b\\u0ac7.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Snowmen_2020-5-6_1-16-46.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0a9f\\u0acb\\u0aaa\\u0ac0\\u0a93\\u0aa8\\u0acb \\u0a95\\u0aaf\\u0acb \\u0ab8\\u0acd\\u0a9f\\u0ac7\\u0a95 \\u0ab8\\u0acd\\u0aa8\\u0acb\\u0aae\\u0ac7\\u0aa8\\u0aa8\\u0ac0 \\u0a95\\u0acd\\u0aaf\\u0abe \\u0ab2\\u0ac0\\u0a9f\\u0ac0\\u0aa8\\u0acb \\u0a9b\\u0ac7?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The first stack of hats belongs to the second line of snowmen. The first snowman is the largest of the snowmen and the first hat is the largest hat. The second snowman is the second largest of and gets the second largest hat and so on.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The second stack of hats belongs to the third line of snowmen. The first snowman is the second largest snowman and the first hat is the second largest hat.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Also the remaining snowmen each receive their own hat. The third stack of hats belongs to the fourth line of snowmen. In this case the snowmen are sorted from left to right from the smallest to the largest. Also the hats are sorted from top to bottom from the smallest to the largest. So again every snowman receives its own hat. Answer A) is not correct, because the smallest snowman in the first line would get the second largest hat.&nbsp;</span></span><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\">Answer B) is not correct, because like for answer A) the smallest snowman in the first line would get the largest hat. Answer C) is not correct, because like for answer B) the smallest snowman in the first line would get the second largest hat.&nbsp;</span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\"><br></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\">&nbsp;It\\u2019s&nbsp;<span style=\\\"font-weight: 700;\\\">Computational Thinking</span>:&nbsp;</span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\"><br></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-size: 12pt; font-family: Arial, Helvetica, sans-serif; background-color: unset; text-align: inherit; letter-spacing: 0.01071em;\\\">If one assigns each of the snowmen \\u201cits own\\u201d hat without changing the order of the snowmen or the hats one calls it a structure-preserving map . For every line of snowmen and for every stack of hats always the first, second, third, fourth and fifth element are defined, which need to fit for every assignment. One can look at the order of the sizes of the hats and snowmen as a tuple : an ordered set of elements. For this shrewdly only the interesting property is looked at, the size of the snowman and the hat respectively. The sizes of the hat in the first stack for instance are (5, 4,3, 2, 1) and the size of the snowmen in the first line are (1, 2, 3, 4, 5). If these two were to be connected, the tuples would have to be the same. The hats are presented in the form of a stack . A stack is an abstract data type which can only do a few things (the so-called operations ): to pop the topmost element and to push an element onto the top. Sometimes stacks also offer to take a look at the top element and to check if the stack is empty . The snowmen are presented in the form of a queue . A queue is an abstract data type which can also only do a few things: to remove ( dequeue ) the first element and to add ( enqueue ) an element at the back. Sometimes queues also offer to take a look at the first element and to check if the queue is empty . So one can remove an element from both the stack and the queue and compare it: if hat and snowman don\\u2019t fit the solution can\\u2019t be correct anymore. This argument is used for the explanation of the solution: for all wrong answers it was explained why the first snowman of the first line of snowmen cannot fit to the first hat of the stack of hats. By the way, we don\\u2019t know if the stack of hats really is a stack: it could also be that the hats were put below the stack (so that the stack is actually a queue). It could also be that the snowmen \\u201ccut line\\u201d, that is that they put themselves in front of the other snowmen (so that the queue actually would have worked like a stack).</span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'komal.amrutkar@cumminscollege.in', '2019-LI-01-SnowmanHats_GU', 102003, 13),
(24, '{\"caption\":\"Strawberry hunt\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Four beavers start swimming at different places. They only swim forward and always follow the arrows</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/1)Strawberry Hunt _ 1_2020-5-6_13-28-52.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Select all the&nbsp;beavers that&nbsp;will reach the strawberry?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The two on the left will reach the strawberry. Their paths actually meet. The third beaver at the bottom will start swimming in a circle. The beaver at the right swims into a dead end and could not get out.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/1)Strawberry Hunt _ Exp_2020-5-6_13-28-52.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"\\\"></p></div></div>\"}', '2020-06-07', 'komal.amrutkar@cumminscollege.in', '2019-RU-01-Strawberry_EN', 102001, 15),
(25, '{\"caption\":\"\\u0a9a\\u0abe\\u0ab2\\u0acb \\u0ab8\\u0a9c\\u0abe\\u0ab5\\u0a9f \\u0a95\\u0ab0\\u0ac0\\u0a8f\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0aa6\\u0ac0\\u0aaa\\u0abe \\u0aa4\\u0ac7\\u0aa8\\u0abe \\u0aae\\u0abe\\u0aa4\\u0abe\\u0aaa\\u0abf\\u0aa4\\u0abe\\u0aa8\\u0ac0 \\u0ab5\\u0ab0\\u0acd\\u0ab7\\u0a97\\u0abe\\u0a82\\u0aa0 \\u0aae\\u0abe\\u0a9f\\u0ac7 \\u0a95\\u0acb\\u0ab7\\u0acd\\u0a9f\\u0a95\\u0acb \\u0ab8\\u0a9c\\u0abe\\u0ab5\\u0a9f \\u0a95\\u0ab0\\u0ab5\\u0abe \\u0aae\\u0abe\\u0a82\\u0a97\\u0ab6\\u0ac7. 5 \\u0a9b\\u0ac7 \\u0a8f\\u0a95 \\u0aaa\\u0a82\\u0a95\\u0acd\\u0aa4\\u0abf \\u0aae\\u0abe\\u0a82 \\u0a95\\u0acb\\u0ab7\\u0acd\\u0a9f\\u0a95\\u0acb.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/decorate_2020-5-6_12-17-28.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0aa4\\u0ac7 \\u0ab9\\u0ab3\\u0ab5\\u0abe-\\u0ab5\\u0abe\\u0aa6\\u0ab3\\u0ac0 \\u0a85\\u0aa8\\u0ac7 \\u0ab6\\u0acd\\u0aaf\\u0abe\\u0aae-\\u0ab2\\u0abe\\u0ab2 \\u0a9f\\u0ac7\\u0aac\\u0ab2\\u0a95\\u0acd\\u0ab2\\u0acb\\u0aa5\\u0acd\\u0ab8 \\u0a85\\u0aa8\\u0ac7 3 \\u0ab5\\u0abf\\u0ab5\\u0abf\\u0aa7 \\u0aab\\u0ac2\\u0ab2\\u0acb\\u0aa8\\u0ac0 \\u0ab5\\u0abf\\u0ab5\\u0abf\\u0aa7\\u0aa4\\u0abe\\u0a93\\u0aa8\\u0acb \\u0a89\\u0aaa\\u0aaf\\u0acb\\u0a97 \\u0a95\\u0ab0\\u0ac0 \\u0ab6\\u0a95\\u0ac7 \\u0a9b\\u0ac7. \\u0aa4\\u0ac7\\u0aa3\\u0ac0\\u0aa8\\u0ac0 \\u0a87\\u0a9a\\u0acd\\u0a9b\\u0abe \\u0a9b\\u0ac7 \\u0a95\\u0ac7:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u25cf \\u0aa6\\u0ab0\\u0ac7\\u0a95 \\u0aaa\\u0acd\\u0ab0\\u0a95\\u0abe\\u0ab0\\u0aa8\\u0abe\\u0a82 \\u0aab\\u0ac2\\u0ab2\\u0acb\\u0aa8\\u0acb \\u0a89\\u0aaa\\u0aaf\\u0acb\\u0a97 \\u0aa5\\u0abe\\u0aaf \\u0a9b\\u0ac7, \\u0a85\\u0aa5\\u0ab5\\u0abe \\u0aab\\u0a95\\u0acd\\u0aa4 \\u0a8f\\u0a95 \\u0a9c \\u0aaa\\u0acd\\u0ab0\\u0a95\\u0abe\\u0ab0\\u0aa8\\u0acb \\u0aab\\u0ac2\\u0ab2 \\u0ab5\\u0aaa\\u0ab0\\u0abe\\u0aaf \\u0a9b\\u0ac7,&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u25cf \\u0a8f\\u0a95 \\u0a9c \\u0ab0\\u0a82\\u0a97\\u0aa8\\u0abe \\u0a9f\\u0ac7\\u0aac\\u0ab2\\u0a95\\u0acd\\u0ab2\\u0acb\\u0aa5\\u0acd\\u0ab8 \\u0a8f\\u0a95\\u0aac\\u0ac0\\u0a9c\\u0abe\\u0aa8\\u0ac0 \\u0aac\\u0abe\\u0a9c\\u0ac1\\u0aa8\\u0abe \\u0aac\\u0ac7 \\u0a9f\\u0ac7\\u0aac\\u0ab2 \\u0aaa\\u0ab0 \\u0aa8 \\u0ab9\\u0acb\\u0ab5\\u0abe \\u0a9c\\u0acb\\u0a88\\u0a8f.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0aa6\\u0ac0\\u0aaa\\u0abe\\u0a8f \\u0aa8\\u0ac0\\u0a9a\\u0ac7\\u0aa8\\u0abe\\u0aae\\u0abe\\u0a82\\u0aa5\\u0ac0 \\u0a95\\u0a88 \\u0aaf\\u0acb\\u0a9c\\u0aa8\\u0abe \\u0aaa\\u0ab8\\u0a82\\u0aa6 \\u0a95\\u0ab0\\u0ab5\\u0ac0 \\u0a9c\\u0acb\\u0a88\\u0a8f?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In B the tablecloth color changes each time, and every kind of flower is used.</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;In A and D the restriction for the color of the tablecloths is not fulfilled. We have 2 blue squares in a row in A, and 3 red squares in a row in D. In C the restriction on available flowers is not fulfilled. Either all flowers need to be present or only one, and we instead have 4 yellow flowers, one blue and no white.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;It\\u2019s&nbsp;</span></span><span style=\\\"font-weight: 700;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Computational Thinking</span></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;We can usually write down IT problems with a list of restrictions. In this case, the task is to find a solution which fulfills all the requirements. Facing complex tasks, we use logical operations in order to solve the problem. AND and OR are such logical operations. AND means conjunction, where both restrictions should be true simultaneously, OR means disjunction, where at least one of the requirements should be true. In this Bebras task, these two logical operation type should be combined and solved by the students, thereby developing their logical thinking and their IT problem-solving skill.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2019-HU-01-Decorate_GU', 102003, 14),
(26, '{\"caption\":\"\\u0ab8\\u0acd\\u0a9f\\u0acd\\u0ab0\\u0acb\\u0aac\\u0ac7\\u0ab0\\u0ac0 \\u0ab6\\u0acb\\u0aa7\\u0acb\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0a9a\\u0abe\\u0ab0 \\u0aac\\u0abf\\u0ab5\\u0ab0 \\u0a9c\\u0ac1\\u0aa6\\u0abe \\u0a9c\\u0ac1\\u0aa6\\u0abe \\u0ab8\\u0acd\\u0aa5\\u0ab3\\u0acb\\u0a8f \\u0aa4\\u0ab0\\u0ab5\\u0abe\\u0aa8\\u0ac1\\u0a82 \\u0ab6\\u0ab0\\u0ac2 \\u0a95\\u0ab0\\u0ac7 \\u0a9b\\u0ac7. \\u0aa4\\u0ac7\\u0a93 \\u0aab\\u0a95\\u0acd\\u0aa4 \\u0a86\\u0a97\\u0ab3 \\u0aa4\\u0ab0\\u0ac0 \\u0a85\\u0aa8\\u0ac7 \\u0ab9\\u0a82\\u0aae\\u0ac7\\u0ab6\\u0abe\\u0a82 \\u0aa4\\u0ac0\\u0ab0\\u0aa8\\u0ac1\\u0a82 \\u0aaa\\u0abe\\u0ab2\\u0aa8 \\u0a95\\u0ab0\\u0ac7 \\u0a9b\\u0ac7.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/1)Strawberry Hunt _ 1_2020-5-6_13-28-52.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question&nbsp;</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0ab8\\u0acd\\u0a9f\\u0acd\\u0ab0\\u0acb\\u0aac\\u0ac7\\u0ab0\\u0ac0 \\u0ab8\\u0ac1\\u0aa7\\u0ac0 \\u0aaa\\u0ab9\\u0acb\\u0a82\\u0a9a\\u0ab6\\u0ac7 \\u0aa4\\u0ac7 \\u0aac\\u0aa7\\u0abe \\u0aac\\u0abf\\u0ab5\\u0ab0\\u0acd\\u0ab8 \\u0aaa\\u0ab8\\u0a82\\u0aa6 \\u0a95\\u0ab0\\u0acb?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The two on the left will reach the strawberry. Their paths actually meet. The third beaver at the bottom will start swimming in a circle. The beaver at the right swims into a dead end and could not get out.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/1)Strawberry%20Hunt%20_%20Exp_2020-5-6_13-28-52.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"box-sizing: inherit;\\\"></p></div></div></div>\"}', '2020-06-07', 'komal.amrutkar@cumminscollege.in', '2019-RU-01-Strawberry_GU', 102003, 15),
(27, '{\"caption\":\"Scratch Art Paper\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">With scratch art paper you can easily draw colorful pictures. By using a wooden stick you remove the top coating and the colorful background becomes visible.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/scratch_2020-5-6_15-42-59.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">For which of the four pictures exactly three colors show up while drawing?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><br></p><p><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/scratch5_2020-5-6_15-42-59.png\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">So the correct answer is C): the colors red, yellow and green become visible. The fourth color blue does not get visible because the top right section is not touched.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;For the answers A) and D) all four colors become visible, for the answer B) only the two colors red and blue become visible.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\">&nbsp;It\\u2019s </span><span style=\\\"font-size: 12pt;\\\"><strong>Computational Thinking</strong></span><span style=\\\"font-size: 14pt;\\\">:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">By removing the top coating of scratch art paper this part becomes transparent , so one can see through this layer and the color behind it becomes visible. Many picture editing programs use layers where some parts are transparent. However, in most cases they are used in the reverse way: for instance someone has a picture as a background and adds some text on a new layer above it. This new layer is transparent everywhere except of course where the text is. Of course you could also write the text directly on top of the picture. But if you are using several layers you can later change one layer and all other layers stay the same. For this task you have to imagine how it looks behind a layer if the front layer becomes transparent. This is much simpler if you split the picture into smaller pictures. Then for every of the four sections you can imagine if the top layer becomes transparent or not. Then you know if that color is part of the final picture or not. This process is called decomposition , it happens in computer science a lot.</span></span></p></div></div></div>\"}', '2020-06-07', 'komal.amrutkar@cumminscollege.in', '2019-KAD-01-Scratch_EN', 102001, 16);
INSERT INTO `ques_questiontranslation` (`questionTranslationID`, `translation`, `modified_on`, `modified_by`, `Identifier`, `languageCodeID`, `questionID`) VALUES
(28, '{\"caption\":\"Levenshtein distance\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">For this&nbsp;question,&nbsp;a&nbsp;basic operation&nbsp;is defined as one of the following:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp; &nbsp; &nbsp; &nbsp;\\u2981\\tinserting one&nbsp;letter into the word,&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp; &nbsp; &nbsp; &nbsp;\\u2981\\tremoving one&nbsp;letter from the word,&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp; &nbsp; &nbsp; &nbsp;\\u2981\\tchanging one letter onto another letter.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The&nbsp;distance between two words&nbsp;is defined as the minimum number of basic operations required to change the first word into the second one. For example, the distance between kitten and sitting is equal to 3. The corresponding operations are&nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp; &nbsp; &nbsp; &nbsp;\\u2981\\tkitten \\u2192 sitten (change k to s),&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp; &nbsp; &nbsp; &nbsp;\\u2981\\tsitten \\u2192 sittin (change i to e),&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp; &nbsp; &nbsp; &nbsp;\\u2981\\tsittin \\u2192 sitting (insert g at the end).</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What is the minimum distance between&nbsp;length&nbsp;and&nbsp;french?</span></span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The correct answer is: 4&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">One possible solution is:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1- length \\u2192 fength (change l to f)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">2- fength \\u2192 frength (insert r)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">3- frength \\u2192 frencth (change g to c)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">4- frencth \\u2192 french (remove t)</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'komal.amrutkar@cumminscollege.in', '2019-FR-01-LevenshteinDistance_EN', 102001, 17),
(29, '{\"caption\":\"Push Away Parking\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In the parking lot below, cars can be parked either in the parking spaces or in front of the parking spaces. When a car wants to leave its parking space, any cars that are parked in front of it must move forward or backwards to let the car out.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">For example, in the image below:&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Car A is not blocked and can get out of its parking space.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Car L is blocked by car M.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Car M must move backwards before car L can get out of its parking space.</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Parking_2020-5-6_16-16-38.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"638.1041666666667\\\" height=\\\"281\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\">&nbsp; &nbsp;</span><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp; &nbsp;Which car needs two other cars to be pushed away before it can leave its parking space?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Car I is blocked by car N. There is not enough space to push car N away so that car I can leave its parking space. Therefore, car O must be pushed to the left or car M must be pushed to the right. Then, there is space to push car N away for car I to leave its parking space. There is no other car for which two cars must be pushed away for: cars A, D, E, J and Q can leave their parking spaces immediately. Cars B, C, F, G, H, K and L can leave their parking spaces if one of cars P, O, N, or M is pushed away.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s <strong>Computational Thinking</strong>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This task involves two important aspects related to informatics:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;1) An exhaustive search (brute-force) algorithm to search through all possible candidate cars and checking which is the one that has the required property, i.e. \\u201cwhich can only leave its space after two other cars are pushed away\\u201d:</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">https://en.wikipedia.org/wiki/Brute-force_search&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">2) The autonomous (automatic) parking algorithms, which are becoming more and more available in cars nowadays:</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">https://en.wikipedia.org/wiki/Automatic_parking&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A lot of research is done in the field of public transportation/parking systems based on autonomous vehicles. One of the advantages is that autonomous vehicle parking can be done very efficiently.</span></span></p></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2019-BE-01-Parking_EN', 102001, 18),
(30, '{\"caption\":\"Translated Words\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Here are some words translated from an artificial language.  peslligen means basketball court ligenstrisi means courtroom oltaganti means placement test.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Which word could mean \\u201cguest room\\u201d?</span></span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.9375px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Pesl means basketball; ligen means court; strisi means room; olta means placement; and ganti means test. Because strisi means room, it must be present in the answer, so that rules out choice c. Choices a and d are incorrect because pesl means basketball and olta means placement.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">That leaves choice b as the only possible answer.</span></span></p><div><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'komal.amrutkar@cumminscollege.in', '2019-IN-02-TransWords_EN', 102001, 19),
(31, '{\"caption\":\"Puzzle\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Identify the balloons with multiples of 8.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/balloons_2020-5-6_16-36-59.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">16 and 64 are divisible by eight</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'komal.amrutkar@cumminscollege.in', '2019-IN-03-Puzzle_EN', 102001, 20),
(32, '{\"caption\":\"Ice cream\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">At the LIFO ice cream parlour the scoops of ice cream are stacked on your cone in the exact order in which you ask for them. What do you have to say in order to get the ice cream shown in the picture?&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/13)IceCream_2020-5-6_17-49-43.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question&nbsp;</strong></span><span style=\\\"font-size: 12pt;\\\"> :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">I would like to get an ice cream with ...</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What is on top must be put there last! Similarly, the first flavour requested must be the first scoop on the cone. So we need to reverse the order: To get a cone with Chocolate on top of Smurf both of which are on Strawberry we must ask for \\u201can ice-cream with Strawberry, Smurf and Chocolate!\\u201d&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;It\\u2019s <strong>Computational Thinking</strong>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;Concepts - Abstraction (AB), Generalisation (GE) Order matters! If we asked for the flavours in a different order, we would have an entirely different ice cream cone. One of the first things computer scientists learn is how important it is to have everything correctly ordered. They also need to understand how others understand. Without knowing exactly how the ice-cream shop works, we could not determine the correct order! We had to imagine first what will happen based on what we say. Just like computer scientists, who like to think ahead. The actual order used in this task is stack order. In particular \\u201cLast in, First out\\u201d or LIFO.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'shreya.bhat@cumminscollege.in', '2019-CA-02-Icecream_EN', 102001, 21),
(33, '{\"caption\":\"Painting wallpaper\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p>     <span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Robyn is wall papering.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">She uses rectangle wallpapers pieces of different sizes. Each wall paper piece has one color and one pattern on it.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">She nevers puts wallpaper beyond the edge of the wall.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/5)Painting Wallpaper_1_2020-5-6_17-58-13.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Sometimes,&nbsp;Robyn covers part of&nbsp;one piece of&nbsp;wallpaper with a new rectangular piece of a different colour.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In which order has&nbsp;Robyn placed the wallpaper?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/5)PaintingWallpaper_Exp_2020-5-6_17-58-13.png\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><br></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The yellow wallpaper with the briefcases is the only wallpaper that isn\\u2019t cut off by another one, so that should be the last one. You can see the suitcase cuts off the basketball wallpaper, that the basketball wallpaper cuts off the leaf wallpaper, the leaf wallpaper cuts off the flower wallpaper, the flower wallpaper cuts off the mirrors and the mirrors cut off the hearts.</span></span></p></div></div>\"}', '2020-06-07', 'ayushi.naphade@cumminscollege.in', '2019-HU-02-Wallpaper_EN', 102001, 22),
(34, '{\"caption\":\"Meal Planning\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Raju takes 2 lunch boxes to school each day, one for the snack break, and the other for the lunch break.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;He only has 30 minutes to prepare both boxes.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;Below you will find all the available items for the boxes and the preparation time each food needs:</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Meal_2020-5-6_18-27-22.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Which one of the following statements is false ?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Raju packs Rice for the lunch box, he can pack Poha for the snack box Raju\\u2019s has 30 minutes to pack both boxes. The correct combinations of dishes are those which take less than or at most 30 minutes to pack. The statements in the options have fixed the two combinations, so you have to add up the time required and compare it with 30. Rice takes 15 minutes, and Poha takes 20 minutes, which makes it 35 minutes. So this statement is False. All the other statements have combinations which take 30 minutes or less, so they are true.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">While applying computer science to develop solution to problems, computer scientist may come across a set of constraints. Constraints are the conditions which reduce the flexibility of a situatoon, or put a limit on the ways a problem can be solved. The solution that they build needs to satisfy all the constraints. In complex tasks, constraints are combined by logical operators like conjunction (A and B) meaning both constraints A and B have to be satisfied, disjunction (A or B meaning satisfying at least one of them is enough) or negation (A) meaning the result is opposite of the given condition. In our problem, the constraint was that the total time for preparation is limited (30 minutes).&nbsp;</span></span></p><p><span style=\\\"background-color: unset; letter-spacing: 0.15008px; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\"><br></span></span></span></p><p><span style=\\\"background-color: unset; letter-spacing: 0.15008px; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">To find a solution to a problem, we will need to find a combination of food boxes which take less than or equal to 30 minutes. To find the false statement we have to find the one that will take more than 30 minutes.</span></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><div><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'ayushi.naphade@cumminscollege.in', '2019-IN-04-Meal_EN', 102001, 23),
(35, '{\"caption\":\"Robot\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A robot&nbsp;is programmed to collect as many sweets as possible. It does this while walking through cells. Each cell in the grid below has either 0, 1, 2 or 3 sweets :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/11)Robot_1_2020-5-6_18-39-19.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The robot begins in the the bottom-left and ends in the top-right. The robot can only move to the right or upwards</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">How many sweets will the robot collect in this grid?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In the following example:</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/11)Robot_Exp1_2020-5-6_18-39-19.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">One approach is to fill in a table of the \\\"best\\\" possible amounts of sweets that can be gathered by filling in a \\\"diagonal sweep\\\" of the table. Initially, we have 0 sweets, so we can think of the table as follows:</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/11)Robot_Exp2_2020-5-6_18-39-19.png\\\" style=\\\"outline: rgb(74, 144, 226) solid 2px;\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">where the bolded element is the maximum number of sweets we can possibly attain in each cell. Going up will gain 3 sweets, and going right will gain 0 sweets, so we can update our totals:</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/11)Robot_Exp3_2020-5-6_18-39-19.png\\\" style=\\\"outline: rgb(74, 144, 226) solid 2px;\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Notice the cell which is to the right of the bolded 3 and above the bolded 1. What is the maximum amount of sweets we could have gathered to get to this cell? We should get to this cell after having gathered 3, rather than 0, sweets. Thus, we could be in this cell after gathering a total of 4 sweets.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/11)Robot_Exp4_2020-5-6_18-39-19.png\\\" style=\\\"outline: rgb(74, 144, 226) solid 2px;\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Continuing in this way, we can see that the maximum number of sweets we can gather in a cell is the number of sweets in this cell plus the larger of the \\\"left\\\" maximum and \\\"below\\\" maximum. To put this mathematically</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">v(i,0) = 0</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">v(0,j) = 0</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">v(i,j) = c(i,j)+ max{v(i-1,j), v(i,j-1)}</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">where v(i,j) is the maximum number of sweets that can be gathered at cell (i,j), and c(i,j) is the number of sweets in the grid at cell (i,j) initially.</span></span>&nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Because you always want to look the the left and to the bottom, you need to add a column of zeros to the left and a row of zeros to the bottom of the table.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Applying this relationship, we can fill in the rest of the table as follows:</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/11)Robot_Exp5_2020-5-6_18-39-19.png\\\" style=\\\"outline: rgb(74, 144, 226) solid 2px;\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">and therefore, we can gather 14 sweets at cell F.</span></span></p></div></div>\"}', '2020-06-07', 'ayushi.naphade@cumminscollege.in', '2019-RU-02-Plates_EN', 102001, 24),
(36, '{\"caption\":\"Cloud Communication\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A weather beaver sends messages from the top of a mountain to beavers in the valley below. She makes small and large smoke clouds and uses the code below.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Cloud_2020-5-6_18-50-50.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">One day, the beavers in the valley think they saw this:&nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/Cloud1_2020-5-6_18-50-50.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Something went wrong. Either one small cloud was mistaken for a large cloud or one large cloud of smoke was mistaken for a small cloud.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Which message was sent?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">If you change the third cloud from large to small you will get the code for cloudy . Therefore, the answer C) is correct.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The answer A) is not correct, because the first and the last cloud would have to be changed.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The answer B) is also not correct, because the first, second and fourth cloud would have to be changed.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The answer D) is also not correct, because all except the first cloud would have to be changed.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s </span></span><strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Computational Thinking</span></span></strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">If you design a sequence of symbols to be used for communication (by humans or computers) it is better to choose the sequence in a way that the information can be reconstructed even if some parts of the message are lost or damaged. This is done by sending more information than necessary so that the essential information is redundant . If the original meaning of a sequence of symbols can be reconstructed even if n errors occurred, the design of the sequences of symbols is called an n error correcting code . In computer science this is used on a daily basis, for instance for sending music in a digital representation. In this way, the music is played correctly even if the data is partially corrupt.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'ayushi.naphade@cumminscollege.in', '2019-CH-02-Cloud_EN', 102001, 25),
(37, '{\"caption\":\"Only nine keys\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Daniel is sending text messages from his old phone. For every letter he has to press the proper key once, twice, three or four times, followed by a short pause. In order to type \'C\' he has to press the number 2 key three times because \'C\' is the third letter written on this key. In order to type \'HIM\' he has to press the number 4 key twice, followed by the number 4 key 3 times and finally the number 6 key once. Daniel presses exactly six times to enter the name of a friend.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/15)Only nine keys_1_2020-5-6_23-20-53.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What is the name of his friend?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">MIRIAM requires 12 taps: M=1, I=3, R=3, I=3, A=1, M=1. IRIS requires 13 taps: I=3, R=3, I=3, S=4. EMMA requires 5 taps: E=2, M=1, M=1, A=1. INA requires 6 taps: I=3, N=2, A=1. So INA is the correct name.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s <strong>Computational Thinking</strong>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Concepts - Algorithmic Thinking (AL), Decomposition (DE) On a small keyboard with only nine keys you select a letter by tapping on a certain key several times quickly and then wait a short while. This is a special way to encode letters. Interface designers need to invent encodings like this, when they design user interfaces for input devices with limited abilities.</span></span></p></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'komal.amrutkar@cumminscollege.in', '2020-CA-01-NineKeys_EN', 102001, 26);
INSERT INTO `ques_questiontranslation` (`questionTranslationID`, `translation`, `modified_on`, `modified_by`, `Identifier`, `languageCodeID`, `questionID`) VALUES
(38, '{\"caption\":\"Plates\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Bunty is arranging plates into the kitchen rack so that the large plates are to the left, regular plates are in the middle and the small plates to the right. There are no gaps between the plates. After dinner, Bunty wants to keep another large plate into the rack. He wants to maintain the order. However, he wants to touch as few plates as possible while reordering.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/plates_2020-5-6_23-49-12.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"350\\\" height=\\\"182\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">How many plates that are already in the rack does Bunty need to touch in order to keep the large plate at the correct position?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\" style=\\\"cursor: auto;\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Bunty\\u2019s fastest solution is if he moves the leftmost small plate to the right, fills the gap with the leftmost regular plate and puts the new large plate into the gap so that it stands to the right of the other large plates. With this he has touched two plates that are already in the rack and answer A) is correct. He cannot be faster because the large plate must be put into a position where right now a large plate or the leftmost regular plate stands (so at least one plate from the rack must be touched). In addition to that the touched plate must be put somewhere: if it is a large plate the original problem exists again, and if it is the leftmost regular plate, this must be put into a position where right now a regular or the leftmost small plate stands (so at least a second plate from the rack must be touched).&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s <strong>Computational Thinking</strong>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CT Skills -  CS Domain - Following and Devising Algorithms&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This task is about adding a new element to an already sorted array of elements. Such procedures happen often in computers so it\\u2019s worth thinking about how to do this efficiently.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In this case the \\u201ccosts\\u201d for moving a single plate in the rack is quite high. Recognizing which type a plate is, however, is very quick. In addition to that, many plates of the same kind are in the rack. So it\\u2019s worth to find a solution for this special problem by moving only two elements. For computers it\\u2019s usually better to just find a right place for the new element in the sorted array and move all elements after that by one place. This kind of comparison sort is called Insertion Sort. It is one of the most simple but also not one of the most efficient sorting algorithms. Other similar sorting algorithms are Bubble Sort or Selection Sort. The also common Quicksort which uses the principle Divide &amp; Conquer, however, is much quicker, especially for large arrays of elements.</span></span></p></div></div><div id=\\\"answerContent\\\" style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates1_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"outline: rgb(74, 144, 226) solid 2px;\\\" width=\\\"314\\\" height=\\\"192\\\"></div><div id=\\\"answerContent\\\" style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates2_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"\\\" width=\\\"314\\\" height=\\\"192\\\"></div><div id=\\\"answerContent\\\" style=\\\"cursor: auto;\\\"><br></div><div id=\\\"answerContent\\\" style=\\\"cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates3_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize e-img-focus\\\" style=\\\"\\\" width=\\\"315\\\" height=\\\"197\\\"></div></div></div>\"}', '2020-06-07', 'komal.amrutkar@cumminscollege.in', '2020-RU-01-Plates_EN', 102001, 27),
(39, '{\"caption\":\"Image Representation\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Computer images are divided up into a grid of small squares called pixels (picture elements).&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In a black and white picture, each pixel is either black or white. When a computer stores a picture, all that it needs to store is which pixels are black and which are white.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">For example, the image of the letter \\u201ca\\u201d has been magnified below to show the pixels. One way to represent this image is by the encoding 1,3,1 \\u2013 4,1 \\u2013 1,4 \\u2013 0,1,3,1 \\u2013 0,1,3,1 \\u2013 1,4, where each row always starts encoding with number of white pixels and \\u201c\\u2013\\u201c indicates the end of a row.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Image Rep_2020-5-7_0-2-24.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question&nbsp;</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Using the same encoding as before, which of the following images is represented by 2,1,2 \\u2013 0, 1,3,1 \\u2013 1,1,1,1,1 \\u2013 2,1,2 \\u2013 1,1,1,1,1 \\u2013 0, 1,3,1?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The figure in the example demonstrates that the numbers represent the number of consecutive same colored pixels (starting from white pixels) within a row from left to right. In the example, the first set of numbers is 1,3,1. Therefore, the first row contains one white, three black, and one white pixels, from left to right.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Based on this information, we can then determine the image that is represented by 2,1,2 \\u2013 0, 1,3,1 \\u2013 1,1,1,1,1 \\u2013 2,1,2 \\u2013 1,1,1,1,1 \\u2013 0,1,3,1 to have:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf First row (2,1,2) means 2 white, 1 black, 2 white pixels.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Second row (0,1,3,1) means 0 white, 1 black, 3 white, 1 black pixels.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Third row (1,1,1,1,1) means 1 white, 1 black, 1 white, 1 black, 1 white pixels.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Fourth row (2,1,2) means 2 white, 1 black, 2 white pixels.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Fifth row (1,1,1,1,1) means 1 white, 1 black, 1 white, 1 black, 1 white pixels.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Sixth row (0,1,3,1) means 0 white, 1 black, 3 white, 1 black pixels.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Image in option B meets this requirement.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\">&nbsp;It\\u2019s </span><span style=\\\"font-size: 12pt;\\\"><strong>Computational Thinking</strong></span><span style=\\\"font-size: 14pt;\\\">:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In digital imaging, a pixel is a small picture element of an image. The word pixel comes from the combination of \\u201cpix\\u201d (from \\\"pictures\\\") and \\u201cel\\u201d (from \\\"element\\\"). The quantity of pixels in an image represents the image resolution. Resolution is sometimes identified by the width and height of the image as well as the total number of pixels in the image.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Typically images are encoded in some form, that is they are represented in a particular manner in the memory of computers. This particular task shows one such example of encoding, known as running-length encoding, where we omitted the values of the encoded values, since we know that we only have white and black alternating pixels.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">https://en.wikipedia.org/wiki/Run-length_encoding</span></span><a classname=\\\"e-rte-anchor\\\" href=\\\"https://en.wikipedia.org/wiki/Run-length_encoding\\\" title=\\\"https://en.wikipedia.org/wiki/Run-length_encoding\\\"> </a></p></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-TR-01-ImageRepresentation_EN', 102001, 28),
(40, '{\"caption\":\"Elder Beavers\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_3_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_489534432_0_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div id=\\\"0\\\" class=\\\"react-draggable\\\" style=\\\"touch-action: none; transform: translate(0px, 0px);\\\"><pre style=\\\"white-space: pre-wrap; font-family: Arial;\\\"><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">At the bottom of the beaver dam Deepa finds an ancient piece of wood. Unknown characters are carved into the wood. Deepa assumes that it is a cipher table from the time when the elder beavers lived by the dam.&nbsp;</span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/elder_2020-5-7_1-10-47.png\\\" width=\\\"403\\\" height=\\\"227\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\" style=\\\"max-height:100%;max-width:100%\\\"></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"letter-spacing: 0.14994px;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">Deepa studies the table for a long time and thinks that she knows how they work: the unknown characters are a combination of symbols given in the columns and the rows. The letter \\u201cH\\u201d would then be encrypted as follows:&nbsp;</span></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><font face=\\\"Roboto, Segoe UI, GeezaPro, DejaVu Serif, sans-serif, -apple-system, BlinkMacSystemFont\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></font><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/elder1_2020-5-7_1-10-47.png\\\" width=\\\"404\\\" height=\\\"131\\\" class=\\\"e-rte-image e-imgcenter e-resize e-imginline\\\" style=\\\"max-height:100%;max-width:100%\\\"></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"letter-spacing: 0.14994px;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">Deepa remembers to have seen such characters in another place of the dam. And indeed she finds the following characters:</span></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"letter-spacing: 0.14994px;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><img id=\\\"4\\\" src=\\\"http://localhost:8000/media/images/elder2_2020-5-7_1-10-47.png\\\" width=\\\"352\\\" height=\\\"35\\\" class=\\\"e-rte-image e-imgcenter e-resize e-imginline\\\" style=\\\"max-height:100%;max-width:100%\\\"></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></p><p style=\\\"letter-spacing: 0.14994px; white-space: normal; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; cursor: auto;\\\"><span style=\\\"letter-spacing: 0.14994px;\\\"><span style=\\\"font-weight: 700;\\\"><span style=\\\"font-size: 14pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><strong>Question&nbsp;</strong> <strong>:</strong>&nbsp;</span></span></span></span></p><p style=\\\"letter-spacing: 0.14994px; white-space: normal; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; cursor: auto;\\\"><span style=\\\"letter-spacing: 0.14994px;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></span></p><p style=\\\"margin-bottom: 10px; letter-spacing: 0.14994px; white-space: normal; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; cursor: auto;\\\"><span style=\\\"letter-spacing: 0.14994px;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">What does the message of the elder beavers mean?</span></span></span></p></pre></div></div></div></div></div></div></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">First Character stands for the third row and the first column: there is the letter S. Because of this only the answers A) and C) can be correct anymore. The second, third and fourth letter of the answer A) and C) is the same. The characters correspond to the letters A, V and E. The fifth letter however differs between these two answers. Fifth stands for the letter W. Therefore the answer A) is correct. Also the last four characters correspond to the letters A, T, E and R.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s<strong> Computational Thinking</strong>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CT Skills -&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CS Domain -&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Data security is an important task throughout the whole society nowadays. One of the methods to protect data from unauthorized access is to encrypt it. The science of encrypting information (called cryptography) is at least 3500 years old. In olden days kings would often send secret messages to neighbouring kings. These messages were encrypted to ensure that if they fell into enemy hands, they would not make any sense to the enemy.  One of the oldest known methods of encryption is based on replacing letters with other letters or symbols. For encryption a plaintext is encrypted by using a key into a ciphertext. Reconstructing the plaintext from the ciphertext by using the key is called decrypting it. If one finds the plaintext of the ciphertext without knowing the key it\\u2019s called breaking.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The encryption algorithm (called cipher) of this task is a monoalphabetic cipher. For this algorithm for every letter a new symbol is chosen. Often systems are used that are easily remembered. The system used in this task is similar to the alphabet the Pigpen cipher. Cryptanalytics that break these texts would use special techniques like a frequency analysis  or n-grams on the ciphertext to find the letters corresponding to the symbols. Edgar Allen Poe showed in 1843 that this is generally possible for monoalphabetic ciphers in his short story \\u201cThe Gold-Bug\\u201d.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What could Deepa have done if she did not have the table but if she had known the four possible meanings? She could have noticed that the fourth and eighth characters are the same. If she assumes a monoalphabetic cipher she would only have to find a text of which the fourth and eighth characters are the same, and that would have only been answer A).</span></span></p><div><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'komal.amrutkar@cumminscollege.in', '2020-CH-01-Beavers_EN', 102001, 29),
(41, '{\"caption\":\"Funtime school\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The teachers&nbsp;at&nbsp;Funtime School&nbsp;like to include games in their classes.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">At the end of one day,&nbsp;one teacher invites his students&nbsp;to play a game. The winner gets to leave school before the others&nbsp;are dismissed.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Rules of the game:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The school has one&nbsp;hallway with five doors in a row. Each student gets a turn to walk down the hallway.&nbsp; When they get to an open door, they must close it and move on to the next door.&nbsp; When they get to a closed door, they must open it, go into that classroom,&nbsp;leave the door open&nbsp;and wait there&nbsp;until the teacher dismisses them.&nbsp; &nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The winner is therefore the student who finds all 5 doors open, because then they can continue on their way home.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">If, at the start of the game, all five doors are closed and the students take turns walking down the hallway, which student wins the game? (Enter your answer as an integer.)</span></span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">32nd.&nbsp;</span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">Let \\u201c.\\u201d represent closed doors and let \\u201co\\u201d represent open doors. The following table represents the state of the corridor at the beginning and for the first eight kids, assuming that the entrance into the corridor is on the right. 0 ..... All doors closed&nbsp;</span></span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">1 ....o The first is closed; open and enter&nbsp;</span></span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">2 ...o. Slams the first, the second is closed, open and enter&nbsp;</span></span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">3 ...oo The first is closed, open and enter&nbsp;</span></span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">4 ..o.. Slams the first two, the third is closed, open and enter&nbsp;</span></span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">5 ..o.o The first is closed, open and enter&nbsp;</span></span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">6 ..oo. Slams the first, the second is closed, open and enter&nbsp;</span></span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">7 ..ooo The first is closed, open and enter&nbsp;</span></span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">8 .o... Slams the first three, the fourth is closed, open and enter If this reminds you of binary counting, you\'re right. We will have&nbsp;</span></span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">31 ooooo&nbsp;</span></span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">So if you wished \\u2013 although we know you don\'t, and besides, you don\\u2019t live in Naughtingham \\u2013 to skip the school (and slam some doors in the process), you want to be 32 .....</span></span></span><br></p><div><br></div></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'ayushi.naphade@cumminscollege.in', '2020-HU-01-FunSchool_EN', 102001, 30),
(42, '{\"caption\":\"Which Tower?\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Kittu\\u2019s little sister made up some rules how building bricks should be stacked. They are shown in the drawing with arrows.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Kittu may start with any building brick.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Kittu must always follow the arrows. If there are several arrows leading away from a        building brick she may choose one. If an arrow leads back to the same building brick        he may stack another one of the same kind.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Kittu must stop stacking if no arrow leads away from the last building brick he        stacked.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Building T_2020-5-7_1-39-14.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" width=\\\"673\\\" height=\\\"258\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Kittu stacks four different towers for her little sister.</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Question&nbsp; :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Which of the four towers did she build based on the rules made up by her little sister?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The tower of answer A) correctly starts with two blue boxes. After the two blue boxes, however, an orange cube is stacked but there is no arrow from the blue boxes to the orange cubes. Therefore answer A) is wrong.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The tower of answer B) correctly starts with a green cylinder. After the green cylinder, however, another green cylinder is stacked but there is no arrow from the green cylinder back to the green cylinder. Therefore answer B) is wrong.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The tower of answer C) correctly starts with two blue boxes. After the second blue box correctly a green cylinder is stacked and after the green cylinder correctly a yellow pyramid is stacked. Since from the yellow pyramid no arrows lead away it is also correct that no further building bricks are stacked on top. Therefore answer C) is correct. The tower of answer D) correctly starts with a blue box. After the blue box correctly a green cylinder is stacked. After the green cylinder, however, an orange cube is stacked but there is no arrow from the green cylinder to the orange cube. Therefore answer D) is wrong.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s <strong>Computational Thinking</strong>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The rule for stacking the building bricks is based on the idea that the topmost building brick determines which building brick is allowed to be stacked on top next. So the topmost building brick is the current state of the tower. The roles define from which state the tower may change to which next state. This change in state is called a transition. The graphic with the arrows is called a state diagram. Since all building bricks may be used as the first building brick, all building bricks are start states. The yellow pyramid, however, is the only building brick with which the tower may be finished (unless the tower has tipped over before), so it is called an accepting state. The decision to stack another building brick is an input of the builder. These aspects of stacking building bricks describe a so-called nondeterministic finite automaton. It is nondeterministic because there are states from which several paths may be chosen: after a blue box another blue box, a green cylinder or a yellow pyramid may be stacked next. It is called finite because it only has a finite number of possible states: on of the four building bricks as the topmost building brick of the tower. Theoretically one could build a tower of infinite height ... but for that one would need an infinite number of blue boxes and high towers tend to (often for the amusement of the builder) tip over.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The model of nondeterministic finite automatons is used often in computer science. It\\u2019s used for modeling many different things: the behavior of software modules or complete programs, simple language structures, how hardware components interact with each other and much more. By using a formal description it is then easy to test if a software behaves as it should \\u2013 or if the tower is built according to the rules.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'ayushi.naphade@cumminscollege.in', '2020-SK-01-Tower_EN', 102001, 31),
(43, '{\"caption\":\"Abacus\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A number is represented on a Chinese abacus by the position of its beads. The value of a bead on the top part is 5; the value of a bead on the bottom part is 1. The abacus is reset to zero by pushing the beads away from the centre. To represent the number 1 746 503 the appropriate beads are moved towards the centre of the abacus:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/16)Abacus_1_2020-5-7_1-46-30.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imgleft e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What number does the following abacus represent?</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/16)Abacus_2_2020-5-7_1-46-30.png\\\" class=\\\"e-rte-image e-imgleft e-imginline e-resize\\\" style=\\\"background-color: unset; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.01071em; display: block; max-height: 100%; max-width: 100%;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p>&nbsp;&nbsp;</p><p><br></p><p><br></p><p><br></p></div></div></div></div></div></div></div></div></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">By adding the values of the beads that are nearest to the centre of the abacus the answer shown can be obtained.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s&nbsp;<span style=\\\"font-weight: 700;\\\">Computational Thinking</span>:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Concepts - Abstraction(AB), Decomposition(DE), Algorithmic Thinking(AL) Since ancient times, the abacus has been a calculating tool that represents numbers with the help of stones or beads (the numbers are encoded). By moving the beads, you can compute numbers (addition, multiplication, etc.). Finally, the calculation result is read from the abacus (output). The abacus is therefore a forerunner of the computer, as the computer encodes data, does computation, and outputs results. For this task we used the chinese abacus \\\"Suanpan\\\" which is still commonly used in Asian countries. \\\"Zhusuan\\\", the traditional calculation method with the \\\"Suanpan\\\" was included in the \\\"Representative List of the Intangible Cultural Heritage of Humanity\\\" by UNESCO in 2013.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'ayushi.naphade@cumminscollege.in', '2020-IN-01-Abacus_EN', 102001, 32);
INSERT INTO `ques_questiontranslation` (`questionTranslationID`, `translation`, `modified_on`, `modified_by`, `Identifier`, `languageCodeID`, `questionID`) VALUES
(44, '{\"caption\":\"Beavers on the run\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/19)Beavers on the run_1_2020-5-7_1-56-5.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A colony of beavers is travelling through a dark forest.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The path is narrow, so they travel in a row without passing. Sometimes there is a hole in the path. A hole is passed in the following manner:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2022 First as many beavers jump into the hole as fit in.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2022 The entire colony will then pass across the hole.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2022 The beavers that jumped in will then climb out.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The images on the right show how five beavers pass a small hole that fits three beavers.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A colony of 7 beavers passed through the forest. They pass over 3 holes. The first hole fits 4 beavers, the second fits 2, and in the last hole fit 3 beavers. What order do the beavers find themselves after they have passed the third hole?</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/19)Beavers on the run_2_2020-5-7_1-56-5.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Initially the line is 1 2 3 4 5 6 7 Then after the first hole of depth 4 we have: 5 6 7 4 3 2 1 After the second hole (depth 2) we have: 7 4 3 2 1 6 5 After the third hole (depth 3) we get: 2 1 6 5 3 4 7&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s <strong>Computational Thinking</strong>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Concepts - Abstraction(AB), Decomposition(DE), Algorithmic Thinking(AL) Organising data in a structured way is important in computer science and there are many different data structures that can be used for this purpose. This task shows an example of a structure called a stack, which works similarly to stacking plates on top of each other. You always add new plates on top of the stack and have to remove them from the top one at a time. This type of structure is commonly referred to as a LIFOstructure \\u2013 the objects that have been added last are the first to be removed. (LIFO = Last In First Out)</span></span></p></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'komal.amrutkar@cumminscollege.in', '2020-BE-01-BeaversRun_EN', 102001, 33),
(45, '{\"caption\":\"Drawing Triplets\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A robot is moving atop a grid and is drawing lines at the same time. He can be controlled by using three numbers. For this he repeats the following steps several times:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Advance as many steps on the grid as the first number says.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Turn right a quarter turn.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Advance as many steps on the grid as the second number says.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Turn right a quarter turn.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Advance as many steps on the grid as the third number says.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Turn right a quarter turn.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;If the robot is controlled by the numbers 3, 1, and 5, he draws the following lines:</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/triplets_2020-5-7_11-23-2.JPG\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The robot is controlled by the numbers 2, 2, and 3. How do the lines look like?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p>The numbers 2, 2, and 3 tell the robot to advance 2 steps at the beginning, turn right a quarter turn, advance 2 steps again, turn right a quarter turn, then advance 3 steps and finally turn right a quarter turn. After that he\\u2019s drawn the following lines shown below in figures at ht end:&nbsp;</p><p>If he repeats this he has drawn these lines:&nbsp;</p><p>After two more repetitions the picture looks like this:&nbsp;</p><p>Since he\\u2019s in the same position and has the same direction as in the very beginning all further repetitions will just have him draw the same lines again and again. Therefore answer A) is correct.&nbsp;</p><p>The three other lines can also be drawn by the robot, they need different numbers, however:&nbsp;</p><p><br></p><p>It\\u2019s Computational Thinking:&nbsp;</p><p><br></p><p>CT Skills - \\nCS Domain - \\n\\nThe drawing robot of this task can only execute very simple programs. The programming language that the robot understands only knows three numbers as commands. Every program must consist of exactly such three numbers. It is also fixed that the robot repeats the commands infinitely whether this is desired or not.\\nMost robots and computers understand much more complex (programming) languages. Most of these languages have the same basic properties:&nbsp;</p><p>&nbsp;\\u25cf A program may consist of an arbitrary number of commands that are repeated after another in a sequence .&nbsp;</p><p>&nbsp;\\u25cf Repetitions of different types, so called loops , may be but don\\u2019t have to be used.&nbsp;</p><p>&nbsp;\\u25cf Also there are conditional statements that based on the state of the program allow for different codes.&nbsp;</p><p><span style=\\\"background-color: unset; text-align: inherit; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.01071em;\\\">&nbsp;If a programming language contains loops and conditional statements by using them it can compute everything that is computable. In computer science these programming languages are called universal \\u2013 or also Turing complete.\\n\\nThe robot of this task by the way is in a classic environment used for teaching how to program.&nbsp;</span></p><p><span style=\\\"background-color: unset; text-align: inherit; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.01071em;\\\">Instead of a robot, one can imagine a turtle that draws lines. Such turtle graphics may for instance be used with XlogoOnline or with TigerJython.</span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-07', 'komal.amrutkar@cumminscollege.in', '2020-SK-02-DrawingTriplets_EN', 102001, 34),
(46, '{\"caption\":\"Tunnels of the homstead dam\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><br><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/8)Tunnels_1_2020-5-7_12-4-28.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\"></p><p><br></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u201cHomestead Dam\\u201d has four&nbsp;rooms (A, B, C, F) connected by a series of tunnels.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The first three rooms (A, B, and C) are living rooms. The fourth room (F) is where the beavers&nbsp;store&nbsp;their food (see figure).&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">While the 10 beavers are hanging out in room A, they start to get hungry and all decide&nbsp;to&nbsp;go to room F to get something to&nbsp;eat. They are all&nbsp;very hungry and&nbsp;want to get to&nbsp;the food storage room&nbsp;as soon as possible.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The rooms are connected by a series of tunnels:&nbsp;&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981\\tBetween A and B: 4 tunnels.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981\\tBetween A and C: 1 tunnel.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981\\tBetween B and C: 2 tunnels.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981\\tBetween B and F: 1 tunnel.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981\\tBetween C and F: 3 tunnels.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It takes a beaver&nbsp;1 minute to&nbsp;go through a tunnel and only one beaver may&nbsp;go through&nbsp;a tunnel at the same time (a beaver may only enter&nbsp;a tunnel once the beaver before it is out the other side).&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">All of the rooms are big enough for all 10 beavers to be in there at the same time: there&nbsp;are no capacity limits for the rooms.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">If the beavers plan their route the best way possible, how quickly can all 10&nbsp;beavers be in the food storage room?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p>The correct answer is: 4 minutes&nbsp;&nbsp;</p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\">In the best case, all beavers are in the food storage after&nbsp;4 Minutes.&nbsp;</span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\">The graph has two shortest routes, both have the capacity of 1 beaver and both require 2 Minutes total travel time:&nbsp;</span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\">\\u2981\\tA to B to F&nbsp;</span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\">\\u2981\\tA to C to F&nbsp;</span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\">There is a route that has higher capacity (2 beavers) but requires 3 Minutes total travel time:&nbsp;</span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\">\\u2981\\tA to B to C to F&nbsp;</span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\">To optimize overall time, the connection A to B must be used at reduced capacity. The optimal solution sends 3 beavers at first Minute (which is very counter intuitive) and 3 at the second Minute.&nbsp;</span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\">Given that only 3 tunnels exit room B, if the connection A to B is used at full capacity (4 beavers), connections B to C and B to F become a bottleneck and one beaver stays stuck in room B.</span><br></p><div><br></div></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-BE-02-Tunnels_EN', 102001, 36),
(47, '{\"caption\":\"Quipu\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><br><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Quipu_2020-5-7_13-42-57.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\"></p><p><br></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The Inca used knots to transfer messages. To a main string several sub-strings were connected which contain some knots. These so-called Quipus were large and difficult to create.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Imagine that you have to transmit one of 30 possible messages. For this a simplified version of Quipus is supposed to be developed. The requirements are:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp; &nbsp; &nbsp; \\u25cf The main string always has the same number of substrings.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp; &nbsp; &nbsp; \\u25cf Sub-strings only differ by the number of knots.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp; &nbsp; &nbsp; \\u25cf A sub-string may have 0, 1, 2 or 3 knots.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp; &nbsp; &nbsp; \\u25cf The order of the sub-strings is given by a knot in the main string.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">How many minimum sub-strings does the simplified version of Quipus have to fulfill these requirements?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p>Every sub-string may store one of four different values (0, 1, 2, or 3). For two sub-strings this\\nwould give 4 \\u00d7 4 = 16 possible combinations, for three sub-strings 4 \\u00d7 4 x 4 = 64 possible\\ncombinations and so forth. Because of this three sub-strings are sufficient, more sub-strings\\nwould contradict the requirement that there should be as few sub-strings as possible. Since\\nthe order of the sub-strings is given by the knot in the main string, one does not need to\\naccount for the possibility that a string could be read in one or the other direction.&nbsp;</p><p><br></p><p>It\\u2019s Computational Thinking:&nbsp;</p><p><br></p><p>Quipus were actually used by the Inca in South America. For bookkeeping and tax imposition\\ngrey quipus were used. By using colored strings people reckon that up to 95 different\\nsyllables could be encoded and correspondence was possible. Unlike in this task\\u2019s simple\\nvariant different types of knots and in some cases sub-sub-strings were used.\\nSo the example of this task is a simplified variant. Since the order of the sub-strings is given\\nby the knot in the main string, the different values (0, 1, 2, or 3) represent a positional\\nnumeral system , in this case to the base 4. Positional numeral systems are wide-spread:\\ncomputers use a binary number system to the base 2. Within a positional numeral system\\nthe base b with n positions can store exactly b n different values. A byte (8 bit which each can\\nbe 0 or 1) can store 2 8 = 256 different values (from 0 to 255), the Quipu in this task 4 3 = 64\\ndifferent values.&nbsp;</p><p>For the Inca in order to store values from 1 to 30 a single sub-string would have been\\nsufficient. They used a decimal number system like we do for writing numbers, just with\\ndifferent knots on a string. For the single digits simply an over head knot with additional\\nturns and for the additional digits clusters of stopper knots would have been used for\\nencoding the numbers. However they would have had to use up to four knots and different\\ntypes of knots.</p><div><br></div></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-JP-01-Quipu_EN', 102001, 37),
(48, '{\"caption\":\"\\u0924\\u093e\\u091f\\u0932\\u094d\\u092f\\u093e\\u0902\\u091a\\u0940 \\u092e\\u093e\\u0902\\u0921\\u0923\\u0940\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u092c\\u0902\\u091f\\u0940 \\u0938\\u094d\\u0935\\u092f\\u0902\\u092a\\u093e\\u0915\\u0918\\u0930\\u093e\\u0924\\u0932\\u094d\\u092f\\u093e \\u092e\\u093e\\u0902\\u0921\\u0923\\u0940 \\u092e\\u0927\\u094d\\u092f\\u0947 \\u0924\\u093e\\u091f\\u0932\\u094d\\u092f\\u093e \\u0905\\u0928\\u0941\\u0915\\u094d\\u0930\\u092e\\u093e\\u0928\\u0947 \\u092e\\u093e\\u0902\\u0921\\u0924\\u094b \\u0906\\u0939\\u0947. \\u0924\\u093e\\u091f\\u0932\\u094d\\u092f\\u093e \\u092e\\u093e\\u0902\\u0921\\u0924\\u093e\\u0902\\u0928\\u093e \\u092e\\u093e\\u0902\\u0921\\u0923\\u0940\\u092e\\u0927\\u094d\\u092f\\u0947  \\u092e\\u094b\\u0920\\u094d\\u092f\\u093e \\u0924\\u093e\\u091f\\u0932\\u094d\\u092f\\u093e \\u0921\\u093e\\u0935\\u0940\\u0915\\u0921\\u0947, \\u092e\\u0927\\u094d\\u092f\\u092e \\u0906\\u0915\\u093e\\u0930\\u093e\\u091a\\u094d\\u092f\\u093e \\u0924\\u093e\\u091f\\u0932\\u094d\\u092f\\u093e \\u092e\\u0927\\u094d\\u092f\\u092d\\u093e\\u0917\\u0940 \\u0906\\u0923\\u093f \\u0932\\u0939\\u093e\\u0928 \\u0924\\u093e\\u091f\\u0932\\u094d\\u092f\\u093e \\u0909\\u091c\\u0935\\u0940\\u0915\\u0921\\u0947 \\u0932\\u093e\\u0935\\u0924\\u094b \\u0906\\u0939\\u0947. \\u092c\\u0902\\u091f\\u0940 \\u0924\\u093e\\u091f\\u0932\\u094d\\u092f\\u093e \\u0932\\u093e\\u0935\\u0924\\u093e\\u0902\\u0928\\u093e \\u0926\\u094b\\u0928 \\u0924\\u093e\\u091f\\u0932\\u094d\\u092f\\u093e\\u0902\\u092e\\u0927\\u094d\\u092f\\u0947 \\u0930\\u093f\\u0915\\u093e\\u092e\\u0940 \\u091c\\u093e\\u0917\\u093e \\u0920\\u0947\\u0935\\u0924 \\u0928\\u093e\\u0939\\u0940. \\u091c\\u0947\\u0935\\u0923 \\u091d\\u093e\\u0932\\u094d\\u092f\\u093e\\u0928\\u0902\\u0924\\u0930 \\u092c\\u0902\\u091f\\u0940\\u0932\\u093e \\u0906\\u0923\\u0916\\u0940 \\u090f\\u0915 \\u092e\\u094b\\u0920\\u0940 \\u0924\\u093e\\u091f\\u0932\\u0940 \\u092e\\u093e\\u0902\\u0921\\u0923\\u0940 \\u092e\\u0927\\u094d\\u092f\\u0947 \\u0920\\u0947\\u0935\\u093e\\u092f\\u091a\\u0940 \\u0906\\u0939\\u0947. \\u092a\\u0923 \\u0924\\u093e\\u091f\\u0932\\u0940 \\u0920\\u0947\\u0935\\u0924\\u093e\\u0902\\u0928\\u093e \\u0924\\u094d\\u092f\\u093e\\u0932\\u093e \\u0924\\u094b\\u091a \\u0905\\u0928\\u0941\\u0915\\u094d\\u0930\\u092e \\u0920\\u0947\\u0935\\u093e\\u092f\\u091a\\u093e \\u0906\\u0939\\u0947. \\u092e\\u093e\\u0924\\u094d\\u0930 \\u0939\\u0947 \\u0915\\u0930\\u0924\\u093e\\u0902\\u0928\\u093e \\u0924\\u094d\\u092f\\u093e\\u0932\\u093e \\u0915\\u092e\\u0940\\u0924 \\u0915\\u092e\\u0940 \\u0924\\u093e\\u091f\\u0932\\u094d\\u092f\\u093e \\u092c\\u0926\\u0932\\u0942\\u0928 \\u0939\\u0940 \\u092e\\u093e\\u0902\\u0921\\u0923\\u0940 \\u0915\\u0930\\u093e\\u092f\\u091a\\u0940 \\u0906\\u0939\\u0947.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/plates_2020-5-6_23-49-12.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u091c\\u0930 \\u092c\\u0902\\u091f\\u0940\\u0932\\u093e \\u0939\\u0940 \\u0928\\u0935\\u093f\\u0928 \\u092e\\u094b\\u0920\\u0940 \\u0924\\u093e\\u091f\\u0932\\u0940 \\u0924\\u094d\\u092f\\u093e\\u091a \\u0905\\u0928\\u0941\\u0915\\u094d\\u0930\\u092e\\u093e\\u0928\\u0947 \\u0932\\u093e\\u0935\\u093e\\u092f\\u091a\\u0940 \\u0905\\u0938\\u0947\\u0932 \\u0924\\u0930 \\u0924\\u094d\\u092f\\u093e\\u0932\\u093e \\u092e\\u093e\\u0902\\u0921\\u0923\\u0940\\u092e\\u0927\\u0940\\u0932 \\u0915\\u092e\\u0940\\u0924 \\u0915\\u092e\\u0940 \\u0915\\u093f\\u0924\\u0940 \\u0924\\u093e\\u091f\\u0932\\u094d\\u092f\\u093e\\u0902 \\u0939\\u093e\\u0932\\u0935\\u093e\\u0935\\u092f\\u093e \\u0932\\u093e\\u0917\\u0924\\u0940\\u0932? \\u0916\\u093e\\u0932\\u0940\\u0932 \\u092a\\u0930\\u094d\\u092f\\u093e\\u092f\\u093e\\u0902\\u092a\\u0948\\u0915\\u0940 \\u0905\\u091a\\u0942\\u0915 \\u092a\\u0930\\u094d\\u092f\\u093e\\u092f \\u0928\\u093f\\u0935\\u0921\\u093e.</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><div style=\\\"letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Bunty\\u2019s fastest solution is if he moves the leftmost small plate to the right, fills the gap with the leftmost regular plate and puts the new large plate into the gap so that it stands to the right of the other large plates. With this he has touched two plates that are already in the rack and answer A) is correct. He cannot be faster because the large plate must be put into a position where right now a large plate or the leftmost regular plate stands (so at least one plate from the rack must be touched). In addition to that the touched plate must be put somewhere: if it is a large plate the original problem exists again, and if it is the leftmost regular plate, this must be put into a position where right now a regular or the leftmost small plate stands (so at least a second plate from the rack must be touched).&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s&nbsp;<span style=\\\"font-weight: 700;\\\">Computational Thinking</span>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CT Skills - CS Domain - Following and Devising Algorithms&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This task is about adding a new element to an already sorted array of elements. Such procedures happen often in computers so it\\u2019s worth thinking about how to do this efficiently.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In this case the \\u201ccosts\\u201d for moving a single plate in the rack is quite high. Recognizing which type a plate is, however, is very quick. In addition to that, many plates of the same kind are in the rack. So it\\u2019s worth to find a solution for this special problem by moving only two elements. For computers it\\u2019s usually better to just find a right place for the new element in the sorted array and move all elements after that by one place. This kind of comparison sort is called Insertion Sort. It is one of the most simple but also not one of the most efficient sorting algorithms. Other similar sorting algorithms are Bubble Sort or Selection Sort. The also common Quicksort which uses the principle Divide &amp; Conquer, however, is much quicker, especially for large arrays of elements.</span></span></p></div></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates1_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"314\\\" height=\\\"192\\\" style=\\\"box-sizing: inherit; outline: rgb(74, 144, 226) solid 2px;\\\"></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates2_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"314\\\" height=\\\"192\\\" style=\\\"box-sizing: inherit;\\\"></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><br></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><img style=\\\"max-height:100%;max- width:100%\\\" src=\\\"http://localhost:8000/media/images/plates3_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"315\\\" height=\\\"197\\\" style=\\\"box-sizing: inherit;\\\"></div></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-RU-01-Plates_MR', 102005, 27),
(49, '{\"caption\":\"\\u0c2a\\u0c4d\\u0c32\\u0c47\\u0c1f\\u0c4d\\u0c38\\u0c4d\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c2a\\u0c4d\\u0c32\\u0c47\\u0c1f\\u0c4d \\u0c32\\u0c28\\u0c41 \\u0c2a\\u0c46\\u0c1f\\u0c4d\\u0c1f\\u0c47 \\u0c38\\u0c4d\\u0c1f\\u0c3e\\u0c02\\u0c21\\u0c4d \\u0c32\\u0c4b,  \\u0c2c\\u0c02\\u0c1f\\u0c40 \\u0c2a\\u0c4d\\u0c32\\u0c47\\u0c1f\\u0c4d \\u0c32\\u0c28\\u0c41 \\u0c2a\\u0c46\\u0c26\\u0c4d\\u0c26\\u0c35\\u0c3f \\u0c0e\\u0c21\\u0c2e\\u0c35\\u0c48\\u0c2a\\u0c41\\u0c15\\u0c41, \\u0c2e\\u0c27\\u0c4d\\u0c2f \\u0c30\\u0c15\\u0c3e\\u0c28\\u0c3f\\u0c35\\u0c3f \\u0c2e\\u0c27\\u0c4d\\u0c2f\\u0c32\\u0c4b, \\u0c1a\\u0c3f\\u0c28\\u0c4d\\u0c28\\u0c35\\u0c3f \\u0c15\\u0c41\\u0c21\\u0c3f \\u0c35\\u0c48\\u0c2a\\u0c41 \\u0c09\\u0c02\\u0c21\\u0c47\\u0c1f\\u0c4d\\u0c32\\u0c41 \\u0c38\\u0c30\\u0c4d\\u0c26\\u0c41\\u0c24\\u0c41\\u0c28\\u0c4d\\u0c28\\u0c3e\\u0c21\\u0c41. \\u0c12\\u0c15 \\u0c2a\\u0c4d\\u0c32\\u0c47\\u0c1f\\u0c4d \\u0c15\\u0c41 \\u0c07\\u0c02\\u0c15\\u0c4b \\u0c26\\u0c3e\\u0c28\\u0c3f\\u0c15\\u0c3f \\u0c2e\\u0c27\\u0c4d\\u0c2f \\u0c16\\u0c3e\\u0c33\\u0c40\\u0c32\\u0c41 \\u0c32\\u0c47\\u0c35\\u0c41. \\u0c2d\\u0c4b\\u0c1c\\u0c28\\u0c2e\\u0c41 \\u0c05\\u0c2f\\u0c3f\\u0c28 \\u0c24\\u0c30\\u0c4d\\u0c35\\u0c3e\\u0c24, \\u0c12\\u0c15 \\u0c2a\\u0c46\\u0c26\\u0c4d\\u0c26 \\u0c2a\\u0c4d\\u0c32\\u0c47\\u0c1f\\u0c4d \\u0c28\\u0c41 \\u0c35\\u0c3e\\u0c1f\\u0c3f\\u0c32\\u0c4b \\u0c2a\\u0c46\\u0c1f\\u0c4d\\u0c1f\\u0c3e\\u0c32\\u0c28\\u0c3f \\u0c05\\u0c28\\u0c41\\u0c15\\u0c4a\\u0c28\\u0c4d\\u0c28\\u0c3e\\u0c21\\u0c41. \\u0c26\\u0c3e\\u0c28\\u0c3f\\u0c28\\u0c3f \\u0c2a\\u0c46\\u0c1f\\u0c4d\\u0c1f\\u0c3f\\u0c28 \\u0c24\\u0c30\\u0c41\\u0c35\\u0c3e\\u0c24 \\u0c35\\u0c41\\u0c28\\u0c4d\\u0c28 \\u0c2a\\u0c4d\\u0c32\\u0c47\\u0c1f\\u0c4d \\u0c32\\u0c41 \\u0c07\\u0c2a\\u0c4d\\u0c2a\\u0c41\\u0c21\\u0c41 \\u0c35\\u0c41\\u0c28\\u0c4d\\u0c28 \\u0c32\\u0c3e\\u0c17\\u0c47 \\u0c35\\u0c30\\u0c41\\u0c38\\u0c32\\u0c4b\\u0c28\\u0c47 \\u0c35\\u0c41\\u0c02\\u0c21\\u0c3e\\u0c32\\u0c3f \\u0c2e\\u0c30\\u0c3f\\u0c2f\\u0c41  \\u0c05\\u0c24\\u0c3f \\u0c24\\u0c15\\u0c4d\\u0c15\\u0c41\\u0c35 \\u0c2a\\u0c4d\\u0c32\\u0c47\\u0c1f\\u0c4d \\u0c32\\u0c28\\u0c41 \\u0c2e\\u0c3e\\u0c24\\u0c4d\\u0c30\\u0c2e\\u0c47 \\u0c1c\\u0c30\\u0c2a\\u0c3e\\u0c32\\u0c3f.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/plates_2020-5-6_23-49-12.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c2c\\u0c02\\u0c1f\\u0c40 \\u0c0e\\u0c28\\u0c4d\\u0c28\\u0c3f \\u0c2a\\u0c4d\\u0c32\\u0c47\\u0c1f\\u0c4d \\u0c32\\u0c28\\u0c41 \\u0c1c\\u0c30\\u0c3f\\u0c2a\\u0c3f\\u0c24\\u0c47 \\u0c08 \\u0c15\\u0c4d\\u0c30\\u0c4a\\u0c24\\u0c4d\\u0c24 \\u0c2a\\u0c4d\\u0c32\\u0c47\\u0c1f\\u0c4d \\u0c28\\u0c41 \\u0c35\\u0c41\\u0c28\\u0c4d\\u0c28 \\u0c35\\u0c3e\\u0c1f\\u0c3f\\u0c32\\u0c4b \\u0c35\\u0c30\\u0c41\\u0c38\\u0c32\\u0c4b \\u0c2a\\u0c46\\u0c1f\\u0c4d\\u0c1f\\u0c17\\u0c32\\u0c21\\u0c41?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><div style=\\\"letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Bunty\\u2019s fastest solution is if he moves the leftmost small plate to the right, fills the gap with the leftmost regular plate and puts the new large plate into the gap so that it stands to the right of the other large plates. With this he has touched two plates that are already in the rack and answer A) is correct. He cannot be faster because the large plate must be put into a position where right now a large plate or the leftmost regular plate stands (so at least one plate from the rack must be touched). In addition to that the touched plate must be put somewhere: if it is a large plate the original problem exists again, and if it is the leftmost regular plate, this must be put into a position where right now a regular or the leftmost small plate stands (so at least a second plate from the rack must be touched).&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s&nbsp;<span style=\\\"font-weight: 700;\\\">Computational Thinking</span>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CT Skills - CS Domain - Following and Devising Algorithms&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This task is about adding a new element to an already sorted array of elements. Such procedures happen often in computers so it\\u2019s worth thinking about how to do this efficiently.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In this case the \\u201ccosts\\u201d for moving a single plate in the rack is quite high. Recognizing which type a plate is, however, is very quick. In addition to that, many plates of the same kind are in the rack. So it\\u2019s worth to find a solution for this special problem by moving only two elements. For computers it\\u2019s usually better to just find a right place for the new element in the sorted array and move all elements after that by one place. This kind of comparison sort is called Insertion Sort. It is one of the most simple but also not one of the most efficient sorting algorithms. Other similar sorting algorithms are Bubble Sort or Selection Sort. The also common Quicksort which uses the principle Divide &amp; Conquer, however, is much quicker, especially for large arrays of elements.</span></span></p></div></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates1_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"314\\\" height=\\\"192\\\" style=\\\"box-sizing: inherit; outline: rgb(74, 144, 226) solid 2px;\\\"></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates2_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"314\\\" height=\\\"192\\\" style=\\\"box-sizing: inherit;\\\"></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><br></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates3_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize e-img-focus\\\" width=\\\"315\\\" height=\\\"197\\\" style=\\\"box-sizing: inherit;\\\"></div></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-RU-01-Plates_TE', 102007, 27),
(50, '{\"caption\":\"News editing\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">10 students are working on the school\\u2019s newspaper. Every Friday they write or edit their own articles. The red cells, on the plan below,&nbsp;show when the students need a computer.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The computers are all the same. During any one hour, only one student at a time can work on a computer.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/4)News_1_2020-5-7_15-44-49.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What is the minimum number of computers needed for all of the students to work according to the plan shown above?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/4)News_Exp_2020-5-7_15-44-49.png\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><br></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">At 09:00 and 10:00, 5 students need a computer \\u2013 we can\\u2019t solve the problem with fewer than 5 computers. If we organize the information properly, as in the following table, 5 computers are enough. When a students arrives, they sit on the first available computer. When they have finished their work, another student comes and sits at that computer.</span></span></p></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-CA-02-News_EN', 102001, 38);
INSERT INTO `ques_questiontranslation` (`questionTranslationID`, `translation`, `modified_on`, `modified_by`, `Identifier`, `languageCodeID`, `questionID`) VALUES
(51, '{\"caption\":\"\\u0c30\\u0c4b\\u0c2c\\u0c4b \\u0c17\\u0c40\\u0c24\\u0c32\\u0c41\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c13 \\u0c2e\\u0c30\\u0c2e\\u0c28\\u0c3f\\u0c37\\u0c3f (\\u0c30\\u0c4b\\u0c2c\\u0c4b) \\u0c13 \\u0c17\\u0c33\\u0c4d\\u0c33 \\u0c17\\u0c26\\u0c3f\\u0c32\\u0c4b \\u0c24\\u0c3f\\u0c30\\u0c41\\u0c17\\u0c41\\u0c24\\u0c42 \\u0c38\\u0c30\\u0c33\\u0c30\\u0c47\\u0c16\\u0c32\\u0c28\\u0c41 \\u0c17\\u0c40\\u0c38\\u0c4d\\u0c24\\u0c41\\u0c02\\u0c26\\u0c3f. \\u0c30\\u0c4b\\u0c2c\\u0c4b\\u0c28\\u0c3f  \\u0c2e\\u0c42\\u0c21\\u0c41 \\u0c38\\u0c02\\u0c16\\u0c4d\\u0c2f\\u0c32\\u0c24\\u0c4b \\u0c28\\u0c3f\\u0c2f\\u0c02\\u0c24\\u0c4d\\u0c30\\u0c3f\\u0c02\\u0c1a\\u0c35\\u0c1a\\u0c4d\\u0c1a\\u0c41. \\u0c05\\u0c26\\u0c3f \\u0c08 \\u0c15\\u0c4d\\u0c30\\u0c3f\\u0c02\\u0c26 \\u0c07\\u0c1a\\u0c4d\\u0c1a\\u0c3f\\u0c28  \\u0c35\\u0c3f\\u0c27\\u0c2e\\u0c41\\u0c17\\u0c3e \\u0c12\\u0c15 \\u0c38\\u0c3e\\u0c30\\u0c3f \\u0c24\\u0c30\\u0c4d\\u0c35\\u0c3e\\u0c24 \\u0c2e\\u0c30\\u0c4b\\u0c38\\u0c3e\\u0c30\\u0c3f \\u0c1a\\u0c47\\u0c38\\u0c4d\\u0c24\\u0c42\\u0c28\\u0c47 \\u0c35\\u0c41\\u0c02\\u0c1f\\u0c41\\u0c02\\u0c26\\u0c3f:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0c2e\\u0c4a\\u0c26\\u0c1f\\u0c3f \\u0c38\\u0c02\\u0c16\\u0c4d\\u0c2f\\u0c15\\u0c41 \\u0c38\\u0c30\\u0c3f\\u0c2a\\u0c4b\\u0c2f\\u0c3f\\u0c28\\u0c28\\u0c4d\\u0c28\\u0c3f \\u0c17\\u0c26\\u0c41\\u0c32\\u0c28\\u0c41 \\u0c26\\u0c3e\\u0c1f\\u0c41\\u0c24\\u0c41\\u0c02\\u0c26\\u0c3f.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0c15\\u0c41\\u0c21\\u0c3f \\u0c26\\u0c3f\\u0c15\\u0c4d\\u0c15\\u0c41\\u0c32\\u0c4b 90 \\u0c21\\u0c3f\\u0c17\\u0c4d\\u0c30\\u0c40\\u0c32\\u0c41 \\u0c24\\u0c3f\\u0c30\\u0c41\\u0c17\\u0c41\\u0c24\\u0c41\\u0c02\\u0c26\\u0c3f.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">     \\u25cf \\u0c30\\u0c46\\u0c02\\u0c21\\u0c35 \\u0c38\\u0c02\\u0c16\\u0c4d\\u0c2f\\u0c15\\u0c41 \\u0c38\\u0c30\\u0c3f\\u0c2a\\u0c4b\\u0c2f\\u0c3f\\u0c28\\u0c28\\u0c4d\\u0c28\\u0c3f \\u0c17\\u0c26\\u0c41\\u0c32\\u0c28\\u0c41 \\u0c26\\u0c3e\\u0c1f\\u0c41\\u0c24\\u0c41\\u0c02\\u0c26\\u0c3f.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0c15\\u0c41\\u0c21\\u0c3f \\u0c26\\u0c3f\\u0c15\\u0c4d\\u0c15\\u0c41\\u0c32\\u0c4b 90 \\u0c21\\u0c3f\\u0c17\\u0c4d\\u0c30\\u0c40\\u0c32\\u0c41 \\u0c24\\u0c3f\\u0c30\\u0c41\\u0c17\\u0c41\\u0c24\\u0c41\\u0c02\\u0c26\\u0c3f.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0c2e\\u0c42\\u0c21\\u0c35 \\u0c38\\u0c02\\u0c16\\u0c4d\\u0c2f\\u0c15\\u0c41 \\u0c38\\u0c30\\u0c3f\\u0c2a\\u0c4b\\u0c2f\\u0c3f\\u0c28\\u0c28\\u0c4d\\u0c28\\u0c3f \\u0c17\\u0c26\\u0c41\\u0c32\\u0c28\\u0c41 \\u0c26\\u0c3e\\u0c1f\\u0c41\\u0c24\\u0c41\\u0c02\\u0c26\\u0c3f.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0c15\\u0c41\\u0c21\\u0c3f \\u0c26\\u0c3f\\u0c15\\u0c4d\\u0c15\\u0c41\\u0c32\\u0c4b 90 \\u0c21\\u0c3f\\u0c17\\u0c4d\\u0c30\\u0c40\\u0c32\\u0c41 \\u0c24\\u0c3f\\u0c30\\u0c41\\u0c17\\u0c41\\u0c24\\u0c41\\u0c02\\u0c26\\u0c3f.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u0c2e\\u0c30\\u0c2e\\u0c28\\u0c3f\\u0c37\\u0c3f \\u0c15\\u0c28\\u0c41\\u0c15 3,1, \\u0c2e\\u0c30\\u0c3f\\u0c2f\\u0c41 5 \\u0c05\\u0c28\\u0c47 \\u0c38\\u0c02\\u0c16\\u0c4d\\u0c2f\\u0c32\\u0c24\\u0c4b \\u0c2a\\u0c28\\u0c3f\\u0c1a\\u0c47\\u0c38\\u0c47\\u0c26\\u0c3f \\u0c05\\u0c2f\\u0c3f\\u0c24\\u0c47, \\u0c05\\u0c26\\u0c3f \\u0c08 \\u0c15\\u0c4d\\u0c30\\u0c3f\\u0c02\\u0c26 \\u0c1a\\u0c42\\u0c2a\\u0c3f\\u0c02\\u0c1a\\u0c28 \\u0c35\\u0c3f\\u0c27\\u0c2e\\u0c41\\u0c17\\u0c3e \\u0c38\\u0c30\\u0c33\\u0c30\\u0c47\\u0c16\\u0c32\\u0c28\\u0c41 \\u0c17\\u0c40\\u0c38\\u0c4d\\u0c24\\u0c41\\u0c02\\u0c26\\u0c3f.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/triplets_2020-5-7_11-23-2.JPG\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c06 \\u0c2e\\u0c30\\u0c2e\\u0c28\\u0c3f\\u0c37\\u0c3f\\u0c28\\u0c3f 2,2 \\u0c2e\\u0c30\\u0c3f\\u0c2f\\u0c42 3 \\u0c05\\u0c28\\u0c47 \\u0c38\\u0c02\\u0c16\\u0c4d\\u0c2f\\u0c32\\u0c24\\u0c4b \\u0c28\\u0c3f\\u0c2f\\u0c02\\u0c24\\u0c4d\\u0c30\\u0c3f\\u0c38\\u0c4d\\u0c24\\u0c42 \\u0c35\\u0c41\\u0c02\\u0c1f\\u0c47, \\u0c35\\u0c1a\\u0c4d\\u0c1a\\u0c3f\\u0c28 \\u0c38\\u0c30\\u0c33\\u0c30\\u0c47\\u0c16\\u0c32\\u0c41, \\u0c08 \\u0c15\\u0c4d\\u0c30\\u0c3f\\u0c02\\u0c26 \\u0c07\\u0c1a\\u0c4d\\u0c1a\\u0c3f\\u0c28 \\u0c35\\u0c3e\\u0c1f\\u0c3f\\u0c32\\u0c4b \\u0c26\\u0c47\\u0c28\\u0c3f\\u0c32\\u0c3e\\u0c17\\u0c3e \\u0c35\\u0c41\\u0c02\\u0c1f\\u0c3e\\u0c2f\\u0c3f?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The numbers 2, 2, and 3 tell the robot to advance 2 steps at the beginning, turn right a quarter turn, advance 2 steps again, turn right a quarter turn, then advance 3 steps and finally turn right a quarter turn. After that he\\u2019s drawn the following lines shown below in figures at ht end:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">If he repeats this he has drawn these lines:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">After two more repetitions the picture looks like this:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Since he\\u2019s in the same position and has the same direction as in the very beginning all further repetitions will just have him draw the same lines again and again. Therefore answer A) is correct.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The three other lines can also be drawn by the robot, they need different numbers, however:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s <strong>Computational Thinking</strong>:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CT Skills -</span></span>&nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CS Domain -</span></span>&nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The drawing robot of this task can only execute very simple programs. The programming language that the robot understands only knows three numbers as commands. Every program must consist of exactly such three numbers. It is also fixed that the robot repeats the commands infinitely whether this is desired or not.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Most robots and computers understand much more complex (programming) languages. Most of these languages have the same basic properties:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf A program may consist of an arbitrary number of commands that are repeated after another in a sequence .&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Repetitions of different types, so called loops , may be but don\\u2019t have to be used.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Also there are conditional statements that based on the state of the program allow for different codes.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;If a programming language contains loops and conditional statements by using them it can compute everything that is computable. In computer science these programming languages are called universal \\u2013 or also Turing complete.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The robot of this task by the way is in a classic environment used for teaching how to program.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Instead of a robot, one can imagine a turtle that draws lines. Such turtle graphics may for instance be used with XlogoOnline or with TigerJython.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-SK-02-DrawingTriplets_TE', 102007, 34),
(52, '{\"caption\":\"\\u0924\\u093f\\u0915\\u094d\\u0915\\u0932 \\u0930\\u0947\\u0916\\u093e\\u091f\\u0923\\u0947\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u090f\\u0915 \\u092f\\u0902\\u0924\\u094d\\u0930\\u092e\\u093e\\u0928\\u0935 \\u090f\\u0915\\u093e \\u091a\\u094c\\u0915\\u094b\\u0928\\u0940 \\u091c\\u093e\\u0933\\u094d\\u092f\\u093e\\u0935\\u0930\\u0942\\u0928 \\u092a\\u094d\\u0930\\u0935\\u093e\\u0938 \\u0915\\u0930\\u0924\\u094b \\u0906\\u0939\\u0947. \\u092a\\u094d\\u0930\\u0935\\u093e\\u0938 \\u0915\\u0930\\u0924\\u093e\\u0928\\u093e \\u0924\\u094b \\u0924\\u094d\\u092f\\u093e \\u092e\\u093e\\u0930\\u094d\\u0917\\u093e\\u0935\\u0930 \\u090f\\u0915 \\u0930\\u0947\\u0937\\u093e\\u0939\\u0940 \\u0915\\u093e\\u0922\\u0924\\u094b \\u0906\\u0939\\u0947. \\u092f\\u0902\\u0924\\u094d\\u0930\\u092e\\u093e\\u0928\\u0935\\u093e\\u0932\\u093e \\u0906\\u0926\\u0947\\u0936 \\u090f\\u0915\\u093e \\u0924\\u0940\\u0928 \\u0906\\u0915\\u0921\\u094d\\u092f\\u093e\\u0902\\u091a\\u094d\\u092f\\u093e \\u0924\\u093f\\u0915\\u094d\\u0915\\u0932\\u0940\\u0924 \\u0926\\u093f\\u0932\\u093e \\u091c\\u093e\\u0924\\u094b. \\u092e\\u0917 \\u092f\\u0902\\u0924\\u094d\\u0930\\u092e\\u093e\\u0928\\u0935 \\u0916\\u093e\\u0932\\u0940\\u0932\\u092a\\u094d\\u0930\\u092e\\u093e\\u0923\\u0947 \\u0924\\u094b \\u0906\\u0926\\u0947\\u0936 \\u092a\\u093e\\u0933\\u0924\\u094b. \\u0905\\u0938\\u0947 \\u0905\\u0928\\u0947\\u0915 \\u0906\\u0926\\u0947\\u0936 \\u0924\\u094b \\u090f\\u0915\\u093e\\u092e\\u093e\\u0917\\u094b\\u092e\\u093e\\u0917 \\u090f\\u0915 \\u092a\\u093e\\u0933\\u0924\\u094b:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u092a\\u0939\\u093f\\u0932\\u094d\\u092f\\u093e \\u0906\\u0915\\u0921\\u094d\\u092f\\u093e\\u0907\\u0924\\u0915\\u0940 \\u0938\\u0930\\u0933 \\u092a\\u093e\\u0935\\u0932\\u0947 \\u091f\\u093e\\u0915\\u093e.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0915\\u093e\\u091f\\u0915\\u094b\\u0928\\u093e\\u0924\\u0942\\u0928 \\u0909\\u091c\\u0935\\u0940\\u0915\\u0921\\u0947 \\u0935\\u0933\\u093e.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0926\\u0941\\u0938\\u0931\\u094d\\u092f\\u093e \\u0906\\u0915\\u0921\\u094d\\u092f\\u093e\\u0907\\u0924\\u0915\\u0940 \\u0938\\u0930\\u0933 \\u092a\\u093e\\u0935\\u0932\\u0947 \\u091f\\u093e\\u0915\\u093e.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0915\\u093e\\u091f\\u0915\\u094b\\u0928\\u093e\\u0924\\u0942\\u0928 \\u0909\\u091c\\u0935\\u0940\\u0915\\u0921\\u0947 \\u0935\\u0933\\u093e.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0924\\u093f\\u0938\\u0931\\u094d\\u092f\\u093e \\u0906\\u0915\\u0921\\u094d\\u092f\\u093e\\u0907\\u0924\\u0915\\u0940 \\u0938\\u0930\\u0933 \\u092a\\u093e\\u0935\\u0932\\u0947 \\u091f\\u093e\\u0915\\u093e.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0915\\u093e\\u091f\\u0915\\u094b\\u0928\\u093e\\u0924\\u0942\\u0928 \\u0909\\u091c\\u0935\\u0940\\u0915\\u0921\\u0947 \\u0935\\u0933\\u093e.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u091c\\u0930 \\u092f\\u0902\\u0924\\u094d\\u0930\\u092e\\u093e\\u0928\\u0935\\u093e\\u0932\\u093e \\u0969, \\u0967 \\u0906\\u0923\\u093f \\u096b \\u0905\\u0938\\u093e \\u0906\\u0926\\u0947\\u0936 \\u092e\\u093f\\u0933\\u093e\\u0932\\u093e \\u0924\\u0930 \\u0924\\u094b \\u0916\\u093e\\u0932\\u0940\\u0932\\u092a\\u094d\\u0930\\u092e\\u093e\\u0923\\u0947 \\u092a\\u094d\\u0930\\u0935\\u093e\\u0938 \\u0915\\u0930\\u0924\\u094b \\u0935 \\u0930\\u0947\\u0937\\u093e \\u0915\\u093e\\u0922\\u0924\\u094b:</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/triplets_2020-5-7_11-23-2.JPG\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u091c\\u0930 \\u0924\\u094d\\u092f\\u093e \\u092f\\u0902\\u0924\\u094d\\u0930\\u092e\\u093e\\u0928\\u0935\\u093e\\u0932\\u093e \\\"\\u0968, \\u0968, \\u0906\\u0923\\u093f \\u0969\\\" \\u0905\\u0938\\u093e \\u0906\\u0926\\u0947\\u0936 \\u092e\\u093f\\u0933\\u093e\\u0932\\u093e \\u0924\\u0930 \\u0924\\u094b \\u0906\\u0926\\u0947\\u0936 \\u0905\\u0928\\u0947\\u0915\\u0935\\u093e\\u0930 \\u092a\\u093e\\u0933\\u0932\\u094d\\u092f\\u093e\\u0935\\u0930 \\u0924\\u094d\\u092f\\u093e\\u0928\\u0947 \\u0915\\u093e\\u0922\\u0932\\u0947\\u0932\\u094d\\u092f\\u093e \\u0930\\u0947\\u0937\\u093e \\u0915\\u0936\\u093e \\u0926\\u093f\\u0938\\u0924\\u0940\\u0932?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The numbers 2, 2, and 3 tell the robot to advance 2 steps at the beginning, turn right a quarter turn, advance 2 steps again, turn right a quarter turn, then advance 3 steps and finally turn right a quarter turn. After that he\\u2019s drawn the following lines shown below in figures at ht end:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">If he repeats this he has drawn these lines:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">After two more repetitions the picture looks like this:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Since he\\u2019s in the same position and has the same direction as in the very beginning all further repetitions will just have him draw the same lines again and again. Therefore answer A) is correct.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The three other lines can also be drawn by the robot, they need different numbers, however:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s </span></span><strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Computational Thinking</span></span></strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CT Skills -</span></span>&nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CS Domain -</span></span>&nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The drawing robot of this task can only execute very simple programs. The programming language that the robot understands only knows three numbers as commands. Every program must consist of exactly such three numbers. It is also fixed that the robot repeats the commands infinitely whether this is desired or not.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Most robots and computers understand much more complex (programming) languages. Most of these languages have the same basic properties:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf A program may consist of an arbitrary number of commands that are repeated after another in a sequence .&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Repetitions of different types, so called loops , may be but don\\u2019t have to be used.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Also there are conditional statements that based on the state of the program allow for different codes.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;If a programming language contains loops and conditional statements by using them it can compute everything that is computable. In computer science these programming languages are called universal \\u2013 or also Turing complete.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The robot of this task by the way is in a classic environment used for teaching how to program.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Instead of a robot, one can imagine a turtle that draws lines. Such turtle graphics may for instance be used with XlogoOnline or with TigerJython.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-SK-02-DrawingTriplets_MR', 102005, 34),
(53, '{\"caption\":\"Wood Allergies\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Some beavers are allergic to some types of wood and get really sick if they eat them. Anita is making wood snacks for a party and wants to make sure that everyone will have something to eat without gettng sick. Each snack is made from one type of wood. The beavers are happy to share snacks.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Wood_2020-5-7_16-38-18.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Anita has a list of the beavers attending the party and the types of wood that they can eat without getting sick:&nbsp;</span></span></p><p><font face=\\\"Roboto, Segoe UI, GeezaPro, DejaVu Serif, sans-serif, -apple-system, BlinkMacSystemFont\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></font><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/Wood1_2020-5-7_16-38-18.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">To save time, Anita does not want to have to make snacks out of all six different types of wood, if possible.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What is the minimum number of dishes Anita can bring to the party so everyone can eat without getting sick?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_2rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_2_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Anita will obviously have to make a dish from oak for Chaitanya. This will also make Anita, Beena and Firoz happy. There is no common dish for the remaining three beavers, so Anita will have to prepare at least two more. This will fortunately suffice: Anita can make ash and maple, poplar and birch, or maple and birch.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s <strong>Computational Thinking</strong>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This task is a classic example of a bipartite graph.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;(https://en.wikipedia.org/wiki/Bipartite_graph)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Here, the first partition is the set of beavers, and the second partition is types of wood.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This task is known in algorithm theory as the railway optimization problem, in which the input is a schedule of trains and their stops, and the goal is to find a set of train stations as small as possible such that every train visits at least one of the chosen stations.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The problem is also known as a Dominating Set cover problem. Imagine six sets, each representing a different dish. Every set contains the beavers who like that dish. The task is to select the smallest number of sets (dishes) such that the union of these sets (all beavers who like and of the dishes represented by the chosen sets) contains all elements (beavers). In other words, the task is to cover all elements with the smallest number of sets.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Just like we expressed our task about beavers and dishes in terms of sets, many other, completely unrelated tasks could be translated to the same (or very similar) abstract task about sets. The set cover problem is known as one of the hardest problems in computer science, the so-called NP-complete tasks. For those, we do not know of any efficient algorithms that could be used for solving them. The only general solution is to try all different possibilities -- and even with a rather small number of sets the number of all possible combinations can be extremely large, while with 240 dishes the number of different combination is already about the same as the number of atoms in the entire universe.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Why have we been able to solve this task then? First, it was rather small. Second, it was made easier because Cecil had limited options. Finally, we used some simple logic that worked for this particular data, but wouldn\'t necessarily help us in general.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">https://en.wikipedia.org/wiki/Set_cover_problem</span></span><a classname=\\\"e-rte-anchor\\\" href=\\\"https://en.wikipedia.org/wiki/Set_cover_problem\\\" title=\\\"https://en.wikipedia.org/wiki/Set_cover_problem\\\"> </a></p></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-SK-03-WoodAllergies_EN', 102001, 39);
INSERT INTO `ques_questiontranslation` (`questionTranslationID`, `translation`, `modified_on`, `modified_by`, `Identifier`, `languageCodeID`, `questionID`) VALUES
(54, '{\"caption\":\" \\u0c09\\u0c21\\u0c41\\u0c24\\u0c32 \\u0c30\\u0c39\\u0c38\\u0c4d\\u0c2f\\u0c2d\\u0c3e\\u0c37\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" contenteditable=\\\"false\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" contenteditable=\\\"false\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c26\\u0c40\\u0c2a \\u0c13 \\u0c06\\u0c28\\u0c15\\u0c1f\\u0c4d\\u0c1f \\u0c15\\u0c4d\\u0c30\\u0c3f\\u0c02\\u0c26 \\u0c08 \\u0c15\\u0c4d\\u0c30\\u0c3f\\u0c02\\u0c26 \\u0c1a\\u0c42\\u0c2a\\u0c3f\\u0c28 \\u0c2c\\u0c4a\\u0c2e\\u0c4d\\u0c2e\\u0c3e\\u0c32\\u0c4a\\u0c32\\u0c3e\\u0c17\\u0c3e \\u0c05\\u0c30\\u0c4d\\u0c27\\u0c2e\\u0c41 \\u0c15\\u0c3e\\u0c28\\u0c3f \\u0c35\\u0c3f\\u0c27\\u0c02\\u0c17\\u0c3e \\u0c05\\u0c15\\u0c4d\\u0c37\\u0c30\\u0c3e\\u0c32\\u0c41 \\u0c35\\u0c41\\u0c28\\u0c4d\\u0c28 \\u0c13 \\u0c2a\\u0c41\\u0c30\\u0c3e\\u0c24\\u0c28\\u0c2e\\u0c2f\\u0c3f\\u0c28 \\u0c1a\\u0c46\\u0c15\\u0c4d\\u0c15\\u0c28\\u0c41 \\u0c15\\u0c28\\u0c41\\u0c17\\u0c4a\\u0c02\\u0c26\\u0c3f. \\u0c07\\u0c26\\u0c3f \\u0c06\\u0c28\\u0c15\\u0c1f\\u0c4d\\u0c1f \\u0c26\\u0c17\\u0c4d\\u0c17\\u0c30 \\u0c28\\u0c3f\\u0c35\\u0c38\\u0c3f\\u0c02\\u0c1a\\u0c3f\\u0c28 \\u0c24\\u0c2e \\u0c2a\\u0c42\\u0c30\\u0c4d\\u0c35\\u0c40\\u0c15\\u0c41\\u0c32\\u0c41 \\u0c30\\u0c39\\u0c38\\u0c4d\\u0c2f \\u0c38\\u0c02\\u0c26\\u0c47\\u0c36\\u0c3e\\u0c32\\u0c41 \\u0c2a\\u0c02\\u0c2a\\u0c47\\u0c02\\u0c26\\u0c41\\u0c15\\u0c41 \\u0c35\\u0c3e\\u0c21\\u0c3f \\u0c09\\u0c02\\u0c21\\u0c3f \\u0c09\\u0c02\\u0c1f\\u0c3e\\u0c30\\u0c41 \\u0c05\\u0c28\\u0c3f \\u0c05\\u0c28\\u0c41\\u0c15\\u0c4a\\u0c02\\u0c26\\u0c3f. \\u0c2a\\u0c48\\u0c28 \\u0c26\\u0c4a\\u0c30\\u0c3f\\u0c15\\u0c3f\\u0c28 \\u0c1a\\u0c46\\u0c15\\u0c4d\\u0c15\\u0c28\\u0c41 \\u0c1a\\u0c3e\\u0c32\\u0c3e \\u0c38\\u0c47\\u0c2a\\u0c41 \\u0c26\\u0c40\\u0c2a \\u0c2a\\u0c30\\u0c3f\\u0c36\\u0c40\\u0c32\\u0c3f\\u0c02\\u0c1a\\u0c3f\\u0c02\\u0c26\\u0c3f.&nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><pre style=\\\"color: rgb(74, 74, 74); font-size: 16px; letter-spacing: 0.15008px; background-color: rgb(255, 255, 255); font-family: Arial;\\\"><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span><img id=\\\"2\\\" style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/elder_2020-5-7_1-10-47.png\\\" width=\\\"403\\\" height=\\\"227\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\" style=\\\"box-sizing: inherit;\\\"></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">\\u0c05\\u0c26\\u0c3f \\u0c0e\\u0c32\\u0c3e \\u0c21\\u0c40\\u0c15\\u0c4b\\u0c21\\u0c4d \\u0c1a\\u0c46\\u0c2f\\u0c4d\\u0c2f\\u0c3e\\u0c32\\u0c4b \\u0c24\\u0c28\\u0c15\\u0c41 \\u0c05\\u0c30\\u0c4d\\u0c27\\u0c2e\\u0c41 \\u0c05\\u0c2f\\u0c3f\\u0c02\\u0c26\\u0c3f. \\u0c06 \\u0c2a\\u0c1f\\u0c4d\\u0c1f\\u0c3f\\u0c15\\u0c32\\u0c4b \\u0c35\\u0c41\\u0c28\\u0c4d\\u0c28 \\u0c05\\u0c30\\u0c4d\\u0c27\\u0c2e\\u0c41 \\u0c15\\u0c3e\\u0c28\\u0c3f \\u0c05\\u0c15\\u0c4d\\u0c37\\u0c30\\u0c3e\\u0c32\\u0c41 \\u0c05\\u0c21\\u0c4d\\u0c21, \\u0c28\\u0c3f\\u0c32\\u0c41\\u0c35\\u0c41 \\u0c35\\u0c30\\u0c41\\u0c38\\u0c32\\u0c4d\\u0c32\\u0c4b \\u0c35\\u0c41\\u0c28\\u0c4d\\u0c28 \\u0c05\\u0c15\\u0c4d\\u0c37\\u0c30\\u0c3e\\u0c32\\u0c28\\u0c41 \\u0c15\\u0c32\\u0c3f\\u0c2a\\u0c3f\\u0c24\\u0c47 \\u0c35\\u0c38\\u0c4d\\u0c24\\u0c41\\u0c28\\u0c4d\\u0c28\\u0c3e\\u0c2f\\u0c3f \\u0c05\\u0c28\\u0c3f. \\u0c09\\u0c26\\u0c3e\\u0c39\\u0c30\\u0c23\\u0c15\\u0c41, \\u201cH\\u201d \\u0c28\\u0c41 \\u0c30\\u0c39\\u0c38\\u0c4d\\u0c2f\\u0c2e\\u0c41\\u0c17\\u0c3e \\u0c1a\\u0c42\\u0c2a\\u0c21\\u0c3e\\u0c28\\u0c3f\\u0c15\\u0c3f \\u0c08 \\u0c15\\u0c4d\\u0c30\\u0c3f\\u0c02\\u0c26 \\u0c2c\\u0c4a\\u0c2e\\u0c4d\\u0c2e\\u0c32\\u0c4b \\u0c1a\\u0c42\\u0c2a\\u0c3f\\u0c28 \\u0c35\\u0c3f\\u0c27\\u0c3e\\u0c28\\u0c2e\\u0c41 \\u0c35\\u0c3e\\u0c21\\u0c41\\u0c24\\u0c3e\\u0c30\\u0c41:&nbsp;</span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"color: rgb(51, 51, 51); font-size: 14px; letter-spacing: 0.14994px;\\\">\\u200b</span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><img id=\\\"3\\\" style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/elder1_2020-5-7_1-10-47.png\\\" width=\\\"404\\\" height=\\\"131\\\" class=\\\"e-rte-image e-imgcenter e-resize e-imginline\\\" style=\\\"box-sizing: inherit;\\\"></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">\\u0c26\\u0c40\\u0c2a \\u0c06 \\u0c30\\u0c39\\u0c38\\u0c4d\\u0c2f \\u0c05\\u0c15\\u0c4d\\u0c37\\u0c30\\u0c3e\\u0c32\\u0c28\\u0c41 \\u0c06\\u0c28\\u0c15\\u0c1f\\u0c4d\\u0c1f \\u0c26\\u0c17\\u0c4d\\u0c17\\u0c30 \\u0c26\\u0c17\\u0c4d\\u0c17\\u0c30\\u0c47 \\u0c35\\u0c47\\u0c30\\u0c47 \\u0c1a\\u0c4b\\u0c1f \\u0c15\\u0c42\\u0c21\\u0c3e \\u0c1a\\u0c42\\u0c38\\u0c3f\\u0c02\\u0c26\\u0c3f. \\u0c05\\u0c15\\u0c4d\\u0c15\\u0c21 \\u0c08 \\u0c15\\u0c4d\\u0c30\\u0c3f\\u0c02\\u0c26 \\u0c07\\u0c1a\\u0c4d\\u0c1a\\u0c3f\\u0c28 \\u0c05\\u0c15\\u0c4d\\u0c37\\u0c30\\u0c3e\\u0c32\\u0c41 \\u0c35\\u0c41\\u0c28\\u0c4d\\u0c28\\u0c3e\\u0c2f\\u0c3f.</span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"color: rgb(51, 51, 51); font-size: 14px; letter-spacing: 0.14994px;\\\">\\u200b</span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><img id=\\\"4\\\" style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/elder2_2020-5-7_1-10-47.png\\\" width=\\\"352\\\" height=\\\"35\\\" class=\\\"e-rte-image e-imgcenter e-resize e-imginline\\\" style=\\\"box-sizing: inherit;\\\"></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></p><p style=\\\"letter-spacing: 0.14994px; white-space: normal; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; cursor: auto;\\\"><span style=\\\"letter-spacing: 0.14994px;\\\"><span style=\\\"font-weight: 700;\\\"><span style=\\\"font-size: 14pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">Question&nbsp;</span></span><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">&nbsp;:&nbsp;</span></span></span></span></p><p style=\\\"letter-spacing: 0.14994px; white-space: normal; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; cursor: auto;\\\"><span style=\\\"letter-spacing: 0.14994px;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></span></p><p style=\\\"margin-bottom: 10px; letter-spacing: 0.14994px; white-space: normal; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">\\u0c2a\\u0c48\\u0c28 \\u0c07\\u0c1a\\u0c4d\\u0c1a\\u0c3f\\u0c28 \\u0c05\\u0c15\\u0c4d\\u0c37\\u0c30\\u0c3e\\u0c32\\u0c41 \\u0c24\\u0c4b \\u0c35\\u0c3e\\u0c33\\u0c4d\\u0c33 \\u0c2a\\u0c42\\u0c30\\u0c4d\\u0c35\\u0c40\\u0c15\\u0c41\\u0c32\\u0c41 \\u0c0f\\u0c2e\\u0c3f \\u0c1a\\u0c46\\u0c2a\\u0c4d\\u0c2a\\u0c3e\\u0c32\\u0c28\\u0c41\\u0c15\\u0c4a\\u0c28\\u0c4d\\u0c28\\u0c3e\\u0c30\\u0c41?</span></span><br></p></pre></div></div></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_2rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_2_rte-edit-view\\\" contenteditable=\\\"false\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">First Character stands for the third row and the first column: there is the letter S. Because of this only the answers A) and C) can be correct anymore. The second, third and fourth letter of the answer A) and C) is the same. The characters correspond to the letters A, V and E. The fifth letter however differs between these two answers. Fifth stands for the letter W. Therefore the answer A) is correct. Also the last four characters correspond to the letters A, T, E and R.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s</span><span style=\\\"font-weight: 700;\\\">&nbsp;<span style=\\\"font-size: 12pt;\\\">Computational Thinking</span></span><span style=\\\"font-size: 12pt;\\\">:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CT Skills -&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CS Domain -&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Data security is an important task throughout the whole society nowadays. One of the methods to protect data from unauthorized access is to encrypt it. The science of encrypting information (called cryptography) is at least 3500 years old. In olden days kings would often send secret messages to neighbouring kings. These messages were encrypted to ensure that if they fell into enemy hands, they would not make any sense to the enemy. One of the oldest known methods of encryption is based on replacing letters with other letters or symbols. For encryption a plaintext is encrypted by using a key into a ciphertext. Reconstructing the plaintext from the ciphertext by using the key is called decrypting it. If one finds the plaintext of the ciphertext without knowing the key it\\u2019s called breaking.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The encryption algorithm (called cipher) of this task is a monoalphabetic cipher. For this algorithm for every letter a new symbol is chosen. Often systems are used that are easily remembered. The system used in this task is similar to the alphabet the Pigpen cipher. Cryptanalytics that break these texts would use special techniques like a frequency analysis or n-grams on the ciphertext to find the letters corresponding to the symbols. Edgar Allen Poe showed in 1843 that this is generally possible for monoalphabetic ciphers in his short story \\u201cThe Gold-Bug\\u201d.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What could Deepa have done if she did not have the table but if she had known the four possible meanings? She could have noticed that the fourth and eighth characters are the same. If she assumes a monoalphabetic cipher she would only have to find a text of which the fourth and eighth characters are the same, and that would have only been answer A).</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-CH-01-Beavers_TE', 102007, 29),
(55, '{\"caption\":\"\\u0935\\u0921\\u0940\\u0932 \\u092c\\u0940\\u0935\\u094d\\u0939\\u0930\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u092c\\u0940\\u0935\\u094d\\u0939\\u0930 \\u0927\\u0930\\u0923\\u093e\\u091a\\u094d\\u092f\\u093e \\u092a\\u093e\\u092f\\u0925\\u094d\\u092f\\u093e\\u0936\\u0940 \\u0926\\u0940\\u092a\\u093e\\u0932\\u093e \\u090f\\u0915 \\u0905\\u0924\\u094d\\u092f\\u0902\\u0924 \\u091c\\u0941\\u0928\\u093e \\u0932\\u093e\\u0915\\u0921\\u093e\\u091a\\u093e \\u0924\\u0941\\u0915\\u0921\\u093e \\u0938\\u093e\\u092a\\u0921\\u0932\\u093e. \\u0924\\u094d\\u092f\\u093e \\u0932\\u093e\\u0915\\u0921\\u093e\\u091a\\u094d\\u092f\\u093e \\u0924\\u0941\\u0915\\u0921\\u094d\\u092f\\u093e\\u0935\\u0930 \\u0905\\u091c\\u094d\\u091e\\u093e\\u0924 \\u0915\\u093f\\u0902\\u0935\\u093e \\u0938\\u093e\\u0902\\u0915\\u0947\\u0924\\u093f\\u0915 \\u092d\\u093e\\u0937\\u0947\\u0924\\u0940\\u0932 \\u091a\\u093f\\u0928\\u094d\\u0939\\u0947 \\u090f\\u0915\\u093e \\u0924\\u0915\\u094d\\u0924\\u094d\\u092f\\u093e\\u0924 \\u0915\\u094b\\u0930\\u0932\\u0947\\u0932\\u0940 \\u0939\\u094b\\u0924\\u0940. \\u091c\\u0947\\u0935\\u094d\\u0939\\u093e \\u092e\\u094b\\u0920\\u0947 \\u092c\\u0940\\u0935\\u094d\\u0939\\u0930 \\u0927\\u0930\\u0923\\u093e\\u091c\\u0935\\u0933 \\u0930\\u093e\\u0939\\u0924 \\u0939\\u094b\\u0924\\u0947 \\u0924\\u094d\\u092f\\u093e \\u0915\\u093e\\u0933\\u093e\\u0924\\u0940\\u0932 \\u0924\\u0940 \\u090f\\u0915 \\u0938\\u093e\\u0902\\u0915\\u0947\\u0924\\u093f\\u0915 \\u092d\\u093e\\u0937\\u093e \\u0905\\u0938\\u093e\\u0935\\u0940 \\u0905\\u0938\\u0947 \\u0926\\u0940\\u092a\\u093e\\u0932\\u093e \\u0935\\u093e\\u091f\\u0932\\u0947.&nbsp;</span></span></p><pre style=\\\"color: rgb(74, 74, 74); font-size: 16px; letter-spacing: 0.15008px; background-color: rgb(255, 255, 255); font-family: Arial;\\\"><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span><img id=\\\"2\\\" style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/elder_2020-5-7_1-10-47.png\\\" width=\\\"403\\\" height=\\\"227\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\" style=\\\"box-sizing: inherit;\\\"></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0926\\u0940</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u092a\\u093e\\u0928\\u0947 \\u092c\\u0930\\u093e\\u091a \\u0935\\u0947\\u0933 \\u0924\\u094d\\u092f\\u093e \\u0938\\u093e\\u0902\\u0915\\u0947\\u0924\\u093f\\u0915 \\u092d\\u093e\\u0937\\u0947\\u091a\\u094d\\u092f\\u093e \\u0924\\u0915\\u094d\\u0924\\u094d\\u092f\\u093e\\u091a\\u093e \\u0905\\u092d\\u094d\\u092f\\u093e\\u0938 \\u0915\\u0947\\u0932\\u093e \\u0906\\u0923\\u093f \\u0924\\u0940 \\u092d\\u093e\\u0937\\u093e \\u0915\\u0936\\u0940 \\u0915\\u093e\\u092e \\u0915\\u0930\\u0924\\u0947 \\u0939\\u0947 \\u0924\\u093f\\u0928\\u0947 \\u0936\\u094b\\u0927\\u0942\\u0928 \\u0915\\u093e\\u0922\\u0932\\u0947. \\u0924\\u0940 \\u0938\\u093e\\u0902\\u0915\\u0947\\u0924\\u093f\\u0915 \\u091a\\u093f\\u0928\\u094d\\u0939\\u0947 \\u0938\\u094d\\u0924\\u0902\\u092d (column) \\u0906\\u0923\\u093f \\u092a\\u0902\\u0915\\u094d\\u0924\\u0940\\u0902 (rows) \\u092e\\u0927\\u0940\\u0932 \\u091a\\u093f\\u0928\\u094d\\u0939\\u093e\\u0902\\u091a\\u094d\\u092f\\u093e \\u090f\\u0915\\u0924\\u094d\\u0930\\u0940\\u0915\\u0930\\u0923\\u093e\\u0928\\u0947 \\u0924\\u092f\\u093e\\u0930 \\u0915\\u0947\\u0932\\u0940 \\u0906\\u0939\\u0947\\u0924. \\u0909\\u0926\\u093e\\u0939\\u0930\\u0923\\u093e\\u0930\\u094d\\u0925 \\u0905\\u0915\\u094d\\u0937\\u0930 \\\"H\\\" \\u0939\\u0947 \\u0916\\u093e\\u0932\\u0940 \\u0926\\u093e\\u0916\\u0935\\u093f\\u0932\\u094d\\u092f\\u093e \\u092a\\u094d\\u0930\\u092e\\u093e\\u0923\\u0947 \\u0924\\u092f\\u093e\\u0930 (encrypt) \\u0915\\u0947\\u0932\\u0947 \\u0906\\u0939\\u0947.</span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><font face=\\\"Roboto, Segoe UI, GeezaPro, DejaVu Serif, sans-serif, -apple-system, BlinkMacSystemFont\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></font><img id=\\\"3\\\" style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/elder1_2020-5-7_1-10-47.png\\\" width=\\\"404\\\" height=\\\"131\\\" class=\\\"e-rte-image e-imgcenter e-resize e-imginline\\\" style=\\\"box-sizing: inherit;\\\"></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">\\u0926\\u0940\\u092a\\u093e\\u0932\\u093e \\u0906\\u0920\\u0935\\u0932\\u0947 \\u0915\\u0940 \\u0924\\u093f\\u0928\\u0947 \\u0905\\u0936\\u0940\\u091a \\u091a\\u093f\\u0928\\u094d\\u0939\\u0947 \\u0927\\u0930\\u0923\\u093e\\u091a\\u094d\\u092f\\u093e \\u0926\\u0941\\u0938\\u0931\\u094d\\u092f\\u093e \\u092c\\u093e\\u091c\\u0942\\u0932\\u093e \\u092a\\u0923 \\u092c\\u0918\\u093f\\u0924\\u0932\\u0940 \\u0939\\u094b\\u0924\\u0940 \\u0906\\u0923\\u093f \\u0916\\u0930\\u0947\\u091a \\u0924\\u093f\\u0932\\u093e \\u0916\\u093e\\u0932\\u0940\\u0932 \\u091a\\u093f\\u0928\\u094d\\u0939\\u0947 \\u0938\\u093e\\u092a\\u0921\\u0932\\u0940.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"letter-spacing: 0.14994px;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></span></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><img id=\\\"4\\\" style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/elder2_2020-5-7_1-10-47.png\\\" width=\\\"352\\\" height=\\\"35\\\" class=\\\"e-rte-image e-imgcenter e-resize e-imginline\\\" style=\\\"box-sizing: inherit;\\\"></p><p style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; white-space: normal; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></p><p style=\\\"letter-spacing: 0.14994px; white-space: normal; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; cursor: auto;\\\"><span style=\\\"letter-spacing: 0.14994px;\\\"><span style=\\\"font-weight: 700;\\\"><span style=\\\"font-size: 14pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">Question</span></span><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">&nbsp;</span></span><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">&nbsp;</span></span><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">:</span></span><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">&nbsp;</span></span></span></span></p><p style=\\\"letter-spacing: 0.14994px; white-space: normal; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; cursor: auto;\\\"><span style=\\\"letter-spacing: 0.14994px;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><br></span></span></span></p><p style=\\\"margin-bottom: 10px; letter-spacing: 0.14994px; white-space: normal; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; cursor: auto;\\\"><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">\\u0935\\u0921\\u0940\\u0932 \\u092c\\u0940\\u0935\\u094d\\u0939\\u0930\\u0928\\u0947 \\u0938\\u093e\\u0902\\u0915\\u0947\\u0924\\u093f\\u0915 \\u092d\\u093e\\u0937\\u0947\\u0924 \\u0932\\u093f\\u0939\\u093f\\u0932\\u0947\\u0932\\u094d\\u092f\\u093e \\u092f\\u093e \\u0938\\u0902\\u0926\\u0947\\u0936\\u093e\\u091a\\u093e \\u0905\\u0930\\u094d\\u0925 \\u0915\\u093e\\u092f \\u0906\\u0939\\u0947?</span></span><br></p></pre></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">First Character stands for the third row and the first column: there is the letter S. Because of this only the answers A) and C) can be correct anymore. The second, third and fourth letter of the answer A) and C) is the same. The characters correspond to the letters A, V and E. The fifth letter however differs between these two answers. Fifth stands for the letter W. Therefore the answer A) is correct. Also the last four characters correspond to the letters A, T, E and R.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s</span><span style=\\\"font-weight: 700;\\\">&nbsp;<span style=\\\"font-size: 12pt;\\\">Computational Thinking</span></span><span style=\\\"font-size: 12pt;\\\">:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CT Skills -&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CS Domain -&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Data security is an important task throughout the whole society nowadays. One of the methods to protect data from unauthorized access is to encrypt it. The science of encrypting information (called cryptography) is at least 3500 years old. In olden days kings would often send secret messages to neighbouring kings. These messages were encrypted to ensure that if they fell into enemy hands, they would not make any sense to the enemy. One of the oldest known methods of encryption is based on replacing letters with other letters or symbols. For encryption a plaintext is encrypted by using a key into a ciphertext. Reconstructing the plaintext from the ciphertext by using the key is called decrypting it. If one finds the plaintext of the ciphertext without knowing the key it\\u2019s called breaking.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The encryption algorithm (called cipher) of this task is a monoalphabetic cipher. For this algorithm for every letter a new symbol is chosen. Often systems are used that are easily remembered. The system used in this task is similar to the alphabet the Pigpen cipher. Cryptanalytics that break these texts would use special techniques like a frequency analysis or n-grams on the ciphertext to find the letters corresponding to the symbols. Edgar Allen Poe showed in 1843 that this is generally possible for monoalphabetic ciphers in his short story \\u201cThe Gold-Bug\\u201d.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What could Deepa have done if she did not have the table but if she had known the four possible meanings? She could have noticed that the fourth and eighth characters are the same. If she assumes a monoalphabetic cipher she would only have to find a text of which the fourth and eighth characters are the same, and that would have only been answer A).</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-CH-01-Beavers_MR', 102005, 29),
(56, '{\"caption\":\"Railroad\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">8 trains (named a through h) enter the switch X1 from the left on the figure below.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Train a needs to go to station A, train b to station B, train c to station C, etc.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Each of the switches X1 to X7 are initially set to direct trains to the left.&nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">After a train has passed a switch, the switch changes&nbsp;to the other direction.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The Railroad Director wants&nbsp;to ensure that all the trains end&nbsp;up at the correct stations.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/7)Railroad_1_2020-5-7_22-54-56.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question&nbsp;</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What is the correct order for the trains to pass through switch X1?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/7)Railroad_Exp_2020-5-7_22-54-56.png\\\" class=\\\"e-rte-image e-imginline e-resize e-rte-drag-image\\\" style=\\\"\\\"></div><div id=\\\"answerContent\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Let for each switch the status 0 mean a turn to the left, and status 1 mean turn to the right.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The switch&nbsp;X1&nbsp;changes its status after each train passing by \\u2013 as is shown in the second column in the table below.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Based on status of&nbsp;X1, exactly one of the switches&nbsp;X2&nbsp;and&nbsp;X3&nbsp;changes its status, as shown in the third column (X2&nbsp;for odd-numbered and&nbsp;X3&nbsp;for even-numbered trains). And finally exactly one of switches&nbsp;X4,&nbsp;X5,&nbsp;X6, and&nbsp;X7&nbsp;changes.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In each row of the table we get a three-digit binary number. The numbers correspond to the destinations of the trains (last column of the table).</span></span></p></div></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-CA-03-RailRoad_EN', 102001, 40),
(57, '{\"caption\":\"Icon image compression\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Look at the following 4x4 black and white pixel images.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This could be stored using binary digits: \\u201c1\\u201d for white pixels and \\u201c0\\u201d for black pixels.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">For a 4x4 image we would have to store 16 digits. The following image compression method allows us to store images using less space, especially for simple patterns:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/9)IconC_1_2020-5-7_23-23-21.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The binary digits are arranged in a grid like the pixels in the images.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The compression method is applied to this grid as follows, producing a string of digits:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981\\tIf all the digits in the grid are 0, the result is \\u201d0\\u201d (see left image). If all the digits&nbsp;in the grid are 1, the result is \\u201d1\\u201d.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981\\tOtherwise, the grid is divided into quarters. The compression method is applied to each quarter sub-grid from the top left in clockwise order. The results are combined and surrounded by round brackets. Two different examples can be seen in the center and on the right above.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Note that a sub-grid may consist of one digit only; see the right image, bottom right corner. In this case, the method will use&nbsp;step 1 only.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Below&nbsp;is the binary digit grid for an 8\\u00d78 image. The above compression method is applied to this grid. Which string of digits represents this image?</span></span></p><p><font face=\\\"Roboto, Segoe UI, GeezaPro, DejaVu Serif, sans-serif, -apple-system, BlinkMacSystemFont\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></font><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/9)IconC_2_2020-5-7_23-23-21.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The correct answer is:</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/9)IconC_Exp_2020-5-7_23-23-21.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"\\\"></p></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-JP-02-IconImage_EN', 102001, 41),
(58, '{\"caption\":\"Book Sharing Club\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This diagram shows the relationship between 7 students in a book-sharing club. Their names and ages are also shown.&nbsp;</span></span></p><p>&nbsp;&nbsp;<img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/10)Book Sharing_1_2020-5-8_13-21-35.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The club has some regulations for members:&nbsp;&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">When you receive a book you read it (if you haven\'t already done so), then pass it to the youngest friend who has not yet read it. If, however, all your friends have read the book then you should give it back&nbsp;it to the friend who first gave it to you.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Now Ben has read a new book and wants to share it with his friends.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Who will read the book last?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The correct answer is: Kim&nbsp;</span></span></p><p><span style=\\\"letter-spacing: 0.15008px; background-color: unset; text-align: inherit;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt; background-color: unset;\\\">Ben gives to Ted. Ted gives to Anna. Anna gives to Bill. Bill gives to Tom. Tom gives back to Bill. Bill gives back to Anna. Anna gives to Sara. Sara gives back to Anna. Anna gives back to Ted. Ted gives the book to Kim!</span></span></span><br></p></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-HU-02-BookClub_EN', 102001, 42),
(59, '{\"caption\":\"FIFO Socks\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Anil likes to wear different colour socks everyday he goes out. Anil follows the rules given below:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Socks are washed daily, and as soon as they are washed they are added to the left of         the pile of socks.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Socks to be worn are always taken from the right of the pile.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;On Wednesday this week, the pile of socks looks like this&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Socks_2020-5-8_13-41-39.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"643.6759776536313\\\" height=\\\"173\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Anil will not be able to go out on Sunday this week, and Tuesday and Thursday next week.</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What colour socks will Anil wear Saturday of next week?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\" style=\\\"cursor: auto;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Since Anil wears socks taken from the right of the pile and he starts with Red socks on Wednesday, the socks he would wear of the rest of the week as well as next week are shown below (the number in brackets denotes the position as in the picture below):</span></span></p></div><div id=\\\"answerContent\\\" style=\\\"cursor: auto;\\\"><br></div><div id=\\\"answerContent\\\" style=\\\"cursor: auto;\\\"><br></div><div id=\\\"answerContent\\\" style=\\\"cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/Socks5_2020-5-8_13-41-39.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"\\\" width=\\\"642\\\" height=\\\"496\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-IN-02-FifoSocks_EN', 102001, 43);
INSERT INTO `ques_questiontranslation` (`questionTranslationID`, `translation`, `modified_on`, `modified_by`, `Identifier`, `languageCodeID`, `questionID`) VALUES
(60, '{\"caption\":\"Aircraft  Scheduling\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><br><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Aircraft_2020-5-8_14-6-15.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" width=\\\"464.55727554179566\\\" height=\\\"322\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\"></p><p style=\\\"cursor: auto;\\\"><br></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">When an aircraft lands at an airport, it is assigned a corridor to avoid accidents. This is a designated airspace, which separates planes from each other.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">At the Bebrasland airport, two aircraft cannot have the same corridor if they are landing within 15 minutes of each other.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">For example, if we have Flight #1 landing at 6:10 AM, Flight #2 landing at 6:25 AM and Flight #3 landing at 6:26 AM, then Flight #1 and Flight #2 cannot be assigned the same corridor whereas Flight #3 can be assigned the same corridor as Flight #1, but not the same corridor as Flight #2.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">You are the Air Traffic Controller at the airport today and your job is to assign corridors for the scheduled flights shown in the table below.</span></span></p><p style=\\\"cursor: auto;\\\"><font face=\\\"Roboto, Segoe UI, GeezaPro, DejaVu Serif, sans-serif, -apple-system, BlinkMacSystemFont\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></font><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/Aircraft1_2020-5-8_14-6-15.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"525\\\" height=\\\"199\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question&nbsp;</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What is the minimum number of corridors needed to ensure that all the above flights land according to the rules?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Let us list flights and flight times in ascending order of landing time.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1. 9W2400 7:00&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">2. EK427 7:03&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">3. SG147 7:12&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">4. AI620 7:18&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">5. AI561 7:20&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">6. 9W1321 7:21&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The first flight 9W2400 is at 7:00 so we assign it to corridor 1. The next two flights EK427 and SG147 are within 15 minutes of the first flight and the 3rd flight is within 15 minutes of 2nd flight as well, so clearly, all three need to be assigned separate corridors. So we need 3 corridors so far.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">For each of the following flights, we try to assign it to already used corridors if possible. The 4th flight AI620 at 7:18 is more than 15 minutes away from the first flight 9W2400 and can be assigned the same corridor as flight 9W2400. Similarly, the 5th flight AI561 cannot be assigned corridor 1 as it is within 15 minutes of AI620 but can be assigned corridor 2 as it is more than 15 minutes away from EK427.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The 6th flight 9W1321 at 7:21 is less than 15 minutes from flights SG147 (7:12), AI620 (7:18), and AI561 (7:20) that are assigned to the 3 corridors so far. So we must assign another corridor for this flight.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Thus giving us the following flight assignments to corridors: Corridor&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1: 9W2400 (7:00), AI620 (7:18) Corridor&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">2: EK427 (7:03), AI561 (7:20) Corridor&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">3: SG147 (7:12) Corridor&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">4: 9W1321 (7:21)&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">While we can assign more than 4 corridors, it is clear that less than 4 may result in accidents.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-IN-03-Aircraft_EN', 102001, 44),
(61, '{\"caption\":\"Magical Bracelet\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A princess has a magical bracelet that looks like this:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/14)Magical Bracelet_1_2020-5-8_15-30-51.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">When she stores her bracelets in her drawer she first opens them.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question&nbsp;</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Which of the four bracelets in her drawer is the magical one ?</span></span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/14)Magical Bracelet_Exp_2020-5-8_15-30-51.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"\\\"></div><div id=\\\"answerContent\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s Computational Thinking:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Concepts - Decomposition (DE), Generalisation (GE) The bracelet is an example of a sequence of objects. The pearls are arranged in a certain pattern. When identifying the correct bracelet you have to look for properties of this pattern. In Computational Thinking, pattern matching means finding similar objects in different sources. In image processing, the pattern matching is used for locating a small image in a bigger one. Another example is searching for a word in text using a text processor.</span></span></p></div></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-BE-03-Bracelet_EN', 102001, 45),
(62, '{\"caption\":\"Village Network\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A village is receiving a new wireless network consisting of several network towers. The network will offer WiFi to all the villagers. Every network tower has the coverage area shown below. The red star represents the network tower. Only in the twelve shaded squares surrounding the tower will a house get a WiFi signal. The picture below shows a map of the village divided into squares. Every triangle \\u25b2 represents a house. A network tower cannot be built inside a square, only on the cross point of the village squares. The coverage areas may overlap.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/17)Village_1_2020-5-8_15-43-55.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What is the minimum number of network towers required to provide coverage to every house?</span></span></p><p><font face=\\\"Roboto, Segoe UI, GeezaPro, DejaVu Serif, sans-serif, -apple-system, BlinkMacSystemFont\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></font><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/17)Village_2_2020-5-8_15-43-55.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">You can not cover all of houses with two speakers. Either of the following two arrangements of three speakers covers all of houses.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/17)Village_Exp_2020-5-8_15-43-55.png\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s <strong>Computational Thinking</strong>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Concepts - Abstraction (AB), Algorithmic Thinking (AL), Decomposition (DE) Similar to dividing space into a number of regions, covering space with figures is applied to various uses in Computer Science. For example, enabling mobile communication base stations to efficiently cover wide areas.</span></span></p></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-IN-04-Village_EN', 102001, 46),
(63, '{\"caption\":\"Mobile Phones\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The beaver family have three mobile phones but none of the batteries have any charge. It takes 1 hour to fully charge a mobile phone but this does not need to be done all in one go. The beaver family only have two mobile phone chargers in the house.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What is the shortest time they need to fully recharge the three phones?</span></span> </p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The charging can be achieved in the following way: 1. charge mobile 1 + 2 for half an hour. 2. charge mobile 1 + 3 for half an hour. 3. charge mobile 2 + 3 for half an hour. Also, we cannot charge the phones in less than 1 hour and a half. Indeed, we need to cumulatively charge for three hours. We have two chargers, therefore we can only do it twice as fast at most, that is in 1 hour and a half.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s </span></span><strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Computational Thinking</span></span></strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Concepts - Abstraction (AB), Decomposition (DE), Evaluation (EV) This is a scheduling problem. Scheduling is used in computer science when tasks may be performed faster by dividing them among many CPUs: we choose which CPU will work on which task, when, and for how long. There are many different algorithms for scheduling. The most simple one is \\u201cfirst come, first served\\u201d: you perform the tasks in the order they arrive. Here it would be to fully charge mobiles 1 and 2, and then charge mobile 3. But in this case this is not optimal. When we need to divide tasks, it is important to choose carefully the way we assign them, so as to optimise one particular objective (time of end for instance). Scheduling is also used in disk drives (I/O scheduling), printers, net routers etc. Usually scheduling problems are very difficult problems. In many cases we do not know how to solve them efficiently or even if it is possible to solve them at all.</span></span></p></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-HU-03-Mobile_EN', 102001, 47),
(64, '{\"caption\":\"Flowers\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A flower shop sells the following types of flowers:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Flowers_2020-5-8_16-39-23.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">All the flowers are available in white, yellow and blue.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Chitra wants a bunch of six flowers. She tells the florist (flower seller):&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981 There must be two of each of the colours yellow, white and blue.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981 Flowers of the same type must not have the same colour,&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981 Every type of flower should only appear, at most, twice.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Which of the following bunches will Chitra be happy with?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option 4 is correct option.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-AU-01-Flowers_EN', 102001, 48),
(65, '{\"caption\":\"\\u0cb9\\u0cc2\\u0cb5\\u0cc1\\u0c97\\u0cb3\\u0cc1\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0cb9\\u0cc2\\u0cb5\\u0cbf\\u0ca8 \\u0c85\\u0c82\\u0c97\\u0ca1\\u0cbf\\u0caf\\u0cc1 \\u0c88 \\u0c95\\u0cc6\\u0cb3\\u0c97\\u0cbf\\u0ca8 \\u0cb0\\u0cc0\\u0ca4\\u0cbf\\u0caf \\u0cb9\\u0cc2\\u0cb5\\u0cc1\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cae\\u0cbe\\u0cb0\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0ca6\\u0cc6:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Flowers_2020-5-8_16-39-23.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c8e\\u0cb2\\u0ccd\\u0cb2\\u0cbe \\u0cb9\\u0cc2\\u0cb5\\u0cc1\\u0c97\\u0cb3\\u0cc1 \\u0cac\\u0cbf\\u0cb3\\u0cbf, \\u0cb9\\u0cb3\\u0ca6\\u0cbf \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 \\u0ca8\\u0cc0\\u0cb2\\u0cbf \\u0cac\\u0ca3\\u0ccd\\u0ca3\\u0c97\\u0cb3\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0cb2\\u0cad\\u0ccd\\u0caf\\u0cb5\\u0cbf\\u0ca6\\u0cc6.&nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">&nbsp;</span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c9a\\u0cbf\\u0ca4\\u0ccd\\u0cb0\\u0cbe \\u0c86\\u0cb0\\u0cc1 \\u0cb9\\u0cc2\\u0cb5\\u0cc1\\u0c97\\u0cb3 \\u0c97\\u0cc1\\u0c82\\u0caa\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cac\\u0caf\\u0cb8\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbe\\u0cb0\\u0cc6. \\u0c85\\u0cb5\\u0cb3\\u0cc1 \\u0cb9\\u0cc2\\u0c97\\u0cbe\\u0cb0\\u0ca8\\u0cbf\\u0c97\\u0cc6 (\\u0cb9\\u0cc2 \\u0cae\\u0cbe\\u0cb0\\u0cbe\\u0c9f\\u0c97\\u0cbe\\u0cb0) \\u0cb9\\u0cc7\\u0cb3\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbe\\u0cb3\\u0cc6:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981 \\u0cb9\\u0cb3\\u0ca6\\u0cbf, \\u0cac\\u0cbf\\u0cb3\\u0cbf \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 \\u0ca8\\u0cc0\\u0cb2\\u0cbf \\u0cac\\u0ca3\\u0ccd\\u0ca3\\u0c97\\u0cb3\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0c8e\\u0cb0\\u0ca1\\u0cc1 \\u0c87\\u0cb0\\u0cac\\u0cc7\\u0c95\\u0cc1.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px;\\\"></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981 \\u0c92\\u0c82\\u0ca6\\u0cc7 \\u0cb0\\u0cc0\\u0ca4\\u0cbf\\u0caf \\u0cb9\\u0cc2\\u0cb5\\u0cc1\\u0c97\\u0cb3\\u0cc1 \\u0c92\\u0c82\\u0ca6\\u0cc7 \\u0cac\\u0ca3\\u0ccd\\u0ca3\\u0cb5\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cb9\\u0cca\\u0c82\\u0ca6\\u0cbf\\u0cb0\\u0cac\\u0cbe\\u0cb0\\u0ca6\\u0cc1,</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px;\\\"></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u2981 \\u0caa\\u0ccd\\u0cb0\\u0ca4\\u0cbf\\u0caf\\u0cca\\u0c82\\u0ca6\\u0cc1 \\u0cb5\\u0cbf\\u0ca7\\u0ca6 \\u0cb9\\u0cc2\\u0cb5\\u0cc1 \\u0c95\\u0cc7\\u0cb5\\u0cb2 \\u0c8e\\u0cb0\\u0ca1\\u0cc1 \\u0cac\\u0cbe\\u0cb0\\u0cbf \\u0cae\\u0cbe\\u0ca4\\u0ccd\\u0cb0 \\u0c95\\u0cbe\\u0ca3\\u0cbf\\u0cb8\\u0cbf\\u0c95\\u0cca\\u0cb3\\u0ccd\\u0cb3\\u0cac\\u0cc7\\u0c95\\u0cc1.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c88 \\u0c95\\u0cc6\\u0cb3\\u0c97\\u0cbf\\u0ca8 \\u0caf\\u0cbe\\u0cb5 \\u0cac\\u0c82\\u0c9a\\u0ccd\\u200c\\u0c97\\u0cb3\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0c9a\\u0cbf\\u0ca4\\u0ccd\\u0cb0\\u0cbe \\u0cb8\\u0c82\\u0ca4\\u0ccb\\u0cb7\\u0cb5\\u0cbe\\u0c97\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbe\\u0cb0\\u0cc6?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"color: rgb(74, 74, 74); font-family: Arial, Helvetica, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\">Option 4 is correct option.</span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'shreya.bhat@cumminscollege.in', '2020-AU-01-Flowers_KA', 102004, 48),
(66, '{\"caption\":\"Ring Toss\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Sonia plays Ring Toss. She throws five rings around a pole:</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Ring_2020-5-8_17-11-37.svg\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" width=\\\"290.19847328244276\\\" height=\\\"132\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Every ring that successfully lands around the pole scores points. Any ring that misses the pole wins no point.</span></span></p><p style=\\\"cursor: auto;\\\"><font face=\\\"Roboto, Segoe UI, GeezaPro, DejaVu Serif, sans-serif, -apple-system, BlinkMacSystemFont\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></font><img id=\\\"4\\\" src=\\\"http://localhost:8000/media/images/Ring2_2020-5-8_17-11-37.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Sonia threw her five rings as shown below. How many points did she get?</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/Ring1_2020-5-8_17-11-37.svg\\\" class=\\\"e-rte-image e-imginline e-resize e-rte-drag-image\\\" width=\\\"292\\\" height=\\\"137\\\" style=\\\"display: block; max-width: 100%; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; max-height: 100%; outline: rgb(74, 144, 226) solid 2px;\\\"></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">According to the figure 6 is the correct answer</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-AU-02-RingToss_EN', 102001, 49),
(67, '{\"caption\":\"\\u0cb0\\u0cbf\\u0c82\\u0c97\\u0ccd \\u0c9f\\u0cbe\\u0cb8\\u0ccd\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0cb8\\u0ccb\\u0ca8\\u0cbf\\u0caf\\u0cbe \\u0cb0\\u0cbf\\u0c82\\u0c97\\u0ccd \\u0c9f\\u0cbe\\u0cb8\\u0ccd \\u0c86\\u0ca1\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbf\\u0ca6\\u0ccd\\u0ca6\\u0cbe\\u0cb0\\u0cc6.\\u0c85\\u0cb5\\u0cb3\\u0cc1 \\u0c95\\u0c82\\u0cac\\u0ca6 \\u0cb8\\u0cc1\\u0ca4\\u0ccd\\u0ca4 \\u0c90\\u0ca6\\u0cc1 \\u0cb0\\u0cbf\\u0c82\\u0c97\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0c8e\\u0cb8\\u0cc6\\u0caf\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbe\\u0cb3\\u0cc6\\u0ca7\\u0ccd\\u0cb0\\u0cc1\\u0cb5\\u0ca6&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Ring_2020-5-8_17-11-37.svg\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" width=\\\"280.1550387596899\\\" height=\\\"130\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0cb8\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cb2\\u0cc2 \\u0caf\\u0cb6\\u0cb8\\u0ccd\\u0cb5\\u0cbf\\u0caf\\u0cbe\\u0c97\\u0cbf \\u0c87\\u0cb3\\u0cbf\\u0caf\\u0cc1\\u0cb5 \\u0caa\\u0ccd\\u0cb0\\u0ca4\\u0cbf\\u0caf\\u0cca\\u0c82\\u0ca6\\u0cc1 \\u0cb0\\u0cbf\\u0c82\\u0c97\\u0cb5\\u0cc1 \\u0c85\\u0c82\\u0c95\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0ca8\\u0cc0\\u0ca1\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0ca6\\u0cc6. \\u0ca7\\u0ccd\\u0cb0\\u0cc1\\u0cb5\\u0cb5\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0ca4\\u0caa\\u0ccd\\u0caa\\u0cbf\\u0cb8\\u0cc1\\u0cb5 \\u0caf\\u0cbe\\u0cb5\\u0cc1\\u0ca6\\u0cc7 \\u0cb0\\u0cbf\\u0c82\\u0c97\\u0cb5\\u0cc1 \\u0caf\\u0cbe\\u0cb5\\u0cc1\\u0ca6\\u0cc7 \\u0c85\\u0cb0\\u0ccd\\u0ca5\\u0cb5\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0c97\\u0cc6\\u0cb2\\u0ccd\\u0cb2\\u0cc1\\u0cb5\\u0cc1\\u0ca6\\u0cbf\\u0cb2\\u0ccd\\u0cb2.</span></span></p><p style=\\\"cursor: auto;\\\"><font face=\\\"Roboto, Segoe UI, GeezaPro, DejaVu Serif, sans-serif, -apple-system, BlinkMacSystemFont\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></font><img id=\\\"4\\\" src=\\\"http://localhost:8000/media/images/Ring2_2020-5-8_17-11-37.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0ca4\\u0ccb\\u0cb0\\u0cbf\\u0cb8\\u0cbf\\u0cb0\\u0cc1\\u0cb5\\u0c82\\u0ca4\\u0cc6 \\u0cb8\\u0ccb\\u0ca8\\u0cbf\\u0caf\\u0cbe \\u0ca4\\u0ca8\\u0ccd\\u0ca8 \\u0c90\\u0ca6\\u0cc1 \\u0cb0\\u0cbf\\u0c82\\u0c97\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0c8e\\u0cb8\\u0cc6\\u0ca6\\u0cb3\\u0cc1\\u0c85\\u0cb5\\u0cb3\\u0cc1 \\u0c8e\\u0cb7\\u0ccd\\u0c9f\\u0cc1 \\u0c85\\u0c82\\u0c95\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0caa\\u0ca1\\u0cc6\\u0ca6\\u0cb3\\u0cc1?</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/Ring1_2020-5-8_17-11-37.svg\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"296\\\" height=\\\"136\\\" style=\\\"display: block; max-width: 100%; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; max-height: 100%; outline: rgb(74, 144, 226) solid 2px;\\\"></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.9375px;\\\"><pre style=\\\"font-family: Arial;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">According to the figure 6 is the correct answer</span></span></pre></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'shreya.bhat@cumminscollege.in', '2020-AU-02-RingToss_KA', 102004, 49),
(68, '{\"caption\":\"Robots\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Robots_2020-5-8_17-52-3.JPG\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" width=\\\"381.78403755868544\\\" height=\\\"214\\\" class=\\\"e-rte-image e-imgcenter e-imginline\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Here are five statements describing the three robots above:&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1. Teena and Meena are smiling.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">2. Teena, Meena and Leena each have two legs.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">3. Meena has a round head and Leena has two legs.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">4. All three robots have five fingers.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">5. Leena or Teena have their hands raised.</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Which of these five statements are true?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"color: rgb(74, 74, 74); font-family: Arial, Helvetica, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\">Option 3 is correct option</span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-AU-03-Robots_EN', 102001, 50),
(69, '{\"caption\":\"\\u0cb0\\u0ccb\\u0cac\\u0ccb\\u0c9f\\u0ccd\\u200c\\u0c97\\u0cb3\\u0cc1\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><br><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Robots_2020-5-8_17-52-3.JPG\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" width=\\\"350.7692307692308\\\" height=\\\"200\\\" class=\\\"e-rte-image e-imgcenter e-resize e-imginline\\\"></p><p style=\\\"cursor: auto;\\\"><br></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0cb0\\u0ccb\\u0cac\\u0ccb\\u0c9f\\u0ccd\\u0cb8\\u0ccd\\u0cae\\u0cc7\\u0cb2\\u0cbf\\u0ca8 \\u0cae\\u0cc2\\u0cb0\\u0cc1 \\u0cb0\\u0ccb\\u0cac\\u0ccb\\u0c9f\\u0ccd\\u200c\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cb5\\u0cbf\\u0cb5\\u0cb0\\u0cbf\\u0cb8\\u0cc1\\u0cb5 \\u0c90\\u0ca6\\u0cc1 \\u0cb9\\u0cc7\\u0cb3\\u0cbf\\u0c95\\u0cc6\\u0c97\\u0cb3\\u0cc1 \\u0c87\\u0cb2\\u0ccd\\u0cb2\\u0cbf\\u0cb5\\u0cc6:</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px;\\\"></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1. \\u0c9f\\u0cc0\\u0ca8\\u0cbe \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 \\u0cae\\u0cc0\\u0ca8\\u0cbe \\u0ca8\\u0c97\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbf\\u0ca6\\u0ccd\\u0ca6\\u0cbe\\u0cb0\\u0cc6.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px;\\\"></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">2. \\u0c9f\\u0cc0\\u0ca8\\u0cbe, \\u0cae\\u0cc0\\u0ca8\\u0cbe \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 \\u0cb2\\u0cc0\\u0ca8\\u0cbe \\u0ca4\\u0cb2\\u0cbe \\u0c8e\\u0cb0\\u0ca1\\u0cc1 \\u0c95\\u0cbe\\u0cb2\\u0cc1\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cb9\\u0cca\\u0c82\\u0ca6\\u0cbf\\u0ca6\\u0ccd\\u0ca6\\u0cbe\\u0cb0\\u0cc6.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px;\\\"></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">3. \\u0cae\\u0cc0\\u0ca8\\u0cbe \\u0c92\\u0c82\\u0ca6\\u0cc1 \\u0ca6\\u0cc1\\u0c82\\u0ca1\\u0c97\\u0cbf\\u0ca8 \\u0ca4\\u0cb2\\u0cc6 \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 \\u0cb2\\u0cc0\\u0ca8\\u0cbe\\u0c97\\u0cc6 \\u0c8e\\u0cb0\\u0ca1\\u0cc1 \\u0c95\\u0cbe\\u0cb2\\u0cc1\\u0c97\\u0cb3\\u0cbf\\u0cb5\\u0cc6.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px;\\\"></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">4. \\u0c8e\\u0cb2\\u0ccd\\u0cb2\\u0cbe \\u0cae\\u0cc2\\u0cb0\\u0cc1 \\u0cb0\\u0ccb\\u0cac\\u0ccb\\u0c9f\\u0ccd\\u200c\\u0c97\\u0cb3\\u0cc1 \\u0c90\\u0ca6\\u0cc1 \\u0cac\\u0cc6\\u0cb0\\u0cb3\\u0cc1\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cb9\\u0cca\\u0c82\\u0ca6\\u0cbf\\u0cb5\\u0cc6.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px;\\\"></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">5. \\u0cb2\\u0cc0\\u0ca8\\u0cbe \\u0c85\\u0ca5\\u0cb5\\u0cbe \\u0c9f\\u0cc0\\u0ca8\\u0cbe \\u0c95\\u0cc8 \\u0c8e\\u0ca4\\u0ccd\\u0ca4\\u0cbf\\u0ca6\\u0ccd\\u0ca6\\u0cbe\\u0cb0\\u0cc6.</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\">&nbsp;</span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px;\\\"></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px;\\\"></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c88 \\u0c90\\u0ca6\\u0cc1 \\u0cb9\\u0cc7\\u0cb3\\u0cbf\\u0c95\\u0cc6\\u0c97\\u0cb3\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0caf\\u0cbe\\u0cb5\\u0cc1\\u0ca6\\u0cc1 \\u0ca8\\u0cbf\\u0c9c?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option 3 is correct option</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'shreya.bhat@cumminscollege.in', '2020-AU-03-Robots_KA', 102004, 50);
INSERT INTO `ques_questiontranslation` (`questionTranslationID`, `translation`, `modified_on`, `modified_by`, `Identifier`, `languageCodeID`, `questionID`) VALUES
(70, '{\"caption\":\"Infinite Ice-cream\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Ice Cream Flavors&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Icecream_2020-5-9_1-23-34.JPG\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">An ice-cream seller uses the following instructions to make ice-cream:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">1. Start with an empty cone.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">2. Pick a flavour at random, and add two scoops of that flavour.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">3. Add one scoop of a different flavour.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">4. If the requested number of scoops is reached, stop, otherwise go to Step 2.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Which one is not made by the seller?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option 4 is correct option</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-AU-04-IceCream_EN', 102001, 51),
(71, '{\"caption\":\"\\u0c85\\u0ca8\\u0c82\\u0ca4 \\u0c90\\u0cb8\\u0ccd \\u0c95\\u0ccd\\u0cb0\\u0cbf\\u0cd5\\u0cae\\u0ccd\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c90\\u0cb8\\u0ccd \\u0c95\\u0ccd\\u0cb0\\u0cc0\\u0cae\\u0ccd \\u0cab\\u0ccd\\u0cb2\\u0cc7\\u0cb5\\u0cb0\\u0ccd\\u0cb8\\u0ccd</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Icecream_2020-5-9_1-23-34.JPG\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"display: block; max-width: 100%; font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; max-height: 100%; outline: rgb(74, 144, 226) solid 2px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c90\\u0cb8\\u0ccd \\u0c95\\u0ccd\\u0cb0\\u0cc0\\u0cae\\u0ccd \\u0cae\\u0cbe\\u0cb0\\u0cbe\\u0c9f\\u0c97\\u0cbe\\u0cb0\\u0ca8\\u0cc1 \\u0c90\\u0cb8\\u0ccd \\u0c95\\u0ccd\\u0cb0\\u0cc0\\u0cae\\u0ccd \\u0ca4\\u0caf\\u0cbe\\u0cb0\\u0cbf\\u0cb8\\u0cb2\\u0cc1 \\u0c88 \\u0c95\\u0cc6\\u0cb3\\u0c97\\u0cbf\\u0ca8 \\u0cb8\\u0cc2\\u0c9a\\u0ca8\\u0cc6\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cac\\u0cb3\\u0cb8\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbe\\u0ca8\\u0cc6:</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">    1. \\u0c96\\u0cbe\\u0cb2\\u0cbf \\u0c95\\u0ccb\\u0ca8\\u0ccd\\u200c\\u0ca8\\u0cbf\\u0c82\\u0ca6 \\u0caa\\u0ccd\\u0cb0\\u0cbe\\u0cb0\\u0c82\\u0cad\\u0cbf\\u0cb8\\u0cbf.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">    2. \\u0caf\\u0cbe\\u0ca6\\u0cc3\\u0c9a\\u0ccd\\u0c9b\\u0cbf\\u0c95\\u0cb5\\u0cbe\\u0c97\\u0cbf \\u0c92\\u0c82\\u0ca6\\u0cc1 \\u0caa\\u0cb0\\u0cbf\\u0cae\\u0cb3\\u0cb5\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0c86\\u0cb0\\u0cbf\\u0cb8\\u0cbf, \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 \\u0c86 \\u0caa\\u0cb0\\u0cbf\\u0cae\\u0cb3\\u0ca6 \\u0c8e\\u0cb0\\u0ca1\\u0cc1 \\u0c9a\\u0cae\\u0c9a\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cb8\\u0cc7\\u0cb0\\u0cbf\\u0cb8\\u0cbf.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">    3. \\u0cb5\\u0cbf\\u0cad\\u0cbf\\u0ca8\\u0ccd\\u0ca8 \\u0caa\\u0cb0\\u0cbf\\u0cae\\u0cb3\\u0ca6 \\u0c92\\u0c82\\u0ca6\\u0cc1 \\u0c9a\\u0cae\\u0c9a\\u0cb5\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cb8\\u0cc7\\u0cb0\\u0cbf\\u0cb8\\u0cbf.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">    4. \\u0cb5\\u0cbf\\u0ca8\\u0c82\\u0ca4\\u0cbf\\u0cb8\\u0cbf\\u0ca6 \\u0cb8\\u0ccd\\u0c95\\u0cc2\\u0caa\\u0ccd\\u200c\\u0c97\\u0cb3 \\u0cb8\\u0c82\\u0c96\\u0ccd\\u0caf\\u0cc6\\u0caf\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0ca4\\u0cb2\\u0cc1\\u0caa\\u0cbf\\u0ca6\\u0cb0\\u0cc6, \\u0ca8\\u0cbf\\u0cb2\\u0ccd\\u0cb2\\u0cbf\\u0cb8\\u0cbf, \\u0c87\\u0cb2\\u0ccd\\u0cb2\\u0ca6\\u0cbf\\u0ca6\\u0ccd\\u0ca6\\u0cb0\\u0cc6 \\u0cb9\\u0c82\\u0ca4 2 \\u0c95\\u0ccd\\u0c95\\u0cc6 \\u0cb9\\u0ccb\\u0c97\\u0cbf.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; : </span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0caf\\u0cbe\\u0cb5\\u0cc1\\u0ca6\\u0cc1 \\u0cae\\u0cbe\\u0cb0\\u0cbe\\u0c9f\\u0c97\\u0cbe\\u0cb0\\u0cb0\\u0cbf\\u0c82\\u0ca6 \\u0cae\\u0cbe\\u0ca1\\u0cb2\\u0ccd\\u0caa\\u0c9f\\u0ccd\\u0c9f\\u0cbf\\u0cb2\\u0ccd\\u0cb2?</span></span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option 4 is correct option</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'shreya.bhat@cumminscollege.in', '2020-AU-04-IceCream_KA', 102004, 51),
(72, '{\"caption\":\"Football\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><pre style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The students want to play football during P.T. period. However, there are several things to consider:&nbsp;</span></span><br><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981The students can only play football on a sunny day.&nbsp;</span></span><br><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 An outdoor activity is allowed only when the wind speed is lower than 20 km/h.&nbsp;</span></span><br><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 The school ground can\\u2019t be used if another class has already reserved it on that day.</span></span><br><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Football_2020-5-14_18-5-10.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"644\\\" height=\\\"320\\\"></pre><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question&nbsp;</strong></span><span style=\\\"font-size: 14pt;\\\"> :&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">When can the students play football next week?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option 4 is correct option</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-AU-05-Football_EN', 102001, 52),
(73, '{\"caption\":\"\\u0cab\\u0cc1\\u0c9f\\u0ccd\\u200c\\u0cac\\u0cbe\\u0cb2\\u0ccd\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><pre style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0caa\\u0cbf.\\u0c9f\\u0cbf \\u0cb8\\u0cae\\u0caf\\u0ca6\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0cb5\\u0cbf\\u0ca6\\u0ccd\\u0caf\\u0cbe\\u0cb0\\u0ccd\\u0ca5\\u0cbf\\u0c97\\u0cb3\\u0cc1 \\u0cab\\u0cc1\\u0c9f\\u0ccd\\u0cac\\u0cbe\\u0cb2\\u0ccd \\u0c86\\u0ca1\\u0cb2\\u0cc1 \\u0cac\\u0caf\\u0cb8\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbe\\u0cb0\\u0cc6. \\u0c86\\u0ca6\\u0cbe\\u0c97\\u0cc2, \\u0caa\\u0cb0\\u0cbf\\u0c97\\u0ca3\\u0cbf\\u0cb8\\u0cac\\u0cc7\\u0c95\\u0cbe\\u0ca6 \\u0cb9\\u0cb2\\u0cb5\\u0cbe\\u0cb0\\u0cc1 \\u0cb5\\u0cbf\\u0cb7\\u0caf\\u0c97\\u0cb3\\u0cbf\\u0cb5\\u0cc6:&nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 \\u0cb5\\u0cbf\\u0ca6\\u0ccd\\u0caf\\u0cbe\\u0cb0\\u0ccd\\u0ca5\\u0cbf\\u0c97\\u0cb3\\u0cc1 \\u0cac\\u0cbf\\u0cb8\\u0cbf\\u0cb2\\u0cbf\\u0ca8 \\u0ca6\\u0cbf\\u0ca8\\u0ca6\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0cae\\u0cbe\\u0ca4\\u0ccd\\u0cb0 \\u0cab\\u0cc1\\u0c9f\\u0ccd\\u0cac\\u0cbe\\u0cb2\\u0ccd \\u0c86\\u0ca1\\u0cac\\u0cb9\\u0cc1\\u0ca6\\u0cc1.&nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 \\u0c97\\u0cbe\\u0cb3\\u0cbf\\u0caf \\u0cb5\\u0cc7\\u0c97 \\u0c97\\u0c82\\u0c9f\\u0cc6\\u0c97\\u0cc6 20 \\u0c95\\u0cbf.\\u0cae\\u0cc0 \\u0c97\\u0cbf\\u0c82\\u0ca4 \\u0c95\\u0ca1\\u0cbf\\u0cae\\u0cc6\\u0caf\\u0cbf\\u0ca6\\u0ccd\\u0ca6\\u0cbe\\u0c97 \\u0cae\\u0cbe\\u0ca4\\u0ccd\\u0cb0 \\u0cb9\\u0cca\\u0cb0\\u0cbe\\u0c82\\u0c97\\u0ca3 \\u0c9a\\u0c9f\\u0cc1\\u0cb5\\u0c9f\\u0cbf\\u0c95\\u0cc6\\u0caf\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0c85\\u0ca8\\u0cc1\\u0cae\\u0ca4\\u0cbf\\u0cb8\\u0cb2\\u0cbe\\u0c97\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0ca6\\u0cc6.&nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 \\u0c86 \\u0ca6\\u0cbf\\u0ca8\\u0ca6\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cca\\u0c82\\u0ca6\\u0cc1 \\u0cb5\\u0cb0\\u0ccd\\u0c97 \\u0c88\\u0c97\\u0cbe\\u0c97\\u0cb2\\u0cc7 \\u0c85\\u0ca6\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0c95\\u0cbe\\u0caf\\u0ccd\\u0ca6\\u0cbf\\u0cb0\\u0cbf\\u0cb8\\u0cbf\\u0ca6\\u0ccd\\u0ca6\\u0cb0\\u0cc6 \\u0cb6\\u0cbe\\u0cb2\\u0cbe \\u0cae\\u0cc8\\u0ca6\\u0cbe\\u0ca8\\u0cb5\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cac\\u0cb3\\u0cb8\\u0cb2\\u0cbe\\u0c97\\u0cc1\\u0cb5\\u0cc1\\u0ca6\\u0cbf\\u0cb2\\u0ccd\\u0cb2.</span></span></pre><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Football_2020-5-14_18-5-10.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"680.0178571428571\\\" height=\\\"337\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0cae\\u0cc1\\u0c82\\u0ca6\\u0cbf\\u0ca8 \\u0cb5\\u0cbe\\u0cb0 \\u0cb5\\u0cbf\\u0ca6\\u0ccd\\u0caf\\u0cbe\\u0cb0\\u0ccd\\u0ca5\\u0cbf\\u0c97\\u0cb3\\u0cc1 \\u0caf\\u0cbe\\u0cb5\\u0cbe\\u0c97 \\u0cab\\u0cc1\\u0c9f\\u0ccd\\u0cac\\u0cbe\\u0cb2\\u0ccd \\u0c86\\u0ca1\\u0cac\\u0cb9\\u0cc1\\u0ca6\\u0cc1?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option 4 is correct option</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'shreya.bhat@cumminscollege.in', '2020-AU-05-Football_KA', 102004, 52),
(74, '{\"caption\":\"What will Maya wear today?\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Every day in the morning Maya uses the following rules to decide what to wear:&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 If she wears trousers, then she wears a T-shirt that is blank or has stars.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 If she wears a skirt, then she wears a T-shirt with a squirrel.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 If she wears a T-shirt that is blank or has stars, then she wears a jacket with a heart.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 If she wears a jacket with a heart, then she wears a cap with a drawing</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Clothes_2020-5-14_18-46-3.JPG\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"346\\\" height=\\\"375.99999999999994\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Which of the following combinations can Maya wear?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option 4 is correct option</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-BE-01-Clothes_EN', 102001, 53),
(75, '{\"caption\":\"Magical Bridges\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This is Mahi:&nbsp;</span></span><img id=\\\"5\\\" src=\\\"http://localhost:8000/media/images/Bridge3_2020-5-14_19-14-25.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imgright e-imginline e-resize\\\"><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Bridge_2020-5-14_19-14-25.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This is Jai:&nbsp;</span></span></p><p><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/Bridge1_2020-5-14_19-14-25.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Mahi can drop either a carrot or a fish in one of the waterfalls  numbered 1, 2 or 3.  There are several magical bridges on the stream. The items that  pass under bridges magically change.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;Example:</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><img id=\\\"4\\\" src=\\\"http://localhost:8000/media/images/Bridge2_2020-5-14_19-14-25.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\"></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;In this magical bridge, when a carrot passes under the bridge, it changes to a fish. Similarly, changes at other bridges are shown.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Mahi wants to send Jai a piece of wood. Which item should Mahi drop and where should she drop it?</span></span><br></p><p></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option 3 is correct option</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-Be-02-Bridges_EN', 102001, 54),
(76, '{\"caption\":\"\\u0cae\\u0cbe\\u0caf\\u0cbe \\u0c87\\u0c82\\u0ca6\\u0cc1 \\u0c8f\\u0ca8\\u0cc1 \\u0ca7\\u0cb0\\u0cbf\\u0cb8\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbe\\u0cb0\\u0cc6?\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0caa\\u0ccd\\u0cb0\\u0ca4\\u0cbf\\u0ca6\\u0cbf\\u0ca8 \\u0cac\\u0cc6\\u0cb3\\u0cbf\\u0c97\\u0ccd\\u0c97\\u0cc6 \\u0cae\\u0cbe\\u0caf\\u0cbe \\u0c8f\\u0ca8\\u0cc1 \\u0ca7\\u0cb0\\u0cbf\\u0cb8\\u0cac\\u0cc7\\u0c95\\u0cc6\\u0c82\\u0ca6\\u0cc1 \\u0ca8\\u0cbf\\u0cb0\\u0ccd\\u0ca7\\u0cb0\\u0cbf\\u0cb8\\u0cb2\\u0cc1 \\u0c88 \\u0c95\\u0cc6\\u0cb3\\u0c97\\u0cbf\\u0ca8 \\u0ca8\\u0cbf\\u0caf\\u0cae\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cac\\u0cb3\\u0cb8\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbe\\u0cb0\\u0cc6:&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 \\u0c85\\u0cb5\\u0cb3\\u0cc1 \\u0caa\\u0ccd\\u0caf\\u0cbe\\u0c82\\u0c9f\\u0ccd \\u0ca7\\u0cb0\\u0cbf\\u0cb8\\u0cbf\\u0ca6\\u0cb0\\u0cc6, \\u0c85\\u0cb5\\u0cb3\\u0cc1 \\u0c9f\\u0cbf-\\u0cb6\\u0cb0\\u0ccd\\u0c9f\\u0ccd \\u0ca7\\u0cb0\\u0cbf\\u0cb8\\u0cbf\\u0cb0\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbe\\u0cb3\\u0cc6 \\u0c85\\u0ca6\\u0cc1 \\u0c96\\u0cbe\\u0cb2\\u0cbf \\u0c85\\u0ca5\\u0cb5\\u0cbe \\u0ca8\\u0c95\\u0ccd\\u0cb7\\u0ca4\\u0ccd\\u0cb0\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cb9\\u0cca\\u0c82\\u0ca6\\u0cbf\\u0cb0\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0ca6\\u0cc6.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 \\u0c85\\u0cb5\\u0cb3\\u0cc1 \\u0cb8\\u0ccd\\u0c95\\u0cb0\\u0ccd\\u0c9f\\u0ccd \\u0ca7\\u0cb0\\u0cbf\\u0cb8\\u0cbf\\u0ca6\\u0cb0\\u0cc6, \\u0c85\\u0cb5\\u0cb3\\u0cc1 \\u0c85\\u0cb3\\u0cbf\\u0cb2\\u0cc1 \\u0cb9\\u0cca\\u0c82\\u0ca6\\u0cbf\\u0cb0\\u0cc1\\u0cb5 \\u0c9f\\u0cbf-\\u0cb6\\u0cb0\\u0ccd\\u0c9f\\u0ccd \\u0ca7\\u0cb0\\u0cbf\\u0cb8\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbe\\u0cb3\\u0cc6.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 \\u0c85\\u0cb5\\u0cb3\\u0cc1 \\u0c9f\\u0cbf-\\u0cb6\\u0cb0\\u0ccd\\u0c9f\\u0ccd \\u0c96\\u0cbe\\u0cb2\\u0cbf \\u0c85\\u0ca5\\u0cb5\\u0cbe \\u0ca8\\u0c95\\u0ccd\\u0cb7\\u0ca4\\u0ccd\\u0cb0\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cb9\\u0cca\\u0c82\\u0ca6\\u0cbf\\u0ca6\\u0ccd\\u0ca6\\u0cb0\\u0cc6, \\u0c85\\u0cb5\\u0cb3\\u0cc1 \\u0cb9\\u0cc3\\u0ca6\\u0caf\\u0ca6\\u0cbf\\u0c82\\u0ca6 \\u0c9c\\u0cbe\\u0c95\\u0cc6\\u0c9f\\u0ccd \\u0ca7\\u0cb0\\u0cbf\\u0cb8\\u0cbf\\u0ca6\\u0ccd\\u0ca6\\u0cbe\\u0cb3\\u0cc6.&nbsp;</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2981 \\u0c85\\u0cb5\\u0cb3\\u0cc1 \\u0cb9\\u0cc3\\u0ca6\\u0caf\\u0ca6\\u0cbf\\u0c82\\u0ca6 \\u0c9c\\u0cbe\\u0c95\\u0cc6\\u0c9f\\u0ccd \\u0ca7\\u0cb0\\u0cbf\\u0cb8\\u0cbf\\u0ca6\\u0cb0\\u0cc6, \\u0ca8\\u0c82\\u0ca4\\u0cb0 \\u0c85\\u0cb5\\u0cb3\\u0cc1 \\u0ca1\\u0ccd\\u0cb0\\u0cbe\\u0caf\\u0cbf\\u0c82\\u0c97\\u0ccd \\u0cb9\\u0cca\\u0c82\\u0ca6\\u0cbf\\u0cb0\\u0cc1\\u0cb5 \\u0c95\\u0ccd\\u0caf\\u0cbe\\u0caa\\u0ccd \\u0ca7\\u0cb0\\u0cbf\\u0cb8\\u0cbf\\u0ca6\\u0ccd\\u0ca6\\u0cbe\\u0cb3\\u0cc6</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Clothes_2020-5-14_18-46-3.JPG\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"362\\\" height=\\\"386\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c88 \\u0c95\\u0cc6\\u0cb3\\u0c97\\u0cbf\\u0ca8 \\u0caf\\u0cbe\\u0cb5 \\u0cb8\\u0c82\\u0caf\\u0ccb\\u0c9c\\u0ca8\\u0cc6\\u0caf\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cae\\u0cbe\\u0caf\\u0cbe \\u0ca7\\u0cb0\\u0cbf\\u0cb8\\u0cac\\u0cb9\\u0cc1\\u0ca6\\u0cc1?</span></span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Option 4 is correct option</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-BE-01-Clothes_KA', 102004, 53),
(77, '{\"caption\":\"Agriculture\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div id=\\\"0\\\" class=\\\"react-draggable\\\" style=\\\"touch-action: none; transform: translate(0px, 0px);\\\"><pre style=\\\"white-space: pre-wrap; font-family: Arial;\\\"></pre></div><div id=\\\"1\\\" class=\\\"react-draggable\\\" style=\\\"touch-action: none; transform: translate(0px, 0px);\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The only state in India that produces saffron is :</span></span></p></div></div></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_2rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_2_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Jammu and Kashmir is the only state in India produce saffron.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-IN-04-Agriculture_EN', 102001, 55),
(78, '{\"caption\":\"Fitness\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">If you\\u2019re a fitness walker, there is no need for a commute to a health club. Your neighborhood can be your health club. You don\\u2019t need a lot of fancy equipment to get a good workout either. All you need is a well-designed pair of athletic shoes.</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This paragraph best supports the statement that:</span></span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">By stating that fitness walking does not require a commute to a health club, the author stresses the convenience of this form of exercise. The paragraph also states that fitness walking will result in a good workout. Choice a is incorrect because no comparison to weight lifting is made. Choice b may seem like a logical answer, but the paragraph only refers to people who are fitness walkers, so for others, a health club might be a good investment. Choice c is not in the passage. Although choice e seems logical, the paragraph does not indicate that the wrong shoes will produce major injuries</span></span></p></div><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-IN-05-Fitness_EN', 102001, 56),
(80, '{\"caption\":\"\\u0cae\\u0cbe\\u0c82\\u0ca4\\u0ccd\\u0cb0\\u0cbf\\u0c95 \\u0cb8\\u0cc7\\u0ca4\\u0cc1\\u0cb5\\u0cc6\\u0c97\\u0cb3\\u0cc1\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; background-color: unset; text-align: inherit;\\\">\\u0c87\\u0ca6\\u0cc1 \\u0cae\\u0cb9\\u0cbf:</span><br></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><img id=\\\"5\\\" src=\\\"http://localhost:8000/media/images/Bridge3_2020-5-14_19-14-25.png\\\" class=\\\"e-rte-image e-imgright e-imginline e-resize\\\" style=\\\"box-sizing: inherit; display: block; max-width: 100%; max-height: 100%;\\\"><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/Bridge_2020-5-14_19-14-25.png\\\" class=\\\"e-rte-image e-imginline\\\" style=\\\"box-sizing: inherit; display: block; max-width: 100%; max-height: 100%;\\\"><span style=\\\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; font-size: 14px; letter-spacing: 0.14994px;\\\">\\u0c87\\u0ca6\\u0cc1 \\u0c9c\\u0cc8:</span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><img id=\\\"3\\\" src=\\\"http://localhost:8000/media/images/Bridge1_2020-5-14_19-14-25.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"box-sizing: inherit; display: block; max-width: 100%; max-height: 100%;\\\"><span style=\\\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; font-size: 14px; letter-spacing: 0.14994px;\\\">1, 2 \\u0c85\\u0ca5\\u0cb5\\u0cbe 3 \\u0cb8\\u0c82\\u0c96\\u0ccd\\u0caf\\u0cc6\\u0caf \\u0c9c\\u0cb2\\u0caa\\u0cbe\\u0ca4\\u0c97\\u0cb3\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0cae\\u0cb9\\u0cbf \\u0c95\\u0ccd\\u0caf\\u0cbe\\u0cb0\\u0cc6\\u0c9f\\u0ccd \\u0c85\\u0ca5\\u0cb5\\u0cbe \\u0cae\\u0cc0\\u0ca8\\u0cc1\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cac\\u0cbf\\u0ca1\\u0cac\\u0cb9\\u0cc1\\u0ca6\\u0cc1. \\u0cb9\\u0cca\\u0cb3\\u0cc6\\u0caf\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0cb9\\u0cb2\\u0cb5\\u0cbe\\u0cb0\\u0cc1 \\u0cae\\u0cbe\\u0c82\\u0ca4\\u0ccd\\u0cb0\\u0cbf\\u0c95 \\u0cb8\\u0cc7\\u0ca4\\u0cc1\\u0cb5\\u0cc6\\u0c97\\u0cb3\\u0cbf\\u0cb5\\u0cc6. \\u0cb8\\u0cc7\\u0ca4\\u0cc1\\u0cb5\\u0cc6\\u0c97\\u0cb3 \\u0c85\\u0ca1\\u0cbf\\u0caf\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0cb9\\u0cbe\\u0ca6\\u0cc1\\u0cb9\\u0ccb\\u0c97\\u0cc1\\u0cb5 \\u0cb5\\u0cb8\\u0ccd\\u0ca4\\u0cc1\\u0c97\\u0cb3\\u0cc1 \\u0cae\\u0cbe\\u0c82\\u0ca4\\u0ccd\\u0cb0\\u0cbf\\u0c95\\u0cb5\\u0cbe\\u0c97\\u0cbf \\u0cac\\u0ca6\\u0cb2\\u0cbe\\u0c97\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cb5\\u0cc6.</span><br></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"></span><span style=\\\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; font-size: 14px; letter-spacing: 0.14994px;\\\">\\u0c89\\u0ca6\\u0cbe\\u0cb9\\u0cb0\\u0ca3\\u0cc6:</span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><img id=\\\"4\\\" src=\\\"http://localhost:8000/media/images/Bridge2_2020-5-14_19-14-25.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" style=\\\"box-sizing: inherit; display: block; max-width: 100%; max-height: 100%;\\\"></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; letter-spacing: 0.14994px; background-color: unset; font-size: 14px; text-align: inherit; color: rgb(51, 51, 51);\\\">\\u0c88 \\u0cae\\u0cbe\\u0c82\\u0ca4\\u0ccd\\u0cb0\\u0cbf\\u0c95 \\u0cb8\\u0cc7\\u0ca4\\u0cc1\\u0cb5\\u0cc6\\u0caf\\u0cb2\\u0ccd\\u0cb2\\u0cbf, \\u0cb8\\u0cc7\\u0ca4\\u0cc1\\u0cb5\\u0cc6\\u0caf \\u0c95\\u0cc6\\u0cb3\\u0c97\\u0cc6 \\u0c92\\u0c82\\u0ca6\\u0cc1 \\u0c95\\u0ccd\\u0caf\\u0cbe\\u0cb0\\u0cc6\\u0c9f\\u0ccd \\u0cb9\\u0cbe\\u0ca6\\u0cc1\\u0cb9\\u0ccb\\u0ca6\\u0cbe\\u0c97, \\u0c85\\u0ca6\\u0cc1 \\u0cae\\u0cc0\\u0ca8\\u0cc1\\u0c97\\u0cb3\\u0cbe\\u0c97\\u0cbf \\u0cac\\u0ca6\\u0cb2\\u0cbe\\u0c97\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0ca6\\u0cc6. \\u0c85\\u0c82\\u0ca4\\u0cc6\\u0caf\\u0cc7, \\u0c87\\u0ca4\\u0cb0 \\u0cb8\\u0cc7\\u0ca4\\u0cc1\\u0cb5\\u0cc6\\u0c97\\u0cb3\\u0cb2\\u0ccd\\u0cb2\\u0cbf\\u0ca8 \\u0cac\\u0ca6\\u0cb2\\u0cbe\\u0cb5\\u0ca3\\u0cc6\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0ca4\\u0ccb\\u0cb0\\u0cbf\\u0cb8\\u0cb2\\u0cbe\\u0c97\\u0cbf\\u0ca6\\u0cc6.</span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><span style=\\\"font-weight: 700;\\\">Question</span></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; font-size: 14px; letter-spacing: 0.14994px; background-color: unset; text-align: inherit;\\\"><br></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Segoe UI&quot;, GeezaPro, &quot;DejaVu Serif&quot;, sans-serif, -apple-system, BlinkMacSystemFont; font-size: 14px; letter-spacing: 0.14994px; background-color: unset; text-align: inherit;\\\">\\u0cae\\u0cb9\\u0cbf \\u0c9c\\u0cc8\\u0c97\\u0cc6 \\u0cae\\u0cb0\\u0ca6 \\u0ca4\\u0cc1\\u0c82\\u0ca1\\u0cc1 \\u0c95\\u0cb3\\u0cc1\\u0cb9\\u0cbf\\u0cb8\\u0cb2\\u0cc1 \\u0cac\\u0caf\\u0cb8\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0cbe\\u0ca8\\u0cc6. \\u0cae\\u0cb9\\u0cbf \\u0caf\\u0cbe\\u0cb5 \\u0cb5\\u0cb8\\u0ccd\\u0ca4\\u0cc1\\u0cb5\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cac\\u0cbf\\u0ca1\\u0cac\\u0cc7\\u0c95\\u0cc1 \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 \\u0c85\\u0cb5\\u0cb3\\u0cc1 \\u0c85\\u0ca6\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0c8e\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0cac\\u0cbf\\u0ca1\\u0cac\\u0cc7\\u0c95\\u0cc1?</span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"color: rgb(74, 74, 74); font-family: Arial, Helvetica, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\">Option 3 is correct option<em>\\u200b</em></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-09', 'komal.amrutkar@cumminscollege.in', '2020-Be-02-Bridges_KA', 102004, 54),
(81, '{\"caption\":\"SBN\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">All the books in the library have a Standard Book Number (SBN) on the cover. A SBN is composed of 13 digits for each position starting from left to right. Digits are 0, 1, 2, \\u2026, 9. The 13th (rightmost) digit which is called \\u2018check digit\\u2019 can be calculated according to the following steps:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;1. Calculate A = the sum of all the digits in odd (1st, 3rd, 5th, 7th, 9th, and 11th positions.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;2. Calculate B = the sum of all the digits in even (2nd, 4th, 6th, 8th, 10th, and 12th) positions.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;3. Calculate C = A + (3 x B).          4. Take the rightmost digit of C as the check digit.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">There is a book with the SBN as the figure below. Unfortunately, the check digit was missing.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">SBN 978604803078?</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question&nbsp;</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">What is the missing digit?</span></span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">option 1 is correct option</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-BE-03-SBN_EN', 102001, 57);
INSERT INTO `ques_questiontranslation` (`questionTranslationID`, `translation`, `modified_on`, `modified_by`, `Identifier`, `languageCodeID`, `questionID`) VALUES
(82, '{\"caption\":\"\\u0c8e\\u0cb8\\u0ccd\\u200c\\u0cac\\u0cbf\\u0c8e\\u0ca8\\u0ccd\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c97\\u0ccd\\u0cb0\\u0c82\\u0ca5\\u0cbe\\u0cb2\\u0caf\\u0ca6\\u0cb2\\u0ccd\\u0cb2\\u0cbf\\u0ca8 \\u0c8e\\u0cb2\\u0ccd\\u0cb2\\u0cbe \\u0caa\\u0cc1\\u0cb8\\u0ccd\\u0ca4\\u0c95\\u0c97\\u0cb3\\u0cc1 \\u0cae\\u0cc1\\u0c96\\u0caa\\u0cc1\\u0c9f\\u0ca6\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0caa\\u0ccd\\u0cb0\\u0cae\\u0cbe\\u0ca3\\u0cbf\\u0ca4 \\u0caa\\u0cc1\\u0cb8\\u0ccd\\u0ca4\\u0c95 \\u0cb8\\u0c82\\u0c96\\u0ccd\\u0caf\\u0cc6 (\\u0c8e\\u0cb8\\u0ccd\\u200c\\u0cac\\u0cbf\\u0c8e\\u0ca8\\u0ccd) \\u0c85\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cb9\\u0cca\\u0c82\\u0ca6\\u0cbf\\u0cb5\\u0cc6. \\u0c8e\\u0ca1\\u0ca6\\u0cbf\\u0c82\\u0ca6 \\u0cac\\u0cb2\\u0c95\\u0ccd\\u0c95\\u0cc6 \\u0caa\\u0ccd\\u0cb0\\u0cbe\\u0cb0\\u0c82\\u0cad\\u0cb5\\u0cbe\\u0c97\\u0cc1\\u0cb5 \\u0caa\\u0ccd\\u0cb0\\u0ca4\\u0cbf \\u0cb8\\u0ccd\\u0ca5\\u0cbe\\u0ca8\\u0c95\\u0ccd\\u0c95\\u0cc2 \\u0c8e\\u0cb8\\u0ccd\\u200c\\u0cac\\u0cbf\\u0c8e\\u0ca8\\u0ccd 13 \\u0c85\\u0c82\\u0c95\\u0cc6\\u0c97\\u0cb3\\u0cbf\\u0c82\\u0ca6 \\u0c95\\u0cc2\\u0ca1\\u0cbf\\u0ca6\\u0cc6. \\u0c85\\u0c82\\u0c95\\u0cc6\\u0c97\\u0cb3\\u0cc1 0, 1, 2,\\u2026, 9.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u2018\\u0c9a\\u0cc6\\u0c95\\u0ccd \\u0c85\\u0c82\\u0c95\\u0cc6\\u2019 \\u0c8e\\u0c82\\u0ca6\\u0cc1 \\u0c95\\u0cb0\\u0cc6\\u0caf\\u0cb2\\u0ccd\\u0caa\\u0ca1\\u0cc1\\u0cb5 13 \\u0ca8\\u0cc7 (\\u0cac\\u0cb2\\u0c97\\u0ca1\\u0cc6) \\u0c85\\u0c82\\u0c95\\u0cbf\\u0caf\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0c88 \\u0c95\\u0cc6\\u0cb3\\u0c97\\u0cbf\\u0ca8 \\u0cb9\\u0c82\\u0ca4\\u0c97\\u0cb3 \\u0caa\\u0ccd\\u0cb0\\u0c95\\u0cbe\\u0cb0 \\u0cb2\\u0cc6\\u0c95\\u0ccd\\u0c95\\u0cb9\\u0cbe\\u0c95\\u0cac\\u0cb9\\u0cc1\\u0ca6\\u0cc1:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;1. A = \\u0cac\\u0cc6\\u0cb8 (1, 3, 5, 7, 9 \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 11 \\u0ca8\\u0cc7 \\u0cb8\\u0ccd\\u0ca5\\u0cbe\\u0ca8\\u0c97\\u0cb3\\u0cb2\\u0ccd\\u0cb2\\u0cbf\\u0ca8 \\u0c8e\\u0cb2\\u0ccd\\u0cb2\\u0cbe \\u0c85\\u0c82\\u0c95\\u0cc6\\u0c97\\u0cb3 \\u0cae\\u0cca\\u0ca4\\u0ccd\\u0ca4\\u0cb5\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cb2\\u0cc6\\u0c95\\u0ccd\\u0c95\\u0cb9\\u0cbe\\u0c95\\u0cbf.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;2. B = \\u0c8e\\u0cb2\\u0ccd\\u0cb2\\u0cbe \\u0c85\\u0c82\\u0c95\\u0cc6\\u0c97\\u0cb3 \\u0cae\\u0cca\\u0ca4\\u0ccd\\u0ca4\\u0cb5\\u0ca8\\u0ccd\\u0ca8\\u0cc1 (2 \\u0ca8\\u0cc7, 4 \\u0ca8\\u0cc7, 6 \\u0ca8\\u0cc7, 8 \\u0ca8\\u0cc7, 10 \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 12 \\u0ca8\\u0cc7) \\u0cb8\\u0ccd\\u0ca5\\u0cbe\\u0ca8\\u0c97\\u0cb3\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0cb2\\u0cc6\\u0c95\\u0ccd\\u0c95\\u0cb9\\u0cbe\\u0c95\\u0cbf.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;3. C = A + (3 x B) \\u0c85\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0cb2\\u0cc6\\u0c95\\u0ccd\\u0c95\\u0cb9\\u0cbe\\u0c95\\u0cbf.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;4. C \\u0caf \\u0cac\\u0cb2\\u0cad\\u0cbe\\u0c97\\u0ca6 \\u0c85\\u0c82\\u0c95\\u0cbf\\u0caf\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0c9a\\u0cc6\\u0c95\\u0ccd \\u0c85\\u0c82\\u0c95\\u0cbf\\u0caf\\u0cbe\\u0c97\\u0cbf \\u0ca4\\u0cc6\\u0c97\\u0cc6\\u0ca6\\u0cc1\\u0c95\\u0cca\\u0cb3\\u0ccd\\u0cb3\\u0cbf.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u0c95\\u0cc6\\u0cb3\\u0c97\\u0cbf\\u0ca8 \\u0c85\\u0c82\\u0c95\\u0cbf \\u0c85\\u0c82\\u0cb6\\u0ca6\\u0c82\\u0ca4\\u0cc6 \\u0c8e\\u0cb8\\u0ccd\\u200c\\u0cac\\u0cbf\\u0c8e\\u0ca8\\u0ccd\\u200c\\u0ca8\\u0cca\\u0c82\\u0ca6\\u0cbf\\u0c97\\u0cc6 \\u0caa\\u0cc1\\u0cb8\\u0ccd\\u0ca4\\u0c95\\u0cb5\\u0cbf\\u0ca6\\u0cc6. \\u0ca6\\u0cc1\\u0cb0\\u0ca6\\u0cc3\\u0cb7\\u0ccd\\u0c9f\\u0cb5\\u0cb6\\u0cbe\\u0ca4\\u0ccd, \\u0c9a\\u0cc6\\u0c95\\u0ccd \\u0c85\\u0c82\\u0c95\\u0cc6 \\u0c95\\u0cbe\\u0ca3\\u0cc6\\u0caf\\u0cbe\\u0c97\\u0cbf\\u0ca6\\u0cc6.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u0c8e\\u0cb8\\u0ccd\\u200c\\u0cac\\u0cbf\\u0c8e\\u0ca8\\u0ccd 978604803078?</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0c95\\u0cbe\\u0ca3\\u0cc6\\u0caf\\u0cbe\\u0ca6 \\u0c85\\u0c82\\u0c95\\u0cc6 \\u0c8f\\u0ca8\\u0cc1?</span></span></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">option 1 is correct option</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-BE-03-SBN_KA', 102004, 57),
(83, '{\"caption\":\" \\u0aa5\\u0abe\\u0ab3\\u0ac0\\u0a93\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0aac\\u0a82\\u0a9f\\u0ac0 \\u0ab0\\u0ab8\\u0acb\\u0aa1\\u0abe\\u0aa8\\u0abe \\u0a98\\u0acb\\u0aa1\\u0abe \\u0aaa\\u0ab0 \\u0aa5\\u0abe\\u0ab3\\u0ac0\\u0a93 \\u0a97\\u0acb\\u0aa0\\u0ab5\\u0ac0 \\u0ab0\\u0ab9\\u0acd\\u0aaf\\u0acb \\u0a9b\\u0ac7, \\u0a9c\\u0ac7\\u0aa5\\u0ac0 \\u0a95\\u0ab0\\u0ac0\\u0aa8\\u0ac7 \\u0aae\\u0acb\\u0a9f\\u0ac0 \\u0aa5\\u0abe\\u0ab3\\u0ac0\\u0a93 \\u0aa1\\u0abe\\u0aac\\u0ac0 \\u0aa4\\u0ab0\\u0aab \\u0ab0\\u0ab9\\u0ac7, \\u0aae\\u0aa7\\u0acd\\u0aaf\\u0aae \\u0aa5\\u0abe\\u0ab3\\u0ac0\\u0a93 \\u0ab5\\u0a9a\\u0acd\\u0a9a\\u0ac7 \\u0ab0\\u0ab9\\u0ac7, \\u0a85\\u0aa8\\u0ac7 \\u0aa8\\u0abe\\u0aa8\\u0ac0 \\u0aa5\\u0abe\\u0ab3\\u0ac0\\u0a93 \\u0a9c\\u0aae\\u0aa3\\u0ac0 \\u0aac\\u0abe\\u0a9c\\u0ac1\\u0a8f \\u0ab0\\u0ab9\\u0ac7. \\u0aa5\\u0abe\\u0ab3\\u0ac0\\u0a93 \\u0ab5\\u0a9a\\u0acd\\u0a9a\\u0ac7 \\u0a95\\u0acb\\u0a88 \\u0a9c\\u0a97\\u0acd\\u0aaf\\u0abe \\u0aa8\\u0aa5\\u0ac0. \\u0ab0\\u0abe\\u0aa4\\u0acd\\u0ab0\\u0abf\\u0aad\\u0acb\\u0a9c\\u0aa8 \\u0aaa\\u0a9b\\u0ac0, \\u0aac\\u0a82\\u0a9f\\u0ac0 \\u0aac\\u0ac0\\u0a9c\\u0ac0 \\u0aae\\u0acb\\u0a9f\\u0ac0 \\u0aa5\\u0abe\\u0ab3\\u0ac0\\u0aa8\\u0ac7 \\u0ab0\\u0ab8\\u0acb\\u0aa1\\u0abe\\u0aa8\\u0abe \\u0a98\\u0acb\\u0aa1\\u0abe \\u0aaa\\u0ab0 \\u0aae\\u0ac2\\u0a95\\u0ab5\\u0abe \\u0aae\\u0abe\\u0a97\\u0ac7 \\u0a9b\\u0ac7. \\u0aa4\\u0ac7 \\u0a85\\u0aa8\\u0ac1\\u0a95\\u0acd\\u0ab0\\u0aae \\u0a9c\\u0abe\\u0ab3\\u0ab5\\u0ab5\\u0abe \\u0aae\\u0abe\\u0a97\\u0ac7 \\u0a9b\\u0ac7. \\u0a9c\\u0acb \\u0a95\\u0ac7, \\u0aa4\\u0ac7 \\u0ab6\\u0a95\\u0acd\\u0aaf \\u0aa4\\u0ac7\\u0a9f\\u0ab2\\u0ac0 \\u0a93\\u0a9b\\u0abe\\u0aae\\u0abe\\u0a82 \\u0a93\\u0a9b\\u0ac0 \\u0aa5\\u0abe\\u0ab3\\u0ac0\\u0a93\\u0aa8\\u0ac7 \\u0a85\\u0aa1\\u0ab5\\u0abe \\u0aae\\u0abe\\u0a97\\u0ac7 \\u0a9b\\u0ac7.</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/plates_2020-5-6_23-49-12.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"405.933014354067\\\" height=\\\"210\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0aae\\u0acb\\u0a9f\\u0ac0 \\u0aa5\\u0abe\\u0ab3\\u0ac0\\u0aa8\\u0ac7 \\u0aaf\\u0acb\\u0a97\\u0acd\\u0aaf \\u0ab8\\u0acd\\u0aa5\\u0abe\\u0aa8\\u0ac7 \\u0aae\\u0ac2\\u0a95\\u0ab5\\u0abe \\u0aae\\u0abe\\u0a9f\\u0ac7 \\u0aac\\u0a82\\u0a9f\\u0ac0\\u0aa8\\u0ac7 \\u0ab0\\u0ab8\\u0acb\\u0aa1\\u0abe\\u0aa8\\u0abe \\u0a98\\u0acb\\u0aa1\\u0abe \\u0aaa\\u0ab0 \\u0aaa\\u0ab9\\u0ac7\\u0ab2\\u0abe\\u0aa5\\u0ac0 \\u0a9c \\u0aae\\u0ac2\\u0a95\\u0ac7\\u0ab2 \\u0a95\\u0ac7\\u0a9f\\u0ab2\\u0ac0 \\u0aa5\\u0abe\\u0ab3\\u0ac0\\u0a93 \\u0aa8\\u0ac7 \\u0a85\\u0aa1\\u0ab5\\u0abe\\u0aa8\\u0ac0 \\u0a9c\\u0ab0\\u0ac2\\u0ab0 \\u0aaa\\u0aa1\\u0ab6\\u0ac7?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><div style=\\\"letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Bunty\\u2019s fastest solution is if he moves the leftmost small plate to the right, fills the gap with the leftmost regular plate and puts the new large plate into the gap so that it stands to the right of the other large plates. With this he has touched two plates that are already in the rack and answer A) is correct. He cannot be faster because the large plate must be put into a position where right now a large plate or the leftmost regular plate stands (so at least one plate from the rack must be touched). In addition to that the touched plate must be put somewhere: if it is a large plate the original problem exists again, and if it is the leftmost regular plate, this must be put into a position where right now a regular or the leftmost small plate stands (so at least a second plate from the rack must be touched).&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s</span><span style=\\\"font-size: 12pt;\\\">&nbsp;</span><span style=\\\"font-size: 12pt;\\\"><span style=\\\"font-weight: 700;\\\">Computational Thinking</span></span><span style=\\\"font-size: 12pt;\\\">:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CT Skills - CS Domain - Following and Devising Algorithms&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This task is about adding a new element to an already sorted array of elements. Such procedures happen often in computers so it\\u2019s worth thinking about how to do this efficiently.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In this case the \\u201ccosts\\u201d for moving a single plate in the rack is quite high. Recognizing which type a plate is, however, is very quick. In addition to that, many plates of the same kind are in the rack. So it\\u2019s worth to find a solution for this special problem by moving only two elements. For computers it\\u2019s usually better to just find a right place for the new element in the sorted array and move all elements after that by one place. This kind of comparison sort is called Insertion Sort. It is one of the most simple but also not one of the most efficient sorting algorithms. Other similar sorting algorithms are Bubble Sort or Selection Sort. The also common Quicksort which uses the principle Divide &amp; Conquer, however, is much quicker, especially for large arrays of elements.</span></span></p></div></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates1_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"314\\\" height=\\\"192\\\" style=\\\"box-sizing: inherit; outline: rgb(74, 144, 226) solid 2px;\\\"></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates2_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"314\\\" height=\\\"192\\\" style=\\\"box-sizing: inherit;\\\"></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates3_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"315\\\" height=\\\"197\\\" style=\\\"box-sizing: inherit;\\\"></div></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-RU-01-Plates_GU', 102003, 27),
(84, '{\"caption\":\"\\u0baa\\u0bbe\\u0ba3\\u0bcd\\u0b9f\\u0bbf\\u0baf\\u0bbf\\u0ba9\\u0bcd \\u0ba4\\u0b9f\\u0bcd\\u0b9f\\u0bc1\\u0b95\\u0bcd\\u0b95\\u0bb3\\u0bcd\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0baa\\u0bbe\\u0ba3\\u0bcd\\u0b9f\\u0bbf \\u0bb5\\u0bc0\\u0b9f\\u0bcd\\u0b9f\\u0bc1 \\u0b9a\\u0bae\\u0bc8\\u0baf\\u0bb2\\u0bb1\\u0bc8\\u0baf\\u0bbf\\u0bb2\\u0bcd \\u0b9a\\u0bbf\\u0bb2 \\u0bb5\\u0bbf\\u0ba4\\u0bbf\\u0b95\\u0bb3\\u0bcd \\u0b89\\u0ba3\\u0bcd\\u0b9f\\u0bc1. \\u0ba4\\u0b9f\\u0bcd\\u0b9f\\u0bc1\\u0b95\\u0bcd\\u0b95\\u0bb3\\u0bcd \\u0b8e\\u0baa\\u0bcd\\u0baa\\u0bcb\\u0ba4\\u0bc1\\u0bae\\u0bcd \\u0b85\\u0bb5\\u0bb1\\u0bcd\\u0bb1\\u0bbf\\u0ba9\\u0bcd \\u0b85\\u0bb3\\u0bb5\\u0bc1\\u0baa\\u0bcd\\u0baa\\u0b9f\\u0bbf \\u0baa\\u0bc6\\u0bb0\\u0bbf\\u0baf\\u0bb5\\u0bb1\\u0bcd\\u0bb1\\u0bbf\\u0bb2\\u0bbf\\u0bb0\\u0bc1\\u0ba8\\u0bcd\\u0ba4\\u0bc1 \\u0b9a\\u0bbf\\u0bb1\\u0bbf\\u0baf\\u0bb5\\u0bc8\\u0baf\\u0bbe\\u0b95 \\u0b87\\u0b9f\\u0bb5\\u0bb2\\u0bae\\u0bbe\\u0b95 \\u0bb5\\u0bc8\\u0b95\\u0bcd\\u0b95 \\u0bb5\\u0bc7\\u0ba3\\u0bcd\\u0b9f\\u0bc1\\u0bae\\u0bcd. \\u0b87\\u0b9f\\u0bc8\\u0baf\\u0bbf\\u0bb2\\u0bcd \\u0b8f\\u0ba4\\u0bc1\\u0bae\\u0bcd \\u0b87\\u0b9f\\u0bc8\\u0bb5\\u0bc6\\u0bb3\\u0bbf \\u0b95\\u0bc2\\u0b9f\\u0bbe\\u0ba4\\u0bc1. \\u0baa\\u0b9f\\u0ba4\\u0bcd\\u0ba4\\u0bbf\\u0bb2\\u0bcd \\u0b89\\u0bb3\\u0bcd\\u0bb3\\u0ba4\\u0bc1 \\u0baa\\u0bcb\\u0bb2 \\u0b87\\u0bb0\\u0bc1\\u0b95\\u0bcd\\u0b95\\u0bc1\\u0bae\\u0bcd \\u0ba8\\u0bbf\\u0bb2\\u0bc8\\u0baf\\u0bbf\\u0bb2\\u0bcd \\u0b95\\u0bb4\\u0bc1\\u0bb5\\u0bbf\\u0baf \\u0baa\\u0bc6\\u0bb0\\u0bbf\\u0baf \\u0ba4\\u0b9f\\u0bcd\\u0b9f\\u0bc1 \\u0b92\\u0ba9\\u0bcd\\u0bb1\\u0bc1 \\u0baa\\u0bbe\\u0ba3\\u0bcd\\u0b9f\\u0bbf\\u0baf\\u0bbf\\u0ba9\\u0bcd \\u0b95\\u0bc8\\u0baf\\u0bbf\\u0bb2\\u0bcd \\u0b89\\u0bb3\\u0bcd\\u0bb3\\u0ba4\\u0bc1. \\u0b85\\u0ba4\\u0bc8 \\u0b9a\\u0bb0\\u0bbf\\u0baf\\u0bbe\\u0ba9 \\u0b87\\u0b9f\\u0ba4\\u0bcd\\u0ba4\\u0bbf\\u0bb2 \\u0bb5\\u0bc8\\u0b95\\u0bcd\\u0b95 \\u0bb5\\u0bc7\\u0ba3\\u0bcd\\u0b9f\\u0bc1\\u0bae\\u0bbe\\u0ba9\\u0bbe\\u0bb2\\u0bcd \\u0baa\\u0bbf\\u0bb1 \\u0ba4\\u0b9f\\u0bcd\\u0b9f\\u0bc1\\u0b95\\u0bb3\\u0bc8 \\u0ba8\\u0b95\\u0bb0\\u0bcd\\u0ba4\\u0bcd\\u0ba4 \\u0bb5\\u0bc7\\u0ba3\\u0bcd\\u0b9f\\u0bc1\\u0bae\\u0bcd. \\u0b95\\u0bc1\\u0bb1\\u0bc8\\u0ba8\\u0bcd\\u0ba4 \\u0baa\\u0b9f\\u0bcd\\u0b9a \\u0ba8\\u0b95\\u0bb0\\u0bcd\\u0ba4\\u0bcd\\u0ba4\\u0bc1\\u0ba4\\u0bb2\\u0bcb\\u0b9f\\u0bc1 \\u0b87\\u0ba4\\u0bc8\\u0b9a\\u0bcd \\u0b9a\\u0bc6\\u0baf\\u0bcd\\u0baf \\u0bb5\\u0bbf\\u0bb0\\u0bc1\\u0bae\\u0bcd\\u0baa\\u0bc1\\u0b95\\u0bbf\\u0bb1\\u0bbe\\u0ba9\\u0bcd \\u0baa\\u0bbe\\u0ba3\\u0bcd\\u0b9f\\u0bbf.</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/plates_2020-5-6_23-49-12.png\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"368.28000000000003\\\" height=\\\"198\\\"></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 12pt;\\\">&nbsp; :</span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0baa\\u0bc6\\u0bb0\\u0bbf\\u0baf \\u0ba4\\u0b9f\\u0bcd\\u0b9f\\u0bc8 \\u0b9a\\u0bb0\\u0bbf\\u0baf\\u0bbe\\u0ba9 \\u0b87\\u0b9f\\u0ba4\\u0bcd\\u0ba4\\u0bbf\\u0bb2\\u0bcd \\u0bb5\\u0bc8\\u0b95\\u0bcd\\u0b95 \\u0baa\\u0bbe\\u0ba3\\u0bcd\\u0b9f\\u0bbf \\u0b8f\\u0bb1\\u0bcd\\u0b95\\u0bc6\\u0ba9\\u0bb5\\u0bc7 \\u0ba8\\u0bbf\\u0bb1\\u0bc1\\u0ba4\\u0bcd\\u0ba4\\u0bbf\\u0baf\\u0bc1\\u0bb3\\u0bcd\\u0bb3 \\u0ba4\\u0b9f\\u0bcd\\u0b9f\\u0bc1\\u0b95\\u0bb3\\u0bbf\\u0bb2\\u0bcd \\u0b95\\u0bc1\\u0bb1\\u0bc8\\u0ba8\\u0bcd\\u0ba4 \\u0baa\\u0b9f\\u0bcd\\u0b9a\\u0bae\\u0bcd \\u0b8e\\u0ba4\\u0bcd\\u0ba4\\u0ba9\\u0bc8 \\u0ba4\\u0b9f\\u0bcd\\u0b9f\\u0bc1\\u0b95\\u0bb3\\u0bc8 \\u0ba8\\u0b95\\u0bb0\\u0bcd\\u0ba4\\u0bcd\\u0ba4\\u0bbf\\u0baf\\u0bbe\\u0b95 \\u0bb5\\u0bc7\\u0ba3\\u0bcd\\u0b9f\\u0bc1\\u0bae\\u0bcd ?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><div style=\\\"letter-spacing: 0.15008px; margin-left: 12.7875px;\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Bunty\\u2019s fastest solution is if he moves the leftmost small plate to the right, fills the gap with the leftmost regular plate and puts the new large plate into the gap so that it stands to the right of the other large plates. With this he has touched two plates that are already in the rack and answer A) is correct. He cannot be faster because the large plate must be put into a position where right now a large plate or the leftmost regular plate stands (so at least one plate from the rack must be touched). In addition to that the touched plate must be put somewhere: if it is a large plate the original problem exists again, and if it is the leftmost regular plate, this must be put into a position where right now a regular or the leftmost small plate stands (so at least a second plate from the rack must be touched).&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s&nbsp;<span style=\\\"font-weight: 700;\\\">Computational Thinking</span>:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CT Skills - CS Domain - Following and Devising Algorithms&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">This task is about adding a new element to an already sorted array of elements. Such procedures happen often in computers so it\\u2019s worth thinking about how to do this efficiently.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">In this case the \\u201ccosts\\u201d for moving a single plate in the rack is quite high. Recognizing which type a plate is, however, is very quick. In addition to that, many plates of the same kind are in the rack. So it\\u2019s worth to find a solution for this special problem by moving only two elements. For computers it\\u2019s usually better to just find a right place for the new element in the sorted array and move all elements after that by one place. This kind of comparison sort is called Insertion Sort. It is one of the most simple but also not one of the most efficient sorting algorithms. Other similar sorting algorithms are Bubble Sort or Selection Sort. The also common Quicksort which uses the principle Divide &amp; Conquer, however, is much quicker, especially for large arrays of elements.</span></span></p></div></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates1_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"314\\\" height=\\\"192\\\" style=\\\"box-sizing: inherit; outline: rgb(74, 144, 226) solid 2px;\\\"></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates2_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" width=\\\"314\\\" height=\\\"192\\\" style=\\\"box-sizing: inherit;\\\"></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><br></div><div id=\\\"answerContent\\\" style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px; cursor: auto;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/plates3_2020-5-6_23-49-12.png\\\" class=\\\"e-rte-image e-imginline e-resize e-img-focus\\\" width=\\\"315\\\" height=\\\"197\\\" style=\\\"box-sizing: inherit;\\\"></div></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-RU-01-Plates_TA', 102006, 27),
(85, '{\"caption\":\"\\u0aa4\\u0acd\\u0ab0\\u0abf\\u0aaa\\u0ac1\\u0a9f\\u0ac0 \\u0aa6\\u0acb\\u0ab0\\u0acb\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0a8f\\u0a95 \\u0ab0\\u0acb\\u0aac\\u0acb\\u0a9f, \\u0a8f\\u0a95 \\u0a9a\\u0acb\\u0ab0\\u0ab8 \\u0a9c\\u0abe\\u0ab3\\u0ac0 \\u0a89\\u0aaa\\u0ab0 \\u0a9a\\u0abe\\u0ab2\\u0ac7 \\u0a9b\\u0ac7 \\u0a85\\u0aa8\\u0ac7 \\u0ab8\\u0abe\\u0aa5\\u0ac7 \\u0a8f\\u0a9c \\u0ab8\\u0aae\\u0aaf \\u0aaa\\u0ab0 \\u0a8f\\u0aa8\\u0abe \\u0a89\\u0aaa\\u0ab0 \\u0ab2\\u0ac0\\u0a9f\\u0ac0 \\u0aa6\\u0acb\\u0ab0\\u0ac7 \\u0a9b\\u0ac7. \\u0aa4\\u0ac7\\u0aa8\\u0ac1\\u0a82 \\u0aa8\\u0abf\\u0aaf\\u0a82\\u0aa4\\u0acd\\u0ab0\\u0aa3 \\u0aa4\\u0acd\\u0ab0\\u0aa3 \\u0a86\\u0a82\\u0a95\\u0aa1\\u0abe \\u0aa5\\u0ac0 \\u0aa5\\u0a87 \\u0ab6\\u0a95\\u0ac7. \\u0a86 \\u0aae\\u0abe\\u0a9f\\u0ac7 \\u0aa4\\u0ac7 \\u0aa8\\u0ac0\\u0a9a\\u0ac7 \\u0a86\\u0aaa\\u0ac7\\u0ab2\\u0abe \\u0aaa\\u0a97\\u0ab2\\u0abe\\u0a82\\u0aa8\\u0ac7 \\u0a98\\u0aa3\\u0ac0 \\u0ab5\\u0a96\\u0aa4 \\u0aab\\u0ab0\\u0ac0 \\u0aab\\u0ab0\\u0ac0 \\u0ab5\\u0abe\\u0ab0 \\u0a95\\u0ab0\\u0ac7 \\u0a9b\\u0ac7.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0aaa\\u0ac7\\u0ab9\\u0ab2\\u0acb \\u0a86\\u0a82\\u0a95\\u0aa1\\u0acb \\u0a8f\\u0a9f\\u0ab2\\u0abe \\u0aaa\\u0a97\\u0ab2\\u0abe\\u0a82 \\u0a86\\u0a97\\u0ab3 \\u0ab5\\u0aa7\\u0ab5\\u0ac1\\u0a82&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0a9c\\u0aae\\u0aa3\\u0ac0 \\u0aac\\u0abe\\u0a9c\\u0ac1 \\u0ab5\\u0ab3\\u0ab5\\u0ac1\\u0a82&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0aac\\u0ac0\\u0a9c\\u0acb \\u0a86\\u0a82\\u0a95\\u0aa1\\u0acb \\u0a8f\\u0a9f\\u0ab2\\u0abe \\u0aaa\\u0a97\\u0ab2\\u0abe\\u0a82 \\u0a86\\u0a97\\u0ab3 \\u0ab5\\u0aa7\\u0ab5\\u0ac1\\u0a82&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0a9c\\u0aae\\u0aa3\\u0ac0 \\u0aac\\u0abe\\u0a9c\\u0ac1 \\u0ab5\\u0ab3\\u0ab5\\u0ac1\\u0a82&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0aa4\\u0acd\\u0ab0\\u0ac0\\u0a9c\\u0acb \\u0a86\\u0a82\\u0a95\\u0aa1\\u0acb \\u0a8f\\u0a9f\\u0ab2\\u0abe \\u0aaa\\u0a97\\u0ab2\\u0abe\\u0a82 \\u0a86\\u0a97\\u0ab3 \\u0ab5\\u0aa7\\u0ab5\\u0ac1\\u0a82&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0a9c\\u0aae\\u0aa3\\u0ac0 \\u0aac\\u0abe\\u0a9c\\u0ac1&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0ab5\\u0ab3\\u0ab5\\u0ac1\\u0a82  \\u0aa7\\u0abe\\u0ab0\\u0acb\\u0a95\\u0ac7 \\u0ab0\\u0acb\\u0aac\\u0acb\\u0a9f \\u0aa8\\u0ac1\\u0a82 \\u0aa8\\u0abf\\u0aaf\\u0a82\\u0aa4\\u0acd\\u0ab0\\u0aa3 \\u0a86\\u0a82\\u0a95\\u0aa1\\u0abe 3,1 \\u0a85\\u0aa8\\u0ac7 \\u0aeb \\u0aa5\\u0ac0 \\u0aa5\\u0abe\\u0aaf \\u0a9b\\u0ac7, \\u0aa4\\u0acb \\u0aa4\\u0ac7 \\u0aa8\\u0ac0\\u0a9a\\u0ac7 \\u0a86\\u0aaa\\u0ac7\\u0ab2\\u0abe \\u0a9a\\u0abf\\u0aa4\\u0acd\\u0ab0 \\u0aae\\u0ac1\\u0a9c\\u0aac \\u0ab2\\u0ac0\\u0a9f\\u0ac0 \\u0aa6\\u0acb\\u0ab0\\u0acd\\u0ab8\\u0ac7:</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/triplets_2020-5-7_11-23-2.JPG\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline e-resize\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0ab0\\u0acb\\u0aac\\u0acb\\u0a9f \\u0aa8\\u0ac1\\u0a82 \\u0aa8\\u0abf\\u0aaf\\u0a82\\u0aa4\\u0acd\\u0ab0\\u0aa3 \\u0a86\\u0a82\\u0a95\\u0aa1\\u0abe 2,2 \\u0a85\\u0aa8\\u0ac7 3 \\u0aa5\\u0ac0 \\u0aa5\\u0abe\\u0aaf \\u0a9b\\u0ac7. \\u0aa4\\u0acb \\u0ab2\\u0ac0\\u0a9f\\u0ac0\\u0a93 \\u0a95\\u0ac7\\u0ab5\\u0ac0 \\u0aa6\\u0ac7\\u0a96\\u0abe\\u0ab6\\u0ac7?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The numbers 2, 2, and 3 tell the robot to advance 2 steps at the beginning, turn right a quarter turn, advance 2 steps again, turn right a quarter turn, then advance 3 steps and finally turn right a quarter turn. After that he\\u2019s drawn the following lines shown below in figures at ht end:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">If he repeats this he has drawn these lines:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">After two more repetitions the picture looks like this:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Since he\\u2019s in the same position and has the same direction as in the very beginning all further repetitions will just have him draw the same lines again and again. Therefore answer A) is correct.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The three other lines can also be drawn by the robot, they need different numbers, however:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s </span></span><strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Computational Thinking</span></span></strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CT Skills -</span></span>&nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CS Domain -</span></span>&nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The drawing robot of this task can only execute very simple programs. The programming language that the robot understands only knows three numbers as commands. Every program must consist of exactly such three numbers. It is also fixed that the robot repeats the commands infinitely whether this is desired or not.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Most robots and computers understand much more complex (programming) languages. Most of these languages have the same basic properties:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf A program may consist of an arbitrary number of commands that are repeated after another in a sequence .&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Repetitions of different types, so called loops , may be but don\\u2019t have to be used.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Also there are conditional statements that based on the state of the program allow for different codes.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;If a programming language contains loops and conditional statements by using them it can compute everything that is computable. In computer science these programming languages are called universal \\u2013 or also Turing complete.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The robot of this task by the way is in a classic environment used for teaching how to program.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Instead of a robot, one can imagine a turtle that draws lines. Such turtle graphics may for instance be used with XlogoOnline or with TigerJython.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-SK-02-DrawingTriplets_GU', 102003, 34);
INSERT INTO `ques_questiontranslation` (`questionTranslationID`, `translation`, `modified_on`, `modified_by`, `Identifier`, `languageCodeID`, `questionID`) VALUES
(86, '{\"caption\":\"\\u0baa\\u0b9f\\u0bae\\u0bcd \\u0baa\\u0bcb\\u0b9f\\u0bc1\\u0bae\\u0bcd \\u0bb0\\u0bcb\\u0baa\\u0bcb\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0b8e\\u0ba9\\u0bcd\\u0ba9\\u0bc1\\u0b9f\\u0bc8\\u0baf \\u0b95\\u0bc1\\u0b9f\\u0bcd\\u0b9f\\u0bbf \\u0bb0\\u0bcb\\u0baa\\u0bcb \\u0ba8\\u0b9f\\u0ba8\\u0bcd\\u0ba4\\u0bb5\\u0bbe\\u0bb1\\u0bc7 \\u0b95\\u0bcb\\u0b9f\\u0bc1\\u0b95\\u0bb3\\u0bcd \\u0bb5\\u0bb0\\u0bc8\\u0bb5\\u0bbe\\u0ba9\\u0bcd. \\u0b85\\u0bb5\\u0ba9\\u0bbf\\u0b9f\\u0bae\\u0bcd \\u0ba8\\u0bbe\\u0bae\\u0bcd \\u0b9a\\u0bca\\u0bb2\\u0bcd\\u0bb2 \\u0bb5\\u0bc7\\u0ba3\\u0bcd\\u0b9f\\u0bbf\\u0baf\\u0ba4\\u0bc1 \\u0bae\\u0bc2\\u0ba9\\u0bcd\\u0bb1\\u0bc1 \\u0b8e\\u0ba3\\u0bcd\\u0b95\\u0bb3\\u0bcd .  \\u0b89\\u0b9f\\u0ba9\\u0bc7 \\u0b95\\u0bc0\\u0bb4\\u0bcd\\u0b95\\u0bcd\\u0b95\\u0ba3\\u0bcd\\u0b9f\\u0bb5\\u0bbe\\u0bb1\\u0bc1 \\u0b9a\\u0bc6\\u0baf\\u0bb2\\u0bcd\\u0baa\\u0bbe\\u0b9f\\u0bcd\\u0b9f\\u0bc8 \\u0ba4\\u0bbf\\u0bb0\\u0bc1\\u0bae\\u0bcd\\u0baa\\u0ba4\\u0bcd \\u0ba4\\u0bbf\\u0bb0\\u0bc1\\u0bae\\u0bcd\\u0baa \\u0b9a\\u0bc6\\u0baf\\u0bcd\\u0bb5\\u0bbe\\u0ba9\\u0bcd, \\u0b85\\u0ba4\\u0bbf\\u0bb2\\u0bcd \\u0b85\\u0bb4\\u0b95\\u0bbe\\u0ba9 \\u0baa\\u0b9f\\u0b99\\u0bcd\\u0b95\\u0bb3\\u0bcd \\u0b89\\u0bb0\\u0bc1\\u0bb5\\u0bbe\\u0b95\\u0bc1\\u0bae\\u0bcd:&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0bae\\u0bc1\\u0ba4\\u0bb2\\u0bcd \\u0b8e\\u0ba3\\u0bcd  \\u0b8e\\u0ba4\\u0bcd\\u0ba4\\u0ba9\\u0bc8\\u0baf\\u0bcb \\u0b85\\u0ba4\\u0bcd\\u0ba4\\u0ba9\\u0bc8 \\u0b85\\u0b9f\\u0bbf\\u0b95\\u0bb3\\u0bcd \\u0bae\\u0bc1\\u0ba9\\u0bcd\\u0ba9\\u0bcb\\u0b95\\u0bcd\\u0b95\\u0bbf \\u0ba8\\u0b9f\\u0baa\\u0bcd\\u0baa\\u0bbe\\u0ba9\\u0bcd.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0bb5\\u0bb2\\u0ba4\\u0bc1 \\u0baa\\u0b95\\u0bcd\\u0b95\\u0bae\\u0bcd 90 \\u0b9f\\u0bbf\\u0b95\\u0bbf\\u0bb0\\u0bbf \\u0ba4\\u0bbf\\u0bb0\\u0bc1\\u0bae\\u0bcd\\u0baa\\u0bc1\\u0bb5\\u0bbe\\u0ba9\\u0bcd.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0b87\\u0bb0\\u0ba3\\u0bcd\\u0b9f\\u0bbe\\u0bae\\u0bcd \\u0b8e\\u0ba3\\u0bcd-\\u0baa\\u0b9f\\u0bbf \\u0b85\\u0ba4\\u0bcd\\u0ba4\\u0ba9\\u0bc8\\u0b85\\u0b9f\\u0bbf\\u0b95\\u0bb3\\u0bcd \\u0bae\\u0bc1\\u0ba9\\u0bcd\\u0b9a\\u0bc6\\u0bb2\\u0bcd\\u0bb5\\u0bbe\\u0ba9\\u0bcd.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0bb5\\u0bb2\\u0ba4\\u0bc1 \\u0baa\\u0b95\\u0bcd\\u0b95\\u0bae\\u0bcd 90 \\u0b9f\\u0bbf\\u0b95\\u0bbf\\u0bb0\\u0bbf \\u0ba4\\u0bbf\\u0bb0\\u0bc1\\u0baa\\u0bcd\\u0baa\\u0bae\\u0bcd.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0bae\\u0bc2\\u0ba9\\u0bcd\\u0bb1\\u0bbe\\u0bae\\u0bcd \\u0b8e\\u0ba3\\u0bcd-\\u0baa\\u0b9f\\u0bbf \\u0b85\\u0ba4\\u0bcd\\u0ba4\\u0ba9\\u0bc8\\u0b85\\u0b9f\\u0bbf\\u0b95\\u0bb3\\u0bcd \\u0bae\\u0bc1\\u0ba9\\u0bcd\\u0ba9\\u0bc7\\u0bb1\\u0bcd\\u0bb1\\u0bae\\u0bcd.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf \\u0bb5\\u0bb2\\u0ba4\\u0bc1 \\u0baa\\u0b95\\u0bcd\\u0b95\\u0bae\\u0bcd 90 \\u0b9f\\u0bbf\\u0b95\\u0bbf\\u0bb0\\u0bbf \\u0ba4\\u0bbf\\u0bb0\\u0bc1\\u0baa\\u0bcd\\u0baa\\u0bae\\u0bcd.&nbsp;</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u0b8e\\u0ba9\\u0bcd \\u0bb0\\u0bcb\\u0baa\\u0bcb\\u0bb5\\u0bbf\\u0bb1\\u0bcd\\u0b95\\u0bc1 3,  1, 5 \\u0b8e\\u0ba9\\u0bcd\\u0bb1 \\u0b86\\u0ba3\\u0bc8 \\u0ba4\\u0ba8\\u0bcd\\u0ba4\\u0bbe\\u0bb2\\u0bcd \\u0b85\\u0bb5\\u0ba9\\u0bcd \\u0bb5\\u0bb0\\u0bc8\\u0baf\\u0bc1\\u0bae\\u0bcd \\u0b95\\u0bcb\\u0b9f\\u0bc1\\u0b95\\u0bb3\\u0bc1\\u0bae\\u0bcd, \\u0b95\\u0bbf\\u0b9f\\u0bc8\\u0b95\\u0bcd\\u0b95\\u0bc1\\u0bae\\u0bcd \\u0baa\\u0b9f\\u0bae\\u0bc1\\u0bae\\u0bcd \\u0b87\\u0ba4\\u0bcb:</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><img id=\\\"2\\\" src=\\\"http://localhost:8000/media/images/triplets_2020-5-7_11-23-2.JPG\\\" style=\\\"display: block; max-height: 100%; max-width: 100%;\\\" class=\\\"e-rte-image e-imginline\\\"></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question</strong></span><span style=\\\"font-size: 14pt;\\\">&nbsp; :</span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0bb0\\u0bcb\\u0baa\\u0bcb\\u0bb5\\u0bbf\\u0bb1\\u0bcd\\u0b95\\u0bc1 \\u0b86\\u0ba3\\u0bc8 2, 2, 3 \\u0b8e\\u0ba9\\u0bcd\\u0bb1\\u0bbe\\u0bb2\\u0bcd, \\u0b95\\u0bbf\\u0b9f\\u0bc8\\u0b95\\u0bcd\\u0b95\\u0bc1\\u0bae\\u0bcd \\u0baa\\u0b9f\\u0bae\\u0bcd \\u0b8e\\u0ba4\\u0bcd\\u0ba4\\u0b95\\u0bc8\\u0baf\\u0ba4\\u0bc1?</span></span><br></p></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" tabindex=\\\"0\\\"><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The numbers 2, 2, and 3 tell the robot to advance 2 steps at the beginning, turn right a quarter turn, advance 2 steps again, turn right a quarter turn, then advance 3 steps and finally turn right a quarter turn. After that he\\u2019s drawn the following lines shown below in figures at ht end:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">If he repeats this he has drawn these lines:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">After two more repetitions the picture looks like this:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Since he\\u2019s in the same position and has the same direction as in the very beginning all further repetitions will just have him draw the same lines again and again. Therefore answer A) is correct.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The three other lines can also be drawn by the robot, they need different numbers, however:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">It\\u2019s </span></span><strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Computational Thinking</span></span></strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CT Skills -</span></span>&nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">CS Domain -</span></span>&nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The drawing robot of this task can only execute very simple programs. The programming language that the robot understands only knows three numbers as commands. Every program must consist of exactly such three numbers. It is also fixed that the robot repeats the commands infinitely whether this is desired or not.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Most robots and computers understand much more complex (programming) languages. Most of these languages have the same basic properties:&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf A program may consist of an arbitrary number of commands that are repeated after another in a sequence .&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Repetitions of different types, so called loops , may be but don\\u2019t have to be used.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;\\u25cf Also there are conditional statements that based on the state of the program allow for different codes.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">&nbsp;If a programming language contains loops and conditional statements by using them it can compute everything that is computable. In computer science these programming languages are called universal \\u2013 or also Turing complete.</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">The robot of this task by the way is in a classic environment used for teaching how to program.&nbsp;</span></span></p><p style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Instead of a robot, one can imagine a turtle that draws lines. Such turtle graphics may for instance be used with XlogoOnline or with TigerJython.</span></span></p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-08', 'komal.amrutkar@cumminscollege.in', '2020-SK-02-DrawingTriplets_TA', 102006, 34),
(87, '{\"caption\":\"Map Game\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_2055604630_0rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_2055604630_0_rte-edit-view\\\"\\\" tabindex=\\\"0\\\"><p><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Ravi signed up to play a map game. The players were given the table below instead of a map</span></span></p><div id=\\\"questionContent\\\"></div><div><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div><span style=\\\"color: rgb(70, 70, 70); font-family: &quot;Cabin Condensed&quot;, Arial, Helvetica, sans-serif; letter-spacing: normal;\\\"><img style=\\\"max-height:100%;max-width:100%\\\" src=\\\"http://localhost:8000/media/images/Map_2020-6-21_22-59-23.png\\\"  class=\\\"e-rte-image e-imginline\\\" alt=\\\"Map.png\\\" width=\\\"auto\\\" height=\\\"auto\\\" style=\\\"min-width: 0px; min-height: 0px;\\\"> </span></div><div><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div><p style=\\\"margin-bottom: 20px; color: rgb(70, 70, 70); font-family: &quot;Cabin Condensed&quot;, Arial, Helvetica, sans-serif; letter-spacing: normal;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">There are six cities:&nbsp;</span></span><strong style=\\\"margin-top: 0px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">A, B, C, D, E</span></span></strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">, and</span></span>&nbsp;<strong style=\\\"margin-top: 0px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">F</span></span></strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">. When there is an arrow in the table, it means there is a&nbsp;one-way road starting from the city corresponding to the row and ending at the city corresponding&nbsp;to the column. When there isn\\u2019t an arrow, it means no road directly connects these two cities. For&nbsp;example, there is a one-way road from</span></span>&nbsp;<strong style=\\\"margin-top: 0px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">City B</span></span></strong>&nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">to</span></span>&nbsp;<strong style=\\\"margin-top: 0px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">City C</span></span></strong>&nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">but there is not a one-way road from</span></span>&nbsp;<strong style=\\\"margin-top: 0px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">City B</span></span></strong>&nbsp;<span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">to</span></span>&nbsp;<strong style=\\\"margin-top: 0px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">City D</span></span></strong><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">.</span></span></p><p style=\\\"margin-bottom: 20px; color: rgb(70, 70, 70); font-family: &quot;Cabin Condensed&quot;, Arial, Helvetica, sans-serif; letter-spacing: normal;\\\"><strong style=\\\"margin-top: 0px;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\">Question</span><span style=\\\"font-size: 12pt;\\\">&nbsp; :</span></span></strong></p><p style=\\\"margin-bottom: 20px; color: rgb(70, 70, 70); font-family: &quot;Cabin Condensed&quot;, Arial, Helvetica, sans-serif; letter-spacing: normal;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">Is it true that at least three one-way roads are needed to get from</span></span></p></div></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_2055604630_1rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_2055604630_1_rte-edit-view\\\"\\\" tabindex=\\\"0\\\"><p>Option 2 is correct option.</p><div id=\\\"answerContent\\\"></div></div></div>\"}', '2020-06-21', 'komal.amrutkar@cumminscollege.in', '2020-UK-01-MapGame_EN', 102001, 58),
(88, '{\"caption\":\"\\u0ca8\\u0c95\\u0ccd\\u0cb7\\u0cc6 \\u0c86\\u0c9f\",\"background\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_3rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_3_rte-edit-view\\\"\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" \\\"=\\\"\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_0_rte-edit-view\\\" \\\"=\\\"\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_6_rte-edit-view\\\" \\\"=\\\"\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_4_rte-edit-view\\\" \\\"=\\\"\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_677870586_0_rte-edit-view\\\" \\\"=\\\"\\\" tabindex=\\\"0\\\"><div id=\\\"questionContent\\\" style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0cb0\\u0cb5\\u0cbf \\u0ca8\\u0c95\\u0ccd\\u0cb7\\u0cc6 \\u0c86\\u0c9f \\u0c86\\u0ca1\\u0cb2\\u0cc1 \\u0cb8\\u0cc8\\u0ca8\\u0ccd \\u0c85\\u0caa\\u0ccd \\u0cae\\u0cbe\\u0ca1\\u0cbf\\u0ca6\\u0ccd\\u0ca6\\u0cbe\\u0cb0\\u0cc6. \\u0ca8\\u0c95\\u0ccd\\u0cb7\\u0cc6\\u0caf \\u0cac\\u0ca6\\u0cb2\\u0cc1 \\u0c86\\u0c9f\\u0c97\\u0cbe\\u0cb0\\u0cb0\\u0cbf\\u0c97\\u0cc6 \\u0c95\\u0cc6\\u0cb3\\u0c97\\u0cbf\\u0ca8 \\u0c9f\\u0cc7\\u0cac\\u0cb2\\u0ccd \\u0ca8\\u0cc0\\u0ca1\\u0cb2\\u0cbe\\u0c97\\u0cbf\\u0ca6\\u0cc6 \\u0c86\\u0cb0\\u0cc1 \\u0ca8\\u0c97\\u0cb0\\u0c97\\u0cb3\\u0cbf\\u0cb5\\u0cc6:</span></span><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"questionContent\\\" style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"questionContent\\\" style=\\\"cursor: auto;\\\"><img style=\\\"max-height: 100%; max-width: 100%;\\\" src=\\\"http://localhost:8000/media/images/Map_2020-6-21_22-59-23.png\\\" class=\\\"e-rte-image e-imginline e-resize\\\" alt=\\\"Map.png\\\" width=\\\"417.910447761194\\\" height=\\\"400\\\"></div><div id=\\\"questionContent\\\" style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"questionContent\\\" style=\\\"cursor: auto;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></div><div id=\\\"questionContent\\\" style=\\\"cursor: auto;\\\"><p style=\\\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; letter-spacing: normal;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><strong>\\u0c8e</strong>, <strong>\\u0cac\\u0cbf</strong>, <strong>\\u0cb8\\u0cbf</strong>, <strong>\\u0ca1\\u0cbf</strong>, <strong>\\u0c87</strong>, \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 <strong>\\u0c8e\\u0cab\\u0ccd</strong>. \\u0c95\\u0ccb\\u0cb7\\u0ccd\\u0c9f\\u0c95\\u0ca6\\u0cb2\\u0ccd\\u0cb2\\u0cbf \\u0cac\\u0cbe\\u0ca3 \\u0c87\\u0ca6\\u0ccd\\u0ca6\\u0cbe\\u0c97, \\u0c87\\u0ca6\\u0cb0\\u0cb0\\u0ccd\\u0ca5 \\u0ca8\\u0c97\\u0cb0\\u0ca6\\u0cbf\\u0c82\\u0ca6 \\u0cb8\\u0cbe\\u0cb2\\u0cbf\\u0c97\\u0cc6 \\u0c85\\u0ca8\\u0cc1\\u0c97\\u0cc1\\u0ca3\\u0cb5\\u0cbe\\u0c97\\u0cbf \\u0c92\\u0ca8\\u0ccd-\\u0cb5\\u0cc7 \\u0cb0\\u0cb8\\u0ccd\\u0ca4\\u0cc6 \\u0c87\\u0ca6\\u0cc6 \\u0cae\\u0ca4\\u0ccd\\u0ca4\\u0cc1 \\u0ca8\\u0c97\\u0cb0\\u0c95\\u0ccd\\u0c95\\u0cc6 \\u0c85\\u0ca8\\u0cc1\\u0c97\\u0cc1\\u0ca3\\u0cb5\\u0cbe\\u0c97\\u0cbf \\u0c95\\u0cca\\u0ca8\\u0cc6\\u0c97\\u0cca\\u0cb3\\u0ccd\\u0cb3\\u0cc1\\u0ca4\\u0ccd\\u0ca4\\u0ca6\\u0cc6 \\u0c95\\u0cbe\\u0cb2\\u0cae\\u0ccd\\u200c\\u0c97\\u0cc6. \\u0cac\\u0cbe\\u0ca3 \\u0c87\\u0cb2\\u0ccd\\u0cb2\\u0ca6\\u0cbf\\u0ca6\\u0ccd\\u0ca6\\u0cbe\\u0c97, \\u0caf\\u0cbe\\u0cb5\\u0cc1\\u0ca6\\u0cc7 \\u0cb0\\u0cb8\\u0ccd\\u0ca4\\u0cc6 \\u0c88 \\u0c8e\\u0cb0\\u0ca1\\u0cc1 \\u0ca8\\u0c97\\u0cb0\\u0c97\\u0cb3\\u0ca8\\u0ccd\\u0ca8\\u0cc1 \\u0ca8\\u0cc7\\u0cb0\\u0cb5\\u0cbe\\u0c97\\u0cbf \\u0cb8\\u0c82\\u0caa\\u0cb0\\u0ccd\\u0c95\\u0cbf\\u0cb8\\u0cc1\\u0cb5\\u0cc1\\u0ca6\\u0cbf\\u0cb2\\u0ccd\\u0cb2 \\u0c8e\\u0c82\\u0ca6\\u0cb0\\u0ccd\\u0ca5. \\u0c89\\u0ca6\\u0cbe\\u0cb9\\u0cb0\\u0ca3\\u0cc6\\u0c97\\u0cc6, <strong>\\u0cb8\\u0cbf\\u0c9f\\u0cbf \\u0cac\\u0cbf</strong> \\u0caf\\u0cbf\\u0c82\\u0ca6 <strong>\\u0cb8\\u0cbf\\u0c9f\\u0cbf \\u0cb8\\u0cbf</strong> \\u0c97\\u0cc6 \\u0c8f\\u0c95\\u0cae\\u0cc1\\u0c96 \\u0cb0\\u0cb8\\u0ccd\\u0ca4\\u0cc6 \\u0c87\\u0ca6\\u0cc6 \\u0c86\\u0ca6\\u0cb0\\u0cc6 <strong>\\u0cb8\\u0cbf\\u0c9f\\u0cbf \\u0cac\\u0cbf</strong> \\u0caf\\u0cbf\\u0c82\\u0ca6 <strong>\\u0cb8\\u0cbf\\u0c9f\\u0cbf \\u0ca1\\u0cbf</strong> \\u0c97\\u0cc6 \\u0c8f\\u0c95\\u0cae\\u0cc1\\u0c96 \\u0cb0\\u0cb8\\u0ccd\\u0ca4\\u0cc6 \\u0c87\\u0cb2\\u0ccd\\u0cb2.</span></span></p><p style=\\\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; letter-spacing: normal;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; letter-spacing: normal;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 14pt;\\\"><strong>Question&nbsp;</strong></span><span style=\\\"font-size: 14pt;\\\"> :</span></span></p><p style=\\\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; letter-spacing: normal;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\"><br></span></span></p><p style=\\\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; letter-spacing: normal;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif;\\\"><span style=\\\"font-size: 12pt;\\\">\\u0caa\\u0ca1\\u0cc6\\u0caf\\u0cb2\\u0cc1 \\u0c95\\u0ca8\\u0cbf\\u0cb7\\u0ccd\\u0ca0 \\u0cae\\u0cc2\\u0cb0\\u0cc1 \\u0c8f\\u0c95\\u0cae\\u0cc1\\u0c96 \\u0cb0\\u0cb8\\u0ccd\\u0ca4\\u0cc6\\u0c97\\u0cb3\\u0cc1 \\u0cac\\u0cc7\\u0c95\\u0cbe\\u0c97\\u0cc1\\u0cb5\\u0cc1\\u0ca6\\u0cc1 \\u0ca8\\u0cbf\\u0c9c\\u0cb5\\u0cc7?</span></span></p></div></div></div></div></div></div></div></div></div></div></div></div></div>\",\"explanation\":\"<div class=\\\"e-rte-content\\\" id=\\\"richtexteditor_700885345_4rte-view\\\" style=\\\"height: auto; margin-top: 0px;\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_4_rte-edit-view\\\"\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_1_rte-edit-view\\\" \\\"=\\\"\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_700885345_7_rte-edit-view\\\" \\\"=\\\"\\\" tabindex=\\\"0\\\"><div id=\\\"answerContent\\\"><div class=\\\"e-content e-lib e-keyboard\\\" id=\\\"richtexteditor_677870586_1_rte-edit-view\\\" \\\"=\\\"\\\" tabindex=\\\"0\\\"><p><span style=\\\"color: rgb(74, 74, 74); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 16px; letter-spacing: 0.15008px;\\\">Option 2 is correct option.</span></p><div id=\\\"answerContent\\\"></div></div></div></div></div></div></div></div></div>\"}', '2020-06-22', 'komal.amrutkar@cumminscollege.in', '2020-UK-01-MapGame_KA', 102004, 58),
(89, '{\"caption\":\"Profit Loss\",\"background\":\"<div style=\\\" font-family: Arial;\\\">While selling a book for Rs 600 a seller makes a profit of Rs 100. \\n\\n<span style=\\\"fontWeight:bold\\\">Question : \\n\\n </span>Find out his profit%?</div>\",\"explanation\":\"<div style=\\\" font-family: Arial;\\\">selling price - profit = cost price. Hence, cost of book is Rs. 500.profit % = profit/cost price = 100/500*100=20%</div>\"}', '2020-06-22', 'komal.amrutkar@cumminscollege.in', '2020-IN-06-ProfitLoss_EN', 102001, 59),
(90, '{\"caption\":\"Cricket\",\"background\":\"<div style=\\\" font-family: Arial;\\\">\\n\\n<span style=\\\"fontWeight:bold\\\">Question: \\n\\n</span>Which countries play Ashes Test cricket series against each other?</div>\",\"explanation\":\"<div style=\\\" font-family: Arial;\\\">The first Test match between England and Australia was played in Melbourne, Australia, in 1877, though the Ashes legend started later, after the ninth Test, played in 1882. On their tour of England that year the Australians played just one Test, at the Oval in London. It was a low-scoring affair on a difficult wicket. Australia made a mere 63 runs in its first innings, and England, led by A. N. Hornby, took a 38-run lead with a total of 101. In its second innings, Australia, boosted by a spectacular 55 runs off 60 deliveries from Hugh Massie, managed 122, which left England only 85 runs to win. The Australians were greatly demoralised by the manner of their second-innings collapse, but fast bowler Fred Spofforth, spurred on by the gamesmanship of his opponents, in particular W. G. Grace, refused to give in. \\\"This thing can be done,\\\" he declared. Spofforth went on to devastate the English batting, taking his final four wickets for only two runs to leave England just eight runs short of victory.\\n\\nWhen Ted Peate, England\'s last batsman, came to the crease, his side needed just ten runs to win, but Peate managed only two before he was bowled by Harry Boyle. An astonished Oval crowd fell silent, struggling to believe that England could possibly have lost to a colony on home soil. When it finally sank in, the crowd swarmed onto the field, cheering loudly and chairing Boyle and Spofforth to the pavilion.\\n\\nWhen Peate returned to the pavilion he was reprimanded by his captain for not allowing his partner, Charles Studd (one of the best batsman in England, having already hit two centuries that season against the colonists), to get the runs. Peate humorously replied, \\\"I had no confidence in Mr Studd, sir, so thought I had better do my best.\\\"\\n\\nThe momentous defeat was widely recorded in the British press, which praised the Australians for their plentiful \\\"pluck\\\" and berated the Englishmen for their lack thereof. A celebrated poem appeared in Punch on Saturday, 9 September. The first verse, quoted most frequently, reads:\\n\\nWell done, Cornstalks! Whipt us\\nFair and square,\\nWas it luck that tript us?\\nWas it scare?\\nKangaroo Land\'s \'Demon\', or our own\\nWant of \'devil\', coolness, nerve, backbone?\\n\\nOn 31 August, in the Charles Alcock-edited magazine Cricket: A Weekly Record of The Game, there appeared a mock obituary:\\n\\nSACRED TO THE MEMORY\\nOF\\nENGLAND\'S SUPREMACY IN THE\\nCRICKET-FIELD\\nWHICH EXPIRED\\nON THE 29TH DAY OF AUGUST, AT THE OVAL\\n\\\"ITS END WAS PEATE\\\"\\n\\n\\nThe death notice that appeared in The Sporting Times\\nOn 2 September a more celebrated mock obituary, written by Reginald Shirley Brooks, appeared in The Sporting Times. It read:\\n\\nIn Affectionate Remembrance\\nof\\nENGLISH CRICKET,\\nwhich died at the Oval\\non\\n29 August 1882,\\nDeeply lamented by a large circle of sorrowing\\nfriends and acquaintances\\n\\nR.I.P.\\n\\nN.B.\\u2014The body will be cremated and the\\nashes taken to Australia.\\n\\nIvo Bligh promised that on 1882\\u201383 tour of Australia, he would, as England\'s captain, \\\"recover those Ashes\\\". He spoke of them several times over the course of the tour, and the Australian media quickly caught on. The three-match series resulted in a two-one win to England, notwithstanding a fourth match, won by the Australians, whose status remains a matter of ardent dispute.\\n\\nIn the 20 years following Bligh\'s campaign the term \\\"the Ashes\\\" largely disappeared from public use. There is no indication that this was the accepted name for the series, at least not in England. The term became popular again in Australia first, when George Giffen, in his memoirs (With Bat and Ball, 1899), used the term as if it were well known.</div>\"}', '2020-06-22', 'komal.amrutkar@cumminscollege.in', '2020-IN-07-Cricket_EN', 102001, 60),
(91, '{\"caption\":\"Thunderbolt\",\"background\":\"<div style=\\\" font-family: Arial;\\\">\\n\\n<span style=\\\"fontWeight:bold\\\">Question: \\n\\n</span>Which country is known as Land of Thunderbolt?</div>\",\"explanation\":\"<div style=\\\" font-family: Arial;\\\">Bhutan is called Druk Yul - Land of Thunder Dragon. Because of the violent and large thunderstorms that whip down through the valleys from the Himalayas, Bhutan is known as the Land of Thunder Dragon. The sparkling light of thunderbolts were believed to be red fire of a dragon.</div>\"}', '2020-06-22', 'komal.amrutkar@cumminscollege.in', '2020-IN-08-Thunderbolt_EN', 102001, 61);

-- --------------------------------------------------------

--
-- Stand-in structure for view `trial4`
-- (See below for the actual view)
--
CREATE TABLE `trial4` (
`Competition` varchar(50)
,`Age Group` varchar(30)
,`StuID` int(11)
,`Gender` varchar(100)
,`Question No.` int(11)
,`ANS` double
,`Corr` double
,`Response Type` varchar(9)
);

-- --------------------------------------------------------

--
-- Table structure for table `usr_role`
--

CREATE TABLE `usr_role` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(20) NOT NULL,
  `RoleDescription` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usr_role`
--

INSERT INTO `usr_role` (`RoleID`, `RoleName`, `RoleDescription`) VALUES
(1, 'Admin', 'Administrate website\r\n'),
(2, 'Coordinator', 'Teacher of School'),
(3, 'Student', 'Participant of Challenge'),
(4, 'Author', 'Question Translation');

-- --------------------------------------------------------

--
-- Table structure for table `usr_user`
--

CREATE TABLE `usr_user` (
  `last_login` datetime(6) DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `loginID` varchar(255) NOT NULL,
  `password` varchar(500) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `phone` varchar(128) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `created_on` date NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `modified_on` date NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  `gender` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usr_user`
--

INSERT INTO `usr_user` (`last_login`, `userID`, `username`, `loginID`, `password`, `birthdate`, `phone`, `email`, `created_on`, `created_by`, `modified_on`, `modified_by`, `gender`, `is_active`) VALUES
('2020-06-27 18:50:44.274788', 1, 'Komal Amrutkar', 'komal.amrutkar@cumminscollege.in', 'Z0FBQUFBQmU3OWJHMDNkRVJrRnpSV0VzUHdnRWYwTkg0Znk5R2hELVdpU1diSDZScDRZNWlxcGNTSkl2YkE4ZVNwYzBlMFA2MTlPNm5RaUNzd2lzazduUjdubHJYNS1DbGc9PQ==', '1999-05-27', '+919089067856', 'komal.amrutkar@cumminscollege.in', '2018-01-03', 'komal.amrutkar@cumminscollege.in', '2020-06-22', 'komal.amrutkar@cumminscollege.in', 100002, 106002),
('2020-05-07 17:06:18.166026', 2, 'Shreya Bhat', 'shreya.bhat@cumminscollege.in', 'Z0FBQUFBQmVxXzF5QkMwclIzWGU3U25LcmRYR1JYVzVMYWM2S2ZVQmo1ck40SGZDek52TFM1YkJNbDh6NFQ4aFZPQUxLWTg1cF9pY3hsSTdwZzNrOFF4Q09RZ2ZSc2ZTSlE9PQ==', '1999-01-14', '+919807865743', 'shreya.bhat@cumminscollege.in', '2018-01-03', 'komal.amrutkar@cumminscollege.in', '2020-05-01', 'komal.amrutkar@cumminscollege.in', 100002, 106002),
(NULL, 3, 'Ayushi Naphade', 'ayushi.naphade@cumminscollege.in', 'Z0FBQUFBQmVxXzN6Qmw2NkxwR2dvUFlLaFAwUDdLblg1MjUtdUdXVTdOVW0zSnBoRm1KYUhRZ3FvOFlET2VNdU9XWW5UM1poc2VTSWlwNzk3Nlh3Rnhnd012cXJqczJiNmc9PQ==', '1998-01-09', '+917890697219', 'ayushi.naphade@cumminscollege.in', '2018-01-03', 'komal.amrutkar@cumminscollege.in', '2020-05-01', 'komal.amrutkar@cumminscollege.in', 100002, 106002),
(NULL, 4, 'Namrata Mahankal', 'namrata.mahankal@cumminscollege.in', 'Z0FBQUFBQmVxXzVVdnhDTHFjeXRiS0hYdFJRV0ZZeGg4cUIwNkllazVDdmpzOVpJRFczY0tmczFDT3cweXlLbFdVNjQ5Y0trd2JfTzJRbnlsVHQ1NHpWUHpHbVRrTllBMWc9PQ==', '1997-09-08', '+918907986594', 'namrata.mahankal@cumminscollege.in', '2018-01-03', 'komal.amrutkar@cumminscollege.in', '2020-05-01', 'komal.amrutkar@cumminscollege.in', 100002, 106002),
(NULL, 5, 'Anamika Birhade', 'anamika.birhade@cumminscollege.in', 'Z0FBQUFBQmVxXzd1cmhqU0ptT0hObDdQYm5sNzI5TTViQjhwazhtMlduN3BiRXVDNnhhSGtSUG5Ka3FlbUdUY0xwSGhiY2xxczBqdHhmX2FMV2ZMeGI5QlJMYzRvYmphTEE9PQ==', '1998-07-21', '+919137890658', 'anamika.birhade@cumminscollege.in', '2018-01-03', 'shreya.bhat@cumminscollege.in', '2020-05-01', 'shreya.bhat@cumminscollege.in', 100002, 106003),
(NULL, 6, 'Prajakta Jagtap', 'prajakta@gmail.com', 'Z0FBQUFBQmViNzNld0Y4ZE1wb0p2N21raTFpN2hDZklRTG5WODQ5NzJhUEJJckl6NlRERHItSjk3d190YmItZDVRVFBKRFRRQ3U5NE03eDRIakVCWHVfcV9Ob1NVbEVMWWc9PQ==', '1996-06-16', '+918907901457', 'prajakta@gmail.com', '2018-02-05', 'komal.amrutkar@cumminscollege.in', '2020-06-20', 'komal.amrutkar@cumminscollege.in', 100002, 106002),
(NULL, 7, 'George Richards', 'george@gmail.com', 'Z0FBQUFBQmViN19rbzlBc1Uycl9tRlpoYmRObUFiSXdicnY1MFVwR0hzaVlyQXMxZnZPWXBCZXhMYU40WHJhUERfV196bjl4SVBFN2ItTUhIMGpIbTY1eGhXTmZwS05ZaFE9PQ==', '1995-03-12', '+916789000000', 'george@gmail.com', '2018-04-09', 'komal.amrutkar@cumminscollege.in', '2018-04-09', 'komal.amrutkar@cumminscollege.in', 100001, 106002),
(NULL, 8, 'Omi Jaiswal', 'omi987', 'Z0FBQUFBQmViOEM4RUl5X1g3dTBHYTlsTUpGU3NpdDVqUVFLVnJvaUptU29OZ2lfVUc1Y1ZsbVdlcjNfVWV5eTlZZGhlMzNpd1BuRm1pZzlxZjd5NEtKRjdJUjY0dmx0dVE9PQ==\r\n', NULL, NULL, NULL, '2018-04-16', 'prajakta@gmail.com', '2020-06-20', 'komal.amrutkar@cumminscollege.in', 100001, 106002),
(NULL, 9, 'Kunal Chaurdiya', 'kunal123', 'Z0FBQUFBQmViOEJHZVJraXFjQ3FRSkd2N1B6WXlaeEpmZjh6WTJ5S1RZU1BQZF9uNkh6UkQycGR6UUQ4cW9jemhRamZONS00cDl5VS1ncEw0LVR5cnJiaHBvOThYVDloWlE9PQ==\r\n', NULL, NULL, NULL, '2018-04-16', 'prajakta@gmail.com', '2019-02-07', 'prajakta@gmail.com', 100001, 106002),
(NULL, 10, 'Janhavi Kulkarni', 'Janhavi238', 'Z0FBQUFBQmViOFcxUHBkY3gtNnNvcmZEcnlnZjZYSzVMV1Z2aHo2VHVBSXFURnZ5X0w4blcxZU4wRTU1NHpDLUg3d1VOZUxaN3dxTUpEVDVGWkxXV01zZDFleWNqVm1WWWc9PQ==\r\n', NULL, NULL, NULL, '2018-04-16', 'prajakta@gmail.com', '2018-04-16', 'prajakta@gmail.com', 100002, 106002),
(NULL, 11, 'Parag Parekh', 'Parag123', 'Z0FBQUFBQmViOFRZUkNmdkxzb3hRcElFS09aODR3RzEzSWNkTDUtTmQ4c3VOYWtVMzdIcVp6SkVSclh2SHQ4UG9HLU9UTm4zS2RzMTlsV1ZtcWNzMlU2THY0Uy10T3dnNVE9PQ==', NULL, NULL, NULL, '2018-04-16', 'prajakta@gmail.com', '2018-04-16', 'prajakta@gmail.com', 100001, 106002),
(NULL, 12, 'Poorva Chaudhari', 'PoorvaC236', 'Z0FBQUFBQmViOFlqY1YwWm5HWGZvQ2Z1UXdrMTRqQldCdUtTM2xjVU1OUjY1Q1RpcXgtR3c3VGtIdklBczFIeGc5NWhXYjJoRnI3ZVJqVXVLSWZyYUdrdDVPUDMtaHEwUUE9PQ==', NULL, NULL, NULL, '2018-04-16', 'prajakta@gmail.com', '2018-04-16', 'prajakta@gmail.com', 100002, 106002),
('2020-06-12 16:26:42.476979', 13, 'Kasturi Sansare', 'KasuR456', 'Z0FBQUFBQmViOGVBNl9PNWFPa3dndWVxZHRXdG5HRHF1YkNKQTVyMWVXeEVXNlJVUmxyZU5hQkRaRUlDT1VXUnRVMXhHTXd0ZXZhN2V5OXdzU1RoM2JiYVdSa0FjeHFhOFE9PQ==\r\n', NULL, NULL, NULL, '2018-04-25', 'george@gmail.com', '2018-04-25', 'george@gmail.com', 100002, 106002),
(NULL, 14, 'Anya Mahajan', 'Aanya762', 'Z0FBQUFBQmViOGk1RDk1ZUI5MUUzbkp2dVBkdVVtQUNUcjc3dEQzMXZwVXZTblZncm5Fam94VW45czNMaWRSbWM4MGY5aXExOXQ4OGtiUENoZHFiM1o3eExacWdZUFViQWc9PQ==\r\n', NULL, NULL, NULL, '2018-04-25', 'george@gmail.com', '2018-04-25', 'george@gmail.com', 100002, 106002),
('2020-06-22 18:31:02.390535', 15, 'Muskan Nechalani', 'muskannechlani@gmail.com', 'Z0FBQUFBQmU4WjRSVFl4eEtCNWpRMFREeEJ4UUN3a1Vic21EVDUzbm5mSm5PYzBlYjVJV2EzT1k3QXRQb0EtWDZRbWNNWEIzem0yZUNZZFZ4Q0MzWXJ6NHhETHZqUXp0OWc9PQ==', '1998-06-14', '+918790568302', 'muskannechlani@gmail.com', '2018-05-01', 'prajakta@gmail.com', '2018-05-01', 'prajakta@gmail.com', 100002, 106002),
(NULL, 16, 'Tanuj Shinde', 'Tanu2S81', 'Z0FBQUFBQmViOGFxUVc4U3FHN1lLQkRmUDJxZGFlaUZpTHA2a3VpWDVJaFJlR2lMazBZM3NKQ21xeF8ta0trSFNPVXlKaThhVGxPZGdvSi1GUVhFRzk5d3VJNlZfV2lXS2c9PQ==\r\n', NULL, NULL, NULL, '2018-05-03', 'george@gmail.com', '2018-05-03', 'george@gmail.com', 100001, 106002),
(NULL, 17, 'Rohan Mutha', 'RohanM156', 'Z0FBQUFBQmViOGNpaW9PN0xaZF9KSEVqQ1BGSmlIOHdoc0dKcGVyRzZ6Y0JieUpUSWJ1ajU4NkpBb0xvTGlQMm1XWVBZZUIxOG1OV2JvMDZpQTcxVVpqTGdJMGlfdTgzRnc9PQ==', NULL, NULL, NULL, '2018-05-03', 'george@gmail.com', '2018-05-03', 'george@gmail.com', 100001, 106002),
(NULL, 18, 'PriyaDarshini Deshmukh', 'pdeshmukh2', 'Z0FBQUFBQmVhU1JZMlZuU0NuTy0xVS1MMnY3V0c2U25POERkbWIycDU3anVKMjRzVHQ0Z091OUJteDF2MjZIbWRMU3hoUFRubkk5c0tseFc2Y0M5T0ZiMGx1R1N5cVh3U2c9PQ==', NULL, NULL, NULL, '2018-05-03', 'george@gmail.com', '2018-05-03', 'george@gmail.com', 100002, 106002),
(NULL, 19, 'Hitesh Lalchandani', 'hlalchandani', 'Z0FBQUFBQmVhU1VBdENDQnNnWTBRbkpDcXdnWTdPV21sYWFqZ2ZDOFJ1WTJMWWJsc3ZacFpBMV9tR0ktSnlKaEJueDFObkd3cGJ3c1pXc0ZEWHdQbGZhMXkwTDh1bDlORWc9PQ==', NULL, NULL, NULL, '2018-05-03', 'george@gmail.com', '2018-05-03', 'george@gmail.com', 100001, 106002),
(NULL, 20, 'Hetal Desai', 'hdesai45', 'Z0FBQUFBQmVhU2pndVBOS0NMMU9QZW5YQmYtYXZTazRyZ3RWRU1nbldMLWxpQU1mVzllQlBBeU5FLWdRdGZoVy1oZ09wNjJTY1BfdG0zNTBrbVg1VjZvM0NwZURuYkkwS3c9PQ==', NULL, NULL, NULL, '2018-05-03', 'george@gmail.com', '2018-05-03', 'george@gmail.com', 100002, 106002),
(NULL, 21, 'Akansha Patil', 'apatil', 'Z0FBQUFBQmVhU2QwcDBsc1dLYXQtRVhTamVkZWY4YzlGVTNkd0l0MENDNkg5ZTJfT1RjUTluejROYVdvMXFSWXptbzkxMWtteFo2OTlaRjZ3bkNmWjZNbXpVN0pIOWtfSlE9PQ==', NULL, NULL, NULL, '2018-05-03', 'george@gmail.com', '2018-05-03', 'george@gmail.com', 100002, 106002),
(NULL, 22, 'Ojasya Mane', 'OjuM709\r\n', 'Z0FBQUFBQmViOHBhREhfSzdQVFUweFNBUkgtbzR0eGVpSE5KWUd5cVhOVjBxNmpQQVdpNk13MWFlbWk1dUdrMzdkSlZFTEUtTTZnQjFadUQ0aFRSVVBqX0dTOG5zWE5LdHc9PQ==', NULL, NULL, NULL, '2018-05-03', 'george@gmail.com', '2018-05-03', 'george@gmail.com', 100001, 106002),
(NULL, 23, 'Jatin Patel', 'Jatinp123\r\n', 'Z0FBQUFBQmViOGtTcWhmdXVMSjBMRHpqYWVQaHktMDVMcW5SRjNRQldaSjRMZDRSQ0lwNGJRWU1IcWF6Z0c4b1dvUnoyaTdhc0tWOURRMW9DY3hzSWxYOTVpZXJQbndDVnc9PQ==', NULL, NULL, NULL, '2018-05-03', 'george@gmail.com', '2018-05-03', 'george@gmail.com', 100001, 106002),
(NULL, 24, 'Amol Pathak', 'apathak47', 'Z0FBQUFBQmVhU2QycXlycmVlMHJhNE1hVkhmTk9lQmJTRy1oeXM2Wkl3NXl0RV9MWUpYM09ELXliQUo0b1c1S1BySU1wZWZER2E5QUNHWkZlUU16Zl9WSHprYWdCV0d5eHc9PQ==', NULL, NULL, NULL, '2018-05-03', 'george@gmail.com', '2018-05-03', 'george@gmail.com', 100001, 106002),
(NULL, 25, 'Tanay Patani', 'tanay290', 'Z0FBQUFBQmViOGhLWXpOUGpKeTdYVkpxZGpQeGdNR21MTkh1bHZBa0RheF9xbTVIeWthTjYxUG1aMnFPSmZKZ0ZMdk5LZVhXd205dWFuRmItRllKS29vWnBsU0RERTl3Znc9PQ==', NULL, NULL, NULL, '2018-05-03', 'prajakta@gmail.com', '2018-05-03', 'prajakta@gmail.com', 100001, 106002),
(NULL, 26, 'Lavanya Singh', 'Lavanya608', 'Z0FBQUFBQmViOG5ycjhrSkdjNzdmcE1tc0o5TzJreVBWYmVOQjNOUUNJWFV6Q095T1FKNnBPdzlqTmdHZFhoLVpxWUhmYXVMWHFpU211MFVsbm4wRXJCVXNKemVYM0dLTVE9PQ==', NULL, NULL, NULL, '2018-05-03', 'prajakta@gmail.com', '2018-05-03', 'prajakta@gmail.com', 100002, 106002),
(NULL, 27, 'Jatin Patil', 'Jatinpl123', 'Z0FBQUFBQmViOGtTcWhmdXVMSjBMRHpqYWVQaHktMDVMcW5SRjNRQldaSjRMZDRSQ0lwNGJRWU1IcWF6Z0c4b1dvUnoyaTdhc0tWOURRMW9DY3hzSWxYOTVpZXJQbndDVnc9PQ==', NULL, NULL, NULL, '2018-05-04', 'muskannechlani@gmail.com', '2018-05-04', 'muskannechlani@gmail.com', 100001, 106002),
(NULL, 28, 'Harsha Ahuja', 'hahuja60', 'Z0FBQUFBQmVjdW8xbWdMVW1VdHJpeENYY05wamlDUDdabUd6UkQ2ZldoNU1tQmMtQVE3YU5IYWtYSTVCZEpKYVZLd1FCb0ZNajBIS1RPa0hHM2lldXBEcklhME51NDZoTUE9PQ==', NULL, NULL, NULL, '2018-05-04', 'muskannechlani@gmail.com', '2018-05-04', 'muskannechlani@gmail.com', 100002, 106002),
(NULL, 29, 'Neha Jaiswal', 'njaiswal', 'Z0FBQUFBQmVjdW80X1lRWXQwWVJ2SG5SQ2U0c3Z2RE9zR1JWUlVsNnZMdjVYUU5ST0M5NXR0aVBlUjdTQXNmeFJOblZMVzREZTN3Y3Q3d25od1NHZDBQOWk0b3VNZ3dkVmc9PQ==', NULL, NULL, NULL, '2018-05-04', 'muskannechlani@gmail.com', '2018-05-04', 'muskannechlani@gmail.com', 100002, 106002),
(NULL, 30, 'Ashmita Shah', 'ash234', 'Z0FBQUFBQmVjazR5cC1hR1pRUmRyVW5KN0tYUFprY28xUEFwUEhnUlRMX2ttbVJIZmYwUVpObjlxd3QzQmM3R3BNcDNzUm5uTlk5dENtZlJxbmR4SHdoR0ZDUzBydnlqX3c9PQ==', NULL, NULL, NULL, '2018-05-04', 'muskannechlani@gmail.com', '2018-05-04', 'muskannechlani@gmail.com', 100002, 106002),
(NULL, 31, 'Akash Rathod', 'arathod', 'Z0FBQUFBQmVjazM2VTVJaW1lcWZWS1NWdmFTNkt0TmhMUkZuV0s4U3RHVU12NGZ2UlhiZERKRXhPZlljX0N2ZXZGd19kUVpZNDVQb2JGVTFZdExvRWpfaENoOHlRTWgyeEE9PQ==', NULL, NULL, NULL, '2018-05-04', 'muskannechlani@gmail.com', '2018-05-04', 'muskannechlani@gmail.com', 100001, 106002),
(NULL, 32, 'Rutuja Patil', 'rpatil', 'Z0FBQUFBQmVjMWFzdzVkcjE5bGJxT2hoU2xCa1R2dE5VSmdUMFlnZDd0S295N0V6enkzSGNkT3ZfTTNvZmFpdm9EZFJEQkMzdDQwWXpKeTZTdnhqbUZRY0JnNWpaOThUaEE9PQ==', NULL, NULL, NULL, '2018-05-04', 'muskannechlani@gmail.com', '2018-05-04', 'muskannechlani@gmail.com', 100002, 106002),
(NULL, 33, 'Soha Parasnis', 'soha.parasnis@cumminscollege.in', 'Z0FBQUFBQmVyQ3NUTmRPc0QxZWhqSklhbGw4Y2p0WlgtUGpZZGpzaElBOWxjN2dOU1BKRFpJRnFNNnhrOWtBUHBJbW16SUlyaTBkSlVScEZsTmJvQ0EwdG52TXFzSFk3Q3c9PQ==', '1998-11-14', '+917890989608', 'soha.parasnis@cumminscollege.in', '2019-01-05', 'shreya.bhat@cumminscollege.in', '2019-01-05', 'shreya.bhat@cumminscollege.in', 100002, 106002),
(NULL, 34, 'Suyog Wankhede', 'suyog@gmail.com', 'Z0FBQUFBQmViOEVsY21hc2xydnBlUmJUX3d5Sk00QWlZTnd0Mk5PQnVNVDk2amFZNTRxSkx0OWwzelNBNzVTZ2tiMnVfNkY2NlpScVdaV293QXZpeHg5QXd3R1piRllNRWc9PQ==', '1996-10-08', '+919028765492', 'suyog@gmail.com\r\n\r\n', '2019-02-07', 'komal.amrutkar@cumminscollege.in', '2019-02-07', 'komal.amrutkar@cumminscollege.in', 100001, 106002),
('2020-06-02 13:23:50.212357', 35, 'Rama Swaminathan', 'Rama@gmail.com', 'Z0FBQUFBQmViOEdsY3ZqWHJhR3pmUGJFMXU1dElrRksxSGRYTnRjMkR1a29mMVJCZXY5akR5RXVZZTItb2ZkMVdKZDgxbXR6QzZCbmlHUUw0MEI0cFZVdUlIblJRMjlsWEE9PQ==', '1992-08-17', '+918765467532', 'Rama@gmail.com', '2019-02-08', 'komal.amrutkar@cumminscollege.in', '2019-02-08', 'shreya.bhat@cumminscollege.in', 100001, 106002),
(NULL, 36, 'Netraja Chavhan', 'netu234', 'Z0FBQUFBQmVjMVpVYXE0SFRFSUs1THJHUEpyTTdPRWRUMWw2SVhLamZSRVhQWnB2b1ZQRnlzT29ubkw3ZS0zRERXcnNNcTBUWTlBOXVKTVY4ZjBNeXE0bTBiZXVMR0wxeWc9PQ==', NULL, NULL, NULL, '2019-02-12', 'suyog@gmail.com', '2019-02-12', 'suyog@gmail.com', 100002, 106002),
(NULL, 37, 'Amol Jaglan', 'ajagan', 'Z0FBQUFBQmVkSFdOaHZVam82cXAyQ2lldkpSRFZERmhKNllmZkRBak9FQ3ctN0tQbzlqbTVrRzdNYlBqZVpsbjhtV1lTS05WWl9hY3ZLeGVqelczWUk2WTlEd0RGazRTM1E9PQ==', NULL, NULL, NULL, '2019-02-12', 'suyog@gmail.com', '2019-02-12', 'suyog@gmail.com', 100001, 106002),
(NULL, 38, 'Pooja Panjabi', 'poojuapb345', 'Z0FBQUFBQmVlenRoRGVzdnJrNFF6V2NDVDBid1RXcnc5VGlUQ0R4TGZZRjVkT2dIQjF5ejRHODZsQ2ZQWUVaeEhvZTl5TlVhM0RHMExOaTh1UHZKTXpFbUlvWHJWS0dkZEE9PQ==', NULL, NULL, NULL, '2019-02-12', 'suyog@gmail.com', '2019-02-12', 'suyog@gmail.com', 100002, 106002),
(NULL, 39, 'Niharika Jain', 'nihu789', 'Z0FBQUFBQmVlenYxbjN1YzQ5ZVZ2Q19sVVFXeEs1SzdYWVdJNVVHVzVoZklXZTh0MXdubGJfZ2xrbWozWlp6ZGM4SWpvMXh2VWFMWVA3RTVfYkRhUnZ1MDRWS2laazk5amc9PQ==', NULL, NULL, NULL, '2019-02-12', 'suyog@gmail.com', '2019-02-12', 'suyog@gmail.com', 100002, 106002),
(NULL, 40, 'Tejas Kotkar', 'tejk980', 'Z0FBQUFBQmVlendZc3pXS1dQWW1tRElIQ0xuVWgwNS1zQUFhSzROYjBVQlo3WTN3d25zWTY0ZnB0eTlobEFvaXlBV3JxN0ZZdGRpdEtWNjFSZ3VncURpYlRyWXRJSllKZHc9PQ==', NULL, NULL, NULL, '2019-02-12', 'suyog@gmail.com', '2019-02-12', 'suyog@gmail.com', 100001, 106002),
(NULL, 41, 'Nitika Jangar', 'nitu781', 'Z0FBQUFBQmVlencyRzhHaWRlcWJkbTlyaC1hSTNna0I5dGFDY0tid3B2NlNDVnZSVm5lRXZmSWRhZURTdEdaV3BqOEZKLTNNTFhZN2NGZ0p3SVVYcW1OcUFQQUNvRVktbVE9PQ==', NULL, NULL, NULL, '2019-02-12', 'suyog@gmail.com', '2019-02-12', 'suyog@gmail.com', 100002, 106002),
(NULL, 42, 'Reeta Shedge', 'Reeta@gmail.com', 'Z0FBQUFBQmViOElENnVZQnc0UDZzVUJRUXU1RG1PWXNnVGdnaERjOS0zRjE2bGprTFR0bnYzQUttSGh1QWRrdFpPRlF5Qy1EMlFOT3lDWEZzUEMyNVdzemw3V2RmMW9ya3c9PQ==', '1992-02-14', '+917658957907', 'Reeta@gmail.com', '2019-03-09', 'komal.amrutkar@cumminscollege.in', '2019-03-09', 'shreya.bhat@cumminscollege.in', 100002, 106002),
(NULL, 43, 'Sahil Durgiya', 'sdurgiya', 'Z0FBQUFBQmVlejFSYmNBeWREWHcycS1SaHJ1aU03QnB3R1A5ckRTSVlPOTAzeW0tdV9KbEMwVkxOQ3dEMGNKLTVSOUJwR1ctMGx0R2N2YklxUnhocGZfSHZLUHBTd1FqSlE9PQ==', NULL, NULL, NULL, '2019-03-15', 'Rama@gmail.com', '2019-03-15', 'Rama@gmail.com', 100001, 106002),
(NULL, 44, 'Nisha Ahuja', 'nishu678', 'Z0FBQUFBQmVlejFVNS1vWDh2NVFaZ01iWlRwX2dEWjQ2MnduY3RURVJkYmNiaE54UmlFaDBpdmt1NUVJbThLQUxhdDhSQmtaVzBqM1ROUFo2YzlaeWhwRFhFaXNIdTVRdUE9PQ==', NULL, NULL, NULL, '2019-03-15', 'Rama@gmail.com', '2019-03-15', 'Rama@gmail.com', 100002, 106002),
(NULL, 45, 'Sona Katyar', 'sona590', 'Z0FBQUFBQmVlejRlX1llTnhXSG5Vd2FLTFh4cHFydXV3aGxSVXJVQ1BLMkNMalR1ZmM2aEY5eFBETFRaYjhQRG5La3pQclIxVGRxZWpMclFZVzVUb0pkUm9rUURZb2I3UkE9PQ==', NULL, NULL, NULL, '2019-03-15', 'Rama@gmail.com', '2019-03-15', 'Rama@gmail.com', 100002, 106002),
(NULL, 46, 'Naira Rohida', 'nairr123', 'Z0FBQUFBQmVlejQ5U1pHYlVVeXdlSC1KdUZmbkY1cmpRZ0dmRkpYdUYyLWlyY0RyeXBQUWN0Q01iVjFQNUNDYmE3aFpjN2piS3JobWRnUXh0c2VuOU1NWTgzWTE0bGNQeUE9PQ==', NULL, NULL, NULL, '2019-03-15', 'Rama@gmail.com', '2019-03-15', 'Rama@gmail.com', 100002, 106002),
(NULL, 47, 'Rahul Chawla', 'Rc437', 'Z0FBQUFBQmVlejhydkJEZU5oVXJUY01FTHlyMnprbkZ5bVFJVk1zUTVGdGl1aHhTYWFsSXlxbE1EUVl5U2xodVZDS1NhTjNPZWw3TzZwVVNCUzdpbzhRcW1XT0MtbHg3T0E9PQ==', NULL, NULL, NULL, '2019-03-15', 'Rama@gmail.com', '2019-03-15', 'Rama@gmail.com', 100001, 106002),
(NULL, 48, 'Priya Sinha', 'piyu345', 'Z0FBQUFBQmVlei1OZ09jQVY1REFPYlBONktQV2ZWU05CRGstUXdNQjRPZVRoN0hXYlFSdzJLRERSTTNlbDdGd0N1MW5BM183MkZJOGJQcnFnR1oyUTE0NlVhbURQaXdDU2c9PQ==', NULL, NULL, NULL, '2019-03-15', 'Rama@gmail.com', '2019-03-15', 'Rama@gmail.com', 100002, 106002),
(NULL, 49, 'Aditya Angane', 'aangane', 'Z0FBQUFBQmVpRlRESjFjZGxFb3gwdWNVVlFlWklFRlhkOFphQXdHZG9IYWtDMTNYOHg1Mmc3Sjdya0RlVG9SOXZTOXB5OWlmTXpCTVhRaEJkaHZJRXpQSm5IQjJkaEVzUmc9PQ==', NULL, NULL, NULL, '2019-03-15', 'Rama@gmail.com', '2019-03-15', 'Rama@gmail.com', 100001, 106002),
(NULL, 50, 'Vaibhav Aher', 'vaher', 'Z0FBQUFBQmVpc0YtY25sX0NQOFN1TEhCZDVtTXkxWkZFVGlyYjZoaEk5T05POW9ZMlJBSUdQODBBVE5Ha0NQSFp0UFdDV0dvaW5aZS15RW9NcFd1NEJ0cWo4RG5TSE05RXc9PQ==', NULL, NULL, NULL, '2019-03-15', 'Rama@gmail.com', '2019-03-15', 'Rama@gmail.com', 100001, 106002),
(NULL, 51, 'Rucha Nandgirikar', 'ruchaa.nandgirikar0998@gmail.com', 'Z0FBQUFBQmVhU01tZ0lEbzRNVDRyNEdqV2hCWG5FSlBEQWV6cjMtVmpiNEx3Rnl5dTVURHZVWmU1NzhlYWhYVjRRR3VOQXFZZE5mQ1J0RzI5ek4zSm00Y1JPVFlLX2lTcXc9PQ==', '1998-11-08', '+918656666666', 'ruchaa.nandgirikar0998@gmail.com', '2019-04-06', 'george@gmail.com', '2019-04-06', 'george@gmail.com', 100002, 106002),
(NULL, 52, 'Roshan Ahuja', 'rahuja', 'Z0FBQUFBQmVlejFXMV93YXliTzdXSnlJTEkxRWJlSElsem9mSFI2QjlvSkwtUTkteHhuZzVGREZtMnVJVkVEcGI2QlpBNGMzcXlwNDk0YWdUejRWS1l2djR4djFVdEZsbkE9PQ==', NULL, NULL, NULL, '2019-04-15', 'prajakta@gmail.com', '2019-04-15', 'prajakta@gmail.com', 100001, 106002),
(NULL, 53, 'Priyankita Ahire', 'pahire', 'Z0FBQUFBQmVpc0dBU2N6Skd2MjBhRzdKWUZLX1ZMTTJmSzFEdVVpVTE3S0FwU25MYXplWEhIbmdmYkR0S2l4b3VZclJKXzVQVHJ5RzlyaHZfclZ6WkJrOUpSdDVJUHB1bkE9PQ==', NULL, NULL, NULL, '2019-04-15', 'prajakta@gmail.com', '2019-04-15', 'prajakta@gmail.com', 100002, 106002),
(NULL, 54, 'Isha Bakre', 'ibakre', 'Z0FBQUFBQmVpc0dCUUlFVWN5U3RpSDl2MXdFYzNzQ2JGSU1NRlFyUmNnc1BJeXFwZEhrSDY5Mkh0UUdReXdaUlhBWHY3QW9hWlJudVRnYlozVVlvRkZTZ1ZTbVRrU0ZKWEE9PQ==', NULL, NULL, NULL, '2019-04-15', 'prajakta@gmail.com', '2019-04-15', 'prajakta@gmail.com', 100002, 106002),
(NULL, 55, 'Omkar Pawle', 'opawle', 'Z0FBQUFBQmVpc0dwWVJBYTdmVGJKWkVJVHB3M3FmS0c0bWxQTXRTdU05X3czUElCQmJLZWxNQnZhQm1fcjZsX2dhX1F0SmNmQjRrMmtxWmlUNTdKOEJ4SzJaY0FTSGlFWXc9PQ==', NULL, NULL, NULL, '2019-04-15', 'prajakta@gmail.com', '2019-04-15', 'prajakta@gmail.com', 100001, 106002),
(NULL, 56, 'Bhagyashri Santani', 'bsantani', 'Z0FBQUFBQmVpc0dEd1I3N183ZWNqanRaQTQxOEg3SVo1NXpQRkdudnR6STZOLVJvaHJ2bUg2STl6OVlRUFBpYUN6TGtfYXZnNGtPV0RFOGd5YXI4RklrbGYyRkdZRHlFZFE9PQ==', NULL, NULL, NULL, '2019-04-15', 'prajakta@gmail.com', '2020-06-20', 'komal.amrutkar@cumminscollege.in', 100002, 106002),
('2020-06-11 11:25:21.903376', 57, 'Akshata Bondarde', 'abondarde', 'Z0FBQUFBQmVpc0dFajZVaFdURlF2M2pmUWp6cmRvN3owZkxDQVNpQXN4azhEeVdVMXE4TnhZcHhuNkNnU0pNOXhVWERDWUotNlU2NWkwWllta1FDV3JqNExkbTNPUGNsRGc9PQ==', NULL, NULL, NULL, '2019-04-16', 'Reeta@gmail.com', '2019-04-16', 'Reeta@gmail.com', 100002, 106002),
('2020-06-22 19:11:20.927020', 58, 'Anjali Dagadkhair', 'adagadkhair', 'Z0FBQUFBQmVpc0dHUi1nVDlEeVZoWUNCRVlmbEg2RjFRZ3FwU3JZWGVsRkRNYUNxelQ1T1Y0cXdIdlJKdTBOSGRyM2Rvb1hQWDZjallSZEJVN1FPTXMzV2FiMjB2cmZUVUE9PQ==', NULL, NULL, NULL, '2019-04-16', 'Reeta@gmail.com', '2019-04-16', 'Reeta@gmail.com', 100002, 106002),
(NULL, 59, 'Harshal Dagale', 'hdagale', 'Z0FBQUFBQmVpc0dIaElIa0RHSDJNWVJHVkNUNG9KQVpQY0wxWTFpTGFGZmtMeGZVYVU5ZHBwZGhXMktnRm1Qb3YzSVllaXJmOU8wSWhKeGlsUzZxRzZyVHpOeXRJS2t0SGc9PQ==', NULL, NULL, NULL, '2019-04-16', 'Reeta@gmail.com', '2019-04-16', 'Reeta@gmail.com', 100001, 106002),
(NULL, 60, 'Rashmi Deshmukh', 'rdeshmukh', 'Z0FBQUFBQmVpc0dJZ25FaWoyZjVwRTNDRVB1eDhiSVh0LTZxNHRJNlRPN0JZMHRUaDd2WEp3Nm5GRUR2N1Z6d0x0TURXaGJkdDJBTVVkUFJKZzIxQVQ0dDh3eFJ3M3ItRnc9PQ==', NULL, NULL, NULL, '2019-04-16', 'Reeta@gmail.com', '2019-04-16', 'Reeta@gmail.com', 100002, 106002),
(NULL, 61, 'Parag Ingle', 'pingle', 'Z0FBQUFBQmVpc0dyTF85QnFPOHdTb3RSOVpfTERKZTdITlBSNy15VmpJaElXcGx2c0ROYVRCWjVwVWpFN09CYlp4SUhkRlZCRHgxN3hyNEdpenlSMXJfOGMyMVJJT1NCWXc9PQ==', NULL, NULL, NULL, '2019-04-16', 'Reeta@gmail.com', '2019-04-16', 'Reeta@gmail.com', 100001, 106002),
(NULL, 62, 'Sejal Jagtap', 'sjagtap', 'Z0FBQUFBQmVpc0dPLVYzX25ZT0xKSzRKTUZJOWdXeFJ3XzdWS1QzQ201c0hMTUsyNjZReElnQkVtT3J2MEMxMnFnS2tFN1RtSmZXREs2N2JzdzhVdkd1dTR3eTAzS3VKRVE9PQ==', NULL, NULL, NULL, '2019-04-16', 'Reeta@gmail.com', '2019-04-16', 'Reeta@gmail.com', 100002, 106002),
(NULL, 63, 'Nidhi Khare', 'nkhare', 'Z0FBQUFBQmVpc0dSN214MmlCYVJkNzNoR2Rtd0YwenBMclcwc2dFdlBSOVB5eHE0a3RlUmk1U3pHV2doZ1VCZUFYdldUR2ZDdFZOUWo3THlrRTdORlhnYllubFVrejhxV3c9PQ==', NULL, NULL, NULL, '2019-04-16', 'Reeta@gmail.com', '2019-04-16', 'Reeta@gmail.com', 100002, 106002),
(NULL, 64, 'Pratik Rathadiya', 'prathadiya', 'Z0FBQUFBQmVpc0dzMlRKRVhrWEN6dXRGelp5UXEtYjdOOWg4S1dwTjA5WDZ4NmNkYkRURjEtWUM1bzJneUVLUlN6eXZ5M3VZZW10U1RvUW9yUE5YRURSZ3cyS1M4ZzNEaWc9PQ==', NULL, NULL, NULL, '2019-04-16', 'Reeta@gmail.com', '2019-04-16', 'Reeta@gmail.com', 100001, 106002),
(NULL, 65, 'Mudra Gorte', 'mgorte', 'Z0FBQUFBQmVpc0dNWUNDZjdvclROU0l1ejhQcWxZWFpXZmN1cVJNMWtnUE1XZUpCcEc3am5OVzhGLVdXUlBJWTNxQzd4NjdWYzZ2TkdLVm45czRLNnhzSEFCdWpmZmEyUnc9PQ==', NULL, NULL, NULL, '2019-04-16', 'Reeta@gmail.com', '2019-04-16', 'Reeta@gmail.com', 100002, 106002),
(NULL, 66, 'Aakash Kulkarni', 'akulkarni', 'Z0FBQUFBQmVpc0dTTk9LWUJWbzdWT3d6Z2J5Vm51SjBaUFd5c0Vsc1VUZ0RYUWlRSDY3Um1XbkRmSmc1WE8yT21STnpXUVB6MC1td3FhOENGVHhVaVltb19Gemc4QnlmZ2c9PQ==', NULL, NULL, NULL, '2019-04-23', 'george@gmail.com', '2019-04-23', 'george@gmail.com', 100001, 106002),
(NULL, 67, 'Shreya Patil', 'spatil', 'Z0FBQUFBQmVpc0djdU1KdUlVUWk4YTNDUEwxQ0xFYjJzZDE3OUlFdmtDMDVqYnpERHlQcU83OElsSGIxNWoxR0U2cHN0MV9OOGZaT0QzcTlyYTZTeEoyQWRQZURoYXhZcFE9PQ==', NULL, NULL, NULL, '2019-04-23', 'george@gmail.com', '2019-04-23', 'george@gmail.com', 100002, 106002),
(NULL, 68, 'Rohan Raut', 'rraut', 'Z0FBQUFBQmVpc0d1Q1ZNR2pKVFNJeXZIclNzVXJkUENpOEZybjBIVEMwc0xfdi1aUjJxb0RHZjFneHRDcTh5RzNtdnM0MElCeTNKeVhUUzFOR2pkYW1aS3dlcFo5ZUNZaUE9PQ==', NULL, NULL, NULL, '2019-04-23', 'ruchaa.nandgirikar0998@gmail.com', '2019-04-23', 'ruchaa.nandgirikar0998@gmail.com', 100001, 106002),
(NULL, 69, 'Shruti Patil', 'spatil0', 'Z0FBQUFBQmVpc0dkVHd6STc2Wmg3Rmxqc1ZGOFY0bmh0bkZreHlFQkt2R0RYLUNydFRJWjZSa25fZWpwbl8wM2o4SlJJOEFiNnBWUFVybVBpaGZnYUFXMFVBaTdaRlAxUGc9PQ==', NULL, NULL, NULL, '2019-04-23', 'ruchaa.nandgirikar0998@gmail.com', '2019-04-23', 'ruchaa.nandgirikar0998@gmail.com', 100002, 106002),
(NULL, 70, 'Radhika Sethi', 'rsethi', 'Z0FBQUFBQmVpc0dmMXhWZ0FFWVM3VlBsMzFicmRCYXhleWZIeDF4WnlQLXF3OEZHRkR0TXdRODh2ZXZiLS01SnU3c2pyQ3ZhWnZaN2x5d182RGFzMEQ3dFFZWGZTVERoNGc9PQ==', NULL, NULL, NULL, '2019-04-23', 'ruchaa.nandgirikar0998@gmail.com', '2019-04-23', 'ruchaa.nandgirikar0998@gmail.com', 100002, 106002),
(NULL, 71, 'Virat Bhosle', 'vbhosle', 'Z0FBQUFBQmVpc0d2WDBkRGlNU1JYbldKNXFxQ3d1UjN6dG8wb1NCaVJsTk51U2VJdjZDV2xscF95MW9Wa0FmMjdxMi1QeUFzYzNuY0kyMDJqQnBZMjZQNXh4UGdlYUVfOVE9PQ==', NULL, NULL, NULL, '2019-04-23', 'ruchaa.nandgirikar0998@gmail.com', '2019-04-23', 'ruchaa.nandgirikar0998@gmail.com', 100001, 106002),
(NULL, 72, 'Aanchal Tulsani', 'atulsani', 'Z0FBQUFBQmVpc0dsNmJERGJLZmtsQnhpMVJWTVZDbmlHVW82dVpiVXZiZDN0dFhNOFhTYlBGTUFnVGt5RzBBMDB0b0tPcTU0eUItTUdZQ0NYbzBqQlRKMDhoQWxvd1YwaXc9PQ==', NULL, NULL, NULL, '2019-04-23', 'ruchaa.nandgirikar0998@gmail.com', '2019-04-23', 'ruchaa.nandgirikar0998@gmail.com', 100002, 106002),
(NULL, 73, 'Aditi Kela', 'akela', 'Z0FBQUFBQmVpc0dtcmM3dFRvNnpSRUhLQ3dJREpWR1JvdE5SLXh6N2F3RExVZUFUSHRDQ0hocmp1am5LTFNZMDdHTFlVOTR1Z2cwSWJKUW54YUhjUDMyNTNYSTZpNnRfU1E9PQ==', NULL, NULL, NULL, '2019-04-23', 'ruchaa.nandgirikar0998@gmail.com', '2019-04-23', 'ruchaa.nandgirikar0998@gmail.com', 100002, 106002),
(NULL, 74, 'Aman Salunke', 'Aman@gmail.com', 'Z0FBQUFBQmViOEtZb0RRb0xscEh3Yk5rQ1FHeW1KVTNjZ0hnS3gyenhVcE9weHBTclg3amNRZUQ0eF94WVVOSV9oTlR3NHl2ckluZjVLM1JVbnVLTnlBMHZhZTBjMjdHb1E9PQ==', '1989-12-23', '+919890876543', 'Aman@gmail.com', '2020-02-06', 'komal.amrutkar@cumminscollege.in', '2020-02-06', 'komal.amrutkar@cumminscollege.in', 100001, 106002),
(NULL, 75, 'Uma Kulkarni', 'Uma@gmail.com', 'Z0FBQUFBQmViOE1vUW04TnAyd2lZRWdMYl9DZkdWV1VscmJ3aWxlNU10aGdoY0NkY0c4b0x1aF85ZElKREN0RjBvX2czRG1ZTW9iNTAtQVBzMlEySkI2QXFIYmdENEFjN0E9PQ==', '1994-07-13', '+916789087453', 'Uma@gmail.com', '2020-02-15', 'komal.amrutkar@cumminscollege.in', '2020-02-15', 'komal.amrutkar@cumminscollege.in', 100002, 106002),
(NULL, 76, 'Jyoti Gujar', 'Jyoti@gmail.com', 'Z0FBQUFBQmViOFBTYkxZYUNBVE5aV0NZdm9uNy13WXhGZUU3VDVSQjF6OEd5Mndpc2dIb3laQ2ZQMnZubjFSUUdwZVBBVHRXQjlBdFRfX3FpcEg5Y1lta2ZWWlpTUm9hS0E9PQ==', '1988-11-05', '+919216348465', 'Jyoti@gmail.com', '2020-02-20', 'komal.amrutkar@cumminscollege.in', '2020-02-20', 'shreya.bhat@cumminscollege.in', 100002, 106002),
(NULL, 77, 'Raghu Anoop', 'Raghu@gmail.com', 'Z0FBQUFBQmViOFJtUnZhcUpkbnhvOXZsQmR0U2pvVVFJRzJ5NlZWMC1kNHZhZjRZMW5EWkpRN1d3WDVoal9oWjNTNG90MXlMTFRHYUUwUlpSTGM3YkV0elVmSi1LaXdabHc9PQ==', '1991-03-17', '+917890678950', 'Raghu@gmail.com', '2020-02-23', 'komal.amrutkar@cumminscollege.in', '2020-02-23', 'komal.amrutkar@cumminscollege.in', 100001, 106002),
(NULL, 78, 'Aadesh Satre', 'asatre', 'Z0FBQUFBQmVpc0dvWEtRcDNVNFdaS2MyQmg3eVZTRzlUM0htS256QXR4RS1HOTBpQkl3U2J6WUJrOWRxb1haQmk4amNZdzAyVkNHbE16R0FSQ1FjbUJTcmxMeDZISFpvWXc9PQ==', NULL, NULL, NULL, '2020-03-03', 'Aman@gmail.com', '2020-03-03', 'Aman@gmail.com', 100001, 106002),
(NULL, 79, 'Nehal Jugale', 'njugale', 'Z0FBQUFBQmVpc0d3RXRCSHZ4eHpNMmtQOHNzbEM3UzJ4ZE5NZDhGSEpmdTRiS19lSnd4dGxGa3ZwQ0tWdS1KTVYwRnNXQ09IUFhzc2RfRU93UG5WczRHbUphTkdLY1ZNOWc9PQ==', NULL, NULL, NULL, '2020-03-03', 'Aman@gmail.com', '2020-03-03', 'Aman@gmail.com', 100002, 106002),
(NULL, 80, 'Pranav Bankar', 'pbankar', 'Z0FBQUFBQmVpc0d5VTFjV3hzVm1FMnhYdFlxY0tvWlIxdkZ1X0FoZDd4VWlGa0ZyOVItNlVaV0JtVWdJaWpoQUJMalZ4WlBVa1otcmFnR1p6Z29BRFNMdGF4ZG5TNTNCTGc9PQ==', NULL, NULL, NULL, '2020-03-03', 'Aman@gmail.com', '2020-03-03', 'Aman@gmail.com', 100001, 106002),
(NULL, 81, 'Roshan Mekap', 'rmekap', 'Z0FBQUFBQmVpc0d6c1pnR0xpcnVLZzlCUXdiSGhnMlJWalg3bldCRGdTQW8tRU83djg0WTNEVWd3TEV6U2VEa1o0WmoybEJkcG5KX2F0c3g0aGRTN2pibURBaFRfbzdhLXc9PQ==', NULL, NULL, NULL, '2020-03-03', 'Aman@gmail.com', '2020-03-03', 'Aman@gmail.com', 100001, 106002),
(NULL, 82, 'Atharva Pethkar', 'apethkar', 'Z0FBQUFBQmVpc0c0cTYyQWsxdXVNWGJxelB3LVY1YUZhcGRKWUptRTcwUWtKSkZ4TWVqd1VuOURGdVRVN3VLVmxPOXVDMFMzNmk5M3I3eWZSdEVFcXhKNUZ0cXotZU83Z0E9PQ==', NULL, NULL, NULL, '2020-03-03', 'Aman@gmail.com', '2020-03-03', 'Aman@gmail.com', 100001, 106002),
(NULL, 83, 'Payal Rathod', 'prathod', 'Z0FBQUFBQmVpcnJfR3BNakU2MjBoRldPLS1nQ09YRHJzSEdHTWFkaV9sa09mZXV0YWpSLTBZQTJoaGYxZHdwWExzT0dXOXRkT0pBUzBLeHBVaHI4cHZXdG5yczlsLVBXTXc9PQ==', NULL, NULL, NULL, '2020-03-03', 'Aman@gmail.com', '2020-03-03', 'Aman@gmail.com', 100002, 106002),
(NULL, 84, 'Vyshak Errat', 'verrat', 'Z0FBQUFBQmVpc0ctOTQ3SjVQelFNWGVsN193MHplVFR3bERTdm45Mnk1aHI1NENoYlNPdFhKSU9JNUJPdFhTOFU2SkQzYWFjVGhvQmVCOWM3R0NYQjFFX1MzUlFGYUZKNWc9PQ==', NULL, NULL, NULL, '2020-03-03', 'Aman@gmail.com', '2020-03-03', 'Aman@gmail.com', 100001, 106002),
(NULL, 85, 'Madhura Dongre', 'mdongre', 'Z0FBQUFBQmVpcnI2dEdqVllPel80MFEwcW03NlM4Zm9pdWlza0JtNHRmN0dBNUNySWtqYzVTSkxJcGJUN1EtZUFsNm1KeFYyaDl3UENDZFVxU3ZSNG15bXNxVmttd3BXWXc9PQ==', NULL, NULL, NULL, '2020-03-03', 'Aman@gmail.com', '2020-03-03', 'Aman@gmail.com', 100002, 106002),
('2020-06-12 16:16:36.473254', 86, 'Ishika Sakhare', 'isakhare', 'Z0FBQUFBQmVpcnNDTGZ1ZVRubGZEbHBncUtLZ055anNOSlpydXk2OGxBbS1ZZXM0alowQ3NNSHBNUHEwVkVPalFNRFRnN09NaGEtOHkxdUw0cjlOVXlaNG9Kb0stSnEtU3c9PQ==', NULL, NULL, NULL, '2020-03-06', 'Uma@gmail.com ', '2020-03-06', 'Uma@gmail.com ', 100002, 106002),
(NULL, 87, 'Shubham Bhase', 'sombhase', 'Z0FBQUFBQmVpc0c1MnVXb0h0YWNHWndYdVJrbExrQWJJcUZLMmlIelE1SUtJdWZkZE9XalFHdklVeGFhVjhrX2txQnBOa0dXZzhMTlFMNGJEdThUaDlGNW5peWgzMVBfLUE9PQ==', NULL, NULL, NULL, '2020-03-06', 'Uma@gmail.com ', '2020-03-06', 'Uma@gmail.com ', 100001, 106002),
(NULL, 88, 'Aditya Yargattikar', 'ayargattikar', 'Z0FBQUFBQmVpc0c2X2t2SEpESDdpQkU5YTQwS0JSZWhIWHZYVFg1ZlVCMDVsRy04OGdkeGRzMzczQ0dzVFdRTXo5V1p5eUpmbWU0QjVHUmc3cXk2WkxfbjR0RTRvNWpCdEE9PQ==', NULL, NULL, NULL, '2020-03-06', 'Uma@gmail.com ', '2020-03-06', 'Uma@gmail.com ', 100001, 106002),
(NULL, 89, 'Ashutosh Rane', 'arane', 'Z0FBQUFBQmVpc0c3enhmQ0tDd0NSdlVEZnJPbGY1UHk1elcxNFpWOUV0ZFJmdERld2hVc1RtY1M0SFZVZ3F5WXhwU2xKRWdUUmZ3V3JvT2E5ZWY3bmJpZWxlaHBseTA5NlE9PQ==', NULL, NULL, NULL, '2020-03-06', 'Uma@gmail.com ', '2020-03-06', 'Uma@gmail.com ', 100001, 106002),
(NULL, 90, 'Rageshwari Tadimeti', 'rtadimeti', 'Z0FBQUFBQmVpcnNFVkhYcGU5bGxpbkxpS1VTNGNyQjhMV1JSZGhKOU9WaTFOaTlXVERITU0xaU5JVmN1TFRucDNabUhrMUJoRzBCSS1nWXJVa084MkhVZjVQYVpRRk1kVGc9PQ==', NULL, NULL, NULL, '2020-03-06', 'Uma@gmail.com', '2020-03-06', 'Uma@gmail.com', 100002, 106002),
(NULL, 91, 'Shriniket Sutar', 'ssutar', 'Z0FBQUFBQmVpc0c5ek5JZFRSaGxOd09IMkloTjBFeEVOZVR6NmVSeDRpLU9fc2N4RUVvdU5UbXRxVHZ2RmVrMmFwQWdHQ3VJMG9GNk1OZzF0Y2ozTGVGVkk4VFdzVDZiV3c9PQ==', NULL, NULL, NULL, '2020-03-06', 'Uma@gmail.com', '2020-03-06', 'Uma@gmail.com', 100001, 106002),
(NULL, 92, 'Samruddhi Umarkar', 'sumarkar', 'Z0FBQUFBQmVpcnNHUTZ1Y3hiS0czcHAzaTVBWDVBV0hrSXN6YVRFNzAtQXByUGN3bkhKdXB2WFkwZ2lPN3BsNUJvRnJiLXp6bFFmdmYtTzJqOGhIdUhZYUhmRWpYdEZqSmc9PQ==', NULL, NULL, NULL, '2020-03-06', 'Uma@gmail.com', '2020-03-06', 'Uma@gmail.com', 100002, 106002),
(NULL, 93, 'Juee Astapure', 'jastapure', 'Z0FBQUFBQmVpcnNJXzBobjZTb1NuWHVVc2ZfbHpzN0preDgzZzFWUm4xbmR0RDktNzhBdDMtVG1RZWN5Mk5YV3ZNbW5rRXVKUTlzSVBpRkhCZGdFQTFCRlhYREZHMFNlVlE9PQ==', NULL, NULL, NULL, '2020-03-06', 'Uma@gmail.com', '2020-03-06', 'Uma@gmail.com', 100002, 106002),
(NULL, 94, 'Riya Kulkarni', 'rkulkarni', 'Z0FBQUFBQmVpcnNKSDVFTDNTZXZSeHp4MVVXcDlDWFpFLXlIRXI0eFVBNlVyWlQ5dXhnZHFOVF9kN1BBdnNmemtTcXFTOExfb0dhRkxnbjFwbEZLMGRjTjZ0Z2RRWGhSeHc9PQ==', NULL, NULL, NULL, '2020-03-06', 'Uma@gmail.com', '2020-03-06', 'Uma@gmail.com', 100002, 106002),
(NULL, 95, 'Shrushti Baldava', 'sbaldava', 'Z0FBQUFBQmVpcnNlNEhUdmZ4alBza2x5eDQzWHh2QWhycTlhUWZCSWxEOHNUT3FuS2x2ZmhNVFRmaXA2dXNQc21fTzVPZlFObkZBVmJYcmd4UnpTSFlLVUM4cjU5NURtYVE9PQ==', NULL, NULL, NULL, '2020-03-06', 'muskannechlani@gmail.com', '2020-03-06', 'muskannechlani@gmail.com', 100002, 106002),
(NULL, 96, 'Saloni Agiwal', 'sagiwal', 'Z0FBQUFBQmVpcnNjVndmNGM5THZhbDZfMzBsV3hFRllVa0hPbDRabTlneWVJRldnWXNsZlFpSGhLb1RWWHNweXo5US1ackxXOUVZaU5ZMmlLLUM0WHhrR1B1NUloUmVVUEE9PQ==', NULL, NULL, NULL, '2020-03-06', 'muskannechlani@gmail.com', '2020-03-06', 'muskannechlani@gmail.com', 100002, 106002),
('2020-06-11 11:19:13.489605', 97, 'Prajot Shinde', 'pshinde', 'Z0FBQUFBQmVpcnNmN25HckZ1eVUtOF9nMEhyTVZrV0hlOFJjdTlCQk13OUFxT1Z5ZktPeTk1SHNsN011eTBXYWlQdWpVaFJnaXkxX3UwOVU2T2hscEpxQjk2YzFMbWN3dlE9PQ==', NULL, NULL, NULL, '2020-03-06', 'muskannechlani@gmail.com', '2020-03-06', 'muskannechlani@gmail.com', 100001, 106002),
(NULL, 98, 'Aniket Chavan', 'achavan', 'Z0FBQUFBQmVpcnNndlJObXFOLTV4ZERIR3BNVmlQQlZHNkc0d2tXMllzN2NNVDdfdGJnUXVRU3hhekoxeVZYR3RjdG1wTGNZbW4wejlWbDlRMUNZT2RsbFd2TkNnRjRrSWc9PQ==', NULL, NULL, NULL, '2020-03-06', 'muskannechlani@gmail.com', '2020-03-06', 'muskannechlani@gmail.com', 100001, 106002),
(NULL, 99, 'Yashashree Bongulwar', 'ybongulwar', 'Z0FBQUFBQmVpcnNQcGtsanN5VzV3WlBkUldWVXJFN0U0TUlzTC1QZktGSHpoR1c4WTNFLXFUZ2FQRURYX18xeWllRmNlWE9pTjdpRXBqSm43R0x4LTRoMFFBZG80ZXFpV0E9PQ==', NULL, NULL, NULL, '2020-03-10', 'Jyoti@gmail.com', '2020-03-10', 'Jyoti@gmail.com', 100002, 106002),
(NULL, 100, 'Vinayak Jadhav', 'vjadhav', 'Z0FBQUFBQmVpcnNpeDNhTzR4bEVpQ09VamdKMEpxSjZwNzVhQkhvcV9ySzdTeEo3akxBS2tWdUFlZEZhVjAwSjVpejNJWDl6blRtN1RKV0V3N1ZqS1A1YVF6eER2cWhCdkE9PQ==', NULL, NULL, NULL, '2020-03-10', 'Jyoti@gmail.com', '2020-03-10', 'Jyoti@gmail.com', 100001, 106002),
(NULL, 101, 'Hrishikesh Kate', 'hkate', 'Z0FBQUFBQmVpcnNqYl9EenhqdDV2WUw2dk95SEQ1VzlKVzJRbFNYUFdlX2xSWFZiWXN1QlZTQ01XcHB0OHI2d081OGhIdnc5ODUxNjF2c1ZXXzRxR3VKX1ZSOHh6ZEdtMkE9PQ==', NULL, NULL, NULL, '2020-03-10', 'Jyoti@gmail.com', '2020-03-10', 'Jyoti@gmail.com', 100001, 106002),
(NULL, 102, 'Omkar Belwalkar', 'obelwalkar', 'Z0FBQUFBQmVpcnNtSW9YZXdRcllCM0ZiZ2xNZmhLMEtGcWVzYVltT2lseWdfOTRnMjVFZFBGa2xEZ3pzRGI4UXdiLUhzLV9ISDYtRHJHVnUxSjQ0eEhMbkFnaE1wNVNFR2c9PQ==', NULL, NULL, NULL, '2020-03-10', 'Jyoti@gmail.com', '2020-03-10', 'Jyoti@gmail.com', 100001, 106002),
(NULL, 103, 'Shriya Jangam', 'sjangam', 'Z0FBQUFBQmVpc0RCdThydVZIdEVXWlZLSktzZDBZaWJrM2Jmbjl5c0wxV2swcWwxN05iSm5ZMHVONVlJUjNXN1FmUElpZGtCSkFBY1h3WDFUbFFvdzBfMzFRQVFvdXM0anc9PQ==', NULL, NULL, NULL, '2020-03-10', 'Jyoti@gmail.com', '2020-03-10', 'Jyoti@gmail.com', 100002, 106002),
(NULL, 104, 'Gauri Lokhande', 'glokhande', 'Z0FBQUFBQmVpc0RDLW9IZm1UU2dfQWRuQVpac3diU1VQdHF2dGZPQXVzS3hXeWVFXzlqWFM2R1ZJMWVTTGpzc0QwcWNoLUFZajBJT2tSRjh5Q2N6d3ZmNUxxaGFqV2tWOXc9PQ==', NULL, NULL, NULL, '2020-03-10', 'Jyoti@gmail.com', '2020-03-10', 'Jyoti@gmail.com', 100002, 106002),
(NULL, 105, 'Aditi Naringe', 'anaringe', 'Z0FBQUFBQmVpc0RFSlBRUlFJMXE1RUt3cFJvc2F1YmZTRHczcEY2bFJJN3BOTHZoUG1IMmdOQm5TNWVxQURSNlJMMHA2b3NmUG9wMTM1dUZ2TjhuR0RJOGtCVmVhQ3dUQXc9PQ==', NULL, NULL, NULL, '2020-03-11', 'Raghu@gmail.com ', '2020-03-11', 'Raghu@gmail.com ', 100002, 106002),
(NULL, 106, 'Prajakta Narsay', 'pnarsay', 'Z0FBQUFBQmVpc0RGenE3X3hQM2s0YjV0ZG81MXJiX2duRFpLSlpZS1BZbzgyQk5UVHFDM0J5Y2hkakFBbEZRNkk1aC1ZZk9xZ18wbVBjMnA0YmRobnJTNTRNYWo1V1Q1WFE9PQ==', NULL, NULL, NULL, '2020-03-11', 'Raghu@gmail.com ', '2020-03-11', 'Raghu@gmail.com ', 100002, 106002),
(NULL, 107, 'Shruti Nehe', 'snehe', 'Z0FBQUFBQmVpc0RHUWI4WEMwNXRaWkkyQW94RTF2dHBXZzNDQnhaVmc3bUItMGtjTlNiZU5LbVByaXZWWThYcUJCOGYxZmYwc2tqU0liYzhJYWRyQWZZYnpFdkRmY1lyd0E9PQ==', NULL, NULL, NULL, '2020-03-11', 'Raghu@gmail.com', '2020-03-11', 'Raghu@gmail.com', 100002, 106002),
(NULL, 108, 'Tejas Musale', 'tmusale', 'Z0FBQUFBQmVpc0RxMVZDUWN2MmpvNzBLOE1sS1JnMnJXSWYxc2ZUNmctbGkzUFNaYlFqajhJcGJyejNkWEJEcWRUNHBEczZpdjhvOEhOSHhPbGVPNjYzd2VlYmlMNmhRMlE9PQ==', NULL, NULL, NULL, '2020-03-11', 'Raghu@gmail.com', '2020-03-11', 'Raghu@gmail.com', 100001, 106002),
(NULL, 109, 'Sameer Rajurkar', 'srajurkar', 'Z0FBQUFBQmVpc0hCeDZYdDJqcHNFcDRubG1vaXlUeWwwNldVWGw0UXFzMzItWUtXUWozckJTT1Jwb2tDR2owVUVQY3ppMVBCbkxjNW5JX1FmYjZBVS1kM3I0TlE4R3U1U1E9PQ==', NULL, NULL, NULL, '2020-03-11', 'Raghu@gmail.com', '2020-03-11', 'Raghu@gmail.com', 100001, 106002),
(NULL, 110, 'Shreyash Patil', 'spatil1', 'Z0FBQUFBQmVpc0hKcDlPakkwUkNaSm5SSzJTWTYtRGhLMlhPeEIzSi1TWWZPVTctaFlVNFk1TE50Y3V3WE5YVjFKWlhNRWJmaXNMdVJZVktWc0l6LU9vOFRNamNsR2w1Y0E9PQ==', NULL, NULL, NULL, '2020-03-11', 'Raghu@gmail.com', '2020-03-11', 'Raghu@gmail.com', 100001, 106002),
(NULL, 111, 'Arpit Singh', 'asingh', 'Z0FBQUFBQmVpc0hNWFhzcmhUWlNVRkZnWnlLSjVsUVUtWWNkNGdlcFlaUlNVbVZhU1RyOFAtYVRFQS1MbHN2OHBWSzBDakU2MVhkdlhfclE4ZEZ3c1UwQkt2aW05Y0RxZWc9PQ==', NULL, NULL, NULL, '2020-03-11', 'Raghu@gmail.com', '2020-03-11', 'Raghu@gmail.com', 100001, 106002),
(NULL, 112, 'Vishwaja Choudhary', 'vchoudhary', 'Z0FBQUFBQmVpc0ROZnVScG1aUlMyRkp2UFVxSVpWRmtkV2wycC15aWh0MlBMZTFkRzREQ1VCbkFQdVNDVVZmamhmTWNJNVdRaDFoLXZHVl80ZnhSZXdYY2F0VjJBYjFUQUE9PQ==', NULL, NULL, NULL, '2020-03-11', 'Raghu@gmail.com', '2020-03-11', 'Raghu@gmail.com', 100002, 106002),
(NULL, 113, 'Sai Limaye', 'slimaye', 'Z0FBQUFBQmVpc0Rpd2ctZlctN3djOS03c01LODlPM1dpZGtlaUl0am1yZnR3TF9ZVkxCcTVXbTMzZC1oVHBtWmlJV0tJNEFZVVZ4Nm9PQWFTTl9MVy1fd1V2d0laWE9JdlE9PQ==', NULL, NULL, NULL, '2020-03-11', 'Raghu@gmail.com', '2020-03-11', 'Raghu@gmail.com', 100002, 106002),
(NULL, 114, 'Vedang Kapse', 'vkapse', 'Z0FBQUFBQmVpc0RsYldDdEx1cFE0Q2wtZ1A5S2FUQUJvd3I5MTBFTks2ODBBelFTQlY3WGVVbGVhSmtFdHRQUnM4UmxnS2N6NUt3RGFPb05xZV9rZDlqWDc3MzFOaWxhQUE9PQ==', NULL, NULL, NULL, '2020-03-11', 'Raghu@gmail.com', '2020-03-11', 'Raghu@gmail.com', 100001, 106002),
(NULL, 115, 'Virat Kohli', 'vk@bcci.com', 'Z0FBQUFBQmV2VFkyRXI4T01XSG9PNmFTSTVFcW9wNVB4RzJfYXZzM0p2OUljS0lnYkhhall0cFV5V2NSMURLWE5JdS1iS19RNnhqc3pvaG1WSUpyOXNrNWFwQUgyYmtUM1E9PQ==', '1988-11-05', '+917908946785', 'vk@bcci.com', '2020-05-14', 'komal.amrutkar@cumminscollege.in', '2020-05-14', 'komal.amrutkar@cumminscollege.in', 100001, 106003),
(NULL, 116, 'Vedika Ghei', 'vedika.ghei@cumminscollege.in', 'Z0FBQUFBQmUwWllVMDF6SkFzaUhBSVJRWlZXY2U1THN1TTR5SmRnbjlVZjVqYTlEX0wxTmdyektwYVZFSUR0aGtnbDI4MnJXMW8tSFBBV0hkRjB5dnBNT1pveTBoZTkxT0E9PQ==', '1998-09-09', '+918907895789', 'vedika.ghei@cumminscollege.in', '2020-05-30', 'komal.amrutkar@cumminscollege.in', '2020-05-30', 'komal.amrutkar@cumminscollege.in', 100002, 106002),
(NULL, 120, 'sneha kapoor', 'skapoor', 'Z0FBQUFBQmUxbEJZQmNobkNoc0QxaTFWN0FNbWtJUG5kR1RGcmdGc3dEaVFpblNsVXNlV01xYi1Oa1hEaTFSV2REcC1neGE2WWx4V0NrSm1XM0h0YWI5V0FBN2RQb1RpLUE9PQ==', NULL, NULL, 'skapoor', '2020-06-02', 'default value', '2020-06-20', 'komal.amrutkar@cumminscollege.in', 100002, 106002),
(NULL, 122, 'sneha kapoor', 'skapoor0', 'Z0FBQUFBQmUxbEYyWTZOTFhZWnUzMWYwalNEeDNyQ1dvbklCTzE1ekxVU2pfakFsaWs1cHg0cnkyQWFacmRDLW5tODJkYzI4WXEwV1VBMldab29JaHo4dVkzUmdpc29Ma1E9PQ==', NULL, NULL, 'skapoor0', '2020-06-02', 'default value', '2020-06-20', 'komal.amrutkar@cumminscollege.in', 100002, 106002),
(NULL, 123, 'Hitesh Nechlani', 'hnechlani', 'Z0FBQUFBQmU2ZUtCNUFZZExGR2pZT3RoeGtlMnY5aVJNOFQ0Z1VxdlluTG5xR3VBenVLSmIyYUhlNGtCUnJET3hEUEpFVmpXdktlR0J5TFVjUnZMbmNaeTZyYkdLTlhOa0E9PQ==', NULL, NULL, '', '2020-06-17', 'muskannechlani@gmail.com', '1997-11-11', 'default value', 100001, 106002),
(NULL, 124, 'Yaash Jagyani', 'yjagyani', 'Z0FBQUFBQmU2ZUtwd0Nxa19lR004bDVGWWxjajM5MGRjdGR0YVU1RUJJNi1wTTNvREhTYXRRQWJZekR4Zmc0SVRPazlPZkY1emo5SXdBWkNlUy1PaGNfUkQtR0x6U3ozbGc9PQ==', '2020-12-12', NULL, '', '2020-06-17', 'muskannechlani@gmail.com', '1997-11-11', 'default value', 100001, 106002),
(NULL, 125, 'Samruddhi Hardas', 'samruddhi.hardas@cumminscollege.in', 'Z0FBQUFBQmU3RzVBNXRHZGxPU2J3ZTRNYTFYbmw3eU9vZUF6Vi0wYm9yaVpGYmRmQlgyWFhoWlpGWm1uRjFpaVdJTHBsTVZ5WG42UTl5azRhUWR4R1pScDZJLVZacnpnbHc9PQ==', '1999-02-23', '+919087657890', 'samruddhi.hardas@cumminscollege.in', '2020-06-19', 'komal.amrutkar@cumminscollege.in', '2020-06-19', 'shreya.bhat@cumminscollege.in', 100002, 106002),
(NULL, 126, 'Tanisha Rathi', 'tanisha.rathi@cumminscollege.in', 'Z0FBQUFBQmU3UDByVkR4ZnBzNzRCSEZWV3BZV1BMcVllZTFtX2VEQ0U2UzVnVERyRzY1dEI3VmxVemg4V2o2eWU4NlRRT1hsc01EeC05QnF6X3FDdWV1Z2FHT21zTGF1U2c9PQ==', '1999-03-19', '+918976543234', 'tanisha.rathi@cumminscollege.in', '2020-06-19', 'komal.amrutkar@cumminscollege.in', '2020-06-19', 'komal.amrutkar@cumminscollege.in', 100002, 106002),
(NULL, 127, 'Shripad Bhat', 'shripadgbhat@gmail.com', 'Z0FBQUFBQmU3LU8xZ2pOZlVPVnBDWnV1NzhVQ2h6NjAyYVVXMUNkWk12RTNBQnFiY2FxS1VNWHN2SXBKSDJpdHBnUWJtMjFZbW1kblUzZGpWMndOeHVNQUY5SmRwSVVuS3c9PQ==', '1960-03-01', '+918986565446', 'shripadgbhat@gmail.com', '2020-06-22', 'shreya.bhat@cumminscollege.in', '2020-06-22', 'shreya.bhat@cumminscollege.in', 100001, 106002),
(NULL, 130, 'Tanmay Amrutkar', 'tanmay.amrutkar16@gmail.com', 'Z0FBQUFBQmU4SWZfZE41YVcyZFl5aXcxR2dLWnZHNU10RmNTcEx1REdsTmM2Mk9QVlBmRHA4SW5uSm1iTVJ6cjJ0SzUzMDk3dW9odm1LUm9Za0tfd1V3Wlk3WEZoczJMT0E9PQ==', '2004-03-16', '+919087890456', 'tanmay.amrutkar16@gmail.com', '2020-06-22', 'komal.amrutkar@cumminscollege.in', '2020-06-22', 'komal.amrutkar@cumminscollege.in', 100001, 106002),
(NULL, 131, 'Shalaka Jamadar', 'shalaka@gmail.com', 'Z0FBQUFBQmU4S3ItX2E4NGNaeklleUxGX25NUXZFZ1dzM2FqblZkQXNDMS1CZFItSFBrS1haU3FQZjZBTVM3VHBLV2hzNEwzVTZRLWNyTE9keDZoUkduejhaTkQ1Vm5fVlE9PQ==', '1998-12-16', '+918830550647', 'shalaka@gmail.com', '2020-06-22', 'shalaka@gmail.com', '1997-11-11', 'default value', 100002, 106001),
(NULL, 132, 'Sumit Nechlani', 'snechlani', 'Z0FBQUFBQmU4S3ZQU0lMUFFfS2tWQmdTOUpwekpKRndpTEQ3V0t3V2Z6Z2NrTVJzOWNUWUxURFFmVzlkZVpCa3FyUUVYSXFudHcyVEtBSzdtYWZ3VUxlOHNRb3hqdno2ZkE9PQ==', NULL, NULL, '', '2020-06-22', 'muskannechlani@gmail.com', '1997-11-11', 'default value', 100001, 106002),
(NULL, 133, 'Heena Valecha', 'hvalecha', 'Z0FBQUFBQmU4S3gtSGNpMXc0RFEwZTNQc3EzLUJTX2NORm03Q3lPTkluZDNSN2xwb0VpVHp5TTJZRjFyYjlNLVNVenJabnZ5UzE2Z0tyYlE4U2VzQm1fOThPLTVaYTBsU3c9PQ==', '1998-12-16', NULL, '', '2020-06-22', 'muskannechlani@gmail.com', '1997-11-11', 'default value', 100002, 106002);

-- --------------------------------------------------------

--
-- Table structure for table `usr_userrole`
--

CREATE TABLE `usr_userrole` (
  `userRoleID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usr_userrole`
--

INSERT INTO `usr_userrole` (`userRoleID`, `roleID`, `userID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 3, 8),
(9, 3, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 2, 15),
(16, 3, 16),
(17, 3, 17),
(18, 3, 18),
(19, 3, 19),
(20, 3, 20),
(21, 3, 21),
(22, 3, 22),
(23, 3, 23),
(24, 3, 24),
(25, 3, 25),
(26, 3, 26),
(27, 3, 27),
(28, 3, 28),
(29, 3, 29),
(30, 3, 30),
(31, 3, 31),
(32, 3, 32),
(33, 1, 33),
(34, 2, 34),
(35, 2, 35),
(36, 3, 36),
(37, 3, 37),
(38, 3, 38),
(39, 3, 39),
(40, 3, 40),
(41, 3, 41),
(42, 2, 42),
(43, 3, 43),
(44, 3, 44),
(45, 3, 45),
(46, 3, 46),
(47, 3, 47),
(48, 3, 48),
(49, 3, 49),
(50, 3, 50),
(51, 2, 51),
(52, 3, 52),
(53, 3, 53),
(54, 3, 54),
(55, 3, 55),
(56, 3, 56),
(57, 3, 57),
(58, 3, 58),
(59, 3, 59),
(60, 3, 60),
(61, 3, 61),
(62, 3, 62),
(63, 3, 63),
(64, 3, 64),
(65, 3, 65),
(66, 3, 66),
(67, 3, 67),
(68, 3, 68),
(69, 3, 69),
(70, 3, 70),
(71, 3, 71),
(72, 3, 72),
(73, 3, 73),
(74, 2, 74),
(75, 2, 75),
(76, 2, 76),
(77, 2, 77),
(78, 3, 78),
(79, 3, 79),
(80, 3, 80),
(81, 3, 81),
(82, 3, 82),
(83, 3, 83),
(84, 3, 84),
(85, 3, 85),
(86, 3, 86),
(87, 3, 87),
(88, 3, 88),
(89, 3, 89),
(90, 3, 90),
(91, 3, 91),
(92, 3, 92),
(93, 3, 93),
(94, 3, 94),
(95, 3, 95),
(96, 3, 96),
(97, 3, 97),
(98, 3, 98),
(99, 3, 99),
(100, 3, 100),
(101, 3, 101),
(102, 3, 102),
(103, 3, 103),
(104, 3, 104),
(105, 3, 105),
(106, 3, 106),
(107, 3, 107),
(108, 3, 108),
(109, 3, 109),
(110, 3, 110),
(111, 3, 111),
(112, 3, 112),
(113, 3, 113),
(114, 3, 114),
(115, 1, 115),
(116, 1, 116),
(117, 3, 120),
(118, 3, 122),
(119, 3, 123),
(120, 3, 124),
(121, 1, 125),
(122, 1, 126),
(123, 4, 127),
(126, 1, 130),
(127, 2, 131),
(128, 3, 132),
(129, 3, 133);

-- --------------------------------------------------------

--
-- Table structure for table `usr_userrolelocation`
--

CREATE TABLE `usr_userrolelocation` (
  `userRoleLocationID` int(11) NOT NULL,
  `locationObjectID` int(11) NOT NULL,
  `locationTypeCodeID` int(11) NOT NULL,
  `userRoleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usr_userrolelocation`
--

INSERT INTO `usr_userrolelocation` (`userRoleLocationID`, `locationObjectID`, `locationTypeCodeID`, `userRoleID`) VALUES
(1, 1, 109001, 6),
(2, 2, 109001, 7),
(3, 1, 109001, 15),
(4, 3, 109001, 34),
(5, 4, 109001, 35),
(6, 5, 109001, 42),
(7, 2, 109001, 51),
(8, 6, 109001, 74),
(9, 7, 109001, 75),
(10, 8, 109001, 76),
(11, 9, 109001, 77),
(12, 10, 109001, 127);

-- --------------------------------------------------------

--
-- Structure for view `trial4`
--
DROP TABLE IF EXISTS `trial4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `trial4`  AS  (select `cmp_competition`.`competitionName` AS `Competition`,`cmp_agegroup`.`AgeGroupName` AS `Age Group`,`cmp_studentenrollment`.`studentEnrollmentID` AS `StuID`,`gender`.`codeName` AS `Gender`,`cmp_competitionquestion`.`questionID` AS `Question No.`,ifnull(`cmp_studentresponse`.`optionTranslationID`,0) + ifnull(`ques_correctoption`.`ansText`,0) AS `ANS`,ifnull(`ques_correctoption`.`optionTranslationID`,0) + ifnull(`ques_correctoption`.`ansText`,0) AS `Corr`,case when ifnull(`cmp_studentresponse`.`optionTranslationID` = `ques_correctoption`.`optionTranslationID`,0) + ifnull(`cmp_studentresponse`.`ansText` = `ques_correctoption`.`ansText`,0) = 1 then 'Correct' else 'Incorrect' end AS `Response Type` from ((((((((((((((((((`cmp_studentenrollment` left join `usr_user` on(`cmp_studentenrollment`.`userID` = `usr_user`.`userID`)) left join `com_schoolclass` on(`cmp_studentenrollment`.`schoolClassID` = `com_schoolclass`.`schoolClassID`)) left join `com_code` on(`cmp_studentenrollment`.`languageCodeID` = `com_code`.`codeID`)) left join `com_code` `gender` on(`usr_user`.`gender` = `gender`.`codeID`)) left join `com_school` on(`com_schoolclass`.`schoolID` = `com_school`.`schoolID`)) left join `cmp_competitionage` on(`cmp_studentenrollment`.`competitionAgeID` = `cmp_competitionage`.`competitionAgeID`)) left join `cmp_competition` on(`cmp_competitionage`.`competitionID` = `cmp_competition`.`competitionID`)) left join `cmp_agegroupclass` on(`cmp_competitionage`.`AgeGroupClassID` = `cmp_agegroupclass`.`AgeGroupClassID`)) left join `cmp_agegroup` on(`cmp_agegroupclass`.`AgeGroupID` = `cmp_agegroup`.`AgeGroupID`)) left join `cmp_competitionquestion` on(`cmp_competitionage`.`competitionAgeID` = `cmp_competitionquestion`.`competitionAgeID`)) left join `ques_question` on(`cmp_competitionquestion`.`questionID` = `ques_question`.`questionID`)) left join `ques_questiontranslation` on(`ques_question`.`questionID` = `ques_questiontranslation`.`questionID`)) left join `ques_option` on(`ques_question`.`questionID` = `ques_option`.`questionID`)) left join `ques_optiontranslation` on(`ques_option`.`optionID` = `ques_optiontranslation`.`optionID`)) left join `ques_correctoption` on(`ques_questiontranslation`.`questionTranslationID` = `ques_correctoption`.`questionTranslationID`)) left join `cmp_studentresponse` on(`cmp_competitionquestion`.`competitionQuestionID` = `cmp_studentresponse`.`competitionQuestionID`)) left join `cmp_competition_markscheme` on(`cmp_competitionage`.`competitionAgeID` = `cmp_competition_markscheme`.`competitionAgeID`)) left join `com_code` `question level code` on(`cmp_competitionquestion`.`questionLevelCodeID` = `question level code`.`codeID`)) where 1 and `cmp_studentenrollment`.`score` <> 999 group by `cmp_competition`.`competitionName`,`cmp_agegroup`.`AgeGroupName`,`cmp_studentenrollment`.`studentEnrollmentID`,`gender`.`codeName`,`cmp_competitionquestion`.`questionID` order by `cmp_competition`.`competitionName`,`cmp_agegroup`.`AgeGroupName`,`cmp_studentenrollment`.`studentEnrollmentID`,`gender`.`codeName`,`cmp_competitionquestion`.`questionID`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `cmp_agegroup`
--
ALTER TABLE `cmp_agegroup`
  ADD PRIMARY KEY (`AgeGroupID`);

--
-- Indexes for table `cmp_agegroupclass`
--
ALTER TABLE `cmp_agegroupclass`
  ADD PRIMARY KEY (`AgeGroupClassID`),
  ADD KEY `cmp_agegroupclass_AgeGroupID_addd9d00_fk_cmp_agegroup_AgeGroupID` (`AgeGroupID`),
  ADD KEY `cmp_agegroupclass_classID_f248b607_fk_com_class_classID` (`classID`);

--
-- Indexes for table `cmp_competition`
--
ALTER TABLE `cmp_competition`
  ADD PRIMARY KEY (`competitionID`),
  ADD KEY `cmp_competition_competitionType_574fb3a8_fk_com_code_codeID` (`competitionType`);

--
-- Indexes for table `cmp_competitionage`
--
ALTER TABLE `cmp_competitionage`
  ADD PRIMARY KEY (`competitionAgeID`),
  ADD KEY `cmp_competitionage_AgeGroupClassID_ac2d7613_fk_cmp_agegr` (`AgeGroupClassID`),
  ADD KEY `cmp_competitionage_competitionID_88727d50_fk_cmp_compe` (`competitionID`);

--
-- Indexes for table `cmp_competitionquestion`
--
ALTER TABLE `cmp_competitionquestion`
  ADD PRIMARY KEY (`competitionQuestionID`),
  ADD KEY `cmp_competitionquest_competitionAgeID_0d20d425_fk_cmp_compe` (`competitionAgeID`),
  ADD KEY `cmp_competitionquest_questionID_30b837aa_fk_ques_ques` (`questionID`),
  ADD KEY `cmp_competitionquest_questionLevelCodeID_10a28d71_fk_com_code_` (`questionLevelCodeID`);

--
-- Indexes for table `cmp_competition_markscheme`
--
ALTER TABLE `cmp_competition_markscheme`
  ADD PRIMARY KEY (`competition_MarkSchemeID`),
  ADD KEY `cmp_competition_mark_competitionAgeID_2b316f48_fk_cmp_compe` (`competitionAgeID`),
  ADD KEY `cmp_competition_mark_questionLevelCodeID_f1c6c46c_fk_com_code_` (`questionLevelCodeID`);

--
-- Indexes for table `cmp_questionage`
--
ALTER TABLE `cmp_questionage`
  ADD PRIMARY KEY (`QuestionAgeID`),
  ADD KEY `cmp_questionage_AgeGroupID_a10994c3_fk_cmp_agegroup_AgeGroupID` (`AgeGroupID`),
  ADD KEY `cmp_questionage_questionID_5d072feb_fk_ques_question_questionID` (`questionID`),
  ADD KEY `cmp_questionage_questionLevelCodeID_131440ba_fk_com_code_codeID` (`questionLevelCodeID`);

--
-- Indexes for table `cmp_studentenrollment`
--
ALTER TABLE `cmp_studentenrollment`
  ADD PRIMARY KEY (`studentEnrollmentID`),
  ADD KEY `cmp_studentenrollmen_competitionAgeID_07e192f5_fk_cmp_compe` (`competitionAgeID`),
  ADD KEY `cmp_studentenrollment_languageCodeID_4047769b_fk_com_code_codeID` (`languageCodeID`),
  ADD KEY `cmp_studentenrollmen_schoolClassID_837e0eb5_fk_com_schoo` (`schoolClassID`),
  ADD KEY `cmp_studentenrollment_userID_119b39ae_fk_usr_user_userID` (`userID`);

--
-- Indexes for table `cmp_studentresponse`
--
ALTER TABLE `cmp_studentresponse`
  ADD PRIMARY KEY (`studentResponseID`),
  ADD KEY `cmp_studentresponse_competitionQuestionI_8d489b3b_fk_cmp_compe` (`competitionQuestionID`),
  ADD KEY `cmp_studentresponse_optionTranslationID_eec16692_fk_ques_opti` (`optionTranslationID`),
  ADD KEY `cmp_studentresponse_studentEnrollmentID_d7b20926_fk_cmp_stude` (`studentEnrollmentID`);

--
-- Indexes for table `com_address`
--
ALTER TABLE `com_address`
  ADD PRIMARY KEY (`AddressID`),
  ADD KEY `com_address_countryID_066d8164_fk_com_countries_countryID` (`countryID`),
  ADD KEY `com_address_districtID_78c87bc7_fk_com_districts_districtID` (`districtID`),
  ADD KEY `com_address_stateID_98fd32c5_fk_com_states_stateID` (`stateID`);

--
-- Indexes for table `com_class`
--
ALTER TABLE `com_class`
  ADD PRIMARY KEY (`classID`);

--
-- Indexes for table `com_code`
--
ALTER TABLE `com_code`
  ADD PRIMARY KEY (`codeID`),
  ADD KEY `com_code_codeGroupID_588b043d_fk_com_codegroup_codeGroupID` (`codeGroupID`);

--
-- Indexes for table `com_codegroup`
--
ALTER TABLE `com_codegroup`
  ADD PRIMARY KEY (`codeGroupID`);

--
-- Indexes for table `com_countries`
--
ALTER TABLE `com_countries`
  ADD PRIMARY KEY (`countryID`);

--
-- Indexes for table `com_districts`
--
ALTER TABLE `com_districts`
  ADD PRIMARY KEY (`districtID`),
  ADD KEY `com_districts_stateID_5b98e8bd_fk_com_states_stateID` (`stateID`);

--
-- Indexes for table `com_school`
--
ALTER TABLE `com_school`
  ADD PRIMARY KEY (`schoolID`),
  ADD KEY `com_school_addressID_e0ebaf1e_fk_com_address_AddressID` (`addressID`),
  ADD KEY `com_school_schoolGroupID_8129d81b_fk_com_code_codeID` (`schoolGroupID`),
  ADD KEY `com_school_schoolTypeCodeID_46933394_fk_com_code_codeID` (`schoolTypeCodeID`);

--
-- Indexes for table `com_schoolclass`
--
ALTER TABLE `com_schoolclass`
  ADD PRIMARY KEY (`schoolClassID`),
  ADD KEY `com_schoolclass_schoolID_ae6f8062_fk_com_school_schoolID` (`schoolID`);

--
-- Indexes for table `com_states`
--
ALTER TABLE `com_states`
  ADD PRIMARY KEY (`stateID`),
  ADD KEY `com_states_countryID_f5b78e9c_fk_com_countries_countryID` (`countryID`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_usr_user_userID` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `knox_authtoken`
--
ALTER TABLE `knox_authtoken`
  ADD PRIMARY KEY (`digest`),
  ADD UNIQUE KEY `salt` (`salt`),
  ADD KEY `knox_authtoken_user_id_e5a5d899_fk_usr_user_userID` (`user_id`),
  ADD KEY `knox_authtoken_token_key_8f4f7d47` (`token_key`);

--
-- Indexes for table `ques_correctoption`
--
ALTER TABLE `ques_correctoption`
  ADD PRIMARY KEY (`correctOptionID`),
  ADD KEY `ques_correctoption_optionTranslationID_8e05c5b6_fk_ques_opti` (`optionTranslationID`),
  ADD KEY `ques_correctoption_questionTranslationI_a7ef2fca_fk_ques_ques` (`questionTranslationID`);

--
-- Indexes for table `ques_image`
--
ALTER TABLE `ques_image`
  ADD PRIMARY KEY (`ImageID`),
  ADD KEY `ques_image_ImageTypeCodeID_b04102f3_fk_com_code_codeID` (`ImageTypeCodeID`);

--
-- Indexes for table `ques_option`
--
ALTER TABLE `ques_option`
  ADD PRIMARY KEY (`optionID`),
  ADD KEY `ques_option_questionID_a7761315_fk_ques_question_questionID` (`questionID`);

--
-- Indexes for table `ques_optiontranslation`
--
ALTER TABLE `ques_optiontranslation`
  ADD PRIMARY KEY (`optionTranslationID`),
  ADD KEY `ques_optiontranslati_languageCodeID_b05e466b_fk_com_code_` (`languageCodeID`),
  ADD KEY `ques_optiontranslation_optionID_5c4a1983_fk_ques_option_optionID` (`optionID`);

--
-- Indexes for table `ques_question`
--
ALTER TABLE `ques_question`
  ADD PRIMARY KEY (`questionID`),
  ADD KEY `ques_question_countryID_d83d94fd_fk_com_countries_countryID` (`countryID`),
  ADD KEY `ques_question_domainCodeID_b91ec8d4_fk_com_code_codeID` (`domainCodeID`),
  ADD KEY `ques_question_questionTypeCodeID_53000760_fk_com_code_codeID` (`questionTypeCodeID`);

--
-- Indexes for table `ques_questiontranslation`
--
ALTER TABLE `ques_questiontranslation`
  ADD PRIMARY KEY (`questionTranslationID`),
  ADD KEY `ques_questiontransla_languageCodeID_203c86e9_fk_com_code_` (`languageCodeID`),
  ADD KEY `ques_questiontransla_questionID_2c26319d_fk_ques_ques` (`questionID`);

--
-- Indexes for table `usr_role`
--
ALTER TABLE `usr_role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `usr_user`
--
ALTER TABLE `usr_user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `loginID` (`loginID`),
  ADD KEY `usr_user_gender_c51e1f89_fk_com_code_codeID` (`gender`),
  ADD KEY `usr_user_is_active_f408a05c_fk_com_code_codeID` (`is_active`);

--
-- Indexes for table `usr_userrole`
--
ALTER TABLE `usr_userrole`
  ADD PRIMARY KEY (`userRoleID`),
  ADD KEY `usr_userrole_roleID_112c8c10_fk_usr_role_RoleID` (`roleID`),
  ADD KEY `usr_userrole_userID_d93b775d_fk_usr_user_userID` (`userID`);

--
-- Indexes for table `usr_userrolelocation`
--
ALTER TABLE `usr_userrolelocation`
  ADD PRIMARY KEY (`userRoleLocationID`),
  ADD KEY `usr_userrolelocation_locationTypeCodeID_a073d7ff_fk_com_code_` (`locationTypeCodeID`),
  ADD KEY `usr_userrolelocation_userRoleID_6aa00c8e_fk_usr_userr` (`userRoleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `cmp_agegroup`
--
ALTER TABLE `cmp_agegroup`
  MODIFY `AgeGroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cmp_agegroupclass`
--
ALTER TABLE `cmp_agegroupclass`
  MODIFY `AgeGroupClassID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `cmp_competition`
--
ALTER TABLE `cmp_competition`
  MODIFY `competitionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cmp_competitionage`
--
ALTER TABLE `cmp_competitionage`
  MODIFY `competitionAgeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `cmp_competitionquestion`
--
ALTER TABLE `cmp_competitionquestion`
  MODIFY `competitionQuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `cmp_competition_markscheme`
--
ALTER TABLE `cmp_competition_markscheme`
  MODIFY `competition_MarkSchemeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `cmp_questionage`
--
ALTER TABLE `cmp_questionage`
  MODIFY `QuestionAgeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `cmp_studentenrollment`
--
ALTER TABLE `cmp_studentenrollment`
  MODIFY `studentEnrollmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `cmp_studentresponse`
--
ALTER TABLE `cmp_studentresponse`
  MODIFY `studentResponseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT for table `com_address`
--
ALTER TABLE `com_address`
  MODIFY `AddressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `com_class`
--
ALTER TABLE `com_class`
  MODIFY `classID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `com_countries`
--
ALTER TABLE `com_countries`
  MODIFY `countryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `com_districts`
--
ALTER TABLE `com_districts`
  MODIFY `districtID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT for table `com_school`
--
ALTER TABLE `com_school`
  MODIFY `schoolID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `com_schoolclass`
--
ALTER TABLE `com_schoolclass`
  MODIFY `schoolClassID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `com_states`
--
ALTER TABLE `com_states`
  MODIFY `stateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ques_correctoption`
--
ALTER TABLE `ques_correctoption`
  MODIFY `correctOptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `ques_image`
--
ALTER TABLE `ques_image`
  MODIFY `ImageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `ques_option`
--
ALTER TABLE `ques_option`
  MODIFY `optionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `ques_optiontranslation`
--
ALTER TABLE `ques_optiontranslation`
  MODIFY `optionTranslationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `ques_question`
--
ALTER TABLE `ques_question`
  MODIFY `questionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `ques_questiontranslation`
--
ALTER TABLE `ques_questiontranslation`
  MODIFY `questionTranslationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `usr_user`
--
ALTER TABLE `usr_user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `usr_userrole`
--
ALTER TABLE `usr_userrole`
  MODIFY `userRoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `usr_userrolelocation`
--
ALTER TABLE `usr_userrolelocation`
  MODIFY `userRoleLocationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `cmp_agegroupclass`
--
ALTER TABLE `cmp_agegroupclass`
  ADD CONSTRAINT `cmp_agegroupclass_AgeGroupID_addd9d00_fk_cmp_agegroup_AgeGroupID` FOREIGN KEY (`AgeGroupID`) REFERENCES `cmp_agegroup` (`AgeGroupID`),
  ADD CONSTRAINT `cmp_agegroupclass_classID_f248b607_fk_com_class_classID` FOREIGN KEY (`classID`) REFERENCES `com_class` (`classID`);

--
-- Constraints for table `cmp_competition`
--
ALTER TABLE `cmp_competition`
  ADD CONSTRAINT `cmp_competition_competitionType_574fb3a8_fk_com_code_codeID` FOREIGN KEY (`competitionType`) REFERENCES `com_code` (`codeID`);

--
-- Constraints for table `cmp_competitionage`
--
ALTER TABLE `cmp_competitionage`
  ADD CONSTRAINT `cmp_competitionage_AgeGroupClassID_ac2d7613_fk_cmp_agegr` FOREIGN KEY (`AgeGroupClassID`) REFERENCES `cmp_agegroupclass` (`AgeGroupClassID`),
  ADD CONSTRAINT `cmp_competitionage_competitionID_88727d50_fk_cmp_compe` FOREIGN KEY (`competitionID`) REFERENCES `cmp_competition` (`competitionID`);

--
-- Constraints for table `cmp_competitionquestion`
--
ALTER TABLE `cmp_competitionquestion`
  ADD CONSTRAINT `cmp_competitionquest_competitionAgeID_0d20d425_fk_cmp_compe` FOREIGN KEY (`competitionAgeID`) REFERENCES `cmp_competitionage` (`competitionAgeID`),
  ADD CONSTRAINT `cmp_competitionquest_questionID_30b837aa_fk_ques_ques` FOREIGN KEY (`questionID`) REFERENCES `ques_question` (`questionID`),
  ADD CONSTRAINT `cmp_competitionquest_questionLevelCodeID_10a28d71_fk_com_code_` FOREIGN KEY (`questionLevelCodeID`) REFERENCES `com_code` (`codeID`);

--
-- Constraints for table `cmp_competition_markscheme`
--
ALTER TABLE `cmp_competition_markscheme`
  ADD CONSTRAINT `cmp_competition_mark_competitionAgeID_2b316f48_fk_cmp_compe` FOREIGN KEY (`competitionAgeID`) REFERENCES `cmp_competitionage` (`competitionAgeID`),
  ADD CONSTRAINT `cmp_competition_mark_questionLevelCodeID_f1c6c46c_fk_com_code_` FOREIGN KEY (`questionLevelCodeID`) REFERENCES `com_code` (`codeID`);

--
-- Constraints for table `cmp_questionage`
--
ALTER TABLE `cmp_questionage`
  ADD CONSTRAINT `cmp_questionage_AgeGroupID_a10994c3_fk_cmp_agegroup_AgeGroupID` FOREIGN KEY (`AgeGroupID`) REFERENCES `cmp_agegroup` (`AgeGroupID`),
  ADD CONSTRAINT `cmp_questionage_questionID_5d072feb_fk_ques_question_questionID` FOREIGN KEY (`questionID`) REFERENCES `ques_question` (`questionID`),
  ADD CONSTRAINT `cmp_questionage_questionLevelCodeID_131440ba_fk_com_code_codeID` FOREIGN KEY (`questionLevelCodeID`) REFERENCES `com_code` (`codeID`);

--
-- Constraints for table `cmp_studentenrollment`
--
ALTER TABLE `cmp_studentenrollment`
  ADD CONSTRAINT `cmp_studentenrollmen_competitionAgeID_07e192f5_fk_cmp_compe` FOREIGN KEY (`competitionAgeID`) REFERENCES `cmp_competitionage` (`competitionAgeID`),
  ADD CONSTRAINT `cmp_studentenrollmen_schoolClassID_837e0eb5_fk_com_schoo` FOREIGN KEY (`schoolClassID`) REFERENCES `com_schoolclass` (`schoolClassID`),
  ADD CONSTRAINT `cmp_studentenrollment_languageCodeID_4047769b_fk_com_code_codeID` FOREIGN KEY (`languageCodeID`) REFERENCES `com_code` (`codeID`),
  ADD CONSTRAINT `cmp_studentenrollment_userID_119b39ae_fk_usr_user_userID` FOREIGN KEY (`userID`) REFERENCES `usr_user` (`userID`);

--
-- Constraints for table `cmp_studentresponse`
--
ALTER TABLE `cmp_studentresponse`
  ADD CONSTRAINT `cmp_studentresponse_competitionQuestionI_8d489b3b_fk_cmp_compe` FOREIGN KEY (`competitionQuestionID`) REFERENCES `cmp_competitionquestion` (`competitionQuestionID`),
  ADD CONSTRAINT `cmp_studentresponse_optionTranslationID_eec16692_fk_ques_opti` FOREIGN KEY (`optionTranslationID`) REFERENCES `ques_optiontranslation` (`optionTranslationID`),
  ADD CONSTRAINT `cmp_studentresponse_studentEnrollmentID_d7b20926_fk_cmp_stude` FOREIGN KEY (`studentEnrollmentID`) REFERENCES `cmp_studentenrollment` (`studentEnrollmentID`);

--
-- Constraints for table `com_address`
--
ALTER TABLE `com_address`
  ADD CONSTRAINT `com_address_countryID_066d8164_fk_com_countries_countryID` FOREIGN KEY (`countryID`) REFERENCES `com_countries` (`countryID`),
  ADD CONSTRAINT `com_address_districtID_78c87bc7_fk_com_districts_districtID` FOREIGN KEY (`districtID`) REFERENCES `com_districts` (`districtID`),
  ADD CONSTRAINT `com_address_stateID_98fd32c5_fk_com_states_stateID` FOREIGN KEY (`stateID`) REFERENCES `com_states` (`stateID`);

--
-- Constraints for table `com_code`
--
ALTER TABLE `com_code`
  ADD CONSTRAINT `com_code_codeGroupID_588b043d_fk_com_codegroup_codeGroupID` FOREIGN KEY (`codeGroupID`) REFERENCES `com_codegroup` (`codeGroupID`);

--
-- Constraints for table `com_districts`
--
ALTER TABLE `com_districts`
  ADD CONSTRAINT `com_districts_stateID_5b98e8bd_fk_com_states_stateID` FOREIGN KEY (`stateID`) REFERENCES `com_states` (`stateID`);

--
-- Constraints for table `com_school`
--
ALTER TABLE `com_school`
  ADD CONSTRAINT `com_school_addressID_e0ebaf1e_fk_com_address_AddressID` FOREIGN KEY (`addressID`) REFERENCES `com_address` (`AddressID`),
  ADD CONSTRAINT `com_school_schoolGroupID_8129d81b_fk_com_code_codeID` FOREIGN KEY (`schoolGroupID`) REFERENCES `com_code` (`codeID`),
  ADD CONSTRAINT `com_school_schoolTypeCodeID_46933394_fk_com_code_codeID` FOREIGN KEY (`schoolTypeCodeID`) REFERENCES `com_code` (`codeID`);

--
-- Constraints for table `com_schoolclass`
--
ALTER TABLE `com_schoolclass`
  ADD CONSTRAINT `com_schoolclass_schoolID_ae6f8062_fk_com_school_schoolID` FOREIGN KEY (`schoolID`) REFERENCES `com_school` (`schoolID`);

--
-- Constraints for table `com_states`
--
ALTER TABLE `com_states`
  ADD CONSTRAINT `com_states_countryID_f5b78e9c_fk_com_countries_countryID` FOREIGN KEY (`countryID`) REFERENCES `com_countries` (`countryID`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_usr_user_userID` FOREIGN KEY (`user_id`) REFERENCES `usr_user` (`userID`);

--
-- Constraints for table `knox_authtoken`
--
ALTER TABLE `knox_authtoken`
  ADD CONSTRAINT `knox_authtoken_user_id_e5a5d899_fk_usr_user_userID` FOREIGN KEY (`user_id`) REFERENCES `usr_user` (`userID`);

--
-- Constraints for table `ques_correctoption`
--
ALTER TABLE `ques_correctoption`
  ADD CONSTRAINT `ques_correctoption_optionTranslationID_8e05c5b6_fk_ques_opti` FOREIGN KEY (`optionTranslationID`) REFERENCES `ques_optiontranslation` (`optionTranslationID`),
  ADD CONSTRAINT `ques_correctoption_questionTranslationI_a7ef2fca_fk_ques_ques` FOREIGN KEY (`questionTranslationID`) REFERENCES `ques_questiontranslation` (`questionTranslationID`);

--
-- Constraints for table `ques_image`
--
ALTER TABLE `ques_image`
  ADD CONSTRAINT `ques_image_ImageTypeCodeID_b04102f3_fk_com_code_codeID` FOREIGN KEY (`ImageTypeCodeID`) REFERENCES `com_code` (`codeID`);

--
-- Constraints for table `ques_option`
--
ALTER TABLE `ques_option`
  ADD CONSTRAINT `ques_option_questionID_a7761315_fk_ques_question_questionID` FOREIGN KEY (`questionID`) REFERENCES `ques_question` (`questionID`);

--
-- Constraints for table `ques_optiontranslation`
--
ALTER TABLE `ques_optiontranslation`
  ADD CONSTRAINT `ques_optiontranslati_languageCodeID_b05e466b_fk_com_code_` FOREIGN KEY (`languageCodeID`) REFERENCES `com_code` (`codeID`),
  ADD CONSTRAINT `ques_optiontranslation_optionID_5c4a1983_fk_ques_option_optionID` FOREIGN KEY (`optionID`) REFERENCES `ques_option` (`optionID`);

--
-- Constraints for table `ques_question`
--
ALTER TABLE `ques_question`
  ADD CONSTRAINT `ques_question_countryID_d83d94fd_fk_com_countries_countryID` FOREIGN KEY (`countryID`) REFERENCES `com_countries` (`countryID`),
  ADD CONSTRAINT `ques_question_domainCodeID_b91ec8d4_fk_com_code_codeID` FOREIGN KEY (`domainCodeID`) REFERENCES `com_code` (`codeID`),
  ADD CONSTRAINT `ques_question_questionTypeCodeID_53000760_fk_com_code_codeID` FOREIGN KEY (`questionTypeCodeID`) REFERENCES `com_code` (`codeID`);

--
-- Constraints for table `ques_questiontranslation`
--
ALTER TABLE `ques_questiontranslation`
  ADD CONSTRAINT `ques_questiontransla_languageCodeID_203c86e9_fk_com_code_` FOREIGN KEY (`languageCodeID`) REFERENCES `com_code` (`codeID`),
  ADD CONSTRAINT `ques_questiontransla_questionID_2c26319d_fk_ques_ques` FOREIGN KEY (`questionID`) REFERENCES `ques_question` (`questionID`);

--
-- Constraints for table `usr_user`
--
ALTER TABLE `usr_user`
  ADD CONSTRAINT `usr_user_gender_c51e1f89_fk_com_code_codeID` FOREIGN KEY (`gender`) REFERENCES `com_code` (`codeID`),
  ADD CONSTRAINT `usr_user_is_active_f408a05c_fk_com_code_codeID` FOREIGN KEY (`is_active`) REFERENCES `com_code` (`codeID`);

--
-- Constraints for table `usr_userrole`
--
ALTER TABLE `usr_userrole`
  ADD CONSTRAINT `usr_userrole_roleID_112c8c10_fk_usr_role_RoleID` FOREIGN KEY (`roleID`) REFERENCES `usr_role` (`RoleID`),
  ADD CONSTRAINT `usr_userrole_userID_d93b775d_fk_usr_user_userID` FOREIGN KEY (`userID`) REFERENCES `usr_user` (`userID`);

--
-- Constraints for table `usr_userrolelocation`
--
ALTER TABLE `usr_userrolelocation`
  ADD CONSTRAINT `usr_userrolelocation_locationTypeCodeID_a073d7ff_fk_com_code_` FOREIGN KEY (`locationTypeCodeID`) REFERENCES `com_code` (`codeID`),
  ADD CONSTRAINT `usr_userrolelocation_userRoleID_6aa00c8e_fk_usr_userr` FOREIGN KEY (`userRoleID`) REFERENCES `usr_userrole` (`userRoleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
