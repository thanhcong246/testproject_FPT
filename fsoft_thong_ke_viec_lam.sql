-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 06, 2023 lúc 02:04 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fsoft_thong_ke_viec_lam`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congviec`
--

CREATE TABLE `congviec` (
  `socmnd` varchar(12) NOT NULL,
  `ngayvaocongty` date NOT NULL,
  `manganh` int(11) NOT NULL,
  `tencongviec` varchar(255) DEFAULT NULL,
  `tencongty` varchar(255) DEFAULT NULL,
  `diachicongty` varchar(255) DEFAULT NULL,
  `thoigianlamviec` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh`
--

CREATE TABLE `nganh` (
  `manganh` int(11) NOT NULL,
  `tennganh` varchar(255) DEFAULT NULL,
  `loainganh` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `socmnd` varchar(12) NOT NULL,
  `hoten` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sodt` varchar(20) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `totnghiep`
--

CREATE TABLE `totnghiep` (
  `socmnd` varchar(12) NOT NULL,
  `matruong` int(11) NOT NULL,
  `manganh` int(11) NOT NULL,
  `hetn` varchar(255) DEFAULT NULL,
  `ngaytn` date DEFAULT NULL,
  `loaitn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truong`
--

CREATE TABLE `truong` (
  `matruong` int(11) NOT NULL,
  `tentruong` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `sodt` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `congviec`
--
ALTER TABLE `congviec`
  ADD PRIMARY KEY (`socmnd`,`ngayvaocongty`,`manganh`),
  ADD KEY `manganh` (`manganh`);

--
-- Chỉ mục cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`manganh`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`socmnd`);

--
-- Chỉ mục cho bảng `totnghiep`
--
ALTER TABLE `totnghiep`
  ADD PRIMARY KEY (`socmnd`,`matruong`,`manganh`),
  ADD KEY `matruong` (`matruong`),
  ADD KEY `manganh` (`manganh`);

--
-- Chỉ mục cho bảng `truong`
--
ALTER TABLE `truong`
  ADD PRIMARY KEY (`matruong`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `congviec`
--
ALTER TABLE `congviec`
  ADD CONSTRAINT `congviec_ibfk_1` FOREIGN KEY (`socmnd`) REFERENCES `sinhvien` (`socmnd`),
  ADD CONSTRAINT `congviec_ibfk_2` FOREIGN KEY (`manganh`) REFERENCES `nganh` (`manganh`);

--
-- Các ràng buộc cho bảng `totnghiep`
--
ALTER TABLE `totnghiep`
  ADD CONSTRAINT `totnghiep_ibfk_1` FOREIGN KEY (`matruong`) REFERENCES `truong` (`matruong`),
  ADD CONSTRAINT `totnghiep_ibfk_2` FOREIGN KEY (`socmnd`) REFERENCES `sinhvien` (`socmnd`),
  ADD CONSTRAINT `totnghiep_ibfk_3` FOREIGN KEY (`manganh`) REFERENCES `nganh` (`manganh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
