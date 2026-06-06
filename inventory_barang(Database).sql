-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 06 Jun 2026 pada 11.15
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `inventory_barang25550039`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `kd_kat` varchar(6) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(1, 'K001', 'Makanan'),
(2, 'K002', 'Minuman'),
(3, 'K003', 'Alat Tulis'),
(4, 'K004', 'Bahan pokok makanan'),
(5, 'K005', 'Snack');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int DEFAULT '0',
  `min_stock` int DEFAULT '5',
  `price` int DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `update_at`) VALUES
(2, 1, 'P002', 'Mie Goreng Sukses isi 2 ', 100, 8, 4000, '67de597cd5ade6acc4a9ee2e743873ab.jpeg', '2026-05-26 07:44:33', NULL),
(3, 1, 'P003', 'Nasindo Nasi Goreng Instan', 10, 10, 12000, '82041df898026da4db0ffc8beff852c9.jpeg', '2026-05-26 07:53:05', NULL),
(4, 1, 'P004', 'WOW Spagheti', 100, 10, 4000, 'b5fcf43c6d110fb5a554bae906578c62.jpeg', '2026-05-26 07:53:08', NULL),
(5, 2, 'P005', 'Teh Pucuk Original', 100, 8, 3000, '59551bd74b6ba9f98115a577018eb4b6.jpeg', '2026-05-26 07:56:45', NULL),
(6, 2, 'P006', 'Air Le Mineral', 100, 5, 3000, '04f4fbb1abf8ad0f8f4f94830ba09904.jpeg', '2026-05-26 07:58:14', NULL),
(7, 2, 'P007', 'Good Day Cappucino', 100, 10, 8000, '1ca193b7ccca78cad333b2c88a25049e.jpeg', '2026-05-26 07:59:37', NULL),
(8, 2, 'P008', 'Buavita Jus Jambu', 140, 20, 8000, '3f967ab1724a295755e153b20f57e497.jpeg', '2026-05-26 08:01:09', NULL),
(9, 3, 'P009', 'Pensil FaberCastell', 100, 10, 4000, '80d2a091834f615e31812fc51e1e368b.jpeg', '2026-05-26 08:03:17', NULL),
(10, 3, 'P010', 'Penggaris', 100, 22, 5000, '73c2bc3d6dd68258e76da0e5791652bb.jpeg', '2026-05-26 08:04:49', NULL),
(11, 3, 'P011', 'Penghapus FaberCastell', 100, 5, 3000, '288c45beb4fa936517eb5147928b9723.jpeg', '2026-05-26 08:06:13', NULL),
(12, 3, 'P012', 'Pulpen Joyko', 100, 12, 3000, '355263579b6b7febb4f6a7a3addb1a29.jpeg', '2026-05-26 08:07:36', NULL),
(13, 4, 'P013', 'Beras Fortune 5Kg', 50, 10, 70000, 'ac99e259286b0f558421af8e383188b4.jpeg', '2026-05-26 08:10:13', NULL),
(14, 4, 'P014', 'Minyak Goreng Fortune', 50, 5, 25000, '4aa273d3ad35dd8d9f72714ebb52b205.jpeg', '2026-05-26 08:18:23', NULL),
(15, 4, 'P015', 'Gulaku Gula', 60, 10, 15000, 'be604b97f9cd68157e4345794a5d099c.jpeg', '2026-05-26 08:20:19', NULL),
(16, 4, 'P016', 'Garam', 70, 10, 10000, 'd6421322ef9d0f6c52f3a518efb7d09c.jpeg', '2026-05-26 08:21:15', NULL),
(17, 5, 'P017', 'Beng Beng', 100, 8, 2500, '7f0cce3519da38c7ad86e8823b00d68b.jpeg', '2026-05-26 08:23:00', NULL),
(18, 5, 'P018', 'Silverqueen', 100, 5, 10000, '63bf130fa602c12b933d77ab39097ff3.jpeg', '2026-05-26 08:24:09', NULL),
(19, 5, 'P019', 'Boncabe Makaroni Pedas', 100, 5, 10000, 'f9b44e2d5bd4b7042abd383d8939d9e7.jpeg', '2026-05-26 08:25:33', NULL),
(20, 5, 'P020', 'Kentang Goreng French Fries', 100, 2, 10000, 'b9ee2e18858e6104cd11ed1c9da14748.jpeg', '2026-05-26 08:27:48', NULL),
(21, 1, 'P021', 'Mie Goreng Indomie', 100, 10, 3500, '7a801765c56f032a27a905e10cca1e0d.jpeg', '2026-06-05 05:27:47', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `stock_before` int DEFAULT NULL,
  `stock_after` int DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(1, 3, 'ADD', 5, 5, 10, '', '2026-05-27 10:21:59', 1),
(2, 8, 'REDUCE', 10, 150, 140, '', '2026-06-05 05:51:03', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(1, 'Kirani', 'kiranakirani347@gmail.com', '$2y$10$gDjn7PK3B3zQVkbxmodKB.SpcAsoI/uJKNNqwRUbdIzRdCVRsoC/q', 'admin', 1, '2026-05-25 12:03:54'),
(2, 'Kirani Cinta Mentari', '1234', '$2y$10$BB9BvNvwC7yP/YpjhCznm.veo9CWYTCS61qBrpAE4UaEcSZCuqh9W', 'admin', 1, '2026-06-05 05:30:36');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_kat` (`kd_kat`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
