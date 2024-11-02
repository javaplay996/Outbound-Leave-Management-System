/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssms6298
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssms6298` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssms6298`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssms6298/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssms6298/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssms6298/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiaoshixingbie` varchar(200) DEFAULT NULL COMMENT '教师性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxiyouxiang` varchar(200) DEFAULT NULL COMMENT '联系邮箱',
  `jiaoshizhaopian` varchar(200) DEFAULT NULL COMMENT '教师照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`jiaoshixingbie`,`xueyuan`,`bianhao`,`lianxidianhua`,`lianxiyouxiang`,`jiaoshizhaopian`) values (21,'2021-04-22 16:39:46','教师1','123456','教师姓名1','男','学院1','编号1','13823888881','773890001@qq.com','http://localhost:8080/ssms6298/upload/jiaoshi_jiaoshizhaopian1.jpg'),(22,'2021-04-22 16:39:46','教师2','123456','教师姓名2','男','学院2','编号2','13823888882','773890002@qq.com','http://localhost:8080/ssms6298/upload/jiaoshi_jiaoshizhaopian2.jpg'),(23,'2021-04-22 16:39:46','教师3','123456','教师姓名3','男','学院3','编号3','13823888883','773890003@qq.com','http://localhost:8080/ssms6298/upload/jiaoshi_jiaoshizhaopian3.jpg'),(24,'2021-04-22 16:39:46','教师4','123456','教师姓名4','男','学院4','编号4','13823888884','773890004@qq.com','http://localhost:8080/ssms6298/upload/jiaoshi_jiaoshizhaopian4.jpg'),(25,'2021-04-22 16:39:46','教师5','123456','教师姓名5','男','学院5','编号5','13823888885','773890005@qq.com','http://localhost:8080/ssms6298/upload/jiaoshi_jiaoshizhaopian5.jpg'),(26,'2021-04-22 16:39:46','教师6','123456','教师姓名6','男','学院6','编号6','13823888886','773890006@qq.com','http://localhost:8080/ssms6298/upload/jiaoshi_jiaoshizhaopian6.jpg');

/*Table structure for table `jiaoshiqingjiashenqing` */

DROP TABLE IF EXISTS `jiaoshiqingjiashenqing`;

CREATE TABLE `jiaoshiqingjiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `qingjiashijian` datetime DEFAULT NULL COMMENT '请假时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `shifoulixiao` varchar(200) DEFAULT NULL COMMENT '是否离校',
  `shifouqianwangyiqingzhonggaofengxiandiqu` varchar(200) DEFAULT NULL COMMENT '是否前往疫情中高风险地区',
  `qingjialiyou` longtext COMMENT '请假理由',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='教师请假申请';

/*Data for the table `jiaoshiqingjiashenqing` */

insert  into `jiaoshiqingjiashenqing`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`xueyuan`,`qingjialeixing`,`qingjiashijian`,`jieshushijian`,`qingjiatianshu`,`shifoulixiao`,`shifouqianwangyiqingzhonggaofengxiandiqu`,`qingjialiyou`,`tijiaoshijian`,`sfsh`,`shhf`) values (51,'2021-04-22 16:39:46','教师工号1','教师姓名1','学院1','事假','2021-04-22 16:39:46','2021-04-22 16:39:46',1,'是','是','请假理由1','2021-04-22 16:39:46','是',''),(52,'2021-04-22 16:39:46','教师工号2','教师姓名2','学院2','事假','2021-04-22 16:39:46','2021-04-22 16:39:46',2,'是','是','请假理由2','2021-04-22 16:39:46','是',''),(53,'2021-04-22 16:39:46','教师工号3','教师姓名3','学院3','事假','2021-04-22 16:39:46','2021-04-22 16:39:46',3,'是','是','请假理由3','2021-04-22 16:39:46','是',''),(54,'2021-04-22 16:39:46','教师工号4','教师姓名4','学院4','事假','2021-04-22 16:39:46','2021-04-22 16:39:46',4,'是','是','请假理由4','2021-04-22 16:39:46','是',''),(55,'2021-04-22 16:39:46','教师工号5','教师姓名5','学院5','事假','2021-04-22 16:39:46','2021-04-22 16:39:46',5,'是','是','请假理由5','2021-04-22 16:39:46','是',''),(56,'2021-04-22 16:39:46','教师工号6','教师姓名6','学院6','事假','2021-04-22 16:39:46','2021-04-22 16:39:46',6,'是','是','请假理由6','2021-04-22 16:39:46','是','');

/*Table structure for table `jiaoshixiaojiashenqing` */

DROP TABLE IF EXISTS `jiaoshixiaojiashenqing`;

CREATE TABLE `jiaoshixiaojiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `qingjiashijian` varchar(200) DEFAULT NULL COMMENT '请假时间',
  `jieshushijian` varchar(200) DEFAULT NULL COMMENT '结束时间',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `shifoulixiao` varchar(200) DEFAULT NULL COMMENT '是否离校',
  `shifouqianwangyiqingzhonggaofengxiandiqu` varchar(200) DEFAULT NULL COMMENT '是否前往疫情中高风险地区',
  `qingjialiyou` varchar(200) DEFAULT NULL COMMENT '请假理由',
  `tijiaoshijian` varchar(200) DEFAULT NULL COMMENT '提交时间',
  `gerenjiankangzhuangtai` varchar(200) DEFAULT NULL COMMENT '个人健康状态',
  `qingjiaqijianshifoujiechuganranbingdurenyuan` varchar(200) DEFAULT NULL COMMENT '请假期间是否接触感染病毒人员',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='教师销假申请';

