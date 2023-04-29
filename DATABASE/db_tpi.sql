-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2023 at 11:40 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tpi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username`, `password`, `email`, `phone`, `hak_akses`) VALUES
(3, 'Jabal Rahman Suaib', 'amanjabal', 'e10adc3949ba59abbe56e057f20f883e', 'amanjabal55@gmail.com', 82271087136, 'pegawai'),
(5, 'Basse Isme, S.Kel', 'basse', '82d634c17781ce78c80cfe834447c99e', '', 0, 'admin'),
(6, 'Sarni, S.Pi', 'sarni', '9542a0d00bdd30afb4594aa59d98a2f6', '', 0, 'admin'),
(7, 'Sardin Adnan, S.Pi', 'sardin', 'e394434c5e7cbfac29e8ca5b25e3d6ee', '', 0, 'admin'),
(8, 'Maulid ST', 'maulid', '073e682524f5aa1c357ea7eef730a23b', '', 0, 'pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `nama_pemilik` varchar(250) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `nama_bank`, `nama_pemilik`, `no_rekening`, `gambar`) VALUES
(1, 'BCA', 'Adriano', '12342456', 'aa9d3ec4243250956a314578ff477f1b.png'),
(2, 'Mandiri', 'Adriano', '543643512', 'ef548aea6b56db9a723f9c7ac91d46da.png'),
(3, 'BRI', 'Adriano', '1356787', '778473b7e82f9e47ba2c284eb60a6dfb.png'),
(4, 'Mandiri Syariah', 'Adriano', '35323264642623', 'b8a5a05025b265f80b85ec7f2494e367.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id_brand` int(11) NOT NULL,
  `nama_brand` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id_brand`, `nama_brand`) VALUES
(9, 'Lajang'),
(11, 'Bandeng'),
(12, 'Tongkol'),
(13, 'Tuna Ekor Kuning'),
(14, 'Tembang'),
(15, 'Tenggiri'),
(17, 'Kembung'),
(18, 'Pari'),
(19, 'Selar'),
(20, 'Baronang'),
(21, 'Cakalang'),
(22, 'Kakap Merah'),
(23, 'Udang'),
(24, 'Kepiting'),
(25, 'Cumi-Cumi'),
(26, 'Tongkol Asap'),
(27, 'Pari Asap'),
(28, 'Tuna Asap'),
(29, 'Pari Kering');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carabelanja`
--

