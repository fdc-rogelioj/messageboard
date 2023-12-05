-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2023 at 04:09 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msgBoard`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `to_id` int(11) DEFAULT NULL,
  `from_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `to_id`, `from_id`, `content`, `created`, `modified`) VALUES
(10, 11, 48, 'something test 5', '2023-12-01 05:36:34', '2023-12-01 05:36:34'),
(11, 20, 48, 'something test10', '2023-12-01 05:36:51', '2023-12-01 05:36:51'),
(15, 12, 34, 'sample', '2023-12-04 02:25:51', '2023-12-04 02:25:51'),
(16, 45, 34, 'sample hello', '2023-12-04 02:26:07', '2023-12-04 02:26:07'),
(17, 47, 34, 'hi this is sample only', '2023-12-04 02:26:26', '2023-12-04 02:26:26'),
(18, 10, 34, 'this is only test sample', '2023-12-04 02:26:38', '2023-12-04 02:26:38'),
(19, 20, 34, 'test1', '2023-12-04 02:26:46', '2023-12-04 02:26:46'),
(20, 10, 34, 'test 2', '2023-12-04 02:26:53', '2023-12-04 02:26:53'),
(21, 21, 34, 'just a test', '2023-12-04 02:28:18', '2023-12-04 02:28:18'),
(22, 3, 34, 'test user just a test', '2023-12-04 02:28:33', '2023-12-04 02:28:33'),
(23, 46, 34, 'Sending this for testing', '2023-12-04 02:28:48', '2023-12-04 02:28:48'),
(25, 10, 34, 'test11', '2023-12-04 02:29:26', '2023-12-04 02:29:26'),
(27, 13, 34, 'just to test', '2023-12-04 02:30:10', '2023-12-04 02:30:10'),
(28, 6, 34, 'test sample 1', '2023-12-04 02:41:21', '2023-12-04 02:41:21'),
(29, 7, 34, 'sample test 2', '2023-12-04 02:41:33', '2023-12-04 02:41:33'),
(30, 9, 34, 'sample test 3', '2023-12-04 02:41:45', '2023-12-04 02:41:45'),
(31, 7, 34, 'sample test 6', '2023-12-04 02:41:58', '2023-12-04 02:41:58'),
(35, 37, 46, 'hey test', '2023-12-04 04:20:33', '2023-12-04 04:20:33'),
(36, 6, 49, 'this is just a test', '2023-12-04 06:37:04', '2023-12-04 06:37:04'),
(39, 46, 46, 'need more testing', '2023-12-04 07:27:29', '2023-12-04 07:27:29'),
(40, 46, 46, 'Need to study more', '2023-12-04 07:28:28', '2023-12-04 07:28:28'),
(41, 47, 46, 'work hard', '2023-12-04 08:39:00', '2023-12-04 08:39:00'),
(42, 46, 46, 'Practice practice', '2023-12-04 08:39:17', '2023-12-04 08:39:17'),
(43, 24, 46, 'More practice pa', '2023-12-04 08:39:48', '2023-12-04 08:39:48'),
(44, 7, 46, 'you can do it!', '2023-12-04 08:40:14', '2023-12-04 08:40:14'),
(45, 3, 46, 'try harder', '2023-12-04 08:40:25', '2023-12-04 08:40:25'),
(46, 35, 46, 'do your best', '2023-12-04 08:40:38', '2023-12-04 08:40:38'),
(51, 13, 46, 'more testing', '2023-12-04 09:07:52', '2023-12-04 09:07:52'),
(52, 21, 46, 'another test', '2023-12-04 09:08:05', '2023-12-04 09:08:05'),
(54, 37, 46, 'hey thanks', '2023-12-04 10:48:27', '2023-12-04 10:48:27'),
(56, 5, 34, 'hey this is just a test', '2023-12-05 02:04:24', '2023-12-05 02:04:24'),
(57, 34, 34, 'thanks', '2023-12-05 03:55:02', '2023-12-05 03:55:02'),
(58, 34, 34, 'how may i help you?', '2023-12-05 03:57:10', '2023-12-05 03:57:10'),
(59, 34, 34, 'yes?', '2023-12-05 04:06:19', '2023-12-05 04:06:19'),
(60, 34, 34, 'yes?', '2023-12-05 04:06:32', '2023-12-05 04:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `hubby` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `gender`, `birthdate`, `hubby`, `last_login_time`, `created`, `modified`, `created_ip`, `modified_ip`) VALUES
(3, 'testuser', 'test@test.com', '688a18786f8eea8576799acbc5b8480fd6d58244', NULL, NULL, NULL, NULL, '2023-11-28 02:55:16', '2023-11-28 02:55:16', '2023-11-28 02:55:16', '::1', NULL),
(4, 'Testing1', 'test1@test.com', '1ca1a1e97f5ab5e6869485d7003a216330f5d631', NULL, NULL, NULL, NULL, '2023-11-28 03:19:12', '2023-11-28 03:19:12', '2023-11-28 03:19:12', '::1', NULL),
(5, 'aaaaaaaa', 'aaaaaa@gmail.com', '4e120b3373d501230159dee73ba138a5a0346afa', NULL, NULL, NULL, NULL, '2023-11-28 04:48:02', '2023-11-28 04:48:02', '2023-11-28 04:48:02', '::1', NULL),
(6, 'thisTest', 'thisTest@yahoo.com', 'a9fd0d315bab038b2521bba6e3fffc0d40358a12', NULL, NULL, NULL, NULL, '2023-11-28 06:28:20', '2023-11-28 06:28:20', '2023-11-28 06:28:20', '::1', NULL),
(7, 'thisTest11', 'thisTest1@yahoo.com', 'a9fd0d315bab038b2521bba6e3fffc0d40358a12', NULL, NULL, NULL, NULL, '2023-11-28 06:28:54', '2023-11-28 06:28:54', '2023-11-28 06:28:54', '::1', NULL),
(8, '123123', '123@gmail.com', 'a9fd0d315bab038b2521bba6e3fffc0d40358a12', NULL, NULL, NULL, NULL, '2023-11-28 06:46:46', '2023-11-28 06:33:05', '2023-11-28 06:46:46', '::1', NULL),
(9, 'thisTest1231', 'thisTest213@yahoo.com', '4e120b3373d501230159dee73ba138a5a0346afa', NULL, NULL, NULL, NULL, '2023-11-28 06:55:14', '2023-11-28 06:55:14', '2023-11-28 06:55:14', '::1', NULL),
(10, 'thisTest1231', 'thisTest2131@yahoo.com', '4e120b3373d501230159dee73ba138a5a0346afa', NULL, NULL, NULL, NULL, '2023-11-28 09:25:18', '2023-11-28 06:55:24', '2023-11-28 09:25:18', '::1', NULL),
(11, 'bbbbbbbb', 'bb@test.com', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-28 09:27:12', '2023-11-28 09:27:12', '2023-11-28 09:27:12', '::1', NULL),
(12, 'aaaaaaaaaa', 'aaaa@aaa.com', 'a9fd0d315bab038b2521bba6e3fffc0d40358a12', NULL, NULL, NULL, NULL, NULL, '2023-11-29 01:23:24', '2023-11-29 01:23:24', '::1', NULL),
(13, 'aà2312313123', 'aaaa@aaa1.com', '5e1a854844a1f5101211b87f4e5907e42a3ca909', NULL, NULL, NULL, NULL, '2023-11-29 04:16:45', '2023-11-29 01:45:57', '2023-11-29 04:16:45', '::1', NULL),
(14, '123123123', 'thisTest2113@yahoo.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', NULL, NULL, NULL, NULL, NULL, '2023-11-29 02:22:48', '2023-11-29 02:22:48', '::1', NULL),
(15, 'TEST115', 'testGG@test.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', NULL, NULL, NULL, NULL, NULL, '2023-11-29 02:32:03', '2023-11-29 02:32:03', '::1', NULL),
(16, 'TEST11511', 'testGG11@test.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', NULL, NULL, NULL, NULL, NULL, '2023-11-29 02:38:18', '2023-11-29 02:38:18', '::1', NULL),
(17, 'TEST1151', 'testGG141@test.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', NULL, NULL, NULL, NULL, NULL, '2023-11-29 02:41:08', '2023-11-29 02:41:08', '::1', NULL),
(18, 'adwawd', 'awdawd11@wdawd.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', NULL, NULL, NULL, NULL, NULL, '2023-11-29 02:42:33', '2023-11-29 02:42:33', '::1', NULL),
(19, 'cccccc', 'ccccc@test.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', NULL, NULL, NULL, NULL, NULL, '2023-11-29 02:59:39', '2023-11-29 02:59:39', '::1', NULL),
(20, 'aaaaa111', 'awdawd11@wdawd1.com', '601f1889667efaebb33b8c12572835da3f027f78', NULL, NULL, NULL, NULL, NULL, '2023-11-29 03:19:40', '2023-11-29 03:19:40', '::1', NULL),
(21, 'aawdwdaa', 'test14@test.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, NULL, NULL, '2023-11-29 04:16:45', '2023-11-29 04:16:45', '::1', NULL),
(22, 'SampleTest', 'sample@test.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', NULL, NULL, NULL, NULL, NULL, '2023-11-29 04:59:58', '2023-11-29 04:59:58', '::1', NULL),
(23, 'SampleTest', 'sample1@test.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, NULL, NULL, '2023-11-29 05:00:07', '2023-11-29 05:00:07', '::1', NULL),
(24, 'SampleTest', 'sample11@test.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, NULL, NULL, '2023-11-29 05:00:13', '2023-11-29 05:00:13', '::1', NULL),
(25, 'ggggg', 'ggg@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, NULL, NULL, '2023-11-29 06:00:41', '2023-11-29 06:00:41', '::1', NULL),
(26, 'ggggg1', 'ggg1@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, NULL, NULL, '2023-11-29 06:06:36', '2023-11-29 06:06:36', '::1', NULL),
(27, 'testtt1', 'testt11@test.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, NULL, NULL, '2023-11-29 06:06:53', '2023-11-29 06:06:53', '::1', NULL),
(28, 'testtt11', 'testt111@test.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', NULL, NULL, NULL, NULL, NULL, '2023-11-29 06:08:09', '2023-11-29 06:08:09', '::1', NULL),
(29, 'testtt11', 'testt1111@test.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', NULL, NULL, NULL, NULL, NULL, '2023-11-29 06:08:15', '2023-11-29 06:08:15', '::1', NULL),
(30, 'test11111', 'test11111@test.test', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', NULL, NULL, NULL, NULL, NULL, '2023-11-29 06:18:22', '2023-11-29 06:18:22', '::1', NULL),
(31, 'test2', 'test2@test.test', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-30 05:54:33', '2023-11-29 06:19:37', '2023-11-30 05:54:33', '::1', NULL),
(32, 'test22', 'test22@test.com', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-29 06:51:39', '2023-11-29 06:26:24', '2023-11-29 06:51:39', '::1', NULL),
(33, 'test23', 'test23@test.com', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-29 06:52:00', '2023-11-29 06:52:00', '2023-11-29 06:52:00', '::1', NULL),
(34, 'tesst33', 'test3@test.test', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', '1701655279.png', '1', '1983-10-01', 'Testing only edited', '2023-12-05 03:13:01', '2023-11-29 07:26:22', '2023-12-05 03:13:01', '::1', '::1'),
(35, 'helloTEST', 'hello@test.com', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-29 08:04:18', '2023-11-29 08:04:18', '2023-11-29 08:04:18', '::1', NULL),
(36, 'awdawd', 'adwawd@ggg.cm', '0e2b08f0c01d3ee4f4895de6dc63b333cdf82c4a', NULL, NULL, NULL, NULL, '2023-11-29 08:16:41', '2023-11-29 08:16:41', '2023-11-29 08:16:41', '::1', NULL),
(37, 'test04', 'test04@test.com', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-12-04 04:20:40', '2023-11-29 08:24:53', '2023-12-04 04:20:40', '::1', NULL),
(38, 'test05', 'test05@test.test', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', NULL, NULL, NULL, NULL, NULL, '2023-11-29 08:28:42', '2023-11-29 08:28:42', '::1', NULL),
(39, 'test05', 'test051@test.test', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-30 05:43:59', '2023-11-29 08:29:02', '2023-11-30 05:43:59', '::1', NULL),
(40, 'test05', '1test051@test.test', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-29 09:10:25', '2023-11-29 09:10:25', '2023-11-29 09:10:25', '::1', NULL),
(41, 'test05', 'test0511@test.test', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-29 10:40:44', '2023-11-29 09:10:46', '2023-11-29 10:40:44', '::1', NULL),
(42, 'thisTest121', 'test012@test.com', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-30 07:37:42', '2023-11-30 01:26:00', '2023-11-30 07:37:42', '::1', NULL),
(43, 'sampletest01', 'sampletest01@test.test', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-30 02:21:41', '2023-11-30 02:21:24', '2023-11-30 02:21:41', '::1', NULL),
(44, 'TEST01', 'TEST01@TEST.TEST', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-30 05:56:55', '2023-11-30 05:56:55', '2023-11-30 05:56:55', '::1', NULL),
(45, 'TESTSAMPLE', 'testsample@test.test', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-30 06:22:57', '2023-11-30 06:22:57', '2023-11-30 06:22:57', '::1', NULL),
(46, 'Rogelio Julom', 'fdc.rogelioj@gmail.com', '9fff70360ce53955c640fe05bbcf0a1c030af760', NULL, '1', '1993-09-01', 'Test b', '2023-12-04 10:44:36', '2023-11-30 06:48:06', '2023-12-04 10:44:36', '::1', '::1'),
(47, 'Test Xample', 'testxample@test.test', '83183d4332081430d0e3c8971d7dd4d612ca7e3b', NULL, NULL, NULL, NULL, '2023-11-30 07:49:56', '2023-11-30 07:49:56', '2023-11-30 07:49:56', '::1', NULL),
(48, 'Test one two', 'test1and2@test.test', 'dde9cbe30f469dd088fde9d5d5bb0e62897890bb', NULL, NULL, NULL, NULL, '2023-12-01 03:14:05', '2023-12-01 03:14:05', '2023-12-01 03:14:05', '::1', NULL),
(49, 'test something', 'something@test.com', '93477851451f6583c7efd383e715cb6f8accb804', NULL, NULL, NULL, NULL, '2023-12-04 04:35:41', '2023-12-04 04:35:41', '2023-12-04 04:35:41', '::1', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