/*Data for the table `jiaoshixiaojiashenqing` */

insert  into `jiaoshixiaojiashenqing`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`xueyuan`,`qingjialeixing`,`qingjiashijian`,`jieshushijian`,`qingjiatianshu`,`shifoulixiao`,`shifouqianwangyiqingzhonggaofengxiandiqu`,`qingjialiyou`,`tijiaoshijian`,`gerenjiankangzhuangtai`,`qingjiaqijianshifoujiechuganranbingdurenyuan`,`zhuangtai`,`sfsh`,`shhf`) values (61,'2021-04-22 16:39:46','教师工号1','教师姓名1','学院1','请假类型1','请假时间1','结束时间1',1,'是否离校1','是否前往疫情中高风险地区1','请假理由1','提交时间1','个人健康状态1','是','正常','是',''),(62,'2021-04-22 16:39:46','教师工号2','教师姓名2','学院2','请假类型2','请假时间2','结束时间2',2,'是否离校2','是否前往疫情中高风险地区2','请假理由2','提交时间2','个人健康状态2','是','正常','是',''),(63,'2021-04-22 16:39:46','教师工号3','教师姓名3','学院3','请假类型3','请假时间3','结束时间3',3,'是否离校3','是否前往疫情中高风险地区3','请假理由3','提交时间3','个人健康状态3','是','正常','是',''),(64,'2021-04-22 16:39:46','教师工号4','教师姓名4','学院4','请假类型4','请假时间4','结束时间4',4,'是否离校4','是否前往疫情中高风险地区4','请假理由4','提交时间4','个人健康状态4','是','正常','是',''),(65,'2021-04-22 16:39:46','教师工号5','教师姓名5','学院5','请假类型5','请假时间5','结束时间5',5,'是否离校5','是否前往疫情中高风险地区5','请假理由5','提交时间5','个人健康状态5','是','正常','是',''),(66,'2021-04-22 16:39:46','教师工号6','教师姓名6','学院6','请假类型6','请假时间6','结束时间6',6,'是否离校6','是否前往疫情中高风险地区6','请假理由6','提交时间6','个人健康状态6','是','正常','是','');

/*Table structure for table `qingjiashenqing` */

DROP TABLE IF EXISTS `qingjiashenqing`;

CREATE TABLE `qingjiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `qingjiashijian` datetime DEFAULT NULL COMMENT '请假时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `shifoulixiao` varchar(200) DEFAULT NULL COMMENT '是否离校',
  `shifouqianwangyiqingzhonggaofengxiandiqu` varchar(200) DEFAULT NULL COMMENT '是否前往疫情中高风险地区',
  `qingjialiyou` longtext COMMENT '请假理由',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='请假申请';

/*Data for the table `qingjiashenqing` */

insert  into `qingjiashenqing`(`id`,`addtime`,`xuehao`,`xingming`,`banji`,`qingjialeixing`,`qingjiashijian`,`jieshushijian`,`qingjiatianshu`,`shifoulixiao`,`shifouqianwangyiqingzhonggaofengxiandiqu`,`qingjialiyou`,`tijiaoshijian`,`sfsh`,`shhf`) values (31,'2021-04-22 16:39:46','学号1','姓名1','班级1','事假','2021-04-22 16:39:46','2021-04-22 16:39:46',1,'是','是','请假理由1','2021-04-22 16:39:46','是',''),(32,'2021-04-22 16:39:46','学号2','姓名2','班级2','事假','2021-04-22 16:39:46','2021-04-22 16:39:46',2,'是','是','请假理由2','2021-04-22 16:39:46','是',''),(33,'2021-04-22 16:39:46','学号3','姓名3','班级3','事假','2021-04-22 16:39:46','2021-04-22 16:39:46',3,'是','是','请假理由3','2021-04-22 16:39:46','是',''),(34,'2021-04-22 16:39:46','学号4','姓名4','班级4','事假','2021-04-22 16:39:46','2021-04-22 16:39:46',4,'是','是','请假理由4','2021-04-22 16:39:46','是',''),(35,'2021-04-22 16:39:46','学号5','姓名5','班级5','事假','2021-04-22 16:39:46','2021-04-22 16:39:46',5,'是','是','请假理由5','2021-04-22 16:39:46','是',''),(36,'2021-04-22 16:39:46','学号6','姓名6','班级6','事假','2021-04-22 16:39:46','2021-04-22 16:39:46',6,'是','是','请假理由6','2021-04-22 16:39:46','是','');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-22 16:39:46');

/*Table structure for table `xiaojiashenqing` */

DROP TABLE IF EXISTS `xiaojiashenqing`;

CREATE TABLE `xiaojiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `qingjiashijian` varchar(200) DEFAULT NULL COMMENT '请假时间',
  `jieshushijian` varchar(200) DEFAULT NULL COMMENT '结束时间',
  `qingjiatianshu` varchar(200) DEFAULT NULL COMMENT '请假天数',
  `shifoulixiao` varchar(200) DEFAULT NULL COMMENT '是否离校',
  `shifouqianwangyiqingzhonggaofengxiandiqu` varchar(200) DEFAULT NULL COMMENT '是否前往疫情中高风险地区',
  `qingjialiyou` varchar(200) DEFAULT NULL COMMENT '请假理由',
  `tijiaoshijian` varchar(200) DEFAULT NULL COMMENT '提交时间',
  `gerenjiankangzhuangtai` varchar(200) DEFAULT NULL COMMENT '个人健康状态',
  `qingjiaqijianshifoujiechuganranbingdurenyuan` varchar(200) DEFAULT NULL COMMENT '请假期间是否接触感染病毒人员',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='销假申请';

