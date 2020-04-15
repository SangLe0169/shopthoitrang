-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 15, 2020 lúc 03:19 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_fashion`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(1, 'Ao', 'ao', NULL, NULL),
(2, 'Quan', 'quan', NULL, NULL),
(3, 'Đồng Hồ', '', '2020-03-04 07:41:29', '2020-03-04 07:41:29'),
(4, 'Nón', '', '2020-03-04 07:43:51', '2020-03-04 07:43:51'),
(5, 'Giày', 'giay', '2020-03-04 07:57:57', '2020-03-04 07:57:57'),
(16, 'Nón', 'non', '2020-03-07 02:01:00', '2020-03-07 02:02:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_28_064452_vp_user', 1),
(5, '2020_03_03_134926_category', 2),
(6, '2020_03_09_062137_vp_product', 3),
(7, '2020_03_16_124422_vp_customer', 4),
(8, '2020_03_20_134105_vp_posts', 5),
(9, '2020_03_23_123313_vp_orders', 6),
(10, '2020_03_23_124908_vp_orders_detail', 7),
(11, '2020_03_25_043026_vp_promotions', 8),
(12, '2020_03_30_124303_vp_slide', 9),
(13, '2020_04_14_194902_vp_brand', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_code` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `email_verified_at`, `password`, `remember_token`, `code`, `time_code`, `created_at`, `updated_at`) VALUES
(1, 'Sang Lê', 'adminsang@gmail.com', '1696947248', 'Đồng Nai', NULL, '$2y$10$ijPc1spoRzLe7lYCgx4Lg.EvwJz4qHK7ZydDbr5sXNGwyfIOs2U/G', 'Hk9m9w0OS8DalWuW6oG54i1k1CR3gkTBUDjYw7gywBtXsaoGgiBAjWmsQ93P', '$2y$10$AKiKjzSNXetOGfVztKFyfu88F0s9hmZaRptv49DyCiRzAtlTMqmB.', '2020-04-09 14:32:15', '2020-03-29 06:22:22', '2020-04-09 14:32:15'),
(2, 'Sang Lê', 'admin@gmail.com', '1696947248', 'Đồng Nai', NULL, '$2y$10$9l/5sPQGkB9OemSsQrWmO.d6YKJWXTabwDT5ndWHTe0B4IP3jVHZK', NULL, '$2y$10$Cn1mzdfU/r336maMvaZOOuGO1cRB/.R1XcVFQOnl8GNZZwoFpPtxu', '2020-04-09 14:14:13', '2020-03-29 06:45:48', '2020-04-09 14:14:13'),
(4, 'Sang Lê', 'admintam@gmail.com', '1696947248', 'Đồng Nai', NULL, '$2y$10$u0uMbPmRAs118rXBNdl9/.wtZbCHFgi24PwJrSiuJhrrEwk74aGdC', '5KzCL4masZT0xiOcuowyKTnUIq1KZCMeo0UhgXHrMXlVsR65wDsOUqN4dOLd', NULL, NULL, '2020-03-29 06:50:55', '2020-03-29 06:50:55'),
(5, 'Sang Lê', 'lesang0169@gmail.com', '1696947248', 'Đồng Nai', NULL, '$2y$10$IPu/2QmbtbSs2irRsMsYqe.r6U3dFcnrFBwe3xYiminkdjslShjHq', NULL, '$2y$10$..K6WqlvmP2RzkwKu4OJyOaHS.ME.ZXgJCeDLnDGtYUQFsVhOHUn6', '2020-04-09 15:32:49', '2020-04-09 14:33:18', '2020-04-09 15:32:49'),
(6, 'Sang Lê', 'lesan0169@gmail.com', '0377411130', 'Bình Dương', NULL, '$2y$10$flJPxQINr5M3mYD7bFndsek09timCLsOWAZ2kcuVBvGR5XYg5vDQS', '1GdlVzqLazIKgHsJSHSJaL8kcHf5J84DlAM6i8yVllkKP2vd1kRPiW0JrUdz', '$2y$10$DhxAdrNkSs3Zf5ZFDurvCOIlt1sRjZR1urLrJut0B9EDaya5lIUCW', '2020-04-09 15:49:42', '2020-04-09 15:37:44', '2020-04-11 05:49:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_brand`
--

CREATE TABLE `vp_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_brand`
--

INSERT INTO `vp_brand` (`brand_id`, `brand_name`, `brand_slug`, `brand_status`, `created_at`, `updated_at`) VALUES
(2, 'Giordano', 'giordano', 1, NULL, NULL),
(3, 'OEM', 'oem', 1, NULL, NULL),
(4, 'Kojiba', 'kojiba', 1, NULL, NULL),
(5, 'VICERO', 'vicero', 1, NULL, NULL),
(6, 'Zenko', 'zenko', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_comment`
--

CREATE TABLE `vp_comment` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `com_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_comment`
--

INSERT INTO `vp_comment` (`com_id`, `com_content`, `com_product`, `com_user`, `created_at`, `updated_at`) VALUES
(1, 'sfsg', 12, 1, '2020-03-31 07:17:40', '2020-03-31 07:17:40'),
(3, 'ssfvfvf', 12, 1, '2020-04-01 04:23:57', '2020-04-01 04:23:57'),
(4, 'Sản phẩm tốt lắm', 12, 1, '2020-04-01 04:24:53', '2020-04-01 04:24:53'),
(5, 'Sản phẩm đẹp', 11, 1, '2020-04-01 04:55:51', '2020-04-01 04:55:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_customer`
--

CREATE TABLE `vp_customer` (
  `cus_id` int(10) UNSIGNED NOT NULL,
  `cus_Hokhachhang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_Tenkhachhang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_Sodienthoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_Diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_Note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_Password` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `cus_Remember_Token` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_customer`
--

INSERT INTO `vp_customer` (`cus_id`, `cus_Hokhachhang`, `cus_Tenkhachhang`, `cus_Sodienthoai`, `cus_Diachi`, `cus_Email`, `cus_Note`, `cus_Password`, `cus_Remember_Token`, `created_at`, `updated_at`) VALUES
(1, 'Lê', 'Minh Sang', '0377411130', 'Bình Dương', '', '', '', NULL, '2020-03-16 06:33:40', '2020-03-16 06:57:16'),
(18, 'Le Minh', 'vdfbf', '1696947248', 'Đồng Nai', '', 'sdfgf', '', NULL, '2020-04-07 08:33:52', '2020-04-07 08:33:52'),
(19, 'Le Minh', 'hgf', '1696947248', 'Đồng Nai', '', 'asfsdg', '', NULL, '2020-04-07 08:35:51', '2020-04-07 08:35:51'),
(21, 'Lê Thị', 'B', '03274356', 'Đồng Nai', '', 'dsfsdg', '', NULL, '2020-04-07 09:02:54', '2020-04-07 09:02:54'),
(22, 'Lê Minh', 'T', '0238475465', 'Vung Tau', '', 'fsdgdg', '', NULL, '2020-04-07 09:12:56', '2020-04-07 09:12:56'),
(26, 'Lê Tiến', 'Hùng', '07234235546', 'Đồng Nai', '', 'sasfd afd', '', NULL, '2020-04-11 06:20:37', '2020-04-11 06:20:37'),
(27, 'Le Minh', 'Hung', '0238423', 'Đồng Nai', 'sprol878@gmail.com', 'asfsdg', '', NULL, '2020-04-11 15:11:35', '2020-04-11 15:11:35'),
(28, 'Le Minh', 'Tiến', '03274346', 'Đồng Nai', 'sprol878@gmail.com', 'sfsdgdg', '', NULL, '2020-04-11 15:13:05', '2020-04-11 15:13:05'),
(29, 'Le Minh', 'Hoàng', '016334354674', 'Đồng Nai', 'lesang0169@gmail.com', 'afsdgd', '', NULL, '2020-04-12 14:02:49', '2020-04-12 14:02:49'),
(31, 'Nguyễn', 'Jony', '0832736435', 'New York', 'lesang0169@gmail.com', 'sdasfdg', '', NULL, '2020-04-12 14:23:46', '2020-04-12 14:23:46'),
(32, 'Le Minh', 'Phúc', '0237435346', 'Nha Trang', 'lesang0169@gmail.com', 'scdsgdhfsdf', '', NULL, '2020-04-12 14:30:00', '2020-04-12 14:30:00'),
(33, 'Lê Thị', 'Thu', '02834735436', 'Hà Nội', 'lesang0169@gmail.com', 'sfsdfdsg', '', NULL, '2020-04-12 14:32:21', '2020-04-12 14:32:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_orders`
--

CREATE TABLE `vp_orders` (
  `or_id` int(10) UNSIGNED NOT NULL,
  `or_Ngaydat` date NOT NULL,
  `or_Tongtien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `or_Trangthai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `or_Payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `or_Customer` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_orders`
--

INSERT INTO `vp_orders` (`or_id`, `or_Ngaydat`, `or_Tongtien`, `or_Trangthai`, `or_Payment`, `or_Customer`, `created_at`, `updated_at`) VALUES
(1, '2020-04-07', '150,000.00', '', 'on', 18, '2020-04-07 08:33:52', '2020-04-07 08:33:52'),
(2, '2020-04-07', '150,000.00', '', 'on', 19, '2020-04-07 08:35:51', '2020-04-07 08:35:51'),
(4, '2020-04-07', '150,000.00', '', 'on', 21, '2020-04-07 09:02:54', '2020-04-07 09:02:54'),
(5, '2020-04-07', '300,000.00', '', 'on', 22, '2020-04-07 09:12:57', '2020-04-07 09:12:57'),
(8, '2020-04-11', '90,000.00', '', 'on', 26, '2020-04-11 06:20:37', '2020-04-11 06:20:37'),
(9, '2020-04-11', '6,000,000.00', '', 'on', 27, '2020-04-11 15:11:35', '2020-04-11 15:11:35'),
(10, '2020-04-11', '150,000.00', '', 'on', 28, '2020-04-11 15:13:05', '2020-04-11 15:13:05'),
(11, '2020-04-12', '3,000,000.00', '', 'on', 29, '2020-04-12 14:02:49', '2020-04-12 14:02:49'),
(13, '2020-04-12', '150,000.00', '', 'on', 31, '2020-04-12 14:23:46', '2020-04-12 14:23:46'),
(14, '2020-04-12', '0.00', '', 'on', 32, '2020-04-12 14:30:00', '2020-04-12 14:30:00'),
(15, '2020-04-12', '90,000.00', '', 'on', 33, '2020-04-12 14:32:21', '2020-04-12 14:32:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_orders_detail`
--

CREATE TABLE `vp_orders_detail` (
  `detail_id` int(10) UNSIGNED NOT NULL,
  `detail_Đonvigia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_Soluong` int(11) NOT NULL,
  `detail_Product` int(10) UNSIGNED NOT NULL,
  `detail_Order` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_orders_detail`
--

INSERT INTO `vp_orders_detail` (`detail_id`, `detail_Đonvigia`, `detail_Soluong`, `detail_Product`, `detail_Order`, `created_at`, `updated_at`) VALUES
(2, '150000', 1, 12, 4, '2020-04-07 09:02:54', '2020-04-07 09:02:54'),
(3, '150000', 2, 12, 5, '2020-04-07 09:12:57', '2020-04-07 09:12:57'),
(6, '90000', 1, 11, 8, '2020-04-11 06:20:37', '2020-04-11 06:20:37'),
(7, '3000000', 2, 7, 9, '2020-04-11 15:11:35', '2020-04-11 15:11:35'),
(8, '150000', 1, 12, 10, '2020-04-11 15:13:05', '2020-04-11 15:13:05'),
(9, '3000000', 1, 7, 11, '2020-04-12 14:02:49', '2020-04-12 14:02:49'),
(10, '150000', 1, 5, 13, '2020-04-12 14:23:46', '2020-04-12 14:23:46'),
(11, '90000', 1, 11, 15, '2020-04-12 14:32:21', '2020-04-12 14:32:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_posts`
--

CREATE TABLE `vp_posts` (
  `pos_id` int(10) UNSIGNED NOT NULL,
  `pos_Mabaiviet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_Tieudebaiviet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_Noidungbaiviet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_Hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_Ngaytao` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_posts`
--

INSERT INTO `vp_posts` (`pos_id`, `pos_Mabaiviet`, `pos_Tieudebaiviet`, `pos_Noidungbaiviet`, `pos_Hinhanh`, `pos_Ngaytao`, `created_at`, `updated_at`) VALUES
(3, 'bv01', 'Sản phẫm mới', '<p>Le Minh Sang</p>', '4.0.jpeg', '2020-03-20', '2020-03-20 07:56:09', '2020-03-21 06:29:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_product`
--

CREATE TABLE `vp_product` (
  `pro_id` int(10) UNSIGNED NOT NULL,
  `pro_Tensanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_Thuonghieu` int(10) UNSIGNED NOT NULL,
  `pro_Gia` int(11) NOT NULL,
  `pro_Hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_Giamgia` int(11) NOT NULL,
  `pro_Khuyenmai` tinyint(4) NOT NULL,
  `pro_Nhommau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_Kichthuoc` int(11) NOT NULL,
  `pro_Soluong` int(11) NOT NULL,
  `pro_Mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_Trangthai` tinyint(4) NOT NULL,
  `pro_featured` tinyint(4) NOT NULL,
  `pro_cate` int(10) UNSIGNED NOT NULL,
  `pro_promotion` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_product`
--

INSERT INTO `vp_product` (`pro_id`, `pro_Tensanpham`, `pro_Thuonghieu`, `pro_Gia`, `pro_Hinhanh`, `pro_Giamgia`, `pro_Khuyenmai`, `pro_Nhommau`, `pro_Kichthuoc`, `pro_Soluong`, `pro_Mota`, `pro_Trangthai`, `pro_featured`, `pro_cate`, `pro_promotion`, `created_at`, `updated_at`) VALUES
(5, 'Giày sneaker nam giày thể thao nam DODACO DDC1996 K5', 0, 150000, '43fe19321344285cee3fbf2142600b8a.jpg', 100000, 1, 'Xám', 40, 1, '<p>Sản phẩm mới ra mắt</p>', 1, 1, 5, 0, '2020-03-09 08:19:41', '2020-03-23 22:35:48'),
(6, 'Đồng Hồ', 0, 15000000, '9c5575113.jpg', 1000000, 0, 'Xanh', 20, 2, '<p>Sản phẩm mới ra .</p>', 1, 0, 3, 0, '2020-03-09 08:33:32', '2020-03-09 08:33:32'),
(7, 'Giày sneakernam', 0, 3000000, '9bbd61f01390f4370a0203433115117e.jpg', 200000, 0, 'Xanh', 40, 1, '<p>Sản phẩm đ&atilde; được cấp theo ti&ecirc;u chuẩn quốc tế</p>', 1, 1, 5, 0, '2020-03-09 08:41:17', '2020-03-24 00:38:23'),
(9, 'Áo thun', 0, 150000, '5b9b0b4a1aef66e1baec833fcab88054.jpg', 100000, 1, 'Xanh', 20, 2, '<p>Sản phẩm chất lượng cao</p>', 1, 0, 1, 0, '2020-03-23 22:26:04', '2020-03-24 00:42:10'),
(10, 'Áo Sơ Mi Nam Trắng cúc trắng dài tay thương hiệu đẳng cấp', 0, 130000, 'ef00a63789f971264840977050e50105.jpg', 69, 1, 'Trắng cúc trắng', 20, 2, '<p>sddddddddddddfsssssssssseef</p>', 1, 0, 1, 0, '2020-03-24 00:37:12', '2020-03-24 00:37:12'),
(11, 'ÁO THUN NAM DÀI TAY MẪU MỚI ĐẸP QUÊN LỐI VỀ', 0, 90000, '87ded55d788aba73b9dbf5aae8223cdb.jpg', 45000, 1, 'Xanh', 23, 1, '<p>sdasfdsgsdhfdhdj</p>', 1, 1, 1, 0, '2020-03-25 23:59:25', '2020-03-25 23:59:25'),
(12, 'Áo thun nam polo! áo phông nam cổ trụ vải cotton co dãn tốt cao cấp', 0, 150000, '3954c312694573a1aa3dd6448c120056.jpg', 79000, 0, 'Trắng cúc trắng', 26, 1, '<p>hsajfashfs,jdb asfhasvfasf</p>', 1, 1, 1, 0, '2020-03-26 00:02:15', '2020-03-26 00:02:15'),
(13, 'ÁO THUN NAM NỮ CO GIÃN THỜI TRANG TYNAFASHION AT021', 0, 155, '428b28859ff970b53c41dd7cf6acae6c.jpg', 79000, 1, 'Trắng cúc trắng', 25, 1, '<p>fsgfdsg sgdfhdjdg</p>', 1, 0, 1, 0, '2020-03-26 00:06:11', '2020-03-26 00:06:11'),
(14, 'Áo thun nam cơ bản Khatoco tay ngắn trơn màu xanh', 2, 200000, '5b9b0b4a1aef66e1baec833fcab88054.jpg', 150000, 0, 'Xanh', 30, 2, '<p>safsdgdhf asfsdgdfh</p>', 1, 0, 1, 0, '2020-04-14 13:23:59', '2020-04-15 12:41:05'),
(15, 'Áo thun nam nữ Hàn quốc', 3, 250000, '5f47bc936c1f2a1835bd265042907870.jpg', 200000, 0, 'Trắng cúc trắng', 28, 2, '<p>sfsdvsdg</p>', 1, 1, 1, 0, '2020-04-14 14:53:38', '2020-04-14 14:53:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_promotions`
--

CREATE TABLE `vp_promotions` (
  `prom_id` int(10) UNSIGNED NOT NULL,
  `prom_Tieude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prom_Mota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_slide`
--

CREATE TABLE `vp_slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `links` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_slide`
--

INSERT INTO `vp_slide` (`id`, `links`, `images`, `created_at`, `updated_at`) VALUES
(1, '', 'images (1).jpg', NULL, NULL),
(2, '', 'images (2).jpg', NULL, NULL),
(3, '', 'images (3).jpg', NULL, NULL),
(4, '', 'images (4).jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_users`
--

CREATE TABLE `vp_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_users`
--

INSERT INTO `vp_users` (`id`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'sprol878@gmail.com', '$2y$10$pQD8Dz3dSL7ma0Z5w25onuxbd7AjJ.aEuFiJMHX9fpVSqXVto7vXu', 1, 'OkgZUwYxqVbi9kvltrryTF84zmh4YaCDTiDhCPExjJX6pxNCMN8DkRiBZjMY', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `code` (`code`);

--
-- Chỉ mục cho bảng `vp_brand`
--
ALTER TABLE `vp_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `vp_comment_com_product_foreign` (`com_product`),
  ADD KEY `com_user` (`com_user`);

--
-- Chỉ mục cho bảng `vp_customer`
--
ALTER TABLE `vp_customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Chỉ mục cho bảng `vp_orders`
--
ALTER TABLE `vp_orders`
  ADD PRIMARY KEY (`or_id`),
  ADD KEY `vp_orders_or_customer_foreign` (`or_Customer`);

--
-- Chỉ mục cho bảng `vp_orders_detail`
--
ALTER TABLE `vp_orders_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `vp_orders_detail_detail_product_foreign` (`detail_Product`),
  ADD KEY `vp_orders_detail_detail_order_foreign` (`detail_Order`);

--
-- Chỉ mục cho bảng `vp_posts`
--
ALTER TABLE `vp_posts`
  ADD PRIMARY KEY (`pos_id`);

--
-- Chỉ mục cho bảng `vp_product`
--
ALTER TABLE `vp_product`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `vp_product_pro_cate_foreign` (`pro_cate`),
  ADD KEY `pro_promotion` (`pro_promotion`),
  ADD KEY `pro_Thuonghieu` (`pro_Thuonghieu`);

--
-- Chỉ mục cho bảng `vp_promotions`
--
ALTER TABLE `vp_promotions`
  ADD PRIMARY KEY (`prom_id`);

--
-- Chỉ mục cho bảng `vp_slide`
--
ALTER TABLE `vp_slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vp_brand`
--
ALTER TABLE `vp_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `vp_customer`
--
ALTER TABLE `vp_customer`
  MODIFY `cus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `vp_orders`
--
ALTER TABLE `vp_orders`
  MODIFY `or_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `vp_orders_detail`
--
ALTER TABLE `vp_orders_detail`
  MODIFY `detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `vp_posts`
--
ALTER TABLE `vp_posts`
  MODIFY `pos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `vp_product`
--
ALTER TABLE `vp_product`
  MODIFY `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `vp_promotions`
--
ALTER TABLE `vp_promotions`
  MODIFY `prom_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_slide`
--
ALTER TABLE `vp_slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  ADD CONSTRAINT `vp_comment_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `vp_product` (`pro_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vp_comment_ibfk_1` FOREIGN KEY (`com_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_orders`
--
ALTER TABLE `vp_orders`
  ADD CONSTRAINT `vp_orders_or_customer_foreign` FOREIGN KEY (`or_Customer`) REFERENCES `vp_customer` (`cus_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_orders_detail`
--
ALTER TABLE `vp_orders_detail`
  ADD CONSTRAINT `vp_orders_detail_detail_order_foreign` FOREIGN KEY (`detail_Order`) REFERENCES `vp_orders` (`or_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vp_orders_detail_detail_product_foreign` FOREIGN KEY (`detail_Product`) REFERENCES `vp_product` (`pro_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_product`
--
ALTER TABLE `vp_product`
  ADD CONSTRAINT `vp_product_pro_cate_foreign` FOREIGN KEY (`pro_cate`) REFERENCES `categories` (`cate_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_promotions`
--
ALTER TABLE `vp_promotions`
  ADD CONSTRAINT `vp_promotions_ibfk_1` FOREIGN KEY (`prom_id`) REFERENCES `vp_product` (`pro_promotion`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
