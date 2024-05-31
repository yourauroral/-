/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50712
 Source Host           : localhost:3306
 Source Schema         : springboot30n9o

 Target Server Type    : MySQL
 Target Server Version : 50712
 File Encoding         : 65001

 Date: 18/04/2024 14:43:22
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bumen
-- ----------------------------
DROP TABLE IF EXISTS `bumen`;
CREATE TABLE `bumen`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `bumen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1647940815496 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bumen
-- ----------------------------
INSERT INTO `bumen` VALUES (21, '2023-10-15 17:14:10', '部门1', '职位1');
INSERT INTO `bumen` VALUES (22, '2023-10-15 17:14:10', '部门2', '职位2');
INSERT INTO `bumen` VALUES (23, '2023-10-15 17:14:10', '部门3', '职位3');
INSERT INTO `bumen` VALUES (24, '2023-10-15 17:14:10', '部门4', '职位4');
INSERT INTO `bumen` VALUES (25, '2023-10-15 17:14:10', '部门5', '职位5');
INSERT INTO `bumen` VALUES (26, '2023-10-15 17:14:10', '部门6', '职位6');
INSERT INTO `bumen` VALUES (1647940815495, '2023-10-15 17:14:10', 'B部门', 'B职位');

-- ----------------------------
-- Table structure for bumenpeixun
-- ----------------------------
DROP TABLE IF EXISTS `bumenpeixun`;
CREATE TABLE `bumenpeixun`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `bumen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `peixunshijian` datetime(0) NULL DEFAULT NULL COMMENT '培训时间',
  `peixunneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '培训内容',
  `peixundidian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '培训地点',
  `jieshushijian` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门培训' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bumenpeixun
-- ----------------------------
INSERT INTO `bumenpeixun` VALUES (91, '2023-10-15 17:14:10', '部门1', '2023-10-15 17:14:10', '培训内容1', '培训地点1', '2023-10-15 17:14:10', '备注1');
INSERT INTO `bumenpeixun` VALUES (92, '2023-10-15 17:14:10', '部门2', '2023-10-15 17:14:10', '培训内容2', '培训地点2', '2023-10-15 17:14:10', '备注2');
INSERT INTO `bumenpeixun` VALUES (93, '2023-10-15 17:14:10', '部门3', '2023-10-15 17:14:10', '培训内容3', '培训地点3', '2023-10-15 17:14:10', '备注3');
INSERT INTO `bumenpeixun` VALUES (94, '2023-10-15 17:14:10', '部门4', '2023-10-15 17:14:10', '培训内容4', '培训地点4', '2023-10-15 17:14:10', '备注4');
INSERT INTO `bumenpeixun` VALUES (95, '2023-10-15 17:14:10', '部门5', '2023-10-15 17:14:10', '培训内容5', '培训地点5', '2023-10-15 17:14:10', '备注5');
INSERT INTO `bumenpeixun` VALUES (96, '2023-10-15 17:14:10', '部门6', '2023-10-15 17:14:10', '培训内容6', '培训地点6', '2023-10-15 17:14:10', '备注6');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for jiabanshenqing
-- ----------------------------
DROP TABLE IF EXISTS `jiabanshenqing`;
CREATE TABLE `jiabanshenqing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `jiabanshijian` date NULL DEFAULT NULL COMMENT '加班时间',
  `jiabanshizhang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加班时长',
  `jiabanshiyou` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '加班事由',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1647940962003 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '加班申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiabanshenqing
-- ----------------------------
INSERT INTO `jiabanshenqing` VALUES (51, '2023-10-15 17:14:10', '员工工号1', '员工姓名1', '部门1', '职位1', '2023-11-16', '加班时长1', '加班事由1', '是', '');
INSERT INTO `jiabanshenqing` VALUES (52, '2023-10-15 17:14:10', '员工工号2', '员工姓名2', '部门2', '职位2', '2023-11-16', '加班时长2', '加班事由2', '是', '');
INSERT INTO `jiabanshenqing` VALUES (53, '2023-10-15 17:14:10', '员工工号3', '员工姓名3', '部门3', '职位3', '2023-11-16', '加班时长3', '加班事由3', '是', '');
INSERT INTO `jiabanshenqing` VALUES (54, '2023-10-15 17:14:10', '员工工号4', '员工姓名4', '部门4', '职位4', '2023-11-16', '加班时长4', '加班事由4', '是', '');
INSERT INTO `jiabanshenqing` VALUES (55, '2023-10-15 17:14:10', '员工工号5', '员工姓名5', '部门5', '职位5', '2023-11-16', '加班时长5', '加班事由5', '是', '');
INSERT INTO `jiabanshenqing` VALUES (56, '2023-10-15 17:14:10', '员工工号6', '员工姓名6', '部门6', '职位6', '2023-11-16', '加班时长6', '加班事由6', '是', '');
INSERT INTO `jiabanshenqing` VALUES (1647940962002, '2023-10-15 17:14:10', '111', 'A员工', 'A部门', 'A职位', '2023-11-16', '20', '加班加班加班加班', '否', '');

