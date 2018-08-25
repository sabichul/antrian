-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2018 at 04:27 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antrian`
--

-- --------------------------------------------------------

--
-- Table structure for table `antrian_administrasi_save`
--

CREATE TABLE `antrian_administrasi_save` (
  `id` int(11) NOT NULL,
  `nomor_antrian` int(100) NOT NULL,
  `nama` varchar(100) COLLATE utf8_bin NOT NULL,
  `jenis_kelamin` varchar(100) COLLATE utf8_bin NOT NULL,
  `no_telpon` int(100) NOT NULL,
  `created` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_by` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `antrian_administrasi_save`
--

INSERT INTO `antrian_administrasi_save` (`id`, `nomor_antrian`, `nama`, `jenis_kelamin`, `no_telpon`, `created`, `created_by`) VALUES
(1, 1, 'Sabihul Anwary', 'LAKI-LAKI', 2147483647, '2018-08-12 11:10:53', '1');

-- --------------------------------------------------------

--
-- Table structure for table `antrian_transaksi_save`
--

CREATE TABLE `antrian_transaksi_save` (
  `id` int(11) NOT NULL,
  `nomor_antrian` int(100) NOT NULL,
  `nama` varchar(100) COLLATE utf8_bin NOT NULL,
  `jenis_kelamin` varchar(100) COLLATE utf8_bin NOT NULL,
  `no_telpon` int(100) NOT NULL,
  `created` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_by` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `antrian_transaksi_save`
--

INSERT INTO `antrian_transaksi_save` (`id`, `nomor_antrian`, `nama`, `jenis_kelamin`, `no_telpon`, `created`, `created_by`) VALUES
(2, 14, 'Sabihul Anwary', 'PEREMPUAN', 2147483647, '2018-08-12 11:09:21', '1');

-- --------------------------------------------------------

--
-- Table structure for table `loket`
--

CREATE TABLE `loket` (
  `id` int(12) NOT NULL,
  `no_loket` int(12) NOT NULL,
  `nama_loket` varchar(100) COLLATE utf8_bin NOT NULL,
  `aktif` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `loket`
--

INSERT INTO `loket` (`id`, `no_loket`, `nama_loket`, `aktif`) VALUES
(1, 1, 'TRANSAKSI', 1),
(2, 2, 'ADMINISTRASI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `url` varchar(100) COLLATE utf8_bin NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `enable` varchar(100) COLLATE utf8_bin NOT NULL,
  `parent_id` varchar(100) COLLATE utf8_bin NOT NULL,
  `lft` varchar(100) COLLATE utf8_bin NOT NULL,
  `created` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_by` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `running_text`
--

CREATE TABLE `running_text` (
  `id` int(12) NOT NULL,
  `isi_text` varchar(1000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `running_text`
--

INSERT INTO `running_text` (`id`, `isi_text`) VALUES
(1, 'JANGAN LUPA MAKAN !!!');

-- --------------------------------------------------------

--
-- Table structure for table `temp_administrasi`
--

CREATE TABLE `temp_administrasi` (
  `id` int(11) NOT NULL DEFAULT '1',
  `nomor_antrian` int(12) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `temp_administrasi`
--

INSERT INTO `temp_administrasi` (`id`, `nomor_antrian`, `time`) VALUES
(1, 2, '2018-08-12 17:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `temp_transaksi`
--

CREATE TABLE `temp_transaksi` (
  `id` int(12) NOT NULL,
  `nomor_antrian` int(12) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `temp_transaksi`
--

INSERT INTO `temp_transaksi` (`id`, `nomor_antrian`, `time`) VALUES
(1, 1, '2018-08-12 17:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL,
  `USERNAME` varchar(100) COLLATE utf8_bin NOT NULL,
  `PASSWORD` varchar(100) COLLATE utf8_bin NOT NULL,
  `NIP` varchar(100) COLLATE utf8_bin NOT NULL,
  `NAMA_LENGKAP` varchar(100) COLLATE utf8_bin NOT NULL,
  `JENIS_KELAMIN_ID` varchar(100) COLLATE utf8_bin NOT NULL,
  `TEMPAT_LAHIR` varchar(100) COLLATE utf8_bin NOT NULL,
  `TGL_LAHIR` date NOT NULL,
  `FOTO` varchar(100) COLLATE utf8_bin NOT NULL,
  `ALAMAT` varchar(1000) COLLATE utf8_bin NOT NULL,
  `TELPON` int(100) NOT NULL,
  `LEVEL_ID` varchar(100) COLLATE utf8_bin NOT NULL,
  `BLOKIR` varchar(100) COLLATE utf8_bin NOT NULL,
  `CREATED` date NOT NULL,
  `CREATED_BY` varchar(100) COLLATE utf8_bin NOT NULL,
  `MODIFIED` date NOT NULL,
  `MODIFIED_BY` varchar(100) COLLATE utf8_bin NOT NULL,
  `ID_SESSION` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `USERNAME`, `PASSWORD`, `NIP`, `NAMA_LENGKAP`, `JENIS_KELAMIN_ID`, `TEMPAT_LAHIR`, `TGL_LAHIR`, `FOTO`, `ALAMAT`, `TELPON`, `LEVEL_ID`, `BLOKIR`, `CREATED`, `CREATED_BY`, `MODIFIED`, `MODIFIED_BY`, `ID_SESSION`) VALUES
(1, 'admin', 'admin', '2013470081', 'SABIHUL ANWARY', 'Laki-laki', 'JAKARTA', '1994-10-26', '8guard-icon.png', 'JL. MANGGA DUA', 896362476, 'admin', '0', '0000-00-00', 'SABICHUL', '0000-00-00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(12) NOT NULL,
  `judul` varchar(100) COLLATE utf8_bin NOT NULL,
  `nama_file` varchar(100) COLLATE utf8_bin NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `judul`, `nama_file`, `tgl_posting`) VALUES
(1, 'Kunto Aji', 'Kunto Aji - Terlalu Lama Sendiri.mp4', '2018-08-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antrian_administrasi_save`
--
ALTER TABLE `antrian_administrasi_save`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antrian_transaksi_save`
--
ALTER TABLE `antrian_transaksi_save`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loket`
--
ALTER TABLE `loket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `running_text`
--
ALTER TABLE `running_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_administrasi`
--
ALTER TABLE `temp_administrasi`
  ADD PRIMARY KEY (`nomor_antrian`);

--
-- Indexes for table `temp_transaksi`
--
ALTER TABLE `temp_transaksi`
  ADD PRIMARY KEY (`nomor_antrian`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `antrian_administrasi_save`
--
ALTER TABLE `antrian_administrasi_save`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `antrian_transaksi_save`
--
ALTER TABLE `antrian_transaksi_save`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loket`
--
ALTER TABLE `loket`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `running_text`
--
ALTER TABLE `running_text`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
