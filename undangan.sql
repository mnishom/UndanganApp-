-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 07:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `undangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `undangan`
--

CREATE TABLE `undangan` (
  `id` int(11) NOT NULL,
  `nama_undangan` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `owner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `undangan`
--

INSERT INTO `undangan` (`id`, `nama_undangan`, `tanggal`, `owner`) VALUES
(6, 'AFFAN', '2024-02-27', 'AFFAN'),
(7, 'khodijah', '2023-12-01', 'khodijah');

-- --------------------------------------------------------

--
-- Table structure for table `undangan_detail`
--

CREATE TABLE `undangan_detail` (
  `id` int(11) NOT NULL,
  `id_u` int(11) NOT NULL,
  `nama_tamu` varchar(50) NOT NULL,
  `alamat` tinytext NOT NULL,
  `tempat_kerja` varchar(50) NOT NULL,
  `status_kehadiran` enum('hadir','tidak') NOT NULL DEFAULT 'tidak'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `undangan_detail`
--

INSERT INTO `undangan_detail` (`id`, `id_u`, `nama_tamu`, `alamat`, `tempat_kerja`, `status_kehadiran`) VALUES
(5, 6, 'ody', 'tegal', 'google', 'tidak'),
(6, 6, 'Hani', 'tegal', 'google', 'tidak'),
(7, 6, 'Sapri', 'tegal', 'google', 'tidak'),
(8, 6, 'Tono', 'tegal', 'google', 'tidak'),
(9, 6, 'Nopal', 'tegal', 'google', 'tidak'),
(10, 7, 'Nathan', 'tegal', 'google', 'hadir'),
(11, 7, 'Varah', 'tegal', 'google', 'hadir'),
(12, 7, 'Angel', 'tegal', 'google', 'hadir'),
(13, 7, 'Caca', 'tegal', 'google', 'hadir'),
(14, 7, 'Hansen', 'tegal', 'google', 'hadir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `undangan`
--
ALTER TABLE `undangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `undangan_detail`
--
ALTER TABLE `undangan_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_u` (`id_u`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `undangan`
--
ALTER TABLE `undangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `undangan_detail`
--
ALTER TABLE `undangan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `undangan_detail`
--
ALTER TABLE `undangan_detail`
  ADD CONSTRAINT `undangan_detail_ibfk_1` FOREIGN KEY (`id_u`) REFERENCES `undangan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
