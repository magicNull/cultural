-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2020-02-08 16:24:26
-- 服务器版本： 5.7.24
-- PHP 版本： 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `homestead`
--

-- --------------------------------------------------------

--
-- 表的结构 `cultures`
--

DROP TABLE IF EXISTS `cultures`;
CREATE TABLE IF NOT EXISTS `cultures` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id字段主键',
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `introduction` text COLLATE utf8mb4_unicode_ci COMMENT '简介',
  `intro` text COLLATE utf8mb4_unicode_ci COMMENT '没有标签的简介',
  `types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '页面区块类型',
  `form` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portrait` text COLLATE utf8mb4_unicode_ci COMMENT '图片路径',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态默认是正常',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `cultures`
--

INSERT INTO `cultures` (`id`, `uid`, `email`, `title`, `introduction`, `intro`, `types`, `form`, `portrait`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '120@qq.com', '测试', '<p>在这里输入你的内容</p><p><img src=\"/uploads/content/20200103/5baa9bf5b00b177dfb0b6a52d96b0112.jpg\" style=\"max-width:100%;\"></p>', '在这里输入你的内容', '展柜', '非物质文化遗产', '/uploads/content/20200103/5baa9bf5b00b177dfb0b6a52d96b0112.jpg', 1, '2020-01-03 12:23:20', '2020-01-03 15:22:48'),
(2, '1', '120@qq.com', '测试1', '<p><img src=\"/uploads/content/20200103/5baa9bf5b00b177dfb0b6a52d96b0112.jpg\" style=\"max-width:100%;\"></p><p><br></p>', NULL, '展柜', '非物质文化遗产', '/uploads/content/20200103/5baa9bf5b00b177dfb0b6a52d96b0112.jpg', 1, '2020-01-03 12:26:45', '2020-01-04 07:23:11'),
(3, '1', '120@qq.com', '测试视频', NULL, '123', '视频', '非物质文化遗产', '/uploads/VideoAudio/2020/01/03/1578058565.mp4', 1, '2020-01-03 13:31:17', '2020-01-03 23:56:00'),
(4, '1', '120@qq.com', '测试音频', NULL, '123', '音频', '非物质文化遗产', '/uploads/VideoAudio/2020/01/03/1578059452.mp3', 1, '2020-01-03 13:35:04', '2020-01-03 15:26:06'),
(5, '1', '120@qq.com', '上传', '<p>在这里输入你的内容</p><img src=\"/uploads/content/20200104/5baa9bf5b00b177dfb0b6a52d96b0112.jpg\" style=\"max-width:100%;\"><p>是测试测试测试测试测试</p>', '在这里输入你的内容是测试测试测试测试测试', '展柜', '非物质文化遗产', '/uploads/content/20200104/5baa9bf5b00b177dfb0b6a52d96b0112.jpg', 1, '2020-01-03 16:50:56', '2020-01-03 16:50:56'),
(6, '1', '120@qq.com', '嗡嗡嗡', '<p>在这里输入你的内容</p><p><img src=\"/uploads/content/20200104/5baa9bf5b00b177dfb0b6a52d96b0112.jpg\" style=\"max-width:100%;\"></p>', '在这里输入你的内容', '展柜', '非物质文化遗产', '/uploads/content/20200104/5baa9bf5b00b177dfb0b6a52d96b0112.jpg', 1, '2020-01-03 23:43:08', '2020-01-03 23:43:08'),
(7, '1', '120@qq.com', '123', '<p>在这里输入你的内容</p><img src=\"/uploads/content/20200104/6bb9ca1e384bedabc32d90bd4fd83334.jpg\" style=\"max-width:100%;\"><p><br></p>', '在这里输入你的内容', '图集', '非物质文化遗产', '/uploads/content/20200104/6bb9ca1e384bedabc32d90bd4fd83334.jpg', 1, '2020-01-04 00:04:14', '2020-01-04 00:04:14'),
(8, '1', '120@qq.com', '123', '<p><img src=\"/uploads/content/20200104/ef780e67758029b5373669b26524eb71.jpg\" style=\"max-width:100%;\"></p>', NULL, '图集', '非物质文化遗产', '/uploads/content/20200104/ef780e67758029b5373669b26524eb71.jpg', 1, '2020-01-04 00:04:25', '2020-01-04 00:04:25'),
(9, '1', '120@qq.com', 'aaa', NULL, 'asd', '音频', '非物质文化遗产', '/uploads/VideoAudio/2020/01/04/1578097591.mp3', 1, '2020-01-04 00:09:54', '2020-01-04 00:09:54'),
(10, '1', '120@qq.com', 'aaa', NULL, 'asd', '音频', '非物质文化遗产', '/uploads/VideoAudio/2020/01/04/1578097103.mp3', 1, '2020-01-04 00:10:02', '2020-01-04 00:10:02'),
(11, '1', '120@qq.com', 'ww', '<p>在这里输入你的内容</p><p><img src=\"/uploads/content/20200104/5baa9bf5b00b177dfb0b6a52d96b0112.jpg\" style=\"max-width:100%;\"></p>', '在这里输入你的内容', '图集', '非物质文化遗产', '/uploads/content/20200104/5baa9bf5b00b177dfb0b6a52d96b0112.jpg', 1, '2020-01-04 00:53:49', '2020-01-04 00:53:49'),
(12, '1', '120@qq.com', '？？？s\'fsf', NULL, '12313123', '视频', '非物质文化遗产', '/uploads/VideoAudio/2020/01/04/1578123225.mp4', 1, '2020-01-04 07:21:37', '2020-01-04 07:21:37'),
(13, '1', '120@qq.com', '钱钱钱', NULL, '111', '视频', '非物质文化遗产', '/uploads/VideoAudio/2020/01/04/1578122648.mp4', 1, '2020-01-04 07:22:10', '2020-01-04 07:22:10');

-- --------------------------------------------------------

--
-- 表的结构 `faker_users`
--

