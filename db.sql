/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspm68i32
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspm68i32` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspm68i32`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspm68i32/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm68i32/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm68i32/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `youxifenlei` varchar(200) DEFAULT NULL COMMENT '游戏分类',
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `kaifashang` varchar(200) DEFAULT NULL COMMENT '开发商',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615960054050 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`youxifenlei`,`youximingcheng`,`kaifashang`,`jiage`,`goumairiqi`,`yonghuming`,`yonghuxingming`,`lianxifangshi`,`ispay`) values (41,'2021-03-17 13:37:23','订单编号1','游戏分类1','游戏名称1','开发商1','价格1','2021-03-17','用户名1','用户姓名1','联系方式1','未支付'),(42,'2021-03-17 13:37:23','订单编号2','游戏分类2','游戏名称2','开发商2','价格2','2021-03-17','用户名2','用户姓名2','联系方式2','未支付'),(43,'2021-03-17 13:37:23','订单编号3','游戏分类3','游戏名称3','开发商3','价格3','2021-03-17','用户名3','用户姓名3','联系方式3','未支付'),(44,'2021-03-17 13:37:23','订单编号4','游戏分类4','游戏名称4','开发商4','价格4','2021-03-17','用户名4','用户姓名4','联系方式4','未支付'),(45,'2021-03-17 13:37:23','订单编号5','游戏分类5','游戏名称5','开发商5','价格5','2021-03-17','用户名5','用户姓名5','联系方式5','未支付'),(46,'2021-03-17 13:37:23','订单编号6','游戏分类6','游戏名称6','开发商6','价格6','2021-03-17','用户名6','用户姓名6','联系方式6','未支付'),(1615960054049,'2021-03-17 13:47:33','202131713472260523126','游戏分类1','游戏名称1','开发商1','480','2020-03-18','11','杨先生','13823877777','已支付');

/*Table structure for table `discussyouxixinxi` */

DROP TABLE IF EXISTS `discussyouxixinxi`;

CREATE TABLE `discussyouxixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615960208128 DEFAULT CHARSET=utf8 COMMENT='游戏信息评论表';

/*Data for the table `discussyouxixinxi` */

insert  into `discussyouxixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-03-17 13:37:23',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-03-17 13:37:23',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-03-17 13:37:23',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-03-17 13:37:23',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-03-17 13:37:23',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-03-17 13:37:23',6,6,'用户名6','评论内容6','回复内容6'),(1615960208127,'2021-03-17 13:50:07',31,1615959974962,NULL,'画面感真实',NULL);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615960225076 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (71,'2021-03-17 13:37:23',1,'用户名1','留言内容1','回复内容1'),(72,'2021-03-17 13:37:23',2,'用户名2','留言内容2','回复内容2'),(73,'2021-03-17 13:37:23',3,'用户名3','留言内容3','回复内容3'),(74,'2021-03-17 13:37:23',4,'用户名4','留言内容4','回复内容4'),(75,'2021-03-17 13:37:23',5,'用户名5','留言内容5','回复内容5'),(76,'2021-03-17 13:37:23',6,'用户名6','留言内容6','回复内容6'),(1615959810644,'2021-03-17 13:43:29',11,'用户1','sdfsdf',NULL),(1615960225075,'2021-03-17 13:50:24',1615959974962,'11','sdfsgsg','sdfsdf');

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
) ENGINE=InnoDB AUTO_INCREMENT=1615960179281 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615960031394,'2021-03-17 13:47:11',1615959974962,31,'youxixinxi','游戏名称1','http://localhost:8080/jspm68i32/upload/youxixinxi_tupian1.jpg'),(1615960179280,'2021-03-17 13:49:38',1615959974962,36,'youxixinxi','游戏名称6','http://localhost:8080/jspm68i32/upload/youxixinxi_tupian6.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','utb1w23jc35f8hh8wa1bbok4631of6wi','2021-03-17 13:39:33','2021-03-17 14:42:27'),(2,1,'abo','users','管理员','r08imjesxaajk0yakz42ku20eqsdybdw','2021-03-17 13:40:05','2021-03-17 14:51:10'),(3,12,'用户2','yonghu','用户','3xrx67nm46qf8415tckd4p4y8gl4czzo','2021-03-17 13:44:12','2021-03-17 14:44:12'),(4,1615959974962,'11','yonghu','用户','ey30zj0rjkdgq78hrr25nso76iq83orp','2021-03-17 13:46:24','2021-03-17 14:49:28');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-17 13:37:23');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615959974963 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`lianxifangshi`,`youxiang`) values (11,'2021-03-17 13:37:23','用户1','123456','用户姓名1','http://localhost:8080/jspm68i32/upload/yonghu_touxiang1.jpg','男','13823888881','773890001@qq.com'),(12,'2021-03-17 13:37:23','用户2','123456','用户姓名2','http://localhost:8080/jspm68i32/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com'),(13,'2021-03-17 13:37:23','用户3','123456','用户姓名3','http://localhost:8080/jspm68i32/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com'),(14,'2021-03-17 13:37:23','用户4','123456','用户姓名4','http://localhost:8080/jspm68i32/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com'),(15,'2021-03-17 13:37:23','用户5','123456','用户姓名5','http://localhost:8080/jspm68i32/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com'),(16,'2021-03-17 13:37:23','用户6','123456','用户姓名6','http://localhost:8080/jspm68i32/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com'),(1615959974962,'2021-03-17 13:46:14','11','123456','杨先生','http://localhost:8080/jspm68i32/upload/1615959992315.jpg','男','13823877777','');

