-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2026 at 07:36 PM
-- Server version: 10.11.11-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `in_stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry_gender` char(1) DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `entry_company` varchar(191) DEFAULT NULL,
  `entry_firstname` varchar(191) NOT NULL,
  `entry_lastname` varchar(191) NOT NULL,
  `entry_street_address` varchar(191) NOT NULL,
  `entry_suburb` varchar(191) DEFAULT NULL,
  `entry_postcode` varchar(191) NOT NULL,
  `entry_city` varchar(191) NOT NULL,
  `entry_state` varchar(191) DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT 0,
  `entry_zone_id` int(11) NOT NULL DEFAULT 0,
  `entry_latitude` varchar(100) DEFAULT NULL,
  `entry_longitude` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `user_id`, `entry_gender`, `customers_id`, `entry_company`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`, `entry_latitude`, `entry_longitude`) VALUES
(1, 5, NULL, 5, 'allinone', 'Dheeraj', 'gupta', 'Lucknow', NULL, '', '', NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `alert_id` int(11) NOT NULL,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT 0,
  `create_customer_notification` tinyint(1) NOT NULL DEFAULT 0,
  `order_status_email` tinyint(1) NOT NULL DEFAULT 0,
  `order_status_notification` tinyint(1) NOT NULL DEFAULT 0,
  `new_product_email` tinyint(1) NOT NULL DEFAULT 0,
  `new_product_notification` tinyint(1) NOT NULL DEFAULT 0,
  `forgot_email` tinyint(1) NOT NULL DEFAULT 0,
  `forgot_notification` tinyint(1) NOT NULL DEFAULT 0,
  `news_email` tinyint(1) NOT NULL DEFAULT 0,
  `news_notification` tinyint(1) NOT NULL DEFAULT 0,
  `contact_us_email` tinyint(1) NOT NULL DEFAULT 0,
  `contact_us_notification` tinyint(1) NOT NULL DEFAULT 0,
  `order_email` tinyint(1) NOT NULL DEFAULT 0,
  `order_notification` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`alert_id`, `create_customer_email`, `create_customer_notification`, `order_status_email`, `order_status_notification`, `new_product_email`, `new_product_notification`, `forgot_email`, `forgot_notification`, `news_email`, `news_notification`, `contact_us_email`, `contact_us_notification`, `order_email`, `order_notification`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api_calls_list`
--

CREATE TABLE `api_calls_list` (
  `id` int(11) NOT NULL,
  `nonce` text NOT NULL,
  `url` varchar(64) NOT NULL,
  `device_id` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_detail`
--

CREATE TABLE `bank_detail` (
  `bank_detail_id` int(11) NOT NULL,
  `bank_name` varchar(191) NOT NULL,
  `bank_account_number` varchar(191) NOT NULL,
  `bank_routing_number` varchar(191) NOT NULL,
  `bank_address` varchar(191) NOT NULL,
  `bank_iban` varchar(191) NOT NULL,
  `bank_swift` varchar(191) NOT NULL,
  `users_id` int(11) NOT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) NOT NULL,
  `banners_url` varchar(191) NOT NULL,
  `banners_image` text NOT NULL,
  `banners_group` varchar(10) DEFAULT NULL,
  `banners_html_text` text DEFAULT NULL,
  `expires_impressions` int(11) DEFAULT 0,
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` varchar(50) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` varchar(250) NOT NULL,
  `banners_slug` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `languages_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`, `type`, `banners_slug`, `created_at`, `updated_at`, `languages_id`) VALUES
(1, 'Fruits & Vegetable', '50', '264', NULL, NULL, 0, '2022-05-31 00:00:00', NULL, '0000-00-00 00:00:00', NULL, 1, 'product', NULL, '2020-05-11 05:22:25', '2020-05-11 05:22:25', 1),
(2, 'Dairy Products', '50', '267', NULL, NULL, 0, '2022-05-25 00:00:00', NULL, '0000-00-00 00:00:00', NULL, 1, 'product', NULL, '2020-05-11 05:22:46', '2020-05-11 05:22:46', 1),
(3, 'Snacks', '50', '266', NULL, NULL, 0, '2022-10-31 00:00:00', NULL, '0000-00-00 00:00:00', NULL, 1, 'product', NULL, '2020-05-11 05:23:44', '2020-05-11 05:23:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(11) NOT NULL DEFAULT 0,
  `banners_clicked` int(11) NOT NULL DEFAULT 0,
  `banners_history_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `block_ips`
--

CREATE TABLE `block_ips` (
  `id` int(11) NOT NULL,
  `device_id` varchar(191) DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` text DEFAULT NULL,
  `categories_icon` text NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` varchar(11) DEFAULT NULL,
  `date_added` varchar(50) DEFAULT NULL,
  `last_modified` varchar(50) DEFAULT NULL,
  `categories_slug` varchar(191) NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(-1, '120', '120', 0, NULL, NULL, NULL, 'uncategorized', 1, NULL, NULL),
(1, '257', '120', 0, NULL, NULL, NULL, 'beverages', 1, '2019-11-26 19:56:28', '2020-05-14 19:55:14'),
(2, '256', '122', 0, NULL, NULL, NULL, 'eggs-dairy', 1, '2019-11-26 19:57:33', '2020-05-14 19:55:10'),
(3, '259', '125', 0, NULL, NULL, NULL, 'fruits-and-vegetables', 1, '2019-11-26 19:58:08', '2020-05-14 19:55:07'),
(4, '258', '128', 0, NULL, NULL, NULL, 'meat', 1, '2019-11-26 19:59:03', '2020-05-14 19:55:02'),
(5, '260', '130', 0, NULL, NULL, NULL, 'snacks-candy', 1, '2019-11-26 19:59:32', '2020-05-14 19:54:58'),
(6, '206', '205', 0, NULL, NULL, NULL, 'sprouts', 1, '2020-04-27 19:49:48', '2020-05-14 19:54:55'),
(7, '208', '207', 0, NULL, NULL, NULL, 'farm-foods', 1, '2020-04-27 19:50:44', '2020-05-14 19:54:01'),
(8, '210', '209', 0, NULL, NULL, NULL, 'food-grains', 1, '2020-04-27 19:51:32', '2020-05-14 19:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_description_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `categories_name` varchar(32) NOT NULL,
  `categories_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`, `categories_description`) VALUES
(1, 1, 1, 'Beverages', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis felis tempus feugiat maximus'),
(2, 1, 2, 'مشروبات', 'وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا'),
(3, 2, 1, 'Eggs & Dairy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis felis tempus feugiat maximus'),
(4, 2, 2, 'البيض ومنتجات الألبان', 'وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا'),
(5, 3, 1, 'Fruits and Vegetables', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis felis tempus feugiat maximus'),
(6, 3, 2, 'فواكه وخضراوات', 'وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا'),
(7, 4, 1, 'Meat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis felis tempus feugiat maximus'),
(8, 4, 2, 'لحم', 'وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا'),
(9, 5, 1, 'Snacks & Candy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis felis tempus feugiat maximus'),
(10, 5, 2, 'الوجبات الخفيفة والحلوى', 'وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا'),
(11, 6, 1, 'Sprouts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis felis tempus feugiat maximus'),
(12, 6, 2, 'براعم', 'وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا'),
(13, 7, 1, 'Farm Foods', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis felis tempus feugiat maximus'),
(14, 7, 2, 'أغذية المزرعة', 'وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا'),
(15, 8, 1, 'Food Grains', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis felis tempus feugiat maximus'),
(16, 8, 2, 'حبوب الطعام', 'وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا'),
(17, -1, 1, 'uncategorized', 'uncategorized'),
(18, -1, 2, 'uncategorized', 'uncategorized');

-- --------------------------------------------------------

--
-- Table structure for table `categories_role`
--

CREATE TABLE `categories_role` (
  `categories_role_id` int(11) NOT NULL,
  `categories_ids` text NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

CREATE TABLE `compare` (
  `id` int(11) NOT NULL,
  `product_ids` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `compare`
--

INSERT INTO `compare` (`id`, `product_ids`, `customer_id`) VALUES
(1, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `constant_banners`
--

CREATE TABLE `constant_banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(191) NOT NULL,
  `banners_url` text DEFAULT NULL,
  `banners_image` text NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `languages_id` int(11) NOT NULL,
  `type` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `constant_banners`
--

INSERT INTO `constant_banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `date_added`, `status`, `languages_id`, `type`) VALUES
(1, '1', '/shop', '279', '2020-05-07 21:42:20', 1, 1, '1'),
(2, '2', '/shop', '280', '2020-05-07 21:42:50', 1, 1, '2'),
(3, 'banner1', NULL, '174', '2019-09-08 18:43:34', 1, 1, '3'),
(4, 'banner1', NULL, '175', '2019-09-08 18:43:42', 1, 1, '4'),
(5, 'banner1', NULL, '176', '2019-09-08 18:44:15', 1, 1, '5'),
(6, 'banner2_3_4', NULL, '177', '2019-09-10 08:50:55', 1, 1, '6'),
(7, '7', NULL, '196', '2020-07-07 10:29:55', 1, 1, '7'),
(8, '8', NULL, '175', '2020-07-07 09:41:40', 1, 1, '8'),
(9, '9', NULL, '174', '2020-07-07 09:42:46', 1, 1, '9'),
(10, 'banner5_6', NULL, '185', '2019-09-10 09:31:13', 1, 1, '10'),
(11, 'banner5_6', NULL, '184', '2019-09-10 09:31:24', 1, 1, '11'),
(12, 'banner5_6', NULL, '182', '2019-09-10 09:31:35', 1, 1, '12'),
(13, 'banner5_6', NULL, '192', '2019-09-10 09:32:18', 1, 1, '13'),
(14, 'banner5_6', NULL, '183', '2019-09-10 09:32:28', 1, 1, '14'),
(15, 'banner7_8', NULL, '189', '2019-09-10 09:52:02', 1, 1, '15'),
(16, 'banner7_8', NULL, '186', '2019-09-10 09:52:29', 1, 1, '16'),
(17, 'banner7_8', NULL, '187', '2019-09-10 09:47:56', 1, 1, '17'),
(18, 'banner7_8', NULL, '188', '2019-09-10 09:48:05', 1, 1, '18'),
(19, 'banner9', NULL, '190', '2019-09-10 10:19:03', 1, 1, '19'),
(20, 'banner9', NULL, '191', '2019-09-10 10:19:13', 1, 1, '20'),
(21, 'banner10_11_12', NULL, '193', '2019-09-10 10:26:12', 1, 1, '21'),
(22, 'banner10_11_12', NULL, '192', '2019-09-10 10:26:30', 1, 1, '22'),
(23, 'banner10_11_12', NULL, '195', '2019-09-10 10:26:41', 1, 1, '23'),
(24, 'banner10_11_12', NULL, '196', '2019-09-10 10:26:54', 1, 1, '24'),
(25, 'banner13_14_15', NULL, '200', '2019-09-10 11:01:09', 1, 1, '25'),
(26, 'banner13_14_15', NULL, '197', '2019-09-10 11:01:27', 1, 1, '26'),
(27, 'banner13_14_15', NULL, '199', '2019-09-10 11:02:12', 1, 1, '27'),
(28, 'banner13_14_15', NULL, '198', '2019-09-10 11:02:23', 1, 1, '28'),
(29, 'banner13_14_15', NULL, '201', '2019-09-10 11:02:36', 1, 1, '29'),
(30, 'banner16_17', NULL, '202', '2019-09-10 11:19:45', 1, 1, '30'),
(31, 'banner16_17', NULL, '204', '2019-09-10 11:19:58', 1, 1, '31'),
(32, 'banner16_17', NULL, '203', '2019-09-10 11:21:00', 1, 1, '32'),
(33, '33', NULL, '190', '2020-07-07 12:01:53', 1, 1, '33'),
(34, '34', NULL, '191', '2020-07-07 12:02:34', 1, 1, '34'),
(35, 'banner18_19', NULL, '182', '2019-09-10 11:31:04', 1, 1, '35'),
(36, 'banner18_19', NULL, '192', '2019-09-10 11:31:20', 1, 1, '36'),
(37, 'banner18_19', NULL, '199', '2019-09-10 11:31:54', 1, 1, '37'),
(38, 'banner18_19', NULL, '201', '2019-09-10 11:32:06', 1, 1, '38'),
(39, 'ad_banner1', NULL, '107', '2019-09-11 06:17:45', 1, 1, '39'),
(40, 'ad_banner2', NULL, '106', '2019-09-11 06:17:58', 1, 1, '40'),
(41, 'style0', NULL, '114', '0000-00-00 00:00:00', 1, 2, '1'),
(42, 'style0', NULL, '114', '0000-00-00 00:00:00', 1, 2, '2'),
(43, '3', NULL, '285', '2020-07-07 12:30:14', 1, 2, '3'),
(44, '4', NULL, '286', '2020-07-07 12:45:06', 1, 2, '4'),
(45, '5', NULL, '287', '2020-07-07 12:46:32', 1, 2, '5'),
(46, '6', NULL, '284', '2020-07-07 12:57:41', 1, 2, '6'),
(47, '7', NULL, '288', '2020-07-07 12:58:55', 1, 2, '7'),
(48, '8', NULL, '286', '2020-07-07 13:00:32', 1, 2, '8'),
(49, '9', NULL, '285', '2020-07-07 13:00:49', 1, 2, '9'),
(50, '10', NULL, '286', '2020-07-07 13:03:08', 1, 2, '10'),
(51, '11', NULL, '287', '2020-07-07 13:04:24', 1, 2, '11'),
(52, '12', NULL, '285', '2020-07-07 13:06:05', 1, 2, '12'),
(53, '13', NULL, '289', '2020-07-07 13:08:56', 1, 2, '13'),
(54, '14', NULL, '290', '2020-07-07 13:11:41', 1, 2, '14'),
(55, '15', NULL, '290', '2020-07-07 13:28:12', 1, 2, '15'),
(56, '16', NULL, '285', '2020-07-07 13:28:44', 1, 2, '16'),
(57, '17', NULL, '286', '2020-07-07 13:29:09', 1, 2, '17'),
(58, '18', NULL, '291', '2020-07-07 13:30:33', 1, 2, '18'),
(59, '19', NULL, '284', '2020-07-07 13:31:57', 1, 2, '19'),
(60, '20', NULL, '292', '2020-07-07 13:33:02', 1, 2, '20'),
(61, '21', NULL, '283', '2020-07-07 13:34:28', 1, 2, '21'),
(62, '22', NULL, '289', '2020-07-07 13:35:02', 1, 2, '22'),
(63, '23', NULL, '285', '2020-07-07 13:35:30', 1, 2, '23'),
(64, '24', NULL, '288', '2020-07-07 13:35:44', 1, 2, '24'),
(65, '25', NULL, '288', '2020-07-07 13:37:43', 1, 2, '25'),
(66, '26', NULL, '293', '2020-07-07 13:38:48', 1, 2, '26'),
(67, '27', NULL, '286', '2020-07-07 13:39:21', 1, 2, '27'),
(68, '28', NULL, '285', '2020-07-07 13:39:38', 1, 2, '28'),
(69, '29', NULL, '292', '2020-07-07 13:40:07', 1, 2, '29'),
(70, '30', NULL, '284', '2020-07-07 13:41:32', 1, 2, '30'),
(71, '31', NULL, '282', '2020-07-07 13:42:06', 1, 2, '31'),
(72, '32', NULL, '288', '2020-07-07 13:42:26', 1, 2, '32'),
(73, '33', NULL, '293', '2020-07-07 13:43:55', 1, 2, '33'),
(74, '34', NULL, '292', '2020-07-07 13:44:30', 1, 2, '34'),
(75, '35', NULL, '285', '2020-07-07 13:45:07', 1, 2, '35'),
(76, '36', NULL, '289', '2020-07-07 13:45:41', 1, 2, '36'),
(77, '37', NULL, '286', '2020-07-07 13:46:24', 1, 2, '37'),
(78, '38', NULL, '292', '2020-07-07 13:47:05', 1, 2, '38'),
(79, 'ad_banner1', NULL, '107', '0000-00-00 00:00:00', 1, 2, '39'),
(80, 'ad_banner2', NULL, '106', '0000-00-00 00:00:00', 1, 2, '40'),
(81, 'ad_banner3', NULL, '107', '2020-02-26 02:10:11', 1, 1, '41'),
(82, 'ad_banner3', NULL, '107', '2020-02-26 04:08:08', 1, 2, '41'),
(83, 'ad_banner3', NULL, '107', '2020-02-26 02:10:11', 1, 1, '41'),
(84, 'ad_banner3', NULL, '107', '2020-02-26 04:08:08', 1, 2, '41'),
(85, 'ad_banner3', NULL, '107', '2020-02-26 02:10:11', 1, 1, '41'),
(86, 'ad_banner3', NULL, '107', '2020-02-26 04:08:08', 1, 2, '41');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `store_type` varchar(100) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `store_type`, `name`, `email`, `mobile_no`, `message`, `created_at`, `updated_at`) VALUES
(1, 'home_hardware', 'dk', 'herodheeraj8931@gmail.com', '08931833660', 'ac', '2026-06-18 22:12:46', '2026-06-18 22:12:46'),
(2, 'grocery', 'dk', 'herodheeraj8931@gmail.com', '08931833660', 'bbbbbbbbb', '2026-06-18 22:16:16', '2026-06-18 22:16:16'),
(3, 'grocery', 'dk', 'herodheeraj8931@gmail.com', '08931833660', 'abbbbbbbbb', '2026-06-18 22:19:12', '2026-06-18 22:19:12'),
(4, 'grocery', 'dk', 'herodheeraj8931@gmail.com', '08931833660', 'abc', '2026-06-18 22:24:25', '2026-06-18 22:24:25'),
(5, 'food_beverages', 'dk', 'herodheeraj8931@gmail.com', '08931833660', 'anc', '2026-06-18 22:25:46', '2026-06-18 22:25:46'),
(6, 'health_beauty', 'dk', 'herodheeraj8931@gmail.com', '08931833660', 'anan', '2026-06-18 22:26:40', '2026-06-18 22:26:40'),
(7, 'food_beverages', 'dk', 'herodheeraj8931@gmail.com', '08931833660', 'amc', '2026-06-18 22:27:18', '2026-06-18 22:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(10) UNSIGNED NOT NULL,
  `countries_name` varchar(100) NOT NULL,
  `countries_iso_code_3` char(3) DEFAULT NULL,
  `countries_iso_code_2` char(2) DEFAULT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_format_id` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_3`, `countries_iso_code_2`, `country_code`, `created_at`, `updated_at`, `address_format_id`) VALUES
(1, 'Afghanistan', 'AFG', 'AF', '93', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(2, 'Aland Islands', 'ALA', 'AX', '+358-18', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(3, 'Albania', 'ALB', 'AL', '355', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(4, 'Algeria', 'DZA', 'DZ', '213', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(5, 'American Samoa', 'ASM', 'AS', '+1-684', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(6, 'Andorra', 'AND', 'AD', '376', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(7, 'Angola', 'AGO', 'AO', '244', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(8, 'Anguilla', 'AIA', 'AI', '+1-264', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(9, 'Antarctica', 'ATA', 'AQ', NULL, '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(10, 'Antigua And Barbuda', 'ATG', 'AG', '+1-268', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(11, 'Argentina', 'ARG', 'AR', '54', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(12, 'Armenia', 'ARM', 'AM', '374', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(13, 'Aruba', 'ABW', 'AW', '297', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(14, 'Australia', 'AUS', 'AU', '61', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(15, 'Austria', 'AUT', 'AT', '43', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(16, 'Azerbaijan', 'AZE', 'AZ', '994', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(17, 'Bahamas The', 'BHS', 'BS', '+1-242', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(18, 'Bahrain', 'BHR', 'BH', '973', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(19, 'Bangladesh', 'BGD', 'BD', '880', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(20, 'Barbados', 'BRB', 'BB', '+1-246', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(21, 'Belarus', 'BLR', 'BY', '375', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(22, 'Belgium', 'BEL', 'BE', '32', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(23, 'Belize', 'BLZ', 'BZ', '501', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(24, 'Benin', 'BEN', 'BJ', '229', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(25, 'Bermuda', 'BMU', 'BM', '+1-441', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(26, 'Bhutan', 'BTN', 'BT', '975', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(27, 'Bolivia', 'BOL', 'BO', '591', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(28, 'Bosnia and Herzegovina', 'BIH', 'BA', '387', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(29, 'Botswana', 'BWA', 'BW', '267', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(30, 'Bouvet Island', 'BVT', 'BV', NULL, '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(31, 'Brazil', 'BRA', 'BR', '55', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(32, 'British Indian Ocean Territory', 'IOT', 'IO', '246', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(33, 'Brunei', 'BRN', 'BN', '673', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(34, 'Bulgaria', 'BGR', 'BG', '359', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(35, 'Burkina Faso', 'BFA', 'BF', '226', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(36, 'Burundi', 'BDI', 'BI', '257', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(37, 'Cambodia', 'KHM', 'KH', '855', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(38, 'Cameroon', 'CMR', 'CM', '237', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(39, 'Canada', 'CAN', 'CA', '1', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(40, 'Cape Verde', 'CPV', 'CV', '238', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(41, 'Cayman Islands', 'CYM', 'KY', '+1-345', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(42, 'Central African Republic', 'CAF', 'CF', '236', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(43, 'Chad', 'TCD', 'TD', '235', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(44, 'Chile', 'CHL', 'CL', '56', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(45, 'China', 'CHN', 'CN', '86', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(46, 'Christmas Island', 'CXR', 'CX', '61', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(47, 'Cocos (Keeling) Islands', 'CCK', 'CC', '61', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(48, 'Colombia', 'COL', 'CO', '57', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(49, 'Comoros', 'COM', 'KM', '269', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(50, 'Congo', 'COG', 'CG', '242', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(51, 'Congo The Democratic Republic Of The', 'COD', 'CD', '243', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(52, 'Cook Islands', 'COK', 'CK', '682', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(53, 'Costa Rica', 'CRI', 'CR', '506', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(54, 'Cote D\'Ivoire (Ivory Coast)', 'CIV', 'CI', '225', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(55, 'Croatia (Hrvatska)', 'HRV', 'HR', '385', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(56, 'Cuba', 'CUB', 'CU', '53', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(57, 'Cyprus', 'CYP', 'CY', '357', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(58, 'Czech Republic', 'CZE', 'CZ', '420', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(59, 'Denmark', 'DNK', 'DK', '45', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(60, 'Djibouti', 'DJI', 'DJ', '253', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(61, 'Dominica', 'DMA', 'DM', '+1-767', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(62, 'Dominican Republic', 'DOM', 'DO', '+1-809 and 1-829', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(63, 'East Timor', 'TLS', 'TL', '670', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(64, 'Ecuador', 'ECU', 'EC', '593', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(65, 'Egypt', 'EGY', 'EG', '20', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(66, 'El Salvador', 'SLV', 'SV', '503', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(67, 'Equatorial Guinea', 'GNQ', 'GQ', '240', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(68, 'Eritrea', 'ERI', 'ER', '291', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(69, 'Estonia', 'EST', 'EE', '372', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(70, 'Ethiopia', 'ETH', 'ET', '251', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(71, 'Falkland Islands', 'FLK', 'FK', '500', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(72, 'Faroe Islands', 'FRO', 'FO', '298', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(73, 'Fiji Islands', 'FJI', 'FJ', '679', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(74, 'Finland', 'FIN', 'FI', '358', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(75, 'France', 'FRA', 'FR', '33', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(76, 'French Guiana', 'GUF', 'GF', '594', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(77, 'French Polynesia', 'PYF', 'PF', '689', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(78, 'French Southern Territories', 'ATF', 'TF', NULL, '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(79, 'Gabon', 'GAB', 'GA', '241', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(80, 'Gambia The', 'GMB', 'GM', '220', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(81, 'Georgia', 'GEO', 'GE', '995', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(82, 'Germany', 'DEU', 'DE', '49', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(83, 'Ghana', 'GHA', 'GH', '233', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(84, 'Gibraltar', 'GIB', 'GI', '350', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(85, 'Greece', 'GRC', 'GR', '30', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(86, 'Greenland', 'GRL', 'GL', '299', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(87, 'Grenada', 'GRD', 'GD', '+1-473', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(88, 'Guadeloupe', 'GLP', 'GP', '590', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(89, 'Guam', 'GUM', 'GU', '+1-671', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(90, 'Guatemala', 'GTM', 'GT', '502', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(91, 'Guernsey and Alderney', 'GGY', 'GG', '+44-1481', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(92, 'Guinea', 'GIN', 'GN', '224', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(93, 'Guinea-Bissau', 'GNB', 'GW', '245', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(94, 'Guyana', 'GUY', 'GY', '592', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(95, 'Haiti', 'HTI', 'HT', '509', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(96, 'Heard and McDonald Islands', 'HMD', 'HM', ' ', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(97, 'Honduras', 'HND', 'HN', '504', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(98, 'Hong Kong S.A.R.', 'HKG', 'HK', '852', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(99, 'Hungary', 'HUN', 'HU', '36', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(100, 'Iceland', 'ISL', 'IS', '354', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(101, 'India', 'IND', 'IN', '91', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(102, 'Indonesia', 'IDN', 'ID', '62', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(103, 'Iran', 'IRN', 'IR', '98', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(104, 'Iraq', 'IRQ', 'IQ', '964', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(105, 'Ireland', 'IRL', 'IE', '353', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(106, 'Israel', 'ISR', 'IL', '972', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(107, 'Italy', 'ITA', 'IT', '39', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(108, 'Jamaica', 'JAM', 'JM', '+1-876', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(109, 'Japan', 'JPN', 'JP', '81', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(110, 'Jersey', 'JEY', 'JE', '+44-1534', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(111, 'Jordan', 'JOR', 'JO', '962', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(112, 'Kazakhstan', 'KAZ', 'KZ', '7', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(113, 'Kenya', 'KEN', 'KE', '254', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(114, 'Kiribati', 'KIR', 'KI', '686', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(115, 'Korea North', 'PRK', 'KP', '850', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(116, 'Korea South', 'KOR', 'KR', '82', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(117, 'Kuwait', 'KWT', 'KW', '965', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(118, 'Kyrgyzstan', 'KGZ', 'KG', '996', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(119, 'Laos', 'LAO', 'LA', '856', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(120, 'Latvia', 'LVA', 'LV', '371', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(121, 'Lebanon', 'LBN', 'LB', '961', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(122, 'Lesotho', 'LSO', 'LS', '266', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(123, 'Liberia', 'LBR', 'LR', '231', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(124, 'Libya', 'LBY', 'LY', '218', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(125, 'Liechtenstein', 'LIE', 'LI', '423', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(126, 'Lithuania', 'LTU', 'LT', '370', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(127, 'Luxembourg', 'LUX', 'LU', '352', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(128, 'Macau S.A.R.', 'MAC', 'MO', '853', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(129, 'Macedonia', 'MKD', 'MK', '389', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(130, 'Madagascar', 'MDG', 'MG', '261', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(131, 'Malawi', 'MWI', 'MW', '265', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(132, 'Malaysia', 'MYS', 'MY', '60', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(133, 'Maldives', 'MDV', 'MV', '960', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(134, 'Mali', 'MLI', 'ML', '223', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(135, 'Malta', 'MLT', 'MT', '356', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(136, 'Man (Isle of)', 'IMN', 'IM', '+44-1624', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(137, 'Marshall Islands', 'MHL', 'MH', '692', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(138, 'Martinique', 'MTQ', 'MQ', '596', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(139, 'Mauritania', 'MRT', 'MR', '222', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(140, 'Mauritius', 'MUS', 'MU', '230', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(141, 'Mayotte', 'MYT', 'YT', '262', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(142, 'Mexico', 'MEX', 'MX', '52', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(143, 'Micronesia', 'FSM', 'FM', '691', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(144, 'Moldova', 'MDA', 'MD', '373', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(145, 'Monaco', 'MCO', 'MC', '377', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(146, 'Mongolia', 'MNG', 'MN', '976', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(147, 'Montenegro', 'MNE', 'ME', '382', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(148, 'Montserrat', 'MSR', 'MS', '+1-664', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(149, 'Morocco', 'MAR', 'MA', '212', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(150, 'Mozambique', 'MOZ', 'MZ', '258', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(151, 'Myanmar', 'MMR', 'MM', '95', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(152, 'Namibia', 'NAM', 'NA', '264', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(153, 'Nauru', 'NRU', 'NR', '674', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(154, 'Nepal', 'NPL', 'NP', '977', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(155, 'Netherlands Antilles', 'ANT', 'AN', NULL, '2018-07-20 14:41:03', '2018-07-20 14:41:03', 1),
(156, 'Netherlands The', 'NLD', 'NL', '31', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(157, 'New Caledonia', 'NCL', 'NC', '687', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(158, 'New Zealand', 'NZL', 'NZ', '64', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(159, 'Nicaragua', 'NIC', 'NI', '505', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(160, 'Niger', 'NER', 'NE', '227', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(161, 'Nigeria', 'NGA', 'NG', '234', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(162, 'Niue', 'NIU', 'NU', '683', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(163, 'Norfolk Island', 'NFK', 'NF', '672', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(164, 'Northern Mariana Islands', 'MNP', 'MP', '+1-670', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(165, 'Norway', 'NOR', 'NO', '47', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(166, 'Oman', 'OMN', 'OM', '968', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(167, 'Pakistan', 'PAK', 'PK', '92', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(168, 'Palau', 'PLW', 'PW', '680', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(169, 'Palestinian Territory Occupied', 'PSE', 'PS', '970', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(170, 'Panama', 'PAN', 'PA', '507', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(171, 'Papua new Guinea', 'PNG', 'PG', '675', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(172, 'Paraguay', 'PRY', 'PY', '595', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(173, 'Peru', 'PER', 'PE', '51', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(174, 'Philippines', 'PHL', 'PH', '63', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(175, 'Pitcairn Island', 'PCN', 'PN', '870', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(176, 'Poland', 'POL', 'PL', '48', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(177, 'Portugal', 'PRT', 'PT', '351', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(178, 'Puerto Rico', 'PRI', 'PR', '+1-787 and 1-939', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(179, 'Qatar', 'QAT', 'QA', '974', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(180, 'Reunion', 'REU', 'RE', '262', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(181, 'Romania', 'ROU', 'RO', '40', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(182, 'Russia', 'RUS', 'RU', '7', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(183, 'Rwanda', 'RWA', 'RW', '250', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(184, 'Saint Helena', 'SHN', 'SH', '290', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(185, 'Saint Kitts And Nevis', 'KNA', 'KN', '+1-869', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(186, 'Saint Lucia', 'LCA', 'LC', '+1-758', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(187, 'Saint Pierre and Miquelon', 'SPM', 'PM', '508', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(188, 'Saint Vincent And The Grenadines', 'VCT', 'VC', '+1-784', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(189, 'Saint-Barthelemy', 'BLM', 'BL', '590', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(190, 'Saint-Martin (French part)', 'MAF', 'MF', '590', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(191, 'Samoa', 'WSM', 'WS', '685', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(192, 'San Marino', 'SMR', 'SM', '378', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(193, 'Sao Tome and Principe', 'STP', 'ST', '239', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(194, 'Saudi Arabia', 'SAU', 'SA', '966', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(195, 'Senegal', 'SEN', 'SN', '221', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(196, 'Serbia', 'SRB', 'RS', '381', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(197, 'Seychelles', 'SYC', 'SC', '248', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(198, 'Sierra Leone', 'SLE', 'SL', '232', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(199, 'Singapore', 'SGP', 'SG', '65', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(200, 'Slovakia', 'SVK', 'SK', '421', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(201, 'Slovenia', 'SVN', 'SI', '386', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(202, 'Solomon Islands', 'SLB', 'SB', '677', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(203, 'Somalia', 'SOM', 'SO', '252', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(204, 'South Africa', 'ZAF', 'ZA', '27', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(205, 'South Georgia', 'SGS', 'GS', NULL, '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(206, 'South Sudan', 'SSD', 'SS', '211', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(207, 'Spain', 'ESP', 'ES', '34', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(208, 'Sri Lanka', 'LKA', 'LK', '94', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(209, 'Sudan', 'SDN', 'SD', '249', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(210, 'Suriname', 'SUR', 'SR', '597', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(211, 'Svalbard And Jan Mayen Islands', 'SJM', 'SJ', '47', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(212, 'Swaziland', 'SWZ', 'SZ', '268', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(213, 'Sweden', 'SWE', 'SE', '46', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(214, 'Switzerland', 'CHE', 'CH', '41', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(215, 'Syria', 'SYR', 'SY', '963', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(216, 'Taiwan', 'TWN', 'TW', '886', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(217, 'Tajikistan', 'TJK', 'TJ', '992', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(218, 'Tanzania', 'TZA', 'TZ', '255', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(219, 'Thailand', 'THA', 'TH', '66', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(220, 'Togo', 'TGO', 'TG', '228', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(221, 'Tokelau', 'TKL', 'TK', '690', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(222, 'Tonga', 'TON', 'TO', '676', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(223, 'Trinidad And Tobago', 'TTO', 'TT', '+1-868', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(224, 'Tunisia', 'TUN', 'TN', '216', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(225, 'Turkey', 'TUR', 'TR', '90', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(226, 'Turkmenistan', 'TKM', 'TM', '993', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(227, 'Turks And Caicos Islands', 'TCA', 'TC', '+1-649', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(228, 'Tuvalu', 'TUV', 'TV', '688', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(229, 'Uganda', 'UGA', 'UG', '256', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(230, 'Ukraine', 'UKR', 'UA', '380', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(231, 'United Arab Emirates', 'ARE', 'AE', '971', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(232, 'United Kingdom', 'GBR', 'GB', '44', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(233, 'United States', 'USA', 'US', '1', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(234, 'United States Minor Outlying Islands', 'UMI', 'UM', '1', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(235, 'Uruguay', 'URY', 'UY', '598', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(236, 'Uzbekistan', 'UZB', 'UZ', '998', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(237, 'Vanuatu', 'VUT', 'VU', '678', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(238, 'Vatican City State (Holy See)', 'VAT', 'VA', '379', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(239, 'Venezuela', 'VEN', 'VE', '58', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(240, 'Vietnam', 'VNM', 'VN', '84', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(241, 'Virgin Islands (British)', 'VGB', 'VG', '+1-284', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(242, 'Virgin Islands (US)', 'VIR', 'VI', '+1-340', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(243, 'Wallis And Futuna Islands', 'WLF', 'WF', '681', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(244, 'Western Sahara', 'ESH', 'EH', '212', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(245, 'Yemen', 'YEM', 'YE', '967', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(246, 'Zambia', 'ZMB', 'ZM', '260', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(247, 'Zimbabwe', 'ZWE', 'ZW', '263', '2018-07-20 14:41:03', '2020-10-25 09:05:15', 1),
(248, 'Kosovo', 'XKX', 'XK', '383', '2020-08-15 10:03:50', '2020-10-25 09:05:15', 1),
(249, 'Curaçao', 'CUW', 'CW', '599', '2020-10-25 09:24:20', '2020-10-25 09:24:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupans_id` int(11) NOT NULL,
  `code` varchar(191) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` text DEFAULT NULL,
  `discount_type` varchar(100) NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(11) NOT NULL,
  `individual_use` tinyint(1) NOT NULL DEFAULT 0,
  `product_ids` varchar(191) NOT NULL,
  `exclude_product_ids` varchar(191) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `usage_limit_per_user` int(11) DEFAULT NULL,
  `limit_usage_to_x_items` int(11) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `product_categories` varchar(191) NOT NULL,
  `excluded_product_categories` varchar(191) NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_amount` decimal(10,2) NOT NULL,
  `maximum_amount` decimal(10,2) NOT NULL,
  `email_restrictions` text NOT NULL,
  `used_by` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` char(3) NOT NULL,
  `symbol_left` varchar(12) DEFAULT NULL,
  `symbol_right` varchar(12) DEFAULT NULL,
  `decimal_point` char(1) DEFAULT NULL,
  `thousands_point` char(1) DEFAULT NULL,
  `decimal_places` char(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` double(13,8) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_current` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `created_at`, `updated_at`, `value`, `is_default`, `status`, `is_current`) VALUES
(1, 'U.S. Dollar', 'INR', '$', NULL, NULL, NULL, '2', '2020-11-15 20:11:07', '2020-11-15 20:11:07', 1.00000000, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_record`
--

CREATE TABLE `currency_record` (
  `id` int(11) NOT NULL,
  `code` varchar(191) NOT NULL,
  `currency_name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `currency_record`
--

INSERT INTO `currency_record` (`id`, `code`, `currency_name`) VALUES
(1, 'AED', 'United Arab Emirates Dirham'),
(2, 'AFN', 'Afghan Afghani'),
(3, 'ALL', 'Albanian Lek'),
(4, 'AMD', 'Armenian Dram'),
(5, 'ANG', 'Netherlands Antillean Guilder'),
(6, 'AOA', 'Angolan Kwanza'),
(7, 'ARS', 'Argentine Peso'),
(8, 'AUD', 'Australian Dollar'),
(9, 'AWG', 'Aruban Florin'),
(10, 'AZN', 'Azerbaijani Manat'),
(11, 'BAM', 'Bosnia-Herzegovina Convertible Mark'),
(12, 'BBD', 'Barbadian Dollar'),
(13, 'BDT', 'Bangladeshi Taka'),
(14, 'BGN', 'Bulgarian Lev'),
(15, 'BHD', 'Bahraini Dinar'),
(16, 'BIF', 'Burundian Franc'),
(17, 'BMD', 'Bermudan Dollar'),
(18, 'BND', 'Brunei Dollar'),
(19, 'BOB', 'Bolivian Boliviano'),
(20, 'BRL', 'Brazilian Real'),
(21, 'BSD', 'Bahamian Dollar'),
(22, 'BTC', 'Bitcoin'),
(23, 'BTN', 'Bhutanese Ngultrum'),
(24, 'BWP', 'Botswanan Pula'),
(25, 'BYN', 'Belarusian Ruble'),
(26, 'BZD', 'Belize Dollar'),
(27, 'CAD', 'Canadian Dollar'),
(28, 'CDF', 'Congolese Franc'),
(29, 'CHF', 'Swiss Franc'),
(30, 'CLF', 'Chilean Unit of Account (UF)'),
(31, 'CLP', 'Chilean Peso'),
(32, 'CNH', 'Chinese Yuan (Offshore)'),
(33, 'CNY', 'Chinese Yuan'),
(34, 'COP', 'Colombian Peso'),
(35, 'CRC', 'Costa Rican Colón'),
(36, 'CUC', 'Cuban Convertible Peso'),
(37, 'CUP', 'Cuban Peso'),
(38, 'CVE', 'Cape Verdean Escudo'),
(39, 'CZK', 'Czech Republic Koruna'),
(40, 'DJF', 'Djiboutian Franc'),
(41, 'DKK', 'Danish Krone'),
(42, 'DOP', 'Dominican Peso'),
(43, 'DZD', 'Algerian Dinar'),
(44, 'EGP', 'Egyptian Pound'),
(45, 'ERN', 'Eritrean Nakfa'),
(46, 'ETB', 'Ethiopian Birr'),
(47, 'EUR', 'Euro'),
(48, 'FJD', 'Fijian Dollar'),
(49, 'FKP', 'Falkland Islands Pound'),
(50, 'GBP', 'British Pound Sterling'),
(51, 'GEL', 'Georgian Lari'),
(52, 'GGP', 'Guernsey Pound'),
(53, 'GHS', 'Ghanaian Cedi'),
(54, 'GIP', 'Gibraltar Pound'),
(55, 'GMD', 'Gambian Dalasi'),
(56, 'GNF', 'Guinean Franc'),
(57, 'GTQ', 'Guatemalan Quetzal'),
(58, 'GYD', 'Guyanaese Dollar'),
(59, 'HKD', 'Hong Kong Dollar'),
(60, 'HNL', 'Honduran Lempira'),
(61, 'HRK', 'Croatian Kuna'),
(62, 'HTG', 'Haitian Gourde'),
(63, 'HUF', 'Hungarian Forint'),
(64, 'IDR', 'Indonesian Rupiah'),
(65, 'ILS', 'Israeli New Sheqel'),
(66, 'IMP', 'Manx pound'),
(67, 'INR', 'Indian Rupee'),
(68, 'IQD', 'Iraqi Dinar'),
(69, 'IRR', 'Iranian Rial'),
(70, 'ISK', 'Icelandic Króna'),
(71, 'JEP', 'Jersey Pound'),
(72, 'JMD', 'Jamaican Dollar'),
(73, 'JOD', 'Jordanian Dinar'),
(74, 'JPY', 'Japanese Yen'),
(75, 'KES', 'Kenyan Shilling'),
(76, 'KGS', 'Kyrgystani Som'),
(77, 'KHR', 'Cambodian Riel'),
(78, 'KMF', 'Comorian Franc'),
(79, 'KPW', 'North Korean Won'),
(80, 'KRW', 'South Korean Won'),
(81, 'KWD', 'Kuwaiti Dinar'),
(82, 'KYD', 'Cayman Islands Dollar'),
(83, 'KZT', 'Kazakhstani Tenge'),
(84, 'LAK', 'Laotian Kip'),
(85, 'LBP', 'Lebanese Pound'),
(86, 'LKR', 'Sri Lankan Rupee'),
(87, 'LRD', 'Liberian Dollar'),
(88, 'LSL', 'Lesotho Loti'),
(89, 'LYD', 'Libyan Dinar'),
(90, 'MAD', 'Moroccan Dirham'),
(91, 'MDL', 'Moldovan Leu'),
(92, 'MGA', 'Malagasy Ariary'),
(93, 'MKD', 'Macedonian Denar'),
(94, 'MMK', 'Myanma Kyat'),
(95, 'MNT', 'Mongolian Tugrik'),
(96, 'MOP', 'Macanese Pataca'),
(97, 'MRO', 'Mauritanian Ouguiya (pre-2018)'),
(98, 'MRU', 'Mauritanian Ouguiya'),
(99, 'MUR', 'Mauritian Rupee'),
(100, 'MVR', 'Maldivian Rufiyaa'),
(101, 'MWK', 'Malawian Kwacha'),
(102, 'MXN', 'Mexican Peso'),
(103, 'MYR', 'Malaysian Ringgit'),
(104, 'MZN', 'Mozambican Metical'),
(105, 'NAD', 'Namibian Dollar'),
(106, 'NGN', 'Nigerian Naira'),
(107, 'NIO', 'Nicaraguan Córdoba'),
(108, 'NOK', 'Norwegian Krone'),
(109, 'NPR', 'Nepalese Rupee'),
(110, 'NZD', 'New Zealand Dollar'),
(111, 'OMR', 'Omani Rial'),
(112, 'PAB', 'Panamanian Balboa'),
(113, 'PEN', 'Peruvian Nuevo Sol'),
(114, 'PGK', 'Papua New Guinean Kina'),
(115, 'PHP', 'Philippine Peso'),
(116, 'PKR', 'Pakistani Rupee'),
(117, 'PLN', 'Polish Zloty'),
(118, 'PYG', 'Paraguayan Guarani'),
(119, 'QAR', 'Qatari Rial'),
(120, 'RON', 'Romanian Leu'),
(121, 'RSD', 'Serbian Dinar'),
(122, 'RUB', 'Russian Ruble'),
(123, 'RWF', 'Rwandan Franc'),
(124, 'SAR', 'Saudi Riyal'),
(125, 'SBD', 'Solomon Islands Dollar'),
(126, 'SCR', 'Seychellois Rupee'),
(127, 'SDG', 'Sudanese Pound'),
(128, 'SEK', 'Swedish Krona'),
(129, 'SGD', 'Singapore Dollar'),
(130, 'SHP', 'Saint Helena Pound'),
(131, 'SLL', 'Sierra Leonean Leone'),
(132, 'SOS', 'Somali Shilling'),
(133, 'SRD', 'Surinamese Dollar'),
(134, 'SSP', 'South Sudanese Pound'),
(135, 'STD', 'São Tomé and Príncipe Dobra (pre-2018)'),
(136, 'STN', 'São Tomé and Príncipe Dobra'),
(137, 'SVC', 'Salvadoran Colón'),
(138, 'SYP', 'Syrian Pound'),
(139, 'SZL', 'Swazi Lilangeni'),
(140, 'THB', 'Thai Baht'),
(141, 'TJS', 'Tajikistani Somoni'),
(142, 'TMT', 'Turkmenistani Manat'),
(143, 'TND', 'Tunisian Dinar'),
(144, 'TOP', 'Tongan Pa\'anga'),
(145, 'TRY', 'Turkish Lira'),
(146, 'TTD', 'Trinidad and Tobago Dollar'),
(147, 'TWD', 'New Taiwan Dollar'),
(148, 'TZS', 'Tanzanian Shilling'),
(149, 'UAH', 'Ukrainian Hryvnia'),
(150, 'UGX', 'Ugandan Shilling'),
(151, 'USD', 'United States Dollar'),
(152, 'UYU', 'Uruguayan Peso'),
(153, 'UZS', 'Uzbekistan Som'),
(154, 'VEF', 'Venezuelan Bolívar Fuerte'),
(155, 'VND', 'Vietnamese Dong'),
(156, 'VUV', 'Vanuatu Vatu'),
(157, 'WST', 'Samoan Tala'),
(158, 'XAF', 'CFA Franc BEAC'),
(159, 'XAG', 'Silver Ounce'),
(160, 'XAU', 'Gold Ounce'),
(161, 'XCD', 'East Caribbean Dollar'),
(162, 'XDR', 'Special Drawing Rights'),
(163, 'XOF', 'CFA Franc BCEAO'),
(164, 'XPD', 'Palladium Ounce'),
(165, 'XPF', 'CFP Franc'),
(166, 'XPT', 'Platinum Ounce'),
(167, 'YER', 'Yemeni Rial'),
(168, 'ZAR', 'South African Rand'),
(169, 'ZMW', 'Zambian Kwacha'),
(170, 'ZWL', 'Zimbabwean Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `current_theme`
--

CREATE TABLE `current_theme` (
  `id` int(11) NOT NULL,
  `top_offer` int(11) NOT NULL,
  `header` int(11) NOT NULL,
  `carousel` int(11) NOT NULL,
  `banner` int(11) NOT NULL,
  `footer` int(11) NOT NULL,
  `product_section_order` text NOT NULL,
  `cart` int(11) NOT NULL,
  `news` int(11) NOT NULL,
  `detail` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `login` int(11) NOT NULL,
  `transitions` int(11) NOT NULL,
  `banner_two` int(11) NOT NULL,
  `category` int(11) NOT NULL DEFAULT 1,
  `session_id` varchar(100) DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `current_theme`
--

INSERT INTO `current_theme` (`id`, `top_offer`, `header`, `carousel`, `banner`, `footer`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`, `login`, `transitions`, `banner_two`, `category`, `session_id`, `customers_id`) VALUES
(1, 1, 9, 1, 8, 6, '[{\"id\":1,\"name\":\"Banner Section\",\"order\":1,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":2,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":5,\"name\":\"Categories\",\"order\":3,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":4,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":10,\"name\":\"Second Ad Section\",\"order\":5,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":6,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":7,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":8,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":9,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":12,\"name\":\"Banner 2 Section\",\"order\":10,\"file_name\":\"banner_two_section\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Banner 2 Section\"},{\"id\":13,\"name\":\"Category\",\"order\":11,\"file_name\":\"Category_section\",\"status\":1,\"image\":\"images\\/prototypes\\/category_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/category_section-cross.jpg\",\"alt\":\"Category 2 Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":12,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":13,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', 1, 1, 1, 1, 1, 1, 2, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customers_fax` varchar(191) DEFAULT NULL,
  `customers_newsletter` varchar(191) DEFAULT NULL,
  `fb_id` varchar(191) DEFAULT NULL,
  `google_id` varchar(191) DEFAULT NULL,
  `auth_id_tiwilo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text NOT NULL,
  `customers_basket_quantity` int(11) NOT NULL,
  `final_price` decimal(15,2) DEFAULT NULL,
  `customers_basket_date_added` char(10) DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT 0,
  `session_id` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `session_id` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(11) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delievery_time_slots`
--

CREATE TABLE `delievery_time_slots` (
  `delievery_time_slots_id` int(11) NOT NULL,
  `time_from` varchar(33) NOT NULL,
  `time_to` varchar(33) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delievery_time_slot_with_zone`
--

CREATE TABLE `delievery_time_slot_with_zone` (
  `delievery_time_slot_with_zone_id` int(11) NOT NULL,
  `time_from` varchar(33) NOT NULL,
  `time_to` varchar(33) NOT NULL,
  `delivery_price` decimal(15,2) NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy_info`
--

CREATE TABLE `deliveryboy_info` (
  `deliveryboy_info_id` int(11) NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `bike_name` varchar(100) NOT NULL,
  `bike_details` text NOT NULL,
  `bike_color` varchar(100) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `vehicle_registration_number` varchar(100) NOT NULL,
  `driving_license_image` varchar(191) DEFAULT NULL,
  `vehicle_rc_book_image` varchar(191) DEFAULT NULL,
  `availability_status` tinyint(1) NOT NULL DEFAULT 1,
  `commission` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `device_id` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `device_type` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `ram` varchar(250) DEFAULT NULL,
  `processor` varchar(250) DEFAULT NULL,
  `device_os` varchar(250) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `latittude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `device_model` varchar(191) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `operating_system` varchar(100) DEFAULT NULL,
  `browser_info` varchar(100) DEFAULT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale`
--

CREATE TABLE `flash_sale` (
  `flash_sale_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `flash_sale_products_price` decimal(15,2) NOT NULL,
  `flash_sale_date_added` int(11) NOT NULL,
  `flash_sale_last_modified` int(11) NOT NULL,
  `flash_start_date` int(11) NOT NULL,
  `flash_expires_date` int(11) NOT NULL,
  `flash_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

CREATE TABLE `flate_rate` (
  `id` int(11) NOT NULL,
  `flate_rate` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '11', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `floating_cash`
--

CREATE TABLE `floating_cash` (
  `floating_cash_id` int(11) NOT NULL,
  `deliveryboy_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_end_theme_content`
--

CREATE TABLE `front_end_theme_content` (
  `id` int(11) NOT NULL,
  `top_offers` text NOT NULL,
  `headers` text NOT NULL,
  `carousels` text NOT NULL,
  `banners` text NOT NULL,
  `footers` text NOT NULL,
  `product_section_order` text NOT NULL,
  `cart` text NOT NULL,
  `news` text NOT NULL,
  `detail` text NOT NULL,
  `shop` text NOT NULL,
  `contact` text NOT NULL,
  `login` text NOT NULL,
  `transitions` text NOT NULL,
  `banners_two` text NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `front_end_theme_content`
--

INSERT INTO `front_end_theme_content` (`id`, `top_offers`, `headers`, `carousels`, `banners`, `footers`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`, `login`, `transitions`, `banners_two`, `category`) VALUES
(1, '[{ \"id\": 1, \"name\": \"Top Offer\", \"image\": \"images/prototypes/banner1.jpg\", \"alt\": \"Top Offer\" }]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Header One\",\r\n\"image\": \"images/prototypes/header1.jpg\",\r\n\"alt\" : \"header One\" \r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Header Two\",\r\n\"image\": \"images/prototypes/header2.jpg\",\r\n\"alt\" : \"header Two\" \r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Header Three\",\r\n\"image\": \"images/prototypes/header3.jpg\",\r\n\"alt\" : \"header Three\" \r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Header Four\",\r\n\"image\": \"images/prototypes/header4.jpg\",\r\n\"alt\" : \"header Four\" \r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Header Five\",\r\n\"image\": \"images/prototypes/header5.jpg\",\r\n\"alt\" : \"header Five\" \r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Header Six\",\r\n\"image\": \"images/prototypes/header6.jpg\",\r\n\"alt\" : \"header Six\" \r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Header Seven\",\r\n\"image\": \"images/prototypes/header7.jpg\",\r\n\"alt\" : \"header Seven\" \r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Header Eight\",\r\n\"image\": \"images/prototypes/header8.jpg\",\r\n\"alt\" : \"header Eight\" \r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Header Nine\",\r\n\"image\": \"images/prototypes/header9.jpg\",\r\n\"alt\" : \"header Nine\" \r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Header Ten\",\r\n\"image\": \"images/prototypes/header10.jpg\",\r\n\"alt\" : \"header Ten\" \r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Bootstrap Carousel Content Full Screen\",\r\n\"image\": \"images/prototypes/carousal1.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content Full Screen\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Bootstrap Carousel Content Full Width\",\r\n\"image\": \"images/prototypes/carousal2.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content Full Width\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Bootstrap Carousel Content with Left Banner\",\r\n\"image\": \"images/prototypes/carousal3.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Left Banner\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Bootstrap Carousel Content with Navigation\",\r\n\"image\": \"images/prototypes/carousal4.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Navigation\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Bootstrap Carousel Content with Right Banner\",\r\n\"image\": \"images/prototypes/carousal5.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Right Banner\"\r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Banner One\",\r\n\"image\": \"images/prototypes/banner1.jpg\",\r\n\"alt\": \"Banner One\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Banner Two\",\r\n\"image\": \"images/prototypes/banner2.jpg\",\r\n\"alt\": \"Banner Two\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Banner Three\",\r\n\"image\": \"images/prototypes/banner3.jpg\",\r\n\"alt\": \"Banner Three\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Banner Four\",\r\n\"image\": \"images/prototypes/banner4.jpg\",\r\n\"alt\": \"Banner Four\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Banner Five\",\r\n\"image\": \"images/prototypes/banner5.jpg\",\r\n\"alt\": \"Banner Five\"\r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Banner Six\",\r\n\"image\": \"images/prototypes/banner6.jpg\",\r\n\"alt\": \"Banner Six\"\r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Banner Seven\",\r\n\"image\": \"images/prototypes/banner7.jpg\",\r\n\"alt\": \"Banner Seven\"\r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Banner Eight\",\r\n\"image\": \"images/prototypes/banner8.jpg\",\r\n\"alt\": \"Banner Eight\"\r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Banner Nine\",\r\n\"image\": \"images/prototypes/banner9.jpg\",\r\n\"alt\": \"Banner Nine\"\r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Banner Ten\",\r\n\"image\": \"images/prototypes/banner10.jpg\",\r\n\"alt\": \"Banner Ten\"\r\n},\r\n{\r\n\"id\": 11,\r\n\"name\": \"Banner Eleven\",\r\n\"image\": \"images/prototypes/banner11.jpg\",\r\n\"alt\": \"Banner Eleven\"\r\n},\r\n{\r\n\"id\": 12,\r\n\"name\": \"Banner Twelve\",\r\n\"image\": \"images/prototypes/banner12.jpg\",\r\n\"alt\": \"Banner Twelve\"\r\n},\r\n{\r\n\"id\": 13,\r\n\"name\": \"Banner Thirteen\",\r\n\"image\": \"images/prototypes/banner13.jpg\",\r\n\"alt\": \"Banner Thirteen\"\r\n},\r\n{\r\n\"id\": 14,\r\n\"name\": \"Banner Fourteen\",\r\n\"image\": \"images/prototypes/banner14.jpg\",\r\n\"alt\": \"Banner Fourteen\"\r\n},\r\n{\r\n\"id\": 15,\r\n\"name\": \"Banner Fifteen\",\r\n\"image\": \"images/prototypes/banner15.jpg\",\r\n\"alt\": \"Banner Fifteen\"\r\n},\r\n{\r\n\"id\": 16,\r\n\"name\": \"Banner Sixteen\",\r\n\"image\": \"images/prototypes/banner16.jpg\",\r\n\"alt\": \"Banner Sixteen\"\r\n},\r\n{\r\n\"id\": 17,\r\n\"name\": \"Banner Seventeen\",\r\n\"image\": \"images/prototypes/banner17.jpg\",\r\n\"alt\": \"Banner Seventeen\"\r\n},\r\n{\r\n\"id\": 18,\r\n\"name\": \"Banner Eighteen\",\r\n\"image\": \"images/prototypes/banner18.jpg\",\r\n\"alt\": \"Banner Eighteen\"\r\n},\r\n{\r\n\"id\": 19,\r\n\"name\": \"Banner Nineteen\",\r\n\"image\": \"images/prototypes/banner19.jpg\",\r\n\"alt\": \"Banner Nineteen\"\r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Footer One\",\r\n\"image\": \"images/prototypes/footer1.png\",\r\n\"alt\" : \"Footer One\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Footer Two\",\r\n\"image\": \"images/prototypes/footer2.png\",\r\n\"alt\" : \"Footer Two\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Footer Three\",\r\n\"image\": \"images/prototypes/footer3.png\",\r\n\"alt\" : \"Footer Three\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Footer Four\",\r\n\"image\": \"images/prototypes/footer4.png\",\r\n\"alt\" : \"Footer Four\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Footer Five\",\r\n\"image\": \"images/prototypes/footer5.png\",\r\n\"alt\" : \"Footer Five\"\r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Footer Six\",\r\n\"image\": \"images/prototypes/footer6.png\",\r\n\"alt\" : \"Footer Six\"\r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Footer Seven\",\r\n\"image\": \"images/prototypes/footer7.png\",\r\n\"alt\" : \"Footer Seven\"\r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Footer Eight\",\r\n\"image\": \"images/prototypes/footer8.png\",\r\n\"alt\" : \"Footer Eight\"\r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Footer Nine\",\r\n\"image\": \"images/prototypes/footer9.png\",\r\n\"alt\" : \"Footer Nine\"\r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Footer Ten\",\r\n\"image\": \"images/prototypes/footer10.png\",\r\n\"alt\" : \"Footer Ten\"\r\n}\r\n]', '[{\"id\":1,\"name\":\"Banner Section\",\"order\":1,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":2,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":5,\"name\":\"Categories\",\"order\":3,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":4,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":10,\"name\":\"Second Ad Section\",\"order\":5,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":6,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":7,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":8,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":9,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":12,\"name\":\"Banner 2 Section\",\"order\":10,\"file_name\":\"banner_two_section\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Banner 2 Section\"},{\"id\":13,\"name\":\"Category\",\"order\":11,\"file_name\":\"Category_section\",\"status\":1,\"image\":\"images\\/prototypes\\/category_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/category_section-cross.jpg\",\"alt\":\"Category 2 Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":12,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":13,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', '[      {         \"id\":1,       \"name\":\"Cart One\"    },    {         \"id\":2,       \"name\":\"Cart Two\"    }     ]', '[      {         \"id\":1,       \"name\":\"News One\"    },    {         \"id\":2,       \"name\":\"News Two\"    }     ]', '[  \r\n{  \r\n\"id\":1,\r\n\"name\":\"Product Detail Page One\"\r\n},\r\n{  \r\n\"id\":2,\r\n\"name\":\"Product Detail Page Two\"\r\n},\r\n{  \r\n\"id\":3,\r\n\"name\":\"Product Detail Page Three\"\r\n},\r\n{  \r\n\"id\":4,\r\n\"name\":\"Product Detail Page Four\"\r\n},\r\n{  \r\n\"id\":5,\r\n\"name\":\"Product Detail Page Five\"\r\n},\r\n{  \r\n\"id\":6,\r\n\"name\":\"Product Detail Page Six\"\r\n}\r\n\r\n]', '[ { \"id\":1, \"name\":\"Shop Page One\" }, { \"id\":2, \"name\":\"Shop Page Two\" }, { \"id\":3, \"name\":\"Shop Page Three\" }, { \"id\":4, \"name\":\"Shop Page Four\" }, { \"id\":5, \"name\":\"Shop Page Five\" } ]', '[      {         \"id\":1,       \"name\":\"Contact Page One\"    },    {         \"id\":2,       \"name\":\"Contact Page Two\"    } ]', '[      {         \"id\":1,       \"name\":\"Login Page One\"    },    {         \"id\":2,       \"name\":\"Login Page Two\"    } ]', '[      {         \"id\":1,       \"name\":\"Transition Zoomin\"    },    {         \"id\":2,       \"name\":\"Transition Flashing\"    },    {         \"id\":3,       \"name\":\"Transition Shine\"    },    {         \"id\":4,       \"name\":\"Transition Circle\"    },    {         \"id\":5,       \"name\":\"Transition Opacity\"    } ]', '[ { \"id\": 1, \"name\": \"Banner One\", \"image\": \"images/prototypes/banner1.jpg\", \"alt\": \"Banner One\" }, { \"id\": 2, \"name\": \"Banner Two\", \"image\": \"images/prototypes/banner2.jpg\", \"alt\": \"Banner Two\" }, { \"id\": 3, \"name\": \"Banner Three\", \"image\": \"images/prototypes/banner3.jpg\", \"alt\": \"Banner Three\" }, { \"id\": 4, \"name\": \"Banner Four\", \"image\": \"images/prototypes/banner4.jpg\", \"alt\": \"Banner Four\" }, { \"id\": 5, \"name\": \"Banner Five\", \"image\": \"images/prototypes/banner5.jpg\", \"alt\": \"Banner Five\" }, { \"id\": 6, \"name\": \"Banner Six\", \"image\": \"images/prototypes/banner6.jpg\", \"alt\": \"Banner Six\" }, { \"id\": 7, \"name\": \"Banner Seven\", \"image\": \"images/prototypes/banner7.jpg\", \"alt\": \"Banner Seven\" }, { \"id\": 8, \"name\": \"Banner Eight\", \"image\": \"images/prototypes/banner8.jpg\", \"alt\": \"Banner Eight\" }, { \"id\": 9, \"name\": \"Banner Nine\", \"image\": \"images/prototypes/banner9.jpg\", \"alt\": \"Banner Nine\" }, { \"id\": 10, \"name\": \"Banner Ten\", \"image\": \"images/prototypes/banner10.jpg\", \"alt\": \"Banner Ten\" }, { \"id\": 11, \"name\": \"Banner Eleven\", \"image\": \"images/prototypes/banner11.jpg\", \"alt\": \"Banner Eleven\" }, { \"id\": 12, \"name\": \"Banner Twelve\", \"image\": \"images/prototypes/banner12.jpg\", \"alt\": \"Banner Twelve\" }, { \"id\": 13, \"name\": \"Banner Thirteen\", \"image\": \"images/prototypes/banner13.jpg\", \"alt\": \"Banner Thirteen\" }, { \"id\": 14, \"name\": \"Banner Fourteen\", \"image\": \"images/prototypes/banner14.jpg\", \"alt\": \"Banner Fourteen\" }, { \"id\": 15, \"name\": \"Banner Fifteen\", \"image\": \"images/prototypes/banner15.jpg\", \"alt\": \"Banner Fifteen\" }, { \"id\": 16, \"name\": \"Banner Sixteen\", \"image\": \"images/prototypes/banner16.jpg\", \"alt\": \"Banner Sixteen\" }, { \"id\": 17, \"name\": \"Banner Seventeen\", \"image\": \"images/prototypes/banner17.jpg\", \"alt\": \"Banner Seventeen\" }, { \"id\": 18, \"name\": \"Banner Eighteen\", \"image\": \"images/prototypes/banner18.jpg\", \"alt\": \"Banner Eighteen\" }, { \"id\": 19, \"name\": \"Banner Nineteen\", \"image\": \"images/prototypes/banner19.jpg\", \"alt\": \"Banner Nineteen\" } ]', '1');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) NOT NULL,
  `geo_zone_description` varchar(191) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `home_banners_id` bigint(20) UNSIGNED NOT NULL,
  `banner_name` varchar(191) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `text` text DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`home_banners_id`, `banner_name`, `language_id`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'banners_1', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> Food Festival</h2>\r\n        <h4>Ramadan Special</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">Shop Now</a>\r\n        </div>  \r\n      </div>', 253, '2020-04-28 01:19:14', '2020-04-28 01:19:14'),
(2, 'banners_2', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> Fresh Fruits & Vegetables</h2>\r\n        <h4>Farm Fresh</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">View All Range</a>\r\n        </div>  \r\n      </div>', 254, '2020-04-28 01:19:14', '2020-04-28 01:19:14'),
(3, 'banners_3', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> Grocery Zone</h2>\r\n        <h4>Your Favorite</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">Buy Now</a>\r\n        </div>  \r\n      </div>', 255, '2020-04-28 01:19:14', '2020-04-28 01:19:14'),
(4, 'banners_1', 2, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> مهرجان طعام</h2>\r\n        <h4>رمضان خاص</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"\\\">تسوق الآن</a>\r\n        </div>  \r\n      </div>', 253, '2020-04-28 01:19:14', '2020-04-28 01:19:14'),
(5, 'banners_2', 2, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2>فواكه وخضروات طازجة</h2>\r\n        <h4>الزراعية الطازجة</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"\\\">عرض كل المدى</a>\r\n        </div>  \r\n      </div>', 254, '2020-04-28 01:19:14', '2020-04-28 01:19:14'),
(6, 'banners_3', 2, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2>منطقة البقالة</h2>\r\n        <h4>المفضلة لديك</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"\\\">اشتري الآن</a>\r\n        </div>  \r\n      </div>', 255, '2020-04-28 01:19:14', '2020-04-28 01:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `http_call_record`
--

CREATE TABLE `http_call_record` (
  `id` int(11) NOT NULL,
  `device_id` varchar(191) DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `ping_time` datetime DEFAULT NULL,
  `difference_from_previous` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `http_call_record`
--

INSERT INTO `http_call_record` (`id`, `device_id`, `ip`, `url`, `ping_time`, `difference_from_previous`) VALUES
(1, '324324323', '173.16.140.63:8080', 'processregistration', '2026-05-30 21:52:04', '0000-00-00 00:00:00'),
(2, '324324323', '173.16.140.63:8080', 'processregistration', '2026-05-30 21:52:22', '0000-00-00 00:00:00'),
(3, '324324323', '173.16.140.63:8080', 'processregistration', '2026-05-30 21:52:30', '0000-00-00 00:00:00'),
(4, '324324323', '173.16.140.63:8080', 'processregistration', '2026-05-30 21:52:43', '0000-00-00 00:00:00'),
(5, '324324323', '173.16.140.63:8080', 'processregistration', '2026-05-30 21:53:05', '0000-00-00 00:00:00'),
(6, '324324323', '173.16.140.63:8080', 'processregistration', '2026-05-30 21:55:36', '0000-00-00 00:00:00'),
(7, '324324323', '173.16.140.63:8080', 'processregistration', '2026-05-30 21:56:06', '0000-00-00 00:00:00'),
(8, '324324323', '173.16.140.63:8080', 'processregistration', '2026-05-30 21:56:13', '0000-00-00 00:00:00'),
(9, '324324323', '173.16.140.63:8080', 'processregistration', '2026-05-30 21:56:28', '0000-00-00 00:00:00'),
(10, '324324323', '173.16.140.63:8080', 'processregistration', '2026-05-30 21:56:37', '0000-00-00 00:00:00'),
(11, NULL, NULL, 'processlogin', '2026-06-06 09:04:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'XUF1110211.png', 1, NULL, NULL, NULL),
(4, '0S9Uj10711.png', 1, NULL, NULL, NULL),
(5, '49YbL10411.png', 1, NULL, NULL, NULL),
(83, 'JqYfZ11207.jpg', 1, NULL, NULL, NULL),
(84, '6Q4Qy11507.jpg', 1, NULL, NULL, NULL),
(85, 'jOVnc11207.jpg', 1, NULL, NULL, NULL),
(86, 'Ake4A11107.jpg', 1, NULL, NULL, NULL),
(89, 'nDQtA11407.jpg', 1, NULL, NULL, NULL),
(90, 'ueyod11407.jpg', 1, NULL, NULL, NULL),
(91, 'xD6MF11207.jpg', 1, NULL, NULL, NULL),
(92, 'YZyoU11507.jpg', 1, NULL, NULL, NULL),
(93, 'RLshK11309.jpg', 1, NULL, NULL, NULL),
(94, 'pTZdI11309.jpg', 1, NULL, NULL, NULL),
(95, '2t7BU11909.jpg', 1, NULL, NULL, NULL),
(96, 'O0cLp11909.jpg', 1, NULL, NULL, NULL),
(97, 'ncXhn11709.jpg', 1, NULL, NULL, NULL),
(98, '3876V11310.jpg', 1, NULL, NULL, NULL),
(99, '80IGj11510.jpg', 1, NULL, NULL, NULL),
(100, 'ueeqM11410.jpg', 1, NULL, NULL, NULL),
(101, 'UrgVW11410.jpg', 1, NULL, NULL, NULL),
(102, 'a18kN11510.jpg', 1, NULL, NULL, NULL),
(103, 'qQM0R11310.jpg', 1, NULL, NULL, NULL),
(104, 'VrhhT11510.jpg', 1, NULL, NULL, NULL),
(105, 'gSkR011310.jpg', 1, NULL, NULL, NULL),
(106, 'DXoxt11610.jpg', 1, NULL, NULL, NULL),
(107, 'N4WSZ11310.jpg', 1, NULL, NULL, NULL),
(108, 'z9MLR11610.jpg', 1, NULL, NULL, NULL),
(109, 'YNVyV11410.jpg', 1, NULL, NULL, NULL),
(110, 'YinE411810.jpg', 1, NULL, NULL, NULL),
(111, '97VNC11210.jpg', 1, NULL, NULL, NULL),
(114, 'zZZ2n11710.jpg', 1, NULL, NULL, NULL),
(115, 'vMNsa11710.jpg', 1, NULL, NULL, NULL),
(116, 'qujIz11610.jpg', 1, NULL, NULL, NULL),
(118, 'PJG0C11511.jpg', 1, NULL, NULL, NULL),
(119, 'SKOMJ11512.jpg', 1, NULL, NULL, NULL),
(120, '3eIYU27601.png', 1, NULL, NULL, NULL),
(121, 'o7Ssu27301.jpg', 1, NULL, NULL, NULL),
(122, 'wUJPQ27501.png', 1, NULL, NULL, NULL),
(123, 'dfJMq27601.jpg', 1, NULL, NULL, NULL),
(124, 'mAv6127501.jpg', 1, NULL, NULL, NULL),
(125, 'k9n9K27501.png', 1, NULL, NULL, NULL),
(126, '5BOEl27501.png', 1, NULL, NULL, NULL),
(127, '8HSeI27701.jpg', 1, NULL, NULL, NULL),
(128, 'uFhMa27301.png', 1, NULL, NULL, NULL),
(129, '6nwKu27201.jpg', 1, NULL, NULL, NULL),
(130, 'DLQFG27501.png', 1, NULL, NULL, NULL),
(131, 'QxXOd27901.jpg', 1, NULL, NULL, NULL),
(132, 'V28pJ27401.jpg', 1, NULL, NULL, NULL),
(133, '1yXrD27301.jpg', 1, NULL, NULL, NULL),
(134, '8mv7C27701.jpg', 1, NULL, NULL, NULL),
(135, 'FLPgv27901.jpg', 1, NULL, NULL, NULL),
(136, 'DVCXE27301.jpg', 1, NULL, NULL, NULL),
(137, 'VcWP527901.jpg', 1, NULL, NULL, NULL),
(138, 'nailP27301.jpg', 1, NULL, NULL, NULL),
(139, '7fA9P27701.jpg', 1, NULL, NULL, NULL),
(140, 'snPOE27601.jpg', 1, NULL, NULL, NULL),
(141, 'hO4hS27501.jpg', 1, NULL, NULL, NULL),
(142, 'Ih8vq27801.jpg', 1, NULL, NULL, NULL),
(143, 'zZwLc27801.jpg', 1, NULL, NULL, NULL),
(144, 'AICfz27901.jpg', 1, NULL, NULL, NULL),
(145, 'qr7Fs27401.jpg', 1, NULL, NULL, NULL),
(146, 'uHB5927801.jpg', 1, NULL, NULL, NULL),
(147, '0Av0f27701.jpg', 1, NULL, NULL, NULL),
(148, 'uNImA27601.jpg', 1, NULL, NULL, NULL),
(149, 'X99Yv27101.jpg', 1, NULL, NULL, NULL),
(150, 'IffDN27501.jpg', 1, NULL, NULL, NULL),
(151, 'IfFM227501.jpg', 1, NULL, NULL, NULL),
(152, 'QidxL27101.jpg', 1, NULL, NULL, NULL),
(153, 'i4HBN27901.jpg', 1, NULL, NULL, NULL),
(154, 'DJYMO27101.jpg', 1, NULL, NULL, NULL),
(155, 'QCt0c27501.jpg', 1, NULL, NULL, NULL),
(156, 'uBdE828101.jpg', 1, NULL, NULL, NULL),
(157, 'u0IgM28801.jpg', 1, NULL, NULL, NULL),
(158, 'wJku428501.jpg', 1, NULL, NULL, NULL),
(159, 'CZCdI28701.jpg', 1, NULL, NULL, NULL),
(160, 'Uj7wx28801.jpg', 1, NULL, NULL, NULL),
(161, 'sYPxJ28701.jpg', 1, NULL, NULL, NULL),
(162, '8d9ql28401.jpg', 1, NULL, NULL, NULL),
(163, 'fCGbk02108.jpg', 1, NULL, NULL, NULL),
(164, 'mZCsc02908.jpg', 1, NULL, NULL, NULL),
(165, 'PQwJz02308.jpg', 1, NULL, NULL, NULL),
(166, 'k5PM902208.jpg', 1, NULL, NULL, NULL),
(167, 'r8QNB02908.jpg', 1, NULL, NULL, NULL),
(168, 'Sxm7C02608.jpg', 1, NULL, NULL, NULL),
(169, 'b8Fgl02808.jpg', 1, NULL, NULL, NULL),
(170, 'Ob0sg02608.jpg', 1, NULL, NULL, NULL),
(171, 'kdout20102.jpg', 1, NULL, NULL, NULL),
(172, 'w46y720502.jpg', 1, NULL, NULL, NULL),
(173, 'WHhXb20502.jpg', 1, NULL, NULL, NULL),
(174, '21yLt20503.jpg', 1, NULL, NULL, NULL),
(175, 'ofxzh20403.jpg', 1, NULL, NULL, NULL),
(176, 'ckvHK20203.jpg', 1, NULL, NULL, NULL),
(177, '6DM9820403.jpg', 1, NULL, NULL, NULL),
(178, 'dZaEY20303.jpg', 1, NULL, NULL, NULL),
(179, 'VmCEr20703.jpg', 1, NULL, NULL, NULL),
(180, 'fuq2A20403.jpg', 1, NULL, NULL, NULL),
(181, 'lKwDn20403.jpg', 1, NULL, NULL, NULL),
(182, 'xRBw820303.jpg', 1, NULL, NULL, NULL),
(183, '9vZZo20203.jpg', 1, NULL, NULL, NULL),
(184, 'lvaFG20403.jpg', 1, NULL, NULL, NULL),
(185, 'Rz0xi20403.jpg', 1, NULL, NULL, NULL),
(186, 'JElsC20603.jpg', 1, NULL, NULL, NULL),
(187, '61tK720503.jpg', 1, NULL, NULL, NULL),
(188, 'v9rHN20803.jpg', 1, NULL, NULL, NULL),
(189, 'UXs5s20703.jpg', 1, NULL, NULL, NULL),
(190, 'JG8B320703.jpg', 1, NULL, NULL, NULL),
(191, 'nAkVg20103.jpg', 1, NULL, NULL, NULL),
(192, 'NMlsy20403.jpg', 1, NULL, NULL, NULL),
(193, '3icIy20103.jpg', 1, NULL, NULL, NULL),
(194, 'ZXu5e20103.jpg', 1, NULL, NULL, NULL),
(195, 'SWjwB20103.jpg', 1, NULL, NULL, NULL),
(196, 'bHD1b20903.jpg', 1, NULL, NULL, NULL),
(197, 'HUe4L20203.jpg', 1, NULL, NULL, NULL),
(198, 'mpcVY20203.jpg', 1, NULL, NULL, NULL),
(199, '1OoHX20603.jpg', 1, NULL, NULL, NULL),
(200, 'OBgRr20903.jpg', 1, NULL, NULL, NULL),
(201, '1ieed20303.jpg', 1, NULL, NULL, NULL),
(202, 'zSOCU20903.jpg', 1, NULL, NULL, NULL),
(203, 'Wcjb820403.jpg', 1, NULL, NULL, NULL),
(204, 'wYPz920203.jpg', 1, NULL, NULL, NULL),
(205, 'g3qI328201.png', 1, NULL, NULL, NULL),
(206, 'kuGrP28801.jpg', 1, NULL, NULL, NULL),
(207, 'fUzBw28301.png', 1, NULL, NULL, NULL),
(208, '2pdsO28701.jpg', 1, NULL, NULL, NULL),
(209, 'IHYuG28401.png', 1, NULL, NULL, NULL),
(210, 'LoMdU28301.jpg', 1, NULL, NULL, NULL),
(211, '9agoz28603.jpg', 1, NULL, NULL, NULL),
(212, 'hBhCH28803.jpg', 1, NULL, NULL, NULL),
(213, 'LHcpH28203.png', 1, NULL, NULL, NULL),
(214, 'VhOe928703.jpg', 1, NULL, NULL, NULL),
(215, 's50fE28203.jpg', 1, NULL, NULL, NULL),
(216, 'u4KY528603.png', 1, NULL, NULL, NULL),
(217, '8LCK828603.jpg', 1, NULL, NULL, NULL),
(218, '1m9NW28103.jpg', 1, NULL, NULL, NULL),
(219, '40Iy228603.jpg', 1, NULL, NULL, NULL),
(220, 'v10Ki28603.jpg', 1, NULL, NULL, NULL),
(221, 'iLWhl28903.jpg', 1, NULL, NULL, NULL),
(222, 'xlHTQ28803.jpg', 1, NULL, NULL, NULL),
(223, 'DF1kN28403.jpg', 1, NULL, NULL, NULL),
(224, 'OPO0928503.png', 1, NULL, NULL, NULL),
(225, '4lNmF28603.png', 1, NULL, NULL, NULL),
(226, 'IRJ6k28303.jpg', 1, NULL, NULL, NULL),
(227, 'SdYT528603.jpg', 1, NULL, NULL, NULL),
(228, 'L5nF128903.png', 1, NULL, NULL, NULL),
(229, 'aN64028103.jpg', 1, NULL, NULL, NULL),
(230, 'Oy3e128803.png', 1, NULL, NULL, NULL),
(231, 'PFRiP28503.jpg', 1, NULL, NULL, NULL),
(232, 'xuYi328703.jpg', 1, NULL, NULL, NULL),
(233, 'siVQg28703.jpg', 1, NULL, NULL, NULL),
(234, 'FaX7C28403.jpg', 1, NULL, NULL, NULL),
(235, 'WKgh928203.jpg', 1, NULL, NULL, NULL),
(236, 'kDmtc28803.jpg', 1, NULL, NULL, NULL),
(237, 'UUcbX28203.jpg', 1, NULL, NULL, NULL),
(238, 'wem9F28903.jpg', 1, NULL, NULL, NULL),
(239, 'b70sr28103.jpg', 1, NULL, NULL, NULL),
(240, 'OfRqK28603.jpg', 1, NULL, NULL, NULL),
(241, '0yv7228403.jpg', 1, NULL, NULL, NULL),
(242, 'wYfXA28903.jpg', 1, NULL, NULL, NULL),
(243, 'n8CDg28703.jpg', 1, NULL, NULL, NULL),
(244, 'F2mi628403.jpg', 1, NULL, NULL, NULL),
(245, '7ZTo628103.jpg', 1, NULL, NULL, NULL),
(246, '2HodE28903.jpg', 1, NULL, NULL, NULL),
(247, 'EX3gr28703.jpg', 1, NULL, NULL, NULL),
(248, '4TvfR28803.jpg', 1, NULL, NULL, NULL),
(249, 'fFrf328403.jpg', 1, NULL, NULL, NULL),
(250, 'SnFnt28605.png', 1, NULL, NULL, NULL),
(251, 'qCnV228805.png', 1, NULL, NULL, NULL),
(252, '2KQkF28705.jpg', 1, NULL, NULL, NULL),
(253, 'OX8Tg28306.jpg', 1, NULL, NULL, NULL),
(254, 'VY0Sn28106.jpg', 1, NULL, NULL, NULL),
(255, 'WynNy28706.jpg', 1, NULL, NULL, NULL),
(256, '7jVir28207.jpg', 1, NULL, NULL, NULL),
(257, 'SnDZ428207.jpg', 1, NULL, NULL, NULL),
(258, 'ht6BX28807.jpg', 1, NULL, NULL, NULL),
(259, 'kKKog28707.jpg', 1, NULL, NULL, NULL),
(260, 'nYQ9j28107.jpg', 1, NULL, NULL, NULL),
(261, 'g3id106304.jpg', 1, NULL, NULL, NULL),
(262, 'Lu47506804.jpg', 1, NULL, NULL, NULL),
(263, '7P9mT06804.jpg', 1, NULL, NULL, NULL),
(264, 'zAbaX06105.jpg', 1, NULL, NULL, NULL),
(265, 'SKHCw06305.jpg', 1, NULL, NULL, NULL),
(266, 'grGTB06505.jpg', 1, NULL, NULL, NULL),
(267, 'YsHhX06105.jpg', 1, NULL, NULL, NULL),
(268, 'L2nsY06805.jpg', 1, NULL, NULL, NULL),
(269, 'AwVrx06505.jpg', 1, NULL, NULL, NULL),
(270, '1a8WE07212.jpg', 1, NULL, NULL, NULL),
(271, 'uKdS007412.jpg', 1, NULL, NULL, NULL),
(272, 'lzTes07612.jpg', 1, NULL, NULL, NULL),
(273, 'w3t5107412.jpg', 1, NULL, NULL, NULL),
(274, 'pkj4707312.jpg', 1, NULL, NULL, NULL),
(275, 'PbN9U07712.jpg', 1, NULL, NULL, NULL),
(276, '0vOd307412.jpg', 1, NULL, NULL, NULL),
(277, 'GfS7B07312.jpg', 1, NULL, NULL, NULL),
(278, '4Cpiv07912.jpg', 1, NULL, NULL, NULL),
(279, '2qHmA07609.jpg', 1, NULL, NULL, NULL),
(280, 'PutZo07409.jpg', 1, NULL, NULL, NULL),
(281, 'CRnJ307612.jpg', 1, NULL, NULL, NULL),
(282, 'gglbs07912.jpg', 1, NULL, NULL, NULL),
(283, 'DoJMv07912.jpg', 1, NULL, NULL, NULL),
(284, 'kr9Tr07412.jpg', 1, NULL, NULL, NULL),
(285, 'sWHyU07212.jpg', 1, NULL, NULL, NULL),
(286, '3QnFU07512.jpg', 1, NULL, NULL, NULL),
(287, 'IJaMH07612.jpg', 1, NULL, NULL, NULL),
(288, 'eHLr807812.jpg', 1, NULL, NULL, NULL),
(289, 'E4wSw07201.jpg', 1, NULL, NULL, NULL),
(290, 'HxIeG07501.jpg', 1, NULL, NULL, NULL),
(291, 'hvRxD07301.jpg', 1, NULL, NULL, NULL),
(292, '23fbn07301.jpg', 1, NULL, NULL, NULL),
(293, 'u93Kq07201.jpg', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_categories`
--

CREATE TABLE `image_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `image_type` enum('ACTUAL','THUMBNAIL','LARGE','MEDIUM') NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `path` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `image_categories`
--

INSERT INTO `image_categories` (`id`, `image_id`, `image_type`, `height`, `width`, `path`, `created_at`, `updated_at`) VALUES
(84, 83, 'ACTUAL', 277, 370, 'images/media/2020/10/JqYfZ11207.jpg', NULL, NULL),
(85, 83, 'THUMBNAIL', 112, 150, 'images/media/2020/10/thumbnail1570778231JqYfZ11207.jpg', NULL, NULL),
(86, 84, 'ACTUAL', 301, 770, 'images/media/2020/10/6Q4Qy11507.jpg', NULL, NULL),
(87, 85, 'ACTUAL', 550, 368, 'images/media/2020/10/jOVnc11207.jpg', NULL, NULL),
(88, 85, 'THUMBNAIL', 150, 100, 'images/media/2020/10/thumbnail1570778446jOVnc11207.jpg', NULL, NULL),
(89, 85, 'MEDIUM', 400, 268, 'images/media/2020/10/medium1570778446jOVnc11207.jpg', NULL, NULL),
(90, 86, 'ACTUAL', 220, 370, 'images/media/2020/10/Ake4A11107.jpg', NULL, NULL),
(91, 86, 'THUMBNAIL', 89, 150, 'images/media/2020/10/thumbnail1570778447Ake4A11107.jpg', NULL, NULL),
(96, 89, 'ACTUAL', 229, 270, 'images/media/2020/10/nDQtA11407.jpg', NULL, NULL),
(97, 89, 'THUMBNAIL', 127, 150, 'images/media/2020/10/thumbnail1570778680nDQtA11407.jpg', NULL, NULL),
(98, 90, 'ACTUAL', 298, 568, 'images/media/2020/10/ueyod11407.jpg', NULL, NULL),
(99, 90, 'THUMBNAIL', 79, 150, 'images/media/2020/10/thumbnail1570778749ueyod11407.jpg', NULL, NULL),
(100, 90, 'MEDIUM', 210, 400, 'images/media/2020/10/medium1570778749ueyod11407.jpg', NULL, NULL),
(101, 91, 'ACTUAL', 490, 570, 'images/media/2020/10/xD6MF11207.jpg', NULL, NULL),
(102, 91, 'THUMBNAIL', 129, 150, 'images/media/2020/10/thumbnail1570778967xD6MF11207.jpg', NULL, NULL),
(103, 91, 'MEDIUM', 344, 400, 'images/media/2020/10/medium1570778967xD6MF11207.jpg', NULL, NULL),
(104, 92, 'ACTUAL', 229, 270, 'images/media/2020/10/YZyoU11507.jpg', NULL, NULL),
(105, 92, 'THUMBNAIL', 127, 150, 'images/media/2020/10/thumbnail1570778968YZyoU11507.jpg', NULL, NULL),
(106, 93, 'ACTUAL', 301, 770, 'images/media/2020/10/RLshK11309.jpg', NULL, NULL),
(107, 93, 'THUMBNAIL', 59, 150, 'images/media/2020/10/thumbnail1570787475RLshK11309.jpg', NULL, NULL),
(108, 93, 'MEDIUM', 156, 400, 'images/media/2020/10/medium1570787476RLshK11309.jpg', NULL, NULL),
(109, 94, 'ACTUAL', 211, 570, 'images/media/2020/10/pTZdI11309.jpg', NULL, NULL),
(110, 94, 'THUMBNAIL', 56, 150, 'images/media/2020/10/thumbnail1570787731pTZdI11309.jpg', NULL, NULL),
(111, 94, 'MEDIUM', 148, 400, 'images/media/2020/10/medium1570787731pTZdI11309.jpg', NULL, NULL),
(112, 95, 'ACTUAL', 451, 570, 'images/media/2020/10/2t7BU11909.jpg', NULL, NULL),
(113, 95, 'THUMBNAIL', 119, 150, 'images/media/2020/10/thumbnail15707877532t7BU11909.jpg', NULL, NULL),
(114, 95, 'MEDIUM', 316, 400, 'images/media/2020/10/medium15707877542t7BU11909.jpg', NULL, NULL),
(115, 96, 'ACTUAL', 211, 270, 'images/media/2020/10/O0cLp11909.jpg', NULL, NULL),
(116, 96, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1570787792O0cLp11909.jpg', NULL, NULL),
(117, 97, 'ACTUAL', 298, 568, 'images/media/2020/10/ncXhn11709.jpg', NULL, NULL),
(118, 97, 'THUMBNAIL', 79, 150, 'images/media/2020/10/thumbnail1570787936ncXhn11709.jpg', NULL, NULL),
(119, 97, 'MEDIUM', 210, 400, 'images/media/2020/10/medium1570787936ncXhn11709.jpg', NULL, NULL),
(120, 98, 'ACTUAL', 452, 569, 'images/media/2020/10/3876V11310.jpg', NULL, NULL),
(121, 98, 'THUMBNAIL', 119, 150, 'images/media/2020/10/thumbnail15707880203876V11310.jpg', NULL, NULL),
(122, 98, 'MEDIUM', 318, 400, 'images/media/2020/10/medium15707880213876V11310.jpg', NULL, NULL),
(123, 99, 'ACTUAL', 451, 271, 'images/media/2020/10/80IGj11510.jpg', NULL, NULL),
(124, 99, 'THUMBNAIL', 150, 90, 'images/media/2020/10/thumbnail157078802180IGj11510.jpg', NULL, NULL),
(125, 99, 'MEDIUM', 400, 240, 'images/media/2020/10/medium157078802180IGj11510.jpg', NULL, NULL),
(126, 100, 'ACTUAL', 493, 370, 'images/media/2020/10/ueeqM11410.jpg', NULL, NULL),
(127, 100, 'THUMBNAIL', 150, 113, 'images/media/2020/10/thumbnail1570788170ueeqM11410.jpg', NULL, NULL),
(128, 100, 'MEDIUM', 400, 300, 'images/media/2020/10/medium1570788171ueeqM11410.jpg', NULL, NULL),
(129, 101, 'ACTUAL', 230, 370, 'images/media/2020/10/UrgVW11410.jpg', NULL, NULL),
(130, 101, 'THUMBNAIL', 93, 150, 'images/media/2020/10/thumbnail1570788171UrgVW11410.jpg', NULL, NULL),
(131, 102, 'ACTUAL', 230, 370, 'images/media/2020/10/a18kN11510.jpg', NULL, NULL),
(132, 102, 'THUMBNAIL', 93, 150, 'images/media/2020/10/thumbnail1570788301a18kN11510.jpg', NULL, NULL),
(133, 103, 'ACTUAL', 493, 370, 'images/media/2020/10/qQM0R11310.jpg', NULL, NULL),
(134, 103, 'THUMBNAIL', 150, 113, 'images/media/2020/10/thumbnail1570788302qQM0R11310.jpg', NULL, NULL),
(135, 103, 'MEDIUM', 400, 300, 'images/media/2020/10/medium1570788302qQM0R11310.jpg', NULL, NULL),
(136, 104, 'ACTUAL', 259, 770, 'images/media/2020/10/VrhhT11510.jpg', NULL, NULL),
(137, 104, 'THUMBNAIL', 50, 150, 'images/media/2020/10/thumbnail1570788382VrhhT11510.jpg', NULL, NULL),
(138, 104, 'MEDIUM', 135, 400, 'images/media/2020/10/medium1570788382VrhhT11510.jpg', NULL, NULL),
(139, 105, 'ACTUAL', 546, 372, 'images/media/2020/10/gSkR011310.jpg', NULL, NULL),
(140, 105, 'THUMBNAIL', 150, 102, 'images/media/2020/10/thumbnail1570788383gSkR011310.jpg', NULL, NULL),
(141, 105, 'MEDIUM', 400, 273, 'images/media/2020/10/medium1570788383gSkR011310.jpg', NULL, NULL),
(142, 106, 'ACTUAL', 430, 1599, 'images/media/2020/10/DXoxt11610.jpg', NULL, NULL),
(143, 106, 'THUMBNAIL', 40, 150, 'images/media/2020/10/thumbnail1570789393DXoxt11610.jpg', NULL, NULL),
(144, 106, 'MEDIUM', 108, 400, 'images/media/2020/10/medium1570789394DXoxt11610.jpg', NULL, NULL),
(145, 106, 'LARGE', 242, 900, 'images/media/2020/10/large1570789394DXoxt11610.jpg', NULL, NULL),
(146, 107, 'ACTUAL', 236, 1169, 'images/media/2020/10/N4WSZ11310.jpg', NULL, NULL),
(147, 107, 'THUMBNAIL', 30, 150, 'images/media/2020/10/thumbnail1570789395N4WSZ11310.jpg', NULL, NULL),
(148, 107, 'MEDIUM', 81, 400, 'images/media/2020/10/medium1570789395N4WSZ11310.jpg', NULL, NULL),
(149, 107, 'LARGE', 182, 900, 'images/media/2020/10/large1570789395N4WSZ11310.jpg', NULL, NULL),
(150, 108, 'ACTUAL', 421, 1170, 'images/media/2020/10/z9MLR11610.jpg', NULL, NULL),
(151, 108, 'THUMBNAIL', 54, 150, 'images/media/2020/10/thumbnail1570789643z9MLR11610.jpg', NULL, NULL),
(152, 108, 'MEDIUM', 144, 400, 'images/media/2020/10/medium1570789643z9MLR11610.jpg', NULL, NULL),
(153, 108, 'LARGE', 324, 900, 'images/media/2020/10/large1570789644z9MLR11610.jpg', NULL, NULL),
(154, 109, 'ACTUAL', 418, 885, 'images/media/2020/10/YNVyV11410.jpg', NULL, NULL),
(155, 109, 'THUMBNAIL', 71, 150, 'images/media/2020/10/thumbnail1570789935YNVyV11410.jpg', NULL, NULL),
(156, 109, 'MEDIUM', 189, 400, 'images/media/2020/10/medium1570789935YNVyV11410.jpg', NULL, NULL),
(157, 110, 'ACTUAL', 387, 770, 'images/media/2020/10/YinE411810.jpg', NULL, NULL),
(158, 110, 'THUMBNAIL', 75, 150, 'images/media/2020/10/thumbnail1570790072YinE411810.jpg', NULL, NULL),
(159, 110, 'MEDIUM', 201, 400, 'images/media/2020/10/medium1570790072YinE411810.jpg', NULL, NULL),
(160, 111, 'ACTUAL', 421, 1600, 'images/media/2020/10/97VNC11210.jpg', NULL, NULL),
(161, 111, 'THUMBNAIL', 39, 150, 'images/media/2020/10/thumbnail157079031897VNC11210.jpg', NULL, NULL),
(162, 111, 'MEDIUM', 105, 400, 'images/media/2020/10/medium157079031997VNC11210.jpg', NULL, NULL),
(163, 111, 'LARGE', 237, 900, 'images/media/2020/10/large157079031997VNC11210.jpg', NULL, NULL),
(168, 114, 'ACTUAL', 179, 370, 'images/media/2020/10/zZZ2n11710.jpg', NULL, NULL),
(169, 114, 'THUMBNAIL', 73, 150, 'images/media/2020/10/thumbnail1570790472zZZ2n11710.jpg', NULL, NULL),
(170, 115, 'ACTUAL', 211, 370, 'images/media/2020/10/vMNsa11710.jpg', NULL, NULL),
(171, 115, 'THUMBNAIL', 86, 150, 'images/media/2020/10/thumbnail1570790553vMNsa11710.jpg', NULL, NULL),
(172, 116, 'ACTUAL', 208, 465, 'images/media/2020/10/qujIz11610.jpg', NULL, NULL),
(173, 116, 'THUMBNAIL', 67, 150, 'images/media/2020/10/thumbnail1570790554qujIz11610.jpg', NULL, NULL),
(174, 116, 'MEDIUM', 179, 400, 'images/media/2020/10/medium1570790554qujIz11610.jpg', NULL, NULL),
(176, 118, 'ACTUAL', 20, 30, 'images/media/2020/10/PJG0C11511.jpg', NULL, NULL),
(177, 119, 'ACTUAL', 20, 30, 'images/media/2020/10/SKOMJ11512.jpg', NULL, NULL),
(178, 120, 'ACTUAL', 64, 64, 'images/media/2020/10/3eIYU27601.png', NULL, NULL),
(179, 121, 'ACTUAL', 284, 250, 'images/media/2020/10/o7Ssu27301.jpg', NULL, NULL),
(180, 121, 'THUMBNAIL', 150, 132, 'images/media/2020/10/thumbnail1574860687o7Ssu27301.jpg', NULL, NULL),
(181, 122, 'ACTUAL', 64, 64, 'images/media/2020/10/wUJPQ27501.png', NULL, NULL),
(182, 123, 'ACTUAL', 284, 250, 'images/media/2020/10/dfJMq27601.jpg', NULL, NULL),
(183, 123, 'THUMBNAIL', 150, 132, 'images/media/2020/10/thumbnail1574860688dfJMq27601.jpg', NULL, NULL),
(184, 124, 'ACTUAL', 284, 250, 'images/media/2020/10/mAv6127501.jpg', NULL, NULL),
(185, 124, 'THUMBNAIL', 150, 132, 'images/media/2020/10/thumbnail1574860689mAv6127501.jpg', NULL, NULL),
(186, 125, 'ACTUAL', 64, 64, 'images/media/2020/10/k9n9K27501.png', NULL, NULL),
(187, 126, 'ACTUAL', 64, 64, 'images/media/2020/10/5BOEl27501.png', NULL, NULL),
(188, 127, 'ACTUAL', 284, 250, 'images/media/2020/10/8HSeI27701.jpg', NULL, NULL),
(189, 127, 'THUMBNAIL', 150, 132, 'images/media/2020/10/thumbnail15748606908HSeI27701.jpg', NULL, NULL),
(190, 128, 'ACTUAL', 64, 64, 'images/media/2020/10/uFhMa27301.png', NULL, NULL),
(191, 129, 'ACTUAL', 284, 250, 'images/media/2020/10/6nwKu27201.jpg', NULL, NULL),
(192, 129, 'THUMBNAIL', 150, 132, 'images/media/2020/10/thumbnail15748606926nwKu27201.jpg', NULL, NULL),
(193, 130, 'ACTUAL', 64, 64, 'images/media/2020/10/DLQFG27501.png', NULL, NULL),
(194, 131, 'ACTUAL', 284, 250, 'images/media/2020/10/QxXOd27901.jpg', NULL, NULL),
(195, 131, 'THUMBNAIL', 150, 132, 'images/media/2020/10/thumbnail1574860692QxXOd27901.jpg', NULL, NULL),
(196, 132, 'ACTUAL', 1024, 1024, 'images/media/2020/10/V28pJ27401.jpg', NULL, NULL),
(197, 133, 'ACTUAL', 1024, 1024, 'images/media/2020/10/1yXrD27301.jpg', NULL, NULL),
(198, 132, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574861577V28pJ27401.jpg', NULL, NULL),
(199, 133, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail15748615771yXrD27301.jpg', NULL, NULL),
(200, 132, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574861577V28pJ27401.jpg', NULL, NULL),
(201, 133, 'MEDIUM', 400, 400, 'images/media/2020/10/medium15748615771yXrD27301.jpg', NULL, NULL),
(202, 133, 'LARGE', 900, 900, 'images/media/2020/10/large15748615781yXrD27301.jpg', NULL, NULL),
(203, 132, 'LARGE', 900, 900, 'images/media/2020/10/large1574861578V28pJ27401.jpg', NULL, NULL),
(204, 134, 'ACTUAL', 1024, 1024, 'images/media/2020/10/8mv7C27701.jpg', NULL, NULL),
(205, 134, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail15748615798mv7C27701.jpg', NULL, NULL),
(206, 134, 'MEDIUM', 400, 400, 'images/media/2020/10/medium15748615798mv7C27701.jpg', NULL, NULL),
(207, 135, 'ACTUAL', 1024, 1024, 'images/media/2020/10/FLPgv27901.jpg', NULL, NULL),
(208, 134, 'LARGE', 900, 900, 'images/media/2020/10/large15748615798mv7C27701.jpg', NULL, NULL),
(209, 135, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574861580FLPgv27901.jpg', NULL, NULL),
(210, 135, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574861580FLPgv27901.jpg', NULL, NULL),
(211, 135, 'LARGE', 900, 900, 'images/media/2020/10/large1574861580FLPgv27901.jpg', NULL, NULL),
(212, 136, 'ACTUAL', 1024, 1024, 'images/media/2020/10/DVCXE27301.jpg', NULL, NULL),
(213, 136, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574861580DVCXE27301.jpg', NULL, NULL),
(214, 136, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574861580DVCXE27301.jpg', NULL, NULL),
(215, 136, 'LARGE', 900, 900, 'images/media/2020/10/large1574861581DVCXE27301.jpg', NULL, NULL),
(216, 137, 'ACTUAL', 1024, 1024, 'images/media/2020/10/VcWP527901.jpg', NULL, NULL),
(217, 138, 'ACTUAL', 1024, 1024, 'images/media/2020/10/nailP27301.jpg', NULL, NULL),
(218, 137, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574862242VcWP527901.jpg', NULL, NULL),
(219, 138, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574862242nailP27301.jpg', NULL, NULL),
(220, 138, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574862243nailP27301.jpg', NULL, NULL),
(221, 137, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574862243VcWP527901.jpg', NULL, NULL),
(222, 138, 'LARGE', 900, 900, 'images/media/2020/10/large1574862243nailP27301.jpg', NULL, NULL),
(223, 137, 'LARGE', 900, 900, 'images/media/2020/10/large1574862243VcWP527901.jpg', NULL, NULL),
(224, 139, 'ACTUAL', 1024, 1024, 'images/media/2020/10/7fA9P27701.jpg', NULL, NULL),
(225, 140, 'ACTUAL', 1024, 1024, 'images/media/2020/10/snPOE27601.jpg', NULL, NULL),
(226, 139, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail15748622447fA9P27701.jpg', NULL, NULL),
(227, 140, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574862244snPOE27601.jpg', NULL, NULL),
(228, 139, 'MEDIUM', 400, 400, 'images/media/2020/10/medium15748622447fA9P27701.jpg', NULL, NULL),
(229, 140, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574862244snPOE27601.jpg', NULL, NULL),
(230, 139, 'LARGE', 900, 900, 'images/media/2020/10/large15748622457fA9P27701.jpg', NULL, NULL),
(231, 140, 'LARGE', 900, 900, 'images/media/2020/10/large1574862245snPOE27601.jpg', NULL, NULL),
(232, 141, 'ACTUAL', 1024, 1024, 'images/media/2020/10/hO4hS27501.jpg', NULL, NULL),
(233, 142, 'ACTUAL', 1024, 1024, 'images/media/2020/10/Ih8vq27801.jpg', NULL, NULL),
(234, 141, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574862247hO4hS27501.jpg', NULL, NULL),
(235, 142, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574862247Ih8vq27801.jpg', NULL, NULL),
(236, 141, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574862248hO4hS27501.jpg', NULL, NULL),
(237, 142, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574862248Ih8vq27801.jpg', NULL, NULL),
(238, 141, 'LARGE', 900, 900, 'images/media/2020/10/large1574862249hO4hS27501.jpg', NULL, NULL),
(239, 142, 'LARGE', 900, 900, 'images/media/2020/10/large1574862250Ih8vq27801.jpg', NULL, NULL),
(240, 143, 'ACTUAL', 1024, 1024, 'images/media/2020/10/zZwLc27801.jpg', NULL, NULL),
(241, 144, 'ACTUAL', 1024, 1024, 'images/media/2020/10/AICfz27901.jpg', NULL, NULL),
(242, 143, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574863016zZwLc27801.jpg', NULL, NULL),
(243, 144, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574863017AICfz27901.jpg', NULL, NULL),
(244, 143, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574863023zZwLc27801.jpg', NULL, NULL),
(245, 144, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574863024AICfz27901.jpg', NULL, NULL),
(246, 143, 'LARGE', 900, 900, 'images/media/2020/10/large1574863029zZwLc27801.jpg', NULL, NULL),
(247, 144, 'LARGE', 900, 900, 'images/media/2020/10/large1574863029AICfz27901.jpg', NULL, NULL),
(248, 145, 'ACTUAL', 1024, 1024, 'images/media/2020/10/qr7Fs27401.jpg', NULL, NULL),
(249, 146, 'ACTUAL', 1024, 1024, 'images/media/2020/10/uHB5927801.jpg', NULL, NULL),
(250, 145, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574863035qr7Fs27401.jpg', NULL, NULL),
(251, 146, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574863035uHB5927801.jpg', NULL, NULL),
(252, 145, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574863037qr7Fs27401.jpg', NULL, NULL),
(253, 146, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574863038uHB5927801.jpg', NULL, NULL),
(254, 145, 'LARGE', 900, 900, 'images/media/2020/10/large1574863042qr7Fs27401.jpg', NULL, NULL),
(255, 146, 'LARGE', 900, 900, 'images/media/2020/10/large1574863042uHB5927801.jpg', NULL, NULL),
(256, 147, 'ACTUAL', 1024, 1024, 'images/media/2020/10/0Av0f27701.jpg', NULL, NULL),
(257, 148, 'ACTUAL', 1024, 1024, 'images/media/2020/10/uNImA27601.jpg', NULL, NULL),
(258, 147, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail15748630460Av0f27701.jpg', NULL, NULL),
(259, 148, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574863047uNImA27601.jpg', NULL, NULL),
(260, 147, 'MEDIUM', 400, 400, 'images/media/2020/10/medium15748630490Av0f27701.jpg', NULL, NULL),
(261, 148, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574863050uNImA27601.jpg', NULL, NULL),
(262, 148, 'LARGE', 900, 900, 'images/media/2020/10/large1574863055uNImA27601.jpg', NULL, NULL),
(263, 149, 'ACTUAL', 1024, 1024, 'images/media/2020/10/X99Yv27101.jpg', NULL, NULL),
(264, 150, 'ACTUAL', 1024, 1024, 'images/media/2020/10/IffDN27501.jpg', NULL, NULL),
(265, 149, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574863063X99Yv27101.jpg', NULL, NULL),
(266, 150, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574863064IffDN27501.jpg', NULL, NULL),
(267, 149, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574863067X99Yv27101.jpg', NULL, NULL),
(268, 150, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574863067IffDN27501.jpg', NULL, NULL),
(269, 150, 'LARGE', 900, 900, 'images/media/2020/10/large1574863072IffDN27501.jpg', NULL, NULL),
(270, 151, 'ACTUAL', 1024, 1024, 'images/media/2020/10/IfFM227501.jpg', NULL, NULL),
(271, 152, 'ACTUAL', 1024, 1024, 'images/media/2020/10/QidxL27101.jpg', NULL, NULL),
(272, 151, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574863076IfFM227501.jpg', NULL, NULL),
(273, 152, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574863078QidxL27101.jpg', NULL, NULL),
(274, 151, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574863078IfFM227501.jpg', NULL, NULL),
(275, 152, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574863080QidxL27101.jpg', NULL, NULL),
(276, 151, 'LARGE', 900, 900, 'images/media/2020/10/large1574863082IfFM227501.jpg', NULL, NULL),
(277, 152, 'LARGE', 900, 900, 'images/media/2020/10/large1574863084QidxL27101.jpg', NULL, NULL),
(278, 153, 'ACTUAL', 1024, 1024, 'images/media/2020/10/i4HBN27901.jpg', NULL, NULL),
(279, 154, 'ACTUAL', 1024, 1024, 'images/media/2020/10/DJYMO27101.jpg', NULL, NULL),
(280, 153, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574863087i4HBN27901.jpg', NULL, NULL),
(281, 154, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574863089DJYMO27101.jpg', NULL, NULL),
(282, 153, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574863090i4HBN27901.jpg', NULL, NULL),
(283, 154, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574863092DJYMO27101.jpg', NULL, NULL),
(284, 153, 'LARGE', 900, 900, 'images/media/2020/10/large1574863094i4HBN27901.jpg', NULL, NULL),
(285, 154, 'LARGE', 900, 900, 'images/media/2020/10/large1574863095DJYMO27101.jpg', NULL, NULL),
(286, 155, 'ACTUAL', 1024, 1024, 'images/media/2020/10/QCt0c27501.jpg', NULL, NULL),
(287, 155, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574863097QCt0c27501.jpg', NULL, NULL),
(288, 155, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574863098QCt0c27501.jpg', NULL, NULL),
(289, 155, 'LARGE', 900, 900, 'images/media/2020/10/large1574863100QCt0c27501.jpg', NULL, NULL),
(290, 156, 'ACTUAL', 1024, 1024, 'images/media/2020/10/uBdE828101.jpg', NULL, NULL),
(291, 157, 'ACTUAL', 1024, 1024, 'images/media/2020/10/u0IgM28801.jpg', NULL, NULL),
(292, 156, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574948922uBdE828101.jpg', NULL, NULL),
(293, 157, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574948922u0IgM28801.jpg', NULL, NULL),
(294, 157, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574948923u0IgM28801.jpg', NULL, NULL),
(295, 156, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574948923uBdE828101.jpg', NULL, NULL),
(296, 157, 'LARGE', 900, 900, 'images/media/2020/10/large1574948923u0IgM28801.jpg', NULL, NULL),
(297, 156, 'LARGE', 900, 900, 'images/media/2020/10/large1574948923uBdE828101.jpg', NULL, NULL),
(298, 158, 'ACTUAL', 1024, 1024, 'images/media/2020/10/wJku428501.jpg', NULL, NULL),
(299, 159, 'ACTUAL', 1024, 1024, 'images/media/2020/10/CZCdI28701.jpg', NULL, NULL),
(300, 158, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574948925wJku428501.jpg', NULL, NULL),
(301, 159, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574948925CZCdI28701.jpg', NULL, NULL),
(302, 159, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574948925CZCdI28701.jpg', NULL, NULL),
(303, 158, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574948925wJku428501.jpg', NULL, NULL),
(304, 159, 'LARGE', 900, 900, 'images/media/2020/10/large1574948926CZCdI28701.jpg', NULL, NULL),
(305, 158, 'LARGE', 900, 900, 'images/media/2020/10/large1574948926wJku428501.jpg', NULL, NULL),
(306, 160, 'ACTUAL', 1024, 1024, 'images/media/2020/10/Uj7wx28801.jpg', NULL, NULL),
(307, 160, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574948927Uj7wx28801.jpg', NULL, NULL),
(308, 161, 'ACTUAL', 1024, 1024, 'images/media/2020/10/sYPxJ28701.jpg', NULL, NULL),
(309, 160, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574948927Uj7wx28801.jpg', NULL, NULL),
(310, 161, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1574948927sYPxJ28701.jpg', NULL, NULL),
(311, 161, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1574948927sYPxJ28701.jpg', NULL, NULL),
(312, 161, 'LARGE', 900, 900, 'images/media/2020/10/large1574948928sYPxJ28701.jpg', NULL, NULL),
(313, 162, 'ACTUAL', 1024, 1024, 'images/media/2020/10/8d9ql28401.jpg', NULL, NULL),
(314, 162, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail15749489288d9ql28401.jpg', NULL, NULL),
(315, 162, 'MEDIUM', 400, 400, 'images/media/2020/10/medium15749489288d9ql28401.jpg', NULL, NULL),
(316, 162, 'LARGE', 900, 900, 'images/media/2020/10/large15749489298d9ql28401.jpg', NULL, NULL),
(317, 163, 'ACTUAL', 1024, 1024, 'images/media/2020/10/fCGbk02108.jpg', NULL, NULL),
(318, 164, 'ACTUAL', 1024, 1024, 'images/media/2020/10/mZCsc02908.jpg', NULL, NULL),
(319, 163, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1575275445fCGbk02108.jpg', NULL, NULL),
(320, 164, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1575275445mZCsc02908.jpg', NULL, NULL),
(321, 163, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1575275445fCGbk02108.jpg', NULL, NULL),
(322, 164, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1575275445mZCsc02908.jpg', NULL, NULL),
(323, 163, 'LARGE', 900, 900, 'images/media/2020/10/large1575275446fCGbk02108.jpg', NULL, NULL),
(324, 164, 'LARGE', 900, 900, 'images/media/2020/10/large1575275446mZCsc02908.jpg', NULL, NULL),
(325, 165, 'ACTUAL', 1024, 1024, 'images/media/2020/10/PQwJz02308.jpg', NULL, NULL),
(326, 166, 'ACTUAL', 1024, 1024, 'images/media/2020/10/k5PM902208.jpg', NULL, NULL),
(327, 165, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1575275448PQwJz02308.jpg', NULL, NULL),
(328, 166, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1575275448k5PM902208.jpg', NULL, NULL),
(329, 165, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1575275448PQwJz02308.jpg', NULL, NULL),
(330, 166, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1575275448k5PM902208.jpg', NULL, NULL),
(331, 165, 'LARGE', 900, 900, 'images/media/2020/10/large1575275449PQwJz02308.jpg', NULL, NULL),
(332, 166, 'LARGE', 900, 900, 'images/media/2020/10/large1575275449k5PM902208.jpg', NULL, NULL),
(333, 167, 'ACTUAL', 1024, 1024, 'images/media/2020/10/r8QNB02908.jpg', NULL, NULL),
(334, 168, 'ACTUAL', 1024, 1024, 'images/media/2020/10/Sxm7C02608.jpg', NULL, NULL),
(335, 167, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1575275451r8QNB02908.jpg', NULL, NULL),
(336, 168, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1575275451Sxm7C02608.jpg', NULL, NULL),
(337, 167, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1575275452r8QNB02908.jpg', NULL, NULL),
(338, 168, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1575275452Sxm7C02608.jpg', NULL, NULL),
(339, 167, 'LARGE', 900, 900, 'images/media/2020/10/large1575275453r8QNB02908.jpg', NULL, NULL),
(340, 168, 'LARGE', 900, 900, 'images/media/2020/10/large1575275453Sxm7C02608.jpg', NULL, NULL),
(341, 169, 'ACTUAL', 1024, 1024, 'images/media/2020/10/b8Fgl02808.jpg', NULL, NULL),
(342, 170, 'ACTUAL', 1024, 1024, 'images/media/2020/10/Ob0sg02608.jpg', NULL, NULL),
(343, 169, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1575275455b8Fgl02808.jpg', NULL, NULL),
(344, 170, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1575275455Ob0sg02608.jpg', NULL, NULL),
(345, 169, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1575275455b8Fgl02808.jpg', NULL, NULL),
(346, 170, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1575275456Ob0sg02608.jpg', NULL, NULL),
(347, 169, 'LARGE', 900, 900, 'images/media/2020/10/large1575275456b8Fgl02808.jpg', NULL, NULL),
(348, 170, 'LARGE', 900, 900, 'images/media/2020/10/large1575275456Ob0sg02608.jpg', NULL, NULL),
(349, 171, 'ACTUAL', 421, 1600, 'images/media/2020/10/kdout20102.jpg', NULL, NULL),
(350, 171, 'THUMBNAIL', 39, 150, 'images/media/2020/10/thumbnail1582210024kdout20102.jpg', NULL, NULL),
(351, 172, 'ACTUAL', 421, 1600, 'images/media/2020/10/w46y720502.jpg', NULL, NULL),
(352, 171, 'MEDIUM', 105, 400, 'images/media/2020/10/medium1582210024kdout20102.jpg', NULL, NULL),
(353, 172, 'THUMBNAIL', 39, 150, 'images/media/2020/10/thumbnail1582210024w46y720502.jpg', NULL, NULL),
(354, 172, 'MEDIUM', 105, 400, 'images/media/2020/10/medium1582210024w46y720502.jpg', NULL, NULL),
(355, 171, 'LARGE', 237, 900, 'images/media/2020/10/large1582210024kdout20102.jpg', NULL, NULL),
(356, 172, 'LARGE', 237, 900, 'images/media/2020/10/large1582210024w46y720502.jpg', NULL, NULL),
(357, 173, 'ACTUAL', 421, 1600, 'images/media/2020/10/WHhXb20502.jpg', NULL, NULL),
(358, 173, 'THUMBNAIL', 39, 150, 'images/media/2020/10/thumbnail1582210025WHhXb20502.jpg', NULL, NULL),
(359, 173, 'MEDIUM', 105, 400, 'images/media/2020/10/medium1582210025WHhXb20502.jpg', NULL, NULL),
(360, 173, 'LARGE', 237, 900, 'images/media/2020/10/large1582210025WHhXb20502.jpg', NULL, NULL),
(361, 174, 'ACTUAL', 277, 370, 'images/media/2020/10/21yLt20503.jpg', NULL, NULL),
(362, 174, 'THUMBNAIL', 112, 150, 'images/media/2020/10/thumbnail158221085321yLt20503.jpg', NULL, NULL),
(363, 175, 'ACTUAL', 277, 370, 'images/media/2020/10/ofxzh20403.jpg', NULL, NULL),
(364, 175, 'THUMBNAIL', 112, 150, 'images/media/2020/10/thumbnail1582210853ofxzh20403.jpg', NULL, NULL),
(365, 176, 'ACTUAL', 277, 370, 'images/media/2020/10/ckvHK20203.jpg', NULL, NULL),
(366, 176, 'THUMBNAIL', 112, 150, 'images/media/2020/10/thumbnail1582210854ckvHK20203.jpg', NULL, NULL),
(367, 177, 'ACTUAL', 301, 770, 'images/media/2020/10/6DM9820403.jpg', NULL, NULL),
(368, 177, 'THUMBNAIL', 59, 150, 'images/media/2020/10/thumbnail15822109586DM9820403.jpg', NULL, NULL),
(369, 177, 'MEDIUM', 156, 400, 'images/media/2020/10/medium15822109586DM9820403.jpg', NULL, NULL),
(370, 178, 'ACTUAL', 550, 368, 'images/media/2020/10/dZaEY20303.jpg', NULL, NULL),
(371, 178, 'THUMBNAIL', 150, 100, 'images/media/2020/10/thumbnail1582210958dZaEY20303.jpg', NULL, NULL),
(372, 178, 'MEDIUM', 400, 268, 'images/media/2020/10/medium1582210958dZaEY20303.jpg', NULL, NULL),
(373, 179, 'ACTUAL', 220, 370, 'images/media/2020/10/VmCEr20703.jpg', NULL, NULL),
(374, 179, 'THUMBNAIL', 89, 150, 'images/media/2020/10/thumbnail1582210958VmCEr20703.jpg', NULL, NULL),
(375, 180, 'ACTUAL', 220, 370, 'images/media/2020/10/fuq2A20403.jpg', NULL, NULL),
(376, 180, 'THUMBNAIL', 89, 150, 'images/media/2020/10/thumbnail1582210958fuq2A20403.jpg', NULL, NULL),
(377, 181, 'ACTUAL', 229, 270, 'images/media/2020/10/lKwDn20403.jpg', NULL, NULL),
(378, 181, 'THUMBNAIL', 127, 150, 'images/media/2020/10/thumbnail1582211094lKwDn20403.jpg', NULL, NULL),
(379, 182, 'ACTUAL', 229, 270, 'images/media/2020/10/xRBw820303.jpg', NULL, NULL),
(380, 182, 'THUMBNAIL', 127, 150, 'images/media/2020/10/thumbnail1582211095xRBw820303.jpg', NULL, NULL),
(381, 183, 'ACTUAL', 490, 570, 'images/media/2020/10/9vZZo20203.jpg', NULL, NULL),
(382, 183, 'THUMBNAIL', 129, 150, 'images/media/2020/10/thumbnail15822110959vZZo20203.jpg', NULL, NULL),
(383, 183, 'MEDIUM', 344, 400, 'images/media/2020/10/medium15822110959vZZo20203.jpg', NULL, NULL),
(384, 184, 'ACTUAL', 229, 270, 'images/media/2020/10/lvaFG20403.jpg', NULL, NULL),
(385, 184, 'THUMBNAIL', 127, 150, 'images/media/2020/10/thumbnail1582211095lvaFG20403.jpg', NULL, NULL),
(386, 185, 'ACTUAL', 229, 270, 'images/media/2020/10/Rz0xi20403.jpg', NULL, NULL),
(387, 185, 'THUMBNAIL', 127, 150, 'images/media/2020/10/thumbnail1582211096Rz0xi20403.jpg', NULL, NULL),
(388, 186, 'ACTUAL', 211, 270, 'images/media/2020/10/JElsC20603.jpg', NULL, NULL),
(389, 186, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1582211233JElsC20603.jpg', NULL, NULL),
(390, 187, 'ACTUAL', 211, 270, 'images/media/2020/10/61tK720503.jpg', NULL, NULL),
(391, 187, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail158221123461tK720503.jpg', NULL, NULL),
(392, 188, 'ACTUAL', 211, 570, 'images/media/2020/10/v9rHN20803.jpg', NULL, NULL),
(393, 188, 'THUMBNAIL', 56, 150, 'images/media/2020/10/thumbnail1582211234v9rHN20803.jpg', NULL, NULL),
(394, 188, 'MEDIUM', 148, 400, 'images/media/2020/10/medium1582211234v9rHN20803.jpg', NULL, NULL),
(395, 189, 'ACTUAL', 451, 570, 'images/media/2020/10/UXs5s20703.jpg', NULL, NULL),
(396, 189, 'THUMBNAIL', 119, 150, 'images/media/2020/10/thumbnail1582211335UXs5s20703.jpg', NULL, NULL),
(397, 189, 'MEDIUM', 316, 400, 'images/media/2020/10/medium1582211335UXs5s20703.jpg', NULL, NULL),
(398, 190, 'ACTUAL', 298, 568, 'images/media/2020/10/JG8B320703.jpg', NULL, NULL),
(399, 190, 'THUMBNAIL', 79, 150, 'images/media/2020/10/thumbnail1582211438JG8B320703.jpg', NULL, NULL),
(400, 191, 'ACTUAL', 298, 569, 'images/media/2020/10/nAkVg20103.jpg', NULL, NULL),
(401, 191, 'THUMBNAIL', 79, 150, 'images/media/2020/10/thumbnail1582211438nAkVg20103.jpg', NULL, NULL),
(402, 190, 'MEDIUM', 210, 400, 'images/media/2020/10/medium1582211438JG8B320703.jpg', NULL, NULL),
(403, 191, 'MEDIUM', 209, 400, 'images/media/2020/10/medium1582211438nAkVg20103.jpg', NULL, NULL),
(404, 192, 'ACTUAL', 229, 270, 'images/media/2020/10/NMlsy20403.jpg', NULL, NULL),
(405, 192, 'THUMBNAIL', 127, 150, 'images/media/2020/10/thumbnail1582211490NMlsy20403.jpg', NULL, NULL),
(406, 193, 'ACTUAL', 452, 569, 'images/media/2020/10/3icIy20103.jpg', NULL, NULL),
(407, 194, 'ACTUAL', 211, 270, 'images/media/2020/10/ZXu5e20103.jpg', NULL, NULL),
(408, 194, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1582211546ZXu5e20103.jpg', NULL, NULL),
(409, 193, 'THUMBNAIL', 119, 150, 'images/media/2020/10/thumbnail15822115463icIy20103.jpg', NULL, NULL),
(410, 193, 'MEDIUM', 318, 400, 'images/media/2020/10/medium15822115463icIy20103.jpg', NULL, NULL),
(411, 195, 'ACTUAL', 211, 270, 'images/media/2020/10/SWjwB20103.jpg', NULL, NULL),
(412, 195, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1582211546SWjwB20103.jpg', NULL, NULL),
(413, 196, 'ACTUAL', 451, 271, 'images/media/2020/10/bHD1b20903.jpg', NULL, NULL),
(414, 196, 'THUMBNAIL', 150, 90, 'images/media/2020/10/thumbnail1582211547bHD1b20903.jpg', NULL, NULL),
(415, 196, 'MEDIUM', 400, 240, 'images/media/2020/10/medium1582211547bHD1b20903.jpg', NULL, NULL),
(416, 197, 'ACTUAL', 230, 370, 'images/media/2020/10/HUe4L20203.jpg', NULL, NULL),
(417, 197, 'THUMBNAIL', 93, 150, 'images/media/2020/10/thumbnail1582211723HUe4L20203.jpg', NULL, NULL),
(418, 198, 'ACTUAL', 230, 370, 'images/media/2020/10/mpcVY20203.jpg', NULL, NULL),
(419, 198, 'THUMBNAIL', 93, 150, 'images/media/2020/10/thumbnail1582211723mpcVY20203.jpg', NULL, NULL),
(420, 199, 'ACTUAL', 230, 370, 'images/media/2020/10/1OoHX20603.jpg', NULL, NULL),
(421, 199, 'THUMBNAIL', 93, 150, 'images/media/2020/10/thumbnail15822117241OoHX20603.jpg', NULL, NULL),
(422, 200, 'ACTUAL', 493, 370, 'images/media/2020/10/OBgRr20903.jpg', NULL, NULL),
(423, 200, 'THUMBNAIL', 150, 113, 'images/media/2020/10/thumbnail1582211724OBgRr20903.jpg', NULL, NULL),
(424, 200, 'MEDIUM', 400, 300, 'images/media/2020/10/medium1582211724OBgRr20903.jpg', NULL, NULL),
(425, 201, 'ACTUAL', 230, 370, 'images/media/2020/10/1ieed20303.jpg', NULL, NULL),
(426, 201, 'THUMBNAIL', 93, 150, 'images/media/2020/10/thumbnail15822117241ieed20303.jpg', NULL, NULL),
(427, 202, 'ACTUAL', 259, 770, 'images/media/2020/10/zSOCU20903.jpg', NULL, NULL),
(428, 202, 'THUMBNAIL', 50, 150, 'images/media/2020/10/thumbnail1582211800zSOCU20903.jpg', NULL, NULL),
(429, 202, 'MEDIUM', 135, 400, 'images/media/2020/10/medium1582211800zSOCU20903.jpg', NULL, NULL),
(430, 203, 'ACTUAL', 546, 372, 'images/media/2020/10/Wcjb820403.jpg', NULL, NULL),
(431, 203, 'THUMBNAIL', 150, 102, 'images/media/2020/10/thumbnail1582211801Wcjb820403.jpg', NULL, NULL),
(432, 203, 'MEDIUM', 400, 273, 'images/media/2020/10/medium1582211801Wcjb820403.jpg', NULL, NULL),
(433, 204, 'ACTUAL', 259, 770, 'images/media/2020/10/wYPz920203.jpg', NULL, NULL),
(434, 204, 'THUMBNAIL', 50, 150, 'images/media/2020/10/thumbnail1582211802wYPz920203.jpg', NULL, NULL),
(435, 204, 'MEDIUM', 135, 400, 'images/media/2020/10/medium1582211802wYPz920203.jpg', NULL, NULL),
(436, 205, 'ACTUAL', 64, 64, 'images/media/2020/10/g3qI328201.png', NULL, NULL),
(437, 206, 'ACTUAL', 500, 500, 'images/media/2020/10/kuGrP28801.jpg', NULL, NULL),
(438, 206, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1588079883kuGrP28801.jpg', NULL, NULL),
(439, 206, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1588079884kuGrP28801.jpg', NULL, NULL),
(440, 207, 'ACTUAL', 64, 64, 'images/media/2020/10/fUzBw28301.png', NULL, NULL),
(441, 208, 'ACTUAL', 500, 500, 'images/media/2020/10/2pdsO28701.jpg', NULL, NULL),
(442, 208, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail15880798902pdsO28701.jpg', NULL, NULL),
(443, 208, 'MEDIUM', 400, 400, 'images/media/2020/10/medium15880798912pdsO28701.jpg', NULL, NULL),
(444, 209, 'ACTUAL', 64, 64, 'images/media/2020/10/IHYuG28401.png', NULL, NULL),
(445, 210, 'ACTUAL', 500, 500, 'images/media/2020/10/LoMdU28301.jpg', NULL, NULL),
(446, 210, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1588079897LoMdU28301.jpg', NULL, NULL),
(447, 210, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1588079898LoMdU28301.jpg', NULL, NULL),
(448, 211, 'ACTUAL', 700, 900, 'images/media/2020/10/9agoz28603.jpg', NULL, NULL),
(449, 212, 'ACTUAL', 700, 900, 'images/media/2020/10/hBhCH28803.jpg', NULL, NULL),
(450, 211, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail15880871259agoz28603.jpg', NULL, NULL),
(451, 212, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588087125hBhCH28803.jpg', NULL, NULL),
(452, 211, 'MEDIUM', 311, 400, 'images/media/2020/10/medium15880871259agoz28603.jpg', NULL, NULL),
(453, 212, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588087125hBhCH28803.jpg', NULL, NULL),
(454, 211, 'LARGE', 700, 900, 'images/media/2020/10/large15880871259agoz28603.jpg', NULL, '2020-04-27 21:48:45'),
(455, 212, 'LARGE', 700, 900, 'images/media/2020/10/large1588087125hBhCH28803.jpg', NULL, '2020-04-27 21:48:45'),
(456, 213, 'ACTUAL', 700, 900, 'images/media/2020/10/LHcpH28203.png', NULL, NULL),
(457, 213, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588087126LHcpH28203.png', NULL, NULL),
(458, 213, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588087126LHcpH28203.png', NULL, NULL),
(459, 213, 'LARGE', 700, 900, 'images/media/2020/10/large1588087126LHcpH28203.png', NULL, '2020-04-27 21:48:46'),
(460, 214, 'ACTUAL', 700, 900, 'images/media/2020/10/VhOe928703.jpg', NULL, NULL),
(461, 215, 'ACTUAL', 700, 900, 'images/media/2020/10/s50fE28203.jpg', NULL, NULL),
(462, 214, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588087133VhOe928703.jpg', NULL, NULL),
(463, 215, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588087134s50fE28203.jpg', NULL, NULL),
(464, 214, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588087134VhOe928703.jpg', NULL, NULL),
(465, 215, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588087134s50fE28203.jpg', NULL, NULL),
(466, 214, 'LARGE', 700, 900, 'images/media/2020/10/large1588087134VhOe928703.jpg', NULL, '2020-04-27 21:48:54'),
(467, 215, 'LARGE', 700, 900, 'images/media/2020/10/large1588087134s50fE28203.jpg', NULL, '2020-04-27 21:48:54'),
(468, 216, 'ACTUAL', 700, 900, 'images/media/2020/10/u4KY528603.png', NULL, NULL),
(469, 216, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588087135u4KY528603.png', NULL, NULL),
(470, 216, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588087135u4KY528603.png', NULL, NULL),
(471, 216, 'LARGE', 700, 900, 'images/media/2020/10/large1588087135u4KY528603.png', NULL, '2020-04-27 21:48:55'),
(472, 217, 'ACTUAL', 700, 900, 'images/media/2020/10/8LCK828603.jpg', NULL, NULL),
(473, 217, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail15880871408LCK828603.jpg', NULL, NULL),
(474, 217, 'MEDIUM', 311, 400, 'images/media/2020/10/medium15880871408LCK828603.jpg', NULL, NULL),
(475, 217, 'LARGE', 700, 900, 'images/media/2020/10/large15880871408LCK828603.jpg', NULL, '2020-04-27 21:49:00'),
(476, 218, 'ACTUAL', 700, 900, 'images/media/2020/10/1m9NW28103.jpg', NULL, NULL),
(477, 218, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail15880871411m9NW28103.jpg', NULL, NULL),
(478, 218, 'MEDIUM', 311, 400, 'images/media/2020/10/medium15880871411m9NW28103.jpg', NULL, NULL),
(479, 218, 'LARGE', 700, 900, 'images/media/2020/10/large15880871411m9NW28103.jpg', NULL, '2020-04-27 21:49:01'),
(480, 219, 'ACTUAL', 700, 900, 'images/media/2020/10/40Iy228603.jpg', NULL, NULL),
(481, 219, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail158808714140Iy228603.jpg', NULL, NULL),
(482, 219, 'MEDIUM', 311, 400, 'images/media/2020/10/medium158808714140Iy228603.jpg', NULL, NULL),
(483, 219, 'LARGE', 700, 900, 'images/media/2020/10/large158808714140Iy228603.jpg', NULL, '2020-04-27 21:49:01'),
(484, 220, 'ACTUAL', 700, 900, 'images/media/2020/10/v10Ki28603.jpg', NULL, NULL),
(485, 220, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088182v10Ki28603.jpg', NULL, NULL),
(486, 221, 'ACTUAL', 700, 900, 'images/media/2020/10/iLWhl28903.jpg', NULL, NULL),
(487, 220, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088183v10Ki28603.jpg', NULL, NULL),
(488, 221, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088183iLWhl28903.jpg', NULL, NULL),
(489, 221, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088183iLWhl28903.jpg', NULL, NULL),
(490, 220, 'LARGE', 700, 900, 'images/media/2020/10/large1588088183v10Ki28603.jpg', NULL, '2020-04-27 22:06:23'),
(491, 221, 'LARGE', 700, 900, 'images/media/2020/10/large1588088183iLWhl28903.jpg', NULL, '2020-04-27 22:06:23'),
(492, 222, 'ACTUAL', 700, 900, 'images/media/2020/10/xlHTQ28803.jpg', NULL, NULL),
(493, 222, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088183xlHTQ28803.jpg', NULL, NULL),
(494, 222, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088183xlHTQ28803.jpg', NULL, NULL),
(495, 222, 'LARGE', 700, 900, 'images/media/2020/10/large1588088184xlHTQ28803.jpg', NULL, '2020-04-27 22:06:24'),
(496, 223, 'ACTUAL', 700, 900, 'images/media/2020/10/DF1kN28403.jpg', NULL, NULL),
(497, 223, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088365DF1kN28403.jpg', NULL, NULL),
(498, 223, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088365DF1kN28403.jpg', NULL, NULL),
(499, 223, 'LARGE', 700, 900, 'images/media/2020/10/large1588088365DF1kN28403.jpg', NULL, '2020-04-27 22:09:25'),
(500, 224, 'ACTUAL', 700, 900, 'images/media/2020/10/OPO0928503.png', NULL, NULL),
(501, 224, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088366OPO0928503.png', NULL, NULL),
(502, 224, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088366OPO0928503.png', NULL, NULL),
(503, 224, 'LARGE', 700, 900, 'images/media/2020/10/large1588088366OPO0928503.png', NULL, '2020-04-27 22:09:26'),
(504, 225, 'ACTUAL', 700, 900, 'images/media/2020/10/4lNmF28603.png', NULL, NULL),
(505, 225, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail15880883664lNmF28603.png', NULL, NULL),
(506, 225, 'MEDIUM', 311, 400, 'images/media/2020/10/medium15880883664lNmF28603.png', NULL, NULL),
(507, 225, 'LARGE', 700, 900, 'images/media/2020/10/large15880883664lNmF28603.png', NULL, '2020-04-27 22:09:26'),
(508, 226, 'ACTUAL', 700, 900, 'images/media/2020/10/IRJ6k28303.jpg', NULL, NULL),
(509, 227, 'ACTUAL', 700, 900, 'images/media/2020/10/SdYT528603.jpg', NULL, NULL),
(510, 226, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088370IRJ6k28303.jpg', NULL, NULL),
(511, 227, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088370SdYT528603.jpg', NULL, NULL),
(512, 227, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088370SdYT528603.jpg', NULL, NULL),
(513, 226, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088370IRJ6k28303.jpg', NULL, NULL),
(514, 227, 'LARGE', 700, 900, 'images/media/2020/10/large1588088370SdYT528603.jpg', NULL, '2020-04-27 22:09:30'),
(515, 226, 'LARGE', 700, 900, 'images/media/2020/10/large1588088370IRJ6k28303.jpg', NULL, '2020-04-27 22:09:30'),
(516, 228, 'ACTUAL', 700, 900, 'images/media/2020/10/L5nF128903.png', NULL, NULL),
(517, 228, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088371L5nF128903.png', NULL, NULL),
(518, 228, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088371L5nF128903.png', NULL, NULL),
(519, 228, 'LARGE', 700, 900, 'images/media/2020/10/large1588088371L5nF128903.png', NULL, '2020-04-27 22:09:31'),
(520, 229, 'ACTUAL', 700, 900, 'images/media/2020/10/aN64028103.jpg', NULL, NULL),
(521, 229, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088375aN64028103.jpg', NULL, NULL),
(522, 229, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088375aN64028103.jpg', NULL, NULL),
(523, 229, 'LARGE', 700, 900, 'images/media/2020/10/large1588088376aN64028103.jpg', NULL, '2020-04-27 22:09:36'),
(524, 230, 'ACTUAL', 700, 900, 'images/media/2020/10/Oy3e128803.png', NULL, NULL),
(525, 230, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088376Oy3e128803.png', NULL, NULL),
(526, 230, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088376Oy3e128803.png', NULL, NULL),
(527, 230, 'LARGE', 700, 900, 'images/media/2020/10/large1588088376Oy3e128803.png', NULL, '2020-04-27 22:09:36'),
(528, 231, 'ACTUAL', 700, 900, 'images/media/2020/10/PFRiP28503.jpg', NULL, NULL),
(529, 231, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088378PFRiP28503.jpg', NULL, NULL),
(530, 231, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088378PFRiP28503.jpg', NULL, NULL),
(531, 231, 'LARGE', 700, 900, 'images/media/2020/10/large1588088378PFRiP28503.jpg', NULL, '2020-04-27 22:09:38'),
(532, 232, 'ACTUAL', 700, 900, 'images/media/2020/10/xuYi328703.jpg', NULL, NULL),
(533, 232, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088381xuYi328703.jpg', NULL, NULL),
(534, 232, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088381xuYi328703.jpg', NULL, NULL),
(535, 232, 'LARGE', 700, 900, 'images/media/2020/10/large1588088381xuYi328703.jpg', NULL, '2020-04-27 22:09:41'),
(536, 233, 'ACTUAL', 700, 900, 'images/media/2020/10/siVQg28703.jpg', NULL, NULL),
(537, 233, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088382siVQg28703.jpg', NULL, NULL),
(538, 233, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088382siVQg28703.jpg', NULL, NULL),
(539, 233, 'LARGE', 700, 900, 'images/media/2020/10/large1588088382siVQg28703.jpg', NULL, '2020-04-27 22:09:42'),
(540, 234, 'ACTUAL', 700, 900, 'images/media/2020/10/FaX7C28403.jpg', NULL, NULL),
(541, 234, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088382FaX7C28403.jpg', NULL, NULL),
(542, 234, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088382FaX7C28403.jpg', NULL, NULL),
(543, 234, 'LARGE', 700, 900, 'images/media/2020/10/large1588088382FaX7C28403.jpg', NULL, '2020-04-27 22:09:42'),
(544, 235, 'ACTUAL', 700, 900, 'images/media/2020/10/WKgh928203.jpg', NULL, NULL),
(545, 236, 'ACTUAL', 700, 900, 'images/media/2020/10/kDmtc28803.jpg', NULL, NULL),
(546, 235, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088390WKgh928203.jpg', NULL, NULL),
(547, 236, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088390kDmtc28803.jpg', NULL, NULL),
(548, 235, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088391WKgh928203.jpg', NULL, NULL),
(549, 236, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088391kDmtc28803.jpg', NULL, NULL),
(550, 235, 'LARGE', 700, 900, 'images/media/2020/10/large1588088391WKgh928203.jpg', NULL, '2020-04-27 22:09:51'),
(551, 236, 'LARGE', 700, 900, 'images/media/2020/10/large1588088391kDmtc28803.jpg', NULL, '2020-04-27 22:09:51'),
(552, 237, 'ACTUAL', 700, 900, 'images/media/2020/10/UUcbX28203.jpg', NULL, NULL),
(553, 237, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588088391UUcbX28203.jpg', NULL, NULL),
(554, 237, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588088391UUcbX28203.jpg', NULL, NULL),
(555, 237, 'LARGE', 700, 900, 'images/media/2020/10/large1588088391UUcbX28203.jpg', NULL, '2020-04-27 22:09:51'),
(556, 238, 'ACTUAL', 700, 900, 'images/media/2020/10/wem9F28903.jpg', NULL, NULL),
(557, 238, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588089056wem9F28903.jpg', NULL, NULL),
(558, 239, 'ACTUAL', 700, 900, 'images/media/2020/10/b70sr28103.jpg', NULL, NULL),
(559, 238, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588089057wem9F28903.jpg', NULL, NULL),
(560, 239, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588089057b70sr28103.jpg', NULL, NULL),
(561, 239, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588089057b70sr28103.jpg', NULL, NULL),
(562, 238, 'LARGE', 700, 900, 'images/media/2020/10/large1588089057wem9F28903.jpg', NULL, '2020-04-27 22:20:57'),
(563, 239, 'LARGE', 700, 900, 'images/media/2020/10/large1588089057b70sr28103.jpg', NULL, '2020-04-27 22:20:57'),
(564, 240, 'ACTUAL', 700, 900, 'images/media/2020/10/OfRqK28603.jpg', NULL, NULL),
(565, 240, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588089057OfRqK28603.jpg', NULL, NULL),
(566, 240, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588089057OfRqK28603.jpg', NULL, NULL),
(567, 240, 'LARGE', 700, 900, 'images/media/2020/10/large1588089058OfRqK28603.jpg', NULL, '2020-04-27 22:20:58'),
(568, 241, 'ACTUAL', 700, 900, 'images/media/2020/10/0yv7228403.jpg', NULL, NULL),
(569, 241, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail15880890610yv7228403.jpg', NULL, NULL),
(570, 242, 'ACTUAL', 700, 900, 'images/media/2020/10/wYfXA28903.jpg', NULL, NULL),
(571, 241, 'MEDIUM', 311, 400, 'images/media/2020/10/medium15880890610yv7228403.jpg', NULL, NULL),
(572, 242, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588089061wYfXA28903.jpg', NULL, NULL),
(573, 242, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588089061wYfXA28903.jpg', NULL, NULL),
(574, 241, 'LARGE', 700, 900, 'images/media/2020/10/large15880890610yv7228403.jpg', NULL, '2020-04-27 22:21:01'),
(575, 242, 'LARGE', 700, 900, 'images/media/2020/10/large1588089061wYfXA28903.jpg', NULL, '2020-04-27 22:21:01'),
(576, 243, 'ACTUAL', 700, 900, 'images/media/2020/10/n8CDg28703.jpg', NULL, NULL),
(577, 243, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588089062n8CDg28703.jpg', NULL, NULL),
(578, 243, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588089062n8CDg28703.jpg', NULL, NULL),
(579, 243, 'LARGE', 700, 900, 'images/media/2020/10/large1588089062n8CDg28703.jpg', NULL, '2020-04-27 22:21:02'),
(580, 244, 'ACTUAL', 700, 900, 'images/media/2020/10/F2mi628403.jpg', NULL, NULL),
(581, 245, 'ACTUAL', 700, 900, 'images/media/2020/10/7ZTo628103.jpg', NULL, NULL),
(582, 244, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588089066F2mi628403.jpg', NULL, NULL),
(583, 245, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail15880890667ZTo628103.jpg', NULL, NULL),
(584, 244, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588089066F2mi628403.jpg', NULL, NULL),
(585, 245, 'MEDIUM', 311, 400, 'images/media/2020/10/medium15880890667ZTo628103.jpg', NULL, NULL),
(586, 244, 'LARGE', 700, 900, 'images/media/2020/10/large1588089066F2mi628403.jpg', NULL, '2020-04-27 22:21:06'),
(587, 245, 'LARGE', 700, 900, 'images/media/2020/10/large15880890667ZTo628103.jpg', NULL, '2020-04-27 22:21:06'),
(588, 246, 'ACTUAL', 700, 900, 'images/media/2020/10/2HodE28903.jpg', NULL, NULL),
(589, 246, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail15880890672HodE28903.jpg', NULL, NULL),
(590, 246, 'MEDIUM', 311, 400, 'images/media/2020/10/medium15880890672HodE28903.jpg', NULL, NULL),
(591, 246, 'LARGE', 700, 900, 'images/media/2020/10/large15880890672HodE28903.jpg', NULL, '2020-04-27 22:21:07'),
(592, 247, 'ACTUAL', 700, 900, 'images/media/2020/10/EX3gr28703.jpg', NULL, NULL),
(593, 248, 'ACTUAL', 700, 900, 'images/media/2020/10/4TvfR28803.jpg', NULL, NULL),
(594, 248, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail15880890724TvfR28803.jpg', NULL, NULL),
(595, 247, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588089072EX3gr28703.jpg', NULL, NULL),
(596, 248, 'MEDIUM', 311, 400, 'images/media/2020/10/medium15880890724TvfR28803.jpg', NULL, NULL),
(597, 247, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588089072EX3gr28703.jpg', NULL, NULL),
(598, 248, 'LARGE', 700, 900, 'images/media/2020/10/large15880890724TvfR28803.jpg', NULL, '2020-04-27 22:21:12'),
(599, 247, 'LARGE', 700, 900, 'images/media/2020/10/large1588089072EX3gr28703.jpg', NULL, '2020-04-27 22:21:12'),
(600, 249, 'ACTUAL', 700, 900, 'images/media/2020/10/fFrf328403.jpg', NULL, NULL),
(601, 249, 'THUMBNAIL', 117, 150, 'images/media/2020/10/thumbnail1588089072fFrf328403.jpg', NULL, NULL),
(602, 249, 'MEDIUM', 311, 400, 'images/media/2020/10/medium1588089072fFrf328403.jpg', NULL, NULL),
(603, 249, 'LARGE', 700, 900, 'images/media/2020/10/large1588089072fFrf328403.jpg', NULL, '2020-04-27 22:21:12'),
(604, 250, 'ACTUAL', 43, 172, 'images/media/2020/10/SnFnt28605.png', NULL, NULL),
(605, 250, 'THUMBNAIL', 38, 150, 'images/media/2020/10/thumbnail1588094784SnFnt28605.png', NULL, NULL),
(606, 251, 'ACTUAL', 16, 16, 'images/media/2020/10/qCnV228805.png', NULL, NULL),
(607, 252, 'ACTUAL', 885, 1673, 'images/media/2020/10/2KQkF28705.jpg', NULL, NULL),
(608, 252, 'THUMBNAIL', 79, 150, 'images/media/2020/10/thumbnail15880963762KQkF28705.jpg', NULL, NULL),
(609, 252, 'MEDIUM', 212, 400, 'images/media/2020/10/medium15880963762KQkF28705.jpg', NULL, NULL),
(610, 252, 'LARGE', 476, 900, 'images/media/2020/10/large15880963762KQkF28705.jpg', NULL, '2020-04-28 00:22:56'),
(611, 253, 'ACTUAL', 1133, 1700, 'images/media/2020/10/OX8Tg28306.jpg', NULL, NULL),
(612, 253, 'THUMBNAIL', 100, 150, 'images/media/2020/10/thumbnail1588098537OX8Tg28306.jpg', NULL, NULL),
(613, 253, 'MEDIUM', 267, 400, 'images/media/2020/10/medium1588098537OX8Tg28306.jpg', NULL, NULL),
(614, 253, 'LARGE', 600, 900, 'images/media/2020/10/large1588098538OX8Tg28306.jpg', NULL, '2020-04-28 00:58:58'),
(615, 254, 'ACTUAL', 1133, 1700, 'images/media/2020/10/VY0Sn28106.jpg', NULL, NULL),
(616, 254, 'THUMBNAIL', 100, 150, 'images/media/2020/10/thumbnail1588099412VY0Sn28106.jpg', NULL, NULL),
(617, 254, 'MEDIUM', 267, 400, 'images/media/2020/10/medium1588099413VY0Sn28106.jpg', NULL, NULL),
(618, 254, 'LARGE', 600, 900, 'images/media/2020/10/large1588099413VY0Sn28106.jpg', NULL, '2020-04-28 01:13:33');
INSERT INTO `image_categories` (`id`, `image_id`, `image_type`, `height`, `width`, `path`, `created_at`, `updated_at`) VALUES
(619, 255, 'ACTUAL', 1135, 1700, 'images/media/2020/10/WynNy28706.jpg', NULL, NULL),
(620, 255, 'THUMBNAIL', 100, 150, 'images/media/2020/10/thumbnail1588099726WynNy28706.jpg', NULL, NULL),
(621, 255, 'MEDIUM', 267, 400, 'images/media/2020/10/medium1588099726WynNy28706.jpg', NULL, NULL),
(622, 255, 'LARGE', 601, 900, 'images/media/2020/10/large1588099726WynNy28706.jpg', NULL, '2020-04-28 01:18:46'),
(623, 256, 'ACTUAL', 500, 500, 'images/media/2020/10/7jVir28207.jpg', NULL, NULL),
(624, 257, 'ACTUAL', 500, 500, 'images/media/2020/10/SnDZ428207.jpg', NULL, NULL),
(625, 257, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1588101307SnDZ428207.jpg', NULL, NULL),
(626, 256, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail15881013077jVir28207.jpg', NULL, NULL),
(627, 257, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1588101307SnDZ428207.jpg', NULL, NULL),
(628, 256, 'MEDIUM', 400, 400, 'images/media/2020/10/medium15881013077jVir28207.jpg', NULL, NULL),
(629, 258, 'ACTUAL', 500, 500, 'images/media/2020/10/ht6BX28807.jpg', NULL, NULL),
(630, 258, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1588101307ht6BX28807.jpg', NULL, NULL),
(631, 258, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1588101307ht6BX28807.jpg', NULL, NULL),
(632, 259, 'ACTUAL', 500, 500, 'images/media/2020/10/kKKog28707.jpg', NULL, NULL),
(633, 259, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1588101308kKKog28707.jpg', NULL, NULL),
(634, 259, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1588101308kKKog28707.jpg', NULL, NULL),
(635, 260, 'ACTUAL', 500, 500, 'images/media/2020/10/nYQ9j28107.jpg', NULL, NULL),
(636, 260, 'THUMBNAIL', 150, 150, 'images/media/2020/10/thumbnail1588101308nYQ9j28107.jpg', NULL, NULL),
(637, 260, 'MEDIUM', 400, 400, 'images/media/2020/10/medium1588101308nYQ9j28107.jpg', NULL, NULL),
(638, 261, 'ACTUAL', 420, 1170, 'images/media/2020/10/g3id106304.jpg', NULL, NULL),
(639, 261, 'THUMBNAIL', 54, 150, 'images/media/2020/10/thumbnail1588784275g3id106304.jpg', NULL, NULL),
(640, 261, 'MEDIUM', 144, 400, 'images/media/2020/10/medium1588784275g3id106304.jpg', NULL, NULL),
(641, 261, 'LARGE', 323, 900, 'images/media/2020/10/large1588784275g3id106304.jpg', NULL, '2020-05-05 23:27:55'),
(642, 262, 'ACTUAL', 420, 1170, 'images/media/2020/10/Lu47506804.jpg', NULL, NULL),
(643, 262, 'THUMBNAIL', 54, 150, 'images/media/2020/10/thumbnail1588784275Lu47506804.jpg', NULL, NULL),
(644, 262, 'MEDIUM', 144, 400, 'images/media/2020/10/medium1588784275Lu47506804.jpg', NULL, NULL),
(645, 262, 'LARGE', 323, 900, 'images/media/2020/10/large1588784276Lu47506804.jpg', NULL, '2020-05-05 23:27:56'),
(646, 263, 'ACTUAL', 420, 1170, 'images/media/2020/10/7P9mT06804.jpg', NULL, NULL),
(647, 263, 'THUMBNAIL', 54, 150, 'images/media/2020/10/thumbnail15887842767P9mT06804.jpg', NULL, NULL),
(648, 263, 'MEDIUM', 144, 400, 'images/media/2020/10/medium15887842767P9mT06804.jpg', NULL, NULL),
(649, 263, 'LARGE', 323, 900, 'images/media/2020/10/large15887842767P9mT06804.jpg', NULL, '2020-05-05 23:27:56'),
(650, 264, 'ACTUAL', 400, 770, 'images/media/2020/10/zAbaX06105.jpg', NULL, NULL),
(651, 265, 'ACTUAL', 400, 770, 'images/media/2020/10/SKHCw06305.jpg', NULL, NULL),
(652, 265, 'THUMBNAIL', 78, 150, 'images/media/2020/10/thumbnail1588784642SKHCw06305.jpg', NULL, NULL),
(653, 264, 'THUMBNAIL', 78, 150, 'images/media/2020/10/thumbnail1588784642zAbaX06105.jpg', NULL, NULL),
(654, 265, 'MEDIUM', 208, 400, 'images/media/2020/10/medium1588784642SKHCw06305.jpg', NULL, NULL),
(655, 264, 'MEDIUM', 208, 400, 'images/media/2020/10/medium1588784642zAbaX06105.jpg', NULL, NULL),
(656, 266, 'ACTUAL', 400, 770, 'images/media/2020/10/grGTB06505.jpg', NULL, NULL),
(657, 266, 'THUMBNAIL', 78, 150, 'images/media/2020/10/thumbnail1588784643grGTB06505.jpg', NULL, NULL),
(658, 266, 'MEDIUM', 208, 400, 'images/media/2020/10/medium1588784643grGTB06505.jpg', NULL, NULL),
(659, 267, 'ACTUAL', 400, 770, 'images/media/2020/10/YsHhX06105.jpg', NULL, NULL),
(660, 268, 'ACTUAL', 420, 1170, 'images/media/2020/10/L2nsY06805.jpg', NULL, NULL),
(661, 267, 'THUMBNAIL', 78, 150, 'images/media/2020/10/thumbnail1588787234YsHhX06105.jpg', NULL, NULL),
(662, 267, 'MEDIUM', 208, 400, 'images/media/2020/10/medium1588787234YsHhX06105.jpg', NULL, NULL),
(663, 268, 'THUMBNAIL', 54, 150, 'images/media/2020/10/thumbnail1588787234L2nsY06805.jpg', NULL, NULL),
(664, 268, 'MEDIUM', 144, 400, 'images/media/2020/10/medium1588787234L2nsY06805.jpg', NULL, NULL),
(665, 268, 'LARGE', 323, 900, 'images/media/2020/10/large1588787234L2nsY06805.jpg', NULL, '2020-05-06 00:17:14'),
(666, 269, 'ACTUAL', 421, 1600, 'images/media/2020/10/AwVrx06505.jpg', NULL, NULL),
(667, 269, 'THUMBNAIL', 39, 150, 'images/media/2020/10/thumbnail1588787235AwVrx06505.jpg', NULL, NULL),
(668, 269, 'MEDIUM', 105, 400, 'images/media/2020/10/medium1588787235AwVrx06505.jpg', NULL, NULL),
(669, 269, 'LARGE', 237, 900, 'images/media/2020/10/large1588787235AwVrx06505.jpg', NULL, '2020-05-06 00:17:15'),
(670, 270, 'ACTUAL', 421, 1600, 'images/media/2020/10/1a8WE07212.jpg', NULL, NULL),
(671, 271, 'ACTUAL', 421, 1600, 'images/media/2020/10/uKdS007412.jpg', NULL, NULL),
(672, 270, 'THUMBNAIL', 39, 150, 'images/media/2020/10/thumbnail15888117591a8WE07212.jpg', NULL, NULL),
(673, 271, 'THUMBNAIL', 39, 150, 'images/media/2020/10/thumbnail1588811759uKdS007412.jpg', NULL, NULL),
(674, 270, 'MEDIUM', 105, 400, 'images/media/2020/10/medium15888117591a8WE07212.jpg', NULL, NULL),
(675, 271, 'MEDIUM', 105, 400, 'images/media/2020/10/medium1588811759uKdS007412.jpg', NULL, NULL),
(676, 270, 'LARGE', 237, 900, 'images/media/2020/10/large15888117591a8WE07212.jpg', NULL, '2020-05-07 07:05:59'),
(677, 271, 'LARGE', 237, 900, 'images/media/2020/10/large1588811760uKdS007412.jpg', NULL, '2020-05-07 07:06:00'),
(678, 272, 'ACTUAL', 421, 1600, 'images/media/2020/10/lzTes07612.jpg', NULL, NULL),
(679, 272, 'THUMBNAIL', 39, 150, 'images/media/2020/10/thumbnail1588811760lzTes07612.jpg', NULL, NULL),
(680, 272, 'MEDIUM', 105, 400, 'images/media/2020/10/medium1588811760lzTes07612.jpg', NULL, NULL),
(681, 272, 'LARGE', 237, 900, 'images/media/2020/10/large1588811760lzTes07612.jpg', NULL, '2020-05-07 07:06:00'),
(682, 273, 'ACTUAL', 420, 1170, 'images/media/2020/10/w3t5107412.jpg', NULL, NULL),
(683, 274, 'ACTUAL', 420, 1170, 'images/media/2020/10/pkj4707312.jpg', NULL, NULL),
(684, 273, 'THUMBNAIL', 54, 150, 'images/media/2020/10/thumbnail1588811776w3t5107412.jpg', NULL, NULL),
(685, 274, 'THUMBNAIL', 54, 150, 'images/media/2020/10/thumbnail1588811776pkj4707312.jpg', NULL, NULL),
(686, 273, 'MEDIUM', 144, 400, 'images/media/2020/10/medium1588811776w3t5107412.jpg', NULL, NULL),
(687, 274, 'MEDIUM', 144, 400, 'images/media/2020/10/medium1588811776pkj4707312.jpg', NULL, NULL),
(688, 273, 'LARGE', 323, 900, 'images/media/2020/10/large1588811776w3t5107412.jpg', NULL, '2020-05-07 07:06:16'),
(689, 274, 'LARGE', 323, 900, 'images/media/2020/10/large1588811776pkj4707312.jpg', NULL, '2020-05-07 07:06:16'),
(690, 275, 'ACTUAL', 420, 1170, 'images/media/2020/10/PbN9U07712.jpg', NULL, NULL),
(691, 275, 'THUMBNAIL', 54, 150, 'images/media/2020/10/thumbnail1588811777PbN9U07712.jpg', NULL, NULL),
(692, 275, 'MEDIUM', 144, 400, 'images/media/2020/10/medium1588811777PbN9U07712.jpg', NULL, NULL),
(693, 275, 'LARGE', 323, 900, 'images/media/2020/10/large1588811777PbN9U07712.jpg', NULL, '2020-05-07 07:06:17'),
(694, 276, 'ACTUAL', 400, 770, 'images/media/2020/10/0vOd307412.jpg', NULL, NULL),
(695, 277, 'ACTUAL', 400, 770, 'images/media/2020/10/GfS7B07312.jpg', NULL, NULL),
(696, 276, 'THUMBNAIL', 78, 150, 'images/media/2020/10/thumbnail15888117900vOd307412.jpg', NULL, NULL),
(697, 277, 'THUMBNAIL', 78, 150, 'images/media/2020/10/thumbnail1588811790GfS7B07312.jpg', NULL, NULL),
(698, 276, 'MEDIUM', 208, 400, 'images/media/2020/10/medium15888117900vOd307412.jpg', NULL, NULL),
(699, 277, 'MEDIUM', 208, 400, 'images/media/2020/10/medium1588811791GfS7B07312.jpg', NULL, NULL),
(700, 278, 'ACTUAL', 400, 770, 'images/media/2020/10/4Cpiv07912.jpg', NULL, NULL),
(701, 278, 'THUMBNAIL', 78, 150, 'images/media/2020/10/thumbnail15888117914Cpiv07912.jpg', NULL, NULL),
(702, 278, 'MEDIUM', 208, 400, 'images/media/2020/10/medium15888117914Cpiv07912.jpg', NULL, NULL),
(703, 279, 'ACTUAL', 179, 370, 'images/media/2020/10/2qHmA07609.jpg', NULL, NULL),
(704, 280, 'ACTUAL', 179, 370, 'images/media/2020/10/PutZo07409.jpg', NULL, NULL),
(705, 279, 'THUMBNAIL', 73, 150, 'images/media/2020/10/thumbnail15888876902qHmA07609.jpg', NULL, NULL),
(706, 280, 'THUMBNAIL', 73, 150, 'images/media/2020/10/thumbnail1588887690PutZo07409.jpg', NULL, NULL),
(707, 281, 'ACTUAL', 259, 770, 'images/media/2020/10/CRnJ307612.jpg', NULL, NULL),
(708, 281, 'THUMBNAIL', 50, 150, 'images/media/2020/10/thumbnail1594124853CRnJ307612.jpg', NULL, NULL),
(709, 281, 'MEDIUM', 135, 400, 'images/media/2020/10/medium1594124853CRnJ307612.jpg', NULL, NULL),
(710, 282, 'ACTUAL', 259, 770, 'images/media/2020/10/gglbs07912.jpg', NULL, NULL),
(711, 282, 'THUMBNAIL', 50, 150, 'images/media/2020/10/thumbnail1594124853gglbs07912.jpg', NULL, NULL),
(712, 282, 'MEDIUM', 135, 400, 'images/media/2020/10/medium1594124853gglbs07912.jpg', NULL, NULL),
(713, 283, 'ACTUAL', 452, 569, 'images/media/2020/10/DoJMv07912.jpg', NULL, NULL),
(714, 283, 'THUMBNAIL', 119, 150, 'images/media/2020/10/thumbnail1594124858DoJMv07912.jpg', NULL, NULL),
(715, 283, 'MEDIUM', 318, 400, 'images/media/2020/10/medium1594124859DoJMv07912.jpg', NULL, NULL),
(716, 284, 'ACTUAL', 301, 770, 'images/media/2020/10/kr9Tr07412.jpg', NULL, NULL),
(717, 284, 'THUMBNAIL', 59, 150, 'images/media/2020/10/thumbnail1594124881kr9Tr07412.jpg', NULL, NULL),
(718, 284, 'MEDIUM', 156, 400, 'images/media/2020/10/medium1594124881kr9Tr07412.jpg', NULL, NULL),
(719, 285, 'ACTUAL', 277, 370, 'images/media/2020/10/sWHyU07212.jpg', NULL, NULL),
(720, 285, 'THUMBNAIL', 112, 150, 'images/media/2020/10/thumbnail1594124994sWHyU07212.jpg', NULL, NULL),
(721, 286, 'ACTUAL', 277, 370, 'images/media/2020/10/3QnFU07512.jpg', NULL, NULL),
(722, 286, 'THUMBNAIL', 112, 150, 'images/media/2020/10/thumbnail15941258923QnFU07512.jpg', NULL, NULL),
(723, 287, 'ACTUAL', 277, 370, 'images/media/2020/10/IJaMH07612.jpg', NULL, NULL),
(724, 287, 'THUMBNAIL', 112, 150, 'images/media/2020/10/thumbnail1594125980IJaMH07612.jpg', NULL, NULL),
(725, 288, 'ACTUAL', 493, 370, 'images/media/2020/10/eHLr807812.jpg', NULL, NULL),
(726, 288, 'THUMBNAIL', 150, 113, 'images/media/2020/10/thumbnail1594126700eHLr807812.jpg', NULL, NULL),
(727, 288, 'MEDIUM', 400, 300, 'images/media/2020/10/medium1594126700eHLr807812.jpg', NULL, NULL),
(728, 289, 'ACTUAL', 229, 270, 'images/media/2020/10/E4wSw07201.jpg', NULL, NULL),
(729, 289, 'THUMBNAIL', 127, 150, 'images/media/2020/10/thumbnail1594127315E4wSw07201.jpg', NULL, NULL),
(730, 290, 'ACTUAL', 490, 570, 'images/media/2020/10/HxIeG07501.jpg', NULL, NULL),
(731, 290, 'THUMBNAIL', 129, 150, 'images/media/2020/10/thumbnail1594127458HxIeG07501.jpg', NULL, NULL),
(732, 290, 'MEDIUM', 344, 400, 'images/media/2020/10/medium1594127458HxIeG07501.jpg', NULL, NULL),
(733, 291, 'ACTUAL', 211, 570, 'images/media/2020/10/hvRxD07301.jpg', NULL, NULL),
(734, 291, 'THUMBNAIL', 56, 150, 'images/media/2020/10/thumbnail1594128622hvRxD07301.jpg', NULL, NULL),
(735, 291, 'MEDIUM', 148, 400, 'images/media/2020/10/medium1594128622hvRxD07301.jpg', NULL, NULL),
(736, 292, 'ACTUAL', 298, 569, 'images/media/2020/10/23fbn07301.jpg', NULL, NULL),
(737, 292, 'THUMBNAIL', 79, 150, 'images/media/2020/10/thumbnail159412876823fbn07301.jpg', NULL, NULL),
(738, 292, 'MEDIUM', 209, 400, 'images/media/2020/10/medium159412876823fbn07301.jpg', NULL, NULL),
(739, 293, 'ACTUAL', 298, 568, 'images/media/2020/10/u93Kq07201.jpg', NULL, NULL),
(740, 293, 'THUMBNAIL', 79, 150, 'images/media/2020/10/thumbnail1594129116u93Kq07201.jpg', NULL, NULL),
(741, 293, 'MEDIUM', 210, 400, 'images/media/2020/10/medium1594129116u93Kq07201.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_ref_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `added_date` int(11) NOT NULL,
  `reference_code` varchar(191) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `stock_type` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_ref_id`, `admin_id`, `added_date`, `reference_code`, `stock`, `products_id`, `purchase_price`, `stock_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '123', 10000, 40, NULL, 'in', '2026-07-10 23:38:22', NULL),
(2, 0, 1783747007, '', 2, 40, '0.00', 'out', NULL, NULL),
(3, 0, 1783747206, '', 1, 40, '0.00', 'out', NULL, NULL),
(4, 0, 1783747309, '', 1, 40, '0.00', 'out', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_ref_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(1, 'I\'ve forgotten my password?'),
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(872, 'Login with'),
(873, 'or'),
(874, 'Email'),
(875, 'Password'),
(876, 'Register'),
(877, 'Forgot Password'),
(878, 'Send'),
(879, 'About Us'),
(880, 'Categories'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(884, 'Please connect to the internet'),
(885, 'Recently Viewed'),
(886, 'Products are available.'),
(887, 'Top Seller'),
(888, 'Special Deals'),
(889, 'Most Liked'),
(890, 'All Categories'),
(891, 'Deals'),
(892, 'REMOVE'),
(893, 'Intro'),
(894, 'Skip Intro'),
(895, 'Got It!'),
(896, 'Order Detail'),
(897, 'Price Detail'),
(898, 'Total'),
(899, 'Sub Total'),
(900, 'Shipping'),
(901, 'Product Details'),
(902, 'New'),
(903, 'Out of Stock'),
(904, 'In Stock'),
(905, 'Add to Cart'),
(906, 'ADD TO CART'),
(907, 'Product Description'),
(908, 'Techincal details'),
(909, 'OFF'),
(910, 'No Products Found'),
(911, 'Reset Filters'),
(912, 'Search'),
(913, 'Main Categories'),
(914, 'Sub Categories'),
(915, 'Shipping method'),
(916, 'Thank You'),
(917, 'Thank you for shopping with us.'),
(918, 'My Orders'),
(919, 'Continue Shopping'),
(920, 'Favourite'),
(921, 'Your wish List is empty'),
(922, 'Continue Adding'),
(923, 'Explore'),
(924, 'Word Press Post Detail'),
(925, 'Go Back'),
(926, 'Top Sellers'),
(927, 'News'),
(928, 'Enter keyword'),
(929, 'Settings'),
(930, 'Shop'),
(931, 'Reset'),
(932, 'Select Language'),
(933, 'OUT OF STOCK'),
(934, 'Newest'),
(935, 'Refund Policy'),
(936, 'Privacy Policy'),
(937, 'Term and Services'),
(938, 'Skip'),
(939, 'Top Dishes'),
(940, 'Recipe of Day'),
(941, 'Food Categories'),
(942, 'Coupon Code'),
(943, 'Coupon Amount'),
(944, 'coupon code'),
(945, 'Coupon'),
(946, 'Note to the buyer'),
(947, 'Explore More'),
(948, 'All'),
(949, 'A - Z'),
(950, 'Z - A'),
(951, 'Price : high - low'),
(952, 'Price : low - high'),
(953, 'Special Products'),
(954, 'Sort Products'),
(955, 'Cancel'),
(956, 'most liked'),
(957, 'special'),
(958, 'top seller'),
(959, 'newest'),
(960, 'Likes'),
(961, 'My Account'),
(962, 'Mobile'),
(963, 'Date of Birth'),
(964, 'Update'),
(965, 'Current Password'),
(966, 'New Password'),
(967, 'Change Password'),
(968, 'Customer Orders'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(976, 'Add new Address'),
(977, 'Create an Account'),
(978, 'First Name'),
(979, 'Last Name'),
(980, 'Already Memeber?'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(984, 'Same as Shipping Address'),
(985, 'Next'),
(986, 'Order'),
(987, 'Billing Address'),
(988, 'Shipping Method'),
(989, 'Products'),
(990, 'SubTotal'),
(991, 'Products Price'),
(992, 'Tax'),
(993, 'Shipping Cost'),
(994, 'Order Notes'),
(995, 'Payment'),
(996, 'Card Number'),
(997, 'Expiration Date'),
(998, 'Expiration'),
(999, 'Error: invalid card number!'),
(1000, 'Error: invalid expiry date!'),
(1001, 'Error: invalid cvc number!'),
(1002, 'Continue'),
(1003, 'My Cart'),
(1004, 'Your cart is empty'),
(1005, 'continue shopping'),
(1006, 'Price'),
(1007, 'Quantity'),
(1008, 'by'),
(1009, 'View'),
(1010, 'Remove'),
(1011, 'Proceed'),
(1012, 'Shipping Address'),
(1013, 'Country'),
(1014, 'other'),
(1015, 'Zone'),
(1016, 'City'),
(1017, 'Post code'),
(1018, 'State'),
(1019, 'Update Address'),
(1020, 'Save Address'),
(1021, 'Login & Register'),
(1022, 'Please login or create an account for free'),
(1023, 'Log Out'),
(1024, 'My Wish List'),
(1025, 'Filters'),
(1026, 'Price Range'),
(1027, 'Close'),
(1028, 'Apply'),
(1029, 'Clear'),
(1030, 'Menu'),
(1031, 'Home'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login'),
(1035, 'Turn on/off Local Notifications'),
(1036, 'Turn on/off Notifications'),
(1037, 'Change Language'),
(1038, 'Official Website'),
(1039, 'Rate Us'),
(1040, 'Share'),
(1041, 'Edit Profile'),
(1042, 'A percentage discount for the entire cart'),
(1043, 'A fixed total discount for the entire cart'),
(1044, 'A fixed total discount for selected products only'),
(1045, 'A percentage discount for selected products only'),
(1047, 'Network Connected Reloading Data'),
(1048, 'Sort by'),
(1049, 'Flash Sale'),
(1050, 'ok'),
(1051, 'Number'),
(1052, 'Expire Month'),
(1053, 'Expire Year'),
(1054, 'Payment Method'),
(1055, 'Status'),
(1056, 'And'),
(1057, 'cccc'),
(1058, 'Shop More'),
(1059, 'Me'),
(1060, 'View All'),
(1061, 'Featured'),
(1062, 'Shop Now'),
(1063, 'New Arrivals'),
(1064, 'Sort'),
(1065, 'Help & Support'),
(1066, 'Select Currency'),
(1067, 'Your Price'),
(1068, 'Billing'),
(1069, 'Ship to a different address?'),
(1070, 'Method'),
(1071, 'Summary'),
(1072, 'Discount'),
(1073, 'Error in initialization, maybe PayPal isnt supported or something else'),
(1074, 'Alert'),
(1075, 'Your Wishlist is Empty'),
(1076, 'Press heart icon on products to add them in wishlist'),
(1077, 'Wishlist'),
(1078, 'All Items'),
(1079, 'Account Info'),
(1080, 'You Must Be Logged in to use this Feature!'),
(1081, 'Remove from Wishlist'),
(1082, 'Sign Up'),
(1083, 'Reset Password'),
(1084, 'Invalid email or password'),
(1085, 'Recent Searches'),
(1086, 'Add to Wishlist'),
(1087, 'Discover Latest Trends'),
(1088, 'Add To My Wishlist'),
(1089, 'Start Shoping'),
(1090, 'A Smart Shopping Experience'),
(1091, 'Addresses'),
(1092, 'Account'),
(1093, 'DETAILS'),
(1094, 'Dark Mode'),
(1095, 'Enter a description'),
(1096, 'Grocery Store'),
(1097, 'Post Comment'),
(1098, 'Rate and write a review'),
(1099, 'Ratings & Reviews'),
(1100, 'Write a review'),
(1101, 'Your Rating'),
(1102, 'rating'),
(1103, 'rating and review'),
(1104, 'Coupon Codes List'),
(1105, 'Custom Orders'),
(1106, 'Ecommerce'),
(1107, 'Featured Products'),
(1108, 'House Hold 1'),
(1109, 'Newest Products'),
(1110, 'On Sale Products'),
(1111, 'Braintree'),
(1112, 'Hyperpay'),
(1113, 'Instamojo'),
(1114, 'PayTm'),
(1115, 'Paypal'),
(1116, 'Razor Pay'),
(1117, 'Stripe');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

CREATE TABLE `label_value` (
  `label_value_id` int(11) NOT NULL,
  `label_value` varchar(191) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `label_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1297, 'Home', 1, 1031),
(1298, 'Menu', 1, 1030),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1301, 'Close', 1, 1027),
(1302, 'Price Range', 1, 1026),
(1303, 'Filters', 1, 1025),
(1304, 'My Wish List', 1, 1024),
(1305, 'Log Out', 1, 1023),
(1306, 'Please login or create an account for free', 1, 1022),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1317, 'Proceed', 1, 1011),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1322, 'Price', 1, 1006),
(1323, 'continue shopping', 1, 1005),
(1324, 'Your cart is empty', 1, 1004),
(1325, 'My Cart', 1, 1003),
(1326, 'Continue', 1, 1002),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1329, 'Error: invalid card number!', 1, 999),
(1330, 'Expiration', 1, 998),
(1331, 'Expiration Date', 1, 997),
(1332, 'Card Number', 1, 996),
(1333, 'Payment', 1, 995),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1348, 'Already Memeber?', 1, 980),
(1349, 'Last Name', 1, 979),
(1350, 'First Name', 1, 978),
(1351, 'Create an Account', 1, 977),
(1352, 'Add new Address', 1, 976),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1354, 'Order Status', 1, 969),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1364, 'Update', 1, 964),
(1365, 'Date of Birth', 1, 963),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1368, 'Likes', 1, 960),
(1369, 'Newest', 1, 959),
(1370, 'Top Seller', 1, 958),
(1371, 'Special', 1, 957),
(1372, 'Most Liked', 1, 956),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Continue Shopping', 1, 919),
(1410, 'My Orders', 1, 918),
(1411, 'Thank you for shopping with us.', 1, 917),
(1412, 'Thank You', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Search', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Product Description', 1, 907),
(1422, 'ADD TO CART', 1, 906),
(1423, 'Add to Cart', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'Out of Stock', 1, 903),
(1426, 'New', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Shipping', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Price Detail', 1, 897),
(1432, 'Order Detail', 1, 896),
(1433, 'Got It!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'REMOVE', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'All Categories', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Products are available.', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Please connect to the internet', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Name', 1, 882),
(1447, 'Your Message', 1, 883),
(1448, 'Categories', 1, 880),
(1449, 'About Us', 1, 879),
(1450, 'Send', 1, 878),
(1451, 'Forgot Password', 1, 877),
(1452, 'Register', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'or', 1, 873),
(1456, 'Login with', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'I\'ve forgotten my password?', 1, 1),
(1462, 'Creating an account means you’re okay with our', 1, 1033),
(1465, 'Login', 1, 1034),
(1468, 'Turn on/off Local Notifications', 1, 1035),
(1471, 'Turn on/off Notifications', 1, 1036),
(1474, 'Change Language', 1, 1037),
(1477, 'Official Website', 1, 1038),
(1480, 'Rate Us', 1, 1039),
(1483, 'Share', 1, 1040),
(1486, 'Edit Profile', 1, 1041),
(1489, 'A percentage discount for the entire cart', 1, 1042),
(1492, 'A fixed total discount for the entire cart', 1, 1043),
(1495, 'A fixed total discount for selected products only', 1, 1044),
(1498, 'A percentage discount for selected products only', 1, 1045),
(1501, 'Network Connected Reloading Data', 1, 1047),
(1503, 'Sort by', 1, 1048),
(1505, 'Flash Sale', 1, 1049),
(1507, 'ok', 1, 1050),
(1509, 'Number', 1, 1051),
(1511, 'Expire Month', 1, 1052),
(1513, 'Expire Year', 1, 1053),
(1515, 'Payment Method', 1, 1054),
(1517, 'Status', 1, 1055),
(1519, 'And', 1, 1056),
(1520, 'نسيت كلمة المرور الخاصة بي؟', 2, 1),
(1521, 'إن إنشاء حساب يعني موافقتك على شروط الخدمة وسياسة الخصوصية', 2, 2),
(1522, 'تسجيل الدخول مع', 2, 872),
(1523, 'أو', 2, 873),
(1524, 'البريد الإلكتروني', 2, 874),
(1525, 'كلمه السر', 2, 875),
(1526, 'تسجيل', 2, 876),
(1527, 'هل نسيت كلمة المرور', 2, 877),
(1528, 'إرسال', 2, 878),
(1529, 'معلومات عنا', 2, 879),
(1530, 'التصنيفات', 2, 880),
(1531, 'اتصل بنا', 2, 881),
(1532, 'اسم', 2, 882),
(1533, 'رسالتك', 2, 883),
(1534, 'يرجى الاتصال بالإنترنت', 2, 884),
(1535, 'شوهدت مؤخرا', 2, 885),
(1536, 'المنتجات المتاحة.', 2, 886),
(1537, 'أعلى بائع', 2, 887),
(1538, 'صفقة خاصة', 2, 888),
(1539, 'الأكثر إعجابا', 2, 889),
(1540, 'جميع الفئات', 2, 890),
(1541, 'صفقات', 2, 891),
(1542, 'إزالة', 2, 892),
(1543, 'مقدمة', 2, 893),
(1544, 'تخطي المقدمة', 2, 894),
(1545, 'فهمتك!', 2, 895),
(1546, 'تفاصيل الطلب', 2, 896),
(1547, 'سعر التفاصيل', 2, 897),
(1548, 'مجموع', 2, 898),
(1549, 'المجموع الفرعي', 2, 899),
(1550, 'الشحن', 2, 900),
(1551, 'تفاصيل المنتج', 2, 901),
(1552, 'جديد', 2, 902),
(1553, 'إنتهى من المخزن', 2, 903),
(1554, 'في المخزن', 2, 904),
(1555, 'أضف إلى السلة', 2, 905),
(1556, 'أضف إلى السلة', 2, 906),
(1557, 'وصف المنتج', 2, 907),
(1558, 'تفاصيل تقنية', 2, 908),
(1559, 'إيقاف', 2, 909),
(1560, 'لا توجد منتجات', 2, 910),
(1561, 'إعادة تعيين المرشحات', 2, 911),
(1562, 'بحث', 2, 912),
(1563, 'الفئات الرئيسية', 2, 913),
(1564, 'الفئات الفرعية', 2, 914),
(1565, 'طريقة الشحن', 2, 915),
(1566, 'شكرا جزيلا', 2, 916),
(1567, 'شكرا للتسوق معنا.', 2, 917),
(1568, 'طلباتي', 2, 918),
(1569, 'مواصلة التسوق', 2, 919),
(1571, 'مفضل', 2, 920),
(1572, 'قائمة رغباتك فارغة', 2, 921),
(1573, 'متابعة الإضافة', 2, 922),
(1574, 'يكتشف', 2, 923),
(1575, 'وورد بوست التفاصيل', 2, 924),
(1576, 'عد', 2, 925),
(1577, 'أفضل البائعين', 2, 926),
(1578, 'أخبار', 2, 927),
(1579, 'أدخل الكلمة المفتاحية', 2, 928),
(1580, 'الإعدادات', 2, 929),
(1581, 'متجر', 2, 930),
(1582, 'إعادة تعيين', 2, 931),
(1583, 'اختار اللغة', 2, 932),
(1584, 'إنتهى من المخزن', 2, 933),
(1585, 'الأحدث', 2, 934),
(1586, 'سياسة الاسترجاع', 2, 935),
(1587, 'سياسة خاصة', 2, 936),
(1588, 'مصطلح والخدمات', 2, 937),
(1589, 'تخطى', 2, 938),
(1590, 'أطباق الأعلى', 2, 939),
(1591, 'وصفة اليوم', 2, 940),
(1592, 'فئات الغذاء', 2, 941),
(1593, 'رمز الكوبون', 2, 942),
(1594, 'مبلغ القسيمة', 2, 943),
(1595, 'رمز الكوبون', 2, 944),
(1596, 'كوبون', 2, 945),
(1597, 'ملاحظة للمشتري', 2, 946),
(1598, 'استكشاف المزيد', 2, 947),
(1599, 'الكل', 2, 948),
(1600, 'أ - ي', 2, 949),
(1601, 'ي - أ', 2, 950),
(1602, 'السعر مرتفع منخفض', 2, 951),
(1603, 'سعر منخفض مرتفع', 2, 952),
(1604, 'المنتجات الخاصة', 2, 953),
(1605, 'فرز المنتجات', 2, 954),
(1606, 'إلغاء', 2, 955),
(1607, 'الأكثر إعجابا', 2, 956),
(1608, 'خاص', 2, 957),
(1609, 'أعلى بائع', 2, 958),
(1610, 'الأحدث', 2, 959),
(1611, 'الإعجابات', 2, 960),
(1612, 'حسابي', 2, 961),
(1613, 'التليفون المحمول', 2, 962),
(1614, 'تاريخ الولادة', 2, 963),
(1615, 'تحديث', 2, 964),
(1616, 'كلمة المرور الحالية', 2, 965),
(1617, 'كلمة سر جديدة', 2, 966),
(1618, 'تغيير كلمة المرور', 2, 967),
(1619, 'طلبات العملاء', 2, 968),
(1620, 'حالة الطلب', 2, 969),
(1621, 'معرف الطلبات', 2, 970),
(1622, 'سعر المنتج', 2, 971),
(1623, 'عدد المنتجات', 2, 972),
(1624, 'تاريخ', 2, 973),
(1625, 'عنوان العميل', 2, 974),
(1626, 'يرجى إضافة عنوان الشحن الجديد لمزيد من المعالجة لطلبك', 2, 975),
(1627, 'إضافة عنوان جديد', 2, 976),
(1628, 'انشئ حساب', 2, 977),
(1629, 'الاسم الاول', 2, 978),
(1630, 'الكنية', 2, 979),
(1631, 'هل أنت عضو بالفعل؟', 2, 980),
(1632, 'معلومات الفواتير', 2, 981),
(1633, 'عنوان', 2, 982),
(1634, 'هاتف', 2, 983),
(1635, 'نفس عنوان الشحن', 2, 984),
(1636, 'التالى', 2, 985),
(1637, 'طلب', 2, 986),
(1638, 'عنوان وصول الفواتير', 2, 987),
(1639, 'طريقة الشحن', 2, 988),
(1640, 'منتجات', 2, 989),
(1641, 'حاصل الجمع', 2, 990),
(1642, 'سعر المنتجات', 2, 991),
(1643, 'ضريبة', 2, 992),
(1644, 'تكلفة الشحن', 2, 993),
(1645, 'ترتيب ملاحظات', 2, 994),
(1646, 'دفع', 2, 995),
(1647, 'رقم البطاقة', 2, 996),
(1648, 'تاريخ الإنتهاء', 2, 997),
(1649, 'انتهاء الصلاحية', 2, 998),
(1650, 'خطأ: رقم البطاقة غير صالح!', 2, 999),
(1651, 'خطأ: تاريخ انتهاء الصلاحية غير صحيح!', 2, 1000),
(1652, 'خطأ: رقم cvc غير صالح!', 2, 1001),
(1653, 'استمر', 2, 1002),
(1654, 'سلتي', 2, 1003),
(1655, 'عربة التسوق فارغة', 2, 1004),
(1656, 'مواصلة التسوق', 2, 1005),
(1657, 'السعر', 2, 1006),
(1658, 'كمية', 2, 1007),
(1659, 'بواسطة', 2, 1008),
(1660, 'رأي', 2, 1009),
(1661, 'إزالة', 2, 1010),
(1662, 'تقدم', 2, 1011),
(1663, 'عنوان الشحن', 2, 1012),
(1664, 'بلد', 2, 1013),
(1665, 'آخر', 2, 1014),
(1666, 'منطقة', 2, 1015),
(1667, 'مدينة', 2, 1016),
(1668, 'الرمز البريدي', 2, 1017),
(1669, 'حالة', 2, 1018),
(1670, 'تحديث العنوان', 2, 1019),
(1671, 'حفظ العنوان', 2, 1020),
(1672, 'دخولتسجيل', 2, 1021),
(1673, 'يرجى تسجيل الدخول أو إنشاء حساب مجانا', 2, 1022),
(1674, 'تسجيل خروج', 2, 1023),
(1675, 'قائمة امنياتي', 2, 1024),
(1676, 'مرشحات', 2, 1025),
(1677, 'نطاق السعر', 2, 1026),
(1678, 'قريب', 2, 1027),
(1679, 'تطبيق', 2, 1028),
(1680, 'واضح', 2, 1029),
(1681, 'قائمة طعام', 2, 1030),
(1682, 'الصفحة الرئيسية', 2, 1031),
(1683, 'إن إنشاء حساب يعني أنك بخير من خلال موقعنا', 2, 1033),
(1684, 'تسجيل الدخول', 2, 1034),
(1685, 'تشغيل / إيقاف الإشعارات', 2, 1035),
(1686, 'تشغيل / إيقاف الإشعارات', 2, 1036),
(1687, 'تغيير اللغة', 2, 1037),
(1688, 'الموقع الرسمي', 2, 1038),
(1689, 'قيمنا', 2, 1039),
(1690, 'شارك', 2, 1040),
(1691, 'تعديل الملف الشخصي', 2, 1041),
(1692, 'خصم النسبة المئوية للسلة بأكملها', 2, 1042),
(1693, 'خصم إجمالي ثابت للعربة بأكملها', 2, 1043),
(1694, 'خصم إجمالي ثابت للمنتجات المحددة فقط', 2, 1044),
(1695, 'خصم النسبة المئوية للمنتجات المختارة فقط', 2, 1045),
(1696, 'شبكة متصلة إعادة تحميل البيانات', 2, 1047),
(1697, 'صنف حسب', 2, 1048),
(1698, 'بيع مفاجئ', 2, 1049),
(1699, 'حسنا', 2, 1050),
(1700, 'رقم', 2, 1051),
(1701, 'انتهاء الشهر', 2, 1052),
(1702, 'انتهاء السنة', 2, 1053),
(1703, 'طريقة الدفع او السداد', 2, 1054),
(1704, 'الحالة', 2, 1055),
(1705, 'و', 2, 1056),
(1706, 'cccc', 1, 1057),
(1707, 'cccc', 2, 1057),
(1708, 'Shop More', 1, 1058),
(1709, 'عربي', 2, 1058),
(1710, 'Discount', 1, 1072),
(1711, 'خصم', 2, 1072),
(1712, 'Error in initialization, maybe PayPal isnt supported or something else', 1, 1073),
(1713, 'خطأ في التهيئة ، ربما لا يتم دعم PayPal أو أي شيء آخر', 2, 1073),
(1714, 'Alert', 1, 1074),
(1715, 'إنذار', 2, 1074),
(1716, 'Your Wishlist is Empty', 1, 1075),
(1717, 'قائمة رغباتك فارغة', 2, 1075),
(1718, 'Press heart icon on products to add them in wishlist', 1, 1076),
(1719, 'اضغط على أيقونة القلب على المنتجات لإضافتها إلى قائمة الرغبات', 2, 1076),
(1720, 'Wishlist', 1, 1077),
(1721, 'قائمة الرغبات', 2, 1077),
(1722, 'All Items', 1, 1078),
(1723, 'كل الاشياء', 2, 1078),
(1724, 'Account Info', 1, 1079),
(1725, 'معلومات الحساب', 2, 1079),
(1726, 'You Must Be Logged in to use this Feature!', 1, 1080),
(1727, 'يجب عليك تسجيل الدخول لاستخدام هذه الميزة!', 2, 1080),
(1728, 'Remove from Wishlist', 1, 1081),
(1729, 'إزالة من قائمة الرغبات', 2, 1081),
(1730, 'Sign Up', 1, 1082),
(1731, 'سجل', 2, 1082),
(1732, 'Reset Password', 1, 1083),
(1733, 'إعادة تعيين كلمة المرور', 2, 1083),
(1734, 'Invalid email or password', 1, 1084),
(1735, 'البريد الإلكتروني أو كلمة السر خاطئة', 2, 1084),
(1736, 'Recent Searches', 1, 1085),
(1737, 'عمليات البحث الأخيرة', 2, 1085),
(1738, 'Add to Wishlist', 1, 1086),
(1739, 'أضف إلى قائمة الامنيات', 2, 1086),
(1740, 'Discover Latest Trends', 1, 1087),
(1741, 'اكتشف أحدث الاتجاهات', 2, 1087),
(1742, 'Add To My Wishlist', 1, 1088),
(1743, 'أضف إلى قائمة أمنياتي', 2, 1088),
(1744, 'Start Shoping', 1, 1089),
(1745, 'ابدأ التسوق', 2, 1089),
(1746, 'A Smart Shopping Experience', 1, 1090),
(1747, 'تجربة تسوق ذكية', 2, 1090),
(1748, 'Addresses', 1, 1091),
(1749, 'عناوين', 2, 1091),
(1750, 'Account', 1, 1092),
(1751, 'الحساب', 2, 1092),
(1752, 'DETAILS', 1, 1093),
(1753, 'تفاصيل', 2, 1093),
(1754, 'Dark Mode', 1, 1094),
(1755, 'الوضع الداكن', 2, 1094),
(1756, 'Enter a description', 1, 1095),
(1757, 'أدخل وصفًا', 2, 1095),
(1758, 'Grocery Store', 1, 1096),
(1759, 'بقالة', 2, 1096),
(1760, 'Post Comment', 1, 1097),
(1761, 'أضف تعليقا', 2, 1097),
(1762, 'Rate and write a review', 1, 1098),
(1763, 'تقييم وكتابة مراجعة', 2, 1098),
(1764, 'Ratings & Reviews', 1, 1099),
(1765, 'التقييمات والمراجعات', 2, 1099),
(1766, 'Write a review', 1, 1100),
(1767, 'أكتب مراجعة', 2, 1100),
(1768, 'Your Rating', 1, 1101),
(1769, 'تقييمك', 2, 1101),
(1770, 'rating', 1, 1102),
(1771, 'تقييم', 2, 1102),
(1772, 'rating and review', 1, 1103),
(1773, 'تصنيف ومراجعة', 2, 1103),
(1774, 'Coupon Codes List', 1, 1104),
(1775, 'قائمة رموز القسيمة', 2, 1104),
(1776, 'Custom Orders', 1, 1105),
(1777, 'أوامر مخصصة', 2, 1105),
(1778, 'Ecommerce', 1, 1106),
(1779, 'التجارة الإلكترونية', 2, 1106),
(1780, 'Featured Products', 1, 1107),
(1781, 'منتجات مميزة', 2, 1107),
(1782, 'House Hold 1', 1, 1108),
(1783, 'المنزل عقد 1', 2, 1108),
(1784, 'Newest Products', 1, 1109),
(1785, 'أحدث المنتجات', 2, 1109),
(1786, 'On Sale Products', 1, 1110),
(1787, 'المنتجات المعروضة للبيع', 2, 1110),
(1788, 'Braintree', 1, 1111),
(1789, 'برينتري', 2, 1111),
(1790, 'Hyperpay', 1, 1112),
(1791, 'Hyperpay', 2, 1112),
(1792, 'Instamojo', 1, 1113),
(1793, 'Instamojo', 2, 1113),
(1794, 'PayTm', 1, 1114),
(1795, 'PayTm', 2, 1114),
(1796, 'Paypal', 1, 1115),
(1797, 'باي بال', 2, 1115),
(1798, 'Razor Pay', 1, 1116),
(1799, 'الحلاقة الدفع', 2, 1116),
(1800, 'Stripe', 1, 1117),
(1801, 'شريط', 2, 1117),
(1802, 'Me', 1, 1059),
(1803, 'أنا', 2, 1059),
(1804, 'View All', 1, 1060),
(1805, 'عرض الكل', 2, 1060),
(1806, 'Featured', 1, 1061),
(1807, 'متميز', 2, 1061),
(1808, 'Shop Now', 1, 1062),
(1809, 'تسوق الآن', 2, 1062),
(1810, 'New Arrivals', 1, 1063),
(1811, 'الوافدون الجدد', 2, 1063),
(1812, 'Sort', 1, 1064),
(1813, 'فرز', 2, 1064),
(1814, 'Help & Support', 1, 1065),
(1815, 'ساعد لدعم', 2, 1065),
(1816, 'Select Currency', 1, 1066),
(1817, 'اختر العملة', 2, 1066),
(1818, 'Your Price', 1, 1067),
(1819, 'السعر الخاص', 2, 1067),
(1820, 'Billing', 1, 1068),
(1821, 'الفواتير', 2, 1068),
(1822, 'Ship to a different address?', 1, 1069),
(1823, 'هل تريد الشحن إلى عنوان مختلف؟', 2, 1069),
(1824, 'Method', 1, 1070),
(1825, 'طريقة', 2, 1070),
(1826, 'Summary', 1, 1071),
(1827, 'ملخص', 2, 1071);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` char(6) NOT NULL,
  `image` text DEFAULT NULL,
  `directory` varchar(32) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `direction` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `status`, `is_default`) VALUES
(1, 'English', 'en', '118', NULL, 1, 'ltr', 1, 1),
(2, 'Arabic', 'ar', '119', NULL, 2, 'rtl', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `like_id` int(11) NOT NULL,
  `liked_products_id` int(11) NOT NULL,
  `liked_customers_id` int(11) NOT NULL,
  `date_liked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `liked_products`
--

INSERT INTO `liked_products` (`like_id`, `liked_products_id`, `liked_customers_id`, `date_liked`) VALUES
(1, 50, 1, '2025-10-12 07:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `manage_min_max`
--

CREATE TABLE `manage_min_max` (
  `min_max_id` int(11) NOT NULL,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `inventory_ref_id` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_role`
--

CREATE TABLE `manage_role` (
  `manage_role_id` int(11) NOT NULL,
  `user_types_id` tinyint(1) NOT NULL DEFAULT 0,
  `dashboard_view` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_view` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_create` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_update` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_delete` tinyint(1) NOT NULL DEFAULT 0,
  `categories_view` tinyint(1) NOT NULL DEFAULT 0,
  `categories_create` tinyint(1) NOT NULL DEFAULT 0,
  `categories_update` tinyint(1) NOT NULL DEFAULT 0,
  `categories_delete` tinyint(1) NOT NULL DEFAULT 0,
  `products_view` tinyint(1) NOT NULL DEFAULT 0,
  `products_create` tinyint(1) NOT NULL DEFAULT 0,
  `products_update` tinyint(1) NOT NULL DEFAULT 0,
  `products_delete` tinyint(1) NOT NULL DEFAULT 0,
  `news_view` tinyint(1) NOT NULL DEFAULT 0,
  `news_create` tinyint(1) NOT NULL DEFAULT 0,
  `news_update` tinyint(1) NOT NULL DEFAULT 0,
  `news_delete` tinyint(1) NOT NULL DEFAULT 0,
  `customers_view` tinyint(1) NOT NULL DEFAULT 0,
  `customers_create` tinyint(1) NOT NULL DEFAULT 0,
  `customers_update` tinyint(1) NOT NULL DEFAULT 0,
  `customers_delete` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_view` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_create` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_update` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_delete` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_view` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_create` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_update` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_delete` tinyint(1) NOT NULL DEFAULT 0,
  `notifications_view` tinyint(1) NOT NULL DEFAULT 0,
  `notifications_send` tinyint(1) NOT NULL DEFAULT 0,
  `orders_view` tinyint(1) NOT NULL DEFAULT 0,
  `orders_confirm` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_methods_view` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_methods_update` tinyint(1) NOT NULL DEFAULT 0,
  `payment_methods_view` tinyint(1) NOT NULL DEFAULT 0,
  `payment_methods_update` tinyint(1) NOT NULL DEFAULT 0,
  `reports_view` tinyint(1) NOT NULL DEFAULT 0,
  `website_setting_view` tinyint(1) NOT NULL DEFAULT 0,
  `website_setting_update` tinyint(1) NOT NULL DEFAULT 0,
  `application_setting_view` tinyint(1) NOT NULL DEFAULT 0,
  `application_setting_update` tinyint(1) NOT NULL DEFAULT 0,
  `general_setting_view` tinyint(1) NOT NULL DEFAULT 0,
  `general_setting_update` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_view` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_create` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_update` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_delete` tinyint(1) NOT NULL DEFAULT 0,
  `language_view` tinyint(1) NOT NULL DEFAULT 0,
  `language_create` tinyint(1) NOT NULL DEFAULT 0,
  `language_update` tinyint(1) NOT NULL DEFAULT 0,
  `language_delete` tinyint(1) NOT NULL DEFAULT 0,
  `profile_view` tinyint(1) NOT NULL DEFAULT 0,
  `profile_update` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_view` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_create` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_update` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_delete` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_role` tinyint(1) NOT NULL DEFAULT 0,
  `add_media` tinyint(1) NOT NULL DEFAULT 0,
  `edit_media` tinyint(1) NOT NULL DEFAULT 0,
  `view_media` tinyint(1) NOT NULL DEFAULT 0,
  `delete_media` tinyint(1) NOT NULL DEFAULT 0,
  `edit_management` tinyint(1) NOT NULL DEFAULT 0,
  `reviews_view` tinyint(1) NOT NULL DEFAULT 0,
  `reviews_update` tinyint(1) NOT NULL DEFAULT 0,
  `deliveryboy_view` tinyint(1) NOT NULL DEFAULT 0,
  `deliveryboy_create` tinyint(1) NOT NULL DEFAULT 0,
  `deliveryboy_update` tinyint(1) NOT NULL DEFAULT 0,
  `deliveryboy_delete` tinyint(1) NOT NULL DEFAULT 0,
  `finance_view` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `manage_role`
--

INSERT INTO `manage_role` (`manage_role_id`, `user_types_id`, `dashboard_view`, `manufacturer_view`, `manufacturer_create`, `manufacturer_update`, `manufacturer_delete`, `categories_view`, `categories_create`, `categories_update`, `categories_delete`, `products_view`, `products_create`, `products_update`, `products_delete`, `news_view`, `news_create`, `news_update`, `news_delete`, `customers_view`, `customers_create`, `customers_update`, `customers_delete`, `tax_location_view`, `tax_location_create`, `tax_location_update`, `tax_location_delete`, `coupons_view`, `coupons_create`, `coupons_update`, `coupons_delete`, `notifications_view`, `notifications_send`, `orders_view`, `orders_confirm`, `shipping_methods_view`, `shipping_methods_update`, `payment_methods_view`, `payment_methods_update`, `reports_view`, `website_setting_view`, `website_setting_update`, `application_setting_view`, `application_setting_update`, `general_setting_view`, `general_setting_update`, `manage_admins_view`, `manage_admins_create`, `manage_admins_update`, `manage_admins_delete`, `language_view`, `language_create`, `language_update`, `language_delete`, `profile_view`, `profile_update`, `admintype_view`, `admintype_create`, `admintype_update`, `admintype_delete`, `manage_admins_role`, `add_media`, `edit_media`, `view_media`, `delete_media`, `edit_management`, `reviews_view`, `reviews_update`, `deliveryboy_view`, `deliveryboy_create`, `deliveryboy_update`, `deliveryboy_delete`, `finance_view`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 11, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 12, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(4, 13, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(10) UNSIGNED NOT NULL,
  `manufacturer_name` varchar(191) NOT NULL,
  `manufacturer_image` text DEFAULT NULL,
  `manufacturers_slug` varchar(191) NOT NULL,
  `date_added` varchar(191) DEFAULT NULL,
  `last_modified` varchar(191) DEFAULT NULL,
  `manufacturers_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(191) DEFAULT NULL,
  `url_clicked` int(11) NOT NULL DEFAULT 0,
  `date_last_click` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `sub_sort_order` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `external_link` varchar(191) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `sort_order`, `sub_sort_order`, `parent_id`, `type`, `external_link`, `link`, `page_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 1, NULL, '/', NULL, 1, NULL, NULL),
(18, 13, 4, 35, 1, NULL, '/page?name=about-us', 1, 1, NULL, NULL),
(19, 15, 2, 35, 1, NULL, '/page?name=privacy-policy', 1, 1, NULL, NULL),
(20, 16, NULL, 0, 5, '#', '/news', 0, 1, NULL, NULL),
(22, 14, NULL, 35, 5, 'http://localhost:8000/contact', '/contact', 0, 1, NULL, NULL),
(26, 6, NULL, 0, 1, '#', '#', 0, 1, NULL, NULL),
(27, 7, NULL, 26, 3, NULL, 'beverages', 0, 1, NULL, NULL),
(28, 5, NULL, 0, 3, NULL, 'eggs-dairy', 0, 1, NULL, NULL),
(29, 3, NULL, 0, 3, 'fruits-and-vegetables', 'fruits-and-vegetables', 0, 1, NULL, NULL),
(30, 4, NULL, 0, 3, NULL, 'meat', 0, 1, NULL, NULL),
(31, 8, NULL, 26, 3, NULL, 'snacks-candy', 0, 1, NULL, NULL),
(32, 9, NULL, 26, 3, NULL, 'sprouts', 0, 1, NULL, NULL),
(33, 10, NULL, 26, 3, NULL, 'farm-foods', 0, 1, NULL, NULL),
(34, 2, NULL, 0, 3, NULL, 'food-grains', 0, 1, NULL, NULL),
(35, 12, NULL, 0, 2, NULL, 'about-us', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_translation`
--

CREATE TABLE `menu_translation` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `menu_name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `menu_translation`
--

INSERT INTO `menu_translation` (`id`, `menu_id`, `language_id`, `menu_name`) VALUES
(2, 1, 1, 'Home'),
(3, 1, 2, 'Homee'),
(33, 18, 1, 'About Us'),
(34, 18, 2, 'About Us'),
(35, 19, 1, 'Privacy Policy'),
(36, 19, 2, 'Privacy Policy'),
(37, 20, 1, 'News'),
(38, 20, 2, 'News'),
(41, 22, 1, 'Contact Us'),
(42, 22, 2, 'Contact Us'),
(49, 26, 1, 'Others'),
(50, 26, 2, 'الآخرين'),
(51, 27, 1, 'Beverages'),
(52, 27, 2, 'مشروبات'),
(53, 28, 1, 'Eggs & Dairy'),
(54, 28, 2, 'البيض ومنتجات الألبان'),
(55, 29, 1, 'Vegetables'),
(56, 29, 2, 'خضراوات'),
(57, 30, 1, 'Meat'),
(58, 30, 2, 'لحم'),
(59, 31, 1, 'Snacks & Candy'),
(60, 31, 2, 'الوجبات الخفيفة والحلوى'),
(61, 32, 1, 'Sprouts'),
(62, 32, 2, 'براعم'),
(63, 33, 1, 'Farm Foods'),
(64, 33, 2, 'أغذية المزرعة'),
(65, 34, 1, 'Grains'),
(66, 34, 2, 'الطعام'),
(67, 35, 1, 'Company'),
(68, 35, 2, 'شركة');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_11_24_165937_create_address_book_table', 1),
(2, '2020_11_24_165937_create_alert_settings_table', 1),
(3, '2020_11_24_165937_create_api_calls_list_table', 1),
(4, '2020_11_24_165937_create_bank_detail_table', 1),
(5, '2020_11_24_165937_create_banners_history_table', 1),
(6, '2020_11_24_165937_create_banners_table', 1),
(7, '2020_11_24_165937_create_block_ips_table', 1),
(8, '2020_11_24_165937_create_categories_description_table', 1),
(9, '2020_11_24_165937_create_categories_role_table', 1),
(10, '2020_11_24_165937_create_categories_table', 1),
(11, '2020_11_24_165937_create_compare_table', 1),
(12, '2020_11_24_165937_create_constant_banners_table', 1),
(13, '2020_11_24_165937_create_countries_table', 1),
(14, '2020_11_24_165937_create_coupons_table', 1),
(15, '2020_11_24_165937_create_currencies_table', 1),
(16, '2020_11_24_165937_create_currency_record_table', 1),
(17, '2020_11_24_165937_create_current_theme_table', 1),
(18, '2020_11_24_165937_create_customers_basket_attributes_table', 1),
(19, '2020_11_24_165937_create_customers_basket_table', 1),
(20, '2020_11_24_165937_create_customers_info_table', 1),
(21, '2020_11_24_165937_create_customers_table', 1),
(22, '2020_11_24_165937_create_delievery_time_slot_with_zone_table', 1),
(23, '2020_11_24_165937_create_delievery_time_slots_table', 1),
(24, '2020_11_24_165937_create_deliveryboy_info_table', 1),
(25, '2020_11_24_165937_create_devices_table', 1),
(26, '2020_11_24_165937_create_flash_sale_table', 1),
(27, '2020_11_24_165937_create_flate_rate_table', 1),
(28, '2020_11_24_165937_create_floating_cash_table', 1),
(29, '2020_11_24_165937_create_front_end_theme_content_table', 1),
(30, '2020_11_24_165937_create_geo_zones_table', 1),
(31, '2020_11_24_165937_create_home_banners_table', 1),
(32, '2020_11_24_165937_create_http_call_record_table', 1),
(33, '2020_11_24_165937_create_image_categories_table', 1),
(34, '2020_11_24_165937_create_images_table', 1),
(35, '2020_11_24_165937_create_inventory_detail_table', 1),
(36, '2020_11_24_165937_create_inventory_table', 1),
(37, '2020_11_24_165937_create_label_value_table', 1),
(38, '2020_11_24_165937_create_labels_table', 1),
(39, '2020_11_24_165937_create_languages_table', 1),
(40, '2020_11_24_165937_create_liked_products_table', 1),
(41, '2020_11_24_165937_create_manage_min_max_table', 1),
(42, '2020_11_24_165937_create_manage_role_table', 1),
(43, '2020_11_24_165937_create_manufacturers_info_table', 1),
(44, '2020_11_24_165937_create_manufacturers_table', 1),
(45, '2020_11_24_165937_create_menu_translation_table', 1),
(46, '2020_11_24_165937_create_menus_table', 1),
(47, '2020_11_24_165937_create_news_categories_description_table', 1),
(48, '2020_11_24_165937_create_news_categories_table', 1),
(49, '2020_11_24_165937_create_news_description_table', 1),
(50, '2020_11_24_165937_create_news_table', 1),
(51, '2020_11_24_165937_create_news_to_news_categories_table', 1),
(52, '2020_11_24_165937_create_orders_products_attributes_table', 1),
(53, '2020_11_24_165937_create_orders_products_table', 1),
(54, '2020_11_24_165937_create_orders_status_description_table', 1),
(55, '2020_11_24_165937_create_orders_status_history_table', 1),
(56, '2020_11_24_165937_create_orders_status_table', 1),
(57, '2020_11_24_165937_create_orders_table', 1),
(58, '2020_11_24_165937_create_orders_to_delivery_boy_history_table', 1),
(59, '2020_11_24_165937_create_orders_to_delivery_boy_table', 1),
(60, '2020_11_24_165937_create_orders_total_table', 1),
(61, '2020_11_24_165937_create_pages_description_table', 1),
(62, '2020_11_24_165937_create_pages_table', 1),
(63, '2020_11_24_165937_create_payment_description_table', 1),
(64, '2020_11_24_165937_create_payment_methods_detail_table', 1),
(65, '2020_11_24_165937_create_payment_methods_table', 1),
(66, '2020_11_24_165937_create_payment_withdraw_table', 1),
(67, '2020_11_24_165937_create_permissions_table', 1),
(68, '2020_11_24_165937_create_products_attributes_table', 1),
(69, '2020_11_24_165937_create_products_description_table', 1),
(70, '2020_11_24_165937_create_products_images_table', 1),
(71, '2020_11_24_165937_create_products_options_descriptions_table', 1),
(72, '2020_11_24_165937_create_products_options_table', 1),
(73, '2020_11_24_165937_create_products_options_values_descriptions_table', 1),
(74, '2020_11_24_165937_create_products_options_values_table', 1),
(75, '2020_11_24_165937_create_products_shipping_rates_table', 1),
(76, '2020_11_24_165937_create_products_table', 1),
(77, '2020_11_24_165937_create_products_to_categories_table', 1),
(78, '2020_11_24_165937_create_reviews_description_table', 1),
(79, '2020_11_24_165937_create_reviews_table', 1),
(80, '2020_11_24_165937_create_sessions_table', 1),
(81, '2020_11_24_165937_create_settings_table', 1),
(82, '2020_11_24_165937_create_shipping_description_table', 1),
(83, '2020_11_24_165937_create_shipping_methods_table', 1),
(84, '2020_11_24_165937_create_sliders_images_table', 1),
(85, '2020_11_24_165937_create_specials_table', 1),
(86, '2020_11_24_165937_create_tax_class_table', 1),
(87, '2020_11_24_165937_create_tax_rates_table', 1),
(88, '2020_11_24_165937_create_top_offers_table', 1),
(89, '2020_11_24_165937_create_units_descriptions_table', 1),
(90, '2020_11_24_165937_create_units_table', 1),
(91, '2020_11_24_165937_create_ups_shipping_table', 1),
(92, '2020_11_24_165937_create_user_to_address_table', 1),
(93, '2020_11_24_165937_create_user_types_table', 1),
(94, '2020_11_24_165937_create_users_balance_table', 1),
(95, '2020_11_24_165937_create_users_table', 1),
(96, '2020_11_24_165937_create_whos_online_table', 1),
(97, '2020_11_24_165937_create_zones_table', 1),
(98, '2020_11_24_165937_create_zones_to_geo_zones_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_image` text DEFAULT NULL,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT 0,
  `news_slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_image`, `news_date_added`, `news_last_modified`, `news_status`, `is_feature`, `news_slug`, `created_at`, `updated_at`) VALUES
(1, '228', '0000-00-00 00:00:00', NULL, 1, 1, 'us-foods-wraps-up-acquisition-of-smart-food-service-warehouse', '2020-04-28 02:22:35', NULL),
(16, '260', '0000-00-00 00:00:00', NULL, 1, 1, 'produce-shelf-life-weighs-heavily-for-shoppers-amid-pandemic', '2020-04-28 02:37:37', NULL),
(17, '259', '0000-00-00 00:00:00', NULL, 1, 1, 'freshdirect-to-sell-meals-from-restaurant-associates', '2020-04-28 02:40:37', NULL),
(18, '257', '0000-00-00 00:00:00', NULL, 1, 1, 'the-giant-company-ramps-up-hiring-as-pandemic-spurs-grocery-purchases', '2020-04-28 02:43:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` text DEFAULT NULL,
  `categories_icon` text DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `news_categories_slug` varchar(191) NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `news_categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(1, '260', NULL, 0, 1, NULL, NULL, 'retail-financial', 1, '2020-04-28 02:12:51', NULL),
(2, '259', NULL, 0, 2, NULL, NULL, 'center-store', 1, '2020-04-28 02:13:24', NULL),
(3, '258', NULL, 0, 3, NULL, NULL, 'prepared-foods', 1, '2020-04-28 02:13:55', NULL),
(4, '257', NULL, 0, 4, NULL, NULL, 'farm-fresh', 1, '2020-04-28 02:15:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

CREATE TABLE `news_categories_description` (
  `categories_description_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `categories_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `news_categories_description`
--

INSERT INTO `news_categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 1, 1, 'RETAIL & FINANCIAL'),
(2, 1, 2, 'التجزئة والمالية'),
(3, 2, 1, 'CENTER STORE'),
(4, 2, 2, 'مخزن المركز'),
(5, 3, 1, 'PREPARED FOODS'),
(6, 3, 2, 'أطعمة محضرة'),
(7, 4, 1, 'Farm Fresh'),
(8, 4, 2, 'الزراعية الطازجة');

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

CREATE TABLE `news_description` (
  `language_id` int(11) NOT NULL DEFAULT 1,
  `news_name` varchar(64) NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL,
  `news_description` text DEFAULT NULL,
  `news_url` varchar(191) DEFAULT NULL,
  `news_viewed` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `news_description`
--

INSERT INTO `news_description` (`language_id`, `news_name`, `news_id`, `news_description`, `news_url`, `news_viewed`) VALUES
(1, 'US Foods wraps up acquisition of Smart Food service Warehouse', 1, '<p>US Foods Holding Corp. has closed its $970 million acquisition of Smart Foodservice Warehouse Stores from the private equity owner of Smart &amp; Final Stores.</p>\r\n\r\n<p>Rosemont, Ill.-based US Foods said Friday that, with the addition of Smart Foodservice, it expects to achieve $20 million in annual run-rate cost synergies by the end of 2023, namely via purchasing efficiencies and private-label expansion.</p>\r\n\r\n<p>US Foods Holding Corp. has closed its $970 million acquisition of Smart Foodservice Warehouse Stores from the private equity owner of Smart &amp; Final Stores.</p>\r\n\r\n<p>Rosemont, Ill.-based US Foods said Friday that, with the addition of Smart Foodservice, it expects to achieve $20 million in annual run-rate cost synergies by the end of 2023, namely via purchasing efficiencies and private-label expansion.</p>\r\n\r\n<p>US Foods Holding Corp. has closed its $970 million acquisition of Smart Foodservice Warehouse Stores from the private equity owner of Smart &amp; Final Stores.</p>\r\n\r\n<p>Rosemont, Ill.-based US Foods said Friday that, with the addition of Smart Foodservice, it expects to achieve $20 million in annual run-rate cost synergies by the end of 2023, namely via purchasing efficiencies and private-label expansion.</p>', '0', 0),
(2, 'فودز تختتم اقتناء مستودع خدمات الغذاء الذكي', 1, '<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>\r\n\r\n<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>\r\n\r\n<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>\r\n\r\n<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>', '0', 0),
(1, 'Produce shelf life weighs heavily for shoppers amid pandemic', 16, '<p>US Foods Holding Corp. has closed its $970 million acquisition of Smart Foodservice Warehouse Stores from the private equity owner of Smart &amp; Final Stores.</p>\r\n\r\n<p>Rosemont, Ill.-based US Foods said Friday that, with the addition of Smart Foodservice, it expects to achieve $20 million in annual run-rate cost synergies by the end of 2023, namely via purchasing efficiencies and private-label expansion.</p>\r\n\r\n<p>US Foods Holding Corp. has closed its $970 million acquisition of Smart Foodservice Warehouse Stores from the private equity owner of Smart &amp; Final Stores.</p>\r\n\r\n<p>Rosemont, Ill.-based US Foods said Friday that, with the addition of Smart Foodservice, it expects to achieve $20 million in annual run-rate cost synergies by the end of 2023, namely via purchasing efficiencies and private-label expansion.</p>\r\n\r\n<p>US Foods Holding Corp. has closed its $970 million acquisition of Smart Foodservice Warehouse Stores from the private equity owner of Smart &amp; Final Stores.</p>\r\n\r\n<p>Rosemont, Ill.-based US Foods said Friday that, with the addition of Smart Foodservice, it expects to achieve $20 million in annual run-rate cost synergies by the end of 2023, namely via purchasing efficiencies and private-label expansion.</p>', '0', 0),
(2, 'ينتج العمر التخزيني ثقلاً كبيرًا للمتسوقين وسط جائحة', 16, '<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>\r\n\r\n<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>\r\n\r\n<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>\r\n\r\n<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.</pre>', '0', 0),
(1, 'FreshDirect to sell meals from Restaurant Associates', 17, '<p>US Foods Holding Corp. has closed its $970 million acquisition of Smart Foodservice Warehouse Stores from the private equity owner of Smart &amp; Final Stores.</p>\r\n\r\n<p>Rosemont, Ill.-based US Foods said Friday that, with the addition of Smart Foodservice, it expects to achieve $20 million in annual run-rate cost synergies by the end of 2023, namely via purchasing efficiencies and private-label expansion.</p>\r\n\r\n<p>US Foods Holding Corp. has closed its $970 million acquisition of Smart Foodservice Warehouse Stores from the private equity owner of Smart &amp; Final Stores.</p>\r\n\r\n<p>Rosemont, Ill.-based US Foods said Friday that, with the addition of Smart Foodservice, it expects to achieve $20 million in annual run-rate cost synergies by the end of 2023, namely via purchasing efficiencies and private-label expansion.</p>\r\n\r\n<p>US Foods Holding Corp. has closed its $970 million acquisition of Smart Foodservice Warehouse Stores from the private equity owner of Smart &amp; Final Stores.</p>\r\n\r\n<p>Rosemont, Ill.-based US Foods said Friday that, with the addition of Smart Foodservice, it expects to achieve $20 million in annual run-rate cost synergies by the end of 2023, namely via purchasing efficiencies and private-label expansion.</p>', '0', 0),
(2, 'فريش دايركت لبيع الوجبات من مطعم أسوشيتس', 17, '<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>\r\n\r\n<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>\r\n\r\n<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>\r\n\r\n<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.</pre>', '0', 0),
(1, 'The Giant Company ramps up hiring as pandemic spurs grocery purc', 18, '<p>US Foods Holding Corp. has closed its $970 million acquisition of Smart Foodservice Warehouse Stores from the private equity owner of Smart &amp; Final Stores.</p>\r\n\r\n<p>Rosemont, Ill.-based US Foods said Friday that, with the addition of Smart Foodservice, it expects to achieve $20 million in annual run-rate cost synergies by the end of 2023, namely via purchasing efficiencies and private-label expansion.</p>\r\n\r\n<p>US Foods Holding Corp. has closed its $970 million acquisition of Smart Foodservice Warehouse Stores from the private equity owner of Smart &amp; Final Stores.</p>\r\n\r\n<p>Rosemont, Ill.-based US Foods said Friday that, with the addition of Smart Foodservice, it expects to achieve $20 million in annual run-rate cost synergies by the end of 2023, namely via purchasing efficiencies and private-label expansion.</p>\r\n\r\n<p>US Foods Holding Corp. has closed its $970 million acquisition of Smart Foodservice Warehouse Stores from the private equity owner of Smart &amp; Final Stores.</p>\r\n\r\n<p>Rosemont, Ill.-based US Foods said Friday that, with the addition of Smart Foodservice, it expects to achieve $20 million in annual run-rate cost synergies by the end of 2023, namely via purchasing efficiencies and private-label expansion.</p>', '0', 0),
(2, 'تكثف `` الشركة العملاقة \'\' عمليات التوظيف حيث يحفز الوباء مشتريا', 18, '<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>\r\n\r\n<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>\r\n\r\n<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.\r\n</pre>\r\n\r\n<pre>\r\nأغلقت شركة فودز القابضة كورب للاستحواذ على 970 مليون دولار من متاجر مخازن الخدمات الغذائية من مالك الأسهم الخاصة للمتاجر الذكية والنهائية.</pre>', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

CREATE TABLE `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `news_to_news_categories`
--

INSERT INTO `news_to_news_categories` (`news_id`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-04-28 02:22:35', NULL),
(16, 2, '2020-04-28 02:37:37', NULL),
(17, 3, '2020-04-28 02:40:37', NULL),
(18, 4, '2020-04-28 02:43:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `total_tax` decimal(7,2) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(191) NOT NULL,
  `customers_company` varchar(191) DEFAULT NULL,
  `customers_street_address` varchar(191) NOT NULL,
  `customers_suburb` varchar(191) DEFAULT NULL,
  `customers_city` varchar(191) DEFAULT NULL,
  `customers_postcode` varchar(191) DEFAULT NULL,
  `customers_state` varchar(191) DEFAULT NULL,
  `customers_country` varchar(191) NOT NULL,
  `customers_telephone` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `customers_address_format_id` int(11) DEFAULT NULL,
  `delivery_name` varchar(191) NOT NULL,
  `delivery_company` varchar(191) DEFAULT NULL,
  `delivery_street_address` varchar(191) NOT NULL,
  `delivery_suburb` varchar(191) DEFAULT NULL,
  `delivery_city` varchar(191) DEFAULT NULL,
  `delivery_postcode` varchar(191) DEFAULT NULL,
  `delivery_state` varchar(191) DEFAULT NULL,
  `delivery_country` varchar(191) NOT NULL,
  `delivery_address_format_id` int(11) DEFAULT NULL,
  `billing_name` varchar(191) NOT NULL,
  `billing_company` varchar(191) DEFAULT NULL,
  `billing_street_address` varchar(191) NOT NULL,
  `billing_suburb` varchar(191) DEFAULT NULL,
  `billing_city` varchar(191) DEFAULT NULL,
  `billing_postcode` varchar(191) DEFAULT NULL,
  `billing_state` varchar(191) DEFAULT NULL,
  `billing_country` varchar(191) NOT NULL,
  `billing_address_format_id` int(11) NOT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `cc_owner` varchar(191) DEFAULT NULL,
  `cc_number` varchar(32) DEFAULT NULL,
  `cc_expires` varchar(4) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) NOT NULL,
  `shipping_duration` int(11) DEFAULT NULL,
  `order_information` text NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_code` text NOT NULL,
  `coupon_amount` int(11) NOT NULL,
  `exclude_product_ids` varchar(191) NOT NULL,
  `product_categories` varchar(191) NOT NULL,
  `excluded_product_categories` varchar(191) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `product_ids` varchar(191) NOT NULL,
  `ordered_source` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1: Website, 2: App',
  `delivery_phone` varchar(30) NOT NULL,
  `billing_phone` varchar(30) NOT NULL,
  `transaction_id` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_time` varchar(191) NOT NULL,
  `delivery_latitude` varchar(191) DEFAULT NULL,
  `delivery_longitude` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `total_tax`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `email`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_date_finished`, `currency`, `currency_value`, `order_price`, `shipping_cost`, `shipping_method`, `shipping_duration`, `order_information`, `is_seen`, `coupon_code`, `coupon_amount`, `exclude_product_ids`, `product_categories`, `excluded_product_categories`, `free_shipping`, `product_ids`, `ordered_source`, `delivery_phone`, `billing_phone`, `transaction_id`, `created_at`, `updated_at`, `delivery_time`, `delivery_latitude`, `delivery_longitude`) VALUES
(12348, '0.00', 5, 'Dheeraj kumar', NULL, 'Lucknow', NULL, 'lucknow', '273413', NULL, 'india', '8931833660', 'dheeraj@gmail.com', NULL, 'Dheeraj', 'abc', 'india', 'india', 'india', '123422', NULL, 'india', NULL, 'india', NULL, 'india', NULL, 'india', 'india', 'india', 'india', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.00', '15.00', 'UPI', NULL, 'test', 0, '0', 1, '1', '1', '1', 1, '1', 1, '1', '1', NULL, NULL, NULL, '', NULL, NULL),
(12349, '0.00', 5, 'Dheeraj kumar', NULL, 'Lucknow', NULL, 'lucknow', '273413', NULL, 'india', '8931833660', 'dheeraj@gmail.com', NULL, 'Dheeraj', 'abc', 'india', 'india', 'india', '123422', NULL, 'india', NULL, 'india', NULL, 'india', NULL, 'india', 'india', 'india', 'india', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.00', '15.00', 'UPI', NULL, 'test', 0, '0', 1, '1', '1', '1', 1, '1', 1, '1', '1', NULL, NULL, NULL, '', NULL, NULL),
(12350, '0.00', 5, 'Dheeraj gupta', NULL, 'Lucknow', NULL, NULL, NULL, 'other', 'IN', '9999999999', 'guest@example.com', NULL, 'Dheeraj gupta', NULL, 'Lucknow', NULL, NULL, NULL, 'other', 'IN', NULL, 'Dheeraj gupta', NULL, 'Lucknow', NULL, 'Lucknow', NULL, 'other', 'IN', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2026-07-11 05:16:47', '2026-07-11 05:16:47', NULL, '$', '1.000000', '104.00', '0.00', 'freeShipping', NULL, '[]', 0, '', 0, '', '', '', 0, '', 2, '9999999999', '9999999999', NULL, NULL, NULL, '', NULL, NULL),
(12351, '0.00', 5, 'Dheeraj gupta', NULL, 'Lucknow', NULL, NULL, NULL, 'other', 'IN', '9999999999', 'guest@example.com', NULL, 'Dheeraj gupta', NULL, 'Lucknow', NULL, NULL, NULL, 'other', 'IN', NULL, 'Dheeraj gupta', NULL, 'Lucknow', NULL, 'Lucknow', NULL, 'other', 'IN', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2026-07-11 05:20:06', '2026-07-11 05:20:06', NULL, '$', '1.000000', '67.00', '15.00', 'freeShipping', NULL, '[]', 0, '', 0, '', '', '', 0, '', 2, '9999999999', '9999999999', NULL, NULL, NULL, '', NULL, NULL),
(12352, '0.00', 5, 'Dheeraj gupta', NULL, 'Lucknow', NULL, NULL, NULL, 'other', 'IN', '9999999999', 'guest@example.com', NULL, 'Dheeraj gupta', NULL, 'Lucknow', NULL, NULL, NULL, 'other', 'IN', NULL, 'Dheeraj gupta', NULL, 'Lucknow', NULL, 'Lucknow', NULL, 'other', 'IN', 0, 'Cash on Delivery', NULL, NULL, NULL, NULL, '2026-07-11 05:21:49', '2026-07-11 05:21:49', NULL, '$', '1.000000', '67.00', '15.00', 'freeShipping', NULL, '[]', 0, '', 0, '', '', '', 0, '', 2, '9999999999', '9999999999', NULL, NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) DEFAULT NULL,
  `products_name` varchar(64) NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(1, 12350, 40, NULL, 'Plum', '52.00', '104.00', '1', 2),
(2, 12351, 40, NULL, 'Plum', '52.00', '52.00', '1', 1),
(3, 12352, 40, NULL, 'Plum', '52.00', '52.00', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) NOT NULL,
  `products_options_values` varchar(32) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL,
  `public_flag` int(11) DEFAULT 0,
  `downloads_flag` int(11) DEFAULT 0,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `public_flag`, `downloads_flag`, `role_id`) VALUES
(1, 1, 1, 2),
(2, 0, 0, 2),
(3, 0, 0, 2),
(4, 0, 0, 2),
(5, 0, 0, 2),
(6, 0, 0, 2),
(7, 0, 0, 2),
(8, 0, 0, 3),
(9, 0, 0, 3),
(10, 0, 0, 3),
(11, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_description`
--

CREATE TABLE `orders_status_description` (
  `orders_status_description_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `orders_status_name` varchar(191) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `orders_status_description`
--

INSERT INTO `orders_status_description` (`orders_status_description_id`, `orders_status_id`, `orders_status_name`, `language_id`) VALUES
(1, 1, 'Pending', 1),
(2, 2, 'Completed', 1),
(3, 3, 'Cancel', 1),
(4, 4, 'Return', 1),
(5, 5, 'Inprocess', 1),
(6, 8, 'Online', 1),
(7, 9, 'Free for Delivery', 1),
(8, 10, 'Online Busy With Delivery', 1),
(9, 11, 'Offline', 1),
(10, 6, 'Delivered', 1),
(11, 7, 'Dispatched', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(11) DEFAULT 0,
  `comments` text DEFAULT NULL,
  `role_id` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`, `role_id`) VALUES
(1, 12350, 1, '2026-07-11 05:16:47', 1, 'Order placed from React Native app - asap', 1),
(2, 12351, 1, '2026-07-11 05:20:06', 1, 'Order placed from React Native app - asap', 1),
(3, 12352, 1, '2026-07-11 05:21:49', 1, 'Order placed from React Native app - asap', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `text` varchar(191) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_to_delivery_boy`
--

CREATE TABLE `orders_to_delivery_boy` (
  `orders_to_deliveryboy_id` int(11) NOT NULL,
  `deliveryboy_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(10) UNSIGNED NOT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_to_delivery_boy_history`
--

CREATE TABLE `orders_to_delivery_boy_history` (
  `orders_to_delivery_boy_history_id` int(11) NOT NULL,
  `orders_id` int(10) UNSIGNED NOT NULL,
  `orders_to_deliveryboy_id` int(10) UNSIGNED NOT NULL,
  `commented_person` tinyint(1) NOT NULL,
  `commented_person_id` int(10) UNSIGNED NOT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 1,
  `comments` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `orders_status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `slug`, `status`, `type`) VALUES
(1, 'privacy-policy', 1, 1),
(2, 'term-services', 1, 1),
(3, 'refund-policy', 1, 1),
(4, 'about-us', 1, 1),
(5, 'privacy-policy', 1, 2),
(6, 'term-services', 1, 2),
(7, 'refund-policy', 1, 2),
(8, 'about-us', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

CREATE TABLE `pages_description` (
  `page_description_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pages_description`
--

INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `language_id`, `page_id`) VALUES
(1, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 1),
(4, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 2),
(7, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 3),
(10, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\r\n\r\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\r\n\r\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\r\n\r\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\r\n\r\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\r\n\r\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\r\n\r\n<ul>\r\n<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\r\n<li>Etiam eleifend ex eu interdum varius.</li>\r\n<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\r\n<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\r\n<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\r\n</ul>\r\n\r\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>\r\n\r\n<p>&nbsp;</p>', 1, 4),
(13, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 5),
(16, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 6),
(19, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 7),
(22, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\r\n\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></p>\r\n\r\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\r\n\r\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\r\n\r\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\r\n\r\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\r\n\r\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\r\n\r\n<ul>\r\n<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\r\n<li>Etiam eleifend ex eu interdum varius.</li>\r\n<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\r\n<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\r\n<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\r\n</ul>\r\n\r\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>', 1, 8),
(34, 'سياسة خاصة', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان لوريم إيبسوم الدمية القياسية في الصناعة\r\n\r\nالنص منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة من النوع\r\n\r\nكتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، بقيت بشكل أساسي', 2, 1),
(35, 'معلومات عنا', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان لوريم إيبسوم الدمية القياسية في الصناعة\r\n\r\nالنص منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة من النوع\r\n\r\nكتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، بقيت بشكل أساسي', 2, 4),
(36, 'سياسة الاسترجاع', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان لوريم إيبسوم الدمية القياسية في الصناعة\r\n\r\nالنص منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة من النوع\r\n\r\nكتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، بقيت بشكل أساسي', 2, 3),
(37, 'الشروط والخدمات', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان لوريم إيبسوم الدمية القياسية في الصناعة\r\n\r\nالنص منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة من النوع\r\n\r\nكتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، بقيت بشكل أساسي', 2, 2),
(38, 'سياسة خاصة', '<p>لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان لوريم إيبسوم الدمية القياسية في الصناعة النص منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة من النوع كتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، بقيت بشكل أساسي</p>', 2, 5),
(39, 'الشروط والخدمات', '<p>لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان لوريم إيبسوم الدمية القياسية في الصناعة النص منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة من النوع كتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، بقيت بشكل أساسي</p>', 2, 6),
(40, 'سياسة الاسترجاع', '<p>لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان لوريم إيبسوم الدمية القياسية في الصناعة النص منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة من النوع كتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، بقيت بشكل أساسي</p>', 2, 7),
(41, 'معلومات عنا', '<p>لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان لوريم إيبسوم الدمية القياسية في الصناعة النص منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة من النوع كتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، بقيت بشكل أساسي</p>', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `payment_description`
--

CREATE TABLE `payment_description` (
  `id` int(11) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `language_id` int(11) NOT NULL,
  `sub_name_1` varchar(100) DEFAULT NULL,
  `sub_name_2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `payment_description`
--

INSERT INTO `payment_description` (`id`, `payment_methods_id`, `name`, `language_id`, `sub_name_1`, `sub_name_2`) VALUES
(1, 1, 'Braintree', 1, 'Credit Card', 'Paypal'),
(4, 2, 'Stripe', 1, NULL, NULL),
(6, 4, 'Cash on Delivery', 1, NULL, NULL),
(7, 5, 'Instamojo', 1, NULL, NULL),
(8, 0, 'Cybersoure', 1, NULL, NULL),
(9, 6, 'Hyperpay', 1, NULL, NULL),
(10, 7, 'Razor Pay', 1, NULL, NULL),
(11, 8, 'PayTm', 1, NULL, NULL),
(12, 9, 'Direct Bank Transfer', 1, 'Make your payment directly into our bank account. Please use your Order ID as the payment reference.', NULL),
(13, 10, 'Paystack', 1, NULL, NULL),
(14, 11, 'Midtrans', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_methods_id` int(11) NOT NULL,
  `payment_method` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `environment` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_methods_id`, `payment_method`, `status`, `environment`, `created_at`, `updated_at`) VALUES
(1, 'braintree', 0, 0, '2019-09-18 06:10:13', '0000-00-00 00:00:00'),
(2, 'stripe', 0, 0, '2019-09-18 06:26:17', '0000-00-00 00:00:00'),
(4, 'cash_on_delivery', 1, 0, '2019-09-18 06:26:37', '0000-00-00 00:00:00'),
(5, 'instamojo', 0, 0, '2019-09-18 06:27:23', '0000-00-00 00:00:00'),
(6, 'hyperpay', 0, 0, '2019-09-18 06:26:44', '0000-00-00 00:00:00'),
(7, 'razor_pay', 0, 0, '2019-09-18 06:26:44', '0000-00-00 00:00:00'),
(8, 'pay_tm', 0, 0, '2019-09-18 06:26:44', '0000-00-00 00:00:00'),
(9, 'banktransfer', 0, 0, '2019-09-18 06:26:44', '0000-00-00 00:00:00'),
(10, 'paystack', 0, 0, '2019-09-18 06:26:44', '0000-00-00 00:00:00'),
(11, 'midtrans', 0, 0, '2019-09-18 06:26:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods_detail`
--

CREATE TABLE `payment_methods_detail` (
  `id` int(11) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `payment_methods_detail`
--

INSERT INTO `payment_methods_detail` (`id`, `payment_methods_id`, `key`, `value`) VALUES
(3, 1, 'merchant_id', NULL),
(4, 1, 'public_key', NULL),
(5, 1, 'private_key', NULL),
(9, 2, 'secret_key', NULL),
(10, 2, 'publishable_key', NULL),
(21, 5, 'api_key', NULL),
(22, 5, 'auth_token', NULL),
(23, 5, 'client_id', NULL),
(24, 5, 'client_secret', NULL),
(32, 6, 'userid', NULL),
(33, 6, 'password', NULL),
(34, 6, 'entityid', NULL),
(35, 7, 'RAZORPAY_KEY', NULL),
(36, 7, 'RAZORPAY_SECRET', NULL),
(37, 8, 'paytm_mid', NULL),
(39, 8, 'paytm_key', 'w#'),
(40, 8, 'current_domain_name', NULL),
(41, 9, 'account_name', NULL),
(42, 9, 'account_number', NULL),
(43, 9, 'bank_name', NULL),
(44, 9, 'short_code', NULL),
(45, 9, 'iban', NULL),
(46, 9, 'swift', NULL),
(47, 10, 'secret_key', NULL),
(48, 10, 'public_key', NULL),
(49, 11, 'merchant_id', NULL),
(50, 11, 'server_key', NULL),
(51, 11, 'client_key', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_withdraw`
--

CREATE TABLE `payment_withdraw` (
  `payment_withdraw_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `method` varchar(191) NOT NULL,
  `note` text DEFAULT NULL,
  `orders_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `role_id` varchar(191) NOT NULL,
  `permissions` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_model` varchar(191) DEFAULT NULL,
  `products_image` text DEFAULT NULL,
  `products_video_link` text DEFAULT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(191) DEFAULT NULL,
  `products_weight_unit` varchar(191) DEFAULT NULL,
  `products_status` tinyint(1) NOT NULL,
  `is_current` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT 0,
  `products_liked` int(11) NOT NULL,
  `low_limit` int(11) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT 0,
  `products_slug` varchar(191) NOT NULL,
  `products_type` int(11) NOT NULL DEFAULT 0,
  `products_min_order` int(11) NOT NULL DEFAULT 1,
  `products_max_stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_video_link`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `is_current`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `is_feature`, `products_slug`, `products_type`, `products_min_order`, `products_max_stock`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, '132', NULL, '10.00', '2020-01-01 00:00:01', NULL, NULL, '0.25', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'coca-cola-soda', 0, 1, 9999, '2019-11-26 20:04:16', '2020-06-05 06:03:17'),
(2, 0, NULL, '133', NULL, '8.00', '2020-01-01 00:00:01', NULL, NULL, '250.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'gold-peak-sweet-tea', 0, 1, 9999, '2019-11-26 20:06:24', '2019-11-26 20:07:23'),
(3, 0, NULL, '135', NULL, '15.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'great-value-100-apple-juice', 0, 1, 9999, '2019-11-26 20:09:06', NULL),
(4, 0, NULL, '134', NULL, '25.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'milk-chocolate-hot-cocoa-mix', 0, 1, 9999, '2019-11-26 20:11:05', NULL),
(5, 0, NULL, '136', NULL, '30.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'roast-ground-coffee', 0, 1, 9999, '2019-11-26 20:12:48', NULL),
(6, 0, NULL, '138', NULL, '18.00', '2020-01-01 00:00:01', NULL, NULL, '200.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'blueberry-soft-chewy-pre-sliced-bagels', 0, 1, 9999, '2019-11-26 20:17:25', NULL),
(7, 0, NULL, '137', NULL, '21.00', '2020-01-01 00:00:01', NULL, NULL, '250.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'coffee-mate-sugar-free', 0, 1, 9999, '2019-11-26 20:20:32', NULL),
(8, 0, NULL, '140', NULL, '14.00', '2020-01-01 00:00:01', NULL, NULL, '250.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'frigo-cheese-heads', 0, 1, 9999, '2019-11-26 20:22:14', NULL),
(9, 0, NULL, '139', NULL, '30.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'lowfat-vanilla-yogurt', 0, 1, 9999, '2019-11-26 20:23:37', NULL),
(10, 0, NULL, '141', NULL, '22.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'marketside-large-brown-eggs', 0, 1, 9999, '2019-11-26 20:25:50', NULL),
(11, 0, NULL, '143', NULL, '11.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'black-plums', 0, 1, 9999, '2019-11-26 20:30:10', NULL),
(12, 0, NULL, '144', NULL, '9.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'broccoli-crowns', 0, 1, 9999, '2019-11-28 06:58:40', NULL),
(13, 0, NULL, '145', NULL, '16.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'cucumber', 0, 1, 9999, '2019-11-28 07:05:50', NULL),
(14, 0, NULL, '146', NULL, '19.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'gala-apples', 0, 1, 9999, '2019-11-28 07:17:15', NULL),
(15, 0, NULL, '147', NULL, '17.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'garlic-bundle', 0, 1, 9999, '2019-11-28 07:21:20', NULL),
(16, 0, NULL, '148', NULL, '12.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'green-seedless-grapes', 0, 1, 9999, '2019-11-27 19:40:10', NULL),
(17, 0, NULL, '149', NULL, '13.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'iceberg-lettuce', 0, 1, 9999, '2019-11-27 19:46:40', NULL),
(18, 0, NULL, '150', NULL, '23.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'navel-oranges', 0, 1, 9999, '2019-11-27 19:48:23', NULL),
(19, 0, NULL, '151', NULL, '22.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'organic-bananas-bunch', 0, 1, 9999, '2019-11-27 19:50:32', NULL),
(20, 0, NULL, '152', NULL, '17.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'organic-strawberries', 0, 1, 9999, '2019-11-27 19:56:22', '2019-11-27 19:58:05'),
(21, 0, NULL, '153', NULL, '19.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'red-bell-pepper', 0, 1, 9999, '2019-11-27 20:05:53', NULL),
(22, 0, NULL, '154', NULL, '26.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'red-onion', 0, 1, 9999, '2019-11-27 20:14:20', NULL),
(23, 0, NULL, '155', NULL, '23.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'roma-tomatoes', 0, 1, 9999, '2019-11-27 20:17:34', NULL),
(24, 0, NULL, '156', NULL, '35.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'beef-stew-meat', 0, 1, 9999, '2019-11-27 20:22:09', NULL),
(25, 0, NULL, '157', NULL, '31.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'cooked-peeled', 0, 1, 9999, '2019-11-27 20:27:44', NULL),
(26, 0, NULL, '158', NULL, '38.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'economy-chicken-drumsticks', 0, 1, 9999, '2019-11-29 05:10:29', NULL),
(27, 0, NULL, '160', NULL, '32.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'peeled-deveined-tail', 0, 1, 9999, '2019-12-02 02:57:30', NULL),
(28, 0, NULL, '161', NULL, '33.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'trout-fillets', 0, 1, 9999, '2019-12-02 02:59:15', NULL),
(29, 0, NULL, '163', NULL, '20.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'cheese-tortilla-chips', 0, 1, 9999, '2019-12-02 03:06:17', NULL),
(30, 0, NULL, '164', NULL, '24.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ginger-root', 0, 1, 9999, '2019-12-02 03:11:00', NULL),
(31, 0, NULL, '165', NULL, '26.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kit-kat-white-creme-wafer', 0, 1, 9999, '2019-12-02 03:15:47', NULL),
(32, 0, NULL, '166', NULL, '27.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'milk-chocolate-candies', 0, 1, 9999, '2019-12-02 03:19:38', NULL),
(33, 0, NULL, '167', NULL, '28.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'naked-pita-chips', 0, 1, 9999, '2019-12-02 03:23:39', NULL),
(34, 0, NULL, '168', NULL, '29.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'mixed-berry-fruity-snacks-pouches', 0, 1, 9999, '2019-12-02 03:29:23', NULL),
(35, 0, NULL, '169', NULL, '30.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'party-size-crackers', 0, 1, 9999, '2019-12-02 03:31:56', NULL),
(36, 0, NULL, '170', NULL, '32.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'pillsbury-cinnamon-rolls', 0, 1, 9999, '2019-12-02 03:39:20', NULL),
(37, 0, NULL, '121', NULL, '123.00', '2020-01-01 00:00:01', NULL, NULL, '500.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'up-coming', 0, 1, 9999, '2019-12-02 06:06:36', '2020-06-05 06:10:14'),
(38, 0, NULL, '211', NULL, '35.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'flower-mushroom', 0, 1, 9999, '2020-04-27 21:52:37', NULL),
(39, 0, NULL, '215', NULL, '49.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'jambul', 0, 1, 9999, '2020-04-27 21:56:20', NULL),
(40, 0, NULL, '217', NULL, '52.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'plum', 0, 1, 9999, '2020-04-27 21:58:09', NULL),
(41, 0, NULL, '220', NULL, '26.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'coriander', 0, 1, 9999, '2020-04-27 22:08:08', NULL),
(42, 0, NULL, '224', NULL, '33.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'brown-rice', 0, 1, 9999, '2020-04-27 22:11:44', NULL),
(43, 0, NULL, '227', NULL, '19.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'cherry', 0, 1, 9999, '2020-04-27 22:13:34', NULL),
(44, 0, NULL, '230', NULL, '36.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'horse-gram', 0, 1, 9999, '2020-04-27 22:16:09', NULL),
(45, 0, NULL, '232', NULL, '44.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'oat-flakes', 0, 1, 9999, '2020-04-27 22:17:46', NULL),
(46, 0, NULL, '235', NULL, '51.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'wheat', 0, 1, 9999, '2020-04-27 22:19:33', NULL),
(47, 0, NULL, '238', NULL, '33.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'brown-onion', 0, 1, 9999, '2020-04-27 22:22:06', NULL),
(48, 0, NULL, '242', NULL, '41.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'brussels', 0, 1, 9999, '2020-04-27 22:23:29', NULL),
(49, 0, NULL, '244', NULL, '32.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'fresh-pea-sprouts', 0, 1, 9999, '2020-04-27 22:24:46', NULL),
(50, 0, NULL, '247', NULL, '22.00', '2020-01-01 00:00:01', NULL, NULL, '1000.00', 'Gram', 1, 1, 0, NULL, 0, 1, 0, 0, 'lettuce', 0, 1, 9999, '2020-04-27 22:26:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE `products_description` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `products_name` varchar(64) NOT NULL DEFAULT '',
  `products_description` text DEFAULT NULL,
  `products_url` varchar(191) DEFAULT NULL,
  `products_viewed` int(11) DEFAULT 0,
  `products_left_banner` text DEFAULT NULL,
  `products_left_banner_start_date` int(11) DEFAULT NULL,
  `products_left_banner_expire_date` int(11) DEFAULT NULL,
  `products_right_banner` text DEFAULT NULL,
  `products_right_banner_start_date` int(11) DEFAULT NULL,
  `products_right_banner_expire_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(1, 1, 1, 'Coca-Cola Soda', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(2, 1, 2, 'كوكاكولا الصودا', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(3, 2, 1, 'Gold Peak Sweet Tea', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(4, 2, 2, 'الذهب الذروة الحلو الشاي', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(5, 3, 1, 'Great Value 100% Apple Juice', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 2, 'قيمة كبيرة 100 ٪ عصير التفاح', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 4, 1, 'Milk Chocolate Hot Cocoa Mix', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 4, 2, 'شوكولا حليب خليط الكاكاو الساخن', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 5, 1, 'Roast Ground Coffee', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 5, 2, 'البن المحمص المطحون', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 6, 1, 'Blueberry Soft & Chewy Pre-Sliced Bagels', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 6, 2, 'عنبية لينة وخجول قبل شرائح الخبز', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 7, 1, 'COFFEE MATE Sugar Free', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 7, 2, 'قهوة ماتي خالية من السكر', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 8, 1, 'Frigo Cheese Heads', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 8, 2, 'فريجو جبنة رؤساء', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 9, 1, 'Lowfat Vanilla Yogurt', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 9, 2, 'لفات زبدة الفانيلا', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 10, 1, 'Marketside Large Brown Eggs', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 10, 2, 'جانب السوق بيض بني كبير', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 11, 1, 'Black plums', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 11, 2, 'الخوخ الأسود', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 12, 1, 'Broccoli Crowns', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 12, 2, 'التيجان القرنبيط', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 13, 1, 'Cucumber', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 13, 2, 'خيار', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 14, 1, 'Gala Apples', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 14, 2, 'حفل التفاح', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 15, 1, 'Garlic-bundle', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 15, 2, 'الثوم حزمة', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 16, 1, 'Green Seedless Grapes', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 16, 2, 'عنب أخضر بدون بذور', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 17, 1, 'Iceberg Lettuce', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 17, 2, 'جبل الجليد الخس', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 18, 1, 'Navel Oranges', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 18, 2, 'البرتقال السرة', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 19, 1, 'Organic Bananas Bunch', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 19, 2, 'بانش عضويه بانش', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 20, 1, 'Organic Strawberries', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(40, 20, 2, 'الفراولة العضوية', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(41, 21, 1, 'Red Bell Pepper', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 21, 2, 'الفلفل الأحمر', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 22, 1, 'Red-onion', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 22, 2, 'بصل أحمر', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 23, 1, 'Roma Tomatoes', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 23, 2, 'طماطم روما', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 24, 1, 'Beef Stew Meat', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 24, 2, 'لحم بقر يخنة', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 25, 1, 'Cooked & Peeled', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 25, 2, 'مطبوخ ومقشر', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 26, 1, 'Economy Chicken Drumsticks', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 26, 2, 'أفخاذ الدجاج الاقتصادية', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 27, 1, 'Peeled & Deveined Tail', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 27, 2, 'ذيل مقشر و ديفينيد', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 28, 1, 'Trout fillets', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 28, 2, 'فيليه سمك السلمون المرقط', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 29, 1, 'Cheese Tortilla Chips', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 29, 2, 'رقائق تورتيلا بالجبنة', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 30, 1, 'Ginger Root', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(60, 30, 2, 'جذر الزنجبيل', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 31, 1, 'Kit Kat White Creme Wafer', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 31, 2, 'كيت كات وايت كريم رقاقة', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 32, 1, 'Milk Chocolate Candies', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 32, 2, 'حلويات شوكولاتة الحليب', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 33, 1, 'Naked Pita Chips', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 33, 2, 'رقائق بيتا عارية', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 34, 1, 'Mixed Berry Fruity Snacks Pouches', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 34, 2, 'مختلطة بيري فاكهي وجبات خفيفة الحقائب', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 35, 1, 'Party Size Crackers', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 35, 2, 'المفرقعات حجم الحزب', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 36, 1, 'Pillsbury Cinnamon Rolls', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 36, 2, 'بيلزبري رولز القرفة', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />\r\nعلي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 37, 1, 'Up Coming', '<p>Up Coming&nbsp;Up Coming&nbsp;Up Coming&nbsp;Up Coming&nbsp;Up Coming</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(74, 37, 2, 'شحن سريع عالمي سريع', '<p>Up ComingUp ComingUp ComingUp ComingUp ComingUp Coming</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(75, 38, 1, 'Flower Mushroom', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 38, 2, 'فطر الزهور', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 39, 1, 'Jambul', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 39, 2, 'جامبول', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 40, 1, 'Plum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat...</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 40, 2, 'وظيفة محترمة', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 41, 1, 'Coriander', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat...</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 41, 2, 'كزبرة', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 42, 1, 'Brown Rice', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat...</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 42, 2, 'أرز بني', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 43, 1, 'Cherry', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat...</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 43, 2, 'كرز', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 44, 1, 'Horse Gram', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat...</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 44, 2, 'غرام الحصان', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 45, 1, 'Oat Flakes', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat...</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 45, 2, 'رقائق الشوفان', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 46, 1, 'Wheat', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat...</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 46, 2, 'قمح', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 47, 1, 'Brown Onion', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat...</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 47, 2, 'بصل بني', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 48, 1, 'Brussels', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat...</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 48, 2, 'بروكسل', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 49, 1, 'Fresh Pea Sprouts', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat...</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(98, 49, 2, 'براعم البازلاء الطازجة', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 50, 1, 'Lettuce', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat...</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 50, 2, 'الخس', '<p>ان هُزم لعدم أدنى قام, ودول شدّت عن جُل. عن حين تاريخ والكساد, عدد إذ تحرّك قتيل،. أي ولم تعداد مقاومة, فاتّبع الساحة عدد إذ, قِبل الأول الأرضية أم تعد. خطّة وإعلان بلا أي. بـ وزارة جزيرتي حدى.</p>\r\n\r\n<p>بأيدي لبولندا، بـ أخذ, و دون مقاطعة للأراضي. بـ الثقيل بأضرار والمعدات مكن. لغزو الغالي الإقتصادي دول من, الضروري شموليةً بـ بعد. كل لفشل علاقة كان. تعد أن الصين وبالتحديد،.</p>\r\n\r\n<p>ويعزى الشتوية الأوروبيّون عرض من. شعار بتحدّي الأهداف ان لها, وبغطاء العالمي إذ به،. لكون مليارات المزيفة أخذ أن, هنا؟ أطراف تكتيكاً بال أن. أصقاع بأضرار بلا أن, مع كانت الصفحات لإنعدام وفي, أمدها وعُرفت وإيطالي بلا بل.</p>\r\n\r\n<p>مرجع واندونيسيا، بها عل. كل ذات المدن المشترك وبولندا, اتّجة اقتصادية حيث هو. الثقيل الشّعبين أضف عل, جعل أم بسبب الإطلاق. عن دون بزمام مواقعها, عن شيء بشرية بالمحور التغييرات, مكن قد الله شواطيء استمرار. للسيطرة تغييرات الإتحاد ٣٠ دول. وبحلول والديون المبرمة بعض مع, جهة عليها العالم التجارية إذ.</p>\r\n\r\n<p>مع واستمر الأوروبي بحث, وزارة فرنسا الأول بل أسر. من وفي أهّل البرية وتنامت, هو وفي معارضة وقدّموا واشتدّت. عرض هو وايرلندا الجديدة،. أخر مع إبّان العالم التقليدية. ودول لهيمنة هذا عن. دار بـ تصفح سليمان، الشتاء،, إذ يتسنّى ومطالبة شيء. تم هذا والتي الغالي الأوروبية, أن حتى قدما شاسعة التحالف.</p>\r\n\r\n<p>عل دار حكومة بزمام شواطيء, ولم بداية السبب والقرى تم, فسقط ا للإتحاد وفي بـ. لم ضمنها بتحدّي ولم, بالإنزال سنغافورة لم جهة. بحق تطوير لإعلان أم. كان ٣٠ التي اتفاق, ٣٠ كان ماشاء الأرض العدّ. فقامت الأحمر الأثناء، عن أخذ, جورج وقام المزيفة أما ما. ما حدى الباهضة ومحاولة, قِبل وبعدما أضف من, بشكل اتفاقية أسر في.</p>\r\n\r\n<p>بحق لهذه لعدم بل, فسقط ايطاليا، المؤلّفة ٣٠ حيث, شيء ان بوابة التّحول. يبق جدول الخاسر الإطلاق كل, أراض الأوربيين شيء ٣٠. تم شدّت وبالتحديد، لكل, دون التنازلي الإيطالية عل. جديدة الدول ومن ثم. أمام الوراء كان قد. غير عل سقطت لدحر قِبل.</p>\r\n\r\n<p>الا وقرى استدعى اسبوعين و. دون قائمة ويتّفق التجارية قد. بل خيار اعلان تحت. دار عن عشوائية الموسوعة, ومن ما يرتبط إستيلاء وبلجيكا،, يبق الأوضاع الإمتعاض هو. لكل فقامت واشتدّت المتساقطة، هو.</p>\r\n\r\n<p>الآخر الحيلولة واندونيسيا، تحت ان. حدى ٣٠ الشرقي الإنزال. غينيا بالتوقيع تحت أي, في ذلك أحكم الشرقية التخطيط. ثم الآخر الجديدة، اليابانية بعد, ووصف كانتا تحت مع. إذ النفط الجنرال هذا, ضرب مشاركة والمانيا مع, الخاطفة لتقليعة التقليدي لمّ من. بحق مع يذكر بمحاولة, قد بحق الأراضي العمليات.</p>\r\n\r\n<p>فعل عن دأبوا الآخر, رجوعهم المجتمع عل عدد. بعد وحتى محاولات ولاتّساع لم, كل ومن أدنى الساحة. عن مما قائمة الولايات, وأزيز الشرق، الأبرياء جُل هو, تحت إذ بقصف تسمّى أطراف. إذ دارت وبعد ضمنها دون, إذ حين ماذا بالفشل, تنفّس تعديل الإتفاقية كلا لم. جعل وقرى بالإنزال و, أم جُل إعلان الغالي واعتلاء, وبعض قِبل مساعدة ولم عل. قد كلا أملاً الثانية. مدن دخول معارضة بولندا، عن, المارق واُسدل فقد إذ.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `htmlcontent` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(1, 1, '132', NULL, 1),
(2, 2, '133', NULL, 1),
(3, 3, '135', NULL, 1),
(4, 4, '134', NULL, 1),
(5, 5, '136', NULL, 1),
(6, 6, '138', NULL, 1),
(7, 7, '137', NULL, 1),
(8, 8, '140', NULL, 1),
(9, 9, '139', NULL, 1),
(10, 10, '141', NULL, 1),
(11, 11, '143', NULL, 1),
(12, 12, '144', NULL, 1),
(13, 13, '145', NULL, 1),
(14, 14, '146', NULL, 1),
(15, 15, '147', NULL, 1),
(16, 16, '148', NULL, 1),
(17, 17, '149', NULL, 1),
(18, 18, '150', NULL, 1),
(19, 19, '151', NULL, 1),
(20, 20, '152', NULL, 1),
(21, 21, '153', NULL, 1),
(22, 22, '154', NULL, 1),
(23, 23, '155', NULL, 1),
(24, 24, '156', NULL, 1),
(25, 25, '157', NULL, 1),
(26, 26, '158', NULL, 1),
(27, 27, '160', NULL, 1),
(28, 28, '161', NULL, 1),
(29, 29, '163', NULL, 1),
(30, 30, '164', NULL, 1),
(31, 31, '165', NULL, 1),
(32, 32, '166', NULL, 1),
(34, 33, '167', NULL, 1),
(35, 34, '168', NULL, 1),
(36, 35, '169', NULL, 1),
(37, 36, '170', NULL, 1),
(38, 38, '212', NULL, 1),
(39, 38, '213', NULL, 2),
(40, 39, '214', NULL, 1),
(41, 39, '216', NULL, 2),
(42, 40, '219', NULL, 1),
(43, 40, '218', NULL, 2),
(44, 41, '222', NULL, 1),
(45, 41, '221', NULL, 2),
(46, 42, '223', NULL, 1),
(47, 42, '225', NULL, 2),
(48, 43, '226', NULL, 1),
(49, 43, '228', NULL, 2),
(50, 44, '231', NULL, 1),
(51, 44, '229', NULL, 2),
(52, 45, '234', NULL, 1),
(53, 45, '233', NULL, 2),
(54, 46, '236', NULL, 1),
(55, 46, '237', NULL, 2),
(56, 47, '239', NULL, 1),
(57, 47, '240', NULL, 2),
(58, 48, '241', NULL, 1),
(59, 48, '243', NULL, 2),
(60, 49, '245', NULL, 1),
(61, 49, '246', NULL, 2),
(62, 50, '248', NULL, 1),
(63, 50, '249', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL,
  `products_options_name` varchar(32) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options_descriptions`
--

CREATE TABLE `products_options_descriptions` (
  `products_options_descriptions_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_name` varchar(191) DEFAULT NULL,
  `products_options_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_descriptions`
--

CREATE TABLE `products_options_values_descriptions` (
  `products_options_values_descriptions_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_values_name` varchar(191) NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_shipping_rates`
--

CREATE TABLE `products_shipping_rates` (
  `products_shipping_rates_id` int(11) NOT NULL,
  `weight_from` varchar(100) DEFAULT NULL,
  `weight_to` varchar(100) DEFAULT NULL,
  `weight_price` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `products_shipping_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `products_shipping_rates`
--

INSERT INTO `products_shipping_rates` (`products_shipping_rates_id`, `weight_from`, `weight_to`, `weight_price`, `unit_id`, `products_shipping_status`) VALUES
(1, '0', '10', 10, 1, 1),
(2, '10', '20', 10, 1, 1),
(3, '20', '30', 10, 1, 1),
(4, '30', '50', 50, 1, 1),
(5, '50', '100000', 70, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_to_categories_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_to_categories_id`, `products_id`, `categories_id`) VALUES
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 2),
(8, 7, 2),
(9, 8, 2),
(10, 9, 2),
(11, 10, 2),
(12, 11, 3),
(13, 12, 3),
(14, 13, 3),
(15, 14, 3),
(16, 15, 3),
(17, 16, 3),
(18, 17, 3),
(19, 18, 3),
(20, 19, 3),
(22, 20, 3),
(23, 21, 3),
(24, 22, 3),
(25, 23, 3),
(26, 24, 4),
(27, 25, 4),
(28, 26, 4),
(29, 27, 4),
(30, 28, 4),
(31, 29, 5),
(32, 30, 5),
(33, 31, 5),
(34, 32, 5),
(35, 33, 5),
(36, 34, 5),
(37, 35, 5),
(38, 36, 5),
(40, 38, 7),
(41, 39, 7),
(42, 40, 7),
(43, 41, 7),
(44, 42, 8),
(45, 43, 8),
(46, 44, 8),
(47, 45, 8),
(48, 46, 8),
(49, 47, 6),
(50, 48, 6),
(51, 49, 6),
(52, 50, 6),
(53, 1, 1),
(55, 37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(191) NOT NULL,
  `reviews_rating` int(11) DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT 0,
  `reviews_read` int(11) NOT NULL DEFAULT 0,
  `vendors_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deliveryboy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

CREATE TABLE `reviews_description` (
  `id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `reviews_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(32) NOT NULL,
  `expiry` int(10) UNSIGNED NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook_app_id', 'FB_CLIENT_ID', '2018-04-26 18:30:00', '2020-11-16 06:37:26'),
(2, 'facebook_secret_id', 'FB_SECRET_KEY', '2018-04-26 18:30:00', '2020-11-16 06:37:26'),
(3, 'facebook_login', '0', '2018-04-26 18:30:00', '2020-11-16 06:37:26'),
(4, 'contact_us_email', 'contact@your-site.com', '2018-04-26 18:30:00', '2025-10-12 02:21:31'),
(5, 'address', 'address', '2018-04-26 18:30:00', '2025-10-12 02:21:31'),
(6, 'city', 'City', '2018-04-26 18:30:00', '2025-10-12 02:21:31'),
(7, 'state', 'State', '2018-04-26 18:30:00', '2025-10-12 02:21:31'),
(8, 'zip', 'Zip', '2018-04-26 18:30:00', '2025-10-12 02:21:31'),
(9, 'country', 'Country', '2018-04-26 18:30:00', '2025-10-12 02:21:31'),
(10, 'latitude', 'Latitude', '2018-04-26 18:30:00', '2025-10-12 02:21:31'),
(11, 'longitude', 'Longitude', '2018-04-26 18:30:00', '2025-10-12 02:21:31'),
(12, 'phone_no', '+12 123 456789', '2018-04-26 18:30:00', '2025-10-12 02:21:31'),
(13, 'fcm_android', NULL, '2018-04-26 18:30:00', '2019-02-05 06:12:15'),
(14, 'fcm_ios', NULL, '2018-04-26 18:30:00', NULL),
(15, 'fcm_desktop', NULL, '2018-04-26 18:30:00', NULL),
(16, 'website_logo', 'images/media/2020/11/OimK016812.png', '2018-04-26 18:30:00', '2020-11-16 06:59:55'),
(17, 'fcm_android_sender_id', NULL, '2018-04-26 18:30:00', '2020-11-23 23:50:24'),
(18, 'fcm_ios_sender_id', NULL, '2018-04-26 18:30:00', '2019-02-05 06:12:15'),
(19, 'app_name', 'Ecommerce Solution', '2018-04-26 18:30:00', '2025-10-12 02:21:31'),
(20, 'currency_symbol', '$', '2018-04-26 18:30:00', '2018-11-19 01:56:01'),
(21, 'new_product_duration', '20', '2018-04-26 18:30:00', '2025-10-12 02:21:31'),
(22, 'notification_title', 'Ionic Ecommerce', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(23, 'notification_text', 'A bundle of products waiting for you!', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(24, 'lazzy_loading_effect', 'android', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(25, 'footer_button', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(26, 'cart_button', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(27, 'featured_category', NULL, '2018-04-26 18:30:00', NULL),
(28, 'notification_duration', 'year', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(29, 'home_style', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(30, 'wish_list_page', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(31, 'edit_profile_page', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(32, 'shipping_address_page', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(33, 'my_orders_page', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(34, 'contact_us_page', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(35, 'about_us_page', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(36, 'news_page', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(37, 'intro_page', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(38, 'setting_page', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(39, 'share_app', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(40, 'rate_app', '1', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(41, 'site_url', 'URL', '2018-04-26 18:30:00', '2018-11-19 01:56:01'),
(42, 'admob', '0', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(43, 'admob_id', 'ID', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(44, 'ad_unit_id_banner', 'Unit ID', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(45, 'ad_unit_id_interstitial', 'Indestrial', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(46, 'category_style', '4', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(47, 'package_name', 'package name', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(48, 'google_analytic_id', 'test', '2018-04-26 18:30:00', '2020-11-18 02:30:18'),
(49, 'themes', 'themeone', '2018-04-26 18:30:00', NULL),
(50, 'company_name', '#', '2018-04-26 18:30:00', '2019-10-07 04:22:24'),
(51, 'facebook_url', '#', '2018-04-26 18:30:00', '2020-11-16 07:06:05'),
(52, 'google_url', '#', '2018-04-26 18:30:00', '2020-11-16 07:06:05'),
(53, 'twitter_url', '#', '2018-04-26 18:30:00', '2020-11-16 07:06:05'),
(54, 'linked_in', '#', '2018-04-26 18:30:00', '2020-11-16 07:06:05'),
(55, 'default_notification', 'onesignal', '2018-04-26 18:30:00', '2020-11-23 23:50:24'),
(56, 'onesignal_app_id', NULL, '2018-04-26 18:30:00', '2020-11-23 23:50:24'),
(57, 'onesignal_sender_id', NULL, '2018-04-26 18:30:00', '2020-11-23 23:50:24'),
(58, 'ios_admob', '0', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(59, 'ios_admob_id', 'AdMob ID', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(60, 'ios_ad_unit_id_banner', 'Unit ID Banner', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(61, 'ios_ad_unit_id_interstitial', 'ID Interstitial', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(62, 'google_login', '0', NULL, '2020-11-16 06:37:32'),
(63, 'google_app_id', NULL, NULL, NULL),
(64, 'google_secret_id', NULL, NULL, NULL),
(65, 'google_callback_url', NULL, NULL, NULL),
(66, 'facebook_callback_url', NULL, NULL, NULL),
(67, 'is_app_purchased', '1', NULL, '2018-05-03 21:54:44'),
(68, 'is_web_purchased', '1', NULL, '2018-05-03 21:54:44'),
(69, 'consumer_key', '8372e1d916062386052577213f', NULL, '2020-11-23 23:53:25'),
(70, 'consumer_secret', 'a2eae9a51606238605f480c868', NULL, '2020-11-23 23:53:25'),
(71, 'order_email', 'orders@your-site.com', NULL, '2025-10-12 02:21:31'),
(72, 'website_themes', '1', NULL, NULL),
(73, 'seo_title', 'SEO Title', NULL, '2020-11-15 19:41:21'),
(74, 'seo_metatag', 'SEO Meta-Tag', NULL, '2020-11-15 19:41:21'),
(75, 'seo_keyword', 'SEO Keyword', NULL, '2020-11-15 19:41:21'),
(76, 'seo_description', 'SEO Description', NULL, '2020-11-15 19:41:21'),
(77, 'before_head_tag', '<style>\r\n.sticky-header .header-sticky-inner nav .navbar-collapse ul .nav-item .nav-link {\r\nfont-size: 0.675rem;\r\npadding-right: 8px !important;\r\npadding-left: 0px !important;\r\n}\r\n#carouselExampleIndicators3 .w-100 {    \r\nheight: 302px !important;\r\n}\r\n</style>', NULL, '2020-11-15 19:40:01'),
(78, 'end_body_tag', NULL, NULL, '2020-11-15 19:40:01'),
(79, 'sitename_logo', 'logo', NULL, '2020-11-16 07:06:05'),
(80, 'website_name', 'ECOMMERCE', NULL, '2020-11-16 07:06:05'),
(81, 'web_home_pages_style', 'two', NULL, '2018-11-19 01:52:25'),
(82, 'web_color_style', 'app', NULL, '2020-11-18 02:07:15'),
(83, 'free_shipping_limit', '400', NULL, '2019-10-21 02:06:53'),
(84, 'app_icon_image', 'icon', NULL, '2019-02-05 04:42:59'),
(85, 'twilio_status', '0', NULL, NULL),
(86, 'twilio_authy_api_id', NULL, NULL, NULL),
(87, 'favicon', 'images/media/2020/11/90diN16912.png', NULL, '2020-11-16 06:59:55'),
(88, 'Thumbnail_height', '150', NULL, NULL),
(89, 'Thumbnail_width', '150', NULL, NULL),
(90, 'Medium_height', '400', NULL, NULL),
(91, 'Medium_width', '400', NULL, NULL),
(92, 'Large_height', '900', NULL, NULL),
(93, 'Large_width', '900', NULL, NULL),
(94, 'environmentt', 'local', NULL, '2025-10-12 02:21:31'),
(95, 'maintenance_text', 'https://example.com', NULL, '2025-10-12 02:21:31'),
(96, 'package_charge_taxt', '0', NULL, NULL),
(97, 'order_commission', '0', NULL, NULL),
(98, 'all_items_price_included_tax', 'yes', NULL, NULL),
(99, 'all_items_price_included_tax_value', '0', NULL, NULL),
(100, 'driver_accept_multiple_order', '1', NULL, NULL),
(101, 'min_order_price', '20', NULL, '2025-10-12 02:21:31'),
(102, 'youtube_link', '0', NULL, NULL),
(103, 'external_website_link', 'http://127.0.0.1:8000/', NULL, '2025-10-12 02:21:31'),
(104, 'google_map_api', 'Google Map API', NULL, '2020-11-23 05:36:01'),
(105, 'is_pos_purchased', '0', NULL, NULL),
(106, 'admin_version', '1.0.21', NULL, NULL),
(107, 'app_version', '1.0.21', NULL, NULL),
(108, 'web_version', '1.0.21', NULL, NULL),
(109, 'pos_version', '1.0.21', NULL, NULL),
(110, 'android_app_link', '#', NULL, NULL),
(111, 'iphone_app_link', '#', NULL, NULL),
(112, 'about_content', 'About Store Text Here', NULL, '2020-11-16 07:06:05'),
(113, 'contact_content', 'Contact Us Text Here', NULL, '2020-11-16 07:06:05'),
(114, 'is_deliverboy_purchased', '1', NULL, NULL),
(115, 'fb_redirect_url', 'http://YOUR_DOMAIN_NAME/login/facebook/callback', NULL, '2020-11-16 06:37:26'),
(116, 'google_client_id', 'GOOGLE_CLIENT_ID', NULL, '2020-11-16 06:37:32'),
(117, 'google_client_secret', 'GOOGLE_SECRET_KEY', NULL, '2020-11-16 06:37:32'),
(118, 'google_redirect_url', 'http://YOUR_DOMAIN_NAME/login/google/callback', NULL, '2020-11-16 06:37:32'),
(119, 'newsletter', '0', NULL, '2020-11-16 07:14:08'),
(120, 'allow_cookies', '1', NULL, '2020-11-16 07:06:05'),
(121, 'card_style', '1', NULL, '2020-11-18 02:30:18'),
(122, 'banner_style', '1', NULL, '2020-11-18 02:30:18'),
(123, 'mail_chimp_api', NULL, NULL, '2020-11-16 07:14:08'),
(124, 'mail_chimp_list_id', NULL, NULL, '2020-11-16 07:14:08'),
(125, 'newsletter_image', 'images/media/2019/10/newsletter.jpg', NULL, '2019-11-01 01:28:36'),
(126, 'instauserid', NULL, NULL, '2020-11-23 23:52:35'),
(127, 'is_enable_location', '0', NULL, '2020-11-23 05:36:01'),
(128, 'default_latitude', 'Latitude', NULL, '2020-11-23 05:36:01'),
(129, 'default_longitude', 'Longitude', NULL, '2020-11-23 05:36:01'),
(130, 'web_card_style', '16', NULL, '2020-11-18 02:08:23'),
(131, 'auth_domain', 'Auth Domain', NULL, '2020-11-23 05:36:01'),
(132, 'database_URL', 'Database URL', NULL, '2020-11-23 05:36:01'),
(133, 'projectId', 'Project ID', NULL, '2020-11-23 05:36:01'),
(134, 'storage_bucket', 'Storage Bucket', NULL, '2020-11-23 05:36:01'),
(135, 'messaging_senderid', 'Messaging SenderID', NULL, '2020-11-23 05:36:01'),
(136, 'firebase_apikey', 'Firebase API Key', NULL, '2020-11-23 05:36:01'),
(137, 'home_categories_img_icn', 'Icon', NULL, '2020-12-09 01:56:58'),
(138, 'home_categories_records', '6', NULL, '2020-12-09 01:56:58'),
(139, 'home_category', '4,3,8', NULL, '2020-12-09 01:47:43'),
(140, 'firebase_appid', 'Firebase AppID', NULL, '2020-11-23 05:36:01'),
(141, 'maptype', 'external', NULL, '2019-11-01 01:28:36'),
(142, 'phone_login', '0', NULL, '2019-11-01 01:28:36'),
(143, 'email_login', '1', NULL, '2019-11-01 01:28:36'),
(144, 'phone_verificatio_type', 'firebase', NULL, '2019-11-01 01:28:36'),
(145, 'Inventory', '1', NULL, '2025-10-12 02:21:31'),
(146, 'share_app_url', 'http://apple.com', NULL, '2020-11-18 02:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_description`
--

CREATE TABLE `shipping_description` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `language_id` int(11) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `sub_labels` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `shipping_description`
--

INSERT INTO `shipping_description` (`id`, `name`, `language_id`, `table_name`, `sub_labels`) VALUES
(1, 'Free Shipping', 1, 'free_shipping', NULL),
(4, 'Local Pickup', 1, 'local_pickup', NULL),
(7, 'Flat Rate', 1, 'flate_rate', NULL),
(13, 'Shipping Price', 1, 'shipping_by_weight', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `shipping_methods_id` int(11) NOT NULL,
  `methods_type_link` varchar(100) NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `table_name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `methods_type_link`, `isDefault`, `status`, `table_name`) VALUES
(2, 'freeShipping', 0, 0, 'free_shipping'),
(3, 'localPickup', 0, 0, 'local_pickup'),
(4, 'flateRate', 1, 1, 'flate_rate'),
(5, 'shippingByWeight', 0, 0, 'shipping_by_weight');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_images`
--

CREATE TABLE `sliders_images` (
  `sliders_id` int(11) NOT NULL,
  `sliders_title` varchar(64) DEFAULT NULL,
  `sliders_url` varchar(191) DEFAULT NULL,
  `carousel_id` int(11) DEFAULT NULL,
  `sliders_image` varchar(191) DEFAULT NULL,
  `sliders_group` varchar(64) DEFAULT NULL,
  `sliders_html_text` text DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `languages_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sliders_images`
--

INSERT INTO `sliders_images` (`sliders_id`, `sliders_title`, `sliders_url`, `carousel_id`, `sliders_image`, `sliders_group`, `sliders_html_text`, `expires_date`, `date_added`, `status`, `type`, `date_status_change`, `languages_id`) VALUES
(1, 'Left Slider with Thumbs (770x400)', 'green-seedless-grapes', 5, '264', NULL, NULL, '2021-09-30 00:00:00', '2020-05-06 17:10:05', 1, 'product', '2020-05-06 17:10:05', 1),
(2, 'Left Slider with Thumbs (770x400)', 'coca-cola-soda', 5, '267', NULL, NULL, '2021-07-31 00:00:00', '2020-05-06 17:53:13', 1, 'product', '2020-05-06 17:53:13', 1),
(3, 'Left Slider with Thumbs (770x400)', 'coca-cola-soda', 5, '266', NULL, NULL, '2021-07-30 00:00:00', '2020-05-06 17:10:44', 1, 'product', '2020-05-06 17:10:44', 1),
(4, 'sdasdasdass', NULL, 1, '171', NULL, NULL, '2020-07-15 00:00:00', '2019-09-10 08:26:49', 1, 'product', NULL, 1),
(5, 'fdsfds', NULL, 1, '172', NULL, NULL, '2020-08-14 00:00:00', '2019-09-10 08:27:04', 1, 'product', NULL, 1),
(6, 'Full Screen Slider (1600x420)', 'coca-cola-soda', 1, '269', NULL, NULL, '2030-01-30 00:00:00', '2020-05-06 17:47:49', 1, 'product', '2020-05-06 17:47:49', 1),
(7, 'Full Page Slider (1170x420)', 'coca-cola-soda', 2, '275', NULL, NULL, '2021-05-26 00:00:00', '2020-05-07 00:40:55', 1, 'product', '2020-05-07 00:40:55', 1),
(8, 'Full Page Slider (1170x420)', 'coca-cola-soda', 2, '273', NULL, NULL, '2021-10-28 00:00:00', '2020-05-07 00:41:12', 1, 'product', '2020-05-07 00:41:12', 1),
(9, 'Full Page Slider (1170x420)', 'coca-cola-soda', 2, '262', NULL, NULL, '2021-08-31 00:00:00', '2020-05-06 17:00:26', 1, 'product', '2020-05-06 17:00:26', 1),
(10, 'Right Slider with Thumbs (770x400)', 'green-seedless-grapes', 3, '264', NULL, NULL, '2022-02-28 00:00:00', '2020-05-06 17:04:49', 1, 'product', '2020-05-06 17:04:49', 1),
(11, 'Right Slider with Thumbs (770x400)', 'coca-cola-soda', 3, '267', NULL, NULL, '2021-07-28 00:00:00', '2020-05-06 17:51:42', 1, 'product', '2020-05-06 17:51:42', 1),
(12, 'Right Slider with Thumbs (770x400)', 'coca-cola-soda', 3, '266', NULL, NULL, '2022-01-27 00:00:00', '2020-05-06 17:06:21', 1, 'product', '2020-05-06 17:06:21', 1),
(13, 'Right Slider with Navigation (770x400)', 'green-seedless-grapes', 4, '264', NULL, NULL, '2021-06-15 00:00:00', '2020-05-06 17:08:06', 1, 'product', '2020-05-06 17:08:06', 1),
(14, 'Right Slider with Navigation (770x400)', 'coca-cola-soda', 4, '267', NULL, NULL, '2021-12-29 00:00:00', '2020-05-06 17:52:13', 1, 'product', '2020-05-06 17:52:13', 1),
(15, 'Right Slider with Navigation (770x400)', 'coca-cola-soda', 4, '266', NULL, NULL, '2022-07-07 00:00:00', '2020-05-06 17:08:58', 1, 'product', '2020-05-06 17:08:58', 1),
(16, 'Left Slider with Thumbs (770x400)', 'broccoli-crowns', 5, '277', NULL, NULL, '2022-07-28 00:00:00', '2020-05-07 00:44:15', 1, 'product', '2020-05-07 00:44:15', 2),
(17, 'Left Slider with Thumbs (770x400)', 'marketside-large-brown-eggs', 5, '276', NULL, NULL, '2022-07-28 00:00:00', '2020-05-07 00:44:37', 1, 'product', '2020-05-07 00:44:37', 2),
(18, 'Left Slider with Thumbs (770x400)', 'coca-cola-soda', 5, '278', NULL, NULL, '2022-07-28 00:00:00', '2020-05-07 00:44:55', 1, 'product', '2020-05-07 00:44:55', 2),
(19, 'Full Screen Slider (1600x420)', 'blueberry-soft-chewy-pre-sliced-bagels', 1, '272', NULL, NULL, '2022-07-27 00:00:00', '2020-05-07 00:37:28', 1, 'product', '2020-05-07 00:37:28', 2),
(20, 'Full Screen Slider (1600x420)', 'coffee-mate-sugar-free', 1, '269', NULL, NULL, '2022-07-27 00:00:00', '2020-05-07 00:38:18', 1, 'product', '2020-05-07 00:38:18', 2),
(21, 'Full Screen Slider (1600x420)', 'coca-cola-soda', 1, '270', NULL, NULL, '2022-07-27 00:00:00', '2020-05-07 00:38:50', 1, 'product', '2020-05-07 00:38:50', 2),
(22, 'Full Page Slider (1170x420)', 'green-seedless-grapes', 2, '272', NULL, NULL, '2022-07-27 00:00:00', '2020-05-07 00:39:24', 1, 'product', '2020-05-07 00:39:24', 2),
(23, 'Full Page Slider (1170x420)', 'coca-cola-soda', 2, '271', NULL, NULL, '2022-07-26 00:00:00', '2020-05-07 00:40:02', 1, 'product', '2020-05-07 00:40:02', 2),
(24, 'Full Page Slider (1170x420)', 'coca-cola-soda', 2, '274', NULL, NULL, '2022-07-26 00:00:00', '2020-05-07 00:40:38', 1, 'product', '2020-05-07 00:40:38', 2),
(25, 'Right Slider with Thumbs (770x400)', 'coca-cola-soda', 3, '277', NULL, NULL, '2022-07-26 00:00:00', '2020-05-07 00:41:49', 1, 'product', '2020-05-07 00:41:49', 2),
(26, 'Right Slider with Thumbs (770x400)', 'coca-cola-soda', 3, '276', NULL, NULL, '2022-07-26 00:00:00', '2020-05-07 00:42:07', 1, 'product', '2020-05-07 00:42:07', 2),
(27, 'Right Slider with Thumbs (770x400)', 'coca-cola-soda', 3, '278', NULL, NULL, '2022-07-26 00:00:00', '2020-05-07 00:42:25', 1, 'product', '2020-05-07 00:42:25', 2),
(28, 'Right Slider with Navigation (770x400)', 'broccoli-crowns', 4, '277', NULL, NULL, '2022-07-27 00:00:00', '2020-05-07 00:43:03', 1, 'product', '2020-05-07 00:43:03', 2),
(29, 'Right Slider with Navigation (770x400)', 'coffee-mate-sugar-free', 4, '276', NULL, NULL, '2022-07-28 00:00:00', '2020-05-07 00:43:30', 1, 'product', '2020-05-07 00:43:30', 2),
(30, 'Right Slider with Navigation (770x400)', 'coca-cola-soda', 4, '278', NULL, NULL, '2022-07-28 00:00:00', '2020-05-07 00:43:47', 1, 'product', '2020-05-07 00:43:47', 2);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(11) NOT NULL,
  `specials_last_modified` int(11) NOT NULL,
  `expires_date` int(11) NOT NULL,
  `date_status_change` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) NOT NULL,
  `tax_class_description` text DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(11) DEFAULT 1,
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(191) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_offers`
--

CREATE TABLE `top_offers` (
  `top_offers_id` int(11) NOT NULL,
  `top_offers_text` text NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `top_offers`
--

INSERT INTO `top_offers` (`top_offers_id`, `top_offers_text`, `language_id`, `created_at`, `updated_at`) VALUES
(1, '<div class=\\\"pro-info\\\">\r\nGet<strong> UPTO 40% OFF </strong>on your 1st order\r\n<div class=\\\"pro-link-dropdown js-toppanel-link-dropdown\\\">\r\n<a href=\\\"/shop\\\" class=\\\"pro-dropdown-toggle\\\">\r\nMore details\r\n</a>\r\n\r\n</div>\r\n</div>', 1, '2020-02-03 23:44:16', '2020-11-19 23:59:18'),
(2, '<div class=\\\"pro-info\\\">\r\nGet<strong> UPTO 40% OFF </strong>on your 1st order\r\n<div class=\\\"pro-link-dropdown js-toppanel-link-dropdown\\\">\r\n<a href=\\\"/shop\\\" class=\\\"pro-dropdown-toggle\\\">\r\nMore details\r\n</a>\r\n\r\n</div>\r\n</div>', 1, '2020-02-03 23:44:16', '2020-11-19 23:59:18'),
(3, 'احصل على <strong> خصم يصل إلى 40٪ </ strong> على طلبك الأول\r\n<div class = \\\"pro-link-dropdown js-toppanel-link-dropdown\\\">\r\n<a href=\\\"/shop\\\" class=\\\"pro-dropdown-toggle\\\">\r\nتسوق الآن\r\n</a>\r\n</div>', 2, '2020-11-18 02:10:26', '2020-11-19 23:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `is_active`, `date_added`, `last_modified`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL),
(2, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units_descriptions`
--

CREATE TABLE `units_descriptions` (
  `units_description_id` int(10) UNSIGNED NOT NULL,
  `units_name` varchar(191) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `units_descriptions`
--

INSERT INTO `units_descriptions` (`units_description_id`, `units_name`, `languages_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 'Piece', 1, 1, NULL, NULL),
(2, 'Piece(Ar)', 2, 1, NULL, NULL),
(3, 'Lot', 1, 2, NULL, NULL),
(4, 'Lot(Ar)', 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

CREATE TABLE `ups_shipping` (
  `ups_id` int(11) NOT NULL,
  `pickup_method` varchar(191) NOT NULL,
  `isDisplayCal` varchar(191) NOT NULL,
  `serviceType` varchar(191) NOT NULL,
  `shippingEnvironment` varchar(191) NOT NULL,
  `user_name` varchar(191) NOT NULL,
  `access_key` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `person_name` varchar(191) NOT NULL,
  `company_name` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `address_line_1` varchar(191) NOT NULL,
  `address_line_2` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `state` varchar(191) NOT NULL,
  `post_code` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `no_of_package` varchar(191) NOT NULL,
  `parcel_height` varchar(191) NOT NULL,
  `parcel_width` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `default_address_id` int(11) NOT NULL DEFAULT 0,
  `country_code` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT '1',
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(191) DEFAULT NULL,
  `auth_id_tiwilo` varchar(191) DEFAULT NULL,
  `dob` varchar(33) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_name`, `first_name`, `last_name`, `gender`, `default_address_id`, `country_code`, `phone`, `email`, `password`, `avatar`, `status`, `is_seen`, `phone_verified`, `remember_token`, `auth_id_tiwilo`, `dob`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'Saqib', 'Ali', NULL, 0, NULL, NULL, 'admin@gmail.com', '$2y$10$KKXQdA4aN9lPOrhuaGsfper3E5vw/qGR9TBIRQ3Ps66mRTcjQ4Xwu', NULL, '1', 0, 0, NULL, NULL, NULL, '2020-11-27 12:30:19', '2020-11-27 12:30:19'),
(2, 3, 'admin', 'admin', 'admin', NULL, 0, NULL, NULL, 'admin1@gmail.com', '$2y$10$KKXQdA4aN9lPOrhuaGsfper3E5vw/qGR9TBIRQ3Ps66mRTcjQ4Xwu', NULL, '1', 0, 0, NULL, NULL, NULL, '2020-11-27 12:30:19', '2020-11-27 12:30:19'),
(3, 1, 'admin', 'admin', 'admin', NULL, 0, NULL, NULL, 'saqi628@gmail.com', '$2y$10$SdVvEMyVSy49ZFFFAekEOOaktMYU24VDVqyeeT0DrDn0ESTHPHI6W', NULL, '1', 0, 0, NULL, NULL, NULL, '2020-11-28 13:09:35', '2020-11-28 13:09:35'),
(4, 1, 'admin', 'admin', 'admin', NULL, 0, NULL, NULL, 'demo2@ecommerce.com', '$2y$10$LcGJk/1kFjOfGHLhH8J1G.Q4RZ6SPPERvYuVfV5191mDHnqmfFz1O', NULL, '1', 0, 0, NULL, NULL, NULL, '2020-11-28 13:09:35', '2020-11-28 13:09:35'),
(5, 1, 'admin', 'Gupta', 'Gupta', '0', 0, NULL, '08931833660', 'herodheeraj8931@gmail.com', '$2y$10$KKXQdA4aN9lPOrhuaGsfper3E5vw/qGR9TBIRQ3Ps66mRTcjQ4Xwu', NULL, '1', 1, 0, NULL, NULL, '27/05/2026', '2026-05-30 01:39:51', '2026-05-30 01:39:51'),
(6, 2, NULL, 'all', 'all', 'all', 0, NULL, 'all', 'dheeraj@gmail.com', '$2y$10$lgk.ETPkIo93XBZxxDIZoOtp1WMtWqRH5aULbCkiBFn5YaxnVU4ii', NULL, '1', 0, 0, NULL, NULL, NULL, '2026-05-30 04:27:04', NULL),
(7, 14, 'Mega Departmetal_Store1782465587', 'Mega Departmetal', 'Store', NULL, 0, NULL, '6387990382', 'megastore1@gmail.com', '$2y$10$hs5sU.s4LraAHT.HSt9/3..oz4LjSIfBh5MhAzMUbZTphgdt7wJTm', '', '1', 0, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_balance`
--

CREATE TABLE `users_balance` (
  `users_balance_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `transaction_type` varchar(5) NOT NULL COMMENT 'in: debit, credit:out',
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_to_address`
--

CREATE TABLE `user_to_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_book_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user_to_address`
--

INSERT INTO `user_to_address` (`id`, `user_id`, `address_book_id`, `is_default`) VALUES
(1, 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `user_types_id` int(11) NOT NULL,
  `user_types_name` varchar(191) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_types_id`, `user_types_name`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Super Admin', 1534774230, NULL, 1),
(2, 'Customers', 1534777027, NULL, 1),
(3, 'Vendors', 1538390209, NULL, 1),
(4, 'Delivery Guy', 1542965906, NULL, 1),
(5, 'Test 1', 1542965906, NULL, 1),
(6, 'Test 2', 1542965906, NULL, 1),
(7, 'Test 3', 1542965906, NULL, 1),
(8, 'Test 4', 1542965906, NULL, 1),
(9, 'Test 5', 1542965906, NULL, 1),
(10, 'Test 6', 1542965906, NULL, 1),
(11, 'Admin', 1542965906, NULL, 1),
(12, 'Manager', 1542965906, NULL, 1),
(13, 'Data Entry', 1542965906, NULL, 1),
(14, 'Store Admin', 1782465347, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `full_name` varchar(191) NOT NULL,
  `session_id` varchar(128) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `time_entry` varchar(14) NOT NULL,
  `time_last_click` varchar(14) NOT NULL,
  `last_page_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(10) UNSIGNED NOT NULL,
  `zone_name` varchar(191) NOT NULL,
  `zone_country_id` int(10) UNSIGNED NOT NULL,
  `zone_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_name`, `zone_country_id`, `zone_code`, `created_at`, `updated_at`) VALUES
(1, 'Southern Nations, Nationalities, and Peoples\' Region', 70, 'SN', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(2, 'Somali Region', 70, 'SO', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(3, 'Amhara Region', 70, 'AM', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(4, 'Tigray Region', 70, 'TI', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(5, 'Oromia Region', 70, 'OR', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(6, 'Afar Region', 70, 'AF', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(7, 'Harari Region', 70, 'HA', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(8, 'Dire Dawa', 70, 'DD', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(9, 'Benishangul-Gumuz Region', 70, 'BE', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(10, 'Gambela Region', 70, 'GA', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(11, 'Addis Ababa', 70, 'AA', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(12, 'Petnjica Municipality', 147, '23', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(13, 'Bar Municipality', 147, '02', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(14, 'Danilovgrad Municipality', 147, '07', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(15, 'Rožaje Municipality', 147, '17', '2019-10-05 12:18:35', '2020-05-01 07:41:52'),
(16, 'Plužine Municipality', 147, '15', '2019-10-05 12:18:35', '2020-05-01 07:41:52'),
(17, 'Nikšić Municipality', 147, '12', '2019-10-05 12:18:35', '2020-05-01 07:41:52'),
(18, 'Šavnik Municipality', 147, '18', '2019-10-05 12:18:35', '2020-05-01 07:41:52'),
(19, 'Plav Municipality', 147, '13', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(20, 'Pljevlja Municipality', 147, '14', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(21, 'Berane Municipality', 147, '03', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(22, 'Mojkovac Municipality', 147, '11', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(23, 'Andrijevica Municipality', 147, '01', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(24, 'Gusinje Municipality', 147, '22', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(25, 'Bijelo Polje Municipality', 147, '04', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(26, 'Kotor Municipality', 147, '10', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(27, 'Podgorica Municipality', 147, '16', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(28, 'Old Royal Capital Cetinje', 147, '06', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(29, 'Tivat Municipality', 147, '19', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(30, 'Budva Municipality', 147, '05', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(31, 'Kolašin Municipality', 147, '09', '2019-10-05 12:18:35', '2020-05-01 07:41:52'),
(32, 'Žabljak Municipality', 147, '21', '2019-10-05 12:18:35', '2020-05-01 07:41:52'),
(33, 'Ulcinj Municipality', 147, '20', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(34, 'Kunene Region', 152, 'KU', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(35, 'Kavango West Region', 152, 'KW', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(36, 'Kavango East Region', 152, 'KE', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(37, 'Oshana Region', 152, 'ON', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(38, 'Hardap Region', 152, 'HA', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(39, 'Omusati Region', 152, 'OS', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(40, 'Ohangwena Region', 152, 'OW', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(41, 'Omaheke Region', 152, 'OH', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(42, 'Oshikoto Region', 152, 'OT', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(43, 'Erongo Region', 152, 'ER', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(44, 'Khomas Region', 152, 'KH', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(45, 'Karas Region', 152, 'KA', '2019-10-05 12:18:35', '2019-10-05 12:18:35'),
(46, 'Otjozondjupa Region', 152, 'OD', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(47, 'Zambezi Region', 152, 'CA', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(48, 'Ashanti Region', 83, 'AH', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(49, 'Western Region', 83, 'WP', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(50, 'Eastern Region', 83, 'EP', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(51, 'Northern Region', 83, 'NP', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(52, 'Central Region', 83, 'CP', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(53, 'Brong-Ahafo Region', 83, 'BA', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(54, 'Greater Accra Region', 83, 'AA', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(55, 'Upper East Region', 83, 'UE', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(56, 'Volta Region', 83, 'TV', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(57, 'Upper West Region', 83, 'UW', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(58, 'San Marino', 192, '07', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(59, 'Acquaviva', 192, '01', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(60, 'Chiesanuova', 192, '02', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(61, 'Borgo Maggiore', 192, '06', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(62, 'Faetano', 192, '04', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(63, 'Montegiardino', 192, '08', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(64, 'Domagnano', 192, '03', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(65, 'Serravalle', 192, '09', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(66, 'Fiorentino', 192, '05', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(67, 'Tillabéri Region', 160, '6', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(68, 'Dosso Region', 160, '3', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(69, 'Zinder Region', 160, '7', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(70, 'Maradi Region', 160, '4', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(71, 'Agadez Region', 160, '1', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(72, 'Diffa Region', 160, '2', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(73, 'Tahoua Region', 160, '5', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(74, 'Mqabba', 135, '33', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(75, 'San Ġwann', 135, '49', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(76, 'Żurrieq', 135, '68', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(77, 'Luqa', 135, '25', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(78, 'Marsaxlokk', 135, '28', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(79, 'Qala', 135, '42', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(80, 'Żebbuġ Malta', 135, '66', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(81, 'Xgħajra', 135, '63', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(82, 'Kirkop', 135, '23', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(83, 'Rabat', 135, '46', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(84, 'Floriana', 135, '09', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(85, 'Żebbuġ Gozo', 135, '65', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(86, 'Swieqi', 135, '57', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(87, 'Saint Lawrence', 135, '50', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(88, 'Birżebbuġa', 135, '05', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(89, 'Mdina', 135, '29', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(90, 'Santa Venera', 135, '54', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(91, 'Kerċem', 135, '22', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(92, 'Għarb', 135, '14', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(93, 'Iklin', 135, '19', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(94, 'Santa Luċija', 135, '53', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(95, 'Valletta', 135, '60', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(96, 'Msida', 135, '34', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(97, 'Birkirkara', 135, '04', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(98, 'Siġġiewi', 135, '55', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(99, 'Kalkara', 135, '21', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(100, 'St. Julian\'s', 135, '48', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(101, 'Victoria', 135, '45', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(102, 'Mellieħa', 135, '30', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(103, 'Tarxien', 135, '59', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(104, 'Sliema', 135, '56', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(105, 'Ħamrun', 135, '18', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(106, 'Għasri', 135, '16', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(107, 'Birgu', 135, '03', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(108, 'Balzan', 135, '02', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(109, 'Mġarr', 135, '31', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(110, 'Attard', 135, '01', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(111, 'Qrendi', 135, '44', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(112, 'Naxxar', 135, '38', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(113, 'Gżira', 135, '12', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(114, 'Xagħra', 135, '61', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(115, 'Paola', 135, '39', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(116, 'Sannat', 135, '52', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(117, 'Dingli', 135, '07', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(118, 'Gudja', 135, '11', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(119, 'Qormi', 135, '43', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(120, 'Għargħur', 135, '15', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(121, 'Xewkija', 135, '62', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(122, 'Ta\' Xbiex', 135, '58', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(123, 'Żabbar', 135, '64', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(124, 'Għaxaq', 135, '17', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(125, 'Pembroke', 135, '40', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(126, 'Lija', 135, '24', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(127, 'Pietà', 135, '41', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(128, 'Marsa', 135, '26', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(129, 'Fgura', 135, '08', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(130, 'Għajnsielem', 135, '13', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(131, 'Mtarfa', 135, '35', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(132, 'Munxar', 135, '36', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(133, 'Nadur', 135, '37', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(134, 'Fontana', 135, '10', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(135, 'Żejtun', 135, '67', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(136, 'Senglea', 135, '20', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(137, 'Marsaskala', 135, '27', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(138, 'Cospicua', 135, '06', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(139, 'St. Paul\'s Bay', 135, '51', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(140, 'Mosta', 135, '32', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(141, 'Mangystau Region', 112, 'MAN', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(142, 'Kyzylorda Region', 112, 'KZY', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(143, 'Almaty Region', 112, 'ALM', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(144, 'North Kazakhstan Region', 112, 'SEV', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(145, 'Akmola Region', 112, 'AKM', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(146, 'Pavlodar Region', 112, 'PAV', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(147, 'Jambyl Region', 112, 'ZHA', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(148, 'West Kazakhstan Province', 112, 'ZAP', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(149, 'Turkestan Region', 112, 'YUZ', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(150, 'Karaganda Region', 112, 'KAR', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(151, 'Aktobe Region', 112, 'AKT', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(152, 'Almaty', 112, 'ALA', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(153, 'Atyrau Region', 112, 'ATY', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(154, 'East Kazakhstan Region', 112, 'VOS', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(155, 'Baikonur', 112, 'BAY', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(156, 'Nur-Sultan', 112, 'AST', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(157, 'Kostanay Region', 112, 'KUS', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(158, 'Kakamega County', 113, '11', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(159, 'Kisii County', 113, '16', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(160, 'Central Province', 113, '200', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(161, 'Busia County', 113, '04', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(162, 'North Eastern Province', 113, '500', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(163, 'Embu County', 113, '06', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(164, 'Laikipia County', 113, '20', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(165, 'Nandi District', 113, '32', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(166, 'Lamu County', 113, '21', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(167, 'Kirinyaga County', 113, '15', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(168, 'Bungoma County', 113, '03', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(169, 'Uasin Gishu District', 113, '44', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(170, 'Isiolo County', 113, '09', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(171, 'Kisumu County', 113, '17', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(172, 'Coast Province', 113, '300', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(173, 'Kwale County', 113, '19', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(174, 'Kilifi County', 113, '14', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(175, 'Narok County', 113, '33', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(176, 'Taita–Taveta County', 113, '39', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(177, 'Western Province', 113, '800', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(178, 'Muranga County', 113, '29', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(179, 'Rift Valley Province', 113, '700', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(180, 'Nyeri County', 113, '36', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(181, 'Baringo County', 113, '01', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(182, 'Wajir County', 113, '46', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(183, 'Trans-Nzoia District', 113, '42', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(184, 'Machakos County', 113, '22', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(185, 'Tharaka Nithi County', 113, '41', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(186, 'Siaya County', 113, '38', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(187, 'Mandera County', 113, '24', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(188, 'Makueni County', 113, '23', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(189, 'Eastern Province', 113, '400', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(190, 'Migori County', 113, '27', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(191, 'Nairobi', 113, '110', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(192, 'Nyandarua County', 113, '35', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(193, 'Kericho County', 113, '12', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(194, 'Marsabit County', 113, '25', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(195, 'Homa Bay County', 113, '08', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(196, 'Garissa County', 113, '07', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(197, 'Kajiado County', 113, '10', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(198, 'Meru County', 113, '26', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(199, 'Kiambu County', 113, '13', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(200, 'Mombasa County', 113, '28', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(201, 'Elgeyo-Marakwet County', 113, '05', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(202, 'Vihiga District', 113, '45', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(203, 'Nakuru District', 113, '31', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(204, 'Nyanza Province', 113, '600', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(205, 'Tana River County', 113, '40', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(206, 'Turkana County', 113, '43', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(207, 'Samburu County', 113, '37', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(208, 'West Pokot County', 113, '47', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(209, 'Nyamira District', 113, '34', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(210, 'Bomet County', 113, '02', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(211, 'Kitui County', 113, '18', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(212, 'Bié Province', 7, 'BIE', '2019-10-05 12:18:36', '2020-05-01 07:41:51'),
(213, 'Huambo Province', 7, 'HUA', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(214, 'Zaire Province', 7, 'ZAI', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(215, 'Cunene Province', 7, 'CNN', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(216, 'Cuanza Sul', 7, 'CUS', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(217, 'Cuanza Norte Province', 7, 'CNO', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(218, 'Benguela Province', 7, 'BGU', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(219, 'Moxico Province', 7, 'MOX', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(220, 'Lunda Sul Province', 7, 'LSU', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(221, 'Bengo Province', 7, 'BGO', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(222, 'Luanda Province', 7, 'LUA', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(223, 'Lunda Norte Province', 7, 'LNO', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(224, 'Uíge Province', 7, 'UIG', '2019-10-05 12:18:36', '2020-05-01 07:41:51'),
(225, 'Huíla Province', 7, 'HUI', '2019-10-05 12:18:36', '2020-05-01 07:41:51'),
(226, 'Cuando Cubango Province', 7, 'CCU', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(227, 'Malanje Province', 7, 'MAL', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(228, 'Cabinda Province', 7, 'CAB', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(229, 'Gasa District', 26, 'GA', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(230, 'Tsirang District', 26, '21', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(231, 'Wangdue Phodrang District', 26, '24', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(232, 'Haa District', 26, '13', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(233, 'Zhemgang District', 26, '34', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(234, 'Lhuntse District', 26, '44', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(235, 'Punakha District', 26, '23', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(236, 'Trashigang District', 26, '41', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(237, 'Paro District', 26, '11', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(238, 'Dagana District', 26, '22', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(239, 'Chukha District', 26, '12', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(240, 'Bumthang District', 26, '33', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(241, 'Thimphu District', 26, '15', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(242, 'Mongar District', 26, '42', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(243, 'Samdrup Jongkhar District', 26, '45', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(244, 'Pemagatshel District', 26, '43', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(245, 'Trongsa District', 26, '32', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(246, 'Samtse District', 26, '14', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(247, 'Sarpang District', 26, '31', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(248, 'Tombouctou Region', 134, '6', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(249, 'Ségou Region', 134, '4', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(250, 'Koulikoro Region', 134, '2', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(251, 'Ménaka Region', 134, '9', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(252, 'Kayes Region', 134, '1', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(253, 'Bamako', 134, 'BKO', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(254, 'Sikasso Region', 134, '3', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(255, 'Mopti Region', 134, '5', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(256, 'Taoudénit Region', 134, '10', '2019-10-05 12:18:36', '2020-05-01 07:41:52'),
(257, 'Kidal Region', 134, '8', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(258, 'Gao Region', 134, '7', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(259, 'Southern Province', 183, '05', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(260, 'Western Province', 183, '04', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(261, 'Eastern Province', 183, '02', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(262, 'Kigali district', 183, '01', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(263, 'Northern Province', 183, '03', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(264, 'Belize District', 23, 'BZ', '2019-10-05 12:18:36', '2019-10-05 12:18:36'),
(265, 'Stann Creek District', 23, 'SC', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(266, 'Corozal District', 23, 'CZL', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(267, 'Toledo District', 23, 'TOL', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(268, 'Orange Walk District', 23, 'OW', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(269, 'Cayo District', 23, 'CY', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(270, 'Príncipe Province', 193, 'P', '2019-10-05 12:18:37', '2020-05-01 07:41:52'),
(271, 'São Tomé Province', 193, 'S', '2019-10-05 12:18:37', '2020-05-01 07:41:52'),
(272, 'Havana Province', 56, '03', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(273, 'Santiago de Cuba Province', 56, '13', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(274, 'Sancti Spíritus Province', 56, '07', '2019-10-05 12:18:37', '2020-05-01 07:41:51'),
(275, 'Granma Province', 56, '12', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(276, 'Mayabeque Province', 56, '16', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(277, 'Pinar del Río Province', 56, '01', '2019-10-05 12:18:37', '2020-05-01 07:41:51'),
(278, 'Isla de la Juventud', 56, '99', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(279, 'Holguín Province', 56, '11', '2019-10-05 12:18:37', '2020-05-01 07:41:51'),
(280, 'Villa Clara Province', 56, '05', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(281, 'Las Tunas Province', 56, '10', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(282, 'Ciego de Ávila Province', 56, '08', '2019-10-05 12:18:37', '2020-05-01 07:41:51'),
(283, 'Artemisa Province', 56, '15', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(284, 'Matanzas Province', 56, '04', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(285, 'Guantánamo Province', 56, '14', '2019-10-05 12:18:37', '2020-05-01 07:41:51'),
(286, 'Camagüey Province', 56, '09', '2019-10-05 12:18:37', '2020-05-01 07:41:51'),
(287, 'Cienfuegos Province', 56, '06', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(288, 'Jigawa State', 161, 'JI', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(289, 'Enugu State', 161, 'EN', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(290, 'Kebbi State', 161, 'KE', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(291, 'Benue State', 161, 'BE', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(292, 'Sokoto State', 161, 'SO', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(293, 'Federal Capital Territory', 161, 'FC', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(294, 'Kaduna State', 161, 'KD', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(295, 'Kwara State', 161, 'KW', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(296, 'Oyo State', 161, 'OY', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(297, 'Yobe State', 161, 'YO', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(298, 'Kogi State', 161, 'KO', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(299, 'Zamfara State', 161, 'ZA', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(300, 'Kano State', 161, 'KN', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(301, 'Nasarawa State', 161, 'NA', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(302, 'Plateau State', 161, 'PL', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(303, 'Abia State', 161, 'AB', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(304, 'Akwa Ibom State', 161, 'AK', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(305, 'Bayelsa State', 161, 'BY', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(306, 'Lagos', 161, 'LA', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(307, 'Borno State', 161, 'BO', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(308, 'Imo State', 161, 'IM', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(309, 'Ekiti State', 161, 'EK', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(310, 'Gombe State', 161, 'GO', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(311, 'Ebonyi State', 161, 'EB', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(312, 'Bauchi State', 161, 'BA', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(313, 'Katsina State', 161, 'KT', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(314, 'Cross River State', 161, 'CR', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(315, 'Anambra State', 161, 'AN', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(316, 'Delta State', 161, 'DE', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(317, 'Niger State', 161, 'NI', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(318, 'Edo State', 161, 'ED', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(319, 'Taraba State', 161, 'TA', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(320, 'Adamawa State', 161, 'AD', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(321, 'Ondo State', 161, 'ON', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(322, 'Osun State', 161, 'OS', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(323, 'Ogun State', 161, 'OG', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(324, 'Rukungiri District', 229, '412', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(325, 'Kyankwanzi District', 229, '123', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(326, 'Kabarole District', 229, '405', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(327, 'Mpigi District', 229, '106', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(328, 'Apac District', 229, '302', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(329, 'Abim District', 229, '314', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(330, 'Yumbe District', 229, '313', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(331, 'Rukiga District', 229, '431', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(332, 'Northern Region', 229, 'N', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(333, 'Serere District', 229, '232', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(334, 'Kamuli District', 229, '205', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(335, 'Amuru District', 229, '316', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(336, 'Kaberamaido District', 229, '213', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(337, 'Namutumba District', 229, '224', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(338, 'Kibuku District', 229, '227', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(339, 'Ibanda District', 229, '417', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(340, 'Iganga District', 229, '203', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(341, 'Dokolo District', 229, '317', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(342, 'Lira District', 229, '307', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(343, 'Bukedea District', 229, '219', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(344, 'Alebtong District', 229, '323', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(345, 'Koboko District', 229, '319', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(346, 'Kiryandongo District', 229, '421', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(347, 'Kiboga District', 229, '103', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(348, 'Kitgum District', 229, '305', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(349, 'Bududa District', 229, '218', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(350, 'Mbale District', 229, '209', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(351, 'Namayingo District', 229, '230', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(352, 'Amuria District', 229, '216', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(353, 'Amudat District', 229, '324', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(354, 'Masindi District', 229, '409', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(355, 'Kiruhura District', 229, '419', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(356, 'Masaka District', 229, '105', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(357, 'Pakwach District', 229, '332', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(358, 'Rubanda District', 229, '429', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(359, 'Tororo District', 229, '212', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(360, 'Kamwenge District', 229, '413', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(361, 'Adjumani District', 229, '301', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(362, 'Wakiso District', 229, '113', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(363, 'Moyo District', 229, '309', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(364, 'Mityana District', 229, '115', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(365, 'Butaleja District', 229, '221', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(366, 'Gomba District', 229, '121', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(367, 'Jinja District', 229, '204', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(368, 'Kayunga District', 229, '112', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(369, 'Kween District', 229, '228', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(370, 'Western Region', 229, 'W', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(371, 'Mubende District', 229, '107', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(372, 'Eastern Region', 229, 'E', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(373, 'Kanungu District', 229, '414', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(374, 'Omoro District', 229, '331', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(375, 'Bukomansimbi District', 229, '118', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(376, 'Lyantonde District', 229, '114', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(377, 'Buikwe District', 229, '117', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(378, 'Nwoya District', 229, '328', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(379, 'Zombo District', 229, '330', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(380, 'Buyende District', 229, '226', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(381, 'Bunyangabu District', 229, '430', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(382, 'Kampala District', 229, '102', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(383, 'Isingiro District', 229, '418', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(384, 'Butambala District', 229, '119', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(385, 'Bukwo District', 229, '220', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(386, 'Bushenyi District', 229, '402', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(387, 'Bugiri District', 229, '201', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(388, 'Butebo District', 229, '233', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(389, 'Buliisa District', 229, '416', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(390, 'Otuke District', 229, '329', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(391, 'Buhweju District', 229, '420', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(392, 'Agago District', 229, '322', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(393, 'Nakapiripirit District', 229, '311', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(394, 'Kalungu District', 229, '122', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(395, 'Moroto District', 229, '308', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(396, 'Central Region', 229, 'C', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(397, 'Oyam District', 229, '321', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(398, 'Kaliro District', 229, '222', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(399, 'Kakumiro District', 229, '428', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(400, 'Namisindwa District', 229, '234', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(401, 'Kole District', 229, '325', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(402, 'Kyenjojo District', 229, '415', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(403, 'Kagadi District', 229, '427', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(404, 'Ntungamo District', 229, '411', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(405, 'Kalangala District', 229, '101', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(406, 'Nakasongola District', 229, '109', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(407, 'Sheema District', 229, '426', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(408, 'Pader District', 229, '312', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(409, 'Kisoro District', 229, '408', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(410, 'Mukono District', 229, '108', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(411, 'Lamwo District', 229, '326', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(412, 'Pallisa District', 229, '210', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(413, 'Gulu District', 229, '304', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(414, 'Buvuma District', 229, '120', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(415, 'Mbarara District', 229, '410', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(416, 'Amolatar District', 229, '315', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(417, 'Lwengo District', 229, '124', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(418, 'Mayuge District', 229, '214', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(419, 'Bundibugyo District', 229, '401', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(420, 'Katakwi District', 229, '207', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(421, 'Maracha District', 229, '320', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(422, 'Ntoroko District', 229, '424', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(423, 'Nakaseke District', 229, '116', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(424, 'Ngora District', 229, '231', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(425, 'Kumi District', 229, '208', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(426, 'Kabale District', 229, '404', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(427, 'Sembabule District', 229, '111', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(428, 'Bulambuli District', 229, '225', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(429, 'Sironko District', 229, '215', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(430, 'Napak District', 229, '327', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(431, 'Busia District', 229, '202', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(432, 'Kapchorwa District', 229, '206', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(433, 'Luwero District', 229, '104', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(434, 'Kaabong District', 229, '318', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(435, 'Mitooma District', 229, '423', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(436, 'Kibaale District', 229, '407', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(437, 'Kyegegwa District', 229, '422', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(438, 'Manafwa District', 229, '223', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(439, 'Rakai District', 229, '110', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(440, 'Kasese District', 229, '406', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(441, 'Budaka District', 229, '217', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(442, 'Rubirizi District', 229, '425', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(443, 'Kotido District', 229, '306', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(444, 'Soroti District', 229, '211', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(445, 'Luuka District', 229, '229', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(446, 'Nebbi District', 229, '310', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(447, 'Arua District', 229, '303', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(448, 'Kyotera District', 229, '125', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(449, 'Schellenberg', 125, '08', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(450, 'Schaan', 125, '07', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(451, 'Eschen', 125, '02', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(452, 'Vaduz', 125, '11', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(453, 'Ruggell', 125, '06', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(454, 'Planken', 125, '05', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(455, 'Mauren', 125, '04', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(456, 'Triesenberg', 125, '10', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(457, 'Gamprin', 125, '03', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(458, 'Balzers', 125, '01', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(459, 'Triesen', 125, '09', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(460, 'Brčko District', 28, 'BRC', '2019-10-05 12:18:37', '2020-05-01 07:41:51'),
(461, 'Tuzla Canton', 28, '03', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(462, 'Central Bosnia Canton', 28, '06', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(463, 'Herzegovina-Neretva Canton', 28, '07', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(464, 'Posavina Canton', 28, '02', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(465, 'Una-Sana Canton', 28, '01', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(466, 'Sarajevo Canton', 28, '09', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(467, 'Federation of Bosnia and Herzegovina', 28, 'BIH', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(468, 'Zenica-Doboj Canton', 28, '04', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(469, 'West Herzegovina Canton', 28, '08', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(470, 'Republika Srpska', 28, 'SRP', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(471, 'Canton 10', 28, '10', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(472, 'Bosnian Podrinje Canton', 28, '05', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(473, 'Dakar', 195, 'DK', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(474, 'Kolda', 195, 'KD', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(475, 'Kaffrine', 195, 'KA', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(476, 'Matam', 195, 'MT', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(477, 'Saint-Louis', 195, 'SL', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(478, 'Ziguinchor', 195, 'ZG', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(479, 'Fatick', 195, 'FK', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(480, 'Diourbel Region', 195, 'DB', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(481, 'Kédougou', 195, 'KE', '2019-10-05 12:18:37', '2020-05-01 07:41:52'),
(482, 'Sédhiou', 195, 'SE', '2019-10-05 12:18:37', '2020-05-01 07:41:52'),
(483, 'Kaolack', 195, 'KL', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(484, 'Thiès Region', 195, 'TH', '2019-10-05 12:18:37', '2020-05-01 07:41:52'),
(485, 'Louga', 195, 'LG', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(486, 'Tambacounda Region', 195, 'TC', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(487, 'Encamp', 6, '03', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(488, 'Andorra la Vella', 6, '07', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(489, 'Canillo', 6, '02', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(490, 'Sant Julià de Lòria', 6, '06', '2019-10-05 12:18:37', '2020-05-01 07:41:51'),
(491, 'Ordino', 6, '05', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(492, 'Escaldes-Engordany', 6, '08', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(493, 'La Massana', 6, '04', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(494, 'Mont Buxton', 197, '17', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(495, 'La Digue', 197, '15', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(496, 'Saint Louis', 197, '22', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(497, 'Baie Lazare', 197, '06', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(498, 'Mont Fleuri', 197, '18', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(499, 'Les Mamelles', 197, '24', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(500, 'Grand\'Anse Mahé', 197, '13', '2019-10-05 12:18:37', '2020-05-01 07:41:52'),
(501, 'Roche Caiman', 197, '25', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(502, 'Anse Royale', 197, '05', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(503, 'Glacis', 197, '12', '2019-10-05 12:18:37', '2019-10-05 12:18:37'),
(504, 'Grand\'Anse Praslin', 197, '14', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(505, 'Bel Ombre', 197, '10', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(506, 'Anse-aux-Pins', 197, '01', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(507, 'Port Glaud', 197, '21', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(508, 'Au Cap', 197, '04', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(509, 'Takamaka', 197, '23', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(510, 'Pointe La Rue', 197, '20', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(511, 'Plaisance', 197, '19', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(512, 'Beau Vallon', 197, '08', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(513, 'Anse Boileau', 197, '02', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(514, 'Baie Sainte Anne', 197, '07', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(515, 'Bel Air', 197, '09', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(516, 'La Rivière Anglaise', 197, '16', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(517, 'Cascade', 197, '11', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(518, 'Shaki', 16, 'SA', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(519, 'Tartar District', 16, 'TAR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(520, 'Shirvan', 16, 'SR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(521, 'Qazakh District', 16, 'QAZ', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(522, 'Sadarak District', 16, 'SAD', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(523, 'Yevlakh District', 16, 'YEV', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(524, 'Khojali District', 16, 'XCI', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(525, 'Kalbajar District', 16, 'KAL', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(526, 'Qakh District', 16, 'QAX', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(527, 'Fizuli District', 16, 'FUZ', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(528, 'Astara District', 16, 'AST', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(529, 'Shamakhi District', 16, 'SMI', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(530, 'Neftchala District', 16, 'NEF', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(531, 'Goychay', 16, 'GOY', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(532, 'Bilasuvar District', 16, 'BIL', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(533, 'Tovuz District', 16, 'TOV', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(534, 'Ordubad District', 16, 'ORD', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(535, 'Sharur District', 16, 'SAR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(536, 'Samukh District', 16, 'SMX', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(537, 'Khizi District', 16, 'XIZ', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(538, 'Yevlakh', 16, 'YE', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(539, 'Ujar District', 16, 'UCA', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(540, 'Absheron District', 16, 'ABS', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(541, 'Lachin District', 16, 'LAC', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(542, 'Qabala District', 16, 'QAB', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(543, 'Agstafa District', 16, 'AGA', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(544, 'Imishli District', 16, 'IMI', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(545, 'Salyan District', 16, 'SAL', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(546, 'Lerik District', 16, 'LER', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(547, 'Agsu District', 16, 'AGU', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(548, 'Qubadli District', 16, 'QBI', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(549, 'Kurdamir District', 16, 'KUR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(550, 'Yardymli District', 16, 'YAR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(551, 'Goranboy District', 16, 'GOR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(552, 'Baku', 16, 'BA', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(553, 'Agdash District', 16, 'AGS', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(554, 'Beylagan District', 16, 'BEY', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(555, 'Masally District', 16, 'MAS', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(556, 'Oghuz District', 16, 'OGU', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(557, 'Saatly District', 16, 'SAT', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(558, 'Lankaran District', 16, 'LA', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(559, 'Agdam District', 16, 'AGM', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(560, 'Balakan District', 16, 'BAL', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(561, 'Dashkasan District', 16, 'DAS', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(562, 'Nakhchivan Autonomous Republic', 16, 'NX', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(563, 'Quba District', 16, 'QBA', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(564, 'Ismailli District', 16, 'ISM', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(565, 'Sabirabad District', 16, 'SAB', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(566, 'Zaqatala District', 16, 'ZAQ', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(567, 'Kangarli District', 16, 'KAN', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(568, 'Martuni', 16, 'XVD', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(569, 'Barda District', 16, 'BAR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(570, 'Jabrayil District', 16, 'CAB', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(571, 'Hajigabul District', 16, 'HAC', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(572, 'Julfa District', 16, 'CUL', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(573, 'Gobustan District', 16, 'QOB', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(574, 'Goygol District', 16, 'GYG', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(575, 'Babek District', 16, 'BAB', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(576, 'Zardab District', 16, 'ZAR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(577, 'Aghjabadi District', 16, 'AGC', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(578, 'Jalilabad District', 16, 'CAL', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(579, 'Shahbuz District', 16, 'SAH', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(580, 'Mingachevir', 16, 'MI', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(581, 'Zangilan District', 16, 'ZAN', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(582, 'Sumqayit', 16, 'SM', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(583, 'Shamkir District', 16, 'SKR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(584, 'Siazan District', 16, 'SIY', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(585, 'Ganja', 16, 'GA', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(586, 'Shaki District', 16, 'SAK', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(587, 'Lankaran', 16, 'LAN', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(588, 'Qusar District', 16, 'QUS', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(589, 'Gədəbəy', 16, 'GAD', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(590, 'Khachmaz District', 16, 'XAC', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(591, 'Shabran District', 16, 'SBN', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(592, 'Shusha District', 16, 'SUS', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(593, 'Skrapar District', 3, 'SK', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(594, 'Kavajë District', 3, 'KA', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(595, 'Lezhë District', 3, 'LE', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(596, 'Librazhd District', 3, 'LB', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(597, 'Korçë District', 3, 'KO', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(598, 'Elbasan County', 3, '03', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(599, 'Lushnjë District', 3, 'LU', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(600, 'Has District', 3, 'HA', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(601, 'Kukës County', 3, '07', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(602, 'Malësi e Madhe District', 3, 'MM', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(603, 'Berat County', 3, '01', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(604, 'Gjirokastër County', 3, '05', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(605, 'Dibër District', 3, 'DI', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(606, 'Pogradec District', 3, 'PG', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(607, 'Bulqizë District', 3, 'BU', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(608, 'Devoll District', 3, 'DV', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(609, 'Lezhë County', 3, '08', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(610, 'Dibër County', 3, '09', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(611, 'Shkodër County', 3, '10', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(612, 'Kuçovë District', 3, 'KC', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(613, 'Vlorë District', 3, 'VL', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(614, 'Krujë District', 3, 'KR', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(615, 'Tirana County', 3, '11', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(616, 'Tepelenë District', 3, 'TE', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(617, 'Gramsh District', 3, 'GR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(618, 'Delvinë District', 3, 'DL', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(619, 'Peqin District', 3, 'PQ', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(620, 'Pukë District', 3, 'PU', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(621, 'Gjirokastër District', 3, 'GJ', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(622, 'Kurbin District', 3, 'KB', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(623, 'Kukës District', 3, 'KU', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(624, 'Sarandë District', 3, 'SR', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(625, 'Përmet District', 3, 'PR', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(626, 'Shkodër District', 3, 'SH', '2019-10-05 12:18:38', '2020-05-01 07:41:51');
INSERT INTO `zones` (`zone_id`, `zone_name`, `zone_country_id`, `zone_code`, `created_at`, `updated_at`) VALUES
(627, 'Fier District', 3, 'FR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(628, 'Kolonjë District', 3, 'ER', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(629, 'Berat District', 3, 'BR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(630, 'Korçë County', 3, '06', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(631, 'Fier County', 3, '04', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(632, 'Durrës County', 3, '02', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(633, 'Tirana District', 3, 'TR', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(634, 'Vlorë County', 3, '12', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(635, 'Mat District', 3, 'MT', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(636, 'Tropojë District', 3, 'TP', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(637, 'Mallakastër District', 3, 'MK', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(638, 'Mirditë District', 3, 'MR', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(639, 'Durrës District', 3, 'DR', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(640, 'Sveti Nikole Municipality', 129, '69', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(641, 'Kratovo Municipality', 129, '43', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(642, 'Zajas Municipality', 129, '31', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(643, 'Staro Nagoričane Municipality', 129, '71', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(644, 'Češinovo-Obleševo Municipality', 129, '81', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(645, 'Debarca Municipality', 129, '22', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(646, 'Probištip Municipality', 129, '63', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(647, 'Krivogaštani Municipality', 129, '45', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(648, 'Gevgelija Municipality', 129, '18', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(649, 'Bogdanci Municipality', 129, '05', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(650, 'Vraneštica Municipality', 129, '15', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(651, 'Veles Municipality', 129, '13', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(652, 'Bosilovo Municipality', 129, '07', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(653, 'Mogila Municipality', 129, '53', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(654, 'Tearce Municipality', 129, '75', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(655, 'Demir Kapija Municipality', 129, '24', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(656, 'Aračinovo Municipality', 129, '02', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(657, 'Drugovo Municipality', 129, '28', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(658, 'Vasilevo Municipality', 129, '11', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(659, 'Lipkovo Municipality', 129, '48', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(660, 'Brvenica Municipality', 129, '08', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(661, 'Štip Municipality', 129, '83', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(662, 'Vevčani Municipality', 129, '12', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(663, 'Tetovo Municipality', 129, '76', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(664, 'Negotino Municipality', 129, '54', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(665, 'Konče Municipality', 129, '41', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(666, 'Prilep Municipality', 129, '62', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(667, 'Saraj Municipality', 129, '68', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(668, 'Želino Municipality', 129, '30', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(669, 'Mavrovo and Rostuša Municipality', 129, '50', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(670, 'Plasnica Municipality', 129, '61', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(671, 'Valandovo Municipality', 129, '10', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(672, 'Vinica Municipality', 129, '14', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(673, 'Zrnovci Municipality', 129, '33', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(674, 'Karbinci', 129, '37', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(675, 'Dolneni Municipality', 129, '27', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(676, 'Čaška Municipality', 129, '80', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(677, 'Kriva Palanka Municipality', 129, '44', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(678, 'Jegunovce Municipality', 129, '35', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(679, 'Bitola Municipality', 129, '04', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(680, 'Šuto Orizari Municipality', 129, '84', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(681, 'Karpoš Municipality', 129, '38', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(682, 'Oslomej Municipality', 129, '57', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(683, 'Kumanovo Municipality', 129, '47', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(684, 'Greater Skopje', 129, '85', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(685, 'Pehčevo Municipality', 129, '60', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(686, 'Kisela Voda Municipality', 129, '39', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(687, 'Demir Hisar Municipality', 129, '25', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(688, 'Kičevo Municipality', 129, '40', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(689, 'Vrapčište Municipality', 129, '16', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(690, 'Ilinden Municipality', 129, '34', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(691, 'Rosoman Municipality', 129, '67', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(692, 'Makedonski Brod Municipality', 129, '52', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(693, 'Gostivar Municipality', 129, '19', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(694, 'Butel Municipality', 129, '09', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(695, 'Delčevo Municipality', 129, '23', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(696, 'Novaci Municipality', 129, '55', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(697, 'Dojran Municipality', 129, '26', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(698, 'Petrovec Municipality', 129, '59', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(699, 'Ohrid Municipality', 129, '58', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(700, 'Struga Municipality', 129, '72', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(701, 'Makedonska Kamenica Municipality', 129, '51', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(702, 'Centar Municipality', 129, '77', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(703, 'Aerodrom Municipality', 129, '01', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(704, 'Čair Municipality', 129, '79', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(705, 'Lozovo Municipality', 129, '49', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(706, 'Zelenikovo Municipality', 129, '32', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(707, 'Gazi Baba Municipality', 129, '17', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(708, 'Gradsko Municipality', 129, '20', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(709, 'Radoviš Municipality', 129, '64', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(710, 'Strumica Municipality', 129, '73', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(711, 'Studeničani Municipality', 129, '74', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(712, 'Resen Municipality', 129, '66', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(713, 'Kavadarci Municipality', 129, '36', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(714, 'Kruševo Municipality', 129, '46', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(715, 'Čučer-Sandevo Municipality', 129, '82', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(716, 'Berovo Municipality', 129, '03', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(717, 'Rankovce Municipality', 129, '65', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(718, 'Novo Selo Municipality', 129, '56', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(719, 'Sopište Municipality', 129, '70', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(720, 'Centar Župa Municipality', 129, '78', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(721, 'Bogovinje Municipality', 129, '06', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(722, 'Gjorče Petrov Municipality', 129, '29', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(723, 'Kočani Municipality', 129, '42', '2019-10-05 12:18:38', '2020-05-01 07:41:52'),
(724, 'Požega-Slavonia County', 55, '11', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(725, 'Split-Dalmatia County', 55, '17', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(726, 'Međimurje County', 55, '20', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(727, 'Zadar County', 55, '13', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(728, 'Dubrovnik-Neretva County', 55, '19', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(729, 'Krapina-Zagorje County', 55, '02', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(730, 'Šibenik-Knin County', 55, '15', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(731, 'Lika-Senj County', 55, '09', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(732, 'Virovitica-Podravina County', 55, '10', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(733, 'Sisak-Moslavina County', 55, '03', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(734, 'Bjelovar-Bilogora County', 55, '07', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(735, 'Primorje-Gorski Kotar County', 55, '08', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(736, 'Zagreb County', 55, '01', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(737, 'Brod-Posavina County', 55, '12', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(738, 'Zagreb', 55, '21', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(739, 'Varaždin County', 55, '05', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(740, 'Osijek-Baranja County', 55, '14', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(741, 'Vukovar-Syrmia County', 55, '16', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(742, 'Koprivnica-Križevci County', 55, '06', '2019-10-05 12:18:38', '2020-05-01 07:41:51'),
(743, 'Istria County', 55, '18', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(744, 'Kyrenia District', 57, '06', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(745, 'Nicosia District', 57, '01', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(746, 'Paphos District', 57, '05', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(747, 'Larnaca District', 57, '03', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(748, 'Limassol District', 57, '02', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(749, 'Famagusta District', 57, '04', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(750, 'Rangpur Division', 19, 'F', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(751, 'Cox\'s Bazar District', 19, '11', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(752, 'Bandarban District', 19, '01', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(753, 'Rajshahi Division', 19, 'E', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(754, 'Pabna District', 19, '49', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(755, 'Sherpur District', 19, '57', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(756, 'Bhola District', 19, '07', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(757, 'Jessore District', 19, '22', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(758, 'Mymensingh Division', 19, 'H', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(759, 'Rangpur District', 19, '55', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(760, 'Dhaka Division', 19, 'C', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(761, 'Chapai Nawabganj District', 19, '45', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(762, 'Faridpur District', 19, '15', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(763, 'Comilla District', 19, '08', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(764, 'Netrokona District', 19, '41', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(765, 'Sylhet Division', 19, 'G', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(766, 'Mymensingh District', 19, '34', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(767, 'Sylhet District', 19, '60', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(768, 'Chandpur District', 19, '09', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(769, 'Narail District', 19, '43', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(770, 'Narayanganj District', 19, '40', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(771, 'Dhaka District', 19, '13', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(772, 'Nilphamari District', 19, '46', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(773, 'Rajbari District', 19, '53', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(774, 'Kushtia District', 19, '30', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(775, 'Khulna Division', 19, 'D', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(776, 'Meherpur District', 19, '39', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(777, 'Patuakhali District', 19, '51', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(778, 'Jhalokati District', 19, '25', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(779, 'Kishoreganj District', 19, '26', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(780, 'Lalmonirhat District', 19, '32', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(781, 'Sirajganj District', 19, '59', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(782, 'Tangail District', 19, '63', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(783, 'Dinajpur District', 19, '14', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(784, 'Barguna District', 19, '02', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(785, 'Chittagong District', 19, '10', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(786, 'Khagrachari District', 19, '29', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(787, 'Natore District', 19, '44', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(788, 'Chuadanga District', 19, '12', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(789, 'Jhenaidah District', 19, '23', '2019-10-05 12:18:38', '2019-10-05 12:18:38'),
(790, 'Munshiganj District', 19, '35', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(791, 'Pirojpur District', 19, '50', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(792, 'Gopalganj District', 19, '17', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(793, 'Kurigram District', 19, '28', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(794, 'Moulvibazar District', 19, '38', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(795, 'Gaibandha District', 19, '19', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(796, 'Bagerhat District', 19, '05', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(797, 'Bogra District', 19, '03', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(798, 'Gazipur District', 19, '18', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(799, 'Satkhira District', 19, '58', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(800, 'Panchagarh District', 19, '52', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(801, 'Shariatpur District', 19, '62', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(802, 'Bahadia', 19, '33', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(803, 'Chittagong Division', 19, 'B', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(804, 'Thakurgaon District', 19, '64', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(805, 'Habiganj District', 19, '20', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(806, 'Joypurhat District', 19, '24', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(807, 'Barisal Division', 19, 'A', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(808, 'Jamalpur District', 19, '21', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(809, 'Rangamati Hill District', 19, '56', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(810, 'Brahmanbaria District', 19, '04', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(811, 'Khulna District', 19, '27', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(812, 'Sunamganj District', 19, '61', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(813, 'Rajshahi District', 19, '54', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(814, 'Naogaon District', 19, '48', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(815, 'Noakhali District', 19, '47', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(816, 'Feni District', 19, '16', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(817, 'Madaripur District', 19, '36', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(818, 'Barisal District', 19, '06', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(819, 'Lakshmipur District', 19, '31', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(820, 'Okayama Prefecture', 109, '33', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(821, 'Chiba Prefecture', 109, '12', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(822, 'Ōita Prefecture', 109, '44', '2019-10-05 12:18:39', '2020-05-01 07:41:52'),
(823, 'Tokyo', 109, '13', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(824, 'Nara Prefecture', 109, '29', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(825, 'Shizuoka Prefecture', 109, '22', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(826, 'Shimane Prefecture', 109, '32', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(827, 'Aichi Prefecture', 109, '23', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(828, 'Hiroshima Prefecture', 109, '34', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(829, 'Akita Prefecture', 109, '05', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(830, 'Ishikawa Prefecture', 109, '17', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(831, 'Hyōgo Prefecture', 109, '28', '2019-10-05 12:18:39', '2020-05-01 07:41:52'),
(832, 'Hokkaidō Prefecture', 109, '01', '2019-10-05 12:18:39', '2020-05-01 07:41:52'),
(833, 'Mie Prefecture', 109, '24', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(834, 'Kyōto Prefecture', 109, '26', '2019-10-05 12:18:39', '2020-05-01 07:41:52'),
(835, 'Yamaguchi Prefecture', 109, '35', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(836, 'Tokushima Prefecture', 109, '36', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(837, 'Yamagata Prefecture', 109, '06', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(838, 'Toyama Prefecture', 109, '16', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(839, 'Aomori Prefecture', 109, '02', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(840, 'Kagoshima Prefecture', 109, '46', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(841, 'Niigata Prefecture', 109, '15', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(842, 'Kanagawa Prefecture', 109, '14', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(843, 'Nagano Prefecture', 109, '20', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(844, 'Wakayama Prefecture', 109, '30', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(845, 'Shiga Prefecture', 109, '25', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(846, 'Kumamoto Prefecture', 109, '43', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(847, 'Fukushima Prefecture', 109, '07', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(848, 'Fukui Prefecture', 109, '18', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(849, 'Nagasaki Prefecture', 109, '42', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(850, 'Tottori Prefecture', 109, '31', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(851, 'Ibaraki Prefecture', 109, '08', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(852, 'Yamanashi Prefecture', 109, '19', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(853, 'Okinawa Prefecture', 109, '47', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(854, 'Tochigi Prefecture', 109, '09', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(855, 'Miyazaki Prefecture', 109, '45', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(856, 'Iwate Prefecture', 109, '03', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(857, 'Miyagi Prefecture', 109, '04', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(858, 'Gifu Prefecture', 109, '21', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(859, 'Ōsaka Prefecture', 109, '27', '2019-10-05 12:18:39', '2020-05-01 07:41:52'),
(860, 'Saitama Prefecture', 109, '11', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(861, 'Fukuoka Prefecture', 109, '40', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(862, 'Gunma Prefecture', 109, '10', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(863, 'Saga Prefecture', 109, '41', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(864, 'Kagawa Prefecture', 109, '37', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(865, 'Ehime Prefecture', 109, '38', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(866, 'Ontario', 39, 'ON', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(867, 'Manitoba', 39, 'MB', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(868, 'New Brunswick', 39, 'NB', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(869, 'Yukon', 39, 'YT', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(870, 'Saskatchewan', 39, 'SK', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(871, 'Prince Edward Island', 39, 'PE', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(872, 'Alberta', 39, 'AB', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(873, 'Quebec', 39, 'QC', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(874, 'Nova Scotia', 39, 'NS', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(875, 'British Columbia', 39, 'BC', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(876, 'Nunavut', 39, 'NU', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(877, 'Newfoundland and Labrador', 39, 'NL', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(878, 'Northwest Territories', 39, 'NT', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(879, 'White Nile', 209, 'NW', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(880, 'Red Sea', 209, 'RS', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(881, 'Khartoum', 209, 'KH', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(882, 'Sennar', 209, 'SI', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(883, 'South Kordofan', 209, 'KS', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(884, 'Kassala', 209, 'KA', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(885, 'Al Jazirah', 209, 'GZ', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(886, 'Al Qadarif', 209, 'GD', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(887, 'Blue Nile', 209, 'NB', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(888, 'West Darfur', 209, 'DW', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(889, 'West Kordofan', 209, 'GK', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(890, 'North Darfur', 209, 'DN', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(891, 'River Nile', 209, 'NR', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(892, 'East Darfur', 209, 'DE', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(893, 'North Kordofan', 209, 'KN', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(894, 'South Darfur', 209, 'DS', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(895, 'Northern', 209, 'NO', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(896, 'Central Darfur', 209, 'DC', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(897, 'Khelvachauri Municipality', 81, '29', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(898, 'Senaki Municipality', 81, '50', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(899, 'Tbilisi', 81, 'TB', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(900, 'Adjara', 81, 'AJ', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(901, 'Autonomous Republic of Abkhazia', 81, 'AB', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(902, 'Mtskheta-Mtianeti', 81, 'MM', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(903, 'Shida Kartli', 81, 'SK', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(904, 'Kvemo Kartli', 81, 'KK', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(905, 'Imereti', 81, 'IM', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(906, 'Samtskhe-Javakheti', 81, 'SJ', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(907, 'Guria', 81, 'GU', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(908, 'Samegrelo-Zemo Svaneti', 81, 'SZ', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(909, 'Racha-Lechkhumi and Kvemo Svaneti', 81, 'RL', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(910, 'Kakheti', 81, 'KA', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(911, 'Northern Province', 198, 'N', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(912, 'Southern Province', 198, 'S', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(913, 'Western Area', 198, 'W', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(914, 'Eastern Province', 198, 'E', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(915, 'Hiran', 203, 'HI', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(916, 'Mudug', 203, 'MU', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(917, 'Bakool', 203, 'BK', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(918, 'Galguduud', 203, 'GA', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(919, 'Sanaag Region', 203, 'SA', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(920, 'Nugal', 203, 'NU', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(921, 'Lower Shebelle', 203, 'SH', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(922, 'Middle Juba', 203, 'JD', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(923, 'Middle Shebelle', 203, 'SD', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(924, 'Lower Juba', 203, 'JH', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(925, 'Awdal Region', 203, 'AW', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(926, 'Bay', 203, 'BY', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(927, 'Banaadir', 203, 'BN', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(928, 'Gedo', 203, 'GE', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(929, 'Togdheer Region', 203, 'TO', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(930, 'Bari', 203, 'BR', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(931, 'Northern Cape', 204, 'NC', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(932, 'Free State', 204, 'FS', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(933, 'Limpopo', 204, 'LP', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(934, 'North West', 204, 'NW', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(935, 'KwaZulu-Natal', 204, 'KZN', '2019-10-05 12:18:39', '2020-08-02 02:29:44'),
(936, 'Gauteng', 204, 'GP', '2019-10-05 12:18:39', '2020-08-02 02:29:50'),
(937, 'Mpumalanga', 204, 'MP', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(938, 'Eastern Cape', 204, 'EC', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(939, 'Western Cape', 204, 'WC', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(940, 'Chontales Department', 159, 'CO', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(941, 'Managua Department', 159, 'MN', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(942, 'Rivas Department', 159, 'RI', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(943, 'Granada Department', 159, 'GR', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(944, 'León Department', 159, 'LE', '2019-10-05 12:18:39', '2020-05-01 07:41:52'),
(945, 'Estelí Department', 159, 'ES', '2019-10-05 12:18:39', '2020-05-01 07:41:52'),
(946, 'Boaco Department', 159, 'BO', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(947, 'Matagalpa Department', 159, 'MT', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(948, 'Madriz Department', 159, 'MD', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(949, 'Río San Juan Department', 159, 'SJ', '2019-10-05 12:18:39', '2020-05-01 07:41:52'),
(950, 'Carazo Department', 159, 'CA', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(951, 'North Caribbean Coast Autonomous Region', 159, 'AN', '2019-10-05 12:18:39', '2019-10-05 12:18:39'),
(952, 'South Caribbean Coast Autonomous Region', 159, 'AS', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(953, 'Masaya Department', 159, 'MS', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(954, 'Chinandega Department', 159, 'CI', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(955, 'Jinotega Department', 159, 'JI', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(956, 'Karak Governorate', 111, 'KA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(957, 'Tafilah Governorate', 111, 'AT', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(958, 'Madaba Governorate', 111, 'MD', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(959, 'Aqaba Governorate', 111, 'AQ', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(960, 'Irbid Governorate', 111, 'IR', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(961, 'Balqa Governorate', 111, 'BA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(962, 'Mafraq Governorate', 111, 'MA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(963, 'Ajloun Governorate', 111, 'AJ', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(964, 'Ma\'an Governorate', 111, 'MN', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(965, 'Amman Governorate', 111, 'AM', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(966, 'Jerash Governorate', 111, 'JA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(967, 'Zarqa Governorate', 111, 'AZ', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(968, 'Manzini District', 212, 'MA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(969, 'Hhohho District', 212, 'HH', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(970, 'Lubombo District', 212, 'LU', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(971, 'Shiselweni District', 212, 'SH', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(972, 'Al Jahra Governorate', 117, 'JA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(973, 'Hawalli Governorate', 117, 'HA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(974, 'Mubarak Al-Kabeer Governorate', 117, 'MU', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(975, 'Al Farwaniyah Governorate', 117, 'FA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(976, 'Capital Governorate', 117, 'KU', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(977, 'Al Ahmadi Governorate', 117, 'AH', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(978, 'Luang Prabang Province', 119, 'LP', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(979, 'Vientiane Prefecture', 119, 'VT', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(980, 'Vientiane Province', 119, 'VI', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(981, 'Salavan Province', 119, 'SL', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(982, 'Attapeu Province', 119, 'AT', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(983, 'Xaisomboun Province', 119, 'XS', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(984, 'Sekong Province', 119, 'XE', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(985, 'Bolikhamsai Province', 119, 'BL', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(986, 'Khammouane Province', 119, 'KH', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(987, 'Phongsaly Province', 119, 'PH', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(988, 'Oudomxay Province', 119, 'OU', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(989, 'Houaphanh Province', 119, 'HO', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(990, 'Savannakhet Province', 119, 'SV', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(991, 'Bokeo Province', 119, 'BK', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(992, 'Luang Namtha Province', 119, 'LM', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(993, 'Sainyabuli Province', 119, 'XA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(994, 'Xaisomboun', 119, 'XN', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(995, 'Xiangkhouang Province', 119, 'XI', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(996, 'Champasak Province', 119, 'CH', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(997, 'Talas Region', 118, 'T', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(998, 'Batken Region', 118, 'B', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(999, 'Naryn Region', 118, 'N', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1000, 'Jalal-Abad Region', 118, 'J', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1001, 'Bishkek', 118, 'GB', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1002, 'Issyk-Kul Region', 118, 'Y', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1003, 'Osh', 118, 'GO', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1004, 'Chuy Region', 118, 'C', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1005, 'Osh Region', 118, 'O', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1006, 'Trøndelag', 165, '50', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1007, 'Oslo', 165, '03', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1008, 'Vestfold', 165, '07', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1009, 'Oppland', 165, '05', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1010, 'Sør-Trøndelag', 165, '16', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1011, 'Buskerud', 165, '06', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1012, 'Nord-Trøndelag', 165, '17', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1013, 'Svalbard', 165, '21', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1014, 'Vest-Agder', 165, '10', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1015, 'Troms', 165, '19', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1016, 'Finnmark', 165, '20', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1017, 'Akershus', 165, '02', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1018, 'Sogn og Fjordane', 165, '14', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1019, 'Hedmark', 165, '04', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1020, 'Møre og Romsdal', 165, '15', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1021, 'Rogaland', 165, '11', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1022, 'Østfold', 165, '01', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1023, 'Hordaland', 165, '12', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1024, 'Telemark', 165, '08', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1025, 'Nordland', 165, '18', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1026, 'Jan Mayen', 165, '22', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1027, 'Hódmezővásárhely', 99, 'HV', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1028, 'Érd', 99, 'ER', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1029, 'Szeged', 99, 'SD', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1030, 'Nagykanizsa', 99, 'NK', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1031, 'Csongrád County', 99, 'CS', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1032, 'Debrecen', 99, 'DE', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1033, 'Székesfehérvár', 99, 'SF', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1034, 'Nyíregyháza', 99, 'NY', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1035, 'Somogy County', 99, 'SO', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1036, 'Békéscsaba', 99, 'BC', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1037, 'Eger', 99, 'EG', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1038, 'Tolna County', 99, 'TO', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1039, 'Vas County', 99, 'VA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1040, 'Heves County', 99, 'HE', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1041, 'Győr', 99, 'GY', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1042, 'Győr-Moson-Sopron County', 99, 'GS', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1043, 'Jász-Nagykun-Szolnok County', 99, 'JN', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1044, 'Fejér County', 99, 'FE', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1045, 'Szabolcs-Szatmár-Bereg County', 99, 'SZ', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1046, 'Zala County', 99, 'ZA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1047, 'Szolnok', 99, 'SK', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1048, 'Bács-Kiskun County', 99, 'BK', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1049, 'Dunaújváros', 99, 'DU', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1050, 'Zalaegerszeg', 99, 'ZE', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1051, 'Nógrád County', 99, 'NO', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1052, 'Szombathely', 99, 'SH', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1053, 'Pécs', 99, 'PS', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1054, 'Veszprém County', 99, 'VE', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1055, 'Baranya County', 99, 'BA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1056, 'Kecskemét', 99, 'KM', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1057, 'Sopron', 99, 'SN', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1058, 'Borsod-Abaúj-Zemplén County', 99, 'BZ', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1059, 'Pest County', 99, 'PE', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1060, 'Békés County', 99, 'BE', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1061, 'Szekszárd', 99, 'SS', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1062, 'Veszprém', 99, 'VM', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1063, 'Hajdú-Bihar County', 99, 'HB', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1064, 'Budapest', 99, 'BU', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1065, 'Miskolc', 99, 'MI', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1066, 'Tatabánya', 99, 'TB', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1067, 'Kaposvár', 99, 'KV', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1068, 'Salgótarján', 99, 'ST', '2019-10-05 12:18:40', '2020-05-01 07:41:52'),
(1069, 'County Tipperary', 105, 'TA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1070, 'County Sligo', 105, 'SO', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1071, 'County Donegal', 105, 'DL', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1072, 'County Dublin', 105, 'D', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1073, 'Leinster', 105, 'L', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1074, 'County Cork', 105, 'CO', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1075, 'County Monaghan', 105, 'MN', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1076, 'County Longford', 105, 'LD', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1077, 'County Kerry', 105, 'KY', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1078, 'County Offaly', 105, 'OY', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1079, 'County Galway', 105, 'G', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1080, 'Munster', 105, 'M', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1081, 'County Roscommon', 105, 'RN', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1082, 'County Kildare', 105, 'KE', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1083, 'County Louth', 105, 'LH', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1084, 'County Mayo', 105, 'MO', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1085, 'County Wicklow', 105, 'WW', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1086, 'Ulster', 105, 'U', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1087, 'Connacht', 105, 'C', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1088, 'County Cavan', 105, 'CN', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1089, 'County Waterford', 105, 'WD', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1090, 'County Kilkenny', 105, 'KK', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1091, 'County Clare', 105, 'CE', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1092, 'County Meath', 105, 'MH', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1093, 'County Wexford', 105, 'WX', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1094, 'County Limerick', 105, 'LK', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1095, 'County Carlow', 105, 'CW', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1096, 'County Laois', 105, 'LS', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1097, 'County Westmeath', 105, 'WH', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1098, 'Djelfa Province', 4, '17', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1099, 'El Oued Province', 4, '39', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1100, 'El Tarf Province', 4, '36', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1101, 'Oran Province', 4, '31', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1102, 'Naama Province', 4, '45', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1103, 'Annaba Province', 4, '23', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1104, 'Bouïra Province', 4, '10', '2019-10-05 12:18:40', '2020-05-01 07:41:51'),
(1105, 'Chlef Province', 4, '02', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1106, 'Tiaret Province', 4, '14', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1107, 'Tlemcen Province', 4, '13', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1108, 'Béchar Province', 4, '08', '2019-10-05 12:18:40', '2020-05-01 07:41:51'),
(1109, 'Médéa Province', 4, '26', '2019-10-05 12:18:40', '2020-05-01 07:41:51'),
(1110, 'Skikda Province', 4, '21', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1111, 'Blida Province', 4, '09', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1112, 'Illizi Province', 4, '33', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1113, 'Jijel Province', 4, '18', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1114, 'Biskra', 4, '07', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1115, 'Tipasa Province', 4, '42', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1116, 'Bordj Bou Arréridj Province', 4, '34', '2019-10-05 12:18:40', '2020-05-01 07:41:51'),
(1117, 'Tébessa Province', 4, '12', '2019-10-05 12:18:40', '2020-05-01 07:41:51'),
(1118, 'Adrar Province', 4, '01', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1119, 'Aïn Defla Province', 4, '44', '2019-10-05 12:18:40', '2020-05-01 07:41:51'),
(1120, 'Tindouf Province', 4, '37', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1121, 'Constantine Province', 4, '25', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1122, 'Aïn Témouchent Province', 4, '46', '2019-10-05 12:18:40', '2020-05-01 07:41:51'),
(1123, 'Saïda Province', 4, '20', '2019-10-05 12:18:40', '2020-05-01 07:41:51'),
(1124, 'Mascara Province', 4, '29', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1125, 'Boumerdès Province', 4, '35', '2019-10-05 12:18:40', '2020-05-01 07:41:51'),
(1126, 'Khenchela Province', 4, '40', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1127, 'Ghardaïa Province', 4, '47', '2019-10-05 12:18:40', '2020-05-01 07:41:51'),
(1128, 'Béjaïa Province', 4, '06', '2019-10-05 12:18:40', '2020-05-01 07:41:51'),
(1129, 'El Bayadh Province', 4, '32', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1130, 'Relizane Province', 4, '48', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1131, 'Tizi Ouzou Province', 4, '15', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1132, 'Mila Province', 4, '43', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1133, 'Tissemsilt Province', 4, '38', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1134, 'M\'Sila Province', 4, '28', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1135, 'Tamanghasset Province', 4, '11', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1136, 'Oum El Bouaghi Province', 4, '04', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1137, 'Guelma Province', 4, '24', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1138, 'Laghouat Province', 4, '03', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1139, 'Ouargla Province', 4, '30', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1140, 'Mostaganem Province', 4, '27', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1141, 'Sétif Province', 4, '19', '2019-10-05 12:18:40', '2020-05-01 07:41:51'),
(1142, 'Batna Province', 4, '05', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1143, 'Souk Ahras Province', 4, '41', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1144, 'Algiers Province', 4, '16', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1145, 'Murcia Province', 207, 'MU', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1146, 'Burgos Province', 207, 'BU', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1147, 'Salamanca Province', 207, 'SA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1148, 'Araba / Álava', 207, 'VI', '2019-10-05 12:18:40', '2020-05-01 07:41:53'),
(1149, 'Madrid Province', 207, 'M', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1150, 'Ciudad Real Province', 207, 'CR', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1151, 'Almería Province', 207, 'AL', '2019-10-05 12:18:40', '2020-05-01 07:41:53'),
(1152, 'Valencia Province', 207, 'V', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1153, 'Badajoz Province', 207, 'BA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1154, 'Pontevedra Province', 207, 'PO', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1155, 'Seville Province', 207, 'SE', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1156, 'Alicante Province', 207, 'A', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1157, 'Palencia Province', 207, 'P', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1158, 'Community of Madrid', 207, 'MD', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1159, 'Melilla', 207, 'ML', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1160, 'Province of Asturias', 207, 'O', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1161, 'Zamora Province', 207, 'ZA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1162, 'Zaragoza Province', 207, 'Z', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1163, 'Huesca Province', 207, 'HU', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1164, 'Tarragona Province', 207, 'T', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1165, 'Toledo Province', 207, 'TO', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1166, 'Las Palmas Province', 207, 'GC', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1167, 'Galicia', 207, 'GA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1168, 'Albacete Province', 207, 'AB', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1169, 'Cuenca Province', 207, 'CU', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1170, 'Cantabria', 207, 'S', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1171, 'La Rioja', 207, 'RI', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1172, 'Guadalajara Province', 207, 'GU', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1173, 'Ourense Province', 207, 'OR', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1174, 'Balearic Islands', 207, 'PM', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1175, 'Valencian Community', 207, 'VC', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1176, 'Region of Murcia', 207, 'MC', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1177, 'Aragon', 207, 'AR', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1178, 'Girona Province', 207, 'GI', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1179, 'A Coruña Province', 207, 'C', '2019-10-05 12:18:40', '2020-05-01 07:41:53'),
(1180, 'Barcelona Province', 207, 'B', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1181, 'Jaén Province', 207, 'J', '2019-10-05 12:18:40', '2020-05-01 07:41:53'),
(1182, 'Teruel Province', 207, 'TE', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1183, 'Valladolid Province', 207, 'VA', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1184, 'Castile and León', 207, 'CL', '2019-10-05 12:18:40', '2020-05-01 07:41:53'),
(1185, 'Canary Islands', 207, 'CN', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1186, 'Biscay', 207, 'BI', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1187, 'Lugo Province', 207, 'LU', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1188, 'Málaga Province', 207, 'MA', '2019-10-05 12:18:40', '2020-05-01 07:41:53'),
(1189, 'Province of Ávila', 207, 'AV', '2019-10-05 12:18:40', '2020-05-01 07:41:53'),
(1190, 'Extremadura', 207, 'EX', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1191, 'Basque Country', 207, 'PV', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1192, 'Segovia Province', 207, 'SG', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1193, 'Andalusia', 207, 'AN', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1194, 'Granada Province', 207, 'GR', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1195, 'Lleida Province', 207, 'L', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1196, 'Cáceres Province', 207, 'CC', '2019-10-05 12:18:40', '2020-05-01 07:41:53'),
(1197, 'Córdoba Province', 207, 'CO', '2019-10-05 12:18:40', '2020-05-01 07:41:53'),
(1198, 'Santa Cruz de Tenerife Province', 207, 'TF', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1199, 'Huelva Province', 207, 'H', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1200, 'León Province', 207, 'LE', '2019-10-05 12:18:40', '2020-05-01 07:41:53'),
(1201, 'Cádiz Province', 207, 'CA', '2019-10-05 12:18:40', '2020-05-01 07:41:53'),
(1202, 'Gipuzkoa', 207, 'SS', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1203, 'Catalonia', 207, 'CT', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1204, 'Navarre', 207, 'NC', '2019-10-05 12:18:40', '2019-10-05 12:18:40'),
(1205, 'Castile-La Mancha', 207, 'CM', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1206, 'Ceuta', 207, 'CE', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1207, 'Castellón Province', 207, 'CS', '2019-10-05 12:18:41', '2020-05-01 07:41:53'),
(1208, 'Soria Province', 207, 'SO', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1209, 'Guanacaste Province', 53, 'G', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1210, 'Puntarenas Province', 53, 'P', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1211, 'Provincia de Cartago', 53, 'C', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1212, 'Heredia Province', 53, 'H', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1213, 'Limón Province', 53, 'L', '2019-10-05 12:18:41', '2020-05-01 07:41:51'),
(1214, 'San José Province', 53, 'SJ', '2019-10-05 12:18:41', '2020-05-01 07:41:51'),
(1215, 'Alajuela Province', 53, 'A', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1216, 'Brunei-Muara District', 33, 'BM', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1217, 'Belait District', 33, 'BE', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1218, 'Temburong District', 33, 'TE', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1219, 'Tutong District', 33, 'TU', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1220, 'Saint Philip', 20, '10', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1221, 'Saint Lucy', 20, '07', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1222, 'Saint Peter', 20, '09', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1223, 'Saint Joseph', 20, '06', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1224, 'Saint James', 20, '04', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1225, 'Saint Thomas', 20, '11', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1226, 'Saint George', 20, '03', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1227, 'Saint John', 20, '05', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1228, 'Christ Church', 20, '01', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1229, 'Saint Andrew', 20, '02', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1230, 'Saint Michael', 20, '08', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1231, 'Ta\'izz Governorate', 245, 'TA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1232, 'Sana\'a', 245, 'SA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1233, 'Ibb Governorate', 245, 'IB', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1234, 'Ma\'rib Governorate', 245, 'MA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1235, 'Al Mahwit Governorate', 245, 'MW', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1236, 'Sana\'a Governorate', 245, 'SN', '2019-10-05 12:18:41', '2019-10-05 12:18:41');
INSERT INTO `zones` (`zone_id`, `zone_name`, `zone_country_id`, `zone_code`, `created_at`, `updated_at`) VALUES
(1237, 'Abyan Governorate', 245, 'AB', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1238, 'Hadhramaut Governorate', 245, 'HD', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1239, 'Socotra Governorate', 245, 'SU', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1240, 'Al Bayda\' Governorate', 245, 'BA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1241, 'Al Hudaydah Governorate', 245, 'HU', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1242, '\'Adan Governorate', 245, 'AD', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1243, 'Al Jawf Governorate', 245, 'JA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1244, 'Hajjah Governorate', 245, 'HJ', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1245, 'Lahij Governorate', 245, 'LA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1246, 'Dhamar Governorate', 245, 'DH', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1247, 'Shabwah Governorate', 245, 'SH', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1248, 'Raymah Governorate', 245, 'RA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1249, 'Saada Governorate', 245, 'SD', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1250, '\'Amran Governorate', 245, 'AM', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1251, 'Al Mahrah Governorate', 245, 'MR', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1252, 'Sangha-Mbaéré', 42, 'SE', '2019-10-05 12:18:41', '2020-05-01 07:41:51'),
(1253, 'Nana-Grébizi Economic Prefecture', 42, 'KB', '2019-10-05 12:18:41', '2020-05-01 07:41:51'),
(1254, 'Ouham Prefecture', 42, 'AC', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1255, 'Ombella-M\'Poko Prefecture', 42, 'MP', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1256, 'Lobaye Prefecture', 42, 'LB', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1257, 'Mambéré-Kadéï', 42, 'HS', '2019-10-05 12:18:41', '2020-05-01 07:41:51'),
(1258, 'Haut-Mbomou Prefecture', 42, 'HM', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1259, 'Bamingui-Bangoran Prefecture', 42, 'BB', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1260, 'Nana-Mambéré Prefecture', 42, 'NM', '2019-10-05 12:18:41', '2020-05-01 07:41:51'),
(1261, 'Vakaga Prefecture', 42, 'VK', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1262, 'Bangui', 42, 'BGF', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1263, 'Kémo Prefecture', 42, 'KG', '2019-10-05 12:18:41', '2020-05-01 07:41:51'),
(1264, 'Basse-Kotto Prefecture', 42, 'BK', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1265, 'Ouaka Prefecture', 42, 'UK', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1266, 'Mbomou Prefecture', 42, 'MB', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1267, 'Ouham-Pendé Prefecture', 42, 'OP', '2019-10-05 12:18:41', '2020-05-01 07:41:51'),
(1268, 'Haute-Kotto Prefecture', 42, 'HK', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1269, 'Romblon', 174, 'ROM', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1270, 'Bukidnon', 174, 'BUK', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1271, 'Rizal', 174, 'RIZ', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1272, 'Bohol', 174, 'BOH', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1273, 'Quirino', 174, 'QUI', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1274, 'Biliran', 174, 'BIL', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1275, 'Quezon', 174, 'QUE', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1276, 'Siquijor', 174, 'SIG', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1277, 'Sarangani', 174, 'SAR', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1278, 'Bulacan', 174, 'BUL', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1279, 'Cagayan', 174, 'CAG', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1280, 'South Cotabato', 174, 'SCO', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1281, 'Sorsogon', 174, 'SOR', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1282, 'Sultan Kudarat', 174, 'SUK', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1283, 'Camarines Norte', 174, 'CAN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1284, 'Southern Leyte', 174, 'SLE', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1285, 'Camiguin', 174, 'CAM', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1286, 'Surigao del Norte', 174, 'SUN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1287, 'Camarines Sur', 174, 'CAS', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1288, 'Sulu', 174, 'SLU', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1289, 'Davao Oriental', 174, 'DAO', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1290, 'Eastern Samar', 174, 'EAS', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1291, 'Dinagat Islands', 174, 'DIN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1292, 'Capiz', 174, 'CAP', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1293, 'Tawi-Tawi', 174, 'TAW', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1294, 'Calabarzon', 174, '40', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1295, 'Tarlac', 174, 'TAR', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1296, 'Surigao del Sur', 174, 'SUR', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1297, 'Zambales', 174, 'ZMB', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1298, 'Ilocos Norte', 174, 'ILN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1299, 'Mimaropa', 174, '41', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1300, 'Ifugao', 174, 'IFU', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1301, 'Catanduanes', 174, 'CAT', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1302, 'Zamboanga del Norte', 174, 'ZAN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1303, 'Guimaras', 174, 'GUI', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1304, 'Bicol Region', 174, '05', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1305, 'Western Visayas', 174, '06', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1306, 'Cebu', 174, 'CEB', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1307, 'Cavite', 174, 'CAV', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1308, 'Central Visayas', 174, '07', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1309, 'Davao Occidental', 174, 'DVO', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1310, 'Soccsksargen', 174, '12', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1311, 'Compostela Valley', 174, 'COM', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1312, 'Kalinga', 174, 'KAL', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1313, 'Isabela', 174, 'ISA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1314, 'Caraga', 174, '13', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1315, 'Iloilo', 174, 'ILI', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1316, 'Autonomous Region in Muslim Mindanao', 174, '14', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1317, 'La Union', 174, 'LUN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1318, 'Davao del Sur', 174, 'DAS', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1319, 'Davao del Norte', 174, 'DAV', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1320, 'Cotabato', 174, 'NCO', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1321, 'Ilocos Sur', 174, 'ILS', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1322, 'Eastern Visayas', 174, '08', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1323, 'Agusan del Norte', 174, 'AGN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1324, 'Abra', 174, 'ABR', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1325, 'Zamboanga Peninsula', 174, '09', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1326, 'Agusan del Sur', 174, 'AGS', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1327, 'Lanao del Norte', 174, 'LAN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1328, 'Laguna', 174, 'LAG', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1329, 'Marinduque', 174, 'MAD', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1330, 'Maguindanao', 174, 'MAG', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1331, 'Aklan', 174, 'AKL', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1332, 'Leyte', 174, 'LEY', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1333, 'Lanao del Sur', 174, 'LAS', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1334, 'Apayao', 174, 'APA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1335, 'Cordillera Administrative Region', 174, '15', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1336, 'Antique', 174, 'ANT', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1337, 'Albay', 174, 'ALB', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1338, 'Masbate', 174, 'MAS', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1339, 'Northern Mindanao', 174, '10', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1340, 'Davao Region', 174, '11', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1341, 'Aurora', 174, 'AUR', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1342, 'Cagayan Valley', 174, '02', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1343, 'Misamis Occidental', 174, 'MSC', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1344, 'Bataan', 174, 'BAN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1345, 'Central Luzon', 174, '03', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1346, 'Basilan', 174, 'BAS', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1347, 'Metro Manila', 174, 'NCR', '2019-10-05 12:18:41', '2020-10-24 05:56:20'),
(1348, 'Misamis Oriental', 174, 'MSR', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1349, 'Northern Samar', 174, 'NSA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1350, 'Negros Oriental', 174, 'NER', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1351, 'Negros Occidental', 174, 'NEC', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1352, 'Batanes', 174, 'BTN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1353, 'Mountain Province', 174, 'MOU', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1354, 'Oriental Mindoro', 174, 'MDR', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1355, 'Ilocos Region', 174, '01', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1356, 'Occidental Mindoro', 174, 'MDC', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1357, 'Zamboanga del Sur', 174, 'ZAS', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1358, 'Nueva Vizcaya', 174, 'NUV', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1359, 'Batangas', 174, 'BTG', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1360, 'Nueva Ecija', 174, 'NUE', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1361, 'Palawan', 174, 'PLW', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1362, 'Zamboanga Sibugay', 174, 'ZSI', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1363, 'Benguet', 174, 'BEN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1364, 'Pangasinan', 174, 'PAN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1365, 'Pampanga', 174, 'PAM', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1366, 'Northern District', 106, 'Z', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1367, 'Central District', 106, 'M', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1368, 'Southern District', 106, 'D', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1369, 'Haifa District', 106, 'HA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1370, 'Jerusalem District', 106, 'JM', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1371, 'Tel Aviv District', 106, 'TA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1372, 'Limburg', 22, 'VLI', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1373, 'Flanders', 22, 'VLG', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1374, 'Flemish Brabant', 22, 'VBR', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1375, 'Hainaut', 22, 'WHT', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1376, 'Brussels-Capital Region', 22, 'BRU', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1377, 'East Flanders', 22, 'VOV', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1378, 'Namur', 22, 'WNA', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1379, 'Luxembourg', 22, 'WLX', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1380, 'Wallonia', 22, 'WAL', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1381, 'Antwerp', 22, 'VAN', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1382, 'Walloon Brabant', 22, 'WBR', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1383, 'West Flanders', 22, 'VWV', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1384, 'Liège', 22, 'WLG', '2019-10-05 12:18:41', '2020-05-01 07:41:51'),
(1385, 'Darién Province', 170, '5', '2019-10-05 12:18:41', '2020-05-01 07:41:52'),
(1386, 'Colón Province', 170, '3', '2019-10-05 12:18:41', '2020-05-01 07:41:52'),
(1387, 'Coclé Province', 170, '2', '2019-10-05 12:18:41', '2020-05-01 07:41:52'),
(1388, 'Guna Yala', 170, 'KY', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1389, 'Herrera Province', 170, '6', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1390, 'Los Santos Province', 170, '7', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1391, 'Ngöbe-Buglé Comarca', 170, 'NB', '2019-10-05 12:18:41', '2020-05-01 07:41:52'),
(1392, 'Veraguas Province', 170, '9', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1393, 'Bocas del Toro Province', 170, '1', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1394, 'Panamá Oeste Province', 170, '10', '2019-10-05 12:18:41', '2020-05-01 07:41:52'),
(1395, 'Panamá Province', 170, '8', '2019-10-05 12:18:41', '2020-05-01 07:41:52'),
(1396, 'Emberá-Wounaan Comarca', 170, 'EM', '2019-10-05 12:18:41', '2020-05-01 07:41:52'),
(1397, 'Chiriquí Province', 170, '4', '2019-10-05 12:18:41', '2020-05-01 07:41:52'),
(1398, 'Howland Island', 233, 'UM-84', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1399, 'Delaware', 233, 'DE', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1400, 'Alaska', 233, 'AK', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1401, 'Maryland', 233, 'MD', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1402, 'Baker Island', 233, 'UM-81', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1403, 'Kingman Reef', 233, 'UM-89', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1404, 'New Hampshire', 233, 'NH', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1405, 'Wake Island', 233, 'UM-79', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1406, 'Kansas', 233, 'KS', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1407, 'Texas', 233, 'TX', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1408, 'Nebraska', 233, 'NE', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1409, 'Vermont', 233, 'VT', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1410, 'Jarvis Island', 233, 'UM-86', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1411, 'Hawaii', 233, 'HI', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1412, 'Guam', 233, 'GU', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1413, 'United States Virgin Islands', 233, 'VI', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1414, 'Utah', 233, 'UT', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1415, 'Oregon', 233, 'OR', '2019-10-05 12:18:41', '2019-10-05 12:18:41'),
(1416, 'California', 233, 'CA', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1417, 'New Jersey', 233, 'NJ', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1418, 'North Dakota', 233, 'ND', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1419, 'Kentucky', 233, 'KY', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1420, 'Minnesota', 233, 'MN', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1421, 'Oklahoma', 233, 'OK', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1422, 'Pennsylvania', 233, 'PA', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1423, 'New Mexico', 233, 'NM', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1424, 'American Samoa', 233, 'AS', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1425, 'Illinois', 233, 'IL', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1426, 'Michigan', 233, 'MI', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1427, 'Virginia', 233, 'VA', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1428, 'Johnston Atoll', 233, 'UM-67', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1429, 'West Virginia', 233, 'WV', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1430, 'Mississippi', 233, 'MS', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1431, 'Northern Mariana Islands', 233, 'MP', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1432, 'United States Minor Outlying Islands', 233, 'UM', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1433, 'Massachusetts', 233, 'MA', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1434, 'Arizona', 233, 'AZ', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1435, 'Connecticut', 233, 'CT', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1436, 'Florida', 233, 'FL', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1437, 'District of Columbia', 233, 'DC', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1438, 'Midway Atoll', 233, 'UM-71', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1439, 'Navassa Island', 233, 'UM-76', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1440, 'Indiana', 233, 'IN', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1441, 'Wisconsin', 233, 'WI', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1442, 'Wyoming', 233, 'WY', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1443, 'South Carolina', 233, 'SC', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1444, 'Arkansas', 233, 'AR', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1445, 'South Dakota', 233, 'SD', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1446, 'Montana', 233, 'MT', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1447, 'North Carolina', 233, 'NC', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1448, 'Palmyra Atoll', 233, 'UM-95', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1449, 'Puerto Rico', 233, 'PR', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1450, 'Colorado', 233, 'CO', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1451, 'Missouri', 233, 'MO', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1452, 'New York', 233, 'NY', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1453, 'Maine', 233, 'ME', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1454, 'Tennessee', 233, 'TN', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1455, 'Georgia', 233, 'GA', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1456, 'Alabama', 233, 'AL', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1457, 'Louisiana', 233, 'LA', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1458, 'Nevada', 233, 'NV', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1459, 'Iowa', 233, 'IA', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1460, 'Idaho', 233, 'ID', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1461, 'Rhode Island', 233, 'RI', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1462, 'Washington', 233, 'WA', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1463, 'Shinyanga Region', 218, '22', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1464, 'Simiyu Region', 218, '30', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1465, 'Kagera Region', 218, '05', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1466, 'Dodoma Region', 218, '03', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1467, 'Kilimanjaro Region', 218, '09', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1468, 'Mara Region', 218, '13', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1469, 'Tabora Region', 218, '24', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1470, 'Morogoro Region', 218, '16', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1471, 'Zanzibar Central/South Region', 218, '11', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1472, 'South Pemba Region', 218, '10', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1473, 'Zanzibar North Region', 218, '07', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1474, 'Singida Region', 218, '23', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1475, 'Zanzibar Urban/West Region', 218, '15', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1476, 'Mtwara Region', 218, '17', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1477, 'Rukwa Region', 218, '20', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1478, 'Kigoma Region', 218, '08', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1479, 'Mwanza Region', 218, '18', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1480, 'Njombe Region', 218, '29', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1481, 'Geita Region', 218, '27', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1482, 'Katavi Region', 218, '28', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1483, 'Lindi Region', 218, '12', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1484, 'Manyara Region', 218, '26', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1485, 'Pwani Region', 218, '19', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1486, 'Ruvuma Region', 218, '21', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1487, 'Tanga Region', 218, '25', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1488, 'North Pemba Region', 218, '06', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1489, 'Iringa Region', 218, '04', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1490, 'Dar es Salaam Region', 218, '02', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1491, 'Arusha Region', 218, '01', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1492, 'Eastern Finland Province', 74, 'IS', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1493, 'Tavastia Proper', 74, '06', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1494, 'Central Ostrobothnia', 74, '07', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1495, 'Southern Savonia', 74, '04', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1496, 'Kainuu', 74, '05', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1497, 'South Karelia', 74, '02', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1498, 'Southern Ostrobothnia', 74, '03', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1499, 'Oulu Province', 74, 'OL', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1500, 'Lapland', 74, 'LL', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1501, 'Satakunta', 74, '17', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1502, 'Päijänne Tavastia', 74, '16', '2019-10-05 12:18:42', '2020-05-01 07:41:51'),
(1503, 'Northern Savonia', 74, '15', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1504, 'North Karelia', 74, '13', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1505, 'Northern Ostrobothnia', 74, '14', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1506, 'Pirkanmaa', 74, '11', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1507, 'Finland Proper', 74, '19', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1508, 'Ostrobothnia', 74, '12', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1509, 'Åland Islands', 74, '01', '2019-10-05 12:18:42', '2020-05-01 07:41:51'),
(1510, 'Uusimaa', 74, '18', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1511, 'Central Finland', 74, '08', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1512, 'Kymenlaakso', 74, '09', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1513, 'Canton of Diekirch', 127, 'DI', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1514, 'Luxembourg District', 127, 'L', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1515, 'Canton of Echternach', 127, 'EC', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1516, 'Canton of Redange', 127, 'RD', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1517, 'Canton of Esch-sur-Alzette', 127, 'ES', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1518, 'Canton of Capellen', 127, 'CA', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1519, 'Canton of Remich', 127, 'RM', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1520, 'Grevenmacher District', 127, 'G', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1521, 'Canton of Clervaux', 127, 'CL', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1522, 'Canton of Mersch', 127, 'ME', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1523, 'Canton of Vianden', 127, 'VD', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1524, 'Diekirch District', 127, 'D', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1525, 'Canton of Grevenmacher', 127, 'GR', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1526, 'Canton of Wiltz', 127, 'WI', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1527, 'Canton of Luxembourg', 127, 'LU', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1528, 'Region Zealand', 59, '85', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1529, 'Region of Southern Denmark', 59, '83', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1530, 'Capital Region of Denmark', 59, '84', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1531, 'Central Denmark Region', 59, '82', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1532, 'North Denmark Region', 59, '81', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1533, 'Gävleborg County', 213, 'X', '2019-10-05 12:18:42', '2020-05-01 07:41:53'),
(1534, 'Dalarna County', 213, 'W', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1535, 'Värmland County', 213, 'S', '2019-10-05 12:18:42', '2020-05-01 07:41:53'),
(1536, 'Östergötland County', 213, 'E', '2019-10-05 12:18:42', '2020-05-01 07:41:53'),
(1537, 'Blekinge', 213, 'K', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1538, 'Norrbotten County', 213, 'BD', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1539, 'Örebro County', 213, 'T', '2019-10-05 12:18:42', '2020-05-01 07:41:53'),
(1540, 'Södermanland County', 213, 'D', '2019-10-05 12:18:42', '2020-05-01 07:41:53'),
(1541, 'Skåne County', 213, 'M', '2019-10-05 12:18:42', '2020-05-01 07:41:53'),
(1542, 'Kronoberg County', 213, 'G', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1543, 'Västerbotten County', 213, 'AC', '2019-10-05 12:18:42', '2020-05-01 07:41:53'),
(1544, 'Kalmar County', 213, 'H', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1545, 'Uppsala County', 213, 'C', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1546, 'Gotland County', 213, 'I', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1547, 'Västra Götaland County', 213, 'O', '2019-10-05 12:18:42', '2020-05-01 07:41:53'),
(1548, 'Halland County', 213, 'N', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1549, 'Västmanland County', 213, 'U', '2019-10-05 12:18:42', '2020-05-01 07:41:53'),
(1550, 'Jönköping County', 213, 'F', '2019-10-05 12:18:42', '2020-05-01 07:41:53'),
(1551, 'Stockholm County', 213, 'AB', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1552, 'Västernorrland County', 213, 'Y', '2019-10-05 12:18:42', '2020-05-01 07:41:53'),
(1553, 'Plungė District Municipality', 126, '35', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1554, 'Šiauliai District Municipality', 126, '44', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1555, 'Jurbarkas District Municipality', 126, '12', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1556, 'Kaunas County', 126, 'KU', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1557, 'Mažeikiai District Municipality', 126, '26', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1558, 'Panevėžys County', 126, 'PN', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1559, 'Elektrėnai municipality', 126, '08', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1560, 'Švenčionys District Municipality', 126, '49', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1561, 'Akmenė District Municipality', 126, '01', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1562, 'Ignalina District Municipality', 126, '09', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1563, 'Neringa Municipality', 126, '28', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1564, 'Visaginas Municipality', 126, '59', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1565, 'Kaunas District Municipality', 126, '16', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1566, 'Biržai District Municipality', 126, '06', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1567, 'Jonava District Municipality', 126, '10', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1568, 'Radviliškis District Municipality', 126, '37', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1569, 'Telšiai County', 126, 'TE', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1570, 'Marijampolė County', 126, 'MR', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1571, 'Kretinga District Municipality', 126, '22', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1572, 'Tauragė District Municipality', 126, '50', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1573, 'Tauragė County', 126, 'TA', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1574, 'Alytus County', 126, 'AL', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1575, 'Kazlų Rūda municipality', 126, '17', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1576, 'Šakiai District Municipality', 126, '41', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1577, 'Šalčininkai District Municipality', 126, '42', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1578, 'Prienai District Municipality', 126, '36', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1579, 'Druskininkai municipality', 126, '07', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1580, 'Kaunas City Municipality', 126, '15', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1581, 'Joniškis District Municipality', 126, '11', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1582, 'Molėtai District Municipality', 126, '27', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1583, 'Kaišiadorys District Municipality', 126, '13', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1584, 'Kėdainiai District Municipality', 126, '18', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1585, 'Kupiškis District Municipality', 126, '23', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1586, 'Šiauliai County', 126, 'SA', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1587, 'Raseiniai District Municipality', 126, '38', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1588, 'Palanga City Municipality', 126, '31', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1589, 'Panevėžys City Municipality', 126, '32', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1590, 'Rietavas municipality', 126, '39', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1591, 'Kalvarija municipality', 126, '14', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1592, 'Vilnius District Municipality', 126, '58', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1593, 'Trakai District Municipality', 126, '52', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1594, 'Širvintos District Municipality', 126, '47', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1595, 'Pakruojis District Municipality', 126, '30', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1596, 'Ukmergė District Municipality', 126, '53', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1597, 'Klaipeda City Municipality', 126, '20', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1598, 'Utena District Municipality', 126, '54', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1599, 'Alytus District Municipality', 126, '03', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1600, 'Klaipėda County', 126, 'KL', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1601, 'Vilnius County', 126, 'VL', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1602, 'Varėna District Municipality', 126, '55', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1603, 'Birštonas Municipality', 126, '05', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1604, 'Klaipėda District Municipality', 126, '21', '2019-10-05 12:18:42', '2020-05-01 07:41:52'),
(1605, 'Alytus City Municipality', 126, '02', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1606, 'Vilnius City Municipality', 126, '57', '2019-10-05 12:18:42', '2019-10-05 12:18:42'),
(1607, 'Šilutė District Municipality', 126, '46', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1608, 'Telšiai District Municipality', 126, '51', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1609, 'Šiauliai City Municipality', 126, '43', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1610, 'Marijampolė Municipality', 126, '25', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1611, 'Lazdijai District Municipality', 126, '24', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1612, 'Pagėgiai municipality', 126, '29', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1613, 'Šilalė District Municipality', 126, '45', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1614, 'Panevėžys District Municipality', 126, '33', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1615, 'Rokiškis District Municipality', 126, '40', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1616, 'Pasvalys District Municipality', 126, '34', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1617, 'Skuodas District Municipality', 126, '48', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1618, 'Kelmė District Municipality', 126, '19', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1619, 'Zarasai District Municipality', 126, '60', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1620, 'Vilkaviškis District Municipality', 126, '56', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1621, 'Utena County', 126, 'UT', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1622, 'Opole Voivodeship', 176, 'OP', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1623, 'Silesian Voivodeship', 176, 'SL', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1624, 'Pomeranian Voivodeship', 176, 'PM', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1625, 'Kuyavian-Pomeranian Voivodeship', 176, 'KP', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1626, 'Podkarpackie Voivodeship', 176, 'PK', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1627, 'Kielce', 176, 'KI', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1628, 'Warmian-Masurian Voivodeship', 176, 'WN', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1629, 'Lower Silesian Voivodeship', 176, 'DS', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1630, 'Świętokrzyskie Voivodeship', 176, 'SK', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1631, 'Lubusz Voivodeship', 176, 'LB', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1632, 'Podlaskie Voivodeship', 176, 'PD', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1633, 'West Pomeranian Voivodeship', 176, 'ZP', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1634, 'Greater Poland Voivodeship', 176, 'WP', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1635, 'Lesser Poland Voivodeship', 176, 'MA', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1636, 'Łódź Voivodeship', 176, 'LD', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1637, 'Masovian Voivodeship', 176, 'MZ', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1638, 'Lublin Voivodeship', 176, 'LU', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1639, 'Aargau', 214, 'AG', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1640, 'Canton of Fribourg', 214, 'FR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1641, 'Basel-Landschaft', 214, 'BL', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1642, 'Uri', 214, 'UR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1643, 'Ticino', 214, 'TI', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1644, 'Canton of St. Gallen', 214, 'SG', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1645, 'canton of Bern', 214, 'BE', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1646, 'Canton of Zug', 214, 'ZG', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1647, 'Canton of Geneva', 214, 'GE', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1648, 'Canton of Valais', 214, 'VS', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1649, 'Appenzell Innerrhoden', 214, 'AI', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1650, 'Obwalden', 214, 'OW', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1651, 'Canton of Vaud', 214, 'VD', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1652, 'Nidwalden', 214, 'NW', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1653, 'Schwyz', 214, 'SZ', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1654, 'Canton of Schaffhausen', 214, 'SH', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1655, 'Appenzell Ausserrhoden', 214, 'AR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1656, 'canton of Zürich', 214, 'ZH', '2019-10-05 12:18:43', '2020-05-01 07:41:53'),
(1657, 'Thurgau', 214, 'TG', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1658, 'Canton of Jura', 214, 'JU', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1659, 'Canton of Neuchâtel', 214, 'NE', '2019-10-05 12:18:43', '2020-05-01 07:41:53'),
(1660, 'Graubünden', 214, 'GR', '2019-10-05 12:18:43', '2020-05-01 07:41:53'),
(1661, 'Glarus', 214, 'GL', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1662, 'Canton of Solothurn', 214, 'SO', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1663, 'Canton of Lucerne', 214, 'LU', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1664, 'Tuscany', 107, '52', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1665, 'Province of Padua', 107, 'PD', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1666, 'Province of Parma', 107, 'PR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1667, 'Libero consorzio comunale di Siracusa', 107, 'SR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1668, 'Metropolitan City of Palermo', 107, 'PA', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1669, 'Campania', 107, '72', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1670, 'Marche', 107, '57', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1671, 'Metropolitan City of Reggio Calabria', 107, 'RC', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1672, 'Province of Ancona', 107, 'AN', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1673, 'Metropolitan City of Venice', 107, 'VE', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1674, 'Province of Latina', 107, 'LT', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1675, 'Province of Lecce', 107, 'LE', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1676, 'Province of Pavia', 107, 'PV', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1677, 'Province of Lecco', 107, 'LC', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1678, 'Lazio', 107, '62', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1679, 'Abruzzo', 107, '65', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1680, 'Metropolitan City of Florence', 107, 'FI', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1681, 'Province of Ascoli Piceno', 107, 'AP', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1682, 'Metropolitan City of Cagliari', 107, 'CA', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1683, 'Umbria', 107, '55', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1684, 'Metropolitan City of Bologna', 107, 'BO', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1685, 'Province of Pisa', 107, 'PI', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1686, 'Province of Barletta-Andria-Trani', 107, 'BT', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1687, 'Province of Pistoia', 107, 'PT', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1688, 'Apulia', 107, '75', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1689, 'Province of Belluno', 107, 'BL', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1690, 'Province of Pordenone', 107, 'PN', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1691, 'Province of Perugia', 107, 'PG', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1692, 'Province of Avellino', 107, 'AV', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1693, 'Pesaro and Urbino Province', 107, 'PU', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1694, 'Province of Pescara', 107, 'PE', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1695, 'Molise', 107, '67', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1696, 'Province of Piacenza', 107, 'PC', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1697, 'Province of Potenza', 107, 'PZ', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1698, 'Metropolitan City of Milan', 107, 'MI', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1699, 'Metropolitan City of Genoa', 107, 'GE', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1700, 'Province of Prato', 107, 'PO', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1701, 'Benevento Province', 107, 'BN', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1702, 'Piedmont', 107, '21', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1703, 'Calabria', 107, '78', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1704, 'Province of Bergamo', 107, 'BG', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1705, 'Lombardy', 107, '25', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1706, 'Basilicata', 107, '77', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1707, 'Province of Ravenna', 107, 'RA', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1708, 'Province of Reggio Emilia', 107, 'RE', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1709, 'Sicily', 107, '82', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1710, 'Metropolitan City of Turin', 107, 'TO', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1711, 'Metropolitan City of Rome', 107, 'RM', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1712, 'Province of Rieti', 107, 'RI', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1713, 'Province of Rimini', 107, 'RN', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1714, 'Province of Brindisi', 107, 'BR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1715, 'Sardinia', 107, '88', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1716, 'Aosta Valley', 107, '23', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1717, 'Province of Brescia', 107, 'BS', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1718, 'Libero consorzio comunale di Caltanissetta', 107, 'CL', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1719, 'Province of Rovigo', 107, 'RO', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1720, 'Province of Salerno', 107, 'SA', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1721, 'Province of Campobasso', 107, 'CB', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1722, 'Province of Sassari', 107, 'SS', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1723, 'Libero consorzio comunale di Enna', 107, 'EN', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1724, 'Metropolitan City of Naples', 107, 'NA', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1725, 'Trentino-South Tyrol', 107, '32', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1726, 'Province of Verbano-Cusio-Ossola', 107, 'VB', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1727, 'Libero consorzio comunale di Agrigento', 107, 'AG', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1728, 'Province of Catanzaro', 107, 'CZ', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1729, 'Libero consorzio comunale di Ragusa', 107, 'RG', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1730, 'Province of Carbonia-Iglesias', 107, 'CI', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1731, 'Province of Caserta', 107, 'CE', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1732, 'Province of Savona', 107, 'SV', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1733, 'Libero consorzio comunale di Trapani', 107, 'TP', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1734, 'Province of Siena', 107, 'SI', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1735, 'Province of Viterbo', 107, 'VT', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1736, 'Province of Verona', 107, 'VR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1737, 'Province of Vibo Valentia', 107, 'VV', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1738, 'Province of Vicenza', 107, 'VI', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1739, 'Province of Chieti', 107, 'CH', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1740, 'Province of Como', 107, 'CO', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1741, 'Province of Sondrio', 107, 'SO', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1742, 'Province of Cosenza', 107, 'CS', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1743, 'Province of Taranto', 107, 'TA', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1744, 'Province of Fermo', 107, 'FM', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1745, 'Province of Livorno', 107, 'LI', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1746, 'Province of Ferrara', 107, 'FE', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1747, 'Province of Lodi', 107, 'LO', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1748, 'Trentino', 107, 'TN', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1749, 'Province of Lucca', 107, 'LU', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1750, 'Province of Macerata', 107, 'MC', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1751, 'Province of Cremona', 107, 'CR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1752, 'Province of Teramo', 107, 'TE', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1753, 'Veneto', 107, '34', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1754, 'Province of Crotone', 107, 'KR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1755, 'Province of Terni', 107, 'TR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1756, 'Friuli–Venezia Giulia', 107, '36', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1757, 'Province of Modena', 107, 'MO', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1758, 'Province of Mantua', 107, 'MN', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1759, 'Province of Massa and Carrara', 107, 'MS', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1760, 'Province of Matera', 107, 'MT', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1761, 'Province of Medio Campidano', 107, 'VS', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1762, 'Province of Treviso', 107, 'TV', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1763, 'Province of Trieste', 107, 'TS', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1764, 'Province of Udine', 107, 'UD', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1765, 'Province of Varese', 107, 'VA', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1766, 'Metropolitan City of Catania', 107, 'CT', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1767, 'South Tyrol', 107, 'BZ', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1768, 'Liguria', 107, '42', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1769, 'Province of Monza and Brianza', 107, 'MB', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1770, 'Metropolitan City of Messina', 107, 'ME', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1771, 'Province of Foggia', 107, 'FG', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1772, 'Metropolitan City of Bari', 107, 'BA', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1773, 'Emilia-Romagna', 107, '45', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1774, 'Province of Novara', 107, 'NO', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1775, 'Province of Cuneo', 107, 'CN', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1776, 'Province of Frosinone', 107, 'FR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1777, 'Province of Gorizia', 107, 'GO', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1778, 'Province of Biella', 107, 'BI', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1779, 'Province of Forlì-Cesena', 107, 'FC', '2019-10-05 12:18:43', '2020-05-01 07:41:52'),
(1780, 'Province of Asti', 107, 'AT', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1781, 'Province of L\'Aquila', 107, 'AQ', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1782, 'Province of Ogliastra', 107, 'OG', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1783, 'Province of Alessandria', 107, 'AL', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1784, 'Province of Olbia-Tempio', 107, 'OT', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1785, 'Province of Vercelli', 107, 'VC', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1786, 'Province of Oristano', 107, 'OR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1787, 'Province of Grosseto', 107, 'GR', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1788, 'Province of Imperia', 107, 'IM', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1789, 'Province of Isernia', 107, 'IS', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1790, 'Province of Nuoro', 107, 'NU', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1791, 'Province of La Spezia', 107, 'SP', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1792, 'North Sumatra', 102, 'SU', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1793, 'Bengkulu', 102, 'BE', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1794, 'Central Kalimantan', 102, 'KT', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1795, 'South Sulawesi', 102, 'SN', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1796, 'Southeast Sulawesi', 102, 'SG', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1797, 'Sumatra', 102, 'SM', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1798, 'Papua', 102, 'PA', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1799, 'West Papua', 102, 'PB', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1800, 'Maluku', 102, 'MA', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1801, 'North Maluku', 102, 'MU', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1802, 'Central Java', 102, 'JT', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1803, 'Sulawesi', 102, 'SL', '2019-10-05 12:18:43', '2019-10-05 12:18:43'),
(1804, 'East Kalimantan', 102, 'KI', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1805, 'Jakarta', 102, 'JK', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1806, 'Kalimantan', 102, 'KA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1807, 'Riau Islands', 102, 'KR', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1808, 'North Sulawesi', 102, 'SA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1809, 'Riau', 102, 'RI', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1810, 'Banten', 102, 'BT', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1811, 'Lampung', 102, 'LA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1812, 'Gorontalo', 102, 'GO', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1813, 'Central Sulawesi', 102, 'ST', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1814, 'West Nusa Tenggara', 102, 'NB', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1815, 'Jambi', 102, 'JA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1816, 'South Sumatra', 102, 'SS', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1817, 'West Sulawesi', 102, 'SR', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1818, 'East Nusa Tenggara', 102, 'NT', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1819, 'South Kalimantan', 102, 'KS', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1820, 'Bangka Belitung Islands', 102, 'BB', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1821, 'Lesser Sunda Islands', 102, 'NU', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1822, 'Aceh', 102, 'AC', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1823, 'Maluku Islands', 102, 'ML', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1824, 'North Kalimantan', 102, 'KU', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1825, 'West Java', 102, 'JB', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1826, 'Bali', 102, 'BA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1827, 'East Java', 102, 'JI', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1828, 'West Sumatra', 102, 'SB', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1829, 'Special Region of Yogyakarta', 102, 'YO', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1830, 'Phoenix Islands', 114, 'P', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1831, 'Gilbert Islands', 114, 'G', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1832, 'Line Islands', 114, 'L', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1833, 'Primorsky Krai', 182, 'PRI', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1834, 'Novgorod Oblast', 182, 'NGR', '2019-10-05 12:18:44', '2019-10-05 12:18:44');
INSERT INTO `zones` (`zone_id`, `zone_name`, `zone_country_id`, `zone_code`, `created_at`, `updated_at`) VALUES
(1835, 'Jewish Autonomous Oblast', 182, 'YEV', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1836, 'Nenets Autonomous Okrug', 182, 'NEN', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1837, 'Rostov Oblast', 182, 'ROS', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1838, 'Khanty-Mansi Autonomous Okrug', 182, 'KHM', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1839, 'Magadan Oblast', 182, 'MAG', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1840, 'Krasnoyarsk Krai', 182, 'KYA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1841, 'Republic of Karelia', 182, 'KR', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1842, 'Republic of Buryatia', 182, 'BU', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1843, 'Murmansk Oblast', 182, 'MUR', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1844, 'Kaluga Oblast', 182, 'KLU', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1845, 'Chelyabinsk Oblast', 182, 'CHE', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1846, 'Omsk Oblast', 182, 'OMS', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1847, 'Yamalo-Nenets Autonomous Okrug', 182, 'YAN', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1848, 'Sakha Republic', 182, 'SA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1849, 'Arkhangelsk', 182, 'ARK', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1850, 'Republic of Dagestan', 182, 'DA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1851, 'Yaroslavl Oblast', 182, 'YAR', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1852, 'Republic of Adygea', 182, 'AD', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1853, 'Republic of North Ossetia-Alania', 182, 'SE', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1854, 'Republic of Bashkortostan', 182, 'BA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1855, 'Kursk Oblast', 182, 'KRS', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1856, 'Ulyanovsk Oblast', 182, 'ULY', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1857, 'Nizhny Novgorod Oblast', 182, 'NIZ', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1858, 'Amur Oblast', 182, 'AMU', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1859, 'Chukotka Autonomous Okrug', 182, 'CHU', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1860, 'Tver Oblast', 182, 'TVE', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1861, 'Republic of Tatarstan', 182, 'TA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1862, 'Samara Oblast', 182, 'SAM', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1863, 'Pskov Oblast', 182, 'PSK', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1864, 'Ivanovo Oblast', 182, 'IVA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1865, 'Kamchatka Krai', 182, 'KAM', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1866, 'Astrakhan Oblast', 182, 'AST', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1867, 'Bryansk Oblast', 182, 'BRY', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1868, 'Stavropol Krai', 182, 'STA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1869, 'Karachay-Cherkess Republic', 182, 'KC', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1870, 'Mari El Republic', 182, 'ME', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1871, 'Perm Krai', 182, 'PER', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1872, 'Tomsk Oblast', 182, 'TOM', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1873, 'Khabarovsk Krai', 182, 'KHA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1874, 'Vologda Oblast', 182, 'VLG', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1875, 'Sakhalin', 182, 'SAK', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1876, 'Altai Republic', 182, 'AL', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1877, 'Republic of Khakassia', 182, 'KK', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1878, 'Tambov Oblast', 182, 'TAM', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1879, 'Saint Petersburg', 182, 'SPE', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1880, 'Irkutsk', 182, 'IRK', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1881, 'Vladimir Oblast', 182, 'VLA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1882, 'Moscow Oblast', 182, 'MOS', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1883, 'Republic of Kalmykia', 182, 'KL', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1884, 'Republic of Ingushetia', 182, 'IN', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1885, 'Smolensk Oblast', 182, 'SMO', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1886, 'Orenburg Oblast', 182, 'ORE', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1887, 'Saratov Oblast', 182, 'SAR', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1888, 'Novosibirsk', 182, 'NVS', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1889, 'Lipetsk Oblast', 182, 'LIP', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1890, 'Kirov Oblast', 182, 'KIR', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1891, 'Krasnodar Krai', 182, 'KDA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1892, 'Kabardino-Balkar Republic', 182, 'KB', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1893, 'Chechen Republic', 182, 'CE', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1894, 'Sverdlovsk', 182, 'SVE', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1895, 'Tula Oblast', 182, 'TUL', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1896, 'Leningrad Oblast', 182, 'LEN', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1897, 'Kemerovo Oblast', 182, 'KEM', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1898, 'Republic of Mordovia', 182, 'MO', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1899, 'Komi Republic', 182, 'KO', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1900, 'Tuva Republic', 182, 'TY', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1901, 'Moscow', 182, 'MOW', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1902, 'Kaliningrad', 182, 'KGD', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1903, 'Belgorod Oblast', 182, 'BEL', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1904, 'Zabaykalsky Krai', 182, 'ZAB', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1905, 'Ryazan Oblast', 182, 'RYA', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1906, 'Voronezh Oblast', 182, 'VOR', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1907, 'Tyumen Oblast', 182, 'TYU', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1908, 'Oryol Oblast', 182, 'ORL', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1909, 'Penza Oblast', 182, 'PNZ', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1910, 'Kostroma Oblast', 182, 'KOS', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1911, 'Altai Krai', 182, 'ALT', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1912, 'Sevastopol', 182, 'UA-40', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1913, 'Udmurt Republic', 182, 'UD', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1914, 'Chuvash Republic', 182, 'CU', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1915, 'Kurgan Oblast', 182, 'KGN', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1916, 'Lomaiviti', 73, '06', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1917, 'Ba', 73, '01', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1918, 'Tailevu', 73, '14', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1919, 'Nadroga-Navosa', 73, '08', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1920, 'Rewa', 73, '12', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1921, 'Northern Division', 73, 'N', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1922, 'Macuata', 73, '07', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1923, 'Western Division', 73, 'W', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1924, 'Cakaudrove', 73, '03', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1925, 'Serua', 73, '13', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1926, 'Ra', 73, '11', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1927, 'Naitasiri', 73, '09', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1928, 'Namosi', 73, '10', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1929, 'Central Division', 73, 'C', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1930, 'Bua', 73, '02', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1931, 'Rotuma', 73, 'R', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1932, 'Eastern Division', 73, 'E', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1933, 'Lau', 73, '05', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1934, 'Kadavu', 73, '04', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1935, 'Labuan', 132, '15', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1936, 'Sabah', 132, '12', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1937, 'Sarawak', 132, '13', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1938, 'Perlis', 132, '09', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1939, 'Penang', 132, '07', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1940, 'Pahang', 132, '06', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1941, 'Melaka', 132, '04', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1942, 'Terengganu', 132, '11', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1943, 'Perak', 132, '08', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1944, 'Selangor', 132, '10', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1945, 'Putrajaya', 132, '16', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1946, 'Kelantan', 132, '03', '2019-10-05 12:18:44', '2019-10-05 12:18:44'),
(1947, 'Kedah', 132, '02', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1948, 'Negeri Sembilan', 132, '05', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1949, 'Kuala Lumpur', 132, '14', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1950, 'Johor', 132, '01', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1951, 'Mashonaland East Province', 247, 'ME', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1952, 'Matabeleland South Province', 247, 'MS', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1953, 'Mashonaland West Province', 247, 'MW', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1954, 'Matabeleland North Province', 247, 'MN', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1955, 'Mashonaland Central Province', 247, 'MC', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1956, 'Bulawayo Province', 247, 'BU', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1957, 'Midlands Province', 247, 'MI', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1958, 'Harare Province', 247, 'HA', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1959, 'Manicaland', 247, 'MA', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1960, 'Masvingo Province', 247, 'MV', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1961, 'Bulgan Province', 146, '067', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1962, 'Darkhan-Uul Province', 146, '037', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1963, 'Dornod Province', 146, '061', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1964, 'Khovd Province', 146, '043', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1965, 'Övörkhangai Province', 146, '055', '2019-10-05 12:18:45', '2020-05-01 07:41:52'),
(1966, 'Orkhon Province', 146, '035', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1967, 'Ömnögovi Province', 146, '053', '2019-10-05 12:18:45', '2020-05-01 07:41:52'),
(1968, 'Töv Province', 146, '047', '2019-10-05 12:18:45', '2020-05-01 07:41:52'),
(1969, 'Bayan-Ölgii Province', 146, '071', '2019-10-05 12:18:45', '2020-05-01 07:41:52'),
(1970, 'Dundgovi Province', 146, '059', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1971, 'Uvs Province', 146, '046', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1972, 'Govi-Altai Province', 146, '065', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1973, 'Arkhangai Province', 146, '073', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1974, 'Khentii Province', 146, '039', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1975, 'Khövsgöl Province', 146, '041', '2019-10-05 12:18:45', '2020-05-01 07:41:52'),
(1976, 'Bayankhongor Province', 146, '069', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1977, 'Sükhbaatar Province', 146, '051', '2019-10-05 12:18:45', '2020-05-01 07:41:52'),
(1978, 'Govisümber Province', 146, '064', '2019-10-05 12:18:45', '2020-05-01 07:41:52'),
(1979, 'Zavkhan Province', 146, '057', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1980, 'Selenge Province', 146, '049', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1981, 'Dornogovi Province', 146, '063', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1982, 'Northern Province', 246, '05', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1983, 'Western Province', 246, '01', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1984, 'Copperbelt Province', 246, '08', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1985, 'Northwestern Province', 246, '06', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1986, 'Central Province', 246, '02', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1987, 'Luapula Province', 246, '04', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1988, 'Lusaka Province', 246, '09', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1989, 'Muchinga Province', 246, '10', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1990, 'Southern Province', 246, '07', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1991, 'Eastern Province', 246, '03', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1992, 'Capital Governorate', 18, '13', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1993, 'Southern Governorate', 18, '14', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1994, 'Northern Governorate', 18, '17', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1995, 'Muharraq Governorate', 18, '15', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1996, 'Central Governorate', 18, '16', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1997, 'Rio de Janeiro', 31, 'RJ', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1998, 'Minas Gerais', 31, 'MG', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(1999, 'Amapá', 31, 'AP', '2019-10-05 12:18:45', '2020-05-01 07:41:51'),
(2000, 'Goiás', 31, 'GO', '2019-10-05 12:18:45', '2020-05-01 07:41:51'),
(2001, 'Rio Grande do Sul', 31, 'RS', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2002, 'Bahia', 31, 'BA', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2003, 'Sergipe', 31, 'SE', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2004, 'Amazonas', 31, 'AM', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2005, 'Paraíba', 31, 'PB', '2019-10-05 12:18:45', '2020-05-01 07:41:51'),
(2006, 'Pernambuco', 31, 'PE', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2007, 'Alagoas', 31, 'AL', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2008, 'Piauí', 31, 'PI', '2019-10-05 12:18:45', '2020-05-01 07:41:51'),
(2009, 'Pará', 31, 'PA', '2019-10-05 12:18:45', '2020-05-01 07:41:51'),
(2010, 'Mato Grosso do Sul', 31, 'MS', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2011, 'Mato Grosso', 31, 'MT', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2012, 'Acre', 31, 'AC', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2013, 'Rondônia', 31, 'RO', '2019-10-05 12:18:45', '2020-05-01 07:41:51'),
(2014, 'Santa Catarina', 31, 'SC', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2015, 'Maranhão', 31, 'MA', '2019-10-05 12:18:45', '2020-05-01 07:41:51'),
(2016, 'Ceará', 31, 'CE', '2019-10-05 12:18:45', '2020-05-01 07:41:51'),
(2017, 'Federal District', 31, 'DF', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2018, 'Espírito Santo', 31, 'ES', '2019-10-05 12:18:45', '2020-05-01 07:41:51'),
(2019, 'Rio Grande do Norte', 31, 'RN', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2020, 'Tocantins', 31, 'TO', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2021, 'São Paulo', 31, 'SP', '2019-10-05 12:18:45', '2020-05-01 07:41:51'),
(2022, 'Paraná', 31, 'PR', '2019-10-05 12:18:45', '2020-05-01 07:41:51'),
(2023, 'Aragatsotn Region', 12, 'AG', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2024, 'Ararat Province', 12, 'AR', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2025, 'Vayots Dzor Region', 12, 'VD', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2026, 'Armavir Region', 12, 'AV', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2027, 'Syunik Province', 12, 'SU', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2028, 'Gegharkunik Province', 12, 'GR', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2029, 'Lori Region', 12, 'LO', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2030, 'Yerevan', 12, 'ER', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2031, 'Shirak Region', 12, 'SH', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2032, 'Tavush Region', 12, 'TV', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2033, 'Kotayk Region', 12, 'KT', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2034, 'Cojedes', 239, 'H', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2035, 'Falcón', 239, 'I', '2019-10-05 12:18:45', '2020-06-14 06:17:19'),
(2036, 'Portuguesa', 239, 'P', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2037, 'Miranda', 239, 'M', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2038, 'Lara', 239, 'K', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2039, 'Bolívar', 239, 'F', '2019-10-05 12:18:45', '2020-06-14 06:17:39'),
(2040, 'Carabobo', 239, 'G', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2041, 'Yaracuy', 239, 'U', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2042, 'Zulia', 239, 'V', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2043, 'Trujillo', 239, 'T', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2044, 'Amazonas', 239, 'Z', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2045, 'Guárico', 239, 'J', '2019-10-05 12:18:45', '2020-06-14 06:18:16'),
(2046, 'Federal Dependencies of Venezuela', 239, 'W', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2047, 'Aragua', 239, 'D', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2048, 'Táchira', 239, 'S', '2019-10-05 12:18:45', '2020-06-14 06:18:37'),
(2049, 'Barinas', 239, 'E', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2050, 'Anzoátegui', 239, 'B', '2019-10-05 12:18:45', '2020-06-14 06:15:50'),
(2051, 'Delta Amacuro', 239, 'Y', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2052, 'Nueva Esparta', 239, 'O', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2053, 'Mérida', 239, 'L', '2019-10-05 12:18:45', '2020-06-14 06:22:46'),
(2054, 'Monagas', 239, 'N', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2055, 'Vargas', 239, 'X', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2056, 'Sucre', 239, 'R', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2057, 'Carinthia', 15, '2', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2058, 'Upper Austria', 15, '4', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2059, 'Styria', 15, '6', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2060, 'Vienna', 15, '9', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2061, 'Salzburg', 15, '5', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2062, 'Burgenland', 15, '1', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2063, 'Vorarlberg', 15, '8', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2064, 'Tyrol', 15, '7', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2065, 'Lower Austria', 15, '3', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2066, 'Mid-Western Region', 154, '2', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2067, 'Western Region', 154, '3', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2068, 'Far-Western Development Region', 154, '5', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2069, 'Eastern Development Region', 154, '4', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2070, 'Mechi Zone', 154, 'ME', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2071, 'Bheri Zone', 154, 'BH', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2072, 'Kosi Zone', 154, 'KO', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2073, 'Central Region', 154, '1', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2074, 'Lumbini Zone', 154, 'LU', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2075, 'Narayani Zone', 154, 'NA', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2076, 'Janakpur Zone', 154, 'JA', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2077, 'Rapti Zone', 154, 'RA', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2078, 'Seti Zone', 154, 'SE', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2079, 'Karnali Zone', 154, 'KA', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2080, 'Dhaulagiri Zone', 154, 'DH', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2081, 'Gandaki Zone', 154, 'GA', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2082, 'Bagmati Zone', 154, 'BA', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2083, 'Mahakali Zone', 154, 'MA', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2084, 'Sagarmatha Zone', 154, 'SA', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2085, 'Unity', 206, 'UY', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2086, 'Upper Nile', 206, 'NU', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2087, 'Warrap', 206, 'WR', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2088, 'Northern Bahr el Ghazal', 206, 'BN', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2089, 'Western Equatoria', 206, 'EW', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2090, 'Lakes', 206, 'LK', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(2091, 'Western Bahr el Ghazal', 206, 'BW', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2092, 'Central Equatoria', 206, 'EC', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2093, 'Eastern Equatoria', 206, 'EE', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2094, 'Jonglei State', 206, 'JG', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2095, 'Karditsa Regional Unit', 85, '41', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2096, 'West Greece Region', 85, 'G', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2097, 'Thessaloniki Regional Unit', 85, '54', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2098, 'Arcadia Prefecture', 85, '12', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2099, 'Imathia Regional Unit', 85, '53', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2100, 'Kastoria Regional Unit', 85, '56', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2101, 'Euboea', 85, '04', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2102, 'Grevena Prefecture', 85, '51', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2103, 'Preveza Prefecture', 85, '34', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2104, 'Lefkada Regional Unit', 85, '24', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2105, 'Argolis Regional Unit', 85, '11', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2106, 'Laconia', 85, '16', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2107, 'Pella Regional Unit', 85, '59', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2108, 'West Macedonia Region', 85, 'C', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2109, 'Crete Region', 85, 'M', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2110, 'Epirus Region', 85, 'D', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2111, 'Kilkis Regional Unit', 85, '57', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2112, 'Kozani Prefecture', 85, '58', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2113, 'Ioannina Regional Unit', 85, '33', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2114, 'Phthiotis Prefecture', 85, '06', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2115, 'Chania Regional Unit', 85, '94', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2116, 'Achaea Regional Unit', 85, '13', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2117, 'East Macedonia and Thrace', 85, 'A', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2118, 'South Aegean', 85, 'L', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2119, 'Peloponnese Region', 85, 'J', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2120, 'East Attica Regional Unit', 85, 'A2', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2121, 'Serres Prefecture', 85, '62', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2122, 'Attica Region', 85, 'I', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2123, 'Aetolia-Acarnania Regional Unit', 85, '01', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2124, 'Corfu Prefecture', 85, '22', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2125, 'Central Macedonia', 85, 'B', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2126, 'Boeotia Regional Unit', 85, '03', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2127, 'Kefalonia Prefecture', 85, '23', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2128, 'Central Greece Region', 85, 'H', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2129, 'Corinthia Regional Unit', 85, '15', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2130, 'Drama Regional Unit', 85, '52', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2131, 'Ionian Islands Region', 85, 'F', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2132, 'Larissa Prefecture', 85, '42', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2133, 'Kayin State', 151, '13', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2134, 'Mandalay Region', 151, '04', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2135, 'Yangon Region', 151, '06', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2136, 'Magway Region', 151, '03', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2137, 'Chin State', 151, '14', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2138, 'Rakhine State', 151, '16', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2139, 'Shan State', 151, '17', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2140, 'Tanintharyi Region', 151, '05', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2141, 'Bago', 151, '02', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2142, 'Ayeyarwady Region', 151, '07', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2143, 'Kachin State', 151, '11', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2144, 'Kayah State', 151, '12', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2145, 'Sagaing Region', 151, '01', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2146, 'Naypyidaw Union Territory', 151, '18', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2147, 'Mon State', 151, '15', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2148, 'Bartın Province', 225, '74', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2149, 'Kütahya Province', 225, '43', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2150, 'Sakarya Province', 225, '54', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2151, 'Edirne Province', 225, '22', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2152, 'Van Province', 225, '65', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2153, 'Bingöl Province', 225, '12', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2154, 'Kilis Province', 225, '79', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2155, 'Adıyaman Province', 225, '02', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2156, 'Mersin Province', 225, '33', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2157, 'Denizli Province', 225, '20', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2158, 'Malatya Province', 225, '44', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2159, 'Elazığ Province', 225, '23', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2160, 'Erzincan Province', 225, '24', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2161, 'Amasya Province', 225, '05', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2162, 'Muş Province', 225, '49', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2163, 'Bursa Province', 225, '16', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2164, 'Eskişehir Province', 225, '26', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2165, 'Erzurum Province', 225, '25', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2166, 'Iğdır Province', 225, '76', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2167, 'Tekirdağ Province', 225, '59', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2168, 'Çankırı Province', 225, '18', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2169, 'Antalya Province', 225, '07', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2170, 'Istanbul Province', 225, '34', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2171, 'Konya Province', 225, '42', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2172, 'Bolu Province', 225, '14', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2173, 'Çorum Province', 225, '19', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2174, 'Ordu Province', 225, '52', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2175, 'Balıkesir Province', 225, '10', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2176, 'Kırklareli Province', 225, '39', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2177, 'Bayburt Province', 225, '69', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2178, 'Kırıkkale Province', 225, '71', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2179, 'Afyonkarahisar Province', 225, '03', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2180, 'Kırşehir Province', 225, '40', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2181, 'Sivas Province', 225, '58', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2182, 'Muğla Province', 225, '48', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2183, 'Şanlıurfa Province', 225, '63', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2184, 'Karaman Province', 225, '70', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2185, 'Ardahan Province', 225, '75', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2186, 'Giresun Province', 225, '28', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2187, 'Aydın Province', 225, '09', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2188, 'Yozgat Province', 225, '66', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2189, 'Niğde Province', 225, '51', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2190, 'Hakkâri Province', 225, '30', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2191, 'Artvin Province', 225, '08', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2192, 'Tunceli Province', 225, '62', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2193, 'Ağrı Province', 225, '04', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2194, 'Batman Province', 225, '72', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2195, 'Kocaeli Province', 225, '41', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2196, 'Nevşehir Province', 225, '50', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2197, 'Kastamonu Province', 225, '37', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2198, 'Manisa Province', 225, '45', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2199, 'Tokat Province', 225, '60', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2200, 'Kayseri Province', 225, '38', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2201, 'Uşak Province', 225, '64', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2202, 'Düzce Province', 225, '81', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2203, 'Gaziantep Province', 225, '27', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2204, 'Gümüşhane Province', 225, '29', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2205, 'İzmir Province', 225, '35', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2206, 'Trabzon Province', 225, '61', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2207, 'Siirt Province', 225, '56', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2208, 'Kars Province', 225, '36', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2209, 'Burdur Province', 225, '15', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2210, 'Aksaray Province', 225, '68', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2211, 'Hatay Province', 225, '31', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2212, 'Adana Province', 225, '01', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2213, 'Zonguldak Province', 225, '67', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2214, 'Osmaniye Province', 225, '80', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2215, 'Bitlis Province', 225, '13', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2216, 'Çanakkale Province', 225, '17', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2217, 'Ankara Province', 225, '06', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2218, 'Yalova Province', 225, '77', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2219, 'Rize Province', 225, '53', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2220, 'Samsun Province', 225, '55', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2221, 'Bilecik Province', 225, '11', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2222, 'Isparta Province', 225, '32', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2223, 'Karabük Province', 225, '78', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2224, 'Mardin Province', 225, '47', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2225, 'Şırnak Province', 225, '73', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2226, 'Diyarbakır Province', 225, '21', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2227, 'Kahramanmaraş Province', 225, '46', '2019-10-05 12:18:46', '2020-05-01 07:41:53'),
(2228, 'Lisbon District', 177, '11', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2229, 'Bragança District', 177, '04', '2019-10-05 12:18:46', '2020-05-01 07:41:52'),
(2230, 'Beja District', 177, '02', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2231, 'Madeira', 177, '30', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2232, 'Portalegre District', 177, '12', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2233, 'Azores', 177, '20', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2234, 'Vila Real District', 177, '17', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2235, 'Aveiro District', 177, '01', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2236, 'Évora District', 177, '07', '2019-10-05 12:18:46', '2020-05-01 07:41:52'),
(2237, 'Viseu District', 177, '18', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2238, 'Santarém District', 177, '14', '2019-10-05 12:18:46', '2020-05-01 07:41:52'),
(2239, 'Faro District', 177, '08', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2240, 'Leiria District', 177, '10', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2241, 'Castelo Branco District', 177, '05', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2242, 'Setúbal District', 177, '15', '2019-10-05 12:18:46', '2020-05-01 07:41:52'),
(2243, 'Porto District', 177, '13', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2244, 'Braga District', 177, '03', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2245, 'Viana do Castelo District', 177, '16', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2246, 'Coimbra District', 177, '06', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2247, 'Zhejiang', 45, 'ZJ', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2248, 'Fujian', 45, 'FJ', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2249, 'Shanghai', 45, 'SH', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2250, 'Jiangsu', 45, 'JS', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2251, 'Anhui', 45, 'AH', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2252, 'Shandong', 45, 'SD', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2253, 'Jilin', 45, 'JL', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2254, 'Shanxi', 45, 'SX', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2255, 'Taiwan Province, People\'s Republic of China', 45, 'TW', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2256, 'Jiangxi', 45, 'JX', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2257, 'Beijing', 45, 'BJ', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2258, 'Hunan', 45, 'HN', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2259, 'Henan', 45, 'HA', '2019-10-05 12:18:46', '2019-10-05 12:18:46'),
(2260, 'Yunnan', 45, 'YN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2261, 'Guizhou', 45, 'GZ', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2262, 'Ningxia Hui Autonomous Region', 45, 'NX', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2263, 'Xinjiang', 45, 'XJ', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2264, 'Tibet Autonomous Region', 45, 'XZ', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2265, 'Heilongjiang', 45, 'HL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2266, 'Macau', 45, 'MO', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2267, 'Hong Kong', 45, 'HK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2268, 'Liaoning', 45, 'LN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2269, 'Inner Mongolia', 45, 'NM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2270, 'Qinghai', 45, 'QH', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2271, 'Chongqing', 45, 'CQ', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2272, 'Shaanxi', 45, 'SN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2273, 'Hainan', 45, 'HI', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2274, 'Hubei', 45, 'HB', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2275, 'Gansu', 45, 'GS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2276, 'Keelung', 45, 'TW-KEE', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2277, 'Sichuan', 45, 'SC', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2278, 'Guangxi Zhuang Autonomous Region', 45, 'GX', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2279, 'Guangdong', 45, 'GD', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2280, 'Hebei', 45, 'HE', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2281, 'South Governorate', 121, 'JA', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2282, 'Mount Lebanon Governorate', 121, 'JL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2283, 'Baalbek-Hermel Governorate', 121, 'BH', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2284, 'North Governorate', 121, 'AS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2285, 'Akkar Governorate', 121, 'AK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2286, 'Beirut Governorate', 121, 'BA', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2287, 'Beqaa Governorate', 121, 'BI', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2288, 'Nabatieh Governorate', 121, 'NA', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2289, 'Isle of Wight', 232, 'IOW', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2290, 'St Helens', 232, 'SHN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2291, 'London Borough of Brent', 232, 'BEN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2292, 'Walsall', 232, 'WLL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2293, 'Trafford', 232, 'TRF', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2294, 'City of Southampton', 232, 'STH', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2295, 'Sheffield', 232, 'SHF', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2296, 'West Sussex', 232, 'WSX', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2297, 'City of Peterborough', 232, 'PTE', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2298, 'Caerphilly County Borough', 232, 'CAY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2299, 'Vale of Glamorgan', 232, 'VGL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2300, 'Shetland Islands', 232, 'ZET', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2301, 'Rhondda Cynon Taf', 232, 'RCT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2302, 'Poole', 232, 'POL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2303, 'Central Bedfordshire', 232, 'CBF', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2304, 'Down District Council', 232, 'DOW', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2305, 'City of Portsmouth', 232, 'POR', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2306, 'London Borough of Haringey', 232, 'HRY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2307, 'London Borough of Bexley', 232, 'BEX', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2308, 'Rotherham', 232, 'ROT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2309, 'Hartlepool', 232, 'HPL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2310, 'Telford and Wrekin', 232, 'TFW', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2311, 'Belfast district', 232, 'BFS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2312, 'Cornwall', 232, 'CON', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2313, 'London Borough of Sutton', 232, 'STN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2314, 'Omagh District Council', 232, 'OMH', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2315, 'Banbridge', 232, 'BNB', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2316, 'Causeway Coast and Glens', 232, 'CCG', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2317, 'Newtownabbey Borough Council', 232, 'NTA', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2318, 'City of Leicester', 232, 'LCE', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2319, 'London Borough of Islington', 232, 'ISL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2320, 'Metropolitan Borough of Wigan', 232, 'WGN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2321, 'Oxfordshire', 232, 'OXF', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2322, 'Magherafelt District Council', 232, 'MFT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2323, 'Southend-on-Sea', 232, 'SOS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2324, 'Armagh, Banbridge and Craigavon', 232, 'ABC', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2325, 'Perth and Kinross', 232, 'PKN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2326, 'London Borough of Waltham Forest', 232, 'WFT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2327, 'Rochdale', 232, 'RCH', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2328, 'Merthyr Tydfil County Borough', 232, 'MTY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2329, 'Blackburn with Darwen', 232, 'BBD', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2330, 'Knowsley', 232, 'KWL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2331, 'Armagh City and District Council', 232, 'ARM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2332, 'Middlesbrough', 232, 'MDB', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2333, 'East Renfrewshire', 232, 'ERW', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2334, 'Cumbria', 232, 'CMA', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2335, 'Scotland', 232, 'SCT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2336, 'England', 232, 'ENG', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2337, 'Northern Ireland', 232, 'NIR', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2338, 'Wales', 232, 'WLS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2339, 'Bath and North East Somerset', 232, 'BAS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2340, 'Liverpool', 232, 'LIV', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2341, 'Sandwell', 232, 'SAW', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2342, 'Bournemouth', 232, 'BMH', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2343, 'Isles of Scilly', 232, 'IOS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2344, 'Falkirk', 232, 'FAL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2345, 'Dorset', 232, 'DOR', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2346, 'Scottish Borders', 232, 'SCB', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2347, 'London Borough of Havering', 232, 'HAV', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2348, 'Moyle District Council', 232, 'MYL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2349, 'London Borough of Camden', 232, 'CMD', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2350, 'Newry and Mourne District Council', 232, 'NYM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2351, 'Neath Port Talbot County Borough', 232, 'NTL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2352, 'Conwy County Borough', 232, 'CWY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2353, 'Outer Hebrides', 232, 'ELS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2354, 'West Lothian', 232, 'WLN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2355, 'Lincolnshire', 232, 'LIN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2356, 'London Borough of Barking and Dagenham', 232, 'BDG', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2357, 'City of Westminster', 232, 'WSM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2358, 'London Borough of Lewisham', 232, 'LEW', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2359, 'City of Nottingham', 232, 'NGM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2360, 'Moray', 232, 'MRY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2361, 'Ballymoney', 232, 'BLY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2362, 'South Lanarkshire', 232, 'SLK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2363, 'Ballymena Borough', 232, 'BLA', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2364, 'Doncaster', 232, 'DNC', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2365, 'Northumberland', 232, 'NBL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2366, 'Fermanagh and Omagh', 232, 'FMO', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2367, 'Tameside', 232, 'TAM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2368, 'Royal Borough of Kensington and Chelsea', 232, 'KEC', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2369, 'Hertfordshire', 232, 'HRT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2370, 'East Riding of Yorkshire', 232, 'ERY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2371, 'Kirklees', 232, 'KIR', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2372, 'City of Sunderland', 232, 'SND', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2373, 'Gloucestershire', 232, 'GLS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2374, 'East Ayrshire', 232, 'EAY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2375, 'United Kingdom', 232, 'UKM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2376, 'London Borough of Hillingdon', 232, 'HIL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2377, 'South Ayrshire', 232, 'SAY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2378, 'Ascension Island', 232, 'SH-AC', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2379, 'Gwynedd', 232, 'GWN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2380, 'London Borough of Hounslow', 232, 'HNS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2381, 'Medway', 232, 'MDW', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2382, 'Limavady Borough Council', 232, 'LMV', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2383, 'Highland', 232, 'HLD', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2384, 'North East Lincolnshire', 232, 'NEL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2385, 'London Borough of Harrow', 232, 'HRW', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2386, 'Somerset', 232, 'SOM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2387, 'Angus', 232, 'ANS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2388, 'Inverclyde', 232, 'IVC', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2389, 'Darlington', 232, 'DAL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2390, 'London Borough of Tower Hamlets', 232, 'TWH', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2391, 'Wiltshire', 232, 'WIL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2392, 'Argyll and Bute', 232, 'AGB', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2393, 'Strabane District Council', 232, 'STB', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2394, 'Stockport', 232, 'SKP', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2395, 'Brighton and Hove', 232, 'BNH', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2396, 'London Borough of Lambeth', 232, 'LBH', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2397, 'London Borough of Redbridge', 232, 'RDB', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2398, 'Manchester', 232, 'MAN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2399, 'Mid Ulster', 232, 'MUL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2400, 'South Gloucestershire', 232, 'SGC', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2401, 'Aberdeenshire', 232, 'ABD', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2402, 'Monmouthshire', 232, 'MON', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2403, 'Derbyshire', 232, 'DBY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2404, 'Glasgow', 232, 'GLG', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2405, 'Buckinghamshire', 232, 'BKM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2406, 'County Durham', 232, 'DUR', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2407, 'Shropshire', 232, 'SHR', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2408, 'Wirral', 232, 'WRL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2409, 'South Tyneside', 232, 'STY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2410, 'Essex', 232, 'ESS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2411, 'London Borough of Hackney', 232, 'HCK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2412, 'Antrim and Newtownabbey', 232, 'ANN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2413, 'City of Bristol', 232, 'BST', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2414, 'East Sussex', 232, 'ESX', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2415, 'Dumfries and Galloway', 232, 'DGY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2416, 'Milton Keynes', 232, 'MIK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2417, 'Derry City Council', 232, 'DRY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2418, 'London Borough of Newham', 232, 'NWM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2419, 'Wokingham', 232, 'WOK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2420, 'Warrington', 232, 'WRT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2421, 'Stockton-on-Tees', 232, 'STT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2422, 'Swindon', 232, 'SWD', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2423, 'Cambridgeshire', 232, 'CAM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2424, 'City of London', 232, 'LND', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2425, 'Birmingham', 232, 'BIR', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2426, 'City of York', 232, 'YOR', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2427, 'Slough', 232, 'SLG', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2428, 'Edinburgh', 232, 'EDH', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2429, 'Mid and East Antrim', 232, 'MEA', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2430, 'North Somerset', 232, 'NSM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2431, 'Gateshead', 232, 'GAT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2432, 'London Borough of Southwark', 232, 'SWK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2433, 'City and County of Swansea', 232, 'SWA', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2434, 'London Borough of Wandsworth', 232, 'WND', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2435, 'Hampshire', 232, 'HAM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2436, 'Wrexham County Borough', 232, 'WRX', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2437, 'Flintshire', 232, 'FLN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2438, 'Coventry', 232, 'COV', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2439, 'Carrickfergus Borough Council', 232, 'CKF', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2440, 'West Dunbartonshire', 232, 'WDU', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2441, 'Powys', 232, 'POW', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2442, 'Cheshire West and Chester', 232, 'CHW', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2443, 'Renfrewshire', 232, 'RFW', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2444, 'Cheshire East', 232, 'CHE', '2019-10-05 12:18:47', '2019-10-05 12:18:47');
INSERT INTO `zones` (`zone_id`, `zone_name`, `zone_country_id`, `zone_code`, `created_at`, `updated_at`) VALUES
(2445, 'Cookstown District Council', 232, 'CKT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2446, 'Derry City and Strabane', 232, 'DRS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2447, 'Staffordshire', 232, 'STS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2448, 'London Borough of Hammersmith and Fulham', 232, 'HMF', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2449, 'Craigavon Borough Council', 232, 'CGV', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2450, 'Clackmannanshire', 232, 'CLK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2451, 'Blackpool', 232, 'BPL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2452, 'Bridgend County Borough', 232, 'BGE', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2453, 'North Lincolnshire', 232, 'NLN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2454, 'East Dunbartonshire', 232, 'EDU', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2455, 'Reading', 232, 'RDG', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2456, 'Nottinghamshire', 232, 'NTT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2457, 'Dudley', 232, 'DUD', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2458, 'Newcastle upon Tyne', 232, 'NET', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2459, 'Bury', 232, 'BUR', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2460, 'Lisburn and Castlereagh', 232, 'LBC', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2461, 'Coleraine Borough Council', 232, 'CLR', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2462, 'East Lothian', 232, 'ELN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2463, 'Aberdeen', 232, 'ABE', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2464, 'Kent', 232, 'KEN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2465, 'Wakefield', 232, 'WKF', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2466, 'Halton', 232, 'HAL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2467, 'Suffolk', 232, 'SFK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2468, 'Thurrock', 232, 'THR', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2469, 'Solihull', 232, 'SOL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2470, 'Bracknell Forest', 232, 'BRC', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2471, 'West Berkshire', 232, 'WBK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2472, 'Rutland', 232, 'RUT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2473, 'Norfolk', 232, 'NFK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2474, 'Orkney Islands', 232, 'ORK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2475, 'City of Kingston upon Hull', 232, 'KHL', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2476, 'London Borough of Enfield', 232, 'ENF', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2477, 'Oldham', 232, 'OLD', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2478, 'Torbay', 232, 'TOB', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2479, 'Fife', 232, 'FIF', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2480, 'Northamptonshire', 232, 'NTH', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2481, 'Royal Borough of Kingston upon Thames', 232, 'KTT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2482, 'Windsor and Maidenhead', 232, 'WNM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2483, 'London Borough of Merton', 232, 'MRT', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2484, 'Carmarthenshire', 232, 'CMN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2485, 'City of Derby', 232, 'DER', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2486, 'Pembrokeshire', 232, 'PEM', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2487, 'North Lanarkshire', 232, 'NLK', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2488, 'Stirling', 232, 'STG', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2489, 'City of Wolverhampton', 232, 'WLV', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2490, 'London Borough of Bromley', 232, 'BRY', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2491, 'Devon', 232, 'DEV', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2492, 'Royal Borough of Greenwich', 232, 'GRE', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2493, 'Salford', 232, 'SLF', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2494, 'Lisburn City Council', 232, 'LSB', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2495, 'Lancashire', 232, 'LAN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2496, 'Torfaen', 232, 'TOF', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2497, 'Denbighshire', 232, 'DEN', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2498, 'Ards', 232, 'ARD', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2499, 'Barnsley', 232, 'BNS', '2019-10-05 12:18:47', '2019-10-05 12:18:47'),
(2500, 'Herefordshire', 232, 'HEF', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2501, 'London Borough of Richmond upon Thames', 232, 'RIC', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2502, 'Saint Helena', 232, 'SH-HL', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2503, 'Leeds', 232, 'LDS', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2504, 'Bolton', 232, 'BOL', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2505, 'Warwickshire', 232, 'WAR', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2506, 'City of Stoke-on-Trent', 232, 'STE', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2507, 'Bedford', 232, 'BDF', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2508, 'Dungannon and South Tyrone Borough Council', 232, 'DGN', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2509, 'Ceredigion', 232, 'CGN', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2510, 'Worcestershire', 232, 'WOR', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2511, 'Dundee', 232, 'DND', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2512, 'London Borough of Croydon', 232, 'CRY', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2513, 'North Down Borough Council', 232, 'NDN', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2514, 'City of Plymouth', 232, 'PLY', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2515, 'Larne Borough Council', 232, 'LRN', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2516, 'Leicestershire', 232, 'LEC', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2517, 'Calderdale', 232, 'CLD', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2518, 'Sefton', 232, 'SFT', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2519, 'Midlothian', 232, 'MLN', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2520, 'London Borough of Barnet', 232, 'BNE', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2521, 'North Tyneside', 232, 'NTY', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2522, 'North Yorkshire', 232, 'NYK', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2523, 'Ards and North Down', 232, 'AND', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2524, 'Newport', 232, 'NWP', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2525, 'Castlereagh', 232, 'CSR', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2526, 'Surrey', 232, 'SRY', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2527, 'Redcar and Cleveland', 232, 'RCC', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2528, 'City and County of Cardiff', 232, 'CRF', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2529, 'Bradford', 232, 'BRD', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2530, 'Blaenau Gwent County Borough', 232, 'BGW', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2531, 'Fermanagh District Council', 232, 'FER', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2532, 'London Borough of Ealing', 232, 'EAL', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2533, 'Antrim', 232, 'ANT', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2534, 'Newry, Mourne and Down', 232, 'NMD', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2535, 'North Ayrshire', 232, 'NAY', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2536, 'Tashkent', 236, 'TK', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2537, 'Namangan Region', 236, 'NG', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2538, 'Fergana Region', 236, 'FA', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2539, 'Xorazm Region', 236, 'XO', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2540, 'Andijan Region', 236, 'AN', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2541, 'Bukhara Region', 236, 'BU', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2542, 'Navoiy Region', 236, 'NW', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2543, 'Qashqadaryo Region', 236, 'QA', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2544, 'Samarqand Region', 236, 'SA', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2545, 'Jizzakh Region', 236, 'JI', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2546, 'Surxondaryo Region', 236, 'SU', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2547, 'Sirdaryo Region', 236, 'SI', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2548, 'Karakalpakstan', 236, 'QR', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2549, 'Tashkent Region', 236, 'TO', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2550, 'Ariana Governorate', 224, '12', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2551, 'Bizerte Governorate', 224, '23', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2552, 'Jendouba Governorate', 224, '32', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2553, 'Monastir Governorate', 224, '52', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2554, 'Tunis Governorate', 224, '11', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2555, 'Manouba Governorate', 224, '14', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2556, 'Gafsa Governorate', 224, '71', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2557, 'Sfax Governorate', 224, '61', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2558, 'Gabès Governorate', 224, '81', '2019-10-05 12:18:48', '2020-05-01 07:41:53'),
(2559, 'Tataouine Governorate', 224, '83', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2560, 'Medenine Governorate', 224, '82', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2561, 'Kef Governorate', 224, '33', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2562, 'Kebili Governorate', 224, '73', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2563, 'Siliana Governorate', 224, '34', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2564, 'Kairouan Governorate', 224, '41', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2565, 'Zaghouan Governorate', 224, '22', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2566, 'Ben Arous Governorate', 224, '13', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2567, 'Sidi Bouzid Governorate', 224, '43', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2568, 'Mahdia Governorate', 224, '53', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2569, 'Tozeur Governorate', 224, '72', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2570, 'Kasserine Governorate', 224, '42', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2571, 'Sousse Governorate', 224, '51', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2572, 'Kassrine', 224, '31', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2573, 'Ratak Chain', 137, 'T', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2574, 'Ralik Chain', 137, 'L', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2575, 'Centrale Region', 220, 'C', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2576, 'Maritime', 220, 'M', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2577, 'Plateaux Region', 220, 'P', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2578, 'Savanes Region', 220, 'S', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2579, 'Kara Region', 220, 'K', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2580, 'Chuuk State', 143, 'TRK', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2581, 'Pohnpei State', 143, 'PNI', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2582, 'Yap State', 143, 'YAP', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2583, 'Kosrae State', 143, 'KSA', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2584, 'Vaavu Atoll', 133, '04', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2585, 'Shaviyani Atoll', 133, '24', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2586, 'Haa Alif Atoll', 133, '07', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2587, 'Alif Alif Atoll', 133, '02', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2588, 'North Province', 133, 'NO', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2589, 'North Central Province', 133, 'NC', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2590, 'Dhaalu Atoll', 133, '17', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2591, 'Thaa Atoll', 133, '08', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2592, 'Noonu Atoll', 133, '25', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2593, 'Upper South Province', 133, 'US', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2594, 'Addu Atoll', 133, '01', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2595, 'Gnaviyani Atoll', 133, '29', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2596, 'Kaafu Atoll', 133, '26', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2597, 'Haa Dhaalu Atoll', 133, '23', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2598, 'Gaafu Alif Atoll', 133, '27', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2599, 'Faafu Atoll', 133, '14', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2600, 'Alif Dhaal Atoll', 133, '00', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2601, 'Laamu Atoll', 133, '05', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2602, 'Raa Atoll', 133, '13', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2603, 'Gaafu Dhaalu Atoll', 133, '28', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2604, 'Central Province', 133, 'CE', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2605, 'South Province', 133, 'SU', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2606, 'South Central Province', 133, 'SC', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2607, 'Lhaviyani Atoll', 133, '03', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2608, 'Meemu Atoll', 133, '12', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2609, 'Malé', 133, 'MLE', '2019-10-05 12:18:48', '2020-05-01 07:41:52'),
(2610, 'Utrecht', 156, 'UT', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2611, 'Gelderland', 156, 'GE', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2612, 'North Holland', 156, 'NH', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2613, 'Drenthe', 156, 'DR', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2614, 'South Holland', 156, 'ZH', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2615, 'Limburg', 156, 'LI', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2616, 'Sint Eustatius', 156, 'BQ3', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2617, 'Groningen', 156, 'GR', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2618, 'Overijssel', 156, 'OV', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2619, 'Flevoland', 156, 'FL', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2620, 'Zeeland', 156, 'ZE', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2621, 'Saba', 156, 'BQ2', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2622, 'Friesland', 156, 'FR', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2623, 'North Brabant', 156, 'NB', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2624, 'Bonaire', 156, 'BQ1', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2625, 'Savanes Region', 54, '03', '2019-10-05 12:18:48', '2019-10-05 12:18:48'),
(2626, 'Agnéby', 54, '16', '2019-10-05 12:18:49', '2020-05-01 07:41:51'),
(2627, 'Lagunes District', 54, 'LG', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2628, 'Sud-Bandama', 54, '15', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2629, 'Montagnes District', 54, 'MG', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2630, 'Moyen-Comoé', 54, '05', '2019-10-05 12:18:49', '2020-05-01 07:41:51'),
(2631, 'Marahoué Region', 54, '12', '2019-10-05 12:18:49', '2020-05-01 07:41:51'),
(2632, 'Lacs District', 54, 'LC', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2633, 'Fromager', 54, '18', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2634, 'Abidjan', 54, 'AB', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2635, 'Bas-Sassandra Region', 54, '09', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2636, 'Bafing Region', 54, '17', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2637, 'Vallée du Bandama District', 54, 'VB', '2019-10-05 12:18:49', '2020-05-01 07:41:51'),
(2638, 'Haut-Sassandra', 54, '02', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2639, 'Lagunes region', 54, '01', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2640, 'Lacs Region', 54, '07', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2641, 'Zanzan Region', 54, 'ZZ', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2642, 'Denguélé Region', 54, '10', '2019-10-05 12:18:49', '2020-05-01 07:41:51'),
(2643, 'Bas-Sassandra District', 54, 'BS', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2644, 'Denguélé District', 54, 'DN', '2019-10-05 12:18:49', '2020-05-01 07:41:51'),
(2645, 'Dix-Huit Montagnes', 54, '06', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2646, 'Moyen-Cavally', 54, '19', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2647, 'Vallée du Bandama Region', 54, '04', '2019-10-05 12:18:49', '2020-05-01 07:41:51'),
(2648, 'Sassandra-Marahoué District', 54, 'SM', '2019-10-05 12:18:49', '2020-05-01 07:41:51'),
(2649, 'Worodougou', 54, '14', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2650, 'Woroba District', 54, 'WR', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2651, 'Gôh-Djiboua District', 54, 'GD', '2019-10-05 12:18:49', '2020-05-01 07:41:51'),
(2652, 'Sud-Comoé', 54, '13', '2019-10-05 12:18:49', '2020-05-01 07:41:51'),
(2653, 'Yamoussoukro', 54, 'YM', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2654, 'Comoé District', 54, 'CM', '2019-10-05 12:18:49', '2020-05-01 07:41:51'),
(2655, 'N\'zi-Comoé', 54, '11', '2019-10-05 12:18:49', '2020-05-01 07:41:51'),
(2656, 'Far North', 38, 'EN', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2657, 'Northwest', 38, 'NW', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2658, 'Southwest', 38, 'SW', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2659, 'South', 38, 'SU', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2660, 'Centre', 38, 'CE', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2661, 'East', 38, 'ES', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2662, 'Littoral', 38, 'LT', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2663, 'Adamawa', 38, 'AD', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2664, 'West', 38, 'OU', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2665, 'North', 38, 'NO', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2666, 'Banjul', 80, 'B', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2667, 'West Coast Division', 80, 'W', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2668, 'Upper River Division', 80, 'U', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2669, 'Central River Division', 80, 'M', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2670, 'Lower River Division', 80, 'L', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2671, 'North Bank Division', 80, 'N', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2672, 'Beyla Prefecture', 92, 'BE', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2673, 'Mandiana Prefecture', 92, 'MD', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2674, 'Yomou Prefecture', 92, 'YO', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2675, 'Fria Prefecture', 92, 'FR', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2676, 'Boké Region', 92, 'B', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2677, 'Labé Region', 92, 'L', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2678, 'Nzérékoré Prefecture', 92, 'NZ', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2679, 'Dabola Prefecture', 92, 'DB', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2680, 'Labé Prefecture', 92, 'LA', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2681, 'Dubréka Prefecture', 92, 'DU', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2682, 'Faranah Prefecture', 92, 'FA', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2683, 'Forécariah Prefecture', 92, 'FO', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2684, 'Nzérékoré Region', 92, 'N', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2685, 'Gaoual Prefecture', 92, 'GA', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2686, 'Conakry', 92, 'C', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2687, 'Télimélé Prefecture', 92, 'TE', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2688, 'Dinguiraye Prefecture', 92, 'DI', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2689, 'Mamou Prefecture', 92, 'MM', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2690, 'Lélouma Prefecture', 92, 'LE', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2691, 'Kissidougou Prefecture', 92, 'KS', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2692, 'Koubia Prefecture', 92, 'KB', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2693, 'Kindia Prefecture', 92, 'KD', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2694, 'Pita Prefecture', 92, 'PI', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2695, 'Kouroussa Prefecture', 92, 'KO', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2696, 'Tougué Prefecture', 92, 'TO', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2697, 'Kankan Region', 92, 'K', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2698, 'Mamou Region', 92, 'M', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2699, 'Boffa Prefecture', 92, 'BF', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2700, 'Mali Prefecture', 92, 'ML', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2701, 'Kindia Region', 92, 'D', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2702, 'Macenta Prefecture', 92, 'MC', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2703, 'Koundara Prefecture', 92, 'KN', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2704, 'Kankan Prefecture', 92, 'KA', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2705, 'Coyah Prefecture', 92, 'CO', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2706, 'Dalaba Prefecture', 92, 'DL', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2707, 'Siguiri Prefecture', 92, 'SI', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2708, 'Lola Prefecture', 92, 'LO', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2709, 'Boké Prefecture', 92, 'BK', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2710, 'Kérouané Prefecture', 92, 'KE', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2711, 'Guéckédou Prefecture', 92, 'GU', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2712, 'Tombali Region', 93, 'TO', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2713, 'Cacheu Region', 93, 'CA', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2714, 'Biombo Region', 93, 'BM', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2715, 'Quinara Region', 93, 'QU', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2716, 'Sul Province', 93, 'S', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2717, 'Norte Province', 93, 'N', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2718, 'Oio Region', 93, 'OI', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2719, 'Gabú Region', 93, 'GA', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2720, 'Bafatá', 93, 'BA', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2721, 'Leste Province', 93, 'L', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2722, 'Bolama Region', 93, 'BL', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2723, 'Woleu-Ntem Province', 79, '9', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2724, 'Ogooué-Ivindo Province', 79, '6', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2725, 'Nyanga Province', 79, '5', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2726, 'Haut-Ogooué Province', 79, '2', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2727, 'Estuaire Province', 79, '1', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2728, 'Ogooué-Maritime Province', 79, '8', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2729, 'Ogooué-Lolo Province', 79, '7', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2730, 'Moyen-Ogooué Province', 79, '3', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2731, 'Ngounié Province', 79, '4', '2019-10-05 12:18:49', '2020-05-01 07:41:52'),
(2732, 'Tshuapa District', 51, 'TU', '2019-10-05 12:18:49', '2019-10-05 12:18:49'),
(2733, 'Tanganyika Province', 51, 'TA', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2734, 'Haut-Uele', 51, 'HU', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2735, 'Kasaï-Oriental', 51, 'KE', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2736, 'Orientale Province', 51, 'OR', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2737, 'Kasaï-Occidental', 51, 'KW', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2738, 'South Kivu', 51, 'SK', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2739, 'Nord-Ubangi District', 51, 'NU', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2740, 'Kwango District', 51, 'KG', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2741, 'Kinshasa', 51, 'KN', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2742, 'Katanga Province', 51, 'KA', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2743, 'Sankuru District', 51, 'SA', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2744, 'Équateur', 51, 'EQ', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2745, 'Maniema', 51, 'MA', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2746, 'Bas-Congo province', 51, 'BC', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2747, 'Lomami Province', 51, 'LO', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2748, 'Sud-Ubangi', 51, 'SU', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2749, 'North Kivu', 51, 'NK', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2750, 'Haut-Katanga Province', 51, 'HK', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2751, 'Ituri Interim Administration', 51, 'IT', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2752, 'Mongala District', 51, 'MO', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2753, 'Bas-Uele', 51, 'BU', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2754, 'Bandundu Province', 51, 'BN', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2755, 'Mai-Ndombe Province', 51, 'MN', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2756, 'Tshopo District', 51, 'TO', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2757, 'Kasaï District', 51, 'KS', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2758, 'Haut-Lomami District', 51, 'HL', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2759, 'Kwilu District', 51, 'KL', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2760, 'Cuyuni-Mazaruni', 94, 'CU', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2761, 'Potaro-Siparuni', 94, 'PT', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2762, 'Mahaica-Berbice', 94, 'MA', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2763, 'Upper Demerara-Berbice', 94, 'UD', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2764, 'Barima-Waini', 94, 'BA', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2765, 'Pomeroon-Supenaam', 94, 'PM', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2766, 'East Berbice-Corentyne', 94, 'EB', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2767, 'Demerara-Mahaica', 94, 'DE', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2768, 'Essequibo Islands-West Demerara', 94, 'ES', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2769, 'Upper Takutu-Upper Essequibo', 94, 'UT', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2770, 'Presidente Hayes Department', 172, '15', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2771, 'Canindeyú', 172, '14', '2019-10-05 12:18:50', '2020-05-01 07:41:52'),
(2772, 'Guairá Department', 172, '4', '2019-10-05 12:18:50', '2020-05-01 07:41:52'),
(2773, 'Caaguazú', 172, '5', '2019-10-05 12:18:50', '2020-05-01 07:41:52'),
(2774, 'Paraguarí Department', 172, '9', '2019-10-05 12:18:50', '2020-05-01 07:41:52'),
(2775, 'Caazapá', 172, '6', '2019-10-05 12:18:50', '2020-05-01 07:41:52'),
(2776, 'San Pedro Department', 172, '2', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2777, 'Central Department', 172, '11', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2778, 'Itapúa', 172, '7', '2019-10-05 12:18:50', '2020-05-01 07:41:52'),
(2779, 'Concepción Department', 172, '1', '2019-10-05 12:18:50', '2020-05-01 07:41:52'),
(2780, 'Boquerón Department', 172, '19', '2019-10-05 12:18:50', '2020-05-01 07:41:52'),
(2781, 'Ñeembucú Department', 172, '12', '2019-10-05 12:18:50', '2020-05-01 07:41:52'),
(2782, 'Amambay Department', 172, '13', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2783, 'Cordillera Department', 172, '3', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2784, 'Alto Paraná Department', 172, '10', '2019-10-05 12:18:50', '2020-05-01 07:41:52'),
(2785, 'Alto Paraguay Department', 172, '16', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2786, 'Misiones Department', 172, '8', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2787, 'Jaffna District', 208, '41', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2788, 'Kandy District', 208, '21', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2789, 'Kalutara District', 208, '13', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2790, 'Badulla District', 208, '81', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2791, 'Hambantota District', 208, '33', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2792, 'Galle District', 208, '31', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2793, 'Kilinochchi District', 208, '42', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2794, 'Nuwara Eliya District', 208, '23', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2795, 'Trincomalee District', 208, '53', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2796, 'Puttalam District', 208, '62', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2797, 'Kegalle District', 208, '92', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2798, 'Central Province', 208, '2', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2799, 'Ampara District', 208, '52', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2800, 'North Central Province', 208, '7', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2801, 'Southern Province', 208, '3', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2802, 'Western Province', 208, '1', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2803, 'Sabaragamuwa Province', 208, '9', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2804, 'Gampaha District', 208, '12', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2805, 'Mannar District', 208, '43', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2806, 'Matara District', 208, '32', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2807, 'Ratnapura district', 208, '91', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2808, 'Eastern Province', 208, '5', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2809, 'Vavuniya District', 208, '44', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2810, 'Matale District', 208, '22', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2811, 'Uva Province', 208, '8', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2812, 'Polonnaruwa District', 208, '72', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2813, 'Northern Province', 208, '4', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2814, 'Mullaitivu District', 208, '45', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2815, 'Colombo District', 208, '11', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2816, 'Anuradhapura District', 208, '71', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2817, 'North Western Province', 208, '6', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2818, 'Batticaloa District', 208, '51', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2819, 'Monaragala District', 208, '82', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2820, 'Mohéli', 49, 'M', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2821, 'Anjouan', 49, 'A', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2822, 'Grande Comore', 49, 'G', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2823, 'Atacama Region', 44, 'AT', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2824, 'Santiago Metropolitan Region', 44, 'RM', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2825, 'Coquimbo Region', 44, 'CO', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2826, 'Araucanía Region', 44, 'AR', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2827, 'Bío Bío Region', 44, 'BI', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2828, 'Aysén Region', 44, 'AI', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2829, 'Arica y Parinacota Region', 44, 'AP', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2830, 'Valparaíso', 44, 'VS', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2831, 'Ñuble Region', 44, 'NB', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2832, 'Antofagasta Region', 44, 'AN', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2833, 'Maule Region', 44, 'ML', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2834, 'Los Ríos Region', 44, 'LR', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2835, 'Los Lagos Region', 44, 'LL', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2836, 'Magellan and the Chilean Antarctic Region', 44, 'MA', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2837, 'Tarapacá Region', 44, 'TA', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2838, 'O\'Higgins', 44, 'LI', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2839, 'Commewijne District', 210, 'CM', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2840, 'Nickerie District', 210, 'NI', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2841, 'Para District', 210, 'PR', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2842, 'Coronie District', 210, 'CR', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2843, 'Paramaribo District', 210, 'PM', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2844, 'Wanica District', 210, 'WA', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2845, 'Marowijne District', 210, 'MA', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2846, 'Brokopondo District', 210, 'BR', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2847, 'Sipaliwini District', 210, 'SI', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2848, 'Saramacca District', 210, 'SA', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2849, 'Riyadh Region', 194, '01', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2850, 'Makkah Region', 194, '02', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2851, 'Al Madinah Region', 194, '03', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2852, 'Tabuk Region', 194, '07', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2853, '\'Asir Region', 194, '14', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2854, 'Northern Borders Region', 194, '08', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2855, 'Ha\'il Region', 194, '06', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2856, 'Eastern Province', 194, '04', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2857, 'Al Jawf Region', 194, '12', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2858, 'Jizan Region', 194, '09', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2859, 'Al Bahah Region', 194, '11', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2860, 'Najran Region', 194, '10', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2861, 'Al-Qassim Region', 194, '05', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2862, 'Plateaux Department', 50, '14', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2863, 'Pointe-Noire', 50, '16', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2864, 'Cuvette Department', 50, '8', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2865, 'Likouala Department', 50, '7', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2866, 'Bouenza Department', 50, '11', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2867, 'Kouilou Department', 50, '5', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2868, 'Lékoumou Department', 50, '2', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2869, 'Cuvette-Ouest Department', 50, '15', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2870, 'Brazzaville', 50, 'BZV', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2871, 'Sangha Department', 50, '13', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2872, 'Niari Department', 50, '9', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2873, 'Pool Department', 50, '12', '2019-10-05 12:18:50', '2019-10-05 12:18:50'),
(2874, 'Quindío Department', 48, 'QUI', '2019-10-05 12:18:50', '2020-05-01 07:41:51'),
(2875, 'Cundinamarca Department', 48, 'CUN', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2876, 'Chocó Department', 48, 'CHO', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2877, 'Norte de Santander Department', 48, 'NSA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2878, 'Meta', 48, 'MET', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2879, 'Risaralda Department', 48, 'RIS', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2880, 'Atlántico Department', 48, 'ATL', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2881, 'Arauca Department', 48, 'ARA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2882, 'Guainía Department', 48, 'GUA', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2883, 'Tolima Department', 48, 'TOL', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2884, 'Cauca Department', 48, 'CAU', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2885, 'Vaupés Department', 48, 'VAU', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2886, 'Magdalena Department', 48, 'MAG', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2887, 'Caldas Department', 48, 'CAL', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2888, 'Guaviare Department', 48, 'GUV', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2889, 'La Guajira Department', 48, 'LAG', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2890, 'Antioquia Department', 48, 'ANT', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2891, 'Caquetá Department', 48, 'CAQ', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2892, 'Casanare Department', 48, 'CAS', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2893, 'Bolívar Department', 48, 'BOL', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2894, 'Vichada Department', 48, 'VID', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2895, 'Amazonas Department', 48, 'AMA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2896, 'Putumayo Department', 48, 'PUT', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2897, 'Nariño Department', 48, 'NAR', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2898, 'Córdoba Department', 48, 'COR', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2899, 'Cesar Department', 48, 'CES', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2900, 'Archipelago of Saint Andréws, Providence and Saint Catalina', 48, 'SAP', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2901, 'Santander Department', 48, 'SAN', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2902, 'Sucre Department', 48, 'SUC', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2903, 'Boyacá Department', 48, 'BOY', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2904, 'Valle del Cauca Department', 48, 'VAC', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2905, 'Galápagos Province', 64, 'W', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2906, 'Sucumbíos Province', 64, 'U', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2907, 'Pastaza Province', 64, 'Y', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2908, 'Tungurahua Province', 64, 'T', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2909, 'Zamora-Chinchipe Province', 64, 'Z', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2910, 'Los Ríos Province', 64, 'R', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2911, 'Imbabura Province', 64, 'I', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2912, 'Santa Elena Province', 64, 'SE', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2913, 'Manabí Province', 64, 'M', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2914, 'Guayas Province', 64, 'G', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2915, 'Carchi Province', 64, 'C', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2916, 'Napo Province', 64, 'N', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2917, 'Cañar Province', 64, 'F', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2918, 'Morona-Santiago Province', 64, 'S', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2919, 'Santo Domingo de los Tsáchilas Province', 64, 'SD', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2920, 'Bolívar Province', 64, 'B', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2921, 'Cotopaxi Province', 64, 'X', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2922, 'Esmeraldas', 64, 'E', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2923, 'Azuay Province', 64, 'A', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2924, 'El Oro Province', 64, 'O', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2925, 'Chimborazo Province', 64, 'H', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2926, 'Orellana Province', 64, 'D', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2927, 'Pichincha Province', 64, 'P', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2928, 'Obock Region', 60, 'OB', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2929, 'Djibouti', 60, 'DJ', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2930, 'Dikhil Region', 60, 'DI', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2931, 'Tadjourah Region', 60, 'TA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2932, 'Arta Region', 60, 'AR', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2933, 'Ali Sabieh Region', 60, 'AS', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2934, 'Hama Governorate', 215, 'HM', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2935, 'Rif Dimashq Governorate', 215, 'RD', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2936, 'As-Suwayda Governorate', 215, 'SU', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2937, 'Deir ez-Zor Governorate', 215, 'DY', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2938, 'Latakia Governorate', 215, 'LA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2939, 'Damascus Governorate', 215, 'DI', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2940, 'Idlib Governorate', 215, 'ID', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2941, 'Al-Hasakah Governorate', 215, 'HA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2942, 'Homs Governorate', 215, 'HI', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2943, 'Quneitra Governorate', 215, 'QU', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2944, 'Al-Raqqah Governorate', 215, 'RA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2945, 'Daraa Governorate', 215, 'DR', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2946, 'Aleppo Governorate', 215, 'HL', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2947, 'Tartus Governorate', 215, 'TA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2948, 'Fianarantsoa Province', 130, 'F', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2949, 'Toliara Province', 130, 'U', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2950, 'Antsiranana Province', 130, 'D', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2951, 'Antananarivo Province', 130, 'T', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2952, 'Toamasina Province', 130, 'A', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2953, 'Mahajanga Province', 130, 'M', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2954, 'Mogilev Region', 21, 'MA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2955, 'Gomel Region', 21, 'HO', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2956, 'Grodno Region', 21, 'HR', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2957, 'Minsk Region', 21, 'MI', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2958, 'Minsk', 21, 'HM', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2959, 'Brest Region', 21, 'BR', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2960, 'Vitebsk Region', 21, 'VI', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2961, 'Murqub', 124, 'MB', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2962, 'Nuqat al Khams', 124, 'NQ', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2963, 'Zawiya District', 124, 'ZA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2964, 'Al Wahat District', 124, 'WA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2965, 'Sabha District', 124, 'SB', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2966, 'Derna District', 124, 'DR', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2967, 'Murzuq District', 124, 'MQ', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2968, 'Marj District', 124, 'MJ', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2969, 'Ghat District', 124, 'GT', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2970, 'Jufra', 124, 'JU', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2971, 'Tripoli District', 124, 'TB', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2972, 'Kufra District', 124, 'KF', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2973, 'Wadi al Hayaa District', 124, 'WD', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2974, 'Jabal al Gharbi District', 124, 'JG', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2975, 'Wadi al Shatii District', 124, 'WS', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2976, 'Nalut District', 124, 'NL', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2977, 'Sirte District', 124, 'SR', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2978, 'Misrata District', 124, 'MI', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2979, 'Jafara', 124, 'JI', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2980, 'Jabal al Akhdar', 124, 'JA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2981, 'Benghazi', 124, 'BA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2982, 'Ribeira Brava Municipality', 40, 'RB', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2983, 'Tarrafal', 40, 'TA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2984, 'Ribeira Grande de Santiago', 40, 'RS', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2985, 'Santa Catarina', 40, 'CA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2986, 'São Domingos', 40, 'SD', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2987, 'Mosteiros', 40, 'MO', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2988, 'Praia', 40, 'PR', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2989, 'Porto Novo', 40, 'PN', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2990, 'São Miguel', 40, 'SM', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2991, 'Maio Municipality', 40, 'MA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2992, 'Sotavento Islands', 40, 'S', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2993, 'São Lourenço dos Órgãos', 40, 'SO', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(2994, 'Barlavento Islands', 40, 'B', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2995, 'Santa Catarina do Fogo', 40, 'CF', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2996, 'Brava', 40, 'BR', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2997, 'Paul', 40, 'PA', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2998, 'Sal', 40, 'SL', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(2999, 'Boa Vista', 40, 'BV', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3000, 'São Filipe', 40, 'SF', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(3001, 'São Vicente', 40, 'SV', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(3002, 'Ribeira Grande', 40, 'RG', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3003, 'Tarrafal de São Nicolau', 40, 'TS', '2019-10-05 12:18:51', '2020-05-01 07:41:51'),
(3004, 'Santa Cruz', 40, 'CR', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3005, 'Schleswig-Holstein', 82, 'SH', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3006, 'Baden-Württemberg', 82, 'BW', '2019-10-05 12:18:51', '2020-05-01 07:41:52'),
(3007, 'Mecklenburg-Vorpommern', 82, 'MV', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3008, 'Lower Saxony', 82, 'NI', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3009, 'Bavaria', 82, 'BY', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3010, 'Berlin', 82, 'BE', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3011, 'Saxony-Anhalt', 82, 'ST', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3013, 'Brandenburg', 82, 'BB', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3014, 'Bremen', 82, 'HB', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3015, 'Thuringia', 82, 'TH', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3016, 'Hamburg', 82, 'HH', '2019-10-05 12:18:51', '2019-10-05 12:18:51'),
(3017, 'North Rhine-Westphalia', 82, 'NW', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3018, 'Hesse', 82, 'HE', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3019, 'Rhineland-Palatinate', 82, 'RP', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3020, 'Saarland', 82, 'SL', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3021, 'Saxony', 82, 'SN', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3022, 'Mafeteng District', 122, 'E', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3023, 'Mohale\'s Hoek District', 122, 'F', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3024, 'Mokhotlong District', 122, 'J', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3025, 'Qacha\'s Nek District', 122, 'H', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3026, 'Leribe District', 122, 'C', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3027, 'Quthing District', 122, 'G', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3028, 'Maseru District', 122, 'A', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3029, 'Butha-Buthe District', 122, 'B', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3030, 'Berea District', 122, 'D', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3031, 'Thaba-Tseka District', 122, 'K', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3032, 'Montserrado County', 123, 'MO', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3033, 'River Cess County', 123, 'RI', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3034, 'Bong County', 123, 'BG', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3035, 'Sinoe County', 123, 'SI', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3036, 'Grand Cape Mount County', 123, 'CM', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3037, 'Lofa County', 123, 'LO', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3038, 'River Gee County', 123, 'RG', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3039, 'Grand Gedeh County', 123, 'GG', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3040, 'Grand Bassa County', 123, 'GB', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3041, 'Bomi County', 123, 'BM', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3042, 'Maryland County', 123, 'MY', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3043, 'Margibi County', 123, 'MG', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3044, 'Gbarpolu County', 123, 'GP', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3045, 'Grand Kru County', 123, 'GK', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3046, 'Nimba', 123, 'NI', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3047, 'Ad Dhahirah Governorate', 166, 'ZA', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3048, 'Al Batinah North Governorate', 166, 'BS', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3049, 'Al Batinah South Governorate', 166, 'BJ', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3050, 'Al Batinah Region', 166, 'BA', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3051, 'Ash Sharqiyah Region', 166, 'SH', '2019-10-05 12:18:52', '2019-10-05 12:18:52');
INSERT INTO `zones` (`zone_id`, `zone_name`, `zone_country_id`, `zone_code`, `created_at`, `updated_at`) VALUES
(3052, 'Musandam Governorate', 166, 'MU', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3053, 'Ash Sharqiyah North Governorate', 166, 'SS', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3054, 'Ash Sharqiyah South Governorate', 166, 'SJ', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3055, 'Muscat Governorate', 166, 'MA', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3056, 'Al Wusta Governorate', 166, 'WU', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3057, 'Dhofar Governorate', 166, 'ZU', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3058, 'Ad Dakhiliyah Governorate', 166, 'DA', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3059, 'Al Buraimi Governorate', 166, 'BU', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3060, 'Ngamiland', 29, 'NG', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3061, 'Ghanzi District', 29, 'GH', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3062, 'Kgatleng District', 29, 'KL', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3063, 'Southern District', 29, 'SO', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3064, 'South-East District', 29, 'SE', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3065, 'North-West District', 29, 'NW', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3066, 'Kgalagadi District', 29, 'KG', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3067, 'Central District', 29, 'CE', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3068, 'North-East District', 29, 'NE', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3069, 'Kweneng District', 29, 'KW', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3070, 'Collines Department', 24, 'CO', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3071, 'Kouffo Department', 24, 'KO', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3072, 'Donga Department', 24, 'DO', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3073, 'Zou Department', 24, 'ZO', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3074, 'Plateau Department', 24, 'PL', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3075, 'Mono Department', 24, 'MO', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3076, 'Atakora Department', 24, 'AK', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3077, 'Alibori Department', 24, 'AL', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3078, 'Borgou Department', 24, 'BO', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3079, 'Atlantique Department', 24, 'AQ', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3080, 'Ouémé Department', 24, 'OU', '2019-10-05 12:18:52', '2020-05-01 07:41:51'),
(3081, 'Littoral Department', 24, 'LI', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3082, 'Machinga District', 131, 'MH', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3083, 'Zomba District', 131, 'ZO', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3084, 'Mwanza District', 131, 'MW', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3085, 'Nsanje District', 131, 'NS', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3086, 'Salima District', 131, 'SA', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3087, 'Chitipa district', 131, 'CT', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3088, 'Ntcheu District', 131, 'NU', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3089, 'Rumphi District', 131, 'RU', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3090, 'Dowa District', 131, 'DO', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3091, 'Karonga District', 131, 'KR', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3092, 'Central Region', 131, 'C', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3093, 'Likoma District', 131, 'LK', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3094, 'Kasungu District', 131, 'KS', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3095, 'Nkhata Bay District', 131, 'NB', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3096, 'Balaka District', 131, 'BA', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3097, 'Dedza District', 131, 'DE', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3098, 'Thyolo District', 131, 'TH', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3099, 'Mchinji District', 131, 'MC', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3100, 'Nkhotakota District', 131, 'NK', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3101, 'Lilongwe District', 131, 'LI', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3102, 'Blantyre District', 131, 'BL', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3103, 'Mulanje District', 131, 'MU', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3104, 'Mzimba District', 131, 'MZ', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3105, 'Northern Region', 131, 'N', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3106, 'Southern Region', 131, 'S', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3107, 'Chikwawa District', 131, 'CK', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3108, 'Phalombe District', 131, 'PH', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3109, 'Chiradzulu District', 131, 'CR', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3110, 'Mangochi District', 131, 'MG', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3111, 'Ntchisi District', 131, 'NI', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3112, 'Kénédougou Province', 35, 'KEN', '2019-10-05 12:18:52', '2020-05-01 07:41:51'),
(3113, 'Namentenga Province', 35, 'NAM', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3114, 'Sahel Region', 35, '12', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3115, 'Centre-Ouest Region', 35, '06', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3116, 'Nahouri Province', 35, 'NAO', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3117, 'Passoré Province', 35, 'PAS', '2019-10-05 12:18:52', '2020-05-01 07:41:51'),
(3118, 'Zoundwéogo Province', 35, 'ZOU', '2019-10-05 12:18:52', '2020-05-01 07:41:51'),
(3119, 'Sissili Province', 35, 'SIS', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3120, 'Banwa Province', 35, 'BAN', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3121, 'Bougouriba Province', 35, 'BGR', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3122, 'Gnagna Province', 35, 'GNA', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3123, 'Mouhoun', 35, 'MOU', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3124, 'Yagha Province', 35, 'YAG', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3125, 'Plateau-Central Region', 35, '11', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3126, 'Sanmatenga Province', 35, 'SMT', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3127, 'Centre-Nord Region', 35, '05', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3128, 'Tapoa Province', 35, 'TAP', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3129, 'Houet Province', 35, 'HOU', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3130, 'Zondoma Province', 35, 'ZON', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3131, 'Boulgou', 35, 'BLG', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3132, 'Komondjari Province', 35, 'KMD', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3133, 'Koulpélogo Province', 35, 'KOP', '2019-10-05 12:18:52', '2020-05-01 07:41:51'),
(3134, 'Tuy Province', 35, 'TUI', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3135, 'Ioba Province', 35, 'IOB', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3136, 'Centre', 35, '03', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3137, 'Sourou Province', 35, 'SOR', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3138, 'Boucle du Mouhoun Region', 35, '01', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3139, 'Séno Province', 35, 'SEN', '2019-10-05 12:18:52', '2020-05-01 07:41:51'),
(3140, 'Sud-Ouest Region', 35, '13', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3141, 'Oubritenga Province', 35, 'OUB', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3142, 'Nayala Province', 35, 'NAY', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3143, 'Gourma Province', 35, 'GOU', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3144, 'Oudalan Province', 35, 'OUD', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3145, 'Ziro Province', 35, 'ZIR', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3146, 'Kossi Province', 35, 'KOS', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3147, 'Kourwéogo Province', 35, 'KOW', '2019-10-05 12:18:52', '2020-05-01 07:41:51'),
(3148, 'Ganzourgou Province', 35, 'GAN', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3149, 'Centre-Sud Region', 35, '07', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3150, 'Yatenga Province', 35, 'YAT', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3151, 'Loroum Province', 35, 'LOR', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3152, 'Bazèga Province', 35, 'BAZ', '2019-10-05 12:18:52', '2020-05-01 07:41:51'),
(3153, 'Cascades Region', 35, '02', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3154, 'Sanguié Province', 35, 'SNG', '2019-10-05 12:18:52', '2020-05-01 07:41:51'),
(3155, 'Bam Province', 35, 'BAM', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3156, 'Noumbiel Province', 35, 'NOU', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3157, 'Kompienga Province', 35, 'KMP', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3158, 'Est Region', 35, '08', '2019-10-05 12:18:52', '2019-10-05 12:18:52'),
(3159, 'Léraba Province', 35, 'LER', '2019-10-05 12:18:53', '2020-05-01 07:41:51'),
(3160, 'Balé Province', 35, 'BAL', '2019-10-05 12:18:53', '2020-05-01 07:41:51'),
(3161, 'Kouritenga Province', 35, 'KOT', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3162, 'Centre-Est Region', 35, '04', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3163, 'Poni Province', 35, 'PON', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3164, 'Nord Region, Burkina Faso', 35, '10', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3165, 'Hauts-Bassins Region', 35, '09', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3166, 'Soum Province', 35, 'SOM', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3167, 'Comoé Province', 35, 'COM', '2019-10-05 12:18:53', '2020-05-01 07:41:51'),
(3168, 'Kadiogo Province', 35, 'KAD', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3169, 'Islamabad Capital Territory', 167, 'IS', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3170, 'Gilgit-Baltistan', 167, 'GB', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3171, 'Khyber Pakhtunkhwa', 167, 'KP', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3172, 'Azad Kashmir', 167, 'JK', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3173, 'Federally Administered Tribal Areas', 167, 'TA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3174, 'Balochistan', 167, 'BA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3175, 'Sindh', 167, 'SD', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3176, 'Punjab', 167, 'PB', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3177, 'Al Rayyan Municipality', 179, 'RA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3178, 'Al-Shahaniya', 179, 'SH', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3179, 'Al Wakrah', 179, 'WA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3180, 'Madinat ash Shamal', 179, 'MS', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3181, 'Doha', 179, 'DA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3182, 'Al Daayen', 179, 'ZA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3183, 'Al Khor', 179, 'KH', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3184, 'Umm Salal Municipality', 179, 'US', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3185, 'Rumonge Province', 36, 'RM', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3186, 'Muyinga Province', 36, 'MY', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3187, 'Mwaro Province', 36, 'MW', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3188, 'Makamba Province', 36, 'MA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3189, 'Rutana Province', 36, 'RT', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3190, 'Cibitoke Province', 36, 'CI', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3191, 'Ruyigi Province', 36, 'RY', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3192, 'Kayanza Province', 36, 'KY', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3193, 'Muramvya Province', 36, 'MU', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3194, 'Karuzi Province', 36, 'KR', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3195, 'Kirundo Province', 36, 'KI', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3196, 'Bubanza Province', 36, 'BB', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3197, 'Gitega Province', 36, 'GI', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3198, 'Bujumbura Mairie Province', 36, 'BM', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3199, 'Ngozi Province', 36, 'NG', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3200, 'Bujumbura Rural Province', 36, 'BL', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3201, 'Cankuzo Province', 36, 'CA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3202, 'Bururi Province', 36, 'BR', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3203, 'Flores Department', 235, 'FS', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3204, 'San José Department', 235, 'SJ', '2019-10-05 12:18:53', '2020-05-01 07:41:53'),
(3205, 'Artigas Department', 235, 'AR', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3206, 'Maldonado Department', 235, 'MA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3207, 'Rivera Department', 235, 'RV', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3208, 'Colonia Department', 235, 'CO', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3209, 'Durazno Department', 235, 'DU', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3210, 'Río Negro Department', 235, 'RN', '2019-10-05 12:18:53', '2020-05-01 07:41:53'),
(3211, 'Cerro Largo Department', 235, 'CL', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3212, 'Paysandú Department', 235, 'PA', '2019-10-05 12:18:53', '2020-05-01 07:41:53'),
(3213, 'Canelones Department', 235, 'CA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3214, 'Treinta y Tres Department', 235, 'TT', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3215, 'Lavalleja Department', 235, 'LA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3216, 'Rocha Department', 235, 'RO', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3217, 'Florida Department', 235, 'FD', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3218, 'Montevideo Department', 235, 'MO', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3219, 'Soriano Department', 235, 'SO', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3220, 'Salto Department', 235, 'SA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3221, 'Tacuarembó Department', 235, 'TA', '2019-10-05 12:18:53', '2020-05-01 07:41:53'),
(3222, 'Kafr el-Sheikh Governorate', 65, 'KFS', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3223, 'Cairo Governorate', 65, 'C', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3224, 'Damietta Governorate', 65, 'DT', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3225, 'Aswan Governorate', 65, 'ASN', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3226, 'Sohag Governorate', 65, 'SHG', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3227, 'North Sinai Governorate', 65, 'SIN', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3228, 'Monufia Governorate', 65, 'MNF', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3229, 'Port Said Governorate', 65, 'PTS', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3230, 'Beni Suef Governorate', 65, 'BNS', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3231, 'Matrouh Governorate', 65, 'MT', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3232, 'Qalyubia Governorate', 65, 'KB', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3233, 'Suez Governorate', 65, 'SUZ', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3234, 'Gharbia Governorate', 65, 'GH', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3235, 'Alexandria Governorate', 65, 'ALX', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3236, 'Asyut Governorate', 65, 'AST', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3237, 'South Sinai Governorate', 65, 'JS', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3238, 'Faiyum Governorate', 65, 'FYM', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3239, 'Giza Governorate', 65, 'GZ', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3240, 'Red Sea Governorate', 65, 'BA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3241, 'Beheira Governorate', 65, 'BH', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3242, 'Luxor Governorate', 65, 'LX', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3243, 'Minya Governorate', 65, 'MN', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3244, 'Ismailia Governorate', 65, 'IS', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3245, 'Dakahlia Governorate', 65, 'DK', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3246, 'New Valley Governorate', 65, 'WAD', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3247, 'Qena Governorate', 65, 'KN', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3248, 'Agaléga', 140, 'AG', '2019-10-05 12:18:53', '2020-05-01 07:41:52'),
(3249, 'Rodrigues', 140, 'RO', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3250, 'Pamplemousses District', 140, 'PA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3251, 'Cargados Carajos', 140, 'CC', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3252, 'Vacoas-Phoenix', 140, 'VP', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3253, 'Moka District', 140, 'MO', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3254, 'Flacq District', 140, 'FL', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3255, 'Curepipe', 140, 'CU', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3256, 'Port Louis', 140, 'PU', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3257, 'Savanne District', 140, 'SA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3258, 'Quatre Bornes', 140, 'QB', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3259, 'Rivière Noire District', 140, 'BL', '2019-10-05 12:18:53', '2020-05-01 07:41:52'),
(3260, 'Port Louis District', 140, 'PL', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3261, 'Rivière du Rempart District', 140, 'RR', '2019-10-05 12:18:53', '2020-05-01 07:41:52'),
(3262, 'Beau Bassin-Rose Hill', 140, 'BR', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3263, 'Plaines Wilhems District', 140, 'PW', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3264, 'Grand Port District', 140, 'GP', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3265, 'Guelmim Province', 149, 'GUE', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3266, 'Aousserd Province', 149, 'AOU', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3267, 'Al Hoceïma Province', 149, 'HOC', '2019-10-05 12:18:53', '2020-05-01 07:41:52'),
(3268, 'Larache Province', 149, 'LAR', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3269, 'Ouarzazate Province', 149, 'OUA', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3270, 'Boulemane Province', 149, 'BOM', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3271, 'Oriental', 149, '02', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3272, 'Béni-Mellal Province', 149, 'BEM', '2019-10-05 12:18:53', '2020-05-01 07:41:52'),
(3273, 'Sidi Youssef Ben Ali', 149, 'SYB', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3274, 'Chichaoua Province', 149, 'CHI', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3275, 'Boujdour Province', 149, 'BOD', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3276, 'Khémisset Province', 149, 'KHE', '2019-10-05 12:18:53', '2020-05-01 07:41:52'),
(3277, 'Tiznit Province', 149, 'TIZ', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3278, 'Béni Mellal-Khénifra', 149, '05', '2019-10-05 12:18:53', '2020-05-01 07:41:52'),
(3279, 'Sidi Kacem Province', 149, 'SIK', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3280, 'El Jadida Province', 149, 'JDI', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3281, 'Nador Province', 149, 'NAD', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3282, 'Settat Province', 149, 'SET', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3283, 'Zagora Province', 149, 'ZAG', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3284, 'Mediouna Province', 149, 'MED', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3285, 'Berkane Province', 149, 'BER', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3286, 'Tan-Tan Province', 149, 'TNT', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3287, 'Nouaceur Province', 149, 'NOU', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3288, 'Marrakesh-Safi', 149, '07', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3289, 'Sefrou Province', 149, 'SEF', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3290, 'Drâa-Tafilalet', 149, '08', '2019-10-05 12:18:53', '2020-05-01 07:41:52'),
(3291, 'El Hajeb Province', 149, 'HAJ', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3292, 'Es Semara Province', 149, 'ESM', '2019-10-05 12:18:53', '2019-10-05 12:18:53'),
(3293, 'Laâyoune Province', 149, 'LAA', '2019-10-05 12:18:53', '2020-05-01 07:41:52'),
(3294, 'Inezgane-Aït Melloul Prefecture', 149, 'INE', '2019-10-05 12:18:54', '2020-05-01 07:41:52'),
(3295, 'Souss-Massa', 149, '09', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3296, 'Taza Province', 149, 'TAZ', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3297, 'Assa-Zag Province', 149, 'ASZ', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3298, 'Laâyoune-Sakia El Hamra', 149, '11', '2019-10-05 12:18:54', '2020-05-01 07:41:52'),
(3299, 'Errachidia Province', 149, 'ERR', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3300, 'Fahs Anjra Province', 149, 'FAH', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3301, 'Figuig Province', 149, 'FIG', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3302, 'Shtouka Ait Baha Province', 149, 'CHT', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3303, 'Casablanca-Settat', 149, '06', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3304, 'Ben Slimane Province', 149, 'BES', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3305, 'Guelmim-Oued Noun', 149, '10', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3306, 'Dakhla-Oued Ed-Dahab', 149, '12', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3307, 'Jerada Province', 149, 'JRA', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3308, 'Kénitra Province', 149, 'KEN', '2019-10-05 12:18:54', '2020-05-01 07:41:52'),
(3309, 'Kelaat Sraghna Province', 149, 'KES', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3310, 'Chefchaouen Province', 149, 'CHE', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3311, 'Safi Province', 149, 'SAF', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3312, 'Tata Province', 149, 'TAT', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3313, 'Fès-Meknès', 149, '03', '2019-10-05 12:18:54', '2020-05-01 07:41:52'),
(3314, 'Taroudant Province', 149, 'TAR', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3315, 'Moulay Yacoub Province', 149, 'MOU', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3316, 'Essaouira Province', 149, 'ESI', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3317, 'Khénifra Province', 149, 'KHN', '2019-10-05 12:18:54', '2020-05-01 07:41:52'),
(3318, 'Tétouan Province', 149, 'TET', '2019-10-05 12:18:54', '2020-05-01 07:41:52'),
(3319, 'Oued Ed-Dahab Province', 149, 'OUD', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3320, 'Al Haouz Province', 149, 'HAO', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3321, 'Azilal Province', 149, 'AZI', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3322, 'Taourirt Province', 149, 'TAI', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3323, 'Taounate Province', 149, 'TAO', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3324, 'Tanger-Tétouan-Al Hoceïma', 149, '01', '2019-10-05 12:18:54', '2020-05-01 07:41:52'),
(3325, 'Ifrane Province', 149, 'IFR', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3326, 'Khouribga Province', 149, 'KHO', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3327, 'Cabo Delgado Province', 150, 'P', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3328, 'Zambezia Province', 150, 'Q', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3329, 'Gaza Province', 150, 'G', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3330, 'Inhambane Province', 150, 'I', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3331, 'Sofala Province', 150, 'S', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3332, 'Maputo Province', 150, 'L', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3333, 'Niassa Province', 150, 'A', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3334, 'Tete Province', 150, 'T', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3335, 'Maputo', 150, 'MPM', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3336, 'Nampula Province', 150, 'N', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3337, 'Manica Province', 150, 'B', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3338, 'Hodh Ech Chargui Region', 139, '01', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3339, 'Brakna Region', 139, '05', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3340, 'Tiris Zemmour Region', 139, '11', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3341, 'Gorgol Region', 139, '04', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3342, 'Inchiri Region', 139, '12', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3343, 'Nouakchott-Nord Region', 139, '14', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3344, 'Adrar Region', 139, '07', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3345, 'Tagant Region', 139, '09', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3346, 'Dakhlet Nouadhibou', 139, '08', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3347, 'Nouakchott-Sud Region', 139, '15', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3348, 'Trarza Region', 139, '06', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3349, 'Assaba Region', 139, '03', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3350, 'Guidimaka Region', 139, '10', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3351, 'Hodh El Gharbi Region', 139, '02', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3352, 'Nouakchott-Ouest Region', 139, '13', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3353, 'Western Tobago', 223, 'WTO', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3354, 'Couva-Tabaquite-Talparo Regional Corporation', 223, 'CTT', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3355, 'Eastern Tobago', 223, 'ETO', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3356, 'Rio Claro-Mayaro Regional Corporation', 223, 'MRC', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3357, 'San Juan-Laventille Regional Corporation', 223, 'SJL', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3358, 'Tunapuna-Piarco Regional Corporation', 223, 'TUP', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3359, 'San Fernando', 223, 'SFO', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3360, 'Point Fortin', 223, 'PTF', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3361, 'Sangre Grande Regional Corporation', 223, 'SGE', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3362, 'Arima', 223, 'ARI', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3363, 'Port of Spain', 223, 'POS', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3364, 'Siparia Regional Corporation', 223, 'SIP', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3365, 'Penal-Debe Regional Corporation', 223, 'PED', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3366, 'Chaguanas', 223, 'CHA', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3367, 'Diego Martin Regional Corporation', 223, 'DMN', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3368, 'Princes Town Regional Corporation', 223, 'PRT', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3369, 'Mary Region', 226, 'M', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3370, 'Lebap Region', 226, 'L', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3371, 'Ashgabat', 226, 'S', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3372, 'Balkan Region', 226, 'B', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3373, 'Daşoguz Region', 226, 'D', '2019-10-05 12:18:54', '2020-05-01 07:41:53'),
(3374, 'Ahal Region', 226, 'A', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3375, 'Beni Department', 27, 'B', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3376, 'Oruro Department', 27, 'O', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3377, 'Santa Cruz Department', 27, 'S', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3378, 'Tarija Department', 27, 'T', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3379, 'Pando Department', 27, 'N', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3380, 'La Paz Department', 27, 'L', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3381, 'Cochabamba Department', 27, 'C', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3382, 'Chuquisaca Department', 27, 'H', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3383, 'Potosí Department', 27, 'P', '2019-10-05 12:18:54', '2020-05-01 07:41:51'),
(3384, 'Saint George Parish', 188, '04', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3385, 'Saint Patrick Parish', 188, '05', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3386, 'Saint Andrew Parish', 188, '02', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3387, 'Saint David Parish', 188, '03', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3388, 'Grenadines Parish', 188, '06', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3389, 'Charlotte Parish', 188, '01', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3390, 'Sharjah Emirate', 231, 'SH', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3391, 'Dubai', 231, 'DU', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3392, 'Umm al-Quwain', 231, 'UQ', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3393, 'Fujairah', 231, 'FU', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3394, 'Ras al-Khaimah', 231, 'RK', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3395, 'Ajman Emirate', 231, 'AJ', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3396, 'Abu Dhabi Emirate', 231, 'AZ', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3397, 'districts of Republican Subordination', 217, 'RA', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3398, 'Khatlon Province', 217, 'KT', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3399, 'Gorno-Badakhshan Autonomous Province', 217, 'GB', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3400, 'Sughd Province', 217, 'SU', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3401, 'Tainan County', 216, 'TNQ', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3402, 'Yilan County', 216, 'ILA', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3403, 'Penghu County', 216, 'PEN', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3404, 'Changhua County', 216, 'CHA', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3405, 'Pingtung County', 216, 'PIF', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3406, 'Taichung', 216, 'TXG', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3407, 'Nantou County', 216, 'NAN', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3408, 'Chiayi County', 216, 'CYI', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3409, 'Kaohsiung County', 216, 'KHQ', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3410, 'Taitung County', 216, 'TTT', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3411, 'Hualien County', 216, 'HUA', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3412, 'Kaohsiung', 216, 'KHH', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3413, 'Miaoli County', 216, 'MIA', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3414, 'Taichung County', 216, 'TXQ', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3415, 'Kinmen', 216, 'KIN', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3416, 'Yunlin County', 216, 'YUN', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3417, 'Hsinchu', 216, 'HSZ', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3418, 'Chiayi City', 216, 'CYQ', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3419, 'Taoyuan City', 216, 'TAO', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3420, 'Lienchiang County', 216, 'LIE', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3421, 'Tainan', 216, 'TNN', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3422, 'Taipei', 216, 'TPE', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3423, 'Hsinchu County', 216, 'HSQ', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3424, 'Northern Red Sea Region', 68, 'SK', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3425, 'Anseba Region', 68, 'AN', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3426, 'Maekel Region', 68, 'MA', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3427, 'Debub Region', 68, 'DU', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3428, 'Gash-Barka Region', 68, 'GB', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3429, 'Southern Red Sea Region', 68, 'DK', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3430, 'Southern Peninsula Region', 100, '2', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3431, 'Capital Region', 100, '1', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3432, 'Westfjords', 100, '4', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3433, 'Eastern Region', 100, '7', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3434, 'Southern Region', 100, '8', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3435, 'Northwestern Region', 100, '5', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3436, 'Western Region', 100, '3', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3437, 'Northeastern Region', 100, '6', '2019-10-05 12:18:54', '2019-10-05 12:18:54'),
(3438, 'Río Muni', 67, 'C', '2019-10-05 12:18:54', '2020-05-01 07:41:51'),
(3439, 'Kié-Ntem Province', 67, 'KN', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3440, 'Wele-Nzas Province', 67, 'WN', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3441, 'Litoral Province', 67, 'LI', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3442, 'Insular Region', 67, 'I', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3443, 'Bioko Sur Province', 67, 'BS', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3444, 'Annobón Province', 67, 'AN', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3445, 'Centro Sur Province', 67, 'CS', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3446, 'Bioko Norte Province', 67, 'BN', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3447, 'Chihuahua', 142, 'CHH', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3448, 'Oaxaca', 142, 'OAX', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3449, 'Sinaloa', 142, 'SIN', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3450, 'México', 142, 'MEX', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3451, 'Chiapas', 142, 'CHP', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3452, 'Nuevo León', 142, 'NLE', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3453, 'Durango', 142, 'DUR', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3454, 'Tabasco', 142, 'TAB', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3455, 'Querétaro', 142, 'QUE', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3456, 'Aguascalientes', 142, 'AGU', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3457, 'Baja California', 142, 'BCN', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3458, 'Tlaxcala', 142, 'TLA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3459, 'Guerrero', 142, 'GRO', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3460, 'Baja California Sur', 142, 'BCS', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3461, 'San Luis Potosí', 142, 'SLP', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3462, 'Zacatecas', 142, 'ZAC', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3463, 'Tamaulipas', 142, 'TAM', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3464, 'Veracruz', 142, 'VER', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3465, 'Morelos', 142, 'MOR', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3466, 'Yucatán', 142, 'YUC', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3467, 'Quintana Roo', 142, 'ROO', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3468, 'Sonora', 142, 'SON', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3469, 'Guanajuato', 142, 'GUA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3470, 'Hidalgo', 142, 'HID', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3471, 'Coahuila', 142, 'COA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3472, 'Colima', 142, 'COL', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3473, 'Mexico City', 142, 'CMX', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3474, 'Michoacán', 142, 'MIC', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3475, 'Campeche', 142, 'CAM', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3476, 'Puebla', 142, 'PUE', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3477, 'Nayarit', 142, 'NAY', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3478, 'Krabi', 219, '81', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3479, 'Ranong', 219, '85', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3480, 'Nong Bua Lam Phu', 219, '39', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3481, 'Samut Prakan', 219, '11', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3482, 'Surat Thani', 219, '84', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3483, 'Lamphun', 219, '51', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3484, 'Nong Khai', 219, '43', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3485, 'Khon Kaen', 219, '40', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3486, 'Chanthaburi', 219, '22', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3487, 'Saraburi', 219, '19', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3488, 'Phatthalung', 219, '93', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3489, 'Uttaradit', 219, '53', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3490, 'Sing Buri', 219, '17', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3491, 'Chiang Mai', 219, '50', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3492, 'Nakhon Sawan', 219, '60', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3493, 'Yala', 219, '95', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3494, 'Phra Nakhon Si Ayutthaya', 219, '14', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3495, 'Nonthaburi', 219, '12', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3496, 'Trat', 219, '23', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3497, 'Nakhon Ratchasima', 219, '30', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3498, 'Chiang Rai', 219, '57', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3499, 'Ratchaburi', 219, '70', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3500, 'Pathum Thani', 219, '13', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3501, 'Sakon Nakhon', 219, '47', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3502, 'Samut Songkhram', 219, '75', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3503, 'Nakhon Pathom', 219, '73', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3504, 'Samut Sakhon', 219, '74', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3505, 'Mae Hong Son', 219, '58', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3506, 'Phitsanulok', 219, '65', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3507, 'Pattaya', 219, 'S', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3508, 'Prachuap Khiri Khan', 219, '77', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3509, 'Loei', 219, '42', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3510, 'Roi Et', 219, '45', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3511, 'Kanchanaburi', 219, '71', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3512, 'Ubon Ratchathani', 219, '34', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3513, 'Chon Buri', 219, '20', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3514, 'Phichit', 219, '66', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3515, 'Phetchabun', 219, '67', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3516, 'Kamphaeng Phet', 219, '62', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3517, 'Maha Sarakham', 219, '44', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3518, 'Rayong', 219, '21', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3519, 'Ang Thong', 219, '15', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3520, 'Nakhon Si Thammarat', 219, '80', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3521, 'Yasothon', 219, '35', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3522, 'Chai Nat', 219, '18', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3523, 'Amnat Charoen', 219, '37', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3524, 'Suphanburi', 219, '72', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3525, 'Tak', 219, '63', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3526, 'Chumphon', 219, '86', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3527, 'Udon Thani', 219, '41', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3528, 'Phrae', 219, '54', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3529, 'Sa Kaeo', 219, '27', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3530, 'Nan', 219, '55', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3531, 'Surin', 219, '32', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3532, 'Phetchaburi', 219, '76', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3533, 'Bueng Kan', 219, '38', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3534, 'Buri Ram', 219, '31', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3535, 'Nakhon Nayok', 219, '26', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3536, 'Phuket', 219, '83', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3537, 'Satun', 219, '91', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3538, 'Phayao', 219, '56', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3539, 'Songkhla', 219, '90', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3540, 'Pattani', 219, '94', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3541, 'Trang', 219, '92', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3542, 'Prachin Buri', 219, '25', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3543, 'Lopburi', 219, '16', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3544, 'Lampang', 219, '52', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3545, 'Sukhothai', 219, '64', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3546, 'Mukdahan', 219, '49', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3547, 'Si Sa Ket', 219, '33', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3548, 'Nakhon Phanom', 219, '48', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3549, 'Phang Nga', 219, '82', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3550, 'Kalasin', 219, '46', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3551, 'Uthai Thani', 219, '61', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3552, 'Chachoengsao', 219, '24', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3553, 'Narathiwat', 219, '96', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3554, 'Bangkok', 219, '10', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3555, 'Hiiu County', 69, '39', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3556, 'Viljandi County', 69, '84', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3557, 'Tartu County', 69, '78', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3558, 'Valga County', 69, '82', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3559, 'Rapla County', 69, '70', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3560, 'Võru County', 69, '86', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3561, 'Saare County', 69, '74', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3562, 'Pärnu County', 69, '67', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3563, 'Põlva County', 69, '65', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3564, 'Lääne-Viru County', 69, '59', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3565, 'Jõgeva County', 69, '49', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3566, 'Järva County', 69, '51', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3567, 'Harju County', 69, '37', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3568, 'Lääne County', 69, '57', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3569, 'Ida-Viru County', 69, '44', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3570, 'Moyen-Chari Region', 43, 'MC', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3571, 'Mayo-Kebbi Ouest Region', 43, 'MO', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3572, 'Sila Region', 43, 'SI', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3573, 'Hadjer-Lamis', 43, 'HL', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3574, 'Borkou', 43, 'BO', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3575, 'Ennedi-Est', 43, 'EE', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3576, 'Guéra Region', 43, 'GR', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3577, 'Lac Region', 43, 'LC', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3578, 'Ennedi Region', 43, 'EN', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3579, 'Tandjilé Region', 43, 'TA', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3580, 'Mayo-Kebbi Est Region', 43, 'ME', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3581, 'Wadi Fira Region', 43, 'WF', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3582, 'Ouaddaï Region', 43, 'OD', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3583, 'Bahr el Gazel', 43, 'BG', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3584, 'Ennedi-Ouest', 43, 'EO', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3585, 'Logone Occidental Region', 43, 'LO', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3586, 'N\'Djamena', 43, 'ND', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3587, 'Tibesti Region', 43, 'TI', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3588, 'Kanem Region', 43, 'KA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3589, 'Mandoul Region', 43, 'MA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3590, 'Batha Region', 43, 'BA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3591, 'Logone Oriental Region', 43, 'LR', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3592, 'Salamat Region', 43, 'SA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3593, 'Berry Islands', 17, 'BY', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3594, 'Nichollstown and Berry Islands', 17, 'NB', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3595, 'Green Turtle Cay', 17, 'GT', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3596, 'Central Eleuthera', 17, 'CE', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3597, 'Governor\'s Harbour', 17, 'GH', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3598, 'High Rock', 17, 'HR', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3599, 'West Grand Bahama', 17, 'WG', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3600, 'Rum Cay District', 17, 'RC', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3601, 'Acklins', 17, 'AK', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3602, 'North Eleuthera', 17, 'NE', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3603, 'Central Abaco', 17, 'CO', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3604, 'Marsh Harbour', 17, 'MH', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3605, 'Black Point', 17, 'BP', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3606, 'Sandy Point', 17, 'SP', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3607, 'South Eleuthera', 17, 'SE', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3608, 'South Abaco', 17, 'SO', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3609, 'Inagua', 17, 'IN', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3610, 'Long Island', 17, 'LI', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3611, 'Cat Island', 17, 'CI', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3612, 'Exuma', 17, 'EX', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3613, 'Harbour Island', 17, 'HI', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3614, 'East Grand Bahama', 17, 'EG', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3615, 'Ragged Island', 17, 'RI', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3616, 'North Abaco', 17, 'NO', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3617, 'North Andros', 17, 'NS', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3618, 'Kemps Bay', 17, 'KB', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3619, 'Fresh Creek', 17, 'FC', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3620, 'San Salvador and Rum Cay', 17, 'SR', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3621, 'Crooked Island', 17, 'CK', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3622, 'South Andros', 17, 'SA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3623, 'Rock Sound', 17, 'RS', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3624, 'Hope Town', 17, 'HT', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3625, 'Mangrove Cay', 17, 'MC', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3626, 'Freeport', 17, 'FP', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3627, 'San Salvador Island', 17, 'SS', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3628, 'Acklins and Crooked Islands', 17, 'AC', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3629, 'Bimini', 17, 'BI', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3630, 'Spanish Wells', 17, 'SW', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3631, 'Central Andros', 17, 'CS', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3632, 'Grand Cay', 17, 'GC', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3633, 'Mayaguana District', 17, 'MG', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3634, 'San Juan Province', 11, 'J', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3635, 'Santiago del Estero Province', 11, 'G', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3636, 'San Luis Province', 11, 'D', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3637, 'Tucumán Province', 11, 'T', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3638, 'Corrientes', 11, 'W', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3639, 'Río Negro Province', 11, 'R', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3640, 'Chaco Province', 11, 'H', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3641, 'Santa Fe Province', 11, 'S', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3642, 'Córdoba Province', 11, 'X', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3643, 'Salta Province', 11, 'A', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3644, 'Misiones Province', 11, 'N', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3645, 'Jujuy Province', 11, 'Y', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3646, 'Mendoza', 11, 'M', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3647, 'Catamarca Province', 11, 'K', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3648, 'Neuquén Province', 11, 'Q', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3649, 'Santa Cruz Province', 11, 'Z', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3650, 'Tierra del Fuego Province', 11, 'V', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3651, 'Chubut Province', 11, 'U', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3652, 'Formosa Province', 11, 'P', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3653, 'La Rioja Province', 11, 'F', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3654, 'Entre Ríos Province', 11, 'E', '2019-10-05 12:18:55', '2020-05-01 07:41:51'),
(3655, 'La Pampa', 11, 'L', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3656, 'Buenos Aires Province', 11, 'B', '2019-10-05 12:18:55', '2020-08-15 11:19:24'),
(3657, 'Quiché Department', 90, 'QC', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3658, 'Jalapa Department', 90, 'JA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3659, 'Izabal Department', 90, 'IZ', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3660, 'Suchitepéquez Department', 90, 'SU', '2019-10-05 12:18:55', '2020-05-01 07:41:52');
INSERT INTO `zones` (`zone_id`, `zone_name`, `zone_country_id`, `zone_code`, `created_at`, `updated_at`) VALUES
(3661, 'Sololá Department', 90, 'SO', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3662, 'El Progreso Department', 90, 'PR', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3663, 'Totonicapán Department', 90, 'TO', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3664, 'Retalhuleu Department', 90, 'RE', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3665, 'Santa Rosa Department', 90, 'SR', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3666, 'Chiquimula Department', 90, 'CQ', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3667, 'San Marcos Department', 90, 'SM', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3668, 'Quetzaltenango Department', 90, 'QZ', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3669, 'Petén Department', 90, 'PE', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3670, 'Huehuetenango Department', 90, 'HU', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3671, 'Alta Verapaz Department', 90, 'AV', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3672, 'Guatemala Department', 90, 'GU', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3673, 'Jutiapa Department', 90, 'JU', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3674, 'Baja Verapaz Department', 90, 'BV', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3675, 'Chimaltenango Department', 90, 'CM', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3676, 'Sacatepéquez Department', 90, 'SA', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3677, 'Escuintla Department', 90, 'ES', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3678, 'Madre de Dios', 173, 'MDD', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3679, 'Huancavelica', 173, 'HUV', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3680, 'Áncash', 173, 'ANC', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3681, 'Arequipa', 173, 'ARE', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3682, 'Puno', 173, 'PUN', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3683, 'La Libertad', 173, 'LAL', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3684, 'Ucayali', 173, 'UCA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3685, 'Amazonas', 173, 'AMA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3686, 'Pasco', 173, 'PAS', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3687, 'Huanuco', 173, 'HUC', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3688, 'Cajamarca', 173, 'CAJ', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3689, 'Tumbes', 173, 'TUM', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3691, 'Cusco', 173, 'CUS', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3692, 'Ayacucho', 173, 'AYA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3693, 'Junín', 173, 'JUN', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3694, 'San Martín', 173, 'SAM', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3695, 'Lima', 173, 'LIM', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3696, 'Tacna', 173, 'TAC', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3697, 'Piura', 173, 'PIU', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3698, 'Moquegua', 173, 'MOQ', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3699, 'Apurímac', 173, 'APU', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3700, 'Ica', 173, 'ICA', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3701, 'Callao', 173, 'CAL', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3702, 'Lambayeque', 173, 'LAM', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3703, 'Redonda', 10, '11', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3704, 'Saint Peter Parish', 10, '07', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3705, 'Saint Paul Parish', 10, '06', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3706, 'Saint John Parish', 10, '04', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3707, 'Saint Mary Parish', 10, '05', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3708, 'Barbuda', 10, '10', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3709, 'Saint George Parish', 10, '03', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3710, 'Saint Philip Parish', 10, '08', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3711, 'South Bačka District', 196, '06', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3712, 'Pirot District', 196, '22', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3713, 'South Banat District', 196, '04', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3714, 'North Bačka District', 196, '01', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3715, 'Jablanica District', 196, '23', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3716, 'Central Banat District', 196, '02', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3717, 'Bor District', 196, '14', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3718, 'Toplica District', 196, '21', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3719, 'Mačva District', 196, '08', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3720, 'Rasina District', 196, '19', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3721, 'Pčinja District', 196, '24', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3722, 'Nišava District', 196, '20', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3723, 'Prizren District', 248, NULL, '2019-10-05 12:18:55', '2020-08-15 11:05:33'),
(3724, 'Kolubara District', 196, '09', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3725, 'Raška District', 196, '18', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3726, 'West Bačka District', 196, '05', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3727, 'Moravica District', 196, '17', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3728, 'Belgrade', 196, '00', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3729, 'Zlatibor District', 196, '16', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3731, 'Zaječar District', 196, '15', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3732, 'Braničevo District', 196, '11', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3733, 'Vojvodina', 196, 'VO', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3734, 'Šumadija District', 196, '12', '2019-10-05 12:18:55', '2020-05-01 07:41:52'),
(3736, 'North Banat District', 196, '03', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3737, 'Pomoravlje District', 196, '13', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3738, 'Peć District', 248, NULL, '2019-10-05 12:18:55', '2020-08-15 11:05:38'),
(3740, 'Srem District', 196, '07', '2019-10-05 12:18:55', '2019-10-05 12:18:55'),
(3741, 'Podunavlje District', 196, '10', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3742, 'Westmoreland Parish', 108, '10', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3743, 'Saint Elizabeth Parish', 108, '11', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3744, 'Saint Ann Parish', 108, '06', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3745, 'Saint James Parish', 108, '08', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3746, 'Saint Catherine Parish', 108, '14', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3747, 'Saint Mary Parish', 108, '05', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3748, 'Kingston Parish', 108, '01', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3749, 'Hanover Parish', 108, '09', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3750, 'Saint Thomas Parish', 108, '03', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3751, 'Saint Andrew', 108, '02', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3752, 'Portland Parish', 108, '04', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3753, 'Clarendon Parish', 108, '13', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3754, 'Manchester Parish', 108, '12', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3755, 'Trelawny Parish', 108, '07', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3756, 'Dennery Quarter', 186, '05', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3757, 'Anse la Raye Quarter', 186, '01', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3758, 'Castries Quarter', 186, '02', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3759, 'Laborie Quarter', 186, '07', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3760, 'Choiseul Quarter', 186, '03', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3761, 'Canaries', 186, '12', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3762, 'Micoud Quarter', 186, '08', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3763, 'Vieux Fort Quarter', 186, '11', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3764, 'Soufrière Quarter', 186, '10', '2019-10-05 12:18:56', '2020-05-01 07:41:52'),
(3765, 'Praslin Quarter', 186, '09', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3766, 'Gros Islet Quarter', 186, '06', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3767, 'Dauphin Quarter', 186, '04', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3768, 'Hưng Yên', 240, '66', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3769, 'Đồng Tháp', 240, '45', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3770, 'Bà Rịa-Vũng Tàu', 240, '43', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3771, 'Thanh Hóa', 240, '21', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3772, 'Kon Tum', 240, '28', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3773, 'Điện Biên', 240, '71', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3774, 'Vĩnh Phúc', 240, '70', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3775, 'Thái Bình', 240, '20', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3776, 'Quảng Nam', 240, '27', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3777, 'Hậu Giang', 240, '73', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3778, 'Cà Mau', 240, '59', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3779, 'Hà Giang', 240, '03', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3780, 'Nghệ An', 240, '22', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3781, 'Tiền Giang', 240, '46', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3782, 'Cao Bằng', 240, '04', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3783, 'Haiphong', 240, 'HP', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3784, 'Yên Bái', 240, '06', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3785, 'Bình Dương', 240, '57', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3786, 'Ninh Bình', 240, '18', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3787, 'Bình Thuận', 240, '40', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3788, 'Ninh Thuận', 240, '36', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3789, 'Nam Định', 240, '67', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3790, 'Vĩnh Long', 240, '49', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3791, 'Bắc Ninh', 240, '56', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3792, 'Lạng Sơn', 240, '09', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3793, 'Khánh Hòa', 240, '34', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3794, 'An Giang', 240, '44', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3795, 'Tuyên Quang', 240, '07', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3796, 'Bến Tre', 240, '50', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3797, 'Bình Phước', 240, '58', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3798, 'Thừa Thiên-Huế', 240, '26', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3799, 'Hòa Bình', 240, '14', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3800, 'Kiên Giang', 240, '47', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3801, 'Phú Thọ', 240, '68', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3802, 'Hà Nam', 240, '63', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3803, 'Quảng Trị', 240, '25', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3804, 'Bạc Liêu', 240, '55', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3805, 'Trà Vinh', 240, '51', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3806, 'Da Nang', 240, 'DN', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3807, 'Thái Nguyên', 240, '69', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3808, 'Long An', 240, '41', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3809, 'Quảng Bình', 240, '24', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3810, 'Hanoi', 240, 'HN', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3811, 'Ho Chi Minh City', 240, 'SG', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3812, 'Sơn La', 240, '05', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3813, 'Gia Lai', 240, '30', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3814, 'Quảng Ninh', 240, '13', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3815, 'Bắc Giang', 240, '54', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3816, 'Hà Tĩnh', 240, '23', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3817, 'Lào Cai', 240, '02', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3818, 'Lâm Đồng', 240, '35', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3819, 'Sóc Trăng', 240, '52', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3820, 'Hà Tây', 240, '15', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3821, 'Đồng Nai', 240, '39', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3822, 'Bắc Kạn', 240, '53', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3823, 'Đắk Nông', 240, '72', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3824, 'Phú Yên', 240, '32', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3825, 'Lai Châu', 240, '01', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3826, 'Tây Ninh', 240, '37', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3827, 'Hải Dương', 240, '61', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3828, 'Quảng Ngãi', 240, '29', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3829, 'Đắk Lắk', 240, '33', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3830, 'Bình Định', 240, '31', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3831, 'Saint Peter Basseterre Parish', 185, '11', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3832, 'Nevis', 185, 'N', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3833, 'Christ Church Nichola Town Parish', 185, '01', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3834, 'Saint Paul Capisterre Parish', 185, '09', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3835, 'Saint James Windward Parish', 185, '05', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3836, 'Saint Anne Sandy Point Parish', 185, '02', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3837, 'Saint George Gingerland Parish', 185, '04', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3838, 'Saint Paul Charlestown Parish', 185, '10', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3839, 'Saint Thomas Lowland Parish', 185, '12', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3840, 'Saint John Figtree Parish', 185, '07', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3841, 'Saint Kitts', 185, 'K', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3842, 'Saint Thomas Middle Island Parish', 185, '13', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3843, 'Trinity Palmetto Point Parish', 185, '15', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3844, 'Saint Mary Cayon Parish', 185, '08', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3845, 'Saint John Capisterre Parish', 185, '06', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3846, 'Daegu', 116, '27', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3847, 'Gyeonggi Province', 116, '41', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3848, 'Incheon', 116, '28', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3849, 'Seoul', 116, '11', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3850, 'Daejeon', 116, '30', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3851, 'North Jeolla Province', 116, '45', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3852, 'Ulsan', 116, '31', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3853, 'Jeju', 116, '49', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3854, 'North Chungcheong Province', 116, '43', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3855, 'North Gyeongsang Province', 116, '47', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3856, 'South Jeolla Province', 116, '46', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3857, 'South Gyeongsang Province', 116, '48', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3858, 'Gwangju', 116, '29', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3859, 'South Chungcheong Province', 116, '44', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3860, 'Busan', 116, '26', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3861, 'Sejong City', 116, '50', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3862, 'Gangwon Province', 116, '42', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3863, 'Saint Patrick Parish', 87, '06', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3864, 'Saint George Parish', 87, '03', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3865, 'Saint Andrew Parish', 87, '01', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3866, 'Saint Mark Parish', 87, '05', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3867, 'Carriacou and Petite Martinique', 87, '10', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3868, 'Saint John Parish', 87, '04', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3869, 'Saint David Parish', 87, '02', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3870, 'Ghazni', 1, 'GHA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3871, 'Badghis', 1, 'BDG', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3872, 'Bamyan', 1, 'BAM', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3873, 'Helmand', 1, 'HEL', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3874, 'Zabul', 1, 'ZAB', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3875, 'Baghlan', 1, 'BGL', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3876, 'Kunar', 1, 'KNR', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3877, 'Paktika', 1, 'PKA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3878, 'Khost', 1, 'KHO', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3879, 'Kapisa', 1, 'KAP', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3880, 'Nuristan', 1, 'NUR', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3881, 'Panjshir', 1, 'PAN', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3882, 'Nangarhar', 1, 'NAN', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3883, 'Samangan', 1, 'SAM', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3884, 'Balkh', 1, 'BAL', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3885, 'Sar-e Pol', 1, 'SAR', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3886, 'Jowzjan', 1, 'JOW', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3887, 'Herat', 1, 'HER', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3888, 'Ghōr', 1, 'GHO', '2019-10-05 12:18:56', '2020-05-01 07:41:51'),
(3889, 'Faryab', 1, 'FYB', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3890, 'Kandahar', 1, 'KAN', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3891, 'Laghman', 1, 'LAG', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3892, 'Daykundi', 1, 'DAY', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3893, 'Takhar', 1, 'TAK', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3894, 'Paktia', 1, 'PIA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3895, 'Parwan', 1, 'PAR', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3896, 'Nimruz', 1, 'NIM', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3897, 'Logar', 1, 'LOG', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3898, 'Urozgan', 1, 'URU', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3899, 'Farah', 1, 'FRA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3900, 'Kunduz Province', 1, 'KDZ', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3901, 'Badakhshan', 1, 'BDS', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3902, 'Kabul', 1, 'KAB', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3903, 'Victoria', 14, 'VIC', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3904, 'South Australia', 14, 'SA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3905, 'Queensland', 14, 'QLD', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3906, 'Western Australia', 14, 'WA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3907, 'Australian Capital Territory', 14, 'ACT', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3908, 'Tasmania', 14, 'TAS', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3909, 'New South Wales', 14, 'NSW', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3910, 'Northern Territory', 14, 'NT', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3911, 'Vavaʻu', 222, '05', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3912, 'Tongatapu', 222, '04', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3913, 'Haʻapai', 222, '02', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3914, 'Niuas', 222, '03', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3915, 'ʻEua', 222, '01', '2019-10-05 12:18:56', '2020-05-01 07:41:53'),
(3916, 'Markazi Province', 103, '22', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3917, 'Khuzestan Province', 103, '10', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3918, 'Ilam Province', 103, '05', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3919, 'Kermanshah Province', 103, '17', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3920, 'Gilan Province', 103, '19', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3921, 'Chaharmahal and Bakhtiari Province', 103, '08', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3922, 'Qom Province', 103, '26', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3923, 'Isfahan Province', 103, '04', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3924, 'West Azarbaijan Province', 103, '02', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3925, 'Zanjan Province', 103, '11', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3926, 'Kohgiluyeh and Boyer-Ahmad Province', 103, '18', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3927, 'Razavi Khorasan Province', 103, '30', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3928, 'Lorestan Province', 103, '20', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3929, 'Alborz Province', 103, '32', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3930, 'South Khorasan Province', 103, '29', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3931, 'Sistan and Baluchestan', 103, '13', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3932, 'Bushehr Province', 103, '06', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3933, 'Golestan Province', 103, '27', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3934, 'Ardabil Province', 103, '03', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3935, 'Kurdistan Province', 103, '16', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3936, 'Yazd Province', 103, '25', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3937, 'Hormozgan Province', 103, '23', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3938, 'Mazandaran Province', 103, '21', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3939, 'Fars Province', 103, '14', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3940, 'Semnan Province', 103, '12', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3941, 'Qazvin Province', 103, '28', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3942, 'North Khorasan Province', 103, '31', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3943, 'Kerman Province', 103, '15', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3944, 'East Azerbaijan Province', 103, '01', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3945, 'Tehran Province', 103, '07', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3946, 'Niutao Island Council', 228, 'NIT', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3947, 'Nanumanga', 228, 'NMG', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3948, 'Nui', 228, 'NUI', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3949, 'Nanumea', 228, 'NMA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3950, 'Vaitupu', 228, 'VAI', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3951, 'Funafuti', 228, 'FUN', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3952, 'Nukufetau', 228, 'NKF', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3953, 'Nukulaelae', 228, 'NKL', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3954, 'Dhi Qar Governorate', 104, 'DQ', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3955, 'Babylon Governorate', 104, 'BB', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3956, 'Al-Qādisiyyah Governorate', 104, 'QA', '2019-10-05 12:18:56', '2020-05-01 07:41:52'),
(3957, 'Karbala Governorate', 104, 'KA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3958, 'Al Muthanna Governorate', 104, 'MU', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3959, 'Baghdad Governorate', 104, 'BG', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3960, 'Basra Governorate', 104, 'BA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3961, 'Saladin Governorate', 104, 'SD', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3962, 'Najaf Governorate', 104, 'NA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3963, 'Nineveh Governorate', 104, 'NI', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3964, 'Al Anbar Governorate', 104, 'AN', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3965, 'Diyala Governorate', 104, 'DI', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3966, 'Maysan Governorate', 104, 'MA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3967, 'Dohuk Governorate', 104, 'DA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3968, 'Erbil Governorate', 104, 'AR', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3969, 'Sulaymaniyah Governorate', 104, 'SU', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3970, 'Wasit Governorate', 104, 'WA', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3971, 'Kirkuk Governorate', 104, 'KI', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3972, 'Svay Rieng Province', 37, '20', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3973, 'Preah Vihear Province', 37, '13', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3974, 'Prey Veng Province', 37, '14', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3975, 'Takéo Province', 37, '21', '2019-10-05 12:18:56', '2020-05-01 07:41:51'),
(3976, 'Battambang Province', 37, '2', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3977, 'Pursat Province', 37, '15', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3978, 'Kep Province', 37, '23', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3979, 'Kampong Chhnang Province', 37, '4', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3980, 'Pailin Province', 37, '24', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3981, 'Kampot Province', 37, '7', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3982, 'Koh Kong Province', 37, '9', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3983, 'Kandal Province', 37, '8', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3984, 'Banteay Meanchey Province', 37, '1', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3985, 'Mondulkiri Province', 37, '11', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3986, 'Kratié Province', 37, '10', '2019-10-05 12:18:56', '2020-05-01 07:41:51'),
(3987, 'Oddar Meanchey Province', 37, '22', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3988, 'Kampong Speu Province', 37, '5', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3989, 'Sihanoukville Province', 37, '18', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3990, 'Ratanakiri Province', 37, '16', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3991, 'Kampong Cham Province', 37, '3', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3992, 'Siem Reap Province', 37, '17', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3993, 'Stung Treng Province', 37, '19', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3994, 'Phnom Penh', 37, '12', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3995, 'North Hamgyong Province', 115, '09', '2019-10-05 12:18:56', '2019-10-05 12:18:56'),
(3996, 'Ryanggang Province', 115, '10', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(3997, 'South Pyongan Province', 115, '02', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(3998, 'Chagang Province', 115, '04', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(3999, 'Kangwon Province', 115, '07', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4000, 'South Hamgyong Province', 115, '08', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4001, 'Rason', 115, '13', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4002, 'North Pyongan Province', 115, '03', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4003, 'South Hwanghae Province', 115, '05', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4004, 'North Hwanghae Province', 115, '06', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4005, 'Pyongyang', 115, '01', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4006, 'Meghalaya', 101, 'ML', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4007, 'Haryana', 101, 'HR', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4008, 'Maharashtra', 101, 'MH', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4009, 'Goa', 101, 'GA', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4010, 'Manipur', 101, 'MN', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4011, 'Puducherry', 101, 'PY', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4012, 'Telangana', 101, 'TG', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4013, 'Odisha', 101, 'OR', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4014, 'Rajasthan', 101, 'RJ', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4015, 'Punjab', 101, 'PB', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4016, 'Uttarakhand', 101, 'UT', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4017, 'Andhra Pradesh', 101, 'AP', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4018, 'Nagaland', 101, 'NL', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4019, 'Lakshadweep', 101, 'LD', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4020, 'Himachal Pradesh', 101, 'HP', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4021, 'Delhi', 101, 'DL', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4022, 'Uttar Pradesh', 101, 'UP', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4023, 'Andaman and Nicobar Islands', 101, 'AN', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4024, 'Arunachal Pradesh', 101, 'AR', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4025, 'Jharkhand', 101, 'JH', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4026, 'Karnataka', 101, 'KA', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4027, 'Assam', 101, 'AS', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4028, 'Kerala', 101, 'KL', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4029, 'Jammu and Kashmir', 101, 'JK', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4030, 'Gujarat', 101, 'GJ', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4031, 'Chandigarh', 101, 'CH', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4032, 'Dadra and Nagar Haveli', 101, 'DN', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4033, 'Daman and Diu', 101, 'DD', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4034, 'Sikkim', 101, 'SK', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4035, 'Tamil Nadu', 101, 'TN', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4036, 'Mizoram', 101, 'MZ', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4037, 'Bihar', 101, 'BR', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4038, 'Tripura', 101, 'TR', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4039, 'Madhya Pradesh', 101, 'MP', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4040, 'Chhattisgarh', 101, 'CT', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4041, 'Choluteca Department', 97, 'CH', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4042, 'Comayagua Department', 97, 'CM', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4043, 'El Paraíso Department', 97, 'EP', '2019-10-05 12:18:57', '2020-05-01 07:41:52'),
(4044, 'Intibucá Department', 97, 'IN', '2019-10-05 12:18:57', '2020-05-01 07:41:52'),
(4045, 'Bay Islands Department', 97, 'IB', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4046, 'Cortés Department', 97, 'CR', '2019-10-05 12:18:57', '2020-05-01 07:41:52'),
(4047, 'Atlántida Department', 97, 'AT', '2019-10-05 12:18:57', '2020-05-01 07:41:52'),
(4048, 'Gracias a Dios Department', 97, 'GD', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4049, 'Copán Department', 97, 'CP', '2019-10-05 12:18:57', '2020-05-01 07:41:52'),
(4050, 'Olancho Department', 97, 'OL', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4051, 'Colón Department', 97, 'CL', '2019-10-05 12:18:57', '2020-05-01 07:41:52'),
(4052, 'Francisco Morazán Department', 97, 'FM', '2019-10-05 12:18:57', '2020-05-01 07:41:52'),
(4053, 'Santa Bárbara Department', 97, 'SB', '2019-10-05 12:18:57', '2020-05-01 07:41:52'),
(4054, 'Lempira Department', 97, 'LE', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4055, 'Valle Department', 97, 'VA', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4056, 'Ocotepeque Department', 97, 'OC', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4057, 'Yoro Department', 97, 'YO', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4058, 'La Paz Department', 97, 'LP', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4059, 'Northland Region', 158, 'NTL', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4060, 'Manawatu-Wanganui Region', 158, 'MWT', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4061, 'Waikato Region', 158, 'WKO', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4062, 'Otago Region', 158, 'OTA', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4063, 'Marlborough Region', 158, 'MBH', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4064, 'West Coast Region', 158, 'WTC', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4065, 'Wellington Region', 158, 'WGN', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4066, 'Canterbury Region', 158, 'CAN', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4067, 'Chatham Islands', 158, 'CIT', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4068, 'Gisborne District', 158, 'GIS', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4069, 'Taranaki Region', 158, 'TKI', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4070, 'Nelson Region', 158, 'NSN', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4071, 'Southland Region', 158, 'STL', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4072, 'Auckland Region', 158, 'AUK', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4073, 'Tasman District', 158, 'TAS', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4074, 'Bay of Plenty Region', 158, 'BOP', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4075, 'Hawke\'s Bay Region', 158, 'HKB', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4076, 'Saint John Parish', 61, '05', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4077, 'Saint Mark Parish', 61, '08', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4078, 'Saint David Parish', 61, '03', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4079, 'Saint George Parish', 61, '04', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4080, 'Saint Patrick Parish', 61, '09', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4081, 'Saint Peter Parish', 61, '11', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4082, 'Saint Andrew Parish', 61, '02', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4083, 'Saint Luke Parish', 61, '07', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4084, 'Saint Paul Parish', 61, '10', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4085, 'Saint Joseph Parish', 61, '06', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4086, 'El Seibo Province', 62, '08', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4087, 'La Romana Province', 62, '12', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4088, 'Sánchez Ramírez Province', 62, '24', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4089, 'Hermanas Mirabal Province', 62, '19', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4090, 'Barahona Province', 62, '04', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4091, 'San Cristóbal Province', 62, '21', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4092, 'Puerto Plata Province', 62, '18', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4093, 'Santo Domingo Province', 62, '32', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4094, 'María Trinidad Sánchez Province', 62, '14', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4095, 'Distrito Nacional', 62, '01', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4096, 'Peravia Province', 62, '17', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4097, 'Independencia', 62, '10', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4098, 'San Juan Province', 62, '22', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4099, 'Monseñor Nouel Province', 62, '28', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4100, 'Santiago Rodríguez Province', 62, '26', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4101, 'Pedernales Province', 62, '16', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4102, 'Espaillat Province', 62, '09', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4103, 'Samaná Province', 62, '20', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4104, 'Valverde Province', 62, '27', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4105, 'Baoruco Province', 62, '03', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4106, 'Hato Mayor Province', 62, '30', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4107, 'Dajabón Province', 62, '05', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4108, 'Santiago Province', 62, '25', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4109, 'La Altagracia Province', 62, '11', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4110, 'San Pedro de Macorís', 62, '23', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4111, 'Monte Plata Province', 62, '29', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4112, 'San José de Ocoa Province', 62, '31', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4113, 'Duarte Province', 62, '06', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4114, 'Azua Province', 62, '02', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4115, 'Monte Cristi Province', 62, '15', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4116, 'La Vega Province', 62, '13', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4117, 'Nord', 95, 'ND', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4118, 'Nippes', 95, 'NI', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4119, 'Grand\'Anse', 95, 'GA', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4120, 'Ouest', 95, 'OU', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4121, 'Nord-Est', 95, 'NE', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4122, 'Sud', 95, 'SD', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4123, 'Artibonite', 95, 'AR', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4124, 'Sud-Est', 95, 'SE', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4125, 'Centre', 95, 'CE', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4126, 'Nord-Ouest', 95, 'NO', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4127, 'San Vicente Department', 66, 'SV', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4128, 'Santa Ana Department', 66, 'SA', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4129, 'Usulután Department', 66, 'US', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4130, 'Morazán Department', 66, 'MO', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4131, 'Chalatenango Department', 66, 'CH', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4132, 'Cabañas Department', 66, 'CA', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4133, 'San Salvador Department', 66, 'SS', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4134, 'La Libertad Department', 66, 'LI', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4135, 'San Miguel Department', 66, 'SM', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4136, 'La Paz Department', 66, 'PA', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4137, 'Cuscatlán Department', 66, 'CU', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4138, 'La Unión Department', 66, 'UN', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4139, 'Ahuachapán Department', 66, 'AH', '2019-10-05 12:18:57', '2020-05-01 07:41:51'),
(4140, 'Sonsonate Department', 66, 'SO', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4141, 'Braslovče Municipality', 201, '151', '2019-10-05 12:18:57', '2020-05-01 07:41:52'),
(4142, 'Lenart Municipality', 201, '058', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4143, 'Oplotnica', 201, '171', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4144, 'Velike Lašče Municipality', 201, '134', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4145, 'Hajdina Municipality', 201, '159', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4146, 'Podčetrtek Municipality', 201, '092', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4147, 'Cankova Municipality', 201, '152', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4148, 'Vitanje Municipality', 201, '137', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4149, 'Sežana Municipality', 201, '111', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4150, 'Kidričevo Municipality', 201, '045', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4151, 'Črenšovci Municipality', 201, '015', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4152, 'Idrija Municipality', 201, '036', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4153, 'Trnovska Vas Municipality', 201, '185', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4154, 'Vodice Municipality', 201, '138', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4155, 'Ravne na Koroškem Municipality', 201, '103', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4156, 'Lovrenc na Pohorju Municipality', 201, '167', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4157, 'Majšperk Municipality', 201, '069', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4158, 'Loški Potok Municipality', 201, '066', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4159, 'Domžale Municipality', 201, '023', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4160, 'Rečica ob Savinji Municipality', 201, '209', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4161, 'Podlehnik Municipality', 201, '172', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4162, 'Cerknica Municipality', 201, '013', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4163, 'Vransko Municipality', 201, '189', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4164, 'Sveta Ana Municipality', 201, '181', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4165, 'Brezovica Municipality', 201, '008', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4166, 'Benedikt Municipality', 201, '148', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4167, 'Divača Municipality', 201, '019', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4168, 'Moravče Municipality', 201, '077', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4169, 'Slovenj Gradec City Municipality', 201, '112', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4170, 'Škocjan Municipality', 201, '121', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4171, 'Šentjur Municipality', 201, '120', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4172, 'Pesnica Municipality', 201, '089', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4173, 'Dol pri Ljubljani Municipality', 201, '022', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4174, 'Loška Dolina Municipality', 201, '065', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4175, 'Hoče–Slivnica Municipality', 201, '160', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4176, 'Cerkvenjak Municipality', 201, '153', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4177, 'Naklo Municipality', 201, '082', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4178, 'Cerkno Municipality', 201, '014', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4179, 'Bistrica ob Sotli Municipality', 201, '149', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4180, 'Kamnik Municipality', 201, '043', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4181, 'Bovec Municipality', 201, '006', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4182, 'Zavrč Municipality', 201, '143', '2019-10-05 12:18:58', '2020-05-01 07:41:53'),
(4183, 'Ajdovščina Municipality', 201, '001', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4184, 'Pivka Municipality', 201, '091', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4185, 'Štore Municipality', 201, '127', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4186, 'Kozje Municipality', 201, '051', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4187, 'Municipality of Škofljica', 201, '123', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4188, 'Prebold Municipality', 201, '174', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4189, 'Dobrovnik Municipality', 201, '156', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4190, 'Mozirje Municipality', 201, '079', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4191, 'City Municipality of Celje', 201, '011', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4192, 'Žiri Municipality', 201, '147', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4193, 'Horjul Municipality', 201, '162', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4194, 'Tabor Municipality', 201, '184', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4195, 'Radeče Municipality', 201, '099', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4196, 'Vipava Municipality', 201, '136', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4197, 'Kungota', 201, '055', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4198, 'Slovenske Konjice Municipality', 201, '114', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4199, 'Osilnica Municipality', 201, '088', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4200, 'Borovnica Municipality', 201, '005', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4201, 'Piran Municipality', 201, '090', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4202, 'Bled Municipality', 201, '003', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4203, 'Jezersko Municipality', 201, '163', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4204, 'Rače–Fram Municipality', 201, '098', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4205, 'Nova Gorica City Municipality', 201, '084', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4206, 'Razkrižje Municipality', 201, '176', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4207, 'Ribnica na Pohorju Municipality', 201, '177', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4208, 'Muta Municipality', 201, '081', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4209, 'Rogatec Municipality', 201, '107', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4210, 'Gorišnica Municipality', 201, '028', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4211, 'Kuzma Municipality', 201, '056', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4212, 'Mislinja Municipality', 201, '076', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4213, 'Duplek Municipality', 201, '026', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4214, 'Trebnje Municipality', 201, '130', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4215, 'Brežice Municipality', 201, '009', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4216, 'Dobrepolje Municipality', 201, '020', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4217, 'Grad Municipality', 201, '158', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4218, 'Moravske Toplice Municipality', 201, '078', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4219, 'Luče Municipality', 201, '067', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4220, 'Miren–Kostanjevica Municipality', 201, '075', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4221, 'Ormož Municipality', 201, '087', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4222, 'Šalovci Municipality', 201, '033', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4223, 'Miklavž na Dravskem Polju Municipality', 201, '169', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4224, 'Makole Municipality', 201, '198', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4225, 'Lendava Municipality', 201, '059', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4226, 'Vuzenica Municipality', 201, '141', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4227, 'Kanal ob Soči Municipality', 201, '044', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4228, 'Ptuj City Municipality', 201, '096', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4229, 'Sveti Andraž v Slovenskih Goricah Municipality', 201, '182', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4230, 'Selnica ob Dravi Municipality', 201, '178', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4231, 'Radovljica Municipality', 201, '102', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4232, 'Črna na Koroškem Municipality', 201, '016', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4233, 'Rogaška Slatina Municipality', 201, '106', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4234, 'Podvelka Municipality', 201, '093', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4235, 'Ribnica Municipality', 201, '104', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4236, 'City Municipality of Novo Mesto', 201, '085', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4237, 'Mirna Peč Municipality', 201, '170', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4238, 'Križevci Municipality', 201, '166', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4239, 'Poljčane Municipality', 201, '200', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4240, 'Brda Municipality', 201, '007', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4241, 'Šentjernej Municipality', 201, '119', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4242, 'Maribor City Municipality', 201, '070', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4243, 'Kobarid Municipality', 201, '046', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4244, 'Markovci Municipality', 201, '168', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4245, 'Vojnik Municipality', 201, '139', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4246, 'Trbovlje Municipality', 201, '129', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4247, 'Tolmin Municipality', 201, '128', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4248, 'Šoštanj Municipality', 201, '126', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4249, 'Žetale Municipality', 201, '191', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4250, 'Tržič Municipality', 201, '131', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4251, 'Turnišče Municipality', 201, '132', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4252, 'Dobrna Municipality', 201, '155', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4253, 'Renče–Vogrsko Municipality', 201, '201', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4254, 'Kostanjevica na Krki Municipality', 201, '197', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4255, 'Sveti Jurij ob Ščavnici Municipality', 201, '116', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4256, 'Železniki Municipality', 201, '146', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4257, 'Veržej Municipality', 201, '188', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4258, 'Žalec Municipality', 201, '190', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4259, 'Starše Municipality', 201, '115', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4260, 'Sveta Trojica v Slovenskih Goricah Municipality', 201, '204', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4261, 'Solčava Municipality', 201, '180', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4262, 'Vrhnika Municipality', 201, '140', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4263, 'Središče ob Dravi', 201, '202', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4264, 'Rogašovci Municipality', 201, '105', '2019-10-05 12:18:58', '2020-05-01 07:41:52');
INSERT INTO `zones` (`zone_id`, `zone_name`, `zone_country_id`, `zone_code`, `created_at`, `updated_at`) VALUES
(4265, 'Mežica Municipality', 201, '074', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4266, 'Juršinci Municipality', 201, '042', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4267, 'Velika Polana Municipality', 201, '187', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4268, 'Sevnica Municipality', 201, '110', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4269, 'Zagorje ob Savi Municipality', 201, '142', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4270, 'Ljubljana City Municipality', 201, '061', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4271, 'Gornji Petrovci Municipality', 201, '031', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4272, 'Polzela Municipality', 201, '173', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4273, 'Sveti Tomaž Municipality', 201, '205', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4274, 'Prevalje Municipality', 201, '175', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4275, 'Radlje ob Dravi Municipality', 201, '101', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4276, 'Žirovnica Municipality', 201, '192', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4277, 'Sodražica Municipality', 201, '179', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4278, 'Bloke Municipality', 201, '150', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4279, 'Šmartno pri Litiji Municipality', 201, '194', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4280, 'Ruše Municipality', 201, '108', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4281, 'Dolenjske Toplice Municipality', 201, '157', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4282, 'Bohinj Municipality', 201, '004', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4283, 'Komenda Municipality', 201, '164', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4284, 'Gorje Municipality', 201, '207', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4285, 'Šmarje pri Jelšah Municipality', 201, '124', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4286, 'Ig Municipality', 201, '037', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4287, 'Kranj City Municipality', 201, '052', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4288, 'Puconci Municipality', 201, '097', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4289, 'Šmarješke Toplice Municipality', 201, '206', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4290, 'Dornava Municipality', 201, '024', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4291, 'Črnomelj Municipality', 201, '017', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4292, 'Radenci Municipality', 201, '100', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4293, 'Gorenja Vas–Poljane Municipality', 201, '027', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4294, 'Ljubno Municipality', 201, '062', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4295, 'Dobje Municipality', 201, '154', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4296, 'Šmartno ob Paki Municipality', 201, '125', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4297, 'Mokronog–Trebelno Municipality', 201, '199', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4298, 'Mirna Municipality', 201, '212', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4299, 'Šenčur Municipality', 201, '117', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4300, 'Videm Municipality', 201, '135', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4301, 'Beltinci Municipality', 201, '002', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4302, 'Lukovica Municipality', 201, '068', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4303, 'Preddvor Municipality', 201, '095', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4304, 'Destrnik Municipality', 201, '018', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4305, 'Ivančna Gorica Municipality', 201, '039', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4306, 'Log–Dragomer Municipality', 201, '208', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4307, 'Žužemberk Municipality', 201, '193', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4308, 'Dobrova–Polhov Gradec Municipality', 201, '021', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4309, 'Municipality of Cirkulane', 201, '196', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4310, 'Cerklje na Gorenjskem Municipality', 201, '012', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4311, 'Šentrupert Municipality', 201, '211', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4312, 'Tišina Municipality', 201, '010', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4313, 'Murska Sobota City Municipality', 201, '080', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4314, 'Municipality of Krško', 201, '054', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4315, 'Komen Municipality', 201, '049', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4316, 'Škofja Loka Municipality', 201, '122', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4317, 'Šempeter–Vrtojba Municipality', 201, '183', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4318, 'Municipality of Apače', 201, '195', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4319, 'Koper City Municipality', 201, '050', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4320, 'Odranci Municipality', 201, '086', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4321, 'Hrpelje–Kozina Municipality', 201, '035', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4322, 'Izola Municipality', 201, '040', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4323, 'Metlika Municipality', 201, '073', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4324, 'Šentilj Municipality', 201, '118', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4325, 'Kobilje Municipality', 201, '047', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4326, 'Ankaran Municipality', 201, '213', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4327, 'Hodoš Municipality', 201, '161', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4328, 'Sveti Jurij v Slovenskih Goricah Municipality', 201, '210', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4329, 'Nazarje Municipality', 201, '083', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4330, 'Postojna Municipality', 201, '094', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4331, 'Kostel Municipality', 201, '165', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4332, 'Slovenska Bistrica Municipality', 201, '113', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4333, 'Straža Municipality', 201, '203', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4334, 'Trzin Municipality', 201, '186', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4335, 'Kočevje Municipality', 201, '048', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4336, 'Grosuplje Municipality', 201, '032', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4337, 'Jesenice Municipality', 201, '041', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4338, 'Laško Municipality', 201, '057', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4339, 'Gornji Grad Municipality', 201, '030', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4340, 'Kranjska Gora Municipality', 201, '053', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4341, 'Hrastnik Municipality', 201, '034', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4342, 'Zreče Municipality', 201, '144', '2019-10-05 12:18:58', '2020-05-01 07:41:53'),
(4343, 'Gornja Radgona Municipality', 201, '029', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4344, 'Municipality of Ilirska Bistrica', 201, '038', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4345, 'Dravograd Municipality', 201, '025', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4346, 'Semič Municipality', 201, '109', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4347, 'Litija Municipality', 201, '060', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4348, 'Mengeš Municipality', 201, '072', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4349, 'Medvode Municipality', 201, '071', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4350, 'Logatec Municipality', 201, '064', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4351, 'Ljutomer Municipality', 201, '063', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4352, 'Banská Bystrica Region', 200, 'BC', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4353, 'Košice Region', 200, 'KI', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4354, 'Prešov Region', 200, 'PV', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4355, 'Trnava Region', 200, 'TA', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4356, 'Bratislava Region', 200, 'BL', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4357, 'Nitra Region', 200, 'NI', '2019-10-05 12:18:58', '2019-10-05 12:18:58'),
(4358, 'Trenčín Region', 200, 'TC', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4359, 'Žilina Region', 200, 'ZI', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4360, 'Cimișlia District', 144, 'CM', '2019-10-05 12:18:58', '2020-05-01 07:41:52'),
(4361, 'Orhei District', 144, 'OR', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4362, 'Bender Municipality', 144, 'BD', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4363, 'Nisporeni District', 144, 'NI', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4364, 'Sîngerei District', 144, 'SI', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4365, 'Căușeni District', 144, 'CS', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4366, 'Călărași District', 144, 'CL', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4367, 'Glodeni District', 144, 'GL', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4368, 'Anenii Noi District', 144, 'AN', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4369, 'Ialoveni District', 144, 'IA', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4370, 'Florești District', 144, 'FL', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4371, 'Telenești District', 144, 'TE', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4372, 'Taraclia District', 144, 'TA', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4373, 'Chișinău Municipality', 144, 'CU', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4374, 'Soroca District', 144, 'SO', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4375, 'Briceni District', 144, 'BR', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4376, 'Rîșcani District', 144, 'RI', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4377, 'Strășeni District', 144, 'ST', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4378, 'Ștefan Vodă District', 144, 'SV', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4379, 'Basarabeasca District', 144, 'BS', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4380, 'Cantemir District', 144, 'CT', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4381, 'Fălești District', 144, 'FA', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4382, 'Hîncești District', 144, 'HI', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4383, 'Dubăsari District', 144, 'DU', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4384, 'Dondușeni District', 144, 'DO', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4385, 'Gagauzia', 144, 'GA', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4386, 'Ungheni District', 144, 'UN', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4387, 'Edineț District', 144, 'ED', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4388, 'Șoldănești District', 144, 'SD', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4389, 'Ocnița District', 144, 'OC', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4390, 'Criuleni District', 144, 'CR', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4391, 'Cahul District', 144, 'CA', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4392, 'Drochia District', 144, 'DR', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4393, 'Bălți Municipality', 144, 'BA', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4394, 'Rezina District', 144, 'RE', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4395, 'Transnistria autonomous territorial unit', 144, 'SN', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4396, 'Salacgrīva Municipality', 120, '086', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4397, 'Vecumnieki Municipality', 120, '105', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4398, 'Naukšēni Municipality', 120, '064', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4399, 'Ilūkste Municipality', 120, '036', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4400, 'Gulbene Municipality', 120, '033', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4401, 'Līvāni Municipality', 120, '056', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4402, 'Salaspils Municipality', 120, '087', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4403, 'Ventspils Municipality', 120, '106', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4404, 'Rundāle Municipality', 120, '083', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4405, 'Pļaviņas Municipality', 120, '072', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4406, 'Vārkava Municipality', 120, '103', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4407, 'Jaunpiebalga Municipality', 120, '039', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4408, 'Sēja Municipality', 120, '090', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4409, 'Tukums Municipality', 120, '099', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4410, 'Cibla Municipality', 120, '023', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4411, 'Burtnieki Municipality', 120, '019', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4412, 'Ķegums Municipality', 120, '051', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4413, 'Krustpils Municipality', 120, '049', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4414, 'Cesvaine Municipality', 120, '021', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4415, 'Skrīveri Municipality', 120, '092', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4416, 'Ogre Municipality', 120, '067', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4417, 'Olaine Municipality', 120, '068', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4418, 'Limbaži Municipality', 120, '054', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4419, 'Lubāna Municipality', 120, '057', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4420, 'Kandava Municipality', 120, '043', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4421, 'Ventspils', 120, 'VEN', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4422, 'Krimulda Municipality', 120, '048', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4423, 'Rugāji Municipality', 120, '082', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4424, 'Jelgava Municipality', 120, '041', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4425, 'Valka Municipality', 120, '101', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4426, 'Rūjiena Municipality', 120, '084', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4427, 'Babīte Municipality', 120, '012', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4428, 'Dundaga Municipality', 120, '027', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4429, 'Priekule Municipality', 120, '074', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4430, 'Zilupe Municipality', 120, '110', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4431, 'Varakļāni Municipality', 120, '102', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4432, 'Nereta Municipality', 120, '065', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4433, 'Madona Municipality', 120, '059', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4434, 'Sala Municipality', 120, '085', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4435, 'Ķekava Municipality', 120, '052', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4436, 'Nīca Municipality', 120, '066', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4437, 'Dobele Municipality', 120, '026', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4438, 'Jēkabpils Municipality', 120, '042', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4439, 'Saldus Municipality', 120, '088', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4440, 'Roja Municipality', 120, '079', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4441, 'Iecava Municipality', 120, '034', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4442, 'Ozolnieki Municipality', 120, '069', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4443, 'Saulkrasti Municipality', 120, '089', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4444, 'Ērgļi Municipality', 120, '030', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4445, 'Aglona Municipality', 120, '001', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4446, 'Jūrmala', 120, 'JUR', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4447, 'Skrunda Municipality', 120, '093', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4448, 'Engure Municipality', 120, '029', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4449, 'Inčukalns Municipality', 120, '037', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4450, 'Mārupe Municipality', 120, '062', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4451, 'Mērsrags Municipality', 120, '063', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4452, 'Koknese Municipality', 120, '046', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4453, 'Kārsava Municipality', 120, '044', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4454, 'Carnikava Municipality', 120, '020', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4455, 'Rēzekne Municipality', 120, '077', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4456, 'Viesīte Municipality', 120, '107', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4457, 'Ape Municipality', 120, '009', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4458, 'Durbe Municipality', 120, '028', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4459, 'Talsi Municipality', 120, '097', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4460, 'Liepāja', 120, 'LPX', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4461, 'Mālpils Municipality', 120, '061', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4462, 'Smiltene Municipality', 120, '094', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4463, 'Daugavpils', 120, 'DGV', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4464, 'Jēkabpils', 120, 'JKB', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4465, 'Bauska Municipality', 120, '016', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4466, 'Vecpiebalga Municipality', 120, '104', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4467, 'Pāvilosta Municipality', 120, '071', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4468, 'Brocēni Municipality', 120, '018', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4469, 'Cēsis Municipality', 120, '022', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4470, 'Grobiņa Municipality', 120, '032', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4471, 'Beverīna Municipality', 120, '017', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4472, 'Aizkraukle Municipality', 120, '002', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4473, 'Valmiera', 120, 'VMR', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4474, 'Krāslava Municipality', 120, '047', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4475, 'Jaunjelgava Municipality', 120, '038', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4476, 'Sigulda Municipality', 120, '091', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4477, 'Viļaka Municipality', 120, '108', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4478, 'Stopiņi Municipality', 120, '095', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4479, 'Rauna Municipality', 120, '076', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4480, 'Tērvete Municipality', 120, '098', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4481, 'Auce Municipality', 120, '010', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4482, 'Baldone Municipality', 120, '013', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4483, 'Preiļi Municipality', 120, '073', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4484, 'Aloja Municipality', 120, '005', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4485, 'Alsunga Municipality', 120, '006', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4486, 'Viļāni Municipality', 120, '109', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4487, 'Alūksne Municipality', 120, '007', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4488, 'Līgatne Municipality', 120, '055', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4489, 'Jaunpils Municipality', 120, '040', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4490, 'Kuldīga Municipality', 120, '050', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4491, 'Riga', 120, 'RIX', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4492, 'Daugavpils Municipality', 120, '025', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4493, 'Ropaži Municipality', 120, '080', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4494, 'Strenči Municipality', 120, '096', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4495, 'Kocēni Municipality', 120, '045', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4496, 'Aizpute Municipality', 120, '003', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4497, 'Amata Municipality', 120, '008', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4498, 'Baltinava Municipality', 120, '014', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4499, 'Aknīste Municipality', 120, '004', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4500, 'Jelgava', 120, 'JEL', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4501, 'Ludza Municipality', 120, '058', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4502, 'Riebiņi Municipality', 120, '078', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4503, 'Rucava Municipality', 120, '081', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4504, 'Dagda Municipality', 120, '024', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4505, 'Balvi Municipality', 120, '015', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4506, 'Priekuļi Municipality', 120, '075', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4507, 'Pārgauja Municipality', 120, '070', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4508, 'Vaiņode Municipality', 120, '100', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4509, 'Rēzekne', 120, 'REZ', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4510, 'Garkalne Municipality', 120, '031', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4511, 'Ikšķile Municipality', 120, '035', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4512, 'Lielvārde Municipality', 120, '053', '2019-10-05 12:18:59', '2020-05-01 07:41:52'),
(4513, 'Mazsalaca Municipality', 120, '060', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4514, 'Viqueque Municipality', 63, 'VI', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4515, 'Liquiçá Municipality', 63, 'LI', '2019-10-05 12:18:59', '2020-05-01 07:41:51'),
(4516, 'Ermera District', 63, 'ER', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4517, 'Manatuto District', 63, 'MT', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4518, 'Ainaro Municipality', 63, 'AN', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4519, 'Manufahi Municipality', 63, 'MF', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4520, 'Aileu municipality', 63, 'AL', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4521, 'Baucau Municipality', 63, 'BA', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4522, 'Cova Lima Municipality', 63, 'CO', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4523, 'Lautém Municipality', 63, 'LA', '2019-10-05 12:18:59', '2020-05-01 07:41:51'),
(4524, 'Dili municipality', 63, 'DI', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4525, 'Bobonaro Municipality', 63, 'BO', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4526, 'Peleliu', 168, '350', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4527, 'Ngardmau', 168, '222', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4528, 'Airai', 168, '004', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4529, 'Hatohobei', 168, '050', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4530, 'Melekeok', 168, '212', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4531, 'Ngatpang', 168, '224', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4532, 'Koror', 168, '150', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4533, 'Ngarchelong', 168, '218', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4534, 'Ngiwal', 168, '228', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4535, 'Sonsorol', 168, '370', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4536, 'Ngchesar', 168, '226', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4537, 'Ngaraard', 168, '214', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4538, 'Angaur', 168, '010', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4539, 'Kayangel', 168, '100', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4540, 'Aimeliik', 168, '002', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4541, 'Ngeremlengui', 168, '227', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4542, 'Břeclav District', 58, '644', '2019-10-05 12:18:59', '2020-05-01 07:41:51'),
(4543, 'Český Krumlov District', 58, '312', '2019-10-05 12:18:59', '2020-05-01 07:41:51'),
(4544, 'Plzeň-City District', 58, '323', '2019-10-05 12:18:59', '2020-05-01 07:41:51'),
(4545, 'Brno-Country District', 58, '643', '2019-10-05 12:18:59', '2019-10-05 12:18:59'),
(4546, 'Příbram District', 58, '20B', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4547, 'Pardubice District', 58, '532', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4548, 'Nový Jičín District', 58, '804', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4549, 'Prague 12', 58, '112', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4550, 'Náchod District', 58, '523', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4551, 'Prostějov District', 58, '713', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4552, 'Zlín Region', 58, '72', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4553, 'Chomutov District', 58, '422', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4554, 'Central Bohemian Region', 58, '20', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4555, 'Prague 13', 58, '113', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4556, 'České Budějovice District', 58, '311', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4557, 'Prague 5', 58, '105', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4558, 'Rakovník District', 58, '20C', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4559, 'Frýdek-Místek District', 58, '802', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4560, 'Písek District', 58, '314', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4561, 'Hodonín District', 58, '645', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4562, 'Prague 1', 58, '101', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4563, 'Zlín District', 58, '724', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4564, 'Plzeň-North District', 58, '325', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4565, 'Tábor District', 58, '317', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4566, 'Prague 9', 58, '109', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4567, 'Prague 16', 58, '116', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4568, 'Brno-City District', 58, '642', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4569, 'Prague 6', 58, '106', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4570, 'Prague 11', 58, '111', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4571, 'Svitavy District', 58, '533', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4572, 'Vsetín District', 58, '723', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4573, 'Cheb District', 58, '411', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4574, 'Olomouc District', 58, '712', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4575, 'Vysočina Region', 58, '63', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4576, 'Ústí nad Labem Region', 58, '42', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4577, 'Horní Počernice', 58, '120', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4578, 'Prachatice District', 58, '315', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4579, 'Trutnov District', 58, '525', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4580, 'Hradec Králové District', 58, '521', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4581, 'Karlovy Vary Region', 58, '41', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4582, 'Nymburk District', 58, '208', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4583, 'Rokycany District', 58, '326', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4584, 'Ostrava-City District', 58, '806', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4585, 'Prague 14', 58, '114', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4586, 'Karviná District', 58, '803', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4587, 'Prague 4', 58, '104', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4588, 'Pardubice Region', 58, '53', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4589, 'Olomouc Region', 58, '71', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4590, 'Liberec District', 58, '513', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4591, 'Klatovy District', 58, '322', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4592, 'Uherské Hradiště District', 58, '722', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4593, 'Kroměříž District', 58, '721', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4594, 'Prague 8', 58, '108', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4595, 'Sokolov District', 58, '413', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4596, 'Semily District', 58, '514', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4597, 'Třebíč District', 58, '634', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4598, 'Prague', 58, '10', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4599, 'Ústí nad Labem District', 58, '427', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4600, 'Moravian-Silesian Region', 58, '80', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4601, 'Liberec Region', 58, '51', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4602, 'South Moravian Region', 58, '64', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4603, 'Prague 10', 58, '110', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4604, 'Karlovy Vary District', 58, '412', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4605, 'Litoměřice District', 58, '423', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4606, 'Prague-East District', 58, '209', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4607, 'Plzeň Region', 58, '32', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4608, 'Plzeň-South District', 58, '324', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4609, 'Děčín District', 58, '421', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4610, 'Prague 7', 58, '107', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4611, 'Havlíčkův Brod District', 58, '631', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4612, 'Jablonec nad Nisou District', 58, '512', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4613, 'Jihlava District', 58, '632', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4614, 'Hradec Králové Region', 58, '52', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4615, 'Blansko District', 58, '641', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4616, 'Prague 2', 58, '102', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4617, 'Louny District', 58, '424', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4618, 'Kolín District', 58, '204', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4619, 'Prague-West District', 58, '20A', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4620, 'Beroun District', 58, '202', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4621, 'Teplice District', 58, '426', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4622, 'Vyškov District', 58, '646', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4623, 'Opava District', 58, '805', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4624, 'Jindřichův Hradec District', 58, '313', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4625, 'Jeseník District', 58, '711', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4626, 'Přerov District', 58, '714', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4627, 'Benešov District', 58, '201', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4628, 'Strakonice District', 58, '316', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4629, 'Most District', 58, '425', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4630, 'Znojmo District', 58, '647', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4631, 'Kladno District', 58, '203', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4632, 'Prague 21', 58, '121', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4633, 'Česká Lípa District', 58, '511', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4634, 'Chrudim District', 58, '531', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4635, 'Prague 3', 58, '103', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4636, 'Rychnov nad Kněžnou District', 58, '524', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4637, 'Prague 15', 58, '115', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4638, 'Mělník District', 58, '206', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4639, 'South Bohemian Region', 58, '31', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4640, 'Jičín District', 58, '522', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4641, 'Domažlice District', 58, '321', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4642, 'Šumperk District', 58, '715', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4643, 'Mladá Boleslav District', 58, '207', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4644, 'Bruntál District', 58, '801', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4645, 'Pelhřimov District', 58, '633', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4646, 'Tachov District', 58, '327', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4647, 'Ústí nad Orlicí District', 58, '534', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4648, 'Žďár nad Sázavou District', 58, '635', '2019-10-05 12:19:00', '2020-05-01 07:41:51'),
(4649, 'North East Community Development Council', 199, '02', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4650, 'South East Community Development Council', 199, '04', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4651, 'Central Singapore Community Development Council', 199, '01', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4652, 'South West Community Development Council', 199, '05', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4653, 'North West Community Development Council', 199, '03', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4654, 'Ewa District', 153, '09', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4655, 'Uaboe District', 153, '13', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4656, 'Aiwo District', 153, '01', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4657, 'Meneng District', 153, '11', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4658, 'Anabar District', 153, '02', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4659, 'Nibok District', 153, '12', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4660, 'Baiti District', 153, '05', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4661, 'Ijuw District', 153, '10', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4662, 'Buada District', 153, '07', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4663, 'Anibare District', 153, '04', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4664, 'Yaren District', 153, '14', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4665, 'Boe District', 153, '06', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4666, 'Denigomodu District', 153, '08', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4667, 'Anetan District', 153, '03', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4668, 'Zhytomyr Oblast', 230, '18', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4669, 'Vinnytsia Oblast', 230, '05', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4670, 'Zakarpattia Oblast', 230, '21', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4671, 'Kyiv Oblast', 230, '32', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4672, 'Lviv Oblast', 230, '46', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4673, 'Luhansk Oblast', 230, '09', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4674, 'Ternopil Oblast', 230, '61', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4675, 'Dnipropetrovsk Oblast', 230, '12', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4676, 'Kiev', 230, '30', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4677, 'Kirovohrad Oblast', 230, '35', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4678, 'Chernivtsi Oblast', 230, '77', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4679, 'Mykolaiv Oblast', 230, '48', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4680, 'Cherkasy Oblast', 230, '71', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4681, 'Khmelnytsky Oblast', 230, '68', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4682, 'Ivano-Frankivsk Oblast', 230, '26', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4683, 'Rivne Oblast', 230, '56', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4684, 'Kherson Oblast', 230, '65', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4685, 'Sumy Oblast', 230, '59', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4686, 'Kharkiv Oblast', 230, '63', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4687, 'Zaporizhzhya Oblast', 230, '23', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4688, 'Odessa Oblast', 230, '51', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4689, 'Autonomous Republic of Crimea', 230, '43', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4690, 'Volyn Oblast', 230, '07', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4691, 'Donetsk Oblast', 230, '14', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4692, 'Chernihiv Oblast', 230, '74', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4693, 'Gabrovo Province', 34, '07', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4694, 'Smolyan Province', 34, '21', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4695, 'Pernik Province', 34, '14', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4696, 'Montana Province', 34, '12', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4697, 'Vidin Province', 34, '05', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4698, 'Razgrad Province', 34, '17', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4699, 'Blagoevgrad Province', 34, '01', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4700, 'Sliven Province', 34, '20', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4701, 'Plovdiv Province', 34, '16', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4702, 'Kardzhali Province', 34, '09', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4703, 'Kyustendil Province', 34, '10', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4704, 'Haskovo Province', 34, '26', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4705, 'Sofia City Province', 34, '22', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4706, 'Pleven Province', 34, '15', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4707, 'Stara Zagora Province', 34, '24', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4708, 'Silistra Province', 34, '19', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4709, 'Veliko Tarnovo Province', 34, '04', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4710, 'Lovech Province', 34, '11', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4711, 'Vratsa Province', 34, '06', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4712, 'Pazardzhik Province', 34, '13', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4713, 'Ruse Province', 34, '18', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4714, 'Targovishte Province', 34, '25', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4715, 'Burgas Province', 34, '02', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4716, 'Yambol Province', 34, '28', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4717, 'Varna Province', 34, '03', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4718, 'Dobrich Province', 34, '08', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4719, 'Sofia Province', 34, '23', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4720, 'Suceava County', 181, 'SV', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4721, 'Hunedoara County', 181, 'HD', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4722, 'Arges', 181, 'AG', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4723, 'Bihor County', 181, 'BH', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4724, 'Alba', 181, 'AB', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4725, 'Ilfov County', 181, 'IF', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4726, 'Giurgiu County', 181, 'GR', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4727, 'Tulcea County', 181, 'TL', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4728, 'Teleorman County', 181, 'TR', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4729, 'Prahova County', 181, 'PH', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4730, 'Bucharest', 181, 'B', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4731, 'Neamț County', 181, 'NT', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4732, 'Călărași County', 181, 'CL', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4733, 'Bistrița-Năsăud County', 181, 'BN', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4734, 'Cluj County', 181, 'CJ', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4735, 'Iași County', 181, 'IS', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4736, 'Braila', 181, 'BR', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4737, 'Constanța County', 181, 'CT', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4738, 'Olt County', 181, 'OT', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4739, 'Arad County', 181, 'AR', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4740, 'Botoșani County', 181, 'BT', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4741, 'Sălaj County', 181, 'SJ', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4742, 'Dolj County', 181, 'DJ', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4743, 'Ialomița County', 181, 'IL', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4744, 'Bacău County', 181, 'BC', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4745, 'Dâmbovița County', 181, 'DB', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4746, 'Satu Mare County', 181, 'SM', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4747, 'Galați County', 181, 'GL', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4748, 'Timiș County', 181, 'TM', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4749, 'Harghita County', 181, 'HR', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4750, 'Gorj County', 181, 'GJ', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4751, 'Mehedinți County', 181, 'MH', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4752, 'Vaslui County', 181, 'VS', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4753, 'Caraș-Severin County', 181, 'CS', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4754, 'Covasna County', 181, 'CV', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4755, 'Sibiu County', 181, 'SB', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4756, 'Buzău County', 181, 'BZ', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4757, 'Vâlcea County', 181, 'VL', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4758, 'Vrancea County', 181, 'VN', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4759, 'Brașov County', 181, 'BV', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4760, 'Maramureș County', 181, 'MM', '2019-10-05 12:19:00', '2020-05-01 07:41:52'),
(4761, 'Aiga-i-le-Tai', 191, 'AL', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4762, 'Satupa\'itea', 191, 'SA', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4763, 'A\'ana', 191, 'AA', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4764, 'Fa\'asaleleaga', 191, 'FA', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4765, 'Atua', 191, 'AT', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4766, 'Vaisigano', 191, 'VS', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4767, 'Palauli', 191, 'PA', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4768, 'Va\'a-o-Fonoti', 191, 'VF', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4769, 'Gaga\'emauga', 191, 'GE', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4770, 'Tuamasaga', 191, 'TU', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4771, 'Gaga\'ifomauga', 191, 'GI', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4772, 'Torba', 237, 'TOB', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4773, 'Penama', 237, 'PAM', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4774, 'Shefa', 237, 'SEE', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4775, 'Malampa', 237, 'MAP', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4776, 'Sanma', 237, 'SAM', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4777, 'Tafea', 237, 'TAE', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4778, 'Honiara', 202, 'CT', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4779, 'Temotu Province', 202, 'TE', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4780, 'Isabel Province', 202, 'IS', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4781, 'Choiseul Province', 202, 'CH', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4782, 'Makira-Ulawa Province', 202, 'MK', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4783, 'Malaita Province', 202, 'ML', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4784, 'Central Province', 202, 'CE', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4785, 'Guadalcanal Province', 202, 'GU', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4786, 'Western Province', 202, 'WE', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4787, 'Rennell and Bellona Province', 202, 'RB', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4788, 'Burgundy', 75, 'D', '2019-10-05 12:19:00', '2019-10-05 12:19:00'),
(4789, 'Auvergne', 75, 'C', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4790, 'Picardy', 75, 'S', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4791, 'Champagne-Ardenne', 75, 'G', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4792, 'Limousin', 75, 'L', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4793, 'Nord-Pas-de-Calais', 75, 'O', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4794, 'Saint Barthélemy', 75, 'BL', '2019-10-05 12:19:01', '2020-05-01 07:41:52'),
(4795, 'Nouvelle-Aquitaine', 75, 'NAQ', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4796, 'Île-de-France', 75, 'IDF', '2019-10-05 12:19:01', '2020-05-01 07:41:51'),
(4797, 'Mayotte', 75, 'YT', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4798, 'Auvergne-Rhône-Alpes', 75, 'ARA', '2019-10-05 12:19:01', '2020-05-01 07:41:51'),
(4799, 'Occitania', 75, 'OCC', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4800, 'Alo', 75, 'WF-AL', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4801, 'Lorraine', 75, 'M', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4802, 'Pays de la Loire', 75, 'PDL', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4803, 'Languedoc-Roussillon', 75, 'K', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4804, 'Normandy', 75, 'NOR', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4805, 'Franche-Comté', 75, 'I', '2019-10-05 12:19:01', '2020-05-01 07:41:51'),
(4806, 'Corsica', 75, 'COR', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4807, 'Brittany', 75, 'BRE', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4808, 'Aquitaine', 75, 'B', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4809, 'Saint Martin', 75, 'MF', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4810, 'Wallis and Futuna', 75, 'WF', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4811, 'Alsace', 75, 'A', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4812, 'Provence-Alpes-Côte d\'Azur', 75, 'PAC', '2019-10-05 12:19:01', '2020-05-01 07:41:51'),
(4813, 'Rhône-Alpes', 75, 'V', '2019-10-05 12:19:01', '2020-05-01 07:41:52'),
(4814, 'Lower Normandy', 75, 'P', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4815, 'Poitou-Charentes', 75, 'T', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4816, 'Paris', 75, '75', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4817, 'Uvea', 75, 'WF-UV', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4818, 'Centre-Val de Loire', 75, 'CVL', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4819, 'Sigave', 75, 'WF-SG', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4820, 'Grand Est', 75, 'GES', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4821, 'Saint Pierre and Miquelon', 75, 'PM', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4822, 'French Guiana', 75, 'GF', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4823, 'Réunion', 75, 'RE', '2019-10-05 12:19:01', '2020-05-01 07:41:52'),
(4824, 'French Polynesia', 75, 'PF', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4825, 'Bourgogne-Franche-Comté', 75, 'BFC', '2019-10-05 12:19:01', '2020-05-01 07:41:51'),
(4826, 'Upper Normandy', 75, 'Q', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4827, 'Martinique', 75, 'MQ', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4828, 'Hauts-de-France', 75, 'HDF', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4829, 'Guadeloupe', 75, 'GP', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4830, 'West New Britain Province', 171, 'WBK', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4831, 'Bougainville', 171, 'NSB', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4832, 'Jiwaka Province', 171, 'JWK', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4833, 'Hela', 171, 'HLA', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4834, 'East New Britain', 171, 'EBR', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4835, 'Morobe Province', 171, 'MPL', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4836, 'Sandaun Province', 171, 'SAN', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4837, 'Port Moresby', 171, 'NCD', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4838, 'Oro Province', 171, 'NPP', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4839, 'Gulf', 171, 'GPK', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4840, 'Western Highlands Province', 171, 'WHM', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4841, 'New Ireland Province', 171, 'NIK', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4842, 'Manus Province', 171, 'MRL', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4843, 'Madang Province', 171, 'MPM', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4844, 'Southern Highlands Province', 171, 'SHM', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4845, 'Eastern Highlands Province', 171, 'EHG', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4846, 'Chimbu Province', 171, 'CPK', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4847, 'Central Province', 171, 'CPM', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4848, 'Enga Province', 171, 'EPW', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4849, 'Milne Bay Province', 171, 'MBA', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4850, 'Western Province', 171, 'WPD', '2019-10-05 12:19:01', '2019-10-05 12:19:01'),
(4851, 'Ohio', 233, 'OH', '2019-11-12 18:30:00', '2019-11-13 05:54:22'),
(4852, 'Ladakh', 101, 'LA', '2019-10-05 12:18:57', '2019-10-05 12:18:57'),
(4853, 'West Bengal', 101, 'WB', '2019-10-05 12:18:57', '2020-05-24 06:21:17'),
(4854, 'Sinop Province', 225, '57', '2020-05-24 12:18:46', '2020-05-24 12:18:46'),
(4855, 'Capital District', 239, 'A', '2019-10-05 12:18:45', '2019-10-05 12:18:45'),
(4856, 'Apure', 239, 'C', '2019-10-05 12:18:45', '2019-10-05 12:18:45');
INSERT INTO `zones` (`zone_id`, `zone_name`, `zone_country_id`, `zone_code`, `created_at`, `updated_at`) VALUES
(4857, 'Jalisco', 142, 'JAL', '2020-06-28 12:18:55', '2020-06-28 12:18:55'),
(4858, 'Roraima', 31, 'RR', '2020-06-28 12:18:45', '2020-06-28 12:18:45'),
(4859, 'Guarda District', 177, '09', '2020-06-28 12:18:46', '2020-06-28 12:18:46'),
(4860, 'Devonshire Parish', 25, 'DEV', '2020-07-22 04:26:00', '2020-07-22 04:26:00'),
(4861, 'Hamilton Parish', 25, 'HA', '2020-07-22 04:26:00', '2020-07-22 04:26:00'),
(4862, 'Hamilton Municipality', 25, 'HAM', '2020-07-22 04:26:00', '2020-07-22 04:26:00'),
(4863, 'Paget Parish', 25, 'PAG', '2020-07-22 04:26:00', '2020-07-22 04:26:00'),
(4864, 'Pembroke Parish', 25, 'PEM', '2020-07-22 04:26:00', '2020-07-22 04:26:00'),
(4865, 'Saint George\'s Municipality', 25, 'SG', '2020-07-22 04:26:00', '2020-07-22 04:26:00'),
(4866, 'Saint George\'s Parish', 25, 'SGE', '2020-07-22 04:26:00', '2020-07-22 04:26:00'),
(4867, 'Sandys Parish', 25, 'SAN', '2020-07-22 04:26:00', '2020-07-22 04:26:00'),
(4868, 'Smith\'s Parish,', 25, 'SMI', '2020-07-22 04:26:00', '2020-07-22 04:26:00'),
(4869, 'Southampton Parish', 25, 'SOU', '2020-07-22 04:26:00', '2020-07-22 04:26:00'),
(4870, 'Warwick Parish', 25, 'WAR', '2020-07-22 04:26:00', '2020-07-22 04:26:00'),
(4871, 'Huila Department', 48, 'HUI', '2020-08-15 09:49:06', '2020-08-15 09:49:10'),
(4874, 'Uroševac District (Ferizaj)', 248, NULL, '2020-08-15 10:35:46', '2020-08-15 10:37:07'),
(4876, 'Đakovica District (Gjakove)', 248, NULL, '2020-08-15 10:36:53', '2020-08-15 10:37:40'),
(4877, 'Gjilan District', 248, NULL, '2020-08-15 10:38:25', '2020-08-15 10:41:03'),
(4878, 'Kosovska Mitrovica District', 248, NULL, '2020-08-15 10:39:53', '2020-08-15 10:41:01'),
(4879, 'Pristina (Priştine)', 248, NULL, '2020-08-15 11:03:03', '2020-08-15 11:03:08'),
(4880, 'Autonomous City Of Buenos Aires', 11, 'C', '2020-08-15 11:19:48', '2020-08-15 11:21:39'),
(4881, 'New Providence', 17, 'NP', '2020-10-13 09:56:49', '2020-10-13 09:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`user_id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_detail`
--
ALTER TABLE `bank_detail`
  ADD PRIMARY KEY (`bank_detail_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`);

--
-- Indexes for table `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Indexes for table `block_ips`
--
ALTER TABLE `block_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `categories_role`
--
ALTER TABLE `categories_role`
  ADD PRIMARY KEY (`categories_role_id`);

--
-- Indexes for table `compare`
--
ALTER TABLE `compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constant_banners`
--
ALTER TABLE `constant_banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupans_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Indexes for table `currency_record`
--
ALTER TABLE `currency_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_theme`
--
ALTER TABLE `current_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Indexes for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Indexes for table `delievery_time_slots`
--
ALTER TABLE `delievery_time_slots`
  ADD PRIMARY KEY (`delievery_time_slots_id`);

--
-- Indexes for table `delievery_time_slot_with_zone`
--
ALTER TABLE `delievery_time_slot_with_zone`
  ADD PRIMARY KEY (`delievery_time_slot_with_zone_id`);

--
-- Indexes for table `deliveryboy_info`
--
ALTER TABLE `deliveryboy_info`
  ADD PRIMARY KEY (`deliveryboy_info_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale`
--
ALTER TABLE `flash_sale`
  ADD PRIMARY KEY (`flash_sale_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `flate_rate`
--
ALTER TABLE `flate_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floating_cash`
--
ALTER TABLE `floating_cash`
  ADD PRIMARY KEY (`floating_cash_id`);

--
-- Indexes for table `front_end_theme_content`
--
ALTER TABLE `front_end_theme_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `home_banners`
--
ALTER TABLE `home_banners`
  ADD PRIMARY KEY (`home_banners_id`);

--
-- Indexes for table `http_call_record`
--
ALTER TABLE `http_call_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_categories`
--
ALTER TABLE `image_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_ref_id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`label_id`);

--
-- Indexes for table `label_value`
--
ALTER TABLE `label_value`
  ADD PRIMARY KEY (`label_value_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  ADD PRIMARY KEY (`min_max_id`);

--
-- Indexes for table `manage_role`
--
ALTER TABLE `manage_role`
  ADD PRIMARY KEY (`manage_role_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`);

--
-- Indexes for table `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_translation`
--
ALTER TABLE `menu_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `idx_products_date_added` (`news_date_added`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `news_description`
--
ALTER TABLE `news_description`
  ADD KEY `products_name` (`news_name`);

--
-- Indexes for table `news_to_news_categories`
--
ALTER TABLE `news_to_news_categories`
  ADD PRIMARY KEY (`news_id`,`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Indexes for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`);

--
-- Indexes for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  ADD PRIMARY KEY (`orders_status_description_id`);

--
-- Indexes for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Indexes for table `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Indexes for table `orders_to_delivery_boy`
--
ALTER TABLE `orders_to_delivery_boy`
  ADD PRIMARY KEY (`orders_to_deliveryboy_id`);

--
-- Indexes for table `orders_to_delivery_boy_history`
--
ALTER TABLE `orders_to_delivery_boy_history`
  ADD PRIMARY KEY (`orders_to_delivery_boy_history_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_description`
--
ALTER TABLE `pages_description`
  ADD PRIMARY KEY (`page_description_id`);

--
-- Indexes for table `payment_description`
--
ALTER TABLE `payment_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_methods_id`);

--
-- Indexes for table `payment_methods_detail`
--
ALTER TABLE `payment_methods_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_withdraw`
--
ALTER TABLE `payment_withdraw`
  ADD PRIMARY KEY (`payment_withdraw_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_model` (`products_model`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Indexes for table `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_name` (`products_name`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`);

--
-- Indexes for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  ADD PRIMARY KEY (`products_options_descriptions_id`);

--
-- Indexes for table `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`);

--
-- Indexes for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  ADD PRIMARY KEY (`products_options_values_descriptions_id`);

--
-- Indexes for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  ADD PRIMARY KEY (`products_shipping_rates_id`);

--
-- Indexes for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_to_categories_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `shipping_description`
--
ALTER TABLE `shipping_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`shipping_methods_id`);

--
-- Indexes for table `sliders_images`
--
ALTER TABLE `sliders_images`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Indexes for table `top_offers`
--
ALTER TABLE `top_offers`
  ADD PRIMARY KEY (`top_offers_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `units_descriptions`
--
ALTER TABLE `units_descriptions`
  ADD PRIMARY KEY (`units_description_id`);

--
-- Indexes for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  ADD PRIMARY KEY (`ups_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_balance`
--
ALTER TABLE `users_balance`
  ADD PRIMARY KEY (`users_balance_id`);

--
-- Indexes for table `user_to_address`
--
ALTER TABLE `user_to_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_types_id`);

--
-- Indexes for table `whos_online`
--
ALTER TABLE `whos_online`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `country_region` (`zone_country_id`);

--
-- Indexes for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_detail`
--
ALTER TABLE `bank_detail`
  MODIFY `bank_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `block_ips`
--
ALTER TABLE `block_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories_description`
--
ALTER TABLE `categories_description`
  MODIFY `categories_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories_role`
--
ALTER TABLE `categories_role`
  MODIFY `categories_role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compare`
--
ALTER TABLE `compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `constant_banners`
--
ALTER TABLE `constant_banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency_record`
--
ALTER TABLE `currency_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `current_theme`
--
ALTER TABLE `current_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delievery_time_slots`
--
ALTER TABLE `delievery_time_slots`
  MODIFY `delievery_time_slots_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delievery_time_slot_with_zone`
--
ALTER TABLE `delievery_time_slot_with_zone`
  MODIFY `delievery_time_slot_with_zone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveryboy_info`
--
ALTER TABLE `deliveryboy_info`
  MODIFY `deliveryboy_info_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sale`
--
ALTER TABLE `flash_sale`
  MODIFY `flash_sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flate_rate`
--
ALTER TABLE `flate_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `floating_cash`
--
ALTER TABLE `floating_cash`
  MODIFY `floating_cash_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_end_theme_content`
--
ALTER TABLE `front_end_theme_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_banners`
--
ALTER TABLE `home_banners`
  MODIFY `home_banners_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `http_call_record`
--
ALTER TABLE `http_call_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `image_categories`
--
ALTER TABLE `image_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=742;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1118;

--
-- AUTO_INCREMENT for table `label_value`
--
ALTER TABLE `label_value`
  MODIFY `label_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1828;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  MODIFY `min_max_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_role`
--
ALTER TABLE `manage_role`
  MODIFY `manage_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `menu_translation`
--
ALTER TABLE `menu_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  MODIFY `categories_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12353;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `orders_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  MODIFY `orders_status_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_to_delivery_boy`
--
ALTER TABLE `orders_to_delivery_boy`
  MODIFY `orders_to_deliveryboy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_to_delivery_boy_history`
--
ALTER TABLE `orders_to_delivery_boy_history`
  MODIFY `orders_to_delivery_boy_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages_description`
--
ALTER TABLE `pages_description`
  MODIFY `page_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `payment_description`
--
ALTER TABLE `payment_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_methods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_methods_detail`
--
ALTER TABLE `payment_methods_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `payment_withdraw`
--
ALTER TABLE `payment_withdraw`
  MODIFY `payment_withdraw_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_description`
--
ALTER TABLE `products_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `products_options_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  MODIFY `products_options_descriptions_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_options_values`
--
ALTER TABLE `products_options_values`
  MODIFY `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  MODIFY `products_options_values_descriptions_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  MODIFY `products_shipping_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  MODIFY `products_to_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews_description`
--
ALTER TABLE `reviews_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `shipping_description`
--
ALTER TABLE `shipping_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `shipping_methods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders_images`
--
ALTER TABLE `sliders_images`
  MODIFY `sliders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `top_offers`
--
ALTER TABLE `top_offers`
  MODIFY `top_offers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units_descriptions`
--
ALTER TABLE `units_descriptions`
  MODIFY `units_description_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  MODIFY `ups_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_balance`
--
ALTER TABLE `users_balance`
  MODIFY `users_balance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_to_address`
--
ALTER TABLE `user_to_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_types_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4882;

--
-- AUTO_INCREMENT for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