-- ----------------------------
-- Table structure for qingjiashenqing
-- ----------------------------
DROP TABLE IF EXISTS `qingjiashenqing`;
CREATE TABLE `qingjiashenqing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `qingjialeixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假类型',
  `qingjiashijian` date NULL DEFAULT NULL COMMENT '请假时间',
  `qingjiatianshu` int(11) NULL DEFAULT NULL COMMENT '请假天数',
  `qingjialiyou` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请假理由',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1647940949397 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '请假申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qingjiashenqing
-- ----------------------------
INSERT INTO `qingjiashenqing` VALUES (41, '2023-10-15 17:14:10', '员工工号1', '员工姓名1', '部门1', '职位1', '事假', '2023-11-16', 1, '请假理由1', '是', '');
INSERT INTO `qingjiashenqing` VALUES (42, '2023-10-15 17:14:10', '员工工号2', '员工姓名2', '部门2', '职位2', '事假', '2023-11-16', 2, '请假理由2', '是', '');
INSERT INTO `qingjiashenqing` VALUES (43, '2023-10-15 17:14:10', '员工工号3', '员工姓名3', '部门3', '职位3', '事假', '2023-11-16', 3, '请假理由3', '是', '');
INSERT INTO `qingjiashenqing` VALUES (44, '2023-10-15 17:14:10', '员工工号4', '员工姓名4', '部门4', '职位4', '事假', '2023-11-16', 4, '请假理由4', '是', '');
INSERT INTO `qingjiashenqing` VALUES (45, '2023-10-15 17:14:10', '员工工号5', '员工姓名5', '部门5', '职位5', '事假', '2023-11-16', 5, '请假理由5', '否', '不通过');
INSERT INTO `qingjiashenqing` VALUES (46, '2023-10-15 17:14:10', '员工工号6', '员工姓名6', '部门6', '职位6', '事假', '2023-11-16', 6, '请假理由6', '是', '通过');
INSERT INTO `qingjiashenqing` VALUES (1647940949396, '2023-10-15 17:14:10', '111', 'A员工', 'A部门', 'A职位', '事假', '2023-11-16', 2, '有事有事有事有事', '是', '批准');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', 'goioyamyjukc5rwg86n48fgmnlvjwt3l', '2022-03-22 17:19:59', '2024-04-18 15:38:20');
INSERT INTO `token` VALUES (2, 1647940847304, '111', 'yuangong', '员工', 'qiz3l1stb6lb7r8ncwkodo5a0hmyfz33', '2022-03-22 17:22:07', '2022-03-22 18:23:57');
INSERT INTO `token` VALUES (3, 11, '员工工号1', 'yuangong', '员工', 'xj550gd6gptk1ges0o6mden6qwqphiy8', '2023-10-10 18:04:31', '2023-11-15 22:11:28');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2023-10-15 17:14:10');

