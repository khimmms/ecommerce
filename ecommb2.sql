-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2024 at 10:20 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` float NOT NULL,
  `total_price` int NOT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '0-cart|1-sold',
  `remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `total_price`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1200, 12000, 0, NULL, '2024-11-23 16:54:53', '2024-11-23 16:54:53'),
(2, 2, 30, 2, 5000, 50000, 0, NULL, '2024-11-23 17:04:28', '2024-11-23 17:04:28'),
(3, 2, 3, 1, 600, 600, 0, NULL, '2024-11-23 18:16:59', '2024-11-23 18:16:59'),
(4, 7, 31, 1, 12000, 12000, 0, NULL, '2024-11-23 18:33:03', '2024-11-23 18:33:03'),
(5, 7, 30, 2, 5000, 10000, 0, NULL, '2024-11-23 18:46:50', '2024-11-23 18:46:50'),
(6, 7, 20, 1, 50, 50, 0, NULL, '2024-11-23 18:47:05', '2024-11-23 18:47:05'),
(7, 2, 8, 1, 180, 180, 0, NULL, '2024-11-23 19:07:29', '2024-11-23 19:07:29'),
(8, 7, 7, 1, 120, 120, 0, NULL, '2024-11-30 20:19:06', '2024-11-30 20:19:06'),
(9, 2, 32, 1, 200, 200, 0, NULL, '2024-12-01 16:02:18', '2024-12-01 16:02:18'),
(10, 11, 32, 1, 200, 200, 0, NULL, '2024-12-01 22:10:49', '2024-12-01 22:10:49'),
(11, 11, 7, 1, 120, 120, 0, NULL, '2024-12-01 23:25:24', '2024-12-01 23:25:24'),
(12, 9, 24, 1, 30, 30, 0, NULL, '2024-12-01 23:33:24', '2024-12-01 23:33:24'),
(13, 12, 1, 1, 1200, 1200, 1, NULL, '2024-12-02 16:45:25', '2024-12-02 16:45:25'),
(14, 12, 21, 1, 40, 40, 1, NULL, '2024-12-02 16:46:34', '2024-12-02 16:46:34'),
(15, 12, 30, 2, 5000, 10000, 1, NULL, '2024-12-02 17:06:18', '2024-12-02 17:06:18'),
(16, 6, 32, 1, 200, 200, 1, NULL, '2024-12-02 17:10:19', '2024-12-02 17:10:19'),
(17, 12, 8, 1, 180, 180, 1, NULL, '2024-12-02 17:56:35', '2024-12-02 17:56:35'),
(18, 12, 9, 1, 80, 80, 1, NULL, '2024-12-02 17:56:46', '2024-12-02 17:56:46'),
(19, 12, 32, 1, 200, 200, 1, NULL, '2024-12-02 17:56:53', '2024-12-02 17:56:53'),
(20, 13, 16, 2, 90, 180, 1, NULL, '2024-12-02 18:00:24', '2024-12-02 18:00:24'),
(21, 6, 17, 1, 220, 220, 1, NULL, '2024-12-02 18:03:27', '2024-12-02 18:03:27'),
(22, 12, 33, 1, 850, 850, 1, NULL, '2024-12-02 18:05:39', '2024-12-02 18:05:39');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `order_date` datetime NOT NULL,
  `payment_method` smallint NOT NULL,
  `account_no` varchar(25) NOT NULL,
  `user_id` int NOT NULL,
  `total_order` float NOT NULL,
  `delivery_fee` float NOT NULL,
  `total_amount` float NOT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `payment_method`, `account_no`, `user_id`, `total_order`, `delivery_fee`, `total_amount`, `remarks`, `created_at`, `updated_at`) VALUES
