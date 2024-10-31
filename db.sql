/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yx-ssmv
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yx-ssmv` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yx-ssmv`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/yx-ssmv/upload/1614761063641.png'),(2,'picture2','http://localhost:8080/yx-ssmv/upload/1614761073607.jpg'),(3,'picture3','http://localhost:8080/yx-ssmv/upload/1614761100752.jpg'),(6,'picture4','http://localhost:8080/yx-ssmv/upload/1614761043142.jpg'),(7,'picture5','http://localhost:8080/yx-ssmv/upload/1614761029227.jpg');

/*Table structure for table `discussyouxigonglue` */

DROP TABLE IF EXISTS `discussyouxigonglue`;

CREATE TABLE `discussyouxigonglue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614769856685 DEFAULT CHARSET=utf8 COMMENT='游戏攻略评论表';

/*Data for the table `discussyouxigonglue` */

insert  into `discussyouxigonglue`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (91,'2021-02-22 15:48:49',1,1,'评论内容1','回复内容1'),(92,'2021-02-22 15:48:49',2,2,'评论内容2','回复内容2'),(93,'2021-02-22 15:48:49',3,3,'评论内容3','回复内容3'),(94,'2021-02-22 15:48:49',4,4,'评论内容4','回复内容4'),(95,'2021-02-22 15:48:49',5,5,'评论内容5','回复内容5'),(96,'2021-02-22 15:48:49',6,6,'评论内容6','回复内容6'),(1614764470916,'2021-03-03 17:41:09',2,11,'123123',NULL),(1614764527869,'2021-03-03 17:42:07',2,11,'123312213',NULL),(1614769780175,'2021-03-03 19:09:39',3,11,'1111',NULL),(1614769788426,'2021-03-03 19:09:47',3,11,'111',NULL),(1614769856684,'2021-03-03 19:10:56',3,11,'13213231',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613980949908 DEFAULT CHARSET=utf8 COMMENT='游戏资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-02-22 15:48:49','标题1','简介1','http://localhost:8080/yx-ssmv/upload/news_picture1.jpg','内容1'),(82,'2021-02-22 15:48:49','标题2','简介2','http://localhost:8080/yx-ssmv/upload/news_picture2.jpg','内容2'),(83,'2021-02-22 15:48:49','标题3','简介3','http://localhost:8080/yx-ssmv/upload/news_picture3.jpg','内容3'),(84,'2021-02-22 15:48:49','标题4','简介4','http://localhost:8080/yx-ssmv/upload/news_picture4.jpg','内容4'),(85,'2021-02-22 15:48:49','标题5','简介5','http://localhost:8080/yx-ssmv/upload/news_picture5.jpg','内容5'),(86,'2021-02-22 15:48:49','标题6','简介6','http://localhost:8080/yx-ssmv/upload/news_picture6.jpg','内容6'),(1613980949907,'2021-02-22 16:02:29','游戏资讯','常识','http://localhost:8080/yx-ssmv/upload/1613980945895.jpg','<p>常识常识常识四成型</p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614769867412 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','9aneywhquvlwtv2lmrxhfqjqwny77isp','2021-02-22 15:51:04','2021-03-03 20:12:11'),(2,11,'001','yonghu','用户','gpk3u7zl0wc1v5empl7dm4mwz5ai7vgh','2021-02-22 15:56:36','2021-03-03 20:10:48'),(3,1613980983448,'002','yonghu','用户','ed23kml3sxqukh0blhjicid364vuvvns','2021-02-22 16:03:09','2021-02-22 17:03:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-22 15:48:50');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `banned` int(255) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1613980983449 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`,`banned`) values (11,'2021-02-22 15:48:49','111','111','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/yx-ssmv/upload/yonghu_zhaopian1.jpg',0),(12,'2021-02-22 15:48:49','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/yx-ssmv/upload/yonghu_zhaopian2.jpg',0),(13,'2021-02-22 15:48:49','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/yx-ssmv/upload/yonghu_zhaopian3.jpg',0),(14,'2021-02-22 15:48:49','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/yx-ssmv/upload/yonghu_zhaopian4.jpg',0),(15,'2021-02-22 15:48:49','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/yx-ssmv/upload/yonghu_zhaopian5.jpg',0),(16,'2021-02-22 15:48:49','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/yx-ssmv/upload/yonghu_zhaopian6.jpg',0);

/*Table structure for table `youxifenlei` */

DROP TABLE IF EXISTS `youxifenlei`;

CREATE TABLE `youxifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614769597908 DEFAULT CHARSET=utf8 COMMENT='游戏分类';

/*Data for the table `youxifenlei` */

insert  into `youxifenlei`(`id`,`addtime`,`fenlei`) values (1613980328058,'2021-02-22 15:52:07','游戏分类3'),(1613980380945,'2021-02-22 15:53:00','游戏分类2'),(1614760576031,'2021-03-03 16:36:15','游戏分类1');

/*Table structure for table `youxigonglue` */

DROP TABLE IF EXISTS `youxigonglue`;

CREATE TABLE `youxigonglue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `jianjie` longtext COMMENT '简介',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `banned` int(11) DEFAULT '0' COMMENT '是否禁言',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614769643066 DEFAULT CHARSET=utf8 COMMENT='游戏攻略';

/*Data for the table `youxigonglue` */

insert  into `youxigonglue`(`id`,`addtime`,`biaoti`,`fenlei`,`fengmian`,`shipin`,`wenjian`,`riqi`,`jianjie`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`banned`) values (1,'2021-02-22 15:48:49','元神','游戏分类1','http://localhost:8080/yx-ssmv/upload/1614760738492.jpg','http://localhost:8080/yx-ssmv/upload/1614760752476.mp4','http://localhost:8080/yx-ssmv/upload/1614760762466.jpg','2021-02-22','简介1','<p>详情1<img src=\"http://localhost:8080/yx-ssmv/upload/1614760776085.jpg\"></p>',4,1,'2021-03-03 17:44:33',13,NULL),(2,'2021-02-22 15:48:49','爆枪英雄','游戏分类2','http://localhost:8080/yx-ssmv/upload/1614760815901.jpg','http://localhost:8080/yx-ssmv/upload/1614760823749.mp4','http://localhost:8080/yx-ssmv/upload/1614760827730.jpg','2021-02-22','简介2','<p><img src=\"http://localhost:8080/yx-ssmv/upload/1614760832332.jpg\">详情2</p>',4,2,'2021-03-03 17:42:10',46,NULL),(3,'2021-02-22 15:48:49','造梦西游5','游戏分类3','http://localhost:8080/yx-ssmv/upload/1614760855414.jpg','http://localhost:8080/yx-ssmv/upload/1614760888647.mp4','http://localhost:8080/yx-ssmv/upload/1614760892203.jpg','2021-02-22','简介3','<p><img src=\"http://localhost:8080/yx-ssmv/upload/1614760896942.jpg\">详情3</p>',8,7,'2021-03-03 19:10:58',14,NULL),(1614769643065,'2021-03-03 19:07:22','4399','游戏分类3','http://localhost:8080/yx-ssmv/upload/1614769626625.jpg','http://localhost:8080/yx-ssmv/upload/1614769630938.mp4','http://localhost:8080/yx-ssmv/upload/1614769633518.jpg','2021-03-03','简介','<p>详情</p>',0,0,NULL,0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
