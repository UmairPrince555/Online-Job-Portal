-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2022 at 12:25 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `Username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `vkey` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `application_master`
--

CREATE TABLE `application_master` (
  `ApplicationId` int(11) NOT NULL,
  `JobSeekId` int(11) NOT NULL,
  `JobId` int(11) NOT NULL,
  `Status` varchar(30) NOT NULL,
  `Description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application_master`
--

INSERT INTO `application_master` (`ApplicationId`, `JobSeekId`, `JobId`, `Status`, `Description`) VALUES
(6, 7, 5, 'Apply', 'No Message'),
(7, 7, 1, 'Apply', 'No Message');

-- --------------------------------------------------------

--
-- Table structure for table `employer_reg`
--

CREATE TABLE `employer_reg` (
  `EmployerId` int(11) NOT NULL,
  `CompanyName` varchar(20) NOT NULL,
  `ContactPerson` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Mobile` bigint(20) NOT NULL,
  `Area_Work` varchar(40) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Question` varchar(100) NOT NULL,
  `Answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer_reg`
--

INSERT INTO `employer_reg` (`EmployerId`, `CompanyName`, `ContactPerson`, `Address`, `City`, `Email`, `Mobile`, `Area_Work`, `Status`, `UserName`, `Password`, `Question`, `Answer`) VALUES
(2, 'TCS Private Limited', 'Maheer', 'Jarawala', 'Faisalabad', 'maheer@gmail.com', 3034364874, 'Software', 'Confirm', 'maheer', 'maheer', 'Who is Your Favourite Person?', 'Hazrat Muhammad (PBUH)'),
(3, 'Wiper Infotech', 'Qasim', 'Faisalabad', 'Faisalabad', 'qasim@wiper.com', 3215643787, 'Software', 'Confirm', 'qasim', 'qasim', '', ''),
(4, 'Solosofts  Pvt Limit', 'Zain ', 'Samundri', 'Faisalabad', 'zain@gmail.com', 3214368267, 'Software', 'Confirm', 'Zain', 'Zain', 'What is Your Pet Name?', 'Dog'),
(7, 'Loony tunes', 'Bilawal', 'SIndh', 'larkana', 'bilawal@gmail.com', 9088562366, 'Graphic designing', 'Confirm', 'BBZ', '1234', 'Who is Your Favourite Person?', 'z'),
(8, 'Kfc', 'Kfc manager', 'Dground fsd', 'fsd', 'kfc@kcf.com', 41111532532, 'management', 'Confirm', 'kfc', 'kfc', 'Who is Your Favourite Person?', 'chicken');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackId` int(11) NOT NULL,
  `JobSeekId` int(11) NOT NULL,
  `Feedback` varchar(200) NOT NULL,
  `FeedbakDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FeedbackId`, `JobSeekId`, `Feedback`, `FeedbakDate`) VALUES
