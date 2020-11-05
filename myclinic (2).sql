-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 05:40 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `user_name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `permissions`) VALUES
(1, 'Isaac Cummings', 'Kiera Casper', 'admin@admin.com', '$2y$10$6PD.huRn1g4aTf2o2mpWO.jTpEkJqfThNxlj5gtOk6llBWknGeRvK', 'super.admin', 'Zi7N9EZEvkYcSU06OES7IG8R3sEBAck5iPSz3a0QMSMUSI8sfttqNsUhHUus', '2019-09-15 08:40:25', '2019-09-15 08:40:25', 'a:16:{i:0;s:6:\"admins\";i:1;s:7:\"doctors\";i:2;s:8:\"patients\";i:3;s:5:\"blogs\";i:4;s:13:\"consultations\";i:5;s:5:\"chats\";i:6;s:8:\"payments\";i:7;s:4:\"faqs\";i:8;s:7:\"advices\";i:9;s:6:\"policy\";i:10;s:5:\"about\";i:11;s:4:\"help\";i:12;s:7:\"socials\";i:13;s:10:\"complaints\";i:14;s:6:\"videos\";i:15;s:5:\"joins\";}');

-- --------------------------------------------------------

--
-- Table structure for table `advices`
--

CREATE TABLE `advices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachementable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachementable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `writable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `writable_id` bigint(20) UNSIGNED NOT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `title_en`, `image`, `lang`, `status`, `content`, `content_en`, `featured`, `views`, `writable_type`, `writable_id`, `seo_description`, `seo_title`, `created_at`, `updated_at`) VALUES
(1, 'adel', NULL, '/uploads/img/1_1568544025/blogs/b7892fb3c2f009c65f686f6355c895b5.jpg', 'ar', '1', '<p>testerrrrrrrrrrrrrrrrrrrr</p>', NULL, 1, 0, 'App\\User', 64, NULL, NULL, '2019-10-30 09:45:37', '2020-08-23 11:32:22'),
(2, 'test your number on the new test', NULL, '/uploads/img/64_1572432439/blogs/58238e9ae2dd305d79c2ebc8c1883422.jpeg', 'en', '1', 'Hey there is the number I can get wthe your wtime was a time for me and my two of you and your sister in your number one', NULL, 0, 0, 'App\\User', 64, NULL, NULL, '2019-10-30 09:47:19', '2019-10-30 09:47:19'),
(19, 'test update blog', NULL, '/uploads/img/67_1572442211/blogs/aeb3135b436aa55373822c010763dd54.png', 'en', '1', 'update blog update blog update blog update blog update blog update blog update blog update blog update blog update blog', NULL, 0, 0, 'App\\User', 67, NULL, NULL, '2019-11-11 09:01:43', '2019-11-12 15:33:47'),
(20, 'update update', NULL, '/uploads/img/67_1572442211/blogs/8dd48d6a2e2cad213179a3992c0be53c.png', 'en', '1', 'update hhhhhhhh jjjj jhjjjj', NULL, 0, 0, 'App\\User', 67, NULL, NULL, '2019-11-11 09:08:41', '2019-11-12 15:59:14'),
(21, 'Hello Eslam update', NULL, '/uploads/img/67_1572442211/blogs/430c3626b879b4005d41b8a46172e0c0.png', 'en', '1', 'Test Add blogs test', NULL, 0, 0, 'App\\User', 67, NULL, NULL, '2019-11-12 14:49:51', '2019-11-12 16:06:00'),
(22, 'Hello Eslam', NULL, '/uploads/img/67_1572442211/blogs/88ae6372cfdc5df69a976e893f4d554b.jpg', 'ar', '1', 'Test Add blogs', NULL, 0, 0, 'App\\User', 67, NULL, NULL, '2019-11-12 14:50:26', '2019-11-12 14:50:26'),
(23, 'test', NULL, '/uploads/img/67_1572442211/blogs/138bb0696595b338afbab333c555292a.png', 'en', '1', 'add jhhhjjg hhggg. yyyyyy', NULL, 0, 0, 'App\\User', 67, NULL, NULL, '2019-11-12 15:03:07', '2019-11-12 15:03:07'),
(24, 'hgg', NULL, '/uploads/img/67_1572442211/blogs/eed5af6add95a9a6f1252739b1ad8c24.png', 'en', '1', 'hhhhhhhh', NULL, 0, 0, 'App\\User', 67, NULL, NULL, '2019-11-12 15:06:17', '2019-11-12 15:06:17'),
(25, 'المقال الأول', NULL, '/uploads/img/1_1568544023/blogs/24b16fede9a67c9251d3e7c7161c83ac.png', 'ar', '0', '<p>سوف نتحدث في هذا المقال</p>', NULL, 0, 0, 'App\\User', 1, NULL, NULL, '2019-12-20 17:37:48', '2019-12-20 17:38:24'),
(26, 'Hi there', NULL, '/uploads/img/1_1568544025/blogs/f340f1b1f65b6df5b5e3f94d95b11daf.jpg', 'en', '1', '<p>Hi there&nbsp;</p>\r\n\r\n<p>I am Angela</p>', NULL, 1, 0, 'App\\User', 87, NULL, NULL, '2020-06-04 11:36:18', '2020-08-23 11:32:59'),
(27, 'test maha', NULL, '/uploads/img/87_1591276173/blogs/a97da629b098b75c294dffdc3e463904.png', 'ar', '0', '<p>wn printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', NULL, 0, 0, 'App\\User', 87, NULL, NULL, '2020-08-23 12:12:06', '2020-09-05 19:32:45'),
(28, 'dfgdfg', NULL, '/uploads/img/87_1591276173/blogs/3ad7c2ebb96fcba7cda0cf54a2e802f5.jpg', 'ar', '0', '<p>dfgdfgdfg</p>', NULL, 0, 0, 'App\\User', 87, 'dfgdfg', 'dfgdfg', '2020-08-23 12:18:28', '2020-08-23 12:18:28'),
(29, 'article 1 of eric', NULL, '/uploads/img/92_1599254949/blogs/c3c59e5f8b3e9753913f4d435b53c308.jpeg', 'ar', '0', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><em><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</em></p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', NULL, 0, 0, 'App\\User', 92, 'article 1 of eric', 'article 1 of eric', '2020-09-05 05:20:05', '2020-09-05 05:20:05'),
(30, 'blog post 2', NULL, '/uploads/img/93_1599343812/blogs/58e4d44e550d0f7ee0a23d6b02d9b0db.png', 'ar', '0', '<p>article 1 of dodo</p>\r\n\r\n<p>article 1 of dodoarticle 1 of dodoarticle 1 of dodoarticle 1 of dodoarticle 1 of dodoarticle 1 of dodoarticle 1 of dodoarticle 1 of dodoarticle 1 of dodoarticle 1 of dodo</p>\r\n\r\n<p>article 1 of dodo</p>\r\n\r\n<p>article 1 of dodo</p>\r\n\r\n<p>article 1 of dodoarticle 1 of dodo</p>', NULL, 0, 0, 'App\\User', 93, 'article 1 of dodo', 'article 1 of dodo', '2020-09-05 21:02:03', '2020-09-05 21:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consultations`
--

CREATE TABLE `consultations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_on` datetime DEFAULT NULL,
  `patient_age` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `doctor_response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consultation_type` int(11) NOT NULL DEFAULT 0 COMMENT '\r\n                0 => urgent consultation, \r\n                1 => home consultation, \r\n                2 => clinic consultaion, \r\n                3 => video consultation\r\n            ',
  `type_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `syndrome` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recommended_doctor` bigint(20) UNSIGNED DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultations`
--

INSERT INTO `consultations` (`id`, `content`, `appointment_on`, `patient_age`, `price`, `doctor_response`, `address`, `consultation_type`, `type_id`, `patient_id`, `doctor_id`, `department_id`, `currency_id`, `expired_at`, `created_at`, `updated_at`, `syndrome`, `status`, `recommended_doctor`, `lat`, `lng`) VALUES
(226, NULL, '2019-10-31 13:25:50', NULL, 50.00, NULL, NULL, 3, 1, 63, 56, 1, 1, '2019-11-09 00:52:07', '2019-10-30 08:55:37', '2019-11-06 22:52:07', 'hii', NULL, NULL, NULL, NULL),
(227, NULL, '2019-11-01 15:26:11', NULL, NULL, NULL, NULL, 3, 2, 63, 57, 2, NULL, NULL, '2019-10-30 08:58:57', '2019-10-30 08:58:57', NULL, NULL, NULL, NULL, NULL),
(228, NULL, '2019-11-04 09:45:33', NULL, 20.00, NULL, NULL, 2, 1, 63, 58, NULL, 2, '2019-11-01 12:01:02', '2019-10-30 09:48:28', '2019-10-30 10:01:02', NULL, NULL, NULL, NULL, NULL),
(229, NULL, '2019-11-04 15:40:33', NULL, NULL, NULL, NULL, 2, 2, 63, 58, NULL, NULL, NULL, '2019-10-30 09:49:10', '2019-10-30 09:49:10', NULL, NULL, NULL, NULL, NULL),
(230, NULL, '2019-10-31 16:51:31', NULL, NULL, 'nooi', NULL, 3, 3, 63, 58, 2, NULL, NULL, '2019-10-30 09:51:42', '2019-10-30 10:02:26', NULL, NULL, NULL, NULL, NULL),
(231, NULL, '2019-11-01 16:52:28', NULL, 60.00, NULL, '6 October', 1, 1, 63, 58, NULL, 1, '2019-11-01 11:56:46', '2019-10-30 09:55:18', '2019-10-30 09:56:46', NULL, NULL, NULL, NULL, NULL),
(232, NULL, '2019-10-31 18:10:57', NULL, 0.00, NULL, NULL, 3, 1, 63, 58, 2, 1, '2019-11-01 12:11:36', '2019-10-30 10:11:12', '2019-10-30 10:11:36', NULL, NULL, NULL, NULL, NULL),
(233, NULL, '2019-10-30 14:10:00', NULL, NULL, 'Hey there I can just', 'evsjenw was a great time to be happy with the way you', 1, 5, 65, 64, NULL, NULL, NULL, '2019-10-30 10:14:05', '2019-10-30 10:44:35', NULL, NULL, NULL, NULL, NULL),
(234, NULL, '2019-10-30 14:10:00', NULL, 12.00, NULL, 'hi I just want you know', 1, 1, 65, 64, NULL, 1, '2019-11-01 12:55:19', '2019-10-30 10:45:35', '2019-10-30 10:55:19', NULL, NULL, NULL, NULL, NULL),
(235, NULL, '2019-10-30 14:10:00', NULL, NULL, 'Test trysts gtetszhtd teuhrfdu Thad\n\n\n\n\nYhgdhutd\nBoth\nOiyh', 'hi there I was wondering how much your text you had and how much time I have to be done ✅ I can', 1, 3, 65, 64, NULL, NULL, NULL, '2019-10-30 10:57:26', '2019-10-30 10:59:18', NULL, NULL, 58, NULL, NULL),
(236, NULL, '2019-10-30 18:10:00', NULL, NULL, 'T', NULL, 3, 3, 65, 64, 3, NULL, NULL, '2019-10-30 11:17:53', '2019-10-30 12:48:39', NULL, NULL, 58, NULL, NULL),
(237, NULL, '2019-10-30 19:10:00', NULL, 21.00, NULL, NULL, 2, 1, 65, 64, NULL, 2, '2019-11-01 14:56:06', '2019-10-30 11:18:07', '2019-10-30 12:56:06', NULL, NULL, NULL, NULL, NULL),
(238, NULL, '2019-11-03 20:10:00', NULL, NULL, 'Test tes test', NULL, 3, 5, 65, 64, 1, NULL, NULL, '2019-10-30 20:23:52', '2019-10-30 20:24:31', NULL, NULL, NULL, NULL, NULL),
(239, NULL, '2019-11-30 20:10:00', NULL, 121.00, 'Test test', NULL, 3, 3, 65, 64, 1, 2, '2019-11-01 22:38:17', '2019-10-30 20:25:17', '2019-10-30 23:08:37', NULL, NULL, NULL, NULL, NULL),
(240, NULL, '2019-11-30 08:10:00', NULL, 124.00, 'Test', NULL, 3, 5, 65, 64, 1, 2, '2019-11-01 22:59:38', '2019-10-30 20:39:44', '2019-10-30 23:15:07', NULL, NULL, NULL, NULL, NULL),
(241, NULL, '2019-11-30 20:10:00', NULL, 0.09, 'temp', NULL, 3, 4, 65, 64, 1, 1, '2019-11-01 23:12:15', '2019-10-30 21:11:57', '2019-10-31 05:49:43', NULL, 'Paid', NULL, NULL, NULL),
(242, NULL, '2019-10-31 05:10:00', NULL, 225.00, NULL, 'I can not', 1, 1, 65, 64, NULL, 1, '2019-11-02 10:12:31', '2019-10-30 21:16:04', '2019-10-31 08:12:31', NULL, NULL, NULL, NULL, NULL),
(243, NULL, '2019-10-31 20:10:00', NULL, 232.00, 'temp', NULL, 3, 4, 65, 64, 1, 1, '2019-11-02 07:51:48', '2019-10-31 00:19:26', '2019-10-31 05:52:07', NULL, 'Paid', NULL, NULL, NULL),
(244, NULL, '2019-11-30 20:10:00', NULL, 252.00, 'temp', NULL, 2, 4, 65, 64, NULL, 1, '2019-11-02 10:10:47', '2019-10-31 00:21:10', '2019-10-31 08:20:52', NULL, 'Paid', NULL, NULL, NULL),
(245, NULL, '2019-10-31 04:10:00', NULL, 9999.00, NULL, 'yytttt', 1, 1, 65, 64, NULL, 1, '2019-11-02 12:41:51', '2019-10-31 00:21:37', '2019-10-31 10:41:51', NULL, NULL, NULL, NULL, NULL),
(246, NULL, '2019-10-31 20:10:00', NULL, NULL, 'Test', NULL, 3, 3, 65, 64, 1, NULL, NULL, '2019-10-31 05:51:28', '2019-10-31 07:27:19', NULL, NULL, 67, NULL, NULL),
(247, NULL, '2019-10-31 11:10:00', NULL, NULL, 'Test', 'ef', 1, 5, 65, 64, NULL, NULL, NULL, '2019-10-31 07:19:59', '2019-10-31 07:43:21', NULL, NULL, NULL, NULL, NULL),
(248, NULL, '2019-11-01 01:00:00', NULL, NULL, NULL, 'ااه', 1, 5, 2, 1, NULL, NULL, NULL, '2019-10-31 10:29:48', '2019-10-31 10:30:02', 'ااه', NULL, NULL, NULL, NULL),
(249, NULL, '2019-10-31 14:10:00', NULL, 999.00, 'Uuuuuu', 'test', 1, 5, 65, 64, NULL, 1, '2019-11-02 12:44:40', '2019-10-31 10:40:18', '2019-10-31 10:45:07', NULL, NULL, NULL, NULL, NULL),
(250, NULL, '2019-10-31 18:10:00', NULL, 898.00, 'When’s', NULL, 3, 5, 65, 64, 1, 1, '2019-11-02 12:46:11', '2019-10-31 10:45:40', '2019-10-31 10:47:05', NULL, NULL, NULL, NULL, NULL),
(251, NULL, '2019-11-30 19:10:00', NULL, 89.00, 'temp', NULL, 2, 4, 65, 64, NULL, 1, '2019-11-02 12:50:02', '2019-10-31 10:48:48', '2019-10-31 10:50:28', NULL, 'Paid', NULL, NULL, NULL),
(252, NULL, '2019-11-02 21:10:00', NULL, 656.00, 'Rev', NULL, 2, 5, 65, 64, NULL, 1, '2019-11-02 13:04:33', '2019-10-31 11:01:49', '2019-10-31 11:05:05', NULL, NULL, NULL, NULL, NULL),
(253, NULL, '2019-11-04 11:35:12', NULL, 100.00, 'end end end', NULL, 3, 4, 68, 67, NULL, 1, '2019-11-06 10:29:48', '2019-11-04 07:35:21', '2019-11-05 09:10:23', NULL, 'Paid', NULL, NULL, NULL),
(254, NULL, '2019-11-04 15:11:06', NULL, NULL, 'my reason of cancell hhhhhhhhh', NULL, 3, 3, 68, 67, 1, NULL, NULL, '2019-11-04 11:17:51', '2019-11-05 03:08:39', NULL, NULL, NULL, NULL, NULL),
(255, NULL, '2019-11-04 18:11:00', NULL, 76.00, NULL, NULL, 3, 1, 65, 64, 1, 1, '2019-11-07 00:51:20', '2019-11-04 11:27:34', '2019-11-04 22:51:20', NULL, NULL, NULL, NULL, NULL),
(256, NULL, '2019-11-06 18:11:00', NULL, 2525.00, NULL, NULL, 3, 1, 65, 64, 1, 1, '2019-11-06 13:40:11', '2019-11-04 11:28:15', '2019-11-04 11:40:11', NULL, NULL, NULL, NULL, NULL),
(257, NULL, '2019-11-04 17:11:00', NULL, 200.00, NULL, NULL, 3, 1, 69, 64, 1, 1, '2019-11-27 07:49:13', '2019-11-04 11:48:25', '2019-11-25 05:49:13', NULL, NULL, NULL, NULL, NULL),
(258, NULL, '2019-11-04 18:11:00', NULL, 976.00, NULL, NULL, 2, 1, 69, 64, NULL, 1, '2019-11-07 00:50:34', '2019-11-04 11:52:07', '2019-11-04 22:50:34', NULL, NULL, NULL, NULL, NULL),
(259, NULL, '2019-11-05 07:06:19', NULL, 50.00, NULL, NULL, 3, 1, 68, 67, 1, 1, '2019-11-07 05:09:01', '2019-11-05 03:06:23', '2019-11-05 03:09:01', 'jguvb', NULL, NULL, NULL, NULL),
(260, NULL, '2019-11-07 17:03:02', NULL, 0.00, 'eslam patient cancell this appointment', NULL, 3, 5, 68, 67, 1, 1, '2019-11-07 13:05:18', '2019-11-05 11:03:04', '2019-11-05 12:15:14', NULL, 'Paid', NULL, NULL, NULL),
(261, NULL, '2019-11-05 17:03:27', NULL, 0.00, NULL, NULL, 3, 1, 68, 67, 1, 1, '2019-11-15 09:27:41', '2019-11-05 14:03:31', '2019-11-13 07:27:41', 'gdhd', NULL, NULL, NULL, NULL),
(262, NULL, '2019-11-06 14:04:00', NULL, NULL, NULL, 'dd', 1, 2, 71, 1, NULL, NULL, NULL, '2019-11-06 10:18:24', '2019-11-06 10:18:24', 'dd', NULL, NULL, NULL, NULL),
(263, NULL, '2019-11-11 07:13:04', NULL, NULL, 'bla bla', 'test', 1, 5, 68, 67, NULL, NULL, NULL, '2019-11-06 13:13:39', '2019-11-10 10:39:14', NULL, NULL, NULL, NULL, NULL),
(264, NULL, '2019-11-06 17:26:33', NULL, NULL, NULL, NULL, 3, 2, 68, 67, 1, NULL, NULL, '2019-11-06 13:26:40', '2019-11-06 13:26:40', NULL, NULL, NULL, NULL, NULL),
(265, NULL, '2019-11-11 13:26:47', NULL, NULL, NULL, NULL, 2, 5, 68, 67, NULL, NULL, NULL, '2019-11-06 13:27:02', '2019-11-10 10:38:09', NULL, NULL, NULL, NULL, NULL),
(266, NULL, '2019-11-07 15:04:59', NULL, 50.00, NULL, NULL, 3, 1, 72, 73, 1, 2, '2019-11-08 16:08:02', '2019-11-06 14:05:21', '2019-11-06 14:08:02', 'hii', NULL, NULL, NULL, NULL),
(267, NULL, '2019-11-08 15:10:36', NULL, 50.00, 'Hiii', 'october', 1, 5, 72, 73, NULL, 2, '2019-11-08 16:12:58', '2019-11-06 14:11:09', '2019-11-06 15:35:22', NULL, NULL, NULL, NULL, NULL),
(268, NULL, '2019-11-06 19:11:00', NULL, 50.00, 'temp', NULL, 3, 4, 68, 73, 1, 2, '2019-11-08 17:24:56', '2019-11-06 15:23:40', '2019-11-06 15:34:33', NULL, 'Paid', NULL, NULL, NULL),
(269, NULL, '2019-11-06 19:11:00', NULL, NULL, NULL, NULL, 3, 2, 74, 59, 1, NULL, NULL, '2019-11-06 15:30:41', '2019-11-06 15:30:41', NULL, NULL, NULL, NULL, NULL),
(270, NULL, '2019-11-10 18:15:50', NULL, NULL, 'eslam patient cancell this appointment', NULL, 3, 5, 68, 67, 1, NULL, NULL, '2019-11-07 09:16:06', '2019-11-10 10:36:53', 'yfhhjjj', NULL, NULL, NULL, NULL),
(271, NULL, '2019-11-09 14:32:05', NULL, NULL, NULL, NULL, 3, 5, 68, 67, 1, NULL, NULL, '2019-11-07 10:32:16', '2019-11-10 15:47:53', 'hghjn', NULL, NULL, NULL, NULL),
(272, NULL, '2019-11-08 17:11:00', NULL, 50.00, 'Hi', NULL, 3, 5, 76, 1, 1, 1, '2019-11-09 15:49:30', '2019-11-07 13:44:36', '2019-11-07 13:51:00', NULL, NULL, NULL, NULL, NULL),
(273, NULL, '2019-11-23 01:00:00', NULL, 200.00, NULL, 'ااه', 1, 1, 2, 1, NULL, 1, '2019-11-12 11:05:45', '2019-11-10 09:05:20', '2019-11-10 09:05:45', 'ااه', NULL, NULL, NULL, NULL),
(274, NULL, '2019-11-13 01:00:00', NULL, 200.00, 'خفيت', 'try', 1, 5, 2, 1, NULL, 1, '2019-11-12 11:13:00', '2019-11-10 09:11:16', '2019-11-10 09:13:28', 'try', NULL, NULL, NULL, NULL),
(275, NULL, '2019-11-29 16:04:43', NULL, NULL, NULL, NULL, 3, 5, 68, 67, 1, NULL, NULL, '2019-11-10 11:04:47', '2019-11-10 11:17:53', NULL, NULL, NULL, NULL, NULL),
(276, NULL, '2019-11-21 17:09:49', NULL, 100.00, NULL, NULL, 3, 1, 68, 67, 1, 1, '2019-11-12 15:11:00', '2019-11-10 13:09:54', '2019-11-10 13:11:00', NULL, NULL, NULL, NULL, NULL),
(277, NULL, '2019-11-18 17:11:35', NULL, 50.00, NULL, NULL, 3, 1, 76, 1, 1, 1, '2019-11-14 15:23:56', '2019-11-12 13:16:56', '2019-11-12 13:23:56', NULL, NULL, NULL, NULL, NULL),
(278, NULL, '2019-11-13 00:11:00', NULL, NULL, NULL, 'hhhh', 1, 2, 76, 1, NULL, NULL, NULL, '2019-11-12 13:26:22', '2019-11-12 13:26:22', NULL, NULL, NULL, NULL, NULL),
(279, NULL, '2019-11-13 05:02:32', NULL, NULL, NULL, NULL, 3, 2, 68, 67, 1, NULL, NULL, '2019-11-12 20:02:42', '2019-11-12 20:02:42', NULL, NULL, NULL, NULL, NULL),
(280, NULL, '2019-11-13 00:03:27', NULL, NULL, NULL, NULL, 3, 2, 68, 67, 1, NULL, NULL, '2019-11-12 20:03:36', '2019-11-12 20:03:36', NULL, NULL, NULL, NULL, NULL),
(281, NULL, '2019-11-13 00:04:12', NULL, NULL, NULL, NULL, 3, 2, 68, 67, 1, NULL, NULL, '2019-11-12 20:04:19', '2019-11-12 20:04:19', NULL, NULL, NULL, NULL, NULL),
(282, NULL, '2019-11-13 00:15:06', NULL, NULL, NULL, NULL, 1, 2, 68, 67, NULL, NULL, NULL, '2019-11-12 20:15:14', '2019-11-12 20:15:14', NULL, NULL, NULL, NULL, NULL),
(283, NULL, '2019-11-13 00:15:56', NULL, NULL, NULL, 'test', 1, 2, 68, 67, NULL, NULL, NULL, '2019-11-12 20:16:14', '2019-11-12 20:16:14', NULL, NULL, NULL, NULL, NULL),
(284, NULL, '2019-11-25 18:11:00', NULL, NULL, 'فكيف', NULL, 3, 3, 79, 64, 1, NULL, NULL, '2019-11-25 05:47:56', '2019-11-25 05:51:21', NULL, NULL, 67, NULL, NULL),
(285, NULL, '2019-11-25 18:11:00', NULL, NULL, 'Test cancel', NULL, 3, 5, 79, 64, 1, NULL, NULL, '2019-11-25 05:48:38', '2019-11-25 05:50:17', NULL, NULL, NULL, NULL, NULL),
(286, NULL, '2019-11-25 18:11:00', NULL, NULL, NULL, NULL, 3, 2, 79, 64, 1, NULL, NULL, '2019-11-25 05:54:02', '2019-11-25 05:54:02', NULL, NULL, NULL, NULL, NULL),
(287, NULL, '2020-01-27 17:53:33', NULL, NULL, NULL, NULL, 3, 5, 81, 1, 1, NULL, NULL, '2020-01-27 13:53:43', '2020-01-27 13:57:05', 'hggg', NULL, NULL, NULL, NULL),
(288, NULL, '2020-01-27 17:53:53', NULL, NULL, NULL, NULL, 2, 2, 81, 1, NULL, NULL, NULL, '2020-01-27 13:54:03', '2020-01-27 13:54:03', NULL, NULL, NULL, NULL, NULL),
(289, NULL, '2020-04-05 21:34:00', NULL, NULL, NULL, NULL, 1, 2, 82, 56, NULL, NULL, NULL, '2020-04-05 15:34:23', '2020-04-05 15:34:23', NULL, NULL, NULL, NULL, NULL),
(290, NULL, '2020-08-27 12:50:00', NULL, NULL, NULL, 'iii', 1, 2, 88, 56, NULL, NULL, NULL, '2020-08-09 08:50:51', '2020-08-09 08:50:51', 'pop[', NULL, NULL, NULL, NULL),
(291, NULL, '2020-08-24 15:00:00', NULL, NULL, NULL, '45 street , test city', 1, 2, 88, 1, NULL, NULL, NULL, '2020-08-23 10:00:49', '2020-08-23 10:00:49', 'headache', NULL, NULL, NULL, NULL),
(292, NULL, '2020-08-30 15:01:00', NULL, NULL, NULL, NULL, 3, 2, 88, 56, NULL, NULL, NULL, '2020-08-23 10:02:00', '2020-08-23 10:02:00', 'headache', NULL, NULL, NULL, NULL),
(293, NULL, '2020-09-06 14:02:00', NULL, NULL, NULL, NULL, 2, 2, 88, 59, NULL, NULL, NULL, '2020-08-23 10:02:35', '2020-08-23 10:02:35', 'headache', NULL, NULL, NULL, NULL),
(294, NULL, '2020-08-30 07:25:00', NULL, NULL, NULL, NULL, 3, 2, 88, 56, NULL, NULL, NULL, '2020-08-30 02:25:40', '2020-08-30 02:25:40', 'ffff', NULL, NULL, NULL, NULL),
(295, NULL, '2020-09-16 08:24:00', NULL, NULL, NULL, NULL, 2, 2, 88, 93, NULL, NULL, NULL, '2020-09-06 04:24:22', '2020-09-06 04:24:22', 'ffff', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `consultations_reviews`
--

CREATE TABLE `consultations_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `consultation_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultations_reviews`
--

INSERT INTO `consultations_reviews` (`id`, `patient_id`, `consultation_id`, `content`, `rate`, `created_at`, `updated_at`) VALUES
(1, 65, 243, 'Trtrtrt', 3, '2019-10-31 07:12:32', '2019-10-31 07:12:32'),
(2, 65, 251, 'Heinz', 4, '2019-11-04 11:32:36', '2019-11-04 11:32:36'),
(3, 65, 244, 'Hkj', 3, '2019-11-04 23:07:44', '2019-11-04 23:07:44'),
(4, 68, 253, 'Not good', 1, '2019-11-05 10:02:41', '2019-11-05 10:02:41'),
(5, 68, 260, 'hi', 4, '2019-11-05 11:08:42', '2019-11-05 11:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `consultation_reports`
--

CREATE TABLE `consultation_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `consultation_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultation_reports`
--

INSERT INTO `consultation_reports` (`id`, `content`, `user_id`, `consultation_id`, `created_at`, `updated_at`) VALUES
(1, 'Tee tef', 65, 233, '2019-10-30 14:00:07', '2019-10-30 14:00:07'),
(2, 'Report', 65, 239, '2019-10-30 20:30:26', '2019-10-30 20:30:26'),
(3, 'Report', 65, 233, '2019-10-30 20:30:38', '2019-10-30 20:30:38'),
(4, 'Report', 64, 233, '2019-10-30 21:56:52', '2019-10-30 21:56:52'),
(5, 'Hi,jjjh', 65, 256, '2019-11-04 22:19:18', '2019-11-04 22:19:18'),
(6, 'Kkkkkk', 65, 256, '2019-11-04 22:19:26', '2019-11-04 22:19:26'),
(7, 'Hgdfh', 64, 233, '2019-11-04 22:52:30', '2019-11-04 22:52:30'),
(8, 'Kjgk', 65, 233, '2019-11-04 23:06:59', '2019-11-04 23:06:59'),
(9, 'Kjgkngk', 65, 233, '2019-11-04 23:07:08', '2019-11-04 23:07:08'),
(10, 'Text text', 64, 233, '2019-11-05 03:58:53', '2019-11-05 03:58:53'),
(11, 'Ty', 68, 253, '2019-11-05 11:08:13', '2019-11-05 11:08:13'),
(12, 'Report content', 67, 270, '2019-11-10 12:45:01', '2019-11-10 12:45:01'),
(13, 'Report content', 68, 276, '2019-11-10 13:47:47', '2019-11-10 13:47:47'),
(14, 'Report content', 68, 276, '2019-11-10 13:47:56', '2019-11-10 13:47:56'),
(15, 'Report content', 68, 260, '2019-11-10 15:48:36', '2019-11-10 15:48:36'),
(16, 'Report content', 67, 265, '2019-11-13 00:18:52', '2019-11-13 00:18:52'),
(17, 'Report content', 67, 259, '2019-11-13 00:19:03', '2019-11-13 00:19:03'),
(18, 'Report content', 68, 268, '2019-11-17 06:56:42', '2019-11-17 06:56:42'),
(19, 'Report content', 81, 287, '2020-01-27 13:57:17', '2020-01-27 13:57:17'),
(20, 'Report content', 81, 287, '2020-01-27 13:57:49', '2020-01-27 13:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `consultation_types`
--

CREATE TABLE `consultation_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultation_types`
--

INSERT INTO `consultation_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Accepted', NULL, NULL),
(2, 'Pending', NULL, NULL),
(3, 'Rejected', NULL, NULL),
(4, 'Paid', NULL, NULL),
(5, 'Cancelled', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user1_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user1_id` bigint(20) UNSIGNED NOT NULL,
  `user2_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user2_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user1_type`, `user1_id`, `user2_type`, `user2_id`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 64, 'App\\User', 65, '2019-10-30 20:26:30', '2019-10-30 20:26:30'),
(2, 'App\\User', 65, 'App\\User', 64, '2019-10-31 07:12:37', '2019-10-31 07:12:37'),
(4, 'App\\User', 68, 'App\\User', 67, '2019-11-04 11:16:44', '2019-11-04 11:16:44'),
(5, 'App\\User', 69, 'App\\User', 64, '2019-11-04 11:54:04', '2019-11-04 11:54:04'),
(6, 'App\\User', 64, 'App\\User', 69, '2019-11-04 22:39:06', '2019-11-04 22:39:06'),
(7, 'App\\Http\\Controllers\\Dashboard\\Admins\\Models\\Admin', 1, 'App\\User', 58, '2019-11-05 11:10:02', '2019-11-05 11:10:02'),
(8, 'App\\User', 68, 'App\\User', 2, '2019-11-08 13:40:33', '2019-11-08 13:40:33'),
(9, 'App\\User', 68, 'App\\User', 73, '2019-11-08 13:57:29', '2019-11-08 13:57:29'),
(10, 'App\\User', 68, 'App\\User', 1, '2019-11-09 19:38:44', '2019-11-09 19:38:44'),
(11, 'App\\User', 76, 'App\\User', 1, '2019-11-12 13:26:54', '2019-11-12 13:26:54'),
(12, 'App\\User', 64, 'App\\User', 79, '2019-11-25 05:49:19', '2019-11-25 05:49:19'),
(13, 'App\\User', 81, 'App\\User', 1, '2020-01-27 13:53:12', '2020-01-27 13:53:12'),
(15, 'App\\User', 88, 'App\\User', 56, '2020-08-10 07:42:27', '2020-08-10 07:42:27'),
(16, 'App\\User', 88, 'App\\User', 93, '2020-09-06 04:24:35', '2020-09-06 04:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `name_en`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 'المملكة العربية السعودية', 'Kingdom of Saudi Arabia', NULL, NULL, NULL),
(2, 'إثيوبيا', 'Ethiopia', NULL, NULL, NULL),
(3, 'أفغانستان', 'Afghanistan', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` double(8,2) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', NULL, NULL),
(2, 'جنيه مصرى', 'LE', 'LE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `name_en`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'الجراحة العامة', 'General Surgery', NULL, '2020-08-20 12:25:31', 0),
(2, 'طب الأطفال', 'Pediatrics', NULL, NULL, 1),
(3, 'طب الشيخوخة', 'geriatrics', NULL, NULL, 0),
(4, 'الطب النفسي', 'Psychiatry', NULL, NULL, 1),
(5, 'الطب الإشعاعي', 'Radiology', NULL, NULL, 0),
(6, 'التخدير', 'Anesthesia', NULL, NULL, 0),
(8, 'أمراض النساء', 'Women disease', NULL, NULL, 0),
(9, 'test', 'اختبار', '2020-08-20 13:19:43', '2020-08-20 13:20:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_appointments`
--

CREATE TABLE `doctor_appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '0 ->Home visit /1 -> online /2->clinic',
  `day` int(11) NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `interval` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_appointments`
--

INSERT INTO `doctor_appointments` (`id`, `doctor_id`, `type`, `day`, `time_from`, `time_to`, `interval`, `created_at`, `updated_at`) VALUES
(18, 108, 1, 6, '18:00:00', '20:00:00', '30', '2020-09-21 11:47:18', '2020-09-21 11:47:18'),
(19, 108, 1, 0, '20:00:00', '22:00:00', '30', '2020-09-21 11:47:18', '2020-09-21 11:47:18'),
(20, 108, 2, 1, '16:00:00', '20:00:00', '30', '2020-09-21 11:47:18', '2020-09-21 11:47:18'),
(21, 56, 2, 2, '16:00:00', '20:00:00', '30', '2020-09-21 11:47:18', '2020-09-21 11:47:18'),
(22, 56, 1, 3, '17:00:00', '18:00:00', '30', '2020-09-21 11:47:18', '2020-09-21 11:47:18'),
(23, 56, 0, 4, '17:00:00', '19:30:00', '30', '2020-09-21 11:47:18', '2020-09-21 11:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

CREATE TABLE `doctor_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `appointments` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '{"days":"","am":{"from_am":"","to_am":""},"pm":{"from_pm":"","to_pm":""}}',
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_doctor` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_services` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 => offline, 1 => online',
  `template_id` bigint(20) UNSIGNED DEFAULT 1,
  `region_id` bigint(20) UNSIGNED DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `doctor_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_price` double(8,2) DEFAULT NULL,
  `clinic_price` double(8,2) DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `final` tinyint(1) NOT NULL DEFAULT 0,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cairo-regular'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_details`
--

INSERT INTO `doctor_details` (`id`, `doctor_id`, `appointments`, `lat`, `lng`, `about_doctor`, `doctor_services`, `profile_status`, `template_id`, `region_id`, `facebook`, `twitter`, `linkedin`, `youtube`, `instagram`, `created_at`, `updated_at`, `doctor_title`, `home_price`, `clinic_price`, `currency_id`, `logo`, `background`, `cv`, `link_name`, `last_activity`, `final`, `country`, `city`, `font`) VALUES
(1, 1, '{\"days\":[\"0\",\"1\",\"2\"],\"am\":{\"from_am\":\"9:00\",\"to_am\":\"12:00\"},\"pm\":{\"from_pm\":\"2:00\",\"to_pm\":\"8:00\"}}', '25.00000-', '25.00000', 'انا طبيب اعمل في الجراحة العامة و تخرجت من كلية الطب جامعة القاهره سنة 2000، واعمل في مستشفى القصر العيني، انا طبيب اعمل في الجراحة العامة و تخرجت من كلية الطب جامعة القاهره سنة 2000، واعمل في مستشفى القصر العيني، انا طبيب اعمل في الجراحة العامة و تخرجت من كلية الطب جامعة القاهره سنة 2000، واعمل في مستشفى القصر العيني، انا طبيب اعمل في الجراحة العامة و تخرجت من كلية الطب جامعة القاهره سنة 2000، واعمل في مستشفى القصر العيني، انا طبيب اعمل في الجراحة العامة و تخرجت من كلية الطب جامعة القاهره سنة 2000، واعمل في مستشفى القصر العيني، انا طبيب اعمل في الجراحة العامة و تخرجت من كلية الطب جامعة القاهره سنة 2000، واعمل في مستشفى القصر العيني،', 'asdasdasd2moh', 1, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-25 12:50:07', NULL, 200.00, 100.00, NULL, '/uploads/img/1_1568544023/profile_picture/1_profilePicture_12137148271568544023.png', '/uploads/img/1_1568544023/profile_picture/1_profilePicture_2135385651568544023.jpg', 'نبذة عن الطبيب و سيرته الذاتيه هنا، نبذة عن الطبيب و سيرته الذاتيه هنا، نبذة عن الطبيب و سيرته الذاتيه هنا، نبذة عن الطبيب و سيرته الذاتيه هنا،', 't', '2019-12-25 12:50:07', 0, NULL, NULL, 'cairo-regular'),
(52, 56, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, NULL, NULL, 0, 4, NULL, '#', '#', '#', '#', '#', '2019-10-30 08:38:06', '2020-08-24 09:00:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'booking', NULL, 0, NULL, NULL, 'cairo-regular'),
(53, 57, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, NULL, NULL, 0, NULL, NULL, '#', '#', '#', '#', '#', '2019-10-30 08:39:09', '2019-10-30 08:39:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'qov7rzDKM87yKc1LEgDobZrxaQv85eMV', NULL, 0, NULL, NULL, 'cairo-regular'),
(54, 58, '{\"days\":[2,3,4,5,6],\"am\":{\"from_am\":\"9:00\",\"to_am\":\"11:00\"},\"pm\":{\"from_pm\":\"3:30\",\"to_pm\":\"8:15\"}}', NULL, NULL, 'heloo', 'I am doctor', 1, 1, 1, '#', '#', '#', '#', '#', '2019-10-30 08:39:54', '2019-10-30 09:31:51', 'kids doctor', NULL, NULL, NULL, NULL, NULL, NULL, '757MbWtnafYmdnLiE4Ek2D5M8X4iiy9q', NULL, 0, NULL, NULL, 'cairo-regular'),
(55, 59, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, NULL, NULL, 0, 1, NULL, '#', '#', '#', '#', '#', '2019-10-30 08:40:39', '2020-08-25 07:42:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'booking', NULL, 0, NULL, NULL, 'cairo-regular'),
(56, 64, '{\"days\":[\"0\",\"1\",\"2\",\"3\",\"4\",\"5\"],\"am\":{\"from_am\":\"05:16\",\"to_am\":\"09:16\"},\"pm\":{\"from_pm\":null,\"to_pm\":null}}', NULL, NULL, 'About doctor text text', 'H I can get', 0, NULL, NULL, '#', '#', '#', '#', '#', '2019-10-30 08:47:19', '2019-11-25 05:34:50', 'Title doctor 👩‍⚕️', NULL, 500.00, 1, NULL, NULL, NULL, '8IeVV4G39uLBvOvUYKsfaqCRYl1BdZth', NULL, 0, NULL, NULL, 'cairo-regular'),
(57, 65, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, NULL, NULL, 0, NULL, NULL, '#', '#', '#', '#', '#', '2019-10-30 09:43:40', '2019-10-30 09:43:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TGOZSAvyGjiA9fKEQS5NqryXMosVwQjQ', NULL, 0, NULL, NULL, 'cairo-regular'),
(58, 67, '{\"days\":[2,5],\"am\":{\"from_am\":\"07:00\",\"to_am\":\"11:00\"},\"pm\":{\"from_pm\":\"01:00\",\"to_pm\":\"08:00\"}}', '28.503827499999993', '30.800074218750026', 'eslam bio', 'mmmmmmmmmmmmmm', 1, 1, 1, 'f', 't', 'l', 'y', 'i', '2019-10-30 11:30:11', '2019-11-12 16:09:43', 'my title', NULL, NULL, NULL, NULL, NULL, NULL, 'K2puYLVlZAG1cpo4eb1282YKHUQOAbfn', NULL, 0, NULL, NULL, 'cairo-regular'),
(59, 69, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, NULL, NULL, 0, NULL, NULL, '#', '#', '#', '#', '#', '2019-11-04 11:49:48', '2019-11-04 11:49:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TLyeM7tC6pBH5ggTCn9zHa7aVt9UxSfW', NULL, 0, NULL, NULL, 'cairo-regular'),
(60, 68, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, NULL, NULL, 0, NULL, NULL, '#', '#', '#', '#', '#', '2019-11-05 11:09:04', '2019-11-24 07:28:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'booking', '2019-11-24 09:28:38', 0, NULL, NULL, 'cairo-regular'),
(61, 73, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, NULL, NULL, 1, NULL, NULL, '#', '#', '#', '#', '#', '2019-11-06 14:01:34', '2019-11-06 15:25:49', NULL, 600.00, 500.00, 2, NULL, NULL, NULL, 'Kb85SoFkG685UXXMAyl14UGSyO4RzXF2', NULL, 0, NULL, NULL, 'cairo-regular'),
(62, 74, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, NULL, NULL, 0, NULL, NULL, '#', '#', '#', '#', '#', '2019-11-06 15:36:47', '2019-11-06 15:36:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9Q3QUfis0zRHFAfSFAViAcEFTkOJmgUC', NULL, 0, NULL, NULL, 'cairo-regular'),
(63, 76, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, NULL, NULL, 0, NULL, NULL, '#', '#', '#', '#', '#', '2019-11-07 13:36:28', '2019-11-07 13:36:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hZjaIDHODEmWlFCCzCI8plJHWRjAdgG4', NULL, 0, NULL, NULL, 'cairo-regular'),
(64, 79, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, NULL, NULL, 0, NULL, NULL, '#', '#', '#', '#', '#', '2019-11-25 05:51:58', '2019-11-25 05:51:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jGNjyyvyvE3D8CJF4eIqfJAlZpnHzJKw', NULL, 0, NULL, NULL, 'cairo-regular'),
(65, 86, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, NULL, NULL, 0, 1, NULL, '#', '#', '#', '#', '#', '2020-06-04 10:42:26', '2020-08-17 10:49:58', NULL, NULL, NULL, NULL, NULL, NULL, 'jghjhgjhujhjg', 'pp', '2020-08-17 10:49:58', 0, NULL, NULL, 'cairo-regular'),
(66, 87, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, 'fgdfgbadfg', 'dfgdafgdfg', 0, 3, NULL, '#', '#', '#', '#', '#', '2020-06-04 11:09:33', '2020-09-05 20:10:17', 'sergion', NULL, NULL, NULL, 'uploads\\img\\87_1591276173\\profile_picture\\87_profilePicture_19244858621591276173.png', 'uploads\\img\\87_1591276173\\profile_picture\\87_profilePicture_34367091591276173.png', 'ghjhjfxghghghcgdtgfhyyudghhjdg', 'maha', '2020-09-05 20:10:17', 1, NULL, NULL, 'Frutiger'),
(67, 90, '{\"days\":[\"1\",\"2\",\"3\"],\"am\":{\"from_am\":\"12:00\",\"to_am\":\"1:30 \"},\"pm\":{\"from_pm\":\"2:00 \",\"to_pm\":\"9:30 \"}}', NULL, NULL, 'test', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 1, 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com', '2020-08-17 11:40:16', '2020-08-25 05:45:05', 'sergion', 400.00, 300.00, 1, '\\uploads\\img\\90_1597671616\\profile_picture\\90_profilePicture_14979269231597671616.png', '\\uploads\\img\\90_1597671616\\profile_picture\\90_profilePicture_11689383011597671616.png', 'test', 'omar', '2020-08-17 15:14:06', 1, NULL, NULL, 'Frutiger'),
(68, 91, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, 'est nbza', 'services of asim\r\ntest asim nbza\r\nزتاتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتت\r\n\r\ntest asim nbza\r\nزتاتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتت\r\ntest asim nbza\r\nزتاتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتت\r\ntest asim nbza\r\nزتاتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتت', 0, 2, NULL, 'https://www.google.com', 'https://www.google.com', 'https://www.google.com', 'https://www.google.com', 'https://www.google.com', '2020-09-04 17:43:18', '2020-09-04 19:30:48', 'eeeeeeeeeeeeeee position of asim', NULL, NULL, NULL, 'uploads\\img\\91_1599248598\\profile_picture\\91_profilePicture_14157927031599248598.jpg', 'uploads\\img\\91_1599248598\\profile_picture\\91_profilePicture_11276413581599248598.jpg', 'test asim nbza\r\ntest asim nbza\r\nزتاتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتت\r\ntest asim nbza\r\nزتاتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتتت', 'asim', '2020-09-04 19:30:48', 1, NULL, NULL, 'cairo-regular'),
(69, 92, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, 'nbza for eriiiiiiiic', 'eric serviceeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeees', 0, 5, NULL, 'https://www.facebook.om', 'https://www.facebook.om', 'https://www.facebook.om', 'https://www.facebook.om', 'https://www.facebook.om', '2020-09-04 19:29:09', '2020-09-05 19:20:55', NULL, NULL, NULL, NULL, 'uploads\\img\\92_1599254949\\profile_picture\\92_profilePicture_2734882961599254949.jpg', NULL, 'seera zateya eric\r\nsggggggggggggggggggggggggg', 'zezo eric', '2020-09-05 19:20:55', 1, NULL, NULL, 'cairo-regular'),
(70, 93, '{\"days\":\"\",\"am\":{\"from_am\":\"\",\"to_am\":\"\"},\"pm\":{\"from_pm\":\"\",\"to_pm\":\"\"}}', NULL, NULL, NULL, NULL, 0, 5, NULL, '#', '#', '#', '#', '#', '2020-09-05 20:10:13', '2020-09-06 05:45:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aLwAjMndCflwLtmscgqoPNVwEHLJI73Y', '2020-09-06 05:45:54', 0, NULL, NULL, 'cairo-regular');

-- --------------------------------------------------------

--
-- Table structure for table `d_contacts`
--

CREATE TABLE `d_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d_contacts`
--

INSERT INTO `d_contacts` (`id`, `name`, `email`, `msg`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 'maha', 'admin@example.com', 'building 25 , neighborhood 4\r\ndistrict 16', 92, '2020-09-05 05:35:02', '2020-09-05 05:35:02'),
(2, 'orange juice', 'test@mailinator.com', 'eeeeeeeeeeeeeeeee', 92, '2020-09-05 06:29:07', '2020-09-05 06:29:07'),
(3, 'ddd', 'fff@ff.hh', 'kkkkkkkkkkkkkkkkkkk', 92, '2020-09-05 06:53:32', '2020-09-05 06:53:32'),
(4, 'fffffffff', 'kkkkkkkkkkkkk1111@kkkvv.j', 'kkkkkkkkkkkkkkkk', 92, '2020-09-05 10:11:27', '2020-09-05 10:11:27'),
(5, '44444', 'owner@example.com', 'rrrrrrrrrrrrrrrrrr', 92, '2020-09-05 10:33:18', '2020-09-05 10:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `d_galleries`
--

CREATE TABLE `d_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d_galleries`
--

INSERT INTO `d_galleries` (`id`, `title`, `title_en`, `created_at`, `updated_at`, `doctor_id`) VALUES
(1, 'اول البوم', 'First Album', '2019-12-20 17:35:36', '2019-12-20 17:35:36', 1),
(2, 'bh', 'nhgbj', '2020-07-02 10:51:22', '2020-07-02 10:51:22', 86),
(3, 'eric album 1', 'eric album 1', '2020-09-05 05:23:19', '2020-09-05 05:23:19', 92),
(4, 'eric album 2', 'eric album 2', '2020-09-05 05:25:33', '2020-09-05 05:25:33', 92);

-- --------------------------------------------------------

--
-- Table structure for table `d_images`
--

CREATE TABLE `d_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d_images`
--

INSERT INTO `d_images` (`id`, `src`, `gallery_id`, `created_at`, `updated_at`) VALUES
(1, '/uploads/img/1_1568544023/profile_picture/1_profilePicture_14645780771568544023.png', 1, '2019-12-20 17:36:02', '2019-12-20 17:36:02'),
(2, '/uploads/img/1_1568544023/profile_picture/1_profilePicture_17367566531568544023.png', 1, '2019-12-20 17:36:08', '2019-12-20 17:36:08'),
(3, '/uploads/img/86_1591274546/profile_picture/86_profilePicture_14752997761591274546.jpg', 2, '2020-07-02 10:51:45', '2020-07-02 10:51:45'),
(4, 'uploads\\img\\92_1599254949\\profile_picture\\92_profilePicture_11948667721599254949.jpeg', 3, '2020-09-05 05:23:39', '2020-09-05 05:23:39'),
(5, 'uploads\\img\\92_1599254949\\profile_picture\\92_profilePicture_19561744891599254949.jpg', 3, '2020-09-05 05:24:44', '2020-09-05 05:24:44'),
(6, 'uploads\\img\\92_1599254949\\profile_picture\\92_profilePicture_7517587591599254949.jpg', 4, '2020-09-05 05:25:59', '2020-09-05 05:25:59'),
(7, 'uploads\\img\\92_1599254949\\profile_picture\\92_profilePicture_13564875521599254949.jpg', 4, '2020-09-05 05:26:11', '2020-09-05 05:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `patient_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(2, 63, 58, '2019-10-30 09:43:28', '2019-10-30 09:43:28'),
(4, 65, 58, '2019-10-30 13:12:56', '2019-10-30 13:12:56'),
(6, 68, 64, '2019-11-02 12:19:23', '2019-11-02 12:19:23'),
(8, 65, 64, '2019-11-04 11:30:24', '2019-11-04 11:30:24'),
(9, 69, 59, '2019-11-04 11:54:54', '2019-11-04 11:54:54'),
(11, 68, 67, '2019-11-06 13:27:08', '2019-11-06 13:27:08'),
(13, 68, 1, '2019-11-09 19:57:45', '2019-11-09 19:57:45'),
(14, 76, 56, '2019-11-12 13:30:20', '2019-11-12 13:30:20'),
(15, 79, 1, '2019-11-25 05:53:03', '2019-11-25 05:53:03'),
(18, 81, 56, '2020-01-27 13:56:27', '2020-01-27 13:56:27'),
(19, 82, 56, '2020-04-05 15:31:42', '2020-04-05 15:31:42'),
(21, 88, 56, '2020-08-10 07:39:52', '2020-08-10 07:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_name`, `email`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 65, 'Test', '2019-11-04 11:28:52', '2019-11-04 11:28:52'),
(2, NULL, NULL, 1, 'this is content', '2019-11-05 19:10:34', '2019-11-05 19:10:34'),
(3, NULL, NULL, 1, 'this is content', '2019-11-05 19:11:06', '2019-11-05 19:11:06'),
(4, NULL, NULL, 1, 'this is content', '2019-11-05 19:16:03', '2019-11-05 19:16:03'),
(5, NULL, NULL, 1, 'this is content', '2019-11-05 19:32:08', '2019-11-05 19:32:08'),
(6, NULL, NULL, 68, 'test hrllllllkjhvvvbjjb. nkkmkki. uhj jjbv', '2019-11-05 19:39:38', '2019-11-05 19:39:38'),
(7, NULL, NULL, 68, 'test hrllllllkjhvvvbjjb. nkkmkki. uhj jjbv', '2019-11-05 19:39:44', '2019-11-05 19:39:44'),
(8, NULL, NULL, 68, 'b hguu', '2019-11-05 19:45:12', '2019-11-05 19:45:12'),
(9, NULL, NULL, 68, 'xgtd', '2019-11-05 19:48:22', '2019-11-05 19:48:22'),
(10, 'dd', 'ddd@dd.com', NULL, 'dd', '2019-11-06 10:05:18', '2019-11-06 10:05:18'),
(11, NULL, NULL, 68, 'gfg', '2019-11-06 13:28:39', '2019-11-06 13:28:39'),
(12, NULL, NULL, 68, 'gghh', '2019-11-06 13:30:12', '2019-11-06 13:30:12'),
(13, NULL, NULL, 68, 'fgr', '2019-11-06 13:31:57', '2019-11-06 13:31:57'),
(14, NULL, NULL, 75, 'دد', '2019-11-06 15:39:23', '2019-11-06 15:39:23'),
(15, NULL, NULL, 75, 'دد', '2019-11-06 15:39:24', '2019-11-06 15:39:24'),
(16, NULL, NULL, 75, 'دد', '2019-11-06 15:39:24', '2019-11-06 15:39:24'),
(17, 'df', 'admin@admin.com', NULL, 'f', '2020-07-02 09:15:46', '2020-07-02 09:15:46'),
(18, NULL, NULL, 86, 'gh', '2020-07-02 10:48:19', '2020-07-02 10:48:19'),
(19, NULL, NULL, 88, 'ygdfghsdf ghs', '2020-08-09 09:59:00', '2020-08-09 09:59:00'),
(20, NULL, NULL, 88, '55555555555555555', '2020-08-09 10:04:07', '2020-08-09 10:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `generals`
--

CREATE TABLE `generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generals`
--

INSERT INTO `generals` (`id`, `label`, `content`, `content_en`, `created_at`, `updated_at`) VALUES
(1, 'policy', '<b>content1</b>', '<b>content2</b>', NULL, NULL),
(2, 'help', '<b>content11</b>', '<b>content22</b>', NULL, NULL),
(3, 'about', 'https://www.youtube.com/embed/kA3ucH8y9s8', 'https://www.youtube.com/embed/kA3ucH8y9s8', NULL, '2020-08-09 10:36:40'),
(4, 'ambulance', '123', '123', NULL, NULL),
(5, 'ad', '\\uploads\\img\\1_1568544023\\profile_picture\\1_profilePicture_16084528611568544023.jpg', '\\uploads\\img\\1_1568544023\\profile_picture\\1_profilePicture_16084528611568544023.jpg', NULL, '2020-08-30 10:28:38'),
(6, 'video', 'https://www.youtube.com/embed/hJH5AflSPD4', 'https://www.youtube.com/embed/hJH5AflSPD4', NULL, '2020-08-23 11:25:21'),
(7, 'email', '', '', NULL, NULL),
(8, 'address', '', '', NULL, NULL),
(9, 'about_text', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `joinapps`
--

CREATE TABLE `joinapps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_advices`
--

CREATE TABLE `medical_advices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `content`, `path`, `sender_type`, `sender_id`, `conversation_id`, `created_at`, `updated_at`, `is_read`) VALUES
(1, 'رساله', NULL, 'App\\User', 64, 1, '2019-10-30 20:26:41', '2019-11-04 22:22:37', 'READ'),
(2, 'رساله', NULL, 'App\\User', 64, 1, '2019-10-30 20:26:42', '2019-11-04 22:22:37', 'READ'),
(3, 'Fgh', NULL, 'App\\User', 68, 4, '2019-11-04 11:16:46', '2019-11-05 11:21:01', 'READ'),
(4, 'Ff', NULL, 'App\\User', 68, 4, '2019-11-04 11:16:54', '2019-11-05 11:21:01', 'READ'),
(5, 'Ffg', NULL, 'App\\User', 68, 4, '2019-11-04 11:16:58', '2019-11-05 11:21:01', 'READ'),
(6, 'Gg', NULL, 'App\\User', 68, 4, '2019-11-04 11:17:07', '2019-11-05 11:21:01', 'READ'),
(7, 'Gh', NULL, 'App\\User', 68, 4, '2019-11-04 11:17:10', '2019-11-05 11:21:01', 'READ'),
(8, 'Bh', NULL, 'App\\User', 68, 4, '2019-11-04 11:17:13', '2019-11-05 11:21:01', 'READ'),
(9, 'Hh', NULL, 'App\\User', 68, 4, '2019-11-04 11:17:16', '2019-11-05 11:21:01', 'READ'),
(10, 'Vv', NULL, 'App\\User', 68, 4, '2019-11-04 11:17:18', '2019-11-05 11:21:01', 'READ'),
(11, 'Test', NULL, 'App\\User', 64, 1, '2019-11-04 11:42:45', '2019-11-04 22:22:37', 'READ'),
(12, NULL, '/uploads/files/64_1572432439/5dc02b02c6423_userImage.jpeg', 'App\\User', 64, 1, '2019-11-04 11:43:30', '2019-11-04 22:22:37', 'READ'),
(13, 'Test test', NULL, 'App\\User', 69, 5, '2019-11-04 11:54:08', '2019-11-14 08:52:19', 'READ'),
(14, 'Test test', NULL, 'App\\User', 69, 5, '2019-11-04 11:54:09', '2019-11-14 08:52:19', 'READ'),
(15, 'Test test', NULL, 'App\\User', 69, 5, '2019-11-04 11:54:12', '2019-11-14 08:52:19', 'READ'),
(16, 'Test test', NULL, 'App\\User', 69, 5, '2019-11-04 11:54:12', '2019-11-14 08:52:19', 'READ'),
(17, 'Test test', NULL, 'App\\User', 69, 5, '2019-11-04 11:54:13', '2019-11-14 08:52:19', 'READ'),
(18, 'Test test', NULL, 'App\\User', 69, 5, '2019-11-04 11:54:15', '2019-11-14 08:52:19', 'READ'),
(19, 'Test test', NULL, 'App\\User', 69, 5, '2019-11-04 11:54:15', '2019-11-14 08:52:19', 'READ'),
(20, 'Test test', NULL, 'App\\User', 69, 5, '2019-11-04 11:54:15', '2019-11-14 08:52:19', 'READ'),
(21, 'Hey there is no one in your office or you want me your text update I just want you know what you mean and how you gonna is your', NULL, 'App\\User', 64, 1, '2019-11-05 04:00:16', '2019-11-05 12:30:24', 'READ'),
(22, 'write message here', NULL, 'App\\User', 68, 4, '2019-11-05 11:08:36', '2019-11-05 11:21:01', 'READ'),
(23, NULL, '/uploads/files/68_1572704228/5dc17468dc4c5_userImage.jpeg', 'App\\User', 68, 4, '2019-11-05 11:08:56', '2019-11-05 11:21:01', 'READ'),
(24, 'محسن', NULL, 'App\\Http\\Controllers\\Dashboard\\Admins\\Models\\Admin', 1, 7, '2019-11-05 11:10:08', '2019-11-05 11:10:08', NULL),
(25, 'write message here', NULL, 'App\\User', 68, 4, '2019-11-05 11:12:26', '2019-11-05 11:21:01', 'READ'),
(26, 'write message here', NULL, 'App\\User', 68, 4, '2019-11-05 11:12:26', '2019-11-05 11:21:01', 'READ'),
(27, 'Hi', NULL, 'App\\User', 68, 4, '2019-11-05 11:12:28', '2019-11-05 11:21:01', 'READ'),
(28, 'هاااي', NULL, 'App\\User', 67, 4, '2019-11-05 11:14:00', '2019-11-05 11:14:16', 'READ'),
(29, 'A7a', NULL, 'App\\User', 68, 4, '2019-11-05 11:14:24', '2019-11-05 11:21:01', 'READ'),
(30, 'خخخخخخخخخخخ', NULL, 'App\\User', 67, 4, '2019-11-05 11:14:41', '2019-11-05 11:15:01', 'READ'),
(31, '555555555555555', NULL, 'App\\User', 68, 4, '2019-11-05 11:15:22', '2019-11-05 11:21:01', 'READ'),
(32, 'Ffdd', NULL, 'App\\User', 68, 4, '2019-11-05 11:16:02', '2019-11-05 11:21:01', 'READ'),
(33, 'Fdd', NULL, 'App\\User', 68, 4, '2019-11-05 11:16:07', '2019-11-05 11:21:01', 'READ'),
(34, 'Fennn om arab', NULL, 'App\\User', 68, 4, '2019-11-05 11:16:17', '2019-11-05 11:21:01', 'READ'),
(35, 'مفيش ام عربي', NULL, 'App\\User', 67, 4, '2019-11-05 11:16:51', '2019-11-05 11:17:28', 'READ'),
(36, 'ييييي', NULL, 'App\\User', 67, 4, '2019-11-05 11:17:02', '2019-11-05 11:17:28', 'READ'),
(37, 'ييي', NULL, 'App\\User', 67, 4, '2019-11-05 11:17:03', '2019-11-05 11:17:28', 'READ'),
(38, 'ي', NULL, 'App\\User', 67, 4, '2019-11-05 11:17:23', '2019-11-05 11:17:28', 'READ'),
(39, 'يييييييييييييييي', NULL, 'App\\User', 67, 4, '2019-11-05 11:17:36', '2019-11-05 11:17:39', 'READ'),
(40, 'Ggg', NULL, 'App\\User', 68, 4, '2019-11-05 11:20:01', '2019-11-05 11:21:01', 'READ'),
(41, 'أي حاجه', NULL, 'App\\User', 67, 4, '2019-11-05 11:21:24', '2019-11-05 11:21:51', 'READ'),
(42, 'Ggg', NULL, 'App\\User', 68, 4, '2019-11-05 11:22:12', '2019-11-10 18:55:22', 'READ'),
(43, 'ولنبملمبن', NULL, 'App\\User', 65, 1, '2019-11-05 12:31:11', '2019-11-08 13:21:58', 'READ'),
(44, 'hello', NULL, 'App\\User', 68, 4, '2019-11-08 11:14:18', '2019-11-10 18:55:22', 'READ'),
(45, 'this is to test chat', NULL, 'App\\User', 68, 4, '2019-11-08 11:14:33', '2019-11-10 18:55:22', 'READ'),
(46, 'testhbh.', NULL, 'App\\User', 68, 4, '2019-11-08 11:17:00', '2019-11-10 18:55:22', 'READ'),
(47, 'hhhhhhhhhhhhhhhhhhhhkkjjjjjhgfggggggggggggggjjjuhhbhhjjjhbjhbjjhhjhbjjhhhhjjjjjjjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjhhhhhhhhhhhhhhhh', NULL, 'App\\User', 68, 4, '2019-11-08 11:17:51', '2019-11-10 18:55:22', 'READ'),
(48, 'hello', NULL, 'App\\User', 2, 8, '2019-11-08 14:55:05', '2019-11-08 14:55:07', 'READ'),
(49, 'hello', NULL, 'App\\User', 2, 8, '2019-11-08 14:55:06', '2019-11-08 14:55:07', 'READ'),
(50, 'hello', NULL, 'App\\User', 2, 8, '2019-11-08 14:55:07', '2019-11-08 14:55:08', 'READ'),
(51, 'test again', NULL, 'App\\User', 67, 4, '2019-11-08 14:55:51', '2019-11-08 14:55:52', 'READ'),
(52, 'this is eslam send to doctor samer', NULL, 'App\\User', 73, 9, '2019-11-08 14:56:44', '2019-11-08 14:56:45', 'READ'),
(53, 'I am doctor eslam', NULL, 'App\\User', 68, 4, '2019-11-10 18:56:40', '2019-11-10 18:56:41', 'READ'),
(54, 'sending this message to test how sending messages', NULL, 'App\\User', 68, 4, '2019-11-10 18:57:28', '2019-11-10 18:57:28', 'READ'),
(55, 'I am patient eslam', NULL, 'App\\User', 67, 4, '2019-11-10 19:00:03', '2019-11-10 19:00:05', 'READ'),
(56, 'sending this message to test patient', NULL, 'App\\User', 67, 4, '2019-11-10 19:00:29', '2019-11-10 19:00:30', 'READ'),
(57, 'تيست العربي من البيشنت', NULL, 'App\\User', 67, 4, '2019-11-10 19:01:23', '2019-11-10 19:01:25', 'READ'),
(58, 'doctor test', NULL, 'App\\User', 68, 4, '2019-11-10 19:03:56', '2019-11-10 19:03:57', 'READ'),
(59, 'long llllllllkjjfdf hhhhhh jjhjjjj jjhjjjj jjhjjjj jjhjjjj jjhjjjj jjhjjjj hhhhhh jjhjjjj jjjjhhhh jjhjjjj hhhhhhhh hhhhhh hhhhhhhhhhhh hhhhhhhh', NULL, 'App\\User', 68, 4, '2019-11-10 19:46:57', '2019-11-10 19:46:58', 'READ'),
(60, 'hello', NULL, 'App\\User', 68, 4, '2019-11-11 08:43:00', '2019-11-11 08:44:47', 'READ'),
(61, 'hhhh', NULL, 'App\\User', 68, 4, '2019-11-11 08:57:32', '2019-11-11 08:57:33', 'READ'),
(62, 'Hiii', NULL, 'App\\User', 76, 11, '2019-11-12 13:26:57', '2019-11-12 13:27:20', 'READ'),
(63, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:37', '2019-11-12 13:27:41', 'READ'),
(64, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:38', '2019-11-12 13:27:41', 'READ'),
(65, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:38', '2019-11-12 13:27:41', 'READ'),
(66, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:39', '2019-11-12 13:27:41', 'READ'),
(67, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:39', '2019-11-12 13:27:41', 'READ'),
(68, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:41', '2019-11-12 13:27:46', 'READ'),
(69, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:41', '2019-11-12 13:27:46', 'READ'),
(70, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:43', '2019-11-12 13:27:46', 'READ'),
(71, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:43', '2019-11-12 13:27:46', 'READ'),
(72, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:43', '2019-11-12 13:27:46', 'READ'),
(73, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:44', '2019-11-12 13:27:46', 'READ'),
(74, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:44', '2019-11-12 13:27:46', 'READ'),
(75, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:45', '2019-11-12 13:27:46', 'READ'),
(76, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:45', '2019-11-12 13:27:46', 'READ'),
(77, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:45', '2019-11-12 13:27:46', 'READ'),
(78, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:46', '2019-11-12 13:27:47', 'READ'),
(79, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:46', '2019-11-12 13:27:47', 'READ'),
(80, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:46', '2019-11-12 13:27:47', 'READ'),
(81, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:46', '2019-11-12 13:27:47', 'READ'),
(82, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:46', '2019-11-12 13:27:47', 'READ'),
(83, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:46', '2019-11-12 13:27:47', 'READ'),
(84, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:46', '2019-11-12 13:27:47', 'READ'),
(85, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:47', '2019-11-12 13:27:47', 'READ'),
(86, 'heloo', NULL, 'App\\User', 76, 11, '2019-11-12 13:27:47', '2019-11-12 13:27:49', 'READ'),
(87, 'Time', NULL, 'App\\User', 76, 11, '2019-11-12 13:28:32', '2019-11-12 13:28:32', NULL),
(88, 'اسلام بيشنت', NULL, 'App\\User', 67, 4, '2019-11-12 20:09:25', '2019-11-12 20:09:26', 'READ'),
(89, 'هاااي', NULL, 'App\\User', 67, 4, '2019-11-12 20:10:08', '2019-11-12 20:10:09', 'READ'),
(90, 'اااا', NULL, 'App\\User', 67, 4, '2019-11-12 20:11:08', '2019-11-12 20:11:09', 'READ'),
(91, 'hhhjj', NULL, 'App\\User', 68, 4, '2019-11-12 20:13:37', '2019-11-12 20:13:38', 'READ'),
(92, 'ghhj', NULL, 'App\\User', 68, 4, '2019-11-12 20:14:18', '2019-11-12 20:14:19', 'READ'),
(93, 'Test messages', NULL, 'App\\User', 64, 12, '2019-11-25 05:49:27', '2019-11-25 05:49:37', 'READ'),
(94, 'Hey doctor', NULL, 'App\\User', 79, 12, '2019-11-25 05:49:45', '2019-11-25 05:49:50', 'READ'),
(95, 'vggggg', NULL, 'App\\User', 1, 13, '2020-01-27 13:53:16', '2020-01-27 13:53:17', 'READ'),
(96, 'hi this is maha', NULL, 'App\\Http\\Controllers\\Dashboard\\Admins\\Models\\Admin', 1, 7, '2020-08-09 09:46:22', '2020-08-09 09:46:22', NULL),
(99, 'hi', NULL, 'App\\User', 88, 15, '2020-08-10 07:42:31', '2020-08-10 07:42:31', NULL),
(100, 'hi its maha', NULL, 'App\\User', 88, 16, '2020-09-06 04:24:45', '2020-09-06 04:25:17', 'READ'),
(101, 'hi dodo', NULL, 'App\\User', 88, 16, '2020-09-06 04:24:53', '2020-09-06 04:25:17', 'READ'),
(102, 'hello', NULL, 'App\\User', 93, 16, '2020-09-06 04:25:22', '2020-09-06 04:25:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_06_24_115332_create_feedback_table', 1),
(9, '2019_06_24_115621_create_medical_advices_table', 1),
(10, '2019_06_24_115904_create_countries_table', 1),
(11, '2019_06_24_120010_create_vedios_table', 1),
(12, '2019_06_24_120105_create_roles_table', 1),
(13, '2019_06_24_120421_create_schedules_table', 1),
(14, '2019_06_24_120750_create_FQAs_table', 1),
(15, '2019_06_24_120943_create_departments_table', 1),
(16, '2019_06_24_121032_create_consultations_table', 1),
(17, '2019_06_24_121858_create_consultation_types_table', 1),
(18, '2019_06_24_122234_create_currencies_table', 1),
(19, '2019_06_24_122303_create_attachments_table', 1),
(20, '2019_06_24_122614_create_conversations_table', 1),
(21, '2019_06_24_123436_create_conversation_types_table', 1),
(22, '2019_06_24_125505_create_messages_table', 1),
(23, '2019_07_08_220800_create_notifications_table', 1),
(24, '2019_07_10_143939_create_payments_table', 1),
(25, '2019_07_11_200000_create_admins_table', 1),
(26, '2019_07_15_103322_create_blogs_table', 1),
(27, '2019_07_15_112318_create_comments_table', 1),
(28, '2019_07_16_114623_create_doctor_details_table', 1),
(29, '2019_07_16_115024_create_templates_table', 1),
(30, '2019_07_17_134509_create_chat_tables', 1),
(31, '2019_07_17_400629_create_regions_table', 1),
(32, '2019_07_17_400666_create_reviews_table', 1),
(33, '2019_07_17_400777_create_favourite_table', 1),
(34, '2019_07_17_504606_add_title_to_table_schedule', 1),
(35, '2019_08_07_144729_create_video_library_table', 1),
(36, '2019_09_18_092032_create_noti_tokens_table', 2),
(37, '2019_09_19_144645_edit_doctor_details_table', 3),
(38, '2019_10_16_091747_add_langs_to_faqs', 4),
(39, '2019_10_16_101131_add_recommendation_to_consultations', 4),
(40, '2019_10_17_110857_create_consultation_reports_table', 4),
(41, '2019_10_17_114954_add_constraint_to_consultation_reports', 4),
(42, '2019_10_18_212308_create_consultations_reviews_table', 5),
(43, '2019_10_18_212324_create_advices_table', 5),
(44, '2019_10_19_123614_add_lang_to_users', 5),
(45, '2019_10_26_142622_create_d_galleries_table', 6),
(46, '2019_10_26_142626_create_d_contacts_table', 6),
(47, '2019_10_26_142633_create_d_images_table', 6),
(48, '2019_10_26_142707_add_logo_to_doctor_details', 6),
(49, '2019_10_26_143930_add_doctor_id_to_d_galleries', 6),
(50, '2019_10_26_200321_add_link_name_to_doctor_details', 6),
(51, '2019_10_27_191904_create_visits_table', 7),
(52, '2019_10_28_000251_add_permissions_to_admins', 7),
(53, '2019_11_07_130736_add_location_to_consultations', 8),
(54, '2019_11_07_141606_create_caches_table', 8),
(55, '2019_11_08_180957_add_last_activity_to_doctor_details', 8),
(56, '2020_01_12_113713_create_video_categories_table', 9),
(79, '2020_01_12_113723_create_video_comments_table', 10),
(80, '2020_01_12_113739_create_video_likes_table', 10),
(81, '2020_08_10_112236_add_image_url_to_templates_table', 11),
(82, '2020_08_10_134858_add_final_flag_to_doctor_details_table', 12),
(87, '2020_08_16_095435_add_parent_id_to_departments_table', 13),
(88, '2020_08_20_161309_add_seo_data_to_blogs_table', 14),
(89, '2020_08_24_085931_add_country_and_city_to_doctor_details_table', 15),
(90, '2020_08_24_095252_add_country_and_city_to_users_table', 16),
(91, '2020_08_25_065839_add_font_to_doctor_datails_table', 17),
(92, '2020_08_25_123938_create_coupons_table', 18),
(93, '2020_08_31_085446_create_subscription_lists_table', 18),
(94, '2020_08_31_151033_add_seo_title_and_body_in_video_library_table', 18),
(95, '2020_09_01_100356_add_views_count_to_video_library_table', 18),
(96, '2020_09_02_121347_create_contact_messages_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('00f35980-e182-4495-964e-cbea917e0e97', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 6, '{\"consultation_id\":56,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-09-26 18:04:01', '2019-09-26 18:04:01'),
('016eab69-1e37-4306-852b-046e613b156e', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":50,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 04:04:48', '2019-09-27 04:04:48'),
('019cd057-9ace-471e-8b79-9b9ac3ab6e53', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-02 21:10:00\",\"patient_id\":65,\"doctor_id\":64,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-31 13:01:49\",\"created_at\":\"2019-10-31 13:01:49\",\"id\":252,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-04 11:42:29', '2019-10-31 11:01:50', '2019-11-04 11:42:29'),
('03c82472-afe9-4753-8c9f-af074fee7ad2', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-09-30 18:44:33\",\"patient_id\":6,\"doctor_id\":3,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-26 11:44:42\",\"created_at\":\"2019-09-26 11:44:42\",\"id\":63},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 09:44:42', '2019-09-26 09:44:42'),
('04cddec7-aed4-452f-847a-ef85942ee305', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":2,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/1_1568544023\\/profile_picture\\/1_profilePicture_19837793061568544023.jpg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null,\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-13 01:00:00\",\"patient_id\":2,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"try\",\"syndrome\":\"try\",\"updated_at\":\"2019-11-10 11:11:16\",\"created_at\":\"2019-11-10 11:11:16\",\"id\":274},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-10 09:11:30', '2019-11-10 09:11:17', '2019-11-10 09:11:30'),
('0563c51a-05ac-491b-85d0-a012bf2905b3', 'App\\Notifications\\DoctorEndedConsultation', 'App\\User', 65, '{\"consultation_id\":243,\"text_en\":\"Doctor saly hisham gggg has ended the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 saly hisham gggg \\u0628\\u0625\\u0646\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d\"}', '2019-10-31 07:26:22', '2019-10-31 05:52:08', '2019-10-31 07:26:22'),
('063ef45d-2023-4dcd-9646-165ad5b72fd6', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":190,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 10:46:59', '2019-10-20 10:46:59'),
('06bb6456-225f-4281-bb86-420a1e741f11', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":13,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:45:44', '2019-09-18 10:45:44'),
('0770f6bf-e099-4ed0-9837-dbe4ad3353ee', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":49,\"name\":\"Hazem Test\",\"email\":\"zoma128@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-15 10:23:09\",\"updated_at\":\"2019-10-15 10:23:09\"},\"consultation\":{\"appointment_on\":\"2019-12-16 10:10:00\",\"patient_id\":49,\"doctor_id\":18,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-17 08:04:12\",\"created_at\":\"2019-10-17 08:04:12\",\"id\":170},\"text_en\":\"Patient :Hazem Test has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Hazem Test \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-17 06:04:12', '2019-10-17 06:04:12'),
('077eca2c-0bc5-462a-b46b-141be6419ea3', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-20 10:07:44\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":2,\"syndrome\":\"hggv\",\"updated_at\":\"2019-10-16 10:07:59\",\"created_at\":\"2019-10-16 10:07:59\",\"id\":162},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 08:07:59', '2019-10-16 08:07:59'),
('09234d29-df1c-46a1-8de6-a1eeb8213cdc', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-04 09:56:54\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-05 07:06:19\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"jguvb\",\"updated_at\":\"2019-11-05 05:06:23\",\"created_at\":\"2019-11-05 05:06:23\",\"id\":259,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"546808\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2003-11-01\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-01 17:10:47\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-05 03:06:23', '2019-11-05 03:06:23'),
('09657a8e-9a7e-458c-9ba7-8c1ebba12905', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":168,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-16 13:43:40', '2019-10-16 13:43:40'),
('096b16ec-a713-41ef-8cbe-27cb54f7b586', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":31,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 04:30:14', '2019-09-27 04:30:14'),
('097c3f07-60da-4105-a463-c56d341be8fa', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":4,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-10-17 15:03:49\",\"created_at\":\"2019-10-17 15:03:49\",\"id\":175},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-17 13:03:50', '2019-10-17 13:03:50'),
('09ff8cc6-f738-4986-a502-5658b34a9572', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 69, '{\"consultation_id\":258,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-11-04 22:50:34', '2019-11-04 22:50:34'),
('0a4d69a8-bc3f-4219-8c32-e1166088b21b', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":122,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-08 13:36:23', '2019-10-08 13:36:23'),
('0a8491f0-9cbb-44fe-9140-af7c6f87cc9f', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":49,\"name\":\"Hazem Test\",\"email\":\"zoma128@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-15 10:23:09\",\"updated_at\":\"2019-10-15 10:23:09\"},\"consultation\":{\"appointment_on\":\"2019-10-20 11:10:00\",\"patient_id\":49,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-16 09:32:16\",\"created_at\":\"2019-10-16 09:32:16\",\"id\":153},\"text_en\":\"Patient :Hazem Test has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Hazem Test \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 07:32:16', '2019-10-16 07:32:16'),
('0abf6cec-a6f2-4969-92b2-c9773e78c1c0', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1991-07-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 18:44:16\"},\"consultation\":{\"appointment_on\":\"2019-10-15 00:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":1,\"address\":\"tert\",\"syndrome\":null,\"updated_at\":\"2019-10-14 22:34:51\",\"created_at\":\"2019-10-14 22:34:51\",\"id\":151},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-14 20:34:52', '2019-10-14 20:34:52'),
('0b25e238-c6e3-47a1-b668-92b8ea6742a5', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 6, '{\"consultation_id\":75,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-09-30 17:23:53', '2019-09-30 17:23:53'),
('0b9c36a6-0921-4888-a470-f76d4786deab', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":53,\"name\":\"sss\",\"email\":\"ss@ss.ss\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-28 14:55:29\",\"updated_at\":\"2019-10-28 14:55:29\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-30 16:10:00\",\"patient_id\":53,\"doctor_id\":3,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 13:11:16\",\"created_at\":\"2019-10-29 13:11:16\",\"id\":214,\"doctor\":{\"id\":3,\"name\":\"Mohannad\",\"email\":\"sally@patient.com\",\"phone_number\":\"01111111111\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/3_1568544023\\/profile_picture\\/3_profilePicture_1568544023.jpeg\",\"address\":\"test trst\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2019-09-19\",\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":\"2019-10-03 08:50:38\",\"lang\":\"ar\"}},\"text_en\":\"Patient :sss has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-29 11:11:16', '2019-10-29 11:11:16'),
('0bf90a0a-a73a-4e2c-ac34-4113cea0a0bb', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":\"3\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"updated_at\":\"2019-09-22 15:00:07\",\"created_at\":\"2019-09-22 15:00:07\",\"id\":29},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-22 13:00:07', '2019-09-22 13:00:07'),
('0cc176a5-829c-462c-9c21-a36a5b7a470c', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":30,\"name\":\"sss@sss.com\",\"email\":\"ss@ss.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 19:32:06\",\"updated_at\":\"2019-10-01 19:32:06\"},\"consultation\":{\"appointment_on\":\"2019-10-02 05:10:19\",\"patient_id\":30,\"doctor_id\":33,\"consultation_type\":1,\"address\":\"test test test q\",\"syndrome\":null,\"updated_at\":\"2019-10-02 03:17:22\",\"created_at\":\"2019-10-02 03:17:22\",\"id\":89},\"text_en\":\"Patient :sss@sss.com has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss@sss.com \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-02 01:17:22', '2019-10-02 01:17:22'),
('0cca5002-4283-4555-8b49-21d7168b2a35', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":143,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-14 13:50:09', '2019-10-14 13:50:09'),
('0cdfde73-3a97-4077-b854-470f4d1cdd36', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":188,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 09:50:11', '2019-10-20 09:50:11'),
('0dd63527-26e8-4a3e-981e-d279f6618e92', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-31 04:25:20\",\"patient_id\":17,\"doctor_id\":3,\"consultation_type\":1,\"address\":\"hggv\",\"syndrome\":\"hgg\",\"updated_at\":\"2019-10-09 13:25:41\",\"created_at\":\"2019-10-09 13:25:41\",\"id\":138},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-09 11:25:41', '2019-10-09 11:25:41'),
('0eeeb733-82c9-4ea1-a1fb-3bbb1c1d66fe', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 6, '{\"consultation_id\":177,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-17 13:47:36', '2019-10-17 13:47:36'),
('0f70518f-0640-484e-9681-1a29d3741622', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 73, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-06 19:11:00\",\"patient_id\":68,\"doctor_id\":73,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-06 17:23:40\",\"created_at\":\"2019-11-06 17:23:40\",\"id\":268,\"doctor\":{\"id\":73,\"name\":\"sameer ahmad\",\"email\":\"sameer.ahmad@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":\"october\",\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-11-06 16:01:34\",\"updated_at\":\"2019-11-06 16:01:34\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-06 15:23:40', '2019-11-06 15:23:40'),
('0fb9e1b3-8e97-4427-832b-bb4f19060ee1', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":22,\"name\":\"Rami allaf\",\"email\":\"Rami.allaf@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 14:36:55\",\"updated_at\":\"2019-10-01 14:36:55\"},\"consultation\":{\"appointment_on\":\"2019-10-08 14:47:11\",\"patient_id\":22,\"doctor_id\":18,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-03 12:43:17\",\"created_at\":\"2019-10-03 12:43:17\",\"id\":99},\"text_en\":\"Patient :Rami allaf has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Rami allaf \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-03 10:43:17', '2019-10-03 10:43:17'),
('10848ea0-295f-4af2-9fe6-6d188fa7c0f2', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":4,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:25:59', '2019-09-18 10:25:59'),
('10bc3052-9c62-4a93-b2d0-ddac5ac44f31', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 93, '{\"patient\":{\"id\":88,\"name\":\"maha\",\"email\":\"maha@mailinator.com\",\"phone_number\":\"01011088902\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\\\uploads\\\\img\\\\88_1596970202\\\\profile_picture\\\\88_profilePicture_20119217861596970202.jpg\",\"address\":\"fgfgrrrr\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1992-09-26\",\"created_at\":\"2020-08-09 10:50:02\",\"updated_at\":\"2020-09-04 19:36:49\",\"lang\":\"ar\",\"country\":\"Egypt\",\"city\":\"Giza\"},\"consultation\":{\"appointment_on\":\"2020-09-16 08:24:00\",\"patient_id\":88,\"doctor_id\":\"93\",\"consultation_type\":2,\"syndrome\":\"ffff\",\"updated_at\":\"2020-09-06 06:24:22\",\"created_at\":\"2020-09-06 06:24:22\",\"id\":295},\"text_en\":\"Patient :maha has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : maha \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2020-09-06 04:24:22', '2020-09-06 04:24:22'),
('10fee0b8-6bd0-4afd-a4a7-5a43a926f8c5', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":69,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 02:28:19', '2019-09-27 02:28:19'),
('113b94b3-5d24-417a-a865-8a0658051c90', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":183,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 10:17:34', '2019-10-20 10:17:34'),
('115cf9ff-a65a-4e13-b60f-01680458bcda', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-07 23:10:18\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":4,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-07 21:19:23\",\"created_at\":\"2019-10-07 21:19:23\",\"id\":110},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-07 19:19:23', '2019-10-07 19:19:23'),
('11b7b886-39d1-476b-8cb9-af2800931f17', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-23 22:09:01\",\"patient_id\":6,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-23 20:08:37\",\"created_at\":\"2019-09-23 20:08:37\",\"id\":37},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-23 18:08:37', '2019-09-23 18:08:37'),
('122c4c6e-0d1b-4355-ac07-404e63fce153', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-13 21:10:00\",\"patient_id\":41,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-08 17:18:03\",\"created_at\":\"2019-10-08 17:18:03\",\"id\":124},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 15:18:03', '2019-10-08 15:18:03'),
('12374ce6-923e-4a91-9215-cfc7d153f3fe', 'App\\Notifications\\DoctorCancelledConsultation', 'App\\User', 65, '{\"consultation_id\":249,\"text_en\":\"Doctor saly hisham gggg has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 saly hisham gggg \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', '2019-11-04 11:33:42', '2019-10-31 10:45:08', '2019-11-04 11:33:42'),
('12d9196b-b0f3-4146-94b2-38efe58241e2', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":219,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-30 06:25:06', '2019-10-29 16:02:55', '2019-10-30 06:25:06'),
('13386ecb-58d5-47b5-8190-e53e16657b68', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-24 06:43:46\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-24 11:39:31\",\"created_at\":\"2019-09-24 11:39:31\",\"id\":46},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-24 09:39:31', '2019-09-24 09:39:31'),
('1487c0c0-4d9b-45f3-ac98-f5112d5416b4', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":239,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-30 23:01:36', '2019-10-30 20:38:17', '2019-10-30 23:01:36'),
('150a75ea-5d1a-4c29-9505-ccde4bb9f54b', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 64, '{\"consultation_id\":233,\"text_en\":\"The patient \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', '2019-10-31 00:06:19', '2019-10-30 10:44:36', '2019-10-31 00:06:19'),
('1533c77a-78be-489c-a9a0-f517158aa68a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-30 20:10:00\",\"patient_id\":65,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-30 22:25:17\",\"created_at\":\"2019-10-30 22:25:17\",\"id\":239,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-30 20:25:17', '2019-10-30 20:25:17'),
('1568e4d2-3f45-4a47-98d2-01f788384c7e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-30 14:10:00\",\"patient_id\":65,\"doctor_id\":64,\"consultation_type\":1,\"address\":\"hi I just want you know\",\"syndrome\":null,\"updated_at\":\"2019-10-30 12:45:35\",\"created_at\":\"2019-10-30 12:45:35\",\"id\":234,\"doctor\":{\"id\":64,\"name\":\"saly hisham\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":3,\"birthdate\":null,\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 10:47:19\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-31 00:06:22', '2019-10-30 10:45:35', '2019-10-31 00:06:22'),
('15c04b0f-0bbd-4a39-9baf-d019409e9704', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":12,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:38:43', '2019-09-18 10:38:43'),
('16d5e3d1-c468-4ed3-b63f-207e29f256ef', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 56, '{\"patient\":{\"id\":63,\"name\":\"Amira mahrous\",\"email\":\"amira@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-30 10:45:31\",\"updated_at\":\"2019-10-30 10:45:31\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-31 13:25:50\",\"patient_id\":63,\"doctor_id\":56,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"hii\",\"updated_at\":\"2019-10-30 10:55:37\",\"created_at\":\"2019-10-30 10:55:37\",\"id\":226,\"doctor\":{\"id\":56,\"name\":\"Rami Allaf\",\"email\":\"rami.allaf@gmail.com\",\"phone_number\":\"01158068370\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":\"Mohandeseen\",\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-10-30 10:38:06\",\"updated_at\":\"2019-10-30 10:38:06\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Amira mahrous has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Amira mahrous \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-06 22:51:43', '2019-10-30 08:55:37', '2019-11-06 22:51:43'),
('1733e0bf-0fd9-4fec-9b86-cf363a309297', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":16,\"name\":\"Mohannadpatient\",\"email\":\"Mohannadpatient@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:44:24\",\"updated_at\":\"2019-09-22 10:44:24\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":16,\"doctor_id\":\"15\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-09-24 09:52:32\",\"created_at\":\"2019-09-24 09:52:32\",\"id\":43},\"text_en\":\"Patient :Mohannadpatient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Mohannadpatient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-24 07:52:33', '2019-09-24 07:52:33'),
('177d7d99-d16d-4fe6-9dd8-c6568f44ac93', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-11-26 12:09:16\",\"patient_id\":6,\"doctor_id\":3,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-26 10:28:24\",\"created_at\":\"2019-09-26 10:28:24\",\"id\":60},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 08:28:24', '2019-09-26 08:28:24'),
('1812aafb-b3c4-4808-a981-ea38f837934b', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-13 00:04:12\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-12 22:04:19\",\"created_at\":\"2019-11-12 22:04:19\",\"id\":281,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"01028289502\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-12 18:09:43\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-12 20:04:19', '2019-11-12 20:04:19'),
('18d5dd8f-39eb-48ae-a072-cf6d5eda11c4', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\"},\"consultation\":{\"appointment_on\":\"2019-10-16 17:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"truth,\",\"syndrome\":null,\"updated_at\":\"2019-10-16 15:46:44\",\"created_at\":\"2019-10-16 15:46:44\",\"id\":169},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 13:46:44', '2019-10-16 13:46:44'),
('18fb9adb-7667-4db9-bc3b-c551e23015d5', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":2,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/1_1568544023\\/profile_picture\\/1_profilePicture_19837793061568544023.jpg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null,\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":2,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"\\u0627\\u0627\\u0647\",\"syndrome\":\"\\u0627\\u0627\\u0647\",\"updated_at\":\"2019-10-31 12:29:48\",\"created_at\":\"2019-10-31 12:29:48\",\"id\":248},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-31 10:29:48', '2019-10-31 10:29:48'),
('18fca494-a481-4458-a593-065af1865893', 'App\\Notifications\\DoctorEndedConsultation', 'App\\User', 68, '{\"consultation_id\":268,\"text_en\":\"Doctor sameer ahmad has ended the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 sameer ahmad \\u0628\\u0625\\u0646\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d\"}', '2019-11-07 12:47:49', '2019-11-06 15:34:33', '2019-11-07 12:47:49'),
('1a1e9228-2f12-42be-b40f-49868587dd16', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-02 21:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 17:09:21\",\"created_at\":\"2019-10-29 17:09:21\",\"id\":215,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-29 15:12:26\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-29 15:09:22', '2019-10-29 15:09:22'),
('1a424799-c3c4-47d2-98c4-a27d8dfd0165', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":195,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-29 17:33:34', '2019-10-22 10:19:33', '2019-10-29 17:33:34'),
('1aa1ace1-4013-43f9-a33c-e37bf232f768', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":13,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:42:08', '2019-09-18 10:42:08');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1aa24a88-f82b-42bd-8e20-84b8574ef763', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":76,\"name\":\"shady Essam\",\"email\":\"shady.essam@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/76_1573140767\\/profile_picture\\/76_profilePicture_18633568701573140767.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1987-11-07\",\"created_at\":\"2019-11-07 15:32:47\",\"updated_at\":\"2019-11-07 15:42:53\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-13 00:11:00\",\"patient_id\":76,\"doctor_id\":1,\"consultation_type\":1,\"address\":\"hhhh\",\"lat\":null,\"lng\":null,\"syndrome\":null,\"updated_at\":\"2019-11-12 15:26:22\",\"created_at\":\"2019-11-12 15:26:22\",\"id\":278,\"doctor\":{\"id\":1,\"name\":\"doctor\",\"email\":\"doctor@doctor.com\",\"phone_number\":\"0111895245\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/1_1568544023\\/profile_picture\\/1_profilePicture_19837793061568544023.jpg\",\"address\":\"asdasdasdads\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2019-07-02\",\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":\"2019-10-28 15:24:36\",\"lang\":\"ar\"}},\"text_en\":\"Patient :shady Essam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : shady Essam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-12 13:26:22', '2019-11-12 13:26:22'),
('1aeb537e-3c20-435b-b728-6b3c9d8c81da', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":22,\"name\":\"Rami allaf\",\"email\":\"Rami.allaf@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 14:36:55\",\"updated_at\":\"2019-10-01 14:36:55\"},\"consultation\":{\"appointment_on\":\"2019-11-03 12:10:37\",\"patient_id\":22,\"doctor_id\":3,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-03 10:00:40\",\"created_at\":\"2019-10-03 10:00:40\",\"id\":94},\"text_en\":\"Patient :Rami allaf has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Rami allaf \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-03 08:00:40', '2019-10-03 08:00:40'),
('1b3ed6b2-69ea-423e-ac28-4644b103dad5', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":13,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:40:10', '2019-09-18 10:40:10'),
('1b9ecbc4-c761-4961-988a-b0f830267020', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 64, '{\"consultation_id\":250,\"text_en\":\"The patient \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', '2019-11-04 09:21:24', '2019-10-31 10:47:05', '2019-11-04 09:21:24'),
('1c48c7ec-62d6-4a7f-87cc-5e9783da2e09', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":4,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-10-17 15:01:15\",\"created_at\":\"2019-10-17 15:01:15\",\"id\":174},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-17 13:01:16', '2019-10-17 13:01:16'),
('1c8bf058-b083-4bbe-9551-77908a47298c', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":52,\"name\":\"Hazem\",\"email\":\"test@test.test\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-21 10:13:35\",\"updated_at\":\"2019-10-21 10:13:35\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-12-24 14:10:00\",\"patient_id\":52,\"doctor_id\":3,\"consultation_type\":1,\"address\":\"test\",\"syndrome\":null,\"updated_at\":\"2019-10-21 10:59:46\",\"created_at\":\"2019-10-21 10:59:46\",\"id\":194,\"doctor\":{\"id\":3,\"name\":\"Mohannad\",\"email\":\"sally@patient.com\",\"phone_number\":\"01111111111\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/3_1568544023\\/profile_picture\\/3_profilePicture_1568544023.jpeg\",\"address\":\"test trst\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2019-09-19\",\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":\"2019-10-03 08:50:38\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Hazem has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Hazem \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-21 08:59:46', '2019-10-21 08:59:46'),
('1ce553cf-828f-4b30-97e2-194aa8c42697', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":43,\"name\":\"Bola Fayez\",\"email\":\"bmf_55555@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"10157419592742906\",\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-06 20:06:34\",\"updated_at\":\"2019-10-06 20:06:34\"},\"consultation\":{\"appointment_on\":\"2019-10-06 22:10:03\",\"patient_id\":43,\"doctor_id\":15,\"consultation_type\":1,\"address\":\"hi\",\"syndrome\":null,\"updated_at\":\"2019-10-06 20:46:06\",\"created_at\":\"2019-10-06 20:46:06\",\"id\":105},\"text_en\":\"Patient :Bola Fayez has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Bola Fayez \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-06 18:46:06', '2019-10-06 18:46:06'),
('1d5c926c-4070-4bdc-a37a-c903420d948c', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":3,\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-26 10:56:30\",\"created_at\":\"2019-09-26 10:56:30\",\"id\":61},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 08:56:30', '2019-09-26 08:56:30'),
('1d95689c-d209-4ea6-8c5c-530bd82ca57f', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":221,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-29 17:33:38', '2019-10-29 16:10:26', '2019-10-29 17:33:38'),
('1dafdc2b-6608-4fd4-8ec9-54061072ddc7', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-18 04:02:33\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":1,\"address\":\"fggh\",\"syndrome\":\"fgh\",\"updated_at\":\"2019-10-06 10:02:53\",\"created_at\":\"2019-10-06 10:02:53\",\"id\":102},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-06 08:02:54', '2019-10-06 08:02:54'),
('1ed6df88-c72d-4fb3-81f3-371cf16f6b6a', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 67, '{\"consultation_id\":265,\"text_en\":\"The patient Eslam has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 Eslam \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2019-11-10 10:38:09', '2019-11-10 10:38:09'),
('1f3067bb-c82d-4e68-8383-f661944f47a8', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":79,\"name\":\"aaaaaa\",\"email\":\"aaa@aaa.aaa\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-11-25 07:46:51\",\"updated_at\":\"2019-11-25 07:46:51\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-25 18:11:00\",\"patient_id\":79,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-25 07:47:56\",\"created_at\":\"2019-11-25 07:47:56\",\"id\":284,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :aaaaaa has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : aaaaaa \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-25 05:47:57', '2019-11-25 05:47:57'),
('1fb5da78-3f95-470e-9366-3f55b2fff890', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 2, '{\"patient\":{\"id\":22,\"name\":\"Rami allaf\",\"email\":\"Rami.allaf@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 14:36:55\",\"updated_at\":\"2019-10-01 14:36:55\"},\"consultation\":{\"appointment_on\":\"2019-10-03 14:10:11\",\"patient_id\":22,\"doctor_id\":2,\"department_id\":2,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-03 12:39:15\",\"created_at\":\"2019-10-03 12:39:15\",\"id\":98},\"text_en\":\"Patient :Rami allaf has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Rami allaf \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-03 10:39:15', '2019-10-03 10:39:15'),
('1fbaf39b-9626-4d4a-a8ba-1db89fcc4090', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":6,\"doctor_id\":1,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-09-29 12:17:22\",\"created_at\":\"2019-09-29 12:17:22\",\"id\":73},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-29 10:17:22', '2019-09-29 10:17:22'),
('20157eba-8a68-4305-8211-ff864733bb26', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":130,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-09 11:20:21', '2019-10-09 11:20:21'),
('20a93272-c9fb-41a0-8d65-10db466bd8c0', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":120,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-08 13:23:06', '2019-10-08 13:23:06'),
('20de1d9c-7d54-40b7-9363-da8b1bbfbb1e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-21 14:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"hi there\",\"syndrome\":null,\"updated_at\":\"2019-10-20 10:55:26\",\"created_at\":\"2019-10-20 10:55:26\",\"id\":188,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-20 10:47:57\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-20 08:55:26', '2019-10-20 08:55:26'),
('21215e29-6f5c-4c4f-8df9-4b8024902f17', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-29 20:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 18:02:06\",\"created_at\":\"2019-10-29 18:02:06\",\"id\":219,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-29 15:12:26\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-30 06:22:25', '2019-10-29 16:02:07', '2019-10-30 06:22:25'),
('2155c940-4057-4401-af97-5574401f30b4', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 56, '{\"patient\":{\"id\":88,\"name\":\"maha\",\"email\":\"maha@mailinator.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2020-08-09 10:50:02\",\"updated_at\":\"2020-08-09 10:50:02\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2020-08-27 12:50:00\",\"patient_id\":88,\"doctor_id\":\"56\",\"consultation_type\":1,\"address\":\"iii\",\"syndrome\":\"pop[\",\"updated_at\":\"2020-08-09 10:50:51\",\"created_at\":\"2020-08-09 10:50:51\",\"id\":290},\"text_en\":\"Patient :maha has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : maha \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2020-08-09 08:50:51', '2020-08-09 08:50:51'),
('2273dfb4-867c-4bdc-a7bf-5ab3ed5777e8', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":180,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-17 13:47:51', '2019-10-17 13:47:51'),
('22ab5db6-e3d9-4bbf-be54-806218237c7e', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 2, '{\"consultation_id\":273,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-11-10 09:05:51', '2019-11-10 09:05:45', '2019-11-10 09:05:51'),
('22f22461-9d11-436d-8590-07403822124a', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":120,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 09:06:27', '2019-10-20 09:06:27'),
('22fa5167-5ae0-4f7f-a569-ebeed92a86f3', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 47, '{\"consultation_id\":149,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-14 07:06:24', '2019-10-14 07:06:24'),
('23157e02-7986-4758-94ac-de8fc650d4f3', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":43,\"name\":\"Bola Fayez\",\"email\":\"bmf_55555@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"10157419592742906\",\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-06 20:06:34\",\"updated_at\":\"2019-10-06 20:06:34\"},\"consultation\":{\"appointment_on\":\"2019-10-06 22:10:49\",\"patient_id\":43,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-06 20:47:53\",\"created_at\":\"2019-10-06 20:47:53\",\"id\":106},\"text_en\":\"Patient :Bola Fayez has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Bola Fayez \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-06 18:47:53', '2019-10-06 18:47:53'),
('235a0c6b-1b94-4bba-9091-66417d289f02', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 10, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-02 16:58:34\",\"patient_id\":17,\"doctor_id\":10,\"department_id\":null,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 13:05:27\",\"created_at\":\"2019-10-29 13:05:27\",\"id\":212,\"doctor\":{\"id\":10,\"name\":\"Mohannad\",\"email\":\"mohannad@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-19 15:25:29\",\"updated_at\":\"2019-09-19 15:25:29\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-29 11:05:27', '2019-10-29 11:05:27'),
('23685896-993c-46cf-b981-593d98109108', 'App\\Notifications\\DoctorCancelledConsultation', 'App\\User', 65, '{\"consultation_id\":247,\"text_en\":\"Doctor saly hisham gggg has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 saly hisham gggg \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', '2019-10-31 09:36:36', '2019-10-31 07:43:21', '2019-10-31 09:36:36'),
('23af768a-1f87-4432-a248-2a2097a74acc', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":2,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/1_1568544023\\/profile_picture\\/1_profilePicture_19837793061568544023.jpg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null,\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-23 01:00:00\",\"patient_id\":2,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"\\u0627\\u0627\\u0647\",\"syndrome\":\"\\u0627\\u0627\\u0647\",\"updated_at\":\"2019-11-10 11:05:20\",\"created_at\":\"2019-11-10 11:05:20\",\"id\":273},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-10 09:05:32', '2019-11-10 09:05:21', '2019-11-10 09:05:32'),
('254f6840-2239-45f9-8106-88a58ea80c01', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\"},\"consultation\":{\"appointment_on\":\"2019-10-20 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-20 10:38:05\",\"created_at\":\"2019-10-20 10:38:05\",\"id\":181},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-20 08:38:05', '2019-10-20 08:38:05'),
('25a446ea-ab71-44fd-8354-f607019fd8c2', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":13,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:45:21', '2019-09-18 10:45:21'),
('25c78aa0-db93-4c87-9e72-31eae1ab72f5', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1991-07-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 18:44:16\"},\"consultation\":{\"appointment_on\":\"2019-10-13 22:10:00\",\"patient_id\":41,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-10 05:02:30\",\"created_at\":\"2019-10-10 05:02:30\",\"id\":146},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-14 08:44:51', '2019-10-10 03:02:30', '2019-10-14 08:44:51'),
('276b93f1-0d22-45c1-a38c-2d28770c46cc', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":63,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 03:50:26', '2019-09-27 03:50:26'),
('27c021de-d0f5-4ce4-ac52-592c221a4fcb', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 16, '{\"consultation_id\":23,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-22 11:34:17', '2019-09-22 11:34:17'),
('27d6cb1e-b4c0-4316-a99e-40a78c8fa5e3', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-21 22:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"ewerdc\",\"syndrome\":null,\"updated_at\":\"2019-10-21 12:29:36\",\"created_at\":\"2019-10-21 12:29:36\",\"id\":195,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-20 10:47:57\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-21 10:29:37', '2019-10-21 10:29:37'),
('28959c13-bed6-47db-a904-7b478d4abefd', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 17, '{\"consultation_id\":197,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-24 13:26:06', '2019-10-24 13:26:06'),
('28bb3b3f-c87d-4175-873c-5b8c119b6acb', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":4,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-10-17 15:05:13\",\"created_at\":\"2019-10-17 15:05:13\",\"id\":178},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-17 13:05:13', '2019-10-17 13:05:13'),
('28fd720c-5d2a-4741-a4c1-9a4ec6748b8a', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":109,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-17 13:11:05', '2019-10-17 13:11:05'),
('299d4499-b09f-4f7c-bc0f-b10c238479f1', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":43,\"name\":\"Bola Fayez\",\"email\":\"bmf_55555@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"10157419592742906\",\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-06 20:06:34\",\"updated_at\":\"2019-10-06 20:06:34\"},\"consultation\":{\"appointment_on\":\"2019-10-09 22:10:57\",\"patient_id\":43,\"doctor_id\":1,\"consultation_type\":1,\"address\":\"fff\",\"syndrome\":null,\"updated_at\":\"2019-10-09 20:11:06\",\"created_at\":\"2019-10-09 20:11:06\",\"id\":144},\"text_en\":\"Patient :Bola Fayez has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Bola Fayez \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-13 13:33:01', '2019-10-09 18:11:06', '2019-10-13 13:33:01'),
('2a954417-6cd9-458e-b02a-a86b544949bb', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 22, '{\"consultation_id\":97,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-14 14:05:18', '2019-10-14 14:05:18'),
('2b95e012-7f71-49f8-886f-5b8d85d20bda', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":132,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-10 02:17:34', '2019-10-10 02:17:34'),
('2be6f6cc-c4ad-41e8-8eea-68c6b33bfceb', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":49,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 04:05:06', '2019-09-27 04:05:06'),
('2bf1b9cb-ea5e-4940-ab35-daa5ebecd050', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":47,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-03 06:47:05', '2019-10-03 06:47:05'),
('2bf56a2f-e6ab-457d-9a42-e6d630853c3a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-31 18:10:00\",\"patient_id\":65,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-31 12:45:40\",\"created_at\":\"2019-10-31 12:45:40\",\"id\":250,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-04 11:42:39', '2019-10-31 10:45:40', '2019-11-04 11:42:39'),
('2c5c87ea-b77a-40f1-adeb-936bbde8231a', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 30, '{\"consultation_id\":86,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-27 08:39:48', '2019-10-02 01:11:57', '2019-10-27 08:39:48'),
('2d394331-9208-48dd-a0d2-f2944376524e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-18 01:32:27\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":1,\"address\":\"tyghv\",\"syndrome\":\"hghvbvbnjhvj\",\"updated_at\":\"2019-10-09 11:32:48\",\"created_at\":\"2019-10-09 11:32:48\",\"id\":135},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-09 09:32:48', '2019-10-09 09:32:48'),
('2d4861b7-19c0-454e-9ee0-a7d70b96cf0f', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-19 11:55:17\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":1,\"address\":\"ytgghvhv\",\"syndrome\":\"vgv\",\"updated_at\":\"2019-10-16 10:07:24\",\"created_at\":\"2019-10-16 10:07:24\",\"id\":159},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 08:07:24', '2019-10-16 08:07:24'),
('2d818b82-2ea6-41dc-add5-e60f6d41b4db', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-20 10:54:44\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":2,\"syndrome\":\"hggv\",\"updated_at\":\"2019-10-16 10:08:31\",\"created_at\":\"2019-10-16 10:08:31\",\"id\":164},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 08:08:31', '2019-10-16 08:08:31'),
('2db5642a-4311-40bb-8c46-5f0710c6cbd8', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":35,\"name\":\"sall\",\"email\":\"sas@as.asd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/35_1570006213\\/profile_picture\\/35_profilePicture_1570006213.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2019-10-02\",\"created_at\":\"2019-10-02 08:50:13\",\"updated_at\":\"2019-10-02 08:55:22\"},\"consultation\":{\"appointment_on\":\"2019-10-02 10:10:01\",\"patient_id\":35,\"doctor_id\":33,\"consultation_type\":1,\"address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646\",\"syndrome\":null,\"updated_at\":\"2019-10-02 08:56:03\",\"created_at\":\"2019-10-02 08:56:03\",\"id\":90},\"text_en\":\"Patient :sall has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sall \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-02 06:56:03', '2019-10-02 06:56:03'),
('2fcdc446-2c4c-44f9-9ddc-436a4381e98b', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":115,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-17 13:45:31', '2019-10-17 13:45:31'),
('303450e1-0524-40ce-b50c-92677ec5117f', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-23 01:01:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"\\u0627\\u0627\\u06472\",\"updated_at\":\"2019-09-18 11:41:54\",\"created_at\":\"2019-09-18 11:41:54\",\"id\":7},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 09:43:25', '2019-09-18 09:41:54', '2019-09-18 09:43:25'),
('306889b7-4da9-489d-847b-81545aa1eb42', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":243,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-31 11:35:30', '2019-10-31 05:51:48', '2019-10-31 11:35:30'),
('307b82dd-c67c-4c3b-b4b7-53f6e9694ae9', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2019-10-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 17:30:05\"},\"consultation\":{\"appointment_on\":\"2019-10-13 22:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":1,\"address\":\"tagamo3\",\"syndrome\":null,\"updated_at\":\"2019-10-08 17:46:58\",\"created_at\":\"2019-10-08 17:46:58\",\"id\":127},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 15:46:58', '2019-10-08 15:46:58'),
('308d5100-0246-4314-812a-9b94877967a1', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":185,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-20 10:12:40', '2019-10-20 10:12:40'),
('30a8ac47-0e65-4563-bda2-01ff3e8445f8', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 73, '{\"patient\":{\"id\":72,\"name\":\"Eslam Waheed\",\"email\":\"eslamwaheed95@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"1273393239489114\",\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-11-06 13:09:58\",\"updated_at\":\"2019-11-06 13:09:58\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-07 15:04:59\",\"patient_id\":72,\"doctor_id\":73,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"hii\",\"updated_at\":\"2019-11-06 16:05:21\",\"created_at\":\"2019-11-06 16:05:21\",\"id\":266,\"doctor\":{\"id\":73,\"name\":\"sameer ahmad\",\"email\":\"sameer.ahmad@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":\"october\",\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-11-06 16:01:34\",\"updated_at\":\"2019-11-06 16:01:34\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam Waheed has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Waheed \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-06 14:05:21', '2019-11-06 14:05:21'),
('31cfb876-316a-4028-96ae-7ba072a2f4c6', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":146,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-10 03:03:09', '2019-10-10 03:03:09');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('32d526a2-5258-47ec-8f00-2c3141d6e420', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-21 15:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"I don\\u2019t think \\ud83d\\udcad\",\"syndrome\":null,\"updated_at\":\"2019-10-20 13:14:21\",\"created_at\":\"2019-10-20 13:14:21\",\"id\":191,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-20 10:47:57\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-20 11:14:22', '2019-10-20 11:14:22'),
('32fea780-fe4b-4163-8c45-2643b2fe57c4', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 4, '{\"consultation_id\":8,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0634 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-09-18 10:24:39', '2019-09-18 10:24:39'),
('33925cc2-4871-4c73-8458-02921e337535', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-20 23:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"hi we t\",\"syndrome\":null,\"updated_at\":\"2019-10-20 13:17:41\",\"created_at\":\"2019-10-20 13:17:41\",\"id\":192,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-20 10:47:57\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-20 11:17:41', '2019-10-20 11:17:41'),
('34581bfa-c233-4611-b0e5-cda653233e28', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":1,\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-26 18:31:18\",\"created_at\":\"2019-09-26 18:31:18\",\"id\":66},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 16:31:18', '2019-09-26 16:31:18'),
('3573831d-33e6-4bd8-8a3b-2c5dfd443fb2', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 68, '{\"consultation_id\":259,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-11-05 11:19:41', '2019-11-05 03:09:01', '2019-11-05 11:19:41'),
('35ce2ad9-199f-47ff-82d2-bcd59cd337bb', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 30, '{\"consultation_id\":80,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-01 22:46:24', '2019-10-01 22:46:24'),
('35efe394-91ac-4350-a3c9-d3ef79fa2992', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-13 05:02:32\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-12 22:02:42\",\"created_at\":\"2019-11-12 22:02:42\",\"id\":279,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"01028289502\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-12 18:09:43\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-12 20:02:42', '2019-11-12 20:02:42'),
('368845e0-c040-4057-98b7-e66b0bd1b912', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":129,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-08 18:51:25', '2019-10-08 18:51:25'),
('36e0103e-60e1-4601-a10b-46d2a05e246c', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-04 09:56:54\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-04 15:11:06\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-04 13:17:51\",\"created_at\":\"2019-11-04 13:17:51\",\"id\":254,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"546808\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2003-11-01\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-01 17:10:47\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-04 11:17:51', '2019-11-04 11:17:51'),
('3729c843-351e-4c69-a0c5-c5a183153c97', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 30, '{\"consultation_id\":87,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-27 09:18:08', '2019-10-08 13:25:58', '2019-10-27 09:18:08'),
('3769c47f-ed29-4cc8-b3eb-851387121f78', 'App\\Notifications\\DoctorEndedConsultation', 'App\\User', 68, '{\"consultation_id\":253,\"text_en\":\"Doctor eslam has ended the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 eslam \\u0628\\u0625\\u0646\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d\"}', '2019-11-05 11:19:20', '2019-11-05 09:10:24', '2019-11-05 11:19:20'),
('376fdf24-c3a7-4978-bbd0-62c682ca4ee6', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 2, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-23 20:24:37\",\"patient_id\":6,\"doctor_id\":\"2\",\"department_id\":\"2\",\"consultation_type\":3,\"updated_at\":\"2019-09-23 06:24:40\",\"created_at\":\"2019-09-23 06:24:40\",\"id\":30},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-23 04:24:40', '2019-09-23 04:24:40'),
('3932baa9-de5c-42a3-bfc9-2b65104bc318', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-10-16 08:39:26\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-10-17 15:04:42\",\"created_at\":\"2019-10-17 15:04:42\",\"id\":177},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-17 13:04:43', '2019-10-17 13:04:43'),
('3a017350-70c0-4abd-ae37-b155943c0e6d', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":81,\"name\":\"eslam\",\"email\":\"eslamwaheed@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2020-01-27 15:51:23\",\"updated_at\":\"2020-01-27 15:51:23\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2020-01-27 17:53:33\",\"patient_id\":81,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"hggg\",\"updated_at\":\"2020-01-27 15:53:43\",\"created_at\":\"2020-01-27 15:53:43\",\"id\":287,\"doctor\":{\"id\":1,\"name\":\"doctor\",\"email\":\"doctor@doctor.com\",\"phone_number\":\"0111895245\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/1_1568544023\\/profile_picture\\/1_profilePicture_19837793061568544023.jpg\",\"address\":\"asdasdasdads\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2019-07-02\",\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":\"2019-10-28 15:24:36\",\"lang\":\"ar\"}},\"text_en\":\"Patient :eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2020-01-27 13:53:43', '2020-01-27 13:53:43'),
('3a5e2ab8-b820-4aee-bb2f-b73fdaa97267', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-30 14:10:00\",\"patient_id\":65,\"doctor_id\":64,\"consultation_type\":1,\"address\":\"hi there I was wondering how much your text you had and how much time I have to be done \\u2705 I can\",\"syndrome\":null,\"updated_at\":\"2019-10-30 12:57:26\",\"created_at\":\"2019-10-30 12:57:26\",\"id\":235,\"doctor\":{\"id\":64,\"name\":\"saly hisham\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":3,\"birthdate\":null,\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 10:47:19\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-31 00:06:22', '2019-10-30 10:57:26', '2019-10-31 00:06:22'),
('3ad36076-7ae5-4174-87f8-411cb604ed72', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 16, '{\"consultation_id\":22,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-22 10:02:42', '2019-09-22 10:02:42'),
('3c9ad47b-03ee-466e-bedf-fe4df60cf69a', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":62,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 03:38:50', '2019-09-27 03:38:50'),
('3d731b9c-5a27-4324-8608-a3f0c9ebe2fe', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":13,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:41:40', '2019-09-18 10:41:40'),
('3d76a52e-1ca3-49f1-b710-3f43ec508c0f', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 49, '{\"consultation_id\":170,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-24 12:47:56', '2019-10-24 12:47:56'),
('3de23290-8ff5-4ecc-9437-343e82501fb6', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 33, '{\"consultation_id\":84,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-27 09:01:48', '2019-10-27 09:01:48'),
('3dfb58a8-062d-4eb0-bf37-d589cde6c293', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-29 20:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 18:10:06\",\"created_at\":\"2019-10-29 18:10:06\",\"id\":221,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-29 15:12:26\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-30 06:20:57', '2019-10-29 16:10:06', '2019-10-30 06:20:57'),
('3e8be0e3-9423-4759-8728-f0c03ce39b2d', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":14,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:48:44', '2019-09-18 10:48:44'),
('3f1f4d3e-40aa-406f-b33d-7d6b99a36b99', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":88,\"name\":\"maha\",\"email\":\"maha@mailinator.com\",\"phone_number\":\"01011088902\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\\\uploads\\\\img\\\\88_1596970202\\\\profile_picture\\\\88_profilePicture_13461251951596970202.jpg\",\"address\":\"fgfgrrrr\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1992-09-26\",\"created_at\":\"2020-08-09 10:50:02\",\"updated_at\":\"2020-08-10 09:35:34\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2020-08-24 15:00:00\",\"patient_id\":88,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"45 street , test city\",\"syndrome\":\"headache\",\"updated_at\":\"2020-08-23 12:00:49\",\"created_at\":\"2020-08-23 12:00:49\",\"id\":291},\"text_en\":\"Patient :maha has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : maha \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2020-08-23 10:01:03', '2020-08-23 10:01:03'),
('3fcc02dd-a108-412c-94f2-f0d6027367a6', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":69,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 02:26:44', '2019-09-27 02:26:44'),
('3fe8eab6-3ad8-41b6-9552-dad8eddd6e4d', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1991-07-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 18:44:16\"},\"consultation\":{\"appointment_on\":\"2019-10-08 22:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-08 20:38:58\",\"created_at\":\"2019-10-08 20:38:58\",\"id\":132},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 18:38:58', '2019-10-08 18:38:58'),
('40c3103a-98c7-45a2-88da-3abd0b3b9094', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1991-07-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 18:44:16\"},\"consultation\":{\"appointment_on\":\"2019-10-09 21:10:00\",\"patient_id\":41,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-09 12:31:11\",\"created_at\":\"2019-10-09 12:31:11\",\"id\":136},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-09 10:31:11', '2019-10-09 10:31:11'),
('40d38814-4db5-485d-9702-f57372d283d6', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-30 19:10:00\",\"patient_id\":65,\"doctor_id\":64,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-31 12:48:48\",\"created_at\":\"2019-10-31 12:48:48\",\"id\":251,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-04 09:21:26', '2019-10-31 10:48:48', '2019-11-04 09:21:26'),
('40d43b5a-8492-4de4-a235-ab15c894fb4d', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-30 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"trh\",\"updated_at\":\"2019-09-18 12:39:44\",\"created_at\":\"2019-09-18 12:39:44\",\"id\":13},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:39:59', '2019-09-18 10:39:44', '2019-09-18 10:39:59'),
('41358f22-ada4-41df-bbca-e3a2a353d9e4', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":180,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-17 13:49:18', '2019-10-17 13:49:18'),
('414811d5-ef00-44c3-b5bc-1bc3eb3a742d', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-19 09:10:31\",\"patient_id\":17,\"doctor_id\":18,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"ugyvhvb test\",\"updated_at\":\"2019-10-16 10:05:21\",\"created_at\":\"2019-10-16 10:05:21\",\"id\":156},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 08:05:21', '2019-10-16 08:05:21'),
('41a2d1cd-f0c0-470e-90cc-2df0d846581c', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":109,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-16 13:41:36', '2019-10-16 13:41:36'),
('4201feda-69a3-460e-bf45-d340848f91dc', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-09-26 20:09:49\",\"patient_id\":6,\"doctor_id\":15,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-26 18:35:53\",\"created_at\":\"2019-09-26 18:35:53\",\"id\":70},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 16:35:53', '2019-09-26 16:35:53'),
('422d31f2-4b7c-4b84-be95-53b1ea6d118c', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":255,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-11-05 04:03:35', '2019-11-04 22:51:20', '2019-11-05 04:03:35'),
('430082a9-bcd0-4864-9965-5bea9e70a6b5', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2019-10-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 17:30:05\"},\"consultation\":{\"appointment_on\":\"2019-10-12 22:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":1,\"address\":\"most el deeds\",\"syndrome\":null,\"updated_at\":\"2019-10-08 17:41:31\",\"created_at\":\"2019-10-08 17:41:31\",\"id\":126},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 15:41:31', '2019-10-08 15:41:31'),
('4427c5c1-f663-41f5-9d2f-fc6b25d82201', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-24 06:43:46\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-24 11:37:03\",\"created_at\":\"2019-09-24 11:37:03\",\"id\":45},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-24 09:37:03', '2019-09-24 09:37:03'),
('445ce297-1191-4a3f-93ef-370df5281630', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":69,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 02:28:45', '2019-09-27 02:28:45'),
('44a06051-9959-45cd-b730-1828f698d1e8', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 4, '{\"consultation_id\":6,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0634 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-09-18 10:01:47', '2019-09-18 10:01:47'),
('45ecedf1-e1d8-4f7f-a4d4-7d22b4f15e85', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-20 09:02:35\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":1,\"address\":\"ytrghg\",\"syndrome\":\"hfgcc\",\"updated_at\":\"2019-10-17 11:03:06\",\"created_at\":\"2019-10-17 11:03:06\",\"id\":171},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-17 09:03:06', '2019-10-17 09:03:06'),
('4607bffe-0ffd-43ca-ab3a-573596ebb2cf', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":23,\"name\":\"sallyhisham\",\"email\":\"sally@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 14:40:08\",\"updated_at\":\"2019-10-01 14:40:08\"},\"consultation\":{\"appointment_on\":\"2019-10-01 16:10:54\",\"patient_id\":23,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-01 14:43:56\",\"created_at\":\"2019-10-01 14:43:56\",\"id\":78},\"text_en\":\"Patient :sallyhisham has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sallyhisham \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-01 12:43:56', '2019-10-01 12:43:56'),
('46141b15-c301-4dba-a949-ca9b0836487c', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-08 21:10:00\",\"patient_id\":41,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-08 14:54:36\",\"created_at\":\"2019-10-08 14:54:36\",\"id\":118},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 12:54:36', '2019-10-08 12:54:36'),
('46b33044-5fa1-47e6-a440-0da136627d2c', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":176,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 10:10:35', '2019-10-20 10:10:35'),
('46eb3dae-8091-41a7-b7f1-0e27443da376', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-28 10:30:06\",\"patient_id\":17,\"doctor_id\":18,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-24 15:31:25\",\"created_at\":\"2019-10-24 15:31:25\",\"id\":199,\"doctor\":{\"id\":18,\"name\":\"Eslam\",\"email\":\"eslamdoctor@doctor.com\",\"phone_number\":\"01028289504\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/18_1569149877\\/profile_picture\\/18_profilePicture_1569149877.jpeg\",\"address\":\"Doctor addresssssssssssss\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-09-22 10:57:57\",\"updated_at\":\"2019-10-10 13:47:20\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-24 13:31:25', '2019-10-24 13:31:25'),
('4761b4f2-fd62-47ed-98ec-4ec97eed98c1', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-23 12:04:21\",\"created_at\":\"2019-09-23 12:04:21\",\"id\":34},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-23 10:04:21', '2019-09-23 10:04:21'),
('476422be-0ec6-4804-923d-aeda2ad3143c', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":139,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-14 06:46:08', '2019-10-14 06:46:08'),
('48941085-79d3-4de2-9dec-ea5539224e68', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1991-07-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 18:44:16\"},\"consultation\":{\"appointment_on\":\"2019-10-09 21:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-09 19:14:05\",\"created_at\":\"2019-10-09 19:14:05\",\"id\":141},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-09 17:14:05', '2019-10-09 17:14:05'),
('48f58c4c-1bdf-4357-9150-8db44223cd54', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-30 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":3,\"doctor_response\":null,\"updated_at\":\"2019-09-18 12:55:36\",\"created_at\":\"2019-09-18 12:55:36\",\"id\":18},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:55:58', '2019-09-18 10:55:36', '2019-09-18 10:55:58'),
('49100760-6a0f-44a2-8317-c3a9114ac11d', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-19 10:06:17\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":1,\"address\":\"ytgghvhv\",\"syndrome\":\"vgv\",\"updated_at\":\"2019-10-16 10:07:05\",\"created_at\":\"2019-10-16 10:07:05\",\"id\":158},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 08:07:05', '2019-10-16 08:07:05'),
('49617ba2-7bdc-412f-b0c4-417da4020271', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-24 06:43:46\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":6,\"doctor_id\":3,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-25 10:10:39\",\"created_at\":\"2019-09-25 10:10:39\",\"id\":54},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-25 08:10:39', '2019-09-25 08:10:39'),
('49bd1290-b75b-45f0-a6a3-638c82dd6038', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":79,\"name\":\"aaaaaa\",\"email\":\"aaa@aaa.aaa\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-11-25 07:46:51\",\"updated_at\":\"2019-11-25 07:46:51\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-25 18:11:00\",\"patient_id\":79,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-25 07:48:38\",\"created_at\":\"2019-11-25 07:48:38\",\"id\":285,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :aaaaaa has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : aaaaaa \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-25 05:48:38', '2019-11-25 05:48:38');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('49e68382-d6aa-4d3b-a5be-c82db97bd297', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-10 18:15:50\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"yfhhjjj\",\"updated_at\":\"2019-11-07 11:16:06\",\"created_at\":\"2019-11-07 11:16:06\",\"id\":270,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"546808\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2003-11-01\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-01 17:10:47\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-07 09:16:06', '2019-11-07 09:16:06'),
('49f557c3-4c65-4391-9b08-88872c8aa623', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-22 15:10:00\",\"patient_id\":41,\"doctor_id\":3,\"consultation_type\":1,\"address\":\"testest.\",\"syndrome\":null,\"updated_at\":\"2019-10-22 12:09:01\",\"created_at\":\"2019-10-22 12:09:01\",\"id\":196,\"doctor\":{\"id\":3,\"name\":\"Mohannad\",\"email\":\"sally@patient.com\",\"phone_number\":\"01111111111\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/3_1568544023\\/profile_picture\\/3_profilePicture_1568544023.jpeg\",\"address\":\"test trst\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2019-09-19\",\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":\"2019-10-03 08:50:38\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-22 10:09:01', '2019-10-22 10:09:01'),
('4a45ad31-8966-41eb-9612-4967d998f5cd', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":53,\"name\":\"sss\",\"email\":\"ss@ss.ss\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-28 14:55:29\",\"updated_at\":\"2019-10-28 14:55:29\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-16 16:10:00\",\"patient_id\":53,\"doctor_id\":3,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 09:57:06\",\"created_at\":\"2019-10-29 09:57:06\",\"id\":202,\"doctor\":{\"id\":3,\"name\":\"Mohannad\",\"email\":\"sally@patient.com\",\"phone_number\":\"01111111111\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/3_1568544023\\/profile_picture\\/3_profilePicture_1568544023.jpeg\",\"address\":\"test trst\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2019-09-19\",\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":\"2019-10-03 08:50:38\",\"lang\":\"ar\"}},\"text_en\":\"Patient :sss has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-29 07:57:06', '2019-10-29 07:57:06'),
('4ab42893-7edf-42bf-b088-355cdd0520d9', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 79, '{\"consultation_id\":284,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-11-25 05:51:31', '2019-11-25 05:51:22', '2019-11-25 05:51:31'),
('4add6eeb-7672-4c68-a012-cf818dd6567f', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-23 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"for\",\"syndrome\":null,\"updated_at\":\"2019-10-20 10:54:34\",\"created_at\":\"2019-10-20 10:54:34\",\"id\":187,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-20 10:47:57\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-20 08:54:34', '2019-10-20 08:54:34'),
('4b62578a-1de0-4d13-82b1-d0e519f76fb8', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-27 10:09:52\",\"patient_id\":17,\"doctor_id\":18,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"jhgy\",\"updated_at\":\"2019-10-24 14:10:10\",\"created_at\":\"2019-10-24 14:10:10\",\"id\":197,\"doctor\":{\"id\":18,\"name\":\"Eslam\",\"email\":\"eslamdoctor@doctor.com\",\"phone_number\":\"01028289504\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/18_1569149877\\/profile_picture\\/18_profilePicture_1569149877.jpeg\",\"address\":\"Doctor addresssssssssssss\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-09-22 10:57:57\",\"updated_at\":\"2019-10-10 13:47:20\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-24 12:10:10', '2019-10-24 12:10:10'),
('4b97ccbf-a22c-44ff-8aba-90476e82b464', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-13 00:15:06\",\"patient_id\":68,\"doctor_id\":67,\"consultation_type\":1,\"address\":null,\"lat\":null,\"lng\":null,\"syndrome\":null,\"updated_at\":\"2019-11-12 22:15:14\",\"created_at\":\"2019-11-12 22:15:14\",\"id\":282,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"01028289502\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-12 18:09:43\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-12 20:15:15', '2019-11-12 20:15:15'),
('4bae6cc0-4977-4eda-9a67-3e9faa094ea1', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-25 01:43:07\",\"patient_id\":17,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"hghghb\",\"updated_at\":\"2019-10-06 13:43:24\",\"created_at\":\"2019-10-06 13:43:24\",\"id\":104},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-06 11:43:24', '2019-10-06 11:43:24'),
('4c450558-2be4-40a8-a91d-1d87b0eb0aaf', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 42, '{\"consultation_id\":111,\"text_en\":\"The patient \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', '2019-10-30 06:20:52', '2019-10-30 06:08:17', '2019-10-30 06:20:52'),
('4d3ed463-49ea-4d59-80ba-09ab7f2a4a6f', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 63, '{\"consultation_id\":231,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-30 09:56:46', '2019-10-30 09:56:46'),
('4d4da6f0-ef75-4dc3-ade7-2367ee21c11a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\"},\"consultation\":{\"appointment_on\":\"2019-10-16 17:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"gfgdf\",\"syndrome\":null,\"updated_at\":\"2019-10-16 15:43:23\",\"created_at\":\"2019-10-16 15:43:23\",\"id\":168},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 13:43:23', '2019-10-16 13:43:23'),
('4ee0f721-3389-44f9-a90a-ce8f6378a2c5', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":189,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-21 10:27:57', '2019-10-21 10:27:57'),
('4eebad02-3f71-4c92-b4ec-b6ad09ad6bf2', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 63, '{\"consultation_id\":228,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-30 10:01:01', '2019-10-30 10:01:01'),
('502456f6-a396-457d-954d-07837e679405', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 10, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-02 16:05:46\",\"patient_id\":17,\"doctor_id\":10,\"department_id\":null,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 13:05:53\",\"created_at\":\"2019-10-29 13:05:53\",\"id\":213,\"doctor\":{\"id\":10,\"name\":\"Mohannad\",\"email\":\"mohannad@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-19 15:25:29\",\"updated_at\":\"2019-09-19 15:25:29\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-29 11:05:53', '2019-10-29 11:05:53'),
('51a750c7-bf67-451d-97da-fed064d64ed7', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-31 20:10:00\",\"patient_id\":65,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-31 02:19:26\",\"created_at\":\"2019-10-31 02:19:26\",\"id\":243,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-31 05:54:18', '2019-10-31 00:19:27', '2019-10-31 05:54:18'),
('5387c5fd-e0f6-46d1-bc3a-f2297d1bebec', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 68, '{\"consultation_id\":261,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-11-13 07:27:41', '2019-11-13 07:27:41'),
('53ad51ec-8541-4c77-943b-3daa4143fcae', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 76, '{\"consultation_id\":277,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-11-12 13:32:52', '2019-11-12 13:23:56', '2019-11-12 13:32:52'),
('542f4614-e1e4-4857-9f6e-48c5f882300e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-29 16:04:43\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-10 13:04:47\",\"created_at\":\"2019-11-10 13:04:47\",\"id\":275,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"546808\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2003-11-01\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-01 17:10:47\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-10 11:04:47', '2019-11-10 11:04:47'),
('54b2c678-e8b7-4f29-8ef7-d1b3565934fd', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-06 18:11:00\",\"patient_id\":65,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-04 13:28:15\",\"created_at\":\"2019-11-04 13:28:15\",\"id\":256,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-04 11:42:33', '2019-11-04 11:28:15', '2019-11-04 11:42:33'),
('55927f09-b061-481e-99f1-4a20665c535e', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":17,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:55:04', '2019-09-18 10:55:04'),
('561b9ee3-fd82-429d-8d3d-00e48e532943', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 58, '{\"patient\":{\"id\":63,\"name\":\"Amira mahrous\",\"email\":\"amira@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-30 10:45:31\",\"updated_at\":\"2019-10-30 10:45:31\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-31 18:10:57\",\"patient_id\":63,\"doctor_id\":58,\"department_id\":2,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-30 12:11:12\",\"created_at\":\"2019-10-30 12:11:12\",\"id\":232,\"doctor\":{\"id\":58,\"name\":\"eslam test\",\"email\":\"ahmad.adel@perfect.com\",\"phone_number\":\"00201022336655\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/58_1572431994\\/profile_picture\\/58_profilePicture_19240697721572431994.png\",\"address\":\"faisal\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":2,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-10-30 10:39:54\",\"updated_at\":\"2019-10-30 11:32:21\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Amira mahrous has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Amira mahrous \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-30 10:11:12', '2019-10-30 10:11:12'),
('574c7086-08c8-4086-ba26-fbbaf622c218', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\"},\"consultation\":{\"appointment_on\":\"2019-10-20 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-20 10:42:34\",\"created_at\":\"2019-10-20 10:42:34\",\"id\":182},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-20 08:42:34', '2019-10-20 08:42:34'),
('5780a77b-4c6e-4d26-a7d0-6ffd95f88ffb', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 63, '{\"consultation_id\":228,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-30 10:01:02', '2019-10-30 10:01:02'),
('57b954c9-216f-4b05-92a7-e2d5b49ae9a4', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-12-10 13:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"\\u0634\\u0628\\u0631\\u0627\",\"updated_at\":\"2019-09-15 11:46:30\",\"created_at\":\"2019-09-15 11:46:30\",\"id\":1},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-15 09:46:37', '2019-09-15 09:46:30', '2019-09-15 09:46:37'),
('57dcc1a4-b8b0-42ca-bbd0-26598b3f8705', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 30, '{\"consultation_id\":200,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-29 15:06:09', '2019-10-29 15:06:09'),
('58f73145-acca-47e1-aec4-00f50e97b4a4', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 56, '{\"patient\":{\"id\":88,\"name\":\"maha\",\"email\":\"maha@mailinator.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2020-08-09 10:50:02\",\"updated_at\":\"2020-08-09 10:50:02\",\"lang\":\"ar\"},\"consultation\":{\"id\":290,\"content\":null,\"appointment_on\":\"2020-08-27 12:50:00\",\"patient_age\":null,\"price\":null,\"doctor_response\":null,\"address\":\"iii\",\"consultation_type\":1,\"type_id\":2,\"patient_id\":88,\"doctor_id\":\"56\",\"department_id\":null,\"currency_id\":null,\"expired_at\":null,\"created_at\":\"2020-08-09 10:50:51\",\"updated_at\":\"2020-08-09 10:50:51\",\"syndrome\":\"pop[\",\"status\":null,\"recommended_doctor\":null,\"lat\":null,\"lng\":null,\"patient\":{\"id\":88,\"name\":\"maha\",\"email\":\"maha@mailinator.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2020-08-09 10:50:02\",\"updated_at\":\"2020-08-09 10:50:02\",\"lang\":\"ar\"}},\"text_en\":\"Patient :maha has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : maha \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2020-08-09 10:06:23', '2020-08-09 10:06:23'),
('596462b5-79f6-4488-a02a-b3ff4d9ea8a4', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-24 06:43:46\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":3,\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-25 09:59:34\",\"created_at\":\"2019-09-25 09:59:34\",\"id\":53},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-25 07:59:34', '2019-09-25 07:59:34'),
('5981b1db-7497-408c-b8b9-cf3fd89adcf7', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":71,\"name\":\"mohsen\",\"email\":\"dd@dd.com\",\"phone_number\":\"1122\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":\"22\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2019-11-13\",\"created_at\":\"2019-11-06 12:06:56\",\"updated_at\":\"2019-11-06 12:17:11\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-06 14:04:00\",\"patient_id\":71,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"dd\",\"syndrome\":\"dd\",\"updated_at\":\"2019-11-06 12:18:24\",\"created_at\":\"2019-11-06 12:18:24\",\"id\":262},\"text_en\":\"Patient :mohsen has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : mohsen \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-06 10:18:24', '2019-11-06 10:18:24'),
('5a9a22d3-ccd3-4ae1-9934-a9a71f3fceca', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-21 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"technically\",\"syndrome\":null,\"updated_at\":\"2019-10-20 10:49:34\",\"created_at\":\"2019-10-20 10:49:34\",\"id\":186,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-20 10:47:57\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-20 08:49:34', '2019-10-20 08:49:34'),
('5b132cf9-437f-48cb-aff3-80d424e4da3f', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":112,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-17 09:53:51', '2019-10-17 09:53:51'),
('5b951e6e-982b-466a-ab0f-4bb41b1995b6', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-12 21:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-08 15:36:06\",\"created_at\":\"2019-10-08 15:36:06\",\"id\":122},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 13:36:06', '2019-10-08 13:36:06'),
('5bb12a04-63f5-43d6-9631-766e32e97316', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-03 20:10:00\",\"patient_id\":65,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-30 22:23:52\",\"created_at\":\"2019-10-30 22:23:52\",\"id\":238,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-14 08:51:56', '2019-10-30 20:23:52', '2019-11-14 08:51:56'),
('5cf787cf-82ee-44f3-8a13-2bba53ca389e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-23 22:09:28\",\"patient_id\":6,\"doctor_id\":\"1\",\"department_id\":\"1\",\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-23 20:13:35\",\"created_at\":\"2019-09-23 20:13:35\",\"id\":38},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-23 18:13:35', '2019-09-23 18:13:35'),
('5d10ded4-23fa-4c8d-8aba-0a0054a183c3', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":13,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:46:43', '2019-09-18 10:46:43'),
('5d967a7f-5918-4c3b-b9c5-93ac9c37a443', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 56, '{\"patient\":{\"id\":88,\"name\":\"maha\",\"email\":\"maha@mailinator.com\",\"phone_number\":\"01011088902\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\\\uploads\\\\img\\\\88_1596970202\\\\profile_picture\\\\88_profilePicture_13461251951596970202.jpg\",\"address\":\"fgfgrrrr\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1992-09-26\",\"created_at\":\"2020-08-09 10:50:02\",\"updated_at\":\"2020-08-10 09:35:34\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2020-08-30 15:01:00\",\"patient_id\":88,\"doctor_id\":\"56\",\"consultation_type\":3,\"doctor_response\":null,\"syndrome\":\"headache\",\"updated_at\":\"2020-08-23 12:02:00\",\"created_at\":\"2020-08-23 12:02:00\",\"id\":292},\"text_en\":\"Patient :maha has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : maha \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2020-08-23 10:02:04', '2020-08-23 10:02:04'),
('5e3d1b52-8844-4e93-acb1-9e562cbe839e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":16,\"name\":\"Mohannadpatient\",\"email\":\"Mohannadpatient@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:44:24\",\"updated_at\":\"2019-09-22 10:44:24\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":16,\"doctor_id\":\"15\",\"consultation_type\":2,\"updated_at\":\"2019-09-22 14:46:03\",\"created_at\":\"2019-09-22 14:46:03\",\"id\":25},\"text_en\":\"Patient :Mohannadpatient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Mohannadpatient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-22 12:46:03', '2019-09-22 12:46:03'),
('5e45dd52-4677-4d76-afe3-d7ffa053ef51', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":113,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-17 13:45:44', '2019-10-17 13:45:44'),
('5f4a624a-fede-4be2-a895-e36fe9e89455', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 30, '{\"consultation_id\":83,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-27 09:18:34', '2019-10-02 00:06:47', '2019-10-27 09:18:34'),
('5f52c408-e92b-467e-89fb-a2554cd8eb74', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":249,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-11-04 11:34:34', '2019-10-31 10:44:40', '2019-11-04 11:34:34'),
('5f8b99f5-0b9b-45a1-8e6f-48afdf860613', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 44, '{\"consultation_id\":108,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-07 13:22:37', '2019-10-07 13:22:37'),
('602fd302-d604-428d-a5c8-56a59308a7f0', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-12 22:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-08 15:36:48\",\"created_at\":\"2019-10-08 15:36:48\",\"id\":123},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 13:36:48', '2019-10-08 13:36:48'),
('6044304c-cb19-47fc-bcf7-df51a6a4a732', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-12-07 01:24:49\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":4,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-07 21:24:59\",\"created_at\":\"2019-10-07 21:24:59\",\"id\":111},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-07 19:24:59', '2019-10-07 19:24:59'),
('60465b6d-a986-4268-991a-c3d08d9745e3', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":218,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-30 07:45:43', '2019-10-29 15:58:40', '2019-10-30 07:45:43'),
('61e07bb6-88bc-4574-860a-25e85ae87597', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-31 14:10:00\",\"patient_id\":65,\"doctor_id\":64,\"consultation_type\":1,\"address\":\"test\",\"syndrome\":null,\"updated_at\":\"2019-10-31 12:40:18\",\"created_at\":\"2019-10-31 12:40:18\",\"id\":249,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-04 11:42:36', '2019-10-31 10:40:19', '2019-11-04 11:42:36'),
('61fe68d5-8184-4f0e-b25d-3ca4cafc02ac', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\"},\"consultation\":{\"appointment_on\":\"2019-10-17 16:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"testaddd\",\"syndrome\":null,\"updated_at\":\"2019-10-17 14:00:43\",\"created_at\":\"2019-10-17 14:00:43\",\"id\":172},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-17 12:00:43', '2019-10-17 12:00:43'),
('622127cc-186b-49b9-b8a9-948d20081ca5', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-12 21:10:00\",\"patient_id\":41,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-08 15:19:30\",\"created_at\":\"2019-10-08 15:19:30\",\"id\":120},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 13:19:30', '2019-10-08 13:19:30');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('62c1dfcd-1801-445c-b3fc-50a0da8d747f', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":30,\"name\":\"sss@sss.com\",\"email\":\"ss@ss.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 19:32:06\",\"updated_at\":\"2019-10-01 19:32:06\"},\"consultation\":{\"appointment_on\":\"2019-10-03 05:10:47\",\"patient_id\":30,\"doctor_id\":1,\"consultation_type\":1,\"address\":\"test test test\",\"syndrome\":null,\"updated_at\":\"2019-10-02 03:16:51\",\"created_at\":\"2019-10-02 03:16:51\",\"id\":88},\"text_en\":\"Patient :sss@sss.com has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss@sss.com \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-02 01:16:51', '2019-10-02 01:16:51'),
('62c7ed72-1237-4a7e-a9c5-2203512df30a', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":182,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 10:20:12', '2019-10-20 10:20:12'),
('635f938f-d499-48f6-9f92-54dd8f88f09b', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-29 19:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 17:58:12\",\"created_at\":\"2019-10-29 17:58:12\",\"id\":218,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-29 15:12:26\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-29 15:58:13', '2019-10-29 15:58:13'),
('6367880c-345a-4e27-964c-6bc45cb0e61e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-30 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"hkl\",\"updated_at\":\"2019-09-18 12:54:20\",\"created_at\":\"2019-09-18 12:54:20\",\"id\":17},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:54:55', '2019-09-18 10:54:20', '2019-09-18 10:54:55'),
('63950ea7-b351-4fc2-b57a-c593a450aa22', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-30 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":2,\"updated_at\":\"2019-09-18 12:52:53\",\"created_at\":\"2019-09-18 12:52:53\",\"id\":16},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:53:18', '2019-09-18 10:52:53', '2019-09-18 10:53:18'),
('63aff6d3-f891-4121-beec-ab4049aafbc2', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-27 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":3,\"doctor_response\":null,\"updated_at\":\"2019-09-15 11:56:20\",\"created_at\":\"2019-09-15 11:56:20\",\"id\":3},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-15 09:57:10', '2019-09-15 09:56:20', '2019-09-15 09:57:10'),
('6465997d-9e12-44af-b375-22bccca624b3', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":30,\"name\":\"sss@sss.com\",\"email\":\"ss@ss.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 19:32:06\",\"updated_at\":\"2019-10-01 19:32:06\"},\"consultation\":{\"appointment_on\":\"2019-10-02 01:10:29\",\"patient_id\":30,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-01 23:26:32\",\"created_at\":\"2019-10-01 23:26:32\",\"id\":79},\"text_en\":\"Patient :sss@sss.com has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss@sss.com \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-01 21:26:32', '2019-10-01 21:26:32'),
('6516e98a-38d7-4da2-8024-2487a1212109', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":125,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-20 09:16:33', '2019-10-20 09:16:33'),
('65907d92-658d-4c66-b2f8-73575e5fc735', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":22,\"name\":\"Rami allaf\",\"email\":\"Rami.allaf@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 14:36:55\",\"updated_at\":\"2019-10-01 14:36:55\"},\"consultation\":{\"appointment_on\":\"2019-10-03 11:10:26\",\"patient_id\":22,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-03 09:57:32\",\"created_at\":\"2019-10-03 09:57:32\",\"id\":93},\"text_en\":\"Patient :Rami allaf has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Rami allaf \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-03 07:57:32', '2019-10-03 07:57:32'),
('65e77d0b-338a-4f65-8788-d30678f0312d', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":175,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 10:13:33', '2019-10-20 10:13:33'),
('66fafde2-db46-4365-a842-e79e5cca5908', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-31 11:10:00\",\"patient_id\":65,\"doctor_id\":64,\"consultation_type\":1,\"address\":\"ef\",\"syndrome\":null,\"updated_at\":\"2019-10-31 09:19:59\",\"created_at\":\"2019-10-31 09:19:59\",\"id\":247,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-04 11:42:37', '2019-10-31 07:19:59', '2019-11-04 11:42:37'),
('675eb3a9-ee37-46c0-aeec-3fb28be6b254', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 19, '{\"patient\":{\"id\":44,\"name\":\"hend\",\"email\":\"hend22@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-24 11:08:30\",\"updated_at\":\"2019-09-24 11:08:30\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":44,\"doctor_id\":19,\"consultation_type\":1,\"address\":\"test test\",\"syndrome\":null,\"updated_at\":\"2019-10-07 15:04:21\",\"created_at\":\"2019-10-07 15:04:21\",\"id\":108},\"text_en\":\"Patient :hend has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : hend \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-07 13:04:21', '2019-10-07 13:04:21'),
('680deb4f-2463-4292-bae1-d3f6d6b4329a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":6,\"doctor_id\":\"1\",\"department_id\":\"1\",\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-23 20:14:31\",\"created_at\":\"2019-09-23 20:14:31\",\"id\":41},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-23 18:14:31', '2019-09-23 18:14:31'),
('695f2994-2dac-4a26-b973-5bbc1764abc6', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":252,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-31 11:35:58', '2019-10-31 11:04:33', '2019-10-31 11:35:58'),
('6a26fcac-9a7d-4dad-af89-d06b692303bf', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-29 20:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 18:11:40\",\"created_at\":\"2019-10-29 18:11:40\",\"id\":222,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-29 15:12:26\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-30 06:09:44', '2019-10-29 16:11:40', '2019-10-30 06:09:44'),
('6a496183-8604-4da0-9c9f-43be026a0ad0', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-30 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"\\u0627\\u0627\\u0647\",\"updated_at\":\"2019-09-19 09:03:31\",\"created_at\":\"2019-09-19 09:03:31\",\"id\":20},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-19 07:05:40', '2019-09-19 07:03:31', '2019-09-19 07:05:40'),
('6a8f3edc-b088-47cc-bf06-4a9ee32b74e7', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-26 10:30:40\",\"patient_id\":17,\"doctor_id\":18,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"guu\",\"updated_at\":\"2019-10-24 15:15:13\",\"created_at\":\"2019-10-24 15:15:13\",\"id\":198,\"doctor\":{\"id\":18,\"name\":\"Eslam\",\"email\":\"eslamdoctor@doctor.com\",\"phone_number\":\"01028289504\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/18_1569149877\\/profile_picture\\/18_profilePicture_1569149877.jpeg\",\"address\":\"Doctor addresssssssssssss\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-09-22 10:57:57\",\"updated_at\":\"2019-10-10 13:47:20\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-24 13:15:13', '2019-10-24 13:15:13'),
('6afc23ad-4e03-4844-b66f-850fc5636d15', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":141,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-20 09:15:55', '2019-10-20 09:15:55'),
('6b51d2ac-3e80-4cc3-b2bb-b1e03596f59e', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 6, '{\"consultation_id\":54,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-09-25 12:13:19', '2019-09-25 12:13:19'),
('6bc9ab09-1e67-4af4-bb8b-edb0ab329a16', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1991-07-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 18:44:16\"},\"consultation\":{\"appointment_on\":\"2019-10-09 21:10:00\",\"patient_id\":41,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-09 19:31:01\",\"created_at\":\"2019-10-09 19:31:01\",\"id\":143},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-09 17:31:01', '2019-10-09 17:31:01'),
('6bcc860d-7588-4ca6-84ee-e9241e434a8c', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":13,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:45:55', '2019-09-18 10:45:55'),
('6be07c29-bce6-42af-8eeb-337c47c0b092', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 72, '{\"consultation_id\":266,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-11-06 14:08:02', '2019-11-06 14:08:02'),
('6bfabedd-ffee-48b0-92da-bf86d8e4797d', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":69,\"name\":\"sallyhisham\",\"email\":\"sallyhisham4@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"google\",\"provider_id\":\"Optional(\\\"112915072054142186165\\\")\",\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2019-11-04\",\"created_at\":\"2019-11-04 13:47:45\",\"updated_at\":\"2019-11-04 13:50:54\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-04 18:11:00\",\"patient_id\":69,\"doctor_id\":64,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-11-04 13:52:07\",\"created_at\":\"2019-11-04 13:52:07\",\"id\":258,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :sallyhisham has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sallyhisham \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-04 22:54:02', '2019-11-04 11:52:08', '2019-11-04 22:54:02'),
('6d3efbd7-fc75-474a-819d-d72dc449aba2', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-12 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":4,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-08 10:20:28\",\"created_at\":\"2019-10-08 10:20:28\",\"id\":112},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 08:20:29', '2019-10-08 08:20:29'),
('6e87632e-7382-4ba5-a43f-ba7f6c814688', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2019-10-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 17:30:05\"},\"consultation\":{\"appointment_on\":\"2019-10-08 20:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-08 18:00:50\",\"created_at\":\"2019-10-08 18:00:50\",\"id\":129},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 16:00:50', '2019-10-08 16:00:50'),
('6fc4581c-f24f-43ca-a252-9c8852cde770', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 65, '{\"consultation_id\":240,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-30 22:58:10', '2019-10-30 22:57:04', '2019-10-30 22:58:10'),
('6ff81c90-e63b-4631-86f9-bfe180113645', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-09-29 14:09:56\",\"patient_id\":6,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-29 12:36:59\",\"created_at\":\"2019-09-29 12:36:59\",\"id\":74},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-29 10:36:59', '2019-09-29 10:36:59'),
('700d7daf-96ce-40b4-b10f-7d0783f6fac6', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":128,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-10 02:17:09', '2019-10-10 02:17:09'),
('704d845e-f7fe-46bd-acb8-905994c33cef', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":125,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-08 17:19:24', '2019-10-08 17:19:24'),
('70ff7192-a613-4fd2-8634-eab5c45d7e0b', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":110,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-16 13:41:59', '2019-10-16 13:41:59'),
('71124d51-00e5-406b-9885-7d07694c107e', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":168,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-17 13:42:52', '2019-10-17 13:42:52'),
('71806386-42cd-4e2d-abda-30987d05a8ff', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":6,\"doctor_id\":\"1\",\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-09-23 20:14:23\",\"created_at\":\"2019-09-23 20:14:23\",\"id\":40},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-23 18:14:23', '2019-09-23 18:14:23'),
('71bb7c83-9d93-4af6-b285-b2f6c92bbd89', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\"},\"consultation\":{\"appointment_on\":\"2019-10-21 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-20 10:43:25\",\"created_at\":\"2019-10-20 10:43:25\",\"id\":183},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-20 08:43:25', '2019-10-20 08:43:25'),
('7411cf74-3546-4542-a6f1-11398b5188ec', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-04 09:56:54\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-07 17:03:02\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-05 13:03:04\",\"created_at\":\"2019-11-05 13:03:04\",\"id\":260,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"546808\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2003-11-01\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-01 17:10:47\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-05 11:03:04', '2019-11-05 11:03:04'),
('7435037c-95b8-4b74-a6d1-ec04cabe3784', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":29,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-30 17:25:08', '2019-09-30 17:25:08'),
('74b87035-05c4-4896-8c91-423ae9c85f50', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":65,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 03:44:46', '2019-09-27 03:44:46'),
('74c093c8-ce73-4413-aea1-c053a8ab69f3', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-02 16:49:43\",\"patient_id\":17,\"doctor_id\":18,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 12:50:13\",\"created_at\":\"2019-10-29 12:50:13\",\"id\":210,\"doctor\":{\"id\":18,\"name\":\"Eslam\",\"email\":\"eslamdoctor@doctor.com\",\"phone_number\":\"01028289504\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/18_1569149877\\/profile_picture\\/18_profilePicture_1569149877.jpeg\",\"address\":\"Doctor addresssssssssssss\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-09-22 10:57:57\",\"updated_at\":\"2019-10-10 13:47:20\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-29 10:50:13', '2019-10-29 10:50:13'),
('7558add1-2ab2-416b-bad1-e2b4cafbc83b', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":69,\"name\":\"Optional(\\\"Sally Hisham\\\")\",\"email\":\"Optional(\\\"sallyhisham4@gmail.com\\\")\",\"phone_number\":null,\"balance\":0,\"provider\":\"google\",\"provider_id\":\"Optional(\\\"112915072054142186165\\\")\",\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-11-04 13:47:45\",\"updated_at\":\"2019-11-04 13:47:45\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-04 17:11:00\",\"patient_id\":69,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-04 13:48:25\",\"created_at\":\"2019-11-04 13:48:25\",\"id\":257,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Optional(\\\"Sally Hisham\\\") has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Optional(\\\"Sally Hisham\\\") \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-04 22:54:18', '2019-11-04 11:48:25', '2019-11-04 22:54:18'),
('75bc2eb8-8640-4cc7-ad67-df00c01aa3b0', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":2,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-25 13:54:35\"},\"consultation\":{\"appointment_on\":\"2019-10-25 15:09:59\",\"patient_id\":6,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-25 13:59:02\",\"created_at\":\"2019-09-25 13:59:02\",\"id\":58},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-25 11:59:02', '2019-09-25 11:59:02'),
('75bd75a8-fb7c-45ca-875a-ca5c55af7238', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 68, '{\"consultation_id\":253,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-11-05 11:19:35', '2019-11-04 08:29:48', '2019-11-05 11:19:35'),
('7660713c-4d62-41ca-be41-406ad6dbc0fa', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":79,\"name\":\"aaaaaa\",\"email\":\"aaa@aaa.aaa\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-11-25 07:46:51\",\"updated_at\":\"2019-11-25 07:46:51\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-25 18:11:00\",\"patient_id\":79,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-25 07:54:02\",\"created_at\":\"2019-11-25 07:54:02\",\"id\":286,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :aaaaaa has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : aaaaaa \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-25 05:54:02', '2019-11-25 05:54:02'),
('76669519-6932-4bf5-be67-98c778be6770', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":49,\"name\":\"Hazem Test\",\"email\":\"zoma128@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-15 10:23:09\",\"updated_at\":\"2019-10-15 10:23:09\"},\"consultation\":{\"appointment_on\":\"2019-12-16 11:10:00\",\"patient_id\":49,\"doctor_id\":1,\"consultation_type\":1,\"address\":\"\\u062b\\u0642\\u0641\\u0635\\u062b\\u0641\\u0635\\u0642\\u0641\\u0642\\u062b\\u0641\\u0642\\u0641\\u0642\\u062b\\u0641\\u062b\\u0642\\u0641\\u062b\\u0641\\u062b\\u0635\\u0641\\u0635\\u062b\\u0641\\u062b\",\"syndrome\":null,\"updated_at\":\"2019-10-16 09:39:34\",\"created_at\":\"2019-10-16 09:39:34\",\"id\":155},\"text_en\":\"Patient :Hazem Test has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Hazem Test \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 07:39:34', '2019-10-16 07:39:34'),
('767ffb71-97de-4646-9052-c8a2ebd833f1', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":53,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-25 07:59:59', '2019-09-25 07:59:59'),
('76ac0559-50f0-4990-80ae-cbc77ad9c182', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 4, '{\"consultation_id\":1,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0634 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-09-15 09:53:37', '2019-09-15 09:53:28', '2019-09-15 09:53:37'),
('76d6673f-4fed-4e54-a268-60d15552a971', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 30, '{\"consultation_id\":84,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-08 13:35:44', '2019-10-08 13:35:44'),
('77892ea2-f421-491d-90fa-2cafc5f3e546', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":30,\"name\":\"sss@sss.com\",\"email\":\"ss@ss.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 19:32:06\",\"updated_at\":\"2019-10-01 19:32:06\"},\"consultation\":{\"appointment_on\":\"2019-10-02 04:10:22\",\"patient_id\":30,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-02 02:05:25\",\"created_at\":\"2019-10-02 02:05:25\",\"id\":82},\"text_en\":\"Patient :sss@sss.com has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss@sss.com \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-02 00:05:25', '2019-10-02 00:05:25'),
('7850cf43-f5a3-4898-ad23-18908ed9ea8c', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":245,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-11-04 11:34:35', '2019-10-31 10:41:51', '2019-11-04 11:34:35'),
('78dd4136-563a-4a81-bde1-b46e3927d0bd', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":48,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-25 07:58:02', '2019-09-25 07:58:02'),
('7d7c65c8-4524-45fc-a2ab-d912f22caade', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2019-10-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 17:30:05\"},\"consultation\":{\"appointment_on\":\"2019-10-08 23:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-08 18:02:31\",\"created_at\":\"2019-10-08 18:02:31\",\"id\":131},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 16:02:31', '2019-10-08 16:02:31'),
('7df74729-3fce-411d-b0f1-2fea6872925e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-11-13 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":2,\"updated_at\":\"2019-09-15 11:55:21\",\"created_at\":\"2019-09-15 11:55:21\",\"id\":2},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-15 09:55:30', '2019-09-15 09:55:21', '2019-09-15 09:55:30'),
('7e6da1e4-3b74-4ac3-b18d-c10bf911e730', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-24 06:43:46\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":6,\"doctor_id\":\"3\",\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-09-24 11:46:33\",\"created_at\":\"2019-09-24 11:46:33\",\"id\":49},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-24 09:46:33', '2019-09-24 09:46:33'),
('7e966e26-6c7d-4e4a-a4d8-7be3fa33aef0', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-12 21:10:00\",\"patient_id\":41,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-08 15:28:42\",\"created_at\":\"2019-10-08 15:28:42\",\"id\":121},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 13:28:42', '2019-10-08 13:28:42');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('7ee795bd-f0b7-4a3e-b948-7f96a1f4b3cb', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":6,\"doctor_id\":\"1\",\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-09-23 11:56:41\",\"created_at\":\"2019-09-23 11:56:41\",\"id\":33},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-23 09:56:41', '2019-09-23 09:56:41'),
('809a73ce-7df4-42bf-b480-22542015b5e1', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-12 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":4,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-08 10:40:15\",\"created_at\":\"2019-10-08 10:40:15\",\"id\":114},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 08:40:15', '2019-10-08 08:40:15'),
('80ec704e-2010-481a-9e2a-7ba8ef1ab6d4', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":57,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-30 16:58:45', '2019-09-30 16:58:45'),
('8104a861-7128-47e7-970c-c18206624f49', 'App\\Notifications\\DoctorEndedConsultation', 'App\\User', 65, '{\"consultation_id\":244,\"text_en\":\"Doctor saly hisham gggg has ended the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 saly hisham gggg \\u0628\\u0625\\u0646\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d\"}', '2019-10-31 11:26:48', '2019-10-31 08:20:53', '2019-10-31 11:26:48'),
('81138129-832b-4525-9c3b-2607667dbd88', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-23 22:09:01\",\"patient_id\":6,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-23 20:05:49\",\"created_at\":\"2019-09-23 20:05:49\",\"id\":36},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-23 18:05:49', '2019-09-23 18:05:49'),
('81226a44-52ed-4227-8a27-7d647f8fdaaf', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":13,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:46:21', '2019-09-18 10:46:21'),
('8232684a-59bf-404e-9c68-7e62535d9972', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":16,\"name\":\"Mohannadpatient\",\"email\":\"Mohannadpatient@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:44:24\",\"updated_at\":\"2019-09-22 10:44:24\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":16,\"doctor_id\":\"15\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"updated_at\":\"2019-09-22 12:02:08\",\"created_at\":\"2019-09-22 12:02:08\",\"id\":22},\"text_en\":\"Patient :Mohannadpatient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Mohannadpatient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-22 10:02:08', '2019-09-22 10:02:08'),
('8256f157-0238-402c-bee4-2248c6a2c1d1', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":240,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-30 20:59:56', '2019-10-30 20:59:38', '2019-10-30 20:59:56'),
('82b85a1c-e30f-43e0-a4ce-1daad382cc02', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-20 22:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"hi I am\",\"syndrome\":null,\"updated_at\":\"2019-10-20 14:25:09\",\"created_at\":\"2019-10-20 14:25:09\",\"id\":193,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-20 10:47:57\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-20 12:25:10', '2019-10-20 12:25:10'),
('82c86aa3-35ae-4863-93de-b4fdff9ac71d', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 6, '{\"consultation_id\":55,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-09-26 18:03:36', '2019-09-26 18:03:36'),
('82d42362-0d3d-4725-81c5-8863cec49c5a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":30,\"name\":\"sss@sss.com\",\"email\":\"ss@ss.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 19:32:06\",\"updated_at\":\"2019-10-01 19:32:06\"},\"consultation\":{\"appointment_on\":\"2019-10-03 04:10:34\",\"patient_id\":30,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-02 02:52:40\",\"created_at\":\"2019-10-02 02:52:40\",\"id\":86},\"text_en\":\"Patient :sss@sss.com has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss@sss.com \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-02 00:52:40', '2019-10-02 00:52:40'),
('82da3e65-d4ab-4da0-a5d5-732defa06ce7', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":168,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-17 13:42:20', '2019-10-17 13:42:20'),
('831a9424-10b5-4316-b62a-028978cb3070', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 2, '{\"patient\":{\"id\":22,\"name\":\"Rami allaf\",\"email\":\"Rami.allaf@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 14:36:55\",\"updated_at\":\"2019-10-01 14:36:55\"},\"consultation\":{\"appointment_on\":\"2019-10-03 12:10:05\",\"patient_id\":22,\"doctor_id\":2,\"department_id\":2,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-03 10:06:07\",\"created_at\":\"2019-10-03 10:06:07\",\"id\":96},\"text_en\":\"Patient :Rami allaf has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Rami allaf \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-03 08:06:07', '2019-10-03 08:06:07'),
('832ed3ac-3da8-43ea-8334-0eaf6a750045', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\"},\"consultation\":{\"appointment_on\":\"2019-10-17 17:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"hahabB\",\"syndrome\":null,\"updated_at\":\"2019-10-17 15:44:49\",\"created_at\":\"2019-10-17 15:44:49\",\"id\":180},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-17 13:44:50', '2019-10-17 13:44:50'),
('83ef610a-1656-4356-9b83-997ee81e16c4', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 67, '{\"consultation_id\":275,\"text_en\":\"The patient Eslam has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 Eslam \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2019-11-10 11:17:53', '2019-11-10 11:17:53'),
('84f7cf88-1484-4da3-a5c7-ec00391b496d', 'App\\Notifications\\DoctorCancelledConsultation', 'App\\User', 65, '{\"consultation_id\":240,\"text_en\":\"Doctor saly hisham gggg has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 saly hisham gggg \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', '2019-10-30 23:19:12', '2019-10-30 23:15:08', '2019-10-30 23:19:12'),
('852b4866-3ce5-4c45-bb8b-dae8d0dae3a2', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":127,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-10 03:04:32', '2019-10-10 03:04:32'),
('8573dc1b-f917-420a-b838-711eda2610d2', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":16,\"name\":\"Mohannadpatient\",\"email\":\"Mohannadpatient@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:44:24\",\"updated_at\":\"2019-09-22 10:44:24\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":16,\"doctor_id\":\"15\",\"consultation_type\":2,\"updated_at\":\"2019-09-22 12:20:24\",\"created_at\":\"2019-09-22 12:20:24\",\"id\":23},\"text_en\":\"Patient :Mohannadpatient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Mohannadpatient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-22 10:20:24', '2019-09-22 10:20:24'),
('85f56d2b-a046-4c53-ad3e-6cd6223a6fa6', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":242,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-31 08:12:31', '2019-10-31 08:12:31'),
('86134a87-7aa7-4546-a8fc-8018536084a7', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"updated_at\":\"2019-09-22 14:59:22\",\"created_at\":\"2019-09-22 14:59:22\",\"id\":28},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-22 12:59:22', '2019-09-22 12:59:22'),
('8727fcb6-018b-4ffa-8fcc-afb7b56f7dac', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":191,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 11:14:31', '2019-10-20 11:14:31'),
('8748a92e-70e1-4d23-a413-ab1aad5f5dbd', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-10-26 21:29:06\",\"patient_id\":6,\"doctor_id\":1,\"consultation_type\":1,\"address\":\"asdasdasd kjhgkh\",\"syndrome\":null,\"updated_at\":\"2019-09-26 18:31:45\",\"created_at\":\"2019-09-26 18:31:45\",\"id\":68},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 16:31:45', '2019-09-26 16:31:45'),
('879447b3-39ed-46a3-a32a-8754b86df53b', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 68, '{\"consultation_id\":254,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-11-05 11:17:58', '2019-11-05 03:08:40', '2019-11-05 11:17:58'),
('87a5ca2d-dca3-4dd6-8598-1ad31e4d8f66', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 30, '{\"consultation_id\":89,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-27 09:18:12', '2019-10-08 13:39:35', '2019-10-27 09:18:12'),
('886dc60e-06b9-4fc2-a108-c066a06f0167', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 2, '{\"consultation_id\":274,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-11-10 09:13:09', '2019-11-10 09:13:00', '2019-11-10 09:13:09'),
('89066747-1c80-4410-9a99-759bef143037', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":69,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 03:44:24', '2019-09-27 03:44:24'),
('891335dd-1c72-4cca-a6b4-d493ac5baa1a', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 4, '{\"consultation_id\":18,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-09-18 11:14:30', '2019-09-18 10:56:16', '2019-09-18 11:14:30'),
('89363633-2e0b-41fb-83d4-d6a296fc8dfe', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":22,\"name\":\"Rami allaf\",\"email\":\"Rami.allaf@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 14:36:55\",\"updated_at\":\"2019-10-01 14:36:55\"},\"consultation\":{\"appointment_on\":\"2019-10-04 07:20:59\",\"patient_id\":22,\"doctor_id\":18,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-03 11:21:19\",\"created_at\":\"2019-10-03 11:21:19\",\"id\":97},\"text_en\":\"Patient :Rami allaf has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Rami allaf \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-03 09:21:19', '2019-10-03 09:21:19'),
('8a4f8366-452f-44f1-b83b-47417dac0b7d', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":53,\"name\":\"sss\",\"email\":\"ss@ss.ss\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-28 14:55:29\",\"updated_at\":\"2019-10-28 14:55:29\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-29 11:10:00\",\"patient_id\":53,\"doctor_id\":1,\"consultation_type\":1,\"address\":\"test test\",\"syndrome\":null,\"updated_at\":\"2019-10-29 09:27:55\",\"created_at\":\"2019-10-29 09:27:55\",\"id\":201,\"doctor\":{\"id\":1,\"name\":\"doctor\",\"email\":\"doctor@doctor.com\",\"phone_number\":\"0111895245\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/1_1568544023\\/profile_picture\\/1_profilePicture_19837793061568544023.jpg\",\"address\":\"asdasdasdads\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2019-07-02\",\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":\"2019-10-28 15:24:36\",\"lang\":\"ar\"}},\"text_en\":\"Patient :sss has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-29 07:27:55', '2019-10-29 07:27:55'),
('8a6e0b08-cacc-4db6-ab23-99472e23f0c5', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":\"01028289504\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":\"Doctor addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-04 09:31:09\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-04 11:35:12\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":null,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-04 09:35:21\",\"created_at\":\"2019-11-04 09:35:21\",\"id\":253,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"546808\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2003-11-01\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-01 17:10:47\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-04 07:35:21', '2019-11-04 07:35:21'),
('8a71c924-5ce7-4b74-9bb9-c6dd6963df2f', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 64, '{\"consultation_id\":252,\"text_en\":\"The patient \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', '2019-11-04 09:21:26', '2019-10-31 11:05:06', '2019-11-04 09:21:26'),
('8a834cae-c6e5-4701-8cac-4b04b7f1bb13', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-21 16:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"ysiw\",\"syndrome\":null,\"updated_at\":\"2019-10-20 12:46:46\",\"created_at\":\"2019-10-20 12:46:46\",\"id\":190,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-20 10:47:57\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-27 08:36:43', '2019-10-20 10:46:46', '2019-10-27 08:36:43'),
('8b0bf26a-714f-4d1b-9ff2-b32e6fe2c2a2', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 63, '{\"consultation_id\":232,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-30 10:11:36', '2019-10-30 10:11:36'),
('8b29ac56-f1c1-48da-83ca-7450e615df37', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-31 05:10:00\",\"patient_id\":65,\"doctor_id\":64,\"consultation_type\":1,\"address\":\"I can not\",\"syndrome\":null,\"updated_at\":\"2019-10-30 23:16:04\",\"created_at\":\"2019-10-30 23:16:04\",\"id\":242,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-30 22:14:21', '2019-10-30 21:16:05', '2019-10-30 22:14:21'),
('8b60d2bf-740a-41f1-aae6-05377271b3f1', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 72, '{\"consultation_id\":267,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-11-06 14:12:58', '2019-11-06 14:12:58'),
('8c520faf-1d80-48e4-a195-93c9f9a0387f', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 1, '{\"consultation_id\":248,\"text_en\":\"The patient patient has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 patient \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2019-10-31 10:30:02', '2019-10-31 10:30:02'),
('8c5f0db5-ee85-4b9f-b9a8-ff5d2612aedb', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":16,\"name\":\"Mohannadpatient\",\"email\":\"Mohannadpatient@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:44:24\",\"updated_at\":\"2019-09-22 10:44:24\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":16,\"doctor_id\":15,\"consultation_type\":2,\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-09-24 14:39:03\",\"created_at\":\"2019-09-24 14:39:03\",\"id\":52},\"text_en\":\"Patient :Mohannadpatient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Mohannadpatient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-24 12:39:03', '2019-09-24 12:39:03'),
('8d319227-410f-473b-b4ed-31ca6b0e07d4', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":172,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-17 13:48:35', '2019-10-17 13:48:35'),
('8d513f14-efde-4ac2-a474-354eec419d13', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-11 07:13:04\",\"patient_id\":68,\"doctor_id\":67,\"consultation_type\":1,\"address\":\"test\",\"syndrome\":null,\"updated_at\":\"2019-11-06 15:13:39\",\"created_at\":\"2019-11-06 15:13:39\",\"id\":263,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"546808\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2003-11-01\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-01 17:10:47\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-06 13:13:39', '2019-11-06 13:13:39'),
('8d8aa880-9ada-4f34-83bb-b2a2bc0bdf7a', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 42, '{\"consultation_id\":223,\"text_en\":\"The patient \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', '2019-10-30 06:09:42', '2019-10-29 16:24:05', '2019-10-30 06:09:42'),
('8d95b743-2ba1-4029-bf48-17cecff51ac6', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":168,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-17 13:11:43', '2019-10-17 13:11:43'),
('8db635e4-58b6-4776-a138-1d298ba45baa', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":15,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:51:20', '2019-09-18 10:51:20'),
('8db840a9-172e-4fe4-8a54-fbc14a0a224e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":76,\"name\":\"shady Essam\",\"email\":\"shady.essam@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/76_1573140767\\/profile_picture\\/76_profilePicture_18633568701573140767.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1987-11-07\",\"created_at\":\"2019-11-07 15:32:47\",\"updated_at\":\"2019-11-07 15:42:53\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-18 17:11:35\",\"patient_id\":76,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-12 15:16:56\",\"created_at\":\"2019-11-12 15:16:56\",\"id\":277,\"doctor\":{\"id\":1,\"name\":\"doctor\",\"email\":\"doctor@doctor.com\",\"phone_number\":\"0111895245\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/1_1568544023\\/profile_picture\\/1_profilePicture_19837793061568544023.jpg\",\"address\":\"asdasdasdads\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2019-07-02\",\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":\"2019-10-28 15:24:36\",\"lang\":\"ar\"}},\"text_en\":\"Patient :shady Essam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : shady Essam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-12 13:16:57', '2019-11-12 13:16:57'),
('8e148d05-14d0-4980-b729-5dcca15d632c', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 35, '{\"consultation_id\":90,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-08 13:39:46', '2019-10-08 13:39:46'),
('8ef39520-2c45-481c-9f86-5e2c4a8c709a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-31 04:10:00\",\"patient_id\":65,\"doctor_id\":64,\"consultation_type\":1,\"address\":\"yytttt\",\"syndrome\":null,\"updated_at\":\"2019-10-31 02:21:37\",\"created_at\":\"2019-10-31 02:21:37\",\"id\":245,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-31 05:54:17', '2019-10-31 00:21:37', '2019-10-31 05:54:17'),
('8f541b06-447b-4e91-87d2-61497b1a3958', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 1, '{\"consultation_id\":201,\"text_en\":\"The patient sss has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 sss \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2019-10-29 07:28:24', '2019-10-29 07:28:24'),
('9086d608-8f41-4d38-9d3c-8d2d0bf560dc', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1991-07-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 18:44:16\"},\"consultation\":{\"appointment_on\":\"2019-10-09 21:10:00\",\"patient_id\":41,\"doctor_id\":1,\"consultation_type\":1,\"address\":\"shobra\",\"syndrome\":null,\"updated_at\":\"2019-10-09 19:16:06\",\"created_at\":\"2019-10-09 19:16:06\",\"id\":142},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-09 17:16:06', '2019-10-09 17:16:06'),
('91fb961b-bef4-4ef5-99b1-208a87c17081', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":48,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-25 07:59:00', '2019-09-25 07:59:00'),
('9245f923-69dd-4c5e-b71e-5e6625df35bd', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":54,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-25 08:11:12', '2019-09-25 08:11:12'),
('929e3771-11ef-42a5-b5e8-6c7bd3e63e93', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 64, '{\"consultation_id\":285,\"text_en\":\"The patient aaaaaa has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 aaaaaa \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2019-11-25 05:50:17', '2019-11-25 05:50:17'),
('94d5df80-d457-4175-ba23-e14c377f8093', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 56, '{\"patient\":{\"id\":82,\"name\":\"Samy Kandeel\",\"email\":\"engsamy.kandeel@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"google\",\"provider_id\":\"103973851897201253257\",\"image\":\"https:\\/\\/lh6.googleusercontent.com\\/-B6ZuW5GeN0o\\/AAAAAAAAAAI\\/AAAAAAAAAAA\\/AAKWJJOtjS4XqpXtWEsC7Mtt57p7542b2g\\/photo.jpg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2020-04-05 17:30:44\",\"updated_at\":\"2020-04-05 17:30:44\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2020-04-05 21:34:00\",\"patient_id\":82,\"doctor_id\":\"56\",\"consultation_type\":1,\"address\":null,\"syndrome\":null,\"updated_at\":\"2020-04-05 17:34:23\",\"created_at\":\"2020-04-05 17:34:23\",\"id\":289},\"text_en\":\"Patient :Samy Kandeel has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Samy Kandeel \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2020-04-05 15:34:26', '2020-04-05 15:34:26'),
('94dd8391-d35a-4bb3-a826-9c32839eb902', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 22, '{\"consultation_id\":95,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-03 08:31:23', '2019-10-03 08:31:23'),
('953b72c9-2add-44b1-afc2-fdaf0d678601', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-24 06:43:46\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":\"3\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-24 11:46:20\",\"created_at\":\"2019-09-24 11:46:20\",\"id\":48},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-24 09:46:20', '2019-09-24 09:46:20'),
('96f26b74-d856-4207-8795-21dc95c6564b', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":123,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-08 17:34:39', '2019-10-08 17:34:39'),
('97037608-3d56-4d91-878b-33fce6da0104', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-17 04:06:36\",\"patient_id\":17,\"doctor_id\":3,\"consultation_type\":1,\"address\":\"hfgg\",\"syndrome\":\"jgvhjb\",\"updated_at\":\"2019-10-09 13:06:50\",\"created_at\":\"2019-10-09 13:06:50\",\"id\":137},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-09 11:06:50', '2019-10-09 11:06:50'),
('9769eb9b-a81c-468e-8ae7-3fb09943d736', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":47,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-13 23:26:13\",\"updated_at\":\"2019-10-13 23:26:13\"},\"consultation\":{\"appointment_on\":\"2019-10-14 11:10:00\",\"patient_id\":47,\"doctor_id\":33,\"consultation_type\":1,\"address\":\"dares home patient\",\"syndrome\":null,\"updated_at\":\"2019-10-14 09:05:35\",\"created_at\":\"2019-10-14 09:05:35\",\"id\":149},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-14 07:05:35', '2019-10-14 07:05:35'),
('97ae3d26-f03d-406f-8008-d8e247536f4a', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":62,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-26 18:15:05', '2019-09-26 18:15:05'),
('97c0c964-e73d-49a7-9e84-01721bac1d2e', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":119,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-08 13:18:16', '2019-10-08 13:18:16');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('98397012-8b38-4aa0-b815-48e46f48f1b6', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-09-30 20:09:53\",\"patient_id\":6,\"doctor_id\":3,\"department_id\":3,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-30 18:50:55\",\"created_at\":\"2019-09-30 18:50:55\",\"id\":75},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-30 16:50:55', '2019-09-30 16:50:55'),
('986ba9e7-86ea-4d29-bdd3-7aedf8d473b1', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 1, '{\"consultation_id\":287,\"text_en\":\"The patient eslam has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 eslam \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2020-01-27 13:57:05', '2020-01-27 13:57:05'),
('9bd4c768-dd52-4614-8cf6-a865f942b43a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":49,\"name\":\"Hazem Test\",\"email\":\"zoma128@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-15 10:23:09\",\"updated_at\":\"2019-10-15 10:23:09\"},\"consultation\":{\"appointment_on\":\"2019-10-19 11:10:00\",\"patient_id\":49,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-16 09:39:09\",\"created_at\":\"2019-10-16 09:39:09\",\"id\":154},\"text_en\":\"Patient :Hazem Test has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Hazem Test \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 07:39:09', '2019-10-16 07:39:09'),
('9c464cb0-9551-4fb7-bf62-6c60235f89e8', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-13 00:03:27\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-12 22:03:36\",\"created_at\":\"2019-11-12 22:03:36\",\"id\":280,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"01028289502\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-12 18:09:43\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-12 20:03:37', '2019-11-12 20:03:37'),
('9c4843c1-ccc3-44a7-9be3-d849a8115ed5', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":118,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-08 12:56:07', '2019-10-08 12:56:07'),
('9c48d0d0-4694-46cd-a991-636ec056f75d', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":234,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-30 23:01:19', '2019-10-30 10:55:19', '2019-10-30 23:01:19'),
('9cbd6941-f6e5-41a8-aa60-8f0bf02c8f19', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":17,\"doctor_id\":18,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-09-29 10:07:36\",\"created_at\":\"2019-09-29 10:07:36\",\"id\":72},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-29 08:07:36', '2019-09-29 08:07:36'),
('9ceeaa13-1b10-461f-9f1b-23d721ab623f', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 56, '{\"patient\":{\"id\":88,\"name\":\"maha\",\"email\":\"maha@mailinator.com\",\"phone_number\":\"01011088902\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\\\uploads\\\\img\\\\88_1596970202\\\\profile_picture\\\\88_profilePicture_20119217861596970202.jpg\",\"address\":\"fgfgrrrr\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1992-09-26\",\"created_at\":\"2020-08-09 10:50:02\",\"updated_at\":\"2020-08-30 04:21:27\",\"lang\":\"ar\",\"country\":\"Egypt\",\"city\":\"Giza\"},\"consultation\":{\"appointment_on\":\"2020-08-30 07:25:00\",\"patient_id\":88,\"doctor_id\":\"56\",\"consultation_type\":3,\"doctor_response\":null,\"syndrome\":\"ffff\",\"updated_at\":\"2020-08-30 04:25:40\",\"created_at\":\"2020-08-30 04:25:40\",\"id\":294},\"text_en\":\"Patient :maha has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : maha \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2020-08-30 02:25:41', '2020-08-30 02:25:41'),
('9cfaa7c3-baec-4c0d-997f-4f49183e0c78', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-30 14:10:00\",\"patient_id\":65,\"doctor_id\":64,\"consultation_type\":1,\"address\":\"evsjenw was a great time to be happy with the way you\",\"syndrome\":null,\"updated_at\":\"2019-10-30 12:14:05\",\"created_at\":\"2019-10-30 12:14:05\",\"id\":233,\"doctor\":{\"id\":64,\"name\":\"saly hisham\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":3,\"birthdate\":null,\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 10:47:19\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-04 11:40:41', '2019-10-30 10:14:07', '2019-11-04 11:40:41'),
('9d495d73-0b29-444e-9bb2-79b18469b169', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 68, '{\"consultation_id\":260,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-11-05 11:07:44', '2019-11-05 11:05:18', '2019-11-05 11:07:44'),
('9d590fc1-fac0-4c7a-a046-d5b0f4f47938', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\"},\"consultation\":{\"appointment_on\":\"2019-10-21 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-20 10:44:48\",\"created_at\":\"2019-10-20 10:44:48\",\"id\":184},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-20 08:44:48', '2019-10-20 08:44:48'),
('9fd2c3e6-ec8a-4c9e-9a02-b3db892b4ff9', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-06 17:26:33\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-06 15:26:40\",\"created_at\":\"2019-11-06 15:26:40\",\"id\":264,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"546808\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2003-11-01\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-01 17:10:47\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-06 13:26:40', '2019-11-06 13:26:40'),
('a022d831-8ac6-4ce2-a528-82813b306d51', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":172,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-20 08:35:44', '2019-10-20 08:35:44'),
('a0234873-2cf4-410d-83b8-776ba57f15ca', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-19 11:55:17\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":1,\"address\":\"ytgghvhv\",\"syndrome\":\"vgv\",\"updated_at\":\"2019-10-16 10:07:36\",\"created_at\":\"2019-10-16 10:07:36\",\"id\":161},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 08:07:36', '2019-10-16 08:07:36'),
('a04c4f12-843b-4929-8d01-e6a89e80189d', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 16, '{\"consultation_id\":59,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-26 07:28:14', '2019-09-26 07:28:14'),
('a06f192e-449b-4a47-892f-55682b4ed190', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-28 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"\\u0627\\u0627\\u0647\",\"updated_at\":\"2019-09-19 09:01:46\",\"created_at\":\"2019-09-19 09:01:46\",\"id\":19},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-19 07:02:24', '2019-09-19 07:01:47', '2019-09-19 07:02:24'),
('a0a95153-837d-4d9c-802b-8e16d3a5cc51', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 2, '{\"patient\":{\"id\":43,\"name\":\"Bola Fayez\",\"email\":\"bmf_55555@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"10157419592742906\",\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-06 20:06:34\",\"updated_at\":\"2019-10-06 20:06:34\"},\"consultation\":{\"appointment_on\":\"2019-10-14 18:10:00\",\"patient_id\":43,\"doctor_id\":2,\"consultation_type\":1,\"address\":\"uhh\",\"syndrome\":null,\"updated_at\":\"2019-10-14 16:02:33\",\"created_at\":\"2019-10-14 16:02:33\",\"id\":150},\"text_en\":\"Patient :Bola Fayez has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Bola Fayez \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-14 14:02:33', '2019-10-14 14:02:33'),
('a1099746-a0da-462a-8a27-560893337f30', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-05 17:03:27\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"gdhd\",\"updated_at\":\"2019-11-05 16:03:31\",\"created_at\":\"2019-11-05 16:03:31\",\"id\":261,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"546808\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2003-11-01\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-01 17:10:47\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-05 14:03:31', '2019-11-05 14:03:31'),
('a10a5cae-f812-4ba6-98dc-f9538562fe6b', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":215,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-29 15:51:07', '2019-10-29 15:51:07'),
('a1d5f563-ab65-4248-9286-91e42b40b5a8', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-08 21:10:00\",\"patient_id\":41,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-08 15:05:30\",\"created_at\":\"2019-10-08 15:05:30\",\"id\":119},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 13:05:30', '2019-10-08 13:05:30'),
('a20b79c1-7cb1-4116-b6fd-d67fbb3957df', 'App\\Notifications\\DoctorCancelledConsultation', 'App\\User', 72, '{\"consultation_id\":267,\"text_en\":\"Doctor sameer ahmad has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 sameer ahmad \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2019-11-06 15:35:22', '2019-11-06 15:35:22'),
('a260d197-f733-4845-b694-f3f27529a1e7', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-10-31 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"\\u0627\\u0627\\u0647\",\"syndrome\":\"\\u0627\\u0627\\u0647\",\"updated_at\":\"2019-10-17 15:21:31\",\"created_at\":\"2019-10-17 15:21:31\",\"id\":179},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-28 13:22:18', '2019-10-17 13:21:31', '2019-10-28 13:22:18'),
('a28d1d1c-ba05-420a-87c2-0faa2431f18f', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":30,\"name\":\"sss@sss.com\",\"email\":\"ss@ss.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 19:32:06\",\"updated_at\":\"2019-10-01 19:32:06\"},\"consultation\":{\"appointment_on\":\"2019-10-02 02:10:06\",\"patient_id\":30,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-02 00:47:09\",\"created_at\":\"2019-10-02 00:47:09\",\"id\":81},\"text_en\":\"Patient :sss@sss.com has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss@sss.com \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-01 22:47:09', '2019-10-01 22:47:09'),
('a290e4e6-4327-479b-9fba-df3b3401f652', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-29 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"gyj\",\"updated_at\":\"2019-09-18 12:11:13\",\"created_at\":\"2019-09-18 12:11:13\",\"id\":10},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:22:54', '2019-09-18 10:11:13', '2019-09-18 10:22:54'),
('a4b6e072-efc6-4c80-b40c-cd4ee41ecc05', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":11,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:22:22', '2019-09-18 10:22:22'),
('a549c408-7aab-4f39-8af6-4b02c050b35c', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":3,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-09-15 09:57:38', '2019-09-15 09:57:27', '2019-09-15 09:57:38'),
('a5bc3688-5a28-4e9c-9a24-be5246886865', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 58, '{\"patient\":{\"id\":63,\"name\":\"Amira mahrous\",\"email\":\"amira@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-30 10:45:31\",\"updated_at\":\"2019-10-30 10:45:31\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-31 16:51:31\",\"patient_id\":63,\"doctor_id\":58,\"department_id\":2,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-30 11:51:42\",\"created_at\":\"2019-10-30 11:51:42\",\"id\":230,\"doctor\":{\"id\":58,\"name\":\"eslam test\",\"email\":\"ahmad.adel@perfect.com\",\"phone_number\":\"00201022336655\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/58_1572431994\\/profile_picture\\/58_profilePicture_19240697721572431994.png\",\"address\":\"faisal\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":2,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-10-30 10:39:54\",\"updated_at\":\"2019-10-30 11:32:21\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Amira mahrous has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Amira mahrous \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-30 09:51:42', '2019-10-30 09:51:42'),
('a6c1ed64-8946-4643-ba25-0b4173408200', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-07 23:10:31\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"test tests\",\"syndrome\":null,\"updated_at\":\"2019-10-07 21:14:39\",\"created_at\":\"2019-10-07 21:14:39\",\"id\":109},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-07 19:14:39', '2019-10-07 19:14:39'),
('a71226f6-eb05-4384-b28e-4927b551f02a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":6,\"doctor_id\":\"1\",\"department_id\":\"1\",\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-23 13:50:50\",\"created_at\":\"2019-09-23 13:50:50\",\"id\":35},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-23 11:50:50', '2019-09-23 11:50:50'),
('a78a9d03-a099-4abc-9ac2-18a5eae6d8e9', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 69, '{\"consultation_id\":257,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-11-25 05:49:13', '2019-11-25 05:49:13'),
('a79f0493-ea7f-4960-a2f1-28c506e70d30', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-10-26 20:09:03\",\"patient_id\":6,\"doctor_id\":3,\"consultation_type\":1,\"address\":\"October\",\"syndrome\":null,\"updated_at\":\"2019-09-26 18:34:05\",\"created_at\":\"2019-09-26 18:34:05\",\"id\":69},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 16:34:05', '2019-09-26 16:34:05'),
('a7b90571-5c26-41fb-bcbf-a963f52942a6', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":124,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-08 17:34:55', '2019-10-08 17:34:55'),
('a9322eae-218b-48eb-8efc-d2303db82a1b', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":237,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-30 23:01:12', '2019-10-30 12:56:06', '2019-10-30 23:01:12'),
('a93f45e9-d4c8-4a9a-8298-28527356ad60', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":145,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-14 13:50:54', '2019-10-14 13:50:54'),
('a9720ab2-0e8e-4b20-b8c7-2801b706b2c4', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":136,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-10 05:31:37', '2019-10-10 05:31:37'),
('aa44e2f9-e97b-4fe1-bb66-18b3fe164dce', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":109,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-17 13:11:29', '2019-10-17 13:11:29'),
('aa6a562e-a796-4ce2-bb9f-bd0fc6eace71', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-19 10:06:17\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":1,\"address\":\"ytgghvhv\",\"syndrome\":\"vgv\",\"updated_at\":\"2019-10-16 10:06:44\",\"created_at\":\"2019-10-16 10:06:44\",\"id\":157},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 08:06:44', '2019-10-16 08:06:44'),
('aa7d0e31-cbf3-49d7-a3a6-a5ed5c6b28db', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":131,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-08 17:40:15', '2019-10-08 17:40:15'),
('aa99f707-08cf-4a63-ba5a-8357121e8aaa', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 4, '{\"consultation_id\":178,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-20 10:13:09', '2019-10-20 10:13:09'),
('ab472728-79d3-4c22-ab8a-0fcb74c0e156', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-23 11:55:57\",\"created_at\":\"2019-09-23 11:55:57\",\"id\":32},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-23 09:55:57', '2019-09-23 09:55:57'),
('ac1555e9-3857-4a42-a3a7-bc252756f71d', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 63, '{\"consultation_id\":230,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-30 10:02:26', '2019-10-30 10:02:26'),
('ac3fd4c9-1d26-49fb-9503-0c062f112f3a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":6,\"doctor_id\":3,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-26 10:56:38\",\"created_at\":\"2019-09-26 10:56:38\",\"id\":62},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 08:56:38', '2019-09-26 08:56:38'),
('ac511365-aa8b-4189-a60b-a8d6f2c5e95b', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":60,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 03:50:39', '2019-09-27 03:50:39'),
('ac5bf9f0-94f7-4328-b837-91233726c56e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":2,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-25 13:54:35\"},\"consultation\":{\"appointment_on\":\"2019-09-26 15:09:58\",\"patient_id\":6,\"doctor_id\":3,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-25 13:58:01\",\"created_at\":\"2019-09-25 13:58:01\",\"id\":57},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-25 11:58:01', '2019-09-25 11:58:01'),
('acb6ee7b-ec91-4406-afc6-419e700ffa2a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":30,\"name\":\"sss@sss.com\",\"email\":\"ss@ss.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 19:32:06\",\"updated_at\":\"2019-10-01 19:32:06\"},\"consultation\":{\"appointment_on\":\"2019-10-02 02:10:18\",\"patient_id\":30,\"doctor_id\":33,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-02 00:27:21\",\"created_at\":\"2019-10-02 00:27:21\",\"id\":80},\"text_en\":\"Patient :sss@sss.com has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss@sss.com \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-01 22:27:21', '2019-10-01 22:27:21'),
('adb03a78-278e-4854-b0be-01ac3bfae44c', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 64, '{\"consultation_id\":238,\"text_en\":\"The patient \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', '2019-10-31 00:05:06', '2019-10-30 20:24:32', '2019-10-31 00:05:06'),
('adbd3302-ce57-45b8-bc5b-1a2756404e3d', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":3,\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-26 18:30:06\",\"created_at\":\"2019-09-26 18:30:06\",\"id\":65},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 16:30:06', '2019-09-26 16:30:06'),
('adcae3ff-0379-4631-a236-c6490ff6cc97', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":30,\"name\":\"sss@sss.com\",\"email\":\"ss@ss.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 19:32:06\",\"updated_at\":\"2019-10-01 19:32:06\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-27 14:10:00\",\"patient_id\":30,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"lmlkm\",\"syndrome\":null,\"updated_at\":\"2019-10-27 12:39:12\",\"created_at\":\"2019-10-27 12:39:12\",\"id\":200,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-20 10:47:57\",\"lang\":\"ar\"}},\"text_en\":\"Patient :sss@sss.com has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss@sss.com \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-27 10:39:12', '2019-10-27 10:39:12'),
('afc91c46-e4b1-425c-becb-c0f26e24ee6f', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1991-07-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 18:44:16\"},\"consultation\":{\"appointment_on\":\"2019-10-09 19:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":1,\"address\":\"October city\",\"syndrome\":null,\"updated_at\":\"2019-10-09 14:24:25\",\"created_at\":\"2019-10-09 14:24:25\",\"id\":140},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-09 12:24:25', '2019-10-09 12:24:25'),
('b02045bd-3d5a-4926-8cbe-a6a6ebddfb08', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":69,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 02:28:07', '2019-09-27 02:28:07'),
('b0814bd9-d61c-409c-a17d-ebabe009c00c', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-11 13:26:47\",\"patient_id\":68,\"doctor_id\":67,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-11-06 15:27:02\",\"created_at\":\"2019-11-06 15:27:02\",\"id\":265,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"546808\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2003-11-01\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-01 17:10:47\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-06 13:27:02', '2019-11-06 13:27:02'),
('b0a1b0f3-bdea-469e-982a-49162559097e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":16,\"name\":\"Mohannadpatient\",\"email\":\"Mohannadpatient@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:44:24\",\"updated_at\":\"2019-09-22 10:44:24\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":16,\"doctor_id\":15,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-09-26 09:26:31\",\"created_at\":\"2019-09-26 09:26:31\",\"id\":59},\"text_en\":\"Patient :Mohannadpatient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Mohannadpatient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 07:26:31', '2019-09-26 07:26:31'),
('b0cc5587-babf-47a1-a291-b3b7bfad4892', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 76, '{\"consultation_id\":272,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-11-07 13:49:29', '2019-11-07 13:49:29'),
('b15edd8d-c4f3-4ac4-9b37-814c46fcc33e', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":133,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-10 02:59:10', '2019-10-10 02:59:10');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('b16d8d48-871a-4e85-bf7f-c8635ac473c8', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 59, '{\"patient\":{\"id\":88,\"name\":\"maha\",\"email\":\"maha@mailinator.com\",\"phone_number\":\"01011088902\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\\\uploads\\\\img\\\\88_1596970202\\\\profile_picture\\\\88_profilePicture_13461251951596970202.jpg\",\"address\":\"fgfgrrrr\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1992-09-26\",\"created_at\":\"2020-08-09 10:50:02\",\"updated_at\":\"2020-08-10 09:35:34\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2020-09-06 14:02:00\",\"patient_id\":88,\"doctor_id\":\"59\",\"consultation_type\":2,\"syndrome\":\"headache\",\"updated_at\":\"2020-08-23 12:02:35\",\"created_at\":\"2020-08-23 12:02:35\",\"id\":293},\"text_en\":\"Patient :maha has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : maha \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2020-08-23 10:02:35', '2020-08-23 10:02:35'),
('b183230c-96a1-4d4c-aa10-a32c70b9aeb1', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-23 22:09:01\",\"patient_id\":6,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-23 20:14:13\",\"created_at\":\"2019-09-23 20:14:13\",\"id\":39},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-23 18:14:13', '2019-09-23 18:14:13'),
('b1ae5621-6e1a-4d98-b182-de57352b3939', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-18 04:02:33\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":1,\"address\":\"fggh\",\"syndrome\":\"fgh\",\"updated_at\":\"2019-10-06 10:03:05\",\"created_at\":\"2019-10-06 10:03:05\",\"id\":103},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-06 08:03:05', '2019-10-06 08:03:05'),
('b258d6d3-1319-4f1a-80f7-0258025a74a2', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":172,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-17 13:46:37', '2019-10-17 13:46:37'),
('b3863d82-3b77-4ff8-98d3-dd4ba94bc047', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 67, '{\"consultation_id\":271,\"text_en\":\"The patient Eslam has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 Eslam \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2019-11-10 15:47:53', '2019-11-10 15:47:53'),
('b3a333e4-b1ed-42c8-9075-79694c4650d3', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-21 17:09:49\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-10 15:09:54\",\"created_at\":\"2019-11-10 15:09:54\",\"id\":276,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"546808\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2003-11-01\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-01 17:10:47\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-10 13:09:54', '2019-11-10 13:09:54'),
('b3bc1a4e-c1a5-4cf1-87e6-407eeb042eb2', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":30,\"name\":\"sss@sss.com\",\"email\":\"ss@ss.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 19:32:06\",\"updated_at\":\"2019-10-01 19:32:06\"},\"consultation\":{\"appointment_on\":\"2019-10-02 04:10:32\",\"patient_id\":30,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-02 02:12:35\",\"created_at\":\"2019-10-02 02:12:35\",\"id\":85},\"text_en\":\"Patient :sss@sss.com has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss@sss.com \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-02 00:12:35', '2019-10-02 00:12:35'),
('b3bccd7f-e18e-49ee-a2dd-2db06f1d4ac6', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-24 06:43:46\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":6,\"doctor_id\":\"3\",\"department_id\":\"1\",\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-24 11:46:42\",\"created_at\":\"2019-09-24 11:46:42\",\"id\":50},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-24 09:46:42', '2019-09-24 09:46:42'),
('b43ee8c3-da2d-4611-acb2-bd11f4505104', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":22,\"name\":\"Rami allaf\",\"email\":\"Rami.allaf@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 14:36:55\",\"updated_at\":\"2019-10-01 14:36:55\"},\"consultation\":{\"appointment_on\":\"2019-10-11 10:10:19\",\"patient_id\":22,\"doctor_id\":15,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-03 08:58:24\",\"created_at\":\"2019-10-03 08:58:24\",\"id\":92},\"text_en\":\"Patient :Rami allaf has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Rami allaf \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-03 06:58:24', '2019-10-03 06:58:24'),
('b45245da-c248-4bdb-8ba4-807fc40107ee', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":2,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-09-15 09:55:48', '2019-09-15 09:55:35', '2019-09-15 09:55:48'),
('b4fd1af7-c240-419a-9c77-c236aded8c73', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":30,\"name\":\"sss@sss.com\",\"email\":\"ss@ss.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 19:32:06\",\"updated_at\":\"2019-10-01 19:32:06\"},\"consultation\":{\"appointment_on\":\"2019-10-03 05:10:32\",\"patient_id\":30,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-02 03:12:35\",\"created_at\":\"2019-10-02 03:12:35\",\"id\":87},\"text_en\":\"Patient :sss@sss.com has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss@sss.com \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-02 01:12:35', '2019-10-02 01:12:35'),
('b5b99fbd-8291-4172-bb02-a8b516ffb81a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":45,\"name\":\"sallly\",\"email\":\"sa@as.as\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-10 10:22:45\",\"updated_at\":\"2019-10-10 10:22:45\"},\"consultation\":{\"appointment_on\":\"2019-10-10 12:10:00\",\"patient_id\":45,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"tested urgent test visit to the test\",\"syndrome\":null,\"updated_at\":\"2019-10-10 10:24:09\",\"created_at\":\"2019-10-10 10:24:09\",\"id\":147},\"text_en\":\"Patient :sallly has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sallly \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-10 08:24:09', '2019-10-10 08:24:09'),
('b605067f-74a7-443d-bf77-459cb14f90e8', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 76, '{\"consultation_id\":272,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-11-07 13:49:30', '2019-11-07 13:49:30'),
('b6ce75b3-6a11-4678-9f96-33913db084c9', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-19 11:55:17\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":1,\"address\":\"ytgghvhv\",\"syndrome\":\"vgv\",\"updated_at\":\"2019-10-16 10:07:28\",\"created_at\":\"2019-10-16 10:07:28\",\"id\":160},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 08:07:28', '2019-10-16 08:07:28'),
('b71d5b54-fe65-4c57-b5b3-9a630a883ff3', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 68, '{\"consultation_id\":268,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-11-07 12:47:56', '2019-11-06 15:24:56', '2019-11-07 12:47:56'),
('b92bfe65-32a0-453e-8125-5f5e1b80d368', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 58, '{\"patient\":{\"id\":63,\"name\":\"Amira mahrous\",\"email\":\"amira@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-30 10:45:31\",\"updated_at\":\"2019-10-30 10:45:31\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-04 15:40:33\",\"patient_id\":63,\"doctor_id\":58,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-30 11:49:10\",\"created_at\":\"2019-10-30 11:49:10\",\"id\":229,\"doctor\":{\"id\":58,\"name\":\"eslam test\",\"email\":\"ahmad.adel@perfect.com\",\"phone_number\":\"00201022336655\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/58_1572431994\\/profile_picture\\/58_profilePicture_19240697721572431994.png\",\"address\":\"faisal\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":2,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-10-30 10:39:54\",\"updated_at\":\"2019-10-30 11:32:21\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Amira mahrous has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Amira mahrous \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-30 09:49:10', '2019-10-30 09:49:10'),
('b9ca8128-dd02-4891-b73c-9e99a1037254', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 17, '{\"consultation_id\":199,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-24 13:32:43', '2019-10-24 13:32:43'),
('ba1b567b-aea5-4689-9633-af186002c209', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":61,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 03:46:01', '2019-09-27 03:46:01'),
('ba6d5a22-c2a4-48c1-8191-dfcc4c5206da', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":76,\"name\":\"shady Essam\",\"email\":\"shady.essam@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/76_1573140767\\/profile_picture\\/76_profilePicture_18633568701573140767.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1987-11-07\",\"created_at\":\"2019-11-07 15:32:47\",\"updated_at\":\"2019-11-07 15:42:53\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-08 17:11:00\",\"patient_id\":76,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-07 15:44:36\",\"created_at\":\"2019-11-07 15:44:36\",\"id\":272,\"doctor\":{\"id\":1,\"name\":\"doctor\",\"email\":\"doctor@doctor.com\",\"phone_number\":\"0111895245\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/1_1568544023\\/profile_picture\\/1_profilePicture_19837793061568544023.jpg\",\"address\":\"asdasdasdads\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2019-07-02\",\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":\"2019-10-28 15:24:36\",\"lang\":\"ar\"}},\"text_en\":\"Patient :shady Essam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : shady Essam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-07 13:44:36', '2019-11-07 13:44:36'),
('ba878584-96a8-4b9a-a720-9c95e42b2d67', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":224,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-30 05:59:42', '2019-10-29 17:01:44', '2019-10-30 05:59:42'),
('ba9d9cfb-e370-4cad-b88f-5589e032c75a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-30 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"\\u0627\\u0627\\u0647\",\"updated_at\":\"2019-09-18 12:08:26\",\"created_at\":\"2019-09-18 12:08:26\",\"id\":9},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:23:56', '2019-09-18 10:08:26', '2019-09-18 10:23:56'),
('bb4b6dcb-bfe4-4a97-bc5b-a5fe3f7026c8', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":256,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-11-04 22:18:27', '2019-11-04 11:40:11', '2019-11-04 22:18:27'),
('bb65669b-17e9-491b-b1d8-ee22b54bdf33', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 43, '{\"consultation_id\":106,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-08 13:23:52', '2019-10-08 13:23:52'),
('bb76266a-fd8b-4ab7-9274-83a7699dfbae', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-10-16 08:39:26\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-10-17 15:04:02\",\"created_at\":\"2019-10-17 15:04:02\",\"id\":176},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-17 13:04:03', '2019-10-17 13:04:03'),
('bc827d67-acd9-44be-a17f-81daebc593af', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-24 06:43:46\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":\"3\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-24 11:46:17\",\"created_at\":\"2019-09-24 11:46:17\",\"id\":47},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-24 09:46:17', '2019-09-24 09:46:17'),
('bcbff940-00b0-4408-8e11-f60624d7a0af', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 59, '{\"patient\":{\"id\":74,\"name\":\"samer mohana\",\"email\":\"samermohanna@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-11-06 17:30:11\",\"updated_at\":\"2019-11-06 17:30:11\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-06 19:11:00\",\"patient_id\":74,\"doctor_id\":59,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-06 17:30:41\",\"created_at\":\"2019-11-06 17:30:41\",\"id\":269,\"doctor\":{\"id\":59,\"name\":\"sameer ahmad\",\"email\":\"sameer@perfect.com\",\"phone_number\":\"02233665588\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":\"5555\",\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-10-30 10:40:39\",\"updated_at\":\"2019-10-30 10:40:39\",\"lang\":\"ar\"}},\"text_en\":\"Patient :samer mohana has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : samer mohana \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-06 15:30:41', '2019-11-06 15:30:41'),
('bd0dba20-d862-4a63-9bde-1bb0825c3f28', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":30,\"name\":\"sss@sss.com\",\"email\":\"ss@ss.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 19:32:06\",\"updated_at\":\"2019-10-01 19:32:06\"},\"consultation\":{\"appointment_on\":\"2020-10-02 16:07:20\",\"patient_id\":30,\"doctor_id\":33,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-02 02:07:23\",\"created_at\":\"2019-10-02 02:07:23\",\"id\":84},\"text_en\":\"Patient :sss@sss.com has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss@sss.com \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-02 00:07:23', '2019-10-02 00:07:23'),
('bd6cc32c-4aad-4431-bf94-5d53b626064b', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-30 20:10:00\",\"patient_id\":65,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-30 23:11:57\",\"created_at\":\"2019-10-30 23:11:57\",\"id\":241,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-30 22:14:23', '2019-10-30 21:11:57', '2019-10-30 22:14:23'),
('bdede526-af74-4a39-92a7-ba180dbb74b4', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-24 06:43:46\"},\"consultation\":{\"appointment_on\":\"2019-09-25 15:09:23\",\"patient_id\":6,\"doctor_id\":3,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-25 13:48:26\",\"created_at\":\"2019-09-25 13:48:26\",\"id\":56},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-25 11:48:26', '2019-09-25 11:48:26'),
('be941db3-cec4-483a-bce7-7436eb46b6ea', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":173,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 10:15:25', '2019-10-20 10:15:25'),
('bf74c191-d27e-4564-a77e-56457c309080', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":193,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-20 12:25:30', '2019-10-20 12:25:30'),
('c167f2b9-6174-4dbc-b56e-efdf91c9cc51', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-23 12:09:46\",\"patient_id\":6,\"doctor_id\":\"3\",\"department_id\":\"1\",\"consultation_type\":3,\"updated_at\":\"2019-09-23 10:05:50\",\"created_at\":\"2019-09-23 10:05:50\",\"id\":31},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-23 08:19:00', '2019-09-23 08:05:51', '2019-09-23 08:19:00'),
('c2828045-59f7-4135-95d2-83dd99340268', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-30 20:10:00\",\"patient_id\":65,\"doctor_id\":64,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-31 02:21:10\",\"created_at\":\"2019-10-31 02:21:10\",\"id\":244,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-31 05:54:17', '2019-10-31 00:21:11', '2019-10-31 05:54:17'),
('c3272481-4f76-4090-b333-d3e572d2e72d', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":174,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-22 10:17:55', '2019-10-22 10:17:55'),
('c341a80f-464e-431c-85cb-5bcfde672554', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":48,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-24 09:48:11', '2019-09-24 09:48:11'),
('c38aefd2-b594-47ba-b6b8-92e1f1e406e7', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-13 00:15:56\",\"patient_id\":68,\"doctor_id\":67,\"consultation_type\":1,\"address\":\"test\",\"lat\":null,\"lng\":null,\"syndrome\":null,\"updated_at\":\"2019-11-12 22:16:14\",\"created_at\":\"2019-11-12 22:16:14\",\"id\":283,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"01028289502\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-12 18:09:43\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-12 20:16:15', '2019-11-12 20:16:15'),
('c3d613cc-896a-4bf6-8ea6-333cc286c2e3', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-29 20:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 18:22:37\",\"created_at\":\"2019-10-29 18:22:37\",\"id\":223,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-29 15:12:26\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-30 06:09:43', '2019-10-29 16:22:37', '2019-10-30 06:09:43'),
('c3fc5bcf-0c30-49a9-978c-012c32d8c9e9', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 58, '{\"patient\":{\"id\":63,\"name\":\"Amira mahrous\",\"email\":\"amira@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-30 10:45:31\",\"updated_at\":\"2019-10-30 10:45:31\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-04 09:45:33\",\"patient_id\":63,\"doctor_id\":58,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-30 11:48:28\",\"created_at\":\"2019-10-30 11:48:28\",\"id\":228,\"doctor\":{\"id\":58,\"name\":\"eslam test\",\"email\":\"ahmad.adel@perfect.com\",\"phone_number\":\"00201022336655\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/58_1572431994\\/profile_picture\\/58_profilePicture_19240697721572431994.png\",\"address\":\"faisal\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":2,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-10-30 10:39:54\",\"updated_at\":\"2019-10-30 11:32:21\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Amira mahrous has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Amira mahrous \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-30 09:48:29', '2019-10-30 09:48:29'),
('c427e5ab-5339-4e90-afec-c272dd94ff38', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 16, '{\"consultation_id\":24,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-22 11:33:33', '2019-09-22 11:33:33'),
('c430f0b4-6df4-4e8e-9480-e60f2cad5938', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":69,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 02:27:08', '2019-09-27 02:27:08'),
('c467bcd9-8ef7-4614-8164-5aed16d71fc5', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\"},\"consultation\":{\"appointment_on\":\"2019-10-21 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"grdvyt\",\"syndrome\":null,\"updated_at\":\"2019-10-20 10:45:45\",\"created_at\":\"2019-10-20 10:45:45\",\"id\":185},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-20 08:45:45', '2019-10-20 08:45:45'),
('c4ad9f57-b14e-49b1-ac12-ecdc6ceeec2a', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":21,\"name\":\"sally\",\"email\":\"sall@sally.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":2,\"department_id\":null,\"birthdate\":\"2019-09-30\",\"created_at\":\"2019-09-30 20:35:46\",\"updated_at\":\"2019-09-30 20:36:37\"},\"consultation\":{\"appointment_on\":\"2019-10-01 10:58:18\",\"patient_id\":21,\"doctor_id\":3,\"consultation_type\":1,\"address\":\"home address for patient\",\"syndrome\":null,\"updated_at\":\"2019-10-01 05:58:23\",\"created_at\":\"2019-10-01 05:58:23\",\"id\":77},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-01 03:58:23', '2019-10-01 03:58:23'),
('c4ec0889-2ac3-4f7e-a2e7-71edc8d37cc1', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2019-10-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 17:30:05\"},\"consultation\":{\"appointment_on\":\"2019-10-08 23:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-08 18:02:20\",\"created_at\":\"2019-10-08 18:02:20\",\"id\":130},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 16:02:20', '2019-10-08 16:02:20'),
('c65ac550-0f03-41ad-97ef-9d979fb6e131', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 67, '{\"consultation_id\":260,\"text_en\":\"The patient Eslam has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 Eslam \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2019-11-05 12:15:14', '2019-11-05 12:15:14'),
('c65b05aa-236a-44ca-8771-6dc785246957', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-21 09:08:40\",\"patient_id\":17,\"doctor_id\":18,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"hfhh\",\"updated_at\":\"2019-10-16 10:08:55\",\"created_at\":\"2019-10-16 10:08:55\",\"id\":165},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 08:08:55', '2019-10-16 08:08:55'),
('c734f378-f22a-409b-8654-85bb7d0da81e', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":13,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:41:14', '2019-09-18 10:41:14'),
('c752b189-91d1-4c8b-b11e-292e41b23fc2', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 30, '{\"consultation_id\":85,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-27 08:39:38', '2019-10-02 01:10:54', '2019-10-27 08:39:38'),
('c7a9cec3-d27f-482b-8580-83b59b8f4d4f', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 1, '{\"consultation_id\":274,\"text_en\":\"The patient patient has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 patient \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2019-11-10 09:13:29', '2019-11-10 09:13:29'),
('c8462f5e-0101-408f-8059-b8dbe13037c5', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-29 20:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 18:07:45\",\"created_at\":\"2019-10-29 18:07:45\",\"id\":220,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-29 15:12:26\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-30 06:21:04', '2019-10-29 16:07:46', '2019-10-30 06:21:04'),
('c86cb4c0-4ac8-4ff3-93e9-6b8eb0beb659', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":114,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-14 13:52:09', '2019-10-14 13:52:09'),
('c88a22bb-d597-40e4-b2b2-f0d49a80af60', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":250,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-31 11:38:12', '2019-10-31 10:46:11', '2019-10-31 11:38:12'),
('c8a23c4b-3f87-4c48-b09a-b39bc25528f7', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-25 01:59:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"\\u0634\\u0628\\u0631\\u0627\",\"updated_at\":\"2019-09-19 14:35:18\",\"created_at\":\"2019-09-19 14:35:18\",\"id\":21},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-19 12:35:18', '2019-09-19 12:35:18');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('c936bfcc-e48d-4182-87a5-f9d8aeba3137', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-20 10:07:44\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":2,\"syndrome\":\"hggv\",\"updated_at\":\"2019-10-16 10:08:03\",\"created_at\":\"2019-10-16 10:08:03\",\"id\":163},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 08:08:03', '2019-10-16 08:08:03'),
('c94a9940-c522-4095-97c8-c7c8b3a1ee57', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":181,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 10:36:51', '2019-10-20 10:36:51'),
('c950245e-feaa-44be-9c28-5ea044177a41', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 45, '{\"consultation_id\":147,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-21 10:21:58', '2019-10-21 10:21:58'),
('cac8c99b-53b3-4023-96e5-383a9c5d7c4d', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-02 16:00:00\",\"patient_id\":17,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-10-29 12:37:37\",\"created_at\":\"2019-10-29 12:37:37\",\"id\":206,\"doctor\":{\"id\":1,\"name\":\"doctor\",\"email\":\"doctor@doctor.com\",\"phone_number\":\"0111895245\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/1_1568544023\\/profile_picture\\/1_profilePicture_19837793061568544023.jpg\",\"address\":\"asdasdasdads\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2019-07-02\",\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":\"2019-10-28 15:24:36\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-29 10:37:37', '2019-10-29 10:37:37'),
('cb608fd7-7a38-47c8-b472-054991624299', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-13 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-08 10:46:57\",\"created_at\":\"2019-10-08 10:46:57\",\"id\":116},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 08:46:57', '2019-10-08 08:46:57'),
('cc7eb4be-c6a7-47da-92d9-1115c1642a31', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":186,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 10:09:24', '2019-10-20 10:09:24'),
('ccfd226c-0eac-4d9d-a5b7-f1455a053e01', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":49,\"name\":\"Hazem Test\",\"email\":\"zoma128@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-15 10:23:09\",\"updated_at\":\"2019-10-15 10:23:09\"},\"consultation\":{\"appointment_on\":\"2019-12-16 14:10:00\",\"patient_id\":49,\"doctor_id\":1,\"consultation_type\":1,\"address\":\"TEST\",\"syndrome\":null,\"updated_at\":\"2019-10-16 12:41:27\",\"created_at\":\"2019-10-16 12:41:27\",\"id\":167},\"text_en\":\"Patient :Hazem Test has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Hazem Test \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 10:41:27', '2019-10-16 10:41:27'),
('cd0c654e-5c18-4518-a1af-b11f8ed366b9', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 67, '{\"consultation_id\":263,\"text_en\":\"The patient Eslam has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 Eslam \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2019-11-10 10:39:14', '2019-11-10 10:39:14'),
('cdc061a3-7490-4ea6-b5c5-79dc8928361d', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":244,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-31 11:35:21', '2019-10-31 08:10:47', '2019-10-31 11:35:21'),
('ce288755-e6b1-4dfc-bf0f-0d5cb877254f', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2020-09-26 15:09:20\",\"patient_id\":6,\"doctor_id\":1,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-26 13:09:59\",\"created_at\":\"2019-09-26 13:09:59\",\"id\":64},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 11:09:59', '2019-09-26 11:09:59'),
('cf79c2ff-2661-4874-8a5a-ee051199eebe', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-10-26 21:29:06\",\"patient_id\":6,\"doctor_id\":1,\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-26 18:31:36\",\"created_at\":\"2019-09-26 18:31:36\",\"id\":67},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 16:31:36', '2019-09-26 16:31:36'),
('d00be3c4-37d1-4f17-b22b-dcd580770231', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":222,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-30 06:59:15', '2019-10-29 16:11:56', '2019-10-30 06:59:15'),
('d2882e88-a836-408a-941b-06190ff86e0b', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 68, '{\"consultation_id\":276,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-11-10 13:11:00', '2019-11-10 13:11:00'),
('d2d00fae-57eb-4159-aeed-4119a458a595', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 67, '{\"consultation_id\":270,\"text_en\":\"The patient Eslam has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 Eslam \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2019-11-10 10:36:53', '2019-11-10 10:36:53'),
('d2ea4e61-458b-4449-b83e-5cee82cfae11', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":217,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-29 17:33:47', '2019-10-29 15:55:59', '2019-10-29 17:33:47'),
('d33b7e15-19d6-4a7a-a951-e1cb71c5d59a', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 4, '{\"consultation_id\":16,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-09-18 10:53:31', '2019-09-18 10:53:31'),
('d39a781b-9e63-4a71-b452-87e979c89d54', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 57, '{\"patient\":{\"id\":63,\"name\":\"Amira mahrous\",\"email\":\"amira@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-30 10:45:31\",\"updated_at\":\"2019-10-30 10:45:31\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-01 15:26:11\",\"patient_id\":63,\"doctor_id\":57,\"department_id\":2,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-30 10:58:57\",\"created_at\":\"2019-10-30 10:58:57\",\"id\":227,\"doctor\":{\"id\":57,\"name\":\"Ahmad Saed\",\"email\":\"a.saed@perfect.com\",\"phone_number\":\"0112233665588\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":\"fffff\",\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":2,\"birthdate\":null,\"created_at\":\"2019-10-30 10:39:09\",\"updated_at\":\"2019-10-30 10:39:09\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Amira mahrous has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Amira mahrous \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-30 08:58:57', '2019-10-30 08:58:57'),
('d3b4379f-7dd9-4cd1-95d0-b4d9238af3ec', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 42, '{\"consultation_id\":188,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-21 13:53:22', '2019-10-21 13:53:22'),
('d3ef8e15-ee9d-48e6-b9bc-98f3b1b6e577', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":21,\"name\":\"sally\",\"email\":\"sall@sally.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":2,\"department_id\":null,\"birthdate\":\"2019-09-30\",\"created_at\":\"2019-09-30 20:35:46\",\"updated_at\":\"2019-09-30 20:36:37\"},\"consultation\":{\"appointment_on\":\"2019-10-29 00:38:41\",\"patient_id\":21,\"doctor_id\":15,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-30 20:39:04\",\"created_at\":\"2019-09-30 20:39:04\",\"id\":76},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-30 18:39:04', '2019-09-30 18:39:04'),
('d40b22be-4a1c-4a17-84cd-e3889f74ccdf', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-23 01:01:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"\\u0627\\u0627\\u06472\",\"updated_at\":\"2019-09-18 11:41:31\",\"created_at\":\"2019-09-18 11:41:31\",\"id\":6},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:01:33', '2019-09-18 09:41:31', '2019-09-18 10:01:33'),
('d41ccdfe-eb96-4920-8162-209e3bc7c65a', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":111,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-16 08:28:49', '2019-10-16 08:28:49'),
('d46cbf88-3cb9-4e68-9b6e-dd1969645f32', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 42, '{\"consultation_id\":190,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-30 07:06:41', '2019-10-21 14:07:42', '2019-10-30 07:06:41'),
('d51d6725-71e4-41e5-98e6-3bd60de50207', 'App\\Notifications\\DoctorEndedConsultation', 'App\\User', 65, '{\"consultation_id\":251,\"text_en\":\"Doctor saly hisham gggg has ended the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 saly hisham gggg \\u0628\\u0625\\u0646\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d\"}', '2019-10-31 11:33:45', '2019-10-31 10:50:28', '2019-10-31 11:33:45'),
('d59be158-f5c6-431a-9105-d12cac2b423f', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":216,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-29 15:54:00', '2019-10-29 15:54:00'),
('d5ffe1c3-300a-4cd3-9e5c-49ed8f562cd4', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-29 21:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"kjfkcm\",\"syndrome\":null,\"updated_at\":\"2019-10-29 19:02:46\",\"created_at\":\"2019-10-29 19:02:46\",\"id\":225,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-29 15:12:26\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-30 06:09:37', '2019-10-29 17:02:46', '2019-10-30 06:09:37'),
('d6697491-9fb3-4da3-89be-2a2c9c51e154', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":126,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-09 10:29:17', '2019-10-09 10:29:17'),
('d70a1598-4df6-45fc-9f50-058d14d04adf', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-29 19:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"jdkxn\",\"syndrome\":null,\"updated_at\":\"2019-10-29 17:53:37\",\"created_at\":\"2019-10-29 17:53:37\",\"id\":216,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-29 15:12:26\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-29 15:53:37', '2019-10-29 15:53:37'),
('d70f417a-3d41-4d0d-8651-9e6303961efe', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-29 20:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 18:32:41\",\"created_at\":\"2019-10-29 18:32:41\",\"id\":224,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-29 15:12:26\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-30 06:09:39', '2019-10-29 16:32:41', '2019-10-30 06:09:39'),
('d74f8fde-694d-4e7b-b4cb-685ab6f35bec', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":10,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:23:03', '2019-09-18 10:23:03'),
('d75a97b4-8438-4204-88eb-245cae07d952', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1991-07-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 18:44:16\"},\"consultation\":{\"appointment_on\":\"2019-10-09 12:10:00\",\"patient_id\":41,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-09 10:41:55\",\"created_at\":\"2019-10-09 10:41:55\",\"id\":133},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-09 08:41:55', '2019-10-09 08:41:55'),
('d77ee839-eeb1-44b7-84b2-4031ab5c9815', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":16,\"name\":\"Mohannadpatient\",\"email\":\"Mohannadpatient@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:44:24\",\"updated_at\":\"2019-09-22 10:44:24\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":16,\"doctor_id\":\"15\",\"department_id\":\"1\",\"consultation_type\":3,\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-09-24 14:15:29\",\"created_at\":\"2019-09-24 14:15:29\",\"id\":51},\"text_en\":\"Patient :Mohannadpatient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Mohannadpatient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-24 12:15:29', '2019-09-24 12:15:29'),
('d7968481-80bd-49cc-90b5-72608aefc659', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":169,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-30 06:00:08', '2019-10-20 10:39:08', '2019-10-30 06:00:08'),
('d8924510-ff64-46f2-916f-fa94109925ed', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":17,\"doctor_id\":15,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-10-03 13:55:53\",\"created_at\":\"2019-10-03 13:55:53\",\"id\":101},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-03 11:55:53', '2019-10-03 11:55:53'),
('d8a8bf16-041a-44bc-85cc-b95725ca4f21', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-12 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":4,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-08 10:20:41\",\"created_at\":\"2019-10-08 10:20:41\",\"id\":113},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 08:20:41', '2019-10-08 08:20:41'),
('d911be64-725b-4cff-878c-f9c6bc491bfa', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-12 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":4,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-08 10:44:53\",\"created_at\":\"2019-10-08 10:44:53\",\"id\":115},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 08:44:53', '2019-10-08 08:44:53'),
('d94e0f85-4f00-4988-8a34-b778f7283053', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":30,\"name\":\"sss@sss.com\",\"email\":\"ss@ss.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 19:32:06\",\"updated_at\":\"2019-10-01 19:32:06\"},\"consultation\":{\"appointment_on\":\"2019-10-02 04:10:25\",\"patient_id\":30,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-02 02:06:28\",\"created_at\":\"2019-10-02 02:06:28\",\"id\":83},\"text_en\":\"Patient :sss@sss.com has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sss@sss.com \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-02 00:06:28', '2019-10-02 00:06:28'),
('d9b835f3-eb86-4e21-b739-db515169f083', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-21 10:09:06\",\"patient_id\":17,\"doctor_id\":18,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"bf\",\"updated_at\":\"2019-10-16 10:09:18\",\"created_at\":\"2019-10-16 10:09:18\",\"id\":166},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 08:09:18', '2019-10-16 08:09:18'),
('da4418a8-ee2c-47ca-9bc5-3393463b0af6', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":251,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-31 11:54:20', '2019-10-31 10:50:02', '2019-10-31 11:54:20'),
('da6069d0-3616-47ca-be57-c3f14c6ab86c', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":61,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 03:46:15', '2019-09-27 03:46:15'),
('dba40d1b-c5af-4522-b3dd-5558f18a6b43', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 73, '{\"patient\":{\"id\":72,\"name\":\"Eslam Waheed\",\"email\":\"eslamwaheed95@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"1273393239489114\",\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-11-06 13:09:58\",\"updated_at\":\"2019-11-06 13:09:58\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-08 15:10:36\",\"patient_id\":72,\"doctor_id\":73,\"consultation_type\":1,\"address\":\"october\",\"syndrome\":null,\"updated_at\":\"2019-11-06 16:11:09\",\"created_at\":\"2019-11-06 16:11:09\",\"id\":267,\"doctor\":{\"id\":73,\"name\":\"sameer ahmad\",\"email\":\"sameer.ahmad@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":\"october\",\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-11-06 16:01:34\",\"updated_at\":\"2019-11-06 16:01:34\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam Waheed has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Waheed \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-06 14:11:09', '2019-11-06 14:11:09'),
('dbdfe4fd-d6c8-49a0-8ab1-f8e0cce7140e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 67, '{\"patient\":{\"id\":68,\"name\":\"Eslam\",\"email\":\"eslamp@p.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/68_1572704228\\/profile_picture\\/68_profilePicture_18081196781572704228.jpeg\",\"address\":\"eslam addresssssssssssss\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-11-02 14:17:08\",\"updated_at\":\"2019-11-05 13:11:05\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-09 14:32:05\",\"patient_id\":68,\"doctor_id\":67,\"department_id\":1,\"consultation_type\":3,\"syndrome\":\"hghjn\",\"updated_at\":\"2019-11-07 12:32:16\",\"created_at\":\"2019-11-07 12:32:16\",\"id\":271,\"doctor\":{\"id\":67,\"name\":\"eslam\",\"email\":\"eslamd@d.com\",\"phone_number\":\"546808\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/67_1572442211\\/profile_picture\\/67_profilePicture_18856001591572442211.jpg\",\"address\":\"minia\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2003-11-01\",\"created_at\":\"2019-10-30 13:30:11\",\"updated_at\":\"2019-11-01 17:10:47\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-11-07 10:32:16', '2019-11-07 10:32:16'),
('dbf33c01-336c-4aa5-85ca-f247f7ce209b', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 63, '{\"consultation_id\":226,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-11-06 22:52:07', '2019-11-06 22:52:07'),
('dc17a03b-cdf3-4c9d-9af1-2f970eed6c9f', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":69,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-27 02:28:01', '2019-09-27 02:28:01'),
('dc40025f-b41e-447a-9910-ac381d7d1b57', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":16,\"name\":\"Mohannadpatient\",\"email\":\"Mohannadpatient@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:44:24\",\"updated_at\":\"2019-09-22 10:44:24\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":16,\"doctor_id\":\"15\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"updated_at\":\"2019-09-22 14:46:28\",\"created_at\":\"2019-09-22 14:46:28\",\"id\":26},\"text_en\":\"Patient :Mohannadpatient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Mohannadpatient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-22 12:46:28', '2019-09-22 12:46:28'),
('dd1be9f9-d3a5-46b4-bcc6-ba044f449460', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":81,\"name\":\"eslam\",\"email\":\"eslamwaheed@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2020-01-27 15:51:23\",\"updated_at\":\"2020-01-27 15:51:23\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2020-01-27 17:53:53\",\"patient_id\":81,\"doctor_id\":1,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2020-01-27 15:54:03\",\"created_at\":\"2020-01-27 15:54:03\",\"id\":288,\"doctor\":{\"id\":1,\"name\":\"doctor\",\"email\":\"doctor@doctor.com\",\"phone_number\":\"0111895245\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/1_1568544023\\/profile_picture\\/1_profilePicture_19837793061568544023.jpg\",\"address\":\"asdasdasdads\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2019-07-02\",\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":\"2019-10-28 15:24:36\",\"lang\":\"ar\"}},\"text_en\":\"Patient :eslam has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : eslam \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2020-01-27 13:54:04', '2020-01-27 13:54:04'),
('dd2d5fbd-5d0e-42c9-8d93-b5b573d6a255', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 65, '{\"consultation_id\":241,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-30 23:01:10', '2019-10-30 21:12:15', '2019-10-30 23:01:10'),
('dd437c8c-9a1d-41ad-a386-99eb6db8d077', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 2, '{\"patient\":{\"id\":47,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-13 23:26:13\",\"updated_at\":\"2019-10-13 23:26:13\"},\"consultation\":{\"appointment_on\":\"2019-10-14 10:10:00\",\"patient_id\":47,\"doctor_id\":2,\"department_id\":2,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-14 08:47:15\",\"created_at\":\"2019-10-14 08:47:15\",\"id\":148},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-14 06:47:15', '2019-10-14 06:47:15'),
('dd5a29d1-ffa3-40fd-adb4-3ae4f29c43e6', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1991-07-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 18:44:16\"},\"consultation\":{\"appointment_on\":\"2019-10-10 21:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":1,\"address\":\"\\u0645\\u0635\\u0631 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0647\",\"syndrome\":null,\"updated_at\":\"2019-10-10 03:50:56\",\"created_at\":\"2019-10-10 03:50:56\",\"id\":145},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-10 01:50:56', '2019-10-10 01:50:56'),
('ddf258e4-f37d-4ce9-8c03-ec2b5b1e052b', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":9,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:24:05', '2019-09-18 10:24:05'),
('de706667-bd5d-4414-b5f1-b827c50e3bbf', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":7,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 09:58:20', '2019-09-18 09:58:20'),
('dec1c1cd-b7bc-4844-a015-3c155378e1a0', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-27 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"try\",\"updated_at\":\"2019-09-18 12:38:16\",\"created_at\":\"2019-09-18 12:38:16\",\"id\":12},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:38:37', '2019-09-18 10:38:16', '2019-09-18 10:38:37'),
('deed1524-b21c-48b2-9ba5-ef34409e2103', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":117,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-16 13:42:13', '2019-10-16 13:42:13'),
('def2ffe9-06d4-42c0-92af-f9eb7d267a1e', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":22,\"name\":\"Rami allaf\",\"email\":\"Rami.allaf@gmail.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-01 14:36:55\",\"updated_at\":\"2019-10-01 14:36:55\"},\"consultation\":{\"appointment_on\":\"2019-10-03 12:10:33\",\"patient_id\":22,\"doctor_id\":18,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-03 10:05:37\",\"created_at\":\"2019-10-03 10:05:37\",\"id\":95},\"text_en\":\"Patient :Rami allaf has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Rami allaf \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-03 08:05:37', '2019-10-03 08:05:37'),
('df441883-a42f-489b-9f31-013b3f7be946', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 4, '{\"consultation_id\":13,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-18 10:47:33', '2019-09-18 10:47:33'),
('dfb2a6ed-7f47-4b99-8ea5-ded291179bb9', 'App\\Notifications\\PatientCancelledConsultation', 'App\\User', 1, '{\"consultation_id\":272,\"text_en\":\"The patient shady Essam has cancelled the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 shady Essam \\u0628\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \"}', NULL, '2019-11-07 13:51:00', '2019-11-07 13:51:00'),
('e03ab2b4-a994-4450-b95a-f6e635c71502', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-27 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":2,\"updated_at\":\"2019-09-18 12:48:14\",\"created_at\":\"2019-09-18 12:48:14\",\"id\":14},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:48:36', '2019-09-18 10:48:14', '2019-09-18 10:48:36'),
('e0b09efb-2f8c-4df2-978d-a36143ada8f1', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":121,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-08 13:29:21', '2019-10-08 13:29:21');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('e15be8d2-010c-416a-9853-8f579ccb02fa', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 58, '{\"patient\":{\"id\":63,\"name\":\"Amira mahrous\",\"email\":\"amira@perfect.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-30 10:45:31\",\"updated_at\":\"2019-10-30 10:45:31\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-01 16:52:28\",\"patient_id\":63,\"doctor_id\":58,\"consultation_type\":1,\"address\":\"6 October\",\"syndrome\":null,\"updated_at\":\"2019-10-30 11:55:18\",\"created_at\":\"2019-10-30 11:55:18\",\"id\":231,\"doctor\":{\"id\":58,\"name\":\"eslam test\",\"email\":\"ahmad.adel@perfect.com\",\"phone_number\":\"00201022336655\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/58_1572431994\\/profile_picture\\/58_profilePicture_19240697721572431994.png\",\"address\":\"faisal\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":2,\"birthdate\":\"1995-02-16\",\"created_at\":\"2019-10-30 10:39:54\",\"updated_at\":\"2019-10-30 11:32:21\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Amira mahrous has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Amira mahrous \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-30 09:55:18', '2019-10-30 09:55:18'),
('e1c9362b-5f97-4363-807f-5c6bf9f9f7dd', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-23 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":3,\"doctor_response\":null,\"updated_at\":\"2019-09-18 12:11:40\",\"created_at\":\"2019-09-18 12:11:40\",\"id\":11},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:22:04', '2019-09-18 10:11:40', '2019-09-18 10:22:04'),
('e1d75d5d-1b06-4276-8330-a0ba9aa0805e', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 22, '{\"consultation_id\":99,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-03 10:46:03', '2019-10-03 10:46:03'),
('e20d2420-3d8d-41f4-a27a-5bb13400c15b', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-29 19:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-29 17:55:33\",\"created_at\":\"2019-10-29 17:55:33\",\"id\":217,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-29 15:12:26\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-30 06:22:28', '2019-10-29 15:55:33', '2019-10-30 06:22:28'),
('e39cdf05-c5e2-4899-8206-ea186a90e481', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":16,\"name\":\"Mohannadpatient\",\"email\":\"Mohannadpatient@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:44:24\",\"updated_at\":\"2019-09-22 10:44:24\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":16,\"doctor_id\":\"15\",\"department_id\":\"1\",\"consultation_type\":3,\"updated_at\":\"2019-09-22 14:47:01\",\"created_at\":\"2019-09-22 14:47:01\",\"id\":27},\"text_en\":\"Patient :Mohannadpatient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Mohannadpatient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-22 12:47:01', '2019-09-22 12:47:01'),
('e3b7dd75-1c04-4ed3-9e2d-267c72a879d0', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":119,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 08:58:16', '2019-10-20 08:58:16'),
('e3ee7704-d2d1-49ba-94e5-0adb3ca8a2a1', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-25 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"dfg\",\"updated_at\":\"2019-09-18 12:50:26\",\"created_at\":\"2019-09-18 12:50:26\",\"id\":15},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:51:08', '2019-09-18 10:50:27', '2019-09-18 10:51:08'),
('e4d56c1d-421e-4163-9cd9-53d6235de941', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-27 01:00:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":2,\"updated_at\":\"2019-09-18 12:07:47\",\"created_at\":\"2019-09-18 12:07:47\",\"id\":8},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:24:20', '2019-09-18 10:07:48', '2019-09-18 10:24:20'),
('e5071701-b532-40a0-81b0-c5c349aba758', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":116,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-17 13:43:09', '2019-10-17 13:43:09'),
('e549acbe-136d-404f-b5df-99dc3d418123', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-30 02:01:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"\\u0627\\u0627\\u0647\",\"updated_at\":\"2019-09-18 10:56:38\",\"created_at\":\"2019-09-18 10:56:38\",\"id\":4},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:25:41', '2019-09-18 08:56:38', '2019-09-18 10:25:41'),
('e5ae7748-756d-434e-af58-e021ae20b790', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2019-10-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 17:30:05\"},\"consultation\":{\"appointment_on\":\"2019-10-08 19:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":1,\"address\":\"te\\u0641\\u064a \\u0645\\u0635\\u062f \\u0645\\u062b\\u0642\\u0644 \\u0645\\u062b\\u0642\\u0641\\u064a \\u0645\\u0635\\u062f\\u0627\\u0642 \\u0642\\u0644\\u0628\\u061b\\u0645\\u0627 \\u0643\\u0646\\u0633\\u064a\\u0627 \\u0633\\u064a\\u0643\\u0645\\u0644 \\u0643\\u0645\\u0633\\u0628\\u0628\\u0627\\u062a \\u0643\\u0645\\u0639\\u064a\\u0627\\u0631 \\u0643\\u0645\\u0633\\u0644\\u0645\\u0627\\u062a \\u062f\\u0643\\u0645\\u0646\\u0628\\u0644\\u0648\\u062f \\u0645\\u0643\\u0646\\u0648\\u0627 \\u0643\\u0628\\u0646\\u0648\\u062f \\u0643\\u0645\\u0646\\u0648\\u0627 \\u062f\\u0643\\u0645\\u0646\\u0648\\u0644\\u062f\",\"syndrome\":null,\"updated_at\":\"2019-10-08 17:55:36\",\"created_at\":\"2019-10-08 17:55:36\",\"id\":128},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 15:55:36', '2019-10-08 15:55:36'),
('e60a2ac7-39cd-4aab-89d3-8c752a8f54f8', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":140,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-10 04:16:49', '2019-10-10 04:16:49'),
('e6756da3-9378-4f93-a6db-b3055d36039b', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-30 18:10:00\",\"patient_id\":65,\"doctor_id\":64,\"department_id\":3,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-30 13:17:53\",\"created_at\":\"2019-10-30 13:17:53\",\"id\":236,\"doctor\":{\"id\":64,\"name\":\"saly hisham\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":3,\"birthdate\":null,\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 10:47:19\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-31 00:06:23', '2019-10-30 11:17:53', '2019-10-31 00:06:23'),
('e6a25289-1b13-4886-8962-f4d63ac033eb', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2019-10-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 17:30:05\"},\"consultation\":{\"appointment_on\":\"2019-10-12 21:10:00\",\"patient_id\":41,\"doctor_id\":33,\"consultation_type\":1,\"address\":\"el tagmo3 5 Cairo\",\"syndrome\":null,\"updated_at\":\"2019-10-08 17:35:05\",\"created_at\":\"2019-10-08 17:35:05\",\"id\":125},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 15:35:05', '2019-10-08 15:35:05'),
('e84ed932-9ae2-456c-a02f-c7ce3c02f533', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 3, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-24 06:43:46\"},\"consultation\":{\"appointment_on\":\"2019-09-25 15:09:49\",\"patient_id\":6,\"doctor_id\":3,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-25 13:46:51\",\"created_at\":\"2019-09-25 13:46:51\",\"id\":55},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-25 11:46:51', '2019-09-25 11:46:51'),
('ea9f4b14-13ba-4077-b70b-eae72f7eb286', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":35,\"name\":\"sall\",\"email\":\"sas@as.asd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/35_1570006213\\/profile_picture\\/35_profilePicture_1570006213.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2019-10-02\",\"created_at\":\"2019-10-02 08:50:13\",\"updated_at\":\"2019-10-02 08:55:22\"},\"consultation\":{\"appointment_on\":\"2019-10-02 11:10:14\",\"patient_id\":35,\"doctor_id\":15,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-02 09:05:16\",\"created_at\":\"2019-10-02 09:05:16\",\"id\":91},\"text_en\":\"Patient :sall has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sall \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-02 07:05:16', '2019-10-02 07:05:16'),
('eaaa1534-1fd1-4d21-9e59-0b6094ab1d1c', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":107,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-16 12:01:17', '2019-10-16 12:01:17'),
('eb1dc24a-8aa2-4ebc-9a93-f9cc5b64daf3', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 18, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-10-10 05:30:58\",\"patient_id\":17,\"doctor_id\":18,\"consultation_type\":1,\"address\":\"test address\",\"syndrome\":\"hghfhbchh\",\"updated_at\":\"2019-10-09 11:31:25\",\"created_at\":\"2019-10-09 11:31:25\",\"id\":134},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-09 09:31:25', '2019-10-09 09:31:25'),
('ebb31e88-2f28-4859-9d96-3051f66330cf', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":187,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 10:14:05', '2019-10-20 10:14:05'),
('ec8042b4-e452-4c5a-ad20-93febae700fb', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 65, '{\"consultation_id\":236,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-30 13:13:30', '2019-10-30 12:48:39', '2019-10-30 13:13:30'),
('edc33bcc-186b-40f0-836d-601306260b92', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 4, '{\"consultation_id\":5,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0634 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-09-18 10:04:19', '2019-09-18 10:04:19'),
('ee5ef5b8-86ff-446b-ab61-cb147f7a4c59', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":16,\"name\":\"Mohannadpatient\",\"email\":\"Mohannadpatient@s.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:44:24\",\"updated_at\":\"2019-09-22 10:44:24\"},\"consultation\":{\"appointment_on\":\"2019-11-01 01:00:00\",\"patient_id\":16,\"doctor_id\":\"15\",\"department_id\":\"1\",\"consultation_type\":3,\"updated_at\":\"2019-09-22 13:31:59\",\"created_at\":\"2019-09-22 13:31:59\",\"id\":24},\"text_en\":\"Patient :Mohannadpatient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Mohannadpatient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-22 11:31:59', '2019-09-22 11:31:59'),
('eeaeb3ea-6d39-4caf-93c2-4e0a8208da4f', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":192,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 11:17:54', '2019-10-20 11:17:54'),
('ef81ca03-c209-4893-bbfc-fe77eea683ff', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":4,\"name\":\"patient\",\"email\":\"patient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:23\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2019-09-23 01:01:00\",\"patient_id\":4,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"\\u0627\\u0627\\u06472\",\"updated_at\":\"2019-09-18 11:40:28\",\"created_at\":\"2019-09-18 11:40:28\",\"id\":5},\"text_en\":\"Patient :patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-09-18 10:03:44', '2019-09-18 09:40:28', '2019-09-18 10:03:44'),
('efb72a65-0d51-4935-bf07-c23eda158974', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-04 18:11:00\",\"patient_id\":65,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-11-04 13:27:34\",\"created_at\":\"2019-11-04 13:27:34\",\"id\":255,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-04 22:51:55', '2019-11-04 11:27:34', '2019-11-04 22:51:55'),
('efd4a288-6ce7-4945-b06f-b3e54ec4e6f8', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":17,\"name\":\"Eslam Patient\",\"email\":\"eslampatient@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-09-22 10:56:21\",\"updated_at\":\"2019-09-22 10:56:21\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":17,\"doctor_id\":15,\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-10-03 13:55:25\",\"created_at\":\"2019-10-03 13:55:25\",\"id\":100},\"text_en\":\"Patient :Eslam Patient has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Eslam Patient \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-03 11:55:25', '2019-10-03 11:55:25'),
('f177ffc7-f004-419a-8f25-001bbf0a3356', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 33, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1991-07-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 18:44:16\"},\"consultation\":{\"appointment_on\":\"2019-10-09 20:10:00\",\"patient_id\":41,\"doctor_id\":33,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-09 14:11:08\",\"created_at\":\"2019-10-09 14:11:08\",\"id\":139},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-09 12:11:08', '2019-10-09 12:11:08'),
('f232ec2f-004e-4609-90c1-249a4670e76c', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 30, '{\"consultation_id\":81,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-27 09:18:38', '2019-10-01 22:47:40', '2019-10-27 09:18:38'),
('f2742fe9-516b-4d7c-aa17-6c4b0dc1b8ca', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-10-16 08:39:26\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-25 01:00:00\",\"patient_id\":6,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":\"\\u0633\\u062e\\u0648\\u0646\\u064a\\u0629\",\"updated_at\":\"2019-10-20 10:56:40\",\"created_at\":\"2019-10-20 10:56:40\",\"id\":189,\"doctor\":{\"id\":42,\"name\":\"ssd\",\"email\":\"ssd@ssd.ssd\",\"phone_number\":\"\\u0660\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\\u0661\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/42_1570214335\\/profile_picture\\/42_profilePicture_1570214335.jpeg\",\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"2021-10-07\",\"created_at\":\"2019-10-04 18:38:55\",\"updated_at\":\"2019-10-20 10:47:57\",\"lang\":\"ar\"}},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-20 08:56:40', '2019-10-20 08:56:40'),
('f3c5aae7-ea4c-4543-b9d8-d1bf276dc451', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-11-30 08:10:00\",\"patient_id\":65,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-30 22:39:44\",\"created_at\":\"2019-10-30 22:39:44\",\"id\":240,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-30 20:39:44', '2019-10-30 20:39:44'),
('f49005b7-c722-4677-a77d-f05e517b5b30', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":168,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', NULL, '2019-10-17 13:43:48', '2019-10-17 13:43:48'),
('f551fffc-7d4e-4622-a74a-608325d6a79d', 'App\\Notifications\\DoctorEndedConsultation', 'App\\User', 65, '{\"consultation_id\":241,\"text_en\":\"Doctor saly hisham gggg has ended the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 saly hisham gggg \\u0628\\u0625\\u0646\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d\"}', '2019-10-31 07:26:20', '2019-10-31 05:49:44', '2019-10-31 07:26:20'),
('f5bbe6d8-d35e-4ee4-ab23-fd4a71f7d1e4', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 15, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"2019-12-26\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-26 10:26:31\"},\"consultation\":{\"appointment_on\":\"2019-09-26 20:09:28\",\"patient_id\":6,\"doctor_id\":15,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-26 18:44:32\",\"created_at\":\"2019-09-26 18:44:32\",\"id\":71},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-26 16:44:32', '2019-09-26 16:44:32'),
('f6bed399-f865-4a41-a77b-af12b730d468', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 65, '{\"consultation_id\":235,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-30 20:22:59', '2019-10-30 10:59:18', '2019-10-30 20:22:59'),
('f6cc9fac-c191-49b5-a561-7f24955e37a6', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1991-07-08\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-08 18:44:16\"},\"consultation\":{\"appointment_on\":\"2019-10-16 09:10:00\",\"patient_id\":41,\"doctor_id\":1,\"consultation_type\":1,\"address\":\"ergfegergvdvre\",\"syndrome\":null,\"updated_at\":\"2019-10-16 07:42:34\",\"created_at\":\"2019-10-16 07:42:34\",\"id\":152},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-16 05:42:34', '2019-10-16 05:42:34'),
('f71cde5a-5e29-4b27-a5ff-6e93cc4fab12', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":184,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', '2019-10-30 06:00:10', '2019-10-20 10:17:54', '2019-10-30 06:00:10'),
('f730548b-a2f0-4157-aaf8-d02ac6e31371', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 65, '{\"consultation_id\":246,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-31 07:31:07', '2019-10-31 07:27:19', '2019-10-31 07:31:07'),
('f7530a7c-55fb-4762-ac83-53b925260147', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 41, '{\"consultation_id\":220,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-30 06:25:02', '2019-10-29 16:08:04', '2019-10-30 06:25:02'),
('f76145da-a53b-4301-9218-5731cfb4b14c', 'App\\Notifications\\DoctorRejectedConsultation', 'App\\User', 65, '{\"consultation_id\":239,\"text_en\":\"Doctor has rejected the consultation please choose another appointment\",\"text_ar\":\"\\u062a\\u0645 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u062e\\u0631\"}', '2019-10-30 23:19:19', '2019-10-30 23:08:38', '2019-10-30 23:19:19'),
('f8d1d7d3-cc5f-42ea-9d17-42e4947aebe5', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":172,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-17 13:48:55', '2019-10-17 13:48:55'),
('f94c2a15-a62e-4e0d-b733-cb523a9a1870', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/41_1570213456\\/profile_picture\\/41_profilePicture_1570213456.jpeg\",\"address\":\"shobra Egypt\",\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"1964-10-16\",\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-16 12:04:03\"},\"consultation\":{\"appointment_on\":\"2019-10-17 16:10:00\",\"patient_id\":41,\"doctor_id\":42,\"consultation_type\":1,\"address\":\"uytuyj\",\"syndrome\":null,\"updated_at\":\"2019-10-17 14:01:31\",\"created_at\":\"2019-10-17 14:01:31\",\"id\":173},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-17 12:01:32', '2019-10-17 12:01:32'),
('f9701dbe-86bb-4843-948e-46f2faa91ac3', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"Zoka\",\"email\":\"sally@patinet.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/6_1568544024\\/profile_picture\\/6_profilePicture_1568544024.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":3,\"department_id\":null,\"birthdate\":\"1942-09-24\",\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":\"2019-09-24 06:43:46\"},\"consultation\":{\"appointment_on\":\"2019-10-23 22:09:01\",\"patient_id\":6,\"doctor_id\":\"1\",\"consultation_type\":1,\"address\":\"asdasdasd\",\"syndrome\":null,\"updated_at\":\"2019-09-24 10:17:18\",\"created_at\":\"2019-09-24 10:17:18\",\"id\":44},\"text_en\":\"Patient :Zoka has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : Zoka \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-24 08:17:18', '2019-09-24 08:17:18'),
('f97d5a03-da8c-490f-9823-292177b7ce05', 'App\\Notifications\\DoctorEndedConsultation', 'App\\User', 68, '{\"consultation_id\":260,\"text_en\":\"Doctor eslam has ended the consultation.\",\"text_ar\":\"\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0628 eslam \\u0628\\u0625\\u0646\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d\"}', '2019-11-05 11:07:41', '2019-11-05 11:06:27', '2019-11-05 11:07:41'),
('fa1f86b0-85d7-4d7a-bfa9-ee3697f1167c', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-30 19:10:00\",\"patient_id\":65,\"doctor_id\":64,\"consultation_type\":2,\"syndrome\":null,\"updated_at\":\"2019-10-30 13:18:07\",\"created_at\":\"2019-10-30 13:18:07\",\"id\":237,\"doctor\":{\"id\":64,\"name\":\"saly hisham\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":2,\"country_id\":null,\"department_id\":3,\"birthdate\":null,\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 10:47:19\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-11-04 11:45:58', '2019-10-30 11:18:08', '2019-11-04 11:45:58'),
('fe66e227-712e-4506-b117-f726bbd8a86c', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-12 12:10:00\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":4,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-08 10:51:49\",\"created_at\":\"2019-10-08 10:51:49\",\"id\":117},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-08 08:51:49', '2019-10-08 08:51:49'),
('fe6bb65a-bd91-4061-a848-d9fdfbe1a013', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 64, '{\"patient\":{\"id\":65,\"name\":\"\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645\",\"email\":\"sally_uni@yahoo.com\",\"phone_number\":null,\"balance\":0,\"provider\":\"facebook\",\"provider_id\":\"2525883564129464\",\"image\":\"\\/uploads\\/img\\/65_1572433894\\/profile_picture\\/65_profilePicture_1166331001572433894.jpeg\",\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":1,\"department_id\":null,\"birthdate\":\"2007-10-30\",\"created_at\":\"2019-10-30 11:11:34\",\"updated_at\":\"2019-10-30 12:01:42\",\"lang\":\"ar\"},\"consultation\":{\"appointment_on\":\"2019-10-31 20:10:00\",\"patient_id\":65,\"doctor_id\":64,\"department_id\":1,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-31 07:51:28\",\"created_at\":\"2019-10-31 07:51:28\",\"id\":246,\"doctor\":{\"id\":64,\"name\":\"saly hisham gggg\",\"email\":\"saly@perfect.com\",\"phone_number\":\"01213141516\",\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":\"\\/uploads\\/img\\/64_1572432439\\/profile_picture\\/64_profilePicture_11188293931572432439.jpeg\",\"address\":\"misr\",\"status\":0,\"role_id\":2,\"country_id\":1,\"department_id\":1,\"birthdate\":\"1998-10-30\",\"created_at\":\"2019-10-30 10:47:19\",\"updated_at\":\"2019-10-30 14:58:13\",\"lang\":\"ar\"}},\"text_en\":\"Patient :\\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : \\u0633\\u0627\\u0644\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', '2019-10-31 05:54:17', '2019-10-31 05:51:29', '2019-10-31 05:54:17'),
('ff78d2d1-52cd-496e-9be3-86e0b54ee8fc', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 42, '{\"patient\":{\"id\":41,\"name\":\"as\",\"email\":\"ss@ssd.ssd\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":null,\"birthdate\":null,\"created_at\":\"2019-10-04 18:24:16\",\"updated_at\":\"2019-10-04 18:24:16\"},\"consultation\":{\"appointment_on\":\"2019-10-07 14:15:16\",\"patient_id\":41,\"doctor_id\":42,\"department_id\":4,\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-10-07 11:15:19\",\"created_at\":\"2019-10-07 11:15:19\",\"id\":107},\"text_en\":\"Patient :as has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : as \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-10-07 09:15:19', '2019-10-07 09:15:19'),
('ff838ad4-be82-4480-a7c3-67cdb42ce1b3', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 41, '{\"consultation_id\":113,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-10-20 08:35:25', '2019-10-20 08:35:25'),
('ffa9f127-7aed-4c4d-b0a2-b886ba960c07', 'App\\Notifications\\DoctorNewConsultation', 'App\\User', 1, '{\"patient\":{\"id\":6,\"name\":\"sally\",\"email\":\"sally@patient.com\",\"phone_number\":null,\"balance\":0,\"provider\":null,\"provider_id\":null,\"image\":null,\"address\":null,\"status\":0,\"role_id\":3,\"country_id\":null,\"department_id\":1,\"birthdate\":null,\"created_at\":\"2019-09-15 10:40:24\",\"updated_at\":null},\"consultation\":{\"appointment_on\":\"2022-09-23 22:09:31\",\"patient_id\":6,\"doctor_id\":\"1\",\"department_id\":\"1\",\"consultation_type\":3,\"syndrome\":null,\"updated_at\":\"2019-09-23 20:17:34\",\"created_at\":\"2019-09-23 20:17:34\",\"id\":42},\"text_en\":\"Patient :sally has booked a new consultation.\",\"text_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u064a\\u0636 : sally \\u0642\\u0627\\u0645 \\u0628\\u062d\\u062c\\u0632 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\"}', NULL, '2019-09-23 18:17:34', '2019-09-23 18:17:34'),
('ffadd9f0-9027-4f72-9234-75102573f6a9', 'App\\Notifications\\DoctorConfirmedConsultation', 'App\\User', 6, '{\"consultation_id\":62,\"text_en\":\"Your consultation has been accepted by the doctor\",\"text_ar\":\"\\u062a\\u0645 \\u062a\\u0627\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0647 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062f\\u0643\\u062a\\u0648\\u0631\"}', NULL, '2019-09-26 08:56:58', '2019-09-26 08:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `noti_tokens`
--

CREATE TABLE `noti_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noti_tokens`
--

INSERT INTO `noti_tokens` (`id`, `user_id`, `platform`, `token`, `created_at`, `updated_at`) VALUES
(38, 80, 'Android', 'e_Jf7exqdus:APA91bEgIQ6IoWBP8H8XTPCu85_m15q8wxndNzOtlFsI5PlXQFdIsjCrP3qcBjZs7rA-O11Wp7YQAp8iZTOpUDPXpi2P8PbZrqt9pd3nT_SJIHvVMuVD-KdTFaKs16ZRI4vey3FTT9YJ', '2020-01-02 11:53:39', '2020-01-02 11:53:39'),
(37, 79, 'iOS', 'fe0x3bKQc8Y:APA91bEmrKu5csRa-8B_36suFUOP6U9KDEEi4G82tborTkUgQpL-XH5Ba6CBRKI8NQ_TJmf8ALJgVKui3nmC933rJ2VXvpbR0Q059htJ6mt6MUed9vsSYCxjQ8OFsIVGRnb9gdGSIZvC', '2019-11-25 05:46:52', '2019-11-25 05:46:52'),
(36, 78, 'Android', 'chkquMkZe_s:APA91bEJ4AsTuk2T--UamzrMdCPxNRWslHge-d3orFPFL1CkdM0P4gX616aUWDkl3JxeNrw2IfRXFZyp9XLiEd05DfzYlwCIJUMUScrrfim7tmVd5GJ2yy2NDY1jUWoe5t33lamEdy12', '2019-11-21 09:30:55', '2019-11-21 09:30:55'),
(35, 68, 'Android', 'ckXy4md1VyA:APA91bHX5ALZkGGzQo3B19sHuNCU8O_p09eJPreoodf338jxTdwQq30lfDJAGplv0sQoMNvvGy3rv18fbNdQPA3nhBulFbCqylaJFudt1KQ9bynWhxzcx4uxjeL3wYzXvi9tqFDFizwy', '2019-11-12 20:06:26', '2019-11-24 07:28:31'),
(33, 1, 'Android', '1', '2019-11-12 19:37:36', '2019-11-12 19:37:36'),
(34, 67, 'Android', 'ckXy4md1VyA:APA91bHX5ALZkGGzQo3B19sHuNCU8O_p09eJPreoodf338jxTdwQq30lfDJAGplv0sQoMNvvGy3rv18fbNdQPA3nhBulFbCqylaJFudt1KQ9bynWhxzcx4uxjeL3wYzXvi9tqFDFizwy', '2019-11-12 19:59:22', '2019-11-13 09:15:45'),
(32, 1, 'Web', 'ffrVZSQyvbQ:APA91bFhEeTf8-hTckoMuMLGdStA0rnl2MT4mSOr7vzxaeG1h5X0GyoiuJ_-nM6UJPMRLMkTaf-XUqij5Bsd6Qk09VBOCaP1B4xJ7EeuFx-Au7vFElsvbx_c9UQaD2-ElofRgvYR1VG-', '2019-11-09 15:34:08', '2019-11-09 15:34:08'),
(31, 76, 'iOS', 'enwnlGlcopI:APA91bEk4LzRkhupHkKC3DG9PArV5KkVoKYepk3sMsvrMydfuxGAns-l2lae6z4lhM1U3JXedt9za5kGOh61aY6iYSN7Tm2Yj1tlLiM2CR3DUEuQfmbLWTLFgweuhgPZSIPS-sRq84is', '2019-11-07 13:32:48', '2020-01-08 11:05:19'),
(30, 56, 'iOS', 'enwnlGlcopI:APA91bEk4LzRkhupHkKC3DG9PArV5KkVoKYepk3sMsvrMydfuxGAns-l2lae6z4lhM1U3JXedt9za5kGOh61aY6iYSN7Tm2Yj1tlLiM2CR3DUEuQfmbLWTLFgweuhgPZSIPS-sRq84is', '2019-11-06 22:51:16', '2019-11-06 22:51:16'),
(29, 75, 'iOS', 'f6q3psQy2DA:APA91bGjsNY3Y1S96QgQQhryK14cF-tiW753RZEjNpWy83oVxklSGq90UV3Q_LxYazJFUQFVDPji5Xs73iAvWfu81CNMO3EYsctpXx6004doQ5wRSJ_LakOfnsHtIJtSC55o8xeJVcFW', '2019-11-06 15:38:23', '2019-11-06 15:38:23'),
(28, 74, 'iOS', 'f6q3psQy2DA:APA91bGjsNY3Y1S96QgQQhryK14cF-tiW753RZEjNpWy83oVxklSGq90UV3Q_LxYazJFUQFVDPji5Xs73iAvWfu81CNMO3EYsctpXx6004doQ5wRSJ_LakOfnsHtIJtSC55o8xeJVcFW', '2019-11-06 15:30:12', '2019-11-06 15:36:20'),
(27, 73, 'iOS', 'f6q3psQy2DA:APA91bGjsNY3Y1S96QgQQhryK14cF-tiW753RZEjNpWy83oVxklSGq90UV3Q_LxYazJFUQFVDPji5Xs73iAvWfu81CNMO3EYsctpXx6004doQ5wRSJ_LakOfnsHtIJtSC55o8xeJVcFW', '2019-11-06 15:24:23', '2019-11-06 15:34:10'),
(26, 70, 'iOS', 'fgORnKH-bx8:APA91bF1Bgfy0GnYKjvIOK97Vu5Ygj2qS7rJakJUvGqLTWFZrR8DSqfhdnBj1x50M7fHLS5Qx-XeGpXDExzCjNpm5xQ3qwrfHKYBd2LtDf7O1tSHQml2_j9xIRTTcAFt5m10cwZT32l0', '2019-11-04 11:57:29', '2019-11-05 03:57:19'),
(25, 69, 'iOS', 'fgORnKH-bx8:APA91bF1Bgfy0GnYKjvIOK97Vu5Ygj2qS7rJakJUvGqLTWFZrR8DSqfhdnBj1x50M7fHLS5Qx-XeGpXDExzCjNpm5xQ3qwrfHKYBd2LtDf7O1tSHQml2_j9xIRTTcAFt5m10cwZT32l0', '2019-11-04 11:47:46', '2019-11-04 11:51:10'),
(24, 68, 'iOS', 'enwnlGlcopI:APA91bEk4LzRkhupHkKC3DG9PArV5KkVoKYepk3sMsvrMydfuxGAns-l2lae6z4lhM1U3JXedt9za5kGOh61aY6iYSN7Tm2Yj1tlLiM2CR3DUEuQfmbLWTLFgweuhgPZSIPS-sRq84is', '2019-11-04 10:50:42', '2019-11-07 12:47:19'),
(22, 65, 'iOS', 'fgORnKH-bx8:APA91bF1Bgfy0GnYKjvIOK97Vu5Ygj2qS7rJakJUvGqLTWFZrR8DSqfhdnBj1x50M7fHLS5Qx-XeGpXDExzCjNpm5xQ3qwrfHKYBd2LtDf7O1tSHQml2_j9xIRTTcAFt5m10cwZT32l0', '2019-10-30 09:11:34', '2019-11-05 12:34:49'),
(23, 64, 'iOS', 'fsn1ZPGHbog:APA91bEc6XMSoOrZ9C6OgbJxVyFsMv1GCk3Va7WIkvU8GdtlzNHrGEJaDwgBvsjfMj21-tsv4SoLWZ1zUpouc5x3OkLtPUDnK4UEK3VtNeVbapiAYR_6RqFtdjZUudjxDcfU6BrOaGSO', '2019-10-30 09:34:41', '2019-11-25 05:46:12'),
(39, 81, 'Android', 'cNwt8C2KwmA:APA91bF-TwtASIg8T4A454H_iVV9MCVqdk1PgAXZgb94wfQGmQtX9VbG-HOUm66xliNfYByc1c9-xr0kpnQq8li-zYlnpy_OTSRI8QFViBOvKTgr9-Gv9ouKaxcjdGoqJYphIfT-U4y0', '2020-01-27 13:51:28', '2020-01-27 13:58:21'),
(40, 82, 'Web', 'undefined', '2020-04-05 15:30:50', '2020-04-05 15:30:50'),
(41, 83, 'Android', 'cS361E2V69Y:APA91bFIUWInY5JpK7lkGCB-bY89eTr3_CNA2v1qq1NMRL9pwpzv52BUR1GDHc5wDBxqt4Nt3HDcA-3JdQEWb60qtnQ_i6dMtgDgHmdTUTRFKdy61WIysni6F4JU3Z8RIsdNyQMgCq8P', '2020-05-05 19:51:49', '2020-07-09 05:39:50'),
(42, 84, 'Web', 'undefined', '2020-05-15 20:37:38', '2020-05-15 20:37:38'),
(43, 85, 'Web', 'undefined', '2020-06-03 14:38:00', '2020-06-03 14:38:00'),
(78, 93, 'Web', 'undefined', '2020-09-06 04:25:12', '2020-09-06 04:25:12'),
(46, 89, 'Web', 'd4ErSNRkiUo:APA91bHN0trugzQuLUE9z1g0Tqy4yJBoVoaFLamQvJq556urDVyZi2vvu8n8KzWL5d317Q13aquYfAIuFLk5-R5EyDHA2zDdlDV8Hpqvz3NPOrPOk0CLhThopwOEpc3jRJL4l9dLBEM4', '2020-08-09 10:20:46', '2020-08-09 10:20:46'),
(53, 90, 'Web', 'd4ErSNRkiUo:APA91bHN0trugzQuLUE9z1g0Tqy4yJBoVoaFLamQvJq556urDVyZi2vvu8n8KzWL5d317Q13aquYfAIuFLk5-R5EyDHA2zDdlDV8Hpqvz3NPOrPOk0CLhThopwOEpc3jRJL4l9dLBEM4', '2020-08-17 11:40:58', '2020-08-17 11:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0032a5e7e688c9d927914bf324dc67b420aefeb83214962b41e3de262ccc473ee3c961baf864cd82', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-07 17:46:13', '2019-10-07 17:46:13', '2020-10-07 19:46:13'),
('013c17a39feeeebc70b76ee934b3f065387fca475014e1d2e2a60bffeaad0bbd1548691c61392827', 16, 3, 'Mohannadpatient@s.com Access Token', '[]', 0, '2019-09-23 07:02:46', '2019-09-23 07:02:46', '2020-09-23 09:02:46'),
('01abd5de3342da519423cc7e1e192496f100de28f498fb5bd2794feb205dd4143d733e15776da570', 22, 3, 'TutsForWeb', '[]', 0, '2019-10-01 12:36:55', '2019-10-01 12:36:55', '2020-10-01 14:36:55'),
('026a3135b83ef6318728dcf67cab06ccf34db98b80ccd05c07ac43c285155128c066f737672cb547', 50, 3, 'TutsForWeb', '[]', 0, '2019-10-15 10:09:32', '2019-10-15 10:09:32', '2020-10-15 12:09:32'),
('031e76bd648b9a71cc7d246de0661da4c1167bbd4865ca7b2bd04378aa0588584b1d616913d856c1', 19, 3, 'hend@yahoo.com Access Token', '[]', 0, '2019-09-24 20:08:23', '2019-09-24 20:08:23', '2020-09-24 22:08:23'),
('033514e201168efe84ab4d48107dab5e7e2ae2ab737056411e3a41634213830e179df4bfac5fecae', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-04 16:56:27', '2019-10-04 16:56:27', '2020-10-04 18:56:27'),
('03ed4f4b5a879f882ee1ecc37eacf2b50b108793f7dace91865fac2e3a1b74442b0f727654d57e25', 47, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-10-15 09:46:38', '2019-10-15 09:46:38', '2020-10-15 11:46:38'),
('040d89bde1eb6539311ab6460bf059ccb8a95361c435b5505f5094d3093c4e701469c6cf6023e8c4', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-15 12:10:14', '2019-10-15 12:10:14', '2020-10-15 14:10:14'),
('04cf08302d39f524595d63b8512b1ea10e3bd94ef78dbd5686972a83de9275ee12c752361397f0be', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-15 08:09:11', '2019-10-15 08:09:11', '2020-10-15 10:09:11'),
('0503e16e99ed4e2dfc458573f9282f49cd4e120c5ebc2a0e0787a8f5946723983bae07bca13595e7', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:50:56', '2019-10-01 12:50:56', '2020-10-01 14:50:56'),
('0650851e3293c13fb05f6b28dc8731b37cc5f72b4990044c269bc8a833eacda7f27116e0fbfd644d', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-24 12:01:49', '2019-10-24 12:01:49', '2020-10-24 14:01:49'),
('0702b76f23e5f074bfb2074fbca503178085b50dc57a1fc5954b241c26443b8b8590bbab3b7e2d82', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-05 17:05:29', '2019-10-05 17:05:29', '2020-10-05 19:05:29'),
('07540be7a86c8ec2a6c360093cf89f8b52cb34a1015d0b113a359f985e76246693f109fdcc489ed0', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-11-14 08:44:56', '2019-11-14 08:44:56', '2020-11-14 10:44:56'),
('078bbfbd106f4369be874bf1a2600833b6efd974d0b96e5c9e9dfd54bb23d485afd543af62ba7d5c', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-20 11:16:24', '2019-10-20 11:16:24', '2020-10-20 13:16:24'),
('07d44178cb1f0741b800900ee07bc81389592d14ae628bd0ccb06a36aee0fa76936f51c9e14326e1', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-06 07:47:50', '2019-10-06 07:47:50', '2020-10-06 09:47:50'),
('07ddf7b04553c21aad2b53865448aa29bb20ab89ab704e79bd2aed6095572b5c1dc10a015a280a71', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:50:57', '2019-10-01 12:50:57', '2020-10-01 14:50:57'),
('089dc551c1dd0602dc4eece8b14a5635ae98be33c0d706c012932d974b0681219b3528ca63fabb60', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-24 13:20:41', '2019-10-24 13:20:41', '2020-10-24 15:20:41'),
('08bcc432841114e69d95d6fe063c4e72b325e07549fc5172617b89747d208cf56439d27e2082fb1a', 64, 3, 'saly@perfect.com Access Token', '[]', 1, '2019-11-04 22:35:56', '2019-11-04 22:35:56', '2020-11-05 00:35:56'),
('0935d2132f742745295adb81058995aeea61e65e14aa0df54832dd3df820135fd9d5a98eb809741f', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-15 11:10:11', '2019-10-15 11:10:11', '2020-10-15 13:10:11'),
('093c387c2b550e11e174403ff5fcb55565a610a738c6c3b0f1a51844f66076d9e58f52207ab24ee5', 40, 3, 'a@a.com Access Token', '[]', 0, '2019-10-02 16:01:29', '2019-10-02 16:01:29', '2020-10-02 18:01:29'),
('0a8fc3644b3392ee4e175fdc2e3bdde0a3413144d15dcb38bce9d6055af931a83f2de2b445c0d3a3', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 1, '2019-10-27 13:12:38', '2019-10-27 13:12:38', '2020-10-27 15:12:38'),
('0b547876abc18c4e240d3991b76d422c36495d2bb91bd4ec8dd5559c888be7808ff8416fc1a05f6a', 3, 3, 'sally@doctor.com Access Token', '[]', 1, '2019-09-24 07:58:16', '2019-09-24 07:58:16', '2020-09-24 09:58:16'),
('0b89f2a172a6287240af7319adc2c4427e09e0129b69fd78b352539b708f33f610a4788bb2df68a6', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-06 07:55:01', '2019-10-06 07:55:01', '2020-10-06 09:55:01'),
('0c289cf1485c2f2a1a694fff3ab9bbc441486dd698dd025aa6733bf690a9526bc8bc186f5f3393d9', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-07 19:35:07', '2019-10-07 19:35:07', '2020-10-07 21:35:07'),
('0c9705608a73d3a64c8a0264dc5eff4297f868786d341afb9e8b71fa9508f8021665148bd569555c', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-15 06:14:30', '2019-10-15 06:14:30', '2020-10-15 08:14:30'),
('0db505392d0a23afeab0fda6138a28cb03acb6a31bf4e7f64729fdbdfce739918fa4a06494299e3f', 27, 3, 'TutsForWeb', '[]', 0, '2019-10-01 12:59:32', '2019-10-01 12:59:32', '2020-10-01 14:59:32'),
('0dc2a6972f12a2f40f028767080fae8d2e8db758409cb6146169b9c2ddfd8f87359291f174e1674a', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-05 14:02:10', '2019-11-05 14:02:10', '2020-11-05 16:02:10'),
('0e073d1b16eca1f66f205be1551cb6355b5bd15199422fde4b8e96a7c39b8ce721da6c97b4c82620', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-04 10:50:41', '2019-11-04 10:50:41', '2020-11-04 12:50:41'),
('0e1867e81405d16045e83252c785222e108a925f74f494686f4a5c301c87728a0ab61e83af38a81c', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-03 08:36:27', '2019-10-03 08:36:27', '2020-10-03 10:36:27'),
('0e2cf7d9b67d241645a41e8f26bfca32d04266c6d94157eaa9ee96a2e26c44222b81fdd7110f7e77', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-08 13:30:38', '2019-10-08 13:30:38', '2020-10-08 15:30:38'),
('0f584e9b281dbf7dadd2767ca07831de58c7e2dc6428bc8675cadc040cfa77994c48736d50f05546', 67, 3, 'eslamd@d.com Access Token', '[]', 0, '2019-11-08 13:23:11', '2019-11-08 13:23:11', '2020-11-08 15:23:11'),
('102bb21443a6e59d53d40a7dc2f3d903f56c7b00fa2a46a5ffdb2a2a95edae39db5cb544fe3583c4', 3, 1, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 06:48:42', '2019-09-23 06:48:42', '2020-09-23 08:48:42'),
('1082d3b8fbce847241e79758942b8189cb5a3c568ad7b9068239e9816c6ef9a444b7baa293ed775c', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 10:17:44', '2019-09-23 10:17:44', '2020-09-23 12:17:44'),
('136dd68c8d8e936cc977cc47e43be733e6609ed9fe076ed73d5256010bf2359d0ebda98ff69274f7', 31, 3, 'TutsForWeb', '[]', 0, '2019-10-01 22:04:43', '2019-10-01 22:04:43', '2020-10-02 00:04:43'),
('13bd0066717ce136ef3ddfd65c544c5e0d9b63b961783ebc123ca90416a3a596dde3325690edfcdb', 47, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-10-19 11:21:32', '2019-10-19 11:21:32', '2020-10-19 13:21:32'),
('1492606e0c25ee8820a6bce4db6baccde29aea8e3aae695231c95c349583e47041d883135b336d03', 68, 3, 'eslamp@p.com Access Token', '[]', 0, '2019-11-13 09:16:13', '2019-11-13 09:16:13', '2020-11-13 11:16:13'),
('14d4afee6fc828b193714d95e439fa62b20f1bf6798e5cb399949e05dcbfc3f19b467834df42ded5', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-05 17:15:07', '2019-10-05 17:15:07', '2020-10-05 19:15:07'),
('15d6671152eeeda65484cc3ea5110140494ad94329e166c2de8340a8e688b7c2b2ab136c46ea394f', 49, 3, 'zoma128@gmail.com Access Token', '[]', 0, '2019-10-15 08:41:46', '2019-10-15 08:41:46', '2020-10-15 10:41:46'),
('16104ac5174ab3ab3d911918e65c3942fdd5859a0a536b47409883b97b8b76adbb93967e91944f52', 32, 3, 'TutsForWeb', '[]', 0, '2019-10-01 22:10:05', '2019-10-01 22:10:05', '2020-10-02 00:10:05'),
('162dd4d2f99475c0bca6d9f4469995553b4ea82d2eb714a1a70bb2764d3da9013f8ce5a323abe1e6', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-28 21:38:23', '2019-10-28 21:38:23', '2020-10-28 23:38:23'),
('17579630fd96ab04cfb4cee491b00e5ad82ef05bcc7ad6f1f40f5da7293198cfe34e9afeb31fd901', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-06 17:26:50', '2019-10-06 17:26:50', '2020-10-06 19:26:50'),
('1842f1b780c340658921adec85f3f379298c2cead3e22f60595e00547726da5ca6ff6adaad68993c', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 1, '2019-10-10 08:12:04', '2019-10-10 08:12:04', '2020-10-10 10:12:04'),
('18ac7f109e9a7f66af57257f04615e2f980e651f7bb7defabb74081312923423cc4bf12acf8022ac', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:30', '2019-10-01 12:48:30', '2020-10-01 14:48:30'),
('19e8b15e0114e877703351c79a6e32a499914c1ac0944e590ddc3a923a4f9cca3ac5519340bed81d', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-02 10:28:01', '2019-10-02 10:28:01', '2020-10-02 12:28:01'),
('1bb8f115fd92ccdf2c6afc08b74618cf8bc6b085da77fca1cd141ac3b110699571980a5aeb12e72c', 67, 3, 'eslamd@d.com Access Token', '[]', 1, '2019-11-08 19:02:16', '2019-11-08 19:02:16', '2020-11-08 21:02:16'),
('1bc27248df1687c29d8154f8239ff4f9cc3406294356a64b0a37280725b40395be1cc36831b607ad', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-10-31 10:01:10', '2019-10-31 10:01:10', '2020-10-31 12:01:10'),
('1c4e2219156542c2ef807832ff22458be2fe784736d2ec40ed26121022d875afbbf27bacc3c9b708', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:12', '2019-10-01 12:49:12', '2020-10-01 14:49:12'),
('1c86d82719629a4524d83a801ee6b8ce3080128d62eb90b94a89b0df2b59f1f59cf98513e5f9b024', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-02 12:52:27', '2019-10-02 12:52:27', '2020-10-02 14:52:27'),
('1d037019693a0fc56eda28480237240c1607c5db0e3a609d76995fec6ddeba6b3b233795f5abd41a', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-09 10:16:22', '2019-10-09 10:16:22', '2020-10-09 12:16:22'),
('1d4ec82bfc0759cc9efedd65310f7ca8c30e3a9a40132ec6f98148aa2c0da0115ab50157c0654b3d', 4, 1, 'patient@patient.com Access Token', '[]', 0, '2019-09-15 11:17:29', '2019-09-15 11:17:29', '2020-09-15 13:17:29'),
('1d9049ffd49478c05dc2dddc00562d1705939f5313be795577198eaeb76f25d7dedfd61c92e6369f', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 09:54:22', '2019-09-23 09:54:22', '2020-09-23 11:54:22'),
('1e3216e0a8a14ce332e4110d2e151ee4305d04ea610373f03121abe3525ffc2918b47042585a69e1', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:30', '2019-10-01 12:48:30', '2020-10-01 14:48:30'),
('1e62aa811e9af5c7ede569492d45c7efd8401465cfa45b2c1e9eaca7f96013220cb44a60bc673ffc', 67, 3, 'eslamd@d.com Access Token', '[]', 0, '2019-11-18 07:25:07', '2019-11-18 07:25:07', '2020-11-18 09:25:07'),
('1e74b4561c9996f8032dcf00308c2b80fe3e23c9dc2c290c37ab827760ebcdf2617108c9383dd3fd', 75, 3, 'TutsForWeb', '[]', 0, '2019-11-06 15:38:21', '2019-11-06 15:38:21', '2020-11-06 17:38:21'),
('1f102faa372d0823da3469c3b85d866a588382cdad3f9cf15fe025fe3c615a353d8e39fd47a6d260', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-07 09:44:50', '2019-10-07 09:44:50', '2020-10-07 11:44:50'),
('1fa2effd4d68118461d8c686ab13c640dae553a5abbe713d253fe299025d1f5833611ae42e59ec3c', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:30', '2019-10-01 12:48:30', '2020-10-01 14:48:30'),
('20eed25d708e0830d49708be24d55ea7f938baba8631aece8eab42702f56a8a1908f436d44808042', 73, 3, 'sameer.ahmad@perfect.com Access Token', '[]', 1, '2019-11-06 15:24:22', '2019-11-06 15:24:22', '2020-11-06 17:24:22'),
('2182c441c2b70e4211cd12cf84f3cf05797006dfb678a63dd51174eb76503ce4f911bf47770be3f7', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-24 11:59:24', '2019-10-24 11:59:24', '2020-10-24 13:59:24'),
('2198874476e03b9f6fd55ae9a35e5bb5f2228e6cb72c06bc5a6e5dedd5f502eb8a978cd977658a71', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 08:29:55', '2019-09-23 08:29:55', '2020-09-23 10:29:55'),
('22f221eaacb79fa2adab3ae07abd5358d06c4bed7b1e60a26f8b321d7dc4fadf3e26d6e3fea18513', 73, 3, 'sameer.ahmad@perfect.com Access Token', '[]', 1, '2019-11-06 14:28:53', '2019-11-06 14:28:53', '2020-11-06 16:28:53'),
('2320ce73be9893373940553a58386af436eba67a6a78236a9e4199b9671ee472f50a2e4fb942b372', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 12:39:01', '2019-10-01 12:39:01', '2020-10-01 14:39:01'),
('232f0271796c1b93f2e46ae687ec86af04e1f0486fef1891bddcd3ed3a4e5c0c3326638792c75a35', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 22:03:33', '2019-10-01 22:03:33', '2020-10-02 00:03:33'),
('248a92eeac60973193479b208374823f9b249ef464ea5f4217c76b2942d37058afa3a22647411014', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 10:09:51', '2019-09-23 10:09:51', '2020-09-23 12:09:51'),
('254d46c894dca376578e06077b116ee6da46ce824ad8b4b3a725773c7ca0de6e3bfb625f40445148', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-07 10:31:35', '2019-10-07 10:31:35', '2020-10-07 12:31:35'),
('2595eeab842df4c381d514fc2f573182245c121b3b54405a53729f0967dba83a1cb8b5951103bf3e', 67, 3, 'eslamd@d.com Access Token', '[]', 1, '2019-11-05 12:49:08', '2019-11-05 12:49:08', '2020-11-05 14:49:08'),
('25db5f650c7e0125614dc0646e6981e2451537b76a37a52a73a9762d0698bae1baf3a4349a63bff4', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:39', '2019-10-01 12:48:39', '2020-10-01 14:48:39'),
('2616c9992be1c7a0a8a60d6013c79a5d87b761ef20259852686912941b123b8da864a030fafbc744', 53, 3, 'TutsForWeb', '[]', 0, '2019-10-28 12:55:29', '2019-10-28 12:55:29', '2020-10-28 14:55:29'),
('266b5b5b4302e5ef99c5bb5657bf096601f15a8b0186e5eb0938c5a38d73effaee20a314db116c91', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-10-31 05:53:41', '2019-10-31 05:53:41', '2020-10-31 07:53:41'),
('26a016880ec34b49ad93ebe5ffda10a5a31dc2ed0006a7868e168984acd409a6473b7493f9c5715e', 24, 3, 'TutsForWeb', '[]', 0, '2019-10-01 12:45:57', '2019-10-01 12:45:57', '2020-10-01 14:45:57'),
('26b68395db076dd9d4de68fa2f77f33da9464bff9ca9a2bd266be6f7c3a34da2fe8a97ca29329363', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-04 16:40:30', '2019-10-04 16:40:30', '2020-10-04 18:40:30'),
('270e8e115d1403aa21b2e05eaa365669f45d266ca31897ecd8cf0936b35c383dc0e22804e4b85bdf', 47, 3, 'TutsForWeb', '[]', 0, '2019-10-13 21:26:13', '2019-10-13 21:26:13', '2020-10-13 23:26:13'),
('2718812b403ec897632829137ccde732b94e7215e56d74af8a5e3557016c4077e81f7c9fbcd66142', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-10-30 09:46:05', '2019-10-30 09:46:05', '2020-10-30 11:46:05'),
('27d6f5a26bef1070b4bf4669699f72f70a0338ceabceeabba0031747dae1211d44ff8a962ef75c40', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:39', '2019-10-01 12:48:39', '2020-10-01 14:48:39'),
('27fb37fe979812a521fd578a166b3efa3b1926e6b2e92950236f882da118c11b3fe459e4fa76d77e', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:29', '2019-10-01 12:48:29', '2020-10-01 14:48:29'),
('28005cc2da6afd51e4f802c4cd982ac976063b315f082703f1acd955bd3c392b6b036c1b1aaa56ad', 76, 3, 'TutsForWeb', '[]', 1, '2019-11-07 13:32:47', '2019-11-07 13:32:47', '2020-11-07 15:32:47'),
('28af1aade8f1e094d2219ce64affeec1b7bcccd55b30505881c745bbe7c72ecc36ef84767e898669', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 10:37:35', '2019-09-23 10:37:35', '2020-09-23 12:37:35'),
('2a55009bb6d0367f72ea29162792a56661bf20ea35034a3dd0954ed6e060fdb0fedb0d5de6663855', 67, 3, 'eslamd@d.com Access Token', '[]', 1, '2019-11-05 03:08:07', '2019-11-05 03:08:07', '2020-11-05 05:08:07'),
('2a90f493db103d1a49131c89d7411f9b879550844f709e5a2a8d4d36a160a515b01b133a4773035a', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-02 12:52:09', '2019-10-02 12:52:09', '2020-10-02 14:52:09'),
('2b40f6592dc21325126297f4c5c08c87f32ff8a66db226a07fe14d6d019a8bea7ddc2091fb359f2b', 58, 3, 'a.adel@perfect.com Access Token', '[]', 1, '2019-10-30 08:49:40', '2019-10-30 08:49:40', '2020-10-30 10:49:40'),
('2c04ba0cd7a327de5fb74240ed86f78a3a35e4721336c004a7af3724e801bc852f70aa21fbb9a0f6', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:28', '2019-10-01 12:48:28', '2020-10-01 14:48:28'),
('2c57fab756c27fbc20e89334aae1a94aaa6783865df32c2344969d25a3cd9cc04905528f9cbea6f9', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 1, '2019-10-09 14:42:39', '2019-10-09 14:42:39', '2020-10-09 16:42:39'),
('2d5ab7d08ed59e2921d006e686bc7afc896817d591ff9356aeba589e41b877e77783c620fa706f28', 40, 3, 'TutsForWeb', '[]', 0, '2019-10-02 15:42:57', '2019-10-02 15:42:57', '2020-10-02 17:42:57'),
('2e6102463ad0eb6806100ab961d3da3bc8a77c5c938f0b98c79b8d6966c0efb32ab1eb01e7a4c68f', 37, 3, 'TutsForWeb', '[]', 0, '2019-10-02 10:42:01', '2019-10-02 10:42:01', '2020-10-02 12:42:01'),
('2eeffe1c7a6411096358bd36a80e03aede784e8afcdf1d38327a8fb3c6118b709dc16d4b3d5e8b9f', 66, 3, 'TutsForWeb', '[]', 0, '2019-10-30 11:25:09', '2019-10-30 11:25:09', '2020-10-30 13:25:09'),
('2f488c6153a9f5752f9de9ec43483d5f2598fc71e4619ca33b838822d0765660abb06ed8c0ec7ed8', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 15:28:19', '2019-10-01 15:28:19', '2020-10-01 17:28:19'),
('2f941ab12d602711df346a2efe0ed92bab4435facc272613d10298f9e125bfacaebffa6f6a86ced7', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-27 13:11:48', '2019-10-27 13:11:48', '2020-10-27 15:11:48'),
('3077ee00ca0d26b2637e3311290198c5b8180ed52525386e2f22b8a8b3e2c83ec98e01ea633f45f5', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-15 08:35:52', '2019-10-15 08:35:52', '2020-10-15 10:35:52'),
('31af7a21721634aac918c4721bb91491aedb9efbdc9fb4ecbe3411063affaabd07cfee97de93dd6a', 23, 3, 'TutsForWeb', '[]', 0, '2019-10-01 12:40:08', '2019-10-01 12:40:08', '2020-10-01 14:40:08'),
('32072495c9d58d315caaf4e05f8eac5ea598ffef3e7bdf97afa44ee75428ac178e95e17d0ea2d758', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-10-30 11:10:09', '2019-10-30 11:10:09', '2020-10-30 13:10:09'),
('324369a882fcb054c72df09ade96c2223760d02bf3e8372b4f49b88db1ff6875276c07749cfb7e5d', 2, 5, 'patient@patient.com Access Token', '[]', 0, '2020-05-18 11:58:06', '2020-05-18 11:58:06', '2021-05-18 13:58:06'),
('32a3bfbeb1bafbd5cf24e6133d19a55c61620cbf20854916c0f7df8b106e006344f63a2d6fa5e1d8', 67, 3, 'eslamd@d.com Access Token', '[]', 0, '2019-11-05 09:08:01', '2019-11-05 09:08:01', '2020-11-05 11:08:01'),
('330fba0c7f85b4b135e0f1c1922b935e1cb2d78ba6e2438717e9a61de7df3a05dafa2d6567fad599', 42, 3, 'TutsForWeb', '[]', 0, '2019-10-04 16:38:55', '2019-10-04 16:38:55', '2020-10-04 18:38:55'),
('335601f8e29c61bc31da7a2c435f33d55d14c636f421f6e29448a494edaf0d3ff9eb1ff542acd051', 44, 3, 'hend22@yahoo.com Access Token', '[]', 0, '2019-10-07 13:03:48', '2019-10-07 13:03:48', '2020-10-07 15:03:48'),
('338b6beeca3d70815e8f3d87ceff233d331929c97ffd9e4e8dce8e0ba25fd97d916ba23364b63f4e', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-30 08:16:13', '2019-10-30 08:16:13', '2020-10-30 10:16:13'),
('339e797fa1c5e9b0e0e34923b32dad2ef2db52fc0fc0d17ec8f943a5e004cd9c8a7b9c8ea6eea639', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 22:04:17', '2019-10-01 22:04:17', '2020-10-02 00:04:17'),
('33d9fdd4a0f410fe036159b92edf14cbdba7a25fdee49cde243d36fd7e94e03a26c0b1283fe062b4', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-02 13:15:02', '2019-10-02 13:15:02', '2020-10-02 15:15:02'),
('33dfcda63363d6d293702177d1ca22c5f3b189a8f6477e13f06ba433b5dde528cb65dd21d245d8ab', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-07 10:38:14', '2019-10-07 10:38:14', '2020-10-07 12:38:14'),
('345cb99ac2d4f8bf5e5de00349fdfd0f9334fd9eee2c40ca54cb66214f84192f5c97d64d37d4ff02', 45, 3, 'TutsForWeb', '[]', 0, '2019-10-10 08:22:45', '2019-10-10 08:22:45', '2020-10-10 10:22:45'),
('3462cc8683e9e845a405d263dd363297072abf70652ac14417930f66119cb2da420dab59a8d248e9', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-10-30 21:09:36', '2019-10-30 21:09:36', '2020-10-30 23:09:36'),
('34951ed257c552d1c557a8dce1253e6b34a080170046b333ed435c76c0394cb7f1f0058f5ac40f74', 4, 3, 'patient@patient.com Access Token', '[]', 0, '2019-10-17 13:00:54', '2019-10-17 13:00:54', '2020-10-17 15:00:54'),
('34a07bf1014b7a3f607afd5ecf2197fdc2c243c7ed61c1aeb21f5249031734c4ddcd16c538ef2266', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-09 15:46:14', '2019-11-09 15:46:14', '2020-11-09 17:46:14'),
('34e02ee25189dc6933fafeaf0d17ec216d24de382fda7b9f6e536a6bec53c9ae576ea6cc2da4d0b4', 73, 3, 'sameer.ahmad@perfect.com Access Token', '[]', 1, '2019-11-06 15:34:09', '2019-11-06 15:34:09', '2020-11-06 17:34:09'),
('350a1efee7a499e271fc4a8a9aa9cf741ff35099bae96cde1d287b0ab6f39097b79281f40a7f8578', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 15:45:22', '2019-10-01 15:45:22', '2020-10-01 17:45:22'),
('35269b6cd3b2e4634111f780d200df27c858d3d63b326a3652cb77fa7d63ecae2669b67f3e3e590b', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-17 12:00:18', '2019-10-17 12:00:18', '2020-10-17 14:00:18'),
('35d8990b6d4e8181145e5e04a53e4cf6f45332af5acb1926ebc20dad4d789f1b0f56b78aaeb6ce6e', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 22:08:02', '2019-10-01 22:08:02', '2020-10-02 00:08:02'),
('35f27a13d965d1ec502d062a252a1095a51b1ba5698df856e6b1dce57fc885876db2daf3ab0c9cb4', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 1, '2019-10-29 12:06:48', '2019-10-29 12:06:48', '2020-10-29 14:06:48'),
('3731c7c7e8c71d697ba9ace624af310888ac23b0e905ca3711243c721e6c6fcf64e58bf102a9ebc8', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 1, '2019-10-10 09:15:24', '2019-10-10 09:15:24', '2020-10-10 11:15:24'),
('377bfda4dfa5326c8d9ee41092e20bbd7a422a3e86b1eee9500485c4073f20ab2d9e61ac76ac1cf5', 72, 3, 'TutsForWeb', '[]', 1, '2019-11-06 11:09:58', '2019-11-06 11:09:58', '2020-11-06 13:09:58'),
('38743116e6d406a511e451303865a63c772e15d3738fbee6deab579531be9922e23b37bdfdae6904', 68, 3, 'TutsForWeb', '[]', 0, '2019-11-02 12:17:08', '2019-11-02 12:17:08', '2020-11-02 14:17:08'),
('387a89b328241b062a933e05f0222550ef5f47447fb3c615a879702cab1ea7beb3e9ece62fd5a6bb', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-09 13:09:26', '2019-10-09 13:09:26', '2020-10-09 15:09:26'),
('38c1dc385c6a2ff09c7decfb9fa2df914e746118ceaecfb5b02dfa5d7fd2a89fd8c97e2780f84932', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:25', '2019-10-01 12:48:25', '2020-10-01 14:48:25'),
('395a1a5a312c9d7a12b1eb790b0562b3cec827a6556f7244ee636b5dba956ab961c5533f91336b1e', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-03 18:44:16', '2019-11-03 18:44:16', '2020-11-03 20:44:16'),
('3985162e87e948189fcbc00a3f9071733c3bf26201a8c1cb333047f39b2a4a79d981ff612b6d1763', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-15 08:06:45', '2019-10-15 08:06:45', '2020-10-15 10:06:45'),
('3a1bb5a98d7e4445233ff4c4981793f69a382172497a5a2f6b5a0dcdbec6291ec9fd3a794d001452', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:23', '2019-10-01 12:48:23', '2020-10-01 14:48:23'),
('3a796b8b5cdf17a430c46280272612f899896f9934ec0e5c9eeca3a17441bfe0aaa86ace23e78346', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-15 10:38:55', '2019-10-15 10:38:55', '2020-10-15 12:38:55'),
('3ab7ff51700c2dd3b085d377468189e38fe1cd810d47870a344540032934d09cc15562733d1998b8', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-13 02:42:51', '2019-11-13 02:42:51', '2020-11-13 04:42:51'),
('3ac97329f5a26405859e5ad8965618b6db79534f85149238e21ccf1148d407dc57a503dcb038a1f2', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-10-30 09:34:40', '2019-10-30 09:34:40', '2020-10-30 11:34:40'),
('3be064a1905e795c16a390ab5e514cca2fa23b5f7be8771a28aed2a2b75692e153d1b0ada251e5d9', 72, 3, 'eslamwaheed95@gmail.com Access Token', '[]', 1, '2019-11-07 07:49:38', '2019-11-07 07:49:38', '2020-11-07 09:49:38'),
('3d2bb4f609b72953989c4795037f24fbea2d5eb1ea5d458ae4241cef7c0a74fd9e6ce889b30613dd', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:31', '2019-10-01 12:48:31', '2020-10-01 14:48:31'),
('3d6a1e27ec825f1caa6c1319f39c19c4cc550b7e268e8022aaae6ca871f87aef3963ff2822a4ce6e', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-08 13:22:32', '2019-10-08 13:22:32', '2020-10-08 15:22:32'),
('3e2aab8c2fd8314d94c3fc604695fc5661c3f31fca004489cb4bd2a48ff61114f585f4a0cd0df3dc', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:11', '2019-10-01 12:49:11', '2020-10-01 14:49:11'),
('3e570b60fef1a9a2d2f11fc85a313e7f9e5299ebe452c5b03eb57a7358cd302eca0caab6586db330', 43, 3, 'bmf_55555@yahoo.com Access Token', '[]', 0, '2019-10-06 18:07:02', '2019-10-06 18:07:02', '2020-10-06 20:07:02'),
('3e5f6b71f2ae81950bd865b64522ea479b492b3733d2fcac0ac58627b050173793bdd9eb95fd87f2', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:50:58', '2019-10-01 12:50:58', '2020-10-01 14:50:58'),
('3e947e09e31100d906c3a246be5dfdda99cb4872ceb26ff70b9095f6237e0bb6d0278441a36765eb', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:11', '2019-10-01 12:49:11', '2020-10-01 14:49:11'),
('400e3bac8f0f45add4a0085c67612ed2d3b1de20cf2830e3e50847715a31addc8a669ab6da4644ba', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-01 12:58:22', '2019-10-01 12:58:22', '2020-10-01 14:58:22'),
('407d319255774b4e01855c4dbeacc7da37f0d5e3a8edb49ed5c2a1cc50e198805fe69a2e8744b787', 29, 3, 'TutsForWeb', '[]', 0, '2019-10-01 15:33:39', '2019-10-01 15:33:39', '2020-10-01 17:33:39'),
('407d9cf5401fd25c7ddc539fd4e76e06d9090c7e3daa663fc3f81c8bab72a31ac77e1649995a68a0', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-06 11:33:27', '2019-11-06 11:33:27', '2020-11-06 13:33:27'),
('40a0cf02d8a25e135e3c432482240aa5fcc7177907e5a7353bde7dcc8b0d395594785acae61e0863', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 10:10:51', '2019-09-23 10:10:51', '2020-09-23 12:10:51'),
('4164ae940b02777fafc1df6374538ab4fd4c22f15f543f792ab32bef33dd9f6cd4e1a378bb582722', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-11-04 22:55:14', '2019-11-04 22:55:14', '2020-11-05 00:55:14'),
('41ed7514832cd5d071cc69fa7c572f68f455e11fd2b8c5fd8b31f0a9bd2da74bbc100e24c9780edd', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-06 17:03:43', '2019-10-06 17:03:43', '2020-10-06 19:03:43'),
('42542d3c9739a0f5ebc00033f4f2b355566dd399448849f22b677274381074de390186057464805a', 49, 3, 'TutsForWeb', '[]', 0, '2019-10-15 08:23:09', '2019-10-15 08:23:09', '2020-10-15 10:23:09'),
('42a11e07d0044b019cfbab1958d5eb275cbe6f7c349ee0a441bd5456af634f503f599a060bbd9c18', 67, 3, 'eslamd@d.com Access Token', '[]', 1, '2019-11-04 08:28:18', '2019-11-04 08:28:18', '2020-11-04 10:28:18'),
('43a4cbb13e3f0aaf39cb3538b03f71fbf1fc0e3310d3f0bc82c05bf581805b15e87b5150eabeb5fc', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:24', '2019-10-01 12:48:24', '2020-10-01 14:48:24'),
('43dc82b8d08007619ec4862855e25cccd9ec00b9540198fc890e9bca4152f9325aa06475a50dd9e8', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-05 17:13:10', '2019-10-05 17:13:10', '2020-10-05 19:13:10'),
('44596f98f45b218c626c98adf8e860ca1c0962bb8f57355358254b53907102adca018a6708ee5f77', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-04 08:30:56', '2019-11-04 08:30:56', '2020-11-04 10:30:56'),
('4465721157da95d8d239a724548ff223725dde0c22cddb864ded11d8e52961d89dd91b0316fc84c1', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-10-30 20:35:57', '2019-10-30 20:35:57', '2020-10-30 22:35:57'),
('45b5580a4854d7fe6a984d55cb23c70b06096f22cbf53599a943e0bb3d7a336a1fddda10865b7a8e', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-29 13:11:46', '2019-10-29 13:11:46', '2020-10-29 15:11:46'),
('45fa8184468c467a10a61dfaea3029111ca93bde734216771125344489517872fa3d46498cf1b39f', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-03 08:15:35', '2019-10-03 08:15:35', '2020-10-03 10:15:35'),
('467a2d6528d6b57cebacf28b4cd553bafcce8d690966069175f6ef37ad310c48f78b5e0ebff03ce4', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-08 13:32:17', '2019-10-08 13:32:17', '2020-10-08 15:32:17'),
('46c84c33bea2a14a1a7e492ea129641274a609472ca14b3e1d0ab6c6026193be74f50d2645f40227', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:28', '2019-10-01 12:48:28', '2020-10-01 14:48:28'),
('46e4db650058bf7527289664c68c1095d53fb1a953e1bac7ec6e7808f4ae7a6efa7ba3e5bb0717bf', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-29 15:07:11', '2019-10-29 15:07:11', '2020-10-29 17:07:11'),
('47711ed79870a4dc9f6197af35236865439a2f2e8b093134fb44cd90ee1fd16a0ab5d36d2da08b47', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-10 10:57:33', '2019-10-10 10:57:33', '2020-10-10 12:57:33'),
('47ee71ea0d43872004cac38e7072fab1ff310b71c3c24698ff3a30a4c7dc8b3933519969f310e6fc', 41, 3, 'TutsForWeb', '[]', 0, '2019-10-04 16:24:16', '2019-10-04 16:24:16', '2020-10-04 18:24:16'),
('48ab5e558c202ee0ff625ef7cf0e7417b36121e5f6a23d004c369334c1d5efd46f14a6caca7df86d', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-27 20:35:16', '2019-10-27 20:35:16', '2020-10-27 22:35:16'),
('48b9ce7608fc1f0736118c7dbfeb84397ceed81a3691e5b3ef31beaf8e5a3e833c963026fa866b49', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-13 08:24:57', '2019-10-13 08:24:57', '2020-10-13 10:24:57'),
('48e19ee4ca5f776ab97a742eed9c24543a8eedb38275cc61846146c821a82a2217fd4ebe6cf06419', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-05 17:05:01', '2019-10-05 17:05:01', '2020-10-05 19:05:01'),
('48e207e8a9a18f070d22c2e6d56ea2761fe9f3eb1e9220b0673cc2f5a48c0d90c325692fdcfda0c8', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-15 08:49:32', '2019-10-15 08:49:32', '2020-10-15 10:49:32'),
('48f82dbd0b0cb48b127b92639f417e950342a9d3925e51ddfb71588ecd3623d8bb71257e52bc7628', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-05 16:58:51', '2019-10-05 16:58:51', '2020-10-05 18:58:51'),
('49a46f469863aa7dbeacb2799bbbea351f3c056021310bd550ccedea5e9820b5ee08ee4da216793a', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:29', '2019-10-01 12:48:29', '2020-10-01 14:48:29'),
('4a30a0bcb1408714f7ee84920926e920fb5818abb5c09f6df814da01c917996e6e1c00790a366568', 24, 3, 'Optional(\"sallyhisham4@gmail.com\") Access Token', '[]', 0, '2019-10-03 07:03:07', '2019-10-03 07:03:07', '2020-10-03 09:03:07'),
('4b75ff04e709f44185ed778e9a0b2bcb32d2a1a4ea0181ab531307b244b197f678ede49d34208776', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-04 16:50:46', '2019-10-04 16:50:46', '2020-10-04 18:50:46'),
('4c584773d8377ff8f9c2f003d1d78af09e73c9b18ee290dd610c92027fbf701312307c5d9697a984', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:56', '2019-10-01 12:48:56', '2020-10-01 14:48:56'),
('4eb9198f26ca3f979ec48119caa1da9a1a9db693805178cfd745d43f538dab70d1c40ed64ca9088d', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-10-30 10:24:21', '2019-10-30 10:24:21', '2020-10-30 12:24:21'),
('4f04a42b1a33936790eddec3f5cc54c476d029fbbbc998eb5aa054f1778ebda01330eee3f1665b5a', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-05 16:57:44', '2019-10-05 16:57:44', '2020-10-05 18:57:44'),
('4f15380eacf6c92ed92e8fd622d31ed3f1e687421db77a8b4ceaa917df4f834b828a225a15c09b8b', 19, 3, 'hend@yahoo.com Access Token', '[]', 0, '2019-09-24 09:22:00', '2019-09-24 09:22:00', '2020-09-24 11:22:00'),
('4f81dc64c7a6a65f26dee1bb01a0da03ea8526975df66657bd88e9a89547f0a983ae8cb057523d9c', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-06 07:57:31', '2019-10-06 07:57:31', '2020-10-06 09:57:31'),
('5257eec24d88f414812ccd3bebd56d3a9050d79863d42059e0b394f2ed38902cb82c32518f1a8e13', 64, 3, 'saly@perfect.com Access Token', '[]', 1, '2019-10-30 09:45:06', '2019-10-30 09:45:06', '2020-10-30 11:45:06'),
('525a54951ea1b76710370dc330e7804732163c736c9172f80c2d6b13796b39e034ba7984bff7959d', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-23 14:28:01', '2019-10-23 14:28:01', '2020-10-23 16:28:01'),
('540839e006fc3464c8eaad0f9d57f21012b01120af49c4d16c6a7470856acf926e380403c7aee6f0', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:40', '2019-10-01 12:48:40', '2020-10-01 14:48:40'),
('54e56717616751df3b92afb509de806a9bfb113c8131550ab094848df9d700ddcf5b2ab04a08e05e', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-20 09:47:51', '2019-10-20 09:47:51', '2020-10-20 11:47:51'),
('550e500f54761e13f8fbb12c75861b3db20aba5e796f10483ac2fe8d5928755a421d10d21fcb2837', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-13 20:47:59', '2019-10-13 20:47:59', '2020-10-13 22:47:59'),
('55ccada0fe80888106120b5d1469babc01d402372cf3aa38c66bcfa8d2c50977daadf51e6f84d728', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-28 13:47:05', '2019-10-28 13:47:05', '2020-10-28 15:47:05'),
('5668a1fcc76c9e5d2425534e67e1ab0d3a0d47e225ace7c6f0ae3cc754b3899a1c8b9e94735161ed', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 22:08:51', '2019-10-01 22:08:51', '2020-10-02 00:08:51'),
('56838b6909da987044c3be78b13530b23a5e0c6e3865294374084115d6de7c4c385870a22ff11067', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 1, '2019-10-10 08:05:20', '2019-10-10 08:05:20', '2020-10-10 10:05:20'),
('56a1c2627a932219848db9676fa44fb435de16353e7f6b7a04dd2acd150526a996f9127c61851ffa', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-15 10:13:17', '2019-10-15 10:13:17', '2020-10-15 12:13:17'),
('56dc9eeb7a64912aaf945c8d853d29027dabfe834c3626c9baf2344765edc936bae815243ed20452', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-10-30 11:16:40', '2019-10-30 11:16:40', '2020-10-30 13:16:40'),
('56f0d5419a84873a45ccff3e98e5b8328f9ca1e08502db85db40f8676b8cd36bdbd87956203af0e6', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-15 09:27:02', '2019-10-15 09:27:02', '2020-10-15 11:27:02'),
('5713c031fe061fe72b26e05d158ab62277a71ebd10663448600e9c813bfa69935054cb4909291079', 39, 3, 'TutsForWeb', '[]', 0, '2019-10-02 12:59:07', '2019-10-02 12:59:07', '2020-10-02 14:59:07'),
('5777e391d18f619d7505801f3fdb9f7c222a7e0822b99231e2f763780a89bfca8d97001387d51377', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-10-31 10:39:48', '2019-10-31 10:39:48', '2020-10-31 12:39:48'),
('57a08844dab0d6c211fbb7be240e83031e92b627b200c7ae071411644fdf216e2b09acfd676ef9b9', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-04 16:36:25', '2019-10-04 16:36:25', '2020-10-04 18:36:25'),
('57fdf8905e0b6787e606a659fd139f0d4b973614d4c28d9705931ab000f74fdacff820e3acad1ffb', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-11-04 11:37:36', '2019-11-04 11:37:36', '2020-11-04 13:37:36'),
('5802d6d0df13f2fac30798e6ea7b19f22460b54cad58991ad702c520f87b030e9755f5086ca24fc6', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:50:57', '2019-10-01 12:50:57', '2020-10-01 14:50:57'),
('584cd75266874e14febfe147e536e116585255b3f268d19b3c7757c3d8eeaec28b31076a642bf92a', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-03 08:14:31', '2019-10-03 08:14:31', '2020-10-03 10:14:31'),
('5884b42f93c3ca4b5f1a9bf66471206b70510e61842b0d2acbc73bcdbc82edcd4934f62a33a8bc8b', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 12:45:08', '2019-10-01 12:45:08', '2020-10-01 14:45:08'),
('58ada4dc5543b2a0a4122e9b1921bdb8df0827c8954bf58672b81b458cc0afcc715aef6108d73bf1', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-30 06:24:11', '2019-10-30 06:24:11', '2020-10-30 08:24:11'),
('58c630be8ed050bf1c902ef76e8fb87f719661f84713635ad6312dfa78f582bb191f28a157f1c7ce', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 07:08:47', '2019-09-23 07:08:47', '2020-09-23 09:08:47'),
('58e4af2e39e9cdd5aa2d0428c2575641a355ee94da89b4e43cec0f26cffc522c49ae91ba4bd9633e', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-10-31 05:54:57', '2019-10-31 05:54:57', '2020-10-31 07:54:57'),
('59ddb2ff34e786d26dd6ef789b7f6d43abe3a84f556f212a75fad7f870a8ef956be24d04bca01ef3', 5, 1, 'eslam@patient.com Access Token', '[]', 0, '2019-09-22 07:06:26', '2019-09-22 07:06:26', '2020-09-22 09:06:26'),
('5a70f1bcf6e71192938c305b20c0e6a470864a205a507b9acb1fb90fea3bfc499b3d2442831b0ca1', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 18:25:18', '2019-09-23 18:25:18', '2020-09-23 20:25:18'),
('5b9a6f1372bf6d265cb0936d0e8544b176774be77e2cc5fe7b8dd21ff97f93fb54fe1f2552a5d18b', 76, 3, 'shady.essam@perfect.com Access Token', '[]', 0, '2019-11-12 13:42:24', '2019-11-12 13:42:24', '2020-11-12 15:42:24'),
('5bada3bd0ce4032f11dc541998a192e536cdb341ca5a05fb9daebecb0e9a597c531928d4d55d935d', 43, 3, 'bmf_55555@yahoo.com Access Token', '[]', 0, '2019-10-15 06:48:04', '2019-10-15 06:48:04', '2020-10-15 08:48:04'),
('5c97ea89ff6e540c1dc7e504b59191177bb56453959c19719cb12c92fc4842d3a5cf123a96548ea7', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 15:27:13', '2019-10-01 15:27:13', '2020-10-01 17:27:13'),
('5cb3ecc5f8003f908ed7545635756af5e98a867f819a6ead436a38005013ab028183bab3df4cac62', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-29 17:01:31', '2019-10-29 17:01:31', '2020-10-29 19:01:31'),
('5cdaa166704401349e10c0cb75db1c7d56a730c61a38206f19c2614c543469b47d67015de8618cf2', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:47:34', '2019-10-01 12:47:34', '2020-10-01 14:47:34'),
('5d2db3c27d2fa65ba7085819ce203fb77eda6207a74ef72e3a56a52e29bf008cd7cf56c7e9c1d59d', 56, 3, 'rami.allaf@gmail.com Access Token', '[]', 1, '2019-11-06 22:51:16', '2019-11-06 22:51:16', '2020-11-07 00:51:16'),
('5dea0f20ef694622b64972b7c5f0f4a47b1fb48ebfe0d08292ba32ebb162413d00c13891da5915d4', 73, 3, 'sameer.ahmad@perfect.com Access Token', '[]', 1, '2019-11-06 14:07:44', '2019-11-06 14:07:44', '2020-11-06 16:07:44'),
('5dfd960fd8b6c5950a54874e52b8080df0b7037a57e70977d432b462278d94e3be84b0a72f4f266f', 17, 1, 'TutsForWeb', '[]', 0, '2019-09-22 08:56:21', '2019-09-22 08:56:21', '2020-09-22 10:56:21'),
('5ead383b4fd8730f17374fef929cc4fae74c29717281dcb53d3348fea84ac5e35e236023204de110', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-06 13:12:42', '2019-11-06 13:12:42', '2020-11-06 15:12:42'),
('5f09681c53f7b5d8100ffd2bad7456faefe378a9cdc2afe9b6bf4e996695ee4f97a3a7f970e88a9a', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:39', '2019-10-01 12:48:39', '2020-10-01 14:48:39'),
('5f90cad2ba303392a8a4c77e872e7469e2316e48c6c7c931c37742838d7f960c1b7df97f71af18f8', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:50:57', '2019-10-01 12:50:57', '2020-10-01 14:50:57'),
('5fc3857229221b0fe3ef933bba1b6f2898227da592503d455caab42fa274096cc80f09a7caaccc4b', 14, 1, 'TutsForWeb', '[]', 0, '2019-09-19 14:18:56', '2019-09-19 14:18:56', '2020-09-19 16:18:56'),
('5ffe553269d8705f868add2165a15989a3762644fafbac14353c57380e5fca130841bb513da25afa', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-08 10:44:25', '2019-11-08 10:44:25', '2020-11-08 12:44:25'),
('605cf0939d57429e51451a9ef54b5249a9a76188b544889cb126a330214e73bbb04cebb63f478857', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-20 16:29:59', '2019-10-20 16:29:59', '2020-10-20 18:29:59'),
('60674a2711b855d98374d73d662d5c744bab848cf3ed2e84ca91698be32b3d8409b97cecd85fd94c', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 1, '2019-11-05 04:02:39', '2019-11-05 04:02:39', '2020-11-05 06:02:39'),
('61654f6fc82d3d644c7395bc0217c99235c5c605f50426642528cc9b84e316c8643eb409e969ae8b', 3, 1, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 06:52:57', '2019-09-23 06:52:57', '2020-09-23 08:52:57'),
('61b5a457d50c3a574b9073cffb7b1594c8675d1d4295a8967bf42e03d972c335ecc8ccc94f2590d1', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:50:55', '2019-10-01 12:50:55', '2020-10-01 14:50:55'),
('62d75a4ab8f81d589043c94fa0380a4eea418accff4e046c02e25302b364bb11af556c88de914063', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:40', '2019-10-01 12:48:40', '2020-10-01 14:48:40'),
('62f1d50d55e55de16a56a176ccc9ba5ac5626a7d6d7768b9835331a5ee8e0145671d5576e62e2faa', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:31', '2019-10-01 12:48:31', '2020-10-01 14:48:31'),
('64459fa0813ff067dd070752c3fb0d75ecd6a04a21e33951657d874dcf1c00711d6949e0b9078887', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-15 08:23:19', '2019-10-15 08:23:19', '2020-10-15 10:23:19'),
('6631db93006cfaadfd8a31aa476fab50eba02390dbccb5ba51e6b4d4ea63b847996f8d7ae66057f2', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-06 09:09:57', '2019-11-06 09:09:57', '2020-11-06 11:09:57'),
('66506a6fcfde175ee97c1963059e1cb5316a561114f85055742df1777fa764fd06cd3071d89f931e', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-02 10:13:58', '2019-10-02 10:13:58', '2020-10-02 12:13:58'),
('6650f452194f92f4d6ae8ec811944f0aafa9bbbc323810f99ffc056de03a20017b9b36d71e36ed07', 53, 3, 'ss@ss.ss Access Token', '[]', 0, '2019-10-29 10:24:02', '2019-10-29 10:24:02', '2020-10-29 12:24:02'),
('665e74ec72a1b536397fdf59ee4e982a17242f69d3bbb97be07e55ac644f8f0ee48143de6a209bcd', 13, 1, 'TutsForWeb', '[]', 0, '2019-09-19 13:30:31', '2019-09-19 13:30:31', '2020-09-19 15:30:31'),
('6749fb9904076fdc6920d9ac06329663e72c17759f0cafebcda5eb00eb87998ebff203587de8b13f', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-10-31 12:57:49', '2019-10-31 12:57:49', '2020-10-31 14:57:49'),
('677083eefc774409e73a41ceb59542feb9059caa60cf141c4faef45c0c328b04cd631d65692f113a', 72, 3, 'eslamwaheed95@gmail.com Access Token', '[]', 1, '2019-11-06 14:13:51', '2019-11-06 14:13:51', '2020-11-06 16:13:51'),
('67b77e6efa3a6768d2ab6e4137636f35727f05edbdb329dd78081ae377209c28000be68982a9d7f8', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 07:08:55', '2019-09-23 07:08:55', '2020-09-23 09:08:55'),
('67ba5e34401252321b8a14272f664fe997e9d0fe8f7f0852f219daafc4b9fde8c68b418d89927533', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:10', '2019-10-01 12:49:10', '2020-10-01 14:49:10'),
('67ebe85ba0ba431f8f6d03c277c1a42fb76eb7705b0b76ba0f65fc3233b9aef08a24565c62d64d50', 33, 3, 'aaa@aa.aa Access Token', '[]', 0, '2019-10-20 16:29:36', '2019-10-20 16:29:36', '2020-10-20 18:29:36'),
('6803548c8e77d528eec1d88af3b9e52217c9efd5c027a5f879a976ed0bf8faae0a2af7c898efdc6a', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-03 10:46:33', '2019-10-03 10:46:33', '2020-10-03 12:46:33'),
('690dbba7d523d07f5c78b33465577fef45a77660324bc66a60dad7d9046ae59736ab58e440357ef7', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-15 11:07:06', '2019-10-15 11:07:06', '2020-10-15 13:07:06'),
('69a66d22e541351e573b51d97a918da57338f72599af68aaa88534c79fb1c1bc9ff2ab69603e6b13', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-16 08:12:08', '2019-10-16 08:12:08', '2020-10-16 10:12:08'),
('6bda9d98e9417c0f27ec8c5f1c2fb758e69aead46c5d54aa600d61b9a6f1977072fcc78f1bc3f573', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-27 09:56:53', '2019-10-27 09:56:53', '2020-10-27 11:56:53'),
('6c20a4971626573503ea4473e299910690bfc42357447a62eb045d6f319526e0dff43e436b750842', 65, 3, 'TutsForWeb', '[]', 0, '2019-10-30 09:11:34', '2019-10-30 09:11:34', '2020-10-30 11:11:34'),
('6c8729788655ae98b8cf39018beb823c03bfa573e16bec083cf0814a1566c7fae72cfb061beac01a', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:56', '2019-10-01 12:48:56', '2020-10-01 14:48:56'),
('6c8d833500220028c06870c9bf4b507dedc96eb98b2a9ed29b3ec76cebb6d4241c88fd7a60f474ef', 33, 3, 'aaa@aa.aa Access Token', '[]', 0, '2019-10-10 02:31:43', '2019-10-10 02:31:43', '2020-10-10 04:31:43'),
('6cf9e039eb073c58c60d2adad6773c7ee0992b9f4fe7aa497301386bb8572936230aa766e942a64f', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-06 18:00:51', '2019-10-06 18:00:51', '2020-10-06 20:00:51'),
('6d31281a8dc24dc2fd18977755a0f461ca305e77ac0ad645cb933049512bce4a191c6ee116d0e492', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-10-30 20:37:00', '2019-10-30 20:37:00', '2020-10-30 22:37:00'),
('6d43c1443fa3a0b5347a5cc28b2c8669e3b8d4e3a337168a82468251802c6056a543c47ab42a89ca', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 07:04:06', '2019-09-23 07:04:06', '2020-09-23 09:04:06'),
('6d8d4285fea4a805e8d2c4194c364e04127e0264cd11572d75c392690ce22db7e598e7db7bca6f41', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-10-30 09:50:47', '2019-10-30 09:50:47', '2020-10-30 11:50:47'),
('6df8017cd7d7247b8169190f2cf907a748b655540c1b2ae4353819b21bfea64aa98665fc3b8e95ef', 33, 3, 'TutsForWeb', '[]', 0, '2019-10-01 22:11:31', '2019-10-01 22:11:31', '2020-10-02 00:11:31'),
('6e1a23f69ca28e25bd605feacb6631c1cb01782d4b446c1ab6839d2804cf0540617556feea12f56d', 33, 3, 'aaa@aa.aa Access Token', '[]', 0, '2019-10-20 08:58:01', '2019-10-20 08:58:01', '2020-10-20 10:58:01'),
('6e62f9bbee3c96390afb36e713484fb613ca826de87a63244d1939d0b39e11bc25c2bc0f09e3021b', 68, 3, 'eslamp@p.com Access Token', '[]', 0, '2019-11-12 20:06:24', '2019-11-12 20:06:24', '2020-11-12 22:06:24'),
('6f4913802f7cea1aa9bda56fc84ce470f3e04721d12b083d2d694d3bea99704567933e0329b7cf93', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 07:08:37', '2019-09-23 07:08:37', '2020-09-23 09:08:37'),
('6ff4ae7f82b1870d60fded4c033a62dfc8b217d465c76b7de7edc0336c931b5903912873609bb161', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-06 09:52:25', '2019-11-06 09:52:25', '2020-11-06 11:52:25'),
('70213ee132f7b019ffc804d0e4f34525b19404f3399bdd616c18a3aeb86d9e0bb82513014d725bd4', 69, 3, 'TutsForWeb', '[]', 0, '2019-11-04 11:47:45', '2019-11-04 11:47:45', '2020-11-04 13:47:45'),
('703ae05b9ca69b8a4cccd1b6d1fe55fd77208d0b7ec3dcc2f9530edbfa13acabece500e4e0de0651', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:31', '2019-10-01 12:48:31', '2020-10-01 14:48:31'),
('70f0075a88be070499708305010f367d04044ef7b2d26a6547af42669b77f3eee68cbdc7a5cb2114', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:13', '2019-10-01 12:49:13', '2020-10-01 14:49:13'),
('714306459e846c386d10b0c8468c5bdbe41b5620fa9e03925845aef38abc4419f6cf75b76c1b9296', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:56', '2019-10-01 12:48:56', '2020-10-01 14:48:56'),
('72f8bd02e85be5be8b872ec06a554f0335e185f49479e52c4065bcc2ab596132ff26616501ab8944', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-15 12:35:28', '2019-10-15 12:35:28', '2020-10-15 14:35:28'),
('7347cd841e60e26da302cf659fef18ef43f52f228cf9fd251bd259e83b972c8ffd3ababa46e393d9', 80, 3, 'TutsForWeb', '[]', 0, '2020-01-02 11:53:38', '2020-01-02 11:53:38', '2021-01-02 13:53:38'),
('73c4edac973245c5da4d5bdc70b91e74d2c2528cdf916aaedcecd3697236317ef485549a42645d57', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-06 07:59:10', '2019-10-06 07:59:10', '2020-10-06 09:59:10'),
('73c5ef6f33fa2435b2712087a118868d54803407eb59cc45fae79ef75c8e24b93e29e816e1198b18', 18, 3, 'eslamdoctor@d.com Access Token', '[]', 0, '2019-09-29 08:06:46', '2019-09-29 08:06:46', '2020-09-29 10:06:46'),
('7440dc4995bcba45baefdf212feeb24c6eba011eaba2c15a26f9ee38e9d6a1a266a635fafab6b19f', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-10 02:30:43', '2019-10-10 02:30:43', '2020-10-10 04:30:43'),
('751172c9eb33ba67ace4cf0073807bf15a7e42c4f4aef44d96449d3427dc39ca7a7ea731ed29b2dc', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-20 08:34:08', '2019-10-20 08:34:08', '2020-10-20 10:34:08'),
('758494d6bd70f50b6ffdae725a28bf543fbce17704402a4be43ad753ade3e9fdb53fcc3b6cac09ff', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-07 12:47:18', '2019-11-07 12:47:18', '2020-11-07 14:47:18'),
('75e2193866b693b8c3f5d0da488ce601b772604c77070bcbb19e7218e303eb750643b45400a1276a', 2, 1, 'eslam@doctor.com Access Token', '[]', 0, '2019-09-22 07:03:45', '2019-09-22 07:03:45', '2020-09-22 09:03:45'),
('765c2ca9fb47d0c5f73ad7309dc836255181a42fbbf780643c2e473f3ae6d8c0aae2aeedcfe32189', 43, 3, 'TutsForWeb', '[]', 0, '2019-10-06 18:06:34', '2019-10-06 18:06:34', '2020-10-06 20:06:34'),
('7697f2d4de9da5f76a77407cb59f175329df12b1724931962645fd95fa419e951731b3b673c7cdea', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-07 08:54:48', '2019-10-07 08:54:48', '2020-10-07 10:54:48'),
('769da2217e62c6a01a24ee7c4bfbe4dccdb7bfaad1cc5d84e1ae31423bbd386c300544853293bc23', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-08 13:22:55', '2019-10-08 13:22:55', '2020-10-08 15:22:55'),
('76d43d0a1089c65651b3194cf92275bfe43449973a775a65f17e81c6c3482f861549a0bbabd251de', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-03 06:56:07', '2019-10-03 06:56:07', '2020-10-03 08:56:07'),
('777875815134cbcb00227fa7993c9ab6360dd32e55b7287ca08db219160d973923e95a11bc63095e', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-05 17:55:40', '2019-10-05 17:55:40', '2020-10-05 19:55:40'),
('79543d7d7eea40a12732090f2ca47acd99220f45d6f4a75972f1933f63e2c0bfde65a7c79e72b259', 62, 3, 'TutsForWeb', '[]', 1, '2019-10-30 08:43:10', '2019-10-30 08:43:10', '2020-10-30 10:43:10'),
('7a172d08551c6e4ff7a22fb59af1f2d6b08f8b99e169642a200df7d052dbca7b16e5984cf1ef48ab', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 15:21:07', '2019-10-01 15:21:07', '2020-10-01 17:21:07'),
('7acc13ba23c05cae33aed83e956b377cf3eed00f775e6a3f17c79b8300db05b54c2997a3eff1e737', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:11', '2019-10-01 12:49:11', '2020-10-01 14:49:11'),
('7afd9cc7900569747dd1e95674439b787727719c8080b4e0b1e698d2107101165a4f13b1e1367448', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-05 17:22:25', '2019-10-05 17:22:25', '2020-10-05 19:22:25'),
('7b4f42407c06ff506c761efd9a45c621e7eeaf0156c6b6e76ed319504d8b9926829609678a8219f8', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:50:58', '2019-10-01 12:50:58', '2020-10-01 14:50:58'),
('7c8d7d982be8e988cd95fce7c6ab1011b94b06c74f22370e0ec97f6a34d4afcbae29aad6f3ff4c61', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-04 16:54:01', '2019-10-04 16:54:01', '2020-10-04 18:54:01'),
('7cb2bc06d2a9bcd95284bfe07951318d237fa0c5c68e307b686ebbf80953cfceb2a89bced6f0a5ac', 72, 3, 'eslamwaheed95@gmail.com Access Token', '[]', 1, '2019-11-06 14:08:32', '2019-11-06 14:08:32', '2020-11-06 16:08:32'),
('7d98ceee842109f50fa766122d768ab510b0c33c7733c1380c1bbaca8435f32a55e89ed55f84abfe', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-15 06:13:36', '2019-10-15 06:13:36', '2020-10-15 08:13:36');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('7df44e4f44494fc8a44f33f038e440dcd830a928e3541bfa6b1c0f666ab580083dcf5210162fd736', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:26', '2019-10-01 12:48:26', '2020-10-01 14:48:26'),
('801286f1c9028c7e971e8e38ff8aae60ca3f36793fc8e39cdb04c49f1b4e976113eab4ea0d89a80b', 43, 3, 'bmf_55555@yahoo.com Access Token', '[]', 0, '2019-10-15 10:06:08', '2019-10-15 10:06:08', '2020-10-15 12:06:08'),
('80d00201a36ca7f4d7f000db184315cafc888fc31ac5b87cef189d77219dc380ac2ecf75b024f164', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:50:56', '2019-10-01 12:50:56', '2020-10-01 14:50:56'),
('819b39f2b8038f95d09aa6e28acf04d300aba2dc02d57fa085121a300949321e239b8f419ffb349b', 52, 3, 'test@test.test Access Token', '[]', 0, '2019-10-21 08:58:29', '2019-10-21 08:58:29', '2020-10-21 10:58:29'),
('81bd086268dcb0d05ee7054fd180574a1ad6975b2cbe57bbd8dde34a791a0d860516b5a66d7e2af9', 74, 3, 'samermohanna@perfect.com Access Token', '[]', 1, '2019-11-06 15:36:19', '2019-11-06 15:36:19', '2020-11-06 17:36:19'),
('81d84c7c1a4e3e15539b7e26926a4af08a86862bb8c0c2e063eadd3efe970db3b260bb70654dbbc0', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:27', '2019-10-01 12:48:27', '2020-10-01 14:48:27'),
('82ef8587b448ab13f9d692d4f7e4e5c41fdbb0a9ad5b830261790a8333b198c89898244cd6f74c81', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:39', '2019-10-01 12:48:39', '2020-10-01 14:48:39'),
('834c7f90ad8a536aabddd03280bfa05d6ff6fb9249b8e6a008bda021bd4a39cbfe6caffb0f1fe9ac', 51, 3, 'TutsForWeb', '[]', 0, '2019-10-15 10:10:26', '2019-10-15 10:10:26', '2020-10-15 12:10:26'),
('835efa82c285ce81f4bb8de43fbf146253ae197a76226c59eb5d4b2adec0ad75bbe5c4e4b977ebf3', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-04 16:28:23', '2019-10-04 16:28:23', '2020-10-04 18:28:23'),
('8376223b2c48eb68d4127640ba01321cf4e20fbfd4266decad0ec14b7b014330e1ed930809e22c95', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:40', '2019-10-01 12:48:40', '2020-10-01 14:48:40'),
('87276ee5c4239c98eeaadce39363e768305326740a44d1feb74d2962c03a994199a202a4882a0b1f', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 18:27:44', '2019-09-23 18:27:44', '2020-09-23 20:27:44'),
('87fdefa87bc465e60d6b46b5a25f86fa5f953e07b6b9671eb61d5bf09f98525fdd18d0649306f348', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-13 07:47:23', '2019-10-13 07:47:23', '2020-10-13 09:47:23'),
('88cc3bdbe8e6fd4c68b7b60d81d69c9f82ae28f08139d0fd5c04a2c14929e29f69d01037cdea38ee', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-24 07:35:04', '2019-09-24 07:35:04', '2020-09-24 09:35:04'),
('8abf9910fc1af6f94eaad0db9cb84bd73271b540c49938ffd630a3d5749cb79477d82b6946cd17b4', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-17 12:01:20', '2019-10-17 12:01:20', '2020-10-17 14:01:20'),
('8adbc0e842eee86f374961adc03efa7b4c64c260e3c4cdf122785e016a3e7503d40c80ae85430de2', 24, 3, 'Optional(\"sallyhisham4@gmail.com\") Access Token', '[]', 0, '2019-10-10 08:22:00', '2019-10-10 08:22:00', '2020-10-10 10:22:00'),
('8afa1621c4ba7ec9700e9d37b594eaa0ddc3f56ff53500f8fbda74a4d9af5dfa7f0e2af2fb6fe5d7', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-24 03:48:19', '2019-09-24 03:48:19', '2020-09-24 05:48:19'),
('8b5b3c5cec70a1ad29e643b3a60501a04b6714877e639b7f0feedbbf91c8d7defd8786c35035c0f0', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-11-04 21:10:48', '2019-11-04 21:10:48', '2020-11-04 23:10:48'),
('8be629cc90535648822fd07ce3e0a64b98a3aa44114ee89a2ad117982202b9bcd6b63208d3d950b9', 15, 1, 'TutsForWeb', '[]', 0, '2019-09-19 14:21:01', '2019-09-19 14:21:01', '2020-09-19 16:21:01'),
('8bf425e6c7a826921562304e2b0e8941145ded2de8870c16e17fda0f5f11bc6ca8319fa5fd832040', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-29 13:55:13', '2019-10-29 13:55:13', '2020-10-29 15:55:13'),
('8c102cfded5156467e80f3e488ac743e35d94fa0acbb56aff6a21081291a300170ef07a2705f0e36', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-08 08:35:22', '2019-10-08 08:35:22', '2020-10-08 10:35:22'),
('8c5d21b7ae6d915a764f4eb5b51447db9efd77cd35f69f3556bde74a60df18d46354176131a47772', 25, 3, 'TutsForWeb', '[]', 0, '2019-10-01 12:47:53', '2019-10-01 12:47:53', '2020-10-01 14:47:53'),
('8c65d1a1a5ee6445da135063ecb7fef22e5ce92625e137983a8c7c7b5ab81489d4547af27900294b', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-30 18:32:31', '2019-09-30 18:32:31', '2020-09-30 20:32:31'),
('8c9c385e2d546371c890b2cdeb015de120b73cbea0bbf7481d5c187a6b11aee9c7880e20427898ad', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-05 17:23:53', '2019-10-05 17:23:53', '2020-10-05 19:23:53'),
('8d2075acfaf92a10d354cf6ee60ea2544589ecd306f9885f9c3e00eb0b07df12b0cc76e9c88f4098', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-30 07:04:55', '2019-10-30 07:04:55', '2020-10-30 09:04:55'),
('8d6e634ca4718b27f4d781febef688a024afc7763460dfa9da9cdfe871efad6f0c769e30e472525f', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-29 13:12:54', '2019-10-29 13:12:54', '2020-10-29 15:12:54'),
('8df90aa31534590a90a5390659336bdba4d7e6b12e53f3744cdc3b74b2d14fbbea0c880bce1e9fbb', 33, 3, 'aaa@aa.aa Access Token', '[]', 0, '2019-10-10 05:28:36', '2019-10-10 05:28:36', '2020-10-10 07:28:36'),
('8e083da78d2a8985dc4e91d4fc42733367b11cb029dc761297e57764e723f9381bc91e4104cd656b', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-05 03:09:43', '2019-11-05 03:09:43', '2020-11-05 05:09:43'),
('8e34141e958d3eb98a21858f9f7fb43a08bdf3cc8bdd37aac6be92ceb74b6fec88c8be670bd8f343', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-03 08:06:47', '2019-10-03 08:06:47', '2020-10-03 10:06:47'),
('8ea02a3d988f351f29ef0bb25e40f37bf8e22033796578b9eab8987c73edda7d9e50c848087ea113', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:29', '2019-10-01 12:48:29', '2020-10-01 14:48:29'),
('8ef2c179b0229e699fa0508c7d4b2d67c500984e5bd441e4176758e1e760f11a1ae4612e98fede8a', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:36', '2019-10-01 12:48:36', '2020-10-01 14:48:36'),
('8f01cae7fc50a5c24094c4b489fd086201cc8b0eecdf9815517874803fad10eb772e33097d8772c2', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-15 08:09:11', '2019-10-15 08:09:11', '2020-10-15 10:09:11'),
('8f7247e8d5dc250c6993233531605c53495ed52a97b092d18714fc1d47338f16db8896990186ba0c', 18, 3, 'eslamdoctor@d.com Access Token', '[]', 0, '2019-09-29 13:10:51', '2019-09-29 13:10:51', '2020-09-29 15:10:51'),
('905eb531e0d12b5a60de498db713baece4bd4c76f4536605465efd2952a4e1bb443311df07f6dc80', 19, 3, 'hend@yahoo.com Access Token', '[]', 0, '2019-10-07 12:36:56', '2019-10-07 12:36:56', '2020-10-07 14:36:56'),
('915077b1a2fe79ef4b5409f37473ec83741eb2ad1c9abdb4dadf17f94da28f41300f9b5f0d80f853', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-03 08:30:21', '2019-10-03 08:30:21', '2020-10-03 10:30:21'),
('917b1e6513ed02c719e7ac46751ba7d0e65a8ac769107826b77b6190b8ccafbf3a3a8b7c18e5fdb0', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:11', '2019-10-01 12:49:11', '2020-10-01 14:49:11'),
('934e8398690586a521b6c106f00d2398b5da69c8b997bbe47890c1772f3bbf0ed38fbbfda3016c7d', 64, 3, 'saly@perfect.com Access Token', '[]', 1, '2019-11-05 03:57:44', '2019-11-05 03:57:44', '2020-11-05 05:57:44'),
('945e7befee3d17b243c552efcf02eaebe96cbc556917ef7b6445569a5d2ae9f6dd67ae082ec7c66d', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-05 17:01:17', '2019-10-05 17:01:17', '2020-10-05 19:01:17'),
('94834b2b16e8d5f508afb25192e8907f3f5a238c00d42485e9094a00c8b42d3db63584f5b907d3f5', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-28 13:39:07', '2019-10-28 13:39:07', '2020-10-28 15:39:07'),
('94a23bc247a9b76a25601542031304e85041d4168dc85b6e0da32109313b846b1e3e7ea013fd26a4', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-03 10:40:29', '2019-10-03 10:40:29', '2020-10-03 12:40:29'),
('95d20cd24b3db4c02c3c441aa7c905fcb2265fb1e2b2fec583ccabde6fa36a2920453bb8e84b3535', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-10 18:29:59', '2019-11-10 18:29:59', '2020-11-10 20:29:59'),
('96efa47b656b47b44dfdb1c6032126ffebbb0347eddf16d595452d0bda38e53b31008722437a5865', 28, 3, 'TutsForWeb', '[]', 0, '2019-10-01 15:29:08', '2019-10-01 15:29:08', '2020-10-01 17:29:08'),
('984a3c4a340541a53f61397fa8192a5f3cb47307a2d22dd5515364cdeccbcdd050273601bb5f45bc', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-15 12:25:38', '2019-10-15 12:25:38', '2020-10-15 14:25:38'),
('98fb5c80b8f3454fb8396a25beb6e4d2214a2556ff1931f614efb352c7dbeb6e4d9e6412c98e0b82', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-10-30 10:21:34', '2019-10-30 10:21:34', '2020-10-30 12:21:34'),
('998ba66b0f58b9972c1288de769199fdaf2ce955be83a456e5a71253c62ca768cbb51709205999e4', 1, 1, 'doctor@doctor.com Access Token', '[]', 0, '2019-09-15 11:16:23', '2019-09-15 11:16:23', '2020-09-15 13:16:23'),
('9a5ecb31ad72067cd00fc4a61379d5c8101aeedaee023a9aafcc66bb01f6fee6e274f85bbe8624b7', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-10-30 20:37:30', '2019-10-30 20:37:30', '2020-10-30 22:37:30'),
('9aa4421102000ed63833efa2bc59c9638ff201707b8bead57cf9b2228241a7efded9b274a8863483', 1, 3, 'doctor@doctor.com Access Token', '[]', 1, '2019-11-07 13:48:45', '2019-11-07 13:48:45', '2020-11-07 15:48:45'),
('9b18eb7fe657aeb7a2f515ee12bc47da8f630d1140f4896bda559aa1f335c886c01ddd7e2033d418', 49, 3, 'zoma128@gmail.com Access Token', '[]', 0, '2019-10-15 08:39:57', '2019-10-15 08:39:57', '2020-10-15 10:39:57'),
('9baeaa6afd0b34978c1fe29cde80bd3e18a696140b8132b6ffb43bb75e885a988fa5c26447be6463', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 1, '2019-10-24 07:51:07', '2019-10-24 07:51:07', '2020-10-24 09:51:07'),
('9bf10ec546ac44cba75611274992c400d36d0827bc01f2c72825fa65b63384e8dc95908971ebf645', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:10', '2019-10-01 12:49:10', '2020-10-01 14:49:10'),
('9c733c35a8b2ff8ccc2b29b9203cc3f6fa1bdc68ba5a4642cced8c3930cbfcaf3512bfdf7babc55b', 4, 1, 'patient@patient.com Access Token', '[]', 0, '2019-09-15 11:20:08', '2019-09-15 11:20:08', '2020-09-15 13:20:08'),
('9c9f6d3496b2bbdf853919412540f9a7ae43657aa5df3875df3479cf5fab3e5da4fb0c3035e40ed7', 26, 3, 'TutsForWeb', '[]', 0, '2019-10-01 12:48:22', '2019-10-01 12:48:22', '2020-10-01 14:48:22'),
('9d6e4dd5d9cb7ce66bd144ca0bd39dc145f054547445105196c8df398f088a1819e22e67c1962014', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-17 13:46:22', '2019-10-17 13:46:22', '2020-10-17 15:46:22'),
('9d9c61da5889a7bdb02d5b6a500eb9055798244e84b50311817fcc7c89921f9993f6894f4ae1871d', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:40', '2019-10-01 12:48:40', '2020-10-01 14:48:40'),
('9ed724bb8dff998b480e81a77f19f2cfa3e1208856ba6f8b524ae52477cf8e97dc08def01e6138ec', 79, 3, 'TutsForWeb', '[]', 0, '2019-11-25 05:46:51', '2019-11-25 05:46:51', '2020-11-25 07:46:51'),
('9f9b71c71a2757165bf9d3107ed7629bef7264f8b7afd06e69c8237a0554cd2726b0dde183df2fad', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 10:10:01', '2019-09-23 10:10:01', '2020-09-23 12:10:01'),
('a02a736ba262063f4e08803375b118c5221607602afd74eea8c8693837fed30a9beac6d597486859', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 10:10:21', '2019-09-23 10:10:21', '2020-09-23 12:10:21'),
('a060ae77330f8f6954d20519d0fe07c25f99c87322a4b9ba24de1a8f559e578d42b90be88a773ddc', 1, 3, 'doctor@doctor.com Access Token', '[]', 0, '2019-11-12 13:11:10', '2019-11-12 13:11:10', '2020-11-12 15:11:10'),
('a0fcdeb11206bdfc42711af9b38ac3b9c800ff53e2b5c51065e6cf9306deb570fce60d417b96c8b5', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-09-23 07:09:58', '2019-09-23 07:09:58', '2020-09-23 09:09:58'),
('a1415a6826c15c6c9c1dc27d4a52c84100410f767596d475789b569413f9f70439e611494d320f07', 67, 3, 'eslamd@d.com Access Token', '[]', 1, '2019-11-10 18:33:22', '2019-11-10 18:33:22', '2020-11-10 20:33:22'),
('a3dc1a30da50bdfc7cc172e3e2162eef18e3078521f57c0352d9509af82b7d96fb0e2e65894fbb01', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:12', '2019-10-01 12:49:12', '2020-10-01 14:49:12'),
('a5156fd00750e620a12b2121eb8d8839c846c4ab1e438f2baa15b49910958e5c34b7cb1801635c2a', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-03 08:25:08', '2019-10-03 08:25:08', '2020-10-03 10:25:08'),
('a558e8e188870ace5c1f6741e53de3ca85591f74fcb3fbc7ce7096e482d2e16fae8fde74dfa0a9fb', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-07 08:55:31', '2019-10-07 08:55:31', '2020-10-07 10:55:31'),
('a583e52471202d97002a9bf1a0d026375b9a70d5858bfe060e7eee18f23c175b5609cf36138d93fc', 67, 3, 'eslamd@d.com Access Token', '[]', 1, '2019-11-13 07:27:21', '2019-11-13 07:27:21', '2020-11-13 09:27:21'),
('a594d8302484098a54aa02f7fdb64697696aebbaf6d774c57949bc0955c898f8e84237b4c8df53ba', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-10 07:35:12', '2019-10-10 07:35:12', '2020-10-10 09:35:12'),
('a5f0fbcd9c761974b373edb4fdd7c39468c9b9e0c39b29ca174b054fc34b200c26b68aef90a37475', 19, 3, 'TutsForWeb', '[]', 0, '2019-09-24 09:08:30', '2019-09-24 09:08:30', '2020-09-24 11:08:30'),
('a715ef10a29f1a31bc07f4994416b63296b713c935944a0dd4c74da3076aa297dbfd436a46679ef1', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-17 06:48:52', '2019-10-17 06:48:52', '2020-10-17 08:48:52'),
('a717c3729673686f77cd9d891c835888081853c9a0efd0b3d0839cee2cfb77d1e2f143d9d98d75a2', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 13:04:59', '2019-10-01 13:04:59', '2020-10-01 15:04:59'),
('a7323b8dfc79f5c91ef830d4dde05c0bb9a3012efcb7606a28185a260e41a9ca0dae89072a76d868', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:50:53', '2019-10-01 12:50:53', '2020-10-01 14:50:53'),
('a7bf5eb11cecf5b1d3bea5445594140ef7cf2e0d7ca46fb8661f47464dbacf8f0fce3dc45bd32fb3', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-17 09:51:43', '2019-10-17 09:51:43', '2020-10-17 11:51:43'),
('a9b65e38ffa1c552000f0a6a9845946fd33754c6da35a63ca5afc3a61a702e6ee4490695a4b0b646', 30, 3, 'TutsForWeb', '[]', 0, '2019-10-01 17:32:06', '2019-10-01 17:32:06', '2020-10-01 19:32:06'),
('aa6ee421dfdaec72e5553f3b17ee9e935381da428af4c648f7fda66bdeec4fb9200ccdeffa35966b', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 12:39:37', '2019-10-01 12:39:37', '2020-10-01 14:39:37'),
('ab4776e922281c531e73fcd47a75a2c747e22d8dc32fa4e9a89175631ca23c732f13637a337973d4', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-09 13:10:14', '2019-10-09 13:10:14', '2020-10-09 15:10:14'),
('ab86bac7427579d23ec9b72aed36de66b3b35530a3d249960c95c0c18d127bf6b4eaa188a9474edf', 73, 3, 'sameer.ahmad@perfect.com Access Token', '[]', 1, '2019-11-06 14:02:11', '2019-11-06 14:02:11', '2020-11-06 16:02:11'),
('ace45c61cd6c6a65bd84c305bf06c0e2b6efad1787558f9cd8b600b7a19d5a02495697a5b1442ef7', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 06:59:53', '2019-09-23 06:59:53', '2020-09-23 08:59:53'),
('ad5bcdc6439655e2434eeaf852ec09ffd9c5ae73538c58387c519f20475eae698005e0affa9cb7e9', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:13', '2019-10-01 12:49:13', '2020-10-01 14:49:13'),
('ae85a7035e34a436afd9684960a9f709b8810514290ebf4089a6eeba555f2d897677841ac0be9251', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-17 08:34:01', '2019-10-17 08:34:01', '2020-10-17 10:34:01'),
('ae97d5ecdaf25d7da60e1c82881f85a7f994bc8862d022ee7f2a2f46b8bbf0eb9b334e35a32216d4', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-10-31 12:58:11', '2019-10-31 12:58:11', '2020-10-31 14:58:11'),
('aeab0f8cfdf841ea8025aff8d10b561a486383157f29426d8b5937308bc23b590530099efa9c620f', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 22:03:06', '2019-10-01 22:03:06', '2020-10-02 00:03:06'),
('af71d18d7fe96320c8839c6eba07c94ef984afd8cb973c12dc6e7e9a0f8021cb31bf36b705384bb5', 49, 3, 'zoma128@gmail.com Access Token', '[]', 0, '2019-10-16 07:23:21', '2019-10-16 07:23:21', '2020-10-16 09:23:21'),
('b21dafebc5688c79af67161bf00820f011ae0f85f82a04e4316926a184f68eb73ac2819986760b46', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-21 10:28:47', '2019-10-21 10:28:47', '2020-10-21 12:28:47'),
('b2fcab4c5260ee6b688d1907f719427aca8ec034418e34f18e99bee8fca0dd32010f3012fb03296c', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-16 11:43:09', '2019-10-16 11:43:09', '2020-10-16 13:43:09'),
('b3925849462c29c978bf1f0f315366d2bc25ca972e4e92119cf53e3374d8c72d5d4eaa63c100af36', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:30', '2019-10-01 12:48:30', '2020-10-01 14:48:30'),
('b3d7a4999e1c160ddeea537e5c5cd7a51a83403722f04603ac6da76bdc5b8f701946a223aacf5f1b', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-15 12:32:59', '2019-10-15 12:32:59', '2020-10-15 14:32:59'),
('b461200dd992984a3816ade83ba372bd73258869a7d0eba9334a40b2a4b3c0b65a214a0238a1230a', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-14 19:36:37', '2019-10-14 19:36:37', '2020-10-14 21:36:37'),
('b4952ace51f48168534614221bbf910b35552817a5d4ab8b79552fc048bf2c0b76bc12422a5c73fd', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:29', '2019-10-01 12:48:29', '2020-10-01 14:48:29'),
('b4e003a4b79f616a0a1bfef65ba4d1e8938fb0bc7517d09745d48fec98448406ebcac050faba4183', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 1, '2019-10-30 07:58:18', '2019-10-30 07:58:18', '2020-10-30 09:58:18'),
('b4e68dd9c4263daa86b45a070a8b03a8e2b0b0c0671e35fd902944e006e5582963c09a9d5879c2d3', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-06 08:00:47', '2019-10-06 08:00:47', '2020-10-06 10:00:47'),
('b5a1f280ba86868b4413a667ddab9ce38c257ee73b1795fb6f5649c0172e858a341070950fb75f3b', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-05 18:38:20', '2019-10-05 18:38:20', '2020-10-05 20:38:20'),
('b62c6fc5b33397366cc0b213e1b42bd112f23f6f9bbfc703a9db112fa9d8b7cfb109e5140073c3b9', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:26', '2019-10-01 12:48:26', '2020-10-01 14:48:26'),
('b66250e2e8b4da0ba62e630a02c8e6ef50cf954b941b0eb035cd08ccc28bfff7eb473bda25307ca5', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-04 17:52:40', '2019-10-04 17:52:40', '2020-10-04 19:52:40'),
('b6b24c424e4937b8ef2dca54a2bba8058c0f577d7d6716eb8c1719fb923120f5dcf305eb2f1c01af', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-04 17:50:23', '2019-10-04 17:50:23', '2020-10-04 19:50:23'),
('b7bdc6e6b2ead40e37ec8db19b4d5105a2dace09a58de4df8dd010fa83cdf705f01b40eb0a79c518', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-27 13:15:51', '2019-10-27 13:15:51', '2020-10-27 15:15:51'),
('b7f45a3955dd887dc3c299000e01aa88aac557daf7745be41226010e9253f0dd9c2ea1acb7bf7915', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 10:21:03', '2019-09-23 10:21:03', '2020-09-23 12:21:03'),
('b8568b41d1f64541b5947a3d1ee196aed930a8a7d96897cfe4db7410c6d1e3ea3f8469992377ac0e', 1, 3, 'doctor@doctor.com Access Token', '[]', 0, '2019-09-23 09:54:03', '2019-09-23 09:54:03', '2020-09-23 11:54:03'),
('b8c730ed44cad26c17a45bc83e807e486ba938370f1a6771b8edff8ecdc4171bb55c4bec473772a3', 34, 3, 'TutsForWeb', '[]', 0, '2019-10-02 02:08:17', '2019-10-02 02:08:17', '2020-10-02 04:08:17'),
('b8d14563238c9eba3223e46172aa0b2814723b84526af0382ec71a9fb4d7efbf169ec62e266da53d', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 07:00:19', '2019-09-23 07:00:19', '2020-09-23 09:00:19'),
('b948f222720de9cdf29977bbadd37bb38a4b08fc7dbb2e3862bafb6f9ca6fe09dfc6c41bb2845c1c', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:26', '2019-10-01 12:48:26', '2020-10-01 14:48:26'),
('b96b4f159391424129c85dedcc804d0d193a1e2d11b6bc917820125a6a69dc794b0d20dcaddf7abf', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:25', '2019-10-01 12:48:25', '2020-10-01 14:48:25'),
('b995ab1cbbf9bffcaaa96ff4380786c5a2e19ee896f9eef32f05dc18b795762decd9f33a9aa1baca', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:12', '2019-10-01 12:49:12', '2020-10-01 14:49:12'),
('b9e540147597021b3e60cedfa0a33c4cc668efa3290eaff184cb060939bcc12e3e876a5eae4a8a5c', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:28', '2019-10-01 12:48:28', '2020-10-01 14:48:28'),
('ba7e505b3506950bc09a54a6f56540902005207f64e68e8c89bcb2c82d9a2508fbf4293e9ba9baa8', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-15 12:34:45', '2019-10-15 12:34:45', '2020-10-15 14:34:45'),
('baaabc2ca3d61a9cf90b8e27191045b956855bb8e595d5a136fdf1f485e2a7c50539e09d9f8adab1', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-15 09:19:14', '2019-10-15 09:19:14', '2020-10-15 11:19:14'),
('bc1876cb78ed93d9d15c72d4979d8f47a5553c685314bf141ff81f0f4dc6b8b5051ecb5d77a87930', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-14 13:51:50', '2019-10-14 13:51:50', '2020-10-14 15:51:50'),
('bd3d5766ba620b24a93a676437686bc97f6829443dafcbadb07afbc04a6cd1fe552dd0ce297eb6ef', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-20 08:50:20', '2019-10-20 08:50:20', '2020-10-20 10:50:20'),
('bdb7566d31395376e8c51f728ebe1891bbd4fef71b16fc2ac8d4556e008597bcd3969da1c7f6a6a4', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-02 12:51:43', '2019-10-02 12:51:43', '2020-10-02 14:51:43'),
('bddf5fa717ee7d7f6a7340c24df7f9a0c6a27737e101881eba07c648d3557b99cb7fb95b2d9adf11', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-03 08:03:14', '2019-10-03 08:03:14', '2020-10-03 10:03:14'),
('be0092f121297d8fe196fbd30ce886b7282980de21594e80527078fb5a0690f4db90af4de2aba708', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-24 11:53:49', '2019-10-24 11:53:49', '2020-10-24 13:53:49'),
('be18d6aeec7374488737e02a5df51cb23fbc7a847376f94cab0f31fad78ede44be6773114800f06e', 19, 3, 'hend@yahoo.com Access Token', '[]', 0, '2019-09-24 20:58:56', '2019-09-24 20:58:56', '2020-09-24 22:58:56'),
('be2d2712518baf42c1291958457375af226592a4681b688cd9bf0b3ba6990291c22b607bcef39c7e', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-22 10:17:31', '2019-10-22 10:17:31', '2020-10-22 12:17:31'),
('be9b6acd26999cf01d2bf9f1a82762f156e6d3403f8b2703cfe6cd7c7b68aebc61a154cf4e6ffbf5', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-10 11:44:27', '2019-10-10 11:44:27', '2020-10-10 13:44:27'),
('bedbbd89c4bb0fcf1234380df065847aab3bded030daf9e821350f31a88d8e56d95f85d109bb3bd0', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-01 15:28:54', '2019-10-01 15:28:54', '2020-10-01 17:28:54'),
('bef519c341c7eee2e166685615264ec16bcc81ef381d3759df6b0412385fb2702d7ee5bfbd445cc4', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-24 09:46:04', '2019-09-24 09:46:04', '2020-09-24 11:46:04'),
('bf09b1ac57b620921afc0c5b71f3a1cf27c34232690a248fb6e9e1bd7c6e9dbf32c63a13fe26d668', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:09', '2019-10-01 12:49:09', '2020-10-01 14:49:09'),
('c04738bcd6a55c697a195ffeaffef0946b6eb081c91e656b1519b27b29966da2d2d1ea0c7fc1ef21', 24, 3, 'Optional(\"sallyhisham4@gmail.com\") Access Token', '[]', 0, '2019-10-01 12:46:26', '2019-10-01 12:46:26', '2020-10-01 14:46:26'),
('c084be4058f8b229aafc8acff85ec62ab597177f545d273af3cc8cb04ac665b19c0c9f9740a60148', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 1, '2019-10-24 12:33:42', '2019-10-24 12:33:42', '2020-10-24 14:33:42'),
('c0a7204c8458a897e5d94f011dc62c1834a5cfa4bde18181005a65715a99721eb6346d373c1f2534', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-24 12:49:13', '2019-10-24 12:49:13', '2020-10-24 14:49:13'),
('c14f857dae0211d642a983ebc1d703644ff5a18930a3ab88ae53768babc7f9746fbd78681e6c6e31', 19, 3, 'hend@yahoo.com Access Token', '[]', 0, '2019-09-28 21:27:35', '2019-09-28 21:27:35', '2020-09-28 23:27:35'),
('c172d420078e1055f92d0729bf17a2cbb79686e75c174eb6f36f8353aaa39ff6d5013a85a0f152f8', 27, 3, 'Mohannadpatient2@s.com Access Token', '[]', 0, '2019-10-01 13:00:05', '2019-10-01 13:00:05', '2020-10-01 15:00:05'),
('c18f1cbc6e2138ab03be1006a4c99df37224256c825bd4d60c99ffa0d9775d455dad3e801a3826ed', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-27 09:25:45', '2019-10-27 09:25:45', '2020-10-27 11:25:45'),
('c2dab9fb3ebad7083bc9956d537bb48df13bf4b814427fdddbb116225e60aaafd21c31c365be28b5', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-24 13:35:56', '2019-10-24 13:35:56', '2020-10-24 15:35:56'),
('c4bb07f4fcbd1263557a45891f92213d94a3607c795b5b66b7f0b845ca61011136ff6fc6d7a0a145', 16, 1, 'TutsForWeb', '[]', 0, '2019-09-22 08:44:24', '2019-09-22 08:44:24', '2020-09-22 10:44:24'),
('c4ebc23313ca4a87bd018c1e756b7f683bc2006fca070fadb981a4e707cb2c6beb42fe23acd18634', 6, 1, 'sally@patient.com Access Token', '[]', 0, '2019-09-22 12:58:22', '2019-09-22 12:58:22', '2020-09-22 14:58:22'),
('c55ece261bc2bbde13363c6109d0a4dccda89058bc70752d73f52749e72920c6737176d6f844deae', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-15 09:39:07', '2019-10-15 09:39:07', '2020-10-15 11:39:07'),
('c5a7964d55f28f8f6f84f3be1e86b23577fa0c65c1e897f695a90d58c2650aea08ea80347c584d81', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-03 08:22:35', '2019-10-03 08:22:35', '2020-10-03 10:22:35'),
('c61742fad630fabdcbbc65acb924151ee2147d7ed5f0a18a79203f1861277cd79fd98094ba6e5319', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:50:58', '2019-10-01 12:50:58', '2020-10-01 14:50:58'),
('c641c3622c57257a74ce8370b2f5dcc074a61962fb45e6dfeb4ce5c80c4005d868fdb43ec2f53b7a', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-17 13:10:23', '2019-10-17 13:10:23', '2020-10-17 15:10:23'),
('c65df0212121422a3a7dd0b8c73acb922a6f7ec3c7ed904bacd122f77ecbf095bbeebd37850c8434', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-17 13:10:47', '2019-10-17 13:10:47', '2020-10-17 15:10:47'),
('c7157d3528330ff379ee6b15f4005a3b2f996ca627d04a52215b3f38645f34c4bbdf202b9aa0d0d7', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-20 08:52:12', '2019-10-20 08:52:12', '2020-10-20 10:52:12'),
('c791acc0e5efce88f8d846094122bf22ca4198385668a14ab400fddf6493af5e1196cf64d3296145', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-13 00:19:33', '2019-10-13 00:19:33', '2020-10-13 02:19:33'),
('c7e16aa4c561bc464c8a0b4773f763c7b58e5b6a37b33a997acd5fc248e0e79b3b6ab112e4cc5c29', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-07 08:55:30', '2019-10-07 08:55:30', '2020-10-07 10:55:30'),
('c815ae5bad027d34a7ba46c7022bd29082091c0b84f6a12a931898a71b6db7b1bbf8534943b189ec', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-03 10:44:09', '2019-10-03 10:44:09', '2020-10-03 12:44:09'),
('c834a32504a626042b5ca7bc245d5f6becf6b3e1f247703b6bb6bfe0c3492f81fe0e5aa65cefa507', 53, 3, 'ss@ss.ss Access Token', '[]', 0, '2019-10-29 10:37:45', '2019-10-29 10:37:45', '2020-10-29 12:37:45'),
('c8361e0ae9dadc4e44c5ce9bddc4c136bc236cb07e1aa3a0c2d4375adc4ccedd9819316e9a6cbb64', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-05 17:01:58', '2019-10-05 17:01:58', '2020-10-05 19:01:58'),
('c857a8279041eb1bdde693f68dbc572df9525673f3ef9c3b03205daa2753cc65caf6cb13eabeb342', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:39', '2019-10-01 12:48:39', '2020-10-01 14:48:39'),
('c900efc994a13142cdf34d0ce4836091f51b28e0027a978c81f378650323ecded7973dbf30886c47', 24, 3, 'Optional(\"sallyhisham4@gmail.com\") Access Token', '[]', 0, '2019-10-01 12:47:03', '2019-10-01 12:47:03', '2020-10-01 14:47:03'),
('c9687ab4ff36f5c0a7e83b1fadb0cc92a91ffb2717b52850db215725b13598f7b4ffb2dcad49a5ca', 72, 3, 'eslamwaheed95@gmail.com Access Token', '[]', 1, '2019-11-06 11:19:22', '2019-11-06 11:19:22', '2020-11-06 13:19:22'),
('caeeb2995b740b131cadb445e1191a58368ab25b1c8e4b587d5dad08310b7f4458ff551405919f0e', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-16 08:26:35', '2019-10-16 08:26:35', '2020-10-16 10:26:35'),
('cc551ecd98a061b12856ee9bc272ec9ec75e8884daed9e9c119f114b5de2326984ae1efbd7fb196e', 31, 3, 'sa@sa.com Access Token', '[]', 0, '2019-10-01 22:09:12', '2019-10-01 22:09:12', '2020-10-02 00:09:12'),
('cc8158911bc6e05f99b70402b8ba92de60c16f3c3b9b7a032b9133556a5e0148254a3e1bc3ca3c5f', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-15 08:16:58', '2019-10-15 08:16:58', '2020-10-15 10:16:58'),
('ccbe5c6a285aa05e283f2f08f1234683b89b8dd45cfa71e0f35aac8617d9974b4cea0f93e6017ea0', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-05 16:49:02', '2019-10-05 16:49:02', '2020-10-05 18:49:02'),
('cd522509f4bd892a7633d19cb8de9ba98a4b5730117dc5677d51f569daeb2ac276a53b5daf68db95', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-11-04 11:56:45', '2019-11-04 11:56:45', '2020-11-04 13:56:45'),
('cdb6b7a763f862d9c4350a3d621c678dc22255a0e58371c919ef7d3e320f72da1d219326ed81dd59', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-29 02:10:15', '2019-10-29 02:10:15', '2020-10-29 04:10:15'),
('cdc14302fe9c2aa94a3d4976eec6be8513b3a2fc9d46bd1c8eb49361bdce43ea210ecbcf001fc942', 68, 3, 'eslamp@p.com Access Token', '[]', 0, '2019-11-09 15:28:24', '2019-11-09 15:28:24', '2020-11-09 17:28:24'),
('ce883b03d6d277c8d33761baf7769322890ac7a4c6f0bef229e06ba15256c29fe5f3436749e6e02a', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:38', '2019-10-01 12:48:38', '2020-10-01 14:48:38'),
('ce8a8201e5452047926e17860f104bc14ddfabf7cc6aa8fd708501b33de603bd8480898e81043b6d', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-13 21:02:06', '2019-10-13 21:02:06', '2020-10-13 23:02:06'),
('ceb2d266258dcab6550a5f500211cc741d1a1364a6a52aa7a23fdf831e30962ce98445ef440aa6d2', 72, 3, 'eslamwaheed95@gmail.com Access Token', '[]', 1, '2019-11-06 12:10:19', '2019-11-06 12:10:19', '2020-11-06 14:10:19'),
('cf13ed8bf2c1e8023442038825ff13432c31dda290ec4ee54de6a4001aacf2b716af29819b7bf645', 63, 3, 'TutsForWeb', '[]', 1, '2019-10-30 08:45:31', '2019-10-30 08:45:31', '2020-10-30 10:45:31'),
('cf71ff569355345c040ee32f5c678f664f56d0b8b7786cecb6b821afba76610857be3a47f34508b6', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-29 16:25:12', '2019-10-29 16:25:12', '2020-10-29 18:25:12'),
('d0401580dfdee4bb511898289e1aa7b09db0393543bde23962e677f93624ea4df449e683605a6fea', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:31', '2019-10-01 12:48:31', '2020-10-01 14:48:31'),
('d0777a1a05d8cd1ff8d4c0729a583d07931dde53090b070fe47061c85d48cf5d7223ed3a4d24be96', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-30 07:05:35', '2019-10-30 07:05:35', '2020-10-30 09:05:35'),
('d096a41c85e8847ed7751cfa5e749ef96acdad10bf12a1347f47ff9201beac8bfada02e25d7da604', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-08 13:23:48', '2019-10-08 13:23:48', '2020-10-08 15:23:48'),
('d09806908b0d2bdf44b61cbe65349a45a7f6d25737c8e9cc3ce303282dbe171c0d77ae488d978f5f', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-10-30 10:19:41', '2019-10-30 10:19:41', '2020-10-30 12:19:41'),
('d18a3130dd9e99553e6f9a4aed413024517de678a9785ea789328613e245fe9a8798378a55bce779', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-15 10:36:49', '2019-10-15 10:36:49', '2020-10-15 12:36:49'),
('d1b2930d01bf103055459445da80292fc2e91bad421e71f673841f3fe84bb5ce1bbe04d33a7d1b90', 74, 3, 'TutsForWeb', '[]', 1, '2019-11-06 15:30:11', '2019-11-06 15:30:11', '2020-11-06 17:30:11'),
('d2e9d64d6898870c2af2a49c0523d0eb758fb79c09d9e60d9a50ef02fe4e5cf1755952978fae4818', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-11-05 12:30:17', '2019-11-05 12:30:17', '2020-11-05 14:30:17'),
('d373615a7950bcd440a42a5000bf5abdb25794e83d1a6c38b1b9df756d7c41337f0499b189532d61', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-11-04 11:57:01', '2019-11-04 11:57:01', '2020-11-04 13:57:01'),
('d3ad59e121295415ecb0bc5279d4ef5c2bb160997fb5dc6eb14f6a3ec594414055650345410bea45', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-30 07:19:12', '2019-10-30 07:19:12', '2020-10-30 09:19:12'),
('d5d941e53de5fdbd5b7475ef65c956bd012d236accce4c1e675c3cf9d56dd6bd070d79d033d6d01c', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-29 13:25:39', '2019-10-29 13:25:39', '2020-10-29 15:25:39'),
('d6c87a3562cd7128ec3b10e5613d09f7de85b6143fe3ab1588d7a3571f9ef2e83b44c55d35956030', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-07 09:10:46', '2019-11-07 09:10:46', '2020-11-07 11:10:46'),
('d7453c6c0788b3e662de46d6b5c392ab2834ccf9967d8bf93e6c5100f475cc8f210f28553b02c1dc', 3, 1, 'sally@doctor.com Access Token', '[]', 0, '2019-09-22 12:58:58', '2019-09-22 12:58:58', '2020-09-22 14:58:58'),
('d77b33ddc6bcdf4bee369bb7e598914a614a6dea3f6b05e1a62edb511afbb86c378bfcd10767f9d2', 52, 3, 'test@test.test Access Token', '[]', 0, '2019-10-21 08:14:02', '2019-10-21 08:14:02', '2020-10-21 10:14:02'),
('d79de609af0415a3709b9b6decffef0db2a29aeae2e94e967ed03ed8a19c4b29122a8bbd7163c13b', 24, 3, 'Optional(\"sallyhisham4@gmail.com\") Access Token', '[]', 0, '2019-10-02 10:16:06', '2019-10-02 10:16:06', '2020-10-02 12:16:06'),
('d83a5bb04d5a2017cea0446f9d5b2f83fd575ba9ef7d3b75411d43473d55999a84e367038f38c173', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-03 10:41:05', '2019-10-03 10:41:05', '2020-10-03 12:41:05'),
('d881e25642fc0e31367c234633557c7506d35aedd219881df2c94ef83271565ae0dbb44dd8be72c7', 18, 1, 'TutsForWeb', '[]', 0, '2019-09-22 08:57:57', '2019-09-22 08:57:57', '2020-09-22 10:57:57'),
('d96e75df4d7abaecb495d223befb6a5b42b9c1e57c96848189a1359d50fecd8813ff948965ceb156', 3, 1, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 06:58:09', '2019-09-23 06:58:09', '2020-09-23 08:58:09'),
('d98ef2b21de84d46263235799ebb5ecdcc9385a820dc5a5f2fc4f07038d9a8e019f2f2e528f1eef4', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:50:56', '2019-10-01 12:50:56', '2020-10-01 14:50:56'),
('da30eb7964c7f52eb1917b76afc1d40f82769f0bbcfb5365e829c9b0088d1e20041083bcdaaeb1f3', 78, 3, 'TutsForWeb', '[]', 0, '2019-11-21 09:30:54', '2019-11-21 09:30:54', '2020-11-21 11:30:54'),
('da32a5f4949f660531457cf5932258f4f473c8e548683214da05fdcdb4aa548b53f46b9a50cf7f21', 6, 1, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 04:21:49', '2019-09-23 04:21:49', '2020-09-23 06:21:49'),
('da72a430e73cad07f60fb22de41e30b75bae41694943c9a0e0e22265d19048475960370d2a57f045', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 1, '2019-11-04 22:27:35', '2019-11-04 22:27:35', '2020-11-05 00:27:35'),
('db52e62df74d5a5d2f16924d524e7ca6ca699733e6a633ccd36e2081c3addc19a2cce6440067c0d8', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:30', '2019-10-01 12:48:30', '2020-10-01 14:48:30'),
('dc8c32cf6b15b40b1d6321ba70d2825f9c89f62b972c5e6b37167fc42a68a25cac3a5d731cb181ea', 72, 3, 'eslamwaheed95@gmail.com Access Token', '[]', 1, '2019-11-06 11:14:48', '2019-11-06 11:14:48', '2020-11-06 13:14:48'),
('dccbe4be26dc3a816e68a5359b0514d80c47538e8fe4923a0a448421fdac75c2ea81ca60a86d626e', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-15 11:08:56', '2019-10-15 11:08:56', '2020-10-15 13:08:56'),
('dce0a7e2cabd6888a8f4e523912afb83081391cab6cfb3cb633d94bbdd2966782c250aa0b06234fa', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:40', '2019-10-01 12:48:40', '2020-10-01 14:48:40'),
('dce47903563eb464027d7665fb2e9a370b56d45d7badc96b7aa8da57e7b68fcfe0119a72ff724245', 43, 3, 'bmf_55555@yahoo.com Access Token', '[]', 0, '2019-10-15 09:30:14', '2019-10-15 09:30:14', '2020-10-15 11:30:14'),
('dd13e8263f94583f4ddc9443e65a43b1bec8020c2f278d3447c2959d6e3627aac33f5e3f222c5005', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-02 12:50:58', '2019-10-02 12:50:58', '2020-10-02 14:50:58'),
('dd89af79082b319cc41d1cf86ba619e06049a72a34ae6a1251afdf591326180569ecc9ae3e31fa72', 15, 3, 'mohannad2229@s.com Access Token', '[]', 0, '2019-09-23 07:05:01', '2019-09-23 07:05:01', '2020-09-23 09:05:01'),
('ddf7d6240087be251224cce4f830fb5fb1fa4c989f75f504eb64b4908efad4434b89da54166c7266', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-03 08:04:22', '2019-10-03 08:04:22', '2020-10-03 10:04:22'),
('de86a91fae2eda97eb53bf42a2b7a87a2264269ae44c847e81e7aacca02690c5c3bce9fa0b23a372', 43, 3, 'bmf_55555@yahoo.com Access Token', '[]', 0, '2019-10-07 17:36:35', '2019-10-07 17:36:35', '2020-10-07 19:36:35'),
('debc75320660a7711af1bf696db10743742e9cdca020f9d75dd65851a75fa5795b333ffaadadde5c', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-30 06:08:53', '2019-10-30 06:08:53', '2020-10-30 08:08:53'),
('deff65b06015b06f2df8b3a347bb8bb08971cdccb559316865150b0fc66a9bb721c9397f8862ffb1', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:40', '2019-10-01 12:48:40', '2020-10-01 14:48:40'),
('df1364d20d488c8ed00b4de3732ce3e8ba3464c663be852446805e75343a1985a9ab2d91edb03cbe', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-03 08:32:20', '2019-10-03 08:32:20', '2020-10-03 10:32:20'),
('e07cc120c44af11f1a2a2592ac451f9fe2690a3a53b89adfe94536176a6e7e86800276123028aa30', 52, 3, 'TutsForWeb', '[]', 0, '2019-10-21 08:13:35', '2019-10-21 08:13:35', '2020-10-21 10:13:35'),
('e0b84b178bc224b9c35a7ea9850183a6edc692c18f93ffe651cfa19eaa1e356f5135aab58289eea8', 72, 3, 'eslamwaheed95@gmail.com Access Token', '[]', 1, '2019-11-06 14:03:49', '2019-11-06 14:03:49', '2020-11-06 16:03:49'),
('e0cfd8b1d7c9888efff4fde0a5190823522a988f4c97282c9e4481a6203410e5f530c1161a8f20fd', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-15 08:13:58', '2019-10-15 08:13:58', '2020-10-15 10:13:58'),
('e10eb7a30e0fcb7e48b2c280148c5da2a000942bfdaf3e6adbecccb838f45d4dfbd052cb9c9f9efb', 67, 3, 'eslamd@d.com Access Token', '[]', 0, '2019-11-12 23:42:06', '2019-11-12 23:42:06', '2020-11-13 01:42:06'),
('e11616c5fc05bbf6bc8dc69b27117c61ae72f75d88b3b64c8904c0e1261110c16a06716c288cf652', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-09-23 08:10:58', '2019-09-23 08:10:58', '2020-09-23 10:10:58'),
('e1fcec32e3129206519d00165896d47b9c98a848ee2a697f3e05bb195571dc0f82efc5e145c502ae', 81, 3, 'TutsForWeb', '[]', 0, '2020-01-27 13:51:23', '2020-01-27 13:51:23', '2021-01-27 15:51:23'),
('e3289b6fd1b0c7d84f21b9d28f3a781766a55c0e4fde43f0e0c109767e4bab014095552d289a5813', 35, 3, 'TutsForWeb', '[]', 0, '2019-10-02 06:50:13', '2019-10-02 06:50:13', '2020-10-02 08:50:13'),
('e3bc9973dcd50559886465d14e89ee1af1f1306b96ef7db14eed6bdf6048eac038610762bedca1b2', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:07', '2019-10-01 12:49:07', '2020-10-01 14:49:07'),
('e4246f6446f3cc5a11ba118a68ceffd9a8b50822b6036bded77a486d253b4acca585402806087a75', 21, 3, 'TutsForWeb', '[]', 0, '2019-09-30 18:35:46', '2019-09-30 18:35:46', '2020-09-30 20:35:46'),
('e4b933c0e28669158721c66f92c7d2ee62ab64315a915834b18b9f4eea038cfd0a32b90852895f37', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 10:09:21', '2019-09-23 10:09:21', '2020-09-23 12:09:21'),
('e59d05ca3fd5bc318cebccd9d8bdeb3420f9b53a7315af739cbaddd3f5b18295262aec2dd7023226', 65, 3, 'sally_uni@yahoo.com Access Token', '[]', 0, '2019-11-04 11:26:52', '2019-11-04 11:26:52', '2020-11-04 13:26:52'),
('e5a5a5ea589048b68a0f07284b4484a76defdbee7e676d8dadaed86eaa5e131443aa8004fc252e3c', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-02 13:10:19', '2019-10-02 13:10:19', '2020-10-02 15:10:19'),
('e61590bbbcf02b7d606706348e0b8f46bee110a4be28940c9aafc71a945550b0835eed2a79c7cc11', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-16 07:54:41', '2019-10-16 07:54:41', '2020-10-16 09:54:41'),
('e6832e3f99d482eccffa9243576518b1c7e2e5544fae1f67a2308a0489ed4d6f4edfd3d3c3dc1d46', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:50:58', '2019-10-01 12:50:58', '2020-10-01 14:50:58'),
('e6e2dcf941424020fde85f138472dbe65653e94ddd770857551089574afb27ab3dfac6fdf2dceebd', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-13 00:17:28', '2019-10-13 00:17:28', '2020-10-13 02:17:28'),
('e6f0f5eb0ea94c82b1aa0042a6d5ec35850266b612c841880d0eee35cb41c47c8c6ff0826ab610dc', 17, 3, 'eslampatient@patient.com Access Token', '[]', 1, '2019-10-24 13:09:53', '2019-10-24 13:09:53', '2020-10-24 15:09:53'),
('e71185f9f37fa70d99bb34961722c43cd4ba3afbb8c28bf01de8ce5fbc7e01f4648b3330f475f3cc', 70, 3, 'TutsForWeb', '[]', 1, '2019-11-04 11:57:28', '2019-11-04 11:57:28', '2020-11-04 13:57:28'),
('e7a5172036557f85d9a8e68263e6b32cfffb036ec6c374fb5888da1374df701702661b221ec343df', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-09 10:24:15', '2019-10-09 10:24:15', '2020-10-09 12:24:15'),
('e7add95fad7d7b3e389a43357c0d0532219066c89a9895e62e17c0b9181c69c9f5d3ad369a312426', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-01 13:49:35', '2019-10-01 13:49:35', '2020-10-01 15:49:35'),
('e9a6e6ff92c11ceafac3e352b71458fd1c52de85902166e8bd81dadc09a0ccc88259878586e04931', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:26', '2019-10-01 12:48:26', '2020-10-01 14:48:26'),
('e9de8ca47a51cd6e19a930028d54f5c83f713319d0fca6344631068bb5ed50f722230f0ff632da19', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 10:08:42', '2019-09-23 10:08:42', '2020-09-23 12:08:42'),
('ea6a4d0f1fea1a4208624f74dc5a22c9cd59885844c2a367b514691e5fcca5ed417df9e2516341fc', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-03 18:47:18', '2019-11-03 18:47:18', '2020-11-03 20:47:18'),
('ea8d69c4accb25fb01c623d3d55c7c14e1df531b99711114fdb9f5d503019194f0deda814dc51177', 67, 3, 'eslamd@d.com Access Token', '[]', 1, '2019-10-30 11:32:17', '2019-10-30 11:32:17', '2020-10-30 13:32:17'),
('eaf05dc929781fc20fed9bb75689912871600bacff0d5a23390733aa542303fe7bc7041e2f139c37', 43, 3, 'bmf_55555@yahoo.com Access Token', '[]', 0, '2019-10-07 17:37:23', '2019-10-07 17:37:23', '2020-10-07 19:37:23'),
('eb71ba59ebaf4b6d6b25103ff8b6e7fe9cfe781e144fae4007ce52f61dbccf65c97e990471d0a69c', 17, 3, 'eslampatient@patient.com Access Token', '[]', 0, '2019-10-03 06:48:59', '2019-10-03 06:48:59', '2020-10-03 08:48:59'),
('eb72586e84d232b460483075ece5908c1e0fc2061126d7669b061fed11b668515602bac9844ea9c8', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-04 16:50:13', '2019-10-04 16:50:13', '2020-10-04 18:50:13'),
('eba11ae1ee58e8f2252c68aa3e111b5225f7d4ab5da191317548204b94fa82effd97b1326d04fabb', 83, 5, 'TutsForWeb', '[]', 0, '2020-05-05 19:51:46', '2020-05-05 19:51:46', '2021-05-05 21:51:46'),
('ec6d7e4092c07d0b63b8450fcbde8090009ce28f79addc922f0d3e550a0fc23d2694d1c10884dc7e', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 17:56:22', '2019-09-23 17:56:22', '2020-09-23 19:56:22'),
('ed04ed66b5748b9731dc6d5bbe8ab5f1691183b23d7633e2e1aba8a73e281c516e9fdd8637116ef5', 73, 3, 'sameer.ahmad@perfect.com Access Token', '[]', 1, '2019-11-06 14:12:46', '2019-11-06 14:12:46', '2020-11-06 16:12:46'),
('ed421aefebf3c6457d30ee9f02b5d94c90cd8ed809b5963aed73a5f37fc958d08139d38e4e1f7093', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:28', '2019-10-01 12:48:28', '2020-10-01 14:48:28'),
('ed8b60f8920f4788a2e8133808843b83b18cb93e22d7e132d334c9063055fc45799e678649b2550b', 64, 3, 'saly@perfect.com Access Token', '[]', 0, '2019-10-31 07:13:56', '2019-10-31 07:13:56', '2020-10-31 09:13:56'),
('ee235fba925d770ec6828f86ba416248f05967b699c90b5a34a9abb8ced3676ffa1d1d991b321cb8', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-13 20:52:05', '2019-10-13 20:52:05', '2020-10-13 22:52:05'),
('ee812b945d6145088c12d5ef349bc85f3de61efa188ec0d64ae3101d0ae964c65a0d9861c2c5fc27', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 10:18:19', '2019-09-23 10:18:19', '2020-09-23 12:18:19'),
('ee9712826ca4777cd46e4de4f0e0a9f6a2a2598bb827f93119a9295a6df80c542b5e31f6e0bc75b6', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-15 11:52:26', '2019-10-15 11:52:26', '2020-10-15 13:52:26'),
('eebe5f45176e19860b91e3def3e1f712e893d1e248dae57ba4e83234e6fc13542e307973a4ecf3e6', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-05 17:15:31', '2019-10-05 17:15:31', '2020-10-05 19:15:31'),
('eecb3c3bec2d995d1e81223cd36bb39b74ddca16032a676fdfd728769881dd57094db098c7c84e91', 3, 3, 'sally@patient.com Access Token', '[]', 0, '2019-10-08 10:29:43', '2019-10-08 10:29:43', '2020-10-08 12:29:43'),
('eed7ec19f0efe120e474d75805e6b237ca69bc77b9e05d330c72abb979adca9c19867f8b9b868b11', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 10:08:08', '2019-09-23 10:08:08', '2020-09-23 12:08:08'),
('ef84c16c02170c423e68f91e12fa7ee7291e0936391e7551a85d5be4c400af43fcdb1aae4df80958', 67, 3, 'eslamd@d.com Access Token', '[]', 1, '2019-11-10 19:02:00', '2019-11-10 19:02:00', '2020-11-10 21:02:00'),
('f0e32838b0059745cd5600e03dcb2acf417734675b61cc643a63d746608836c142ee4c4d65cdf318', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-15 12:33:22', '2019-10-15 12:33:22', '2020-10-15 14:33:22'),
('f3e23240cc38e0a6cb366459f385a1eef0b086123558374c60fa3628f0ddcc9852b0350c856f4079', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-17 08:23:03', '2019-10-17 08:23:03', '2020-10-17 10:23:03'),
('f56b8ca7e1df2c9d481590370bf87266ed16335e91ca77c40eddad9d063e15b5791c79a1d48d2d2a', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-07 09:44:51', '2019-10-07 09:44:51', '2020-10-07 11:44:51'),
('f5d103bf27569d72854e71dd63ef61b702d0b97b828f013870654f86dab7dbb8747db214e633cecd', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-17 09:49:27', '2019-10-17 09:49:27', '2020-10-17 11:49:27'),
('f64dfce27d32b632c713f4f2c6861aabc0d78beb000d54c2156d7457bce741a71f31530a8313bbd9', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 07:02:24', '2019-09-23 07:02:24', '2020-09-23 09:02:24'),
('f666641c62be3c477943776fe116d5b59c2c48fcbc8a3b21e24eeca0d3d9fdb61399ff56153327a0', 42, 3, 'ssd@ssd.ssd Access Token', '[]', 0, '2019-10-13 21:17:12', '2019-10-13 21:17:12', '2020-10-13 23:17:12'),
('f66eba7e9f4f54d35f582f1d2058239b0f4df5746c896499f75ed48bfc684bd76d8f4b42fd8cb04b', 19, 3, 'hend@yahoo.com Access Token', '[]', 0, '2019-10-07 13:05:41', '2019-10-07 13:05:41', '2020-10-07 15:05:41'),
('f67f3fbd3cc31a61fea8564d79f01f023726fa4e5baeb8a8aa88abb999d70fcf4b9add42e5d2e9d7', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:49:12', '2019-10-01 12:49:12', '2020-10-01 14:49:12'),
('f715a7d003e2ed6cf4859a51f634a1a86e4a65fb70044ca3605519716e42cb94f6e8748525e20c3e', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-07 10:38:41', '2019-10-07 10:38:41', '2020-10-07 12:38:41'),
('f7343aed2b9364a981210efac68aea7992840c3f9637178426fe513df7e2c83d968de3a17b8637d4', 48, 3, 'TutsForWeb', '[]', 0, '2019-10-15 08:19:02', '2019-10-15 08:19:02', '2020-10-15 10:19:02'),
('f749fbb0a6fdedbf2cc05e7a322f5070650ce240ea0cbab0959d2343aa709fa1b0cdeb6b2484f1a7', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 1, '2019-10-13 00:21:47', '2019-10-13 00:21:47', '2020-10-13 02:21:47'),
('f76b4edea0efc1d5bb79be3f4396fda28519a4e2047bc1f954fae48edf9a1d9f8c33d946b39caea7', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-15 09:19:59', '2019-10-15 09:19:59', '2020-10-15 11:19:59'),
('f8c43a1abc00e5181cd311b684844b291d52be073caeb4c97f85b0b6616bc3daaaf67b905abcead4', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 1, '2019-09-23 08:32:29', '2019-09-23 08:32:29', '2020-09-23 10:32:29'),
('fa21ab19afa6e753125053071f9b59e17de0c772cdb5e9764d7dcf50c293a54502af127f4dfe79e9', 38, 3, 'TutsForWeb', '[]', 0, '2019-10-02 12:58:13', '2019-10-02 12:58:13', '2020-10-02 14:58:13'),
('fa3e89acc784438e6a87c47ca0472153da88f53cc9694c7c3dfaeb0fffaa5abf6c538c5981197598', 49, 3, 'zoma128@gmail.com Access Token', '[]', 0, '2019-10-15 08:37:03', '2019-10-15 08:37:03', '2020-10-15 10:37:03'),
('fa565c8636ea86f94cefcab3d203b63e979b11874aa17aef48affe130eb1f3da16a82e8d7a63154e', 3, 3, 'sally@doctor.com Access Token', '[]', 0, '2019-10-02 08:11:48', '2019-10-02 08:11:48', '2020-10-02 10:11:48'),
('fa68592d5d1996f2cad76595ad2784f8b80fea09806eca7d601d2761811bba9f29d2c9c25479d11e', 43, 3, 'bmf_55555@yahoo.com Access Token', '[]', 0, '2019-10-14 11:46:22', '2019-10-14 11:46:22', '2020-10-14 13:46:22'),
('fabaa9aeb59598ec1fbebdff96a9a7b78109fd4242efda18c291f8a8c36ca325b716fd386760d566', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:56', '2019-10-01 12:48:56', '2020-10-01 14:48:56'),
('fb75ab55aa87e6a49fe6f08c61b87b1bbc6e9ca76f5bdca8e287eccb40d973d6785f859ba946d63e', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-14 13:49:59', '2019-10-14 13:49:59', '2020-10-14 15:49:59'),
('fb8cfe5a3baf7d1fe3bc9db5b70756c41f850bcdf7b0dc6b56d91afee7f1a9b8f923f322abb9ff56', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-17 12:37:53', '2019-10-17 12:37:53', '2020-10-17 14:37:53'),
('fbd001e92d1e5eaac10e992450d1e31757d0fa23c9726b27ae5fa1fcaf8ca069bdfc554af851cb87', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:30', '2019-10-01 12:48:30', '2020-10-01 14:48:30'),
('fbfeb5f72381eccf4273ace4000a666a68030080b1642decef6cbefb31a69bb17cc909b1e0ff0e73', 18, 3, 'eslamdoctor@doctor.com Access Token', '[]', 0, '2019-10-09 12:09:57', '2019-10-09 12:09:57', '2020-10-09 14:09:57'),
('fc677f3725cb2ce234967dca5336f61beb4faecc40b8045ed571873a44f17753da60d3d518f79bc5', 41, 3, 'ss@ssd.ssd Access Token', '[]', 0, '2019-10-21 09:02:18', '2019-10-21 09:02:18', '2020-10-21 11:02:18'),
('fd5fed72a8f36025c4400ef4f27d8c6ccab544eb46d99bd764346f45379527b12101dd81880a6226', 36, 3, 'TutsForWeb', '[]', 0, '2019-10-02 10:16:58', '2019-10-02 10:16:58', '2020-10-02 12:16:58'),
('fd6d536ceaff48a4b0372558ae73c37b181f64316974ccdad63f14e25ea3d7fb94debbfa01632c88', 22, 3, 'Rami.allaf@gmail.com Access Token', '[]', 0, '2019-10-01 12:48:30', '2019-10-01 12:48:30', '2020-10-01 14:48:30'),
('fd891d94489cc2da484441c994c63f179a64dfa469a1b385eaeb1f4efa67c85dd027fa29cb31ff31', 68, 3, 'eslamp@p.com Access Token', '[]', 1, '2019-11-10 18:59:27', '2019-11-10 18:59:27', '2020-11-10 20:59:27'),
('fea317fb22d1199f51919f691d3a998b8d20a08c3fb9dbc5455a75e0abac474cb8ae959f65ae20ff', 6, 3, 'sally@patient.com Access Token', '[]', 0, '2019-09-23 09:54:49', '2019-09-23 09:54:49', '2020-09-23 11:54:49'),
('ffd1bd93a770fe592a8992bdf1cd2cf4d2166b99abba5fb2e149851a1ffabd82f1b809cad0b8b779', 1, 3, 'doctor@doctor.com Access Token', '[]', 0, '2019-09-24 21:51:51', '2019-09-24 21:51:51', '2020-09-24 23:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'wFkkxiKW0eFj7MQALHbfsH5IJcY31RbYynKreBBl', 'http://localhost', 1, 0, 0, '2019-09-15 11:15:17', '2019-09-15 11:15:17'),
(2, NULL, 'Laravel Password Grant Client', 'RRiJptAKO2bMNohGShqLkiMpQPeUvniig1nySwuD', 'http://localhost', 0, 1, 0, '2019-09-15 11:15:17', '2019-09-15 11:15:17'),
(3, NULL, 'Laravel Personal Access Client', 'Ge3zMeXwYDgpnuqzZ7V7BgdtTiE2SC1x5YRtmoLP', 'http://localhost', 1, 0, 0, '2019-09-23 06:59:10', '2019-09-23 06:59:10'),
(4, NULL, 'Laravel Password Grant Client', 'IfSW5CkuoKR43L5Sm6UROqbbft7DkwcmkmAMg41A', 'http://localhost', 0, 1, 0, '2019-09-23 06:59:10', '2019-09-23 06:59:10'),
(5, NULL, 'MyClin Personal Access Client', 'bcuvXHQ7H1n3w2RKMP48Kj9aM4Lbz5JJWihnzzuA', 'http://localhost', 1, 0, 0, '2020-03-22 23:28:12', '2020-03-22 23:28:12'),
(6, NULL, 'MyClin Password Grant Client', 'AlCJRySc9UtRhtSFM208puWgUyY6KHKstoOrN6f8', 'http://localhost', 0, 1, 0, '2020-03-22 23:28:12', '2020-03-22 23:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-09-15 11:15:17', '2019-09-15 11:15:17'),
(2, 3, '2019-09-23 06:59:10', '2019-09-23 06:59:10'),
(3, 5, '2020-03-22 23:28:12', '2020-03-22 23:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ss@ssd.ssd', '$2y$10$DQ2in77EiW9hsrXTvOlhyuIGeNlzSa/sDXBsvpiI8NjMghuNGh.lm', '2019-10-09 10:21:49'),
('ssd@ssd.ssd', '$2y$10$qlvNA.CW38sVX.3BucbmbuBkvI580x9v54iWmErigJVeCgyRxZHpO', '2019-10-09 10:22:05'),
('eng.noda102@gmail.com', '$2y$10$qhtWIuO2Dr5/vGorwrQ6luwBh9pnsRSjJWkjhu7RTUlkwedJaRin2', '2019-10-10 09:54:19'),
('zoma128@gmail.com', '$2y$10$MhairnHbALRxfkQvSN6IMurwKLWqZX3Vl9OTiADTBbv0RDlMV997e', '2019-10-21 08:12:37'),
('doctor@doctor.com', '$2y$10$nt6LZ/IewPlQJ4ytBY5S5eB9DBziY8rMJxx8psVzcb1k3km9VhiuW', '2019-10-21 13:02:15'),
('mohannedelemary2@gmail.com', '$2y$10$3BSwnvA67l8iyI14OIpWUe1YUyxJNuzwT8jR9fooVUhHmL1fR7hGW', '2019-11-10 03:54:26'),
('shady.essam@perfect.com', '$2y$10$FnGkAsrxBGo6dqqAoUe0sOzjsN.XvVuyocdwSlxsfvNTSbBrlLWvi', '2019-11-12 13:41:56'),
('eslamwaheed95@gmail.com', '$2y$10$xM9B42nAQq8JVjrAzauKUujKOj15mfqi8rS545WH9ODxz6ogAX.Z2', '2019-11-13 09:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payed_for_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payed_for_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `confirmed_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `region_en`, `region_ar`, `created_at`, `updated_at`) VALUES
(1, 'Cairo/Faysal', 'القاهره/فيصل', NULL, NULL),
(2, 'Cairo/Giza', 'القاهره/الجيزه', NULL, NULL),
(3, 'Cairo/Mohandseen', 'القاهره/المهندسين', NULL, NULL),
(4, 'Cairo/Dokki', 'القاهره/الدقي', NULL, NULL),
(5, 'Alexandria/Stanle Bridge', 'الاسكندريه/كوبري ستانلي', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int(11) NOT NULL COMMENT 'from 1 to 5',
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `content`, `rate`, `patient_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 'helllooooo', 5, 63, 58, '2019-10-30 09:44:47', '2019-10-30 09:44:47'),
(2, 'Trtrtrt', 3, 65, 64, '2019-10-31 07:12:32', '2019-10-31 07:12:32'),
(3, 'text', 4, 68, 1, '2019-11-02 12:18:22', '2019-11-02 12:18:22'),
(4, 'hello', 4, 68, 67, '2019-11-04 08:33:44', '2019-11-04 08:33:44'),
(5, 'Heinz', 4, 65, 64, '2019-11-04 11:32:36', '2019-11-04 11:32:36'),
(6, 'Test.', 4, 65, 67, '2019-11-04 11:34:03', '2019-11-04 11:34:03'),
(7, 'Hen', 4, 69, 64, '2019-11-04 11:53:50', '2019-11-04 11:53:50'),
(8, 'Jgfj', 4, 65, 58, '2019-11-04 23:00:34', '2019-11-04 23:00:34'),
(9, 'Hkj', 3, 65, 64, '2019-11-04 23:07:44', '2019-11-04 23:07:44'),
(10, 'Not good', 1, 68, 67, '2019-11-05 10:02:41', '2019-11-05 10:02:41'),
(11, 'hi', 4, 68, 67, '2019-11-05 11:08:42', '2019-11-05 11:08:42'),
(12, 'hi sally', 4, 68, 64, '2019-11-09 20:14:30', '2019-11-09 20:14:30'),
(13, 'Hi', 5, 76, 56, '2019-11-12 13:30:31', '2019-11-12 13:30:31'),
(14, 'vghhh', 4, 81, 1, '2020-01-27 13:55:12', '2020-01-27 13:55:12'),
(15, 'maha\'s review', 5, 88, 56, '2020-08-10 07:39:35', '2020-08-10 07:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Doctor', NULL, NULL),
(3, 'Patient', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `linkedin`, `youtube`, `whatsapp`, `instagram`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://www.youtube.com/', 'https://web.whatsapp.com/', 'https://www.instagram.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_lists`
--

CREATE TABLE `subscription_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_lists`
--

INSERT INTO `subscription_lists` (`id`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'owner@example.com', '2020-09-05 06:24:48', '2020-09-05 06:24:48', NULL),
(2, 'eeeeeeee@kjkjk.j', '2020-09-05 06:51:52', '2020-09-05 06:51:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `html` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `html`, `name_en`, `name_ar`, `status`, `image_url`, `created_at`, `updated_at`) VALUES
(1, '<h1>Apadsofi adsfklmasdf</h1>', 'First Template', 'القالب الأول', 1, '1.PNG', NULL, NULL),
(2, '<h1>Apadsofi adsfklmasdf</h1>', 'Second Template', 'القالب الثاني', 1, '2.PNG', NULL, NULL),
(3, '<h1>Apadsofi adsfklmasdf</h1>', 'Third Template', 'القالب الثالث', 1, '3.PNG', NULL, NULL),
(4, '<h1>Apadsofi adsfklmasdf</h1>', 'Fourth Template', 'القالب الرابع', 1, '4.PNG', NULL, NULL),
(5, '<h1>Apadsofi adsfklmasdf</h1>', 'Fifth Template', 'القالب الخامس', 1, '5.PNG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 3,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ar',
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone_number`, `balance`, `provider`, `provider_id`, `image`, `address`, `status`, `role_id`, `country_id`, `department_id`, `birthdate`, `remember_token`, `created_at`, `updated_at`, `lang`, `country`, `city`) VALUES
(1, 'doctor', 'doctor@doctor.com', '$2y$10$KoUNhUF2hh7T8JYAIM0UbOVYN5dR1BcWtLmt2HrMC/f5yB8nausM2', '0111895245', 0.00, NULL, NULL, '/uploads/img/1_1568544023/profile_picture/1_profilePicture_19837793061568544023.jpg', 'asdasdasdads', 0, 2, 1, 1, '2019-07-02', '7olHz6BCZCruI1LMiqCfjC3HuvAX4gZC31LXjU0Xha6bJREqh94Bzf8qXiwv', '2019-09-15 08:40:23', '2019-10-28 13:24:36', 'ar', NULL, NULL),
(2, 'patient', 'patient@patient.com', '$2y$10$2Tng4InsiXK11sSuj3oPaeshBBSHVybkY6nSO8kxwR4zAUWjOwG7u', NULL, 0.00, NULL, NULL, '/uploads/img/1_1568544023/profile_picture/1_profilePicture_19837793061568544023.jpg', NULL, 0, 3, NULL, NULL, NULL, 'pBaa6YiQc2v9hXJvjNQaF6fdr40gTJnLAjob41HShHHSS1Bhz5fZlTNCR75I', '2019-09-15 08:40:23', NULL, 'ar', NULL, NULL),
(56, 'Rami Allaf', 'rami.allaf@gmail.com', '$2y$10$aT93F0LvTGa67CJ0xDlCfOwh.7SlguYSV8zwqlE2XySF9K8o9rOh2', '01158068370', 0.00, NULL, NULL, NULL, 'Mohandeseen', 0, 2, NULL, 2, NULL, NULL, '2019-10-30 08:38:06', '2020-08-24 09:00:26', 'ar', NULL, NULL),
(57, 'Ahmad Saed', 'a.saed@perfect.com', '$2y$10$KYjq9yW8LKXUeAl0xMsStuZYdYhjYJyjMrczU2wzvaVfHn/ZMvUs6', '0112233665588', 0.00, NULL, NULL, NULL, 'fffff', 0, 2, NULL, 2, NULL, NULL, '2019-10-30 08:39:09', '2019-10-30 08:39:09', 'ar', NULL, NULL),
(58, 'eslam test', 'ahmad.adel@perfect.com', '$2y$10$E2VvZ6gwUhCsz65M46AeXu52O.KiPIz9iusFlGglxN7ynHcrlKLJC', '00201022336655', 0.00, NULL, NULL, '/uploads/img/58_1572431994/profile_picture/58_profilePicture_19240697721572431994.png', 'faisal', 0, 2, 1, 2, '1995-02-16', NULL, '2019-10-30 08:39:54', '2019-10-30 09:32:21', 'ar', NULL, NULL),
(59, 'sameer ahmad', 'sameer@perfect.com', '$2y$10$reQmVweH3b6pAQrQu2e3/Of8CpxuB4WnMBeL6yT9XSjMaVNFYJ4x2', '02233665588', 0.00, NULL, NULL, NULL, '5555', 0, 2, NULL, 2, NULL, NULL, '2019-10-30 08:40:39', '2020-08-25 07:42:20', 'ar', NULL, NULL),
(60, 'Essam Allaf', 'essam@perfect.com', '$2y$10$eOHScirphb8EaeGCz1STKeUPW1E2AMwByLk/ULNXckFdEnmIepjPO', '01010203050', 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2019-10-30 08:42:27', '2019-10-30 08:42:27', 'ar', NULL, NULL),
(61, 'm mo7sen', 'm@perfect.com', '$2y$10$3GbfpvY672mjyh7WBkUbaOqQgLaQQBD1kG.dJGX1LmVcjWoJ5dmVG', '01515141516', 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2019-10-30 08:43:09', '2019-10-30 08:43:09', 'ar', NULL, NULL),
(62, 'eslamp', 'eslamp@p.con', '$2y$10$teaIrwNarBTNNmkuFoKd3e8O.n4zd7lO2vYRG63RiXue8rti1YCYG', NULL, 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2019-10-30 08:43:10', '2019-10-30 08:43:10', 'ar', NULL, NULL),
(63, 'Amira mahrous', 'amira@perfect.com', '$2y$10$7sxQbpNSA.y1odmn/3KStuBCDjFvKWwAPuS4noRLwuEV5CaRrX6p2', NULL, 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2019-10-30 08:45:31', '2019-10-30 08:45:31', 'ar', NULL, NULL),
(64, 'saly hisham gggg', 'saly@perfect.com', '$2y$10$B4I23tkUkopv6OT.HNu3eOdqfM1NVbn9EmikZsZ1eRUDZu3rNrQKi', '01213141516', 0.00, NULL, NULL, '/uploads/img/64_1572432439/profile_picture/64_profilePicture_11188293931572432439.jpeg', 'misr', 0, 2, 1, 1, '1998-10-30', NULL, '2019-10-30 08:47:19', '2019-10-30 12:58:13', 'ar', NULL, NULL),
(65, 'سالي هشام', 'sally_uni@yahoo.com', NULL, NULL, 0.00, 'facebook', '2525883564129464', '/uploads/img/65_1572433894/profile_picture/65_profilePicture_1166331001572433894.jpeg', NULL, 0, 3, 1, NULL, '2007-10-30', NULL, '2019-10-30 09:11:34', '2019-10-30 10:01:42', 'ar', NULL, NULL),
(67, 'eslam', 'eslamd@d.com', '$2y$10$ihIO7TSvfpFAr9YsptUMY.KbS8DAOVaVa0Z6R2g86vpHe7t6DdHY6', '01028289502', 0.00, NULL, NULL, '/uploads/img/67_1572442211/profile_picture/67_profilePicture_18856001591572442211.jpg', 'minia', 0, 2, 1, 1, '1995-02-16', NULL, '2019-10-30 11:30:11', '2019-11-18 07:25:35', 'en', NULL, NULL),
(68, 'Eslam', 'eslamp@p.com', '$2y$10$dM5pIXWc/kXzGWohy4jMFeYX1hPpkBzs.oYAa/5WdUyDgktkgsmXy', NULL, 0.00, NULL, NULL, '/uploads/img/68_1572704228/profile_picture/68_profilePicture_18081196781572704228.jpeg', 'eslam addresssssssssssss', 0, 3, 1, 1, '1995-02-16', NULL, '2019-11-02 12:17:08', '2019-11-18 08:40:48', 'en', NULL, NULL),
(69, 'sallyhisham', 'sallyhisham4@gmail.com', NULL, NULL, 0.00, 'google', 'Optional(\"112915072054142186165\")', NULL, NULL, 0, 3, 1, NULL, '2019-11-04', NULL, '2019-11-04 11:47:45', '2019-11-04 11:50:54', 'ar', NULL, NULL),
(70, 'Daly', 'aa@aa.aa', '$2y$10$rUuvRwIlxqnmycRMd4igsuO3Bt1gyxIcVyfpRg44I6POoTwIyooQy', NULL, 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2019-11-04 11:57:28', '2019-11-04 11:57:28', 'ar', NULL, NULL),
(71, 'mohsen', 'dd@dd.com', '$2y$10$h98o02sfhw.uQv6MyXCMMO44cmUL3QCnfB6pAoeNLC48J6ysetFFS', '1122', 0.00, NULL, NULL, NULL, '22', 0, 3, 1, NULL, '2019-11-13', NULL, '2019-11-06 10:06:56', '2019-11-06 10:17:11', 'ar', NULL, NULL),
(72, 'Eslam Waheed', 'eslamwaheed95@gmail.com', NULL, NULL, 0.00, 'facebook', '1273393239489114', NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2019-11-06 11:09:58', '2019-11-06 11:09:58', 'ar', NULL, NULL),
(73, 'sameer ahmad', 'sameer.ahmad@perfect.com', '$2y$10$ttF85sN3ZHi1aAOCApuo5.MJBCDTZ0OfE66GlEvHDKWXtoom53iLu', NULL, 0.00, NULL, NULL, NULL, 'october', 0, 2, NULL, 1, NULL, NULL, '2019-11-06 14:01:34', '2019-11-06 14:01:34', 'ar', NULL, NULL),
(74, 'samer mohana', 'samermohanna@perfect.com', '$2y$10$WmRWfuvIKGrdCbdrriUxVe4MHruX8N7DY2aomUiFaxXdRdcJkfFRm', NULL, 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2019-11-06 15:30:11', '2019-11-06 15:30:11', 'ar', NULL, NULL),
(75, 'زد', 'hh@hhh.com', '$2y$10$1dayNmiGKS9EC.uPmUBCT.Wyn8Sv6ffd1y7XIVVpSOBenmmPdmYa6', NULL, 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2019-11-06 15:38:21', '2019-11-06 15:38:21', 'ar', NULL, NULL),
(76, 'shady Essam', 'shady.essam@perfect.com', '$2y$10$3YyWo1se8qTOdWOXNegJ7.50aV2.rHHwtyxmexlvxUnVYVL71I1Wu', NULL, 0.00, NULL, NULL, '/uploads/img/76_1573140767/profile_picture/76_profilePicture_18633568701573140767.jpeg', NULL, 0, 3, 2, NULL, '1987-11-07', NULL, '2019-11-07 13:32:47', '2019-11-12 13:38:28', 'ar', NULL, NULL),
(77, 'Mohannad Elemary', 'mohannedelemary2@gmail.com', '$2y$10$9xEscrFzfG1VtO3I8VE07.Jk8KQsCKH.W25BytW60oSHe11thpd1G', NULL, 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2019-11-10 03:54:08', '2019-11-10 03:54:08', 'ar', NULL, NULL),
(78, 'Samir', 'samirabdelghaffar@outlook.com', '$2y$10$ETHlh4WXkmZnnEAei8lLtOGY4SJG2O2REutS/AEb7Dd2XApDxnKsS', NULL, 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2019-11-21 09:30:54', '2019-11-21 09:30:54', 'ar', NULL, NULL),
(79, 'aaaaaa', 'aaa@aaa.aaa', '$2y$10$fnNOv1hlYxK6.QJSx/GsBu.1GMA/WzJokTgA6hqil3r30KTXsM46S', NULL, 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2019-11-25 05:46:51', '2019-11-25 05:46:51', 'ar', NULL, NULL),
(80, 'John doew', 'john@hlgma.com', '$2y$10$r6SUwoJ/MTnMGSzSHKNhCO4/e2na8g2Sod54BoP0vzGiXF3d6rCmy', NULL, 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2020-01-02 11:53:38', '2020-01-02 11:53:38', 'ar', NULL, NULL),
(81, 'eslam', 'eslamwaheed@gmail.com', '$2y$10$BW17BGGkowUnVEnKvoQWJe4wftvi8XqDPylXf9pTRMMyMggn3jsrO', NULL, 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2020-01-27 13:51:23', '2020-01-27 13:51:23', 'ar', NULL, NULL),
(82, 'Samy Kandeel', 'engsamy.kandeel@gmail.com', NULL, NULL, 0.00, 'google', '103973851897201253257', 'https://lh6.googleusercontent.com/-B6ZuW5GeN0o/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJOtjS4XqpXtWEsC7Mtt57p7542b2g/photo.jpg', NULL, 0, 3, NULL, NULL, NULL, '0Ie4e3KMZrzlnzw1BueaTDzSLoZHSxNlZgGu2qDqm2chnkoKcTbr5Asulvcj', '2020-04-05 15:30:44', '2020-04-05 15:30:44', 'ar', NULL, NULL),
(83, 'john', 'john@gmail.com', '$2y$10$5Xo1el1F5AQJoy5zRBX2o.Gnzqw7G.gFF9MihTsWhUpLtZwCRBaTy', NULL, 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2020-05-05 19:51:46', '2020-05-05 19:51:46', 'ar', NULL, NULL),
(84, 'Ahmed Sooft', 'csmu1992@gmail.com', NULL, NULL, 0.00, 'google', '102408746796249422306', 'https://lh3.googleusercontent.com/a-/AOh14GiCdMeW3a5FdOLx59c6bbW2Tt-2NyrFByHwIhje8Q', NULL, 0, 3, 1, NULL, NULL, 'Ql5aRaeslVx3wwf1VSyexnnnzZk0SOCXL99wbcLKx93OsGKlQr3jpNujyEwJ', '2020-05-15 20:36:54', '2020-05-15 20:37:03', 'ar', NULL, NULL),
(85, 'sayed youssef', 'sayed.m.yousf@gmail.com', NULL, NULL, 0.00, 'google', '118373914645836569497', 'https://lh3.googleusercontent.com/a-/AOh14Gik3cGg7rky_oD-aw8moqZebI3a7Mrh_LztLhAx', NULL, 0, 3, 1, NULL, NULL, 'uHZXdI8qOZSlAaL0vFZQzPmSHuuCprRvf6HmMuwXWkuY9zRgbRQECtg049t3', '2020-06-03 14:37:54', '2020-06-03 14:38:15', 'ar', NULL, NULL),
(86, 'test', 'test@gmail.com', '$2y$10$kXVhmqQwuB4/2AyszqKxbeHGkZ0bdx3xEdni8ABfLhiH4P1LUB8Ci', NULL, 0.00, NULL, NULL, NULL, 'hellwan', 0, 2, NULL, 1, NULL, NULL, '2020-06-04 10:42:26', '2020-06-04 10:42:26', 'ar', NULL, NULL),
(87, 'Angela mahmoud', 'angela_diac@yahoo.com', '$2y$10$p9WcMO9oO0L.Rtij8BMRyOYy0q8Ksku2ijCzh8xrigiM1tYHxw88C', '535435345', 0.00, NULL, NULL, 'uploads\\img\\87_1591276173\\profile_picture\\87_profilePicture_3179313341591276173.png', 'fgfgrrrr', 0, 2, NULL, 4, '1978-06-29', NULL, '2020-06-04 11:09:33', '2020-09-05 19:27:28', 'ar', 'Denmark', 'Allingabro'),
(88, 'maha', 'maha@mailinator.com', '$2y$10$sT5xIGel85cJqRFgJGsN1.gHk22PxWKmgl7rQ.RqyFlSmfELcvvUG', '01011088902', 0.00, NULL, NULL, '\\uploads\\img\\88_1596970202\\profile_picture\\88_profilePicture_20119217861596970202.jpg', 'fgfgrrrr', 0, 3, 1, NULL, '1992-09-26', NULL, '2020-08-09 08:50:02', '2020-09-04 17:36:49', 'ar', 'Egypt', 'Giza'),
(89, 'test', 'test@mailinator.com', '$2y$10$Wz7Fn77aB.VfuG7NBrKKS.uD6Hyu0Rz8pJycMQX5BG83F/X0D9Nw6', NULL, 0.00, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, '2020-08-09 10:20:45', '2020-08-09 10:20:45', 'ar', NULL, NULL),
(90, 'omar hicham ahmed', 'omar@admin.com', '$2y$10$JCWuCAXQsiZ6e9E3vaN3G.4V5oMUuD.7Dl.kZ/G9UCaJW6HQpqQgy', '01011088902', 0.00, NULL, NULL, NULL, '45 street , test city', 0, 2, NULL, 4, '1978-06-29', NULL, '2020-08-17 11:40:16', '2020-08-20 12:51:25', 'ar', NULL, NULL),
(91, 'ahmed asim', 'asim@mailinator.com', '$2y$10$QNoBUdDZT9cEQmdJS2hAfejPVK1c8UgCvWoBHfAN6SSAvbsvasWy.', NULL, 0.00, NULL, NULL, 'uploads\\img\\91_1599248598\\profile_picture\\91_profilePicture_20722913531599248598.jpg', NULL, 0, 2, NULL, 2, NULL, NULL, '2020-09-04 17:43:18', '2020-09-04 19:10:09', 'en', 'Egypt', 'Giza'),
(92, 'Eric Drake', 'buqu@mailinator.com', '$2y$10$hIJZiT4haSYZA.a1O4Vqp.PUcV3EQqX9IsPQ5dPVnkzS..bVcVJrW', '+1 (817) 385-1692', 0.00, NULL, NULL, 'uploads\\img\\92_1599254949\\profile_picture\\92_profilePicture_1888533141599254949.png', 'Sequi proident temp', 0, 2, NULL, 2, '2020-09-10', NULL, '2020-09-04 19:29:09', '2020-09-05 11:26:53', 'en', 'United Arab Emirates', 'Abu Dhabi'),
(93, 'dodo', 'dodo@dodo.com', '$2y$10$8hZATHDsyyf6DGo0vehRBeg1iUWIiTJcUAV/Wcf.poyZKwlV2Olem', '59959959959', 0.00, NULL, NULL, NULL, 'edssdf', 0, 2, NULL, 2, NULL, NULL, '2020-09-05 20:10:12', '2020-09-06 05:01:16', 'en', 'Afghanistan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vedios`
--

CREATE TABLE `vedios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vedios`
--

INSERT INTO `vedios` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_categories`
--

CREATE TABLE `video_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_categories`
--

INSERT INTO `video_categories` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_comments`
--

CREATE TABLE `video_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `video_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_comments`
--

INSERT INTO `video_comments` (`id`, `comment`, `user_id`, `video_id`, `created_at`, `updated_at`) VALUES
(1, 'dddddddddddd', 87, 10, '2020-08-30 14:07:12', NULL),
(2, 'dddddddddddd', 87, 10, '2020-08-30 14:07:19', NULL),
(3, 'dddddddddddd', 87, 10, '2020-08-30 12:07:00', NULL),
(4, 'dddddddddddd', 87, 10, '2020-08-30 12:07:27', NULL),
(5, 'dddddddddddd', 87, 10, '2020-08-30 12:09:13', NULL),
(6, 'great video', 87, 10, '2020-08-30 12:15:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_library`
--

CREATE TABLE `video_library` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_library`
--

INSERT INTO `video_library` (`id`, `title`, `description`, `video_url`, `created_at`, `updated_at`, `user_id`, `category_id`, `seo_title`, `seo_description`, `views_count`) VALUES
(7, 'kkk', 'llll', 'o6roEbF-vno', '2020-08-30 08:49:37', '2020-08-30 08:49:37', 87, NULL, NULL, NULL, 0),
(10, 'tom', 'tom', 'cV6ucplpmbY', '2020-08-30 09:23:18', '2020-09-04 19:14:42', 87, NULL, NULL, NULL, 2),
(11, 'nn', 'gg', 'LDmj_GOeRMU', '2020-08-30 09:33:17', '2020-09-05 19:18:54', 87, NULL, NULL, NULL, 5),
(12, 'vido2', NULL, 'https://www.youtube.com/watch?v=Qy5C9kemneg', '2020-09-05 05:27:25', '2020-09-05 05:27:25', 92, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `video_likes`
--

CREATE TABLE `video_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `video_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(11) NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `ip`, `hits`, `date`, `visit_time`, `created_at`, `updated_at`) VALUES
(10, '102.186.252.18', 5, '2019-10-30', '14:41:57', '2019-10-30 08:36:17', '2019-10-30 12:41:57'),
(11, '41.42.144.121', 121, '2019-10-30', '13:25:12', '2019-10-30 09:51:15', '2019-10-30 11:25:12'),
(12, '156.205.227.144', 2, '2019-10-30', '23:20:20', '2019-10-30 21:20:20', '2019-10-30 21:20:20'),
(13, '102.186.252.18', 17, '2019-10-31', '12:30:09', '2019-10-31 07:39:15', '2019-10-31 10:30:09'),
(14, '156.205.70.224', 2, '2019-11-01', '10:37:19', '2019-11-01 08:37:19', '2019-11-01 08:37:19'),
(15, '167.71.181.56', 2, '2019-11-01', '13:29:42', '2019-11-01 11:29:42', '2019-11-01 11:29:42'),
(16, '157.245.222.209', 2, '2019-11-03', '21:03:26', '2019-11-03 19:03:26', '2019-11-03 19:03:26'),
(17, '159.89.42.37', 2, '2019-11-03', '21:53:44', '2019-11-03 19:53:44', '2019-11-03 19:53:44'),
(18, '102.186.188.80', 12, '2019-11-05', '13:21:01', '2019-11-05 08:46:50', '2019-11-05 11:21:01'),
(19, '102.186.188.80', 62, '2019-11-06', '15:49:31', '2019-11-06 10:03:00', '2019-11-06 13:49:31'),
(20, '105.89.101.232', 3, '2019-11-06', '17:35:28', '2019-11-06 15:25:18', '2019-11-06 15:35:28'),
(21, '197.127.172.225', 16, '2019-11-07', '14:52:30', '2019-11-07 12:48:56', '2019-11-07 12:52:30'),
(22, '102.186.201.89', 7, '2019-11-07', '15:52:08', '2019-11-07 13:18:40', '2019-11-07 13:52:08'),
(23, '3.95.37.22', 5, '2019-11-09', '20:08:11', '2019-11-09 07:05:42', '2019-11-09 18:08:11'),
(24, '156.205.137.135', 6, '2019-11-09', '17:33:28', '2019-11-09 15:31:47', '2019-11-09 15:33:28'),
(25, '156.205.137.135', 12, '2019-11-10', '05:55:05', '2019-11-10 03:53:13', '2019-11-10 03:55:05'),
(26, '102.186.242.124', 44, '2019-11-10', '14:16:29', '2019-11-10 09:04:35', '2019-11-10 12:16:29'),
(27, '74.125.210.7', 2, '2019-11-10', '11:24:55', '2019-11-10 09:24:55', '2019-11-10 09:24:55'),
(28, '196.146.15.34', 2, '2019-11-10', '14:06:46', '2019-11-10 12:06:46', '2019-11-10 12:06:46'),
(29, '102.186.194.173', 3, '2019-11-11', '14:27:52', '2019-11-11 12:01:31', '2019-11-11 12:27:52'),
(30, '41.37.189.136', 2, '2019-11-11', '17:38:56', '2019-11-11 15:38:56', '2019-11-11 15:38:56'),
(31, '209.17.97.82', 2, '2019-11-12', '03:54:40', '2019-11-12 01:54:40', '2019-11-12 01:54:40'),
(32, '54.194.248.40', 2, '2019-11-12', '13:21:56', '2019-11-12 11:21:56', '2019-11-12 11:21:56'),
(33, '102.184.40.145', 3, '2019-11-12', '13:48:18', '2019-11-12 11:26:19', '2019-11-12 11:48:18'),
(34, '196.153.5.58', 3, '2019-11-13', '20:58:58', '2019-11-13 18:58:45', '2019-11-13 18:58:58'),
(35, '3.95.37.22', 5, '2019-11-15', '22:17:26', '2019-11-15 20:14:09', '2019-11-15 20:17:26'),
(36, '209.17.96.26', 2, '2019-11-15', '23:16:13', '2019-11-15 21:16:13', '2019-11-15 21:16:13'),
(37, '203.116.18.250', 2, '2019-11-19', '02:39:20', '2019-11-19 00:39:20', '2019-11-19 00:39:20'),
(38, '102.184.61.203', 2, '2019-11-19', '10:34:02', '2019-11-19 08:34:02', '2019-11-19 08:34:02'),
(39, '209.17.96.18', 2, '2019-11-20', '01:49:50', '2019-11-19 23:49:50', '2019-11-19 23:49:50'),
(40, '41.68.227.67', 2, '2019-11-20', '14:45:59', '2019-11-20 12:45:59', '2019-11-20 12:45:59'),
(41, '3.95.37.22', 2, '2019-11-22', '17:08:31', '2019-11-22 15:08:31', '2019-11-22 15:08:31'),
(42, '41.68.31.41', 5, '2019-11-25', '09:37:54', '2019-11-25 07:37:39', '2019-11-25 07:37:54'),
(43, '209.17.97.2', 2, '2019-11-26', '08:05:59', '2019-11-26 06:05:59', '2019-11-26 06:05:59'),
(44, '142.93.190.110', 2, '2019-12-03', '06:28:39', '2019-12-03 04:28:39', '2019-12-03 04:28:39'),
(45, '209.17.96.250', 2, '2019-12-03', '18:42:22', '2019-12-03 16:42:22', '2019-12-03 16:42:22'),
(46, '209.17.96.210', 2, '2019-12-03', '19:18:10', '2019-12-03 17:18:10', '2019-12-03 17:18:10'),
(47, '167.172.228.86', 2, '2019-12-05', '08:41:51', '2019-12-05 06:41:51', '2019-12-05 06:41:51'),
(48, '167.172.20.103', 2, '2019-12-05', '09:40:15', '2019-12-05 07:40:15', '2019-12-05 07:40:15'),
(49, '52.221.221.164', 2, '2019-12-05', '11:33:09', '2019-12-05 09:33:09', '2019-12-05 09:33:09'),
(50, '209.17.96.82', 2, '2019-12-06', '10:08:08', '2019-12-06 08:08:08', '2019-12-06 08:08:08'),
(51, '3.95.37.22', 2, '2019-12-09', '14:01:45', '2019-12-09 12:01:45', '2019-12-09 12:01:45'),
(52, '41.68.140.206', 2, '2019-12-09', '15:16:33', '2019-12-09 13:16:33', '2019-12-09 13:16:33'),
(53, '209.17.96.2', 2, '2019-12-09', '22:10:48', '2019-12-09 20:10:48', '2019-12-09 20:10:48'),
(54, '209.17.96.122', 2, '2019-12-10', '05:17:34', '2019-12-10 03:17:34', '2019-12-10 03:17:34'),
(55, '196.52.84.29', 2, '2019-12-14', '16:26:21', '2019-12-14 14:26:21', '2019-12-14 14:26:21'),
(56, '3.95.37.22', 9, '2019-12-16', '21:50:33', '2019-12-15 22:45:00', '2019-12-16 19:50:33'),
(57, '3.95.37.22', 2, '2019-12-17', '03:49:10', '2019-12-17 01:49:10', '2019-12-17 01:49:10'),
(58, '209.17.96.114', 2, '2019-12-17', '16:57:23', '2019-12-17 14:57:23', '2019-12-17 14:57:23'),
(59, '209.17.97.66', 2, '2019-12-17', '22:53:30', '2019-12-17 20:53:30', '2019-12-17 20:53:30'),
(60, '156.205.178.10', 30, '2019-12-20', '23:19:35', '2019-12-20 17:32:24', '2019-12-20 21:19:35'),
(61, '156.219.140.229', 3, '2019-12-20', '19:42:55', '2019-12-20 17:41:49', '2019-12-20 17:42:55'),
(62, '38.131.99.114', 2, '2019-12-21', '10:09:25', '2019-12-21 08:09:25', '2019-12-21 08:09:25'),
(63, '38.131.99.114', 2, '2019-12-21', '10:09:25', '2019-12-21 08:09:25', '2019-12-21 08:09:25'),
(64, '172.105.71.4', 2, '2019-12-24', '00:54:33', '2019-12-23 22:54:33', '2019-12-23 22:54:33'),
(65, '209.17.96.226', 2, '2019-12-24', '04:11:42', '2019-12-24 02:11:42', '2019-12-24 02:11:42'),
(66, '163.172.161.137', 2, '2019-12-24', '06:05:10', '2019-12-24 04:05:10', '2019-12-24 04:05:10'),
(67, '41.69.75.202', 11, '2019-12-24', '13:53:50', '2019-12-24 11:41:05', '2019-12-24 11:53:50'),
(68, '181.214.97.208', 2, '2019-12-24', '19:36:12', '2019-12-24 17:36:12', '2019-12-24 17:36:12'),
(69, '181.214.182.123', 2, '2019-12-24', '19:38:56', '2019-12-24 17:38:56', '2019-12-24 17:38:56'),
(70, '163.172.137.15', 2, '2019-12-25', '04:08:05', '2019-12-25 02:08:05', '2019-12-25 02:08:05'),
(71, '69.36.182.52', 2, '2019-12-25', '07:42:16', '2019-12-25 05:42:16', '2019-12-25 05:42:16'),
(72, '156.215.33.54', 7, '2019-12-25', '10:34:46', '2019-12-25 08:32:23', '2019-12-25 08:34:46'),
(73, '154.188.244.221', 5, '2019-12-25', '12:14:19', '2019-12-25 10:00:23', '2019-12-25 10:14:19'),
(74, '156.215.156.206', 4, '2019-12-25', '13:50:29', '2019-12-25 11:22:15', '2019-12-25 11:50:29'),
(75, '54.175.37.167', 2, '2019-12-26', '04:54:52', '2019-12-26 02:54:52', '2019-12-26 02:54:52'),
(76, '209.17.96.210', 2, '2019-12-27', '03:39:42', '2019-12-27 01:39:42', '2019-12-27 01:39:42'),
(77, '198.27.81.94', 2, '2019-12-27', '12:56:33', '2019-12-27 10:56:33', '2019-12-27 10:56:33'),
(78, '209.17.97.10', 2, '2019-12-31', '01:13:15', '2019-12-30 23:13:15', '2019-12-30 23:13:15'),
(79, '209.17.97.106', 2, '2019-12-31', '02:28:28', '2019-12-31 00:28:28', '2019-12-31 00:28:28'),
(80, '165.22.47.106', 2, '2020-01-01', '16:35:40', '2020-01-01 14:35:40', '2020-01-01 14:35:40'),
(81, '34.228.21.3', 2, '2020-01-04', '21:36:01', '2020-01-04 19:36:01', '2020-01-04 19:36:01'),
(82, '89.248.160.152', 2, '2020-01-06', '12:17:10', '2020-01-06 10:17:10', '2020-01-06 10:17:10'),
(83, '142.93.186.4', 2, '2020-01-06', '21:46:06', '2020-01-06 19:46:06', '2020-01-06 19:46:06'),
(84, '157.245.4.166', 2, '2020-01-06', '22:42:17', '2020-01-06 20:42:17', '2020-01-06 20:42:17'),
(85, '209.17.97.90', 2, '2020-01-06', '23:07:03', '2020-01-06 21:07:03', '2020-01-06 21:07:03'),
(86, '209.17.96.58', 2, '2020-01-08', '00:43:35', '2020-01-07 22:43:35', '2020-01-07 22:43:35'),
(87, '3.95.37.22', 5, '2020-01-09', '09:25:02', '2020-01-09 00:32:29', '2020-01-09 07:25:02'),
(88, '209.17.97.26', 2, '2020-01-14', '10:21:54', '2020-01-14 08:21:54', '2020-01-14 08:21:54'),
(89, '209.17.96.162', 2, '2020-01-14', '18:25:52', '2020-01-14 16:25:52', '2020-01-14 16:25:52'),
(90, '3.95.37.22', 5, '2020-01-15', '09:17:32', '2020-01-15 07:15:50', '2020-01-15 07:17:32'),
(91, '209.17.96.138', 2, '2020-01-16', '21:27:51', '2020-01-16 19:27:51', '2020-01-16 19:27:51'),
(92, '209.17.96.218', 2, '2020-01-17', '15:27:47', '2020-01-17 13:27:47', '2020-01-17 13:27:47'),
(93, '209.17.96.90', 2, '2020-01-21', '14:33:12', '2020-01-21 12:33:12', '2020-01-21 12:33:12'),
(94, '209.17.96.162', 2, '2020-01-21', '21:54:59', '2020-01-21 19:54:59', '2020-01-21 19:54:59'),
(95, '209.17.96.10', 2, '2020-01-22', '04:01:53', '2020-01-22 02:01:53', '2020-01-22 02:01:53'),
(96, '209.17.96.58', 2, '2020-01-22', '04:09:06', '2020-01-22 02:09:06', '2020-01-22 02:09:06'),
(97, '156.205.78.201', 2, '2020-01-22', '12:37:47', '2020-01-22 10:37:47', '2020-01-22 10:37:47'),
(98, '23.227.114.58', 2, '2020-01-23', '21:37:55', '2020-01-23 19:37:55', '2020-01-23 19:37:55'),
(99, '181.215.80.138', 2, '2020-01-23', '22:29:35', '2020-01-23 20:29:35', '2020-01-23 20:29:35'),
(100, '38.145.82.4', 2, '2020-01-23', '23:21:39', '2020-01-23 21:21:39', '2020-01-23 21:21:39'),
(101, '38.145.77.40', 2, '2020-01-24', '00:08:42', '2020-01-23 22:08:42', '2020-01-23 22:08:42'),
(102, '191.96.83.254', 2, '2020-01-24', '01:20:55', '2020-01-23 23:20:55', '2020-01-23 23:20:55'),
(103, '191.96.83.168', 2, '2020-01-24', '02:32:06', '2020-01-24 00:32:06', '2020-01-24 00:32:06'),
(104, '209.17.97.50', 2, '2020-01-24', '09:35:43', '2020-01-24 07:35:43', '2020-01-24 07:35:43'),
(105, '209.17.96.58', 2, '2020-01-24', '17:33:29', '2020-01-24 15:33:29', '2020-01-24 15:33:29'),
(106, '38.145.87.101', 2, '2020-01-24', '18:26:41', '2020-01-24 16:26:41', '2020-01-24 16:26:41'),
(107, '38.145.114.162', 2, '2020-01-24', '19:12:20', '2020-01-24 17:12:20', '2020-01-24 17:12:20'),
(108, '191.96.56.24', 2, '2020-01-24', '19:51:22', '2020-01-24 17:51:22', '2020-01-24 17:51:22'),
(109, '181.215.50.123', 2, '2020-01-24', '20:33:10', '2020-01-24 18:33:10', '2020-01-24 18:33:10'),
(110, '181.215.81.137', 2, '2020-01-24', '21:10:57', '2020-01-24 19:10:57', '2020-01-24 19:10:57'),
(111, '191.96.82.53', 2, '2020-01-24', '21:51:59', '2020-01-24 19:51:59', '2020-01-24 19:51:59'),
(112, '209.17.97.82', 2, '2020-01-25', '06:35:17', '2020-01-25 04:35:17', '2020-01-25 04:35:17'),
(113, '156.205.59.109', 2, '2020-01-25', '23:12:11', '2020-01-25 21:12:11', '2020-01-25 21:12:11'),
(114, '209.17.96.34', 2, '2020-01-28', '10:34:14', '2020-01-28 08:34:14', '2020-01-28 08:34:14'),
(115, '209.17.96.114', 2, '2020-01-28', '16:24:59', '2020-01-28 14:24:59', '2020-01-28 14:24:59'),
(116, '209.17.96.186', 2, '2020-01-28', '22:46:46', '2020-01-28 20:46:46', '2020-01-28 20:46:46'),
(117, '209.17.97.2', 2, '2020-01-28', '23:01:29', '2020-01-28 21:01:29', '2020-01-28 21:01:29'),
(118, '3.95.37.22', 2, '2020-01-29', '21:35:52', '2020-01-29 19:35:52', '2020-01-29 19:35:52'),
(119, '167.172.30.46', 2, '2020-01-30', '12:41:30', '2020-01-30 10:41:30', '2020-01-30 10:41:30'),
(120, '209.17.97.98', 2, '2020-01-31', '14:31:33', '2020-01-31 12:31:33', '2020-01-31 12:31:33'),
(121, '209.17.96.2', 2, '2020-01-31', '14:39:10', '2020-01-31 12:39:10', '2020-01-31 12:39:10'),
(122, '64.225.4.101', 2, '2020-02-03', '10:24:24', '2020-02-03 08:24:24', '2020-02-03 08:24:24'),
(123, '167.71.169.159', 2, '2020-02-03', '10:59:56', '2020-02-03 08:59:56', '2020-02-03 08:59:56'),
(124, '209.17.96.146', 2, '2020-02-04', '04:20:29', '2020-02-04 02:20:29', '2020-02-04 02:20:29'),
(125, '209.17.97.18', 2, '2020-02-07', '04:00:16', '2020-02-07 02:00:16', '2020-02-07 02:00:16'),
(126, '209.17.96.194', 2, '2020-02-07', '13:45:50', '2020-02-07 11:45:50', '2020-02-07 11:45:50'),
(127, '3.95.37.22', 2, '2020-02-08', '06:50:14', '2020-02-08 04:50:14', '2020-02-08 04:50:14'),
(128, '209.17.96.138', 2, '2020-02-11', '12:50:14', '2020-02-11 10:50:14', '2020-02-11 10:50:14'),
(129, '156.205.74.171', 2, '2020-02-13', '13:00:20', '2020-02-13 11:00:20', '2020-02-13 11:00:20'),
(130, '209.17.96.146', 2, '2020-02-13', '22:53:46', '2020-02-13 20:53:46', '2020-02-13 20:53:46'),
(131, '3.95.37.22', 5, '2020-02-14', '14:48:24', '2020-02-14 12:15:04', '2020-02-14 12:48:24'),
(132, '196.52.43.79', 2, '2020-02-14', '16:51:42', '2020-02-14 14:51:42', '2020-02-14 14:51:42'),
(133, '3.95.37.22', 5, '2020-02-15', '01:40:55', '2020-02-14 23:40:10', '2020-02-14 23:40:55'),
(134, '196.159.19.85', 2, '2020-02-15', '21:27:45', '2020-02-15 19:27:45', '2020-02-15 19:27:45'),
(135, '209.17.97.2', 2, '2020-02-18', '15:17:25', '2020-02-18 13:17:25', '2020-02-18 13:17:25'),
(136, '209.17.96.66', 2, '2020-02-21', '09:27:44', '2020-02-21 07:27:44', '2020-02-21 07:27:44'),
(137, '209.17.96.250', 2, '2020-02-21', '12:36:01', '2020-02-21 10:36:01', '2020-02-21 10:36:01'),
(138, '209.17.96.74', 2, '2020-02-21', '14:24:33', '2020-02-21 12:24:33', '2020-02-21 12:24:33'),
(139, '51.77.249.202', 2, '2020-02-22', '06:07:10', '2020-02-22 04:07:10', '2020-02-22 04:07:10'),
(140, '209.17.96.10', 2, '2020-02-25', '15:06:14', '2020-02-25 13:06:14', '2020-02-25 13:06:14'),
(141, '209.17.96.130', 2, '2020-02-26', '01:21:42', '2020-02-25 23:21:42', '2020-02-25 23:21:42'),
(142, '209.17.96.218', 3, '2020-02-26', '17:33:46', '2020-02-26 03:37:15', '2020-02-26 15:33:46'),
(143, '209.17.96.10', 2, '2020-02-27', '08:04:51', '2020-02-27 06:04:51', '2020-02-27 06:04:51'),
(144, '209.17.96.34', 2, '2020-02-28', '05:40:34', '2020-02-28 03:40:34', '2020-02-28 03:40:34'),
(145, '102.41.83.96', 3, '2020-03-01', '16:54:18', '2020-03-01 14:54:06', '2020-03-01 14:54:18'),
(146, '138.197.2.254', 2, '2020-03-01', '17:53:25', '2020-03-01 15:53:25', '2020-03-01 15:53:25'),
(147, '41.37.7.212', 13, '2020-03-02', '18:53:33', '2020-03-02 12:28:24', '2020-03-02 16:53:33'),
(148, '18.130.86.21', 2, '2020-03-02', '17:04:11', '2020-03-02 15:04:11', '2020-03-02 15:04:11'),
(149, '209.17.96.170', 2, '2020-03-02', '22:41:36', '2020-03-02 20:41:36', '2020-03-02 20:41:36'),
(150, '18.130.86.21', 2, '2020-03-03', '18:40:31', '2020-03-03 16:40:31', '2020-03-03 16:40:31'),
(151, '68.183.60.130', 2, '2020-03-04', '23:45:43', '2020-03-04 21:45:43', '2020-03-04 21:45:43'),
(152, '167.71.168.165', 2, '2020-03-05', '00:31:51', '2020-03-04 22:31:51', '2020-03-04 22:31:51'),
(153, '100.25.161.190', 2, '2020-03-06', '01:39:56', '2020-03-05 23:39:56', '2020-03-05 23:39:56'),
(154, '209.17.96.18', 2, '2020-03-06', '22:34:37', '2020-03-06 20:34:37', '2020-03-06 20:34:37'),
(155, '209.17.97.66', 2, '2020-03-07', '05:54:48', '2020-03-07 03:54:48', '2020-03-07 03:54:48'),
(156, '167.172.104.52', 5, '2020-03-07', '22:11:56', '2020-03-07 20:11:51', '2020-03-07 20:11:56'),
(157, '209.17.96.138', 2, '2020-03-10', '07:51:42', '2020-03-10 05:51:40', '2020-03-10 05:51:42'),
(158, '5.83.161.234', 4, '2020-03-10', '12:25:21', '2020-03-10 10:25:20', '2020-03-10 10:25:21'),
(159, '5.83.161.234', 4, '2020-03-11', '01:22:03', '2020-03-10 23:22:02', '2020-03-10 23:22:03'),
(160, '51.77.249.202', 3, '2020-03-11', '16:43:35', '2020-03-11 11:02:25', '2020-03-11 14:43:35'),
(161, '51.77.249.202', 2, '2020-03-16', '12:39:41', '2020-03-16 10:39:41', '2020-03-16 10:39:41'),
(162, '156.205.249.59', 2, '2020-03-21', '08:35:56', '2020-03-21 06:35:56', '2020-03-21 06:35:56'),
(163, '46.101.178.189', 7, '2020-03-22', '02:43:48', '2020-03-22 00:41:10', '2020-03-22 00:43:48'),
(164, '179.43.169.182', 2, '2020-03-23', '23:23:32', '2020-03-23 21:23:32', '2020-03-23 21:23:32'),
(165, '179.43.169.182', 2, '2020-03-26', '20:33:29', '2020-03-26 18:33:29', '2020-03-26 18:33:29'),
(166, '66.249.65.247', 2, '2020-03-28', '21:54:30', '2020-03-28 19:54:30', '2020-03-28 19:54:30'),
(167, '66.249.65.249', 2, '2020-03-29', '02:47:57', '2020-03-29 00:47:57', '2020-03-29 00:47:57'),
(168, '66.249.65.252', 2, '2020-03-29', '14:37:58', '2020-03-29 12:37:58', '2020-03-29 12:37:58'),
(169, '66.249.65.250', 2, '2020-03-29', '19:21:59', '2020-03-29 17:21:59', '2020-03-29 17:21:59'),
(170, '66.249.65.249', 4, '2020-03-30', '16:49:27', '2020-03-30 07:15:03', '2020-03-30 14:49:27'),
(171, '66.249.65.245', 4, '2020-03-30', '12:43:19', '2020-03-30 09:37:03', '2020-03-30 10:43:19'),
(172, '66.249.65.247', 4, '2020-03-30', '14:08:32', '2020-03-30 09:55:59', '2020-03-30 12:08:32'),
(173, '157.245.4.146', 2, '2020-03-31', '16:01:31', '2020-03-31 14:01:31', '2020-03-31 14:01:31'),
(174, '41.68.203.69', 2, '2020-04-01', '16:11:52', '2020-04-01 14:11:52', '2020-04-01 14:11:52'),
(175, '41.68.203.69', 2, '2020-04-01', '16:11:52', '2020-04-01 14:11:52', '2020-04-01 14:11:52'),
(176, '134.122.82.213', 5, '2020-04-01', '19:52:47', '2020-04-01 17:52:41', '2020-04-01 17:52:47'),
(177, '157.245.217.61', 2, '2020-04-04', '07:04:02', '2020-04-04 05:04:02', '2020-04-04 05:04:02'),
(178, '165.22.43.151', 2, '2020-04-04', '07:28:00', '2020-04-04 05:28:00', '2020-04-04 05:28:00'),
(179, '66.249.65.250', 4, '2020-04-05', '08:03:03', '2020-04-05 04:09:26', '2020-04-05 06:03:03'),
(180, '66.249.65.252', 2, '2020-04-05', '06:47:18', '2020-04-05 04:47:18', '2020-04-05 04:47:18'),
(181, '66.249.65.247', 3, '2020-04-05', '08:31:27', '2020-04-05 05:15:42', '2020-04-05 06:31:27'),
(182, '66.249.65.248', 3, '2020-04-05', '09:47:10', '2020-04-05 07:37:42', '2020-04-05 07:47:10'),
(183, '197.60.244.144', 6, '2020-04-05', '17:29:20', '2020-04-05 15:27:30', '2020-04-05 15:29:20'),
(184, '45.56.197.25', 22, '2020-04-05', '17:44:45', '2020-04-05 15:29:18', '2020-04-05 15:44:45'),
(185, '66.249.65.245', 9, '2020-04-06', '13:51:40', '2020-04-06 09:54:53', '2020-04-06 11:51:40'),
(186, '66.249.65.248', 13, '2020-04-06', '13:25:15', '2020-04-06 10:07:21', '2020-04-06 11:25:15'),
(187, '66.249.65.247', 2, '2020-04-06', '12:11:43', '2020-04-06 10:11:42', '2020-04-06 10:11:43'),
(188, '66.249.65.252', 2, '2020-04-06', '12:47:12', '2020-04-06 10:47:12', '2020-04-06 10:47:12'),
(189, '156.205.54.209', 2, '2020-04-09', '19:34:18', '2020-04-09 17:34:18', '2020-04-09 17:34:18'),
(190, '66.249.64.3', 2, '2020-04-09', '20:39:49', '2020-04-09 18:39:49', '2020-04-09 18:39:49'),
(191, '41.35.211.104', 2, '2020-04-12', '09:23:50', '2020-04-12 07:23:50', '2020-04-12 07:23:50'),
(192, '54.36.150.3', 2, '2020-04-14', '03:44:07', '2020-04-14 01:44:07', '2020-04-14 01:44:07'),
(193, '54.36.150.66', 2, '2020-04-14', '04:37:12', '2020-04-14 02:37:12', '2020-04-14 02:37:12'),
(194, '209.17.96.138', 2, '2020-04-14', '13:12:18', '2020-04-14 11:12:18', '2020-04-14 11:12:18'),
(195, '34.204.169.112', 4, '2020-04-14', '15:42:44', '2020-04-14 13:42:42', '2020-04-14 13:42:44'),
(196, '209.17.96.82', 2, '2020-04-14', '17:56:51', '2020-04-14 15:56:51', '2020-04-14 15:56:51'),
(197, '209.17.97.10', 2, '2020-04-15', '03:34:20', '2020-04-15 01:34:20', '2020-04-15 01:34:20'),
(198, '209.17.96.146', 2, '2020-04-15', '06:02:25', '2020-04-15 04:02:25', '2020-04-15 04:02:25'),
(199, '156.205.65.177', 2, '2020-04-17', '01:22:36', '2020-04-16 23:22:36', '2020-04-16 23:22:36'),
(200, '209.17.96.26', 2, '2020-04-17', '18:00:15', '2020-04-17 16:00:15', '2020-04-17 16:00:15'),
(201, '54.36.148.173', 2, '2020-04-18', '23:48:34', '2020-04-18 21:48:33', '2020-04-18 21:48:34'),
(202, '54.36.150.55', 2, '2020-04-18', '23:50:59', '2020-04-18 21:50:59', '2020-04-18 21:50:59'),
(203, '54.36.148.107', 2, '2020-04-19', '00:29:14', '2020-04-18 22:29:14', '2020-04-18 22:29:14'),
(204, '54.36.150.64', 2, '2020-04-19', '00:53:16', '2020-04-18 22:53:16', '2020-04-18 22:53:16'),
(205, '54.36.149.12', 2, '2020-04-19', '02:14:29', '2020-04-19 00:14:29', '2020-04-19 00:14:29'),
(206, '54.36.150.180', 2, '2020-04-19', '04:40:23', '2020-04-19 02:40:23', '2020-04-19 02:40:23'),
(207, '54.36.148.211', 2, '2020-04-19', '08:50:52', '2020-04-19 06:50:52', '2020-04-19 06:50:52'),
(208, '54.36.150.55', 2, '2020-04-19', '10:38:17', '2020-04-19 08:38:17', '2020-04-19 08:38:17'),
(209, '54.36.150.108', 2, '2020-04-19', '11:54:01', '2020-04-19 09:54:01', '2020-04-19 09:54:01'),
(210, '54.36.150.67', 2, '2020-04-19', '12:59:27', '2020-04-19 10:59:27', '2020-04-19 10:59:27'),
(211, '54.36.148.194', 2, '2020-04-19', '21:40:50', '2020-04-19 19:40:50', '2020-04-19 19:40:50'),
(212, '54.36.148.195', 2, '2020-04-19', '21:54:56', '2020-04-19 19:54:56', '2020-04-19 19:54:56'),
(213, '54.36.148.95', 2, '2020-04-19', '22:31:28', '2020-04-19 20:31:28', '2020-04-19 20:31:28'),
(214, '54.36.150.154', 2, '2020-04-19', '22:35:09', '2020-04-19 20:35:09', '2020-04-19 20:35:09'),
(215, '54.36.150.91', 2, '2020-04-19', '22:39:33', '2020-04-19 20:39:33', '2020-04-19 20:39:33'),
(216, '54.36.150.155', 2, '2020-04-19', '23:28:54', '2020-04-19 21:28:54', '2020-04-19 21:28:54'),
(217, '5.9.108.254', 3, '2020-04-20', '00:40:10', '2020-04-19 22:40:05', '2020-04-19 22:40:10'),
(218, '158.69.245.214', 19, '2020-04-20', '10:31:00', '2020-04-20 08:10:49', '2020-04-20 08:31:00'),
(219, '87.106.204.248', 2, '2020-04-20', '13:24:51', '2020-04-20 11:24:48', '2020-04-20 11:24:51'),
(220, '54.36.150.50', 2, '2020-04-20', '16:53:57', '2020-04-20 14:53:57', '2020-04-20 14:53:57'),
(221, '54.36.148.50', 2, '2020-04-20', '22:49:44', '2020-04-20 20:49:44', '2020-04-20 20:49:44'),
(222, '66.249.79.234', 2, '2020-04-21', '09:51:57', '2020-04-21 07:51:57', '2020-04-21 07:51:57'),
(223, '31.13.103.7', 2, '2020-04-21', '19:28:26', '2020-04-21 17:28:26', '2020-04-21 17:28:26'),
(224, '102.188.124.24', 3, '2020-04-21', '19:33:06', '2020-04-21 17:28:35', '2020-04-21 17:33:06'),
(225, '209.17.97.26', 2, '2020-04-22', '03:22:09', '2020-04-22 01:22:09', '2020-04-22 01:22:09'),
(226, '66.249.73.217', 6, '2020-04-23', '05:34:14', '2020-04-22 23:37:34', '2020-04-23 03:34:14'),
(227, '66.249.73.216', 5, '2020-04-23', '05:43:42', '2020-04-23 00:05:58', '2020-04-23 03:43:42'),
(228, '66.249.73.218', 2, '2020-04-23', '03:31:10', '2020-04-23 01:31:10', '2020-04-23 01:31:10'),
(229, '66.249.65.105', 2, '2020-04-24', '01:17:34', '2020-04-23 23:17:34', '2020-04-23 23:17:34'),
(230, '54.36.150.101', 2, '2020-04-24', '06:34:58', '2020-04-24 04:34:58', '2020-04-24 04:34:58'),
(231, '54.36.150.124', 2, '2020-04-24', '11:19:14', '2020-04-24 09:19:14', '2020-04-24 09:19:14'),
(232, '209.17.97.90', 2, '2020-04-24', '12:27:31', '2020-04-24 10:27:31', '2020-04-24 10:27:31'),
(233, '209.17.96.66', 2, '2020-04-24', '13:16:21', '2020-04-24 11:16:21', '2020-04-24 11:16:21'),
(234, '54.36.149.92', 2, '2020-04-24', '16:16:10', '2020-04-24 14:16:10', '2020-04-24 14:16:10'),
(235, '54.36.150.91', 2, '2020-04-24', '20:20:05', '2020-04-24 18:20:05', '2020-04-24 18:20:05'),
(236, '54.36.148.159', 2, '2020-04-24', '21:04:47', '2020-04-24 19:04:47', '2020-04-24 19:04:47'),
(237, '54.36.148.236', 2, '2020-04-24', '21:49:42', '2020-04-24 19:49:42', '2020-04-24 19:49:42'),
(238, '54.36.148.12', 2, '2020-04-24', '22:41:49', '2020-04-24 20:41:49', '2020-04-24 20:41:49'),
(239, '54.36.148.218', 2, '2020-04-25', '01:23:58', '2020-04-24 23:23:58', '2020-04-24 23:23:58'),
(240, '209.17.96.114', 2, '2020-04-25', '02:13:46', '2020-04-25 00:13:46', '2020-04-25 00:13:46'),
(241, '54.36.149.57', 2, '2020-04-25', '02:55:01', '2020-04-25 00:55:01', '2020-04-25 00:55:01'),
(242, '54.36.148.107', 2, '2020-04-25', '06:20:26', '2020-04-25 04:20:26', '2020-04-25 04:20:26'),
(243, '54.36.150.15', 2, '2020-04-25', '07:05:18', '2020-04-25 05:05:18', '2020-04-25 05:05:18'),
(244, '54.36.150.85', 2, '2020-04-25', '10:07:44', '2020-04-25 08:07:44', '2020-04-25 08:07:44'),
(245, '54.36.150.77', 2, '2020-04-25', '13:31:28', '2020-04-25 11:31:28', '2020-04-25 11:31:28'),
(246, '54.36.150.67', 2, '2020-04-25', '13:36:15', '2020-04-25 11:36:15', '2020-04-25 11:36:15'),
(247, '54.36.150.11', 2, '2020-04-25', '13:40:57', '2020-04-25 11:40:57', '2020-04-25 11:40:57'),
(248, '54.36.148.210', 2, '2020-04-25', '16:26:06', '2020-04-25 14:26:06', '2020-04-25 14:26:06'),
(249, '54.36.150.19', 2, '2020-04-25', '18:21:23', '2020-04-25 16:21:22', '2020-04-25 16:21:23'),
(250, '54.36.149.28', 2, '2020-04-25', '22:07:53', '2020-04-25 20:07:53', '2020-04-25 20:07:53'),
(251, '54.36.150.168', 2, '2020-04-26', '01:42:44', '2020-04-25 23:42:44', '2020-04-25 23:42:44'),
(252, '54.36.148.133', 2, '2020-04-26', '03:22:29', '2020-04-26 01:22:29', '2020-04-26 01:22:29'),
(253, '42.157.195.85', 3, '2020-04-26', '17:13:09', '2020-04-26 15:13:08', '2020-04-26 15:13:09'),
(254, '66.249.65.107', 2, '2020-04-27', '08:13:11', '2020-04-27 06:13:11', '2020-04-27 06:13:11'),
(255, '66.249.65.105', 2, '2020-04-27', '20:49:25', '2020-04-27 18:49:25', '2020-04-27 18:49:25'),
(256, '209.17.96.58', 2, '2020-04-28', '01:01:14', '2020-04-27 23:01:14', '2020-04-27 23:01:14'),
(257, '209.17.96.106', 2, '2020-04-28', '07:16:16', '2020-04-28 05:16:16', '2020-04-28 05:16:16'),
(258, '209.17.96.242', 2, '2020-04-28', '18:01:44', '2020-04-28 16:01:44', '2020-04-28 16:01:44'),
(259, '209.17.97.34', 2, '2020-04-28', '21:59:07', '2020-04-28 19:59:07', '2020-04-28 19:59:07'),
(260, '138.68.226.31', 5, '2020-04-28', '23:30:11', '2020-04-28 21:30:04', '2020-04-28 21:30:11'),
(261, '54.36.148.169', 2, '2020-04-29', '10:27:25', '2020-04-29 08:27:25', '2020-04-29 08:27:25'),
(262, '54.36.149.35', 2, '2020-04-29', '13:14:13', '2020-04-29 11:14:13', '2020-04-29 11:14:13'),
(263, '54.36.148.192', 2, '2020-04-30', '00:50:10', '2020-04-29 22:50:10', '2020-04-29 22:50:10'),
(264, '54.36.148.209', 2, '2020-04-30', '03:07:26', '2020-04-30 01:07:26', '2020-04-30 01:07:26'),
(265, '54.36.150.147', 2, '2020-04-30', '07:35:05', '2020-04-30 05:35:05', '2020-04-30 05:35:05'),
(266, '54.36.150.183', 2, '2020-04-30', '13:07:00', '2020-04-30 11:07:00', '2020-04-30 11:07:00'),
(267, '54.36.148.224', 2, '2020-04-30', '18:32:24', '2020-04-30 16:32:24', '2020-04-30 16:32:24'),
(268, '54.36.150.118', 2, '2020-04-30', '23:59:43', '2020-04-30 21:59:43', '2020-04-30 21:59:43'),
(269, '54.36.148.179', 2, '2020-05-01', '04:05:19', '2020-05-01 02:05:19', '2020-05-01 02:05:19'),
(270, '209.17.96.186', 2, '2020-05-01', '11:49:39', '2020-05-01 09:49:39', '2020-05-01 09:49:39'),
(271, '209.17.96.234', 2, '2020-05-01', '14:26:02', '2020-05-01 12:26:02', '2020-05-01 12:26:02'),
(272, '54.36.148.39', 2, '2020-05-01', '18:15:14', '2020-05-01 16:15:14', '2020-05-01 16:15:14'),
(273, '54.36.150.173', 2, '2020-05-01', '21:29:15', '2020-05-01 19:29:15', '2020-05-01 19:29:15'),
(274, '54.36.148.118', 2, '2020-05-01', '23:12:51', '2020-05-01 21:12:51', '2020-05-01 21:12:51'),
(275, '54.36.149.25', 2, '2020-05-02', '15:55:44', '2020-05-02 13:55:44', '2020-05-02 13:55:44'),
(276, '54.36.150.124', 2, '2020-05-02', '18:37:53', '2020-05-02 16:37:53', '2020-05-02 16:37:53'),
(277, '54.36.150.149', 2, '2020-05-02', '20:07:59', '2020-05-02 18:07:59', '2020-05-02 18:07:59'),
(278, '54.36.148.82', 2, '2020-05-03', '03:39:21', '2020-05-03 01:39:21', '2020-05-03 01:39:21'),
(279, '167.99.48.159', 2, '2020-05-05', '10:34:44', '2020-05-05 08:34:44', '2020-05-05 08:34:44'),
(280, '209.17.97.122', 2, '2020-05-05', '16:00:56', '2020-05-05 14:00:56', '2020-05-05 14:00:56'),
(281, '64.225.61.129', 2, '2020-05-05', '17:43:32', '2020-05-05 15:43:32', '2020-05-05 15:43:32'),
(282, '64.225.50.152', 2, '2020-05-05', '17:47:11', '2020-05-05 15:47:11', '2020-05-05 15:47:11'),
(283, '54.36.150.21', 2, '2020-05-06', '11:43:53', '2020-05-06 09:43:53', '2020-05-06 09:43:53'),
(284, '54.36.150.28', 2, '2020-05-06', '12:39:11', '2020-05-06 10:39:11', '2020-05-06 10:39:11'),
(285, '54.36.149.5', 2, '2020-05-06', '13:22:07', '2020-05-06 11:22:07', '2020-05-06 11:22:07'),
(286, '54.36.150.18', 2, '2020-05-06', '13:34:55', '2020-05-06 11:34:55', '2020-05-06 11:34:55'),
(287, '54.36.148.155', 2, '2020-05-06', '14:44:00', '2020-05-06 12:44:00', '2020-05-06 12:44:00'),
(288, '54.36.150.65', 2, '2020-05-06', '15:08:01', '2020-05-06 13:08:01', '2020-05-06 13:08:01'),
(289, '54.36.150.184', 2, '2020-05-06', '16:06:33', '2020-05-06 14:06:33', '2020-05-06 14:06:33'),
(290, '54.36.150.178', 2, '2020-05-06', '16:10:31', '2020-05-06 14:10:31', '2020-05-06 14:10:31'),
(291, '54.36.150.60', 2, '2020-05-06', '16:44:39', '2020-05-06 14:44:39', '2020-05-06 14:44:39'),
(292, '54.36.150.116', 2, '2020-05-06', '17:28:53', '2020-05-06 15:28:53', '2020-05-06 15:28:53'),
(293, '54.36.149.32', 2, '2020-05-06', '18:14:24', '2020-05-06 16:14:24', '2020-05-06 16:14:24'),
(294, '54.36.150.106', 2, '2020-05-06', '18:38:12', '2020-05-06 16:38:12', '2020-05-06 16:38:12'),
(295, '54.36.150.66', 2, '2020-05-06', '22:18:35', '2020-05-06 20:18:35', '2020-05-06 20:18:35'),
(296, '54.36.148.17', 2, '2020-05-06', '22:49:24', '2020-05-06 20:49:24', '2020-05-06 20:49:24'),
(297, '54.36.150.101', 2, '2020-05-07', '01:09:26', '2020-05-06 23:09:26', '2020-05-06 23:09:26'),
(298, '54.36.150.146', 2, '2020-05-07', '02:05:00', '2020-05-07 00:05:00', '2020-05-07 00:05:00'),
(299, '54.36.150.115', 2, '2020-05-07', '04:33:22', '2020-05-07 02:33:22', '2020-05-07 02:33:22'),
(300, '54.36.148.165', 2, '2020-05-07', '07:39:29', '2020-05-07 05:39:29', '2020-05-07 05:39:29'),
(301, '54.36.149.102', 2, '2020-05-07', '09:57:44', '2020-05-07 07:57:44', '2020-05-07 07:57:44'),
(302, '54.36.150.111', 2, '2020-05-07', '10:00:07', '2020-05-07 08:00:07', '2020-05-07 08:00:07'),
(303, '54.36.150.173', 2, '2020-05-07', '10:38:38', '2020-05-07 08:38:38', '2020-05-07 08:38:38'),
(304, '54.36.148.148', 2, '2020-05-07', '10:40:21', '2020-05-07 08:40:21', '2020-05-07 08:40:21'),
(305, '54.36.150.79', 2, '2020-05-07', '15:58:32', '2020-05-07 13:58:32', '2020-05-07 13:58:32'),
(306, '54.36.148.242', 2, '2020-05-07', '17:38:04', '2020-05-07 15:38:04', '2020-05-07 15:38:04'),
(307, '54.36.148.91', 2, '2020-05-07', '18:28:03', '2020-05-07 16:28:03', '2020-05-07 16:28:03'),
(308, '54.36.150.63', 2, '2020-05-07', '19:19:53', '2020-05-07 17:19:53', '2020-05-07 17:19:53'),
(309, '54.36.150.164', 2, '2020-05-07', '21:11:39', '2020-05-07 19:11:39', '2020-05-07 19:11:39'),
(310, '54.36.148.248', 2, '2020-05-07', '22:27:37', '2020-05-07 20:27:37', '2020-05-07 20:27:37'),
(311, '54.36.149.25', 2, '2020-05-08', '00:55:46', '2020-05-07 22:55:46', '2020-05-07 22:55:46'),
(312, '54.36.150.135', 2, '2020-05-08', '00:56:18', '2020-05-07 22:56:18', '2020-05-07 22:56:18'),
(313, '54.36.150.84', 2, '2020-05-08', '02:38:48', '2020-05-08 00:38:48', '2020-05-08 00:38:48'),
(314, '54.36.150.54', 2, '2020-05-08', '03:11:09', '2020-05-08 01:11:09', '2020-05-08 01:11:09'),
(315, '54.36.148.196', 2, '2020-05-08', '03:15:02', '2020-05-08 01:15:02', '2020-05-08 01:15:02'),
(316, '54.36.150.184', 2, '2020-05-08', '03:19:02', '2020-05-08 01:19:02', '2020-05-08 01:19:02'),
(317, '54.36.148.87', 2, '2020-05-08', '03:33:50', '2020-05-08 01:33:50', '2020-05-08 01:33:50'),
(318, '54.36.150.21', 2, '2020-05-08', '03:36:11', '2020-05-08 01:36:11', '2020-05-08 01:36:11'),
(319, '54.36.150.35', 2, '2020-05-08', '04:10:40', '2020-05-08 02:10:40', '2020-05-08 02:10:40'),
(320, '54.36.149.56', 2, '2020-05-08', '04:56:38', '2020-05-08 02:56:38', '2020-05-08 02:56:38'),
(321, '54.36.150.173', 2, '2020-05-08', '06:42:58', '2020-05-08 04:42:58', '2020-05-08 04:42:58'),
(322, '54.36.149.11', 2, '2020-05-08', '07:11:00', '2020-05-08 05:11:00', '2020-05-08 05:11:00'),
(323, '54.36.149.2', 2, '2020-05-08', '07:18:35', '2020-05-08 05:18:35', '2020-05-08 05:18:35'),
(324, '54.36.150.23', 2, '2020-05-08', '07:56:29', '2020-05-08 05:56:29', '2020-05-08 05:56:29'),
(325, '54.36.150.85', 2, '2020-05-08', '10:36:45', '2020-05-08 08:36:45', '2020-05-08 08:36:45'),
(326, '54.36.149.15', 2, '2020-05-08', '11:00:23', '2020-05-08 09:00:23', '2020-05-08 09:00:23'),
(327, '54.36.150.185', 2, '2020-05-08', '11:37:04', '2020-05-08 09:37:04', '2020-05-08 09:37:04'),
(328, '54.36.150.52', 2, '2020-05-08', '13:03:25', '2020-05-08 11:03:25', '2020-05-08 11:03:25'),
(329, '54.36.150.59', 2, '2020-05-08', '13:08:57', '2020-05-08 11:08:57', '2020-05-08 11:08:57'),
(330, '54.36.150.90', 2, '2020-05-08', '13:15:58', '2020-05-08 11:15:58', '2020-05-08 11:15:58'),
(331, '54.36.149.62', 2, '2020-05-08', '13:26:17', '2020-05-08 11:26:17', '2020-05-08 11:26:17'),
(332, '54.36.150.181', 2, '2020-05-08', '15:04:30', '2020-05-08 13:04:30', '2020-05-08 13:04:30'),
(333, '54.36.149.71', 2, '2020-05-08', '15:07:57', '2020-05-08 13:07:57', '2020-05-08 13:07:57'),
(334, '54.36.148.211', 2, '2020-05-08', '15:20:19', '2020-05-08 13:20:19', '2020-05-08 13:20:19'),
(335, '54.36.150.172', 2, '2020-05-08', '15:22:06', '2020-05-08 13:22:06', '2020-05-08 13:22:06'),
(336, '54.36.149.20', 2, '2020-05-08', '18:00:17', '2020-05-08 16:00:17', '2020-05-08 16:00:17'),
(337, '36.99.136.143', 2, '2020-05-08', '21:49:25', '2020-05-08 19:49:25', '2020-05-08 19:49:25'),
(338, '36.99.136.141', 2, '2020-05-08', '21:49:26', '2020-05-08 19:49:26', '2020-05-08 19:49:26'),
(339, '111.7.100.19', 3, '2020-05-08', '22:32:43', '2020-05-08 20:32:17', '2020-05-08 20:32:43'),
(340, '111.7.100.18', 2, '2020-05-08', '22:32:38', '2020-05-08 20:32:38', '2020-05-08 20:32:38'),
(341, '111.7.100.17', 3, '2020-05-08', '22:44:03', '2020-05-08 20:43:38', '2020-05-08 20:44:03'),
(342, '111.7.100.16', 2, '2020-05-08', '22:43:58', '2020-05-08 20:43:58', '2020-05-08 20:43:58'),
(343, '111.7.100.21', 2, '2020-05-08', '23:43:48', '2020-05-08 21:43:48', '2020-05-08 21:43:48'),
(344, '111.7.100.22', 2, '2020-05-08', '23:44:14', '2020-05-08 21:44:14', '2020-05-08 21:44:14'),
(345, '111.7.100.23', 2, '2020-05-08', '23:44:18', '2020-05-08 21:44:18', '2020-05-08 21:44:18'),
(346, '54.36.148.80', 2, '2020-05-09', '01:33:05', '2020-05-08 23:33:05', '2020-05-08 23:33:05'),
(347, '54.36.150.8', 2, '2020-05-09', '05:32:39', '2020-05-09 03:32:39', '2020-05-09 03:32:39'),
(348, '209.17.96.146', 2, '2020-05-09', '08:00:03', '2020-05-09 06:00:03', '2020-05-09 06:00:03'),
(349, '54.36.148.175', 2, '2020-05-09', '11:03:13', '2020-05-09 09:03:13', '2020-05-09 09:03:13'),
(350, '54.36.150.55', 2, '2020-05-09', '16:25:02', '2020-05-09 14:25:02', '2020-05-09 14:25:02'),
(351, '54.36.150.64', 2, '2020-05-09', '16:41:10', '2020-05-09 14:41:10', '2020-05-09 14:41:10'),
(352, '54.36.150.91', 2, '2020-05-09', '17:14:25', '2020-05-09 15:14:25', '2020-05-09 15:14:25'),
(353, '54.36.149.50', 2, '2020-05-09', '17:17:59', '2020-05-09 15:17:59', '2020-05-09 15:17:59'),
(354, '54.36.150.97', 2, '2020-05-09', '17:40:22', '2020-05-09 15:40:22', '2020-05-09 15:40:22'),
(355, '54.36.148.113', 2, '2020-05-09', '17:58:16', '2020-05-09 15:58:16', '2020-05-09 15:58:16'),
(356, '54.36.148.92', 2, '2020-05-09', '23:13:09', '2020-05-09 21:13:09', '2020-05-09 21:13:09'),
(357, '54.36.150.191', 2, '2020-05-09', '23:30:39', '2020-05-09 21:30:39', '2020-05-09 21:30:39'),
(358, '54.36.148.70', 2, '2020-05-09', '23:37:06', '2020-05-09 21:37:06', '2020-05-09 21:37:06'),
(359, '54.36.150.105', 2, '2020-05-09', '23:44:36', '2020-05-09 21:44:35', '2020-05-09 21:44:36'),
(360, '54.36.150.140', 2, '2020-05-09', '23:55:04', '2020-05-09 21:55:04', '2020-05-09 21:55:04'),
(361, '54.36.150.163', 2, '2020-05-09', '23:55:57', '2020-05-09 21:55:57', '2020-05-09 21:55:57'),
(362, '54.36.150.190', 2, '2020-05-09', '23:56:34', '2020-05-09 21:56:34', '2020-05-09 21:56:34'),
(363, '54.36.148.139', 2, '2020-05-10', '00:12:59', '2020-05-09 22:12:59', '2020-05-09 22:12:59'),
(364, '54.36.148.235', 2, '2020-05-10', '00:38:01', '2020-05-09 22:38:01', '2020-05-09 22:38:01'),
(365, '54.36.150.6', 2, '2020-05-10', '00:50:46', '2020-05-09 22:50:46', '2020-05-09 22:50:46'),
(366, '54.36.149.63', 2, '2020-05-10', '01:43:32', '2020-05-09 23:43:32', '2020-05-09 23:43:32'),
(367, '54.36.148.172', 2, '2020-05-10', '01:44:00', '2020-05-09 23:44:00', '2020-05-09 23:44:00'),
(368, '54.36.150.1', 2, '2020-05-10', '02:31:39', '2020-05-10 00:31:39', '2020-05-10 00:31:39'),
(369, '54.36.150.83', 2, '2020-05-10', '02:50:35', '2020-05-10 00:50:35', '2020-05-10 00:50:35'),
(370, '54.36.148.71', 2, '2020-05-10', '05:04:35', '2020-05-10 03:04:35', '2020-05-10 03:04:35'),
(371, '54.36.150.147', 3, '2020-05-10', '07:50:13', '2020-05-10 04:44:43', '2020-05-10 05:50:13'),
(372, '54.36.150.46', 2, '2020-05-10', '07:31:42', '2020-05-10 05:31:42', '2020-05-10 05:31:42'),
(373, '54.36.148.41', 2, '2020-05-10', '07:39:20', '2020-05-10 05:39:20', '2020-05-10 05:39:20'),
(374, '54.36.148.95', 2, '2020-05-10', '07:42:54', '2020-05-10 05:42:54', '2020-05-10 05:42:54'),
(375, '54.36.149.29', 2, '2020-05-10', '09:37:41', '2020-05-10 07:37:41', '2020-05-10 07:37:41'),
(376, '54.36.150.58', 2, '2020-05-10', '11:35:06', '2020-05-10 09:35:06', '2020-05-10 09:35:06'),
(377, '54.36.150.62', 2, '2020-05-10', '12:04:40', '2020-05-10 10:04:40', '2020-05-10 10:04:40'),
(378, '54.36.148.248', 2, '2020-05-10', '12:33:08', '2020-05-10 10:33:08', '2020-05-10 10:33:08'),
(379, '54.36.150.82', 2, '2020-05-10', '13:10:09', '2020-05-10 11:10:09', '2020-05-10 11:10:09'),
(380, '54.36.149.72', 2, '2020-05-10', '17:09:23', '2020-05-10 15:09:23', '2020-05-10 15:09:23'),
(381, '54.36.150.57', 2, '2020-05-11', '23:13:59', '2020-05-11 21:13:59', '2020-05-11 21:13:59'),
(382, '54.36.148.160', 2, '2020-05-12', '04:14:40', '2020-05-12 02:14:40', '2020-05-12 02:14:40'),
(383, '54.36.150.156', 2, '2020-05-12', '13:29:16', '2020-05-12 11:29:16', '2020-05-12 11:29:16'),
(384, '54.36.148.86', 2, '2020-05-12', '19:53:32', '2020-05-12 17:53:32', '2020-05-12 17:53:32'),
(385, '54.36.150.151', 2, '2020-05-12', '23:03:44', '2020-05-12 21:03:44', '2020-05-12 21:03:44'),
(386, '54.36.150.70', 2, '2020-05-13', '01:25:39', '2020-05-12 23:25:39', '2020-05-12 23:25:39'),
(387, '54.36.149.30', 2, '2020-05-13', '01:36:18', '2020-05-12 23:36:18', '2020-05-12 23:36:18'),
(388, '54.36.150.39', 2, '2020-05-13', '02:06:57', '2020-05-13 00:06:57', '2020-05-13 00:06:57'),
(389, '54.36.148.3', 2, '2020-05-13', '12:24:39', '2020-05-13 10:24:39', '2020-05-13 10:24:39'),
(390, '54.36.148.104', 2, '2020-05-13', '13:30:20', '2020-05-13 11:30:19', '2020-05-13 11:30:20'),
(391, '54.36.150.12', 2, '2020-05-13', '16:07:03', '2020-05-13 14:07:03', '2020-05-13 14:07:03'),
(392, '54.36.148.124', 2, '2020-05-13', '18:21:14', '2020-05-13 16:21:14', '2020-05-13 16:21:14'),
(393, '54.36.148.73', 2, '2020-05-13', '20:19:19', '2020-05-13 18:19:19', '2020-05-13 18:19:19'),
(394, '54.36.150.162', 2, '2020-05-13', '20:34:31', '2020-05-13 18:34:31', '2020-05-13 18:34:31'),
(395, '54.36.150.102', 2, '2020-05-13', '21:36:37', '2020-05-13 19:36:37', '2020-05-13 19:36:37'),
(396, '54.36.148.173', 2, '2020-05-13', '22:03:01', '2020-05-13 20:03:01', '2020-05-13 20:03:01'),
(397, '54.36.150.86', 2, '2020-05-13', '22:08:46', '2020-05-13 20:08:46', '2020-05-13 20:08:46'),
(398, '54.36.148.91', 2, '2020-05-13', '23:13:50', '2020-05-13 21:13:50', '2020-05-13 21:13:50'),
(399, '54.36.149.70', 2, '2020-05-14', '01:09:41', '2020-05-13 23:09:41', '2020-05-13 23:09:41'),
(400, '54.36.149.5', 2, '2020-05-14', '02:15:37', '2020-05-14 00:15:37', '2020-05-14 00:15:37'),
(401, '54.36.148.100', 2, '2020-05-14', '02:23:37', '2020-05-14 00:23:37', '2020-05-14 00:23:37'),
(402, '54.36.150.10', 2, '2020-05-14', '03:18:17', '2020-05-14 01:18:17', '2020-05-14 01:18:17'),
(403, '54.36.148.209', 2, '2020-05-14', '04:09:04', '2020-05-14 02:09:04', '2020-05-14 02:09:04'),
(404, '54.36.148.165', 2, '2020-05-14', '05:24:29', '2020-05-14 03:24:29', '2020-05-14 03:24:29'),
(405, '54.36.150.64', 2, '2020-05-14', '06:02:26', '2020-05-14 04:02:26', '2020-05-14 04:02:26'),
(406, '54.36.148.46', 2, '2020-05-14', '06:34:47', '2020-05-14 04:34:47', '2020-05-14 04:34:47'),
(407, '54.36.150.102', 2, '2020-05-14', '07:07:04', '2020-05-14 05:07:03', '2020-05-14 05:07:04'),
(408, '54.36.148.157', 2, '2020-05-14', '07:11:02', '2020-05-14 05:11:02', '2020-05-14 05:11:02'),
(409, '54.36.150.29', 2, '2020-05-14', '08:11:17', '2020-05-14 06:11:17', '2020-05-14 06:11:17'),
(410, '54.36.150.177', 2, '2020-05-14', '09:00:50', '2020-05-14 07:00:50', '2020-05-14 07:00:50'),
(411, '54.36.149.42', 2, '2020-05-14', '09:30:37', '2020-05-14 07:30:37', '2020-05-14 07:30:37'),
(412, '54.36.148.187', 2, '2020-05-14', '10:27:58', '2020-05-14 08:27:58', '2020-05-14 08:27:58'),
(413, '54.36.148.36', 2, '2020-05-14', '10:55:46', '2020-05-14 08:55:46', '2020-05-14 08:55:46'),
(414, '54.36.150.58', 2, '2020-05-14', '11:56:24', '2020-05-14 09:56:24', '2020-05-14 09:56:24'),
(415, '54.36.150.181', 2, '2020-05-14', '12:08:53', '2020-05-14 10:08:53', '2020-05-14 10:08:53'),
(416, '54.36.150.169', 2, '2020-05-14', '13:05:09', '2020-05-14 11:05:09', '2020-05-14 11:05:09'),
(417, '54.36.149.54', 2, '2020-05-14', '18:26:10', '2020-05-14 16:26:10', '2020-05-14 16:26:10'),
(418, '54.36.150.184', 2, '2020-05-14', '18:54:25', '2020-05-14 16:54:25', '2020-05-14 16:54:25'),
(419, '54.36.150.85', 2, '2020-05-14', '19:03:01', '2020-05-14 17:03:01', '2020-05-14 17:03:01'),
(420, '54.36.148.90', 2, '2020-05-14', '19:16:29', '2020-05-14 17:16:29', '2020-05-14 17:16:29'),
(421, '54.36.150.131', 2, '2020-05-14', '22:53:26', '2020-05-14 20:53:26', '2020-05-14 20:53:26'),
(422, '41.235.8.119', 4, '2020-05-15', '13:18:52', '2020-05-14 23:07:46', '2020-05-15 11:18:52'),
(423, '173.252.111.118', 3, '2020-05-15', '01:08:21', '2020-05-14 23:08:19', '2020-05-14 23:08:21'),
(424, '173.252.111.111', 2, '2020-05-15', '01:08:19', '2020-05-14 23:08:19', '2020-05-14 23:08:19'),
(425, '197.39.30.172', 14, '2020-05-15', '22:37:30', '2020-05-14 23:08:59', '2020-05-15 20:37:30'),
(426, '54.36.148.117', 2, '2020-05-15', '02:04:22', '2020-05-15 00:04:22', '2020-05-15 00:04:22'),
(427, '54.36.148.195', 2, '2020-05-15', '09:26:43', '2020-05-15 07:26:43', '2020-05-15 07:26:43'),
(428, '54.36.150.41', 2, '2020-05-15', '10:23:57', '2020-05-15 08:23:57', '2020-05-15 08:23:57'),
(429, '54.36.150.16', 2, '2020-05-15', '11:16:09', '2020-05-15 09:16:09', '2020-05-15 09:16:09'),
(430, '54.36.150.76', 2, '2020-05-15', '16:20:46', '2020-05-15 14:20:46', '2020-05-15 14:20:46'),
(431, '54.36.148.190', 2, '2020-05-15', '20:06:29', '2020-05-15 18:06:29', '2020-05-15 18:06:29'),
(432, '41.234.7.247', 6, '2020-05-15', '23:35:50', '2020-05-15 21:33:24', '2020-05-15 21:35:50'),
(433, '54.36.149.88', 2, '2020-05-15', '23:54:12', '2020-05-15 21:54:12', '2020-05-15 21:54:12'),
(434, '54.36.149.16', 2, '2020-05-16', '04:24:12', '2020-05-16 02:24:12', '2020-05-16 02:24:12'),
(435, '54.36.150.73', 2, '2020-05-16', '04:42:03', '2020-05-16 02:42:03', '2020-05-16 02:42:03'),
(436, '54.36.150.29', 2, '2020-05-16', '06:58:08', '2020-05-16 04:58:08', '2020-05-16 04:58:08'),
(437, '54.36.148.164', 2, '2020-05-16', '07:05:17', '2020-05-16 05:05:14', '2020-05-16 05:05:17'),
(438, '54.36.150.137', 2, '2020-05-16', '09:56:06', '2020-05-16 07:56:06', '2020-05-16 07:56:06'),
(439, '54.36.150.156', 2, '2020-05-16', '11:31:09', '2020-05-16 09:31:09', '2020-05-16 09:31:09'),
(440, '54.36.148.127', 2, '2020-05-16', '12:40:04', '2020-05-16 10:40:04', '2020-05-16 10:40:04'),
(441, '54.36.148.116', 2, '2020-05-16', '14:21:56', '2020-05-16 12:21:56', '2020-05-16 12:21:56'),
(442, '54.36.150.88', 2, '2020-05-16', '15:03:36', '2020-05-16 13:03:36', '2020-05-16 13:03:36'),
(443, '54.36.148.99', 2, '2020-05-16', '16:58:53', '2020-05-16 14:58:53', '2020-05-16 14:58:53'),
(444, '54.36.148.89', 2, '2020-05-16', '17:00:33', '2020-05-16 15:00:33', '2020-05-16 15:00:33'),
(445, '54.36.150.167', 2, '2020-05-16', '17:07:47', '2020-05-16 15:07:47', '2020-05-16 15:07:47'),
(446, '54.36.148.211', 2, '2020-05-16', '17:10:25', '2020-05-16 15:10:25', '2020-05-16 15:10:25'),
(447, '54.36.150.9', 2, '2020-05-16', '18:33:22', '2020-05-16 16:33:22', '2020-05-16 16:33:22'),
(448, '54.36.150.63', 2, '2020-05-16', '19:08:55', '2020-05-16 17:08:55', '2020-05-16 17:08:55'),
(449, '54.36.150.185', 2, '2020-05-16', '19:38:13', '2020-05-16 17:38:13', '2020-05-16 17:38:13'),
(450, '54.36.150.102', 2, '2020-05-16', '22:51:35', '2020-05-16 20:51:35', '2020-05-16 20:51:35'),
(451, '54.36.148.169', 2, '2020-05-17', '05:39:06', '2020-05-17 03:39:06', '2020-05-17 03:39:06'),
(452, '54.36.150.130', 2, '2020-05-17', '19:05:12', '2020-05-17 17:05:12', '2020-05-17 17:05:12'),
(453, '54.36.150.74', 2, '2020-05-18', '17:34:18', '2020-05-18 15:34:18', '2020-05-18 15:34:18'),
(454, '54.36.150.183', 2, '2020-05-19', '02:28:04', '2020-05-19 00:28:04', '2020-05-19 00:28:04'),
(455, '54.36.150.28', 2, '2020-05-19', '03:00:30', '2020-05-19 01:00:30', '2020-05-19 01:00:30'),
(456, '31.13.127.111', 2, '2020-05-19', '13:38:05', '2020-05-19 11:38:05', '2020-05-19 11:38:05'),
(457, '54.36.148.92', 2, '2020-05-19', '13:46:46', '2020-05-19 11:46:46', '2020-05-19 11:46:46'),
(458, '54.36.149.74', 2, '2020-05-19', '19:00:39', '2020-05-19 17:00:39', '2020-05-19 17:00:39'),
(459, '54.36.150.149', 2, '2020-05-20', '08:58:22', '2020-05-20 06:58:22', '2020-05-20 06:58:22'),
(460, '31.13.115.116', 2, '2020-05-22', '01:08:24', '2020-05-21 23:08:24', '2020-05-21 23:08:24'),
(461, '66.220.149.13', 2, '2020-05-22', '19:00:45', '2020-05-22 17:00:45', '2020-05-22 17:00:45'),
(462, '179.43.169.182', 5, '2020-05-23', '23:22:49', '2020-05-23 21:21:28', '2020-05-23 21:22:49'),
(463, '179.43.169.182', 2, '2020-05-23', '23:21:28', '2020-05-23 21:21:28', '2020-05-23 21:21:28'),
(464, '65.154.226.109', 3, '2020-05-23', '23:22:39', '2020-05-23 21:22:11', '2020-05-23 21:22:39'),
(465, '178.79.139.96', 2, '2020-05-24', '15:49:21', '2020-05-24 13:49:21', '2020-05-24 13:49:21'),
(466, '109.74.200.120', 2, '2020-05-24', '15:49:22', '2020-05-24 13:49:22', '2020-05-24 13:49:22'),
(467, '64.225.68.251', 2, '2020-05-24', '15:49:27', '2020-05-24 13:49:27', '2020-05-24 13:49:27'),
(468, '172.104.243.193', 2, '2020-05-24', '15:49:30', '2020-05-24 13:49:30', '2020-05-24 13:49:30'),
(469, '31.13.127.18', 2, '2020-05-26', '20:07:54', '2020-05-26 18:07:53', '2020-05-26 18:07:54'),
(470, '102.41.181.79', 8, '2020-05-26', '20:09:15', '2020-05-26 18:07:54', '2020-05-26 18:09:15'),
(471, '66.220.149.2', 2, '2020-05-29', '15:46:06', '2020-05-29 13:46:06', '2020-05-29 13:46:06'),
(472, '222.94.212.49', 2, '2020-05-30', '18:18:47', '2020-05-30 16:18:47', '2020-05-30 16:18:47'),
(473, '161.35.189.210', 2, '2020-06-01', '05:00:12', '2020-06-01 03:00:12', '2020-06-01 03:00:12'),
(474, '183.136.225.46', 2, '2020-06-02', '06:16:15', '2020-06-02 04:16:15', '2020-06-02 04:16:15'),
(475, '41.69.142.185', 18, '2020-06-03', '13:55:12', '2020-06-03 10:27:31', '2020-06-03 11:55:12'),
(476, '156.163.3.252', 2, '2020-06-03', '15:41:44', '2020-06-03 13:41:44', '2020-06-03 13:41:44'),
(477, '41.237.90.116', 17, '2020-06-03', '17:42:17', '2020-06-03 13:42:11', '2020-06-03 15:42:17'),
(478, '196.153.5.104', 3, '2020-06-03', '16:48:35', '2020-06-03 14:48:23', '2020-06-03 14:48:35'),
(479, '197.60.157.85', 2, '2020-06-03', '22:32:28', '2020-06-03 20:32:28', '2020-06-03 20:32:28'),
(480, '41.68.172.108', 18, '2020-06-04', '12:47:31', '2020-06-04 10:44:25', '2020-06-04 10:47:31'),
(481, '86.190.59.216', 20, '2020-06-04', '13:37:16', '2020-06-04 11:24:49', '2020-06-04 11:37:16'),
(482, '197.192.115.195', 2, '2020-06-04', '19:15:48', '2020-06-04 17:15:48', '2020-06-04 17:15:48'),
(483, '41.45.134.169', 8, '2020-06-04', '22:10:34', '2020-06-04 20:09:12', '2020-06-04 20:10:34'),
(484, '69.171.251.14', 2, '2020-06-05', '11:43:07', '2020-06-05 09:43:07', '2020-06-05 09:43:07'),
(485, '159.203.80.119', 2, '2020-06-05', '18:59:04', '2020-06-05 16:59:04', '2020-06-05 16:59:04'),
(486, '159.203.172.42', 2, '2020-06-05', '21:35:31', '2020-06-05 19:35:31', '2020-06-05 19:35:31'),
(487, '183.136.225.46', 3, '2020-06-06', '04:13:55', '2020-06-06 01:42:28', '2020-06-06 02:13:55'),
(488, '41.237.69.84', 4, '2020-06-06', '12:33:05', '2020-06-06 10:32:54', '2020-06-06 10:33:05'),
(489, '34.125.92.118', 2, '2020-06-07', '17:39:16', '2020-06-07 15:39:16', '2020-06-07 15:39:16'),
(490, '51.77.135.89', 3, '2020-06-08', '01:13:58', '2020-06-07 23:13:58', '2020-06-07 23:13:58'),
(491, '185.220.100.244', 3, '2020-06-08', '01:19:06', '2020-06-07 23:19:06', '2020-06-07 23:19:06'),
(492, '35.193.194.224', 3, '2020-06-08', '08:38:01', '2020-06-08 03:46:29', '2020-06-08 06:38:01'),
(493, '34.125.92.118', 2, '2020-06-08', '06:40:20', '2020-06-08 04:40:20', '2020-06-08 04:40:20'),
(494, '173.252.95.15', 2, '2020-06-11', '20:51:09', '2020-06-11 18:51:09', '2020-06-11 18:51:09'),
(495, '183.136.225.46', 2, '2020-06-13', '23:20:13', '2020-06-13 21:20:13', '2020-06-13 21:20:13'),
(496, '183.136.225.46', 2, '2020-06-14', '22:06:05', '2020-06-14 20:06:05', '2020-06-14 20:06:05'),
(497, '209.17.96.98', 2, '2020-06-16', '05:09:36', '2020-06-16 03:09:36', '2020-06-16 03:09:36'),
(498, '209.17.97.82', 2, '2020-06-16', '06:57:30', '2020-06-16 04:57:30', '2020-06-16 04:57:30'),
(499, '209.17.96.194', 2, '2020-06-16', '13:09:30', '2020-06-16 11:09:30', '2020-06-16 11:09:30'),
(500, '173.252.87.118', 2, '2020-06-17', '23:02:15', '2020-06-17 21:02:15', '2020-06-17 21:02:15'),
(501, '209.17.96.90', 2, '2020-06-19', '02:10:32', '2020-06-19 00:10:32', '2020-06-19 00:10:32'),
(502, '209.17.97.98', 2, '2020-06-19', '04:56:02', '2020-06-19 02:56:02', '2020-06-19 02:56:02'),
(503, '209.17.96.66', 2, '2020-06-20', '06:16:39', '2020-06-20 04:16:39', '2020-06-20 04:16:39'),
(504, '35.228.111.23', 2, '2020-06-21', '09:37:45', '2020-06-21 07:37:45', '2020-06-21 07:37:45'),
(505, '209.17.96.202', 2, '2020-06-22', '22:49:03', '2020-06-22 20:49:03', '2020-06-22 20:49:03'),
(506, '209.17.96.162', 2, '2020-06-24', '11:00:33', '2020-06-24 09:00:33', '2020-06-24 09:00:33'),
(507, '173.252.87.32', 2, '2020-06-25', '21:51:26', '2020-06-25 19:51:26', '2020-06-25 19:51:26'),
(508, '209.17.97.82', 2, '2020-06-27', '05:24:45', '2020-06-27 03:24:45', '2020-06-27 03:24:45'),
(509, '209.17.96.50', 2, '2020-06-27', '12:14:22', '2020-06-27 10:14:22', '2020-06-27 10:14:22'),
(510, '173.252.87.119', 2, '2020-06-28', '10:31:16', '2020-06-28 08:31:16', '2020-06-28 08:31:16'),
(511, '209.17.96.178', 2, '2020-06-30', '06:19:44', '2020-06-30 04:19:44', '2020-06-30 04:19:44'),
(512, '209.17.96.10', 2, '2020-06-30', '07:22:15', '2020-06-30 05:22:14', '2020-06-30 05:22:15'),
(513, '209.17.97.50', 2, '2020-06-30', '14:05:21', '2020-06-30 12:05:21', '2020-06-30 12:05:21'),
(514, '209.17.96.202', 2, '2020-06-30', '18:22:23', '2020-06-30 16:22:23', '2020-06-30 16:22:23'),
(515, '102.184.59.109', 114, '2020-07-02', '12:51:54', '2020-07-02 09:00:07', '2020-07-02 10:51:54'),
(516, '31.13.115.13', 2, '2020-07-02', '12:04:12', '2020-07-02 10:04:12', '2020-07-02 10:04:12'),
(517, '31.13.115.2', 2, '2020-07-02', '12:04:16', '2020-07-02 10:04:16', '2020-07-02 10:04:16'),
(518, '31.13.115.117', 2, '2020-07-02', '12:04:31', '2020-07-02 10:04:31', '2020-07-02 10:04:31'),
(519, '69.171.251.24', 2, '2020-07-02', '12:06:57', '2020-07-02 10:06:57', '2020-07-02 10:06:57'),
(520, '159.203.89.161', 2, '2020-07-03', '00:55:59', '2020-07-02 22:55:59', '2020-07-02 22:55:59'),
(521, '209.17.97.106', 2, '2020-07-03', '03:31:33', '2020-07-03 01:31:33', '2020-07-03 01:31:33'),
(522, '66.249.73.187', 2, '2020-07-03', '04:07:02', '2020-07-03 02:07:02', '2020-07-03 02:07:02'),
(523, '66.249.73.185', 2, '2020-07-03', '04:11:47', '2020-07-03 02:11:47', '2020-07-03 02:11:47'),
(524, '209.17.97.10', 2, '2020-07-03', '06:23:20', '2020-07-03 04:23:20', '2020-07-03 04:23:20'),
(525, '209.17.96.178', 2, '2020-07-03', '09:29:40', '2020-07-03 07:29:40', '2020-07-03 07:29:40');
INSERT INTO `visits` (`id`, `ip`, `hits`, `date`, `visit_time`, `created_at`, `updated_at`) VALUES
(526, '209.17.97.50', 2, '2020-07-03', '11:07:12', '2020-07-03 09:07:12', '2020-07-03 09:07:12'),
(527, '109.154.232.76', 7, '2020-07-03', '20:20:24', '2020-07-03 18:17:41', '2020-07-03 18:20:24'),
(528, '83.143.86.62', 2, '2020-07-04', '08:18:14', '2020-07-04 06:18:14', '2020-07-04 06:18:14'),
(529, '83.143.86.62', 2, '2020-07-04', '08:18:14', '2020-07-04 06:18:14', '2020-07-04 06:18:14'),
(530, '31.13.115.10', 2, '2020-07-05', '10:15:48', '2020-07-05 08:15:47', '2020-07-05 08:15:48'),
(531, '31.13.115.119', 2, '2020-07-05', '10:15:49', '2020-07-05 08:15:49', '2020-07-05 08:15:49'),
(532, '165.227.122.84', 2, '2020-07-05', '19:56:15', '2020-07-05 17:56:15', '2020-07-05 17:56:15'),
(533, '138.197.98.72', 2, '2020-07-05', '21:23:20', '2020-07-05 19:23:20', '2020-07-05 19:23:20'),
(534, '69.171.251.17', 2, '2020-07-05', '23:01:04', '2020-07-05 21:01:04', '2020-07-05 21:01:04'),
(535, '209.17.96.82', 2, '2020-07-08', '11:20:21', '2020-07-08 09:20:21', '2020-07-08 09:20:21'),
(536, '88.198.33.145', 20, '2020-07-09', '23:36:29', '2020-07-09 21:35:02', '2020-07-09 21:36:29'),
(537, '144.76.137.254', 2, '2020-07-10', '07:05:36', '2020-07-10 05:05:36', '2020-07-10 05:05:36'),
(538, '209.17.96.130', 2, '2020-07-10', '08:49:50', '2020-07-10 06:49:50', '2020-07-10 06:49:50'),
(539, '173.252.95.34', 2, '2020-07-10', '20:33:37', '2020-07-10 18:33:37', '2020-07-10 18:33:37'),
(540, '66.249.69.219', 2, '2020-07-12', '00:08:57', '2020-07-11 22:08:57', '2020-07-11 22:08:57'),
(541, '66.249.64.155', 2, '2020-07-12', '01:38:42', '2020-07-11 23:38:42', '2020-07-11 23:38:42'),
(542, '35.225.8.194', 3, '2020-07-13', '10:14:47', '2020-07-13 02:16:13', '2020-07-13 08:14:47'),
(543, '209.17.96.50', 2, '2020-07-14', '10:04:24', '2020-07-14 08:04:24', '2020-07-14 08:04:24'),
(544, '83.143.86.62', 2, '2020-07-16', '09:21:38', '2020-07-16 07:21:38', '2020-07-16 07:21:38'),
(545, '83.143.86.62', 2, '2020-07-16', '09:21:38', '2020-07-16 07:21:38', '2020-07-16 07:21:38'),
(546, '69.171.251.18', 2, '2020-07-17', '06:21:52', '2020-07-17 04:21:52', '2020-07-17 04:21:52'),
(547, '209.17.96.130', 2, '2020-07-17', '11:09:58', '2020-07-17 09:09:58', '2020-07-17 09:09:58'),
(548, '209.17.97.58', 2, '2020-07-17', '23:54:19', '2020-07-17 21:54:19', '2020-07-17 21:54:19'),
(549, '167.172.213.162', 5, '2020-07-18', '06:45:59', '2020-07-18 04:45:53', '2020-07-18 04:45:59'),
(550, '183.136.225.46', 2, '2020-07-19', '21:40:12', '2020-07-19 19:40:12', '2020-07-19 19:40:12'),
(551, '66.249.73.185', 3, '2020-07-20', '13:24:37', '2020-07-19 23:31:21', '2020-07-20 11:24:37'),
(552, '35.239.64.68', 3, '2020-07-20', '16:02:14', '2020-07-20 08:02:08', '2020-07-20 14:02:14'),
(553, '35.202.200.38', 2, '2020-07-21', '11:46:01', '2020-07-21 09:46:01', '2020-07-21 09:46:01'),
(554, '209.17.96.106', 2, '2020-07-22', '11:16:46', '2020-07-22 09:16:46', '2020-07-22 09:16:46'),
(555, '209.17.97.98', 2, '2020-07-22', '13:12:20', '2020-07-22 11:12:20', '2020-07-22 11:12:20'),
(556, '70.37.62.233', 2, '2020-07-22', '19:51:41', '2020-07-22 17:51:41', '2020-07-22 17:51:41'),
(557, '70.37.62.233', 2, '2020-07-22', '19:51:41', '2020-07-22 17:51:41', '2020-07-22 17:51:41'),
(558, '179.43.169.182', 4, '2020-07-23', '23:23:02', '2020-07-23 21:21:18', '2020-07-23 21:23:02'),
(559, '179.43.169.182', 2, '2020-07-23', '23:21:18', '2020-07-23 21:21:18', '2020-07-23 21:21:18'),
(560, '65.154.226.109', 3, '2020-07-23', '23:21:59', '2020-07-23 21:21:57', '2020-07-23 21:21:59'),
(561, '185.206.225.141', 2, '2020-07-24', '09:25:02', '2020-07-24 07:25:02', '2020-07-24 07:25:02'),
(562, '173.252.127.120', 2, '2020-07-24', '11:04:12', '2020-07-24 09:04:12', '2020-07-24 09:04:12'),
(563, '13.77.161.194', 3, '2020-07-24', '23:02:13', '2020-07-24 21:02:13', '2020-07-24 21:02:13'),
(564, '209.17.96.210', 2, '2020-07-24', '23:08:58', '2020-07-24 21:08:58', '2020-07-24 21:08:58'),
(565, '46.246.40.158', 4, '2020-07-25', '18:58:25', '2020-07-25 16:58:13', '2020-07-25 16:58:25'),
(566, '35.222.83.197', 3, '2020-07-26', '16:24:22', '2020-07-26 05:55:13', '2020-07-26 14:24:22'),
(567, '66.249.73.185', 2, '2020-07-28', '13:12:35', '2020-07-28 11:12:35', '2020-07-28 11:12:35'),
(568, '66.249.73.187', 2, '2020-07-28', '18:54:15', '2020-07-28 16:54:15', '2020-07-28 16:54:15'),
(569, '51.158.114.198', 2, '2020-07-29', '23:00:57', '2020-07-29 21:00:57', '2020-07-29 21:00:57'),
(570, '209.17.97.10', 2, '2020-07-30', '20:54:51', '2020-07-30 18:54:51', '2020-07-30 18:54:51'),
(571, '173.252.83.21', 2, '2020-07-31', '10:09:31', '2020-07-31 08:09:31', '2020-07-31 08:09:31'),
(572, '209.17.96.2', 2, '2020-07-31', '13:20:18', '2020-07-31 11:20:18', '2020-07-31 11:20:18'),
(573, '41.65.224.14', 10, '2020-08-03', '00:47:16', '2020-08-02 22:45:10', '2020-08-02 22:47:16'),
(574, '167.71.88.167', 2, '2020-08-03', '00:55:41', '2020-08-02 22:55:41', '2020-08-02 22:55:41'),
(575, '163.172.164.113', 2, '2020-08-03', '04:13:51', '2020-08-03 02:13:51', '2020-08-03 02:13:51'),
(576, '51.89.201.9', 3, '2020-08-03', '10:06:56', '2020-08-03 05:25:54', '2020-08-03 08:06:56'),
(577, '40.117.176.188', 3, '2020-08-04', '07:59:46', '2020-08-04 05:56:53', '2020-08-04 05:59:46'),
(578, '142.93.233.48', 3, '2020-08-04', '09:34:30', '2020-08-04 07:30:11', '2020-08-04 07:34:30'),
(579, '209.17.96.234', 2, '2020-08-04', '09:40:57', '2020-08-04 07:40:57', '2020-08-04 07:40:57'),
(580, '138.197.209.180', 3, '2020-08-05', '12:59:20', '2020-08-05 10:57:26', '2020-08-05 10:59:20'),
(581, '66.249.69.217', 2, '2020-08-05', '20:14:30', '2020-08-05 18:14:30', '2020-08-05 18:14:30'),
(582, '66.249.73.185', 2, '2020-08-05', '22:27:49', '2020-08-05 20:27:49', '2020-08-05 20:27:49'),
(583, '35.232.14.89', 2, '2020-08-06', '00:04:06', '2020-08-05 22:04:06', '2020-08-05 22:04:06'),
(584, '173.252.83.118', 2, '2020-08-07', '10:13:01', '2020-08-07 08:13:01', '2020-08-07 08:13:01'),
(585, '209.17.97.58', 2, '2020-08-07', '16:32:13', '2020-08-07 14:32:13', '2020-08-07 14:32:13'),
(586, '209.17.96.138', 2, '2020-08-08', '06:30:05', '2020-08-08 04:30:05', '2020-08-08 04:30:05'),
(587, '131.220.6.156', 2, '2020-08-08', '20:05:24', '2020-08-08 18:05:24', '2020-08-08 18:05:24'),
(588, '131.220.6.156', 2, '2020-08-08', '20:05:24', '2020-08-08 18:05:24', '2020-08-08 18:05:24'),
(589, '104.131.45.121', 2, '2020-08-09', '09:52:18', '2020-08-09 07:52:18', '2020-08-09 07:52:18'),
(590, '31.13.115.23', 2, '2020-08-09', '10:43:33', '2020-08-09 08:43:33', '2020-08-09 08:43:33'),
(591, '41.68.77.238', 11, '2020-08-09', '10:51:20', '2020-08-09 08:43:43', '2020-08-09 08:51:20'),
(592, '104.131.57.162', 2, '2020-08-09', '10:53:41', '2020-08-09 08:53:41', '2020-08-09 08:53:41'),
(593, '127.0.0.1', 184, '2020-08-09', '15:58:40', '2020-08-09 09:14:08', '2020-08-09 13:58:40'),
(594, '127.0.0.1', 161, '2020-08-10', '14:12:25', '2020-08-10 07:15:48', '2020-08-10 12:12:25'),
(595, '127.0.0.1', 23, '2020-08-11', '10:41:55', '2020-08-11 08:08:42', '2020-08-11 08:41:55'),
(596, '127.0.0.1', 2, '2020-08-13', '12:14:27', '2020-08-13 10:14:27', '2020-08-13 10:14:27'),
(597, '127.0.0.1', 6, '2020-08-16', '09:46:22', '2020-08-16 07:25:58', '2020-08-16 07:46:22'),
(598, '127.0.0.1', 136, '2020-08-17', '15:51:52', '2020-08-17 07:07:32', '2020-08-17 13:51:52'),
(599, '127.0.0.1', 15, '2020-08-20', '16:08:37', '2020-08-20 10:41:44', '2020-08-20 14:08:37'),
(600, '127.0.0.1', 160, '2020-08-23', '16:40:31', '2020-08-23 06:43:52', '2020-08-23 14:40:31'),
(601, '127.0.0.1', 53, '2020-08-24', '21:10:10', '2020-08-24 06:14:02', '2020-08-24 19:10:10'),
(602, '127.0.0.1', 4, '2020-08-25', '07:59:36', '2020-08-25 05:45:37', '2020-08-25 05:59:36'),
(603, '127.0.0.1', 11, '2020-08-29', '23:31:35', '2020-08-29 21:07:09', '2020-08-29 21:31:35'),
(604, '127.0.0.1', 319, '2020-08-30', '18:53:16', '2020-08-30 01:37:48', '2020-08-30 16:53:16'),
(605, '127.0.0.1', 89, '2020-09-04', '22:37:05', '2020-09-04 16:50:37', '2020-09-04 20:37:05'),
(606, '127.0.0.1', 277, '2020-09-05', '23:03:35', '2020-09-05 04:57:46', '2020-09-05 21:03:35'),
(607, '127.0.0.1', 85, '2020-09-06', '07:01:22', '2020-09-05 22:17:46', '2020-09-06 05:01:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `advices`
--
ALTER TABLE `advices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_attachementable_type_attachementable_id_index` (`attachementable_type`,`attachementable_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_writable_type_writable_id_index` (`writable_type`,`writable_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_blog_id_foreign` (`blog_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consultations_type_id_foreign` (`type_id`),
  ADD KEY `consultations_patient_id_foreign` (`patient_id`),
  ADD KEY `consultations_doctor_id_foreign` (`doctor_id`),
  ADD KEY `consultations_department_id_foreign` (`department_id`),
  ADD KEY `consultations_currency_id_foreign` (`currency_id`),
  ADD KEY `consultations_recommended_doctor_foreign` (`recommended_doctor`);

--
-- Indexes for table `consultations_reviews`
--
ALTER TABLE `consultations_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consultations_reviews_patient_id_foreign` (`patient_id`),
  ADD KEY `consultations_reviews_consultation_id_foreign` (`consultation_id`);

--
-- Indexes for table `consultation_reports`
--
ALTER TABLE `consultation_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consultation_reports_user_id_foreign` (`user_id`),
  ADD KEY `consultation_reports_consultation_id_foreign` (`consultation_id`);

--
-- Indexes for table `consultation_types`
--
ALTER TABLE `consultation_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_user1_type_user1_id_index` (`user1_type`,`user1_id`),
  ADD KEY `conversations_user2_type_user2_id_index` (`user2_type`,`user2_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_appointments`
--
ALTER TABLE `doctor_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_details`
--
ALTER TABLE `doctor_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_details_doctor_id_foreign` (`doctor_id`),
  ADD KEY `doctor_details_template_id_foreign` (`template_id`),
  ADD KEY `doctor_details_region_id_foreign` (`region_id`),
  ADD KEY `doctor_details_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `d_contacts`
--
ALTER TABLE `d_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_contacts_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `d_galleries`
--
ALTER TABLE `d_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_galleries_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `d_images`
--
ALTER TABLE `d_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_images_gallery_id_foreign` (`gallery_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_patient_id_foreign` (`patient_id`),
  ADD KEY `favorites_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_user_id_foreign` (`user_id`);

--
-- Indexes for table `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joinapps`
--
ALTER TABLE `joinapps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `medical_advices`
--
ALTER TABLE `medical_advices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_type_sender_id_index` (`sender_type`,`sender_id`),
  ADD KEY `messages_conversation_id_foreign` (`conversation_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `noti_tokens`
--
ALTER TABLE `noti_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_payed_for_type_payed_for_id_index` (`payed_for_type`,`payed_for_id`),
  ADD KEY `payments_currency_id_foreign` (`currency_id`),
  ADD KEY `payments_confirmed_by_id_foreign` (`confirmed_by_id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_patient_id_foreign` (`patient_id`),
  ADD KEY `reviews_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_lists`
--
ALTER TABLE `subscription_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_department_id_foreign` (`department_id`);

--
-- Indexes for table `vedios`
--
ALTER TABLE `vedios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_categories`
--
ALTER TABLE `video_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_comments`
--
ALTER TABLE `video_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_comments_user_id_foreign` (`user_id`),
  ADD KEY `video_comments_video_id_foreign` (`video_id`);

--
-- Indexes for table `video_library`
--
ALTER TABLE `video_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_library_category_id_foreign` (`category_id`);

--
-- Indexes for table `video_likes`
--
ALTER TABLE `video_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_likes_user_id_foreign` (`user_id`),
  ADD KEY `video_likes_video_id_foreign` (`video_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advices`
--
ALTER TABLE `advices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultations`
--
ALTER TABLE `consultations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `consultations_reviews`
--
ALTER TABLE `consultations_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `consultation_reports`
--
ALTER TABLE `consultation_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `consultation_types`
--
ALTER TABLE `consultation_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctor_appointments`
--
ALTER TABLE `doctor_appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `doctor_details`
--
ALTER TABLE `doctor_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `d_contacts`
--
ALTER TABLE `d_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `d_galleries`
--
ALTER TABLE `d_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `d_images`
--
ALTER TABLE `d_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `generals`
--
ALTER TABLE `generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `joinapps`
--
ALTER TABLE `joinapps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_advices`
--
ALTER TABLE `medical_advices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `noti_tokens`
--
ALTER TABLE `noti_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscription_lists`
--
ALTER TABLE `subscription_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `vedios`
--
ALTER TABLE `vedios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_categories`
--
ALTER TABLE `video_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_comments`
--
ALTER TABLE `video_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `video_library`
--
ALTER TABLE `video_library`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `video_likes`
--
ALTER TABLE `video_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consultations`
--
ALTER TABLE `consultations`
  ADD CONSTRAINT `consultations_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consultations_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consultations_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consultations_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consultations_recommended_doctor_foreign` FOREIGN KEY (`recommended_doctor`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `consultations_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `consultation_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consultations_reviews`
--
ALTER TABLE `consultations_reviews`
  ADD CONSTRAINT `consultations_reviews_consultation_id_foreign` FOREIGN KEY (`consultation_id`) REFERENCES `consultations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consultations_reviews_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_details`
--
ALTER TABLE `doctor_details`
  ADD CONSTRAINT `doctor_details_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctor_details_ibfk_1` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `doctor_details_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctor_details_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `d_contacts`
--
ALTER TABLE `d_contacts`
  ADD CONSTRAINT `d_contacts_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `d_galleries`
--
ALTER TABLE `d_galleries`
  ADD CONSTRAINT `d_galleries_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `d_images`
--
ALTER TABLE `d_images`
  ADD CONSTRAINT `d_images_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `d_galleries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_confirmed_by_id_foreign` FOREIGN KEY (`confirmed_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_comments`
--
ALTER TABLE `video_comments`
  ADD CONSTRAINT `video_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `video_comments_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `video_library` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_library`
--
ALTER TABLE `video_library`
  ADD CONSTRAINT `video_library_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `video_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_likes`
--
ALTER TABLE `video_likes`
  ADD CONSTRAINT `video_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `video_likes_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `video_library` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
