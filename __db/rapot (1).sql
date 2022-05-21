-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2022 pada 04.28
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rapot`
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
(11, 'ajatsu', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '1', 'Y'),
(12, '161701001', '854080e0c102262ac5b807409179fd3d999e50fe', 'siswa', '157', 'Y'),
(13, '', '10a34637ad661d98ba3344717656fcc76209c2f8', 'siswa', '169', 'Y'),
(14, '161701002', 'd1068ab4686a88d6cd678796ea0ca1b2f83d19f2', 'siswa', '159', 'Y'),
(15, '161701003', '53600a97681d881931ab897ab4e822a5356fced0', 'siswa', '164', 'Y'),
(16, '161701004', '14cfe849ae30c3e0a1c3bba74efb1df47342ccc5', 'siswa', '171', 'Y'),
(17, '161701005', 'ca2e48a3f322a42ef3b562ef7044e3aa218b95ea', 'siswa', '172', 'Y'),
(18, '161701006', '0424f65811b0862037b1aed9195df06dbc0cdff7', 'siswa', '185', 'Y'),
(19, '161701007', 'c526740b6151952f5a553335712ab861e59a4ab2', 'siswa', '186', 'Y'),
(20, '161701008', '902801c45e1b6103394ad0d58fe53a7e44c88111', 'siswa', '188', 'Y'),
(21, '161701009', 'f1af0dd2290242ec7361fba46fad13c114580a78', 'siswa', '191', 'Y'),
(22, '161701010', 'bf0fb48cfc53a90a60a5280fd32e9bf9ce7d5cdd', 'siswa', '201', 'Y'),
(23, '161701011', '7e676113fd0014e23143eac5e5ef61dae6c1a8b8', 'siswa', '204', 'Y'),
(24, '161701012', '1baecf8da08cb48d3f30dda3e8885fab41b05aa3', 'siswa', '209', 'Y'),
(25, '161701013', 'dd49f790602755dc7bd90051fd4ba1b915b14f18', 'siswa', '217', 'Y'),
(26, '161701015', 'b4859f8abfdd4898729a5cb3b79ed9aaa92f8598', 'siswa', '226', 'Y'),
(27, '161701014', 'dcfb8650b15fadb2d590321dd9761567587b7157', 'siswa', '224', 'Y'),
(28, '161701016', 'b8b1340e56a2cfb0b4acd66d54137e95dfac38f4', 'siswa', '232', 'Y'),
(29, '161701017', '351314a0b9f8e19fe99db6ad2ab000778bea4f6b', 'siswa', '234', 'Y'),
(30, '161701018', '9d779db1b9b55446d6b4e910a01d9a16f42930e7', 'siswa', '237', 'Y'),
(31, '161701019', '89e597a9e840d1c6f7cbd55030f84b6a6788e1f5', 'siswa', '244', 'Y'),
(32, '171801008', 'c0d648d118a6c4a6435d9dc7dbf64629d629c9f0', 'siswa', '205', 'Y'),
(33, '171801006', '9a00067fb4fa79522c35aa3c6aec72faa302b9c4', 'siswa', '183', 'Y'),
(34, '171801005', 'a8572bb8533f2d5cc4ae90fbfd38a689a999375a', 'siswa', '178', 'Y'),
(35, '171801004', '5b4117b1fd8e97fb75260acea6c5da1dc570a054', 'siswa', '175', 'Y'),
(36, '171801003', 'c702975a208e2f0b936f266ab72a791fbc40ea83', 'siswa', '154', 'Y'),
(37, '171801002', '9c412d700703a645962a9b88763996183e1660f7', 'siswa', '163', 'Y'),
(38, '161703025', '26f68f2eebb65b350d325cd9f4fe1fd0281165bf', 'siswa', '221', 'Y'),
(39, '161701023', '5e7c797b0be036c00987e4da385c8c754467f798', 'siswa', '262', 'Y'),
(40, '161701022', 'c47c1765334c94dc454abb65b5bbb682a96b2839', 'siswa', '257', 'Y'),
(41, '161701020', 'c5bb81b3416e9b3593c1b4fd7065b85ffb413756', 'siswa', '249', 'Y'),
(42, '181901004', 'ad8890c9ed36727b1a24926561a304ad3d9fbc5a', 'siswa', '180', 'Y'),
(43, '181901003', '80e62e8603e040ec5696abb4a7e5a88065a95d37', 'siswa', '177', 'Y'),
(44, '181901002', '9636cbebed9bfeab3018c4af54702aa65f2fe6a7', 'siswa', '167', 'Y'),
(45, '181901001', '138f508c4fb4f6fdc0a9c52d87d0aa34ee6f1367', 'siswa', '165', 'Y'),
(46, '171801015', 'bda9bfa7ffbc21bf357e2a5f5fb46dc4572133ee', 'siswa', '259', 'Y'),
(47, '171801014', '58094a3c88eeb589e8f8c7fd96ca9ffe7d5fabf7', 'siswa', '261', 'Y'),
(48, '171801013', '031be08a1afc3b34a0162653a4d2cb9700525d3c', 'siswa', '251', 'Y'),
(49, '171801012', 'c6656f260903357e029ad35b2c8271a0059c1a01', 'siswa', '239', 'Y'),
(50, '171801010', 'f0475792a66596ce53aa414eae8d63bd9b207ab2', 'siswa', '218', 'Y'),
(51, '171801009', '19268dcd55f834cf217231eebed94e79deacfc2e', 'siswa', '208', 'Y'),
(52, '181901014', '82a982282453d9125e17c99ada828a2ea851f881', 'siswa', '253', 'Y'),
(53, '181901013', '67f5fbb8ae552f0f5326140740345c0671204a83', 'siswa', '246', 'Y'),
(54, '181901012', 'cf61ad736722756fbb4c3545e3a273ce4cae4e0b', 'siswa', '242', 'Y'),
(55, '181901011', '73479d4c55980e2916f7e167a46beb20308c1f03', 'siswa', '233', 'Y'),
(56, '181901010', '3cd2880e0f81544981fd98d74418a1caec539d56', 'siswa', '230', 'Y'),
(57, '181901009', 'cf9e22607318933ac1e415bf2c109e716620f0c1', 'siswa', '214', 'Y'),
(58, '181901008', 'f35a7ec186e217e9bb7afdc6c8a2f8f8895aa757', 'siswa', '210', 'Y'),
(59, '181901007', '8cccef8ddea326320120f74a653fa2e02478b82b', 'siswa', '200', 'Y'),
(60, '181901006', '2a3dd47a1f41a2d92a4dec4f32191cf1987297f0', 'siswa', '187', 'Y'),
(61, '181901005', 'fae19f306785c9f16861988669fa54c15b94a03e', 'siswa', '182', 'Y'),
(62, '192001008', 'bf2a5b5e860dce218cbe14c2a73343f199589fee', 'siswa', '207', 'Y'),
(63, '212206012', '5c9facbe40141a41c6ad6cd85c409e2aff82884a', 'siswa', '252', 'Y'),
(64, '212203015', '1bea21a2957137d5023819a76d46883ad11228f7', 'siswa', '223', 'Y'),
(65, '212203013', '7975ff54fd83f31092e1fca81f45c889044bac97', 'siswa', '215', 'Y'),
(66, '212203012', 'cda5ba5aa7aae098f7e0a062cfcea1107e882829', 'siswa', '213', 'Y'),
(67, '212201011', '38e16cdb3c883cc53bcfd0f2c14d58a652ed1b80', 'siswa', '243', 'Y'),
(68, '212201010', '8871ba040feffc518e1582d6d4e299ba0ede60f2', 'siswa', '241', 'Y'),
(69, '212201009', '292571ac84cd5bafd864f177969f70f3bdbcbbd9', 'siswa', '227', 'Y'),
(70, '212201008', 'a7fd9db0633a11692c2c292df4d55facc5a65454', 'siswa', '212', 'Y'),
(71, '212201007', '6d0e678b191e0c1b6fae1f960fb5c670b2518d41', 'siswa', '203', 'Y'),
(72, '212201006', '187737ce0f089ae8f203ea8bbf20b35d2393d2ea', 'siswa', '202', 'Y'),
(73, '212201005', '0206175d6ebb6ae7d9ab921b1c25ce7fb5f78fbe', 'siswa', '199', 'Y'),
(74, '212201003', 'b6a5b58a32b25527960d6333b402027436e01145', 'siswa', '194', 'Y'),
(75, '212201002', 'ee7af9f22a9866271e088836614db7ed12f326fa', 'siswa', '189', 'Y'),
(76, '212201001', 'eeeaaf59216f33bfb62503b1deb4c755902bd1f9', 'siswa', '166', 'Y'),
(77, '202105025', '3259bf6645e14d56bb0687b17a13853402e825ea', 'siswa', '211', 'Y'),
(78, '202101024', 'c6dbef29ea0c1b995b9a7c620c898246e024b91f', 'siswa', '260', 'Y'),
(79, '202101023', 'bb50d786d433b24a6fe685853e0cbffd10ffbe22', 'siswa', '254', 'Y'),
(80, '202101022', 'bd6fbe1796c8570964b59c99fedfe8684107295d', 'siswa', '248', 'Y'),
(81, '202101021', 'd4e68e52a8bccd582ff796f1849001c2a49d6f75', 'siswa', '245', 'Y'),
(82, '202101020', 'f43d161bbff53d4bfb0fafae93b6de802555867f', 'siswa', '238', 'Y'),
(83, '202101019', '2426e183f1ad63dd5581d8ef1089009b160ec527', 'siswa', '236', 'Y'),
(84, '202101018', '1816f1bbb5b371e1808184765b4b7b29afd90604', 'siswa', '231', 'Y'),
(85, '202101017', 'f71b78194170fd45facf326007e1292d6f9476c8', 'siswa', '229', 'Y'),
(86, '202101016', 'a190af1a0a5c11a4a65c1ccafb5a6bdb9243102a', 'siswa', '228', 'Y'),
(87, '202101015', '49c79e70f7dbaff541d7c279542db319fdf7a909', 'siswa', '225', 'Y'),
(88, '202101014', '6eccc8ba66a60c1cdc6ea036c81a8151b4ff18f9', 'siswa', '220', 'Y'),
(89, '202101013', 'cffd5fcc9917e9b14a9f785c66cf1304bf483369', 'siswa', '219', 'Y'),
(90, '202101012', 'c16a31d9f2072df2c4db440ba1de3d7197dedaaf', 'siswa', '206', 'Y'),
(91, '202101009', '8049788824a79e4abe7e17d5c6a24d2a952a1f83', 'siswa', '193', 'Y'),
(92, '202101011', 'db4b509cafdb27f7b207ef9e08323319f51bc357', 'siswa', '198', 'Y'),
(93, '202101010', 'c093e9ab4347f707e6f7f2d1c6f86804b4c096ff', 'siswa', '197', 'Y'),
(94, '202101008', 'e8903a00afe33e56f027e0d52de2face57103a16', 'siswa', '192', 'Y'),
(95, '202101007', '2389f4ec7c5c1cdb2179f190e8eae313f5c4e45f', 'siswa', '179', 'Y'),
(96, '202101006', 'd271d720a3f190d40c60033d9063ff5b0a6b1a5c', 'siswa', '176', 'Y'),
(97, '202101005', '0b0d91eef0fc5c04923854ec4348027ac72c8248', 'siswa', '174', 'Y'),
(98, '202101004', '886ba09e851845e9a71dcb0768383cb7f1fe4bed', 'siswa', '170', 'Y'),
(99, '202101003', 'a56b671e7197c57da614dd2e584c0bd213daafe5', 'siswa', '162', 'Y'),
(100, '202101002', 'edf79dce2e17a7ee3aa0ca26efac46366b533c43', 'siswa', '160', 'Y'),
(101, '202101001', 'ec4117b44571f11739a12a62185d5be21de10a88', 'siswa', '158', 'Y'),
(102, '192003021', '660bb301d841e568090e0824526ef06760e57f31', 'siswa', '155', 'Y'),
(103, '192001018', 'b997afd47029d092f30aa6df9dcff4d86eaa393d', 'siswa', '263', 'Y'),
(104, '192001017', 'a29fa28d941c7bfc54b01259cde694e7cc6d612f', 'siswa', '258', 'Y'),
(105, '192001016', '9c819d6926bc8ef88810a598265ca7a93536fa23', 'siswa', '256', 'Y'),
(106, '192001015', 'cd8b6d003327d03b54309eb000aca0cd30b9b63d', 'siswa', '255', 'Y'),
(107, '192001014', '772cb917a5056838d1ecfb0285f08360ac21f6ce', 'siswa', '250', 'Y'),
(108, '192001013', '829a40a5a1984434c560bce8d9f2b6c412a59b41', 'siswa', '247', 'Y'),
(109, '192001012', '8cbcb8bb2dc181e53c1df4107e9f217faba0f525', 'siswa', '240', 'Y'),
(110, '192001011', '9caede82ed78734dfa3f40cefa2cb027fb6946ba', 'siswa', '235', 'Y'),
(111, '192001010', '5620ec8b56a42874a31467a4caac52c38d4e7e10', 'siswa', '222', 'Y'),
(112, '192001009', '4e61a1ff55e9aadcce1406348b033bedcae7a93c', 'siswa', '216', 'Y'),
(113, '192001007', '771fe99e1f62f4185e9642e7bc81224a5b11c99b', 'siswa', '196', 'Y'),
(114, '192001006', 'e8cd35cec2061a6307e874f21773e935c50d4c01', 'siswa', '195', 'Y'),
(115, '192001005', 'a47f31b4d8778d39e0c4fa0d67298a7ce7b0057e', 'siswa', '190', 'Y'),
(116, '192001004', 'c8b6d540d5544d211eeb2c1c3f96db598ac9d42c', 'siswa', '184', 'Y'),
(117, '192001003', '845556be2172c9b26611ca896017dd122f8aa7c1', 'siswa', '173', 'Y'),
(118, '181903026', '230a556c80311afaeb43b43b9837c87edc549d6a', 'siswa', '161', 'Y'),
(119, '181903027', '685f60c25655232ca0d308aa9fa5b5709a5ff3f6', 'siswa', '181', 'Y'),
(120, '192001002', '522c00995c34bb42a746b27a089a592127277797', 'siswa', '168', 'Y'),
(121, '192001001', '74c1f41423d6bf5eb321b3ee789a24219392dbaf', 'siswa', '156', 'Y'),
(122, '', '10a34637ad661d98ba3344717656fcc76209c2f8', 'siswa', '279', 'Y'),
(123, '161701001', '854080e0c102262ac5b807409179fd3d999e50fe', 'siswa', '267', 'Y'),
(124, '181901004', 'ad8890c9ed36727b1a24926561a304ad3d9fbc5a', 'siswa', '290', 'Y'),
(125, '181901003', '80e62e8603e040ec5696abb4a7e5a88065a95d37', 'siswa', '287', 'Y'),
(126, '181901002', '9636cbebed9bfeab3018c4af54702aa65f2fe6a7', 'siswa', '387', 'Y'),
(127, '181901003', '80e62e8603e040ec5696abb4a7e5a88065a95d37', 'siswa', '397', 'Y'),
(128, '181901001', '138f508c4fb4f6fdc0a9c52d87d0aa34ee6f1367', 'siswa', '385', 'Y'),
(129, '181901004', 'ad8890c9ed36727b1a24926561a304ad3d9fbc5a', 'siswa', '400', 'Y'),
(130, '181901005', 'fae19f306785c9f16861988669fa54c15b94a03e', 'siswa', '402', 'Y'),
(131, '181901006', '2a3dd47a1f41a2d92a4dec4f32191cf1987297f0', 'siswa', '407', 'Y'),
(132, '181901007', '8cccef8ddea326320120f74a653fa2e02478b82b', 'siswa', '420', 'Y'),
(133, '181901008', 'f35a7ec186e217e9bb7afdc6c8a2f8f8895aa757', 'siswa', '430', 'Y'),
(134, '181901009', 'cf9e22607318933ac1e415bf2c109e716620f0c1', 'siswa', '434', 'Y'),
(135, '181901010', '3cd2880e0f81544981fd98d74418a1caec539d56', 'siswa', '450', 'Y'),
(136, '181901011', '73479d4c55980e2916f7e167a46beb20308c1f03', 'siswa', '453', 'Y'),
(137, '181901012', 'cf61ad736722756fbb4c3545e3a273ce4cae4e0b', 'siswa', '462', 'Y'),
(138, '181901013', '67f5fbb8ae552f0f5326140740345c0671204a83', 'siswa', '466', 'Y'),
(139, '181901014', '82a982282453d9125e17c99ada828a2ea851f881', 'siswa', '473', 'Y'),
(140, '181901001', '138f508c4fb4f6fdc0a9c52d87d0aa34ee6f1367', 'siswa', '1201', 'Y'),
(141, 'raniag', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '2', 'Y'),
(142, 'animar', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '3', 'Y'),
(143, 'dedesu', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '4', 'Y'),
(144, 'idapur', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '5', 'Y');

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
(1, 'Pramuka'),
(2, 'Baca Tulis Al Quran'),
(3, 'Pertanian'),
(4, 'Qiroah'),
(5, 'Drumband'),
(6, 'Bulu Tangkis'),
(7, 'Tenis Meja'),
(8, 'Karawitan'),
(9, 'Catur');

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
(1, 'AJAT SUDRAJAT, S.Pd.I', '198005202014101001', NULL, '2', 'A'),
(2, 'Rani Agustiani, S.Pd.', '19890802 201903 2 00', NULL, '2', 'A'),
(3, 'Ani Mardiani, S.Pd. SD.', '198212312022212008', NULL, '2', 'A'),
(4, 'Dede Suganda, S.Pd. SD', '198301062022211002', NULL, '2', 'A'),
(5, 'Ida Purnawati, S.Pd.', '-', NULL, '2', 'A');

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
(5, 5, 'V'),
(6, 6, 'VI');

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
  `is_sikap` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `kelompok`, `tambahan_sub`, `kd_singkat`, `nama`, `is_sikap`) VALUES
(1, 'A', 'NO', 'PAI', 'Pendidikan Agama & Budi Pekerti', '0'),
(2, 'A', 'NO', 'PPKN', 'Pendidikan Pancasila dan Kewarganegaraan', '0'),
(3, 'A', 'NO', 'BINDO', 'Bahasa Indonesia', '0'),
(4, 'A', 'NO', 'MTK', 'Matematika', '0'),
(5, 'A', 'NO', 'IPA', 'Ilmu Pengetahuan Alam', '0'),
(6, 'A', 'NO', 'IPS', 'Ilmu Pengetahuan Sosial', '0'),
(7, 'A', 'NO', 'SBDP', 'Seni Budaya & Prakarya', '0'),
(8, 'A', 'NO', 'PJKES', 'Pendidikan Jasmani, Olahraga, dan Kesehatan', '0'),
(9, 'B', 'MULOK', 'BS', 'Bahasa Sunda', '0'),
(10, 'B', 'MULOK', 'BTA', 'Baca Tulis Al-Qur\'an', '0');

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
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tgl_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stat_data` enum('A','K','M','L') NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nis`, `nisn`, `nama`, `jk`, `tmp_lahir`, `tgl_lahir`, `agama`, `status`, `anakke`, `alamat`, `notelp`, `sek_asal`, `sek_asal_alamat`, `diterima_kelas`, `diterima_tgl`, `diterima_smt`, `ijazah_no`, `ijazah_thn`, `skhun_no`, `skhun_thn`, `ortu_ayah`, `ortu_ibu`, `ortu_alamat`, `ortu_notelp`, `ortu_ayah_pkj`, `ortu_ibu_pkj`, `wali`, `wali_alamat`, `notelp_rumah`, `wali_pkj`, `inputID`, `tgl_input`, `tgl_update`, `stat_data`, `foto`) VALUES
(1144, '212201001', '0149663115', 'ALISA MAHARANI', 'P', 'Tasikmalaya', '2014-10-25', 'Islam', 'An', 1, 'Kp. Ciputat', '', '', '', 'I', '2021-07-16', '', '', '', '', '', '', 'Aah Mutropah', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1145, '212201002', '3149800283', 'EDIS SAPUTRA', 'L', 'Tasikmalaya', '2014-08-31', 'Islam', 'An', 2, 'Kp. Gandasari', '', '', '', 'I', '2021-07-16', '', '', '', '', '', '', 'Adah', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1146, '212201003', '0149464855', 'HASNA LUTHFIA YASMIN', 'P', 'Tasikmalaya', '2014-06-05', 'Islam', 'An', 1, 'Kp. Bojong', '', '', '', 'I', '2021-07-16', '', '', '', '', '', '', 'Siti Hanifah Mutoharoh', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1147, '212201004', '3137746910', 'HELMI MAHARANI', 'P', 'Tasikmalaya', '2013-10-26', 'Islam', 'An', 1, 'Kp. Bojong', '', '', '', 'I', '2021-07-16', '', '', '', '', '', '', 'Euis Saadah', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1148, '212201005', '3144110668', 'JULI RAMADANI', 'P', 'Tasikmalaya', '2014-07-13', 'Islam', 'An', 2, 'Kp. Ciputat', '', '', '', 'I', '2021-07-16', '', '', '', '', '', '', 'Ida Maryani', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1149, '212201006', '3158970524', 'LALAN MAULANA RAKHMAN', 'L', 'Tasikmalaya', '2015-01-12', 'Islam', 'An', 1, 'Kp. Rancabakung', '', '', '', 'I', '2021-07-16', '', '', '', '', '', '', 'Ida Purnawati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1150, '212201007', '3149121928', 'LAURA RISMAYANTI', 'P', 'Tasikmalaya', '2014-05-08', 'Islam', 'An', 3, 'Kp. Gandasari', '', '', '', 'I', '2021-07-16', '', '', '', '', '', '', 'Aning', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1151, '212201008', '3140091793', 'MUHAMAD ABDUL JAMIL', 'L', 'Tasikmalaya', '2014-10-05', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'I', '2021-07-16', '', '', '', '', '', '', 'Mamay', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1152, '212201009', '3148516368', 'NAZWA NUR ANISA', 'P', 'Tasikmalaya', '2014-11-26', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'I', '2021-07-16', '', '', '', '', '', 'Pahrudin', 'D. Nia', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1153, '212201010', '3140236898', 'RIZA ALFATIH', 'L', 'Pati', '2014-12-01', 'Islam', 'An', 2, 'Kp. Samaguna', '', '', '', 'I', '2021-07-16', '', '', '', '', '', '', 'Rini Jumiarti', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1154, '212201011', '3132043148', 'SAFIRA KHOIRUNISA', 'P', 'Tasikmalaya', '2013-05-29', 'Islam', 'An', 4, 'Kp. Gandasari', '', '', '', 'I', '2021-07-16', '', '', '', '', '', '', 'Mulyani', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1155, '202101001', '3143301132', 'AFINA HAMDA SYAKHIRA', 'P', 'Tasikmalaya', '2014-04-03', 'Islam', 'An', 3, 'Kp. Bojong', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'RUHIMAT OYO SASMITA', 'SITI SOLIHATUL MUBAROK', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1156, '202101002', '3135090147', 'AHSANUL FAIZ', 'L', 'Tasikmalaya', '2013-09-16', 'Islam', 'An', 3, 'Kp. Gandasari', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'DEDI', 'JUBAEDAH', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1157, '202101003', '3126911586', 'AKSANAN NASA', 'L', 'Tasikmalaya', '2012-12-04', 'Islam', 'An', 3, 'Kp Gandasari', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'DEDE', 'ANI SURIANI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1158, '202101004', '3144543269', 'ANDINI AULIA', 'P', 'Tasikmalaya', '2014-01-29', 'Islam', 'An', 1, 'Kp Gandasari', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'SUNANDAR', 'IMAS', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1159, '202101005', '3130035180', 'ANISA KURNIAWAN', 'P', 'Tasikmalaya', '2013-03-14', 'Islam', 'An', 1, 'Kp Gandasari', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'SADUL', 'DEPI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1160, '202101006', '0147406219', 'ANITA FEBRIYANI', 'P', 'Tasikmalaya', '2014-02-14', 'Islam', 'An', 2, 'Kp. Bojong gandasari', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'DANA', 'SUMIATI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1161, '202101007', '3137960512', 'AZKA ABDUL RAHMAN', 'L', 'Tasikmalaya', '2013-03-09', 'Islam', 'An', 2, 'Kp ciputat', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'DEDE SURYANA', 'TITIN', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1162, '202101008', '3132868794', 'FAUZAN ZAENURIN', 'L', 'Cimahi', '2013-12-07', 'Islam', 'An', 2, 'Kp.Cicariang', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'SOBIRIN', 'NURHASANAH', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1163, '202101009', '3134833951', 'GINA NURHUDA', 'P', 'Tasikmalaya', '2013-04-15', 'Islam', 'An', 2, 'Kp Gandasari', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'ASEP SAEPUL HUDA', 'SUSILAWATI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1164, '202101010', '3136711881', 'IQBAL', 'L', 'Tasikmalaya', '2013-01-10', 'Islam', 'An', 3, 'Kp.Cicariang', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'LILI', 'SUPINI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1165, '202101011', '3133225093', 'ISNA AMALIA', 'P', 'Tasikmalaya', '2013-12-08', 'Islam', 'An', 2, 'Kp. Ciputat', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'ISA', 'SRI NANIN HARPINI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1166, '202101012', '3123165167', 'M AKHSAN FAUJI', 'L', 'Bekasi', '2012-10-27', 'Islam', 'An', 3, 'Kp. Ciputat', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'ROHYANA', 'SULASTRI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1167, '202101013', '3143670286', 'MUHAMMAD RAFKA NABIHAN KHOLIQ', 'L', 'Jakarta', '2014-02-16', 'Islam', 'An', 2, 'Kp Gandasari', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'MUHAMMAD FIRDAUS', 'EUIS KOMAYA', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1168, '202101014', '3132600953', 'MUHAMMAD RIZKI PRATAMA', 'L', 'Tasikmalaya', '2013-07-13', 'Islam', 'An', 2, 'Kp. Ciputat', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'KOSWARA', 'MUNZIAH', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1169, '202101015', '3131230199', 'NAIZAR MUAFA SAID', 'L', 'Tasikmalaya', '2013-10-29', 'Islam', 'An', 1, 'Kp. Bojong', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'NAIZAR MUAFA SAID', 'DIDAH NURMUHIBAH', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1170, '202101016', '3133870432', 'NIZAM', 'L', 'Tasikmalaya', '2013-06-16', 'Islam', 'An', 2, 'Kp. Gandasari', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'Maman Suparman', 'Waryanti', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1171, '202101017', '3136595874', 'NOVAL KAYSAN', 'L', 'Tasikmalaya', '2013-11-28', 'Islam', 'An', 1, 'Kp. Ciputat', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'ALWANI', 'DEDE UBED', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1172, '202101018', '3137134680', 'RADIT RADIANSYAH', 'L', 'Tasikmalaya', '2013-10-09', 'Islam', 'An', 3, 'Kp. Cicariang', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'SAJU', 'YANI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1173, '202101019', '0141746075', 'RESTU KIRANA', 'P', 'Tasikmalaya', '2014-01-21', 'Islam', 'An', 1, 'Kp. Samaguna', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'ANDI SUSANDI', 'CUCU MAHARANI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1174, '202101020', '0133828277', 'REVITA NUR ISTIQOMAH', 'P', 'Tasikmalaya', '2013-09-14', 'Islam', 'An', 6, 'Kp ciputat', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'SUNARTO', 'ENIN LASMINI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1175, '202101021', '3123786399', 'SANDI AULANI', 'L', 'Tasikmalaya', '2012-12-24', 'Islam', 'An', 2, 'Kp Gandasari', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'Slamet', 'Nining', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1176, '202101022', '0132743833', 'SATRIO', 'L', 'Tasikmalaya', '2013-04-20', 'Islam', 'An', 1, 'Kp. Samaguna', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'MARYANA', 'IDAH', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1177, '202101023', '3137229452', 'SOLAHUDIN', 'L', 'Tasikmalaya', '2013-04-30', 'Islam', 'An', 3, 'Kp Gandasari', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'MUSLIM', 'KARWATI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1178, '202101024', '3145817197', 'WANDI ASKAR', 'L', 'Tasikmalaya', '2014-02-08', 'Islam', 'An', 2, 'Kp Gandasari', '', '', '', 'II', '2021-07-16', '', '', '', '', '', 'SOMAN', 'DEDE IRA', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1179, '192001001', '3121384536', 'Abdulloh Khoerul Azam', 'L', 'Tasikmalaya', '2012-05-05', 'Islam', 'An', 1, 'Kp. Ciputat', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Abdul Soleh', 'Dewi', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1180, '192001002', '3122542062', 'Amanda Widaningsih', 'P', 'Tasikmalaya', '2012-12-23', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Asep Sudrajat', 'Wiwin', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1181, '192001024', '3129367426', 'Andika Pratama', 'L', 'Tasikmalaya', '2012-01-06', 'Islam', 'An', 1, 'Gandasari', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Tarman', 'Nira', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1182, '192001003', '3125514722', 'Anggia Puspita', 'P', 'Tasikmalaya', '2012-09-11', 'Islam', 'An', 3, 'Kp. Gandasari', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Wahyu', 'Heti R', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1183, '192001004', '3112114993', 'Deni Nanda Saputra', 'L', 'Tasikmalaya', '2011-07-22', 'Islam', 'An', 2, 'Kp. Gandasari', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Nana', 'Enur', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1184, '192001005', '0138853665', 'Elvira Nurfadilah', 'P', 'Tasikmalaya', '2013-04-23', 'Islam', 'An', 3, 'Kp. Ciputat', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Mahya', 'Onih', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1185, '192001006', '0124678533', 'Hendra Maulana', 'L', 'Tasikmalaya', '2012-07-10', 'Islam', 'An', 4, 'Kp. Ciputat', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Abdul Kodir', 'Henipah', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1186, '192001007', '3124967795', 'Ilham Nur Hidayat', 'L', 'Tasikmalaya', '2012-10-01', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Anhar', 'Neni Irnawati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1187, '192001008', '3123958946', 'M. Riyandi Ramadan', 'L', 'Tasikmalaya', '2012-08-08', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Aneng', 'Sopiah', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1188, '212203012', '3124264148', 'MUHAMAD ACEP PANJUL ANGGARA', 'L', 'TASIKMALAYA', '2012-12-26', 'Islam', 'An', 2, 'Kp. Bojong', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'ANWAR', 'NINA', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1189, '212203013', '0112744833', 'MUHAMAD AZRIEL KHOIRI', 'L', 'Tasikmalaya', '2011-10-23', 'Islam', 'An', 1, 'Kp. Sukahayu', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'DUDU IAPAR SIDIK', 'NURMALASARI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1190, '192001009', '3115421358', 'Muhamad Ilham Hamdani', 'L', 'Tasikmalaya', '2011-10-16', 'Islam', 'An', 2, 'Kp. Gandasari', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Caca Sudirman', 'Waway', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1191, '192001010', '3126781097', 'Nabila Septianingsih', 'P', 'Tasikmalaya', '2012-09-01', 'Islam', 'An', 1, 'Kp. Ciputat', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Asep Suhendar', 'Kusmiati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1192, '212203015', '3124153701', 'NADYA NURUL KHALIFAH', 'P', 'TASIKMALAYA', '2012-08-12', 'Islam', 'An', 1, 'KP CIANDUM', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'ADE HANAPIA', 'MARYATI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1193, '192001011', '3137764264', 'Raina Azzahra', 'P', 'Tasikmalaya', '2013-04-05', 'Islam', 'An', 2, 'Kp. Ciputat', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Ade', 'Rohmawati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1194, '192001012', '3121284451', 'Risma Ayu Lestari', 'P', 'Tasikmalaya', '2012-08-29', 'Islam', 'An', 3, 'Kp. Bojong Gandasari', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Tolib', 'Lilis Surtikawati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1195, '192001013', '0138828921', 'Sanusi Rahmatul Padjri', 'L', 'Tasikmalaya', '2013-01-15', 'Islam', 'An', 2, 'Ciputat', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Cecep Setiawan', 'Susi Nurmayasari', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1196, '192001014', '3128280369', 'Shinta Tiara', 'P', 'Tasikmalaya', '2012-09-29', 'Islam', 'An', 2, 'Kp. Bojong', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Heryanto', 'Entin Rusmiati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1197, '192001015', '3127725731', 'Sultan Pagar Alam', 'L', 'Tasikmalaya', '2012-04-27', 'Islam', 'An', 4, 'Kp. Gandasari', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Rizal Tanjung', 'Iis Kurniasih', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1198, '192001016', '3121330803', 'Syahril Abdullah Rifansyah', 'L', 'Jakarta', '2012-01-07', 'Islam', 'An', 5, 'Kp. Bojong Gandasari', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Arief Budiman', 'Laili Darmawati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1199, '192001017', '3127907899', 'Tiara Dewi', 'P', 'Cianjur', '2012-10-20', 'Islam', 'An', 2, 'Kp. Gandasari', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Agus Rinjani', 'Enok Sulatri', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1200, '192001018', '3129327492', 'Ziddan Yajid Romdhoni', 'L', 'Tasikmalaya', '2012-08-12', 'Islam', 'An', 3, 'Kp. Ciputat', '', '', '', 'III', '2021-07-16', '', '', '', '', '', 'Taofik Ismail', 'Sumarni', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1201, '181901001', '0114713463', 'Ali Pirdaus', 'L', 'Tasikmalaya', '2011-02-25', 'Islam', 'AK', 1, 'Kp. Gandasari', '', '', '', 'IV', '2021-07-16', 'IV', '', '', '', '', 'Suparman', 'Anih Rosita', '', '', '', '', '', '', '', '', 0, '2022-04-15 14:35:53', '0000-00-00 00:00:00', 'A', ''),
(1202, '181901002', '0124175694', 'Alya Khoiru Nisa', 'P', 'Cirebon', '2012-08-22', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Herman', 'Siti Rohmah', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1203, '181901003', '0103687714', 'Aris Nesa Pradana', 'L', 'Tasikmalaya', '2010-11-14', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Ade Nana Rusdiana', 'Riskawati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1204, '181901004', '0116215055', 'Chelsy Ramadhani', 'P', 'Tasikmalaya', '2011-08-01', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Agus Rahmat Hidayat', 'Aan Nuraeni', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1205, '181901005', '0118383093', 'Dede Ikbal', 'L', 'Tasikmalaya', '2011-02-19', 'Islam', 'An', 4, 'Kp. Gandasari', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Suhendar', 'Mudrikah', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1206, '181901006', '0116772633', 'Dian Ardiansah', 'L', 'Tasikmalaya', '2011-02-27', 'Islam', 'An', 1, 'Kp. Samaguna', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Marno', 'Risa Aifia', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1207, '181901007', '0117987305', 'Khoerul Anam', 'L', 'Tasikmalaya', '2011-05-09', 'Islam', 'An', 3, 'Kp. Gandasari', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Slamet', 'Nining', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1208, '181901008', '0112109611', 'Melda Maulidina', 'P', 'Tasikmalaya', '2011-11-10', 'Islam', 'An', 2, 'Kp. Ciputat', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Agus', 'Enung', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1209, '181901009', '0115483149', 'Muhamad Al Fariz', 'L', 'Tasikmalaya', '2011-04-02', 'Islam', 'An', 3, 'Kp. Gandasari', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Endang', 'Mulyani', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1210, '181901010', '0117910697', 'Nurul Aulia', 'P', 'Tasikmalaya', '2011-09-25', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Ajat', 'Ernawati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1211, '181901011', '0112935804', 'Rafa Fauzi Anugrah', 'L', 'Tasikmalaya', '2011-05-11', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Solehudin', 'Hendrawati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1212, '181901012', '0119031704', 'Rizki Aditia', 'L', 'Tasikmalaya', '2011-03-08', 'Islam', 'An', 5, 'Kp. Bojong/Gandasari', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Kusnandar', 'Nengsih', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1213, '181901013', '0117815603', 'Santi', 'P', 'Tasikmalaya', '2011-11-27', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Sapaat', 'Teti Nurjanah', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1214, '181901014', '0113966085', 'Siti Tazkiah Nur Inayah', 'P', 'Tasikmalaya', '2011-09-13', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'IV', '2021-07-16', '', '', '', '', '', 'Sobirin', 'Rika Parida', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1215, '171801003', '0101805132', 'A\'lman Ali Abrisyam', 'L', 'Tasikmalaya', '2010-01-26', 'Islam', 'An', 2, 'Kp. Ciputat', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Aa Gunawan', 'Euis Siti Khojanah', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1216, '192003021', '0108205778', 'A. Fajar Bajir', 'L', 'Tasikmalaya', '2010-11-05', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Arip Budiman', 'Dede Irma', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1217, '171801002', '0104041797', 'Aldi', 'L', 'Tasikmalaya', '2010-05-06', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Hendi', 'Nuryani', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1218, '171801004', '0101453108', 'Anisa Maharani', 'P', 'Tasikmalaya', '2010-12-02', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Rosidin', 'Ina Herlina', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1219, '171801005', '0101650004', 'Aulia', 'P', 'Tasikmalaya', '2010-07-29', 'Islam', 'An', 2, 'Kp. Ciputat', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Suhaya', 'Atin Suartini', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1220, '171801006', '0109373155', 'Deni', 'L', 'Tasikmalaya', '2010-12-11', 'Islam', 'An', 5, 'Kp. Ciputat', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Yusup Supriadi', 'Nani Suryani', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1221, '171801008', '0107890767', 'Lina Nuramalia', 'P', 'Tasikmalaya', '2010-10-23', 'Islam', 'An', 2, 'Kp. Bojong Gandasari', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Nur Aeni', 'Yanti', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1222, '171801009', '0103276578', 'M. Sopandi', 'L', 'Tasikmalaya', '2010-09-04', 'Islam', 'An', 3, 'Kp. Bojong', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Oman Rohman', 'Enok Sukmawati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1223, '171801010', '0109064739', 'Muhammad Arfit Ardiansyah', 'L', 'Pati', '2010-06-01', 'Islam', 'An', 1, 'Kp. Samaguna Gandasari', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Dwi Kuntoro', 'Rini Jumiarti', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1224, '171801012', '0095409541', 'Reza Herdiansyah Nugraha', 'L', 'Tasikmalaya', '2009-11-29', 'Islam', 'An', 1, 'Kp. Ciputat', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Dede Kosim', 'Asti Aryani', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1225, '171801013', '0108070396', 'Sigit Paujan', 'L', 'Tasikmalaya', '2010-10-16', 'Islam', 'An', 3, 'Kp. Gandasari', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Suhendar', 'Mudrikah', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1226, '171801015', '0103459624', 'Vita Deswita', 'P', 'Tasikmalaya', '2010-12-04', 'Islam', 'An', 1, 'Gandasari', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Jajang Jaelani', 'Sulastri', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1227, '171801014', '0105599012', 'Wildan Muhamad Dipar', 'L', 'Tasikmalaya', '2010-02-10', 'Islam', 'An', 1, 'Kp. Ciputat', '', '', '', 'V', '2021-07-16', '', '', '', '', '', 'Dodi', 'Susanti', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1228, '161701001', '0093543242', 'Afdal Kurniawan', 'L', 'Tasikmalaya', '2009-04-23', 'Islam', 'An', 1, 'Kp. Ciputat', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Harun', 'Euis Kurniasih', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1229, '161701002', '0097297800', 'Agus Septian', 'L', 'Tasikmalaya', '2009-08-17', 'Islam', 'An', 2, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Soman', 'Dede Ira', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1230, '181903026', '0109125600', 'AINA SHAHIDA TUSSOLIHAH', 'P', 'TASIKMALAYA', '2010-01-24', 'Islam', 'An', 2, 'Kp. Cicariang', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'ROHYANA', 'SULASTRI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1231, '161701003', '0098892550', 'Alea Natasya', 'P', 'Tasikmalaya', '2009-05-06', 'Islam', 'An', 2, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Wahyu', 'Eti', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1232, '161701004', '0091737831', 'Angga Saputra', 'L', 'Sumedang', '2009-07-31', 'Islam', 'An', 2, 'Kp. Samaguna', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Abel Syafrudin', 'Ratih Sulastri', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1233, '161701005', '0099805400', 'Anggi Maptuh Nurhuda', 'L', 'Tasikmalaya', '2009-05-03', 'Islam', 'An', 2, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Nasihin', 'Hendrayani', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1234, '181903027', '0096568403', 'Claricha Olivia', 'P', 'Tasikmalaya', '2009-09-06', 'Islam', 'An', 1, 'Kp. Cicariang', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Sesep', 'Yulia Yuningsih', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1235, '161701006', '0095208270', 'Derista Nurgiana', 'P', 'Tasikmalaya', '2009-09-28', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Tamyid', 'Heni', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1236, '161701007', '0092464592', 'Desti Yupti Aspiah', 'P', 'Tasikmalaya', '2009-07-27', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Epen', 'Teti', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1237, '161701008', '0094246330', 'Dimas Raya Rabbani', 'L', 'Tasikmalaya', '2009-08-31', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Muhammad Mahdi', 'Imas Suminar', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1238, '161701009', '0095879487', 'Epan Sopyan', 'L', 'Tasikmalaya', '2009-06-13', 'Islam', 'An', 2, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Solih', 'Lilis', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1239, '161701010', '0085595969', 'Kustian', 'L', 'Tasikmalaya', '2008-10-05', 'Islam', 'An', 2, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Sapri', 'Dede', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1240, '161701011', '0101598194', 'Leli Liani', 'P', 'Tasikmalaya', '2010-03-09', 'Islam', 'An', 0, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Iwan Setiawan', 'Atik', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1241, '161701012', '0098217728', 'Melati Amelia', 'P', 'Tasikmalaya', '2009-09-26', 'Islam', 'An', 0, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Agus', 'Yani', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1242, '202105025', '0096615102', 'MOH. ARDIYANA JAENAL MUTAKIN', 'L', 'TASIKMALAYA', '2009-08-01', 'Islam', 'An', 1, 'Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'MARDIAN', 'NONENG KARTIKASARI', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1243, '161701013', '0092250767', 'Muhamad Rizki Maulana', 'L', 'Tasikmalaya', '2009-05-15', 'Islam', 'An', 7, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Sapdi', 'Enung Rohmawati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1244, '161703025', '0094781470', 'Muhammad Yusril Bagja Nugraha', 'L', 'Tasikmalaya', '2009-06-01', 'Islam', 'An', 1, 'Sariganda', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Yosep Subagja', 'Yuyun Yuningsih', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1245, '161701014', '0096283572', 'Naila', 'P', 'Tasikmalaya', '2009-05-15', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Ajid', 'Dewi', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1246, '161701015', '0095936475', 'Nazril Rafael', 'L', 'Tasikmalaya', '2009-07-16', 'Islam', 'An', 2, 'Kp. Ciputat', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Sukmara', 'Neneng Nurjayanti', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1247, '161701016', '0093508048', 'Raditia Ramadan', 'L', 'Tasikmalaya', '2009-09-14', 'Islam', 'An', 2, 'Kp. Bojong', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Suhanda', 'Nanin', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1248, '161701017', '0098429589', 'Rahman Saleh', 'L', 'Tasikmalaya', '2009-07-14', 'Islam', 'An', 2, 'Kp. Bojong', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Abdul Manap', 'Yuyun Nurjanah', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1249, '161701018', '0096066186', 'Restu Setiadi', 'L', 'Tasikmalaya', '2009-11-03', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Dady Setiadi', 'Iceu Susilawati', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1250, '161701019', '0102703966', 'Salsabila', 'P', 'Tasikmalaya', '2010-03-14', 'Islam', 'An', 2, 'Kp. Bojong', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Hajar', 'Heni', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1251, '161701020', '0097074060', 'Selvita', 'P', 'Tasikmalaya', '2009-09-12', 'Islam', 'An', 2, 'Kp. Bojong Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Rosid Ependi', 'Mimin', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1252, '212206012', '0097954327', 'Sintya Maulani', 'P', 'Tasikmalaya', '2009-02-27', 'Islam', 'An', 2, 'Kp. Ciputat', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Entur Mastur', 'Tita Widiyanti', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1253, '161701022', '0098876224', 'Syifa Fadillah', 'P', 'Tasikmalaya', '2009-09-29', 'Islam', 'An', 1, 'Kp. Cicariang', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Agus Sumarna', 'Neng Rosita', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', ''),
(1254, '161701023', '0099979082', 'Yogi Aditya Supendi', 'L', 'Tasikmalaya', '2009-11-10', 'Islam', 'An', 1, 'Kp. Gandasari', '', '', '', 'VI', '2021-07-16', '', '', '', '', '', 'Teten Supendi', 'Eka Nurmala', '', '', '', '', '', '', '', '', 0, '2022-04-15 01:42:40', '0000-00-00 00:00:00', 'A', '');

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
(1, '20222', 'Y', 'ATANG SUDRAJAT, S.Pd.', '197206191998071001', '2022-06-25', '2022-06-25');

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
(1, '20222', 1, 4, 1),
(2, '20222', 1, 4, 2),
(3, '20222', 2, 6, 2),
(4, '20222', 2, 6, 3),
(5, '20222', 2, 6, 4),
(6, '20222', 2, 6, 5),
(7, '20222', 2, 6, 6),
(8, '20222', 2, 6, 7),
(9, '20222', 2, 6, 8),
(10, '20222', 2, 6, 9),
(11, '20222', 3, 3, 2);

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
(1, 1, 1144, 2022),
(2, 1, 1145, 2022),
(3, 1, 1146, 2022),
(4, 1, 1147, 2022),
(5, 1, 1148, 2022),
(6, 1, 1149, 2022),
(7, 1, 1150, 2022),
(8, 1, 1151, 2022),
(9, 1, 1152, 2022),
(10, 1, 1153, 2022),
(11, 1, 1154, 2022),
(12, 2, 1155, 2022),
(13, 2, 1156, 2022),
(14, 2, 1157, 2022),
(15, 2, 1158, 2022),
(16, 2, 1159, 2022),
(17, 2, 1160, 2022),
(18, 2, 1161, 2022),
(19, 2, 1162, 2022),
(20, 2, 1163, 2022),
(21, 2, 1164, 2022),
(22, 2, 1165, 2022),
(23, 2, 1166, 2022),
(24, 2, 1167, 2022),
(25, 2, 1168, 2022),
(26, 2, 1169, 2022),
(27, 2, 1170, 2022),
(28, 2, 1171, 2022),
(29, 2, 1172, 2022),
(30, 2, 1173, 2022),
(31, 2, 1174, 2022),
(32, 2, 1175, 2022),
(33, 2, 1176, 2022),
(34, 2, 1177, 2022),
(35, 2, 1178, 2022),
(36, 3, 1179, 2022),
(37, 3, 1180, 2022),
(38, 3, 1181, 2022),
(39, 3, 1182, 2022),
(40, 3, 1183, 2022),
(41, 3, 1184, 2022),
(42, 3, 1185, 2022),
(43, 3, 1186, 2022),
(44, 3, 1187, 2022),
(45, 3, 1188, 2022),
(46, 3, 1189, 2022),
(47, 3, 1190, 2022),
(48, 3, 1191, 2022),
(49, 3, 1192, 2022),
(50, 3, 1193, 2022),
(51, 3, 1194, 2022),
(52, 3, 1195, 2022),
(53, 3, 1196, 2022),
(54, 3, 1197, 2022),
(55, 3, 1198, 2022),
(56, 3, 1199, 2022),
(57, 3, 1200, 2022),
(58, 4, 1201, 2022),
(59, 4, 1202, 2022),
(60, 4, 1203, 2022),
(61, 4, 1204, 2022),
(62, 4, 1205, 2022),
(63, 4, 1206, 2022),
(64, 4, 1207, 2022),
(65, 4, 1208, 2022),
(66, 4, 1209, 2022),
(67, 4, 1210, 2022),
(68, 4, 1211, 2022),
(69, 4, 1212, 2022),
(70, 4, 1213, 2022),
(71, 4, 1214, 2022),
(72, 5, 1215, 2022),
(73, 5, 1216, 2022),
(74, 5, 1217, 2022),
(75, 5, 1218, 2022),
(76, 5, 1219, 2022),
(77, 5, 1220, 2022),
(78, 5, 1221, 2022),
(79, 5, 1222, 2022),
(80, 5, 1223, 2022),
(81, 5, 1224, 2022),
(82, 5, 1225, 2022),
(83, 5, 1226, 2022),
(84, 5, 1227, 2022),
(85, 6, 1228, 2022),
(86, 6, 1229, 2022),
(87, 6, 1230, 2022),
(88, 6, 1231, 2022),
(89, 6, 1232, 2022),
(90, 6, 1233, 2022),
(91, 6, 1234, 2022),
(92, 6, 1235, 2022),
(93, 6, 1236, 2022),
(94, 6, 1237, 2022),
(95, 6, 1238, 2022),
(96, 6, 1239, 2022),
(97, 6, 1240, 2022),
(98, 6, 1241, 2022),
(99, 6, 1242, 2022),
(100, 6, 1243, 2022),
(101, 6, 1244, 2022),
(102, 6, 1245, 2022),
(103, 6, 1246, 2022),
(104, 6, 1247, 2022),
(105, 6, 1248, 2022),
(106, 6, 1249, 2022),
(107, 6, 1250, 2022),
(108, 6, 1251, 2022),
(109, 6, 1252, 2022),
(110, 6, 1253, 2022),
(111, 6, 1254, 2022);

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
  `id_guru` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `id_mapel` int(6) NOT NULL,
  `tingkat` int(2) NOT NULL,
  `semester` enum('0','1','2') NOT NULL,
  `no_kd` varchar(5) NOT NULL,
  `jenis` enum('P','K','SSp','SSo') NOT NULL,
  `bobot` int(2) NOT NULL,
  `nama_kd` text NOT NULL
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
(9, 0, 0, 0, '0', '', 'SSp', 0, 'menjalankan ibadah sesuai dengan agamanya		'),
(10, 0, 0, 0, '0', '', 'SSp', 0, 'memberi salam pada saat awal dan akhir kegiatan		'),
(11, 0, 0, 0, '0', '', 'SSp', 0, 'bersyukur atas nikmat dan karunia Tuhan Yang Maha Esa		'),
(12, 0, 0, 0, '0', '', 'SSp', 0, 'mensyukuri kemampuan manusia dalam mengendalikan diri		'),
(13, 0, 0, 0, '0', '', 'SSp', 0, 'bersyukur ketika berhasil mengerjakan sesuatu		'),
(14, 0, 0, 0, '0', '', 'SSp', 0, 'berserah diri (tawakal) kepada Tuhan setelah berikhtiar atau melakukan usaha		'),
(15, 0, 0, 0, '0', '', 'SSp', 0, 'memelihara hubungan baik dengan sesama umat		'),
(16, 0, 0, 0, '0', '', 'SSp', 0, 'bersyukur sebagai bangsa Indonesia		'),
(17, 0, 0, 0, '0', '', 'SSp', 0, 'menghormati orang lain yang menjalankan ibadah sesuai dengan agamanya		\r\n'),
(18, 1, 1, 4, '2', '3.1', 'P', 0, 'mengetahui Allah itu ada melalui pengamatan terhadap makhluk ciptaan-Nya di sekitar rumah dan sekolah'),
(19, 1, 1, 4, '2', '3.4', 'P', 0, 'memahami tata cara bersuci dari hadats kecil dan hadats besar sesuai ketentuan syariat Islam'),
(20, 1, 1, 4, '2', '3.7', 'P', 0, 'memahami sikap santun dan menghargai teman, baik di rumah, sekolah, dan di masyarakat sekitar'),
(21, 1, 1, 4, '2', '3.8', 'P', 0, 'memahami sikap rendah hati sebagai implementasidari pemahaman Q.S. al-Isra/17:37'),
(22, 1, 1, 4, '2', '3.12', 'P', 0, 'mengetahui kisah keteladan Nabi Harun a.s.'),
(23, 1, 1, 4, '2', '3.13', 'P', 0, 'mengetahui kisah keteladan Nabi Musa a.s.'),
(24, 1, 1, 4, '2', '3.2', 'P', 0, 'mengerti makna iman kepada malaikat-malaikat Allah berdasarkan pengamatan terhadap dirinya dan alam sekitar'),
(25, 1, 2, 4, '2', '3.2', 'P', 0, 'memahami pelaksanaan kewajiban dan hak sebagai warga masyarakat dalam kehidupan sehari-hari'),
(26, 1, 2, 4, '2', '3.3', 'P', 0, 'menganalisis secara sederhana keberagaman umat beragama dalam masyarakat'),
(27, 1, 2, 4, '2', '3.4', 'P', 0, 'mendeskripsikan berbagai bentuk keberagaman suku bangsa, sosial, dan budaya di Indonesia yang terikat persatuan dan kesatuan'),
(28, 2, 2, 6, '2', '3.1', 'P', 0, 'menganalisis penerapan nilai-nilai Pancasila dalam kehidupan sehari-hari'),
(29, 2, 2, 6, '2', '3.2', 'P', 0, 'menganalisis pelaksanaan kewajiban, hak, dan tanggung jawab sebagai warga negara beserta dampaknya dalam kehidupan sehari-hari'),
(30, 2, 2, 6, '2', '3.4', 'P', 0, 'menelaah persatuan dan kesatuan terhadap kehidupan berbangsa dan bernegara beserta dampaknya'),
(31, 2, 2, 6, '2', '4.1', 'K', 0, 'menyajikan hasil analisis pelaksanaan nilai-nilai Pancasila dalam kehidupan sehari-hari'),
(32, 2, 2, 6, '2', '4.2', 'K', 0, 'menyajikan hasil analisis pelaksanaan kewajiban, hak, dan tanggung jawab sebagai warga masyarakat beserta dampaknya dalam kehidupan sehari-hari'),
(33, 2, 2, 6, '2', '4.4', 'K', 0, 'menyajikan hasil telaah persatuan dan kesatuan terhadap kehidupan berbangsa dan bernegara beserta dampaknya'),
(34, 2, 3, 6, '2', '3.3', 'P', 0, 'menggali isi teks pidato yang didengar dan dibaca'),
(35, 2, 3, 6, '2', '3.7', 'P', 0, 'memperkirakan informasi yang dapat diperoleh dari teks nonfiksi sebelum membaca (hanya berdasarkan membaca judulnya saja)'),
(36, 2, 3, 6, '2', '3.8', 'P', 0, 'menggali informasi yang terdapat pada teks nonfiksi'),
(37, 2, 3, 6, '2', '3.9', 'P', 0, 'menelusuri tuturan dan tindakan tokoh serta penceritaan penulis dalam teks fiksi'),
(38, 2, 3, 6, '2', '4.3', 'K', 0, 'menyampaikan pidato hasil karya pribadi dengan menggunakan kosakata baku dan kalimat efektif sebagai bentuk ungkapan diri'),
(39, 2, 3, 6, '2', '4.7', 'K', 0, 'menyampaikan kemungkinan informasi yang diperoleh berdasarkan membaca judul teks nonfiksi secara lisan, tulis, dan visual'),
(40, 2, 3, 6, '2', '4.8', 'K', 0, 'menyampaikan hasil membandingkan informasi yang diiharapkan dengan informasi yang diperoleh setelah membaca teks nonfiksi secara lisan, tulis, dan visual'),
(41, 2, 3, 6, '2', '4.9', 'K', 0, 'menyampaikan penjelasan tentang tuturan dan tindakan tokoh serta penceritaan penulis dalam teks fiksi secara lisan, tulis, dan visual'),
(42, 2, 4, 6, '2', '3.6', 'P', 0, 'membandingkan prisma, tabung, limas, kerucut, dan bola'),
(43, 2, 4, 6, '2', '3.7', 'P', 0, 'menjelaskan bangun ruang yang merupakan gabungan dari beberapa bangun ruang, serta luas permukaan dan volumenya'),
(44, 2, 4, 6, '2', '3.8', 'P', 0, 'menjelaskan dan membandingkan modus, median, dan mean dari data tunggal untuk menentukan nilai mana yang paling tepat mewakili data'),
(45, 2, 4, 6, '2', '4.6', 'K', 0, 'mengidentifikasi prisma, tabung, limas, kerucut, dan bola'),
(46, 2, 4, 6, '2', '4.7', 'K', 0, 'mengidentifikasi bangun ruang yang merupakan gabungan dari beberapa bangun ruang, serta luas permukaan dan volumenya. untuk menyelesaikan masalah'),
(47, 2, 4, 6, '2', '4.8', 'K', 0, 'menyelesaikan masalah yang berkaitan dengan modus, median, dan mean dari data tunggal dalam menyelesaikan masalah'),
(48, 2, 5, 6, '2', '3.2', 'P', 0, 'menghubungkan ciri pubertas pada laki-laki dan perempuan dengan kesehatan reproduksi'),
(49, 2, 5, 6, '2', '3.7', 'P', 0, 'Menjelaskan sistem tata surya dan karakteristik anggota tata surya'),
(50, 2, 5, 6, '2', '4.2', 'K', 0, 'menyajikan karya tentang cara menyikapi ciri-ciri pubertas yang dialami'),
(51, 2, 5, 6, '2', '4.7', 'K', 0, 'Membuat model sistem tata surya'),
(52, 2, 6, 6, '2', '3.1', 'P', 0, 'mengidentifikasi karakteristik geografis dan kehidupan sosial budaya, ekonomi, politik di wilayah ASEAN'),
(53, 2, 6, 6, '2', '3.2', 'P', 0, 'menganalisis perubahan sosial budaya dalam rangka modernisasi bangsa Indonesia'),
(54, 2, 6, 6, '2', '3.3', 'P', 0, 'menganalisis posisi dan peran Indonesia dalam kerja sama di bidang ekonomi, politik, sosial, budaya, teknologi, dan pendidikan dalam lingkup ASEAN'),
(55, 2, 6, 6, '2', '3.4', 'P', 0, 'memahami makna proklamasi kemerdekaan, upaya mempertahankan kemerdekaan, dan upaya mengembangkan kehidupan kebangsaan yang sejahtera'),
(56, 2, 6, 6, '2', '4.1', 'K', 0, 'menyajikan hasil identifikasi karakteristik geografis dan kehidupan sosial budaya, ekonomi, dan politik di wilayah ASEAN'),
(57, 2, 6, 6, '2', '4.2', 'K', 0, 'menyajikan hasil analisis mengenai perubahan sosial budaya dalam rangka modernisasi bangsa Indonesia'),
(58, 2, 6, 6, '2', '4.3', 'K', 0, 'menyajikan hasil analisis tentang posisi dan peran Indonesia dalam kerja sama di bidang ekonomi, politik, sosial, budaya, teknologi, dan pendidikan dalam lingkup ASEAN'),
(59, 2, 6, 6, '2', '4.4', 'K', 0, 'menyajikan laporan tentang makna proklamasi kemerdekaan, upaya mempertahankan kemerdekaan dan upaya mengembangkan kehidupan kebangsaan yang sejahtera'),
(60, 2, 7, 6, '2', '3.2', 'P', 0, 'memahami interval nada'),
(61, 2, 7, 6, '2', '4.2', 'K', 0, 'memainkan interval nada melalui lagu dan alat musik'),
(62, 2, 8, 6, '2', '3.6', 'P', 0, 'memahami rangkaian tiga pola gerak dominan (bertumpu, bergantung, keseimbangan, berpindah/ lokomotor, tolakan, putaran, ayunan, melayang, dan mendarat) dengan konsisten, tepat dan terkontrol dalam aktivitas senam'),
(63, 2, 8, 6, '2', '3.7', 'P', 0, 'memahami penggunaan variasi dan kombinasi gerak dasar rangkaian langkah dan ayunan lengan mengikuti irama (ketukan) tanpa/ dengan musik dalam aktivitas gerak berirama'),
(64, 2, 8, 6, '2', '3.8', 'P', 0, 'memahami keterampilan salah satu gaya renang dan dasar-dasar penyelamatan diri'),
(65, 2, 8, 6, '2', '3.9', 'P', 0, 'memahami perlunya pemeliharaan kebersihan alat reproduksi'),
(66, 2, 8, 6, '2', '4.6', 'K', 0, 'mempraktikkan rangkaian tiga pola gerak dominan (bertumpu, ber gantung, keseimbangan, berpindah/ lokomotor, tolakan, putaran, ayunan, melayang, dan mendarat) dengan konsisten, tepat dan terkontrol dalam aktivitas senam'),
(67, 2, 8, 6, '2', '4.7', 'K', 0, 'mempraktikkan penggunaan variasi dan kombinasi gerak dasar rangkaian langkah dan ayunan lengan mengikuti irama (ketukan) tanpa/ dengan musik dalam aktivitas gerak berirama'),
(68, 2, 8, 6, '2', '4.8', 'K', 0, 'mempraktikkan keterampilan salah satu gaya renang dan dasar-dasar penyelamatan diri'),
(69, 2, 8, 6, '2', '4.9', 'K', 0, 'memaparkan perlunya pemeliharaan kebersihan alat reproduksi');

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
(0, '20222', 'h', 1, 18, 1201, 80),
(0, '20222', 'h', 1, 18, 1202, 80),
(0, '20222', 'h', 1, 18, 1203, 80),
(0, '20222', 'h', 1, 18, 1204, 80),
(0, '20222', 'h', 1, 18, 1205, 80),
(0, '20222', 'h', 1, 18, 1206, 80),
(0, '20222', 'h', 1, 18, 1207, 80),
(0, '20222', 'h', 1, 18, 1208, 80),
(0, '20222', 'h', 1, 18, 1209, 80),
(0, '20222', 'h', 1, 18, 1210, 80),
(0, '20222', 'h', 1, 18, 1211, 80),
(0, '20222', 'h', 1, 18, 1212, 80),
(0, '20222', 'h', 1, 18, 1213, 80),
(0, '20222', 'h', 1, 18, 1214, 80),
(0, '20222', 'h', 1, 19, 1201, 80),
(0, '20222', 'h', 1, 19, 1202, 0),
(0, '20222', 'h', 1, 19, 1203, 0),
(0, '20222', 'h', 1, 19, 1204, 0),
(0, '20222', 'h', 1, 19, 1205, 0),
(0, '20222', 'h', 1, 19, 1206, 0),
(0, '20222', 'h', 1, 19, 1207, 0),
(0, '20222', 'h', 1, 19, 1208, 0),
(0, '20222', 'h', 1, 19, 1209, 0),
(0, '20222', 'h', 1, 19, 1210, 0),
(0, '20222', 'h', 1, 19, 1211, 0),
(0, '20222', 'h', 1, 19, 1212, 0),
(0, '20222', 'h', 1, 19, 1213, 0),
(0, '20222', 'h', 1, 19, 1214, 0),
(0, '20222', 'h', 1, 20, 1201, 80),
(0, '20222', 'h', 1, 20, 1202, 0),
(0, '20222', 'h', 1, 20, 1203, 0),
(0, '20222', 'h', 1, 20, 1204, 0),
(0, '20222', 'h', 1, 20, 1205, 0),
(0, '20222', 'h', 1, 20, 1206, 0),
(0, '20222', 'h', 1, 20, 1207, 0),
(0, '20222', 'h', 1, 20, 1208, 0),
(0, '20222', 'h', 1, 20, 1209, 0),
(0, '20222', 'h', 1, 20, 1210, 0),
(0, '20222', 'h', 1, 20, 1211, 0),
(0, '20222', 'h', 1, 20, 1212, 0),
(0, '20222', 'h', 1, 20, 1213, 0),
(0, '20222', 'h', 1, 20, 1214, 0),
(0, '20222', 'h', 1, 21, 1201, 80),
(0, '20222', 'h', 1, 21, 1202, 0),
(0, '20222', 'h', 1, 21, 1203, 0),
(0, '20222', 'h', 1, 21, 1204, 0),
(0, '20222', 'h', 1, 21, 1205, 0),
(0, '20222', 'h', 1, 21, 1206, 0),
(0, '20222', 'h', 1, 21, 1207, 0),
(0, '20222', 'h', 1, 21, 1208, 0),
(0, '20222', 'h', 1, 21, 1209, 0),
(0, '20222', 'h', 1, 21, 1210, 0),
(0, '20222', 'h', 1, 21, 1211, 0),
(0, '20222', 'h', 1, 21, 1212, 0),
(0, '20222', 'h', 1, 21, 1213, 0),
(0, '20222', 'h', 1, 21, 1214, 0),
(0, '20222', 'h', 1, 23, 1201, 80),
(0, '20222', 'h', 1, 23, 1202, 0),
(0, '20222', 'h', 1, 23, 1203, 0),
(0, '20222', 'h', 1, 23, 1204, 0),
(0, '20222', 'h', 1, 23, 1205, 0),
(0, '20222', 'h', 1, 23, 1206, 0),
(0, '20222', 'h', 1, 23, 1207, 0),
(0, '20222', 'h', 1, 23, 1208, 0),
(0, '20222', 'h', 1, 23, 1209, 0),
(0, '20222', 'h', 1, 23, 1210, 0),
(0, '20222', 'h', 1, 23, 1211, 0),
(0, '20222', 'h', 1, 23, 1212, 0),
(0, '20222', 'h', 1, 23, 1213, 0),
(0, '20222', 'h', 1, 23, 1214, 0),
(0, '20222', 'h', 1, 24, 1201, 80),
(0, '20222', 'h', 1, 24, 1202, 0),
(0, '20222', 'h', 1, 24, 1203, 0),
(0, '20222', 'h', 1, 24, 1204, 0),
(0, '20222', 'h', 1, 24, 1205, 0),
(0, '20222', 'h', 1, 24, 1206, 0),
(0, '20222', 'h', 1, 24, 1207, 0),
(0, '20222', 'h', 1, 24, 1208, 0),
(0, '20222', 'h', 1, 24, 1209, 0),
(0, '20222', 'h', 1, 24, 1210, 0),
(0, '20222', 'h', 1, 24, 1211, 0),
(0, '20222', 'h', 1, 24, 1212, 0),
(0, '20222', 'h', 1, 24, 1213, 0),
(0, '20222', 'h', 1, 24, 1214, 0),
(0, '20222', 't', 1, 1, 1201, 80),
(0, '20222', 't', 1, 1, 1202, 0),
(0, '20222', 't', 1, 1, 1203, 0),
(0, '20222', 't', 1, 1, 1204, 0),
(0, '20222', 't', 1, 1, 1205, 0),
(0, '20222', 't', 1, 1, 1206, 0),
(0, '20222', 't', 1, 1, 1207, 0),
(0, '20222', 't', 1, 1, 1208, 0),
(0, '20222', 't', 1, 1, 1209, 0),
(0, '20222', 't', 1, 1, 1210, 0),
(0, '20222', 't', 1, 1, 1211, 0),
(0, '20222', 't', 1, 1, 1212, 0),
(0, '20222', 't', 1, 1, 1213, 0),
(0, '20222', 't', 1, 1, 1214, 0),
(0, '20222', 'a', 1, 1, 1201, 80),
(0, '20222', 'a', 1, 1, 1202, 0),
(0, '20222', 'a', 1, 1, 1203, 0),
(0, '20222', 'a', 1, 1, 1204, 0),
(0, '20222', 'a', 1, 1, 1205, 0),
(0, '20222', 'a', 1, 1, 1206, 0),
(0, '20222', 'a', 1, 1, 1207, 0),
(0, '20222', 'a', 1, 1, 1208, 0),
(0, '20222', 'a', 1, 1, 1209, 0),
(0, '20222', 'a', 1, 1, 1210, 0),
(0, '20222', 'a', 1, 1, 1211, 0),
(0, '20222', 'a', 1, 1, 1212, 0),
(0, '20222', 'a', 1, 1, 1213, 0),
(0, '20222', 'a', 1, 1, 1214, 0);

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
  `desk` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_nilai_sikap_so`
