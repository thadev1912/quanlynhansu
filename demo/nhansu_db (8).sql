-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2022 lúc 11:23 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhansu_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `ma_post` varchar(50) NOT NULL,
  `title_post` varchar(100) NOT NULL,
  `content_post` text NOT NULL,
  `danhmuc_post` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `ma_post`, `title_post`, `content_post`, `danhmuc_post`, `created_at`, `updated_at`) VALUES
(1, 'postvn_01', 'đổi mới cần thơ', 'thị trường tin tức bất động sản cần thơ ngày càng được thể hiện', 'Tin Tức Thị Trường', NULL, NULL),
(2, 'postvn_02', 'đổi mới hậu giang', 'thị trường tin tức bất động sản hậu giang ngày càng được thể hiện', 'Tin Tức Đất Xanh', NULL, NULL),
(3, 'postvn_03', 'đổi mới trà vinh', 'thị trường tin tức bất động sản trà vinh ngày càng được thể hiện', 'Tin Tức Cộng Động', NULL, NULL),
(4, 'postvn_04', 'đổi mới cà mau', 'thị trường tin tức bất động sản cà mau ngày càng được thể hiện', 'Tin Tức Thị Trường', '2022-11-25 02:32:44', '2022-11-25 02:32:44'),
(5, 'postvn_06', 'dổi mới bến tre', 'thị trường tin tức bất động sản bến tre ngày càng được thể hiện', 'Tin Tức Đất Xanh', '2022-11-25 02:37:50', '2022-11-25 03:06:23');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