-- ----------------------------
-- Table structure for yuangong
-- ----------------------------
DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE `yuangong`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工工号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `yuangongshouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工手机',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `jibengongzi` float NULL DEFAULT NULL COMMENT '基本工资',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yuangonggonghao`(`yuangonggonghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1647940847305 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yuangong
-- ----------------------------
INSERT INTO `yuangong` VALUES (11, '2023-10-15 17:14:10', '员工工号1', '123456', '员工姓名1', '部门1', '职位1', '男', '年龄1', '13823888881', 'upload/yuangong_zhaopian1.jpg', 1);
INSERT INTO `yuangong` VALUES (12, '2023-10-15 17:14:10', '员工工号2', '123456', '员工姓名2', '部门2', '职位2', '男', '年龄2', '13823888882', 'upload/yuangong_zhaopian2.jpg', 2);
INSERT INTO `yuangong` VALUES (13, '2023-10-15 17:14:10', '员工工号3', '123456', '员工姓名3', '部门3', '职位3', '男', '年龄3', '13823888883', 'upload/yuangong_zhaopian3.jpg', 3);
INSERT INTO `yuangong` VALUES (14, '2023-10-15 17:14:10', '员工工号4', '123456', '员工姓名4', '部门4', '职位4', '男', '年龄4', '13823888884', 'upload/yuangong_zhaopian4.jpg', 4);
INSERT INTO `yuangong` VALUES (15, '2023-10-15 17:14:10', '员工工号5', '123456', '员工姓名5', '部门5', '职位5', '男', '年龄5', '13823888885', 'upload/yuangong_zhaopian5.jpg', 5);
INSERT INTO `yuangong` VALUES (16, '2023-10-15 17:14:10', '员工工号6', '123456', '员工姓名6', '部门6', '职位6', '男', '年龄6', '13823888886', 'upload/yuangong_zhaopian6.jpg', 6);
INSERT INTO `yuangong` VALUES (1647940847304, '2023-10-15 17:14:10', '111', '111', 'A员工', 'A部门', 'A职位', '男', '33', '13899999999', 'upload/1647940842785.jpg', 5000);

-- ----------------------------
-- Table structure for yuangonggongzi
-- ----------------------------
DROP TABLE IF EXISTS `yuangonggongzi`;
CREATE TABLE `yuangonggongzi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `fafangshijian` date NOT NULL COMMENT '发放时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `zhiwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `bumen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
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
  `shifagongzi` float NULL DEFAULT NULL COMMENT '实发工资',
  `gongzibeizhu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '工资备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1647941026417 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工工资' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yuangonggongzi
-- ----------------------------
INSERT INTO `yuangonggongzi` VALUES (61, '2023-10-15 17:14:10', '2023-10-15', '员工工号1', '员工姓名1', '职位1', '部门1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '工资备注1');
INSERT INTO `yuangonggongzi` VALUES (62, '2023-10-15 17:14:10', '2023-10-15', '员工工号2', '员工姓名2', '职位2', '部门2', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '工资备注2');
INSERT INTO `yuangonggongzi` VALUES (63, '2023-10-15 17:14:10', '2023-10-15', '员工工号3', '员工姓名3', '职位3', '部门3', 5, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 11, '工资备注3');
INSERT INTO `yuangonggongzi` VALUES (64, '2023-10-15 17:14:10', '2023-10-15', '员工工号4', '员工姓名4', '职位4', '部门4', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '工资备注4');
INSERT INTO `yuangonggongzi` VALUES (65, '2023-10-15 17:14:10', '2023-10-15', '员工工号5', '员工姓名5', '职位5', '部门5', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '工资备注5');
INSERT INTO `yuangonggongzi` VALUES (66, '2023-10-15 17:14:10', '2023-10-15', '员工工号6', '员工姓名6', '职位6', '部门6', 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, '工资备注6');
INSERT INTO `yuangonggongzi` VALUES (1647941026416, '2023-10-15 17:14:10', '2023-10-15', '111', 'A员工', 'A职位', 'A部门', 5000, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 5040, '无');

-- ----------------------------
-- Table structure for yuangongkaoqin
-- ----------------------------
DROP TABLE IF EXISTS `yuangongkaoqin`;
CREATE TABLE `yuangongkaoqin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `zhiwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `bumen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `dakaleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打卡类型',
  `dakashijian` datetime(0) NULL DEFAULT NULL COMMENT '打卡时间',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工考勤' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yuangongkaoqin
-- ----------------------------
INSERT INTO `yuangongkaoqin` VALUES (31, '2023-10-15 17:14:10', '员工工号1', '员工姓名1', '职位1', '部门1', '签到', '2023-10-15 17:14:10', '备注1');
INSERT INTO `yuangongkaoqin` VALUES (32, '2023-10-15 17:14:10', '员工工号2', '员工姓名2', '职位2', '部门2', '签到', '2023-10-15 17:14:10', '备注2');
INSERT INTO `yuangongkaoqin` VALUES (33, '2023-10-15 17:14:10', '员工工号3', '员工姓名3', '职位3', '部门3', '签到', '2023-10-15 17:14:10', '备注3');
INSERT INTO `yuangongkaoqin` VALUES (34, '2023-10-15 17:14:10', '员工工号4', '员工姓名4', '职位4', '部门4', '签到', '2023-10-15 17:14:10', '备注4');
INSERT INTO `yuangongkaoqin` VALUES (35, '2023-10-15 17:14:10', '员工工号5', '员工姓名5', '职位5', '部门5', '签到', '2023-10-15 17:14:10', '备注5');
INSERT INTO `yuangongkaoqin` VALUES (36, '2023-10-15 17:14:10', '员工工号6', '员工姓名6', '职位6', '部门6', '签到', '2023-10-15 17:14:10', '备注6');

-- ----------------------------
-- Table structure for yuangongpeixun
-- ----------------------------
DROP TABLE IF EXISTS `yuangongpeixun`;
CREATE TABLE `yuangongpeixun`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `zhiwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `bumen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `peixunshijian` datetime(0) NULL DEFAULT NULL COMMENT '培训时间',
  `peixunneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '培训内容',
  `peixundidian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '培训地点',
  `jieshushijian` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1647940872762 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工培训' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yuangongpeixun
-- ----------------------------
INSERT INTO `yuangongpeixun` VALUES (81, '2023-10-15 17:14:10', '员工工号1', '员工姓名1', '职位1', '性别1', '年龄1', '部门1', '2023-10-15 17:14:10', '培训内容1', '培训地点1', '2023-10-15 17:14:10', '备注1');
INSERT INTO `yuangongpeixun` VALUES (82, '2023-10-15 17:14:10', '员工工号2', '员工姓名2', '职位2', '性别2', '年龄2', '部门2', '2023-10-15 17:14:10', '培训内容2', '培训地点2', '2023-10-15 17:14:10', '备注2');
INSERT INTO `yuangongpeixun` VALUES (83, '2023-10-15 17:14:10', '员工工号3', '员工姓名3', '职位3', '性别3', '年龄3', '部门3', '2023-10-15 17:14:10', '培训内容3', '培训地点3', '2023-10-15 17:14:10', '备注3');
INSERT INTO `yuangongpeixun` VALUES (84, '2023-10-15 17:14:10', '员工工号4', '员工姓名4', '职位4', '性别4', '年龄4', '部门4', '2023-10-15 17:14:10', '培训内容4', '培训地点4', '2023-10-15 17:14:10', '备注4');
INSERT INTO `yuangongpeixun` VALUES (85, '2023-10-15 17:14:10', '员工工号5', '员工姓名5', '职位5', '性别5', '年龄5', '部门5', '2023-10-15 17:14:10', '学习专业知识技能', '培训地点5', '2023-10-15 17:14:10', '备注5');
INSERT INTO `yuangongpeixun` VALUES (86, '2023-10-15 17:14:10', '员工工号6', '员工姓名6', '职位6', '性别6', '年龄6', '部门6', '2023-10-15 17:14:10', '培训内容6', '培训地点6', '2023-10-15 17:14:10', '备注6');
INSERT INTO `yuangongpeixun` VALUES (1647940872761, '2023-10-15 17:14:10', '111', 'A员工', 'A职位', '男', '33', 'A部门', '2023-10-15 17:14:10', '培训培训培训培训培训', 'xxx地点', '2023-10-15 17:14:10', '无');

-- ----------------------------
-- Table structure for yuangongxiangxi
-- ----------------------------
DROP TABLE IF EXISTS `yuangongxiangxi`;
CREATE TABLE `yuangongxiangxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `yuangongshouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工手机',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `yuangongdizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工地址',
  `minzu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `xueli` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `hunfou` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '婚否',
  `zhengzhimianmao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `biyeyuanxiao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业院校',
  `zhuanye` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `shenfenzhenghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `crossuserid` bigint(20) NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) NULL DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工详细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yuangongxiangxi
