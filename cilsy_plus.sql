-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2020 at 08:06 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cilsy_plus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `harga` int(15) NOT NULL,
  `author` varchar(256) NOT NULL,
  `image_url` varchar(256) NOT NULL,
  `no_isbn` varchar(15) NOT NULL,
  `berat` int(15) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `kategori_id`, `status_id`, `title`, `harga`, `author`, `image_url`, `no_isbn`, `berat`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Tafsir Al-Qur`An Juz Xxii Juz Wa Man Yaqnut : Al-`Izzah', 225000, 'PROF. DR. M. YUNAN YUSUF', 'images/image_url-1596013939960.jpeg', '9786027720961', 1, 'Tafsir Juz XXII: Fa Man Yaqnut ini diberi judul العِزَّةُ (al-‘Izzah, Kemuliaan). Secara bahasa, kata al-‘Izzah terambil dari kata ‘azza – ya`izzu – ‘izzan – wa ‘izzatan – wa ‘azazatan (عز – يعز – عزا – عزة – عزازة). Kata ini mengandung banyak arti, antara lain al-karam (kehormatan), asy-syaraf (kemuliaan), al-quwwah (kekuatan), asy-syiddah (ketegasan). Ungkapan kata al-‘izzah berkisar pada makna kekuatan, kemuliaan, keutamaan, kemenangan, keberhasilan, dan tidak terkalahkan. Al-Raghib al-Asfahany mendefinisikannya dengan\r\nوالعزة منزلة شريفة وهي نتيجة معرفة الإنسان بقدر نفسه وإكAl-‘Izzah adalah status yang terhormat dan merupakan hasil dari pengetahuan manusia tentang dirinya dan kehormatannya.\r\nKemuliaan sejatinya mahkota kemanusiaan. Tidak ada manusia yang tidak menginginkan kemuliaan. Kemuliaan pada hakikatnya bagian esensial dari manusia yang diciptakan oleh Allah sebagai ciptaan yang termulia. Al-Quran menegaskan bahwa kemuliaan semata-mata milik Allah.\r\n\r\nBila seseorang berkemauan kuat memperoleh kemuliaan, seharusnyalah dia senantiasa mendekatkan diri kepada Allah, Sang Pemilik Kemuliaan. Dengan demikian, at-taqarrub ilallah seharusnya menjadi langkah prioritas setiap helaan napas di kehidupan dunia yang fana ini. Tafsir ini mencoba mengurai apa yang harus dilakukan untuk mencapai kemuliaan tersebut.', '2020-07-29 09:12:19', '2020-07-29 22:46:51', NULL),
(2, 2, 1, 'Praktis Dan Lengkap Mengasah IQ Anak 2', 68000, 'Herry Prasetyo', 'images/image_url-1596014451312.jpeg', '9786232169241', 0, 'Buku ini bisa menjadi salah satu pilihan tepat untuk mengasah IQ anak. Soal-soal yang di sajikan bervariasi, ada yang mudah dan ada yg sulit, untuk merangsang daya pikir anak secara efektif, mudah, dan kreatif.', '2020-07-29 09:20:51', '2020-07-29 15:45:50', NULL),
(3, 3, 1, 'Perencanaan Bisnis', 85000, 'Hery,SE.', 'images/image_url-1596014673626.jpeg', '9786020514055', 0, 'Penelitian membuktikan bahwa perusahaan yang melakukan perencanaan bisnis secara matang (terukur dan teruji) akan mampu bertahan sekaligus menjadi pemenang. Rencana bisnis merupakan bukti tertulis bahwa pemilik usaha telah melakukan analisis kelayakan yang diperlukan, mempelajari peluang bisnis secara memadai, dan siap untuk menjalankannya dengan sebuah model bisnis yang unggul.', '2020-07-29 09:24:33', '2020-07-29 22:47:18', NULL),
(4, 4, 1, 'Pengantar Anatomi Fisiologi Manusia', 64500, 'Ardhina Nugrahaeni', 'images/image_url-1596015218187.jpeg', '9786237324089', 0, 'Anatomi dan fisiologi merupakan dasar dari cabang ilmu kesehatan, melingkupi pemahaman struktur, bagian, serta fungsi setiap organ dalam tubuh manusia. Pengetahuan ini sangat esensial, karena dari sinilah kita akan mengetahui proses atau kondisi normal pada manusia sebelum mulai memahami kondisi patologi. Buku ini disusun sedemikian rupa sehingga mudah dibaca dan dipahami. Dengan lengkapnya penjelasan dalam buku ini, peserta didik kesehatan diharapkan semakin mudah memahami tentang anatomi dan fisiologi pada manusia.', '2020-07-29 09:33:38', '2020-07-29 22:47:31', NULL),
(5, 5, 1, 'Hidroponik; Bertanam Sayuran Tanpa Tanah', 99000, 'Mukhiban Isnan', 'images/image_url-1596015355434.jpeg', '9789790066489', 0, 'Hidroponik telah dikenal dan dipraktikkan di dalam negeri sejak tahun 1980-an. Saat ini, hidroponik, terutama skala rumah tangga, telah merambah menjadi hobi dan pemenuhan kebutuhan rumah tangga terhadap sayur serta buah. Kepopuleran tren hidroponik memunculkan penghobi hidroponik baru yang membutuhkan berbagai informasi dasar mengenai hidroponik.\nPenulis dengan mengusung nama Hidroponik Untuk Semua yang selama ini fokus pada budi daya hidroponik dan rutin mengadakan pelatihan hidroponik (untuk pemula hingga pelatihan hidroponik skala industri) di berbagai daerah, mencoba membagikan pengalamannya melalui buku ini.\nPenulis berharap semakin banyak masyarakat yang memahami teknik dasar hidroponik secara tepat, sehingga dapat dipraktikkan dengan baik sebagai sarana hobi, menambah keasrian sekitar rumah dan lingkungan, serta dapat menghasilkan sayuran yang sehat untuk konsumsi keluarga.', '2020-07-29 09:35:55', '2020-07-29 22:47:52', NULL),
(6, 6, 1, 'Pengantar Ilmu Politik', 85000, 'Inu Kencana Syafiie', 'images/image_url-1596015467787.jpeg', '9786021311486', 1, 'Berisi Materi Dasar Ilmu Politik.', '2020-07-29 09:37:47', '2020-08-06 16:23:31', NULL),
(7, 7, 1, 'Sistem Basis Data Dan Sql', 95000, 'Didik Setiyadi, S.Kom., M.Kom', 'images/image_url-1596015580207.jpeg', '9786023184385', 0, 'Apa yang disajikan dalam buku ini adalah bagaimana memahami tentang konsep sistem basis data dan perancangan basis data dengan konsep normalisasi data dan implementasinya kedalam bahasa SQL (Structured Query Language).', '2020-07-29 09:39:40', '2020-07-29 22:48:27', NULL),
(14, 7, 2, 'sdfsdgsg', 25000, 'Rizal Satria', 'images/image_url-1596708484155.png', '135454', 12, 'asfasdfsadf', '2020-08-06 10:08:04', '2020-08-06 10:08:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `buku_status`
--

CREATE TABLE `buku_status` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku_status`
--

