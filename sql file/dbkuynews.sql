-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 04:12 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17741294_kuynews`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'phpgurukulofficial@gmail.com', 1, '2018-05-27 17:51:00', '2018-10-24 18:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Politik', 'Berita Politik', '2021-10-08 10:28:09', '2021-10-07 18:41:07', 1),
(3, 'Olahraga', 'Berita Olahraga', '2021-10-08 10:35:09', '2021-10-08 11:11:55', 1),
(5, 'Kesehatan', 'Berita Kesehatan', '2021-10-08 05:32:58', '2018-06-14 05:33:41', 1),
(6, 'Otomotif', 'Berita Otomotif', '2021-10-08 15:46:09', '2021-10-08 13:17:14', 1),
(7, 'Pendidikan', 'Berita Pendidikan', '2021-10-08 15:46:22', '2021-10-08 13:18:23', 1),
(8, 'Ekonomi', 'Berita Ekonomi', '2021-10-08 15:46:22', '2021-10-08 13:17:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, '12', 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 11:06:22', 0),
(2, '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 11:25:56', 1),
(3, '7', 'ABC', 'abc@test.com', 'This is sample text for testing.', '2018-11-21 11:27:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px; background-color: rgb(255, 255, 255);\">\r\n	<section class=\"pa-4\">\r\n\r\n		<div class=\"mt-2 mb-5\">\r\n			<h3 class=\"black-color--text mb-3\">Our Works</h3>\r\n			<p class=\"black-color--text line-height-base\">\r\n				Hai semua, Terima Kasih sudah mengujungi web kita. Kami selaku CEO dan CTO serta karyawan dari Catering Maju Jaya mengucapkan semoga kalian puas dengan website ini dan dapat menggunakannya dengan baik.<br>\r\n				Sedikit Cerita mengenai Catering Maju Jaya. Catering Maju Jaya diciptakan oleh 2 orang yang sekarang menjabat sebagai CEO dan CTO di Catering Maju Jaya. Mereka mengembangkan usaha ini dengan tujuan mendapatkan nilai dari mata kuliah PTI di UNIVERSITAS MULTIMEDIA NUSANTARA.<br>\r\n				Usaha Catering Maju Jaya ini kami harap menjadi usaha yang sangat sukses di Tangerang dan akhirnya melebarkan sayap ke seluruh nusantara dan menjadi catering nomor 1 di Indonesia.\r\n			</p>\r\n		</div>\r\n\r\n\r\n		<div class=\"mt-5 mb-5\">\r\n			<h3 class=\"black-color--text mb-3\">Meet Our Team</h3>\r\n			<div class=\"gridlist\">\r\n\r\n\r\n			  <div class=\"item\">\r\n			  	\r\n			  	<img src=\"gambar/charlie.jpg\" alt=\"Image\" height=\"150\" width=\"150\">\r\n			  	<p class=\"subjudul\">Charlie Frederico</p>\r\n\r\n			  </div>\r\n\r\n			  <div class=\"item\">\r\n			  	\r\n			  	<img src=\"gambar/henry.jpg\" alt=\"Image\" height=\"150\" width=\"150\">\r\n\r\n			  	<p class=\"subjudul\">Henry Laufrans</p>\r\n\r\n			  </div>\r\n\r\n			  <div class=\"item\">\r\n			  	\r\n				<img src=\"gambar/christian.png\" alt=\"Image\" height=\"150\" width=\"150\">\r\n				<p class=\"subjudul\">Christian Alexander</p>\r\n\r\n			</div>\r\n\r\n                                <div class=\"item\">\r\n			  	\r\n			  	<img src=\"gambar/ferdy.jpg\" alt=\"Image\" height=\"150\" width=\"150\">\r\n			  	<p class=\"subjudul\">Ferdy Willy</p>\r\n\r\n			  </div>\r\n\r\n			</div>\r\n		</div>\r\n	</section></span></font><br>', '2018-06-30 18:01:03', '2021-10-11 09:37:45'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>New Delhi India</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>phpgurukulofficial@gmail.com</p>', '2018-06-30 18:01:36', '2018-06-30 19:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `Penulis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `Penulis`) VALUES
(14, 'Toyota Luncurkan Mobil Baru Bulan Depan, Agya Versi Crossover?', 6, 0, '<p><span style=\"font-size: 11pt; line-height: 107%; font-family: Helvetica, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Toyota memberi nama mobil ini All New Aygo X. Aygo X\r\nmasuk dalam kategori crossover segmen-A dan akan melanjutkan generasi kedua\r\nAygo yang kali pertama dirilis tahun 2014.</span><span style=\"font-size: 11pt; line-height: 107%; font-family: Helvetica, sans-serif;\"><br>\r\n<span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Sekadar informasi, generasi pertama Aygo kali\r\npertama hadir di Eropa pada tahun 2005. Mobil ini diplot sebagai bagian dari\r\ntrio yang meliputi Citroen C1 dan Peugeot 107.</span><br>\r\n<br>\r\n<span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Toyota mengatakan bahwa Aygo X adalah mobil\r\ndengan perubahan besar yang direncanakan dan dikembangkan di Eropa. Mobil ini\r\ndikembangkan Toyota Motor Eropa dan diproduksi di Eropa, tepatnya di Kolin,\r\nRepublik Ceko.Menyinggung spesifikasi, Aygo X diklaim dibangun di atas platform\r\nGA-B dari Toyota New Global Architecture (TNGA). Platform ini sudah digunakan\r\nToyota Yaris dan Yaris Crossover terbaru. Toyota Aygo X dijadwalkan dirilis\r\npada awal November 2021. Menarik ditunggu nih, </span><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span></p>', '2021-10-11 03:48:43', '2021-10-11 13:59:17', 1, 'Toyota-Luncurkan-Mobil-Baru-Bulan-Depan,-Agya-Versi-Crossover?', 'c0865dadbdc2f1fe60df5fbc935ec2c4.jpg', 'Luthfi Anshori'),
(15, 'MV Agusta Brutale 1000 Nurburgring 2021 Dirilis Terbatas', 6, 7, '<p><span style=\"font-size: 11pt; line-height: 107%; font-family: Helvetica, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">MV Agusta merilis secara terbatas Brutale 1000\r\nNurburgring 2021. Motor ini hanya dibuat 150 unit, dengan harga mulai dari\r\n39.900 euro atau setara Rp 656 juta. Seperti apa detail spesifikasinya?</span><span style=\"font-size: 11pt; line-height: 107%; font-family: Helvetica, sans-serif;\"><br>\r\n<span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">MV Agusta Brutale 1000 Nurburgring 2021\r\nmengambil basis dari model Brutale 1000RR. Mesinnya mengusung spesifikasi empat\r\nsilinder segaris 998 cc, yang mampu menghasilkan tenaga 208 dk pada 13.000 rpm\r\ndan torsi 116,5 Nm pada 11.000 rpm dari 998 cc.</span><br>\r\n<br>\r\n<span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Suspensi Brutale 1000 Nurburgring dikontrol\r\nsecara elektronik, menggunakan sokbreker depan Ohlins Nix EC dengan penyesuaian\r\npreload manual dan monoshock Ohlins TTX EC di belakang, dan dilengkapi peredam\r\nkemudi Ohlins EC yang dapat diatur secara elektronik.</span><br>\r\n<br>\r\n<span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Adapun pengeremannya menggunakan kaliper Brembo\r\nStylema empat piston radial-mount yang dikombinasi cakram floating 320 mm di\r\ndepan, sedang belakang pakai kaliper dua piston Brembo yang menjepit cakram 260\r\nmm</span></span><br></p>', '2021-10-11 03:49:18', NULL, 1, 'MV-Agusta-Brutale-1000-Nurburgring-2021-Dirilis-Terbatas', '9cb9dbe6f29ff96be2bb4e66f5c26d04.jpg', 'Luthfi Anshori'),
(16, 'Wuling Luncurkan Mobil Listrik Imut-imut Nano EV', 6, 8, '<p class=\"MsoNormal\"><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Mobil listrik sedang\r\nnaik pamor di Tiongkok. Lahan itu sangat menguntungkan SAIC-GM-Wuling yang lagi\r\ngetol memasarkan mobil bertenaga baterai. Tak ingin kehilangan momentum, Wuling\r\npun meluncurkan satu lagi kendaraan listrik. Disebut dengan Nano EV. Ya, dari\r\nnamanya bisa ditebak, ia berdimensi lebih kecil dari saudaranya, Mini EV.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Melihat desainnya,\r\nsangat familier.&nbsp;<a href=\"https://www.oto.com/berita-mobil/mobil-listrik-wuling-hongguang-mini-ev-kepergok-di-tanah-air-bakal-mejeng-di-giias-2021\" target=\"_blank\"><span style=\"color:black;mso-themecolor:text1\">Mirip dengan\r\nMini EV</span></a>&nbsp;yang sudah lebih dulu menyabet titel mobil listrik\r\nterlaris di Cina. Namun sesuai dengan namanya, Nano EV sedikit lebih kecil\r\nketimbang Mini EV.&nbsp;Kehadirannya bisa sebagai alternatif baru untuk semakin\r\nmemperkuat pangsa pasar sana.<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span style=\"font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif; color: rgb(36, 39, 44); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Ukurannya\r\npun identik dengan Baojun E200. Panjang hanya 2.497 mm, lebar 1.526 mm, tinggi\r\n1.616 mm serta wheelbase 1.600 mm. Walau terlihat seukuran Mini EV, faktanya\r\nNano lebih pendek 420 mm.</span><span style=\"line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p>', '2021-10-11 03:50:31', NULL, 1, 'Wuling-Luncurkan-Mobil-Listrik-Imut-imut-Nano-EV', '4a3e45e2ff413077fb74a11f9c88058d.jpg', 'Anindiyo Pradhono'),
(17, 'Bitcoin Naik Dua Digit, Koin Berlogo Anjing Ini Meroket 280%!', 8, 10, '<p class=\"MsoNormal\" style=\"margin: 12pt 0in 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif;\">Menurut data Coinmarketcap.com, pada Sabtu\r\n(9/10/2021), pukul 15.45 WIB, koin kripto tertua di dunia bitcoin melonjak\r\n14,73% ke US$ 54.638,07/koin dalam sepekan. Saat ini, kapitalisasi pasar\r\nbitcoin mencapai US$ 1 triliun, satu-satunya kripto yang berada di level\r\ntersebut.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif;\">Sementara hari ini, bitcoin bersama koin big cap\r\nlainnya cenderung terkoreksi setelah mencatatkan reli kenaikan selama sepekan.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif;\">\"Kita telah melewati level breakdown yang\r\nterjadi pada Mei, yaitu sekitar US$ 50.000,\" tulis Blockware Intelligence\r\ndalam sebuah laporan penelitian sebagaimana dilansir Coindesk, dikutip CNBC\r\nIndonesia, Sabtu (9/10).<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif;\">\"Dalam jangka pendek, kami melihat\r\nresistance di area $56.000-$58.000, yang sebenarnya tidak terduga lantaran ada\r\ncukup banyak overhead supply di bitcoin sejak awal tahun ini,\" imbuhnya.<o:p></o:p></span></p>', '2021-10-11 03:53:58', NULL, 1, 'Bitcoin-Naik-Dua-Digit,-Koin-Berlogo-Anjing-Ini-Meroket-280%!', 'bd477bef85a2d3ff3890dad34f463c27.jpg', 'Aldo Fernando'),
(18, 'Kebiasaan Penting untuk Jaga Jantung Tetap Prima di Masa Pandemi ', 5, 6, '<p style=\"margin-top: 0in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color:#444444\">Semua\r\norgan yang ada dalam tubuh itu penting. Tapi ada organ yang sangat penting dan\r\ntidak berhenti bekerja, dia adalah jantung. Organ ini berfungsi sebagai pemompa\r\ndarah yang berisi nutrisi serta oksigen dan menyebarkannya ke seluruh tubuh.\r\nSaat jantung sudah tak mampu melakukan fungsi tersebut karena beberapa penyakit\r\natau kondisi tertentu, maka dapat berujung kematian.<o:p></o:p></span></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color:#444444\">Oleh karena itu,\r\nmenjaga kesehatan jantung sedini mungkin sangatlah penting, terlebih di masa\r\npandemi seperti sekarang. Patut diketahui, penderita penyakit jantung merupakan\r\nkelompok orang yang rentan mengalami COVID-19 dengan gejala berat.<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color:#444444\">Ada beberapa cara untuk\r\nmengetahui apakah jantung Anda sehat, yang pertama adalah dengan rutin\r\nmelakukan pengukuran tekanan darah, dikatakan normal apabila angka menunjukkan\r\n120/80 atau kurang. Yang kedua adalah dengan cek denyut nadi Anda, dikatakan\r\nnormal apabila angka menunjukkan 50-70. Tak kalah penting, Anda juga bisa\r\nmelakukan medical check-up setidaknya sekali dalam enam bulan.<o:p></o:p></span></p>', '2021-10-11 03:56:29', NULL, 1, 'Kebiasaan-Penting-untuk-Jaga-Jantung-Tetap-Prima-di-Masa-Pandemi-', '13511b90f4e767898424fe55567d3e77.jpg', 'Gilar Ramdhani'),
(19, 'Mengenal Diabetes Melitus Serta Penanganannya', 5, 6, '<p class=\"MsoNormal\"><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Diabetes\r\nkerap disebut sebagai penyakit gula atau kencing manis. Menurut&nbsp;</span><a href=\"https://www.omni-hospitals.com/dr-marolop-pardede\"><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">dr. Marolop Pardede, Sp.BTKV\r\n(K), MH</span></a><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;mengatakan\r\ndiabetes melitus adalah penyakit metabolik yang ditandai dengan peningkatan\r\nkadar gula darah yang disebabkan oleh berkurangnya kadar insulin atau\r\nsensitivitas insulin yang berkurang sehingga mengganggu fungsi dari\r\ninsulin.&nbsp;&nbsp;Salah satu ciri penyakit diabetes adalah Luka pada kaki\r\ndiabetik. Penyakit itu paling sering ditemukan pada pasien dengan Diabetes\r\nMelitus yang tidak terkontrol.&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\"Luka\r\ndiabetik biasanya diawali dengan luka yang tidak disadari, yang semakin meluas\r\ndikarenakan terganggunya penyembuhan luka pada pasien diabetes,\" imbuh dr.\r\nMarolop Pardede.<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Gejala\r\nyang dapat dirasakan sebelum timbulnya luka adalah rasa nyeri atau pegal pada\r\nkaki waktu beraktivitas, rasa terbakar atau kram pada kaki, rasa kesemutan pada\r\nkaki, kaki menjadi pucat dan dingin.&nbsp;<o:p></o:p></span></p>', '2021-10-11 03:56:59', NULL, 1, 'Mengenal-Diabetes-Melitus-Serta-Penanganannya', '86e41cdaed774ac9eacbfaafb5646581.jpg', 'Reza'),
(20, 'Kapan Waktu yang Tepat Ganti Sikat Gigi? ', 5, 3, '<p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:11.5pt;font-family:&quot;AcuminPro&quot;,serif;\r\ncolor:#444444\">Lalu, kapan waktu yang tepat mengganti sikat gigi?<o:p></o:p></span></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:11.5pt;font-family:&quot;AcuminPro&quot;,serif;\r\ncolor:#444444\">\"Idealnya, Anda harus mengganti sikat gigi setiap tiga\r\nhingga enam bulan sekali. Kalau itu terdengar terlalu banyak, ingatlah bahwa\r\ngigi merupakan salah satu bagian paling keras dalam tubuh manusia,\" ujar\r\ndokter gigi Amanda Lewis, DMD dikutip&nbsp;<em>Bustle</em>&nbsp;pada\r\nSelasa, (5/10/21).<o:p></o:p></span></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:11.5pt;font-family:&quot;AcuminPro&quot;,serif;\r\ncolor:#444444\">Amanda menjelaskan bahwa jika Anda menggunakan sikat gigi setiap\r\nhari, serat yang ada pada bulu sikat gigi pun perlahan akan menurun\r\nefektivitasnya. Bulu sikat gigi yang sudah dalam posisi terlentang dapat\r\nmeningkatkan risiko gigi berlubang, bau mulut,&nbsp;dan masalah kesehatan mulut\r\nlainnya.<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:11.5pt;font-family:&quot;AcuminPro&quot;,serif;\r\ncolor:#444444\">\"Apalagi ketika sikat gigi tidak diberi waktu untuk\r\nmengering sebelum digunakan kembali, itu dapat menarik partikel di udara yang\r\ndapat menampung dan menumbuhkan bakteri&nbsp;berbahaya. Belum lagi jika sikat\r\ngigi diletakan pada toilet yang kotor,\" ujar dokter gigi Mariya Malin,\r\nDDS.<o:p></o:p></span></p>', '2021-10-11 03:58:41', NULL, 1, 'Kapan-Waktu-yang-Tepat-Ganti-Sikat-Gigi?-', 'cd6bdaf773302193cb8caa94677ac12e.jpg', 'Diviya Agatha'),
(22, 'Plus dan Minus Paylater', 8, 10, '<p><span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Paylater\r\nadalah layanan pinjam dana dari marketplace kepada penggunanya untuk membeli\r\nsuatu barang atau jasa. CFP Learning &amp; Development Manager Advisors\r\nAlliance Group Indonesia Andy Nugroho mengatakan marketplace akan menalangi\r\ndulu pembayaran barang atau jasa yang dibeli pengguna.<br>\r\n<br>\r\nSetelah terpakai, baru pengguna membayar kembali dana yang dipinjam dengan\r\ntambahan bunga sesuai perjanjian. Pembayarannya bisa langsung maupun cicil\r\ndengan jangka waktu tertentu.<br>\r\n<br>\r\nBegitu pula bila ada keterlambatan pengembalian dana, bisa kena tambahan denda\r\nadministrasi. Tapi, menurut Pendiri sekaligus Direktur OneShildt Financial\r\nPlanning Budi Raharjo, Paylater bisa jadi lebih aman ketimbang pinjol ilegal.</span><br></p>', '2021-10-11 04:07:29', NULL, 1, 'Plus-dan-Minus-Paylater', 'a9a03d4dd91048d7d30382581877ca3f.jpg', 'Verrel'),
(23, 'Meraih Keuntungan Memanfaatkan Momentum Bitcoin', 8, 11, '<p>Harga Bitcoin Semakin Gila, akhir kahir ini mata uang kripto ini tembus seharga $54.000 per satu coin nya, bahkan sempat berada di angka $55.000 per keping pada kamis (7/10).</p><p><span style=\"font-size: 10.5pt; line-height: 107%; color: rgb(51, 51, 51);\"><font face=\"Arial\">Mengutip coinmarket.com, bitcoin berada di level\r\nUS$54.479 per keping. Angkanya naik 0,52 persen dalam 24 jam terakhir atau\r\n26,35 persen dalam tujuh hari terakhir.<br>\r\n<br>\r\nHarga bitcoin telah beberapa kali melonjak hingga memecahkan rekor. Dilansir\r\ndari CNN Business, bitcoin sempat mencapai level tertingginya di level US$20\r\nribu per keping pada 2017 lalu.<br>\r\nNamun, harga bitcoin anjlok ke level US$3.000 per keping pada 2019. Hal ini\r\nlantaran China bertindak keras terhadap bisnis mata uang kripto.<br>\r\n<br>\r\nKemudian, harga berbalik menguat (rebound) ke level US$8.000 pada Mei 2019. Tak\r\nsampai di situ, harga bitcoin semakin melambung hingga menyentuh US$20 ribu per\r\nkeping pada Desember 2020.</font></span><br></p>', '2021-10-11 04:08:28', '2021-10-11 04:11:05', 1, 'Meraih-Keuntungan-Memanfaatkan-Momentum-Bitcoin', '7e70dc42ddd74c3a2d5bcf60d2837492.jpg', 'Dinda Audriene'),
(24, '26 Cabor Selesai Dipertandingkan, Panjat Tebing Bisa Pecahkan Rekor Dunia', 3, 4, '<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><a href=\"https://m.tribunnews.com/tag/pekan-olahraga-nasional-pon-xx-papua\">Pekan&nbsp;Olahraga&nbsp;Nasional&nbsp;(PON)&nbsp;XX&nbsp;Papua</a>&nbsp;telah\r\nmemasuki hari ke-8 sejak pembukaan resminya pada 2 Oktober 2021 lalu. PON Papua\r\n2021 direncanakan berakhir pada 15 Oktober 2021 dan ditutup di&nbsp;<a href=\"https://m.tribunnews.com/tag/stadion-lukas-enembe\">Stadion&nbsp;Lukas&nbsp;Enembe</a>,\r\nKabupaten Jayapura. Sebanyak 26 cabang olahraga (Cabor) sudah selesai\r\ndipertandingkan hingga hari ini, Minggu (10/10/2021), di ajang PON Papua 2021.<o:p></o:p></p><p>\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">Terdapat sejumlah pemecahan rekor\r\nnasional dan internasional yang dibuat atlet Indonesia dari sejumlah daerah. Selain\r\nitu, pelaksanaan pertandingan PON Papua bisa berjalan lancar tanpa gangguan\r\nbesar. Kelancaran penyelenggaraan PON Papua mendapatkan apresiasi besar dari\r\nKetua Umum KONI Pusat,&nbsp;<a href=\"https://m.tribunnews.com/tag/marciano-norman\">Marciano&nbsp;Norman</a>. Marciano\r\nNorman menilai PON Papua bisa berjalan lancar sesuai dengan apa yang telah\r\ndirencanakan sebelumnya.<o:p></o:p></p>', '2021-10-11 04:18:52', NULL, 1, '26-Cabor-Selesai-Dipertandingkan,-Panjat-Tebing-Bisa-Pecahkan-Rekor-Dunia', 'f3ccdd27d2000e3f9255a7e3e2c48800.jpg', 'Wahyu Septiana'),
(25, 'Piala Uber 2020: Tim Bulutangkis Indonesia untuk Sementara Mengungguli Jerman', 3, 4, '<p class=\"MsoNormal\">Tim&nbsp;<a href=\"https://www.bola.com/tag/bulutangkis\">bulutangkis</a>&nbsp;Indonesia\r\nuntuk sementara mengungguli Jerman pada fase grup&nbsp;<a href=\"https://www.bola.com/tag/piala-uber\">Piala Uber</a>&nbsp;2020, Sabtu\r\n(9/10/2021) di Aarhus, Denmark. Greysia Polii/Apriyani Rahayu dkk. memimpin\r\ndengan skor 3-0. <a href=\"https://www.bola.com/tag/gregoria-mariska-tunjung\">Gregoria\r\nMariska Tunjung</a>&nbsp;sempat mendapatkan perlawanan sengit dari Yvonne Li.\r\nTapi setelah meraih poin 3, ia melesat jauh meninggalkan lawannya itu.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">Perolehan poin Li hanya bertahan\r\ndi angka 9 saja. Bahkan Gregoria meraih streak point sebanyak enam kali sebelum\r\nmenyudahi gim pertama dengan skor 21-10. Gim berikutnya, Gregoria masih\r\nmendominasi. Kejar mengejar poin terjadi hingga akhirnya pertandingan selesai\r\ndengan skor 21-14.<o:p></o:p></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">Pada&nbsp;match&nbsp;kedua,\r\nGreysia Polii/Apriyani Rahayu juga berhasil menundukkan Stine Kuspert/Emma\r\nMoszczynski. Meski mendapatkan tekanan berat, peraih emas Olimpiade 2020 itu\r\nmenang&nbsp;21-16 21-17. Putri Kusuma Wardani yang menang atas Ann-Kathrin\r\nSpori lalu menjauhkan keunggulan tim bulutangkis Indonesia atas Jerman pada\r\nmatch ketiga. Ia menang dua gim langsung,&nbsp;Setelah ini, tim Uber Indonesia\r\nbakal menurunkan Siti Fadia Silva Ramadhanti/Ribka Sugiarto. Sementara Ester\r\nNurumi Tri Wardoyo akan menutup rangkaian pertandingan kontra Jerman\r\npada&nbsp;match&nbsp;kelima.<o:p></o:p></p>', '2021-10-11 04:20:44', NULL, 1, 'Piala-Uber-2020:-Tim-Bulutangkis-Indonesia-untuk-Sementara-Mengungguli-Jerman', '156005c5baf40ff51a327f1c34f2975b.jpg', 'Nurikhsani'),
(27, 'Wagub DKI Buka Suara Soal Dugaan Anies Dijegal Maju 2024', 2, 12, '<p class=\"MsoNormal\" style=\"text-indent:36.0pt\">Wakil Gubernur DKI Jakarta, Ahmad\r\nRiza Patria&nbsp;membela Anies Baswedan&nbsp;soal dugaan koleganya itu dijegal\r\nuntuk kembali maju di periode kedua memimpin Ibu Kota.<br>\r\nRiza irit bicara saat ditanya ihwal tudingan itu. Menurut dia, pelaksanaan\r\npilkada, terlebih pilpres masih cukup jauh hingga 2024. Dia meminta semua pihak\r\nmenghormati setiap proses demokrasi, dan mengurangi hiruk pikuk dunia politik.<o:p></o:p></p><p>\r\n\r\n<span style=\"font-size:11.0pt;line-height:107%;font-family:&quot;Calibri&quot;,sans-serif;\r\nmso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-ID;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">Riza irit bicara saat ditanya ihwal tudingan\r\nitu. Menurut dia, pelaksanaan pilkada, terlebih pilpres masih cukup jauh hingga\r\n2024. Dia meminta semua pihak menghormati setiap proses demokrasi, dan\r\nmengurangi hiruk pikuk dunia politik.<br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span></p>', '2021-10-11 04:26:47', NULL, 1, 'Wagub-DKI-Buka-Suara-Soal-Dugaan-Anies-Dijegal-Maju-2024', 'd0096ec6c83575373e3a21d129ff8fef.jpg', 'Susi Almanah'),
(28, 'Dipastikan Nyapres 2024, Prabowo Belum Terkalahkan di 4 Survei Terbaru', 2, 12, '<p class=\"MsoNormal\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Jakarta -\r\nSekjen Partai Gerindra Ahmad Muzani memastikan Prabowo Subianto akan\r\nmencalonkan diri di Pilpres 2024. Lalu, bagaimana kekuatan Prabowo di sejumlah\r\nsurvei terbaru<o:p></o:p></p><p class=\"MsoNormal\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dalam\r\nketerangan tertulisnya, Muzani memastikan bahwa Prabowo akan berlaga dalam\r\nPilpres 2024. Dia menargetkan perolehan suara Prabowo di Sulawesi Selatan\r\n(Sulsel) menang dengan persentase 65 persen.<o:p></o:p></p><p>\r\n\r\n\r\n\r\n<span style=\"font-size:11.0pt;line-height:107%;font-family:&quot;Calibri&quot;,sans-serif;\r\nmso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-ID;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n\"Saya katakan, 2024 Pak Prabowo insyaallah akan maju dalam laga\r\npilpres. Majunya beliau karena begitu masifnya permintaan kita semua. Majunya\r\nbeliau karena begitu besar harapan rakyat, pembangunan harus berlanjut,\r\ncita-cita kita berpartai belum terwujud,\" kata Muzani, Minggu (10/9/2021).<br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span></p>', '2021-10-11 04:27:41', NULL, 1, 'Dipastikan-Nyapres-2024,-Prabowo-Belum-Terkalahkan-di-4-Survei-Terbaru', '032b2cc936860b03048302d991c3498f.jpg', 'Rakhmad Hidayatulloh Permana'),
(29, 'Pertemuan Jokowi-Kalla di Gedung Agung Dinilai sebagai Nostalgia Politik', 2, 12, '<p class=\"MsoNormal\" style=\"text-indent:36.0pt\">Pertemuan Presiden Joko Widodo\r\ndengan Ketua Dewan Masjid Indonesia (DMI) Jusuf Kalla di Gedung Agung,\r\nYogyakarta, dinilai sebagai nostalgia politik. Jokowi dan Kalla merupakan\r\npasangan presiden-wakil presiden pada 2014-2019.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">Pengamat politik dari UIN Syarif\r\nHidayatullah Jakarta, Adi Prayitno, berpendapat, kedua tokoh itu membicarakan\r\nbanyak hal soal situasi negara belakangan ini.<o:p></o:p></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">\"Yang jelas terjadi momen\r\nnostalgia politik. Karena Kalla mantan partner dan sahabat sejati Jokowi\r\n2014-2019 yang dalam banyak hal tahu luar dan dalam soal negara ini. Pasti\r\nbanyak hal dibicarakan, seperti soal perekonomian, penanganan pandemi, dan\r\nhal-hal yang terkait politik,\" kata Adi saat dihubungi, Minggu\r\n(10/10/2021).<o:p></o:p></p>', '2021-10-11 04:29:23', NULL, 1, 'Pertemuan-Jokowi-Kalla-di-Gedung-Agung-Dinilai-sebagai-Nostalgia-Politik', '18e2999891374a475d0687ca9f989d83.jpg', 'Tsarina Maharani'),
(30, 'Melihat Lebih Dekat SMAN Unggulan MH Thamrin, SMA Terbaik Se-Indonesia', 7, 13, '<p class=\"MsoNormal\" style=\"text-indent:36.0pt\">SMAN Unggulan MH Thamrin mendapat\r\npredikat SMA terbaik se-Indonesia berdasarkan nilai rata-rata UTBK 2021.\r\nSekolah ini bersaing dengan SMAN 8 Jakarta, SMAS Unggul Del, dan lainnya. Predikat\r\nterbaik yang diperoleh, karena semua siswa merupakan orang pilihan. Menurut\r\nKepala Sekolah SMAN Unggulan MH Thamrin Bahari Lubis, orang pilihan yang\r\ndimaksud adalah punya keistimewaan dan jenius. <o:p></o:p></p><p>\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">Bayangkan saja, bilang dia, ada\r\ntiga kurikulum yang digunakan siswa SMAN Unggulan MH Thamrin, yakni kurikulum\r\nnasional, kurikulum olimpiade, dan kurikulum cambridge. \"Kalau kurikulum\r\nolimpiade yang berkaitan dengan olimpiade bidang sains, itu ada 9 tambah\r\npenelitian ada 10. Matematika, fisika, kimia, biologi, ekonomi, astronomi,\r\nkebumian, geografi, IT, dan penelitian, jadi ya siswa di sini mereka jago-jago\r\nsemua, bisa ke mana saja,\" ungkap dia.&nbsp;<o:p></o:p></p>', '2021-10-11 04:30:43', NULL, 1, 'Melihat-Lebih-Dekat-SMAN-Unggulan-MH-Thamrin,-SMA-Terbaik-Se-Indonesia', 'fe5df232cafa4c4e0f1a0294418e5660.jpg', 'Yusuf Pribadi'),
(31, 'Pemprov Jakarta Berencana Gelar PTM di 6.000 Sekolah Mulai 11 Oktober 2021', 7, 13, '<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><a href=\"https://www.pikiran-rakyat.com/tag/Dinas-Pendidikan\">Dinas Pendidikan</a>&nbsp;<a href=\"https://www.pikiran-rakyat.com/tag/DKI-Jakarta\">DKI Jakarta</a>&nbsp;berencana\r\nakan membuka sebanyak 6.000 sekolah untuk menggelar Pembelajaran Tatap Muka (<a href=\"https://www.pikiran-rakyat.com/tag/PTM\">PTM</a>) mulai 11 Oktober 2021\r\nbesok. Kasubag Humas&nbsp;<a href=\"https://www.pikiran-rakyat.com/tag/Dinas-Pendidikan\">Dinas Pendidikan</a>&nbsp;<a href=\"https://www.pikiran-rakyat.com/tag/DKI-Jakarta\">DKI Jakarta</a>&nbsp;Taga\r\nRadja menyampaikan, pembukaan terhadap 6.000 sekolah akan dilakukan setelah\r\nproses pelatihan selesai dilakukan. Saat ini kata\r\ndia,&nbsp;assessment&nbsp;dilakukan secara simultan setelah sebelumnya ada\r\npenambahan 3000 sekolah.<o:p></o:p></p><p>\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">Meskipun banyak sekolah yang akan\r\ndibuka, Taga menyebut bahwa penilaian indikator pembukaan sekolah tidak\r\ndiperlonggar. \"nggak, justru malah diketatin,\" ujarnya. Lebih lanjut,\r\nTaga menjelaskan, rencana pembukaan 6.000 sekolah ini juga berasal dari\r\ndorongan orang tua karena melihat beberapa sekolah sudah menjalani&nbsp;<a href=\"https://www.pikiran-rakyat.com/tag/PTM\">PTM</a>. Di lain sisi, ini memang\r\nsudah sejalan dengan target&nbsp;<a href=\"https://www.pikiran-rakyat.com/tag/Dinas-Pendidikan\">Dinas Pendidikan</a>&nbsp;bahwa\r\nsetiap minggu ada penambahan pembukaan sekolah yang akan menggelar&nbsp;<a href=\"https://www.pikiran-rakyat.com/tag/PTM\">PTM</a>.<o:p></o:p></p>', '2021-10-11 04:31:28', NULL, 1, 'Pemprov-Jakarta-Berencana-Gelar-PTM-di-6.000-Sekolah-Mulai-11-Oktober-2021', '8cda81fc7ad906927144235dda5fdf15.jpg', 'Amir Faisol'),
(32, 'Nadiem Makarim Siapkan Materi Moderasi Beragama di Kurikulum Sekolah Penggerak', 7, 13, '<p class=\"MsoNormal\" style=\"text-indent:36.0pt\">Menteri Pendidikan, Kebudayaan,\r\nRiset dan Teknologi (Mendikbudristek)&nbsp;<a href=\"https://www.liputan6.com/tag/nadiem-makarim\">Nadiem Makarim</a>&nbsp;mengaku\r\ntengah menyiapkan materi moderasi beragama untuk disisipkan dalam kurikulum\r\nProgram Sekolah Penggerak. Rancangan itu disusun bersama Kementerian Agama\r\n(Kemenag). \"Kami juga sedang merancang materi terkait moderasi beragama\r\nbersama Kemenag untuk disertakan di dalam kurikulum Sekolah Penggerak,\"&nbsp;ujar&nbsp;<a href=\"https://www.liputan6.com/news/read/4665302/bermalam-di-suku-anak-dalam-jambi-nadiem-makarim-sampaikan-gagasan-merdeka-belajar\" title=\"Nadiem Makarim\">Nadiem Makarim</a>&nbsp;dalam acara Peluncuran Aksi\r\nModerasi Beragama, Kemenag lewat daring, Rabu (22/9/2021).<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">\"Itu adalah kurikulum\r\nprototipe yang sedang kita tes di dalam sekolah-sekolah penggerak. Di situlah\r\nkonten-konten moderasi beragama, kita juga akan melakukan risetnya,\"\r\nsambungnya. Menurut Nadiem konten moderasi beragama itu bakal diujicobakan kepada\r\n2.500 sekolah penggerak. Angka ini akan terus berkembang setiap tahunnya.\r\nKonten moderasi beragama juga diajarkan kepada para calon guru penggerak pada\r\nProgram Guru Penggerak Kemendikbudristek.<o:p></o:p></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">\"Kami juga mengupayakan\r\nsejumlah terobosan dalam program pendidikan guru, seperti menyisipkan topik\r\nkebhinekaan dan nilai-nilai moderasi beragama dalam materi pendidikan Guru\r\nPenggerak,\" katanya. Guru Penggerak merupakan program besutan Nadiem\r\nMakarim yang ditujukan untuk mencetak kader kepala sekolah yang berkualitas.<o:p></o:p></p>', '2021-10-11 04:32:19', NULL, 1, 'Nadiem-Makarim-Siapkan-Materi-Moderasi-Beragama-di-Kurikulum-Sekolah-Penggerak', '30e62fddc14c05988b44e7c02788e187.jpg', 'Moses'),
(33, 'Jorginho Pemain Cerdas dan Pantas Menangkan Ballon d’Or 2021', 3, 5, '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"https://www.sindonews.com/topic/21034/thomas-tuchel\" style=\"text-indent: 36pt; background-color: rgb(255, 255, 255);\">Thomas Tuchel</a><span style=\"text-indent: 36pt;\">&nbsp;membeberkan\r\nalasannya mengapa&nbsp;</span><a href=\"https://www.sindonews.com/topic/2947/jorginho\" style=\"text-indent: 36pt; background-color: rgb(255, 255, 255);\">Jorginho</a><span style=\"text-indent: 36pt;\">&nbsp;pantas\r\nmendapatkan Ballon dOr 2021. Pelatih Chelsea itu mengatakan bahwa gelandang\r\nItalia itu memiliki visi bermain di lapangan yang luar biasa.</span><br></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\">\"Ia (Jorginho) memiliki visi\r\nsepak bola yang luar biasa. Bagi saya, hadiah individu tidak terlalu penting,\r\ntidak mungkin untuk membuat perbandingan nyata antara beberapa pemain dengan\r\nperan yang berbeda,\" kata Tuchel dikutip dari Mirror, Minggu (10/10/2021).\r\n\"Jorginho pantas memenangkan Ballon dOr. Ia pemain yang sangat cerdas dan\r\nsenang menjadi pelatihnya,\" sambungnya.<o:p></o:p></p>', '2021-10-11 04:37:15', '2021-10-11 04:39:56', 1, 'Jorginho-Pemain-Cerdas-dan-Pantas-Menangkan-Ballon-d’Or-2021', '8df7b73a7820f4aef47864f2a6c5fccf.jpg', 'Cikal Bintang Raissatria');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood masala', '2018-06-22 15:45:38', '0000-00-00 00:00:00', 1),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2018-06-30 09:00:43', '0000-00-00 00:00:00', 1),
(5, 3, 'Football', 'Football', '2018-06-30 09:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Television', 'TeleVision', '2018-06-30 18:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'National', 'National', '2018-06-30 19:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'International', 'International', '2018-06-30 19:04:43', '0000-00-00 00:00:00', 1),
(9, 7, 'India', 'India', '2018-06-30 19:08:42', '0000-00-00 00:00:00', 1),
(10, 8, 'International', 'International', '2021-10-11 03:53:35', NULL, 1),
(11, 8, 'Crypto', 'Crypto Currency', '2021-10-11 03:59:49', NULL, 1),
(12, 2, 'nasional', 'nasional', '2021-10-11 04:26:10', NULL, 1),
(13, 7, 'nasional', 'naisonal', '2021-10-11 04:29:55', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'default.svg',
  `bname` varchar(255) NOT NULL,
  `ttl` date NOT NULL DEFAULT current_timestamp(),
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `fname`, `photo`, `bname`, `ttl`, `gender`) VALUES
(10, 'rap', 'raphael@gmail.com', '$2y$10$ssvE/FsNl4Y6D6GYZfTZkuduWUTdwbHJn5yCmvEfIGDs//BCj/MBu', 'rap', 'ae20914de95738183ba5ccbdec8b4b79.jpg', 'greg', '2021-10-10', '1'),
(11, 'henrylaufrans', 'henry.laufrans@student.umn.ac.id', '$2y$10$l53zbIvc/WSpR7ehO5SmDearNALXS3ZpvpS2FwV4wgMcu5Ctw3Nzu', 'Henry', '879c6b9f1f128ab9fe46ad868a3ea1b4.jpg', 'Laufrans', '2002-03-30', '1'),
(12, 'hansendt', 'hansen.tjoa@student.umn.ac.id', '$2y$10$nf5lEgpCdenPZoaLYYj3/e/cobYABa/eTwwb.IvntXWyvLES7z296', 'Hansen', '0ca9c5236b0ec947cd5dcb3d21158642.jpg', 'Dharma', '2002-05-11', '1'),
(13, 'feliciano', 'suryamarcello@gmail.com', '$2y$10$pSVAm9XuUGWit9gXmkhXcOCtTvvCxKE.MyB8EMbsUtYwa4aNDNgUW', 'Feliciano', '66a7c77104f33edd2fcc1e90650a9907.png', 'Surya', '2021-10-01', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
