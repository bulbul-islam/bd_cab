-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2016 at 08:41 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gyaner_alo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `religion` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `admin_img` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `dob` datetime NOT NULL,
  `level` int(11) NOT NULL,
  `edu_background` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `sex`, `religion`, `phone`, `blood_group`, `admin_img`, `address`, `dob`, `level`, `edu_background`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `application_id` int(11) NOT NULL,
  `application_title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `sender` varchar(150) NOT NULL,
  `receiver` varchar(150) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `asset_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(700) COLLATE utf8_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`asset_id`, `name`, `description`, `value`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Plot', '10 Katha land 234', 0, '0000-00-00 00:00:00', '2016-03-21 11:44:23', '2016-03-21 10:45:38'),
(2, 'Plot 12 sdqawd', '10 Katha landqqwe', 0, '0000-00-00 00:00:00', '2016-03-21 11:55:58', '2016-03-21 11:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `book_list`
--

CREATE TABLE `book_list` (
  `book_list_id` int(11) NOT NULL,
  `book_name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(150) NOT NULL,
  `price` varchar(150) NOT NULL,
  `status` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_list`
--

INSERT INTO `book_list` (`book_list_id`, `book_name`, `description`, `author`, `price`, `status`, `class_id`, `created_at`, `updated_at`) VALUES
(3, 'English', 'English for today  ', 'NCTB', '103', 1, 10, '2016-03-20 09:58:53', '2016-03-21 07:21:44'),
(4, 'English', 'werwe', 'NCTB', '545', 1, 4, '2016-03-20 10:06:12', '2016-03-21 07:19:58'),
(5, 'Bangla', 'Amar bangla ', 'NCTB', '200', 2, 5, '2016-03-20 11:07:48', '2016-03-21 07:20:12'),
(6, 'English', 'English for today  ', 'NCTB', '402', 1, 2, '2016-03-20 11:09:13', '2016-03-21 07:21:22'),
(7, 'English', 'sfds sfdfs', 'NCTB', '400', 2, 1, '2016-03-20 11:42:03', '2016-03-21 07:19:38'),
(8, 'English', 'dsasd', 'NCTB', '5432', 2, 4, '2016-03-20 11:44:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(150) NOT NULL,
  `shift` varchar(150) NOT NULL,
  `section` varchar(150) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `shift`, `section`, `employee_id`, `created_at`, `updated_at`) VALUES
(11, 'Class 1', 'Morning', 'A', 1, '2016-04-21 06:35:57', '0000-00-00 00:00:00'),
(12, 'Class 2', 'Morning', 'A', 2, '2016-04-21 06:36:03', '2016-04-21 06:36:44'),
(13, 'Class 3', 'Morning', 'A', 2, '2016-04-21 06:36:12', '0000-00-00 00:00:00'),
(14, 'Class 4', 'Morning', 'A', 1, '2016-04-21 06:36:21', '0000-00-00 00:00:00'),
(15, 'Class 5', 'Morning', 'A', 1, '2016-04-21 06:36:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(4) NOT NULL,
  `institute_name` text COLLATE utf8_unicode_ci NOT NULL,
  `established_year` text COLLATE utf8_unicode_ci NOT NULL,
  `chairman_name` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `logo_image` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `institute_name`, `established_year`, `chairman_name`, `address`, `logo_image`) VALUES
(1, 'MPSIT', '2017', 'boss 5', 'Banani', 'images/51d9e268cfbd593407cb2421e488f5b9.png');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `data`) VALUES
(1, '2016-03-06 06:18:53'),
(12, '2016-03-06 06:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `dormitory_name` varchar(150) NOT NULL,
  `building_name` varchar(150) NOT NULL,
  `no_of_room` int(11) NOT NULL,
  `admin_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_cell` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `dormitory_name`, `building_name`, `no_of_room`, `admin_name`, `admin_cell`, `created_at`, `updated_at`) VALUES
(2, 'dor-b', 'building-2', 17, 'imtiaz', 45584, '2016-04-16 07:40:19', '2016-04-18 07:57:57'),
(3, 'dor-a', 'building-1', 25, 'imtiaz', 527453245, '2016-04-18 08:04:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dormitory_room`
--

CREATE TABLE `dormitory_room` (
  `dor_room_id` int(11) NOT NULL,
  `room_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dormitory_room`
--

INSERT INTO `dormitory_room` (`dor_room_id`, `room_name`, `dormitory_id`, `created_at`, `updated_at`) VALUES
(1, 'room-1', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'room-2', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'room-1', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'room-2', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'room-3', 3, '2016-04-17 10:42:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `employee_img` text NOT NULL,
  `dob` datetime NOT NULL,
  `religon` varchar(150) NOT NULL,
  `sex` varchar(150) NOT NULL,
  `blood_group` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `edu_background` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `phone`, `email`, `designation`, `address`, `employee_img`, `dob`, `religon`, `sex`, `blood_group`, `category`, `edu_background`, `created_at`, `updated_at`) VALUES
(1, 'Shafiul Alam', '+8801819202122', 'shafiul@gmail.com', 'English Teacher', 'Dhaka', '', '2016-04-06 00:00:00', 'Islam', 'male', 'A+', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Rushdid', '234234234234', 'admiN@awdawd.com', 'asdasd', 'Dhaka', '', '0000-00-00 00:00:00', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `date` text NOT NULL,
  `description` text NOT NULL,
  `time` text NOT NULL,
  `year` year(4) NOT NULL,
  `unique_code` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `date`, `description`, `time`, `year`, `unique_code`, `class_id`, `created_at`, `updated_at`) VALUES
(6, '1st semester', '01/02/2016', '', '10.00', 0000, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '2nd semester', '01/02/2016', '', '10.00', 0000, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '3rd semester', '01/02/2016', '', '10.00', 0000, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `fee_id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `fee_category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_category`
--

CREATE TABLE `fee_category` (
  `fee_category_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `grade_point` float NOT NULL,
  `min_marks` int(11) NOT NULL,
  `max_marks` int(11) NOT NULL,
  `grade_name` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `grade_point`, `min_marks`, `max_marks`, `grade_name`, `created_at`, `updated_at`) VALUES
(1, 5, 80, 100, 'A+', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 4, 70, 79, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 3.5, 60, 69, 'A-', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 3, 50, 59, 'B', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2.5, 40, 49, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2, 33, 39, 'D', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 1, 32, 'F', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `amount` int(11) NOT NULL,
  `salary_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `fee_categoy_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `liability`
--

CREATE TABLE `liability` (
  `liability_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `source` varchar(150) NOT NULL,
  `source_address` text NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `library_id` int(11) NOT NULL,
  `book_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `author` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mark_id` int(11) NOT NULL,
  `marks` int(3) NOT NULL,
  `total_marks` int(3) NOT NULL,
  `std_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mark_id`, `marks`, `total_marks`, `std_id`, `exam_id`, `subject_id`, `class_id`, `created_at`, `updated_at`) VALUES
(9, 70, 100, 15, 3, 6, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 5555, 100, 17, 3, 6, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 80, 100, 14, 3, 9, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 80, 100, 14, 3, 9, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 80, 100, 14, 3, 9, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 80, 100, 14, 3, 9, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 60, 100, 15, 3, 9, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 50, 100, 16, 3, 9, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sender` varchar(150) NOT NULL,
  `receiver` varchar(150) NOT NULL,
  `message_code` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message`, `sender`, `receiver`, `message_code`, `status`, `created_at`, `updated_at`) VALUES
(2, 'muri khao ', 'imtiaz', 'karim', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'ke kothai aco', 'kader', 'khan', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'terter', 'yryrtuy56u', 'y54u766', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '56uytuj5', 'ujytuj6t7u', 'ujytjuy', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'ikyuio8', 'iuoky7', '8i68rio', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'sfdf', 'dsaf', 'sdfds', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'df', 'dfs', 'sdf', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'fgdf', 'fdgdf', 'drgdf', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `title`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 'exam result', 'result will be published 5, march', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'about new routine', 'its a new  routine\r\n', '0000-00-00 00:00:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'dgfsdgfd', 'shaon', '0000-00-00 20:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'fgsfhfd', 'gjjfy', '2016-06-08 12:45:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `parents_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `religion` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `parents_img` text COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `profession` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `std_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`parents_id`, `name`, `email`, `password`, `phone`, `address`, `blood_group`, `religion`, `parents_img`, `sex`, `profession`, `std_id`, `created_at`, `updated_at`) VALUES
(5, 'fsds', 'admin@mail.com', '123456', '04564', 'sdfs', 'AB-', 'Hinduism', 'images/product1.png', 'male', 'dfsd', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'sdfsd', 'admin@mail.com', '123456', '04563', 'sdfsd', 'B-', 'Buddhism', 'images/product11.png', 'male', 'sdfd', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'dsfsdfsd', 'admin@mail.com', '123456', '05737532', 'sdfsd', 'AB+', 'Christianity', 'images/startup-photos-e14536083417951.jpg', 'female', 'sdfsdf', 0, '0000-00-00 00:00:00', '2016-03-24 09:33:51'),
(8, 'dfsgfdgdf', 'admin@mail.com', '123456', '04234', 'dsfsdf', 'AB-', 'Unaffiliated', 'images/unnamed.png', 'male', 'dsfdsf', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'dsfsdfsd', 'admin@mail.com', '123456', '05737532', 'sdfsd', 'Selec', 'Hinduism', 'images/banner-real-bg1.jpg', 'female', 'sdfsdf', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'shaon', 'admin@mail.com', '123456', '0000000', 'gsdfgsd', 'A+', 'Islam', 'images/startup-photos-e14536083417952.jpg', 'male', 'dsfsd', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'ergdfdf', 'admin@mail.com', '123456', '57357345', 'dhdfh', 'B-', 'Buddhism', 'images/a19e6e9aab147984db8114fab370a559.jpg', 'female', 'hdfhd', 0, '0000-00-00 00:00:00', '2016-04-20 08:16:22'),
(13, 'fdgdf', 'admin@mail.com', '123456', '453453', 'fghfgh', 'Selec', 'Buddhism', 'images/startup-photos-768x512.jpg', 'female', 'dfghdfg', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'dfgdfg', 'admin@mail.com', '123456', '4275357', 'dfhgdfhd', 'B+', 'Christianity', 'images/startup-photos-1024x6831.jpg', 'female', 'ghdfgh', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'aaaaaaaaaaa', 'admin@mail.com', '123456', '42027254', 'dsgsdfg', 'AB+', 'Islam', 'images/743c0c1a27ec64275d4d7c40b1fa500e.jpg', 'male', 'dfgsdf', 0, '0000-00-00 00:00:00', '2016-04-20 08:11:17'),
(16, 'yrtyt', 'admin@mail.com', '123456', '752753', 'rtyrty', 'AB-', 'Unaffiliated', 'images/startup-photos2.jpg', 'male', 'rtyrty', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'dgdf', 'admin@mail.com', '123456', '5335', 'dfgfd', 'AB-', 'Hinduism', 'images/startup-photos-300x2002.jpg', 'female', 'gdfgdg', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `routine_id` int(11) NOT NULL,
  `day` varchar(150) NOT NULL,
  `start_time` text NOT NULL,
  `end_time` text NOT NULL,
  `employee_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`routine_id`, `day`, `start_time`, `end_time`, `employee_id`, `subject_id`, `class_id`, `created_at`, `updated_at`) VALUES
(22, 'Saturday', '10.00', '11.00', 1, 14, 12, '2016-04-21 07:58:12', '2016-04-21 08:14:26'),
(24, 'Saturday', '11.00', '12.00', 2, 14, 12, '2016-04-21 08:35:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salary_id` int(11) NOT NULL,
  `type` varchar(150) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salary_id`, `type`, `amount`, `status`, `employee_id`, `created_at`, `updated_at`) VALUES
(12, 'teacher', 200000, 'paid', 2, '2016-03-24 06:41:10', '2016-03-27 11:38:03'),
(14, 'wd', 8000, 'paid', 5, '2016-03-27 08:51:34', '0000-00-00 00:00:00'),
(16, 'Monthly', 10000, 'paid', 1, '2016-04-20 09:18:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `school_name` varchar(150) NOT NULL,
  `school_info` text NOT NULL,
  `estd` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `std_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `blood_group` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `std_img` text NOT NULL,
  `roll` varchar(150) NOT NULL,
  `sex` varchar(150) NOT NULL,
  `religion` varchar(150) NOT NULL,
  `father_name` varchar(150) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `class_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `transport_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_id`, `name`, `password`, `email`, `address`, `blood_group`, `phone`, `std_img`, `roll`, `sex`, `religion`, `father_name`, `mother_name`, `class_id`, `parent_id`, `transport_id`, `hostel_room_id`, `created_at`, `updated_at`) VALUES
(14, 'Shamem Ahmad', '', '', '', '2', '', 'images/5329eb982f4f89250652702af7a5c14f.jpg', '', '', '1', '', '', 13, 0, 1, 1, '2016-04-13 13:08:57', '2016-04-21 07:08:24'),
(15, 'Hasan', '', '', '', '4', '', '', '', '', 'Select Religion', '', '', 13, 0, 1, 0, '2016-04-13 13:09:25', '2016-04-21 07:06:04'),
(16, 'Bulbul Islam', '', '', '', '2', '', '', '', '', '1', '', '', 13, 0, 0, 0, '2016-04-13 13:10:21', '2016-04-21 07:07:49'),
(17, 'Imtiaz', '', '', '', 'Select Blood Group', '', '', '', '', 'Select Religion', '', '', 13, 0, 0, 0, '2016-04-13 13:10:55', '2016-04-21 07:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendence`
--

CREATE TABLE `student_attendence` (
  `std_attendence_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `time` time NOT NULL,
  `status` varchar(150) NOT NULL,
  `std_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(150) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`, `class_id`, `created_at`, `updated_at`) VALUES
(14, 'Bangla', 12, '2016-04-21 07:54:46', '0000-00-00 00:00:00'),
(15, 'Bangla', 11, '2016-04-21 07:54:51', '0000-00-00 00:00:00'),
(16, 'Math', 12, '2016-04-21 07:54:57', '0000-00-00 00:00:00'),
(17, 'Math', 11, '2016-04-21 07:55:03', '0000-00-00 00:00:00'),
(18, 'Bangla', 13, '2016-04-21 07:55:13', '0000-00-00 00:00:00'),
(19, 'English', 12, '2016-04-21 07:55:25', '0000-00-00 00:00:00'),
(20, 'General Science', 12, '2016-04-21 07:55:44', '2016-04-21 07:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `teacher_attendance_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `time` time NOT NULL,
  `status` varchar(150) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `trans_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `route_name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `no_of_seats` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`trans_id`, `name`, `route_name`, `description`, `no_of_seats`, `employee_id`, `created_at`, `updated_at`) VALUES
(10, 'Bus', 'Banani-Uttara', ' Banani-Uttara', 200, 0, '2016-03-21 11:38:55', '2016-03-21 11:39:08'),
(11, 'asdasd', 'asda', 'sdasd', 33, 0, '2016-04-20 08:14:47', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`book_list_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `dormitory_room`
--
ALTER TABLE `dormitory_room`
  ADD PRIMARY KEY (`dor_room_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `fee_category`
--
ALTER TABLE `fee_category`
  ADD PRIMARY KEY (`fee_category_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `liability`
--
ALTER TABLE `liability`
  ADD PRIMARY KEY (`liability_id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`library_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`parents_id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`routine_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `student_attendence`
--
ALTER TABLE `student_attendence`
  ADD PRIMARY KEY (`std_attendence_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`teacher_attendance_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `book_list`
--
ALTER TABLE `book_list`
  MODIFY `book_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dormitory_room`
--
ALTER TABLE `dormitory_room`
  MODIFY `dor_room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_category`
--
ALTER TABLE `fee_category`
  MODIFY `fee_category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `liability`
--
ALTER TABLE `liability`
  MODIFY `liability_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `library_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `parents_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `student_attendence`
--
ALTER TABLE `student_attendence`
  MODIFY `std_attendence_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `teacher_attendance_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
