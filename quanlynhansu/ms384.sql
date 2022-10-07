-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2017 at 04:18 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ms384`
--

-- --------------------------------------------------------

--
-- Table structure for table `qlns_administrator`
--

CREATE TABLE `qlns_administrator` (
  `ctn_id` int(11) NOT NULL,
  `ctn_username` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `ctn_password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ctn_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `ctn_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ctn_yahoo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `ctn_mobile` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `ctn_content` text COLLATE utf8_unicode_ci NOT NULL,
  `ctn_level` int(1) NOT NULL DEFAULT '1',
  `ctn_counterdb` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_administrator`
--

INSERT INTO `qlns_administrator` (`ctn_id`, `ctn_username`, `ctn_password`, `ctn_name`, `ctn_email`, `ctn_yahoo`, `ctn_mobile`, `ctn_content`, `ctn_level`, `ctn_counterdb`) VALUES
(1, 'adminqlns', '14e1b600b1fd579f47433b88e8d85291', 'CTN Viá»‡t Nam', 'ctn@ctnvietnam.com', 'tranquangvinh_lbt', '0905246855', 'Adminstrator Website Quáº£n LÃ½ NhÃ¢n Sá»±', 1, 263),
(3, 'qlnsbaclieu', '364b02c840c442ad7dfa060b0f988072', 'Truyá»n HÃ¬nh CÃ¡p Báº¡c LiÃªu', 'capbaclieu@ctnvietnam.com', 'capbaclieu', '0905246855', 'Truyá»n HÃ¬nh CÃ¡p Báº¡c LiÃªu', 2, 7),
(4, 'qlnskontum', '364b02c840c442ad7dfa060b0f988072', 'Truyá»n HÃ¬nh CÃ¡p Kon Tum<br>', 'kontumctv@gmail.com', 'kontumctv', '0905246855', 'Truyá»n HÃ¬nh CÃ¡p Kon Tum', 3, 1),
(5, 'qlnsquangngai', '364b02c840c442ad7dfa060b0f988072', 'Truyá»n HÃ¬nh CÃ¡p QuÃ£ng NgÃ£i<br>', 'ctnquangngai@ctnvietnam.com', 'ctnquangngai', '0905246855', 'Truyá»n HÃ¬nh CÃ¡p QuÃ£ng NgÃ£i', 4, 2),
(6, 'qlnsquangbinh', '364b02c840c442ad7dfa060b0f988072', 'Truyá»n HÃ¬nh CÃ¡p QuÃ£ng BÃ¬nh', 'ctnquangbinh@ctnvietnam.com', 'ctnquangbinh', '0905246855', 'Truyá»n HÃ¬nh CÃ¡p QuÃ£ng BÃ¬nh', 5, 2),
(7, 'qlnstaxihuonglua', '364b02c840c442ad7dfa060b0f988072', 'CTN Taxi HÆ°Æ¡ng LÃºa', 'taxi@ctnvietnam.com', 'taxihuonglua', '0905246855', 'CTN Taxi HÆ°Æ¡ng LÃºa', 6, 2),
(8, 'qlnsctnxuong', '364b02c840c442ad7dfa060b0f988072', 'CTN Sá»­a Chá»¯a CÆ¡ KhÃ­', 'ctnxuong@ctnvietnam.com', 'ctnxuong', '0905246855', 'CTN Sá»­a Chá»¯a CÆ¡ KhÃ­', 7, 1),
(9, 'qlnstaxixanh', '364b02c840c442ad7dfa060b0f988072', 'MTV Taxi Xanh', 'taxi@ctnvietnam.com', 'taxixanh', '0905246855', 'MTV Taxi Xanh', 8, 2),
(11, 'qlnstech', '364b02c840c442ad7dfa060b0f988072', 'CTN á»¨ng Dá»¥ng CÃ´ng Nghá»‡<br>', 'hienc42002@gmail.com', 'hienc42002', '0905246855', 'CTN á»¨ng Dá»¥ng CÃ´ng Nghá»‡', 9, 3),
(12, 'qlnsxaydung', '364b02c840c442ad7dfa060b0f988072', 'CTN Quáº£n LÃ½ XÃ¢y Dá»±ng<br>', 'nguyenvu@ctnvietnam.com', 'vpm.ctn', '0905246855', 'CTN Quáº£n LÃ½ XÃ¢y Dá»±ng<br>', 10, 2),
(13, 'qlnsit', '364b02c840c442ad7dfa060b0f988072', 'CTN CÃ´ng Nghá»‡ ThÃ´ng Tin<br>', 'designwebvn@gmail.com', 'designwebvn', '0905246855', 'CTN CÃ´ng Nghá»‡ ThÃ´ng Tin<br>', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `qlns_announcement`
--

CREATE TABLE `qlns_announcement` (
  `announ_id` int(11) NOT NULL,
  `ctn_id` bigint(20) NOT NULL,
  `announ_title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `announ_summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `announ_content` text COLLATE utf8_unicode_ci NOT NULL,
  `announ_display` int(1) NOT NULL DEFAULT '0',
  `announ_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_announcement`
--

INSERT INTO `qlns_announcement` (`announ_id`, `ctn_id`, `announ_title`, `announ_summary`, `announ_content`, `announ_display`, `announ_day`) VALUES
(1, 0, 'Ban giÃ¡m Ä‘á»‘c CTN phÃª duyá»‡t káº¿ hoáº¡ch tuyá»ƒn dá»¥ng nhÃ¢n sá»± ', '<span class="quangvinhdesign">Bá»™\r\nmÃ¡y lÃ£nh Ä‘áº¡o CTN tiáº¿n hÃ nh viá»‡c cáº£i cÃ¡ch, á»•n Ä‘á»‹nh vÃ  chuáº©n bá»‹ cho nhÃ¢n\r\nsá»± cho dá»± Ã¡n cuá»‘i nÄƒm 2008 vÃ  2009, trÆ°á»Ÿng phÃ²ng nhÃ¢n sá»± Nguyá»…n Thá»‹\r\nThÃ¹y Thanh Ä‘Ã£ trÃ¬nh bÃ¡o vá» ', 'def', 1, '16/12/2009');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_baohiemxahoi`
--

CREATE TABLE `qlns_baohiemxahoi` (
  `qlns_idbhxh` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_tungayxh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_denngayxh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_luongbhxh` int(11) NOT NULL,
  `qlns_canhanxh` int(11) NOT NULL,
  `qlns_congtyxh` int(11) NOT NULL,
  `qlns_sothebhxh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qlns_baohiemyte`
--

CREATE TABLE `qlns_baohiemyte` (
  `qlns_idbhyt` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_tungayyt` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_toingayyt` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_luongbh` int(11) NOT NULL,
  `qlns_canhan` int(11) NOT NULL,
  `qlns_congty` int(11) NOT NULL,
  `qlns_sothebhyt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_noikcb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ghichu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_baohiemyte`
--

INSERT INTO `qlns_baohiemyte` (`qlns_idbhyt`, `qlns_mahsnv`, `qlns_tungayyt`, `qlns_toingayyt`, `qlns_luongbh`, `qlns_canhan`, `qlns_congty`, `qlns_sothebhyt`, `qlns_noikcb`, `qlns_ghichu`) VALUES
(2, 20182031, '2009-01-01', '2009-12-31', 45, 15000, 30500, '234567891', 'Bá»‡nh viá»‡n HoÃ n Má»¹', 'Báº£o hiá»ƒm y táº¿<br>'),
(3, 10121716, '2009-11-09', '2009-11-10', 45, 15000, 30500, '45678934567', 'Bá»‡nh viá»‡n C17', 'Báº£o hiá»ƒm y táº¿<br>'),
(4, 1021710202004, '01/01/2010', '31/12/2010', 1500000, 22500, 45000, 'DN 7480243800017', 'Bá»‡nh viá»‡n HoÃ n Má»¹', '<br>'),
(5, 1031710303010, '01/01/2010', '31/12/2010', 1300000, 19500, 39000, 'DN 7480243800007', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(6, 1681710803003, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800008', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(7, 15101710703010, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800014', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(8, 1681210801001, '01/01/2010', '31/12/2010', 2500000, 37500, 75000, 'DN 7480243800032', 'Bá»‡nh viá»‡n Äa Khoa', '<br>'),
(9, 1571710703002, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800011', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(10, 15101710703007, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800013', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(11, 18917010503012, '10/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800025', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(12, 1571710703003, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800010', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(13, 1021710203002, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800019', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(15, 1851210502001, '01/01/2010', '31/12/2010', 2500000, 37500, 75000, 'DN 7480243800022', 'Bá»‡nh viá»‡n Äa Khoa', '<br>'),
(18, 1891710503002, '01/01/2010', '31/12/2010', 1500000, 22500, 45000, 'DN 7480243800023', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(17, 1891710503010, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800024', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(19, 1941210402001, '01/01/2010', '31/12/2010', 2500000, 37500, 75000, 'DN 7480243800033', 'Bá»‡nh viá»‡n Äa Khoa', '<br>'),
(20, 1031710303008, '01/01/2010', '31/12/2010', 1300000, 19500, 39000, 'DN 7480243800006', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(21, 1031710303012, '01/01/2010', '31/12/2010', 1500000, 22500, 45000, 'DN 7480243800003', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(22, 15101710703009, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800016', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(23, 1571710703004, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800012', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(24, 18917010503013, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800027', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(25, 1031710303006, '01/01/2010', '31/12/2010', 1300000, 19500, 39000, 'DN 7480243800005', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(26, 2061210602002, '01/01/2010', '31/12/2010', 2500000, 37500, 75000, 'DN 7480243800030', 'Bá»‡nh viá»‡n Äa Khoa', '<br>'),
(27, 2061710603001, '01/01/2010', '31/12/2010', 1500000, 22500, 45000, 'DN 7480243800029', 'Bá»‡nh viá»‡n HoÃ n Má»¹', '<br>'),
(28, 2061710603003, '01/01/2010', '31/12/2010', 1500000, 22500, 45000, 'DN 7480243800031', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(29, 1021710203001, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800020', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(30, 1021710203011, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800018', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(31, 1891710503014, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800028', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(32, 1031210301005, '01/01/2010', '31/12/2010', 2500000, 37500, 75000, 'DN 7480243800002', 'Bá»‡nh viá»‡n Äa Khoa', '<br>'),
(33, 15101710703008, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800015', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(34, 1031710303013, '01/01/2010', '31/12/2010', 1500000, 22500, 45000, 'DN 7480243800004', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(35, 18917010503011, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800026', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(36, 1851710203012, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800021', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(37, 1891710503014, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800028', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(38, 1571710703006, '01/01/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800009', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(39, 2061710603005, '01/02/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800120', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(40, 1851710503009, '01/02/2010', '31/12/2010', 1500000, 22500, 45000, 'DN 7480243800124', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(41, 1941710403002, '01/02/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800122', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(42, 1031710303014, '01/02/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800115', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(43, 1851710503016, '01/02/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800126', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(44, 1681710803010, '01/02/2010', '31/12/2010', 1000000, 45000, 0, 'DN 7480243800131', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(45, 1851710503005, '01/02/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800125', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(46, 1031710300315, '01/02/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800114', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(47, 1021510202016, '01/02/2010', '31/12/2010', 2500000, 37500, 75000, 'DN 7480243800116', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(48, 1681710803005, '01/02/2010', '31/12/2010', 1000000, 45000, 0, 'DN 7480243800129', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(49, 1681710803004, '01/02/2010', '31/12/2010', 1000000, 45000, 0, 'DN 7480243800128', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(50, 1021710203013, '01/02/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800119', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(51, 2061710603006, '01/02/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800121', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(52, 1681710803007, '01/02/2010', '31/12/2010', 1000000, 45000, 0, 'DN 7480243800130', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(53, 1851710503006, '01/02/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800127', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(54, 1941710403003, '01/02/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800123', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(55, 0, '', '', 0, 0, 0, '', '', ''),
(56, 1021710203014, '01/02/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800118', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(57, 1021710203022, '01/02/2010', '31/12/2010', 1000000, 15000, 30000, 'DN 7480243800117', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br>'),
(59, 15111710703051, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800071', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(60, 151117010703045, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800074', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(62, 15111710703044, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800065', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(63, 15111710703058, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800077', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(66, 15111710703041, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800073', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(67, 15111710703056, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800075', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(68, 15111710703049, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800069', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(69, 15111710703043, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800064', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(70, 15111710703042, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800063', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(71, 151117010703047, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800067', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(72, 15111710703046, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800066', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(73, 151117010703050, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800070', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(74, 15111710703048, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800068', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(75, 15111710703033, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800056', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(76, 151117010703037, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800060', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(77, 15111710703040, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800062', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(78, 15111710703039, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800061', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(79, 15111710703036, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800058', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(80, 15111710703026, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800049', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(81, 15111710703030, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800053', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(82, 15111710703027, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800050', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(83, 15111710703028, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800051', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(84, 15111710703015, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800037', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(85, 15111710703016, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800038', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(86, 15111710703014, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800063', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(87, 15111710703001, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800035', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(88, 15111710703024, '01/01/2010', '31/02/2010', 950000, 43000, 0, '7480243800047', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(89, 15111710703019, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800042', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(90, 15111710703060, '01/01/2010', '31/01/2010', 950000, 43000, 0, '7480243800079', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(91, 15111710703062, '01/01/2010', '31/12/2010', 950000, 0, 0, '7480243800082', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(92, 15111710703064, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800084', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(93, 15111710703061, '01/01/2010', '31/01/2010', 950000, 43000, 0, '7480243800081', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(94, 15111710703059, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800078', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(95, 151117010703065, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800085', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(96, 15111710703069, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800089', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(97, 15111710703094, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800094', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(98, 15111710703070, '01/01/2010', '31/12/2010', 95000, 43000, 0, '7480243800090', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(99, 15111710703097, '01/01/2010', '31/01/2010', 950000, 43000, 0, '7480243800092', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(100, 15111710703063, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800083', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(101, 15111710703095, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800093', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(102, 15111710703054, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800080', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(103, 15111710703067, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800087', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(104, 15111710703098, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800091', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(105, 15111710703078, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800108', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(106, 15111710703068, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800088', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(107, 15111710703080, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800106', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(108, 15111710703083, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800103', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(109, 15111710703075, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800110', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(110, 15111710703081, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800105', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(111, 15111710703074, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800111', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(112, 15111710703086, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800101', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(113, 15111710703082, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800104', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(114, 15111710703072, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800113', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refH'),
(115, 15111710703057, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800076', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(116, 15111710703038, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800059', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(117, 15111710703032, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800055', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(118, 15111710703025, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800048', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(119, 15111710703035, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800057', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(120, 15111710703018, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800041', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(121, 15111710703022, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800045', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(122, 15111710703020, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800043', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(123, 15111710703017, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800040', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(124, 15111710703066, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800086', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(125, 15111710703084, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800102', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(126, 15111710703073, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800112', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(128, 15111710703079, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800107', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(129, 15111710703088, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800100', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(130, 15111710703085, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800099', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(131, 15111710703023, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800046', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(132, 15111710703029, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800052', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(133, 15111710703093, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800095', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(134, 15111710703021, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800044', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(135, 15111710703005, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800039', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(136, 15111710703031, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800054', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(137, 15111710703090, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800098', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(138, 15111710703091, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800097', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(139, 15111710703044, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800096', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(140, 15111710703076, '01/01/2010', '31/12/2010', 950000, 43000, 0, '7480243800109', 'Bá»‡nh viá»‡n QuÃ¢n Y 17', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_bophan`
--

CREATE TABLE `qlns_bophan` (
  `qlns_idbp` int(11) NOT NULL,
  `qlns_mabp` int(11) NOT NULL,
  `qlns_mact` int(11) NOT NULL,
  `qlns_tenbophan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ctn_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_bophan`
--

INSERT INTO `qlns_bophan` (`qlns_idbp`, `qlns_mabp`, `qlns_mact`, `qlns_tenbophan`, `ctn_id`) VALUES
(15, 2, 0, 'HÃ nh chÃ­nh - NhÃ¢n sá»±<br>', 0),
(16, 3, 0, 'TÃ i chÃ­nh - Káº¿ toÃ¡n<br>', 0),
(17, 4, 0, 'á»¨ng dá»¥ng cÃ´ng nghá»‡<br>', 0),
(18, 5, 0, 'Ká»¹ thuáº­t-QLXD<br>', 0),
(19, 6, 0, 'CÃ´ng nghá»‡ thÃ´ng tin<br>', 0),
(20, 8, 0, 'XÆ°á»Ÿng cÆ¡ khÃ­ Ã´ tÃ´<br>', 0),
(21, 9, 0, 'Äiá»‡n nÆ°á»›c - QLXD<br>', 0),
(22, 7, 0, 'Äiá»u hÃ nh - PhÃ¡p cháº¿<br>', 0),
(23, 10, 0, 'Tá»•ng Ä‘Ã i<br>', 0),
(24, 11, 0, 'Taxi', 0),
(25, 12, 0, 'Dá»± Ã¡n-QLXD<br>', 0),
(26, 13, 0, 'Tá»• cÆ¡ giá»›i-QLXD<br>', 0),
(27, 14, 0, 'Dá»± Ãn ÄÃ  Náºµng<br>', 0),
(28, 15, 0, 'Dá»± Ãn Kon Tum<br>', 0),
(29, 17, 0, 'Dá»± Ãn Ngá»c HoÃ ng MÄƒng BÃºt<br>', 0),
(30, 18, 0, 'Dá»± Ãn HL Quáº£ng Trá»‹', 0),
(31, 19, 0, 'Ban Quáº£n LÃ½ XÃ¢y Dá»±ng<br>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `qlns_capbac`
--

CREATE TABLE `qlns_capbac` (
  `qlns_idcb` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_xephang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngayhieuluc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngayhethieuluc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_soquyetdinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ghichu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_capbac`
--

INSERT INTO `qlns_capbac` (`qlns_idcb`, `qlns_mahsnv`, `qlns_xephang`, `qlns_ngayhieuluc`, `qlns_ngayhethieuluc`, `qlns_soquyetdinh`, `qlns_ghichu`) VALUES
(4, 1031710303008, '1', '2009-11-17', '2009-11-24', 'QÄ 2009', 'NhÃ¢n viÃªn xuáº¥t sáº¯c<br>');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_catelogy`
--

CREATE TABLE `qlns_catelogy` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cat_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_catelogy`
--

INSERT INTO `qlns_catelogy` (`cat_id`, `cat_name`, `cat_day`) VALUES
(1, 'Tin ná»™i bá»™', ''),
(2, 'Tin tuyá»ƒn dá»¥ng', '');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_catelogyfor`
--

CREATE TABLE `qlns_catelogyfor` (
  `catfor_id` int(11) NOT NULL,
  `catfor_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `catfor_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_catelogyfor`
--

INSERT INTO `qlns_catelogyfor` (`catfor_id`, `catfor_name`, `catfor_day`) VALUES
(1, 'Ná»™i quy CÃ´ng ty', ''),
(2, 'Máº«u Quyáº¿t Ä‘á»‹nh ', '');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_chapter`
--

CREATE TABLE `qlns_chapter` (
  `chapter_id` int(11) NOT NULL,
  `chapter_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `chapter_order` int(11) NOT NULL,
  `chapter_status` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_chapter`
--

INSERT INTO `qlns_chapter` (`chapter_id`, `chapter_name`, `chapter_order`, `chapter_status`) VALUES
(1, 'Quáº£n lÃ½ nhÃ¢n sá»±', 1, 1),
(2, 'CÃ´ng nghá»‡ ThÃ´ng tin', 2, 1),
(3, 'Quáº£n lÃ½ xÃ¢y dá»±ng', 3, 1),
(4, 'á»¨ng dá»¥ng cÃ´ng nghá»‡', 4, 1),
(5, 'TÃ i chÃ­nh - káº¿ toÃ¡n', 5, 1),
(6, 'Kinh doanh Taxi', 6, 1),
(7, 'Truyá»n HÃ¬nh CÃ¡p CTN', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qlns_chucvu`
--

CREATE TABLE `qlns_chucvu` (
  `qlns_idcv` int(11) NOT NULL,
  `qlns_mact` int(11) NOT NULL,
  `qlns_mabp` int(11) NOT NULL,
  `qlns_macv` int(11) NOT NULL,
  `qlns_tenchucvu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ctn_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_chucvu`
--

INSERT INTO `qlns_chucvu` (`qlns_idcv`, `qlns_mact`, `qlns_mabp`, `qlns_macv`, `qlns_tenchucvu`, `ctn_id`) VALUES
(1, 0, 0, 10, 'Chá»§ Tá»‹ch Há»™i Äá»“ng Quáº£n Trá»‹<br>', 0),
(2, 0, 0, 11, 'Tá»•ng GiÃ¡m Ä‘á»‘c<br>', 0),
(3, 0, 0, 12, 'GiÃ¡m Äá»‘c<br>', 0),
(4, 0, 0, 13, 'PhÃ³ giÃ¡m Ä‘á»‘c<br>', 0),
(5, 0, 0, 14, 'Káº¿ ToÃ¡n TrÆ°á»Ÿng<br>', 0),
(6, 0, 0, 15, 'TrÆ°á»Ÿng phÃ²ng<br>', 0),
(7, 0, 0, 16, 'Quáº£n Ä‘á»‘c<br>', 0),
(8, 0, 0, 17, 'NhÃ¢n viÃªn<br>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `qlns_congty`
--

CREATE TABLE `qlns_congty` (
  `qlns_idct` int(11) NOT NULL,
  `qlns_mact` int(11) NOT NULL,
  `qlns_tencongty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ctn_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_congty`
--

INSERT INTO `qlns_congty` (`qlns_idct`, `qlns_mact`, `qlns_tencongty`, `ctn_id`) VALUES
(1, 10, 'CTN Viá»‡t Nam<br>', 0),
(3, 11, 'Truyá»n HÃ¬nh CÃ¡p QuÃ£ng NgÃ£i<br>', 0),
(4, 12, 'Truyá»n HÃ¬nh CÃ¡p Báº¡c LiÃªu<br>', 0),
(5, 13, 'Truyá»n HÃ¬nh CÃ¡p QuÃ£ng BÃ¬nh<br>', 0),
(6, 14, 'Truyá»n HÃ¬nh CÃ¡p Kon Tum<br>', 0),
(7, 15, 'CTN Taxi HÆ°Æ¡ng LÃºa', 0),
(11, 18, 'CTN Quáº£n LÃ½ XÃ¢y Dá»±ng', 0),
(8, 16, 'CTN Sá»­a Chá»¯a CÆ¡ KhÃ­', 0),
(12, 19, 'CTN á»¨ng Dá»¥ng&nbsp; CÃ´ng Nghá»‡', 0),
(9, 17, 'MTV Taxi Xanh', 0),
(13, 20, 'CTN CÃ´ng Nghá»‡ ThÃ´ng Tin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `qlns_contact`
--

CREATE TABLE `qlns_contact` (
  `contact_id` int(11) NOT NULL,
  `ctn_level` int(11) NOT NULL,
  `contact_post` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_heading` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_content` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_ngay` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_contact`
--

INSERT INTO `qlns_contact` (`contact_id`, `ctn_level`, `contact_post`, `contact_heading`, `contact_content`, `contact_ngay`) VALUES
(1, 7, 'CTN Viá»‡t Nam', 'KhÃ¡nh vá» há»p', 'KhÃ¡nh vá» há»p gáº¥p<input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', '09/10/2009'),
(2, 1, 'Truyá»n HÃ¬nh CÃ¡p Báº¡c LiÃªu', 'ChÃ o Quáº£n trá»‹', 'Website Quáº£n LÃ½ NhÃ¢n Sá»± ráº¥t hay<input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', '09/10/2009'),
(3, 2, 'CTN Viá»‡t Nam', 'ChÃ o CÃ¡p Báº¡c LiÃªu', 'Thanks vÃ¬ Ä‘Ã£ gá»Ÿi<input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', '09/10/2009');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_danhgianv`
--

CREATE TABLE `qlns_danhgianv` (
  `qlns_madg` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_dotdanhgia` int(1) NOT NULL DEFAULT '0',
  `qlns_xeploai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_nhanxet` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngaydanhgia` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_danhgianv`
--

INSERT INTO `qlns_danhgianv` (`qlns_madg`, `qlns_mahsnv`, `qlns_dotdanhgia`, `qlns_xeploai`, `qlns_nhanxet`, `qlns_ngaydanhgia`) VALUES
(10, 1031710303006, 0, '1', 'xuÃ¢n hiá»n', '2010-01-18'),
(11, 1031710303010, 0, '1', 'tot', '2010-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_dinuocngoai`
--

CREATE TABLE `qlns_dinuocngoai` (
  `qlns_iddnn` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_nuocden` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngaybd` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngaykt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_lydo` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_kinhphi` bigint(15) NOT NULL,
  `qlns_tiente` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_dinuocngoai`
--

INSERT INTO `qlns_dinuocngoai` (`qlns_iddnn`, `qlns_mahsnv`, `qlns_nuocden`, `qlns_ngaybd`, `qlns_ngaykt`, `qlns_lydo`, `qlns_kinhphi`, `qlns_tiente`) VALUES
(1, 14182011, '2009-11-02', '2009-11-02', '2009-11-28', 'Mua thiáº¿t bá»‹.<br>', 50000, 'USD.');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_formwritten`
--

CREATE TABLE `qlns_formwritten` (
  `for_id` int(11) NOT NULL,
  `catfor_id` int(11) NOT NULL,
  `for_heading` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `for_summarize` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `for_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `for_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ctn_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_formwritten`
--

INSERT INTO `qlns_formwritten` (`for_id`, `catfor_id`, `for_heading`, `for_summarize`, `for_link`, `for_day`, `ctn_id`) VALUES
(2, 2, 'Biá»ƒu máº«u hÃ nh chÃ­nh ', 'Báº£ng cháº¥m cÃ´ng lÃ m viá»‡c ngoÃ i giá» hÃ nh chÃ­nh , giáº¥y Ä‘i Ä‘Æ°á»ng , giáº¥y giá»›i thiá»‡u, phiáº¿u yÃªu cáº§u cáº¥p phÃ¡t vÄƒn phÃ²ng pháº©m, biÃªn báº£n há»p, máº«u cÃ´ng vÄƒn, ...<br>     ', 'bieumauhanhchinh.rar', '22/12/2009', 1),
(3, 2, 'Biá»ƒu máº«u nhÃ¢n sá»±', 'BiÃªn báº£n giao viá»‡c, bá»• nhiá»‡m , Ä‘Ã o táº¡o, Ä‘iá»u chá»‰nh lÆ°Æ¡ng, ká»· luáº­t, khen thÆ°á»Ÿng, há»£p Ä‘á»“ng, Ä‘iá»u Ä‘á»™ng cÃ¡n bá»™, <br>     ', 'cacthutucnhansu.rar', '06/01/2010', 1);

-- --------------------------------------------------------

--
-- Table structure for table `qlns_ghichunv`
--

CREATE TABLE `qlns_ghichunv` (
  `qlns_idghichu` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_tieude` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_nguoitao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngaytao` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qlns_giadinh`
--

CREATE TABLE `qlns_giadinh` (
  `qlns_idgdnv` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_quanhe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ho` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_gioitinh` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngaysinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tuoi` int(10) NOT NULL,
  `qlns_diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_nghenghiep` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ghichu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_giadinh`
--

INSERT INTO `qlns_giadinh` (`qlns_idgdnv`, `qlns_mahsnv`, `qlns_quanhe`, `qlns_ho`, `qlns_ten`, `qlns_gioitinh`, `qlns_tinhtrang`, `qlns_ngaysinh`, `qlns_tuoi`, `qlns_diachi`, `qlns_nghenghiep`, `qlns_ghichu`) VALUES
(16, 1031710303006, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '2004', 5, '', 'CÃ²n nhá»', ''),
(15, 1031710303006, 'Chá»“ng', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1970', 39, '', 'NhÃ¢n viÃªn lÃ¡i xe', ''),
(17, 1031710303006, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2006', 3, '', 'CÃ²n nhá»', ''),
(18, 1031710303006, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1944', 65, '', 'CBNH', ''),
(19, 1031710303006, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1954', 55, '', 'Ná»™i trá»£', ''),
(20, 1031710303006, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1974', 35, '', '', ''),
(21, 1031710303006, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1976', 33, '', '', ''),
(22, 1031710303006, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1978', 31, '', '', ''),
(23, 1031710303006, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1982', 27, '', '', ''),
(24, 1031710303008, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1950', 59, '', 'GiÃ¡o viÃªn', ''),
(25, 1031710303008, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1955', 54, '', 'GiÃ¡o viÃªn', ''),
(26, 1031710303008, 'Em ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1989', 20, '', 'Sinh viÃªn', '<br>'),
(27, 1031710303010, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1938', 71, '', 'á»ž nhÃ ', ''),
(28, 1031710303010, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1947', 62, '', 'Ná»™i trá»£', ''),
(29, 1031710303010, 'Chá»“ng', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1983', 26, '', 'NV káº¿ toÃ¡n', ''),
(30, 1031710303010, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2007', 2, '', 'CÃ²n nhá»', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(31, 1031710303010, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1971', 38, '', 'BuÃ´n bÃ¡n', ''),
(32, 1031710303010, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1973', 36, '', 'BuÃ´n bÃ¡n', ''),
(33, 1031710303010, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1975', 34, '', 'Thá»£ may', ''),
(34, 1031710303010, 'Chá»‹', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1978', 31, '', 'BuÃ´n bÃ¡n', ''),
(35, 1031710303010, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1980', 29, '', 'NhÃ¢n viÃªn phÃ¡p cháº¿', ''),
(36, 1031710303011, 'Chá»“ng', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1967', 42, '', 'NhÃ¢n viÃªn cá»¥c thuáº¿', ''),
(37, 1031710303011, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1995', 14, '', 'Há»c sinh', ''),
(38, 1031710303011, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2004', 5, '', 'CÃ²n nhá»', ''),
(39, 1031710303011, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(40, 1031710303011, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1949', 60, '', 'CBHT', ''),
(41, 1031710303012, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1944', 65, '', 'ThÆ° kÃ½', ''),
(42, 1031710303012, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1944', 65, '', 'NÃ´ng', ''),
(43, 1031710303012, 'Chá»“ng', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1980', 29, '', 'LÃ¡i xe', ''),
(44, 1031710303012, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2008', 1, '', 'CÃ²n nhá»', ''),
(45, 1031710303013, 'Chá»“ng', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1978', 31, '', 'Bá»™ Ä‘á»™i', ''),
(46, 1031710303013, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1943', 66, '', 'Thá»£ may', ''),
(47, 1031710303013, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1950', 59, '', 'BuÃ´n bÃ¡n', ''),
(48, 1031710303013, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2009', 0, '', 'CÃ²n nhá»', ''),
(49, 1031710303014, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1957', 52, '', 'NÃ´ng', ''),
(50, 1031710303014, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1958', 51, '', 'NÃ´ng', ''),
(51, 1031710303014, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1980', 29, '', 'NÃ´ng', ''),
(52, 1031710303013, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1970', 39, '', 'Thá»£ may', ''),
(53, 1031710303013, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1971', 38, '', 'BuÃ´n bÃ¡n', ''),
(54, 1031710303013, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1972', 37, '', 'Thá»£ may', ''),
(55, 1031710303013, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1975', 34, '', 'Thá»£ may', ''),
(56, 1031710300315, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(57, 1031710300315, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(58, 1021710203001, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1954', 55, '', 'GiÃ¡o viÃªn', ''),
(59, 1021710203001, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(60, 1021710203001, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1990', 19, '', 'Sinh viÃªn', ''),
(61, 1021710203001, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1995', 14, '', 'Há»c sinh', ''),
(62, 1021710202004, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1958', 51, '', 'BuÃ´n bÃ¡n', ''),
(63, 1021710202004, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1965', 44, '', 'BuÃ´n bÃ¡n', ''),
(64, 1021710202004, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1989', 20, '', 'Sinh viÃªn', ''),
(65, 1021710202004, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1992', 17, '', 'Há»c sinh', ''),
(66, 1021710203011, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1957', 52, '', 'NÃ´ng', ''),
(67, 1021710203011, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(68, 1021710203011, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1987', 22, '', 'LÃ¡i xe', ''),
(69, 1021710203011, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1983', 26, '', 'Thá»£ may', ''),
(70, 1021710203002, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1943', 66, '', 'BuÃ´n bÃ¡n', ''),
(71, 1021710203002, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1974', 36, '', 'BuÃ´n bÃ¡n', ''),
(72, 1021710203002, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1974', 35, '', 'CÃ´ng nhÃ¢n', ''),
(73, 1021710203002, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1975', 34, '', 'Kinh doanh', ''),
(74, 1021710203002, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1976', 33, '', 'CÃ´ng nhÃ¢n', ''),
(75, 1021710203008, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '1917', 0, '', '', ''),
(76, 1021710203008, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1920', 79, '', 'NÃ´ng', ''),
(77, 1021710203008, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1968', 42, '', 'NÃ´ng', ''),
(78, 1021710203008, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1948', 61, '', 'NÃ´ng', ''),
(79, 1021710203008, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1952', 57, '', 'NÃ´ng', ''),
(80, 1021710203008, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1955', 54, '', 'NÃ´ng', ''),
(81, 1021710203008, 'Chá»“ng', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1958', 51, '', 'Báº£o vá»‡', ''),
(82, 1021710203008, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1989', 20, '', 'Thá»£ Ä‘iá»‡n', ''),
(83, 1021710203008, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1994', 15, '', 'Há»c sinh', ''),
(84, 1021710203012, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1978', 31, '', 'NhÃ¢n viÃªn káº¿ toÃ¡n', ''),
(85, 1021710203012, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2004', 5, '', 'CÃ²n nhá»', ''),
(86, 1021710203012, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1948', 61, '', 'Nghi hÆ°u', ''),
(87, 1021710203012, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1949', 60, '', 'Nghá»‰ hÆ°u', ''),
(88, 1021710203012, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1970', 39, '', 'BuÃ´n bÃ¡n', ''),
(89, 1021710203012, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1974', 35, '', 'XÃ¢y dá»±ng', ''),
(90, 1021710203012, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1976', 33, '', 'GiÃ¡o viÃªn', ''),
(91, 1021710203012, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1980', 29, '', 'CBNV', ''),
(92, 1021710203013, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1941', 68, '', 'LÃ¡i xe', ''),
(93, 1021710203013, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1941', 68, '', 'Ná»™i trá»£', ''),
(94, 1021710203013, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1977', 32, '', 'LÃ¡i xe', ''),
(95, 1021710203013, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1968', 41, '', 'Thá»£ may', ''),
(96, 1021710203013, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1977', 32, '', 'BuÃ´n bÃ¡n', ''),
(97, 1021710203013, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2000', 9, '', 'Há»c sinh', ''),
(98, 1021710203013, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2003', 6, '', 'Há»c sinh', ''),
(99, 1021710203014, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1971', 38, '', 'Thá»£ May', ''),
(100, 1021710203014, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1997', 21, '', 'Há»c sinh', ''),
(101, 1021710203014, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2000', 9, '', 'Há»c sinh', ''),
(102, 1021710203014, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '1937', 72, '', '', ''),
(103, 1021710203014, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1937', 72, '', 'Ná»™i trá»£', ''),
(104, 1021710203014, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1977', 32, '', 'LÃ¡i xe', ''),
(105, 1021710203014, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1971', 38, '', 'NhÃ¢n viÃªn Ká»¹ thuáº­t truyá»n hÃ¬nh', ''),
(106, 1021710203015, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(107, 1021710203015, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(108, 1021710203015, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1944', 65, '', 'Nghi hÆ°u', ''),
(109, 1021710203015, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1957', 52, '', 'nhÃ¢n viÃªn ga ÄÃ  Náºµng', ''),
(110, 1021710203015, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1963', 46, '', 'NhÃ¢n viÃªn viá»‡n quÃ¢n y 87-Nha Trang', ''),
(111, 1021710203015, 'Chá»“ng', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(112, 1021710203015, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1990', 19, '', 'NhÃ¢n viÃªn lá»… tÃ¢n', ''),
(113, 1021710203015, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1997', 13, '', 'Há»c sinh', ''),
(114, 1941210402001, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1937', 72, '', 'GiÃ¡o viÃªn', ''),
(115, 1941210402001, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1950', 59, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(116, 1941210402001, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1968', 41, '', 'Ná»™i trá»£', ''),
(117, 1941210402001, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1970', 39, '', 'BuÃ´n bÃ¡n', ''),
(118, 1941210402001, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1972', 37, '', '', ''),
(119, 1941710403002, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1955', 54, '', 'NÃ´ng', ''),
(120, 1941710403002, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1960', 49, '', 'NÃ´ng', ''),
(310, 18917010503010, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1949', 60, '', 'NÃ´ng', ''),
(122, 1941710403002, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1981', 28, '', 'CÃ´ng nhÃ¢n may', ''),
(123, 1941710403002, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1982', 27, '', 'CÃ´ng nhÃ¢n ká»¹ thuáº­t', ''),
(124, 1941710403003, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '20/7/1951', 58, '', 'Cb nghá»‰ hÆ°u', ''),
(125, 1941710403003, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1954', 55, '', 'GiÃ¡o viÃªn', ''),
(126, 1941710403003, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1986', 23, '', 'Sinh viÃªn', ''),
(127, 1941710403003, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'GiÃ¡o viÃªn', ''),
(128, 1891710503002, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1980', 29, '', 'Tá»•ng Ä‘Ã i taxi', ''),
(129, 1891710503002, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2006', 3, '', 'CÃ²n nhá»', ''),
(130, 1891710503002, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(131, 1891710503002, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1936', 73, '', 'NÃ´ng', ''),
(132, 1891710503002, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1968', 41, '', 'NÃ´ng', ''),
(133, 1891710503002, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1978', 31, '', 'GiÃ¡o viÃªn', ''),
(134, 1891710503002, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1973', 36, '', 'Báº£o vá»‡', ''),
(135, 1851710503005, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1952', 57, '', 'NÃ´ng', ''),
(136, 1851710503005, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(137, 1851710503005, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1977', 32, '', 'NÃ´ng', ''),
(138, 1851710503005, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1979', 30, '', 'Thá»£ cáº¯t tÃ³c', ''),
(139, 1851710503005, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1984', 25, '', 'LÃ¡i xe cÆ¡ giá»›i', ''),
(140, 1851710503005, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1986', 23, '', 'LÃ¡i xe táº£i', ''),
(141, 1851710503008, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1929', 70, '', 'CB hÆ°u trÃ­', ''),
(142, 1851710503008, 'Máº¹', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1952', 57, '', 'CB hÆ°u trÃ­', ''),
(143, 1851710503008, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1988', 21, '', 'Sinh viÃªn', ''),
(144, 1851710503006, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(145, 1851710503006, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1942', 67, '', 'NÃ´ng', ''),
(146, 1851710503006, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1968', 41, '', 'BuÃ´n bÃ¡n', ''),
(147, 1851710503006, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1971', 38, '', 'LÃ¡i xe', ''),
(148, 1851710503006, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1974', 35, '', 'NÃ´ng', ''),
(149, 1851710503006, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1981', 29, '', 'LÃ¡i xe', ''),
(331, 1031710303006, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br>'),
(332, 1571210701001, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1932', 77, 'YÃªn HÆ°ng, Quáº£ng Ninh', 'Ká»¹ sÆ° lÃ¢m nghiá»‡p nghá»‰ hÆ°u', ''),
(333, 1571210701001, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1934', 75, 'YÃªn HÆ°ng, Quáº£ng Ninh', 'CÃ´ng nhÃ¢n nghá»‰ hÆ°u', ''),
(154, 2061710603001, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1953', 56, '', 'CB hÆ°u trÃ­', ''),
(155, 2061710603001, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1960', 49, '', 'CBNV bá»‡nh viá»‡n', ''),
(156, 2061710603001, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1981', 28, '', 'CBNV FPT software', ''),
(157, 2061210602002, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1959', 51, '', 'CBNV cÃ´ng ty DVVT ThiÃªn HÆ°Æ¡ng', ''),
(158, 2061210602002, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(159, 2061210602002, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1980', 29, '', 'Káº¿ toÃ¡n', ''),
(160, 2061710603003, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1954', 55, '', 'CB hÆ°u trÃ­', ''),
(161, 2061710603003, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1952', 57, '', 'GiÃ¡o viÃªn', ''),
(162, 2061710603003, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1982', 27, '', '', ''),
(163, 2061710603005, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1950', 59, '', 'GiÃ¡o viÃªn', ''),
(164, 2061710603005, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1950', 59, '', 'NÃ´ng', ''),
(165, 2061710603005, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1976', 33, '', 'ThÆ°Æ¡ng nhÃ¢n', ''),
(166, 2061710603005, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1981', 28, '', 'CÃ´ng nhÃ¢n', ''),
(167, 2061710603005, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1983', 26, '', 'CBNV', ''),
(168, 2061710603005, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1975', 34, '', '', ''),
(169, 2061710603006, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1963', 46, '', 'CBNV quá»‘c phÃ²ng xÆ°á»Ÿng 387 cá»¥c ká»¹ thuáº­t', ''),
(170, 2061710603006, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1976', 33, '', 'CÃ´ng nhÃ¢n may', ''),
(171, 2061710603006, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1992', 17, '', 'Há»c sinh', ''),
(172, 2061710603006, 'Chá»“ng', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1982', 27, '', 'CBNV cÃ´ng ty dÆ°á»£c', ''),
(173, 1571710703003, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1956', 53, '', 'NÃ´ng', ''),
(174, 1571710703003, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1956', 53, '', 'NÃ´ng', ''),
(175, 1571710703003, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1984', 25, '', 'CBNV', ''),
(176, 1571710703003, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1991', 18, '', 'Há»c sinh', ''),
(177, 1571710703004, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1939', 70, '', 'LÃ¡i xe', ''),
(178, 1571710703003, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1947', 62, '', 'BuÃ´n bÃ¡n', ''),
(179, 1571710703004, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1968', 41, '', 'Cb phÆ°á»ng', ''),
(180, 1571710703004, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1969', 40, '', 'Ná»™i trá»£', ''),
(181, 1571710703004, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1970', 39, '', 'LÃ¡i xe', ''),
(182, 1571710703004, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1980', 29, '', 'NhÃ¢n viÃªn bÃ¡n Ä‘iá»‡n thoáº¡i', ''),
(183, 1571710703004, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1975', 34, '', '', ''),
(184, 1571710703006, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1929', 80, '', 'Cb nghá»‰ hÆ°u', ''),
(185, 1571710703006, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1944', 65, '', 'Cb nghá»‰ hÆ°u', ''),
(186, 1571710703006, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1968', 41, '', 'GiÃ¡o viÃªn', ''),
(187, 1571710703006, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1970', 39, '', 'NhÃ¢n viÃªn phÃ¡t thanh', ''),
(188, 1571710703006, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1973', 36, '', 'NhÃ¢n viÃªn phÃ¡t thanh', ''),
(189, 1571710703006, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1984', 25, '', 'NhÃ¢n viÃªn lá»… tÃ¢n khÃ¡ch sáº¡n', ''),
(190, 1571710703006, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2009', 0, '', 'CÃ²n nhá»', ''),
(191, 1031210301005, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1952', 57, '', 'CB hÆ°u trÃ­', ''),
(192, 1031210301005, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1954', 55, '', 'CB hÆ°u trÃ­', ''),
(193, 1031210301005, 'Chá»‹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1974', 35, '', 'á»ž nhÃ ', ''),
(194, 1031210301005, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1976', 33, '', 'Káº¿ toÃ¡n', ''),
(195, 1031210301005, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1978', 31, '', 'Kinh doanh', ''),
(196, 1031210301005, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1982', 27, '', 'CBNV viá»‡n báº£o tÃ ng', ''),
(197, 1031210301005, 'Chá»“ng', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1978', 31, '', 'CÃ´ng nhÃ¢n ká»¹ thuáº­t cÃ´ng trÃ¬nh Ä‘Ã´ thá»‹ ÄÃ  Náºµng', ''),
(198, 1031210301005, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '2008', 1, '', 'CÃ²n nhá»', ''),
(199, 15101710703007, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1945', 64, '', 'CB hÆ°u trÃ­', ''),
(200, 15101710703007, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CB hÆ°u trÃ­', ''),
(201, 15101710703007, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1975', 34, '', 'GiÃ¡o viÃªn', ''),
(202, 15101710703007, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1985', 24, '', 'Sinh viÃªn', ''),
(203, 15101710703007, 'Chá»“ng', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1976', 33, '', 'Bá»™ Ä‘á»™i', ''),
(204, 15101710703007, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '2008', 1, '', 'CÃ²n nhá»', ''),
(205, 15101710703008, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1931', 78, '', 'Cb hÆ°u trÃ­', ''),
(206, 15101710703008, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1941', 68, '', 'Cb nghá»‰ hÆ°u', ''),
(207, 15101710703008, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1970', 39, '', 'NhÃ¢n viÃªn cÃ´ng ty Há»¯u Nghá»‹', ''),
(208, 15101710703008, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1973', 36, '', 'NhÃ¢n viÃªn cÃ´ng ty Há»¯u Nghá»‹', ''),
(209, 15101710703008, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1976', 33, '', 'NhÃ¢n viÃªn cÃ´ng ty cÃ´ng trÃ¬nh 5', ''),
(210, 15101710703009, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'NÃ´ng', ''),
(211, 15101710703009, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'NÃ´ng', ''),
(212, 15101710703009, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(213, 15101710703008, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(214, 15101710703009, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Sinh viÃªn', ''),
(215, 15101710703010, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1947', 62, '', 'CB hÆ°u trÃ­', ''),
(216, 15101710703010, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1953', 56, '', 'CB hÆ°u trÃ­', ''),
(217, 15101710703009, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1977', 32, '', 'GiÃ¡o viÃªn', ''),
(218, 1571710703011, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(219, 1571710703011, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1940', 69, '', '', ''),
(220, 1571710703011, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1955', 53, '', 'TÃ i xáº¿', ''),
(221, 1571710703011, 'ANh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1956', 53, '', 'LÃ¡i xe Ã´m', ''),
(222, 1571710703011, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1959', 50, '', 'Lao Ä‘á»™ng phá»• thÃ´ng', ''),
(223, 1571710703011, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1960', 43, '', 'Lao Ä‘á»™ng phá»• thÃ´ng', ''),
(224, 1571710703011, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1976', 33, '', 'Ná»™i trá»£', ''),
(225, 1571710703011, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2004', 5, '', 'CÃ²n nhá»', ''),
(226, 1681210801001, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CBNV giao thÃ´ng váº­n táº£i Kon Tum', ''),
(227, 1681210801001, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'GiÃ¡o viÃªn', ''),
(228, 1681210801001, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CB CNV', ''),
(229, 1681210801001, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CN CNV', ''),
(230, 1681210801001, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(231, 1681710803003, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1957', 52, '', 'NÃ´ng', ''),
(232, 1681710803003, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1963', 46, '', 'NÃ´ng', ''),
(233, 1681710803003, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1994', 15, '', 'Há»c sinh', ''),
(234, 1681710803003, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2004', 5, '', 'CÃ²n nhá»', ''),
(235, 1681710803004, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1934', 75, '', 'á»ž nhÃ ', ''),
(236, 1681710803004, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1941', 68, '', 'BuÃ´n bÃ¡n', ''),
(237, 1681710803004, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1966', 43, '', 'Ná»™i trá»£', ''),
(238, 1681710803004, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1968', 41, '', 'Lao Ä‘á»™ng phá»• thÃ´ng', ''),
(239, 1681710803004, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1973', 36, '', 'Lao Ä‘á»™ng phá»• thÃ´ng', ''),
(240, 1681710803004, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1978', 31, '', 'Thá»£ ná»', ''),
(241, 1681710803004, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1985', 24, '', 'BuÃ´n bÃ¡n', ''),
(242, 1681710803004, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2007', 2, '', 'CÃ²n nhá»', ''),
(243, 1681710803005, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1967', 42, '', 'NgÆ° dÃ¢n', ''),
(244, 1681710803005, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1967', 42, '', 'NgÆ° dÃ¢n', ''),
(245, 1681710803005, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1969', 40, '', 'Ná»™i trá»£', ''),
(246, 1681710803005, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1989', 20, '', 'á»ž nhÃ ', ''),
(247, 1681710803005, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1993', 16, '', 'Há»c sinh', ''),
(248, 1681710803005, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2007', 2, '', 'CÃ²n nhá»', ''),
(249, 1681710803007, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1959', 50, '', 'NgÆ° dÃ¢n', ''),
(250, 1681710803007, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i Trá»£', ''),
(251, 1681710803007, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1992', 17, '', 'Há»c sinh', ''),
(252, 1681710803010, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1958', 51, '', 'Báº£o vá»‡', ''),
(253, 1681710803010, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1958', 51, '', 'NhÃ¢n viÃªn CÃ´ng ty CTN', ''),
(254, 1681710803010, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1994', 15, '', 'Há»c sinh', ''),
(255, 1681710803011, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(256, 1681710803011, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1940', 69, '', 'Ná»™i trá»£', ''),
(257, 1681710803011, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1977', 32, '', 'CÃ´ng nhÃ¢n', ''),
(258, 1681710803011, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1974', 35, '', 'CBNV', ''),
(259, 1681710803011, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '2000', 9, '', 'Há»c sinh', ''),
(260, 1681710803011, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '2002', 7, '', 'Há»c sinh', ''),
(261, 1681710803012, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1937', 72, '', 'CB hÆ°u trÃ­', ''),
(262, 1681710803012, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1944', 65, '', 'Ná»™i trá»£', ''),
(263, 1681710803012, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1970', 39, '', 'BuÃ´n bÃ¡n', ''),
(264, 1681710803012, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1972', 37, ' ', 'Ná»™i trá»£', ''),
(265, 1681710803012, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1974', 35, '', 'BuÃ´n bÃ¡n', ''),
(266, 1681710803012, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1976', 33, '', 'CÃ´ng nhÃ¢n', ''),
(267, 1681710803012, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1971', 38, '', 'Ná»™i trá»£', ''),
(268, 1681710803012, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1994', 15, '', 'Há»c sinh', ''),
(269, 1681710803012, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1997', 12, '', 'Há»c sinh', ''),
(270, 1681710803014, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1953', 56, '', 'NÃ´ng', ''),
(271, 1681710803014, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'NÃ´ng', ''),
(272, 1681710803014, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c Sinh', ''),
(273, 1681710803014, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(274, 1681710803014, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1977', 32, '', 'Ná»™i trá»£', ''),
(275, 1681710803014, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '2006', 3, '', 'CÃ²n nhá»', ''),
(276, 1681710803018, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(277, 1681710803018, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1924', 85, '', 'á»ž nhÃ ', ''),
(278, 1681710803018, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1966', 43, '', 'CÃ´ng nhÃ¢n', ''),
(279, 1681710803018, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1969', 40, '', 'BuÃ´n bÃ¡n', ''),
(280, 1681710803018, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1952', 57, '', 'BuÃ´n bÃ¡n', ''),
(281, 1681710803018, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1971', 38, '', 'NhÃ¢n viÃªn NgÃ¢n hÃ ng', ''),
(282, 1681710803018, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1982', 27, '', 'NhÃ¢n viÃªn khÃ¡ch sáº¡n', ''),
(283, 1681710803019, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1939', 70, '', 'CB hÆ°u trÃ­', ''),
(284, 1681710803019, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1941', 68, '', 'Ná»™i trá»£', ''),
(285, 1681710803019, 'Chá»“ng', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe omm', ''),
(286, 1681710803019, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1983', 26, '', 'NhÃ¢n viÃªn cÃ´ng ty nhÆ°á»£c', ''),
(287, 1681710803019, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1989', 20, '', 'á»ž nhÃ ', ''),
(288, 1681710803020, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1961', 48, '', 'Thá»£ cáº¯t tÃ³c', ''),
(289, 1681710803020, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1988', 21, '', 'Sinh viÃªn', ''),
(290, 1681710803020, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1993', 16, '', 'Há»c sinh', ''),
(291, 1681710803020, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(292, 1681710803020, 'Em', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(293, 1681710803022, 'Em', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(294, 1681710803021, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1941', 68, '', 'NgÆ° dÃ¢n', ''),
(295, 1681710803021, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(296, 1681710803021, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1967', 42, '', 'CÃ´ng nhÃ¢n', ''),
(297, 1681710803021, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1974', 35, '', 'CÃ´ng nhÃ¢n', ''),
(298, 1681710803021, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1974', 35, '', 'CÃ´ng nhÃ¢n', ''),
(299, 1681710803021, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1975', 34, '', 'CÃ´ng nhÃ¢n', ''),
(300, 1681710803021, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1970', 39, '', 'CÃ´ng nhÃ¢n', ''),
(301, 1681710803021, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2007', 2, '', 'CÃ²n nhá»', ''),
(302, 1071710203022, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1963', 46, '', 'BuÃ´n bÃ¡n', ''),
(303, 1071710203022, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1963', 46, '', 'BuÃ´n bÃ¡n', ''),
(304, 1071710203022, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1999', 10, '', 'Há»c sinh', ''),
(305, 1571710703002, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1954', 55, '', 'NÃ´ng', ''),
(306, 1571710703002, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1954', 55, '', 'NÃ´ng', ''),
(307, 1571710703002, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1978', 31, '', 'NÃ´ng', ''),
(308, 1571710703002, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1980', 29, '', 'NÃ´ng', ''),
(309, 1571710703002, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1984', 25, '', 'CÃ´ng nhÃ¢n', ''),
(311, 18917010503010, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1951', 58, '', 'Ná»™i trá»£', ''),
(312, 18917010503010, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CB CNV', ''),
(313, 18917010503010, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(314, 18917010503011, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1952', 57, '', 'CB hÆ°u trÃ­', ''),
(315, 18917010503011, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1952', 57, '', 'CB hÆ°u trÃ­', ''),
(316, 18917010503011, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1976', 33, '', 'CB CNV', ''),
(317, 18917010503011, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1980', 29, '', 'NÃ´ng', ''),
(318, 18917010503011, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1982', 27, '', 'NÃ´ng', ''),
(319, 18917010503012, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1954', 55, '', 'NÃ´ng', ''),
(320, 18917010503012, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1961', 48, '', 'NÃ´ng', ''),
(321, 18917010503012, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CB CNV', ''),
(322, 18917010503012, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Sinh viÃªn', ''),
(323, 18917010503012, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(324, 18917010503013, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1970', 39, '', 'NÃ´ng', ''),
(325, 18917010503013, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1971', 38, '', 'NÃ´ng', ''),
(326, 18917010503013, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1995', 14, '', 'Há»c sinh', ''),
(327, 18917010503013, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2001', 8, '', 'Há»c sinh', ''),
(328, 18917010503013, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2007', 2, '', 'CÃ²n nhá»', ''),
(329, 18917010503014, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1954', 55, '', 'NÃ´ng', ''),
(330, 18917010503014, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1955', 54, '', 'NÃ´ng', ''),
(334, 1571210701001, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1955', 54, '243 Nguyá»…n Tri PhÆ°Æ¡ng, ÄÃ  Náºµng', 'QuÃ¢n nhÃ¢n nghá»‰ hÆ°u', ''),
(335, 1571210701001, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Ká»¹ sÆ° Ä‘iá»‡n tá»­', ''),
(336, 1571210701001, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(337, 1571210701001, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1960', 49, '', 'Ká»¹ sÆ° lÃ¢m nghiá»‡p', ''),
(338, 1571210701001, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1965', 44, '', 'CÃ´ng nhÃ¢n', ''),
(339, 1571210701001, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1973', 36, '', 'CÃ´ng nhÃ¢n', ''),
(340, 1021510202016, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1956', 53, 'Quáº£ng TÃ¢n-Quáº£ng Tráº¡ch-Quáº£ng BÃ¬nh', 'CÃ´ng an', ''),
(341, 1021510202016, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1959', 50, 'Quáº£ng TÃ¢n-Quáº£ng Tráº¡ch-Quáº£ng BÃ¬nh', 'BuÃ´n bÃ¡n', ''),
(342, 1021510202016, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1981', 28, '25/6 HÃ  Ná»™i, Huáº¿', 'Y tÃ¡ bá»‡nh viÃªn TW Huáº¿', ''),
(343, 1021510202016, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1985', 24, 'Quáº£ng TÃ¢n, Quáº£ng Tráº¡ch, Quáº£ng Binh', 'Sinh viÃªn', ''),
(344, 1681710803016, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1957', 52, 'Tá»• 33, phÆ°á»ng HÃ²a CÆ°á»ng Nam, Háº£i ChÃ¢u, ÄÃ  Náºµng', 'Báº£o vá»‡', ''),
(345, 1681710803016, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1958', 51, 'Tá»• 33, phÆ°á»ng HÃ²a CÆ°á»ng Nam, Háº£i ChÃ¢u, ÄÃ  Náºµng', 'CBNV bá»‡nh viá»‡n quÃ¢n y C17', ''),
(346, 1681710803016, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1993', 16, '', 'Há»c sinh', ''),
(347, 16817010803024, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1987', 22, '', 'CÃ´ng nhÃ¢n', ''),
(348, 16817010803024, 'Máº¹', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1996', 13, '', 'Há»c sinh', ''),
(349, 16817010803024, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1997', 12, '', 'Há»c sinh', ''),
(350, 18517010503016, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1955', 54, '538/2 NÃºi ThÃ nh', 'CBNV cÃ´ng ty PhÆ°á»›c YÃªn', ''),
(351, 18517010503016, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1960', 49, '538/2 NÃºi ThÃ nh', 'GiÃ¡o viÃªn', ''),
(352, 18517010503016, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1991', 18, '538/2 NÃºi ThÃ nh', 'Sinh viÃªn', ''),
(353, 10317010303016, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1954', 55, 'Thá»‹ tráº¥n Nam PhÆ°á»›c, Duy XuyÃªn, Quáº£ng Nam', 'BuÃ´n bÃ¡n', ''),
(354, 10317010303016, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1954', 55, 'Thá»‹ tráº¥n Nam PhÆ°á»›c, Duy XuyÃªn, Quáº£ng Nam', 'BuÃ´n bÃ¡n', ''),
(355, 10317010303016, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1978', 31, '', 'Kinh doanh', ''),
(356, 10317010303016, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1989', 20, '', 'Sinh viÃªn', ''),
(357, 10317010303016, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1992', 17, '', 'Há»c sinh', ''),
(358, 151117010703001, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m Biá»ƒn', ''),
(359, 151117010703001, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(360, 151117010703001, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m biá»ƒn', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(361, 10111710703072, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(362, 10111710703072, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(363, 10111710703072, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(364, 10111710703072, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(365, 1031710303006, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(366, 10111710703073, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(367, 1851210502001, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1957', 52, 'HÃ²a LiÃªn, HÃ²a Vang, ÄÃ  Náºµng', 'CB CNVC', ''),
(368, 10111710703073, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(369, 1851210502001, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1956', 53, 'HÃ²a LiÃªn, HÃ²a Vang, ÄÃ  Náºµng', 'Ná»™i trá»£', ''),
(370, 10111710703073, 'cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'á»ž nhÃ ', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(371, 1851210502001, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1989', 20, 'HÃ²a LiÃªn, HÃ²a Vang, ÄÃ  Náºµng', 'Sinh viÃªn', ''),
(372, 10111710703073, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(373, 10111710703073, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(374, 151117010703014, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(375, 151117010703014, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(376, 151117010703014, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(377, 10111710703073, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(378, 151117010703015, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(379, 10111710703073, 'Anh ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(380, 151117010703015, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(381, 151117010703015, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'GiÃ¡o ViÃªn', ''),
(382, 151110010703016, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(383, 151110010703016, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(384, 10111710703074, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(385, 151110010703016, 'Vá»£', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(386, 151110010703016, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(387, 151110010703016, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(388, 151110010703016, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(389, 151110010703016, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(390, 151117010703005, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(391, 151117010703005, 'máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(392, 151117010703005, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(393, 151117010703005, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(394, 151117010703005, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(395, 151117010703005, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(396, 151117010703017, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(397, 151117010703017, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(398, 151117010703017, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(399, 151117010703017, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(400, 151117010703017, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(401, 151117010703017, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(402, 151117010703017, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Sá»­a xe', ''),
(403, 151117010703017, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(404, 151117010703018, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(405, 151117010703018, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(406, 151117010703018, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(407, 151117010703018, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(408, 151117010703018, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(409, 151117010703018, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ gÃ²', ''),
(410, 151117010703019, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(411, 151117010703019, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<P>&nbsp;</P>\r\n<P>&nbsp;</P>'),
(412, 151117010703019, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(413, 151117010703019, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(414, 151117010703019, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(415, 151117010703019, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(416, 151117010703019, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(417, 151117010703022, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(418, 151117010703020, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(419, 151117010703020, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(420, 151117010703020, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(421, 151117010703020, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ MÃ¡y', ''),
(422, 151117010703020, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(423, 151117010703020, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(424, 151117010703020, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(425, 151117010703021, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(426, 151117010703021, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(427, 151117010703021, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(428, 151117010703021, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(429, 151117010703021, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(430, 151117010703021, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Sá»­a xe', ''),
(431, 1681710803022, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m VÆ°á»n', ''),
(432, 151117010703022, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m VÆ°á»n', ''),
(433, 151117010703022, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CBCNV', ''),
(434, 151117010703022, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(435, 151117010703022, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(436, 1681710803022, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'h', ''),
(437, 151117010703023, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(438, 151117010703023, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(439, 151117010703023, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'b', ''),
(440, 151117010703023, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(441, 151117010703024, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Trá»“ng CÃ¢y', ''),
(442, 151117010703024, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Trá»“ng CÃ¢y', ''),
(443, 10111710703075, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(444, 151117010703024, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Trá»“ng CÃ¢y', ''),
(445, 10111710703075, 'Cha ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'HÆ°u trÃ­', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(446, 151117010703024, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Bá»™ Ä‘á»™i', ''),
(447, 10111710703075, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(448, 151117010703024, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(449, 10111710703075, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng NhÃ¢n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(450, 151117010703024, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(451, 10111710703075, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(452, 151117010703024, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(453, 10111710703076, 'Cha ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(454, 151117010703025, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1937', 72, '', 'Nghá»‰ HÆ°u', '');
INSERT INTO `qlns_giadinh` (`qlns_idgdnv`, `qlns_mahsnv`, `qlns_quanhe`, `qlns_ho`, `qlns_ten`, `qlns_gioitinh`, `qlns_tinhtrang`, `qlns_ngaysinh`, `qlns_tuoi`, `qlns_diachi`, `qlns_nghenghiep`, `qlns_ghichu`) VALUES
(455, 151117010703025, 'Vá»£ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Káº¿ ToÃ¡n', ''),
(456, 151117010703025, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(457, 10210010703077, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ may', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(458, 151117010703025, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(459, 151117010703025, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(460, 151117010703025, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Lao Ä‘á»™ng', ''),
(461, 151117010703025, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(462, 151117010703025, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(463, 10210010703077, 'Cha ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(464, 151117010703025, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(465, 151117010703025, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ may', ''),
(466, 151117010703026, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(467, 151117010703026, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(468, 151117010703026, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(469, 151117010703027, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(470, 151117010703029, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(471, 151117010703029, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(472, 151117010703029, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(473, 151117010703029, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(474, 151117010703029, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Bá»™ Ä‘á»™i', ''),
(475, 15111710703030, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá»‰ HÆ°u', ''),
(476, 15111710703030, 'Máº¹', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(477, 15111710703030, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(478, 15111710703030, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(479, 151117010703031, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(480, 151117010703031, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(481, 151117010703031, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(482, 151117010703031, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(483, 151117010703031, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(484, 151117010703032, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ lÃ m nÆ°á»›c', ''),
(485, 151117010703032, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(486, 151117010703032, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(487, 151117010703032, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(488, 151117010703032, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(489, 151117010703032, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(490, 151117010703032, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(491, 151117010703033, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(492, 151117010703033, 'máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(493, 151117010703033, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(494, 151117010703033, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(495, 151117010703033, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(496, 151117010703033, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(497, 151117010703033, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ may', ''),
(498, 151117010703033, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(499, 151117010703033, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(500, 151117010703034, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'GiÃ¡o viÃªn', ''),
(501, 151117010703034, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(502, 151117010703034, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(503, 151117010703034, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá»‰ HÆ°u', ''),
(504, 151117010703034, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá»‰ HÆ°u', ''),
(505, 151117010703034, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(506, 151117010703034, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Bá»™ Ä‘á»™i', ''),
(507, 151117010703035, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(508, 151117010703035, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m nÃ´ng', ''),
(509, 151117010703035, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ Ä‘Ã¡', ''),
(510, 151117010703035, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£', ''),
(511, 151117010703035, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(512, 151117010703035, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Sinh viÃªn', ''),
(513, 151117010703035, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(514, 151117010703036, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(515, 151117010703036, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(516, 151117010703036, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(517, 151117010703036, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(518, 151117010703036, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(519, 151117010703036, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(520, 151117010703036, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(521, 151117010703036, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(522, 151117010703037, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ may', ''),
(523, 10111710703078, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ may', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(524, 151117010703037, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(525, 10111710703078, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(526, 151117010703037, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', ''),
(527, 151117010703037, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá»‰ HÆ°u', ''),
(528, 151117010703037, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(529, 10111710703078, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(530, 151110010703038, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(531, 151110010703038, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Káº¿ ToÃ¡n', ''),
(532, 151110010703038, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'NhÃ¢n viÃªn', ''),
(533, 151110010703038, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Sinh viÃªn', ''),
(534, 10111710703078, 'Cha ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(535, 151110010703038, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Sinh viÃªn', ''),
(536, 151110010703038, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(537, 151110010703038, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(538, 1031710303006, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'HÆ°u trÃ­', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(539, 151110010703038, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(540, 151110010703038, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng chá»©c', ''),
(541, 151110010703038, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(542, 151117010703039, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(543, 151117010703039, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(544, 151117010703039, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(545, 151117010703039, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', ''),
(546, 151117010703039, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(547, 151117010703039, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(548, 10111710703079, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(549, 151117010703039, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CBCNV', ''),
(550, 151117010703039, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'GiÃ¡o viÃªn', ''),
(551, 151117010703039, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(552, 10111710703079, 'Cha ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'HÆ°u trÃ­', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(553, 151117010703039, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CBCNV', ''),
(554, 151117010703040, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m nÃ´ng', ''),
(555, 151117010703040, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(556, 10111710703079, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(557, 151117010703041, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CBCNV', ''),
(558, 1031710303006, 'Chá»‹', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Tiáº¿p thá»‹', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(559, 151117010703041, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Cáº¯t tÃ³c', ''),
(560, 10111710703079, 'Chá»‹', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(561, 151117010703041, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(562, 151117010703041, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(563, 151117010703041, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Lao Ä‘á»™ng', ''),
(564, 10111710703079, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(565, 151117010703041, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(566, 151117010703041, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(567, 151117010703042, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(568, 151117010703042, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(569, 101117010703080, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Uá»‘n tÃ³c', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(570, 101117010703080, 'Cha ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(571, 151117010703042, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(572, 151117010703042, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(573, 151117010703042, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(574, 101117010703080, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(575, 15111710703043, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(576, 15111710703043, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(577, 15111710703043, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(578, 101117010703080, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Äiá»‡n mÃ¡y', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(579, 15111710703043, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(580, 101117010703080, 'Em ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ mÃ¡y', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(581, 151117010703044, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ may', ''),
(582, 151117010703044, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', ''),
(583, 101117010703080, 'Em ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(584, 151117010703045, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá»‰ HÆ°u', ''),
(585, 151117010703045, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá»‰ HÆ°u', ''),
(586, 101117010703080, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(587, 151117010703045, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(588, 151117010703045, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(589, 151117010703045, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CBCNV', ''),
(590, 151117010703046, 'Vá»£ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(591, 151117010703046, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(592, 151117010703046, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(593, 101117010703081, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ thiÃªu', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(594, 151117010703046, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá»‰ HÆ°u', ''),
(595, 151117010703046, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá»‰ HÆ°u', ''),
(596, 101117010703081, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', 'Há»c sinh', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(597, 151117010703046, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(598, 101117010703081, 'cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ XÃ¢y', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(599, 151117010703046, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Cáº¯t tÃ³c', ''),
(600, 151117010703047, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(601, 101117010703081, 'Anh ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ xÃ¢y', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(602, 151117010703047, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(603, 151117010703047, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(604, 101117010703081, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ Ä‘iá»‡n nÆ°á»›c', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(605, 151117010703047, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá»‰ HÆ°u', ''),
(606, 101117010703082, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(607, 151117010703047, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá»‰ HÆ°u', ''),
(608, 151117010703047, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(609, 101117010703082, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(610, 151117010703048, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ Ä‘iá»‡n', ''),
(611, 101117010703082, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c Sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(612, 151117010703048, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(613, 151117010703048, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(614, 101117010703082, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(615, 151117010703048, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Sinh viÃªn', ''),
(616, 151117010703048, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Sinh viÃªn', ''),
(617, 101117010703082, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(618, 151117010703049, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(619, 151117010703049, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(620, 101117010703082, 'Anh ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá» bá»™t', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(621, 101117010703082, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(622, 151117010703050, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'NgÆ° DÃ¢n', ''),
(623, 151117010703050, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(624, 151117010703050, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'NgÆ° DÃ¢n', ''),
(625, 101117010703082, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(626, 151117010703050, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'NgÆ° DÃ¢n', ''),
(627, 101117010703082, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(628, 10210010703083, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(629, 10210010703083, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(630, 10210010703083, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(631, 10210010703083, 'Tráº§n Thanh CÃ´ng', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'HÆ° trÃ­', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(632, 10210010703083, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(633, 1031710303006, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng an', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(634, 10210010703084, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(635, 10210010703084, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(636, 101117010703085, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(637, 101117010703085, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(638, 101117010703085, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(639, 101117010703085, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(640, 101117010703086, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ may', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(641, 101117010703086, 'Con ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(642, 101117010703086, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(643, 101117010703086, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(644, 101117010703086, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(645, 101117010703086, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'buÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(646, 101117010703087, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(647, 101117010703087, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(648, 101117010703087, 'Cha ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(649, 101117010703087, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(650, 101117010703087, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Äi lÃ m', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(651, 101117010703087, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(652, 101117010703088, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'GiÃ¡o viÃªn', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(653, 101117010703088, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(654, 101117010703088, 'Em ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'DÆ°á»£c trÃ¬nh viÃªn', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(655, 101117010703089, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(656, 101117010703089, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(657, 101117010703089, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'ÄÃ¡nh cÃ¡', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(658, 101117010703089, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(659, 1031710303006, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'ÄÃ¡nh cÃ¡', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(660, 101117010703089, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ nhuá»™m', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(661, 101117010703089, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Tiáº¿p thá»‹', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(662, 101117010703089, 'em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(663, 101117010703090, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(664, 101117010703090, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(665, 101117010703090, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(666, 101117010703090, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(667, 101117010703090, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Cáº§u thá»§', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(668, 101117010703090, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Sinh viÃªn', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(669, 101117010703091, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ Ä‘iá»‡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(670, 101117010703091, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(671, 101117010703091, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(672, 101117010703091, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ mÃ¡y', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(673, 101117010703092, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(674, 101117010703092, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(675, 101117010703092, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(676, 101117010703092, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(677, 101117010703092, 'Em ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(678, 101117010703093, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(679, 101117010703093, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(680, 101117010703093, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(681, 101117010703093, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(682, 101117010703093, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Sinh viÃªn', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(683, 101117010703094, 'Vá»£ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(684, 101117010703094, 'Con ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(685, 101117010703094, 'Con ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(686, 101117010703094, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(687, 101117010703094, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(688, 101117010703094, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(689, 101117010703094, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(690, 101117010703095, 'Cha ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(691, 101117010703095, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(692, 101117010703095, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(693, 10111710703096, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(694, 10111710703096, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(695, 10111710703096, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(696, 10111710703096, 'Con ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(697, 10111710703096, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(698, 10111710703096, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(699, 10111710703096, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'á»ž nÆ°á»›c ngoÃ i', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(700, 10111710703096, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(701, 10111710703096, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(702, 101117010703097, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(703, 101117010703097, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m nÃ´ng', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(704, 101117010703097, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m nÃ´ng', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(705, 101117010703097, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(706, 10210010703098, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'á»ž nhÃ ', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(707, 10210010703098, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(708, 10210010703098, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Ká»¹ Thuáº­t viÃªn vi tÃ­nh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(709, 151117010703051, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(710, 151117010703051, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá»‰ HÆ°u', ''),
(711, 151117010703051, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(712, 151117010703051, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(713, 151117010703051, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(714, 151117010703052, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(715, 151117010703052, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', ''),
(716, 151117010703052, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'á»ž nhÃ ', ''),
(717, 151117010703052, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(718, 151110010703053, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(719, 151110010703053, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', ''),
(720, 151110010703053, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', ''),
(721, 151110010703053, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(722, 151110010703053, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(723, 151110010703053, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(724, 151110010703053, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(725, 151117010703054, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(726, 151117010703054, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(727, 151117010703054, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(728, 151117010703054, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Sá»§a xe', ''),
(729, 151117010703054, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´m bÃ¡n', ''),
(730, 151117010703054, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(731, 151117010703054, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(732, 151117010703055, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i Trá»£', ''),
(733, 151117010703055, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', ''),
(734, 151117010703055, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n Nhá»', ''),
(735, 151117010703055, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»›t tÃ³c', ''),
(736, 151117010703055, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(737, 151117010703055, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m gáº¡ch', ''),
(738, 151117010703055, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(739, 151117010703055, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(740, 151117010703056, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Äi lÃ m', ''),
(741, 151117010703056, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', ''),
(742, 151117010703056, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Äi biá»ƒn', ''),
(743, 151117010703056, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(744, 151117010703056, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(745, 151117010703056, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(746, 151117010703056, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(747, 151117010703057, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'NgÆ° dÃ¢n', ''),
(748, 151117010703057, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'buÃ´n bÃ¡n', ''),
(749, 151117010703057, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(750, 151117010703057, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ may', ''),
(751, 151117010703057, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ may', ''),
(752, 151117010703057, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Sinh viÃªn', ''),
(753, 151117010703058, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m nÃ´ng', ''),
(754, 151117010703058, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m nÃ´ng', ''),
(755, 151117010703058, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(756, 151117010703058, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Báº£o vá»‡', ''),
(757, 151117010703058, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Sinh viÃªn', ''),
(758, 151117010703058, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(759, 151117010703058, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(760, 151117010703059, 'Vá»£ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(761, 151117010703059, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(762, 151117010703059, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(763, 151117010703059, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(764, 151117010703059, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(765, 151117010703059, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(766, 151117010703059, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(767, 151117010703060, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(768, 151117010703060, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(769, 151117010703060, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(770, 151117010703060, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'á»ž nhÃ ', ''),
(771, 151117010703060, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'á»ž nhÃ ', ''),
(772, 151117010703060, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(773, 151117010703060, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(774, 151117010703060, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(775, 151117010703060, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(776, 151117010703061, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m nÃ´ng', ''),
(777, 151117010703061, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(778, 151117010703061, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(779, 151117010703061, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(780, 151117010703062, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(781, 151117010703062, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(782, 151117010703062, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '');
INSERT INTO `qlns_giadinh` (`qlns_idgdnv`, `qlns_mahsnv`, `qlns_quanhe`, `qlns_ho`, `qlns_ten`, `qlns_gioitinh`, `qlns_tinhtrang`, `qlns_ngaysinh`, `qlns_tuoi`, `qlns_diachi`, `qlns_nghenghiep`, `qlns_ghichu`) VALUES
(783, 151117010703062, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(784, 151117010703063, 'Vá»£ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n BÃ¡n', ''),
(785, 151117010703063, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(786, 151117010703063, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(787, 151117010703063, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'á»ž nhÃ ', ''),
(788, 151117010703063, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'á»ž nhÃ ', ''),
(789, 151117010703063, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(790, 151117010703063, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ mÃ¡y', ''),
(791, 151117010703064, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(792, 151117010703064, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', ''),
(793, 151117010703064, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ rÃ¨n', ''),
(794, 151117010703064, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Y tÃ¡', ''),
(795, 151117010703064, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(796, 151117010703064, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Káº¿ toÃ¡n', ''),
(797, 151117010703064, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(798, 151117010703064, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(799, 151117010703065, 'Vá»£ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Trang Ä‘iá»ƒm', ''),
(800, 151117010703065, 'Con ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(801, 151117010703065, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(802, 151117010703065, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(803, 151117010703065, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', ''),
(804, 151117010703065, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Äi biá»ƒn', ''),
(805, 151117010703065, 'Chá»‹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(806, 151117010703065, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(807, 151117010703067, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(808, 151117010703067, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(809, 151117010703067, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(810, 151117010703067, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá» cháº£', ''),
(811, 151117010703067, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m dÃ©p', ''),
(812, 151117010703067, 'Chá»‹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m dÃ©p', ''),
(813, 151117010703067, 'Anh', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m dÃ©p', ''),
(814, 151117010703067, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ há»“', ''),
(815, 151117010703067, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Nghá» cáº£', ''),
(816, 15111710703068, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ hÃ n', ''),
(817, 15111710703068, 'Máº¹ ', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(818, 15111710703068, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(819, 15111710703068, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', ''),
(820, 15111710703068, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(821, 15111710703068, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Quáº£ng cÃ¡o', ''),
(822, 15111710703068, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Quáº£ng cÃ¡o', ''),
(823, 15111710703069, 'Vá»£ ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Y tÃ¡', ''),
(824, 15111710703069, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Máº§n non', ''),
(825, 15111710703069, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Máº§n non', ''),
(826, 15111710703069, 'Cha', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ m biá»ƒn', ''),
(827, 15111710703069, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(828, 15111710703069, 'Em ', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(829, 15111710703068, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(830, 15111710703069, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ´ng nhÃ¢n', ''),
(831, 151117010703070, 'Chá»“ng', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Trung tÃ¡', ''),
(832, 151117010703070, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(833, 151117010703070, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', ''),
(834, 151117010703070, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(835, 151117010703070, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Ná»™i trá»£', ''),
(836, 151117010703070, 'Anh', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'LÃ¡i xe', ''),
(837, 151117010703070, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ há»“', ''),
(838, 151117010703070, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ há»“', ''),
(839, 151117010703070, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ há»“', ''),
(840, 15111710703012, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(841, 15111710703012, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1925', 84, 'Thá»‹ tráº¥n ÄÃ´ng PhÃº, Quáº¿ SÆ¡n, Quáº£ng Nam', '', ''),
(842, 15111710703012, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1960', 49, '15 ÄÃ o Táº¥n, ÄÃ  Náºµng', 'BuÃ´n bÃ¡n', ''),
(843, 15111710703012, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1983', 26, '', 'NhÃ¢n viÃªn NgÃ¢n hÃ ng', ''),
(844, 15111710703012, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1989', 20, '', 'Sinh viÃªn', ''),
(845, 15111710703012, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1951', 58, 'Quáº£ng Nam', '', ''),
(846, 15111710703012, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1957', 52, 'Quáº£ng Nam', '', ''),
(847, 15111710703012, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1959', 50, 'Quáº£ng Nam', '', ''),
(848, 15111710703012, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1965', 44, 'Quáº£ng Nam', '', ''),
(849, 0, '', '', 'Trần Quang Vinh', '', '', '', 0, '', '', ''),
(850, 1681710803023, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(851, 1681710803023, 'Máº¹', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', ''),
(852, 1681710803023, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1957', 52, 'Tá»• 15 An Má»¹, phÆ°á»ng An Háº£i TÃ¢y, ÄÃ  Náºµng', 'Ná»™i trá»£', ''),
(853, 1681710803023, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1981', 28, '', 'Lao Ä‘á»™ng phá»• thÃ´ng', ''),
(854, 1681710803023, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1983', 26, '', 'Rá»­a xe', ''),
(855, 1681710803023, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1985', 24, '', 'Há»c nghá»', ''),
(856, 1681710803023, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1987', 22, '', 'LÃ m kem', ''),
(857, 1681710803023, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1991', 18, '', 'á»ž nhÃ ', ''),
(858, 1681710803023, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1959', 50, 'ÄÃ  Náºµng', '', ''),
(859, 1681710803022, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '1934', 0, '', '', ''),
(860, 1681710803022, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1933', 76, '', 'ThÆ°Æ¡ng binh', ''),
(861, 15111710703022, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1972', 37, 'Tá»• 26 phÆ°á»ng An Háº£i Báº¯c, quáº­n SÆ¡n TrÃ , ÄÃ  Náºµng', 'Ná»™i trá»£', ''),
(862, 1681710803022, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1992', 17, '', 'á»ž nhÃ ', ''),
(863, 1681710803022, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1999', 10, '', 'Há»c sinh', ''),
(864, 1681710803022, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1968', 41, '', '', ''),
(865, 1681710803022, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1975', 34, '', '', ''),
(866, 1681710803022, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1975', 34, '', '', ''),
(867, 1681710803022, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1977', 32, '', '', ''),
(868, 1851010502002, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '1925', 0, '', '', '<br>'),
(869, 1851010502002, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1937', 72, 'Tá»• dÃ¢n phá»‘ II, thá»‹ tráº¥n La HÃ , TÆ° NghÄ©a, Quáº£ng NgÃ£i', 'BuÃ´n bÃ¡n', '<br>'),
(870, 1851010502002, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1980', 29, 'Tá»• dÃ¢n phá»‘ 3, thá»‹ tráº¥n SÃ´ng Vá»‡, Quáº£ng NgÃ£i', 'GiÃ¡o viÃªn', '<br>'),
(871, 1851010502002, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BÃ¡c sá»¹', '<br>'),
(872, 1851010502002, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BÃ¡c sá»¹', '<br>'),
(873, 1851710503009, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1957', 52, 'Tá»• 2 thÃ´n BÃ  Báº§u, Tam XuÃ¢n, NÃºi ThÃ nh, Quáº£ng Nam', 'CBNV cÃ´ng ty xÃ¢y dá»±ng cáº§u Ä‘Æ°á»ng 508', '<br>'),
(874, 1851710503009, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1958', 51, 'Tá»• 2 thÃ´n BÃ  Báº§u, Tam XuÃ¢n, NÃºi ThÃ nh, Quáº£ng Nam', 'BuÃ´n bÃ¡n', '<br>'),
(875, 1851710503009, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1996', 13, 'Tá»• 2 thÃ´n BÃ  Báº§u, Tam XuÃ¢n, NÃºi ThÃ nh, Quáº£ng Nam', 'Há»c sinh', '<br>'),
(876, 1851710503020, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', '<br>'),
(877, 1851710503020, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'ÄÃ£ máº¥t', '', 0, '', '', '<br>'),
(878, 1851710503020, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1963', 46, '146/59/18/11 VÅ© TÃ¹ng, P2, quáº­n BÃ¬nh Tháº¡nh', 'BuÃ´n bÃ¡n', '<br>'),
(879, 1851710503020, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Sinh viÃªn', '<br>'),
(880, 1851710503020, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br>'),
(881, 18131710503019, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1956', 53, 'BÃ¬nh Äá»‹nh', 'NgÆ° dÃ¢n', '<br>'),
(882, 18131710503019, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1956', 53, 'BÃ¬nh Äá»‹nh', 'NÃ´ng', '<br>'),
(883, 18131710503019, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, 'BÃ¬nh Äinh', 'NgÆ° dÃ¢n', '<br>'),
(884, 18131710503019, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, 'BÃ¬nh Äá»‹nh', 'NÃ´ng', '<br>'),
(885, 18131710503019, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, 'BÃ¬nh Äá»Šnh', 'Há»c sinh', '<br>'),
(886, 18131710503019, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, 'BÃ¬nh Äá»‹nh', 'Há»c sinh', '<br>'),
(887, 18131710503018, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', '<br>'),
(888, 18131710503018, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1951', 58, 'áº¥p HÃ²a BÃŒnh II, xÃ£ Hiá»‡p HÃ²a, Äá»©c HÃ²a, Long An', 'NÃ´ng', '<br>'),
(889, 18131710503018, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1973', 36, '', '', '<br>'),
(890, 18131710503018, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1975', 34, '', '', '<br>'),
(891, 18131710503018, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1977', 32, '', '', '<br>'),
(892, 18131710503018, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1990', 19, '', 'NÃ´ng', '<br>'),
(893, 18121710503023, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1956', 52, '', 'Thá»£ má»™c', '<br>'),
(894, 18121710503023, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1961', 47, '', 'BuÃ´n bÃ¡n', '<br>'),
(895, 18121710503023, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1979', 29, '', 'NhÃ¢n viÃªn cÃ´ng ty THC TÃ¢y NguyÃªn', '<br>'),
(896, 18121710503023, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1981', 27, '16 Nguyá»…n VÄƒn Cá»«, Kon Tum', 'NhÃ¢n viÃªn cÃ´ng ty THC TÃ¢y NguyÃªn', '<br>'),
(897, 18121710503023, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1983', 26, '140 HÃ¹ng VÆ°Æ¡ng', 'NhÃ¢n viÃªn khÃ¡ch sáº¡n ÄÃ´ng DÆ°Æ¡ng', '<br>'),
(898, 18121710503023, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1998', 21, '140 HÃ¹ng VÆ°Æ¡ng', 'Sinh viÃªn', '<br>'),
(899, 1891710503015, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1958', 51, 'Tá»• 8, thÃ´n PhÃº Lá»™c, Quáº¿ XuÃ¢n 2, Quáº¿ SÆ¡n, Quáº£ng Nam', 'NÃ´ng', '<br>'),
(900, 1891710503015, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1957', 52, 'Tá»• 8, thÃ´n PhÃº Lá»™c, Quáº¿ XuÃ¢n 2, Quáº¿ SÆ¡n, Quáº£ng Nam', 'NÃ´ng', '<br>'),
(901, 1891710503015, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1986', 23, '', 'Thá»£ Ä‘iá»‡n nÆ°á»›c', '<br>'),
(902, 1891710503015, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1988', 21, '', 'CÃ´ng nhÃ¢n', '<br>'),
(903, 101117010703099, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 49, '70 Háº£i PhÃ²ng', 'Rá»­a xe', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(904, 101117010703099, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 46, '70 Háº£i PhÃ²ng', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(905, 1031710303006, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '70 Háº£i PhÃ²ng', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(906, 101117010703100, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 47, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(907, 101117010703100, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 45, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(908, 101117010703100, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 22, '', 'Sinh viÃªn', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(909, 151110010703101, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 54, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(910, 151110010703101, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 48, '', 'BuÃ´n bÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(911, 151110010703101, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 27, '', 'Káº¿ toÃ¡n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(912, 151110010703101, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 23, '', 'CÃ´ng nhÃ¢n', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(913, 151117010703102, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 54, '', 'LÃ m nÃ´ng', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(914, 151117010703102, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 48, '', 'LÃ m nÃ´ng', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(915, 151117010703102, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(916, 151117010703102, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(917, 1031710303006, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>'),
(918, 1511170107030103, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1952', 57, '', 'XÃ¢y dá»±ng', '<br>'),
(919, 1511170107030103, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1951', 58, '', 'BuÃ´n bÃ¡n', '<br>'),
(920, 1511170107030103, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1975', 34, '', 'CÆ¡ khÃ­', '<br>'),
(921, 1511170107030103, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1977', 32, '', '', '<br>'),
(922, 1511170107030103, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1986', 23, '', 'NhÃ¢n viÃªn cÃ´ng trÃ¬nh Ä‘Ã´ thá»‹', '<br>'),
(923, 16817010803029, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1952', 58, '498/18 Tráº§n Cao VÃ¢n, Thanh KhÃª, ÄÃ  Náºµng', 'GiÃ¡o viÃªn', '<br>'),
(924, 16817010803029, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1954', 56, '498/18 Tráº§n Cao VÃ¢n, Thanh KhÃª, ÄÃ  Náºµng', 'CÃ´ng nhÃ¢n viÃªn chá»©c', '<br>'),
(925, 16817010803029, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1980', 30, '', 'CÃ´ng nhÃ¢n may', '<br>'),
(926, 16817010803029, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', '<br>'),
(927, 16817010803029, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, 'TP Há»“ ChÃ­ Minh', 'Ká»¹ sÆ° cÆ¡ Ä‘iá»‡n láº¡nh', '<br>'),
(928, 1681701080328, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1969', 41, '', 'Ná»™i trá»£', '<br>'),
(929, 1681701080328, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1963', 47, '', 'Thá»£ ná»', '<br>'),
(930, 1681701080328, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br>'),
(931, 1681710803027, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'NÃ´ng', '<br>'),
(932, 1681710803027, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, 'Äáº¡i Äá»“ng, Äáº¡i Lá»™c, Quáº£ng Nam', 'Ná»™i trá»£', '<br>'),
(933, 1681710803027, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1983', 27, '', 'Kinh doanh', '<br>'),
(934, 1681710803027, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br>'),
(935, 1681710803027, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Kinh doanh', '<br>'),
(936, 1681710803027, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', '', '<br>'),
(937, 1681710803027, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Ká»¹ sÆ° cÆ¡ khÃ­', '<br>'),
(938, 1681710803026, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1944', 66, '', 'XÃ¢y dá»±ng', '<br>'),
(939, 1681710803026, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1948', 62, 'Tá»• 46, phÆ°á»ng XuÃ¢n HÃ , Thanh KhÃª, ÄÃ  Náºµng', 'BuÃ´n bÃ¡n', '<br>'),
(940, 1681710803026, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1972', 38, '', 'sá»­a chá»¯a Ã´ tÃ´', '<br>'),
(941, 1681710803026, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br>'),
(942, 1681710803026, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Äiá»‡n Ã´ tÃ´', '<br>'),
(943, 1681710803017, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1958', 52, '', 'LÃ m nÃ´ng', '<br>'),
(944, 1681710803017, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1960', 50, 'An ThÃ nh, Quáº£ng ThÃ nh, Quáº£ng Äiá»n, Huáº¿', 'LÃ m nÃ´ng', '<br>'),
(945, 1681710803017, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br>'),
(946, 1681710803017, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br>'),
(947, 1681710803025, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1944', 66, '', 'Thá»£ ná»', '<br>'),
(948, 1681710803025, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br>'),
(949, 1681710803025, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br>'),
(950, 1681710803025, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', '<br>'),
(951, 1681710803025, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'CÃ²n nhá»', '<br>'),
(952, 1681710803025, '', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br>'),
(953, 1681710803025, '', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'NhÃ¢n viÃªn cÃ´ng ty Ã´ tÃ´ TrÆ°á»ng Háº£i', '<br>'),
(954, 1681710803026, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Thá»£ mÃ¡y', '<br>'),
(955, 1681710803024, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1956', 54, '', 'GiÃ¡o viÃªn', '<br>'),
(956, 1681710803024, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1967', 43, 'HÃ m TÃ¢n, tá»‰nh BÃ¬nh Thuáº­n', 'LÃ m nÃ´ng', '<br>'),
(957, 1681710803024, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1987', 0, 'Tp Há»“ ChÃ­ Minh', 'CÃ´ng nhÃ¢n', '<br>'),
(958, 1681710803024, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br>'),
(959, 1681710803024, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'Há»c sinh', '<br>'),
(960, 1851701053021, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '1929', 0, '', '', '<br>'),
(961, 1851701053021, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1951', 59, '19 LÃª Lá»£i, ÄÃ  Náºµng', 'CÃ¡n bá»™ nghá»‰ hÆ°u', '<br>'),
(962, 1851701053021, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1978', 32, '', 'BuÃ´n bÃ¡n', '<br>'),
(963, 1851701053021, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1976', 34, '19 LÃª Lá»£i, ÄÃ  Náºµng', 'Káº¿ toÃ¡n', '<br>'),
(964, 181317010503025, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '', 0, '', '', '<br>'),
(965, 181317010503025, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'ÄÃ£ máº¥t', '', 0, '', '', '<br>'),
(966, 181317010503025, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br>'),
(967, 181317010503025, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '14/2/1994', 16, '', 'Há»c sinh', '<br>'),
(968, 181317010503025, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'NÃ´ng', '<br>'),
(969, 181317010503025, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'NÃ´ng', '<br>'),
(970, 181317010503025, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'NÃ´ng', '<br>'),
(971, 181317010503025, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'NÃ´ng', '<br>'),
(972, 181317010503025, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br>'),
(973, 181317010503025, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br>'),
(974, 181317010503025, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br>'),
(975, 181317010503025, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br>'),
(976, 181317010503025, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '', 0, '', 'BuÃ´n bÃ¡n', '<br>'),
(977, 10217010203023, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1965', 45, '', 'NÃ´ng', '<br>'),
(978, 10217010203023, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1966', 44, '', 'NÃ´ng', '<br>'),
(979, 10217010203023, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1988', 22, '', '', '<br>'),
(980, 10217010203023, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1992', 18, '', 'Sinh viÃªn', '<br>'),
(981, 10217010203023, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1996', 14, '', 'Há»c sinh', '<br>'),
(982, 20010603007, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1954', 56, '154 HoÃ ng Diá»‡u, ÄÃ  Náºµng', 'GiÃ¡m Ä‘á»‘c trung tÃ¢m Dentic', '<br>'),
(983, 20010603007, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1960', 50, '154 HoÃ ng Diá»‡u, ÄÃ  Náºµng', 'Ná»™i trá»£', '<br>'),
(984, 20010603007, 'Anh', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1982', 28, '154 HoÃ ng Diá»‡u, ÄÃ  Náºµng', 'NhÃ¢n viÃªn cÃ´ng ty Vinatrans', '<br>'),
(985, 20010603007, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1985', 25, 'SÃ i GÃ²n', '', '<br>'),
(986, 1010303017, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '15/03/1983', 27, 'ÄÃ  Náºµng', '', '<br>'),
(987, 1010303017, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '06/08/2005', 5, 'ÄÃ  Náºµng', 'CÃ²n nhá»', '<br><br>'),
(988, 18010503026, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1955', 55, '121 Nguyá»…n ChÃ¡nh, LiÃªn Chiá»ƒu, ÄÃ  Náºµng', 'Chi há»™i trÆ°á»Ÿng CCB', '<br>'),
(989, 18010503026, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1963', 47, '121 Nguyá»…n ChÃ¡nh, LiÃªn Chiá»ƒu, ÄÃ  Náºµng', 'Ná»™i trá»£', '<br>'),
(990, 18010503026, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1986', 24, '121 Nguyá»…n ChÃ¡nh, LiÃªn Chiá»ƒu, ÄÃ  Náºµng', 'NhÃ¢n viÃªn KCN HÃ²a KhÃ¡nh', '<br>'),
(991, 18010503026, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '2004', 6, '121 Nguyá»…n ChÃ¡nh, LiÃªn Chiá»ƒu, ÄÃ  Náºµng', 'Há»c sinh', '<br>'),
(992, 18010503027, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1945', 65, 'Äiá»‡n An, Äiá»‡n BÃ n, Quáº£ng Nam', 'LÃ m nÃ´ng', '<br>'),
(993, 18010503027, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1949', 61, 'Äiá»‡n An, Äiá»‡n BÃ n, Quáº£ng Nam', 'LÃ m nÃ´ng', '<br>'),
(994, 18010503027, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1975', 35, 'Tá»• 15b, khá»‘i 3, phÆ°á»ng Thanh KhÃª, Há»™i An, Quáº£ng Nam', 'NhÃ¢n viÃªn trung tÃ¢m Ä‘iá»u dÆ°á»¡ng ', '<br>'),
(995, 18010503027, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2002', 8, 'Tá»• 15b, khá»‘i 3, phÆ°á»ng Thanh KhÃª, Há»™i An, Quáº£ng Nam', 'Há»c sinh', '<br>'),
(996, 18010503027, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '2003', 7, 'Tá»• 15b, khá»‘i 3, phÆ°á»ng Thanh KhÃª, Há»™i An, Quáº£ng Nam', 'Há»c sinh', '<br>'),
(997, 18010503027, 'Chá»‹', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1968', 42, '', '', '<br>'),
(998, 18010503027, 'Em', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1976', 34, '', '', '<br>'),
(999, 18010503027, 'Em', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1974', 36, '', '', '<br>'),
(1000, 1810503028, 'Cha', '', 'Trần Quang Vinh', 'Nam', 'ÄÃ£ máº¥t', '1934', 0, '', '', '<br>'),
(1001, 1810503028, 'Máº¹', '', 'Trần Quang Vinh', 'Ná»¯', 'ÄÃ£ máº¥t', '', 0, '', '', '<br>'),
(1002, 1810503028, 'Vá»£', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '1974', 36, 'ThÃ´n Phong Thá»­ I, xÃ£ Äiá»‡n Thá», Äiá»‡n BÃ n, Quáº£ng Nam', '', '<br><br>'),
(1003, 1810503028, 'Con', '', 'Trần Quang Vinh', 'Nam', 'CÃ²n Sá»‘ng', '1999', 11, 'ThÃ´n Phong Thá»­ I, xÃ£ Äiá»‡n Thá», Äiá»‡n BÃ n, Quáº£ng Nam', 'Há»c sinh', '<br>'),
(1004, 1810503028, 'Con', '', 'Trần Quang Vinh', 'Ná»¯', 'CÃ²n Sá»‘ng', '2003', 7, 'ThÃ´n Phong Thá»­ I, xÃ£ Äiá»‡n Thá», Äiá»‡n BÃ n, Quáº£ng Nam', 'Há»c sinh', '<br>');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_hopdonglaodong`
--

CREATE TABLE `qlns_hopdonglaodong` (
  `qlns_mahd` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_mahopdong` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngaybd` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngaykt` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_hinhthuchd` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_noidunghd` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ghichuhd` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_hopdonglaodong`
--

INSERT INTO `qlns_hopdonglaodong` (`qlns_mahd`, `qlns_mahsnv`, `qlns_mahopdong`, `qlns_ngaybd`, `qlns_ngaykt`, `qlns_hinhthuchd`, `qlns_noidunghd`, `qlns_ghichuhd`) VALUES
(10, 1031710303006, '090803.04HDLÄ/CTN', '03/08/2009', '03/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br><br>', '', '<br>'),
(11, 1031710303008, '090803.05HDLÄ/CTN', '03/08/2009', '03/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(12, 1031710303010, '090803.06HDLÄ', '03/08/2009', '03/08/2010', 'há»£p Ä‘á»“ng thá»i háº¡n má»™t nÄƒm<br>', '', '<br>'),
(13, 1031710303012, '090803.02HDLÄ', '03/08/2009', '03/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(14, 1031710303013, '090803.03HDLÄ', '03/08/2009', '03/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(15, 1031710303014, '091001.01HDLÄ', '01/10/2009', '01/10/1010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(16, 1031710300315, '091101.01HDLÄ', '01/11/2009', '01/11/1010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(17, 1021710203001, '090809.19HDLÄ/CTN', '09/08/2009', '09/08/2010', 'Há»£p Ä‘á»“ng lao Ä‘á»™ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(18, 1021710202004, '090806.16HDLÄ/CTN', '06/08/2009', '06/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(19, 1021710203011, '090809.17HDLÄ', '09/08/2009', '09/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(20, 1021710203002, '090809.18HDLÄ/CTN', '09/08/2009', '09/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(21, 1051710203012, '090809.20HDLÄ/CTN', '09/08/2009', '09/08/2010', 'Thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(22, 1941210402001, '090815.32HDLÄ', '15/08/2009', '15/08/2009', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(23, 1941710403002, '091001.03HDLÄ/CTN', '01/10/2009', '01/10/2010', 'Há»£p Ä‘Ã²ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(24, 1941710403003, '091001.04HDLÄ/CTN', '01/10/2009', '01/10/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n<br>', '', '<br>'),
(25, 1851210502001, '090810.21HDLÄ/CTN', '10/08/2009', '10/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(26, 1891710503002, '090810.22HDLÄ/CTN', '10/08/2009', '10/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(27, 1851710503005, '090901.03HDLÄ', '01/09/2009', '01/09/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(28, 1851710503008, '091001.05HDLÄ', '01/10/2009', '01/10/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(29, 1851710503006, '090901.05HDLÄ/CTN', '01/09/2009', '01/09/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(30, 1851710503009, '090901.02HDLÄ/CTN', '01/09/2009', '01/09/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(31, 18917010503010, '090810.23HDLÄ/CTN', '10/08/2009', '10/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(32, 18917010503012, '090810.26HDLÄ/CTN', '09/08/2009', '09/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(33, 18917010503011, '090810.25HDLÄ/CTN', '10/08/2009', '10/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(34, 18917010503013, '090810.26HDLÄ/CTN', '10/08/2009', '10/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(35, 18917010503014, '090810.27HDLÄ/CTN', '10/08/2009', '10/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(36, 2061710603001, '090815.28HDLÄ/CTN', '15/08/2009', '15/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(37, 2061210602002, '090815.29HDLÄ/CTN', '15/08/2009', '15/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(38, 2061710603003, '090815.30HDLÄ/CTN', '15/08/2009', '15/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(39, 2061710603005, '090901.01HDLÄ', '01/09/2009', '01/09/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(40, 2061710603006, '091001.02HDLÄ/CTN', '01/10/2009', '01/10/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(41, 1571710703003, '090804.09HDLÄ/CTN', '04/08/2009', '04/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(42, 1571710703004, '090804.11HDLÄ/CTN', '04/08/2009', '04/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(43, 1571710703006, '090804.08HDLÄ/CTN', '04/08/2009', '04/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(44, 1031210301005, '090803.01HDLÄ/CTN', '03/08/2009', '03/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(45, 15101710703007, '090804.12HDLÄ/CTN', '04/08/2009', '04/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(46, 15101710703008, '090804.14HDLÄ/CTN', '04/08/2009', '04/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(47, 15101710703009, '090804.15HDLÄ/CTN', '04/08/2009', '04/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(48, 15101710703010, '090804.13HDLÄ/CTN', '04/08/2009', '04/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(49, 1681210801001, '090815.31HDLÄ/CTN', '15/08/2009', '15/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(50, 1681710803003, '090803.07HDLÄ/CTN', '03/08/2009', '03/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(51, 1021510202016, '091101.02HDLÄ/CTN', '01/11/2009', '01/11/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(52, 1571710703002, '090804.10HDLÄ/CTN', '04/08/2009', '04/08/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(53, 1021710203022, '091101.03HDLÄ/CTN', '01/11/2009', '01/11/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(54, 1851710503016, '090901.04HDLÄ/CTN', '01/09/2009', '01/09/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(55, 1681710803004, '091201.08HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(56, 1681710803005, '091201.01HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(57, 1681710803024, '091201.03HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(58, 1681710803007, '091201.07HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(59, 1681710803010, '091201.10HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(60, 1681710803011, '091201.04HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(61, 1681710803014, '091201.05HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(62, 1681710803016, '091201.06HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(63, 16817010803017, '091201.11HDLÄ/CTN', '01/12/2009', '10/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(64, 1681710803026, '091201.02HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(65, 1681710803027, '091201.09HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(66, 1681710803018, '091201.18HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(67, 1681710803019, '091201.15HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(68, 1681710803020, '091201.16HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(69, 1681710803021, '091201.17HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(70, 1681710803022, '091201.14HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i háº¡n 1 nÄƒm<br>', '', '<br>'),
(71, 1681710803023, '091201.13HDLÄ/CTN', '01/12/2009', '01/12/2010', 'Há»£p Ä‘á»“ng thá»i&nbsp; háº¡n 1 nÄƒm<br>', '', '<br>');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_hosonhanvien`
--

CREATE TABLE `qlns_hosonhanvien` (
  `qlns_hsnv` int(11) NOT NULL,
  `qlns_mact` int(11) NOT NULL,
  `qlns_mabp` int(11) NOT NULL,
  `qlns_macv` int(11) NOT NULL,
  `qlns_manv` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_honv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tennv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngaysinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tuoinv` int(11) NOT NULL,
  `qlns_noisinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_quanns` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tinhthanhns` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_quequan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_quanqq` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tinhthanhqq` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tamtru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_quantt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tinhthanhtt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_gioitinh` int(1) NOT NULL DEFAULT '0',
  `qlns_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_trinhdo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_chuyenmon` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_vanbangkhac` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_chucdanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_nvcongty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_anhnvien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tinhtrangnv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_macmnd` int(11) NOT NULL,
  `qlns_noicap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngaycap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ghichu` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tinhtranghn` int(1) NOT NULL DEFAULT '0',
  `qlns_quoctich` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_dienthoainha` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_dthoaididong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_quandc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tinhthanhdc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_dantoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tongiao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_hinhthuctuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_hosonhanvien`
--

INSERT INTO `qlns_hosonhanvien` (`qlns_hsnv`, `qlns_mact`, `qlns_mabp`, `qlns_macv`, `qlns_manv`, `qlns_mahsnv`, `qlns_honv`, `qlns_tennv`, `qlns_ngaysinh`, `qlns_tuoinv`, `qlns_noisinh`, `qlns_quanns`, `qlns_tinhthanhns`, `qlns_quequan`, `qlns_quanqq`, `qlns_tinhthanhqq`, `qlns_tamtru`, `qlns_quantt`, `qlns_tinhthanhtt`, `qlns_gioitinh`, `qlns_email`, `qlns_trinhdo`, `qlns_chuyenmon`, `qlns_vanbangkhac`, `qlns_chucdanh`, `qlns_nvcongty`, `qlns_anhnvien`, `qlns_tinhtrangnv`, `qlns_macmnd`, `qlns_noicap`, `qlns_ngaycap`, `qlns_ghichu`, `qlns_tinhtranghn`, `qlns_quoctich`, `qlns_dienthoainha`, `qlns_dthoaididong`, `qlns_diachi`, `qlns_quandc`, `qlns_tinhthanhdc`, `qlns_dantoc`, `qlns_tongiao`, `qlns_hinhthuctuyen`) VALUES
(44, 10, 3, 17, 10303006, 1031710303006, 'Huá»³nh', 'Vinh', '14/4/1978', 31, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', 'Huáº¿', 'Kim Long', 'Huáº¿', 'K52/16 Tráº§n Cao VÃ¢n ', 'Thanh KhÃª', 'ÄÃ  Náºµng', 0, '', 'Äáº¡i Há»c', 'Káº¿ toÃ¡n', 'Anh vÄƒn C, ká»¹ thuáº­t viÃªn tin há»c', 'Káº¿ toÃ¡n xÃ¢y dá»±ng', '31/3/2009', 'News_xuanhien.jpg', '1', 0, 'CA ÄÃ  Náºµng', '29/4/1999', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'K52/16 Tráº§n Cao VÃ¢n ', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'Pháº­t giÃ¡o', '1'),
(45, 10, 3, 17, 10303008, 1031710303008, 'Nguyá»…n', 'Vinh', '1/1/1985', 24, 'NhÃ  há»™ sinh khu vá»±c I', '', 'Thá»«a ThiÃªn Huáº¿', 'Huáº¿', 'Quáº£ng PhÆ°á»›c, Quáº£ng Äiá»n', 'Thá»«a ThiÃªn Huáº¿', 'Tá»• 8, Háº£i PhÃ²ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', 0, '', 'Cao Äáº³ng', 'Káº¿ toÃ¡n tá»•ng há»£p', 'Anh vÄƒn B', 'Káº¿ toÃ¡n taxi', '5/3/2009', 'News_nhi.jpg', '1', 0, 'CA ÄÃ  Náºµng', '2/8/2000', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»© Háº¡', 'HÆ°Æ¡ng TrÃ ', 'Thá»«a ThiÃªn Huáº¿', 'Kinh', 'KhÃ´ng', '1'),
(46, 10, 3, 17, 10303010, 1031710303010, 'NgÃ´', 'Vinh', '7/6/1983', 27, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', 'PhÃº CÃ¡t', '', 'Huáº¿', 'LÃ´ 16/14 Khu TÃ¢y Nam', 'HÃ²a CÆ°á»ng', 'ÄÃ  Náºµng', 0, '', 'Trung Cáº¥p', 'Káº¿ toÃ¡n', 'Anh vÄƒn B, KTV Tin há»c', 'Káº¿ toÃ¡n xÆ°á»Ÿng', '1/2/2009', 'News_Ngo_Hoang_Quan.jpg', '1', 0, 'CA ÄÃ  Náºµng', '25/1/1999', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113697377', '0905246855', '175/13 Ã”ng Ãch KhiÃªm ', 'Háº£i ChÃ¢u', 'Thá»«a ThiÃªn Huáº¿', 'Kinh', 'Pháº­t giÃ¡o', '1'),
(47, 10, 3, 17, 10303011, 1031710303011, 'VÃµ ', 'Vinh', '8/9/1971', 38, 'Gia Lai', '', 'Gia Lai', 'CÃ¡t SÆ¡n', 'PhÃ¹ CÃ¡t', 'BÃ¬nh Äá»‹nh', 'LÃ´ 34 Khu An Háº£i Báº¯c', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 0, '', 'Äáº¡i Há»c', 'Káº¿ toÃ¡n', 'Anh vÄƒn B, THVP', 'káº¿ toÃ¡n viÃªn', '', 'News_thuyhuong.jpg', '1', 0, 'CA Gia Lai', '24/7/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Háº»m 86, Pháº¡m VÄƒn Äá»“ng ', '', 'Tp Pleiku, Gia Lai', 'Kinh', 'KhÃ´ng', '1'),
(48, 10, 3, 17, 10303012, 1031710303012, 'Tráº§n', 'Vinh', '14/7/1982', 27, 'Quáº£ng Nam', '', 'Quáº£ng Nam', 'Äáº¡i Tháº¯ng', 'Äáº¡i Lá»™c', 'Quáº£ng Nam', 'Tá»• 46, phÆ°á»ng Má»¹ An ', 'NgÅ© HÃ nh SÆ¡n', 'ÄÃ  Náºµng', 0, '', 'Äáº¡i Há»c', 'Káº¿ toÃ¡n', 'Anh vÄƒn C, THVP', 'Káº¿ toÃ¡n thuáº¿', '2/6/2009', 'News_c.jpg', '1', 0, 'CA Quáº£ng Nam', '26/6/1998', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Äáº¡i Tháº¯ng', 'Äáº¡i Lá»™c', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(49, 10, 3, 17, 10303013, 1010303013, 'Tráº§n', 'Vinh', '20/3/1983', 26, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', 'Thá»§y Thanh', 'HÆ°Æ¡ng Thá»§y', 'Thá»«a ThiÃªn Huáº¿', 'Tá»• 22 phÆ°á»ng Tam Thuáº­n ', 'Thanh KhÃª', 'ÄÃ  Náºµng', 0, '', 'Äáº¡i Há»c', 'Káº¿ toÃ¡n', 'Anh vÄƒn B, TH á»©ng dá»¥ng', 'Thá»§ quá»¹', '', 'News_loan.jpg', '1', 0, 'CA ÄÃ  Náºµng', '30/5/2000', '<BR><INPUT id=gwProxy type=hidden><!--Session data--><INPUT id=jsProxy onclick=jsCall(); type=hidden>\r\n<DIV id=refHTML></DIV>', 0, 'Viá»‡t Nam', '05116273657', '0905246855', 'Tá»• 22 phÆ°á»ng Tam Thuáº­n ', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(50, 10, 3, 17, 10303014, 1031710303014, 'LÃª', 'Vinh', '10/6/1985', 24, 'Quáº£ng Nam', '', 'Quáº£ng Nam', 'Duy SÆ¡n', 'Duy XuyÃªn', 'Quáº£ng Nam', '366/16 HÃ¹ng VÆ°Æ¡ng', '', 'ÄÃ  Náºµng', 1, '', 'Cao Äáº³ng', 'Káº¿ toÃ¡n tin há»c', 'khÃ´ng', 'Káº¿ toÃ¡n xÃ¢y dá»±ng', '8/2009', 'News_ducthuan.jpg', '1', 0, 'CA Quáº£ng Nam', '29/7/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Duy SÆ¡n', 'Duy XuyÃªn', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(51, 10, 3, 17, 10300315, 1031710300315, 'Nguyá»…n', 'Vinh', '10/6/1985', 24, 'Quáº£ng Nam', '', 'Quáº£ng Nam', 'ThÃ´n 2, Äiá»‡n DÆ°Æ¡ng', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '166 HÃ¹ng VÆ°Æ¡ng', '', 'ÄÃ  Náºµng', 0, '', 'Cao Äáº³ng', 'Tin há»c', 'Káº¿ toÃ¡n ', 'Káº¿ toÃ¡n taxi', '17/8/2009', 'News_hongthao.jpg', '1', 0, 'CA Quáº£ng Nam', '18/5/2009', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'ThÃ´n 2, Äiá»‡n DÆ°Æ¡ng ', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(52, 10, 2, 17, 10203001, 1021710203001, 'NgÃ´', 'Vinh', '10/11/1986', 23, 'Quáº£ng Nam', '', 'Quáº£ng Nam', 'Tam Ká»³', '', 'Quáº£ng Nam', '19 Triá»‡u Viá»‡t VÆ°Æ¡ng', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 0, '', 'Trung Cáº¥p', 'Káº¿ toÃ¡n', '', 'Lá»… tÃ¢n', '1/6/2008', 'News_diemcutga.jpg', '1', 0, 'CA Quáº£ng Nam', '12/5/2001', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '0510544201', '0905246855', 'Tam Tháº¡nh, NÃºi ThÃ nh', '', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(53, 10, 2, 17, 10202004, 1021710202004, 'Pháº¡m', 'Vinh', '18/9/1985', 24, 'NhÃ  há»™ sinh Khu vá»±c I', '', 'Huáº¿', 'Vinh An', 'PhÃº Vang', 'Thá»«a ThiÃªn Huáº¿', '217 NÃºi ThÃ nh', '', 'ÄÃ  Náºµng', 0, '', 'Äáº¡i Há»c', 'Kinh táº¿', 'Anh vÄƒn C, THVP', 'NhÃ¢n viÃªn HC_NS', '20/10/2008', 'News_minhhuong.jpg', '1', 0, 'CA Huáº¿', '1/3/2000', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', '14 Phá»§ Thoáº¡i ThÃ¡i, Chi lÄƒng  ', '', 'Huáº¿', 'Kinh', 'ThiÃªn ChÃºa', '1'),
(54, 10, 2, 17, 10203011, 1021710203011, 'TrÆ°Æ¡ng', 'Vinh', '2/3/1986', 23, 'BÃ¬nh Äá»‹nh', '', 'BÃ¬nh Äá»‹nh', 'Äáº­p ÄÃ¡', 'An NhÆ¡n', 'BÃ¬nh Äá»‹nh', '19 Triá»‡u Viá»‡t VÆ°Æ¡ng', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 0, '', 'Trung Cáº¥p', 'HÃ nh chÃ­nh vÄƒn thÆ°', 'THVP', 'NhÃ¢n viÃªn HC-NS', '2/4/2009', 'News_nhung.jpg', '1', 0, 'CA BÃ¬nh Äá»‹nh', '17/7/2001', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Äáº­p ÄÃ¡   ', 'An NhÆ¡n', 'BÃ¬nh Äá»‹nh', 'Kinh', 'KhÃ´ng', '1'),
(56, 10, 2, 17, 10203002, 1010203002, 'VÃµ', 'Vinh', '4/12/1982', 27, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', 'Tá»• 2, Thanh Lá»™c ÄÃ¡n', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'K29/8 Huá»³nh Ngá»c Huá»‡', '', 'ÄÃ  Náºµng', 0, '', 'Trung Cáº¥p', 'Tin há»c, káº¿ toÃ¡n', '', 'NhÃ¢n viÃªn HC-NS', '1/6/2008', 'News_duyen.jpg', '1', 0, 'CA ÄÃ  Náºµng', '3/9/2002', '<BR><INPUT id=gwProxy type=hidden><!--Session data--><INPUT id=jsProxy onclick=jsCall(); type=hidden>\r\n<DIV id=refHTML></DIV><INPUT id=gwProxy type=hidden><!--Session data--><INPUT id=jsProxy onclick=jsCall(); type=hidden>\r\n<DIV id=refHTML></DIV>', 1, 'Viá»‡t Nam', '', '0905246855', 'K29/8 Huá»³nh Ngá»c Huá»‡  ', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(57, 10, 2, 17, 10203008, 1021710203008, 'Nguyá»…n', 'Vinh', '10/12/1958', 51, 'Quáº£ng Nam', '', 'Quáº£ng Nam', 'Äáº¡i NghÄ©a', 'Äáº¡i Lá»™c', 'Quáº£ng Nam', 'Tá»• 10, phÆ°á»ng ChÃ­nh GiÃ¡n', 'Thanh KhÃª', 'ÄÃ  Náºµng', 0, '', 'THPT', '', '', 'Táº¡p vá»¥', '1/6/2008', 'News_xuanmai.jpg', '1', 0, 'CA Quáº£ng Nam', '7/7/1992', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113646957', '0905246855', 'Tá»• 10, phÆ°á»ng ChÃ­nh GiÃ¡n  ', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '0'),
(59, 10, 2, 17, 10203010, 1021710203010, 'Nguyá»…n', 'Vinh', '1/2/1942', 67, '', '', '', '', '', '', '', '', '', 1, '', 'THCS', '', '', 'Báº£o vá»‡', '1/6/2008', '', '1', 0, '', '', '<br>', 1, 'Viá»‡t Nam', '05113895791', '0905246855', 'K133/1 Mai LÃ£o Báº¡ng, ÄÃ  Náºµng<br> ', '', '', '', '', '0'),
(60, 18, 5, 17, 10203012, 1851710203012, 'BÃ¹i', 'Vinh', '30/6/1972', 37, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', 'XÃ¡ ChÃ­nh', 'Gio Linh', 'Quáº£ng Trá»‹', '101 Ä‘Æ°á»ng 3/2', '', 'ÄÃ  Náºµng', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn hÃ nh chÃ­nh', '17/3/2009', 'News_5.jpg', '1', 0, 'CA ÄÃ  Náºµng', '19/6/2001', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '101 Ä‘Æ°á»ng 3/2', '', 'ÄÃ  Náºµng', 'Kinh', 'ThiÃªn ChÃºa', '1'),
(61, 10, 2, 17, 10203013, 1021710203013, 'Tráº§n', 'Vinh', '2/8/1973', 36, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', 'ÄÃ´ng HÃ ', '', 'Quáº£ng Trá»‹', 'Khu chung cÆ° 3, Nguyá»…n Äá»©c Cáº£nh', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 1, '', 'THPT', 'LÃ¡i xe', '', 'LÃ¡i xe', '1/9/2009', 'News_quochung.jpg', '1', 0, 'CA ÄÃ  Náºµng', '1/2/2005', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '40 Thanh Thá»§y', '', 'ÄÃ  Náºµng', 'Kinh', 'Pháº­t giÃ¡o', '1'),
(62, 10, 2, 17, 10203014, 1021710203014, 'Nguyá»…n', 'Vinh', '28/12/1966', 43, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', 'PhÃº Cam', '', 'Huáº¿', '112 Chung cÆ° 3, Nguyá»…n Äá»©c Cáº£nh ', 'Thuáº­n PhÆ°á»›c', 'ÄÃ  Náºµng', 1, '', 'THPT', 'LÃ¡i xe', '', 'LÃ¡i xe', '25/7/2009', 'News_nguyenvanson.jpg', '1', 0, 'CA ÄÃ  Náºµng', '15/8/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '0903575040', '0905246855', 'Tá»• 62 Thuáº­n PhÆ°á»›c', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(63, 10, 2, 17, 10203015, 1021710203015, 'Nguyá»…n', 'Vinh', '21/3/1966', 43, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', '209 Ä‘Æ°á»ng HoÃ ng Diá»‡u', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Khu B2 LÃ´ 9, PhÃ¹ng HÆ°ng, HÃ²a Minh', 'LiÃªn Chiá»ƒu', 'ÄÃ  Náºµng', 0, '', 'THPT', 'Náº¥u Äƒn', '', 'Táº¡p vá»¥', '9/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '27/1/1994', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Khu B2 LÃ´ 9, PhÃ¹ng HÆ°ng, HÃ²a Minh', 'LiÃªn Chiá»ƒu', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(64, 19, 4, 12, 10402001, 1941210402001, 'Phan', 'Vinh', '3/8/1984', 25, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', 'PhÃº CÃ¡t', '', 'Huáº¿', '563 Tráº§n Cao VÃ¢n', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'Äáº¡i Há»c', 'Ká»¹ sÆ° Ä‘iá»‡n tá»­', '', 'GiÃ¡m Ä‘á»‘c á»¨ng dá»¥ng cÃ´ng nghá»‡', '20/9/2009', 'News_chanhhien.jpg', '1', 0, 'CA ÄÃ  Náºµng', '23/9/1999', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 20A XuÃ¢n HÃ ', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '0'),
(65, 19, 4, 17, 10403002, 1941710403002, 'Pháº¡m', 'Vinh', '28/7/1986', 23, 'HoÃ i PhÃº', 'HoÃ i NhÆ¡n', 'BÃ¬nh Äá»‹nh', 'HoÃ i PhÃº', 'HoÃ i NhÆ¡n', 'BÃ¬nh Äá»‹nh', '261 Háº£i PhÃ²ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'Äáº¡i Há»c', 'CÆ¡ khÃ­ Ä‘á»™ng lá»±c', '', 'NhÃ¢n viÃªn Ká»¹ thuáº­t', '20/8/2009', 'News_vanthang.jpg', '2', 0, 'CA BÃ¬nh Äá»‹nh', '11/9/2000', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'HoÃ i PhÃº', 'HoÃ i NhÆ¡n', 'BÃ¬nh Äá»‹nh', 'Kinh', 'KhÃ´ng', '1'),
(66, 19, 4, 17, 10403003, 1941710403003, 'VÅ©', 'Vinh', '31/1/1984', 25, 'Pleiku', '', 'Gia Lai', 'YÃªn NhÃ¢n', 'YÃªn Má»™', 'Ninh BÃ¬nh', '249/3 TÃ´n Äá»©c Tháº¯ng', 'LiÃªn Chiá»ƒu', 'ÄÃ  Náºµng', 1, '', 'Äáº¡i Há»c', 'CÆ¡ khÃ­ Ä‘á»™ng lá»±c', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '1/9/2009', 'News_thanhnguyen.jpg', '2', 0, 'CA Gia Lai', '13/10/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 11, phÆ°á»ng Hoa LÆ°', '', 'Tp Pleiku, Gia Lai', 'Kinh', 'KhÃ´ng', '1'),
(67, 18, 5, 12, 10502001, 1851210502001, 'Nguyá»…n', 'Vinh', '6/5/1984', 25, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', '', 'HÃ²a Vang', 'Äa', 'HÃ²a LiÃªn', 'HÃ²a Vang, LiÃªn Chiá»ƒu ', 'ÄÃ  Náºµng', 1, '', 'Äáº¡i Há»c', 'Ká»¹ sÆ° xÃ¢y dá»±ng', '', 'GiÃ¡m Ä‘á»‘c Quáº£n lÃ½ xÃ¢y dá»±ng', '1/6/2008', 'News_vuqlxd.jpg', '1', 0, 'CA ÄÃ  Náºµng', '15/3/2000', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'HÃ²a LiÃªn', 'HÃ²a Vang, LiÃªn Chiá»ƒu ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(68, 18, 9, 17, 10503002, 1891710503002, 'LÃª', 'Vinh', '29/9/1975', 34, 'Quáº¿ PhÃº', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', 'Quáº¿ PhÃº', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', 'K14/12 LÃª Äá»™ ', '', 'ÄÃ  Náºµng', 1, '', 'THPT', 'Ká»¹ Thuáº­t Ä‘iá»‡n nÆ°á»›c', '', 'Tá»• trÆ°á»Ÿng tá»• Ä‘iá»‡n nÆ°á»›c', '1/6/2008', 'News_a_thang.jpg', '1', 0, 'CA Quáº£ng Nam', '3/10/1993', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113648419', '0905246855', 'Quáº¿ PhÃº', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(69, 18, 5, 17, 10502002, 1851710502002, 'Tráº§n', 'Vinh', '2/1/1978', 31, '', '', 'Quáº£ng NgÃ£i', 'Tá»• dÃ¢n phá»‘ II,thá»‹ tráº¥n La HÃ ', 'TÆ° NghÄ©a', 'Quáº£ng NgÃ£i', 'Tá»• 50, phÆ°á»ng HÃ²a CÆ°á»ng Báº¯c', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 1, '', 'Äáº¡i Há»c', 'Ká»¹ sÆ° xÃ¢y dá»±ng', 'Anh vÄƒn B', 'Ká»¹ sÆ° trÆ°á»Ÿng', '15/7/2008', 'News_A_Thanh.jpg', '1', 0, 'CA Quáº£ng NgÃ£i', '1996', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 50, phÆ°á»ng HÃ²a CÆ°á»ng Báº¯c', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(72, 18, 5, 17, 10503005, 1851710503005, 'LÃª', 'Vinh', '15/2/1983', 26, 'Long An', '', 'Long An', '', 'Äá»©c Huá»‡', 'Long An', '261 Háº£i PhÃ²ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'THPT', 'LÃ¡i xe', '', 'NVLX cuá»‘c', '', 'News_13.jpg', '2', 0, 'CA Long An', '7/11/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', '134 ÄÆ°á»ng 68 Pio', 'quáº­n 6', 'Há»“ ChÃ­ Minh', 'Kinh', 'KhÃ´ng', '1'),
(73, 18, 5, 17, 10503008, 1810503008, 'Nguyá»…n', 'Vinh', '27/11/1985', 24, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', 'Duy An', 'Duy XuyÃªn', 'Quáº£ng Nam', 'K58/3 DÅ©ng SÄ©', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'Äáº¡i Há»c', 'Kinh táº¿ xÃ¢y dá»±ng vÃ  quáº£n lÃ½ dá»± Ã¡n', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '3/9/2009', 'News_ngoccong.jpg', '2', 0, 'CA BÃ¬nh Äá»‹nh', '11/4/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'K58/3 DÅ©ng SÄ©', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(74, 18, 18, 17, 10503006, 1851710503006, 'Nguyá»…n', 'Vinh', '10/10/1985', 24, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', 'HÃ²a LiÃªn, HÃ²a Vang', 'LiÃªn Chiá»ƒu', 'ÄÃ  Náºµng', 'HÃ²a LiÃªn, HÃ²a Vang', 'LiÃªn Chiá»ƒu', 'ÄÃ  Náºµng', 1, '', 'Cao Äáº³ng', 'Cáº§u Ä‘Æ°á»ng, Ä‘Æ°á»ng bá»™', '', 'nhÃ¢n viÃªn ká»¹ thuáº­t', '8/9/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '16/3/2000', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'HÃ²a LiÃªn, HÃ²a Vang', 'LiÃªn Chiá»ƒu', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(75, 18, 5, 17, 10503009, 1810503009, 'TrÆ°Æ¡ng', 'Vinh', '20/5/1981', 29, '', 'NÃºi ThÃ nh', 'Quáº£ng Nam-ÄÃ  Náºµng', 'Tam XuÃ¢n 2', 'NÃºi ThÃ nh', 'Quáº£ng Nam', '261 Háº£i PhÃ²ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'Äáº¡i Há»c', 'Ká»¹ sÆ° xÃ¢y dá»±ng', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '1/9/2009', '', '1', 0, 'CA Quáº£ng Nam', '17/8/2006', '<BR>', 1, 'Viá»‡t Nam', '05103591110', '0905246855', 'Tá»• 2, thÃ´n BÃ  Báº§u, Tam XuÃ¢n 2', 'NÃºi ThÃ nh', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(76, 18, 9, 17, 10503010, 1891710503010, 'VÃµ', 'Vinh', '10/5/1979', 30, 'Quáº¿ PhÃº', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', 'Quáº¿ PhÃº', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', '261 Háº£i PhÃ²ng ', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'THPT', 'ká»¹ thuáº­t Ä‘iá»‡n nÆ°á»›c', '', 'Ká»¹ thuáº­t Ä‘iá»‡n nÆ°á»›c', '1/6/2008', 'News_04.jpg', '1', 0, 'CA Quáº£ng Nam', '28/8/1997', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'ThÃ´n 9, xÃ£ Quáº¿ PhÃº', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(77, 18, 9, 17, 10503011, 18917010503011, 'LÃª', 'Vinh', '1978', 32, '', '', 'Quáº£ng Nam', 'Quáº¿ XuÃ¢n', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', '261 Háº£i PhÃ²ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'THPT', 'Ká»¹ thuáº­t Ä‘iá»‡n nÆ°á»›c', '', 'Ká»¹ Thuáº­t Ä‘iá»‡n nÆ°á»›c', '1/6/2008', '', '1', 0, 'CA Quáº£ng Nam', '16/2/2008', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 8, thÃ´n PhÃº Lá»‘c, xÃ£ Quáº¿ PhÃº', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(78, 18, 9, 17, 10503012, 18917010503012, 'Nguyá»…n', 'Vinh', '9/5/1981', 28, '', '', 'Quáº£ng Nam', 'Quáº¿ XuÃ¢n', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', '261 Háº£i PhÃ²ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'Trung Cáº¥p', 'Há»‡ thá»‘ng Ä‘iá»‡n', '', 'Ká»¹ Thuáº­t Ä‘iá»‡n nÆ°á»›c', '1/6/2008', '', '1', 0, 'CA Quáº£ng Nam', '20/3/2000', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'ThÃ´n HÃ²a DÆ°á»¡ng, xÃ£ Quáº¿ XuÃ¢n II', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(79, 18, 9, 17, 10503013, 18917010503013, 'Mai', 'Vinh', '18/8/1991', 18, '', '', 'Quáº£ng Nam', 'BÃ¬nh Phá»¥c', 'ThÄƒng BÃ¬nh', 'Quáº£ng Nam', '261 Háº£i PhÃ²ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'THPT', 'Thá»£ Ä‘iá»‡n nÆ°á»›c', '', 'Ká»¹ Thuáº­t Ä‘iá»‡n nÆ°á»›c', '1/6/2008', '', '1', 0, 'CA Quáº£ng Nam', '30/12/2005', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Ngá»c SÆ¡n, xÃ£ BÃ¬nh Phá»¥c', 'ThÄƒng BÃ¬nh', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '0'),
(80, 18, 9, 17, 10503014, 1891710503014, 'Tráº§n', 'Vinh', '10/7/1982', 27, '', '', 'Quáº£ng Nam', '', '', '', 'Tá»• 4, PhÆ°á»›c Má»¹', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 1, '', 'THCS', 'Ká»¹ thuáº­t Ä‘iá»‡n', '', 'Ká»¹ Thuáº­t Ä‘iá»‡n nÆ°á»›c', '01/01/2009', 'News_07.jpg', '1', 0, 'CA Quáº£ng Nam', '28/3/2006', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'ThÃ´n 13, Quáº¿ PhÃº', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '0'),
(81, 20, 6, 17, 10603001, 2061710603001, 'LÃª', 'Vinh', '6/10/1983', 26, 'Huáº¿', '', 'Huáº¿', 'Thiá»‡u Duy', 'Thiá»‡u HÃ³a', 'Thanh HÃ³a', '', '', 'ÄÃ  Náºµng', 1, '', 'Cao Äáº³ng', 'Tin há»c', '', 'Thiáº¿t káº¿ viÃªn', '1/6/2008', 'News_Quanlh.jpg', '2', 0, 'CA Huáº¿', '12/3/1998', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', '15 TrÆ°ng Ná»¯ VÆ°Æ¡ng', 'HÆ°Æ¡ng Thá»§y', 'Thá»«a ThiÃªn Huáº¿', 'Kinh', 'KhÃ´ng', '1'),
(82, 20, 6, 12, 10602002, 2061210602002, 'Tráº§n', 'Vinh', '1/11/1984', 25, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', 'HÃ²a QuÃ½, NgÅ© HÃ nh SÆ¡n', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'K47/19 LÃª BÃ¡ Trinh', '', 'ÄÃ  Náºµng', 1, '', 'Cao Äáº³ng', 'Tin há»c', '', 'GiÃ¡m Ä‘á»‘c CÃ´ng nghá»‡ thÃ´ng tin', '1/6/2008', 'News_News_Vinhtq .jpg', '1', 0, 'CA ÄÃ  Náºµng', '29/6/2006', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 52 HÃ²a CÆ°á»ng', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(83, 20, 6, 17, 10603003, 2061710603003, 'LÃª', 'Vinh', '26/12/1983', 26, 'Quáº£ng BÃ¬nh', '', 'Quáº£ng BÃ¬nh', 'XuÃ¢n Thá»§y', 'Lá»‡ Thá»§y', 'Quáº£ng BÃ¬nh', '261 Háº£i PhÃ²ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'Cao Äáº³ng', 'Káº¿ toÃ¡n tin há»c', 'Anh vÄƒn C', 'Láº­p trÃ¬nh viÃªn', '1/6/2008', 'News_quynhlt.jpg', '1', 0, 'CA Quáº£ng BÃ¬nh', '11/5/2000', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '052882110', '0905246855', 'Äá»™i 2, thÃ´n Má»¹ Lá»™c, xÃ£ An Thá»§y', 'Lá»‡ Thá»§y', 'Quáº£ng BÃ¬nh', 'Kinh', 'KhÃ´ng', '1'),
(84, 20, 6, 17, 10603005, 2010603005, 'LÃª', 'Vinh', '26/9/1985', 24, 'Quáº£ng BÃ¬nh', '', 'Quáº£ng BÃ¬nh', 'XuÃ¢n Thá»§y', 'Lá»‡ Thá»§y', 'Quáº£ng BÃ¬nh', 'Tá»• 46, ÄÃ´ng XuÃ¢n, An KhÃª', 'Thanh KhÃª', 'ÄÃ  Náºµng', 0, '', 'Äáº¡i Há»c', 'BiÃªn phiÃªn dá»‹ch TA', 'THVP, Chá»©ng chá»‰ nghiá»‡p vá»¥ sÆ° pháº¡m', 'BiÃªn táº­p Web', '29/6/2009', '', '1', 0, 'CA Quáº£ng BÃ¬nh', '29/9/2003', '<BR><INPUT id=gwProxy type=hidden><!--Session data--><INPUT id=jsProxy onclick=jsCall(); type=hidden>\r\n<DIV id=refHTML></DIV>', 1, 'Viá»‡t Nam', '0523965076', '0905246855', 'Äá»™i 2, Mai Háº¡, XuÃ¢n Thá»§y', 'Lá»‡ Thá»§y', 'Quáº£ng BÃ¬nh', 'Kinh', 'KhÃ´ng', '1'),
(85, 20, 6, 17, 10603006, 2061710603006, 'Nguyá»…n', 'Vinh', '12/01/1988', 21, 'ÄÃ  Náºµng', '', 'ÄÃ  Náºµng', 'Tháº¡ch Than', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'K409/21/2 TrÆ°ng Ná»¯ VÆ°Æ¡ng', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 0, '', 'Cao Äáº³ng', 'Marketing', 'Anh vÄƒn B, THVP', 'BiÃªn táº­p Web', '4/9/2009', 'News_thuytrang.jpg', '1', 0, 'CA ÄÃ  Náºµng', '28/6/2005', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 56A, HÃ²a Thuáº­n', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(86, 15, 7, 12, 10701001, 1571210701001, 'Tráº§n', 'Vinh', '28/10/1955', 54, '', '', 'ThÃ¡i BÃ¬nh', 'XÃ£ Viá»‡t HÃ¹ng', 'VÅ© ThÆ°', 'ThÃ¡i BÃ¬nh', '243 Nguyá»…n Tri PhÆ°Æ¡ng, phÆ°á»ng VÄ©nh Trung', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'Äáº¡i Há»c', 'Ká»¹ sÆ° kinh táº¿, cá»­ nhÃ¢n chá»‰ huy ká»¹ thuáº­t Ã´ tÃ´ QS', '', 'GiÃ¡m Ä‘á»‘c Taxi', '1/2009', 'News_Tráº§n XuÃ¢n Yáº¿n.jpg', '1', 0, 'CA ÄÃ  Náºµng', '1/9/1998', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '243 Nguyá»…n Tri PhÆ°Æ¡ng, phÆ°á»ng VÄ©nh Trung', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(87, 15, 7, 17, 10703003, 1571710703003, 'Nguyá»…n', 'Vinh', '19/9/1981', 28, 'Quáº£ng Nam', '', 'Quáº£ng Nam', 'Äiá»‡n HÃ²a', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '179B Nguyá»…n CÃ´ng Trá»©', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 1, '', 'Trung Cáº¥p', 'Sá»­a chá»¯a Ã´ tÃ´', '', 'NhÃ¢n viÃªn phÃ¡p cháº¿', '1/6/2008', 'News_a_tuan.jpg', '1', 0, 'CA Quáº£ng Nam', '21/7/2006', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Äiá»‡n HÃ²a', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(88, 15, 7, 17, 10703004, 1571710703004, 'NgÃ´', 'Vinh', '5/7/1982', 27, '', '', 'ÄÃ  Náºµng', 'HÃ²a Phong', 'HÃ²a Vang', 'ÄÃ  Náºµng', '777 Tráº§n Cao VÃ¢n, Thanh Lá»™c ÄÃ¡n', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'Cao Äáº³ng', 'sÆ° pháº¡m-Ä‘oÃ n Ä‘á»™i', '', 'NhÃ¢n viÃªn phÃ¡p cháº¿', '1/1/2009', 'News_NgÃ´ VÄƒn QuÃ¢n.jpg', '1', 0, 'CA ÄÃ  Náºµng', '12/6/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 15, Thanh KhÃª ÄÃ´ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(89, 15, 7, 17, 10703006, 1571710703006, 'Nguyá»…n', 'Vinh', '25/3/1985', 24, '', '', 'ÄÃ  Náºµng', 'CÃ¡t Trinh', 'PhÃ¹ CÃ¡t', 'BÃ¬nh Äá»‹nh', 'K1/04 Háº£i SÆ¡n', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn phÃ¡p cháº¿', '28/3/2009', 'News_4.jpg', '1', 0, 'CA ÄÃ  Náºµng', '22/12/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113519647', '0905246855', 'K1/04 Háº£i SÆ¡n', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(90, 10, 3, 12, 10301005, 1031210301005, 'Nguyá»…n', 'Vinh', '17/6/1982', 27, '', '', 'Quáº£ng Nam', 'Quáº¿ Phong', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', 'HÃ²a Thá» TÃ¢y', 'Cáº©m Lá»‡', 'ÄÃ  Náºµng', 0, '', 'Äáº¡i Há»c', 'Káº¿ toÃ¡n', '', 'GiÃ¡m Ä‘á»‘c tÃ i chÃ­nh', '5/2009', 'News_hien.jpg', '1', 0, 'CA Quáº£ng Nam', '16/3/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'HÃ²a Thá» TÃ¢y', 'Cáº©m Lá»‡', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(91, 15, 10, 17, 10703007, 15101710703007, 'HoÃ ng', 'Vinh', '16/7/1978', 31, '', '', 'Thanh HÃ³a', 'Thiá»‡u ÄÃ´', 'Thiá»‡u HÃ³a', 'Thanh HÃ³a', '43 LÃª Lá»£i', '', 'ÄÃ  Náºµng', 0, '', 'Äáº¡i Há»c', 'cá»­ nhÃ¢n Anh vÄƒn', '', 'NhÃ¢n viÃªn tá»•ng Ä‘Ã i', '1/2009', 'News_HoÃ ng Thá»‹ Thanh HÆ°Æ¡ng.jpg', '1', 0, 'CA Thanh HÃ³a', '28/3/1996', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113839116', '0905246855', 'Thiá»‡u ÄÃ´', 'Thiá»‡u HÃ³a', 'Thanh HÃ³a', 'Kinh', 'KhÃ´ng', '1'),
(92, 15, 10, 17, 10703008, 1510703008, 'LÃª', 'Vinh', '20/9/1965', 44, '', '', 'ÄÃ  Náºµng', '', '', 'Quáº£ng NgÃ£i', '02 Äá»‘ng Äa', '', 'ÄÃ  Náºµng', 0, '', 'Trung Cáº¥p', 'Thá»±c pháº©m tá»•ng há»£p', 'tiáº¿ng anh C, THVP', 'nhÃ¢n viÃªn tá»•ng Ä‘Ã i', '1/2009', 'News_LÃª ThuÃ½ Hoa.jpg', '1', 0, 'CA ÄÃ  Náºµng', '21/8/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 27 Thuáº­n PhÆ°á»›c', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(93, 15, 10, 17, 10703009, 15101710703009, 'Nguyá»…n', 'Vinh', '18/2/1981', 28, '', '', 'Báº¯c Ninh', 'Minh Äáº¡o', 'TiÃªn SÆ¡n', 'Báº¯c Ninh', 'Tá»• 6, HÃ²a Thá» ÄÃ´ng', 'Cáº©m Lá»‡', 'ÄÃ  Náºµng', 0, '', 'THPT', '', '', 'NhÃ¢n viÃªn tá»•ng Ä‘Ã i', '1/2009', 'News_Nguyá»…n Thá»‹ Háº±ng.jpg', '1', 0, 'CA Báº¯c Ninh', '4/3/1998', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'NghÄ©a Chá»‰, TiÃªn Äáº¡o', 'TiÃªn SÆ¡n', 'Báº¯c Ninh', 'Kinh', 'KhÃ´ng', '1'),
(94, 15, 10, 17, 10703010, 15101710703010, 'Huá»³nh', 'Vinh', '4/11/1982', 27, '', '', 'ÄÃ  Náºµng', 'HoÃ i Báº£o', 'HoÃ i NhÆ¡n', 'BÃ¬nh Äá»‹nh', 'LÃ´ 34B1.12 KhuÃª Trung', 'Cáº©m Lá»‡', 'ÄÃ  Náºµng', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn tá»•ng Ä‘Ã i', '1/2009', 'News_Huá»³nh Minh PhÆ°á»›c.jpg', '1', 0, 'CA ÄÃ  Náºµng', '28/2/06', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 21 HÃ²a CÆ°á»ng', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(95, 15, 7, 17, 10703011, 1571710703011, 'ÄoÃ n', 'Vinh', '23/11/1957', 52, '', '', 'ÄÃ  Náºµng', 'DÆ°Æ¡ng Ná»—', '', 'BÃ¬nh Trá»‹ ThiÃªn', '', ' Thanh KhÃª ', 'ÄÃ  Náºµng', 1, '', 'THCS', '', '', 'NhÃ¢n viÃªn Ä‘iá»u hÃ nh sÃ¢n bay', '1/2009', 'News_ÄoÃ n LÃª Liá»…u.jpg', '1', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, '', '', '0905246855', 'Tá»• 10, phÆ°á»ng VÄ©nh Trung', ' Thanh KhÃª ', 'ÄÃ  Náºµng', '', '', '1'),
(96, 16, 8, 12, 10801001, 1681210801001, 'LÃª', 'Vinh', '4/2/1983', 26, '', '', 'Kon Tum', 'Phong HÃ²a', 'HÆ°Æ¡ng Äiá»n', 'Thá»«a ThiÃªn Huáº¿', '261 Háº£i PhÃ²ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'Cao Äáº³ng', 'Tin há»c', '', 'GiÃ¡m Ä‘á»‘c XÆ°á»Ÿng cÆ¡ khÃ­ sá»­a chá»¯a Ã´ tÃ´', '1/6/2008', 'News_khanhcutcho.jpg', '1', 0, 'CA Kon Tum', '2/8/1999', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', '68A LÃ½ ThÆ°á»ng Kiá»‡t, thá»‹ xÃ£ Kon Tum', '', 'Kon Tum', 'Kinh', 'KhÃ´ng', '1'),
(97, 16, 8, 17, 10803003, 1681710803003, 'VÃµ', 'Vinh', '15/6/1987', 22, '', '', 'Quáº£ng Nam', 'Duy Vinh', 'Duy XuyÃªn', 'Quáº£ng Nam', '179 B Nguyá»…n CÃ´ng Trá»©', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 1, '', 'Cao Äáº³ng', 'XÃ¢y dá»±ng dÃ¢n dá»¥ng vÃ  cÃ´ng nghiá»‡p', '', 'Thá»§ kho XÆ°á»Ÿng', '27/1/2009', 'News_6.jpg', '1', 0, 'CA Quáº£ng Nam', '17/6/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 36, thÃ´n TrÃ  ÄÃ´ng, Duy Vinh', 'Duy XuyÃªn', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(98, 16, 8, 17, 10803004, 1681710803004, 'Nguyá»…n', 'Vinh', '28/3/1982', 27, '', '', 'ÄÃ  Náºµng', 'Duy An', 'Duy XuyÃªn', 'Quáº£ng Nam', 'K169/4 LÃª Duáº«n', '', 'ÄÃ  Náºµng', 1, '', 'Cao Äáº³ng', 'Thá»£ cÆ¡ khÃ­', '', 'Thá»£ mÃ¡y', '', 'News_05.jpg', '1', 0, 'CA ÄÃ  Náºµng', '11/6/1997', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'K169/4 LÃª Duáº«n', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(99, 16, 8, 17, 10803005, 1681710803005, 'Nguyá»…n', 'Vinh', '29/7/1987', 22, '', '', 'ÄÃ  Náºµng', 'An Háº£i Báº¯c', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Tá»• 25 An TÃ¢n, An Háº£i Báº¯c ', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 1, '', 'Cao Äáº³ng', 'Thá»£ cÆ¡ khÃ­', '', 'Thá»£ mÃ¡y', '', 'News_02.jpg', '1', 0, 'CA ÄÃ  Náºµng', '28/12/2004', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 25 An TÃ¢n, An Háº£i Báº¯c ', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(100, 16, 8, 17, 10803007, 1681710803007, 'Äáº·ng', 'Vinh', '18/7/1989', 20, '', '', 'ÄÃ  Náºµng', 'HÃ²a CÆ°á»ng', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Tá»• 1B, phÆ°á»ng PhÆ°á»›c Má»¹', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 1, '', 'THCS', '', '', 'Thá»£ mÃ¡y', '1/6/2008', 'News_12.jpg', '1', 0, 'CA ÄÃ  Náºµng', '23/3/2006', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113943019', '0905246855', 'Tá»• 1B, phÆ°á»ng PhÆ°á»›c Má»¹', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(101, 16, 8, 17, 10803009, 1681710803009, 'Mai', 'Vinh', '26/9/1989', 20, '', '', 'ÄÃ  Náºµng', 'HÃ²a QuÃ½', 'NgÅ© HÃ nh SÆ¡n', 'ÄÃ  Náºµng', 'Tá»• 28, phÆ°á»ng HÃ²a CÆ°á»ng Nam', '', 'ÄÃ  Náºµng', 1, '', 'THCS', '', '', 'Thá»£ mÃ¡y', '1/6/2008', '', '2', 0, 'CA ÄÃ  Náºµng', '11/12/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113611437', '0905246855', 'Tá»• 28 phÆ°á»ng hÃ²a CÆ°á»ng Nam', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(102, 16, 8, 17, 10803010, 1681710803010, 'Tráº§n', 'Vinh', '5/10/1989', 20, '', '', 'ÄÃ  Náºµng', 'Äiá»‡n Há»“ng', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', 'Tá»• 10, phÆ°á»ng ChÃ­nh GiÃ¡n', '', 'ÄÃ  Náºµng', 1, '', 'THCS', '', '', 'Thá»£ Ä‘iá»‡n', '', 'News_06.jpg', '2', 0, 'CA ÄÃ  Náºµng', '16/2/2006', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 10, phÆ°á»ng ChÃ­nh GiÃ¡n', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(103, 16, 8, 17, 10803011, 1681710803011, 'Tráº§n', 'Vinh', '2/4/1973', 36, '', '', 'ÄÃ  Náºµng ', 'HÃ²a PhÃ¡t', 'HÃ²a Vang', 'ÄÃ  Náºµng', 'Tá»• 20, phÆ°á»ng HÃ²a PhÃ¡t', 'HÃ²a Vang', 'ÄÃ  Náºµng', 1, '', 'THPT', '', '', 'Thá»£ gÃ² hÃ n', '1/6/2008', 'News_aloc.jpg', '1', 0, 'CA ÄÃ  Náºµng', '12/11/1998', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 20, phÆ°á»ng HÃ²a PhÃ¡t', 'HÃ²a Vang', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(104, 16, 8, 17, 10803012, 1681710803012, 'Há»“', 'Vinh', '4/2/1968', 41, '', '', 'ÄÃ  Náºµng', 'HÃ²a QuÃ½', 'NgÅ© HÃ nh SÆ¡n', 'ÄÃ  Náºµng', 'Tá»• 14, BÃ¡ TÃ¹ng, HÃ²a QuÃ½', 'NgÅ© HÃ nh SÆ¡n', 'ÄÃ  Náºµng', 1, '', 'THCS', '', '', 'Thá»£ sÆ¡n', '1/6/2008', '', '2', 0, 'CA ÄÃ  Náºµng', '5/11/2006', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113960425', '0905246855', 'Tá»• 14, BÃ¡ TÃ¹ng, HÃ²a QuÃ½', 'NgÅ© HÃ nh SÆ¡n', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(105, 16, 8, 17, 10803013, 1681710803013, 'Há»“', 'Vinh', '20/10/1976', 33, '', '', 'ÄÃ  Náºµng', 'HÃ²a QuÃ½', 'NgÅ© HÃ nh SÆ¡n', 'ÄÃ  Náºµng', 'Tá»• 8, BÃ¬nh Ká»³, HÃ²a QuÃ½', 'NgÅ© HÃ nh SÆ¡n', 'ÄÃ  Náºµng', 1, '', 'THCS', '', '', 'Thá»£ sÆ¡n', '1/6/2008', '', '2', 0, 'CA ÄÃ  Náºµng', '30/5/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 8, BÃ¬nh Ká»³, HÃ²a QuÃ½', 'NgÅ© HÃ nh SÆ¡n', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(106, 16, 8, 17, 10803014, 1681710803014, 'Tráº§n', 'Vinh', '16/8/1977', 32, '', '', 'Quáº£ng Nam', 'Quáº¿ PhÃº', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', '58/15 HÃ  Huy Táº­p', '', 'ÄÃ  Náºµng', 1, '', 'THCS', 'Thá»£ gÃ² hÃ n', '', 'Thá»£ gÃ² hÃ n', '', 'News_14.jpg', '1', 0, 'CA Quáº£ng Nam', '19/10/1994', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Quáº¿ PhÃº', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(107, 16, 8, 17, 10803015, 1681710803015, 'Nguyá»…n', 'Vinh', ' ', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Cao Äáº³ng', '', '', '', '', '', '2', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', '<br>', '', '', '', '', '0'),
(108, 16, 8, 17, 10803016, 1681710803016, 'LÃª', 'Vinh', '24/8/1984', 25, 'Viá»‡n quÃ¢n Y C17', '', 'ÄÃ  Náºµng', 'HÃ²a CÆ°á»ng', '', 'ÄÃ  Náºµng', '44 NÆ¡ Trang Long, HÃ²a CÆ°á»ng', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 1, '', 'Cao Äáº³ng', 'CÃ´ng nghá»‡ sá»­a chá»¯a Ã´ tÃ´', '', 'Thá»£ mÃ¡y', '15/8/2009', 'News_15.jpg', '2', 0, 'CA ÄÃ  Náºµng', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', '44 NÆ¡ Trang Long, HÃ²a CÆ°á»ng', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(109, 16, 8, 17, 10803017, 1681710803017, 'LÃª', 'Vinh', '14/3/1987', 23, 'An ThÃ nh', 'Quáº£ng ThÃ nh', 'Huáº¿', 'An ThÃ nh, Quáº£ng ThÃ nh', 'Quáº£ng Äiá»n', 'Huáº¿', 'K266/34/11D HoÃ ng Diá»‡u', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 1, '', 'THCS', 'Thá»£ hÃ n', '', 'Thá»£ gÃ² hÃ n', '', '', '1', 0, 'CA Huáº¿', '20/9/2001', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', '34/11D HoÃ ng Diá»‡u', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(110, 16, 8, 17, 10803018, 1681710803018, 'Nguyá»…n', 'Vinh', '4/4/1952', 57, '', '', 'ÄÃ  Náºµng', 'Äáº¡i Tháº¯ng', 'Äáº¡i Lá»™c', 'Quáº£ng Nam', 'An Má»¹', 'An Má»¹ TÃ¢y', 'ÄÃ  Náºµng', 1, '', 'THCS', '', '', 'NhÃ¢n viÃªn rá»­a xe', '1/2009', 'News_11.jpg', '1', 0, 'CA Quáº£ng Nam', '19/10/1994', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05112249392', '0905246855', 'Tá»• 42, An Háº£i TÃ¢y', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(111, 16, 8, 17, 10803019, 1681710803019, 'Nguyá»…n', 'Vinh', '17/7/1959', 50, '', '', 'ÄÃ  Náºµng', 'HÃ²a CÆ°á»ng', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', '464/6 NÃºi ThÃ nh', '', 'ÄÃ  Náºµng', 0, '', 'THCS', '', '', 'NhÃ¢n viÃªn rá»­a xe', '1/6/2008', 'News_10.jpg', '1', 0, '10/5/2000', '17/7/1959', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113611437', '0905246855', 'Tá»• 33, HÃ²a CÆ°á»ng', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(112, 16, 8, 17, 10803020, 1681710803020, 'Nguyá»…n', 'Vinh', '23/6/1960', 49, '', '', 'ÄÃ  Náºµng', 'Nai HiÃªn ÄÃ´ng', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'K331/6 HoÃ ng Diá»‡u', '', 'ÄÃ  Náºµng', 1, '', 'THCS', '', '', 'NhÃ¢n viÃªn rá»­a xe', '1/6/2008', 'News_vanhung.jpg', '1', 0, 'CA ÄÃ  Náºµng', '7/6/2001', '<br><br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113552223', '0905246855', 'Tá»• 11, BÃ¬nh Thuáº­n', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(113, 16, 8, 17, 10803021, 1681710803021, 'Äáº·ng', 'Vinh', '25/10/1971', 38, '', '', 'ÄÃ  Náºµng', 'An Háº£i TÃ¢y', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Tá»• 36C, An TÃ¢n', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 1, '', 'THCS', '', '', 'NhÃ¢n viÃªn rá»­a xe', '1/6/2008', 'News_vantan.jpg', '1', 0, 'CA ÄÃ  Náºµng', '13/2/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113912023', '0905246855', 'Tá»• 36C, An TÃ¢n', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(114, 16, 8, 17, 10803022, 1681710803022, 'Nguyá»…n', 'Vinh', '6/2/1972', 37, '', '', 'ÄÃ  Náºµng', 'HÃ²a CÆ°á»ng', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Tá»• 26, An Háº£i Báº¯c', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 1, '', 'THCS', '', '', 'NhÃ¢n viÃªn rá»­a xe', '', 'News_vandung.jpg', '1', 0, 'CA ÄÃ  Náºµng', '11/5/2001', '<br><br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 26, An Háº£i Báº¯c', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'Pháº­t giÃ¡o', '1'),
(115, 16, 8, 17, 10803023, 1681710803023, 'Phan', 'Vinh', '2/10/1957', 52, '', '', 'ÄÃ  Náºµng', 'Äiá»n Thá»', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', 'Tá»• 15 An Má»¹', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 1, '', 'THCS', '', '', 'NhÃ¢n viÃªn rá»­a xe', '', 'News_09.jpg', '1', 0, 'CA ÄÃ  Náºµng', '12/7/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 15 An Má»¹', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(116, 10, 2, 15, 10202016, 1010202016, 'Nguyá»…n', 'Vinh', '29/8/1983', 26, '', '', 'Quáº£ng BÃ¬nh', 'Quáº£ng TÃ¢n', 'Quáº£ng Tráº¡ch', 'Quáº£ng BÃ¬nh', '10/39 Pháº¡m VÄƒn Nghá»‹', '', 'ÄÃ  Náºµng', 0, '', 'Äáº¡i Há»c', 'SÆ° pháº¡m tiáº¿ng Trung', 'Tiáº¿ng Anh', 'TrÆ°á»Ÿng phÃ²ng HC-NS', '13/11/2009', 'News_chithanh.jpg', '1', 0, 'CA Quáº£ng BÃ¬nh', '20/07/1999', '<BR>', 1, 'Viá»‡t Nam', '', '0905246855', 'Quáº£ng TÃ¢n', 'Quáº£ng Tráº¡ch', 'Quáº£ng BÃ¬nh', 'Kinh', 'KhÃ´ng', '1'),
(117, 15, 11, 17, 10703012, 15111710703012, 'Äá»—', 'Vinh', '8/1/1955', 54, '', '', 'Quáº£ng Nam', 'Thá»‹ tráº¥n ÄÃ´ng Phá»§', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', '15 ÄÃ o Táº¥n', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 1, '', 'Äáº¡i Há»c', 'sá»¹ quan chá»‰ huy ká»¹ thuáº­t Ã´ tÃ´', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t taxi', '2/2009', 'News_ngocvinh.jpg', '1', 0, 'CA ÄÃ  Náºµng', '10/01/1994', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', '15 ÄÃ o Táº¥n', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(118, 15, 7, 17, 10703002, 1571710703002, 'Nguyá»…n', 'Vinh', '25/6/1983', 26, '', '', 'Báº¯c Giang', 'XÃ³m ChÃ¹a, TÄƒng Tiáº¿n', 'Viá»‡t YÃªn', 'Báº¯c Giang', '19 Triá»‡u Viá»‡t VÆ°Æ¡ng', 'ÄÃ  Náºµng', 'SÆ¡n TrÃ ', 1, '', 'Trung Cáº¥p', 'Thá»£ hÃ n', '', 'NhÃ¢n viÃªn phÃ¡p cháº¿', '1/2009', 'News_03.jpg', '1', 0, 'CA Báº¯c Giang', '26/7/2001', '<br>', 0, 'Viá»‡t Nam', '', '0905246855', 'XÃ³m ChÃ¹a, TÄƒng Tiáº¿n', 'Viá»‡t YÃªn', 'Báº¯c Giang', 'Kinh', 'KhÃ´ng', '1'),
(119, 10, 2, 17, 10203022, 1021710203022, 'Tráº§n', 'Vinh', '8/2/1987', 22, '', '', 'Quáº£ng BÃ¬nh', 'Vinh Hiá»n', 'PhÃº Lá»™c', 'Thá»«a ThiÃªn Huáº¿', 'K30/6A Tráº§n PhÃº', 'ÄÃ  Náºµng', ' Háº£i ChÃ¢u', 0, '', 'Äáº¡i Há»c', 'VÄƒn hÃ³a du lá»‹ch', 'Anh vÄƒn B, THVP', 'NhÃ¢n viÃªn HC-NS', '5/11/2009', 'News_thucphuong.jpg', '1', 0, 'CA Quáº£ng BÃ¬nh', '31/3/2009', '<br>', 1, 'Viá»‡t Nam', '05113827244', '0905246855', 'Khu phá»‘ 1, thá»‹ tráº¥n Ba Äá»“n', 'Quáº£ng Tráº¡ch', 'Quáº£ng BÃ¬nh', 'Kinh', 'KhÃ´ng', '1'),
(120, 18, 9, 17, 10503015, 1891710503015, 'Nguyá»…n', 'Vinh', '30/9/1992', 17, '', '', 'Quáº£ng Nam', 'Quáº¿ XuÃ¢n 2', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', '', '', 'ÄÃ  Náºµng', 1, '', 'THCS', 'Äiá»‡n', '', 'Thá»£ Ä‘iá»‡n nÆ°á»›c', '10/8/2009', '', '1', 0, '', '', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', 'ThÃ´n PhÃº Lá»™c, Quáº¿ XuÃ¢n 2', 'Quáº¿ SÆ¡n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(121, 18, 5, 17, 1050322222, 185171050322222, 'VÃµ', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'THCS', '', '', 'NhÃ¢n viÃªn lÃ¡i xe cuá»‘c', '', '', '2', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(122, 15, 11, 17, 10703001, 15111710703001, 'Nguyá»…n', 'Vinh', '07/07/1984', 25, '', '', '', 'Äiá»‡n DÆ°Æ¡ng', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NVLX', '01/07/2009', 'News_Nguyá»…n DÅ©ng copy.jpg', '1', 0, 'CA Quáº£ng Nam', '14/04/2006', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'ThÃ´n 4 - Äiá»‡n DÆ°Æ¡ng', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(123, 15, 11, 17, 10703005, 15111710703005, 'Nguyá»…n', 'Vinh', '08/09/1980', 29, '', '', '', 'Giao Thá»§y - Äáº¡i HoÃ ', 'Äáº¡i Lá»™c', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NVLX', '01/07/2009', 'News_Nguyá»…n Táº¥n LÃª TÃ¢y copy.jpg', '1', 0, 'CA Quáº£ng Nam', '05/11/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', '198/10 Nguyá»…n CÃ´ng Trá»© ', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(124, 15, 11, 17, 10703014, 15111710703014, 'Nguyá»…n ', 'Vinh', '01/01/1962', 47, '', '', '', 'PhÆ°á»›c Ninh', '', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NVLX', '01/07/2009', 'News_Nguyá»…n VÄƒn Nam copy.jpg', '1', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113690677', '0905246855', 'Tá»• 70 - TÃ¢n Láº­p A - VÄ©nh Trung', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(125, 15, 11, 17, 10703015, 15111710703015, 'Pháº¡m ', 'Vinh', '10/06/1959', 50, '', '', '', 'Äáº¡i CÆ°á»ng', 'Äáº¡i Lá»™c', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NVLX', '01/07/2009', 'News_Pháº¡m PhÃº SÃ¡ng copy.jpg', '1', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113933390', '0905246855', 'K156/19 - Nguyá»…n Duy Hiá»‡u', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(126, 15, 11, 17, 10703016, 15111710703016, 'VÃµ ', 'Vinh', '07/12/1984', 25, '', '', '', 'Duy NghÄ©a ', 'Duy XuyÃªn', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NVLX', '01/07/2009', 'News_VÃµ Thanh SÆ¡n copy.jpg', '1', 0, 'CA TP ÄÃ  Náºµng', '08/01/2006', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113912343', '0905246855', 'Tá»• 18 - TÃ¢n An - MÃ¢n ThÃ¡i', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(127, 15, 11, 17, 10703017, 15111710703017, 'LÃª', 'Vinh', '08/08/1966', 43, '', '', '', 'HÃ²a Tiáº¿n', 'HÃ²a Vang', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NVLX', '01/07/2009', 'News_LÃª VÄƒn Anh copy.jpg', '1', 0, 'CA TP ÄÃ  Náºµng', '27/01/1994', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113550221', '0905246855', '463/14 - K368 - HoÃ ng Diá»‡u', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(128, 15, 11, 17, 10703072, 15111710703072, 'Nguyá»…n', 'Vinh', '17/02/1973', 36, '', '', '', 'An HÃ²a ', 'PhÃº Lá»™c', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '18/06/1994', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113924656', '0905246855', 'LÃ´ 22B11 ÄÆ°á»ng 7m5 ', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'Pháº­t giÃ¡o', '1');
INSERT INTO `qlns_hosonhanvien` (`qlns_hsnv`, `qlns_mact`, `qlns_mabp`, `qlns_macv`, `qlns_manv`, `qlns_mahsnv`, `qlns_honv`, `qlns_tennv`, `qlns_ngaysinh`, `qlns_tuoinv`, `qlns_noisinh`, `qlns_quanns`, `qlns_tinhthanhns`, `qlns_quequan`, `qlns_quanqq`, `qlns_tinhthanhqq`, `qlns_tamtru`, `qlns_quantt`, `qlns_tinhthanhtt`, `qlns_gioitinh`, `qlns_email`, `qlns_trinhdo`, `qlns_chuyenmon`, `qlns_vanbangkhac`, `qlns_chucdanh`, `qlns_nvcongty`, `qlns_anhnvien`, `qlns_tinhtrangnv`, `qlns_macmnd`, `qlns_noicap`, `qlns_ngaycap`, `qlns_ghichu`, `qlns_tinhtranghn`, `qlns_quoctich`, `qlns_dienthoainha`, `qlns_dthoaididong`, `qlns_diachi`, `qlns_quandc`, `qlns_tinhthanhdc`, `qlns_dantoc`, `qlns_tongiao`, `qlns_hinhthuctuyen`) VALUES
(129, 16, 8, 17, 10803024, 1681710803024, 'DÆ°Æ¡ng', 'Vinh', '2/2/1984', 25, '', '', 'Quáº£ng Nam', 'Tam NghÄ©a', 'NÃºi ThÃ nh', 'Quáº£ng Nam', '827 NgÃ´ Quyá»n', '', 'ÄÃ  Náºµng', 1, '', 'Trung Cáº¥p', 'Sá»­a Chá»¯a Ã´ tÃ´', '', 'Thá»£ MÃ¡y', '1/12/2009', 'News_01.jpg', '1', 0, 'CA Quáº£ng Nam', '25/9/2008', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', 'ThÃ´n Long BÃ¬nh, xÃ£ Tam NghÄ©a', 'NÃºi ThÃ nh', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(130, 15, 11, 17, 10703073, 15111710703073, 'VÆ°Æ¡ng', 'Vinh', '25/05/1980', 29, '', '', '', 'Tá»• 17 An HÃ²a - An Háº£i Báº¯c ', 'SÆ¡n TÃ  ', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '11/03/2008', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'tá» 17 An Äá»“n - An Háº£i Báº¯c', 'SÆ¡n TrÃ  ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(131, 15, 11, 17, 10703074, 15111710703074, 'NgÃ´', 'Vinh', '02/07/1979', 30, '', '', '', '', '', '', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '', '', '1', 0, 'CA ÄÃ  Náºµng', '11/03/1997', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam ', '3464551', '0905246855', 'K223/22 Phan Chu Trinh ', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(132, 15, 11, 17, 10703075, 15111710703075, 'LÃª', 'Vinh', '30/10/1974', 35, '', '', '', '', '', '', '', '', '', 1, '', 'THCS', 'NhÃ¢n viÃªn', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '18/01/2000', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 42 An Háº£i ÄÃ´ng', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(133, 15, 11, 17, 10703076, 15111710703076, 'Nguyá»…n', 'Vinh', '11/09/1985', 24, '', '', '', 'HÃ²a CÆ°á»ng', 'Háº£i ChÃ¢u', 'ÄÃ  Náº¯ng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '27/02/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 16 HÃ²a CÆ°á»ng Nam', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(134, 15, 11, 17, 10703077, 15111710703077, 'LÃª ', 'Vinh', '01/01/1980', 29, '', '', '', 'Náº¡i HiÃªn ÄÃ´ng ', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '', '', '1', 0, 'CA ÄÃ  Náºµng', '25/04/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'TÃ´ 12C Thá» Quang', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(135, 15, 11, 17, 10703078, 15111710703078, 'VÃµ ', 'Vinh', '08/08/1974', 35, '', '', '', 'BÃ¬nh Giang ', 'ThÄƒng BÃ¬nh', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', ' LÃ¡i xe', '', 'NhÃ¢n ViÃªn LÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '28/01/2004', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'K105/8 Háº£i PhÃ²ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', '', 'KhÃ´ng', '1'),
(136, 15, 11, 17, 10703079, 15111710703079, 'Phan ', 'Vinh', '21/04/1976', 33, '', '', '', '', '', 'Quáº£ng Nam', '', '', '', 1, '', 'THCS', 'LÃ¡i Xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '26/04/1997', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '3836184', '0905246855', '132/7 LÃ½ Tá»± Trá»ng', 'Háº£i ChÃ¢u ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(137, 15, 11, 17, 10703018, 15111710703018, 'HÃ ', 'Vinh', '03/01/1979', 30, '', '', '', '', '', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_Huá»³nh ThÃºc CÆ°á»ng copy.jpg', '1', 0, 'CA ÄÃ  Náºµng', '21/03/2006', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', '46/B1 - Triá»‡u Ná»¯ VÆ°Æ¡ng', '', 'ÄÃ  Náºµng', 'Kinh', 'Pháº­t GiÃ¡o', '1'),
(138, 15, 11, 17, 10703019, 15111710703019, 'BÃ¹i', 'Vinh', '16/03/1963', 46, '', '', '', '', 'Nho Quang', 'Ninh BÃ¬nh', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_BÃ¹i Tiáº¿n Äá»©c copy.jpg', '1', 0, 'CA ÄÃ  Náºµng', '22/06/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113464919', '0905246855', '107 - Nguyá»…n ChÃ­ Thanh', 'Háº£i ChÃ¢u ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(139, 15, 11, 17, 10703020, 15111710703020, 'ÄÃ o', 'Vinh', '28/12/1969', 40, '', '', '', 'Quáº£ng Lá»™c', 'HÆ°Æ¡ng Äiá»n ', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_ÄÃ o Quang DÅ©ng copy.jpg', '1', 0, 'CA Quáº£ng Nam', '05/04/1994', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113816567', '0905246855', 'Tá»• 36 - Thuáº­n ThÃ nh', 'Tam Thuáº­n', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(140, 15, 11, 17, 10703021, 15111710703021, 'LÃª', 'Vinh', '06/041974', 35, '', '', '', 'Quáº¿ LÆ°u', 'Hiá»‡p Äá»©c', 'Quáº£ng Nam', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_LÃª VÄƒn DÅ©ng copy.jpg', '1', 0, 'CA ÄÃ  Náºµng', '26/02/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113910050', '0905246855', 'Tá»• 25 - Am Háº£i Báº¯c', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(141, 15, 11, 17, 10703022, 15111710703022, 'Nguyá»…n', 'Vinh', '09/12/1982', 27, '', '', '', 'Vinh ThÃ¡i', 'VÄ©nh Linh', 'Quáº£ng Trá»‹', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_NGuyá»…n VÄƒn dÅ©ng copy.jpg', '1', 0, 'CA Quáº£ng Trá»‹', '15/03/1998', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113660655', '0905246855', 'Tá»• 21 - HÃ²a An ', 'Cáº©m Lá»‡', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(142, 15, 11, 17, 10703023, 15111710703023, 'Äinh', 'Vinh', '06/05/1968', 41, '', '', '', '', '', '', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_Äinh VÄƒn Giá»¯ copy.jpg', '1', 0, 'CA ÄÃ  Náºµng', '17/09/1996', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113912592', '0905246855', 'Tá»• 8 - MÃ¢n ThÃ¡i ', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(143, 15, 11, 17, 10703024, 15111710703024, 'HoÃ ng', 'Vinh', '15/08/1983', 26, '', '', '', 'Háº£i Quáº¿', 'Háº£i LÄƒng', 'Quáº£ng Trá»‹', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_HoÃ ng VÄƒn HÆ°á»›ng copy.jpg', '1', 0, 'CA Quáº£ng Trá»‹', '21/06/2001', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113818360', '0905246855', '337 - Háº£i PhÃ²ng', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(144, 15, 11, 17, 10703025, 15111710703025, 'Nguyá»…n', 'Vinh', '24/09/1968', 41, '', '', '', 'Vinh Hiá»n', 'Vinh Lá»™c', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_Nguyá»…n KhÃ¡nh copy.jpg', '1', 0, 'CA ÄÃ  Náºµng', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '592/13 - ChÃ­nh GiÃ¡n', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(145, 15, 11, 17, 10703026, 15111710703026, 'Tráº§n', 'Vinh', '10/07/1965', 44, '', '', '', 'HÆ°Æ¡ng Äiá»n', '', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_Tráº§n HoÃ ng Long copy.jpg', '1', 0, 'CA ÄÃ  Náºµng', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113572246', '0905246855', 'K280/4 HoÃ ng Diá»‡u', '', 'ÄÃ  Náºµng', 'Kinh', 'ThiÃªn ChÃºa GiÃ¡o', '1'),
(146, 15, 11, 17, 10703027, 15111710703027, 'Phan', 'Vinh', '29/08/1970', 39, '', '', '', 'HÃ²a Thá»', 'HÃ²a vang', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_Phan há»¯u PhÆ°Æ¡ng copy.jpg', '1', 0, 'CA ÄÃ  Náºµng', '04/03/1999', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113936442', '0905246855', 'Tá»• 23 - An Háº£i Báº¯c', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(147, 15, 11, 17, 10703028, 15111710703028, 'Huá»³nh ', 'Vinh', '27/10/1967', 42, '', '', '', 'Äiá»‡n Ngá»c', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_huynh xuan quan.jpg', '1', 0, 'CA ÄÃ  Náºµng', '12/061993', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113690701', '0905246855', '145/15 - Nguyá»…n Tri PhÆ°Æ¡ng', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(148, 15, 11, 17, 10703029, 15111710703029, 'Nguyá»…n', 'Vinh', '19/01/1964', 45, '', '', '', 'Äiá»‡n Tiáº¿n', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_Nguyá»…n VÄƒn Tháº£o copy.jpg', '1', 0, 'CA ÄÃ  Náºµng', '28/11/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113829547', '0905246855', 'SÃ´1 - Thanh Háº£i', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(149, 15, 11, 17, 10703030, 15111710703030, 'Phan', 'Vinh', '10/09/1977', 32, '', '', '', '', 'PhÃº Lá»™c', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_Phan VÄƒn Thá»¥ copy.jpg', '1', 0, 'CA ÄÃ  Náºµng', '07/04/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113950032', '0905246855', 'Tá»• 39 - An ThÆ°á»£ng - Báº¯c Má»¹ An', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(150, 15, 11, 17, 10703031, 15111710703031, 'LÃª', 'Vinh', '01/09/1979', 30, '', '', '', '', 'VÄ©nh Báº£o', 'Háº£i PhÃ²ng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_LÃª Äá»©c Thuáº­n copy.jpg', '1', 0, 'CA ÄÃ  Náºµng', '04/02/1998', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113910721', '0905246855', 'Tá»• 47 - An Háº¢i Báº¯c', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(151, 15, 11, 17, 10703032, 15111710703032, 'Há»“', 'Vinh', '05/06/1964', 45, '', '', '', '', '', '', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_Há»“ VÄƒn Tiáº¿n copy.jpg', '1', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113837333', '0905246855', '15 - ÄoÃ n Thá»‹ Äiá»ƒm', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(152, 18, 5, 17, 10503016, 1810503016, 'Nguyá»…n', 'Vinh', '20/4/1987', 22, '', '', 'ÄÃ  Náºµng', 'Äiá»‡n Tiáº¿n', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '538/2 NÃºi ThÃ nh', '', 'ÄÃ  Náºµng', 1, '', 'Äáº¡i Há»c', 'QuÃ n Trá»‹ kinh doanh', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '', 'News_anhthang.jpg', '1', 0, 'CA ÄÃ  Náºµng', '29/3/2005', '<BR>', 1, 'Viá»‡t Nam', '05113628800', '0905246855', '538/2 NÃºi ThÃ nh', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(153, 15, 11, 17, 10703033, 15111710703033, 'Nguyá»…n', 'Vinh', '14/11/1964', 45, '', '', '', 'An Ninh ThÆ°á»£ng', '', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'KhÃ¡c', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_Nguyá»…n Thiá»‡n TÃ­n copy.jpg', '1', 0, 'CA Quáº£ng Nam', '24/04/1995', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 1', 'Tam Thuáº­n', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(154, 10, 3, 17, 10303016, 1010303016, 'Pháº¡m', 'Vinh', '4/9/1987', 22, '', '', 'Quáº£ng Nam', 'VÄ©nh Äiá»‡n', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '29 Tráº§n Cao VÃ¢n', 'ÄÃ  Náºµng', 'Thanh KhÃª', 0, '', 'Äáº¡i Há»c', 'Káº¿ toÃ¡n kiá»ƒm toÃ¡n', 'Anh C,THVP', 'Káº¿ toÃ¡n viÃªn', '7/12/2009', 'News_anhthi.jpg', '1', 0, 'CA Quáº£ng Nam', '22/2/2005', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', 'KP Má»¹ Hoa, Nam PhÆ°á»›c', 'Duy XuyÃªn', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(155, 15, 11, 17, 10703034, 15111710703034, 'Tráº§n', 'Vinh', '12/12/1958', 51, '', '', '', '', 'Háº¡ Long', 'Nam Äá»‹nh', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_Tráº§n Huy Toáº£n copy.jpg', '1', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113922427', '0905246855', '267B - Tráº§n Quang Kháº£i', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(156, 15, 11, 17, 10703035, 15111710703035, 'Xa', 'Vinh', '05/10/1982', 27, '', '', '', 'BÃ¬nh Triá»u', 'ThÄƒng BÃ¬nh', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_Xa Thanh Viá»‡t copy.jpg', '1', 0, 'CA Quáº£ng Nam', '28/02/2005', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113897590', '0905246855', 'HÆ°ng Má»¹ - BÃ¬nh Triá»u', 'ThÄƒng BÃ¬nh', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(157, 15, 11, 17, 10703036, 15111710703036, 'Tráº§n', 'Vinh', '01/02/1965', 44, '', '', '', 'Äiá»n Thá»', 'ThÄƒng BÃ¬nh', 'Quáº£ng Nam', '', '', '', 1, '', 'KhÃ¡c', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_Tráº§n VÄƒn Vá»‹nh copy.jpg', '1', 0, 'CA ÄÃ  Náºµng', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 14 - ÄÃ´ng XuÃ¢n - An KhÃª', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(158, 15, 11, 17, 10703080, 15111710703080, 'Nguyá»…n', 'Vinh', '26/11/1972', 37, '', '', '', '', 'Duy XuyÃªn', 'Quáº£ng nam', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, '', '22/11/1993', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', '40/3 TrÆ°ng Ná»¯ VÆ°Æ¡ng', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(159, 15, 11, 17, 10703037, 151117010703037, 'Nguyá»…n', 'Vinh', '18/11/1974', 35, '', '', '', '', '', '', '', '', '', 1, '', 'KhÃ¡c', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', '', '1', 0, '', '', '', 0, 'Viá»‡t Nam', '', '0905246855', '', '', '', 'Kinh', 'KhÃ´ng', '1'),
(160, 15, 11, 17, 10703081, 15111710703081, 'Nguyá»…n ', 'Vinh', '25/04/1975', 34, '', '', '', 'Tháº¡ch GiÃ¡n', 'Thanh KhÃª', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn LÃ¡i xe', '01/07/2009', '', '1', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 9 Tháº¡ch GiÃ¡n', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'khÃ´ng', '1'),
(161, 15, 11, 17, 10703038, 15111710703038, 'LÃª', 'Vinh', '20/07/1957', 52, '', '', '', '', '', '', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_le huong.jpg', '1', 0, 'CA ÄÃ  Náºµng', '24/04/1996', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '14/6 - DÅ©ng Sá»¹', 'Thanh khÃª', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(162, 15, 11, 17, 10703039, 15111710703039, 'Huá»³nh', 'Vinh', '01/03/1967', 42, '', '', '', 'HÃ²a KhÆ°Æ¡ng', 'HÃ²a vang', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_3.jpg', '1', 0, 'CA ÄÃ  Náºµng', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '378/2 - Nguyá»…n HoÃ ng', '', 'ÄÃ  Náºµng', 'Kinh', 'ThiÃªn ChÃºa', '1'),
(163, 15, 11, 17, 10703040, 15111710703040, 'Phan', 'Vinh', '30/12/1976', 33, '', '', '', 'HÃ²a KhÃ¡nh', 'LiÃªn Chiá»ƒu', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_2.jpg', '1', 0, 'CA ÄÃ  Náºµng', '15/01/1998', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 13 - ÄÃ  SÆ¡n - HÃ²a KhÃ¡nh Nam', 'LiÃªn Chiá»ƒu', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(164, 15, 11, 17, 10703082, 15111710703082, 'Nguyá»…n ', 'Vinh', '01/10/1964', 45, '', '', '', '', 'Äá»“ng Há»›i', 'Quáº£ng BÃ¬nh', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '02/12/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 3 Tam Thuáº­n', 'Thanh khÃª', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(165, 15, 11, 17, 10703041, 15111710703041, 'LÃª', 'Vinh', '04/05/1978', 31, '', '', '', '', '', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_1.jpg', '1', 0, 'CA ÄÃ  Náºµng', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'K58/06 - CÃ´ Báº¯c', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(166, 15, 11, 17, 10703083, 15111710703083, 'Tráº§n ', 'Vinh', '06/03/1967', 42, '', '', '', 'Cáº©m Thanh', 'Há»™i An', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '3572352', '0905246855', 'H18/07A K25 TrÆ°ng Ná»¯ VÆ°Æ¡ng', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(167, 15, 11, 17, 10703042, 15111710703042, 'Pháº¡m', 'Vinh', '10/04/1980', 29, '', '', '', 'Duy An', 'Duy XuyÃªn', 'Quáº£ng Nam', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_11.jpg', '1', 0, 'CA ÄÃ  Náºµng', '26/06/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113933759', '0905246855', 'Tá»• 38 - An HÃ²a 4', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(168, 15, 11, 17, 10703043, 15111710703043, 'Huá»³nh', 'Vinh', '06/10/1981', 28, '', '', '', '', '', '', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_10.jpg', '1', 0, 'CA ÄÃ  Náºµng', '24/12/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '717 Tráº§n Cao vÃ¢n', '', 'ÄÃ  Náºµng', 'Kinh', 'Pháº­t giÃ¡o', '1'),
(169, 15, 11, 17, 10703084, 15111710703084, 'Nguyá»…n', 'Vinh', '17/01/1984', 25, '', '', '', '', '', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '16/05/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'LÃ´ F5/10 Phan ÄÄƒng LÆ°u', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(170, 15, 11, 17, 10703044, 15111710703044, 'Nguyá»…n', 'Vinh', '17/04/1979', 30, '', '', '', 'Äiá»‡n DÆ°Æ¡ng', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_9.jpg', '1', 0, 'CA ÄÃ  Náºµng', '11/06/2005', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'MÃ¢n Láº­p - MÃ¢n ThÃ¡i', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(171, 15, 11, 17, 10703045, 151117010703045, 'Há»“', 'Vinh', '25/02/1982', 27, '', '', '', 'Phong ChÆ°Æ¡ng', 'Phong Äiá»n', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'KhÃ¡c', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '07/05/2009', '', 1, 'Viá»‡t Nam', '05113750674', '0905246855', 'K190/39 - Ã”ng Ãch KhiÃªm', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(172, 15, 11, 17, 10703046, 15111710703046, 'VÅ©', 'Vinh', '19/08/1972', 37, '', '', '', 'HÆ°ng YÃªn', '', 'Háº£i HÆ°ng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_7.jpg', '1', 0, 'CA ÄÃ  Náºµng', '17/04/1995', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'K18/3 - TÃ´n Tháº¥t TÃ¹ng', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(173, 15, 11, 17, 10703047, 151117010703047, 'Nguyá»…n', 'Vinh', '24/01/1971', 38, '', '', '', 'Äiá»‡n Thá»', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', '', '1', 0, 'CA Quáº£ng Nam', '23/02/2006', '', 0, 'Viá»‡t Nam', '05113742838', '0905246855', 'La Trung - Äiá»‡n Thá»', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(174, 15, 11, 17, 10703085, 15111710703085, 'Tráº§n', 'Vinh', '25/01/1982', 27, '', '', '', 'Thá» Quang', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn LÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '28/03/2000', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Kinh', '3910873', '0905246855', 'Tá»• 34 MÃ¢n Quang - Thá» Quang', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(175, 15, 11, 17, 10703048, 15111710703048, 'BÃ¹i ', 'Vinh', '10/10/1983', 26, '', '', '', '', '', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_11.jpg', '1', 0, 'CA ÄÃ  Náºµng', '26/06/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113937008', '0905246855', '258 - Phan Chu Trinh', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(176, 15, 11, 17, 10703086, 15111710703086, 'Phi ', 'Vinh', '10/12/1967', 42, '', '', '', 'TÃ¢n Chiá»ƒu', 'YÃªn DÅ©ng ', 'Báº¯c Giang', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA Quáº£ng Nam', '19/10/1995', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '36/12 LÃª Duáº©n', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'Viá»‡t Nam', '1'),
(177, 15, 11, 17, 10703049, 15111710703049, 'ÄoÃ n', 'Vinh', '03/11/1984', 25, '', '', '', 'Vinh Giang', 'PhÃº Lá»™c', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_21.jpg', '1', 0, 'CA ÄÃ  Náºµng', '04/11/2008', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113766531', '0905246855', 'tá»• 4/74 - Thanh Thá»§y - Thuáº­n PhÆ°á»›c', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(178, 15, 11, 17, 10703050, 151117010703050, 'Huá»³nh', 'Vinh', '16/04/1983', 26, '', '', '', 'HÃ²a Háº£i', 'NgÅ© HÃ nh SÆ¡n', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '11/01/2001', '', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 6C - ThÃ nh Vinh - thá» Quang', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(179, 15, 11, 17, 10703087, 15111710703087, 'LÃª', 'Vinh', '24/01/1981', 28, '', '', '', '', '', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'NhÃ¢n viÃªn', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '26/09/1999', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 35 HÃ²a Hiá»‡p Nam', 'LiÃªn Chiá»ƒu', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(180, 15, 11, 17, 10703051, 15111710703051, 'ThÃ¡i', 'Vinh', '17/01/1968', 41, '', '', '', 'Tháº¡ch GiÃ¡n', '', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_26.jpg', '1', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '239/9 - Háº£i PhÃ²ng', '', 'ÄÃ  Náºµng', 'Kinh', 'Pháº­t giÃ¡o', '1'),
(181, 15, 11, 17, 10703052, 15111710703052, 'Diá»‡p ', 'Vinh', '23/09/1978', 31, '', '', '', '', '', '', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_27.jpg', '1', 0, '', '', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '66 Cao XuÃ¢n Dá»¥c - Thuáº­n PhÆ°á»›c', '', 'ÄÃ  Náºµng', 'Kinh', 'Pháº­t giÃ¡o', '1'),
(182, 15, 11, 17, 10703088, 15111710703088, 'NgÃ´', 'Vinh', '16/101979', 30, '', '', '', 'Äáº¡i Tháº¯ng', 'Äáº¡i Lá»™c', 'Quáº£ng nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA Quáº£ng Nam', '16/03/1993', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '18/3 Phan Thanh', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(183, 15, 11, 17, 10703053, 15111710703053, 'Nguyá»…n', 'Vinh', '16/09/1982', 27, '', '', '', '', '', '', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '30/09/2009', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'K38/3 Nguyá»…n Duy Hiá»‡u - An Háº£i ÄÃ´ng', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(184, 15, 11, 17, 10703054, 15111710703054, 'Tráº§n', 'Vinh', '01/05/1975', 34, '', '', '', 'Duy An', 'Duy XuyÃªn', 'Quáº£ng Nam', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', 'News_tranthanhnguu.jpg', '1', 0, 'CA ÄÃ  Náºµng', '11/12/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '81 BÃ¹i Thá»‹ XuÃ¢n - An Háº£i tÃ¢y', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(185, 15, 11, 17, 10703089, 15111710703089, 'LÃª', 'Vinh', '06/03/1982', 27, '', '', '', '', 'Cáº©m XuyÃªn', 'HÃ  TÄ©nh', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '05/09/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '3353712', '0905246855', '373 Tá»• 29 ÄÆ°á»ng 3/2 Thuáº­n PhÆ°á»›c', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(186, 15, 11, 17, 10703055, 151117010703055, 'VÄƒn', 'Vinh', '01/11/1970', 39, '', '', '', 'Duy An', 'Duy XuyÃªn', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe ', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '20/05/2007', '', 0, 'Viá»‡t Nam', '', '0905246855', 'k50/28 TrÆ°ng Ná»¯ VÆ°Æ¡ng', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(187, 15, 11, 17, 10703056, 15111710703056, 'Tráº§n', 'Vinh', '14/02/1984', 25, '', '', '', 'Cáº©m An', 'Há»™i An', 'Quáº£ng Nam', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_haiduyen.jpg', '1', 0, 'CA ÄÃ  Náºµng', '18/03/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113917829', '0905246855', 'Tá»• 34 Náº¡i HiÃªn ÄÃ´ng', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(188, 15, 11, 17, 10703057, 15111710703057, 'Nguyá»…n', 'Vinh', '15/04/1980', 29, '', '', '', 'Äiá»‡n DÆ°Æ¡ng', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_nguyenvansy.jpg', '1', 0, 'CA Quáº£ng Nam', '11/04/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Äiá»‡n DÆ°Æ¡ng', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(189, 15, 11, 17, 10703058, 15111710703058, 'LÃª', 'Vinh', '16/02/1981', 28, '', '', '', 'Äiá»‡n Nam Trung', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_trong.jpg', '1', 0, 'CA Quáº£ng Nam', '14/03/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Äiá»‡n Nam Trung', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(190, 15, 11, 17, 10703059, 15111710703059, 'Nguyá»…n ', 'Vinh', '12/06/1967', 42, '', '', '', 'Duy An', 'Duy XuyÃªn', 'Quáº£ng Nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_trung.jpg', '1', 0, 'CA ÄÃ  Náºµng', '10/01/2001', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 3c - Thá» Quang', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(191, 15, 11, 17, 10703060, 15111710703060, 'LÃª', 'Vinh', '01/11/1975', 34, '', '', '', 'MÃ¢n Quang - Thá» Quang', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_levantrong.jpg', '1', 0, 'CA ÄÃ  Náºµng', '04/03/1992', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113910731', '0905246855', 'Tá»• 35 - MÃ¢n Quang - Thá» Quang', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(192, 15, 11, 17, 10703061, 15111710703061, 'Phan ', 'Vinh', '10/11/1984', 25, '', '', '', 'Tá»• 8 PhÆ°á»›c Má»¹', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_truong.jpg', '1', 0, 'CA ÄÃ  Náºµng', '18/03/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 8 PhÆ°á»›c Má»¹', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(193, 15, 11, 17, 10703062, 15111710703062, 'LÃª', 'Vinh', '16/04/1988', 21, '', '', '', 'An Háº£i TÃ¢y', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_lethanhtoan.jpg', '1', 0, 'CA ÄÃ  Náºµng', '19/01/2005', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05113932503', '0905246855', 'Tá»• 20 - An Háº£i TÃ¢y', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(194, 15, 11, 17, 10703063, 15111710703063, 'Tráº§n', 'Vinh', '13/03/1979', 30, '', '', '', 'HÃ²a QuÃ½', '', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_quang.jpg', '1', 0, 'CA ÄÃ  Náºµng', '14/10/1999', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05112245100', '0905246855', '81 BÃ¹i Thá»‹ XuÃ¢n - An Háº£i TÃ¢y', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(195, 15, 11, 17, 10703064, 15111710703064, 'Nguyá»…n', 'Vinh', '05/05/1984', 25, '', '', '', 'Báº¯c Phan Tá»©- Báº¯c Má»¹ An', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_ha.jpg', '1', 0, 'CA Quáº£ng Nam', '14/03/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'K98/40 Nguyá»…n Duy Hiá»‡u', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(196, 15, 11, 17, 10703065, 151117010703065, 'Äáº·ng ', 'Vinh', '04/03/1974', 35, '', '', '', 'HÃ²a CÆ°á»ng', '', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '14/11/2006', '', 1, 'Viá»‡t Nam', '', '0905246855', 'áº  Tráº§n Quang Diá»‡u - An Háº£i TÃ¢y', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(197, 15, 11, 17, 10703066, 15111710703066, 'Tráº§n', 'Vinh', '30/12/1974', 35, '', '', '', 'BÃ¬nh NguyÃªn', 'BÃ¬nh SÆ¡n', 'Quáº£ng NgÃ£i', '', '', '', 1, '', 'KhÃ¡c', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_trancongdiem.jpg', '1', 0, '', '02/07/1990', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '05113745270', '0905246855', '46 - Tráº§n Cao VÃ¢n', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(198, 15, 11, 17, 10703067, 15111710703067, 'NgÃ´', 'Vinh', '03/02/1973', 36, '', '', '', 'HÃ²a Thuáº­n', '', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_ngovanminh.jpg', '1', 0, 'CA ÄÃ  Náºµng', '25/10/1995', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', '481/04  TrÆ°ng Ná»¯ VÆ°Æ¡ng', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(199, 15, 11, 17, 10703068, 15111710703068, 'Nguyá»…n', 'Vinh', '01/01/1986', 23, '', '', '', '', '', '', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, '', '', '', 1, 'Viá»‡t Nam', '', '0905246855', '26 Máº¡c ÄÄ©nh CHi', 'Háº£i ChÃ¢u ', 'ÄÃ  Náºµng', 'Kinh', 'ThiÃªn ChÃºa GiÃ¡o', '1'),
(200, 15, 11, 17, 10703069, 15111710703069, 'Phan', 'Vinh', '03/07/1978', 31, '', '', '', 'HÃ²a Thá»', 'HÃ²a vang', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_viet.jpg', '1', 0, 'CA ÄÃ  Náºµng', '05/02/2005', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 49 An CÆ° - An Háº¢i Báº¯c', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(201, 15, 11, 17, 10703070, 15111710703070, 'Nguyá»…n', 'Vinh', '26/12/1970', 39, '', '', '', '', '', 'Kon Tum', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', 'News_Ngoc.jpg', '1', 0, 'CA Kon Tum', '26/12/1970', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 34 Thá» Quang', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(202, 15, 11, 17, 10703090, 15111710703090, 'Pháº¡m ', 'Vinh', '05/08/1983', 26, '', '', '', 'BÃ¬nh An ', 'HÆ°ong Thá»§y', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '09/09/1999', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '3764597', '0905246855', 'Tá»• 77 HÃ²a Minh', 'LiÃªn Chiá»ƒu', 'ÄÃ  Náºµng', 'Kinh ', 'KhÃ´ng', '1'),
(203, 15, 11, 17, 10703091, 15111710703091, 'Pháº¡m ', 'Vinh', '10/101973', 36, '', '', '', 'HÃ²a QuÃ½ ', 'NgÅ© HÃ nh SÆ¡n', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, '', '27/03/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 50A ChÃ­nh GiÃ¡n', 'Thanh KhÃª ', 'ÄÃ  Náºµng', 'Kinh', 'Viá»‡t Nam', '1'),
(204, 15, 11, 17, 10703092, 15111710703092, 'VÃµ ', 'Vinh', '10/09/1980', 29, '', '', '', 'Thanh Lá»™c ÄÃ¡n', 'Thanh KhÃª', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe ', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '21/03/2006', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 25 Thanh KhÃª ÄÃ´ng', 'Thanh KhÃª ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(205, 15, 11, 17, 10703093, 15111710703093, 'LÃª', 'Vinh', '20/08/1984', 25, '', '', '', 'An Má»¹ An ', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '09/05/2001', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '3831618', '0905246855', 'Tá»• 12 An Má»¹ An', 'SÆ¡n TrÃ  ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(206, 15, 11, 17, 10703094, 15111710703094, 'Nguyá»…n ', 'Vinh', '22/09/1970', 39, '', '', '', 'Lá»™c Bá»•n', 'PhÃº Lá»™c ', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '21/08/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '3921022', '0905246855', 'Tá»• 39 Thá» Quang ', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(207, 15, 11, 17, 10703095, 15111710703095, 'Tráº§n ', 'Vinh', '10/11/1986', 23, '', '', '', 'Tri Lá»… ', 'HÆ°Æ¡ng TrÃ ', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '15/03/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '3887909', '0905246855', '146 Háº£i PhÃ²ng ', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(208, 15, 11, 17, 10703096, 15111710703096, 'Tráº§n ', 'Vinh', '01/09/1972', 37, '', '', '', 'Tá»• 25 Thanh KhÃª ÄÃ´ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '23/04/1996', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 0, 'Viá»‡t Nam', '', '0905246855', 'Äiá»‡n Tiáº¿n', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(209, 15, 11, 17, 10703097, 15111710703097, 'Nguyá»…n ', 'Vinh', '25/12/1980', 29, '', '', '', 'Äiá»‡n Tiáº¿n ', 'Äiá»‡n BÃ n ', 'Quáº£ng nam', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA Quáº£ng Nam', '21/08/1999', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05103754044', '0905246855', 'Äiá»‡n Tiáº¿n', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', 'Kinh ', 'KhÃ´ng', '1'),
(210, 15, 11, 17, 10703098, 15111710703098, 'Nguyá»…n ', 'Vinh', '13/01/1968', 41, '', '', '', 'Tháº¡ch Cáº©m', 'PhÃº Vang', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/07/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '25/07/2009', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', '52 LÃª ÄÃ¬nh DÆ°Æ¡ng', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(211, 16, 8, 17, 10803025, 1681710803025, 'HÃ ', 'Vinh', '24/11/1972', 38, '', '', '', 'Äáº¡i Äá»“ng', 'Äáº¡i Lá»™c', 'Quáº£ng Nam', 'Tá»• 50, phÆ°á»ng XuÃ¢n HÃ ', 'Thanh KhÃª', 'ÄÃ  Náºµng', 1, '', 'THPT', '', '', 'Thá»£ mÃ¡y', '1/12/2009', '', '1', 0, 'CA ÄÃ  Náºµng', '10/10/2006', '<br>', 0, 'Viá»‡t Nam', '', '0905246855', 'K278B Tráº§n Cao VÃ¢n', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(212, 16, 8, 17, 10803026, 1681710803026, 'HÃ ', 'Vinh', '9/9/1985', 25, 'Bá»‡nh viá»‡n quÃ¢n Y II', '', 'ÄÃ  Náºµng', 'Äáº¡i Äá»“ng', 'Äáº¡i Lá»™c', 'Quáº£ng Nam', '', '', '', 1, '', 'THCS', 'sá»­a chá»¯a Ã´ tÃ´', '', 'Thá»£ mÃ¡y', '1/12/2009', '', '1', 0, '', '', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 46, Tráº§n Cao VÃ¢n', '', 'ÄÃ  Náºµng', 'Kinh', 'Pháº­t', '1'),
(213, 16, 8, 17, 10803027, 1681710803027, 'Nguyá»…n ', 'Vinh', '29/10/1979', 31, 'BÃ n TÃ¢n, Äáº¡i Äá»“ng', 'Äáº¡i Lá»™c', 'Quáº£ng Nam', 'BÃ n TÃ¢n, Äáº¡i Äá»“ng', 'Äáº¡i Lá»™c', 'Quáº£ng Nam', 'Tá»• 38, HÃ²a Thá» ÄÃ´ng', 'Cáº©m Lá»‡', 'Quáº£ng Nam', 1, '', 'THPT', 'Thá»£ mÃ¡y', '', 'Quáº£n Ä‘á»‘c xÆ°á»Ÿng cÆ¡ khÃ­ Ã´ tÃ´', '1/12/2009', 'News_tienthanh.jpg', '1', 0, 'CA Quáº£ng Nam', '1/10/1999', '<br>', 0, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 38, HÃ²a Thá» ÄÃ´ng', 'Cáº©m Lá»‡', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(214, 18, 13, 17, 10503017, 18131710503017, 'Äáº·ng', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Äáº¡i Há»c', '', '', 'LÃ¡i xe cÆ¡ giá»›i', '10/12/2009', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(215, 18, 13, 17, 10503018, 1810503018, 'Há»“', 'Vinh', '1971', 38, 'Hiá»‡p HÃ²a', 'Äá»©c HÃ²a', 'Long An', '', '', '', '', '', '', 1, '', 'THCS', '', '', 'LÃ¡i xe cÆ¡ giá»›i', '10/12/2009', 'News_hothanhminh.jpg', '2', 0, 'CA Long An', '7/11/2001', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', 'áº¥p HÃ²a BÃ¬nh II, Hiá»‡p HÃ²a', 'Äá»©c HÃ²a', 'Long An', 'Kinh', 'KhÃ´ng', '1'),
(216, 18, 13, 17, 10503019, 1810503019, 'Nguyá»…n', 'Vinh', '28/2/1987', 22, '', '', 'BÃ¬nh Äá»‹nh', 'CÃ¡t Minh', 'PhÃ¹ CÃ¡t', 'BÃ¬nh Äá»‹nh', '945/13 Háº­u Giang, phÆ°á»ng 11', '6', 'Há»“ ChÃ­ Minh', 1, '', 'Cao Äáº³ng', 'Ká»¹ sÆ° xÃ¢y dá»±ng dÃ¢n dá»¥ng vÃ  cÃ´ng nghiá»‡p', 'Autocad, dá»± toÃ¡n, Microsoft Project+ABQM', 'NhÃ¢n viÃªn tá»• cÆ¡ giá»›i', '1/12/2009', 'News_hongthi.jpg', '2', 0, 'CA BÃ¬nh Äá»‹nh', '4/4/2009', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', 'CÃ¡t Minh', 'PhÃ¹ CÃ¡t', 'BÃ¬nh Äá»‹nh', 'Kinh', 'KhÃ´ng', '1');
INSERT INTO `qlns_hosonhanvien` (`qlns_hsnv`, `qlns_mact`, `qlns_mabp`, `qlns_macv`, `qlns_manv`, `qlns_mahsnv`, `qlns_honv`, `qlns_tennv`, `qlns_ngaysinh`, `qlns_tuoinv`, `qlns_noisinh`, `qlns_quanns`, `qlns_tinhthanhns`, `qlns_quequan`, `qlns_quanqq`, `qlns_tinhthanhqq`, `qlns_tamtru`, `qlns_quantt`, `qlns_tinhthanhtt`, `qlns_gioitinh`, `qlns_email`, `qlns_trinhdo`, `qlns_chuyenmon`, `qlns_vanbangkhac`, `qlns_chucdanh`, `qlns_nvcongty`, `qlns_anhnvien`, `qlns_tinhtrangnv`, `qlns_macmnd`, `qlns_noicap`, `qlns_ngaycap`, `qlns_ghichu`, `qlns_tinhtranghn`, `qlns_quoctich`, `qlns_dienthoainha`, `qlns_dthoaididong`, `qlns_diachi`, `qlns_quandc`, `qlns_tinhthanhdc`, `qlns_dantoc`, `qlns_tongiao`, `qlns_hinhthuctuyen`) VALUES
(217, 18, 18, 17, 10503020, 1851710503020, 'LÃ½', 'Vinh', '21/10/1957', 52, '', '', 'Há»“ ChÃ­ Minh', '', '', 'Trung Quá»‘c', '5 Thi SÃ¡ch', '', 'Kon Tum', 1, '', 'THPT', '', '', 'NhÃ¢n viÃªn lÃ¡i xe', '1/12/2009', 'News_lyvandanh.jpg', '1', 0, 'CA Há»“ ChÃ­ Minh', '29/4/2009', '<br>', 0, 'Viá»‡t Nam', '', '0905246855', 'B10/5 khu phá»‘ 1, phÆ°á»ng BÃ¬nh An', '2', 'Há»“ ChÃ­ Minh', 'Kinh', 'KhÃ´ng', '1'),
(218, 18, 5, 17, 10503021, 1851710503021, 'Nguyá»…n', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Äáº¡i Há»c', '', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '1/12/2009', '', '2', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(219, 18, 15, 17, 10503022, 1810503022, 'Tráº§n', 'Vinh', '23/7/1980', 29, '', '', 'Kon Tum', '', 'An NhÆ¡n', 'BÃ¬nh Äá»‹nh', 'Khá»‘i 8 thá»‹ tráº¥n ÄÄƒk TÃ´', '', 'Kon Tum', 1, '', 'Trung Cáº¥p', 'XÃ¢y dá»±ng dÃ¢n dá»¥ng vÃ  cÃ´ng nghiá»‡p', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '1/12/2009', '', '1', 0, 'CA Kon Tum', '15/4/1995', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', 'Thá»‹ tráº¥n ÄÄƒk TÃ´', '', 'Kon Tum', '', 'ThiÃªn ChÃºa', '1'),
(220, 18, 15, 17, 10503023, 1810503023, 'LÃª', 'Vinh', '2/10/1985', 24, 'Quyáº¿t Tháº¯ng', '', 'Kon Tum', '', 'PhÃº Vang', 'Thá»«a ThiÃªn Huáº¿', '140 HÃ¹ng VÆ°Æ¡ng', '', 'Kon Tum', 1, '', 'Äáº¡i Há»c', 'Kinh táº¿ xÃ¢y dá»±ng', 'Anh vÄƒn B, THVP', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '1/12/2009', 'News_Letuanquoc.jpg', '1', 0, 'CA Kon Tum', '8/3/2001', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', '140 HÃ¹ng VÆ°Æ¡ng', '', 'Kon Tum', 'Kinh', 'KhÃ´ng', '1'),
(221, 18, 15, 17, 10503024, 1810503024, 'Nguyá»…n', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Äáº¡i Há»c', '', '', 'NhÃ¢n viÃªn Ká»¹ Thuáº­t', '', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(232, 20, 6, 17, 10603007, 2010603007, 'Huá»³nh', 'Vinh', '7/12/1983', 27, '', '', 'ÄÃ  Náºµng', 'PhÆ°á»ng HÃ²a QuÃ½', 'NgÅ© HÃ nh SÆ¡n', 'ÄÃ  Náºµng', '', '', '', 0, '', 'Cao Äáº³ng', 'Thiáº¿t káº¿ Má»¹ thuáº­t Ä‘a phÆ°Æ¡ng tiá»‡n', '', 'Thiáº¿t káº¿ viÃªn', '03/03/2010', 'News_huynhngoccattuong.jpg', '0', 0, 'CA ÄÃ  Náºµng', '07/01/2010', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', '154 HoÃ ng Diá»‡u', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(222, 15, 11, 17, 10703099, 15111710703099, 'LÃª NgÃ´ QuÃ³c', 'Vinh', '01/04/1986', 24, '', '', '', '', 'Äiá»‡n BÃ n ', 'Quáº£ng Nam', '', '', '', 1, '', 'THCS', 'LÃ¡i xe ', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/12/2009', 'News_lengoquoctrieu.jpg', '1', 0, 'CA ÄÃ  náºµng', '15/03/2007', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '05116279409', '0905246855', '70 Háº£i PhÃ²ng', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(223, 15, 11, 17, 10703100, 15111710703100, 'VÅ© Äá»©c', 'Vinh', '28/05/1985', 25, '', '', '', 'PhÆ°Æ¡ng CÃ´ng', 'Tiá»n Háº£i', 'ThÃ¡i BÃ¬nh', '', '', '', 1, '', 'THPT', 'LÃ¡i  xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/12/2009', 'News_vuduchieu.jpg', '1', 0, 'CA ThÃ¡i BÃ¬nh', '23/11/2006', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 43 An KhÃª', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh ', 'KhÃ´ng', '1'),
(224, 15, 11, 17, 10703101, 15111710703101, 'LÃª Gia ', 'Vinh', '09/03/1985', 25, '', '', '', '', '', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THPT', 'LÃ¡i xe ', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/12/2009', 'News_legiatai.jpg', '1', 0, 'CA ÄÃ  Náºµng', '12/08/2003', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'Tá»• 30 HÃ²a Hiá»‡p Nam', 'LiÃªn Chiá»ƒu', 'ÄÃ  Náºµng', 'Kinh', 'Viá»‡t Nam', '1'),
(225, 15, 11, 17, 10703102, 15111710703102, 'Mai HoÃ ng', 'Vinh', '15/03/1985', 25, '', '', '', 'Long BÃ¬nh', 'Long Má»¹', 'Cáº§n ThÆ¡', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '01/12/2009', 'News_maihoangmi.jpg', '1', 0, 'CA Cáº§n ThÆ¡', '30/12/2002', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'K 56/20 Nguyá»…n Duy Hiá»‡u', '', 'ÄÃ  NÃ£ng', 'Kinh', 'KhÃ´ng', '1'),
(226, 15, 11, 17, 107030103, 151117107030103, 'Huá»³nh ', 'Vinh', '9/7/1980', 29, 'Äiá»‡n BÃ n', 'Äiá»‡n Ngá»c', 'Quáº£ng Nam', 'Äiá»‡n BÃ n', 'ÄIá»‡n Ngá»c', 'Quáº£ng Nam', 'K56/20 Nguyá»…n Duy Hiá»‡u', 'ÄÃ  Náºµng', 'SÆ¡n TrÃ ', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '1/12/2009', 'News_huynhdinhthao.jpg', '1', 0, 'CA ÄÃ  Náºµng', '24/9/1996', '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', 1, 'Viá»‡t Nam', '', '0905246855', 'K56/20 Nguyá»…n Duy Hiá»‡u', 'SÆ¡n TrÃ ', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(227, 16, 8, 17, 10803028, 1681710803028, 'Tráº§n', 'Vinh', '6/4/1984', 26, '', '', 'ÄÃ  Náºµng', '', '', 'ÄÃ  Náºµng', '', '', '', 1, '', 'THCS', '', '', 'thá»£ SÆ¡n', '14/12/2009', '', '1', 0, '', '', 'Thá»£ sÆ¡n<br><br>', 1, 'Viá»‡t Nam', '', '0905246855', 'Phan ÄÄƒng LÆ°u', '', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(228, 16, 8, 17, 10803029, 1681710803029, 'HÃ ', 'Vinh', '22/6/1975', 35, '', '', '', 'Äiá»‡n Tháº¯ng', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '498/18 Tráº§n Cao VÃ¢n', 'ÄÃ  Náºµng', 'Thanh KhÃª', 1, '', 'THCS', 'SÆ¡n Ã´ tÃ´', '', 'Thá»£ sÆ¡n', '17/12/2009', 'News_haductoan.jpg', '1', 0, '', '', '<br>', 0, 'Viá»‡t Nam', '', '0905246855', '498/18 Tráº§n Cao VÃ¢n', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'Pháº­t giÃ¡o', '1'),
(229, 18, 5, 17, 1053021, 181053021, 'Tráº§n', 'Vinh', '04/6/1973', 37, '', '', '', '', '', 'Quáº£ng Nam', '', '', '', 1, '', 'Äáº¡i Há»c', 'XÃ¢y dá»±ng cáº§u Ä‘Æ°á»ng', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '21/12/2009', '', '1', 0, '', '', '<br>', 0, 'Viá»‡t Nam', '', '0905246855', '19 LÃª Lá»£i,phÆ°á»ng Tháº¡ch Thang', 'Háº£i ChÃ¢u', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(230, 18, 15, 17, 10503025, 1810503025, 'Nguyá»…n', 'Vinh', '06/02/1966', 44, 'Tháº¯ng Lá»£i', '', 'Kon Tum', '', 'Nam ÄÃ n', 'Nghá»‡ An', '', '', '', 1, '', 'THCS', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '21/12/2009', '', '1', 0, 'CA Kon Tum', '17/09/2009', '<br>', 0, 'Viá»‡t Nam', '0603868540', '0905246855', 'Tá»• 2 phÆ°á»ng Tháº¯ng Lá»£i', '', 'Kon Tum', 'Kinh', 'KhÃ´ng', '1'),
(231, 10, 2, 17, 10203023, 1010203023, 'VÃµ', 'Vinh', '10/06/1989', 21, '', 'HoÃ i NhÆ¡n', 'BÃ¬nh Äá»‹nh', 'Bá»“ng SÆ¡n', 'HoÃ i NhÆ¡n', 'BÃ¬nh Äá»Šnh', 'Tá»• 29 DÅ©ng SÄ© Thanh KhÃª', 'ÄÃ  Náºµng', 'Thanh KhÃª', 1, '', 'Äáº¡i Há»c', 'Káº¿ toÃ¡n doanh nghiá»‡p sáº£n xuáº¥t', 'Anh vÄƒn B, THVP', 'NhÃ¢n viÃªn hÃ nh chÃ­nh', '18/01/2010', '', '2', 0, 'CA BÃ¬nh Äá»‹nh', '11/06/2007', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', 'HoÃ i Äá»©c', 'HoÃ i NhÆ¡n', 'BÃ¬nh Äá»‹nh', 'KInh', 'KhÃ´ng', '1'),
(233, 10, 3, 17, 10303017, 1010303017, 'Tráº§n', 'Vinh', '14/11/1976', 34, '', '', 'Thá»«a ThiÃªn Huáº¿', '', '', 'Thá»«a ThiÃªn Huáº¿', '', '', '', 1, '', 'Äáº¡i Há»c', 'Kinh doanh ngoáº¡i thÆ°Æ¡ng', 'Anh vÄƒn C, THVP', 'NhÃ¢n viÃªn káº¿ toÃ¡n', '23/02/2010', '', '1', 0, 'CA ÄÃ  Náºµng', '', '<br>', 0, 'Viá»‡t Nam', '05113603886', '0905246855', 'Tá»• 40, HÃ²a KhÃª', 'Thanh KhÃª', 'ÄÃ  Náºµng', 'Kinh', 'KHÃ´ng', '1'),
(234, 18, 17, 17, 10503026, 1810503026, 'Nguyá»…n', 'Vinh', '10/10/1984', 26, 'HÃ²a KhÃ¡nh', 'HÃ²a Vang', 'ÄÃ  Náºµng', 'HÃ²a PhÆ°á»›c', 'HÃ²a Vang', 'ÄÃ  Náºµng', '', '', '', 1, '', 'Äáº¡i Há»c', 'XÃ¢y dá»±ng cáº§u Ä‘Æ°á»ng', 'Anh vÄƒn B, Bá»“i dÆ°á»¡ng nghiá»‡p vá»¥ giÃ¡m sÃ¡t thi cÃ´ng cÃ´ng trÃ¬nh', 'NhÃ¢n viÃªn Ká»¹ Thuáº­t', '23/02/2010', '', '0', 0, 'CA ÄÃ  Náºµng', '', '<br>', 1, 'Viá»‡t Nam', '', '0905246855', '121 Nguyá»…n ChÃ¡nh', 'LiÃªn Chiá»ƒu', 'ÄÃ  Náºµng', 'Kinh', 'KhÃ´ng', '1'),
(235, 18, 17, 17, 10503027, 18010503027, 'Äá»— ', 'Vinh', '06/03/1972', 38, '', '', 'Quáº£ng Nam', 'Äiá»‡n An', 'Äiá»‡n BÃ n', 'Quáº£ng Nam', '', '', '', 1, '', 'Cao Äáº³ng', 'Ká»¹ SÆ° Cáº§u Ä‘Æ°á»ng', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '25/02/2010', '', '1', 0, 'CA Quáº£ng Nam', '20/11/2008', '<br>', 0, 'Viá»‡t Nam', '', '0905246855', 'KhÃ´i 3, PhÆ°á»ng Thanh HÃ ', '', 'Há»™i An, Quáº£ng Nam', 'Kinh', 'KhÃ´ng', '1'),
(236, 18, 17, 17, 10503028, 1810503028, 'TrÆ°Æ¡ng', 'Vinh', '05/05/1970', 40, '', '', '', '', '', '', '', '', '', 1, '', 'THPT', 'LÃ¡i xe', '', 'NhÃ¢n viÃªn lÃ¡i xe', '25/02/2010', '', '1', 0, 'CA Quáº£ng Nam', '', '<br>', 0, 'Viá»‡t Nam', '', '0905246855', 'ThÃ´n Phong Thá»© I, Äiá»‡n Thá»', 'Äiá»‡n BÃ n', 'Quáº£ng nam', 'Kinh', 'KhÃ´ng', '1'),
(237, 18, 17, 12, 10502029, 1810502029, 'TrÆ°Æ¡ng', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'GiÃ¡m Ä‘á»‘c Dá»± Ãn NH -MB', '01/01/2010', '', '1', 0, '', '', '<BR>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(238, 18, 15, 12, 10502030, 1810502030, 'Tráº§n', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'GiÃ¡m Ä‘á»‘c Dá»± Ã¡n Kon Tum', '', '', '1', 0, '', '', '<BR>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(239, 18, 18, 17, 10502031, 1810502031, 'Huá»³nh', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'GÄ dá»± Ã¡n Háº£i LÄƒng Quáº£ng Trá»‹', '', '', '1', 0, '', '', '<BR>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(240, 18, 55, 17, 10503032, 18010503032, 'Nguyá»…n ', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '01/03/2010', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(241, 18, 18, 17, 10503033, 18010503033, 'Äáº·ng', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'Káº¿ toÃ¡n', '01/03/2010', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(244, 18, 18, 17, 10503035, 18010503035, 'LÃª', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'NhÃ¢n viÃªn Ká»¹ Thuáº­t', '01/03/2010', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(243, 18, 18, 17, 10305035, 18010305035, 'Nguyá»…n ', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '01/03/2010', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(245, 18, 18, 17, 10503036, 18010503036, 'nguyá»…n', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '01/03/2010', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(246, 18, 55, 17, 10503037, 18010503037, 'Nguyá»…n', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '01/03/2010', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(247, 18, 18, 17, 10503038, 18010503038, 'Nguyá»…n', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(248, 18, 18, 17, 10503039, 18010503039, 'TrÆ°Æ¡ng', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'NhÃ¢n viÃªn váº­t tÆ° thiáº¿t bá»‹', '01/03/2010', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(249, 18, 18, 17, 10503040, 18010503040, 'Nguyá»…n', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'Báº£o vá»‡', '01/03/2010', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(250, 18, 18, 17, 10503041, 18010503041, 'Há»“', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'lÃ¡i xe', '01/03/2010', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(251, 18, 18, 17, 10503042, 18010503042, 'Nguyá»…n', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'NhÃ¢n viÃªn ká»¹ thuáº­t', '01/03/2010', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1'),
(252, 18, 55, 17, 10503043, 18010503043, 'TrÆ°Æ¡ng', 'Vinh', '', 0, '', '', '', '', '', '', '', '', '', 1, '', 'Tiáº¿n Sá»¹', '', '', 'GiÃ¡m sÃ¡t thi cÃ´ng', '', '', '1', 0, '', '', '<br>', 1, '', '', '0905246855', '', '', '', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_khenthuongkl`
--

CREATE TABLE `qlns_khenthuongkl` (
  `qlns_idktkl` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_hinhthuc` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_lydo` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_sotien` bigint(15) NOT NULL,
  `qlns_ghichu` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngay` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qlns_kyluatkt`
--

CREATE TABLE `qlns_kyluatkt` (
  `qlns_idkl` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_hinhthuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_lydo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_sotien` bigint(15) NOT NULL,
  `qlns_ghichu` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngay` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qlns_link`
--

CREATE TABLE `qlns_link` (
  `link_id` int(11) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `link_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `link_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link_status` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_link`
--

INSERT INTO `qlns_link` (`link_id`, `chapter_id`, `link_name`, `link_link`, `link_status`) VALUES
(1, 1, 'Quáº£n lÃ½ nhÃ¢n sá»±', 'http://nhansu.ctnvietnam.com', 1),
(2, 7, 'Truyá»n hÃ¬nh cÃ¡p', 'http://ctv.ctnvietnam.com', 1),
(3, 6, 'Kinh Doanh Taxi', 'http://taxi.ctnvietnam.com', 1),
(4, 2, 'CÃ´ng Nghá»‡ ThÃ´ng Tin', 'http://it.ctnvietnam.com', 1),
(5, 3, 'Quáº£n lÃ½ XÃ¢y dá»±ng', 'http://xaydung.ctnvietnam.com', 1),
(6, 4, 'á»¨ng dá»¥ng cÃ´ng nghá»‡', 'http://hitech.ctnvietnam.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `qlns_luanchuyen`
--

CREATE TABLE `qlns_luanchuyen` (
  `qlns_idlc` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_mabp` int(11) NOT NULL,
  `qlns_chucdanhmoi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_macv` int(11) NOT NULL,
  `qlns_lydo` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_soquyetdinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_luanchuyen`
--

INSERT INTO `qlns_luanchuyen` (`qlns_idlc`, `qlns_mahsnv`, `qlns_mabp`, `qlns_chucdanhmoi`, `qlns_macv`, `qlns_lydo`, `qlns_soquyetdinh`) VALUES
(4, 1031710303010, 3, 'Káº¿ toÃ¡n xÆ°á»Ÿng', 17, 'Nhu cáº§u cÃ´ng viá»‡c vÃ  Ä‘iá»u Ä‘á»™ng cá»§a Tá»•ng GiÃ¡m Äá»‘c<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', '10/2009/QÄ/NS/CTN'),
(3, 1031710303011, 3, 'káº¿ toÃ¡n viÃªn', 17, '<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', ''),
(5, 1031710303011, 3, 'Káº¿ toÃ¡n tÃ i chÃ­nh', 17, 'Nhu cáº§u cÃ´ng viá»‡c vÃ  Ä‘iá»u Ä‘á»™ng cá»§a Tá»•ng GiÃ¡m Äá»‘c<br>', '12/2009/QÄ/NS/CTN'),
(8, 1851710503020, 18, 'NhÃ¢n viÃªn lÃ¡i xe', 17, 'nhu cáº§u cÃ´ng viá»‡c ; Ä‘iá»u Ä‘á»™ng cá»§a GiÃ¡m Ä‘á»‘c QLÄ<br>', '40-2010/QÄ/NS/CTN'),
(7, 1851710203012, 5, 'NhÃ¢n viÃªn hÃ nh chÃ­nh', 17, 'Nhu cáº§u cÃ´ng viá»‡c vÃ  sá»± Ä‘iá»u Ä‘á»™ng cá»§a Tá»•ng giÃ¡m Ä‘á»‘c<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', '11/2009/QÄ/NS/CTN'),
(9, 1851710503006, 18, 'nhÃ¢n viÃªn ká»¹ thuáº­t', 17, 'nhu cáº§u cÃ´ng viá»‡c vÃ  sá»± Ä‘iá»u Ä‘á»™ng cá»§a giÃ¡m Ä‘á»‘c QLXD<br>', '41-2010/QÄ/NS/CTN'),
(10, 18010502031, 55, '', 17, 'Do nhu cáº§u cÃ´ng viá»‡c, Ä‘iá»u Ä‘á»™ng cá»§a Tá»•ng giÃ¡m Ä‘á»‘c<br>', '39-2010/QÄ/NS/CTN'),
(11, 18010503032, 55, 'NhÃ¢n viÃªn ká»¹ thuáº­t', 17, 'Nhu cáº§u cÃ´ng viá»‡c vÃ  sá»± Ä‘iá»u Ä‘á»™ng cá»§a GiÃ¡m Ä‘á»‘c Quáº£n lÃ½ xÃ¢y dá»±ng<br><br>', '44-2010/QÄ/NS/CTN'),
(12, 18010503037, 55, 'NhÃ¢n viÃªn ká»¹ thuáº­t', 17, 'Nhu cáº§u cÃ´ng viá»‡c vÃ  sá»± Ä‘iá»u Ä‘á»™ng cá»§a Tá»•ng giÃ¡m Ä‘á»‘c<br>', '42-2010/QÄ/NS/CTN'),
(13, 18010503043, 55, 'GiÃ¡m sÃ¡t thi cÃ´ng', 17, 'Nhu cáº§u cÃ´ng viá»‡c vÃ  sá»± Ä‘iá»u Ä‘á»™ng cá»§a GiÃ¡m Ä‘á»‘c Quáº£n lÃ½ xÃ¢y dá»±ng<br>', '43-2010/QÄ/NS/CTN');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_lylich`
--

CREATE TABLE `qlns_lylich` (
  `qlns_idll` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_tinhtranghn` int(1) NOT NULL DEFAULT '0',
  `qlns_quoctich` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_dienthoainha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_dthoaididong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_diachi` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_lylich`
--

INSERT INTO `qlns_lylich` (`qlns_idll`, `qlns_mahsnv`, `qlns_tinhtranghn`, `qlns_quoctich`, `qlns_dienthoainha`, `qlns_dthoaididong`, `qlns_diachi`) VALUES
(1, 10121714, 1, 'Viá»‡t Nam ', '0542234897', '0988323489', 'PhÃº BÃ i Thá»«a ThiÃªn Huáº¿<br>'),
(2, 10121715, 1, 'Viá»‡t Nam', '0905094336', '0905094336', 'Quáº£ng Nam<br>');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_news`
--

CREATE TABLE `qlns_news` (
  `news_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `news_heading` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_summarize` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_images` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ctn_id` bigint(20) NOT NULL,
  `news_counter` int(11) NOT NULL,
  `news_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_news`
--

INSERT INTO `qlns_news` (`news_id`, `cat_id`, `news_heading`, `news_summarize`, `news_images`, `news_content`, `news_source`, `ctn_id`, `news_counter`, `news_day`) VALUES
(1, 2, 'CTN Viá»‡t Nam quáº­y tÆ°ng bá»«ng trong ngÃ y 20/10', '<span class="quangvinhdesign">ÄÆ°á»£c ban giÃ¡m Ä‘á»‘c cÃ´ng ty CTN\r\nViá»‡t <st1:country-region w:st="on">Nam</st1:country-region> quan tÃ¢m táº¡o Ä‘iá»u\r\nkiá»‡n, hÃ´m qua 20/10 â€“ chá»‹ em CTN Viá»‡t <st1:place w:st="on"><st1:country-region w:st="on">', 'News_dappha.png', '', 'CTN QLNS', 1, 0, '18/12/2009'),
(2, 1, 'CTN Ä‘oÃ n káº¿t, phÃ¡t huy tinh tháº§n lÃ m háº¿t sá»©c chÆ¡i mÃ¬nh..', '<span class="designwebdnkha"></span><span class="quangvinhdesign">ÄÃºng vá»›i Ã½ nghÄ©a slogan: PhÃ¡t triá»ƒn bá»n\r\nvá»¯ng, táº­p thá»ƒ CTN luÃ´n Ä‘oÃ n káº¿t gáº¯n bÃ³ vá»›i nhau, Ä‘iá»u Ä‘Ã³ Ä‘Æ°á»£c thá»ƒ hiá»‡n\r\nqua cÃ´ng viá»‡c, du lá»‹ch , cÃ¡c b', '', '<br>', 'CTN QLNS', 1, 0, '18/12/2009');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_nghiphep`
--

CREATE TABLE `qlns_nghiphep` (
  `qlns_idnp` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_ngaybd` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngaykt` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_lydonghi` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_nghiphep`
--

INSERT INTO `qlns_nghiphep` (`qlns_idnp`, `qlns_mahsnv`, `qlns_ngaybd`, `qlns_ngaykt`, `qlns_lydonghi`) VALUES
(12, 2061210602002, '20/01/2010', '21/01/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(2, 1021710203001, '14/12/2009', '15/12/2009', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br><br>'),
(4, 1021710202004, '24/12/2009', '25/12/2009', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(5, 1681710803007, '08/01/2009', '11/01/2009', 'Tá»• chá»©c cÆ°á»›i<br>'),
(6, 1941210402001, '04/01/2009', '11/01/2009', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(7, 1031710303006, '15/1/2010', '16/1/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(8, 1851210502001, '14/01/2010', '23/01/2010', 'Tá»• chá»©c cÆ°á»›i<br>'),
(9, 1031710303008, '18/01/2010', '21/01/2010', 'Tá»• chá»©c Ä‘Ã­nh hÃ´n<br>'),
(10, 1031710303012, '16/01/2010', '16/01/2010', '<br>'),
(11, 1031210301005, '16/01/2010', '16/01/2010', '<br>'),
(13, 1571710703004, '25/01/2010', '10/02/2010', '<br>'),
(14, 1021710203002, '19/01/2010', '21/01/2010', '<br>'),
(15, 1021710203011, '10/02/2010', '12/02/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(16, 1021710203011, '18/02/2010', '20/02/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(17, 1031710303008, '11/02/2010', '12/02/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(18, 1021710203001, '10/02/2010', '12/02/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(19, 1021710203015, '12/02/2010', '12/02/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(20, 1021710203008, '11/02/2010', '11/02/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(21, 1021710202004, '11/02/2010', '12/02/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(22, 1031710303006, '12/03/2010', '15/03/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(23, 1031710303011, '06/03/2010', '06/03/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(24, 2061710603005, '08/03/2010', '10/03/2010', 'Bá»‹ á»‘m<br>'),
(25, 1021710203002, '01/03/2010', '01/03/2010', 'Bá»‹ á»‘m<br>'),
(26, 2061710603006, '17/03/2010', '19/03/2010', 'Bá»‹ á»‘m<br>'),
(27, 1021710203008, '23/03/2010', '23/03/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>'),
(28, 1021710203008, '24/03/2010', '27/03/2010', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_phucap`
--

CREATE TABLE `qlns_phucap` (
  `qlns_idpc` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_loaiphucap` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_sotien` bigint(15) NOT NULL,
  `qlns_ngayhieuluc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ngayhethieuluc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qlns_phucap`
--

INSERT INTO `qlns_phucap` (`qlns_idpc`, `qlns_mahsnv`, `qlns_loaiphucap`, `qlns_sotien`, `qlns_ngayhieuluc`, `qlns_ngayhethieuluc`) VALUES
(1, 10131923, 'Phá»¥ cáº¥p Äƒn trÆ°a.<br>', 7000000, '2009-11-15', '2009-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `qlns_quatrinhcongtac`
--

CREATE TABLE `qlns_quatrinhcongtac` (
  `qlns_idqtct` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_tungay` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_denngay` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_tencongty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_chucdanh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_diachict` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_dienthoaict` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_luongkhoidiem` int(11) NOT NULL,
  `qlns_luongcuoicung` int(11) NOT NULL,
  `qlns_nguoilienhect` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_vitringuoilienhe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_nhiemvuchinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_lydochuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_dongbaohiem` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ghichu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qlns_quatrinhdaotao`
--

CREATE TABLE `qlns_quatrinhdaotao` (
  `qlns_idqtdt` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_namnhaphoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_namketthuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_bangcap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_noidaotao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_nghanhdaotao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_chuyennghanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_hinhthuc` text COLLATE utf8_unicode_ci NOT NULL,
  `qlns_ghichu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qlns_quyenloidacbiet`
--

CREATE TABLE `qlns_quyenloidacbiet` (
  `qlns_idqldb` int(11) NOT NULL,
  `qlns_mahsnv` bigint(11) NOT NULL,
  `qlns_tungay` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_toingay` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_loaiquyenloi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qlns_sotien` bigint(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qlns_thoiviec`
--

CREATE TABLE `qlns_thoiviec` (
  `qlns_idtv` int(11) NOT NULL,
  `qlns_mahsnv` bigint(20) NOT NULL,
  `qlns_ngaynghiviec` varchar(50) NOT NULL,
  `qlns_hinhthuc` varchar(50) NOT NULL,
  `qlns_lydonghi` varchar(255) NOT NULL,
  `qlns_trocapthoiviec` varchar(100) NOT NULL,
  `ctn_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qlns_thoiviec`
--

INSERT INTO `qlns_thoiviec` (`qlns_idtv`, `qlns_mahsnv`, `qlns_ngaynghiviec`, `qlns_hinhthuc`, `qlns_lydonghi`, `qlns_trocapthoiviec`, `ctn_id`) VALUES
(1, 1681710803012, '16/12/2009', 'CÃ´ng ty buá»™c thÃ´i viá»‡c', 'ThÃ¡i Ä‘á»™ lÃ m viá»‡c khÃ´ng tá»‘t, khÃ´ng cháº¥p hÃ nh Ä‘iá»u hÃ nh cá»§a quáº£n lÃ½ xÆ°á»Ÿng<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', '2.700.000Ä‘', 0),
(2, 1941710403002, '09/02/2010', 'xin nghá»‰ viá»‡c', 'MÃ´i trÆ°á»ng lÃ m viá»‡c khÃ´ng phÃ¹ há»£p<br>', '0', 0),
(3, 1941710403003, '07/02/2010', 'Xin thÃ´i viá»‡c', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>', '0', 0),
(4, 2061710603001, '10/02/2010', 'Xin thÃ´i viá»‡c', 'Chuyá»ƒn cÃ´ng viá»‡c<br><input id="gwProxy" type="hidden"><!--Session data--><input onclick="jsCall();" id="jsProxy" type="hidden"><div id="refHTML"></div>', '0', 0),
(5, 1681710803010, '15/03/2010', 'Xin thÃ´i viá»‡c', 'Ä‘i há»c<br>', '1800000', 0),
(6, 1681710803016, '15/03/2010', 'Cho thÃ´i viÃªc', 'tinh giáº£m biÃªn cháº¿<br>', '1800000', 0),
(7, 1851710503005, '11/02/2010', 'Xin thÃ´i viá»‡c', 'Báº­n viá»‡c gia Ä‘Ã¬nh<br>', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qlns_administrator`
--
ALTER TABLE `qlns_administrator`
  ADD PRIMARY KEY (`ctn_id`);

--
-- Indexes for table `qlns_announcement`
--
ALTER TABLE `qlns_announcement`
  ADD PRIMARY KEY (`announ_id`);

--
-- Indexes for table `qlns_baohiemxahoi`
--
ALTER TABLE `qlns_baohiemxahoi`
  ADD PRIMARY KEY (`qlns_idbhxh`);

--
-- Indexes for table `qlns_baohiemyte`
--
ALTER TABLE `qlns_baohiemyte`
  ADD PRIMARY KEY (`qlns_idbhyt`);

--
-- Indexes for table `qlns_bophan`
--
ALTER TABLE `qlns_bophan`
  ADD PRIMARY KEY (`qlns_idbp`);

--
-- Indexes for table `qlns_capbac`
--
ALTER TABLE `qlns_capbac`
  ADD PRIMARY KEY (`qlns_idcb`);

--
-- Indexes for table `qlns_catelogy`
--
ALTER TABLE `qlns_catelogy`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `qlns_catelogyfor`
--
ALTER TABLE `qlns_catelogyfor`
  ADD PRIMARY KEY (`catfor_id`);

--
-- Indexes for table `qlns_chapter`
--
ALTER TABLE `qlns_chapter`
  ADD PRIMARY KEY (`chapter_id`);

--
-- Indexes for table `qlns_chucvu`
--
ALTER TABLE `qlns_chucvu`
  ADD PRIMARY KEY (`qlns_idcv`);

--
-- Indexes for table `qlns_congty`
--
ALTER TABLE `qlns_congty`
  ADD PRIMARY KEY (`qlns_idct`);

--
-- Indexes for table `qlns_contact`
--
ALTER TABLE `qlns_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `qlns_danhgianv`
--
ALTER TABLE `qlns_danhgianv`
  ADD PRIMARY KEY (`qlns_madg`);

--
-- Indexes for table `qlns_dinuocngoai`
--
ALTER TABLE `qlns_dinuocngoai`
  ADD PRIMARY KEY (`qlns_iddnn`);

--
-- Indexes for table `qlns_formwritten`
--
ALTER TABLE `qlns_formwritten`
  ADD PRIMARY KEY (`for_id`);

--
-- Indexes for table `qlns_ghichunv`
--
ALTER TABLE `qlns_ghichunv`
  ADD PRIMARY KEY (`qlns_idghichu`);

--
-- Indexes for table `qlns_giadinh`
--
ALTER TABLE `qlns_giadinh`
  ADD PRIMARY KEY (`qlns_idgdnv`);

--
-- Indexes for table `qlns_hopdonglaodong`
--
ALTER TABLE `qlns_hopdonglaodong`
  ADD PRIMARY KEY (`qlns_mahd`);

--
-- Indexes for table `qlns_hosonhanvien`
--
ALTER TABLE `qlns_hosonhanvien`
  ADD PRIMARY KEY (`qlns_hsnv`);

--
-- Indexes for table `qlns_khenthuongkl`
--
ALTER TABLE `qlns_khenthuongkl`
  ADD PRIMARY KEY (`qlns_idktkl`);

--
-- Indexes for table `qlns_kyluatkt`
--
ALTER TABLE `qlns_kyluatkt`
  ADD PRIMARY KEY (`qlns_idkl`);

--
-- Indexes for table `qlns_link`
--
ALTER TABLE `qlns_link`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `qlns_luanchuyen`
--
ALTER TABLE `qlns_luanchuyen`
  ADD PRIMARY KEY (`qlns_idlc`);

--
-- Indexes for table `qlns_lylich`
--
ALTER TABLE `qlns_lylich`
  ADD PRIMARY KEY (`qlns_idll`);

--
-- Indexes for table `qlns_news`
--
ALTER TABLE `qlns_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `qlns_nghiphep`
--
ALTER TABLE `qlns_nghiphep`
  ADD PRIMARY KEY (`qlns_idnp`);

--
-- Indexes for table `qlns_phucap`
--
ALTER TABLE `qlns_phucap`
  ADD PRIMARY KEY (`qlns_idpc`);

--
-- Indexes for table `qlns_quatrinhcongtac`
--
ALTER TABLE `qlns_quatrinhcongtac`
  ADD PRIMARY KEY (`qlns_idqtct`);

--
-- Indexes for table `qlns_quatrinhdaotao`
--
ALTER TABLE `qlns_quatrinhdaotao`
  ADD PRIMARY KEY (`qlns_idqtdt`);

--
-- Indexes for table `qlns_quyenloidacbiet`
--
ALTER TABLE `qlns_quyenloidacbiet`
  ADD PRIMARY KEY (`qlns_idqldb`);

--
-- Indexes for table `qlns_thoiviec`
--
ALTER TABLE `qlns_thoiviec`
  ADD PRIMARY KEY (`qlns_idtv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qlns_administrator`
--
ALTER TABLE `qlns_administrator`
  MODIFY `ctn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `qlns_announcement`
--
ALTER TABLE `qlns_announcement`
  MODIFY `announ_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `qlns_baohiemxahoi`
--
ALTER TABLE `qlns_baohiemxahoi`
  MODIFY `qlns_idbhxh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `qlns_baohiemyte`
--
ALTER TABLE `qlns_baohiemyte`
  MODIFY `qlns_idbhyt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `qlns_bophan`
--
ALTER TABLE `qlns_bophan`
  MODIFY `qlns_idbp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `qlns_capbac`
--
ALTER TABLE `qlns_capbac`
  MODIFY `qlns_idcb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `qlns_catelogy`
--
ALTER TABLE `qlns_catelogy`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `qlns_catelogyfor`
--
ALTER TABLE `qlns_catelogyfor`
  MODIFY `catfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `qlns_chapter`
--
ALTER TABLE `qlns_chapter`
  MODIFY `chapter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `qlns_chucvu`
--
ALTER TABLE `qlns_chucvu`
  MODIFY `qlns_idcv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `qlns_congty`
--
ALTER TABLE `qlns_congty`
  MODIFY `qlns_idct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `qlns_contact`
--
ALTER TABLE `qlns_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `qlns_danhgianv`
--
ALTER TABLE `qlns_danhgianv`
  MODIFY `qlns_madg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `qlns_dinuocngoai`
--
ALTER TABLE `qlns_dinuocngoai`
  MODIFY `qlns_iddnn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `qlns_formwritten`
--
ALTER TABLE `qlns_formwritten`
  MODIFY `for_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `qlns_ghichunv`
--
ALTER TABLE `qlns_ghichunv`
  MODIFY `qlns_idghichu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `qlns_giadinh`
--
ALTER TABLE `qlns_giadinh`
  MODIFY `qlns_idgdnv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;
--
-- AUTO_INCREMENT for table `qlns_hopdonglaodong`
--
ALTER TABLE `qlns_hopdonglaodong`
  MODIFY `qlns_mahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `qlns_hosonhanvien`
--
ALTER TABLE `qlns_hosonhanvien`
  MODIFY `qlns_hsnv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `qlns_khenthuongkl`
--
ALTER TABLE `qlns_khenthuongkl`
  MODIFY `qlns_idktkl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `qlns_kyluatkt`
--
ALTER TABLE `qlns_kyluatkt`
  MODIFY `qlns_idkl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `qlns_link`
--
ALTER TABLE `qlns_link`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `qlns_luanchuyen`
--
ALTER TABLE `qlns_luanchuyen`
  MODIFY `qlns_idlc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `qlns_lylich`
--
ALTER TABLE `qlns_lylich`
  MODIFY `qlns_idll` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `qlns_news`
--
ALTER TABLE `qlns_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `qlns_nghiphep`
--
ALTER TABLE `qlns_nghiphep`
  MODIFY `qlns_idnp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `qlns_phucap`
--
ALTER TABLE `qlns_phucap`
  MODIFY `qlns_idpc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `qlns_quatrinhcongtac`
--
ALTER TABLE `qlns_quatrinhcongtac`
  MODIFY `qlns_idqtct` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qlns_quatrinhdaotao`
--
ALTER TABLE `qlns_quatrinhdaotao`
  MODIFY `qlns_idqtdt` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qlns_quyenloidacbiet`
--
ALTER TABLE `qlns_quyenloidacbiet`
  MODIFY `qlns_idqldb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `qlns_thoiviec`
--
ALTER TABLE `qlns_thoiviec`
  MODIFY `qlns_idtv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
