-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 19, 2024 at 09:35 AM
-- Server version: 10.6.16-MariaDB
-- PHP Version: 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mostafapress_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `additional_directions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `client_id`, `country_id`, `lat`, `long`, `additional_directions`, `created_at`, `updated_at`) VALUES
(3, 1, 0, '26.2348668', '50.5445705', 'Ewan Tower, Unit 62, Building 923 Seef Area, ضاحية السيف، البحرين', NULL, '2024-02-27 17:48:29'),
(6, 1, 0, '26.3815116', '50.09886119999999', 'EDMA6713، 6713 الامير متعب ابن عبدالعزيز، 3872، حي الواحة، الدمام 32254, Saudi Arabia', '2024-02-28 10:23:16', '2024-02-28 13:39:57'),
(7, 1, 0, '26.2273885', '50.5465576', 'Block 408, road 16, Building146 Manama, السنابس، البحرين', '2024-02-28 14:07:15', '2024-02-28 14:07:15'),
(10, 12, 0, '30.0588', '31.2268', NULL, '2024-03-07 13:45:03', '2024-03-07 13:45:03'),
(14, 12, 0, '30.0588', '31.2268', NULL, '2024-03-07 16:26:31', '2024-03-07 16:26:31'),
(15, 12, 0, '30.0588', '31.2268', NULL, '2024-03-07 16:33:32', '2024-03-07 16:33:32'),
(18, 12, 0, '30.0588', '31.2268', NULL, '2024-03-10 11:34:56', '2024-03-10 11:34:56'),
(19, 12, 0, '30.0588', '31.2268', NULL, '2024-03-10 11:57:31', '2024-03-10 11:57:31'),
(20, 12, 0, '30.0588', '31.2268', NULL, '2024-03-10 12:12:59', '2024-03-10 12:12:59'),
(21, 12, 0, '30.0588', '31.2268', 'test', NULL, '2024-03-10 15:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `phone_code` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `theme` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `image`, `code`, `phone_code`, `country_code`, `status`, `theme`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '123456', NULL, NULL, '973', 'BH', 1, 1, NULL, '$2y$10$Ux05A7MTagNwS51QpRoEDe.nX1mKZyOy1xSLl1TjyeJP9O4Oy5i.2', 'u3vXgnbkkpysqwy9k0i0rDcFjwSzkusGURPkioMGnqd3amQOlhQHVmtUdqyN', NULL, '2022-10-09 11:52:15', '2023-11-28 13:48:05'),
(3, 'test', 'test@gmail.com', '123456789', NULL, NULL, '973', 'BH', 1, 1, NULL, '$2y$10$A3YAcGfNkKjpu2YhbTTOzujufTqhQ18vAwHVpwOqXl2XWXS.asA6S', NULL, '2024-03-10 14:55:44', '2024-03-10 14:55:01', '2024-03-10 14:55:44'),
(4, 'aya', 'test@gmail.com', '1234567', NULL, NULL, '973', 'BH', 1, 1, NULL, '$2y$10$LbwGDEMO4K30EIOy8sW.ROCarP9bkCIJ.VJSzA59uHOlja9varTp.', NULL, '2024-03-10 15:56:55', '2024-03-10 15:55:45', '2024-03-10 15:56:55'),
(5, 'test', 'test@gmail.com', '12345678', NULL, NULL, '973', 'BH', 1, 1, NULL, '$2y$10$3nOiE7OR4YznoP/ILrwgIuk7DREgxBP08oW28u3JgL0P2GTjwzlJK', NULL, '2024-03-10 16:03:01', '2024-03-10 16:02:25', '2024-03-10 16:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `advertisings`
--

CREATE TABLE `advertisings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` text DEFAULT NULL,
  `title_en` text DEFAULT NULL,
  `desc_ar` text DEFAULT NULL,
  `desc_en` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisings`
--

INSERT INTO `advertisings` (`id`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `status`, `created_at`, `updated_at`) VALUES
(2, 'استراتيجيات الإعلان والطباعة المبتكرة', 'Innovative Advertising And Printing Strategies', 'اكتشف الحلول المخصصة التي تدمج تقنيات الإعلان والطباعة المتطورة، والمصممة لدفع علامتك التجارية إلى أعلى من المنافسة.', 'Discover Tailored Solutions That Merge Cutting-Edge Advertising And Printing Techniques, Designed To Propel Your Brand Above The Competition.', 1, '2024-05-15 12:20:10', '2024-05-15 13:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `advertising_images`
--

CREATE TABLE `advertising_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `advertising_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertising_images`
--

INSERT INTO `advertising_images` (`id`, `image`, `advertising_id`, `created_at`, `updated_at`) VALUES
(3, '/uploads/Advertising/1715775610_3218.svg', 2, '2024-05-15 12:20:10', '2024-05-15 12:20:10'),
(4, '/uploads/Advertising/1715775610_9062.svg', 2, '2024-05-15 12:20:10', '2024-05-15 12:20:10'),
(5, '/uploads/Advertising/1715780638_8578.svg', 2, '2024-05-15 13:43:58', '2024-05-15 13:43:58'),
(6, '/uploads/Advertising/1715780638_9196.svg', 2, '2024-05-15 13:43:58', '2024-05-15 13:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desc_ar` text DEFAULT NULL,
  `desc_en` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `desc_ar`, `desc_en`, `status`, `created_at`, `updated_at`) VALUES