DROP TABLE IF EXISTS `faker_users`;
CREATE TABLE IF NOT EXISTS `faker_users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id字段主键',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1bfc7f5e74c6c75346f43970c6c2f83f' COMMENT '用户名字段,默认值MD5的时间+1到10的随机数',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码字段',
  `power` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户权限',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户状态默认是正常',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `faker_users`
--

INSERT INTO `faker_users` (`id`, `name`, `email`, `password`, `power`, `status`, `created_at`, `updated_at`) VALUES
(1, '袅', '120@qq.com', '1234567890', '0', 1, '2018-01-17 19:21:09', '2020-01-03 22:26:43'),
(2, '卞鹏程', 'minima16@example.net', 'C0dp1q', '0', 0, '2017-01-18 03:16:07', '2020-01-02 12:22:36'),
(3, '木毅', 'omnis62@example.net', 'GwQG`4I}b`p@', '0', 0, '2018-04-20 11:05:12', '2019-04-14 14:49:20'),
(4, '丁云', 'ipsa_enim@example.net', 'uvo)?vS', '0', 1, '2017-03-04 15:42:41', '2019-02-19 16:26:14'),
(5, '常欢', 'qui.dignissimos@example.com', '[TjZI`W', '1', 0, '2018-11-09 01:11:08', '2020-01-02 12:25:22'),
(6, '蔺玉华', 'saepe20@example.net', '@K=aMS:', '1', 0, '2018-01-29 19:53:40', '2020-01-02 11:50:35'),
(7, '庞利', 'dquia@example.org', 'VfhT![TwYdrUJ', '0', 0, '2018-02-15 04:18:54', '2020-01-03 09:15:47'),
(8, '杜爱华', 'jvelit@example.org', 'vi0wT8jD(*', '1', 0, '2018-11-26 03:51:54', '2019-05-09 09:17:11'),
(9, '朱祥', 'xsint@example.com', 'g.l*o~n3\'fD2', '1', 0, '2017-06-01 03:00:10', '2019-07-02 10:46:45'),
(10, '解秀兰', 'lipsa@example.org', '7WTeg;]a', '1', 0, '2018-06-23 23:46:17', '2019-03-16 06:02:32'),
(11, '俞志强', 'rem48@example.org', 'O!`iFQ5u-S1@\'L0', '0', 1, '2018-05-30 09:07:32', '2019-04-15 19:34:14'),
(12, '冀燕', 'aut_blanditiis@example.net', 'Tc}u7}J`,M', '0', 1, '2017-03-31 04:05:19', '2019-07-12 02:24:34'),
(13, '柏坤', 'drerum@example.org', '$*|QoK++<lr_o=wkRw->', '0', 0, '2018-12-10 18:53:49', '2020-01-02 12:22:30'),
(14, '简致远', 'laudantium15@example.org', 'NCtr+T3x)|', '0', 0, '2017-12-02 02:00:40', '2020-01-02 12:22:26'),
(15, '刁雪', 'nihil.veniam@example.org', '<i6a\"sru8q9', '1', 0, '2018-02-22 16:14:36', '2020-01-02 11:51:14'),
(16, '翟毅', 'jamet@example.org', ':1:}dB&qJ+', '1', 0, '2016-12-29 02:03:52', '2019-07-07 06:25:37'),
(17, '管博', 'get@example.org', '^GyMr448)qX6x?3', '1', 0, '2018-06-03 21:48:01', '2020-01-02 11:51:29'),
(18, '邢文', 'quam_repellat@example.com', 'VsAIG,pem', '0', 0, '2018-06-28 05:15:50', '2019-07-03 03:15:12'),
(19, '郑萍', 'eveniam@example.org', 'f+\'|gwL]!g', '0', 0, '2018-08-03 18:54:24', '2019-03-20 19:09:40'),
(20, '莫凤兰', 'illo.consequatur@example.com', '8X]id{Nsu]', '0', 1, '2018-03-24 21:52:25', '2020-01-02 11:52:13'),
(21, '祝捷', 'minima07@example.com', 'CM0cO(<', '0', 0, '2017-01-10 17:25:57', '2019-06-06 07:15:30'),
(22, '孟楠', 'doloribus_quia@example.net', 'aVnfJr.', '0', 0, '2017-05-19 00:45:35', '2019-04-06 06:05:34'),
(23, '奚芳', 'qnon@example.net', '~m22a(dJe<nn}', '0', 0, '2018-09-28 20:42:37', '2019-01-14 15:31:56'),
(24, '桂建国', 'aperiam.aut@example.net', 'v{,\'sh!U&ZI,', '1', 0, '2017-08-22 12:57:42', '2020-01-02 11:52:54'),
(25, '蒋东', 'culpa_consequatur@example.net', 'e90jTY~CD', '1', 0, '2017-09-11 05:17:56', '2019-06-14 12:22:00'),
(26, '翁杨', 'pariatur.culpa@example.com', 'I?PJR&|,E8qe5', '1', 0, '2018-04-23 04:47:30', '2019-02-12 08:13:35'),
(27, '杜凤兰', 'haspernatur@example.org', '&<SF|nkpJ|\'qM)9:=', '1', 0, '2018-05-18 22:01:28', '2019-04-08 18:31:18'),
(28, '尹东', 'iusto.sed@example.org', 'm5#*SZvUb-re@(|!', '0', 0, '2018-12-24 11:06:32', '2019-03-30 02:50:06'),
(29, '焦嘉俊', 'non.tempora@example.com', 'W_+48[', '0', 0, '2017-05-23 13:20:57', '2019-03-26 23:39:32'),
(30, '奚建明', 'tquidem@example.com', '6<)qH+~^QRN&5WjQYR^', '0', 1, '2017-03-11 11:22:11', '2020-01-02 12:11:06'),
(31, '方志新', 'pcumque@example.net', 'S{\\7K,^feeedO^wAYny)', '0', 1, '2017-02-08 08:47:28', '2019-04-25 14:42:42'),
(32, '柏文君', 'urepellendus@example.org', 'w4p_\"k9e1', '1', 0, '2018-01-25 22:57:11', '2019-04-20 06:19:20'),
(33, '封玉珍', 'maiores.illo@example.net', 'S%F^C(,E&tI_-4i{$!%', '0', 1, '2017-08-11 19:34:33', '2020-01-02 12:22:11'),
(34, '胡秀梅', 'anecessitatibus@example.net', '<Z5\"/Wy1DtsRvM{$G^f', '0', 0, '2017-11-23 19:10:32', '2019-04-01 12:56:26'),
(35, '雷敏', 'consectetur16@example.com', 'ief[u^wK5XB\"!v:Fv', '1', 0, '2017-10-01 07:04:27', '2019-03-01 17:33:39'),
(36, '宋燕', 'eius_aut@example.com', 'ov=0Y\"g42&^S(W>2)', '1', 0, '2017-09-13 18:01:20', '2019-05-22 14:04:40'),
(37, '钱桂花', 'eligendi.tenetur@example.net', 'c|PUmLQ1', '1', 0, '2017-10-18 17:42:07', '2019-03-09 05:52:23'),
(38, '彭波', 'deleniti_dolorem@example.org', '4C+Dr}AGV', '1', 0, '2017-07-14 03:13:26', '2019-04-13 02:27:30'),
(39, '沙正业', 'sint68@example.com', 'xisCf7v`:(W?BEleyH|', '1', 0, '2018-06-07 19:37:46', '2020-01-02 12:00:33'),
(40, '安畅', 'alias99@example.net', '/2}_<J', '1', 0, '2017-04-30 08:19:02', '2019-04-18 21:53:55'),
(41, '喻超', 'necessitatibus_enim@example.com', 'MX,0\'8Qls', '1', 0, '2017-09-22 03:03:41', '2020-01-02 11:57:27'),
(42, '黄静', 'nulla67@example.com', '~u$CrEw\'wWv7i]fe', '0', 0, '2018-07-03 23:49:37', '2019-01-08 04:20:59'),
(43, '杨智敏', 'dnon@example.com', '+v*0}d:@wU7X$qD', '0', 1, '2018-06-29 10:03:51', '2019-06-29 01:04:04'),
(44, '芦华', 'cqui@example.net', '[2M~kLrpc5I~I', '0', 0, '2018-09-25 10:07:26', '2019-02-25 11:58:15'),
(45, '牛鑫', 'omnis.nihil@example.net', '+T{ML\"fMt2183&', '0', 1, '2017-02-25 05:23:32', '2019-04-14 08:33:32'),
(46, '畅慧', 'deserunt_nihil@example.com', '8=G)O5`qw6A{L4C]', '1', 0, '2016-12-28 22:01:35', '2019-06-27 05:57:55'),
(47, '谈瑜', 'rvoluptas@example.net', 'hKfv]E_', '1', 0, '2017-11-21 10:36:35', '2019-03-05 10:44:08'),
(48, '卞凯', 'xculpa@example.org', '\"N(!>7P\"u_Vw(g\'b9h/>', '0', 1, '2018-02-13 22:24:45', '2019-04-11 05:21:51'),
(49, '谷伦', 'ad18@example.com', '`nAF{.R^,7U)MW', '1', 1, '2018-07-15 20:05:06', '2019-05-28 09:06:46'),
(50, '卜超', 'optio_odio@example.net', 'NRg0t6EZ3baL~a2', '0', 1, '2018-03-10 19:40:27', '2019-07-09 21:33:14'),
(51, '周洋', 'jsunt@example.org', '^efYiD/(DjRRif);B:', '1', 1, '2018-04-07 10:13:33', '2019-05-10 06:35:39'),
(52, '苟淑英', 'quam16@example.com', 'U|Pd0:(a', '0', 1, '2017-08-07 19:30:26', '2019-03-01 03:31:43'),
(53, '燕峰', 'sed76@example.com', '|p[L:oF', '1', 0, '2017-07-26 10:26:40', '2019-06-25 19:38:25'),
(54, '雷海燕', 'magnam95@example.org', 'Y<R\"ojK^9%<!vYX*K_z', '1', 0, '2017-07-29 07:25:26', '2019-05-23 12:35:45'),
(55, '全志强', 'debitis.perspiciatis@example.net', 'ccy<AIul[Y-t;c', '0', 0, '2017-03-25 06:26:32', '2019-07-06 07:00:31'),
(56, '邹钟', 'bsapiente@example.net', 'Bw\"mFK', '1', 1, '2017-04-17 17:41:30', '2019-07-14 17:19:18'),
(57, '祝峰', 'distinctio.veniam@example.net', '\"3Nn@+o|xj\'Ey!p30R<', '1', 1, '2017-08-22 06:23:14', '2018-12-27 10:34:45'),
(58, '祁艳', 'zamet@example.org', '~9lfn66vBal', '1', 1, '2017-11-29 13:32:57', '2019-03-05 21:50:17'),
(59, '邱萍', 'ut_ducimus@example.org', '#5~4@Rgo7:g[{Z9LMqde', '0', 0, '2018-11-02 03:12:39', '2019-05-16 11:52:22'),
(60, '薄成', 'veniam.ut@example.net', '\\gc\\}.GX@', '1', 1, '2018-10-31 23:41:14', '2019-04-07 16:05:35'),
(61, '习丹丹', 'celigendi@example.com', 'rP?+E)>\'', '0', 0, '2018-04-10 20:07:03', '2019-01-23 00:47:44'),
(62, '俞春梅', 'eius_velit@example.net', '8rYs6D5*', '1', 1, '2018-12-19 01:31:42', '2019-04-08 07:44:15'),
(63, '焦祥', 'ex.inventore@example.org', 'e1iJs:=m_JX0)d', '0', 1, '2018-11-05 23:09:52', '2019-03-19 14:48:42'),
(64, '邱楠', 'minima.eligendi@example.com', 'mr%nuCgsS', '0', 0, '2018-01-25 13:41:23', '2019-05-16 13:23:13'),
(65, '陆成', 'sint41@example.net', '4/aq3k`X3+/:', '1', 1, '2017-03-31 09:45:45', '2019-03-30 04:58:24'),
(66, '阮旭', 'non.ad@example.net', '+farQmDomXar=\"7rA$h', '1', 0, '2017-02-16 13:32:18', '2019-03-13 00:30:33'),
(67, '仇波', 'aut_excepturi@example.com', '<BxyyHj0I', '0', 0, '2018-05-13 23:46:54', '2019-02-20 21:31:42'),
(68, '郝婕', 'voluptatibus.beatae@example.com', 'Mu$gO?4/@w)V', '1', 1, '2017-01-15 12:03:28', '2019-03-20 06:03:36'),
(69, '翟腊梅', 'isoluta@example.org', '67{p={xm6M;eo+bTOu`E', '0', 0, '2017-09-13 19:13:24', '2019-05-01 20:38:06'),
(70, '邸亮', 'eveniet.quisquam@example.net', 'psetFd1', '0', 0, '2018-01-07 18:17:50', '2019-03-25 12:07:54'),
(71, '燕云', 'uqui@example.com', 'lbY*^E', '1', 1, '2017-07-20 10:49:03', '2019-05-20 02:35:34'),
(72, '扬静', 'qfugiat@example.net', ':~l/J({~P3,', '1', 1, '2017-03-21 12:27:43', '2019-03-13 07:04:02'),
(73, '苗国庆', 'est_consequuntur@example.net', 'cXsdnmlz\'\\a:3raZ', '1', 0, '2018-06-29 23:35:36', '2019-02-02 23:27:16'),
(74, '胡全安', 'culpa.magni@example.com', '6D+d]|al&u', '1', 0, '2018-02-08 03:07:05', '2018-12-31 11:24:13'),
(75, '郜洋', 'waccusamus@example.com', 'A~NlqX}+b4', '1', 1, '2017-05-11 22:22:43', '2019-01-05 11:51:40'),
(76, '欧阳欣', 'molestiae_velit@example.com', 'esol[*B', '1', 0, '2017-01-02 16:43:21', '2019-03-16 18:33:42'),
(77, '阳丽娟', 'blanditiis.ad@example.com', '.rRbd~UIm8EZLX_q', '0', 1, '2018-02-19 17:29:41', '2019-05-23 11:14:59'),
(78, '谭华', 'laborum.architecto@example.com', 'o|>%pIeKS9.', '0', 0, '2018-07-10 05:22:54', '2019-04-01 00:13:16'),
(79, '钟文君', 'consequatur_totam@example.org', ',GX$cmvX2*hQ[', '1', 0, '2017-09-16 20:29:15', '2019-04-11 09:33:06'),
(80, '申晧', 'eofficia@example.com', '|1ftWTG\'iv#DL', '1', 1, '2018-11-10 08:02:44', '2019-06-22 03:03:59'),
(81, '温依琳', 'eos32@example.net', 'D$OL(:9WgU_PA.z', '0', 1, '2018-07-08 12:00:06', '2019-03-10 18:56:49'),
(82, '仇明霞', 'minus_voluptas@example.com', '=UUwOcvKoh', '1', 0, '2018-11-14 04:37:31', '2019-04-20 18:06:02'),
(83, '欧阳刚', 'elaboriosam@example.com', '^;WXwESbm', '1', 1, '2018-11-03 11:29:41', '2019-01-22 08:28:04'),
(84, '赖阳', 'sint.qui@example.com', '3E:tr\\tgnP~/', '0', 1, '2017-01-27 10:37:17', '2019-03-02 21:22:49'),
(85, '牛志新', 'ea.vitae@example.net', 'zAOE,HE/T!qN8', '1', 0, '2018-11-06 18:26:06', '2019-05-16 22:11:15'),
(86, '程娟', 'zveritatis@example.net', 'N\"A^TR?5,EKf', '1', 0, '2018-06-12 19:43:01', '2019-05-12 05:18:52'),
(87, '陆峰', 'placeat_in@example.org', ')LD{*TRd8Qa?1', '1', 1, '2017-02-09 08:52:11', '2019-05-05 08:44:05'),
(88, '郁建', 'sunt.architecto@example.net', 'Va/Yk3m))Z_Q|+,~iX]^', '1', 0, '2017-10-29 14:28:16', '2019-04-29 07:54:30'),
(89, '戴鹏', 'ducimus.ut@example.net', 'imjaB.', '1', 0, '2018-09-02 09:25:34', '2019-03-03 17:24:39'),
(90, '文志强', 'aliquid_debitis@example.org', 'a%_vSTpCoK}', '1', 1, '2018-02-25 00:02:52', '2019-05-28 18:56:47'),
(91, '郎淑兰', 'numquam60@example.com', 'h5\\G@nry<`Z&', '1', 1, '2017-04-27 01:03:11', '2019-03-19 11:02:49'),
(92, '俞依琳', 'consequatur91@example.com', '4V8Iu9*-', '1', 1, '2018-04-24 01:41:02', '2019-02-23 18:53:50'),
(93, '钟彬', 'sed_consequatur@example.org', '{96.;h1YE', '0', 1, '2017-08-12 22:45:32', '2019-01-13 17:55:32'),
(94, '龙丹', 'rem05@example.net', 'L^ofH<o', '1', 1, '2018-03-27 17:28:09', '2019-01-23 15:51:52'),
(95, '翁毅', 'itaque.et@example.com', '7XQp\'JC', '1', 0, '2018-07-03 00:15:23', '2019-05-15 14:12:17'),
(96, '钱凤英', 'ddoloribus@example.org', 'c\\2*/xr/V>.yEvD%', '1', 1, '2018-07-10 23:42:50', '2019-03-07 19:33:06'),
(97, '凌志诚', 'numquam_veniam@example.net', 'NIAlEg|', '0', 0, '2017-08-17 10:38:53', '2019-05-20 05:25:35'),
(98, '章鹏', 'qet@example.org', 'b%+bEu\'!i@', '0', 1, '2018-05-31 18:21:43', '2019-06-21 10:37:15'),
(99, '迟芬', 'voluptas.ut@example.com', '(wK]{\"tx\"|XYT8ep$to', '1', 1, '2018-09-21 21:08:23', '2019-04-20 15:06:30'),
(100, '樊依琳', 'qui31@example.org', '+G\'9NlUk', '0', 1, '2018-10-20 15:11:15', '2019-06-27 03:57:43'),
(101, '1bfc7f5e74c6c75346f43970c6c2f83f', '撒地方', '阿斯蒂芬', 'user', 1, NULL, NULL),
(102, '1bfc7f5e74c6c75346f43970c6c2f83f', 'sadf@qq.com', '1234567', '1', 0, '2020-01-03 17:49:17', '2020-01-04 07:16:37'),
(103, '1bfc7f5e74c6c75346f43970c6c2f83f', 'x@qq.com', '123456789', '1', 1, '2020-01-03 17:51:57', '2020-01-03 17:51:57'),
(104, '1bfc7f5e74c6c75346f43970c6c2f83f', 'l@qq.com', '123456789', '1', 1, '2020-01-03 17:53:22', '2020-01-03 17:53:22');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_26_031435_create_users_table', 1),
(2, '2019_12_26_130109_create_faker_users_table', 1),
(3, '2019_12_31_193640_create_news_table', 2),
(4, '2020_01_02_203422_create_user_infos_table', 3),
(5, '2020_01_03_160845_create_cultures_table', 4);

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id字段主键',
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '发布者的邮箱',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '发布内容',
  `Abbreviation` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '无标签用来做简称',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '发布时间',
  `dirs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片/视频路径',
  `deletes` int(11) NOT NULL DEFAULT '1' COMMENT '软删除 1正常 0回收站 2永久删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `uid`, `title`, `email`, `content`, `Abbreviation`, `time`, `dirs`, `deletes`, `created_at`, `updated_at`) VALUES
(1, '1', '未命名', '120@qq.com', '<p>在这里输入你的内容</p><p><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aadddba28a.jpg\" style=\"max-width:100%;\"></p>', '在这里输入你的内容', '2020-01-01', '今日要闻', 1, '2020-01-01 11:10:00', '2020-01-02 12:29:37'),
(2, '10', '未命名', '120@qq.com', '<p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aad8a974aa.jpg\" alt=\"\" height=\"470\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p align=\"justify\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-indent: 2em;\">近日，第十二届西安鼓乐艺术节在西安成功举办。</p><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aada6d3c52.jpg\" alt=\"\" height=\"426\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p><br></p>', 'data.message', '2020-01-01', '今日要闻', 1, '2020-01-01 11:13:56', '2020-01-01 15:13:48'),
(3, '1', '中国', '120@qq.com', '<p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aad8a974aa.jpg\" alt=\"\" height=\"470\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p align=\"justify\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-indent: 2em;\">近日，第十二届西安鼓乐艺术节在西安成功举办</p><p><br></p>', '近日，第十二届西安鼓乐艺术节在西安成功举办', '2020-01-01', '今日要闻', 1, '2020-01-01 11:16:57', '2020-01-02 12:29:36'),
(10, '1', '文化新闻', '120@qq.com', '<p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aad8a974aa.jpg\" alt=\"\" height=\"470\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p align=\"justify\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-indent: 2em;\">近日，第十二届西安鼓乐艺术节在西安成功举办。</p><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aada6d3c52.jpg\" alt=\"\" height=\"426\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p><br></p>', '在这里输入你的内容', '2020-01-04', '文化新闻', 2, '2020-01-04 01:31:13', '2020-01-04 07:20:43'),
(4, '1', '“非遗传世界·鼓乐迎国庆”第十二届西安鼓乐艺术节举办', '120@qq.com', '<p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aad8a974aa.jpg\" alt=\"\" height=\"470\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p align=\"justify\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-indent: 2em;\">近日，第十二届西安鼓乐艺术节在西安成功举办。</p><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aada6d3c52.jpg\" alt=\"\" height=\"426\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p align=\"justify\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-indent: 2em;\">西安鼓乐的历史渊源莫知其久远，但唐诗宋词的吟诵韵律与鼓乐的吟唱却如出一辙，这是50年代著名音乐家杨阴浏先生在学习西安鼓乐之后破译了南宋白石道人姜夔的宋词之后得出的历史结论。因此推断出西安鼓乐在唐宋之际已是普遍流行的宫廷音乐，可见西安鼓乐的历史源远流长。</p><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aadc00433c.jpg\" alt=\"\" height=\"480\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aadddba28a.jpg\" alt=\"\" height=\"426\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p align=\"justify\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-indent: 2em;\">2009年，西安鼓乐被联合国教科文组织列入联合国教科文组织非物质文化遗产代表作名录。今年，适逢中华人民共和国成立70周年，西安都城隍庙鼓乐社、大吉昌鼓乐社、长安何家营鼓乐社、周至南集贤东村和西村鼓乐社等五家百年老社齐聚关中书院，共同举办西安鼓乐列入人类非遗10周年暨第十二届西安鼓乐艺术节，庆祝<span style=\"text-indent: 24px;\">中华人民共和国</span>成立70周年。</p><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aadfb31753.jpg\" alt=\"\" height=\"480\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aae0f6ba2a.jpg\" alt=\"\" height=\"426\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p align=\"justify\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-indent: 2em;\">本次活动由陕西省艺术研究院主办，西安鼓乐都城隍庙传习所和西安文理学院关中书院承办。陕西省文化旅游厅顾劲松副厅长、省文化旅游厅非遗处刘卫东处长、陕西省艺术研究院唐瑜君书记等领导出席了本次活动。活动由陕西省艺术研究院邓萌副院长和都城隍庙鼓乐社张昭社长先后主持，五家百年老社轮番上演，精湛绝伦，各乐社演奏了各自的代表曲目，赢得了广大市民的阵阵喝彩，可谓之精彩纷呈，叹为观止，大家纷纷表示西安鼓乐丰富的演出形式，典雅的音乐风格不愧为中华民族的艺术瑰宝。</p>', '近日，第十二届西安鼓乐艺术节在西安成功举办。西安鼓乐的历史渊源莫知其久远，但唐诗宋词的吟诵韵律与鼓乐的吟唱却如出一辙，这是50年代著名音乐家杨阴浏先生在学习西安鼓乐之后破译了南宋白石道人姜夔的宋词之后得出的历史结论。因此推断出西安鼓乐在唐宋之际已是普遍流行的宫廷音乐，可见西安鼓乐的历史源远流长。2009年，西安鼓乐被联合国教科文组织列入联合国教科文组织非物质文化遗产代表作名录。今年，适逢中华人民共和国成立70周年，西安都城隍庙鼓乐社、大吉昌鼓乐社、长安何家营鼓乐社、周至南集贤东村和西村鼓乐社等五家百年老社齐聚关中书院，共同举办西安鼓乐列入人类非遗10周年暨第十二届西安鼓乐艺术节，庆祝中华人民共和国成立70周年。本次活动由陕西省艺术研究院主办，西安鼓乐都城隍庙传习所和西安文理学院关中书院承办。陕西省文化旅游厅顾劲松副厅长、省文化旅游厅非遗处刘卫东处长、陕西省艺术研究院唐瑜君书记等领导出席了本次活动。活动由陕西省艺术研究院邓萌副院长和都城隍庙鼓乐社张昭社长先后主持，五家百年老社轮番上演，精湛绝伦，各乐社演奏了各自的代表曲目，赢得了广大市民的阵阵喝彩，可谓之精彩纷呈，叹为观止，大家纷纷表示西安鼓乐丰富的演出形式，典雅的音乐风格不愧为中华民族的艺术瑰宝。', '2020-01-01', '今日要闻', 1, '2020-01-01 11:18:00', '2020-01-02 12:29:35'),
(5, '1', '12312312', '120@qq.com', '<p>在这里输入你的内容</p><p><img src=\"/uploads/content/20200101/1b6b02f8f980ea357d7ba93bfbd2cc8d.jpeg\" style=\"max-width:100%;\"></p>', '在这里输入你的内容', '2020-01-01', '今日要闻', 1, '2020-01-01 12:07:11', '2020-01-02 12:29:33'),
(6, '1', '1分钟知非遗事丨非遗半月报第49期', '120@qq.com', '<p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\"><span style=\"text-indent: 2em;\">“非遗半月报”是“中国非物质文化遗产保护中心”微信公众号在2018年推出的资讯类新专题。在这里，您可以通过1分钟阅读，快速了解半月来国内外有关非遗保护的重要新闻事件。最新非遗动态，我们为您梳理。</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><strong>第49期：2019年12月16日—29日</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">本期信息一览：</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲ 文化和旅游部公布国家级文化生态保护区名单</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲ 2019“中国非遗年度人物”及2019“中国非遗十大年度事件”揭晓</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲ 四川非遗亮相第八次中日韩领导人会议</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲“二十四节气文化艺术展”及“2019年二十四节气保护传承工作年会”在中国农业博物馆举办</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲ 2019非遗品牌大会在广州举办</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲ 中国民间文学大系出版工程首批成果在京面世</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲ 首届国际唐卡艺术展在京举办</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\"><br></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\"><strong>一、文化和旅游部公布国家级文化生态保护区名单</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\">&nbsp;<img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aab440fcc3.png\" width=\"640\" height=\"329\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; text-indent: 24px; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">12月26日，文化和旅游部官方网站发布《文化和旅游部关于公布国家级文化生态保护区名单的通知》（文旅非遗发〔2019〕147号），经各地申报、专家评审、实地暗访、社会公示等工作程序，文化和旅游部公布首批国家级文化生态保护区，包括：闽南文化生态保护区、徽州文化生态保护区、热贡文化生态保护区、羌族文化生态保护区、武陵山区（湘西）土家族苗族文化生态保护区、海洋渔文化（象山）生态保护区、齐鲁文化（潍坊）生态保护区。下一步，文化和旅游部将加强指导和检查，开展国家级文化生态保护区建设绩效评估。对建设成绩突出的，予以通报表扬，并给予重点支持；对保护不力使文化生态遭到破坏的，将严肃处理，并予以摘牌。（来源：文化和旅游部官方网站）</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\"><strong>二、2019“中国非遗年度人物”及2019“中国非遗十大年度事件”揭晓</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aabf533e8e.png\" width=\"640\" height=\"427\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">12月29日，2019“中国非遗年度人物”推选结果在京揭晓，活动由文化和旅游部非物质文化遗产司指导，光明日报社主办，光明网承办，至今已连续举办三年，旨在盘点过去一年中为非遗保护传承事业做出突出贡献的标志性人物，梳理一年中非遗领域的重大事件，记录非遗传承发展的生动实践。2019“中国非遗年度人物”推选宣传活动自启动以来经过了三轮投票、评议，最终确定了10位2019“中国非遗年度人物”。他们分别是：</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">1.刘魁立 中国社会科学院荣誉学部委员</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">2.邰立平 凤翔木版年画国家级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">3.依力哈木·热依木 十二木卡姆新疆维吾尔自治区级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">4.石丽平 苗绣贵州省级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">5.柳惠武 中医传统制剂方法（龟龄集传统制作技艺、定坤丹制作技艺）国家级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">6.刘兰芳 北京评书国家级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">7.清华大学美术学院研培计划工作团队</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">8.王珮瑜 京剧上海市级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">9.罗布斯达 藏族唐卡（勉萨画派）国家级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">10.金巴扎木苏 格萨（斯）尔国家级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">活动现场，光明日报和中国文化报联合发布2019“中国非遗十大年度事件”，具体包括：</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">1.习近平总书记考察非物质文化遗产并作出重要指示</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">2.中宣部、文化和旅游部、财政部联合印发《非物质文化遗产传承发展工程实施方案》</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">3.非遗助力精准扶贫效果显著</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">4.《国家级非物质文化遗产代表性传承人认定与管理办法》制定颁布</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">5.文化和旅游部发布《曲艺传承发展计划》</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">6.2019年“文化和自然遗产日”非遗活动精彩纷呈</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">7.文化和旅游部公布7个国家级文化生态保护区</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">8.第三届中国纺织非物质文化遗产大会成功举办</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">9.“非遗+旅游”成为文旅融合发展新亮点</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">10.央视《非遗公开课》反响强烈</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">（来源：光明网）</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\"><strong>三、四川非遗亮相第八次中日韩领导人会议</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aac0dd513a.png\" width=\"640\" height=\"480\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">12月24日，第八次中日韩领导人会议在四川成都举行。国务院总理李克强在四川成都杜甫草堂博物馆与韩国总统文在寅、日本首相安倍晋三共同出席中日韩合作20周年纪念活动。本次中日韩领导人会议期间，四川非物质文化遗产精彩亮相，蜀绣、道明竹编、成都漆艺、成都银花丝制作技艺、川派盆景技艺等6个四川非遗项目参与展示，不仅为三国领导人展现了底蕴丰厚的中国传统文化，更向日韩展示了中华民族的文化自信。（来源：“四川非遗”微信公众号）</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\"><strong>四、“二十四节气文化艺术展”及“2019年二十四节气保护传承工作年会”在中国农业博物馆举办</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aac2cbce37.png\" width=\"640\" height=\"337\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">2019年12月19日至23日，“二十四节气文化艺术展”在中国农业博物馆举办。该展览由农业农村部农村社会事业促进司、文化和旅游部非物质文化遗产司指导，全国农业展览馆（中国农业博物馆）、北京歌华文化发展集团联合主办。本次展览的主题是“传承节气文化，弘扬科学精神，坚定文化自信”，展览包括综述，以及节气与天时、节气与农事、节气与生活共四个部分。</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">同期，由中国农业博物馆主办的“2019年二十四节气保护传承工作年会”召开，年会总结了2019年全国二十四节气保护传承工作，并研究制定了2020年保护传承行动计划。来自河南、湖南、浙江、贵州、安徽、广西等省区的10个相关社区代表在会上介绍了保护传承工作经验。会上，还为中国农业博物馆特聘的二十四节气研究中心客座研究员颁发了证书。（来源：“中国农业博物馆”微信公众号 ）</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\"><strong>五、2019非遗品牌大会在广州举办</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aac5ad464b.png\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">12月21日，2019广佛国际民艺周暨2019非遗品牌大会在广州举办。活动包括主题活动、高峰对话、民艺展会、民艺嘉年华等多个组成部分，致力于成为集“精品展示平台、交流学习平台、产销交易平台、精准扶贫平台、技术研发平台、宣传推广平台”于一体的非遗生产性保护“六大平台”。本届品牌大会以“国潮·非遗”为主题，内容围绕“国潮·旅游·非遗”“国潮·文创·非遗”两个议题展开。大会期间，2019“非遗新造物”非遗工作站年度成果交流展、中国传统工艺振兴高峰对话等活动相继举办。（来源：广州日报）</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\"><strong>六、中国民间文学大系出版工程首批成果在京面世</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aacb860586.png\" width=\"640\" height=\"480\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">12月25日，作为中华优秀传统文化传承发展工程重点项目，中国民间文学大系出版工程(以下简称“大系出版工程”)首批成果在京面世。首批成果为大系出版工程的12个示范卷，涉及神话、史诗、民间传说、民间故事、民间歌谣、民间长诗、民间说唱、民间小戏、谚语、谜语、俗语和民间文学理论12个门类，汇集了来自辽宁、河南、河北、黑龙江、湖南、吉林、江苏、云南和四川等9个省份，12卷本共计1200万字，300余幅图片及音视频资料，有近400位专家、学者和工作人员参与此工程。（来源：中国新闻网）</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\"><strong>七、首届国际唐卡艺术展在京举办</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aacd25ea99.png\" width=\"640\" height=\"480\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">12月19日至24日，由青海省黄南藏族自治州人民政府发起，中国文物交流中心支持的“相约北京”首届国际唐卡艺术展暨世界唐卡艺术大会在北京中华世纪坛举办。本次大会设置了唐卡展区、文献展区、数字艺术展区、热贡唐卡艺术展区、非遗体验区、文创产品展区、文物唐卡展、国际唐卡艺术展等8个展区，展厅占地面积约3000平方米，展出以热贡唐卡为主的唐卡精品300余幅。活动同期举办了主题为“新时代下非物质文化遗产的传承与弘扬”的论坛，与会专家学者就唐卡艺术发展以及非遗传承与创新进行了深度交流与探讨。（来源：中国新闻网）</p>', '“非遗半月报”是“中国非物质文化遗产保护中心”微信公众号在2018年推出的资讯类新专题。在这里，您可以通过1分钟阅读，快速了解半月来国内外有关非遗保护的重要新闻事件。最新非遗动态，我们为您梳理。第49期：2019年12月16日—29日本期信息一览：▲ 文化和旅游部公布国家级文化生态保护区名单▲ 2019“中国非遗年度人物”及2019“中国非遗十大年度事件”揭晓▲ 四川非遗亮相第八次中日韩领导人会议▲“二十四节气文化艺术展”及“2019年二十四节气保护传承工作年会”在中国农业博物馆举办▲ 2019非遗品牌大会在广州举办▲ 中国民间文学大系出版工程首批成果在京面世▲ 首届国际唐卡艺术展在京举办一、文化和旅游部公布国家级文化生态保护区名单&nbsp;12月26日，文化和旅游部官方网站发布《文化和旅游部关于公布国家级文化生态保护区名单的通知》（文旅非遗发〔2019〕147号），经各地申报、专家评审、实地暗访、社会公示等工作程序，文化和旅游部公布首批国家级文化生态保护区，包括：闽南文化生态保护区、徽州文化生态保护区、热贡文化生态保护区、羌族文化生态保护区、武陵山区（湘西）土家族苗族文化生态保护区、海洋渔文化（象山）生态保护区、齐鲁文化（潍坊）生态保护区。下一步，文化和旅游部将加强指导和检查，开展国家级文化生态保护区建设绩效评估。对建设成绩突出的，予以通报表扬，并给予重点支持；对保护不力使文化生态遭到破坏的，将严肃处理，并予以摘牌。（来源：文化和旅游部官方网站）二、2019“中国非遗年度人物”及2019“中国非遗十大年度事件”揭晓12月29日，2019“中国非遗年度人物”推选结果在京揭晓，活动由文化和旅游部非物质文化遗产司指导，光明日报社主办，光明网承办，至今已连续举办三年，旨在盘点过去一年中为非遗保护传承事业做出突出贡献的标志性人物，梳理一年中非遗领域的重大事件，记录非遗传承发展的生动实践。2019“中国非遗年度人物”推选宣传活动自启动以来经过了三轮投票、评议，最终确定了10位2019“中国非遗年度人物”。他们分别是：1.刘魁立 中国社会科学院荣誉学部委员2.邰立平 凤翔木版年画国家级非物质文化遗产代表性传承人3.依力哈木·热依木 十二木卡姆新疆维吾尔自治区级非物质文化遗产代表性传承人4.石丽平 苗绣贵州省级非物质文化遗产代表性传承人5.柳惠武 中医传统制剂方法（龟龄集传统制作技艺、定坤丹制作技艺）国家级非物质文化遗产代表性传承人6.刘兰芳 北京评书国家级非物质文化遗产代表性传承人7.清华大学美术学院研培计划工作团队8.王珮瑜 京剧上海市级非物质文化遗产代表性传承人9.罗布斯达 藏族唐卡（勉萨画派）国家级非物质文化遗产代表性传承人10.金巴扎木苏 格萨（斯）尔国家级非物质文化遗产代表性传承人活动现场，光明日报和中国文化报联合发布2019“中国非遗十大年度事件”，具体包括：1.习近平总书记考察非物质文化遗产并作出重要指示2.中宣部、文化和旅游部、财政部联合印发《非物质文化遗产传承发展工程实施方案》3.非遗助力精准扶贫效果显著4.《国家级非物质文化遗产代表性传承人认定与管理办法》制定颁布5.文化和旅游部发布《曲艺传承发展计划》6.2019年“文化和自然遗产日”非遗活动精彩纷呈7.文化和旅游部公布7个国家级文化生态保护区8.第三届中国纺织非物质文化遗产大会成功举办9.“非遗+旅游”成为文旅融合发展新亮点10.央视《非遗公开课》反响强烈（来源：光明网）三、四川非遗亮相第八次中日韩领导人会议12月24日，第八次中日韩领导人会议在四川成都举行。国务院总理李克强在四川成都杜甫草堂博物馆与韩国总统文在寅、日本首相安倍晋三共同出席中日韩合作20周年纪念活动。本次中日韩领导人会议期间，四川非物质文化遗产精彩亮相，蜀绣、道明竹编、成都漆艺、成都银花丝制作技艺、川派盆景技艺等6个四川非遗项目参与展示，不仅为三国领导人展现了底蕴丰厚的中国传统文化，更向日韩展示了中华民族的文化自信。（来源：“四川非遗”微信公众号）四、“二十四节气文化艺术展”及“2019年二十四节气保护传承工作年会”在中国农业博物馆举办2019年12月19日至23日，“二十四节气文化艺术展”在中国农业博物馆举办。该展览由农业农村部农村社会事业促进司、文化和旅游部非物质文化遗产司指导，全国农业展览馆（中国农业博物馆）、北京歌华文化发展集团联合主办。本次展览的主题是“传承节气文化，弘扬科学精神，坚定文化自信”，展览包括综述，以及节气与天时、节气与农事、节气与生活共四个部分。同期，由中国农业博物馆主办的“2019年二十四节气保护传承工作年会”召开，年会总结了2019年全国二十四节气保护传承工作，并研究制定了2020年保护传承行动计划。来自河南、湖南、浙江、贵州、安徽、广西等省区的10个相关社区代表在会上介绍了保护传承工作经验。会上，还为中国农业博物馆特聘的二十四节气研究中心客座研究员颁发了证书。（来源：“中国农业博物馆”微信公众号 ）五、2019非遗品牌大会在广州举办12月21日，2019广佛国际民艺周暨2019非遗品牌大会在广州举办。活动包括主题活动、高峰对话、民艺展会、民艺嘉年华等多个组成部分，致力于成为集“精品展示平台、交流学习平台、产销交易平台、精准扶贫平台、技术研发平台、宣传推广平台”于一体的非遗生产性保护“六大平台”。本届品牌大会以“国潮·非遗”为主题，内容围绕“国潮·旅游·非遗”“国潮·文创·非遗”两个议题展开。大会期间，2019“非遗新造物”非遗工作站年度成果交流展、中国传统工艺振兴高峰对话等活动相继举办。（来源：广州日报）六、中国民间文学大系出版工程首批成果在京面世12月25日，作为中华优秀传统文化传承发展工程重点项目，中国民间文学大系出版工程(以下简称“大系出版工程”)首批成果在京面世。首批成果为大系出版工程的12个示范卷，涉及神话、史诗、民间传说、民间故事、民间歌谣、民间长诗、民间说唱、民间小戏、谚语、谜语、俗语和民间文学理论12个门类，汇集了来自辽宁、河南、河北、黑龙江、湖南、吉林、江苏、云南和四川等9个省份，12卷本共计1200万字，300余幅图片及音视频资料，有近400位专家、学者和工作人员参与此工程。（来源：中国新闻网）七、首届国际唐卡艺术展在京举办12月19日至24日，由青海省黄南藏族自治州人民政府发起，中国文物交流中心支持的“相约北京”首届国际唐卡艺术展暨世界唐卡艺术大会在北京中华世纪坛举办。本次大会设置了唐卡展区、文献展区、数字艺术展区、热贡唐卡艺术展区、非遗体验区、文创产品展区、文物唐卡展、国际唐卡艺术展等8个展区，展厅占地面积约3000平方米，展出以热贡唐卡为主的唐卡精品300余幅。活动同期举办了主题为“新时代下非物质文化遗产的传承与弘扬”的论坛，与会专家学者就唐卡艺术发展以及非遗传承与创新进行了深度交流与探讨。（来源：中国新闻网）', '2020-01-01', '今日要闻', 1, '2020-01-01 13:54:56', '2020-01-02 12:29:28'),
(7, '1', '11', '120@qq.com', '<p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aad8a974aa.jpg\" alt=\"\" height=\"470\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p align=\"justify\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-indent: 2em;\">近日，第十二届西安鼓乐艺术节在西安成功举办。</p><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aada6d3c52.jpg\" alt=\"\" height=\"426\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p><br></p>', '在这里输入你的内容123123', '2020-01-01', '话题', 1, '2020-01-01 14:04:52', '2020-01-03 08:46:07'),
(8, '1', '未命名', '120@qq.com', '<p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aad8a974aa.jpg\" alt=\"\" height=\"470\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p align=\"justify\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-indent: 2em;\">近日，第十二届西安鼓乐艺术节在西安成功举办。</p><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aada6d3c52.jpg\" alt=\"\" height=\"426\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p><br></p>', '近日，第十二届西安鼓乐艺术节在西安成功举办。', '2020-01-01', '新闻动态', 1, '2020-01-02 06:39:16', '2020-01-02 12:29:25'),
(9, '1', '123', '120@qq.com', '<p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aad8a974aa.jpg\" alt=\"\" height=\"470\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p align=\"justify\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-indent: 2em;\">近日，第十二届西安鼓乐艺术节在西安成功举办。</p><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aada6d3c52.jpg\" alt=\"\" height=\"426\" width=\"640\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p><br></p>', '12312312312312323123', '2020-01-03', '今日要闻', 1, '2020-01-03 11:10:23', '2020-01-03 16:04:49'),
(11, '1', '3', '120@qq.com', '<p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\"><span style=\"text-indent: 2em;\">“非遗半月报”是“中国非物质文化遗产保护中心”微信公众号在2018年推出的资讯类新专题。在这里，您可以通过1分钟阅读，快速了解半月来国内外有关非遗保护的重要新闻事件。最新非遗动态，我们为您梳理。</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><strong>第49期：2019年12月16日—29日</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\"><strong>本期信息一览：</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲ 文化和旅游部公布国家级文化生态保护区名单</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲ 2019“中国非遗年度人物”及2019“中国非遗十大年度事件”揭晓</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲ 四川非遗亮相第八次中日韩领导人会议</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲“二十四节气文化艺术展”及“2019年二十四节气保护传承工作年会”在中国农业博物馆举办</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲ 2019非遗品牌大会在广州举办</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲ 中国民间文学大系出版工程首批成果在京面世</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">▲ 首届国际唐卡艺术展在京举办</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\"><br></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255); text-align: center;\"><strong>一、文化和旅游部公布国家级文化生态保护区名单</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\">&nbsp;<img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aab440fcc3.png\" width=\"640\" height=\"329\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; text-indent: 24px; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">12月26日，文化和旅游部官方网站发布《文化和旅游部关于公布国家级文化生态保护区名单的通知》（文旅非遗发〔2019〕147号），经各地申报、专家评审、实地暗访、社会公示等工作程序，文化和旅游部公布首批国家级文化生态保护区，包括：闽南文化生态保护区、徽州文化生态保护区、热贡文化生态保护区、羌族文化生态保护区、武陵山区（湘西）土家族苗族文化生态保护区、海洋渔文化（象山）生态保护区、齐鲁文化（潍坊）生态保护区。下一步，文化和旅游部将加强指导和检查，开展国家级文化生态保护区建设绩效评估。对建设成绩突出的，予以通报表扬，并给予重点支持；对保护不力使文化生态遭到破坏的，将严肃处理，并予以摘牌。（来源：文化和旅游部官方网站）</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255); text-align: center;\"><strong>二、2019“中国非遗年度人物”及2019“中国非遗十大年度事件”揭晓</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aabf533e8e.png\" width=\"640\" height=\"427\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">12月29日，2019“中国非遗年度人物”推选结果在京揭晓，活动由文化和旅游部非物质文化遗产司指导，光明日报社主办，光明网承办，至今已连续举办三年，旨在盘点过去一年中为非遗保护传承事业做出突出贡献的标志性人物，梳理一年中非遗领域的重大事件，记录非遗传承发展的生动实践。2019“中国非遗年度人物”推选宣传活动自启动以来经过了三轮投票、评议，最终确定了10位2019“中国非遗年度人物”。他们分别是：</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">1.刘魁立 中国社会科学院荣誉学部委员</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">2.邰立平 凤翔木版年画国家级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">3.依力哈木·热依木 十二木卡姆新疆维吾尔自治区级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">4.石丽平 苗绣贵州省级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">5.柳惠武 中医传统制剂方法（龟龄集传统制作技艺、定坤丹制作技艺）国家级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">6.刘兰芳 北京评书国家级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">7.清华大学美术学院研培计划工作团队</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">8.王珮瑜 京剧上海市级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">9.罗布斯达 藏族唐卡（勉萨画派）国家级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">10.金巴扎木苏 格萨（斯）尔国家级非物质文化遗产代表性传承人</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">活动现场，光明日报和中国文化报联合发布2019“中国非遗十大年度事件”，具体包括：</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">1.习近平总书记考察非物质文化遗产并作出重要指示</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">2.中宣部、文化和旅游部、财政部联合印发《非物质文化遗产传承发展工程实施方案》</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">3.非遗助力精准扶贫效果显著</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">4.《国家级非物质文化遗产代表性传承人认定与管理办法》制定颁布</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">5.文化和旅游部发布《曲艺传承发展计划》</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">6.2019年“文化和自然遗产日”非遗活动精彩纷呈</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">7.文化和旅游部公布7个国家级文化生态保护区</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">8.第三届中国纺织非物质文化遗产大会成功举办</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">9.“非遗+旅游”成为文旅融合发展新亮点</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">10.央视《非遗公开课》反响强烈</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">（来源：光明网）</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255); text-align: center;\"><strong>三、四川非遗亮相第八次中日韩领导人会议</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aac0dd513a.png\" width=\"640\" height=\"480\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">12月24日，第八次中日韩领导人会议在四川成都举行。国务院总理李克强在四川成都杜甫草堂博物馆与韩国总统文在寅、日本首相安倍晋三共同出席中日韩合作20周年纪念活动。本次中日韩领导人会议期间，四川非物质文化遗产精彩亮相，蜀绣、道明竹编、成都漆艺、成都银花丝制作技艺、川派盆景技艺等6个四川非遗项目参与展示，不仅为三国领导人展现了底蕴丰厚的中国传统文化，更向日韩展示了中华民族的文化自信。（来源：“四川非遗”微信公众号）</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255); text-align: center;\"><strong>四、“二十四节气文化艺术展”及“2019年二十四节气保护传承工作年会”在中国农业博物馆举办</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aac2cbce37.png\" width=\"640\" height=\"337\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">2019年12月19日至23日，“二十四节气文化艺术展”在中国农业博物馆举办。该展览由农业农村部农村社会事业促进司、文化和旅游部非物质文化遗产司指导，全国农业展览馆（中国农业博物馆）、北京歌华文化发展集团联合主办。本次展览的主题是“传承节气文化，弘扬科学精神，坚定文化自信”，展览包括综述，以及节气与天时、节气与农事、节气与生活共四个部分。</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">同期，由中国农业博物馆主办的“2019年二十四节气保护传承工作年会”召开，年会总结了2019年全国二十四节气保护传承工作，并研究制定了2020年保护传承行动计划。来自河南、湖南、浙江、贵州、安徽、广西等省区的10个相关社区代表在会上介绍了保护传承工作经验。会上，还为中国农业博物馆特聘的二十四节气研究中心客座研究员颁发了证书。（来源：“中国农业博物馆”微信公众号 ）</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255); text-align: center;\"><strong>五、2019非遗品牌大会在广州举办</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aac5ad464b.png\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">12月21日，2019广佛国际民艺周暨2019非遗品牌大会在广州举办。活动包括主题活动、高峰对话、民艺展会、民艺嘉年华等多个组成部分，致力于成为集“精品展示平台、交流学习平台、产销交易平台、精准扶贫平台、技术研发平台、宣传推广平台”于一体的非遗生产性保护“六大平台”。本届品牌大会以“国潮·非遗”为主题，内容围绕“国潮·旅游·非遗”“国潮·文创·非遗”两个议题展开。大会期间，2019“非遗新造物”非遗工作站年度成果交流展、中国传统工艺振兴高峰对话等活动相继举办。（来源：广州日报）</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255); text-align: center;\"><strong>六、中国民间文学大系出版工程首批成果在京面世</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aacb860586.png\" width=\"640\" height=\"480\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">12月25日，作为中华优秀传统文化传承发展工程重点项目，中国民间文学大系出版工程(以下简称“大系出版工程”)首批成果在京面世。首批成果为大系出版工程的12个示范卷，涉及神话、史诗、民间传说、民间故事、民间歌谣、民间长诗、民间说唱、民间小戏、谚语、谜语、俗语和民间文学理论12个门类，汇集了来自辽宁、河南、河北、黑龙江、湖南、吉林、江苏、云南和四川等9个省份，12卷本共计1200万字，300余幅图片及音视频资料，有近400位专家、学者和工作人员参与此工程。（来源：中国新闻网）</p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; text-indent: 28px; background-color: rgb(255, 255, 255); text-align: center;\"><strong>七、首届国际唐卡艺术展在京举办</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center; text-indent: 2em;\"><img src=\"http://www.ihchina.cn/Uploads/Picture/2019/12/31/s5e0aacd25ea99.png\" width=\"640\" height=\"480\" alt=\"\" style=\"margin-left: -2em; border: 0px; outline: 0px; max-width: 100%; height: auto !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify; text-indent: 2em;\">12月19日至24日，由青海省黄南藏族自治州人民政府发起，中国文物交流中心支持的“相约北京”首届国际唐卡艺术展暨世界唐卡艺术大会在北京中华世纪坛举办。本次大会设置了唐卡展区、文献展区、数字艺术展区、热贡唐卡艺术展区、非遗体验区、文创产品展区、文物唐卡展、国际唐卡艺术展等8个展区，展厅占地面积约3000平方米，展出以热贡唐卡为主的唐卡精品300余幅。活动同期举办了主题为“新时代下非物质文化遗产的传承与弘扬”的论坛，与会专家学者就唐卡艺术发展以及非遗传承与创新进行了深度交流与探讨。（来源：中国新闻网）</p><p><br></p>', '“非遗半月报”是“中国非物质文化遗产保护中心”微信公众号在2018年推出的资讯类新专题。在这里，您可以通过1分钟阅读，快速了解半月来国内外有关非遗保护的重要新闻事件。最新非遗动态，我们为您梳理。第49期：2019年12月16日—29日本期信息一览：▲ 文化和旅游部公布国家级文化生态保护区名单▲ 2019“中国非遗年度人物”及2019“中国非遗十大年度事件”揭晓▲ 四川非遗亮相第八次中日韩领导人会议▲“二十四节气文化艺术展”及“2019年二十四节气保护传承工作年会”在中国农业博物馆举办▲ 2019非遗品牌大会在广州举办▲ 中国民间文学大系出版工程首批成果在京面世▲ 首届国际唐卡艺术展在京举办一、文化和旅游部公布国家级文化生态保护区名单&nbsp;12月26日，文化和旅游部官方网站发布《文化和旅游部关于公布国家级文化生态保护区名单的通知》（文旅非遗发〔2019〕147号），经各地申报、专家评审、实地暗访、社会公示等工作程序，文化和旅游部公布首批国家级文化生态保护区，包括：闽南文化生态保护区、徽州文化生态保护区、热贡文化生态保护区、羌族文化生态保护区、武陵山区（湘西）土家族苗族文化生态保护区、海洋渔文化（象山）生态保护区、齐鲁文化（潍坊）生态保护区。下一步，文化和旅游部将加强指导和检查，开展国家级文化生态保护区建设绩效评估。对建设成绩突出的，予以通报表扬，并给予重点支持；对保护不力使文化生态遭到破坏的，将严肃处理，并予以摘牌。（来源：文化和旅游部官方网站）二、2019“中国非遗年度人物”及2019“中国非遗十大年度事件”揭晓12月29日，2019“中国非遗年度人物”推选结果在京揭晓，活动由文化和旅游部非物质文化遗产司指导，光明日报社主办，光明网承办，至今已连续举办三年，旨在盘点过去一年中为非遗保护传承事业做出突出贡献的标志性人物，梳理一年中非遗领域的重大事件，记录非遗传承发展的生动实践。2019“中国非遗年度人物”推选宣传活动自启动以来经过了三轮投票、评议，最终确定了10位2019“中国非遗年度人物”。他们分别是：1.刘魁立 中国社会科学院荣誉学部委员2.邰立平 凤翔木版年画国家级非物质文化遗产代表性传承人3.依力哈木·热依木 十二木卡姆新疆维吾尔自治区级非物质文化遗产代表性传承人4.石丽平 苗绣贵州省级非物质文化遗产代表性传承人5.柳惠武 中医传统制剂方法（龟龄集传统制作技艺、定坤丹制作技艺）国家级非物质文化遗产代表性传承人6.刘兰芳 北京评书国家级非物质文化遗产代表性传承人7.清华大学美术学院研培计划工作团队8.王珮瑜 京剧上海市级非物质文化遗产代表性传承人9.罗布斯达 藏族唐卡（勉萨画派）国家级非物质文化遗产代表性传承人10.金巴扎木苏 格萨（斯）尔国家级非物质文化遗产代表性传承人活动现场，光明日报和中国文化报联合发布2019“中国非遗十大年度事件”，具体包括：1.习近平总书记考察非物质文化遗产并作出重要指示2.中宣部、文化和旅游部、财政部联合印发《非物质文化遗产传承发展工程实施方案》3.非遗助力精准扶贫效果显著4.《国家级非物质文化遗产代表性传承人认定与管理办法》制定颁布5.文化和旅游部发布《曲艺传承发展计划》6.2019年“文化和自然遗产日”非遗活动精彩纷呈7.文化和旅游部公布7个国家级文化生态保护区8.第三届中国纺织非物质文化遗产大会成功举办9.“非遗+旅游”成为文旅融合发展新亮点10.央视《非遗公开课》反响强烈（来源：光明网）三、四川非遗亮相第八次中日韩领导人会议12月24日，第八次中日韩领导人会议在四川成都举行。国务院总理李克强在四川成都杜甫草堂博物馆与韩国总统文在寅、日本首相安倍晋三共同出席中日韩合作20周年纪念活动。本次中日韩领导人会议期间，四川非物质文化遗产精彩亮相，蜀绣、道明竹编、成都漆艺、成都银花丝制作技艺、川派盆景技艺等6个四川非遗项目参与展示，不仅为三国领导人展现了底蕴丰厚的中国传统文化，更向日韩展示了中华民族的文化自信。（来源：“四川非遗”微信公众号）四、“二十四节气文化艺术展”及“2019年二十四节气保护传承工作年会”在中国农业博物馆举办2019年12月19日至23日，“二十四节气文化艺术展”在中国农业博物馆举办。该展览由农业农村部农村社会事业促进司、文化和旅游部非物质文化遗产司指导，全国农业展览馆（中国农业博物馆）、北京歌华文化发展集团联合主办。本次展览的主题是“传承节气文化，弘扬科学精神，坚定文化自信”，展览包括综述，以及节气与天时、节气与农事、节气与生活共四个部分。同期，由中国农业博物馆主办的“2019年二十四节气保护传承工作年会”召开，年会总结了2019年全国二十四节气保护传承工作，并研究制定了2020年保护传承行动计划。来自河南、湖南、浙江、贵州、安徽、广西等省区的10个相关社区代表在会上介绍了保护传承工作经验。会上，还为中国农业博物馆特聘的二十四节气研究中心客座研究员颁发了证书。（来源：“中国农业博物馆”微信公众号 ）五、2019非遗品牌大会在广州举办12月21日，2019广佛国际民艺周暨2019非遗品牌大会在广州举办。活动包括主题活动、高峰对话、民艺展会、民艺嘉年华等多个组成部分，致力于成为集“精品展示平台、交流学习平台、产销交易平台、精准扶贫平台、技术研发平台、宣传推广平台”于一体的非遗生产性保护“六大平台”。本届品牌大会以“国潮·非遗”为主题，内容围绕“国潮·旅游·非遗”“国潮·文创·非遗”两个议题展开。大会期间，2019“非遗新造物”非遗工作站年度成果交流展、中国传统工艺振兴高峰对话等活动相继举办。（来源：广州日报）六、中国民间文学大系出版工程首批成果在京面世12月25日，作为中华优秀传统文化传承发展工程重点项目，中国民间文学大系出版工程(以下简称“大系出版工程”)首批成果在京面世。首批成果为大系出版工程的12个示范卷，涉及神话、史诗、民间传说、民间故事、民间歌谣、民间长诗、民间说唱、民间小戏、谚语、谜语、俗语和民间文学理论12个门类，汇集了来自辽宁、河南、河北、黑龙江、湖南、吉林、江苏、云南和四川等9个省份，12卷本共计1200万字，300余幅图片及音视频资料，有近400位专家、学者和工作人员参与此工程。（来源：中国新闻网）七、首届国际唐卡艺术展在京举办12月19日至24日，由青海省黄南藏族自治州人民政府发起，中国文物交流中心支持的“相约北京”首届国际唐卡艺术展暨世界唐卡艺术大会在北京中华世纪坛举办。本次大会设置了唐卡展区、文献展区、数字艺术展区、热贡唐卡艺术展区、非遗体验区、文创产品展区、文物唐卡展、国际唐卡艺术展等8个展区，展厅占地面积约3000平方米，展出以热贡唐卡为主的唐卡精品300余幅。活动同期举办了主题为“新时代下非物质文化遗产的传承与弘扬”的论坛，与会专家学者就唐卡艺术发展以及非遗传承与创新进行了深度交流与探讨。（来源：中国新闻网）', '2020-01-04', '今日要闻', 1, '2020-01-04 07:19:49', '2020-01-04 07:25:48');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id字段主键',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a8ccc88d7493e7da7548eb783e4f95b9' COMMENT '用户名字段,默认值MD5的时间+1到10的随机数',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码字段',
  `power` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户权限',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户状态默认是正常',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `user_infos`
--

DROP TABLE IF EXISTS `user_infos`;
CREATE TABLE IF NOT EXISTS `user_infos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id字段主键',
  `uid` int(11) NOT NULL COMMENT 'uid',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '2020-Jan-02',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '似乎没有什么东西' COMMENT '简介',
  `power` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户权限',
  `portrait` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户状态默认是正常',
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '用户性别',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user_infos`
--

INSERT INTO `user_infos` (`id`, `uid`, `name`, `email`, `introduction`, `power`, `portrait`, `status`, `gender`, `created_at`, `updated_at`) VALUES
(1, 1, '袅', '120@qq.com', '这里有东西了', '0', '/uploads/portrait/2020/02/07/1581068936.jpg', 1, '0', '2020-01-02 13:07:55', '2020-02-07 09:43:03'),
(2, 2, '卞鹏程', 'minima16@example.net', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(3, 3, '木毅', 'omnis62@example.net', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(4, 4, '丁云', 'ipsa_enim@example.net', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(5, 5, '常欢', 'qui.dignissimos@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(6, 6, '蔺玉华', 'saepe20@example.net', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(7, 7, '庞利', 'dquia@example.org', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-03 09:15:47'),
(8, 8, '杜爱华', 'jvelit@example.org', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(9, 9, '朱祥', 'xsint@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(10, 10, '解秀兰', 'lipsa@example.org', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(11, 11, '俞志强', 'rem48@example.org', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(12, 12, '冀燕2', 'aut_blanditiis@example.net', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-03 04:58:08'),
(13, 13, '柏坤', 'drerum@example.org', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(14, 14, '简致远', 'laudantium15@example.org', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(15, 15, '刁雪', 'nihil.veniam@example.org', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(16, 16, '翟毅', 'jamet@example.org', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(17, 17, '管博', 'get@example.org', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(18, 18, '邢文', 'quam_repellat@example.com', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(19, 19, '郑萍', 'eveniam@example.org', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(20, 20, '莫凤兰', 'illo.consequatur@example.com', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(21, 21, '祝捷', 'minima07@example.com', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(22, 22, '孟楠', 'doloribus_quia@example.net', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(23, 23, '奚芳', 'qnon@example.net', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(24, 24, '桂建国', 'aperiam.aut@example.net', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(25, 25, '蒋东', 'culpa_consequatur@example.net', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(26, 26, '翁杨', 'pariatur.culpa@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(27, 27, '杜凤兰', 'haspernatur@example.org', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(28, 28, '尹东', 'iusto.sed@example.org', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(29, 29, '焦嘉俊', 'non.tempora@example.com', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(30, 30, '奚建明', 'tquidem@example.com', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(31, 31, '方志新', 'pcumque@example.net', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(32, 32, '柏文君', 'urepellendus@example.org', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(33, 33, '封玉珍', 'maiores.illo@example.net', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(34, 34, '胡秀梅', 'anecessitatibus@example.net', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(35, 35, '雷敏', 'consectetur16@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(36, 36, '宋燕', 'eius_aut@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(37, 37, '钱桂花', 'eligendi.tenetur@example.net', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(38, 38, '彭波', 'deleniti_dolorem@example.org', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(39, 39, '沙正业', 'sint68@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(40, 40, '安畅', 'alias99@example.net', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(41, 41, '喻超', 'necessitatibus_enim@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(42, 42, '黄静', 'nulla67@example.com', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(43, 43, '杨智敏', 'dnon@example.com', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(44, 44, '芦华', 'cqui@example.net', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(45, 45, '牛鑫', 'omnis.nihil@example.net', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(46, 46, '畅慧', 'deserunt_nihil@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(47, 47, '谈瑜', 'rvoluptas@example.net', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(48, 48, '卞凯', 'xculpa@example.org', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(49, 49, '谷伦', 'ad18@example.com', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(50, 50, '卜超', 'optio_odio@example.net', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(51, 51, '周洋', 'jsunt@example.org', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(52, 52, '苟淑英', 'quam16@example.com', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(53, 53, '燕峰', 'sed76@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(54, 54, '雷海燕', 'magnam95@example.org', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(55, 55, '全志强', 'debitis.perspiciatis@example.net', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(56, 56, '邹钟', 'bsapiente@example.net', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(57, 57, '祝峰', 'distinctio.veniam@example.net', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(58, 58, '祁艳', 'zamet@example.org', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(59, 59, '邱萍', 'ut_ducimus@example.org', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(60, 60, '薄成', 'veniam.ut@example.net', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(61, 61, '习丹丹', 'celigendi@example.com', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(62, 62, '俞春梅', 'eius_velit@example.net', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(63, 63, '焦祥', 'ex.inventore@example.org', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(64, 64, '邱楠', 'minima.eligendi@example.com', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(65, 65, '陆成', 'sint41@example.net', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(66, 66, '阮旭', 'non.ad@example.net', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(67, 67, '仇波', 'aut_excepturi@example.com', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(68, 68, '郝婕', 'voluptatibus.beatae@example.com', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(69, 69, '翟腊梅', 'isoluta@example.org', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(70, 70, '邸亮', 'eveniet.quisquam@example.net', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(71, 71, '燕云', 'uqui@example.com', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(72, 72, '扬静', 'qfugiat@example.net', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(73, 73, '苗国庆', 'est_consequuntur@example.net', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(74, 74, '胡全安', 'culpa.magni@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(75, 75, '郜洋', 'waccusamus@example.com', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(76, 76, '欧阳欣', 'molestiae_velit@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(77, 77, '阳丽娟', 'blanditiis.ad@example.com', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(78, 78, '谭华', 'laborum.architecto@example.com', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(79, 79, '钟文君', 'consequatur_totam@example.org', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(80, 80, '申晧', 'eofficia@example.com', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(81, 81, '温依琳', 'eos32@example.net', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(82, 82, '仇明霞', 'minus_voluptas@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(83, 83, '欧阳刚', 'elaboriosam@example.com', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(84, 84, '赖阳', 'sint.qui@example.com', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(85, 85, '牛志新', 'ea.vitae@example.net', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(86, 86, '程娟', 'zveritatis@example.net', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(87, 87, '陆峰', 'placeat_in@example.org', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(88, 88, '郁建', 'sunt.architecto@example.net', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(89, 89, '戴鹏', 'ducimus.ut@example.net', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(90, 90, '文志强', 'aliquid_debitis@example.org', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(91, 91, '郎淑兰', 'numquam60@example.com', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(92, 92, '俞依琳', 'consequatur91@example.com', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(93, 93, '钟彬', 'sed_consequatur@example.org', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(94, 94, '龙丹', 'rem05@example.net', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(95, 95, '翁毅', 'itaque.et@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(96, 96, '钱凤英', 'ddoloribus@example.org', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(97, 97, '凌志诚', 'numquam_veniam@example.net', '似乎什么都没有', '0', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(98, 98, '章鹏', 'qet@example.org', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(99, 99, '迟芬', 'voluptas.ut@example.com', '似乎什么都没有', '1', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(100, 100, '樊依琳', 'qui31@example.org', '似乎什么都没有', '0', NULL, 1, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(101, 101, '章杨', 'ducimus.sed@example.com', '似乎什么都没有', '1', NULL, 0, '0', '2020-01-02 13:07:55', '2020-01-02 13:07:55'),
(102, 104, '2020-Jan-02', 'l@qq.com', '似乎没有什么东西', '1', NULL, 0, '0', '2020-01-03 17:53:22', '2020-01-04 07:16:37');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
