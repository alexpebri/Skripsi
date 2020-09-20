-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2020 at 07:37 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profile_matching_backup`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aspek`
--

CREATE TABLE `tbl_aspek` (
  `id_aspek` int(3) UNSIGNED NOT NULL,
  `nama_aspek` varchar(100) NOT NULL,
  `bobot` float NOT NULL,
  `bobot_core` float NOT NULL,
  `bobot_secondary` float NOT NULL,
  `nama_singkat` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_aspek`
--

INSERT INTO `tbl_aspek` (`id_aspek`, `nama_aspek`, `bobot`, `bobot_core`, `bobot_secondary`, `nama_singkat`) VALUES
(1, 'TES BERKAS', 30, 80, 20, 'B'),
(2, 'TES TULIS', 20, 60, 40, 'T'),
(3, 'TES INTERVIEW', 50, 60, 40, 'I');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bobot`
--

CREATE TABLE `tbl_bobot` (
  `selisih` tinyint(3) NOT NULL,
  `bobot` float NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bobot`
--

INSERT INTO `tbl_bobot` (`selisih`, `bobot`, `keterangan`) VALUES
(0, 5, 'Tidak ada  selisih (kompetensi,sesuai dgn yang dibutuhkan)'),
(1, 4.5, 'Kompetensi individu kelebihan 1 tingkat'),
(-1, 4, 'Kompetensi individu kekurangan 1 tingkat'),
(2, 3.5, 'Kompetensi individu kelebihan 2 tingkat'),
(-2, 3, 'Kompetensi individu kekurangan 2 tingkat'),
(3, 2.5, 'Kompetensi individu kelebihan 3 tingkat'),
(-3, 2, 'Kompetensi individu kekurangan 3 tingkat'),
(4, 1.5, 'Kompetensi individu kelebihan 4 tingkat'),
(-4, 1, 'Kompetensi individu kekurangan 4 tingkat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faktor`
--

CREATE TABLE `tbl_faktor` (
  `id_faktor` int(3) UNSIGNED NOT NULL,
  `aspek` tinyint(3) UNSIGNED NOT NULL COMMENT 'FK tbl_aspek',
  `nama_faktor` varchar(30) NOT NULL,
  `target` tinyint(3) NOT NULL,
  `jenis` enum('1','2') DEFAULT NULL COMMENT '1=Core;2=Secondary'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faktor`
--

INSERT INTO `tbl_faktor` (`id_faktor`, `aspek`, `nama_faktor`, `target`, `jenis`) VALUES
(7, 3, 'Interview HRD', 3, '2'),
(6, 3, 'Interview User', 4, '1'),
(5, 2, 'Tes Psikologi', 2, '2'),
(4, 2, 'Tes Matematika', 3, '1'),
(3, 1, 'Usia', 3, '2'),
(2, 1, 'Pendidikan', 3, '1'),
(1, 1, 'Pengalaman', 3, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `id_karyawan` int(3) UNSIGNED NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`id_karyawan`, `nama_karyawan`) VALUES
(11, 'ALEX');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sample`
--

CREATE TABLE `tbl_sample` (
  `id_sample` int(11) UNSIGNED NOT NULL,
  `karyawan` tinyint(3) UNSIGNED DEFAULT NULL,
  `faktor` tinyint(3) UNSIGNED DEFAULT NULL,
  `nilai` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sample`
--

INSERT INTO `tbl_sample` (`id_sample`, `karyawan`, `faktor`, `nilai`) VALUES
(231, 11, 7, 3),
(230, 11, 6, 3),
(229, 11, 5, 3),
(228, 11, 4, 3),
(227, 11, 3, 3),
(226, 11, 2, 3),
(225, 11, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `Level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `Level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'alex', 'Manager'),
(5, 'user', '202cb962ac59075b964b07152d234b70', 'User', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_aspek`
--
ALTER TABLE `tbl_aspek`
  ADD PRIMARY KEY (`id_aspek`);

--
-- Indexes for table `tbl_bobot`
--
ALTER TABLE `tbl_bobot`
  ADD PRIMARY KEY (`selisih`);

--
-- Indexes for table `tbl_faktor`
--
ALTER TABLE `tbl_faktor`
  ADD PRIMARY KEY (`id_faktor`);

--
-- Indexes for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `tbl_sample`
--
ALTER TABLE `tbl_sample`
  ADD PRIMARY KEY (`id_sample`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_aspek`
--
ALTER TABLE `tbl_aspek`
  MODIFY `id_aspek` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_faktor`
--
ALTER TABLE `tbl_faktor`
  MODIFY `id_faktor` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  MODIFY `id_karyawan` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_sample`
--
ALTER TABLE `tbl_sample`
  MODIFY `id_sample` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
