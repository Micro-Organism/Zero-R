--
-- 表的结构 `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `name` char(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `sites`
--

INSERT INTO `sites` (`id`, `name`, `url`, `likes`) VALUES
(1, 'Google', 'www.google.com', 111),
(2, 'Runoob', 'www.runoob.com', 222),
(3, 'Taobao', 'www.taobao.com', 333);