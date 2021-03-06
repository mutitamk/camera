-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 08:14 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chimera_ant`
--

-- --------------------------------------------------------

--
-- Table structure for table `camera`
--

CREATE TABLE `camera` (
  `camera_id` int(11) NOT NULL,
  `camera_name` varchar(150) NOT NULL,
  `price` char(11) NOT NULL,
  `images` varchar(300) NOT NULL,
  `detail` varchar(5000) NOT NULL,
  `color` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `camera`
--

INSERT INTO `camera` (`camera_id`, `camera_name`, `price`, `images`, `detail`, `color`) VALUES
(1, 'Canon', '5000', 'img_5f9d1c1f6f87b.jpg', 'รุ่นใหม่อย่างเป็นทางการกับ Canon EOS 6D Mark II ซึ่งเป็นกล้อง DSLR ที่ใช้เซ็นเซอร์ Full Frame ความละเอียด 26.2 ล้านพิกเซล โดยได้นำเอาเทคโนโลยี Dual Pixel AF มาใส่ไว้เพื่อการโฟกัสภาพที่รวดเร็ว รวมถึงใช้ระบบประมวลผล DIGIC 7 เพื่อการประมวลผลที่รวดเร็วและให้คุณภาพไฟล์ที่ดี\r\n              \r\n              \r\n              \r\n              ', 'black'),
(3, 'BODY CANON 70D', '10200', 'img_5fa014be41a18.PNG', 'ใช้งานปกติทุกระบบ สเปคดี โฟกัสไว พับจอได้ มีไวไฟ อุปกรณ์ - กล่อง บอดี้ ที่ชาร์จ สายคล้อง แบต\r\n              \r\n              ', 'black'),
(4, 'BODY OMD EM5 MARK2', '7990', 'img_5fa01510273c9.PNG', 'สภาพโดยรวมยังดี กล้องสเปคสูง\r\nการใช้งานปกติทุกระบบ\r\nโฟกัสไว พับจอได้ มีไวไฟในตัว\r\nอุปกรณ์\r\n- บอดี้ เคส ที่ชาร์จ สายคล้อง แบต\r\n              \r\n              ', ''),
(5, 'FUJI X-A2', '5900', 'img_5fa01576bffe5.PNG', 'สภาพโดยรวมยังสวย ใช้งานปกติทุกระบบ สกินโทนสวย เซลฟี่ดี มีไวไฟในตัว อุปกรณ์ - กล่อง บอดี้ เลนส์ ที่ชาร์จ สายคล้อง แบต\r\n              \r\n              ', 'pink'),
(6, 'CANON 650D', '7300', 'img_5fa015b340921.PNG', ' สภาพยังดี ยางไม่บวม\r\nใช้งานปกติทุกระบบ ชัตเตอร์ 1x,xxx\r\nโฟกัสไว สกินโทนสวย พับจอได้\r\nอุปกรณ์\r\n- บอดี้ เลนส์ ที่ชาร์จ สายคล้อง แบต\r\n              \r\n              ', 'black'),
(7, 'SONY A5100', '6800', 'img_5fa015e3151b9.PNG', 'ใช้งานปกติทุกระบบ\r\nโฟกัสไว พับจอได้ มีไวไฟในตัว\r\nอุปกรณ์\r\n- บอดี้ เลนส์ ที่ชาร์จ สายคล้อง แบต\r\n              ', ''),
(8, 'INSTAX MINI KITTY', '1500', 'img_5fa0160f6e839.PNG', 'กล้องโพราลอยด์\r\nสภาพสินค้าตามรูป\r\nใช้งานปกติ\r\nอุปกรณ์ มีแต่ตัวกล้อง\r\n              \r\n              ', ''),
(9, 'FUJI X-A5', '8500', 'img_5fa0163d5a6c7.PNG', 'ใช้งานปกติทุกระบบ\r\nสกินโทนสวย พับจอได้ มีไวไฟในตัว\r\nอุปกรณ์\r\n- กล่อง บอดี้ เลนส์ ที่ชาร์จ สายคล้อง แบต', ''),
(10, 'CANON M100', '7200', 'img_5fa0168f0e07f.PNG', 'การใช้งานปกติทุกระบบ\r\nสกินโทนสวย พับจอได้ มีไวไฟในตัว\r\nอุปกรณ์\r\n- บอดี้ เลนส์ ที่ชาร์จ สายคล้อง แบต', ''),
(11, 'LUMIX GF10', '7990', 'img_5fa017057ea80.PNG', 'สภาพมีริ้วรอยตามขอบ\r\nไม่มีตำหนิหนัก ใช้งานเต็มระบบ\r\nโฟกัสไว พับจอได้ มีไวไฟในตัว\r\nอุปกรณ์\r\n- บอดี้ เลนส์ ที่ชาร์จ สายคล้อง แบต', ''),
(12, 'OLYMPUS EPL8', '6500', 'img_5fa017373f992.PNG', 'จอมีรอย การใช้งานปกติทุกระบบ\r\nโฟกัสไว ภาพคม พับจอได้ มีไวไฟ\r\nอุปกรณ์\r\n- กล่อง บอดี้ เลนส์ ที่ชาร์จ สายคล้อง แบต', ''),
(16, 'Leica Sofort lnstant Film Camera ', '5000', 'img_5fb8b12803604.PNG', 'ดี\r\n', 'Blue'),
(17, 'CanonDigital Camera Ixus 185', '3400', 'img_5fbdfb13d134d.PNG', 'ดี', 'Red');

-- --------------------------------------------------------

--
-- Table structure for table `order_detil`
--

CREATE TABLE `order_detil` (
  `id_order_detail` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `qtyall` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_detil`
