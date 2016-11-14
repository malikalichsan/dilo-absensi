-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2016 at 03:43 PM
-- Server version: 10.0.27-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dilo-absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `acaras`
--

CREATE TABLE `acaras` (
  `id` int(10) UNSIGNED NOT NULL,
  `tanggal` datetime NOT NULL,
  `nama_acara` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barcode` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acaras`
--

INSERT INTO `acaras` (`id`, `tanggal`, `nama_acara`, `desc`, `gambar`, `barcode`, `created_at`, `updated_at`) VALUES
(1, '1984-03-21 08:05:27', 'Reynolds Spur', 'Deserunt illum autem earum eligendi. Magni ut sint et aut alias. Dolor cupiditate quae autem ut maxime.', 'acara/images.jpeg', '0144208723801', '2016-11-14 01:42:06', '2016-11-14 01:42:06'),
(2, '2004-01-19 01:14:23', 'Bayer Springs', 'Voluptas possimus repellat eveniet aliquid rerum id et tenetur. Consequuntur temporibus exercitationem voluptate.', 'acara/images.jpeg', '5117155989397', '2016-11-14 01:42:06', '2016-11-14 01:42:06'),
(3, '1981-03-22 11:40:51', 'Cummerata Street', 'Iste porro reiciendis sed ut neque. Dolores molestiae occaecati doloribus omnis omnis. Aut non vel iusto tenetur inventore.', 'acara/images.jpeg', '4412082123717', '2016-11-14 01:42:06', '2016-11-14 01:42:06'),
(4, '1988-05-20 08:55:33', 'Shields Manor', 'Perspiciatis qui eos adipisci dicta. Quis ea ut at voluptas sit. Mollitia id tenetur consequatur quos ea. Consequuntur aliquid repellendus quia id eos quos suscipit.', 'acara/images.jpeg', '9930639072332', '2016-11-14 01:42:06', '2016-11-14 01:42:06'),
(5, '2006-08-07 16:14:20', 'Becker Fields', 'Sint ad commodi consequatur aperiam aut illo dolorem adipisci. Voluptates cumque itaque facilis id quo. Provident tempora quia non aspernatur fugit sit. Numquam repudiandae aut non rem.', 'acara/images.jpeg', '6952068270625', '2016-11-14 01:42:06', '2016-11-14 01:42:06'),
(6, '2003-12-01 13:15:56', 'Jakubowski Streets', 'Harum et voluptatibus impedit ipsam rem. Odit voluptate nam neque voluptas quas molestiae. Quia omnis est nulla perferendis.', 'acara/images.jpeg', '4537416907631', '2016-11-14 01:42:06', '2016-11-14 01:42:06'),
(7, '2008-02-23 21:34:49', 'Carter Terrace', 'Cumque dolorem dolorum nihil harum. Quo facere autem in eos at. Corporis quo omnis quidem minima dolorum blanditiis accusantium.', 'acara/images.jpeg', '6527963406662', '2016-11-14 01:42:06', '2016-11-14 01:42:06'),
(8, '1990-02-15 12:13:43', 'Maggio Ford', 'Commodi totam eos est aut. Harum vel dolor aut eum adipisci earum neque. Consectetur atque et ad neque illum rerum ut temporibus.', 'acara/images.jpeg', '0416897964224', '2016-11-14 01:42:06', '2016-11-14 01:42:06'),
(9, '1989-02-01 11:49:27', 'Renner Street', 'Quia ratione voluptatum voluptatibus sed beatae neque in. Qui cum porro fugit itaque. Nam quo repudiandae tenetur eaque ullam saepe eaque.', 'acara/images.jpeg', '2762184251712', '2016-11-14 01:42:07', '2016-11-14 01:42:07'),
(10, '1998-05-13 01:06:13', 'Thompson Streets', 'Alias consequatur qui consequatur suscipit. Blanditiis maiores iste tempora amet. Esse consequatur libero aspernatur et. Quibusdam aut rerum esse.', 'acara/images.jpeg', '9944394755980', '2016-11-14 01:42:07', '2016-11-14 01:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_11_10_094803_create_registrasis_table', 1),
('2016_11_10_191958_create_acaras_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `registrasis`
--

CREATE TABLE `registrasis` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_member` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imei` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registrasis`
--

INSERT INTO `registrasis` (`id`, `nama`, `email`, `password`, `no_telp`, `jenis_member`, `imei`, `created_at`, `updated_at`) VALUES
(1, 'Dilo Admin', 'admin@admin.com', '$2y$10$JoymOtWpH5AxMmcIy4V1g./ZL1cBDVit7j6SB0zqi2vb4.x92TE3m', '12345678', 'admin', '12345678', '2016-11-14 01:42:05', '2016-11-14 01:42:05'),
(2, 'Astrid Koelpin', 'hugh.lebsack@gmail.com', '$2y$10$g9LJujcFTumJLPuNRjs3nekvpl.hBJeetnRlGpTvGE/Yzx0crTvBS', '1-896-905-7026 x0749', 'member', '853279052', '2016-11-14 01:42:05', '2016-11-14 01:42:05'),
(3, 'Issac Monahan', 'kihn.jamison@mertz.com', '$2y$10$0yhRtKTYZpH/oou166XENu1GsvOLGwrpxFWIJ4zoNsyQY90DpqyGq', '+1.682.832.6390', 'member', '952168657', '2016-11-14 01:42:05', '2016-11-14 01:42:05'),
(4, 'Dejah Stehr', 'ariane19@bahringer.com', '$2y$10$Oj91dB8zCKoytlLj2xkWFuYZNrJ9fVAyTX/umRtQU2qRkqTp6rULa', '+1.885.900.6046', 'member', '2698', '2016-11-14 01:42:05', '2016-11-14 01:42:05'),
(5, 'Louisa Kshlerin IV', 'leone29@lueilwitz.com', '$2y$10$TLji8VYZUCKwwB2vr1jC6uKZmkNwgXHRUt8fIxIrOIDRlhRivlgDu', '(920) 712-4871 x5442', 'member', '11083458', '2016-11-14 01:42:05', '2016-11-14 01:42:05'),
(6, 'Eugene Wisozk', 'frances27@bayer.org', '$2y$10$e..ZQdoZhkBvHYRC7oWKau62fXjMtXI9nrpKiF1P6a5JvWyo8uRou', '1-583-281-3978 x7340', 'member', '686489', '2016-11-14 01:42:05', '2016-11-14 01:42:05'),
(7, 'Prof. Sebastian Farrell V', 'emiliano.lubowitz@yahoo.com', '$2y$10$wRG.AdjjtKVSqhBT9VnNS.HjEKs0zqTCzjuP/NEHglmm0ifGZ2dza', '1-701-601-8684 x091', 'member', '22331080', '2016-11-14 01:42:05', '2016-11-14 01:42:05'),
(8, 'Olga Lind', 'spencer.joe@wolff.com', '$2y$10$Mb4Db5IbN0zD315a1bewJOcCh0duEKeNPk.TQgn//fI1yisi3Cv.m', '(715) 933-9325', 'member', '49', '2016-11-14 01:42:06', '2016-11-14 01:42:06'),
(9, 'Percy McLaughlin DVM', 'ewilliamson@yahoo.com', '$2y$10$3CkxK7UC2gYXZHk8W6ImV.bOeul7G0.n0VzgXwpllBdgO1dVlLPbK', '746.879.4575 x93746', 'member', '58', '2016-11-14 01:42:06', '2016-11-14 01:42:06'),
(10, 'Ryder Gutkowski', 'kbalistreri@gmail.com', '$2y$10$6cwzXlKLVB.0BHVjjkUV3..3ueh3gU18JylADqoKq3EKJuK15y1ry', '+1-540-691-7590', 'member', '909349903', '2016-11-14 01:42:06', '2016-11-14 01:42:06'),
(11, 'Eriberto Huel', 'ebins@yahoo.com', '$2y$10$.e11oR.aKJNx8TfNjSEX3.l3sKW1FPA5hvuE/L980M1lwbodYr4JG', '+1.423.251.8070', 'member', '8543', '2016-11-14 01:42:06', '2016-11-14 01:42:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acaras`
--
ALTER TABLE `acaras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrasis`
--
ALTER TABLE `registrasis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registrasis_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acaras`
--
ALTER TABLE `acaras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `registrasis`
--
ALTER TABLE `registrasis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
