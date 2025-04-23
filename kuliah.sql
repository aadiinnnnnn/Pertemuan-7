-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2025 at 06:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuliah`
--

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id` int(11) NOT NULL,
  `mahasiswa_npm` char(13) DEFAULT NULL,
  `matakuliah_kodemk` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id`, `mahasiswa_npm`, `matakuliah_kodemk`) VALUES
(1, '2210631250056', 'FKOM01'),
(2, '2210631250057', 'FKOM02'),
(3, '2210631250058', 'FKOM01'),
(4, '2210631250059', 'FKOM03'),
(5, '2210631250060', 'FKOM04'),
(6, '2210631250061', 'FKOM01'),
(7, '2210631250062', 'FKOM01'),
(8, '2210631250063', 'FKOM02'),
(9, '2210631250064', 'FKOM02'),
(10, '2210631250065', 'FKOM03'),
(12, '2210631250056', 'FKOM04'),
(18, '2210631250056', 'FKOM01'),
(20, '2210631250065', 'FKOM01'),
(21, '2210631250098', 'FKOM04');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` char(13) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `jurusan` enum('Teknik Informatika','Sistem Informasi') NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama_mahasiswa`, `jurusan`, `alamat`) VALUES
('2210631250056', 'Muhammad Nugrah Adinda EL Hana', 'Sistem Informasi', 'Jakarta Selatan'),
('2210631250057', 'Dandi Permana EL Wawa', 'Sistem Informasi', 'Karawang'),
('2210631250058', 'Nayaka Alfikri Januar EL Pearllie', 'Sistem Informasi', 'Jakarta Timur'),
('2210631250059', 'Hana Nabila', 'Sistem Informasi', 'Bekasi'),
('221063125006', 'Kefren Januar Muhammad', 'Teknik Informatika', 'Serang'),
('2210631250060', 'Fakhri Yudistra EL idew', 'Sistem Informasi', 'Bekasi'),
('2210631250061', 'Charina Olivia Tarigan', 'Sistem Informasi', 'Bekasi'),
('2210631250062', 'Rahmat Andriyadi', 'Teknik Informatika', 'Depok'),
('2210631250063', 'Ayu Puspitasari', 'Teknik Informatika', 'Bekasi'),
('2210631250064', 'Putri Ayuni', 'Teknik Informatika', 'Ciamis'),
('2210631250065', 'Andri Muhmmad', 'Teknik Informatika', 'Lamongan'),
('2210631250098', 'Lebron James', 'Teknik Informatika', 'Serang');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kodemk` char(6) NOT NULL,
  `nama_matakuliah` varchar(50) NOT NULL,
  `jumlah_sks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kodemk`, `nama_matakuliah`, `jumlah_sks`) VALUES
('FKOM01', 'Basis Data', 3),
('FKOM02', 'Pemrograman Berbasis Web', 3),
('FKOM03', 'Algoritma dan Struktur Data', 3),
('FKOM04', 'Pemrograman Berbasis Objek', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahasiswa_npm` (`mahasiswa_npm`),
  ADD KEY `matakuliah_kodemk` (`matakuliah_kodemk`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kodemk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`mahasiswa_npm`) REFERENCES `mahasiswa` (`npm`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`matakuliah_kodemk`) REFERENCES `matakuliah` (`kodemk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
