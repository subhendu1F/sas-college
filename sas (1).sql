-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2022 at 02:29 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `department_id` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `attendance_date` date NOT NULL,
  `attendance_time` time NOT NULL,
  `attendance_hours` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `student_id`, `teacher_id`, `department_id`, `subject_code`, `attendance_date`, `attendance_time`, `attendance_hours`) VALUES
(27, 'S-401', 'T-002', 'CMSA', 'DSE-B-4-TH', '2022-07-27', '17:49:38', 1),
(28, 'S-403', 'T-002', 'CMSA', 'DSE-B-4-TH', '2022-07-27', '17:50:18', 1),
(29, 'S-404', 'T-002', 'CMSA', 'DSE-B-4-TH', '2022-07-27', '17:50:53', 1),
(30, 'S-419', 'T-002', 'CMSA', 'DSE-B-4-TH', '2022-07-27', '17:52:00', 1),
(31, 'S-422', 'T-002', 'CMSA', 'DSE-B-4-TH', '2022-07-27', '17:52:43', 1),
(32, 'S-423', 'T-002', 'CMSA', 'DSE-B-4-TH', '2022-07-27', '17:53:32', 1),
(33, 'S-425', 'T-002', 'CMSA', 'DSE-B-4-TH', '2022-07-27', '17:54:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `sl_no` int(11) NOT NULL,
  `department_id` varchar(10) NOT NULL,
  `stream_id` varchar(10) NOT NULL,
  `stream_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`sl_no`, `department_id`, `stream_id`, `stream_type`) VALUES
(1, 'CMSA', 'B.sc', 'Honours'),
(2, 'CEMA', 'B.sc', 'Honours'),
(3, 'MTMA', 'B.sc', 'Honours'),
(4, 'ECOA', 'B.sc', 'Honours'),
(5, 'PHSA', 'B.sc', 'Honours'),
(6, 'JORA', 'B.A', 'Honours'),
(7, 'CMSG', 'B.sc', 'General'),
(8, 'CEMG', 'B.sc', 'General'),
(9, 'MTMG', 'B.sc', 'General');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qrdetails`
--

CREATE TABLE `tbl_qrdetails` (
  `sl_no` int(11) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `passkey` int(4) NOT NULL,
  `department_id` varchar(10) NOT NULL,
  `duration` bigint(50) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `start_time` time NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_qrdetails`
--

INSERT INTO `tbl_qrdetails` (`sl_no`, `teacher_id`, `passkey`, `department_id`, `duration`, `subject_code`, `start_time`, `date`) VALUES
(109, 'T-002', 8738, 'CMSA', 1, 'DSE-B-4-TH', '17:47:31', '2022-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stream`
--

CREATE TABLE `tbl_stream` (
  `sl_no` int(11) NOT NULL,
  `stream_id` varchar(10) NOT NULL,
  `stream_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stream`
--

INSERT INTO `tbl_stream` (`sl_no`, `stream_id`, `stream_name`) VALUES
(1, 'B.sc', 'Bachelor of Science'),
(2, 'B.A', 'Bachelor of Arts'),
(3, 'B.Com', 'Bachelor of  Commerce');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `sl_no` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_dob` date NOT NULL,
  `student_ph_number` varchar(20) NOT NULL,
  `student_email_id` varchar(50) NOT NULL,
  `student_address` varchar(100) NOT NULL,
  `stream_id` varchar(10) NOT NULL,
  `stream_type` varchar(10) NOT NULL,
  `department_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`sl_no`, `student_id`, `student_name`, `student_dob`, `student_ph_number`, `student_email_id`, `student_address`, `stream_id`, `stream_type`, `department_id`) VALUES
(1, 'S-001', 'PRITHWIJIT BHADURI', '2000-04-23', '9830443676', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'PHSA'),
(2, 'S-002', 'AYAN DAS', '2001-07-21', '8420983514', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'PHSA'),
(3, 'S-003', 'SANKHA CHATTERJEE', '2001-10-01', '8697291294', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'PHSA'),
(4, 'S-004', 'SHUVAM ROY', '2001-10-01', '9836588654', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'PHSA'),
(5, 'S-005', 'KOYENA BHOWMICK', '2000-12-12', '9073030948', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'PHSA'),
(6, 'S-006', 'CHAYAN GHOSH', '2001-10-01', '7908525457', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'PHSA'),
(7, 'S-010', 'AKASH NANDI', '2000-10-01', '6289128500', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'PHSA'),
(8, 'S-102', 'SRIJEET DEY', '2000-04-23', '9163295133', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CEMA'),
(9, 'S-103', 'NILANJAN BHADRA', '2000-12-24', '9163295133', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CEMA'),
(10, 'S-105', 'Sweta Kumari', '2000-07-13', '9304409134', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CEMA'),
(11, 'S-106', 'Soujannya Chowdhury', '2001-10-27', '9836316383', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CEMA'),
(12, 'S-108', 'SAHELI DATTA', '2001-08-15', '7468061056', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CEMA'),
(13, 'S-109', '6291071794', '2000-09-05', '6291071794', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CEMA'),
(14, 'S-201', 'RIMA BANU', '2000-04-24', '8972121151', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'MTMG'),
(15, 'S-202', 'DEBANJOLI KARMAKAR', '2001-08-18', '8697563867', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'MTMG'),
(16, 'S-203', 'SUBHAJIT NASKAR', '2001-09-05', '9641317632', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'MTMG'),
(17, 'S-205', 'SUSOVAN SAHA', '2001-03-23', '9073837030', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'MTMG'),
(18, 'S-206', 'MOMTAJUL ALAM', '2000-12-22', '6294851290', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'MTMG'),
(19, 'S-207', 'MRINAL HALDER', '2000-06-02', '8768720189', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'MTMG'),
(20, 'S-208', 'MRINAL HALDER', '2000-06-20', '8768720189', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'MTMG'),
(21, 'S-401', 'Niketan Pal', '0000-00-00', '8101599602', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CMSA'),
(22, 'S-402', 'Tamal Bhandari', '2001-10-26', '7890758178', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CMSA'),
(23, 'S-403', 'ABHISHAKE PAL', '2001-06-29', '7687086858', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CMSA'),
(24, 'S-404', 'Supriyo Marik', '2000-09-23', '8777860712', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CMSA'),
(25, 'S-415', 'DIGANTA ADAK', '2001-12-27', '9231886495', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CMSA'),
(26, 'S-419', 'Kunal Pal', '2001-08-05', '9635403297', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CMSA'),
(27, 'S-422', 'SUBHRA DAS', '2001-06-18', '6289710865', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CMSA'),
(28, 'S-423', 'SUBHENDU SAHA', '0200-10-31', '7278582350', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CMSA'),
(29, 'S-424', 'PRITAM BISWAS', '2001-11-05', '9073238078', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CMSA'),
(30, 'S-425', 'Arnab Manna', '2000-07-15', '9330234126', 'student@gmail.com', 'Kolkata', 'B.sc', 'Honours', 'CMSA'),
(31, 'S-501', 'ABDUL SAQLAIN KHAN', '2000-11-05', '9836634710', 'student@gmail.com', 'Kolkata', 'B.sc', 'General', ''),
(32, 'S-502', 'AFSANA YASMIN', '2000-01-19', '6289706909', 'student@gmail.com', 'Kolkata', 'B.sc', 'General', ''),
(33, 'S-503', 'PRATIK PANDEY', '2000-04-07', '6289252238', 'student@gmail.com', 'Kolkata', 'B.sc', 'General', ''),
(34, 'S-504', 'Gourab Chhetri', '2000-10-23', '7003172250', 'student@gmail.com', 'Kolkata', 'B.sc', 'General', ''),
(35, 'S-505', 'Soumik Adhikary', '2000-12-25', '7003172250', 'student@gmail.com', 'Kolkata', 'B.sc', 'General', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `sl_no` int(11) NOT NULL,
  `stream_id` varchar(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`sl_no`, `stream_id`, `subject_code`, `subject_type`) VALUES
(6, 'B.sc', 'CC-1-TH', 'Honours'),
(7, 'B.sc', 'CC-1-P', 'Honours'),
(8, 'B.sc', 'CC-2-TH', 'Honours'),
(9, 'B.sc', 'CC-2-P', 'Honours'),
(10, 'B.sc', 'CC-3-TH', 'Honours'),
(11, 'B.sc', 'CC-3-P', 'Honours'),
(12, 'B.sc', 'CC-4-TH', 'Honours'),
(13, 'B.sc', 'CC-4-P', 'Honours'),
(15, 'B.sc', 'CC-5-TH', 'Honours'),
(16, 'B.sc', 'CC-5-P', 'Honours'),
(18, 'B.sc', 'CC-6-TH', 'Honours'),
(19, 'B.sc', 'CC-6-P', 'Honours'),
(20, 'B.sc', 'CC-7-TH', 'Honours'),
(21, 'B.sc', 'CC-7-P', 'Honours'),
(22, 'B.sc', 'CC-8-TH', 'Honours'),
(23, 'B.sc', 'CC-8-P', 'Honours'),
(24, 'B.sc', 'CC-9-TH', 'Honours'),
(25, 'B.sc', 'CC-9-P', 'Honours'),
(26, 'B.sc', 'CC-10-TH', 'Honours'),
(27, 'B.sc', 'CC-10-P', 'Honours'),
(28, 'B.sc', 'CC-11-TH', 'Honours'),
(29, 'B.sc', 'CC-11-P', 'Honours'),
(30, 'B.sc', 'CC-12-TH', 'Honours'),
(31, 'B.sc', 'CC-12-P', 'Honours'),
(32, 'B.sc', 'CC-13-TH', 'Honours'),
(33, 'B.sc', 'CC-13-P', 'Honours'),
(34, 'B.sc', 'CC-14-TH', 'Honours'),
(35, 'B.sc', 'CC-14-P', 'Honours'),
(37, 'B.sc', 'SEC-A-1-TH', 'Honours'),
(38, 'B.sc', 'SEC-A-1-P', 'Honours'),
(39, 'B.sc', 'SEC-A-2-TH', 'Honours'),
(40, 'B.sc', 'SEC-A-2-P', 'Honours'),
(41, 'B.sc', 'SEC-B-1-TH', 'Honours'),
(42, 'B.sc', 'SEC-B-1-P', 'Honours'),
(43, 'B.sc', 'SEC-B-2-TH', 'Honours'),
(44, 'B.sc', 'SEC-B-2-P', 'Honours'),
(45, 'B.sc', 'DSE-A-1-TH', 'Honours'),
(46, 'B.sc', 'DSE-A-1-P', 'Honours'),
(47, 'B.sc', 'DSE-A-2-TH', 'Honours'),
(48, 'B.sc', 'DSE-A-2-P', 'Honours'),
(49, 'B.sc', 'DSE-B-1-TH', 'Honours'),
(50, 'B.sc', 'DSE-B-1-P', 'Honours'),
(51, 'B.sc', 'DSE-B-2-TH', 'Honours'),
(52, 'B.sc', 'DSE-B-2-P', 'Honours'),
(54, 'B.sc', 'DSE-A-3-TH', 'Honours'),
(55, 'B.sc', 'DSE-A-3-P', 'Honours'),
(56, 'B.sc', 'DSE-A-4-TH', 'Honours'),
(57, 'B.sc', 'DSE-A-4-P', 'Honours'),
(58, 'B.sc', 'DSE-B-3-TH', 'Honours'),
(59, 'B.sc', 'DSE-B-3-P', 'Honours'),
(60, 'B.sc', 'DSE-B-4-TH', 'Honours'),
(61, 'B.sc', 'DSE-B-4-P', 'Honours'),
(62, 'B.sc', 'G-CC-1-TH', 'General'),
(63, 'B.sc', 'G-CC-1-P', 'General'),
(64, 'B.sc', 'G-CC-2-TH', 'General'),
(65, 'B.sc', 'G-CC-2-P', 'General'),
(66, 'B.sc', 'G-CC-3-TH', 'General'),
(67, 'B.sc', 'G-CC-3-P', 'General'),
(68, 'B.sc', 'G-CC-4-TH', 'General'),
(69, 'B.sc', 'G-CC-4-P', 'General'),
(86, 'B.sc', 'G-SEC-A-1-TH', 'General'),
(87, 'B.sc', 'G-SEC-A-2-TH', 'General'),
(88, 'B.sc', 'G-SEC-B-1-TH', 'General'),
(89, 'B.sc', 'G-SEC-B-2-TH', 'General'),
(90, 'B.sc', 'G-DSE-A-5-1-TH', 'General'),
(91, 'B.sc', 'G-DSE-A-5-1-P', 'General'),
(92, 'B.sc', 'G-DSE-A-5-2-TH', 'General'),
(93, 'B.sc', 'G-DSE-A-5-2-P', 'General'),
(94, 'B.sc', 'G-DSE-A-5-3-TH', 'General'),
(95, 'B.sc', 'G-DSE-A-5-3-P', 'General'),
(96, 'B.sc', 'G-DSE-A-6-1-TH', 'General'),
(97, 'B.sc', 'G-DSE-A-6-1-P', 'General'),
(98, 'B.sc', 'G-DSE-A-6-2-TH', 'General'),
(99, 'B.sc', 'G-DSE-A-6-2-P', 'General'),
(100, 'B.sc', 'G-DSE-A-6-3-TH', 'General'),
(101, 'B.sc', 'G-DSE-A-6-3-P', 'General'),
(102, 'B.sc', 'AECC-1', 'General'),
(103, 'B.sc', 'AECC-2', 'General');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `sl_no` int(11) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `teacher_dob` date NOT NULL,
  `teacher_doj` date NOT NULL,
  `teacher_ph_number` int(13) NOT NULL,
  `teacher_email_id` varchar(50) NOT NULL,
  `teacher_address` varchar(100) NOT NULL,
  `teacher_password` varchar(10) NOT NULL,
  `department_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`sl_no`, `teacher_id`, `teacher_name`, `teacher_dob`, `teacher_doj`, `teacher_ph_number`, `teacher_email_id`, `teacher_address`, `teacher_password`, `department_id`) VALUES
(1, 'T-001', 'Monali Poddar', '2022-05-01', '2022-05-02', 1234567890, 'monsar123@gmail.com', 'Shyambazer', 'teacher', 'CMSA'),
(2, 'T-002', 'Chaitali Ghosh', '1993-05-03', '2017-05-04', 123456789, 'demo@gmail.com', 'shyambazer', 'teacher', 'CMSA'),
(3, 'T-003', 'Biswajit Prasad', '1989-07-03', '2013-05-04', 12345678, 'demo@gmail.com', 'Shyambazar\r\n', 'teacher', 'CMSA'),
(4, 'T-004', 'Saswati Chakraborty', '1985-02-05', '2013-10-04', 12345678, 'demo@gmail.com', 'Shyamnagar', 'teacher', 'CMSA'),
(5, 'T-005', 'Shyamal Mondal', '1989-07-03', '2017-05-04', 2323233, 'ees@fddde.co', 'Shyamnagar', 'teacher', 'PHSA'),
(6, 'T-006', 'Hurmal Saren', '1989-07-03', '2020-07-15', 123456789, 'demo@gmail.com', 'Shyambazer', 'teacher', 'PHSA'),
(7, 'T-007', 'Rita Basak', '1979-07-03', '2020-10-12', 123456789, 'demo@gmail.com', 'Shyambazer', 'teacher', 'PHSA'),
(8, 'T-008', 'Sonali Chakraborty', '1977-07-03', '2020-10-12', 123456789, 'demo@gmail.com', 'Shyambazer', 'teacher', 'PHSA'),
(9, 'T-009', 'Sanchayita Mondal', '1990-01-04', '2015-05-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'PHSA'),
(10, 'T-010', 'Sunetra Das', '1970-01-04', '2015-05-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'PHSA'),
(11, 'T-011', 'Mimi Dan', '1977-01-04', '2013-02-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'PHSA'),
(12, 'T-012', 'Antara Mitra Dutta', '1978-11-04', '2015-12-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'PHSA'),
(13, 'T-013', 'Patha Dutta', '1970-07-03', '2013-05-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'CEMA'),
(14, 'T-014', 'Dola Pahari', '1969-07-13', '2012-07-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'CEMA'),
(15, 'T-015', 'Suranjana Chakraborty', '1989-07-10', '2010-07-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'CEMA'),
(16, 'T-016', 'Krishna Biswasy', '1979-07-10', '2012-07-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'CEMA'),
(17, 'T-017', 'Santanu Bhattacharya', '1969-07-10', '2015-07-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'CEMA'),
(18, 'T-018', 'Parimal Kundu', '1989-07-10', '2015-07-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'CEMA'),
(19, 'T-019', 'Rupankar Paira', '1979-07-10', '2012-07-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'CEMA'),
(20, 'T-020', 'Biswajit Das', '1989-07-03', '2013-05-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'JORA'),
(21, 'T-021', 'Lahari Mukherjee', '1970-07-03', '2015-05-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'JORA'),
(22, 'T-022', 'Souvik Basu', '1972-07-03', '2014-05-04', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'JORA'),
(23, 'T-023', 'Shilpi Mukherjee', '1978-07-03', '2014-09-10', 12345678, 'demo@gmail.com', 'Shyambazar', 'teacher', 'JORA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`sl_no`,`department_id`);

--
-- Indexes for table `tbl_qrdetails`
--
ALTER TABLE `tbl_qrdetails`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `tbl_stream`
--
ALTER TABLE `tbl_stream`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`sl_no`,`student_id`);

--
-- Indexes for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`sl_no`,`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_qrdetails`
--
ALTER TABLE `tbl_qrdetails`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tbl_stream`
--
ALTER TABLE `tbl_stream`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
