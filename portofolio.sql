-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 07:17 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `companyprofile`
--

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `nama`, `foto`, `isi`, `tgl_isi`) VALUES
(6, '#A5F1E9', 'colors_1670960056_A5F1E9.png', '<p style=\"line-height: 1;\"><font color=\"#ffffff\" style=\"background-color: rgb(255, 0, 0);\"><span style=\"font-weight: bolder;\">R: 165</span></font></p><p style=\"line-height: 1;\"><font color=\"#ffffff\"><font style=\"background-color: rgb(0, 255, 0);\"><span style=\"font-weight: bolder;\">G:&nbsp;241</span></font><span times=\"\" new=\"\" roman\";\"=\"\">﻿</span></font></p><p style=\"line-height: 1;\"><font color=\"#ffffff\" style=\"background-color: rgb(0, 0, 255);\"><span style=\"font-weight: bolder;\">B:&nbsp;233</span></font></p>', '2022-12-13 20:31:10'),
(7, '#393E46', 'colors_1670960050_393E46.png', '<p style=\"line-height: 1;\"><font color=\"#ffffff\" style=\"background-color: rgb(255, 0, 0);\"><span style=\"font-weight: bolder;\">R: 57</span></font></p><p style=\"line-height: 1;\"><font color=\"#ffffff\"><font style=\"background-color: rgb(0, 255, 0);\"><span style=\"font-weight: bolder;\">G:&nbsp;62</span></font><span times=\"\" new=\"\" roman\";\"=\"\">﻿</span></font></p><p style=\"line-height: 1;\"><font color=\"#ffffff\" style=\"background-color: rgb(0, 0, 255);\"><span style=\"font-weight: bolder;\">B:&nbsp;70</span></font></p>', '2022-12-13 20:32:06'),
(9, '#25316D', 'colors_1670960127_25316D.png', '<p style=\"line-height: 1;\"><font color=\"#ffffff\" style=\"background-color: rgb(255, 0, 0);\"><span style=\"font-weight: bolder;\">R: 37</span></font></p><p style=\"line-height: 1;\"><font color=\"#ffffff\"><font style=\"background-color: rgb(0, 255, 0);\"><span style=\"font-weight: bolder;\">G:&nbsp;49</span></font><span times=\"\" new=\"\" roman\";\"=\"\">﻿</span></font></p><p style=\"line-height: 1;\"><font color=\"#ffffff\" style=\"background-color: rgb(0, 0, 255);\"><span style=\"font-weight: bolder;\">B:&nbsp;109</span></font></p>', '2022-12-13 20:30:05'),
(10, '#FAEEE7', 'colors_1670960145_FAEEE7.png', '<p style=\"line-height: 1;\"><font style=\"background-color: rgb(255, 0, 0);\" color=\"#ffffff\"><b style=\"\">R: 250</b></font></p><p style=\"line-height: 1;\"><font color=\"#ffffff\"><font style=\"background-color: rgb(0, 255, 0);\"><b>G:&nbsp;238</b></font><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\">﻿</span></font></p><p style=\"line-height: 1;\"><font style=\"background-color: rgb(0, 0, 255);\" color=\"#ffffff\"><b style=\"\">B:&nbsp;231</b></font></p>', '2022-12-13 20:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `desain`
--

CREATE TABLE `desain` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desain`
--

INSERT INTO `desain` (`id`, `nama`, `foto`, `isi`, `tgl_isi`) VALUES
(8, 'Sleeper', 'desain_1671041379_sleeper.png', '<p>Sleeper adalah desain yang saya buat untuk produk kaos yang akan saya buat.</p>', '2022-12-14 18:13:01'),
(9, 'Logo Sate Bang Pentoy', 'desain_1671041394_sate.png', '<p>Logo ini saya buat untuk brand UMKM sate yang bertemakan kambing.</p>', '2022-12-14 18:13:36'),
(10, 'Logo Jeruk Bang Pentoy', 'desain_1671041656_pentoy.png', '<p>Logo ini saya buat untuk brand UMKM yang bertemakan jeruk.</p>', '2022-12-14 18:14:16'),
(11, 'Poster VIDE', 'desain_1671041701_poster.png', '<p>Poster ini saya buat untuk mempromosikan brand clothing yang akan saya buat.</p>', '2022-12-14 18:15:01'),
(12, 'Maskot Babi', 'desain_1671041758_babi.png', '<p>Maskot ini saya ciptakan untuk sebuah brand aplikasi makanan yang bernama \"BABIEUY\".</p>', '2022-12-14 18:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kutipan` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `kutipan`, `isi`, `tgl_isi`) VALUES
(18, 'ADRIAN RAVALIANO WIBOWO', 'Tentang Saya', '<p><img src=\"../gambar/5878a7ab84fb43402106c575658472fa.jpg\" style=\"width: 626px; float: left;\" class=\"note-float-left\"><span style=\"color: rgb(0, 0, 0); font-family: Montserrat; font-size: medium;\">Saya adalah seorang mahasiswa di Politeknik Negeri Media Kreatif Jakarta. Saya mengambil jurusan Teknologi Rekayasa Multimedia karena terdapat pembelajaran tentang website dan bahasa pemograman yang ingin saya pelajari agar dapat menjadi skill bagi masa depan saya.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: Montserrat; font-size: medium;\">Saya adalah seorang mahasiswa di Politeknik Negeri Media Kreatif Jakarta. Saya mengambil jurusan Teknologi Rekayasa Multimedia karena terdapat pembelajaran tentang website dan bahasa pemograman yang ingin saya pelajari agar dapat menjadi skill bagi masa depan saya.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: Montserrat; font-size: medium;\">Saya adalah seorang mahasiswa di Politeknik Negeri Media Kreatif Jakarta. Saya mengambil jurusan Teknologi Rekayasa Multimedia karena terdapat pembelajaran tentang website dan bahasa pemograman yang ingin saya pelajari agar dapat menjadi skill bagi masa depan saya.</span><span style=\"color: rgb(0, 0, 0); font-family: Montserrat; font-size: medium;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: Montserrat; font-size: medium;\"><br></span></p><p></p><p><br></p>', '2022-12-12 21:39:19'),
(22, 'SMK NEGERI 62 JAKARTA', 'Pendidikan Yang Telah Saya Tempuh', '<p></p><p><br><img src=\"../gambar/65ded5353c5ee48d0b7d48c591b8f430.jpg\" style=\"width: 626px; float: left;\" class=\"note-float-left\"><span style=\"color: rgb(0, 0, 0); font-family: Montserrat; font-size: medium;\">Saya bersekolah di SMKN 62 Jakarta dengan mengambil jurusan Multimedia. Saya mempelajari banyak hal disini seperti desain grafis, videografi, fotografi, dan 2D Animasi.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: Montserrat; font-size: medium;\">Pada mata pelajaran Desain Grafis, saya mempelajari banyak hal tentang segala bentuk dan segala jenis desain, seperti desain poster, desain mockup, maupun desain karakter. Saya banyak mengambil pelajaran dengan cara melihat, meniru, merubah dan saya kembangkan menjadi sebuah desain yang proposional.</span></p><p><font color=\"#000000\" face=\"Montserrat\" size=\"3\">Pada pelajaran videografi saya hanya sedikit belajar saat SMK, yaitu saat saya dan teman-teman membuat sebuah film pendek, yang mana membuat kami menjadi harus belajar tentang bagaimana menggunakan dan&nbsp;</font><span style=\"color: rgb(0, 0, 0); font-family: Montserrat; font-size: medium;\">membuat sebuah film. Disini saya juga sekalian&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: Montserrat; font-size: medium;\">mempelajari cara menggunakan kamera dengan tutorial yang ada di youtube.&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: Montserrat; font-size: medium;\">Pada animasi 2D, saya diajari guru dengan menggunakan software Adobe Animate, disana saya belajar cara menggerakan karakter, membuat objek, dan membuat sebuah animasi yang utuh</span></p>', '2022-12-12 21:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `judul`, `isi`, `tgl_isi`) VALUES
(6, 'PORTOFOLIO', '<p>Berisikan sedikit tentang saya</p>', '2022-12-14 17:15:04'),
(7, 'About', 'Seorang mahasiswa di Politeknik Media Kreatif Jakarta', '2022-12-14 17:15:33'),
(8, 'Kontak', '<p>+62 858-9131-3531</p>', '2022-12-14 17:16:05'),
(9, 'Sosial Media', '<p>Instagram: <b>@ravaliano</b></p>', '2022-12-14 17:21:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desain`
--
ALTER TABLE `desain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `desain`
--
ALTER TABLE `desain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
