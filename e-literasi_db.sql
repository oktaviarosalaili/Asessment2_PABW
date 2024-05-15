-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 06:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-literasi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `Judul` varchar(40) DEFAULT NULL,
  `User_ID` varchar(5) DEFAULT NULL,
  `Genre` varchar(20) DEFAULT NULL,
  `Sinopsis` varchar(200) DEFAULT NULL,
  `Book_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`Judul`, `User_ID`, `Genre`, `Sinopsis`, `Book_ID`) VALUES
('Cahaya di Ujung Senja', 'Baekh', 'Mystery', 'Di sebuah desa kecil yang dikelilingi oleh pegunungan, seorang gadis bernama Rina menemukan buku tua yang membawa kisah cinta tragis dari masa lalu. Saat ia membaca lebih dalam, ia menemukan bahwa kis', 1),
('Jejak Bayangan', 'Chen', 'Thriller', 'Arif adalah seorang penulis yang pindah ke rumah tua di pinggir kota untuk mencari inspirasi. Di rumah tersebut, ia menemukan jejak-jejak bayangan masa lalu yang mengungkap rahasia gelap keluarga yang', 2),
('Lentera Laut', 'Lily', 'Fantasi', 'Kehidupan yang tidak pernah kita ketahui didalam dasar laut. Kerajaan-kerajaan yang ada didalam dasar laut sangatlah damai dan begitu indah. Namun keadaan itu berubah, ketika datang seorang manusia ya', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Book_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