(1, '<h4 class=\"py-3 \">Your Fully Optimized Solution For&nbsp;Advertising&nbsp;And&nbsp;Printing.</h4>\r\n<p class=\" lh-base\">Orem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Magna Aliqua. Ut Enim Ad Minim Veniam, Quis Nostrud Exercitation Ulla Orem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor.</p>', '<h4 class=\"py-3 \">Your Fully Optimized Solution For&nbsp;Advertising&nbsp;And&nbsp;Printing.</h4>\r\n<p class=\" lh-base\">Orem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Magna Aliqua. Ut Enim Ad Minim Veniam, Quis Nostrud Exercitation Ulla Orem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor.</p>', 1, '2024-05-18 16:21:21', '2024-05-18 16:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `banner_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `image`, `banner_id`, `created_at`, `updated_at`) VALUES
(4, '/uploads/banner/1716050056_8944.svg', 1, '2024-05-18 16:34:16', '2024-05-18 16:34:16'),
(5, '/uploads/banner/1716050056_4701.svg', 1, '2024-05-18 16:34:16', '2024-05-18 16:34:16'),
(6, '/uploads/banner/1716050056_3546.svg', 1, '2024-05-18 16:34:16', '2024-05-18 16:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `note`, `client_id`, `product_id`, `color_id`, `size_id`, `quantity`, `created_at`, `updated_at`) VALUES
(24, NULL, 13, 6, NULL, 1, 1, '2024-03-07 16:42:15', '2024-03-07 16:42:15'),
(25, NULL, 14, 7, NULL, 1, 1, '2024-03-07 16:53:26', '2024-03-07 16:53:26'),
(31, NULL, 12, 3, NULL, 1, 1, '2024-03-10 13:03:14', '2024-03-10 13:03:14'),
(32, NULL, 1, 6, NULL, 1, 2, '2024-03-11 12:37:09', '2024-03-12 12:00:25'),
(33, NULL, 1, 3, 1, 1, 1, '2024-03-12 11:57:24', '2024-03-12 12:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title_ar`, `title_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 'موسمي', 'SEASONAL', 1, '2024-02-25 13:55:55', '2024-02-25 13:55:55'),
(2, 'ملابس الصيف', 'SUMMER WEAR', 1, '2024-02-25 13:58:23', '2024-02-25 13:58:23'),
(3, 'ملابس الشتاء', 'WINTER WEAR', 1, '2024-02-25 13:58:33', '2024-02-25 13:58:33'),
(4, 'ملابس العمل', 'WORK ATTIRE', 1, '2024-02-25 13:58:49', '2024-02-25 13:58:49'),
(5, 'تست كاتجري', 'test category', 1, '2024-03-07 10:42:37', '2024-03-07 10:42:37'),
(6, 'تست', 'test', 1, '2024-03-10 12:29:18', '2024-03-10 12:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL DEFAULT 'logo.png',
  `phone_code` varchar(255) NOT NULL DEFAULT '+973',
  `code` varchar(255) NOT NULL DEFAULT 'BH',
  `country_code` varchar(255) NOT NULL DEFAULT 'BH',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `points`, `image`, `phone_code`, `code`, `country_code`, `status`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mostafa Mohamed', NULL, '33467117', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$nHllRfMliRe5ZLiLZbGzievD2RwLLNdm0uVr967YX.xCxefnd0ooG', NULL, NULL, '2024-02-27 16:07:23', '2024-02-28 14:02:26'),
(2, 'Mostafa Mohamed', 'mostafazarea69@gmail.com', '33467117', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$nHllRfMliRe5ZLiLZbGzievD2RwLLNdm0uVr967YX.xCxefnd0ooG', NULL, NULL, '2024-02-27 16:07:35', '2024-02-28 14:02:26'),
(3, 'test', NULL, '12345678swwwww', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$ZyIOvhF21Jc7J/cERfEy.OrC43pDRyI.xlH/dXhYgyQ6lluBiBU8q', NULL, NULL, '2024-03-07 12:09:56', '2024-03-07 12:09:56'),
(4, 'aya', NULL, '12345678', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$0NO52kS9qrF5wsZwlIW7Se5.OUkNwkD5f4WtExJaHr6xv6f/8zXvS', NULL, NULL, '2024-03-07 12:11:01', '2024-03-07 12:11:01'),
(5, 'test', '123456@gmail.com', '123456789hfhhf', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$zTOcbhDwaDq.Z8CDrQjTNunZ9Xj/27Ae9.ukMFUSEvPB81DJ4kI5.', NULL, NULL, '2024-03-07 12:13:05', '2024-03-07 12:13:05'),
(6, 'test', 'test@gmail.com', '124', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$D39SOQSho2cafPHpC5QzHe.hEHGOReZ.CXZAnPX06L0mgzEuttFpm', NULL, NULL, '2024-03-07 12:16:39', '2024-03-07 12:16:39'),
(7, 'test', 'test@gmail', '123456', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$UZV/xWNJuDlugbrfOCElTeaJy22IpBNghcL4eQhrnBFKi0FKiNAdW', NULL, '2024-03-10 15:17:08', '2024-03-07 12:20:24', '2024-03-10 15:17:08'),
(8, 'test', 'test1@gmail.com', '123456', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$knNuzNQJIT1Yr5RLGPtdzOLSHiBw.OJNXRjJw/ffxFguJpSjFWArO', NULL, '2024-03-10 15:17:07', '2024-03-07 12:21:54', '2024-03-10 15:17:07'),
(9, 'test', 'test@gmail.com', '123456', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$5YCIV9n2P/fZUOQaM7b5sOx9pGJVqGaJDUUeyA0LTvwtUJx8moNPy', NULL, '2024-03-10 15:17:02', '2024-03-07 12:22:27', '2024-03-10 15:17:02'),
(10, 'test', 'test@gmail.com', '123456', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$LBIsKowRcm1p5YZLWRsC1uDau8ZskuGazBlmy9/rz7uLHzj1KGVh2', NULL, '2024-03-10 15:16:58', '2024-03-07 12:23:20', '2024-03-10 15:16:58'),
(11, 'test', 'test@gmail.com', '123456', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$h9wlxYhN1CSbX.Rw/6Mkb.rZGf8ZVnJ0THDgoOu/cU/.NQ/vRN2lm', NULL, '2024-03-10 15:16:53', '2024-03-07 12:24:01', '2024-03-10 15:16:53'),
(12, 'test emcan', 'aya.ahmed.abdooo@gmail.com', '557223386', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$8XGldnKm3kVKFh1byq0LCOozfKOX79toyts3xHS6YjAJD2SQ7/6e2', NULL, NULL, '2024-03-07 12:48:50', '2024-03-10 15:13:24'),
(13, 'test', 'test@gmail.com', '123', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$K71J27O4IudHBOe3UrjrSe8pEwQ3q6jUqq9CD/aku9FrhdmKgQPuy', NULL, NULL, '2024-03-07 16:36:19', '2024-03-07 16:36:19'),
(14, 'test', 'test@gmail.com', '12', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$/j.9FDjjTyvZ7DkAglrBUOirrvnlrE6JHnh8OW9H7DCL89G2qQBwW', NULL, NULL, '2024-03-07 16:51:13', '2024-03-07 16:51:13'),
(15, 'test', 'test@gmail.com', '123', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$xrotMS1HuREqp/w0asETuur5Rz5ngCPykLuA9Mvyzzg8UTyQs7vy2', NULL, NULL, '2024-03-10 11:23:23', '2024-03-10 11:23:23'),
(16, 'test', 'test@gmail.com', '12345678', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$puoA92rPYz85AVf33mrOiujGu1IRN/vICpEeE6SrzTvx7u0LdwS32', NULL, NULL, '2024-03-10 11:25:18', '2024-03-10 16:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `hexa` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `title_ar`, `title_en`, `hexa`, `status`, `created_at`, `updated_at`) VALUES
(1, 'أحمر', 'Red', '#ff0000', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:33'),
(2, 'أصفر', 'Yellow', '#fbe80e', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:39'),
(3, 'أخضر', 'Green', '#40f000', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:41'),
(4, 'أزرق', 'Blue', '#2206b2', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:44'),
(5, 'نيلى', 'Indigo', '#4B0082', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:46'),
(6, 'بنفسجى', 'Violet', '#8F00FF', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:52'),
(7, 'الزيتي', 'Dark green', '#013220 ', 1, '2021-06-14 15:33:35', '2022-03-04 18:36:50'),
(8, 'أسود', 'Black', '#000', 1, '2021-06-14 15:33:57', '2022-03-04 18:36:56'),
(9, 'أبيض', 'White', '#ffffff', 1, '2021-06-14 15:34:18', '2022-03-04 18:36:54'),
(10, 'سماوي', 'Light blue', '#ADD8E6', 1, '2021-06-14 15:34:47', '2022-03-04 18:37:08'),
(11, 'وردي', 'Pink', '#FFC0CB ', 1, '2021-06-15 04:38:41', '2022-03-04 18:37:07'),
(12, 'ماروني', 'Maroon', '#800000', 1, '2021-06-15 06:20:03', '2022-03-04 18:37:04'),
(13, 'بيج', 'Node', '#215732', 1, '2021-06-15 07:27:35', '2022-03-04 18:37:02'),
(14, 'بني', 'Brown', '#964B00', 1, '2021-06-15 08:25:03', '2022-08-15 10:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Emery Clark', '+1 (452) 621-7461', 'xibibar@mailinator.com', 'Laboris voluptatem o', 'Fugiat dolor aliqua', '2024-02-28 12:37:29', '2024-02-28 12:37:29'),
(3, 'Fitzgerald Doyle', '01017944211', 'tinicenud@mailinator.com', 'Cupidatat veniam la', 'Adipisicing exercita', '2024-05-18 18:57:56', '2024-05-18 18:57:56'),
(4, 'Lysandra Herrera', '1017944211', 'xatyjitupu@mailinator.com', 'Id temporibus cumque', 'Dolorum nihil maiore', '2024-05-18 19:13:33', '2024-05-18 19:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `currancy_code_ar` varchar(255) DEFAULT NULL,
  `currancy_code_en` varchar(255) DEFAULT NULL,
  `currancy_value` decimal(5,3) NOT NULL DEFAULT 0.000,
  `phone_code` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `accept_orders` tinyint(1) NOT NULL DEFAULT 1,
  `length` int(11) NOT NULL DEFAULT 10,
  `decimals` int(11) NOT NULL DEFAULT 3,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title_ar`, `title_en`, `currancy_code_ar`, `currancy_code_en`, `currancy_value`, `phone_code`, `country_code`, `lat`, `long`, `status`, `accept_orders`, `length`, `decimals`, `image`, `created_at`, `updated_at`) VALUES
(1, 'البحرين', 'Bahrain', 'دينار بحريني', 'BHD', 0.100, '+973', 'BH', '25.93041400', '50.63777200', 1, 1, 8, 3, '/countries/Bahrain.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(2, 'المملكة العربية السعودية', 'Saudi Arabia', 'ريال سعودي', 'SAR', 1.000, '+966', 'SA', '23.88594200', '45.07916200', 1, 1, 9, 2, '/countries/SaudiArabia.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(3, 'سلطنة عمان', 'Oman', 'ريال عماني', 'OR', 0.102, '+968', 'OM', '21.51258300', '55.92325500', 1, 1, 10, 3, '/countries/Oman.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(4, 'الإمارات العربية المتحدة', 'United Arab Emirates', 'درهم إماراتي', 'AED', 1.000, '+971', 'AE', '23.42407600', '53.84781800', 1, 1, 9, 3, '/countries/UnitedArabEmirates.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(5, 'قطر', 'Qatar', 'ريال قطري', 'QR', 1.000, '+974', 'QA', '25.35482600', '51.18388400', 1, 1, 10, 3, '/countries/Qatar.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(6, 'الكويت', 'Kuwait', 'دينار كويتي', 'KWD', 0.081, '+965', 'KW', '29.31166000', '47.48176600', 1, 1, 10, 3, '/countries/Kuwait.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(7, 'مصر', 'Egypt', 'جنيه مصري', 'EGP', 6.141, '+20', 'EG', '26.82055300', '30.80249800', 0, 1, 10, 3, '/countries/Egypt.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('discount','percent_off') NOT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

CREATE TABLE `coupon_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivries`
--

CREATE TABLE `delivries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivries`
--

INSERT INTO `delivries` (`id`, `title_ar`, `title_en`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'توصيل إلى المنزل', 'Delivery', '', 1, '2022-08-23 09:36:08', '2022-08-23 09:36:08'),
(2, 'إستلام من  المحل', 'Pick Up', '', 0, '2022-08-23 09:36:28', '2022-08-23 09:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `device_tokens`
--

CREATE TABLE `device_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `device_token` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f_a_q_s`
--

CREATE TABLE `f_a_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_ar` varchar(255) DEFAULT NULL,
  `question_en` varchar(255) DEFAULT NULL,
  `answer_ar` text DEFAULT NULL,
  `answer_en` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_offers`
--

CREATE TABLE `mail_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_offers`
--

INSERT INTO `mail_offers` (`id`, `title`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 'test', '<p>test offer</p>', '/uploads/mail_offer/1710074050_1911.jpg', '2024-03-10 13:34:10', '2024-03-10 13:34:10'),
(2, 'test', '<p>test offer</p>', '/uploads/mail_offer/1710074115_3004.jpg', '2024-03-10 13:35:15', '2024-03-10 13:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_000000_create_countries_table', 1),
(2, '2014_10_11_000000_create_days_table', 1),
(3, '2014_10_12_000000_create_admins_table', 1),
(4, '2014_10_12_000000_create_clients_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_device_tokens_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2022_04_18_080645_create_settings_table', 1),
(10, '2022_04_18_084603_create_contacts_table', 1),
(11, '2022_04_18_084626_create_f_a_q_s_table', 1),
(12, '2022_04_19_100517_create_payment_methods_table', 1),
(13, '2022_04_21_113420_create_sliders_table', 1),
(14, '2022_05_10_080543_create_coupons_table', 1),
(15, '2022_05_11_072964_create_colors_table', 1),
(16, '2022_06_12_113616_create_sizes_table', 1),
(17, '2022_06_12_120004_create_products_table', 1),
(18, '2022_07_31_120624_create_delivries_table', 1),
(19, '2022_07_31_120839_create_orders_table', 1),
(20, '2022_07_31_120840_create_transactions_table', 1),
(21, '2022_09_19_140023_create_visits_table', 1),
(22, '2022_12_04_145833_create_mail_offers_table', 1),
(23, '2022_12_20_145248_create_social_media_icons_table', 1),
(24, '2024_05_15_141605_create_advertisings_table', 2),
(26, '2024_05_15_142345_create_advertising_images_table', 3),
(27, '2024_05_16_155101_create_statistics_table', 4),
(28, '2024_05_17_131042_create_services_table', 5),
(29, '2024_05_17_134053_add_home_image_to_services_table', 6),
(30, '2024_05_17_134822_add_descreption_home_to_services_table', 7),
(31, '2024_05_18_001458_create_partners_table', 8),
(32, '2024_05_18_184440_create_banners_table', 9),
(33, '2024_05_18_184637_create_banner_images_table', 10),
(34, '2024_05_18_193708_create_step_successes_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` decimal(9,3) DEFAULT 0.000,
  `discount` decimal(9,3) DEFAULT 0.000,
  `discount_percentage` int(11) DEFAULT 0,
  `vat` decimal(9,3) DEFAULT 0.000,
  `vat_percentage` int(11) DEFAULT 0,
  `coupon` decimal(9,3) DEFAULT 0.000,
  `coupon_text` varchar(255) DEFAULT NULL,
  `coupon_percentage` int(11) DEFAULT 0,
  `charge_cost` decimal(9,3) DEFAULT 0.000,
  `net_total` decimal(9,3) DEFAULT 0.000,
  `status` int(11) DEFAULT 0,
  `follow` int(11) DEFAULT 0,
  `use_points` tinyint(1) DEFAULT 0,
  `points_number` int(11) DEFAULT 0,
  `gained_points` int(11) DEFAULT 0,
  `client_points` int(11) DEFAULT 0,
  `mobile_type` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `delivery_id`, `client_id`, `address_id`, `payment_id`, `sub_total`, `discount`, `discount_percentage`, `vat`, `vat_percentage`, `coupon`, `coupon_text`, `coupon_percentage`, `charge_cost`, `net_total`, `status`, `follow`, `use_points`, `points_number`, `gained_points`, `client_points`, `mobile_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 3, 1, 4.000, 4.000, 0, 0.400, 10, 0.000, NULL, 0, NULL, 4.400, 2, 0, 0, 0, 0, 0, NULL, NULL, '2024-02-28 10:19:12', '2024-02-28 12:53:57'),
(3, 1, 1, 6, 1, 2.000, 2.000, 0, 0.200, 10, 0.000, NULL, 0, NULL, 2.200, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-02-28 10:23:16', '2024-02-28 12:54:06'),
(4, 1, 1, 7, 1, 2.000, 2.000, 0, 0.200, 10, 0.000, NULL, 0, NULL, 2.200, 0, 0, 0, 0, 0, 0, NULL, NULL, '2024-02-28 14:07:15', '2024-02-28 14:07:15'),
(6, 1, 1, 3, 1, 1.000, 1.000, 0, 0.100, 10, 0.000, NULL, 0, NULL, 1.100, 0, 0, 0, 0, 0, 0, NULL, NULL, '2024-03-02 17:19:34', '2024-03-02 17:19:34'),
(7, 1, 12, 10, 1, 3.000, 3.000, 0, 0.300, 10, 0.000, NULL, 0, NULL, 3.300, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-03-07 13:45:03', '2024-03-07 16:11:42'),
(8, 2, 12, NULL, 1, 3.000, 3.000, 0, 0.300, 10, 0.000, NULL, 0, 0.000, 3.300, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-03-07 13:54:44', '2024-03-07 16:09:06'),
(9, 2, 12, NULL, 1, 2.000, 2.000, 0, 0.200, 10, 0.000, NULL, 0, 0.000, 2.200, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-03-07 16:13:49', '2024-03-07 16:14:54'),
(10, 1, 12, 14, 1, 2.000, 2.000, 0, 0.200, 10, 0.000, NULL, 0, NULL, 2.200, 2, 0, 0, 0, 0, 0, NULL, NULL, '2024-03-07 16:26:31', '2024-03-07 16:31:55'),
(11, 1, 12, 15, 1, 1.000, 1.000, 0, 0.100, 10, 0.000, NULL, 0, NULL, 1.100, 0, 0, 0, 0, 0, 0, NULL, NULL, '2024-03-07 16:33:32', '2024-03-07 16:33:32'),
(13, 1, 12, 18, 1, 1.000, 1.000, 0, 0.100, 10, 0.000, NULL, 0, NULL, 1.100, 0, 0, 0, 0, 0, 0, NULL, NULL, '2024-03-10 11:34:56', '2024-03-10 11:34:56'),
(14, 1, 12, 19, 1, 1.000, 1.000, 0, 0.100, 10, 0.000, NULL, 0, NULL, 1.100, 0, 0, 0, 0, 0, 0, NULL, NULL, '2024-03-10 11:57:31', '2024-03-10 11:57:31'),
(15, 1, 12, 20, 1, 1.000, 1.000, 0, 0.100, 10, 0.000, NULL, 0, NULL, 1.100, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-03-10 12:12:59', '2024-03-10 15:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(11, '/uploads/Partners/1715984203_7019.svg', 1, '2024-05-17 22:16:43', '2024-05-17 22:16:43'),
(12, '/uploads/Partners/1715984999_8694.svg', 1, '2024-05-17 22:17:10', '2024-05-17 22:29:59'),
(13, '/uploads/Partners/1715984237_4276.svg', 1, '2024-05-17 22:17:17', '2024-05-17 22:17:17'),
(14, '/uploads/Partners/1715984244_1062.svg', 1, '2024-05-17 22:17:24', '2024-05-17 22:17:24'),
(15, '/uploads/Partners/1715984250_5802.svg', 1, '2024-05-17 22:17:30', '2024-05-17 22:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `title_ar`, `title_en`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'كاش', 'cash', 1, '/uploads/PaymentMethods/1697900757_2398.webp', '2022-10-06 06:56:58', '2024-03-10 13:20:18'),
(2, 'ديبت كارد', 'Detbit Card', 0, '/uploads/PaymentMethods/1697900766_7660.webp', '2022-10-06 06:57:16', '2023-10-21 12:06:06'),
(3, 'بطاقة الإئتمان', 'Credit Card', 0, '/uploads/PaymentMethods/1697900773_7679.webp', '2022-10-06 06:57:31', '2023-10-21 12:06:13'),
(4, 'بنفت باي', 'Benefit Pay', 0, '/uploads/PaymentMethods/1697900780_3097.webp', '2022-10-06 06:57:46', '2023-10-21 12:06:20'),
(5, 'ابل باي', 'Apple Pay', 0, '/uploads/PaymentMethods/1697900788_3799.webp', '2022-12-20 13:55:39', '2023-10-21 12:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `desc_ar` text DEFAULT NULL,
  `desc_en` text DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `arrangement` int(11) NOT NULL DEFAULT 0,
  `VAT` enum('inclusive','exclusive') NOT NULL,
  `most_selling` tinyint(1) NOT NULL DEFAULT 0,
  `popular` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(8,3) NOT NULL DEFAULT 0.000,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `discount` decimal(8,3) DEFAULT 0.000,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `code`, `arrangement`, `VAT`, `most_selling`, `popular`, `status`, `price`, `quantity`, `discount`, `from`, `to`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, '‎رمضــان ٢٠٢٤ ✨', '✨ ramadhan bisht', '<p style=\"text-align: right;\">قماش السلعة: 100% كتان<br>الحزام متضمن: لا<br>العناية بالملابس: تنظيف جاف<br>ملاحظة المصمم: يرجى ذكر طول عبايتك المعتادة</p>', '<p style=\"text-align: left;\">Item fabric : 100% Linen<br>Belt Included : No<br>Garment Care : Dry Clean<br>Designer note : Please mention your usual abaya lenth</p>', '26317', 3, 'exclusive', 0, 0, 1, 20.000, 0, 50.000, '2024-02-01', '2024-03-27', NULL, '2024-02-25 10:04:54', '2024-03-10 12:41:15'),
(4, 'عباية أنيقة', 'Elegant Abaya', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">عباية سوداء فاخرة مزينة بتفاصيل مزخرفة. يأتي مع فستان مطابق</p>\r\n</div>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Luxurious black abaya adorned with embellished detailing. Comes with a matching dress</p>\r\n</div>', '651152', 4, 'exclusive', 1, 1, 1, 30.000, 0, 0.000, NULL, NULL, NULL, '2024-02-27 07:54:51', '2024-03-07 10:50:30'),
(5, 'عباية RM23', 'RM’23 Abaya', '<p>عباية سوداء بتطريز ذهبي. يأتي مع وشاح للرأس.</p>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Black abaya with golden embroidery. Comes with a headscarf.</p>\r\n</div>', '263174', 5, 'exclusive', 1, 1, 1, 80.000, 0, 0.000, NULL, NULL, NULL, '2024-02-27 07:55:39', '2024-02-28 07:36:44'),
(6, 'M147 بشت', 'M147 Bisht', '<p>عباية بشت باللون الكحلي مع تفاصيل مزخرفة. يأتي مع غطاء رأس مطابق.</p>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Navy bisht abaya with embellished details. Comes with a matching headscarf.</p>\r\n</div>', NULL, 6, 'exclusive', 1, 1, 1, 90.000, 0, 0.000, NULL, NULL, NULL, '2024-02-27 07:56:19', '2024-02-28 07:36:56'),
(7, 'فلورا', 'Flora', '<p>جلابية مصنوعة يدوياً مع زخرفة من قماش الأربادا</p>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Handmade Jalabiya with Embellishment in arbada fabric</p>\r\n</div>', '3344553', 7, 'exclusive', 1, 1, 1, 45.000, 0, 0.000, NULL, NULL, NULL, '2024-02-27 07:57:17', '2024-02-28 07:37:08'),
(8, 'E27 الأزرق', 'E27 Blue', '<p>تشكيلة عبايات كاجوال. عباية بياقة وجيوب أمامية وزخارف مطرزة.</p>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Casual Abaya collection. Collared abaya with front pockets and stitched trimmings.</p>\r\n</div>', '258963', 8, 'exclusive', 0, 0, 1, 65.000, 0, 50.000, '2024-03-09', '2024-03-12', NULL, '2024-02-27 07:58:07', '2024-03-10 09:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(9, 1, 5, NULL, NULL),
(10, 2, 5, NULL, NULL),
(11, 3, 5, NULL, NULL),
(13, 1, 6, NULL, NULL),
(14, 2, 6, NULL, NULL),
(15, 3, 6, NULL, NULL),
(16, 2, 7, NULL, NULL),
(17, 4, 7, NULL, NULL),
(18, 2, 8, NULL, NULL),
(19, 3, 8, NULL, NULL),
(20, 4, 8, NULL, NULL),
(31, 1, 5, NULL, NULL),
(32, 2, 5, NULL, NULL),
(33, 3, 5, NULL, NULL),
(37, 5, 3, NULL, NULL),
(39, 5, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(11, 4, 1, NULL, NULL),
(12, 4, 2, NULL, NULL),
(13, 4, 3, NULL, NULL),
(14, 4, 4, NULL, NULL),
(15, 4, 5, NULL, NULL),
(16, 4, 6, NULL, NULL),
(17, 4, 7, NULL, NULL),
(18, 4, 8, NULL, NULL),
(19, 4, 9, NULL, NULL),
(20, 4, 10, NULL, NULL),
(21, 4, 11, NULL, NULL),
(22, 4, 12, NULL, NULL),
(23, 4, 13, NULL, NULL),
(24, 4, 14, NULL, NULL),
(25, 5, 1, NULL, NULL),
(26, 5, 2, NULL, NULL),
(27, 5, 3, NULL, NULL),
(28, 5, 4, NULL, NULL),
(29, 5, 5, NULL, NULL),
(30, 5, 7, NULL, NULL),
(31, 5, 8, NULL, NULL),
(32, 5, 9, NULL, NULL),
(33, 6, 1, NULL, NULL),
(34, 6, 2, NULL, NULL),
(35, 6, 3, NULL, NULL),
(36, 6, 4, NULL, NULL),
(37, 6, 5, NULL, NULL),
(38, 6, 10, NULL, NULL),
(39, 6, 11, NULL, NULL),
(40, 6, 12, NULL, NULL),
(41, 6, 13, NULL, NULL),
(42, 6, 14, NULL, NULL),
(43, 7, 1, NULL, NULL),
(44, 7, 2, NULL, NULL),
(45, 7, 3, NULL, NULL),
(46, 7, 4, NULL, NULL),
(47, 7, 5, NULL, NULL),
(48, 7, 7, NULL, NULL),
(49, 7, 8, NULL, NULL),
(50, 7, 9, NULL, NULL),
(51, 7, 10, NULL, NULL),
(52, 8, 1, NULL, NULL),
(53, 8, 2, NULL, NULL),
(54, 8, 3, NULL, NULL),
(55, 8, 4, NULL, NULL),
(56, 8, 5, NULL, NULL),
(57, 8, 8, NULL, NULL),
(58, 8, 9, NULL, NULL),
(59, 8, 10, NULL, NULL),
(62, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_favourites`
--

CREATE TABLE `product_favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_favourites`
--

INSERT INTO `product_favourites` (`id`, `client_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, NULL, NULL),
(2, 12, 3, NULL, NULL),
(3, 12, 8, NULL, NULL),
(4, 12, 8, NULL, NULL),
(5, 12, 3, NULL, NULL),
(6, 12, 3, NULL, NULL),
(7, 1, 4, NULL, NULL),
(8, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `main` int(11) NOT NULL DEFAULT 1,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `status`, `main`, `color_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3, '/uploads/products/1708855494_3939.jpg', 1, 1, NULL, 3, '2024-02-25 10:04:54', '2024-02-27 10:13:35'),
(4, '/uploads/products/1709020491_7934.jpg', 1, 1, NULL, 4, '2024-02-27 07:54:52', '2024-02-27 10:13:47'),
(5, '/uploads/products/1709020539_1006.jpg', 1, 1, NULL, 5, '2024-02-27 07:55:39', '2024-02-27 10:13:57'),
(6, '/uploads/products/1709020579_5569.jpg', 1, 1, NULL, 6, '2024-02-27 07:56:19', '2024-02-27 07:56:19'),
(7, '/uploads/products/1709020637_9679.jpg', 1, 1, NULL, 7, '2024-02-27 07:57:17', '2024-02-27 07:57:17'),
(8, '/uploads/products/1709020687_8412.jpg', 1, 1, NULL, 8, '2024-02-27 07:58:07', '2024-02-27 07:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rate` enum('1','2','3','4','5') NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 4, 2, NULL, NULL),
(6, 4, 3, NULL, NULL),
(7, 5, 1, NULL, NULL),
(8, 5, 2, NULL, NULL),
(9, 5, 3, NULL, NULL),
(10, 6, 1, NULL, NULL),
(11, 6, 2, NULL, NULL),
(12, 6, 3, NULL, NULL),
(13, 7, 1, NULL, NULL),
(14, 7, 2, NULL, NULL),
(15, 7, 3, NULL, NULL),
(16, 8, 1, NULL, NULL),
(17, 8, 2, NULL, NULL),
(18, 8, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `delivery_cost` decimal(9,3) NOT NULL DEFAULT 0.000,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `country_id`, `title_ar`, `title_en`, `lat`, `long`, `delivery_cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'العكر', ' Al Eker', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(3, 1, 'القدم', 'Al Qadam', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(4, 1, 'القرية', 'Quraiyah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(5, 1, 'القضيبية', 'Qudaibiya', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(6, 1, 'قلالي', 'Qalali', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(7, 1, 'القلعة', 'Al Qalah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(8, 1, 'كرانة', 'Karranah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(9, 1, 'الحجر', 'Al Hajar', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(10, 1, 'كرباباد', 'Karbabad', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(11, 1, 'كرزكان', 'Karzakan', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(12, 1, 'الماحوز', 'Mahooz', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(13, 1, 'المالكية', 'Malkiah', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(14, 1, 'مدينة حمد من دوار 1 إلى دوار 10', 'Madinat Hamad From R 1 to R 10', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(15, 1, 'مدينة زايد', 'Zayed Town', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(16, 1, 'مدينة عيسي', 'Isa Town', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(17, 1, 'المحرق', 'Al Muharraq', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(18, 1, 'مقابة', 'Maqabah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(19, 1, 'المقشع', 'Al Maqsha', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(20, 1, 'المنامة', 'Manama', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(21, 1, 'النبيه صالح', 'Nabih Saleh', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(22, 1, 'النعيم', 'Alnaim', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(23, 1, 'النويدرات', 'Nuwaidrat', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(24, 1, 'الهملة', 'Al Hamala', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(25, 1, 'البلاد القديم', 'Bilad Al Qadeem', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(26, 1, 'الكورة', 'Kawarah', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(27, 1, 'سلماباد', 'Salmabad', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(28, 1, 'أبو صيبع', 'Abu Saiba', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(29, 1, 'أبوقوة', 'Bu Quwah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(30, 1, 'أم الحصم', 'Umm Al Hassam', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(31, 1, 'المصلي', 'Al Musalla', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(32, 1, 'توبلي', 'Tubli', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(33, 1, 'باربار', 'Barbar', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(34, 1, 'البديع', 'Budaiya', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(35, 1, 'البسيتين', 'Busaiten', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(36, 1, 'بوكوارة', 'Bu Kowarah', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(37, 1, 'البحير', 'Al Bahair', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(38, 1, 'بني جمرة', 'Bani Jamra', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(39, 1, 'بوري', 'Buri', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(40, 1, 'جبلة حبشي', 'Jeblat Hebshi', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(41, 1, 'جد الحاج', 'Jid Al Haj', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(42, 1, 'جد حفص', 'Jidhafs', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(43, 1, 'جد علي', 'Jid Ali', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(44, 1, 'جرداب', 'Jurdab', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(46, 1, 'الجسرة', 'Aljasrah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(47, 1, 'الجفير', 'AlJuffair', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(48, 1, 'الجنبية', 'ُEljanabiya', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(49, 1, 'جنوسان', 'Jannusan', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(50, 1, 'جو', 'Jaw', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(51, 1, 'الحد', 'AL Hidd', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(52, 1, 'الحجيات', 'Alhajiyat', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(53, 1, 'حلة العبد الصالح', 'Hillat Abdul Saleh', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(54, 1, 'الحورة', 'Al Hoora', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(55, 1, 'الخميس', 'Khamis', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(56, 1, 'دار كليب', 'Dar Kulaib', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(57, 1, 'المنطقة الدبلوماسية', 'Diplomatic Area', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(58, 1, 'الدراز', 'Diraz', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(59, 1, 'دمستان', 'Dimstan', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(60, 1, 'الدير', 'Aldair', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(61, 1, 'الديه', 'Daih', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(62, 1, 'رأس رمان', 'Ras Rumman', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(63, 1, 'الرفاع(الشرقي)', 'East Riffa', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(64, 1, 'الرفاع(الغربي)', 'West Riffa', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(65, 1, 'الزلاق', 'Al zallaq', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(66, 1, 'الزنج', 'Zinj', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(67, 1, 'السقيه', 'AL SAGYAH', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(68, 1, 'سار', 'Saar', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(69, 1, 'سترة', 'sitra', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(70, 1, 'سماهيج', 'Samahej', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(71, 1, 'السنابس', 'Sanabis', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(72, 1, 'سند', 'Sanad', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(73, 1, 'السهلة(الشمالية والجنوبية)', 'Sehla', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(74, 1, 'ضاحية السيف', 'seef', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(75, 1, 'الشاخورة', 'Shakhurah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(76, 1, 'شهركان', 'Sharakan', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(77, 1, 'جامعة البحرين ', 'university of bahrain', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(78, 1, 'الصالحيه', 'Salihiya', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(79, 1, 'صدد', 'Sadad', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(80, 1, 'عالي', 'Aali', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(81, 1, 'العدلية', 'Adliya', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(82, 1, 'عذاري', 'AZARY', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(83, 1, 'عراد', 'Arad', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(84, 1, 'عسكر', 'askr', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(85, 1, 'مدينة حمد من دوار 11 إلى دوار 22', 'Madinat Hamad From R 11 to R 22', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(86, 1, 'اللوزي', 'Al lozy', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(87, 1, 'المرخ', 'Al Markh', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(88, 1, 'مدينة سلمان', 'Salman City', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(91, 1, 'القفول', 'Algufool', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(92, 1, 'المعامير', 'Maameer', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(93, 1, 'عوالي', 'Awali', '26.227934462972144', '50.58910840410498', 2.000, 0, '2023-04-01 19:16:46', '2024-01-24 16:44:24'),
(94, 2, 'تبوك', 'Tabuk', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(95, 2, 'الرياض', 'Riyadh', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(96, 2, 'الطائف', 'At Taif', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(97, 2, 'مكة المكرمة', 'Makkah Al Mukarramah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(98, 2, 'حائل', 'Hail', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(99, 2, 'بريدة', 'Buraydah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(100, 2, 'الهفوف', 'Al Hufuf', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(101, 2, 'الدمام', 'Ad Dammam', '26.227934462972', '50.589108404105', 15.000, 1, NULL, '2023-05-09 08:52:37'),
(102, 2, 'المدينة المنورة', 'Al Madinah Al Munawwarah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(103, 2, 'ابها', 'Abha', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(104, 2, 'جازان', 'Jazan', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(105, 2, 'جدة', 'Jeddah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(106, 2, 'المجمعة', 'Al Majmaah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(107, 2, 'الخبر', 'Al Khubar', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(108, 2, 'حفر الباطن', 'Hafar Al Batin', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(109, 2, 'خميس مشيط', 'Khamis Mushayt', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(110, 2, 'احد رفيده', 'Ahad Rifaydah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(111, 2, 'القطيف', 'Al Qatif', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(112, 2, 'عنيزة', 'Unayzah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(113, 2, 'قرية العليا', 'Qaryat Al Ulya', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(114, 2, 'الجبيل', 'Al Jubail', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(115, 2, 'النعيرية', 'An Nuayriyah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(116, 2, 'الظهران', 'Dhahran', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(117, 2, 'الوجه', 'Al Wajh', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(118, 2, 'بقيق', 'Buqayq', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(119, 2, 'الزلفي', 'Az Zulfi', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(120, 2, 'خيبر', 'Khaybar', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(121, 2, 'الغاط', 'Al Ghat', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(122, 2, 'املج', 'Umluj', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(123, 2, 'رابغ', 'Rabigh', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(124, 2, 'عفيف', 'Afif', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(125, 2, 'ثادق', 'Thadiq', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(126, 2, 'سيهات', 'Sayhat', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(127, 2, 'تاروت', 'Tarut', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(128, 2, 'ينبع', 'Yanbu', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(129, 2, 'شقراء', 'Shaqra', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(130, 2, 'الدوادمي', 'Ad Duwadimi', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(131, 2, 'الدرعية', 'Ad Diriyah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(132, 2, 'القويعية', 'Quwayiyah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(133, 2, 'المزاحمية', 'Al Muzahimiyah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(134, 2, 'بدر', 'Badr', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(135, 2, 'الخرج', 'Al Kharj', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(136, 2, 'الدلم', 'Ad Dilam', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(137, 2, 'الشنان', 'Ash Shinan', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(138, 2, 'الخرمة', 'Al Khurmah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(139, 2, 'الجموم', 'Al Jumum', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(140, 2, 'المجاردة', 'Al Majardah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(141, 2, 'السليل', 'As Sulayyil', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(142, 2, 'تثليث', 'Tathilith', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(143, 2, 'بيشة', 'Bishah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(144, 2, 'الباحة', 'Al Baha', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(145, 2, 'القنفذة', 'Al Qunfidhah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(146, 2, 'محايل', 'Muhayil', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(147, 2, 'ثول', 'Thuwal', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(148, 2, 'ضبا', 'Duba', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(149, 2, 'تربه', 'Turbah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(150, 2, 'صفوى', 'Safwa', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(151, 2, 'عنك', 'Inak', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(152, 2, 'طريف', 'Turaif', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(153, 2, 'عرعر', 'Arar', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(154, 2, 'القريات', 'Al Qurayyat', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(155, 2, 'سكاكا', 'Sakaka', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(156, 2, 'رفحاء', 'Rafha', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(157, 2, 'دومة الجندل', 'Dawmat Al Jandal', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(158, 2, 'الرس', 'Ar Rass', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(159, 2, 'المذنب', 'Al Midhnab', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(160, 2, 'الخفجي', 'Al Khafji', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(161, 2, 'رياض الخبراء', 'Riyad Al Khabra', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(162, 2, 'البدائع', 'Al Badai', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(163, 2, 'رأس تنورة', 'Ras Tannurah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(164, 2, 'البكيرية', 'Al Bukayriyah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(165, 2, 'الشماسية', 'Ash Shimasiyah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(166, 2, 'الحريق', 'Al Hariq', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(167, 2, 'حوطة بني تميم', 'Hawtat Bani Tamim', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(168, 2, 'ليلى', 'Layla', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(169, 2, 'بللسمر', 'Billasmar', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(170, 2, 'شرورة', 'Sharurah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(171, 2, 'نجران', 'Najran', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(172, 2, 'صبيا', 'Sabya', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(173, 2, 'ابو عريش', 'Abu Arish', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(174, 2, 'صامطة', 'Samtah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(175, 2, 'احد المسارحة', 'Ahad Al Musarihah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(176, 2, 'مدينة الملك عبدالله الاقتصادية', 'King Abdullah Economic City', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(177, 2, 'Riyadh Province', 'Riyadh Province', NULL, NULL, 25.000, 1, '2023-01-03 13:35:51', '2023-05-09 08:52:25'),
(178, 2, 'Al Madinah Province', 'Al Madinah Province', NULL, NULL, 25.000, 1, '2023-01-03 13:37:10', '2023-05-09 08:52:25'),
(179, 2, 'Medina', 'Medina', NULL, NULL, 25.000, 1, '2023-01-03 13:37:10', '2023-05-09 08:52:25'),
(180, 2, 'Makkah Province', 'Makkah Province', NULL, NULL, 25.000, 1, '2023-01-03 13:37:13', '2023-05-09 08:52:25'),
(181, 2, 'Asfan', 'Asfan', NULL, NULL, 25.000, 1, '2023-01-03 13:37:13', '2023-05-09 08:52:25'),
(182, 2, 'Maysaan', 'Maysaan', NULL, NULL, 25.000, 1, '2023-01-03 13:37:48', '2023-05-09 08:52:25'),
(183, 2, 'Quday\'an', 'Quday\'an', NULL, NULL, 25.000, 1, '2023-01-03 13:41:28', '2023-05-09 08:52:25'),
(184, 2, 'Halban', 'Halban', NULL, NULL, 25.000, 1, '2023-01-03 13:41:37', '2023-05-09 08:52:25'),
(185, 2, 'Al Wahwahi', 'Al Wahwahi', NULL, NULL, 25.000, 1, '2023-01-03 13:41:40', '2023-05-09 08:52:25'),
(186, 2, 'Al Khasrah', 'Al Khasrah', NULL, NULL, 25.000, 1, '2023-01-03 13:41:49', '2023-05-09 08:52:25'),
(187, 2, 'منطقة الرياض', 'منطقة الرياض', NULL, NULL, 25.000, 1, '2023-01-03 13:45:50', '2023-05-09 08:52:25'),
(188, 2, 'الحصاة', 'الحصاة', NULL, NULL, 25.000, 1, '2023-01-03 13:45:50', '2023-05-09 08:52:25'),
(189, 2, 'Alquwayiyah', 'Alquwayiyah', NULL, NULL, 25.000, 1, '2023-01-03 13:46:23', '2023-05-09 08:52:25'),
(190, 2, 'Miz\'il', 'Miz\'il', NULL, NULL, 25.000, 1, '2023-01-03 13:49:20', '2023-05-09 08:52:25'),
(191, 2, 'Al Duwadimi', 'Al Duwadimi', NULL, NULL, 25.000, 1, '2023-01-03 13:49:26', '2023-05-09 08:52:25'),
(192, 2, 'Jilah', 'Jilah', NULL, NULL, 25.000, 1, '2023-01-03 13:49:32', '2023-05-09 08:52:25'),
(193, 2, 'Al Quwaiiyah', 'Al Quwaiiyah', NULL, NULL, 25.000, 1, '2023-01-03 13:49:38', '2023-05-09 08:52:25'),
(194, 2, 'Al Qassim Province', 'Al Qassim Province', NULL, NULL, 25.000, 1, '2023-01-03 13:50:34', '2023-05-09 08:52:25'),
(195, 2, 'Dariyah', 'Dariyah', NULL, NULL, 25.000, 1, '2023-01-03 13:50:34', '2023-05-09 08:52:25'),
(196, 2, 'Al Humaij', 'Al Humaij', NULL, NULL, 25.000, 1, '2023-01-03 13:50:36', '2023-05-09 08:52:25'),
(197, 2, 'Yanbu Al Nakhal', 'Yanbu Al Nakhal', NULL, NULL, 25.000, 1, '2023-01-03 13:50:43', '2023-05-09 08:52:25'),
(198, 2, 'Al Figrah', 'Al Figrah', NULL, NULL, 25.000, 1, '2023-01-03 13:50:52', '2023-05-09 08:52:25'),
(199, 2, 'Alyutamah', 'Alyutamah', NULL, NULL, 25.000, 1, '2023-01-03 13:50:54', '2023-05-09 08:52:25'),
(200, 2, 'Mahd Al Thahab', 'Mahd Al Thahab', NULL, NULL, 25.000, 1, '2023-01-03 13:50:56', '2023-05-09 08:52:25'),
(201, 2, 'Ad Dumayriyah', 'Ad Dumayriyah', NULL, NULL, 25.000, 1, '2023-01-03 13:50:58', '2023-05-09 08:52:25'),
(202, 2, 'Al Uyaynah', 'Al Uyaynah', NULL, NULL, 25.000, 1, '2023-01-03 13:51:47', '2023-05-09 08:52:25'),
(203, 2, 'Rughabah', 'Rughabah', NULL, NULL, 25.000, 1, '2023-01-03 13:51:52', '2023-05-09 08:52:25'),
(204, 2, 'Shaqra', 'Shaqra', NULL, NULL, 25.000, 1, '2023-01-03 13:51:54', '2023-05-09 08:52:25'),
(205, 2, 'الفيضة بالسر', 'الفيضة بالسر', NULL, NULL, 25.000, 1, '2023-01-03 13:51:56', '2023-05-09 08:52:25'),
(206, 2, 'Muhayriqah', 'Muhayriqah', NULL, NULL, 25.000, 1, '2023-01-03 13:54:27', '2023-05-09 08:52:25'),
(207, 2, 'الجله الأعلى', 'الجله الأعلى', NULL, NULL, 25.000, 1, '2023-01-03 13:55:03', '2023-05-09 08:52:25'),
(208, 2, 'الثقبة', 'Al-Thuqbah', '26.30587656348251', '50.189212716533525', 1.000, 1, '2023-09-05 11:04:57', '2023-09-05 11:04:57'),
(209, 2, 'الجسر', 'Bridge', '26.185203022364654', '50.318986449166935', 1.000, 1, '2023-09-05 11:06:05', '2023-09-05 11:06:05'),
(210, 2, 'العزيزية', 'Aziziyah', '26.18835199672054', '50.213627919987026', 1.000, 1, '2023-09-05 11:07:08', '2023-09-05 11:07:08'),
(211, 2, 'الاسكان', 'Aliskan', '26.38785247402411', '50.112405096216605', 1.000, 1, '2023-09-05 11:07:55', '2023-09-05 11:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `desc_ar` text NOT NULL,
  `desc_en` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_image` varchar(255) DEFAULT NULL,
  `arrangment` varchar(255) DEFAULT NULL,
  `desc_home_ar` varchar(255) DEFAULT NULL,
  `desc_home_en` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `image`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `status`, `created_at`, `updated_at`, `home_image`, `arrangment`, `desc_home_ar`, `desc_home_en`) VALUES
(1, '/uploads/services/1715943626_9437.jpg', 'الطباعه', 'Printing', 'لوريم إيبسوم دولور سيت أميت، كونسيكتور أديبيسينج إيليت، سيد دو إيوسمود تيمبور إنسيدونت أوت لابور إي دولور ماجنا أليق لوريم إيبسوم دولور سيت أميت، كونسيكتور أديبيسينج إيليت، سيد دو إيوسمود تيمبور إنسيدونت أوت لابور إي دولور ماجنا أليق لوريم إيبسوم دولور سيت أميت، لوريم إيبسوم', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Magna Aliq Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Magna Aliq Lorem Ipsum Dolor Sit Amet,Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Magna Aliq Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Magna Aliq Lorem Ipsum Dolor Sit Amet,', 1, '2024-05-17 11:00:26', '2024-05-17 11:52:25', '/uploads/services/1715943626_1236.png', '01', 'نحن نبني منتج طباعة يزيد من مكانتك في السوق.', 'We build a printing product that increase your position in market.');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'about_ar', '<h2 class=\"fw-semibold h3-absloute py-md-0 py-3\">ab<span class=\"Secondary-color\">out us</span></h2>\r\n<p class=\" pt-md-5 pt-0  mt-md-5 mt-0\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing</p>', 'about', 1, '2022-10-09 11:52:15', '2024-05-18 18:14:50'),
(2, 'about_en', '<h2 class=\"fw-semibold h3-absloute py-md-0 py-3\">ab<span class=\"Secondary-color\">out us</span></h2>\r\n<p class=\" pt-md-5 pt-0  mt-md-5 mt-0\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing</p>', 'about', 1, '2022-10-09 11:52:15', '2024-05-18 18:14:50'),
(3, 'about_image', '/uploads/settings/1716056090_8077.jpg', 'about', 1, '2022-10-09 11:52:15', '2024-05-18 18:14:50'),
(4, 'privacy_ar', '<div class=\"row my-lg-4 my-3\">\r\n\r\n            <p class=\" \">\r\n                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et\r\n                dolore\r\n                magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut\r\n                labore\r\n                et dolore magna aliq Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed\r\n                do\r\n                eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing\r\n                elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet,\r\n            </p>\r\n            <p class=\" \">\r\n                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et\r\n                dolore\r\n                magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut\r\n                labore\r\n                et dolore magna aliq Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed\r\n                do\r\n                eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing\r\n                elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet,\r\n            </p>\r\n            <ul class=\" \" style=\"list-style: disc; list-style-position: inside;\">\r\n                <li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum\r\n                    dolore eu\r\n                    feugiat nulla facilisis at vero eros et accumsan et. </li>\r\n                <li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum\r\n                    dolore eu\r\n                    feugiat nulla facilisis at vero eros et accumsan et. </li>\r\n                <li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum\r\n                    dolore eu\r\n                    feugiat nulla facilisis at vero eros et accumsan et. </li>\r\n                <li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum\r\n                    dolore eu\r\n                    feugiat nulla facilisis at vero eros et accumsan et. </li>\r\n            </ul>\r\n        </div>\r\n        <div class=\"row my-lg-4 my-3\">\r\n\r\n\r\n            <h3 class=\"py-2 fw-semibold text-start\">Lorem ipsum dolor sit amet</h3>\r\n            <p class=\" \">\r\n                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et\r\n                dolore\r\n                magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut\r\n                labore\r\n                et dolore magna aliq Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed\r\n                do\r\n                eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing\r\n                elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet,\r\n            </p>\r\n        </div>', 'privacy', 1, '2022-10-09 11:52:15', '2024-05-18 14:50:50'),
(5, 'privacy_en', '<div class=\"row my-lg-4 my-3\">\r\n\r\n            <p class=\" \">\r\n                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et\r\n                dolore\r\n                magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut\r\n                labore\r\n                et dolore magna aliq Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed\r\n                do\r\n                eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing\r\n                elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet,\r\n            </p>\r\n            <p class=\" \">\r\n                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et\r\n                dolore\r\n                magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut\r\n                labore\r\n                et dolore magna aliq Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed\r\n                do\r\n                eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing\r\n                elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet,\r\n            </p>\r\n            <ul class=\" \" style=\"list-style: disc; list-style-position: inside;\">\r\n                <li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum\r\n                    dolore eu\r\n                    feugiat nulla facilisis at vero eros et accumsan et. </li>\r\n                <li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum\r\n                    dolore eu\r\n                    feugiat nulla facilisis at vero eros et accumsan et. </li>\r\n                <li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum\r\n                    dolore eu\r\n                    feugiat nulla facilisis at vero eros et accumsan et. </li>\r\n                <li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum\r\n                    dolore eu\r\n                    feugiat nulla facilisis at vero eros et accumsan et. </li>\r\n            </ul>\r\n        </div>\r\n        <div class=\"row my-lg-4 my-3\">\r\n\r\n\r\n            <h3 class=\"py-2 fw-semibold text-start\">Lorem ipsum dolor sit amet</h3>\r\n            <p class=\" \">\r\n                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et\r\n                dolore\r\n                magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut\r\n                labore\r\n                et dolore magna aliq Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed\r\n                do\r\n                eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing\r\n                elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet,\r\n            </p>\r\n        </div>', 'privacy', 1, '2022-10-09 11:52:15', '2024-05-18 14:50:50'),
(6, 'privacy_image', '/uploads/settings/1716043850_1835.jpg', 'privacy', 1, '2022-10-09 11:52:15', '2024-05-18 14:50:50'),
(7, 'title_ar', 'Mostafa Press', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-18 14:29:22'),
(8, 'title_en', 'Mostafa Press', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-18 14:29:22'),
(9, 'terms_ar', '<h3 class=\"py-2 fw-semibold text-start\">Lorem ipsum dolor sit amet</h3>\n            <p class=\" \">\n                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et\n                dolore\n                magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut\n                labore\n                et dolore magna aliq Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed\n                do\n                eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing\n                elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet,\n            </p>', 'terms', 1, '2022-10-09 11:52:15', '2024-05-18 14:39:55'),
(10, 'terms_en', '<h3 class=\"py-2 fw-semibold text-start\">Lorem ipsum dolor sit amet</h3>\n            <p class=\" \">\n                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et\n                dolore\n                magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut\n                labore\n                et dolore magna aliq Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed\n                do\n                eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet, consectetur adipiscing\n                elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq Lorem ipsum dolor sit amet,\n            </p>', 'terms', 1, '2022-10-09 11:52:15', '2024-05-18 14:39:55'),
(11, 'terms_image', '/uploads/settings/1716043195_8659.jpg', 'terms', 1, '2022-10-09 11:52:15', '2024-05-18 14:39:55'),
(12, 'logo', '/uploads/settings/1715770605_2491.svg', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-15 10:56:45'),
(13, 'email', 'info@MostafaPress.com', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-18 14:29:22'),
(14, 'phone', '97338868876', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-18 14:29:22'),
(15, 'whatsapp', '97338868876', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-18 14:29:22'),
(16, 'desc_ar', 'Lorem Ipsum Dolor Sit Amet Consectetur. Rhoncus Molestie Vitae Ullamcorper Tristique Ipsum Lacus. Lorem Lectus Amet Neque Cursus Sem Varius Enim. Tellus At Massa Nibh Tempor Sit Erat Lacus Eu Purus. Vel Quisque Felis Mi Et Mattis Platea Eget Tincidunt Ut.', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-18 14:29:22'),
(17, 'keywords', '𝒇𝒂𝒃𝒓𝒊𝒄𝒂𝒕𝒆𝒅 𝒘𝒊𝒕𝒉 𝒍𝒐𝒗𝒆 find us @incconcept.bh', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-18 14:29:22'),
(18, 'author', 'Mostafa Press', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-18 14:29:22'),
(20, 'VAT', '10', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-18 14:29:22'),
(24, 'min_order', '1', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-18 14:29:22'),
(34, 'main_color', '#000000', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-18 14:29:22'),
(37, 'DefaultLang', 'ar', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-05-18 14:29:22'),
(46, 'snapchat_services', NULL, 'advertising', 0, NULL, '2023-04-10 10:05:48'),
(47, 'twitter_services', NULL, 'advertising', 0, NULL, '2023-04-10 10:05:48'),
(48, 'facebbok_services', NULL, 'advertising', 0, NULL, '2023-04-10 10:05:48'),
(49, 'google_services', NULL, 'advertising', 0, NULL, '2023-04-10 10:05:48'),
(50, 'tiktok_services', NULL, 'advertising', 0, NULL, '2023-04-10 10:05:48'),
(51, 'instagram_services', NULL, 'advertising', 0, NULL, '2023-04-10 10:05:48'),
(52, 'product_care_ar', '<p>This Is Bymariams.Com&rsquo;s (&ldquo;Bymariams.Com&rdquo;) Online Privacy Policy (&ldquo;Policy&rdquo;). This Policy Applies Only To Activities Bymariams.Com Engages In On Its Website And Does Not Apply To Bymariams.Com Activities That Are \"Offline\" Or Unrelated To The Website.</p>\r\n<p>&nbsp;</p>\r\n<p>Bymariams.Com Collects Certain Anonymous Data Regarding The Usage Of The Website. This Information Does Not Personally Identify Users, By Itself Or In Combination With Other Information, And Is Gathered To Improve The Performance Of The Website. The Anonymous Data Collected By The Bymariams.Com Website Can Include Information Such As The Type Of Browser You Are Using And The Length Of The Visit To The Website. You May Also Be Asked To Provide Personally Identifiable Information On The Bymariams.Com Website, Which May Include Your Name, Address, Telephone Number And E-Mail Address. This Information Can Be Gathered When Feedback Or E-Mails Are Sent To Bymariams.Com, When You Register For Services, Or Make Purchases On The Website. In All Such Cases You Have The Option Of Providing Us With Personally Identifiable Information.</p>\r\n<p>&nbsp;</p>\r\n<p>1. USE AND DISCLOSURE OF INFORMATION. Except As Otherwise Stated Below, We Do Not Sell, Trade Or Rent Your Personally Identifiable Information Collected On The Website To Others. The Information Collected By Our Website Is Used To Process Orders, To Keep You Informed About Your Order Status, To Notify You Of Products Or Special Offers That May Be Of Interest To You, And For Statistical Purposes For Improving Our Website. We Will Disclose Your Delivery Information To Third Parties For Order Tracking Purposes Or Process Your Check Or Money Order, As Appropriate, Fill Your Order, Improve The Functionality Of Our Website, Perform Statistical And Data Analyses Deliver Your Order And Deliver Promotional Emails To You From Us. For Example, We Must Release Your Mailing Address Information To The Delivery Service To Deliver Products That You Ordered.</p>\r\n<p>&nbsp;</p>\r\n<p>2. All Credit/Debit Cards&rsquo; Details And Personally Identifiable Information Will NOT Be Stored, Sold, Shared, Rented Or Leased To Any Third Parties.</p>\r\n<p>&nbsp;</p>\r\n<p>COOKIES. Cookies Are Small Bits Of Data Cached In A User&rsquo;s Browser. Bymariams.Com Utilizes Cookies To Determine Whether Or Not You Have Visited The Home Page In The Past. However, No Other User Information Is Gathered.</p>\r\n<p>&nbsp;</p>\r\n<p>Bymariams.Com May Use Non-Personal \"Aggregated Data\" To Enhance The Operation Of Our Website, Or Analyze Interest In The Areas Of Our Website. Additionally, If You Provide Bymariams.Com With Content For Publishing Or Feedback, We May Publish Your User Name Or Other Identifying Data With Your Permission.</p>\r\n<p>&nbsp;</p>\r\n<p>Bymariams.Com May Also Disclose Personally Identifiable Information In Order To Respond To A Subpoena, Court Order Or Other Such Request. Bymariams.Com May Also Provide Such Personally Identifiable Information In Response To A Law Enforcement Agencies Request Or As Otherwise Required By Law. Your Personally Identifiable Information May Be Provided To A Party If Bymariams.Com Files For Bankruptcy, Or There Is A Transfer Of The Assets Or Ownership Of Bymariams.Com In Connection With Proposed Or Consummated Corporate Reorganizations, Such As Mergers Or Acquisitions.</p>\r\n<p>&nbsp;</p>\r\n<p>3. SECURITY. Bymariams.Com Takes Appropriate Steps To Ensure Data Privacy And Security Including Through Various Hardware And Software Methodologies. However, Bymariams.Com Cannot Guarantee The Security Of Any Information That Is Disclosed Online.</p>\r\n<p>&nbsp;</p>\r\n<p>4. OTHER WEBSITES. Bymariams.Com Is Not Responsible For The Privacy Policies Of Websites To Which It Links. If You Provide Any Information To Such Third Parties Different Rules Regarding The Collection And Use Of Your Personal Information May Apply. We Strongly Suggest You Review Such Third Party&rsquo;s Privacy Policies Before Providing Any Data To Them. We Are Not Responsible For The Policies Or Practices Of Third Parties. Please Be Aware That Our Website May Contain Links To Other Websites On The Internet That Are Owned And Operated By Third Parties. The Information Practices Of Those Websites Linked Are Not Covered By This Policy. Those Linked Websites May Send Their Own Cookies Or Clear GIFs To Users, Collect Data Or Solicit Personally Identifiable Information. We Cannot Control This Collection Of Information. You Should Contact These Entities Directly If You Have Any Questions About Their Use Of The Information That They Collect.</p>\r\n<p>&nbsp;</p>\r\n<p>MINORS. Bymariams.Com Does Not Knowingly Collect Personal Information From Minors Under The Age Of 18. Minors Are Not Permitted To Use The Bymariams.Com Website Or Services, And Bymariams.Com Requests That Minors Under The Age Of 18 Not Submit Any Personal Information To The Website. Since Information Regarding Minors Under The Age Of 18 Is Not Collected, Bymariams.Com Does Not Knowingly Distribute Personal Information Regarding Minors Under The Age Of 18.</p>\r\n<p>&nbsp;</p>\r\n<p>CORRECTIONS AND UPDATES. If You Wish To Modify Or Update Any Information Bymariams.Com Has Received, Please Contact Hello@Bymariams.Com.</p>\r\n<p>&nbsp;</p>\r\n<p>5. MODIFICATIONS OF THE PRIVACY POLICY. Bymariams.Com. The Website Policies And Terms &amp; Conditions Will Be Changed Or Updated Occasionally To Meet The Requirements And Standards. Therefore The Customers&rsquo; Are Encouraged To Frequently Visit These Sections In Order To Be Updated About The Changes On The Website. Modifications Will Be Effective On The Day They Are Posted.</p>\r\n<p>&nbsp;</p>\r\n<p>6. Some Of The Advertisements You See On The Website Are Selected And Delivered By Third Parties, Such As Ad Networks, Advertising Agencies, Advertisers, And Audience Segment Providers. These Third Parties May Collect Information About You And Your Online Activities, Either On Our Website Or On Other Websites, Through Cookies, Web Beacons, And Other Technologies In An Effort To Understand Your Interests And Deliver To You Advertisements That Are Tailored To Your Interests. Please Remember That We Do Not Have Access To, Or Control Over, The Information These Third Parties May Collect. The Information Practices Of These Third Parties Are Not Covered By This Privacy Policy.</p>', 'product_care', 0, '2022-10-09 11:52:15', '2024-03-10 15:50:23'),
(53, 'product_care_en', '<p>This Is Bymariams.Com&rsquo;s (&ldquo;Bymariams.Com&rdquo;) Online Privacy Policy (&ldquo;Policy&rdquo;). This Policy Applies Only To Activities Bymariams.Com Engages In On Its Website And Does Not Apply To Bymariams.Com Activities That Are \"Offline\" Or Unrelated To The Website.</p>\r\n<p>&nbsp;</p>\r\n<p>Bymariams.Com Collects Certain Anonymous Data Regarding The Usage Of The Website. This Information Does Not Personally Identify Users, By Itself Or In Combination With Other Information, And Is Gathered To Improve The Performance Of The Website. The Anonymous Data Collected By The Bymariams.Com Website Can Include Information Such As The Type Of Browser You Are Using And The Length Of The Visit To The Website. You May Also Be Asked To Provide Personally Identifiable Information On The Bymariams.Com Website, Which May Include Your Name, Address, Telephone Number And E-Mail Address. This Information Can Be Gathered When Feedback Or E-Mails Are Sent To Bymariams.Com, When You Register For Services, Or Make Purchases On The Website. In All Such Cases You Have The Option Of Providing Us With Personally Identifiable Information.</p>\r\n<p>&nbsp;</p>\r\n<p>1. USE AND DISCLOSURE OF INFORMATION. Except As Otherwise Stated Below, We Do Not Sell, Trade Or Rent Your Personally Identifiable Information Collected On The Website To Others. The Information Collected By Our Website Is Used To Process Orders, To Keep You Informed About Your Order Status, To Notify You Of Products Or Special Offers That May Be Of Interest To You, And For Statistical Purposes For Improving Our Website. We Will Disclose Your Delivery Information To Third Parties For Order Tracking Purposes Or Process Your Check Or Money Order, As Appropriate, Fill Your Order, Improve The Functionality Of Our Website, Perform Statistical And Data Analyses Deliver Your Order And Deliver Promotional Emails To You From Us. For Example, We Must Release Your Mailing Address Information To The Delivery Service To Deliver Products That You Ordered.</p>\r\n<p>&nbsp;</p>\r\n<p>2. All Credit/Debit Cards&rsquo; Details And Personally Identifiable Information Will NOT Be Stored, Sold, Shared, Rented Or Leased To Any Third Parties.</p>\r\n<p>&nbsp;</p>\r\n<p>COOKIES. Cookies Are Small Bits Of Data Cached In A User&rsquo;s Browser. Bymariams.Com Utilizes Cookies To Determine Whether Or Not You Have Visited The Home Page In The Past. However, No Other User Information Is Gathered.</p>\r\n<p>&nbsp;</p>\r\n<p>Bymariams.Com May Use Non-Personal \"Aggregated Data\" To Enhance The Operation Of Our Website, Or Analyze Interest In The Areas Of Our Website. Additionally, If You Provide Bymariams.Com With Content For Publishing Or Feedback, We May Publish Your User Name Or Other Identifying Data With Your Permission.</p>\r\n<p>&nbsp;</p>\r\n<p>Bymariams.Com May Also Disclose Personally Identifiable Information In Order To Respond To A Subpoena, Court Order Or Other Such Request. Bymariams.Com May Also Provide Such Personally Identifiable Information In Response To A Law Enforcement Agencies Request Or As Otherwise Required By Law. Your Personally Identifiable Information May Be Provided To A Party If Bymariams.Com Files For Bankruptcy, Or There Is A Transfer Of The Assets Or Ownership Of Bymariams.Com In Connection With Proposed Or Consummated Corporate Reorganizations, Such As Mergers Or Acquisitions.</p>\r\n<p>&nbsp;</p>\r\n<p>3. SECURITY. Bymariams.Com Takes Appropriate Steps To Ensure Data Privacy And Security Including Through Various Hardware And Software Methodologies. However, Bymariams.Com Cannot Guarantee The Security Of Any Information That Is Disclosed Online.</p>\r\n<p>&nbsp;</p>\r\n<p>4. OTHER WEBSITES. Bymariams.Com Is Not Responsible For The Privacy Policies Of Websites To Which It Links. If You Provide Any Information To Such Third Parties Different Rules Regarding The Collection And Use Of Your Personal Information May Apply. We Strongly Suggest You Review Such Third Party&rsquo;s Privacy Policies Before Providing Any Data To Them. We Are Not Responsible For The Policies Or Practices Of Third Parties. Please Be Aware That Our Website May Contain Links To Other Websites On The Internet That Are Owned And Operated By Third Parties. The Information Practices Of Those Websites Linked Are Not Covered By This Policy. Those Linked Websites May Send Their Own Cookies Or Clear GIFs To Users, Collect Data Or Solicit Personally Identifiable Information. We Cannot Control This Collection Of Information. You Should Contact These Entities Directly If You Have Any Questions About Their Use Of The Information That They Collect.</p>\r\n<p>&nbsp;</p>\r\n<p>MINORS. Bymariams.Com Does Not Knowingly Collect Personal Information From Minors Under The Age Of 18. Minors Are Not Permitted To Use The Bymariams.Com Website Or Services, And Bymariams.Com Requests That Minors Under The Age Of 18 Not Submit Any Personal Information To The Website. Since Information Regarding Minors Under The Age Of 18 Is Not Collected, Bymariams.Com Does Not Knowingly Distribute Personal Information Regarding Minors Under The Age Of 18.</p>\r\n<p>&nbsp;</p>\r\n<p>CORRECTIONS AND UPDATES. If You Wish To Modify Or Update Any Information Bymariams.Com Has Received, Please Contact Hello@Bymariams.Com.</p>\r\n<p>&nbsp;</p>\r\n<p>5. MODIFICATIONS OF THE PRIVACY POLICY. Bymariams.Com. The Website Policies And Terms &amp; Conditions Will Be Changed Or Updated Occasionally To Meet The Requirements And Standards. Therefore The Customers&rsquo; Are Encouraged To Frequently Visit These Sections In Order To Be Updated About The Changes On The Website. Modifications Will Be Effective On The Day They Are Posted.</p>\r\n<p>&nbsp;</p>\r\n<p>6. Some Of The Advertisements You See On The Website Are Selected And Delivered By Third Parties, Such As Ad Networks, Advertising Agencies, Advertisers, And Audience Segment Providers. These Third Parties May Collect Information About You And Your Online Activities, Either On Our Website Or On Other Websites, Through Cookies, Web Beacons, And Other Technologies In An Effort To Understand Your Interests And Deliver To You Advertisements That Are Tailored To Your Interests. Please Remember That We Do Not Have Access To, Or Control Over, The Information These Third Parties May Collect. The Information Practices Of These Third Parties Are Not Covered By This Privacy Policy.</p>', 'product_care', 0, '2022-10-09 11:52:15', '2024-03-10 15:50:23'),
(54, 'product_care_image', '/uploads/settings/1710078408_2013.png', 'product_care', 0, '2022-10-09 11:52:15', '2024-03-10 14:46:48'),
(55, 'logo_dark', '/uploads/settings/1715940393_4121.jpg', 'publicSettings', 1, '2024-05-15 11:21:46', '2024-05-17 10:06:33'),
(56, 'desc_en', 'Lorem Ipsum Dolor Sit Amet Consectetur. Rhoncus Molestie Vitae Ullamcorper Tristique Ipsum Lacus. Lorem Lectus Amet Neque Cursus Sem Varius Enim. Tellus At Massa Nibh Tempor Sit Erat Lacus Eu Purus. Vel Quisque Felis Mi Et Mattis Platea Eget Tincidunt Ut.', 'publicSettings', 1, '2024-05-18 14:26:05', '2024-05-18 14:29:22'),
(57, 'address', 'Al Farazdaq Street, Ghubairah, Riyadh 12664, Kingdom Of Saudi Arabia', 'publicSettings', 1, '2024-05-18 19:06:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shetabit_visits`
--

CREATE TABLE `shetabit_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) DEFAULT NULL,
  `request` mediumtext DEFAULT NULL,
  `url` mediumtext DEFAULT NULL,
  `referer` mediumtext DEFAULT NULL,
  `languages` text DEFAULT NULL,
  `useragent` text DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `device` text DEFAULT NULL,
  `platform` text DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `visitable_type` varchar(255) DEFAULT NULL,
  `visitable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_type` varchar(255) DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `title_ar`, `title_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 'S', 'S', 1, '2024-02-25 09:52:30', '2024-02-25 09:52:30'),
(2, 'M', 'M', 1, '2024-02-25 09:52:35', '2024-02-25 09:52:35'),
(3, 'L', 'L', 1, '2024-02-25 09:52:42', '2024-02-25 09:52:42'),
(6, 'تست', 'test', 1, '2024-03-10 15:23:19', '2024-03-10 15:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_sm` varchar(255) DEFAULT NULL,
  `image_lg` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image_sm`, `image_lg`, `created_at`, `updated_at`) VALUES
(1, '/uploads/Images/1710155725_5671.png', '/uploads/Images/1709021247_1914.svg', '2024-02-27 08:07:27', '2024-03-11 12:15:25'),
(2, '/uploads/Images/1710155912_7990.png', '/uploads/Images/1710156047_6155.png', '2024-02-27 08:08:41', '2024-03-11 12:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_icons`
--

CREATE TABLE `social_media_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media_icons`
--

INSERT INTO `social_media_icons` (`id`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(7, 'fa-brands fa-instagram', 'https://www.instagram.com/by.mariams', '2023-12-23 15:11:03', '2023-12-23 15:11:03'),
(11, 'fa-brands fa-whatsapp', 'https://wa.me/97338868876', '2024-03-11 11:47:39', '2024-03-11 11:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id`, `title_ar`, `title_en`, `number`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'سنوات من الخبرة', 'Years of experience', '2', '/uploads/Statistics/1715940013_5703.png', 1, '2024-05-16 13:38:54', '2024-05-17 10:00:13'),
(2, 'عدد العملاء', 'Number of clients', '1000', '/uploads/Statistics/1715940085_4155.png', 1, '2024-05-17 10:01:25', '2024-05-17 10:01:25'),
(3, 'المشاريع المنجزة', 'Completed projects', '600', '/uploads/Statistics/1715940143_6686.png', 1, '2024-05-17 10:02:23', '2024-05-17 10:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `step_successes`
--

CREATE TABLE `step_successes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `desc_ar` text NOT NULL,
  `desc_en` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `step_successes`
--

INSERT INTO `step_successes` (`id`, `image`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `status`, `created_at`, `updated_at`) VALUES
(1, '/uploads/StepSuccess/1716051897_5588.svg', 'هدف', 'Goal', 'Establish a clear vision and purpose for the task, providing motivation for forthcoming endeavors.', 'Establish a clear vision and purpose for the task, providing motivation for forthcoming endeavors.', 1, '2024-05-18 17:04:57', '2024-05-18 17:04:57'),
(2, '/uploads/StepSuccess/1716051951_2603.svg', 'خطه', 'Plan', 'Establish a clear vision and purpose for the task, providing motivation for forthcoming endeavors.', 'Establish a clear vision and purpose for the task, providing motivation for forthcoming endeavors.', 1, '2024-05-18 17:05:51', '2024-05-18 17:05:51'),
(3, '/uploads/StepSuccess/1716052894_5990.svg', 'رؤية', 'vision', 'Orem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Magna Aliqua. Ut Enim Ad Minim Veniam, Quis Nostrud Exercitation Ulla Orem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor.', 'Orem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Magna Aliqua. Ut Enim Ad Minim Veniam, Quis Nostrud Exercitation Ulla Orem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor.', 1, '2024-05-18 17:21:34', '2024-05-18 17:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_number` varchar(255) DEFAULT NULL,
  `value` decimal(9,3) NOT NULL,
  `result` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_client_id_foreign` (`client_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisings`
--
ALTER TABLE `advertisings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertising_images`
--
ALTER TABLE `advertising_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertising_images_advertising_id_foreign` (`advertising_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_images_banner_id_foreign` (`banner_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_client_id_foreign` (`client_id`),
  ADD KEY `cart_product_id_foreign` (`product_id`),
  ADD KEY `cart_color_id_foreign` (`color_id`),
  ADD KEY `cart_size_id_foreign` (`size_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_products_product_id_foreign` (`product_id`),
  ADD KEY `coupon_products_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivries`
--
ALTER TABLE `delivries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_tokens`
--
ALTER TABLE `device_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_tokens_client_id_foreign` (`client_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_offers`
--
ALTER TABLE `mail_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_delivery_id_foreign` (`delivery_id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`),
  ADD KEY `product_categories_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_color_product_id_foreign` (`product_id`),
  ADD KEY `product_color_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_favourites`
--
ALTER TABLE `product_favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_favourites_client_id_foreign` (`client_id`),
  ADD KEY `product_favourites_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_color_id_foreign` (`color_id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_client_id_foreign` (`client_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_product_id_foreign` (`product_id`),
  ADD KEY `product_size_size_id_foreign` (`size_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_country_id_foreign` (`country_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shetabit_visits`
--
ALTER TABLE `shetabit_visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shetabit_visits_visitable_type_visitable_id_index` (`visitable_type`,`visitable_id`),
  ADD KEY `shetabit_visits_visitor_type_visitor_id_index` (`visitor_type`,`visitor_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media_icons`
--
ALTER TABLE `social_media_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `step_successes`
--
ALTER TABLE `step_successes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_client_id_foreign` (`client_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `advertisings`
--
ALTER TABLE `advertisings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advertising_images`
--
ALTER TABLE `advertising_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_products`
--
ALTER TABLE `coupon_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivries`
--
ALTER TABLE `delivries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `device_tokens`
--
ALTER TABLE `device_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_offers`
--
ALTER TABLE `mail_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `product_favourites`
--
ALTER TABLE `product_favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `shetabit_visits`
--
ALTER TABLE `shetabit_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_media_icons`
--
ALTER TABLE `social_media_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `step_successes`
--
ALTER TABLE `step_successes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `advertising_images`
--
ALTER TABLE `advertising_images`
  ADD CONSTRAINT `advertising_images_advertising_id_foreign` FOREIGN KEY (`advertising_id`) REFERENCES `advertisings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD CONSTRAINT `banner_images_banner_id_foreign` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD CONSTRAINT `coupon_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coupon_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `device_tokens`
--
ALTER TABLE `device_tokens`
  ADD CONSTRAINT `device_tokens_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `delivries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `product_color_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_color_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_favourites`
--
ALTER TABLE `product_favourites`
  ADD CONSTRAINT `product_favourites_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_favourites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
