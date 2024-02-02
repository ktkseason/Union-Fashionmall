-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 05:04 PM
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
(27, 'Tote bags', 2, 3, '2024-01-25 20:39:58', NULL),
(28, 'Coats & Jackets', 2, 1, '2024-01-25 20:56:10', NULL),
(29, 'Jeans', 2, 2, '2024-01-25 20:56:10', NULL),
(30, 'Knitwears', 0, 2, '2024-01-25 20:56:10', NULL),
(31, 'Pants', 0, 2, '2024-01-25 20:56:10', NULL),
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
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Green', '2024-01-24 15:24:24', NULL),
(2, 'Blue', '2024-01-24 15:23:34', NULL),
(3, 'Red', '2024-01-24 15:25:21', NULL),
(4, 'Orange', '2024-01-24 15:25:21', NULL),
(5, 'Yellow', '2024-01-24 15:26:08', NULL),
(6, 'Indigo', '2024-01-24 15:26:08', NULL),
(7, 'Purple', '2024-01-24 15:26:08', NULL),
(8, 'Beige', '2024-01-25 20:15:00', NULL),
(9, 'Black', '2024-01-25 20:15:00', NULL),
(10, 'Brown', '2024-01-25 20:18:23', NULL),
(11, 'Gold', '2024-01-25 20:18:23', NULL),
(12, 'Grey', '2024-01-25 20:18:23', NULL),
(13, 'linear-gradient(\r\n        90deg,\r\n        rgba(255, 0, 0, 1) 0%,\r\n        rgba(255, 154, 0, 1) 10%,\r\n        rgba(208, 222, 33, 1) 20%,\r\n        rgba(79, 220, 74, 1) 30%,\r\n        rgba(63, 218, 216, 1) 40%,\r\n        rgba(47, 201, 226, 1) 50%,\r\n        rgb', '2024-01-25 20:18:23', NULL),
(14, 'Pink', '2024-01-25 20:18:23', NULL),
(15, 'Silver', '2024-01-25 20:18:23', NULL),
(16, 'Turquoise', '2024-01-25 20:18:23', NULL),
(17, 'White', '2024-01-25 20:18:23', NULL);

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
  `price` decimal(10,1) NOT NULL,
  `detail` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD KEY `topic_foreign_key_categories` (`topic_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
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
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
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