/*Data for the table `xiaojiashenqing` */

insert  into `xiaojiashenqing`(`id`,`addtime`,`xuehao`,`xingming`,`banji`,`qingjialeixing`,`qingjiashijian`,`jieshushijian`,`qingjiatianshu`,`shifoulixiao`,`shifouqianwangyiqingzhonggaofengxiandiqu`,`qingjialiyou`,`tijiaoshijian`,`gerenjiankangzhuangtai`,`qingjiaqijianshifoujiechuganranbingdurenyuan`,`zhuangtai`,`sfsh`,`shhf`) values (41,'2021-04-22 16:39:46','学号1','姓名1','班级1','请假类型1','请假时间1','结束时间1','请假天数1','是否离校1','是否前往疫情中高风险地区1','请假理由1','提交时间1','个人健康状态1','是','正常','是',''),(42,'2021-04-22 16:39:46','学号2','姓名2','班级2','请假类型2','请假时间2','结束时间2','请假天数2','是否离校2','是否前往疫情中高风险地区2','请假理由2','提交时间2','个人健康状态2','是','正常','是',''),(43,'2021-04-22 16:39:46','学号3','姓名3','班级3','请假类型3','请假时间3','结束时间3','请假天数3','是否离校3','是否前往疫情中高风险地区3','请假理由3','提交时间3','个人健康状态3','是','正常','是',''),(44,'2021-04-22 16:39:46','学号4','姓名4','班级4','请假类型4','请假时间4','结束时间4','请假天数4','是否离校4','是否前往疫情中高风险地区4','请假理由4','提交时间4','个人健康状态4','是','正常','是',''),(45,'2021-04-22 16:39:46','学号5','姓名5','班级5','请假类型5','请假时间5','结束时间5','请假天数5','是否离校5','是否前往疫情中高风险地区5','请假理由5','提交时间5','个人健康状态5','是','正常','是',''),(46,'2021-04-22 16:39:46','学号6','姓名6','班级6','请假类型6','请假时间6','结束时间6','请假天数6','是否离校6','是否前往疫情中高风险地区6','请假理由6','提交时间6','个人健康状态6','是','正常','是','');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`zhuanye`,`banji`,`shouji`,`touxiang`) values (11,'2021-04-22 16:39:46','学生1','123456','姓名1','男','专业1','班级1','13823888881','http://localhost:8080/ssms6298/upload/xuesheng_touxiang1.jpg'),(12,'2021-04-22 16:39:46','学生2','123456','姓名2','男','专业2','班级2','13823888882','http://localhost:8080/ssms6298/upload/xuesheng_touxiang2.jpg'),(13,'2021-04-22 16:39:46','学生3','123456','姓名3','男','专业3','班级3','13823888883','http://localhost:8080/ssms6298/upload/xuesheng_touxiang3.jpg'),(14,'2021-04-22 16:39:46','学生4','123456','姓名4','男','专业4','班级4','13823888884','http://localhost:8080/ssms6298/upload/xuesheng_touxiang4.jpg'),(15,'2021-04-22 16:39:46','学生5','123456','姓名5','男','专业5','班级5','13823888885','http://localhost:8080/ssms6298/upload/xuesheng_touxiang5.jpg'),(16,'2021-04-22 16:39:46','学生6','123456','姓名6','男','专业6','班级6','13823888886','http://localhost:8080/ssms6298/upload/xuesheng_touxiang6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
