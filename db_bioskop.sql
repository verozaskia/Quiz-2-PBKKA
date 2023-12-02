-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 Mei 2017 pada 06.53
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bioskop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `password`, `foto`, `level`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', 'admin'),
(4, 'manager', '1d0258c2440a8d19e716292b231e3190', '', 'manager');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dtl_pemesan`
--

CREATE TABLE `dtl_pemesan` (
  `id_dtl_pemesan` int(11) NOT NULL,
  `kursi` int(11) NOT NULL,
  `id_tiket` varchar(11) NOT NULL,
  `id_pemesan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dtl_pemesan`
--

INSERT INTO `dtl_pemesan` (`id_dtl_pemesan`, `kursi`, `id_tiket`, `id_pemesan`) VALUES
(6, 1, '22', 'PMSN00001'),
(7, 1, '29', 'PMSN00001'),
(8, 2, '30', 'PMSN00002'),
(9, 2, '29', 'PMSN00003'),
(10, 3, '29', 'PMSN00003'),
(11, 33, '24', 'PMSN00004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `film`
--

CREATE TABLE `film` (
  `id_film` int(11) NOT NULL,
  `judul` varchar(40) NOT NULL,
  `genre` varchar(40) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `durasi` time NOT NULL,
  `id_jadwal` varchar(10) NOT NULL,
  `sinopsis` text NOT NULL,
  `score` int(11) NOT NULL,
  `rilis` year(4) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `film`
--

INSERT INTO `film` (`id_film`, `judul`, `genre`, `rating`, `durasi`, `id_jadwal`, `sinopsis`, `score`, `rilis`, `gambar`) VALUES
(1, 'The Rain Of Blood', 'Action, Advanture, Sci-Fi,Thiler', 'R', '01:23:00', '5', 'Tahun 2069 umat manusia mengali bencana dst.......', 7, 2016, 'rainblood.jpg'),
(2, 'The Law Of Ueki', 'Action, Matrial Art, Fantasy', 'PG', '01:47:00', '3', 'Cerita seorang remaja SMP yang bisa mengubah sampah menjadi Pohon\r\n', 6, 2006, 'ueki.jpg'),
(3, 'Force 2', 'Drama, Adventure, Family', 'PG-13', '01:34:00', '5', 'Presenting the official trailer of Force 2 starring John Abraham, Sonakshi Sinha and Tahir Raj Bhasin A film by Abhinay Deo, Produced by Vipul Amrutlal Shah, JA entertainment Pvt. Ltd....', 8, 2016, '11.jpg'),
(4, 'ZZZ', 'Adventure,Action', 'PG', '01:36:00', '7', 'ZZZZZZZZZZZZ DST\r\n', 7, 2017, 'coding.jpg'),
(5, 'VVV', 'Adventure,Action,Horror', 'R', '01:44:00', '6', 'VVVVVVVVVVVVVV DST', 6, 2015, 'Koala.jpg'),
(6, 'MMM', 'Adventure, Action, Fantasi', 'PG-13', '01:56:00', '8', 'MMMMMMMMM DST..........', 7, 2014, 'Jellyfish.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(10) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_berhenti` date NOT NULL,
  `id_sesi` varchar(10) NOT NULL,
  `id_ruang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `tgl_mulai`, `tgl_berhenti`, `id_sesi`, `id_ruang`) VALUES
(3, '2017-05-02', '2017-05-05', '1', '2'),
(5, '2017-05-03', '2017-05-03', '2', '2'),
(6, '2017-05-03', '2017-05-03', '1', '2'),
(7, '2017-05-03', '2017-05-03', '3', '2'),
(8, '2017-05-04', '2017-05-04', '1', '1'),
(9, '2017-05-04', '2017-05-04', '2', '1'),
(10, '2017-05-04', '2017-05-04', '1', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nama`, `email`, `password`, `jk`, `tgl_lahir`, `foto`) VALUES
(6, 'coba', 'coba@g.com', 'c3ec0f7b054e729c5a716c8125839829', 'Perempuan', '2017-05-21', ''),
(7, 'riski', 'riski@gmail.com', '6e24184c9f8092a67bcd413cbcf598da', 'Laki-laki', '2000-01-11', ''),
(8, 'gondo', 'gondo@gmail.com', '694b905e1db64bd6f2a0c0bbd7ef68cb', 'Laki-laki', '2000-09-11', ''),
(9, 'njo', 'njo@gmail.com', '38cdd14e4d6e4df3062688b02ec0b1a7', 'Laki-laki', '2000-11-21', ''),
(10, 'santi', 'santi@g.com', 'ae1d4b431ead52e5ee1788010e8ec110', 'Perempuan', '2000-02-18', ''),
(11, 'Majid', 'nurkholismajid@gmail', 'ff9df320d8d371096ae4cad297f599c6', 'Laki-laki', '2000-03-08', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesan`
--

CREATE TABLE `pemesan` (
  `id_pemesan` varchar(11) NOT NULL,
  `id_member` varchar(11) NOT NULL,
  `jml_tiket_pesan` int(11) NOT NULL,
  `total_harga` varchar(100) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesan`
--

INSERT INTO `pemesan` (`id_pemesan`, `id_member`, `jml_tiket_pesan`, `total_harga`, `tgl_pesan`, `status`) VALUES
('PMSN00001', '8', 2, '90000', '2017-05-22', 1),
('PMSN00002', '7', 1, '45000', '2017-05-22', 0),
('PMSN00003', '9', 2, '112000', '2017-05-22', 0),
('PMSN00004', '11', 1, '28000', '2017-05-22', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jm_kursi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `nama`, `jm_kursi`) VALUES
(1, 'A-1', 35),
(2, 'A-2', 33),
(3, 'A-3', 60),
(4, 'B-5', 44),
(5, 'B-1', 36),
(6, 'B-2', 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sesi`
--

CREATE TABLE `sesi` (
  `id_sesi` int(11) NOT NULL,
  `sesi` int(11) NOT NULL,
  `mulai` time NOT NULL,
  `selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sesi`
--

INSERT INTO `sesi` (`id_sesi`, `sesi`, `mulai`, `selesai`) VALUES
(1, 1, '08:00:00', '10:00:00'),
(2, 2, '10:15:00', '12:15:00'),
(3, 3, '13:00:00', '16:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `id_film` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `harga`, `stok`, `id_film`) VALUES
(22, '34000', 125, '1'),
(24, '28000', 90, '2'),
(29, '56000', 50, '3'),
(30, '45000', 80, '4'),
(31, '43000', 60, '5'),
(32, '30000', 30, '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `dtl_pemesan`
--
ALTER TABLE `dtl_pemesan`
  ADD PRIMARY KEY (`id_dtl_pemesan`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `pemesan`
--
ALTER TABLE `pemesan`
  ADD PRIMARY KEY (`id_pemesan`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indexes for table `sesi`
--
ALTER TABLE `sesi`
  ADD PRIMARY KEY (`id_sesi`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dtl_pemesan`
--
ALTER TABLE `dtl_pemesan`
  MODIFY `id_dtl_pemesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sesi`
--
ALTER TABLE `sesi`
  MODIFY `id_sesi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
