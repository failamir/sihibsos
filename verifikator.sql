-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 04:25 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verifikator`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `detail_waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `no_berkas` varchar(25) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_pengaju` int(5) NOT NULL,
  `pengaju` varchar(25) NOT NULL,
  `verifikator` varchar(25) DEFAULT NULL,
  `kategori` varchar(25) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `dokumen` varchar(225) DEFAULT NULL,
  `dokumen1` varchar(100) DEFAULT NULL,
  `dokumen2` varchar(100) DEFAULT NULL,
  `revisi` varchar(150) DEFAULT NULL,
  `keterangan` varchar(150) DEFAULT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `Nominal_Pengajuan` varchar(25) NOT NULL,
  `Nominal_Persetujuan` varchar(25) DEFAULT NULL,
  `Kategori_fisik` enum('barang','uang','','') DEFAULT NULL,
  `status_persetujuan` varchar(35) NOT NULL,
  `tahun` int(4) NOT NULL,
  `tahap1` varchar(25) NOT NULL,
  `tahap2` varchar(25) NOT NULL,
  `tahap3` varchar(25) NOT NULL,
  `tahap4` varchar(25) NOT NULL,
  `tahap5` varchar(25) NOT NULL,
  `tahap6` varchar(25) NOT NULL,
  `tahap7` varchar(25) NOT NULL,
  `tahap8` varchar(25) NOT NULL,
  `tahap9` varchar(25) NOT NULL,
  `status_penyerahan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `no_berkas`, `judul`, `id_pengaju`, `pengaju`, `verifikator`, `kategori`, `status`, `dokumen`, `dokumen1`, `dokumen2`, `revisi`, `keterangan`, `tgl_masuk`, `tgl_selesai`, `Nominal_Pengajuan`, `Nominal_Persetujuan`, `Kategori_fisik`, `status_persetujuan`, `tahun`, `tahap1`, `tahap2`, `tahap3`, `tahap4`, `tahap5`, `tahap6`, `tahap7`, `tahap8`, `tahap9`, `status_penyerahan`) VALUES
(1, '12.34.56.7', 'penyambutan presiden turki', 2, 'failamir', 'failamir', '', '1', '132-465-1-PB1.pdf', '20170320_OrganisasiBerkasSekuensial1.pdf', 'jbptunikompp-gdl-aepsaepudi-36390-4-unikom_a-v1.pdf', NULL, 'operasional', '2019-06-10', NULL, '7000000', NULL, NULL, '', 2020, 'failamir', '', '', '', '', '', '', '', '', ''),
(2, '12.34.56.78', 'perayaan menyambut ramadhan', 20, 'ilham', 'ilham', '', '1', 'jbptunikompp-gdl-dickyteguh-36387-3-unikom_d-5.pdf', NULL, NULL, NULL, 'seremonial', '2019-06-11', NULL, '13000000', NULL, NULL, '', 2021, 'ilham', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'Pengguna Biasa'),
(3, 'BAGUMSETDA', 'Bagian Umum Sekretariat Daerah'),
(4, 'SKPD', 'Satuan Kerja Perangkat Daerah'),
(5, 'TimPertimbangan', 'Tim Pertimbangan TAPD'),
(6, 'Bupati', 'Bupati Banjarnegara'),
(7, 'TAPD', 'Tim Anggaran Pemerintah Daerah'),
(8, 'BPPKAD', 'Badan Pengelola Pengeluaran Keuangan Anggaran Daerah'),
(9, 'Dinas_Indagkop_UKM', 'Dinas Indagkop dan UKM'),
(10, 'Dinas_Kesehatan', 'Dinas Kesehatan'),
(11, 'DinasPertanianPerika', 'Dinas Pertanian dan Perikanan'),
(12, 'Dinas_PKP_LH', 'Dinas PKP dan LH'),
(13, 'DinasPariwisataKebud', 'Dinas Pariwisata dan Kebudayaan'),
(14, 'DinasPendidikanPemud', 'Dinas Pendidikan Pemuda dan Olah Raga'),
(15, 'DinasPendidikanTKPau', 'Dinas Pendidikan TK dan PAUD'),
(16, 'DinasPendidikanSMPMt', 'Dinas Pendidikan SMP Mts'),
(17, 'Kesbangpolinmas', 'Kantor Kesbangpolinmas'),
(18, 'KesraSetda', 'Kementrian Sarana Sekretariat Daerah'),
(19, 'Dinas_Sosial', 'Dinas Sosial'),
(20, 'OPD', 'Organisasi Perangkat Daerah');

