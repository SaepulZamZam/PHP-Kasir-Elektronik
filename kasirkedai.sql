-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 03:37 PM
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
-- Database: `kasirkedai`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(7, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `kode_menu` varchar(12) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `status` enum('tersedia','tidak tersedia') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `kode_menu`, `nama`, `harga`, `deskripsi`, `gambar`, `kategori`, `status`) VALUES
(0, 'MN51', 'Laptop Acer Nitro AN515-46-R8PD', 100000, 'Layar 15.6&quot; resolusi 1920 x 1080 pixels.AMD Ryzen 7-6800H penyimpanan 512 GB dan RAM 16 GB', 'Acer nitro.jpg', 'Laptop', 'tersedia'),
(35, 'MN35', ' Epson EcoTank L3250 All-in-One Printer', 90000, 'Menghasilkan cetakan berkualitas tinggi dengan resolusi mencapai 5760 x 1440dpi.', 'print ep.jpg', 'Printer', 'tersedia'),
(36, 'MN36', 'Canon PIXMA Printer TS5370 Pink', 85000, 'Printer Foto, Printer Inkjet resolusi 4800 x 1200dpi', 'print cn.jpg', 'Printer', 'tersedia'),
(37, 'MN37', 'LG New Hercules AC H05TN4', 8500, 'Bertenaga 1HP Didukung dengan kapasitas pendinginan mencapai 5000BTU', 'ac lg.jpg', 'AC', 'tersedia'),
(38, 'MN38', 'Samsung AC 0.5PK AR05TGHQASINSE', 85000, 'Bertenaga 0.5HP.Dengan kapasitas pendinginan 4800BTU', 'ac ss.jpg', 'AC', 'tersedia'),
(39, 'MN39', 'Samsung 58 Inci Led 4k Smart Tv Ua58cu7000kxx', 10000, 'Fitur PurColor membuat TV menampilkan macam warna Smart TV ini juga menggunakan Crystal 4k', 'tv ss.jpg', 'Television', 'tersedia'),
(40, 'MN40', 'SONY Bravia LED X90L 4K HDR Google TV 75 Inch XR-75X90L', 95000, 'Panel LED full Array dengan LED baru dan XR Triluminos Pro membuat X90K mengakses 100 miliar warna', 'tv sony.jpg', 'Television', 'tersedia'),
(41, 'MN41', 'Mesin Cuci Denpoo DW 8907 4P 8KG 2 TABUNG - DW 8907', 75000, 'DENPOO MESIN CUCI DW 8907 4P 8KG 2 TABUNG', 'mesin cuci dp.jpg', 'Washing Machine', 'tersedia'),
(42, 'MN42', 'Samsung 11Kg Mesin Cuci dengan Ecobubble™ dan AI Control', 10000, '1Kg Mesin Cuci dengan Ecobubble dan AI Control, Front Loading', 'mesin cuci ss.png', 'Washing Machine', 'tersedia'),
(43, 'MN43', 'Kulkas Samsung RT 19 2 pintu', 9000, 'Samsung RT19 Kulkas 2 Pintu dengan All-around Cooling, 203L,', 'kulkas ss.png', 'Kulkas', 'tersedia'),
(44, 'MN44', 'Headset Logitech', 7000, '	A50 Wireless + Base Station menghadirkan pengalaman gaming yang tak terlupakan', 'hd log.jpg', 'Headset', 'tersedia'),
(45, 'MN45', 'Laptop Acer predator', 550000, 'layar 15.6&quot; dan resolusi 1920 x 1080 pixels. intel i7 pentimpanan 512 GB RAM 16 GB', 'Laptop-Acer-Predator.jpg', 'Laptop', 'tersedia'),
(46, 'MN46', 'Macbook Pro', 400000, 'MacBook Pro melesat berkat chip M3 PRO dilengkapi ray tracing yang dipercepat perangkat keras.', 'MacBook-Pro-2021.jpg', 'Laptop', 'tersedia'),
(47, 'MN47', 'Macbook Air M2 15 inc', 350000, 'MacBook Air 15 inci Chip M2 menghadirkan kecepatan lebih tinggi untuk segala hal', 'macbook.jpg', 'Laptop', 'tersedia'),
(48, 'MN48', 'AQUA Elektronik Kulkas 2 Pintu 169 L AQR-D251 - BLACK', 30000, 'AQUA Japan AQR-D251 kulkas 2 pintu dengan kapasitas 169 liter yang sesuai dengan kebutuhan Anda.', 'kulkas aqu.jpg', 'Kulkas', 'tersedia'),
(49, 'MN49', 'Iphone 15 PRO', 50000, 'IPhone 15 Pro merupakan iPhone pertama dengan desain titanium dilengkapi Chip A17 PRO', 'IPHONE.jpg', 'HandPhone', 'tersedia'),
(50, 'MN50', 'HEADSET BLUETOOTH 5.0 WIRELESS P9 apple airpods max tws - Silver', 8000, 'Versi Bluetooth: 5.0 Kompatibel dengan ponsel iphone dan android. IPX4 tahan air', 'hd app.jpg', 'Headset', 'tersedia'),
(52, 'MN52', 'HP Asus ROG', 50000, 'HP yang cocok untuk bermain game berat', 'hp asus.jpg', 'HandPhone', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `kode_pesanan` varchar(12) NOT NULL,
  `kode_menu` varchar(12) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `kode_pesanan`, `kode_menu`, `qty`) VALUES