--

CREATE TABLE `t_nilai_sikap_so` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_guru_mapel` int(6) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `is_wali` enum('Y','N') DEFAULT NULL,
  `selalu` varchar(50) DEFAULT NULL,
  `mulai_meningkat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_nilai_sikap_sp`
--

CREATE TABLE `t_nilai_sikap_sp` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_guru_mapel` int(6) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `is_wali` enum('Y','N') DEFAULT NULL,
  `selalu` varchar(50) DEFAULT NULL,
  `mulai_meningkat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_nilai_tumbuh`
--

CREATE TABLE `t_nilai_tumbuh` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_ekstra` int(3) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `nilai` char(2) DEFAULT NULL,
  `desk` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, '', 1, 4),
(2, '2022', 1, 4),
(3, '2022', 2, 6);

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
-- Indeks untuk tabel `t_walikelas`
--
ALTER TABLE `t_walikelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT untuk tabel `m_ekstra`
--
ALTER TABLE `m_ekstra`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `m_guru`
--
ALTER TABLE `m_guru`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `m_kelas`
--
ALTER TABLE `m_kelas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `m_siswa`
--
ALTER TABLE `m_siswa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1255;

--
-- AUTO_INCREMENT untuk tabel `m_tumbuh`
--
ALTER TABLE `m_tumbuh`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tahun`
--
ALTER TABLE `tahun`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_guru_mapel`
--
ALTER TABLE `t_guru_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `t_kelas_siswa`
--
ALTER TABLE `t_kelas_siswa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT untuk tabel `t_kkm`
--
ALTER TABLE `t_kkm`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_mapel_kd`
--
ALTER TABLE `t_mapel_kd`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `t_naikkelas`
--
ALTER TABLE `t_naikkelas`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
