-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 12 月 15 日 04:05
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `bookimage` varchar(1000) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `book`
--

INSERT INTO `book` (`id`, `bookname`, `bookimage`, `user_id`) VALUES
(1, 'イシューからはじめよ――知的生産の「シンプルな本質」', 'http://books.google.com/books/content?id=9LYzDgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 1),
(2, 'かえるじゃん', 'http://books.google.com/books/content?id=u1fkDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 2),
(17, 'モテる脳科学。', 'http://books.google.com/books/content?id=c4LLBAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 1),
(20, '決定版！ゲッターズ飯田のボーダーを着る女は、95％モテない！ 人気No.1占い師が見抜いた行動と性格の法則224', 'http://books.google.com/books/content?id=l3-5DAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 1),
(21, 'ピアノソロ・連弾 YOASOBI『THE BOOK 2』', 'http://books.google.com/books/content?id=b7zezgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `content`, `date`) VALUES
(1, 'ナナナ', 'test@test.com', 'memo', '2023-12-09 15:07:10'),
(2, 'はな', 'hana@test.com', 'フェレット', '2023-12-09 15:10:31'),
(3, 'いしざき', 'aaabbb@example.jp', 'こんにちは', '2023-12-09 15:11:49'),
(4, 'dog', 'dog@test.com', '犬です', '2023-12-09 15:13:09'),
(5, 'aaa', 'ff', 'dd', '2023-12-09 16:07:50'),
(6, 'dog', 'dog.com', 'dogggg', '2023-12-09 16:17:47');

-- --------------------------------------------------------

--
-- テーブルの構造 `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `member`
--

INSERT INTO `member` (`id`, `name`, `email`, `password`) VALUES
(1, 'はな', 'test@test.com', '$2y$10$YMaZJTpFii6Uz.zs3EkNc.GieLCq/dC/ojVFKvVqfU1j6kF/sBpxi'),
(2, 'aaa', 'aaa@test.com', '$2y$10$nBtPJtDnkzmXIXeT/eMg/uxMz5t.OoxHgLMfe8TS/XUsEnr10Z/xW');

-- --------------------------------------------------------

--
-- テーブルの構造 `sea`
--

CREATE TABLE `sea` (
  `id` int(11) NOT NULL,
  `seaname` varchar(255) NOT NULL,
  `prefecture` varchar(255) NOT NULL,
  `seapoint` varchar(1000) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `sea`
--

INSERT INTO `sea` (`id`, `seaname`, `prefecture`, `seapoint`, `date`, `user_id`) VALUES
(1, '渡嘉志久ビーチ', '沖縄県　慶良間諸島', 'ウミガメがいるよ！', '2023-12-15 09:05:41', 1),
(2, '白良浜', '和歌山県', '白浜がきれい〜', '2023-12-15 10:59:10', 2);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `sea`
--
ALTER TABLE `sea`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- テーブルの AUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルの AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルの AUTO_INCREMENT `sea`
--
ALTER TABLE `sea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
