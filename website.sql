-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 10 月 25 日 01:41
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `aiaier`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `backmenu`
-- 

CREATE TABLE `backmenu` (
  `id_backmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `remark` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_backmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

-- 
-- 导出表中的数据 `backmenu`
-- 

INSERT INTO `backmenu` VALUES (1, 1, '产品系统', '', 'product', 0, 1, 2, 1);
INSERT INTO `backmenu` VALUES (3, 1, '信息系统', '', 'news', 0, 1, 3, 1);
INSERT INTO `backmenu` VALUES (4, 1, '人事系统', '', 'hr', 0, 1, 4, 1);
INSERT INTO `backmenu` VALUES (5, 1, '权限系统', '', 'perm', 0, 1, 5, 1);
INSERT INTO `backmenu` VALUES (6, 1, '数据库备份', '', 'dbase', 0, 1, 6, 0);
INSERT INTO `backmenu` VALUES (9, 1, '产品管理', '', '/admin/product/product_manage.php', 1, 2, 9, 1);
INSERT INTO `backmenu` VALUES (8, 1, '产品分类', '', '/admin/product/product_dir.php', 1, 2, 8, 1);
INSERT INTO `backmenu` VALUES (47, 1, '区块管理', '', '/admin/siteset/layout.php', 44, 2, 47, 1);
INSERT INTO `backmenu` VALUES (15, 1, '信息分类', '', '/admin/news/news_dir.php', 3, 2, 15, 1);
INSERT INTO `backmenu` VALUES (16, 1, '信息管理', '', '/admin/news/news_manage.php', 3, 2, 16, 1);
INSERT INTO `backmenu` VALUES (17, 1, '员工档案', '', '/admin/hr/hr_staff.php', 4, 2, 17, 1);
INSERT INTO `backmenu` VALUES (18, 1, '考核统计', '', '/admin/hr/hr_exam.php', 4, 2, 18, 1);
INSERT INTO `backmenu` VALUES (19, 1, '招聘管理', '', '/admin/hr/hr_job.php', 4, 2, 19, 1);
INSERT INTO `backmenu` VALUES (20, 1, '系统菜单', '', '/admin/perm/perm_menu.php', 5, 2, 20, 1);
INSERT INTO `backmenu` VALUES (21, 1, '权限管理', '', '/admin/perm/perm_manage.php', 5, 2, 21, 1);
INSERT INTO `backmenu` VALUES (22, 1, '数据库备份', '', '/phpMyAdmin/', 6, 2, 22, 1);
INSERT INTO `backmenu` VALUES (48, 1, '版面管理', '', '/admin/siteset/pageset.php', 44, 2, 48, 1);
INSERT INTO `backmenu` VALUES (49, 1, '前台菜单', '', '/admin/siteset/webmenu.php', 44, 2, 49, 0);
INSERT INTO `backmenu` VALUES (39, 1, '信息回收站', '', '/admin/news/newsrecycle.php', 3, 2, 39, 1);
INSERT INTO `backmenu` VALUES (41, 1, '产品回收站', '', '/admin/product/productrecycle.php', 1, 2, 41, 1);
INSERT INTO `backmenu` VALUES (46, 1, '站点设定', '', '/admin/siteset/siteset.php', 44, 2, 46, 1);
INSERT INTO `backmenu` VALUES (44, 1, '站点管理', '', 'siteset', 0, 1, 1, 1);
INSERT INTO `backmenu` VALUES (50, 1, '留言反馈', '', '/admin/news/news_manage.php?&searchselect=24', 3, 2, 50, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `dept`
-- 

CREATE TABLE `dept` (
  `id_dept` int(11) NOT NULL auto_increment,
  `dept` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_dept`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- 导出表中的数据 `dept`
-- 

INSERT INTO `dept` VALUES (36, '111', 1);
INSERT INTO `dept` VALUES (35, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `exam`
-- 

CREATE TABLE `exam` (
  `id_exam` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `level` varchar(1) NOT NULL,
  `examdate` date NOT NULL,
  PRIMARY KEY  (`id_exam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `exam`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `hr`
-- 

CREATE TABLE `hr` (
  `id_hr` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `sex` int(1) NOT NULL default '1',
  `birthday` date NOT NULL,
  `hrcode` varchar(10) NOT NULL,
  `dept` int(11) NOT NULL,
  `iswork` int(1) NOT NULL default '1',
  `idcard` varchar(28) NOT NULL,
  `ismarry` int(1) NOT NULL,
  `nation` varchar(30) NOT NULL,
  `native` varchar(30) NOT NULL,
  `register` varchar(60) NOT NULL,
  `inwork` date NOT NULL,
  `education` varchar(20) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `school` varchar(40) NOT NULL,
  `political` varchar(20) NOT NULL,
  `post` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `hometel` varchar(20) NOT NULL,
  `mobi` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `hjqk` text NOT NULL,
  `cfqk` text NOT NULL,
  `gwbd` text NOT NULL,
  `ldht` text NOT NULL,
  `sbjn` text NOT NULL,
  `remark` text NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `logindate` datetime NOT NULL,
  `loginip` varchar(16) NOT NULL,
  PRIMARY KEY  (`id_hr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

-- 
-- 导出表中的数据 `hr`
-- 

INSERT INTO `hr` VALUES (1, 1, 'administrator', 1, '0000-00-00', '', 36, 1, '', 0, '', '', '', '2011-01-29', '', '', '', '', 9, 15, '', '', '', '', '', '', '', '', '', '', 'admin', 'admin888', 1, 1, '2011-01-29 18:08:13', '2011-02-25 22:22:35', '0000-00-00 00:00:00', '2012-08-12 10:36:23', '180.122.243.55');

-- --------------------------------------------------------

-- 
-- 表的结构 `layout`
-- 

CREATE TABLE `layout` (
  `id_layout` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `intro` text NOT NULL,
  `content` text NOT NULL,
  `openstat` int(1) NOT NULL default '1',
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_layout`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `layout`
-- 

INSERT INTO `layout` VALUES (1, 1, '页脚文字', '', '', '版权所有 &copy; 2011-2012 AIAIER 技术支持AIAIER品牌设计中心<br />\r\nCopyright &copy; 2011-2012 VIVAN SUPPORT BY AIAIER DESIGN CENTER', 0, 1);
INSERT INTO `layout` VALUES (2, 1, '页脚右侧小图标', '', '', '', 0, 2);

-- --------------------------------------------------------

-- 
-- 表的结构 `layoutpic`
-- 

CREATE TABLE `layoutpic` (
  `id_layoutpic` int(11) NOT NULL auto_increment,
  `id_layout` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_layoutpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- 导出表中的数据 `layoutpic`
-- 

INSERT INTO `layoutpic` VALUES (3, 1, 1, '', '', '', '1343286103.png', '', 1, 'PNG', '2012-07-26 15:01:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsdir`
-- 

CREATE TABLE `newsdir` (
  `id_newsdir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsdir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- 导出表中的数据 `newsdir`
-- 

INSERT INTO `newsdir` VALUES (1, 1, 'AIAIER品牌设计中心', '', 1, 0, 1, 1);
INSERT INTO `newsdir` VALUES (2, 1, '婚纱展示', '', 1, 1, 2, 2);
INSERT INTO `newsdir` VALUES (3, 1, '礼服展示', '', 1, 1, 2, 3);
INSERT INTO `newsdir` VALUES (4, 1, '婚纱写真', '', 1, 1, 2, 4);
INSERT INTO `newsdir` VALUES (5, 1, '爱爱尔新娘', '', 1, 1, 2, 5);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsinfo`
-- 

CREATE TABLE `newsinfo` (
  `id_newsinfo` int(11) NOT NULL auto_increment,
  `id_newsdir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `url` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

-- 
-- 导出表中的数据 `newsinfo`
-- 

INSERT INTO `newsinfo` VALUES (1, 2, 0, 1, '婚纱展示1', '', '', '', 1, 1, '', '2012-07-26', '2012-07-26 13:31:07', '2012-07-26 13:50:03', '0000-00-00 00:00:00', 0, 4);
INSERT INTO `newsinfo` VALUES (4, 2, 0, 1, '婚纱展示4', '', '', '', 1, 1, '', '2012-07-26', '2012-07-26 13:52:22', '2012-07-27 13:44:03', '0000-00-00 00:00:00', 0, 1);
INSERT INTO `newsinfo` VALUES (2, 2, 0, 1, '婚纱展示2', '', '', '', 1, 1, '', '2012-07-26', '2012-07-26 13:49:00', '2012-07-27 13:14:34', '0000-00-00 00:00:00', 0, 3);
INSERT INTO `newsinfo` VALUES (3, 2, 0, 1, '婚纱展示3', '', '', '', 1, 1, '', '2012-07-26', '2012-07-26 13:49:02', '2012-07-27 13:29:20', '0000-00-00 00:00:00', 0, 2);
INSERT INTO `newsinfo` VALUES (9, 3, 0, 1, '礼服展示9', '', '', '', 1, 1, '', '2012-07-27', '2012-07-27 14:32:50', '2012-07-27 14:32:59', '0000-00-00 00:00:00', 0, 9);
INSERT INTO `newsinfo` VALUES (8, 3, 0, 1, '礼服展示10', '', '', '', 1, 1, '', '2012-07-27', '2012-07-27 14:05:52', '2012-07-27 14:32:02', '0000-00-00 00:00:00', 0, 8);
INSERT INTO `newsinfo` VALUES (10, 3, 0, 1, '礼服展示8', '', '', '', 1, 1, '', '2012-07-27', '2012-07-27 14:33:21', '2012-07-27 14:33:33', '0000-00-00 00:00:00', 0, 10);
INSERT INTO `newsinfo` VALUES (11, 3, 0, 1, '礼服展示7', '', '', '', 1, 1, '', '2012-07-27', '2012-07-27 14:34:26', '2012-07-27 14:34:35', '0000-00-00 00:00:00', 0, 11);
INSERT INTO `newsinfo` VALUES (12, 3, 0, 1, '礼服展示6', '', '', '', 1, 1, '', '2012-07-27', '2012-07-27 14:34:54', '2012-07-27 14:35:02', '0000-00-00 00:00:00', 0, 12);
INSERT INTO `newsinfo` VALUES (13, 3, 0, 1, '礼服展示5', '', '', '', 1, 1, '', '2012-07-27', '2012-07-27 14:35:21', '2012-07-27 14:35:29', '0000-00-00 00:00:00', 0, 13);
INSERT INTO `newsinfo` VALUES (14, 3, 0, 1, '礼服展示4', '', '', '', 1, 1, '', '2012-07-27', '2012-07-27 14:35:52', '2012-07-27 14:36:01', '0000-00-00 00:00:00', 0, 14);
INSERT INTO `newsinfo` VALUES (15, 3, 0, 1, '礼服展示3', '', '', '', 1, 1, '', '2012-07-27', '2012-07-27 14:36:29', '2012-07-27 14:36:36', '0000-00-00 00:00:00', 0, 15);
INSERT INTO `newsinfo` VALUES (16, 3, 0, 1, '礼服展示2', '', '', '', 1, 1, '', '2012-07-27', '2012-07-27 14:37:02', '2012-07-27 14:37:10', '0000-00-00 00:00:00', 0, 16);
INSERT INTO `newsinfo` VALUES (17, 3, 0, 1, '礼服展示1', '', '', '', 1, 1, '', '2012-07-27', '2012-07-27 14:37:29', '2012-07-27 14:37:37', '0000-00-00 00:00:00', 0, 17);
INSERT INTO `newsinfo` VALUES (18, 4, 0, 1, ' 婚纱写真10', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 08:26:51', '2012-07-29 08:43:18', '0000-00-00 00:00:00', 0, 18);
INSERT INTO `newsinfo` VALUES (19, 4, 0, 1, ' 婚纱写真9', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 08:43:03', '2012-07-29 08:47:01', '0000-00-00 00:00:00', 0, 19);
INSERT INTO `newsinfo` VALUES (20, 4, 0, 1, '婚纱写真8', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 08:51:30', '2012-07-29 08:51:40', '0000-00-00 00:00:00', 0, 20);
INSERT INTO `newsinfo` VALUES (21, 4, 0, 1, '婚纱写真7', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 08:52:09', '2012-07-29 08:52:19', '0000-00-00 00:00:00', 0, 21);
INSERT INTO `newsinfo` VALUES (22, 4, 0, 1, '婚纱写真6', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 08:52:44', '2012-07-29 08:53:09', '0000-00-00 00:00:00', 0, 22);
INSERT INTO `newsinfo` VALUES (23, 4, 0, 1, '婚纱写真5', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 08:53:51', '2012-07-29 08:54:02', '0000-00-00 00:00:00', 0, 23);
INSERT INTO `newsinfo` VALUES (24, 4, 0, 1, '婚纱写真4', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 08:54:32', '2012-07-29 08:54:40', '0000-00-00 00:00:00', 0, 24);
INSERT INTO `newsinfo` VALUES (25, 4, 0, 1, '婚纱写真3', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 08:55:01', '2012-07-29 08:55:13', '0000-00-00 00:00:00', 0, 25);
INSERT INTO `newsinfo` VALUES (26, 4, 0, 1, '婚纱写真2', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 08:55:38', '2012-07-29 08:56:03', '0000-00-00 00:00:00', 0, 26);
INSERT INTO `newsinfo` VALUES (27, 4, 0, 1, '婚纱写真1', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 08:57:01', '2012-07-29 08:57:09', '0000-00-00 00:00:00', 0, 27);
INSERT INTO `newsinfo` VALUES (28, 5, 0, 1, '爱爱尔新娘10', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 09:23:07', '2012-07-29 09:23:24', '0000-00-00 00:00:00', 0, 28);
INSERT INTO `newsinfo` VALUES (29, 5, 0, 1, '爱爱尔新娘9', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 09:23:50', '2012-07-29 09:23:59', '0000-00-00 00:00:00', 0, 29);
INSERT INTO `newsinfo` VALUES (30, 5, 0, 1, '爱爱尔新娘8', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 09:24:20', '2012-07-29 09:24:29', '0000-00-00 00:00:00', 0, 30);
INSERT INTO `newsinfo` VALUES (31, 5, 0, 1, '爱爱尔新娘7', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 09:24:50', '2012-07-29 09:24:58', '0000-00-00 00:00:00', 0, 31);
INSERT INTO `newsinfo` VALUES (32, 5, 0, 1, '爱爱尔新娘6', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 09:25:17', '2012-07-29 09:25:27', '0000-00-00 00:00:00', 0, 32);
INSERT INTO `newsinfo` VALUES (33, 5, 0, 1, '爱爱尔新娘5', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 09:25:49', '2012-07-29 09:25:59', '0000-00-00 00:00:00', 0, 33);
INSERT INTO `newsinfo` VALUES (34, 5, 0, 1, '爱爱尔新娘4', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 09:26:22', '2012-07-29 09:26:31', '0000-00-00 00:00:00', 0, 34);
INSERT INTO `newsinfo` VALUES (35, 5, 0, 1, '爱爱尔新娘3', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 09:27:24', '2012-07-29 09:27:33', '0000-00-00 00:00:00', 0, 35);
INSERT INTO `newsinfo` VALUES (36, 5, 0, 1, '爱爱尔新娘2', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 09:27:51', '2012-07-29 09:28:00', '0000-00-00 00:00:00', 0, 36);
INSERT INTO `newsinfo` VALUES (37, 5, 0, 1, '爱爱尔新娘1', '', '', '', 1, 1, '', '2012-07-29', '2012-07-29 09:28:19', '2012-07-29 09:28:37', '0000-00-00 00:00:00', 0, 37);

-- --------------------------------------------------------

-- 
-- 表的结构 `newspic`
-- 

CREATE TABLE `newspic` (
  `id_newspic` int(11) NOT NULL auto_increment,
  `id_newsinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newspic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

-- 
-- 导出表中的数据 `newspic`
-- 

INSERT INTO `newspic` VALUES (1, 1, 1, '', '', '', '1343366086.jpg', '', 1, 'JPG', '2012-07-26 13:31:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (3, 1, 1, '', '', '', '1343366099.jpg', '', 1, 'JPG', '2012-07-26 13:50:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (4, 2, 1, '', '', '', '1343366056.jpg', '', 1, 'JPG', '2012-07-27 13:14:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (5, 2, 1, '', '', '', '1343366064.jpg', '', 1, 'JPG', '2012-07-27 13:14:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (6, 3, 1, '', '', '', '1343366164.jpg', '', 1, 'JPG', '2012-07-27 13:16:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (7, 3, 1, '', '', '', '1343366175.jpg', '', 1, 'JPG', '2012-07-27 13:16:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (12, 4, 1, '', '', '', '1343367852.jpg', '', 1, 'JPG', '2012-07-27 13:44:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (13, 4, 1, '', '', '', '1343367862.jpg', '', 1, 'JPG', '2012-07-27 13:44:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (16, 8, 1, '', '', '', '1343370747.jpg', '', 1, 'JPG', '2012-07-27 14:32:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (17, 8, 1, '', '', '', '1343370757.jpg', '', 1, 'JPG', '2012-07-27 14:32:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (18, 9, 1, '', '', '', '1343370787.jpg', '', 1, 'JPG', '2012-07-27 14:33:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (19, 9, 1, '', '', '', '1343370794.jpg', '', 1, 'JPG', '2012-07-27 14:33:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (20, 10, 1, '', '', '', '1343370825.jpg', '', 1, 'JPG', '2012-07-27 14:33:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (21, 10, 1, '', '', '', '1343370834.jpg', '', 1, 'JPG', '2012-07-27 14:33:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (22, 11, 1, '', '', '', '1343370882.jpg', '', 1, 'JPG', '2012-07-27 14:34:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (23, 11, 1, '', '', '', '1343370890.jpg', '', 1, 'JPG', '2012-07-27 14:34:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (24, 12, 1, '', '', '', '1343370909.jpg', '', 1, 'JPG', '2012-07-27 14:35:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (25, 12, 1, '', '', '', '1343370916.jpg', '', 1, 'JPG', '2012-07-27 14:35:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (26, 13, 1, '', '', '', '1343370939.jpg', '', 1, 'JPG', '2012-07-27 14:35:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (27, 13, 1, '', '', '', '1343370948.jpg', '', 1, 'JPG', '2012-07-27 14:35:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (28, 14, 1, '', '', '', '1343370969.jpg', '', 1, 'JPG', '2012-07-27 14:36:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (29, 14, 1, '', '', '', '1343370977.jpg', '', 1, 'JPG', '2012-07-27 14:36:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (30, 15, 1, '', '', '', '1343371005.jpg', '', 1, 'JPG', '2012-07-27 14:36:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (31, 15, 1, '', '', '', '1343371014.jpg', '', 1, 'JPG', '2012-07-27 14:36:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (32, 16, 1, '', '', '', '1343371037.jpg', '', 1, 'JPG', '2012-07-27 14:37:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (33, 16, 1, '', '', '', '1343371044.jpg', '', 1, 'JPG', '2012-07-27 14:37:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (34, 17, 1, '', '', '', '1343371063.jpg', '', 1, 'JPG', '2012-07-27 14:37:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (35, 17, 1, '', '', '', '1343371070.jpg', '', 1, 'JPG', '2012-07-27 14:37:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (36, 18, 1, '', '', '', '1343522475.jpg', '', 1, 'JPG', '2012-07-29 08:41:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (37, 18, 1, '', '', '', '1343522483.jpg', '', 1, 'JPG', '2012-07-29 08:41:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (38, 19, 1, '', '', '', '1343522623.jpg', '', 1, 'JPG', '2012-07-29 08:43:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (39, 19, 1, '', '', '', '1343522631.jpg', '', 1, 'JPG', '2012-07-29 08:43:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (40, 20, 1, '', '', '', '1343523113.jpg', '', 1, 'JPG', '2012-07-29 08:51:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (41, 20, 1, '', '', '', '1343523122.jpg', '', 1, 'JPG', '2012-07-29 08:52:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (42, 21, 1, '', '', '', '1343523151.jpg', '', 1, 'JPG', '2012-07-29 08:52:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (43, 21, 1, '', '', '', '1343523158.jpg', '', 1, 'JPG', '2012-07-29 08:52:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (44, 22, 1, '', '', '', '1343523200.jpg', '', 1, 'JPG', '2012-07-29 08:53:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (45, 22, 1, '', '', '', '1343523207.jpg', '', 1, 'JPG', '2012-07-29 08:53:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (46, 23, 1, '', '', '', '1343523248.jpg', '', 1, 'JPG', '2012-07-29 08:54:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (47, 23, 1, '', '', '', '1343523259.jpg', '', 1, 'JPG', '2012-07-29 08:54:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (48, 24, 1, '', '', '', '1343523287.jpg', '', 1, 'JPG', '2012-07-29 08:54:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (49, 24, 1, '', '', '', '1343523295.jpg', '', 1, 'JPG', '2012-07-29 08:54:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (50, 25, 1, '', '', '', '1343523322.jpg', '', 1, 'JPG', '2012-07-29 08:55:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (51, 25, 1, '', '', '', '1343523332.jpg', '', 1, 'JPG', '2012-07-29 08:55:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (52, 26, 1, '', '', '', '1343523351.jpg', '', 1, 'JPG', '2012-07-29 08:55:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (53, 26, 1, '', '', '', '1343523370.jpg', '', 1, 'JPG', '2012-07-29 08:56:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (54, 27, 1, '', '', '', '1343523437.jpg', '', 1, 'JPG', '2012-07-29 08:57:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (55, 27, 1, '', '', '', '1343523444.jpg', '', 1, 'JPG', '2012-07-29 08:57:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (56, 28, 1, '', '', '', '1343525018.jpg', '', 1, 'JPG', '2012-07-29 09:23:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (57, 28, 1, '', '', '', '1343525026.jpg', '', 1, 'JPG', '2012-07-29 09:23:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (58, 29, 1, '', '', '', '1343525046.jpg', '', 1, 'JPG', '2012-07-29 09:24:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (59, 29, 1, '', '', '', '1343525055.jpg', '', 1, 'JPG', '2012-07-29 09:24:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (60, 30, 1, '', '', '', '1343525076.jpg', '', 1, 'JPG', '2012-07-29 09:24:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (61, 30, 1, '', '', '', '1343525083.jpg', '', 1, 'JPG', '2012-07-29 09:24:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (62, 31, 1, '', '', '', '1343525105.jpg', '', 1, 'JPG', '2012-07-29 09:25:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (63, 31, 1, '', '', '', '1343525113.jpg', '', 1, 'JPG', '2012-07-29 09:25:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (64, 32, 1, '', '', '', '1343525137.jpg', '', 1, 'JPG', '2012-07-29 09:25:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (65, 32, 1, '', '', '', '1343525145.jpg', '', 1, 'JPG', '2012-07-29 09:25:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (66, 33, 1, '', '', '', '1343525167.jpg', '', 1, 'JPG', '2012-07-29 09:26:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (67, 33, 1, '', '', '', '1343525176.jpg', '', 1, 'JPG', '2012-07-29 09:26:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (68, 34, 1, '', '', '', '1343525200.jpg', '', 1, 'JPG', '2012-07-29 09:26:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (69, 34, 1, '', '', '', '1343525217.jpg', '', 1, 'JPG', '2012-07-29 09:26:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (70, 35, 1, '', '', '', '1343525259.jpg', '', 1, 'JPG', '2012-07-29 09:27:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (71, 35, 1, '', '', '', '1343525266.jpg', '', 1, 'JPG', '2012-07-29 09:27:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (72, 36, 1, '', '', '', '1343525286.jpg', '', 1, 'JPG', '2012-07-29 09:28:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (73, 36, 1, '', '', '', '1343525293.jpg', '', 1, 'JPG', '2012-07-29 09:28:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (74, 37, 1, '', '', '', '1343525324.jpg', '', 1, 'JPG', '2012-07-29 09:28:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (75, 37, 1, '', '', '', '1343525331.jpg', '', 1, 'JPG', '2012-07-29 09:28:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `pageset`
-- 

CREATE TABLE `pageset` (
  `id_pageset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `pagetitle` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id_pageset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- 导出表中的数据 `pageset`
-- 

INSERT INTO `pageset` VALUES (1, 1, '租赁定制', '', '', '', '', '<img alt="" src="/upload/other/images/20120729_010819.jpg" style="width: 805px; height: 319px; " />');
INSERT INTO `pageset` VALUES (2, 1, '最新活动', '', '', '', '', '<img alt="" src="/upload/other/images/20120729_011151.jpg" style="width: 805px; height: 319px; " />');
INSERT INTO `pageset` VALUES (3, 1, '关于我们', '', '', '', '', '');
INSERT INTO `pageset` VALUES (4, 1, '联系方式', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `pagesetpic`
-- 

CREATE TABLE `pagesetpic` (
  `id_pagesetpic` int(11) NOT NULL auto_increment,
  `id_pageset` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_pagesetpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- 导出表中的数据 `pagesetpic`
-- 

INSERT INTO `pagesetpic` VALUES (1, 3, 1, '', '', '', '1343525863.jpg', '', 1, 'JPG', '2012-07-29 09:37:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (2, 3, 1, '', '', '', '1343525874.jpg', '', 1, 'JPG', '2012-07-29 09:37:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (3, 3, 1, '', '', '', '1343525881.jpg', '', 1, 'JPG', '2012-07-29 09:38:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (4, 4, 1, '', '', '', '1343526409.jpg', '', 1, 'JPG', '2012-07-29 09:46:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy1`
-- 

CREATE TABLE `pavy1` (
  `id_pavy1` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `product_visit` int(1) NOT NULL default '0',
  `store_visit` int(1) NOT NULL default '0',
  `news_visit` int(1) NOT NULL default '0',
  `hr_visit` int(1) NOT NULL default '0',
  `pavy_visit` int(1) NOT NULL default '0',
  `data_visit` int(1) NOT NULL default '0',
  `siteset_visit` int(1) NOT NULL default '0',
  `level` int(1) NOT NULL default '0',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pavy1`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- 导出表中的数据 `pavy1`
-- 

INSERT INTO `pavy1` VALUES (28, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy2`
-- 

CREATE TABLE `pavy2` (
  `id_pvay2` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `id_backmenu` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `browseprem` int(1) NOT NULL default '0',
  `addprem` int(1) NOT NULL default '0',
  `editprem` int(1) NOT NULL default '0',
  `deleprem` int(1) NOT NULL default '0',
  `display` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '0',
  `state` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pvay2`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=265 ;

-- 
-- 导出表中的数据 `pavy2`
-- 

INSERT INTO `pavy2` VALUES (246, 1, 46, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (245, 1, 41, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (244, 1, 39, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (243, 1, 22, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (242, 1, 21, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (241, 1, 20, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (240, 1, 19, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (239, 1, 18, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (238, 1, 17, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (237, 1, 16, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (236, 1, 15, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (235, 1, 47, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (234, 1, 8, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (233, 1, 9, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (263, 1, 49, 1, 0, 0, 0, 0, 1, 0, 1, '2012-02-26 20:27:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (247, 1, 48, 1, 1, 1, 1, 1, 1, 0, 1, '2011-03-09 16:42:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (264, 1, 50, 1, 1, 1, 1, 1, 1, 0, 1, '2012-06-15 10:47:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `post`
-- 

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL auto_increment,
  `post` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `post`
-- 

INSERT INTO `post` VALUES (1, '普通员工', 1);
INSERT INTO `post` VALUES (2, '物料收发员', 1);
INSERT INTO `post` VALUES (3, 'IQC', 1);
INSERT INTO `post` VALUES (4, '仓库主管', 1);
INSERT INTO `post` VALUES (5, '采购主管', 1);
INSERT INTO `post` VALUES (6, '销售主管', 1);
INSERT INTO `post` VALUES (7, '副总经理', 1);
INSERT INTO `post` VALUES (8, '总经理', 1);
INSERT INTO `post` VALUES (9, '网站管理员', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `productdir`
-- 

CREATE TABLE `productdir` (
  `id_proddir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL,
  `name` varchar(50) NOT NULL default '1',
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `dirurl` varchar(50) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_proddir`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `productdir`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `productinfo`
-- 

CREATE TABLE `productinfo` (
  `id_prodinfo` int(11) NOT NULL auto_increment,
  `id_proddir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodinfo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `productinfo`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `productpic`
-- 

CREATE TABLE `productpic` (
  `id_prodpic` int(11) NOT NULL auto_increment,
  `id_prodinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodpic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `productpic`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `siteset`
-- 

CREATE TABLE `siteset` (
  `id_siteset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `otherheader` text NOT NULL,
  `iscopy` int(1) NOT NULL default '0',
  `rmailbox` varchar(50) NOT NULL,
  `smailbox` varchar(50) NOT NULL,
  `smailboxpass` varchar(50) NOT NULL,
  `icp` varchar(25) NOT NULL,
  `mapcode` text NOT NULL,
  `statistics` text NOT NULL,
  `isstyle` varchar(8) NOT NULL,
  PRIMARY KEY  (`id_siteset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `siteset`
-- 

INSERT INTO `siteset` VALUES (1, 1, 'AIAIER品牌设计中心', 'AIAIER品牌设计中心', 'AIAIER品牌设计中心', '', 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `title`
-- 

CREATE TABLE `title` (
  `id_title` int(11) NOT NULL auto_increment,
  `title` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 导出表中的数据 `title`
-- 

INSERT INTO `title` VALUES (15, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `webmenu`
-- 

CREATE TABLE `webmenu` (
  `id_webmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `url` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_webmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- 导出表中的数据 `webmenu`
-- 

INSERT INTO `webmenu` VALUES (1, 1, '网站首页----HOME', '/', 1, 0, 1, 8);
INSERT INTO `webmenu` VALUES (2, 1, '关于我们----About us', '/about/aboutus.php', 1, 0, 1, 7);
INSERT INTO `webmenu` VALUES (3, 1, '产品中心----Products', '/product/products.php', 1, 0, 1, 6);
INSERT INTO `webmenu` VALUES (4, 1, '新闻中心----News', '/news/news.php', 1, 0, 1, 5);
INSERT INTO `webmenu` VALUES (5, 1, '联系我们----Contact us', '/contactus/contactus.php', 1, 0, 1, 4);
INSERT INTO `webmenu` VALUES (11, 1, '公司介绍----Introduction', '/about/intro.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (12, 1, '关于我们----About us', '/about/aboutus.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (13, 1, '总经理致辞----CEO''s Message', '/about/ceomessage.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (14, 1, '产品中心----Products', '/product/products.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (15, 1, '资料下载----PDF download', '/product/productpdf.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (16, 1, '我们的工厂----Our factory', '/product/ourfactory.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (17, 1, '公司新闻----Company news', '/news/companynews.php', 1, 4, 2, 0);
INSERT INTO `webmenu` VALUES (18, 1, '产品新闻----Product news', '/news/productnews.php', 1, 4, 2, 0);
INSERT INTO `webmenu` VALUES (19, 1, '加入我们----Join us', '/news/joinus.php', 1, 4, 2, 0);