/*Table structure for table `youxifenlei` */

DROP TABLE IF EXISTS `youxifenlei`;

CREATE TABLE `youxifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youxifenlei` varchar(200) DEFAULT NULL COMMENT '游戏分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='游戏分类';

/*Data for the table `youxifenlei` */

insert  into `youxifenlei`(`id`,`addtime`,`youxifenlei`) values (21,'2021-03-17 13:37:23','游戏分类1'),(22,'2021-03-17 13:37:23','游戏分类2'),(23,'2021-03-17 13:37:23','游戏分类3'),(24,'2021-03-17 13:37:23','游戏分类4'),(25,'2021-03-17 13:37:23','游戏分类5'),(26,'2021-03-17 13:37:23','游戏分类6');

/*Table structure for table `youxixiazai` */

DROP TABLE IF EXISTS `youxixiazai`;

CREATE TABLE `youxixiazai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `youxifenlei` varchar(200) DEFAULT NULL COMMENT '游戏分类',
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `kaifashang` varchar(200) DEFAULT NULL COMMENT '开发商',
  `youxiruanjian` varchar(200) DEFAULT NULL COMMENT '游戏软件',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615960112171 DEFAULT CHARSET=utf8 COMMENT='游戏下载';

/*Data for the table `youxixiazai` */

insert  into `youxixiazai`(`id`,`addtime`,`dingdanbianhao`,`youxifenlei`,`youximingcheng`,`kaifashang`,`youxiruanjian`,`yonghuming`,`yonghuxingming`) values (51,'2021-03-17 13:37:23','订单编号1','游戏分类1','游戏名称1','开发商1','','用户名1','用户姓名1'),(52,'2021-03-17 13:37:23','订单编号2','游戏分类2','游戏名称2','开发商2','','用户名2','用户姓名2'),(53,'2021-03-17 13:37:23','订单编号3','游戏分类3','游戏名称3','开发商3','','用户名3','用户姓名3'),(54,'2021-03-17 13:37:23','订单编号4','游戏分类4','游戏名称4','开发商4','','用户名4','用户姓名4'),(55,'2021-03-17 13:37:23','订单编号5','游戏分类5','游戏名称5','开发商5','','用户名5','用户姓名5'),(56,'2021-03-17 13:37:23','订单编号6','游戏分类6','游戏名称6','开发商6','','用户名6','用户姓名6'),(1615960112170,'2021-03-17 13:48:31','202131713472260523126','游戏分类1','游戏名称1','开发商1','http://localhost:8080/jspm68i32/file/download?fileName=1615960108870.jpg','11','杨先生');

/*Table structure for table `youxixinxi` */

DROP TABLE IF EXISTS `youxixinxi`;

CREATE TABLE `youxixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `youxifenlei` varchar(200) DEFAULT NULL COMMENT '游戏分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kaifashang` varchar(200) DEFAULT NULL COMMENT '开发商',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `youxijianjie` longtext COMMENT '游戏简介',
  `shangshiriqi` date DEFAULT NULL COMMENT '上市日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='游戏信息';

/*Data for the table `youxixinxi` */

insert  into `youxixinxi`(`id`,`addtime`,`youximingcheng`,`youxifenlei`,`tupian`,`kaifashang`,`jiage`,`youxijianjie`,`shangshiriqi`,`clicktime`,`clicknum`) values (31,'2021-03-17 13:37:23','游戏名称1','游戏分类1','http://localhost:8080/jspm68i32/upload/youxixinxi_tupian1.jpg','开发商1','480','游戏简介1','2021-03-17','2021-03-17 13:50:10',9),(32,'2021-03-17 13:37:23','游戏名称2','游戏分类2','http://localhost:8080/jspm68i32/upload/youxixinxi_tupian2.jpg','开发商2','450','游戏简介2','2021-03-17','2021-03-17 13:40:27',4),(33,'2021-03-17 13:37:23','游戏名称3','游戏分类3','http://localhost:8080/jspm68i32/upload/youxixinxi_tupian3.jpg','开发商3','380','游戏简介3','2021-03-17','2021-03-17 13:40:37',5),(34,'2021-03-17 13:37:23','游戏名称4','游戏分类4','http://localhost:8080/jspm68i32/upload/youxixinxi_tupian4.jpg','开发商4','520','游戏简介4','2021-03-17','2021-03-17 13:40:48',6),(35,'2021-03-17 13:37:23','游戏名称5','游戏分类5','http://localhost:8080/jspm68i32/upload/youxixinxi_tupian5.jpg','开发商5','560','游戏简介5','2021-03-17','2021-03-17 13:41:00',7),(36,'2021-03-17 13:37:23','游戏名称6','游戏分类6','http://localhost:8080/jspm68i32/upload/youxixinxi_tupian6.jpg','开发商6','600','游戏简介6','2021-03-17','2021-03-17 13:49:35',9);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