(42, '659ea1016e5c', 'MN51', 1),
(43, '659ea1196a21', 'MN51', 1),
(44, '659ea1196a21', 'MN50', 1),
(45, '659ea1196a21', 'MN49', 1),
(46, '659ea1196a21', 'MN48', 1),
(47, '659ea1196a21', 'MN47', 1),
(48, '659ea1196a21', 'MN46', 1),
(49, '659ea1196a21', 'MN45', 1),
(50, '659ea1196a21', 'MN44', 1),
(51, '659ea384625f', 'MN51', 1),
(52, '659ea384625f', 'MN50', 1),
(53, '659ea3bc7c60', 'MN52', 1),
(54, '659ea7789f9f', 'MN59', 1),
(55, '659ea785ac82', 'MN59', 1),
(56, '659ea78f88d6', 'MN52', 1),
(57, '659eaafc59e8', 'MN52', 1),
(58, '659eab2ef299', 'MN52', 1),
(59, '659eab2ef299', 'MN51', 1),
(60, '659eab2ef299', 'MN50', 1),
(61, '659eab2ef299', 'MN49', 1),
(62, '659eab2ef299', 'MN48', 1),
(63, '659eab2ef299', 'MN47', 1),
(64, '659eab2ef299', 'MN46', 1),
(65, '659eab2ef299', 'MN45', 1),
(66, '659eab2ef299', 'MN44', 1),
(67, '659eab2ef299', 'MN43', 1),
(68, '659eab2ef299', 'MN42', 1),
(69, '659eab2ef299', 'MN41', 1),
(70, '659eab2ef299', 'MN40', 1),
(71, '659eab2ef299', 'MN39', 1),
(72, '659eab2ef299', 'MN38', 1),
(73, '659eab2ef299', 'MN37', 1),
(74, '659eab2ef299', 'MN36', 1),
(75, '659eab2ef299', 'MN35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_pesanan` varchar(12) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_pesanan`, `nama_pelanggan`, `waktu`) VALUES
(17, '659ea1016e5c', 'epul', '2024-01-10 20:52:01'),
(18, '659ea1196a21', 'epul2', '2024-01-10 20:52:25'),
(19, '659ea384625f', 'nina', '2024-01-10 21:02:44'),
(20, '659ea3bc7c60', 'luna', '2024-01-10 21:03:40'),
(21, '659ea7789f9f', 'epul', '2024-01-10 21:19:36'),
(22, '659ea785ac82', 'epul', '2024-01-10 21:19:49'),
(23, '659ea78f88d6', 'nina', '2024-01-10 21:19:59'),
(24, '659eaafc59e8', 'bronya', '2024-01-10 21:34:36'),
(25, '659eab2ef299', 'bronya', '2024-01-10 21:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'rendi12', '69c796f5bbd1339f3ba3e18ce54fcc63'),
(2, 'epul', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
