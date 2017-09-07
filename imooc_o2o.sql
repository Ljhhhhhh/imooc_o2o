-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2017-07-15 03:40:32
-- 服务器版本： 5.5.52-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imooc_o2o`
--

-- --------------------------------------------------------

--
-- 表的结构 `o2o_admin`
--

CREATE TABLE `o2o_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `last_login_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_admin`
--

INSERT INTO `o2o_admin` (`id`, `username`, `password`, `create_time`, `update_time`, `last_login_time`, `status`) VALUES
(1, 'admin', 'admin', 0, 1495108805, 1495108805, 1);

-- --------------------------------------------------------

--
-- 表的结构 `o2o_area`
--

CREATE TABLE `o2o_area` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `city_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `o2o_bis`
--

CREATE TABLE `o2o_bis` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `licence_logo` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `city_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `city_path` varchar(50) NOT NULL DEFAULT '',
  `bank_info` varchar(50) NOT NULL DEFAULT '',
  `money` decimal(20,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(50) NOT NULL DEFAULT '',
  `bank_user` varchar(50) NOT NULL DEFAULT '',
  `faren` varchar(20) NOT NULL DEFAULT '',
  `faren_tel` varchar(20) NOT NULL DEFAULT '',
  `listorder` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_bis`
--

INSERT INTO `o2o_bis` (`id`, `name`, `email`, `logo`, `licence_logo`, `description`, `city_id`, `city_path`, `bank_info`, `money`, `bank_name`, `bank_user`, `faren`, `faren_tel`, `listorder`, `status`, `create_time`, `update_time`) VALUES
(13, '小明商户', '578464694@qq.com', '\\upload\\20170415\\35177232adce03e47b5ae49771541d8f.jpg', '\\upload\\20170415\\c0e3fd9844a26c029d13b20b4fb8724a.jpg', '这里是商铺介绍', 0, '0,0', '88885555', 0.00, '农业银行', '小明', '小明', '15075652703', 0, 1, 1492243992, 1492515313),
(14, '小小明商户', '578464694@qq.com', '\\upload\\20170415\\68609fe5e22d8dbcfafe72f4cb7f7329.jpg', '\\upload\\20170415\\0661b02442501e57de81b54231b5284b.jpg', '这里是商铺介绍', 1, '1,2', '7676655', 0.00, '农业银行', '小小明', '小小明', '15075652703', 0, 1, 1492248598, 1492515248),
(15, '小红商户', '578464694@qq.com', '\\upload\\20170415\\3d219b9a50fd2cb98ee301fd96a4bf26.jpg', '\\upload\\20170415\\51fc7807e7c00c1b161223ecbbdf8ec9.jpg', '<p>店铺介绍</p>', 8, '8,9', '8888888', 0.00, '农业银行', '小红', '小红', '13931644281', 0, 1, 1492266832, 1492515216),
(19, '柯南商户', '578464694@qq.com', '\\upload\\20170415\\aefec9b158b10e2e92a4274863b59a7e.jpg', '\\upload\\20170415\\5477609d1236acef16120f6e8c2ea55d.jpg', '店铺介绍', 8, '8,9', '8888', 0.00, '农业', '柯南', '柯南', '15075652703', 0, 1, 1492268752, 1492318901),
(20, '柯北商户', '578464694@qq.com', '\\upload\\20170415\\fc075f60c4c92233ada22cd10426830f.jpg', '\\upload\\20170415\\d437f9eecc2b470c5912e2b9a07896ce.jpg', '店铺介绍', 3, '3,7', '8888', 0.00, '农业', '柯北', '柯北', '15075652703', 0, 2, 1492268859, 1492515529),
(21, '柯西商户', '578464694@qq.com', '\\upload\\20170416\\fd728f8aaf8759b2141bac428601b400.jpg', '\\upload\\20170416\\8c32a1e588dfa06afc0643891f14c058.jpg', '<p>dddfd</p>', 8, '8,9', '344444', 0.00, '农业', '柯西', '柯西', '15075652703', 0, 2, 1492310543, 1492515505),
(22, '在下坂本，有何贵干', '578464694@qq.com', '\\upload\\20170416\\4e77f4385ef2cc205e3e30418ac1efd4.jpg', '\\upload\\20170416\\41ce37aa038387fd955cf091ef72afa9.jpg', '<p>我是王宇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', 8, '8,9', '6228481006486106160', 0.00, '中国农业银行', '坂本', '坂本', '15075652703', 0, 2, 1492328612, 1492515482),
(23, '王小明', '578464694@qq.com', '\\upload\\20170422\\b112890b0df2e5fc4abc8f59e23007dd.jpg', '\\upload\\20170422\\87b952f1b3d01e675577e2d9f7eec2b2.jpg', '&lt;p&gt;介绍&lt;/p&gt;', 8, '8,9', '6228481006486106160', 0.00, '中国农业银行', '王宇', '王宇', '15075652703', 0, 1, 1492862012, 1492862065),
(24, '好伦哥团购', '578464694@qq.com', '\\upload\\20170423\\f88080c3dfe0829b3ff3b6c5dc8d214b.jpg', '\\upload\\20170423\\8d6753f94a42d933b052f8bb5eef04e3.jpg', '&lt;p&gt;好伦哥西餐&lt;br/&gt;&lt;/p&gt;', 8, '8,9', '6228481006486106160', 0.00, '中国农业银行', '王宇', '王宇', '15075652703', 0, 1, 1492961325, 1492961400),
(25, '柏尔森烤肉自助餐厅', '1259865838@qq.com', '\\upload\\20170423\\56ef8c3c9118617fc171f9f821d55917.jpg', '\\upload\\20170423\\fbbe63a3e69b661508f44cca3bb0926f.jpg', '&lt;p&gt;烤肉自助餐厅&lt;br/&gt;&lt;/p&gt;', 8, '8,9', '6228481006486106160', 0.00, '中国农业银行', '王宇', '王宇', '15075652703', 0, 1, 1492961881, 1492961908),
(26, '丁丁洋回转自助火锅', '578464694@qq.com', '\\upload\\20170423\\af2aa997eb31f30a8d2c61bb863bca7e.jpg', '\\upload\\20170423\\c498a8c005f2fde65f098f0c353f2fbb.jpg', '&lt;p&gt;自助火锅&lt;/p&gt;', 8, '8,9', '6228481006486106160', 0.00, '中国农业银行', '王宇', '王宇', '15075652703', 0, 1, 1492962196, 1492962992),
(27, '春园烤肉', '578464694@qq.com', '\\upload\\20170423\\b13f0862a1bc077b56a23eba56fdabfe.jpg', '\\upload\\20170423\\a151f7481fb15ff0be06bf8113365730.jpg', '&lt;p&gt;春园烤肉&lt;/p&gt;', 8, '8,9', '6228481006486106160', 0.00, '中国农业银行', '王宇', '王宇', '15075652703', 0, 1, 1492962467, 1492962822),
(28, '布拉丝卡南美烤肉', '578464694@qq.com', '\\upload\\20170423\\c59f29555ade5aa91212786aeed41abc.jpg', '\\upload\\20170423\\b92fad767b81463fd6b66c1de523c5b6.jpg', '&lt;p&gt;布拉丝卡南美烤肉&lt;/p&gt;', 8, '8,9', '6228481006486106160', 0.00, '中国农业银行', '王宇', '王宇', '15075652703', 0, 1, 1492962770, 1492962800),
(29, '伊尔曼都烤肉', '1259865838@qq.com', '\\upload\\20170423\\505d2e1eda7d4dfcc0688c0f89abeb0c.jpg', '\\upload\\20170423\\83643ff55a012c13d9c4b21640101135.jpg', '&lt;h2 style=&quot;font-size: 24px; margin: 8px 0px 2px; padding: 0px; border: 0px; outline: 0px; font-weight: 500; font-family: &amp;#39;Microsoft Yahei&amp;#39;; vertical-align: baseline; line-height: 36px; color: rgb(51, 51, 51); white-space: normal;&quot;&gt;伊尔曼都烤肉&lt;/h2&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 8, '8,9', '6228481006486106160', 0.00, '中国农业银行', '王宇', '王宇', '15075652703', 0, 1, 1492963188, 1492963637),
(30, '虾吃虾涮', '578464694@qq.com', '\\upload\\20170424\\76166986c7a6444d9667b8d44e410e2d.jpg', '\\upload\\20170424\\5e1a984fe16a240d63c59e815e6206c2.jpg', '&lt;h2 style=&quot;font-size: 24px; margin: 8px 0px 2px; padding: 0px; border: 0px; outline: 0px; font-weight: 500; font-family: &amp;#39;Microsoft Yahei&amp;#39;; vertical-align: baseline; line-height: 36px; color: rgb(51, 51, 51); white-space: normal;&quot;&gt;虾吃虾涮(二大街店)&lt;/h2&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 8, '8,9', '6228481006486106160', 0.00, '中国农业银行', '王宇', '王宇', '15075652703', 0, 1, 1492963617, 1492963630),
(31, 'testqueue', '578464694@qq.com', '\\upload\\20170506\\a5016c1d83145aced1c4003cc5981115.jpg', '\\upload\\20170506\\3aa075f4b6e39835835e7cec5619ae81.jpg', '&lt;p&gt;测试邮件队列&lt;/p&gt;', 8, '8,9', '6228481006486106160', 0.00, '中国农业银行', '王宇', '王宇', '15075652703', 0, 0, 1494065718, 1494065718),
(32, '华彩集团', '123456@qq.com', '/upload/20170711/3d9acb03ccff1a97381a2f7898735914.png', '/upload/20170711/3b919c4ee3d31446b3d9c5a470453cc9.png', '&lt;p&gt;地方按时啊都是&lt;br/&gt;&lt;/p&gt;', 3, '3,4', '123456789077', 0.00, '中国农业银行', 'George', 'George', '13330016296', 0, 1, 1499735385, 1499735550);

-- --------------------------------------------------------

--
-- 表的结构 `o2o_bis_account`
--

CREATE TABLE `o2o_bis_account` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `code` varchar(10) NOT NULL DEFAULT '',
  `bis_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_login_ip` varchar(20) NOT NULL DEFAULT '',
  `last_login_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `is_main` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_bis_account`
--

INSERT INTO `o2o_bis_account` (`id`, `username`, `password`, `code`, `bis_id`, `last_login_ip`, `last_login_time`, `is_main`, `listorder`, `status`, `create_time`, `update_time`) VALUES
(1, 'wangyu', '123456', '', 0, '', 0, 0, 0, 0, 0, 0),
(2, 'wy7452525', '54a518ce54e8684f02d8bde81c6236c3', '2486', 13, '', 0, 1, 0, 2, 1492243992, 1492515313),
(3, 'admin2', '19687420fc5d27865b4c864005181e11', '9944', 14, '', 0, 1, 0, 2, 1492248598, 1492515248),
(4, 'wang7452525', 'd8aeb59d8350d805d6b625af69ed2bb9', '4305', 15, '', 0, 1, 0, 2, 1492266832, 1492515216),
(5, 'aaaaaa', 'f732e7f6395ff855048bf80debc753f2', '8391', 19, '', 0, 1, 0, 2, 1492268752, 1492318901),
(6, 'eeeeeee', '9ccb947335722b6443447400ea5d5890', '3340', 20, '', 0, 1, 0, 2, 1492268859, 1492515529),
(7, 'jjuuuuuu', '8553d20dd98c633a5c08b3df01173334', '502', 21, '', 0, 1, 0, 2, 1492310543, 1492515505),
(8, '7452525', 'a413fb6676a7ae4dc0427efe93dc8c31', '8946', 21, '', 1492440526, 1, 0, 2, 1492328612, 1492515505),
(9, 'wangwang', 'ae6a5d68d052adc8db0fb4c02d5dcc95', '1122', 23, '', 1492862082, 1, 0, 1, 1492862012, 1492862082),
(10, 'haolunge', '1dda7e1dc8e48d2992be2f718308e7e6', '9203', 24, '', 1494079534, 1, 0, 1, 1492961325, 1494079534),
(11, 'boersen', 'fdda33d0613401f135695a6189543070', '583', 25, '', 1492963742, 1, 0, 1, 1492961881, 1492963742),
(12, 'dingdingyang', '329a11a6a1b509db5ae5e391dae685a2', '9352', 26, '', 1494850249, 1, 0, 1, 1492962196, 1494850249),
(13, 'chunyuan', '546deea80011293f311d69b588853dfc', '1333', 27, '', 1494730790, 1, 0, 1, 1492962467, 1494730790),
(14, 'bulasika', 'ff1518c1f484e76fec789a1f97e8f18b', '6569', 28, '', 0, 1, 0, 1, 1492962770, 1492962800),
(15, 'yiermandu', '315aaa4d43a9ae450b13850914da3448', '2989', 29, '', 1493995181, 1, 0, 1, 1492963188, 1493995181),
(16, 'xiachi', '98bfcb35944d9bf9efb0d97df920f448', '882', 30, '', 1492964088, 1, 0, 1, 1492963617, 1492964088),
(17, 'testqueue', '8c6d18246af8921056740afe71796dc7', '8543', 31, '', 0, 1, 0, 0, 1494065718, 1494065718),
(18, 'admin', 'a9d79754002792230a8ed999b7946036', '1605', 32, '', 1499825443, 1, 0, 1, 1499735385, 1499825443);

-- --------------------------------------------------------

--
-- 表的结构 `o2o_bis_location`
--

CREATE TABLE `o2o_bis_location` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `contact` varchar(20) NOT NULL DEFAULT '',
  `xpoint` varchar(20) NOT NULL DEFAULT '',
  `ypoint` varchar(20) NOT NULL DEFAULT '',
  `bis_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `open_time` varchar(50) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `is_main` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `api_address` varchar(255) NOT NULL DEFAULT '',
  `city_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `city_path` varchar(50) NOT NULL DEFAULT '',
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `category_path` varchar(50) NOT NULL DEFAULT '',
  `bank_info` varchar(50) NOT NULL DEFAULT '',
  `listorder` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_bis_location`
--

INSERT INTO `o2o_bis_location` (`id`, `name`, `logo`, `address`, `tel`, `contact`, `xpoint`, `ypoint`, `bis_id`, `open_time`, `content`, `is_main`, `api_address`, `city_id`, `city_path`, `category_id`, `category_path`, `bank_info`, `listorder`, `status`, `create_time`, `update_time`) VALUES
(3, '柯南的分店', '\\upload\\20170415\\cea5f9408699fed2814d4598bc4d0e9d.jpg', '河北省霸州市信安镇', '15075652703', '王宇', '116.65313694621', '39.158729930098', 19, '', '这里是店铺介绍', 1, '', 8, '8,9', 2, '2,3', '', 0, 1, 1492240685, 1492471905),
(4, '坂本的分店', '\\upload\\20170415\\059924dc3f4e4c800cd9d403d0a5f252.jpg', '河北省廊坊市广阳区新华路199号', '15075652703', '王宇', '116.71203300041', '39.551346099335', 22, '7:00-8:00', '这里是店铺介绍', 1, '', 8, '8,9', 11, '11,12', '', 0, 2, 1492243718, 1492515482),
(6, '有家客栈', '\\upload\\20170415\\234a5e4500a8b9f48ca0f37286d986a2.jpg', '河北省廊坊市广阳区新华路199号', '15075652703', '王宇', '116.71203300041', '39.551346099335', 12, '7:00-8:00', '这里是店铺介绍', 1, '', 3, '3,7', 11, '11,', '', 0, -1, 1492243935, 1494509522),
(9, '大米店铺', '\\upload\\20170415\\3d219b9a50fd2cb98ee301fd96a4bf26.jpg', '河北省霸州市信安镇爱国街', '15075652703', '王宇', '116.65313694621', '39.158729930098', 15, '08:00-22:00', '<p>扛把子</p>', 1, '河北省霸州市信安镇爱国街', 8, '8,9', 9, '9,', '', 0, 2, 1492266832, 1492515216),
(10, 'bilibili', '\\upload\\20170415\\aefec9b158b10e2e92a4274863b59a7e.jpg', '河北省廊坊市广阳区新华路199号', '15075652703', '王宇', '116.71203300041', '39.551346099335', 19, '09:00-22:00', '门店介绍', 1, '河北省廊坊市广阳区新华路199号', 8, '8,9', 9, '9,14|10', '', 0, 1, 1492268752, 1492318901),
(11, '智能姬', '\\upload\\20170415\\fc075f60c4c92233ada22cd10426830f.jpg', '河北省廊坊市广阳区新华路199号', '15075652703', '王宇', '116.71203300041', '39.551346099335', 20, '09:00-22:00', '门店介绍', 1, '河北省廊坊市广阳区新华路199号', 3, '3,7', 9, '9,14|10', '', 0, 2, 1492268859, 1492515529),
(12, 'bilibili的修改分店', '\\upload\\20170416\\fd728f8aaf8759b2141bac428601b400.jpg', '河北省霸州市信安镇爱国街', '15075652703', '王宇', '116.65313694621', '39.158729930098', 21, '08:00-09:00', '<p>水电费</p>', 0, '河北省霸州市信安镇爱国街', 8, '8,0', 9, '9,on', '', 0, -1, 1492310543, 1492444383),
(13, '小明店铺3', '\\upload\\20170416\\96aae8af9ffdad4e5d562b0d5d54e5b4.jpg', '河北省廊坊市广阳区新华路199号', '15075652703', '王宇', '116.71203300041', '39.551346099335', 22, '08:00-22:00', '<p>王宇的店铺&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', 0, '河北省廊坊市广阳区新华路199号', 8, '8,0', 1, '1,on', '', 0, 1, 1492328612, 1492350787),
(14, '小明的店铺', '\\upload\\20170416\\d258d7d2271fe30a5da68dfa4150e949.jpg', '河北省霸州市信安镇爱国街', '15075652703', '王宇', '116.65313694621', '39.158729930098', 22, '08:00-22:00', '<p>王小明的门店介绍</p>', 0, '河北省霸州市信安镇爱国街', 8, '8,9', 1, '1,6', '', 0, 1, 1492342526, 1492437190),
(16, '小明的分店', '\\upload\\20170417\\2fc496aacc8c8342fb2019607b78ecd2.gif', '河北省霸州市信安镇爱国街', '15075652703', '王宇', '116.65313694621', '39.158729930098', 21, '08:00-22:00', '<p>王小明分店介绍</p>', 0, '河北省霸州市信安镇爱国街', 8, '8,9', 2, '2,3', '', 0, -1, 1492435204, 1492438420),
(17, '我的门店', '\\upload\\20170417\\a2fdd2eca1ef5e5dc182faba7cf0fe8f.jpg', '河北省廊坊市新华路199号', '18855522445', '小明', '116.71203300041', '39.551346099335', 21, '08:00-22:00', '<p>这是门店介绍</p>', 0, '河北省廊坊市新华路199号', 8, '8,9', 1, '1,6', '', 0, -1, 1492440405, 1492445041),
(18, 'bilibili的另一个门店', '\\upload\\20170417\\425149654da4dab16695c504fc82c75a.gif', '河北省廊坊市广阳区新华路199号', '15075652703', '王宇', '116.71203300041', '39.551346099335', 21, '06:00-22:00', '<p>bilibili的另一个门店介绍</p>', 0, '河北省廊坊市广阳区新华路199号', 3, '3,7', 2, '2,3', '', 0, 1, 1492444317, 1492471896),
(19, 'bilibili的另一个门店', '\\upload\\20170418\\7cda152b0845cf3e8071b1cccccaf253.jpg', '河北省霸州市信安镇爱国街', '15075652703', '王宇', '116.65313694621', '39.158729930098', 21, '08:00-22:00', '<p>bilibili的另一个门店</p>', 0, '河北省霸州市信安镇爱国街', 8, '8,9', 2, '2,3', '', 0, 1, 1492472197, 1492472207),
(20, 'bilibili的新加门店', '\\upload\\20170418\\c66ca528b6efee7bde8b4bfb966cb5f4.jpg', '河北省廊坊市安次区爱民东道14号', '15075652703', '王宇', '116.70194823648', '39.532415835593', 21, '07:00-23:00', '<p>bilibili的新加门店</p>', 0, '河北省廊坊市安次区爱民东道14号', 3, '3,7', 2, '2,3', '', 0, 1, 1492472323, 1492472370),
(21, '王小明', '\\upload\\20170422\\b112890b0df2e5fc4abc8f59e23007dd.jpg', '河北省廊坊市广阳区新华路199号', '15075652703', '王宇', '116.71203300041', '39.551346099335', 23, '09:00-22:00', '&lt;p&gt;门店&lt;/p&gt;', 1, '河北省廊坊市广阳区新华路199号', 8, '8,9', 1, '1,', '', 0, 1, 1492862012, 1492862065),
(22, 'wangwang的门店', '\\upload\\20170422\\90e69f82caed9b9797964df32121afea.jpg', '河北省廊坊市广阳区新华路199号', '15075652703', '王宇', '116.71203300041', '39.551346099335', 23, '08:00-22:00', '&lt;p&gt;介绍&lt;/p&gt;', 0, '河北省廊坊市广阳区新华路199号', 8, '8,9', 1, '1,8|6', '', 0, 1, 1492862163, 1492862181),
(23, '好伦哥团购', '\\upload\\20170423\\f88080c3dfe0829b3ff3b6c5dc8d214b.jpg', '廊坊市燕郊天洋广场A馆1层F1A-04号', '15075652703', '王宇', '116.82766516915', '39.971231993239', 24, '11:00-21:00', '&lt;p&gt;提供免费停车位，提供免费WiFi&lt;/p&gt;', 1, '廊坊市燕郊天洋广场A馆1层F1A-04号', 8, '8,9', 1, '1,18', '', 0, 1, 1492961325, 1492961400),
(24, '柏尔森烤肉自助餐厅', '\\upload\\20170423\\56ef8c3c9118617fc171f9f821d55917.jpg', '廊坊市广阳区银河北路119号乐都新天地6楼', '15075652703', '王宇', '116.70498264872', '39.538246682078', 25, '18:00-21:30', '&lt;p&gt;&lt;span class=&quot;text-main&quot;&gt;免费停车，免费WiFi！&lt;/span&gt;&lt;/p&gt;', 1, '廊坊市广阳区银河北路119号乐都新天地6楼', 8, '8,9', 1, '1,19', '', 0, 1, 1492961881, 1492961908),
(25, '丁丁洋回转自助火锅', '\\upload\\20170423\\af2aa997eb31f30a8d2c61bb863bca7e.jpg', '廊坊市广阳区万达广场F座家乐福超市地下一层', '15075652703', '王宇', '116.71410446597', '39.528431526829', 26, '11:00-21:00', '&lt;p&gt;&lt;span class=&quot;text-main&quot;&gt;万达店单人自助火锅&lt;/span&gt;&lt;/p&gt;', 1, '廊坊市广阳区万达广场F座家乐福超市地下一层', 8, '8,9', 1, '1,20', '', 0, 1, 1492962196, 1492962992),
(26, '春园烤肉', '\\upload\\20170423\\b13f0862a1bc077b56a23eba56fdabfe.jpg', '廊坊市广阳区第四大街肯德基4楼', '15075652703', '王宇', '116.73145463413', '39.534755473004', 27, '10:30-21:30', '&lt;h2&gt;春园烤肉(四大街店)&lt;/h2&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1, '廊坊市广阳区第四大街肯德基4楼', 8, '8,9', 1, '1,', '', 0, 1, 1492962467, 1492962822),
(27, '布拉丝卡南美烤肉', '\\upload\\20170423\\c59f29555ade5aa91212786aeed41abc.jpg', '廊坊市广阳区新华路57号月色广场3楼东侧', '15075652703', '王宇', '116.71504276045', '39.527328713462', 28, '11:00-14:00', '&lt;p&gt;提供免费停车位，提供免费WiFi&lt;/p&gt;', 1, '廊坊市广阳区新华路57号月色广场3楼东侧', 8, '8,9', 1, '1,19', '', 0, 1, 1492962770, 1492962800),
(28, '伊尔曼都烤肉', '\\upload\\20170423\\505d2e1eda7d4dfcc0688c0f89abeb0c.jpg', '廊坊市广阳区新华路50号万达广场六楼', '15075652703', '王宇', '116.71281826585', '39.526693586707', 29, '11:00-21:00', '&lt;p&gt;提供免费停车位，提供免费WiFi&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1, '廊坊市广阳区新华路50号万达广场六楼', 8, '8,9', 1, '1,19', '', 0, 1, 1492963188, 1492963637),
(29, '虾吃虾涮', '\\upload\\20170424\\76166986c7a6444d9667b8d44e410e2d.jpg', '廊坊市广阳区二大街北外街中段', '15075652703', '王宇', '116.72938960942', '39.540571622006', 30, '11:00-21:30', '&lt;p&gt;&lt;span style=&quot;color: rgb(88, 88, 88); font-family: &amp;#39;Hiragino Sans GB&amp;#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px;&quot;&gt;店内免费提供应季新鲜水果，另店内提供南瓜粥自助、小凉菜自助&lt;/span&gt;&lt;/p&gt;', 1, '廊坊市广阳区二大街北外街中段', 8, '8,9', 1, '1,20', '', 0, 1, 1492963617, 1492963630),
(30, 'testqueue', '\\upload\\20170506\\a5016c1d83145aced1c4003cc5981115.jpg', '河北省廊坊市广阳区新华路199号', '15075652703', '王宇', '116.71203300041', '39.551346099335', 31, '08:00-22:00', '&lt;p&gt;测试邮件队列的介绍&lt;/p&gt;', 1, '河北省廊坊市广阳区新华路199号', 8, '8,9', 1, '1,20', '', 0, 0, 1494065718, 1494065718),
(843, '小米店铺', '\\upload\\20170415\\68609fe5e22d8dbcfafe72f4cb7f7329.jpg', '河北省廊坊市广阳区新华路199号', '15075652703', '王宇', '116.71203300041', '39.551346099335', 14, '09:00-22:00', '这里是店铺介绍', 1, '河北省廊坊市广阳区新华路199号', 1, '1,2', 9, '9,', '', 0, 2, 1492248598, 1492515248),
(844, '新加的丁丁洋自助火锅', '\\upload\\20170511\\1f371b331b59d32e2b8e6f8c8f1fbdc7.jpg', '景德镇市珠山区浙江路与广场南路交汇处东20米路南', '15075652703', '王宇', '117.22107434143', '29.29152538553', 26, '08:00-21:00', '&lt;p&gt;一个新加的丁丁洋自助火锅&lt;/p&gt;', 0, '景德镇市珠山区浙江路与广场南路交汇处东20米路南', 3, '3,7', 1, '1,20', '', 0, 1, 1494508960, 1494509491),
(845, '华彩集团', '/upload/20170711/3d9acb03ccff1a97381a2f7898735914.png', '', '13330016296', 'George', '115.89728003744', '28.654426839742', 32, '8:00-12:00', '&lt;p&gt;阿道夫收到&lt;br/&gt;&lt;/p&gt;', 1, '江西省南昌市西湖区洪城客运站', 3, '', 1, '1,20', '', 0, 1, 1499735385, 1499735550);

-- --------------------------------------------------------

--
-- 表的结构 `o2o_category`
--

CREATE TABLE `o2o_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_category`
--

INSERT INTO `o2o_category` (`id`, `name`, `parent_id`, `listorder`, `status`, `create_time`, `update_time`) VALUES
(1, '美食', 0, 10, 1, 1491992020, 1492652898),
(2, '旅游', 0, 12, 0, 1491992054, 1499742518),
(3, '飞机', 2, 0, 1, 1491992107, 0),
(5, '阅读', 0, 23, -1, 1491992493, 1492072867),
(6, '麻辣烫', 1, 0, 1, 1491995365, 1491995365),
(8, '拉面', 1, 0, 1, 1491995777, 1491995777),
(9, '电影', 0, 11, 1, 1492060639, 1492652917),
(10, '文艺电影', 9, 6, 1, 1492060659, 1492071287),
(11, '汽车', 0, 9, -1, 1492075333, 1493117146),
(12, '宝马', 11, 0, 1, 1492075357, 1492075357),
(13, '文学名著', 5, 0, 1, 1492078888, 1492078888),
(14, '哈利波特', 9, 0, 1, 1492079999, 1492079999),
(15, '休闲', 0, 0, 1, 1492777548, 1492777548),
(16, '娱乐', 0, 0, 1, 1492777558, 1492777558),
(17, '酒店', 0, 5, 1, 1492777621, 1492777633),
(18, '西餐', 1, 0, 1, 1492961252, 1492961252),
(19, '自助烤肉', 1, 0, 1, 1492961810, 1492961810),
(20, '火锅', 1, 0, 1, 1492962070, 1492962070);

-- --------------------------------------------------------

--
-- 表的结构 `o2o_city`
--

CREATE TABLE `o2o_city` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `uname` varchar(50) NOT NULL DEFAULT '',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `listorder` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_city`
--

INSERT INTO `o2o_city` (`id`, `name`, `uname`, `parent_id`, `is_default`, `listorder`, `status`, `create_time`, `update_time`) VALUES
(1, '北京', 'beijing', 0, 0, 0, 1, 1474013959, 0),
(2, '朝阳', 'chaoyang', 1, 0, 0, 1, 1492132250, 0),
(3, '江西', 'jiangxi', 0, 0, 0, 1, 1492132287, 0),
(4, '南昌', 'nanchang', 3, 1, 0, 1, 1492132318, 0),
(5, '上饶', 'shangrao', 3, 0, 0, 1, 1492132347, 0),
(6, '抚州', 'fuzhou', 3, 0, 0, 1, 1492132369, 0),
(7, '景德镇', 'jingdezhen', 3, 0, 0, 1, 1492132394, 0),
(8, '河北', 'hebei', 0, 0, 0, 1, 1492132500, 0),
(9, '廊坊', 'langfang', 8, 0, 0, 1, 1492132600, 0);

-- --------------------------------------------------------

--
-- 表的结构 `o2o_comment`
--

CREATE TABLE `o2o_comment` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0为删除，1 为正常 ',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `comment_class` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0为好评，1为中评，2为差评',
  `update_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_comment`
--

INSERT INTO `o2o_comment` (`id`, `username`, `user_id`, `comment`, `deal_id`, `status`, `create_time`, `comment_class`, `update_time`) VALUES
(27, 'wangyu', 16, '第四次评论', 19, 1, 1494329205, 1, 1494329205),
(26, 'wangyu', 16, '第三次评论', 19, 1, 1494329190, 2, 1494329190),
(25, 'wangyu', 16, '第二次评论', 19, 1, 1494329179, 1, 1494329179),
(24, 'wangyu', 16, '我在测试我的评论', 19, 1, 1494329147, 0, 1494329147),
(28, 'wangyu', 16, '我在测试铁木真的评论', 15, 1, 1494684824, 2, 1494684824);

-- --------------------------------------------------------

--
-- 表的结构 `o2o_coupons`
--

CREATE TABLE `o2o_coupons` (
  `id` int(11) UNSIGNED NOT NULL,
  `sn` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0:生成未发送给用户 \r\n		1:已经发送给用户 2：用户已经使用 3 禁用',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `deal_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_coupons`
--

INSERT INTO `o2o_coupons` (`id`, `sn`, `password`, `user_id`, `deal_id`, `order_id`, `status`, `create_time`, `update_time`, `deal_count`) VALUES
(102, '1494127003133162325', '50207', 16, 19, 94, 2, 1494127003, 1494127003, 1),
(103, '1494129026908310540', '62209', 16, 19, 95, 2, 1494129026, 1494129026, 1),
(104, '1494129132231921359', '88367', 16, 19, 96, 2, 1494129132, 1494129132, 1),
(105, '1494129315884357750', '64259', 16, 19, 97, 2, 1494129315, 1494129315, 1),
(106, '1494129415712112751', '81903', 18, 19, 98, 0, 1494129415, 1494129415, 1),
(107, '1494129596451540987', '74237', 18, 19, 99, 0, 1494129596, 1494129596, 1),
(108, '1494129612923431988', '55073', 18, 19, 100, 1, 1494129613, 1494129613, 1),
(109, '1494406228693463802', '84587', 18, 24, 107, 1, 1494406228, 1494406228, 10),
(110, '1494406434695196656', '47025', 17, 24, 108, 1, 1494406434, 1494406434, 99),
(111, '1494410232238701100', '12949', 17, 24, 115, 1, 1494410232, 1494410232, 15),
(112, '1494638511962430779', '10821', 16, 15, 116, 1, 1494638512, 1494638512, 10);

-- --------------------------------------------------------

--
-- 表的结构 `o2o_deal`
--

CREATE TABLE `o2o_deal` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `se_category_id` varchar(50) NOT NULL,
  `category_path` varchar(50) NOT NULL DEFAULT '0',
  `bis_id` int(11) NOT NULL DEFAULT '0',
  `location_ids` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(200) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `origin_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `current_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `city_id` int(11) NOT NULL DEFAULT '0',
  `buy_count` int(11) NOT NULL DEFAULT '0',
  `total_count` int(11) NOT NULL DEFAULT '0',
  `coupons_begin_time` int(11) NOT NULL DEFAULT '0',
  `coupons_end_time` int(11) NOT NULL DEFAULT '0',
  `bis_account_id` int(10) NOT NULL DEFAULT '0',
  `xpoint` varchar(20) NOT NULL DEFAULT '',
  `ypoint` varchar(20) NOT NULL DEFAULT '',
  `balance_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `notes` text NOT NULL,
  `listorder` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `city_path` varchar(50) NOT NULL,
  `se_city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_deal`
--

INSERT INTO `o2o_deal` (`id`, `name`, `category_id`, `se_category_id`, `category_path`, `bis_id`, `location_ids`, `image`, `description`, `start_time`, `end_time`, `origin_price`, `current_price`, `city_id`, `buy_count`, `total_count`, `coupons_begin_time`, `coupons_end_time`, `bis_account_id`, `xpoint`, `ypoint`, `balance_price`, `notes`, `listorder`, `status`, `create_time`, `update_time`, `city_path`, `se_city_id`) VALUES
(26, '精品酒店', 17, '', '0', 32, '845', '/upload/20170712/213137f671eaff15ba91e41d43898d30.jpg', '&lt;p&gt;大法师&lt;br/&gt;&lt;/p&gt;', 1498874880, 1501466880, 112.00, 110.00, 4, 0, 0, 1498874880, 1501466880, 18, '115.89728003744', '28.654426839742', 0.00, '&lt;p&gt;sad房&lt;br/&gt;&lt;/p&gt;', 0, 1, 1499825523, 1499825523, '', 0),
(27, '饼干', 17, '', '0', 32, '845', '/upload/20170712/b196c357973994b14885ba90dcc48400.jpg', '&lt;p&gt;撒地方&lt;br/&gt;&lt;/p&gt;', 1498877520, 1501469520, 140.00, 120.00, 4, 0, 0, 1498877520, 1501469520, 18, '115.89728003744', '28.654426839742', 0.00, '&lt;p&gt;撒地方&lt;br/&gt;&lt;/p&gt;', 0, 1, 1499828125, 1499828125, '', 0),
(28, '手表', 17, '', '0', 32, '845', '/upload/20170712/dbb53a9c30b9468abc51b89a4f38ff43.jpg', '&lt;p&gt;沙发&lt;br/&gt;&lt;/p&gt;', 1499918640, 1501473840, 111.00, 23.00, 4, 0, 0, 1500005100, 1501473900, 18, '115.89728003744', '28.654426839742', 0.00, '&lt;p&gt;&amp;nbsp;阿斯蒂芬&lt;br/&gt;&lt;/p&gt;', 0, 1, 1499832498, 1499832498, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `o2o_featured`
--

CREATE TABLE `o2o_featured` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_featured`
--

INSERT INTO `o2o_featured` (`id`, `type`, `title`, `image`, `url`, `description`, `listorder`, `status`, `create_time`, `update_time`) VALUES
(8, 0, '精品火锅', '/upload/20170712/05e982cbf20b3651ce00b61a4b5a9de6.png', '对对对', '地方', 0, 0, 1499824171, 1499824171),
(9, 0, '四川火锅', '/upload/20170712/493a089e141edc0d5ae788a2c3439a02.jpg', '', '', 0, 0, 1499824445, 1499824445),
(10, 1, '饼干', '/upload/20170712/c82429d8834efc6402a3b7847cbd81b5.jpg', '第三方', '撒的', 0, 0, 1499824575, 1499824575);

-- --------------------------------------------------------

--
-- 表的结构 `o2o_order`
--

CREATE TABLE `o2o_order` (
  `id` int(11) UNSIGNED NOT NULL,
  `out_trade_no` varchar(100) NOT NULL DEFAULT '',
  `transaction_id` varchar(100) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `pay_time` varchar(20) NOT NULL DEFAULT '',
  `payment_id` tinyint(1) NOT NULL DEFAULT '1',
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `deal_count` int(11) NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0',
  `total_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `pay_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `use_type` tinyint(1) NOT NULL DEFAULT '0',
  `address` varchar(255) DEFAULT '',
  `send_status` tinyint(1) DEFAULT '0',
  `bis_id` int(11) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0为未评价，1为已评价'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_order`
--

INSERT INTO `o2o_order` (`id`, `out_trade_no`, `transaction_id`, `user_id`, `username`, `pay_time`, `payment_id`, `deal_id`, `deal_count`, `pay_status`, `total_price`, `pay_amount`, `status`, `referer`, `create_time`, `update_time`, `use_type`, `address`, `send_status`, `bis_id`, `is_comment`) VALUES
(94, '1494127003133162325', '', 16, 'wangyu', '', 1, 19, 1, 1, 26.90, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=1', 1494127002, 1494329147, 0, '', 0, 26, 1),
(95, '149412902690831054', '', 16, 'wangyu', '', 1, 19, 1, 1, 26.90, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=1', 1494129025, 1494329179, 0, '', 0, 26, 1),
(96, '1494129132231921359', '', 16, 'wangyu', '', 1, 19, 1, 1, 26.90, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=1', 1494129131, 1494329190, 0, '', 0, 26, 1),
(97, '149412931588435775', '', 16, 'wangyu', '', 1, 19, 1, 1, 26.90, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=1', 1494129314, 1494329205, 0, '', 0, 26, 1),
(98, '1494129415712112751', '', 18, 'qianxukang2', '', 1, 19, 1, 1, 26.90, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=1', 1494129415, 1494129415, 0, '', 0, 26, 0),
(99, '1494129596451540987', '', 18, 'qianxukang2', '', 1, 19, 1, 1, 26.90, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=1', 1494129595, 1494129595, 0, '', 0, 26, 0),
(100, '1494129612923431988', '', 18, 'qianxukang2', '', 1, 19, 1, 1, 26.90, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=1', 1494129612, 1494129612, 0, '', 0, 26, 0),
(101, '1494135986804094250', '', 18, 'qianxukang2', '', 1, 19, 10, 0, 269.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=10', 1494135986, 1494147665, 2, '', 3, 26, 0),
(102, '1494136044607346084', '', 18, 'qianxukang2', '', 1, 19, 10, 0, 269.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=10', 1494136044, 1494136044, 1, '', 0, 26, 0),
(103, '1494136061515385529', '', 18, 'qianxukang2', '', 1, 19, 10, 0, 269.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=10', 1494136061, 1494136061, 2, '测试地点', 0, 26, 0),
(104, '14941365452931119', '', 18, 'qianxukang2', '', 1, 19, 1, 0, 26.90, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=1', 1494136544, 1494136544, 1, '', 0, 26, 0),
(105, '1494136594580799338', '', 18, 'qianxukang2', '', 1, 19, 1, 0, 26.90, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=1', 1494136594, 1494136594, 1, '', 0, 26, 0),
(106, '1494136609606667250', '', 18, 'qianxukang2', '', 1, 19, 1, 0, 26.90, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=19&count=1', 1494136608, 1494509642, 2, '河北省霸州市信安镇爱国街', 3, 26, 0),
(107, '1494406228693463802', '', 18, 'qianxukang2', '', 1, 24, 10, 1, 770.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=24&count=10', 1494406228, 1494406228, 1, '', 0, 24, 0),
(108, '1494406434695196656', '', 17, 'qianxukang', '', 1, 24, 99, 1, 7623.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=24&count=99', 1494406434, 1494406434, 1, '', 0, 24, 0),
(109, '1494407933915992435', '', 17, 'qianxukang', '', 1, 24, 89, 0, 6853.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=24&count=89', 1494407933, 1494407933, 2, '河北省廊坊市河北工业大学城市学院廊坊分校', 0, 24, 0),
(110, '1494409831696494393', '', 17, 'qianxukang', '', 1, 24, 4, 0, 308.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=24&count=4', 1494409831, 1494409831, 2, '河北省霸州市信安镇爱国街110号', 0, 24, 0),
(111, '1494409898441368775', '', 17, 'qianxukang', '', 1, 24, 10, 0, 770.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=24&count=10', 1494409897, 1494409897, 2, '河北省霸州市信安镇爱国街110号', 0, 24, 0),
(112, '1494409995745830055', '', 17, 'qianxukang', '', 1, 24, 10, 0, 770.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=24&count=10', 1494409995, 1494409995, 2, '河北省霸州市信安镇爱国街110号', 0, 24, 0),
(113, '1494410109761394482', '', 17, 'qianxukang', '', 1, 24, 10, 0, 770.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=24&count=10', 1494410109, 1494410109, 2, '河北省霸州市信安镇爱国街110号', 0, 24, 0),
(114, '1494410163811438018', '', 17, 'qianxukang', '', 1, 24, 10, 0, 770.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=24&count=10', 1494410163, 1494410163, 2, '河北省廊坊市广阳区新华路199号', 0, 24, 0),
(115, '14944102322387011', '', 17, 'qianxukang', '', 1, 24, 15, 1, 1155.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=24&count=15', 1494410231, 1494410231, 1, '', 0, 24, 0),
(116, '1494638511962430779', '', 16, 'wangyu', '', 1, 15, 10, 1, 770.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=15&count=10', 1494638511, 1494684824, 1, '', 0, 23, 1),
(117, '1494685100986118413', '', 16, 'wangyu', '', 1, 15, 1, 0, 77.00, 0.00, 1, 'http://o2o.xm.com/index.php/index/order/confirm.html?id=15&count=1', 1494685100, 1494685100, 2, '廊坊市广阳区新华路199号', 0, 23, 0),
(118, '149991973186150548', '', 22, 'george', '', 1, 27, 2, 0, 240.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=1', 1499919731, 1499919731, 0, '', 0, 0, 0),
(119, '149992562945759524', '', 22, 'george', '', 1, 27, 1, 0, 120.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=1', 1499925629, 1499925629, 0, '', 0, 0, 0),
(120, '149992839277299768', '', 22, 'george', '', 1, 28, 2, 0, 46.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=28&count=1', 1499928392, 1499928392, 0, '', 0, 0, 0),
(121, '149993931762034593', '', 22, 'george', '', 1, 27, 1, 0, 120.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=1', 1499939317, 1499939317, 0, '', 0, 0, 0),
(122, '149993959327864073', '', 22, 'george', '', 1, 27, 1, 0, 120.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=1', 1499939593, 1499939593, 0, '', 0, 0, 0),
(123, '149993961678950870', '', 22, 'george', '', 1, 27, 1, 0, 120.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=1', 1499939616, 1499939616, 0, '', 0, 0, 0),
(124, '149993992353327699', '', 22, 'george', '', 1, 27, 1, 0, 120.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=1', 1499939923, 1499939923, 0, '', 0, 0, 0),
(125, '149999286757121499', '', 22, 'george', '', 1, 26, 2, 0, 220.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=26&count=1', 1499992867, 1499992867, 0, '', 0, 0, 0),
(126, '149999378952791711', '', 22, 'george', '', 1, 26, 1, 0, 110.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=26&count=1', 1499993789, 1499993789, 0, '', 0, 0, 0),
(127, '149999498911071723', '', 22, 'george', '', 1, 26, 1, 0, 110.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=26&count=1', 1499994989, 1499994989, 0, '', 0, 0, 0),
(128, '149999539899350575', '', 22, 'george', '', 1, 26, 2, 0, 220.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=26&count=1', 1499995398, 1499995398, 0, '', 0, 0, 0),
(129, '149999544023325450', '', 22, 'george', '', 1, 26, 1, 0, 110.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=26&count=1', 1499995440, 1499995440, 0, '', 0, 0, 0),
(130, '149999544715911889', '', 22, 'george', '', 1, 26, 2, 0, 220.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=26&count=1', 1499995447, 1499995447, 0, '', 0, 0, 0),
(131, '149999547348040360', '', 22, 'george', '', 1, 27, 3, 0, 360.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=3', 1499995473, 1499995473, 0, '', 0, 0, 0),
(132, '149999625762145367', '', 22, 'george', '', 1, 27, 3, 0, 360.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=3', 1499996257, 1499996257, 0, '', 0, 0, 0),
(133, '149999992344767092', '', 22, 'george', '', 1, 27, 1, 0, 120.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=1', 1499999923, 1499999923, 0, '', 0, 0, 0),
(134, '150000009830694058', '', 22, 'george', '', 1, 27, 2, 0, 240.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=1', 1500000098, 1500000098, 0, '', 0, 0, 0),
(135, '150000186339360893', '', 22, 'george', '', 1, 27, 3, 0, 360.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=3', 1500001863, 1500001863, 0, '', 0, 0, 0),
(136, '150000242866516167', '', 22, 'george', '', 1, 27, 1, 0, 120.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=1', 1500002428, 1500002428, 0, '', 0, 0, 0),
(137, '150000326012310213', '', 22, 'george', '', 1, 28, 2, 0, 46.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=28&count=2', 1500003260, 1500003260, 0, '', 0, 0, 0),
(138, '15000033587333772', '', 22, 'george', '', 1, 27, 2, 0, 240.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=2', 1500003358, 1500003358, 0, '', 0, 0, 0),
(139, '150008944267057273', '', 22, 'george', '', 1, 27, 1, 0, 120.00, 0.00, 1, 'http://192.168.103.254/index/order/confirm.html?id=27&count=1', 1500089442, 1500089442, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `o2o_test`
--

CREATE TABLE `o2o_test` (
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `nimei` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_test`
--

INSERT INTO `o2o_test` (`update_time`, `create_time`, `nimei`, `username`, `id`) VALUES
(1492678673, 1492678673, 'dfd', 'dddd', 1),
(1492678860, 1492678860, NULL, '', 2);

-- --------------------------------------------------------

--
-- 表的结构 `o2o_user`
--

CREATE TABLE `o2o_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `code` varchar(10) NOT NULL DEFAULT '',
  `last_login_ip` varchar(20) NOT NULL DEFAULT '',
  `last_login_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(30) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `listorder` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `o2o_user`
--

INSERT INTO `o2o_user` (`id`, `username`, `password`, `code`, `last_login_ip`, `last_login_time`, `email`, `mobile`, `listorder`, `status`, `create_time`, `update_time`) VALUES
(2, 'wangyu2', '09d03004b3964d2bef78920148b44373', '3128', '', 0, '1259865838@qq.com', '15075652703', 0, 1, 1492676268, 1492676268),
(3, 'wangyu3', '3001c9168bb9978b59ff55f5143875e8', '9211', '', 0, '12598658381@qq.com', '15075652702', 0, 1, 1492676374, 1492676374),
(5, 'wangyu4', 'ca88f4dd12757a7ac290ca8cf8f48840', '4578', '', 0, '9699587@qq.com', '15075652701', 0, 1, 1492676462, 1492676462),
(10, 'wangyudd', 'c508a86a73da590e9a9429d2ddb6c4f4', '5097', '', 0, '585888@qq.com', '15075652700', 0, 1, 1492683421, 1492683421),
(11, 'wangyudee', 'fce971560ed71172568bdda3f97c58c9', '7587', '', 0, '5871e@qq.com', '15075652710', 0, 1, 1492684773, 1492684773),
(14, 'sdfser', '1c92213e27caad744a861481a081d4af', '1265', '', 0, '5fgf8e@qq.com', '15075652705', 0, 1, 1492684997, 1494518525),
(15, 'deee', '02a8239687c6d3be8ba22fa09cd00cdc', '6212', '', 0, 'efgd@qq.com', '15075652711', 0, -1, 1492685112, 1494517510),
(16, 'wangyu', 'c08b9a1e323b8d76f2273898d41dbf74', '6463', '127.0.0.1', 1494899308, '578464694@qq.com', '15075652788', 0, 1, 1492758321, 1494899308),
(17, 'qianxukang', '80669370dfd641f1841899122ac4f882', '8976', '127.0.0.1', 1494406277, '565238711@qq.com', '15075652799', 0, 1, 1494079875, 1494406276),
(18, 'qianxukang2', 'f2988c9c6aab598b6f2c89e999c235ae', '2144', '127.0.0.1', 1494406172, '1229594507@qq.com', '15175652703', 0, 1, 1494080377, 1494406172),
(19, 'geroge', '11e826f922ba3feaad3958899339ed35', '2794', '', 0, '2351460538@qq.com', '', 0, 1, 1499756504, 1499756504),
(21, 'geroge1', '813f9b97b91e1ca467efdde3bb47bb98', '8560', '', 0, '12351460538@qq.com', '', 0, 1, 1499756853, 1499756853),
(22, 'george', '4ba6b9c925b6d051ad29c11898249976', '5374', '', 0, '123456@qq.com', '', 0, 1, 1499759940, 1499759940);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `o2o_admin`
--
ALTER TABLE `o2o_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `o2o_area`
--
ALTER TABLE `o2o_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `o2o_bis`
--
ALTER TABLE `o2o_bis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `o2o_bis_account`
--
ALTER TABLE `o2o_bis_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bis_id` (`bis_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `o2o_bis_location`
--
ALTER TABLE `o2o_bis_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `bis_id` (`bis_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `o2o_category`
--
ALTER TABLE `o2o_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `o2o_city`
--
ALTER TABLE `o2o_city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uname` (`uname`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `o2o_comment`
--
ALTER TABLE `o2o_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `o2o_coupons`
--
ALTER TABLE `o2o_coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sn` (`sn`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `deal_id` (`deal_id`),
  ADD KEY `create_time` (`create_time`);

--
-- Indexes for table `o2o_deal`
--
ALTER TABLE `o2o_deal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `se_category_id` (`category_path`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `start_time` (`start_time`),
  ADD KEY `end_time` (`end_time`);

--
-- Indexes for table `o2o_featured`
--
ALTER TABLE `o2o_featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `o2o_order`
--
ALTER TABLE `o2o_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `out_trade_no` (`out_trade_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `create_time` (`create_time`);

--
-- Indexes for table `o2o_test`
--
ALTER TABLE `o2o_test`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `o2o_user`
--
ALTER TABLE `o2o_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `o2o_admin`
--
ALTER TABLE `o2o_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `o2o_area`
--
ALTER TABLE `o2o_area`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `o2o_bis`
--
ALTER TABLE `o2o_bis`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- 使用表AUTO_INCREMENT `o2o_bis_account`
--
ALTER TABLE `o2o_bis_account`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `o2o_bis_location`
--
ALTER TABLE `o2o_bis_location`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=846;
--
-- 使用表AUTO_INCREMENT `o2o_category`
--
ALTER TABLE `o2o_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `o2o_city`
--
ALTER TABLE `o2o_city`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `o2o_comment`
--
ALTER TABLE `o2o_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- 使用表AUTO_INCREMENT `o2o_coupons`
--
ALTER TABLE `o2o_coupons`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- 使用表AUTO_INCREMENT `o2o_deal`
--
ALTER TABLE `o2o_deal`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- 使用表AUTO_INCREMENT `o2o_featured`
--
ALTER TABLE `o2o_featured`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `o2o_order`
--
ALTER TABLE `o2o_order`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- 使用表AUTO_INCREMENT `o2o_test`
--
ALTER TABLE `o2o_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `o2o_user`
--
ALTER TABLE `o2o_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
