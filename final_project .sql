-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-01-04 18:03:49
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `final_project`
--

-- --------------------------------------------------------

--
-- 資料表結構 `contact`
--

CREATE TABLE `contact` (
  `store_ID` int(15) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `business_hours` varchar(15) NOT NULL,
  `contact_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `contact`
--

INSERT INTO `contact` (`store_ID`, `phone_number`, `business_hours`, `contact_id`) VALUES
(1, '0936936987', '12:00-23:00', 1),
(2, ' 0424522131', '10:00-22:00', 2),
(3, ' 0906109606', '10:00–22:00', 3),
(4, '0224626266', '11:00–22:45', 4),
(5, ' 0422071588', '10:30–22:50', 5),
(6, ' 073981488', '07:00–22:00', 6),
(7, ' 0224256566', '10:30–21:15', 7),
(8, ' 0426312585', '10:30–22:30', 8),
(9, '073111520', '10:00–21:30', 9),
(10, ' 0224255899', '10:00–22:00', 10),
(11, ' 0422601280', '10:00–22:00', 11),
(12, ' 073223365', '10:00–22:00', 12);

-- --------------------------------------------------------

--
-- 資料表結構 `drinks`
--

CREATE TABLE `drinks` (
  `drinks_ID` int(15) NOT NULL,
  `drinks_name` varchar(30) NOT NULL,
  `drinks_price` int(5) NOT NULL,
  `drinks_cal` int(15) DEFAULT NULL,
  `drinks_sugar` int(15) DEFAULT NULL,
  `store_type_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `drinks`
--

INSERT INTO `drinks` (`drinks_ID`, `drinks_name`, `drinks_price`, `drinks_cal`, `drinks_sugar`, `store_type_id`) VALUES
(1, '老大紅茶', 35, 179, 60, 1),
(2, '珍珠鮮奶茶', 65, 446, 45, 1),
(3, '烏龍鮮奶茶', 65, 298, 60, 1),
(4, '鐵觀音鮮奶茶', 65, 298, 60, 1),
(5, '一流清茶', 35, 179, 60, 1),
(6, '打龜綠茶', 35, 179, 60, 1),
(7, '白馬烏龍', 35, 179, 60, 1),
(8, '多多綠茶', 50, 287, 60, 1),
(9, '多多百香', 60, 363, 70, 1),
(10, '甘蔗青茶', 65, 180, 30, 1),
(11, '檸檬愛玉', 55, 207, 40, 1),
(12, '詐欺ㄟ', 100, NULL, NULL, 1),
(13, '錫蘭紅茶', 30, 211, 48, 2),
(15, '珍珠奶茶', 50, 720, 50, 2),
(16, '烏龍奶茶', 50, 633, 58, 2),
(17, '椰果奶茶', 50, 538, 65, 2),
(18, '優多綠茶', 45, 330, 72, 2),
(19, '優多檸檬', 65, 333, 73, 2),
(20, '蜂蜜檸檬', 70, 258, 55, 2),
(21, '金桔檸檬', 60, 211, 48, 2),
(22, '檸檬汁', 60, 205, 47, 2),
(23, 'Redbull 紅牛能量紅茶', 80, 154, 37, 2),
(24, '手採紅茶', 35, 92, 22, 3),
(25, '珍珠奶茶', 50, 754, 50, 3),
(26, '鐵觀音奶茶', 50, 522, 56, 3),
(27, '奶茶三兄弟', 55, 622, 61, 3),
(28, '珍珠鮮奶茶', 70, 547, 54, 3),
(29, '茉莉綠茶', 35, 135, 32, 3),
(30, '四季春青茶', 35, 135, 32, 3),
(31, '綠茶養樂多', 55, 343, 73, 3),
(32, '百香綠茶', 40, 350, 80, 3),
(33, '金桔檸檬', 50, 278, 63, 3),
(34, '百香雙響炮', 55, 568, 97, 3),
(35, 'Redbull 飛天瓜牛', 75, 227, 54, 3),
(36, '熟成紅茶', 30, 200, 50, 4),
(37, '麗春紅茶', 30, 200, 50, 4),
(38, '熟成歐蕾', 50, 311, 55, 4),
(39, '白玉歐蕾', 60, 443, 45, 4),
(40, '熟成冷露', 30, 211, 45, 4),
(41, '春芽綠茶', 30, 180, 45, 4),
(42, '胭脂多多', 50, 407, 95, 4),
(43, '熟成檸果', 50, NULL, NULL, 4),
(44, '春梅冰茶', 50, 356, 59, 4),
(45, '特級綠茶', 30, 205, 46, 2),
(46, '烏龍綠茶', 30, 226, 51, 2),
(47, '極品菁茶', 30, 226, 51, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `customer_phone` varchar(30) NOT NULL,
  `customer_name` varchar(15) NOT NULL,
  `order_date` datetime(4) NOT NULL,
  `store_ID` int(15) NOT NULL,
  `drinks_ID` int(15) NOT NULL,
  `order_id` int(10) NOT NULL,
  `note` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`customer_phone`, `customer_name`, `order_date`, `store_ID`, `drinks_ID`, `order_id`, `note`) VALUES
('1234567', 'kki', '2023-01-04 14:52:57.0000', 1, 1, 5, '少糖微冰'),
('096655421', 'kj', '2023-01-04 17:29:14.0000', 2, 12, 7, '少糖微冰'),
('1234567', 'kj', '2023-01-04 17:33:53.0000', 2, 12, 8, '少糖微冰不要珍珠低卡無糖好健康少納少鹽'),
('1234567', 'kki', '2023-01-04 17:45:28.0000', 1, 1, 11, '少糖微冰');

-- --------------------------------------------------------

--
-- 資料表結構 `stores`
--

CREATE TABLE `stores` (
  `store_ID` int(15) NOT NULL,
  `store_city` varchar(30) NOT NULL,
  `store_address` varchar(60) NOT NULL,
  `store_type_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `stores`
--

INSERT INTO `stores` (`store_ID`, `store_city`, `store_address`, `store_type_id`) VALUES
(1, '基隆市', '基隆市仁愛區愛四路45-1號', 1),
(2, '台中市', '台中市西屯區環中路二段1268-1號', 1),
(3, '高雄市', '高雄市鳳山區青年路二段534號', 1),
(4, '基隆市', '基隆市中正區中正路782號', 2),
(5, '台中市', '台中市北區民權路472-6號', 2),
(6, '高雄市', '高雄市三民區鼎山街367號', 2),
(7, '基隆市', '基隆市仁愛區愛三路28號', 3),
(8, '台中市', '台中市沙鹿區北勢東路609號', 3),
(9, '高雄市', '高雄市三民區泰安街111號', 3),
(10, '基隆市', '基隆市仁愛區孝一路65號200', 4),
(11, '台中市', '台中市南區工學路37號', 4),
(12, '高雄市', '高雄市三民區熱河一街343號', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `type_blacktea`
--

CREATE TABLE `type_blacktea` (
  `BlackTea_Type_id` int(5) NOT NULL,
  `drinks_ID` int(15) NOT NULL,
  `store_type_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `type_blacktea`
--

INSERT INTO `type_blacktea` (`BlackTea_Type_id`, `drinks_ID`, `store_type_id`) VALUES
(1, 1, 1),
(2, 13, 2),
(4, 24, 3),
(5, 36, 4),
(6, 37, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `type_fruittea`
--

CREATE TABLE `type_fruittea` (
  `FruitTea_Type_ID` int(5) NOT NULL,
  `drinks_ID` int(15) NOT NULL,
  `store_type_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `type_fruittea`
--

INSERT INTO `type_fruittea` (`FruitTea_Type_ID`, `drinks_ID`, `store_type_id`) VALUES
(1, 10, 1),
(2, 11, 1),
(3, 20, 2),
(4, 21, 2),
(5, 22, 2),
(6, 32, 3),
(7, 33, 3),
(8, 34, 3),
(9, 44, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `type_greentea`
--

CREATE TABLE `type_greentea` (
  `GreenTea_Type_ID` int(5) NOT NULL,
  `drinks_ID` int(15) NOT NULL,
  `store_type_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `type_greentea`
--

INSERT INTO `type_greentea` (`GreenTea_Type_ID`, `drinks_ID`, `store_type_id`) VALUES
(1, 5, 1),
(2, 6, 1),
(3, 7, 1),
(4, 45, 2),
(5, 46, 2),
(6, 47, 2),
(7, 29, 3),
(8, 30, 3),
(9, 40, 4),
(10, 41, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `type_milktea`
--

CREATE TABLE `type_milktea` (
  `MilkTea_Type_ID` int(5) NOT NULL,
  `drinks_ID` int(15) NOT NULL,
  `store_type_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `type_milktea`
--

INSERT INTO `type_milktea` (`MilkTea_Type_ID`, `drinks_ID`, `store_type_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 4, 1),
(4, 15, 2),
(5, 16, 2),
(6, 17, 2),
(7, 25, 3),
(8, 26, 3),
(9, 27, 3),
(10, 28, 3),
(11, 38, 4),
(12, 39, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `type_special`
--

CREATE TABLE `type_special` (
  `Special_Type_ID` int(5) NOT NULL,
  `drinks_ID` int(15) NOT NULL,
  `store_type_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `type_special`
--

INSERT INTO `type_special` (`Special_Type_ID`, `drinks_ID`, `store_type_id`) VALUES
(1, 12, 4),
(2, 23, 2),
(3, 36, 3),
(4, 43, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `type_store`
--

CREATE TABLE `type_store` (
  `store_type_id` int(5) NOT NULL,
  `store_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `type_store`
--

INSERT INTO `type_store` (`store_type_id`, `store_name`) VALUES
(1, '廖老大'),
(2, '清心'),
(3, 'Coco'),
(4, '可不可');

-- --------------------------------------------------------

--
-- 資料表結構 `type_yakult`
--

CREATE TABLE `type_yakult` (
  `Yakult_Type_ID` int(5) NOT NULL,
  `drinks_ID` int(15) NOT NULL,
  `store_type_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `type_yakult`
--

INSERT INTO `type_yakult` (`Yakult_Type_ID`, `drinks_ID`, `store_type_id`) VALUES
(1, 8, 1),
(2, 9, 1),
(3, 18, 2),
(4, 19, 2),
(5, 31, 3),
(6, 42, 4);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `store_ID` (`store_ID`);

--
-- 資料表索引 `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`drinks_ID`),
  ADD KEY `store_type_id` (`store_type_id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `store_ID` (`store_ID`),
  ADD KEY `drinks_ID` (`drinks_ID`);

--
-- 資料表索引 `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`store_ID`),
  ADD KEY `store_type_id` (`store_type_id`);

--
-- 資料表索引 `type_blacktea`
--
ALTER TABLE `type_blacktea`
  ADD PRIMARY KEY (`BlackTea_Type_id`),
  ADD KEY `drinks_ID` (`drinks_ID`),
  ADD KEY `store_type_id` (`store_type_id`);

--
-- 資料表索引 `type_fruittea`
--
ALTER TABLE `type_fruittea`
  ADD PRIMARY KEY (`FruitTea_Type_ID`),
  ADD KEY `drinks_ID` (`drinks_ID`),
  ADD KEY `store_type_id` (`store_type_id`);

--
-- 資料表索引 `type_greentea`
--
ALTER TABLE `type_greentea`
  ADD PRIMARY KEY (`GreenTea_Type_ID`),
  ADD KEY `drinks_ID` (`drinks_ID`),
  ADD KEY `store_type_id` (`store_type_id`);

--
-- 資料表索引 `type_milktea`
--
ALTER TABLE `type_milktea`
  ADD PRIMARY KEY (`MilkTea_Type_ID`),
  ADD KEY `store_type_id` (`store_type_id`),
  ADD KEY `drinks_ID` (`drinks_ID`);

--
-- 資料表索引 `type_special`
--
ALTER TABLE `type_special`
  ADD PRIMARY KEY (`Special_Type_ID`),
  ADD KEY `drinks_ID` (`drinks_ID`),
  ADD KEY `store_type_id` (`store_type_id`);

--
-- 資料表索引 `type_store`
--
ALTER TABLE `type_store`
  ADD PRIMARY KEY (`store_type_id`);

--
-- 資料表索引 `type_yakult`
--
ALTER TABLE `type_yakult`
  ADD PRIMARY KEY (`Yakult_Type_ID`),
  ADD KEY `drinks_ID` (`drinks_ID`),
  ADD KEY `store_type_id` (`store_type_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `drinks`
--
ALTER TABLE `drinks`
  MODIFY `drinks_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stores`
--
ALTER TABLE `stores`
  MODIFY `store_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `type_blacktea`
--
ALTER TABLE `type_blacktea`
  MODIFY `BlackTea_Type_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `type_fruittea`
--
ALTER TABLE `type_fruittea`
  MODIFY `FruitTea_Type_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `type_greentea`
--
ALTER TABLE `type_greentea`
  MODIFY `GreenTea_Type_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `type_milktea`
--
ALTER TABLE `type_milktea`
  MODIFY `MilkTea_Type_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `type_special`
--
ALTER TABLE `type_special`
  MODIFY `Special_Type_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `type_store`
--
ALTER TABLE `type_store`
  MODIFY `store_type_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `type_yakult`
--
ALTER TABLE `type_yakult`
  MODIFY `Yakult_Type_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `store_id_contact` FOREIGN KEY (`store_ID`) REFERENCES `stores` (`store_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `drinks`
--
ALTER TABLE `drinks`
  ADD CONSTRAINT `store_type_id_drinks` FOREIGN KEY (`store_type_id`) REFERENCES `type_store` (`store_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `drinks_id_order` FOREIGN KEY (`drinks_ID`) REFERENCES `drinks` (`drinks_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_id_orders` FOREIGN KEY (`store_ID`) REFERENCES `stores` (`store_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `store_type_id_stores` FOREIGN KEY (`store_type_id`) REFERENCES `type_store` (`store_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `type_blacktea`
--
ALTER TABLE `type_blacktea`
  ADD CONSTRAINT `drinks_id_blacktea` FOREIGN KEY (`drinks_ID`) REFERENCES `drinks` (`drinks_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_type_id_blacktea` FOREIGN KEY (`store_type_id`) REFERENCES `type_store` (`store_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `type_fruittea`
--
ALTER TABLE `type_fruittea`
  ADD CONSTRAINT `drinks_id_fruittea` FOREIGN KEY (`drinks_ID`) REFERENCES `drinks` (`drinks_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_type_id_fruittea` FOREIGN KEY (`store_type_id`) REFERENCES `type_store` (`store_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `type_greentea`
--
ALTER TABLE `type_greentea`
  ADD CONSTRAINT `drinks_id_greentea` FOREIGN KEY (`drinks_ID`) REFERENCES `drinks` (`drinks_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_type_id_greentea` FOREIGN KEY (`store_type_id`) REFERENCES `type_store` (`store_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `type_milktea`
--
ALTER TABLE `type_milktea`
  ADD CONSTRAINT `drinks_id_milktea` FOREIGN KEY (`drinks_ID`) REFERENCES `drinks` (`drinks_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_type_id_milktea` FOREIGN KEY (`store_type_id`) REFERENCES `type_store` (`store_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `type_special`
--
ALTER TABLE `type_special`
  ADD CONSTRAINT `drinks_id_special` FOREIGN KEY (`drinks_ID`) REFERENCES `drinks` (`drinks_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_type_id_special` FOREIGN KEY (`store_type_id`) REFERENCES `type_store` (`store_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `type_yakult`
--
ALTER TABLE `type_yakult`
  ADD CONSTRAINT `drinks_id_yakult` FOREIGN KEY (`drinks_ID`) REFERENCES `drinks` (`drinks_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_type_id_Yakult` FOREIGN KEY (`store_type_id`) REFERENCES `type_store` (`store_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
