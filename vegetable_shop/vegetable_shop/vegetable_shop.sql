-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2022 lúc 08:05 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vegetable_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` bigint(20) NOT NULL,
  `cart_qty` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `pro_id` bigint(20) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `cart_qty`, `user_id`, `pro_id`, `cart_status`, `created_at`, `updated_at`) VALUES
(7, 2, 2, 1, 2, '2022-11-25 09:18:33', '2022-11-30 05:47:41'),
(8, 16, 2, 4, 2, '2022-11-25 09:18:36', '2022-11-26 08:57:44'),
(9, 2, 2, 7, 2, '2022-10-30 04:47:33', '2022-10-30 05:49:02'),
(10, 1, 2, 5, 1, '2022-11-29 04:53:40', '2022-11-29 05:53:40'),
(11, 3, 3, 6, 2, '2022-11-30 03:56:23', '2022-11-30 05:57:36'),
(12, 1, 1, 5, 2, '2022-12-03 04:45:52', '2022-12-03 04:46:34'),
(13, 3, 1, 12, 2, '2022-12-19 03:38:03', '2022-12-20 18:29:59'),
(14, 1, 1, 5, 2, '2022-12-20 18:29:01', '2022-12-20 18:29:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_slug`, `category_image`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Vegetables', 'vegetables', '1637730138_category-1.jpg', 1, '2022-11-19 07:38:09', '2022-11-24 05:02:18'),
(2, 'Fruits', 'fruits', '1637728556_category-2.jpg', 1, '2022-11-20 06:30:33', '2022-11-24 04:35:56'),
(3, 'Juices', 'juices', '1637729459_category-3.jpg', 1, '2022-11-24 10:50:59', '2022-11-24 11:50:59'),
(4, 'Dried', 'dried', '1637729477_category-4.jpg', 1, '2022-11-11 04:51:17', '2022-11-11 04:51:17'),
(5, 'test', 'test', '1637731259_image_6.jpg', 1, '2022-11-24 05:20:59', '2022-11-24 05:40:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_pay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phone`, `customer_pay`, `customer_note`, `created_at`, `updated_at`) VALUES
(1, 'nguyễn văn a', 'user1@gmail.com', '123/456 tổ 6 khu 7 phú lợi', '0773654089', 'COD', NULL, '2022-11-26 08:57:44', '2022-11-26 08:57:44'),
(2, 'user1', 'user1@gmail.com', 'dcdcdcd', '0773654022', 'COD', NULL, '2022-11-30 05:49:02', '2022-11-30 05:52:02'),
(3, 'Nguyễn Văn A', 'user2@gmail.com', 'dsdsdsd', '0773654028', 'COD', NULL, '2022-11-30 05:57:36', '2022-11-30 05:58:36'),
(4, 'LO', 'longnq9a@gmail.com', 'Thôn Hồ xã CưMta huyện Mđrăk tỉnh Đăk Lăk', '0848070008', 'COD', NULL, '2022-12-03 04:46:34', '2022-12-03 04:46:34'),
(5, 'Nguyễn Phước Long', 'longnq9a@gmail.com', 'đà nẵng', '0848070008', 'PAYPAL', NULL, '2022-12-20 18:29:59', '2022-12-20 18:29:59');

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
(1, '2022_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `cus_id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `cus_id`, `order_code`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, '1996506331', 3, '2022-11-26 08:57:44', '2022-11-28 06:19:52'),
(2, 2, '994609999', 1, '2021-11-30 05:09:02', '2021-11-30 05:19:02'),
(3, 3, '910487397', 3, '2022-11-30 05:27:36', '2022-11-30 05:29:13'),
(4, 4, '1806941526', 1, '2022-12-03 04:46:34', '2022-12-03 04:46:34'),
(5, 5, '1146768149', 1, '2022-12-20 18:29:59', '2022-12-20 18:29:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_de_price` int(11) NOT NULL,
  `order_de_qty` int(11) NOT NULL,
  `order_de_coupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `pro_id`, `order_code`, `order_de_price`, `order_de_qty`, `order_de_coupon`, `created_at`, `updated_at`) VALUES
(1, 1, '1996506331', 20000, 1, 'sale123', '2022-11-26 08:57:44', '2022-11-26 08:57:44'),
(2, 4, '1996506331', 50000, 5, 'sale123', '2022-11-26 07:57:44', '2022-11-28 04:38:45'),
(3, 7, '994609999', 40000, 2, 'no', '2022-11-20 05:09:02', '2022-11-20 05:19:02'),
(4, 6, '910487397', 90000, 2, 'sale123', '2021-11-30 04:57:36', '2021-11-30 04:58:57'),
(5, 5, '1806941526', 50000, 1, 'no', '2022-12-03 04:46:34', '2022-12-03 04:46:34'),
(6, 12, '1146768149', 58000, 3, 'no', '2022-12-20 18:29:59', '2022-12-20 18:29:59'),
(7, 5, '1146768149', 50000, 1, 'no', '2022-12-20 18:29:59', '2022-12-20 18:29:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_price_sale` bigint(20) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_view` int(11) NOT NULL,
  `product_sold` int(11) NOT NULL,
  `product_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `product_slug`, `category_id`, `product_desc`, `product_price`, `product_price_sale`, `product_quantity`, `product_view`, `product_sold`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'product 1', '020598_product-12.jpg', 'product-1', 1, 'product 1', 20000, 0, 121, 0, 4, 1, '2022-11-19 07:39:12', '2022-11-28 06:19:48'),
(4, 'product 2', '1637385941_product-11.jpg', 'product-2', 1, 'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a\r\n                        paradisematic country, in which roasted parts of sentences fly into your mouth. Text should turn\r\n                        around and return to its own, safe country. But nothing the copy said could convince her and so it\r\n                        didn’t take long until.', 50000, 0, -5, 0, 20, 1, '2022-11-20 05:25:42', '2022-11-28 06:19:48'),
(5, 'product 3', '1637385969_product-10.jpg', 'product-3', 2, 'product 3', 60000, 50000, 134, 0, 0, 1, '2022-11-20 05:26:09', '2022-11-20 05:26:09'),
(6, 'product 4', '1637386331_product-4.jpg', 'product-4', 1, 'product 4', 100000, 90000, 121, 0, 3, 1, '2022-11-20 05:26:37', '2022-11-30 05:59:01'),
(7, 'product 5', '1638244057_product-1.jpg', 'product-5', 1, 'product 5', 40000, 0, 1, 0, 0, 1, '2022-11-23 03:47:37', '2022-11-23 03:47:37'),
(8, 'product 6', '1638244094_product-2.jpg', 'product-6', 2, 'product 6', 20000, 0, 136, 0, 0, 1, '2022-11-30 03:48:14', '2022-11-30 03:48:14'),
(9, 'product 7', '1638244146_product-9.jpg', 'product-7', 1, 'product 7', 60000, 50000, 169, 0, 0, 1, '2022-11-22 03:49:06', '2022-11-22 03:49:06'),
(10, 'product 8', '1638244175_product-8.jpg', 'product-8', 3, 'product 8', 80000, 0, 120, 0, 0, 1, '2022-11-20 04:49:35', '2022-11-20 04:49:35'),
(11, 'product 9', '1638244222_product-7.jpg', 'product-9', 1, 'product 9', 100000, 75000, 197, 0, 0, 1, '2022-11-30 03:50:22', '2022-11-30 03:50:22'),
(12, 'product 10', '1638244254_product-3.jpg', 'product-10', 1, 'product 10', 58000, 0, 176, 0, 0, 1, '2022-11-30 10:50:54', '2022-11-30 10:50:54'),
(13, 'product 11', '1638247452_1632203699240.png', 'product-11', 4, 'product 11', 100000, 0, 136, 0, 0, 1, '2022-11-30 03:55:11', '2022-11-30 04:44:12'),
(14, 'product 12', '1638247610_mit-say-deo-small.jpg', 'product-12', 4, 'product 12', 52000, 0, 156, 0, 0, 1, '2022-11-30 04:46:50', '2022-11-30 04:46:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `slider_id` bigint(20) UNSIGNED NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_name`, `slider_desc`, `slider_url`, `slider_image`, `slider_status`, `created_at`, `updated_at`) VALUES
(1, 'We serve Fresh Vegestables & Fruits', 'We deliver organic vegetables & fruits', NULL, '1637556040_bg_3.jpg', 1, '2022-11-22 04:35:39', '2022-11-22 04:40:40'),
(2, 'We serve Fresh Vegestables & Fruits', 'We deliver organic vegetables & fruits', NULL, '1637555875_bg_1.jpg', 1, '2022-11-22 04:37:55', '2022-11-22 04:37:55'),
(3, '100% Fresh & Organic Foods', 'We deliver organic vegetables & fruits', NULL, '1637556102_bg_2.jpg', 1, '2022-11-22 04:41:42', '2022-11-22 04:41:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statistical`
--

CREATE TABLE `statistical` (
  `id_statistic` int(11) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `sales` varchar(255) NOT NULL,
  `profit` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `statistical`
--

INSERT INTO `statistical` (`id_statistic`, `order_date`, `sales`, `profit`, `quantity`, `total_order`, `created_at`, `updated_at`) VALUES
(1, '2022-11-15', '10000000', '9999000', 1, 1, NULL, NULL),
(2, '2022-11-16', '30000000', '29999000', 2, 1, NULL, NULL),
(3, '2022-11-17', '29000000', '28999000', 2, 1, NULL, NULL),
(4, '2022-11-18', '29000000', '28998000', 2, 2, NULL, NULL),
(5, '2022-12-08', '14500000', '14499000', 1, 1, NULL, NULL),
(6, '2022-11-11', '14500000', '14499000', 1, 1, NULL, NULL),
(7, '2022-11-13', '43500000', '43498000', 2, 2, NULL, NULL),
(8, '2022-12-01', '22000000', '21999000', 1, 1, NULL, NULL),
(9, '2022-12-02', '19000000', '18999000', 1, 1, NULL, NULL),
(10, '2022-11-03', '19000000', '18999000', 1, 1, NULL, NULL),
(11, '2022-11-04', '1500000', '1499000', 1, 1, NULL, NULL),
(12, '2022-11-02', '15000000', '14999000', 1, 1, NULL, NULL),
(13, '2022-11-29', '14500000', '14499000', 1, 1, NULL, NULL),
(14, '2021-12-15', '30000000', '29999000', 2, 1, NULL, NULL),
(15, '2022-11-16', '19000000', '18999000', 1, 1, NULL, NULL),
(16, '2022-11-24', '61000000', '60998000', 4, 2, NULL, NULL),
(17, '2022-11-25', '9000000', '8999000', 1, 1, NULL, NULL),
(18, '2022-11-27', '56000000', '55998000', 4, 2, NULL, NULL),
(19, '2022-10-06', '960000000', '959985000', 16, 19, NULL, NULL),
(20, '2022-12-09', '80000000', '79999000', 1, 1, NULL, NULL),
(21, '2022-12-10', '260000000', '259996000', 6, 6, NULL, NULL),
(22, '2022-11-23', '200000000', '199998000', 4, 2, NULL, NULL),
(23, '2022-12-11', '18000000', '17999000', 2, 1, NULL, NULL),
(24, '2022-12-12', '300000', '299000', 1, 1, NULL, NULL),
(25, '2022-12-17', '6600000', '6599000', 14, 2, NULL, NULL),
(26, '2021-11-28', '810000', '807000', 18, 6, '2021-11-28 06:09:15', '2021-11-28 06:19:52'),
(27, '2021-11-30', '200000', '199000', 2, 1, '2021-11-30 05:59:13', '2021-11-30 05:59:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `level`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 1, '$2y$10$NCUHalSt7EGHKAYt60U0UOCPK1dhb8Nz50UGSKVk.1ETzVePMQ4Zi', NULL, '2022-11-22 05:01:36', '2022-11-29 03:06:03'),
(2, 'user1', 'user1@gmail.com', 2, '$2y$10$NCUHalSt7EGHKAYt60U0UOCPK1dhb8Nz50UGSKVk.1ETzVePMQ4Zi', NULL, '2022-11-22 05:03:20', '2022-11-22 05:03:20'),
(3, 'Nguyễn Văn A', 'user2@gmail.com', 2, '$2y$10$6C4UPNokdNbWx.vSWKzUnOIHtBaM/h0byRHlGkpVJfThQaiFYlNce', 'g8GJup1TqMeHHe1HFqxsnaKzdWW0Cmn8TBhMLX6hLoayE7TuoUznIZVpKBpZ', '2022-11-24 09:33:35', '2022-12-03 01:35:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `pro_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 4, 3, '2021-11-24 09:47:31', '2021-11-24 09:47:31'),
(3, 1, 3, '2022-11-24 09:50:25', '2022-11-24 09:50:25'),
(7, 4, 2, '2022-11-30 05:47:44', '2022-11-30 05:47:44'),
(8, 6, 3, '2022-11-30 05:56:29', '2022-11-30 05:56:29'),
(9, 12, 1, '2022-12-19 14:59:44', '2022-12-19 14:59:44'),
(10, 4, 3, '2022-11-24 09:47:31', '2022-11-24 09:47:31');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_category_slug_unique` (`category_slug`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `cus_id` (`cus_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_detail_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_product_slug_unique` (`product_slug`),
  ADD KEY `product_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `statistical`
--
ALTER TABLE `statistical`
  ADD PRIMARY KEY (`id_statistic`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `wishlist_pro_id_foreign` (`pro_id`),
  ADD KEY `wishlist_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `statistical`
--
ALTER TABLE `statistical`
  MODIFY `id_statistic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `cus` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