INSERT INTO `buku_status` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'FOR SELL', '2020-07-29 15:30:10', '2020-07-29 15:30:10', NULL),
(2, 'OUT OF STOCK', '2020-07-29 15:30:10', '2020-07-29 15:30:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `name` varchar(48) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Agama', '2020-07-29 15:31:02', '2020-07-29 15:31:02', NULL),
(2, 'Anak-Anak', '2020-07-29 15:31:02', '2020-07-29 15:48:12', NULL),
(3, 'Bisnis & Ekonomi', '2020-07-29 15:31:02', '2020-07-29 15:48:42', NULL),
(4, 'Buku Medis', '2020-07-29 15:31:02', '2020-07-29 15:49:34', NULL),
(5, 'Pertanian', '2020-07-29 15:31:02', '2020-07-29 15:31:02', NULL),
(6, 'Hukum', '2020-07-29 15:31:02', '2020-07-29 15:50:50', NULL),
(7, 'Komputer & Teknologi', '2020-07-29 15:31:02', '2020-07-29 15:51:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` int(20) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 8, 85000, '2020-08-09 05:38:25', '2020-08-09 05:38:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `buku_id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `quantity` int(20) NOT NULL,
  `harga` int(15) NOT NULL,
  `total` int(20) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `order_id`, `buku_id`, `title`, `quantity`, `harga`, `total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 5, 3, 'Perencanaan Bisnis', 1, 85000, 85000, '2020-08-09 05:38:25', '2020-08-09 05:38:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(48) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(192) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 'Rizal Satria Kamal', 'rizalsatriakamal@gmail.com', '$2b$10$fLpEfv.TmIYSB4EQSc98VORn/tWy2CqouhkRnaFBJ0opXJGEkPRFW', '2020-07-29 00:21:59', '2020-07-29 00:21:59', NULL),
(8, 2, 'Risaka', 'apapun@gmail.com', '$2b$10$62Z8bGIBhG/h6s6kNceJBO.KA9R7do44rryYb1OhUpizcu6i9W1wG', '2020-07-30 08:19:26', '2020-07-30 08:19:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2020-07-29 15:31:47', '2020-07-29 15:31:47', NULL),
(2, 'User', '2020-07-29 15:31:47', '2020-07-29 15:31:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `buku_status`
--
ALTER TABLE `buku_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buku_id` (`buku_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `buku_status`
--
ALTER TABLE `buku_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `buku_status` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_ibfk_1` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`),
  ADD CONSTRAINT `orders_detail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