--

INSERT INTO `order_detil` (`id_order_detail`, `c_id`, `o_id`, `u_id`, `qtyall`, `subtotal`) VALUES
(35, 3, 19, 8, 1, 10200),
(36, 3, 20, 2, 2, 20400),
(37, 4, 20, 2, 1, 7990),
(38, 1, 21, 8, 1, 5000),
(40, 4, 23, 8, 1, 7990),
(41, 4, 24, 8, 1, 7990),
(42, 1, 25, 9, 1, 5000),
(43, 11, 26, 9, 1, 7990),
(44, 18, 27, 8, 1, 3400),
(45, 1, 28, 8, 1, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `order_system`
--

CREATE TABLE `order_system` (
  `order_id` int(11) NOT NULL,
  `ferst_name` varchar(200) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `qty` int(11) NOT NULL,
  `address` text NOT NULL,
  `price_all` int(11) NOT NULL,
  `currents_date` datetime NOT NULL,
  `img_slipt` varchar(300) NOT NULL,
  `status_pay` varchar(25) NOT NULL,
  `p_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_system`
--

INSERT INTO `order_system` (`order_id`, `ferst_name`, `last_name`, `phone`, `qty`, `address`, `price_all`, `currents_date`, `img_slipt`, `status_pay`, `p_number`) VALUES
(19, 'hisoka', 'lusifer', '0798564345', 1, '23/1  pekin  lokuso liad  NGL  mebious  Thailand  34760', 10200, '2020-11-20 10:14:22', 'img_5fb788ee96c03.png', 'approve', 'TH00113056976B'),
(20, 'kornK', 'friceK', '0897653345', 3, '23/1  pekin  นครดาวตก villern  NGL  mebious  Thailand  34760', 28390, '2020-11-20 12:22:25', 'img_5fb7a6f1d8362.png', 'approve', 'TH00113056976B'),
(21, 'hisoka', 'lusifer', '0798564345', 1, '23/1  netolion  lokuso liad  NGL  mebious  Thailand  34760', 5000, '2020-11-20 17:03:27', 'null', 'approve', 'dce3456678'),
(22, 'mate', 'k', '0915284672', 1, '199/1  -  6 ทุ่งสุขลา  ศรีราชา  ชลบุรี  Thailand  20230', 5000, '2020-11-21 03:59:33', 'img_5fb882957e035.jpg', 'approve', 'TH00113056976B'),
(23, 'm', 'k', '0915284672', 1, '4  -  9 ทุ่งสุขลา  ศรีราชา  ชลบุรี  Thailand  900000', 7990, '2020-11-21 07:16:20', 'img_5fb8b0b473c6f.jpg', 'approve', '222222'),
(24, 'mate', 'n', '0915284672', 1, '4  -  6 ทุ่งสุขลา  ศรีราชา  ชลบุรี  Thailand  900000', 7990, '2020-11-21 07:38:23', 'img_5fb8b5df9a778.jpg', 'approve', 'td666666'),
(25, 'mu', 'ku', '0619941794', 1, '4  -  9 ทุ่งสุขลา  ศรีราชา  ชลบุรี  Thailand  20230', 5000, '2020-11-21 07:41:01', 'img_5fb8b67dc8ec5.jpg', 'approve', 'vv5555'),
(26, 'mate', 'k', '0926575411', 1, '4  -  3 ทุ่งสุขลา  ศรีราชา  ชลบุรี  Thailand  20230', 7990, '2020-11-21 07:48:37', 'img_5fb8b8450675f.jpg', 'approve', 'gh02157876'),
(27, 'mate', 'k', '0926575411', 1, '4  -  9 ทุ่งสุขลา  ศรีราชา  ชลบุรี  Thailand  900000', 3400, '2020-11-24 17:59:49', 'img_5fbd3c05d69a7.jpg', 'approve', 'TH00113056976B'),
(28, 'mate', 'k', '0926575411', 1, '4  -  9 ทุ่งสุขลา  ศรีราชา  ชลบุรี  Thailand  20230', 5000, '2020-11-25 07:33:54', 'img_5fbdfad21bcad.jpg', 'approve', 'TH00113056976B');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `user_id` int(11) NOT NULL,
  `name_last` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`user_id`, `name_last`, `username`, `passwd`, `status`) VALUES
(1, 'root admin', 'admin.com', '123admin', 'admin'),
(2, 'root user', 'user.com', '123user', 'user'),
(3, 'root staff', 'staff.com', '123staff', 'staff'),
(4, 'custmmer user', 'custommer.com', '123user', 'user'),
(5, 'cristeno ronaldo', 'ronaldo.com', '123ronaldo', 'user'),
(7, 'kon frick', 'kon.com', '123kon', 'user'),
(8, 'mate k', 'mmate', '011042', 'user'),
(9, 'mu ku', 'mu', '2542', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`camera_id`);

--
-- Indexes for table `order_detil`
--
ALTER TABLE `order_detil`
  ADD PRIMARY KEY (`id_order_detail`);

--
-- Indexes for table `order_system`
--
ALTER TABLE `order_system`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `camera`
--
ALTER TABLE `camera`
  MODIFY `camera_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_detil`
--
ALTER TABLE `order_detil`
  MODIFY `id_order_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `order_system`
--
ALTER TABLE `order_system`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
