-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Aug 15, 2023 at 08:09 AM
-- Server version: 8.1.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_docker`
--

-- --------------------------------------------------------

--
-- Table structure for table `moneymanager`
--

CREATE TABLE `moneymanager` (
  `user_id` int NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `request` int DEFAULT NULL,
  `wallet` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `moneymanager`
--

INSERT INTO `moneymanager` (`user_id`, `username`, `request`, `wallet`) VALUES
(6, 'PiDinoSauR', 0, 358),
(7, 'Chapijtuibay', 0, 9920),
(11, 'Cuong123', 0, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `productincart`
--

CREATE TABLE `productincart` (
  `owner_id` int DEFAULT NULL,
  `id` int DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pay_value` int DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productincart`
--

INSERT INTO `productincart` (`owner_id`, `id`, `product_name`, `pay_value`, `image_url`) VALUES
(6, 19, 'Dao', 0, 'https://cdn.sforum.vn/sforum/wp-content/uploads/2018/11/2-10.png'),
(6, 24, 'Tiger', 40, 'https://cdn.sforum.vn/sforum/wp-content/uploads/2018/11/2-10.png'),
(6, 34, 'Fox', 80, 'https://www.shihoriobata.com/wp-content/uploads/2021/09/fox-drawing-easy-web.jpg'),
(7, 35, 'Tiger', 120, 'https://files.worldwildlife.org/wwfcmsprod/images/Tiger_resting_Bandhavgarh_National_Park_India/hero_small/6aofsvaglm_Medium_WW226365.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `starting_price` int DEFAULT NULL,
  `buy_out_price` int DEFAULT NULL,
  `ends_time` datetime DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `next_owner_id` int DEFAULT NULL,
  `current_pay` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
INSERT INTO `products` (`id`, `owner_id`, `product_name`, `starting_price`, `buy_out_price`, `ends_time`, `image_url`, `next_owner_id`, `current_pay`) VALUES
(36, 6, 'Mouse', 200, 3000, '2023-08-22 15:28:00', 'https://www.woodlandtrust.org.uk/media/50820/house-mouse-wtml-1062551-amy-lewis.jpg', NULL, 200),
(37, 6, 'Rabbit', 400, 5000, '2023-08-23 15:28:00', 'https://www.humanesociety.org/sites/default/files/2019/03/rabbit-475261_0.jpg', NULL, 400);

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `user_name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `user_password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `username`, `user_password`) VALUES
(-1, 'Boss', 'localhost@gmail.com', 'localhost', '$2y$10$BjbopDhlK.LXVFgU4JAmDuF4g5j7VsCsQiQ.xkrXg6h1rx4DBVOuu'),
(6, 'Ngo Dinh Luyen', 'ngodinhluyennht@gmail.com', 'PiDinoSauR', '$2y$10$IRowfHE0cjIF3b9rtiM75eMBHpg/iHxfRWY3bppbxQYKlNl/3aTw.'),
(7, 'Hoang Thai Minh', 'minhhoang@gmail.com', 'Chapijtuibay', '$2y$10$fgegozpCl.K6MckzpVVDVe4kiczldIanr89eO7TLUa/Hi0oS2RUP6'),
(11, 'Phan Trong Cuong', 'cuong@gmail.com', 'Cuong123', '$2y$10$.6lBcETQwgYXuMXyxnZtCOCb3qzhQcNJ3ubV1jzmTEfcziLSVm0fq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `moneymanager`
--
ALTER TABLE `moneymanager`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `productincart`
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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