CREATE TABLE `tbl_carabelanja` (
  `id_carabelanja` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_carabelanja`
--

INSERT INTO `tbl_carabelanja` (`id_carabelanja`, `judul`, `deskripsi`) VALUES
(1, 'SMART TPI MOROWALI', '1. Pada halaman utama terdapat berbagai macam produk yang di tawarkan.\n<br>2. klik kategori pada daftar produk untuk melihat produk olahan dan ikan. pada daftar jenis ikan terdapat berbagai jenis ikan yang di tawarkan\n<br>3. klik tombol \"add to cart\" untuk memilih produk yang ingin anda beli. anda kemudian akan masuk ke halaman pembelian (shopping cart)\n<br>4.  pada halaman pembelian, klik tombol lanjut belanja jika anda masih ingin menambah produk yang ingin di beli\n<br>5.  anda akan kembali ke halaman produk, dan anda bisa melanjutkan proses belanja.<br>6. klik tombol \"update\" jika anda telah selesai menambah produk. kemudian klik tombol \"selesai belanja\"<br>7. isi data anda pada form data pembeli untuk proses transaksi\n<br>8. jika telah selesai, klik tombol \"kirim\". \n\nproses pembelian telah selesai, selanjutnya tunggu notifikasi informasi transaksi.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `id_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategorigaleri_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id_galeri`, `nama_galeri`, `gambar`, `kategorigaleri_id`) VALUES
(1, 'Jersea Motor', 'dec10698e402e54bbb65e199d1612127.gif', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hubungikami`
--

CREATE TABLE `tbl_hubungikami` (
  `id_hubungikami` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hp` bigint(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hubungikami`
--

INSERT INTO `tbl_hubungikami` (`id_hubungikami`, `nama`, `email`, `hp`, `alamat`, `pesan`, `tanggal`, `status`) VALUES
(7, 'jabal rahman suaib', 'amanjabal55@gmail.com', 82271087136, 'lamberea', 'mantap', '2021-05-06', 1),
(8, 'jabal rahman suaib', 'amanjabal55@gmail.com', 82271087136, 'lamberea', 'bagaiman cara belanja', '2021-05-06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hubungi_kami_kirim`
--

CREATE TABLE `tbl_hubungi_kami_kirim` (
  `id_hubungi_kami_kirim` int(11) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi_hubungi_kami_kirim` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hubungi_kami_kirim`
--

INSERT INTO `tbl_hubungi_kami_kirim` (`id_hubungi_kami_kirim`, `kepada`, `judul`, `isi_hubungi_kami_kirim`) VALUES
(32, 'amanjabal55@gmail.com', 'balas', 'napa bang ?'),
(31, 'amanjabal55@gmail.com', 'balas', 'napa bang ?'),
(33, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(34, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(35, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(36, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(37, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(38, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(39, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(40, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(41, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(42, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(43, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(44, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(45, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(46, 'amanjabal55@gmail.com', 'mama', ',a,a,a,'),
(47, 'amanjabal55@gmail.com', 'dsdds', 'ssdsd'),
(48, 'amanjabal55@gmail.com', 'dds', 'aaaddada'),
(49, 'amanjabal55@gmail.com', 'mamamama', 'da'),
(50, 'amanjabal55@gmail.com', 'dssdsds', 'sdsdsdsd'),
(51, 'amanjabal55@gmail.com', 'cscss', 'sssdsdsd'),
(52, 'amanjabal55@gmail.com', 'dssdd', 'sdddddddddddd<img><img><img><img><a></a>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jasapengiriman`
--

CREATE TABLE `tbl_jasapengiriman` (
  `id_jasapengiriman` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(10, 'Ikan'),
(11, 'Olahan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategorigaleri`
--

CREATE TABLE `tbl_kategorigaleri` (
  `id_kategorigaleri` int(11) NOT NULL,
  `nama_kategorigaleri` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategorigaleri`
--

INSERT INTO `tbl_kategorigaleri` (`id_kategorigaleri`, `nama_kategorigaleri`) VALUES
(1, 'Album Pertama'),
(2, 'Album Kedua');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kontak`
--

CREATE TABLE `tbl_kontak` (
  `id_kontak` int(11) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`id_kontak`, `alamat`, `phone`, `email`, `pass`) VALUES
(1, 'Tempat Pelelangan Ikan Kelurahan Matano Kecamatan Bungku Tengah, Morowali', 6282271087136, '', 'f55118121');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kota`
--

CREATE TABLE `tbl_kota` (
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kota`
--

INSERT INTO `tbl_kota` (`id_kota`, `nama_kota`) VALUES
(1, 'Purworejo'),
(2, 'Rembang'),
(3, 'Sleman'),
(4, 'Bantul'),
(5, 'Magelang'),
(6, 'Klaten'),
(7, 'Malang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id_logo` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `tittle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`id_logo`, `gambar`, `tittle`) VALUES
(1, '864a22f4dab1145bb94c46267d09ab52.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemasar`
--

CREATE TABLE `tbl_pemasar` (
  `id_pemasar` int(11) NOT NULL,
  `nama_pemasar` varchar(100) NOT NULL,
  `alamat_pemasar` varchar(100) NOT NULL,
  `no_hp_pemasar` varchar(30) NOT NULL,
  `nik_pemasar` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pemasar`
--

INSERT INTO `tbl_pemasar` (`id_pemasar`, `nama_pemasar`, `alamat_pemasar`, `no_hp_pemasar`, `nik_pemasar`) VALUES
(5, 'Misra', 'Matano', '085241217340', '0'),
(6, 'Amiati', 'Matano', '081245039279', '0'),
(7, 'Masria', 'Matano', '081355867463', '7206064204810002'),
(8, 'Sultan Zaenal		', 'Matano', '085396379188', '7206050507610028'),
(9, 'La Auna', 'Matano', '0', '0'),
(10, 'Nurbaya', 'Matano', '082292848584', '0'),
(11, 'Fatma Lahabu', 'Matano', '082191263720', '0'),
(12, 'Mustafa', 'Bente', '082148465152', '7313100704720003'),
(13, 'Fitriani', 'Bente', '081240738717', '01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjual`
--

CREATE TABLE `tbl_penjual` (
  `id_penjual` int(10) NOT NULL,
  `nama_nelayan` varchar(100) NOT NULL,
  `nelayan` varchar(20) NOT NULL,
  `nip_nelayan` varchar(50) NOT NULL,
  `pendapatan` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(11) NOT NULL,
  `id_penjual` int(10) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_nelayan` varchar(100) NOT NULL,
  `harga` bigint(15) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `nelayan` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `laku` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `lokasi` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `id_penjual`, `kode_produk`, `nama_nelayan`, `harga`, `stok`, `deskripsi`, `gambar`, `kategori_id`, `brand_id`, `nelayan`, `tanggal`, `laku`, `status`, `lokasi`) VALUES
(12, 0, 'TPI00003', 'asep', 40000, 100, 'makan banyak', 'c749182ce1129cf38d3b3e281a309e1c.jpg', 10, 10, 'asep', '2021-04-22', 0, 0, ''),
(13, 0, 'TPI00004', 'Akbar', 25000, 0, 'amsih segar', '1e5c1d33618db75fff239517fb99afbe.jpg', 10, 10, 'Akbar', '2021-04-22', 0, 0, ''),
(16, 0, 'TPI00007', 'luffy', 30000, 10, 'ikan boss', '6b1bfa29f9efc52c1bd6c3c8ec432f7b.jpg', 10, 30, '082271087136', '2021-04-28', 0, 0, ''),
(22, 0, 'TPI00013', 'Robin', 30000, 8, 'a', '102ed3560bb3c332aa25bab5cda37c1f.jpg', 10, 22, '082271087136', '2024-07-29', 0, 0, ''),
(23, 0, 'TPI00014', 'Brook', 20000, 63, 'a', 'cd94034d4a180c3f3ac2e837eeb96f63.jpg', 10, 21, '6282271087136', '2024-07-07', 6, 0, ''),
(24, 0, 'TPI00015', 'Jinbe', 25000, 10, 'a', '1064e8dddb371ce77f88076e3a7029ec.jpg', 10, 20, '6282271087136', '2024-07-12', 0, 0, ''),
(25, 0, 'TPI00016', 'Bambank', 40000, 82, 'a', 'e655941d686cdfa5b29e6e16055f8243.jpeg', 11, 9, '6282271087136', '2024-07-11', 19, 0, ''),
(27, 0, 'TPI00018', 'Akbar', 20000, 61, 'Bersih dan Masih segar', 'd08fe755f63be09139d18149ca768205.jpg', 11, 15, '6282271087136', '2024-07-24', 39, 0, ''),
(29, 0, 'TPI00020', 'Bambank', 20000, 15, 'aas', '771ee7a7d59512c682d9db9e3f40429b.jpg', 10, 29, '6285342167974', '2024-07-26', 44, 0, ''),
(31, 0, 'TPI00021', 'akbar', 10000, 89, 'Masih segar', '1ad953366cde30f3b719b034a94d9570.jpeg', 10, 9, '6282271087136', '2024-07-02', 11, 0, ''),
(32, 0, 'TPI00022', 'akbar', 20000, 853, 'Kondisi Segar', '6c2f9f58b97544650e1a6b8e8738aba1.png', 10, 31, '6282271087136', '2024-06-04', 147, 0, ''),
(33, 0, 'TPI00023', 'rahman', 7000, 981, 'Kondsi Segar', 'fcae17c8b6c77adb4f786ad5a39f87a9.png', 10, 22, '6282271087136', '2024-06-22', 689, 0, ''),
(35, 0, 'TPI00024', 'akbar', 15000, 979, 'segar dan masih hangat', 'f01b8a5ac24605c2441f8acc9ab7ff7e.jpg', 11, 12, '6282271087136', '2024-07-01', 21, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sambutan`
--

CREATE TABLE `tbl_sambutan` (
  `id_sambutan` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sambutan`
--

INSERT INTO `tbl_sambutan` (`id_sambutan`, `judul`, `deskripsi`) VALUES
(1, 'Kami Hadir Untuk Anda', 'isi sambutan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seo`
--

CREATE TABLE `tbl_seo` (
  `id_seo` int(11) NOT NULL,
  `tittle` varchar(50) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_seo`
--

INSERT INTO `tbl_seo` (`id_seo`, `tittle`, `keyword`, `description`) VALUES
(1, 'Dinas Perikanan', 'Perikanan, TPI', 'Sistem Informasi Perikanan Tempat Pelelangan Ikan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id_slider` int(11) NOT NULL,
  `tittle` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id_slider`, `tittle`, `description`, `gambar`, `status`) VALUES
(4, 'Tempat  Pelelangan Ikan3', '<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\">SMART TPI MATANO&nbsp;akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote>\" &gt;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;</blockquote><blockquote><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote>\" &gt;<blockquote><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\">SMART TPI MATANO&nbsp;akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;</blockquote><blockquote><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote>\" &gt;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;</blockquote><blockquote><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote>\" &gt;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\">SMART TPI MATANO&nbsp;akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote>\" &gt;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;</blockquote><blockquote><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote>\" &gt;<blockquote><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\">SMART TPI MATANO&nbsp;akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;</blockquote><blockquote><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote>\" &gt;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;</blockquote><blockquote><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote><blockquote>PIT Matano akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;&nbsp;<br><b>&nbsp;&nbsp;</b>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"></blockquote>', '8cd0479e0f0b9ff4637ec552b3291c5a.png', 1);
INSERT INTO `tbl_slider` (`id_slider`, `tittle`, `description`, `gambar`, `status`) VALUES
(5, 'Tempat  Pelelangan Ikan2', '<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\">SMART TPI MOROWALI akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;<br>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><br>', '023cf7f6effe8c3cfeef1bfe59ffa76b.png', 1),
(6, 'PELELANGAN IKAN BUNGKU', '<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\">SMART TPI MOROWALI akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;<br>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><br>\" &gt;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\">SMART TPI MOROWALI akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali.&nbsp; &nbsp;<br>Kabupaten Morowali adalah sebuah&nbsp; Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah&nbsp; sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal &gt;5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN. &nbsp;<img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><img alt=\"\"><br>', '607542d66c34b9a5db45151db3045f00.png', 1),
(8, 'TPI Matano', 'TPI Matano (Tempat Pelelangan IKan)', 'a113c0c4d160851d3300b06c913f5979.JPG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sosial_media`
--

CREATE TABLE `tbl_sosial_media` (
  `id_sosial_media` int(11) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `gp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sosial_media`
--

INSERT INTO `tbl_sosial_media` (`id_sosial_media`, `tw`, `fb`, `gp`) VALUES
(1, 'http://twitter.com', 'http://facebook.com', 'https://wa.me/6282271087136');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tentangkami`
--

CREATE TABLE `tbl_tentangkami` (
  `id_tentangkami` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tentangkami`
--

INSERT INTO `tbl_tentangkami` (`id_tentangkami`, `judul`, `deskripsi`) VALUES
(1, 'SMART TPI MOROWALI', 'SMART TPI MOROWALI akronim dari pasar ikan terintegrasi Matano merupakan suatu upaya mengoptimakan fungsi TPI bukan hanya sebagai tempat pelanggan ikan namun juga akan difungsikan sebagai sarana pusat informasi penjualan dan pemasaran hasil perikanan agar terwujud stabilitas harga dan kesejahtraan nelayan. Dalam waktu jangka pendek inovasi yang dilakukan adalah membuat ruang informasi pada TPI Matanao untuk menyajikan hasil-hasil perikanan yang dijual atau dipasarkan di wilayah Kecamatan Bungku Tengah dan Bungku Barat Kabupaten Morowali. Dengan demikian masyarakat dapat mengetahui hasil perikanan apa saja yang sedang dipasarkan dalam lingkup wilayah Kecamatan Bungku Tengah dan Bungku Barat karena tidak semua nelayan memasarkan hasil tangkapannya di TPI Kelurahan Matano. Melalui PIT Matano diharapkan pada di masa akan datang dapat mendukung Kota Bungku Smart City Kabupaten Morowali. Kabupaten Morowali adalah sebuah Kabupaten di Provinsi Sulawesi Tengah. Ibu kota Bungku. Kabupaten ini mempunyai luas sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa pada tahun 2020. Morowali adalah Kabupaten terluas ke- 10, Terpadat ke- 9, dan memiliki populasi terbanyak ke- 12 di Sulawesi Tengah. Kabupaten Morowali Terdiri dari 9 Kecamatan dan 133 desa/kelurahan. Morowali berbatasan dengan Morowali Utara di bagian barat laut, Sulawesi Selatan di bagian barat dan barat daya, serta Sulawesi Tenggara di timur laut. Kabupaten Morowali terdiri dari 9 Kecamatan, 7 Kelurahan dan 126 Desa dengan luas wilayah sebesar 3.037,04 km dan berpenduduk sebanyak 161.727 jiwa dengan sebaran penduduk 43 jiwa/km. Secara khusus Kecamatan Bungku Tengah jumlah penduduk 29.302 dan kecamatan Bungku Barat jumlah penduduk 14.061 jiwa. Sebagian besar wilayah Kabupaten Morowali merupakan wilayah nelayan (kelautan) yang memiliki potensi hasil perikanan cukup besar. Jumlah nelayan sebanyak 6.337 RTP, jumlah kapal 3 GT – 30 GT mencapai 6.207 unit yang didominasi kapal >5GT dan tergabung dalam Kelompok Usaha Bersama sebanyak 614 KUB. Jumlah pembudidaya ikan sebanyak 1.367 RTP dengan luas lahan budidaya 1.477, 95 Ha yang terdiri dari 975,5 Ha Budidaya Air Payau (Tambak), 496,25 Ha lahan budidaya air tawar yang tergabung dalam kelompok pembudidaya ikan (POKDAKAN) Sebanyak 128 POKDAKAN.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_detail`
--

CREATE TABLE `tbl_transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `kode_transaksi` bigint(15) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(25) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jml_stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi_detail`
--

INSERT INTO `tbl_transaksi_detail` (`id_transaksi_detail`, `kode_transaksi`, `kode_produk`, `nama_produk`, `harga`, `jumlah`, `jml_stok`) VALUES
(446, 20210518006, 'TPI00016', 'Lajang', '80000', 2, 0),
(447, 20210518006, 'TPI00020', 'Pari Kering', '40000', 2, 0),
(448, 20210518006, 'TPI00018', 'Tenggiri', '200000', 10, 0),
(451, 20210518008, 'TPI00020', 'Pari Kering', '200000', 10, 0),
(452, 20210518008, 'TPI00018', 'Tenggiri', '340000', 17, 0),
(453, 20210518008, 'TPI00016', 'Lajang', '320000', 8, 0),
(454, 20210518009, 'TPI00020', 'Pari Kering', '400000', 20, 0),
(459, 20210522001, 'TPI00020', 'Pari Kering', '20000', 1, 0),
(490, 20210608009, 'TPI00021', 'Lajang', '10000', 1, 0),
(492, 20210608011, 'TPI00021', 'Lajang', '10000', 1, 0),
(493, 20210608012, 'TPI00021', 'Lajang', '10000', 1, 0),
(495, 20210608016, 'TPI00021', 'Lajang', '10000', 1, 0),
(496, 20210608017, 'TPI00021', 'Lajang', '10000', 1, 0),
(497, 20210608018, 'TPI00021', 'Lajang', '10000', 1, 0),
(498, 20210608019, 'TPI00021', 'Lajang', '10000', 1, 0),
(499, 20210608020, 'TPI00021', 'Lajang', '10000', 1, 0),
(500, 20210608021, 'TPI00021', 'Lajang', '10000', 1, 0),
(505, 20210609001, 'TPI00022', 'Lure', '2920000', 146, 0),
(507, 20210609003, 'TPI00021', 'Lajang', '10000', 1, 0),
(508, 20210609004, 'TPI00022', 'Lure', '20000', 1, 0),
(510, 20210614001, 'TPI00021', 'Lajang', '10000', 1, 0),
(515, 20210615001, 'TPI00020', 'Pari Kering', '20000', 1, 0),
(516, 20210615002, 'TPI00023', 'Kakap Merah', '133000', 19, 0),
(517, 20210616001, 'TPI00024', 'Tongkol', '315000', 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_header`
--

CREATE TABLE `tbl_transaksi_header` (
  `id_transaksi_header` int(11) NOT NULL,
  `kode_transaksi` bigint(15) NOT NULL,
  `penerima` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `status` int(2) NOT NULL,
  `tanggal_transfer` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi_header`
--

INSERT INTO `tbl_transaksi_header` (`id_transaksi_header`, `kode_transaksi`, `penerima`, `email`, `alamat`, `no_telepon`, `status`, `tanggal_transfer`) VALUES
(494, 20210615001, 'pak kadis', '', 'lamberea', '+6285342167974', 1, '2021-06-16 19:55:32'),
(495, 20210615002, 'akbar', '', 'lamberea', '+6285342167974', 1, '2021-06-16 19:56:42'),
(496, 20210616001, 'akbar', '', 'lamberea', '+6285342167974', 1, '2021-06-17 06:52:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `tbl_carabelanja`
--
ALTER TABLE `tbl_carabelanja`
  ADD PRIMARY KEY (`id_carabelanja`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tbl_hubungikami`
--
ALTER TABLE `tbl_hubungikami`
  ADD PRIMARY KEY (`id_hubungikami`);

--
-- Indexes for table `tbl_hubungi_kami_kirim`
--
ALTER TABLE `tbl_hubungi_kami_kirim`
  ADD PRIMARY KEY (`id_hubungi_kami_kirim`);

--
-- Indexes for table `tbl_jasapengiriman`
--
ALTER TABLE `tbl_jasapengiriman`
  ADD PRIMARY KEY (`id_jasapengiriman`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_kategorigaleri`
--
ALTER TABLE `tbl_kategorigaleri`
  ADD PRIMARY KEY (`id_kategorigaleri`);

--
-- Indexes for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `tbl_pemasar`
--
ALTER TABLE `tbl_pemasar`
  ADD PRIMARY KEY (`id_pemasar`);

--
-- Indexes for table `tbl_penjual`
--
ALTER TABLE `tbl_penjual`
  ADD PRIMARY KEY (`id_penjual`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tbl_sambutan`
--
ALTER TABLE `tbl_sambutan`
  ADD PRIMARY KEY (`id_sambutan`);

--
-- Indexes for table `tbl_seo`
--
ALTER TABLE `tbl_seo`
  ADD PRIMARY KEY (`id_seo`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `tbl_sosial_media`
--
ALTER TABLE `tbl_sosial_media`
  ADD PRIMARY KEY (`id_sosial_media`);

--
-- Indexes for table `tbl_tentangkami`
--
ALTER TABLE `tbl_tentangkami`
  ADD PRIMARY KEY (`id_tentangkami`);

--
-- Indexes for table `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- Indexes for table `tbl_transaksi_header`
--
ALTER TABLE `tbl_transaksi_header`
  ADD PRIMARY KEY (`id_transaksi_header`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_carabelanja`
--
ALTER TABLE `tbl_carabelanja`
  MODIFY `id_carabelanja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_hubungikami`
--
ALTER TABLE `tbl_hubungikami`
  MODIFY `id_hubungikami` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_hubungi_kami_kirim`
--
ALTER TABLE `tbl_hubungi_kami_kirim`
  MODIFY `id_hubungi_kami_kirim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_jasapengiriman`
--
ALTER TABLE `tbl_jasapengiriman`
  MODIFY `id_jasapengiriman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_kategorigaleri`
--
ALTER TABLE `tbl_kategorigaleri`
  MODIFY `id_kategorigaleri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pemasar`
--
ALTER TABLE `tbl_pemasar`
  MODIFY `id_pemasar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_penjual`
--
ALTER TABLE `tbl_penjual`
  MODIFY `id_penjual` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_sambutan`
--
ALTER TABLE `tbl_sambutan`
  MODIFY `id_sambutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_seo`
--
ALTER TABLE `tbl_seo`
  MODIFY `id_seo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_sosial_media`
--
ALTER TABLE `tbl_sosial_media`
  MODIFY `id_sosial_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_tentangkami`
--
ALTER TABLE `tbl_tentangkami`
  MODIFY `id_tentangkami` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT for table `tbl_transaksi_header`
--
ALTER TABLE `tbl_transaksi_header`
  MODIFY `id_transaksi_header` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
