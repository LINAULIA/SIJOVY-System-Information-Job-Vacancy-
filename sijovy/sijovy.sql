-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2020 pada 16.03
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sijovy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `applicant`
--

CREATE TABLE `applicant` (
  `applicant_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `applicant_position` varchar(35) NOT NULL,
  `applicant_name` varchar(50) NOT NULL,
  `applicant_edu` varchar(10) NOT NULL,
  `applicant_speciality` varchar(100) NOT NULL,
  `applicant_cv` varchar(50) NOT NULL,
  `applicant_address` varchar(100) NOT NULL,
  `applicant_info` varchar(50) NOT NULL,
  `applicant_phone` varchar(15) NOT NULL,
  `applicant_email` varchar(50) NOT NULL,
  `submit_date` datetime NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `applicant`
--

INSERT INTO `applicant` (`applicant_id`, `id`, `applicant_position`, `applicant_name`, `applicant_edu`, `applicant_speciality`, `applicant_cv`, `applicant_address`, `applicant_info`, `applicant_phone`, `applicant_email`, `submit_date`, `action`) VALUES
(2, 240, 'Teller bank', 'Juliana Santi', 'Sarjana/S1', 'Saya merupakan orang yang tepat waktu', 'cv/4dd00bb6525e1b69570967b3001e1c86.pdf', 'Boyolali', 'Lulusan universitas diponegoro', '1234567890', 'juli@gmail.com', '2020-12-31 06:02:16', '0'),
(3, 241, 'Manajer', 'Lina Aulia', 'Sarjana/S1', 'Saya Memiliki wawasan yang luas', 'cv/4dd00bb6525e1b69570967b3001e1c86.pdf', 'Klaten', 'Lulusan universitas diponegoro', '6285360985', 'lina@gmail.com', '2020-12-23 06:05:05', '0'),
(4, 242, 'Account Officer', 'Dwi Nurfatma', 'Sarjana/S1', 'Saya Merupakan orang yang disiplin', 'cv/4dd00bb6525e1b69570967b3001e1c86.pdf', 'Temanggung', 'Lulusan universitas diponegoro', '4567898765', 'fatma@gmail.com', '2020-12-23 06:06:59', '0'),
(5, 243, 'Customer Service', 'Puput Werdiningsih', 'Sarjana/S1', 'saya tidak pantang menyerah', 'cv/4dd00bb6525e1b69570967b3001e1c86.pdf', 'Kabupaten Semarang', 'Lulusan universitas idonesia', '3234567890', 'puput@gmail.com', '2020-12-30 07:09:08', '0'),
(6, 244, 'CEO', 'Amaliah Safitri', 'Sarjana/S1', 'saya memiliki problem solving yang bagus', 'cv/4dd00bb6525e1b69570967b3001e1c86.pdf', 'Tanggerang', 'Lulusan universitas diponegoro', '7685360985', 'amal@gmail.com', '2020-12-30 03:10:44', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `applicant_job`
--

CREATE TABLE `applicant_job` (
  `id` int(11) NOT NULL,
  `jobname` varchar(50) NOT NULL,
  `requirement` text NOT NULL,
  `close_date` date NOT NULL,
  `img` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `applicant_job`
--

INSERT INTO `applicant_job` (`id`, `jobname`, `requirement`, `close_date`, `img`, `status`) VALUES
(239, 'Administrator', 'Minimal S1 Akuntansi', '2020-12-31', 'job/635ee4413a78f9b0fc7e2ac9c1916b59.jpg', 'Active'),
(240, 'Teller bank', 'Minimal S1 Akuntansi', '2020-12-31', 'job/be13f12121e75fdfc65581bc357c7e33.jpg', 'Active'),
(241, 'Manajer', 'Problem Solving yang bangus', '2020-12-31', 'job/23ad68a2f19a31440c836583de452b91.jpg', 'Active'),
(242, 'Account Officer', 'Minimal S1 Akuntansi', '2020-12-30', 'job/110c1ee2fb8e103cba90b0a0c8c8a95d.jpg', 'Active'),
(243, 'Customer Service', 'Problem Solving yang bangus', '2020-12-31', 'job/4f62f68183a40b62f49fc1ab846e5415.jpg', 'Active'),
(244, 'ceo', 'Pendidikan S2', '2020-12-31', 'job/a2c648c2692f12ec53b89a0874acb6dd.jpg', 'Active'),
(245, 'satpam', 'jago bela diri punya sertifikat', '2020-12-01', 'job/da9f8bf5fce7659f12573fcaafe319f5.jpg', 'Inactive'),
(246, 'Develpment', 'Menguasai bahasa pemrograman html', '2020-12-17', 'job/f42a84005b44d52fe92c55295f51c876.jpg', 'Active'),
(247, 'Manajer', 'Pendidikan S2', '2020-12-09', 'job/f32a3f8f763ad7c4945aa8662afbf108.jpg', 'Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `applicant_login`
--

CREATE TABLE `applicant_login` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `applicant_login`
--

INSERT INTO `applicant_login` (`id`, `username`, `password`) VALUES
(1, 'linaulia', '2ec5b917bdb49c272d6d50efddaa5d8c');

-- --------------------------------------------------------

--
-- Struktur dari tabel `applicant_scheduling`
--

CREATE TABLE `applicant_scheduling` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `pic` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `applicant_scheduling`
--

INSERT INTO `applicant_scheduling` (`id`, `applicant_id`, `alamat`, `tanggal`, `pic`, `telp`) VALUES
(16, 6, 'Jalan Prof. Soedarto. SH', '2020-12-02 09:24:00', 'Lina', '2222222222');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`applicant_id`),
  ADD KEY `fk_id` (`id`);

--
-- Indeks untuk tabel `applicant_job`
--
ALTER TABLE `applicant_job`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `applicant_login`
--
ALTER TABLE `applicant_login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `applicant_scheduling`
--
ALTER TABLE `applicant_scheduling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_applicant_id` (`applicant_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `applicant`
--
ALTER TABLE `applicant`
  MODIFY `applicant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `applicant_job`
--
ALTER TABLE `applicant_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT untuk tabel `applicant_login`
--
ALTER TABLE `applicant_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `applicant_scheduling`
--
ALTER TABLE `applicant_scheduling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `applicant`
--
ALTER TABLE `applicant`
  ADD CONSTRAINT `fk_id` FOREIGN KEY (`id`) REFERENCES `applicant_job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
