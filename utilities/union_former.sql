-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 11:48 AM
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
-- Database: `faute`
--

-- --------------------------------------------------------

--
-- Table structure for table `bags`
--

CREATE TABLE `bags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `detail` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `categories_bags`
--

CREATE TABLE `categories_bags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories_clothings_men`
--

CREATE TABLE `categories_clothings_men` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories_clothings_women`
--

CREATE TABLE `categories_clothings_women` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories_shoes_men`
--

CREATE TABLE `categories_shoes_men` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories_shoes_women`
--

CREATE TABLE `categories_shoes_women` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clothings_men`
--

CREATE TABLE `clothings_men` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `detail` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clothings_women`
--

CREATE TABLE `clothings_women` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `detail` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(7, 'Purple', '2024-01-24 15:26:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images_bags`
--

CREATE TABLE `images_bags` (
  `id` int(11) NOT NULL,
  `bag_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images_clothings_men`
--

CREATE TABLE `images_clothings_men` (
  `id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images_clothings_women`
--

CREATE TABLE `images_clothings_women` (
  `id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images_shoes_men`
--

CREATE TABLE `images_shoes_men` (
  `id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images_shoes_women`
--

CREATE TABLE `images_shoes_women` (
  `id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoes_men`
--

CREATE TABLE `shoes_men` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `detail` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoes_women`
--

CREATE TABLE `shoes_women` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `detail` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes_clothings`
--

CREATE TABLE `sizes_clothings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes_shoes`
--

CREATE TABLE `sizes_shoes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks_colors_bags`
--

CREATE TABLE `stocks_colors_bags` (
  `id` int(11) NOT NULL,
  `bag_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks_colors_clothings_men`
--

CREATE TABLE `stocks_colors_clothings_men` (
  `id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks_colors_clothings_women`
--

CREATE TABLE `stocks_colors_clothings_women` (
  `id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks_colors_shoes_men`
--

CREATE TABLE `stocks_colors_shoes_men` (
  `id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks_colors_shoes_women`
--

CREATE TABLE `stocks_colors_shoes_women` (
  `id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `stock` int(11) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks_sizes_clothings_men`
--

CREATE TABLE `stocks_sizes_clothings_men` (
  `id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks_sizes_clothings_women`
--

CREATE TABLE `stocks_sizes_clothings_women` (
  `id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks_sizes_shoes_men`
--

CREATE TABLE `stocks_sizes_shoes_men` (
  `id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks_sizes_shoes_women`
--

CREATE TABLE `stocks_sizes_shoes_women` (
  `id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bags`
--
ALTER TABLE `bags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_bags`
--
ALTER TABLE `categories_bags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_clothings_men`
--
ALTER TABLE `categories_clothings_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_clothings_women`
--
ALTER TABLE `categories_clothings_women`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_shoes_men`
--
ALTER TABLE `categories_shoes_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_shoes_women`
--
ALTER TABLE `categories_shoes_women`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothings_men`
--
ALTER TABLE `clothings_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothings_women`
--
ALTER TABLE `clothings_women`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images_bags`
--
ALTER TABLE `images_bags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images_clothings_men`
--
ALTER TABLE `images_clothings_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images_clothings_women`
--
ALTER TABLE `images_clothings_women`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images_shoes_men`
--
ALTER TABLE `images_shoes_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images_shoes_women`
--
ALTER TABLE `images_shoes_women`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoes_men`
--
ALTER TABLE `shoes_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoes_women`
--
ALTER TABLE `shoes_women`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes_clothings`
--
ALTER TABLE `sizes_clothings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes_shoes`
--
ALTER TABLE `sizes_shoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks_colors_bags`
--
ALTER TABLE `stocks_colors_bags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks_colors_clothings_men`
--
ALTER TABLE `stocks_colors_clothings_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks_colors_clothings_women`
--
ALTER TABLE `stocks_colors_clothings_women`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks_colors_shoes_men`
--
ALTER TABLE `stocks_colors_shoes_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks_colors_shoes_women`
--
ALTER TABLE `stocks_colors_shoes_women`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks_sizes_clothings_men`
--
ALTER TABLE `stocks_sizes_clothings_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks_sizes_clothings_women`
--
ALTER TABLE `stocks_sizes_clothings_women`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks_sizes_shoes_men`
--
ALTER TABLE `stocks_sizes_shoes_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks_sizes_shoes_women`
--
ALTER TABLE `stocks_sizes_shoes_women`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bags`
--
ALTER TABLE `bags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories_bags`
--
ALTER TABLE `categories_bags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories_clothings_men`
--
ALTER TABLE `categories_clothings_men`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories_clothings_women`
--
ALTER TABLE `categories_clothings_women`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories_shoes_men`
--
ALTER TABLE `categories_shoes_men`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories_shoes_women`
--
ALTER TABLE `categories_shoes_women`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clothings_men`
--
ALTER TABLE `clothings_men`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clothings_women`
--
ALTER TABLE `clothings_women`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `images_bags`
--
ALTER TABLE `images_bags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images_clothings_men`
--
ALTER TABLE `images_clothings_men`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images_clothings_women`
--
ALTER TABLE `images_clothings_women`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images_shoes_men`
--
ALTER TABLE `images_shoes_men`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images_shoes_women`
--
ALTER TABLE `images_shoes_women`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shoes_men`
--
ALTER TABLE `shoes_men`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shoes_women`
--
ALTER TABLE `shoes_women`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes_clothings`
--
ALTER TABLE `sizes_clothings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes_shoes`
--
ALTER TABLE `sizes_shoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks_colors_bags`
--
ALTER TABLE `stocks_colors_bags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks_colors_clothings_men`
--
ALTER TABLE `stocks_colors_clothings_men`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks_colors_clothings_women`
--
ALTER TABLE `stocks_colors_clothings_women`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks_colors_shoes_men`
--
ALTER TABLE `stocks_colors_shoes_men`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks_colors_shoes_women`
--
ALTER TABLE `stocks_colors_shoes_women`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks_sizes_clothings_men`
--
ALTER TABLE `stocks_sizes_clothings_men`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks_sizes_clothings_women`
--
ALTER TABLE `stocks_sizes_clothings_women`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks_sizes_shoes_men`
--
ALTER TABLE `stocks_sizes_shoes_men`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks_sizes_shoes_women`
--
ALTER TABLE `stocks_sizes_shoes_women`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
