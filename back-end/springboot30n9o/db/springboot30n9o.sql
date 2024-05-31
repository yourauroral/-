-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot30n9o
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springboot30n9o`
--

/*!40000 DROP DATABASE IF EXISTS `springboot30n9o`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot30n9o` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot30n9o`;

--
-- Table structure for table `bumen`
--

DROP TABLE IF EXISTS `bumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bumen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647940815496 DEFAULT CHARSET=utf8 COMMENT='部门';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bumen`
--

LOCK TABLES `bumen` WRITE;
/*!40000 ALTER TABLE `bumen` DISABLE KEYS */;
INSERT INTO `bumen` VALUES (21,'2022-03-22 09:14:10','部门1','职位1'),(22,'2022-03-22 09:14:10','部门2','职位2'),(23,'2022-03-22 09:14:10','部门3','职位3'),(24,'2022-03-22 09:14:10','部门4','职位4'),(25,'2022-03-22 09:14:10','部门5','职位5'),(26,'2022-03-22 09:14:10','部门6','职位6'),(1647940815495,'2022-03-22 09:20:15','A部门','A职位');
/*!40000 ALTER TABLE `bumen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bumenpeixun`
--

DROP TABLE IF EXISTS `bumenpeixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bumenpeixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `peixunshijian` datetime DEFAULT NULL COMMENT '培训时间',
  `peixunneirong` longtext COMMENT '培训内容',
  `peixundidian` varchar(200) DEFAULT NULL COMMENT '培训地点',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='部门培训';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bumenpeixun`
--

LOCK TABLES `bumenpeixun` WRITE;
/*!40000 ALTER TABLE `bumenpeixun` DISABLE KEYS */;
INSERT INTO `bumenpeixun` VALUES (91,'2022-03-22 09:14:10','部门1','2022-03-22 17:14:10','培训内容1','培训地点1','2022-03-22 17:14:10','备注1'),(92,'2022-03-22 09:14:10','部门2','2022-03-22 17:14:10','培训内容2','培训地点2','2022-03-22 17:14:10','备注2'),(93,'2022-03-22 09:14:10','部门3','2022-03-22 17:14:10','培训内容3','培训地点3','2022-03-22 17:14:10','备注3'),(94,'2022-03-22 09:14:10','部门4','2022-03-22 17:14:10','培训内容4','培训地点4','2022-03-22 17:14:10','备注4'),(95,'2022-03-22 09:14:10','部门5','2022-03-22 17:14:10','培训内容5','培训地点5','2022-03-22 17:14:10','备注5'),(96,'2022-03-22 09:14:10','部门6','2022-03-22 17:14:10','培训内容6','培训地点6','2022-03-22 17:14:10','备注6');
/*!40000 ALTER TABLE `bumenpeixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiabanshenqing`
--

DROP TABLE IF EXISTS `jiabanshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiabanshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `jiabanshijian` date DEFAULT NULL COMMENT '加班时间',
  `jiabanshizhang` varchar(200) DEFAULT NULL COMMENT '加班时长',
  `jiabanshiyou` longtext COMMENT '加班事由',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647940962003 DEFAULT CHARSET=utf8 COMMENT='加班申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiabanshenqing`
--

