-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2025 at 10:05 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craftcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `primaryOwnerId` int(11) DEFAULT NULL,
  `fieldId` int(11) DEFAULT NULL,
  `countryCode` varchar(255) NOT NULL,
  `administrativeArea` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `dependentLocality` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `sortingCode` varchar(255) DEFAULT NULL,
  `addressLine1` varchar(255) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `addressLine3` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `organizationTaxId` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT 1,
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` int(11) NOT NULL,
  `volumeId` int(11) NOT NULL,
  `uri` text DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `isDir` tinyint(1) DEFAULT 0,
  `recordId` int(11) DEFAULT NULL,
  `isSkipped` tinyint(1) DEFAULT 0,
  `inProgress` tinyint(1) DEFAULT 0,
  `completed` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexingsessions`
--

CREATE TABLE `assetindexingsessions` (
  `id` int(11) NOT NULL,
  `indexedVolumes` text DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `processedEntries` int(11) NOT NULL DEFAULT 0,
  `cacheRemoteImages` tinyint(1) DEFAULT NULL,
  `listEmptyFolders` tinyint(1) DEFAULT 0,
  `isCli` tinyint(1) DEFAULT 0,
  `actionRequired` tinyint(1) DEFAULT 0,
  `processIfRootEmpty` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `alt` text DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `alt`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`) VALUES
(45, 3, 5, 1, 'castle.jpg', 'image', NULL, 3840, 2560, 3961258, NULL, NULL, NULL, '2025-02-24 22:50:51', '2025-02-24 22:50:51', '2025-02-24 22:50:51'),
(46, 3, 5, 1, 'gallery.jpg', 'image', NULL, 4608, 3456, 1860285, NULL, NULL, NULL, '2025-02-24 22:51:06', '2025-02-24 22:51:06', '2025-02-24 22:51:06'),
(47, 3, 5, 1, 'lakeside.avif', 'image', NULL, 1374, 1031, 202569, NULL, NULL, NULL, '2025-02-24 22:51:10', '2025-02-24 22:51:11', '2025-02-24 22:51:11'),
(48, 3, 5, 1, 'market.avif', 'image', NULL, 1470, 980, 382097, NULL, NULL, NULL, '2025-02-24 22:51:14', '2025-02-24 22:51:15', '2025-02-24 22:51:15'),
(49, 3, 5, 1, 'museum.avif', 'image', NULL, 1337, 1053, 144752, NULL, NULL, NULL, '2025-02-24 22:51:17', '2025-02-24 22:51:17', '2025-02-24 22:51:17'),
(65, 3, 5, 1, 'cross.png', 'image', NULL, 256, 256, 5728, NULL, 0, 0, '2025-03-05 19:44:43', '2025-03-05 19:44:44', '2025-03-05 19:44:44'),
(66, 3, 5, 1, 'menu.png', 'image', NULL, 150, 150, 503, NULL, 0, 0, '2025-03-05 19:44:44', '2025-03-05 19:44:44', '2025-03-05 19:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `assets_sites`
--

CREATE TABLE `assets_sites` (
  `assetId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `alt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets_sites`
--

INSERT INTO `assets_sites` (`assetId`, `siteId`, `alt`) VALUES
(45, 1, NULL),
(46, 1, NULL),
(47, 1, NULL),
(48, 1, NULL),
(49, 1, NULL),
(65, 1, NULL),
(66, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authenticator`
--

CREATE TABLE `authenticator` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `auth2faSecret` varchar(255) DEFAULT NULL,
  `oldTimestamp` int(11) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `groupId`, `parentId`, `deletedWithGroup`, `dateCreated`, `dateUpdated`) VALUES
(14, 5, NULL, NULL, '2025-02-21 21:48:49', '2025-02-21 21:48:49'),
(15, 5, NULL, NULL, '2025-02-21 21:48:58', '2025-02-21 21:48:58'),
(16, 5, NULL, NULL, '2025-02-21 21:50:09', '2025-02-21 21:50:09'),
(17, 5, NULL, NULL, '2025-02-21 21:50:23', '2025-02-21 21:50:23'),
(18, 5, NULL, NULL, '2025-02-21 21:50:34', '2025-02-21 21:50:34'),
(19, 5, NULL, NULL, '2025-02-21 21:50:49', '2025-02-21 21:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorygroups`
--

INSERT INTO `categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `defaultPlacement`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 3, 'Nature', 'nature', 'end', '2025-02-21 21:25:29', '2025-02-21 21:25:29', '2025-02-21 21:48:25', '3fbca60c-c8cc-400e-ae71-2b833140cedd'),
(2, 2, 4, 'Historical', 'historical', 'end', '2025-02-21 21:25:42', '2025-02-21 21:25:42', '2025-02-21 21:48:23', '6e70ce52-e398-436d-9a87-955ddb91e70e'),
(3, 3, 5, 'Cultural Arts', 'culturalArts', 'end', '2025-02-21 21:26:12', '2025-02-21 21:26:12', '2025-02-21 21:48:21', 'd09efc85-65d3-414b-8f8c-5422e1574cfe'),
(4, 4, 6, 'Shopping', 'shopping', 'end', '2025-02-21 21:26:34', '2025-02-21 21:26:34', '2025-02-21 21:48:27', '1befa042-9ee8-465d-aea6-8bbb90cba8f4'),
(5, 5, 7, 'Attraction Categories', 'attractionCategories', 'end', '2025-02-21 21:48:42', '2025-02-26 23:00:26', NULL, '275a9cff-d3a5-4be7-b9b8-c0a50483b9f7');

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text DEFAULT NULL,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorygroups_sites`
--

INSERT INTO `categorygroups_sites` (`id`, `groupId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'nature/{slug}', 'nature/_category.twig', '2025-02-21 21:25:29', '2025-02-21 21:25:29', '7556d902-2c4b-4a3e-84bf-34065e191b8e'),
(2, 2, 1, 1, 'historical/{slug}', 'historical/_category.twig', '2025-02-21 21:25:42', '2025-02-21 21:25:42', '9528c3f1-59ff-4121-9b69-1277433f31ef'),
(3, 3, 1, 1, 'cultural-arts/{slug}', 'cultural-arts/_category.twig', '2025-02-21 21:26:12', '2025-02-21 21:26:12', '0a4bc842-5a93-4d59-a612-5db4dced2974'),
(4, 4, 1, 1, 'shopping/{slug}', 'shopping/_category.twig', '2025-02-21 21:26:34', '2025-02-21 21:26:34', '573d688c-b5b3-4818-a11e-81637cf42e59'),
(5, 5, 1, 1, 'attractions/{slug}', 'attractions/_category.twig', '2025-02-21 21:48:42', '2025-02-21 21:48:42', '5b6c3371-c991-4fa7-9646-426ad62dc0f4');

-- --------------------------------------------------------

--
-- Table structure for table `changedattributes`
--

CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `changedattributes`
--

INSERT INTO `changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(4, 1, 'postDate', '2025-02-20 20:20:16', 0, 1),
(4, 1, 'slug', '2025-02-20 20:19:09', 0, 1),
(4, 1, 'title', '2025-02-20 20:19:09', 0, 1),
(4, 1, 'uri', '2025-02-20 20:19:09', 0, 1),
(6, 1, 'postDate', '2025-02-20 20:20:35', 0, 1),
(6, 1, 'slug', '2025-02-20 20:20:31', 0, 1),
(6, 1, 'title', '2025-02-20 20:20:31', 0, 1),
(6, 1, 'uri', '2025-02-20 20:20:31', 0, 1),
(8, 1, 'postDate', '2025-02-20 20:20:45', 0, 1),
(8, 1, 'slug', '2025-02-20 20:20:45', 0, 1),
(8, 1, 'title', '2025-02-20 20:20:45', 0, 1),
(8, 1, 'uri', '2025-02-20 20:20:45', 0, 1),
(10, 1, 'postDate', '2025-02-20 20:21:01', 0, 1),
(10, 1, 'slug', '2025-02-20 20:21:01', 0, 1),
(10, 1, 'title', '2025-02-20 20:21:01', 0, 1),
(10, 1, 'uri', '2025-02-20 20:21:01', 0, 1),
(12, 1, 'postDate', '2025-02-20 20:21:14', 0, 1),
(12, 1, 'slug', '2025-02-20 20:21:14', 0, 1),
(12, 1, 'title', '2025-02-24 22:52:50', 0, 1),
(12, 1, 'uri', '2025-02-20 20:21:14', 0, 1),
(16, 1, 'slug', '2025-02-21 21:50:18', 0, 1),
(16, 1, 'title', '2025-02-21 21:50:18', 0, 1),
(16, 1, 'uri', '2025-02-21 21:50:18', 0, 1),
(17, 1, 'slug', '2025-02-21 21:50:31', 0, 1),
(17, 1, 'title', '2025-02-21 21:50:31', 0, 1),
(17, 1, 'uri', '2025-02-21 21:50:31', 0, 1),
(18, 1, 'slug', '2025-02-21 21:50:37', 0, 1),
(18, 1, 'title', '2025-02-21 21:50:37', 0, 1),
(18, 1, 'uri', '2025-02-21 21:50:37', 0, 1),
(19, 1, 'slug', '2025-02-21 21:50:55', 0, 1),
(19, 1, 'title', '2025-02-21 21:50:55', 0, 1),
(19, 1, 'uri', '2025-02-21 21:50:55', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `changedfields`
--

CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `layoutElementUid` char(36) NOT NULL DEFAULT '0',
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `changedfields`
--

INSERT INTO `changedfields` (`elementId`, `siteId`, `fieldId`, `layoutElementUid`, `dateUpdated`, `propagated`, `userId`) VALUES
(4, 1, 1, 'de009d7a-d048-4b13-8bac-58a7b5d9d252', '2025-02-20 20:20:08', 0, 1),
(4, 1, 2, '7a416fb8-d9b2-4ff8-94da-537177c82a67', '2025-02-21 21:55:03', 0, 1),
(4, 1, 4, '19d61397-61ee-49e2-96cc-965b6312602c', '2025-02-24 22:53:15', 0, 1),
(6, 1, 1, 'de009d7a-d048-4b13-8bac-58a7b5d9d252', '2025-02-20 20:20:33', 0, 1),
(6, 1, 2, '7a416fb8-d9b2-4ff8-94da-537177c82a67', '2025-02-26 23:04:09', 0, 1),
(6, 1, 4, '19d61397-61ee-49e2-96cc-965b6312602c', '2025-02-24 22:51:42', 0, 1),
(8, 1, 1, 'de009d7a-d048-4b13-8bac-58a7b5d9d252', '2025-02-20 20:20:45', 0, 1),
(8, 1, 2, '7a416fb8-d9b2-4ff8-94da-537177c82a67', '2025-02-21 21:54:56', 0, 1),
(8, 1, 4, '19d61397-61ee-49e2-96cc-965b6312602c', '2025-02-24 22:52:58', 0, 1),
(10, 1, 1, 'de009d7a-d048-4b13-8bac-58a7b5d9d252', '2025-02-20 20:21:01', 0, 1),
(10, 1, 2, '7a416fb8-d9b2-4ff8-94da-537177c82a67', '2025-02-21 21:54:39', 0, 1),
(10, 1, 4, '19d61397-61ee-49e2-96cc-965b6312602c', '2025-02-24 22:51:54', 0, 1),
(12, 1, 1, 'de009d7a-d048-4b13-8bac-58a7b5d9d252', '2025-02-20 20:21:14', 0, 1),
(12, 1, 2, '7a416fb8-d9b2-4ff8-94da-537177c82a67', '2025-02-24 22:52:50', 0, 1),
(12, 1, 4, '19d61397-61ee-49e2-96cc-965b6312602c', '2025-02-24 22:52:50', 0, 1),
(16, 1, 5, 'f6f93b13-7ec4-4c30-9fc5-3bbd3aebd00c', '2025-02-26 23:08:23', 0, 1),
(17, 1, 5, 'f6f93b13-7ec4-4c30-9fc5-3bbd3aebd00c', '2025-02-26 23:08:51', 0, 1),
(18, 1, 5, 'f6f93b13-7ec4-4c30-9fc5-3bbd3aebd00c', '2025-02-26 23:07:49', 0, 1),
(19, 1, 5, 'f6f93b13-7ec4-4c30-9fc5-3bbd3aebd00c', '2025-02-26 23:09:13', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` text DEFAULT NULL,
  `traces` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`traces`)),
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `trackChanges` tinyint(1) NOT NULL DEFAULT 0,
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drafts`
--

INSERT INTO `drafts` (`id`, `canonicalId`, `creatorId`, `provisional`, `name`, `notes`, `trackChanges`, `dateLastMerged`, `saved`) VALUES
(6, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0),
(7, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `elementactivity`
--

CREATE TABLE `elementactivity` (
  `elementId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `draftId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `elementactivity`
--

INSERT INTO `elementactivity` (`elementId`, `userId`, `siteId`, `draftId`, `type`, `timestamp`) VALUES
(4, 1, 1, NULL, 'edit', '2025-02-24 22:53:13'),
(4, 1, 1, NULL, 'save', '2025-02-24 22:53:15'),
(6, 1, 1, NULL, 'edit', '2025-02-26 23:04:07'),
(6, 1, 1, NULL, 'save', '2025-02-26 23:04:09'),
(8, 1, 1, NULL, 'edit', '2025-02-24 22:52:57'),
(8, 1, 1, NULL, 'save', '2025-02-24 22:52:58'),
(10, 1, 1, NULL, 'edit', '2025-02-24 22:51:53'),
(10, 1, 1, NULL, 'save', '2025-02-24 22:51:55'),
(12, 1, 1, NULL, 'edit', '2025-02-24 22:52:48'),
(12, 1, 1, NULL, 'save', '2025-02-24 22:52:50'),
(16, 1, 1, NULL, 'edit', '2025-02-26 23:08:21'),
(16, 1, 1, NULL, 'save', '2025-02-26 23:08:23'),
(17, 1, 1, NULL, 'edit', '2025-02-26 23:08:50'),
(17, 1, 1, NULL, 'save', '2025-02-26 23:08:51'),
(18, 1, 1, NULL, 'edit', '2025-02-26 23:07:48'),
(18, 1, 1, NULL, 'save', '2025-02-26 23:07:49'),
(19, 1, 1, NULL, 'save', '2025-02-26 23:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `deletedWithOwner`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2025-02-19 22:17:31', '2025-02-19 22:17:31', NULL, NULL, NULL, '7fe18c5b-f06a-408e-9856-1964e4a57b2f'),
(2, NULL, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2025-02-20 00:11:34', '2025-02-20 00:11:34', NULL, '2025-02-20 12:05:40', NULL, 'b971225c-1bfd-44c4-839b-f70e92a96579'),
(3, 2, NULL, 1, 1, 'craft\\elements\\Entry', 1, 0, '2025-02-20 00:11:34', '2025-02-20 00:11:34', NULL, NULL, NULL, 'cbbdee7a-6ad4-41df-9443-b6957ca13ff5'),
(4, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-20 20:17:04', '2025-02-24 22:53:15', NULL, NULL, NULL, 'e2b76f7b-0b6d-4af0-8a0a-6e054a86a437'),
(5, 4, NULL, 2, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-20 20:20:16', '2025-02-20 20:20:16', NULL, NULL, NULL, '475b37cf-497f-4b2e-845a-2c3b44cf1f67'),
(6, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-20 20:20:19', '2025-02-26 23:04:09', NULL, NULL, NULL, 'd6ee1466-729b-441b-988d-f9ef905740cf'),
(7, 6, NULL, 3, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-20 20:20:35', '2025-02-20 20:20:36', NULL, NULL, NULL, '8ba44c0f-53a9-4cb2-bc35-de39cc7defc8'),
(8, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-20 20:20:37', '2025-02-24 22:52:58', NULL, NULL, NULL, 'bfa0e7bf-1497-4e35-bb3d-bd129db03489'),
(9, 8, NULL, 4, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-20 20:20:45', '2025-02-20 20:20:45', NULL, NULL, NULL, '50f856a9-8e58-4fe7-92ee-7d8fa513e6d8'),
(10, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-20 20:20:47', '2025-02-24 22:51:54', NULL, NULL, NULL, '374f8c6d-4db3-4068-a216-01f6c6cb393b'),
(11, 10, NULL, 5, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-20 20:21:01', '2025-02-20 20:21:01', NULL, NULL, NULL, '8cd7a143-0268-4082-877b-98fc46cc0165'),
(12, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-20 20:21:03', '2025-02-24 22:52:50', NULL, NULL, NULL, '03c398a2-0adb-424a-b309-fe2e7e32737a'),
(13, 12, NULL, 6, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-20 20:21:14', '2025-02-20 20:21:14', NULL, NULL, NULL, '82324ea5-9341-4e41-87f9-ed16baff0bba'),
(14, NULL, 6, NULL, 7, 'craft\\elements\\Category', 1, 0, '2025-02-21 21:48:49', '2025-02-21 21:48:49', NULL, NULL, NULL, '982a587c-4658-4115-a8bf-fff246876441'),
(15, NULL, 7, NULL, 7, 'craft\\elements\\Category', 1, 0, '2025-02-21 21:48:58', '2025-02-21 21:48:58', NULL, NULL, NULL, '7164bcde-10f7-48e5-916e-98d5babb5e26'),
(16, NULL, NULL, NULL, 7, 'craft\\elements\\Category', 1, 0, '2025-02-21 21:50:09', '2025-02-26 23:08:23', NULL, NULL, NULL, '6e1f3057-8cce-444b-95d1-62a1489176e1'),
(17, NULL, NULL, NULL, 7, 'craft\\elements\\Category', 1, 0, '2025-02-21 21:50:23', '2025-02-26 23:08:51', NULL, NULL, NULL, '56c193e7-3dd1-49cd-8ad0-93d74101c98c'),
(18, NULL, NULL, NULL, 7, 'craft\\elements\\Category', 1, 0, '2025-02-21 21:50:34', '2025-02-26 23:07:49', NULL, NULL, NULL, '8bcad366-c9ae-4ad3-a914-0e0f70bc19d6'),
(19, NULL, NULL, NULL, 7, 'craft\\elements\\Category', 1, 0, '2025-02-21 21:50:49', '2025-02-26 23:09:13', NULL, NULL, NULL, 'c5d5f17c-2cc7-4ceb-8f62-172295c6ffb5'),
(21, 6, NULL, 7, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-21 21:54:24', '2025-02-21 21:54:24', NULL, NULL, NULL, '736f5494-ca66-4c67-9936-eb8996b55bb2'),
(23, 10, NULL, 8, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-21 21:54:39', '2025-02-21 21:54:39', NULL, NULL, NULL, 'adefdb08-51eb-4b5c-be23-0579ce0b36e5'),
(25, 12, NULL, 9, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-21 21:54:48', '2025-02-21 21:54:48', NULL, NULL, NULL, '08e0a98b-2730-4d3f-a1bc-ccf47ecd68e5'),
(27, 8, NULL, 10, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-21 21:54:56', '2025-02-21 21:54:56', NULL, NULL, NULL, 'a8e74fac-64ed-4d0a-8b07-6a46a896bea7'),
(29, 4, NULL, 11, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-21 21:55:03', '2025-02-21 21:55:03', NULL, NULL, NULL, 'b5727806-8a73-46a4-b4f6-718d81f5582a'),
(45, NULL, NULL, NULL, 10, 'craft\\elements\\Asset', 1, 0, '2025-02-24 22:50:50', '2025-02-24 22:50:50', NULL, NULL, NULL, '4aa11250-686d-4c32-8bd6-a7ea23305557'),
(46, NULL, NULL, NULL, 10, 'craft\\elements\\Asset', 1, 0, '2025-02-24 22:51:06', '2025-02-24 22:51:06', NULL, NULL, NULL, '62cb1e83-7de8-4d45-889a-ad09baa0e446'),
(47, NULL, NULL, NULL, 10, 'craft\\elements\\Asset', 1, 0, '2025-02-24 22:51:07', '2025-02-24 22:51:07', NULL, NULL, NULL, 'ec3c49ee-5f0b-47f6-886b-0f7da6bc3295'),
(48, NULL, NULL, NULL, 10, 'craft\\elements\\Asset', 1, 0, '2025-02-24 22:51:11', '2025-02-24 22:51:11', NULL, NULL, NULL, 'ee197053-f177-4dea-885c-e461ed7233ec'),
(49, NULL, NULL, NULL, 10, 'craft\\elements\\Asset', 1, 0, '2025-02-24 22:51:15', '2025-02-24 22:51:15', NULL, NULL, NULL, '94eed383-f46f-4e5e-8029-94aa007c9391'),
(51, 6, NULL, 12, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-24 22:51:42', '2025-02-24 22:51:42', NULL, NULL, NULL, 'e0f99993-2510-4853-a0fe-9da4c359130f'),
(53, 10, NULL, 13, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-24 22:51:54', '2025-02-24 22:51:55', NULL, NULL, NULL, '190a698f-4e9a-4691-b03c-0adce36fe539'),
(55, 12, NULL, 14, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-24 22:52:50', '2025-02-24 22:52:50', NULL, NULL, NULL, '34fca14b-4250-4f9d-991f-74a7c47b2130'),
(57, 8, NULL, 15, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-24 22:52:58', '2025-02-24 22:52:58', NULL, NULL, NULL, '4da035a4-5fcd-410b-8a11-ad474062d1ff'),
(59, 4, NULL, 16, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-24 22:53:15', '2025-02-24 22:53:15', NULL, NULL, NULL, '95e2b93a-31bd-4f5a-8b48-57bd96a01396'),
(61, 6, NULL, 17, 2, 'craft\\elements\\Entry', 1, 0, '2025-02-26 23:04:09', '2025-02-26 23:04:09', NULL, NULL, NULL, 'e2bc496f-db61-45dc-9202-2b48e2eb4a01'),
(65, NULL, NULL, NULL, 10, 'craft\\elements\\Asset', 1, 0, '2025-03-05 19:44:43', '2025-03-10 17:36:57', NULL, '2025-03-10 17:36:57', NULL, '1e106095-20fb-4385-a58d-b567c6a69879'),
(66, NULL, NULL, NULL, 10, 'craft\\elements\\Asset', 1, 0, '2025-03-05 19:44:44', '2025-03-10 17:36:57', NULL, '2025-03-10 17:36:57', NULL, 'bfe8fc28-bd6d-419d-8f5b-0f14ebc21926');

-- --------------------------------------------------------

--
-- Table structure for table `elements_bulkops`
--

CREATE TABLE `elements_bulkops` (
  `elementId` int(11) NOT NULL,
  `key` char(10) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elements_owners`
--

CREATE TABLE `elements_owners` (
  `elementId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`content`)),
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `title`, `slug`, `uri`, `content`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, 1, '2025-02-19 22:17:31', '2025-02-19 22:17:31', 'e1cc1fd0-4d2a-44c9-a3cc-416e43128b25'),
(2, 2, 1, 'Home', 'home', '__home__', NULL, 1, '2025-02-20 00:11:34', '2025-02-20 00:11:34', '726ba760-1e37-4415-8e6a-bc9ba1f6a630'),
(3, 3, 1, 'Home', 'home', '__home__', NULL, 1, '2025-02-20 00:11:34', '2025-02-20 00:11:34', 'c95b679d-1e8b-4dfd-b544-9b19969727ab'),
(4, 4, 1, 'The Old Castle', 'the-old-castle', 'destination-explorer/the-old-castle', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[16],\"19d61397-61ee-49e2-96cc-965b6312602c\":[45]}', 1, '2025-02-20 20:17:04', '2025-02-24 22:53:15', '4d734c19-2bae-465c-8704-08f61f881880'),
(5, 5, 1, 'The Old Castle', 'the-old-castle', 'destination-explorer/the-old-castle', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\"}', 1, '2025-02-20 20:20:16', '2025-02-20 20:20:16', '7f853e36-1add-4e8f-b0be-8bfd83f28f74'),
(6, 6, 1, 'Gallery', 'gallery', 'destination-explorer/gallery', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[17,16],\"19d61397-61ee-49e2-96cc-965b6312602c\":[46]}', 1, '2025-02-20 20:20:19', '2025-02-26 23:04:09', '33a19e1a-9b9b-456e-97ea-cd9c51cdc14c'),
(7, 7, 1, 'Gallery', 'gallery', 'destination-explorer/gallery', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\"}', 1, '2025-02-20 20:20:36', '2025-02-20 20:20:36', '5ed83be1-4cac-449a-9161-2c44ad3ff921'),
(8, 8, 1, 'Market', 'market', 'destination-explorer/market', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[19],\"19d61397-61ee-49e2-96cc-965b6312602c\":[48]}', 1, '2025-02-20 20:20:37', '2025-02-24 22:52:58', '8ad0c383-fd6f-4658-a6f9-a0f2c07bf1c6'),
(9, 9, 1, 'Market', 'market', 'destination-explorer/market', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\"}', 1, '2025-02-20 20:20:45', '2025-02-20 20:20:45', 'e369ee97-2962-43c4-90cc-4c99e5fa59cc'),
(10, 10, 1, 'Lakeside Walk', 'lakeside-walk', 'destination-explorer/lakeside-walk', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[18],\"19d61397-61ee-49e2-96cc-965b6312602c\":[47]}', 1, '2025-02-20 20:20:47', '2025-02-24 22:51:54', '47feb430-d4d7-409d-aff5-1c68b9a8f06a'),
(11, 11, 1, 'Lakeside Walk', 'lakeside-walk', 'destination-explorer/lakeside-walk', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\"}', 1, '2025-02-20 20:21:01', '2025-02-20 20:21:01', '3142bbb8-fdae-443e-b308-210108a9a7c3'),
(12, 12, 1, 'Museum', 'local-park', 'destination-explorer/local-park', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[16],\"19d61397-61ee-49e2-96cc-965b6312602c\":[49]}', 1, '2025-02-20 20:21:03', '2025-02-24 22:52:50', '1c7ca7b5-ba41-499e-b89e-edbf8c0d1a85'),
(13, 13, 1, 'Local Park', 'local-park', 'destination-explorer/local-park', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\"}', 1, '2025-02-20 20:21:14', '2025-02-20 20:21:14', '1ae8b168-e958-43cb-8238-48d454de4533'),
(14, 14, 1, NULL, '__temp_uffealggutmbpuesnpyavaafvxtrsjhgvkwq', 'attractions/__temp_uffealggutmbpuesnpyavaafvxtrsjhgvkwq', NULL, 1, '2025-02-21 21:48:49', '2025-02-21 21:48:49', '9e47f45c-c61a-4ba3-93e5-27c3eca43f6f'),
(15, 15, 1, NULL, '__temp_phdyaqivwabedphxfqzvquvkhquxkirduzlb', 'attractions/__temp_phdyaqivwabedphxfqzvquvkhquxkirduzlb', NULL, 1, '2025-02-21 21:48:58', '2025-02-21 21:48:58', '81632c5a-da84-4784-9dac-0467ab4c306e'),
(16, 16, 1, 'Historical', 'historical', 'attractions/historical', '{\"f6f93b13-7ec4-4c30-9fc5-3bbd3aebd00c\":\"#57534d\"}', 1, '2025-02-21 21:50:09', '2025-02-26 23:08:23', '04aa9015-fe50-41a6-86fe-fc76db8d0734'),
(17, 17, 1, 'Cultural Arts', 'cultural-arts', 'attractions/cultural-arts', '{\"f6f93b13-7ec4-4c30-9fc5-3bbd3aebd00c\":\"#f6339a\"}', 1, '2025-02-21 21:50:23', '2025-02-26 23:08:51', 'cc4e7df4-7cd1-4b14-9ce0-3752295bc317'),
(18, 18, 1, 'Nature', 'nature', 'attractions/nature', '{\"f6f93b13-7ec4-4c30-9fc5-3bbd3aebd00c\":\"#7ccf00\"}', 1, '2025-02-21 21:50:34', '2025-02-26 23:07:49', '943a46b9-d9af-4d9b-815c-2ddaa7532d49'),
(19, 19, 1, 'Shopping', 'shopping', 'attractions/shopping', '{\"f6f93b13-7ec4-4c30-9fc5-3bbd3aebd00c\":\"#2b7fff\"}', 1, '2025-02-21 21:50:49', '2025-02-26 23:09:13', '8d849f99-2f4c-4be6-a193-da3f0af1ee27'),
(21, 21, 1, 'Gallery', 'gallery', 'destination-explorer/gallery', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[17]}', 1, '2025-02-21 21:54:24', '2025-02-21 21:54:24', '6af08328-1fec-45a4-971d-2e2b3862b1da'),
(23, 23, 1, 'Lakeside Walk', 'lakeside-walk', 'destination-explorer/lakeside-walk', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[18]}', 1, '2025-02-21 21:54:39', '2025-02-21 21:54:39', 'd6814d74-cf45-4a32-a5fe-2d85f1d9199b'),
(25, 25, 1, 'Local Park', 'local-park', 'destination-explorer/local-park', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[18]}', 1, '2025-02-21 21:54:48', '2025-02-21 21:54:48', '5f87bd84-82de-4146-b13c-705b9f98ce34'),
(27, 27, 1, 'Market', 'market', 'destination-explorer/market', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[19]}', 1, '2025-02-21 21:54:56', '2025-02-21 21:54:56', '61f17e7d-a179-488b-bad6-094c551f4c2d'),
(29, 29, 1, 'The Old Castle', 'the-old-castle', 'destination-explorer/the-old-castle', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[16]}', 1, '2025-02-21 21:55:03', '2025-02-21 21:55:03', 'd36bc184-a7a4-45ef-b13c-c62e610dfb34'),
(45, 45, 1, 'Castle', NULL, NULL, NULL, 1, '2025-02-24 22:50:50', '2025-02-24 22:50:50', '4bdf9f4f-652f-4d12-9c37-d0221c5f6876'),
(46, 46, 1, 'Gallery', NULL, NULL, NULL, 1, '2025-02-24 22:51:06', '2025-02-24 22:51:06', 'b7939084-4398-457c-989f-5bce898febd5'),
(47, 47, 1, 'Lakeside', NULL, NULL, NULL, 1, '2025-02-24 22:51:07', '2025-02-24 22:51:07', '66d73169-e72f-40b0-9c09-d2c08f4daf60'),
(48, 48, 1, 'Market', NULL, NULL, NULL, 1, '2025-02-24 22:51:11', '2025-02-24 22:51:11', 'a228a901-5f3d-4cc9-abf4-d640f9ae1f16'),
(49, 49, 1, 'Museum', NULL, NULL, NULL, 1, '2025-02-24 22:51:15', '2025-02-24 22:51:15', '1eaffb0d-20e0-43d4-9192-71bfd978178d'),
(51, 51, 1, 'Gallery', 'gallery', 'destination-explorer/gallery', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[17],\"19d61397-61ee-49e2-96cc-965b6312602c\":[46]}', 1, '2025-02-24 22:51:42', '2025-02-24 22:51:42', 'b92daeb3-f339-4eb7-9c32-17d320814e8b'),
(53, 53, 1, 'Lakeside Walk', 'lakeside-walk', 'destination-explorer/lakeside-walk', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[18],\"19d61397-61ee-49e2-96cc-965b6312602c\":[47]}', 1, '2025-02-24 22:51:55', '2025-02-24 22:51:55', 'be8ead84-5cd9-489d-996e-58b1ad896ae8'),
(55, 55, 1, 'Museum', 'local-park', 'destination-explorer/local-park', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[16],\"19d61397-61ee-49e2-96cc-965b6312602c\":[49]}', 1, '2025-02-24 22:52:50', '2025-02-24 22:52:50', '9343e03e-57b0-45c9-b000-35c4a43ee8ab'),
(57, 57, 1, 'Market', 'market', 'destination-explorer/market', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[19],\"19d61397-61ee-49e2-96cc-965b6312602c\":[48]}', 1, '2025-02-24 22:52:58', '2025-02-24 22:52:58', '12ecec17-6d64-430f-82d3-4412a2f94bdd'),
(59, 59, 1, 'The Old Castle', 'the-old-castle', 'destination-explorer/the-old-castle', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[16],\"19d61397-61ee-49e2-96cc-965b6312602c\":[45]}', 1, '2025-02-24 22:53:15', '2025-02-24 22:53:15', 'd73e659a-0f42-4fd5-8029-2b7d307d889b'),
(61, 61, 1, 'Gallery', 'gallery', 'destination-explorer/gallery', '{\"de009d7a-d048-4b13-8bac-58a7b5d9d252\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros aliquet, egestas arcu sodales, imperdiet magna. Vivamus pellentesque tempor risus, sit amet dictum ipsum viverra vehicula. Donec rutrum tellus.\",\"7a416fb8-d9b2-4ff8-94da-537177c82a67\":[17,16],\"19d61397-61ee-49e2-96cc-965b6312602c\":[46]}', 1, '2025-02-26 23:04:09', '2025-02-26 23:04:09', 'a9ae3a9a-4666-4385-aa61-8f39e9671ca3'),
(65, 65, 1, 'Cross', NULL, NULL, NULL, 1, '2025-03-05 19:44:43', '2025-03-05 19:44:43', 'cf15ba3f-1089-4b33-b20d-6b3787094269'),
(66, 66, 1, 'Menu', NULL, NULL, NULL, 1, '2025-03-05 19:44:44', '2025-03-05 19:44:44', '1625ed86-88ce-4af8-a490-7aeb7bf23cdc');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `primaryOwnerId` int(11) DEFAULT NULL,
  `fieldId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `deletedWithSection` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `primaryOwnerId`, `fieldId`, `typeId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `deletedWithSection`, `dateCreated`, `dateUpdated`) VALUES
(2, 1, NULL, NULL, NULL, 1, '2025-02-20 00:11:00', NULL, NULL, 1, '2025-02-20 00:11:34', '2025-02-20 00:11:34'),
(3, 1, NULL, NULL, NULL, 1, '2025-02-20 00:11:00', NULL, NULL, NULL, '2025-02-20 00:11:34', '2025-02-20 00:11:34'),
(4, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-20 20:17:04', '2025-02-20 20:20:16'),
(5, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-20 20:20:16', '2025-02-20 20:20:16'),
(6, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-20 20:20:19', '2025-02-20 20:20:35'),
(7, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-20 20:20:36', '2025-02-20 20:20:36'),
(8, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-20 20:20:37', '2025-02-20 20:20:45'),
(9, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-20 20:20:45', '2025-02-20 20:20:45'),
(10, 2, NULL, NULL, NULL, 2, '2025-02-20 20:21:00', NULL, NULL, NULL, '2025-02-20 20:20:47', '2025-02-20 20:21:01'),
(11, 2, NULL, NULL, NULL, 2, '2025-02-20 20:21:00', NULL, NULL, NULL, '2025-02-20 20:21:01', '2025-02-20 20:21:01'),
(12, 2, NULL, NULL, NULL, 2, '2025-02-20 20:21:00', NULL, NULL, NULL, '2025-02-20 20:21:03', '2025-02-20 20:21:14'),
(13, 2, NULL, NULL, NULL, 2, '2025-02-20 20:21:00', NULL, NULL, NULL, '2025-02-20 20:21:14', '2025-02-20 20:21:14'),
(21, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-21 21:54:24', '2025-02-21 21:54:24'),
(23, 2, NULL, NULL, NULL, 2, '2025-02-20 20:21:00', NULL, NULL, NULL, '2025-02-21 21:54:39', '2025-02-21 21:54:39'),
(25, 2, NULL, NULL, NULL, 2, '2025-02-20 20:21:00', NULL, NULL, NULL, '2025-02-21 21:54:48', '2025-02-21 21:54:48'),
(27, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-21 21:54:56', '2025-02-21 21:54:56'),
(29, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-21 21:55:03', '2025-02-21 21:55:03'),
(51, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-24 22:51:42', '2025-02-24 22:51:42'),
(53, 2, NULL, NULL, NULL, 2, '2025-02-20 20:21:00', NULL, NULL, NULL, '2025-02-24 22:51:55', '2025-02-24 22:51:55'),
(55, 2, NULL, NULL, NULL, 2, '2025-02-20 20:21:00', NULL, NULL, NULL, '2025-02-24 22:52:50', '2025-02-24 22:52:50'),
(57, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-24 22:52:58', '2025-02-24 22:52:58'),
(59, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-24 22:53:15', '2025-02-24 22:53:15'),
(61, 2, NULL, NULL, NULL, 2, '2025-02-20 20:20:00', NULL, NULL, NULL, '2025-02-26 23:04:09', '2025-02-26 23:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `entries_authors`
--

CREATE TABLE `entries_authors` (
  `entryId` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entries_authors`
--

INSERT INTO `entries_authors` (`entryId`, `authorId`, `sortOrder`) VALUES
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(9, 1, 1),
(10, 1, 1),
(11, 1, 1),
(12, 1, 1),
(13, 1, 1),
(21, 1, 1),
(23, 1, 1),
(25, 1, 1),
(27, 1, 1),
(29, 1, 1),
(51, 1, 1),
(53, 1, 1),
(55, 1, 1),
(57, 1, 1),
(59, 1, 1),
(61, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT 1,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text DEFAULT NULL,
  `titleFormat` varchar(255) DEFAULT NULL,
  `showSlugField` tinyint(1) DEFAULT 1,
  `slugTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `slugTranslationKeyFormat` text DEFAULT NULL,
  `showStatusField` tinyint(1) DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `fieldLayoutId`, `name`, `handle`, `icon`, `color`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `showSlugField`, `slugTranslationMethod`, `slugTranslationKeyFormat`, `showStatusField`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 'Home', 'home', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-02-20 00:11:29', '2025-02-20 00:11:29', '2025-02-20 13:18:49', 'a2c57eb5-871e-418c-b9d3-7304478210ac'),
(2, 2, 'Attraction', 'attraction', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2025-02-20 13:42:15', '2025-02-20 13:42:15', NULL, '1264d574-2584-463c-ab24-7619f2f65aa3');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`config`)),
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `config`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '{\"tabs\":[{\"name\":\"Content\",\"uid\":\"7f0ba08f-5a8e-4cb6-be10-2c7eb08b6648\",\"userCondition\":null,\"elementCondition\":null,\"elements\":[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"inputType\":null,\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-20T00:10:17+00:00\",\"uid\":\"41098de4-26fa-491b-9d78-3fc97ab87995\",\"userCondition\":null,\"elementCondition\":null,\"required\":true}]}],\"cardView\":[]}', '2025-02-20 00:11:29', '2025-02-20 00:11:29', '2025-02-20 13:18:49', 'd183be30-e3bd-4f96-a4b5-9034873f6152'),
(2, 'craft\\elements\\Entry', '{\"tabs\":[{\"name\":\"Content\",\"uid\":\"52238737-ee44-4c03-b95b-75f767ac9868\",\"userCondition\":null,\"elementCondition\":null,\"elements\":[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"inputType\":null,\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-20T13:37:38+00:00\",\"uid\":\"fa6b74ad-e45a-4468-9542-cf78e4b6a8a4\",\"userCondition\":null,\"elementCondition\":null,\"required\":true},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"handle\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-20T13:42:15+00:00\",\"uid\":\"de009d7a-d048-4b13-8bac-58a7b5d9d252\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"90a7169e-15c3-40d2-9153-d117ac9bf0d2\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"handle\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-21T21:54:07+00:00\",\"uid\":\"7a416fb8-d9b2-4ff8-94da-537177c82a67\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"43d4c7a2-cd9d-46af-b86f-877820578614\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"handle\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-24T22:42:19+00:00\",\"uid\":\"19d61397-61ee-49e2-96cc-965b6312602c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"ccec9a0b-e550-4cb1-99b5-d846601875b1\"}]}],\"cardView\":[]}', '2025-02-20 13:42:15', '2025-02-24 22:42:19', NULL, 'c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb'),
(3, 'craft\\elements\\Category', '{\"tabs\":[{\"name\":\"Content\",\"uid\":\"8a3365a8-01ee-44dd-b326-30a75369aa58\",\"userCondition\":null,\"elementCondition\":null,\"elements\":[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"inputType\":null,\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-21T21:21:58+00:00\",\"uid\":\"12b20434-82f9-4fd4-b4b7-f65a29f20cf4\",\"userCondition\":null,\"elementCondition\":null}]}],\"cardView\":[]}', '2025-02-21 21:25:29', '2025-02-21 21:25:29', '2025-02-21 21:48:25', '081bf5b6-292c-4fae-bc44-70836fed61a3'),
(4, 'craft\\elements\\Category', '{\"tabs\":[{\"name\":\"Content\",\"uid\":\"3eb41bfd-28d5-49dc-923c-0fe11c3801d9\",\"userCondition\":null,\"elementCondition\":null,\"elements\":[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"inputType\":null,\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-21T21:24:32+00:00\",\"uid\":\"986f12c3-8c9d-49ed-9e97-c40c655de231\",\"userCondition\":null,\"elementCondition\":null}]}],\"cardView\":[]}', '2025-02-21 21:25:42', '2025-02-21 21:25:42', '2025-02-21 21:48:23', 'a7e5ab6e-4493-4a01-bb09-553849df1acd'),
(5, 'craft\\elements\\Category', '{\"tabs\":[{\"name\":\"Content\",\"uid\":\"7d2fcd5d-688a-4715-b455-ee00b882e812\",\"userCondition\":null,\"elementCondition\":null,\"elements\":[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"inputType\":null,\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-21T21:24:44+00:00\",\"uid\":\"a70b7056-6744-49f4-9745-8006811e84f8\",\"userCondition\":null,\"elementCondition\":null}]}],\"cardView\":[]}', '2025-02-21 21:26:12', '2025-02-21 21:26:12', '2025-02-21 21:48:21', '252ef357-348f-4741-8586-4a0994264c90'),
(6, 'craft\\elements\\Category', '{\"tabs\":[{\"name\":\"Content\",\"uid\":\"41735ae5-572a-4ce1-b4e3-a1b7f7d85630\",\"userCondition\":null,\"elementCondition\":null,\"elements\":[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"inputType\":null,\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-21T21:25:29+00:00\",\"uid\":\"42b0a770-08b3-4a95-826d-ab9d12cc46a4\",\"userCondition\":null,\"elementCondition\":null}]}],\"cardView\":[]}', '2025-02-21 21:26:34', '2025-02-21 21:26:34', '2025-02-21 21:48:27', '4f1049c7-ba2d-46d2-8860-8898bc3d747f'),
(7, 'craft\\elements\\Category', '{\"tabs\":[{\"name\":\"Content\",\"uid\":\"d451ef8b-9e40-4dc7-b805-1d27862452f8\",\"userCondition\":null,\"elementCondition\":null,\"elements\":[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"inputType\":null,\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-21T21:47:28+00:00\",\"uid\":\"2ace36a8-8e56-411e-8b75-bbafa6ffa361\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"handle\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-26T23:06:33+00:00\",\"uid\":\"f6f93b13-7ec4-4c30-9fc5-3bbd3aebd00c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"99e89e8c-2f81-4d8c-8b2c-69103d90aac1\"}]}],\"cardView\":[]}', '2025-02-21 21:48:42', '2025-02-26 23:06:33', NULL, 'fe38b789-8d2f-4348-967e-4f186594b4b3'),
(8, 'craft\\elements\\Asset', '{\"tabs\":[{\"name\":\"Content\",\"uid\":\"fde6670b-1ddb-480f-a5bb-8c1ba99dba54\",\"userCondition\":null,\"elementCondition\":null,\"elements\":[{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\",\"inputType\":null,\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-24T22:13:04+00:00\",\"uid\":\"91dce2fa-0781-47ce-973f-254449189996\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"handle\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-24T22:18:15+00:00\",\"uid\":\"fcd1060d-206d-4e6f-bc5d-5e34b79c63f2\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"533a274c-9c05-42ad-829b-9b578cfccaec\"}]}],\"cardView\":[]}', '2025-02-24 22:17:02', '2025-02-24 22:18:15', '2025-02-24 22:20:46', '14581f23-c026-4a89-ba1e-b8f72114f9b8'),
(9, 'craft\\elements\\Asset', '{\"tabs\":[{\"name\":\"Content\",\"uid\":\"26e47949-bb5f-4a24-a128-d62d0e999794\",\"userCondition\":null,\"elementCondition\":null,\"elements\":[{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\",\"inputType\":null,\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-24T22:30:09+00:00\",\"uid\":\"721d7466-06d9-43eb-a026-6eeb5095843d\",\"userCondition\":null,\"elementCondition\":null}]}],\"cardView\":[]}', '2025-02-24 22:32:24', '2025-02-24 22:32:24', '2025-02-24 22:36:55', 'ea0af785-7b3f-48ce-b5b7-7de8e024d411'),
(10, 'craft\\elements\\Asset', '{\"tabs\":[{\"name\":\"Content\",\"uid\":\"d29a5e50-bed2-4f24-820c-68526b801403\",\"userCondition\":null,\"elementCondition\":null,\"elements\":[{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\",\"inputType\":null,\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-24T22:36:12+00:00\",\"uid\":\"fe23a6f1-0ea0-40d0-938d-680290ebf66f\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AltField\",\"attribute\":\"alt\",\"requirable\":true,\"class\":null,\"rows\":null,\"cols\":null,\"name\":null,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"providesThumbs\":false,\"includeInCards\":false,\"width\":100,\"dateAdded\":\"2025-02-24T22:39:38+00:00\",\"uid\":\"bfa8ff0a-8978-4318-b22b-8d320ab59dc0\",\"userCondition\":null,\"elementCondition\":null}]}],\"cardView\":[]}', '2025-02-24 22:39:44', '2025-02-24 22:39:44', NULL, '598e2d4a-c400-4ccd-a4a2-2dbcc30944f8');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `searchable` tinyint(1) NOT NULL DEFAULT 1,
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `name`, `handle`, `context`, `columnSuffix`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Description', 'description', 'global', NULL, 'This describes what the local attractions is', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"initialRows\":4,\"multiline\":true,\"placeholder\":null,\"uiMode\":\"normal\"}', '2025-02-20 13:40:36', '2025-02-20 13:40:36', NULL, '90a7169e-15c3-40d2-9153-d117ac9bf0d2'),
(2, 'Category', 'category', 'global', NULL, NULL, 1, 'none', NULL, 'craft\\fields\\Categories', '{\"allowSelfRelations\":false,\"branchLimit\":null,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"source\":\"group:275a9cff-d3a5-4be7-b9b8-c0a50483b9f7\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2025-02-21 21:53:24', '2025-02-21 21:53:24', NULL, '43d4c7a2-cd9d-46af-b86f-877820578614'),
(3, 'Attraction Image', 'attractionImage', 'global', NULL, 'An image of the attraction', 0, 'none', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:e5c49c65-2508-4a15-b084-fa5cdbbc801c\",\"defaultUploadLocationSubpath\":null,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:e5c49c65-2508-4a15-b084-fa5cdbbc801c\",\"restrictedLocationSubpath\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2025-02-24 22:04:50', '2025-02-24 22:33:17', '2025-02-24 22:40:35', '533a274c-9c05-42ad-829b-9b578cfccaec'),
(4, 'Attraction Image', 'attractionImage', 'global', NULL, NULL, 1, 'none', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:63202292-59a4-4ab4-99f0-1b9dd44a21a6\",\"defaultUploadLocationSubpath\":null,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:63202292-59a4-4ab4-99f0-1b9dd44a21a6\",\"restrictedLocationSubpath\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2025-02-24 22:41:42', '2025-02-24 23:11:53', NULL, 'ccec9a0b-e550-4cb1-99b5-d846601875b1'),
(5, 'Colour', 'colour', 'global', NULL, 'The colour of the element', 0, 'none', NULL, 'craft\\fields\\Color', '{\"allowCustomColors\":true}', '2025-02-26 23:05:47', '2025-02-26 23:05:47', NULL, '99e89e8c-2f81-4d8c-8b2c-69103d90aac1');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gqlschemas`
--

CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`scope`)),
  `isPublic` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gqlschemas`
--

INSERT INTO `gqlschemas` (`id`, `name`, `scope`, `isPublic`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Public Schema', '[]', 1, '2025-02-19 22:19:12', '2025-02-19 22:19:12', '974b68f1-a93a-457b-9ad8-bbe545db2570');

-- --------------------------------------------------------

--
-- Table structure for table `gqltokens`
--

CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imagetransformindex`
--

CREATE TABLE `imagetransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `transformer` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `transformString` varchar(255) NOT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT 0,
  `inProgress` tinyint(1) NOT NULL DEFAULT 0,
  `error` tinyint(1) NOT NULL DEFAULT 0,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imagetransformindex`
--

INSERT INTO `imagetransformindex` (`id`, `assetId`, `transformer`, `filename`, `format`, `transformString`, `fileExists`, `inProgress`, `error`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 46, 'craft\\imagetransforms\\ImageTransformer', 'gallery.jpg', NULL, '_30x22_crop_center-center_none', 1, 0, 0, '2025-02-26 23:02:49', '2025-02-26 23:02:49', '2025-02-26 23:02:51', 'e29a72eb-9f01-480f-8461-f69e58f3e76d'),
(2, 46, 'craft\\imagetransforms\\ImageTransformer', 'gallery.jpg', NULL, '_60x45_crop_center-center_none', 1, 0, 0, '2025-02-26 23:02:49', '2025-02-26 23:02:49', '2025-02-26 23:02:52', '10aef133-d234-4965-a01a-833789a22ba4'),
(3, 47, 'craft\\imagetransforms\\ImageTransformer', 'lakeside.avif', NULL, '_30x22_crop_center-center_none', 1, 0, 0, '2025-02-26 23:03:46', '2025-02-26 23:03:46', '2025-02-26 23:03:47', '10191949-bd61-4c22-8f84-512df47ac45f'),
(4, 47, 'craft\\imagetransforms\\ImageTransformer', 'lakeside.avif', NULL, '_60x45_crop_center-center_none', 1, 0, 0, '2025-02-26 23:03:47', '2025-02-26 23:03:47', '2025-02-26 23:03:47', 'b8d3616a-2d07-4d85-ab3d-2aacbb3414e3'),
(5, 48, 'craft\\imagetransforms\\ImageTransformer', 'market.avif', NULL, '_30x20_crop_center-center_none', 1, 0, 0, '2025-02-26 23:03:50', '2025-02-26 23:03:50', '2025-02-26 23:03:51', '6c5b74c8-1e2a-4e37-a37c-8c10e1226b29'),
(6, 48, 'craft\\imagetransforms\\ImageTransformer', 'market.avif', NULL, '_60x40_crop_center-center_none', 1, 0, 0, '2025-02-26 23:03:50', '2025-02-26 23:03:50', '2025-02-26 23:03:51', '8c32551b-0b7f-418c-9807-f11134c862b2'),
(7, 49, 'craft\\imagetransforms\\ImageTransformer', 'museum.avif', NULL, '_30x23_crop_center-center_none', 1, 0, 0, '2025-02-26 23:03:53', '2025-02-26 23:03:53', '2025-02-26 23:03:54', 'ba106307-8318-463c-a9f6-c64732b99a26'),
(8, 49, 'craft\\imagetransforms\\ImageTransformer', 'museum.avif', NULL, '_60x47_crop_center-center_none', 1, 0, 0, '2025-02-26 23:03:53', '2025-02-26 23:03:53', '2025-02-26 23:03:54', '1414d17b-68aa-4e4f-b080-b50980427b49'),
(9, 45, 'craft\\imagetransforms\\ImageTransformer', 'castle.jpg', NULL, '_30x20_crop_center-center_none', 1, 0, 0, '2025-02-26 23:03:56', '2025-02-26 23:03:56', '2025-02-26 23:03:57', 'a0b35268-0256-4870-8303-809bb2e0610c'),
(10, 45, 'craft\\imagetransforms\\ImageTransformer', 'castle.jpg', NULL, '_60x40_crop_center-center_none', 1, 0, 0, '2025-02-26 23:03:56', '2025-02-26 23:03:56', '2025-02-26 23:03:57', 'a75644cc-d727-442c-a980-f10e33519a23'),
(17, 47, 'craft\\imagetransforms\\ImageTransformer', 'lakeside.avif', NULL, '_253x190_crop_center-center_none', 1, 0, 0, '2025-03-05 19:45:05', '2025-03-05 19:45:05', '2025-03-05 19:45:06', '96807ddd-1bb5-4dcc-bba6-8452986899b2'),
(18, 47, 'craft\\imagetransforms\\ImageTransformer', 'lakeside.avif', NULL, '_506x380_crop_center-center_none', 1, 0, 0, '2025-03-05 19:45:05', '2025-03-05 19:45:05', '2025-03-05 19:45:07', 'ad24d226-1aa5-464b-8f6a-0e8a5102d371');

-- --------------------------------------------------------

--
-- Table structure for table `imagetransforms`
--

CREATE TABLE `imagetransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop','letterbox') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `fill` varchar(11) DEFAULT NULL,
  `upscale` tinyint(1) NOT NULL DEFAULT 1,
  `parameterChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '5.6.7', '5.6.0.2', 0, 'nyrmbbesapae', '3@wscirkxjsd', '2025-02-19 22:17:31', '2025-03-09 20:58:17', '623f213a-e542-4289-ab10-5c4b91cb94c9');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '90dd3d82-aafd-448f-a698-9b67ffa0ca2c'),
(2, 'craft', 'm221101_115859_create_entries_authors_table', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', 'dfa05e9f-20bc-464c-83e1-e90a0ffbf3f4'),
(3, 'craft', 'm221107_112121_add_max_authors_to_sections', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '4fbc3f57-45dd-40a2-8935-93f09214cbc9'),
(4, 'craft', 'm221205_082005_translatable_asset_alt_text', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '6e10ca3b-b4b9-4fb1-95f4-68c591f6d79b'),
(5, 'craft', 'm230314_110309_add_authenticator_table', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '974b53b9-b20b-493a-b443-734588d6194c'),
(6, 'craft', 'm230314_111234_add_webauthn_table', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '7ff43bda-d6fd-4568-85b7-9ece6e597d0b'),
(7, 'craft', 'm230503_120303_add_recoverycodes_table', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', 'c83c5f61-6b87-41f1-b215-f3bb9c567a53'),
(8, 'craft', 'm230511_000000_field_layout_configs', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '56954698-1c38-4346-9e47-93f1ad16b8c7'),
(9, 'craft', 'm230511_215903_content_refactor', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '5f72a28c-ef16-4bed-be82-45355ff95b77'),
(10, 'craft', 'm230524_000000_add_entry_type_show_slug_field', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '868222bf-cb38-430b-93f2-91056a42800d'),
(11, 'craft', 'm230524_000001_entry_type_icons', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '87201120-95c2-4310-a9b9-128782e01c7c'),
(12, 'craft', 'm230524_000002_entry_type_colors', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', 'cda8783d-bc10-47b3-a272-a8bf9b93d0f6'),
(13, 'craft', 'm230524_220029_global_entry_types', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '65c864d0-a25f-4e36-a53b-088f98c77ce9'),
(14, 'craft', 'm230531_123004_add_entry_type_show_status_field', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '1d9558d8-32cc-4a84-82fe-0cf2a34328af'),
(15, 'craft', 'm230607_102049_add_entrytype_slug_translation_columns', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '3706c061-5541-4d73-92a6-be46ca932971'),
(16, 'craft', 'm230616_173810_kill_field_groups', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '4daa8f61-83a7-4673-aa3f-125a99db72cd'),
(17, 'craft', 'm230616_183820_remove_field_name_limit', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '8bd398a6-6d69-4cfa-8282-3a96916520cd'),
(18, 'craft', 'm230617_070415_entrify_matrix_blocks', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '818734e3-7eab-43fc-ae6e-da012abe679d'),
(19, 'craft', 'm230710_162700_element_activity', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2d0656ce-ea06-4a54-a245-f99794d7762d'),
(20, 'craft', 'm230820_162023_fix_cache_id_type', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', 'af63bec0-c2ee-45c4-a9b0-4cb01d2608f2'),
(21, 'craft', 'm230826_094050_fix_session_id_type', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '5b2f7ed3-60b9-4cb1-ab66-98f1758783cc'),
(22, 'craft', 'm230904_190356_address_fields', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '362fbff4-50a0-4a9c-a49e-7d6506241d68'),
(23, 'craft', 'm230928_144045_add_subpath_to_volumes', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', 'c135f6be-19ce-4511-a5ea-508bea5244d1'),
(24, 'craft', 'm231013_185640_changedfields_amend_primary_key', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '87cefba7-ba78-46f4-ae6f-12b62bd6b566'),
(25, 'craft', 'm231213_030600_element_bulk_ops', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '05a7a1e9-b39b-4c5a-87bf-96a1aa2a7fe6'),
(26, 'craft', 'm240129_150719_sites_language_amend_length', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '0b4f1891-8b11-48f6-8c27-5cee6f38c27e'),
(27, 'craft', 'm240206_035135_convert_json_columns', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '614613bc-1adf-4463-ade6-b47d90f77056'),
(28, 'craft', 'm240207_182452_address_line_3', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '4aae2532-36d0-4c47-b3e6-43d03c5612fd'),
(29, 'craft', 'm240302_212719_solo_preview_targets', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '114b64db-f5bb-433e-839e-4e61b6586b9f'),
(30, 'craft', 'm240619_091352_add_auth_2fa_timestamp', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', 'a9481019-719a-4647-af8c-4056342ba31f'),
(31, 'craft', 'm240723_214330_drop_bulkop_fk', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', 'ae27786d-e6f8-4182-8572-23437d46f48e'),
(32, 'craft', 'm240731_053543_soft_delete_fields', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', 'e63ef790-e734-43d6-ace1-7dfaf78ce24d'),
(33, 'craft', 'm240805_154041_sso_identities', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '1bc41dad-025d-4073-8c5b-91a86a19ea1b'),
(34, 'craft', 'm240926_202248_track_entries_deleted_with_section', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '27ceb24e-f606-4c3c-ba22-8230e1167423'),
(35, 'craft', 'm241120_190905_user_affiliated_sites', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', 'b61c59a3-79f9-4eee-b2d8-d3504b207345'),
(36, 'craft', 'm241125_122914_add_viewUsers_permission', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '94b25d2d-ef2c-4fb7-bc77-5dec4b637d99'),
(37, 'craft', 'm250119_135304_entry_type_overrides', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2a7a3760-ad1b-40be-9526-7f052767c111');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projectconfig`
--

CREATE TABLE `projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projectconfig`
--

INSERT INTO `projectconfig` (`path`, `value`) VALUES
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.defaultPlacement', '\"end\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elementCondition', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.autocapitalize', 'true'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.autocomplete', 'false'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.autocorrect', 'true'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.class', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.dateAdded', '\"2025-02-21T21:47:28+00:00\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.disabled', 'false'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.elementCondition', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.id', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.includeInCards', 'false'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.inputType', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.instructions', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.label', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.max', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.min', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.name', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.orientation', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.placeholder', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.providesThumbs', 'false'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.readonly', 'false'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.requirable', 'false'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.size', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.step', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.tip', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.title', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.uid', '\"2ace36a8-8e56-411e-8b75-bbafa6ffa361\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.userCondition', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.warning', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.0.width', '100'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.dateAdded', '\"2025-02-26T23:06:33+00:00\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.elementCondition', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.fieldUid', '\"99e89e8c-2f81-4d8c-8b2c-69103d90aac1\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.handle', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.includeInCards', 'false'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.instructions', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.label', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.providesThumbs', 'false'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.required', 'false'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.tip', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.uid', '\"f6f93b13-7ec4-4c30-9fc5-3bbd3aebd00c\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.userCondition', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.warning', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.elements.1.width', '100'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.name', '\"Content\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.uid', '\"d451ef8b-9e40-4dc7-b805-1d27862452f8\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.fieldLayouts.fe38b789-8d2f-4348-967e-4f186594b4b3.tabs.0.userCondition', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.handle', '\"attractionCategories\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.name', '\"Attraction Categories\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.siteSettings.c5d850e9-72ca-44a4-be22-17219e818e5d.hasUrls', 'true'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.siteSettings.c5d850e9-72ca-44a4-be22-17219e818e5d.template', '\"attractions/_category.twig\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.siteSettings.c5d850e9-72ca-44a4-be22-17219e818e5d.uriFormat', '\"attractions/{slug}\"'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.structure.maxLevels', 'null'),
('categoryGroups.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7.structure.uid', '\"baf07778-f878-45bb-991f-a1235d2ab7e7\"'),
('dateModified', '1741553897'),
('elementSources.craft\\elements\\Category.0.defaultSort.0', '\"structure\"'),
('elementSources.craft\\elements\\Category.0.defaultSort.1', '\"asc\"'),
('elementSources.craft\\elements\\Category.0.defaultViewMode', '\"\"'),
('elementSources.craft\\elements\\Category.0.disabled', 'true'),
('elementSources.craft\\elements\\Category.0.key', '\"group:1befa042-9ee8-465d-aea6-8bbb90cba8f4\"'),
('elementSources.craft\\elements\\Category.0.tableAttributes.0', '\"status\"'),
('elementSources.craft\\elements\\Category.0.tableAttributes.1', '\"link\"'),
('elementSources.craft\\elements\\Category.0.type', '\"native\"'),
('elementSources.craft\\elements\\Category.1.defaultSort.0', '\"structure\"'),
('elementSources.craft\\elements\\Category.1.defaultSort.1', '\"asc\"'),
('elementSources.craft\\elements\\Category.1.defaultViewMode', '\"\"'),
('elementSources.craft\\elements\\Category.1.disabled', 'true'),
('elementSources.craft\\elements\\Category.1.key', '\"group:6e70ce52-e398-436d-9a87-955ddb91e70e\"'),
('elementSources.craft\\elements\\Category.1.tableAttributes.0', '\"status\"'),
('elementSources.craft\\elements\\Category.1.tableAttributes.1', '\"link\"'),
('elementSources.craft\\elements\\Category.1.type', '\"native\"'),
('elementSources.craft\\elements\\Category.2.defaultSort.0', '\"structure\"'),
('elementSources.craft\\elements\\Category.2.defaultSort.1', '\"asc\"'),
('elementSources.craft\\elements\\Category.2.defaultViewMode', '\"structure\"'),
('elementSources.craft\\elements\\Category.2.disabled', 'true'),
('elementSources.craft\\elements\\Category.2.key', '\"group:d09efc85-65d3-414b-8f8c-5422e1574cfe\"'),
('elementSources.craft\\elements\\Category.2.tableAttributes.0', '\"status\"'),
('elementSources.craft\\elements\\Category.2.tableAttributes.1', '\"link\"'),
('elementSources.craft\\elements\\Category.2.type', '\"native\"'),
('elementSources.craft\\elements\\Category.3.defaultSort.0', '\"structure\"'),
('elementSources.craft\\elements\\Category.3.defaultSort.1', '\"asc\"'),
('elementSources.craft\\elements\\Category.3.defaultViewMode', '\"\"'),
('elementSources.craft\\elements\\Category.3.disabled', 'true'),
('elementSources.craft\\elements\\Category.3.key', '\"group:3fbca60c-c8cc-400e-ae71-2b833140cedd\"'),
('elementSources.craft\\elements\\Category.3.tableAttributes.0', '\"status\"'),
('elementSources.craft\\elements\\Category.3.tableAttributes.1', '\"link\"'),
('elementSources.craft\\elements\\Category.3.type', '\"native\"'),
('email.fromEmail', '\"gregsternik07@gmail.com\"'),
('email.fromName', '\"mywebsite\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.color', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elementCondition', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.class', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.dateAdded', '\"2025-02-20T13:37:38+00:00\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.disabled', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.id', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.inputType', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.instructions', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.label', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.max', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.min', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.name', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.orientation', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.readonly', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.required', 'true'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.size', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.step', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.tip', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.title', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.uid', '\"fa6b74ad-e45a-4468-9542-cf78e4b6a8a4\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.warning', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.0.width', '100'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.dateAdded', '\"2025-02-20T13:42:15+00:00\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.fieldUid', '\"90a7169e-15c3-40d2-9153-d117ac9bf0d2\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.handle', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.instructions', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.label', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.required', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.tip', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.uid', '\"de009d7a-d048-4b13-8bac-58a7b5d9d252\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.warning', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.1.width', '100'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.dateAdded', '\"2025-02-21T21:54:07+00:00\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.fieldUid', '\"43d4c7a2-cd9d-46af-b86f-877820578614\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.handle', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.instructions', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.label', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.required', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.tip', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.uid', '\"7a416fb8-d9b2-4ff8-94da-537177c82a67\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.warning', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.2.width', '100'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.dateAdded', '\"2025-02-24T22:42:19+00:00\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.fieldUid', '\"ccec9a0b-e550-4cb1-99b5-d846601875b1\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.handle', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.includeInCards', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.instructions', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.label', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.providesThumbs', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.required', 'false'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.tip', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.uid', '\"19d61397-61ee-49e2-96cc-965b6312602c\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.warning', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.elements.3.width', '100'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.name', '\"Content\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.uid', '\"52238737-ee44-4c03-b95b-75f767ac9868\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.fieldLayouts.c59de8cd-bd4c-4f68-b2c6-e44d1d2e61fb.tabs.0.userCondition', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.handle', '\"attraction\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.hasTitleField', 'true'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.icon', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.name', '\"Attraction\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.showSlugField', 'true'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.showStatusField', 'true'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.slugTranslationKeyFormat', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.slugTranslationMethod', '\"site\"'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.titleFormat', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.titleTranslationKeyFormat', 'null'),
('entryTypes.1264d574-2584-463c-ab24-7619f2f65aa3.titleTranslationMethod', '\"site\"'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.columnSuffix', 'null'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.handle', '\"category\"'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.instructions', 'null'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.name', '\"Category\"'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.searchable', 'true'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.settings.allowSelfRelations', 'false'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.settings.branchLimit', 'null'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.settings.maintainHierarchy', 'false'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.settings.maxRelations', 'null'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.settings.minRelations', 'null'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.settings.selectionLabel', 'null'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.settings.showCardsInGrid', 'false'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.settings.showSiteMenu', 'false'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.settings.source', '\"group:275a9cff-d3a5-4be7-b9b8-c0a50483b9f7\"'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.settings.targetSiteId', 'null'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.settings.validateRelatedElements', 'false'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.settings.viewMode', '\"list\"'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.translationKeyFormat', 'null'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.translationMethod', '\"none\"'),
('fields.43d4c7a2-cd9d-46af-b86f-877820578614.type', '\"craft\\\\fields\\\\Categories\"'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.columnSuffix', 'null'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.handle', '\"description\"'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.instructions', '\"This describes what the local attractions is\"'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.name', '\"Description\"'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.searchable', 'true'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.settings.byteLimit', 'null'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.settings.charLimit', 'null'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.settings.code', 'false'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.settings.initialRows', '4'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.settings.multiline', 'true'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.settings.placeholder', 'null'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.settings.uiMode', '\"normal\"'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.translationKeyFormat', 'null'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.translationMethod', '\"none\"'),
('fields.90a7169e-15c3-40d2-9153-d117ac9bf0d2.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.99e89e8c-2f81-4d8c-8b2c-69103d90aac1.columnSuffix', 'null'),
('fields.99e89e8c-2f81-4d8c-8b2c-69103d90aac1.handle', '\"colour\"'),
('fields.99e89e8c-2f81-4d8c-8b2c-69103d90aac1.instructions', '\"The colour of the element\"'),
('fields.99e89e8c-2f81-4d8c-8b2c-69103d90aac1.name', '\"Colour\"'),
('fields.99e89e8c-2f81-4d8c-8b2c-69103d90aac1.searchable', 'false'),
('fields.99e89e8c-2f81-4d8c-8b2c-69103d90aac1.settings.allowCustomColors', 'true'),
('fields.99e89e8c-2f81-4d8c-8b2c-69103d90aac1.translationKeyFormat', 'null'),
('fields.99e89e8c-2f81-4d8c-8b2c-69103d90aac1.translationMethod', '\"none\"'),
('fields.99e89e8c-2f81-4d8c-8b2c-69103d90aac1.type', '\"craft\\\\fields\\\\Color\"'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.columnSuffix', 'null'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.handle', '\"attractionImage\"'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.instructions', 'null'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.name', '\"Attraction Image\"'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.searchable', 'true'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.allowedKinds', 'null'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.allowSelfRelations', 'false'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.allowSubfolders', 'false'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.allowUploads', 'true'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.branchLimit', 'null'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.defaultUploadLocationSource', '\"volume:63202292-59a4-4ab4-99f0-1b9dd44a21a6\"'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.defaultUploadLocationSubpath', 'null'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.maintainHierarchy', 'false'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.maxRelations', 'null'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.minRelations', 'null'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.previewMode', '\"full\"'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.restrictedLocationSource', '\"volume:63202292-59a4-4ab4-99f0-1b9dd44a21a6\"'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.restrictedLocationSubpath', 'null'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.restrictFiles', 'false'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.restrictLocation', 'false'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.selectionLabel', 'null'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.showCardsInGrid', 'false'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.showSiteMenu', 'true'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.showUnpermittedFiles', 'false'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.showUnpermittedVolumes', 'false'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.sources', '\"*\"'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.targetSiteId', 'null'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.validateRelatedElements', 'false'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.settings.viewMode', '\"list\"'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.translationKeyFormat', 'null'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.translationMethod', '\"none\"'),
('fields.ccec9a0b-e550-4cb1-99b5-d846601875b1.type', '\"craft\\\\fields\\\\Assets\"'),
('fs.assets.hasUrls', 'true'),
('fs.assets.name', '\"Assets\"'),
('fs.assets.settings.path', '\"C:/xampp/htdocs/craftcms/web/uploads/assets\"'),
('fs.assets.type', '\"craft\\\\fs\\\\Local\"'),
('fs.assets.url', '\"http://localhost/craftcms/web/uploads/assets/\"'),
('graphql.schemas.974b68f1-a93a-457b-9ad8-bbe545db2570.isPublic', 'true'),
('graphql.schemas.974b68f1-a93a-457b-9ad8-bbe545db2570.name', '\"Public Schema\"'),
('meta.__names__.1264d574-2584-463c-ab24-7619f2f65aa3', '\"Attraction\"'),
('meta.__names__.1718735a-958d-412d-89f5-7c112232edff', '\"mywebsite\"'),
('meta.__names__.275a9cff-d3a5-4be7-b9b8-c0a50483b9f7', '\"Attraction Categories\"'),
('meta.__names__.43d4c7a2-cd9d-46af-b86f-877820578614', '\"Category\"'),
('meta.__names__.44449a1a-7458-4625-9361-a7af0b55e56f', '\"Attractions\"'),
('meta.__names__.63202292-59a4-4ab4-99f0-1b9dd44a21a6', '\"Images\"'),
('meta.__names__.90a7169e-15c3-40d2-9153-d117ac9bf0d2', '\"Description\"'),
('meta.__names__.974b68f1-a93a-457b-9ad8-bbe545db2570', '\"Public Schema\"'),
('meta.__names__.99e89e8c-2f81-4d8c-8b2c-69103d90aac1', '\"Colour\"'),
('meta.__names__.c5d850e9-72ca-44a4-be22-17219e818e5d', '\"Destination Explorer\"'),
('meta.__names__.ccec9a0b-e550-4cb1-99b5-d846601875b1', '\"Attraction Image\"'),
('routes.5d6b1f05-d0c2-4c3f-a262-54c550666359.siteUid', 'null'),
('routes.5d6b1f05-d0c2-4c3f-a262-54c550666359.sortOrder', '1'),
('routes.5d6b1f05-d0c2-4c3f-a262-54c550666359.template', '\"destination-explorer.twig\"'),
('routes.5d6b1f05-d0c2-4c3f-a262-54c550666359.uriParts.0', '\"destination-explorer\"'),
('routes.5d6b1f05-d0c2-4c3f-a262-54c550666359.uriPattern', '\"destination-explorer\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.defaultPlacement', '\"end\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.enableVersioning', 'true'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.entryTypes.0.uid', '\"1264d574-2584-463c-ab24-7619f2f65aa3\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.handle', '\"Attractions\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.maxAuthors', '1'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.name', '\"Attractions\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.propagationMethod', '\"all\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.siteSettings.c5d850e9-72ca-44a4-be22-17219e818e5d.enabledByDefault', 'true'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.siteSettings.c5d850e9-72ca-44a4-be22-17219e818e5d.hasUrls', 'true'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.siteSettings.c5d850e9-72ca-44a4-be22-17219e818e5d.template', '\"destination-explorer.twig\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.siteSettings.c5d850e9-72ca-44a4-be22-17219e818e5d.uriFormat', '\"destination-explorer/{slug}\"'),
('sections.44449a1a-7458-4625-9361-a7af0b55e56f.type', '\"channel\"'),
('siteGroups.1718735a-958d-412d-89f5-7c112232edff.name', '\"mywebsite\"'),
('sites.c5d850e9-72ca-44a4-be22-17219e818e5d.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.c5d850e9-72ca-44a4-be22-17219e818e5d.enabled', 'true'),
('sites.c5d850e9-72ca-44a4-be22-17219e818e5d.handle', '\"default\"'),
('sites.c5d850e9-72ca-44a4-be22-17219e818e5d.hasUrls', 'true'),
('sites.c5d850e9-72ca-44a4-be22-17219e818e5d.language', '\"en-US\"'),
('sites.c5d850e9-72ca-44a4-be22-17219e818e5d.name', '\"Destination Explorer\"'),
('sites.c5d850e9-72ca-44a4-be22-17219e818e5d.primary', 'true'),
('sites.c5d850e9-72ca-44a4-be22-17219e818e5d.siteGroup', '\"1718735a-958d-412d-89f5-7c112232edff\"'),
('sites.c5d850e9-72ca-44a4-be22-17219e818e5d.sortOrder', '1'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"mywebsite\"'),
('system.schemaVersion', '\"5.6.0.2\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.require2fa', 'false'),
('users.requireEmailVerification', 'true'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.altTranslationKeyFormat', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.altTranslationMethod', '\"none\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elementCondition', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.autocomplete', 'false'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.autocorrect', 'true'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.class', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.dateAdded', '\"2025-02-24T22:36:12+00:00\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.disabled', 'false'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.elementCondition', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.id', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.includeInCards', 'false'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.inputType', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.instructions', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.label', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.max', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.min', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.name', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.orientation', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.placeholder', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.providesThumbs', 'false'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.readonly', 'false'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.requirable', 'false'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.size', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.step', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.tip', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.title', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.uid', '\"fe23a6f1-0ea0-40d0-938d-680290ebf66f\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.userCondition', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.warning', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.0.width', '100'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.attribute', '\"alt\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.class', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.cols', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.dateAdded', '\"2025-02-24T22:39:38+00:00\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.disabled', 'false'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.elementCondition', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.id', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.includeInCards', 'false'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.instructions', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.label', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.name', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.orientation', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.placeholder', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.providesThumbs', 'false'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.readonly', 'false'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.requirable', 'true'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.required', 'false'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.rows', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.tip', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.title', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\assets\\\\AltField\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.uid', '\"bfa8ff0a-8978-4318-b22b-8d320ab59dc0\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.userCondition', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.warning', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.elements.1.width', '100'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.name', '\"Content\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.uid', '\"d29a5e50-bed2-4f24-820c-68526b801403\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fieldLayouts.598e2d4a-c400-4ccd-a4a2-2dbcc30944f8.tabs.0.userCondition', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.fs', '\"assets\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.handle', '\"images\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.name', '\"Images\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.sortOrder', '3'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.subpath', '\"images\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.titleTranslationKeyFormat', 'null'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.titleTranslationMethod', '\"site\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.transformFs', '\"assets\"'),
('volumes.63202292-59a4-4ab4-99f0-1b9dd44a21a6.transformSubpath', '\"\"');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text DEFAULT NULL,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) UNSIGNED NOT NULL DEFAULT 1024,
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT 0,
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT 0,
  `dateFailed` datetime DEFAULT NULL,
  `error` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recoverycodes`
--

CREATE TABLE `recoverycodes` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `recoveryCodes` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 2, 6, NULL, 17, 1, '2025-02-21 21:54:24', '2025-02-21 21:54:24', '254d881f-8869-4e39-bdcb-5559df196966'),
(3, 2, 21, NULL, 17, 1, '2025-02-21 21:54:24', '2025-02-21 21:54:24', 'c214d41b-b441-46eb-8b07-b0ebc4b48d3d'),
(5, 2, 10, NULL, 18, 1, '2025-02-21 21:54:39', '2025-02-21 21:54:39', 'ea2329a0-7758-4c1d-88c7-ba3c3e1a5f70'),
(6, 2, 23, NULL, 18, 1, '2025-02-21 21:54:39', '2025-02-21 21:54:39', '58da0f86-a66c-4671-a665-452b5b3884be'),
(9, 2, 25, NULL, 18, 1, '2025-02-21 21:54:48', '2025-02-21 21:54:48', '16b72740-dbbf-4c87-b4de-1f1bd5cfb7a2'),
(11, 2, 8, NULL, 19, 1, '2025-02-21 21:54:56', '2025-02-21 21:54:56', '63d5ed68-2ce0-4f90-87c1-7ade8190f07e'),
(12, 2, 27, NULL, 19, 1, '2025-02-21 21:54:56', '2025-02-21 21:54:56', '690971e7-525b-4984-9adc-096bf6644466'),
(14, 2, 4, NULL, 16, 1, '2025-02-21 21:55:03', '2025-02-21 21:55:03', 'ea983255-9db4-46a0-b1d3-ad6c1e52eba9'),
(15, 2, 29, NULL, 16, 1, '2025-02-21 21:55:03', '2025-02-21 21:55:03', '1129cd9a-691a-4420-a2fe-827238c91386'),
(18, 4, 6, NULL, 46, 1, '2025-02-24 22:51:42', '2025-02-24 22:51:42', 'a6e007f9-4fa8-48ad-a1d2-9dec82582a5b'),
(19, 2, 51, NULL, 17, 1, '2025-02-24 22:51:42', '2025-02-24 22:51:42', '15df20f8-0b23-4872-8861-4a31883416b5'),
(20, 4, 51, NULL, 46, 1, '2025-02-24 22:51:42', '2025-02-24 22:51:42', '03036efc-3658-438c-8a23-cde2623f309f'),
(23, 4, 10, NULL, 47, 1, '2025-02-24 22:51:54', '2025-02-24 22:51:54', '18c3c7b3-2354-43fb-a929-238bad5d6fff'),
(24, 2, 53, NULL, 18, 1, '2025-02-24 22:51:55', '2025-02-24 22:51:55', '646c2132-fc72-425c-a367-fed77885495f'),
(25, 4, 53, NULL, 47, 1, '2025-02-24 22:51:55', '2025-02-24 22:51:55', 'e26854c6-c025-405a-ad70-e0dba46556f5'),
(29, 2, 12, NULL, 16, 1, '2025-02-24 22:52:50', '2025-02-24 22:52:50', 'e5a78dae-2a62-4338-9bf5-23a8c50923b7'),
(30, 4, 12, NULL, 49, 1, '2025-02-24 22:52:50', '2025-02-24 22:52:50', 'e056fbf7-f2fd-4bf9-a8d1-a21a91b9cb23'),
(31, 2, 55, NULL, 16, 1, '2025-02-24 22:52:50', '2025-02-24 22:52:50', '7ba93cc4-beca-4600-8411-5d7e0af35254'),
(32, 4, 55, NULL, 49, 1, '2025-02-24 22:52:50', '2025-02-24 22:52:50', '535be27a-f7d0-46c3-8a95-fe66c69b12e8'),
(35, 4, 8, NULL, 48, 1, '2025-02-24 22:52:58', '2025-02-24 22:52:58', '6c865cc1-d794-47aa-94fc-eed2f9556bc7'),
(36, 2, 57, NULL, 19, 1, '2025-02-24 22:52:58', '2025-02-24 22:52:58', 'c1a10eca-b3cf-4c1d-89f8-8c98945ed9a3'),
(37, 4, 57, NULL, 48, 1, '2025-02-24 22:52:58', '2025-02-24 22:52:58', '274a025f-ebc9-45e5-8581-2ed9b98aa06d'),
(40, 4, 4, NULL, 45, 1, '2025-02-24 22:53:15', '2025-02-24 22:53:15', '8e094d9b-918d-4400-b561-094b172f4e80'),
(41, 2, 59, NULL, 16, 1, '2025-02-24 22:53:15', '2025-02-24 22:53:15', 'eae637df-d0b7-43e0-a74c-aaec5c41618a'),
(42, 4, 59, NULL, 45, 1, '2025-02-24 22:53:15', '2025-02-24 22:53:15', '4b4ca1b3-bb52-4b62-8713-938306835c12'),
(46, 2, 6, NULL, 16, 2, '2025-02-26 23:04:09', '2025-02-26 23:04:09', '8389817e-0b64-4b81-9790-24acd1183600'),
(47, 2, 61, NULL, 17, 1, '2025-02-26 23:04:09', '2025-02-26 23:04:09', 'f85fe194-3d5b-4617-b04a-4e820d82620d'),
(48, 2, 61, NULL, 16, 2, '2025-02-26 23:04:09', '2025-02-26 23:04:09', '23673c9f-a2df-4eea-af5c-66bb0ad3ac86'),
(49, 4, 61, NULL, 46, 1, '2025-02-26 23:04:09', '2025-02-26 23:04:09', 'df5fcd7f-d73b-41f4-8616-dc2b56b0a315');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('124805b4', '@craft/web/assets/prismjs/dist'),
('25eed3f3', '@craft/web/assets/htmx/dist'),
('3138517c', '@craft/web/assets/dashboard/dist'),
('3ba9e49f', '@craft/web/assets/routes/dist'),
('487b77b7', '@craft/web/assets/feed/dist'),
('4e419174', '@craft/web/assets/updateswidget/dist'),
('5306d05a', '@craft/web/assets/editsection/dist'),
('5ba114ca', '@craft/web/assets/jquerytouchevents/dist'),
('5bf2cba8', '@craft/web/assets/jquerypayment/dist'),
('5c431930', '@craft/web/assets/craftsupport/dist'),
('67a91176', '@craft/web/assets/picturefill/dist'),
('68dbe1ca', '@craft/web/assets/timepicker/dist'),
('7bbf076', '@craft/web/assets/jqueryui/dist'),
('8064cb9f', '@craft/web/assets/fabric/dist'),
('9275ecb4', '@craft/web/assets/admintable/dist'),
('966a23a4', '@craft/web/assets/updates/dist'),
('978dfec3', '@craft/web/assets/sites/dist'),
('a8d6fc88', '@craft/web/assets/garnish/dist'),
('c1512e66', '@craft/web/assets/theme/dist'),
('c6d2c503', '@craft/web/assets/conditionbuilder/dist'),
('ca2a665', '@craft/web/assets/userpermissions/dist'),
('cddd0d8b', '@craft/web/assets/vue/dist'),
('d0894322', '@craft/web/assets/d3/dist'),
('d5c6060', '@bower/jquery/dist'),
('d8fa4c40', '@craft/web/assets/tailwindreset/dist'),
('d9ede8a1', '@craft/web/assets/generalsettings/dist'),
('d9fdd5d0', '@craft/web/assets/velocity/dist'),
('db179c', '@craft/web/assets/fileupload/dist'),
('dbe84a95', '@craft/web/assets/iframeresizer/dist'),
('dd819fa3', '@craft/web/assets/fieldsettings/dist'),
('dda0380e', '@craft/web/assets/axios/dist'),
('dedb0ffc', '@craft/web/assets/installer/dist'),
('dfeff662', '@craft/web/assets/selectize/dist'),
('e19136a8', '@craft/web/assets/cp/dist'),
('eb89b0b9', '@craft/web/assets/xregexp/dist'),
('ecd702f', '@craft/web/assets/utilities/dist'),
('f763cfd5', '@craft/web/assets/recententries/dist');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `canonicalId`, `creatorId`, `num`, `notes`) VALUES
(1, 2, 1, 1, NULL),
(2, 4, 1, 1, ''),
(3, 6, 1, 1, ''),
(4, 8, 1, 1, ''),
(5, 10, 1, 1, ''),
(6, 12, 1, 1, ''),
(7, 6, 1, 2, 'Applied “Draft 1”'),
(8, 10, 1, 2, 'Applied “Draft 1”'),
(9, 12, 1, 2, 'Applied “Draft 1”'),
(10, 8, 1, 2, 'Applied “Draft 1”'),
(11, 4, 1, 2, 'Applied “Draft 1”'),
(12, 6, 1, 3, 'Applied “Draft 1”'),
(13, 10, 1, 3, 'Applied “Draft 1”'),
(14, 12, 1, 3, 'Applied “Draft 1”'),
(15, 8, 1, 3, 'Applied “Draft 1”'),
(16, 4, 1, 3, 'Applied “Draft 1”'),
(17, 6, 1, 4, 'Applied “Draft 1”');

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'email', 0, 1, ' gregsternik07 gmail com '),
(1, 'firstname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'slug', 0, 1, ''),
(1, 'username', 0, 1, ' admin '),
(2, 'slug', 0, 1, ' home '),
(2, 'title', 0, 1, ' home '),
(4, 'field', 1, 1, ' lorem ipsum dolor sit amet consectetur adipiscing elit donec eu eros aliquet egestas arcu sodales imperdiet magna vivamus pellentesque tempor risus sit amet dictum ipsum viverra vehicula donec rutrum tellus '),
(4, 'field', 2, 1, ' historical '),
(4, 'slug', 0, 1, ' the old castle '),
(4, 'title', 0, 1, ' the old castle '),
(6, 'field', 1, 1, ' lorem ipsum dolor sit amet consectetur adipiscing elit donec eu eros aliquet egestas arcu sodales imperdiet magna vivamus pellentesque tempor risus sit amet dictum ipsum viverra vehicula donec rutrum tellus '),
(6, 'field', 2, 1, ' cultural arts historical '),
(6, 'slug', 0, 1, ' gallery '),
(6, 'title', 0, 1, ' gallery '),
(8, 'field', 1, 1, ' lorem ipsum dolor sit amet consectetur adipiscing elit donec eu eros aliquet egestas arcu sodales imperdiet magna vivamus pellentesque tempor risus sit amet dictum ipsum viverra vehicula donec rutrum tellus '),
(8, 'field', 2, 1, ' shopping '),
(8, 'slug', 0, 1, ' market '),
(8, 'title', 0, 1, ' market '),
(10, 'field', 1, 1, ' lorem ipsum dolor sit amet consectetur adipiscing elit donec eu eros aliquet egestas arcu sodales imperdiet magna vivamus pellentesque tempor risus sit amet dictum ipsum viverra vehicula donec rutrum tellus '),
(10, 'field', 2, 1, ' nature '),
(10, 'slug', 0, 1, ' lakeside walk '),
(10, 'title', 0, 1, ' lakeside walk '),
(12, 'field', 1, 1, ' lorem ipsum dolor sit amet consectetur adipiscing elit donec eu eros aliquet egestas arcu sodales imperdiet magna vivamus pellentesque tempor risus sit amet dictum ipsum viverra vehicula donec rutrum tellus '),
(12, 'field', 2, 1, ' historical '),
(12, 'slug', 0, 1, ' local park '),
(12, 'title', 0, 1, ' museum '),
(14, 'slug', 0, 1, ' temp uffealggutmbpuesnpyavaafvxtrsjhgvkwq '),
(14, 'title', 0, 1, ''),
(15, 'slug', 0, 1, ' temp phdyaqivwabedphxfqzvquvkhquxkirduzlb '),
(15, 'title', 0, 1, ''),
(16, 'slug', 0, 1, ' historical '),
(16, 'title', 0, 1, ' historical '),
(17, 'slug', 0, 1, ' cultural arts '),
(17, 'title', 0, 1, ' cultural arts '),
(18, 'slug', 0, 1, ' nature '),
(18, 'title', 0, 1, ' nature '),
(19, 'slug', 0, 1, ' shopping '),
(19, 'title', 0, 1, ' shopping '),
(45, 'alt', 0, 1, ''),
(45, 'extension', 0, 1, ' jpg '),
(45, 'filename', 0, 1, ' castle jpg '),
(45, 'kind', 0, 1, ' image '),
(45, 'slug', 0, 1, ''),
(45, 'title', 0, 1, ' castle '),
(46, 'alt', 0, 1, ''),
(46, 'extension', 0, 1, ' jpg '),
(46, 'filename', 0, 1, ' gallery jpg '),
(46, 'kind', 0, 1, ' image '),
(46, 'slug', 0, 1, ''),
(46, 'title', 0, 1, ' gallery '),
(47, 'alt', 0, 1, ''),
(47, 'extension', 0, 1, ' avif '),
(47, 'filename', 0, 1, ' lakeside avif '),
(47, 'kind', 0, 1, ' image '),
(47, 'slug', 0, 1, ''),
(47, 'title', 0, 1, ' lakeside '),
(48, 'alt', 0, 1, ''),
(48, 'extension', 0, 1, ' avif '),
(48, 'filename', 0, 1, ' market avif '),
(48, 'kind', 0, 1, ' image '),
(48, 'slug', 0, 1, ''),
(48, 'title', 0, 1, ' market '),
(49, 'alt', 0, 1, ''),
(49, 'extension', 0, 1, ' avif '),
(49, 'filename', 0, 1, ' museum avif '),
(49, 'kind', 0, 1, ' image '),
(49, 'slug', 0, 1, ''),
(49, 'title', 0, 1, ' museum '),
(65, 'alt', 0, 1, ''),
(65, 'extension', 0, 1, ' png '),
(65, 'filename', 0, 1, ' cross png '),
(65, 'kind', 0, 1, ' image '),
(65, 'slug', 0, 1, ''),
(65, 'title', 0, 1, ' cross '),
(66, 'alt', 0, 1, ''),
(66, 'extension', 0, 1, ' png '),
(66, 'filename', 0, 1, ' menu png '),
(66, 'kind', 0, 1, ' image '),
(66, 'slug', 0, 1, ''),
(66, 'title', 0, 1, ' menu ');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT 0,
  `maxAuthors` smallint(6) UNSIGNED NOT NULL DEFAULT 1,
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `previewTargets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`previewTargets`)),
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `maxAuthors`, `propagationMethod`, `defaultPlacement`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Home', 'home', 'single', 1, 1, 'all', 'end', '[{\"label\":\"Primary entry page\",\"urlFormat\":\"{url}\",\"refresh\":\"1\"}]', '2025-02-20 00:11:33', '2025-02-20 00:11:33', '2025-02-20 12:05:40', 'f194dd7e-f7c4-43eb-9f78-a60684d1c620'),
(2, NULL, 'Attractions', 'Attractions', 'channel', 1, 1, 'all', 'end', '[{\"label\":\"Primary entry page\",\"urlFormat\":\"{url}\",\"refresh\":\"1\"}]', '2025-02-20 20:16:10', '2025-02-20 20:39:31', NULL, '44449a1a-7458-4625-9361-a7af0b55e56f');

-- --------------------------------------------------------

--
-- Table structure for table `sections_entrytypes`
--

CREATE TABLE `sections_entrytypes` (
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections_entrytypes`
--

INSERT INTO `sections_entrytypes` (`sectionId`, `typeId`, `sortOrder`, `name`, `handle`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text DEFAULT NULL,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '__home__', 'home.twig', 1, '2025-02-20 00:11:34', '2025-02-20 00:11:34', 'a8aa1ea8-1128-42eb-9017-303e195281c8'),
(2, 2, 1, 1, 'destination-explorer/{slug}', 'destination-explorer.twig', 1, '2025-02-20 20:16:10', '2025-02-20 20:16:10', '0e0ca9b3-c423-45b9-a00a-b4693195e3f8');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'yIRNz_AVStg1Fnd8rGkKm5WOKZBtkKAscifW0mQduS7Ob-sT8GSE0e4cwPknsKk1cocVR5OYTXIIi0x2L8N_6EAMchnEVTjN6sSY', '2025-02-19 22:18:36', '2025-02-24 22:02:48', '843dafd6-e05c-4909-9268-31ce480184f7'),
(2, 1, 'cmjgQh8qgvI6Pu2A3xB3Fq5QrSerIucev8sNE5hB3THUEuxkN44i35h3USJvkdSEDVtxvJL3fS3OJRfmWMbvjUvp7pCkYJpGe9YV', '2025-02-24 22:02:48', '2025-02-24 23:28:53', '6dfc1708-a3ab-422d-ac40-8cd27732b126'),
(3, 1, 'qI7ZpNa4_JXRwU0LEFgWr8nA4X1lslMc0fz0q2yaDP3CyMwVr0RZLX6hhajtnCpvmJJyGvyE-SSdPWuKsNTfODrBFCOOp3lZLruw', '2025-02-24 23:28:53', '2025-02-26 22:51:33', 'f133026d-2c47-459d-a563-26c05b8b9441'),
(4, 1, 'am8XMWuEKrACR-m_pWcLrI681Q9ZlZaVN-11mbuvZfI0bc_aBhYqK9DjDNjwBbnG3vSUT0jMkd2JKgYuTLUm9ahleFy4snlvqyNY', '2025-02-26 22:51:34', '2025-02-26 22:51:34', '334ea2cd-85fc-4443-91c2-28cd6987bfd4'),
(5, 1, 'daHTN2o3oM5WuU9vyUvG6Xw4yItBgwCsli0yMWolb2DV-rJ6uxvQ-J4OUyvWy9Ap9UORQw6f9o2nGLQnt9WWEfNNXchjaivaB3VR', '2025-02-26 22:51:34', '2025-03-05 19:39:46', 'f370d7a5-ba67-49d9-a30c-952a52912dae'),
(6, 1, 'wDHvHUsCavpSr6dexNo7p7oG7zdGIQDxKFZ-77bL52Bmu_6-D8_KEIhvsq6OnKbwiIkH_mq1_MHxsB-vQBzLTJlXtOCTf6FfSTVw', '2025-03-05 19:39:46', '2025-03-07 15:31:36', 'fa6359d4-3601-4872-b785-db0aa51f2c8e'),
(7, 1, 'TBtKsi-irZ3IHmkNsKGZRZw2AZicFe9uV6cBUtDn9ru9oSE_aly1cBBk2GJm-i2LQDPx_Q95aakGqanot4L4rPAlFZCryRz2wTcB', '2025-03-09 20:51:09', '2025-03-10 16:20:55', '1222b454-4a02-4462-bd8a-442c7f9a59fd'),
(8, 1, 'hvGMR7MsWrLTp5HwmZghT4TSpzeldvZo6vtkTLDk3cONsgTkomRJv83kdzC2NgSkYUCIl3Ylcxt9sRSfTlrShAiswQLMIWKHTBdN', '2025-03-10 16:20:55', '2025-03-11 09:04:45', 'bbc8f71a-6a17-40e8-a8ed-19132ef7036a');

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'mywebsite', '2025-02-19 22:17:31', '2025-02-19 22:17:31', NULL, '1718735a-958d-412d-89f5-7c112232edff');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` varchar(255) NOT NULL DEFAULT 'true',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 0,
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, '1', 'Destination Explorer', 'default', 'en-US', 1, '$PRIMARY_SITE_URL', 1, '2025-02-19 22:17:31', '2025-03-09 20:58:17', NULL, 'c5d850e9-72ca-44a4-be22-17219e818e5d');

-- --------------------------------------------------------

--
-- Table structure for table `sso_identities`
--

CREATE TABLE `sso_identities` (
  `provider` varchar(255) NOT NULL,
  `identityId` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `structureelements`
--

INSERT INTO `structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 5, NULL, 1, 1, 14, 0, '2025-02-21 21:48:49', '2025-02-21 21:50:49', 'dd591126-bdbd-42ca-afcc-49870f529732'),
(2, 5, 14, 1, 2, 3, 1, '2025-02-21 21:48:49', '2025-02-21 21:48:49', '6fef97c3-c4b9-4455-b8bb-e6e9eb9f6298'),
(3, 5, 15, 1, 4, 5, 1, '2025-02-21 21:48:58', '2025-02-21 21:48:58', '965a2282-645a-424c-b820-3837920131d1'),
(4, 5, 16, 1, 6, 7, 1, '2025-02-21 21:50:09', '2025-02-21 21:50:09', '94de484d-bbd7-4d77-acfe-8c904a629b7c'),
(5, 5, 17, 1, 8, 9, 1, '2025-02-21 21:50:23', '2025-02-21 21:50:23', '1e0b589b-f893-42f5-b571-14d4360ee119'),
(6, 5, 18, 1, 10, 11, 1, '2025-02-21 21:50:34', '2025-02-21 21:50:34', 'e369a418-42c7-45c9-b48e-86f3dfa921a7'),
(7, 5, 19, 1, 12, 13, 1, '2025-02-21 21:50:49', '2025-02-21 21:50:49', '2e72d10a-aa73-4951-a8d8-b2b473aa6a10');

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `structures`
--

INSERT INTO `structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, '2025-02-21 21:25:29', '2025-02-21 21:25:29', '2025-02-21 21:48:25', 'cee985d4-de7c-4703-a176-3a5e364454b7'),
(2, NULL, '2025-02-21 21:25:42', '2025-02-21 21:25:42', '2025-02-21 21:48:23', 'a28ef1c6-e735-4efb-8b21-5a8de68c3582'),
(3, NULL, '2025-02-21 21:26:12', '2025-02-21 21:26:12', '2025-02-21 21:48:21', 'e3b45c90-ec8c-4845-8aff-44b3a56bcac2'),
(4, NULL, '2025-02-21 21:26:34', '2025-02-21 21:26:34', '2025-02-21 21:48:27', '9b90651f-e036-4252-8ac3-a8cf50736475'),
(5, NULL, '2025-02-21 21:48:42', '2025-02-21 21:48:42', NULL, 'baf07778-f878-45bb-991f-a1235d2ab7e7');

-- --------------------------------------------------------

--
-- Table structure for table `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text DEFAULT NULL,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`preferences`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `affiliatedSiteId` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT 0,
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT 0,
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `photoId`, `affiliatedSiteId`, `active`, `pending`, `locked`, `suspended`, `admin`, `username`, `fullName`, `firstName`, `lastName`, `email`, `password`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`) VALUES
(1, NULL, NULL, 1, 0, 0, 0, 1, 'admin', NULL, NULL, NULL, 'gregsternik07@gmail.com', '$2y$13$Tocnk7NO2jbubX49zbJdEubN8duyoWhfADdUMZwEO5VMKY.EX.x6q', '2025-03-10 16:20:56', NULL, NULL, NULL, '2025-03-09 20:51:03', NULL, 1, '$2y$13$kLu/.tsPrlFcSR3vLntpceKwJdHXdY5ax.w1PthjvIm5YuBrjPgV2', '2025-03-09 20:50:47', NULL, 0, '2025-02-19 22:17:32', '2025-02-19 22:17:32', '2025-03-10 16:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Attraction Images', NULL, '2025-02-24 22:17:02', '2025-02-24 22:18:15', '59e709b1-badf-4666-83eb-f8420fae5fc6'),
(2, NULL, NULL, 'Temporary Uploads', NULL, '2025-02-24 22:17:24', '2025-02-24 22:17:24', '475e749b-f79f-4d20-baa9-9e3012ea66ba'),
(3, 2, NULL, 'user_1', 'user_1/', '2025-02-24 22:17:24', '2025-02-24 22:17:24', '2ed5dc2d-f525-429f-a70f-1fbdd9a30960'),
(4, NULL, 2, 'Images', '', '2025-02-24 22:32:24', '2025-02-24 22:32:24', '37d3414b-66e6-4ecf-9e23-4181563d054a'),
(5, NULL, 3, 'Images', NULL, '2025-02-24 22:39:44', '2025-02-24 22:50:41', 'bf42c463-6c1a-4b5d-9988-cca8bec1490e');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

CREATE TABLE `volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fs` varchar(255) NOT NULL,
  `subpath` varchar(255) DEFAULT NULL,
  `transformFs` varchar(255) DEFAULT NULL,
  `transformSubpath` varchar(255) DEFAULT NULL,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text DEFAULT NULL,
  `altTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `altTranslationKeyFormat` text DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `fs`, `subpath`, `transformFs`, `transformSubpath`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `altTranslationMethod`, `altTranslationKeyFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 8, 'Attraction Images', 'attractionImages', 'attractionImages', '', '', '', 'site', NULL, 'none', NULL, 1, '2025-02-24 22:17:02', '2025-02-24 22:17:02', '2025-02-24 22:20:46', 'dd7ca2ae-3e9a-4cde-b077-17f56c24e7d4'),
(2, 9, 'Images', 'images', 'assets', '', '', '', 'site', NULL, 'none', NULL, 2, '2025-02-24 22:32:24', '2025-02-24 22:32:24', '2025-02-24 22:36:55', 'e5c49c65-2508-4a15-b084-fa5cdbbc801c'),
(3, 10, 'Images', 'images', 'assets', 'images', 'assets', '', 'site', NULL, 'none', NULL, 3, '2025-02-24 22:39:44', '2025-02-24 22:50:41', NULL, '63202292-59a4-4ab4-99f0-1b9dd44a21a6');

-- --------------------------------------------------------

--
-- Table structure for table `webauthn`
--

CREATE TABLE `webauthn` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `credentialId` varchar(255) DEFAULT NULL,
  `credential` text DEFAULT NULL,
  `credentialName` varchar(255) DEFAULT NULL,
  `dateLastUsed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`settings`)),
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2025-02-19 22:18:37', '2025-02-19 22:18:37', '99b62c35-fa20-4b90-8921-5002173ffaae'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2025-02-19 22:18:37', '2025-02-19 22:18:37', 'a10eac02-0afb-407d-bd06-37706de678b5'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2025-02-19 22:18:37', '2025-02-19 22:18:37', 'ff719157-d1d6-4793-b424-a1e3554970db'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2025-02-19 22:18:37', '2025-02-19 22:18:37', '7f420846-9d6f-488d-aeac-18d536dca0ca');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_uruyqqoyqgnxsaugvxsdwlikvyainctfqltc` (`primaryOwnerId`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ofphrpuppcbfrnyafjavsqtlzxkuhtdyrgrj` (`userId`,`unread`,`dateRead`,`dateCreated`),
  ADD KEY `idx_mytlbpeqkwmrqcnghaumfmhkidpeipsicktv` (`dateRead`),
  ADD KEY `fk_zdexuyektztxpgbeufviicwpmopocapctext` (`pluginId`);

--
-- Indexes for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vinedenpzegjqmzyswrjvsiglmjedzqomzrp` (`sessionId`,`volumeId`),
  ADD KEY `idx_xevzomazvwbyrdkljkmtmlhsykeebxuhbjsc` (`volumeId`);

--
-- Indexes for table `assetindexingsessions`
--
ALTER TABLE `assetindexingsessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tmpqggwtodtpnulwshgunqyihnkowwgupadj` (`filename`,`folderId`),
  ADD KEY `idx_qaouympecnnurgwzaivnoikzncgdivymguxu` (`folderId`),
  ADD KEY `idx_yhpmayndcvhsmqaoqtzgkpmjaqoiofpushkq` (`volumeId`),
  ADD KEY `fk_abitsowwwrrgaeksnjicnrogkbnsxigbnaha` (`uploaderId`);

--
-- Indexes for table `assets_sites`
--
ALTER TABLE `assets_sites`
  ADD PRIMARY KEY (`assetId`,`siteId`),
  ADD KEY `fk_ybpqcjghksmqpdzyntazwlixkyuwnqobaeau` (`siteId`);

--
-- Indexes for table `authenticator`
--
ALTER TABLE `authenticator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kblxupaoytmaljuxokcnhuwhgbywyzgufhcl` (`userId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vxkduswiibarsqtrsffetwwwyeseufjwgkst` (`groupId`),
  ADD KEY `fk_ajlmbrabqcvvoynvdxosgbhlpitgsestkgrl` (`parentId`);

--
-- Indexes for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_icakqgaqeqzuwhpnxofidtnyivjiazjylcee` (`name`),
  ADD KEY `idx_lzfupzixzctuoowdlwmccvcxmoxfgvkvpobf` (`handle`),
  ADD KEY `idx_avtujjwysqeoppvmmtutkhlteagmxfogcecp` (`structureId`),
  ADD KEY `idx_cwqvyudoquspbwxpximkwuvfyvqslmdnlisg` (`fieldLayoutId`),
  ADD KEY `idx_hcctyuxvfrkuupmhqydgfahknomkmcgzibgv` (`dateDeleted`);

--
-- Indexes for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_kehanphdkkapzkuatodvwyqdnoorevljlwqf` (`groupId`,`siteId`),
  ADD KEY `idx_tsfbwtxnewmyjxxhrqcgqtzqrnvvjqqzrgbk` (`siteId`);

--
-- Indexes for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `idx_bveihkzijdjqkyarqdefuffdyyhvmowmnljv` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_wwiaqqwonbzookzgjaqptpdnkuwxrbcwoltc` (`siteId`),
  ADD KEY `fk_zrgdiidyduwbseibzpkyfhlxulylfectpoai` (`userId`);

--
-- Indexes for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`,`layoutElementUid`),
  ADD KEY `idx_ocfjtnmenzkavhklqfzzeomhjrvhhraezlzx` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_gcitrbjkkdhumipkpdgjkflamocuqjlcopvp` (`siteId`),
  ADD KEY `fk_mslsmkbqgxvzppgfhttzptvvewjodunpmovf` (`fieldId`),
  ADD KEY `fk_jscqkvycanzfvpzpemftigtqgcxhyplwiarb` (`userId`);

--
-- Indexes for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_yzylabywpjwshctngglplqxafmhppwdqhjph` (`userId`);

--
-- Indexes for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_cihutdllesaqonbbipcrtyzkdbijhzlnzqdh` (`key`,`fingerprint`);

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vlcykdderlchmouujzqdlbmjkywdugjvgqwl` (`creatorId`,`provisional`),
  ADD KEY `idx_gcxudxtngftmoodfnyxrjaxajsfcznmkfxnd` (`saved`),
  ADD KEY `fk_sbppemmqhqmmljsdtrteaefkqfgdvdomwdqw` (`canonicalId`);

--
-- Indexes for table `elementactivity`
--
ALTER TABLE `elementactivity`
  ADD PRIMARY KEY (`elementId`,`userId`,`type`),
  ADD KEY `idx_lmqowwprapshiykvlvzjprpqnsnqnxwztypy` (`elementId`,`timestamp`,`userId`),
  ADD KEY `fk_bhhcxspylalhdxkioueqdiejbfmsvvbgiotu` (`userId`),
  ADD KEY `fk_ihadfqrtmuixnnsinehganbkiysmpbsylkmp` (`siteId`),
  ADD KEY `fk_qpavhytbwlcojtazjupkmcjmnhcqekrqzfxp` (`draftId`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_syaledurfrljaviwfdfdzbhyhdbjrcpqdoxi` (`dateDeleted`),
  ADD KEY `idx_yavdcpnyimgcfxmvfyiruevriapntlvrhpqm` (`fieldLayoutId`),
  ADD KEY `idx_qjfkmyewfcqtywkbgcaixvkugrjotcvwqjyz` (`type`),
  ADD KEY `idx_bdhfqahzmbicaaxeazdrgwunoukkdqkhixoj` (`enabled`),
  ADD KEY `idx_yyhmofruwwhveotfkccvubkxhqqpmjzqzdqh` (`canonicalId`),
  ADD KEY `idx_giwunltlxqvrcvznsfrjcebskctzozgmrdwd` (`archived`,`dateCreated`),
  ADD KEY `idx_kagcosgmvvxjhvftvljhoezlydhkyxcxrhov` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  ADD KEY `idx_dswyfoxqndrmsbmuxvwuclfutvlkiubvlaee` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`,`enabled`),
  ADD KEY `fk_ficaehjmgccbtzhqlidlirotsatvgzanteec` (`draftId`),
  ADD KEY `fk_yhfbiogiwuieymbvelkovthlgraycyiamyno` (`revisionId`);

--
-- Indexes for table `elements_bulkops`
--
ALTER TABLE `elements_bulkops`
  ADD PRIMARY KEY (`elementId`,`key`),
  ADD KEY `idx_escwimsbnqpvxiqcagnouxqboidfpeztqvmh` (`timestamp`);

--
-- Indexes for table `elements_owners`
--
ALTER TABLE `elements_owners`
  ADD PRIMARY KEY (`elementId`,`ownerId`),
  ADD KEY `fk_dtbkkwbrxiatiwkiadvxmgsjpffthwqoovyy` (`ownerId`);

--
-- Indexes for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_levivphraoybumbcmszufhtgrfjsrrajczsw` (`elementId`,`siteId`),
  ADD KEY `idx_ybaubdkorvewrbtuokprddziuvhlypthtlhg` (`siteId`),
  ADD KEY `idx_hlmnbxfvkohampmmkkqdqhkoaigvptiqwoua` (`title`,`siteId`),
  ADD KEY `idx_sgtwksmyzwaenctsadodjldsgihtjsrjazkq` (`slug`,`siteId`),
  ADD KEY `idx_ntnvtwctcfkzsdbztbuaddxrpzjhplnkiiuj` (`enabled`),
  ADD KEY `idx_fjpabnxklmxsmuzxsqgsspfiudfgrfwwolzj` (`uri`,`siteId`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zlsabseeechrzuewkkzdxsqywpccmlcejvrc` (`postDate`),
  ADD KEY `idx_iktkaqtcumwoujiuyldvckupzscmhthlkuds` (`expiryDate`),
  ADD KEY `idx_fmzgjtzsgtrztpzrrunemfckhbqdockzdbyg` (`sectionId`),
  ADD KEY `idx_gdwnaxqxerjmfaotaxiavvfbzsbroqjroyte` (`typeId`),
  ADD KEY `idx_ctyxblbjwoiulwjdkgfezfykealtijvowmzj` (`primaryOwnerId`),
  ADD KEY `idx_nfefxaqwytfwkkflmymbmovtkjbwdzjhhpny` (`fieldId`),
  ADD KEY `fk_pchlwuivlbspfnqirbbaulewjcvazwlaosqr` (`parentId`);

--
-- Indexes for table `entries_authors`
--
ALTER TABLE `entries_authors`
  ADD PRIMARY KEY (`entryId`,`authorId`),
  ADD KEY `idx_oedurexlelpclizwqcychapxmmvimwmjbtoq` (`authorId`),
  ADD KEY `idx_caxmvaezzqysosarabmypzzvbbidoqniagdc` (`entryId`,`sortOrder`);

--
-- Indexes for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fokcakyahwfoqyxqqieramfejuhrdhejgdoc` (`fieldLayoutId`),
  ADD KEY `idx_xftaqxjbgbzvkcdlzxaujcbwakpkjsbidsck` (`dateDeleted`);

--
-- Indexes for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zilncibxipnwgdpdiniumzfymjmgcwqkizkg` (`dateDeleted`),
  ADD KEY `idx_etuzqqizlnmqjkkaonylegkfhgmcsdfwadjo` (`type`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wfnzgqoqmlggkpfslqimhggbrpbonaykxcog` (`handle`,`context`),
  ADD KEY `idx_rzggtsswbhaetgijidvhroblhcomabmzjtad` (`context`),
  ADD KEY `idx_gdhvwjjclpixuktggvflnevnmzznnwbkegsr` (`dateDeleted`);

--
-- Indexes for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_iwdlxrhynzjhddbihgoixzthpbpeffjzqpbh` (`name`),
  ADD KEY `idx_gybyqmgqkkovfjopptzxtiwwwdjkuirihmjr` (`handle`),
  ADD KEY `idx_nmbhzhkdamiubdvwitovkjdcgdgbcduylovp` (`fieldLayoutId`),
  ADD KEY `idx_kuqhekeothohvyjiywcxdhhlqknkkrxwowlw` (`sortOrder`);

--
-- Indexes for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_khxuztgbiroxxpsslnerizrvudkkwrebtlyh` (`accessToken`),
  ADD UNIQUE KEY `idx_sijhtulceevbieslihpbpuqpbehllqjaemnp` (`name`),
  ADD KEY `fk_dtxkeyovfylcyatmrycnibxwxfjonpteqslw` (`schemaId`);

--
-- Indexes for table `imagetransformindex`
--
ALTER TABLE `imagetransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fcnrcrxaywtopkjukaarlgiftweojdljcgst` (`assetId`,`transformString`);

--
-- Indexes for table `imagetransforms`
--
ALTER TABLE `imagetransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bgsyftpfcokzeodmseijdvjlcooxcfsghmbg` (`name`),
  ADD KEY `idx_imnhqinskunhslvuztbujiafelgirzuabzno` (`handle`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_mahpnnrgokkecpqyxhpbyhdcbzkklpqthrpw` (`track`,`name`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_aqwseggfadqvxmnolycgklqrpnwtnznjglwr` (`handle`);

--
-- Indexes for table `projectconfig`
--
ALTER TABLE `projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_oebmrfcufnqgkzgawtstiriqxbqtypafqwan` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `idx_nfimkhgbeyicyqvsrpyprotmwynylfzedxhr` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `recoverycodes`
--
ALTER TABLE `recoverycodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_xayhekynrmxzxrpgywcmpalvylsydxsvlhvv` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `idx_gkvgxppyaiaxyveugzwoqayvxipoihzhxzff` (`sourceId`),
  ADD KEY `idx_oohneqonjvyrlsohipjnvcdaeikntrwiueap` (`targetId`),
  ADD KEY `idx_quibxkdlibwpoerpdsgwmnrbsgdnellphtsb` (`sourceSiteId`);

--
-- Indexes for table `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_gjzckzudtvavodufgtldligiaxbdywplqhtr` (`canonicalId`,`num`),
  ADD KEY `fk_wviuhpqnouptnfdnbnwywmcsionsedjyfzds` (`creatorId`);

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `idx_disoxmsocazwcryibtctpbbwubwlrmbwfybs` (`keywords`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_xdwthwdizjwmmbzckuokpucgfhynpibcavej` (`handle`),
  ADD KEY `idx_yjynhqullhgycsjqlnxdaeuvlawaghzlgcuz` (`name`),
  ADD KEY `idx_qkaejdbbkyhzxwwtutwpjtpyfwdznrqxnutj` (`structureId`),
  ADD KEY `idx_myaptsjmiowioawhtryxhrarumusctyyigvp` (`dateDeleted`);

--
-- Indexes for table `sections_entrytypes`
--
ALTER TABLE `sections_entrytypes`
  ADD PRIMARY KEY (`sectionId`,`typeId`),
  ADD KEY `fk_vhujluadzutyoswxoqghuhlvpvqbvmeyybog` (`typeId`);

--
-- Indexes for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_fhcymgycadeqoifzmxjdbixmjnytiubbofjg` (`sectionId`,`siteId`),
  ADD KEY `idx_hvogrrxuhwsvbvatfggmpgclxqhgfwdkbmdv` (`siteId`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zgsysxeinhozlvjezfvecbejtdrlszlufsbf` (`uid`),
  ADD KEY `idx_qlbbmapzfivuhljcgwafqaslxvssrbpfqqkz` (`token`),
  ADD KEY `idx_nkugmezjogjvcwdhwbbtuyvanxvpktetoxep` (`dateUpdated`),
  ADD KEY `idx_nefblqjkfbigoswzfmfawcahnrtgmwwjohvo` (`userId`);

--
-- Indexes for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_wugstnvyinoyzdbwldnllknfldfbscpvkqmi` (`userId`,`message`);

--
-- Indexes for table `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orionehmuwiyrgegzbmtqmlsfyaepuhfndtt` (`name`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fckexqjrxledapkuiwhcdflcwdzcbjpcujos` (`dateDeleted`),
  ADD KEY `idx_ofgktyrnbwmrcgebrhbqgyrukoscpjojvfme` (`handle`),
  ADD KEY `idx_gwkzmihzzehoddmnzixuqmwjpdzqignvbgmk` (`sortOrder`),
  ADD KEY `fk_frczhnqtgiimptshhiwvromcycgzvjimxmmh` (`groupId`);

--
-- Indexes for table `sso_identities`
--
ALTER TABLE `sso_identities`
  ADD PRIMARY KEY (`provider`,`identityId`,`userId`),
  ADD KEY `fk_xnvdncprraxmdiswsivogthpughfaxpvgwgf` (`userId`);

--
-- Indexes for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_kdedlnuhwuwnkgikpgqvhehskjpvaabutuva` (`structureId`,`elementId`),
  ADD KEY `idx_pervlinbhmoaigzdplsamizopgyrpjhhbwbt` (`root`),
  ADD KEY `idx_ohvrbblhjapjsfrotwjioktvncqrpaojxvud` (`lft`),
  ADD KEY `idx_nsbikpcbnmgnjelgzlqxtuxdgxifofxrxsdo` (`rgt`),
  ADD KEY `idx_uhcbbgpjnigbjoaowqhewtentcbukvevzuui` (`level`),
  ADD KEY `idx_slopjxbohdgwrwvjtfnaizfkgaqzqwfrqlzd` (`elementId`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fwaemnprrnnvlgbbgsltudbsufvydvvuwoyr` (`dateDeleted`);

--
-- Indexes for table `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ybstzxkhtxhptivmdugamidcrrqswytaxark` (`key`,`language`),
  ADD KEY `idx_uqzihmuoodyjvvqthdudsscggeqmomfmfscy` (`language`);

--
-- Indexes for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_swjfongvgpolgahgmuoiughtmcwheinswczt` (`name`),
  ADD KEY `idx_ntkmmhkkeddoxutdvulnavxvnwlebxxckljm` (`handle`),
  ADD KEY `idx_wmhxzijefgwhrtbcsghgxsszhxwxtqyoutcr` (`dateDeleted`),
  ADD KEY `fk_ixagnqloxcvpodagpwfchivyzfekilsxqdur` (`fieldLayoutId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ockqnrbjzqbopnyopkwpvbkmbqetwrybkkxp` (`groupId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ietjhoqgefafydmjcdfsegarlbticcjbfbez` (`token`),
  ADD KEY `idx_nozauohsjppbqkxjsemvvoblcjsiwluogidx` (`expiryDate`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pquogjfddggulgcvlkxlauvvhjladxwfrikq` (`handle`),
  ADD KEY `idx_mbhxmrtbyrcswfbejztcpsswofdjvwndjzho` (`name`);

--
-- Indexes for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_iqyavtvoolgubirnnibvjnrglqwnicagtbow` (`groupId`,`userId`),
  ADD KEY `idx_ukwowbiyrnvflgvxveocmyhpirnitztejyor` (`userId`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_yonjfgeiqxnazasaibnhoazknnqgzejrjgrj` (`name`);

--
-- Indexes for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ydmeceedykkjepnvdxatopuzufnrbivbcftu` (`permissionId`,`groupId`),
  ADD KEY `idx_lkiqgetwbdzrgmkjourhjbmvlowbfjfokhts` (`groupId`);

--
-- Indexes for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_mtlzehidnrsuhtkyjuimhybvgzxtpqcbscwi` (`permissionId`,`userId`),
  ADD KEY `idx_uodlbesvsdxdnonfspdvnvjvsuozojucoeni` (`userId`);

--
-- Indexes for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_efcpqpgshhniepoaekxidottasnpobwdkczn` (`active`),
  ADD KEY `idx_qwpdtfuaoklpsrififbzdntqbmsaxljopuyz` (`locked`),
  ADD KEY `idx_osdcnboaqznqtspvqyvyfplcifqvdzsyidxd` (`pending`),
  ADD KEY `idx_aburjpldsdcykbefqavitlflhgswtyesggto` (`suspended`),
  ADD KEY `idx_ooupeflcefokrinlrbondgnrqlzlpxuudpsg` (`verificationCode`),
  ADD KEY `idx_sbtlrykwrqjdzkvsovbyshkyzclqcztjzsih` (`email`),
  ADD KEY `idx_ibpeptfdwlgrmmjqlnlhhbyrkzfvvqqtwqls` (`username`),
  ADD KEY `fk_yfpijejfszotqmwhwtjsilkzzkvuxugzrash` (`photoId`),
  ADD KEY `fk_pjlfskrfrjskageegarhuifszpmjrhjymhoy` (`affiliatedSiteId`);

--
-- Indexes for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ffpkfwagwaetghobggveklaowaklbxadrxgq` (`name`,`parentId`,`volumeId`),
  ADD KEY `idx_vacfkpevtrdixikbmsfwwwsvzkihysyxkuru` (`parentId`),
  ADD KEY `idx_nofacnluozafmuqlttqhjdewktbirxcmnsff` (`volumeId`);

--
-- Indexes for table `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_qnxddepvepoflaakrazuibwbqafjrbbxldmv` (`name`),
  ADD KEY `idx_hwgnqcjaxlthqmlyvtbcaoxaffclugyxosxe` (`handle`),
  ADD KEY `idx_awngqzrfgqvzpgxotjmbvcacrbtzqdalwtct` (`fieldLayoutId`),
  ADD KEY `idx_shgdmajsditfczkgtpnbzqdqccrlciveukuy` (`dateDeleted`);

--
-- Indexes for table `webauthn`
--
ALTER TABLE `webauthn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_johbhqtlzhfvnllxolgfwuetdrjhyidngtav` (`userId`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ngigwfwuyqajcxxtxqggkyuztekyxzbkmtiy` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexingsessions`
--
ALTER TABLE `assetindexingsessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authenticator`
--
ALTER TABLE `authenticator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagetransformindex`
--
ALTER TABLE `imagetransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `imagetransforms`
--
ALTER TABLE `imagetransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `recoverycodes`
--
ALTER TABLE `recoverycodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `webauthn`
--
ALTER TABLE `webauthn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_gntasvmbtbanlijsjniqdrkjnnzmmwskkunr` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_uruyqqoyqgnxsaugvxsdwlikvyainctfqltc` FOREIGN KEY (`primaryOwnerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `fk_cekpobxmirafxhhirezeapoedauullfntuta` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zdexuyektztxpgbeufviicwpmopocapctext` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `fk_ndtijijxiqdnkybtxlbfpydhcthebzlbpdyn` FOREIGN KEY (`sessionId`) REFERENCES `assetindexingsessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zfagfobfisxxdfgwltmflidedasyhamosnnv` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `fk_abitsowwwrrgaeksnjicnrogkbnsxigbnaha` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_emfspxibzqjtzznmpnzezbrvrpzdgzrvupee` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vozgbnspalpqpyvivajeqgncxewxvudruxjb` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zhhikiansyqmkumtcnxotpsrhmgfhtxusacs` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets_sites`
--
ALTER TABLE `assets_sites`
  ADD CONSTRAINT `fk_wuwzuopoqkialoftjpfyrevnmzmcrrjtveuq` FOREIGN KEY (`assetId`) REFERENCES `assets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ybpqcjghksmqpdzyntazwlixkyuwnqobaeau` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `authenticator`
--
ALTER TABLE `authenticator`
  ADD CONSTRAINT `fk_kblxupaoytmaljuxokcnhuwhgbywyzgufhcl` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_ajlmbrabqcvvoynvdxosgbhlpitgsestkgrl` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_mmbdinxlpovaormoznotnbgiojfcqifwjken` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ooylvcfqphxrkofuozhzfnsmsxgruvuqcssi` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `fk_iezypnmsuwryvfnkixpvwambbkgyurkigque` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_nnixsqtprgzbezhhoiowcvzamemgcrzlbnkp` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `fk_dosasfasqkeypzwvttsgvafnozkliifbqlvl` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_fykyahwsgabmckaloqcablsrlaslsdbpzqvz` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD CONSTRAINT `fk_rvwpxvlkfcigjstlpnauwnwfzsrnajcluwkg` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_wwiaqqwonbzookzgjaqptpdnkuwxrbcwoltc` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_zrgdiidyduwbseibzpkyfhlxulylfectpoai` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD CONSTRAINT `fk_gcitrbjkkdhumipkpdgjkflamocuqjlcopvp` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jscqkvycanzfvpzpemftigtqgcxhyplwiarb` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mslsmkbqgxvzppgfhttzptvvewjodunpmovf` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rfauoinmrpplyiowpovdgpusfvenjefzedpg` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `fk_yzylabywpjwshctngglplqxafmhppwdqhjph` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `fk_gvoqrfktgipmymisedzhulfgqtnkpmvnuwtk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_sbppemmqhqmmljsdtrteaefkqfgdvdomwdqw` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elementactivity`
--
ALTER TABLE `elementactivity`
  ADD CONSTRAINT `fk_bhhcxspylalhdxkioueqdiejbfmsvvbgiotu` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ihadfqrtmuixnnsinehganbkiysmpbsylkmp` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_qpavhytbwlcojtazjupkmcjmnhcqekrqzfxp` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yagjajvnukmwzhheiroxzodoqftguoapgodb` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `fk_dzmoxjvclhtcauseslpxhdusjstdxykxghhb` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_ficaehjmgccbtzhqlidlirotsatvgzanteec` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ownqkuywbbciehtmyfmbpfybwjvcacxcwbjg` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_yhfbiogiwuieymbvelkovthlgraycyiamyno` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements_owners`
--
ALTER TABLE `elements_owners`
  ADD CONSTRAINT `fk_dtbkkwbrxiatiwkiadvxmgsjpffthwqoovyy` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_fgneujydxvdswcqrbpiwwwpicphyqocitsgc` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `fk_ktohkxrxgjkpkmjshztcdhosfbraixcdynbe` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_psnrgwgzgrdyihhswfsgsoijheevtlnskqqd` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `fk_cgumfiogohnhuerigsicupsdqdrcrdcphpae` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dychqfphclbertogdcgbbilfyfbatqattenu` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_gwqibklcegotbbjafngazhgopswekmfiskfq` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pchlwuivlbspfnqirbbaulewjcvazwlaosqr` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_svpjjyexqhjsmtykzcndrvuydrxkgkqldbiy` FOREIGN KEY (`primaryOwnerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zknzhankhgksvebwtddllgglfsjioqtuxqvn` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entries_authors`
--
ALTER TABLE `entries_authors`
  ADD CONSTRAINT `fk_iaiydinbsoovmqeulcuzbcohwkucnfgedlri` FOREIGN KEY (`entryId`) REFERENCES `entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ydpnrlmquewchpdvfqxfafjetfuetibxdhej` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `fk_vhvymnpljsudltycvntpwdkwvyvavfslepek` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `fk_eqwsnpzsqpkvviafdfdamsoggtlqdkqjdqpn` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_mddwdwpmrbftagmptwaoepjszabcezyzowgi` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD CONSTRAINT `fk_dtxkeyovfylcyatmrycnibxwxfjonpteqslw` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `fk_hqzooogrprzkuuvobbnhaeopyofonibyjbyt` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_okorixxfhonmhburzjgznnaumoznbubhqhev` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_teymxlxixlxgpcscbvtgcyrltsgypehlorcy` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `fk_gjnlqesclwcyaidgefgxinymrllzsjtlysak` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wviuhpqnouptnfdnbnwywmcsionsedjyfzds` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `fk_voolagepnigbwbpdoluyfgjouvntmrrbnsjr` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_entrytypes`
--
ALTER TABLE `sections_entrytypes`
  ADD CONSTRAINT `fk_qxklefdxvufrdhjdqpnezygkjrxuymvxwxuc` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vhujluadzutyoswxoqghuhlvpvqbvmeyybog` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `fk_auqeougxrtgooxxryhfsrlnklyhwhwcuctdr` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_fyjmnyyatkfljjztwbjrxbkeepwcymfqodrg` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_gdqbecqgstgjdomtbvhgadlzwbzdcxxjztnv` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `fk_ubkxqickxcnjyhzqwgtkiegvjpguwojjrznh` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `fk_frczhnqtgiimptshhiwvromcycgzvjimxmmh` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sso_identities`
--
ALTER TABLE `sso_identities`
  ADD CONSTRAINT `fk_xnvdncprraxmdiswsivogthpughfaxpvgwgf` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `fk_lskagwcuruntasqbaabwkjsyinzbvkmfriqi` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `fk_ixagnqloxcvpodagpwfchivyzfekilsxqdur` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_bvxkcgaurcvtrbojnznlajchuimidgficwde` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rwfnjrvxddavcdjunmxuclfclulunumeuntf` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `fk_pmstnzaienarxeqlssiltpeienpzfqpqcgmo` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_twvrivyllipnhymbwdnjuomozkzhokfapezt` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `fk_ifkfsruwhgldgwceqepylfrcskpcvhyrhvip` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_shcughkucrvdqfmnjnmekafnsziykncpjjgm` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `fk_ulzdsonpgnhvoewuvjthsadldsndjfeqlfwh` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wrihtlsrsojgwfkrooqqmkmjtsealxbkhxff` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `fk_ahbldhafzomidecxtjxbobirkeqgvdqntqig` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_pjlfskrfrjskageegarhuifszpmjrhjymhoy` FOREIGN KEY (`affiliatedSiteId`) REFERENCES `sites` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_yfpijejfszotqmwhwtjsilkzzkvuxugzrash` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_yusqbzjwxhcbrdyajjemifpowhxqfzcqcqwf` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `fk_bpjqnowmfpcvbehirwdjedoybdlybhfvgvlm` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kbwxpyxsaemdruopinzsrlkfpqydtqixkqjc` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `fk_xbwpojbbcvbhtlqbitdlshvrvbotdqarfxzi` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `webauthn`
--
ALTER TABLE `webauthn`
  ADD CONSTRAINT `fk_johbhqtlzhfvnllxolgfwuetdrjhyidngtav` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `fk_doepldsuwelvhkbflnbcvnvxrxugyqlxgfui` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
