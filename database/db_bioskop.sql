-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 02:37 AM
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
-- Database: `db_bioskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `password`, `foto`, `level`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', 'admin'),
(4, 'manager', '1d0258c2440a8d19e716292b231e3190', '', 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `dtl_pemesan`
--

CREATE TABLE `dtl_pemesan` (
  `id_dtl_pemesan` int(11) NOT NULL,
  `kursi` int(11) NOT NULL,
  `id_tiket` varchar(11) NOT NULL,
  `id_pemesan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dtl_pemesan`
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
-- Table structure for table `film`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id_film`, `judul`, `genre`, `rating`, `durasi`, `id_jadwal`, `sinopsis`, `score`, `rilis`, `gambar`) VALUES
(1, 'THE HUNGER GAMES: THE BALLAD OF SONGBIRD', 'Action, Advanture, Sci-Fi,Thiler', 'R', '02:37:00', '5', 'Berlatar 64 tahun sebelum adanya The Hunger Games di negeri Panem. Coriolanus Snow (Tom Blyth) mendapat tugas untuk menjadi mentor dari Lucy (Rachel Zegler), peserta wanita dari distrik 12 dalam sebuah acara tahunan Hunger Games ke-10. Sadar muridnya punya sifat pemberontak, Snow merencanakan hal tersembunyi dan kisah asal mula ia menjadi pemimpin panem yang kejam.', 7, '2023', 'hunger.jpg'),
(2, 'The Marvels', 'Action, Matrial Art, Fantasy', 'PG', '01:45:00', '3', 'Kekuatan Captain Marvel (Brie Larson) ternyata terhubung dengan Ms. Marvel (Iman Vellani) dan Monica Rambeau (Teyonah Parris). Hal ini membuat ketiganya terus menerus bertukar tempat. Mereka akhirnya bertemu dan mencari tahu kenapa kekuatan mereka saling terkoneksi. Dengan ancaman baru yang datang, ketiganya memutuskan menjadi satu tim untuk menyelamatkan alam semesta sebagai The Marvels.', 6, '2023', 'marvel.jpg'),
(3, 'THE TUNNEL TO SUMMER, THE EXIT OF GOODBY', 'Animasi, Fantasy, Romance, School, Adven', 'PG-13', '01:23:00', '5', 'Berdasarkan novel pemenang penghargaan. Pemenang Paul Grimault Prize di Annecy Festival 2023.\r\n\r\nSebuah terowongan misterius dapat mengabulkan permintaanmu…tapi dengan konsekuensi. Seorang anak SMA bernama Kaoru, dihantui oleh masa lalu yang bermasalah, bersama dengan Anzu, perempuan yang bertarung dengan kewajibannya dan meninggalkan mimpinya, untuk menginvestigasi terowongan itu. Tapi harga yang harus dibayar dari keinginan mereka terlalu tinggi. Ini adalah cerita nostalgia tentang musim panas yang tak terlupakan, tentang cinta dan waktu', 8, '2023', 'tunnel.jpg'),
(4, 'TIGER 3', 'Adventure, Action, Thriller', 'PG', '02:36:00', '7', 'Tiger (Salman Khan) dan Zoya (Katrina Kaif) kembali untuk menyelamatkan negara dan keluarga mereka. Kali ini bersifat pribadi! Setelah peristiwa Tiger Zinda Hai, War, dan Pathaan, Avinash Singh Rathore alias Tiger dicap sebagai pengkhianat, di mana ia menghadapi rintangan yang mengancam nyawa untuk membersihkan namanya dan keluarganya.', 7, '2023', 'tiger.jpg'),
(5, 'WISH', 'Animasi, Musical, Comedy', 'R', '01:35:00', '6', 'Wish akan mengikuti Asha (Ariana DeBose) gadis muda berusia 17 tahun yang memiliki peliharaan kambing bernama Valentino. Suatu malam Asha menyampaikan harapannya kepada bintang. Hal tak terduga terjadi saat bintang menggemaskan menghampiri Asha dan membawa keajaiban.\r\n\r\nAsha dan Valentino memulai petualangannya ke seluruh negeri wilayah kerajaan Rosas untuk mewujudkan keinginan-keinginannya. Tapi takdir membawanya berhadapan dengan Raja Magnifico (Chris Pine) untuk berjuang demi masa depan yang indah.', 6, '2023', 'wish.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(10) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_berhenti` date NOT NULL,
  `id_sesi` varchar(10) NOT NULL,
  `id_ruang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jadwal`
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
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `member`
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
-- Table structure for table `pemesan`
--

CREATE TABLE `pemesan` (
  `id_pemesan` varchar(11) NOT NULL,
  `id_member` varchar(11) NOT NULL,
  `jml_tiket_pesan` int(11) NOT NULL,
  `total_harga` varchar(100) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pemesan`
--

INSERT INTO `pemesan` (`id_pemesan`, `id_member`, `jml_tiket_pesan`, `total_harga`, `tgl_pesan`, `status`) VALUES
('PMSN00001', '8', 2, '90000', '2017-05-22', 1),
('PMSN00002', '7', 1, '45000', '2017-05-22', 0),
('PMSN00003', '9', 2, '112000', '2017-05-22', 0),
('PMSN00004', '11', 1, '28000', '2017-05-22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jm_kursi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ruang`
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
-- Table structure for table `sesi`
--

CREATE TABLE `sesi` (
  `id_sesi` int(11) NOT NULL,
  `sesi` int(11) NOT NULL,
  `mulai` time NOT NULL,
  `selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sesi`
--

INSERT INTO `sesi` (`id_sesi`, `sesi`, `mulai`, `selesai`) VALUES
(1, 1, '08:00:00', '10:00:00'),
(2, 2, '10:15:00', '12:15:00'),
(3, 3, '13:00:00', '16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `id_film` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tiket`
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
