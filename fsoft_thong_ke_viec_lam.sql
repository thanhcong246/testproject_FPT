-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2023 lúc 06:14 AM
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

--
-- Đang đổ dữ liệu cho bảng `congviec`
--

INSERT INTO `congviec` (`socmnd`, `ngayvaocongty`, `manganh`, `tencongviec`, `tencongty`, `diachicongty`, `thoigianlamviec`) VALUES
('123', '2023-12-04', 333, 'Nâng mũi', 'Bệnh viện Việt Đức', '234234324', 8),
('12333332', '2023-12-01', 223, 'dev', 'FPT', '2131231', 10),
('1234', '2023-12-15', 555, 'Sửa răng', 'Tư nhân', '423424234', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh`
--

CREATE TABLE `nganh` (
  `manganh` int(11) NOT NULL,
  `tennganh` varchar(255) DEFAULT NULL,
  `loainganh` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nganh`
--

INSERT INTO `nganh` (`manganh`, `tennganh`, `loainganh`) VALUES
(123, 'Quản trị kinh doanh', 'CNTT'),
(223, 'Công nghệ phần mềm', 'CNTT'),
(333, 'Phẫu thuật thẩm mĩ', 'Nha khoa'),
(555, 'Răng Hàm Mặt', 'Nha Khoa');

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

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`socmnd`, `hoten`, `email`, `sodt`, `diachi`) VALUES
('123', 'nguyễn thành công', 'aitechcc@gmail.com', '12312312312', '13121'),
('123333', 'nguyễn thành công', 'aitechcc@gmail.com', '3242342', '423'),
('12333332', 'nguyễn thành công', 'aitechcc2@gmail.com', '123123123', '13121'),
('1234', 'nguyễn thành công', 'aitechcc@gmail.com', '1321312312', '13121'),
('333333333333', 'Trần Văn An', 'tranvana@gmail.com', '234234324', '4234242342423423');

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

--
-- Đang đổ dữ liệu cho bảng `totnghiep`
--

INSERT INTO `totnghiep` (`socmnd`, `matruong`, `manganh`, `hetn`, `ngaytn`, `loaitn`) VALUES
('123333', 4394, 223, 'kĩ sư', '2023-12-03', 'giỏi'),
('12333332', 3135, 223, 'kĩ sư', '2023-12-03', 'giỏi'),
('1234', 3135, 123, 'kĩ sư', '2023-12-03', 'giỏi'),
('333333333333', 4394, 223, '', '2023-12-10', 'giỏi');

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
-- Đang đổ dữ liệu cho bảng `truong`
--

INSERT INTO `truong` (`matruong`, `tentruong`, `diachi`, `sodt`) VALUES
(3135, 'Đh FPT', '473 Trần Đại Nghĩa, Ngũ Hành Sơn, Đà Nẵng', '32323232323'),
(4394, 'Đh Việt-Hàn', '470 Trần Đại Nghĩa, Ngũ Hành Sơn, Đà Nẵng', '000000000000');

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
