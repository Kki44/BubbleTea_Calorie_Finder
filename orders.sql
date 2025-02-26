-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-01-04 18:03:34
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

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `store_ID` (`store_ID`),
  ADD KEY `drinks_ID` (`drinks_ID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `drinks_id_order` FOREIGN KEY (`drinks_ID`) REFERENCES `drinks` (`drinks_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_id_orders` FOREIGN KEY (`store_ID`) REFERENCES `stores` (`store_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
