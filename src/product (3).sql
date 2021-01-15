-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-01-11 20:17:33
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `xiaomi.com`
--

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL COMMENT '商品id',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `price` float NOT NULL COMMENT '商品价格',
  `num` int(11) NOT NULL COMMENT '商品数量',
  `picture` varchar(255) NOT NULL COMMENT '商品图片',
  `details` text NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `num`, `picture`, `details`) VALUES
(1, '小米11', 3999, 162, '[{\"src\": \"imgs/p03-0.jpg\",\"alt\": \"small\"}, {\"src\": \"imgs/p03-1.jpg\",\"alt\": \"details-1\"}, {\"src\": \"imgs/p03-2.jpg\",\"alt\": \"details-2\"}]', '<h1>假装有详情</h1>'),
(2, 'Note 9 Pro', 1599, 1354, '[{ \"src\": \"imgs/p01-0.jpg\", \"alt\": \"small\" }, { \"src\": \"imgs/p01-1.jpg\", \"alt\": \"details-1\" }, { \"src\": \"imgs/p01-2.jpg\", \"alt\": \"details-2\" }]', '<h1>假装有详情</h1>'),
(3, 'Note 9', 1299, 3468, '[{ \"src\": \"imgs/p02-0.jpg\", \"alt\": \"small\" }, { \"src\": \"imgs/p02-1.jpg\", \"alt\": \"details-1\" }, { \"src\": \"imgs/p02-2.jpg\", \"alt\": \"details-2\" }]', '<h1>假装有详情</h1>'),
(4, 'Note 9 4G', 999, 3468, '[{ \"src\": \"imgs/p02-0.jpg\", \"alt\": \"small\" }, { \"src\": \"imgs/p02-1.jpg\", \"alt\": \"details-1\" }, { \"src\": \"imgs/p02-2.jpg\", \"alt\": \"details-2\" }]', '<h1>假装有详情</h1>'),
(5, '小米 10至尊版', 5299, 346, '[{ \"src\": \"imgs/p02-0.jpg\", \"alt\": \"small\" }, { \"src\": \"imgs/p02-1.jpg\", \"alt\": \"details-1\" }, { \"src\": \"imgs/p02-2.jpg\", \"alt\": \"details-2\" }]', '<h1>假装有详情</h1>'),
(6, 'Redmi K30 至尊纪念版', 5299, 3461, '[{ \"src\": \"imgs/p02-0.jpg\", \"alt\": \"small\" }, { \"src\": \"imgs/p02-1.jpg\", \"alt\": \"details-1\" }, { \"src\": \"imgs/p02-2.jpg\", \"alt\": \"details-2\" }]', '<h1>假装有详情</h1>'),
(7, 'Redmi K30S 至尊版', 2599, 3461, '[{ \"src\": \"imgs/p02-0.jpg\", \"alt\": \"small\" }, { \"src\": \"imgs/p02-1.jpg\", \"alt\": \"details-1\" }, { \"src\": \"imgs/p02-2.jpg\", \"alt\": \"details-2\" }]', '<h1>假装有详情</h1>'),
(8, '腾讯黑鲨 3S', 3999, 256, '[{ \"src\": \"imgs/p02-0.jpg\", \"alt\": \"small\" }, { \"src\": \"imgs/p02-1.jpg\", \"alt\": \"details-1\" }, { \"src\": \"imgs/p02-2.jpg\", \"alt\": \"details-2\" }]', '<h1>假装有详情</h1>');

--
-- 转储表的索引
--

--
-- 表的索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
