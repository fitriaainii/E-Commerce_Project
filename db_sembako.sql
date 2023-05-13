-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 03:29 PM
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
-- Database: `db_sembako`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_produk`
--

CREATE TABLE `jenis_produk` (
  `id` int(11) NOT NULL,
  `jenis_produk` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_produk`
--

INSERT INTO `jenis_produk` (`id`, `jenis_produk`) VALUES
(1, 'Bahan Pokok dan Bumbu Dapur'),
(2, 'Makanan Ringan'),
(3, 'Minuman Botol'),
(4, 'Makanan Instan');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `produk_id` int(45) NOT NULL,
  `tanggal` date NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `nama_pembeli`, `alamat`, `produk_id`, `tanggal`, `quantity`) VALUES
(2, 'Fitria', 'Bogor', 2, '2023-05-11', 10),
(3, 'Azka', 'Jakarta', 3, '2023-05-20', 5),
(6, 'Hilya Mahfaza', 'Depok', 18, '2023-05-27', 2),
(7, 'Fitria', 'Bogor', 3, '2023-05-19', 2),
(8, 'Raisha', 'Jl.Iskandar Raya', 31, '2023-05-12', 3),
(9, 'Bambang', 'Cibinong', 37, '2023-05-13', 1),
(10, 'Arik', 'Pos Giro Bogor', 34, '2023-05-12', 10),
(11, 'Fambo', 'Cibinong', 35, '2023-05-13', 3),
(12, 'Rika', 'Citeureup', 32, '2023-05-14', 10),
(13, 'Fahla', 'Jakarta', 24, '2023-05-13', 3);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(45) NOT NULL,
  `berat` varchar(191) NOT NULL,
  `jenis_produk_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `stok`, `harga`, `berat`, `jenis_produk_id`) VALUES
(2, 'Teh Botol Sosro', 20, 3000, '250 ml', 1),
(3, 'Beras Rojolele', 45, 145000, '10 kg', 1),
(17, 'Chitato Lite', 300, 12000, '120 gr', 1),
(18, 'Telur Ayam', 100, 30000, '1 kg', 1),
(19, 'Minyak Sunco', 73, 41000, '2 L', 1),
(20, 'Minyak Sania ', 98, 20000, '1 L', 1),
(22, 'Biskuit Roma Kelapa', 85, 11000, '300 gr', 2),
(23, 'God Day ', 85, 32000, '20 gr', 3),
(24, 'Kopi ABC Susu', 150, 2000, '20 gr', 3),
(25, 'Indomie Goreng', 200, 3000, '85 gr', 4),
(26, 'Gulaku Gula Pasir', 40, 15000, '1 kg', 1),
(27, 'Gula Merah Jawa', 100, 18000, '1 kg', 1),
(29, 'Cheetos Jagung Bakar ', 300, 8000, '75 gr', 2),
(31, 'Chikiballs Cheese', 150, 21000, '200 gr', 2),
(32, 'Saltcheese Biskuit ', 50, 11000, '200 gr', 2),
(33, 'Tango Biskuit Chocolate', 20, 9000, '130 gr', 2),
(34, 'Oreo Biscuit ', 45, 9000, '133 gr', 2),
(35, 'Qtela Keripik Tempe Original', 45, 8000, '55 gr', 2),
(36, 'Biskuit Marie Regal', 65, 12000, '120 gr', 2),
(37, 'Saos ABC Botol Ekstra Pedas', 178, 18000, '335 ml', 1),
(38, 'Kecap Bango Reffil ', 85, 24000, '400 ml', 1),
(39, 'Bumbu Racik Nasi Goreng Indofood', 30, 2000, '20 gr', 1),
(40, 'Tepung Terigu Segita Biru ', 20, 14000, '1 kg', 1),
(41, 'Kaldu Ayam Royco ', 125, 9000, '230 gr', 1),
(42, 'Kaldu Sapi Royco', 115, 12000, '230 gr', 1),
(43, 'Buahvita Jambu', 68, 8000, '250 ml', 3),
(44, 'Nestcafe Original', 100, 8000, '240 ml', 3),
(45, 'Pocari Sweat ', 70, 8000, '350 ml', 3),
(46, 'Cimory Squeeze Original ', 50, 9000, '120 ml', 3),
(47, 'Coca Cola', 85, 15000, '1,5 L', 3),
(48, 'Susu Cimory Coklat', 98, 7000, '250 ml', 3),
(49, 'Indomie Rebus Ayam Bawang', 200, 3000, '85 gr', 4),
(50, 'Indomie Rebus Soto Ayam ', 200, 3000, '85 gr', 4),
(51, 'Kornet Sapi Pronas', 10, 26000, '198 gr', 4),
(52, ' Lafonte Spaghetti Bolognese', 50, 7000, '117 gr', 4),
(53, 'Mie Sedap Goreng', 100, 3000, '85 gr', 4),
(54, 'Kanzler Nugget', 20, 40000, '450 gr', 4),
(55, 'Kingfisher Sarden Saus Sambal ', 15, 16000, '115 gr', 4),
(56, 'Fiesta Sosis Ayam ', 20, 25000, '300 gr', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_produk`
--
ALTER TABLE `jenis_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pesanan1` (`produk_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis_produk_id` (`jenis_produk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_produk`
--
ALTER TABLE `jenis_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `jenis_produk_id` FOREIGN KEY (`jenis_produk_id`) REFERENCES `jenis_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
