-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2024 at 06:26 PM
-- Server version: 10.4.33-MariaDB-log
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll_mdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wy_admin`
--

CREATE TABLE `wy_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_code` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_admin`
--

INSERT INTO `wy_admin` (`admin_id`, `admin_code`, `admin_name`, `admin_email`, `admin_password`, `admin_time`) VALUES
(1, '001', 'Admin', 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2019-04-18 02:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `wy_attendance`
--

CREATE TABLE `wy_attendance` (
  `attendance_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `attendance_date` date DEFAULT NULL,
  `action_name` varchar(200) DEFAULT NULL,
  `action_time` time NOT NULL,
  `emp_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_attendance`
--

INSERT INTO `wy_attendance` (`attendance_id`, `emp_code`, `attendance_date`, `action_name`, `action_time`, `emp_desc`) VALUES
(1, 'WY01', '2024-12-11', 'time-in', '02:23:36', 'checkin'),
(2, 'WY01', '2024-12-11', 'overtime', '02:25:42', 'overtime');

-- --------------------------------------------------------

--
-- Table structure for table `wy_employees`
--

CREATE TABLE `wy_employees` (
  `emp_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `emp_password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `merital_status` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `identity_doc` varchar(255) NOT NULL,
  `identity_no` varchar(255) NOT NULL,
  `emp_type` varchar(255) NOT NULL,
  `joining_date` varchar(255) NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `pan_no` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `pf_account` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_employees`
--

INSERT INTO `wy_employees` (`emp_id`, `emp_code`, `emp_password`, `first_name`, `last_name`, `dob`, `gender`, `merital_status`, `nationality`, `address`, `city`, `state`, `country`, `email`, `mobile`, `telephone`, `identity_doc`, `identity_no`, `emp_type`, `joining_date`, `blood_group`, `photo`, `designation`, `department`, `pan_no`, `bank_name`, `account_no`, `ifsc_code`, `pf_account`, `created`) VALUES
(6, 'WY01', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Will', 'Williams', '04/01/1995', 'male', 'Single', 'American', '2424  Boggess Street', 'Dallas', 'TX', 'US', 'seancvpugosa@gmail.com', '2457878540', '014577854', 'Passport', '012345678', 'Permanent position', '01/29/2019', 'B+', 'WY01.jpg', 'Colletors', 'WEB', '14785424', 'Demo Bank', '012457854512', '12458', '11452', '2021-04-12 13:54:49'),
(7, 'WY02', '12dea96fec20593566ab75692c9949596833adc9', 'Leo', 'Allen', '04/01/1993', 'male', 'Registered partnership', 'American', '4265  Jefferson Street', 'Norfolk', 'VA', 'US', 'leoallen06905@gmail.com', '2450157695', '1245785540', 'Passport', '914575421', 'Permanent position', '04/01/2020', 'AB+', 'WY02.jpg', 'Chief Marketing Officer', 'Marketing', '2014578540', 'Grand Summit Bank Inc.', '69529712540', 'GRSB0069961', 'GB LAD 054110 000 000542', '2021-04-14 13:18:32'),
(8, 'WY03', '12dea96fec20593566ab75692c9949596833adc9', 'Christen', 'Moore', '04/20/1995', 'female', 'Single', 'American', '518  Evergreen Lane', 'Los Angeles', 'CA', 'US', 'moorechristen@gmail.com', '4578545555', '4547854520', 'Passport', '100035420', 'Part-time employee', '04/01/2021', 'A+', 'WY03.jpg', 'Executive Assistant', 'General', '1450578569', 'Crest Bank', '87529722555', 'CBSB0096960', 'CB LAD 094169 000 000111', '2021-04-14 14:23:30'),
(9, 'WY04', '12dea96fec20593566ab75692c9949596833adc9', 'Stephen', 'Denn', '10/12/1992', 'male', 'Registered partnership', 'American', '3007  Carolina Avenue', 'Loveland', 'CO', 'US', 'stephen@gmail.com', '3457856970', '1045786310', 'Passport', '321457852', 'Intern', '04/14/2021', 'A-', 'WY04.jpg', 'Internship Period', 'IT', '2222060446', 'Federal Bank', '273794443158', 'FBSB00139980', 'FB LAD 033385 000 000135', '2021-04-14 15:49:34'),
(10, 'WY05', '12dea96fec20593566ab75692c9949596833adc9', 'Agnes', 'Miller', '07/29/1993', 'female', 'Single', 'American', '4211 Rubaiyt Road', 'Grand Rapids', 'Michign', 'US', 'agnesm88d@gmail.com', '3247548880', '2457778540', 'Passport', '245785000', 'Permanent position', '10/15/2020', 'B+', 'WY05.jpg', 'Chief Technology Officer', 'IT', '425569690', 'Centreville Bank', '4201483626', 'CVCB0011377', 'CB LAD 032425 000 000753', '2021-04-14 19:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `wy_holidays`
--

CREATE TABLE `wy_holidays` (
  `holiday_id` int(11) NOT NULL,
  `holiday_title` varchar(255) NOT NULL,
  `holiday_desc` varchar(255) NOT NULL,
  `holiday_date` varchar(50) NOT NULL,
  `holiday_type` enum('compulsory','restricted') NOT NULL DEFAULT 'compulsory'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_holidays`
--

INSERT INTO `wy_holidays` (`holiday_id`, `holiday_title`, `holiday_desc`, `holiday_date`, `holiday_type`) VALUES
(1, 'Labor Day', 'Labor Day 2020', '05/01/2020', 'compulsory'),
(2, 'Thanksgiving Day', 'Thanksgiving Day 2020', '11/26/2020', 'restricted'),
(9, 'Independence Day', 'Independence Day 2020', '08/15/2020', 'compulsory'),
(16, 'Memorial Day', 'Memorial Day 2020', '05/25/2020', 'restricted'),
(17, 'Martin Luther King, Jr. Birthday', 'Martin Luther King, Jr. Birthday 2020', '01/20/2020', 'compulsory'),
(18, 'Christmas Day', 'Christmas Day 2020', '12/25/2020', 'compulsory'),
(21, 'New Year', 'New Year 2021', '01/01/2021', 'compulsory');

-- --------------------------------------------------------

--
-- Table structure for table `wy_leaves`
--

CREATE TABLE `wy_leaves` (
  `leave_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `leave_subject` varchar(255) NOT NULL,
  `leave_dates` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `leave_status` enum('pending','approve','reject') NOT NULL DEFAULT 'pending',
  `apply_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_leaves`
--

INSERT INTO `wy_leaves` (`leave_id`, `emp_code`, `leave_subject`, `leave_dates`, `leave_message`, `leave_type`, `leave_status`, `apply_date`) VALUES
(1, 'WY01', 'Requesting for leave days', '04/13/2021', 'this is a demo leave message', 'Sick Leave', 'approve', '2021-04-13 10:09:02'),
(3, 'WY03', 'Leave for 2 days', '04/15/2021,04/17/2021', 'Dear admin, i\'d like to apply leave for 2 days as i\'ve been a regular employee since my first day at office. And now, i finally got to rest and spend some time with my family too!', 'Casual Leave', 'reject', '2021-04-14 15:47:06'),
(4, 'WY05', 'Leave for a week', '04/15/2021,04/23/2021', 'i wont be able to join office as i\'ve been suffering from a rough common cold and fever. so, i\'d like to request a leave for week', 'Sick Leave', 'approve', '2021-04-14 19:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `wy_payheads`
--

CREATE TABLE `wy_payheads` (
  `payhead_id` int(11) NOT NULL,
  `payhead_name` varchar(255) NOT NULL,
  `payhead_desc` varchar(255) NOT NULL,
  `payhead_type` enum('earnings','deductions') NOT NULL DEFAULT 'earnings'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_payheads`
--

INSERT INTO `wy_payheads` (`payhead_id`, `payhead_name`, `payhead_desc`, `payhead_type`) VALUES
(18, 'Pag-Ibig Loan', 'Loan', 'deductions'),
(19, 'SSS Loan', 'Loan', 'deductions'),
(20, 'Salary Loan', 'Loan', 'deductions'),
(21, 'Maxicare', 'Loan', 'deductions'),
(22, 'SSS Premium', 'Loan', 'deductions'),
(23, 'Salary', 'Salary of Employee', 'earnings');

-- --------------------------------------------------------

--
-- Table structure for table `wy_pay_structure`
--

CREATE TABLE `wy_pay_structure` (
  `salary_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `payhead_id` int(11) NOT NULL,
  `default_salary` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_pay_structure`
--

INSERT INTO `wy_pay_structure` (`salary_id`, `emp_code`, `payhead_id`, `default_salary`) VALUES
(3, 'WY02', 7, 5.00),
(6, 'WY01', 1, 19350.00);

-- --------------------------------------------------------

--
-- Table structure for table `wy_salaries`
--

CREATE TABLE `wy_salaries` (
  `salary_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `payhead_name` varchar(255) NOT NULL,
  `pay_amount` float(11,2) NOT NULL,
  `earning_total` float(11,2) NOT NULL,
  `deduction_total` float(11,2) NOT NULL,
  `net_salary` float(11,2) NOT NULL,
  `pay_type` enum('earnings','deductions') NOT NULL,
  `pay_month` varchar(255) NOT NULL,
  `generate_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_salaries`
--

INSERT INTO `wy_salaries` (`salary_id`, `emp_code`, `payhead_name`, `pay_amount`, `earning_total`, `deduction_total`, `net_salary`, `pay_type`, `pay_month`, `generate_date`) VALUES
(1, 'WY01', 'Basic Salary', 5000.00, 5000.00, 5000.00, 0.00, 'earnings', 'December, 2024', '2024-12-11 00:23:29'),
(2, 'WY01', 'Conveyance Allowance', 5000.00, 5000.00, 5000.00, 0.00, 'deductions', 'December, 2024', '2024-12-11 00:23:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wy_admin`
--
ALTER TABLE `wy_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`),
  ADD UNIQUE KEY `admin_code` (`admin_code`);

--
-- Indexes for table `wy_attendance`
--
ALTER TABLE `wy_attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `emp_code` (`emp_code`);

--
-- Indexes for table `wy_employees`
--
ALTER TABLE `wy_employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `emp_code` (`emp_code`);

--
-- Indexes for table `wy_holidays`
--
ALTER TABLE `wy_holidays`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `wy_leaves`
--
ALTER TABLE `wy_leaves`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `wy_payheads`
--
ALTER TABLE `wy_payheads`
  ADD PRIMARY KEY (`payhead_id`);

--
-- Indexes for table `wy_pay_structure`
--
ALTER TABLE `wy_pay_structure`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_code` (`emp_code`),
  ADD KEY `payhead_id` (`payhead_id`);

--
-- Indexes for table `wy_salaries`
--
ALTER TABLE `wy_salaries`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_code` (`emp_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wy_admin`
--
ALTER TABLE `wy_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wy_attendance`
--
ALTER TABLE `wy_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wy_employees`
--
ALTER TABLE `wy_employees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wy_holidays`
--
ALTER TABLE `wy_holidays`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wy_leaves`
--
ALTER TABLE `wy_leaves`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wy_payheads`
--
ALTER TABLE `wy_payheads`
  MODIFY `payhead_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wy_pay_structure`
--
ALTER TABLE `wy_pay_structure`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wy_salaries`
--
ALTER TABLE `wy_salaries`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;