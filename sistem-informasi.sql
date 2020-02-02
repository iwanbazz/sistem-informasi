-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2020 at 04:19 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem-informasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuks`
--

CREATE TABLE `barang_masuks` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_toko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_beli` date DEFAULT NULL,
  `total_belanja` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang_masuks`
--

INSERT INTO `barang_masuks` (`id`, `nama_toko`, `tanggal_masuk`, `tanggal_beli`, `total_belanja`, `created_at`, `updated_at`) VALUES
(1, 'fili mili', '2019-11-14', '2019-11-11', 2375586, '2019-11-13 22:04:21', '2019-11-14 05:04:00'),
(3, 'akasha', '2020-01-05', '2020-01-03', 12979, '2020-01-26 19:38:03', NULL),
(4, 'new look', '2020-01-05', '2020-01-03', 4600000, '2020-01-26 19:39:13', NULL),
(5, 'aura', '2020-01-03', '2020-01-03', 2680000, '2020-01-26 19:40:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-10-22 09:22:05', '2019-10-22 09:22:05'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-10-22 09:22:05', '2019-10-22 09:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `data_karyawans`
--

CREATE TABLE `data_karyawans` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_karyawan` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_tanggal_lahir` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `awal_masuk_kerja` date DEFAULT NULL,
  `hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cabang_toko` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_karyawans`
--

