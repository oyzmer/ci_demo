/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.51b-community-nt-log : Database - bocmsdemo
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `boc_acount` */

DROP TABLE IF EXISTS `boc_acount`;

CREATE TABLE `boc_acount` (
  `id` int(6) NOT NULL auto_increment,
  `email` varchar(100) NOT NULL COMMENT 'Mail作为帐号',
  `uname` varchar(50) NOT NULL COMMENT '帐号',
  `nickname` varchar(50) NOT NULL COMMENT '显示名称',
  `pwd` varchar(64) NOT NULL COMMENT '密码',
  `tel` varchar(30) default NULL COMMENT '电话',
  `phone` varchar(30) default NULL COMMENT '手机',
  `addr` varchar(100) default NULL COMMENT '地址',
  `photo` varchar(100) default NULL COMMENT '头像',
  `thumb` varchar(100) default NULL COMMENT '缩略图',
  `status` int(1) NOT NULL default '1' COMMENT '用户状态，0 禁用',
  `login_today` int(11) NOT NULL COMMENT '今日登录次数',
  `pwd_errors` int(1) NOT NULL default '0' COMMENT '密码错误次数',
  `login_ip` varchar(25) NOT NULL COMMENT '最后登录的IP',
  `reg_time` int(11) NOT NULL COMMENT '添加时间',
  `login_time` int(11) NOT NULL COMMENT '最后一次登录时间',
  `ga` varchar(20) NOT NULL COMMENT 'GA 两部验证密钥 开启与否',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='前端会员帐号';

/*Data for the table `boc_acount` */

LOCK TABLES `boc_acount` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_article` */

DROP TABLE IF EXISTS `boc_article`;

CREATE TABLE `boc_article` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL default '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) default '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL default '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL default '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL default '0' COMMENT '默认分类',
  `type_id` int(4) default NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext,
  `intro` varchar(500) default NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) default NULL COMMENT '发布/修改时间',
  `expiretime` int(10) default NULL COMMENT '公告过期时间',
  `status` int(1) NOT NULL default '0' COMMENT '0:1状态,1 发布，0 草稿',
  `author` varchar(50) default NULL COMMENT '消息作者',
  `author_url` tinytext COMMENT '作者链接',
  `source` varchar(50) default NULL COMMENT '消息来源',
  `source_url` tinytext COMMENT '来源链接',
  `click` int(11) NOT NULL default '0' COMMENT '浏览次数',
  `recommend` int(1) NOT NULL default '0' COMMENT '0:1推荐到分类门户的页面显示',
  `homepage` int(1) NOT NULL default '0' COMMENT '0:1推荐到首页显示',
  `recommend_photo` int(1) NOT NULL default '0' COMMENT '0:1作为分类栏目的跑马灯图片新闻',
  `homepage_photo` int(1) NOT NULL default '0' COMMENT '0:1作为首页的跑马灯图片新闻',
  `color` int(1) NOT NULL default '0' COMMENT '突显状态/颜色',
  `photo` tinytext COMMENT '相关图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='信息表';

/*Data for the table `boc_article` */

LOCK TABLES `boc_article` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_article_tag` */

DROP TABLE IF EXISTS `boc_article_tag`;

CREATE TABLE `boc_article_tag` (
  `id` int(11) NOT NULL auto_increment,
  `tag` varchar(30) NOT NULL COMMENT '标签',
  `record` int(11) default NULL COMMENT '使用的 article id',
  `count` int(11) default NULL COMMENT '计数',
  PRIMARY KEY  (`id`),
  KEY `record_index` (`id`,`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签表';

/*Data for the table `boc_article_tag` */

LOCK TABLES `boc_article_tag` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_banner` */

DROP TABLE IF EXISTS `boc_banner`;

CREATE TABLE `boc_banner` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL default '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) default '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL default '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL default '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL default '0' COMMENT '默认分类',
  `type_id` int(4) default NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` text COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) default NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) default NULL COMMENT '发布/修改时间',
  `expiretime` int(10) default NULL COMMENT '公告过期时间',
  `status` int(1) NOT NULL default '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL default '0' COMMENT '浏览次数',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='banner表';

/*Data for the table `boc_banner` */

LOCK TABLES `boc_banner` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_coltypes` */

DROP TABLE IF EXISTS `boc_coltypes`;

CREATE TABLE `boc_coltypes` (
  `id` int(11) NOT NULL auto_increment COMMENT '标识',
  `sort_id` int(11) NOT NULL COMMENT '排序id',
  `fid` int(11) NOT NULL COMMENT '父类型',
  `depth` int(3) NOT NULL COMMENT '深度',
  `cid` int(4) NOT NULL default '0' COMMENT '栏目ID',
  `name` varchar(30) NOT NULL default 'ctype' COMMENT '表单名称，分类标志，单个栏目多个类型时',
  `title` varchar(30) NOT NULL COMMENT '标题类型',
  `identify` varchar(30) NOT NULL COMMENT '标记',
  `photo` varchar(30) NOT NULL COMMENT '图片',
  `thumb` varchar(200) NOT NULL COMMENT '缩略图',
  `show` int(1) NOT NULL default '1' COMMENT '显示',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `boc_coltypes` */

LOCK TABLES `boc_coltypes` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_columns` */

DROP TABLE IF EXISTS `boc_columns`;

CREATE TABLE `boc_columns` (
  `id` int(4) NOT NULL auto_increment COMMENT '标识',
  `sort_id` int(4) default NULL COMMENT '排序',
  `parent_id` int(4) NOT NULL default '0' COMMENT '父标识(col id)',
  `depth` int(4) NOT NULL default '1' COMMENT '深度',
  `identify` tinytext NOT NULL COMMENT 'url唯一标记(word or link)',
  `path` tinytext NOT NULL COMMENT 'urlpath',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext COMMENT '优化标题',
  `tags` tinytext COMMENT '标签',
  `intro` text COMMENT '简介',
  `mid` int(2) NOT NULL COMMENT '模型标识(Model id)',
  `temp_index` varchar(50) default NULL COMMENT '前台模板栏目index',
  `temp_show` varchar(50) default NULL COMMENT '内容展示模板show',
  `status` int(1) NOT NULL default '1' COMMENT '0删除 1正常',
  `show` int(1) NOT NULL default '1' COMMENT '0隐藏 1正常',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='栏目';

/*Data for the table `boc_columns` */

LOCK TABLES `boc_columns` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_configs` */

DROP TABLE IF EXISTS `boc_configs`;

CREATE TABLE `boc_configs` (
  `id` int(11) NOT NULL auto_increment,
  `sort_id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL COMMENT '分类',
  `key` varchar(30) NOT NULL COMMENT '键值',
  `value` tinytext NOT NULL COMMENT '值',
  `label` varchar(100) NOT NULL COMMENT '标题',
  `intor` tinytext COMMENT '简介',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='配置';

/*Data for the table `boc_configs` */

LOCK TABLES `boc_configs` WRITE;

insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (1,1,'adminer','title_suffix','后台标题后缀','标题后缀','后端标题栏显示内容的后缀.');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (2,9,'site','copyright','Copyright 2014','CopyRight','站点版权内容!');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (3,8,'site','email','mail@mail.com','联系邮箱','网站联系人');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (4,4,'site','title_suffix','公司名称|品牌名称','公司名称|品牌名称','前台站点标题的后缀优化');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (5,5,'site','title_seo','','首页标题[Title]','网站首页优化标题');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (6,6,'site','tags','关键词','关键词[Keywords]','网站首页关键词设定，使用`,`来间隔标签.');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (7,7,'site','intro','简介','站点描述[Description]','网站首页描述');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (8,10,'site','icp','ICP','ICP编号','');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (9,9,'adminer','rember_hours','72','记住登录','记住登录的时间，默认单位为小时。');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (15,10,'adminer','nopurview','login,welcome,manager,ajax','权限过滤','');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (10,11,'adminer','forbidden_hours','2','登录禁用','账户登录错误超过6次时的禁用时间[小时]。');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (11,12,'email','stmp','smtp.126.com','STMP服务器','');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (12,13,'email','account','erasin@126.com','帐号','发送帐号');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (13,14,'email','pwd','lastway','密码','');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (14,15,'email','port','25','端口','STMP端口[25]');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (22,12,'email','name','电邮名称','电邮名称','邮件地址显示的名称');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (16,3,'site','title','前端标题 ss','网站标题','用于保存前台站点的默认首页标题');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (17,1,'upload','upload_size','120m','上传大小限制','默认上传权限大小');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (18,2,'upload','inline_file_types','gif|jpe?g|png|doc?|mp?|zip|pdf|flv','上传后缀过滤','文件类型的上传');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (19,3,'upload','memory_limit','120m','内存限制','');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (20,4,'upload','max_file_uploads','10','上传文件个数','个数限制');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (21,5,'upload','scale_width','0','上传图片默认宽度','主要为编辑器上传图片设定');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (23,7,'upload','watermark','0','图片水印','图片使用背景为透明的PNG格式');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (24,0,'html','html','0','开启静态','是否使用静态生成');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (25,0,'html','token','','验证密码','对生成页面操作进行验证,用于第三方触发');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (26,0,'html','urlmodel','0','路由模式','0:ID;1:标题,2:拼音');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (27,6,'upload','scale_height','0','上传图片高度','主要为编辑器上传图片压缩高度');

UNLOCK TABLES;

/*Table structure for table `boc_feedback` */

DROP TABLE IF EXISTS `boc_feedback`;

CREATE TABLE `boc_feedback` (
  `id` int(11) NOT NULL auto_increment,
  `sort_id` int(11) default NULL COMMENT '排序编号',
  `audit` int(1) NOT NULL default '0' COMMENT '0:1审核',
  `type_id` int(11) default NULL COMMENT '分类',
  `title` varchar(100) default NULL COMMENT '标题',
  `content` text COMMENT '详细内容',
  `answer` text COMMENT '回答问题',
  `username` varchar(50) default NULL COMMENT '用户名',
  `tel` varchar(50) default NULL COMMENT '电话',
  `fax` varchar(50) character set utf8 collate utf8_estonian_ci default NULL COMMENT '传真',
  `email` varchar(100) default NULL COMMENT '邮箱',
  `addr` varchar(100) default NULL COMMENT '地址',
  `solve` int(1) default '0' COMMENT '解决',
  `show` int(1) default NULL COMMENT '是否显示',
  `timeline` int(11) default NULL COMMENT '发布时间',
  `timeline_answer` int(11) default NULL COMMENT '回复时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='反馈';

/*Data for the table `boc_feedback` */

LOCK TABLES `boc_feedback` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_files` */

DROP TABLE IF EXISTS `boc_files`;

CREATE TABLE `boc_files` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL default '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) default '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL default '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL default '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL default '0' COMMENT '默认分类',
  `type_id` int(4) default NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` tinytext NOT NULL COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) default NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) default NULL COMMENT '发布/修改时间',
  `status` int(1) NOT NULL default '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL default '0' COMMENT '浏览次数',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `photoinfo` tinytext COMMENT '详细图片',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='附件表';

/*Data for the table `boc_files` */

LOCK TABLES `boc_files` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_gallery` */

DROP TABLE IF EXISTS `boc_gallery`;

CREATE TABLE `boc_gallery` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL default '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) default '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL default '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL default '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL default '0' COMMENT '默认分类',
  `type_id` int(4) default NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext,
  `intro` varchar(500) default NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) default NULL COMMENT '发布/修改时间',
  `status` int(1) NOT NULL default '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL default '0' COMMENT '浏览次数',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `photoinfo` tinytext COMMENT '详细图片',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='期刊表';

/*Data for the table `boc_gallery` */

LOCK TABLES `boc_gallery` WRITE;



UNLOCK TABLES;

/*Table structure for table `boc_honor` */

DROP TABLE IF EXISTS `boc_honor`;

CREATE TABLE `boc_honor` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL default '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) default '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL default '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL default '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL default '0' COMMENT '默认分类',
  `type_id` int(4) default NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` tinytext NOT NULL COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) default NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) default NULL COMMENT '发布/修改时间',
  `status` int(1) NOT NULL default '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL default '0' COMMENT '浏览次数',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `photoinfo` tinytext COMMENT '详细图片',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='企业荣誉表';

/*Data for the table `boc_honor` */

LOCK TABLES `boc_honor` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_links` */

DROP TABLE IF EXISTS `boc_links`;

CREATE TABLE `boc_links` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL default '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) default '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL default '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL default '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL default '0' COMMENT '默认分类',
  `type_id` int(4) default NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` tinytext NOT NULL COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) default NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) default NULL COMMENT '发布/修改时间',
  `status` int(1) NOT NULL default '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL default '0' COMMENT '浏览次数',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `photoinfo` tinytext COMMENT '详细图片',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

/*Data for the table `boc_links` */

LOCK TABLES `boc_links` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_lists` */

DROP TABLE IF EXISTS `boc_lists`;

CREATE TABLE `boc_lists` (
  `id` int(11) NOT NULL auto_increment COMMENT '标识',
  `cid` int(4) NOT NULL COMMENT '栏目 id',
  `ccid` int(11) NOT NULL default '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) NOT NULL COMMENT '排序',
  `audit` int(1) NOT NULL default '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL default '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL default '0' COMMENT '默认分类',
  `title` tinytext COMMENT '小标题',
  `content` text COMMENT '内容',
  `timeline` int(11) NOT NULL COMMENT '时间线',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='小列表';

/*Data for the table `boc_lists` */

LOCK TABLES `boc_lists` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_log` */

DROP TABLE IF EXISTS `boc_log`;

CREATE TABLE `boc_log` (
  `id` int(11) NOT NULL auto_increment,
  `controller` varchar(50) NOT NULL,
  `url` mediumtext NOT NULL COMMENT '控制器',
  `category` varchar(50) NOT NULL default '' COMMENT '级别: 1 view,2update,add,3,del',
  `message` tinytext NOT NULL COMMENT '备注',
  `mid` int(6) NOT NULL COMMENT '操作人',
  `ip` varchar(20) NOT NULL COMMENT 'IP地址',
  `timeline` int(11) NOT NULL COMMENT '时间线',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='操作日志';

/*Data for the table `boc_log` */

LOCK TABLES `boc_log` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_manager` */

DROP TABLE IF EXISTS `boc_manager`;

CREATE TABLE `boc_manager` (
  `id` int(6) NOT NULL auto_increment,
  `uname` varchar(50) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) default NULL COMMENT '显示名称',
  `pwd` varchar(64) NOT NULL COMMENT '密码',
  `gid` varchar(64) NOT NULL default '2' COMMENT '用户组ID',
  `email` varchar(100) NOT NULL COMMENT 'email',
  `tel` varchar(30) default NULL COMMENT '电话',
  `phone` varchar(30) default NULL COMMENT '手机',
  `addr` varchar(100) default NULL COMMENT '地址',
  `status` int(1) NOT NULL default '1' COMMENT '用户状态，0 禁用',
  `login_today` int(11) default NULL COMMENT '今日登录次数',
  `pwd_errors` int(1) NOT NULL default '0' COMMENT '密码错误次数',
  `login_ip` varchar(25) default NULL COMMENT '最后登录的IP',
  `reg_time` int(11) default NULL COMMENT '添加时间',
  `login_time` int(11) default NULL COMMENT '最后一次登录时间',
  `ga` int(1) default '0' COMMENT 'GA 两部验证密钥 开启与否',
  `getpass` int(11) default NULL COMMENT '获取密码时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后端管理帐号';

/*Data for the table `boc_manager` */

LOCK TABLES `boc_manager` WRITE;

insert  into `boc_manager`(`id`,`uname`,`nickname`,`pwd`,`gid`,`email`,`tel`,`phone`,`addr`,`status`,`login_today`,`pwd_errors`,`login_ip`,`reg_time`,`login_time`,`ga`,`getpass`) values (1,'bocadmin','超级用户','11372a6e7343831f12352cfd049ff59c','1','customservice@bocweb.cn','','','',1,0,0,'127.0.0.1',1376471117,1438305932,1,1389317880);

UNLOCK TABLES;

/*Table structure for table `boc_manager_group` */

DROP TABLE IF EXISTS `boc_manager_group`;

CREATE TABLE `boc_manager_group` (
  `id` int(2) NOT NULL auto_increment,
  `purview` text NOT NULL COMMENT '权限id序列',
  `title` varchar(50) NOT NULL COMMENT '用户组名称',
  `title_en` varchar(50) NOT NULL COMMENT '用户组名称en',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='权限组';

/*Data for the table `boc_manager_group` */

LOCK TABLES `boc_manager_group` WRITE;

insert  into `boc_manager_group`(`id`,`purview`,`title`,`title_en`) values (2,'7afb566e83d3dca2d8a47c8cc29e7e36,ff2fa0336fe8fbc6a51c4707aa47c3e3,a155574e57e9a8a0d0c6ecb1c511da68,fddc215a132fa97ca3c193f1cae5cf9f,c54e594684ebf2862c75ba29d83f71be,2ebbbd65b4e2fc52a3ce44de2160e8d2,12fb6543af2e5541b0fc4f8fdd950be0,8d2159c1e0cf70473e66866eb026e80f,c166381208e23d3f4d65dec1231ccf76,a87d77b65f6d1e8380b3d05290a994d0,430f99bc176c67ec705091d6a5da07d4,d230f6a24270b02237beb82a23e2742f,54b064097df1ab924354f87efcdc4ea0,2338d4221db8f9c52bcc2d64ee436b23,70fc54e47310e38ef19160c17ecd91af,ad92c9d2ad1d512ea852e8ae88f762ff,d0101b9aa277c72e45d078dd8369fc65','用户','users');
insert  into `boc_manager_group`(`id`,`purview`,`title`,`title_en`) values (3,'4115dd2b6affc9e3626c695e398f335a,7afb566e83d3dca2d8a47c8cc29e7e36,ff2fa0336fe8fbc6a51c4707aa47c3e3,bfc0ef3829e8d84dfc8d31e5edc26d0f,a155574e57e9a8a0d0c6ecb1c511da68,fddc215a132fa97ca3c193f1cae5cf9f,7d5101dc315695e13463ffdf708b5865,a2756c433a39a2319e61bcd68a758265,5341fd0c5de128ab7979a7414b2e586a,e537f9c0308cbfeb6ee40b4e4c344947,35845fea21044129353364ba21f144a0,efdb91a0f150375b423d8361d254241f,a3c8c3d444880bda2a553b8f3eb6695b,4141c0f8e6a977cd7048cd9d751af350,bbff3957029793ef5163df61fbe018a5,dbc10e6bbc54c0ea6f49e604839f5526,048c50d364a23dfcec0a87aa49e19eb8,c54e594684ebf2862c75ba29d83f71be,3345e3e48188396dc21242fb119ba6b1,a93b06daaedb7fd811ab57131fabc630,af47d02385ccc820bce012061718aff8,78b231e4efafea1d14789b0ad8941cf2,bef23131580195c4a411d4222ef68c9f,214ea1a7fecff45a8447cea07943d068','访客','guest');
insert  into `boc_manager_group`(`id`,`purview`,`title`,`title_en`) values (1,'a634cc19664a4f86577556784da60940,7afb566e83d3dca2d8a47c8cc29e7e36,ff2fa0336fe8fbc6a51c4707aa47c3e3,bfc0ef3829e8d84dfc8d31e5edc26d0f,a155574e57e9a8a0d0c6ecb1c511da68,fddc215a132fa97ca3c193f1cae5cf9f,52b7869014f743535798ba509432feb1,a2756c433a39a2319e61bcd68a758265,5341fd0c5de128ab7979a7414b2e586a,e537f9c0308cbfeb6ee40b4e4c344947,c2bc4d65c38311ab74b9dc39680d82df,efdb91a0f150375b423d8361d254241f,a3c8c3d444880bda2a553b8f3eb6695b,4141c0f8e6a977cd7048cd9d751af350,3045880458ee8b8734bf6b3307acd0d5,dbc10e6bbc54c0ea6f49e604839f5526,048c50d364a23dfcec0a87aa49e19eb8,c54e594684ebf2862c75ba29d83f71be,3345e3e48188396dc21242fb119ba6b1,2ebbbd65b4e2fc52a3ce44de2160e8d2,12fb6543af2e5541b0fc4f8fdd950be0,8d2159c1e0cf70473e66866eb026e80f,c166381208e23d3f4d65dec1231ccf76,3025704bb00b809798194964bccb8d3d,60decd16ccd83e013261697b7cc93bc6,7847598074d20e5abc220cb05a606213,afef320193ab13431e6b085c847b8094,9b4b25e0ea18183e9b085cc116246220,2e0115348725a3f383d8daa4354c7c3a,524c66aa98b226bd78bc7e7ad0423de7,66bfe11515e892dbf8bb4a5a92792e8b,50b03d671787f35800682c10c90a75bf,a1873764d0aa66fa9c6d34e16dcc86c2,0e69c6f28f25c24fe241da13093f9b12,6d119f7ae0c3c090ed51e672203c000f,7ff25ae6e8120b5ae5b5fb7b86a11641,53a396649c27c4e0dbd96fe57c2377e9,f59d0f67b7223a083e4449d583e90307,a41e16b61dd21e98c8143409d807890b,e44bd2f89f2820521a93c981c8af920d,f729102b0a0a547d20a4322e2d12cf71,7cf04cb70fa2f26d449acfb7974fd417,a7cd680c1676df4fdb93e7bdd83d6b3c,5f667ab7322f039e4e7e0ba8b04edf2f,6470d2304686b20640688c6d9dc44b46,df53f98d0b09ef3173cc8d594671fa6f,051071e245077a8126a4607e2148f327,224a58fde770d8718f7c06ac852fd9ae,0309718bf1a4785dcbf1e34461213c3e,d174c0a461db66945abcd861216dd94a,494b71b75af1e63c628544872f3c54d4,454f6e4ce4e57bd58eefda7d3fea1fa5,a87d77b65f6d1e8380b3d05290a994d0,430f99bc176c67ec705091d6a5da07d4,d230f6a24270b02237beb82a23e2742f,e5ba15d009798276692f84b4e0c9c1e9,026e09db119a340d72c2d5a611dfedb1,33a3ca4433131ad797eb4a7ff8bdb40b,87f64ed3bd52c1d6396fcb9908cb7fdf','管理员','root');

UNLOCK TABLES;

/*Table structure for table `boc_manager_purview` */

DROP TABLE IF EXISTS `boc_manager_purview`;

CREATE TABLE `boc_manager_purview` (
  `id` int(4) NOT NULL auto_increment,
  `model` varchar(30) NOT NULL COMMENT '控制模型',
  `method` varchar(30) NOT NULL COMMENT '控制函数',
  `cid` varchar(30) default NULL COMMENT 'column id 参数',
  `uri` varchar(64) NOT NULL COMMENT '权限地址md5(model/method)',
  `title` varchar(50) NOT NULL COMMENT '权限名称',
  `status` int(1) NOT NULL default '0' COMMENT '是否使用权限',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=460 DEFAULT CHARSET=utf8 COMMENT='用户组权限';

/*Data for the table `boc_manager_purview` */

LOCK TABLES `boc_manager_purview` WRITE;

insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (313,'configs','index','','fddc215a132fa97ca3c193f1cae5cf9f','配置查看',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (314,'configs','set','','a155574e57e9a8a0d0c6ecb1c511da68','配置修改',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (315,'columns','index','','bfc0ef3829e8d84dfc8d31e5edc26d0f','栏目列表',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (316,'columns','create','','ff2fa0336fe8fbc6a51c4707aa47c3e3','栏目添加',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (317,'columns','edit','','7afb566e83d3dca2d8a47c8cc29e7e36','栏目修改',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (318,'columns','delete','','4115dd2b6affc9e3626c695e398f335a','栏目删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (319,'modules','index','','c54e594684ebf2862c75ba29d83f71be','模型查看',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (320,'modules','create','','048c50d364a23dfcec0a87aa49e19eb8','模型添加',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (321,'modules','edit','','dbc10e6bbc54c0ea6f49e604839f5526','模型修改',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (322,'modules','delete','','bbff3957029793ef5163df61fbe018a5','删除模型',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (323,'manager_purview','index','','4141c0f8e6a977cd7048cd9d751af350','权限管理',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (324,'manager_purview','create','','a3c8c3d444880bda2a553b8f3eb6695b','权限添加',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (325,'manager_purview','edit','','efdb91a0f150375b423d8361d254241f','权限修改',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (326,'manager_purview','delete','','35845fea21044129353364ba21f144a0','权限删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (327,'manager_group','index','','e537f9c0308cbfeb6ee40b4e4c344947','用户组查看',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (328,'manager_group','create','','5341fd0c5de128ab7979a7414b2e586a','用户组添加',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (329,'manager_group','edit','','a2756c433a39a2319e61bcd68a758265','用户组修改',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (330,'manager_group','delete','','7d5101dc315695e13463ffdf708b5865','用户组删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (334,'upload','uploado','','3345e3e48188396dc21242fb119ba6b1','上传',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (455,'links','index','1','e24e46f5a00d4d7249fdbff9f5fae0d5','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (456,'links','create','1','889ef51cf360f0aded6978350f9f3ecd','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (457,'links','edit','1','8adea412ea33ee5e68633a55b5ccdcfb','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (458,'links','delete','1','f782091a11366669e6a3ca100d29e031','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (459,'links','audit','1','81d3c78851fbcf13580e82a46acd6643','审核',1);

UNLOCK TABLES;

/*Table structure for table `boc_modules` */

DROP TABLE IF EXISTS `boc_modules`;

CREATE TABLE `boc_modules` (
  `id` int(2) NOT NULL auto_increment COMMENT '模型标识',
  `sort_id` int(2) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '显示名称',
  `controller` varchar(50) NOT NULL COMMENT '控制器名称',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='栏目模型';

/*Data for the table `boc_modules` */

LOCK TABLES `boc_modules` WRITE;

insert  into `boc_modules`(`id`,`sort_id`,`title`,`controller`) values (1,0,'友情链接','links');
insert  into `boc_modules`(`id`,`sort_id`,`title`,`controller`) values (3,0,'文章','article');
insert  into `boc_modules`(`id`,`sort_id`,`title`,`controller`) values (12,6,'企业荣誉','honor');
insert  into `boc_modules`(`id`,`sort_id`,`title`,`controller`) values (7,3,'期刊','gallery');
insert  into `boc_modules`(`id`,`sort_id`,`title`,`controller`) values (8,1,'单页','page');
insert  into `boc_modules`(`id`,`sort_id`,`title`,`controller`) values (9,4,'产品','product');
insert  into `boc_modules`(`id`,`sort_id`,`title`,`controller`) values (10,0,'招聘','recruit');
insert  into `boc_modules`(`id`,`sort_id`,`title`,`controller`) values (11,5,'图片列表','banner');
insert  into `boc_modules`(`id`,`sort_id`,`title`,`controller`) values (13,7,'附件下载','files');
insert  into `boc_modules`(`id`,`sort_id`,`title`,`controller`) values (14,8,'视频管理','video');

UNLOCK TABLES;

/*Table structure for table `boc_msgs` */

DROP TABLE IF EXISTS `boc_msgs`;

CREATE TABLE `boc_msgs` (
  `id` int(11) NOT NULL auto_increment COMMENT '标识',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `msg` tinytext COMMENT '提示消息',
  `level` int(1) default '1' COMMENT '类型: 1notie 2info 3 success 4error',
  `timeline` int(11) NOT NULL COMMENT '时间',
  `markread` int(1) NOT NULL COMMENT '是否阅读',
  `notify` int(1) default '0' COMMENT '是否提示过',
  `byer` int(6) NOT NULL default '0' COMMENT '发送者 mid system is 0',
  `toer` int(6) NOT NULL COMMENT '接受者 mid',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='消息提示';

/*Data for the table `boc_msgs` */

LOCK TABLES `boc_msgs` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_page` */

DROP TABLE IF EXISTS `boc_page`;

CREATE TABLE `boc_page` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一编号',
  `cid` int(4) default NULL COMMENT '栏目id',
  `ccid` int(11) default '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) default '0' COMMENT '排序编号',
  `audit` int(1) default '0' COMMENT '审核',
  `title` tinytext COMMENT '标题',
  `title_seo` tinytext,
  `intro` varchar(500) default NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `photo` varchar(200) default NULL COMMENT '图片组',
  `thumb` varchar(200) default NULL COMMENT '缩略图',
  `template` varchar(200) default NULL COMMENT '模板',
  `timeline` int(10) default NULL COMMENT '发布/修改时间',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='单页表';

/*Data for the table `boc_page` */

LOCK TABLES `boc_page` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_product` */

DROP TABLE IF EXISTS `boc_product`;

CREATE TABLE `boc_product` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) default NULL COMMENT '栏目id',
  `sort_id` int(11) default '1' COMMENT '排序编号',
  `ccid` int(11) NOT NULL default '0' COMMENT '栏目条目ID伪栏目',
  `audit` int(1) default '0' COMMENT '0/1审核',
  `flag` int(1) NOT NULL default '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL default '0' COMMENT '默认分类',
  `title` varchar(255) default NULL COMMENT '标题',
  `title_seo` varchar(255) default NULL COMMENT '优化标题',
  `intro` varchar(500) default NULL COMMENT '简介',
  `tags` varchar(255) default NULL COMMENT '标签',
  `content` mediumtext COMMENT '内容',
  `photo` varchar(255) default NULL COMMENT '图片',
  `thumb` varchar(255) default NULL COMMENT '缩略图',
  `show` tinyint(1) default '1' COMMENT '是否显示',
  `click` int(11) default '0' COMMENT '点击量',
  `timeline` int(11) default NULL COMMENT '发布时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='产品';

/*Data for the table `boc_product` */

LOCK TABLES `boc_product` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_province` */

DROP TABLE IF EXISTS `boc_province`;

CREATE TABLE `boc_province` (
  `id` int(11) NOT NULL auto_increment COMMENT '标识',
  `title` varchar(50) default NULL COMMENT '标题',
  `entitle` varchar(50) default NULL COMMENT '英文标题',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='省级列表';

/*Data for the table `boc_province` */

LOCK TABLES `boc_province` WRITE;

insert  into `boc_province`(`id`,`title`,`entitle`) values (1,'北京市','BeiJing');
insert  into `boc_province`(`id`,`title`,`entitle`) values (2,'天津市','Tianjin');
insert  into `boc_province`(`id`,`title`,`entitle`) values (3,'河北省','Hebei');
insert  into `boc_province`(`id`,`title`,`entitle`) values (4,'山西省','Shanxi');
insert  into `boc_province`(`id`,`title`,`entitle`) values (5,'辽宁省','Liaoning');
insert  into `boc_province`(`id`,`title`,`entitle`) values (6,'吉林省','Jilin');
insert  into `boc_province`(`id`,`title`,`entitle`) values (7,'上海市','Shanghai');
insert  into `boc_province`(`id`,`title`,`entitle`) values (8,'江苏省','Jiangsu');
insert  into `boc_province`(`id`,`title`,`entitle`) values (9,'浙江省','Zhejiang');
insert  into `boc_province`(`id`,`title`,`entitle`) values (10,'安徽省','Anhui');
insert  into `boc_province`(`id`,`title`,`entitle`) values (11,'福建省','Fujian');
insert  into `boc_province`(`id`,`title`,`entitle`) values (12,'江西省','Jiangxi');
insert  into `boc_province`(`id`,`title`,`entitle`) values (13,'山东省','Shandong');
insert  into `boc_province`(`id`,`title`,`entitle`) values (14,'河南省','Henan');
insert  into `boc_province`(`id`,`title`,`entitle`) values (15,'内蒙古','Neimenggu');
insert  into `boc_province`(`id`,`title`,`entitle`) values (16,'黑龙江省','Heilongjiang');
insert  into `boc_province`(`id`,`title`,`entitle`) values (17,'湖北省','Hubei');
insert  into `boc_province`(`id`,`title`,`entitle`) values (18,'湖南省','Hunan');
insert  into `boc_province`(`id`,`title`,`entitle`) values (19,'广东省','Guangdong');
insert  into `boc_province`(`id`,`title`,`entitle`) values (20,'广西省','Guangxi');
insert  into `boc_province`(`id`,`title`,`entitle`) values (21,'海南省','Hainan');
insert  into `boc_province`(`id`,`title`,`entitle`) values (22,'四川省','Sichuan');
insert  into `boc_province`(`id`,`title`,`entitle`) values (23,'重庆市','Chongqing');
insert  into `boc_province`(`id`,`title`,`entitle`) values (24,'台湾省','Taiwan');
insert  into `boc_province`(`id`,`title`,`entitle`) values (25,'贵州省','Guizhou');
insert  into `boc_province`(`id`,`title`,`entitle`) values (26,'云南省','Yunnan');
insert  into `boc_province`(`id`,`title`,`entitle`) values (27,'西藏','Xizang');
insert  into `boc_province`(`id`,`title`,`entitle`) values (28,'陕西省','Shanxi');
insert  into `boc_province`(`id`,`title`,`entitle`) values (29,'甘肃省','Gansu');
insert  into `boc_province`(`id`,`title`,`entitle`) values (30,'青海省','Qinghai');
insert  into `boc_province`(`id`,`title`,`entitle`) values (31,'宁夏','Ningxia');
insert  into `boc_province`(`id`,`title`,`entitle`) values (32,'新疆','Xinjiang');
insert  into `boc_province`(`id`,`title`,`entitle`) values (33,'香港','xianggang');
insert  into `boc_province`(`id`,`title`,`entitle`) values (34,'澳门','aomen');
insert  into `boc_province`(`id`,`title`,`entitle`) values (35,'钓鱼岛','Diaoyudao');

UNLOCK TABLES;

/*Table structure for table `boc_province_city` */

DROP TABLE IF EXISTS `boc_province_city`;

CREATE TABLE `boc_province_city` (
  `id` int(11) NOT NULL auto_increment,
  `province_id` int(11) NOT NULL default '0' COMMENT '省级id',
  `title` varchar(50) default NULL COMMENT '标题',
  `entitle` varchar(50) default NULL COMMENT '英文标题',
  `weather` varchar(11) default NULL COMMENT '国家天气ID',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=384 DEFAULT CHARSET=utf8 COMMENT='城市列表';

/*Data for the table `boc_province_city` */

LOCK TABLES `boc_province_city` WRITE;

insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (1,1,'北京',NULL,'101010100');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (2,2,'天津',NULL,'101030100');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (3,3,'石家庄',NULL,'101090101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (4,3,'保定',NULL,'101090201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (5,3,'沧州',NULL,'101090701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (6,3,'承德',NULL,'101090402');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (7,3,'邯郸',NULL,'101091001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (8,3,'衡水',NULL,'101090801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (9,3,'廊坊',NULL,'101090601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (10,3,'秦皇岛',NULL,'101091101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (11,3,'唐山',NULL,'101090501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (12,3,'邢台',NULL,'101090901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (13,3,'张家口',NULL,'101090301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (14,4,'太原',NULL,'101100101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (15,4,'长治',NULL,'101100501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (16,4,'大同',NULL,'101100201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (17,4,'晋城',NULL,'101100601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (18,4,'晋中',NULL,'101100401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (19,4,'临汾',NULL,'101100701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (20,4,'吕梁',NULL,'101101101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (21,4,'朔州',NULL,'101100901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (22,4,'忻州',NULL,'101101001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (23,4,'阳泉',NULL,'101100301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (24,4,'运城',NULL,'101100801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (25,5,'沈阳',NULL,'101070101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (26,5,'大连',NULL,'101070201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (27,5,'鞍山',NULL,'101070301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (28,5,'本溪',NULL,'101070501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (29,5,'朝阳',NULL,'101071201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (30,5,'丹东',NULL,'101070601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (31,5,'抚顺',NULL,'101070401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (32,5,'阜新',NULL,'101070901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (33,5,'葫芦岛',NULL,'101071401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (34,5,'锦州',NULL,'101070701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (35,5,'辽阳',NULL,'101071001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (36,5,'盘锦',NULL,'101071301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (37,5,'铁岭',NULL,'101071101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (38,5,'营口',NULL,'101070801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (39,6,'长春',NULL,'101060101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (40,6,'吉林',NULL,'101060201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (41,6,'白城',NULL,'101060601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (42,6,'白山',NULL,'101060901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (43,6,'辽源',NULL,'101060701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (44,6,'四平',NULL,'101060401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (45,6,'松原',NULL,'101060801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (46,6,'通化',NULL,'101060501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (47,6,'延边朝鲜族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (48,7,'上海',NULL,'101020100');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (49,8,'南京',NULL,'101190101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (50,8,'常州',NULL,'101191101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (51,8,'淮安',NULL,'101190901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (52,8,'连云港',NULL,'101191001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (53,8,'南通',NULL,'101190501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (54,8,'苏州',NULL,'101190401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (55,8,'宿迁',NULL,'101191301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (56,8,'泰州',NULL,'101191201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (57,8,'无锡',NULL,'101190201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (58,8,'徐州',NULL,'101190801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (59,8,'盐城',NULL,'101190701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (60,8,'扬州',NULL,'101190601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (61,8,'镇江',NULL,'101190301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (62,9,'杭州',NULL,'101210101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (63,9,'湖州',NULL,'101210201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (64,9,'嘉兴',NULL,'101210301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (65,9,'金华',NULL,'101210901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (66,9,'丽水',NULL,'101210801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (67,9,'宁波',NULL,'101210401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (68,9,'绍兴',NULL,'101210501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (69,9,'台州',NULL,'101210601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (70,9,'温州',NULL,'101210701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (71,9,'舟山',NULL,'101211101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (72,9,'衢州',NULL,'101211001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (73,10,'合肥',NULL,'101220101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (74,10,'安庆',NULL,'101220601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (75,10,'蚌埠',NULL,'101220201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (76,10,'巢湖',NULL,'101221601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (77,10,'池州',NULL,'101221701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (78,10,'滁州',NULL,'101221101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (79,10,'阜阳',NULL,'101220801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (80,10,'淮北',NULL,'101221201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (81,10,'淮南',NULL,'101220401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (82,10,'黄山',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (83,10,'六安',NULL,'101221501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (84,10,'马鞍山',NULL,'101220501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (85,10,'宿州',NULL,'101220701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (86,10,'铜陵',NULL,'101221301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (87,10,'芜湖',NULL,'101220301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (88,10,'宣城',NULL,'101221401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (89,10,'亳州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (90,11,'福州',NULL,'101230101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (91,11,'厦门',NULL,'101230201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (92,11,'龙岩',NULL,'101230701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (93,11,'南平',NULL,'101230901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (94,11,'宁德',NULL,'101230301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (95,11,'莆田',NULL,'101230401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (96,11,'泉州',NULL,'101230501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (97,11,'三明',NULL,'101230801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (98,11,'漳州',NULL,'101230601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (99,12,'南昌',NULL,'101240101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (100,12,'抚州',NULL,'101240401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (101,12,'赣州',NULL,'101240701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (102,12,'吉安',NULL,'101240601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (103,12,'景德镇',NULL,'101240801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (104,12,'九江',NULL,'101240201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (105,12,'萍乡',NULL,'101240901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (106,12,'上饶',NULL,'101240301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (107,12,'新余',NULL,'101241001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (108,12,'宜春',NULL,'101240501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (109,12,'鹰潭',NULL,'101241101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (110,13,'济南',NULL,'101120101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (111,13,'青岛',NULL,'101120201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (112,13,'烟台',NULL,'101120501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (113,13,'滨州',NULL,'101121101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (114,13,'德州',NULL,'101120401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (115,13,'东营',NULL,'101121201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (116,13,'菏泽',NULL,'101121001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (117,13,'济宁',NULL,'101120701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (118,13,'莱芜',NULL,'101121601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (119,13,'聊城',NULL,'101121701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (120,13,'临沂',NULL,'101120901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (121,13,'日照',NULL,'101121501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (122,13,'泰安',NULL,'101120801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (123,13,'威海',NULL,'101121301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (124,13,'潍坊',NULL,'101120601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (125,13,'枣庄',NULL,'101121401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (126,13,'淄博',NULL,'101120301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (127,14,'郑州',NULL,'101180101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (128,14,'洛阳',NULL,'101180901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (129,14,'开封',NULL,'101180801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (130,14,'安阳',NULL,'101180201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (131,14,'鹤壁',NULL,'101181201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (132,14,'济源',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (133,14,'焦作',NULL,'101181101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (134,14,'南阳',NULL,'101180701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (135,14,'平顶山',NULL,'101180501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (136,14,'三门峡',NULL,'101181701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (137,14,'商丘',NULL,'101181001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (138,14,'新乡',NULL,'101180301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (139,14,'信阳',NULL,'101180601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (140,14,'许昌',NULL,'101180401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (141,14,'周口',NULL,'101181401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (142,14,'驻马店',NULL,'101181601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (143,14,'漯河',NULL,'101181501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (144,14,'濮阳',NULL,'101181301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (145,15,'呼和浩特',NULL,'101080101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (146,15,'包头',NULL,'101080201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (147,15,'赤峰',NULL,'101080601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (148,15,'鄂尔多斯',NULL,'101080701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (149,15,'呼伦贝尔',NULL,'101081001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (150,15,'阿拉善盟',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (151,15,'巴彦淖尔盟',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (152,15,'通辽',NULL,'101080501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (153,15,'乌海',NULL,'101080301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (154,15,'乌兰察布盟',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (155,15,'锡林郭勒盟',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (156,15,'兴安盟',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (157,16,'哈尔滨',NULL,'101050101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (158,16,'大庆',NULL,'101050901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (159,16,'大兴安岭',NULL,'101050701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (160,16,'鹤岗',NULL,'101051201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (161,16,'黑河',NULL,'101050601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (162,16,'鸡西',NULL,'101051101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (163,16,'佳木斯',NULL,'101050401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (164,16,'牡丹江',NULL,'101050301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (165,16,'七台河',NULL,'101051002');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (166,16,'齐齐哈尔',NULL,'101050201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (167,16,'双鸭山',NULL,'101051301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (168,16,'绥化',NULL,'101050501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (169,16,'伊春',NULL,'101050801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (170,17,'武汉',NULL,'101200101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (171,17,'鄂州',NULL,'101200301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (172,17,'黄冈',NULL,'101200501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (173,17,'黄石',NULL,'101200601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (174,17,'荆门',NULL,'101201401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (175,17,'荆州',NULL,'101200801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (176,17,'潜江',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (177,17,'十堰',NULL,'101201101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (178,17,'随州',NULL,'101201301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (179,17,'天门',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (180,17,'仙桃',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (181,17,'咸宁',NULL,'101200701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (182,17,'襄樊',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (183,17,'孝感',NULL,'101200401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (184,17,'宜昌',NULL,'101200901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (185,17,'恩施土家族苗族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (186,17,'神农架林区',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (187,18,'长沙',NULL,'101250101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (188,18,'益阳',NULL,'101250701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (189,18,'湘潭',NULL,'101250201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (190,18,'常德',NULL,'101250601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (191,18,'郴州',NULL,'101250501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (192,18,'衡阳',NULL,'101250401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (193,18,'怀化',NULL,'101251201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (194,18,'娄底',NULL,'101250801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (195,18,'邵阳',NULL,'101250901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (196,18,'永州',NULL,'101251401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (197,18,'岳阳',NULL,'101251001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (198,18,'张家界',NULL,'101251101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (199,18,'株洲',NULL,'101250301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (200,18,'湘西土家族苗族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (201,19,'广州',NULL,'101280101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (202,19,'深圳',NULL,'101280601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (203,19,'珠海',NULL,'101280701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (204,19,'湛江',NULL,'101281001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (205,19,'惠州',NULL,'101280301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (206,19,'江门',NULL,'101281101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (207,19,'潮州',NULL,'101281501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (208,19,'汕头',NULL,'101280501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (209,19,'东莞',NULL,'101281601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (210,19,'佛山',NULL,'101280800');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (211,19,'河源',NULL,'101281201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (212,19,'揭阳',NULL,'101281901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (213,19,'茂名',NULL,'101282001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (214,19,'梅州',NULL,'101280401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (215,19,'清远',NULL,'101281301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (216,19,'汕尾',NULL,'101282101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (217,19,'韶关',NULL,'101280201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (218,19,'阳江',NULL,'101281801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (219,19,'云浮',NULL,'101281401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (220,19,'肇庆',NULL,'101280901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (221,19,'中山',NULL,'101281701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (222,20,'南宁',NULL,'101300101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (223,20,'桂林',NULL,'101300501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (224,20,'北海',NULL,'101301301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (225,20,'百色',NULL,'101301001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (226,20,'崇左',NULL,'101300201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (227,20,'防城港',NULL,'101301401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (228,20,'贵港',NULL,'101300801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (229,20,'河池',NULL,'101301201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (230,20,'贺州',NULL,'101300701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (231,20,'来宾',NULL,'101300401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (232,20,'柳州',NULL,'101300301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (233,20,'钦州',NULL,'101301101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (234,20,'梧州',NULL,'101300601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (235,20,'玉林',NULL,'101300901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (236,21,'海口',NULL,'101310101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (237,21,'三亚',NULL,'101310201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (238,21,'白沙黎族自治县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (239,21,'保亭黎族苗族自治县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (240,21,'昌江黎族自治县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (241,21,'澄迈县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (242,21,'定安县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (243,21,'东方',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (244,21,'乐东黎族自治县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (245,21,'临高县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (246,21,'陵水黎族自治县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (247,21,'琼海',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (248,21,'琼中黎族苗族自治县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (249,21,'屯昌县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (250,21,'万宁',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (251,21,'文昌',NULL,'101310212');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (252,21,'五指山',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (253,21,'儋州',NULL,'101310205');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (254,22,'成都',NULL,'101270101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (255,22,'绵阳',NULL,'101270401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (256,22,'巴中',NULL,'101270901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (257,22,'达州',NULL,'101270601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (258,22,'德阳',NULL,'101272001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (259,22,'广安',NULL,'101270801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (260,22,'广元',NULL,'101272101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (261,22,'乐山',NULL,'101271401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (262,22,'眉山',NULL,'101271501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (263,22,'南充',NULL,'101270501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (264,22,'内江',NULL,'101271201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (265,22,'攀枝花',NULL,'101270201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (266,22,'遂宁',NULL,'101270701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (267,22,'雅安',NULL,'101271701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (268,22,'宜宾',NULL,'101271101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (269,22,'资阳',NULL,'101271301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (270,22,'自贡',NULL,'101270301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (271,22,'泸州',NULL,'101271001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (272,22,'甘孜藏族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (273,22,'阿坝藏族羌族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (274,22,'凉山彝族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (275,23,'重庆',NULL,'101040100');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (276,24,'台北',NULL,'101340102');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (277,24,'高雄',NULL,'101340201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (278,24,'台中',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (279,24,'台南',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (280,24,'新北',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (281,24,'基隆',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (282,24,'新竹',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (283,24,'嘉义',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (284,24,'桃园县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (285,24,'新竹县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (286,24,'苗栗县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (287,24,'彰化县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (288,24,'南投县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (289,24,'云林县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (290,24,'嘉义县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (291,24,'屏东县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (292,24,'宜兰县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (293,24,'花莲县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (294,24,'台东县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (295,24,'澎湖县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (296,24,'金门县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (297,24,'连江县',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (298,25,'贵阳',NULL,'101260101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (299,25,'六盘水',NULL,'101260801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (300,25,'遵义',NULL,'101260201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (301,25,'安顺',NULL,'101260301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (302,25,'毕节',NULL,'101260701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (303,25,'铜仁',NULL,'101260601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (304,25,'黔东南苗族侗族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (305,25,'黔南布依族苗族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (306,25,'黔西南布依族苗族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (307,26,'昆明',NULL,'101290101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (308,26,'丽江',NULL,'101291401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (309,26,'保山',NULL,'101290501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (310,26,'楚雄彝族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (311,26,'大理白族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (312,26,'德宏傣族景颇族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (313,26,'迪庆藏族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (314,26,'红河哈尼族彝族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (315,26,'临沧',NULL,'101291101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (316,26,'怒江傈傈族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (317,26,'曲靖',NULL,'101290401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (318,26,'思茅',NULL,'101290901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (319,26,'文山壮族苗族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (320,26,'西双版纳傣族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (321,26,'玉溪',NULL,'101290701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (322,26,'昭通',NULL,'101291001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (323,27,'拉萨',NULL,'101140101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (324,27,'日喀则',NULL,'101140201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (325,27,'阿里',NULL,'101140701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (326,27,'昌都',NULL,'101140501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (327,27,'林芝',NULL,'101140401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (328,27,'那曲',NULL,'101140601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (329,27,'山南',NULL,'101140301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (330,28,'西安',NULL,'101110101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (331,28,'宝鸡',NULL,'101110901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (332,28,'咸阳',NULL,'101110200');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (333,28,'延安',NULL,'101110300');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (334,28,'榆林',NULL,'101110401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (335,28,'安康',NULL,'101110701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (336,28,'汉中',NULL,'101110801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (337,28,'商洛',NULL,'101110601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (338,28,'铜川',NULL,'101111001');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (339,28,'渭南',NULL,'101110501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (340,29,'兰州',NULL,'101160101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (341,29,'白银',NULL,'101161301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (342,29,'定西',NULL,'101160201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (343,29,'嘉峪关',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (344,29,'金昌',NULL,'101160601');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (345,29,'酒泉',NULL,'101160801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (346,29,'陇南',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (347,29,'平凉',NULL,'101160301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (348,29,'庆阳',NULL,'101160401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (349,29,'天水',NULL,'101160901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (350,29,'武威',NULL,'101160501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (351,29,'张掖',NULL,'101160701');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (352,29,'临夏回族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (353,29,'甘南藏族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (354,30,'西宁',NULL,'101150101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (355,30,'果洛藏族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (356,30,'海北藏族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (357,30,'海东',NULL,'101150201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (358,30,'海南藏族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (359,30,'海西蒙古族藏族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (360,30,'黄南藏族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (361,30,'玉树藏族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (362,31,'银川',NULL,'101170101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (363,31,'固原',NULL,'101170401');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (364,31,'石嘴山',NULL,'101170201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (365,31,'吴忠',NULL,'101170301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (366,32,'乌鲁木齐',NULL,'101130101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (367,32,'吐鲁番',NULL,'101130501');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (368,32,'阿克苏',NULL,'101130801');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (369,32,'阿拉尔',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (370,32,'巴音郭楞蒙古自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (371,32,'博尔塔拉蒙古自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (372,32,'昌吉回族自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (373,32,'哈密',NULL,'101131201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (374,32,'和田',NULL,'101131301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (375,32,'喀什',NULL,'101130901');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (376,32,'克拉玛依',NULL,'101130201');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (377,32,'克孜勒苏柯尔克孜自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (378,32,'石河子',NULL,'101130301');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (379,32,'图木舒克',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (380,32,'五家渠',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (381,32,'伊犁哈萨克自治州',NULL,NULL);
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (382,33,'香港',NULL,'101320101');
insert  into `boc_province_city`(`id`,`province_id`,`title`,`entitle`,`weather`) values (383,34,'澳门',NULL,'101330101');

UNLOCK TABLES;

/*Table structure for table `boc_recruit` */

DROP TABLE IF EXISTS `boc_recruit`;

CREATE TABLE `boc_recruit` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一编号',
  `sort_id` int(11) default '1' COMMENT '排序编号',
  `cid` int(11) default NULL COMMENT '类型',
  `ccid` int(11) default '0',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext,
  `intro` tinytext COMMENT '简介',
  `tags` tinytext,
  `content` mediumtext COMMENT '内容',
  `timeline` int(11) default NULL COMMENT '发布/修改时间',
  `expiretime` int(11) default NULL COMMENT '公告过期时间',
  `click` int(11) default '0' COMMENT '浏览次数',
  `status` tinyint(1) NOT NULL default '1' COMMENT '显隐状态',
  `flag` tinyint(1) NOT NULL default '0' COMMENT '推荐到分类门户的页面显示',
  `audit` tinyint(1) NOT NULL default '0' COMMENT '突显状态/颜色',
  `show` tinyint(1) NOT NULL default '1',
  `photo` varchar(255) default NULL COMMENT '相关图片',
  `thumb` varchar(255) default NULL COMMENT '图片缩略图',
  `attachment` varchar(255) default NULL COMMENT '相关文件',
  `country` varchar(50) default NULL,
  `province` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `county` varchar(50) default NULL,
  `place` varchar(255) default NULL,
  `require` varchar(50) default NULL COMMENT '职称要求',
  `amount` int(11) default NULL,
  `department` varchar(50) default NULL,
  `gender` tinyint(1) NOT NULL default '0',
  `age` smallint(6) default NULL,
  `age_max` smallint(6) default NULL,
  `edu` varchar(50) default NULL,
  `major` varchar(50) default NULL,
  `experience` varchar(50) default NULL,
  `requirement` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='人才招聘';

/*Data for the table `boc_recruit` */

LOCK TABLES `boc_recruit` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_recruit_apply` */

DROP TABLE IF EXISTS `boc_recruit_apply`;

CREATE TABLE `boc_recruit_apply` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一编号',
  `sort_id` int(11) default '1' COMMENT '排序编号',
  `type_id` int(11) default NULL COMMENT '类型',
  `recruit_id` int(11) default NULL,
  `title` varchar(255) default NULL COMMENT '应聘标题',
  `intro` varchar(1000) default NULL COMMENT '简介',
  `content` mediumtext COMMENT '内容',
  `answer` mediumtext,
  `timeline_answer` int(11) default NULL,
  `timeline` int(11) default NULL COMMENT '发布/修改时间',
  `expire` int(11) default NULL COMMENT '公告过期时间',
  `solve` int(1) default '0',
  `click` int(11) default '0' COMMENT '浏览次数',
  `show` tinyint(4) default '1' COMMENT '显隐状态',
  `recommend` tinyint(4) default '0' COMMENT '推荐到分类门户的页面显示',
  `color` tinyint(4) default '0' COMMENT '突显状态/颜色',
  `audit` tinyint(1) default '0' COMMENT '审核状态',
  `photo` varchar(255) default NULL COMMENT '相关图片',
  `thumb` varchar(255) default NULL COMMENT '图片缩略图',
  `file` varchar(255) default NULL COMMENT '相关文件',
  `ip` varchar(100) default NULL,
  `ex1` varchar(255) default '' COMMENT '其他标签（预留）',
  `ex2` varchar(255) default '',
  `ex3` varchar(255) default '',
  `ex4` varchar(255) default '',
  `x` varchar(255) default '',
  `y` varchar(255) default NULL,
  `country` varchar(50) default NULL,
  `province` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `county` varchar(50) default NULL,
  `place` varchar(255) default NULL,
  `department` varchar(50) default NULL COMMENT '部门',
  `name` varchar(50) default NULL,
  `gender` varchar(10) default NULL,
  `marriage` varchar(50) default NULL,
  `email` varchar(100) default NULL,
  `tel` varchar(100) default NULL,
  `mobile` varchar(100) default NULL,
  `qq` varchar(100) default NULL,
  `msn` varchar(100) default NULL,
  `wangwang` varchar(100) default NULL,
  `nation` varchar(50) default NULL COMMENT '民族',
  `birthday` varchar(20) default NULL,
  `politic` varchar(50) default NULL COMMENT '政治面貌',
  `birthplace` varchar(50) default NULL COMMENT '籍贯',
  `school` varchar(100) default NULL,
  `major` varchar(50) default NULL COMMENT '专业',
  `graduation` varchar(20) default NULL COMMENT '毕业时间',
  `language` varchar(50) default NULL COMMENT '外语水平',
  `position` varchar(100) default NULL COMMENT '应聘职位',
  `age` smallint(6) default NULL,
  `edu` varchar(50) default NULL,
  `experience` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线应聘';

/*Data for the table `boc_recruit_apply` */

LOCK TABLES `boc_recruit_apply` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_sessions_adminer` */

DROP TABLE IF EXISTS `boc_sessions_adminer`;

CREATE TABLE `boc_sessions_adminer` (
  `session_id` varchar(40) NOT NULL default '0',
  `ip_address` varchar(45) NOT NULL default '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL default '0',
  `user_data` text NOT NULL,
  PRIMARY KEY  (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会话保存';

/*Data for the table `boc_sessions_adminer` */

LOCK TABLES `boc_sessions_adminer` WRITE;

insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('f68fb59a8321a81ecdc11d23d1e57251','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 Safari/537.36',1438331018,'a:6:{s:9:\"user_data\";s:0:\"\";s:3:\"mid\";s:1:\"1\";s:5:\"uname\";s:8:\"bocadmin\";s:8:\"nickname\";s:12:\"超级用户\";s:8:\"login_ip\";s:9:\"127.0.0.1\";s:3:\"gid\";s:1:\"1\";}');

UNLOCK TABLES;

/*Table structure for table `boc_sessions_site` */

DROP TABLE IF EXISTS `boc_sessions_site`;

CREATE TABLE `boc_sessions_site` (
  `session_id` varchar(40) NOT NULL default '0',
  `ip_address` varchar(45) NOT NULL default '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL default '0',
  `user_data` text NOT NULL,
  PRIMARY KEY  (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会话保存';

/*Data for the table `boc_sessions_site` */

LOCK TABLES `boc_sessions_site` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_tags` */

DROP TABLE IF EXISTS `boc_tags`;

CREATE TABLE `boc_tags` (
  `id` int(11) NOT NULL auto_increment,
  `tag` varchar(30) NOT NULL COMMENT '标签',
  `en` varchar(60) default NULL COMMENT '拼音|英语',
  `len` int(3) default '0' COMMENT '长度',
  `count` int(11) default '0' COMMENT '计数',
  `type` int(1) default '0' COMMENT '分类,0:tags,1:title,2:intro,3:content',
  PRIMARY KEY  (`id`),
  KEY `record_index` (`id`,`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签表';

/*Data for the table `boc_tags` */

LOCK TABLES `boc_tags` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_tags_list` */

DROP TABLE IF EXISTS `boc_tags_list`;

CREATE TABLE `boc_tags_list` (
  `tid` int(11) NOT NULL default '0' COMMENT 'tag id',
  `cid` int(11) NOT NULL default '0' COMMENT 'col id',
  `aid` int(11) NOT NULL default '0' COMMENT 'col''s aritcle id',
  `type` int(1) NOT NULL default '0' COMMENT '分类,0:tags,1:title,2:intro,3:content',
  `timeline` int(11) NOT NULL COMMENT '时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签使用表';

/*Data for the table `boc_tags_list` */

LOCK TABLES `boc_tags_list` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_upload` */

DROP TABLE IF EXISTS `boc_upload`;

CREATE TABLE `boc_upload` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT '文件名',
  `size` int(11) default NULL COMMENT '大小',
  `type` varchar(255) default NULL COMMENT '类型',
  `url` varchar(100) default NULL COMMENT '地址',
  `thumb` varchar(100) default NULL COMMENT '缩略图',
  `deleteUrl` varchar(150) default NULL COMMENT '删除',
  `alt` varbinary(30) default NULL COMMENT '提示',
  `title` varbinary(100) default NULL COMMENT '标题',
  `text` tinytext COMMENT '简介内容',
  `timeline` int(11) default NULL COMMENT '时间线',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='文件上传';

/*Data for the table `boc_upload` */

LOCK TABLES `boc_upload` WRITE;



UNLOCK TABLES;

/*Table structure for table `boc_video` */

DROP TABLE IF EXISTS `boc_video`;

CREATE TABLE `boc_video` (
  `id` int(11) NOT NULL auto_increment COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL default '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) default '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL default '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL default '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL default '0' COMMENT '默认分类',
  `type_id` int(4) default NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` tinytext NOT NULL COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) default NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) default NULL COMMENT '发布/修改时间',
  `status` int(1) NOT NULL default '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL default '0' COMMENT '浏览次数',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `photoinfo` tinytext COMMENT '详细图片',
  `video` tinytext COMMENT '视频',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='视频表';

/*Data for the table `boc_video` */

LOCK TABLES `boc_video` WRITE;

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
