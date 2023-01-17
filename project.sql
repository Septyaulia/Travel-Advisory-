-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2023 pada 01.15
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` varchar(50) NOT NULL,
  `Admin_Name` varchar(100) DEFAULT NULL,
  `Admin_Gender` varchar(10) DEFAULT NULL,
  `Admin_Phone` varchar(13) DEFAULT NULL,
  `Admin_Address` varchar(150) DEFAULT NULL,
  `Admin_Salary` varchar(150) DEFAULT NULL,
  `Admin_Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Admin_Name`, `Admin_Gender`, `Admin_Phone`, `Admin_Address`, `Admin_Salary`, `Admin_Email`) VALUES
('AD001', 'Keisha', 'Female', '085123456781', 'Melati Street no 25', '1000000', 'Keisha_star@gmail.com'),
('AD002', 'Liam', 'Male', '085123456782', 'Mawar Street no 42', '1000000', 'Liam_GR@gmail.com'),
('AD003', 'Mona', 'Female', '085123456783', 'Melati Street no 25', '1000000', 'Keisha_star@gmail.com'),
('AD004', 'Nanang', 'Male', '085123456784', 'Melati Street no 25', '1000000', 'Nanang_ng@gmail.com'),
('AD005', 'Otto', 'Male', '085123456785', 'Melati Street no 25', '1000000', 'Otto_Isk@gmail.com'),
('AD006', 'Peter', 'Male', '085123456786', 'Melati Street no 25', '1000000', 'Peter_RB@gmail.com'),
('AD007', 'Queen', 'Female', '085123456787', 'Melati Street no 25', '1000000', 'Queen_Paris@gmail.com'),
('AD008', 'Riska', 'Female', '085123456788', 'Melati Street no 25', '1000000', 'Riska_rani@gmail.com'),
('AD009', 'Sean', 'Male', '085123456789', 'Melati Street no 25', '1000000', 'Sean_anw@gmail.com'),
('AD010', 'Taufan', 'Male', '085123456771', 'Melati Street no 25', '1000000', 'Taufan_feb@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `discount_package` int(11) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`cart_id`, `package_id`, `price`, `qty`, `discount_package`, `total`, `user_id`) VALUES
(2, 4, 550000, 1, NULL, 550000, 1),
(3, 1, 720000, 2, NULL, 1440000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `gender`, `phone`, `address`, `created`, `updated`) VALUES
(1, 'Akira', 'L', '081234567891', 'Mangga Street no 12', '2023-01-12 03:24:24', '0000-00-00 00:00:00'),
(2, 'Budi', 'L', '081234567892', 'Jambu street no 15', '2023-01-12 03:24:51', '0000-00-00 00:00:00'),
(3, 'Caca', 'P', '081234567893', 'Apple street no 9', '2023-01-12 03:25:17', '0000-00-00 00:00:00'),
(4, 'Daniel', 'L', '081234567894', 'Manggis street no 3', '2023-01-12 03:25:48', '0000-00-00 00:00:00'),
(5, 'Ethan', 'L', '081234567895', 'Melon street no 19', '2023-01-12 03:26:17', '0000-00-00 00:00:00'),
(6, 'Fira', 'P', '081234567896', 'Nangka street no 31', '2023-01-12 03:26:41', '0000-00-00 00:00:00'),
(7, 'Gigi', 'P', '081234567897', 'Jeruk street no 7', '2023-01-12 03:27:08', '2023-01-11 21:28:18'),
(8, 'Hans', 'L', '081234567898', 'Kiwi street no 28', '2023-01-12 03:27:31', '2023-01-11 21:28:24'),
(9, 'Ishak', 'L', '081234567899', 'Anggur street no 23', '2023-01-12 03:28:08', '0000-00-00 00:00:00'),
(10, 'Jojo', 'L', '081234567881', 'Durian street no 10', '2023-01-12 03:29:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `destination`
--

CREATE TABLE `destination` (
  `destination_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `destination`
--

