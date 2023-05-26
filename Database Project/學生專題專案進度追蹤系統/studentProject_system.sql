-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: mariadb1
-- Generation Time: May 26, 2023 at 12:09 AM
-- Server version: 10.7.8-MariaDB-1:10.7.8+maria~ubu2004
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentProject_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bugType_mapping_table2`
--

CREATE TABLE `bugType_mapping_table2` (
  `bugTypeID` int(2) NOT NULL,
  `bugTypeName` varchar(20) NOT NULL,
  `bugTypeDescription` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_list_table1`
--

CREATE TABLE `bug_list_table1` (
  `bugListID` int(3) NOT NULL,
  `bugID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_mapping_table1`
--

CREATE TABLE `bug_mapping_table1` (
  `bugID` int(4) NOT NULL,
  `bugTitle` varchar(100) NOT NULL,
  `bugTypeID` int(2) NOT NULL,
  `bugBodyID` int(2) NOT NULL,
  `bugDateInfoID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dateInfo_list_table1`
--

CREATE TABLE `dateInfo_list_table1` (
  `dateInfoID` int(2) NOT NULL,
  `createDateListID` int(2) NOT NULL,
  `modifyDataDateListID` int(2) NOT NULL,
  `searchQueryListID` int(2) NOT NULL,
  `searchPersonalDataListID` int(2) NOT NULL,
  `infoTypeID` int(2) NOT NULL,
  `userID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_createDate_list_table1`
--

CREATE TABLE `date_createDate_list_table1` (
  `createDateListID` int(2) NOT NULL,
  `createDateID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_createDate_mapping_table1`
--

CREATE TABLE `date_createDate_mapping_table1` (
  `createDateID` int(2) NOT NULL,
  `createDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_modifyDataDate_list_table1`
--

CREATE TABLE `date_modifyDataDate_list_table1` (
  `modifyDataDateListID` int(3) NOT NULL,
  `modifyDataDateID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_modifyDataDate_mapping_table1`
--

CREATE TABLE `date_modifyDataDate_mapping_table1` (
  `modifyDataDateID` int(3) NOT NULL,
  `modifyDataDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_searchPersonalDataDate_list_table1`
--

CREATE TABLE `date_searchPersonalDataDate_list_table1` (
  `searchPersonalDataDateListID` int(3) NOT NULL,
  `searchPersonalDataDateID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_searchPersonalDataDate_mapping_table1`
--

CREATE TABLE `date_searchPersonalDataDate_mapping_table1` (
  `searchPersonalDataDateID` int(3) NOT NULL,
  `searchPersonalDataDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_searchQueryDate_list_table1`
--

CREATE TABLE `date_searchQueryDate_list_table1` (
  `searchQueryDateListID` int(3) NOT NULL,
  `searchQueryDateID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_searchQueryDate_mapping_table1`
--

CREATE TABLE `date_searchQueryDate_mapping_table1` (
  `searchQueryDateID` int(3) NOT NULL,
  `searchQueryDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groupCreateID_mapping_table1`
--

CREATE TABLE `groupCreateID_mapping_table1` (
  `groupCreateID` int(4) NOT NULL,
  `groupCreateDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groupID_list_table1`
--

CREATE TABLE `groupID_list_table1` (
  `groupID` int(4) NOT NULL,
  `groupMemberID` int(4) NOT NULL,
  `groupCreateID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Records all groups with ID.';

-- --------------------------------------------------------

--
-- Table structure for table `groupID_mapping_table1`
--

CREATE TABLE `groupID_mapping_table1` (
  `groupID` int(4) NOT NULL,
  `groupName` varchar(15) NOT NULL,
  `groupManagerID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groupMemberID_mapping_table1`
--

CREATE TABLE `groupMemberID_mapping_table1` (
  `memberID` int(2) NOT NULL,
  `userID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groupStatusID_mapping_table1`
--

CREATE TABLE `groupStatusID_mapping_table1` (
  `groupStatusID` int(4) NOT NULL,
  `fillDate` int(4) NOT NULL,
  `currReportItemID` int(4) NOT NULL,
  `nextReportItemID` int(4) NOT NULL,
  `currImageID` int(4) NOT NULL,
  `currPictureID` int(2) NOT NULL,
  `currCodeID` int(2) NOT NULL,
  `currNoteID` int(2) NOT NULL,
  `currVideoID` int(2) NOT NULL,
  `currDocID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groupStatus_list_table1`
--

CREATE TABLE `groupStatus_list_table1` (
  `groupID` int(4) NOT NULL,
  `groupStatusID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info_infoTypeID_mapping_table1`
--

CREATE TABLE `info_infoTypeID_mapping_table1` (
  `infoTypeID` int(3) NOT NULL,
  `infoType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itemDocID_list_table1`
--

CREATE TABLE `itemDocID_list_table1` (
  `itemDocListID` int(2) NOT NULL,
  `itemDocID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itemDocID_list_table2`
--

CREATE TABLE `itemDocID_list_table2` (
  `itemDocID` int(3) NOT NULL,
  `userID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itemDocID_mapping_table1`
--

CREATE TABLE `itemDocID_mapping_table1` (
  `itemDocID` int(2) NOT NULL,
  `itemDocName` varchar(15) NOT NULL,
  `itemDocUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_list_table1`
--

CREATE TABLE `login_list_table1` (
  `loginListID` int(2) NOT NULL,
  `loginID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_list_table2`
--

CREATE TABLE `login_list_table2` (
  `loginListID` int(3) NOT NULL,
  `userID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_mapping_table1`
--

CREATE TABLE `login_mapping_table1` (
  `loginID` int(3) NOT NULL,
  `loginStatusID` int(1) NOT NULL,
  `permissionID` int(3) NOT NULL,
  `loginDate` datetime NOT NULL,
  `tryLoginTimes` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logoutWay_mapping_table1`
--

CREATE TABLE `logoutWay_mapping_table1` (
  `logoutWayID` int(2) NOT NULL,
  `logoutWay` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logout_list_table1`
--

CREATE TABLE `logout_list_table1` (
  `logoutListID` int(2) NOT NULL,
  `logoutID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logout_list_table2`
--

CREATE TABLE `logout_list_table2` (
  `logoutListID` int(3) NOT NULL,
  `userID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logout_mapping_table1`
--

CREATE TABLE `logout_mapping_table1` (
  `logoutID` int(2) NOT NULL,
  `logoutDate` datetime(6) NOT NULL,
  `logoutWayID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_mapping_table1`
--

CREATE TABLE `permission_mapping_table1` (
  `permissionID` int(2) NOT NULL,
  `permissionName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_codeID_list_table1`
--

CREATE TABLE `report_codeID_list_table1` (
  `codeListID` int(2) NOT NULL,
  `codeID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_codeID_mapping_table1`
--

CREATE TABLE `report_codeID_mapping_table1` (
  `codeID` int(3) NOT NULL,
  `codeName` varchar(20) NOT NULL,
  `codeUrl` varchar(255) NOT NULL,
  `codeDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_imageID_list_table1`
--

CREATE TABLE `report_imageID_list_table1` (
  `imageListID` int(11) NOT NULL,
  `imageID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_imageID_mapping_table1`
--

CREATE TABLE `report_imageID_mapping_table1` (
  `imageID` int(2) NOT NULL,
  `imageName` varchar(20) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `imageDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_noteID_list_table1`
--

CREATE TABLE `report_noteID_list_table1` (
  `noteListID` int(3) NOT NULL,
  `noteID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_noteID_mapping_table1`
--

CREATE TABLE `report_noteID_mapping_table1` (
  `noteID` int(3) NOT NULL,
  `noteName` varchar(20) NOT NULL,
  `noteUrl` varchar(255) NOT NULL,
  `noteDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_pictureID_list_table1`
--

CREATE TABLE `report_pictureID_list_table1` (
  `pictureListID` int(3) NOT NULL,
  `pictureID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_pictureID_mapping_table1`
--

CREATE TABLE `report_pictureID_mapping_table1` (
  `pictureID` int(3) NOT NULL,
  `pictureName` varchar(20) NOT NULL,
  `pictureUrl` varchar(255) NOT NULL,
  `pictureDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_nickName_list_table1`
--

CREATE TABLE `user_nickName_list_table1` (
  `nickNameListID` int(3) NOT NULL,
  `nickNameID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_nickName_list_table2`
--

CREATE TABLE `user_nickName_list_table2` (
  `nickNameListID` int(3) NOT NULL,
  `userID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_nickName_mapping_table1`
--

CREATE TABLE `user_nickName_mapping_table1` (
  `nickNameID` int(2) NOT NULL,
  `nickName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_user_list_table1`
--

CREATE TABLE `user_user_list_table1` (
  `userID` int(3) NOT NULL,
  `userName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_user_mapping_table1`
--

CREATE TABLE `user_user_mapping_table1` (
  `userID` int(2) NOT NULL,
  `nickListID` int(2) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `accountName` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `telphone` int(10) NOT NULL,
  `basicInfoID` int(3) NOT NULL,
  `loginInfoListID` int(3) NOT NULL,
  `logoutInfoListID` int(11) NOT NULL,
  `dateInfoID` int(3) NOT NULL,
  `groupID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videoID_list_table1`
--

CREATE TABLE `videoID_list_table1` (
  `videoListID` int(2) NOT NULL,
  `videoID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videoID_mapping_table1`
--

CREATE TABLE `videoID_mapping_table1` (
  `videoID` int(2) NOT NULL,
  `videoName` varchar(20) NOT NULL,
  `videoUrl` varchar(255) NOT NULL,
  `videoDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `videoID_list_table1`
--
ALTER TABLE `videoID_list_table1`
  ADD PRIMARY KEY (`videoListID`),
  ADD UNIQUE KEY `videoListID` (`videoListID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
