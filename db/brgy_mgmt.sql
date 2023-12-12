-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 04:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brgy_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `actId` int(11) NOT NULL,
  `actName` text NOT NULL,
  `actDate` varchar(20) NOT NULL,
  `date_added` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`actId`, `actName`, `actDate`, `date_added`) VALUES
(2, 'Activity 5', '2022-12-23', ''),
(3, 'Activity 3', '2022-12-10', '2022-12-11'),
(4, 'Activity 2', '2022-12-11', '2022-12-11'),
(5, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Rem, ipsum delectus voluptatum? Molestias aut inventore eaque, maxime numquam dignissimos asperiores, voluptatibus consectetur distinctio excepturi odit architecto, saepe enim sunt, molestiae.', '2022-12-11', '2022-12-11'),
(6, 'Sample announcement', '2023-05-15', '2023-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaint_Id` int(11) NOT NULL,
  `residentId` int(11) NOT NULL,
  `complaint_topic` varchar(255) NOT NULL,
  `complaint_description` text NOT NULL,
  `additional_info` text NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_reported` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`complaint_Id`, `residentId`, `complaint_topic`, `complaint_description`, `additional_info`, `added_by`, `date_reported`) VALUES
(2, 66, 'samlpe', 'samlpe', 'samlpe', 0, '2023-05-27 05:51:36'),
(3, 66, 'fdfdsfsdf', 'dsfsdfsdf', 'sdfsdfsfsdf', 66, '2023-05-27 08:53:04'),
(4, 66, 'fd', 'fd', 'fd', 66, '2023-05-27 09:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `customization`
--

CREATE TABLE `customization` (
  `customID` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `status` varchar(150) NOT NULL DEFAULT 'Inactive',
  `date_added` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customization`
--

INSERT INTO `customization` (`customID`, `picture`, `status`, `date_added`) VALUES
(7, '6207ad7e34af5.jpg', 'Inactive', '2022-11-27'),
(8, 'wallpaperflare.com_wallpaper (1).jpg', 'Inactive', '2022-11-27'),
(10, 'wallpaperflare.com_wallpaper.jpg', 'Active', '2022-11-27'),
(11, 'minimalism-1644666519306-6515.jpg', 'Inactive', '2022-11-27'),
(18, 'logo.png', 'Inactive', '2022-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `doc_Id` int(11) NOT NULL,
  `doc_type` varchar(100) NOT NULL,
  `doc_residenceId` int(11) NOT NULL,
  `NonResident` varchar(255) NOT NULL,
  `NonResident__Address` text NOT NULL,
  `doc_purpose` text NOT NULL,
  `tradeName` varchar(255) NOT NULL,
  `businessNature` varchar(255) NOT NULL,
  `controlNumber` varchar(255) NOT NULL,
  `brgyIDnumber` varchar(50) NOT NULL,
  `ORNumber` varchar(255) NOT NULL,
  `doc_paidAmount` varchar(50) NOT NULL,
  `doc_status` int(11) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `date_acquired` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`doc_Id`, `doc_type`, `doc_residenceId`, `NonResident`, `NonResident__Address`, `doc_purpose`, `tradeName`, `businessNature`, `controlNumber`, `brgyIDnumber`, `ORNumber`, `doc_paidAmount`, `doc_status`, `date_acquired`) VALUES
(136, 'Barangay Business Clearance', 69, '', '', 'Get Brgy. Business Clearance Permit', 'S<APLE UPDATE', 'S<APLE UPDATE', '1231', '', '231', '1000', 1, '2023-05-25 08:09 PM'),
(137, 'Barangay Residency', 69, '', '', 'hAHA\r\n', '', '', '', '', '', '1000', 0, '2023-05-25 08:09 PM'),
(139, 'Barangay Clearance', 69, '', '', 'HAHA', '', '', '', '', '', '1000', 1, '2023-05-25 08:10 PM'),
(140, 'Barangay Construction', 69, '', '', 'Get Barangay Construction Certificate', '', '', '', '', '', '1000', 0, '2023-05-25 08:10 PM'),
(141, 'Barangay ID Card', 69, '', '', 'Get Brgy. ID Card', '', '', '', '1000', '', '1000', 0, '2023-05-25 08:11 PM'),
(144, 'Barangay Business Clearance', 83, '', '', 'Get Brgy. Business Clearance Permit', 'Sample123', 'Sample123', '123456', '', '123456', '123456', 0, '2023-05-26 05:07 PM'),
(145, 'Barangay Residency', 69, '', '', 'fds', '', '', '', '', '', '', 0, '2023-05-26 06:39 PM'),
(146, 'Brgy. Non-Residency', 0, 'sample', 'fdsfsd', 'Get Brgy. Non-Residency', '', '', '', '', '', '543', 0, '2023-05-27 10:56 AM'),
(147, 'Barangay Construction', 69, '', '', 'Get Barangay Construction Certificate', '', '', '', '', '', '4324', 1, '2023-05-27 11:16 AM'),
(148, 'Barangay Indigency', 66, '', '', 'fdsfsd', '', '', '', '', '', '34', 1, '2023-05-27 11:20 AM'),
(149, 'Barangay Business Clearance', 67, '', '', 'Get Brgy. Business Clearance Permit', 'approve', 'approve', '543534', '', '54353', '1111', 1, '2023-05-27 11:22 AM'),
(150, 'Barangay ID Card', 66, '', '', 'Sample', '', '', '', '', '', '', 0, '2023-05-27 07:17 PM'),
(151, 'Barangay Construction', 66, '', '', '', '', '', '', '', '', '', 0, '2023-05-27 07:18 PM'),
(152, 'Barangay Business Clearance', 66, '', '', 'SAM<PLE', '', '', '', '', '', '', 0, '2023-05-27 08:00 PM'),
(153, 'Barangay Indigency', 67, '', '', 'dadas', '', '', '', '', '', '32', 0, '2023-09-03'),
(154, 'Barangay Residency', 69, '', '', 'sample', '', '', '', '', '', '120', 0, '2023-09-13'),
(155, 'Barangay ID Card', 69, '', '', 'Get Brgy. ID Card', '', '', '', '4432432', '', '43', 0, '2023-09-23'),
(156, 'Barangay Clearance', 67, '', '', 'dsad', '', '', '', '', '', '22', 0, '2023-11-27'),
(157, 'Barangay Clearance', 72, '', '', 'sample', '', '', '', '', '', '100', 0, '2023-11-28'),
(158, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', '432', 'dfds', '432423', '', '433', '432', 0, '2023-12-04'),
(159, 'Barangay Ownership', 67, '', '', 'Get Brgy. Ownership Certificate', '', '', '', '', '', '43', 0, '2023-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `incomeId` int(11) NOT NULL,
  `inc_doc_Id` int(11) NOT NULL,
  `paid_by` varchar(255) NOT NULL,
  `paymentFor` varchar(255) NOT NULL,
  `paymentDesc` text NOT NULL,
  `paymentAmount` varchar(255) NOT NULL,
  `date_paid` varchar(255) NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `date_added` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `date_updated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`incomeId`, `inc_doc_Id`, `paid_by`, `paymentFor`, `paymentDesc`, `paymentAmount`, `date_paid`, `added_by`, `date_added`, `updated_by`, `date_updated`) VALUES
(129, 136, 'Juan Panday Dela Cruz ', 'Barangay Business Clearance', 'Get Brgy. Business Clearance Permit', '1000', '2023-05-27 11:25 AM', '40', '2023-05-25 08:09 PM', '', ''),
(130, 137, 'Juan Panday Dela Cruz ', 'Barangay Residency', 'hAHA\r\n', '1000', '2023-05-25 08:53 PM', '40', '2023-05-25 08:09 PM', '', ''),
(132, 139, 'Juan Panday Dela Cruz ', 'Barangay Clearance', 'HAHA', '1000', '2023-05-27 11:26 AM', '40', '2023-05-25 08:10 PM', '', ''),
(133, 140, 'Juan Panday Dela Cruz ', 'Barangay Construction', 'Get Barangay Construction Certificate', '1000', '2023-05-25 08:52 PM', '40', '2023-05-25 08:10 PM', '', ''),
(134, 141, 'Juan Panday Dela Cruz ', 'Barangay ID Card', 'Get Brgy. ID Card', '1000', '2023-05-25 08:52 PM', '40', '2023-05-25 08:11 PM', '', ''),
(137, 144, 'Erwin Kini Erwin Kini Erwin Kini ', 'Barangay Business Clearance', 'Get Brgy. Business Clearance Permit', '123456', '2023-05-26 05:08 PM', '40', '2023-05-26 05:07 PM', '', ''),
(138, 145, 'Juan Panday Dela Cruz ', 'Barangay Residency', 'fds', '43', '2023-05-26 06:39 PM', '42', '2023-05-26 06:39 PM', '', ''),
(139, 146, 'sample', 'Brgy. Non-Residency', 'Get Brgy. Non-Residency', '543', '2023-05-27 10:56 AM', '66', '2023-05-27 10:56 AM', '', ''),
(140, 147, 'Juan Panday Dela Cruz ', 'Barangay Construction', 'Get Barangay Construction Certificate', '4324', '2023-05-27 11:16 AM', '40', '2023-05-27 11:16 AM', '', ''),
(141, 148, 'Juan Panday Dela Cruz ', 'Barangay Indigency', 'fdsfsd', '34', '2023-05-27 11:20 AM', '40', '2023-05-27 11:20 AM', '', ''),
(142, 149, 'dsd d d ', 'Barangay Business Clearance', 'Get Brgy. Business Clearance Permit', '1111', '2023-05-27 11:33 AM', '40', '2023-05-27 11:22 AM', '', ''),
(143, 150, 'dddsdds d d ', 'Barangay ID Card', 'Sample', '', '', '66', '2023-05-27 07:17 PM', '', ''),
(144, 151, 'dddsdds d d ', 'Barangay Construction', '', '', '', '66', '2023-05-27 07:18 PM', '', ''),
(145, 152, 'dddsdds d d ', 'Barangay Business Clearance', 'SAM<PLE', '', '', '66', '2023-05-27 08:00 PM', '', ''),
(146, 0, 'dsd d d ', 'Barangay Indigency', 'dadas', '32', '2023-09-03', '40', '2023-09-03', '', ''),
(147, 0, 'Juan Panday Dela Cruz ', 'Barangay Residency', 'sample', '120', '2023-09-13', '40', '2023-09-13', '', ''),
(148, 0, 'Juan Panday Dela Cruz ', 'Barangay ID Card', 'Get Brgy. ID Card', '43', '2023-09-23', '40', '2023-09-23', '', ''),
(149, 0, 'dsd d d ', 'Barangay Clearance', 'dsad', '22', '2023-11-27', '40', '2023-11-27', '', ''),
(150, 0, 'DADADAD DADADAD DADADAD ', 'Barangay Clearance', 'sample', '100', '2023-11-28', '40', '2023-11-28', '', ''),
(151, 0, '', 'Fare', '', '200', '2023-11-28', '40', '2023-11-28', '', ''),
(152, 0, 'Juan Panday Dela Cruz ', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '432', '2023-12-04', '40', '2023-12-04', '', ''),
(153, 0, 'dsd d d ', 'Barangay Ownership', 'Get Brgy. Ownership Certificate', '43', '2023-12-04', '42', '2023-12-04', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `officials`
--

CREATE TABLE `officials` (
  `officialID` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `suffix` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `digital_signature` varchar(255) NOT NULL,
  `date_registered` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `officials`
--

INSERT INTO `officials` (`officialID`, `firstname`, `middlename`, `lastname`, `suffix`, `position`, `description`, `digital_signature`, `date_registered`) VALUES
(1, 'Erwins', 'Cabag', 'Son', '', 'Barangay Captain', 'Barangay Captain Sample Description', 'testimonials-4.jpg', '2022-11-26'),
(2, 'Danilo', 'Cabag', 'Nicolas Jr.', '', 'Barangay Secretary', 'Barangay Secretary Description Sample', 'a.jpg', '2022-11-26'),
(3, 'Jose', '', 'Rizal', '', 'Barangay Councilor', 'Barangay Councilor Sample Description', '1.jpg', '2022-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `residence`
--

CREATE TABLE `residence` (
  `residenceId` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `suffix` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `age` varchar(100) NOT NULL,
  `ageClassification` varchar(25) NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `civilstatus` varchar(50) NOT NULL,
  `citizenship` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `house_no` varchar(255) NOT NULL,
  `street_name` varchar(255) NOT NULL,
  `purok` varchar(255) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `familyIndicator` varchar(20) NOT NULL,
  `headName` varchar(50) NOT NULL,
  `familyRole` varchar(50) NOT NULL,
  `sector` varchar(100) NOT NULL,
  `resident_status` varchar(100) NOT NULL,
  `voter_status` varchar(100) NOT NULL,
  `ID_status` varchar(100) NOT NULL,
  `QR_status` varchar(100) NOT NULL,
  `months_of_stay` varchar(50) NOT NULL,
  `years_of_stay` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `digital_signature` varchar(255) NOT NULL,
  `personalDocuments` varchar(255) NOT NULL,
  `qrCode` varchar(255) NOT NULL,
  `residentCode` varchar(100) NOT NULL,
  `residentPIN` varchar(10) NOT NULL,
  `added_By` varchar(150) NOT NULL,
  `date_registered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `residence`
--

INSERT INTO `residence` (`residenceId`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `age`, `ageClassification`, `birthplace`, `gender`, `civilstatus`, `citizenship`, `occupation`, `religion`, `contact`, `email`, `password`, `house_no`, `street_name`, `purok`, `zone`, `barangay`, `municipality`, `province`, `region`, `familyIndicator`, `headName`, `familyRole`, `sector`, `resident_status`, `voter_status`, `ID_status`, `QR_status`, `months_of_stay`, `years_of_stay`, `image`, `digital_signature`, `personalDocuments`, `qrCode`, `residentCode`, `residentPIN`, `added_By`, `date_registered`) VALUES
(66, 'dddsdds', 'd', 'd', '', '1993-06-16', '29 years old', 'Adult', 'df', 'Female', 'Single', 'By Birth', 'fsd', 'Roman Catholic', '9123456789', 'residentnew@gmail.com', '0192023a7bbd73250516f069df18b500', 'fds', 'fds', 'fds', 'fds', 'fds', 'fds', 'fdsfsd', 'fdsf', 'Head', 'test123', 'test421', 'PWD', 'Perma/Owned', 'Active', 'Active', 'None', '23', '43', 'newlogo2.png', '3.jpg', '', '', '', '', 'Juan Dela Cruz', '2023-05-22'),
(67, 'dsd', 'd', 'd', '', '2016-03-09', '6 years old', 'Child', 'dsa', 'Male', 'Married', 'By Family', 'fdsf', 'Iglesia Ni Cristo', '', '', '', 'fdsf', 'dsf', 'fdsf', 'fdsf', 'dsfsd', 'fdsf', 'fsdfsd', 'fds', '', '', '', 'Senior Citizen', 'Perma/Owned', 'Active', 'Active', 'Active', '', '43', 'Screenshot (185).png', 'Screenshot (186).png', '', '', '', '', 'Erwin Cabag Son', '2022-11-25'),
(69, 'Juan', 'Panday', 'Dela Cruz', '', '1997-10-15', '25 years old', 'Adult', 'bvcbcb', 'Female', 'Separated', 'Naturalization', 'bvcbc', 'Ang Dating Daan', '', '', '', 'bvc', 'bcvbcb', 'vcbcb', 'vcbcv', 'bcvbc', 'bcvbcvbcv', 'bvc', 'bvcbc', '', '', '', 'Solo Parents', 'Tempo/Rented', 'Active', 'None', 'Active', '', '343', 'Screenshot (193).png', 'Screenshot (188).png', '', '../images-qr-codes/63a70b9feddb2.png', '', '', 'Erwin Cabag Son', '2022-11-25'),
(70, 'fsfsd', 'fsdfsf', 'sdfs', '', '1952-07-09', '70 years old', 'Senior', 'fsfs', 'Non-Binary', 'Widow/ER', 'By Marriage', 'gfdgd', 'Islam', '', '', '', 'gfd', 'gdf', 'gfd', 'gfdg', 'fdgdf', 'gfdg', 'fdg', 'gfd', '', '', '', 'PWD', 'Tempo/Rented', 'None', 'None', 'None', '', '2', 'Screenshot (184).png', 'Screenshot (186).png', '', '', '', '', 'Jose Rizal', '2022-11-25'),
(71, 'fdgfdgdg', 'gwq', 'wq', 'w', '2022-11-10', '2 weeks old', 'Toddler', 'wq', 'Female', 'Widow/ER', 'By Family', 'wq', 'Protestants', '', '', '', 'wq', 'w', 'qwq', 'w', 'w', 'w', 'qwq', 'w', '', '', '', 'Solo Parents', 'Tempo/Rented', 'Active', 'Active', 'None', '', '3', '1fLSnJV.jpg', '1fLSnJV.jpg', '', '', '', '', 'Juan Dela Cruz', '2022-11-27'),
(72, 'DADADAD', 'DADADAD', 'DADADAD', '', '2022-12-13', '6 days old', 'Toddler', 'DADADAD', 'Female', 'Married', 'By Marriage', 'DADADAD', 'Seventh-day Adventism', '', '', '', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', '', '', '', 'Senior Citizen', 'Tempo/Rented', 'Active', 'None', 'Active', '', '2', '315423302_2170759329772205_8153808227283622299_n.jpg', '315423302_2170759329772205_8153808227283622299_n.jpg', '', '../images-qr-codes/63a071bf9f8fa.png', '', '', 'Jose Rizal', '2022-12-19'),
(73, 'bvc', 'bvcb', 'bvc', '', '2022-12-15', '1 week old', 'Toddler', 'bvcb', 'Female', 'Separated', 'By Birth', 'bvc', 'Aglipayan', '', '', '', 'bvb', 'vcb', 'bvbv', 'bv', 'bvb', 'vbv', 'bvb', 'bv', '', '', '', 'Senior Citizen', 'Tempo/Rented', 'Inactive', 'Active', 'None', '', '343', '2.jpg', '3.jpg', '', '../images-qr-codes/63a3e7ab3bbcf.png', '', '', 'Erwin Cabag Son', '2022-12-22'),
(74, 'dadaadadd', 'dadaadadd', 'dadaadadd', '', '2022-12-09', '1 week old', 'Toddler', 'dadaadadd', 'Male', 'Widow/ER', 'By Birth', 'dadaadadd', 'Bible Baptist Church', '', '', '', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', '', '', '', 'PWD', 'Tempo/Rented', 'None', 'Active', 'None', '', '23', '2.jpg', '4.jpg', '', '../images-qr-codes/63a3e807201e2.png', '', '', 'Jose Rizal', '2022-12-22'),
(75, 'Cong TV', 'Cong TV', 'Cong TV', '', '2022-12-15', '1 week old', 'Toddler', 'Cong TV', 'Male', 'Single', 'By Birth', 'Cong TV', 'United Church of Christ in the Philippines', '', '', '', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', '', '', '', 'Senior Citizen', 'Perma/Owned', 'Active', 'Active', 'Active', '', '2', '2.jpg', '3.jpg', '', '../images-qr-codes/63a3e9146f38c.png', 'BMS-63a3e9146f385', '123321', 'Juan Dela Cruz', '2022-12-22'),
(76, 'Bonifacio', 'Bonifacio', 'Bonifacio', '', '2022-12-17', '1 week old', 'Toddler', 'BonifacioBonifacioBonifacioBonifacio', 'Male', 'Single', 'By Family', 'BonifacioBonifacio', 'Methodist', '', '', '', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'gfd', 'gfd', 'gfd', 'Senior Citizen', 'Tempo/Rented', 'Active', 'None', 'Active', '', '22', 'academia.png', 'aclc.png', '', '../images-qr-codes/63a70b9feddb2.png', 'BMS-63a70b9feddad', '123456', 'Erwin Cabag Son', '2022-12-24'),
(77, 'fdsfs', 'fdsfsd', 'fsdf', 'sfsd', '2023-01-11', '1 week old', 'Toddler', 'gfdgf', 'Male', 'Single', 'By Birth', 'gfdgdgdf', 'Jehovah\'s Witnesses', '', '', '', 'gfd', 'gdfg', 'dfgdfgfd', 'gfdgfd', 'gdfg', 'fdgdfg', 'dfgfd', 'gfd', 'Member', 'gfdg', 'dgg', 'PWD', 'Tempo/Rented', 'Active', 'Active', 'Active', '', '432', '6207ad7e34af5.jpg', '4297150.jpg', '', '../images-qr-codes/63c915cf3a34f.png', 'BMS-63c915cf3a346', '', 'Jose Rizal', '2023-01-19'),
(79, 'Certsadsfs', 'Certsa', 'Certsa', '', '2023-01-13', '1 week old', 'Toddler', 'Certsa', 'Male', 'Single', 'By Family', 'Certsa', 'Iglesia Ni Cristo', '9359428963', '', '', 'Certsa', 'Certsa', 'Certsa', 'Certsa', 'Certsa', 'Certsa', 'Certsa', 'Certsa', 'Member', 'Certsa', 'Certsa', 'Senior Citizen', 'Tempo/Rented', 'Inactive', 'Active', 'Active', '', '13', '6207ad7e34af5.jpg', 'rUPmy8.jpg', 'wp4813161-simple-minimalist-wallpapers.jpg', '../images-qr-codes/63cbb4ea53611.png', 'BMS-63cbb4ea5360b', '', 'Juan  Dela Cruz ', '2023-01-21'),
(80, 'certificate', 'certificate', 'certificate', '', '2023-01-11', '1 week old', 'Toddler', 'certificate', 'Male', 'Single', 'By Birth', 'certificate', 'Iglesia Ni Cristo', '', '', '', 'certificate', 'certificate', 'certificate', 'certificate', 'certificate', 'certificate', 'certificate', 'certificate', 'Head', 'certificate', 'certificate', 'Senior Citizen', 'Tempo/Rented', 'Active', 'Active', 'None', '', '2', 'ba.jpg', 'harvest.png', 'rUPmy8.jpg', '../images-qr-codes/63cbb58ade5fc.png', 'BMS-63cbb58ade5f7', '', 'Juan  Dela Cruz ', '2023-01-21'),
(81, 'csmapl', 'csmapl', 'csmapl', '', '2023-01-10', '2 weeks old', 'Toddler', 'csmapl', 'Female', 'Married', 'By Birth', 'csmapl', 'Hindu', '9123456789', '', '', 'csmapl', 'csmapl', 'csmapl', 'csmapl', 'csmapl', 'csmapl', 'csmapl', 'csmapl', 'Head', 'csmapl', 'csmapl', 'Senior Citizen', 'Tempo/Rented', 'Active', 'None', 'Active', '', '23', '1.jpg', '2.jpg', '', '../images-qr-codes/63d272ebc4670.png', 'BMS-63d272ebc466a', '', 'Juan  Dela Cruz ', '2023-01-26'),
(82, 'csmaplcsmapl', 'csmaplcsmapl', 'csmaplcsmapl', '', '2023-01-10', '2 weeks old', 'Toddler', 'csmaplcsmapl', 'Male', 'Married', 'By Family', 'csmaplcsmapl', 'Hindu', '9123456789', '', '', 'csmaplcsmapl', 'csmaplcsmapl', 'csmaplcsmapl', 'csmaplcsmapl', 'csmaplcsmapl', 'csmaplcsmapl', 'csmaplcsmapl', 'csmaplcsmapl', 'Head', 'csmaplcsmapl', 'csmaplcsmapl', 'PWD', 'Tempo/Rented', 'Inactive', 'Active', 'Active', '', '23', '3.jpg', '13.jpg', '18.jpg', '../images-qr-codes/63d27318b6164.png', 'BMS-63d27318b615e', '', 'Juan  Dela Cruz ', '2023-01-26'),
(83, 'Erwin Kini', 'Erwin Kini', 'Erwin Kini', '', '2023-01-11', '2 weeks old', 'Toddler', 'Erwin Kini', 'Male', 'Married', 'By Birth', 'Erwin Kini', 'Iglesia Ni Cristo', '9123456789', '', '', 'Erwin Kini', 'Erwin Kini', 'Erwin Kini', 'Erwin Kini', 'Erwin Kini', 'Erwin Kini', 'Erwin Kini', 'Erwin Kini', 'Head', 'Erwin Kini', 'Erwin Kini', 'Senior Citizen', 'Perma/Owned', 'Inactive', 'None', 'Active', '', '23', '3.jpg', '14.jpg', '', '../images-qr-codes/63d273bccc34a.png', 'BMS-63d273bccc342', '', 'Juan  Dela Cruz ', '2023-01-26'),
(84, 'sample muna', 'sample muna', 'sample muna', '', '2023-05-09', '1 week old', 'Toddler', 'sample muna', 'Male', 'Single', 'By Birth', 'sample muna', 'Methodist', '9123456789', '', '', 'sample muna', 'sample muna', 'Pildera II', 'Zone 20', 'Barangay 193', 'Quezon City', 'Metro Manila', 'NCR', 'Head', 'sample muna', 'sample muna', 'PWD', 'Tempo/Rented', 'Active', 'Active', 'Active', '3', '2', 'newlogo2.png', 'newlogo2.png', 'newlogo2.png', '../images-qr-codes/646aeda4806cd.png', 'BMS-646aeda4806c6', '', 'Juan  Dela Cruz ', '2023-05-22'),
(85, 'new resident', 'new resident', 'new resident', '', '2023-05-01', '3 weeks old', 'Toddler', 'new resident', 'Female', 'Single', 'By Family', 'new resident', 'Buddhist', '9123456789', '', '', 'new resident', 'new residentnew resident', 'Pildera II', 'Zone 20', 'Barangay 193', 'Quezon City', 'Metro Manila', 'NCR', 'Head', 'new resident', 'new resident', 'Senior Citizen', 'Tempo/Rented', 'Inactive', 'Active', 'Active', '23', '23', 'newlogo2.png', 'newlogo2.png', 'newlogo2.png', '../images-qr-codes/646aeff31dce1.png', 'BMS-646aeff31dcdb', '', '<br />\r\n<b>Notice</b>:  Undefined variable: row in <b>C:\\xampp\\htdocs\\PROJECT 23. Barangay Management System (With Chapter 1-5 documents)\\registration', '2023-05-22'),
(86, 'newEmail', 'newEmail', 'newEmail', '', '2023-05-09', '1 week old', 'Toddler', 'newEmail', 'Male', 'Single', 'By Birth', 'newEmail', 'Buddhist', '9359428963', '', '', 'newEmail', 'newEmail', 'Pildera II', 'Zone 20', 'Barangay 193', 'Quezon City', 'Metro Manila', 'NCR', 'Head', 'newEmail', 'newEmail', 'Senior Citizen', 'Tempo/Rented', 'Active', 'Active', 'Active', '2', '2', 'newlogo2.png', 'newlogo2.png', 'newlogo2.png', '../images-qr-codes/646af57422b55.png', 'BMS-646af57422b4b', '', '<br />\r\n<b>Notice</b>:  Undefined variable: row in <b>C:\\xampp\\htdocs\\PROJECT 23. Barangay Management System (With Chapter 1-5 documents)\\registration', '2023-05-22'),
(87, 'sda', 'dsadas', 'dasdsa', '', '2023-05-02', '2 weeks old', 'Toddler', 'dsa', 'Male', 'Married', 'By Birth', 'dsad', 'Jehovah\'s Witnesses', '9123456789', '', '', 'dsads', 'adsadasdadas', 'Pildera II', 'Zone 20', 'Barangay 193', 'Quezon City', 'Metro Manila', 'NCR', 'Member', 'dsa', 'dsa', 'Senior Citizen', 'Tempo/Rented', 'Inactive', 'Active', 'Active', '2', '22', 'newlogo2.png', 'newlogo2.png', 'newlogo2.png', '../images-qr-codes/646af5a302992.png', 'BMS-646af5a30298a', '', '<br />\r\n<b>Notice</b>:  Undefined variable: row in <b>C:\\xampp\\htdocs\\PROJECT 23. Barangay Management System (With Chapter 1-5 documents)\\registration', '2023-05-22'),
(88, 'sampe new', 'sampe new', 'sampe new', '', '2023-05-09', '1 week old', 'Toddler', 'sampe new', 'Female', 'Single', 'By Family', 'sampe new', 'Judaism', '9123456789', 'sampenew@gmail.com', '', 'sampenew@gmail.com', 'sampenew@gmail.com', 'Pildera II', 'Zone 20', 'Barangay 193', 'Quezon City', 'Metro Manila', 'NCR', 'Member', 'sampenew@gmail.com', 'sampenew@gmail.com', 'Senior Citizen', 'Tempo/Rented', 'Active', 'Active', 'Active', '23', '23', 'newlogo2.png', 'newlogo2.png', 'newlogo2.png', '../images-qr-codes/646af651ccd82.png', 'BMS-646af651ccd79', '', '<br />\r\n<b>Notice</b>:  Undefined variable: row in <b>C:\\xampp\\htdocs\\PROJECT 23. Barangay Management System (With Chapter 1-5 documents)\\registration', '2023-05-22'),
(89, 'dsa', 'dsad', 'sadasd', '', '2023-05-08', '2 weeks old', 'Toddler', 'dsad', 'Male', 'Single', 'By Birth', 'dsadsad', 'Jehovah\'s Witnesses', '9123456789', 'sampendsfdsfew@gmail.com', 'b5de64cab4ff6cd5886cff47bc80f76b', 'sampenew@gmail.com', 'sampenew@gmail.com', 'Pildera II', 'Zone 20', 'Barangay 193', 'Quezon City', 'Metro Manila', 'NCR', 'Head', 'dsd', 'vsdds', 'Senior Citizen', 'Tempo/Rented', 'Active', 'Active', 'Active', '23', '32', 'newlogo2.png', 'newlogo2.png', 'newlogo2.png', '../images-qr-codes/646af6dfb1e43.png', 'BMS-646af6dfb1e39', '', '<br />\r\n<b>Notice</b>:  Undefined variable: row in <b>C:\\xampp\\htdocs\\PROJECT 23. Barangay Management System (With Chapter 1-5 documents)\\registration', '2023-05-22'),
(90, 'fdsf', 'sdfsd', 'fsdfsdfsf', '', '2023-05-02', '2 weeks old', 'Toddler', 'fdsfds', 'Male', 'Married', 'By Family', 'fdsfdsf', 'Methodist', '9123456789', 'ffsfsfds@gmail.com', 'd5c75a75313ab721a23eb5a3fe3b94bb', 'ffsfsfds@gmail.com', 'ffsfsfds@gmail.com', 'ffsfsfds@gmail.com', 'ffsfsfds@gmail.com', 'ffsfsfds@gmail.com', 'ffsfsfds@gmail.com', 'ffsfsfds@gmail.com', 'ffsfsfds@gmail.com', 'Head', 'ffsfsfds@gmail.com', 'ffsfsfds@gmail.comffsfsfds@gmail.com', 'Senior Citizen', 'Tempo/Rented', 'Active', 'Active', 'Active', '23', '23', 'newlogo2.png', 'newlogo2.png', 'newlogo2.png', '../images-qr-codes/646af8da27ad7.png', 'BMS-646af8da27abc', '', 'Juan  Dela Cruz ', '2023-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_Id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `suffix` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'Resident',
  `verification_code` varchar(255) NOT NULL,
  `date_registered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_Id`, `username`, `firstname`, `middlename`, `lastname`, `suffix`, `email`, `contact`, `password`, `image`, `user_type`, `verification_code`, `date_registered`) VALUES
(40, 'NewEra_Admin', 'Juan', '', 'Dela Cruz', '', 'admin@gmail.com', '9359428961', '0192023a7bbd73250516f069df18b500', '3.jpg', 'Admin', '404980', '2023-04-10'),
(42, 'Winson404', 'Erwin', 'Cabag', 'Son', '', 'staff@gmail.com', '9359428963', '0192023a7bbd73250516f069df18b500', 'free-photo-of-young-smiling-woman-in-profile.jpeg', 'Staff', '591097', '2022-10-22'),
(43, 'group2ilafi@gmail.com', 'Jose', '', 'Rizal', '', 'Norlyngelig16@gmail.com', '9359428963', '0192023a7bbd73250516f069df18b500', '', 'Staff', '', '2022-12-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`actId`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaint_Id`);

--
-- Indexes for table `customization`
--
ALTER TABLE `customization`
  ADD PRIMARY KEY (`customID`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`doc_Id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`incomeId`);

--
-- Indexes for table `officials`
--
ALTER TABLE `officials`
  ADD PRIMARY KEY (`officialID`);

--
-- Indexes for table `residence`
--
ALTER TABLE `residence`
  ADD PRIMARY KEY (`residenceId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `actId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaint_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customization`
--
ALTER TABLE `customization`
  MODIFY `customID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `doc_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `incomeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `officials`
--
ALTER TABLE `officials`
  MODIFY `officialID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `residence`
--
ALTER TABLE `residence`
  MODIFY `residenceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
