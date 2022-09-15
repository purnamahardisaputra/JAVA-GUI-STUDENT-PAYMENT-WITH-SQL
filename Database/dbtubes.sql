-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jul 2022 pada 15.30
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtubes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datamahasiswa`
--

CREATE TABLE `datamahasiswa` (
  `nama` varchar(30) NOT NULL,
  `nim` int(8) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `angkatan` varchar(3) NOT NULL,
  `semester` int(2) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `fakultas` varchar(50) NOT NULL,
  `usersmhs` varchar(30) DEFAULT NULL,
  `passmhs` varchar(20) DEFAULT NULL,
  `bppsemester` int(30) DEFAULT NULL,
  `infak` int(20) DEFAULT NULL,
  `beasiswa` int(20) DEFAULT NULL,
  `totalpembayaran` int(30) DEFAULT NULL,
  `statuspembayaran` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datamahasiswa`
--

INSERT INTO `datamahasiswa` (`nama`, `nim`, `email`, `gender`, `angkatan`, `semester`, `jurusan`, `fakultas`, `usersmhs`, `passmhs`, `bppsemester`, `infak`, `beasiswa`, `totalpembayaran`, `statuspembayaran`) VALUES
('Rifqi', 31231, '31231', 'null', '20', 5, 'S1 Teknik Elektro', 'Fakultas Telekomunikasi & Elektro', '31231', '2031231', 0, 0, 0, 0, 'Lunas'),
('Nadya Sedira', 2103010, 'a@gmail.com', 'Perempuan', '21', 3, 'S1 Teknik Industri', 'Fakultas Rekayasa Industri & Desain', '2103010', '212103010', 6000000, 200000, 0, 6200000, 'Belum Lunas'),
('Iyan Suyayan', 20001000, '20001000@gmail.com', 'null', '22', 4, 'S1 Sains Data', 'Fakultas Rekayasa Industri & Desain', '20001000', '2220001000', 0, 0, 0, 0, 'Lunas'),
('Ashunta Said', 20102010, '20102010@gmail.com', 'null', '19', 5, 'S1 Sistem Informasi', 'Fakultas Informatika', '20102010', '1920102010', 0, 0, 0, 0, 'Lunas'),
('Ahmad Subekti', 20102100, '20102100@gmail.com', 'Laki-Laki', '19', 4, 'S1 Software Engineering', 'Fakultas Rekayasa Industri & Desain', '20102100', '1920102100', 0, 0, 0, 0, 'Lunas'),
('Kian Santang', 20102122, '20102122@ittelkom-pwt.ac.id', 'Laki-Laki', '18', 4, 'S1 Software Engineering', 'Fakultas Informatika', '20102122', '1820102122', 0, 0, 0, 0, 'Lunas'),
('Purnama Hardi Saputra', 20102123, '20102123@ittelkom-pwt.ac.id', 'Laki-Laki', '20', 5, 'S1 Teknik Informatika', 'Fakultas Informatika', 'ardi', 'ardie', 0, 200000, 1500000, -1300000, 'Di Kreditkan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `no` int(5) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`no`, `user`, `pass`) VALUES
(1, 'purnama', 'purnama'),
(2, 'admin', 'admin'),
(3, 'alfardhan', 'alfardhan'),
(4, 'dewa', 'dewa'),
(5, 'imam', 'imam');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datamahasiswa`
--
ALTER TABLE `datamahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
