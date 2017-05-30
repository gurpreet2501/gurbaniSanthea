-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2017 at 06:18 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dggsjm`
--

-- --------------------------------------------------------

--
-- Table structure for table `ang`
--

CREATE TABLE `ang` (
  `id` int(11) NOT NULL,
  `ang` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `ang`
--

INSERT INTO `ang` (`id`, `ang`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-05-26 19:35:24', '0000-00-00 00:00:00'),
(2, 2, '2017-05-26 19:35:30', '0000-00-00 00:00:00'),
(7, 3, '2017-05-26 19:35:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ang_lines`
--

CREATE TABLE `ang_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `line_no` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `hindi_text` longtext NOT NULL,
  `eng_translation` longtext NOT NULL,
  `ang_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `ang_lines`
--

INSERT INTO `ang_lines` (`id`, `line_no`, `text`, `hindi_text`, `eng_translation`, `ang_id`, `created_at`, `updated_at`) VALUES
(5, 1, 'ੴ ਸਤਿ ਨਾਮੁ ਕਰਤਾ ਪੁਰਖੁ ਨਿਰਭਉ ਨਿਰਵੈਰੁ ਅਕਾਲ ਮੂਰਤਿ ਅਜੂਨੀ ਸੈਭੰ ਗੁਰ ਪ੍ਰਸਾਦਿ ॥॥ ਜਪੁ ॥ਆਦਿ ਸਚੁ ਜੁਗਾਦਿ ਸਚੁ ॥ਹੈ ਭੀ ਸਚੁ ਨਾਨਕ ਹੋਸੀ ਭੀ ਸਚੁ ॥੧॥', '', '', 1, '2017-05-27 08:32:37', '0000-00-00 00:00:00'),
(6, 2, 'ਸੋਚੈ ਸੋਚਿ ਨ ਹੋਵਈ ਜੇ ਸੋਚੀ ਲਖ ਵਾਰ ॥ਚੁਪੈ ਚੁਪ ਨ ਹੋਵਈ ਜੇ ਲਾਇ ਰਹਾ ਲਿਵ ਤਾਰ ॥ਭੁਖਿਆ ਭੁਖ ', '', '', 1, '2017-05-27 08:32:23', '0000-00-00 00:00:00'),
(7, 3, 'ਨ ਉਤਰੀ ਜੇ ਬੰਨਾ ਪੁਰੀਆ ਭਾਰ ॥ ਸਹਸ ਸਿਆਣਪਾ ਲਖ ਹੋਹਿ ਤ ਇਕ ਨ ਚਲੈ ਨਾਲਿ ॥ ਕਿਵ ਸਚਿਆਰਾ', '', '', 1, '2017-05-29 20:08:38', '0000-00-00 00:00:00'),
(8, 4, 'ਹੋਈਐ ਕਿਵ ਕੂੜੈ ਤੁਟੈ ਪਾਲਿ ॥ ਹੁਕਮਿ ਰਜਾਈ ਚਲਣਾ ਨਾਨਕ ਲਿਖਿਆ ਨਾਲਿ ॥੧॥ ਹੁਕਮੀ ਹੋਵਨਿ\r\n', '', '', 1, '2017-05-29 20:13:20', '0000-00-00 00:00:00'),
(9, 5, 'ਆਕਾਰ ਹੁਕਮੁ ਨ ਕਹਿਆ ਜਾਈ ॥ਹੁਕਮੀ ਹੋਵਨਿ ਜੀਅ ਹੁਕਮਿ ਮਿਲੈ ਵਡਿਆਈ ॥ਹੁਕਮੀ ਉਤਮੁ ਨੀਚੁ ', '', '', 1, '2017-05-29 20:27:55', '0000-00-00 00:00:00'),
(10, 6, 'ਹੁਕਮਿ ਲਿਖਿ ਦੁਖ ਸੁਖ ਪਾਈਅਹਿ ॥ਇਕਨਾ ਹੁਕਮੀ ਬਖਸੀਸ ਇਕਿ ਹੁਕਮੀ ਸਦਾ ਭਵਾਈਅਹਿ ॥ਹੁਕਮੈ', '', '', 1, '2017-05-29 20:30:44', '0000-00-00 00:00:00'),
(11, 7, 'ਅੰਦਰਿ ਸਭੁ ਕੋ ਬਾਹਰਿ ਹੁਕਮ ਨ ਕੋਇ ॥ਨਾਨਕ ਹੁਕਮੈ ਜੇ ਬੁਝੈ ਤ ਹਉਮੈ ਕਹੈ ਨ ਕੋਇ ॥੨॥ਗਾਵੈ ਕੋ', '', '', 1, '2017-05-29 20:35:42', '0000-00-00 00:00:00'),
(12, 8, 'ਤਾਣੁ ਹੋਵੈ ਕਿਸੈ ਤਾਣੁ ॥ਗਾਵੈ ਕੋ ਦਾਤਿ ਜਾਣੈ ਨੀਸਾਣੁ ॥ਗਾਵੈ ਕੋ', '', '', 1, '2017-05-29 20:36:39', '0000-00-00 00:00:00'),
(13, 9, 'ਗੁਣ ਵਡਿਆਈਆ ਚਾਰ ॥ਗਾਵੈ ਕੋ ਵਿਦਿਆ ਵਿਖਮੁ ਵੀਚਾਰੁ ॥ਗਾਵੈ ਕੋ ਸਾਜਿ ਕਰੇ ਤਨੁ ਖੇਹ ॥ਗਾਵੈ ਕੋ ਜੀਅ ਲੈ ਫਿਰਿ ਦੇਹ ॥ਗਾਵੈ', '', '', 1, '2017-05-29 20:36:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `replacements`
--

CREATE TABLE `replacements` (
  `id` int(10) UNSIGNED NOT NULL,
  `original_word` varchar(50) NOT NULL,
  `replacement` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `audio` varchar(255) NOT NULL,
  `line_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `replacements`
--

INSERT INTO `replacements` (`id`, `original_word`, `replacement`, `description`, `audio`, `line_id`) VALUES
(7, 'ਭੁਖਿਆ', 'ਭੁਖਿਆਂ', '', '', 6),
(8, 'ਰਹਾ', 'ਰਹਾਂ', '', '', 6),
(9, 'ਸੋਚੀ', 'ਸੋਚੀਂ', '', '', 6),
(10, 'ਬੰਨਾ', 'ਬੰਨਾੑ', '', '', 7),
(11, 'ਸਿਆਣਪਾ', 'ਸਿਆਣਪਾਂ', '', '', 7),
(12, 'ਰਜਾਈ', 'ਰਜ਼ਾਈ', '', '', 8),
(13, 'ਪਾਈਅਹਿ', 'ਪਾਈਅੈਂਹ', '', '', 10),
(14, 'ਭਵਾਈਅਹਿ', 'ਭਵਾਈਅੈਂਹ', '', '', 10),
(15, 'ਬਖਸੀਸ', 'ਬਖਸ਼ੀਸ਼', '', '', 10),
(16, 'ਨੀਸਾਣੁ', 'ਨੀਸ਼ਾਣੁ', '', '', 12),
(17, 'ਵਡਿਆਈਆ', 'ਵਡਿਆਈਆਂ', '', '', 13);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8_bin NOT NULL,
  `sex` varchar(50) COLLATE utf8_bin NOT NULL,
  `age` varchar(10) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `role` enum('employee','admin','user') COLLATE utf8_bin NOT NULL DEFAULT 'employee',
  `full_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_bin NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) COLLATE utf8_bin NOT NULL,
  `block` varchar(255) COLLATE utf8_bin NOT NULL,
  `room_no` varchar(255) COLLATE utf8_bin NOT NULL,
  `date_of_birth` date NOT NULL,
  `department` varchar(255) COLLATE utf8_bin NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `otp` varchar(12) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `profile_pic`, `sex`, `age`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `role`, `full_name`, `phone_number`, `added_by`, `designation`, `block`, `room_no`, `date_of_birth`, `department`, `verified`, `otp`) VALUES
