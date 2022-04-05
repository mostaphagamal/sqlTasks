-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2022 at 05:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `important`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) NOT NULL,
  `createdBy` bigint(20) DEFAULT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `metaTitle` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `summary` tinytext DEFAULT NULL,
  `staatus` smallint(6) DEFAULT NULL,
  `createdAT` datetime DEFAULT NULL,
  `updatedAT` datetime DEFAULT NULL,
  `profilee` text DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group_follower`
--

CREATE TABLE `group_follower` (
  `id` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group_member`
--

CREATE TABLE `group_member` (
  `id` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `staatus` smallint(6) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group_message`
--

CREATE TABLE `group_message` (
  `id` bigint(20) NOT NULL,
  `groupID` bigint(20) DEFAULT NULL,
  `UserId` bigint(20) DEFAULT NULL,
  `message` tinytext DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group_meta`
--

CREATE TABLE `group_meta` (
  `id` bigint(20) NOT NULL,
  `groupID` bigint(20) DEFAULT NULL,
  `keey` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group_pst`
--

CREATE TABLE `group_pst` (
  `id` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `message` tinytext DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `middleName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `passwordHash` varchar(32) DEFAULT NULL,
  `lastLogin` datetime DEFAULT NULL,
  `info` tinytext DEFAULT NULL,
  `profilee` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_follower`
--

CREATE TABLE `user_follower` (
  `id` bigint(20) NOT NULL,
  `sourceId` bigint(20) DEFAULT NULL,
  `targetId` bigint(20) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_friend`
--

CREATE TABLE `user_friend` (
  `id` bigint(20) NOT NULL,
  `sourceId` bigint(20) DEFAULT NULL,
  `targetId` bigint(20) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `staatus` smallint(6) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateddAt` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_message`
--

CREATE TABLE `user_message` (
  `id` bigint(20) NOT NULL,
  `sourceId` bigint(20) DEFAULT NULL,
  `targetId` bigint(20) DEFAULT NULL,
  `message` tinytext DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE `user_post` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `senderId` bigint(20) DEFAULT NULL,
  `message` tinytext DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdBy`),
  ADD KEY `updatedBy` (`updatedBy`);

--
-- Indexes for table `group_follower`
--
ALTER TABLE `group_follower`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupId` (`groupId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `group_member`
--
ALTER TABLE `group_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupId` (`groupId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `group_message`
--
ALTER TABLE `group_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupID` (`groupID`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `group_meta`
--
ALTER TABLE `group_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `group_pst`
--
ALTER TABLE `group_pst`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupId` (`groupId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_follower`
--
ALTER TABLE `user_follower`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sourceId` (`sourceId`),
  ADD KEY `targetId` (`targetId`);

--
-- Indexes for table `user_friend`
--
ALTER TABLE `user_friend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sourceId` (`sourceId`),
  ADD KEY `targetId` (`targetId`);

--
-- Indexes for table `user_message`
--
ALTER TABLE `user_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sourceId` (`sourceId`),
  ADD KEY `targetId` (`targetId`);

--
-- Indexes for table `user_post`
--
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `senderId` (`senderId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `groups_ibfk_2` FOREIGN KEY (`updatedBy`) REFERENCES `users` (`id`);

--
-- Constraints for table `group_follower`
--
ALTER TABLE `group_follower`
  ADD CONSTRAINT `group_follower_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `group_follower_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `group_member`
--
ALTER TABLE `group_member`
  ADD CONSTRAINT `group_member_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `group_member_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `group_message`
--
ALTER TABLE `group_message`
  ADD CONSTRAINT `group_message_ibfk_1` FOREIGN KEY (`groupID`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `group_message_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`);

--
-- Constraints for table `group_meta`
--
ALTER TABLE `group_meta`
  ADD CONSTRAINT `group_meta_ibfk_1` FOREIGN KEY (`groupID`) REFERENCES `groups` (`id`);

--
-- Constraints for table `group_pst`
--
ALTER TABLE `group_pst`
  ADD CONSTRAINT `group_pst_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `group_pst_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_follower`
--
ALTER TABLE `user_follower`
  ADD CONSTRAINT `user_follower_ibfk_1` FOREIGN KEY (`sourceId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_follower_ibfk_2` FOREIGN KEY (`targetId`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_friend`
--
ALTER TABLE `user_friend`
  ADD CONSTRAINT `user_friend_ibfk_1` FOREIGN KEY (`sourceId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_friend_ibfk_2` FOREIGN KEY (`targetId`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_message`
--
ALTER TABLE `user_message`
  ADD CONSTRAINT `user_message_ibfk_1` FOREIGN KEY (`sourceId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_message_ibfk_2` FOREIGN KEY (`targetId`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_post`
--
ALTER TABLE `user_post`
  ADD CONSTRAINT `user_post_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_post_ibfk_2` FOREIGN KEY (`senderId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
