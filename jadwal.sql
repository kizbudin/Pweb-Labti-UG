-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bykvcur5bsyh2rf0snme-mysql.services.clever-cloud.com:3306
-- Generation Time: Dec 20, 2020 at 08:44 AM
-- Server version: 8.0.13-3
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bykvcur5bsyh2rf0snme`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id` int(11) NOT NULL,
  `matakuliah` varchar(100) NOT NULL,
  `hari` varchar(25) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `dosen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id`, `matakuliah`, `hari`, `jam`, `dosen`) VALUES
(19, 'Rekayasa Perangkat Lunak', 'Senin', '1/2', 'ELYNA FAZRIYATI'),
(20, 'Teknik Kompilasi ** ', 'Senin ', '3/4/5', 'MAUKAR'),
(21, 'Algoritma dan Pengolahan Paralel ', 'Senin ', '8/9/10', 'KARMILASARI'),
(22, 'Bahasa Inggris Bisnis 1 ', 'Selasa ', '3/4 ', 'NURI ADLINA'),
(23, 'Jaringan Komputer Lanjut ** ', 'Selasa ', '6/7 ', 'VIVIEN NOVA FITHRIANA'),
(24, 'Pengantar Forensik Teknologi Inf ', 'Selasa ', '8/9 ', 'INDAH WAHYUNI'),
(25, 'Pengantar Bisnis Informatika # ', 'Rabu ', '1/2 ', 'SITI SAIDAH'),
(26, 'Pemrograman WEB ** ', 'Rabu ', '3/4 ', 'REVIDA IRIANA NAPITUPULU'),
(27, 'Pemodelan dan Simulasi ', 'Rabu ', '5/6/7 ', 'YUHILZA HANUM');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `image`, `name`, `username`, `password`) VALUES
(3, '68988-kali-android-linux-free-clipart-hq.png', 'M. Kizbudin', 'kizbudin', '$2y$10$s.QICQwBmfggpITmEYpHTe6nuWbrMXY4.DOye5STBXRMe3gtZgDHa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