(981, 'admin', '$P$BBl1/SIa19CPqnvsD.4TB.2ItBSe4l0', 'dozuwyriwy@yahoo.com', '', 'Female', 'Vitae sunt', 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2017-05-30 07:13:18', '2017-05-12 12:49:55', '2017-05-30 01:43:18', 'admin', 'Paula Fox', '+646-40-4085053', 0, '', '', '', '0000-00-00', '', 0, 'JxYzkIa');

-- --------------------------------------------------------

--
-- Table structure for table `user_autologin`
--

CREATE TABLE `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_autologin`
--

INSERT INTO `user_autologin` (`key_id`, `user_id`, `user_agent`, `last_ip`, `last_login`) VALUES
('0635085927149477c51b13bfbbe44051', 981, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', '127.0.0.1', '2017-05-16 05:04:51'),
('13307dd433207c0162998d30f7ca26ee', 981, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', '127.0.0.1', '2017-05-26 14:45:39'),
('4e908bf49930aacb9ef64d10d09ee010', 981, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '2017-05-30 01:43:18'),
('d1caabbdbfe5638802a15dd64bdafc4c', 959, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', '2017-05-11 03:20:45'),
('ec4d7518114f1a82141902180f828804', 964, 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0', '127.0.0.1', '2017-05-11 05:44:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ang`
--
ALTER TABLE `ang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ang_lines`
--
ALTER TABLE `ang_lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replacements`
--
ALTER TABLE `replacements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_autologin`
--
ALTER TABLE `user_autologin`
  ADD PRIMARY KEY (`key_id`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ang`
--
ALTER TABLE `ang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ang_lines`
--
ALTER TABLE `ang_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `replacements`
--
ALTER TABLE `replacements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=982;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
