-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2023 at 08:03 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prakweb2023_b_213040052`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `pengarang` varchar(150) NOT NULL,
  `penerbit` varchar(150) NOT NULL,
  `tahun` year NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `gambar`, `judul`, `pengarang`, `penerbit`, `tahun`, `kategori`) VALUES
(1, '1.jpg', 'Pembangunan Karakter Islam Perspektif Tasawuf', 'Dr. Muhammad Iqbal Irham, M.Ag.', 'Prenadamedia Group', '2021', 'Pengetahuan'),
(2, '2.jpg', 'Mengenal Filsafat Islam', 'Haidar Bagir', 'Mizan Millenial Creativa', '2020', 'Pengetahuan'),
(3, '3.jpg', 'Panduan Cepat Belajar HTML, PHP, & MYSQL', 'Arista Prasetyo Adi', 'Elex Media Komputindo', '2020', 'Pengetahuan'),
(4, '4.jpg', 'Resign And Survive: Yuk Hijrah', 'Ade Eka Saputra', 'Elex Media Komputindo', '2018', 'Pengetahuan'),
(5, '5.jpg', 'TeenLit: Zero Class#3: Legacy', 'Pricillia A.W.', 'Gramedia Pustaka Media', '2023', 'Romantis'),
(6, '6.jpg', 'Cara Menghentikan Waktu (How To Stop Time)', 'Matt Haig', 'Gramedia Pustaka Media', '2020', 'Romantis'),
(7, '7.jpg', 'How To Think Like Sherlock Holmes', 'Peter Hollins', 'Bhuana Ilmu Populer', '2021', 'Pengetahuan'),
(8, '8.jpg', 'Buku Pengayaan Kimia: Atom, Ion, dan Molekul', 'Ibnu Shohib', 'Azka Pressindo', '2017', 'Pengetahuan'),
(9, '9.jpg', 'Batari Mimpi Buruk (Muse Of Nightmare)', 'Laini Taylor', 'Gramedia Pustaka Media', '2020', 'Fantasi'),
(10, '10.jpg', 'Artificial Intelligence: Perspektif Manajemen Strategis', 'Manerep Pasaribu', 'Kepustakaan Populer Gramedia', '2022', 'Pengetahuan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