(2, '2024-12-01 23:13:46', 3, '2004-1201', 11, 200, 50, 250, NULL, '2024-12-01 23:13:46', '2024-12-01 23:13:46'),
(3, '2024-12-01 23:18:13', 1, '1234-2242', 11, 200, 50, 250, NULL, '2024-12-01 23:18:13', '2024-12-01 23:18:13'),
(4, '2024-12-01 23:20:48', 1, '7845-1111', 11, 200, 50, 250, NULL, '2024-12-01 23:20:48', '2024-12-01 23:20:48'),
(5, '2024-12-01 23:21:49', 1, '9631-8526', 11, 200, 50, 250, NULL, '2024-12-01 23:21:49', '2024-12-01 23:21:49'),
(6, '2024-12-01 23:22:59', 3, '3256-8419', 11, 200, 50, 250, NULL, '2024-12-01 23:22:59', '2024-12-01 23:22:59'),
(7, '2024-12-01 23:25:36', 2, '8888-0000', 11, 320, 50, 370, NULL, '2024-12-01 23:25:36', '2024-12-01 23:25:36'),
(8, '2024-12-01 23:33:50', 2, '4986-8741', 9, 30, 50, 80, NULL, '2024-12-01 23:33:50', '2024-12-01 23:33:50'),
(9, '2024-12-02 11:18:19', 1, 'anoraw', 7, 22170, 50, 22220, NULL, '2024-12-02 11:18:19', '2024-12-02 11:18:19'),
(10, '2024-12-02 13:26:11', 3, '0216-4139', 2, 62980, 50, 63030, NULL, '2024-12-02 13:26:11', '2024-12-02 13:26:11'),
(11, '2024-12-02 13:30:54', 2, '7845-1111', 7, 22170, 50, 22220, NULL, '2024-12-02 13:30:54', '2024-12-02 13:30:54'),
(12, '2024-12-02 16:45:33', 1, '2003-0314', 12, 1200, 50, 1250, NULL, '2024-12-02 16:45:33', '2024-12-02 16:45:33'),
(13, '2024-12-02 16:46:41', 1, '2004-1201', 12, 1240, 50, 1290, NULL, '2024-12-02 16:46:41', '2024-12-02 16:46:41'),
(14, '2024-12-02 16:58:29', 1, '7845-1111', 12, 1240, 50, 1290, NULL, '2024-12-02 16:58:29', '2024-12-02 16:58:29'),
(15, '2024-12-02 17:00:57', 1, '1234-2242', 12, 1240, 50, 1290, NULL, '2024-12-02 17:00:57', '2024-12-02 17:00:57'),
(16, '2024-12-02 17:02:45', 3, '2003-0314', 12, 1240, 50, 1290, NULL, '2024-12-02 17:02:45', '2024-12-02 17:02:45'),
(17, '2024-12-02 17:06:33', 1, '2121-8080', 12, 10000, 50, 10050, NULL, '2024-12-02 17:06:33', '2024-12-02 17:06:33'),
(18, '2024-12-02 17:10:24', 1, '1234-2242', 6, 200, 50, 250, NULL, '2024-12-02 17:10:24', '2024-12-02 17:10:24'),
(19, '2024-12-02 17:57:23', 1, '2004-1201', 12, 460, 50, 510, NULL, '2024-12-02 17:57:23', '2024-12-02 17:57:23'),
(20, '2024-12-02 18:00:37', 3, '9685-0000', 13, 180, 50, 230, NULL, '2024-12-02 18:00:37', '2024-12-02 18:00:37'),
(21, '2024-12-02 18:03:33', 2, '7845-1111', 6, 220, 50, 270, NULL, '2024-12-02 18:03:33', '2024-12-02 18:03:33'),
(22, '2024-12-02 18:05:47', 1, '2004-1201', 12, 850, 50, 900, NULL, '2024-12-02 18:05:47', '2024-12-02 18:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `product_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `base_price` float NOT NULL,
  `stocks` int NOT NULL,
  `unit_price` float NOT NULL,
  `total_price` float NOT NULL,
  `image_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='product inventory';

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `category_id`, `base_price`, `stocks`, `unit_price`, `total_price`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Gaming PC Builds', ' High-end gaming PC ', 1, 800, 9, 1200, 12000, 'public/uploads/products/cpu.jpg', '2024-11-03 05:41:34', '2024-11-22 23:30:29'),
(2, 'Mid-range Gaming PC', 'Balanced gaming PC', 1, 600, 15, 900, 13500, 'public/uploads/products/gpu.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(3, 'Budget Gaming PC', 'Affordable gaming PC', 1, 400, 20, 600, 12000, 'public/uploads/products/mobo.png', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(4, 'Graphics Card', 'NVIDIA RTX 3080', 2, 700, 5, 900, 4500, 'public/uploads/products/cpu.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(5, 'Motherboard', 'ASUS ROG Strix B550', 2, 150, 12, 200, 2400, 'public/uploads/products/ram.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(6, 'CPU', 'Intel Core i7-11700K', 2, 300, 8, 400, 3200, 'public/uploads/products/psu.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(7, 'RAM', 'Corsair Vengeance 16GB', 2, 80, 20, 120, 2400, 'public/uploads/products/ram.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(8, 'SSD', 'Samsung 970 EVO 1TB', 2, 120, 9, 180, 1800, 'public/uploads/products/cpu.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(9, 'HDD', 'Seagate Barracuda 2TB', 2, 50, 14, 80, 1200, 'public/uploads/products/mobo.png', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(10, 'Power Supply', 'Corsair 750W', 2, 90, 10, 130, 1300, 'public/uploads/products/gpu.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(11, 'Cooling System', 'Cooler Master Hyper 212', 2, 40, 25, 70, 1750, 'public/uploads/products/ram.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(12, 'PC Case', 'NZXT H510', 2, 70, 15, 110, 1650, 'public/uploads/products/psu.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(13, 'Monitor', 'Acer 24\" 144Hz', 3, 200, 7, 300, 2100, 'public/uploads/products/mobo.png', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(14, 'Keyboard', 'Logitech Mechanical', 3, 60, 20, 100, 2000, 'public/uploads/products/cpu.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(15, 'Mouse', 'Razer DeathAdder', 3, 40, 25, 80, 2000, 'public/uploads/products/gpu.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(16, 'Gaming Headset', 'HyperX Cloud II', 3, 50, 16, 90, 1620, 'public/uploads/products/gpu.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(17, 'Capture Card', 'Elgato HD60 S', 3, 150, 9, 220, 2200, 'public/uploads/products/psu.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(18, 'Webcam', 'Logitech C920', 3, 70, 12, 100, 1200, 'public/uploads/products/gpu.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(19, 'Microphone', 'Blue Yeti', 3, 120, 8, 180, 1440, 'public/uploads/products/ram.jpg', '2024-11-03 05:41:34', '2024-11-03 05:41:34'),
(20, 'Router', ' TP-Link AC750 ', 2, 30, 25, 50, 1250, 'public/uploads/products/psu.jpg', '2024-11-03 05:41:34', '2024-12-02 17:27:01'),
(21, 'USB Hub', ' Anker 7-Port ', 1, 25, 29, 40, 1200, 'public/uploads/products/mobo.png', '2024-11-03 05:41:34', '2024-12-02 17:25:42'),
(22, 'Gaming Chair', ' Secretlab Titan ', 3, 300, 5, 450, 2250, 'public/uploads/products/ram.jpg', '2024-11-03 05:41:34', '2024-12-02 17:26:45'),
(23, 'Desk', ' IKEA Gaming Desk ', 2, 150, 10, 220, 2200, 'public/uploads/products/mobo.png', '2024-11-03 05:41:34', '2024-12-02 17:26:36'),
(24, 'Surge Protector', ' Belkin 12-Outlet ', 1, 20, 50, 30, 1500, 'public/uploads/products/psu.jpg', '2024-11-03 05:41:34', '2024-12-02 17:26:21'),
(30, 'Game Boy', '     OG Game Boy     ', 1, 2000, 8, 5000, 50000, 'public/uploads/products/418691f79d7a73bfcd861e379878a971.jpg', '2024-11-14 23:43:10', '2024-12-02 18:04:08'),
(31, 'AMD RX 6600XT ', '  AMD ', 3, 10000, 0, 12000, 60000, 'public/uploads/products/7c76e97c6dbca62d3498b0a005d48268.jpg', '2024-11-14 23:47:47', '2024-11-15 21:37:35'),
(32, 'Keychain', ' bird ', 2, 150, 3, 200, 1000, 'public/uploads/products/81b50edb51838cddaec853d96dca4dd5.png', '2024-11-23 19:06:59', '2024-12-01 16:03:19'),
(33, 'JBL Quantum 400', 'Gaming Headset', 1, 800, 19, 850, 17000, 'public/uploads/products/5ee907ef549fc205153ded380a8d2c11.png', '2024-12-02 18:05:05', '2024-12-02 18:05:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remarks` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `is_admin`, `remarks`, `created_at`, `updated_at`) VALUES
(2, 'majella denise gaje', 'majeje', '$2y$10$YqTTIa/9TnxGAkV.9oi/E.yS6Zwdj2Ii9pADeVoOPNQrYEl1E0DPa', 0, NULL, '2024-10-14 17:49:29', '2024-10-14 17:49:29'),
(6, 'admin', 'admin', '$2y$10$WXascF7fhX.dHrOq4S/Gm.Ck9Acw37OjqhJTbBAmQTpJvPdH44KWO', 1, NULL, '2024-11-03 14:14:03', '2024-11-03 14:14:03'),
(7, 'tony stark', 'ironman', '$2y$10$u/zgb4TOIGgmojW4TRAavug9D06ubuoYl88UaA5lRUyFQsCNSkPZ.', 0, NULL, '2024-11-03 20:40:40', '2024-11-03 20:40:40'),
(9, 'John Doe', 'jani', '$2y$10$/A19jbn3q7st02J2FZ/GGOBS7y6C9YCus3oiC4mfeKfpiRjal.xXW', 0, NULL, '2024-11-14 23:46:11', '2024-11-14 23:46:11'),
(12, 'sherry castillo', 'sheri', '$2y$10$3Vj8FlaimUyNCFziOQdPpOe.q9olossXNnche0qOFqT9SuXPX68lu', 0, NULL, '2024-12-02 16:45:12', '2024-12-02 16:45:12'),
(13, 'sanji vin', 'sanji', '$2y$10$EbSkQQQjp6ufMC6Bm1iv9u0VO5Dg2Gs5U/nFJsN10BKsts9XR/HG2', 0, NULL, '2024-12-02 17:59:59', '2024-12-02 17:59:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