(7, 7, 'its awesome', '2022-03-04'),
(9, 5, 'Wonderful', '2022-03-08'),
(10, 5, 'Very Informative', '2022-03-08'),
(11, 7, 'hello', '2022-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_education`
--

CREATE TABLE `jobseeker_education` (
  `EduId` int(11) NOT NULL,
  `JobSeekId` int(11) NOT NULL,
  `Degree` varchar(20) NOT NULL,
  `University` varchar(100) NOT NULL,
  `PassingYear` mediumint(9) NOT NULL,
  `Percentage` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobseeker_education`
--

INSERT INTO `jobseeker_education` (`EduId`, `JobSeekId`, `Degree`, `University`, `PassingYear`, `Percentage`) VALUES
(3, 3, 'B.C.A', 'Agriculture Universiy Faisalabad', 2011, 68.89),
(4, 3, 'M.C.A', 'Government College University Faisalabad', 2013, 89.9),
(5, 3, 'S.S.C', 'UOL', 2005, 80),
(6, 5, 'Under Grad', 'Government colledge university FSD', 2018, 85),
(7, 5, 'Grad', 'Gc Uni FSD', 2022, 80),
(8, 7, 'MIDDLE', 'Govt high school', 2016, 56);

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_reg`
--

CREATE TABLE `jobseeker_reg` (
  `JobSeekId` int(11) NOT NULL,
  `JobSeekerName` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Mobile` bigint(20) NOT NULL,
  `Qualification` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `Resume` varchar(200) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Question` varchar(100) NOT NULL,
  `Answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobseeker_reg`
--

INSERT INTO `jobseeker_reg` (`JobSeekId`, `JobSeekerName`, `Address`, `City`, `Email`, `Mobile`, `Qualification`, `Gender`, `BirthDate`, `Resume`, `Status`, `UserName`, `Password`, `Question`, `Answer`) VALUES
(9, 'Ali', 'Tehsil Road', 'Arifwala', 'Ali@gmail.com', 423321232, 'BSc', 'Male', '2001-08-16', 'Capture.PNG', 'Confirm', 'Ali', 'ali', 'What is Your Pet Name?', 'Dog'),
(10, 'Shan', 'Johar Town', 'Lahore', 'shan@gmail.com', 3414927911, 'Graduate', 'Male', '1999-10-06', 'Capture.PNG', 'Confirm', 'Shan', 'Shan', 'What is Your Pet Name?', 'Dog'),
(11, 'Tauheed Safi', 'Kohinoor', 'Fsd', 'tauheed@gmail.com', 3037389266, 'BS hon.', 'Male', '1999-05-28', 'Capture.PNG', 'Confirm', 'Tauheed', 'Tauheed', 'What is Your Pet Name?', 'Dog'),
(12, 'Umair', 'Circular Road', 'Hujra', 'umair@gmail.com', 3034253072, 'BSCS', 'Male', '1999-12-25', 'Capture.PNG', 'Confirm', 'umair', 'umair', 'What is Your Pet Name?', 'Cat'),
(13, 'Imran', 'FSD', 'Faisalabad', 'imran@gmail.com', 411213456, 'BSc', 'Male', '2022-03-16', 'Capture.PNG', 'Pending', 'imran', 'imran', 'What is Your Pet Name?', 'cat');

-- --------------------------------------------------------

--
-- Table structure for table `job_master`
--

CREATE TABLE `job_master` (
  `JobId` int(11) NOT NULL,
  `CompanyName` varchar(20) NOT NULL,
  `JobTitle` varchar(50) NOT NULL,
  `Vacancy` int(11) NOT NULL,
  `MinQualification` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_master`
--

INSERT INTO `job_master` (`JobId`, `CompanyName`, `JobTitle`, `Vacancy`, `MinQualification`, `Description`) VALUES
(1, 'Wipro Infotech', 'Software Professional Required', 2, 'M.C.A', 'ASP.NET'),
(2, 'Wipro Infotech', 'Marketing Executive Required', 5, 'M.B.A', 'Freshers Are Invited'),
(3, 'TCS Private Limited', 'Software Trainee Required', 1, 'B.Sc.I.T', 'Starting Salary 5000'),
(4, 'Wipro Infotech', 'Cleaners Required', 3, 'S.S.C', 'Null'),
(5, 'Solusoft  Pvt Limite', 'Sweeper', 2, 'MIDDLE', 'No holidays');

-- --------------------------------------------------------

--
-- Table structure for table `news_master`
--

CREATE TABLE `news_master` (
  `NewsId` int(11) NOT NULL,
  `News` varchar(200) CHARACTER SET latin1 NOT NULL,
  `NewsDate` date NOT NULL,
  `Status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `EmployerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_master`
--

INSERT INTO `news_master` (`NewsId`, `News`, `NewsDate`, `Status`, `EmployerId`) VALUES
(1, 'hdhaiufweth', '2022-03-16', 'Confirm', 3),
(2, 'hello world', '2022-03-17', 'Confirm', 4),
(5, 'React devolper required handsome salary ', '2022-03-14', 'Confirm', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`UserId`, `UserName`, `Password`) VALUES
(6, 'admin', 'admin'),
(10, 'xyz', 'xyz123'),
(11, 'umair', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `walkin_master`
--

CREATE TABLE `walkin_master` (
  `WalkInId` int(11) NOT NULL,
  `CompanyName` varchar(20) NOT NULL,
  `JobTitle` varchar(50) NOT NULL,
  `Vacancy` int(11) NOT NULL,
  `MinQualification` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `InterviewDate` date NOT NULL,
  `InterviewTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `walkin_master`
--

INSERT INTO `walkin_master` (`WalkInId`, `CompanyName`, `JobTitle`, `Vacancy`, `MinQualification`, `Description`, `InterviewDate`, `InterviewTime`) VALUES
(1, 'Wipro Infotech', 'Freshers Required', 5, 'B.C.A', 'Hardworking Person are Required.', '2013-09-25', '09:00:00'),
(2, 'TCS Private Limited', 'Marketive Representative Invited', 2, 'Pharmacist', 'Ready TO work in Islamabad', '2013-10-07', '09:00:00'),
(3, 'Solusoft  Pvt Limite', 'CEO', 1, 'PHD', 'At least 25 years of experience.', '2022-03-25', '12:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application_master`
--
ALTER TABLE `application_master`
  ADD PRIMARY KEY (`ApplicationId`);

--
-- Indexes for table `employer_reg`
--
ALTER TABLE `employer_reg`
  ADD PRIMARY KEY (`EmployerId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedbackId`);

--
-- Indexes for table `jobseeker_education`
--
ALTER TABLE `jobseeker_education`
  ADD PRIMARY KEY (`EduId`);

--
-- Indexes for table `jobseeker_reg`
--
ALTER TABLE `jobseeker_reg`
  ADD PRIMARY KEY (`JobSeekId`),
  ADD KEY `JobSeekId` (`JobSeekId`);

--
-- Indexes for table `job_master`
--
ALTER TABLE `job_master`
  ADD PRIMARY KEY (`JobId`);

--
-- Indexes for table `news_master`
--
ALTER TABLE `news_master`
  ADD PRIMARY KEY (`NewsId`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `walkin_master`
--
ALTER TABLE `walkin_master`
  ADD PRIMARY KEY (`WalkInId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application_master`
--
ALTER TABLE `application_master`
  MODIFY `ApplicationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employer_reg`
--
ALTER TABLE `employer_reg`
  MODIFY `EmployerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jobseeker_education`
--
ALTER TABLE `jobseeker_education`
  MODIFY `EduId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobseeker_reg`
--
ALTER TABLE `jobseeker_reg`
  MODIFY `JobSeekId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `job_master`
--
ALTER TABLE `job_master`
  MODIFY `JobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news_master`
--
ALTER TABLE `news_master`
  MODIFY `NewsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `walkin_master`
--
ALTER TABLE `walkin_master`
  MODIFY `WalkInId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
