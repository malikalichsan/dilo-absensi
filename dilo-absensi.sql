-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2016 at 09:44 PM
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
(1, '1974-07-24 02:38:21', 'Anderson Ford', 'Sit qui expedita voluptatem. Iusto ab est quae eum iusto rerum. Ratione quos et officia rem enim quia.', 'acara/images.jpeg', '7032980115521', '2016-11-11 08:11:04', '2016-11-11 08:11:04'),
(2, '2010-04-29 16:50:24', 'Eichmann Plaza', 'Sapiente reiciendis quis omnis ipsa vel in tempore. Laudantium cum non laborum labore voluptates iste. Velit aut iste omnis eos enim omnis.', 'acara/images.jpeg', '4774851532527', '2016-11-11 08:11:04', '2016-11-11 08:11:04'),
(3, '1986-08-22 06:54:56', 'Turner Junctions', 'Et voluptate recusandae est doloribus. Non molestiae voluptatum adipisci a eum rerum omnis voluptatem. Delectus inventore quis fugiat iusto.', 'acara/images.jpeg', '8787062128829', '2016-11-11 08:11:04', '2016-11-11 08:11:04'),
(4, '1976-06-11 08:32:10', 'Kozey Locks', 'Ut in voluptate nemo neque aut. Eos voluptatibus adipisci sunt saepe ut reiciendis modi. Nisi quo quidem id necessitatibus exercitationem sed quia.', 'acara/images.jpeg', '5838824651383', '2016-11-11 08:11:04', '2016-11-11 08:11:04'),
(5, '2003-07-12 16:28:51', 'Hane Branch', 'Eius vel totam fugit sequi. Iste iusto vel libero consectetur quo a. Enim commodi debitis explicabo consequatur vel.', 'acara/images.jpeg', '5337962618604', '2016-11-11 08:11:04', '2016-11-11 08:11:04'),
(6, '2008-10-22 11:09:36', 'Rosemarie Inlet', 'Corporis porro quaerat cupiditate dicta debitis quas ducimus. Quia voluptatibus illo nostrum omnis modi doloribus. Laborum officia laudantium cumque consequatur animi.', 'acara/images.jpeg', '1928616340558', '2016-11-11 08:11:04', '2016-11-11 08:11:04'),
(7, '2008-07-11 21:59:49', 'Kertzmann Ridges', 'Et recusandae sunt nostrum necessitatibus odit. Qui deserunt aperiam id blanditiis architecto labore. Vero voluptatibus dolorem placeat qui harum distinctio. Eligendi consequatur iste in ipsa eius.', 'acara/images.jpeg', '9977048686033', '2016-11-11 08:11:04', '2016-11-11 08:11:04'),
(8, '1986-07-17 00:39:29', 'Abshire Shore', 'Occaecati aut quia dolore suscipit sint aut unde. Perferendis nobis laudantium iste ipsum fugiat. Est et minima rerum excepturi ut ut.', 'acara/images.jpeg', '4576175743562', '2016-11-11 08:11:04', '2016-11-11 08:11:04'),
(9, '1976-12-20 23:05:21', 'Friesen Glen', 'Facilis eaque labore dolore et omnis non. Suscipit eos quod consequatur assumenda.\nVel voluptatibus deleniti dolores maiores ullam eius. Vel quo id aut voluptas consectetur praesentium.', 'acara/images.jpeg', '1359420507330', '2016-11-11 08:11:04', '2016-11-11 08:11:04'),
(10, '2010-06-06 15:24:44', 'Ziemann Divide', 'Illo dolores porro tempora esse. In sed est repellendus in quaerat et eos. Saepe cupiditate explicabo sequi ut vel deserunt sapiente. Quaerat in fugiat eum vel explicabo.', 'acara/images.jpeg', '4840888455020', '2016-11-11 08:11:04', '2016-11-11 08:11:04');

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
(1, 'Dr. Chloe Wisoky', 'zita41@bogisich.info', '$2y$10$V0XSczQbFHLyNKpoDdNPX.Qb2fJ3swphpsGBjmO7IHC4C/DZn/bii', '(217) 220-6881', 'member', '8839524', '2016-11-11 08:11:02', '2016-11-11 08:11:02'),
(2, 'Bonita Gorczany', 'tianna.hettinger@mccullough.com', '$2y$10$IQWKyoooKMEmcQC1La9fqeuqnzEIzwISY6/g2mSTrwtnVoL7.eZYa', '291.679.2447 x2177', 'member', '188', '2016-11-11 08:11:03', '2016-11-11 08:11:03'),
(3, 'Lora Kuphal II', 'wellington35@crona.info', '$2y$10$R68rXWKPyMOqOayBmYGbBeqgZsbw9GnUK5eqDpzEm5I8qs7OXo/2m', '217.341.6633', 'member', '23', '2016-11-11 08:11:03', '2016-11-11 08:11:03'),
(4, 'Henri Koepp', 'eladio.thompson@cruickshank.com', '$2y$10$n0z8MGw.sxFpDHpus.hbI.7HXMmvJkNbCO/CppgncSrTlaKzr3Fwq', '1-780-726-7633', 'member', '33641', '2016-11-11 08:11:03', '2016-11-11 08:11:03'),
(5, 'Dr. Larue Runte II', 'abigale.altenwerth@mosciski.com', '$2y$10$ky96oGqyDrzfIPPgowUc2OR4KzfXWhuLhGaadyHBSn0XaZN2T27Hy', '206-486-3297 x02487', 'member', '35422041', '2016-11-11 08:11:03', '2016-11-11 08:11:03'),
(6, 'Dr. Eriberto Armstrong', 'agleason@cormier.com', '$2y$10$aHr2wEGO2SZxnugI5uoED.Jl.2oOc79oYdZxNR2SllkYYRg52Y.Jq', '(690) 484-9069', 'member', '140179', '2016-11-11 08:11:03', '2016-11-11 08:11:03'),
(7, 'Cyril Kshlerin', 'jkiehn@spinka.com', '$2y$10$vDYSYk.xY5a5NPky7mu2F.Uc5.UKuSxRAiuQp2d6wYcQyrcfNhSu.', '357-773-5456', 'member', '6513001', '2016-11-11 08:11:03', '2016-11-11 08:11:03'),
(8, 'Mrs. Shanny Gutmann', 'bmarvin@hotmail.com', '$2y$10$/rG.Zb.PIyBxReLSrpzs5.c1bJ8l.6Sbzk0xH7YiKp0XiKbdG9Ciy', '1-695-518-6151 x1597', 'member', '486', '2016-11-11 08:11:03', '2016-11-11 08:11:03'),
(9, 'Jadon Rau', 'martine06@swift.com', '$2y$10$KejBwoV.vKuKRD86/H7pnuuEqi6/2qvqS1UUEWpNqTTJZ.mW.uvLS', '1-634-416-0644 x3108', 'member', '52262323', '2016-11-11 08:11:04', '2016-11-11 08:11:04'),
(10, 'Dr. Brain Kub', 'elinor11@gmail.com', '$2y$10$qN1/UDCP2cJ7xY3oxk42i.ZHW0iL0/0VU4LgftNKUbdvhuIpYqxdq', '(880) 764-5324', 'member', '62277', '2016-11-11 08:11:04', '2016-11-11 08:11:04'),
(11, 'Malik Al Ichsan', 'atat@gmail.com', '$2y$10$lW46e8pNX/wg6L7LFUwpy.n5ILuHeXbUVV9wlgpnAN5oteBbeBX.q', '123', 'member', '123', '2016-11-12 01:24:23', '2016-11-12 01:24:23'),
(12, 'Malik Al Ichsan', 'aaatat@gmail.com', '$2y$10$KqWMNv4yxCqtgy1GMuV0B.llAsMkgTl/6AspUmC2GNXaahdPYxgsW', '123', 'member', '123', '2016-11-12 01:25:13', '2016-11-12 01:25:13'),
(15, 'Malik Al Ichsan', 'ataat@gmail.com', '$2y$10$tZPDs4ucR6SkzDTaD1bpvehHfOOLODg20LPXaSd6JJOmwBbTVS95y', '123', 'member', '123', '2016-11-12 01:33:45', '2016-11-12 01:33:45'),
(17, 'Malik Al Ichsan', 'ataaat@gmail.com', '$2y$10$2J7RPiMi9FXUtK8VjyVhOuv4vXe9OKMKdLmRAPXtZui17L6MRXjp.', '123', 'member', '123', '2016-11-13 01:06:54', '2016-11-13 01:06:54');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
