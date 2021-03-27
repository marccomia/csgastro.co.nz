-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 27, 2021 at 05:34 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csgastro`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutarticleobject`
--

DROP TABLE IF EXISTS `aboutarticleobject`;
CREATE TABLE IF NOT EXISTS `aboutarticleobject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Lessons\\AboutArticleObject') DEFAULT 'SilverStripe\\Lessons\\AboutArticleObject',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Header` varchar(255) DEFAULT NULL,
  `Body` mediumtext,
  `AboutPageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `AboutPageID` (`AboutPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aboutpage`
--

DROP TABLE IF EXISTS `aboutpage`;
CREATE TABLE IF NOT EXISTS `aboutpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MainTitle` varchar(255) DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `Photo2ID` (`Photo2ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aboutpage`
--

INSERT INTO `aboutpage` (`ID`, `MainTitle`, `PhotoID`, `Photo2ID`) VALUES
(2, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aboutpage_live`
--

DROP TABLE IF EXISTS `aboutpage_live`;
CREATE TABLE IF NOT EXISTS `aboutpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MainTitle` varchar(255) DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `Photo2ID` (`Photo2ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aboutpage_live`
--

INSERT INTO `aboutpage_live` (`ID`, `MainTitle`, `PhotoID`, `Photo2ID`) VALUES
(2, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aboutpage_versions`
--

DROP TABLE IF EXISTS `aboutpage_versions`;
CREATE TABLE IF NOT EXISTS `aboutpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MainTitle` varchar(255) DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `PhotoID` (`PhotoID`),
  KEY `Photo2ID` (`Photo2ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aboutpage_versions`
--

INSERT INTO `aboutpage_versions` (`ID`, `RecordID`, `Version`, `MainTitle`, `PhotoID`, `Photo2ID`) VALUES
(1, 2, 3, NULL, 0, 0),
(2, 2, 4, NULL, 0, 0),
(3, 2, 5, NULL, 0, 0),
(4, 2, 6, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table ` calltoactiondataobject`
--

DROP TABLE IF EXISTS ` calltoactiondataobject`;
CREATE TABLE IF NOT EXISTS ` calltoactiondataobject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('CallToActionDataObject') DEFAULT 'CallToActionDataObject',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `HomePageID` int(11) NOT NULL DEFAULT '0',
  `CTAimageID` int(11) NOT NULL DEFAULT '0',
  `LinksToAction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SortOrder` (`SortOrder`),
  KEY `ClassName` (`ClassName`),
  KEY `HomePageID` (`HomePageID`),
  KEY `CTAimageID` (`CTAimageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table ` calltoactiondataobject`
--

INSERT INTO ` calltoactiondataobject` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `SortOrder`, `HomePageID`, `CTAimageID`, `LinksToAction`) VALUES
(1, 'CallToActionDataObject', '2021-01-22 05:35:33', '2021-01-22 05:31:12', 'Colonoscopy', 1, 1, 12, NULL),
(2, 'CallToActionDataObject', '2021-01-22 05:35:33', '2021-01-22 05:31:57', 'IBD', 2, 1, 13, NULL),
(3, 'CallToActionDataObject', '2021-01-22 05:35:33', '2021-01-22 05:33:18', 'Medication', 3, 1, 14, NULL),
(4, 'CallToActionDataObject', '2021-01-22 05:35:33', '2021-01-22 05:33:52', 'Gutmicrobiom', 4, 1, 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table ` calltoactiondataobject_categories`
--

DROP TABLE IF EXISTS ` calltoactiondataobject_categories`;
CREATE TABLE IF NOT EXISTS ` calltoactiondataobject_categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  ` CallToActionDataObjectID` int(11) NOT NULL DEFAULT '0',
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY ` CallToActionDataObjectID` (` CallToActionDataObjectID`),
  KEY `CategoryID` (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table ` calltoactiondataobject_categories`
--

INSERT INTO ` calltoactiondataobject_categories` (`ID`, ` CallToActionDataObjectID`, `CategoryID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Lessons\\Category') DEFAULT 'SilverStripe\\Lessons\\Category',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`) VALUES
(1, 'SilverStripe\\Lessons\\Category', '2021-01-02 01:14:36', '2021-01-02 01:14:36', 'Procedure'),
(2, 'SilverStripe\\Lessons\\Category', '2021-01-16 23:06:53', '2021-01-16 23:06:53', 'Condition'),
(3, 'SilverStripe\\Lessons\\Category', '2021-01-16 23:07:05', '2021-01-16 23:07:05', 'Medication'),
(4, 'SilverStripe\\Lessons\\Category', '2021-01-16 23:07:11', '2021-01-16 23:07:11', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `changeset`
--

DROP TABLE IF EXISTS `changeset`;
CREATE TABLE IF NOT EXISTS `changeset` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSet') DEFAULT 'SilverStripe\\Versioned\\ChangeSet',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `State` enum('open','published','reverted') DEFAULT 'open',
  `IsInferred` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Description` mediumtext,
  `PublishDate` datetime DEFAULT NULL,
  `LastSynced` datetime DEFAULT NULL,
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `State` (`State`),
  KEY `ID` (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `OwnerID` (`OwnerID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `changeset`
--

INSERT INTO `changeset` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `State`, `IsInferred`, `Description`, `PublishDate`, `LastSynced`, `OwnerID`, `PublisherID`) VALUES
(1, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-01 23:33:19', '2021-01-01 23:33:19', 'Generated by publish of \'Home\' at Jan 1, 2021, 11:33 PM', 'published', 1, NULL, '2021-01-01 23:33:19', '2021-01-01 23:33:19', 0, 1),
(2, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-01 23:33:31', '2021-01-01 23:33:30', 'Generated by publish of \'About Us\' at Jan 1, 2021, 11:33 PM', 'published', 1, NULL, '2021-01-01 23:33:31', '2021-01-01 23:33:31', 0, 1),
(3, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-01 23:33:42', '2021-01-01 23:33:42', 'Generated by publish of \'Contact Us\' at Jan 1, 2021, 11:33 PM', 'published', 1, NULL, '2021-01-01 23:33:42', '2021-01-01 23:33:42', 0, 1),
(4, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-01 23:37:06', '2021-01-01 23:37:05', 'Generated by publish of \'Home\' at Jan 1, 2021, 11:37 PM', 'published', 1, NULL, '2021-01-01 23:37:06', '2021-01-01 23:37:06', 0, 1),
(5, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-02 00:34:31', '2021-01-02 00:34:31', 'Generated by publish of \'Home\' at Jan 2, 2021, 12:34 AM', 'published', 1, NULL, '2021-01-02 00:34:31', '2021-01-02 00:34:31', 0, 1),
(6, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-02 01:12:40', '2021-01-02 01:12:40', 'Generated by publish of \'New Patient Info Details Page\' at Jan 2, 2021, 1:12 AM', 'published', 1, NULL, '2021-01-02 01:12:40', '2021-01-02 01:12:40', 0, 1),
(7, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-02 01:13:30', '2021-01-02 01:13:30', 'Generated by publish of \'Patient Information\' at Jan 2, 2021, 1:13 AM', 'published', 1, NULL, '2021-01-02 01:13:30', '2021-01-02 01:13:30', 0, 1),
(8, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-02 01:13:48', '2021-01-02 01:13:47', 'Generated by publish of \'Colonoscopy\' at Jan 2, 2021, 1:13 AM', 'published', 1, NULL, '2021-01-02 01:13:48', '2021-01-02 01:13:48', 0, 1),
(9, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-02 01:13:55', '2021-01-02 01:13:55', 'Generated by publish of \'Colonoscopy\' at Jan 2, 2021, 1:13 AM', 'published', 1, NULL, '2021-01-02 01:13:55', '2021-01-02 01:13:55', 0, 1),
(10, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-02 01:14:01', '2021-01-02 01:14:00', 'Generated by publish of \'Patient Information\' at Jan 2, 2021, 1:14 AM', 'published', 1, NULL, '2021-01-02 01:14:01', '2021-01-02 01:14:01', 0, 1),
(11, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-02 01:14:36', '2021-01-02 01:14:36', 'Generated by publish of \'Procedure\' at Jan 2, 2021, 1:14 AM', 'published', 1, NULL, '2021-01-02 01:14:36', '2021-01-02 01:14:36', 0, 1),
(12, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-02 01:15:02', '2021-01-02 01:15:02', 'Generated by publish of \'Colonoscopy\' at Jan 2, 2021, 1:15 AM', 'published', 1, NULL, '2021-01-02 01:15:02', '2021-01-02 01:15:02', 0, 1),
(13, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 01:15:18', '2021-01-04 01:15:16', 'Generated by publish of \'Home\' at Jan 4, 2021, 1:15 AM', 'published', 1, NULL, '2021-01-04 01:15:18', '2021-01-04 01:15:18', 0, 1),
(14, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 01:35:13', '2021-01-04 01:35:11', 'Generated by publish of \'Home\' at Jan 4, 2021, 1:35 AM', 'published', 1, NULL, '2021-01-04 01:35:13', '2021-01-04 01:35:12', 0, 1),
(15, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 01:42:08', '2021-01-04 01:42:07', 'Generated by publish of \'Home\' at Jan 4, 2021, 1:42 AM', 'published', 1, NULL, '2021-01-04 01:42:08', '2021-01-04 01:42:08', 0, 1),
(16, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 02:01:42', '2021-01-04 02:01:42', 'Generated by publish of \'Contact Us\' at Jan 4, 2021, 2:01 AM', 'published', 1, NULL, '2021-01-04 02:01:42', '2021-01-04 02:01:42', 0, 1),
(17, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 04:12:37', '2021-01-04 04:12:36', 'Generated by publish of \'Home\' at Jan 4, 2021, 4:12 AM', 'published', 1, NULL, '2021-01-04 04:12:37', '2021-01-04 04:12:37', 0, 1),
(18, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 04:58:51', '2021-01-04 04:58:50', 'Generated by publish of \'Contact Us\' at Jan 4, 2021, 4:58 AM', 'published', 1, NULL, '2021-01-04 04:58:51', '2021-01-04 04:58:51', 0, 1),
(19, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 09:58:03', '2021-01-04 09:58:02', 'Generated by publish of \'Contact Us\' at Jan 4, 2021, 9:58 AM', 'published', 1, NULL, '2021-01-04 09:58:03', '2021-01-04 09:58:02', 0, 1),
(20, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 09:59:02', '2021-01-04 09:59:02', 'Generated by publish of \'Contact Us\' at Jan 4, 2021, 9:59 AM', 'published', 1, NULL, '2021-01-04 09:59:02', '2021-01-04 09:59:02', 0, 1),
(21, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 09:59:18', '2021-01-04 09:59:18', 'Generated by publish of \'Contact Us\' at Jan 4, 2021, 9:59 AM', 'published', 1, NULL, '2021-01-04 09:59:18', '2021-01-04 09:59:18', 0, 1),
(22, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 09:59:23', '2021-01-04 09:59:22', 'Generated by publish of \'Contact Us\' at Jan 4, 2021, 9:59 AM', 'published', 1, NULL, '2021-01-04 09:59:23', '2021-01-04 09:59:23', 0, 1),
(23, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 10:03:08', '2021-01-04 10:03:08', 'Generated by publish of \'Contact Us\' at Jan 4, 2021, 10:03 AM', 'published', 1, NULL, '2021-01-04 10:03:08', '2021-01-04 10:03:08', 0, 1),
(24, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 10:03:28', '2021-01-04 10:03:28', 'Generated by publish of \'Contact Us\' at Jan 4, 2021, 10:03 AM', 'published', 1, NULL, '2021-01-04 10:03:28', '2021-01-04 10:03:28', 0, 1),
(25, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-04 10:03:45', '2021-01-04 10:03:45', 'Generated by publish of \'Contact Us\' at Jan 4, 2021, 10:03 AM', 'published', 1, NULL, '2021-01-04 10:03:45', '2021-01-04 10:03:45', 0, 1),
(26, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-05 07:31:25', '2021-01-05 07:31:25', 'Generated by publish of \'Patient Information\' at Jan 5, 2021, 7:31 AM', 'published', 1, NULL, '2021-01-05 07:31:25', '2021-01-05 07:31:25', 0, 1),
(27, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-05 07:33:14', '2021-01-05 07:33:14', 'Generated by publish of \'Patient Information\' at Jan 5, 2021, 7:33 AM', 'published', 1, NULL, '2021-01-05 07:33:14', '2021-01-05 07:33:14', 0, 1),
(28, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-05 07:33:44', '2021-01-05 07:33:43', 'Generated by publish of \'Patient Information\' at Jan 5, 2021, 7:33 AM', 'published', 1, NULL, '2021-01-05 07:33:44', '2021-01-05 07:33:44', 0, 1),
(29, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-05 07:34:31', '2021-01-05 07:34:31', 'Generated by publish of \'Patient Information\' at Jan 5, 2021, 7:34 AM', 'published', 1, NULL, '2021-01-05 07:34:31', '2021-01-05 07:34:31', 0, 1),
(30, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-05 07:34:44', '2021-01-05 07:34:44', 'Generated by publish of \'Colonoscopy\' at Jan 5, 2021, 7:34 AM', 'published', 1, NULL, '2021-01-05 07:34:44', '2021-01-05 07:34:44', 0, 1),
(31, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-15 22:46:24', '2021-01-15 22:46:24', 'Generated by publish of \'Contact Me\' at Jan 15, 2021, 10:46 PM', 'published', 1, NULL, '2021-01-15 22:46:24', '2021-01-15 22:46:24', 0, 1),
(32, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-15 22:46:33', '2021-01-15 22:46:33', 'Generated by publish of \'About Me\' at Jan 15, 2021, 10:46 PM', 'published', 1, NULL, '2021-01-15 22:46:33', '2021-01-15 22:46:33', 0, 1),
(33, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-15 22:47:48', '2021-01-15 22:47:47', 'Generated by publish of \'Home\' at Jan 15, 2021, 10:47 PM', 'published', 1, NULL, '2021-01-15 22:47:48', '2021-01-15 22:47:47', 0, 1),
(34, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-15 22:52:02', '2021-01-15 22:52:01', 'Generated by publish of \'Home\' at Jan 15, 2021, 10:52 PM', 'published', 1, NULL, '2021-01-15 22:52:02', '2021-01-15 22:52:01', 0, 1),
(35, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-15 23:31:24', '2021-01-15 23:31:24', 'Generated by publish of \'Contact Me\' at Jan 15, 2021, 11:31 PM', 'published', 1, NULL, '2021-01-15 23:31:24', '2021-01-15 23:31:24', 0, 1),
(36, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-16 02:24:24', '2021-01-16 02:24:23', 'Generated by publish of \'Contact Me\' at Jan 16, 2021, 2:24 AM', 'published', 1, NULL, '2021-01-16 02:24:24', '2021-01-16 02:24:24', 0, 1),
(37, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-16 02:25:08', '2021-01-16 02:25:08', 'Generated by publish of \'Contact Me\' at Jan 16, 2021, 2:25 AM', 'published', 1, NULL, '2021-01-16 02:25:08', '2021-01-16 02:25:08', 0, 1),
(38, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-16 02:37:47', '2021-01-16 02:37:46', 'Generated by publish of \'Contact Me\' at Jan 16, 2021, 2:37 AM', 'published', 1, NULL, '2021-01-16 02:37:47', '2021-01-16 02:37:47', 0, 1),
(39, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-16 03:11:15', '2021-01-16 03:11:15', 'Generated by publish of \'Home\' at Jan 16, 2021, 3:11 AM', 'published', 1, NULL, '2021-01-16 03:11:15', '2021-01-16 03:11:15', 0, 1),
(40, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-16 03:11:39', '2021-01-16 03:11:38', 'Generated by publish of \'Home\' at Jan 16, 2021, 3:11 AM', 'published', 1, NULL, '2021-01-16 03:11:39', '2021-01-16 03:11:39', 0, 1),
(41, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-16 23:05:33', '2021-01-16 23:05:32', 'Generated by publish of \'Bowel Screening\' at Jan 16, 2021, 11:05 PM', 'published', 1, NULL, '2021-01-16 23:05:33', '2021-01-16 23:05:32', 0, 1),
(42, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-16 23:06:53', '2021-01-16 23:06:53', 'Generated by publish of \'Condition\' at Jan 16, 2021, 11:06 PM', 'published', 1, NULL, '2021-01-16 23:06:53', '2021-01-16 23:06:53', 0, 1),
(43, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-16 23:07:05', '2021-01-16 23:07:05', 'Generated by publish of \'Medication\' at Jan 16, 2021, 11:07 PM', 'published', 1, NULL, '2021-01-16 23:07:05', '2021-01-16 23:07:05', 0, 1),
(44, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-16 23:07:11', '2021-01-16 23:07:11', 'Generated by publish of \'Other\' at Jan 16, 2021, 11:07 PM', 'published', 1, NULL, '2021-01-16 23:07:11', '2021-01-16 23:07:11', 0, 1),
(45, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-16 23:07:49', '2021-01-16 23:07:49', 'Generated by publish of \'Gut Microbiome\' at Jan 16, 2021, 11:07 PM', 'published', 1, NULL, '2021-01-16 23:07:49', '2021-01-16 23:07:49', 0, 1),
(46, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-16 23:08:16', '2021-01-16 23:08:16', 'Generated by publish of \'Gut Microbiome\' at Jan 16, 2021, 11:08 PM', 'published', 1, NULL, '2021-01-16 23:08:16', '2021-01-16 23:08:16', 0, 1),
(47, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-16 23:16:27', '2021-01-16 23:16:27', 'Generated by publish of \'Bowel Screening\' at Jan 16, 2021, 11:16 PM', 'published', 1, NULL, '2021-01-16 23:16:27', '2021-01-16 23:16:27', 0, 1),
(48, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-22 05:31:13', '2021-01-22 05:31:12', 'Generated by publish of \'Colonoscopy\' at Jan 22, 2021, 5:31 AM', 'published', 1, NULL, '2021-01-22 05:31:13', '2021-01-22 05:31:12', 0, 1),
(49, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-22 05:31:58', '2021-01-22 05:31:58', 'Generated by publish of \'IBD\' at Jan 22, 2021, 5:31 AM', 'published', 1, NULL, '2021-01-22 05:31:58', '2021-01-22 05:31:58', 0, 1),
(50, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-22 05:33:18', '2021-01-22 05:33:18', 'Generated by publish of \'Medication\' at Jan 22, 2021, 5:33 AM', 'published', 1, NULL, '2021-01-22 05:33:18', '2021-01-22 05:33:18', 0, 1),
(51, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-22 05:33:53', '2021-01-22 05:33:52', 'Generated by publish of \'Gutmicrobiom\' at Jan 22, 2021, 5:33 AM', 'published', 1, NULL, '2021-01-22 05:33:53', '2021-01-22 05:33:53', 0, 1),
(52, 'SilverStripe\\Versioned\\ChangeSet', '2021-01-22 05:35:35', '2021-01-22 05:35:35', 'Generated by publish of \'Home\' at Jan 22, 2021, 5:35 AM', 'published', 1, NULL, '2021-01-22 05:35:35', '2021-01-22 05:35:35', 0, 1),
(53, 'SilverStripe\\Versioned\\ChangeSet', '2021-02-02 08:34:59', '2021-02-02 08:34:59', 'Generated by publish of \'#1\' at Feb 2, 2021, 8:34 AM', 'published', 1, NULL, '2021-02-02 08:34:59', '2021-02-02 08:34:59', 0, 1),
(54, 'SilverStripe\\Versioned\\ChangeSet', '2021-02-02 08:35:28', '2021-02-02 08:35:28', 'Generated by publish of \'FAQ\' at Feb 2, 2021, 8:35 AM', 'published', 1, NULL, '2021-02-02 08:35:28', '2021-02-02 08:35:28', 0, 1),
(55, 'SilverStripe\\Versioned\\ChangeSet', '2021-02-02 08:36:32', '2021-02-02 08:36:31', 'Generated by publish of \'#1\' at Feb 2, 2021, 8:36 AM', 'published', 1, NULL, '2021-02-02 08:36:32', '2021-02-02 08:36:31', 0, 1),
(56, 'SilverStripe\\Versioned\\ChangeSet', '2021-02-02 08:53:58', '2021-02-02 08:53:58', 'Generated by publish of \'#1\' at Feb 2, 2021, 8:53 AM', 'published', 1, NULL, '2021-02-02 08:53:58', '2021-02-02 08:53:58', 0, 1),
(57, 'SilverStripe\\Versioned\\ChangeSet', '2021-02-02 23:30:53', '2021-02-02 23:30:53', 'Generated by publish of \'#2\' at Feb 2, 2021, 11:30 PM', 'published', 1, NULL, '2021-02-02 23:30:53', '2021-02-02 23:30:53', 0, 1),
(58, 'SilverStripe\\Versioned\\ChangeSet', '2021-02-03 00:18:50', '2021-02-03 00:18:50', 'Generated by publish of \'#1\' at Feb 3, 2021, 12:18 AM', 'published', 1, NULL, '2021-02-03 00:18:50', '2021-02-03 00:18:50', 0, 1),
(59, 'SilverStripe\\Versioned\\ChangeSet', '2021-02-03 00:18:53', '2021-02-03 00:18:53', 'Generated by publish of \'#1\' at Feb 3, 2021, 12:18 AM', 'published', 1, NULL, '2021-02-03 00:18:53', '2021-02-03 00:18:53', 0, 1),
(60, 'SilverStripe\\Versioned\\ChangeSet', '2021-02-11 05:34:08', '2021-02-11 05:34:08', 'Generated by publish of \'#1\' at Feb 11, 2021, 5:34 AM', 'published', 1, NULL, '2021-02-11 05:34:08', '2021-02-11 05:34:08', 0, 1),
(61, 'SilverStripe\\Versioned\\ChangeSet', '2021-02-11 05:35:18', '2021-02-11 05:35:17', 'Generated by publish of \'#1\' at Feb 11, 2021, 5:35 AM', 'published', 1, NULL, '2021-02-11 05:35:18', '2021-02-11 05:35:18', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `changesetitem`
--

DROP TABLE IF EXISTS `changesetitem`;
CREATE TABLE IF NOT EXISTS `changesetitem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSetItem') DEFAULT 'SilverStripe\\Versioned\\ChangeSetItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `VersionBefore` int(11) NOT NULL DEFAULT '0',
  `VersionAfter` int(11) NOT NULL DEFAULT '0',
  `Added` enum('explicitly','implicitly') DEFAULT 'implicitly',
  `ChangeSetID` int(11) NOT NULL DEFAULT '0',
  `ObjectID` int(11) NOT NULL DEFAULT '0',
  `ObjectClass` enum('SilverStripe\\Lessons\\AboutArticleObject','CallToActionDataObject','SilverStripe\\Lessons\\Category','SilverStripe\\Lessons\\CompanyAddressObject','SilverStripe\\Lessons\\Frequentlyaskquestion','SilverStripe\\Lessons\\Interest','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','SilverStripe\\Lessons\\AboutPage','SilverStripe\\Lessons\\ContactPage','SilverStripe\\Lessons\\FAQPage','SilverStripe\\Lessons\\HomePage','SilverStripe\\Lessons\\PatientInfoDetailsPage','SilverStripe\\Lessons\\PatientInformationPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') DEFAULT 'SilverStripe\\Lessons\\AboutArticleObject',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ObjectUniquePerChangeSet` (`ObjectID`,`ObjectClass`,`ChangeSetID`),
  KEY `ClassName` (`ClassName`),
  KEY `ChangeSetID` (`ChangeSetID`),
  KEY `Object` (`ObjectID`,`ObjectClass`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `changesetitem`
--

INSERT INTO `changesetitem` (`ID`, `ClassName`, `LastEdited`, `Created`, `VersionBefore`, `VersionAfter`, `Added`, `ChangeSetID`, `ObjectID`, `ObjectClass`) VALUES
(1, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-01 23:33:19', '2021-01-01 23:33:19', 2, 4, 'explicitly', 1, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(2, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-01 23:33:31', '2021-01-01 23:33:30', 2, 4, 'explicitly', 2, 2, 'SilverStripe\\CMS\\Model\\SiteTree'),
(3, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-01 23:33:42', '2021-01-01 23:33:42', 2, 4, 'explicitly', 3, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(4, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-01 23:37:06', '2021-01-01 23:37:06', 4, 6, 'explicitly', 4, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(5, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-02 00:34:31', '2021-01-02 00:34:31', 6, 8, 'explicitly', 5, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(6, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-02 00:34:31', '2021-01-02 00:34:31', 0, 2, 'implicitly', 5, 3, 'SilverStripe\\Assets\\File'),
(8, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-02 01:13:30', '2021-01-02 01:13:30', 0, 3, 'explicitly', 7, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(9, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-02 01:13:48', '2021-01-02 01:13:47', 0, 3, 'explicitly', 8, 8, 'SilverStripe\\CMS\\Model\\SiteTree'),
(10, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-02 01:13:55', '2021-01-02 01:13:55', 3, 3, 'explicitly', 9, 8, 'SilverStripe\\CMS\\Model\\SiteTree'),
(11, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-02 01:14:01', '2021-01-02 01:14:00', 3, 5, 'explicitly', 10, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(12, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-02 01:14:36', '2021-01-02 01:14:36', 0, 0, 'explicitly', 11, 1, 'SilverStripe\\Lessons\\Category'),
(13, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-02 01:15:02', '2021-01-02 01:15:02', 3, 3, 'explicitly', 12, 8, 'SilverStripe\\CMS\\Model\\SiteTree'),
(14, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 01:15:18', '2021-01-04 01:15:16', 8, 10, 'explicitly', 13, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(15, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 01:15:18', '2021-01-04 01:15:18', 2, 2, 'implicitly', 13, 3, 'SilverStripe\\Assets\\File'),
(16, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 01:35:12', '2021-01-04 01:35:11', 10, 12, 'explicitly', 14, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(17, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 01:35:12', '2021-01-04 01:35:12', 2, 2, 'implicitly', 14, 3, 'SilverStripe\\Assets\\File'),
(18, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 01:42:08', '2021-01-04 01:42:07', 12, 12, 'explicitly', 15, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(19, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 01:42:08', '2021-01-04 01:42:08', 2, 2, 'implicitly', 15, 3, 'SilverStripe\\Assets\\File'),
(20, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 02:01:42', '2021-01-04 02:01:42', 4, 6, 'explicitly', 16, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(21, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 04:12:37', '2021-01-04 04:12:36', 12, 14, 'explicitly', 17, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(22, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 04:12:37', '2021-01-04 04:12:37', 2, 2, 'implicitly', 17, 3, 'SilverStripe\\Assets\\File'),
(23, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 04:58:51', '2021-01-04 04:58:50', 6, 8, 'explicitly', 18, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(24, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 09:58:03', '2021-01-04 09:58:02', 8, 10, 'explicitly', 19, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(25, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 09:59:02', '2021-01-04 09:59:02', 10, 10, 'explicitly', 20, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(26, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 09:59:18', '2021-01-04 09:59:18', 10, 10, 'explicitly', 21, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(27, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 09:59:23', '2021-01-04 09:59:22', 10, 10, 'explicitly', 22, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(28, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 10:03:08', '2021-01-04 10:03:08', 10, 12, 'explicitly', 23, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(29, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 10:03:28', '2021-01-04 10:03:28', 12, 14, 'explicitly', 24, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(30, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-04 10:03:45', '2021-01-04 10:03:45', 14, 16, 'explicitly', 25, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(31, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-05 07:31:25', '2021-01-05 07:31:25', 5, 7, 'explicitly', 26, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(32, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-05 07:31:25', '2021-01-05 07:31:25', 0, 3, 'implicitly', 26, 5, 'SilverStripe\\Assets\\File'),
(33, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-05 07:31:25', '2021-01-05 07:31:25', 0, 0, 'implicitly', 26, 1, 'SilverStripe\\Assets\\Shortcodes\\FileLink'),
(34, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-05 07:33:14', '2021-01-05 07:33:14', 7, 9, 'explicitly', 27, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(35, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-05 07:33:44', '2021-01-05 07:33:43', 9, 11, 'explicitly', 28, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(36, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-05 07:33:44', '2021-01-05 07:33:44', 3, 3, 'implicitly', 28, 5, 'SilverStripe\\Assets\\File'),
(37, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-05 07:33:44', '2021-01-05 07:33:44', 0, 0, 'implicitly', 28, 2, 'SilverStripe\\Assets\\Shortcodes\\FileLink'),
(38, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-05 07:34:31', '2021-01-05 07:34:31', 11, 13, 'explicitly', 29, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(39, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-05 07:34:44', '2021-01-05 07:34:44', 3, 5, 'explicitly', 30, 8, 'SilverStripe\\CMS\\Model\\SiteTree'),
(40, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-05 07:34:44', '2021-01-05 07:34:44', 3, 3, 'implicitly', 30, 5, 'SilverStripe\\Assets\\File'),
(41, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-05 07:34:44', '2021-01-05 07:34:44', 0, 0, 'implicitly', 30, 3, 'SilverStripe\\Assets\\Shortcodes\\FileLink'),
(42, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-15 22:46:24', '2021-01-15 22:46:24', 16, 18, 'explicitly', 31, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(43, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-15 22:46:33', '2021-01-15 22:46:33', 4, 6, 'explicitly', 32, 2, 'SilverStripe\\CMS\\Model\\SiteTree'),
(44, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-15 22:47:47', '2021-01-15 22:47:47', 14, 16, 'explicitly', 33, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(45, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-15 22:47:47', '2021-01-15 22:47:47', 2, 2, 'implicitly', 33, 3, 'SilverStripe\\Assets\\File'),
(46, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-15 22:52:02', '2021-01-15 22:52:01', 16, 18, 'explicitly', 34, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(47, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-15 22:52:02', '2021-01-15 22:52:01', 2, 2, 'implicitly', 34, 3, 'SilverStripe\\Assets\\File'),
(48, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-15 22:52:02', '2021-01-15 22:52:01', 0, 2, 'implicitly', 34, 7, 'SilverStripe\\Assets\\File'),
(49, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-15 23:31:24', '2021-01-15 23:31:24', 18, 20, 'explicitly', 35, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(50, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 02:24:24', '2021-01-16 02:24:23', 20, 22, 'explicitly', 36, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(51, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 02:25:08', '2021-01-16 02:25:08', 22, 24, 'explicitly', 37, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(52, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 02:37:47', '2021-01-16 02:37:46', 24, 26, 'explicitly', 38, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(53, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 03:11:15', '2021-01-16 03:11:15', 18, 20, 'explicitly', 39, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(54, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 03:11:15', '2021-01-16 03:11:15', 2, 2, 'implicitly', 39, 3, 'SilverStripe\\Assets\\File'),
(55, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 03:11:39', '2021-01-16 03:11:38', 20, 20, 'explicitly', 40, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(56, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 03:11:39', '2021-01-16 03:11:39', 2, 2, 'implicitly', 40, 3, 'SilverStripe\\Assets\\File'),
(57, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 23:05:32', '2021-01-16 23:05:32', 0, 3, 'explicitly', 41, 9, 'SilverStripe\\CMS\\Model\\SiteTree'),
(58, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 23:05:33', '2021-01-16 23:05:32', 0, 2, 'implicitly', 41, 8, 'SilverStripe\\Assets\\File'),
(59, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 23:06:53', '2021-01-16 23:06:53', 0, 0, 'explicitly', 42, 2, 'SilverStripe\\Lessons\\Category'),
(60, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 23:07:05', '2021-01-16 23:07:05', 0, 0, 'explicitly', 43, 3, 'SilverStripe\\Lessons\\Category'),
(61, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 23:07:11', '2021-01-16 23:07:11', 0, 0, 'explicitly', 44, 4, 'SilverStripe\\Lessons\\Category'),
(62, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 23:07:49', '2021-01-16 23:07:49', 0, 3, 'explicitly', 45, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(63, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 23:07:49', '2021-01-16 23:07:49', 0, 2, 'implicitly', 45, 9, 'SilverStripe\\Assets\\File'),
(64, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 23:08:16', '2021-01-16 23:08:16', 3, 5, 'explicitly', 46, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(65, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 23:08:16', '2021-01-16 23:08:16', 2, 2, 'implicitly', 46, 9, 'SilverStripe\\Assets\\File'),
(66, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 23:16:27', '2021-01-16 23:16:27', 3, 5, 'explicitly', 47, 9, 'SilverStripe\\CMS\\Model\\SiteTree'),
(67, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-16 23:16:27', '2021-01-16 23:16:27', 2, 2, 'implicitly', 47, 8, 'SilverStripe\\Assets\\File'),
(68, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-22 05:31:12', '2021-01-22 05:31:12', 0, 0, 'explicitly', 48, 1, 'CallToActionDataObject'),
(69, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-22 05:31:13', '2021-01-22 05:31:12', 0, 2, 'implicitly', 48, 12, 'SilverStripe\\Assets\\File'),
(70, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-22 05:31:58', '2021-01-22 05:31:58', 0, 0, 'explicitly', 49, 2, 'CallToActionDataObject'),
(71, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-22 05:31:58', '2021-01-22 05:31:58', 0, 2, 'implicitly', 49, 13, 'SilverStripe\\Assets\\File'),
(72, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-22 05:33:18', '2021-01-22 05:33:18', 0, 0, 'explicitly', 50, 3, 'CallToActionDataObject'),
(73, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-22 05:33:18', '2021-01-22 05:33:18', 0, 2, 'implicitly', 50, 14, 'SilverStripe\\Assets\\File'),
(74, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-22 05:33:52', '2021-01-22 05:33:52', 0, 0, 'explicitly', 51, 4, 'CallToActionDataObject'),
(75, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-22 05:33:53', '2021-01-22 05:33:53', 0, 2, 'implicitly', 51, 15, 'SilverStripe\\Assets\\File'),
(76, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-22 05:35:35', '2021-01-22 05:35:35', 20, 20, 'explicitly', 52, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(77, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-01-22 05:35:35', '2021-01-22 05:35:35', 2, 2, 'implicitly', 52, 3, 'SilverStripe\\Assets\\File'),
(78, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-02-02 08:34:59', '2021-02-02 08:34:59', 0, 0, 'explicitly', 53, 1, 'SilverStripe\\Lessons\\Frequentlyaskquestion'),
(79, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-02-02 08:35:28', '2021-02-02 08:35:28', 0, 3, 'explicitly', 54, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(80, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-02-02 08:36:31', '2021-02-02 08:36:31', 0, 0, 'explicitly', 55, 1, 'SilverStripe\\Lessons\\Frequentlyaskquestion'),
(81, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-02-02 08:53:58', '2021-02-02 08:53:58', 0, 0, 'explicitly', 56, 1, 'SilverStripe\\Lessons\\Frequentlyaskquestion'),
(82, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-02-02 23:30:53', '2021-02-02 23:30:53', 0, 0, 'explicitly', 57, 2, 'SilverStripe\\Lessons\\Frequentlyaskquestion'),
(83, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-02-03 00:18:50', '2021-02-03 00:18:50', 0, 0, 'explicitly', 58, 1, 'SilverStripe\\Lessons\\Frequentlyaskquestion'),
(84, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-02-03 00:18:53', '2021-02-03 00:18:53', 0, 0, 'explicitly', 59, 1, 'SilverStripe\\Lessons\\Frequentlyaskquestion'),
(85, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-02-11 05:34:08', '2021-02-11 05:34:08', 0, 0, 'explicitly', 60, 1, 'SilverStripe\\Lessons\\Frequentlyaskquestion'),
(86, 'SilverStripe\\Versioned\\ChangeSetItem', '2021-02-11 05:35:18', '2021-02-11 05:35:18', 0, 0, 'explicitly', 61, 1, 'SilverStripe\\Lessons\\Frequentlyaskquestion');

-- --------------------------------------------------------

--
-- Table structure for table `changesetitem_referencedby`
--

DROP TABLE IF EXISTS `changesetitem_referencedby`;
CREATE TABLE IF NOT EXISTS `changesetitem_referencedby` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ChangeSetItemID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ChangeSetItemID` (`ChangeSetItemID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `changesetitem_referencedby`
--

INSERT INTO `changesetitem_referencedby` (`ID`, `ChangeSetItemID`, `ChildID`) VALUES
(1, 6, 5),
(2, 15, 14),
(3, 17, 16),
(4, 19, 18),
(5, 22, 21),
(6, 32, 31),
(7, 33, 31),
(8, 36, 35),
(9, 37, 35),
(10, 40, 39),
(11, 41, 39),
(12, 45, 44),
(13, 47, 46),
(14, 48, 46),
(15, 54, 53),
(16, 56, 55),
(17, 58, 57),
(18, 63, 62),
(19, 65, 64),
(20, 67, 66),
(21, 69, 68),
(22, 71, 70),
(23, 73, 72),
(24, 75, 74),
(25, 77, 76);

-- --------------------------------------------------------

--
-- Table structure for table `companyadressobject`
--

DROP TABLE IF EXISTS `companyadressobject`;
CREATE TABLE IF NOT EXISTS `companyadressobject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Lessons\\CompanyAddressObject') DEFAULT 'SilverStripe\\Lessons\\CompanyAddressObject',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `cName` varchar(255) DEFAULT NULL,
  `cAddress` varchar(255) DEFAULT NULL,
  `cPhone` varchar(255) DEFAULT NULL,
  `cFax` varchar(255) DEFAULT NULL,
  `cMobile` varchar(255) DEFAULT NULL,
  `cEmail` varchar(255) DEFAULT NULL,
  `ContactPageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `ContactPageID` (`ContactPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contactpage`
--

DROP TABLE IF EXISTS `contactpage`;
CREATE TABLE IF NOT EXISTS `contactpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WebsiteEmailAddress` varchar(50) DEFAULT NULL,
  `MapEmbedded` mediumtext,
  `MapEmbeddedTwo` mediumtext,
  `GetInTouchContent` mediumtext,
  `ImageGetInTouchID` int(11) NOT NULL DEFAULT '0',
  `ImgGetInTouchID` int(11) NOT NULL DEFAULT '0',
  `footerimageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageGetInTouchID` (`ImageGetInTouchID`),
  KEY `ImgGetInTouchID` (`ImgGetInTouchID`),
  KEY `footerimageID` (`footerimageID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactpage`
--

INSERT INTO `contactpage` (`ID`, `WebsiteEmailAddress`, `MapEmbedded`, `MapEmbeddedTwo`, `GetInTouchContent`, `ImageGetInTouchID`, `ImgGetInTouchID`, `footerimageID`) VALUES
(3, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange <a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send message to Dr. Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br><br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contactpage_live`
--

DROP TABLE IF EXISTS `contactpage_live`;
CREATE TABLE IF NOT EXISTS `contactpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WebsiteEmailAddress` varchar(50) DEFAULT NULL,
  `MapEmbedded` mediumtext,
  `MapEmbeddedTwo` mediumtext,
  `GetInTouchContent` mediumtext,
  `ImageGetInTouchID` int(11) NOT NULL DEFAULT '0',
  `ImgGetInTouchID` int(11) NOT NULL DEFAULT '0',
  `footerimageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageGetInTouchID` (`ImageGetInTouchID`),
  KEY `ImgGetInTouchID` (`ImgGetInTouchID`),
  KEY `footerimageID` (`footerimageID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactpage_live`
--

INSERT INTO `contactpage_live` (`ID`, `WebsiteEmailAddress`, `MapEmbedded`, `MapEmbeddedTwo`, `GetInTouchContent`, `ImageGetInTouchID`, `ImgGetInTouchID`, `footerimageID`) VALUES
(3, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange <a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send message to Dr. Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br><br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contactpage_versions`
--

DROP TABLE IF EXISTS `contactpage_versions`;
CREATE TABLE IF NOT EXISTS `contactpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WebsiteEmailAddress` varchar(50) DEFAULT NULL,
  `MapEmbedded` mediumtext,
  `MapEmbeddedTwo` mediumtext,
  `GetInTouchContent` mediumtext,
  `ImageGetInTouchID` int(11) NOT NULL DEFAULT '0',
  `ImgGetInTouchID` int(11) NOT NULL DEFAULT '0',
  `footerimageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `ImageGetInTouchID` (`ImageGetInTouchID`),
  KEY `ImgGetInTouchID` (`ImgGetInTouchID`),
  KEY `footerimageID` (`footerimageID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactpage_versions`
--

INSERT INTO `contactpage_versions` (`ID`, `RecordID`, `Version`, `WebsiteEmailAddress`, `MapEmbedded`, `MapEmbeddedTwo`, `GetInTouchContent`, `ImageGetInTouchID`, `ImgGetInTouchID`, `footerimageID`) VALUES
(1, 3, 3, NULL, NULL, NULL, NULL, 0, 0, 0),
(2, 3, 4, NULL, NULL, NULL, NULL, 0, 0, 0),
(3, 3, 5, NULL, NULL, NULL, NULL, 0, 0, 0),
(4, 3, 6, NULL, NULL, NULL, NULL, 0, 0, 0),
(5, 3, 7, NULL, NULL, NULL, NULL, 0, 0, 0),
(6, 3, 8, NULL, NULL, NULL, NULL, 0, 0, 0),
(7, 3, 9, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', NULL, NULL, 0, 0, 0),
(8, 3, 10, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', NULL, NULL, 0, 0, 0),
(9, 3, 11, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p>asasd</p>', NULL, 0, 0, 0),
(10, 3, 12, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p>asasd</p>', NULL, 0, 0, 0),
(11, 3, 13, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', NULL, 0, 0, 0),
(12, 3, 14, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', NULL, 0, 0, 0),
(13, 3, 15, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', NULL, 0, 0, 0),
(14, 3, 16, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', NULL, 0, 0, 0),
(15, 3, 17, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', NULL, 0, 0, 0),
(16, 3, 18, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', NULL, 0, 0, 0),
(17, 3, 19, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer&nbsp;<a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send message to Dr. Schauer</a></p><p>2. ) Message me directly to arrange</p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 0, 0, 0),
(18, 3, 20, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer&nbsp;<a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send message to Dr. Schauer</a></p><p>2. ) Message me directly to arrange</p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 0, 0, 0),
(19, 3, 21, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange <a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send message to Dr. Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 0, 0, 0),
(20, 3, 22, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange <a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send message to Dr. Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 0, 0, 0),
(21, 3, 23, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange <a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send message to Dr. Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br><br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 0, 0, 0),
(22, 3, 24, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange <a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send message to Dr. Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br><br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 0, 0, 0),
(23, 3, 25, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange <a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send message to Dr. Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br><br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 0, 0, 0),
(24, 3, 26, NULL, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.0176441024905!2d174.73078231530081!3d-36.77014417995472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d399e49ad60a9%3A0x241988b06ed0424c!2s212%20Wairau%20Road%2C%20Wairau%20Valley%2C%20Auckland%200627!5e0!3m2!1sen!2snz!4v1609754270678!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.825027500253!2d174.62632271530364!3d-36.87060677993412!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d404a20aa678b%3A0x276356314dbaf44f!2s53%20Lincoln%20Road%2C%20Henderson%2C%20Auckland%200610!5e0!3m2!1sen!2snz!4v1609754328191!5m2!1sen!2snz\" width=\"100%\" height=\"450\" frameborder=\"0\" aria-hidden=\"false\"></iframe></p>', '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange <a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send message to Dr. Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br><br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage`
--

DROP TABLE IF EXISTS `errorpage`;
CREATE TABLE IF NOT EXISTS `errorpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `errorpage`
--

INSERT INTO `errorpage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_live`
--

DROP TABLE IF EXISTS `errorpage_live`;
CREATE TABLE IF NOT EXISTS `errorpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `errorpage_live`
--

INSERT INTO `errorpage_live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_versions`
--

DROP TABLE IF EXISTS `errorpage_versions`;
CREATE TABLE IF NOT EXISTS `errorpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `errorpage_versions`
--

INSERT INTO `errorpage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 4, 2, 404),
(3, 5, 1, 500),
(4, 5, 2, 500);

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

DROP TABLE IF EXISTS `feature`;
CREATE TABLE IF NOT EXISTS `feature` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Lessons\\Feature') DEFAULT 'SilverStripe\\Lessons\\Feature',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Excerpt` mediumtext,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `HomePageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SortOrder` (`SortOrder`),
  KEY `ClassName` (`ClassName`),
  KEY `PhotoID` (`PhotoID`),
  KEY `HomePageID` (`HomePageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
CREATE TABLE IF NOT EXISTS `file` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `FileHash` varchar(255) DEFAULT NULL,
  `FileFilename` varchar(255) DEFAULT NULL,
  `FileVariant` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Name` (`Name`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `FileHash` (`FileHash`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `CanViewType`, `CanEditType`, `Name`, `Title`, `ShowInSearch`, `ParentID`, `OwnerID`, `FileHash`, `FileFilename`, `FileVariant`) VALUES
(1, 'SilverStripe\\Assets\\Folder', '2021-01-01 23:36:22', '2021-01-01 23:36:22', 2, 'Inherit', 'Inherit', 'HomePage', 'HomePage', 1, 0, 1, NULL, NULL, NULL),
(2, 'SilverStripe\\Assets\\Folder', '2021-01-01 23:36:22', '2021-01-01 23:36:22', 2, 'Inherit', 'Inherit', 'Banner-photos', 'Banner-photos', 1, 1, 1, NULL, NULL, NULL),
(3, 'SilverStripe\\Assets\\Image', '2021-01-02 00:34:31', '2021-01-02 00:34:29', 2, 'Inherit', 'Inherit', 'banner1.jpg', 'banner1', 1, 2, 1, '71d17311d68575696aaa91c4961b1c6533b3da9a', 'HomePage/Banner-photos/banner1.jpg', NULL),
(4, 'SilverStripe\\Assets\\Folder', '2021-01-02 01:12:24', '2021-01-02 01:12:24', 2, 'Inherit', 'Inherit', 'IBD-photos', 'IBD-photos', 1, 0, 1, NULL, NULL, NULL),
(5, 'SilverStripe\\Assets\\Image', '2021-01-05 07:31:25', '2021-01-05 07:31:19', 3, 'Inherit', 'Inherit', 'colonoscopy_polyps.jpg', 'colonoscopy polyps', 1, 0, 1, 'abe6830cf5d88d08bcbee4ed3e753325d2d9b450', 'colonoscopy_polyps.jpg', NULL),
(6, 'SilverStripe\\Assets\\Folder', '2021-01-15 22:46:26', '2021-01-15 22:46:26', 2, 'Inherit', 'Inherit', 'Aboutme-photos', 'Aboutme-photos', 1, 0, 1, NULL, NULL, NULL),
(7, 'SilverStripe\\Assets\\Image', '2021-01-15 22:52:02', '2021-01-15 22:51:58', 2, 'Inherit', 'Inherit', 'WEDrs-4044.jpg', 'WEDrs 4044', 1, 1, 1, '36a785092a36a67e90708cdaf105466a0d15e35e', 'HomePage/WEDrs-4044.jpg', NULL),
(8, 'SilverStripe\\Assets\\Image', '2021-01-16 23:05:32', '2021-01-16 23:05:17', 2, 'Inherit', 'Inherit', 'unnamed-1_FitMaxWzkzMCwzMzZd.jpg', 'unnamed 1 FitMaxWzkzMCwzMzZd', 1, 4, 1, 'ed5ef51a88239dc59935f59b174035ac068694fa', 'IBD-photos/unnamed-1_FitMaxWzkzMCwzMzZd.jpg', NULL),
(9, 'SilverStripe\\Assets\\Image', '2021-01-16 23:07:49', '2021-01-16 23:06:10', 2, 'Inherit', 'Inherit', 'blue-intestines_FitMaxWzkzMCwzMzZd.png', 'blue intestines FitMaxWzkzMCwzMzZd', 1, 4, 1, 'f4536f52e1de6da8dd1df6d94ef1042c9947b7e0', 'IBD-photos/blue-intestines_FitMaxWzkzMCwzMzZd.png', NULL),
(10, 'SilverStripe\\Assets\\Folder', '2021-01-22 05:28:34', '2021-01-22 05:28:34', 2, 'Inherit', 'Inherit', 'Homepage-photos', 'Homepage-photos', 1, 0, 1, NULL, NULL, NULL),
(11, 'SilverStripe\\Assets\\Folder', '2021-01-22 05:28:34', '2021-01-22 05:28:34', 2, 'Inherit', 'Inherit', 'Call-To-Action', 'Call-To-Action', 1, 10, 1, NULL, NULL, NULL),
(12, 'SilverStripe\\Assets\\Image', '2021-01-22 05:31:12', '2021-01-22 05:31:08', 2, 'Inherit', 'Inherit', 'colonoscopy_polyps.jpg', 'colonoscopy polyps', 1, 11, 1, 'abe6830cf5d88d08bcbee4ed3e753325d2d9b450', 'Homepage-photos/Call-To-Action/colonoscopy_polyps.jpg', NULL),
(13, 'SilverStripe\\Assets\\Image', '2021-01-22 05:31:58', '2021-01-22 05:31:55', 2, 'Inherit', 'Inherit', 'Ibs.jpg', 'Ibs', 1, 11, 1, '42d4573ad373a43e1b1ffeb40931e466d128572e', 'Homepage-photos/Call-To-Action/Ibs.jpg', NULL),
(14, 'SilverStripe\\Assets\\Image', '2021-01-22 05:33:18', '2021-01-22 05:33:14', 2, 'Inherit', 'Inherit', 'Prepkit-C_u_FitMaxWzkzMCwzMzZd.jpg', 'Prepkit C u FitMaxWzkzMCwzMzZd', 1, 11, 1, '89035cb29ea20ce436c899613d2aeebe6d60bf75', 'Homepage-photos/Call-To-Action/Prepkit-C_u_FitMaxWzkzMCwzMzZd.jpg', NULL),
(15, 'SilverStripe\\Assets\\Image', '2021-01-22 05:33:53', '2021-01-22 05:33:51', 2, 'Inherit', 'Inherit', 'unnamed-1_FitMaxWzkzMCwzMzZd.jpg', 'unnamed 1 FitMaxWzkzMCwzMzZd', 1, 11, 1, 'ed5ef51a88239dc59935f59b174035ac068694fa', 'Homepage-photos/Call-To-Action/unnamed-1_FitMaxWzkzMCwzMzZd.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `filelink`
--

DROP TABLE IF EXISTS `filelink`;
CREATE TABLE IF NOT EXISTS `filelink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Assets\\Shortcodes\\FileLink') DEFAULT 'SilverStripe\\Assets\\Shortcodes\\FileLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkedID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ParentClass` enum('SilverStripe\\Lessons\\AboutArticleObject','CallToActionDataObject','SilverStripe\\Lessons\\Category','SilverStripe\\Lessons\\CompanyAddressObject','SilverStripe\\Lessons\\Frequentlyaskquestion','SilverStripe\\Lessons\\Interest','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','SilverStripe\\Lessons\\AboutPage','SilverStripe\\Lessons\\ContactPage','SilverStripe\\Lessons\\FAQPage','SilverStripe\\Lessons\\HomePage','SilverStripe\\Lessons\\PatientInfoDetailsPage','SilverStripe\\Lessons\\PatientInformationPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') DEFAULT 'SilverStripe\\Lessons\\AboutArticleObject',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `LinkedID` (`LinkedID`),
  KEY `Parent` (`ParentID`,`ParentClass`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filelink`
--

INSERT INTO `filelink` (`ID`, `ClassName`, `LastEdited`, `Created`, `LinkedID`, `ParentID`, `ParentClass`) VALUES
(3, 'SilverStripe\\Assets\\Shortcodes\\FileLink', '2021-01-05 07:34:43', '2021-01-05 07:34:43', 5, 8, 'SilverStripe\\Lessons\\PatientInfoDetailsPage'),
(4, 'SilverStripe\\Assets\\Shortcodes\\FileLink', '2021-01-16 23:16:27', '2021-01-16 23:16:27', 35, 9, 'SilverStripe\\Lessons\\PatientInfoDetailsPage');

-- --------------------------------------------------------

--
-- Table structure for table `file_editorgroups`
--

DROP TABLE IF EXISTS `file_editorgroups`;
CREATE TABLE IF NOT EXISTS `file_editorgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FileID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FileID` (`FileID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `file_live`
--

DROP TABLE IF EXISTS `file_live`;
CREATE TABLE IF NOT EXISTS `file_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `FileHash` varchar(255) DEFAULT NULL,
  `FileFilename` varchar(255) DEFAULT NULL,
  `FileVariant` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Name` (`Name`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `FileHash` (`FileHash`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file_live`
--

INSERT INTO `file_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `CanViewType`, `CanEditType`, `Name`, `Title`, `ShowInSearch`, `ParentID`, `OwnerID`, `FileHash`, `FileFilename`, `FileVariant`) VALUES
(1, 'SilverStripe\\Assets\\Folder', '2021-01-01 23:36:22', '2021-01-01 23:36:22', 2, 'Inherit', 'Inherit', 'HomePage', 'HomePage', 1, 0, 1, NULL, NULL, NULL),
(2, 'SilverStripe\\Assets\\Folder', '2021-01-01 23:36:22', '2021-01-01 23:36:22', 2, 'Inherit', 'Inherit', 'Banner-photos', 'Banner-photos', 1, 1, 1, NULL, NULL, NULL),
(3, 'SilverStripe\\Assets\\Image', '2021-01-02 00:34:31', '2021-01-02 00:34:29', 2, 'Inherit', 'Inherit', 'banner1.jpg', 'banner1', 1, 2, 1, '71d17311d68575696aaa91c4961b1c6533b3da9a', 'HomePage/Banner-photos/banner1.jpg', NULL),
(4, 'SilverStripe\\Assets\\Folder', '2021-01-02 01:12:24', '2021-01-02 01:12:24', 2, 'Inherit', 'Inherit', 'IBD-photos', 'IBD-photos', 1, 0, 1, NULL, NULL, NULL),
(5, 'SilverStripe\\Assets\\Image', '2021-01-05 07:31:25', '2021-01-05 07:31:19', 3, 'Inherit', 'Inherit', 'colonoscopy_polyps.jpg', 'colonoscopy polyps', 1, 0, 1, 'abe6830cf5d88d08bcbee4ed3e753325d2d9b450', 'colonoscopy_polyps.jpg', NULL),
(6, 'SilverStripe\\Assets\\Folder', '2021-01-15 22:46:26', '2021-01-15 22:46:26', 2, 'Inherit', 'Inherit', 'Aboutme-photos', 'Aboutme-photos', 1, 0, 1, NULL, NULL, NULL),
(7, 'SilverStripe\\Assets\\Image', '2021-01-15 22:52:02', '2021-01-15 22:51:58', 2, 'Inherit', 'Inherit', 'WEDrs-4044.jpg', 'WEDrs 4044', 1, 1, 1, '36a785092a36a67e90708cdaf105466a0d15e35e', 'HomePage/WEDrs-4044.jpg', NULL),
(8, 'SilverStripe\\Assets\\Image', '2021-01-16 23:05:32', '2021-01-16 23:05:17', 2, 'Inherit', 'Inherit', 'unnamed-1_FitMaxWzkzMCwzMzZd.jpg', 'unnamed 1 FitMaxWzkzMCwzMzZd', 1, 4, 1, 'ed5ef51a88239dc59935f59b174035ac068694fa', 'IBD-photos/unnamed-1_FitMaxWzkzMCwzMzZd.jpg', NULL),
(9, 'SilverStripe\\Assets\\Image', '2021-01-16 23:07:49', '2021-01-16 23:06:10', 2, 'Inherit', 'Inherit', 'blue-intestines_FitMaxWzkzMCwzMzZd.png', 'blue intestines FitMaxWzkzMCwzMzZd', 1, 4, 1, 'f4536f52e1de6da8dd1df6d94ef1042c9947b7e0', 'IBD-photos/blue-intestines_FitMaxWzkzMCwzMzZd.png', NULL),
(10, 'SilverStripe\\Assets\\Folder', '2021-01-22 05:28:34', '2021-01-22 05:28:34', 2, 'Inherit', 'Inherit', 'Homepage-photos', 'Homepage-photos', 1, 0, 1, NULL, NULL, NULL),
(11, 'SilverStripe\\Assets\\Folder', '2021-01-22 05:28:34', '2021-01-22 05:28:34', 2, 'Inherit', 'Inherit', 'Call-To-Action', 'Call-To-Action', 1, 10, 1, NULL, NULL, NULL),
(12, 'SilverStripe\\Assets\\Image', '2021-01-22 05:31:12', '2021-01-22 05:31:08', 2, 'Inherit', 'Inherit', 'colonoscopy_polyps.jpg', 'colonoscopy polyps', 1, 11, 1, 'abe6830cf5d88d08bcbee4ed3e753325d2d9b450', 'Homepage-photos/Call-To-Action/colonoscopy_polyps.jpg', NULL),
(13, 'SilverStripe\\Assets\\Image', '2021-01-22 05:31:58', '2021-01-22 05:31:55', 2, 'Inherit', 'Inherit', 'Ibs.jpg', 'Ibs', 1, 11, 1, '42d4573ad373a43e1b1ffeb40931e466d128572e', 'Homepage-photos/Call-To-Action/Ibs.jpg', NULL),
(14, 'SilverStripe\\Assets\\Image', '2021-01-22 05:33:18', '2021-01-22 05:33:14', 2, 'Inherit', 'Inherit', 'Prepkit-C_u_FitMaxWzkzMCwzMzZd.jpg', 'Prepkit C u FitMaxWzkzMCwzMzZd', 1, 11, 1, '89035cb29ea20ce436c899613d2aeebe6d60bf75', 'Homepage-photos/Call-To-Action/Prepkit-C_u_FitMaxWzkzMCwzMzZd.jpg', NULL),
(15, 'SilverStripe\\Assets\\Image', '2021-01-22 05:33:53', '2021-01-22 05:33:51', 2, 'Inherit', 'Inherit', 'unnamed-1_FitMaxWzkzMCwzMzZd.jpg', 'unnamed 1 FitMaxWzkzMCwzMzZd', 1, 11, 1, 'ed5ef51a88239dc59935f59b174035ac068694fa', 'Homepage-photos/Call-To-Action/unnamed-1_FitMaxWzkzMCwzMzZd.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_versions`
--

DROP TABLE IF EXISTS `file_versions`;
CREATE TABLE IF NOT EXISTS `file_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `FileHash` varchar(255) DEFAULT NULL,
  `FileFilename` varchar(255) DEFAULT NULL,
  `FileVariant` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `Name` (`Name`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `FileHash` (`FileHash`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file_versions`
--

INSERT INTO `file_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `Name`, `Title`, `ShowInSearch`, `ParentID`, `OwnerID`, `FileHash`, `FileFilename`, `FileVariant`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2021-01-01 23:36:22', '2021-01-01 23:36:22', 'Inherit', 'Inherit', 'HomePage', 'HomePage', 1, 0, 1, NULL, NULL, NULL),
(2, 1, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2021-01-01 23:36:22', '2021-01-01 23:36:22', 'Inherit', 'Inherit', 'HomePage', 'HomePage', 1, 0, 1, NULL, NULL, NULL),
(3, 2, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2021-01-01 23:36:22', '2021-01-01 23:36:22', 'Inherit', 'Inherit', 'Banner-photos', 'Banner-photos', 1, 1, 1, NULL, NULL, NULL),
(4, 2, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2021-01-01 23:36:22', '2021-01-01 23:36:22', 'Inherit', 'Inherit', 'Banner-photos', 'Banner-photos', 1, 1, 1, NULL, NULL, NULL),
(5, 3, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2021-01-02 00:34:29', '2021-01-02 00:34:29', 'Inherit', 'Inherit', 'banner1.jpg', 'banner1', 1, 2, 1, '71d17311d68575696aaa91c4961b1c6533b3da9a', 'HomePage/Banner-photos/banner1.jpg', NULL),
(6, 3, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2021-01-02 00:34:31', '2021-01-02 00:34:29', 'Inherit', 'Inherit', 'banner1.jpg', 'banner1', 1, 2, 1, '71d17311d68575696aaa91c4961b1c6533b3da9a', 'HomePage/Banner-photos/banner1.jpg', NULL),
(7, 4, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2021-01-02 01:12:24', '2021-01-02 01:12:24', 'Inherit', 'Inherit', 'IBD-photos', 'IBD-photos', 1, 0, 1, NULL, NULL, NULL),
(8, 4, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2021-01-02 01:12:24', '2021-01-02 01:12:24', 'Inherit', 'Inherit', 'IBD-photos', 'IBD-photos', 1, 0, 1, NULL, NULL, NULL),
(9, 5, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2021-01-05 07:31:19', '2021-01-05 07:31:19', 'Inherit', 'Inherit', 'colonoscopy_polyps.jpg', 'colonoscopy polyps', 1, 0, 1, 'abe6830cf5d88d08bcbee4ed3e753325d2d9b450', 'colonoscopy_polyps.jpg', NULL),
(10, 5, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2021-01-05 07:31:19', '2021-01-05 07:31:19', 'Inherit', 'Inherit', 'colonoscopy_polyps.jpg', 'colonoscopy polyps', 1, 0, 1, 'abe6830cf5d88d08bcbee4ed3e753325d2d9b450', 'colonoscopy_polyps.jpg', NULL),
(11, 5, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2021-01-05 07:31:25', '2021-01-05 07:31:19', 'Inherit', 'Inherit', 'colonoscopy_polyps.jpg', 'colonoscopy polyps', 1, 0, 1, 'abe6830cf5d88d08bcbee4ed3e753325d2d9b450', 'colonoscopy_polyps.jpg', NULL),
(12, 6, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2021-01-15 22:46:26', '2021-01-15 22:46:26', 'Inherit', 'Inherit', 'Aboutme-photos', 'Aboutme-photos', 1, 0, 1, NULL, NULL, NULL),
(13, 6, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2021-01-15 22:46:26', '2021-01-15 22:46:26', 'Inherit', 'Inherit', 'Aboutme-photos', 'Aboutme-photos', 1, 0, 1, NULL, NULL, NULL),
(14, 7, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2021-01-15 22:51:58', '2021-01-15 22:51:58', 'Inherit', 'Inherit', 'WEDrs-4044.jpg', 'WEDrs 4044', 1, 1, 1, '36a785092a36a67e90708cdaf105466a0d15e35e', 'HomePage/WEDrs-4044.jpg', NULL),
(15, 7, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2021-01-15 22:52:02', '2021-01-15 22:51:58', 'Inherit', 'Inherit', 'WEDrs-4044.jpg', 'WEDrs 4044', 1, 1, 1, '36a785092a36a67e90708cdaf105466a0d15e35e', 'HomePage/WEDrs-4044.jpg', NULL),
(16, 8, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2021-01-16 23:05:17', '2021-01-16 23:05:17', 'Inherit', 'Inherit', 'unnamed-1_FitMaxWzkzMCwzMzZd.jpg', 'unnamed 1 FitMaxWzkzMCwzMzZd', 1, 4, 1, 'ed5ef51a88239dc59935f59b174035ac068694fa', 'IBD-photos/unnamed-1_FitMaxWzkzMCwzMzZd.jpg', NULL),
(17, 8, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2021-01-16 23:05:32', '2021-01-16 23:05:17', 'Inherit', 'Inherit', 'unnamed-1_FitMaxWzkzMCwzMzZd.jpg', 'unnamed 1 FitMaxWzkzMCwzMzZd', 1, 4, 1, 'ed5ef51a88239dc59935f59b174035ac068694fa', 'IBD-photos/unnamed-1_FitMaxWzkzMCwzMzZd.jpg', NULL),
(18, 9, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2021-01-16 23:06:10', '2021-01-16 23:06:10', 'Inherit', 'Inherit', 'blue-intestines_FitMaxWzkzMCwzMzZd.png', 'blue intestines FitMaxWzkzMCwzMzZd', 1, 4, 1, 'f4536f52e1de6da8dd1df6d94ef1042c9947b7e0', 'IBD-photos/blue-intestines_FitMaxWzkzMCwzMzZd.png', NULL),
(19, 9, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2021-01-16 23:07:49', '2021-01-16 23:06:10', 'Inherit', 'Inherit', 'blue-intestines_FitMaxWzkzMCwzMzZd.png', 'blue intestines FitMaxWzkzMCwzMzZd', 1, 4, 1, 'f4536f52e1de6da8dd1df6d94ef1042c9947b7e0', 'IBD-photos/blue-intestines_FitMaxWzkzMCwzMzZd.png', NULL),
(20, 10, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2021-01-22 05:28:34', '2021-01-22 05:28:34', 'Inherit', 'Inherit', 'Homepage-photos', 'Homepage-photos', 1, 0, 1, NULL, NULL, NULL),
(21, 10, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2021-01-22 05:28:34', '2021-01-22 05:28:34', 'Inherit', 'Inherit', 'Homepage-photos', 'Homepage-photos', 1, 0, 1, NULL, NULL, NULL),
(22, 11, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2021-01-22 05:28:34', '2021-01-22 05:28:34', 'Inherit', 'Inherit', 'Call-To-Action', 'Call-To-Action', 1, 10, 1, NULL, NULL, NULL),
(23, 11, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2021-01-22 05:28:34', '2021-01-22 05:28:34', 'Inherit', 'Inherit', 'Call-To-Action', 'Call-To-Action', 1, 10, 1, NULL, NULL, NULL),
(24, 12, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2021-01-22 05:31:08', '2021-01-22 05:31:08', 'Inherit', 'Inherit', 'colonoscopy_polyps.jpg', 'colonoscopy polyps', 1, 11, 1, 'abe6830cf5d88d08bcbee4ed3e753325d2d9b450', 'Homepage-photos/Call-To-Action/colonoscopy_polyps.jpg', NULL),
(25, 12, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2021-01-22 05:31:12', '2021-01-22 05:31:08', 'Inherit', 'Inherit', 'colonoscopy_polyps.jpg', 'colonoscopy polyps', 1, 11, 1, 'abe6830cf5d88d08bcbee4ed3e753325d2d9b450', 'Homepage-photos/Call-To-Action/colonoscopy_polyps.jpg', NULL),
(26, 13, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2021-01-22 05:31:55', '2021-01-22 05:31:55', 'Inherit', 'Inherit', 'Ibs.jpg', 'Ibs', 1, 11, 1, '42d4573ad373a43e1b1ffeb40931e466d128572e', 'Homepage-photos/Call-To-Action/Ibs.jpg', NULL),
(27, 13, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2021-01-22 05:31:58', '2021-01-22 05:31:55', 'Inherit', 'Inherit', 'Ibs.jpg', 'Ibs', 1, 11, 1, '42d4573ad373a43e1b1ffeb40931e466d128572e', 'Homepage-photos/Call-To-Action/Ibs.jpg', NULL),
(28, 14, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2021-01-22 05:33:14', '2021-01-22 05:33:14', 'Inherit', 'Inherit', 'Prepkit-C_u_FitMaxWzkzMCwzMzZd.jpg', 'Prepkit C u FitMaxWzkzMCwzMzZd', 1, 11, 1, '89035cb29ea20ce436c899613d2aeebe6d60bf75', 'Homepage-photos/Call-To-Action/Prepkit-C_u_FitMaxWzkzMCwzMzZd.jpg', NULL),
(29, 14, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2021-01-22 05:33:18', '2021-01-22 05:33:14', 'Inherit', 'Inherit', 'Prepkit-C_u_FitMaxWzkzMCwzMzZd.jpg', 'Prepkit C u FitMaxWzkzMCwzMzZd', 1, 11, 1, '89035cb29ea20ce436c899613d2aeebe6d60bf75', 'Homepage-photos/Call-To-Action/Prepkit-C_u_FitMaxWzkzMCwzMzZd.jpg', NULL),
(30, 15, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2021-01-22 05:33:51', '2021-01-22 05:33:51', 'Inherit', 'Inherit', 'unnamed-1_FitMaxWzkzMCwzMzZd.jpg', 'unnamed 1 FitMaxWzkzMCwzMzZd', 1, 11, 1, 'ed5ef51a88239dc59935f59b174035ac068694fa', 'Homepage-photos/Call-To-Action/unnamed-1_FitMaxWzkzMCwzMzZd.jpg', NULL),
(31, 15, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2021-01-22 05:33:53', '2021-01-22 05:33:51', 'Inherit', 'Inherit', 'unnamed-1_FitMaxWzkzMCwzMzZd.jpg', 'unnamed 1 FitMaxWzkzMCwzMzZd', 1, 11, 1, 'ed5ef51a88239dc59935f59b174035ac068694fa', 'Homepage-photos/Call-To-Action/unnamed-1_FitMaxWzkzMCwzMzZd.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_viewergroups`
--

DROP TABLE IF EXISTS `file_viewergroups`;
CREATE TABLE IF NOT EXISTS `file_viewergroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FileID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FileID` (`FileID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `frequentlyaskquestion`
--

DROP TABLE IF EXISTS `frequentlyaskquestion`;
CREATE TABLE IF NOT EXISTS `frequentlyaskquestion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Lessons\\Frequentlyaskquestion') DEFAULT 'SilverStripe\\Lessons\\Frequentlyaskquestion',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FAQtitle` varchar(255) DEFAULT NULL,
  `FAQdescription` mediumtext,
  `FAQPageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `FAQPageID` (`FAQPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `frequentlyaskquestion`
--

INSERT INTO `frequentlyaskquestion` (`ID`, `ClassName`, `LastEdited`, `Created`, `FAQtitle`, `FAQdescription`, `FAQPageID`) VALUES
(1, 'SilverStripe\\Lessons\\Frequentlyaskquestion', '2021-02-11 05:35:17', '2021-02-02 08:34:59', 'Titleasdasd', '<p>Paragraph here.....</p><ul class=\"preview-active\" data-faqid=\"{$ID}\">\n<li>Bullet point here</li>\n<li>Bullet point here</li>\n<li>Bullet point here</li>\n</ul>', 11),
(2, 'SilverStripe\\Lessons\\Frequentlyaskquestion', '2021-02-02 23:30:53', '2021-02-02 23:30:53', 'Q: How much does it cost to get a procedure or appointment?', '<p><span>A: This depends on your condition, what tests you might require, and what you health insurance policy (if you have this) may cover. Please be in touch with us and we can send out these details.</span><br><span>I am a Southern Cross Preferred Provider.&nbsp;</span><br><a href=\"https://www.southerncross.co.nz/-/media/Southern-Cross-Health-Society/Health-insurance/Eligibility-criteria/Gastroenterology/colonoscopy-in-adults.pdf?la=en&amp;hash=E0A0921A05E3CA8CD6F1EDB55D6ACC6F45242ED3\">Southern Cross Colonoscopy Coverage</a></p>', 11);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
CREATE TABLE IF NOT EXISTS `group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\Group') DEFAULT 'SilverStripe\\Security\\Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'SilverStripe\\Security\\Group', '2021-01-01 23:27:10', '2021-01-01 23:27:10', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'SilverStripe\\Security\\Group', '2021-01-01 23:27:10', '2021-01-01 23:27:10', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

DROP TABLE IF EXISTS `group_members`;
CREATE TABLE IF NOT EXISTS `group_members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_roles`
--

DROP TABLE IF EXISTS `group_roles`;
CREATE TABLE IF NOT EXISTS `group_roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `homepage`
--

DROP TABLE IF EXISTS `homepage`;
CREATE TABLE IF NOT EXISTS `homepage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TitleOne` varchar(255) DEFAULT NULL,
  `TitleTwo` varchar(255) DEFAULT NULL,
  `ParagraphOne` mediumtext,
  `Header` varchar(255) DEFAULT NULL,
  `Body` mediumtext,
  `HeaderTwo` varchar(255) DEFAULT NULL,
  `BodyTwo` mediumtext,
  `HomeBannerPhotoID` int(11) NOT NULL DEFAULT '0',
  `RightArticlePhotoID` int(11) NOT NULL DEFAULT '0',
  `LeftArticlePhotoID` int(11) NOT NULL DEFAULT '0',
  `LeftContent` mediumtext,
  `RightContent` mediumtext,
  `GetInTouchContent` mediumtext,
  `ImageGetInTouchID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HomeBannerPhotoID` (`HomeBannerPhotoID`),
  KEY `RightArticlePhotoID` (`RightArticlePhotoID`),
  KEY `LeftArticlePhotoID` (`LeftArticlePhotoID`),
  KEY `ImageGetInTouchID` (`ImageGetInTouchID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `homepage`
--

INSERT INTO `homepage` (`ID`, `TitleOne`, `TitleTwo`, `ParagraphOne`, `Header`, `Body`, `HeaderTwo`, `BodyTwo`, `HomeBannerPhotoID`, `RightArticlePhotoID`, `LeftArticlePhotoID`, `LeftContent`, `RightContent`, `GetInTouchContent`, `ImageGetInTouchID`) VALUES
(1, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange&nbsp;<a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send Message To Dr Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 7);

-- --------------------------------------------------------

--
-- Table structure for table `homepage_live`
--

DROP TABLE IF EXISTS `homepage_live`;
CREATE TABLE IF NOT EXISTS `homepage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TitleOne` varchar(255) DEFAULT NULL,
  `TitleTwo` varchar(255) DEFAULT NULL,
  `ParagraphOne` mediumtext,
  `Header` varchar(255) DEFAULT NULL,
  `Body` mediumtext,
  `HeaderTwo` varchar(255) DEFAULT NULL,
  `BodyTwo` mediumtext,
  `HomeBannerPhotoID` int(11) NOT NULL DEFAULT '0',
  `RightArticlePhotoID` int(11) NOT NULL DEFAULT '0',
  `LeftArticlePhotoID` int(11) NOT NULL DEFAULT '0',
  `LeftContent` mediumtext,
  `RightContent` mediumtext,
  `GetInTouchContent` mediumtext,
  `ImageGetInTouchID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HomeBannerPhotoID` (`HomeBannerPhotoID`),
  KEY `RightArticlePhotoID` (`RightArticlePhotoID`),
  KEY `LeftArticlePhotoID` (`LeftArticlePhotoID`),
  KEY `ImageGetInTouchID` (`ImageGetInTouchID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `homepage_live`
--

INSERT INTO `homepage_live` (`ID`, `TitleOne`, `TitleTwo`, `ParagraphOne`, `Header`, `Body`, `HeaderTwo`, `BodyTwo`, `HomeBannerPhotoID`, `RightArticlePhotoID`, `LeftArticlePhotoID`, `LeftContent`, `RightContent`, `GetInTouchContent`, `ImageGetInTouchID`) VALUES
(1, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange&nbsp;<a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send Message To Dr Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 7);

-- --------------------------------------------------------

--
-- Table structure for table `homepage_versions`
--

DROP TABLE IF EXISTS `homepage_versions`;
CREATE TABLE IF NOT EXISTS `homepage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `TitleOne` varchar(255) DEFAULT NULL,
  `TitleTwo` varchar(255) DEFAULT NULL,
  `ParagraphOne` mediumtext,
  `Header` varchar(255) DEFAULT NULL,
  `Body` mediumtext,
  `HeaderTwo` varchar(255) DEFAULT NULL,
  `BodyTwo` mediumtext,
  `HomeBannerPhotoID` int(11) NOT NULL DEFAULT '0',
  `RightArticlePhotoID` int(11) NOT NULL DEFAULT '0',
  `LeftArticlePhotoID` int(11) NOT NULL DEFAULT '0',
  `LeftContent` mediumtext,
  `RightContent` mediumtext,
  `GetInTouchContent` mediumtext,
  `ImageGetInTouchID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HomeBannerPhotoID` (`HomeBannerPhotoID`),
  KEY `RightArticlePhotoID` (`RightArticlePhotoID`),
  KEY `LeftArticlePhotoID` (`LeftArticlePhotoID`),
  KEY `ImageGetInTouchID` (`ImageGetInTouchID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `homepage_versions`
--

INSERT INTO `homepage_versions` (`ID`, `RecordID`, `Version`, `TitleOne`, `TitleTwo`, `ParagraphOne`, `Header`, `Body`, `HeaderTwo`, `BodyTwo`, `HomeBannerPhotoID`, `RightArticlePhotoID`, `LeftArticlePhotoID`, `LeftContent`, `RightContent`, `GetInTouchContent`, `ImageGetInTouchID`) VALUES
(1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0),
(2, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0),
(3, 1, 5, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0),
(4, 1, 6, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0),
(5, 1, 7, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, NULL, NULL, NULL, 3, 0, 0, NULL, NULL, NULL, 0),
(6, 1, 8, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, NULL, NULL, NULL, 3, 0, 0, NULL, NULL, NULL, 0),
(7, 1, 9, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 0),
(8, 1, 10, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 0),
(9, 1, 11, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 0),
(10, 1, 12, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 0),
(11, 1, 13, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 0),
(12, 1, 14, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 0),
(13, 1, 15, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange&nbsp;<a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send Message To Dr Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 0),
(14, 1, 16, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange&nbsp;<a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send Message To Dr Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 0),
(15, 1, 17, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange&nbsp;<a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send Message To Dr Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 7),
(16, 1, 18, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, '<h4>3 ways to get in touch:</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Message me directly to arrange&nbsp;<a class=\"btn btn-success\" title=\"Direct link to contact me\" href=\"[sitetree_link,id=3]\">Send Message To Dr Schauer</a></p><p>3. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', 7),
(17, 1, 19, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 0),
(18, 1, 20, 'Cameron Schauer', 'Gastroenterologist and General Physician', NULL, NULL, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 3, 0, 0, '<p><iframe src=\"https://www.youtube.com/embed/9bRNgUJQdb0\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

DROP TABLE IF EXISTS `interest`;
CREATE TABLE IF NOT EXISTS `interest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Lessons\\Interest') DEFAULT 'SilverStripe\\Lessons\\Interest',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `IntTitle` varchar(255) DEFAULT NULL,
  `IntPhotoID` int(11) NOT NULL DEFAULT '0',
  `AboutPageID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `IntPhotoID` (`IntPhotoID`),
  KEY `AboutPageID` (`AboutPageID`),
  KEY `SortOrder` (`SortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `interest_live`
--

DROP TABLE IF EXISTS `interest_live`;
CREATE TABLE IF NOT EXISTS `interest_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Lessons\\Interest') DEFAULT 'SilverStripe\\Lessons\\Interest',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `IntTitle` varchar(255) DEFAULT NULL,
  `IntPhotoID` int(11) NOT NULL DEFAULT '0',
  `AboutPageID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `IntPhotoID` (`IntPhotoID`),
  KEY `AboutPageID` (`AboutPageID`),
  KEY `SortOrder` (`SortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `interest_versions`
--

DROP TABLE IF EXISTS `interest_versions`;
CREATE TABLE IF NOT EXISTS `interest_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SilverStripe\\Lessons\\Interest') DEFAULT 'SilverStripe\\Lessons\\Interest',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `IntTitle` varchar(255) DEFAULT NULL,
  `IntPhotoID` int(11) NOT NULL DEFAULT '0',
  `AboutPageID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ClassName` (`ClassName`),
  KEY `IntPhotoID` (`IntPhotoID`),
  KEY `AboutPageID` (`AboutPageID`),
  KEY `SortOrder` (`SortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loginattempt`
--

DROP TABLE IF EXISTS `loginattempt`;
CREATE TABLE IF NOT EXISTS `loginattempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\LoginAttempt') DEFAULT 'SilverStripe\\Security\\LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `EmailHashed` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `MemberID` (`MemberID`),
  KEY `EmailHashed` (`EmailHashed`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginattempt`
--

INSERT INTO `loginattempt` (`ID`, `ClassName`, `LastEdited`, `Created`, `Email`, `EmailHashed`, `Status`, `IP`, `MemberID`) VALUES
(1, 'SilverStripe\\Security\\LoginAttempt', '2021-01-01 23:29:15', '2021-01-01 23:29:15', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Failure', '127.0.0.1', 0),
(2, 'SilverStripe\\Security\\LoginAttempt', '2021-01-01 23:29:24', '2021-01-01 23:29:24', NULL, 'afbd7cc0f8bd70b53092aa6107876dcc41c17fe3', 'Failure', '127.0.0.1', 0),
(3, 'SilverStripe\\Security\\LoginAttempt', '2021-01-01 23:29:29', '2021-01-01 23:29:29', NULL, 'afbd7cc0f8bd70b53092aa6107876dcc41c17fe3', 'Failure', '127.0.0.1', 0),
(4, 'SilverStripe\\Security\\LoginAttempt', '2021-01-01 23:30:35', '2021-01-01 23:30:35', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Failure', '127.0.0.1', 0),
(5, 'SilverStripe\\Security\\LoginAttempt', '2021-01-01 23:30:59', '2021-01-01 23:30:59', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Failure', '127.0.0.1', 0),
(6, 'SilverStripe\\Security\\LoginAttempt', '2021-01-01 23:31:06', '2021-01-01 23:31:06', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Failure', '127.0.0.1', 0),
(7, 'SilverStripe\\Security\\LoginAttempt', '2021-01-01 23:32:36', '2021-01-01 23:32:36', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Failure', '127.0.0.1', 0),
(8, 'SilverStripe\\Security\\LoginAttempt', '2021-01-01 23:32:54', '2021-01-01 23:32:54', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Failure', '127.0.0.1', 0),
(9, 'SilverStripe\\Security\\LoginAttempt', '2021-01-01 23:33:04', '2021-01-01 23:33:04', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1),
(10, 'SilverStripe\\Security\\LoginAttempt', '2021-01-04 00:57:21', '2021-01-04 00:57:21', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1),
(11, 'SilverStripe\\Security\\LoginAttempt', '2021-01-15 22:45:05', '2021-01-15 22:45:05', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1),
(12, 'SilverStripe\\Security\\LoginAttempt', '2021-01-15 23:08:38', '2021-01-15 23:08:38', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1),
(13, 'SilverStripe\\Security\\LoginAttempt', '2021-01-15 23:25:27', '2021-01-15 23:25:27', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1),
(14, 'SilverStripe\\Security\\LoginAttempt', '2021-01-16 02:22:16', '2021-01-16 02:22:16', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1),
(15, 'SilverStripe\\Security\\LoginAttempt', '2021-01-16 03:09:50', '2021-01-16 03:09:50', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1),
(16, 'SilverStripe\\Security\\LoginAttempt', '2021-01-16 22:53:12', '2021-01-16 22:53:12', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1),
(17, 'SilverStripe\\Security\\LoginAttempt', '2021-01-17 03:23:20', '2021-01-17 03:23:20', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1),
(18, 'SilverStripe\\Security\\LoginAttempt', '2021-01-22 05:17:14', '2021-01-22 05:17:14', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1),
(19, 'SilverStripe\\Security\\LoginAttempt', '2021-02-02 08:28:07', '2021-02-02 08:28:07', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1),
(20, 'SilverStripe\\Security\\LoginAttempt', '2021-02-02 23:24:03', '2021-02-02 23:24:03', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1),
(21, 'SilverStripe\\Security\\LoginAttempt', '2021-02-11 05:33:00', '2021-02-11 05:33:00', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '127.0.0.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\Member') DEFAULT 'SilverStripe\\Security\\Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Surname` varchar(255) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Surname` (`Surname`),
  KEY `FirstName` (`FirstName`),
  KEY `ClassName` (`ClassName`),
  KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`) VALUES
(1, 'SilverStripe\\Security\\Member', '2021-02-11 05:33:01', '2021-01-01 23:33:04', 'Default Admin', NULL, 'root', 'e92693f4223bf5ddf51ad29537c8f451cce405a8', '2021-02-14 05:33:01', NULL, NULL, NULL, 'none', NULL, NULL, NULL, 'en_US', 0);

-- --------------------------------------------------------

--
-- Table structure for table `memberpassword`
--

DROP TABLE IF EXISTS `memberpassword`;
CREATE TABLE IF NOT EXISTS `memberpassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\MemberPassword') DEFAULT 'SilverStripe\\Security\\MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `memberpassword`
--

INSERT INTO `memberpassword` (`ID`, `ClassName`, `LastEdited`, `Created`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'SilverStripe\\Security\\MemberPassword', '2021-01-01 23:33:04', '2021-01-01 23:33:04', NULL, NULL, 'none', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patientinfodetailspage`
--

DROP TABLE IF EXISTS `patientinfodetailspage`;
CREATE TABLE IF NOT EXISTS `patientinfodetailspage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Authortxt` varchar(255) DEFAULT NULL,
  `Excerpt` mediumtext,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `SortOrder` (`SortOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patientinfodetailspage`
--

INSERT INTO `patientinfodetailspage` (`ID`, `Authortxt`, `Excerpt`, `PhotoID`, `SortOrder`) VALUES
(8, NULL, NULL, 0, 0),
(9, NULL, 'A background and explanation', 8, 0),
(10, NULL, 'An update on an interesting topic! ', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patientinfodetailspage_categories`
--

DROP TABLE IF EXISTS `patientinfodetailspage_categories`;
CREATE TABLE IF NOT EXISTS `patientinfodetailspage_categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PatientInfoDetailsPageID` int(11) NOT NULL DEFAULT '0',
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PatientInfoDetailsPageID` (`PatientInfoDetailsPageID`),
  KEY `CategoryID` (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patientinfodetailspage_categories`
--

INSERT INTO `patientinfodetailspage_categories` (`ID`, `PatientInfoDetailsPageID`, `CategoryID`) VALUES
(1, 8, 1),
(2, 9, 1),
(3, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `patientinfodetailspage_live`
--

DROP TABLE IF EXISTS `patientinfodetailspage_live`;
CREATE TABLE IF NOT EXISTS `patientinfodetailspage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Authortxt` varchar(255) DEFAULT NULL,
  `Excerpt` mediumtext,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `SortOrder` (`SortOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patientinfodetailspage_live`
--

INSERT INTO `patientinfodetailspage_live` (`ID`, `Authortxt`, `Excerpt`, `PhotoID`, `SortOrder`) VALUES
(8, NULL, NULL, 0, 0),
(9, NULL, 'A background and explanation', 8, 0),
(10, NULL, 'An update on an interesting topic! ', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patientinfodetailspage_versions`
--

DROP TABLE IF EXISTS `patientinfodetailspage_versions`;
CREATE TABLE IF NOT EXISTS `patientinfodetailspage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Authortxt` varchar(255) DEFAULT NULL,
  `Excerpt` mediumtext,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `PhotoID` (`PhotoID`),
  KEY `SortOrder` (`SortOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patientinfodetailspage_versions`
--

INSERT INTO `patientinfodetailspage_versions` (`ID`, `RecordID`, `Version`, `Authortxt`, `Excerpt`, `PhotoID`, `SortOrder`) VALUES
(1, 6, 1, NULL, NULL, 0, 0),
(2, 6, 2, NULL, NULL, 0, 0),
(3, 8, 1, NULL, NULL, 0, 0),
(4, 8, 2, NULL, NULL, 0, 0),
(5, 8, 3, NULL, NULL, 0, 0),
(6, 8, 4, NULL, NULL, 0, 0),
(7, 8, 5, NULL, NULL, 0, 0),
(8, 9, 1, NULL, NULL, 0, 0),
(9, 9, 2, NULL, 'A background and explanation', 8, 0),
(10, 9, 3, NULL, 'A background and explanation', 8, 0),
(11, 10, 1, NULL, NULL, 0, 0),
(12, 10, 2, NULL, 'An update on an interesting topic! ', 9, 0),
(13, 10, 3, NULL, 'An update on an interesting topic! ', 9, 0),
(14, 10, 4, NULL, 'An update on an interesting topic! ', 9, 0),
(15, 10, 5, NULL, 'An update on an interesting topic! ', 9, 0),
(16, 9, 4, NULL, 'A background and explanation', 8, 0),
(17, 9, 5, NULL, 'A background and explanation', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\Permission') DEFAULT 'SilverStripe\\Security\\Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'SilverStripe\\Security\\Permission', '2021-01-01 23:27:10', '2021-01-01 23:27:10', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'SilverStripe\\Security\\Permission', '2021-01-01 23:27:10', '2021-01-01 23:27:10', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'SilverStripe\\Security\\Permission', '2021-01-01 23:27:10', '2021-01-01 23:27:10', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'SilverStripe\\Security\\Permission', '2021-01-01 23:27:10', '2021-01-01 23:27:10', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'SilverStripe\\Security\\Permission', '2021-01-01 23:27:10', '2021-01-01 23:27:10', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissionrole`
--

DROP TABLE IF EXISTS `permissionrole`;
CREATE TABLE IF NOT EXISTS `permissionrole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\PermissionRole') DEFAULT 'SilverStripe\\Security\\PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Title` (`Title`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissionrolecode`
--

DROP TABLE IF EXISTS `permissionrolecode`;
CREATE TABLE IF NOT EXISTS `permissionrolecode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\PermissionRoleCode') DEFAULT 'SilverStripe\\Security\\PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `RoleID` (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage`
--

DROP TABLE IF EXISTS `redirectorpage`;
CREATE TABLE IF NOT EXISTS `redirectorpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_live`
--

DROP TABLE IF EXISTS `redirectorpage_live`;
CREATE TABLE IF NOT EXISTS `redirectorpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_versions`
--

DROP TABLE IF EXISTS `redirectorpage_versions`;
CREATE TABLE IF NOT EXISTS `redirectorpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rememberloginhash`
--

DROP TABLE IF EXISTS `rememberloginhash`;
CREATE TABLE IF NOT EXISTS `rememberloginhash` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\RememberLoginHash') DEFAULT 'SilverStripe\\Security\\RememberLoginHash',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `DeviceID` varchar(40) DEFAULT NULL,
  `Hash` varchar(160) DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `MemberID` (`MemberID`),
  KEY `DeviceID` (`DeviceID`),
  KEY `Hash` (`Hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

DROP TABLE IF EXISTS `siteconfig`;
CREATE TABLE IF NOT EXISTS `siteconfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\SiteConfig\\SiteConfig') DEFAULT 'SilverStripe\\SiteConfig\\SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`) VALUES
(1, 'SilverStripe\\SiteConfig\\SiteConfig', '2021-01-01 23:27:10', '2021-01-01 23:27:10', 'Your Site Name', 'your tagline here', 'Anyone', 'LoggedInUsers', 'LoggedInUsers');

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_createtoplevelgroups`
--

DROP TABLE IF EXISTS `siteconfig_createtoplevelgroups`;
CREATE TABLE IF NOT EXISTS `siteconfig_createtoplevelgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_editorgroups`
--

DROP TABLE IF EXISTS `siteconfig_editorgroups`;
CREATE TABLE IF NOT EXISTS `siteconfig_editorgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_viewergroups`
--

DROP TABLE IF EXISTS `siteconfig_viewergroups`;
CREATE TABLE IF NOT EXISTS `siteconfig_viewergroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree`
--

DROP TABLE IF EXISTS `sitetree`;
CREATE TABLE IF NOT EXISTS `sitetree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','SilverStripe\\Lessons\\AboutPage','SilverStripe\\Lessons\\ContactPage','SilverStripe\\Lessons\\FAQPage','SilverStripe\\Lessons\\HomePage','SilverStripe\\Lessons\\PatientInfoDetailsPage','SilverStripe\\Lessons\\PatientInformationPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Priority` varchar(5) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(255) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitetree`
--

INSERT INTO `sitetree` (`ID`, `ClassName`, `LastEdited`, `Created`, `Priority`, `CanViewType`, `CanEditType`, `Version`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(1, 'SilverStripe\\Lessons\\HomePage', '2021-01-22 05:35:35', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 20, 'home', 'Home', NULL, '<p>I am a Gastroenterologist and General Physician, aiming to provide the best all-round care for my patients. This site is designed to be patient focused – a collection of information that is written by me - for you. This site is based on the premise that the more you know and understand, the more likely we will be able to successfully treat your condition.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(2, 'SilverStripe\\Lessons\\AboutPage', '2021-01-15 22:46:33', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 6, 'about-me', 'About Me', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(3, 'SilverStripe\\Lessons\\ContactPage', '2021-01-16 02:37:47', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 26, 'contact-me', 'Contact Me', NULL, '<h4>3 ways to get in touch:</h4><p>1. Referral through GP - Attention Dr. Cameron Schauer</p><p>2. Message me directly to arrange (form on left)</p><p>3. Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(4, 'SilverStripe\\ErrorPage\\ErrorPage', '2021-01-01 23:27:10', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 2, 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 0),
(5, 'SilverStripe\\ErrorPage\\ErrorPage', '2021-01-01 23:27:11', '2021-01-01 23:27:11', NULL, 'Inherit', 'Inherit', 2, 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 6, 0, 0, NULL, 0),
(7, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-05 07:34:31', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 13, 'patient-information', 'Patient Information', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(8, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-05 07:34:44', '2021-01-02 01:13:19', NULL, 'Inherit', 'Inherit', 5, 'colonoscopy', 'Colonoscopy', NULL, '<ol>\n<li aria-level=\"1\">What:</li>\n</ol><p><span>This is a procedure where a long, flexible, thin (13mm diameter) camera is passed through the anus to examine the whole large intestine and a short portion of the small intestine. This is on average 1.5 metres long.</span></p><p><span>&nbsp;[image src=\"/assets/colonoscopy_polyps.jpg\" id=\"5\" width=\"480\" height=\"360\" class=\"leftAlone ss-htmleditorfield-file image\" title=\"colonoscopy polyps\"]</span></p><p>Why:</p><p><span>There are lots of different reasons why you may want to have or have been suggested to have a colonoscopy.</span></p><p><span>This may include (see other patient information sheets)</span></p><ul>\n<li aria-level=\"1\"><span>As part of a health check-up to screen for cancer or pre-cancerous polyps</span>\n<ul>\n<li aria-level=\"2\"><span>Screening colonoscopy may reduce the incidence of colorectal cancer by nearly 90%</span></li>\n</ul>\n</li>\n<li aria-level=\"1\"><span>Concern about family history of cancer or polyps</span>\n<ul>\n<li aria-level=\"2\"><span>If a 1st degree relative has had colorectal cancer, your risk is increased by over 2 times. If you have had two or more first degree relatives with colorectal cancer, that risk is nearly four times!</span></li>\n</ul>\n</li>\n<li aria-level=\"1\"><span>Bleeding from the bottom</span></li>\n<li aria-level=\"1\"><span>Abdominal pain</span></li>\n<li aria-level=\"1\"><span>Change in bowel habits, with constipation, diarrhoea or both!</span></li>\n<li aria-level=\"1\"><span>Unintentional weight loss</span></li>\n<li aria-level=\"1\"><span>Abnormal blood tests or scans that you have had performed</span></li>\n</ul><p>How:</p><p><span>I hold the camera and with my left hand, move wheels which move and steer the tip of the camera through the bowel, which often has many twists and turns.</span></p><p>Does it hurt?</p><p><span>You will have an intravenous luer inserted into our arm, and sedative medication given to make the colonoscopy more comfortable. Some people prefer to use none, although this is not common. Some patients prefer very light sedation, so they can watch the procedure on the monitor and ask questions. Others prefer to be much sleepier, and it is also possible to arrange to have an anaesthetist give very strong sedation so that you will be completely asleep and unaware of anything. We can talk about what you like before the test.</span></p><p><span>There are many different techniques that as the endoscopist, I can use to make the procedure both as safe and as painless as possible.</span></p><p>How long does it take:</p><p><span>This is variable depending on the indication for the test, the length and how bendy your bowel is and what is found. It ranges from 20 minutes to one hour, but on average may take 30 minutes.&nbsp;</span></p><p>What happens afterwards?</p><p><span>You will be able to eat and drink as the sedation wears off, and should feel back to normal in 30-60 minutes. I will come to see you to discuss the findings and any follow-up that may be required. We will provide you with everything written down and colour photographs of the inside of the bowel.</span></p><p><span>More information:</span></p><p><span>Colonoscopy bowel preparation</span></p><p><span>Gastroscopy - what to expect</span></p><p>&nbsp;</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 7),
(9, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:16:27', '2021-01-16 23:02:07', NULL, 'Inherit', 'Inherit', 5, 'bowel-screening', 'Bowel Screening', NULL, '<p><strong>What:</strong>&nbsp;</p><p>Participating in screening means that you have <strong>no </strong>symptoms. You have no bleeding. You have no abdominal pain, weight loss, change in bowel habit. You have no risk factors for colon cancer that would usually require a colonoscopy (i.e., strong family history of colon cancer, inflammatory bowel disease). If you have these issues, you should see your GP or get in touch for an appointment.</p><p><strong>Why:</strong></p><p>Each year between about 2500 and 3000 New Zealanders will be diagnosed with colorectal cancer and between 1100 and 1200 will die as a result of colorectal cancer. This represents both the second most common cancer diagnosed and cause of cancer death. Absolute rates continue to rise in the face of an aging and increasing population.</p><p>This is also a big problem world-wide. There are over one million new cases of colorectal cancer diagnosed world-wide each year and 600,000 deaths. In addition, NZ has the lowest percentage of surgically curable localised disease (28%) when compared with Australia (34%), America (40%) and the United Kingdom (42%). 20% of disease at diagnosis is metastatic (i.e., incurable and spread elsewhere in the body).</p><p>We know that most colorectal cancers develop from precancerous polyps. Polyps are like warty outgrowths that form in the lining of the colon. Removing these can help to remove the risk of developing colon cancer. Studies have shown that regular screening for and removal of polyps reduces your risk of developing colorectal cancer by up to 89% with colonoscopy. Similarly, if a cancer is found, it may be treated, hopefully at an earlier stage than it would have been found otherwise</p><p><iframe src=\"https://www.youtube.com/embed/0h568yv-YA8\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p><p>When polyps are small and growing, you will not have any symptoms. It is only when they grow very large that these may bleed, cause pain, or change your stool habit. This is why screening is important.</p><p>[image src=\"/assets/Screen-Shot-2021-01-09-at-08.42.14.png\" id=\"35\" width=\"504\" height=\"400\" class=\"leftAlone ss-htmleditorfield-file image\" title=\"Screen Shot 2021 01 09 at 08.42.14\"]</p><p class=\"p1\"><em>In Western societies, approximately 5% of the population will develop CRC in their lifetime and up to 2.5% will die of the disease</em></p><p><strong>How?</strong></p><p>The best test for screening is performing a colonoscopy, as this is a direct examination of the bowel. If you are between 60 and 74 and in a participating centre in New Zealand, you will be sent a stool test in the mail. This is checking for microscopic blood. If microscopic blood is present, you will be asked to have a colonoscopy.</p><p>&nbsp;</p><p>Ages to start screening is different in other countries:</p><ul>\n<li>Netherlands: 55</li>\n<li>Australia: 55</li>\n<li>Scotland: 50</li>\n<li>Japan: 40 years old.</li>\n</ul><p>Within New Zealand’s bowel screening programme, a positive result is triggered if the blood (haemoglobin (Hb)) found in a sample is over 200 nanograms of Hb in a millilitre of buffer. The bowel screening pilot found that for readings at this level, for every 100 people we know that approximately eight will have a cancer found in the first round of screening. For every 100 people with FIT results below the threshold there will be very few cancers found. The bowel screening pilot found that readings at this level and higher accounted for 80 percent of bowel cancers found and therefore indicated a higher likelihood of bowel cancer (5)</p><p><em>False positive test results can occur</em><br> False positive results can occur too where screening test results may appear to be abnormal even though no cancer is present.</p><p><em>A negative screening result</em><br> This means blood has not been detected in your sample, and it is recommended that you repeat a bowel screening test every two years. A negative result does not mean that you do not have, or can never develop, bowel cancer because some bowel cancers do not bleed, or bleed on and off.&nbsp; A person who receives a false-negative test result (one that shows there is no cancer when there really is) should still seek medical attention.</p><p><a href=\"https://www.nzherald.co.nz/nz/bowel-screening-programme-misses-too-many-cancers-says-expert/PSRMOCGNK2CNJK7YZXZMCRVNIU/\">Article on missed cancers with screening in NZ</a>&nbsp;</p><p><strong>Additional Information:</strong></p><p>Ministry of Health National Bowel Cancer Screening Information:</p><p><a href=\"https://www.health.govt.nz/our-work/preventative-health-wellness/screening/national-bowel-screening-programme\">https://www.health.govt.nz/our-work/preventative-health-wellness/screening/national-bowel-screening-programme</a></p><p>Bowel Cancer Screening New Zealand:</p><p><a href=\"https://bowelcancernz.org.nz/about-bowel-cancer/early-detection-and-prevention/screening/\">https://bowelcancernz.org.nz/about-bowel-cancer/early-detection-and-prevention/screening/</a></p><p>Time to screen New Zealand:</p><p><a href=\"https://www.timetoscreen.nz/bowel-screening/\">https://www.timetoscreen.nz/bowel-screening/</a></p><p>Large published study on effectiveness of colon cancer screening:</p><p><a href=\"https://gut.bmj.com/content/67/2/291\"></a><a href=\"https://gut.bmj.com/content/67/2/291\">https://gut.bmj.com/content/67/2/291</a>&nbsp;</p><p><iframe src=\"https://www.youtube.com/embed/k62Odxjm7yo\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 1, 1, 2, 1, 0, NULL, 7),
(10, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:08:16', '2021-01-16 23:05:43', NULL, 'Inherit', 'Inherit', 5, 'gut-microbiome', 'Gut Microbiome', NULL, '<p><strong>Introduction</strong></p><p>The bacteria in your gut may be more important than you think. They are so important they are almost considered to be another organ system. There are over 1000 different kinds of bacteria weighing 2kg sitting in your gut which started developing from birth. This whole community of bugs are mostly unique to your body. Think of it as your other fingerprint. Even within specific segments, from the stomach to the intestines, individual colonies of bacteria exist for certain functions. Researchers in science and medicine are just beginning to understand how this can impact everything from your weight to your mood, blood pressure, diabetes and even how you fight infections.&nbsp; This invisible community even influences the nutritional value of food you eat. So how does this happen and what can you do to get things working in your favour?</p><p><strong>Effects on the body:</strong></p><p><strong>Metabolism:</strong></p><p>Gut bacteria produce vitamins important for bodily function.&nbsp; For example they make the majority of Vitamin K which is required for the clotting function of the blood. They also help to form important amino acids which are the building blocks of larger proteins and help process carbohydrates. In doing so they help to transform food into energy and nutrients for growth. In this way, they also may influence your ability to both put on but also lose weight.</p><p><strong>Immune system.</strong></p><p>The ‘good’ intestinal bacteria work to limit the effects of the ‘bad’ bacteria which attempt to cause illness and disease. They directly compete, fighting for nutrients and space in the lining of the gut. They release substances which work directly to harm and prevent overgrowth of the bad bacteria. <em>Dysbiosis</em> is the term used to describe when the bad bacteria overgrow, causing a wide variety of symptoms including bloating, abdominal pain, diarrhoea and malabsorption. Bacteria also provide an early warning signaling system to prepare parts of the immune system to fight disease when infections pass through the gut.</p><p><strong>Allergy</strong></p><p>How you respond to certain foods and the hayfever you may get in Summer can also be explained by these bacteria. Scientists have compared bacteria between children who have allergies and those who don’t seem to develop problems. It is thought that certain bacteria have the ability to train the immune system to react but also importantly ignore things it shouldn’t fight – such as peanuts, grass pollens and cat hair.</p><p><strong><u>Mental Health:</u></strong></p><p>We have all used our ‘gut instinct’, or had ‘butterflies in the tummy’. When was the last time you were ‘sick to your stomach’?</p><p>It seems people have always known there was some link between mental health and the gut. Medically, it seems this was considered even in the 1900’s when patients with depression where sometimes treated with colonic purges or bowel operations in an attempt to remove toxins.</p><p><strong>The Gut-Brain Axis</strong></p><p>It is now known that there is a two-way communication system between the brain and the gut. This influences everything from memory, learning and your reactions to stress. The vagus nerve was identified as one of the direct connections, and perhaps helps to explain those butterflies as your brain passes on emotions to the stomach.</p><p>Researchers have found that chemicals such as serotonin and dopamine, long manipulated by medicines used to treat mental illness, depression and anxiety are linked to the gut. GABA, which is a chemical used to calm the central nervous system is also produced by Lactobacillus rhamnosus, a bacteria used in the fermentation process of some yoghurts. Other strains of this bacteria trigger receptors in the intestine which effect pain perception, in a manner similar to morphine.</p><p>It may also be surprising to you that 50% of irritable bowel syndrome (IBS) patients also meet criteria for mood disorders. Scientists have shown in animals that 2 hours of stress was enough to change the makeup of the gut flora. So it seems that to treat this common problem it is not enough to focus only on the gut, but the mind.</p><p><strong>So what can you practically do?</strong></p><p>Certainly some of what is already in your gut depends on genetic factors. However changing gut flora to our advantage has been shown to be helpful both in animals and humans.</p><p>3 ways which we can alter the bacteria are though the administration of antibiotics (this can harm the bacteria), prebiotics (foods that promote the growth of beneficial bacteria) and probiotics (beneficial bacteria). Some scientists believe that we might eventually be using good gut bacteria in the same way we currently use anti-anxiety and anti-depression medication.&nbsp;In an experiment where gut bacteria from anxious mice where moved to fearless mice, the personality changed and the mice became more sociable. Another study found that ladies who regularly consumed beneficial bacteria through yogurt showed altered brain function, both while non-stressed but also during stressful tasks.&nbsp;</p><p>&nbsp;<strong>Diet</strong></p><p>A healthy diet can help promote the ‘good’ bacterial growth. &nbsp;We know people with high vegetable, high fibre diets have significantly different bacterial profiles than those with high fat and sugar diets. Fermentable foods such miso and sauerkraut increase the level of fermenting bacteria. Non-fermentable fibres such as brown rice, beans, lentils and grains then feed the good bacteria.&nbsp;</p><p>Having a varied diet and mixing foods can be helpful, as the broader the range of bacteria you have, the more benefit can be gained. In 3 month old infants we know that the less diverse their gut bacteria, the more likely they are to be sensitized to eggs milk and peanuts. As you become older, exercise has also been shown to enable bacteria to expand.</p><p>Naturally occurring probiotics are contained in food such as yoghurt, kimchi, pickles and kombucha. Probiotics labeled on yogurt are referred to as ‘ABC’ which stands for (Lactobacillus) Acidophilus, Bifidobacterium and (Lactobacillus) Casei. You should choose yoghurts with the most probiotics per serve, aiming for over one billion, sometimes labeled as 1x10<sup>9</sup> cfu/g. Probiotic supplements have also been shown to be beneficial in some circumstances and more work is being done to measure their effect.</p><p>So go healthy, but also smart with the foods you eat to enable the good bacteria to flourish and feed the rest of your body and mind. You may be surprised with the results.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 7),
(11, 'SilverStripe\\Lessons\\FAQPage', '2021-02-02 08:35:28', '2021-02-02 08:28:17', NULL, 'Inherit', 'Inherit', 3, 'faq', 'FAQ', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetreelink`
--

DROP TABLE IF EXISTS `sitetreelink`;
CREATE TABLE IF NOT EXISTS `sitetreelink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTreeLink') DEFAULT 'SilverStripe\\CMS\\Model\\SiteTreeLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkedID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ParentClass` enum('SilverStripe\\Lessons\\AboutArticleObject','CallToActionDataObject','SilverStripe\\Lessons\\Category','SilverStripe\\Lessons\\CompanyAddressObject','SilverStripe\\Lessons\\Frequentlyaskquestion','SilverStripe\\Lessons\\Interest','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','SilverStripe\\Lessons\\AboutPage','SilverStripe\\Lessons\\ContactPage','SilverStripe\\Lessons\\FAQPage','SilverStripe\\Lessons\\HomePage','SilverStripe\\Lessons\\PatientInfoDetailsPage','SilverStripe\\Lessons\\PatientInformationPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') DEFAULT 'SilverStripe\\Lessons\\AboutArticleObject',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `LinkedID` (`LinkedID`),
  KEY `Parent` (`ParentID`,`ParentClass`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitetreelink`
--

INSERT INTO `sitetreelink` (`ID`, `ClassName`, `LastEdited`, `Created`, `LinkedID`, `ParentID`, `ParentClass`) VALUES
(2, 'SilverStripe\\CMS\\Model\\SiteTreeLink', '2021-01-15 23:31:24', '2021-01-15 23:31:24', 3, 3, 'SilverStripe\\Lessons\\ContactPage'),
(3, 'SilverStripe\\CMS\\Model\\SiteTreeLink', '2021-02-02 08:34:59', '2021-02-02 08:34:59', 18, 1, 'SilverStripe\\Lessons\\Frequentlyaskquestion');

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_editorgroups`
--

DROP TABLE IF EXISTS `sitetree_editorgroups`;
CREATE TABLE IF NOT EXISTS `sitetree_editorgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_live`
--

DROP TABLE IF EXISTS `sitetree_live`;
CREATE TABLE IF NOT EXISTS `sitetree_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','SilverStripe\\Lessons\\AboutPage','SilverStripe\\Lessons\\ContactPage','SilverStripe\\Lessons\\FAQPage','SilverStripe\\Lessons\\HomePage','SilverStripe\\Lessons\\PatientInfoDetailsPage','SilverStripe\\Lessons\\PatientInformationPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Priority` varchar(5) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(255) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitetree_live`
--

INSERT INTO `sitetree_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Priority`, `CanViewType`, `CanEditType`, `Version`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(1, 'SilverStripe\\Lessons\\HomePage', '2021-01-16 03:11:15', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 20, 'home', 'Home', NULL, '<p>I am a Gastroenterologist and General Physician, aiming to provide the best all-round care for my patients. This site is designed to be patient focused – a collection of information that is written by me - for you. This site is based on the premise that the more you know and understand, the more likely we will be able to successfully treat your condition.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(2, 'SilverStripe\\Lessons\\AboutPage', '2021-01-15 22:46:33', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 6, 'about-me', 'About Me', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(3, 'SilverStripe\\Lessons\\ContactPage', '2021-01-16 02:37:47', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 26, 'contact-me', 'Contact Me', NULL, '<h4>3 ways to get in touch:</h4><p>1. Referral through GP - Attention Dr. Cameron Schauer</p><p>2. Message me directly to arrange (form on left)</p><p>3. Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(4, 'SilverStripe\\ErrorPage\\ErrorPage', '2021-01-01 23:27:10', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 2, 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 0),
(5, 'SilverStripe\\ErrorPage\\ErrorPage', '2021-01-01 23:27:11', '2021-01-01 23:27:11', NULL, 'Inherit', 'Inherit', 2, 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 6, 0, 0, NULL, 0),
(7, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-05 07:34:31', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 13, 'patient-information', 'Patient Information', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(8, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-05 07:34:44', '2021-01-02 01:13:19', NULL, 'Inherit', 'Inherit', 5, 'colonoscopy', 'Colonoscopy', NULL, '<ol>\n<li aria-level=\"1\">What:</li>\n</ol><p><span>This is a procedure where a long, flexible, thin (13mm diameter) camera is passed through the anus to examine the whole large intestine and a short portion of the small intestine. This is on average 1.5 metres long.</span></p><p><span>&nbsp;[image src=\"/assets/colonoscopy_polyps.jpg\" id=\"5\" width=\"480\" height=\"360\" class=\"leftAlone ss-htmleditorfield-file image\" title=\"colonoscopy polyps\"]</span></p><p>Why:</p><p><span>There are lots of different reasons why you may want to have or have been suggested to have a colonoscopy.</span></p><p><span>This may include (see other patient information sheets)</span></p><ul>\n<li aria-level=\"1\"><span>As part of a health check-up to screen for cancer or pre-cancerous polyps</span>\n<ul>\n<li aria-level=\"2\"><span>Screening colonoscopy may reduce the incidence of colorectal cancer by nearly 90%</span></li>\n</ul>\n</li>\n<li aria-level=\"1\"><span>Concern about family history of cancer or polyps</span>\n<ul>\n<li aria-level=\"2\"><span>If a 1st degree relative has had colorectal cancer, your risk is increased by over 2 times. If you have had two or more first degree relatives with colorectal cancer, that risk is nearly four times!</span></li>\n</ul>\n</li>\n<li aria-level=\"1\"><span>Bleeding from the bottom</span></li>\n<li aria-level=\"1\"><span>Abdominal pain</span></li>\n<li aria-level=\"1\"><span>Change in bowel habits, with constipation, diarrhoea or both!</span></li>\n<li aria-level=\"1\"><span>Unintentional weight loss</span></li>\n<li aria-level=\"1\"><span>Abnormal blood tests or scans that you have had performed</span></li>\n</ul><p>How:</p><p><span>I hold the camera and with my left hand, move wheels which move and steer the tip of the camera through the bowel, which often has many twists and turns.</span></p><p>Does it hurt?</p><p><span>You will have an intravenous luer inserted into our arm, and sedative medication given to make the colonoscopy more comfortable. Some people prefer to use none, although this is not common. Some patients prefer very light sedation, so they can watch the procedure on the monitor and ask questions. Others prefer to be much sleepier, and it is also possible to arrange to have an anaesthetist give very strong sedation so that you will be completely asleep and unaware of anything. We can talk about what you like before the test.</span></p><p><span>There are many different techniques that as the endoscopist, I can use to make the procedure both as safe and as painless as possible.</span></p><p>How long does it take:</p><p><span>This is variable depending on the indication for the test, the length and how bendy your bowel is and what is found. It ranges from 20 minutes to one hour, but on average may take 30 minutes.&nbsp;</span></p><p>What happens afterwards?</p><p><span>You will be able to eat and drink as the sedation wears off, and should feel back to normal in 30-60 minutes. I will come to see you to discuss the findings and any follow-up that may be required. We will provide you with everything written down and colour photographs of the inside of the bowel.</span></p><p><span>More information:</span></p><p><span>Colonoscopy bowel preparation</span></p><p><span>Gastroscopy - what to expect</span></p><p>&nbsp;</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 7),
(9, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:16:27', '2021-01-16 23:02:07', NULL, 'Inherit', 'Inherit', 5, 'bowel-screening', 'Bowel Screening', NULL, '<p><strong>What:</strong>&nbsp;</p><p>Participating in screening means that you have <strong>no </strong>symptoms. You have no bleeding. You have no abdominal pain, weight loss, change in bowel habit. You have no risk factors for colon cancer that would usually require a colonoscopy (i.e., strong family history of colon cancer, inflammatory bowel disease). If you have these issues, you should see your GP or get in touch for an appointment.</p><p><strong>Why:</strong></p><p>Each year between about 2500 and 3000 New Zealanders will be diagnosed with colorectal cancer and between 1100 and 1200 will die as a result of colorectal cancer. This represents both the second most common cancer diagnosed and cause of cancer death. Absolute rates continue to rise in the face of an aging and increasing population.</p><p>This is also a big problem world-wide. There are over one million new cases of colorectal cancer diagnosed world-wide each year and 600,000 deaths. In addition, NZ has the lowest percentage of surgically curable localised disease (28%) when compared with Australia (34%), America (40%) and the United Kingdom (42%). 20% of disease at diagnosis is metastatic (i.e., incurable and spread elsewhere in the body).</p><p>We know that most colorectal cancers develop from precancerous polyps. Polyps are like warty outgrowths that form in the lining of the colon. Removing these can help to remove the risk of developing colon cancer. Studies have shown that regular screening for and removal of polyps reduces your risk of developing colorectal cancer by up to 89% with colonoscopy. Similarly, if a cancer is found, it may be treated, hopefully at an earlier stage than it would have been found otherwise</p><p><iframe src=\"https://www.youtube.com/embed/0h568yv-YA8\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p><p>When polyps are small and growing, you will not have any symptoms. It is only when they grow very large that these may bleed, cause pain, or change your stool habit. This is why screening is important.</p><p>[image src=\"/assets/Screen-Shot-2021-01-09-at-08.42.14.png\" id=\"35\" width=\"504\" height=\"400\" class=\"leftAlone ss-htmleditorfield-file image\" title=\"Screen Shot 2021 01 09 at 08.42.14\"]</p><p class=\"p1\"><em>In Western societies, approximately 5% of the population will develop CRC in their lifetime and up to 2.5% will die of the disease</em></p><p><strong>How?</strong></p><p>The best test for screening is performing a colonoscopy, as this is a direct examination of the bowel. If you are between 60 and 74 and in a participating centre in New Zealand, you will be sent a stool test in the mail. This is checking for microscopic blood. If microscopic blood is present, you will be asked to have a colonoscopy.</p><p>&nbsp;</p><p>Ages to start screening is different in other countries:</p><ul>\n<li>Netherlands: 55</li>\n<li>Australia: 55</li>\n<li>Scotland: 50</li>\n<li>Japan: 40 years old.</li>\n</ul><p>Within New Zealand’s bowel screening programme, a positive result is triggered if the blood (haemoglobin (Hb)) found in a sample is over 200 nanograms of Hb in a millilitre of buffer. The bowel screening pilot found that for readings at this level, for every 100 people we know that approximately eight will have a cancer found in the first round of screening. For every 100 people with FIT results below the threshold there will be very few cancers found. The bowel screening pilot found that readings at this level and higher accounted for 80 percent of bowel cancers found and therefore indicated a higher likelihood of bowel cancer (5)</p><p><em>False positive test results can occur</em><br> False positive results can occur too where screening test results may appear to be abnormal even though no cancer is present.</p><p><em>A negative screening result</em><br> This means blood has not been detected in your sample, and it is recommended that you repeat a bowel screening test every two years. A negative result does not mean that you do not have, or can never develop, bowel cancer because some bowel cancers do not bleed, or bleed on and off.&nbsp; A person who receives a false-negative test result (one that shows there is no cancer when there really is) should still seek medical attention.</p><p><a href=\"https://www.nzherald.co.nz/nz/bowel-screening-programme-misses-too-many-cancers-says-expert/PSRMOCGNK2CNJK7YZXZMCRVNIU/\">Article on missed cancers with screening in NZ</a>&nbsp;</p><p><strong>Additional Information:</strong></p><p>Ministry of Health National Bowel Cancer Screening Information:</p><p><a href=\"https://www.health.govt.nz/our-work/preventative-health-wellness/screening/national-bowel-screening-programme\">https://www.health.govt.nz/our-work/preventative-health-wellness/screening/national-bowel-screening-programme</a></p><p>Bowel Cancer Screening New Zealand:</p><p><a href=\"https://bowelcancernz.org.nz/about-bowel-cancer/early-detection-and-prevention/screening/\">https://bowelcancernz.org.nz/about-bowel-cancer/early-detection-and-prevention/screening/</a></p><p>Time to screen New Zealand:</p><p><a href=\"https://www.timetoscreen.nz/bowel-screening/\">https://www.timetoscreen.nz/bowel-screening/</a></p><p>Large published study on effectiveness of colon cancer screening:</p><p><a href=\"https://gut.bmj.com/content/67/2/291\"></a><a href=\"https://gut.bmj.com/content/67/2/291\">https://gut.bmj.com/content/67/2/291</a>&nbsp;</p><p><iframe src=\"https://www.youtube.com/embed/k62Odxjm7yo\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 1, 1, 2, 1, 0, NULL, 7),
(10, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:08:16', '2021-01-16 23:05:43', NULL, 'Inherit', 'Inherit', 5, 'gut-microbiome', 'Gut Microbiome', NULL, '<p><strong>Introduction</strong></p><p>The bacteria in your gut may be more important than you think. They are so important they are almost considered to be another organ system. There are over 1000 different kinds of bacteria weighing 2kg sitting in your gut which started developing from birth. This whole community of bugs are mostly unique to your body. Think of it as your other fingerprint. Even within specific segments, from the stomach to the intestines, individual colonies of bacteria exist for certain functions. Researchers in science and medicine are just beginning to understand how this can impact everything from your weight to your mood, blood pressure, diabetes and even how you fight infections.&nbsp; This invisible community even influences the nutritional value of food you eat. So how does this happen and what can you do to get things working in your favour?</p><p><strong>Effects on the body:</strong></p><p><strong>Metabolism:</strong></p><p>Gut bacteria produce vitamins important for bodily function.&nbsp; For example they make the majority of Vitamin K which is required for the clotting function of the blood. They also help to form important amino acids which are the building blocks of larger proteins and help process carbohydrates. In doing so they help to transform food into energy and nutrients for growth. In this way, they also may influence your ability to both put on but also lose weight.</p><p><strong>Immune system.</strong></p><p>The ‘good’ intestinal bacteria work to limit the effects of the ‘bad’ bacteria which attempt to cause illness and disease. They directly compete, fighting for nutrients and space in the lining of the gut. They release substances which work directly to harm and prevent overgrowth of the bad bacteria. <em>Dysbiosis</em> is the term used to describe when the bad bacteria overgrow, causing a wide variety of symptoms including bloating, abdominal pain, diarrhoea and malabsorption. Bacteria also provide an early warning signaling system to prepare parts of the immune system to fight disease when infections pass through the gut.</p><p><strong>Allergy</strong></p><p>How you respond to certain foods and the hayfever you may get in Summer can also be explained by these bacteria. Scientists have compared bacteria between children who have allergies and those who don’t seem to develop problems. It is thought that certain bacteria have the ability to train the immune system to react but also importantly ignore things it shouldn’t fight – such as peanuts, grass pollens and cat hair.</p><p><strong><u>Mental Health:</u></strong></p><p>We have all used our ‘gut instinct’, or had ‘butterflies in the tummy’. When was the last time you were ‘sick to your stomach’?</p><p>It seems people have always known there was some link between mental health and the gut. Medically, it seems this was considered even in the 1900’s when patients with depression where sometimes treated with colonic purges or bowel operations in an attempt to remove toxins.</p><p><strong>The Gut-Brain Axis</strong></p><p>It is now known that there is a two-way communication system between the brain and the gut. This influences everything from memory, learning and your reactions to stress. The vagus nerve was identified as one of the direct connections, and perhaps helps to explain those butterflies as your brain passes on emotions to the stomach.</p><p>Researchers have found that chemicals such as serotonin and dopamine, long manipulated by medicines used to treat mental illness, depression and anxiety are linked to the gut. GABA, which is a chemical used to calm the central nervous system is also produced by Lactobacillus rhamnosus, a bacteria used in the fermentation process of some yoghurts. Other strains of this bacteria trigger receptors in the intestine which effect pain perception, in a manner similar to morphine.</p><p>It may also be surprising to you that 50% of irritable bowel syndrome (IBS) patients also meet criteria for mood disorders. Scientists have shown in animals that 2 hours of stress was enough to change the makeup of the gut flora. So it seems that to treat this common problem it is not enough to focus only on the gut, but the mind.</p><p><strong>So what can you practically do?</strong></p><p>Certainly some of what is already in your gut depends on genetic factors. However changing gut flora to our advantage has been shown to be helpful both in animals and humans.</p><p>3 ways which we can alter the bacteria are though the administration of antibiotics (this can harm the bacteria), prebiotics (foods that promote the growth of beneficial bacteria) and probiotics (beneficial bacteria). Some scientists believe that we might eventually be using good gut bacteria in the same way we currently use anti-anxiety and anti-depression medication.&nbsp;In an experiment where gut bacteria from anxious mice where moved to fearless mice, the personality changed and the mice became more sociable. Another study found that ladies who regularly consumed beneficial bacteria through yogurt showed altered brain function, both while non-stressed but also during stressful tasks.&nbsp;</p><p>&nbsp;<strong>Diet</strong></p><p>A healthy diet can help promote the ‘good’ bacterial growth. &nbsp;We know people with high vegetable, high fibre diets have significantly different bacterial profiles than those with high fat and sugar diets. Fermentable foods such miso and sauerkraut increase the level of fermenting bacteria. Non-fermentable fibres such as brown rice, beans, lentils and grains then feed the good bacteria.&nbsp;</p><p>Having a varied diet and mixing foods can be helpful, as the broader the range of bacteria you have, the more benefit can be gained. In 3 month old infants we know that the less diverse their gut bacteria, the more likely they are to be sensitized to eggs milk and peanuts. As you become older, exercise has also been shown to enable bacteria to expand.</p><p>Naturally occurring probiotics are contained in food such as yoghurt, kimchi, pickles and kombucha. Probiotics labeled on yogurt are referred to as ‘ABC’ which stands for (Lactobacillus) Acidophilus, Bifidobacterium and (Lactobacillus) Casei. You should choose yoghurts with the most probiotics per serve, aiming for over one billion, sometimes labeled as 1x10<sup>9</sup> cfu/g. Probiotic supplements have also been shown to be beneficial in some circumstances and more work is being done to measure their effect.</p><p>So go healthy, but also smart with the foods you eat to enable the good bacteria to flourish and feed the rest of your body and mind. You may be surprised with the results.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 7),
(11, 'SilverStripe\\Lessons\\FAQPage', '2021-02-02 08:35:28', '2021-02-02 08:28:17', NULL, 'Inherit', 'Inherit', 3, 'faq', 'FAQ', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_versions`
--

DROP TABLE IF EXISTS `sitetree_versions`;
CREATE TABLE IF NOT EXISTS `sitetree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','SilverStripe\\Lessons\\AboutPage','SilverStripe\\Lessons\\ContactPage','SilverStripe\\Lessons\\FAQPage','SilverStripe\\Lessons\\HomePage','SilverStripe\\Lessons\\PatientInfoDetailsPage','SilverStripe\\Lessons\\PatientInformationPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Priority` varchar(5) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(255) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitetree_versions`
--

INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Priority`, `CanViewType`, `CanEditType`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(1, 1, 1, 0, 0, 1, 0, 0, 'Page', '2021-01-01 23:27:10', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(2, 1, 2, 1, 0, 1, 0, 0, 'Page', '2021-01-01 23:27:10', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(3, 2, 1, 0, 0, 1, 0, 0, 'Page', '2021-01-01 23:27:10', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(4, 2, 2, 1, 0, 1, 0, 0, 'Page', '2021-01-01 23:27:10', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(5, 3, 1, 0, 0, 1, 0, 0, 'Page', '2021-01-01 23:27:10', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(6, 3, 2, 1, 0, 1, 0, 0, 'Page', '2021-01-01 23:27:10', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(7, 4, 1, 0, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2021-01-01 23:27:10', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 0),
(8, 4, 2, 1, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2021-01-01 23:27:10', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 0),
(9, 5, 1, 0, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2021-01-01 23:27:11', '2021-01-01 23:27:11', NULL, 'Inherit', 'Inherit', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 0),
(10, 5, 2, 1, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2021-01-01 23:27:11', '2021-01-01 23:27:11', NULL, 'Inherit', 'Inherit', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 0),
(11, 1, 3, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\HomePage', '2021-01-01 23:33:19', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(12, 1, 4, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\HomePage', '2021-01-01 23:33:19', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(13, 2, 3, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\AboutPage', '2021-01-01 23:33:30', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(14, 2, 4, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\AboutPage', '2021-01-01 23:33:31', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(15, 3, 3, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\ContactPage', '2021-01-01 23:33:42', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(16, 3, 4, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\ContactPage', '2021-01-01 23:33:42', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(17, 1, 5, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\HomePage', '2021-01-01 23:37:05', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(18, 1, 6, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\HomePage', '2021-01-01 23:37:06', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(19, 1, 7, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\HomePage', '2021-01-02 00:34:31', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(20, 1, 8, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\HomePage', '2021-01-02 00:34:31', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(21, 6, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-02 01:12:22', '2021-01-02 01:12:22', NULL, 'Inherit', 'Inherit', 'new-patient-info-details-page', 'New Patient Info Details Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 1),
(22, 6, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-02 01:12:40', '2021-01-02 01:12:22', NULL, 'Inherit', 'Inherit', 'new-patient-info-details-page', 'New Patient Info Details Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 1),
(23, 6, 3, 1, 1, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-02 01:13:04', '2021-01-02 01:12:22', NULL, 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(24, 7, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-02 01:13:14', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'new-patient-information-page', 'New Patient Information Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(25, 8, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-02 01:13:19', '2021-01-02 01:13:19', NULL, 'Inherit', 'Inherit', 'new-patient-info-details-page', 'New Patient Info Details Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 7),
(26, 7, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-02 01:13:30', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'patient-information', 'Patient Information', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(27, 7, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-02 01:13:30', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'patient-information', 'Patient Information', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(28, 8, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-02 01:13:45', '2021-01-02 01:13:19', NULL, 'Inherit', 'Inherit', 'colonoscopy', 'Colonoscopy', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 7),
(29, 8, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-02 01:13:48', '2021-01-02 01:13:19', NULL, 'Inherit', 'Inherit', 'colonoscopy', 'Colonoscopy', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 7),
(30, 7, 4, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-02 01:13:50', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'patient-information', 'Patient Information', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(31, 7, 5, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-02 01:14:01', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'patient-information', 'Patient Information', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(32, 1, 9, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\HomePage', '2021-01-04 01:15:16', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(33, 1, 10, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\HomePage', '2021-01-04 01:15:18', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(34, 1, 11, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\HomePage', '2021-01-04 01:35:11', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(35, 1, 12, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\HomePage', '2021-01-04 01:35:12', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(36, 3, 5, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\ContactPage', '2021-01-04 02:01:42', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<div class=\"main\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-md-6\">\n<h4>3 Ways to get in touch</h4>\n<p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p>\n<p>2. ) Direct booking for:</p>\n<ul>\n<li>A procedure (gastroscopy, colonoscopy etc):<br><strong>Phone:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li>A clinic:<br><strong>Phone:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>\n<p>3. ) Contact me to arrange one of the above</p>\n<ol>\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ol>\n</div>\n</div>\n</div>\n</div>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(37, 3, 6, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\ContactPage', '2021-01-04 02:01:42', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<div class=\"main\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-md-6\">\n<h4>3 Ways to get in touch</h4>\n<p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p>\n<p>2. ) Direct booking for:</p>\n<ul>\n<li>A procedure (gastroscopy, colonoscopy etc):<br><strong>Phone:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li>A clinic:<br><strong>Phone:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>\n<p>3. ) Contact me to arrange one of the above</p>\n<ol>\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ol>\n</div>\n</div>\n</div>\n</div>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(38, 1, 13, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\HomePage', '2021-01-04 04:12:36', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(39, 1, 14, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\HomePage', '2021-01-04 04:12:37', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(40, 3, 7, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\ContactPage', '2021-01-04 04:58:50', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<h4>3 Ways to get in touch</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Direct booking for:</p><ul>\n<li>A procedure (gastroscopy, colonoscopy etc):<br><strong>Phone:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li>A clinic:<br><strong>Phone:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Contact me to arrange one of the above</p><ol>\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ol>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(41, 3, 8, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\ContactPage', '2021-01-04 04:58:51', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<h4>3 Ways to get in touch</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Direct booking for:</p><ul>\n<li>A procedure (gastroscopy, colonoscopy etc):<br><strong>Phone:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li>A clinic:<br><strong>Phone:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Contact me to arrange one of the above</p><ol>\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ol>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(42, 3, 9, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\ContactPage', '2021-01-04 09:58:02', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<h4>3 Ways to get in touch</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Direct booking for:</p><ul>\n<li>A procedure (gastroscopy, colonoscopy etc):<br><strong>Phone:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li>A clinic:<br><strong>Phone:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Contact me to arrange one of the above</p><ol>\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ol>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(43, 3, 10, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\ContactPage', '2021-01-04 09:58:03', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<h4>3 Ways to get in touch</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Direct booking for:</p><ul>\n<li>A procedure (gastroscopy, colonoscopy etc):<br><strong>Phone:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li>A clinic:<br><strong>Phone:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Contact me to arrange one of the above</p><ol>\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ol>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(44, 3, 11, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\ContactPage', '2021-01-04 10:03:08', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<h4>3 Ways to get in touch</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Direct booking for:</p><ul>\n<li>A procedure (gastroscopy, colonoscopy etc):<br><strong>Phone:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li>A clinic:<br><strong>Phone:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Contact me to arrange one of the above</p><ol>\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ol>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(45, 3, 12, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\ContactPage', '2021-01-04 10:03:08', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<h4>3 Ways to get in touch</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Direct booking for:</p><ul>\n<li>A procedure (gastroscopy, colonoscopy etc):<br><strong>Phone:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li>A clinic:<br><strong>Phone:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Contact me to arrange one of the above</p><ol>\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ol>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(46, 3, 13, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\ContactPage', '2021-01-04 10:03:27', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<h4>3 Ways to get in touch</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Direct booking for:</p><ul>\n<li>A procedure (gastroscopy, colonoscopy etc):<br><strong>Phone:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li>A clinic:<br><strong>Phone:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Contact me to arrange one of the above</p><ol>\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ol>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(47, 3, 14, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\ContactPage', '2021-01-04 10:03:28', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<h4>3 Ways to get in touch</h4><p>1. ) Referral through GP - Attention Dr. Cameron Schauer</p><p>2. ) Direct booking for:</p><ul>\n<li>A procedure (gastroscopy, colonoscopy etc):<br><strong>Phone:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li>A clinic:<br><strong>Phone:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br><strong>Email:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Contact me to arrange one of the above</p><ol>\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ol>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(48, 3, 15, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\ContactPage', '2021-01-04 10:03:45', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<h4>3 ways to get in touch</h4><p>1. ) Message me directly to arrange an appointment&nbsp;<a class=\"btn btn-success\" href=\"https://www.csgastro.co.nz/contact-me/\">Get Consult</a></p><p>2. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Referral through GP - Attention Dr. Cameron Schauer</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(49, 3, 16, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\ContactPage', '2021-01-04 10:03:45', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<h4>3 ways to get in touch</h4><p>1. ) Message me directly to arrange an appointment&nbsp;<a class=\"btn btn-success\" href=\"https://www.csgastro.co.nz/contact-me/\">Get Consult</a></p><p>2. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Referral through GP - Attention Dr. Cameron Schauer</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(50, 7, 6, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-05 07:31:25', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'patient-information', 'Patient Information', NULL, '<ol>\n<li style=\"font-weight: 400;\" aria-level=\"1\">What:</li>\n</ol><p><span style=\"font-weight: 400;\">This is a procedure where a long, flexible, thin (13mm diameter) camera is passed through the anus to examine the whole large intestine and a short portion of the small intestine. This is on average 1.5 metres long.</span></p><p><span style=\"font-weight: 400;\">&nbsp;</span></p><p>Why:[image src=\"/assets/abe6830cf5/colonoscopy_polyps.jpg\" id=\"5\" width=\"480\" height=\"360\" class=\"leftAlone ss-htmleditorfield-file image\" title=\"colonoscopy polyps\"]</p><p><span style=\"font-weight: 400;\">There are lots of different reasons why you may want to have or have been suggested to have a colonoscopy.</span></p><p><span style=\"font-weight: 400;\">This may include (see other patient information sheets)</span></p><ul>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">As part of a health check-up to screen for cancer or pre-cancerous polyps</span>\n<ul>\n<li style=\"font-weight: 400;\" aria-level=\"2\"><span style=\"font-weight: 400;\">Screening colonoscopy may reduce the incidence of colorectal cancer by nearly 90%</span></li>\n</ul>\n</li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Concern about family history of cancer or polyps</span>\n<ul>\n<li style=\"font-weight: 400;\" aria-level=\"2\"><span style=\"font-weight: 400;\">If a 1st degree relative has had colorectal cancer, your risk is increased by over 2 times. If you have had two or more first degree relatives with colorectal cancer, that risk is nearly four times!</span></li>\n</ul>\n</li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Bleeding from the bottom</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Abdominal pain</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Change in bowel habits, with constipation, diarrhoea or both!</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Unintentional weight loss</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Abnormal blood tests or scans that you have had performed</span></li>\n</ul><p>How:</p><p><span style=\"font-weight: 400;\">I hold the camera and with my left hand, move wheels which move and steer the tip of the camera through the bowel, which often has many twists and turns.</span></p><p>Does it hurt?</p><p><span style=\"font-weight: 400;\">You will have an intravenous luer inserted into our arm, and sedative medication given to make the colonoscopy more comfortable. Some people prefer to use none, although this is not common. Some patients prefer very light sedation, so they can watch the procedure on the monitor and ask questions. Others prefer to be much sleepier, and it is also possible to arrange to have an anaesthetist give very strong sedation so that you will be completely asleep and unaware of anything. We can talk about what you like before the test.</span></p><p><span style=\"font-weight: 400;\">There are many different techniques that as the endoscopist, I can use to make the procedure both as safe and as painless as possible.</span></p><p>How long does it take:</p><p><span style=\"font-weight: 400;\">This is variable depending on the indication for the test, the length and how bendy your bowel is and what is found. It ranges from 20 minutes to one hour, but on average may take 30 minutes.&nbsp;</span></p><p>What happens afterwards?</p><p><span style=\"font-weight: 400;\">You will be able to eat and drink as the sedation wears off, and should feel back to normal in 30-60 minutes. I will come to see you to discuss the findings and any follow-up that may be required. We will provide you with everything written down and colour photographs of the inside of the bowel.</span></p><p><span style=\"font-weight: 400;\">More information:</span></p><p><span style=\"font-weight: 400;\">Colonoscopy bowel preparation</span></p><p><span style=\"font-weight: 400;\">Gastroscopy - what to expect</span></p><p>&nbsp;</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(51, 7, 7, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-05 07:31:25', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'patient-information', 'Patient Information', NULL, '<ol>\n<li style=\"font-weight: 400;\" aria-level=\"1\">What:</li>\n</ol><p><span style=\"font-weight: 400;\">This is a procedure where a long, flexible, thin (13mm diameter) camera is passed through the anus to examine the whole large intestine and a short portion of the small intestine. This is on average 1.5 metres long.</span></p><p><span style=\"font-weight: 400;\">&nbsp;</span></p><p>Why:[image src=\"/assets/abe6830cf5/colonoscopy_polyps.jpg\" id=\"5\" width=\"480\" height=\"360\" class=\"leftAlone ss-htmleditorfield-file image\" title=\"colonoscopy polyps\"]</p><p><span style=\"font-weight: 400;\">There are lots of different reasons why you may want to have or have been suggested to have a colonoscopy.</span></p><p><span style=\"font-weight: 400;\">This may include (see other patient information sheets)</span></p><ul>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">As part of a health check-up to screen for cancer or pre-cancerous polyps</span>\n<ul>\n<li style=\"font-weight: 400;\" aria-level=\"2\"><span style=\"font-weight: 400;\">Screening colonoscopy may reduce the incidence of colorectal cancer by nearly 90%</span></li>\n</ul>\n</li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Concern about family history of cancer or polyps</span>\n<ul>\n<li style=\"font-weight: 400;\" aria-level=\"2\"><span style=\"font-weight: 400;\">If a 1st degree relative has had colorectal cancer, your risk is increased by over 2 times. If you have had two or more first degree relatives with colorectal cancer, that risk is nearly four times!</span></li>\n</ul>\n</li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Bleeding from the bottom</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Abdominal pain</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Change in bowel habits, with constipation, diarrhoea or both!</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Unintentional weight loss</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Abnormal blood tests or scans that you have had performed</span></li>\n</ul><p>How:</p><p><span style=\"font-weight: 400;\">I hold the camera and with my left hand, move wheels which move and steer the tip of the camera through the bowel, which often has many twists and turns.</span></p><p>Does it hurt?</p><p><span style=\"font-weight: 400;\">You will have an intravenous luer inserted into our arm, and sedative medication given to make the colonoscopy more comfortable. Some people prefer to use none, although this is not common. Some patients prefer very light sedation, so they can watch the procedure on the monitor and ask questions. Others prefer to be much sleepier, and it is also possible to arrange to have an anaesthetist give very strong sedation so that you will be completely asleep and unaware of anything. We can talk about what you like before the test.</span></p><p><span style=\"font-weight: 400;\">There are many different techniques that as the endoscopist, I can use to make the procedure both as safe and as painless as possible.</span></p><p>How long does it take:</p><p><span style=\"font-weight: 400;\">This is variable depending on the indication for the test, the length and how bendy your bowel is and what is found. It ranges from 20 minutes to one hour, but on average may take 30 minutes.&nbsp;</span></p><p>What happens afterwards?</p><p><span style=\"font-weight: 400;\">You will be able to eat and drink as the sedation wears off, and should feel back to normal in 30-60 minutes. I will come to see you to discuss the findings and any follow-up that may be required. We will provide you with everything written down and colour photographs of the inside of the bowel.</span></p><p><span style=\"font-weight: 400;\">More information:</span></p><p><span style=\"font-weight: 400;\">Colonoscopy bowel preparation</span></p><p><span style=\"font-weight: 400;\">Gastroscopy - what to expect</span></p><p>&nbsp;</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(52, 7, 8, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-05 07:33:13', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'patient-information', 'Patient Information', NULL, '<ol>\n<li style=\"font-weight: 400;\" aria-level=\"1\">What:</li>\n</ol><p><span style=\"font-weight: 400;\">This is a procedure where a long, flexible, thin (13mm diameter) camera is passed through the anus to examine the whole large intestine and a short portion of the small intestine. This is on average 1.5 metres long.</span></p><p><span style=\"font-weight: 400;\">&nbsp;</span></p><p>Why:</p><p><span style=\"font-weight: 400;\">There are lots of different reasons why you may want to have or have been suggested to have a colonoscopy.</span></p><p><span style=\"font-weight: 400;\">This may include (see other patient information sheets)</span></p><ul>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">As part of a health check-up to screen for cancer or pre-cancerous polyps</span>\n<ul>\n<li style=\"font-weight: 400;\" aria-level=\"2\"><span style=\"font-weight: 400;\">Screening colonoscopy may reduce the incidence of colorectal cancer by nearly 90%</span></li>\n</ul>\n</li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Concern about family history of cancer or polyps</span>\n<ul>\n<li style=\"font-weight: 400;\" aria-level=\"2\"><span style=\"font-weight: 400;\">If a 1st degree relative has had colorectal cancer, your risk is increased by over 2 times. If you have had two or more first degree relatives with colorectal cancer, that risk is nearly four times!</span></li>\n</ul>\n</li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Bleeding from the bottom</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Abdominal pain</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Change in bowel habits, with constipation, diarrhoea or both!</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Unintentional weight loss</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Abnormal blood tests or scans that you have had performed</span></li>\n</ul><p>How:</p><p><span style=\"font-weight: 400;\">I hold the camera and with my left hand, move wheels which move and steer the tip of the camera through the bowel, which often has many twists and turns.</span></p><p>Does it hurt?</p><p><span style=\"font-weight: 400;\">You will have an intravenous luer inserted into our arm, and sedative medication given to make the colonoscopy more comfortable. Some people prefer to use none, although this is not common. Some patients prefer very light sedation, so they can watch the procedure on the monitor and ask questions. Others prefer to be much sleepier, and it is also possible to arrange to have an anaesthetist give very strong sedation so that you will be completely asleep and unaware of anything. We can talk about what you like before the test.</span></p><p><span style=\"font-weight: 400;\">There are many different techniques that as the endoscopist, I can use to make the procedure both as safe and as painless as possible.</span></p><p>How long does it take:</p><p><span style=\"font-weight: 400;\">This is variable depending on the indication for the test, the length and how bendy your bowel is and what is found. It ranges from 20 minutes to one hour, but on average may take 30 minutes.&nbsp;</span></p><p>What happens afterwards?</p><p><span style=\"font-weight: 400;\">You will be able to eat and drink as the sedation wears off, and should feel back to normal in 30-60 minutes. I will come to see you to discuss the findings and any follow-up that may be required. We will provide you with everything written down and colour photographs of the inside of the bowel.</span></p><p><span style=\"font-weight: 400;\">More information:</span></p><p><span style=\"font-weight: 400;\">Colonoscopy bowel preparation</span></p><p><span style=\"font-weight: 400;\">Gastroscopy - what to expect</span></p><p>&nbsp;</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(53, 7, 9, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-05 07:33:14', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'patient-information', 'Patient Information', NULL, '<ol>\n<li style=\"font-weight: 400;\" aria-level=\"1\">What:</li>\n</ol><p><span style=\"font-weight: 400;\">This is a procedure where a long, flexible, thin (13mm diameter) camera is passed through the anus to examine the whole large intestine and a short portion of the small intestine. This is on average 1.5 metres long.</span></p><p><span style=\"font-weight: 400;\">&nbsp;</span></p><p>Why:</p><p><span style=\"font-weight: 400;\">There are lots of different reasons why you may want to have or have been suggested to have a colonoscopy.</span></p><p><span style=\"font-weight: 400;\">This may include (see other patient information sheets)</span></p><ul>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">As part of a health check-up to screen for cancer or pre-cancerous polyps</span>\n<ul>\n<li style=\"font-weight: 400;\" aria-level=\"2\"><span style=\"font-weight: 400;\">Screening colonoscopy may reduce the incidence of colorectal cancer by nearly 90%</span></li>\n</ul>\n</li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Concern about family history of cancer or polyps</span>\n<ul>\n<li style=\"font-weight: 400;\" aria-level=\"2\"><span style=\"font-weight: 400;\">If a 1st degree relative has had colorectal cancer, your risk is increased by over 2 times. If you have had two or more first degree relatives with colorectal cancer, that risk is nearly four times!</span></li>\n</ul>\n</li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Bleeding from the bottom</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Abdominal pain</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Change in bowel habits, with constipation, diarrhoea or both!</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Unintentional weight loss</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Abnormal blood tests or scans that you have had performed</span></li>\n</ul><p>How:</p><p><span style=\"font-weight: 400;\">I hold the camera and with my left hand, move wheels which move and steer the tip of the camera through the bowel, which often has many twists and turns.</span></p><p>Does it hurt?</p><p><span style=\"font-weight: 400;\">You will have an intravenous luer inserted into our arm, and sedative medication given to make the colonoscopy more comfortable. Some people prefer to use none, although this is not common. Some patients prefer very light sedation, so they can watch the procedure on the monitor and ask questions. Others prefer to be much sleepier, and it is also possible to arrange to have an anaesthetist give very strong sedation so that you will be completely asleep and unaware of anything. We can talk about what you like before the test.</span></p><p><span style=\"font-weight: 400;\">There are many different techniques that as the endoscopist, I can use to make the procedure both as safe and as painless as possible.</span></p><p>How long does it take:</p><p><span style=\"font-weight: 400;\">This is variable depending on the indication for the test, the length and how bendy your bowel is and what is found. It ranges from 20 minutes to one hour, but on average may take 30 minutes.&nbsp;</span></p><p>What happens afterwards?</p><p><span style=\"font-weight: 400;\">You will be able to eat and drink as the sedation wears off, and should feel back to normal in 30-60 minutes. I will come to see you to discuss the findings and any follow-up that may be required. We will provide you with everything written down and colour photographs of the inside of the bowel.</span></p><p><span style=\"font-weight: 400;\">More information:</span></p><p><span style=\"font-weight: 400;\">Colonoscopy bowel preparation</span></p><p><span style=\"font-weight: 400;\">Gastroscopy - what to expect</span></p><p>&nbsp;</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(54, 7, 10, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-05 07:33:43', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'patient-information', 'Patient Information', NULL, '<ol>\n<li style=\"font-weight: 400;\" aria-level=\"1\">What:</li>\n</ol><p><span style=\"font-weight: 400;\">This is a procedure where a long, flexible, thin (13mm diameter) camera is passed through the anus to examine the whole large intestine and a short portion of the small intestine. This is on average 1.5 metres long.</span></p><p><span style=\"font-weight: 400;\">&nbsp;[image src=\"/assets/colonoscopy_polyps.jpg\" id=\"5\" width=\"480\" height=\"360\" class=\"leftAlone ss-htmleditorfield-file image\" title=\"colonoscopy polyps\"]</span></p><p>Why:</p><p><span style=\"font-weight: 400;\">There are lots of different reasons why you may want to have or have been suggested to have a colonoscopy.</span></p><p><span style=\"font-weight: 400;\">This may include (see other patient information sheets)</span></p><ul>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">As part of a health check-up to screen for cancer or pre-cancerous polyps</span>\n<ul>\n<li style=\"font-weight: 400;\" aria-level=\"2\"><span style=\"font-weight: 400;\">Screening colonoscopy may reduce the incidence of colorectal cancer by nearly 90%</span></li>\n</ul>\n</li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Concern about family history of cancer or polyps</span>\n<ul>\n<li style=\"font-weight: 400;\" aria-level=\"2\"><span style=\"font-weight: 400;\">If a 1st degree relative has had colorectal cancer, your risk is increased by over 2 times. If you have had two or more first degree relatives with colorectal cancer, that risk is nearly four times!</span></li>\n</ul>\n</li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Bleeding from the bottom</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Abdominal pain</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Change in bowel habits, with constipation, diarrhoea or both!</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Unintentional weight loss</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Abnormal blood tests or scans that you have had performed</span></li>\n</ul><p>How:</p><p><span style=\"font-weight: 400;\">I hold the camera and with my left hand, move wheels which move and steer the tip of the camera through the bowel, which often has many twists and turns.</span></p><p>Does it hurt?</p><p><span style=\"font-weight: 400;\">You will have an intravenous luer inserted into our arm, and sedative medication given to make the colonoscopy more comfortable. Some people prefer to use none, although this is not common. Some patients prefer very light sedation, so they can watch the procedure on the monitor and ask questions. Others prefer to be much sleepier, and it is also possible to arrange to have an anaesthetist give very strong sedation so that you will be completely asleep and unaware of anything. We can talk about what you like before the test.</span></p><p><span style=\"font-weight: 400;\">There are many different techniques that as the endoscopist, I can use to make the procedure both as safe and as painless as possible.</span></p><p>How long does it take:</p><p><span style=\"font-weight: 400;\">This is variable depending on the indication for the test, the length and how bendy your bowel is and what is found. It ranges from 20 minutes to one hour, but on average may take 30 minutes.&nbsp;</span></p><p>What happens afterwards?</p><p><span style=\"font-weight: 400;\">You will be able to eat and drink as the sedation wears off, and should feel back to normal in 30-60 minutes. I will come to see you to discuss the findings and any follow-up that may be required. We will provide you with everything written down and colour photographs of the inside of the bowel.</span></p><p><span style=\"font-weight: 400;\">More information:</span></p><p><span style=\"font-weight: 400;\">Colonoscopy bowel preparation</span></p><p><span style=\"font-weight: 400;\">Gastroscopy - what to expect</span></p><p>&nbsp;</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0);
INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Priority`, `CanViewType`, `CanEditType`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(55, 7, 11, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-05 07:33:44', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'patient-information', 'Patient Information', NULL, '<ol>\n<li style=\"font-weight: 400;\" aria-level=\"1\">What:</li>\n</ol><p><span style=\"font-weight: 400;\">This is a procedure where a long, flexible, thin (13mm diameter) camera is passed through the anus to examine the whole large intestine and a short portion of the small intestine. This is on average 1.5 metres long.</span></p><p><span style=\"font-weight: 400;\">&nbsp;[image src=\"/assets/colonoscopy_polyps.jpg\" id=\"5\" width=\"480\" height=\"360\" class=\"leftAlone ss-htmleditorfield-file image\" title=\"colonoscopy polyps\"]</span></p><p>Why:</p><p><span style=\"font-weight: 400;\">There are lots of different reasons why you may want to have or have been suggested to have a colonoscopy.</span></p><p><span style=\"font-weight: 400;\">This may include (see other patient information sheets)</span></p><ul>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">As part of a health check-up to screen for cancer or pre-cancerous polyps</span>\n<ul>\n<li style=\"font-weight: 400;\" aria-level=\"2\"><span style=\"font-weight: 400;\">Screening colonoscopy may reduce the incidence of colorectal cancer by nearly 90%</span></li>\n</ul>\n</li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Concern about family history of cancer or polyps</span>\n<ul>\n<li style=\"font-weight: 400;\" aria-level=\"2\"><span style=\"font-weight: 400;\">If a 1st degree relative has had colorectal cancer, your risk is increased by over 2 times. If you have had two or more first degree relatives with colorectal cancer, that risk is nearly four times!</span></li>\n</ul>\n</li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Bleeding from the bottom</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Abdominal pain</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Change in bowel habits, with constipation, diarrhoea or both!</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Unintentional weight loss</span></li>\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Abnormal blood tests or scans that you have had performed</span></li>\n</ul><p>How:</p><p><span style=\"font-weight: 400;\">I hold the camera and with my left hand, move wheels which move and steer the tip of the camera through the bowel, which often has many twists and turns.</span></p><p>Does it hurt?</p><p><span style=\"font-weight: 400;\">You will have an intravenous luer inserted into our arm, and sedative medication given to make the colonoscopy more comfortable. Some people prefer to use none, although this is not common. Some patients prefer very light sedation, so they can watch the procedure on the monitor and ask questions. Others prefer to be much sleepier, and it is also possible to arrange to have an anaesthetist give very strong sedation so that you will be completely asleep and unaware of anything. We can talk about what you like before the test.</span></p><p><span style=\"font-weight: 400;\">There are many different techniques that as the endoscopist, I can use to make the procedure both as safe and as painless as possible.</span></p><p>How long does it take:</p><p><span style=\"font-weight: 400;\">This is variable depending on the indication for the test, the length and how bendy your bowel is and what is found. It ranges from 20 minutes to one hour, but on average may take 30 minutes.&nbsp;</span></p><p>What happens afterwards?</p><p><span style=\"font-weight: 400;\">You will be able to eat and drink as the sedation wears off, and should feel back to normal in 30-60 minutes. I will come to see you to discuss the findings and any follow-up that may be required. We will provide you with everything written down and colour photographs of the inside of the bowel.</span></p><p><span style=\"font-weight: 400;\">More information:</span></p><p><span style=\"font-weight: 400;\">Colonoscopy bowel preparation</span></p><p><span style=\"font-weight: 400;\">Gastroscopy - what to expect</span></p><p>&nbsp;</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(56, 7, 12, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-05 07:34:31', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'patient-information', 'Patient Information', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(57, 7, 13, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInformationPage', '2021-01-05 07:34:31', '2021-01-02 01:13:14', NULL, 'Inherit', 'Inherit', 'patient-information', 'Patient Information', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(58, 8, 4, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-05 07:34:43', '2021-01-02 01:13:19', NULL, 'Inherit', 'Inherit', 'colonoscopy', 'Colonoscopy', NULL, '<ol>\n<li aria-level=\"1\">What:</li>\n</ol><p><span>This is a procedure where a long, flexible, thin (13mm diameter) camera is passed through the anus to examine the whole large intestine and a short portion of the small intestine. This is on average 1.5 metres long.</span></p><p><span>&nbsp;[image src=\"/assets/colonoscopy_polyps.jpg\" id=\"5\" width=\"480\" height=\"360\" class=\"leftAlone ss-htmleditorfield-file image\" title=\"colonoscopy polyps\"]</span></p><p>Why:</p><p><span>There are lots of different reasons why you may want to have or have been suggested to have a colonoscopy.</span></p><p><span>This may include (see other patient information sheets)</span></p><ul>\n<li aria-level=\"1\"><span>As part of a health check-up to screen for cancer or pre-cancerous polyps</span>\n<ul>\n<li aria-level=\"2\"><span>Screening colonoscopy may reduce the incidence of colorectal cancer by nearly 90%</span></li>\n</ul>\n</li>\n<li aria-level=\"1\"><span>Concern about family history of cancer or polyps</span>\n<ul>\n<li aria-level=\"2\"><span>If a 1st degree relative has had colorectal cancer, your risk is increased by over 2 times. If you have had two or more first degree relatives with colorectal cancer, that risk is nearly four times!</span></li>\n</ul>\n</li>\n<li aria-level=\"1\"><span>Bleeding from the bottom</span></li>\n<li aria-level=\"1\"><span>Abdominal pain</span></li>\n<li aria-level=\"1\"><span>Change in bowel habits, with constipation, diarrhoea or both!</span></li>\n<li aria-level=\"1\"><span>Unintentional weight loss</span></li>\n<li aria-level=\"1\"><span>Abnormal blood tests or scans that you have had performed</span></li>\n</ul><p>How:</p><p><span>I hold the camera and with my left hand, move wheels which move and steer the tip of the camera through the bowel, which often has many twists and turns.</span></p><p>Does it hurt?</p><p><span>You will have an intravenous luer inserted into our arm, and sedative medication given to make the colonoscopy more comfortable. Some people prefer to use none, although this is not common. Some patients prefer very light sedation, so they can watch the procedure on the monitor and ask questions. Others prefer to be much sleepier, and it is also possible to arrange to have an anaesthetist give very strong sedation so that you will be completely asleep and unaware of anything. We can talk about what you like before the test.</span></p><p><span>There are many different techniques that as the endoscopist, I can use to make the procedure both as safe and as painless as possible.</span></p><p>How long does it take:</p><p><span>This is variable depending on the indication for the test, the length and how bendy your bowel is and what is found. It ranges from 20 minutes to one hour, but on average may take 30 minutes.&nbsp;</span></p><p>What happens afterwards?</p><p><span>You will be able to eat and drink as the sedation wears off, and should feel back to normal in 30-60 minutes. I will come to see you to discuss the findings and any follow-up that may be required. We will provide you with everything written down and colour photographs of the inside of the bowel.</span></p><p><span>More information:</span></p><p><span>Colonoscopy bowel preparation</span></p><p><span>Gastroscopy - what to expect</span></p><p>&nbsp;</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 7),
(59, 8, 5, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-05 07:34:44', '2021-01-02 01:13:19', NULL, 'Inherit', 'Inherit', 'colonoscopy', 'Colonoscopy', NULL, '<ol>\n<li aria-level=\"1\">What:</li>\n</ol><p><span>This is a procedure where a long, flexible, thin (13mm diameter) camera is passed through the anus to examine the whole large intestine and a short portion of the small intestine. This is on average 1.5 metres long.</span></p><p><span>&nbsp;[image src=\"/assets/colonoscopy_polyps.jpg\" id=\"5\" width=\"480\" height=\"360\" class=\"leftAlone ss-htmleditorfield-file image\" title=\"colonoscopy polyps\"]</span></p><p>Why:</p><p><span>There are lots of different reasons why you may want to have or have been suggested to have a colonoscopy.</span></p><p><span>This may include (see other patient information sheets)</span></p><ul>\n<li aria-level=\"1\"><span>As part of a health check-up to screen for cancer or pre-cancerous polyps</span>\n<ul>\n<li aria-level=\"2\"><span>Screening colonoscopy may reduce the incidence of colorectal cancer by nearly 90%</span></li>\n</ul>\n</li>\n<li aria-level=\"1\"><span>Concern about family history of cancer or polyps</span>\n<ul>\n<li aria-level=\"2\"><span>If a 1st degree relative has had colorectal cancer, your risk is increased by over 2 times. If you have had two or more first degree relatives with colorectal cancer, that risk is nearly four times!</span></li>\n</ul>\n</li>\n<li aria-level=\"1\"><span>Bleeding from the bottom</span></li>\n<li aria-level=\"1\"><span>Abdominal pain</span></li>\n<li aria-level=\"1\"><span>Change in bowel habits, with constipation, diarrhoea or both!</span></li>\n<li aria-level=\"1\"><span>Unintentional weight loss</span></li>\n<li aria-level=\"1\"><span>Abnormal blood tests or scans that you have had performed</span></li>\n</ul><p>How:</p><p><span>I hold the camera and with my left hand, move wheels which move and steer the tip of the camera through the bowel, which often has many twists and turns.</span></p><p>Does it hurt?</p><p><span>You will have an intravenous luer inserted into our arm, and sedative medication given to make the colonoscopy more comfortable. Some people prefer to use none, although this is not common. Some patients prefer very light sedation, so they can watch the procedure on the monitor and ask questions. Others prefer to be much sleepier, and it is also possible to arrange to have an anaesthetist give very strong sedation so that you will be completely asleep and unaware of anything. We can talk about what you like before the test.</span></p><p><span>There are many different techniques that as the endoscopist, I can use to make the procedure both as safe and as painless as possible.</span></p><p>How long does it take:</p><p><span>This is variable depending on the indication for the test, the length and how bendy your bowel is and what is found. It ranges from 20 minutes to one hour, but on average may take 30 minutes.&nbsp;</span></p><p>What happens afterwards?</p><p><span>You will be able to eat and drink as the sedation wears off, and should feel back to normal in 30-60 minutes. I will come to see you to discuss the findings and any follow-up that may be required. We will provide you with everything written down and colour photographs of the inside of the bowel.</span></p><p><span>More information:</span></p><p><span>Colonoscopy bowel preparation</span></p><p><span>Gastroscopy - what to expect</span></p><p>&nbsp;</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 7),
(60, 3, 17, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\ContactPage', '2021-01-15 22:46:24', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-me', 'Contact Me', NULL, '<h4>3 ways to get in touch</h4><p>1. ) Message me directly to arrange an appointment&nbsp;<a class=\"btn btn-success\" href=\"https://www.csgastro.co.nz/contact-me/\">Get Consult</a></p><p>2. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Referral through GP - Attention Dr. Cameron Schauer</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(61, 3, 18, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\ContactPage', '2021-01-15 22:46:24', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-me', 'Contact Me', NULL, '<h4>3 ways to get in touch</h4><p>1. ) Message me directly to arrange an appointment&nbsp;<a class=\"btn btn-success\" href=\"https://www.csgastro.co.nz/contact-me/\">Get Consult</a></p><p>2. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Referral through GP - Attention Dr. Cameron Schauer</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(62, 2, 5, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\AboutPage', '2021-01-15 22:46:33', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'about-me', 'About Me', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(63, 2, 6, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\AboutPage', '2021-01-15 22:46:33', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'about-me', 'About Me', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(64, 1, 15, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\HomePage', '2021-01-15 22:47:47', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(65, 1, 16, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\HomePage', '2021-01-15 22:47:47', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(66, 1, 17, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\HomePage', '2021-01-15 22:52:01', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(67, 1, 18, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\HomePage', '2021-01-15 22:52:01', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(68, 3, 19, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\ContactPage', '2021-01-15 23:31:24', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-me', 'Contact Me', NULL, '<h4>3 ways to get in touch</h4><p>1. ) Message me directly to arrange an appointment&nbsp;<a class=\"btn btn-success\" href=\"https://www.csgastro.co.nz/contact-me/\">Get Consult</a></p><p>2. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Referral through GP - Attention Dr. Cameron Schauer</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(69, 3, 20, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\ContactPage', '2021-01-15 23:31:24', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-me', 'Contact Me', NULL, '<h4>3 ways to get in touch</h4><p>1. ) Message me directly to arrange an appointment&nbsp;<a class=\"btn btn-success\" href=\"https://www.csgastro.co.nz/contact-me/\">Get Consult</a></p><p>2. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Referral through GP - Attention Dr. Cameron Schauer</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(70, 3, 21, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\ContactPage', '2021-01-16 02:24:23', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-me', 'Contact Me', NULL, '<h4>3 ways to get in touch</h4><p>1. ) Message me directly to arrange an appointment&nbsp;<a class=\"btn btn-success\" href=\"https://www.csgastro.co.nz/contact-me/\">Get Consult</a></p><p>2. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Referral through GP - Attention Dr. Cameron Schauer</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(71, 3, 22, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\ContactPage', '2021-01-16 02:24:24', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-me', 'Contact Me', NULL, '<h4>3 ways to get in touch</h4><p>1. ) Message me directly to arrange an appointment&nbsp;<a class=\"btn btn-success\" href=\"https://www.csgastro.co.nz/contact-me/\">Get Consult</a></p><p>2. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Referral through GP - Attention Dr. Cameron Schauer</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(72, 3, 23, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\ContactPage', '2021-01-16 02:25:07', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-me', 'Contact Me', NULL, '<h4>3 ways to get in touch</h4><p>1. ) Message me directly to arrange an appointment&nbsp;<a class=\"btn btn-success\" href=\"https://www.csgastro.co.nz/contact-me/\">Get Consult</a></p><p>2. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Referral through GP - Attention Dr. Cameron Schauer</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(73, 3, 24, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\ContactPage', '2021-01-16 02:25:08', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-me', 'Contact Me', NULL, '<h4>3 ways to get in touch</h4><p>1. ) Message me directly to arrange an appointment&nbsp;<a class=\"btn btn-success\" href=\"https://www.csgastro.co.nz/contact-me/\">Get Consult</a></p><p>2. ) Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul><p>3. ) Referral through GP - Attention Dr. Cameron Schauer</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li>Your Name</li>\n<li>Date of Birth</li>\n<li>Phone</li>\n<li>Name of your GP</li>\n<li>Name of Medical Centre</li>\n<li>Question or Concern</li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(74, 3, 25, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\ContactPage', '2021-01-16 02:37:46', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-me', 'Contact Me', NULL, '<h4>3 ways to get in touch:</h4><p>1. Referral through GP - Attention Dr. Cameron Schauer</p><p>2. Message me directly to arrange (form on left)</p><p>3. Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(75, 3, 26, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\ContactPage', '2021-01-16 02:37:47', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'contact-me', 'Contact Me', NULL, '<h4>3 ways to get in touch:</h4><p>1. Referral through GP - Attention Dr. Cameron Schauer</p><p>2. Message me directly to arrange (form on left)</p><p>3. Direct booking for:</p><ul class=\"list-unstyled\" style=\"padding-left: 5%;\">\n<li><strong>A procedure (gastroscopy, colonoscopy) </strong>- Attention Dr. Cameron Schauer<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 925 4449, Fax (09) 925 4450<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">admin@waitemataendoscopy.co.nz<br></a></li>\n<li><strong>A clinic</strong>:<br>Phone<strong>:</strong><span>&nbsp;</span>(09) 920 6746, Fax (09) 486 1268<br>Email<strong>:</strong><span>&nbsp;</span><a href=\"mailto:mail@example.com\">gastro@wsurg.co.nz</a></li>\n</ul>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(76, 1, 19, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\HomePage', '2021-01-16 03:11:15', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>I am a Gastroenterologist and General Physician, aiming to provide the best all-round care for my patients. This site is designed to be patient focused – a collection of information that is written by me - for you. This site is based on the premise that the more you know and understand, the more likely we will be able to successfully treat your condition.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(77, 1, 20, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\HomePage', '2021-01-16 03:11:15', '2021-01-01 23:27:10', NULL, 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>I am a Gastroenterologist and General Physician, aiming to provide the best all-round care for my patients. This site is designed to be patient focused – a collection of information that is written by me - for you. This site is based on the premise that the more you know and understand, the more likely we will be able to successfully treat your condition.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(78, 9, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:02:07', '2021-01-16 23:02:07', NULL, 'Inherit', 'Inherit', 'new-patient-info-details-page', 'New Patient Info Details Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 7),
(79, 9, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:05:32', '2021-01-16 23:02:07', NULL, 'Inherit', 'Inherit', 'bowel-screening', 'Bowel Screening', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 7),
(80, 9, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:05:32', '2021-01-16 23:02:07', NULL, 'Inherit', 'Inherit', 'bowel-screening', 'Bowel Screening', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 7),
(81, 10, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:05:43', '2021-01-16 23:05:43', NULL, 'Inherit', 'Inherit', 'new-patient-info-details-page', 'New Patient Info Details Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 7),
(82, 10, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:07:49', '2021-01-16 23:05:43', NULL, 'Inherit', 'Inherit', 'gut-microbiome', 'Gut Microbiome', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 7),
(83, 10, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:07:49', '2021-01-16 23:05:43', NULL, 'Inherit', 'Inherit', 'gut-microbiome', 'Gut Microbiome', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 7),
(84, 10, 4, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:08:16', '2021-01-16 23:05:43', NULL, 'Inherit', 'Inherit', 'gut-microbiome', 'Gut Microbiome', NULL, '<p><strong>Introduction</strong></p><p>The bacteria in your gut may be more important than you think. They are so important they are almost considered to be another organ system. There are over 1000 different kinds of bacteria weighing 2kg sitting in your gut which started developing from birth. This whole community of bugs are mostly unique to your body. Think of it as your other fingerprint. Even within specific segments, from the stomach to the intestines, individual colonies of bacteria exist for certain functions. Researchers in science and medicine are just beginning to understand how this can impact everything from your weight to your mood, blood pressure, diabetes and even how you fight infections.&nbsp; This invisible community even influences the nutritional value of food you eat. So how does this happen and what can you do to get things working in your favour?</p><p><strong>Effects on the body:</strong></p><p><strong>Metabolism:</strong></p><p>Gut bacteria produce vitamins important for bodily function.&nbsp; For example they make the majority of Vitamin K which is required for the clotting function of the blood. They also help to form important amino acids which are the building blocks of larger proteins and help process carbohydrates. In doing so they help to transform food into energy and nutrients for growth. In this way, they also may influence your ability to both put on but also lose weight.</p><p><strong>Immune system.</strong></p><p>The ‘good’ intestinal bacteria work to limit the effects of the ‘bad’ bacteria which attempt to cause illness and disease. They directly compete, fighting for nutrients and space in the lining of the gut. They release substances which work directly to harm and prevent overgrowth of the bad bacteria. <em>Dysbiosis</em> is the term used to describe when the bad bacteria overgrow, causing a wide variety of symptoms including bloating, abdominal pain, diarrhoea and malabsorption. Bacteria also provide an early warning signaling system to prepare parts of the immune system to fight disease when infections pass through the gut.</p><p><strong>Allergy</strong></p><p>How you respond to certain foods and the hayfever you may get in Summer can also be explained by these bacteria. Scientists have compared bacteria between children who have allergies and those who don’t seem to develop problems. It is thought that certain bacteria have the ability to train the immune system to react but also importantly ignore things it shouldn’t fight – such as peanuts, grass pollens and cat hair.</p><p><strong><u>Mental Health:</u></strong></p><p>We have all used our ‘gut instinct’, or had ‘butterflies in the tummy’. When was the last time you were ‘sick to your stomach’?</p><p>It seems people have always known there was some link between mental health and the gut. Medically, it seems this was considered even in the 1900’s when patients with depression where sometimes treated with colonic purges or bowel operations in an attempt to remove toxins.</p><p><strong>The Gut-Brain Axis</strong></p><p>It is now known that there is a two-way communication system between the brain and the gut. This influences everything from memory, learning and your reactions to stress. The vagus nerve was identified as one of the direct connections, and perhaps helps to explain those butterflies as your brain passes on emotions to the stomach.</p><p>Researchers have found that chemicals such as serotonin and dopamine, long manipulated by medicines used to treat mental illness, depression and anxiety are linked to the gut. GABA, which is a chemical used to calm the central nervous system is also produced by Lactobacillus rhamnosus, a bacteria used in the fermentation process of some yoghurts. Other strains of this bacteria trigger receptors in the intestine which effect pain perception, in a manner similar to morphine.</p><p>It may also be surprising to you that 50% of irritable bowel syndrome (IBS) patients also meet criteria for mood disorders. Scientists have shown in animals that 2 hours of stress was enough to change the makeup of the gut flora. So it seems that to treat this common problem it is not enough to focus only on the gut, but the mind.</p><p><strong>So what can you practically do?</strong></p><p>Certainly some of what is already in your gut depends on genetic factors. However changing gut flora to our advantage has been shown to be helpful both in animals and humans.</p><p>3 ways which we can alter the bacteria are though the administration of antibiotics (this can harm the bacteria), prebiotics (foods that promote the growth of beneficial bacteria) and probiotics (beneficial bacteria). Some scientists believe that we might eventually be using good gut bacteria in the same way we currently use anti-anxiety and anti-depression medication.&nbsp;In an experiment where gut bacteria from anxious mice where moved to fearless mice, the personality changed and the mice became more sociable. Another study found that ladies who regularly consumed beneficial bacteria through yogurt showed altered brain function, both while non-stressed but also during stressful tasks.&nbsp;</p><p>&nbsp;<strong>Diet</strong></p><p>A healthy diet can help promote the ‘good’ bacterial growth. &nbsp;We know people with high vegetable, high fibre diets have significantly different bacterial profiles than those with high fat and sugar diets. Fermentable foods such miso and sauerkraut increase the level of fermenting bacteria. Non-fermentable fibres such as brown rice, beans, lentils and grains then feed the good bacteria.&nbsp;</p><p>Having a varied diet and mixing foods can be helpful, as the broader the range of bacteria you have, the more benefit can be gained. In 3 month old infants we know that the less diverse their gut bacteria, the more likely they are to be sensitized to eggs milk and peanuts. As you become older, exercise has also been shown to enable bacteria to expand.</p><p>Naturally occurring probiotics are contained in food such as yoghurt, kimchi, pickles and kombucha. Probiotics labeled on yogurt are referred to as ‘ABC’ which stands for (Lactobacillus) Acidophilus, Bifidobacterium and (Lactobacillus) Casei. You should choose yoghurts with the most probiotics per serve, aiming for over one billion, sometimes labeled as 1x10<sup>9</sup> cfu/g. Probiotic supplements have also been shown to be beneficial in some circumstances and more work is being done to measure their effect.</p><p>So go healthy, but also smart with the foods you eat to enable the good bacteria to flourish and feed the rest of your body and mind. You may be surprised with the results.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 7),
(85, 10, 5, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:08:16', '2021-01-16 23:05:43', NULL, 'Inherit', 'Inherit', 'gut-microbiome', 'Gut Microbiome', NULL, '<p><strong>Introduction</strong></p><p>The bacteria in your gut may be more important than you think. They are so important they are almost considered to be another organ system. There are over 1000 different kinds of bacteria weighing 2kg sitting in your gut which started developing from birth. This whole community of bugs are mostly unique to your body. Think of it as your other fingerprint. Even within specific segments, from the stomach to the intestines, individual colonies of bacteria exist for certain functions. Researchers in science and medicine are just beginning to understand how this can impact everything from your weight to your mood, blood pressure, diabetes and even how you fight infections.&nbsp; This invisible community even influences the nutritional value of food you eat. So how does this happen and what can you do to get things working in your favour?</p><p><strong>Effects on the body:</strong></p><p><strong>Metabolism:</strong></p><p>Gut bacteria produce vitamins important for bodily function.&nbsp; For example they make the majority of Vitamin K which is required for the clotting function of the blood. They also help to form important amino acids which are the building blocks of larger proteins and help process carbohydrates. In doing so they help to transform food into energy and nutrients for growth. In this way, they also may influence your ability to both put on but also lose weight.</p><p><strong>Immune system.</strong></p><p>The ‘good’ intestinal bacteria work to limit the effects of the ‘bad’ bacteria which attempt to cause illness and disease. They directly compete, fighting for nutrients and space in the lining of the gut. They release substances which work directly to harm and prevent overgrowth of the bad bacteria. <em>Dysbiosis</em> is the term used to describe when the bad bacteria overgrow, causing a wide variety of symptoms including bloating, abdominal pain, diarrhoea and malabsorption. Bacteria also provide an early warning signaling system to prepare parts of the immune system to fight disease when infections pass through the gut.</p><p><strong>Allergy</strong></p><p>How you respond to certain foods and the hayfever you may get in Summer can also be explained by these bacteria. Scientists have compared bacteria between children who have allergies and those who don’t seem to develop problems. It is thought that certain bacteria have the ability to train the immune system to react but also importantly ignore things it shouldn’t fight – such as peanuts, grass pollens and cat hair.</p><p><strong><u>Mental Health:</u></strong></p><p>We have all used our ‘gut instinct’, or had ‘butterflies in the tummy’. When was the last time you were ‘sick to your stomach’?</p><p>It seems people have always known there was some link between mental health and the gut. Medically, it seems this was considered even in the 1900’s when patients with depression where sometimes treated with colonic purges or bowel operations in an attempt to remove toxins.</p><p><strong>The Gut-Brain Axis</strong></p><p>It is now known that there is a two-way communication system between the brain and the gut. This influences everything from memory, learning and your reactions to stress. The vagus nerve was identified as one of the direct connections, and perhaps helps to explain those butterflies as your brain passes on emotions to the stomach.</p><p>Researchers have found that chemicals such as serotonin and dopamine, long manipulated by medicines used to treat mental illness, depression and anxiety are linked to the gut. GABA, which is a chemical used to calm the central nervous system is also produced by Lactobacillus rhamnosus, a bacteria used in the fermentation process of some yoghurts. Other strains of this bacteria trigger receptors in the intestine which effect pain perception, in a manner similar to morphine.</p><p>It may also be surprising to you that 50% of irritable bowel syndrome (IBS) patients also meet criteria for mood disorders. Scientists have shown in animals that 2 hours of stress was enough to change the makeup of the gut flora. So it seems that to treat this common problem it is not enough to focus only on the gut, but the mind.</p><p><strong>So what can you practically do?</strong></p><p>Certainly some of what is already in your gut depends on genetic factors. However changing gut flora to our advantage has been shown to be helpful both in animals and humans.</p><p>3 ways which we can alter the bacteria are though the administration of antibiotics (this can harm the bacteria), prebiotics (foods that promote the growth of beneficial bacteria) and probiotics (beneficial bacteria). Some scientists believe that we might eventually be using good gut bacteria in the same way we currently use anti-anxiety and anti-depression medication.&nbsp;In an experiment where gut bacteria from anxious mice where moved to fearless mice, the personality changed and the mice became more sociable. Another study found that ladies who regularly consumed beneficial bacteria through yogurt showed altered brain function, both while non-stressed but also during stressful tasks.&nbsp;</p><p>&nbsp;<strong>Diet</strong></p><p>A healthy diet can help promote the ‘good’ bacterial growth. &nbsp;We know people with high vegetable, high fibre diets have significantly different bacterial profiles than those with high fat and sugar diets. Fermentable foods such miso and sauerkraut increase the level of fermenting bacteria. Non-fermentable fibres such as brown rice, beans, lentils and grains then feed the good bacteria.&nbsp;</p><p>Having a varied diet and mixing foods can be helpful, as the broader the range of bacteria you have, the more benefit can be gained. In 3 month old infants we know that the less diverse their gut bacteria, the more likely they are to be sensitized to eggs milk and peanuts. As you become older, exercise has also been shown to enable bacteria to expand.</p><p>Naturally occurring probiotics are contained in food such as yoghurt, kimchi, pickles and kombucha. Probiotics labeled on yogurt are referred to as ‘ABC’ which stands for (Lactobacillus) Acidophilus, Bifidobacterium and (Lactobacillus) Casei. You should choose yoghurts with the most probiotics per serve, aiming for over one billion, sometimes labeled as 1x10<sup>9</sup> cfu/g. Probiotic supplements have also been shown to be beneficial in some circumstances and more work is being done to measure their effect.</p><p>So go healthy, but also smart with the foods you eat to enable the good bacteria to flourish and feed the rest of your body and mind. You may be surprised with the results.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 7),
(86, 9, 4, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:16:27', '2021-01-16 23:02:07', NULL, 'Inherit', 'Inherit', 'bowel-screening', 'Bowel Screening', NULL, '<p><strong>What:</strong>&nbsp;</p><p>Participating in screening means that you have <strong>no </strong>symptoms. You have no bleeding. You have no abdominal pain, weight loss, change in bowel habit. You have no risk factors for colon cancer that would usually require a colonoscopy (i.e., strong family history of colon cancer, inflammatory bowel disease). If you have these issues, you should see your GP or get in touch for an appointment.</p><p><strong>Why:</strong></p><p>Each year between about 2500 and 3000 New Zealanders will be diagnosed with colorectal cancer and between 1100 and 1200 will die as a result of colorectal cancer. This represents both the second most common cancer diagnosed and cause of cancer death. Absolute rates continue to rise in the face of an aging and increasing population.</p><p>This is also a big problem world-wide. There are over one million new cases of colorectal cancer diagnosed world-wide each year and 600,000 deaths. In addition, NZ has the lowest percentage of surgically curable localised disease (28%) when compared with Australia (34%), America (40%) and the United Kingdom (42%). 20% of disease at diagnosis is metastatic (i.e., incurable and spread elsewhere in the body).</p><p>We know that most colorectal cancers develop from precancerous polyps. Polyps are like warty outgrowths that form in the lining of the colon. Removing these can help to remove the risk of developing colon cancer. Studies have shown that regular screening for and removal of polyps reduces your risk of developing colorectal cancer by up to 89% with colonoscopy. Similarly, if a cancer is found, it may be treated, hopefully at an earlier stage than it would have been found otherwise</p><p><iframe src=\"https://www.youtube.com/embed/0h568yv-YA8\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p><p>When polyps are small and growing, you will not have any symptoms. It is only when they grow very large that these may bleed, cause pain, or change your stool habit. This is why screening is important.</p><p>[image src=\"/assets/Screen-Shot-2021-01-09-at-08.42.14.png\" id=\"35\" width=\"504\" height=\"400\" class=\"leftAlone ss-htmleditorfield-file image\" title=\"Screen Shot 2021 01 09 at 08.42.14\"]</p><p class=\"p1\"><em>In Western societies, approximately 5% of the population will develop CRC in their lifetime and up to 2.5% will die of the disease</em></p><p><strong>How?</strong></p><p>The best test for screening is performing a colonoscopy, as this is a direct examination of the bowel. If you are between 60 and 74 and in a participating centre in New Zealand, you will be sent a stool test in the mail. This is checking for microscopic blood. If microscopic blood is present, you will be asked to have a colonoscopy.</p><p>&nbsp;</p><p>Ages to start screening is different in other countries:</p><ul>\n<li>Netherlands: 55</li>\n<li>Australia: 55</li>\n<li>Scotland: 50</li>\n<li>Japan: 40 years old.</li>\n</ul><p>Within New Zealand’s bowel screening programme, a positive result is triggered if the blood (haemoglobin (Hb)) found in a sample is over 200 nanograms of Hb in a millilitre of buffer. The bowel screening pilot found that for readings at this level, for every 100 people we know that approximately eight will have a cancer found in the first round of screening. For every 100 people with FIT results below the threshold there will be very few cancers found. The bowel screening pilot found that readings at this level and higher accounted for 80 percent of bowel cancers found and therefore indicated a higher likelihood of bowel cancer (5)</p><p><em>False positive test results can occur</em><br> False positive results can occur too where screening test results may appear to be abnormal even though no cancer is present.</p><p><em>A negative screening result</em><br> This means blood has not been detected in your sample, and it is recommended that you repeat a bowel screening test every two years. A negative result does not mean that you do not have, or can never develop, bowel cancer because some bowel cancers do not bleed, or bleed on and off.&nbsp; A person who receives a false-negative test result (one that shows there is no cancer when there really is) should still seek medical attention.</p><p><a href=\"https://www.nzherald.co.nz/nz/bowel-screening-programme-misses-too-many-cancers-says-expert/PSRMOCGNK2CNJK7YZXZMCRVNIU/\">Article on missed cancers with screening in NZ</a>&nbsp;</p><p><strong>Additional Information:</strong></p><p>Ministry of Health National Bowel Cancer Screening Information:</p><p><a href=\"https://www.health.govt.nz/our-work/preventative-health-wellness/screening/national-bowel-screening-programme\">https://www.health.govt.nz/our-work/preventative-health-wellness/screening/national-bowel-screening-programme</a></p><p>Bowel Cancer Screening New Zealand:</p><p><a href=\"https://bowelcancernz.org.nz/about-bowel-cancer/early-detection-and-prevention/screening/\">https://bowelcancernz.org.nz/about-bowel-cancer/early-detection-and-prevention/screening/</a></p><p>Time to screen New Zealand:</p><p><a href=\"https://www.timetoscreen.nz/bowel-screening/\">https://www.timetoscreen.nz/bowel-screening/</a></p><p>Large published study on effectiveness of colon cancer screening:</p><p><a href=\"https://gut.bmj.com/content/67/2/291\"></a><a href=\"https://gut.bmj.com/content/67/2/291\">https://gut.bmj.com/content/67/2/291</a>&nbsp;</p><p><iframe src=\"https://www.youtube.com/embed/k62Odxjm7yo\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 1, 1, 2, 1, 0, NULL, 7);
INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Priority`, `CanViewType`, `CanEditType`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(87, 9, 5, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\PatientInfoDetailsPage', '2021-01-16 23:16:27', '2021-01-16 23:02:07', NULL, 'Inherit', 'Inherit', 'bowel-screening', 'Bowel Screening', NULL, '<p><strong>What:</strong>&nbsp;</p><p>Participating in screening means that you have <strong>no </strong>symptoms. You have no bleeding. You have no abdominal pain, weight loss, change in bowel habit. You have no risk factors for colon cancer that would usually require a colonoscopy (i.e., strong family history of colon cancer, inflammatory bowel disease). If you have these issues, you should see your GP or get in touch for an appointment.</p><p><strong>Why:</strong></p><p>Each year between about 2500 and 3000 New Zealanders will be diagnosed with colorectal cancer and between 1100 and 1200 will die as a result of colorectal cancer. This represents both the second most common cancer diagnosed and cause of cancer death. Absolute rates continue to rise in the face of an aging and increasing population.</p><p>This is also a big problem world-wide. There are over one million new cases of colorectal cancer diagnosed world-wide each year and 600,000 deaths. In addition, NZ has the lowest percentage of surgically curable localised disease (28%) when compared with Australia (34%), America (40%) and the United Kingdom (42%). 20% of disease at diagnosis is metastatic (i.e., incurable and spread elsewhere in the body).</p><p>We know that most colorectal cancers develop from precancerous polyps. Polyps are like warty outgrowths that form in the lining of the colon. Removing these can help to remove the risk of developing colon cancer. Studies have shown that regular screening for and removal of polyps reduces your risk of developing colorectal cancer by up to 89% with colonoscopy. Similarly, if a cancer is found, it may be treated, hopefully at an earlier stage than it would have been found otherwise</p><p><iframe src=\"https://www.youtube.com/embed/0h568yv-YA8\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p><p>When polyps are small and growing, you will not have any symptoms. It is only when they grow very large that these may bleed, cause pain, or change your stool habit. This is why screening is important.</p><p>[image src=\"/assets/Screen-Shot-2021-01-09-at-08.42.14.png\" id=\"35\" width=\"504\" height=\"400\" class=\"leftAlone ss-htmleditorfield-file image\" title=\"Screen Shot 2021 01 09 at 08.42.14\"]</p><p class=\"p1\"><em>In Western societies, approximately 5% of the population will develop CRC in their lifetime and up to 2.5% will die of the disease</em></p><p><strong>How?</strong></p><p>The best test for screening is performing a colonoscopy, as this is a direct examination of the bowel. If you are between 60 and 74 and in a participating centre in New Zealand, you will be sent a stool test in the mail. This is checking for microscopic blood. If microscopic blood is present, you will be asked to have a colonoscopy.</p><p>&nbsp;</p><p>Ages to start screening is different in other countries:</p><ul>\n<li>Netherlands: 55</li>\n<li>Australia: 55</li>\n<li>Scotland: 50</li>\n<li>Japan: 40 years old.</li>\n</ul><p>Within New Zealand’s bowel screening programme, a positive result is triggered if the blood (haemoglobin (Hb)) found in a sample is over 200 nanograms of Hb in a millilitre of buffer. The bowel screening pilot found that for readings at this level, for every 100 people we know that approximately eight will have a cancer found in the first round of screening. For every 100 people with FIT results below the threshold there will be very few cancers found. The bowel screening pilot found that readings at this level and higher accounted for 80 percent of bowel cancers found and therefore indicated a higher likelihood of bowel cancer (5)</p><p><em>False positive test results can occur</em><br> False positive results can occur too where screening test results may appear to be abnormal even though no cancer is present.</p><p><em>A negative screening result</em><br> This means blood has not been detected in your sample, and it is recommended that you repeat a bowel screening test every two years. A negative result does not mean that you do not have, or can never develop, bowel cancer because some bowel cancers do not bleed, or bleed on and off.&nbsp; A person who receives a false-negative test result (one that shows there is no cancer when there really is) should still seek medical attention.</p><p><a href=\"https://www.nzherald.co.nz/nz/bowel-screening-programme-misses-too-many-cancers-says-expert/PSRMOCGNK2CNJK7YZXZMCRVNIU/\">Article on missed cancers with screening in NZ</a>&nbsp;</p><p><strong>Additional Information:</strong></p><p>Ministry of Health National Bowel Cancer Screening Information:</p><p><a href=\"https://www.health.govt.nz/our-work/preventative-health-wellness/screening/national-bowel-screening-programme\">https://www.health.govt.nz/our-work/preventative-health-wellness/screening/national-bowel-screening-programme</a></p><p>Bowel Cancer Screening New Zealand:</p><p><a href=\"https://bowelcancernz.org.nz/about-bowel-cancer/early-detection-and-prevention/screening/\">https://bowelcancernz.org.nz/about-bowel-cancer/early-detection-and-prevention/screening/</a></p><p>Time to screen New Zealand:</p><p><a href=\"https://www.timetoscreen.nz/bowel-screening/\">https://www.timetoscreen.nz/bowel-screening/</a></p><p>Large published study on effectiveness of colon cancer screening:</p><p><a href=\"https://gut.bmj.com/content/67/2/291\"></a><a href=\"https://gut.bmj.com/content/67/2/291\">https://gut.bmj.com/content/67/2/291</a>&nbsp;</p><p><iframe src=\"https://www.youtube.com/embed/k62Odxjm7yo\" width=\"560\" height=\"315\" frameborder=\"0\"></iframe></p>', NULL, NULL, 1, 1, 2, 1, 0, NULL, 7),
(88, 11, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\FAQPage', '2021-02-02 08:28:17', '2021-02-02 08:28:17', NULL, 'Inherit', 'Inherit', 'new-f-a-q-page', 'New F A Q Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(89, 11, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Lessons\\FAQPage', '2021-02-02 08:35:28', '2021-02-02 08:28:17', NULL, 'Inherit', 'Inherit', 'faq', 'FAQ', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(90, 11, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Lessons\\FAQPage', '2021-02-02 08:35:28', '2021-02-02 08:28:17', NULL, 'Inherit', 'Inherit', 'faq', 'FAQ', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_viewergroups`
--

DROP TABLE IF EXISTS `sitetree_viewergroups`;
CREATE TABLE IF NOT EXISTS `sitetree_viewergroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage`
--

DROP TABLE IF EXISTS `virtualpage`;
CREATE TABLE IF NOT EXISTS `virtualpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_live`
--

DROP TABLE IF EXISTS `virtualpage_live`;
CREATE TABLE IF NOT EXISTS `virtualpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_versions`
--

DROP TABLE IF EXISTS `virtualpage_versions`;
CREATE TABLE IF NOT EXISTS `virtualpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
