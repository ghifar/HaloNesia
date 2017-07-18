-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Jul 2017 pada 17.48
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_halonesia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `admin_login` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_region` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `admin_login`, `admin_email`, `admin_password`, `admin_name`, `id_role`, `id_region`, `created_at`, `updated_at`) VALUES
(17, 'superadmin', 'super@4nesia.com', '17c4520f6cfd1ab53d8745e84681eb49', 'Super Admin 1', 1, NULL, '2017-07-13 06:00:54', '2017-07-13 06:11:01'),
(18, 'admin_mks', 'adminmks@4nesia.com', 'f6acdfeafe6aa84004631145bd0cd9d4', 'Admin Makassar', 2, 1, '2017-07-13 06:02:01', '2017-07-13 06:11:02'),
(21, 'dinkes_mks', 'dinkesmks@gmail.com', 'b307c40a459bf9c39e557d506bbeb122', 'Admin Dinas Kesehatan Makassar', 3, NULL, '2017-07-13 06:02:01', '2017-07-13 06:02:01'),
(22, 'dishub_mks', 'dishubmks@gmail.com', '200c6d6ea7beec2852b6b121da001986', 'Admin Dinas Perhubungan Makassar', 3, NULL, '2017-07-13 06:02:01', '2017-07-13 06:02:01'),
(23, 'dinkes_bdg', 'dinkesbdg@gmail.com', '3e382e65fca695cd76ced80104e88c1a', 'Admin Dinas Kesehatan Bandung', 3, NULL, '2017-07-13 06:02:01', '2017-07-13 06:02:01'),
(24, 'dishub_bdg', 'dishubdg@gmail.com', 'e3d79a5efdbd8ecc819d999d640e0167', 'Admin Dinas Perhubungan Bandung', 3, NULL, '2017-07-13 06:02:01', '2017-07-13 06:02:01'),
(25, 'admin_mks2', 'mks2@gmail.com', 'accfdd033bb78ff1d27e048f7390d453', 'Admin Makassar 2', 2, 1, '2017-07-13 10:22:20', '2017-07-13 10:22:20'),
(26, 'admin_bdg', 'adminbdg@4nesia.com', '59ef3010a4709e785eced1dc57829168', 'Admin Bandung', 2, 2, '2017-07-13 06:02:01', '2017-07-13 15:22:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_code` varchar(3) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `category_code`, `category_name`, `category_description`, `created_at`, `updated_at`) VALUES
(1, 'GOV', 'Pemerintahan', '0', '2017-05-24 08:31:10', '2017-07-13 08:58:59'),
(2, 'HLT', 'Kesehatan', '0', '2017-05-24 08:31:10', '2017-07-13 08:51:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL,
  `comment_author` text NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_content` text NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id_file` int(11) NOT NULL,
  `file_url` text NOT NULL,
  `id_post` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `place`
--

CREATE TABLE `place` (
  `id_place` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_reg_category` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `place`
--

INSERT INTO `place` (`id_place`, `name`, `description`, `phone_number`, `address`, `latitude`, `longitude`, `id_admin`, `id_reg_category`, `created_at`, `updated_at`) VALUES
(1, 'Dinas Kesehatan Kota Makassar', 'Kantor Dinas Kesehatan Kota Makassar', '411112', 'Jl. Teduh Bersinar No.1, Gn. Sari, Rappocini, Kota Makassar, Sulawesi Selatan 90221', -5.185859, 119.441356, 21, 1, '2017-07-13 06:20:10', '2017-07-13 06:20:10'),
(2, 'Dinas Perhubungan Kota Makassar', 'Kantor Dinas Perhubungan Kota Makassar', '411112', 'Jl. Mallengkeri No.18, Mangasa, Tamalate, Kota Makassar, Sulawesi Selatan 90221', -5.188224, 119.440117, 22, 1, '2017-07-13 06:20:10', '2017-07-13 06:20:10'),
(3, 'Dinas Kesehatan Kota Bandung', 'Kantor Dinas Kesehatan Kota Bandung', '411112', 'Jl Supratman No 73 Citarum Bandung, Cihapit, Bandung Wetan, Bandung City, West Java 40114', -6.9012519, 107.626077, 23, 5, '2017-07-13 06:20:10', '2017-07-13 06:26:25'),
(4, 'Dinas Perhubungan Kota Bandung', 'Kantor Dinas Perhubungan Kota Bandung', '411112', 'Jl. Soekarno Hatta No.205, Situsaeur, Bojongloa Kidul, Kota Bandung, Jawa Barat 40233', -6.9462177, 107.5934753, 24, 5, '2017-07-13 06:20:10', '2017-07-13 06:27:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `post_atuhor` varchar(100) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_content` text NOT NULL,
  `post_category` varchar(100) NOT NULL,
  `id_place` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `region_code` varchar(3) NOT NULL,
  `region_name` varchar(100) NOT NULL,
  `region_description` varchar(1000) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `region`
--

INSERT INTO `region` (`id`, `region_code`, `region_name`, `region_description`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'MKS', 'Makassar', 'City of Makassar', -5.147665, 119.432731, '2017-05-24 08:30:45', '2017-07-13 08:23:07'),
(2, 'BDG', 'Bandung', 'City of Bandung', -6.917464, 107.619123, '2017-05-24 08:30:45', '2017-07-13 08:59:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reg_category`
--

CREATE TABLE `reg_category` (
  `id` int(11) NOT NULL,
  `id_region` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `reg_category`
--

INSERT INTO `reg_category` (`id`, `id_region`, `id_category`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-05-24 08:31:25', '2017-05-24 08:31:25'),
(5, 2, 1, '2017-07-13 06:25:39', '2017-07-13 06:25:39'),
(6, 2, 2, '2017-07-13 06:25:39', '2017-07-13 06:25:39'),
(8, 1, 2, '2017-07-13 14:11:33', '2017-07-13 14:11:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id_review` int(11) NOT NULL,
  `content` text NOT NULL,
  `rating` int(11) NOT NULL,
  `photo` text NOT NULL,
  `id_place` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_admin`
--

CREATE TABLE `role_admin` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role_admin`
--

INSERT INTO `role_admin` (`id`, `type`) VALUES
(1, 'Super Admin'),
(2, 'Region Admin'),
(3, 'Place Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_nickname` varchar(50) NOT NULL,
  `user_url` text NOT NULL,
  `user_status` varchar(50) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `admin_login` (`admin_login`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_region` (`id_region`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_code` (`category_code`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_post` (`id_post`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `id_post` (`id_post`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id_place`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_reg_category` (`id_reg_category`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_place` (`id_place`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_category`
--
ALTER TABLE `reg_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_index` (`id_region`,`id_category`),
  ADD KEY `id_region` (`id_region`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_place` (`id_place`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `role_admin`
--
ALTER TABLE `role_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reg_category`
--
ALTER TABLE `reg_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role_admin`
--
ALTER TABLE `role_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_region_fk` FOREIGN KEY (`id_region`) REFERENCES `region` (`id`),
  ADD CONSTRAINT `admin_role_fk` FOREIGN KEY (`id_role`) REFERENCES `role_admin` (`id`);

--
-- Ketidakleluasaan untuk tabel `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_posts_fk` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id_post`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_users_fk` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_posts_fk` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id_post`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `place`
--
ALTER TABLE `place`
  ADD CONSTRAINT `place_admin_fk` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `place_regcategory_fk` FOREIGN KEY (`id_reg_category`) REFERENCES `reg_category` (`id`);

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_place_fk` FOREIGN KEY (`id_place`) REFERENCES `place` (`id_place`);

--
-- Ketidakleluasaan untuk tabel `reg_category`
--
ALTER TABLE `reg_category`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `fk_region` FOREIGN KEY (`id_region`) REFERENCES `region` (`id`);

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_place_fk` FOREIGN KEY (`id_place`) REFERENCES `place` (`id_place`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_users_fk` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
