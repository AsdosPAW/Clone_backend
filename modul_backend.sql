-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2025 at 11:44 AM
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
-- Database: `modul_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `quota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, '2025_11_02_082605_create_personal_access_tokens_table', 1),
(2, '2025_11_25_100507_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Personal Access Token', '88bfd0423c322cb113fdab406b2f2f45999ba89d30d1757af63a9eb45613daf1', '[\"*\"]', '2025-11-02 02:18:15', NULL, '2025-11-02 02:08:10', '2025-11-02 02:18:15'),
(4, 'App\\Models\\User', 1, 'Personal Access Token', '00b653a4eb515ebb72d52517b853d9100f9b260fb5d157713ce1385d319feeac', '[\"*\"]', '2025-11-06 20:23:29', NULL, '2025-11-02 02:26:45', '2025-11-06 20:23:29'),
(6, 'App\\Models\\User', 3, 'Personal Access Token', '090c808b9750707b3b6312e0fa582ff8954aeece18f9d99cb0081de30f7e8e18', '[\"*\"]', NULL, NULL, '2025-11-06 20:19:47', '2025-11-06 20:19:47'),
(9, 'App\\Models\\User', 4, 'Personal Access Token', '46568e4934d6e87c81b1df404452e1319dd3bf3cdee8283f58e689fe46a64ccb', '[\"*\"]', '2025-11-25 03:32:25', NULL, '2025-11-25 03:32:20', '2025-11-25 03:32:25'),
(10, 'App\\Models\\User', 4, 'Personal Access Token', '0a60ffe360a29470dc055dac29e0993fd35d596503e3745cad4db3e11a3b54fb', '[\"*\"]', '2025-11-25 03:51:52', NULL, '2025-11-25 03:51:46', '2025-11-25 03:51:52'),
(11, 'App\\Models\\User', 4, 'Personal Access Token', '07c0edba5b4e450de83a692b99bbe2045ab47481bc7a3956b33b6c60dc91aca6', '[\"*\"]', '2025-11-25 03:55:42', NULL, '2025-11-25 03:55:37', '2025-11-25 03:55:42'),
(12, 'App\\Models\\User', 4, 'Personal Access Token', 'dcc2bd80245419ad5443dc014e63e545945845b7cef13fd43396fb5aaebae12d', '[\"*\"]', '2025-11-25 03:57:12', NULL, '2025-11-25 03:55:55', '2025-11-25 03:57:12'),
(13, 'App\\Models\\User', 4, 'Personal Access Token', 'a61007a68f346dd074faf1122c5c3e6e6edc57956cc4a5efe2e502a368dd9134', '[\"*\"]', '2025-11-25 04:00:27', NULL, '2025-11-25 04:00:20', '2025-11-25 04:00:27'),
(14, 'App\\Models\\User', 4, 'Personal Access Token', 'f0495fdd059e1a3999c85f0ac6c38a09e01aec4cd40896cface507f915163365', '[\"*\"]', NULL, NULL, '2025-11-26 00:54:17', '2025-11-26 00:54:17'),
(15, 'App\\Models\\User', 4, 'Personal Access Token', 'ee98aa3fa23985b4d2ba2fc7c904bbaa7a69b66b101c82085e066cd4a50de0cd', '[\"*\"]', NULL, NULL, '2025-11-26 00:54:28', '2025-11-26 00:54:28'),
(16, 'App\\Models\\User', 4, 'Personal Access Token', 'ad23b0343c641a2d81b42a8bad3d22d42e500cf6141dcd06a072b772935cacda', '[\"*\"]', '2025-11-26 00:55:03', NULL, '2025-11-26 00:54:56', '2025-11-26 00:55:03'),
(17, 'App\\Models\\User', 4, 'Personal Access Token', '2dc97827efedcaae008802c7511864271dc3b74e6ec4aa311007f453b306d719', '[\"*\"]', '2025-11-26 01:03:39', NULL, '2025-11-26 00:58:24', '2025-11-26 01:03:39'),
(18, 'App\\Models\\User', 4, 'Personal Access Token', 'f05aa8d92e34a5ee92f93c9af9a2fea4a6b00f12e6b908b7854fa76f2bf3cf6d', '[\"*\"]', '2025-11-26 01:11:47', NULL, '2025-11-26 01:05:51', '2025-11-26 01:11:47'),
(19, 'App\\Models\\User', 4, 'Personal Access Token', 'a17f809cd39585292ae33ef4a526ea5ea739507a4970bddae61410ebfb2341b8', '[\"*\"]', '2025-11-26 01:30:25', NULL, '2025-11-26 01:30:14', '2025-11-26 01:30:25'),
(20, 'App\\Models\\User', 5, 'Personal Access Token', '4441e335b7706cc7242ad1e5a0eee056a78251860d6573f80f3612527fb93b77', '[\"*\"]', '2025-11-26 01:35:43', NULL, '2025-11-26 01:35:12', '2025-11-26 01:35:43'),
(21, 'App\\Models\\User', 5, 'Personal Access Token', '0d5c7e4814dcf7d820c1c889462cdab1e1c2625032a60c2f6167f3145a546aba', '[\"*\"]', '2025-11-26 01:40:19', NULL, '2025-11-26 01:40:15', '2025-11-26 01:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Kd0FP3Cq9WkPpiQ2Gyjj5LhYcPPQeOYXLgItqTdN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2hSUGlxN3BpMjZEb3BxYWNnSnhlbzZHdTJrbXdqZTBZanB6VEI1NCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764065329);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