-- --------------------------------------------------------

--
-- Table structure for table `history_file`
--

CREATE TABLE `history_file` (
  `id` int(11) NOT NULL,
  `id_berkas` int(50) NOT NULL,
  `nomor` varchar(50) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `pengaju` varchar(100) NOT NULL,
  `status` varchar(2) NOT NULL,
  `tgl_masuk` varchar(25) DEFAULT NULL,
  `tgl_selesai` varchar(25) NOT NULL,
  `nominal` varchar(25) NOT NULL,
  `di_setujui` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `no_berkas` varchar(25) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi_web`
--

CREATE TABLE `konfigurasi_web` (
  `id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `active_pengajuan` int(11) NOT NULL,
  `total_dana` int(11) NOT NULL,
  `tema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `revisi_foto`
--

CREATE TABLE `revisi_foto` (
  `id` int(11) NOT NULL,
  `no_berkas` varchar(25) NOT NULL,
  `yg_direvisi` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `keterangan` varchar(225) DEFAULT NULL,
  `no_company` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `legalitas` varchar(15) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `sudah_mengajukan` int(1) DEFAULT NULL,
  `fisik_file` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `keterangan`, `no_company`, `company`, `phone`, `alamat`, `legalitas`, `foto`, `sudah_mengajukan`, `fisik_file`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$TWoCks1zFk1D42VjZaIfzu4iasriV.k6W3cjv2laxYDqHpSI5VBn.', 'admin@sihibsos.go.id', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1560244098, 1, 'Admin', 'istrator', '', '', 'ADMIN', '+62 813 2805 8223', '', '', '', 0, 0),
(2, '127.0.0.1', 'fail@amir.kece', '$2y$10$l9rSmfkjDUsqL2goc.aQW.a/0XhSw1iL3/FvlJ2BWiBp1Zd.ht1Ny', 'fail@amir.kece', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560100391, 1560231495, 1, 'failamir', 'abdullah', NULL, NULL, 'Asuransi Takaful Indonesia Syariah', '083148263597', NULL, NULL, NULL, 1, NULL),
(3, '::1', 'timpertimbangan@sihibsos.go.id', '$2y$10$doN8r1save1n/FmStYjhfOe7wkqKWIyufkJUKAJXcpvzJRCt64dS2', 'timpertimbangan@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560165785, 1560165927, 1, 'Tim Pertimbangan', 'Sihibsos', NULL, NULL, 'Sihibsos', '0', NULL, NULL, NULL, NULL, NULL),
(4, '::1', 'kesrasetda@sihibsos.go.id', '$2y$10$/NlWxuK.MlmRpNI/7UOk6emyH91ApUyokS.n7LzFGiirzwKXdsxpq', 'kesrasetda@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560185149, NULL, 1, 'kesrasetda', 'Bagian Kesra Setda', NULL, NULL, 'kesrasetda', '0', NULL, NULL, NULL, NULL, NULL),
(5, '::1', 'dinasindagkopukm@sihibsos.go.id', '$2y$10$5FFg11l7sBwBFkEOgb4ureh1g/2hLuI1vXWNHXpZlvzJtLyBWgZQW', 'dinasindagkopukm@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560185685, NULL, 1, 'Dinas Indagkop dan UKM', 'Dinas Indagkop dan UKM', NULL, NULL, 'dinasindagkopukm', '081328058223', NULL, NULL, NULL, NULL, NULL),
(6, '::1', 'dinaskesehatan@sihibsos.go.id', '$2y$10$0YlaFtvT2ztDrMM9FGPQlO0DQ12Q4.q1FCANiaAmL0cx3BqTw5Mcy', 'dinaskesehatan@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560200798, NULL, 1, 'dinaskesehatan', 'dinas kesehatan', NULL, NULL, 'dinaskesehatan', '081328058223', NULL, NULL, NULL, NULL, NULL),
(7, '::1', 'dinaspertanianperikanan@sihibsos.go.id', '$2y$10$JY2uXhbys24fvzFyCJi7j.A7ALMOI1kQDoMwo2pECctSaxjJu7RMC', 'dinaspertanianperikanan@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560201255, NULL, 1, 'dinaspertanian', 'dan perikanan', NULL, NULL, 'dinaspertanianperikanan', '081328058223', NULL, NULL, NULL, NULL, NULL),
(8, '::1', 'dinassosial@sihibsos.go.id', '$2y$10$2Yy78tRuZCOQFo8L.KmdouB3b9XlrpffFjWB5cb6eXy4wQje7ytJW', 'dinassosial@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560201394, NULL, 1, 'dinassosial', 'dinas sosial', NULL, NULL, 'dinassosial', '081328058223', NULL, NULL, NULL, NULL, NULL),
(9, '::1', 'bagumsetda@sihibsos.go.id', '$2y$10$38w9XLSjEZP5ayy9S9DgO.Dc39B5QjIi7cPt5ymj1vMKDJIPMJ4Um', 'bagumsetda@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560201470, 1560260239, 1, 'bagumsetda', 'bagumsetda', NULL, NULL, 'bagumsetda', '081328058223', NULL, NULL, NULL, NULL, NULL),
(10, '::1', 'bupati@sihibsos.go.id', '$2y$10$FF3u57n/vaKItKV8NG9oXOXymjsM460odLO..WYK1hOdvCz0n0RMu', 'bupati@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560201528, NULL, 1, 'Bupati Banjarnegara', 'bupati', NULL, NULL, 'bupati', '081328058223', NULL, NULL, NULL, NULL, NULL),
(11, '::1', 'skpd@sihibsos.go.id', '$2y$10$1ADdLp1SBTHmwv3vjXbfrOuIFs2bDtijk7Z2cUezifEBLTxq/M0gy', 'skpd@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560201717, NULL, 1, 'skpd', 'skpd', NULL, NULL, 'skpd', '081328058223', NULL, NULL, NULL, NULL, NULL),
(12, '::1', 'tapd@sihibsos.go.id', '$2y$10$coMfjDrLAfBdK.iUc1MHIe0EaynaKUp.wdlrEtF8j9DKgBhZVuTLe', 'tapd@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560201837, NULL, 1, 'tapd', 'sihibsos', NULL, NULL, 'tapd', '081328058223', NULL, NULL, NULL, NULL, NULL),
(13, '::1', 'kesbangpolinmas@sihibsos.go.id', '$2y$10$D1zoHOenXqJqaOD8t9wWI.zXGpRZwxh8hRXY2Xpy47nCFXIH00Va6', 'kesbangpolinmas@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560202364, NULL, 1, 'Kesbangpolinmas', 'Kesbangpolinmas', NULL, NULL, 'Kesbangpolinmas', '081328058223', NULL, NULL, NULL, NULL, NULL),
(14, '127.0.0.1', 'opd@sihibsos.go.id', '$2y$10$lIaBgS9Dyoku2eS9AsOKq.Koe1rIRpU14DcsVFaxREU7KsuD3hfPm', 'opd@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560231897, NULL, 1, 'OPD', 'opd', 'opd', '101', 'OPD', '081328058223', NULL, 'Badan', NULL, NULL, NULL),
(15, '127.0.0.1', 'dinaspendidikanpemuda@sihibsos.go.id', '$2y$10$Wu5vIoM.TpCQi7XN52DtJeC5j7mRSoQY5b4W5i.H2Mlcm/LYhQbrm', 'dinaspendidikanpemuda@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560232033, NULL, 1, 'dinas pendidikan', 'pemuda', 'dinaspendidikanpemuda@sihibsos.go.id', '101', 'dinaspendidikanpemuda', '081328058223', NULL, 'Badan', NULL, NULL, NULL),
(16, '127.0.0.1', 'dinaspariwisatakebudayaan@sihibsos.go.id', '$2y$10$ytkWsEU3lW6CV8lFyi7In..p7n845pwqi/3cOpEXNtll/RZWC78Wy', 'dinaspariwisatakebudayaan@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560232164, NULL, 1, 'DinasPariwisata', 'Kebudayaan', 'dinaspariwisatakebudayaan@sihibsos.go.id', '101', 'DinasPariwisataKebudayaan', '081328058223', NULL, 'Badan', NULL, NULL, NULL),
(17, '127.0.0.1', 'dinaspkplh@sihibsos.go.id', '$2y$10$BMJUonBVnwFLVwcgEVfKGOD9K5aB5noB7.VvOEOPt6swMc0osVDKS', 'dinaspkplh@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560232271, NULL, 1, 'Dinas PKP dan LH', 'Dinas_PKP_LH', 'dinaspkplh@sihibsos.go.id', '101', 'Dinas PKP dan LH', '081328058223', NULL, 'Badan', NULL, NULL, NULL),
(18, '127.0.0.1', 'dinaspendidikantkpaud@sihibsos.go.id', '$2y$10$BngnXU9BN7ZE59Gjatq1uON2AOiiIAx4L1XQV2Bev4ZFmEtp9Q/9C', 'dinaspendidikantkpaud@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560232481, NULL, 1, 'Dinas Pendidikan', 'TK Paud', 'dinaspendidikantkpaud@sihibsos.go.id', '101', 'Dinas Pendidikan TK Paud', '081328058223', NULL, 'Badan', NULL, NULL, NULL),
(19, '127.0.0.1', 'dinaspendidikansmpmts@sihibsos.go.id', '$2y$10$XSAtRMcJ4xfl4WQPEKBShuPs9j0ucIn8LQdLkEByUZ9KTWyFtEDEu', 'dinaspendidikansmpmts@sihibsos.go.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560232573, NULL, 1, 'Dinas Pendidikan', 'SMP Mts', 'dinaspendidikansmpmts@sihibsos.go.id', '101', 'Dinas Pendidikan SMP MTs', '081328058223', NULL, 'Badan', NULL, NULL, NULL),
(20, '127.0.0.1', 'ilham@naufal.kece', '$2y$10$VskTNt75T.BvQGp3g2ZLF.bFv5ztq7uPjwZWeLUTtmKfBv7IXtGmi', 'ilham@naufal.kece', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560242759, 1560244196, 1, 'ilham', 'naufal', NULL, NULL, 'dinas pembangunan daerah', '083148263597', NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(4, 2, 2),
(6, 3, 5),
(24, 4, 18),
(20, 5, 9),
(21, 6, 10),
(22, 7, 11),
(23, 8, 19),
(18, 9, 3),
(19, 10, 6),
(17, 11, 4),
(16, 12, 7),
(26, 13, 17),
(27, 14, 2),
(28, 15, 2),
(29, 16, 2),
(30, 17, 2),
(31, 18, 2),
(32, 19, 2),
(34, 20, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_file`
--
ALTER TABLE `history_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfigurasi_web`
--
ALTER TABLE `konfigurasi_web`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisi_foto`
--
ALTER TABLE `revisi_foto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `history_file`
--
ALTER TABLE `history_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konfigurasi_web`
--
ALTER TABLE `konfigurasi_web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revisi_foto`
--
ALTER TABLE `revisi_foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
