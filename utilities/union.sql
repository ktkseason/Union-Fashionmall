-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 06:07 PM
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
-- Database: `union`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Toteme', './assets/img/Toteme.jpg', '2024-01-25 16:04:14', NULL),
(2, '\'S Max Mara', './assets/img/\'S Max Mara.jpg', '2024-01-25 22:06:46', NULL),
(3, 'Junya Watanabe', './assets/img/Junya Watanabe.jpg', '2024-01-25 22:06:46', NULL),
(4, 'Givenchy', './assets/img/Givenchy.jpg', '2024-01-25 22:13:45', NULL),
(5, 'Valentino Garavani', './assets/img/Valentino Garavani.jpg', '2024-01-25 22:13:45', NULL),
(6, 'Loewe', './assets/img/Loewe.jpg', '2024-01-25 22:13:45', NULL),
(7, 'Balenciaga', './assets/img/Balenciaga.jpg', '2024-01-25 22:13:45', NULL),
(8, 'Gucci', './assets/img/Gucci.jpg', '2024-01-25 22:13:45', NULL),
(9, 'Bottega Veneta', './assets/img/Bottega Veneta.jpg', '2024-01-25 22:13:45', NULL),
(10, 'Saint Laurent', './assets/img/Saint Laurent.jpg', '2024-01-25 22:13:45', NULL),
(11, 'Alaia', './assets/img/Alaia.jpg', '2024-01-25 22:13:45', NULL),
(12, 'Visvim', './assets/img/Visvim.jpg', '2024-01-25 22:13:45', NULL),
(13, 'Ami Paris', './assets/img/Ami Paris.jpg', '2024-01-25 22:13:45', NULL),
(14, 'Berluti', './assets/img/Berluti.jpg', '2024-01-25 22:13:45', NULL),
(15, 'Stone Island', './assets/img/Stone Island.jpg', '2024-01-25 22:13:45', NULL),
(16, 'Zegna', './assets/img/Zegna.jpg', '2024-01-25 22:13:45', NULL),
(17, 'Manolo Blahnik', './assets/img/Manolo Blahnik.jpg', '2024-01-25 22:13:45', NULL),
(18, 'Brunello Cucinelli', './assets/img/Brunello Cucinelli.jpg', '2024-01-25 22:13:45', NULL),
(19, 'Kenzo', './assets/img/Kenzo.jpg', '2024-01-25 22:13:45', NULL),
(20, 'Lemaire', './assets/img/Lemaire.jpg', '2024-01-25 22:13:45', NULL),
(21, 'Acne Studios', './assets/img/Acne Studios.jpg', '2024-01-25 22:13:45', NULL),
(22, 'Marni', './assets/img/Marni.jpg', '2024-01-25 22:13:45', NULL),
(23, 'Burberry', './assets/img/Burberry.jpg', '2024-01-25 22:13:45', NULL),
(24, 'Maison Margiela', './assets/img/Maison Margiela.jpg', '2024-01-25 22:13:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `gender_id`, `topic_id`, `created_at`, `updated_at`) VALUES
(1, 'Coats & Jackets', 1, 1, '2024-01-25 20:33:18', NULL),
(2, 'Jeans', 1, 1, '2024-01-25 20:33:18', NULL),
(3, 'Knitwears', 1, 1, '2024-01-25 20:33:18', NULL),
(4, 'Pants', 1, 1, '2024-01-25 20:33:18', NULL),
(5, 'Shirts', 1, 1, '2024-01-25 20:33:18', NULL),
(6, 'Sweats', 1, 1, '2024-01-25 20:33:18', NULL),
(7, 'T-shirts', 1, 1, '2024-01-25 20:33:18', NULL),
(8, 'Tops', 2, 1, '2024-01-25 20:33:18', NULL),
(9, 'Dresses', 2, 1, '2024-01-25 20:33:18', NULL),
(10, 'Skirts', 2, 1, '2024-01-25 20:33:18', NULL),
(11, 'Boots', 1, 2, '2024-01-25 20:35:47', NULL),
(12, 'Formal shoes', 1, 2, '2024-01-25 20:35:47', NULL),
(13, 'Loafers', 1, 2, '2024-01-25 20:35:47', NULL),
(14, 'Sandals & Slides', 1, 2, '2024-01-25 20:35:47', NULL),
(15, 'Slippers', 1, 2, '2024-01-25 20:35:47', NULL),
(16, 'Sneakers', 1, 2, '2024-01-25 20:35:47', NULL),
(17, 'Flat shoes', 2, 2, '2024-01-25 20:35:47', NULL),
(18, 'Heeled shoes', 2, 2, '2024-01-25 20:35:47', NULL),
(19, 'Backpacks', 1, 3, '2024-01-25 20:39:58', NULL),
(20, 'Belt bags', 1, 3, '2024-01-25 20:39:58', NULL),
(21, 'Crossbody bags', 1, 3, '2024-01-25 20:39:58', NULL),
(22, 'Mini bags', 1, 3, '2024-01-25 20:39:58', NULL),
(23, 'Travel Bags', 1, 3, '2024-01-25 20:39:58', NULL),
(24, 'Bridal bags', 2, 3, '2024-01-25 20:39:58', NULL),
(25, 'Clutches', 2, 3, '2024-01-25 20:39:58', NULL),
(26, 'Shoulder bags', 2, 3, '2024-01-25 20:39:58', NULL),
(27, 'Tote bags', 1, 3, '2024-01-25 20:39:58', NULL),
(28, 'Coats & Jackets', 2, 1, '2024-01-25 20:56:10', NULL),
(29, 'Jeans', 2, 1, '2024-01-25 20:56:10', NULL),
(30, 'Knitwears', 2, 1, '2024-01-25 20:56:10', NULL),
(31, 'Pants', 2, 1, '2024-01-25 20:56:10', NULL),
(32, 'Boots', 2, 2, '2024-01-25 20:56:10', NULL),
(33, 'Sandals', 2, 2, '2024-01-25 20:56:10', NULL),
(34, 'Sneakers', 2, 2, '2024-01-25 20:56:10', NULL),
(35, 'Backpacks', 2, 3, '2024-01-25 20:56:10', NULL),
(36, 'Belt bags', 2, 3, '2024-01-25 20:56:10', NULL),
(37, 'Tote bags', 2, 3, '2024-01-25 20:56:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Green', 'green', '2024-01-24 15:24:24', NULL),
(2, 'Blue', 'blue', '2024-01-24 15:23:34', NULL),
(3, 'Red', 'red', '2024-01-24 15:25:21', NULL),
(4, 'Orange', 'orange', '2024-01-24 15:25:21', NULL),
(5, 'Yellow', 'yellow', '2024-01-24 15:26:08', NULL),
(6, 'Indigo', 'indigo', '2024-01-24 15:26:08', NULL),
(7, 'Purple', 'purple', '2024-01-24 15:26:08', NULL),
(8, 'Beige', 'beige', '2024-01-25 20:15:00', NULL),
(9, 'Black', 'black', '2024-01-25 20:15:00', NULL),
(10, 'Brown', 'brown', '2024-01-25 20:18:23', NULL),
(11, 'Gold', 'gold', '2024-01-25 20:18:23', NULL),
(12, 'Grey', 'grey', '2024-01-25 20:18:23', NULL),
(13, 'Multicolored', 'linear-gradient(\r\n        90deg,\r\n        rgba(255, 0, 0, 1) 0%,\r\n        rgba(255, 154, 0, 1) 10%,\r\n        rgba(208, 222, 33, 1) 20%,\r\n        rgba(79, 220, 74, 1) 30%,\r\n        rgba(63, 218, 216, 1) 40%,\r\n        rgba(47, 201, 226, 1) 50%,\r\n        rgba(28, 127, 238, 1) 60%,\r\n        rgba(95, 21, 242, 1) 70%,\r\n        rgba(186, 12, 248, 1) 80%,\r\n        rgba(251, 7, 217, 1) 90%,\r\n        rgba(255, 0, 0, 1) 100%\r\n    )', '2024-01-25 20:18:23', NULL),
(14, 'Pink', 'pink', '2024-01-25 20:18:23', NULL),
(15, 'Silver', 'silver', '2024-01-25 20:18:23', NULL),
(16, 'Turquoise', 'turquoise', '2024-01-25 20:18:23', NULL),
(17, 'White', 'white', '2024-01-25 20:18:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `feedback` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `subject`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john.doe@gmail.com', 'Very Nice', 'This website is the best of i\'ve ever seen.', '2024-01-30 18:42:36', NULL),
(2, 'Jenna', 'jenna@gmail.com', 'Happy', 'I am very happy to shop with you.', '2024-01-30 23:43:47', NULL),
(3, 'Dyna', 'dyna@gmail.com', 'Curious', 'I am very curious about new products.', '2024-01-30 23:44:51', NULL),
(4, 'Donna', 'donna@gmail.com', 'Color', 'I like the color display of images.', '2024-01-30 23:46:09', NULL),
(5, 'Mumma', 'mumma@gmail.com', 'Dream', 'My dream is to buy everything on this site.', '2024-01-30 23:49:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Men', '2024-01-26 06:46:07', NULL),
(2, 'Women', '2024-01-26 06:46:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES
(40, 'Screenshot 2024-01-29 223346.png', 10, '2024-01-30 12:29:43', NULL),
(43, 'Screenshot 2024-01-29 223652.png', 12, '2024-01-30 12:32:50', NULL),
(44, 'Screenshot 2024-01-29 223638.png', 12, '2024-01-30 12:32:50', NULL),
(46, 'Screenshot 2024-01-29 223503.png', 10, '2024-01-30 14:02:04', NULL),
(48, 'Screenshot 2024-01-29 223447.png', 10, '2024-01-30 17:54:24', NULL),
(49, 'Screenshot 2024-01-29 223431.png', 10, '2024-01-30 17:54:24', NULL),
(50, 'Screenshot 2024-01-29 223708.png', 12, '2024-01-30 17:54:37', NULL),
(51, 'Screenshot 2024-01-29 223626.png', 12, '2024-01-30 17:54:37', NULL),
(52, 'Screenshot 2024-01-29 223518.png', 13, '2024-02-01 20:54:15', NULL),
(53, 'Screenshot 2024-01-31 110944.png', 14, '2024-02-01 20:55:26', NULL),
(54, 'Screenshot 2024-01-31 111006.png', 14, '2024-02-01 20:55:26', NULL),
(55, 'Screenshot 2024-01-31 111026.png', 14, '2024-02-01 20:55:26', NULL),
(56, 'Screenshot 2024-01-31 111047.png', 14, '2024-02-01 20:55:26', NULL),
(57, 'Screenshot 2024-01-31 111103.png', 14, '2024-02-01 20:55:26', NULL),
(58, 'Screenshot 2024-01-31 111518.png', 15, '2024-02-01 20:57:09', NULL),
(59, 'Screenshot 2024-01-31 111542.png', 15, '2024-02-01 20:57:09', NULL),
(60, 'Screenshot 2024-01-31 111600.png', 15, '2024-02-01 20:57:09', NULL),
(61, 'Screenshot 2024-01-31 111617.png', 15, '2024-02-01 20:57:09', NULL),
(62, 'Screenshot 2024-01-31 111633.png', 15, '2024-02-01 20:57:09', NULL),
(63, 'Screenshot 2024-01-31 111949.png', 16, '2024-02-01 20:58:27', NULL),
(64, 'Screenshot 2024-01-31 112006.png', 16, '2024-02-01 20:58:27', NULL),
(65, 'Screenshot 2024-01-31 112029.png', 16, '2024-02-01 20:58:27', NULL),
(66, 'Screenshot 2024-01-31 112047.png', 16, '2024-02-01 20:58:27', NULL),
(67, 'Screenshot 2024-01-31 112100.png', 16, '2024-02-01 20:58:27', NULL),
(73, 'Screenshot 2024-01-31 112436.png', 18, '2024-02-01 21:00:55', NULL),
(74, 'Screenshot 2024-01-31 112450.png', 18, '2024-02-01 21:00:55', NULL),
(75, 'Screenshot 2024-01-31 112500.png', 18, '2024-02-01 21:00:55', NULL),
(76, 'Screenshot 2024-01-31 112513.png', 18, '2024-02-01 21:00:55', NULL),
(77, 'Screenshot 2024-01-31 112527.png', 18, '2024-02-01 21:00:55', NULL),
(78, 'Screenshot 2024-01-31 112851.png', 19, '2024-02-01 21:03:30', NULL),
(79, 'Screenshot 2024-01-31 112903.png', 19, '2024-02-01 21:03:30', NULL),
(80, 'Screenshot 2024-01-31 112920.png', 19, '2024-02-01 21:03:30', NULL),
(81, 'Screenshot 2024-01-31 112937.png', 19, '2024-02-01 21:03:30', NULL),
(82, 'Screenshot 2024-01-31 112958.png', 19, '2024-02-01 21:03:30', NULL),
(83, 'Screenshot 2024-02-01 103718.png', 20, '2024-02-01 21:06:01', NULL),
(84, 'Screenshot 2024-02-01 103730.png', 20, '2024-02-01 21:06:01', NULL),
(85, 'Screenshot 2024-02-01 103741.png', 20, '2024-02-01 21:06:01', NULL),
(86, 'Screenshot 2024-02-01 103750.png', 20, '2024-02-01 21:06:01', NULL),
(87, 'Screenshot 2024-02-01 103759.png', 20, '2024-02-01 21:06:01', NULL),
(88, 'Screenshot 2024-02-01 104009.png', 21, '2024-02-01 21:07:31', NULL),
(89, 'Screenshot 2024-02-01 104019.png', 21, '2024-02-01 21:07:31', NULL),
(90, 'Screenshot 2024-02-01 104028.png', 21, '2024-02-01 21:07:31', NULL),
(91, 'Screenshot 2024-02-01 104039.png', 21, '2024-02-01 21:07:31', NULL),
(92, 'Screenshot 2024-02-01 104051.png', 21, '2024-02-01 21:07:31', NULL),
(93, 'Screenshot 2024-02-01 104442.png', 22, '2024-02-01 21:09:08', NULL),
(94, 'Screenshot 2024-02-01 104501.png', 22, '2024-02-01 21:09:08', NULL),
(95, 'Screenshot 2024-02-01 104514.png', 22, '2024-02-01 21:09:08', NULL),
(96, 'Screenshot 2024-02-01 104524.png', 22, '2024-02-01 21:09:08', NULL),
(97, 'Screenshot 2024-02-01 104533.png', 22, '2024-02-01 21:09:08', NULL),
(98, 'Screenshot 2024-02-01 104710.png', 23, '2024-02-01 21:10:27', NULL),
(99, 'Screenshot 2024-02-01 104720.png', 23, '2024-02-01 21:10:27', NULL),
(100, 'Screenshot 2024-02-01 104730.png', 23, '2024-02-01 21:10:27', NULL),
(101, 'Screenshot 2024-02-01 104739.png', 23, '2024-02-01 21:10:27', NULL),
(102, 'Screenshot 2024-02-01 104750.png', 23, '2024-02-01 21:10:27', NULL),
(103, 'Screenshot 2024-02-01 104958.png', 24, '2024-02-01 21:11:37', NULL),
(104, 'Screenshot 2024-02-01 105008.png', 24, '2024-02-01 21:11:37', NULL),
(105, 'Screenshot 2024-02-01 105019.png', 24, '2024-02-01 21:11:37', NULL),
(106, 'Screenshot 2024-02-01 105029.png', 24, '2024-02-01 21:11:37', NULL),
(107, 'Screenshot 2024-02-01 105038.png', 24, '2024-02-01 21:11:37', NULL),
(108, 'Screenshot 2024-02-01 105357.png', 25, '2024-02-01 21:13:03', NULL),
(109, 'Screenshot 2024-02-01 105406.png', 25, '2024-02-01 21:13:03', NULL),
(110, 'Screenshot 2024-02-01 105415.png', 25, '2024-02-01 21:13:03', NULL),
(111, 'Screenshot 2024-02-01 105424.png', 25, '2024-02-01 21:13:03', NULL),
(112, 'Screenshot 2024-02-01 105435.png', 25, '2024-02-01 21:13:03', NULL),
(113, 'Screenshot 2024-01-31 113219.png', 26, '2024-02-01 21:14:40', NULL),
(114, 'Screenshot 2024-01-31 113234.png', 26, '2024-02-01 21:14:40', NULL),
(115, 'Screenshot 2024-01-31 113253.png', 26, '2024-02-01 21:14:40', NULL),
(116, 'Screenshot 2024-01-31 113319.png', 26, '2024-02-01 21:14:40', NULL),
(117, 'Screenshot 2024-01-31 113334.png', 26, '2024-02-01 21:14:40', NULL),
(118, 'Screenshot 2024-01-31 113609.png', 27, '2024-02-01 21:15:46', NULL),
(119, 'Screenshot 2024-01-31 113621.png', 27, '2024-02-01 21:15:46', NULL),
(120, 'Screenshot 2024-01-31 113636.png', 27, '2024-02-01 21:15:46', NULL),
(121, 'Screenshot 2024-01-31 113650.png', 27, '2024-02-01 21:15:46', NULL),
(122, 'Screenshot 2024-01-31 113703.png', 27, '2024-02-01 21:15:46', NULL),
(123, 'Screenshot 2024-01-31 114554.png', 28, '2024-02-01 21:16:38', NULL),
(124, 'Screenshot 2024-01-31 114613.png', 28, '2024-02-01 21:16:38', NULL),
(125, 'Screenshot 2024-01-31 114626.png', 28, '2024-02-01 21:16:38', NULL),
(126, 'Screenshot 2024-01-31 114642.png', 28, '2024-02-01 21:16:38', NULL),
(127, 'Screenshot 2024-01-31 114659.png', 28, '2024-02-01 21:16:38', NULL),
(128, 'Screenshot 2024-01-31 114934.png', 29, '2024-02-01 21:17:43', NULL),
(129, 'Screenshot 2024-01-31 114951.png', 29, '2024-02-01 21:17:44', NULL),
(130, 'Screenshot 2024-01-31 115002.png', 29, '2024-02-01 21:17:44', NULL),
(131, 'Screenshot 2024-01-31 115018.png', 29, '2024-02-01 21:17:44', NULL),
(132, 'Screenshot 2024-01-31 115037.png', 29, '2024-02-01 21:17:44', NULL),
(133, 'Screenshot 2024-01-31 115247.png', 30, '2024-02-01 21:18:47', NULL),
(134, 'Screenshot 2024-01-31 115258.png', 30, '2024-02-01 21:18:47', NULL),
(135, 'Screenshot 2024-01-31 115310.png', 30, '2024-02-01 21:18:47', NULL),
(136, 'Screenshot 2024-01-31 115320.png', 30, '2024-02-01 21:18:47', NULL),
(137, 'Screenshot 2024-01-31 115331.png', 30, '2024-02-01 21:18:47', NULL),
(138, 'Screenshot 2024-02-01 093455.png', 31, '2024-02-01 21:19:40', NULL),
(139, 'Screenshot 2024-02-01 093509.png', 31, '2024-02-01 21:19:40', NULL),
(140, 'Screenshot 2024-02-01 093519.png', 31, '2024-02-01 21:19:40', NULL),
(141, 'Screenshot 2024-02-01 093530.png', 31, '2024-02-01 21:19:40', NULL),
(142, 'Screenshot 2024-02-01 093540.png', 31, '2024-02-01 21:19:40', NULL),
(143, 'Screenshot 2024-02-01 093907.png', 32, '2024-02-01 21:20:38', NULL),
(144, 'Screenshot 2024-02-01 093920.png', 32, '2024-02-01 21:20:38', NULL),
(145, 'Screenshot 2024-02-01 093933.png', 32, '2024-02-01 21:20:38', NULL),
(146, 'Screenshot 2024-02-01 093943.png', 32, '2024-02-01 21:20:38', NULL),
(147, 'Screenshot 2024-02-01 093954.png', 32, '2024-02-01 21:20:38', NULL),
(148, 'Screenshot 2024-02-01 094232.png', 33, '2024-02-01 21:22:09', NULL),
(149, 'Screenshot 2024-02-01 094245.png', 33, '2024-02-01 21:22:09', NULL),
(150, 'Screenshot 2024-02-01 094256.png', 33, '2024-02-01 21:22:09', NULL),
(151, 'Screenshot 2024-02-01 094306.png', 33, '2024-02-01 21:22:09', NULL),
(152, 'Screenshot 2024-02-01 094315.png', 33, '2024-02-01 21:22:09', NULL),
(153, 'Screenshot 2024-02-01 095013.png', 34, '2024-02-01 21:23:23', NULL),
(154, 'Screenshot 2024-02-01 095033.png', 34, '2024-02-01 21:23:23', NULL),
(155, 'Screenshot 2024-02-01 095044.png', 34, '2024-02-01 21:23:23', NULL),
(156, 'Screenshot 2024-02-01 095058.png', 34, '2024-02-01 21:23:23', NULL),
(157, 'Screenshot 2024-02-01 095111.png', 34, '2024-02-01 21:23:23', NULL),
(158, 'Screenshot 2024-02-01 095413.png', 35, '2024-02-01 21:24:40', NULL),
(159, 'Screenshot 2024-02-01 095422.png', 35, '2024-02-01 21:24:40', NULL),
(160, 'Screenshot 2024-02-01 095433.png', 35, '2024-02-01 21:24:40', NULL),
(161, 'Screenshot 2024-02-01 095443.png', 35, '2024-02-01 21:24:40', NULL),
(162, 'Screenshot 2024-02-01 095452.png', 35, '2024-02-01 21:24:40', NULL),
(163, 'Screenshot 2024-02-01 095636.png', 36, '2024-02-01 21:26:11', NULL),
(164, 'Screenshot 2024-02-01 095646.png', 36, '2024-02-01 21:26:11', NULL),
(165, 'Screenshot 2024-02-01 095658.png', 36, '2024-02-01 21:26:11', NULL),
(166, 'Screenshot 2024-02-01 095708.png', 36, '2024-02-01 21:26:11', NULL),
(167, 'Screenshot 2024-02-01 095716.png', 36, '2024-02-01 21:26:11', NULL),
(168, 'Screenshot 2024-02-01 100257.png', 37, '2024-02-01 21:27:29', NULL),
(169, 'Screenshot 2024-02-01 100306.png', 37, '2024-02-01 21:27:29', NULL),
(170, 'Screenshot 2024-02-01 100320.png', 37, '2024-02-01 21:27:29', NULL),
(171, 'Screenshot 2024-02-01 100333.png', 37, '2024-02-01 21:27:29', NULL),
(172, 'Screenshot 2024-02-01 100344.png', 37, '2024-02-01 21:27:29', NULL),
(173, 'Screenshot 2024-02-01 100432.png', 38, '2024-02-01 21:28:52', NULL),
(174, 'Screenshot 2024-02-01 100443.png', 38, '2024-02-01 21:28:52', NULL),
(175, 'Screenshot 2024-02-01 100455.png', 38, '2024-02-01 21:28:52', NULL),
(176, 'Screenshot 2024-02-01 100507.png', 38, '2024-02-01 21:28:52', NULL),
(177, 'Screenshot 2024-02-01 100518.png', 38, '2024-02-01 21:28:52', NULL),
(178, 'Screenshot 2024-02-01 100725.png', 39, '2024-02-01 21:29:59', NULL),
(179, 'Screenshot 2024-02-01 100737.png', 39, '2024-02-01 21:29:59', NULL),
(180, 'Screenshot 2024-02-01 100746.png', 39, '2024-02-01 21:29:59', NULL),
(181, 'Screenshot 2024-02-01 100755.png', 39, '2024-02-01 21:29:59', NULL),
(182, 'Screenshot 2024-02-01 100811.png', 39, '2024-02-01 21:29:59', NULL),
(183, 'Screenshot 2024-02-01 101020.png', 40, '2024-02-01 21:33:07', NULL),
(184, 'Screenshot 2024-02-01 101032.png', 40, '2024-02-01 21:33:07', NULL),
(185, 'Screenshot 2024-02-01 101042.png', 40, '2024-02-01 21:33:07', NULL),
(186, 'Screenshot 2024-02-01 101057.png', 40, '2024-02-01 21:33:07', NULL),
(187, 'Screenshot 2024-02-01 101111.png', 40, '2024-02-01 21:33:07', NULL),
(188, 'Screenshot 2024-02-01 101254.png', 41, '2024-02-01 21:34:21', NULL),
(189, 'Screenshot 2024-02-01 101306.png', 41, '2024-02-01 21:34:21', NULL),
(190, 'Screenshot 2024-02-01 101316.png', 41, '2024-02-01 21:34:21', NULL),
(191, 'Screenshot 2024-02-01 101325.png', 41, '2024-02-01 21:34:21', NULL),
(192, 'Screenshot 2024-02-01 101334.png', 41, '2024-02-01 21:34:21', NULL),
(193, 'Screenshot 2024-02-01 101454.png', 42, '2024-02-01 21:35:22', NULL),
(194, 'Screenshot 2024-02-01 101503.png', 42, '2024-02-01 21:35:22', NULL),
(195, 'Screenshot 2024-02-01 101515.png', 42, '2024-02-01 21:35:22', NULL),
(196, 'Screenshot 2024-02-01 101531.png', 42, '2024-02-01 21:35:22', NULL),
(197, 'Screenshot 2024-02-01 101549.png', 42, '2024-02-01 21:35:22', NULL),
(198, 'Screenshot 2024-02-01 101743.png', 43, '2024-02-01 21:36:24', NULL),
(199, 'Screenshot 2024-02-01 101754.png', 43, '2024-02-01 21:36:24', NULL),
(200, 'Screenshot 2024-02-01 101807.png', 43, '2024-02-01 21:36:24', NULL),
(201, 'Screenshot 2024-02-01 101819.png', 43, '2024-02-01 21:36:24', NULL),
(202, 'Screenshot 2024-02-01 101830.png', 43, '2024-02-01 21:36:24', NULL),
(203, 'Screenshot 2024-02-01 102009.png', 44, '2024-02-01 21:37:36', NULL),
(204, 'Screenshot 2024-02-01 102021.png', 44, '2024-02-01 21:37:36', NULL),
(205, 'Screenshot 2024-02-01 102033.png', 44, '2024-02-01 21:37:36', NULL),
(206, 'Screenshot 2024-02-01 102043.png', 44, '2024-02-01 21:37:36', NULL),
(207, 'Screenshot 2024-02-01 102053.png', 44, '2024-02-01 21:37:36', NULL),
(208, 'Screenshot 2024-02-01 102232.png', 45, '2024-02-01 21:38:54', NULL),
(209, 'Screenshot 2024-02-01 102243.png', 45, '2024-02-01 21:38:54', NULL),
(210, 'Screenshot 2024-02-01 102253.png', 45, '2024-02-01 21:38:54', NULL),
(211, 'Screenshot 2024-02-01 102313.png', 45, '2024-02-01 21:38:54', NULL),
(212, 'Screenshot 2024-02-01 102322.png', 45, '2024-02-01 21:38:54', NULL),
(213, 'Screenshot 2024-02-01 102511.png', 46, '2024-02-01 21:40:15', NULL),
(214, 'Screenshot 2024-02-01 102524.png', 46, '2024-02-01 21:40:15', NULL),
(215, 'Screenshot 2024-02-01 102544.png', 46, '2024-02-01 21:40:15', NULL),
(216, 'Screenshot 2024-02-01 102555.png', 46, '2024-02-01 21:40:15', NULL),
(217, 'Screenshot 2024-02-01 102608.png', 46, '2024-02-01 21:40:15', NULL),
(218, 'Screenshot 2024-02-01 102741.png', 47, '2024-02-01 21:41:31', NULL),
(219, 'Screenshot 2024-02-01 102753.png', 47, '2024-02-01 21:41:31', NULL),
(220, 'Screenshot 2024-02-01 102806.png', 47, '2024-02-01 21:41:31', NULL),
(221, 'Screenshot 2024-02-01 102816.png', 47, '2024-02-01 21:41:31', NULL),
(222, 'Screenshot 2024-02-01 102829.png', 47, '2024-02-01 21:41:31', NULL),
(223, 'Screenshot 2024-02-01 103015.png', 48, '2024-02-01 21:42:50', NULL),
(224, 'Screenshot 2024-02-01 103029.png', 48, '2024-02-01 21:42:50', NULL),
(225, 'Screenshot 2024-02-01 103039.png', 48, '2024-02-01 21:42:50', NULL),
(226, 'Screenshot 2024-02-01 103051.png', 48, '2024-02-01 21:42:50', NULL),
(227, 'Screenshot 2024-02-01 103100.png', 48, '2024-02-01 21:42:50', NULL),
(228, 'Screenshot 2024-02-01 103225.png', 49, '2024-02-01 21:44:06', NULL),
(229, 'Screenshot 2024-02-01 103235.png', 49, '2024-02-01 21:44:06', NULL),
(230, 'Screenshot 2024-02-01 103245.png', 49, '2024-02-01 21:44:06', NULL),
(231, 'Screenshot 2024-02-01 103255.png', 49, '2024-02-01 21:44:06', NULL),
(232, 'Screenshot 2024-02-01 103304.png', 49, '2024-02-01 21:44:06', NULL),
(233, 'Screenshot 2024-02-01 105702.png', 50, '2024-02-01 21:47:13', NULL),
(234, 'Screenshot 2024-02-01 105712.png', 50, '2024-02-01 21:47:13', NULL),
(235, 'Screenshot 2024-02-01 105722.png', 50, '2024-02-01 21:47:13', NULL),
(236, 'Screenshot 2024-02-01 105735.png', 50, '2024-02-01 21:47:13', NULL),
(237, 'Screenshot 2024-02-01 105744.png', 50, '2024-02-01 21:47:13', NULL),
(238, 'Screenshot 2024-02-01 105953.png', 51, '2024-02-01 21:48:22', NULL),
(239, 'Screenshot 2024-02-01 110003.png', 51, '2024-02-01 21:48:22', NULL),
(240, 'Screenshot 2024-02-01 110013.png', 51, '2024-02-01 21:48:22', NULL),
(241, 'Screenshot 2024-02-01 110023.png', 51, '2024-02-01 21:48:22', NULL),
(242, 'Screenshot 2024-02-01 110035.png', 51, '2024-02-01 21:48:22', NULL),
(243, 'Screenshot 2024-02-01 110401.png', 52, '2024-02-01 21:50:21', NULL),
(244, 'Screenshot 2024-02-01 110414.png', 52, '2024-02-01 21:50:21', NULL),
(245, 'Screenshot 2024-02-01 110426.png', 52, '2024-02-01 21:50:21', NULL),
(246, 'Screenshot 2024-02-01 110437.png', 52, '2024-02-01 21:50:21', NULL),
(247, 'Screenshot 2024-02-01 110447.png', 52, '2024-02-01 21:50:21', NULL),
(248, 'Screenshot 2024-02-01 110627.png', 53, '2024-02-01 21:51:53', NULL),
(249, 'Screenshot 2024-02-01 110637.png', 53, '2024-02-01 21:51:53', NULL),
(250, 'Screenshot 2024-02-01 110645.png', 53, '2024-02-01 21:51:53', NULL),
(251, 'Screenshot 2024-02-01 110659.png', 53, '2024-02-01 21:51:53', NULL),
(252, 'Screenshot 2024-02-01 110708.png', 53, '2024-02-01 21:51:53', NULL),
(253, 'Screenshot 2024-02-01 110858.png', 54, '2024-02-01 21:53:05', NULL),
(254, 'Screenshot 2024-02-01 110909.png', 54, '2024-02-01 21:53:05', NULL),
(255, 'Screenshot 2024-02-01 110920.png', 54, '2024-02-01 21:53:05', NULL),
(256, 'Screenshot 2024-02-01 110929.png', 54, '2024-02-01 21:53:05', NULL),
(257, 'Screenshot 2024-02-01 110940.png', 54, '2024-02-01 21:53:05', NULL),
(258, 'Screenshot 2024-02-01 111133.png', 55, '2024-02-01 21:54:22', NULL),
(259, 'Screenshot 2024-02-01 111143.png', 55, '2024-02-01 21:54:22', NULL),
(260, 'Screenshot 2024-02-01 111153.png', 55, '2024-02-01 21:54:22', NULL),
(261, 'Screenshot 2024-02-01 111201.png', 55, '2024-02-01 21:54:22', NULL),
(262, 'Screenshot 2024-02-01 111210.png', 55, '2024-02-01 21:54:22', NULL),
(263, 'Screenshot 2024-02-01 111539.png', 56, '2024-02-01 21:55:33', NULL),
(264, 'Screenshot 2024-02-01 111548.png', 56, '2024-02-01 21:55:33', NULL),
(265, 'Screenshot 2024-02-01 111559.png', 56, '2024-02-01 21:55:33', NULL),
(266, 'Screenshot 2024-02-01 111608.png', 56, '2024-02-01 21:55:33', NULL),
(267, 'Screenshot 2024-02-01 111619.png', 56, '2024-02-01 21:55:33', NULL),
(268, 'Screenshot 2024-02-01 111848.png', 57, '2024-02-01 21:56:48', NULL),
(269, 'Screenshot 2024-02-01 111900.png', 57, '2024-02-01 21:56:48', NULL),
(270, 'Screenshot 2024-02-01 111910.png', 57, '2024-02-01 21:56:48', NULL),
(271, 'Screenshot 2024-02-01 111919.png', 57, '2024-02-01 21:56:48', NULL),
(272, 'Screenshot 2024-02-01 111928.png', 57, '2024-02-01 21:56:48', NULL),
(273, 'Screenshot 2024-02-01 112111.png', 58, '2024-02-01 21:58:03', NULL),
(274, 'Screenshot 2024-02-01 112125.png', 58, '2024-02-01 21:58:03', NULL),
(275, 'Screenshot 2024-02-01 112135.png', 58, '2024-02-01 21:58:03', NULL),
(276, 'Screenshot 2024-02-01 112144.png', 58, '2024-02-01 21:58:03', NULL),
(277, 'Screenshot 2024-02-01 112154.png', 58, '2024-02-01 21:58:03', NULL),
(278, 'Screenshot 2024-02-01 112339.png', 59, '2024-02-01 21:59:34', NULL),
(279, 'Screenshot 2024-02-01 112347.png', 59, '2024-02-01 21:59:34', NULL),
(280, 'Screenshot 2024-02-01 112355.png', 59, '2024-02-01 21:59:34', NULL),
(281, 'Screenshot 2024-02-01 112404.png', 59, '2024-02-01 21:59:34', NULL),
(282, 'Screenshot 2024-02-01 112413.png', 59, '2024-02-01 21:59:34', NULL),
(283, 'Screenshot 2024-02-01 112657.png', 60, '2024-02-01 22:01:08', NULL),
(284, 'Screenshot 2024-02-01 112708.png', 60, '2024-02-01 22:01:08', NULL),
(285, 'Screenshot 2024-02-01 112718.png', 60, '2024-02-01 22:01:08', NULL),
(286, 'Screenshot 2024-02-01 112727.png', 60, '2024-02-01 22:01:08', NULL),
(287, 'Screenshot 2024-02-01 112736.png', 60, '2024-02-01 22:01:08', NULL),
(288, 'Screenshot 2024-02-01 112959.png', 61, '2024-02-01 22:02:42', NULL),
(289, 'Screenshot 2024-02-01 113009.png', 61, '2024-02-01 22:02:42', NULL),
(290, 'Screenshot 2024-02-01 113020.png', 61, '2024-02-01 22:02:42', NULL),
(291, 'Screenshot 2024-02-01 113030.png', 61, '2024-02-01 22:02:42', NULL),
(292, 'Screenshot 2024-02-01 113041.png', 61, '2024-02-01 22:02:42', NULL),
(293, 'Screenshot 2024-02-01 113327.png', 62, '2024-02-01 22:03:55', NULL),
(294, 'Screenshot 2024-02-01 113414.png', 62, '2024-02-01 22:03:55', NULL),
(295, 'Screenshot 2024-02-01 113424.png', 62, '2024-02-01 22:03:55', NULL),
(296, 'Screenshot 2024-02-01 113435.png', 62, '2024-02-01 22:03:55', NULL),
(297, 'Screenshot 2024-02-01 113444.png', 62, '2024-02-01 22:03:55', NULL),
(298, 'Screenshot 2024-02-01 113632.png', 63, '2024-02-01 22:05:19', NULL),
(299, 'Screenshot 2024-02-01 113641.png', 63, '2024-02-01 22:05:19', NULL),
(300, 'Screenshot 2024-02-01 113649.png', 63, '2024-02-01 22:05:19', NULL),
(301, 'Screenshot 2024-02-01 113700.png', 63, '2024-02-01 22:05:19', NULL),
(302, 'Screenshot 2024-02-01 113709.png', 63, '2024-02-01 22:05:19', NULL),
(303, 'Screenshot 2024-02-01 113858.png', 64, '2024-02-01 22:06:37', NULL),
(304, 'Screenshot 2024-02-01 113908.png', 64, '2024-02-01 22:06:37', NULL),
(305, 'Screenshot 2024-02-01 113916.png', 64, '2024-02-01 22:06:37', NULL),
(306, 'Screenshot 2024-02-01 113925.png', 64, '2024-02-01 22:06:37', NULL),
(307, 'Screenshot 2024-02-01 113935.png', 64, '2024-02-01 22:06:37', NULL),
(308, 'Screenshot 2024-02-01 114116.png', 65, '2024-02-01 22:08:00', NULL),
(309, 'Screenshot 2024-02-01 114127.png', 65, '2024-02-01 22:08:00', NULL),
(310, 'Screenshot 2024-02-01 114136.png', 65, '2024-02-01 22:08:00', NULL),
(311, 'Screenshot 2024-02-01 114145.png', 65, '2024-02-01 22:08:00', NULL),
(312, 'Screenshot 2024-02-01 114153.png', 65, '2024-02-01 22:08:00', NULL),
(313, 'Screenshot 2024-02-01 114313.png', 66, '2024-02-01 22:09:17', NULL),
(314, 'Screenshot 2024-02-01 114321.png', 66, '2024-02-01 22:09:17', NULL),
(315, 'Screenshot 2024-02-01 114328.png', 66, '2024-02-01 22:09:17', NULL),
(316, 'Screenshot 2024-02-01 114337.png', 66, '2024-02-01 22:09:17', NULL),
(317, 'Screenshot 2024-02-01 114346.png', 66, '2024-02-01 22:09:17', NULL),
(318, 'Screenshot 2024-02-01 114701.png', 67, '2024-02-01 22:10:54', NULL),
(319, 'Screenshot 2024-02-01 114652.png', 67, '2024-02-01 22:10:54', NULL),
(320, 'Screenshot 2024-02-01 114643.png', 67, '2024-02-01 22:10:54', NULL),
(321, 'Screenshot 2024-02-01 114634.png', 67, '2024-02-01 22:10:54', NULL),
(322, 'Screenshot 2024-02-01 114624.png', 67, '2024-02-01 22:10:54', NULL),
(323, 'Screenshot 2024-02-01 115113.png', 68, '2024-02-01 22:12:20', NULL),
(324, 'Screenshot 2024-02-01 115104.png', 68, '2024-02-01 22:12:20', NULL),
(325, 'Screenshot 2024-02-01 115052.png', 68, '2024-02-01 22:12:20', NULL),
(326, 'Screenshot 2024-02-01 115042.png', 68, '2024-02-01 22:12:20', NULL),
(327, 'Screenshot 2024-02-01 115031.png', 68, '2024-02-01 22:12:20', NULL),
(328, 'Screenshot 2024-02-01 115311.png', 69, '2024-02-01 22:13:36', NULL),
(329, 'Screenshot 2024-02-01 115303.png', 69, '2024-02-01 22:13:36', NULL),
(330, 'Screenshot 2024-02-01 115254.png', 69, '2024-02-01 22:13:36', NULL),
(331, 'Screenshot 2024-02-01 115247.png', 69, '2024-02-01 22:13:36', NULL),
(332, 'Screenshot 2024-02-01 115238.png', 69, '2024-02-01 22:13:36', NULL),
(333, 'Screenshot 2024-02-01 115553.png', 70, '2024-02-01 22:14:53', NULL),
(334, 'Screenshot 2024-02-01 115542.png', 70, '2024-02-01 22:14:53', NULL),
(335, 'Screenshot 2024-02-01 115534.png', 70, '2024-02-01 22:14:53', NULL),
(336, 'Screenshot 2024-02-01 115524.png', 70, '2024-02-01 22:14:53', NULL),
(337, 'Screenshot 2024-02-01 115515.png', 70, '2024-02-01 22:14:53', NULL),
(338, 'Screenshot 2024-02-01 115812.png', 71, '2024-02-01 22:16:15', NULL),
(339, 'Screenshot 2024-02-01 115801.png', 71, '2024-02-01 22:16:15', NULL),
(340, 'Screenshot 2024-02-01 115752.png', 71, '2024-02-01 22:16:15', NULL),
(341, 'Screenshot 2024-02-01 115744.png', 71, '2024-02-01 22:16:15', NULL),
(342, 'Screenshot 2024-02-01 115734.png', 71, '2024-02-01 22:16:15', NULL),
(343, 'Screenshot 2024-02-01 120109.png', 72, '2024-02-01 22:17:22', NULL),
(344, 'Screenshot 2024-02-01 120100.png', 72, '2024-02-01 22:17:22', NULL),
(345, 'Screenshot 2024-02-01 120049.png', 72, '2024-02-01 22:17:22', NULL),
(346, 'Screenshot 2024-02-01 120041.png', 72, '2024-02-01 22:17:22', NULL),
(347, 'Screenshot 2024-02-01 120029.png', 72, '2024-02-01 22:17:22', NULL),
(348, 'Screenshot 2024-02-01 120332.png', 73, '2024-02-01 22:18:37', NULL),
(349, 'Screenshot 2024-02-01 120324.png', 73, '2024-02-01 22:18:37', NULL),
(350, 'Screenshot 2024-02-01 120314.png', 73, '2024-02-01 22:18:37', NULL),
(351, 'Screenshot 2024-02-01 120305.png', 73, '2024-02-01 22:18:37', NULL),
(352, 'Screenshot 2024-02-01 120257.png', 73, '2024-02-01 22:18:37', NULL),
(353, 'Screenshot 2024-02-01 120617.png', 74, '2024-02-01 22:20:07', NULL),
(354, 'Screenshot 2024-02-01 120608.png', 74, '2024-02-01 22:20:07', NULL),
(355, 'Screenshot 2024-02-01 120601.png', 74, '2024-02-01 22:20:07', NULL),
(356, 'Screenshot 2024-02-01 120552.png', 74, '2024-02-01 22:20:07', NULL),
(357, 'Screenshot 2024-02-01 120543.png', 74, '2024-02-01 22:20:07', NULL),
(358, 'Screenshot 2024-02-01 120834.png', 75, '2024-02-01 22:21:58', NULL),
(359, 'Screenshot 2024-02-01 120825.png', 75, '2024-02-01 22:21:58', NULL),
(360, 'Screenshot 2024-02-01 120814.png', 75, '2024-02-01 22:21:58', NULL),
(361, 'Screenshot 2024-02-01 120805.png', 75, '2024-02-01 22:21:58', NULL),
(362, 'Screenshot 2024-02-01 120756.png', 75, '2024-02-01 22:21:58', NULL),
(363, 'Screenshot 2024-02-01 121058.png', 76, '2024-02-01 22:23:08', NULL),
(364, 'Screenshot 2024-02-01 121050.png', 76, '2024-02-01 22:23:08', NULL),
(365, 'Screenshot 2024-02-01 121042.png', 76, '2024-02-01 22:23:08', NULL),
(366, 'Screenshot 2024-02-01 121030.png', 76, '2024-02-01 22:23:08', NULL),
(367, 'Screenshot 2024-02-01 121021.png', 76, '2024-02-01 22:23:08', NULL),
(368, 'Screenshot 2024-02-01 121632.png', 77, '2024-02-01 22:24:31', NULL),
(369, 'Screenshot 2024-02-01 121621.png', 77, '2024-02-01 22:24:31', NULL),
(370, 'Screenshot 2024-02-01 121612.png', 77, '2024-02-01 22:24:31', NULL),
(371, 'Screenshot 2024-02-01 121549.png', 78, '2024-02-01 22:25:41', NULL),
(372, 'Screenshot 2024-02-01 121538.png', 78, '2024-02-01 22:25:41', NULL),
(373, 'Screenshot 2024-02-01 121529.png', 78, '2024-02-01 22:25:41', NULL),
(374, 'Screenshot 2024-02-01 121519.png', 78, '2024-02-01 22:25:41', NULL),
(375, 'Screenshot 2024-02-01 121506.png', 78, '2024-02-01 22:25:41', NULL),
(376, 'Screenshot 2024-02-01 121848.png', 79, '2024-02-01 22:26:46', NULL),
(377, 'Screenshot 2024-02-01 121839.png', 79, '2024-02-01 22:26:46', NULL),
(378, 'Screenshot 2024-02-01 121830.png', 79, '2024-02-01 22:26:46', NULL),
(379, 'Screenshot 2024-02-01 121821.png', 79, '2024-02-01 22:26:46', NULL),
(380, 'Screenshot 2024-02-01 121810.png', 79, '2024-02-01 22:26:46', NULL),
(381, 'Screenshot 2024-02-01 122055.png', 80, '2024-02-01 22:28:01', NULL),
(382, 'Screenshot 2024-02-01 122044.png', 80, '2024-02-01 22:28:01', NULL),
(383, 'Screenshot 2024-02-01 122035.png', 80, '2024-02-01 22:28:01', NULL),
(384, 'Screenshot 2024-02-01 122025.png', 80, '2024-02-01 22:28:01', NULL),
(385, 'Screenshot 2024-02-01 122016.png', 80, '2024-02-01 22:28:01', NULL),
(386, 'Screenshot 2024-02-01 122605.png', 81, '2024-02-01 22:29:24', NULL),
(387, 'Screenshot 2024-02-01 122554.png', 81, '2024-02-01 22:29:24', NULL),
(388, 'Screenshot 2024-02-01 122544.png', 81, '2024-02-01 22:29:24', NULL),
(389, 'Screenshot 2024-02-01 122535.png', 81, '2024-02-01 22:29:24', NULL),
(390, 'Screenshot 2024-02-01 122525.png', 81, '2024-02-01 22:29:24', NULL),
(391, 'Screenshot 2024-02-01 122503.png', 82, '2024-02-01 22:30:56', NULL),
(392, 'Screenshot 2024-02-01 122455.png', 82, '2024-02-01 22:30:56', NULL),
(393, 'Screenshot 2024-02-01 122447.png', 82, '2024-02-01 22:30:56', NULL),
(394, 'Screenshot 2024-02-01 122821.png', 83, '2024-02-01 22:32:06', NULL),
(395, 'Screenshot 2024-02-01 122811.png', 83, '2024-02-01 22:32:06', NULL),
(396, 'Screenshot 2024-02-01 122759.png', 83, '2024-02-01 22:32:06', NULL),
(397, 'Screenshot 2024-02-01 122751.png', 83, '2024-02-01 22:32:06', NULL),
(398, 'Screenshot 2024-02-01 122743.png', 83, '2024-02-01 22:32:06', NULL),
(399, 'Screenshot 2024-02-01 123059.png', 84, '2024-02-01 22:33:13', NULL),
(400, 'Screenshot 2024-02-01 123051.png', 84, '2024-02-01 22:33:13', NULL),
(401, 'Screenshot 2024-02-01 123043.png', 84, '2024-02-01 22:33:13', NULL),
(402, 'Screenshot 2024-02-01 123036.png', 84, '2024-02-01 22:33:13', NULL),
(403, 'Screenshot 2024-02-01 123027.png', 84, '2024-02-01 22:33:13', NULL),
(404, 'Screenshot 2024-02-01 123321.png', 85, '2024-02-01 22:37:28', NULL),
(405, 'Screenshot 2024-02-01 123313.png', 85, '2024-02-01 22:37:28', NULL),
(406, 'Screenshot 2024-02-01 123305.png', 85, '2024-02-01 22:37:28', NULL),
(407, 'Screenshot 2024-02-01 123257.png', 85, '2024-02-01 22:37:28', NULL),
(408, 'Screenshot 2024-02-01 123249.png', 85, '2024-02-01 22:37:28', NULL),
(409, 'Screenshot 2024-02-01 123444.png', 86, '2024-02-01 22:38:21', NULL),
(410, 'Screenshot 2024-02-01 123436.png', 86, '2024-02-01 22:38:21', NULL),
(411, 'Screenshot 2024-02-01 123427.png', 86, '2024-02-01 22:38:21', NULL),
(412, 'Screenshot 2024-02-01 123420.png', 86, '2024-02-01 22:38:21', NULL),
(413, 'Screenshot 2024-02-01 123412.png', 86, '2024-02-01 22:38:21', NULL),
(414, 'Screenshot 2024-02-01 123620.png', 87, '2024-02-01 22:39:08', NULL),
(415, 'Screenshot 2024-02-01 123612.png', 87, '2024-02-01 22:39:08', NULL),
(416, 'Screenshot 2024-02-01 123605.png', 87, '2024-02-01 22:39:08', NULL),
(417, 'Screenshot 2024-02-01 123557.png', 87, '2024-02-01 22:39:08', NULL),
(418, 'Screenshot 2024-02-01 123550.png', 87, '2024-02-01 22:39:08', NULL),
(419, 'Screenshot 2024-02-01 123823.png', 88, '2024-02-01 22:40:02', NULL),
(420, 'Screenshot 2024-02-01 123812.png', 88, '2024-02-01 22:40:02', NULL),
(421, 'Screenshot 2024-02-01 123801.png', 88, '2024-02-01 22:40:02', NULL),
(422, 'Screenshot 2024-02-01 123753.png', 88, '2024-02-01 22:40:02', NULL),
(423, 'Screenshot 2024-02-01 123742.png', 88, '2024-02-01 22:40:02', NULL),
(424, 'Screenshot 2024-02-01 124010.png', 89, '2024-02-01 22:40:49', NULL),
(425, 'Screenshot 2024-02-01 124001.png', 89, '2024-02-01 22:40:49', NULL),
(426, 'Screenshot 2024-02-01 123952.png', 89, '2024-02-01 22:40:49', NULL),
(427, 'Screenshot 2024-02-01 123938.png', 89, '2024-02-01 22:40:49', NULL),
(428, 'Screenshot 2024-02-01 123930.png', 89, '2024-02-01 22:40:49', NULL),
(429, 'Screenshot 2024-02-01 124159.png', 90, '2024-02-01 22:41:33', NULL),
(430, 'Screenshot 2024-02-01 124150.png', 90, '2024-02-01 22:41:33', NULL),
(431, 'Screenshot 2024-02-01 124141.png', 90, '2024-02-01 22:41:33', NULL),
(432, 'Screenshot 2024-02-01 124132.png', 90, '2024-02-01 22:41:33', NULL),
(433, 'Screenshot 2024-02-01 124117.png', 90, '2024-02-01 22:41:33', NULL),
(434, 'Screenshot 2024-02-01 124404.png', 91, '2024-02-01 22:42:34', NULL),
(435, 'Screenshot 2024-02-01 124355.png', 91, '2024-02-01 22:42:34', NULL),
(436, 'Screenshot 2024-02-01 124345.png', 91, '2024-02-01 22:42:34', NULL),
(437, 'Screenshot 2024-02-01 124337.png', 91, '2024-02-01 22:42:34', NULL),
(438, 'Screenshot 2024-02-01 124327.png', 91, '2024-02-01 22:42:34', NULL),
(439, 'Screenshot 2024-02-01 124607.png', 92, '2024-02-01 22:43:23', NULL),
(440, 'Screenshot 2024-02-01 124558.png', 92, '2024-02-01 22:43:23', NULL),
(441, 'Screenshot 2024-02-01 124549.png', 92, '2024-02-01 22:43:23', NULL),
(442, 'Screenshot 2024-02-01 124538.png', 92, '2024-02-01 22:43:23', NULL),
(443, 'Screenshot 2024-02-01 124529.png', 92, '2024-02-01 22:43:23', NULL),
(444, 'Screenshot 2024-02-01 124757.png', 93, '2024-02-01 22:44:12', NULL),
(445, 'Screenshot 2024-02-01 124749.png', 93, '2024-02-01 22:44:12', NULL),
(446, 'Screenshot 2024-02-01 124741.png', 93, '2024-02-01 22:44:12', NULL),
(447, 'Screenshot 2024-02-01 124732.png', 93, '2024-02-01 22:44:12', NULL),
(448, 'Screenshot 2024-02-01 124723.png', 93, '2024-02-01 22:44:12', NULL),
(449, 'Screenshot 2024-02-01 125000.png', 94, '2024-02-01 22:44:59', NULL),
(450, 'Screenshot 2024-02-01 124952.png', 94, '2024-02-01 22:44:59', NULL),
(451, 'Screenshot 2024-02-01 124944.png', 94, '2024-02-01 22:44:59', NULL),
(452, 'Screenshot 2024-02-01 125334.png', 95, '2024-02-01 22:45:45', NULL),
(453, 'Screenshot 2024-02-01 125326.png', 95, '2024-02-01 22:45:45', NULL),
(454, 'Screenshot 2024-02-01 125318.png', 95, '2024-02-01 22:45:45', NULL),
(455, 'Screenshot 2024-02-01 125307.png', 95, '2024-02-01 22:45:45', NULL),
(456, 'Screenshot 2024-02-01 125259.png', 95, '2024-02-01 22:45:45', NULL),
(457, 'Screenshot 2024-02-01 125241.png', 96, '2024-02-01 22:46:39', NULL),
(458, 'Screenshot 2024-02-01 125232.png', 96, '2024-02-01 22:46:39', NULL),
(459, 'Screenshot 2024-02-01 125225.png', 96, '2024-02-01 22:46:39', NULL),
(460, 'Screenshot 2024-02-01 125216.png', 96, '2024-02-01 22:46:39', NULL),
(461, 'Screenshot 2024-02-01 125208.png', 96, '2024-02-01 22:46:39', NULL),
(462, 'Screenshot 2024-02-01 125533.png', 97, '2024-02-01 22:47:21', NULL),
(463, 'Screenshot 2024-02-01 125525.png', 97, '2024-02-01 22:47:21', NULL),
(464, 'Screenshot 2024-02-01 125517.png', 97, '2024-02-01 22:47:21', NULL),
(465, 'Screenshot 2024-02-01 125508.png', 97, '2024-02-01 22:47:21', NULL),
(466, 'Screenshot 2024-02-01 125451.png', 97, '2024-02-01 22:47:21', NULL),
(467, 'Screenshot 2024-02-01 125737.png', 98, '2024-02-01 22:48:30', NULL),
(468, 'Screenshot 2024-02-01 125728.png', 98, '2024-02-01 22:48:30', NULL),
(469, 'Screenshot 2024-02-01 125720.png', 98, '2024-02-01 22:48:30', NULL),
(470, 'Screenshot 2024-02-01 125711.png', 98, '2024-02-01 22:48:30', NULL),
(471, 'Screenshot 2024-02-01 125703.png', 98, '2024-02-01 22:48:30', NULL),
(472, 'Screenshot 2024-02-01 125901.png', 99, '2024-02-01 22:49:11', NULL),
(473, 'Screenshot 2024-02-01 125854.png', 99, '2024-02-01 22:49:11', NULL),
(474, 'Screenshot 2024-02-01 125846.png', 99, '2024-02-01 22:49:11', NULL),
(475, 'Screenshot 2024-02-01 125838.png', 99, '2024-02-01 22:49:12', NULL),
(476, 'Screenshot 2024-02-01 125829.png', 99, '2024-02-01 22:49:12', NULL),
(477, 'Screenshot 2024-02-01 130059.png', 100, '2024-02-01 22:49:52', NULL),
(478, 'Screenshot 2024-02-01 130051.png', 100, '2024-02-01 22:49:52', NULL),
(479, 'Screenshot 2024-02-01 130044.png', 100, '2024-02-01 22:49:52', NULL),
(480, 'Screenshot 2024-02-01 130036.png', 100, '2024-02-01 22:49:52', NULL),
(481, 'Screenshot 2024-02-01 130026.png', 100, '2024-02-01 22:49:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `detail` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `gender_id`, `topic_id`, `category_id`, `brand_id`, `color_id`, `price`, `detail`, `created_at`, `updated_at`) VALUES
(10, 'Logo cotton jersey sweatshirt', 1, 1, 6, 13, 8, 621600, 'Material: 100% cotton<br>\r\nCare instructions: machine wash at 30 degrees<br>\r\nMade in Portugal<br>\r\nDesigner color name: Clay<br>\r\nRelaxed fit<br>\r\nLength: regular (hip-length)<br>\r\nHem: ribbed<br>\r\nCuff: ribbed<br>\r\nCollar: crewneck', '2024-01-30 12:29:43', '2024-02-01 18:22:40'),
(12, 'Lieutenant wool and linen peacoat', 1, 1, 1, 12, 9, 248300, 'Material: 60% wool, 40% linen<br>\r\nClosure: double-breasted (six buttons)<br>\r\nLength: long (thigh-length)<br>\r\nPockets: side slit pockets<br>\r\nFully lined<br>\r\nCollar: cutaway<br>\r\nCuff: one button<br>\r\nComes with garment bag<br>\r\nRegular fit<br>\r\nCare instructions: dry clean<br>\r\nMade in Japan<br>\r\nDesigner color name: Black<br>\r\nLining: 100% rayon<br>\r\nMaterial II: 100% cotton<br>\r\nMaterial III: 60% silk, 40% linen<br>\r\nFilling: 100% polyester', '2024-01-30 12:32:49', NULL),
(13, 'Kiyari wool and linen coat', 1, 1, 1, 12, 9, 795400, 'Material: 58% wool, 42% linen<br>\r\nMaterial III: 100% cotton<br>\r\nFilling: 100% silk<br>\r\nPockets: patch pockets<br>\r\nRegular fit<br>\r\nLength: long (thigh-length)<br>\r\nClosure: self-ties<br>\r\nCollar: shawl neck<br>\r\nHem: straight<br>\r\nFully lined<br>\r\nIncludes: presentation box<br>\r\nCare instructions: dry clean<br>\r\nMade in Japan<br>\r\nDesigner color name: DK.Indigo<br>\r\nLining: 74% silk, 14% linen, 7% nylon, 5% polyester<br>\r\nMaterial II: 76% wool, 24% linen', '2024-02-01 20:54:15', NULL),
(14, 'McCloud Slacks Santome wool-blend chinos', 1, 1, 4, 12, 12, 540000, 'Material: 65% wool, 33% linen, 2% silk<br>\r\nPockets: side slit pockets, back pockets<br>\r\nFully lined<br>\r\nChinos<br>\r\nDouble pleat<br>\r\nBelt loops<br>\r\nCare instructions: dry clean<br>\r\nMade in Japan<br>\r\nDesigner color name: Charcoal<br>\r\nLining: 100% cotton<br>\r\nFit: straight<br>\r\nFull length<br>\r\nClosure: concealed buttoned front', '2024-02-01 20:55:26', NULL),
(15, 'Wool polo shirt', 1, 1, 5, 14, 17, 534000, 'Look to Berluti for elevated everyday staples like this polo shirt. Expertly made in Italy from wool, the design features a classic collar, a partially buttoned front, and leather detailing at the shoulders. <br><br>\r\n\r\nMade in Italy<br>\r\nClosure: partially buttoned front<br>\r\nMaterial: 100% wool<br>\r\nDesigner color name: Cotton White<br>\r\nCare instructions: dry clean<br>\r\nTrim: 100% lamb leather', '2024-02-01 20:57:09', NULL),
(16, 'Cotton twill pants', 1, 1, 4, 15, 12, 177000, 'These pants from Stone Island are made from stretchy cotton twill into a straight-leg silhouette. This piece features the Compass badge on the back pocket, a symbol of the brand\'s love for the sea and dedication to innovation. <br><br>\r\n\r\nMaterial: 97% cotton, 3% elastane<br>\r\nCare instructions: machine wash at 30 degrees<br>\r\nMade in Italy<br>\r\nDesigner color name: Lead Grey<br>\r\nPockets: side slit pockets, back pocket<br>\r\nClosure: zipper fly, button fastening', '2024-02-01 20:58:27', NULL),
(18, 'Cotton gabardine cargo pants', 1, 1, 4, 18, 17, 619000, 'Material: 100% cotton<br>\r\nContains non-textile parts of animal origin<br>\r\nCare instructions: machine wash at 30 degrees<br>\r\nMade in Italy<br>\r\nDesigner color name: Neve<br>\r\nClosure: zipper fly, button fastening<br>\r\nPockets: side slit pockets, back pockets, cargo pockets<br>\r\nLining: 100% cotton<br>\r\nLining II: 58% cotton, 42% polyester', '2024-02-01 21:00:55', NULL),
(19, 'Checked blazer', 1, 1, 1, 3, 11, 1158000, 'Material: 50% polyester, 50% rayon<br>\r\nNot canvassed<br>\r\nRegular fit<br>\r\nLength: regular (hip-length)<br>\r\nNotched lapel<br>\r\nPlaid<br>\r\nClosure: single-breasted (two buttons)<br>\r\nPockets: flap pockets, breast pocket, internal pocket<br>\r\nCuff: four buttons<br>\r\nElbow patches<br>\r\nCare instructions: dry clean<br>\r\nMade in Japan<br>\r\nDesigner color name: Beige<br>\r\nLining: 100% cupro<br>\r\nDetails: 100% wool<br>\r\nFully lined<br>\r\nJacket construction: soft structured<br>\r\nShoulder construction: unstructured', '2024-02-01 21:03:30', NULL),
(20, 'V-neckline cardigan', 1, 1, 3, 3, 9, 402000, 'Material: 70% polyester, 30% wool<br>\r\nLength: regular (hip-length)<br>\r\nCollar: V-neck<br>\r\nClosure: buttoned front<br>\r\nHem: straight<br>\r\nElbow patches<br>\r\nPockets: snap-buttoned pockets<br>\r\nCare instructions: hand wash<br>\r\nMade in Japan<br>\r\nDesigner color name: Black<br>\r\nDetails: 100% nylon<br>\r\nFilling: 100% polyester<br>\r\nUnlined<br>\r\nSleeves: long-sleeved<br>\r\nRegular fit', '2024-02-01 21:06:01', NULL),
(21, 'Mohair-blend sweater', 1, 1, 3, 20, 5, 534000, 'Material: 32% mohair, 19% polyamide, 16% viscose, 16% acrylic, 16% wool, 1% elastane <br>\r\nCare instructions: hand wash <br>\r\nMade in Italy<br>\r\nDesigner color name: Meadow Melange', '2024-02-01 21:07:31', NULL),
(22, 'Checked cotton shirt', 1, 1, 5, 18, 9, 651000, 'Material: 100% cotton<br>\r\nCuff: one button<br>\r\nHem: straight<br>\r\nCare instructions: machine wash at 30 degrees<br>\r\nMade in Italy<br>\r\nDesigner color name: Piombo/Ciottolo<br>\r\nUnlined<br>\r\nFlannel shirt<br>\r\nRelaxed fit<br>\r\nCollar: spread<br>\r\nClosure: buttoned placket<br>\r\nPockets: breast pockets, snap-buttoned pockets', '2024-02-01 21:09:08', NULL),
(23, 'Silk shirt', 1, 1, 5, 20, 10, 492000, 'Material: 100% silk<br>\r\nCare instructions: dry clean<br>\r\nMade in Italy<br>\r\nDesigner color name: Dark Tobacco<br>\r\nClosure: buttoned front<br>\r\nCuff: two buttons', '2024-02-01 21:10:27', NULL),
(24, 'Marina cotton jersey T-shirt', 1, 1, 7, 15, 4, 114000, 'Printed with a Stone Island Marina logo on the chest, this T-shirt is made from pure cotton. Contrasting trims add a special touch to the classic crew neck design.<br><br>\r\n\r\nMaterial: 100% cotton<br>\r\nCare instructions: machine wash at 30 degrees<br>\r\nMade in Tunisia<br>\r\nDesigner color name: Rust', '2024-02-01 21:11:37', NULL),
(25, 'Rockstud cotton jersey T-shirt', 1, 1, 7, 5, 9, 1120000, 'This T-shirt from Valentino is defined by the gold-toned rockstud embellishments around the neckline and sleeves. The classic style is made from soft cotton jersey and shaped to a slim fit.<br><br>\r\n\r\nMaterial: 100% cotton<br>\r\nCare instructions: hand wash<br>\r\nMade in Italy<br>\r\nDesigner color name: Nero', '2024-02-01 21:13:03', NULL),
(26, 'Norton leather brogues', 1, 2, 12, 17, 10, 591000, 'Upper: leather<br>\r\nLining: leather<br>\r\nSole: leather insole, rubber sole<br>\r\nToe shape: almond toe<br>\r\nMade in Italy<br>\r\nIncludes: dust bags<br>\r\nDesigner color name: 2081 Dbrw<br>\r\nClosure: lace-up<br>\r\nComes with a box', '2024-02-01 21:14:40', NULL),
(27, 'x Oakley Flesh suede slip-on sneakers', 1, 2, 16, 3, 9, 246000, 'Upper: leather, fabric<br>\r\nLining: fabric<br>\r\nSole: fabric insole, rubber sole<br>\r\nToe shape: round toe<br>\r\nMade in China<br>\r\nIncludes: shoe box<br>\r\nDesigner color name: Black', '2024-02-01 21:15:46', NULL),
(28, 'Calaurio velvet lace-up boots', 1, 2, 11, 17, 2, 696000, 'Upper: fabric<br>\r\nComes with extra laces<br>\r\nLining: leather<br>\r\nSole: leather insole, rubber sole<br>\r\nToe shape: round toe<br>\r\nMade in Italy<br>\r\nIncludes: shoe box, dust bag<br>\r\nDesigner color name: 4105 Navy<br>\r\nTrim: leather<br>\r\nClosure: lace-up', '2024-02-01 21:16:38', NULL),
(29, 'Leather cowboy boots', 1, 2, 11, 20, 9, 556000, 'Designed to transcend seasons and trends, Lemaire\'s styles strike the perfect balance between quality and functionality. These leather cowboy boots feature a round toe, tonal piping, and pull straps for easy wearing. <br><br>\r\n\r\nUpper: leather<br>\r\nLining: leather<br>\r\nSole: leather insole and sole<br>\r\nToe shape: round toe<br>\r\nMade in Portugal<br>\r\nIncludes: shoe box, dust bags<br>\r\nDesigner color name: Black', '2024-02-01 21:17:43', NULL),
(30, 'Sean croc-effect velvet slippers', 1, 2, 15, 14, 9, 774000, 'Detailed with leather tassels and golden horsebit accents, these slippers from Berluti will lend elegance to your footwear edit. Made from plush croc-effect velvet, the lined pair is finished with tonal piping. <br><br>\r\n\r\nUpper: fabric<br>\r\nLining: leather<br>\r\nSole: leather insole and sole<br>\r\nToe shape: round toe<br>\r\nMade in Italy<br>\r\nIncludes: shoe box, dust bags<br>\r\nDesigner color name: Black', '2024-02-01 21:18:47', NULL),
(31, 'Triple Stitch shearling-lined suede sneakers', 1, 2, 16, 16, 10, 770000, 'Upper: leather <br>\r\nLining: shearling<br>\r\nSole: shearling insole, rubber sole<br>\r\nToe shape: round toe<br>\r\nMade in Italy<br>\r\nIncludes: dust bags, shoe box<br>\r\nDesigner color name: Greyish Brown<br>\r\nClosure: elasticated strap', '2024-02-01 21:19:40', NULL),
(32, 'Kenzoyama suede desert boots', 1, 2, 11, 19, 5, 413000, 'Kenzo’s ultra-cool designs feature striking prints and carefully considered silhouettes. Set on thick wedge rubber soles, the Kenzoyama suede desert boots are finished with contrast stitching and a logo plaque at the back ankles.<br><br>\r\n\r\nUpper: calf leather<br>\r\nLining: leather<br>\r\nSole: fabric insole, rubber sole<br>\r\nToe shape: round toe<br>\r\nMade in Portugal<br>\r\nIncludes: dust bag, shoe box, extra laces<br>\r\nDesigner color name: Beige<br>\r\nClosure: lace-up', '2024-02-01 21:20:38', NULL),
(33, 'Bubba sneakers', 1, 2, 16, 21, 5, 330000, 'Acne Studios\' Bubba sneakers will inject a dose of Scandi-cool into your wardrobe. The protruding ecru and neon yellow knitted uppers are set atop chunky rubber roles, giving them a unique look.<br><br>\r\n\r\nUpper: fabric<br>\r\nLining: fabric<br>\r\nSole: fabric insole, rubber sole<br>\r\nToe shape: almond toe<br>\r\nMade in China<br>\r\nIncludes: dust bag, shoe box<br>\r\nDesigner color name: Ecru/White<br>\r\nClosure: lace-up', '2024-02-01 21:22:09', NULL),
(34, 'Perry suede penny loafers', 1, 2, 13, 17, 2, 495000, 'Lay the foundation for sharp dressing with the Perry penny loafers from Manolo Blahnik. Handcrafted in Italy, this style is made from navy suede and is well-suited for business or casual wear.<br><br>\r\n\r\nUpper: leather<br>\r\nLining: leather<br>\r\nSole: leather insole and sole<br>\r\nToe shape: round toe<br>\r\nHandmade in Italy<br>\r\nIncludes: shoe box, dust bag', '2024-02-01 21:23:23', NULL),
(35, 'Leather sandals', 1, 2, 14, 18, 9, 413000, 'These sandals from Brunello Cucinelli are made in Italy into a rounded, open-toed silhouette with grained leather straps. The uppers are adjustable through logo-engraved metal buckles and set atop micro tread soles and velvety-soft suede insoles.<br><br>\r\n\r\nToe shape: round open toe<br>\r\nClosure: buckle fastening<br>\r\nSole: leather insole and sole<br>\r\nUpper: leather<br>\r\nDesigner color name: Blue<br>\r\nComes with a box<br>\r\nMade in Italy', '2024-02-01 21:24:40', NULL),
(36, 'G Plage logo sandals', 1, 2, 14, 4, 1, 262000, 'The G Plage sandals from Givenchy will make a much-loved addition to your footwear edit. Boasting logo jacquard crossover straps, the style features leather trims and rests atop comfortable footbeds.<br><br>\r\n\r\nToe shape: round open toe<br>\r\nUpper: fabric<br>\r\nSole: leather insole, rubber sole<br>\r\nComes with dust bags<br>\r\nDesigner color name: Khaki<br>\r\nComes with a box<br>\r\nMade in Italy', '2024-02-01 21:26:11', NULL),
(37, 'Burberry Check slides', 1, 2, 14, 23, 9, 259000, 'Burberry\'s iconic Check pattern originated in the \'20s as a trench coat lining. These slides appear with ergonomically molded rubber soles, embossed logos to the midsoles, and thick straps with mesh overlays.<br><br>\r\n\r\nToe shape: round open toe<br>\r\nUpper: fabric<br>\r\nLining: rubber<br>\r\nComes with a box<br>\r\nSole: rubber insole and sole<br>\r\nDesigner color name: Archive Beige Chk<br>\r\nMade in Italy<br>\r\nComes with dust bag', '2024-02-01 21:27:29', NULL),
(38, 'Cosy leather slippers', 1, 2, 15, 7, 9, 525000, 'Made from smooth leather, Balenciaga\'s Cosy slippers feature the label\'s iconic hardware on the uppers.<br><br>\r\n\r\nLining: leather<br>\r\nToe shape: round toe<br>\r\nUpper: lamb leather<br>\r\nSole: leather insole, leather and rubber sole<br>\r\nComes with dust bags<br>\r\nComes with a box<br>\r\nMade in Italy', '2024-02-01 21:28:52', NULL),
(39, 'Shearling slippers', 1, 2, 15, 6, 9, 455000, 'With a soft shearling finish, these cozy Loewe slippers are detailed with the label\'s signature Anagram leather logo patch and have comfortable insoles.<br><br>\r\n\r\nLining: shearling<br>\r\nSole: shearling insole, leather sole<br>\r\nToe shape: round toe<br>\r\nUpper: shearling<br>\r\nMade in Italy<br>\r\nDesigner color name: Black', '2024-02-01 21:29:59', NULL),
(40, 'Bleached denim tote bag', 1, 3, 27, 21, 2, 198000, 'Stockholm-based Acne Studios has a firmly established cult following thanks to its Scandinavian-cool aesthetic. This bleached light blue and beige denim tote bag has a logo-patch detail, an open top, and an internal slot pocket.<br><br>\r\n\r\nMaterial: fabric<br>\r\nLining: fabric<br>\r\nMade in China<br>\r\nInternal details: internal slot pocket<br>\r\nClosure: open top<br>\r\nTop handles<br>\r\nFront pockets', '2024-02-01 21:33:07', NULL),
(41, 'Checked belt bag', 1, 3, 20, 22, 9, 287000, 'Playful in its experimental essence, Marni accessories will brighten your edit. This technical nylon black belt bag is detailed with an all-over white checked pattern, a rubberized logo patch, and a logo-jacquard strap.<br><br>\r\n\r\nMaterial: fabric<br>\r\nLining: fabric<br>\r\nMade in Italy<br>\r\nDesigner color name: Black<br>\r\nClosure: zipped top<br>\r\nAdjustable shoulder strap<br>\r\nZipped front pocket<br>\r\nComes with dust bag', '2024-02-01 21:34:21', NULL),
(42, 'Explore canvas backpack', 1, 3, 19, 19, 2, 210000, 'Kenzo’s ultra-cool designs feature striking prints and carefully considered silhouettes. This approach is exemplified by the Explore backpack, which reimagines adventurer gear in a compact canvas form. The hardy model features two spacious compartments and a flower-shaped patch on the front.<br><br>\r\n\r\nMaterial: fabric<br>\r\nMade in Vietnam<br>\r\nDesigner color name: Midnight Blue<br>\r\nTrim: leather', '2024-02-01 21:35:22', NULL),
(43, 'Messenger bag', 1, 3, 21, 21, 9, 245000, 'Stockholm-based Acne Studios has a firmly established cult following thanks to its Scandinavian-cool aesthetic. This messenger bag is made from a crinkled material with a secure flap closure and spacious internal compartment.<br><br>\r\n\r\nAdjustable shoulder strap<br>\r\nMaterial: fabric<br>\r\nInternal details: fabric lining<br>\r\nMade in China<br>\r\nClosure: slot-tab fastening', '2024-02-01 21:36:24', NULL),
(44, 'G Trek duffle bag', 1, 3, 23, 4, 9, 720000, 'Carry your travel essentials in style with the G-Trek duffle bag from Givenchy. Made from nylon, it features a 4G zipper closure, an adjustable strap and top handles, finishing with logo detailing.<br><br>\r\n\r\nComes with dust bag<br>\r\nClosure: zipped top<br>\r\nDesigner color name: Black<br>\r\nMaterial: fabric<br>\r\nMade in Italy<br>\r\nTop handles, Adjustable shoulder strap<br>\r\nSide slot pocket', '2024-02-01 21:37:36', NULL),
(45, 'Leather duffel bag', 1, 3, 23, 18, 8, 2340000, 'For your next weekend getaway, opt for this duffel bag from Brunello Cucinelli. Made in Italy from grained leather with contrasting accents, it has a spacious interior and a removable shoulder strap.<br><br>\r\n\r\nProtective feet<br>\r\nMade in Italy<br>\r\nDesigner color name: White<br>\r\nInternal details: fabric lining, internal slot pocket, internal zipped pocket<br>\r\nClosure: zipped top<br>\r\nComes with dust bag<br>\r\nMaterial: leather<br>\r\nDetachable, adjustable shoulder strap, Top handles', '2024-02-01 21:38:54', NULL),
(46, 'Locò Mini leather crossbody bag', 1, 3, 22, 5, 9, 623000, 'Topped with brand-signature hardware, the Locò Mini phone pouch is crafted in Italy from leather with a detachable crossbody strap. At once iconic and understated, Valentino Garavani\'s VLogo carries the Maison\'s legacy of elegance.<br><br>\r\n\r\nClosure: magnetic-tab fastening<br>\r\nColor of strap: black<br>\r\nInternal details: internal slot pocket, leather lining<br>\r\nMaterial: leather<br>\r\nComes with a box, Comes with dust bag<br>\r\nMade in Italy<br>\r\nDetachable, adjustable shoulder strap', '2024-02-01 21:40:15', NULL),
(47, 'Denny Mini checked tote bag', 1, 3, 27, 23, 9, 594000, 'Burberry\'s iconic Vintage Check pattern originated in the \'20s as a trench coat lining. The maximized version decorates this tote bag, complete with twin top handles, an adjustable shoulder strap, and an internal pocket.<br><br>\r\n\r\nMaterial: fabric<br>\r\nInternal details: internal slot pocket, fabric lining<br>\r\nDesigner color name: Charcoal<br>\r\nDetachable, adjustable shoulder strap, Top handles<br>\r\nComes with dust bag<br>\r\nMade in Moldova', '2024-02-01 21:41:31', NULL),
(48, 'Technical holdall bag', 1, 3, 23, 16, 9, 906000, 'Prepare for your next getaway with Zegna’s capacious holdall. Made from lightweight, hard-wearing technical fabric with leather accents, the style features a hardware logo and has a zipped fastening.<br><br>\r\n\r\nComes with dust bag<br>\r\nTrim: leather<br>\r\nInternal details: internal zipped pockets, fabric lining<br>\r\nDesigner color name: Black<br>\r\nMade in Italy<br>\r\nColor of fastening: silver<br>\r\nClosure: zipped top<br>\r\nMaterial: fabric<br>\r\nDetachable, adjustable shoulder strap, Top handles', '2024-02-01 21:42:50', NULL),
(49, 'Leather crossbody bag', 1, 3, 21, 7, 9, 1113000, 'This crossbody bag from Balenciaga is crafted from leather, fastening with a silver zip at the top. Featuring the brand\'s name at every angle, this style has an adjustable shoulder strap and is fully lined.<br><br>\r\n\r\nBack slot pocket, Zipped front pocket<br>\r\nMaterial: lamb leather<br>\r\nClosure: zipped top<br>\r\nInternal details: fabric lining<br>\r\nDetachable zipped pouch, Detachable charm<br>\r\nDesigner color name: Black<br>\r\nMade in Italy<br>\r\nComes with dust bag<br>\r\nLeather shoulder strap, Adjustable shoulder strap<br>\r\nColor of fastening: silver', '2024-02-01 21:44:06', NULL),
(50, 'Poldo virgin wool coat', 2, 1, 28, 2, 9, 563000, 'Make an elegant addition to your edit with the Poldo coat from \'S Max Mara. Made from virgin wool, the gray-toned style features notched lapels and a belt to accentuate the waist.<br><br>\r\n\r\nLining: fully lined, 100% silk<br>\r\nMade in China<br>\r\nCare instructions: dry clean<br>\r\nPockets: side slit pockets<br>\r\nMaterial: 100% virgin wool', '2024-02-01 21:47:13', NULL),
(51, 'Wool coat', 2, 1, 28, 1, 10, 735000, 'Define your dress code with styles from Toteme, a Stockholm-based brand dedicated to creating a modern uniform. Made purely from wool, this coat is a relaxed piece designed for stylish layering on a chilly day.<br><br>\r\n\r\nMaterial: 100% wool<br>\r\nCare instructions: dry clean<br>\r\nMade in China<br>\r\nDesigner color name: Chocolate Melange<br>\r\nClosure: buttoned front<br>\r\nPockets: side slit pockets', '2024-02-01 21:48:22', NULL),
(52, 'High-rise tapered corduroy pants', 2, 1, 31, 18, 2, 980000, 'Brunello Cucinelli\'s designs are created in Solomeo, a medieval hamlet whose art and traditions are woven into the house\'s every fiber. These low-sheen corduroy pants are perfect for elevating off-duty looks.<br><br>\r\n\r\nMaterial: 100% viscose<br>\r\nPockets: side slit pockets, back pockets<br>\r\nCare instructions: dry clean<br>\r\nMade in Italy<br>\r\nLining: 36% polyester, 32% acetate, 32% cupro<br>\r\nContains non-textile parts of animal origin<br>\r\nClosure: zipper fly, button and hook fastenings<br>\r\nBelt loops', '2024-02-01 21:50:21', NULL),
(53, 'High-rise wide-leg jeans', 2, 1, 29, 22, 2, 378000, 'Bring Marni\'s eccentric aesthetic to your everyday edit with these jeans. Made from cotton denim, the pair is a classic 5-pocket style with wide legs and a high-rise waistline.<br><br>\r\n\r\nPockets: five pockets<br>\r\nMade in Italy<br>\r\nCare instructions: machine wash at 30 degrees<br>\r\nDesigner color name: Royal<br>\r\nClosure: zipper fly, button fastening<br>\r\nMaterial: 100% cotton<br>\r\nContains non-textile parts of animal origin', '2024-02-01 21:51:53', NULL),
(54, 'High-rise chambray wide-leg jeans', 2, 1, 29, 5, 2, 980000, 'Your warm-weather ensemble is elegant in these jeans from Valentino. The high-rise silhouette is crafted from the brand’s lightweight chambray denim, has breezy wide legs, and features a drawstring waist for comfortable all-day wear.<br><br>\r\n\r\nPocket lining: 35% cotton, 65% polyester<br>\r\nMade in Italy<br>\r\nCare instructions: machine wash at 30 degrees<br>\r\nMaterial: 100% cotton', '2024-02-01 21:53:05', NULL),
(55, 'Ribbed-knit wool turtleneck sweater', 2, 1, 30, 1, 8, 364000, 'Define your dress code with styles from Toteme, a Stockholm-based brand dedicated to creating a modern uniform. Characterized by a thick ribbed-knit, this beige sweater is made from wool to a relaxed fit and stands out with a stylish overlapping turtleneck.<br><br>\r\n\r\nMaterial: 100% wool<br>\r\nCare instructions: hand wash<br>\r\nMade in China<br>\r\nDesigner color name: Stone', '2024-02-01 21:54:22', NULL),
(56, 'Paneled cashmere and wool-blend jacket', 2, 1, 30, 18, 10, 2240000, 'Material: 47% cashmere, 47% wool, 4% polyester, 2% polyamide<br>\r\nClosure: zipped front<br>\r\nPockets: patch pockets<br>\r\nCare instructions: dry clean<br>\r\nMade in Italy<br>\r\nDesigner color name: Camel<br>\r\nTrim: 100% polyester<br>\r\nMaterial II: 55% polyester, 45% cotton', '2024-02-01 21:55:33', NULL),
(57, 'Silk chiffon shirt', 2, 1, 8, 5, 9, 1050000, 'Material: 100% silk<br>\r\nCare instructions: dry clean<br>\r\nMade in Italy<br>\r\nDesigner color name: Nero<br>\r\nMaterial II: 100% cotton<br>\r\nClosure: buttoned placket', '2024-02-01 21:56:48', NULL),
(58, 'Polka-dot cady top', 2, 1, 8, 22, 9, 325000, 'This sleeveless top from Marni is made from fluid cady fabric and boasts a large polka-dot pattern throughout. Wear it with the matching skirt for a playful look.<br><br>\r\n\r\nMaterial: 96% viscose, 4% elastane<br>\r\nCare instructions: dry clean<br>\r\nMade in Italy<br>\r\nDesigner color name: Black<br>\r\nLining: 68% acetate, 32% polyester<br>\r\nClosure: zipped back', '2024-02-01 21:58:03', NULL),
(59, 'High-neck satin top', 2, 1, 8, 1, 12, 266000, 'Define your dress code with styles from Toteme, a Stockholm-based brand dedicated to creating a modern uniform. This top is made from fluid satin and boasts a high neck and flared raglan sleeves.<br><br>\r\n\r\nMaterial: 100% viscose<br>\r\nCare instructions: hand wash<br>\r\nMade in China<br>\r\nDesigner color name: Lead<br>\r\nClosure: invisible zipper<br>\r\nButtoned cuffs', '2024-02-01 21:59:34', NULL),
(60, 'Velvet denim crop top', 2, 1, 8, 6, 10, 275000, 'This crop top from Loewe is an effortlessly cool choice for your next night out in the city. It’s made from cotton velvet with a washed denim effect and boasts a sweetheart neckline.<br><br>\r\n\r\nMaterial: 98% cotton, 2% elastane<br>\r\nCare instructions: dry clean<br>\r\nMade in Italy<br>\r\nDesigner color name: Coffee Bean<br>\r\nClosure: buttoned back', '2024-02-01 22:01:08', NULL),
(61, 'Selvi wool blazer dress', 2, 1, 28, 2, 9, 979000, 'Material: 98% wool, 2% elastane<br>\r\nCare instructions: dry clean<br>\r\nMade in Italy<br>\r\nDesigner color name: Nero<br>\r\nClosure: buttoned front<br>\r\nPockets: flap pockets<br>\r\nMaterial II: 100% polyester<br>\r\nLining: 95% acetate, 5% elastane', '2024-02-01 22:02:42', NULL),
(62, 'Crêpe Couture minidress', 2, 1, 9, 5, 9, 1920000, 'Material: 65% wool, 35% silk<br>\r\nCare instructions: dry clean<br>\r\nMade in Italy<br>\r\nDesigner color name: Nero/Bianco', '2024-02-01 22:03:55', NULL),
(63, 'Crêpe Couture ruffled minidress', 2, 1, 9, 5, 9, 2450000, 'Material: 65% wool, 35% silk<br>\r\nCare instructions: dry clean<br>\r\nMade in Italy<br>\r\nDesigner color name: Nero/Avorio<br>\r\nClosure: zipped back', '2024-02-01 22:05:19', NULL),
(64, 'Pleated faux leather midi skirt', 2, 1, 10, 3, 9, 738000, 'Material: 100% polyurethane<br>\r\nCare instructions: dry clean<br>\r\nMade in Japan<br>\r\nDesigner color name: Black<br>\r\nLining: 100% cupro<br>\r\nClosure: zipper, hook fastening', '2024-02-01 22:06:37', NULL),
(65, 'Wool-blend maxi skirt', 2, 1, 10, 4, 9, 595000, 'Material: 81% wool, 19% polyamide<br>\r\nCare instructions: dry clean<br>\r\nMade in Italy<br>\r\nDesigner color name: Dark Grey<br>\r\nClosure: buttoned front', '2024-02-01 22:08:00', NULL),
(66, 'Mohair, wool and cashmere midi skirt', 2, 1, 10, 18, 12, 980000, 'Material: 28% mohair, 34% wool, 20% polyamide, 13% cashmere, 5% silk<br>\r\nCare instructions: hand wash<br>\r\nMade in Italy<br>\r\nDesigner color name: Charcoal/Brown', '2024-02-01 22:09:17', NULL),
(67, 'Rockstud M-Way leather combat boots', 2, 2, 32, 5, 9, 1540000, 'Upper: leather<br>\r\nLining: leather<br>\r\nSole: leather insole, rubber sole<br>\r\nToe shape: square toe<br>\r\nMade in Italy<br>\r\nIncludes: shoe box, dust bags<br>\r\nDesigner color name: Nero<br>\r\nTrim: fabric<br>\r\nClosure: lace-up, zipped side', '2024-02-01 22:10:54', NULL),
(68, 'Embellished suede lace-up boots', 2, 2, 32, 18, 10, 720000, 'Upper: leather<br>\r\nLining: leather<br>\r\nSole: leather insole, rubber sole<br>\r\nToe shape: round toe<br>\r\nMade in Italy<br>\r\nIncludes: shoe box, dust bags<br>\r\nDesigner color name: Misia<br>\r\nClosure: lace-up, zipped side', '2024-02-01 22:12:20', NULL),
(69, 'Dada leather combat boots', 2, 2, 32, 22, 9, 556000, 'Upper: calf leather<br>\r\nLining: leather<br>\r\nSole: leather insole, rubber sole<br>\r\nToe shape: round toe<br>\r\nMade in Spain<br>\r\nIncludes: shoe box, dust bags<br>\r\nDesigner color name: Black<br>\r\nClosure: lace-up', '2024-02-01 22:13:36', NULL),
(70, 'The Oval leather loafers', 2, 2, 17, 1, 9, 378000, 'Elevate your work attire with these refined and minimalist essentials by Toteme. The Oval timeless loafers feature subtle gold text detailing on smooth Italian leather rounded toe, which rests on a modest stacked heel.<br><br>\r\n\r\nUpper: leather<br>\r\nLining: leather<br>\r\nSole: leather insole and sole<br>\r\nToe shape: round toe<br>\r\nMade in Italy<br>\r\nIncludes: shoe box<br>\r\nDesigner color name: Black<br>\r\nComes with dust bag', '2024-02-01 22:14:53', NULL),
(71, 'Tan-Go patent leather ballet flats', 2, 2, 17, 5, 9, 504000, 'Valentino Garavani veers from its signature embellished finishes, taking an understated approach with the Tan-Go ballet flats. Crafted in Italy from glossy patent leather, the round-toe design features adjustable ankle straps with custom VLogo Signature buckle fastening.<br><br>\r\n\r\nComes with dust bag<br>\r\nToe shape: round toe<br>\r\nSole: leather insole and sole<br>\r\nUpper: leather<br>\r\nDesigner color name: Nero<br>\r\nComes with a box<br>\r\nClosure: buckle-fastening ankle strap<br>\r\nMade in Italy', '2024-02-01 22:16:15', NULL),
(72, 'Puffy patent leather ballet flats', 2, 2, 17, 6, 2, 400000, 'All of Loewe\'s leather goods are handcrafted in Spain, reflecting the house\'s centuries-long expertise and artisanal methods. The Puffy ballet flats, made from shiny blue patent leather, are complete with an oversized bow at the rounded toes.<br><br>\r\n\r\nSole: leather insole and sole<br>\r\nToe shape: square toe<br>\r\nUpper: leather<br>\r\nComes with dust bags<br>\r\nComes with a box<br>\r\nMade in Italy', '2024-02-01 22:17:22', NULL),
(73, 'The Peep-Toe satin flats', 2, 2, 17, 1, 9, 276000, 'Define your dress code with styles from Toteme, a Stockholm-based brand dedicated to creating a modern uniform. Designed to be dressed up or down, the Peep-Toe flats are made from a luxe satin blend and are lined with soft sheepskin leather.<br><br>\r\n\r\nToe shape: pointed open toe<br>\r\nUpper: fabric<br>\r\nSole: leather insole and sole<br>\r\nComes with a box<br>\r\nDesigner color name: Black<br>\r\nMade in Italy<br>\r\nComes with dust bag', '2024-02-01 22:18:37', NULL),
(74, 'Show lamb hair pumps', 2, 2, 18, 4, 1, 425000, 'Upper: leather<br>\r\nLining: fabric, leather<br>\r\nSole: leather insole and sole<br>\r\nToe shape: square toe<br>\r\nMade in Italy<br>\r\nIncludes: shoe box<br>\r\nDesigner color name: Absynthe Green', '2024-02-01 22:20:07', NULL),
(75, 'VLogo Signature 80 slingback pumps', 2, 2, 18, 5, 9, 623000, 'Upper: fabric<br>\r\nLining: leather<br>\r\nSole: leather insole and sole<br>\r\nToe shape: pointed toe<br>\r\nMade in Italy<br>\r\nIncludes: dust bags, shoe box<br>\r\nDesigner color name: Nero', '2024-02-01 22:21:58', NULL),
(76, 'Toy embellished mesh pumps', 2, 2, 18, 6, 9, 700000, 'An entrance-making pair, the Toy pumps from Loewe are crafted from lightweight mesh and embellished with dainty crystals. They boast the house\'s signature petal-toe silhouette and rest atop sculptural lacquered heels.<br><br>\r\n\r\nUpper: fabric, rubber<br>\r\nLining: fabric<br>\r\nSole: leather insole and sole<br>\r\nToe shape: square toe<br>\r\nMade in Italy<br>\r\nIncludes: dust bag, shoe box<br>\r\nDesigner color name: Black/Silver', '2024-02-01 22:23:08', NULL),
(77, 'Show embellished leather pumps', 2, 2, 18, 4, 9, 497000, 'Step into Givenchy’s latest iteration of the Show pumps at your next soirée. The design is crafted from brushed calfskin leather and made complete with three dazzling strass rings at its pointed toes.<br><br>\r\n\r\nUpper: calf leather<br>\r\nLining: leather<br>\r\nSole: leather insole and sole<br>\r\nToe shape: pointed toe<br>\r\nMade in Italy<br>\r\nDesigner color name: Black<br>\r\nComes with a box<br>\r\nComes with dust bag', '2024-02-01 22:24:31', NULL),
(78, 'VLOGO leather mules', 2, 2, 33, 5, 9, 525000, 'These VLogo mules from Valentino Garavani are perfect for elevating everyday looks. Crafted in Italy, these leather sandals feature the brand\'s signature logo at the front in a gold finish.<br><br>\r\n\r\nSole: leather insole and sole<br>\r\nUpper: leather<br>\r\nComes with dust bags<br>\r\nToe shape: square open toe<br>\r\nDesigner color name: Nero<br>\r\nComes with a box<br>\r\nMade in Italy', '2024-02-01 22:25:41', NULL),
(79, 'Rockstud leather sandals', 2, 2, 33, 5, 9, 553000, 'Valentino Garavani looked to ancient architecture to create the now-iconic Rockstud embellishments. Made of calfskin, these sandals have a caged silhouette that\'s enlivened with gold-tone hardware, offset by square open toes.<br><br>\r\n\r\nClosure: buckle fastening<br>\r\nSole: leather insole and sole<br>\r\nUpper: leather<br>\r\nComes with dust bags<br>\r\nDesigner color name: Nero<br>\r\nToe shape: square open toe<br>\r\nComes with a box<br>\r\nMade in Italy', '2024-02-01 22:26:46', NULL),
(80, 'Embellished satin sandals', 2, 2, 33, 22, 14, 440000, 'Perfect for party season, these fuschia pink sandals from Marni will be the statement piece of any outfit. Made from satin, the strappy style is decorated with colorful crystals and has silver metallic heels.<br><br>\r\n\r\nUpper: fabric<br>\r\nLining: fabric<br>\r\nSole: fabric insole, leather sole<br>\r\nToe shape: square open toe<br>\r\nMade in Italy<br>\r\nDesigner color name: Fuchsia<br>\r\nComes with a box<br>\r\nComes with dust bag<br>\r\nClosure: buckle-fastening ankle strap', '2024-02-01 22:28:01', NULL),
(81, 'Rockstud metallic leather sandals', 2, 2, 33, 5, 14, 660000, 'Noble inspirations meet tough-luxe glamor in the Rockstud sandals from Valentino Garavani. Referencing pyramidal structures from ancient architecture, the metallic leather pair sit atop slim stiletto heels and is secured with adjustable straps.<br><br>\r\n\r\nClosure: buckle fastening<br>\r\nSole: leather insole and sole<br>\r\nUpper: leather<br>\r\nComes with a box, Comes with dust bags<br>\r\nDesigner color name: Bouganville<br>\r\nToe shape: square open toe<br>\r\nMade in Italy', '2024-02-01 22:29:24', NULL),
(82, 'Bubba knit sneakers', 2, 2, 34, 21, 16, 385000, 'Stockholm-based Acne Studios has a firmly established cult following thanks to its Scandinavian-cool aesthetic. The Bubba knit sneakers feature printed uppers atop faded rubber soles for a worn-in look.<br><br>\r\n\r\nUpper: fabric<br>\r\nLining: fabric<br>\r\nSole: fabric insole, rubber sole<br>\r\nToe shape: almond toe<br>\r\nMade in China<br>\r\nClosure: lace-up<br>\r\nComes with dust bags<br>\r\nComes with a box', '2024-02-01 22:30:56', NULL),
(83, 'Pace mesh sneakers', 2, 2, 34, 19, 14, 234000, 'Kenzo\'s Pace sneakers in breathable mesh radiate sporty sophistication. They feature the K and Kenzo logo on the tongue and back cap, paired with a secure lace-up closure for an effortlessly stylish stride.<br><br>\r\n\r\nUpper: fabric, rubber<br>\r\nLining: fabric<br>\r\nSole: fabric insole, rubber sole<br>\r\nToe shape: round toe<br>\r\nMade in Vietnam<br>\r\nIncludes: dust bag, shoe box<br>\r\nClosure: lace-up', '2024-02-01 22:32:06', NULL),
(84, 'Paula\'s Ibiza Terra printed canvas shoes', 2, 2, 34, 6, 5, 310000, 'The Terra shoes are made from Anagram-printed canvas with a vulcanized rubber sole. This piece is part of a continuing collaboration that combines Loewe\'s artisan legacy with the carefree spirit of Paula\'s Ibiza.<br><br>\r\n\r\nUpper: fabric<br>\r\nSole: fabric insole, rubber sole<br>\r\nMade in Spain<br>\r\nDesigner color name: Oat Milk', '2024-02-01 22:33:13', NULL),
(85, 'Suede backpack', 2, 3, 35, 18, 10, 2400000, 'Material: leather<br>\r\nLining: leather<br>\r\nMade in Italy<br>\r\nDesigner color name: Brown Rosato<br>\r\nClosure: magnetic fastening, drawstring top<br>\r\nTop handle, Adjustable shoulder straps<br>\r\nInternal details: internal zipped pocket<br>\r\nIncludes: dust bag', '2024-02-01 22:37:28', NULL),
(86, 'Micro checked canvas backpack', 2, 3, 35, 23, 10, 1150000, 'Founded in 1856, Burberry has built a reputation as a British heritage brand with unparalleled craftsmanship and groundbreaking innovation. Patterned with the house\'s checked motif, this compact Micro backpack is made from sturdy canvas with calfskin trims.<br><br>\r\n\r\nTrim: calf leather<br>\r\nMaterial: fabric<br>\r\nDesigner color name: Dark Birch Brown<br>\r\nInternal details: fabric lining<br>\r\nComes with dust bag<br>\r\nMade in Italy<br>\r\nClosure: magnetic fastening, drawstring top<br>\r\nAdjustable shoulder straps', '2024-02-01 22:38:21', NULL),
(87, 'Cecile Medium quilted leather bucket bag', 2, 3, 35, 10, 9, 1990000, 'Material: lamb leather<br>\r\nLining: lamb leather<br>\r\nMade in Italy<br>\r\nDesigner color name: Noir<br>\r\nLeather shoulder strap<br>\r\nClosure: open top<br>\r\nComes with dust bag', '2024-02-01 22:39:08', NULL),
(88, 'Medium shearling belt bag', 2, 3, 36, 18, 17, 850000, 'Each Brunello Cucinelli design is handmade in Solomeo, a medieval hamlet whose art and traditions are woven into the house\'s every fiber. This ultra-soft belt bag is crafted from wool-blend shearling with a touch of cashmere, and features a roomy interior for your daily essentials.<br><br>\r\n\r\nMaterial: fabric<br>\r\nClosure: zipped top<br>\r\nDesigner color name: Panama<br>\r\nInternal details: internal zipped pocket<br>\r\nTrim: leather<br>\r\nComes with dust bag<br>\r\nMade in Italy<br>\r\nAdjustable waist strap', '2024-02-01 22:40:02', NULL),
(89, 'GG Marmont leather belt bag', 2, 3, 26, 8, 15, 1300000, 'Made from smooth leather, this GG Marmont belt bag from Gucci has a Double G strap crafted from resin. It has a signature chevron matelassé finish.<br><br>\r\n\r\nDetachable chain shoulder strap<br>\r\nMade in Italy<br>\r\nDesigner color name: M.White/M.Wh/M.Wh<br>\r\nComes with dust bag<br>\r\nClosure: snap-buttoned fastening<br>\r\nMaterial: leather<br>\r\nColor of fastening: silver<br>\r\nInternal details: leather lining', '2024-02-01 22:40:49', NULL),
(90, 'Classic Monogram leather belt bag', 2, 3, 36, 10, 9, 995000, 'Saint Laurent elevates the retro-cool belt bag to luxurious territory with this monogrammed rendition. Made in Italy from sleek black leather, the zip top design is complete with the label\'s signature YSL logo in gold-tone hardware. Let yours cinch flowing dresses for an ultra-modern ensemble.<br><br>\r\n\r\nClosure: zipped top<br>\r\nColor of fastening: antique gold<br>\r\nInternal details: Card slots, fabric lining, internal slot pocket<br>\r\nMaterial: calf leather<br>\r\nComes with dust bag<br>\r\nMade in Italy<br>\r\nAdjustable shoulder strap', '2024-02-01 22:41:33', NULL),
(91, 'Rockstud Spike Mini leather shoulder bag', 2, 3, 24, 5, 17, 1300000, 'Material: calf leather<br>\r\nLining: leather<br>\r\nMade in Italy<br>\r\nDesigner color name: Ivory<br>\r\nClosure: magnetic fastening<br>\r\nTop handle, Leather shoulder strap<br>\r\nInternal details: card slot<br>\r\nComes with dust bag<br>\r\nComes with a box', '2024-02-01 22:42:34', NULL),
(92, 'Uptown leather clutch', 2, 3, 24, 10, 17, 495000, 'Whether you\'re heading to an appointment or a soirée, the Uptown leather clutch from Saint Laurent will lend any look a touch of Parisian glamour. Made in Italy from grain de poudre calfskin leather in \'Crema Soft\' white, it has an envelope silhouette with the brand\'s iconic YSL monogram in golden hardware.<br><br>\r\n\r\nMaterial: calf leather<br>\r\nLining: leather<br>\r\nMade in Italy<br>\r\nDesigner color name: Blanc Vintage<br>\r\nInternal details: fabric lining<br>\r\nColor of fastening: gold<br>\r\nClosure: magnetic fastening<br>\r\nComes with dust bag', '2024-02-01 22:43:23', NULL),
(93, 'Antigona Toy metallic leather tote bag', 2, 3, 26, 4, 11, 1550000, 'Material: calf leather<br>\r\nLining: fabric<br>\r\nMade in Italy<br>\r\nDesigner color name: Dusty Gold<br>\r\nDetachable shoulder strap, Top handles<br>\r\nClosure: magnetic fastening<br>\r\nComes with dust bag', '2024-02-01 22:44:12', NULL),
(94, 'Intrecciato metallic leather pouch', 2, 3, 24, 9, 15, 790000, 'Material: leather<br>\r\nLining: leather<br>\r\nMade in Italy<br>\r\nDesigner color name: Silver-Silver<br>\r\nClosure: zipped top<br>\r\nInternal details: card slot', '2024-02-01 22:44:59', NULL),
(95, 'GG Marmont Small leather shoulder bag', 2, 3, 26, 8, 15, 2800000, 'Material: leather<br>\r\nLining: fabric<br>\r\nMade in Italy<br>\r\nDesigner color name: Iride Snow Lt Blue<br>\r\nClosure: push-stud fastening tab<br>\r\nInternal details: internal zipped pocket<br>\r\nShoulder straps<br>\r\nIncludes: dust bag', '2024-02-01 22:45:45', NULL),
(96, 'Knot metallic leather clutch', 2, 3, 25, 9, 11, 3400000, 'Material: leather<br>\r\nLining: leather<br>\r\nMade in Italy<br>\r\nDesigner color name: Silver-Gold/Silv-Si<br>\r\nTrim: brass<br>\r\nClosure: push-lock fastening', '2024-02-01 22:46:39', NULL),
(97, 'Kate tasseled leather clutch', 2, 3, 25, 10, 9, 1250000, 'Finished with a dazzling chain tassel trim, the Kate clutch is crafted from smooth, glossy leather with a magnetic closure and interior card slot. One of the most famous symbols in fashion, the YSL monogram consists of the intertwined initials of Saint Laurent\'s founder.<br><br>\r\n\r\nMaterial: calf leather<br>\r\nLining: leather<br>\r\nMade in Italy<br>\r\nDesigner color name: Noir<br>\r\nInternal details: card slot<br>\r\nClosure: magnetic fastening<br>\r\nComes with dust bag', '2024-02-01 22:47:21', NULL),
(98, 'Medium leather tote bag', 2, 3, 37, 5, 17, 3800000, 'Material: leather<br>\r\nLining: leather<br>\r\nMade in Italy<br>\r\nDesigner color name: Ivory<br>\r\nTop handle<br>\r\nInternal details: internal zipped pocket', '2024-02-01 22:48:30', NULL),
(99, 'Mini logo leather-trimmed canvas tote bag', 2, 3, 37, 8, 8, 1400000, 'Material: fabric<br>\r\nLining: fabric<br>\r\nMade in Italy<br>\r\nDesigner color name: Be.Eb.Greg.H.Br/H.Br<br>\r\nClosure: open top<br>\r\nTop handles, Detachable, adjustable shoulder strap<br>\r\nTrim: leather<br>\r\nDetachable zipped pouch<br>\r\nComes with dust bag', '2024-02-01 22:49:11', NULL),
(100, 'Hop Large suede tote bag', 2, 3, 37, 9, 5, 3500000, 'Material: leather<br>\r\nLining: leather<br>\r\nMade in Italy<br>\r\nDesigner color name: Acorn N-M Brass<br>\r\nInternal details: internal zipped pocket<br>\r\nClosure: open top<br>\r\nTop handle', '2024-02-01 22:49:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `topic_id`, `created_at`, `updated_at`) VALUES
(1, 'XXXS', 1, '2024-01-25 20:25:05', NULL),
(2, 'XXS', 1, '2024-01-25 20:25:05', NULL),
(3, 'XS', 1, '2024-01-25 20:25:05', NULL),
(4, 'S', 1, '2024-01-25 20:25:46', NULL),
(5, 'M', 1, '2024-01-25 20:25:05', NULL),
(6, 'L', 1, '2024-01-25 20:25:59', NULL),
(7, 'XL', 1, '2024-01-25 20:25:05', NULL),
(8, 'XXL', 1, '2024-01-25 20:25:05', NULL),
(9, 'XXXL', 1, '2024-01-25 20:25:05', NULL),
(10, 'EU 34', 2, '2024-01-26 18:07:03', NULL),
(11, 'EU 35', 2, '2024-01-26 18:10:04', NULL),
(12, 'EU 36', 2, '2024-01-26 18:10:04', NULL),
(13, 'EU 37', 2, '2024-01-26 18:10:04', NULL),
(14, 'EU 38', 2, '2024-01-26 18:10:04', NULL),
(15, 'EU 39', 2, '2024-01-26 18:10:04', NULL),
(16, 'EU 40', 2, '2024-01-26 18:10:04', NULL),
(17, 'EU 41', 2, '2024-01-26 18:10:04', NULL),
(18, 'EU 42', 2, '2024-01-26 18:10:04', NULL),
(19, 'EU 43', 2, '2024-01-26 18:10:04', NULL),
(20, 'EU 44', 2, '2024-01-26 18:10:04', NULL),
(21, 'ONE SIZE', 3, '2024-01-26 18:11:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `size_id`, `stock`, `created_at`, `updated_at`) VALUES
(38, 12, 5, 3, '2024-01-30 12:32:50', NULL),
(39, 12, 6, 4, '2024-01-30 12:32:50', NULL),
(47, 10, 6, 10, '2024-02-01 18:22:40', NULL),
(48, 10, 8, 7, '2024-02-01 18:22:40', NULL),
(49, 10, 9, 9, '2024-02-01 18:22:40', NULL),
(50, 13, 7, 2, '2024-02-01 20:54:15', NULL),
(51, 14, 3, 3, '2024-02-01 20:55:26', NULL),
(52, 14, 6, 5, '2024-02-01 20:55:26', NULL),
(53, 15, 4, 3, '2024-02-01 20:57:09', NULL),
(54, 15, 5, 1, '2024-02-01 20:57:09', NULL),
(55, 15, 6, 4, '2024-02-01 20:57:09', NULL),
(56, 15, 7, 3, '2024-02-01 20:57:09', NULL),
(57, 15, 8, 2, '2024-02-01 20:57:09', NULL),
(58, 16, 4, 3, '2024-02-01 20:58:27', NULL),
(59, 16, 6, 2, '2024-02-01 20:58:27', NULL),
(61, 18, 6, 5, '2024-02-01 21:00:55', NULL),
(62, 18, 8, 3, '2024-02-01 21:00:55', NULL),
(63, 19, 4, 3, '2024-02-01 21:03:30', NULL),
(64, 19, 5, 2, '2024-02-01 21:03:30', NULL),
(65, 19, 6, 5, '2024-02-01 21:03:30', NULL),
(66, 20, 4, 2, '2024-02-01 21:06:01', NULL),
(67, 20, 5, 1, '2024-02-01 21:06:01', NULL),
(68, 20, 6, 8, '2024-02-01 21:06:01', NULL),
(69, 21, 3, 5, '2024-02-01 21:07:31', NULL),
(70, 21, 4, 3, '2024-02-01 21:07:31', NULL),
(71, 21, 5, 4, '2024-02-01 21:07:31', NULL),
(72, 21, 6, 2, '2024-02-01 21:07:31', NULL),
(73, 21, 8, 3, '2024-02-01 21:07:31', NULL),
(74, 22, 4, 3, '2024-02-01 21:09:08', NULL),
(75, 22, 5, 2, '2024-02-01 21:09:08', NULL),
(76, 22, 6, 3, '2024-02-01 21:09:08', NULL),
(77, 22, 7, 1, '2024-02-01 21:09:08', NULL),
(78, 22, 8, 2, '2024-02-01 21:09:08', NULL),
(79, 23, 3, 3, '2024-02-01 21:10:27', NULL),
(80, 23, 4, 2, '2024-02-01 21:10:27', NULL),
(81, 23, 5, 1, '2024-02-01 21:10:27', NULL),
(82, 23, 6, 1, '2024-02-01 21:10:27', NULL),
(83, 23, 7, 2, '2024-02-01 21:10:27', NULL),
(84, 24, 5, 2, '2024-02-01 21:11:37', NULL),
(85, 24, 6, 3, '2024-02-01 21:11:37', NULL),
(86, 24, 7, 2, '2024-02-01 21:11:37', NULL),
(87, 24, 8, 1, '2024-02-01 21:11:37', NULL),
(88, 25, 5, 2, '2024-02-01 21:13:03', NULL),
(89, 25, 8, 1, '2024-02-01 21:13:03', NULL),
(90, 26, 16, 3, '2024-02-01 21:14:40', NULL),
(91, 26, 17, 2, '2024-02-01 21:14:40', NULL),
(92, 26, 18, 2, '2024-02-01 21:14:40', NULL),
(93, 26, 19, 4, '2024-02-01 21:14:40', NULL),
(94, 27, 16, 3, '2024-02-01 21:15:46', NULL),
(95, 27, 17, 1, '2024-02-01 21:15:46', NULL),
(96, 27, 18, 2, '2024-02-01 21:15:46', NULL),
(97, 27, 19, 4, '2024-02-01 21:15:46', NULL),
(98, 27, 20, 1, '2024-02-01 21:15:46', NULL),
(99, 28, 20, 3, '2024-02-01 21:16:38', NULL),
(100, 29, 15, 2, '2024-02-01 21:17:44', NULL),
(101, 29, 16, 12, '2024-02-01 21:17:44', NULL),
(102, 29, 17, 7, '2024-02-01 21:17:44', NULL),
(103, 29, 18, 4, '2024-02-01 21:17:44', NULL),
(104, 29, 19, 7, '2024-02-01 21:17:44', NULL),
(105, 29, 20, 3, '2024-02-01 21:17:44', NULL),
(106, 30, 16, 3, '2024-02-01 21:18:47', NULL),
(107, 30, 19, 2, '2024-02-01 21:18:47', NULL),
(108, 31, 20, 5, '2024-02-01 21:19:40', NULL),
(109, 32, 15, 2, '2024-02-01 21:20:38', NULL),
(110, 32, 16, 1, '2024-02-01 21:20:38', NULL),
(111, 33, 16, 12, '2024-02-01 21:22:09', NULL),
(112, 33, 17, 2, '2024-02-01 21:22:09', NULL),
(113, 33, 18, 3, '2024-02-01 21:22:09', NULL),
(114, 33, 19, 2, '2024-02-01 21:22:09', NULL),
(115, 33, 20, 2, '2024-02-01 21:22:09', NULL),
(116, 34, 16, 2, '2024-02-01 21:23:23', NULL),
(117, 34, 20, 1, '2024-02-01 21:23:23', NULL),
(118, 35, 16, 3, '2024-02-01 21:24:40', NULL),
(119, 35, 18, 4, '2024-02-01 21:24:40', NULL),
(120, 36, 16, 2, '2024-02-01 21:26:11', NULL),
(121, 36, 18, 4, '2024-02-01 21:26:11', NULL),
(122, 37, 17, 2, '2024-02-01 21:27:29', NULL),
(123, 38, 15, 2, '2024-02-01 21:28:52', NULL),
(124, 38, 16, 1, '2024-02-01 21:28:52', NULL),
(125, 38, 17, 4, '2024-02-01 21:28:52', NULL),
(126, 38, 18, 2, '2024-02-01 21:28:52', NULL),
(127, 38, 19, 3, '2024-02-01 21:28:52', NULL),
(128, 38, 20, 1, '2024-02-01 21:28:52', NULL),
(129, 39, 16, 3, '2024-02-01 21:29:59', NULL),
(130, 39, 17, 2, '2024-02-01 21:29:59', NULL),
(131, 39, 18, 3, '2024-02-01 21:29:59', NULL),
(132, 40, 21, 6, '2024-02-01 21:33:07', NULL),
(133, 41, 21, 5, '2024-02-01 21:34:21', NULL),
(134, 42, 21, 7, '2024-02-01 21:35:22', NULL),
(135, 43, 21, 7, '2024-02-01 21:36:24', NULL),
(136, 44, 21, 9, '2024-02-01 21:37:36', NULL),
(137, 45, 21, 4, '2024-02-01 21:38:54', NULL),
(138, 46, 21, 3, '2024-02-01 21:40:15', NULL),
(139, 47, 21, 4, '2024-02-01 21:41:31', NULL),
(140, 48, 21, 6, '2024-02-01 21:42:50', NULL),
(141, 49, 21, 5, '2024-02-01 21:44:06', NULL),
(142, 50, 3, 5, '2024-02-01 21:47:13', NULL),
(143, 51, 5, 3, '2024-02-01 21:48:22', NULL),
(144, 51, 6, 8, '2024-02-01 21:48:22', NULL),
(145, 51, 7, 2, '2024-02-01 21:48:22', NULL),
(146, 52, 3, 3, '2024-02-01 21:50:21', NULL),
(147, 52, 4, 3, '2024-02-01 21:50:21', NULL),
(148, 52, 7, 5, '2024-02-01 21:50:21', NULL),
(149, 52, 8, 1, '2024-02-01 21:50:21', NULL),
(150, 53, 4, 3, '2024-02-01 21:51:53', NULL),
(151, 53, 5, 4, '2024-02-01 21:51:53', NULL),
(152, 53, 6, 2, '2024-02-01 21:51:53', NULL),
(153, 54, 2, 4, '2024-02-01 21:53:05', NULL),
(154, 54, 3, 3, '2024-02-01 21:53:05', NULL),
(155, 54, 4, 2, '2024-02-01 21:53:05', NULL),
(156, 54, 5, 5, '2024-02-01 21:53:05', NULL),
(157, 54, 6, 4, '2024-02-01 21:53:05', NULL),
(158, 55, 4, 4, '2024-02-01 21:54:22', NULL),
(159, 55, 5, 7, '2024-02-01 21:54:22', NULL),
(160, 56, 6, 3, '2024-02-01 21:55:33', NULL),
(161, 56, 7, 2, '2024-02-01 21:55:33', NULL),
(162, 57, 2, 4, '2024-02-01 21:56:48', NULL),
(163, 57, 3, 4, '2024-02-01 21:56:48', NULL),
(164, 57, 4, 3, '2024-02-01 21:56:48', NULL),
(165, 57, 5, 2, '2024-02-01 21:56:48', NULL),
(166, 57, 6, 4, '2024-02-01 21:56:48', NULL),
(167, 57, 7, 4, '2024-02-01 21:56:48', NULL),
(168, 58, 3, 3, '2024-02-01 21:58:03', NULL),
(169, 58, 6, 2, '2024-02-01 21:58:03', NULL),
(170, 58, 7, 1, '2024-02-01 21:58:03', NULL),
(171, 59, 2, 2, '2024-02-01 21:59:34', NULL),
(172, 59, 3, 4, '2024-02-01 21:59:34', NULL),
(173, 59, 5, 7, '2024-02-01 21:59:34', NULL),
(174, 59, 6, 4, '2024-02-01 21:59:34', NULL),
(175, 59, 7, 2, '2024-02-01 21:59:34', NULL),
(176, 60, 2, 4, '2024-02-01 22:01:08', NULL),
(177, 60, 3, 3, '2024-02-01 22:01:08', NULL),
(178, 60, 4, 2, '2024-02-01 22:01:08', NULL),
(179, 60, 5, 5, '2024-02-01 22:01:08', NULL),
(180, 60, 6, 4, '2024-02-01 22:01:08', NULL),
(181, 60, 7, 7, '2024-02-01 22:01:08', NULL),
(182, 61, 2, 4, '2024-02-01 22:02:42', NULL),
(183, 61, 4, 3, '2024-02-01 22:02:42', NULL),
(184, 61, 5, 3, '2024-02-01 22:02:42', NULL),
(185, 61, 6, 2, '2024-02-01 22:02:42', NULL),
(186, 62, 5, 5, '2024-02-01 22:03:55', NULL),
(187, 62, 6, 4, '2024-02-01 22:03:55', NULL),
(188, 63, 2, 2, '2024-02-01 22:05:19', NULL),
(189, 63, 3, 4, '2024-02-01 22:05:19', NULL),
(190, 63, 4, 2, '2024-02-01 22:05:19', NULL),
(191, 63, 5, 5, '2024-02-01 22:05:19', NULL),
(192, 63, 6, 6, '2024-02-01 22:05:19', NULL),
(193, 63, 7, 2, '2024-02-01 22:05:19', NULL),
(194, 64, 3, 3, '2024-02-01 22:06:37', NULL),
(195, 64, 4, 2, '2024-02-01 22:06:37', NULL),
(196, 65, 2, 2, '2024-02-01 22:08:00', NULL),
(197, 65, 3, 4, '2024-02-01 22:08:00', NULL),
(198, 65, 4, 3, '2024-02-01 22:08:00', NULL),
(199, 65, 5, 5, '2024-02-01 22:08:00', NULL),
(200, 65, 6, 7, '2024-02-01 22:08:00', NULL),
(201, 65, 7, 1, '2024-02-01 22:08:00', NULL),
(202, 66, 4, 3, '2024-02-01 22:09:17', NULL),
(203, 66, 5, 7, '2024-02-01 22:09:17', NULL),
(204, 66, 7, 3, '2024-02-01 22:09:17', NULL),
(205, 67, 15, 5, '2024-02-01 22:10:54', NULL),
(206, 67, 16, 7, '2024-02-01 22:10:54', NULL),
(207, 68, 11, 2, '2024-02-01 22:12:20', NULL),
(208, 68, 12, 3, '2024-02-01 22:12:20', NULL),
(209, 68, 13, 5, '2024-02-01 22:12:20', NULL),
(210, 68, 14, 2, '2024-02-01 22:12:20', NULL),
(211, 68, 15, 2, '2024-02-01 22:12:20', NULL),
(212, 68, 16, 3, '2024-02-01 22:12:20', NULL),
(213, 68, 17, 2, '2024-02-01 22:12:20', NULL),
(214, 69, 11, 4, '2024-02-01 22:13:36', NULL),
(215, 69, 12, 2, '2024-02-01 22:13:36', NULL),
(216, 69, 13, 3, '2024-02-01 22:13:36', NULL),
(217, 69, 14, 2, '2024-02-01 22:13:36', NULL),
(218, 69, 15, 1, '2024-02-01 22:13:36', NULL),
(219, 70, 11, 4, '2024-02-01 22:14:53', NULL),
(220, 70, 12, 4, '2024-02-01 22:14:53', NULL),
(221, 71, 11, 4, '2024-02-01 22:16:15', NULL),
(222, 71, 12, 2, '2024-02-01 22:16:15', NULL),
(223, 71, 13, 3, '2024-02-01 22:16:15', NULL),
(224, 71, 14, 5, '2024-02-01 22:16:15', NULL),
(225, 71, 15, 1, '2024-02-01 22:16:15', NULL),
(226, 71, 16, 2, '2024-02-01 22:16:15', NULL),
(227, 71, 17, 3, '2024-02-01 22:16:15', NULL),
(228, 72, 11, 3, '2024-02-01 22:17:22', NULL),
(229, 72, 12, 2, '2024-02-01 22:17:22', NULL),
(230, 72, 13, 4, '2024-02-01 22:17:22', NULL),
(231, 72, 14, 3, '2024-02-01 22:17:22', NULL),
(232, 72, 15, 7, '2024-02-01 22:17:22', NULL),
(233, 73, 11, 4, '2024-02-01 22:18:37', NULL),
(234, 73, 12, 3, '2024-02-01 22:18:37', NULL),
(235, 73, 13, 2, '2024-02-01 22:18:37', NULL),
(236, 73, 14, 6, '2024-02-01 22:18:37', NULL),
(237, 73, 15, 5, '2024-02-01 22:18:37', NULL),
(238, 73, 16, 3, '2024-02-01 22:18:37', NULL),
(239, 74, 11, 2, '2024-02-01 22:20:07', NULL),
(240, 74, 13, 2, '2024-02-01 22:20:07', NULL),
(241, 74, 14, 1, '2024-02-01 22:20:07', NULL),
(242, 74, 15, 3, '2024-02-01 22:20:07', NULL),
(243, 74, 16, 2, '2024-02-01 22:20:07', NULL),
(244, 75, 14, 3, '2024-02-01 22:21:58', NULL),
(245, 75, 16, 2, '2024-02-01 22:21:58', NULL),
(246, 75, 17, 3, '2024-02-01 22:21:58', NULL),
(247, 76, 13, 4, '2024-02-01 22:23:08', NULL),
(248, 76, 14, 2, '2024-02-01 22:23:08', NULL),
(249, 76, 15, 4, '2024-02-01 22:23:08', NULL),
(250, 77, 12, 4, '2024-02-01 22:24:31', NULL),
(251, 77, 13, 3, '2024-02-01 22:24:31', NULL),
(252, 77, 14, 5, '2024-02-01 22:24:31', NULL),
(253, 77, 15, 2, '2024-02-01 22:24:31', NULL),
(254, 77, 17, 3, '2024-02-01 22:24:31', NULL),
(255, 78, 11, 3, '2024-02-01 22:25:41', NULL),
(256, 78, 12, 2, '2024-02-01 22:25:41', NULL),
(257, 78, 13, 3, '2024-02-01 22:25:41', NULL),
(258, 78, 14, 4, '2024-02-01 22:25:41', NULL),
(259, 78, 15, 1, '2024-02-01 22:25:41', NULL),
(260, 79, 11, 4, '2024-02-01 22:26:46', NULL),
(261, 79, 12, 2, '2024-02-01 22:26:46', NULL),
(262, 79, 13, 2, '2024-02-01 22:26:46', NULL),
(263, 80, 11, 2, '2024-02-01 22:28:01', NULL),
(264, 80, 12, 3, '2024-02-01 22:28:01', NULL),
(265, 80, 13, 5, '2024-02-01 22:28:01', NULL),
(266, 80, 16, 3, '2024-02-01 22:28:01', NULL),
(267, 81, 11, 3, '2024-02-01 22:29:24', NULL),
(268, 81, 12, 2, '2024-02-01 22:29:24', NULL),
(269, 81, 13, 4, '2024-02-01 22:29:24', NULL),
(270, 81, 14, 5, '2024-02-01 22:29:24', NULL),
(271, 81, 15, 2, '2024-02-01 22:29:24', NULL),
(272, 81, 16, 3, '2024-02-01 22:29:24', NULL),
(273, 81, 17, 2, '2024-02-01 22:29:24', NULL),
(274, 82, 11, 3, '2024-02-01 22:30:56', NULL),
(275, 82, 12, 4, '2024-02-01 22:30:56', NULL),
(276, 82, 13, 5, '2024-02-01 22:30:56', NULL),
(277, 82, 14, 2, '2024-02-01 22:30:56', NULL),
(278, 82, 16, 2, '2024-02-01 22:30:56', NULL),
(279, 83, 11, 4, '2024-02-01 22:32:06', NULL),
(280, 83, 12, 2, '2024-02-01 22:32:06', NULL),
(281, 83, 14, 7, '2024-02-01 22:32:06', NULL),
(282, 83, 16, 3, '2024-02-01 22:32:06', NULL),
(283, 84, 12, 2, '2024-02-01 22:33:13', NULL),
(284, 84, 13, 4, '2024-02-01 22:33:13', NULL),
(285, 84, 14, 2, '2024-02-01 22:33:13', NULL),
(286, 84, 15, 3, '2024-02-01 22:33:13', NULL),
(287, 85, 21, 3, '2024-02-01 22:37:28', NULL),
(288, 86, 21, 7, '2024-02-01 22:38:21', NULL),
(289, 87, 21, 9, '2024-02-01 22:39:08', NULL),
(290, 88, 21, 2, '2024-02-01 22:40:02', NULL),
(291, 89, 21, 4, '2024-02-01 22:40:49', NULL),
(292, 90, 21, 3, '2024-02-01 22:41:33', NULL),
(293, 91, 21, 5, '2024-02-01 22:42:34', NULL),
(294, 92, 21, 7, '2024-02-01 22:43:23', NULL),
(295, 93, 21, 8, '2024-02-01 22:44:12', NULL),
(296, 94, 21, 5, '2024-02-01 22:44:59', NULL),
(297, 95, 21, 7, '2024-02-01 22:45:45', NULL),
(298, 96, 21, 9, '2024-02-01 22:46:39', NULL),
(299, 97, 21, 9, '2024-02-01 22:47:21', NULL),
(300, 98, 21, 4, '2024-02-01 22:48:30', NULL),
(301, 99, 21, 5, '2024-02-01 22:49:12', NULL),
(302, 100, 21, 8, '2024-02-01 22:49:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Clothings', '2024-01-25 20:20:45', NULL),
(2, 'Shoes', '2024-01-25 20:20:45', NULL),
(3, 'Bags', '2024-01-25 20:22:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Billie', 'billie@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2024-01-28 23:38:11', NULL),
(2, 'Dyna', 'dyna@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0, '2024-01-28 23:40:07', NULL),
(3, 'Donna', 'donna@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0, '2024-01-28 23:46:59', NULL),
(4, 'Mumma', 'mumma@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0, '2024-01-28 23:47:44', NULL),
(5, 'Siglar', 'siglar@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0, '2024-01-28 23:52:32', NULL),
(6, 'Bonney', 'bonney@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0, '2024-01-29 00:31:23', NULL),
(7, 'Lila', 'lila@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0, '2024-02-01 17:24:03', NULL),
(8, 'Bumbi', 'bumbi@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0, '2024-02-01 17:27:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `product_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(11, 10, 3, '2024-02-01 08:54:28', NULL),
(12, 12, 2, '2024-02-01 17:43:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_foreign_key_categories` (`topic_id`),
  ADD KEY `gender_foreign_key_categories` (`gender_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_foreign_key_images` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_foreign_key_products` (`brand_id`),
  ADD KEY `category_foreign_key_products` (`category_id`),
  ADD KEY `topic_foreign_key_products` (`topic_id`),
  ADD KEY `color_foreign_key_products` (`color_id`),
  ADD KEY `gender_foreign_key_products` (`gender_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_foreign_key_sizes` (`topic_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_foreign_key_stocks` (`product_id`),
  ADD KEY `size_foreign_key_stocks` (`size_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `gender_foreign_key_categories` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  ADD CONSTRAINT `topic_foreign_key_categories` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `product_foreign_key_images` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `brand_foreign_key_products` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `category_foreign_key_products` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `color_foreign_key_products` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `gender_foreign_key_products` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  ADD CONSTRAINT `topic_foreign_key_products` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

--
-- Constraints for table `sizes`
--
ALTER TABLE `sizes`
  ADD CONSTRAINT `topic_foreign_key_sizes` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `product_foreign_key_stocks` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `size_foreign_key_stocks` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