INSERT INTO `destination` (`destination_id`, `name`, `created`, `updated`) VALUES
(1, 'Jogja', '2023-01-12 04:44:30', '2023-01-11 22:44:53'),
(2, 'Klaten', '2023-01-12 04:45:05', NULL),
(3, 'Solo', '2023-01-12 04:45:12', NULL),
(4, 'Surabaya', '2023-01-12 04:45:19', NULL),
(5, 'Semarang', '2023-01-12 04:45:24', NULL),
(6, 'Salatiga', '2023-01-12 04:45:32', NULL),
(7, 'Batu', '2023-01-12 04:45:40', NULL),
(8, 'Magelang', '2023-01-12 04:45:46', NULL),
(9, 'Pekalongan', '2023-01-12 04:45:55', NULL),
(10, 'Tegal', '2023-01-12 04:46:01', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `food`
--

INSERT INTO `food` (`food_id`, `name`, `created`, `updated`) VALUES
(1, 'Rendang', '2023-01-12 18:29:52', NULL),
(2, 'Empal', '2023-01-12 18:30:19', NULL),
(3, 'Soto', '2023-01-12 18:30:27', NULL),
(4, 'Bakso', '2023-01-12 18:30:38', NULL),
(5, 'Tahu Gimbal', '2023-01-12 18:31:44', NULL),
(6, 'Nasi Ayam', '2023-01-12 18:32:13', NULL),
(7, 'Sate', '2023-01-12 18:32:33', NULL),
(8, 'Rawon', '2023-01-12 18:32:39', NULL),
(9, 'Liwet', '2023-01-12 18:32:48', NULL),
(10, 'Tengkleng', '2023-01-12 18:32:54', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `name`, `created`, `updated`) VALUES
(1, 'Alila', '2023-01-12 19:17:27', NULL),
(2, 'Bima', '2023-01-12 19:17:32', NULL),
(3, 'Coco', '2023-01-12 19:17:41', NULL),
(4, 'Damar', '2023-01-12 19:17:46', NULL),
(5, 'Elang', '2023-01-12 19:17:50', NULL),
(6, 'Fairmont', '2023-01-12 19:18:03', NULL),
(7, 'Grand Edge', '2023-01-12 19:18:09', NULL),
(8, 'Hankyu', '2023-01-12 19:18:18', NULL),
(9, 'Ibis', '2023-01-12 19:18:22', NULL),
(10, 'Jatra', '2023-01-12 19:18:29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `destination_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `transportation_id` int(11) NOT NULL,
  `tourist_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `stock` int(10) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `package`
--

INSERT INTO `package` (`package_id`, `barcode`, `name`, `destination_id`, `food_id`, `hotel_id`, `transportation_id`, `tourist_id`, `price`, `stock`, `created`, `updated`) VALUES
(1, 'PK001', 'Jogja2', 1, 1, 1, 1, 1, 720000, 20, '2023-01-12 16:38:53', '2023-01-12 13:07:55'),
(4, 'PK002', 'Klaten1', 2, 2, 2, 2, 2, 550000, 2, '2023-01-13 15:46:24', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `invoice` varchar(50) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `package_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `final_price` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `remaining` int(11) NOT NULL,
  `note` text NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sale`
--

INSERT INTO `sale` (`sale_id`, `invoice`, `customer_id`, `package_id`, `total_price`, `discount`, `final_price`, `cash`, `remaining`, `note`, `date`, `user_id`, `created`) VALUES
(1, 'MP2301140001', 1, 0, 720000, 20000, 700000, 700000, 0, 'lunas', '2023-01-14', 1, '2023-01-14 23:55:45'),
(3, 'MP2301160001', NULL, 0, 1990000, 0, 1990000, 1990000, 0, '', '2023-01-16', 1, '2023-01-16 07:11:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sale_detail`
--

CREATE TABLE `sale_detail` (
  `detail_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `discount_item` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stock`
--

INSERT INTO `stock` (`stock_id`, `package_id`, `type`, `detail`, `qty`, `date`, `created`, `user_id`) VALUES
(1, 1, 'in', 'tambahan', 20, '2023-01-13', '2023-01-14 01:37:07', 1),
(4, 4, 'in', '', 5, '2023-01-13', '2023-01-14 02:55:30', 1),
(6, 4, 'out', 'dipesan', 3, '2023-01-13', '2023-01-14 04:59:39', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tourist`
--

CREATE TABLE `tourist` (
  `tourist_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tourist`
--

INSERT INTO `tourist` (`tourist_id`, `name`, `created`, `updated`) VALUES
(1, 'Candi Prambanan', '2023-01-12 19:50:07', NULL),
(2, 'Umbul Ponggok', '2023-01-12 19:50:29', NULL),
(3, 'The Herritage', '2023-01-12 19:50:38', NULL),
(4, 'Hutan Bambu Keputih', '2023-01-12 19:51:14', NULL),
(5, 'Lawang Sewu', '2023-01-12 19:51:34', NULL),
(6, 'Gunung Merbabu', '2023-01-12 19:51:54', NULL),
(7, 'Jatim Park 3', '2023-01-12 19:52:03', NULL),
(8, 'Candi Borobudur', '2023-01-12 19:52:20', NULL),
(9, 'Curug Sibedug', '2023-01-12 19:52:43', NULL),
(10, 'Bukit Goa Lawa', '2023-01-12 19:53:09', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transportation`
--

CREATE TABLE `transportation` (
  `transportation_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transportation`
--

INSERT INTO `transportation` (`transportation_id`, `name`, `created`, `updated`) VALUES
(1, 'Bus1', '2023-01-12 19:41:52', NULL),
(2, 'Bus2', '2023-01-12 19:41:57', NULL),
(3, 'Bus3', '2023-01-12 19:42:02', NULL),
(4, 'Bus4', '2023-01-12 19:42:06', NULL),
(5, 'Bus5', '2023-01-12 19:42:11', NULL),
(6, 'Travel1', '2023-01-12 19:42:25', NULL),
(7, 'Travel 2', '2023-01-12 19:42:29', NULL),
(8, 'Travel 3', '2023-01-12 19:42:34', NULL),
(9, 'Travel 4', '2023-01-12 19:42:39', NULL),
(10, 'Travel 5', '2023-01-12 19:42:44', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `level` int(1) NOT NULL COMMENT '1:admin 2:customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `address`, `level`) VALUES
(1, 'admin1', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Keisha', 'Malang', 1),
(2, 'customer', 'b39f008e318efd2bb988d724a161b61c6909677f', 'Akira', 'Malang', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`destination_id`);

--
-- Indeks untuk tabel `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indeks untuk tabel `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indeks untuk tabel `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `destination_id` (`destination_id`),
  ADD KEY `food_id` (`food_id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `transportation_id` (`transportation_id`),
  ADD KEY `tourist_id` (`tourist_id`);

--
-- Indeks untuk tabel `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indeks untuk tabel `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indeks untuk tabel `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `tourist`
--
ALTER TABLE `tourist`
  ADD PRIMARY KEY (`tourist_id`);

--
-- Indeks untuk tabel `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`transportation_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `destination`
--
ALTER TABLE `destination`
  MODIFY `destination_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tourist`
--
ALTER TABLE `tourist`
  MODIFY `tourist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `transportation`
--
ALTER TABLE `transportation`
  MODIFY `transportation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `package_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destination` (`destination_id`),
  ADD CONSTRAINT `package_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`),
  ADD CONSTRAINT `package_ibfk_3` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `package_ibfk_4` FOREIGN KEY (`transportation_id`) REFERENCES `transportation` (`transportation_id`),
  ADD CONSTRAINT `package_ibfk_5` FOREIGN KEY (`tourist_id`) REFERENCES `tourist` (`tourist_id`);

--
-- Ketidakleluasaan untuk tabel `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD CONSTRAINT `sale_detail_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  ADD CONSTRAINT `sale_detail_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`);

--
-- Ketidakleluasaan untuk tabel `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
