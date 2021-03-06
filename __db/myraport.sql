-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 21 Bulan Mei 2022 pada 16.14
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myraport`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_admin`
--

CREATE TABLE `m_admin` (
  `id` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa') NOT NULL,
  `konid` varchar(10) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `konid`, `aktif`) VALUES
(1, 'admin', '010438e6515e45aeaea0ac5303dbf9c2806eb0d0', 'admin', '0', 'Y'),
(44, 'eny', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '5', 'Y'),
(47, 'agung', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '1', 'Y'),
(48, 'budi', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '2', 'Y'),
(49, 'catur', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '3', 'Y'),
(50, 'dewi', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '4', 'Y'),
(51, '101', 'db7710e32c8620938e588f75460f1b736cfb24ab', 'siswa', '338', 'Y'),
(54, 'hkuria', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '6', 'Y'),
(55, 'hafid', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '7', 'Y'),
(56, 'septie', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '8', 'Y'),
(58, 'hafid_1', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '9', 'Y'),
(59, 'muhamm', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '10', 'Y'),
(60, '1', '9c1c01dc3ac1445a500251fc34a15d3e75a849df', 'siswa', '508', 'Y'),
(61, 'indria', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '11', 'Y'),
(62, '10', 'f270819294d6d015758421bdcb1202fd353c6f06', 'siswa', '517', 'Y'),
(63, '11', '44d5e79ea84d4c1c0c60c95cf554e94cf17f2afd', 'siswa', '518', 'Y'),
(64, '12', '757365867fcbc5a8da0a635517b6891e98ae767f', 'siswa', '519', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_ekstra`
--

CREATE TABLE `m_ekstra` (
  `id` int(2) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_ekstra`
--

INSERT INTO `m_ekstra` (`id`, `nama`) VALUES
(10, 'Mengaji'),
(11, 'Hafalan Surah Pendek'),
(12, 'Senam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_guru`
--

CREATE TABLE `m_guru` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `is_bk` enum('2','1') DEFAULT NULL,
  `stat_data` enum('A','P','M') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_guru`
--

INSERT INTO `m_guru` (`id`, `nama`, `nip`, `jk`, `is_bk`, `stat_data`) VALUES
(8, 'Septi Ellis Tari, S. Pd.', '1001', NULL, '2', 'A'),
(9, 'Hafid', '1002', NULL, '2', 'A'),
(10, 'Muhammad Uwais, S.Pd', '123', NULL, '2', 'A'),
(11, 'Indrianti', '321', NULL, '2', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kelas`
--

CREATE TABLE `m_kelas` (
  `id` int(3) NOT NULL,
  `tingkat` int(11) DEFAULT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_kelas`
--

INSERT INTO `m_kelas` (`id`, `tingkat`, `nama`) VALUES
(1, 1, 'I'),
(2, 2, 'II'),
(3, 3, 'III'),
(4, 4, 'IV'),
(6, 5, 'V'),
(7, 6, 'VI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_mapel`
--

CREATE TABLE `m_mapel` (
  `id` int(3) NOT NULL,
  `kelompok` enum('A','B') NOT NULL,
  `tambahan_sub` enum('NO','PAI','MULOK') NOT NULL,
  `kd_singkat` varchar(5) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `kkm` int(2) NOT NULL,
  `is_sikap` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `kelompok`, `tambahan_sub`, `kd_singkat`, `nama`, `kkm`, `is_sikap`) VALUES
(1, 'A', 'PAI', 'QH', 'Al-Quran Hadis', 75, '1'),
(2, 'A', 'PAI', 'AA', 'Akidah Akhlak', 70, '1'),
(3, 'A', 'PAI', 'FQ', 'Fiqih', 70, '1'),
(5, 'A', 'NO', 'PKN', 'Pendidikan Pancasila dan Kewarganegaraan', 70, '1'),
(6, 'A', 'NO', 'B.IND', 'Bahasa Indonesia', 75, '0'),
(7, 'A', 'NO', 'B.ARB', 'Bahasa Arab', 65, '0'),
(8, 'A', 'NO', 'MTK', 'Matematika', 65, '0'),
(12, 'B', 'NO', 'SBUD', 'Seni Budaya dan Prakarya', 80, '0'),
(13, 'B', 'NO', 'PJKES', 'Pendidikan Jasmani, Olahraga, dan Kesehatan', 67, '0'),
(15, 'B', 'MULOK', 'PLH', 'Pendidikan Lingkungan Hidup', 65, '0'),
(19, 'B', 'MULOK', 'B.ING', 'Bahasa Inggris', 60, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_siswa`
--

CREATE TABLE `m_siswa` (
  `id` int(6) NOT NULL,
  `nis` varchar(10) NOT NULL DEFAULT '0',
  `nisn` varchar(10) NOT NULL DEFAULT '0',
  `nama` varchar(100) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `status` varchar(2) NOT NULL,
  `anakke` int(2) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `notelp` varchar(13) NOT NULL,
  `sek_asal` varchar(30) NOT NULL,
  `sek_asal_alamat` varchar(50) NOT NULL,
  `diterima_kelas` varchar(5) NOT NULL,
  `diterima_tgl` date NOT NULL,
  `diterima_smt` varchar(2) NOT NULL,
  `ijazah_no` varchar(50) NOT NULL,
  `ijazah_thn` varchar(4) NOT NULL,
  `skhun_no` varchar(50) NOT NULL,
  `skhun_thn` varchar(4) NOT NULL,
  `ortu_ayah` varchar(50) NOT NULL,
  `ortu_ibu` varchar(50) NOT NULL,
  `ortu_alamat` varchar(50) NOT NULL,
  `ortu_notelp` varchar(13) NOT NULL,
  `ortu_ayah_pkj` varchar(30) NOT NULL,
  `ortu_ibu_pkj` varchar(30) NOT NULL,
  `wali` varchar(20) NOT NULL,
  `wali_alamat` varchar(50) NOT NULL,
  `notelp_rumah` varchar(13) NOT NULL,
  `wali_pkj` varchar(13) NOT NULL,
  `inputID` int(2) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stat_data` enum('A','K','M','L') NOT NULL,
  `foto` varchar(100) NOT NULL,
  `qr_code` varchar(200) DEFAULT NULL,
  `tgl_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nis`, `nisn`, `nama`, `jk`, `tmp_lahir`, `tgl_lahir`, `agama`, `status`, `anakke`, `alamat`, `notelp`, `sek_asal`, `sek_asal_alamat`, `diterima_kelas`, `diterima_tgl`, `diterima_smt`, `ijazah_no`, `ijazah_thn`, `skhun_no`, `skhun_thn`, `ortu_ayah`, `ortu_ibu`, `ortu_alamat`, `ortu_notelp`, `ortu_ayah_pkj`, `ortu_ibu_pkj`, `wali`, `wali_alamat`, `notelp_rumah`, `wali_pkj`, `inputID`, `tgl_input`, `stat_data`, `foto`, `qr_code`, `tgl_update`) VALUES
(486, '451', '2017310023', 'Ahmad Nasri', 'L', 'Malinau', '2000-12-12', 'Islam', 'AK', 0, '', '', '', '', 'I', '2018-07-01', 'I', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-05-21 16:11:54', 'A', '', 'ahmad-nasri-2017310023.png', '2022-05-21 13:28:49'),
(487, '494', '-', 'Aldi Khalifah Pratama', 'L', 'Malinau', '2001-01-01', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(488, '473', '-', 'Annisa Azzahrah', 'L', 'Malinau', '2001-01-02', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(489, '460', '-', 'Arga Arkaan Al Shafwaan', 'L', 'Malinau', '2001-01-03', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(490, '484', '-', 'Atelia Zelda Azzahra', 'L', 'Malinau', '2001-01-04', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(491, '477', '-', 'Azka Aqila Zain', 'L', 'Malinau', '2001-01-05', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(492, '499', '-', 'Cahyadi Pratama', 'L', 'Malinau', '2001-01-06', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(493, '458', '-', 'Darmanta Elsatria', 'L', 'Malinau', '2001-01-07', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(494, '486', '-', 'Fauziah', 'L', 'Malinau', '2001-01-08', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(495, '489', '-', 'Humairah Yasmin Sofian', 'L', 'Malinau', '2001-01-09', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(496, '476', '-', 'Kamila Azza Aliya', 'L', 'Malinau', '2001-01-10', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(497, '455', '-', 'M. Dewa Zhakee Ramadhan', 'L', 'Malinau', '2001-01-11', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(498, '468', '-', 'M. Erlangga Aditia Syahputra', 'L', 'Malinau', '2001-01-12', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(499, '482', '-', 'Muhammad Jami Al Fatih', 'L', 'Malinau', '2001-01-13', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(500, '450', '-', 'Nandana Luthfy Fachry', 'L', 'Malinau', '2001-01-14', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(501, '492', '-', 'Nur Affiifah', 'L', 'Malinau', '2001-01-15', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(502, '453', '-', 'Rufaiqotus Sholihah', 'L', 'Malinau', '2001-01-16', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(503, '462', '-', 'Sayyidah Khadijah', 'L', 'Malinau', '2001-01-17', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(504, '488', '-', 'Shoffiyah Nurul Aisyah', 'L', 'Malinau', '2001-01-18', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(505, '481', '-', 'Ummu Kultsum', 'L', 'Malinau', '2001-01-19', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(506, '479', '-', 'Zahin Huda El Idrus', 'L', 'Malinau', '2001-01-20', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(507, '449', '-', 'Zulfa Asfarini', 'L', 'Malinau', '2001-01-21', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(508, '1', '-', 'Maratussholikhah', 'L', 'Malinau', '2001-01-22', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(509, '2', '-', 'Moh Ali Muntaha', 'L', 'Malinau', '2001-01-23', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(510, '3', '-', 'Muanas', 'L', 'Malinau', '2001-01-24', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(511, '4', '-', 'Muawanah', 'L', 'Malinau', '2001-01-25', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(512, '5', '-', 'Muhammad Andi Rofiq', 'L', 'Malinau', '2001-01-26', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(513, '6', '-', 'Mufid', 'L', 'Malinau', '2001-01-27', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(514, '7', '-', 'Musriah', 'L', 'Malinau', '2001-01-28', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(515, '8', '-', 'Nurul Hidayatulloh', 'L', 'Malinau', '2001-01-29', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(516, '9', '-', 'Rita Hermawati', 'L', 'Malinau', '2001-01-30', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(517, '10', '-', 'Roikhatul jannah', 'L', 'Malinau', '2001-01-31', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(518, '11', '-', 'Samsul Majid', 'L', 'Malinau', '2001-02-01', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(519, '12', '-', 'Siti asqia', 'L', 'Malinau', '2001-02-02', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(520, '13', '-', 'Siti Nuratikah', 'L', 'Malinau', '2001-02-03', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(521, '14', '-', 'Sri Pujiastuti', 'L', 'Malinau', '2001-02-04', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(522, '15', '-', 'Umi Musahidaturohmah', 'L', 'Malinau', '2001-02-05', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(523, '16', '-', 'Umi Nasikhah Fikriyati', 'L', 'Malinau', '2001-02-06', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-05-21 13:27:12', 'A', '', NULL, '2022-05-21 13:28:49'),
(524, '17', '-', 'Yopi Susri Suryati', 'L', 'Malinau', '2001-02-07', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(525, '18', '-', 'Yuni Dwi oktaviani', 'L', 'Malinau', '2001-02-08', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(526, '19', '-', 'Regita nurcahyani', 'L', 'Malinau', '2001-02-09', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(527, '20', '-', 'Lufi azizah', 'L', 'Malinau', '2001-02-10', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(528, '21', '-', 'Vita Rina Dina Pangestuti', 'L', 'Malinau', '2001-02-11', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(529, '22', '-', 'Krismo Aji', 'L', 'Malinau', '2001-02-12', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49'),
(530, '23', '-', 'Laelatul umruh', 'L', 'Malinau', '2001-02-13', 'Islam', '', 0, '', '', '', '', '', '2018-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-29 12:47:28', 'A', '', NULL, '2022-05-21 13:28:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_tumbuh`
--

CREATE TABLE `m_tumbuh` (
  `id` int(2) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_tumbuh`
--

INSERT INTO `m_tumbuh` (`id`, `nama`) VALUES
(1, 'Tinggi Badan'),
(2, 'Berat Badan'),
(3, 'Pendengaran'),
(4, 'Penglihatan'),
(5, 'Gigi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun`
--

CREATE TABLE `tahun` (
  `id` int(3) NOT NULL,
  `tahun` varchar(5) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `nip_kepsek` varchar(30) NOT NULL,
  `tgl_raport` date NOT NULL,
  `tgl_raport_kelas3` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tahun`
--

INSERT INTO `tahun` (`id`, `tahun`, `aktif`, `nama_kepsek`, `nip_kepsek`, `tgl_raport`, `tgl_raport_kelas3`) VALUES
(1, '20182', 'Y', 'Rustandi, S.Pd.I', '-', '2019-05-25', '2019-05-25'),
(3, '20181', 'N', 'Rubiatun, S.Pd', '-', '2019-03-04', '2019-03-04'),
(4, '20191', 'N', 'Rubiatun, S.Pd', '-', '2020-05-20', '2020-05-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_backupdb`
--

CREATE TABLE `t_backupdb` (
  `id` int(11) NOT NULL,
  `tahun_akademik` varchar(6) NOT NULL,
  `nama_file` varchar(128) NOT NULL,
  `tgl_simpan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_backupdb`
--

INSERT INTO `t_backupdb` (`id`, `tahun_akademik`, `nama_file`, `tgl_simpan`) VALUES
(9, '20182', 'Backup_db_TA20182_03-02-2020.zip', '2020-02-03 06:59:49'),
(10, '20182', 'Backup_db_TA20182_09-02-2020.zip', '2020-02-09 06:20:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_guru_mapel`
--

CREATE TABLE `t_guru_mapel` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_guru` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  `id_mapel` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_guru_mapel`
--

INSERT INTO `t_guru_mapel` (`id`, `tasm`, `id_guru`, `id_kelas`, `id_mapel`) VALUES
(1, '20182', 8, 1, 1),
(2, '20182', 8, 1, 2),
(3, '20182', 8, 1, 3),
(4, '20182', 8, 1, 5),
(5, '20182', 8, 1, 6),
(6, '20182', 8, 1, 7),
(7, '20182', 9, 1, 8),
(8, '20182', 9, 1, 12),
(9, '20182', 9, 1, 13),
(10, '20182', 9, 1, 15),
(11, '20182', 9, 1, 19),
(12, '20191', 11, 2, 1),
(13, '20191', 11, 2, 2),
(14, '20191', 11, 2, 3),
(15, '20191', 9, 2, 5),
(16, '20191', 9, 2, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kelas_siswa`
--

CREATE TABLE `t_kelas_siswa` (
  `id` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `ta` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kelas_siswa`
--

INSERT INTO `t_kelas_siswa` (`id`, `id_kelas`, `id_siswa`, `ta`) VALUES
(38, 1, 523, 2018),
(187, 1, 486, 2018),
(142, 2, 486, 2019),
(143, 2, 487, 2019),
(144, 2, 488, 2019),
(145, 2, 489, 2019),
(146, 2, 490, 2019),
(147, 2, 491, 2019),
(148, 2, 492, 2019),
(149, 2, 493, 2019),
(150, 2, 494, 2019),
(151, 2, 495, 2019),
(152, 2, 496, 2019),
(153, 2, 497, 2019),
(154, 2, 498, 2019),
(155, 2, 499, 2019),
(156, 2, 500, 2019),
(157, 2, 501, 2019),
(158, 2, 502, 2019),
(159, 2, 503, 2019),
(160, 2, 504, 2019),
(161, 2, 505, 2019),
(162, 2, 506, 2019),
(163, 2, 507, 2019),
(164, 2, 508, 2019),
(165, 2, 509, 2019),
(166, 2, 510, 2019),
(167, 2, 511, 2019),
(168, 2, 512, 2019),
(169, 2, 513, 2019),
(170, 2, 514, 2019),
(171, 2, 515, 2019),
(172, 2, 516, 2019),
(173, 2, 517, 2019),
(174, 2, 518, 2019),
(175, 2, 519, 2019),
(176, 2, 520, 2019),
(177, 2, 521, 2019),
(178, 2, 522, 2019),
(179, 2, 523, 2019),
(180, 2, 524, 2019),
(181, 2, 525, 2019),
(182, 2, 526, 2019),
(183, 2, 527, 2019),
(184, 2, 528, 2019),
(185, 2, 529, 2019),
(186, 2, 530, 2019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kkm`
--

CREATE TABLE `t_kkm` (
  `id` int(5) NOT NULL,
  `ta` int(4) NOT NULL,
  `jenis` enum('np','nk') NOT NULL,
  `kelas` int(2) NOT NULL,
  `kkm` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mapel_kd`
--

CREATE TABLE `t_mapel_kd` (
  `id` int(6) UNSIGNED NOT NULL,
  `id_guru` int(6) UNSIGNED NOT NULL DEFAULT '0',
  `id_mapel` int(6) NOT NULL,
  `tingkat` int(2) NOT NULL,
  `semester` enum('0','1','2') NOT NULL,
  `no_kd` varchar(5) NOT NULL,
  `jenis` enum('P','K','SSp','SSo') NOT NULL,
  `bobot` int(2) NOT NULL,
  `nama_kd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_mapel_kd`
--

INSERT INTO `t_mapel_kd` (`id`, `id_guru`, `id_mapel`, `tingkat`, `semester`, `no_kd`, `jenis`, `bobot`, `nama_kd`) VALUES
(1, 0, 0, 0, '0', '', 'SSo', 0, 'jujur'),
(2, 0, 0, 0, '0', '', 'SSo', 0, 'disiplin'),
(3, 0, 0, 0, '0', '', 'SSo', 0, 'tanggung jawab'),
(4, 0, 0, 0, '0', '', 'SSo', 0, 'toleransi'),
(5, 0, 0, 0, '0', '', 'SSo', 0, 'gotong royong'),
(6, 0, 0, 0, '0', '', 'SSo', 0, 'santun'),
(7, 0, 0, 0, '0', '', 'SSo', 0, 'percaya diri'),
(8, 0, 0, 0, '0', '', 'SSp', 0, 'berdoa sebelum dan sesudah melakukan kegiatan		'),
(9, 0, 0, 0, '0', '', 'SSp', 0, 'menjalankan ibadah sesuai dengan agamanya'),
(10, 0, 0, 0, '0', '', 'SSp', 0, 'memberi salam pada saat awal dan akhir kegiatan		'),
(11, 0, 0, 0, '0', '', 'SSp', 0, 'bersyukur atas nikmat dan karunia Tuhan Yang Maha Esa		'),
(12, 0, 0, 0, '0', '', 'SSp', 0, 'mensyukuri kemampuan manusia dalam mengendalikan diri		'),
(13, 0, 0, 0, '0', '', 'SSp', 0, 'bersyukur ketika berhasil mengerjakan sesuatu		'),
(14, 0, 0, 0, '0', '', 'SSp', 0, 'berserah diri (tawakal) kepada Tuhan setelah berikhtiar atau melakukan usaha		'),
(15, 0, 0, 0, '0', '', 'SSp', 0, 'memelihara hubungan baik dengan sesama umat		'),
(16, 0, 0, 0, '0', '', 'SSp', 0, 'bersyukur sebagai bangsa Indonesia		'),
(17, 0, 0, 0, '0', '', 'SSp', 0, 'menghormati orang lain yang menjalankan ibadah sesuai dengan agamanya		\r\n'),
(98, 8, 5, 1, '2', 'KD1', 'P', 0, 'KD1'),
(99, 8, 5, 1, '2', 'KD2', 'P', 0, 'KD2'),
(100, 8, 5, 1, '2', 'KK01', 'K', 0, 'KK01'),
(101, 8, 6, 1, '2', 'IN1', 'P', 0, 'IN1'),
(102, 8, 6, 1, '2', 'IK01', 'K', 0, 'An01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_naikkelas`
--

CREATE TABLE `t_naikkelas` (
  `id` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `ta` char(5) NOT NULL,
  `naik` enum('Y','N') NOT NULL,
  `catatan_wali` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_naikkelas`
--

INSERT INTO `t_naikkelas` (`id`, `id_siswa`, `ta`, `naik`, `catatan_wali`) VALUES
(1, 486, '20182', 'Y', 'Karakteristik siswa dalam menggali memahami pengetahuan masih memerlukan peningkatan konsentrasi dan motivasi sehingga masih diperlukan bimbingan dari orang tua untuk meningkakan motivasi.'),
(2, 487, '20182', 'Y', 'Perlu peningkatan dalam berkomunikasi dan unjuk kemampuan melalui motivasi menjadi petugas, presentasi dan aktivitas unjuk kerja.'),
(3, 488, '20182', 'Y', '-'),
(4, 489, '20182', 'Y', '-'),
(5, 490, '20182', 'Y', '-'),
(6, 491, '20182', 'Y', '-'),
(7, 492, '20182', 'Y', '-'),
(8, 493, '20182', 'Y', '-'),
(9, 494, '20182', 'Y', '-'),
(10, 495, '20182', 'Y', '-'),
(11, 496, '20182', 'Y', '-'),
(12, 497, '20182', 'Y', '-'),
(13, 498, '20182', 'Y', '-'),
(14, 499, '20182', 'Y', '-'),
(15, 500, '20182', 'Y', '-'),
(16, 501, '20182', 'Y', '-'),
(17, 502, '20182', 'Y', '-'),
(18, 503, '20182', 'Y', '-'),
(19, 504, '20182', 'Y', '-'),
(20, 505, '20182', 'Y', '-'),
(21, 506, '20182', 'Y', '-'),
(22, 507, '20182', 'Y', '-'),
(23, 508, '20182', 'Y', '-'),
(24, 509, '20182', 'Y', '-'),
(25, 510, '20182', 'Y', '-'),
(26, 511, '20182', 'Y', '-'),
(27, 512, '20182', 'Y', '-'),
(28, 513, '20182', 'Y', '-'),
(29, 514, '20182', 'Y', '-'),
(30, 515, '20182', 'Y', '-'),
(31, 516, '20182', 'Y', '-'),
(32, 517, '20182', 'Y', '-'),
(33, 518, '20182', 'Y', '-'),
(34, 519, '20182', 'Y', '-'),
(35, 520, '20182', 'Y', '-'),
(36, 521, '20182', 'Y', '-'),
(37, 522, '20182', 'Y', '-'),
(38, 523, '20182', 'Y', '-Karakteristik siswa dalam menggali memahami pengetahuan masih memerlukan peningkatan konsentrasi dan motivasi sehingga masih diperlukan bimbingan dari orang tua untuk meningkakan motivasi.'),
(39, 524, '20182', 'Y', '-'),
(40, 525, '20182', 'Y', '-'),
(41, 526, '20182', 'Y', '-'),
(42, 527, '20182', 'Y', '-'),
(43, 528, '20182', 'Y', '-'),
(44, 529, '20182', 'Y', '-'),
(45, 530, '20182', 'Y', '-'),
(46, 486, '20191', 'Y', 'Karakteristik siswa dalam menggali memahami pengetahuan masih memerlukan peningkatan konsentrasi dan motivasi sehingga masih diperlukan bimbingan dari orang tua untuk meningkakan motivasi, Sikap sosial dan spiritual telah mengalami perkembangan ke arah positif secara signifikan, interaksi, dan keteladanan untuk mempengaruhi teman bersikap positif perlu ditumbuhkan.\r\n'),
(47, 487, '20191', 'Y', 'Potensi untuk meningkatkan keterampilan sangat potensial mengingat peserta didik ini, mudah mencerna dan mendapatkan pengetahuan,\r\n'),
(48, 488, '20191', 'Y', 'Perlu peningkatan dalam berkomunikasi dan unjuk kemampuan melalui motivasi menjadi petugas, presentasi dan aktivitas unjuk kerja,\r\n'),
(49, 489, '20191', 'Y', '-'),
(50, 490, '20191', 'Y', '-'),
(51, 491, '20191', 'Y', '-'),
(52, 492, '20191', 'Y', '-'),
(53, 493, '20191', 'Y', '-'),
(54, 494, '20191', 'Y', '-'),
(55, 495, '20191', 'Y', '-'),
(56, 496, '20191', 'Y', '-'),
(57, 497, '20191', 'Y', '-'),
(58, 498, '20191', 'Y', '-'),
(59, 499, '20191', 'Y', '-'),
(60, 500, '20191', 'Y', '-'),
(61, 501, '20191', 'Y', '-'),
(62, 502, '20191', 'Y', '-'),
(63, 503, '20191', 'Y', '-'),
(64, 504, '20191', 'Y', '-'),
(65, 505, '20191', 'Y', '-'),
(66, 506, '20191', 'Y', '-'),
(67, 507, '20191', 'Y', '-'),
(68, 508, '20191', 'Y', '-'),
(69, 509, '20191', 'Y', '-'),
(70, 510, '20191', 'Y', '-'),
(71, 511, '20191', 'Y', '-'),
(72, 512, '20191', 'Y', '-'),
(73, 513, '20191', 'Y', '-'),
(74, 514, '20191', 'Y', '-'),
(75, 515, '20191', 'Y', '-'),
(76, 516, '20191', 'Y', '-'),
(77, 517, '20191', 'Y', '-'),
(78, 518, '20191', 'Y', '-'),
(79, 519, '20191', 'Y', '-'),
(80, 520, '20191', 'Y', '-'),
(81, 521, '20191', 'Y', '-'),
(82, 522, '20191', 'Y', '-'),
(83, 523, '20191', 'Y', '-'),
(84, 524, '20191', 'Y', '-'),
(85, 525, '20191', 'Y', '-'),
(86, 526, '20191', 'Y', '-'),
(87, 527, '20191', 'Y', '-'),
(88, 528, '20191', 'Y', '-'),
(89, 529, '20191', 'Y', '-'),
(90, 530, '20191', 'Y', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_nilai`
--

CREATE TABLE `t_nilai` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) NOT NULL DEFAULT '0',
  `jenis` enum('h','t','a') NOT NULL,
  `id_guru_mapel` int(6) NOT NULL,
  `id_mapel_kd` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `nilai` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_nilai`
--

INSERT INTO `t_nilai` (`id`, `tasm`, `jenis`, `id_guru_mapel`, `id_mapel_kd`, `id_siswa`, `nilai`) VALUES
(3457, '20182', 'h', 4, 98, 486, 85),
(3458, '20182', 'h', 4, 98, 523, 90),
(3463, '20182', 'h', 4, 99, 486, 85),
(3464, '20182', 'h', 4, 99, 523, 90),
(3469, '20182', 'h', 5, 101, 486, 75),
(3470, '20182', 'h', 5, 101, 523, 0),
(3459, '20182', 't', 4, 5, 486, 90),
(3460, '20182', 't', 4, 5, 523, 90),
(3465, '20182', 't', 5, 6, 486, 75),
(3466, '20182', 't', 5, 6, 523, 0),
(3461, '20182', 'a', 4, 5, 486, 85),
(3462, '20182', 'a', 4, 5, 523, 90),
(3467, '20182', 'a', 5, 6, 486, 75),
(3468, '20182', 'a', 5, 6, 523, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_nilai_absensi`
--

CREATE TABLE `t_nilai_absensi` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `s` int(3) NOT NULL,
  `i` int(3) NOT NULL,
  `a` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_nilai_absensi`
--

INSERT INTO `t_nilai_absensi` (`id`, `tasm`, `id_siswa`, `s`, `i`, `a`) VALUES
(95, '20182', 523, 6, 6, 6),
(96, '20182', 486, 3, 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_nilai_ekstra`
--

CREATE TABLE `t_nilai_ekstra` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_ekstra` int(3) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `nilai` char(2) DEFAULT NULL,
  `desk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_nilai_ekstra`
--

INSERT INTO `t_nilai_ekstra` (`id`, `tasm`, `id_ekstra`, `id_siswa`, `nilai`, `desk`) VALUES
(1, '20182', 12, 486, 'A', 'Memuaskan, aktif megikuti kegiatan Senam mingguan'),
(2, '20182', 12, 487, '-', '-'),
(3, '20182', 12, 488, '-', '-'),
(4, '20182', 12, 489, '-', '-'),
(5, '20182', 12, 490, '-', '-'),
(6, '20182', 12, 491, '-', '-'),
(7, '20182', 12, 492, '-', '-'),
(8, '20182', 12, 493, '-', '-'),
(9, '20182', 12, 494, '-', '-'),
(10, '20182', 12, 495, '-', '-'),
(11, '20182', 12, 496, '-', '-'),
(12, '20182', 12, 497, '-', '-'),
(13, '20182', 12, 498, '-', '-'),
(14, '20182', 12, 499, '-', '-'),
(15, '20182', 12, 500, '-', '-'),
(16, '20182', 12, 501, '-', '-'),
(17, '20182', 12, 502, '-', '-'),
(18, '20182', 12, 503, '-', '-'),
(19, '20182', 12, 504, '-', '-'),
(20, '20182', 12, 505, '-', '-'),
(21, '20182', 12, 506, '-', '-'),
(22, '20182', 12, 507, '-', '-'),
(23, '20182', 12, 508, '-', '-'),
(24, '20182', 12, 509, '-', '-'),
(25, '20182', 12, 510, '-', '-'),
(26, '20182', 12, 511, '-', '-'),
(27, '20182', 12, 512, '-', '-'),
(28, '20182', 12, 513, '-', '-'),
(29, '20182', 12, 514, '-', '-'),
(30, '20182', 12, 515, '-', '-'),
(31, '20182', 12, 516, '-', '-'),
(32, '20182', 12, 517, '-', '-'),
(33, '20182', 12, 518, '-', '-'),
(34, '20182', 12, 519, '-', '-'),
(35, '20182', 12, 520, '-', '-'),
(36, '20182', 12, 521, '-', '-'),
(37, '20182', 12, 522, '-', '-'),
(38, '20182', 12, 523, '-', '-'),
(39, '20182', 12, 524, '-', '-'),
(40, '20182', 12, 525, '-', '-'),
(41, '20182', 12, 526, '-', '-'),
(42, '20182', 12, 527, '-', '-'),
(43, '20182', 12, 528, '-', '-'),
(44, '20182', 12, 529, '-', '-'),
(45, '20182', 12, 530, '-', '-'),
(46, '20182', 10, 486, 'A', 'Memuaskan, aktif megikuti kegiatan Mengaji mingguan'),
(47, '20182', 10, 487, '-', '-'),
(48, '20182', 10, 488, '-', '-'),
(49, '20182', 10, 489, '-', '-'),
(50, '20182', 10, 490, '-', '-'),
(51, '20182', 10, 491, '-', '-'),
(52, '20182', 10, 492, '-', '-'),
(53, '20182', 10, 493, '-', '-'),
(54, '20182', 10, 494, '-', '-'),
(55, '20182', 10, 495, '-', '-'),
(56, '20182', 10, 496, '-', '-'),
(57, '20182', 10, 497, '-', '-'),
(58, '20182', 10, 498, '-', '-'),
(59, '20182', 10, 499, '-', '-'),
(60, '20182', 10, 500, '-', '-'),
(61, '20182', 10, 501, '-', '-'),
(62, '20182', 10, 502, '-', '-'),
(63, '20182', 10, 503, '-', '-'),
(64, '20182', 10, 504, '-', '-'),
(65, '20182', 10, 505, '-', '-'),
(66, '20182', 10, 506, '-', '-'),
(67, '20182', 10, 507, '-', '-'),
(68, '20182', 10, 508, '-', '-'),
(69, '20182', 10, 509, '-', '-'),
(70, '20182', 10, 510, '-', '-'),
(71, '20182', 10, 511, '-', '-'),
(72, '20182', 10, 512, '-', '-'),
(73, '20182', 10, 513, '-', '-'),
(74, '20182', 10, 514, '-', '-'),
(75, '20182', 10, 515, '-', '-'),
(76, '20182', 10, 516, '-', '-'),
(77, '20182', 10, 517, '-', '-'),
(78, '20182', 10, 518, '-', '-'),
(79, '20182', 10, 519, '-', '-'),
(80, '20182', 10, 520, '-', '-'),
(81, '20182', 10, 521, '-', '-'),
(82, '20182', 10, 522, '-', '-'),
(83, '20182', 10, 523, '-', '-'),
(84, '20182', 10, 524, '-', '-'),
(85, '20182', 10, 525, '-', '-'),
(86, '20182', 10, 526, '-', '-'),
(87, '20182', 10, 527, '-', '-'),
(88, '20182', 10, 528, '-', '-'),
(89, '20182', 10, 529, '-', '-'),
(90, '20182', 10, 530, '-', '-'),
(91, '20182', 11, 486, 'A', 'Memuaskan, aktif megikuti kegiatan Hafalan Surah Pendek mingguan'),
(92, '20182', 11, 487, '-', '-'),
(93, '20182', 11, 488, '-', '-'),
(94, '20182', 11, 489, '-', '-'),
(95, '20182', 11, 490, '-', '-'),
(96, '20182', 11, 491, '-', '-'),
(97, '20182', 11, 492, '-', '-'),
(98, '20182', 11, 493, '-', '-'),
(99, '20182', 11, 494, '-', '-'),
(100, '20182', 11, 495, '-', '-'),
(101, '20182', 11, 496, '-', '-'),
(102, '20182', 11, 497, '-', '-'),
(103, '20182', 11, 498, '-', '-'),
(104, '20182', 11, 499, '-', '-'),
(105, '20182', 11, 500, '-', '-'),
(106, '20182', 11, 501, '-', '-'),
(107, '20182', 11, 502, '-', '-'),
(108, '20182', 11, 503, '-', '-'),
(109, '20182', 11, 504, '-', '-'),
(110, '20182', 11, 505, '-', '-'),
(111, '20182', 11, 506, '-', '-'),
(112, '20182', 11, 507, '-', '-'),
(113, '20182', 11, 508, '-', '-'),
(114, '20182', 11, 509, '-', '-'),
(115, '20182', 11, 510, '-', '-'),
(116, '20182', 11, 511, '-', '-'),
(117, '20182', 11, 512, '-', '-'),
(118, '20182', 11, 513, '-', '-'),
(119, '20182', 11, 514, '-', '-'),
(120, '20182', 11, 515, '-', '-'),
(121, '20182', 11, 516, '-', '-'),
(122, '20182', 11, 517, '-', '-'),
(123, '20182', 11, 518, '-', '-'),
(124, '20182', 11, 519, '-', '-'),
(125, '20182', 11, 520, '-', '-'),
(126, '20182', 11, 521, '-', '-'),
(127, '20182', 11, 522, '-', '-'),
(128, '20182', 11, 523, '-', '-'),
(129, '20182', 11, 524, '-', '-'),
(130, '20182', 11, 525, '-', '-'),
(131, '20182', 11, 526, '-', '-'),
(132, '20182', 11, 527, '-', '-'),
(133, '20182', 11, 528, '-', '-'),
(134, '20182', 11, 529, '-', '-'),
(135, '20182', 11, 530, '-', '-'),
(136, '20191', 10, 486, 'A', 'Memuaskan, aktif megikuti kegiatan Mengaji mingguan'),
(137, '20191', 10, 487, 'B', 'Cukup memuaskan, aktif mengikuti kegiatan Mengaji mingguan'),
(138, '20191', 10, 488, 'C', 'Kurang memuaskan, pasif mengikuti kegiatan Mengaji mingguan'),
(139, '20191', 10, 489, '-', '-'),
(140, '20191', 10, 490, '-', '-'),
(141, '20191', 10, 491, '-', '-'),
(142, '20191', 10, 492, '-', '-'),
(143, '20191', 10, 493, '-', '-'),
(144, '20191', 10, 494, '-', '-'),
(145, '20191', 10, 495, '-', '-'),
(146, '20191', 10, 496, '-', '-'),
(147, '20191', 10, 497, '-', '-'),
(148, '20191', 10, 498, '-', '-'),
(149, '20191', 10, 499, '-', '-'),
(150, '20191', 10, 500, '-', '-'),
(151, '20191', 10, 501, '-', '-'),
(152, '20191', 10, 502, '-', '-'),
(153, '20191', 10, 503, '-', '-'),
(154, '20191', 10, 504, '-', '-'),
(155, '20191', 10, 505, '-', '-'),
(156, '20191', 10, 506, '-', '-'),
(157, '20191', 10, 507, '-', '-'),
(158, '20191', 10, 508, '-', '-'),
(159, '20191', 10, 509, '-', '-'),
(160, '20191', 10, 510, '-', '-'),
(161, '20191', 10, 511, '-', '-'),
(162, '20191', 10, 512, '-', '-'),
(163, '20191', 10, 513, '-', '-'),
(164, '20191', 10, 514, '-', '-'),
(165, '20191', 10, 515, '-', '-'),
(166, '20191', 10, 516, '-', '-'),
(167, '20191', 10, 517, '-', '-'),
(168, '20191', 10, 518, '-', '-'),
(169, '20191', 10, 519, '-', '-'),
(170, '20191', 10, 520, '-', '-'),
(171, '20191', 10, 521, '-', '-'),
(172, '20191', 10, 522, '-', '-'),
(173, '20191', 10, 523, '-', '-'),
(174, '20191', 10, 524, '-', '-'),
(175, '20191', 10, 525, '-', '-'),
(176, '20191', 10, 526, '-', '-'),
(177, '20191', 10, 527, '-', '-'),
(178, '20191', 10, 528, '-', '-'),
(179, '20191', 10, 529, '-', '-'),
(180, '20191', 10, 530, '-', '-'),
(181, '20191', 11, 486, 'B', 'Cukup memuaskan, aktif mengikuti kegiatan Hafalan Surah Pendek mingguan'),
(182, '20191', 11, 487, 'A', 'Memuaskan, aktif megikuti kegiatan Hafalan Surah Pendek mingguan'),
(183, '20191', 11, 488, 'B', 'Cukup memuaskan, aktif mengikuti kegiatan Hafalan Surah Pendek mingguan'),
(184, '20191', 11, 489, '-', '-'),
(185, '20191', 11, 490, '-', '-'),
(186, '20191', 11, 491, '-', '-'),
(187, '20191', 11, 492, '-', '-'),
(188, '20191', 11, 493, '-', '-'),
(189, '20191', 11, 494, '-', '-'),
(190, '20191', 11, 495, '-', '-'),
(191, '20191', 11, 496, '-', '-'),
(192, '20191', 11, 497, '-', '-'),
(193, '20191', 11, 498, '-', '-'),
(194, '20191', 11, 499, '-', '-'),
(195, '20191', 11, 500, '-', '-'),
(196, '20191', 11, 501, '-', '-'),
(197, '20191', 11, 502, '-', '-'),
(198, '20191', 11, 503, '-', '-'),
(199, '20191', 11, 504, '-', '-'),
(200, '20191', 11, 505, '-', '-'),
(201, '20191', 11, 506, '-', '-'),
(202, '20191', 11, 507, '-', '-'),
(203, '20191', 11, 508, '-', '-'),
(204, '20191', 11, 509, '-', '-'),
(205, '20191', 11, 510, '-', '-'),
(206, '20191', 11, 511, '-', '-'),
(207, '20191', 11, 512, '-', '-'),
(208, '20191', 11, 513, '-', '-'),
(209, '20191', 11, 514, '-', '-'),
(210, '20191', 11, 515, '-', '-'),
(211, '20191', 11, 516, '-', '-'),
(212, '20191', 11, 517, '-', '-'),
(213, '20191', 11, 518, '-', '-'),
(214, '20191', 11, 519, '-', '-'),
(215, '20191', 11, 520, '-', '-'),
(216, '20191', 11, 521, '-', '-'),
(217, '20191', 11, 522, '-', '-'),
(218, '20191', 11, 523, '-', '-'),
(219, '20191', 11, 524, '-', '-'),
(220, '20191', 11, 525, '-', '-'),
(221, '20191', 11, 526, '-', '-'),
(222, '20191', 11, 527, '-', '-'),
(223, '20191', 11, 528, '-', '-'),
(224, '20191', 11, 529, '-', '-'),
(225, '20191', 11, 530, '-', '-'),
(226, '20191', 12, 486, 'C', 'Kurang memuaskan, pasif mengikuti kegiatan Senam mingguan'),
(227, '20191', 12, 487, 'A', 'Memuaskan, aktif megikuti kegiatan Senam mingguan'),
(228, '20191', 12, 488, 'A', 'Memuaskan, aktif megikuti kegiatan Senam mingguan'),
(229, '20191', 12, 489, '-', '-'),
(230, '20191', 12, 490, '-', '-'),
(231, '20191', 12, 491, '-', '-'),
(232, '20191', 12, 492, '-', '-'),
(233, '20191', 12, 493, '-', '-'),
(234, '20191', 12, 494, '-', '-'),
(235, '20191', 12, 495, '-', '-'),
(236, '20191', 12, 496, '-', '-'),
(237, '20191', 12, 497, '-', '-'),
(238, '20191', 12, 498, '-', '-'),
(239, '20191', 12, 499, '-', '-'),
(240, '20191', 12, 500, '-', '-'),
(241, '20191', 12, 501, '-', '-'),
(242, '20191', 12, 502, '-', '-'),
(243, '20191', 12, 503, '-', '-'),
(244, '20191', 12, 504, '-', '-'),
(245, '20191', 12, 505, '-', '-'),
(246, '20191', 12, 506, '-', '-'),
(247, '20191', 12, 507, '-', '-'),
(248, '20191', 12, 508, '-', '-'),
(249, '20191', 12, 509, '-', '-'),
(250, '20191', 12, 510, '-', '-'),
(251, '20191', 12, 511, '-', '-'),
(252, '20191', 12, 512, '-', '-'),
(253, '20191', 12, 513, '-', '-'),
(254, '20191', 12, 514, '-', '-'),
(255, '20191', 12, 515, '-', '-'),
(256, '20191', 12, 516, '-', '-'),
(257, '20191', 12, 517, '-', '-'),
(258, '20191', 12, 518, '-', '-'),
(259, '20191', 12, 519, '-', '-'),
(260, '20191', 12, 520, '-', '-'),
(261, '20191', 12, 521, '-', '-'),
(262, '20191', 12, 522, '-', '-'),
(263, '20191', 12, 523, '-', '-'),
(264, '20191', 12, 524, '-', '-'),
(265, '20191', 12, 525, '-', '-'),
(266, '20191', 12, 526, '-', '-'),
(267, '20191', 12, 527, '-', '-'),
(268, '20191', 12, 528, '-', '-'),
(269, '20191', 12, 529, '-', '-'),
(270, '20191', 12, 530, '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_nilai_ket`
--

CREATE TABLE `t_nilai_ket` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) NOT NULL,
  `id_guru_mapel` int(6) NOT NULL,
  `id_mapel_kd` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `nilai` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_nilai_ket`
--

INSERT INTO `t_nilai_ket` (`id`, `tasm`, `id_guru_mapel`, `id_mapel_kd`, `id_siswa`, `nilai`) VALUES
(1944, '20182', 4, 100, 486, 100),
(1945, '20182', 4, 100, 523, 100),
(1946, '20182', 5, 102, 486, 100),
(1947, '20182', 5, 102, 523, 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_nilai_sikap_so`
--

CREATE TABLE `t_nilai_sikap_so` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_kelas` int(6) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `is_wali` enum('Y','N') DEFAULT NULL,
  `selalu` varchar(50) DEFAULT NULL,
  `mulai_meningkat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_nilai_sikap_so`
--

INSERT INTO `t_nilai_sikap_so` (`id`, `tasm`, `id_kelas`, `id_siswa`, `is_wali`, `selalu`, `mulai_meningkat`) VALUES
(187, '20182', 1, 523, 'Y', '2', '1'),
(188, '20182', 1, 486, 'Y', '4,5,6,7', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_nilai_sikap_sp`
--

CREATE TABLE `t_nilai_sikap_sp` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_kelas` int(6) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `is_wali` enum('Y','N') DEFAULT NULL,
  `selalu` varchar(50) DEFAULT NULL,
  `mulai_meningkat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_nilai_sikap_sp`
--

INSERT INTO `t_nilai_sikap_sp` (`id`, `tasm`, `id_kelas`, `id_siswa`, `is_wali`, `selalu`, `mulai_meningkat`) VALUES
(95, '20182', 1, 523, 'Y', '14-15', '8'),
(96, '20182', 1, 486, 'Y', '14-11', '8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_prestasi`
--

CREATE TABLE `t_prestasi` (
  `id` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `ta` char(5) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_prestasi`
--

INSERT INTO `t_prestasi` (`id`, `id_siswa`, `ta`, `jenis`, `keterangan`) VALUES
(5, 486, '20182', 'jkj', 'kjk'),
(4, 486, '20191', 'MTQ Tingkat Kabupaten', 'Juara 1 Mtq Tingkat Kabupaten');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_walikelas`
--

CREATE TABLE `t_walikelas` (
  `id` int(3) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_guru` int(2) DEFAULT NULL,
  `id_kelas` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_walikelas`
--

INSERT INTO `t_walikelas` (`id`, `tasm`, `id_guru`, `id_kelas`) VALUES
(2, '2018', 8, 1),
(3, '2019', 11, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `m_admin`
--
ALTER TABLE `m_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_ekstra`
--
ALTER TABLE `m_ekstra`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_guru`
--
ALTER TABLE `m_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_kelas`
--
ALTER TABLE `m_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_mapel`
--
ALTER TABLE `m_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_siswa`
--
ALTER TABLE `m_siswa`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `m_tumbuh`
--
ALTER TABLE `m_tumbuh`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tahun`
--
ALTER TABLE `tahun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_backupdb`
--
ALTER TABLE `t_backupdb`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_guru_mapel`
--
ALTER TABLE `t_guru_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `t_kelas_siswa`
--
ALTER TABLE `t_kelas_siswa`
  ADD PRIMARY KEY (`id_kelas`,`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `t_kkm`
--
ALTER TABLE `t_kkm`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_mapel_kd`
--
ALTER TABLE `t_mapel_kd`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `t_naikkelas`
--
ALTER TABLE `t_naikkelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_nilai`
--
ALTER TABLE `t_nilai`
  ADD PRIMARY KEY (`tasm`,`jenis`,`id_guru_mapel`,`id_mapel_kd`,`id_siswa`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `t_nilai_absensi`
--
ALTER TABLE `t_nilai_absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `t_nilai_ekstra`
--
ALTER TABLE `t_nilai_ekstra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ekstra` (`id_ekstra`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `t_nilai_ket`
--
ALTER TABLE `t_nilai_ket`
  ADD PRIMARY KEY (`tasm`,`id_guru_mapel`,`id_mapel_kd`,`id_siswa`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `t_nilai_sikap_so`
--
ALTER TABLE `t_nilai_sikap_so`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru_mapel` (`id_kelas`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `t_nilai_sikap_sp`
--
ALTER TABLE `t_nilai_sikap_sp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru_mapel` (`id_kelas`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `t_prestasi`
--
ALTER TABLE `t_prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_walikelas`
--
ALTER TABLE `t_walikelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `m_ekstra`
--
ALTER TABLE `m_ekstra`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `m_guru`
--
ALTER TABLE `m_guru`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `m_kelas`
--
ALTER TABLE `m_kelas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `m_siswa`
--
ALTER TABLE `m_siswa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- AUTO_INCREMENT untuk tabel `m_tumbuh`
--
ALTER TABLE `m_tumbuh`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tahun`
--
ALTER TABLE `tahun`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `t_backupdb`
--
ALTER TABLE `t_backupdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `t_guru_mapel`
--
ALTER TABLE `t_guru_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `t_kelas_siswa`
--
ALTER TABLE `t_kelas_siswa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT untuk tabel `t_kkm`
--
ALTER TABLE `t_kkm`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_mapel_kd`
--
ALTER TABLE `t_mapel_kd`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `t_naikkelas`
--
ALTER TABLE `t_naikkelas`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `t_nilai`
--
ALTER TABLE `t_nilai`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3471;

--
-- AUTO_INCREMENT untuk tabel `t_nilai_absensi`
--
ALTER TABLE `t_nilai_absensi`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `t_nilai_ekstra`
--
ALTER TABLE `t_nilai_ekstra`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT untuk tabel `t_nilai_ket`
--
ALTER TABLE `t_nilai_ket`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1948;

--
-- AUTO_INCREMENT untuk tabel `t_nilai_sikap_so`
--
ALTER TABLE `t_nilai_sikap_so`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT untuk tabel `t_nilai_sikap_sp`
--
ALTER TABLE `t_nilai_sikap_sp`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `t_prestasi`
--
ALTER TABLE `t_prestasi`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `t_walikelas`
--
ALTER TABLE `t_walikelas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `t_guru_mapel`
--
ALTER TABLE `t_guru_mapel`
  ADD CONSTRAINT `FK_t_guru_mapel_m_guru` FOREIGN KEY (`id_guru`) REFERENCES `m_guru` (`id`),
  ADD CONSTRAINT `FK_t_guru_mapel_m_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `m_kelas` (`id`),
  ADD CONSTRAINT `FK_t_guru_mapel_m_mapel` FOREIGN KEY (`id_mapel`) REFERENCES `m_mapel` (`id`);

--
-- Ketidakleluasaan untuk tabel `t_kelas_siswa`
--
ALTER TABLE `t_kelas_siswa`
  ADD CONSTRAINT `t_kelas_siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `m_kelas` (`id`),
  ADD CONSTRAINT `t_kelas_siswa_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `t_nilai_ekstra`
--
ALTER TABLE `t_nilai_ekstra`
  ADD CONSTRAINT `FK_t_nilai_ekstra_m_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id`),
  ADD CONSTRAINT `t_nilai_ekstra_ibfk_1` FOREIGN KEY (`id_ekstra`) REFERENCES `m_ekstra` (`id`);

--
-- Ketidakleluasaan untuk tabel `t_nilai_sikap_so`
--
ALTER TABLE `t_nilai_sikap_so`
  ADD CONSTRAINT `FK_t_nilai_sikap_so_m_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `t_nilai_sikap_sp`
--
ALTER TABLE `t_nilai_sikap_sp`
  ADD CONSTRAINT `FK_t_nilai_sikap_sp_m_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `t_walikelas`
--
ALTER TABLE `t_walikelas`
  ADD CONSTRAINT `FK_t_walikelas_m_guru` FOREIGN KEY (`id_guru`) REFERENCES `m_guru` (`id`),
  ADD CONSTRAINT `FK_t_walikelas_m_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `m_kelas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
