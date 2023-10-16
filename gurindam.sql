-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2023 at 10:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gurindam`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `cuId` int(10) UNSIGNED NOT NULL,
  `cuTitle` varchar(255) NOT NULL,
  `cuPermalink` varchar(255) NOT NULL,
  `cuParent` int(11) NOT NULL,
  `cuName` varchar(255) NOT NULL,
  `cuHP` varchar(255) NOT NULL,
  `cuEmail` varchar(255) NOT NULL,
  `cuType` enum('Kritik','Saran') NOT NULL,
  `cuMessage` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `cuRead` enum('unread','read') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`cuId`, `cuTitle`, `cuPermalink`, `cuParent`, `cuName`, `cuHP`, `cuEmail`, `cuType`, `cuMessage`, `id_user`, `cuRead`, `created_at`, `updated_at`) VALUES
(3, 'ini test kiri email dari Gurindam ya', '3-ini-test-kiri-email-dari-gurindam-ya', 0, 'Arizal Nur Rohman', '085265266005', 'arizalnurrohman13@gmail.com', 'Kritik', 'isi pesan teks nya ya beroah ini test kiri email dari Gurindam ya ini test kiri email dari Gurindam ya', 0, 'read', '2023-09-13 20:50:01', NULL),
(4, 'judul dari Rani Visdayati', '4-judul-dari-rani-visdayati', 0, '085262526262', '085262526262', 'rani@gmail.com', 'Kritik', 'isi dari Rani Visdayati', 0, 'read', '2023-09-14 20:51:25', NULL),
(5, 'ini test kiri email dari Gurindam ya', '5-ini-test-kiri-email-dari-gurindam-ya', 0, '07662772727', '07662772727', 'alesha@gmail.com', 'Kritik', 'asda sdsa a', 0, 'read', '2023-09-14 20:51:58', NULL),
(6, 'saran dari siaha', '6-saran-dari-siaha', 0, 'aisha az zahra', '727272727272', 'aisha@gmail.com', 'Saran', 'asdasd', 0, 'unread', '2023-09-14 20:54:22', NULL),
(7, 'ini test kiri email dari Gurindam ya', '7-ini-test-kiri-email-dari-gurindam-ya', 0, 'arizal nur rohman', '085265266005', 'arizalnurrohman13@gmail.com', 'Kritik', 'sdf', 0, 'read', '2023-09-19 02:01:03', NULL),
(8, 'fds', '8-fds', 0, 'satu', '082170607025', 'yuhazmi12@gmail.com', 'Saran', 'sagasgsda', 0, 'unread', '2023-10-10 07:59:23', NULL),
(9, 'sdfa', '9-sdfa', 0, 'dfsaa', '082170607025', 'rinasuciati26@guru.sd.belajar.id', 'Saran', 'sdfsa', 0, 'unread', '2023-10-10 08:10:32', NULL),
(10, 'asdas', '10-asdas', 0, 'asd', 'asdad', 'asda@ads.sdsf', 'Kritik', 'asd', 0, 'unread', '2023-10-12 02:57:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hubungi_admin`
--