-- ----------------------------
INSERT INTO `yuangongxiangxi` VALUES (101, '2023-10-15 17:14:10', '员工工号1', '员工姓名1', '部门1', '职位1', '性别1', '年龄1', '员工手机1', 'upload/yuangong_zhaopian1.jpg', '员工地址1', '民族1', '学历1', '未婚', '政治面貌1', '毕业院校1', '专业1', '440300199101010001', 1, 1);
INSERT INTO `yuangongxiangxi` VALUES (102, '2023-10-15 17:14:10', '员工工号2', '员工姓名2', '部门2', '职位2', '性别2', '年龄2', '员工手机2', 'upload/yuangong_zhaopian2.jpg', '员工地址2', '民族2', '学历2', '未婚', '政治面貌2', '毕业院校2', '专业2', '440300199202020002', 2, 2);
INSERT INTO `yuangongxiangxi` VALUES (103, '2023-10-15 17:14:10', '员工工号3', '员工姓名3', '部门3', '职位3', '性别3', '年龄3', '员工手机3', 'upload/yuangong_zhaopian3.jpg', '员工地址3', '民族3', '学历3', '未婚', '政治面貌3', '毕业院校3', '专业3', '440300199303030003', 3, 3);
INSERT INTO `yuangongxiangxi` VALUES (104, '2023-10-15 17:14:10', '员工工号4', '员工姓名4', '部门4', '职位4', '性别4', '年龄4', '员工手机4', 'upload/yuangong_zhaopian4.jpg', '员工地址4', '民族4', '学历4', '未婚', '政治面貌4', '毕业院校4', '专业4', '440300199404040004', 4, 4);
INSERT INTO `yuangongxiangxi` VALUES (105, '2023-10-15 17:14:10', '员工工号5', '员工姓名5', '部门5', '职位5', '性别5', '年龄5', '员工手机5', 'upload/yuangong_zhaopian5.jpg', '员工地址5', '民族5', '学历5', '未婚', '政治面貌5', '毕业院校5', '专业5', '440300199505050005', 5, 5);
INSERT INTO `yuangongxiangxi` VALUES (106, '2023-10-15 17:14:10', '员工工号6', '员工姓名6', '部门6', '职位6', '性别6', '年龄6', '员工手机6', 'upload/1647940914889.jpg', '员工地址6', '民族6', '学历6', '未婚', '政治面貌6', '毕业院校6', '专业6', '440300199606060006', 6, 6);

