-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Agu 2022 pada 10.34
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_warga`
--

CREATE TABLE `admin_warga` (
  `id_warga` int(11) NOT NULL,
  `nm_warga` varchar(255) NOT NULL,
  `nkk` bigint(16) NOT NULL,
  `nik` bigint(16) NOT NULL,
  `tpt_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `gol_darah` varchar(6) NOT NULL,
  `alamat` text NOT NULL,
  `agama` varchar(21) NOT NULL,
  `status` varchar(14) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `warganegara` varchar(21) NOT NULL,
  `telp` bigint(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin_warga`
--

INSERT INTO `admin_warga` (`id_warga`, `nm_warga`, `nkk`, `nik`, `tpt_lahir`, `tgl_lahir`, `jk`, `gol_darah`, `alamat`, `agama`, `status`, `pekerjaan`, `warganegara`, `telp`, `email`, `id_user`) VALUES
(7, 'Budi Santoso', 3175098765821654, 3175065897521003, 'Jakarta', '1998-08-03', 'L', 'A', 'Jl.pondok kelapa selatan 1C no 52', 'Islam', 'Belum Menikah', 'Pegawai', 'Indonesia', 85697532648, 'budi_s@gmail.com', 9),
(8, 'Akbar Isfar', 3175096336452846, 3175020098765201, 'Bekasi', '1999-04-08', 'L', 'A', 'Jl.pondok kelapa selatan 1C no 40', 'Islam', 'Belum Menikah', 'Pegawai', 'Indonesia', 87855631145, 'akbaris@gmail.com', 9),
(9, 'Riefki Diantama', 3175070312986453, 3175075706670008, 'Surabaya', '2000-11-22', 'L', 'A', 'Jl.pondok kelapa selatan 1C no 32', 'Islam', 'Belum Menikah', 'Mahasiswa', 'Indonesia', 81210921056, 'riefki@mail.com', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `humas_berita`
--

CREATE TABLE `humas_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tgl` date NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `berita` text NOT NULL,
  `status` varchar(21) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `humas_berita`
--

INSERT INTO `humas_berita` (`id_berita`, `judul`, `tgl`, `gambar`, `berita`, `status`, `id_admin`) VALUES
(9, 'Kerja Bakti', '2022-06-25', 'kerja.jpeg', 'Kerja bakti dilakukan untuk membersihkan sampah-sampah pada jalanan dan pembersihan selokan agar saat banjir air tidak meluap dan jalanan tidak tergenang air.', '', 9),
(10, 'Ronda Malam', '2022-05-25', 'ronda.jpeg', 'Ronda malam dilakukan warga setempat saat bulan suci ramadhan dikarenakan petugas keamanan sedang pergi mudik untuk menghindari pencurian kendaraan dan barang berharga milik warga.', '', 9),
(11, 'Vaksin Booster', '2022-05-11', 'vaksin.jpeg', 'Vaksin booster diadakan pihak kesehatan setempat untuk warga RT 005 yang bertujuan untuk mempertahankan tingkat kekebalan serta memperpanjang masa perlindungan yang diadakan di RPTRA.', '', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `humas_lapor`
--

CREATE TABLE `humas_lapor` (
  `id_lapor` int(11) NOT NULL,
  `nm_warga` varchar(255) NOT NULL,
  `jenis` varchar(11) NOT NULL,
  `uraian` text NOT NULL,
  `status` varchar(21) NOT NULL,
  `tgl` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `humas_lapor`
--

INSERT INTO `humas_lapor` (`id_lapor`, `nm_warga`, `jenis`, `uraian`, `status`, `tgl`, `id_user`) VALUES
(6, 'Budi Santoso', 'Keluhan', 'Selokan masih belum dibersihkan mengakibatkan banjir pada saat hujan', 'Belum diselesaikan', '2022-05-30', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keuangan_keluar`
--

CREATE TABLE `keuangan_keluar` (
  `id_uangkeluar` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `ket` text NOT NULL,
  `jumlah` bigint(21) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keuangan_keluar`
--

INSERT INTO `keuangan_keluar` (`id_uangkeluar`, `tgl`, `ket`, `jumlah`, `id_admin`) VALUES
(3, '2022-06-25', 'Bayar Keamanan untuk Penjaga', 35000, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keuangan_masuk`
--

CREATE TABLE `keuangan_masuk` (
  `id_uangmasuk` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `ket` text NOT NULL,
  `jumlah` bigint(21) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keuangan_masuk`
--

INSERT INTO `keuangan_masuk` (`id_uangmasuk`, `tgl`, `ket`, `jumlah`, `id_admin`) VALUES
(5, '2022-06-25', 'Iuran Keamanan Dari Riefki', 50000, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` enum('admin','warga') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `level`) VALUES
(9, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@mail.com', 'admin'),
(11, 'user', '202cb962ac59075b964b07152d234b70', 'user@mail.com', 'warga');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_warga`
--
ALTER TABLE `admin_warga`
  ADD PRIMARY KEY (`id_warga`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `humas_berita`
--
ALTER TABLE `humas_berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `humas_lapor`
--
ALTER TABLE `humas_lapor`
  ADD PRIMARY KEY (`id_lapor`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `keuangan_keluar`
--
ALTER TABLE `keuangan_keluar`
  ADD PRIMARY KEY (`id_uangkeluar`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `keuangan_masuk`
--
ALTER TABLE `keuangan_masuk`
  ADD PRIMARY KEY (`id_uangmasuk`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_warga`
--
ALTER TABLE `admin_warga`
  MODIFY `id_warga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `humas_berita`
--
ALTER TABLE `humas_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `humas_lapor`
--
ALTER TABLE `humas_lapor`
  MODIFY `id_lapor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `keuangan_keluar`
--
ALTER TABLE `keuangan_keluar`
  MODIFY `id_uangkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `keuangan_masuk`
--
ALTER TABLE `keuangan_masuk`
  MODIFY `id_uangmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin_warga`
--
ALTER TABLE `admin_warga`
  ADD CONSTRAINT `admin_warga_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `humas_berita`
--
ALTER TABLE `humas_berita`
  ADD CONSTRAINT `humas_berita_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `humas_lapor`
--
ALTER TABLE `humas_lapor`
  ADD CONSTRAINT `humas_lapor_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `keuangan_keluar`
--
ALTER TABLE `keuangan_keluar`
  ADD CONSTRAINT `keuangan_keluar_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `keuangan_masuk`
--
ALTER TABLE `keuangan_masuk`
  ADD CONSTRAINT `keuangan_masuk_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
