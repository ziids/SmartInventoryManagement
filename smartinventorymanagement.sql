-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20250718.d42db65a1e
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 25, 2026 at 03:29 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartinventorymanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kategori_id` bigint DEFAULT NULL,
  `stok` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `kategori_id`, `stok`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Asus VivoBook', 1, 40, '2026-06-01 12:16:37', '2026-06-01 12:16:37'),
(2, 'Mouse Logitech M220', 2, 0, '2026-06-01 12:16:37', '2026-06-07 14:34:47'),
(3, 'Keyboard Mechanical Fantech', 2, 45, '2026-06-01 12:16:37', '2026-06-01 12:16:37'),
(4, 'Monitor LG 24 Inch', 1, 18, '2026-06-01 12:16:37', '2026-06-01 15:24:56'),
(5, 'Printer Epson L3210', 4, 12, '2026-06-01 12:16:37', '2026-06-01 12:16:37'),
(6, 'Flashdisk Sandisk 64GB', 5, 150, '2026-06-01 12:16:37', '2026-06-01 12:16:37'),
(7, 'Harddisk External Seagate 1TB', 5, 30, '2026-06-01 12:16:37', '2026-06-01 12:16:37'),
(8, 'Router TP-Link Archer C6', 6, 22, '2026-06-01 12:16:37', '2026-06-01 12:16:37'),
(9, 'Webcam Logitech C270', 7, 35, '2026-06-01 12:16:37', '2026-06-01 12:16:37'),
(10, 'Speaker Bluetooth JBL Go 3', 2, 40, '2026-06-01 12:16:37', '2026-06-01 15:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id` int NOT NULL,
  `barang_id` bigint NOT NULL,
  `kuantitas` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id`, `barang_id`, `kuantitas`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2026-06-06 12:29:38', '2026-06-06 12:30:37'),
(2, 1, 0, '2026-06-06 12:30:27', '2026-06-06 12:30:27'),
(3, 2, 5, '2026-06-07 15:13:55', '2026-06-07 15:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id` int NOT NULL,
  `barang_id` bigint NOT NULL,
  `kuantitas` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id`, `barang_id`, `kuantitas`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2026-06-06 12:18:51', '2026-06-06 12:18:51'),
(2, 1, 6, '2026-06-06 12:19:12', '2026-06-06 12:19:12'),
(3, 1, 0, '2026-06-06 12:22:12', '2026-06-06 12:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Elektronik', '2026-06-01 13:46:32', '2026-06-01 13:46:32'),
(2, 'Peralatan Kantor', '2026-06-01 13:46:32', '2026-06-01 13:46:32'),
(3, 'Makanan & Minuman', '2026-06-01 13:46:32', '2026-06-01 13:46:32'),
(4, 'Pakaian', '2026-06-01 13:46:32', '2026-06-01 13:46:32'),
(5, 'Otomotif', '2026-06-01 13:46:32', '2026-06-01 13:46:32'),
(6, 'Kesehatan', '2026-06-01 13:46:32', '2026-06-01 13:46:32'),
(7, 'Komputer & Aksesoris', '2026-06-01 13:46:32', '2026-06-01 13:46:32'),
(8, 'Rumah Tangga', '2026-06-01 13:46:32', '2026-06-01 13:46:32'),
(9, 'Alat Tulis', '2026-06-01 13:46:32', '2026-06-01 13:46:32'),
(10, 'Olahraga', '2026-06-01 13:46:32', '2026-06-01 13:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` bigint NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Admin','Staff','Supplier') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Supplier',
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `email`, `role`, `password`, `created_at`) VALUES
(3, 'admin', 'admin@gmail.com', 'Admin', 'admin', '2026-06-06 08:35:00'),
(4, 'supplier', 'supplier@gmail.com', 'Supplier', 'supplier', '2026-06-06 11:50:26'),
(5, 'staff', 'staff@gmail.com', 'Staff', 'staff', '2026-06-06 11:50:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