INSERT INTO `data_karyawans` (`id`, `nama_karyawan`, `jabatan`, `tempat_tanggal_lahir`, `awal_masuk_kerja`, `hp`, `cabang_toko`, `created_at`, `updated_at`) VALUES
(3, 'irfan', 'staf gudang', 'kulim,09-12-1999', '2019-11-05', '089996', 'marpoyan', '2019-11-05 03:31:00', '2020-01-26 19:33:09'),
(4, 'juniardi', 'kepala gudang', 'ketapang,09061996', NULL, '082283797619', 'marpoyan', '2020-01-26 19:32:40', '2020-01-26 19:32:40'),
(5, 'desmistio aji', 'staf gudang', 'lipat kain,03121995', NULL, '0822878679799', 'marpoyan', '2020-01-26 19:34:34', '2020-01-26 19:34:34'),
(6, 'ari', 'kasir', 'pekanbaru08032000', '2020-01-01', '082987090989', 'panam', '2020-01-26 20:39:00', '2020-01-26 20:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(83, 14, 'id', 'text', 'Id', 1, 1, 1, 1, 0, 1, '{}', 1),
(84, 14, 'nama_karyawan', 'text', 'Nama Karyawan', 0, 1, 1, 1, 1, 1, '{}', 2),
(85, 14, 'jabatan', 'text', 'Jabatan Karyawan', 0, 1, 1, 1, 1, 1, '{}', 3),
(86, 14, 'tempat_tanggal_lahir', 'text', 'Tempat ,Tanggal Lahir', 0, 1, 1, 1, 1, 1, '{}', 4),
(87, 14, 'awal_masuk_kerja', 'date', 'Awal Masuk Kerja', 0, 1, 1, 1, 1, 1, '{}', 5),
(88, 14, 'hp', 'number', 'Hp', 0, 1, 1, 1, 1, 1, '{}', 6),
(89, 14, 'cabang_toko', 'text', 'Cabang Toko', 0, 1, 1, 1, 1, 1, '{}', 7),
(90, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(91, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(92, 15, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(93, 15, 'toko', 'text', 'Nama Toko', 0, 1, 1, 1, 1, 1, '{}', 2),
(94, 15, 'kepala_toko', 'text', 'Nama Kepala Toko', 0, 1, 1, 1, 1, 1, '{}', 3),
(95, 15, 'jumlah_karyawan', 'number', 'Jumlah Karyawan', 0, 1, 1, 1, 1, 1, '{}', 4),
(96, 15, 'alamat', 'text', 'Alamat', 0, 1, 1, 1, 1, 1, '{}', 5),
(97, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(98, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(99, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 16, 'toko', 'text', 'Nama Toko', 0, 1, 1, 1, 1, 1, '{}', 2),
(101, 16, 'uang_masuk', 'number', 'Uang Masuk', 0, 1, 1, 1, 1, 1, '{}', 3),
(102, 16, 'kelebihan_uang', 'number', 'Kelebihan Uang', 0, 1, 1, 1, 1, 1, '{}', 4),
(103, 16, 'keperluan', 'number', 'Keperluan', 0, 1, 1, 1, 1, 1, '{}', 5),
(104, 16, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 6),
(105, 16, 'cash_disetor', 'number', 'Cash Disetor', 0, 1, 1, 1, 1, 1, '{}', 7),
(106, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(107, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(108, 17, 'id', 'text', 'Id', 1, 0, 1, 1, 1, 1, '{}', 1),
(109, 17, 'nama_toko', 'text', 'Nama Toko', 0, 1, 1, 1, 1, 1, '{}', 2),
(110, 17, 'tanggal_masuk', 'date', 'Tanggal Masuk', 0, 1, 1, 1, 1, 1, '{}', 3),
(111, 17, 'tanggal_beli', 'date', 'Tanggal Beli', 0, 1, 1, 1, 1, 1, '{}', 4),
(112, 17, 'total_belanja', 'number', 'Total Belanja', 0, 1, 1, 1, 1, 1, '{}', 5),
(113, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(114, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 1, 1, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_tokos`
--

CREATE TABLE `data_tokos` (
  `id` int(10) UNSIGNED NOT NULL,
  `toko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kepala_toko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_karyawan` int(11) DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_tokos`
--

INSERT INTO `data_tokos` (`id`, `toko`, `kepala_toko`, `jumlah_karyawan`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'panam', 'irfan', 5, 'jl.soebrantas', '2019-11-05 04:46:00', '2020-01-26 19:30:41'),
(2, 'marpoyan', 'feli', 7, 'jl.kharudin nasution', '2020-01-26 19:30:27', '2020-01-26 19:30:27'),
(3, 'harpan raya', 'yuli rizki', 6, 'jl. harapan raya', '2020-01-26 19:31:34', '2020-01-26 19:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-10-22 09:21:57', '2019-10-22 09:21:57'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-10-22 09:21:57', '2019-10-22 09:21:57'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-10-22 09:22:04', '2019-10-22 09:22:04'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-10-22 09:22:05', '2019-10-22 09:22:05'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(12, 'toko', 'toko', 'Toko', 'Toko', NULL, 'App\\Toko', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-04 18:37:24', '2019-11-04 18:38:02'),
(14, 'data_karyawans', 'data-karyawans', 'Data Karyawan', 'Data Karyawan', NULL, 'App\\DataKaryawan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-05 03:23:11', '2019-11-05 03:30:33'),
(15, 'data_tokos', 'data-tokos', 'Data Toko', 'Data Toko', NULL, 'App\\DataToko', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-11-05 04:46:00', '2019-11-05 04:46:00'),
(16, 'laporan_keuangans', 'laporan-keuangans', 'Laporan Keuangan', 'Laporan Keuangan', NULL, 'App\\LaporanKeuangan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-11-05 04:51:47', '2019-11-05 04:51:47'),
(17, 'barang_masuks', 'barang-masuks', 'Barang Masuk', 'Barang Masuk', NULL, 'App\\BarangMasuk', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-11-13 22:03:07', '2019-11-13 22:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporan_keuangans`
--

CREATE TABLE `laporan_keuangans` (
  `id` int(10) UNSIGNED NOT NULL,
  `toko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uang_masuk` int(11) DEFAULT NULL,
  `kelebihan_uang` int(11) DEFAULT NULL,
  `keperluan` int(11) DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_disetor` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan_keuangans`
--

INSERT INTO `laporan_keuangans` (`id`, `toko`, `uang_masuk`, `kelebihan_uang`, `keperluan`, `keterangan`, `cash_disetor`, `created_at`, `updated_at`) VALUES
(1, 'panam', 4323000, NULL, 5000, 'beli paku', 4312999, '2019-11-05 04:52:00', '2020-01-26 19:44:59'),
(2, 'marpoyan', 6780000, 0, 5000, 'beli air galon', 6775000, '2020-01-26 19:41:35', '2020-01-26 19:41:35'),
(3, 'harapan raya', 8950000, 0, 0, NULL, 8950000, '2020-01-26 19:43:00', '2020-01-26 19:43:10'),
(4, 'sail', 7655000, 1000, 100000, 'bayar uang kebersihan', 7555000, '2020-01-26 19:43:58', '2020-01-26 19:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-10-22 09:21:58', '2019-10-22 09:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-10-22 09:21:58', '2019-10-22 09:21:58', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-10-22 09:21:58', '2019-10-22 09:21:58', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-10-22 09:21:58', '2019-10-22 09:21:58', 'voyager.users.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-10-22 09:21:58', '2019-10-22 09:21:58', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-10-22 09:21:58', '2019-10-22 09:21:58', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-10-22 09:21:58', '2019-10-22 09:21:58', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-10-22 09:21:58', '2019-10-22 09:21:58', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-10-22 09:21:58', '2019-10-22 09:21:58', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-10-22 09:21:58', '2019-10-22 09:21:58', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2019-10-22 09:22:04', '2019-10-22 09:22:04', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-10-22 09:22:06', '2019-10-22 09:22:06', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2019-10-22 09:22:06', '2019-10-22 09:22:06', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-10-22 09:22:08', '2019-10-22 09:22:08', 'voyager.hooks', NULL),
(18, 1, 'Tokos', '', '_self', NULL, NULL, NULL, 18, '2019-11-04 18:37:25', '2019-11-04 18:37:25', 'voyager.toko.index', NULL),
(20, 1, 'Data Karyawan', '', '_self', NULL, NULL, NULL, 20, '2019-11-05 03:23:12', '2019-11-05 03:23:12', 'voyager.data-karyawans.index', NULL),
(21, 1, 'Data Toko', '', '_self', NULL, NULL, NULL, 21, '2019-11-05 04:46:01', '2019-11-05 04:46:01', 'voyager.data-tokos.index', NULL),
(22, 1, 'Laporan Keuangan', '', '_self', NULL, NULL, NULL, 22, '2019-11-05 04:51:47', '2019-11-05 04:51:47', 'voyager.laporan-keuangans.index', NULL),
(23, 1, 'Barang Masuk', '', '_self', NULL, NULL, NULL, 23, '2019-11-13 22:03:07', '2019-11-13 22:03:07', 'voyager.barang-masuks.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-10-22 09:22:06', '2019-10-22 09:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-10-22 09:21:58', '2019-10-22 09:21:58'),
(2, 'browse_bread', NULL, '2019-10-22 09:21:58', '2019-10-22 09:21:58'),
(3, 'browse_database', NULL, '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(4, 'browse_media', NULL, '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(5, 'browse_compass', NULL, '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(6, 'browse_menus', 'menus', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(7, 'read_menus', 'menus', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(8, 'edit_menus', 'menus', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(9, 'add_menus', 'menus', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(10, 'delete_menus', 'menus', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(16, 'browse_users', 'users', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(17, 'read_users', 'users', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(18, 'edit_users', 'users', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(19, 'add_users', 'users', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(20, 'delete_users', 'users', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(21, 'browse_settings', 'settings', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(22, 'read_settings', 'settings', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(23, 'edit_settings', 'settings', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(24, 'add_settings', 'settings', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(25, 'delete_settings', 'settings', '2019-10-22 09:21:59', '2019-10-22 09:21:59'),
(26, 'browse_categories', 'categories', '2019-10-22 09:22:04', '2019-10-22 09:22:04'),
(27, 'read_categories', 'categories', '2019-10-22 09:22:04', '2019-10-22 09:22:04'),
(28, 'edit_categories', 'categories', '2019-10-22 09:22:04', '2019-10-22 09:22:04'),
(29, 'add_categories', 'categories', '2019-10-22 09:22:05', '2019-10-22 09:22:05'),
(30, 'delete_categories', 'categories', '2019-10-22 09:22:05', '2019-10-22 09:22:05'),
(31, 'browse_posts', 'posts', '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(32, 'read_posts', 'posts', '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(33, 'edit_posts', 'posts', '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(34, 'add_posts', 'posts', '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(35, 'delete_posts', 'posts', '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(36, 'browse_pages', 'pages', '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(37, 'read_pages', 'pages', '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(38, 'edit_pages', 'pages', '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(39, 'add_pages', 'pages', '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(40, 'delete_pages', 'pages', '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(41, 'browse_hooks', NULL, '2019-10-22 09:22:08', '2019-10-22 09:22:08'),
(57, 'browse_toko', 'toko', '2019-11-04 18:37:24', '2019-11-04 18:37:24'),
(58, 'read_toko', 'toko', '2019-11-04 18:37:25', '2019-11-04 18:37:25'),
(59, 'edit_toko', 'toko', '2019-11-04 18:37:25', '2019-11-04 18:37:25'),
(60, 'add_toko', 'toko', '2019-11-04 18:37:25', '2019-11-04 18:37:25'),
(61, 'delete_toko', 'toko', '2019-11-04 18:37:25', '2019-11-04 18:37:25'),
(67, 'browse_data_karyawans', 'data_karyawans', '2019-11-05 03:23:12', '2019-11-05 03:23:12'),
(68, 'read_data_karyawans', 'data_karyawans', '2019-11-05 03:23:12', '2019-11-05 03:23:12'),
(69, 'edit_data_karyawans', 'data_karyawans', '2019-11-05 03:23:12', '2019-11-05 03:23:12'),
(70, 'add_data_karyawans', 'data_karyawans', '2019-11-05 03:23:12', '2019-11-05 03:23:12'),
(71, 'delete_data_karyawans', 'data_karyawans', '2019-11-05 03:23:12', '2019-11-05 03:23:12'),
(72, 'browse_data_tokos', 'data_tokos', '2019-11-05 04:46:00', '2019-11-05 04:46:00'),
(73, 'read_data_tokos', 'data_tokos', '2019-11-05 04:46:00', '2019-11-05 04:46:00'),
(74, 'edit_data_tokos', 'data_tokos', '2019-11-05 04:46:00', '2019-11-05 04:46:00'),
(75, 'add_data_tokos', 'data_tokos', '2019-11-05 04:46:00', '2019-11-05 04:46:00'),
(76, 'delete_data_tokos', 'data_tokos', '2019-11-05 04:46:00', '2019-11-05 04:46:00'),
(77, 'browse_laporan_keuangans', 'laporan_keuangans', '2019-11-05 04:51:47', '2019-11-05 04:51:47'),
(78, 'read_laporan_keuangans', 'laporan_keuangans', '2019-11-05 04:51:47', '2019-11-05 04:51:47'),
(79, 'edit_laporan_keuangans', 'laporan_keuangans', '2019-11-05 04:51:47', '2019-11-05 04:51:47'),
(80, 'add_laporan_keuangans', 'laporan_keuangans', '2019-11-05 04:51:47', '2019-11-05 04:51:47'),
(81, 'delete_laporan_keuangans', 'laporan_keuangans', '2019-11-05 04:51:47', '2019-11-05 04:51:47'),
(82, 'browse_barang_masuks', 'barang_masuks', '2019-11-13 22:03:07', '2019-11-13 22:03:07'),
(83, 'read_barang_masuks', 'barang_masuks', '2019-11-13 22:03:07', '2019-11-13 22:03:07'),
(84, 'edit_barang_masuks', 'barang_masuks', '2019-11-13 22:03:07', '2019-11-13 22:03:07'),
(85, 'add_barang_masuks', 'barang_masuks', '2019-11-13 22:03:07', '2019-11-13 22:03:07'),
(86, 'delete_barang_masuks', 'barang_masuks', '2019-11-13 22:03:07', '2019-11-13 22:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-22 09:22:06', '2019-10-22 09:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-10-22 09:21:58', '2019-10-22 09:21:58'),
(2, 'user', 'Normal User', '2019-10-22 09:21:58', '2019-10-22 09:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'admin.logo', 'Site Logo', 'settings\\January2020\\cuC64NxdUuZuIh2MqtgU.jpg', '', 'image', 3, 'Admin'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-10-22 09:22:06', '2019-10-22 09:22:06'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-10-22 09:22:07', '2019-10-22 09:22:07'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-10-22 09:22:08', '2019-10-22 09:22:08'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-10-22 09:22:08', '2019-10-22 09:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$F1vT6zKa1QbINQfoIb/vG.pTA9DwhN76xNEL/ao4BiwIVz1p6JuV.', 'z1rux63IwF80YcFj3sSNE5beefWwecCwqRTkmkTbRJg3APeEOKIp1jeHpdVo', NULL, '2019-10-22 09:22:05', '2019-10-22 09:22:05'),
(2, 1, 'redmin', 'ardi_nst26@gmail.com', 'users\\January2020\\EDBkrjIOy0AAp1lZZ6RN.jpg', NULL, '$2y$10$A9qabkUS996257iyiaQfP.mEics.Ws4u/uOpyBRwA5U5KMpfGQi/G', NULL, '{\"locale\":\"en\"}', '2020-01-26 10:18:52', '2020-01-26 10:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_masuks`
--
ALTER TABLE `barang_masuks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_karyawans`
--
ALTER TABLE `data_karyawans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_tokos`
--
ALTER TABLE `data_tokos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan_keuangans`
--
ALTER TABLE `laporan_keuangans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang_masuks`
--
ALTER TABLE `barang_masuks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_karyawans`
--
ALTER TABLE `data_karyawans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `data_tokos`
--
ALTER TABLE `data_tokos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laporan_keuangans`
--
ALTER TABLE `laporan_keuangans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