LOCK TABLES `jiabanshenqing` WRITE;
/*!40000 ALTER TABLE `jiabanshenqing` DISABLE KEYS */;
INSERT INTO `jiabanshenqing` VALUES (51,'2022-03-22 09:14:10','员工工号1','员工姓名1','部门1','职位1','2022-03-22','加班时长1','加班事由1','是',''),(52,'2022-03-22 09:14:10','员工工号2','员工姓名2','部门2','职位2','2022-03-22','加班时长2','加班事由2','是',''),(53,'2022-03-22 09:14:10','员工工号3','员工姓名3','部门3','职位3','2022-03-22','加班时长3','加班事由3','是',''),(54,'2022-03-22 09:14:10','员工工号4','员工姓名4','部门4','职位4','2022-03-22','加班时长4','加班事由4','是',''),(55,'2022-03-22 09:14:10','员工工号5','员工姓名5','部门5','职位5','2022-03-22','加班时长5','加班事由5','是',''),(56,'2022-03-22 09:14:10','员工工号6','员工姓名6','部门6','职位6','2022-03-22','加班时长6','加班事由6','是',''),(1647940962002,'2022-03-22 09:22:41','111','A员工','A部门','A职位','2022-03-28','20','加班加班加班加班','否','');
/*!40000 ALTER TABLE `jiabanshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiashenqing`
--

DROP TABLE IF EXISTS `qingjiashenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `qingjiashijian` date DEFAULT NULL COMMENT '请假时间',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `qingjialiyou` longtext COMMENT '请假理由',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647940949397 DEFAULT CHARSET=utf8 COMMENT='请假申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiashenqing`
--

LOCK TABLES `qingjiashenqing` WRITE;
/*!40000 ALTER TABLE `qingjiashenqing` DISABLE KEYS */;
INSERT INTO `qingjiashenqing` VALUES (41,'2022-03-22 09:14:10','员工工号1','员工姓名1','部门1','职位1','事假','2022-03-22',1,'请假理由1','是',''),(42,'2022-03-22 09:14:10','员工工号2','员工姓名2','部门2','职位2','事假','2022-03-22',2,'请假理由2','是',''),(43,'2022-03-22 09:14:10','员工工号3','员工姓名3','部门3','职位3','事假','2022-03-22',3,'请假理由3','是',''),(44,'2022-03-22 09:14:10','员工工号4','员工姓名4','部门4','职位4','事假','2022-03-22',4,'请假理由4','是',''),(45,'2022-03-22 09:14:10','员工工号5','员工姓名5','部门5','职位5','事假','2022-03-22',5,'请假理由5','是',''),(46,'2022-03-22 09:14:10','员工工号6','员工姓名6','部门6','职位6','事假','2022-03-22',6,'请假理由6','是',''),(1647940949396,'2022-03-22 09:22:29','111','A员工','A部门','A职位','事假','2022-03-31',2,'有事有事有事有事','是','批准');
/*!40000 ALTER TABLE `qingjiashenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','6qjxffv011akgxu9dhg4gndz8lmus9bp','2022-03-22 09:19:59','2022-03-22 10:23:13'),(2,1647940847304,'111','yuangong','员工','qiz3l1stb6lb7r8ncwkodo5a0hmyfz33','2022-03-22 09:22:07','2022-03-22 10:23:57');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-22 09:14:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `yuangongshouji` varchar(200) DEFAULT NULL COMMENT '员工手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jibengongzi` float DEFAULT NULL COMMENT '基本工资',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647940847305 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2022-03-22 09:14:10','员工工号1','123456','员工姓名1','部门1','职位1','男','年龄1','13823888881','upload/yuangong_zhaopian1.jpg',1),(12,'2022-03-22 09:14:10','员工工号2','123456','员工姓名2','部门2','职位2','男','年龄2','13823888882','upload/yuangong_zhaopian2.jpg',2),(13,'2022-03-22 09:14:10','员工工号3','123456','员工姓名3','部门3','职位3','男','年龄3','13823888883','upload/yuangong_zhaopian3.jpg',3),(14,'2022-03-22 09:14:10','员工工号4','123456','员工姓名4','部门4','职位4','男','年龄4','13823888884','upload/yuangong_zhaopian4.jpg',4),(15,'2022-03-22 09:14:10','员工工号5','123456','员工姓名5','部门5','职位5','男','年龄5','13823888885','upload/yuangong_zhaopian5.jpg',5),(16,'2022-03-22 09:14:10','员工工号6','123456','员工姓名6','部门6','职位6','男','年龄6','13823888886','upload/yuangong_zhaopian6.jpg',6),(1647940847304,'2022-03-22 09:20:47','111','111','A员工','A部门','A职位','男','33','13899999999','upload/1647940842785.jpg',5000);
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangonggongzi`
--

DROP TABLE IF EXISTS `yuangonggongzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangonggongzi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fafangshijian` date NOT NULL COMMENT '发放时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `jibengongzi` float NOT NULL COMMENT '基本工资',
  `jixiao` float NOT NULL COMMENT '绩效',
  `chebu` float NOT NULL COMMENT '车补',
  `canbu` float NOT NULL COMMENT '餐补',
  `fangbu` float NOT NULL COMMENT '房补',
  `quanqinjiang` float NOT NULL COMMENT '全勤奖',
  `jiabanfei` float NOT NULL COMMENT '加班费',
  `wuxianyijin` float NOT NULL COMMENT '五险一金',
  `koujixiao` float NOT NULL COMMENT '扣绩效',
  `kuanggongfei` float NOT NULL COMMENT '旷工费',
  `qitakoukuan` float NOT NULL COMMENT '其它扣款',
  `shifagongzi` float DEFAULT NULL COMMENT '实发工资',
  `gongzibeizhu` longtext COMMENT '工资备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647941026417 DEFAULT CHARSET=utf8 COMMENT='员工工资';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangonggongzi`
--

LOCK TABLES `yuangonggongzi` WRITE;
/*!40000 ALTER TABLE `yuangonggongzi` DISABLE KEYS */;
INSERT INTO `yuangonggongzi` VALUES (61,'2022-03-22 09:14:10','2022-03-22','员工工号1','员工姓名1','职位1','部门1',1,1,1,1,1,1,1,1,1,1,1,1,'工资备注1'),(62,'2022-03-22 09:14:10','2022-03-22','员工工号2','员工姓名2','职位2','部门2',2,2,2,2,2,2,2,2,2,2,2,2,'工资备注2'),(63,'2022-03-22 09:14:10','2022-03-22','员工工号3','员工姓名3','职位3','部门3',3,3,3,3,3,3,3,3,3,3,3,3,'工资备注3'),(64,'2022-03-22 09:14:10','2022-03-22','员工工号4','员工姓名4','职位4','部门4',4,4,4,4,4,4,4,4,4,4,4,4,'工资备注4'),(65,'2022-03-22 09:14:10','2022-03-22','员工工号5','员工姓名5','职位5','部门5',5,5,5,5,5,5,5,5,5,5,5,5,'工资备注5'),(66,'2022-03-22 09:14:10','2022-03-22','员工工号6','员工姓名6','职位6','部门6',6,6,6,6,6,6,6,6,6,6,6,6,'工资备注6'),(1647941026416,'2022-03-22 09:23:45','2022-03-22','111','A员工','A职位','A部门',5000,20,20,20,20,20,20,20,20,20,20,5040,'无');
/*!40000 ALTER TABLE `yuangonggongzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongkaoqin`
--

DROP TABLE IF EXISTS `yuangongkaoqin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongkaoqin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `dakaleixing` varchar(200) DEFAULT NULL COMMENT '打卡类型',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='员工考勤';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongkaoqin`
--

LOCK TABLES `yuangongkaoqin` WRITE;
/*!40000 ALTER TABLE `yuangongkaoqin` DISABLE KEYS */;
INSERT INTO `yuangongkaoqin` VALUES (31,'2022-03-22 09:14:10','员工工号1','员工姓名1','职位1','部门1','签到','2022-03-22 17:14:10','备注1'),(32,'2022-03-22 09:14:10','员工工号2','员工姓名2','职位2','部门2','签到','2022-03-22 17:14:10','备注2'),(33,'2022-03-22 09:14:10','员工工号3','员工姓名3','职位3','部门3','签到','2022-03-22 17:14:10','备注3'),(34,'2022-03-22 09:14:10','员工工号4','员工姓名4','职位4','部门4','签到','2022-03-22 17:14:10','备注4'),(35,'2022-03-22 09:14:10','员工工号5','员工姓名5','职位5','部门5','签到','2022-03-22 17:14:10','备注5'),(36,'2022-03-22 09:14:10','员工工号6','员工姓名6','职位6','部门6','签到','2022-03-22 17:14:10','备注6');
/*!40000 ALTER TABLE `yuangongkaoqin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongpeixun`
--

DROP TABLE IF EXISTS `yuangongpeixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongpeixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `peixunshijian` datetime DEFAULT NULL COMMENT '培训时间',
  `peixunneirong` longtext COMMENT '培训内容',
  `peixundidian` varchar(200) DEFAULT NULL COMMENT '培训地点',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647940872762 DEFAULT CHARSET=utf8 COMMENT='员工培训';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongpeixun`
--

LOCK TABLES `yuangongpeixun` WRITE;
/*!40000 ALTER TABLE `yuangongpeixun` DISABLE KEYS */;
INSERT INTO `yuangongpeixun` VALUES (81,'2022-03-22 09:14:10','员工工号1','员工姓名1','职位1','性别1','年龄1','部门1','2022-03-22 17:14:10','培训内容1','培训地点1','2022-03-22 17:14:10','备注1'),(82,'2022-03-22 09:14:10','员工工号2','员工姓名2','职位2','性别2','年龄2','部门2','2022-03-22 17:14:10','培训内容2','培训地点2','2022-03-22 17:14:10','备注2'),(83,'2022-03-22 09:14:10','员工工号3','员工姓名3','职位3','性别3','年龄3','部门3','2022-03-22 17:14:10','培训内容3','培训地点3','2022-03-22 17:14:10','备注3'),(84,'2022-03-22 09:14:10','员工工号4','员工姓名4','职位4','性别4','年龄4','部门4','2022-03-22 17:14:10','培训内容4','培训地点4','2022-03-22 17:14:10','备注4'),(85,'2022-03-22 09:14:10','员工工号5','员工姓名5','职位5','性别5','年龄5','部门5','2022-03-22 17:14:10','培训内容5','培训地点5','2022-03-22 17:14:10','备注5'),(86,'2022-03-22 09:14:10','员工工号6','员工姓名6','职位6','性别6','年龄6','部门6','2022-03-22 17:14:10','培训内容6','培训地点6','2022-03-22 17:14:10','备注6'),(1647940872761,'2022-03-22 09:21:11','111','A员工','A职位','男','33','A部门','2022-03-24 02:03:00','培训培训培训培训培训','xxx地点','2022-03-31 00:00:00','无');
/*!40000 ALTER TABLE `yuangongpeixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongxiangxi`
--

DROP TABLE IF EXISTS `yuangongxiangxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongxiangxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `yuangongshouji` varchar(200) DEFAULT NULL COMMENT '员工手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `yuangongdizhi` varchar(200) DEFAULT NULL COMMENT '员工地址',
  `minzu` varchar(200) DEFAULT NULL COMMENT '民族',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `hunfou` varchar(200) DEFAULT NULL COMMENT '婚否',
  `zhengzhimianmao` varchar(200) DEFAULT NULL COMMENT '政治面貌',
  `biyeyuanxiao` varchar(200) DEFAULT NULL COMMENT '毕业院校',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='员工详细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongxiangxi`
--

LOCK TABLES `yuangongxiangxi` WRITE;
/*!40000 ALTER TABLE `yuangongxiangxi` DISABLE KEYS */;
INSERT INTO `yuangongxiangxi` VALUES (101,'2022-03-22 09:14:10','员工工号1','员工姓名1','部门1','职位1','性别1','年龄1','员工手机1','upload/yuangongxiangxi_zhaopian1.jpg','员工地址1','民族1','学历1','未婚','政治面貌1','毕业院校1','专业1','440300199101010001',1,1),(102,'2022-03-22 09:14:10','员工工号2','员工姓名2','部门2','职位2','性别2','年龄2','员工手机2','upload/yuangongxiangxi_zhaopian2.jpg','员工地址2','民族2','学历2','未婚','政治面貌2','毕业院校2','专业2','440300199202020002',2,2),(103,'2022-03-22 09:14:10','员工工号3','员工姓名3','部门3','职位3','性别3','年龄3','员工手机3','upload/yuangongxiangxi_zhaopian3.jpg','员工地址3','民族3','学历3','未婚','政治面貌3','毕业院校3','专业3','440300199303030003',3,3),(104,'2022-03-22 09:14:10','员工工号4','员工姓名4','部门4','职位4','性别4','年龄4','员工手机4','upload/yuangongxiangxi_zhaopian4.jpg','员工地址4','民族4','学历4','未婚','政治面貌4','毕业院校4','专业4','440300199404040004',4,4),(105,'2022-03-22 09:14:10','员工工号5','员工姓名5','部门5','职位5','性别5','年龄5','员工手机5','upload/yuangongxiangxi_zhaopian5.jpg','员工地址5','民族5','学历5','未婚','政治面貌5','毕业院校5','专业5','440300199505050005',5,5),(106,'2022-03-22 09:14:10','员工工号6','员工姓名6','部门6','职位6','性别6','年龄6','员工手机6','upload/1647940914889.jpg','员工地址6','民族6','学历6','未婚','政治面貌6','毕业院校6','专业6','440300199606060006',6,6);
/*!40000 ALTER TABLE `yuangongxiangxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinjihua`
--

DROP TABLE IF EXISTS `zhaopinjihua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinjihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `zhaopinyaoqiu` varchar(200) DEFAULT NULL COMMENT '招聘要求',
  `zhaopinrenshu` varchar(200) DEFAULT NULL COMMENT '招聘人数',
  `zhaopinliucheng` longtext COMMENT '招聘流程',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647940975197 DEFAULT CHARSET=utf8 COMMENT='招聘计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinjihua`
--

LOCK TABLES `zhaopinjihua` WRITE;
/*!40000 ALTER TABLE `zhaopinjihua` DISABLE KEYS */;
INSERT INTO `zhaopinjihua` VALUES (71,'2022-03-22 09:14:10','员工工号1','员工姓名1','职位1','部门1','招聘岗位1','招聘要求1','招聘人数1','招聘流程1','2022-03-22 17:14:10','是',''),(72,'2022-03-22 09:14:10','员工工号2','员工姓名2','职位2','部门2','招聘岗位2','招聘要求2','招聘人数2','招聘流程2','2022-03-22 17:14:10','是',''),(73,'2022-03-22 09:14:10','员工工号3','员工姓名3','职位3','部门3','招聘岗位3','招聘要求3','招聘人数3','招聘流程3','2022-03-22 17:14:10','是',''),(74,'2022-03-22 09:14:10','员工工号4','员工姓名4','职位4','部门4','招聘岗位4','招聘要求4','招聘人数4','招聘流程4','2022-03-22 17:14:10','是',''),(75,'2022-03-22 09:14:10','员工工号5','员工姓名5','职位5','部门5','招聘岗位5','招聘要求5','招聘人数5','招聘流程5','2022-03-22 17:14:10','是',''),(76,'2022-03-22 09:14:10','员工工号6','员工姓名6','职位6','部门6','招聘岗位6','招聘要求6','招聘人数6','招聘流程6','2022-03-22 17:14:10','是',''),(1647940975196,'2022-03-22 09:22:54','111','A员工','A职位','A部门','xxxx','xxxxxx','xx','xxxxx','2022-03-22 17:24:06','否','');
/*!40000 ALTER TABLE `zhaopinjihua` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-28 15:39:54