CREATE TABLE `hubungi_admin` (
  `haId` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `haLockId` int(11) NOT NULL,
  `haTicket` varchar(255) DEFAULT NULL,
  `haTicketId` varchar(255) DEFAULT NULL,
  `haTitle` varchar(255) DEFAULT NULL,
  `haPermalink` varchar(255) DEFAULT NULL,
  `haContent` text NOT NULL,
  `haDisplay` enum('y','n') NOT NULL,
  `haParent` int(11) NOT NULL,
  `haRead` enum('y','n') NOT NULL,
  `haSession` enum('open','close') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hubungi_admin`
--

INSERT INTO `hubungi_admin` (`haId`, `id_user`, `haLockId`, `haTicket`, `haTicketId`, `haTitle`, `haPermalink`, `haContent`, `haDisplay`, `haParent`, `haRead`, `haSession`, `created_at`, `updated_at`) VALUES
(1, 5, 0, 'PGN-20230921-000001', '1', 'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum', '1-lorem-ipsum-lorem-ipsum-lorem-ipsum-lorem-ipsum-lorem-ipsum-lorem-ipsum-lorem-ipsum-lorem-ipsum-lorem-ipsum-lorem-ipsum-lorem-ipsum-lorem-ipsum', ' Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum\r\n\r\nLorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum\r\n\r\nLorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum ', 'y', 0, 'y', 'open', '2023-09-25 02:33:28', NULL),
(2, 5, 0, 'PGN-20230921-000002', '2', 'Analisis Nilai Deviasi pada Halaman III DIPA Terhadap Capaian IKPA Satker di Lingkup Kanwil DJPb Provinsi DKI Jakarta Tahun 2022', '2-analisis-nilai-deviasi-pada-halaman-iii-dipa-terhadap-capaian-ikpa-satker-di-lingkup-kanwil-djpb-provinsi-dki-jakarta-tahun-2022', 'IKPA ialah indikator yang digunakan sebagai alat ukur untuk menentukan kinerja suatu satker. Terdapat delapan indikator dalam penilaian IKPA, yaitu Revisi DIPA, Deviasi Halaman III DIPA, Penyerapan Anggaran, Data Kontrak, Penyelesaian Tagihan, Pengelolaan UP dan TUP, Dispensasi SPM dan Capaian Output. Pada tahun 2022 diketahui bahwa Kanwil DJPb Provinsi DKI Jakarta mendapatkan IKPA sebesar 93,17. Nilai tersebut tergolong tinggi, namun apabila dijabarkan lagi per komponen indikator, terdapat satu indikator yang jika dibandingkan dengan indikator lainnya memiliki selisih yang cukup jauh antara bobot nilai maksimal dengan nilai perolehannya, yaitu indikator Deviasi Halaman III DIPA dengan nilai akhir yang diperoleh sebesar 7,02 dari nilai maksimalnya 10. Adanya nilai deviasi yang tinggi menunjukkan kualitas perencanaan anggaran yang kurang optimal. Artinya, terdapat ketidaksesuaian antara realisasi anggaran dan Rencana Penarikan Dana (RPD) yang dilakukan satker.', 'y', 0, 'y', 'open', '2023-09-24 02:33:28', NULL),
(3, 5, 0, 'PGN-20230921-000003', '3', 'PAWAN (Publikasi Perbendaharaan dan Analisis Ekonomi Wilayah KPPN Ketapang) Edisi II Ini Tambahan nama Judul Boar panjang', '3-pawan-publikasi-perbendaharaan-dan-analisis-ekonomi-wilayah-kppn-ketapang-edisi-ii-ini-tambahan-nama-judul-boar-panjang', 'Triwulan ke-2 tahun 2023 ini terus menjadi penanda penting bagi kinerja dan pelayanan KPPN Ketapang dalam memastikan visi dan misi Direktorat Jenderal Perbendaharaan terus bergerak adaptif dan terakselerasi di wilayah kerja KPPN Ketapang. Standardisasi pelayanan perbendaharaan tanpa korupsi dan gratifikasi merupakan wujud komitmen pelayanan  terbaik kami bagi seluruh pengguna layanan.\r\n\r\nSeperti perjalanan organisasi mencapai tujuannya, buletin PAWAN edisi kedua 2023 ini akan dilengkapi dengan berbagai cerita goresan tangan para pegawai KPPN Ketapang yang diharapkan mampu mengcapture pengelolaan keuangan negara yang efektif dan efisien serta menceritakan manfaat dari pengelolaan tersebut untuk daerah khususnya di lingkup Kabupaten Ketapang dan Kayong Utara.', 'y', 0, 'y', 'close', '2023-09-23 02:37:11', NULL),
(40, 5, 0, 'PGN-20230926-000001', '1', 'Contoh Judul Topik Baru gys', '40-contoh-judul-topik-baru-gys', 'Contoh Judul Topik Baru gys Contoh Judul Topik Baru gys Contoh Judul Topik Baru gys Contoh Judul Topik Baru gys Contoh Judul Topik Baru gys Contoh Judul Topik Baru gys Contoh Judul Topik Baru gys Contoh Judul Topik Baru gys <br>', 'y', 0, 'y', 'open', '2023-09-26 08:18:33', NULL),
(43, 5, 0, 'PGN-20230927-000001', '1', 'tambah topik baru ya guys,,', '43-tambah-topik-baru-ya-guys', '<p>ini contoh topik nya,,<br></p>', 'y', 0, 'y', 'open', '2023-09-27 04:22:18', NULL),
(44, 1, 0, NULL, NULL, NULL, NULL, 'ini jawaban baru dari admin ya guys,, nnti kalau misalnya mau di balas lagi silahkan,, ini contoh aja sebagai balasan dari admin nya <br>', 'y', 43, 'y', NULL, '2023-10-05 07:30:17', NULL),
(45, 1, 0, NULL, NULL, NULL, NULL, '<p><span>Triwulan ke-2 tahun 2023 ini terus menjadi penanda penting bagi \r\nkinerja dan pelayanan KPPN Ketapang dalam memastikan visi dan misi \r\nDirektorat Jenderal Perbendaharaan terus bergerak adaptif dan \r\nterakselerasi di wilayah kerja KPPN Ketapang. Standardisasi pelayanan \r\nperbendaharaan tanpa korupsi dan gratifikasi merupa</span></p>', 'y', 3, 'y', NULL, '2023-10-05 07:30:39', NULL),
(46, 1, 0, NULL, NULL, NULL, NULL, '<p><span>Triwulan ke-2 tahun 2023 ini terus menjadi penanda penting bagi kinerja dan pelayanan KPPN Ketapang dalam </span></p>', 'y', 3, 'y', NULL, '2023-10-05 07:30:44', NULL),
(47, 1, 0, NULL, NULL, NULL, NULL, '<p><span>, buletin PAWAN edisi kedua 2023 ini akan dilengkapi dengan \r\nberbagai cerita goresan tangan para pegawai KPPN Ketapang yang \r\ndiharapkan mampu mengcapture pengelolaan keuangan negara yang efektif \r\ndan efisien serta menceritakan manfaat dari pengelolaan tersebut untuk \r\ndaerah khususnya di lingkup Kabupaten Ketapang dan Kayong Utara</span></p>', 'y', 3, 'y', NULL, '2023-10-05 07:30:48', NULL),
(48, 5, 0, NULL, NULL, NULL, NULL, '<p><span class=\"lbl\">n ke-2 tahun 2023 ini terus menjadi penanda pent</span></p>', 'y', 3, 'y', NULL, '2023-10-05 07:31:01', NULL),
(49, 5, 0, NULL, NULL, NULL, NULL, '<p><span class=\"lbl\">n ke-2 tahun 2023 ini terus menjadi penanda pent</span><span class=\"lbl\">n ke-2 tahun 2023 ini terus menjadi penanda pent</span><span class=\"lbl\">n ke-2 tahun 2023 ini terus menjadi penanda pent</span></p>', 'y', 3, 'y', NULL, '2023-10-05 07:31:04', NULL),
(50, 5, 0, NULL, NULL, NULL, NULL, '<p><span class=\"lbl\">n ke-2 tahun 2023 ini terus menjadi penanda pent</span><span class=\"lbl\">n ke-2 tahun 2023 ini terus menjadi penanda pent</span></p>', 'y', 3, 'y', NULL, '2023-10-05 07:31:07', NULL),
(51, 5, 0, NULL, NULL, NULL, NULL, '<p>terimakasih..<br></p>', 'y', 3, 'y', NULL, '2023-10-05 07:31:17', NULL),
(52, 5, 0, NULL, NULL, NULL, NULL, '<p>Balasan dari ini ya.. Analisis Nilai Deviasi pada Halaman<br></p>', 'y', 2, 'y', NULL, '2023-10-05 07:57:28', NULL),
(53, 1, 0, NULL, NULL, NULL, NULL, '<p>ini balasan admin untuk chat dari judul ticket <span>Analisis Nilai Deviasi pada Halaman III DIPA Terhadap Capaian IKPA Satker di Lingkup Kanwil DJPb Provinsi DKI Jakarta Tahun 2022</span></p>', 'y', 2, 'n', NULL, '2023-10-06 07:18:57', NULL),
(54, 5, 0, NULL, NULL, NULL, NULL, '<p>ini cobtih balasan dari usr<br></p>', 'y', 40, 'y', NULL, '2023-10-06 09:13:45', NULL),
(55, 1, 0, NULL, NULL, NULL, NULL, '<p>ini balasan dari admin,,<br></p>', 'y', 40, 'y', NULL, '2023-10-06 09:14:11', NULL),
(56, 5, 0, 'PGN-20231010-000001', '1', 'asdasd', '56-asdasd', '<p>asd asda d<br></p>', 'y', 0, 'y', 'open', '2023-10-10 08:01:06', NULL),
(57, 5, 0, 'PGN-20231010-000002', '2', 'Contoh Judul Topik Baru gys', '57-contoh-judul-topik-baru-gys', '<p>ad adad<br></p>', 'y', 0, 'y', 'open', '2023-10-10 08:01:22', NULL),
(58, 5, 0, 'PGN-20231010-000003', '3', 'topik baru', '58-topik-baru', '<p>ad adad<br></p>', 'y', 0, 'y', 'open', '2023-10-10 08:03:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_23_091751_create_ms_pembelajaran_table', 1),
(7, '2023_08_24_021337_create_permission_tables', 1),
(8, '2023_08_24_023723_create_ms_categori_pembelajaran_table', 1),
(9, '2023_08_30_033504_create_ms_pembelajaran_detail_table', 1),
(10, '2023_08_31_025714_create_pengetahuan_category_table', 1),
(11, '2023_08_31_025825_create_pengetahuan_table', 1),
(12, '2023_08_31_030127_create_pengetahuan_comment_table', 1),
(13, '2023_08_31_030217_create_pengetahuan_content_table', 1),
(14, '2023_08_31_030347_create_pengetahuan_highlight_table', 1),
(15, '2023_08_31_030403_create_pengetahuan_rating_table', 1),
(16, '2023_09_05_012935_create_pengetahuan_read_table', 2),
(17, '2023_09_11_085750_create_pengetahuan_activity_table', 3),
(18, '2023_09_12_073856_create_pengetahuan_like_table', 3),
(19, '2023_09_12_073906_create_pengetahuan_readlist_table', 3),
(20, '2023_09_12_073910_create_pengetahuan_readlist_content_table', 3),
(21, '2023_09_12_075650_create_pengetahuan_pinned_table', 3),
(24, '2023_09_13_080141_create_contact_us_table', 4),
(26, '2023_09_20_074831_create_hubungi_admin_table', 5),
(27, '2023_09_27_143734_create_pengetahuan_read_content_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ms_pembelajaran`
--

CREATE TABLE `ms_pembelajaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `pmTitle` varchar(255) NOT NULL,
  `pmPermalink` varchar(255) NOT NULL,
  `pmImage` varchar(255) NOT NULL,
  `pmDescription` tinytext NOT NULL,
  `pmEstimation` int(11) NOT NULL,
  `pmStatus` enum('y','n') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ms_pembelajaran`
--

INSERT INTO `ms_pembelajaran` (`id`, `user_id`, `catId`, `pmTitle`, `pmPermalink`, `pmImage`, `pmDescription`, `pmEstimation`, `pmStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'asd', 'asd', '202309050455_whatsapp-image-2023-07-25-at-11.16.07.jpg', '<p>as<br></p>', 123123, 'y', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ms_pembelajaran_categori`
--

CREATE TABLE `ms_pembelajaran_categori` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL,
  `catPermalink` varchar(255) NOT NULL,
  `catImage` varchar(255) NOT NULL,
  `catDescription` tinytext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ms_pembelajaran_categori`
--

INSERT INTO `ms_pembelajaran_categori` (`catId`, `catName`, `catPermalink`, `catImage`, `catDescription`, `created_at`, `updated_at`) VALUES
(1, 'asdas', 'asdas', '202309050455_bg.png', '<p>asdad<br></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ms_pembelajaran_detail`
--

CREATE TABLE `ms_pembelajaran_detail` (
  `pdId` int(11) NOT NULL,
  `pbId` int(11) NOT NULL,
  `pdTitle` varchar(255) NOT NULL,
  `pdPermalink` varchar(255) NOT NULL,
  `pdImage` varchar(255) NOT NULL,
  `pdFile` varchar(255) NOT NULL,
  `pdVideo` varchar(255) NOT NULL,
  `pdDescription` longtext NOT NULL,
  `pdDuration` int(11) NOT NULL,
  `pdStatus` enum('y','n') NOT NULL,
  `pdSort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ms_pembelajaran_detail`
--

INSERT INTO `ms_pembelajaran_detail` (`pdId`, `pbId`, `pdTitle`, `pdPermalink`, `pdImage`, `pdFile`, `pdVideo`, `pdDescription`, `pdDuration`, `pdStatus`, `pdSort`, `created_at`, `updated_at`) VALUES
(1, 1, 'sub materi 1', 'sub-materi-1', 'none', '202309080423_radiogram-penyampaian-sk-iid-2022-dan-sk-iga-2022.pdf', 'https://www.youtube.com/watch?v=IZhOb7yQTXQ', '<p>a sad ad asdasdasda<br></p>', 12, 'y', 0, NULL, NULL),
(2, 1, 'hhhh', 'hhhh', 'none', '202309080452_radiogram-penyampaian-sk-iid-2022-dan-sk-iga-2022.pdf', 'https://www.youtube.com/watch?v=IZhOb7yQTXQ', '<p>kkk<br></p>', 123, 'y', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('arizalnurrohman13@gmail.com', '$2y$10$IykTfbfGJaSs.qhMWeSB.OrGwT20cFHHT9MKapI/DyAxNua/z4SS2', '2023-09-11 21:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan`
--

CREATE TABLE `pengetahuan` (
  `pgId` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `pgType` enum('Public','Private') NOT NULL,
  `pgTitle` varchar(255) NOT NULL,
  `pgPermalink` varchar(255) NOT NULL,
  `pgTimePost` datetime NOT NULL,
  `pgImage` varchar(255) DEFAULT NULL,
  `pgDescription` text NOT NULL,
  `pgEstimation` int(11) NOT NULL,
  `pgViewed` int(11) NOT NULL,
  `pgDisplay` enum('y','n') NOT NULL,
  `pgReported` enum('y','n') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengetahuan`
--

INSERT INTO `pengetahuan` (`pgId`, `id_user`, `catId`, `pgType`, `pgTitle`, `pgPermalink`, `pgTimePost`, `pgImage`, `pgDescription`, `pgEstimation`, `pgViewed`, `pgDisplay`, `pgReported`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Private', 'Rancangan Pedoman Teknis Pembinaan Kepegawaian Jabatan Fungsional', '1-rancangan-pedoman-teknis-pembinaan-kepegawaian-jabatan-fungsional', '2023-09-10 00:00:00', '2023/10/20231009/6523b1155fd1b.JPG', '<p>Rancangan Pedoman Teknis Pembinaan Kepegawaian Jabatan Fungsional Rancangan Pedoman Teknis Pembinaan Kepegawaian Jabatan Fungsional Rancangan Pedoman Teknis Pembinaan Kepegawaian Jabatan Fungsional Rancangan Pedoman Teknis Pembinaan Kepegawaian Jabatan Fungsional Rancangan Pedoman Teknis Pembinaan Kepegawaian Jabatan Fungsional Rancangan Pedoman Teknis Pembinaan Kepegawaian Jabatan Fungsional<br></p>', 10, 4, 'y', 'y', NULL, NULL),
(2, 1, 1, 'Private', 'Pengelolaan Kinerja Pegawai ASN Pasca Penyederhanaan Birokrasi', '2-pengelolaan-kinerja-pegawai-asn-pasca-penyederhanaan-birokrasi', '2023-09-10 00:00:00', '2023/10/20231009/6523b1c49a813.JPG', '<p>Materi Pengelolaan Kinerja Pegawai ASN Pasca Penyederhanaan Birokrasi<br></p>', 10, 14, 'y', 'y', NULL, NULL),
(3, 1, 1, 'Public', 'Penyusunan APBN: Penetapan Pagu Anggaran', '3-penyusunan-apbn-penetapan-pagu-anggaran', '2023-09-10 00:00:00', '2023/10/20231009/6523b4ce34ae6.JPG', '<p>Pada video pembelajaran ini, Bp. Iskandar, Dosen PKN STAN dari Jurusan Akuntansi, menjelaskan tentang penyusunan APBN, khususnya terkait dengan penetapan Pagu Anggaran.<br></p>', 2, 3, 'y', 'y', NULL, NULL),
(4, 1, 2, 'Private', 'Pencantuman dalam daftar hitam (blacklist), salah siapa?', '4-pencantuman-dalam-daftar-hitam-blacklist-salah-siapa', '2023-09-10 00:00:00', '2023/10/20231009/6523b595192f5.JPG', '<p>Berawal dari adanya surat masuk dari Sekretaris Unit Eselon I selaku Kuasa Pengguna Anggaran (KPA) hal permohonan rekomendasi sanksi pencantuman dalam daftar hitam (blacklist) kepada rekanan atas nama PT PJ, dengan alasan PT PJ tidak memenuhi ketentuan dalam Surat Penunjukan Penyedia Barang/Jasa (SPPBJ). Jenis pekerjaan adalah pengadaan (sewa) mesin fotokopi pada Kantor Pusat Direktorat Jenderal X tahun anggaran 2017. Sesuai dengan ketentuan Pasal 4 Peraturan Kepala Lembaga Kebijakan Pengadaan Barang/Jasa Pemerintah Nomor 18 Tahun 2014 tentang Daftar Hitam Dalam Pengadaan Barang/Jasa Pemerintah, bahwa: 1. Pengenaan sanksi pencantuman dalam Daftar Hitam diberikan kepada Penyedia Barang/Jasa saat proses pemilihan dan/atau pelaksanaan kontrak. 2. Penyedia Barang/Jasa dikenakan sanksi pencantuman dalam Daftar Hitam antara lain apabila menolak Surat Penunjukan Penyedia Barang/Jasa (SPPBJ) dengan alasan yang tidak dapat diterima secara objektif oleh PPK; 3. APIP menindaklanjuti usulan penetapan dan/atau keberatan sebagaimana dimaksud dengan cara melakukan pemeriksaan dan klarifikasi kepada PPK/Kelompok Kerja ULP/Pejabat Pengadaan, Penyedia Barang/Jasa dan/atau pihak lain yang dianggap perlu paling lambat 10 (sepuluh) hari sejak surat usulan penetapan sanksi pencantuman dalam Daftar Hitam dan/atau keberatan diterima. Belajar dari pengalaman beberapa kali menangani permohonan rekomendasi pencantuman dalam Daftar Hitam, hal yang paling sulit adalah menemukan bukti yang meyakinkan bahwa rekanan memang bersalah dan memenuhi syarat untuk dikenakan sanksi pencantuman dalam Daftar Hitam sesuai dengan yang dijelaskan pihak pemohon.<br></p>', 10, 3, 'y', 'y', NULL, NULL),
(5, 1, 2, 'Public', 'BELANJA PEMERINTAH MELALUI BELA PENGADAAN', '5-belanja-pemerintah-melalui-bela-pengadaan', '2023-09-10 00:00:00', '2023/10/20231009/6523b68264779.JPG', '<p>Membahas bagaimana proses pembelian melalui Bela Pengadaan</p>', 10, 1, 'y', 'y', NULL, NULL),
(6, 1, 3, 'Public', 'Kriteria Pengalihan Jabatan Struktural ke Jabatan Fungsional', '6-kriteria-pengalihan-jabatan-struktural-ke-jabatan-fungsional', '2023-09-10 00:00:00', '2023/10/20231009/6523b85b2c559.JPG', '<p>Penyederhanaan birokrasi melalui&nbsp;rasionalisasi eselon menjadi 2 level\r\n (delayering),&nbsp;ditujukan untuk meningkatkan efisiensi birokrasi. \r\nSebagaian besar dari Eselon III dan IV yang disederhanakan akan beralih \r\nmenjadi jabatan fungsional.&nbsp;Agar tujuan delayering tersebut dapat \r\ntercapai, diperlukan langkah untuk mewujudkannya, seperti pembentukan \r\nbeberapa jumlah jenis jabatan fungsional, kejelasan tugas pokok dan \r\nfungsi yang baru, hingga penguatan masa transisi melalui&nbsp;coaching, \r\nmentoring, dan councseling.</p><p>Namun ternyata tidak semua j<span style=\"color: rgba(0, 0, 0, 0.65); background-color: #ffffff;\" data-mce-style=\"color: rgba(0, 0, 0, 0.65); background-color: #ffffff;\">abatan\r\n eselon III dan IV dapat dirubah menjadi jabatan fungsional. Bagaimana \r\nkriteria pengalihan jabatan structural ke jabatan fungsional? Bersama \r\nBapak Widjanarko, Widyaiswara Ahli Utama Pusdiklat Keuangan Umum, kita \r\nakan mendalaminya.</span></p><p><span style=\"color: rgba(0, 0, 0, 0.65); background-color: #ffffff;\" data-mce-style=\"color: rgba(0, 0, 0, 0.65); background-color: #ffffff;\">Video ini dapat menjadi suplemen mata pelajaran </span>Overview Kementerian Keuangan pada Orientasi Pegawai Baru BPPK.</p><p></p>', 9, 0, 'y', 'y', NULL, NULL),
(7, 1, 5, 'Public', 'Dari Unit Kepatuhan Menuju Pola Pikir Budaya Kepatuhan', '7-dari-unit-kepatuhan-menuju-pola-pikir-budaya-kepatuhan', '2023-09-10 00:00:00', '2023/10/20231009/6523b960e7b09.jpg', '<p>Widyaiswara Ahli Utama Pusdiklat Keuangan Umum, Bapak Rahman Ritza, \r\npada video ini akan menjelaskan apa saja karakteristik yang diperlukan \r\nuntuk mewujudkan suatu budaya kepatuhan.</p><p>Video ini \r\nmerupakan suplemen mata pelajaran Parameter Evaluasi&nbsp;Komitmen Pimpinan, \r\nKomponen Sistem Pengendalian Intern (Lingkungan Pengendalian), dan&nbsp;Etika\r\n Auditing pada Workshop Evaluasi Komitmen Pimpinan UKI, Pelatihan \r\nPembetukan Jabatan Fungsional Auditor Trampil/Muda/Ahli, PJJ Informasi \r\nStrategis, PJJ PRO UKI, dan PJJ Dasar Pengawasan.</p><p></p>', 15, 2, 'y', 'y', NULL, NULL),
(8, 1, 6, 'Public', 'Materi untuk Kategori Promosi yang terdiri dari Sub Materi yang lebih dari satu', '8-materi-untuk-kategori-promosi-yang-terdiri-dari-sub-materi-yang-lebih-dari-satu', '2023-09-10 00:00:00', '2023/10/20231009/6523ba436fc97.JPG', '<p>Kenaikan suhu rata-rata di bumi, perubahan curah hujan, kenaikan \r\npermukaan air laut, dan frekuensi bencana yang berhubungan dengan cuaca \r\nseperti penyediaan sumber makanan dan air minum, merpakan dampak dari \r\naktivitas tersebut. Jika membiarkan keadaan ini terus berjalan seperti \r\nbiasa, maka diperkirakan pada tahun 2100 suhu rata-rata di bumi \r\nmeningkat 4,5 derajat Celcius dan permukaan air laut naik sekitar 95 cm.\r\n Beberapa negara kepulauan seperti Indonesia, Jepang,&nbsp; Maladewa, dan \r\nKaribia akan kehilangan sebagian besar wilayahnya.</p>', 50, 16, 'y', 'y', NULL, NULL),
(9, 1, 7, 'Public', 'MUTASI: Pengabdian, Karier dan Keluarga', '9-mutasi-pengabdian-karier-dan-keluarga', '2023-09-10 00:00:00', '2023/10/20231010/6524b7fd9c17e.jpeg', '<p>Mutasi adalah satu kata yang tidak asing bagi kalangan Aparatur Sipil\r\n Negara (ASN). Apa yang terpikir oleh kita saat mendengar kata MUTASI?&nbsp; \r\nTerbayang capek dan lelahnya mengurus kepindahan sekolah bagi anak – \r\nanak, &nbsp;sampai malam mengepak pakaian, buku, lemari, kulkas, tempat tidur\r\n dan perkakas dibawa ke tempat tugas baru, berjumpa dengan lingkungan \r\nbaru, berjumpa dengan rekan kerja baru dengan karakter yang baru, \r\nmenjalani suasana baru, budaya baru.</p><p>Bagi sebagian keluarga mutasi juga berarti mulai fase baru dalam rumah tangga yaitu fase <em>Long Distance Marriage </em>atau lebih dikenal dengan istilah<em> LDM. </em>Atau bagi pegawai yang belum menikah, mereka akan menjalani <em>Long Distance Relationship (LDR</em>)\r\n yang menjadi tantangan tersendiri untuk mempertahankan hubungan yang \r\nselama ini telah terjalin karena harus terpisah jarak, waktu dan fisik.</p><p></p>', 10, 3, 'y', 'y', NULL, NULL),
(10, 1, 7, 'Public', 'Membangun Tim Audit Spesialis yang Kompeten', '10-membangun-tim-audit-spesialis-yang-kompeten', '2023-09-10 00:00:00', '2023/10/20231010/6524b841432f7.png', '<p>Dalam kesempatan ini, penulis hendak berbagi pengalaman selama \r\nsetidaknya 6 tahun terakhir dalam mendampingi rekan-rekan tim audit \r\nkeamanan siber di Inspektorat VII. Pembahasan tema ini rasanya bukan \r\nyang pertama, namun demikian apa yang penulis temui dan praktikkan \r\nkiranya dapat memperkaya khasanah pembaca tentang bagaimana membentuk \r\ntim audit dengan kompetensi spesialis yang mumpuni. Terlebih dengan \r\nterbitnya PMK Nomor 18/PMK.09/2022 yang memperkuat peran pengawasan \r\nInspektorat Jenderal atas tugas fungsi Menteri Keuangan selaku <em>Chief Operational Officer</em>, <em>Chief Financial Officer</em>,\r\n dan wakil pemerintah dalam Kepemilikan Kekayaan Negara yang Dipisahkan,\r\n menuntut organisasi ini memiliki tim-tim audit yang memiliki kompetensi\r\n spesialis (misal: konstruksi, energi sumber daya <br></p>', 10, 0, 'y', 'y', NULL, NULL),
(11, 1, 7, 'Public', 'Membangun \"Tim Audit Spesialis\" yang Kompeten', '11-membangun-tim-audit-spesialis-yang-kompeten', '2023-09-10 00:00:00', '2023/10/20231010/6524b8e4aac46.jpg', '<p>Dalam kesempatan ini, penulis hendak berbagi pengalaman selama \r\nsetidaknya 6 tahun terakhir dalam mendampingi rekan-rekan tim audit \r\nkeamanan siber di Inspektorat VII. Pembahasan tema ini rasanya bukan \r\nyang pertama, namun demikian apa yang penulis temui dan praktikkan \r\nkiranya dapat memperkaya khasanah pembaca tentang bagaimana membentuk \r\ntim audit dengan kompetensi spesialis yang mumpuni. Terlebih dengan \r\nterbitnya PMK Nomor 18/PMK.09/2022 yang memperkuat peran pengawasan \r\nInspektorat Jenderal atas tugas fungsi Menteri Keuangan selaku Chief \r\nOperational Officer, Chief Financial Officer, dan wakil pemerintah dalam\r\n Kepemilikan Kekayaan Negara yang Dipisahkan, menuntut organisasi ini \r\nmemiliki tim-tim audit yang memiliki kompetensi spesialis (misal: \r\nkonstruksi, energi sumber daya alam, asuransi, kontraktual). Tim audit \r\nkeamanan siber merupakan salah satu kompartemen di Inspektorat VII yang \r\nbertugas memberikan asurans dan konsultasi bagi manajemen dan pimpinan \r\ndi Kemenkeu, bahwa risiko keamanan siber di Kemenkeu telah dimitigasi \r\nsecara memadai melalui penerapan berbagai bentuk instrumen pengendalian.\r\n Tim ini dituntut untuk memiliki kompetensi spesialis keamanan siber \r\nyang sifatnya konseptual dan teknikal. Dan berdasarkan pengalaman \r\npenulis, untuk dapat menjadi tim yang solid dan kompeten, harus ditempuh\r\n dalam waktu yang tidak sebentar.</p>', 10, 2, 'y', 'y', NULL, NULL),
(12, 1, 8, 'Public', 'Penilaian Kinerja Penyedia Barang/Jasa', '12-penilaian-kinerja-penyedia-barangjasa', '2023-09-10 00:00:00', '2023/10/20231010/6524bc0812969.jpg', '<p>Bagaimana aktivitas dan proses untuk mengukur kinerja Penyedia dalam melaksanakan pekerjaan berdasarkan indikator yang telah</p><p>ditetapkan.\r\n Penilaian Kinerja dibutuhkan untuk meningkatkan kualitas hasil atas \r\nbarang/jasa yang dihasilkan oleh Penyedia. Penilaian didasarkan pada \r\nkinerja Penyedia dalam melaksanakan pekerjaan sesuai dengan ruang \r\nlingkup yang telah ditetapkan dalam kontrak.</p><p></p>', 10, 40, 'y', 'y', NULL, NULL),
(13, 1, 9, 'Public', 'Tunjangan Pengabdian Wilayah Terpencil untuk PPPK', '13-tunjangan-pengabdian-wilayah-terpencil-untuk-pppk', '2023-09-10 00:00:00', '2023/10/20231010/6524d5b4c63a1.jpg', '<p>Pada video pembelajaran ini, Bp. Muhammad Syahrul Fuady, Dosen PKN STAN,\r\n menyampaikan pemaparan dan penjelasan singkat terkait materi Tunjangan \r\nPengabdian Wilayah Terpencil untuk PPPK (Pegawai Pemerintah dengan \r\nPerjanjian Kerja).</p>', 8, 19, 'y', 'y', NULL, NULL),
(14, 1, 9, 'Public', 'Pengelolaan Belanja Gaji dan Tunjangan', '14-pengelolaan-belanja-gaji-dan-tunjangan', '2023-09-10 00:00:00', '2023/10/20231010/6524d5cbd0dd7.jpg', '<p>Menjelaskan pelaksanaan pengelolaan belanja gaji dan tunjangan</p>', 10, 25, 'y', 'y', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_activity`
--

CREATE TABLE `pengetahuan_activity` (
  `paId` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `paType` enum('','read','comment','like','pin') NOT NULL,
  `paIP` varchar(255) NOT NULL,
  `paModule` varchar(255) DEFAULT NULL,
  `refId` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengetahuan_activity`
--

INSERT INTO `pengetahuan_activity` (`paId`, `id_user`, `paType`, `paIP`, `paModule`, `refId`, `created_at`, `updated_at`) VALUES
(1, 5, 'read', '127.0.0.1', 'materi', '2-pengelolaan-kinerja-pegawai-asn-pasca-penyederhanaan-birokrasi', '2023-10-09 08:01:50', NULL),
(2, 5, 'read', '127.0.0.1', 'materi', '4-pencantuman-dalam-daftar-hitam-blacklist-salah-siapa', '2023-10-09 08:11:08', NULL),
(3, 5, 'read', '127.0.0.1', 'materi', '5-belanja-pemerintah-melalui-bela-pengadaan', '2023-10-09 08:15:16', NULL),
(4, 5, 'read', '127.0.0.1', 'materi', '8-materi-untuk-kategori-promosi-yang-terdiri-dari-sub-materi-yang-lebih-dari-satu', '2023-10-09 08:58:46', NULL),
(5, 5, 'read', '127.0.0.1', 'materi', '2-pengelolaan-kinerja-pegawai-asn-pasca-penyederhanaan-birokrasi', '2023-10-10 02:17:15', NULL),
(6, 5, 'read', '127.0.0.1', 'materi', '7-dari-unit-kepatuhan-menuju-pola-pikir-budaya-kepatuhan', '2023-10-10 02:17:35', NULL),
(7, 5, 'read', '127.0.0.1', 'materi', '8-materi-untuk-kategori-promosi-yang-terdiri-dari-sub-materi-yang-lebih-dari-satu', '2023-10-10 02:18:42', NULL),
(8, 5, 'read', '127.0.0.1', 'materi', '12-penilaian-kinerja-penyedia-barangjasa', '2023-10-10 02:51:00', NULL),
(9, 5, 'read', '127.0.0.1', 'materi', '11-membangun-tim-audit-spesialis-yang-kompeten', '2023-10-10 03:03:44', NULL),
(10, 5, 'read', '178.100.212.81', 'materi', '12-penilaian-kinerja-penyedia-barangjasa', '2023-10-10 04:03:39', NULL),
(11, 5, 'read', '127.0.0.1', 'materi', '14-pengelolaan-belanja-gaji-dan-tunjangan', '2023-10-10 04:45:03', NULL),
(12, 5, 'read', '178.100.212.81', 'materi', '8-materi-untuk-kategori-promosi-yang-terdiri-dari-sub-materi-yang-lebih-dari-satu', '2023-10-10 06:40:03', NULL),
(13, 5, 'read', '178.100.212.81', 'materi', '9-mutasi-pengabdian-karier-dan-keluarga', '2023-10-10 06:49:32', NULL),
(14, 5, 'read', '178.100.212.81', 'materi', '13-tunjangan-pengabdian-wilayah-terpencil-untuk-pppk', '2023-10-10 07:23:28', NULL),
(15, 5, 'read', '178.100.212.81', 'materi', '11-membangun-tim-audit-spesialis-yang-kompeten', '2023-10-10 07:24:16', NULL),
(16, 5, 'read', '178.100.212.81', 'materi', '7-dari-unit-kepatuhan-menuju-pola-pikir-budaya-kepatuhan', '2023-10-10 07:27:02', NULL),
(17, 5, 'read', '178.100.212.81', 'materi', '1-rancangan-pedoman-teknis-pembinaan-kepegawaian-jabatan-fungsional', '2023-10-10 07:27:35', NULL),
(18, 5, 'read', '178.100.212.81', 'materi', '14-pengelolaan-belanja-gaji-dan-tunjangan', '2023-10-10 07:30:48', NULL),
(19, 5, 'read', '178.100.212.81', 'materi', '3-penyusunan-apbn-penetapan-pagu-anggaran', '2023-10-10 07:44:22', NULL),
(20, 5, 'read', '127.0.0.1', 'materi', '13-tunjangan-pengabdian-wilayah-terpencil-untuk-pppk', '2023-10-10 09:04:13', NULL),
(21, 5, 'read', '127.0.0.1', 'materi', '13-tunjangan-pengabdian-wilayah-terpencil-untuk-pppk', '2023-10-11 02:58:15', NULL),
(22, 5, 'read', '178.100.212.81', 'materi', '14-pengelolaan-belanja-gaji-dan-tunjangan', '2023-10-11 03:04:55', NULL),
(23, 5, 'read', '127.0.0.1', 'materi', '1-rancangan-pedoman-teknis-pembinaan-kepegawaian-jabatan-fungsional', '2023-10-11 03:39:11', NULL),
(24, 5, 'read', '127.0.0.1', 'materi', '8-materi-untuk-kategori-promosi-yang-terdiri-dari-sub-materi-yang-lebih-dari-satu', '2023-10-11 03:47:52', NULL),
(25, 5, 'read', '127.0.0.1', 'materi', '14-pengelolaan-belanja-gaji-dan-tunjangan', '2023-10-11 04:07:38', NULL),
(26, 5, 'read', '127.0.0.1', 'materi', '12-penilaian-kinerja-penyedia-barangjasa', '2023-10-11 04:17:55', NULL),
(27, 5, 'read', '192.168.12.150', 'materi', '9-mutasi-pengabdian-karier-dan-keluarga', '2023-10-11 07:05:19', NULL),
(28, 5, 'read', '192.168.12.150', 'materi', '14-pengelolaan-belanja-gaji-dan-tunjangan', '2023-10-11 07:14:55', NULL),
(29, 5, 'read', '127.0.0.1', 'materi', '13-tunjangan-pengabdian-wilayah-terpencil-untuk-pppk', '2023-10-12 03:13:59', NULL),
(30, 5, 'read', '127.0.0.1', 'materi', '14-pengelolaan-belanja-gaji-dan-tunjangan', '2023-10-13 02:09:54', NULL),
(31, 5, 'read', '127.0.0.1', 'materi', '2-pengelolaan-kinerja-pegawai-asn-pasca-penyederhanaan-birokrasi', '2023-10-13 07:38:25', NULL),
(32, 5, 'read', '127.0.0.1', 'materi', '12-penilaian-kinerja-penyedia-barangjasa', '2023-10-13 08:04:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_category`
--

CREATE TABLE `pengetahuan_category` (
  `catId` int(10) UNSIGNED NOT NULL,
  `catName` varchar(255) NOT NULL,
  `catShort` varchar(4) NOT NULL,
  `catPermalink` varchar(255) NOT NULL,
  `catDescription` tinytext NOT NULL,
  `catImage` varchar(255) NOT NULL,
  `catStatus` enum('y','n') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengetahuan_category`
--

INSERT INTO `pengetahuan_category` (`catId`, `catName`, `catShort`, `catPermalink`, `catDescription`, `catImage`, `catStatus`, `created_at`, `updated_at`) VALUES
(1, 'Penyusunan Dan Penetapan Kebutuhan', '', '1-penyusunan-dan-penetapan-kebutuhan', 'Keterangan Penyusunan Dan Penetapan Kebutuhan<br>', '2023/10/20231009/6523adb526960.png', 'y', NULL, NULL),
(2, 'Pengadaan', '', '2-pengadaan', '<p>Keterangan Pengadaan<br></p>', '2023/10/20231009/6523adc247f30.png', 'y', NULL, NULL),
(3, 'Pangkat Dan Jabatan', '', '3-pangkat-dan-jabatan', '<p>Keterangan Pangkat Dan Jabatan<br></p>', '2023/10/20231009/6523adcb8d245.png', 'y', NULL, NULL),
(4, 'Pengembangan Karier', '', '4-pengembangan-karier', '<p>Keterangan Pengembangan Karier<br></p>', '2023/10/20231009/6523add94e471.png', 'y', NULL, NULL),
(5, 'Pola Karier', '', '5-pola-karier', '<p>Keterangan Pola Karier<br></p>', '2023/10/20231009/6523adea23547.png', 'y', NULL, NULL),
(6, 'Promosi', '', '6-promosi', '<p>Keterangan Promosi<br></p>', '2023/10/20231009/6523ae03c4f74.png', 'y', NULL, NULL),
(7, 'Mutasi', '', '7-mutasi', '<p>Keterangan Mutasi<br></p>', '2023/10/20231009/6523ae0d5ebd2.png', 'y', NULL, NULL),
(8, 'Penilaian Kinerja', '', '8-penilaian-kinerja', '<p>Keterangan Penilaian Kinerja<br></p>', '2023/10/20231009/6523ae3d8de67.png', 'y', NULL, NULL),
(9, 'Penggajian Dan Tunjangan', '', '9-penggajian-dan-tunjangan', '<p>Keterangan Penggajian Dan Tunjangan<br></p>', '2023/10/20231009/6523ae4a0e060.png', 'y', NULL, NULL),
(10, 'Penghargaan', '', '10-penghargaan', '<p>Keterangan Penghargaan<br></p>', '2023/10/20231009/6523ae566a283.png', 'y', NULL, NULL),
(11, 'Disiplin', '', '11-disiplin', '<p>Keterangan Disiplin<br></p>', '2023/10/20231009/6523ae5f05524.png', 'y', NULL, NULL),
(12, 'Pemberhentian', '', '12-pemberhentian', '<p>Keterangan Pemberhentian<br></p>', '2023/10/20231009/6523ae6c2e4b8.png', 'y', NULL, NULL),
(13, 'Jaminan Pensiun Dan Jaminan Hari Tua Dan', '', '13-jaminan-pensiun-dan-jaminan-hari-tua-dan', '<p>Keterangan Jaminan Pensiun Dan Jaminan Hari Tua Dan<br></p>', '2023/10/20231009/6523ae74304b9.png', 'y', NULL, NULL),
(14, 'Perlindungan', '', '14-perlindungan', '<p>Keterangan Perlindungan</p>', '2023/10/20231009/6523ae896bb43.png', 'y', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_comment`
--

CREATE TABLE `pengetahuan_comment` (
  `cmId` int(10) UNSIGNED NOT NULL,
  `cmPermalink` varchar(255) NOT NULL,
  `pgId` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `cmParent` int(11) NOT NULL,
  `cmComment` tinytext NOT NULL,
  `cmAddedDate` datetime NOT NULL,
  `cmDisplay` enum('y','n') NOT NULL,
  `cmSort` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengetahuan_comment`
--

INSERT INTO `pengetahuan_comment` (`cmId`, `cmPermalink`, `pgId`, `id_user`, `cmParent`, `cmComment`, `cmAddedDate`, `cmDisplay`, `cmSort`, `created_at`, `updated_at`) VALUES
(1, '1-356a192b7913b04c54574d18c28d46e6395428ab', 13, 5, 0, 'asdg<p></p>', '2023-10-11 10:32:25', 'y', 0, '2023-10-11 03:32:25', NULL),
(2, '2-da4b9237bacccdf19c0760cab7aec4a8359010b0', 13, 5, 0, 'ini contoh komentar<br><p></p>', '2023-10-11 10:37:38', 'y', 0, '2023-10-11 03:37:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_content`
--

CREATE TABLE `pengetahuan_content` (
  `pcId` int(10) UNSIGNED NOT NULL,
  `pgId` int(11) NOT NULL,
  `pcTitle` varchar(255) DEFAULT NULL,
  `pcPermalink` varchar(255) DEFAULT NULL,
  `pcContentType` enum('text','document','video') NOT NULL,
  `pcText` longtext DEFAULT NULL,
  `pcVideo` varchar(255) DEFAULT NULL,
  `pcDocuments` varchar(255) DEFAULT NULL,
  `pcDuration` int(11) NOT NULL,
  `pcSort` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengetahuan_content`
--

INSERT INTO `pengetahuan_content` (`pcId`, `pgId`, `pcTitle`, `pcPermalink`, `pcContentType`, `pcText`, `pcVideo`, `pcDocuments`, `pcDuration`, `pcSort`, `created_at`, `updated_at`) VALUES
(1, 1, 'Materi Rancangan Pedoman Teknis Pembinaan Kepegawaian Jabatan Fungsional', '2-materi-rancangan-pedoman-teknis-pembinaan-kepegawaian-jabatan-fungsional', 'document', NULL, NULL, '2023/10/20231009/6523b1266e746.PDF', 22, 1, NULL, NULL),
(2, 2, 'Materi Pengelolaan Kinerja Pegawai ASN Pasca Penyederhanaan Birokrasi', '3-materi-pengelolaan-kinerja-pegawai-asn-pasca-penyederhanaan-birokrasi', 'document', NULL, NULL, '2023/10/20231009/6523b1d40b065.pdf', 10, 1, NULL, NULL),
(3, 3, 'Video Penyusunan APBN: Penetapan Pagu Anggaran', '4-video-penyusunan-apbn-penetapan-pagu-anggaran', 'video', NULL, '2023/10/20231009/6523b50d9707b.mp4', NULL, 2, 1, NULL, NULL),
(4, 4, 'Materi Pencantuman dalam daftar hitam (blacklist), salah siapa?', '4-materi-pencantuman-dalam-daftar-hitam-blacklist-salah-siapa', 'text', '<p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Berawal\r\n dari adanya surat masuk dari Sekretaris Unit Eselon I selaku Kuasa \r\nPengguna Anggaran (KPA) hal permohonan rekomendasi sanksi pencantuman \r\ndalam daftar hitam (<em>blacklist</em>) kepada rekanan atas nama PT PJ, \r\ndengan alasan PT PJ tidak memenuhi ketentuan dalam Surat Penunjukan \r\nPenyedia Barang/Jasa (SPPBJ). Jenis pekerjaan adalah pengadaan (sewa) \r\nmesin fotokopi pada Kantor Pusat Direktorat Jenderal X tahun anggaran \r\n2017.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Sesuai\r\n dengan ketentuan Pasal 4 Peraturan Kepala Lembaga Kebijakan Pengadaan \r\nBarang/Jasa Pemerintah &nbsp;Nomor 18 Tahun &nbsp;2014 tentang Daftar Hitam Dalam \r\nPengadaan Barang/Jasa Pemerintah, bahwa:</p><ol style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><li>Pengenaan\r\n sanksi pencantuman dalam&nbsp; Daftar&nbsp; Hitam&nbsp; diberikan&nbsp; kepada Penyedia \r\nBarang/Jasa&nbsp; saat&nbsp; proses&nbsp; pemilihan&nbsp; dan/atau&nbsp; pelaksanaan kontrak.</li><li>Penyedia\r\n Barang/Jasa dikenakan sanksi pencantuman dalam Daftar Hitam antara lain\r\n apabila menolak Surat&nbsp; Penunjukan&nbsp; Penyedia&nbsp; Barang/Jasa&nbsp; (SPPBJ)&nbsp; \r\ndengan alasan yang tidak dapat diterima secara objektif oleh PPK;</li><li>APIP\r\n menindaklanjuti usulan penetapan dan/atau keberatan sebagaimana \r\ndimaksud dengan cara melakukan pemeriksaan dan klarifikasi kepada \r\nPPK/Kelompok Kerja ULP/Pejabat Pengadaan, Penyedia Barang/Jasa dan/atau \r\npihak lain yang dianggap perlu paling lambat 10 (sepuluh) hari sejak \r\nsurat usulan penetapan sanksi pencantuman dalam Daftar Hitam dan/atau \r\nkeberatan diterima.</li></ol><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Belajar\r\n dari pengalaman beberapa kali menangani permohonan rekomendasi \r\npencantuman dalam Daftar Hitam, hal yang paling sulit adalah menemukan \r\nbukti yang meyakinkan bahwa rekanan memang bersalah dan memenuhi syarat \r\nuntuk dikenakan sanksi pencantuman dalam Daftar Hitam sesuai dengan yang\r\n dijelaskan pihak pemohon.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Dalam\r\n pemeriksaan ini Tim Itjen menggunakan metodologi analisis dokumen dan \r\nklarifikasi/konfirmasi/wawancara dengan pihak-pihak terkait, meliputi \r\nPokja ULP, PPK, rekanan, termasuk konfirmasi ke pihak luar (bank).</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Hal\r\n pertama yang Tim Itjen lakukan adalah meminta dokumen-dokumen pengadaan\r\n yang disimpan oleh Pokja ULP maupun PPK. Setelah dokumen pengadaan \r\nditerima lengkap, Tim Itjen fokus pada penelitian dokumen pengadaan yang\r\n memuat jadwal pengadaan, persyaratan administrasi, dan dokumen-dokumen \r\nyang harus disediakan peserta lelang.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Setelah\r\n mempelajari dokumen pengadaan, Tim Itjen melakukan \r\nklarifikasi/konfirmasi langsung kepada Pokja ULP, PPK dan Rekanan \r\nPemenang yang hasilnya dituangkan dalam Berita cara Pemeriksaan (BAP). \r\nDari hasil klarifikasi/konfirmasi ini diperoleh informasi sebagai \r\nberikut:</p><ol style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><li>Pengadaan\r\n barang/jasa sewa mesin fotokopi tahun anggaran 2017 dilakukan melalui \r\npelelangan ulang karena pada pelelangan pertama tidak ada peserta lelang\r\n yang lulus evaluasi persyaratan administrasi dan pelelangan dianggap \r\ngagal;</li><li>Pada pelelangan ulang, Pokja ULP menetapkan PT PJ sebagai\r\n pemenang lelang dan CV SAK sebagai Pemenang Cadangan 1 dengan selisih \r\npenawaran sebesar Rp431.739.000;</li><li>PPK menunjuk PT PJ sebagai \r\npenyedia barang/jasa sewa mesin fotokopi JP tahun 2017 dengan Surat \r\nPenunjukan Penyedia Barang/Jasa (SPPBJ) tanggal <strong>28 Desember 2016</strong>;</li><li>Dengan\r\n surat tanggal 29 Desember 2017, PPK menyatakan bahwa jaminan \r\npelaksanaan harus diserahkan tanggal 30 Desember 2017, dan \r\npenandatanganan kontrak tanggal 3 Januari 2017.</li><li>PT PJ mengajukan\r\n permohonan agar penandatanganan kontrak dan pengiriman/pemasangan mesin\r\n fotokopi dilakukan paling lambat tanggal 11 Januari 2017 sesuai dengan \r\nketentuan dalam dokumen pengadaan, dengan alasan:</li><li>Jangka waktu \r\npenyerahan Jaminan Pelaksanaan terlalu singkat, karena untuk penerbitan \r\nBank Garansi dibutuhkan waktu ±5 hari kerja setelah seluruh dokumen yang\r\n dipersyaratkan diisi, ditandatangani dan diterima oleh pihak Bank.</li><li>Penetapan\r\n waktu penyerahan Jaminan Pelaksanaan dan penandatanganan kontrak tidak \r\nsesuai dengan persyaratan dalam dokumen pengadaan yang menyebutkan \r\nbahwa:</li></ol><ul style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><li>penyerahan\r\n jaminan pelaksanaan paling lambat 14 hari setelah tanggal SPPBJ. Sesuai\r\n dengan tanggal penunjukan pemenang tanggal 28 Desember 2016, maka batas\r\n waktu penyerahan dokumen sesuai dengan dokumen pengadaan adalah tanggal\r\n <strong>11 Januari 2017</strong>.</li><li>jangka waktu penandatanganan kontrak antara tanggal 29 Desember 2016 sampai dengan tanggal <strong>11 Januari 2017</strong>.</li></ul><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">PPK menolak permohonan PT PJ dengan dengan alasan PT PJ telah membuat surat pernyataan kesanggupan untuk memenuhi <strong>ketentuan dalam dokumen </strong><strong>pengadaan</strong>.</p><ol style=\"text-align: justify;\" start=\"6\" data-mce-style=\"text-align: justify;\"><li>Pada tanggal <strong>3 Januari 2017</strong>\r\n PPK membatalkan penunjukan PT PJ sebagai penyedia barang/jasa, dan \r\nmenunjuk CV SAK (Pemenang Cadangan) sebagai penyedia barang/jasa sewa \r\nmesin fotokopi tahun 2017.</li></ol><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Melihat\r\n kondisi tersebut dan mempertimbangkan alasan rekanan menolak SPPBJ, Tim\r\n Itjen mulai ragu untuk menentukan apakah rekanan tersebut layak untuk \r\ndirekomendasikan agar dikenakan sanksi pencantuman dalam Daftar Hitam.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Tim\r\n Itjen sempat berkonsultasi dengan auditor pada Inspektorat lain yang \r\nbiasa menangani audit pengadaan barang dan jasa. Dari beberapa auditor \r\nyang kami minta tanggapannya, semuanya memberikan simpulan agar rekanan \r\ndikenakan sanksi pencantuman dalam Daftar Hitam.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Salah\r\n satu alasan rekanan menolak SPPBJ adalah jangka waktu penyerahan \r\nJaminan Pelaksanaan terlalu singkat (1 hari). Untuk mendapatkan \r\nkeyakinan terkait jangka waktu pembuatan Jaminan Pelaksanaan, Tim Itjen \r\nmelakukan konfirmasi ke beberapa bank (baik bank pemerintah maupun bank \r\nswasta) terkait jangka waktu pembuatan Jaminan Pelaksanaan (Bank \r\nGaransi). Hasil konfirmasi menunjukkan bahwa waktu yang dibutuhkan untuk\r\n pembuatan Jaminan Pelaksanaan Pekerjaan (Bank Garansi) adalah antara 3 \r\ns.d 5 hari kerja sejak persyaratan diterima lengkap. Padahal PPK \r\nmemberikan waktu hanya 1 hari kepada rekanan pemenang untuk menyerahkan \r\nJaminan Pelaksanaan.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Berdasarkan\r\n hal-hal tersebut di atas, akhirnya Tim Itjen berpendapat bahwa \r\npembatalan penunjukan penyedia jasa sewa mesin fotokopi pada Kantor \r\nPusat Direktorat Jenderal X untuk tahun anggaran 2017 <strong>tidak sepenuhnya</strong> disebabkan kesalahan PT PJ, &nbsp;karena dalam dokumen pengadaan telah ditetapkan:</p><ul style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><li>Penyerahan jaminan pelaksanaan paling lambat <strong>14 hari setelah tanggal SPPBJ</strong>.\r\n Dalam hal ini SPPBJ tanggal 28 Desember 2016, maka batas waktu \r\npenyerahan Jaminan Pelaksanaan sesuai dengan dokumen pengadaan adalah \r\ntanggal 11 Januari 2017.</li></ul><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Namun\r\n dalam suratnya PPK menetapkan penyerahan Jaminan Pelaksanaan paling \r\nlambat tanggal 30 Desember 2016. Rekanan hanya diberi waktu 1 (satu) \r\nhari untuk menyerahkan Jaminan Pelaksanaan.</p><ul style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><li>Jangka waktu penandatanganan kontrak antara tanggal 29 Desember 2016 sampai dengan tanggal <strong>11 Januari 2017.</strong></li></ul><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Sedangkan PPK telah menetapkan penandatanganan kontrak tanggal 3 Januari 2017.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Akhirnya setelah dibahas di internal tim, &nbsp;kami membuat simpulan untuk <strong>tidak mengenakan sanksi pencantuman dalam Daftar Hitam</strong>\r\n terhadap PT PJ. Hal ini kami sampaikan kepada Inspektur. Awalnya \r\nInspektur meragukan simpulan kami, namun setelah kami jelaskan panjang \r\nlebar, Inspektur pun mulai memahami pemikiran kami dan setuju dengan \r\nsimpulan kami, dan dalam catatannya Inspektur Jenderal setuju dengan \r\npendapat Tim karena adanya penolakan SPPBJ bukan semata-mata kesalahan \r\nrekanan.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><strong>SIMPULAN</strong></p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Diperlukan\r\n kehati-hatian dalam memutuskan untuk memberikan rekomendasi pengenaan \r\nsanksi pencantuman dalam Daftar Hitam terhadap rekanan, &nbsp;karena hal ini \r\nmenyangkut nasib dan kelangsungan usaha rekanan. Keputusan harus adil \r\ndan didukung dengan fakta yang ada di lapangan, data dan informasi dari \r\nfihak-fihak yang terlibat, dan bila perlu dapatkan juga informasi dari \r\nluar instansi. Belum tentu sepenuhnya kesalahan ada pada rekanan.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">---oOo---</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><strong>\"Saya\r\n menyatakan artikel ini merupakan hasil pengalaman atau pemikiran dan \r\npemaparan asli saya sendiri, dengan kontribusi, referensi, atau ide dari\r\n sumber lain dinyatakan secara implisit maupun eksplisit pada tubuh \r\ndan/atau lampiran artikel. Demikian pernyataan ini saya buat dengan \r\nsesungguhnya dan apabila di kemudian hari terdapat penyimpangan dan \r\nketidakbenaran dalam pernyataan ini, maka saya bersedia menerima sanksi \r\npelanggaran kode etik sesuai dengan peraturan yang berlaku di \r\nInspektorat Jenderal Kementerian Keuangan yaitu berupa pencabutan \r\ncapaian IKU atau dapat dikenakan sanksi pelanggaran disiplin/kode etik\"</strong></p><p></p>', NULL, NULL, 10, 1, NULL, NULL),
(5, 5, 'Materi Membahas bagaimana proses pembelian melalui Bela Pengadaan', '5-materi-membahas-bagaimana-proses-pembelian-melalui-bela-pengadaan', 'video', NULL, '2023/10/20231009/6523b68267660.mp4', NULL, 10, 1, NULL, NULL),
(6, 6, 'Materi Video Kriteria Pengalihan Jabatan Struktural ke Jabatan Fungsional', '6-materi-video-kriteria-pengalihan-jabatan-struktural-ke-jabatan-fungsional', 'video', NULL, '2023/10/20231009/6523b85b2ef3e.mp4', NULL, 9, 1, NULL, NULL),
(7, 7, 'Materi Dari Unit Kepatuhan Menuju Pola Pikir Budaya Kepatuhan', '7-materi-dari-unit-kepatuhan-menuju-pola-pikir-budaya-kepatuhan', 'document', NULL, NULL, '2023/10/20231009/6523b960ea385.pdf', 15, 1, NULL, NULL),
(8, 8, 'Komitmen Indonesia dalam Green Financing untuk Pembangunan Berlanjutan', '8-komitmen-indonesia-dalam-green-financing-untuk-pembangunan-berlanjutan', 'text', '<p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><strong>Kerentanan Indonesia Terhadap Perubahan Iklim</strong></p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Perubahan\r\n iklim saat ini bukan hanya menjadi ancaman nyata bagi penduduk bumi, \r\ntetapi benar-benar sudah dirasakan dampaknya. Tekanan untuk menciptakan \r\npertumbuhan ekonomi yang tinggi mendorong terjadinya industrialisasi, \r\npenggunaan bahan bakar fosil secara berlebihan, dan pembalakan hutan \r\nsecara massif. Aktivitas ini menimbulkan residu berupa gas buang yang \r\nmengandung karbon monoksida yang menjadi penyebab utama meningkatnya \r\npemanasan global. Hasil penelitian para ahli lingkungan menyebutkan \r\nbahwa 26% penyumbang pemanasan global berasal dari penggunaan bahan \r\nbakar fosil untuk pembangkit tenaga listrik, sarana transportasi, dan \r\nmesin-mesin industri. Penggunaan bahan bakar tersebut menghasilkan emisi\r\n gas CO berlebihan ke udara sehingga menimbulkan efek rumah kaca.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Kenaikan\r\n suhu rata-rata di bumi, perubahan curah hujan, kenaikan permukaan air \r\nlaut, dan frekuensi bencana yang berhubungan dengan cuaca seperti \r\npenyediaan sumber makanan dan air minum, merpakan dampak dari aktivitas \r\ntersebut. Jika membiarkan keadaan ini terus berjalan seperti biasa, maka\r\n diperkirakan pada tahun 2100 suhu rata-rata di bumi meningkat 4,5 \r\nderajat Celcius dan permukaan air laut naik sekitar 95 cm. Beberapa \r\nnegara kepulauan seperti Indonesia, Jepang,&nbsp; Maladewa, dan Karibia akan \r\nkehilangan sebagian besar wilayahnya.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Melihat\r\n kondisi ini, Indonesia memiliki kepentingan untuk turut mengendalikan \r\npemanasan global dan menangani perubahan iklim. Langkah yang ditempuh \r\noleh Pemerintah yaitu selalu aktif dalam pembahasan terkait perubahan \r\niklim global yang sudah dimulai sejak era Presiden Suharto. Selain itu, \r\nhasil-hasil kesepakatan tersebut juga ditindaklanjuti menjadi kebijakan \r\nyang mengarusutamakan penanganan dampak perubahan iklim.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><strong><em>Green Financing</em></strong></p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Istilah <em>Green Financing</em> dalam beberapa waktu terakhir cukup mengemuka. Menurut Höhne, et al (2012), “<em>Green financing</em>\r\n adalah istilah yang luas yang dapat merujuk ke investasi keuangan yang \r\nmengalir ke proyek-proyek pembangunan berkelanjutan dan inisiatif, \r\nproduk lingkungan, dan kebijakan yang mendorong pengembangan ekonomi \r\nyang berkelanjutan”.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Berdasarkan studi yang dilakukan oleh tim dari Pricewaterhouse Coopers Consultants (PWC) (2013) mengenai implementasi <em>Green Financing</em> di China, diketahui bahwa untuk sektor perbankan, <em>Green Financing</em>\r\n didefinisikan sebagai produk dan jasa keuangan yang menggunakan \r\npertimbangan faktor lingkungan dalam pengambilan keputusan kredit, \r\nmerangsang lahirnya lingkungan investasi yang bertanggung jawab dan \r\nmendorong terciptanya teknologi ramah lingkungan bagi proyek industri \r\ndan bisnis.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Green\r\n Financing di Indonesia didefinisikan sebagai dukungan menyeluruh dari \r\nindustri jasa keuangan untuk pertumbuhan berkelanjutan yang dihasilkan \r\ndari keselarasan antara kepentingan ekonomi, sosial, dan lingkungan \r\nhidup.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><em>Green Financing</em> terdiri dari dimensi:</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">1)\r\n Mencapai keunggulan industri, sosial dan ekonomi dalam rangka \r\nmengurangi ancaman pemanasan global dan pencegahan terhadap permasalahan\r\n lingkungan hidup dan sosial lainnya;</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">2) Memiliki tujuan untuk terjadinya pergeseran target menuju ekonomi rendah karbon yang kompetitif;</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">3) Secara strategis mempromosikan investasi ramah lingkungan hidup di berbagai sektor usaha/ekonomi; dan</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">4)\r\n Mendukung prinsip-prinsip pembangunan Indonesia sebagaimana tercantum \r\ndalam RPJM, yaitu 4P (pro-growth, pro-jobs, pro-poor, dan \r\npro-environment).</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Istilah <em>Green Financing</em>\r\n sebenarnya mulai mengemuka dalam satu dekade terakhir siring dengan \r\nmunculnya gerakan untuk mengurangi emisi dan polusi guna mempercepat \r\npemulihan kondisi lingkungan dan menggalakkan gaya hidup yang ramah \r\nlingkungan. Dampak emisi gas carbon monoksida yang dihasilkan oleh \r\nindustry menimbulkan efek gas rumah kaca.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Akhir-akhir\r\n ini dampak dari efek rumah kaca semakin dirasakan oleh penduduk Bumi. \r\nTanpa adanya pengurangan emisi dan polusi secara serius, diperkirakan \r\ndalam beberapa dekade ke depan Bumi menjadi semakin tidak seimbang. Hal \r\nini bukan hanya akan menimbulkan bencana ekologi, tetapi juga bencana \r\nekonomi. Beberapa negara di dunia sudah menunjukkan keseriusannya dalam \r\nmengurangi emisi dan polusi, serta pengembangan <em>Green Financing</em>.\r\n Ambil contoh misalnya Jerman yang bertekad menjadi negara pelopor yang \r\nakan menerapkan peraturan ketat dalam penggunaan kendaraan bermotor. \r\nSetidaknya pada 2030 mendatang, semua mobil yang dijual di Jerman harus \r\nbebas emisi.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">China ingin menjadi pelopor dalam <em>Green Financing</em>. Presiden China Xi Jinping memerintahkan kepada seluruh bank di China untuk turut serta mengembangkan <em>Green Financing</em> demi mewujudkan cita-cita China sebagai sebuah negara terdepan dalam urusan peradaban ekologi dunia. Pedoman Bangunan Sistem <em>Green Financing</em>\r\n telah diluncurkan pemerintah China. Sebuah kebijakan yang berusaha \r\nuntuk mengintegrasikan pembangunan ekonomi dan pelestarian alam.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><strong>Komitmen Indonesia dalam Pembangunan Berkelanjutan </strong></p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Isu\r\n pembangunan berkelanjutan sebenarnya telah menjadi bagian dari visi dan\r\n misi pembangunan bangsa Indonesia sebagaimana tertuang dalam Rencana \r\nPembangunan Jangka Panjang Nasional (RPJPN) dan Rencana Pembangunan \r\nJangka Menengah Nasional (RPJMN). Dalam RPJPN disebutkan bahwa salah \r\nsatu arah pembangunan nasional adalah mewujudkan Indonesia yang asri dan\r\n lestari diantaranya dengan mendayagunakan sumber daya alam yang \r\nterbarukan dan mengelola sumber daya alam yang tidak terbarukan. \r\nSedangkan dalam RPJMN disebutkan bahwa salah satu Agenda Pembangunan \r\nPaska 2015 adalah pembangunan lingkungan yang tercermin pada fokus \r\nmitigasi kepada perubahan iklim, konservasi sumberdaya alam dan \r\nperlindungan ekosistem serta keanekaragaman hayati disertai dengan \r\nadanya rumusan cara pencapaian (means of implementation).</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Di\r\n tingkat internasional, isu ini telah ditetapkan secara resmi oleh PBB \r\npada saat menyelenggarakan sidang umum tanggal 25 September 2015 di New \r\nYork. Aksi terhadap perubahan iklim ditetapkan menjadi salah satu Agenda\r\n Pembangunan Berkelanjutan (Sustainable Developments Goals/SDGs) Tahun \r\n2015-2030. Sebagai wujud peran aktif dalam mengatasi dampak perubahan \r\niklim, Indonesia menjadi salah satu dari tiga puluh negara yang menjadi \r\nanggota Open Working Group (OWG) on Sustainable Development Goals (SDG).\r\n Indonesia juga terlibat dalam Forum Tenaga Ahli (Expert Forum) \r\npenyusunan Konsep Pembiayaan Pembangunan Berkelanjutan, yang menyusun \r\nlangkah-langkah pembiayaan untuk pelaksanaan Agenda Pembangunan Paska \r\n2015.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Tujuan\r\n dalam SDGs yang berjumlah 13 tersebut juga telah diakomodasi dalam \r\nPeraturan Presiden Nomor 59 Tahun 2017 tentang Pelaksanaan Pencapaian \r\nPembangunan Berkelanjutan. Berdasarkan informasi dari Third National \r\nCommunication (TNC) tahun 2017, biaya yang diperlukan untuk \r\nkegiatan-kegiatan yang berikatan dengan penurunan emisi GRK dan mitigasi\r\n perubahan iklim mencapai 81 milyar USD untuk rentang waktu tahun \r\n2015-2020 atau diperlukan senilai 16,2 milyar USD per tahun. Sedangkan \r\ndana yang mampu dialokasikan oleh Pemerintah untuk aksi mitigasi dan \r\nadaptasi saat ini senilai 55, 1 milyar USD, sehingga masih terdapat gap \r\npembiayaan yang cukup besar. Pemeritah saat ini terus mengupayakan \r\nadanya inovasi instrumen pembiayaan yang dapat dimanfaatkan untuk \r\naksi-aksi pengurangan dampak perubahan iklim sekaligus memberikan \r\nmanfaat bagi pembangunan ekonomi Indonesia.</p><p></p>', NULL, NULL, 10, 1, NULL, NULL),
(9, 8, 'PRESIDENSI G20 : INKLUSIF DAN SUSTAINABLE OUTCOMES #KLF2022', '9-presidensi-g20-inklusif-dan-sustainable-outcomes-klf2022', 'text', '<p> &nbsp;&nbsp; Indonesia secara resmi memegang kendali presidensi G20 terhitung mulai\r\n 1 Desember 2021 melanjutkan estafet Italia. Presidensi G20 Indonesia \r\nmengangkat tema “Recover Together, Recover Stronger” berfokus pada tiga \r\nsektor yaitu layanan kesehatan inklusif, transformasi berbasis digital, \r\ndan transisi energi berkelanjutan. Presidensi G20 Indonesia memberikan \r\nkesempatan untuk berkontribusi lebih besar pada pemulihan ekonomi global\r\n dan mengembangkan tatanan dunia yang lebih bijaksana, adil, serta \r\nberkelanjutan berdasarkan kebebasan adil dan makmur. Presidensi G20 juga\r\n memperjuangkan aspirasi dan kepentingan negara berkembang, selain itu \r\nG20 bertujuan untuk membangun tatanan dunia yang lebih adil. Indonesia \r\nberupaya memperkuat solidaritas global dalam mengatasi isu perubahan \r\niklim dan pembangunan berkelanjutan, menggalang komitmen negara maju \r\nuntuk membantu negara berkembang, serta mengajak negara ekonomi utara \r\n(negara maju) untuk membantu negara ekonomi selatan. Terdapat dua isu \r\nutama yang dibahas dalam G20 yaitu <em>finance track</em> dan <em>sherpa track</em>.</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Agenda prioritas <em>finance track</em> presidensi G20 Indonesia 2022:</p><ol><li><em>Exit strategy</em></li></ol><p>Membahas terkait perlindungan negara anggota untuk dapat memulihkan ekonomi (khususnya ekonomi negara berkembang).</p><ol start=\"2\"><li><em>Scarring effect</em></li></ol><p>Mengatasi\r\n dampak buruk dari krisis untuk meningkatkan produktivitas dan \r\npertumbuhan ekonomi jangka Panjang. Yang perlu ditekankan dalam \r\nmengatasi dampak buruk tersebut juga tetap memperhatikan tenaga kerja, \r\nsektor korporasi, dan sektor keuangan.</p><ol start=\"3\"><li>Sistem pembayaran di era digital</li></ol><p>Pada agenda ini berfokus terhadap &nbsp;<em>cross border payment</em>&nbsp;(CBP) atau standar pembayaran lintas batas negara dan prinsip-prinsip pengembangan&nbsp;<em>central bank digital currency</em>&nbsp;(CBDC). Agenda tersebut dilatarbelakangi krisis pandemi COVID-19 yang mengakselerasi sistem pembayaran digital di era modern.</p><ol start=\"4\"><li><em> </em><em>Sustainable finance</em></li></ol><p>Membahas\r\n risiko iklim dan risiko transisi menuju ekonomi rendah karbon serta \r\nkeuangan berkelanjutan dari perspektif makroekonomi maupun stabilitas \r\nkeuangan. Indonesia menjadi salah satu <em>piloting</em> mekanisme transisi energi. Indonesia berupaya untuk transformasi dari pengguna pemangkit listrik berbahan batu bara menuju <em>green energy</em>.</p><ol start=\"5\"><li>Inklusi keuangan: inklusi keuangan digital dan keuangan UKM</li></ol><p>Memanfaatkan <em>open banking</em>\r\n untuk meningkatkan produktivitas, mendukung perekonomian, dan inklusi \r\nkeuangan bagi masyarakat terutama perempuan, generasi muda, dan UMKM.</p><ol start=\"6\"><li>Perpajakan internasional</li></ol><p>Membahas perpajakan internasional khususnya tentang strategi perencanaan pajak yang dikenal dengan <em>Base Erosion and Profit Sharing</em> (BEPS).</p><p><br></p><p>Prioritas Indonesia dalam&nbsp;<em>sherpa track</em> mempresentasikan kebutuhan nasional, negara miskin, berkembang, dan maju.&nbsp;Agenda prioritas <em>sherpa track</em> G20 Indonesia 2022:</p><ol><li>Transformasi sistem kesehatan global&nbsp;</li></ol><p>Agenda tersebut berfokus terhadap peningkatan produksi vaksin dan produk medis.</p><ol start=\"2\"><li>Transformasi ekonomi dan digital</li></ol><p>Cara\r\n transformasi ekonomi- digital dengan menciptakan nilai sehingga \r\npemanfaatan teknologi digital lebih inklusif untuk mempercepat pemulihan\r\n ekonomi khususnya UMKM dan inklusi keuangan.</p><ol start=\"3\"><li>Transisi energi&nbsp;</li></ol><p>Transisi\r\n energi dapat diterapkan dengan cara mendorong perencanaan prioritas \r\nuntuk mempercepat penggunaan sumber energi yang lebih ramah lingkungan.</p><p><br></p><p><strong>Keberhasilan dan Manfaat Strategis</strong></p><p>Salah\r\n satu keberhasilan G20 adalah mengatasi krisis keuangan global pada \r\ntahun 2008. G20 telah membantu mengubah tata kelola keuangan global \r\ndengan mengeluarkan paket stimulus fiskal dan moneter yang terkoordinasi\r\n secara masif. G20 juga telah meningkatkan kapasitas pinjaman IMF \r\nbersama dengan beberapa bank pembangunan besar. Selain itu G20 membantu \r\npertumbuhan ekonomi dunia dan mendorong reformasi sektor keuangan yang \r\npenting.</p><p>Dengan berbagai kegiatan sepanjang tahun banyak manfaat \r\nstrategis Presidensi G20 di bidang ekonomi, kebijakan luar negeri, dan \r\npembangunan sosial. Kepresidenan G20 berdampak langsung terhadap \r\nperekonomian Indonesia dengan meningkatkan penerimaan devisa negara. \r\nLebih dari dua puluh ribu delegasi internasional diperkirakan menghadiri\r\n pertemuan yang diadakan pada berbagai daerah di Indonesia. Sektor \r\nekonomi, sosial, dan politik nasional secara langsung maupun tidak \r\nlangsung akan diuntungkan oleh <em>multiplier effect</em>. Kemeterian \r\nUMKM memprediksi potensi konsumsi domestik sebesar Rp1,7 triliun. Selain\r\n bermanfaat bagi industri lokal yang dapat mempromosikan produknya \r\nkepada para delegasi di acara G20, KTT ini juga akan meningkatkan \r\nkepercayaan masyarakat global terhadap Indonesia. Di tengah pandemi yang\r\n sedang berlangsung, kepresidenan G20 menunjukkan persepsi yang kuat \r\ntentang ketahanan ekonomi Indonesia terhadap krisis.</p><p>Dari segi \r\npolitik sebagai ketua G20 Indonesia mendorong kerja sama dan \r\nmenginisiasi hasil nyata di tiga sektor prioritas yang krusial untuk \r\npemulihan. Hal tersebut merupakan momentum bagi Indonesia untuk \r\nmendapatkan kredibilitas atau kepercayaan dalam memimpin upaya pemulihan\r\n global. Kredibilitas adalah modal yang tak ternilai dalam diplomasi dan\r\n kebijakan luar negeri.</p><p>Dampak sisi sosial yang berkelanjutan, \r\nkepresidenan G20 menjadi momentum untuk menunjukkan bahwa Indonesia \r\nterbuka terhadap bisnis. Berbagai acara akan menampilkan perkembangan \r\ndan potensi investasi Indonesia sehingga dunia Internasional lebih \r\nmengetahui tentang potensi bisnis di Indonesia. G20 juga mengatasi \r\ntantangan transformasi digital seperti eksploitasi data pribadi, \r\npengelolaan data, keamanan siber, kesenjangan digital dalam akses, dan \r\npemanfaatan internet.</p><p>Terdapatnya pemikiran dari kebijakan baru \r\nseperti penegasan kawasan konservasi laut (KKL) sebagai alat melindungi \r\nekosistem yang sensitif, terbentuknya larangan penangkapan ikan yang \r\nberlebihan. Adanya komitmen untuk mengakhiri penangkapan ikan ilegal, \r\nmembangun inisiatif untuk memperkuat instrument, dan mengembangkan \r\nperjanjian atau instrumen global baru. Kebijakan juga difokuskan dalam \r\nmembangun Indonesia dengan <em>blue economy</em> dan <em>green economy</em>\r\n yang merupakan serangkaian dari adanya G20. Ekonomi kelautan Indonesia \r\nyang dimanfaatkan secara optimal akan memberikan kontribusi yang \r\nsignifikan terhadap pemulihan dan transformasi perekonomian bangsa, \r\nterutama untuk meningkatkan penyerapan tenaga kerja, produktivitas, dan \r\nnilai tambah perekonomian. Indonesia juga akan membangun kawasan \r\nindustri hijau di Kalimantan Utara untuk menerapkan program <em>green economy</em>.\r\n Proyek tersebut diharapkan dapat membantu transisi Indonesia dari \r\nketergantungan pada bahan bakar fosil ke penggunaan lebih banyak energi \r\nterbarukan.</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kepresidenan G20 akan menjadi momentum \r\nbagi Indonesia untuk menunjukkan keberhasilan dalam reformasi struktural\r\n dengan Undang-Undang Penciptaan Lapangan Kerja 2020 dan pembentukan \r\ndana kekayaan negara. Kerja G20 menargetkan bidang-bidang utama yang \r\nmemungkinkan pembangunan berkelanjutan. Diharapkan pembahasan agenda G20\r\n bermanfaat bagi semua negara terutama untuk dapat pulih setelah adanya \r\nkrisis yang disebabkan oleh COVID-19.</p>', NULL, NULL, 10, 2, NULL, NULL),
(10, 8, 'LOKeR 16 : Penilaian Kompetensi ASN', '10-loker-16-penilaian-kompetensi-asn', 'text', '<p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><strong>Halo Sobat Pemelajar!</strong></p><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Pada tanggal 11 Maret 2022 telah berlangsung LOKeR (</span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Learning Organization Knowledge Room</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">) Episode ke 16 dengan tema </span><strong>Penilaian Kompetensi ASN</strong><strong><em>. </em></strong><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Narasumber\r\n minggu ini adalah seorang Asesor dari Pusdiklat Kepemimpinan dan \r\nManajerial, atau yang sebelumnya disebut Pusdiklat Pengembangan Sumber \r\nDaya Manusia, Bapak Sartono. Tentu sobat pembelajar pernah mendengar \r\ntentang </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Assessment Center </span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">atau mungkin sudah pernah melakukannya? </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Assessment Center</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> merupakan salah satu metode dalam melakukan penilaian kompetensi ASN. Untuk lebih memahaminya, yuk terus disimak!</span></p><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Pada\r\n akhir tahun 2021 telah diterbitkan 2 (dua) produk hukum terkait \r\npenilaian kompetensi di lingkungan Kementerian Keuangan yaitu, PMK \r\n181/PMK.01/2021 yang mencabut PMK 219/PMK.01/2017 tentang Penilaian \r\nKompetensi Manajerial melalui </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Assessment Center</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">\r\n di lingkungan Kementerian Keuangan dan KMK 504.1/KMK.01/2021 tentang \r\nPengelolaan Penilaian Kompetensi Manajerial dan Sosial Kultural di \r\nlingkungan Kementerian Keuangan. Dengan diterbitkannya peraturan \r\ntersebut maka penggunaan 23 kamus kompetensi sudah tidak berlaku dan \r\ndigantikan dengan 8 kompetensi manajerial dan 1 kompetensi sosial \r\nkultural.</span></p><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Apa\r\n itu penilaian kompetensi? Penilaian kompetensi merupakan proses \r\nmembandingkan kompetensi yang dimiliki Pegawai Negeri Sipil dengan \r\nkompetensi jabatan yang dipersyaratkan dengan menggunakan metode </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Assessment Center</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> atau metode penilaian lainnya (Peraturan BKN 26 Tahun 2019). </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Assessment Center</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">\r\n dirancang untuk jabatan tertentu (pejabat pimpinan tinggi, pejabat \r\nadministrator pengawas, fungsional, dan jabatan administrator atau \r\nfungsional yang setara dengan tujuan tertentu) dan metode penilaian \r\nlainnya dilakukan hanya untuk paling tinggi jabatan Administrator dan \r\nJabatan Fungsional yang setara.</span></p><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">UU\r\n No.5 Tahun 2014 menjadi dasar manajemen ASN dimana pengelolaan SDM \r\nmenggunakan sistem merit. 3 pilar sistem merit yang berlaku yaitu :</span></p><ol style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Kualifikasi</span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">: terkait persyaratan untuk jabatan tertentu, biasanya bukti berbentuk dokumen (seleksi administrasi);</span></li><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Kompetensi : kemampuan mengelola pekerjaan (manajerial, sosial kutural, dan teknis);</span></li><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Kinerja</span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">: mengukur kinerja pegawai (IKU / IKI) serta output pekerjaan.</span></li></ol><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Terdapat beberapa komponen penilaian kompetensi pada</span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> Assessment Center</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">\r\n diantaranya metode dan alat ukur (contohnya berupa simulasi atau \r\nwawancara berbasis kompetensi), Standar Kompetensi Jabatan (mengacu pada\r\n Permenpan 38 Tahun 2017), Tim Penilai Kompetensi (Ketua Tim, Asesor, \r\nTester, Dukungan teknis), dan </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Assessee</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> (pegawai yang dinilai). Kementerian Keuangan dapat melaksanakan </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Assessment Center</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> dengan peserta pegawai ASN non Kementerian Keuangan. Ciri khas dari </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Assessment Center </span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">adalah </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">multi tools</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> (alat tes lebih dari 1) dan multi level (penilaian lebih dari 1 orang). Validitas hasil </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Assessment Center </span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">berdasarkan hasil penelitian memiliki hasil paling tinggi dibandingkan alat tes lainnya.</span></p><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Manfaat dari </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Assessment Center</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">\r\n diantaranya untuk rekrutmen dan seleksi, pemetaan pegawai, pengembangan\r\n kompetensi, pengembangan karier, manajemen talenta, dan pemenuhan \r\narahan pimpinan. Berdasarkan hasil </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Assessment Center</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> dapat diketahui </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Job Person Match</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> (JPM)</span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> Assessee</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">. Standar Jabatan Pejabat di lingkungan Kemenkeu JPM &gt;=80%.</span></p><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Kapan saat seseorang perlu melakukan </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">re-assessment</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">? Jika pegawai tersebut memiliki kondisi sebagai berikut.&nbsp;</span></p><ol style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Pegawai yang telah mengikuti Penilaian Kompetensi paling kurang 3 (tiga) tahun sejak Penilaian Kompetensi sebelumnya.&nbsp;</span></li><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Pegawai\r\n yang mendapatkan promosi jabatan dalam kurun waktu paling sedikit dari 1\r\n (satu) tahun setelah menduduki jenjang jabatan baru.</span></li><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Pegawai yang mendapatkan hasil Penilaian Kompetensi berupa “N/A” pada kompetensi yang dipersyaratkan dalam SKJ.</span></li><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Pegawai yang telah menyelesaikan program pengembangan kompetensi.</span></li><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Pegawai\r\n yang aktif kembali bekerja dalam kurun waktu paling sedikit 6 (enam) \r\nbulan setelah selesai melaksanakan cuti di luar tanggungan negara dan \r\ntugas belajar.&nbsp;</span></li><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Pegawai yang aktif kembali bekerja setelah selesai melaksanakan penugasan pada instansi di luar Kemenkeu.</span></li><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Pegawai yang telah mengikuti program pengembangan talent.</span></li></ol><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Delapan\r\n (8) Kompetensi Manajerial yang berlaku meliputi integritas, kerjasama, \r\nkomunikasi, orientasi pada hasil, pelayanan publik, pengembangan diri \r\ndan orang lain, mengelola perubahan, dan pengambilan keputusan, \r\nsedangkan 1 kompetensi sosial kultural meliputi perekat bangsa.</span></p><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Hasil penilaian tersebut dapat dipetakan ke dalam 5 level kompetensi yaitu,</span></p><ol style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\"><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Level 1</span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">: Paham/ dalam pengembangan</span></li><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Level 2</span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">: Dasar</span></li><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Level 3</span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">: Menengah</span></li><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Level 4</span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">: Mumpuni</span></li><li style=\"font-weight: 400;\" aria-level=\"1\" data-mce-style=\"font-weight: 400;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Level 5</span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">: Ahli</span></li></ol><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">dimana\r\n setiap level dapat menunjukan tuntutan Standar Kompetensi Jabatan (SKJ)\r\n jenjang jabatan baik struktural maupun fungsional. Oleh karena itu \r\nsetiap pegawai perlu melakukan pengembangan kompetensi untuk terus \r\nmeningkatkan kompetensinya, salah satunya yang kita kenal dengan metode \r\n70 (</span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">experiential learning</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">): 20 (</span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">social learning</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">) : 10 (</span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">formal learning</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">).</span></p><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Bagaimana\r\n sobat pemelajar? Semoga ilmu ini dapat menambah pengetahuan kita. \r\nSaksikan tayangan lengkap kegiatan LOKeR Episode 16 pada </span><em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">youtube</span></em><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> BPPK Kemenkeu RI melalui tautan </span><a href=\"https://bit.ly/youtubeloker16\" data-mce-href=\"https://bit.ly/youtubeloker16\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">https://bit.ly/youtubeloker16</span></a><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">. Materi cetak dapat diunduh pada tautan </span><a href=\"https://bit.ly/materiloker16\" data-mce-href=\"https://bit.ly/materiloker16\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">https://bit.ly/materiloker16</span></a><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\"> .&nbsp;</span></p><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">Ikuti terus informasi mengenai LOKeR melalui tautan link </span><a href=\"https://linktr.ee/lokerkemenkeu\" data-mce-href=\"https://linktr.ee/lokerkemenkeu\"><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">https://linktr.ee/lokerkemenkeu</span></a><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">.</span></p><p style=\"line-height: 1.5; text-align: justify;\" data-mce-style=\"line-height: 1.5; text-align: justify;\"><strong>Kita pemelajar, belajar tanpa batas!</strong></p><p></p>', NULL, NULL, 10, 3, NULL, NULL),
(11, 8, 'Presidensi G20, Momentum Emas Bagi Indonesia #KLC2022', '11-presidensi-g20-momentum-emas-bagi-indonesia-klc2022', 'document', NULL, NULL, '2023/10/20231009/6523ba87ba570.pdf', 10, 4, NULL, NULL),
(12, 9, 'Materi MUTASI: Pengabdian, Karier dan Keluarga', '12-materi-mutasi-pengabdian-karier-dan-keluarga', 'document', NULL, NULL, '2023/10/20231010/6524b7fd9ec08.pdf', 10, 1, NULL, NULL);
INSERT INTO `pengetahuan_content` (`pcId`, `pgId`, `pcTitle`, `pcPermalink`, `pcContentType`, `pcText`, `pcVideo`, `pcDocuments`, `pcDuration`, `pcSort`, `created_at`, `updated_at`) VALUES
(13, 10, 'Materi Membangun Tim Audit Spesialis yang Kompeten', '13-materi-membangun-tim-audit-spesialis-yang-kompeten', 'text', '<p>Dalam kesempatan ini, penulis hendak berbagi pengalaman selama \r\nsetidaknya 6 tahun terakhir dalam mendampingi rekan-rekan tim audit \r\nkeamanan siber di Inspektorat VII. Pembahasan tema ini rasanya bukan \r\nyang pertama, namun demikian apa yang penulis temui dan praktikkan \r\nkiranya dapat memperkaya khasanah pembaca tentang bagaimana membentuk \r\ntim audit dengan kompetensi spesialis yang mumpuni. Terlebih dengan \r\nterbitnya PMK Nomor 18/PMK.09/2022 yang memperkuat peran pengawasan \r\nInspektorat Jenderal atas tugas fungsi Menteri Keuangan selaku <em>Chief Operational Officer</em>, <em>Chief Financial Officer</em>,\r\n dan wakil pemerintah dalam Kepemilikan Kekayaan Negara yang Dipisahkan,\r\n menuntut organisasi ini memiliki tim-tim audit yang memiliki kompetensi\r\n spesialis (misal: konstruksi, energi sumber daya alam, asuransi, \r\nkontraktual).</p><p>Tim audit keamanan siber merupakan salah satu \r\nkompartemen di Inspektorat VII yang bertugas memberikan asurans dan \r\nkonsultasi bagi manajemen dan pimpinan di Kemenkeu, bahwa risiko \r\nkeamanan siber di Kemenkeu telah dimitigasi secara memadai melalui \r\npenerapan berbagai bentuk instrumen pengendalian. Tim ini dituntut untuk\r\n memiliki kompetensi spesialis keamanan siber yang sifatnya konseptual \r\ndan teknikal. Dan berdasarkan pengalaman penulis, untuk dapat menjadi \r\ntim yang solid dan kompeten, harus ditempuh dalam waktu yang tidak \r\nsebentar.&nbsp;</p><p>Berikut di antara pengalaman yang penulis anggap berharga dan berdampak signifikan dalam pembentukan tim ini.&nbsp;</p><p><br></p><p><strong>#1 <em>Targeted person</em></strong></p><p>Untuk\r\n dapat memperoleh kandidat anggota tim yang tepat, maka perlu ada \r\npencarian minat dan bakat. Penulis mengumpulkan informasi SDM di Itjen \r\nyang memiliki kompetensi dasar dan <em>passion </em>di bidang keamanan \r\nsiber. Namun kualifikasi yang wajib dipenuhi adalah bahwa yang \r\nbersangkutan memiliki kemauan untuk belajar hal yang baru. Proses \r\nselanjutnya dilakukan dengan mengikutkan target person dalam penugasan, \r\nsebagai bentuk seleksi awal, untuk&nbsp; memvalidasi bahwa yang bersangkutan \r\nbenar-benar memiliki potensi untuk dikembangkan menjadi spesialis. \r\nDaftar kandidat kemudian disampaikan kepada pimpinan, agar menjadi \r\nprioritas untuk dapat diterima (diminta) ketika ada proses mutasi \r\npegawai. Pada kesempatan lain, kandidat ini baru diperoleh ketika ada \r\nseleksi masuk ke Inspektorat VII. Dalam kondisi ini, maka langkah \r\nselanjutnya berupa penyampaian preferensi kepada pimpinan.</p><p><br></p><p><strong>#2 <em>Train and validate</em></strong></p><p>Tidak\r\n ada jalan lain untuk meningkatkan kompetensi kecuali dengan belajar. \r\nDalam belajar ini wajib ada kurikulum yang tepat sehingga peningkatan \r\nkompetensi dapat bertambah secara gradual dan terarah. Dimulai dari \r\npelatihan yang sifatnya fundamental dan umum, berlanjut kepada tema-tema\r\n yang sifatnya spesifik dan mendalam. Pengetahuan ini dapat diperoleh \r\ndengan pelatihan mandiri atau melalui lembaga pelatihan. Namun sering \r\nkali pelatihan untuk kompetensi ini belum tersedia di BPPK. Untuk itu \r\ndapat memanfaatkan program inisiatif strategis untuk memperoleh anggaran\r\n khusus, berhubung ada keterbatasan alokasi untuk pembiayaan diklat \r\nspesialis ini jika mengikuti anggaran dukungan manajemen Itjen. Kemudian\r\n untuk memvalidasi pengetahuan yang dimiliki dan mempertahankan \r\nkompetensi dapat dilakukan dengan mengikuti program sertifikasi profesi.\r\n Lembaga yang memiliki program sertifikasi profesi keamanan siber antara\r\n lain ISACA (CISM, CSX-F, CSX-P), ISC2 (CISSP), SANS, Offensive \r\nSecurity, dan EC-Council.&nbsp;</p><p><br></p><p><strong>#3 <em>Practice more and more</em></strong></p><p>Kompetensi\r\n yang dimiliki akan semakin berkembang dengan memperbanyak penugasan. \r\nPengetahuan yang diperoleh selama pelatihan dipraktikkan secara riil \r\npada saat penugasan. Dengan semakin bertambahnya jam terbang, semakin \r\nbaik pula keahlian <em>problem solving</em> yang dimiliki. Ketika dalam \r\npenugasan dapat mengidentifikasi temuan berupa kelemahan pengendalian \r\natau risiko yang sifatnya kritikal, dan diapresiasi oleh klien \r\npengawasan terlebih oleh pimpinan di Kemenkeu, ini juga meningkatkan \r\nkepercayaan diri tim, dan dapat memacu untuk belajar lebih dalam. Kadang\r\n kala penugasan juga menjadi sarana bagi tim untuk bertukar pengalaman \r\ndengan berharga dari klien pengawasan, secara mereka yang setiap hari \r\nmenjalankan proses bisnis operasional. Penugasan juga menjadi sarana \r\nbagi tim untuk membangun komunikasi dengan klien pengawasan dan reputasi\r\n yang baik.</p><p><br></p><p><strong>#4 <em>Cohevisity</em></strong></p><p>Peribahasa lawas, <em>“teman di kala susah adalah teman yang sesungguhnya”</em>, nampaknya sangat relevan di sini. Keterbatasan dan <em>problem</em>\r\n yang dihadapi tim, ketika dikomunikasikan dan dicarikan solusi bersama,\r\n dan ketika itu berhasil dilewati, dirasakan sebagai keberhasilan tim. \r\nPengalaman-pengalaman tersebut secara gradual memupuk hubungan yang \r\nerat, rasa sepenanggungan sebagai sebuah tim. Sementara itu, <em>team leader</em>\r\n juga harus menghindari hal-hal yang dapat memburukkan hubungan ini. \r\nMisal, minim apresiasi kepada anggota tim, menganggap capaian tim adalah\r\n semata prestasinya, maka ini wajib ditinggalkan.&nbsp;</p><p>Di samping itu,\r\n untuk membangun soliditas tim juga dapat dilakukan melalui aktivitas \r\nyang sifatnya informal. Mengobrolkan hal lain di luar pekerjaan, makan \r\nsiang bersama, atau kunjungan pribadi di luar jam kerja. Intinya adalah \r\nmembangun rasa, bahwa satu tim adalah satu keluarga.&nbsp;</p><p><br></p><p><strong>#5 <em>Sharing</em></strong></p><p>Sebagai tahap paripurna dari piramida pembelajaran adalah <em>teach others</em>.\r\n Berbagi pengalaman, pengetahuan, dan ketrampilan yang dimiliki kepada \r\norang/pihak lain, selain membantu untuk memperkuat pola pikir, juga \r\nuntuk memvalidasi apakah yang diyakini saat ini adalah sesuatu yang \r\ntepat. Audiens pada saat <em>sharing session</em>, kadang memberikan \r\ntantangan atau justru informasi baru dan masukan yang berharga. Ini juga\r\n tentang bagaimana kita dapat menyampaikan ide secara terstruktur, \r\nlogis, runtut, dan mudah dipahami audiens. Ini merupakan <em>soft skill</em>\r\n yang mesti dikuasai auditor dan hanya dapat diperoleh melalui jam \r\nterbang. Tim audit keamanan siber sendiri, beberapa kali diundang untuk <em>sharing</em> di universitas dan K/L, maupun melalui saluran komunikasi lainnya yang sifatnya informal.</p><p><br></p><p>Pengalaman\r\n penulis di atas bisa jadi tidak sepenuhnya tepat untuk dijalankan. \r\nPerlu menyesuaikan dengan kondisi dan kebutuhan organisasi. Dan tidak \r\nsemua memiliki <em>privilege</em> seperti yang penulis alami. Namun \r\nberdasarkan pengalaman penulis, hal tersebut di atas cukup efektif dalam\r\n membentuk tim audit keamanan siber yang kompeten. Dan ini dibuktikan \r\ndengan pengakuan dari pimpinan dan klien pengawasan di lingkungan \r\nKementerian Keuangan maupun pihak-pihak eksternal.&nbsp;Agar referensi \r\npengetahuan praktis tema ini menjadi semakin lengkap, kiranya auditor \r\nlain di Inspektorat Jenderal dapat berbagi pengalaman untuk melengkapi \r\nnarasi singkat ini.</p><p></p>', NULL, NULL, 10, 1, NULL, NULL),
(14, 11, 'Materi Membangun \"Tim Audit Spesialis\" yang Kompeten', '14-materi-membangun-tim-audit-spesialis-yang-kompeten', 'text', '<p>Dalam kesempatan ini, penulis hendak berbagi pengalaman selama \r\nsetidaknya 6 tahun terakhir dalam mendampingi rekan-rekan tim audit \r\nkeamanan siber di Inspektorat VII. Pembahasan tema ini rasanya bukan \r\nyang pertama, namun demikian apa yang penulis temui dan praktikkan \r\nkiranya dapat memperkaya khasanah pembaca tentang bagaimana membentuk \r\ntim audit dengan kompetensi spesialis yang mumpuni. Terlebih dengan \r\nterbitnya PMK Nomor 18/PMK.09/2022 yang memperkuat peran pengawasan \r\nInspektorat Jenderal atas tugas fungsi Menteri Keuangan selaku <em>Chief Operational Officer</em>, <em>Chief Financial Officer</em>,\r\n dan wakil pemerintah dalam Kepemilikan Kekayaan Negara yang Dipisahkan,\r\n menuntut organisasi ini memiliki tim-tim audit yang memiliki kompetensi\r\n spesialis (misal: konstruksi, energi sumber daya alam, asuransi, \r\nkontraktual).</p><p>Tim audit keamanan siber merupakan salah satu \r\nkompartemen di Inspektorat VII yang bertugas memberikan asurans dan \r\nkonsultasi bagi manajemen dan pimpinan di Kemenkeu, bahwa risiko \r\nkeamanan siber di Kemenkeu telah dimitigasi secara memadai melalui \r\npenerapan berbagai bentuk instrumen pengendalian. Tim ini dituntut untuk\r\n memiliki kompetensi spesialis keamanan siber yang sifatnya konseptual \r\ndan teknikal. Dan berdasarkan pengalaman penulis, untuk dapat menjadi \r\ntim yang solid dan kompeten, harus ditempuh dalam waktu yang tidak \r\nsebentar.&nbsp;</p><p><br></p><p>Berikut di antara pengalaman yang penulis anggap berharga dan berdampak signifikan dalam pembentukan tim ini.&nbsp;</p><h3><strong>#1 <em>Targeted person</em></strong></h3><p>Untuk\r\n dapat memperoleh kandidat anggota tim yang tepat, maka perlu ada \r\npencarian minat dan bakat. Penulis mengumpulkan informasi SDM di Itjen \r\nyang memiliki kompetensi dasar dan <em>passion </em>di bidang keamanan \r\nsiber. Namun kualifikasi yang wajib dipenuhi adalah bahwa yang \r\nbersangkutan memiliki kemauan untuk belajar hal yang baru. Proses \r\nselanjutnya dilakukan dengan mengikutkan target person dalam penugasan, \r\nsebagai bentuk seleksi awal, untuk&nbsp; memvalidasi bahwa yang bersangkutan \r\nbenar-benar memiliki potensi untuk dikembangkan menjadi spesialis. \r\nDaftar kandidat kemudian disampaikan kepada pimpinan, agar menjadi \r\nprioritas untuk dapat diterima (diminta) ketika ada proses mutasi \r\npegawai. Pada kesempatan lain, kandidat ini baru diperoleh ketika ada \r\nseleksi masuk ke Inspektorat VII. Dalam kondisi ini, maka langkah \r\nselanjutnya berupa penyampaian preferensi kepada pimpinan.</p><h3><strong>#2 <em>Train and validate</em></strong></h3><p>Tidak\r\n ada jalan lain untuk meningkatkan kompetensi kecuali dengan belajar. \r\nDalam belajar ini wajib ada kurikulum yang tepat sehingga peningkatan \r\nkompetensi dapat bertambah secara gradual dan terarah. Dimulai dari \r\npelatihan yang sifatnya fundamental dan umum, berlanjut kepada tema-tema\r\n yang sifatnya spesifik dan mendalam. Pengetahuan ini dapat diperoleh \r\ndengan pelatihan mandiri atau melalui lembaga pelatihan. Namun sering \r\nkali pelatihan untuk kompetensi ini belum tersedia di BPPK. Untuk itu \r\ndapat memanfaatkan program inisiatif strategis untuk memperoleh anggaran\r\n khusus, berhubung ada keterbatasan alokasi untuk pembiayaan diklat \r\nspesialis ini jika mengikuti anggaran dukungan manajemen Itjen. Kemudian\r\n untuk memvalidasi pengetahuan yang dimiliki dan mempertahankan \r\nkompetensi dapat dilakukan dengan mengikuti program sertifikasi profesi.\r\n Lembaga yang memiliki program sertifikasi profesi keamanan siber antara\r\n lain ISACA (CISM, CSX-F, CSX-P), ISC2 (CISSP), SANS, Offensive \r\nSecurity, dan EC-Council.&nbsp;</p><h3><strong>#3 <em>Practice more and more</em></strong></h3><p>Kompetensi\r\n yang dimiliki akan semakin berkembang dengan memperbanyak penugasan. \r\nPengetahuan yang diperoleh selama pelatihan dipraktikkan secara riil \r\npada saat penugasan. Dengan semakin bertambahnya jam terbang, semakin \r\nbaik pula keahlian <em>problem solving</em> yang dimiliki. Ketika dalam \r\npenugasan dapat mengidentifikasi temuan berupa kelemahan pengendalian \r\natau risiko yang sifatnya kritikal, dan diapresiasi oleh klien \r\npengawasan terlebih oleh pimpinan di Kemenkeu, ini juga meningkatkan \r\nkepercayaan diri tim, dan dapat memacu untuk belajar lebih dalam. Kadang\r\n kala penugasan juga menjadi sarana bagi tim untuk bertukar pengalaman \r\ndengan berharga dari klien pengawasan, secara mereka yang setiap hari \r\nmenjalankan proses bisnis operasional. Penugasan juga menjadi sarana \r\nbagi tim untuk membangun komunikasi dengan klien pengawasan dan reputasi\r\n yang baik.</p><h3><strong>#4 <em>Cohevisity</em></strong></h3><p>Peribahasa lawas, <em>“teman di kala susah adalah teman yang sesungguhnya”</em>, nampaknya sangat relevan di sini. Keterbatasan dan <em>problem</em>\r\n yang dihadapi tim, ketika dikomunikasikan dan dicarikan solusi bersama,\r\n dan ketika itu berhasil dilewati, dirasakan sebagai keberhasilan tim. \r\nPengalaman-pengalaman tersebut secara gradual memupuk hubungan yang \r\nerat, rasa sepenanggungan sebagai sebuah tim. Sementara itu, <em>team leader</em>\r\n juga harus menghindari hal-hal yang dapat memburukkan hubungan ini. \r\nMisal, minim apresiasi kepada anggota tim, menganggap capaian tim adalah\r\n semata prestasinya, maka ini wajib ditinggalkan.&nbsp;</p><p>Di samping itu,\r\n untuk membangun soliditas tim juga dapat dilakukan melalui aktivitas \r\nyang sifatnya informal. Mengobrolkan hal lain di luar pekerjaan, makan \r\nsiang bersama, atau kunjungan pribadi di luar jam kerja. Intinya adalah \r\nmembangun rasa, bahwa satu tim adalah satu keluarga.&nbsp;</p><h3><strong>#5 <em>Sharing</em></strong></h3><p>Sebagai tahap paripurna dari piramida pembelajaran adalah <em>teach others</em>.\r\n Berbagi pengalaman, pengetahuan, dan ketrampilan yang dimiliki kepada \r\norang/pihak lain, selain membantu untuk memperkuat pola pikir, juga \r\nuntuk memvalidasi apakah yang diyakini saat ini adalah sesuatu yang \r\ntepat. Audiens pada saat <em>sharing session</em>, kadang memberikan \r\ntantangan atau justru informasi baru dan masukan yang berharga. Ini juga\r\n tentang bagaimana kita dapat menyampaikan ide secara terstruktur, \r\nlogis, runtut, dan mudah dipahami audiens. Ini merupakan <em>soft skill</em>\r\n yang mesti dikuasai auditor dan hanya dapat diperoleh melalui jam \r\nterbang. Tim audit keamanan siber sendiri, beberapa kali diundang untuk <em>sharing</em> di universitas dan K/L, maupun melalui saluran komunikasi lainnya yang sifatnya informal.</p><p><br></p><p>Pengalaman\r\n penulis di atas bisa jadi tidak sepenuhnya tepat untuk dijalankan. \r\nPerlu menyesuaikan dengan kondisi dan kebutuhan organisasi. Dan tidak \r\nsemua memiliki <em>privilege</em> seperti yang penulis alami. Namun \r\nberdasarkan pengalaman penulis, hal tersebut di atas cukup efektif dalam\r\n membentuk tim audit keamanan siber yang kompeten. Dan ini dibuktikan \r\ndengan pengakuan dari pimpinan dan klien pengawasan di lingkungan \r\nKementerian Keuangan maupun pihak-pihak eksternal.&nbsp;Agar referensi \r\npengetahuan praktis tema ini menjadi semakin lengkap, kiranya auditor \r\nlain di Inspektorat Jenderal dapat berbagi pengalaman untuk melengkapi \r\nnarasi singkat ini.</p><p><br></p><p><em>“Saya menyatakan artikel ini \r\nmerupakan hasil pengalaman atau pemikiran dan pemaparan asli saya \r\nsendiri, dengan kontribusi, referensi, atau ide dari sumber lain \r\ndinyatakan secara implisit maupun eksplisit pada tubuh dan/atau lampiran\r\n artikel. Demikian pernyataan ini saya buat dengan sesungguhnya dan \r\napabila di kemudian hari terdapat penyimpangan dan ketidakbenaran dalam \r\npernyataan ini, maka saya bersedia menerima sanksi pelanggaran kode etik\r\n sesuai dengan peraturan yang berlaku di Inspektorat Jenderal \r\nKementerian Keuangan yaitu pencabutan capaian IKU atau dapat dikenakan \r\nsanksi pelanggaran disiplin/kode etik”.</em></p><p><br><br></p><p></p>', NULL, NULL, 10, 1, NULL, NULL),
(15, 12, 'Materi Video Penilaian Kinerja Penyedia Barang/Jasa', '15-materi-video-penilaian-kinerja-penyedia-barangjasa', 'video', NULL, '2023/10/20231010/6524bc081584d.mp4', NULL, 10, 1, NULL, NULL),
(16, 13, 'Video Materi Tunjangan Pengabdian Wilayah Terpencil untuk PPPK', '16-video-materi-tunjangan-pengabdian-wilayah-terpencil-untuk-pppk', 'video', NULL, '2023/10/20231010/6524d5b4cf18f.mp4', NULL, 8, 1, NULL, NULL),
(17, 14, 'Materi Video Pengelolaan Belanja Gaji dan Tunjangan', '17-materi-video-pengelolaan-belanja-gaji-dan-tunjangan', 'video', NULL, '2023/10/20231010/6524d5cbd3286.mp4', NULL, 10, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_highlight`
--

CREATE TABLE `pengetahuan_highlight` (
  `hlId` int(10) UNSIGNED NOT NULL,
  `pgId` int(11) NOT NULL,
  `hlMonth` tinyint(4) NOT NULL,
  `hlYear` int(11) NOT NULL,
  `hlStart` datetime NOT NULL,
  `hlEnd` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_like`
--

CREATE TABLE `pengetahuan_like` (
  `lkId` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `pgId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengetahuan_like`
--

INSERT INTO `pengetahuan_like` (`lkId`, `id_user`, `pgId`, `created_at`, `updated_at`) VALUES
(1, 5, 10, '2023-10-10 03:03:39', NULL),
(2, 5, 12, '2023-10-10 04:27:35', NULL),
(3, 5, 14, '2023-10-11 07:15:15', NULL),
(4, 5, 13, '2023-10-12 02:21:23', NULL),
(5, 5, 2, '2023-10-13 07:38:14', NULL),
(6, 5, 1, '2023-10-13 08:00:12', NULL),
(7, 5, 9, '2023-10-13 08:00:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_pinned`
--

CREATE TABLE `pengetahuan_pinned` (
  `pnId` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `pgId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengetahuan_pinned`
--

INSERT INTO `pengetahuan_pinned` (`pnId`, `id_user`, `pgId`, `created_at`, `updated_at`) VALUES
(1, 5, 11, '2023-10-10 03:03:38', NULL),
(2, 5, 12, '2023-10-10 04:29:30', NULL),
(3, 5, 13, '2023-10-10 08:44:32', NULL),
(4, 5, 14, '2023-10-13 02:11:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_rating`
--

CREATE TABLE `pengetahuan_rating` (
  `rtId` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `rtRate` enum('1','2','3','4','5') NOT NULL,
  `rtAddedDate` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_read`
--

CREATE TABLE `pengetahuan_read` (
  `prId` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `pgId` int(11) NOT NULL,
  `readContent` tinyint(3) NOT NULL,
  `readActual` tinyint(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengetahuan_read`
--

INSERT INTO `pengetahuan_read` (`prId`, `id_user`, `pgId`, `readContent`, `readActual`, `created_at`, `updated_at`) VALUES
(1, 5, 8, 4, 1, '2023-10-10 02:18:49', NULL),
(2, 5, 12, 1, 1, '2023-10-10 04:29:55', NULL),
(3, 5, 9, 1, 1, '2023-10-10 06:49:39', NULL),
(4, 5, 1, 1, 1, '2023-10-10 07:27:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_readlist`
--

CREATE TABLE `pengetahuan_readlist` (
  `rlId` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `rlTitle` varchar(255) NOT NULL,
  `rlPermalink` varchar(255) NOT NULL,
  `rlDescription` tinytext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengetahuan_readlist`
--

INSERT INTO `pengetahuan_readlist` (`rlId`, `id_user`, `rlTitle`, `rlPermalink`, `rlDescription`, `created_at`, `updated_at`) VALUES
(1, 5, 'BACA_NANTI', '1-baca-nanti', 'Baca Nanti Description', '2023-10-10 03:03:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_readlist_content`
--

CREATE TABLE `pengetahuan_readlist_content` (
  `rlcId` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `rlId` int(11) NOT NULL,
  `pgId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengetahuan_readlist_content`
--

INSERT INTO `pengetahuan_readlist_content` (`rlcId`, `id_user`, `rlId`, `pgId`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 12, '2023-10-10 03:03:36', NULL),
(2, 5, 1, 10, '2023-10-13 07:34:39', NULL),
(3, 5, 1, 2, '2023-10-13 07:43:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_read_content`
--

CREATE TABLE `pengetahuan_read_content` (
  `rcId` int(10) UNSIGNED NOT NULL,
  `prId` int(11) NOT NULL,
  `pcId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengetahuan_read_content`
--

INSERT INTO `pengetahuan_read_content` (`rcId`, `prId`, `pcId`, `created_at`, `updated_at`) VALUES
(1, 1, 8, '2023-10-10 02:18:49', NULL),
(2, 2, 15, '2023-10-10 04:29:55', NULL),
(3, 3, 12, '2023-10-10 06:49:39', NULL),
(4, 4, 1, '2023-10-10 07:27:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'web', '2023-08-31 22:05:23', '2023-08-31 22:05:23'),
(2, 'user', 'web', '2023-08-31 22:05:23', '2023-08-31 22:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Role', 'admin@email.com', NULL, '$2y$10$Lg7//BfJOsKs3s6SQuHsjO/hHPQQs8AW2pj3ytqUjFkrrujYRIbPi', NULL, '2023-08-31 22:05:23', '2023-08-31 22:05:23'),
(2, 'User Role', 'user@email.com', NULL, '$2y$10$kZFaAguKOf6GqlyZEeZKcukixdXdO28coNjuNDHnLJTTHE3XMCnZq', NULL, '2023-08-31 22:05:23', '2023-08-31 22:05:23'),
(3, 'Anya Geraldine', 'info@anyageraldine.com', '2023-09-03 04:16:22', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', NULL, '2023-09-13 04:16:22', '2023-09-06 04:16:22'),
(4, 'Laudya Cynthia Bella', 'laudya@cynthiabella.com', '2023-09-07 04:18:14', 'a3574c1685d2229fe75fde1b14e2ba1a03035db9', NULL, NULL, NULL),
(5, 'Alesha Farzana Rohman', 'arizalnurrohman13@gmail.com', '2023-09-07 04:18:14', 'a3574c1685d2229fe75fde1b14e2ba1a03035db9', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`cuId`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hubungi_admin`
--
ALTER TABLE `hubungi_admin`
  ADD PRIMARY KEY (`haId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `ms_pembelajaran`
--
ALTER TABLE `ms_pembelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_pembelajaran_categori`
--
ALTER TABLE `ms_pembelajaran_categori`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `ms_pembelajaran_detail`
--
ALTER TABLE `ms_pembelajaran_detail`
  ADD PRIMARY KEY (`pdId`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengetahuan`
--
ALTER TABLE `pengetahuan`
  ADD PRIMARY KEY (`pgId`);

--
-- Indexes for table `pengetahuan_activity`
--
ALTER TABLE `pengetahuan_activity`
  ADD PRIMARY KEY (`paId`);

--
-- Indexes for table `pengetahuan_category`
--
ALTER TABLE `pengetahuan_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `pengetahuan_comment`
--
ALTER TABLE `pengetahuan_comment`
  ADD PRIMARY KEY (`cmId`);

--
-- Indexes for table `pengetahuan_content`
--
ALTER TABLE `pengetahuan_content`
  ADD PRIMARY KEY (`pcId`);

--
-- Indexes for table `pengetahuan_highlight`
--
ALTER TABLE `pengetahuan_highlight`
  ADD PRIMARY KEY (`hlId`);

--
-- Indexes for table `pengetahuan_like`
--
ALTER TABLE `pengetahuan_like`
  ADD PRIMARY KEY (`lkId`);

--
-- Indexes for table `pengetahuan_pinned`
--
ALTER TABLE `pengetahuan_pinned`
  ADD PRIMARY KEY (`pnId`);

--
-- Indexes for table `pengetahuan_rating`
--
ALTER TABLE `pengetahuan_rating`
  ADD PRIMARY KEY (`rtId`);

--
-- Indexes for table `pengetahuan_read`
--
ALTER TABLE `pengetahuan_read`
  ADD PRIMARY KEY (`prId`);

--
-- Indexes for table `pengetahuan_readlist`
--
ALTER TABLE `pengetahuan_readlist`
  ADD PRIMARY KEY (`rlId`);

--
-- Indexes for table `pengetahuan_readlist_content`
--
ALTER TABLE `pengetahuan_readlist_content`
  ADD PRIMARY KEY (`rlcId`);

--
-- Indexes for table `pengetahuan_read_content`
--
ALTER TABLE `pengetahuan_read_content`
  ADD PRIMARY KEY (`rcId`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `cuId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hubungi_admin`
--
ALTER TABLE `hubungi_admin`
  MODIFY `haId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ms_pembelajaran`
--
ALTER TABLE `ms_pembelajaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ms_pembelajaran_categori`
--
ALTER TABLE `ms_pembelajaran_categori`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ms_pembelajaran_detail`
--
ALTER TABLE `ms_pembelajaran_detail`
  MODIFY `pdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengetahuan`
--
ALTER TABLE `pengetahuan`
  MODIFY `pgId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pengetahuan_activity`
--
ALTER TABLE `pengetahuan_activity`
  MODIFY `paId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pengetahuan_category`
--
ALTER TABLE `pengetahuan_category`
  MODIFY `catId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pengetahuan_comment`
--
ALTER TABLE `pengetahuan_comment`
  MODIFY `cmId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengetahuan_content`
--
ALTER TABLE `pengetahuan_content`
  MODIFY `pcId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pengetahuan_highlight`
--
ALTER TABLE `pengetahuan_highlight`
  MODIFY `hlId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengetahuan_like`
--
ALTER TABLE `pengetahuan_like`
  MODIFY `lkId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengetahuan_pinned`
--
ALTER TABLE `pengetahuan_pinned`
  MODIFY `pnId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengetahuan_rating`
--
ALTER TABLE `pengetahuan_rating`
  MODIFY `rtId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengetahuan_read`
--
ALTER TABLE `pengetahuan_read`
  MODIFY `prId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengetahuan_readlist`
--
ALTER TABLE `pengetahuan_readlist`
  MODIFY `rlId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengetahuan_readlist_content`
--
ALTER TABLE `pengetahuan_readlist_content`
  MODIFY `rlcId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengetahuan_read_content`
--
ALTER TABLE `pengetahuan_read_content`
  MODIFY `rcId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
