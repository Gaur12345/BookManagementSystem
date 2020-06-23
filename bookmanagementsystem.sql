-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2020 at 05:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookId` int(4) NOT NULL,
  `sid` int(5) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `bauthor` varchar(255) NOT NULL,
  `bprice` varchar(10) NOT NULL,
  `dccno` varchar(20) NOT NULL,
  `reg_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `sid`, `bname`, `bauthor`, `bprice`, `dccno`, `reg_date`) VALUES
(1, 1, 'C in Depth', 'Raj Kumar', '3453', '456.89', '21-06-20 04:03:00'),
(3, 1, 'Advance Java', 'Saloni Kumari', '3453', '23.977', '21-06-20 04:09:08'),
(4, 1, 'Python', 'Gaurav Kumar', '2311', '2323.90', '21-06-20 04:11:33'),
(7, 1, 'Python Programming', 'Denil Richi', '1111', '23423', '21-06-20 10:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('0444f4854aa0f4274f865aaa71ce22bdfb9e2ee1087023e9f3272dda24380c0c882920fd5262b947', 2, 1, 'MyApp', '[]', 0, '2020-06-21 01:15:47', '2020-06-21 01:15:47', '2021-06-21 06:45:47'),
('2ed545e51a6d027879d48fa586f55a9fdd7f9775e624712bad2583764359d6f65f6a57c78be6e30b', 2, 1, 'MyApp', '[]', 0, '2020-06-22 12:14:09', '2020-06-22 12:14:09', '2021-06-22 17:44:09'),
('2f45d43b09c121473496a58d57e9861518f73f16ab48234addd204094b98300dcbd3929224b69fcb', 2, 1, 'MyApp', '[]', 0, '2020-06-21 02:50:16', '2020-06-21 02:50:16', '2021-06-21 08:20:16'),
('39a33007dd092f389caff1edf7cc12e1f7edd70ac77ff2290c8cb6e4fe3b434c5e46627063b3abab', 2, 1, 'MyApp', '[]', 0, '2020-06-21 02:39:25', '2020-06-21 02:39:25', '2021-06-21 08:09:25'),
('3cd51680aa7e0e38150c7423dfbd1590cc496bad0b78221b1b8fc221ddca1fb9ad486d7c80030115', 2, 1, 'MyApp', '[]', 0, '2020-06-21 11:27:21', '2020-06-21 11:27:21', '2021-06-21 16:57:21'),
('729438424725ce0f8ef12bc3471f43286d4046c3b35b5b88463edf7020b30aca9a7f5695ee8d93af', 2, 1, 'MyApp', '[]', 0, '2020-06-21 03:25:55', '2020-06-21 03:25:55', '2021-06-21 08:55:55'),
('777990f30c7ea0ff59cfb07179460a6c98d4766a125981e094d9ef294a3bdafbfe129f7500173cbe', 1, 1, 'MyApp', '[]', 0, '2020-06-21 01:10:25', '2020-06-21 01:10:25', '2021-06-21 06:40:25'),
('956b015526051bcc9bd735f71ddfead0f6df4f346cec24a7ebbe22f340d3802185d87e6cc8afee17', 2, 1, 'MyApp', '[]', 0, '2020-06-21 01:19:32', '2020-06-21 01:19:32', '2021-06-21 06:49:32'),
('bff02f2e59e09e1d27d8d134dd0041169bb937db5bb93839c1eb08c6579bcb3b538bafcf51d30e9d', 2, 1, 'MyApp', '[]', 0, '2020-06-21 02:35:44', '2020-06-21 02:35:44', '2021-06-21 08:05:44'),
('c816bd63d92fa3a200607a7823dcb2cf5f8aad3d6098b41c1decd0e7bc60307105fc7269863768ae', 2, 1, 'MyApp', '[]', 0, '2020-06-22 10:20:18', '2020-06-22 10:20:18', '2021-06-22 15:50:18'),
('d1ed9da5c50936e6030b08e3e18a3114b8cc0db68c36aff0e6da961b353d5cc497769dd742e96b78', 2, 1, 'MyApp', '[]', 0, '2020-06-21 02:38:44', '2020-06-21 02:38:44', '2021-06-21 08:08:44'),
('d4d0d8182071c0678d1a026cd7230ab25edb4d3c6a7a4c555bad8ca6b717f3f6d45d18059cf0bddc', 2, 1, 'MyApp', '[]', 0, '2020-06-22 11:16:18', '2020-06-22 11:16:18', '2021-06-22 16:46:18'),
('d5f4bdffb5515d72c5ef779fecab12f0081500601b5da654bf8c213d45a29913c2a9a9b289d3deaa', 2, 1, 'MyApp', '[]', 0, '2020-06-22 00:22:06', '2020-06-22 00:22:06', '2021-06-22 05:52:06'),
('db53f632fd076cef6315669cc6df3d11ced5144b4551589ddb8cbedff3c76b2dbbd13e77e997261f', 2, 1, 'MyApp', '[]', 0, '2020-06-21 03:12:20', '2020-06-21 03:12:20', '2021-06-21 08:42:20'),
('ece818c163298200babad84ddd1973042eee22e51dc577776e0288acf840f62a811e2a35031aee3d', 2, 1, 'MyApp', '[]', 0, '2020-06-21 02:45:55', '2020-06-21 02:45:55', '2021-06-21 08:15:55'),
('f4fc7bceed364a16722635cbb330feaab56bc6f22ee1e07dcba0b6dc35dccd82110c7eb744891b60', 2, 1, 'MyApp', '[]', 0, '2020-06-21 02:42:34', '2020-06-21 02:42:34', '2021-06-21 08:12:34'),
('f8882ee1d21b41bc37608b162b3fdf2114dda1ddf8faffa7981c24b9f5d92d508d999eb9320f8d14', 2, 1, 'MyApp', '[]', 0, '2020-06-22 08:29:55', '2020-06-22 08:29:55', '2021-06-22 13:59:55'),
('ffe331778564ade265b5ee5b6c5a2ad95c633a408a5fba252446ae0e2f02813d2d892bd739ae964a', 2, 1, 'MyApp', '[]', 0, '2020-06-21 02:51:30', '2020-06-21 02:51:30', '2021-06-21 08:21:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'nO5usiTHfYwUBR5ebWh4DFwy3ocd3UibZyj2q0BE', NULL, 'http://localhost', 1, 0, 0, '2020-06-20 23:17:00', '2020-06-20 23:17:00'),
(2, NULL, 'Laravel Password Grant Client', 'FXGpIVTPrBDDxxK9Sd7csHAKZnVTP91LMD2YTMkQ', 'users', 'http://localhost', 0, 1, 0, '2020-06-20 23:17:00', '2020-06-20 23:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-20 23:17:00', '2020-06-20 23:17:00');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(5) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reg_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gaurav Kumar', 'gaurav.kk566@gmail.com', NULL, '$2y$10$Dd01ASS0atpr.oY7ePoqj.xnh91SqjAW6xDRu7NuyJ6wdWbL5QdN.', NULL, '2020-06-21 01:10:25', '2020-06-21 01:10:25'),
(2, 'Manish Kumar', 'Manish@gmail.com', NULL, '$2y$10$i7uOCgPy3ZFnrpWKaJq1ruqMsYm6n1k9pY5Cfbh2MUY/otPlMujaq', NULL, '2020-06-21 01:15:47', '2020-06-21 01:15:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`),
  ADD UNIQUE KEY `dccno` (`dccno`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
