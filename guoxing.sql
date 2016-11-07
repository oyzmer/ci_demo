/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.37-log : Database - lj_guoxing
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
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL COMMENT 'Mail作为帐号',
  `uname` varchar(50) NOT NULL COMMENT '帐号',
  `nickname` varchar(50) NOT NULL COMMENT '显示名称',
  `pwd` varchar(64) NOT NULL COMMENT '密码',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话',
  `phone` varchar(30) DEFAULT NULL COMMENT '手机',
  `addr` varchar(100) DEFAULT NULL COMMENT '地址',
  `photo` varchar(100) DEFAULT NULL COMMENT '头像',
  `thumb` varchar(100) DEFAULT NULL COMMENT '缩略图',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '用户状态，0 禁用',
  `login_today` int(11) NOT NULL COMMENT '今日登录次数',
  `pwd_errors` int(1) NOT NULL DEFAULT '0' COMMENT '密码错误次数',
  `login_ip` varchar(25) NOT NULL COMMENT '最后登录的IP',
  `reg_time` int(11) NOT NULL COMMENT '添加时间',
  `login_time` int(11) NOT NULL COMMENT '最后一次登录时间',
  `ga` varchar(20) NOT NULL COMMENT 'GA 两部验证密钥 开启与否',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='前端会员帐号';

/*Data for the table `boc_acount` */

LOCK TABLES `boc_acount` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_article` */

DROP TABLE IF EXISTS `boc_article`;

CREATE TABLE `boc_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '公告过期时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `author` varchar(50) DEFAULT NULL COMMENT '消息作者',
  `author_url` tinytext COMMENT '作者链接',
  `source` varchar(50) DEFAULT NULL COMMENT '消息来源',
  `source_url` tinytext COMMENT '来源链接',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `recommend` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐到分类门户的页面显示',
  `homepage` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐到首页显示',
  `recommend_photo` int(1) NOT NULL DEFAULT '0' COMMENT '0:1作为分类栏目的跑马灯图片新闻',
  `homepage_photo` int(1) NOT NULL DEFAULT '0' COMMENT '0:1作为首页的跑马灯图片新闻',
  `color` int(1) NOT NULL DEFAULT '0' COMMENT '突显状态/颜色',
  `photo` tinytext COMMENT '相关图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='信息表';

/*Data for the table `boc_article` */

LOCK TABLES `boc_article` WRITE;

insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (1,35,0,10,1,1,0,NULL,'创造二件“世界名牌”企业','','  ','','<p>1、到2020年，红太阳成为服务大农业的“世界名牌”；</p><p>2、到2025年，世界村同为服务市民的大健康“世界名牌”。</p><p><br/></p>',1448523472,NULL,0,NULL,NULL,NULL,NULL,31,0,0,0,0,0,'','',NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (2,35,0,9,1,1,0,NULL,'创造二家“世界500强”企业','','  ','','<p>1、到2020年，产销“双超”1500亿元，利税、利润“双超”100亿元；创造一家世界500强企业（红太阳）；</p><p>2、到2025年，产销“双超”3500亿元，利税、利润“双超”200亿元；创造二家500强（红太阳、世界村）。</p><p><br/></p>',1448523476,NULL,0,NULL,NULL,NULL,NULL,15,0,0,0,0,0,'','',NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (8,35,0,7,1,1,0,NULL,'创造全体红太阳员工幸福目标','','  ','','<p>1、到2020年，创造十亿富家员工10名，亿元富家员工100名，千万元富家员工超千名，全员五年新增财富超百万元；</p><p>2、到2025年，创造十亿元富家员工达到20名，亿元富家员工达到200名，人人新增财富200万元。</p><p><br/></p>',1448786675,NULL,0,NULL,NULL,NULL,NULL,4,0,0,0,0,0,'','',NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (7,35,0,8,1,1,0,NULL,'创造千名“企业家”团队','','  ','','<p>1、到2020年，造就百名年销售超亿元的企业家团队（其中超百亿元以上的十名）；</p><p>2、到2025年，造就千名年销售超亿元的企业家团队（其中超百亿元的20名）。</p><p><br/></p>',1448786665,NULL,0,NULL,NULL,NULL,NULL,9,0,0,0,0,0,'','',NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (3,38,0,3,1,0,0,NULL,'国星生化在行业中率先利用锅炉余热减少蒸汽使用量等节能减排技术','','  ','','国星生化在行业中率先利用锅炉余热减少蒸汽使用量等节能减排技术国星生化在行业中率先利用锅炉余热减少蒸汽使用量等节能减排技术国星生化在行业中率先利用锅炉余热减少蒸汽使用量等节能减排技术国星生化在行业中率先利用锅炉余热减少蒸汽使用量等节能减排技术国星生化在行业中率先利用锅炉余热减少蒸汽使用量等节能减排技术国星生化在行业中率先利用锅炉余热减少蒸汽使用量等节能减排技术国星生化在行业中率先利用锅炉余热减少蒸汽使用量等节能减排技术国星生化在行业中率先利用锅炉余热减少蒸汽使用量等节能减排技术',1448523519,NULL,0,NULL,NULL,NULL,NULL,9,0,0,0,0,0,'','',NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (4,14,0,4,1,0,0,NULL,'待添加','','  ','','<p>待添加</p>',1448699358,NULL,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (5,14,0,5,1,0,0,NULL,'待添加','','  ','','<p>待添加</p>',1448699369,NULL,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (6,14,0,6,1,0,0,NULL,'党建活动','','  ','','<p>公司创建了“中国星.中国心”党建品牌，成立了当涂经济开发区第一孵化中心，不仅为本企业发展培训优秀党员，也带动周边企业党员争先创优，获得了省、市、县党组织的一致好评，公司党支部也被评为省级“双强六好”企业党组织等一系列荣誉称号。</p>',1448699374,NULL,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (9,35,0,6,1,0,0,NULL,'开创中国大众创新创业“三包”成功先河','','  ','','<p>为十万农民创新转型实现“三包”（即：包销、包增利、包“3G一标”国际市场准入论证费用）；</p><p>为五万百姓创业转型实现“三包”（即：包创业模式落地、包赚不赔、包一年回本、三年成为百万富家、十年成为千万富翁）。</p><p><br/></p>',1448786684,NULL,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,'','',NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (10,35,0,5,1,0,0,NULL,'争创国家“大众创业，万众创新”的十大示范企业','','  ','','<p>1、到2020年，力争带动万人创业，十万人创新成功，解决就业再就业百万人（含农民转型为新型农民）；</p><p>2、到2025年，力争带动十万人创业，百万人创新成功，解决就业再就业150万人（含农民转型为新型农民）。</p><p><br/></p>',1448786693,NULL,0,NULL,NULL,NULL,NULL,1,0,0,0,0,0,'','',NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (11,35,0,4,1,0,0,NULL,'创造中国首家规模最大的“第六产业”（创意农业）新模式','','  ','','<p>到2020年，建成一条舌尖上健康农民与市民互联互信的覆盖“千县千品”和“百市万店”、“百国万商”的健康宅连配云商大健康产业生态系统。</p>',1448786700,NULL,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,'','',NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (12,35,0,3,1,0,0,NULL,'争创国家“助教助学”模范企业','','  ','','<p>到2025年，在全国贫困地区捐资建设100所希望小学，设立100只助教助学基金，奖励1000名乡村教师，帮助1000名特困家庭孩子实现大学梦的“四个一”爱心助教行动计划。<br/></p>',1448786711,NULL,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,'','',NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (13,35,0,2,1,0,0,NULL,'设立10亿元“爱心慈善基金”','','  ','','<p>捐资10亿元设立“红太阳爱心慈善基金”；</p><p>1、在全国资助2万户贫困家庭（每户1万元左右）；</p><p>2、精准扶贫二个县、100个行政村2万户贫困农民；</p><p>3、帮助百姓转变健康意识，自主培养万名“营养医学”培训师，深入全国300个市的十万社区培训市民营养医学知识，受训人数突破一亿人次以上。</p><p><br/></p>',1448786721,NULL,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,'','',NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (14,35,0,1,1,0,0,NULL,'设立亿元红太阳“人民基层好公仆”基金','','  ','','<p>1、奖励万名村（社区）基层好公仆（仅限乡村和社区基层干部）；</p><p>2、帮助万名大学生村官解决服务百姓的方法和转型升级。</p><p><br/></p>',1448786733,NULL,0,NULL,NULL,NULL,NULL,1,0,0,0,0,0,'','',NULL);
insert  into `boc_article`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`author`,`author_url`,`source`,`source_url`,`click`,`recommend`,`homepage`,`recommend_photo`,`homepage_photo`,`color`,`photo`,`thumb`,`attachment`) values (15,38,0,11,1,0,0,NULL,'工艺优化','','  ','','<p><img style=\"WIDTH: 292px; HEIGHT: 228px\" alt=\"1449542131166032FcU5.jpg\" src=\"http://121.41.128.239:8085/guoxing/upload//at/image/20151208/1449542131166032FcU5.jpg\" width=\"1600\" height=\"658\"/></p>',1449623011,NULL,0,NULL,NULL,NULL,NULL,4,0,0,0,0,0,'','',NULL);

UNLOCK TABLES;

/*Table structure for table `boc_article_tag` */

DROP TABLE IF EXISTS `boc_article_tag`;

CREATE TABLE `boc_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(30) NOT NULL COMMENT '标签',
  `record` int(11) DEFAULT NULL COMMENT '使用的 article id',
  `count` int(11) DEFAULT NULL COMMENT '计数',
  PRIMARY KEY (`id`),
  KEY `record_index` (`id`,`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签表';

/*Data for the table `boc_article_tag` */

LOCK TABLES `boc_article_tag` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_banner` */

DROP TABLE IF EXISTS `boc_banner`;

CREATE TABLE `boc_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` text COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '公告过期时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `photoinfo` varchar(1000) DEFAULT NULL,
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='banner表';

/*Data for the table `boc_banner` */

LOCK TABLES `boc_banner` WRITE;

insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (1,2,0,1,1,0,0,NULL,'倡导绿色环保科学高效','','','  ','','  一家集研发、制造、市场为一体的具有世界先进水平的大型化、成套化、上下游一体化的以生产新型“三药”及“三药”中间体为主的国家高新技术企业',1448522073,NULL,0,0,'1','2015/11/26/thumbnail/14485220954623t0lck.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (2,10,0,2,1,0,0,NULL,'演讲比赛','Speech contest','','  ','',NULL,1448522642,NULL,0,0,'129','2015/11/30/thumbnail/14488603904274ssk4z.jpg','120',NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (3,10,0,3,1,0,0,NULL,'元旦晚会舞蹈','Dance','','  ','',NULL,1448522648,NULL,0,0,'127','2015/11/30/thumbnail/14488603733249rn497.jpg','119',NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (4,14,0,4,1,0,0,NULL,'工厂里的标语',NULL,'','  ','',NULL,1448522655,NULL,0,0,'11','2015/11/26/thumbnail/14485226579664h3ha6.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (5,11,0,5,1,0,0,NULL,'价值观',NULL,'','  ','',' 内圣外王，诚信诚实，内方外圆，合作共赢。',1448522666,NULL,0,0,'12','2015/11/26/thumbnail/14485226746755i8x5x.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (6,11,0,6,1,0,0,NULL,'愿景',NULL,'','  ','','成为全球绿色环保型杂环类“三药”及“三药”中间体的领导者。',1448522676,NULL,0,0,'13','2015/11/26/thumbnail/14485226794446kr1bj.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (7,11,0,7,1,0,0,NULL,'使命',NULL,'','  ','','提供绿色环保优质高效杂环类“三药”及“三药”中间体的产品和服务。',1448522681,NULL,0,0,'14','2015/11/26/thumbnail/144852268376398yb2f.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (22,24,0,21,1,0,1,NULL,'MPC反应釜',NULL,'','  ','',NULL,1448537774,NULL,0,0,'37','2015/11/26/thumbnail/1448537809224wtro4.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (8,24,0,8,1,0,2,NULL,'固废焚烧炉验',NULL,'','  ','',NULL,1448522920,NULL,0,0,'15','2015/11/26/thumbnail/1448522933913h4ckn.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (9,24,0,9,1,0,2,NULL,'乙二醇机',NULL,'','  ','',NULL,1448522961,NULL,0,0,'16','2015/11/26/thumbnail/1448522967006mmeef.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (10,24,0,10,1,0,1,NULL,'质量改进实验',NULL,'','  ','',NULL,1448522978,NULL,0,0,'17','2015/11/26/thumbnail/14485229828987qy1uy.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (11,24,0,11,1,0,1,NULL,'空压机',NULL,'','  ','',NULL,1448522990,NULL,0,0,'18','2015/11/26/thumbnail/1448522992778vz8on.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (12,29,0,12,1,0,0,NULL,'安全标语',NULL,'','  ','',NULL,1448523309,NULL,0,0,'56','2015/11/28/thumbnail/14486897797066i83jc.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (13,29,0,13,1,0,0,NULL,'第三次安全委员会会议',NULL,'','  ','',NULL,1448523314,NULL,0,0,'55','2015/11/28/thumbnail/144868974807737co30.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (35,29,0,34,1,0,0,NULL,'安全标语',NULL,'','  ','',NULL,1448689785,NULL,0,0,'57','2015/11/28/thumbnail/1448689789684n8avj.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (14,32,0,14,1,0,0,NULL,'氨回收塔',NULL,'','  ','',NULL,1448523322,NULL,0,0,'77','2015/11/28/thumbnail/14486912610776pqirm.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (15,32,0,15,1,0,0,NULL,'培训',NULL,'','  ','',NULL,1448523326,NULL,0,0,'76','2015/11/28/thumbnail/144869124370449aqgm.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (51,32,0,50,1,0,0,NULL,'百草枯焚烧炉',NULL,'','  ','',NULL,1448691265,NULL,0,0,'78','2015/11/28/thumbnail/1448691269192806k8d.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (17,42,0,16,1,0,4,NULL,'有机磷农药',NULL,'','  ','',NULL,1448523813,NULL,0,0,'53','2015/11/28/thumbnail/14486883664742ukarb.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (18,42,0,17,1,0,4,NULL,'有机磷农药',NULL,'','  ','',NULL,1448523834,NULL,0,0,'51','2015/11/28/thumbnail/14486883486857w4iyc.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (19,42,0,18,1,0,4,NULL,'有机磷农药',NULL,'','  ','',NULL,1448523838,NULL,0,0,'50','2015/11/28/thumbnail/14486883352162j7dtz.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (34,42,0,33,1,0,3,NULL,'吡啶碱产业链',NULL,'','  ','',NULL,1448688372,NULL,0,0,'54','2015/11/28/thumbnail/14486883783355s74gz.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (20,51,0,19,1,0,0,NULL,'班组培训',NULL,'','  ','',NULL,1448524118,NULL,0,0,'49','2015/11/27/thumbnail/14486045814696a8jn1.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (21,17,0,20,1,0,0,NULL,'建行领导参观',NULL,'','  ','',NULL,1448537187,NULL,0,0,'134','2015/12/02/thumbnail/14490653845285catx7.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (23,51,0,22,1,0,0,NULL,'第三职会拔河比赛',NULL,'','  ','',NULL,1448603153,NULL,0,0,'48','2015/11/27/thumbnail/1448604572729l05r1.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (24,51,0,23,1,0,0,NULL,'观看抗战胜利70周年大阅兵',NULL,'','  ','',NULL,1448603158,NULL,0,0,'47','2015/11/27/thumbnail/14486045660753368np.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (25,51,0,24,1,0,0,NULL,'篮球赛',NULL,'','  ','',NULL,1448603163,NULL,0,0,'46','2015/11/27/thumbnail/1448604558727s9o6g.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (26,51,0,25,1,0,0,NULL,'新员工军事化训练',NULL,'','  ','',NULL,1448603170,NULL,0,0,'45','2015/11/27/thumbnail/14486045517432e5f4w.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (27,51,0,26,1,0,0,NULL,'演讲比赛',NULL,'','  ','',NULL,1448603176,NULL,0,0,'44','2015/11/27/thumbnail/14486045450231ij63v.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (28,51,0,27,1,0,0,NULL,'元旦晚会舞蹈',NULL,'','  ','',NULL,1448603178,NULL,0,0,'43','2015/11/27/thumbnail/144860453663537344l.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (29,51,0,28,1,0,0,NULL,'元旦晚会小品',NULL,'','  ','',NULL,1448603184,NULL,0,0,'42','2015/11/27/thumbnail/1448604526964622fsd.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (30,51,0,29,1,0,0,NULL,'运动会女子赛跑',NULL,'','  ','',NULL,1448603188,NULL,0,0,'41','2015/11/27/thumbnail/14486045178265vcjde.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (31,51,0,30,1,0,0,NULL,'职工健身房照片',NULL,'','  ','',NULL,1448603193,NULL,0,0,'40','2015/11/27/thumbnail/14486045101524hqtuu.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (32,51,0,31,1,0,0,NULL,'质量月知识竞赛',NULL,'','  ','',NULL,1448603197,NULL,0,0,'39','2015/11/27/thumbnail/144860450192059iffd.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (33,51,0,32,1,0,0,NULL,'足球赛',NULL,'','  ','',NULL,1448603201,NULL,0,0,'38','2015/11/27/thumbnail/14486044941972vwoet.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (36,29,0,35,1,0,0,NULL,'安全标语',NULL,'','  ','',NULL,1448689792,NULL,0,0,'58','2015/11/28/thumbnail/144868979542664k8zv.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (37,29,0,36,1,0,0,NULL,'安全会议',NULL,'','  ','',NULL,1448689797,NULL,0,0,'60','2015/11/28/thumbnail/144868989207327x93s.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (38,29,0,37,1,0,0,NULL,'安全生产月',NULL,'','  ','',NULL,1448689900,NULL,0,0,'62','2015/11/28/thumbnail/14486899222753lzd3f.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (39,29,0,38,1,0,0,NULL,'安全文化看板',NULL,'','  ','',NULL,1448689925,NULL,0,0,'63','2015/11/28/thumbnail/14486899297683h44nz.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (40,29,0,39,1,0,0,NULL,'安全文化看板',NULL,'','  ','',NULL,1448689931,NULL,0,0,'64','2015/11/28/thumbnail/14486899340442147t2.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (41,29,0,40,1,0,0,NULL,'安全文化看板',NULL,'','  ','',NULL,1448689936,NULL,0,0,'65','2015/11/28/thumbnail/1448689938357cijg.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (42,29,0,41,1,0,0,NULL,'安全消防演练',NULL,'','  ','',NULL,1448689979,NULL,0,0,'67','2015/11/28/thumbnail/14486900375727lb60b.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (43,29,0,42,1,0,0,NULL,'安全知识竞赛',NULL,'','  ','',NULL,1448690039,NULL,0,0,'68','2015/11/28/thumbnail/14486900451858wq9hl.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (44,29,0,43,1,0,0,NULL,'参加马鞍山市安全演练',NULL,'','  ','',NULL,1448690047,NULL,0,0,'69','2015/11/28/thumbnail/14486900535995pnbyc.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (45,29,0,44,1,0,0,NULL,'董事长进行公司安全检查',NULL,'','  ','',NULL,1448690055,NULL,0,0,'70','2015/11/28/thumbnail/144869006012563rkie.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (46,29,0,45,1,0,0,NULL,'可燃气体探测器',NULL,'','  ','',NULL,1448690063,NULL,0,0,'71','2015/11/28/thumbnail/14486900683557wo4y5.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (47,29,0,46,1,0,0,NULL,'危化品泄漏演练',NULL,'','  ','',NULL,1448690070,NULL,0,0,'72','2015/11/28/thumbnail/14486900756855stci7.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (48,29,0,47,1,0,0,NULL,'消防设备',NULL,'','  ','',NULL,1448690079,NULL,0,0,'73','2015/11/28/thumbnail/14486900830364l8whz.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (49,29,0,48,1,0,0,NULL,'消防运动会',NULL,'','  ','',NULL,1448690085,NULL,0,0,'74','2015/11/28/thumbnail/14486900908712zunij.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (50,29,0,49,1,0,0,NULL,'危化品泄漏演练',NULL,'','  ','',NULL,1448690192,NULL,0,0,'75','2015/11/28/thumbnail/14486901969274axljf.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (52,32,0,51,1,0,0,NULL,'吡啶焚烧炉',NULL,'','  ','',NULL,1448691271,NULL,0,0,'79','2015/11/28/thumbnail/14486912759834zhhup.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (53,32,0,52,1,0,0,NULL,'吡啶尾气吸收塔',NULL,'','  ','',NULL,1448691278,NULL,0,0,'80','2015/11/28/thumbnail/14486912824821d3qdq.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (54,32,0,53,1,0,0,NULL,'吡啶尾气吸收塔',NULL,'','  ','',NULL,1448691284,NULL,0,0,'81','2015/11/28/thumbnail/14486912877757xmtju.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (55,32,0,54,1,0,0,NULL,'环保治理中心',NULL,'','  ','',NULL,1448691289,NULL,0,0,'82','2015/11/28/thumbnail/1448691293894fxqno.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (56,32,0,55,1,0,0,NULL,'甲乙醛焚烧炉',NULL,'','  ','',NULL,1448691296,NULL,0,0,'83','2015/11/28/thumbnail/14486912999752e8or0.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (57,32,0,56,1,0,0,NULL,'氯气吸收塔',NULL,'','  ','',NULL,1448695232,NULL,0,0,'84','2015/11/28/thumbnail/1448695239071foec2.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (58,32,0,57,1,0,0,NULL,'污水处理中心',NULL,'','  ','',NULL,1448695241,NULL,0,0,'85','2015/11/28/thumbnail/1448695245848wibyv.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (59,32,0,58,1,0,0,NULL,'新项目评估会',NULL,'','  ','',NULL,1448695247,NULL,0,0,'86','2015/11/28/thumbnail/14486952525216amkhx.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (60,32,0,59,1,0,0,NULL,'与大唐电厂进行通气测试',NULL,'','  ','',NULL,1448695254,NULL,0,0,'87','2015/11/28/thumbnail/1448695259547368aiy.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (61,32,0,60,1,0,0,NULL,'园林化工厂',NULL,'','  ','',NULL,1448695261,NULL,0,0,'88','2015/11/28/thumbnail/14486952660322ku120.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (62,32,0,61,1,0,0,NULL,'园林化工厂',NULL,'','  ','',NULL,1448695268,NULL,0,0,'89','2015/11/28/thumbnail/144869527225181ny5c.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (63,32,0,62,1,0,0,NULL,'园林化工厂',NULL,'','  ','',NULL,1448695274,NULL,0,0,'90','2015/11/28/thumbnail/14486952815929wc2t.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (64,32,0,63,1,0,0,NULL,'园林化工厂',NULL,'','  ','',NULL,1448695283,NULL,0,0,'91','2015/11/28/thumbnail/14486952866024cey8f.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (65,32,0,64,1,0,0,NULL,'在线监测仪',NULL,'','  ','',NULL,1448695288,NULL,0,0,'92','2015/11/28/thumbnail/14486952913791ex1wj.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (66,10,0,65,1,0,0,NULL,'小品','Sketch','','  ','',NULL,1448697077,NULL,0,0,'126','2015/11/30/thumbnail/14488603663501v0epo.jpg','118',NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (67,10,0,66,1,0,0,NULL,'健身房','Gym','','  ','',NULL,1448697182,NULL,0,0,'125','2015/11/30/thumbnail/1448860356879180pdg.jpg','116',NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (68,10,0,67,1,0,0,NULL,'知识竞赛','Knowledge contest','','  ','',NULL,1448697190,NULL,0,0,'124','2015/11/30/thumbnail/14488603459896p66l1.jpg','115',NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (69,10,0,68,1,0,0,NULL,'足球比赛','play football','','  ','',NULL,1448697206,NULL,0,0,'123','2015/11/30/thumbnail/14488603367522hfap1.jpg','114',NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (70,17,0,69,1,0,0,NULL,'九三学社来访',NULL,'','  ','',NULL,1448699922,NULL,0,0,'133','2015/12/02/thumbnail/14490653657449h18oh.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (71,17,0,70,1,0,0,NULL,'宁夏县领导来访',NULL,'','  ','',NULL,1448699933,NULL,0,0,'132','2015/12/02/thumbnail/144906534068365z8uz.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (72,17,0,71,1,0,0,NULL,'清华博士代表团来访',NULL,'','  ','',NULL,1448699941,NULL,0,0,'131','2015/12/02/thumbnail/14490652541133my70z.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (73,10,0,72,1,0,0,NULL,'拔河比赛','Tug of war','','  ','',NULL,1448785168,NULL,0,0,'122','2015/11/30/thumbnail/144886032745279qeak.jpg','113',NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (74,10,0,73,1,0,0,NULL,'篮球比赛','Play basketball','','  ','',NULL,1448785186,NULL,0,0,'121','2015/11/30/thumbnail/144886031059488kgea.jpg','112',NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (76,17,0,74,1,0,0,NULL,'费孝通',NULL,'','  ','',NULL,1449065387,NULL,0,0,'135','2015/12/02/thumbnail/144906540204929ql96.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (77,17,0,75,1,0,0,NULL,'阿根廷总统',NULL,'','  ','',NULL,1449065403,NULL,0,0,'136','2015/12/02/thumbnail/14490654271312lb3l6.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (78,17,0,76,1,0,0,NULL,'杨华春',NULL,'','  ','',NULL,1449065433,NULL,0,0,'137','2015/12/02/thumbnail/14490654497786ogmnj.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (79,17,0,77,1,0,0,NULL,'马鞍山市市委调研',NULL,'','  ','',NULL,1449065451,NULL,0,0,'138','2015/12/02/thumbnail/14490654699705xijbg.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (80,17,0,78,1,0,0,NULL,'商务部来访',NULL,'','  ','',NULL,1449065471,NULL,0,0,'139','2015/12/02/thumbnail/14490654937857usp89.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (81,17,0,79,1,0,0,NULL,'瑞利公司来访',NULL,'','  ','',NULL,1449065496,NULL,0,0,'140','2015/12/02/thumbnail/14490655286635tdffz.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (82,17,0,80,1,0,0,NULL,'南京市委书记朱善璐在我集团调研学习实践科学发展观活动',NULL,'','  ','',NULL,1449065530,NULL,0,0,'141','2015/12/02/thumbnail/14490655555713y125y.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (83,17,0,81,1,0,0,NULL,'省委书记王金山来访',NULL,'','  ','',NULL,1449065557,NULL,0,0,'142','2015/12/02/thumbnail/14490655720641hp017.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (84,17,0,82,1,0,0,NULL,'8',NULL,'','  ','',NULL,1449065573,NULL,0,0,'143','2015/12/02/thumbnail/14490656090059u3inn.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (85,17,0,83,1,0,0,NULL,'原安徽省省长王学军调研',NULL,'','  ','',NULL,1449065625,NULL,0,0,'144','2015/12/02/thumbnail/144906564653562l6nj.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (86,17,0,84,1,0,0,NULL,'全国人大常委会副委员长顾秀莲为杨寿海颁发中国农村新闻人物证书',NULL,'','  ','',NULL,1449065648,NULL,0,0,'145','2015/12/02/thumbnail/1449065661800194hod.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (87,17,0,85,1,0,0,NULL,'全国政协主席贾庆亲切会见红太阳集团董事长杨寿海林',NULL,'','  ','',NULL,1449065663,NULL,0,0,'146','2015/12/02/thumbnail/1449065689556t3yb1.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (88,17,0,86,1,0,0,NULL,'最高人民法院院长、党组书记周强会见集团董事长杨寿海',NULL,'','  ','',NULL,1449065691,NULL,0,0,'147','2015/12/02/thumbnail/14490657971666xsioe.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (89,17,0,87,1,0,0,NULL,'中央政治局委员、国家副主席李源朝来红太阳视察1',NULL,'','  ','',NULL,1449065798,NULL,0,0,'148','2015/12/02/thumbnail/1449065831305h2eyw.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (90,17,0,88,1,0,0,NULL,'杨寿海受到江泽民、温家宝等党和国家领导人的亲切接见。（第四排左起第八人）(96年9月27日）',NULL,'','  ','',NULL,1449065833,NULL,0,0,'149','2015/12/02/thumbnail/14490658631709795uy.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (91,17,0,89,1,0,0,NULL,'杨寿海陪同国务院副总理汪洋出访俄罗斯',NULL,'','  ','',NULL,1449065865,NULL,0,0,'150','2015/12/02/thumbnail/144906588876570t56h.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (92,17,0,90,1,0,0,NULL,'县委四套班子来访',NULL,'','  ','',NULL,1449065890,NULL,0,0,'151','2015/12/02/thumbnail/14490659016583ertbv.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (94,57,0,92,1,0,0,NULL,'大合唱活动',NULL,'','  ','',NULL,1450057937,NULL,0,0,'157','2015/12/14/thumbnail/14500917714411vp5h9.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (95,57,0,93,1,0,0,NULL,'党支部日常例会',NULL,'','  ','',NULL,1450091778,NULL,0,0,'158','2015/12/14/thumbnail/14500917819113iqdty.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (96,57,0,94,1,0,0,NULL,'党支部学习交流会议',NULL,'','  ','',NULL,1450091785,NULL,0,0,'159','2015/12/14/thumbnail/1450091789423bnfs8.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (97,57,0,95,1,0,0,NULL,'第一孵化中心揭牌',NULL,'','  ','',NULL,1450091792,NULL,0,0,'160','2015/12/14/thumbnail/14500917990438xnm4x.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (98,57,0,96,1,0,0,NULL,'红色根据地学习',NULL,'','  ','',NULL,1450091801,NULL,0,0,'161','2015/12/14/thumbnail/14500918058937fz18r.jpg',NULL,NULL);
insert  into `boc_banner`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (99,57,0,97,1,0,0,NULL,'无偿献血',NULL,'','  ','',NULL,1450091807,NULL,0,0,'162','2015/12/14/thumbnail/14500918119345wagcl.jpg',NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `boc_coltypes` */

DROP TABLE IF EXISTS `boc_coltypes`;

CREATE TABLE `boc_coltypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `sort_id` int(11) NOT NULL COMMENT '排序id',
  `fid` int(11) NOT NULL COMMENT '父类型',
  `depth` int(3) NOT NULL COMMENT '深度',
  `cid` int(4) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `name` varchar(30) NOT NULL DEFAULT 'ctype' COMMENT '表单名称，分类标志，单个栏目多个类型时',
  `title` varchar(30) NOT NULL COMMENT '标题类型',
  `identify` varchar(30) NOT NULL COMMENT '标记',
  `photo` varchar(30) NOT NULL COMMENT '图片',
  `thumb` varchar(200) NOT NULL COMMENT '缩略图',
  `show` int(1) NOT NULL DEFAULT '1' COMMENT '显示',
  `content` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `boc_coltypes` */

LOCK TABLES `boc_coltypes` WRITE;

insert  into `boc_coltypes`(`id`,`sort_id`,`fid`,`depth`,`cid`,`name`,`title`,`identify`,`photo`,`thumb`,`show`,`content`) values (1,1,0,0,24,'ctype','图片尺寸[297*272]','','','',1,NULL);
insert  into `boc_coltypes`(`id`,`sort_id`,`fid`,`depth`,`cid`,`name`,`title`,`identify`,`photo`,`thumb`,`show`,`content`) values (2,2,0,0,24,'ctype','图片尺寸[431*272]','','','',1,NULL);
insert  into `boc_coltypes`(`id`,`sort_id`,`fid`,`depth`,`cid`,`name`,`title`,`identify`,`photo`,`thumb`,`show`,`content`) values (3,3,0,0,42,'ctype','吡啶碱产业链','','26','2015/11/26/thumbnail/14485236650644dnn9a.jpg',1,'国星生化围绕吡啶碱产品上下游开发，形成吡啶碱产业链：其中吡啶碱产品被称为“三药”芯片，为国家“十一五”重点攻关项目、国家火炬计划项目，公司完全拥有自主知识产权，并拥有四项发明专利。该项目突破了长期制约中国重要杂环类“三药”的发展瓶颈，打破了美国人垄断了半个多世纪的局面，推动了中国“三药”及“三药”中间体产品结构的调整。目前吡啶碱系列产品质量达到国际先进水平，我们的产品不仅控制了全球近40%的市场份额，而且取得了国家标准的制定权和国际市场的话语权。 ');
insert  into `boc_coltypes`(`id`,`sort_id`,`fid`,`depth`,`cid`,`name`,`title`,`identify`,`photo`,`thumb`,`show`,`content`) values (4,4,0,0,42,'ctype','有机磷产业链','','27','2015/11/26/thumbnail/14485238087543xfxuc.jpg',1,'有机磷农药产业链是国星生化、乃至世界最重要的环保农药产业链，随着高毒农药的禁止使用，有机磷环保农药成为高毒农药的最佳替代品，国星生化将有机磷产业链开发作为首要任务，打破国外对有机磷环保农药的垄断，克服生产工艺复杂、设备要求高的困难，采用废水循环套用的清洁水相法建设年产两万吨的毒死蜱项目、采用IDA法建设的草甘膦原粉项目及生物法合成的L-草铵膦项目等，实现千万利润的同时保证了绿色生产。');

UNLOCK TABLES;

/*Table structure for table `boc_columns` */

DROP TABLE IF EXISTS `boc_columns`;

CREATE TABLE `boc_columns` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `sort_id` int(4) DEFAULT NULL COMMENT '排序',
  `parent_id` int(4) NOT NULL DEFAULT '0' COMMENT '父标识(col id)',
  `depth` int(4) NOT NULL DEFAULT '1' COMMENT '深度',
  `identify` tinytext NOT NULL COMMENT 'url唯一标记(word or link)',
  `path` tinytext NOT NULL COMMENT 'urlpath',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext COMMENT '优化标题',
  `tags` tinytext COMMENT '标签',
  `intro` text COMMENT '简介',
  `mid` int(2) NOT NULL COMMENT '模型标识(Model id)',
  `temp_index` varchar(50) DEFAULT NULL COMMENT '前台模板栏目index',
  `temp_show` varchar(50) DEFAULT NULL COMMENT '内容展示模板show',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0删除 1正常',
  `show` int(1) NOT NULL DEFAULT '1' COMMENT '0隐藏 1正常',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='栏目';

/*Data for the table `boc_columns` */

LOCK TABLES `boc_columns` WRITE;

insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (1,1,0,0,'welcome','/welcome','首页','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (2,2,1,1,'banner','welcome/banner','banner图','','','',11,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (3,3,1,1,'video','welcome/video','视频','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (4,4,0,0,'about','/about','走进国星','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (5,5,4,1,'jtintroduct','about/jtintroduct','集团介绍','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (6,6,4,1,'about','about/about','公司简介','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (7,7,4,1,'leader','about/leader','领导风采','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (8,8,4,1,'employee','about/employee','员工风采','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (9,9,8,2,'intro','about/employee/intro','员工风采简介','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (10,10,8,2,'list','about/employee/list','员工风采展示','','','',11,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (11,11,4,1,'culture','about/culture','企业文化','','','',11,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (12,12,4,1,'party','about/party','党群建设','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (13,13,12,2,'intro','about/party/intro','党群建设简介','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (14,14,12,2,'list','about/party/list','党群建设','','','',3,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (15,15,4,1,'superior','about/superior','上级关怀','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (16,16,15,2,'intro','about/superior/intro','上级关怀简介','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (17,17,15,2,'list','about/superior/list','上级关怀详细','','','',11,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (18,18,0,0,'research','/research','技术创新','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (19,19,18,1,'product','research/product','产品研发','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (20,20,19,2,'lefe','research/product/lefe','左','产品研发','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (21,21,19,2,'right','research/product/right','右','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (22,22,18,1,'tec','research/tec','工艺优化','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (23,23,22,2,'intro','research/tec/intro','工艺优化简介','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (24,24,22,2,'list','research/tec/list','工艺优化','','','',11,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (25,25,18,1,'palt','research/palt','平台建设','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (26,26,0,0,'soft','/soft','可持续发展','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (27,27,26,1,'soft','soft/soft','安全','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (28,28,27,2,'intro','soft/soft/intro','安全简介','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (29,29,27,2,'list','soft/soft/list','安全展示','','','',11,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (30,30,26,1,'develophb','soft/develophb','环保','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (31,31,30,2,'intro','soft/develophb/intro','环保简介','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (32,32,30,2,'list','soft/develophb/list','环保展示','','','',11,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (33,33,26,1,'gy','soft/gy','关于公益','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (34,34,33,2,'intro','soft/gy/intro','公益简介','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (35,35,33,2,'list','soft/gy/list','公益','','','',3,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (36,36,26,1,'energy','soft/energy','节能减排','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (37,37,36,2,'intro','soft/energy/intro','节能减排简介','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (38,38,36,2,'list','soft/energy/list','节能减排','','','',3,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (39,39,0,0,'product','/product','制造国星','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (40,40,39,1,'product','product/product','产品中心','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (41,41,40,2,'intro','product/product/intro','产品简介','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (42,42,40,2,'product','product/product/product','产品中心','','','',11,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (43,43,39,1,'quality','product/quality','品质中心','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (44,44,0,0,'partners','/partners','合作伙伴','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (45,45,44,1,'gk','partners/gk','顾客','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (46,46,44,1,'zl','partners/zl','战略供应商','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (47,47,0,0,'hr','/hr','人力资源','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (48,48,47,1,'job','hr/job','人才招聘','','','',10,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (49,49,47,1,'ln','hr/ln','人才理念','','','',14,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (50,50,49,2,'intro','hr/ln/intro','人才理念简介','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (51,51,49,2,'list','hr/ln/list','人才理念','','','',11,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (52,52,47,1,'py','hr/py','人才培养','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (53,53,0,0,'link','/link','友情链接','','','',1,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (54,54,22,2,'sc','research/tec/sc','生产工艺和环保技术附件','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (55,55,19,2,'pic','research/product/pic','底图','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (56,56,19,2,'intro','research/product/intro','简介','','','',8,'','',1,1);
insert  into `boc_columns`(`id`,`sort_id`,`parent_id`,`depth`,`identify`,`path`,`title`,`title_seo`,`tags`,`intro`,`mid`,`temp_index`,`temp_show`,`status`,`show`) values (57,57,12,2,'pic','about/party/pic','党群建设图片','','','',11,'','',1,1);

UNLOCK TABLES;

/*Table structure for table `boc_configs` */

DROP TABLE IF EXISTS `boc_configs`;

CREATE TABLE `boc_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL COMMENT '分类',
  `key` varchar(30) NOT NULL COMMENT '键值',
  `value` tinytext NOT NULL COMMENT '值',
  `label` varchar(100) NOT NULL COMMENT '标题',
  `intor` tinytext COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='配置';

/*Data for the table `boc_configs` */

LOCK TABLES `boc_configs` WRITE;

insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (1,1,'adminer','title_suffix','安徽国星生物化学有限公司','标题后缀','后端标题栏显示内容的后缀.');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (2,9,'site','copyright','Copyright 2014','CopyRight','站点版权内容!');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (3,8,'site','email','mail@mail.com','联系邮箱','网站联系人');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (4,4,'site','title_suffix','安徽国星生物化学有限公司','公司名称|品牌名称','前台站点标题的后缀优化');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (5,5,'site','title_seo','','首页标题[Title]','网站首页优化标题');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (6,6,'site','tags','安徽国星生物化学有限公司','关键词[Keywords]','网站首页关键词设定，使用`,`来间隔标签.');
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (7,7,'site','intro','安徽国星生物化学有限公司','站点描述[Description]','网站首页描述');
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
insert  into `boc_configs`(`id`,`sort_id`,`category`,`key`,`value`,`label`,`intor`) values (18,2,'upload','inline_file_types','gif|jpe?g|png|doc?|mp?|zip|pdf|flv|docx|pdf|rar|zip','上传后缀过滤','文件类型的上传');
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) DEFAULT NULL COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `type_id` int(11) DEFAULT NULL COMMENT '分类',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '详细内容',
  `answer` text COMMENT '回答问题',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci DEFAULT NULL COMMENT '传真',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `addr` varchar(100) DEFAULT NULL COMMENT '地址',
  `solve` int(1) DEFAULT '0' COMMENT '解决',
  `show` int(1) DEFAULT NULL COMMENT '是否显示',
  `timeline` int(11) DEFAULT NULL COMMENT '发布时间',
  `timeline_answer` int(11) DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='反馈';

/*Data for the table `boc_feedback` */

LOCK TABLES `boc_feedback` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_files` */

DROP TABLE IF EXISTS `boc_files`;

CREATE TABLE `boc_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` tinytext NOT NULL COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `photoinfo` tinytext COMMENT '详细图片',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表';

/*Data for the table `boc_files` */

LOCK TABLES `boc_files` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_gallery` */

DROP TABLE IF EXISTS `boc_gallery`;

CREATE TABLE `boc_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `photoinfo` tinytext COMMENT '详细图片',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='期刊表';

/*Data for the table `boc_gallery` */

LOCK TABLES `boc_gallery` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_honor` */

DROP TABLE IF EXISTS `boc_honor`;

CREATE TABLE `boc_honor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` tinytext NOT NULL COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `photoinfo` tinytext COMMENT '详细图片',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='企业荣誉表';

/*Data for the table `boc_honor` */

LOCK TABLES `boc_honor` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_links` */

DROP TABLE IF EXISTS `boc_links`;

CREATE TABLE `boc_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` tinytext NOT NULL COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `photoinfo` tinytext COMMENT '详细图片',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

/*Data for the table `boc_links` */

LOCK TABLES `boc_links` WRITE;

insert  into `boc_links`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (1,53,0,1,1,0,0,NULL,'浙江永农化工有限公司','http://www.yongnongchem.com/','','  ','',NULL,1448524225,0,0,NULL,NULL,NULL,NULL);
insert  into `boc_links`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (2,53,0,2,1,0,0,NULL,'衢州申亚化工贸易有限公司','','','  ','',NULL,1448789700,0,0,NULL,NULL,NULL,NULL);
insert  into `boc_links`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (3,53,0,3,1,0,0,NULL,'山东科信生物化学有限公司','http://www.kissunchem.com.cn/','','  ','',NULL,1448789720,0,0,NULL,NULL,NULL,NULL);
insert  into `boc_links`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (4,53,0,4,1,0,0,NULL,'南京诺达丰化工有限公司','','','  ','',NULL,1448789736,0,0,NULL,NULL,NULL,NULL);
insert  into `boc_links`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (5,53,0,5,1,0,0,NULL,'南京江宁区化学工业园','','','  ','',NULL,1448789747,0,0,NULL,NULL,NULL,NULL);
insert  into `boc_links`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (6,53,0,6,1,0,0,NULL,'成都佛伦德进出口贸易有限责任公司','','','  ','',NULL,1448789759,0,0,NULL,NULL,NULL,NULL);
insert  into `boc_links`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (7,53,0,7,1,0,0,NULL,'南通立洋化学有限公司','','','  ','',NULL,1448789764,0,0,NULL,NULL,NULL,NULL);
insert  into `boc_links`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (8,53,0,8,1,0,0,NULL,'中化塑料有限公司','','','  ','',NULL,1448789779,0,0,NULL,NULL,NULL,NULL);
insert  into `boc_links`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (9,53,0,9,1,0,0,NULL,'南京前沿化工有限公司','http://www.leading-chem.com/','','  ','',NULL,1448789783,0,0,NULL,NULL,NULL,NULL);
insert  into `boc_links`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (10,53,0,10,1,0,0,NULL,'乐平永鑫化工有限公司','http://yongxin.nbchem.com/','','  ','',NULL,1448789785,0,0,NULL,NULL,NULL,NULL);
insert  into `boc_links`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`attachment`) values (11,53,0,11,1,0,0,NULL,'南通醋酸化工股份有限公司','http://www.yinglecn.com/','','  ','',NULL,1448789789,0,0,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `boc_lists` */

DROP TABLE IF EXISTS `boc_lists`;

CREATE TABLE `boc_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `cid` int(4) NOT NULL COMMENT '栏目 id',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) NOT NULL COMMENT '排序',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `title` tinytext COMMENT '小标题',
  `content` text COMMENT '内容',
  `timeline` int(11) NOT NULL COMMENT '时间线',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小列表';

/*Data for the table `boc_lists` */

LOCK TABLES `boc_lists` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_log` */

DROP TABLE IF EXISTS `boc_log`;

CREATE TABLE `boc_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(50) NOT NULL,
  `url` mediumtext NOT NULL COMMENT '控制器',
  `category` varchar(50) NOT NULL DEFAULT '' COMMENT '级别: 1 view,2update,add,3,del',
  `message` tinytext NOT NULL COMMENT '备注',
  `mid` int(6) NOT NULL COMMENT '操作人',
  `ip` varchar(20) NOT NULL COMMENT 'IP地址',
  `timeline` int(11) NOT NULL COMMENT '时间线',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=525 DEFAULT CHARSET=utf8 COMMENT='操作日志';

/*Data for the table `boc_log` */

LOCK TABLES `boc_log` WRITE;

insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (1,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448522031);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (2,'banner','/guoxing/bocadmin/index.php/banner/create?c=2','create','添加数据id:1',1,'115.238.95.194',1448522096);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (3,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：1为1',1,'115.238.95.194',1448522099);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (4,'video','/guoxing/bocadmin/index.php/video/create?c=3','create','添加数据id:1',1,'115.238.95.194',1448522134);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (5,'configs','/guoxing/bocadmin/index.php/configs/set','edit','修改配置adminer.title_suffix:安徽国星生物化学有限公司',1,'115.238.95.194',1448522153);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (6,'configs','/guoxing/bocadmin/index.php/configs/set','edit','修改配置site.title_suffix:安徽国星生物化学有限公司',1,'115.238.95.194',1448522154);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (7,'configs','/guoxing/bocadmin/index.php/configs/set','edit','修改配置site.intro:安徽国星生物化学有限公司',1,'115.238.95.194',1448522158);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (8,'configs','/guoxing/bocadmin/index.php/configs/set','edit','修改配置site.tags:安徽国星生物化学有限公司',1,'115.238.95.194',1448522158);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (9,'video','/guoxing/bocadmin/index.php/video/audit?c=3','audit','审核数据ID：1为1',1,'115.238.95.194',1448522167);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (10,'page','/guoxing/bocadmin/index.php/page/edit?c=5','update','更新数据id:1',1,'115.238.95.194',1448522262);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (11,'page','/guoxing/bocadmin/index.php/page/edit?c=6','update','更新数据id:2',1,'115.238.95.194',1448522339);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (12,'page','/guoxing/bocadmin/index.php/page/edit?c=7','update','更新数据id:3',1,'115.238.95.194',1448522401);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (13,'page','/guoxing/bocadmin/index.php/page/edit?c=9','update','更新数据id:6',1,'115.238.95.194',1448522622);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (14,'page','/guoxing/bocadmin/index.php/page/edit?c=13','update','更新数据id:5',1,'115.238.95.194',1448522626);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (15,'page','/guoxing/bocadmin/index.php/page/edit?c=16','update','更新数据id:4',1,'115.238.95.194',1448522630);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (16,'banner','/guoxing/bocadmin/index.php/banner/create?c=10','create','添加数据id:2',1,'115.238.95.194',1448522647);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (17,'banner','/guoxing/bocadmin/index.php/banner/create/?c=10','create','添加数据id:3',1,'115.238.95.194',1448522651);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (18,'banner','/guoxing/bocadmin/index.php/banner/create?c=14','create','添加数据id:4',1,'115.238.95.194',1448522658);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (19,'banner','/guoxing/bocadmin/index.php/banner/audit?c=14','audit','审核数据ID：4为1',1,'115.238.95.194',1448522660);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (20,'banner','/guoxing/bocadmin/index.php/banner/audit?c=10','audit','审核数据ID：3为1',1,'115.238.95.194',1448522663);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (21,'banner','/guoxing/bocadmin/index.php/banner/audit?c=10','audit','审核数据ID：2为1',1,'115.238.95.194',1448522664);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (22,'banner','/guoxing/bocadmin/index.php/banner/create?c=11','create','添加数据id:5',1,'115.238.95.194',1448522675);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (23,'banner','/guoxing/bocadmin/index.php/banner/create/?c=11','create','添加数据id:6',1,'115.238.95.194',1448522680);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (24,'banner','/guoxing/bocadmin/index.php/banner/create/?c=11','create','添加数据id:7',1,'115.238.95.194',1448522684);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (25,'banner','/guoxing/bocadmin/index.php/banner/audit?c=11','audit','审核数据ID：7为1',1,'115.238.95.194',1448522686);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (26,'banner','/guoxing/bocadmin/index.php/banner/audit?c=11','audit','审核数据ID：6为1',1,'115.238.95.194',1448522686);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (27,'banner','/guoxing/bocadmin/index.php/banner/audit?c=11','audit','审核数据ID：5为1',1,'115.238.95.194',1448522687);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (28,'banner','/guoxing/bocadmin/index.php/banner/edit/5?c=11','update','更新数据id:5',1,'115.238.95.194',1448522695);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (29,'banner','/guoxing/bocadmin/index.php/banner/edit/6?c=11','update','更新数据id:6',1,'115.238.95.194',1448522704);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (30,'banner','/guoxing/bocadmin/index.php/banner/edit/7?c=11','update','更新数据id:7',1,'115.238.95.194',1448522707);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (31,'page','/guoxing/bocadmin/index.php/page/edit?c=20','update','更新数据id:7',1,'115.238.95.194',1448522862);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (32,'page','/guoxing/bocadmin/index.php/page/edit?c=21','update','更新数据id:8',1,'115.238.95.194',1448522870);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (33,'page','/guoxing/bocadmin/index.php/page/edit?c=23','update','更新数据id:9',1,'115.238.95.194',1448522881);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (34,'coltypes','/guoxing/bocadmin/index.php/coltypes/create?cid=24&field=ctype&rc=banner','create','添加数据id:1',1,'115.238.95.194',1448522911);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (35,'coltypes','/guoxing/bocadmin/index.php/coltypes/create/?cid=24&field=ctype&rc=banner','create','添加数据id:2',1,'115.238.95.194',1448522917);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (36,'banner','/guoxing/bocadmin/index.php/banner/create?c=24','create','添加数据id:8',1,'115.238.95.194',1448522960);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (37,'banner','/guoxing/bocadmin/index.php/banner/create/?c=24','create','添加数据id:9',1,'115.238.95.194',1448522968);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (38,'banner','/guoxing/bocadmin/index.php/banner/edit/8?c=24','update','更新数据id:8',1,'115.238.95.194',1448522974);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (39,'banner','/guoxing/bocadmin/index.php/banner/create?c=24','create','添加数据id:10',1,'115.238.95.194',1448522983);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (40,'banner','/guoxing/bocadmin/index.php/banner/audit?c=24','audit','审核数据ID：10为1',1,'115.238.95.194',1448522985);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (41,'banner','/guoxing/bocadmin/index.php/banner/audit?c=24','audit','审核数据ID：9为1',1,'115.238.95.194',1448522985);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (42,'banner','/guoxing/bocadmin/index.php/banner/audit?c=24','audit','审核数据ID：8为1',1,'115.238.95.194',1448522986);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (43,'banner','/guoxing/bocadmin/index.php/banner/create?c=24','create','添加数据id:11',1,'115.238.95.194',1448522993);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (44,'banner','/guoxing/bocadmin/index.php/banner/audit?c=24','audit','审核数据ID：11为1',1,'115.238.95.194',1448522995);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (45,'page','/guoxing/bocadmin/index.php/page/edit?c=25','update','更新数据id:10',1,'115.238.95.194',1448523017);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (46,'page','/guoxing/bocadmin/index.php/page/edit?c=28','update','更新数据id:12',1,'115.238.95.194',1448523268);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (47,'page','/guoxing/bocadmin/index.php/page/edit?c=31','update','更新数据id:13',1,'115.238.95.194',1448523299);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (48,'banner','/guoxing/bocadmin/index.php/banner/create?c=29','create','添加数据id:12',1,'115.238.95.194',1448523313);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (49,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:13',1,'115.238.95.194',1448523317);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (50,'banner','/guoxing/bocadmin/index.php/banner/audit?c=29','audit','审核数据ID：13为1',1,'115.238.95.194',1448523319);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (51,'banner','/guoxing/bocadmin/index.php/banner/audit?c=29','audit','审核数据ID：12为1',1,'115.238.95.194',1448523319);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (52,'banner','/guoxing/bocadmin/index.php/banner/create?c=32','create','添加数据id:14',1,'115.238.95.194',1448523325);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (53,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:15',1,'115.238.95.194',1448523329);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (54,'banner','/guoxing/bocadmin/index.php/banner/audit?c=32','audit','审核数据ID：14为1',1,'115.238.95.194',1448523337);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (55,'banner','/guoxing/bocadmin/index.php/banner/audit?c=32','audit','审核数据ID：15为1',1,'115.238.95.194',1448523338);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (56,'page','/guoxing/bocadmin/index.php/page/edit?c=34','update','更新数据id:14',1,'115.238.95.194',1448523448);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (57,'page','/guoxing/bocadmin/index.php/page/edit?c=37','update','更新数据id:11',1,'115.238.95.194',1448523459);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (58,'article','/guoxing/bocadmin/index.php/article/create?c=35','create','添加数据id:1',1,'115.238.95.194',1448523475);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (59,'article','/guoxing/bocadmin/index.php/article/create/?c=35','create','添加数据id:2',1,'115.238.95.194',1448523479);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (60,'article','/guoxing/bocadmin/index.php/article/audit?c=35','audit','审核数据ID：2为1',1,'115.238.95.194',1448523481);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (61,'article','/guoxing/bocadmin/index.php/article/audit?c=35','audit','审核数据ID：1为1',1,'115.238.95.194',1448523482);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (62,'article','/guoxing/bocadmin/index.php/article/flag?c=35','flag','推荐数据ID：2为1',1,'115.238.95.194',1448523483);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (63,'banner','/guoxing/bocadmin/index.php/banner/create?c=38','create','添加数据id:16',1,'115.238.95.194',1448523492);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (64,'banner','/guoxing/bocadmin/index.php/banner/delete?c=38&ids=16','delete','删除数据id:16',1,'115.238.95.194',1448523502);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (65,'columns','/guoxing/bocadmin/index.php/columns/edit/38','update','更新数据id:38',1,'115.238.95.194',1448523514);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (66,'article','/guoxing/bocadmin/index.php/article/create?c=38','create','添加数据id:3',1,'115.238.95.194',1448523522);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (67,'article','/guoxing/bocadmin/index.php/article/audit?c=38','audit','审核数据ID：3为1',1,'115.238.95.194',1448523525);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (68,'page','/guoxing/bocadmin/index.php/page/edit?c=43','update','更新数据id:15',1,'115.238.95.194',1448523631);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (69,'page','/guoxing/bocadmin/index.php/page/edit?c=41','update','更新数据id:16',1,'115.238.95.194',1448523642);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (70,'coltypes','/guoxing/bocadmin/index.php/coltypes/create?cid=42&field=ctype&rc=banner','create','添加数据id:3',1,'115.238.95.194',1448523784);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (71,'coltypes','/guoxing/bocadmin/index.php/coltypes/create?cid=42&field=ctype&rc=banner','create','添加数据id:4',1,'115.238.95.194',1448523809);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (72,'banner','/guoxing/bocadmin/index.php/banner/create?c=42','create','添加数据id:17',1,'115.238.95.194',1448523833);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (73,'banner','/guoxing/bocadmin/index.php/banner/create/?c=42','create','添加数据id:18',1,'115.238.95.194',1448523837);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (74,'banner','/guoxing/bocadmin/index.php/banner/create/?c=42','create','添加数据id:19',1,'115.238.95.194',1448523846);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (75,'banner','/guoxing/bocadmin/index.php/banner/audit?c=42','audit','审核数据ID：19,18,17为1',1,'115.238.95.194',1448523850);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (76,'banner','/guoxing/bocadmin/index.php/banner/edit/19?c=42','update','更新数据id:19',1,'115.238.95.194',1448523871);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (77,'page','/guoxing/bocadmin/index.php/page/edit?c=45','update','更新数据id:17',1,'115.238.95.194',1448523973);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (78,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448523986);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (79,'page','/guoxing/bocadmin/index.php/page/edit?c=52','update','更新数据id:19',1,'115.238.95.194',1448524107);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (80,'page','/guoxing/bocadmin/index.php/page/edit?c=50','update','更新数据id:20',1,'115.238.95.194',1448524116);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (81,'banner','/guoxing/bocadmin/index.php/banner/create?c=51','create','添加数据id:20',1,'115.238.95.194',1448524124);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (82,'banner','/guoxing/bocadmin/index.php/banner/audit?c=51','audit','审核数据ID：20为1',1,'115.238.95.194',1448524127);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (83,'recruit','/guoxing/bocadmin/index.php/recruit/create?c=48','create','添加数据id:1',1,'115.238.95.194',1448524161);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (84,'recruit','/guoxing/bocadmin/index.php/recruit/create/?c=48','create','添加数据id:2',1,'115.238.95.194',1448524187);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (85,'recruit','/guoxing/bocadmin/index.php/recruit/audit?c=48','audit','审核数据ID：1为1',1,'115.238.95.194',1448524190);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (86,'recruit','/guoxing/bocadmin/index.php/recruit/audit?c=48','audit','审核数据ID：2为1',1,'115.238.95.194',1448524190);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (87,'links','/guoxing/bocadmin/index.php/links/create?c=53','create','添加数据id:1',1,'115.238.95.194',1448524229);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (88,'links','/guoxing/bocadmin/index.php/links/audit?c=53','audit','审核数据ID：1为1',1,'115.238.95.194',1448524238);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (89,'article','/guoxing/bocadmin/index.php/article/flag?c=38','flag','推荐数据ID：3为1',1,'115.238.95.194',1448524258);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (90,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448524843);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (91,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448525078);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (92,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448535855);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (93,'page','/guoxing/bocadmin/index.php/page/edit?c=5','update','更新数据id:1',1,'115.238.95.194',1448535898);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (94,'page','/guoxing/bocadmin/index.php/page/edit?c=5','update','更新数据id:1',1,'115.238.95.194',1448536118);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (95,'page','/guoxing/bocadmin/index.php/page/edit?c=6','update','更新数据id:2',1,'115.238.95.194',1448536153);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (96,'page','/guoxing/bocadmin/index.php/page/edit?c=6','update','更新数据id:2',1,'115.238.95.194',1448536194);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (97,'page','/guoxing/bocadmin/index.php/page/edit?c=6','update','更新数据id:2',1,'115.238.95.194',1448536228);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (98,'page','/guoxing/bocadmin/index.php/page/edit?c=6','update','更新数据id:2',1,'115.238.95.194',1448536245);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (99,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:5',1,'115.238.95.194',1448536442);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (100,'page','/guoxing/bocadmin/index.php/page/edit?c=6','update','更新数据id:2',1,'115.238.95.194',1448536446);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (101,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:32',1,'115.238.95.194',1448536477);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (102,'page','/guoxing/bocadmin/index.php/page/edit?c=6','update','更新数据id:2',1,'115.238.95.194',1448536480);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (103,'banner','/guoxing/bocadmin/index.php/banner/create?c=17','create','添加数据id:21',1,'115.238.95.194',1448537196);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (104,'banner','/guoxing/bocadmin/index.php/banner/audit?c=17','audit','审核数据ID：21为1',1,'115.238.95.194',1448537200);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (105,'page','/guoxing/bocadmin/index.php/page/edit?c=9','update','更新数据id:6',1,'115.238.95.194',1448537555);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (106,'banner','/guoxing/bocadmin/index.php/banner/edit/7?c=11','update','更新数据id:7',1,'115.238.95.194',1448537625);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (107,'banner','/guoxing/bocadmin/index.php/banner/edit/6?c=11','update','更新数据id:6',1,'115.238.95.194',1448537638);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (108,'banner','/guoxing/bocadmin/index.php/banner/edit/5?c=11','update','更新数据id:5',1,'115.238.95.194',1448537650);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (109,'banner','/guoxing/bocadmin/index.php/banner/edit/5?c=11','update','更新数据id:5',1,'115.238.95.194',1448537669);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (110,'banner','/guoxing/bocadmin/index.php/banner/edit/5?c=11','update','更新数据id:5',1,'115.238.95.194',1448537679);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (111,'banner','/guoxing/bocadmin/index.php/banner/create?c=24','create','添加数据id:22',1,'115.238.95.194',1448537810);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (112,'banner','/guoxing/bocadmin/index.php/banner/audit?c=24','audit','审核数据ID：22为1',1,'115.238.95.194',1448537812);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (113,'page','/guoxing/bocadmin/index.php/page/edit?c=52','update','更新数据id:19',1,'115.238.95.194',1448538249);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (114,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448587003);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (115,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448602906);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (116,'page','/guoxing/bocadmin/index.php/page/edit?c=50','update','更新数据id:20',1,'115.238.95.194',1448602929);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (117,'page','/guoxing/bocadmin/index.php/page/edit?c=50','update','更新数据id:20',1,'115.238.95.194',1448602945);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (118,'page','/guoxing/bocadmin/index.php/page/edit?c=50','update','更新数据id:20',1,'115.238.95.194',1448602963);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (119,'page','/guoxing/bocadmin/index.php/page/edit?c=52','update','更新数据id:19',1,'115.238.95.194',1448603017);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (120,'page','/guoxing/bocadmin/index.php/page/edit?c=50','update','更新数据id:20',1,'115.238.95.194',1448603054);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (121,'banner','/guoxing/bocadmin/index.php/banner/edit/20?c=51','update','更新数据id:20',1,'115.238.95.194',1448603151);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (122,'banner','/guoxing/bocadmin/index.php/banner/create?c=51','create','添加数据id:23',1,'115.238.95.194',1448603157);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (123,'banner','/guoxing/bocadmin/index.php/banner/create/?c=51','create','添加数据id:24',1,'115.238.95.194',1448603162);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (124,'banner','/guoxing/bocadmin/index.php/banner/create/?c=51','create','添加数据id:25',1,'115.238.95.194',1448603169);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (125,'banner','/guoxing/bocadmin/index.php/banner/create/?c=51','create','添加数据id:26',1,'115.238.95.194',1448603173);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (126,'banner','/guoxing/bocadmin/index.php/banner/create/?c=51','create','添加数据id:27',1,'115.238.95.194',1448603177);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (127,'banner','/guoxing/bocadmin/index.php/banner/create/?c=51','create','添加数据id:28',1,'115.238.95.194',1448603183);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (128,'banner','/guoxing/bocadmin/index.php/banner/create/?c=51','create','添加数据id:29',1,'115.238.95.194',1448603187);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (129,'banner','/guoxing/bocadmin/index.php/banner/create/?c=51','create','添加数据id:30',1,'115.238.95.194',1448603192);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (130,'banner','/guoxing/bocadmin/index.php/banner/create/?c=51','create','添加数据id:31',1,'115.238.95.194',1448603196);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (131,'banner','/guoxing/bocadmin/index.php/banner/create/?c=51','create','添加数据id:32',1,'115.238.95.194',1448603200);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (132,'banner','/guoxing/bocadmin/index.php/banner/create/?c=51','create','添加数据id:33',1,'115.238.95.194',1448603204);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (133,'banner','/guoxing/bocadmin/index.php/banner/edit/31?c=51','update','更新数据id:31',1,'115.238.95.194',1448603209);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (134,'banner','/guoxing/bocadmin/index.php/banner/edit/33?c=51','update','更新数据id:33',1,'115.238.95.194',1448604495);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (135,'banner','/guoxing/bocadmin/index.php/banner/edit/32?c=51','update','更新数据id:32',1,'115.238.95.194',1448604502);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (136,'banner','/guoxing/bocadmin/index.php/banner/edit/31?c=51','update','更新数据id:31',1,'115.238.95.194',1448604511);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (137,'banner','/guoxing/bocadmin/index.php/banner/edit/30?c=51','update','更新数据id:30',1,'115.238.95.194',1448604518);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (138,'banner','/guoxing/bocadmin/index.php/banner/edit/29?c=51','update','更新数据id:29',1,'115.238.95.194',1448604527);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (139,'banner','/guoxing/bocadmin/index.php/banner/edit/28?c=51','update','更新数据id:28',1,'115.238.95.194',1448604537);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (140,'banner','/guoxing/bocadmin/index.php/banner/edit/27?c=51','update','更新数据id:27',1,'115.238.95.194',1448604545);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (141,'banner','/guoxing/bocadmin/index.php/banner/edit/26?c=51','update','更新数据id:26',1,'115.238.95.194',1448604552);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (142,'banner','/guoxing/bocadmin/index.php/banner/edit/25?c=51','update','更新数据id:25',1,'115.238.95.194',1448604559);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (143,'banner','/guoxing/bocadmin/index.php/banner/edit/24?c=51','update','更新数据id:24',1,'115.238.95.194',1448604566);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (144,'banner','/guoxing/bocadmin/index.php/banner/edit/23?c=51','update','更新数据id:23',1,'115.238.95.194',1448604573);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (145,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:31',1,'115.238.95.194',1448604581);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (146,'banner','/guoxing/bocadmin/index.php/banner/edit/20?c=51','update','更新数据id:20',1,'115.238.95.194',1448604582);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (147,'banner','/guoxing/bocadmin/index.php/banner/audit?c=51','audit','审核数据ID：33,32,31,30,29,28,27,26,25,24,23,20为1',1,'115.238.95.194',1448604587);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (148,'recruit','/guoxing/bocadmin/index.php/recruit/audit?c=48','audit','审核数据ID：1为0',1,'115.238.95.194',1448604916);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (149,'recruit','/guoxing/bocadmin/index.php/recruit/edit/2?c=48','update','更新数据id:2',1,'115.238.95.194',1448604946);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (150,'recruit','/guoxing/bocadmin/index.php/recruit/audit?c=48','audit','审核数据ID：1为1',1,'115.238.95.194',1448604956);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (151,'recruit','/guoxing/bocadmin/index.php/recruit/edit/1?c=48','update','更新数据id:1',1,'115.238.95.194',1448604962);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (152,'page','/guoxing/bocadmin/index.php/page/edit?c=45','update','更新数据id:17',1,'115.238.95.194',1448605054);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (153,'page','/guoxing/bocadmin/index.php/page/edit?c=45','update','更新数据id:17',1,'115.238.95.194',1448605081);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (154,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448605552);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (155,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448605637);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (156,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448605691);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (157,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448605746);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (158,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448687827);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (159,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448687858);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (160,'coltypes','/guoxing/bocadmin/index.php/coltypes/edit/3?cid=42&field=ctype&rc=banner','update','更新数据id:3',1,'115.238.95.194',1448688058);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (161,'coltypes','/guoxing/bocadmin/index.php/coltypes/edit/3?cid=42&field=ctype&rc=banner','update','更新数据id:3',1,'115.238.95.194',1448688067);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (162,'coltypes','/guoxing/bocadmin/index.php/coltypes/edit/4?cid=42&field=ctype&rc=banner','update','更新数据id:4',1,'115.238.95.194',1448688084);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (163,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:30',1,'115.238.95.194',1448688335);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (164,'banner','/guoxing/bocadmin/index.php/banner/edit/19?c=42','update','更新数据id:19',1,'115.238.95.194',1448688339);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (165,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:29',1,'115.238.95.194',1448688348);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (166,'banner','/guoxing/bocadmin/index.php/banner/edit/18?c=42','update','更新数据id:18',1,'115.238.95.194',1448688351);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (167,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:28',1,'115.238.95.194',1448688362);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (168,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:52',1,'115.238.95.194',1448688366);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (169,'banner','/guoxing/bocadmin/index.php/banner/edit/17?c=42','update','更新数据id:17',1,'115.238.95.194',1448688367);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (170,'banner','/guoxing/bocadmin/index.php/banner/edit/17?c=42','update','更新数据id:17',1,'115.238.95.194',1448688370);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (171,'banner','/guoxing/bocadmin/index.php/banner/create?c=42','create','添加数据id:34',1,'115.238.95.194',1448688382);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (172,'banner','/guoxing/bocadmin/index.php/banner/audit?c=42','audit','审核数据ID：34为1',1,'115.238.95.194',1448688385);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (173,'banner','/guoxing/bocadmin/index.php/banner/edit/34?c=42','update','更新数据id:34',1,'115.238.95.194',1448688435);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (174,'banner','/guoxing/bocadmin/index.php/banner/edit/34?c=42','update','更新数据id:34',1,'115.238.95.194',1448688473);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (175,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:21',1,'115.238.95.194',1448689748);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (176,'banner','/guoxing/bocadmin/index.php/banner/edit/13?c=29','update','更新数据id:13',1,'115.238.95.194',1448689772);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (177,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:20',1,'115.238.95.194',1448689779);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (178,'banner','/guoxing/bocadmin/index.php/banner/edit/12?c=29','update','更新数据id:12',1,'115.238.95.194',1448689782);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (179,'banner','/guoxing/bocadmin/index.php/banner/create?c=29','create','添加数据id:35',1,'115.238.95.194',1448689790);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (180,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:36',1,'115.238.95.194',1448689796);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (181,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:59',1,'115.238.95.194',1448689809);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (182,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:37',1,'115.238.95.194',1448689892);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (183,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:61',1,'115.238.95.194',1448689916);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (184,'banner','/guoxing/bocadmin/index.php/banner/create?c=29','create','添加数据id:38',1,'115.238.95.194',1448689924);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (185,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:39',1,'115.238.95.194',1448689931);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (186,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:40',1,'115.238.95.194',1448689935);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (187,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:41',1,'115.238.95.194',1448689939);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (188,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:66',1,'115.238.95.194',1448690037);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (189,'banner','/guoxing/bocadmin/index.php/banner/create?c=29','create','添加数据id:42',1,'115.238.95.194',1448690038);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (190,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:43',1,'115.238.95.194',1448690046);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (191,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:44',1,'115.238.95.194',1448690054);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (192,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:45',1,'115.238.95.194',1448690061);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (193,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:46',1,'115.238.95.194',1448690069);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (194,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:47',1,'115.238.95.194',1448690077);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (195,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:48',1,'115.238.95.194',1448690084);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (196,'banner','/guoxing/bocadmin/index.php/banner/create/?c=29','create','添加数据id:49',1,'115.238.95.194',1448690092);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (197,'banner','/guoxing/bocadmin/index.php/banner/create?c=29','create','添加数据id:50',1,'115.238.95.194',1448690199);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (198,'banner','/guoxing/bocadmin/index.php/banner/audit?c=29','audit','审核数据ID：50,49,48,47,46,45,44,43,42,41,40,39,38,37,36为1',1,'115.238.95.194',1448690205);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (199,'banner','/guoxing/bocadmin/index.php/banner/audit?c=29','audit','审核数据ID：35为1',1,'115.238.95.194',1448690208);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (200,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:23',1,'115.238.95.194',1448691243);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (201,'banner','/guoxing/bocadmin/index.php/banner/edit/15?c=32','update','更新数据id:15',1,'115.238.95.194',1448691244);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (202,'banner','/guoxing/bocadmin/index.php/banner/edit/15?c=32','update','更新数据id:15',1,'115.238.95.194',1448691253);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (203,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:22',1,'115.238.95.194',1448691261);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (204,'banner','/guoxing/bocadmin/index.php/banner/edit/14?c=32','update','更新数据id:14',1,'115.238.95.194',1448691262);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (205,'banner','/guoxing/bocadmin/index.php/banner/create?c=32','create','添加数据id:51',1,'115.238.95.194',1448691270);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (206,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:52',1,'115.238.95.194',1448691277);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (207,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:53',1,'115.238.95.194',1448691283);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (208,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:54',1,'115.238.95.194',1448691289);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (209,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:55',1,'115.238.95.194',1448691295);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (210,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:56',1,'115.238.95.194',1448691301);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (211,'banner','/guoxing/bocadmin/index.php/banner/create?c=32','create','添加数据id:57',1,'115.238.95.194',1448695240);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (212,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:58',1,'115.238.95.194',1448695247);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (213,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:59',1,'115.238.95.194',1448695253);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (214,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:60',1,'115.238.95.194',1448695260);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (215,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:61',1,'115.238.95.194',1448695267);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (216,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:62',1,'115.238.95.194',1448695273);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (217,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:63',1,'115.238.95.194',1448695282);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (218,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:64',1,'115.238.95.194',1448695287);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (219,'banner','/guoxing/bocadmin/index.php/banner/create/?c=32','create','添加数据id:65',1,'115.238.95.194',1448695298);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (220,'banner','/guoxing/bocadmin/index.php/banner/audit?c=32','audit','审核数据ID：65,64,63,62,61,60,59,58,57,56,55,54,53,52,51为1',1,'115.238.95.194',1448695304);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (221,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448696587);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (222,'banner','/guoxing/bocadmin/index.php/banner/edit/3?c=10','update','更新数据id:3',1,'115.238.95.194',1448697007);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (223,'banner','/guoxing/bocadmin/index.php/banner/create?c=10','create','添加数据id:66',1,'115.238.95.194',1448697181);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (224,'banner','/guoxing/bocadmin/index.php/banner/create/?c=10','create','添加数据id:67',1,'115.238.95.194',1448697189);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (225,'banner','/guoxing/bocadmin/index.php/banner/create/?c=10','create','添加数据id:68',1,'115.238.95.194',1448697196);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (226,'banner','/guoxing/bocadmin/index.php/banner/audit?c=10','audit','审核数据ID：68,67,66,3,2为1',1,'115.238.95.194',1448697201);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (227,'banner','/guoxing/bocadmin/index.php/banner/create?c=10','create','添加数据id:69',1,'115.238.95.194',1448697221);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (228,'banner','/guoxing/bocadmin/index.php/banner/audit?c=10','audit','审核数据ID：69为1',1,'115.238.95.194',1448697225);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (229,'page','/guoxing/bocadmin/index.php/page/edit?c=13','update','更新数据id:5',1,'115.238.95.194',1448697765);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (230,'columns','/guoxing/bocadmin/index.php/columns/edit/14','update','更新数据id:14',1,'115.238.95.194',1448699201);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (231,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php/page/index/23?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448699300);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (232,'article','/guoxing/bocadmin/index.php/article/create?c=14','create','添加数据id:4',1,'115.238.95.194',1448699368);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (233,'article','/guoxing/bocadmin/index.php/article/create/?c=14','create','添加数据id:5',1,'115.238.95.194',1448699373);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (234,'article','/guoxing/bocadmin/index.php/article/create/?c=14','create','添加数据id:6',1,'115.238.95.194',1448699378);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (235,'article','/guoxing/bocadmin/index.php/article/audit?c=14','audit','审核数据ID：4为1',1,'115.238.95.194',1448699380);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (236,'article','/guoxing/bocadmin/index.php/article/audit?c=14','audit','审核数据ID：5为1',1,'115.238.95.194',1448699380);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (237,'article','/guoxing/bocadmin/index.php/article/audit?c=14','audit','审核数据ID：6为1',1,'115.238.95.194',1448699381);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (238,'article','/guoxing/bocadmin/index.php/article/edit/6?c=14','update','更新数据id:6',1,'115.238.95.194',1448699662);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (239,'banner','/guoxing/bocadmin/index.php/banner/create?c=17','create','添加数据id:70',1,'115.238.95.194',1448699932);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (240,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:71',1,'115.238.95.194',1448699937);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (241,'banner','/guoxing/bocadmin/index.php/banner/audit?c=17','audit','审核数据ID：70为1',1,'115.238.95.194',1448699940);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (242,'banner','/guoxing/bocadmin/index.php/banner/audit?c=17','audit','审核数据ID：71为1',1,'115.238.95.194',1448699940);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (243,'banner','/guoxing/bocadmin/index.php/banner/create?c=17','create','添加数据id:72',1,'115.238.95.194',1448699944);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (244,'banner','/guoxing/bocadmin/index.php/banner/audit?c=17','audit','审核数据ID：72为1',1,'115.238.95.194',1448699946);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (245,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php/columns?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448707846);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (246,'page','/guoxing/bocadmin/index.php/page/edit?c=54','update','更新数据id:21',1,'115.238.95.194',1448708008);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (247,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448783897);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (248,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:96',1,'115.238.95.194',1448784984);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (249,'banner','/guoxing/bocadmin/index.php/banner/edit/69?c=10','update','更新数据id:69',1,'115.238.95.194',1448785003);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (250,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:95',1,'115.238.95.194',1448785027);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (251,'banner','/guoxing/bocadmin/index.php/banner/edit/68?c=10','update','更新数据id:68',1,'115.238.95.194',1448785058);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (252,'banner','/guoxing/bocadmin/index.php/banner/edit/68?c=10','update','更新数据id:68',1,'115.238.95.194',1448785068);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (253,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:94',1,'115.238.95.194',1448785078);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (254,'banner','/guoxing/bocadmin/index.php/banner/edit/67?c=10','update','更新数据id:67',1,'115.238.95.194',1448785089);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (255,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:93',1,'115.238.95.194',1448785101);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (256,'banner','/guoxing/bocadmin/index.php/banner/edit/66?c=10','update','更新数据id:66',1,'115.238.95.194',1448785112);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (257,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:10',1,'115.238.95.194',1448785121);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (258,'banner','/guoxing/bocadmin/index.php/banner/edit/3?c=10','update','更新数据id:3',1,'115.238.95.194',1448785135);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (259,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:9',1,'115.238.95.194',1448785153);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (260,'banner','/guoxing/bocadmin/index.php/banner/edit/2?c=10','update','更新数据id:2',1,'115.238.95.194',1448785162);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (261,'banner','/guoxing/bocadmin/index.php/banner/create?c=10','create','添加数据id:73',1,'115.238.95.194',1448785185);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (262,'banner','/guoxing/bocadmin/index.php/banner/create/?c=10','create','添加数据id:74',1,'115.238.95.194',1448785204);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (263,'banner','/guoxing/bocadmin/index.php/banner/audit?c=10','audit','审核数据ID：74为1',1,'115.238.95.194',1448785219);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (264,'banner','/guoxing/bocadmin/index.php/banner/audit?c=10','audit','审核数据ID：73为1',1,'115.238.95.194',1448785219);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (265,'article','/guoxing/bocadmin/index.php/article/edit/6?c=14','update','更新数据id:6',1,'115.238.95.194',1448785393);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (266,'article','/guoxing/bocadmin/index.php/article/edit/6?c=14','update','更新数据id:6',1,'115.238.95.194',1448785460);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (267,'article','/guoxing/bocadmin/index.php/article/edit/5?c=14','update','更新数据id:5',1,'115.238.95.194',1448785468);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (268,'article','/guoxing/bocadmin/index.php/article/edit/4?c=14','update','更新数据id:4',1,'115.238.95.194',1448785474);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (269,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:100',1,'115.238.95.194',1448786259);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (270,'page','/guoxing/bocadmin/index.php/page/edit?c=54','update','更新数据id:21',1,'115.238.95.194',1448786260);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (271,'page','/guoxing/bocadmin/index.php/page/edit?c=37','update','更新数据id:11',1,'115.238.95.194',1448786523);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (272,'article','/guoxing/bocadmin/index.php/article/audit?c=38','audit','审核数据ID：3为0',1,'115.238.95.194',1448786561);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (273,'article','/guoxing/bocadmin/index.php/article/flag?c=38','flag','推荐数据ID：3为0',1,'115.238.95.194',1448786562);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (274,'article','/guoxing/bocadmin/index.php/article/edit/2?c=35','update','更新数据id:2',1,'115.238.95.194',1448786651);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (275,'article','/guoxing/bocadmin/index.php/article/edit/1?c=35','update','更新数据id:1',1,'115.238.95.194',1448786663);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (276,'article','/guoxing/bocadmin/index.php/article/create?c=35','create','添加数据id:7',1,'115.238.95.194',1448786674);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (277,'article','/guoxing/bocadmin/index.php/article/create/?c=35','create','添加数据id:8',1,'115.238.95.194',1448786683);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (278,'article','/guoxing/bocadmin/index.php/article/create/?c=35','create','添加数据id:9',1,'115.238.95.194',1448786691);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (279,'article','/guoxing/bocadmin/index.php/article/create/?c=35','create','添加数据id:10',1,'115.238.95.194',1448786699);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (280,'article','/guoxing/bocadmin/index.php/article/create/?c=35','create','添加数据id:11',1,'115.238.95.194',1448786710);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (281,'article','/guoxing/bocadmin/index.php/article/create/?c=35','create','添加数据id:12',1,'115.238.95.194',1448786718);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (282,'article','/guoxing/bocadmin/index.php/article/create/?c=35','create','添加数据id:13',1,'115.238.95.194',1448786727);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (283,'article','/guoxing/bocadmin/index.php/article/create/?c=35','create','添加数据id:14',1,'115.238.95.194',1448786748);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (284,'article','/guoxing/bocadmin/index.php/article/audit?c=35','audit','审核数据ID：14,13,12,11,10,9,8,7,2,1为1',1,'115.238.95.194',1448786757);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (285,'article','/guoxing/bocadmin/index.php/article/flag?c=35','flag','推荐数据ID：2为0',1,'115.238.95.194',1448786771);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (286,'banner','/guoxing/bocadmin/index.php/banner/audit?c=29','audit','审核数据ID：50,49,48,47,46,45,44,43,42,41,40,39,38,37,36为0',1,'115.238.95.194',1448786918);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (287,'banner','/guoxing/bocadmin/index.php/banner/audit?c=29','audit','审核数据ID：50,49,48,47,46,45,44,43,42,41,40,39,38,37,36为1',1,'115.238.95.194',1448786934);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (288,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448788012);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (289,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448788084);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (290,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448788115);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (291,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448788166);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (292,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448788185);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (293,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448788712);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (294,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448788748);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (295,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448788764);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (296,'page','/guoxing/bocadmin/index.php/page/edit?c=45','update','更新数据id:17',1,'115.238.95.194',1448788828);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (297,'page','/guoxing/bocadmin/index.php/page/edit?c=45','update','更新数据id:17',1,'115.238.95.194',1448788850);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (298,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448788885);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (299,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448788897);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (300,'page','/guoxing/bocadmin/index.php/page/edit?c=46','update','更新数据id:18',1,'115.238.95.194',1448788919);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (301,'page','/guoxing/bocadmin/index.php/page/edit?c=45','update','更新数据id:17',1,'115.238.95.194',1448789017);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (302,'page','/guoxing/bocadmin/index.php/page/edit?c=45','update','更新数据id:17',1,'115.238.95.194',1448789242);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (303,'page','/guoxing/bocadmin/index.php/page/edit?c=45','update','更新数据id:17',1,'115.238.95.194',1448789574);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (304,'page','/guoxing/bocadmin/index.php/page/edit?c=45','update','更新数据id:17',1,'115.238.95.194',1448789640);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (305,'links','/guoxing/bocadmin/index.php/links/edit/1?c=53','update','更新数据id:1',1,'115.238.95.194',1448789697);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (306,'links','/guoxing/bocadmin/index.php/links/create?c=53','create','添加数据id:2',1,'115.238.95.194',1448789719);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (307,'links','/guoxing/bocadmin/index.php/links/create/?c=53','create','添加数据id:3',1,'115.238.95.194',1448789734);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (308,'links','/guoxing/bocadmin/index.php/links/create/?c=53','create','添加数据id:4',1,'115.238.95.194',1448789746);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (309,'links','/guoxing/bocadmin/index.php/links/create/?c=53','create','添加数据id:5',1,'115.238.95.194',1448789758);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (310,'links','/guoxing/bocadmin/index.php/links/create/?c=53','create','添加数据id:6',1,'115.238.95.194',1448789763);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (311,'links','/guoxing/bocadmin/index.php/links/create/?c=53','create','添加数据id:7',1,'115.238.95.194',1448789775);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (312,'links','/guoxing/bocadmin/index.php/links/create?c=53','create','添加数据id:8',1,'115.238.95.194',1448789781);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (313,'links','/guoxing/bocadmin/index.php/links/create/?c=53','create','添加数据id:9',1,'115.238.95.194',1448789785);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (314,'links','/guoxing/bocadmin/index.php/links/create/?c=53','create','添加数据id:10',1,'115.238.95.194',1448789788);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (315,'links','/guoxing/bocadmin/index.php/links/create/?c=53','create','添加数据id:11',1,'115.238.95.194',1448789810);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (316,'links','/guoxing/bocadmin/index.php/links/edit/10?c=53','update','更新数据id:10',1,'115.238.95.194',1448789830);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (317,'links','/guoxing/bocadmin/index.php/links/edit/9?c=53','update','更新数据id:9',1,'115.238.95.194',1448789851);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (318,'links','/guoxing/bocadmin/index.php/links/audit?c=53','audit','审核数据ID：11,10,9,8,7,6,5,4,3,2,1为1',1,'115.238.95.194',1448789857);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (319,'article','/guoxing/bocadmin/index.php/article/flag?c=35','flag','推荐数据ID：1为1',1,'115.238.95.194',1448789953);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (320,'article','/guoxing/bocadmin/index.php/article/flag?c=35','flag','推荐数据ID：2为1',1,'115.238.95.194',1448789953);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (321,'article','/guoxing/bocadmin/index.php/article/flag?c=35','flag','推荐数据ID：7为1',1,'115.238.95.194',1448789954);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (322,'article','/guoxing/bocadmin/index.php/article/flag?c=35','flag','推荐数据ID：8为1',1,'115.238.95.194',1448789954);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (323,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php/banner/edit/13?c=29','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448848441);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (324,'configs','/guoxing/bocadmin/index.php/configs/set','edit','修改配置upload.inline_file_types:gif|jpe?g|png|doc?|mp?|zip|pdf|flv|docx|pdfrar',1,'115.238.95.194',1448848692);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (325,'configs','/guoxing/bocadmin/index.php/configs/set','edit','修改配置upload.inline_file_types:gif|jpe?g|png|doc?|mp?|zip|pdf|flv|docx|pdf|rar',1,'115.238.95.194',1448848695);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (326,'configs','/guoxing/bocadmin/index.php/configs/set','edit','修改配置upload.inline_file_types:gif|jpe?g|png|doc?|mp?|zip|pdf|flv|docx|pdf|rar|zip',1,'115.238.95.194',1448848731);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (327,'banner','/guoxing/bocadmin/index.php/banner/create?c=10','create','添加数据id:75',1,'115.238.95.194',1448849749);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (328,'banner','/guoxing/bocadmin/index.php/banner/delete?c=10&ids=75','delete','删除数据id:75',1,'115.238.95.194',1448849757);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (329,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php/banner/edit/13?c=29','login','manager ID 1: 登录成功！',1,'115.238.95.194',1448858973);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (330,'banner','/guoxing/bocadmin/index.php/banner/edit/74?c=10','update','更新数据id:74',1,'115.238.95.194',1448860008);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (331,'banner','/guoxing/bocadmin/index.php/banner/edit/73?c=10','update','更新数据id:73',1,'115.238.95.194',1448860019);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (332,'banner','/guoxing/bocadmin/index.php/banner/edit/69?c=10','update','更新数据id:69',1,'115.238.95.194',1448860028);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (333,'banner','/guoxing/bocadmin/index.php/banner/edit/68?c=10','update','更新数据id:68',1,'115.238.95.194',1448860036);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (334,'banner','/guoxing/bocadmin/index.php/banner/edit/67?c=10','update','更新数据id:67',1,'115.238.95.194',1448860045);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (335,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:117',1,'115.238.95.194',1448860058);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (336,'banner','/guoxing/bocadmin/index.php/banner/edit/66?c=10','update','更新数据id:66',1,'115.238.95.194',1448860059);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (337,'banner','/guoxing/bocadmin/index.php/banner/edit/3?c=10','update','更新数据id:3',1,'115.238.95.194',1448860068);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (338,'banner','/guoxing/bocadmin/index.php/banner/edit/2?c=10','update','更新数据id:2',1,'115.238.95.194',1448860099);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (339,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:108',1,'115.238.95.194',1448860310);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (340,'banner','/guoxing/bocadmin/index.php/banner/edit/74?c=10','update','更新数据id:74',1,'115.238.95.194',1448860312);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (341,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:107',1,'115.238.95.194',1448860327);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (342,'banner','/guoxing/bocadmin/index.php/banner/edit/73?c=10','update','更新数据id:73',1,'115.238.95.194',1448860329);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (343,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:101',1,'115.238.95.194',1448860337);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (344,'banner','/guoxing/bocadmin/index.php/banner/edit/69?c=10','update','更新数据id:69',1,'115.238.95.194',1448860338);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (345,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:102',1,'115.238.95.194',1448860346);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (346,'banner','/guoxing/bocadmin/index.php/banner/edit/68?c=10','update','更新数据id:68',1,'115.238.95.194',1448860346);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (347,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:103',1,'115.238.95.194',1448860357);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (348,'banner','/guoxing/bocadmin/index.php/banner/edit/67?c=10','update','更新数据id:67',1,'115.238.95.194',1448860357);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (349,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:104',1,'115.238.95.194',1448860366);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (350,'banner','/guoxing/bocadmin/index.php/banner/edit/66?c=10','update','更新数据id:66',1,'115.238.95.194',1448860367);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (351,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:105',1,'115.238.95.194',1448860373);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (352,'banner','/guoxing/bocadmin/index.php/banner/edit/3?c=10','update','更新数据id:3',1,'115.238.95.194',1448860374);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (353,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:106',1,'115.238.95.194',1448860384);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (354,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:128',1,'115.238.95.194',1448860390);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (355,'banner','/guoxing/bocadmin/index.php/banner/edit/2?c=10','update','更新数据id:2',1,'115.238.95.194',1448860391);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (356,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'60.174.148.25',1448928566);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (357,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php/recruit_apply?','login','manager ID 1: 登录成功！',1,'60.174.148.25',1448937891);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (358,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449026718);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (359,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php/video/edit/1?c=3','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449028062);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (360,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449034677);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (361,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449063917);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (362,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449064326);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (363,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449065183);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (364,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:99',1,'115.238.95.194',1449065254);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (365,'banner','/guoxing/bocadmin/index.php/banner/edit/72?c=17','update','更新数据id:72',1,'115.238.95.194',1449065257);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (366,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:98',1,'115.238.95.194',1449065340);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (367,'banner','/guoxing/bocadmin/index.php/banner/edit/71?c=17','update','更新数据id:71',1,'115.238.95.194',1449065343);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (368,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:97',1,'115.238.95.194',1449065366);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (369,'banner','/guoxing/bocadmin/index.php/banner/edit/70?c=17','update','更新数据id:70',1,'115.238.95.194',1449065366);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (370,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:36',1,'115.238.95.194',1449065384);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (371,'banner','/guoxing/bocadmin/index.php/banner/edit/21?c=17','update','更新数据id:21',1,'115.238.95.194',1449065385);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (372,'banner','/guoxing/bocadmin/index.php/banner/create?c=17','create','添加数据id:76',1,'115.238.95.194',1449065402);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (373,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:77',1,'115.238.95.194',1449065432);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (374,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:78',1,'115.238.95.194',1449065450);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (375,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:79',1,'115.238.95.194',1449065470);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (376,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:80',1,'115.238.95.194',1449065495);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (377,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:81',1,'115.238.95.194',1449065529);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (378,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:82',1,'115.238.95.194',1449065556);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (379,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:83',1,'115.238.95.194',1449065572);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (380,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:84',1,'115.238.95.194',1449065624);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (381,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:85',1,'115.238.95.194',1449065647);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (382,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:86',1,'115.238.95.194',1449065662);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (383,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:87',1,'115.238.95.194',1449065690);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (384,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:88',1,'115.238.95.194',1449065797);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (385,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:89',1,'115.238.95.194',1449065832);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (386,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:90',1,'115.238.95.194',1449065863);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (387,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:91',1,'115.238.95.194',1449065889);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (388,'banner','/guoxing/bocadmin/index.php/banner/create/?c=17','create','添加数据id:92',1,'115.238.95.194',1449065902);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (389,'banner','/guoxing/bocadmin/index.php/banner/audit?c=17','audit','审核数据ID：92,91,90,89,88,87,86,85,84,83,82,81,80,79,78为1',1,'115.238.95.194',1449065952);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (390,'banner','/guoxing/bocadmin/index.php/banner/audit?c=17','audit','审核数据ID：77,76,72,71,70,21为1',1,'115.238.95.194',1449065960);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (391,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'60.174.148.25',1449111910);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (392,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'60.174.148.25',1449127466);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (393,'manager','/guoxing/bocadmin/index.php/manager/create','create','添加数据id:2',1,'60.174.148.25',1449127619);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (394,'login','/guoxing/bocadmin/index.php/login','login','manager ID 1: 登录成功！',1,'60.174.148.25',1449127763);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (395,'login','/guoxing/bocadmin/index.php/login','login','manager ID 2: 登录成功！',2,'60.174.148.25',1449127800);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (396,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449127996);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (397,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:3',1,'115.238.95.194',1449128003);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (398,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:152',1,'115.238.95.194',1449128162);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (399,'video','/guoxing/bocadmin/index.php/video/edit/1?c=3','update','更新数据id:1',1,'115.238.95.194',1449128163);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (400,'video','/guoxing/bocadmin/index.php/video/edit/1?c=3','update','更新数据id:1',1,'115.238.95.194',1449128735);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (401,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449221211);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (402,'page','/guoxing/bocadmin/index.php/page/edit?c=5','update','更新数据id:1',1,'115.238.95.194',1449221271);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (403,'page','/guoxing/bocadmin/index.php/page/edit?c=5','update','更新数据id:1',1,'115.238.95.194',1449221348);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (404,'page','/guoxing/bocadmin/index.php/page/edit?c=5','update','更新数据id:1',1,'115.238.95.194',1449221371);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (405,'page','/guoxing/bocadmin/index.php/page/edit?c=5','update','更新数据id:1',1,'115.238.95.194',1449221391);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (406,'page','/guoxing/bocadmin/index.php/page/edit?c=5','update','更新数据id:1',1,'115.238.95.194',1449221409);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (407,'page','/guoxing/bocadmin/index.php/page/edit?c=5','update','更新数据id:1',1,'115.238.95.194',1449221446);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (408,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'60.174.148.25',1449540811);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (409,'video','/guoxing/bocadmin/index.php/video/create?c=19','create','添加数据id:2',1,'60.174.148.25',1449541269);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (410,'page','/guoxing/bocadmin/index.php/page/edit?c=25','update','更新数据id:10',1,'60.174.148.25',1449541667);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (411,'page','/guoxing/bocadmin/index.php/page/edit?c=25','update','更新数据id:10',1,'60.174.148.25',1449541724);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (412,'page','/guoxing/bocadmin/index.php/page/edit?c=37','update','更新数据id:11',1,'60.174.148.25',1449542064);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (413,'page','/guoxing/bocadmin/index.php/page/edit?c=37','update','更新数据id:11',1,'60.174.148.25',1449542140);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (414,'page','/guoxing/bocadmin/index.php/page/edit?c=37','update','更新数据id:11',1,'60.174.148.25',1449542327);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (415,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'60.174.148.25',1449620778);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (416,'page','/guoxing/bocadmin/index.php/page/edit?c=37','update','更新数据id:11',1,'60.174.148.25',1449620967);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (417,'page','/guoxing/bocadmin/index.php/page/edit?c=37','update','更新数据id:11',1,'60.174.148.25',1449621102);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (418,'page','/guoxing/bocadmin/index.php/page/edit?c=37','update','更新数据id:11',1,'60.174.148.25',1449621117);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (419,'page','/guoxing/bocadmin/index.php/page/edit?c=37','update','更新数据id:11',1,'60.174.148.25',1449622545);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (420,'page','/guoxing/bocadmin/index.php/page/edit?c=37','update','更新数据id:11',1,'60.174.148.25',1449622631);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (421,'page','/guoxing/bocadmin/index.php/page/edit?c=37','update','更新数据id:11',1,'60.174.148.25',1449622672);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (422,'page','/guoxing/bocadmin/index.php/page/edit?c=37','update','更新数据id:11',1,'60.174.148.25',1449622749);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (423,'article','/guoxing/bocadmin/index.php/article/create?c=38','create','添加数据id:15',1,'60.174.148.25',1449623107);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (424,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449709896);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (425,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449803615);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (426,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'60.174.148.25',1449803628);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (427,'article','/guoxing/bocadmin/index.php/article/audit?c=38','audit','审核数据ID：3为1',1,'115.238.95.194',1449803679);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (428,'article','/guoxing/bocadmin/index.php/article/audit?c=38','audit','审核数据ID：15为1',1,'115.238.95.194',1449803680);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (429,'article','/guoxing/bocadmin/index.php/article/audit?c=38','audit','审核数据ID：3为0',1,'115.238.95.194',1449803790);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (430,'article','/guoxing/bocadmin/index.php/article/audit?c=38','audit','审核数据ID：3为1',1,'115.238.95.194',1449803791);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (431,'article','/guoxing/bocadmin/index.php/article/audit?c=38','audit','审核数据ID：3为0',1,'115.238.95.194',1449803794);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (432,'article','/guoxing/bocadmin/index.php/article/audit?c=38','audit','审核数据ID：3为1',1,'115.238.95.194',1449803803);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (433,'article','/guoxing/bocadmin/index.php/article/audit?c=38','audit','审核数据ID：15为0',1,'115.238.95.194',1449803826);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (434,'article','/guoxing/bocadmin/index.php/article/audit?c=38','audit','审核数据ID：15为1',1,'115.238.95.194',1449803836);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (435,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449805383);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (436,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449812907);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (437,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449813594);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (438,'page','/guoxing/bocadmin/index.php/page/edit?c=55','update','更新数据id:22',1,'115.238.95.194',1449813961);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (439,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1449824380);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (440,'page','/guoxing/bocadmin/index.php/page/edit?c=56','update','更新数据id:23',1,'115.238.95.194',1449824444);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (441,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1450056021);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (442,'page','/guoxing/bocadmin/index.php/page/edit?c=56','update','更新数据id:23',1,'115.238.95.194',1450056037);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (443,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1450056284);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (444,'banner','/guoxing/bocadmin/index.php/banner/create?c=57','create','添加数据id:93',1,'115.238.95.194',1450057933);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (445,'banner','/guoxing/bocadmin/index.php/banner/audit?c=57','audit','审核数据ID：93为1',1,'115.238.95.194',1450057936);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (446,'banner','/guoxing/bocadmin/index.php/banner/create?c=57','create','添加数据id:94',1,'115.238.95.194',1450057941);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (447,'banner','/guoxing/bocadmin/index.php/banner/audit?c=57','audit','审核数据ID：94为1',1,'115.238.95.194',1450057943);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (448,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'60.174.148.25',1450061187);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (449,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'60.174.148.25',1450062811);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (450,'manager','/guoxing/bocadmin/index.php/manager/edit/2','update','更新数据id:2',1,'60.174.148.25',1450062914);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (451,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1450071849);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (452,'page','/guoxing/bocadmin/index.php/page/edit?c=13','update','更新数据id:5',1,'115.238.95.194',1450071857);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (453,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1450073653);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (454,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1450089401);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (455,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:156',1,'115.238.95.194',1450091772);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (456,'banner','/guoxing/bocadmin/index.php/banner/edit/94?c=57','update','更新数据id:94',1,'115.238.95.194',1450091773);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (457,'banner','/guoxing/bocadmin/index.php/banner/create?c=57','create','添加数据id:95',1,'115.238.95.194',1450091784);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (458,'banner','/guoxing/bocadmin/index.php/banner/create/?c=57','create','添加数据id:96',1,'115.238.95.194',1450091790);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (459,'banner','/guoxing/bocadmin/index.php/banner/create/?c=57','create','添加数据id:97',1,'115.238.95.194',1450091800);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (460,'banner','/guoxing/bocadmin/index.php/banner/create/?c=57','create','添加数据id:98',1,'115.238.95.194',1450091806);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (461,'banner','/guoxing/bocadmin/index.php/banner/create/?c=57','create','添加数据id:99',1,'115.238.95.194',1450091813);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (462,'banner','/guoxing/bocadmin/index.php/banner/audit?c=57','audit','审核数据ID：93为0',1,'115.238.95.194',1450091826);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (463,'banner','/guoxing/bocadmin/index.php/banner/audit?c=57','audit','审核数据ID：99,98,97,96,95,94,93为1',1,'115.238.95.194',1450091831);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (464,'banner','/guoxing/bocadmin/index.php/banner/audit?c=57','audit','审核数据ID：93为0',1,'115.238.95.194',1450091832);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (465,'banner','/guoxing/bocadmin/index.php/banner/delete?c=57&ids=93','delete','删除数据id:93',1,'115.238.95.194',1450091835);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (466,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'60.174.148.25',1450139411);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (467,'manager','/guoxing/bocadmin/index.php/manager/edit/2','update','更新数据id:2',1,'60.174.148.25',1450139648);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (468,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：1为0',1,'60.174.148.25',1450139730);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (469,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：1为1',1,'60.174.148.25',1450139751);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (470,'banner','/guoxing/bocadmin/index.php/banner/create?c=2','create','添加数据id:100',1,'60.174.148.25',1450139850);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (471,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：1为0',1,'60.174.148.25',1450139862);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (472,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：100为1',1,'60.174.148.25',1450139863);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (473,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：1为1',1,'60.174.148.25',1450139881);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (474,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：100为0',1,'60.174.148.25',1450139882);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (475,'banner','/guoxing/bocadmin/index.php/banner/edit/100?c=2','update','更新数据id:100',1,'60.174.148.25',1450139975);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (476,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：100为1',1,'60.174.148.25',1450139995);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (477,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：1为0',1,'60.174.148.25',1450139996);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (478,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：100为0',1,'60.174.148.25',1450140011);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (479,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：1为1',1,'60.174.148.25',1450140012);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (480,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：1为0',1,'60.174.148.25',1450140047);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (481,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：100为1',1,'60.174.148.25',1450140048);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (482,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：1为1',1,'60.174.148.25',1450140061);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (483,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：100为0',1,'60.174.148.25',1450140088);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (484,'banner','/guoxing/bocadmin/index.php/banner/delete?c=2&ids=100','delete','删除数据id:100',1,'60.174.148.25',1450140092);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (485,'page','/guoxing/bocadmin/index.php/page/edit?c=56','update','更新数据id:23',1,'60.174.148.25',1450140541);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (486,'page','/guoxing/bocadmin/index.php/page/edit?c=56','update','更新数据id:23',1,'60.174.148.25',1450140872);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (487,'page','/guoxing/bocadmin/index.php/page/edit?c=56','update','更新数据id:23',1,'60.174.148.25',1450141013);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (488,'page','/guoxing/bocadmin/index.php/page/edit?c=56','update','更新数据id:23',1,'60.174.148.25',1450141072);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (489,'page','/guoxing/bocadmin/index.php/page/edit?c=56','update','更新数据id:23',1,'60.174.148.25',1450141129);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (490,'page','/guoxing/bocadmin/index.php/page/edit?c=56','update','更新数据id:23',1,'60.174.148.25',1450145161);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (491,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1450319133);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (492,'banner','/guoxing/bocadmin/index.php/banner/create?c=2','create','添加数据id:101',1,'115.238.95.194',1450319141);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (493,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：101为1',1,'115.238.95.194',1450319145);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (494,'banner','/guoxing/bocadmin/index.php/banner/delete?c=2&ids=101','delete','删除数据id:101',1,'115.238.95.194',1450319223);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (495,'page','/guoxing/bocadmin/index.php/page/edit?c=7','update','更新数据id:3',1,'115.238.95.194',1450319255);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (496,'upload','/guoxing/bocadmin/index.php/upload/delete','delete','删除文件ID:165',1,'115.238.95.194',1450319284);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (497,'recruit','/guoxing/bocadmin/index.php/recruit/create?c=48','create','添加数据id:3',1,'115.238.95.194',1450319383);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (498,'recruit','/guoxing/bocadmin/index.php/recruit/audit?c=48','audit','审核数据ID：3为1',1,'115.238.95.194',1450319386);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (499,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'60.174.148.25',1450324728);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (500,'banner','/guoxing/bocadmin/index.php/banner/create?c=2','create','添加数据id:102',1,'60.174.148.25',1450324920);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (501,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：102为1',1,'60.174.148.25',1450324926);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (502,'banner','/guoxing/bocadmin/index.php/banner/audit?c=2','audit','审核数据ID：102为0',1,'60.174.148.25',1450325852);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (503,'banner','/guoxing/bocadmin/index.php/banner/delete?c=2&ids=102','delete','删除数据id:102',1,'60.174.148.25',1450325856);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (504,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'60.174.148.25',1451879754);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (505,'banner','/guoxing/bocadmin/index.php/banner/edit/74?c=10','update','更新数据id:74',1,'60.174.148.25',1451880007);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (506,'banner','/guoxing/bocadmin/index.php/banner/edit/69?c=10','update','更新数据id:69',1,'60.174.148.25',1451880021);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (507,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1463586813);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (508,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'115.238.95.194',1467772166);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (509,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'211.100.46.129',1467773141);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (510,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'222.211.226.42',1467775536);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (511,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'222.211.226.42',1467790791);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (512,'columns','/guoxing/bocadmin/index.php/columns/show_ajax','show','显示数据ID：1为0',1,'222.211.226.42',1467798085);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (513,'columns','/guoxing/bocadmin/index.php/columns/show_ajax','show','显示数据ID：1为1',1,'222.211.226.42',1467798090);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (514,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'218.89.219.81',1470100523);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (515,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'1.91.20.6',1470626482);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (516,'columns','/guoxing/bocadmin/index.php/columns/show_ajax','show','显示数据ID：43为0',1,'1.91.20.6',1470626519);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (517,'columns','/guoxing/bocadmin/index.php/columns/show_ajax','show','显示数据ID：43为1',1,'1.91.20.6',1470626521);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (518,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'1.91.20.6',1470627977);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (519,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php/banner/index/2?','login','manager ID 1: 登录成功！',1,'1.91.20.6',1470627994);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (520,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'1.91.20.141',1470805650);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (521,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'1.91.20.141',1471486270);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (522,'login','/guoxing/bocadmin/index.php/login?url=http://121.41.128.239:8085/guoxing/bocadmin/index.php?','login','manager ID 1: 登录成功！',1,'222.211.226.108',1471569529);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (523,'columns','/guoxing/bocadmin/index.php/columns/show_ajax','show','显示数据ID：1为0',1,'222.211.226.108',1471569571);
insert  into `boc_log`(`id`,`controller`,`url`,`category`,`message`,`mid`,`ip`,`timeline`) values (524,'columns','/guoxing/bocadmin/index.php/columns/show_ajax','show','显示数据ID：1为1',1,'222.211.226.108',1471569575);

UNLOCK TABLES;

/*Table structure for table `boc_manager` */

DROP TABLE IF EXISTS `boc_manager`;

CREATE TABLE `boc_manager` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '显示名称',
  `pwd` varchar(64) NOT NULL COMMENT '密码',
  `gid` varchar(64) NOT NULL DEFAULT '2' COMMENT '用户组ID',
  `email` varchar(100) NOT NULL COMMENT 'email',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话',
  `phone` varchar(30) DEFAULT NULL COMMENT '手机',
  `addr` varchar(100) DEFAULT NULL COMMENT '地址',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '用户状态，0 禁用',
  `login_today` int(11) DEFAULT NULL COMMENT '今日登录次数',
  `pwd_errors` int(1) NOT NULL DEFAULT '0' COMMENT '密码错误次数',
  `login_ip` varchar(25) DEFAULT NULL COMMENT '最后登录的IP',
  `reg_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `login_time` int(11) DEFAULT NULL COMMENT '最后一次登录时间',
  `ga` int(1) DEFAULT '0' COMMENT 'GA 两部验证密钥 开启与否',
  `getpass` int(11) DEFAULT NULL COMMENT '获取密码时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后端管理帐号';

/*Data for the table `boc_manager` */

LOCK TABLES `boc_manager` WRITE;

insert  into `boc_manager`(`id`,`uname`,`nickname`,`pwd`,`gid`,`email`,`tel`,`phone`,`addr`,`status`,`login_today`,`pwd_errors`,`login_ip`,`reg_time`,`login_time`,`ga`,`getpass`) values (1,'bocadmin','超级用户','11372a6e7343831f12352cfd049ff59c','1','customservice@bocweb.cn','','','',1,0,0,'222.211.226.108',1376471117,1471569529,1,1389317880);

UNLOCK TABLES;

/*Table structure for table `boc_manager_group` */

DROP TABLE IF EXISTS `boc_manager_group`;

CREATE TABLE `boc_manager_group` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `purview` text NOT NULL COMMENT '权限id序列',
  `title` varchar(50) NOT NULL COMMENT '用户组名称',
  `title_en` varchar(50) NOT NULL COMMENT '用户组名称en',
  PRIMARY KEY (`id`)
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
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `model` varchar(30) NOT NULL COMMENT '控制模型',
  `method` varchar(30) NOT NULL COMMENT '控制函数',
  `cid` varchar(30) DEFAULT NULL COMMENT 'column id 参数',
  `uri` varchar(64) NOT NULL COMMENT '权限地址md5(model/method)',
  `title` varchar(50) NOT NULL COMMENT '权限名称',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '是否使用权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=745 DEFAULT CHARSET=utf8 COMMENT='用户组权限';

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
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (460,'video','index','1','045920193ea234288260a704fb0c888f','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (461,'video','create','1','9402318347ba75d24616377be687c8ef','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (462,'video','edit','1','34a282d2a3b355e01b61d53c46548c39','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (463,'video','delete','1','697b84cdc0c4c45b00d5fea072541cc4','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (464,'video','audit','1','3420e230fe4a53b77f50c0a72ebf6fdd','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (465,'banner','index','2','4650b51864bd9e2f69666869958d51e6','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (466,'banner','create','2','a4145d95df759b52ac6b4344ab3e4063','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (467,'banner','edit','2','287897f4987b6270b20c13e98a7e9bab','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (468,'banner','delete','2','700d1dc02f4405a43f0a83350568645b','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (469,'banner','audit','2','fa97b5a7ac7157f363d7bccfd21caebd','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (470,'video','index','3','2a8348c5cf95129d862a1c3ff136bbf1','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (471,'video','create','3','7a13efb541cc82f7fe85809c74f2494d','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (472,'video','edit','3','f4df9dab022ca8c9533ddd7bd8f1ee0b','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (473,'video','delete','3','dbc79797d1857962b676b93693e11014','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (474,'video','audit','3','e8a00d37848cb65033add5fa6d50a183','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (475,'video','index','4','7b398094a52815c7d339461711b670be','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (476,'video','create','4','b868f44e6394c4219870cb8788be2992','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (477,'video','edit','4','f9722e0909bf38e69841022bc08d15b3','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (478,'video','delete','4','ed45ce9bac44fd73eb298c0a6bc60fd7','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (479,'video','audit','4','93d80c9fd700ca21e3bf24c35b6bc5c1','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (480,'page','index','5','de1e78874b11fd301c52907f65716491','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (481,'page','create','5','f6b8687e6ce63122b566f9fa3f6ac159','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (482,'page','edit','5','f03bed106b7b007eeb8ccbbf23626600','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (483,'page','delete','5','8e2a937ecea85f468bc7821b3b5c2fd9','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (484,'page','audit','5','6dbebe685fc6a70124bbc26955aaa587','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (485,'page','index','6','33181661fd48e7188312c970742778f9','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (486,'page','create','6','d2982454f3a7346378e68debfd418fa1','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (487,'page','edit','6','ad74701ba151e59e2268082429c4b25d','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (488,'page','delete','6','a540d6c5b3011ecb8560b81cee19f6c9','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (489,'page','audit','6','b83f163a799c04800e0a8d19f320fe02','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (490,'page','index','7','7882e0b46d58b78d70bee525b2404cb8','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (491,'page','create','7','6f767735a4bb03e2dde41f2f81984b18','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (492,'page','edit','7','9041544f46b0f9e0c861c986e5eb563f','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (493,'page','delete','7','2383aecac653eb271fca9de8637fc7f5','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (494,'page','audit','7','58b7e1346b741399a048d3a032a72002','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (495,'video','index','8','2cb8e10f5423545c7ee7d9806b4b08c5','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (496,'video','create','8','8e1d64eaf214e833a5e18fad62a68f62','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (497,'video','edit','8','4878e2b3941cca2f4ad172c2afffa74f','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (498,'video','delete','8','dd9feea46ac11fe7f89c4341028c8b72','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (499,'video','audit','8','840e1cc1fbe0bfba5fc67c3e90546469','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (500,'page','index','9','990e41112666107e73a78d12837a0784','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (501,'page','create','9','e9bb9f5f467c9c6cad391d01846816b6','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (502,'page','edit','9','943b4eeee1342f15ba8b248cba2107a9','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (503,'page','delete','9','cc36a50d311c388686523c2241b1dcc3','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (504,'page','audit','9','61263b76b3524fc43f743f2213ef7c1a','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (505,'banner','index','10','377a9d84b8cc7467a9531e48ecb23861','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (506,'banner','create','10','e2689dfff79b1eacdf25de8e55a70ad1','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (507,'banner','edit','10','2f186523269f4dba4669b284778d35a5','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (508,'banner','delete','10','1767e09dc49da5a1c7abaed1b27661a1','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (509,'banner','audit','10','5fd40b8d84628253d075a17e6b4c0674','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (510,'banner','index','11','6be4a5b142b6fa6e7d8cac63aed56d02','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (511,'banner','create','11','a5e3db6a9b831684e0ca3fa59d5d289a','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (512,'banner','edit','11','14439b47878ed9cd5e2db79b33f59e53','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (513,'banner','delete','11','9f54834e8b726f47625db01ca4550ab9','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (514,'banner','audit','11','281144bff3964812c93b1ee3d612ed8b','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (515,'video','index','12','55b84198739201eedb26e3f28217cd13','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (516,'video','create','12','7273e99f0106e85a4c8022dda654819f','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (517,'video','edit','12','f3694a0fabbb4b80c6e8f985d5998efa','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (518,'video','delete','12','1805563ecdfa48b68c9a0144f7bba455','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (519,'video','audit','12','9f278603c9264bba21c7507b846ee8b1','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (520,'page','index','13','ea5190e00daaf150cee6e60fd42d091a','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (521,'page','create','13','fc51ee3f845d7a86a0b010d3335ee599','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (522,'page','edit','13','3a3b07340003e746fd5f55b2b53ea2f7','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (523,'page','delete','13','96d3fcec7b02d1fb50672a898cb0893a','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (524,'page','audit','13','ffe3207424bd264caae11b2635345d2f','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (525,'banner','index','14','dff178f9c1b460f14205ac9d4c0eabf0','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (526,'banner','create','14','36367a35966e8a30c0deefcafa87e065','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (527,'banner','edit','14','180fc2d7c9f4c52f82339c2adae5e1bc','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (528,'banner','delete','14','9512bf7253bbf05b152984cdf7275f94','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (529,'banner','audit','14','891f2b7b7fe0f69f0acf0b104d934422','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (530,'video','index','15','fb9cdc41e4f1a409ff6e57376ed17521','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (531,'video','create','15','b5dbe57c25d2c28bef50473536e35ce5','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (532,'video','edit','15','39e48dcbdd2270665c11b2a7767ab150','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (533,'video','delete','15','1b76b1a334aff911ef40e59f9de73cbb','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (534,'video','audit','15','0deceb3db4f396b6d01fff85cd1d707c','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (535,'page','index','16','bb33396496707b6764bc6a2e8bc129b6','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (536,'page','create','16','442faf8b2c624250d04ba973e9b75448','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (537,'page','edit','16','276c1d14a55341e78ce4446029417eac','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (538,'page','delete','16','4446d8754242262c0bc260b36e4f3dc8','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (539,'page','audit','16','a2e6ff8d1742da77c14e5710e0bba897','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (540,'banner','index','17','7e621d7499900aa64456aa00a7061c23','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (541,'banner','create','17','a0343eb94c7a3da174e156a185bf297b','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (542,'banner','edit','17','9934b9ecd62a5f00e251941f806855a4','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (543,'banner','delete','17','bd0c6e516fd9d0bf62ec0b880632de3e','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (544,'banner','audit','17','c3aee2034db9f9ea171538cae7e1d7a0','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (545,'video','index','18','34cf49998d4c63c6d534db6c1fc7fba2','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (546,'video','create','18','57b3142c4e2ce7013ffa1c48c7f0c933','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (547,'video','edit','18','0eee24bedcee69df67d8ec0e807221df','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (548,'video','delete','18','ea14b00b96c8b016a6e189eb5f90a0e3','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (549,'video','audit','18','210e9a2b258c017d4a5ef1de9ec720b6','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (550,'video','index','19','be178e53901879670ee13ff0e504eecb','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (551,'video','create','19','4271eefcea4d331d27bf92789e2d10fb','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (552,'video','edit','19','41ee78e5499aa197cee7defa39a24875','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (553,'video','delete','19','c221311bf15d138d1b6c488323d750d3','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (554,'video','audit','19','3dcaac67ffabd19d91a5d9aeb6d0170e','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (555,'page','index','20','5466387146c24c0bf2e3d16108518fa7','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (556,'page','create','20','046727c78669c6088d2be2b862fd501d','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (557,'page','edit','20','dafc520433ad196ddca6f9938049091a','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (558,'page','delete','20','b2740f38a985066e9767ad545cf7c8e9','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (559,'page','audit','20','450b5d5189d4272fc15c82132ed4da2b','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (560,'page','index','21','738415a045898e466366b85c88723e69','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (561,'page','create','21','62065420da4c663b7d5c0d7a7947d3cd','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (562,'page','edit','21','8e19b1bb5665bf12831a44c2f6f8af0a','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (563,'page','delete','21','0115d41918e5050d4d88356973b23547','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (564,'page','audit','21','f6654ab77d7426ecf185f5003f81b7ad','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (565,'video','index','22','ecb51576532e292cfb4b217e6fd85215','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (566,'video','create','22','7eba473a081d474b67e34b7648d9f382','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (567,'video','edit','22','d109651c227c83167313db145ee857d3','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (568,'video','delete','22','b6d88d560362c4f4a10650eed615422a','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (569,'video','audit','22','a67510b3e2b3302587004557916d0d2b','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (570,'page','index','23','45c753bdd6186dd65f538c58714c4f51','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (571,'page','create','23','0e82f25adfb0e7f312c881ddb16a5f0d','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (572,'page','edit','23','8d6f593674fc980af3c1d4e2e18850ee','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (573,'page','delete','23','98b51ae87774001b9930500272e7c84f','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (574,'page','audit','23','e1313eaf15429ca5e8b251b3d8776c48','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (575,'banner','index','24','ae1305af65512d7ba194b674fbcf9a0b','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (576,'banner','create','24','6f0b43dc3c16de83d037bbd97a9eaceb','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (577,'banner','edit','24','2770647257d13e2c3452342ca4bffcb7','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (578,'banner','delete','24','64366758a8fd3f75bda6e554eb364aab','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (579,'banner','audit','24','eb56c32135a288a799f67f646f00f238','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (580,'page','index','25','572c2b012731079c6dd52ef2aeda21c2','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (581,'page','create','25','2553f73a031d56c054b65ebda5e2e109','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (582,'page','edit','25','e62503bd66ab0424aeb484f3478e297b','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (583,'page','delete','25','199f745f65ed815f77bb7857583d442a','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (584,'page','audit','25','a69d2941fa1418b5e3f18e9462f8306e','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (585,'video','index','26','4a54d2511d792f8303ca3cefe3e90882','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (586,'video','create','26','651715ef6fa8092467abe37ce05aebe2','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (587,'video','edit','26','47f5ad7d23b5106f0fbf7ae63ed0ebb0','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (588,'video','delete','26','15c362e566912ceda403d3bfca666283','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (589,'video','audit','26','0150ca7d57fb762d74459c32f336c2ab','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (590,'video','index','27','1df00b2b6fbd89077b10b8d843c06d1b','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (591,'video','create','27','4fd18595394ed19d95d92fc1125fd9ec','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (592,'video','edit','27','a7e06fb7687f708bb5b925910890da4b','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (593,'video','delete','27','b5206e557b828f5fe4e44c30a9fac509','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (594,'video','audit','27','8203e6a6a94e476e2003cd9f8f800df0','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (595,'page','index','28','ca03f159e5e570feaa3cf960ac6a29e4','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (596,'page','create','28','ee7111a4cf26824f94c3b5bc85d2da5a','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (597,'page','edit','28','b4798aa2fb0b493c7928e9256181d73b','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (598,'page','delete','28','7f17c5907ef15086d24220a34579bc48','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (599,'page','audit','28','7a4329e99c0173026e66b2f6ff70324b','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (600,'banner','index','29','26fc8440ad097603652785b9edbb7879','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (601,'banner','create','29','4dab1e651b941324ffba26b54f9f8be7','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (602,'banner','edit','29','4e2dc1bdcc73b669ed6e459dc8f95793','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (603,'banner','delete','29','706016ce83c0121c3520bc1d8200efe7','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (604,'banner','audit','29','6efadba71aa2f9a6c39e42f6f29c2751','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (605,'video','index','30','36849c88d2f8146aba6e9660bf1ea6aa','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (606,'video','create','30','90ef0c1724605693586a08763db915c1','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (607,'video','edit','30','94df5cc2a8d5461f6f4884ee7fbe7394','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (608,'video','delete','30','0b3d452b4a7d9d85b4fcbb84193f51e1','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (609,'video','audit','30','3bf7d6e90ea633bed3ce530193dbf709','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (610,'page','index','31','42addba1d5649b3bc02dfebfe5833622','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (611,'page','create','31','6370b2e913e91163efa997f10fed6b0c','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (612,'page','edit','31','f96f8e3599fd3be147af77f0f638d166','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (613,'page','delete','31','5a8c2356ee4f7cf22b9d8a94458dbce0','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (614,'page','audit','31','615e298980da384bea6e6d7aac0f8131','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (615,'banner','index','32','72c05fc6ed221e796c9f2636f531e941','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (616,'banner','create','32','44503f2f6f028c3c5a024470d5bd24a6','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (617,'banner','edit','32','b007ea5a57d6e33ead8c34617d8d356c','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (618,'banner','delete','32','e0242cc487208a2e3f7091e4d4e8b0e4','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (619,'banner','audit','32','cf2eb9a7425eb3bee0da9711af490aea','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (620,'video','index','33','d160790db3423f9475ab5d4f074919a9','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (621,'video','create','33','1700d61f81d2eb32be38837368c350bb','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (622,'video','edit','33','ca0895bf2b295c4a6f9aa66ba025b24d','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (623,'video','delete','33','6117022238ff4adcf4e52bb88b4a3b81','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (624,'video','audit','33','0ace477db07d143fe102c0de733a8805','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (625,'page','index','34','36bcc6a7b0352f242c83e90f5d9e17df','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (626,'page','create','34','f85f41279e4fc46bafd341ed5c9bc59b','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (627,'page','edit','34','419a12d56315590115e9dad24bb0b93f','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (628,'page','delete','34','957a89d3746f2a9f05855451f0efc29c','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (629,'page','audit','34','ee36456d2a6f22f497eb0b6a22434cc7','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (630,'article','index','35','57e513c7623ba16ca0ba22d4e11b1264','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (631,'article','create','35','7d882cb3e12200a85e81b24ced7e0000','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (632,'article','edit','35','22d703380d749886b36bbd0dbb4f1589','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (633,'article','delete','35','c39f353c44c209234bae706740172fea','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (634,'article','audit','35','891c5d5a784859f501892f9718f9db6e','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (635,'video','index','36','c79bf73fb845580e856e4683d08aa65c','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (636,'video','create','36','594f81947df2ba96d962df8c281b6bde','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (637,'video','edit','36','8f181ea530fc4edc5e2cb9e33270c0f2','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (638,'video','delete','36','eaf56e022638f2dd477f93b9a3b89e83','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (639,'video','audit','36','0cee17180c7f7f2497a5efc02459b456','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (640,'page','index','37','66a07694f52cfe16465d38e9dc69bad9','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (641,'page','create','37','bcdd1c32d74465787726f7a4bc501342','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (642,'page','edit','37','a953d6a8714d6f9f40df8c58f754fad1','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (643,'page','delete','37','2674d5185c6d56e827310d9dd73526e9','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (644,'page','audit','37','5b0e1cdbb320328d22e6f3702a043d17','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (645,'banner','index','38','9c87baa4994b6f9ccf90c0ad79cd32df','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (646,'banner','create','38','c20cb1b3cf0aef03b4b3a45e73e90199','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (647,'banner','edit','38','19afc1418eae4d269de0850bf120912d','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (648,'banner','delete','38','ad35a4f23699e44b7e956009f0ffb7de','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (649,'banner','audit','38','7cc20f2ea2ee97428d19a7d598a86072','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (650,'video','index','39','bd28a62cf0528a490a7ab654b173cb4a','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (651,'video','create','39','44869ccd1e0a9c1291299d81937e5a8c','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (652,'video','edit','39','0115899cc217a195c0b2888794ff5ae5','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (653,'video','delete','39','e3bb3cab2a4cea733051cf7e7d2ad2da','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (654,'video','audit','39','f5a15aca438d84873a5e24dda0235ce5','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (655,'video','index','40','1587b1ae971e3394247b2915fd6f7eda','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (656,'video','create','40','be013d0b2cb51bbcb0f0c123b7c21172','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (657,'video','edit','40','cb7eb3a9331f33fe388d1272910b9448','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (658,'video','delete','40','7039641aa1f64118415691419d5dc3cc','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (659,'video','audit','40','f24518677ddfe25bba0453d299babb1c','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (660,'page','index','41','9b4678d9da4f2bba290f1a403212024f','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (661,'page','create','41','62c2457c52b9fa6eb0071ffdb78a032e','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (662,'page','edit','41','2e584c2a05e68baa8368838b0773b5c2','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (663,'page','delete','41','58da48735ef8c08881062700d5a96b31','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (664,'page','audit','41','185c6f4f71c2911b50bc60fe3e2f97d7','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (665,'banner','index','42','328779101f5dad509c2e35b28bca663d','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (666,'banner','create','42','c45a20b982d77da948c165dace3af08a','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (667,'banner','edit','42','13a747c53e9374a4df20a1aed2969b6c','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (668,'banner','delete','42','0fbe788c15682aba71adef9e355b7dd4','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (669,'banner','audit','42','b18f72da4d0a46047af5435d53ccf9cd','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (670,'page','index','43','da5034892ba9b75782afe2ef71a4e729','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (671,'page','create','43','3234ecdab2d7df558ca401237273e85a','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (672,'page','edit','43','198797e0331a1d87899bb46314336f2d','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (673,'page','delete','43','1582df6644060fda5c53eabdda89a69f','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (674,'page','audit','43','b1b2bd06b3194da0d4dc8b127f811d54','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (675,'video','index','44','6b0f1f67354f907fb3d1ca66fdb351f9','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (676,'video','create','44','15c944ca92de462d98cc6eba32a37d1b','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (677,'video','edit','44','b6bf264980e23daf0e0c0e187a6f1c93','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (678,'video','delete','44','3565572b81f441b9012237091f564f80','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (679,'video','audit','44','be08fc6189c287f5e08edb6eb8d3b419','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (680,'page','index','45','4e239dea1050da74ed1383c57661a641','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (681,'page','create','45','7e542f4bea0c8feb37845cb2b6c6df9c','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (682,'page','edit','45','2ee4e7ad7b3be0795917d0267a82dd71','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (683,'page','delete','45','288f5b8b92905b04df68ac49fcbe255a','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (684,'page','audit','45','ddf07e7e297d2ef8ddd050e14c4a61c1','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (685,'page','index','46','59705f58d82d5c9a90c644cc715db63a','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (686,'page','create','46','a5840506f4faa09f7a87abcfa1ffa98d','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (687,'page','edit','46','36272ad4230b64651f4ad86724d8956c','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (688,'page','delete','46','4189491b25e0c384ed29ff47fe9bc395','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (689,'page','audit','46','36aafa6b74c06f2e3635a410ac90bf73','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (690,'video','index','47','f31577853f998ccf164c4de6b3dd0f1e','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (691,'video','create','47','473f0bba8b8db1d45c49365a76542666','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (692,'video','edit','47','ad51872cb5bd8a6c03f50d843c18be4e','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (693,'video','delete','47','565bd41156a1c5689cf2b7f08394c575','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (694,'video','audit','47','e409bcbe1987403d464e0abc0ee60630','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (695,'recruit','index','48','c1de9ceab1272f9cdfdae9784687a4e7','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (696,'recruit','create','48','d69e978765aafca440d1080c87c91929','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (697,'recruit','edit','48','d7edabf659a22ab24935631e309c924a','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (698,'recruit','delete','48','73d68ec090691d2d252901d118c4f237','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (699,'recruit','audit','48','b2078c454ec4f7bdbb7af34c25cf9760','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (700,'video','index','49','596738779a649d06749cbfc214dc8661','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (701,'video','create','49','fe2f747a749446ec945356f81d6d2c2c','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (702,'video','edit','49','ae5731fed2def5e2158c176a740b0829','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (703,'video','delete','49','28a7751f72c920c579bc8dae0efef8bd','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (704,'video','audit','49','bc548925f7d89c975daadecd7eea7ebd','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (705,'page','index','50','e081593e62ee6d1f1604555b2213ffdb','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (706,'page','create','50','4cb56f3edb661cc66a6ab00cc377f2a5','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (707,'page','edit','50','52571597a7b7904ace09ac702d266d7b','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (708,'page','delete','50','f4204059f2876e7fafaf65fadd922617','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (709,'page','audit','50','141963f76dc31e0cbb0e27b2b198a3b9','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (710,'banner','index','51','a9e27dfbc6e544a3005478bebcfcaacc','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (711,'banner','create','51','d1befa86c6b3c755af0c7df38e9cdbe6','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (712,'banner','edit','51','c8b92af5141320fc604f285599154cdf','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (713,'banner','delete','51','c972a4d61a3c6e5d2df20a2ecbf672dc','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (714,'banner','audit','51','964967d0b8eff5c9efd625f1ae27f25f','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (715,'page','index','52','5966c1228cdb19552eaf40d068e417b7','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (716,'page','create','52','b43860f2c143d1bef65a57766a1006c4','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (717,'page','edit','52','4af90aaf73f78991ed8a94750a7e7d10','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (718,'page','delete','52','dd7ed79a9fec3a92c15da35e907400c7','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (719,'page','audit','52','7effe5cdb74aa177390ff124a924f4d4','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (720,'links','index','53','214ea1a7fecff45a8447cea07943d068','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (721,'links','create','53','bef23131580195c4a411d4222ef68c9f','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (722,'links','edit','53','78b231e4efafea1d14789b0ad8941cf2','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (723,'links','delete','53','af47d02385ccc820bce012061718aff8','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (724,'links','audit','53','a93b06daaedb7fd811ab57131fabc630','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (725,'page','index','54','ef5882db2dbb9945694c3da8839fb62e','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (726,'page','create','54','47a99a2994195a15e5d382cb2875f9e2','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (727,'page','edit','54','052ae0e6449cd88e7806754662841518','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (728,'page','delete','54','6b561ba8eb62957d5f3e2a19822cc4a7','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (729,'page','audit','54','3136833f119d269a7c8e790853f153fd','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (730,'page','index','55','ccad08b8f3eb6843d5bc27915df231b8','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (731,'page','create','55','2be9ebb073e9dfb32b30b7218a2ffde9','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (732,'page','edit','55','7ca38219b75debe1a6f8de34eb848703','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (733,'page','delete','55','ccd58779aa160dbcf9945e8a3cb0dde7','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (734,'page','audit','55','fd14480024cc055cb7b9251ef303c489','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (735,'page','index','56','bf8d7118db7efb9ade80e04c425e2acb','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (736,'page','create','56','754e6ba4c14508dc3a42e1bb9d55f912','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (737,'page','edit','56','6b67eda207aa411a405ea3bca5f00bbb','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (738,'page','delete','56','7e4579a79c0e582b03b80ae090e858d6','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (739,'page','audit','56','b8de0360819e064db6c9027b3fceb2dd','审核',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (740,'banner','index','57','7c419324d7de36fbdc2a33f019369584','查看',0);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (741,'banner','create','57','080f52b701b7039da081298c2eff32e2','创建',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (742,'banner','edit','57','641c588848270d1417adb80545e3b6fc','编辑',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (743,'banner','delete','57','a03f0a6bd555730326120d70875bb101','删除',1);
insert  into `boc_manager_purview`(`id`,`model`,`method`,`cid`,`uri`,`title`,`status`) values (744,'banner','audit','57','1dba57f4112cdc86d096a14d6c92d0b6','审核',1);

UNLOCK TABLES;

/*Table structure for table `boc_modules` */

DROP TABLE IF EXISTS `boc_modules`;

CREATE TABLE `boc_modules` (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '模型标识',
  `sort_id` int(2) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '显示名称',
  `controller` varchar(50) NOT NULL COMMENT '控制器名称',
  PRIMARY KEY (`id`)
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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `msg` tinytext COMMENT '提示消息',
  `level` int(1) DEFAULT '1' COMMENT '类型: 1notie 2info 3 success 4error',
  `timeline` int(11) NOT NULL COMMENT '时间',
  `markread` int(1) NOT NULL COMMENT '是否阅读',
  `notify` int(1) DEFAULT '0' COMMENT '是否提示过',
  `byer` int(6) NOT NULL DEFAULT '0' COMMENT '发送者 mid system is 0',
  `toer` int(6) NOT NULL COMMENT '接受者 mid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='消息提示';

/*Data for the table `boc_msgs` */

LOCK TABLES `boc_msgs` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_page` */

DROP TABLE IF EXISTS `boc_page`;

CREATE TABLE `boc_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(4) DEFAULT NULL COMMENT '栏目id',
  `ccid` int(11) DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) DEFAULT '0' COMMENT '审核',
  `title` tinytext COMMENT '标题',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `content2` mediumtext,
  `photo` varchar(200) DEFAULT NULL COMMENT '图片组',
  `thumb` varchar(200) DEFAULT NULL COMMENT '缩略图',
  `template` varchar(200) DEFAULT NULL COMMENT '模板',
  `timeline` int(10) DEFAULT NULL COMMENT '发布/修改时间',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='单页表';

/*Data for the table `boc_page` */

LOCK TABLES `boc_page` WRITE;

insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (1,5,0,1,0,'集团介绍','','','','<p><a textvalue=\"集团官网\" target=\"_blank\" class=\"tea fr\" href=\"http://www.chinaredsun.com/\" style=\"margin-top: 50px;\">集团官网</a></p><h2 class=\"introduct-title\">创富农民、健康市民、打造千亿级汽车产业链</h2><h3 class=\"introduct-stitle\">一、企业简介：</h3><p class=\"a-ch\">红太阳虽89年靠借资5000元白手起家，但历经26年五次创新优化。现已发展成为一家集科研、制造、市场全产业链的、拥有覆盖三国五省十八市（县）的占地7.8平方公里，员工万名、资产超500亿元（含无形资产）、年销售超200亿元、创利10亿元、专利和市场准入“双超”千件的以先进制造业和制造服务业为支撑的68家全资和控股子公司（其中拥有一家上市公司）的中国实业、商标等“六项”中国百强和中国制造、民营等“七项”中国500强的国家“十大领袖”和“亚洲品牌500强”企业。</p><p class=\"a-ch\">未来五年，将利用互联网信息和高新技术改造传统产业，逐步建成以互联网大数据产业为核心的、以大农业（生化农药、生态肥料、生化动物营养、富硒农业、功能软饮）与大健康（即健康食品、生化医药、新能源汽车、节能环保、休闲养生）产业为支撑的“一心两翼”的国际化产业集聚企业集团。</p><h3 class=\"introduct-stitle\">二、依靠产业优势，利用高新和“互联网+”大数据信息技术改造传统产业定位：</h3><h4 class=\"introduct-sstitle\">（一）世界村（红太阳）“一心两翼”产业格局定位：</h4><p class=\"a-ch\"><img title=\"1448536115884765PlWX.jpg\" src=\"http://121.41.128.239:8085/guoxing/upload/at/image/20151126/1448536115884765PlWX.jpg\" alt=\"未标题-1.jpg\" height=\"389\" width=\"960\"/></p><h4 class=\"introduct-sstitle\">（二）打造六大产业链定位：</h4><p class=\"a-ch\"><img src=\"http://121.41.128.239:8085/guoxing/static/web/img/chanye.jpg?t=1448522238\" alt=\"\" height=\"264\" width=\"960\"/></p><h4 class=\"introduct-sstitle\">（三）世界村与红太阳二大品牌的市场定位：</h4><p class=\"a-ch2\">红太阳服务农民，世界村服务市民</p>',NULL,NULL,NULL,NULL,1448522256,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (2,6,0,2,0,'公司简介','','','','<p><span style=\"color:#029141;\">　　安徽国星生物化学有限公司，是拥有中国制造、民营等七项“中国500强”和中国实业、商标、上市公司等六项“中国百强”及中国农药十连冠企业——红太阳投资建设。是一家集研发、制造、市场为一体的具有世界先进水平的大型化、成套化、上下游一体化的以生产新型“三药”及“三药”中间体为主的国家高新技术企业。</span></p><p><br/></p><p>　　公司成立于2007年1月，注册资金3.29亿元人民币，坐落于省级当涂经济开发区，占地面积约1平方公里，现有员工800余名，大专以上学历者占40%。公司已建成吡啶碱和有机磷两条产业链，是世界唯一的杂环类（从基础原料到终端产品）农药制造产业链生产企业，是全球最大的杂环类“三药”及“三药”中间体的生产中心。公司自主研发了替代高毒农药、替代进口农药的系列产品，为中国乃至世界农民节约成本近20亿元，为我国解决防治病虫草害和降低高毒农药环境污染的矛盾、大力发展绿色环保创汇农业找到了捷径，产品已被国家列入高科技产品和自主知识产品，开创了国家、企业、三农、环境等多赢局面。</p>',NULL,'4,34,33,35','2015/11/26/thumbnail/14485223352785h5wi3.jpg',NULL,1448522291,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (3,7,0,3,0,'杨寿海董事长简介','','','','<p>杨寿海，男，江苏高淳人，中共党员，硕士研究生学历，高级经济师。现任红太阳集团党委书记、董事长兼总裁、南京红太阳股份有限公司董事长。兼任中国农业技术推广协会、中国农药工业协会、中国农药应用与发展协会副会长，中企联的副会长、南京市人大代表，享受国务院特殊津贴。荣膺全国劳动模范、中国十大领袖企业家、十大改革风云人物、农村新闻人物和世界知名企业家等近百项荣誉称号。</p><p>自1989年10月靠借资5000元创业以来，杨寿海凭借“为他人创造幸福，为社会创造繁荣，为国家创造尊严”的经营理念，遵循“大智若愚、海纳百川、修己安人、厚德载物”的企业家素养，带领红太阳不仅使创造了世界产能第一的国际环保农药“三大”产业链，成为中国农药“十连冠”，而且发展成为一家集科研、制造、国内外市场全产业链的、拥有年销售超150亿元、员工近万名的以经营大健康产业为核心的，以生命科学、健康农业、节能环保、现代服务为基石的“一核四芯”产业体系为主体的、拥有68家全资和控股子公司（其中拥有一家上市公司，十家拟上市公司）的中国十大领袖企业；成功跃入中国十大领袖、国际环保农药等五项国内外十强，中国实业、中国商标等六项中国百强和中国民营、中国制造等七项中国500强企业的国家重点高新技术实业集团。</p>',NULL,'6,7,8,165','2015/11/26/thumbnail/14485223955567rsmkb.jpg',NULL,1448522368,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (4,16,0,4,0,'上级关怀简介','','','','国星生化自2007年成立以来，获得了各界人士的大力支持，随着公司影响力扩大、园林化工厂的建设，社会各界人士莅临公司参观，并指导公司的建设发展工作，现在，公司已成为当地园林化工厂的名片、各级政府接待的重要场地。',NULL,NULL,NULL,NULL,1448522595,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (5,13,0,5,0,'党群建设简介','','','','<p>国星生化自2007年成立以来，获得了各界人士的大力支持，随着公司影响力扩大、园林化工厂的建设，社会各界人士莅临公司参观，并指导公司的建设发展工作，现在，公司已成为当地园林化工厂的名片、各级政府接待的重要场地。</p><p><br/></p>',NULL,NULL,NULL,NULL,1448522598,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (6,9,0,6,0,'员工风采简介','','','','<p>公司始终树立“为想干事的人创造环境，为能干事的人创造舞台，为干成事的人创造价值，为干大事的人创造尊严”的人才责任意识，将人才视为富矿山，重视人才培养，与国内知名高校进行员工再教育合作，每年组织员工参加内、外部培训达5000人次，致力于打造学习型团队。同时创新激励机制，为员工创造出彩的机会、搭建展示的舞台；为员工配备标准化篮球场、图书馆、健身房等设施，每年开展丰富多彩的文体活动，提高员工业余生活品质。</p>',NULL,NULL,NULL,NULL,1448522600,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (7,20,0,7,0,'左','','','','公司斥资6000万元建设了2000平米的研发大楼和1500平米的中试车间。建有现代化的化学模拟与设计研究室、化学合成研究室、分离提纯研究室等9个研究实验室及质控检测中心和全自动DCS控制的中试生产基地。',NULL,NULL,NULL,NULL,1448522850,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (8,21,0,8,0,'右','','','','公司通过自行承建的“国家级企业技术中心”、“国家地方联合工程实验室”、“国家博士后科研工作站”、“安徽省院士工作站”“浙江大学—红太阳生物技术与工程联合研究中心”等研发基地，自主研发，拥有了一批自主知识产权核心技术，共实现科技成果转化35项，填补国内空白22项，省高新技术产品6个，省重点新产品2个，省名牌产品2个；参与制定国家标准2项，工信部标准4项，拥有专利44项。',NULL,NULL,NULL,NULL,1448522864,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (9,23,0,9,0,'工艺优化简介','','','','国星生化从安全组织管理、安全责任管理、安全防范管理以及安全教育管理四个方面推进安全工作，抓实、抓小、抓细确保安全生产，增加生产区域安全标语、安全文化专栏等安全文化建设工作，使员工安全意识内化于心、外化于行。',NULL,NULL,NULL,NULL,1448522879,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (10,25,0,10,0,'平台建设','','','','<p><strong>自主研发平台：</strong></p><p>公司自行承建了“国家级企业技术中心”、“国家地方联合工程实验室”、“国家博士后科研工作站”、“安徽省院士工作站”“浙江大学—红太阳生物技术与工程联合研究中心”等研发基地。</p><p><strong>&nbsp;</strong></p><p><strong>产学研平台：</strong></p><p>公司依托在本行业的人才、技术、装备等优势，分别与中科院大连化学物理研究所、北京化工大学、中国石油大学、浙江大学、合肥工业大学、南京工业大学等科研院所共同打造了“产学研”合作平台，保证了公司科研实力始终走在国际前端。</p>',NULL,'19','2015/11/26/thumbnail/14485230166752sqwly.jpg',NULL,1448523013,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (11,37,0,11,0,'节能减排简介','','','','<p>公司通过工艺优化、项目管理、精益生产等方式，每年实现节能减排目标达20%。</p><p><strong>&nbsp;</strong></p><p><strong>工艺优化：</strong></p><p>吡啶车间废气利用；吡啶车间蒸汽余热利用；液氮汽化器改造；</p><p>吡啶车间循环水风机改造。</p><p></p><p><strong>项目管理：</strong></p><p>大唐电厂蒸汽替换原有燃煤锅炉、引入天然气等项目。</p><p>&nbsp;</p><p><strong>管理创新：</strong></p><p>建立精益生产管理、QC小组讨论、质量月等管理活动。</p><p>&nbsp;</p><p>&nbsp;</p><p><img style=\"WIDTH: 216px; HEIGHT: 169px\" title=\"我的就是你的.jpg\" border=\"0\" alt=\"我的就是你的.jpg\" src=\"http://121.41.128.239:8085/guoxing/upload//at/image/20151208/1449542131166032FcU5.jpg\" width=\"268\" height=\"220\"/></p><p></p>',NULL,NULL,NULL,NULL,1448523251,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (12,28,0,12,0,'安全简介','','','','国星生化从安全组织管理、安全责任管理、安全防范管理以及安全教育管理四个方面推进安全工作，抓实、抓小、抓细确保安全生产，增加生产区域安全标语、安全文化专栏等安全文化建设工作，使员工安全意识内化于心、外化于行。',NULL,NULL,NULL,NULL,1448523266,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (13,31,0,13,0,'环保简介','','','','国星生化从安全组织管理、安全责任管理、安全防范管理以及安全教育管理四个方面推进安全工作，抓实、抓小、抓细确保安全生产，增加生产区域安全标语、安全文化专栏等安全文化建设工作，使员工安全意识内化于心、外化于行。',NULL,NULL,NULL,NULL,1448523289,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (14,34,0,14,0,'公益简介','','','','公司在取得非凡成就的同时，饮水思源，不忘记当地政府和周边百姓给予的帮助和关心，不遗余力为当地社会发展做贡献，带动当地就业、繁荣地方经济，同时积极投身于当地公益事业，捐资助学、对点帮助新农村建设、植树造林、帮扶五保户等。',NULL,NULL,NULL,NULL,1448523439,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (15,43,0,15,0,'品质中心','','','','公司坚持遵循“以质取胜、质赢未来”的质量发展战略，率先建立“首席质量官”制度，积极推行卓越绩效管理模式，形成了一套系统完备、科学规范、运行有效的的质量管理体系和品牌管理体系。为保证产品质量，公司先后投资近千万元，引进德国马尔文激光粒径分布仪、安捷伦液相色谱仪等国际先进大型精密检测、分析设备。公司产品质量始终遥遥领先。',NULL,'24,25','2015/11/26/thumbnail/14485236302722ekg3j.jpg',NULL,1448523624,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (16,41,0,16,0,'产品简介','','','','公司建成了世界唯一的杂环类（从基础原料到终端产品）农药制造产业链，目前已建成吡啶碱和有机磷两条产业链。',NULL,NULL,NULL,NULL,1448523635,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (17,45,0,17,0,'顾客','','','','<p>战略顾客在市场营销战略规划中能达成一致、形成长期稳固合作关系的客户战略清晰，忠诚度高，对市场了解深入，能够把握市场走向，对价格不敏感，对供应商各方面的要求都建立长期互信合作关系，塑造良好的供应商形象重点顾客在采购量、产品和品牌推广中能、成为关键因素客户采购量大，注重品牌与服务，忠诚度较高，对质量和供应要求高，对价格敏感度较低保证供应，保持产品的竞争力，提高服务水平。</p>','<table class=\"table-p\" border=\"1\" width=\"100%;\"><tbody><tr class=\"firstRow\"><td rowspan=\"2\" height=\"64\" width=\"86\"><strong>重要程度</strong></td><td rowspan=\"2\" height=\"64\" width=\"150\">划分标准</td><td colspan=\"2\" height=\"31\">关键顾客举例</td><td rowspan=\"2\" height=\"64\">顾客特点与需求偏好</td><td rowspan=\"2\" algin=\"center\" align=\"center\" height=\"64\">对公司运营要求</td></tr><tr heigth=\"31\"><td>吡啶碱产品</td><td>百枯草产品</td></tr><tr height=\"140\"><td width=\"86\"><strong>战略顾客</strong></td><td><p>在市场营销战略规划中能达成一致、形成长期稳固合作关系的客户</p></td><td><p><img src=\"http://121.41.128.239:8085/guoxing/static/web/img/ppic_11.jpg?t=1448523891\" alt=\"\" height=\"83\" width=\"138\"/></p></td><td><p><img src=\"http://121.41.128.239:8085/guoxing/static/web/img/ppic_13.jpg?t=1448523891\" alt=\"\" height=\"83\" width=\"138\"/></p></td><td><p style=\"margin-left:28px;\">战略清晰，忠诚度高，对市场了解深入，能够把握市场走向，对价格不敏感，对供应商各方面的要求都高<br/></p></td><td><p style=\"margin-left:28px;\">建立长期信合作关系，塑造良好的供应商形象</p></td></tr><tr height=\"156\"><td width=\"86\"><strong>点顾客</strong></td><td><p>在采购量、产品和品<br/>牌推广中能、成为关<br/>键因素客户<br/></p></td><td><p><img src=\"http://121.41.128.239:8085/guoxing/static/web/img/ppic_17.jpg?t=1448523891\" alt=\"\" height=\"83\" width=\"138\"/></p></td><td><p><img src=\"http://121.41.128.239:8085/guoxing/static/web/img/ppic_18.jpg?t=1448523891\" alt=\"\" height=\"83\" width=\"138\"/></p></td><td><p style=\"margin-left:28px;\">采购量大，注重品牌与服务，忠诚度较高，对质量和供应要求高，对价格敏感度较低</p></td><td><p style=\"margin-left:28px;\">保证供应，保持产品的竞争力，提高服务水平</p></td></tr></tbody></table>',NULL,NULL,NULL,1448523928,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (21,54,0,21,0,'生产工艺和环保技术附件','','','',NULL,NULL,'109','',NULL,1448707886,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (18,46,0,18,0,'战略供应商','','','','<p>战略供应商主要提供公司的生产所需原材料，该原材料是公司产品质量的保证，战略供应商在供应商之中处于不可替代的位置，塞拉尼斯公司提供吡啶碱重要原材料乙醇，是国星生化占领吡啶碱市场的重要因素；大唐电厂每年为公司供蒸汽、供电，为公司节能减排创造了良好的效益。<br/></p>','<table class=\"table-p\" border=\"1\" width=\"100%\"><tbody><tr class=\"firstRow\"><td height=\"64\" width=\"150\">供应商类别</td><td height=\"31\">关键的供方和合作伙伴</td><td height=\"64\">在关键产品和服务过程及创新中的角色</td></tr><tr height=\"140\"><td>战略供应商</td><td><p><img title=\"1448788061656662D3vq.jpg\" src=\"http://121.41.128.239:8085/guoxing/upload/at/image/20151129/1448788061656662D3vq.jpg\" alt=\"1.jpg\" width=\"220\"/></p></td><td><p style=\"margin-left:28px;\">战略供应商主要提供公司的生产所需原材料，该原材料是公司产品质量的保证，战略供应商在供应商之中处于不可替代的位置，塞拉尼斯公司提供吡啶碱重要原材料乙醇，是国星生化占领吡啶碱市场的重要因素；大唐电厂每年为公司供蒸汽、供电，为公司节能减排创造了良好的效益。</p></td></tr><tr height=\"156\"><td>重要供应商</td><td><p><img src=\"http://121.41.128.239:8085/guoxing/upload/at/image/20151129/1448788710242002K7xc.jpg\" title=\"1448788710242002K7xc.jpg\" alt=\"1.jpg\" width=\"220\"/></p></td><td><p style=\"margin-left:28px;\">重要供应商对公司产品起十分重要的作用，是公司在众多供应商选择企业信誉、产品质量相对突出的供应商。江苏润丰提供吡啶生产所需液氨，不仅使吡啶产品质量得到保障同时对于整个吡啶产业链影响重大；金禾实业解决了公司目前甲醛、乙醛产能不足的问题，保证了吡啶的正常生产。</p></td></tr><tr><td>技术<br/>合作伙伴</td><td><p><img src=\"http://121.41.128.239:8085/guoxing/upload/at/image/20151129/1448788002286000WsAK.jpg\" title=\"1448788002286000WsAK.jpg\" alt=\"1.jpg\" width=\"220\"/></p></td><td><p style=\"margin-left:28px;\">科研院所及大学是我们产学研平台建设必不可少的合作伙伴，这些单位技术实力强，研发水平高，在公司新产品研发、旧工艺改造给予了很多技术支持，对产品的技术有较大影响。</p></td></tr></tbody></table>',NULL,NULL,NULL,1448523976,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (19,52,0,19,0,'人才培养','','','','<h3 class=\"b-h3\">激励机制</h3><p class=\"b-p\"><strong>出国考察：</strong>会组织安排优秀科技、管理人员出国考察、参观，了解国外同行的发展形式，提高技术人员设计能力、创新意识和管理水平；邀请国外专家到公司现场指导。</p><p class=\"b-p\"><strong>学历提升：</strong>与高校合作形成“中专升大专、大专升本科、本科升硕士、硕士升博士”的人才梯队培养模式；每年都选派技术业务骨干参加各类学历教育鼓励员工积极进行自考、成人高考等学习，提高学历。</p><p class=\"b-p\"><strong>职业培训：</strong>组织员工参加统一的职业技能培训，并取得证书，全年开展各类培训达4000余人次；组织员工参加培训机构安排的专业培训；内部培训讲师给员工进行培训。</p><p class=\"b-p\"><strong>岗位奖励：</strong>组织劳动竞赛、操作能收评比和年度先进标兵评选等，并派选优秀选手参加外部各级比赛，促进员工立足岗位成长成才；对拔尖人员实行各类奖励，激励员工实现职业发展；每年进行先进员工的评选和奖励。</p><h3 class=\"b-h3\">晋升通道</h3><p>&nbsp; &nbsp; &nbsp; <img src=\"http://121.41.128.239:8085/guoxing/static/web/img/jppic.jpg?t=1448524074\" alt=\"\" style=\"margin-top:35px;\" height=\"457\" width=\"940\"/></p>',NULL,NULL,NULL,NULL,1448524103,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (20,50,0,20,0,'人才理念简介','','','','<p><span style=\"font-size: 14px;\">人才观之一：为想干事的人创造环境，为能干事的人创造舞台，为干成事的人创造地位，为干大事的人创造空间&nbsp;<br/>人才观之二：事业留人、感情留人、教育留人、待遇留人&nbsp;<br/>人才观之三：在一定文化基础上，情商大于智商，悟性胜于文凭， 勤奋高过能力，素质决定成败&nbsp;<br/>人才观之四：小才大用人人有用，大才小用等于无用 ，有德无才合理使用，有才无德不能重用，有文无识边养边用，德才兼备提拔重用&nbsp;<br/>人才观之五：合理的人在合理的时间用到合理的位置上发挥合理的效能</span></p>',NULL,NULL,NULL,NULL,1448524109,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (22,55,0,22,0,'底图','','','',NULL,NULL,'154','2015/12/11/thumbnail/1449813960464erl0q.jpg',NULL,1449813842,NULL);
insert  into `boc_page`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`title`,`title_seo`,`intro`,`tags`,`content`,`content2`,`photo`,`thumb`,`template`,`timeline`,`attachment`) values (23,56,0,23,0,'简介','','','','<p>技术中心占地面积3500平方米，建有现代化的化学模拟与设计研究室、化学合成研究室、分离提纯研究室、农药研究室、医药研究室、兽药研究室等9个研究实验室及质控检测中心和全自动DCS控制的中试生产基地，同时与国内外科研单位建立了专项开发研究室，拥有各类实验仪器500多台套，各类专业实验基地5个，仪器设备涵盖了分析检测及综合反应研究平台等实验设施，硬件配备完善。</p><p>&nbsp;</p><p style=\"text-align: center;\"><img style=\"width: 596px; height: 408px;\" src=\"http://121.41.128.239:8085/guoxing/upload/at/image/20151215/14501408279468940nNC.jpg\" title=\"技术中心\" alt=\"技术中心\" border=\"0\" height=\"408\" vspace=\"0\" width=\"596\"/></p><p style=\"text-align: center;\"><strong><span style=\"font-family: 隶书,SimLi; font-size: 12px;\">技术中心</span></strong></p><p><br/><strong><span style=\"font-family: 隶书,SimLi; font-size: 12px;\"></span></strong><span style=\"font-family: arial,helvetica,sans-serif;\"></span></p><p>近年来，公司技术中心成立了博士后科研工作站、院士工作站等高水平研究平台，引进、联合培养工程硕士研究生27人，博士8人，博士后1人；培养“安徽省特支计划创新领军人才”1人，“安徽省战略性新兴产业技术领军人才”2人，“安徽省‘115’产业创新团队带头人”1人。同时加强高层次技术带头人培养及团队建设，研发团队被批准为安徽省“115”产业创新团队。</p><p><br/></p><p style=\"text-align: center;\"><img style=\"width: 450px; height: 489px;\" src=\"http://121.41.128.239:8085/guoxing/upload/at/image/20151215/1450145103259057UrPU.jpg\" title=\"欧阳平凯院士.jpg\" alt=\"欧阳平凯院士.jpg\" border=\"0\" height=\"489\" vspace=\"0\" width=\"450\"/></p><p style=\"text-align: center;\"><strong><span style=\"font-size: 12px;\">欧阳平凯院士</span></strong></p>',NULL,NULL,NULL,NULL,1449824428,NULL);

UNLOCK TABLES;

/*Table structure for table `boc_product` */

DROP TABLE IF EXISTS `boc_product`;

CREATE TABLE `boc_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL COMMENT '栏目id',
  `sort_id` int(11) DEFAULT '1' COMMENT '排序编号',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `audit` int(1) DEFAULT '0' COMMENT '0/1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `title_seo` varchar(255) DEFAULT NULL COMMENT '优化标题',
  `intro` varchar(500) DEFAULT NULL COMMENT '简介',
  `tags` varchar(255) DEFAULT NULL COMMENT '标签',
  `content` mediumtext COMMENT '内容',
  `photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `show` tinyint(1) DEFAULT '1' COMMENT '是否显示',
  `click` int(11) DEFAULT '0' COMMENT '点击量',
  `timeline` int(11) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品';

/*Data for the table `boc_product` */

LOCK TABLES `boc_product` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_province` */

DROP TABLE IF EXISTS `boc_province`;

CREATE TABLE `boc_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `entitle` varchar(50) DEFAULT NULL COMMENT '英文标题',
  PRIMARY KEY (`id`)
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL DEFAULT '0' COMMENT '省级id',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `entitle` varchar(50) DEFAULT NULL COMMENT '英文标题',
  `weather` varchar(11) DEFAULT NULL COMMENT '国家天气ID',
  PRIMARY KEY (`id`)
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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `sort_id` int(11) DEFAULT '1' COMMENT '排序编号',
  `cid` int(11) DEFAULT NULL COMMENT '类型',
  `ccid` int(11) DEFAULT '0',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext,
  `intro` tinytext COMMENT '简介',
  `tags` tinytext,
  `content` mediumtext COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(11) DEFAULT NULL COMMENT '公告过期时间',
  `click` int(11) DEFAULT '0' COMMENT '浏览次数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显隐状态',
  `flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐到分类门户的页面显示',
  `audit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '突显状态/颜色',
  `show` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(255) DEFAULT NULL COMMENT '相关图片',
  `thumb` varchar(255) DEFAULT NULL COMMENT '图片缩略图',
  `attachment` varchar(255) DEFAULT NULL COMMENT '相关文件',
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `require` varchar(50) DEFAULT NULL COMMENT '职称要求',
  `amount` int(11) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `age` smallint(6) DEFAULT NULL,
  `age_max` smallint(6) DEFAULT NULL,
  `edu` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `requirement` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='人才招聘';

/*Data for the table `boc_recruit` */

LOCK TABLES `boc_recruit` WRITE;

insert  into `boc_recruit`(`id`,`sort_id`,`cid`,`ccid`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`click`,`status`,`flag`,`audit`,`show`,`photo`,`thumb`,`attachment`,`country`,`province`,`city`,`county`,`place`,`require`,`amount`,`department`,`gender`,`age`,`age_max`,`edu`,`major`,`experience`,`requirement`) values (1,1,48,0,'测试经理',NULL,NULL,NULL,'<h2>招聘职位：市场代表</h2><h2>职位要求：</h2><p>1. 给客户提供原油、黄金、白银等投资理财的“”咨讯、开户指导等各顶服务；</p><p>2. 具有一颗好学、坚强的内心，拥有对销售工作的热情，同时不断挑战自我</p><h2>岗位职责：</h2><p>1. 给客户提供原油、黄金、白银等投资理财的“”咨讯、开户指导等各顶服务；\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 具有一颗好学、坚强的内心</p><p>3. 通过电话、网络等方式了解客户需求&amp;zwnj;&amp;zwnj;，为客户提供投资理财建议</p>',1448467200,1456243200,0,1,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'杭州','面议',2,'HR',0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `boc_recruit`(`id`,`sort_id`,`cid`,`ccid`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`click`,`status`,`flag`,`audit`,`show`,`photo`,`thumb`,`attachment`,`country`,`province`,`city`,`county`,`place`,`require`,`amount`,`department`,`gender`,`age`,`age_max`,`edu`,`major`,`experience`,`requirement`) values (2,2,48,0,'测试职位',NULL,NULL,NULL,'<h2>招聘职位：市场代表</h2><h2>职位要求：</h2><p>1. 给客户提供原油、黄金、白银等投资理财的“”咨讯、开户指导等各顶服务；</p><p>2. 具有一颗好学、坚强的内心，拥有对销售工作的热情，同时不断挑战自我</p><h2>岗位职责：</h2><p>1. 给客户提供原油、黄金、白银等投资理财的“”咨讯、开户指导等各顶服务； &nbsp;<br/>2. 具有一颗好学、坚强的内心</p><p>3. 通过电话、网络等方式了解客户需求，为客户提供投资理财建议</p>',1448467200,1456243200,0,1,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'杭州','面议',3,'HR',0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `boc_recruit`(`id`,`sort_id`,`cid`,`ccid`,`title`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`expiretime`,`click`,`status`,`flag`,`audit`,`show`,`photo`,`thumb`,`attachment`,`country`,`province`,`city`,`county`,`place`,`require`,`amount`,`department`,`gender`,`age`,`age_max`,`edu`,`major`,`experience`,`requirement`) values (3,3,48,0,'111',NULL,NULL,NULL,'<p>1<br/></p>',1450281600,1458057600,0,1,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1',0,'1',0,NULL,NULL,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `boc_recruit_apply` */

DROP TABLE IF EXISTS `boc_recruit_apply`;

CREATE TABLE `boc_recruit_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `sort_id` int(11) DEFAULT '1' COMMENT '排序编号',
  `type_id` int(11) DEFAULT NULL COMMENT '类型',
  `recruit_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '应聘标题',
  `intro` varchar(1000) DEFAULT NULL COMMENT '简介',
  `content` mediumtext COMMENT '内容',
  `answer` mediumtext,
  `timeline_answer` int(11) DEFAULT NULL,
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expire` int(11) DEFAULT NULL COMMENT '公告过期时间',
  `solve` int(1) DEFAULT '0',
  `click` int(11) DEFAULT '0' COMMENT '浏览次数',
  `show` tinyint(4) DEFAULT '1' COMMENT '显隐状态',
  `recommend` tinyint(4) DEFAULT '0' COMMENT '推荐到分类门户的页面显示',
  `color` tinyint(4) DEFAULT '0' COMMENT '突显状态/颜色',
  `audit` tinyint(1) DEFAULT '0' COMMENT '审核状态',
  `photo` varchar(255) DEFAULT NULL COMMENT '相关图片',
  `thumb` varchar(255) DEFAULT NULL COMMENT '图片缩略图',
  `file` varchar(255) DEFAULT NULL COMMENT '相关文件',
  `ip` varchar(100) DEFAULT NULL,
  `ex1` varchar(255) DEFAULT '' COMMENT '其他标签（预留）',
  `ex2` varchar(255) DEFAULT '',
  `ex3` varchar(255) DEFAULT '',
  `ex4` varchar(255) DEFAULT '',
  `x` varchar(255) DEFAULT '',
  `y` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL COMMENT '部门',
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `marriage` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `qq` varchar(100) DEFAULT NULL,
  `msn` varchar(100) DEFAULT NULL,
  `wangwang` varchar(100) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL COMMENT '民族',
  `birthday` varchar(20) DEFAULT NULL,
  `politic` varchar(50) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `school` varchar(100) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL COMMENT '专业',
  `graduation` varchar(20) DEFAULT NULL COMMENT '毕业时间',
  `language` varchar(50) DEFAULT NULL COMMENT '外语水平',
  `position` varchar(100) DEFAULT NULL COMMENT '应聘职位',
  `age` smallint(6) DEFAULT NULL,
  `edu` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='在线应聘';

/*Data for the table `boc_recruit_apply` */

LOCK TABLES `boc_recruit_apply` WRITE;

insert  into `boc_recruit_apply`(`id`,`sort_id`,`type_id`,`recruit_id`,`title`,`intro`,`content`,`answer`,`timeline_answer`,`timeline`,`expire`,`solve`,`click`,`show`,`recommend`,`color`,`audit`,`photo`,`thumb`,`file`,`ip`,`ex1`,`ex2`,`ex3`,`ex4`,`x`,`y`,`country`,`province`,`city`,`county`,`place`,`department`,`name`,`gender`,`marriage`,`email`,`tel`,`mobile`,`qq`,`msn`,`wangwang`,`nation`,`birthday`,`politic`,`birthplace`,`school`,`major`,`graduation`,`language`,`position`,`age`,`edu`,`experience`) values (1,1,48,NULL,NULL,NULL,'dsfdsfds',NULL,NULL,1448524444,NULL,0,0,1,0,0,0,NULL,NULL,NULL,'115.238.95.194','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'test','男','未婚','766@qq.com','13656696896',NULL,NULL,NULL,NULL,'fds',NULL,'dsaf','fdsa','dsafds','adsfds','dfsaf','','销售经理',18,'高中',NULL);

UNLOCK TABLES;

/*Table structure for table `boc_sessions_adminer` */

DROP TABLE IF EXISTS `boc_sessions_adminer`;

CREATE TABLE `boc_sessions_adminer` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会话保存';

/*Data for the table `boc_sessions_adminer` */

LOCK TABLES `boc_sessions_adminer` WRITE;

insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('dc5a6e579230ed9b69ed00dbae360fd8','101.226.33.220','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486284,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('b6e65a06dc70002f8cccad800f0c2945','101.226.68.200','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486284,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('8f9f376ea2e8c449d09a919493ce584f','101.226.33.218','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486295,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('dd53e6ddc0e9298d22268bd49cc6c808','101.226.65.108','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486375,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('4c8bbe14c4718a7021d604124a36b245','180.153.212.13','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486450,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('40d261a62123aa97566098a1080f80b7','180.153.214.190','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486456,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('079c5ed80644b1314133defc494a95c9','180.153.206.22','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486514,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('1081945996cb1d6296251509c24bc982','222.211.226.108','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0',1471569522,'a:6:{s:9:\"user_data\";s:0:\"\";s:3:\"mid\";s:1:\"1\";s:5:\"uname\";s:8:\"bocadmin\";s:8:\"nickname\";s:12:\"超级用户\";s:8:\"login_ip\";s:15:\"222.211.226.108\";s:3:\"gid\";s:1:\"1\";}');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('ab7574bc4077e7b870f2880aa7dbca17','180.153.214.199','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486555,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('502f488f174289f035add46dd9a771e9','1.91.20.141','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36',1471486458,'a:6:{s:9:\"user_data\";s:0:\"\";s:3:\"mid\";s:1:\"1\";s:5:\"uname\";s:8:\"bocadmin\";s:8:\"nickname\";s:12:\"超级用户\";s:8:\"login_ip\";s:11:\"1.91.20.141\";s:3:\"gid\";s:1:\"1\";}');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('337593ad44ddffbe56a155bf09493233','140.207.185.112','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486730,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('d6ffe081173c9e4d0156a80fc7263f1c','101.226.69.246','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486652,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('7caa270230648a219ac2603bad9d8896','180.163.2.116','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486655,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('80003d1c3c0a54368e80ad59e32aad02','61.151.218.118','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486660,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('05a599c2f9b7ed75ab8634710a4544ce','101.226.33.206','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486662,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('fa6dae9f7b80a62a458ff2fb80fcd6b8','180.163.2.118','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486666,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('ab2a369de3696d6d84cd4ea47b6e28bc','101.226.33.208','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486677,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('72a2d603b98f628fa8b5264535555fb9','180.153.214.176','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486684,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('b520ed8317f78bf3d2b2347c9f09fd11','101.226.89.121','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486700,'');
insert  into `boc_sessions_adminer`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('49b831039b354a857b7e33824266d579','101.226.125.104','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',1471486705,'');

UNLOCK TABLES;

/*Table structure for table `boc_sessions_site` */

DROP TABLE IF EXISTS `boc_sessions_site`;

CREATE TABLE `boc_sessions_site` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会话保存';

/*Data for the table `boc_sessions_site` */

LOCK TABLES `boc_sessions_site` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_tags` */

DROP TABLE IF EXISTS `boc_tags`;

CREATE TABLE `boc_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(30) NOT NULL COMMENT '标签',
  `en` varchar(60) DEFAULT NULL COMMENT '拼音|英语',
  `len` int(3) DEFAULT '0' COMMENT '长度',
  `count` int(11) DEFAULT '0' COMMENT '计数',
  `type` int(1) DEFAULT '0' COMMENT '分类,0:tags,1:title,2:intro,3:content',
  PRIMARY KEY (`id`),
  KEY `record_index` (`id`,`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签表';

/*Data for the table `boc_tags` */

LOCK TABLES `boc_tags` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_tags_list` */

DROP TABLE IF EXISTS `boc_tags_list`;

CREATE TABLE `boc_tags_list` (
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT 'tag id',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT 'col id',
  `aid` int(11) NOT NULL DEFAULT '0' COMMENT 'col''s aritcle id',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '分类,0:tags,1:title,2:intro,3:content',
  `timeline` int(11) NOT NULL COMMENT '时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签使用表';

/*Data for the table `boc_tags_list` */

LOCK TABLES `boc_tags_list` WRITE;

UNLOCK TABLES;

/*Table structure for table `boc_upload` */

DROP TABLE IF EXISTS `boc_upload`;

CREATE TABLE `boc_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `size` int(11) DEFAULT NULL COMMENT '大小',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `url` varchar(100) DEFAULT NULL COMMENT '地址',
  `thumb` varchar(100) DEFAULT NULL COMMENT '缩略图',
  `deleteUrl` varchar(150) DEFAULT NULL COMMENT '删除',
  `alt` varbinary(30) DEFAULT NULL COMMENT '提示',
  `title` varbinary(100) DEFAULT NULL COMMENT '标题',
  `text` tinytext COMMENT '简介内容',
  `timeline` int(11) DEFAULT NULL COMMENT '时间线',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='文件上传';

/*Data for the table `boc_upload` */

LOCK TABLES `boc_upload` WRITE;

insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (1,'14485220954623t0lck.jpg',376171,'image/jpeg','2015/11/26/14485220954623t0lck.jpg','2015/11/26/thumbnail/14485220954623t0lck.jpg','?file=14485220954623t0lck.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522095);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (2,'14485221092857mqkfo.jpg',39541,'image/jpeg','2015/11/26/14485221092857mqkfo.jpg','2015/11/26/thumbnail/14485221092857mqkfo.jpg','?file=14485221092857mqkfo.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522109);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (153,'1449128733362598u8q.flv',5357177,'application/octet-stream','2015/1449128733362598u8q.flv',NULL,'?file=1449128733362598u8q.flv&dt=2015',NULL,NULL,NULL,1449128733);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (4,'14485223352785h5wi3.jpg',272215,'image/jpeg','2015/11/26/14485223352785h5wi3.jpg','2015/11/26/thumbnail/14485223352785h5wi3.jpg','?file=14485223352785h5wi3.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522335);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (135,'144906540204929ql96.jpg',146535,'image/jpeg','2015/12/02/144906540204929ql96.jpg','2015/12/02/thumbnail/144906540204929ql96.jpg','?file=144906540204929ql96.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065402);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (6,'14485223955567rsmkb.jpg',36761,'image/jpeg','2015/11/26/14485223955567rsmkb.jpg','2015/11/26/thumbnail/14485223955567rsmkb.jpg','?file=14485223955567rsmkb.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522395);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (7,'144852239735163wrfs.jpg',36761,'image/jpeg','2015/11/26/144852239735163wrfs.jpg','2015/11/26/thumbnail/144852239735163wrfs.jpg','?file=144852239735163wrfs.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522397);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (8,'14485223992252wies7.jpg',36761,'image/jpeg','2015/11/26/14485223992252wies7.jpg','2015/11/26/thumbnail/14485223992252wies7.jpg','?file=14485223992252wies7.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522399);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (11,'14485226579664h3ha6.jpg',42025,'image/jpeg','2015/11/26/14485226579664h3ha6.jpg','2015/11/26/thumbnail/14485226579664h3ha6.jpg','?file=14485226579664h3ha6.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522657);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (12,'14485226746755i8x5x.jpg',31538,'image/jpeg','2015/11/26/14485226746755i8x5x.jpg','2015/11/26/thumbnail/14485226746755i8x5x.jpg','?file=14485226746755i8x5x.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522674);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (13,'14485226794446kr1bj.jpg',71904,'image/jpeg','2015/11/26/14485226794446kr1bj.jpg','2015/11/26/thumbnail/14485226794446kr1bj.jpg','?file=14485226794446kr1bj.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522679);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (14,'144852268376398yb2f.jpg',46814,'image/jpeg','2015/11/26/144852268376398yb2f.jpg','2015/11/26/thumbnail/144852268376398yb2f.jpg','?file=144852268376398yb2f.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522683);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (15,'1448522933913h4ckn.jpg',64074,'image/jpeg','2015/11/26/1448522933913h4ckn.jpg','2015/11/26/thumbnail/1448522933913h4ckn.jpg','?file=1448522933913h4ckn.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522933);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (16,'1448522967006mmeef.jpg',66463,'image/jpeg','2015/11/26/1448522967006mmeef.jpg','2015/11/26/thumbnail/1448522967006mmeef.jpg','?file=1448522967006mmeef.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522967);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (17,'14485229828987qy1uy.jpg',34539,'image/jpeg','2015/11/26/14485229828987qy1uy.jpg','2015/11/26/thumbnail/14485229828987qy1uy.jpg','?file=14485229828987qy1uy.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522982);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (18,'1448522992778vz8on.jpg',33818,'image/jpeg','2015/11/26/1448522992778vz8on.jpg','2015/11/26/thumbnail/1448522992778vz8on.jpg','?file=1448522992778vz8on.jpg&dt=2015/11/26',NULL,NULL,NULL,1448522992);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (19,'14485230166752sqwly.jpg',117284,'image/jpeg','2015/11/26/14485230166752sqwly.jpg','2015/11/26/thumbnail/14485230166752sqwly.jpg','?file=14485230166752sqwly.jpg&dt=2015/11/26',NULL,NULL,NULL,1448523016);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (57,'1448689789684n8avj.jpg',199250,'image/jpeg','2015/11/28/1448689789684n8avj.jpg','2015/11/28/thumbnail/1448689789684n8avj.jpg','?file=1448689789684n8avj.jpg&dt=2015/11/28',NULL,NULL,NULL,1448689789);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (56,'14486897797066i83jc.jpg',130309,'image/jpeg','2015/11/28/14486897797066i83jc.jpg','2015/11/28/thumbnail/14486897797066i83jc.jpg','?file=14486897797066i83jc.jpg&dt=2015/11/28',NULL,NULL,NULL,1448689779);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (78,'1448691269192806k8d.jpg',115044,'image/jpeg','2015/11/28/1448691269192806k8d.jpg','2015/11/28/thumbnail/1448691269192806k8d.jpg','?file=1448691269192806k8d.jpg&dt=2015/11/28',NULL,NULL,NULL,1448691269);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (77,'14486912610776pqirm.jpg',109024,'image/jpeg','2015/11/28/14486912610776pqirm.jpg','2015/11/28/thumbnail/14486912610776pqirm.jpg','?file=14486912610776pqirm.jpg&dt=2015/11/28',NULL,NULL,NULL,1448691261);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (24,'14485236302722ekg3j.jpg',87356,'image/jpeg','2015/11/26/14485236302722ekg3j.jpg','2015/11/26/thumbnail/14485236302722ekg3j.jpg','?file=14485236302722ekg3j.jpg&dt=2015/11/26',NULL,NULL,NULL,1448523630);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (25,'14485236302792ekg3j.jpg',66805,'image/jpeg','2015/11/26/14485236302792ekg3j.jpg','2015/11/26/thumbnail/14485236302792ekg3j.jpg','?file=14485236302792ekg3j.jpg&dt=2015/11/26',NULL,NULL,NULL,1448523630);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (26,'14485236650644dnn9a.jpg',82212,'image/jpeg','2015/11/26/14485236650644dnn9a.jpg','2015/11/26/thumbnail/14485236650644dnn9a.jpg','?file=14485236650644dnn9a.jpg&dt=2015/11/26',NULL,NULL,NULL,1448523665);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (27,'14485238087543xfxuc.jpg',90482,'image/jpeg','2015/11/26/14485238087543xfxuc.jpg','2015/11/26/thumbnail/14485238087543xfxuc.jpg','?file=14485238087543xfxuc.jpg&dt=2015/11/26',NULL,NULL,NULL,1448523808);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (53,'14486883664742ukarb.jpg',19283,'image/jpeg','2015/11/28/14486883664742ukarb.jpg','2015/11/28/thumbnail/14486883664742ukarb.jpg','?file=14486883664742ukarb.jpg&dt=2015/11/28',NULL,NULL,NULL,1448688366);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (54,'14486883783355s74gz.jpg',19524,'image/jpeg','2015/11/28/14486883783355s74gz.jpg','2015/11/28/thumbnail/14486883783355s74gz.jpg','?file=14486883783355s74gz.jpg&dt=2015/11/28',NULL,NULL,NULL,1448688378);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (51,'14486883486857w4iyc.jpg',33701,'image/jpeg','2015/11/28/14486883486857w4iyc.jpg','2015/11/28/thumbnail/14486883486857w4iyc.jpg','?file=14486883486857w4iyc.jpg&dt=2015/11/28',NULL,NULL,NULL,1448688348);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (50,'14486883352162j7dtz.jpg',31508,'image/jpeg','2015/11/28/14486883352162j7dtz.jpg','2015/11/28/thumbnail/14486883352162j7dtz.jpg','?file=14486883352162j7dtz.jpg&dt=2015/11/28',NULL,NULL,NULL,1448688335);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (35,'14485364792606isifx.jpg',97945,'image/jpeg','2015/11/26/14485364792606isifx.jpg','2015/11/26/thumbnail/14485364792606isifx.jpg','?file=14485364792606isifx.jpg&dt=2015/11/26',NULL,NULL,NULL,1448536479);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (33,'14485364411197tscf1.jpg',136497,'image/jpeg','2015/11/26/14485364411197tscf1.jpg','2015/11/26/thumbnail/14485364411197tscf1.jpg','?file=14485364411197tscf1.jpg&dt=2015/11/26',NULL,NULL,NULL,1448536441);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (34,'14485364411265tscf1.jpg',93536,'image/jpeg','2015/11/26/14485364411265tscf1.jpg','2015/11/26/thumbnail/14485364411265tscf1.jpg','?file=14485364411265tscf1.jpg&dt=2015/11/26',NULL,NULL,NULL,1448536441);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (37,'1448537809224wtro4.jpg',26146,'image/jpeg','2015/11/26/1448537809224wtro4.jpg','2015/11/26/thumbnail/1448537809224wtro4.jpg','?file=1448537809224wtro4.jpg&dt=2015/11/26',NULL,NULL,NULL,1448537809);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (38,'14486044941972vwoet.jpg',147369,'image/jpeg','2015/11/27/14486044941972vwoet.jpg','2015/11/27/thumbnail/14486044941972vwoet.jpg','?file=14486044941972vwoet.jpg&dt=2015/11/27',NULL,NULL,NULL,1448604494);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (39,'144860450192059iffd.jpg',123300,'image/jpeg','2015/11/27/144860450192059iffd.jpg','2015/11/27/thumbnail/144860450192059iffd.jpg','?file=144860450192059iffd.jpg&dt=2015/11/27',NULL,NULL,NULL,1448604501);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (40,'14486045101524hqtuu.jpg',256638,'image/jpeg','2015/11/27/14486045101524hqtuu.jpg','2015/11/27/thumbnail/14486045101524hqtuu.jpg','?file=14486045101524hqtuu.jpg&dt=2015/11/27',NULL,NULL,NULL,1448604510);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (41,'14486045178265vcjde.jpg',186714,'image/jpeg','2015/11/27/14486045178265vcjde.jpg','2015/11/27/thumbnail/14486045178265vcjde.jpg','?file=14486045178265vcjde.jpg&dt=2015/11/27',NULL,NULL,NULL,1448604517);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (42,'1448604526964622fsd.jpg',151700,'image/jpeg','2015/11/27/1448604526964622fsd.jpg','2015/11/27/thumbnail/1448604526964622fsd.jpg','?file=1448604526964622fsd.jpg&dt=2015/11/27',NULL,NULL,NULL,1448604526);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (43,'144860453663537344l.jpg',148443,'image/jpeg','2015/11/27/144860453663537344l.jpg','2015/11/27/thumbnail/144860453663537344l.jpg','?file=144860453663537344l.jpg&dt=2015/11/27',NULL,NULL,NULL,1448604536);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (44,'14486045450231ij63v.jpg',138166,'image/jpeg','2015/11/27/14486045450231ij63v.jpg','2015/11/27/thumbnail/14486045450231ij63v.jpg','?file=14486045450231ij63v.jpg&dt=2015/11/27',NULL,NULL,NULL,1448604545);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (45,'14486045517432e5f4w.jpg',140435,'image/jpeg','2015/11/27/14486045517432e5f4w.jpg','2015/11/27/thumbnail/14486045517432e5f4w.jpg','?file=14486045517432e5f4w.jpg&dt=2015/11/27',NULL,NULL,NULL,1448604551);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (46,'1448604558727s9o6g.jpg',131347,'image/jpeg','2015/11/27/1448604558727s9o6g.jpg','2015/11/27/thumbnail/1448604558727s9o6g.jpg','?file=1448604558727s9o6g.jpg&dt=2015/11/27',NULL,NULL,NULL,1448604558);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (47,'14486045660753368np.jpg',149217,'image/jpeg','2015/11/27/14486045660753368np.jpg','2015/11/27/thumbnail/14486045660753368np.jpg','?file=14486045660753368np.jpg&dt=2015/11/27',NULL,NULL,NULL,1448604566);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (48,'1448604572729l05r1.jpg',160558,'image/jpeg','2015/11/27/1448604572729l05r1.jpg','2015/11/27/thumbnail/1448604572729l05r1.jpg','?file=1448604572729l05r1.jpg&dt=2015/11/27',NULL,NULL,NULL,1448604572);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (49,'14486045814696a8jn1.jpg',159116,'image/jpeg','2015/11/27/14486045814696a8jn1.jpg','2015/11/27/thumbnail/14486045814696a8jn1.jpg','?file=14486045814696a8jn1.jpg&dt=2015/11/27',NULL,NULL,NULL,1448604581);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (55,'144868974807737co30.jpg',128659,'image/jpeg','2015/11/28/144868974807737co30.jpg','2015/11/28/thumbnail/144868974807737co30.jpg','?file=144868974807737co30.jpg&dt=2015/11/28',NULL,NULL,NULL,1448689748);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (58,'144868979542664k8zv.jpg',162171,'image/jpeg','2015/11/28/144868979542664k8zv.jpg','2015/11/28/thumbnail/144868979542664k8zv.jpg','?file=144868979542664k8zv.jpg&dt=2015/11/28',NULL,NULL,NULL,1448689795);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (60,'144868989207327x93s.jpg',190757,'image/jpeg','2015/11/28/144868989207327x93s.jpg','2015/11/28/thumbnail/144868989207327x93s.jpg','?file=144868989207327x93s.jpg&dt=2015/11/28',NULL,NULL,NULL,1448689892);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (62,'14486899222753lzd3f.jpg',180476,'image/jpeg','2015/11/28/14486899222753lzd3f.jpg','2015/11/28/thumbnail/14486899222753lzd3f.jpg','?file=14486899222753lzd3f.jpg&dt=2015/11/28',NULL,NULL,NULL,1448689922);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (63,'14486899297683h44nz.jpg',176725,'image/jpeg','2015/11/28/14486899297683h44nz.jpg','2015/11/28/thumbnail/14486899297683h44nz.jpg','?file=14486899297683h44nz.jpg&dt=2015/11/28',NULL,NULL,NULL,1448689929);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (64,'14486899340442147t2.jpg',158046,'image/jpeg','2015/11/28/14486899340442147t2.jpg','2015/11/28/thumbnail/14486899340442147t2.jpg','?file=14486899340442147t2.jpg&dt=2015/11/28',NULL,NULL,NULL,1448689934);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (65,'1448689938357cijg.jpg',170560,'image/jpeg','2015/11/28/1448689938357cijg.jpg','2015/11/28/thumbnail/1448689938357cijg.jpg','?file=1448689938357cijg.jpg&dt=2015/11/28',NULL,NULL,NULL,1448689938);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (68,'14486900451858wq9hl.jpg',240254,'image/jpeg','2015/11/28/14486900451858wq9hl.jpg','2015/11/28/thumbnail/14486900451858wq9hl.jpg','?file=14486900451858wq9hl.jpg&dt=2015/11/28',NULL,NULL,NULL,1448690045);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (67,'14486900375727lb60b.jpg',164132,'image/jpeg','2015/11/28/14486900375727lb60b.jpg','2015/11/28/thumbnail/14486900375727lb60b.jpg','?file=14486900375727lb60b.jpg&dt=2015/11/28',NULL,NULL,NULL,1448690037);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (69,'14486900535995pnbyc.jpg',191607,'image/jpeg','2015/11/28/14486900535995pnbyc.jpg','2015/11/28/thumbnail/14486900535995pnbyc.jpg','?file=14486900535995pnbyc.jpg&dt=2015/11/28',NULL,NULL,NULL,1448690053);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (70,'144869006012563rkie.jpg',161253,'image/jpeg','2015/11/28/144869006012563rkie.jpg','2015/11/28/thumbnail/144869006012563rkie.jpg','?file=144869006012563rkie.jpg&dt=2015/11/28',NULL,NULL,NULL,1448690060);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (71,'14486900683557wo4y5.jpg',117553,'image/jpeg','2015/11/28/14486900683557wo4y5.jpg','2015/11/28/thumbnail/14486900683557wo4y5.jpg','?file=14486900683557wo4y5.jpg&dt=2015/11/28',NULL,NULL,NULL,1448690068);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (72,'14486900756855stci7.jpg',162253,'image/jpeg','2015/11/28/14486900756855stci7.jpg','2015/11/28/thumbnail/14486900756855stci7.jpg','?file=14486900756855stci7.jpg&dt=2015/11/28',NULL,NULL,NULL,1448690075);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (73,'14486900830364l8whz.jpg',114324,'image/jpeg','2015/11/28/14486900830364l8whz.jpg','2015/11/28/thumbnail/14486900830364l8whz.jpg','?file=14486900830364l8whz.jpg&dt=2015/11/28',NULL,NULL,NULL,1448690083);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (74,'14486900908712zunij.jpg',136362,'image/jpeg','2015/11/28/14486900908712zunij.jpg','2015/11/28/thumbnail/14486900908712zunij.jpg','?file=14486900908712zunij.jpg&dt=2015/11/28',NULL,NULL,NULL,1448690090);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (75,'14486901969274axljf.jpg',62917,'image/jpeg','2015/11/28/14486901969274axljf.jpg','2015/11/28/thumbnail/14486901969274axljf.jpg','?file=14486901969274axljf.jpg&dt=2015/11/28',NULL,NULL,NULL,1448690196);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (76,'144869124370449aqgm.jpg',117713,'image/jpeg','2015/11/28/144869124370449aqgm.jpg','2015/11/28/thumbnail/144869124370449aqgm.jpg','?file=144869124370449aqgm.jpg&dt=2015/11/28',NULL,NULL,NULL,1448691243);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (79,'14486912759834zhhup.jpg',144368,'image/jpeg','2015/11/28/14486912759834zhhup.jpg','2015/11/28/thumbnail/14486912759834zhhup.jpg','?file=14486912759834zhhup.jpg&dt=2015/11/28',NULL,NULL,NULL,1448691276);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (80,'14486912824821d3qdq.jpg',88114,'image/jpeg','2015/11/28/14486912824821d3qdq.jpg','2015/11/28/thumbnail/14486912824821d3qdq.jpg','?file=14486912824821d3qdq.jpg&dt=2015/11/28',NULL,NULL,NULL,1448691282);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (81,'14486912877757xmtju.jpg',69591,'image/jpeg','2015/11/28/14486912877757xmtju.jpg','2015/11/28/thumbnail/14486912877757xmtju.jpg','?file=14486912877757xmtju.jpg&dt=2015/11/28',NULL,NULL,NULL,1448691287);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (82,'1448691293894fxqno.jpg',65985,'image/jpeg','2015/11/28/1448691293894fxqno.jpg','2015/11/28/thumbnail/1448691293894fxqno.jpg','?file=1448691293894fxqno.jpg&dt=2015/11/28',NULL,NULL,NULL,1448691293);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (83,'14486912999752e8or0.jpg',148072,'image/jpeg','2015/11/28/14486912999752e8or0.jpg','2015/11/28/thumbnail/14486912999752e8or0.jpg','?file=14486912999752e8or0.jpg&dt=2015/11/28',NULL,NULL,NULL,1448691299);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (84,'1448695239071foec2.jpg',134942,'image/jpeg','2015/11/28/1448695239071foec2.jpg','2015/11/28/thumbnail/1448695239071foec2.jpg','?file=1448695239071foec2.jpg&dt=2015/11/28',NULL,NULL,NULL,1448695239);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (85,'1448695245848wibyv.jpg',115875,'image/jpeg','2015/11/28/1448695245848wibyv.jpg','2015/11/28/thumbnail/1448695245848wibyv.jpg','?file=1448695245848wibyv.jpg&dt=2015/11/28',NULL,NULL,NULL,1448695245);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (86,'14486952525216amkhx.jpg',87420,'image/jpeg','2015/11/28/14486952525216amkhx.jpg','2015/11/28/thumbnail/14486952525216amkhx.jpg','?file=14486952525216amkhx.jpg&dt=2015/11/28',NULL,NULL,NULL,1448695252);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (87,'1448695259547368aiy.jpg',117011,'image/jpeg','2015/11/28/1448695259547368aiy.jpg','2015/11/28/thumbnail/1448695259547368aiy.jpg','?file=1448695259547368aiy.jpg&dt=2015/11/28',NULL,NULL,NULL,1448695259);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (88,'14486952660322ku120.jpg',110003,'image/jpeg','2015/11/28/14486952660322ku120.jpg','2015/11/28/thumbnail/14486952660322ku120.jpg','?file=14486952660322ku120.jpg&dt=2015/11/28',NULL,NULL,NULL,1448695266);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (89,'144869527225181ny5c.jpg',109603,'image/jpeg','2015/11/28/144869527225181ny5c.jpg','2015/11/28/thumbnail/144869527225181ny5c.jpg','?file=144869527225181ny5c.jpg&dt=2015/11/28',NULL,NULL,NULL,1448695272);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (90,'14486952815929wc2t.jpg',138664,'image/jpeg','2015/11/28/14486952815929wc2t.jpg','2015/11/28/thumbnail/14486952815929wc2t.jpg','?file=14486952815929wc2t.jpg&dt=2015/11/28',NULL,NULL,NULL,1448695281);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (91,'14486952866024cey8f.jpg',158137,'image/jpeg','2015/11/28/14486952866024cey8f.jpg','2015/11/28/thumbnail/14486952866024cey8f.jpg','?file=14486952866024cey8f.jpg&dt=2015/11/28',NULL,NULL,NULL,1448695286);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (92,'14486952913791ex1wj.jpg',64095,'image/jpeg','2015/11/28/14486952913791ex1wj.jpg','2015/11/28/thumbnail/14486952913791ex1wj.jpg','?file=14486952913791ex1wj.jpg&dt=2015/11/28',NULL,NULL,NULL,1448695291);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (130,'14490649308581awhex.jpg',145079,'image/jpeg','2015/12/02/14490649308581awhex.jpg','2015/12/02/thumbnail/14490649308581awhex.jpg','?file=14490649308581awhex.jpg&dt=2015/12/02',NULL,NULL,NULL,1449064930);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (127,'14488603733249rn497.jpg',47345,'image/jpeg','2015/11/30/14488603733249rn497.jpg','2015/11/30/thumbnail/14488603733249rn497.jpg','?file=14488603733249rn497.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860373);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (126,'14488603663501v0epo.jpg',43642,'image/jpeg','2015/11/30/14488603663501v0epo.jpg','2015/11/30/thumbnail/14488603663501v0epo.jpg','?file=14488603663501v0epo.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860366);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (125,'1448860356879180pdg.jpg',40607,'image/jpeg','2015/11/30/1448860356879180pdg.jpg','2015/11/30/thumbnail/1448860356879180pdg.jpg','?file=1448860356879180pdg.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860356);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (134,'14490653845285catx7.jpg',189722,'image/jpeg','2015/12/02/14490653845285catx7.jpg','2015/12/02/thumbnail/14490653845285catx7.jpg','?file=14490653845285catx7.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065384);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (133,'14490653657449h18oh.jpg',136641,'image/jpeg','2015/12/02/14490653657449h18oh.jpg','2015/12/02/thumbnail/14490653657449h18oh.jpg','?file=14490653657449h18oh.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065365);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (132,'144906534068365z8uz.jpg',138435,'image/jpeg','2015/12/02/144906534068365z8uz.jpg','2015/12/02/thumbnail/144906534068365z8uz.jpg','?file=144906534068365z8uz.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065340);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (110,'14488497453498l3ies.jpg',42025,'image/jpeg','2015/11/30/14488497453498l3ies.jpg','2015/11/30/thumbnail/14488497453498l3ies.jpg','?file=14488497453498l3ies.jpg&dt=2015/11/30',NULL,NULL,NULL,1448849745);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (124,'14488603459896p66l1.jpg',40021,'image/jpeg','2015/11/30/14488603459896p66l1.jpg','2015/11/30/thumbnail/14488603459896p66l1.jpg','?file=14488603459896p66l1.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860345);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (129,'14488603904274ssk4z.jpg',45712,'image/jpeg','2015/11/30/14488603904274ssk4z.jpg','2015/11/30/thumbnail/14488603904274ssk4z.jpg','?file=14488603904274ssk4z.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860390);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (123,'14488603367522hfap1.jpg',49746,'image/jpeg','2015/11/30/14488603367522hfap1.jpg','2015/11/30/thumbnail/14488603367522hfap1.jpg','?file=14488603367522hfap1.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860336);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (122,'144886032745279qeak.jpg',50032,'image/jpeg','2015/11/30/144886032745279qeak.jpg','2015/11/30/thumbnail/144886032745279qeak.jpg','?file=144886032745279qeak.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860327);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (109,'14487862574338q3z9k.doc',169472,'application/msword','2015/11/29/14487862574338q3z9k.doc',NULL,'?file=14487862574338q3z9k.doc&dt=2015/11/29',NULL,NULL,NULL,1448786257);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (111,'14488497485401u0z7y.jpg',66805,'image/jpeg','2015/11/30/14488497485401u0z7y.jpg','2015/11/30/thumbnail/14488497485401u0z7y.jpg','?file=14488497485401u0z7y.jpg&dt=2015/11/30',NULL,NULL,NULL,1448849748);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (112,'14488600078866kvhww.jpg',65097,'image/jpeg','2015/11/30/14488600078866kvhww.jpg','2015/11/30/thumbnail/14488600078866kvhww.jpg','?file=14488600078866kvhww.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860007);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (113,'1448860018914947h6t.jpg',86455,'image/jpeg','2015/11/30/1448860018914947h6t.jpg','2015/11/30/thumbnail/1448860018914947h6t.jpg','?file=1448860018914947h6t.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860018);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (114,'14488600279524ufvkt.jpg',123505,'image/jpeg','2015/11/30/14488600279524ufvkt.jpg','2015/11/30/thumbnail/14488600279524ufvkt.jpg','?file=14488600279524ufvkt.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860027);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (115,'14488600360361259zs.jpg',102560,'image/jpeg','2015/11/30/14488600360361259zs.jpg','2015/11/30/thumbnail/14488600360361259zs.jpg','?file=14488600360361259zs.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860036);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (116,'14488600450393ad5ws.jpg',86762,'image/jpeg','2015/11/30/14488600450393ad5ws.jpg','2015/11/30/thumbnail/14488600450393ad5ws.jpg','?file=14488600450393ad5ws.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860045);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (119,'14488600672987d1of5.jpg',79993,'image/jpeg','2015/11/30/14488600672987d1of5.jpg','2015/11/30/thumbnail/14488600672987d1of5.jpg','?file=14488600672987d1of5.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860067);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (118,'14488600572186qih3f.jpg',75771,'image/jpeg','2015/11/30/14488600572186qih3f.jpg','2015/11/30/thumbnail/14488600572186qih3f.jpg','?file=14488600572186qih3f.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860057);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (120,'14488600981941oe3wh.jpg',87614,'image/jpeg','2015/11/30/14488600981941oe3wh.jpg','2015/11/30/thumbnail/14488600981941oe3wh.jpg','?file=14488600981941oe3wh.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860098);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (121,'144886031059488kgea.jpg',36618,'image/jpeg','2015/11/30/144886031059488kgea.jpg','2015/11/30/thumbnail/144886031059488kgea.jpg','?file=144886031059488kgea.jpg&dt=2015/11/30',NULL,NULL,NULL,1448860310);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (131,'14490652541133my70z.jpg',145079,'image/jpeg','2015/12/02/14490652541133my70z.jpg','2015/12/02/thumbnail/14490652541133my70z.jpg','?file=14490652541133my70z.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065254);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (136,'14490654271312lb3l6.jpg',220448,'image/jpeg','2015/12/02/14490654271312lb3l6.jpg','2015/12/02/thumbnail/14490654271312lb3l6.jpg','?file=14490654271312lb3l6.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065427);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (137,'14490654497786ogmnj.jpg',165539,'image/jpeg','2015/12/02/14490654497786ogmnj.jpg','2015/12/02/thumbnail/14490654497786ogmnj.jpg','?file=14490654497786ogmnj.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065449);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (138,'14490654699705xijbg.jpg',118859,'image/jpeg','2015/12/02/14490654699705xijbg.jpg','2015/12/02/thumbnail/14490654699705xijbg.jpg','?file=14490654699705xijbg.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065469);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (139,'14490654937857usp89.jpg',139071,'image/jpeg','2015/12/02/14490654937857usp89.jpg','2015/12/02/thumbnail/14490654937857usp89.jpg','?file=14490654937857usp89.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065493);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (140,'14490655286635tdffz.jpg',151675,'image/jpeg','2015/12/02/14490655286635tdffz.jpg','2015/12/02/thumbnail/14490655286635tdffz.jpg','?file=14490655286635tdffz.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065528);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (141,'14490655555713y125y.jpg',116905,'image/jpeg','2015/12/02/14490655555713y125y.jpg','2015/12/02/thumbnail/14490655555713y125y.jpg','?file=14490655555713y125y.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065555);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (142,'14490655720641hp017.jpg',105249,'image/jpeg','2015/12/02/14490655720641hp017.jpg','2015/12/02/thumbnail/14490655720641hp017.jpg','?file=14490655720641hp017.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065572);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (143,'14490656090059u3inn.jpg',106617,'image/jpeg','2015/12/02/14490656090059u3inn.jpg','2015/12/02/thumbnail/14490656090059u3inn.jpg','?file=14490656090059u3inn.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065609);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (144,'144906564653562l6nj.jpg',147411,'image/jpeg','2015/12/02/144906564653562l6nj.jpg','2015/12/02/thumbnail/144906564653562l6nj.jpg','?file=144906564653562l6nj.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065646);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (145,'1449065661800194hod.jpg',192980,'image/jpeg','2015/12/02/1449065661800194hod.jpg','2015/12/02/thumbnail/1449065661800194hod.jpg','?file=1449065661800194hod.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065661);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (146,'1449065689556t3yb1.jpg',204184,'image/jpeg','2015/12/02/1449065689556t3yb1.jpg','2015/12/02/thumbnail/1449065689556t3yb1.jpg','?file=1449065689556t3yb1.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065689);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (147,'14490657971666xsioe.jpg',125508,'image/jpeg','2015/12/02/14490657971666xsioe.jpg','2015/12/02/thumbnail/14490657971666xsioe.jpg','?file=14490657971666xsioe.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065797);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (148,'1449065831305h2eyw.jpg',86239,'image/jpeg','2015/12/02/1449065831305h2eyw.jpg','2015/12/02/thumbnail/1449065831305h2eyw.jpg','?file=1449065831305h2eyw.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065831);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (149,'14490658631709795uy.jpg',209952,'image/jpeg','2015/12/02/14490658631709795uy.jpg','2015/12/02/thumbnail/14490658631709795uy.jpg','?file=14490658631709795uy.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065863);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (150,'144906588876570t56h.jpg',125800,'image/jpeg','2015/12/02/144906588876570t56h.jpg','2015/12/02/thumbnail/144906588876570t56h.jpg','?file=144906588876570t56h.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065888);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (151,'14490659016583ertbv.jpg',163160,'image/jpeg','2015/12/02/14490659016583ertbv.jpg','2015/12/02/thumbnail/14490659016583ertbv.jpg','?file=14490659016583ertbv.jpg&dt=2015/12/02',NULL,NULL,NULL,1449065901);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (154,'1449813960464erl0q.jpg',445087,'image/jpeg','2015/12/11/1449813960464erl0q.jpg','2015/12/11/thumbnail/1449813960464erl0q.jpg','?file=1449813960464erl0q.jpg&dt=2015/12/11',NULL,NULL,NULL,1449813960);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (155,'145005793319378pcbi.jpg',29386,'image/jpeg','2015/12/14/145005793319378pcbi.jpg','2015/12/14/thumbnail/145005793319378pcbi.jpg','?file=145005793319378pcbi.jpg&dt=2015/12/14',NULL,NULL,NULL,1450057933);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (158,'14500917819113iqdty.jpg',67076,'image/jpeg','2015/12/14/14500917819113iqdty.jpg','2015/12/14/thumbnail/14500917819113iqdty.jpg','?file=14500917819113iqdty.jpg&dt=2015/12/14',NULL,NULL,NULL,1450091781);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (157,'14500917714411vp5h9.jpg',108242,'image/jpeg','2015/12/14/14500917714411vp5h9.jpg','2015/12/14/thumbnail/14500917714411vp5h9.jpg','?file=14500917714411vp5h9.jpg&dt=2015/12/14',NULL,NULL,NULL,1450091771);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (159,'1450091789423bnfs8.jpg',85357,'image/jpeg','2015/12/14/1450091789423bnfs8.jpg','2015/12/14/thumbnail/1450091789423bnfs8.jpg','?file=1450091789423bnfs8.jpg&dt=2015/12/14',NULL,NULL,NULL,1450091789);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (160,'14500917990438xnm4x.jpg',78587,'image/jpeg','2015/12/14/14500917990438xnm4x.jpg','2015/12/14/thumbnail/14500917990438xnm4x.jpg','?file=14500917990438xnm4x.jpg&dt=2015/12/14',NULL,NULL,NULL,1450091799);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (161,'14500918058937fz18r.jpg',125893,'image/jpeg','2015/12/14/14500918058937fz18r.jpg','2015/12/14/thumbnail/14500918058937fz18r.jpg','?file=14500918058937fz18r.jpg&dt=2015/12/14',NULL,NULL,NULL,1450091805);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (162,'14500918119345wagcl.jpg',87251,'image/jpeg','2015/12/14/14500918119345wagcl.jpg','2015/12/14/thumbnail/14500918119345wagcl.jpg','?file=14500918119345wagcl.jpg&dt=2015/12/14',NULL,NULL,NULL,1450091811);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (163,'145013983935833dmdc.jpg',3095607,'image/jpeg','2015/12/15/145013983935833dmdc.jpg','2015/12/15/thumbnail/145013983935833dmdc.jpg','?file=145013983935833dmdc.jpg&dt=2015/12/15',NULL,NULL,NULL,1450139839);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (164,'145013990168787nysj.jpg',3095607,'image/jpeg','2015/12/15/145013990168787nysj.jpg','2015/12/15/thumbnail/145013990168787nysj.jpg','?file=145013990168787nysj.jpg&dt=2015/12/15',NULL,NULL,NULL,1450139902);
insert  into `boc_upload`(`id`,`name`,`size`,`type`,`url`,`thumb`,`deleteUrl`,`alt`,`title`,`text`,`timeline`) values (166,'1450324890735966gu6.jpg',4220304,'image/jpeg','2015/12/17/1450324890735966gu6.jpg','2015/12/17/thumbnail/1450324890735966gu6.jpg','?file=1450324890735966gu6.jpg&dt=2015/12/17',NULL,NULL,NULL,1450324891);

UNLOCK TABLES;

/*Table structure for table `boc_video` */

DROP TABLE IF EXISTS `boc_video`;

CREATE TABLE `boc_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` tinytext NOT NULL COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `photoinfo` tinytext COMMENT '详细图片',
  `video` tinytext COMMENT '视频',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='视频表';

/*Data for the table `boc_video` */

LOCK TABLES `boc_video` WRITE;

insert  into `boc_video`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`video`) values (1,3,0,1,1,0,0,NULL,'test','','','  ','','',1448522102,0,0,'2','2015/11/26/thumbnail/14485221092857mqkfo.jpg',NULL,'153');
insert  into `boc_video`(`id`,`cid`,`ccid`,`sort_id`,`audit`,`flag`,`ctype`,`type_id`,`title`,`link`,`title_seo`,`intro`,`tags`,`content`,`timeline`,`status`,`click`,`photo`,`thumb`,`photoinfo`,`video`) values (2,19,0,2,0,0,0,NULL,'asd','','','  ','','',1449541245,0,0,'','',NULL,'');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
