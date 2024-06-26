-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2024 at 12:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE `kurir` (
  `KodePengiriman_Barang` varchar(50) NOT NULL,
  `Jenis_Kurir` varchar(50) DEFAULT NULL,
  `Tujuan_Pengiriman` varchar(50) DEFAULT NULL,
  `TotalBerat_Barang` double DEFAULT NULL,
  `nomortelp` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kurir`
--

INSERT INTO `kurir` (`KodePengiriman_Barang`, `Jenis_Kurir`, `Tujuan_Pengiriman`, `TotalBerat_Barang`, `nomortelp`) VALUES
('AA54321', 'AntarAja', 'Bekasi', 1.1, 817320994),
('IDX98765', 'ID Jakpress', 'Jakarta', 1.45, 816269643),
('J&T1234567890', 'J&T Express', 'Bali', 1.5, 846710818),
('JNE12345', 'JNE', 'Palestina', 1.25, 817248964),
('LION87654', 'Lion Parcel', 'Bandung', 1.2, 814529363),
('NIN45678', 'Ninja Van', 'Bandung', 1.6, 816018383),
('POS9876543210', 'POS Indonesia', 'Bandung', 1.75, 815709476),
('SCP67890', 'SiCepat', 'Bandung', 0.85, 817236517),
('TIKI13579', 'TIKI', 'Bandung', 1.3, 818291038),
('WHN24680', 'Wahana', 'Bandung', 0.95, 824219846);

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `nomortelp` int(50) NOT NULL,
  `namalengkap` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `kodepos` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`nomortelp`, `namalengkap`, `alamat`, `provinsi`, `kota`, `kodepos`) VALUES
(814529363, 'Petrik', 'Jalan Imut', 'Jawa Barat', 'Bekasi', 40143),
(815709476, 'Roni', 'Jalan Pekerti', 'Jawa Barat', 'Bekasi', 40152),
(816018383, 'Petrus', 'Jalan Situmangga', 'Jawa Barat', 'Jakarta', 40121),
(816269643, 'Isoman', 'Jalan Jalanan', 'Jawa Barat', 'Bali', 40174),
(817236517, 'Damar', 'Jalan Melati', 'Jawa Barat', 'Palestina', 40923),
(817248964, 'Seli', 'Jalan Anggur', 'Jawa Barat', 'Bandung', 40193),
(817320994, 'Riya', 'Jalan Indah', 'Jawa Barat', 'Bandung', 40295),
(818291038, 'Lana', 'Jalan Pintar', 'Jawa Barat', 'Bandung', 40142),
(824219846, 'Amir', 'Jalan Yohanes', 'Jawa Barat', 'Bandung', 40226),
(846710818, 'Darma', 'Jalan Kemarin', 'Jawa Barat', 'Bandung', 40275);

-- --------------------------------------------------------

--
-- Table structure for table `penjual`
--

CREATE TABLE `penjual` (
  `namatoko` varchar(50) NOT NULL,
  `nomortelp` int(50) DEFAULT NULL,
  `alamattoko` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `kodepos` int(50) DEFAULT NULL,
  `varianstok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjual`
--

INSERT INTO `penjual` (`namatoko`, `nomortelp`, `alamattoko`, `provinsi`, `kota`, `kodepos`, `varianstok`) VALUES
('BajuEni', 982753, 'Jalan Sukajadi', 'Jawa Barat', 'Bandung', 78659, 'MOTIF BUNGA'),
('Borman', 81234567, 'Jalan Merdeka', 'Jawa Barat', 'Garut', 54321, 'DADA'),
('KejuMoza', 1282897, 'Jalan Sapi', 'Jawa Barat', 'Ciamis', 76549, 'CRAFT'),
('KekSedap', 909182778, 'Jalan Kemana', 'Jawa Barat', 'Cimahi', 76543, 'BOLU PISANG'),
('LOCALHOST', 8129289, 'Jalan Database', 'Jawa Barat', 'Ujung Berung', 56789, 'SOLDER SNI'),
('LonTong', 98902, 'Jalan Hemat', 'Jawa Barat', 'Sukamiskin', 112, 'LONTONG KARI'),
('TokoKom', 812976757, 'Jalan Kelinci', 'Jawa Barat', 'Soekarno Hatta', 9876, 'RAM DDR4'),
('Torso', 2147483647, 'Jalan Kodingan', 'Jawa Barat', 'Buah Batu', 78906, 'JERSEY BOLA'),
('Yooghurt', 1982726, 'Jalan Amanah', 'Jawa Barat', 'Bandung', 12456, 'YOGHURT STROBERI'),
('Yoomart', 821564321, 'Jalan Junung Berung', 'Jawa Barat', 'Bandung', 12345, 'WORTEL');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `namastok` varchar(50) NOT NULL,
  `varianstok` varchar(50) NOT NULL,
  `jumlahstok` int(10) NOT NULL,
  `hargasatuan` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`namastok`, `varianstok`, `jumlahstok`, `hargasatuan`) VALUES
('BOLU', 'BOLU PISANG', 4, 21000),
('KEJU', 'CRAFT', 3, 12000),
('DAGING AYAM', 'DADA', 10, 26000),
('JERSEY', 'JERSEY BOLA', 8, 80000),
('LONTONG', 'LONTONG KARI', 6, 12000),
('GAMIS', 'MOTIF BUNGA', 1, 75000),
('RAM', 'RAM DDR4', 7, 67000),
('SOLDER', 'SOLDER SNI', 5, 24000),
('SAYURAN', 'WORTEL', 2, 5000),
('YOGHURT', 'YOGHURT STROBERI', 9, 24000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Kode_Invoice` varchar(50) NOT NULL,
  `Data_Pembayaran` varchar(50) DEFAULT NULL,
  `Tanggal_Invoice` date DEFAULT NULL,
  `Metode_Pembayaran` varchar(50) DEFAULT NULL,
  `namatoko` varchar(50) DEFAULT NULL,
  `KodePengiriman_Barang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`Kode_Invoice`, `Data_Pembayaran`, `Tanggal_Invoice`, `Metode_Pembayaran`, `namatoko`, `KodePengiriman_Barang`) VALUES
('BLCKFRI2023_123', 'GOPAY', '2023-11-14', 'DIGITAL', 'KekSedap', 'AA54321'),
('G3N3R4T3_9876', 'GOPAY', '2023-11-01', 'DIGITAL', 'LonTong', 'TIKI13579'),
('INV2023_ABCD', 'GOPAY', '2023-11-01', 'DIGITAL', 'Borman', 'SCP67890'),
('INV789_A1B2C3', 'CASH', '2023-11-11', 'CASH', 'Torso', 'NIN45678'),
('S4MP13INV_654', 'CASH', '2023-11-25', 'CASH', 'Yoomart', 'IDX98765'),
('T0K0_S4L3_321', 'CASH', '2023-11-01', 'CASH', 'TokoKom', 'WHN24680'),
('T0KOP3D14_7589', 'GOPAY', '2023-11-16', 'DIGITAL', 'BajuEni', 'JNE12345'),
('TKPD2022_XY789', 'GOPAY', '2023-11-04', 'DIGITAL', 'KejuMoza', 'J&T1234567890'),
('TKPD2023_RNDM', 'CASH', '2023-11-28', 'CASH', 'Yooghurt', 'LION87654'),
('TKPDINV_456XYZ', 'GOPAY', '2023-11-07', 'DIGITAL', 'LOCALHOST', 'POS9876543210');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`KodePengiriman_Barang`),
  ADD KEY `nomortelp` (`nomortelp`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`nomortelp`);

--
-- Indexes for table `penjual`
--
ALTER TABLE `penjual`
  ADD PRIMARY KEY (`namatoko`),
  ADD KEY `idx_varianstok` (`varianstok`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`varianstok`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Kode_Invoice`),
  ADD KEY `namatoko` (`namatoko`),
  ADD KEY `KodePengiriman_Barang` (`KodePengiriman_Barang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kurir`
--
ALTER TABLE `kurir`
  ADD CONSTRAINT `nomortelp` FOREIGN KEY (`nomortelp`) REFERENCES `pembeli` (`nomortelp`);

--
-- Constraints for table `penjual`
--
ALTER TABLE `penjual`
  ADD CONSTRAINT `penjual_ibfk_1` FOREIGN KEY (`varianstok`) REFERENCES `produk` (`varianstok`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `KodePengiriman_Barang` FOREIGN KEY (`KodePengiriman_Barang`) REFERENCES `kurir` (`KodePengiriman_Barang`),
  ADD CONSTRAINT `namatoko` FOREIGN KEY (`namatoko`) REFERENCES `penjual` (`namatoko`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
