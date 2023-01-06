-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2022 pada 04.38
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topsis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alter` int(5) UNSIGNED NOT NULL,
  `nama_alter` varchar(100) NOT NULL,
  `hasil_alter` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alter`, `nama_alter`, `hasil_alter`) VALUES
(6, 'Intan', 4.180423641060089),
(7, 'Ana', 4.298768292697973),
(8, 'rini', 4.064465726575511);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(5) UNSIGNED NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `atribut` varchar(100) NOT NULL,
  `bobot` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `atribut`, `bobot`) VALUES
(1, 'Absen', 'Benefit', 2),
(2, 'Nilai Atasan', 'Benefit', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(9, '2022-11-15-181605', 'App\\Database\\Migrations\\Alternatif', 'default', 'App', 1670559169, 1),
(10, '2022-11-15-183011', 'App\\Database\\Migrations\\Kriteria', 'default', 'App', 1670559169, 1),
(11, '2022-11-15-184313', 'App\\Database\\Migrations\\Nilaialter', 'default', 'App', 1670559169, 1),
(12, '2022-11-16-135214', 'App\\Database\\Migrations\\Perhitungan', 'default', 'App', 1670559169, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilaialter`
--

CREATE TABLE `nilaialter` (
  `id_nilaialter` int(5) UNSIGNED NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `id_alter` int(5) NOT NULL,
  `nilai` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `nilaialter`
--

INSERT INTO `nilaialter` (`id_nilaialter`, `id_kriteria`, `id_alter`, `nilai`) VALUES
(11, 1, 6, 55),
(12, 2, 6, 65),
(13, 1, 7, 77),
(14, 2, 7, 70),
(15, 1, 8, 34),
(16, 2, 8, 67);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perhitungan`
--

CREATE TABLE `perhitungan` (
  `id_perhitungan` int(5) UNSIGNED NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `id_alter` int(5) NOT NULL,
  `normalisasi` double NOT NULL,
  `terbobot` double NOT NULL,
  `nilai_preferensi` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alter`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilaialter`
--
ALTER TABLE `nilaialter`
  ADD PRIMARY KEY (`id_nilaialter`);

--
-- Indeks untuk tabel `perhitungan`
--
ALTER TABLE `perhitungan`
  ADD PRIMARY KEY (`id_perhitungan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alter` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `nilaialter`
--
ALTER TABLE `nilaialter`
  MODIFY `id_nilaialter` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `perhitungan`
--
ALTER TABLE `perhitungan`
  MODIFY `id_perhitungan` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
