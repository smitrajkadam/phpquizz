-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 07:24 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpquizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE `ans` (
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` int(11) NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ans`
--

INSERT INTO `ans` (`answer_id`, `question_id`, `option_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Hypertext Preprocessor', NULL, NULL),
(2, 1, 2, 'Pretext Hypertext Preprocessor', NULL, NULL),
(3, 1, 3, 'Personal Home Processor', NULL, NULL),
(4, 1, 4, 'None of the above', NULL, NULL),
(5, 2, 1, 'Drek Kolkevi', NULL, NULL),
(6, 2, 2, 'List Barely', NULL, NULL),
(7, 2, 3, 'Rasmus Lerdrof', NULL, NULL),
(8, 2, 4, 'None of the above', NULL, NULL),
(9, 3, 1, '! (Exclamation)', NULL, NULL),
(10, 3, 2, '$ (Dollar)', NULL, NULL),
(11, 3, 3, '& (Ampersand)', NULL, NULL),
(12, 3, 4, '# (Hash)', NULL, NULL);

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
(1, '2022_05_27_134323_create_usermail_table', 1),
(2, '2022_05_27_134606_create_mcqoption_table', 2),
(3, '2022_05_27_134442_create_que_table', 3),
(4, '2022_05_27_134456_create_ans_table', 4),
(5, '2022_05_27_134542_create_queresponse_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `que`
--

CREATE TABLE `que` (
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_answer` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `que`
--

INSERT INTO `que` (`question_id`, `question`, `correct_answer`, `created_at`, `updated_at`) VALUES
(1, 'PHP stands for -', 1, NULL, NULL),
(2, 'Who is known as the father of PHP?', 3, NULL, NULL),
(3, 'Variable name in PHP starts with -', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `queresponse`
--

CREATE TABLE `queresponse` (
  `response_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `queresponse`
--

INSERT INTO `queresponse` (`response_id`, `question_id`, `answer_id`, `email_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 6, '2022-05-27 04:22:42', '2022-05-27 04:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `usermail`
--

CREATE TABLE `usermail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usermail`
--

INSERT INTO `usermail` (`id`, `email`, `created_at`, `updated_at`) VALUES
(4, 'vaibhav@gmail.com', '2022-05-27 04:15:46', '2022-05-27 04:15:46'),
(6, 'vaibhavw@gmail.com', '2022-05-27 04:22:37', '2022-05-27 04:22:37'),
(24, 'vaibhavw1@gmail.com', '2022-07-06 17:05:40', '2022-07-06 17:05:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ans`
--
ALTER TABLE `ans`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `ans_question_id_foreign` (`question_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `que`
--
ALTER TABLE `que`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `queresponse`
--
ALTER TABLE `queresponse`
  ADD PRIMARY KEY (`response_id`),
  ADD KEY `queresponse_answer_id_foreign` (`answer_id`),
  ADD KEY `queresponse_email_id_foreign` (`email_id`);

--
-- Indexes for table `usermail`
--
ALTER TABLE `usermail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ans`
--
ALTER TABLE `ans`
  MODIFY `answer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `que`
--
ALTER TABLE `que`
  MODIFY `question_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `queresponse`
--
ALTER TABLE `queresponse`
  MODIFY `response_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `usermail`
--
ALTER TABLE `usermail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ans`
--
ALTER TABLE `ans`
  ADD CONSTRAINT `ans_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `que` (`question_id`) ON DELETE CASCADE;

--
-- Constraints for table `queresponse`
--
ALTER TABLE `queresponse`
  ADD CONSTRAINT `queresponse_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `ans` (`answer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `queresponse_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `usermail` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
