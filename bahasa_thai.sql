-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jul 2021 pada 03.35
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bahasa_thai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hasil_latihan`
--

CREATE TABLE `tbl_hasil_latihan` (
  `id_hasil` int(11) NOT NULL,
  `id_latihan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `list_soal` varchar(100) NOT NULL,
  `list_jawaban` varchar(100) NOT NULL,
  `jumlah_benar` int(11) NOT NULL,
  `jumlah_bobot` int(11) NOT NULL,
  `nilai_bobot` int(11) NOT NULL,
  `tgl_mulai` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_hasil_latihan`
--

INSERT INTO `tbl_hasil_latihan` (`id_hasil`, `id_latihan`, `id_user`, `list_soal`, `list_jawaban`, `jumlah_benar`, `jumlah_bobot`, `nilai_bobot`, `tgl_mulai`) VALUES
(3, 1, 4, '4', '4:B', 1, 2, 100, '2021-07-06 04:07:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kata`
--

CREATE TABLE `tbl_kata` (
  `id` int(10) NOT NULL,
  `suara` varchar(255) NOT NULL,
  `kata` varchar(1000) NOT NULL,
  `keterangan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kata`
--

INSERT INTO `tbl_kata` (`id`, `suara`, `kata`, `keterangan`) VALUES
(3, 'Allah_Allah_Aghisna_الله_الله_أغثنا_-_Nazwa_Maulidia_(Official_Music_Video)_(_128kbps_).mp3', 'bermain', 'bermain adalah kata yang baik'),
(4, 'Allah_Allah_Aghisna_الله_الله_أغثنا_-_Nazwa_Maulidia_(Official_Music_Video)_(_128kbps_).mp3', 'tes', 'aaaa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_konfigurasi`
--

CREATE TABLE `tbl_konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `nama_website` varchar(225) NOT NULL,
  `logo` varchar(225) NOT NULL,
  `favicon` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `facebook` varchar(225) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `keywords` varchar(225) NOT NULL,
  `metatext` varchar(225) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_konfigurasi`
--

INSERT INTO `tbl_konfigurasi` (`id_konfigurasi`, `nama_website`, `logo`, `favicon`, `email`, `no_telp`, `alamat`, `facebook`, `instagram`, `keywords`, `metatext`, `about`) VALUES
(2, 'Belajar Bahasa ', 'aa', 'aa', 'tes@email.com', '081234567890', 'Kalimantan', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_latihan`
--

CREATE TABLE `tbl_latihan` (
  `id_latihan` int(11) NOT NULL,
  `nama_latihan` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_latihan`
--

INSERT INTO `tbl_latihan` (`id_latihan`, `nama_latihan`, `deskripsi`) VALUES
(1, 'Latihan Membaca', 'latihan membaca huruf thailand dengan lancar ya'),
(9, 'tes', 'tes ass');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `name`, `description`) VALUES
(1, 'Administrator', 'Hak akses Administrator'),
(2, 'Member', 'Hak akses Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_soal`
--

CREATE TABLE `tbl_soal` (
  `id_soal` int(11) NOT NULL,
  `id_latihan` int(11) NOT NULL,
  `bobot` int(11) NOT NULL,
  `gambar_soal` varchar(100) DEFAULT NULL,
  `soal` varchar(5000) NOT NULL,
  `opsi_a` varchar(1000) NOT NULL,
  `opsi_b` varchar(1000) NOT NULL,
  `opsi_c` varchar(1000) NOT NULL,
  `opsi_d` varchar(1000) NOT NULL,
  `opsi_e` varchar(1000) NOT NULL,
  `jawaban` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_soal`
--

INSERT INTO `tbl_soal` (`id_soal`, `id_latihan`, `bobot`, `gambar_soal`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`) VALUES
(2, 9, 1, NULL, 'manakah yang jawabanya asd', 'asd', 'sd', 'da', 'ad', 'ad', 'A'),
(4, 1, 2, NULL, 'ds', 'b', 'b', 'b', 'b', 'b', 'B'),
(9, 9, 2, NULL, 'manakah yang ada huruf s doble', 'ass', 's', 'ss', 'ss', 'ss', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `password_reset_key` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `id_role`, `username`, `password`, `password_reset_key`, `first_name`, `last_name`, `email`, `phone`, `photo`, `activated`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '$2y$05$OA.OoeNHoEkbGGKazYqPU.UOaI5jmgro8x2pRSV56ClTWlDf0EEn2', '', 'ADMIN', 'BAHASA', 'admin@mail.com', '081906515912', '1615605692234.png', 1, '2021-07-05 13:59:22', '2020-03-14 21:58:17', NULL),
(4, 2, 'BISMIN', '$2y$05$fM75nSxXFKdcDoVZJGsxReU2HaxHoG6gL1wLAU8d4wz1zpx4cwG6y', NULL, 'BISMIN', 'SANGARI', 'member@mail.com', '082326229401', 'member.png', 1, '2021-07-05 16:21:14', '2021-03-13 11:13:36', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(10) NOT NULL,
  `judul_video` varchar(500) NOT NULL,
  `file` varchar(255) NOT NULL,
  `keterangan` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `judul_video`, `file`, `keterangan`) VALUES
(2, 'PSBB COVID', 'dilan.mp4', 'video josss');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_hasil_latihan`
--
ALTER TABLE `tbl_hasil_latihan`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_latihan` (`id_latihan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_kata`
--
ALTER TABLE `tbl_kata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_konfigurasi`
--
ALTER TABLE `tbl_konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indeks untuk tabel `tbl_latihan`
--
ALTER TABLE `tbl_latihan`
  ADD PRIMARY KEY (`id_latihan`);

--
-- Indeks untuk tabel `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `id_latihan` (`id_latihan`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_role`);

--
-- Indeks untuk tabel `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_hasil_latihan`
--
ALTER TABLE `tbl_hasil_latihan`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_kata`
--
ALTER TABLE `tbl_kata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_konfigurasi`
--
ALTER TABLE `tbl_konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_latihan`
--
ALTER TABLE `tbl_latihan`
  MODIFY `id_latihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_soal`
--
ALTER TABLE `tbl_soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_hasil_latihan`
--
ALTER TABLE `tbl_hasil_latihan`
  ADD CONSTRAINT `tbl_hasil_latihan_ibfk_1` FOREIGN KEY (`id_latihan`) REFERENCES `tbl_latihan` (`id_latihan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_hasil_latihan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD CONSTRAINT `tbl_soal_ibfk_1` FOREIGN KEY (`id_latihan`) REFERENCES `tbl_latihan` (`id_latihan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `tbl_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
