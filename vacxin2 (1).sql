-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 04:42 PM
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
-- Database: `vacxin2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `MaKH` int(15) NOT NULL,
  `HoTenKH` varchar(50) NOT NULL,
  `SoDienThoai` int(15) NOT NULL,
  `DiachiKH` varchar(50) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`MaKH`, `HoTenKH`, `SoDienThoai`, `DiachiKH`, `NgaySinh`, `GioiTinh`) VALUES
(123, 'Hùng', 395753159, 'Thừa Thiên Huế', '2003-02-15', 'Nam'),
(1, 'Hùng', 395753159, 'Thừa Thiên Huế', '2003-02-15', 'Nam'),
(1, 'Hùng', 395753159, 'Thừa Thiên Huế', '2003-02-15', 'Nam'),
(1, 'Hùng', 395753159, 'Thua Thien Hue', '2003-02-15', 'Nam'),
(1, 'Hùng', 395753159, 'Thua Thien Hue', '2003-02-15', 'Nam'),
(1, 'Hùng', 395753159, 'Thừa Thiên Huế', '2003-01-01', 'Nam'),
(1, 'Hùng', 395753159, 'Thừa Thiên Huế', '2003-02-15', 'Nam');

-- --------------------------------------------------------

--
-- Table structure for table `userrole`
--

CREATE TABLE `userrole` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `Role` enum('admin','customer') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userrole`
--

INSERT INTO `userrole` (`UserID`, `Username`, `PASSWORD`, `Role`) VALUES
(1, 'admin', '123', 'admin'),
(2, 'customer', '123', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('hung', '123');

-- --------------------------------------------------------

--
-- Table structure for table `vacxin`
--

CREATE TABLE `vacxin` (
  `MaVacXin` varchar(50) NOT NULL,
  `TenVacXin` varchar(50) NOT NULL,
  `SoMui` int(15) NOT NULL,
  `MoTa` varchar(50) NOT NULL,
  `GiaVacXin` int(15) NOT NULL,
  `TenHangSX` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vacxin`
--

INSERT INTO `vacxin` (`MaVacXin`, `TenVacXin`, `SoMui`, `MoTa`, `GiaVacXin`, `TenHangSX`) VALUES
('001', 'Astra Zeneca', 100, 'Vắc xin phòng Covid-19', 200000, 'EngLand'),
('003', 'VAT', 1, 'Vắc xin bệnh uốn ván', 95000, 'Việt Nam'),
('002', 'BOOSTRIX', 50, 'Vắc xin bệnh bạch hầu', 730000, 'Bỉ'),
('002', 'BOOSTRIX', 50, 'Vắc xin bệnh bạch hầu', 730000, 'Bỉ'),
('004', 'MORCVAX', 1, 'Vắc xin bệnh tả', 145000, 'Mĩ'),
('005', 'HEBEBIOVAX', 1, 'Vắc xin bệnh viêm gan B', 195000, 'Cuba');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userrole`
--
ALTER TABLE `userrole`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