-- ----------------------------
-- Table structure for zhaopinjihua
-- ----------------------------
DROP TABLE IF EXISTS `zhaopinjihua`;
CREATE TABLE `zhaopinjihua`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `zhiwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `bumen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `zhaopingangwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招聘岗位',
  `zhaopinyaoqiu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招聘要求',
  `zhaopinrenshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招聘人数',
  `zhaopinliucheng` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '招聘流程',
  `shenqingshijian` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1647940975197 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘计划' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zhaopinjihua
-- ----------------------------
INSERT INTO `zhaopinjihua` VALUES (71, '2023-10-15 17:14:10', '员工工号1', '员工姓名1', '职位1', '部门1', '招聘岗位1', '招聘要求1', '招聘人数1', '招聘流程1', '2023-10-15 17:14:10', '是', '');
INSERT INTO `zhaopinjihua` VALUES (72, '2023-10-15 17:14:10', '员工工号2', '员工姓名2', '职位2', '部门2', '招聘岗位2', '招聘要求2', '招聘人数2', '招聘流程2', '2023-10-15 17:14:10', '是', '');
INSERT INTO `zhaopinjihua` VALUES (73, '2023-10-15 17:14:10', '员工工号3', '员工姓名3', '职位3', '部门3', '招聘岗位3', '招聘要求3', '招聘人数3', '招聘流程3', '2023-10-15 17:14:10', '是', '');
INSERT INTO `zhaopinjihua` VALUES (74, '2023-10-15 17:14:10', '员工工号4', '员工姓名4', '职位4', '部门4', '招聘岗位4', '招聘要求4', '招聘人数4', '招聘流程4', '2023-10-15 17:14:10', '是', '');
INSERT INTO `zhaopinjihua` VALUES (75, '2023-10-15 17:14:10', '员工工号5', '员工姓名5', '职位5', '部门5', '招聘岗位5', '招聘要求5', '招聘人数5', '招聘流程5', '2023-10-15 17:14:10', '是', '');
INSERT INTO `zhaopinjihua` VALUES (76, '2023-10-15 17:14:10', '员工工号6', '员工姓名6', '职位6', '部门6', '招聘岗位6', '招聘要求6', '招聘人数6', '招聘流程6', '2023-10-15 17:14:10', '是', '');
INSERT INTO `zhaopinjihua` VALUES (1647940975196, '2023-10-15 17:14:10', '111', 'A员工', 'A职位', 'A部门', 'xxxx', 'xxxxxx', 'xx', 'xxxxx', '2023-10-15 17:14:10', '否', '');

SET FOREIGN_KEY_CHECKS = 1;
