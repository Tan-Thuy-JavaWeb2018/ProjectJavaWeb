-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 31, 2018 lúc 07:42 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhang_javaweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(10) UNSIGNED NOT NULL,
  `tieude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_taikhoan` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluanbaiviet`
--

CREATE TABLE `binhluanbaiviet` (
  `id` int(10) UNSIGNED NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_baiviet` int(10) UNSIGNED NOT NULL,
  `id_taikhoan` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietbinhluan`
--

CREATE TABLE `chitietbinhluan` (
  `id` int(10) UNSIGNED NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_binhluan` int(10) UNSIGNED NOT NULL,
  `id_taikhoan` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id` int(10) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `id_hoadon` int(10) UNSIGNED NOT NULL,
  `id_sanpham` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `anhchitiet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sanpham` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `huyen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichu` text COLLATE utf8mb4_unicode_ci,
  `trangthai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenloai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_10_31_103556_create_taikhoan_table', 1),
(2, '2018_10_31_103656_create_loaisanpham_table', 1),
(3, '2018_10_31_103720_create_hoadon_table', 1),
(4, '2018_10_31_103754_create_baiviet_table', 1),
(5, '2018_10_31_103823_create_sanpham_table', 1),
(6, '2018_10_31_103847_create_chitiethoadon_table', 1),
(7, '2018_10_31_103914_create_binhluanbaiviet_table', 1),
(8, '2018_10_31_103945_create_chitietsanpham_table', 1),
(9, '2018_10_31_104007_create_chitietbinhluan_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `tensanpham` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giagoc` double NOT NULL,
  `khuyenmai` int(11) NOT NULL,
  `anhchinh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `noibat` int(11) NOT NULL,
  `luotthich` int(11) NOT NULL,
  `id_loaisp` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentaikhoan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phanquyen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baiviet_id_taikhoan_foreign` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `binhluanbaiviet`
--
ALTER TABLE `binhluanbaiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluanbaiviet_id_baiviet_foreign` (`id_baiviet`),
  ADD KEY `binhluanbaiviet_id_taikhoan_foreign` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `chitietbinhluan`
--
ALTER TABLE `chitietbinhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietbinhluan_id_binhluan_foreign` (`id_binhluan`),
  ADD KEY `chitietbinhluan_id_taikhoan_foreign` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitiethoadon_id_hoadon_foreign` (`id_hoadon`),
  ADD KEY `chitiethoadon_id_sanpham_foreign` (`id_sanpham`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietsanpham_id_sanpham_foreign` (`id_sanpham`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_id_loaisp_foreign` (`id_loaisp`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taikhoan_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluanbaiviet`
--
ALTER TABLE `binhluanbaiviet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietbinhluan`
--
ALTER TABLE `chitietbinhluan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_id_taikhoan_foreign` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `binhluanbaiviet`
--
ALTER TABLE `binhluanbaiviet`
  ADD CONSTRAINT `binhluanbaiviet_id_baiviet_foreign` FOREIGN KEY (`id_baiviet`) REFERENCES `baiviet` (`id`),
  ADD CONSTRAINT `binhluanbaiviet_id_taikhoan_foreign` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `chitietbinhluan`
--
ALTER TABLE `chitietbinhluan`
  ADD CONSTRAINT `chitietbinhluan_id_binhluan_foreign` FOREIGN KEY (`id_binhluan`) REFERENCES `binhluanbaiviet` (`id`),
  ADD CONSTRAINT `chitietbinhluan_id_taikhoan_foreign` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_id_hoadon_foreign` FOREIGN KEY (`id_hoadon`) REFERENCES `hoadon` (`id`),
  ADD CONSTRAINT `chitiethoadon_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_id_loaisp_foreign` FOREIGN KEY (`id_loaisp`) REFERENCES `loaisanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
