-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 01:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_paj_gps`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesses`
--

CREATE TABLE `accesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accesses`
--

INSERT INTO `accesses` (`id`, `user_id`, `device_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-11-26 08:19:02', '2024-11-26 08:19:06'),
(2, 2, 1, '2024-11-26 08:19:09', '2024-11-26 08:19:12'),
(3, 1, 4, '2024-11-26 08:19:02', '2024-11-26 08:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `device_unique_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `model`, `device_unique_id`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 12', '12', 'DUI12', '2024-11-26 08:17:17', '2024-11-26 08:17:32'),
(2, 'Lenovo Laptop', 'ideapad 330', 'DUI30', '2024-11-26 08:17:35', '2024-11-26 08:17:38'),
(3, 'Tablet', 'Tablet 414', 'Tab14', '2024-11-26 08:17:41', '2024-11-26 08:17:43'),
(4, 'Ipad', 'Ipad 564', 'Ipad64', '2024-11-26 08:17:46', '2024-11-26 08:17:49');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_23_193418_create_devices_table', 1),
(6, '2024_11_23_193622_create_accesses_table', 1),
(7, '2024_11_23_210923_add_refresh_token_to_users_table', 2);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '87ebe880b3e92a3e4c75acda2912a715393d66feed5160cc034593fd57b2efd8', '[\"*\"]', NULL, NULL, '2024-11-23 15:22:01', '2024-11-23 15:22:01'),
(2, 'App\\Models\\User', 1, 'auth_token', 'c297a592cf5a56a73762969a831c8c40a704ba91044016815b0976ee34638409', '[\"*\"]', NULL, NULL, '2024-11-23 15:22:13', '2024-11-23 15:22:13'),
(3, 'App\\Models\\User', 1, 'auth_token', '29dcda18d22f8ca1d0eb819d334c48c8b2ad2a55333c66aaa9318292e1331b47', '[\"*\"]', NULL, NULL, '2024-11-23 15:22:14', '2024-11-23 15:22:14'),
(4, 'App\\Models\\User', 1, 'auth_token', '41b066f30c9d89e48e776a449843081371cbc0c45cc0a20d6ccb33d9fdb9477e', '[\"*\"]', NULL, NULL, '2024-11-23 15:22:17', '2024-11-23 15:22:17'),
(5, 'App\\Models\\User', 1, 'auth_token', '3126949474d243857e1a3bd7d51db80f3543998848099789050882fab9be7ae1', '[\"*\"]', NULL, NULL, '2024-11-23 15:50:29', '2024-11-23 15:50:29'),
(6, 'App\\Models\\User', 1, 'auth_token', 'd13c95601341fd1004d1af6c865dd3548e2dcceebb0ab6faec55590531b8ebf4', '[\"*\"]', NULL, NULL, '2024-11-23 15:50:42', '2024-11-23 15:50:42'),
(7, 'App\\Models\\User', 1, 'auth_token', '65b53d39cf64ca292cbee4eee52c5b6d1560de22f3783a7a803339d481a4154d', '[\"*\"]', NULL, NULL, '2024-11-23 15:55:07', '2024-11-23 15:55:07'),
(8, 'App\\Models\\User', 1, 'auth_token', 'cb29f733e52b5192e1a7a7fc2667d3768dd21517f5e2c77869831b45d759e0a0', '[\"*\"]', NULL, NULL, '2024-11-23 15:56:54', '2024-11-23 15:56:54'),
(9, 'App\\Models\\User', 1, 'auth_token', '60f01ab0467decd9c1e774f3c7737745be3fd5e939b34f8db26b51e0390e799f', '[\"*\"]', NULL, NULL, '2024-11-23 16:01:59', '2024-11-23 16:01:59'),
(10, 'App\\Models\\User', 1, 'auth_token', '4d9cc433748c11937c2b5d96f80a7850f36e8f04fda189b1230aa7040bfbfe57', '[\"*\"]', NULL, NULL, '2024-11-23 16:02:12', '2024-11-23 16:02:12'),
(11, 'App\\Models\\User', 1, 'auth_token', '5258d51f5f3ca0b96fd6dda768f8538c94a6a1b32c197f3ced8f741ab88732f0', '[\"*\"]', NULL, NULL, '2024-11-23 16:02:36', '2024-11-23 16:02:36'),
(12, 'App\\Models\\User', 1, 'auth_token', '786cef77d97bf45b73853f850d2da33eef7e7a92ca0b8d59d8a4a00f5a321d72', '[\"*\"]', NULL, NULL, '2024-11-23 16:03:42', '2024-11-23 16:03:42'),
(13, 'App\\Models\\User', 1, 'auth_token', '1001ebdb6e751caa5459126519d9d1e80241561b56a5baafbf4e302b95f4393f', '[\"*\"]', NULL, NULL, '2024-11-23 16:04:15', '2024-11-23 16:04:15'),
(14, 'App\\Models\\User', 1, 'auth_token', '5c23d7ea7f53873e49f015aa757007779a29b4e79a5dee00017d218065542d8f', '[\"*\"]', NULL, NULL, '2024-11-23 16:04:21', '2024-11-23 16:04:21'),
(15, 'App\\Models\\User', 1, 'auth_token', 'f1944dc02b77f9e49e3741fb4b2f17fe87f8bf90c662391fb0ba3656abf6cf09', '[\"*\"]', '2024-11-26 03:52:46', NULL, '2024-11-23 16:04:25', '2024-11-26 03:52:46'),
(16, 'App\\Models\\User', 1, 'auth_token', '71187ac11f7f9cd7b23eb00bdf3461435e764a243435e2b54905f71d9b9205d7', '[\"*\"]', NULL, NULL, '2024-11-26 03:28:47', '2024-11-26 03:28:47'),
(17, 'App\\Models\\User', 1, 'auth_token', '664ec8f1517810e61de4a00b17e0bcf6d2edd6bc095de72f63ab4fed4b42ab15', '[\"*\"]', '2024-11-26 03:53:15', NULL, '2024-11-26 03:28:53', '2024-11-26 03:53:15'),
(18, 'App\\Models\\User', 1, 'auth_token', 'b262e57b809bf2a86ba6612a6d4a3574026e4dc640a1b60494e6730756d6cdb9', '[\"*\"]', '2024-11-26 05:03:36', NULL, '2024-11-26 03:50:50', '2024-11-26 05:03:36'),
(19, 'App\\Models\\User', 1, 'auth_token', 'e10938fbc6ea0043ff2bccd9e395836eb49c98712f028cd00ce9a22afb2a3484', '[\"*\"]', NULL, NULL, '2024-11-26 04:52:50', '2024-11-26 04:52:50'),
(20, 'App\\Models\\User', 1, 'auth_token', 'e5c37ff01f63b3338566d7f01f25595dd117c2d764b55174817cf33de77add3a', '[\"*\"]', NULL, NULL, '2024-11-26 04:53:41', '2024-11-26 04:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `refresh_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'amarat', 'amarat@gmail.com', NULL, '$2y$10$BSl7nIXqYtAttTcvHK1KD.owNqkjEe19cOWdYnF/1iCrVdFszK/OC', 'kUeC6Uuc3Ae7QwO0ag6ftPhUKYTz8935JqsyTm1edEZqd03rbde4XG54bR3Q', NULL, '2024-11-26 08:18:20', '2024-11-26 04:53:41'),
(2, 'test', 'test@gmail.com', NULL, '$2y$10$dCfN/Ed0s3KyvqfRiGHqvOuTBrDcHdM/es7HebEfoDfi6nRBh4MpO', NULL, NULL, '2024-11-26 16:35:06', '2024-11-26 16:35:06'),
(3, 'test', 'demo@gmail.com', NULL, '$2y$10$bpEXLGtc8AQ3b8SN/4NTBuhZaXAgTbuXa8ECWj6uf6N30aB7YgIc.', NULL, NULL, '2024-11-26 04:04:16', '2024-11-26 04:04:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesses`
--
ALTER TABLE `accesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accesses_user_id_foreign` (`user_id`),
  ADD KEY `accesses_device_id_foreign` (`device_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `devices_device_unique_id_unique` (`device_unique_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesses`
--
ALTER TABLE `accesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accesses`
--
ALTER TABLE `accesses`
  ADD CONSTRAINT `accesses_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accesses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
