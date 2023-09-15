/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50719 (5.7.19)
 Source Host           : localhost:3306
 Source Schema         : ssm8i489

 Target Server Type    : MySQL
 Target Server Version : 50719 (5.7.19)
 File Encoding         : 65001

 Date: 03/09/2023 10:16:30
*/

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm8i489` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm8i489`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES (1, '2023-03-25 16:25:12', '关于我们', 'ABOUT US', '不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。', 'upload/aboutus_picture1.jpg', 'upload/aboutus_picture2.jpg', 'upload/aboutus_picture3.jpg');

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
-- Table structure for discusshuazuokecheng
-- ----------------------------
DROP TABLE IF EXISTS `discusshuazuokecheng`;
CREATE TABLE `discusshuazuokecheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1687078976526 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '画作课程评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusshuazuokecheng
-- ----------------------------
INSERT INTO `discusshuazuokecheng` VALUES (1681610991950, '2023-04-16 10:09:51', 1679967333063, 18, 'upload/xuesheng_touxiang8.jpg', 'mary', '课程好', NULL);
INSERT INTO `discusshuazuokecheng` VALUES (1681611109838, '2023-04-16 10:11:49', 1681609451991, 17, 'upload/xuesheng_touxiang7.jpg', 'jack', '很棒', NULL);
INSERT INTO `discusshuazuokecheng` VALUES (1681611256456, '2023-04-16 10:14:15', 1681609613675, 16, 'upload/xuesheng_touxiang6.jpg', 'king', '很可爱', NULL);
INSERT INTO `discusshuazuokecheng` VALUES (1681611377359, '2023-04-16 10:16:16', 1681609692699, 15, 'upload/xuesheng_touxiang5.jpg', 'milan', '兔子', NULL);
INSERT INTO `discusshuazuokecheng` VALUES (1683617828549, '2023-05-09 15:37:08', 1683617235761, 1683617064291, 'upload/1683617046654.jpg', '202301', '厉害！！！', NULL);
INSERT INTO `discusshuazuokecheng` VALUES (1683617864404, '2023-05-09 15:37:43', 1683617180909, 1683617064291, 'upload/1683617046654.jpg', '202301', '666！！！', NULL);
INSERT INTO `discusshuazuokecheng` VALUES (1683617910458, '2023-05-09 15:38:30', 1683617136942, 1683617064291, 'upload/1683617046654.jpg', '202301', '点赞', NULL);
INSERT INTO `discusshuazuokecheng` VALUES (1687078976525, '2023-06-18 17:02:56', 1681609692699, 1683617064291, 'upload/1683617046654.jpg', '202301', '好棒', NULL);

-- ----------------------------
-- Table structure for discusshuihuafenxiang
-- ----------------------------
DROP TABLE IF EXISTS `discusshuihuafenxiang`;
CREATE TABLE `discusshuihuafenxiang`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1687079000268 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绘画分享评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusshuihuafenxiang
-- ----------------------------
INSERT INTO `discusshuihuafenxiang` VALUES (1679898623931, '2023-03-27 14:30:23', 1679897288955, 1679754954227, 'upload/1679754946261.jpg', 'student', '评论评论评论评论评论', NULL);
INSERT INTO `discusshuihuafenxiang` VALUES (1679984923364, '2023-03-28 14:28:43', 1679965687053, 1679965622758, 'upload/1679965613097.jpg', 'stu', '评论其他学生画作', NULL);
INSERT INTO `discusshuihuafenxiang` VALUES (1680764026027, '2023-04-06 14:53:46', 76, 1679965622758, 'upload/1679965613097.jpg', 'stu', '评论绘画名称6', NULL);
INSERT INTO `discusshuihuafenxiang` VALUES (1680764921020, '2023-04-06 15:08:40', 1680764792991, 1679965622758, 'upload/1679965613097.jpg', 'stu', '大熊猫', NULL);
INSERT INTO `discusshuihuafenxiang` VALUES (1681611019227, '2023-04-16 10:10:18', 1679965687053, 18, 'upload/xuesheng_touxiang8.jpg', 'mary', '画的很棒', NULL);
INSERT INTO `discusshuihuafenxiang` VALUES (1681611162192, '2023-04-16 10:12:41', 1680764792991, 17, 'upload/xuesheng_touxiang7.jpg', 'jack', '水墨熊猫', NULL);
INSERT INTO `discusshuihuafenxiang` VALUES (1681611285852, '2023-04-16 10:14:45', 1681610391501, 16, 'upload/xuesheng_touxiang6.jpg', 'king', '花', NULL);
INSERT INTO `discusshuihuafenxiang` VALUES (1683617941001, '2023-05-09 15:39:00', 1683617542680, 1683617064291, 'upload/1683617046654.jpg', '202301', '666', NULL);
INSERT INTO `discusshuihuafenxiang` VALUES (1687079000267, '2023-06-18 17:03:19', 1681610267365, 1683617064291, 'upload/1683617046654.jpg', '202301', '123', NULL);

-- ----------------------------
-- Table structure for discusszhishikepu
-- ----------------------------
DROP TABLE IF EXISTS `discusszhishikepu`;
CREATE TABLE `discusszhishikepu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1687079018771 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '知识科普评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusszhishikepu
-- ----------------------------
INSERT INTO `discusszhishikepu` VALUES (1679792521254, '2023-03-26 09:02:00', 91, 1679754954227, 'upload/1679754946261.jpg', 'student', '评论', NULL);
INSERT INTO `discusszhishikepu` VALUES (1680744879196, '2023-04-06 09:34:38', 91, 1679965622758, 'upload/1679965613097.jpg', 'stu', '知识科普评论', NULL);
INSERT INTO `discusszhishikepu` VALUES (1681611056353, '2023-04-16 10:10:55', 1681607750133, 18, 'upload/xuesheng_touxiang8.jpg', 'mary', '科普很详细', NULL);
INSERT INTO `discusszhishikepu` VALUES (1681611187358, '2023-04-16 10:13:06', 1681607912582, 17, 'upload/xuesheng_touxiang7.jpg', 'jack', '植物科普', NULL);
INSERT INTO `discusszhishikepu` VALUES (1681611316889, '2023-04-16 10:15:16', 1681608011522, 16, 'upload/xuesheng_touxiang6.jpg', 'king', '好详细', NULL);
INSERT INTO `discusszhishikepu` VALUES (1681611408509, '2023-04-16 10:16:47', 1681608064706, 15, 'upload/xuesheng_touxiang5.jpg', 'milan', '科幻', NULL);
INSERT INTO `discusszhishikepu` VALUES (1681611510396, '2023-04-16 10:18:29', 1681608592438, 14, 'upload/xuesheng_touxiang4.jpg', 'amy', '很详细', NULL);
INSERT INTO `discusszhishikepu` VALUES (1687079018770, '2023-06-18 17:03:37', 1681607750133, 1683617064291, 'upload/1683617046654.jpg', '202301', '好搞笑', NULL);

-- ----------------------------
-- Table structure for huazuojiancha
-- ----------------------------
DROP TABLE IF EXISTS `huazuojiancha`;
CREATE TABLE `huazuojiancha`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huihuamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '绘画名称',
  `huihualeixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '绘画类型',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `jiaoshigonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `jianchashijian` datetime NULL DEFAULT NULL COMMENT '检查时间',
  `fankuijianyi` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '反馈建议',
  `dafen` int(11) NOT NULL COMMENT '打分',
  `chengji` float NOT NULL COMMENT '成绩',
  `crossuserid` bigint(20) NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) NULL DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1693276466692 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '画作检查' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huazuojiancha
-- ----------------------------
INSERT INTO `huazuojiancha` VALUES (1681609565322, '2023-04-16 09:46:05', '花', '水彩画', '202303', 'mary', 't003', '李敏', '2023-04-16 09:45:51', '清晰', 4, 99, 26, 1681608936033);
INSERT INTO `huazuojiancha` VALUES (1681609762305, '2023-04-16 09:49:22', '鹿', '油画', '202301', '刘明明', 't004', '张明', '2023-04-16 09:48:20', '想象大胆', 3, 78, 25, 1679965660739);
INSERT INTO `huazuojiancha` VALUES (1681609873633, '2023-04-16 09:51:13', '花', '水彩画', '202303', 'mary', 't005', '赵英', '2023-04-16 09:50:45', '配色优秀', 5, 100, 24, 1681608936033);
INSERT INTO `huazuojiancha` VALUES (1683617292533, '2023-05-09 15:28:12', '猫', '故事画', '202307', 'amy', 't001', '刘天', '2023-05-09 15:27:56', '棒！！', 4, 80, 1683617013333, 1681610574520);
INSERT INTO `huazuojiancha` VALUES (1683617575868, '2023-05-09 15:32:55', '鹿', '想象画', '202301', '刘明明', 't001', '刘天', '2023-05-09 15:32:46', '', 5, 98, 1683617013333, 1683617416750);
INSERT INTO `huazuojiancha` VALUES (1683617604755, '2023-05-09 15:33:23', '熊猫', '水墨画', '202301', '刘明明', 't001', '刘天', '2023-05-09 15:33:02', '优秀', 5, 96, 1683617013333, 1683617377592);
INSERT INTO `huazuojiancha` VALUES (1693276466691, '2023-08-29 10:34:26', '花', '水彩画', '202303', 'mary', 't001', '刘天', '2023-08-29 10:34:20', '', 5, 88, 1683617013333, 1681608936033);

-- ----------------------------
-- Table structure for huazuokecheng
-- ----------------------------
DROP TABLE IF EXISTS `huazuokecheng`;
CREATE TABLE `huazuokecheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `zhangjie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '章节',
  `huihualeixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '绘画类型',
  `jiaoxueshipin` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '教学视频',
  `kechengxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程详情',
  `tupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `jiaoshigonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `thumbsupnum` int(11) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) NULL DEFAULT 0 COMMENT '踩',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kechengbianhao`(`kechengbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1693276511835 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '画作课程' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huazuokecheng
-- ----------------------------
INSERT INTO `huazuokecheng` VALUES (1681609613675, '2023-04-16 09:46:52', '1681609572436', '简笔画教学', '1', '简笔画', '', '<p>线条流畅</p>', 'upload/1681609610188.jpeg', 't003', '李敏', 0, 1, '2023-08-29 14:00:43', 10);
INSERT INTO `huazuokecheng` VALUES (1681609692699, '2023-04-16 09:48:12', '1681609654119', '想象画教学', '2', '想象画', '', '<p>大胆想象</p>', 'upload/1681609688520.jpeg', 't004', '张明', 2, 0, '2023-06-18 17:02:42', 6);
INSERT INTO `huazuokecheng` VALUES (1681609839219, '2023-04-16 09:50:38', '1681609788429', '命题画教学', '3', '命题画', '', '<p>水墨画教学</p>', 'upload/1681609824439.jpeg', 't005', '赵英', 0, 0, '2023-08-29 14:00:23', 5);
INSERT INTO `huazuokecheng` VALUES (1681609925772, '2023-04-16 09:52:04', '1681609887871', '水墨画教学', '3', '水墨画', '', '<p>水墨画教学</p>', 'upload/1681609907698.jpg', 't006', '钱灵', 1, 0, '2023-06-18 17:01:51', 4);
INSERT INTO `huazuokecheng` VALUES (1681610001511, '2023-04-16 09:53:21', '1681609960817', '油画教学', '2', '油画', '', '<p>油画教学</p>', 'upload/1681609992052.jpeg', 't007', '雷天', 0, 0, '2023-05-09 14:52:42', 3);
INSERT INTO `huazuokecheng` VALUES (1683617136942, '2023-05-09 15:25:36', '1683617092015', '水彩画教学', '第一章', '水彩画', 'upload/1683617104730.mp4', '', 'upload/1683617261423.jpeg', 't001', '刘天', 1, 0, '2023-06-18 17:02:03', 8);
INSERT INTO `huazuokecheng` VALUES (1683617180909, '2023-05-09 15:26:19', '1683617140772', '水彩画教学', '第二章', '水彩画', 'upload/1683617152644.mp4', '', 'upload/1683617175849.jpg', 't001', '刘天', 1, 0, '2023-06-18 17:01:59', 5);
INSERT INTO `huazuokecheng` VALUES (1683617235761, '2023-05-09 15:27:14', '1683617186754', '想象画教学', '第一章', '想象画', 'upload/1683617219744.mp4', '', 'upload/1683617231800.jpg', 't001', '刘天', 1, 0, '2023-08-29 14:00:10', 11);
INSERT INTO `huazuokecheng` VALUES (1693276511834, '2023-08-29 10:35:11', '1693276471775', '水彩', '1', '水彩画', 'upload/1693276499103.mp4', '', 'upload/1693276506214.jpeg', 't001', '刘天', 1, 0, '2023-08-29 10:35:37', 1);

-- ----------------------------
-- Table structure for huihuafenxiang
-- ----------------------------
DROP TABLE IF EXISTS `huihuafenxiang`;
CREATE TABLE `huihuafenxiang`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huihuamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '绘画名称',
  `fengmiantupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '封面图片',
  `huihualeixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '绘画类型',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `xiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情',
  `fabushijian` date NULL DEFAULT NULL COMMENT '发布时间',
  `piaoshu` int(11) NULL DEFAULT NULL COMMENT '票数',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1683617542681 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绘画分享' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huihuafenxiang
-- ----------------------------
INSERT INTO `huihuafenxiang` VALUES (1681608996580, '2023-04-16 09:36:35', '花', 'upload/1681608967203.jpg', '水彩画', '202303', 'mary', '<p>花朵与蝴蝶</p>', '2023-04-16', 0, '是', '');
INSERT INTO `huihuafenxiang` VALUES (1681610166544, '2023-04-16 09:56:05', '花', 'upload/1681610145951.jpeg', '油画', '202304', 'jack', '<p>油画花朵</p>', '2023-04-16', 0, '是', '');
INSERT INTO `huihuafenxiang` VALUES (1681610267365, '2023-04-16 09:57:46', '山水', 'upload/1681610241268.jpeg', '水墨画', '202305', 'king', '<p>山水水墨画</p>', '2023-04-16', 1, '是', '');
INSERT INTO `huihuafenxiang` VALUES (1681610391501, '2023-04-16 09:59:51', '命题花', 'upload/1681610362758.jpg', '命题画', '202306', 'milan', '<p>命题画绘画</p>', '2023-04-16', 1, '是', '');
INSERT INTO `huihuafenxiang` VALUES (1681610529342, '2023-04-16 10:02:08', '猫', 'upload/1681610504573.jpg', '故事画', '202307', 'amy', '<p>故事画绘画</p>', '2023-04-16', 0, '是', '');
INSERT INTO `huihuafenxiang` VALUES (1681610626264, '2023-04-16 10:03:46', '竹', 'upload/1681610600528.jpeg', '水墨画', '202303', 'mary', '<p>水墨画绘画</p>', '2023-04-16', 0, '是', '');
INSERT INTO `huihuafenxiang` VALUES (1683617451118, '2023-05-09 15:30:50', '草莓', 'upload/1683617432506.jpeg', '水彩画', '202301', '刘明明', '', '2023-04-20', 0, '是', '');
INSERT INTO `huihuafenxiang` VALUES (1683617499181, '2023-05-09 15:31:38', '梦幻鹿', 'upload/1683617468729.jpeg', '想象画', '202301', '刘明明', '<p>孤独的鹿</p>', '2023-04-20', 1, '是', '');
INSERT INTO `huihuafenxiang` VALUES (1683617542680, '2023-05-09 15:32:22', '山崖上的鹿', 'upload/1683617509487.jpg', '命题画', '202301', '刘明明', '', '2023-04-14', 1, '是', '审核通过');

-- ----------------------------
-- Table structure for huihualeixing
-- ----------------------------
DROP TABLE IF EXISTS `huihualeixing`;
CREATE TABLE `huihualeixing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huihualeixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '绘画类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绘画类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huihualeixing
-- ----------------------------
INSERT INTO `huihualeixing` VALUES (31, '2023-03-25 16:25:12', '水彩画');
INSERT INTO `huihualeixing` VALUES (32, '2023-03-25 16:25:12', '简笔画');
INSERT INTO `huihualeixing` VALUES (33, '2023-03-25 16:25:12', '想象画');
INSERT INTO `huihualeixing` VALUES (34, '2023-03-25 16:25:12', '命题画');
INSERT INTO `huihualeixing` VALUES (35, '2023-03-25 16:25:12', '故事画');
INSERT INTO `huihualeixing` VALUES (36, '2023-03-25 16:25:12', '水墨画');
INSERT INTO `huihualeixing` VALUES (37, '2023-03-25 16:25:12', '油画');
INSERT INTO `huihualeixing` VALUES (38, '2023-03-25 16:25:12', '抽象画');

-- ----------------------------
-- Table structure for huihuatoupiao
-- ----------------------------
DROP TABLE IF EXISTS `huihuatoupiao`;
CREATE TABLE `huihuatoupiao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huihuamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '绘画名称',
  `huihualeixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '绘画类型',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `piaoshu` int(11) NULL DEFAULT NULL COMMENT '票数',
  `toupiaozhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投票账号',
  `toupiaoren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投票人',
  `toupiaoshijian` datetime NULL DEFAULT NULL COMMENT '投票时间',
  `toupiaoliyou` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投票理由',
  `crossuserid` bigint(20) NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) NULL DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1687078990751 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绘画投票' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huihuatoupiao
-- ----------------------------
INSERT INTO `huihuatoupiao` VALUES (1681611278730, '2023-04-16 10:14:38', '命题花', '命题画', '202306', 'milan', 1, '202305', 'king', '2023-04-16 10:14:24', '命题不错', 16, 1681610391501);
INSERT INTO `huihuatoupiao` VALUES (1683617932589, '2023-05-09 15:38:51', '山崖上的鹿', '命题画', '202301', '刘明明', 1, '202301', '刘明明', '2023-05-09 15:38:49', '', 1683617064291, 1683617542680);
INSERT INTO `huihuatoupiao` VALUES (1683617958999, '2023-05-09 15:39:18', '草莓', '水彩画', '202301', '刘明明', 0, '202301', '刘明明', '2023-05-09 15:39:15', '', 1683617064291, 1683617451118);
INSERT INTO `huihuatoupiao` VALUES (1683617988840, '2023-05-09 15:39:48', '梦幻鹿', '想象画', '202301', '刘明明', 1, '202301', '刘明明', '2023-05-09 15:39:45', '', 1683617064291, 1683617499181);
INSERT INTO `huihuatoupiao` VALUES (1687078990750, '2023-06-18 17:03:10', '山水', '水墨画', '202305', 'king', 1, '202301', '刘明明', '2023-06-18 17:03:07', '', 1683617064291, 1681610267365);

-- ----------------------------
-- Table structure for jiaoshi
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE `jiaoshi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师工号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `zhaopian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '照片',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jiaoshigonghao`(`jiaoshigonghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1683617013334 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiaoshi
-- ----------------------------
INSERT INTO `jiaoshi` VALUES (22, '2023-03-25 16:25:12', 't007', '123456', '雷天', '男', 'upload/jiaoshi_zhaopian2.jpg', '13823888882');
INSERT INTO `jiaoshi` VALUES (23, '2023-03-25 16:25:12', 't006', '123456', '钱灵', '女', 'upload/jiaoshi_zhaopian3.jpg', '13823888883');
INSERT INTO `jiaoshi` VALUES (24, '2023-03-25 16:25:12', 't005', '123456', '赵英', '女', 'upload/jiaoshi_zhaopian4.jpg', '13823888884');
INSERT INTO `jiaoshi` VALUES (25, '2023-03-25 16:25:12', 't004', '123456', '张明', '女', 'upload/jiaoshi_zhaopian5.jpg', '13823888885');
INSERT INTO `jiaoshi` VALUES (26, '2023-03-25 16:25:12', 't003', '123456', '李敏', '女', 'upload/jiaoshi_zhaopian6.jpg', '13823888886');
INSERT INTO `jiaoshi` VALUES (27, '2023-03-25 16:25:12', 't002', '123456', '刘景', '女', 'upload/jiaoshi_zhaopian7.jpg', '13823888887');
INSERT INTO `jiaoshi` VALUES (1683617013333, '2023-05-09 15:23:33', 't001', '123456', '刘天', '男', 'upload/1683617000495.jpeg', '13855975806');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网站公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (131, '2023-03-25 16:25:12', '有梦想，就要努力去实现', '不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。', 'upload/news_picture1.jpg', '<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>');
INSERT INTO `news` VALUES (132, '2023-03-25 16:25:12', '又是一年毕业季', '又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。', 'upload/news_picture2.jpg', '<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>');
INSERT INTO `news` VALUES (133, '2023-03-25 16:25:12', '挫折路上，坚持常在心间', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture3.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
INSERT INTO `news` VALUES (134, '2023-03-25 16:25:12', '挫折是另一个生命的开端', '当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。', 'upload/news_picture4.jpg', '<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>');
INSERT INTO `news` VALUES (135, '2023-03-25 16:25:12', '你要去相信，没有到不了的明天', '有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。', 'upload/news_picture5.jpg', '<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>');
INSERT INTO `news` VALUES (136, '2023-03-25 16:25:12', '离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture6.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (137, '2023-03-25 16:25:12', 'Leave未必是一种痛苦', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture7.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (138, '2023-03-25 16:25:12', '坚持才会成功', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture8.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1693276543491 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1679755485604, '2023-03-25 22:44:45', 1679754954227, 58, 'huazuokecheng', '课程名称8', 'upload/huazuokecheng_tupian8.jpg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (1679967495832, '2023-03-28 09:38:15', 1679965622758, 1679967333063, 'huazuokecheng', '水墨画', 'upload/1679967320744.jpeg', '1', '水墨画', NULL);
INSERT INTO `storeup` VALUES (1680248450127, '2023-03-31 15:40:50', 1679965622758, 1679967333063, 'huazuokecheng', '水墨画', 'upload/1679967320744.jpeg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (1680503021503, '2023-04-03 14:23:40', 1679965622758, 52, 'huazuokecheng', '课程名称2', 'upload/huazuokecheng_tupian2.jpg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (1680759002424, '2023-04-06 13:30:01', 1679965622758, 51, 'huazuokecheng', '课程名称1', 'upload/huazuokecheng_tupian1.jpg', '22', NULL, NULL);
INSERT INTO `storeup` VALUES (1680763931071, '2023-04-06 14:52:10', 1679965622758, 51, 'huazuokecheng', '课程名称1', 'upload/huazuokecheng_tupian1.jpg', '1', '简笔画', NULL);
INSERT INTO `storeup` VALUES (1680765176614, '2023-04-06 15:12:55', 1679965622758, 73, 'huihuafenxiang', '绘画名称3', 'upload/huihuafenxiang_fengmiantupian3.jpg', '41', NULL, NULL);
INSERT INTO `storeup` VALUES (1680765593579, '2023-04-06 15:19:52', 1679965622758, 1680764568342, 'huazuokecheng', '少儿绘画技巧学习', 'upload/1680764525124.jpg', '1', '想象画', NULL);
INSERT INTO `storeup` VALUES (1681610953374, '2023-04-16 10:09:13', 18, 1679967333063, 'huazuokecheng', '水墨画', 'upload/1679967320744.jpeg', '1', '水墨画', NULL);
INSERT INTO `storeup` VALUES (1681610974783, '2023-04-16 10:09:34', 18, 1679967333063, 'huazuokecheng', '水墨画', 'upload/1679967320744.jpeg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (1681610997494, '2023-04-16 10:09:56', 18, 1679965687053, 'huihuafenxiang', '猫', 'upload/1679965682906.jpg', '41', NULL, NULL);
INSERT INTO `storeup` VALUES (1681611032831, '2023-04-16 10:10:32', 18, 1681607750133, 'zhishikepu', '哺乳类动物', 'upload/1681607729108.jpeg', '1', '哺乳类动物', NULL);
INSERT INTO `storeup` VALUES (1681611087892, '2023-04-16 10:11:27', 17, 1681609451991, 'huazuokecheng', '想象画教学', 'upload/1681609415566.jpeg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (1681611114284, '2023-04-16 10:11:54', 17, 1681609451991, 'huazuokecheng', '想象画教学', 'upload/1681609415566.jpeg', '1', '想象画', NULL);
INSERT INTO `storeup` VALUES (1681611164518, '2023-04-16 10:12:44', 17, 1680764792991, 'huihuafenxiang', '水墨画', 'upload/1680764774210.jpg', '41', NULL, NULL);
INSERT INTO `storeup` VALUES (1681611227337, '2023-04-16 10:13:46', 16, 1681609613675, 'huazuokecheng', '简笔画教学', 'upload/1681609610188.jpeg', '1', '简笔画', NULL);
INSERT INTO `storeup` VALUES (1681611243415, '2023-04-16 10:14:02', 16, 1681609613675, 'huazuokecheng', '简笔画教学', 'upload/1681609610188.jpeg', '22', NULL, NULL);
INSERT INTO `storeup` VALUES (1681611294735, '2023-04-16 10:14:54', 16, 1681610391501, 'huihuafenxiang', '命题花', 'upload/1681610362758.jpg', '41', NULL, NULL);
INSERT INTO `storeup` VALUES (1681611311467, '2023-04-16 10:15:10', 16, 1681608011522, 'zhishikepu', '鱼', 'upload/1681607998419.jpg', '1', '鱼类', NULL);
INSERT INTO `storeup` VALUES (1681611366461, '2023-04-16 10:16:06', 15, 1681609692699, 'huazuokecheng', '想象画教学', 'upload/1681609688520.jpeg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (1681611380081, '2023-04-16 10:16:19', 15, 1681609692699, 'huazuokecheng', '想象画教学', 'upload/1681609688520.jpeg', '1', '想象画', NULL);
INSERT INTO `storeup` VALUES (1681611401581, '2023-04-16 10:16:40', 15, 1681608064706, 'zhishikepu', '宇宙', 'upload/1681608053541.jpg', '1', '太空', NULL);
INSERT INTO `storeup` VALUES (1681611469713, '2023-04-16 10:17:49', 14, 1681609925772, 'huazuokecheng', '水墨画教学', 'upload/1681609907698.jpg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (1681611504913, '2023-04-16 10:18:24', 14, 1681608592438, 'zhishikepu', '狗类', 'upload/1681608675745.jpg', '1', '狗', NULL);
INSERT INTO `storeup` VALUES (1683617775417, '2023-05-09 15:36:14', 1683617064291, 1683617235761, 'huazuokecheng', '想象画教学', 'upload/1683617231800.jpg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (1683617833267, '2023-05-09 15:37:12', 1683617064291, 1683617235761, 'huazuokecheng', '想象画教学', 'upload/1683617231800.jpg', '1', '想象画', NULL);
INSERT INTO `storeup` VALUES (1683617854276, '2023-05-09 15:37:34', 1683617064291, 1683617180909, 'huazuokecheng', '水彩画教学', 'upload/1683617175849.jpg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (1683617868976, '2023-05-09 15:37:48', 1683617064291, 1683617180909, 'huazuokecheng', '水彩画教学', 'upload/1683617175849.jpg', '1', '水彩画', NULL);
INSERT INTO `storeup` VALUES (1683617875816, '2023-05-09 15:37:54', 1683617064291, 1683617136942, 'huazuokecheng', '水彩画教学', 'upload/1683617261423.jpeg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (1683617879754, '2023-05-09 15:37:58', 1683617064291, 1683617136942, 'huazuokecheng', '水彩画教学', 'upload/1683617261423.jpeg', '1', '水彩画', NULL);
INSERT INTO `storeup` VALUES (1683617992067, '2023-05-09 15:39:51', 1683617064291, 1683617499181, 'huihuafenxiang', '梦幻鹿', 'upload/1683617468729.jpeg', '41', NULL, NULL);
INSERT INTO `storeup` VALUES (1683617999657, '2023-05-09 15:39:59', 1683617064291, 1683617542680, 'huihuafenxiang', '山崖上的鹿', 'upload/1683617509487.jpg', '41', NULL, NULL);
INSERT INTO `storeup` VALUES (1683618003974, '2023-05-09 15:40:03', 1683617064291, 1683617451118, 'huihuafenxiang', '草莓', 'upload/1683617432506.jpeg', '41', NULL, NULL);
INSERT INTO `storeup` VALUES (1683618015202, '2023-05-09 15:40:15', 1683617064291, 1681607750133, 'zhishikepu', '哺乳类动物', 'upload/1681607729108.jpeg', '1', '哺乳类动物', NULL);
INSERT INTO `storeup` VALUES (1687078955902, '2023-06-18 17:02:35', 1683617064291, 1681609692699, 'huazuokecheng', '想象画教学', 'upload/1681609688520.jpeg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (1693276543490, '2023-08-29 10:35:43', 1683617064291, 1693276511834, 'huazuokecheng', '水彩', 'upload/1693276506214.jpeg', '21', NULL, NULL);

-- ----------------------------
-- Table structure for systemintro
-- ----------------------------
DROP TABLE IF EXISTS `systemintro`;
CREATE TABLE `systemintro`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of systemintro
-- ----------------------------
INSERT INTO `systemintro` VALUES (1, '2023-03-25 16:25:12', '系统简介', 'SYSTEM INTRODUCTION', '当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。', 'upload/systemintro_picture1.jpg', 'upload/systemintro_picture2.jpg', 'upload/systemintro_picture3.jpg');

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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1679754343965, '111', 'xuesheng', '学生', 'zweds7oq70ngrkwlejb26lri9u9k2u1x', '2023-06-18 16:51:20', '2023-03-25 23:34:38');
INSERT INTO `token` VALUES (2, 1, 'admin', 'users', '管理员', 'iqq0l8uz7fe2du7g9o3ti9rkylj5s0fk', '2023-06-18 16:51:20', '2023-08-29 11:35:57');
INSERT INTO `token` VALUES (3, 1679754954227, '1942151319', 'xuesheng', '学生', 'vip9ow0i5f1tk2u9phk6v2r7gle0fsxf', '2023-06-18 16:51:20', '2023-03-28 10:05:32');
INSERT INTO `token` VALUES (4, 28, 'teacher', 'jiaoshi', '教师', 'obj4ms7vl9se43515u8ek74xi6wl1lj6', '2023-06-18 16:51:20', '2023-05-09 16:14:59');
INSERT INTO `token` VALUES (5, 1679799296263, '111', 'xuesheng', '学生', 'vjyirmrbbescheg3hchx0xbhor7tkpcz', '2023-06-18 16:51:20', '2023-03-26 11:55:04');
INSERT INTO `token` VALUES (7, 1679965622758, 'stu', 'xuesheng', '学生', 'fldhn4cv4g4bj6bvm5zr8icod6ghy9rs', '2023-06-18 16:51:20', '2023-05-09 16:13:52');
INSERT INTO `token` VALUES (9, 1681561028061, 'teacher', 'xuesheng', '学生', '2dmr46lhdd7315ujl4g5lnqjrldrhmf4', '2023-06-18 16:51:20', '2023-04-15 21:18:17');
INSERT INTO `token` VALUES (10, 26, '202302', 'jiaoshi', '教师', '3ak16mrf10wy2udzcg7w4wqzndo8cgv4', '2023-06-18 16:51:20', '2023-04-16 10:45:45');
INSERT INTO `token` VALUES (11, 25, '202303', 'jiaoshi', '教师', 'bgikxjaq6cbipy302nofbz1do4n5aswd', '2023-06-18 16:51:20', '2023-04-16 10:47:29');
INSERT INTO `token` VALUES (12, 24, '202304', 'jiaoshi', '教师', '1k02halm6lqxobj798d7pjyppsnjxkph', '2023-06-18 16:51:20', '2023-04-16 10:49:39');
INSERT INTO `token` VALUES (13, 23, '202305', 'jiaoshi', '教师', '0rj21witmna5915w7ogxavkdly7k47gp', '2023-06-18 16:51:20', '2023-04-16 10:51:24');
INSERT INTO `token` VALUES (14, 22, '202306', 'jiaoshi', '教师', 'zv492y4sv1gdn1tqlpsjhkppw8ner55f', '2023-06-18 16:51:20', '2023-04-16 10:52:37');
INSERT INTO `token` VALUES (15, 17, 'jack', 'xuesheng', '学生', '74hnomd23az7y0nejsai7hydrle0pedl', '2023-06-18 16:51:20', '2023-04-16 11:11:17');
INSERT INTO `token` VALUES (16, 16, 'king', 'xuesheng', '学生', '2e1c3362850qsfntztzaru3u6kmkovvm', '2023-06-18 16:51:20', '2023-04-16 11:13:36');
INSERT INTO `token` VALUES (17, 15, 'milan', 'xuesheng', '学生', 'duhmnqbegy0xduk6a6fbb5izayi2ugqb', '2023-06-18 16:51:20', '2023-04-16 11:15:45');
INSERT INTO `token` VALUES (18, 14, 'amy', 'xuesheng', '学生', '34hvdotr6rewg4nrgww2mdsqc8crdrn7', '2023-06-18 16:51:20', '2023-04-16 11:17:08');
INSERT INTO `token` VALUES (19, 1681626579105, 'tony', 'xuesheng', '学生', '4jniawqjnw5bm78xro05m3n68x3h70j1', '2023-06-18 16:51:20', '2023-05-09 16:14:32');
INSERT INTO `token` VALUES (20, 1681708535139, 'hey', 'xuesheng', '学生', 'vx8v4tjcmpw1gjmynj70qkm2vvfbel3v', '2023-06-18 16:51:20', '2023-04-17 14:17:40');
INSERT INTO `token` VALUES (21, 1683617013333, 't001', 'jiaoshi', '教师', 'ari06ja7g1bwxn12akpncsea5niom28n', '2023-06-18 16:51:20', '2023-08-29 11:33:52');
INSERT INTO `token` VALUES (22, 1683617064291, '202301', 'xuesheng', '学生', 'lhfqsrke3yd96odid9ib3ffgdufh0dhh', '2023-06-18 16:51:20', '2023-08-29 11:35:30');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2023-03-25 16:25:12');

-- ----------------------------
-- Table structure for wenzhangleixing
-- ----------------------------
DROP TABLE IF EXISTS `wenzhangleixing`;
CREATE TABLE `wenzhangleixing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1681608482171 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wenzhangleixing
-- ----------------------------
INSERT INTO `wenzhangleixing` VALUES (111, '2023-03-25 16:25:12', '哺乳类动物');
INSERT INTO `wenzhangleixing` VALUES (112, '2023-03-25 16:25:12', '植物');
INSERT INTO `wenzhangleixing` VALUES (113, '2023-03-25 16:25:12', '鱼类');
INSERT INTO `wenzhangleixing` VALUES (114, '2023-03-25 16:25:12', '太空');
INSERT INTO `wenzhangleixing` VALUES (115, '2023-03-25 16:25:12', '昆虫');
INSERT INTO `wenzhangleixing` VALUES (118, '2023-03-25 16:25:12', '水果');
INSERT INTO `wenzhangleixing` VALUES (1681608468619, '2023-04-16 09:27:48', '猫');
INSERT INTO `wenzhangleixing` VALUES (1681608482170, '2023-04-16 09:28:02', '狗');

-- ----------------------------
-- Table structure for xuesheng
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `xueshengshouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生手机',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xuehao`(`xuehao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1683617064292 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES (14, '2023-03-25 16:25:12', '202307', '123456', 'amy', '女', 'upload/xuesheng_touxiang4.jpg', '13823888884');
INSERT INTO `xuesheng` VALUES (15, '2023-03-25 16:25:12', '202306', '123456', 'milan', '女', 'upload/xuesheng_touxiang5.jpg', '13823888885');
INSERT INTO `xuesheng` VALUES (16, '2023-03-25 16:25:12', '202305', '123456', 'king', '男', 'upload/xuesheng_touxiang6.jpg', '13823888886');
INSERT INTO `xuesheng` VALUES (17, '2023-03-25 16:25:12', '202304', '123456', 'jack', '男', 'upload/xuesheng_touxiang7.jpg', '13823888887');
INSERT INTO `xuesheng` VALUES (18, '2023-03-25 16:25:12', '202303', '123456', 'mary', '女', 'upload/xuesheng_touxiang8.jpg', '13823888888');
INSERT INTO `xuesheng` VALUES (1681626579105, '2023-04-16 14:29:39', '202302', '123456', 'tony', '男', 'upload/1681626570933.jpeg', '12345678911');
INSERT INTO `xuesheng` VALUES (1683617064291, '2023-05-09 15:24:24', '202301', '123456', '刘明明', '男', 'upload/1683617046654.jpg', '17855065897');

-- ----------------------------
-- Table structure for xueshenghuazuo
-- ----------------------------
DROP TABLE IF EXISTS `xueshenghuazuo`;
CREATE TABLE `xueshenghuazuo`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huihuamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '绘画名称',
  `fengmiantupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '封面图片',
  `fabushijian` date NULL DEFAULT NULL COMMENT '发布时间',
  `huihualeixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '绘画类型',
  `xiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `xueshengshouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生手机',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1683617416751 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生画作' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xueshenghuazuo
-- ----------------------------
INSERT INTO `xueshenghuazuo` VALUES (1681608936033, '2023-04-16 09:35:35', '花', 'upload/1681608898503.jpg', '2023-04-16', '水彩画', '<p>花朵与蝴蝶</p>', '202303', 'mary', '13823888888');
INSERT INTO `xueshenghuazuo` VALUES (1681610105419, '2023-04-16 09:55:05', '熊猫', 'upload/1681610082969.jpeg', '2023-04-16', '简笔画', '<p>熊猫简笔画</p>', '202303', 'mary', '13823888888');
INSERT INTO `xueshenghuazuo` VALUES (1681610210239, '2023-04-16 09:56:50', '花', 'upload/1681610187054.jpeg', '2023-04-16', '油画', '<p>油画画</p>', '202304', 'jack', '13823888887');
INSERT INTO `xueshenghuazuo` VALUES (1681610336910, '2023-04-16 09:58:56', '山水画', 'upload/1681610287152.jpeg', '2023-04-16', '水墨画', '<p>山水水墨画</p>', '202305', 'king', '13823888886');
INSERT INTO `xueshenghuazuo` VALUES (1681610445088, '2023-04-16 10:00:44', '命题花', 'upload/1681610412356.jpg', '2023-04-16', '命题画', '<p>命题画绘画</p>', '202306', 'milan', '13823888885');
INSERT INTO `xueshenghuazuo` VALUES (1681610574520, '2023-04-16 10:02:53', '猫', 'upload/1681610540369.jpg', '2023-04-16', '故事画', '<p>故事画</p>', '202307', 'amy', '13823888884');
INSERT INTO `xueshenghuazuo` VALUES (1683617343674, '2023-05-09 15:29:02', '草莓', 'upload/1683617324150.jpeg', '2023-04-12', '油画', '', '202301', '刘明明', '17855065897');
INSERT INTO `xueshenghuazuo` VALUES (1683617377592, '2023-05-09 15:29:36', '熊猫', 'upload/1683617356378.jpg', '2023-05-09', '水墨画', '<p>大熊猫</p>', '202301', '刘明明', '17855065897');
INSERT INTO `xueshenghuazuo` VALUES (1683617416750, '2023-05-09 15:30:16', '鹿', 'upload/1683617385605.jpeg', '2023-04-28', '想象画', '<p>蓝色梦幻鹿</p>', '202301', '刘明明', '17855065897');

-- ----------------------------
-- Table structure for xuexijindu
-- ----------------------------
DROP TABLE IF EXISTS `xuexijindu`;
CREATE TABLE `xuexijindu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `huihualeixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '绘画类型',
  `jiaoshigonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `bijishijian` datetime NULL DEFAULT NULL COMMENT '笔记时间',
  `bijineirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '笔记内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1687078960940 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学习进度' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuexijindu
-- ----------------------------
INSERT INTO `xuexijindu` VALUES (1681611239566, '2023-04-16 10:13:59', '简笔画教学', '简笔画', 't003', '李敏', '202305', 'king', '2023-04-16 10:13:47', '<p>简笔熊猫</p>');
INSERT INTO `xuexijindu` VALUES (1681611363586, '2023-04-16 10:16:02', '想象画教学', '想象画', 't004', '张明', '202306', 'milan', '2023-04-16 10:15:54', '<p>兔子</p>');
INSERT INTO `xuexijindu` VALUES (1681611492435, '2023-04-16 10:18:12', '水墨画教学', '水墨画', 't006', '钱灵', '202307', 'amy', '2023-04-16 10:17:50', '<p>水墨画</p>');
INSERT INTO `xuexijindu` VALUES (1683617772462, '2023-05-09 15:36:11', '想象画教学', '想象画', 't001', '刘天', '202301', '刘明明', '2023-05-09 15:35:59', '<p>好详细呀！！！</p>');
INSERT INTO `xuexijindu` VALUES (1683617813293, '2023-05-09 15:36:52', '想象画教学', '想象画', 't001', '刘天', '202301', '刘明明', '2023-05-09 15:36:45', '<p>好</p>');
INSERT INTO `xuexijindu` VALUES (1683617851617, '2023-05-09 15:37:31', '水彩画教学', '水彩画', 't001', '刘天', '202301', '刘明明', '2023-05-09 15:37:24', '<p>详细！！！</p>');
INSERT INTO `xuexijindu` VALUES (1683617899187, '2023-05-09 15:38:18', '水彩画教学', '水彩画', 't001', '刘天', '202301', '刘明明', '2023-05-09 15:37:59', '<p>棒棒棒</p>');
INSERT INTO `xuexijindu` VALUES (1687078960939, '2023-06-18 17:02:40', '想象画教学', '想象画', 't004', '张明', '202301', '刘明明', '2023-06-18 17:02:36', '<p>111</p>');

-- ----------------------------
-- Table structure for zhishikepu
-- ----------------------------
DROP TABLE IF EXISTS `zhishikepu`;
CREATE TABLE `zhishikepu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `tupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `wenzhangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章类型',
  `kepuneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科普内容',
  `faburiqi` datetime NULL DEFAULT NULL COMMENT '发布日期',
  `faburen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1681608737780 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '知识科普' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zhishikepu
-- ----------------------------
INSERT INTO `zhishikepu` VALUES (1681607750133, '2023-04-16 09:15:49', '哺乳类动物', 'upload/1681607729108.jpeg', '哺乳类动物', '<p>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">哺乳动物是动物世界中</span>	<a href=\"https://baike.baidu.com/item/%E5%BD%A2%E6%80%81%E7%BB%93%E6%9E%84/22803399?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">形态结构</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">最高等、生理</span>	<a href=\"https://baike.baidu.com/item/%E6%9C%BA%E8%83%BD/719076?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">机能</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">最完善的动物。与其他动物相比，哺乳动物最突出的特征在于</span>	<a href=\"https://baike.baidu.com/item/%E8%83%8E%E7%94%9F/567883?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">胎生</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">以及其幼崽由母体分泌的乳汁喂养长大。所有哺乳动物都长有毛发，以保持体温的恒定，适应各种复杂的生存环境；哺乳动物具有比较发达的大脑，因而能产生比其他动物更为复杂的行为，并能不断地改变自己的行为，以适应外界环境的变化。</span></p>', '2023-04-16 09:15:04', '管理员');
INSERT INTO `zhishikepu` VALUES (1681607912582, '2023-04-16 09:18:32', '植物', 'upload/1681607893421.jpg', '植物', '<p>	观赏植物，专门培植来供观赏的植物，一般都有美丽的花或形态比较奇异，中国的观赏植物资源非常丰富，被誉为“世界园林之母”。</p><p>	仅<a href=\"https://baike.baidu.com/item/%E9%AB%98%E7%AD%89%E6%A4%8D%E7%89%A9/711497?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">高等植物</a>就有3万多种、木本植物有7000多种，还有在世界上只有中国特有的许多珍贵植物，<a href=\"https://baike.baidu.com/item/%E9%93%B6%E6%9D%89/362916?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">银杉</a>、<a href=\"https://baike.baidu.com/item/%E9%93%B6%E6%9D%8F/229130?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">银杏</a>、金钱松、珙桐等等。</p>', '2023-04-16 09:16:30', '管理员');
INSERT INTO `zhishikepu` VALUES (1681608011522, '2023-04-16 09:20:11', '鱼', 'upload/1681607998419.jpg', '鱼类', '<p>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">鱼类，是最古老的</span>	<a href=\"https://baike.baidu.com/item/%E8%84%8A%E6%A4%8E%E5%8A%A8%E7%89%A9/339363?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">脊椎动物</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">。部分不同</span>	<a href=\"https://baike.baidu.com/item/%E6%9F%93%E8%89%B2%E4%BD%93?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">染色体</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">数目的杂交的后代依然有</span>	<a href=\"https://baike.baidu.com/item/%E7%94%9F%E8%82%B2?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">生育</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">能力。它们几乎</span>	<a href=\"https://baike.baidu.com/item/%E6%A0%96%E5%B1%85/8088416?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">栖居</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">于地球上所有的水生环境，从淡水的湖泊、河流到咸水的大海和大洋。鱼类分为两个总纲：无颌总纲及有颌总纲，无颌总纲包括</span>	<a href=\"https://baike.baidu.com/item/%E5%9C%86%E5%8F%A3%E7%BA%B2/2748924?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">圆口纲</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">、</span>	<a href=\"https://baike.baidu.com/item/%E7%94%B2%E8%83%84%E9%B1%BC%E7%BA%B2/6574014?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">甲胄鱼纲</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">，有颌总纲包括</span>	<a href=\"https://baike.baidu.com/item/%E7%9B%BE%E7%9A%AE%E9%B1%BC%E7%BA%B2/7309594?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">盾皮鱼纲</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">、</span>	<a href=\"https://baike.baidu.com/item/%E8%BD%AF%E9%AA%A8%E9%B1%BC%E7%BA%B2/564683?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">软骨鱼纲</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">、</span>	<a href=\"https://baike.baidu.com/item/%E8%BE%90%E9%B3%8D%E9%B1%BC%E7%BA%B2/2520993?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">辐鳍鱼纲</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">，大多数鱼类是终年生活在水中，用</span>	<a href=\"https://baike.baidu.com/item/%E9%B3%83%E5%91%BC%E5%90%B8/4025045?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">鳃呼吸</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">，用</span>	<a href=\"https://baike.baidu.com/item/%E9%B3%8D/1195972?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">鳍</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">辅助身体平衡与</span>	<a href=\"https://baike.baidu.com/item/%E8%BF%90?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">运</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">动的变温</span>	<a href=\"https://baike.baidu.com/item/%E8%84%8A%E6%A4%8E%E5%8A%A8%E7%89%A9/339363?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">脊椎动物</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">，也有像</span>	<a href=\"https://baike.baidu.com/item/%E9%9D%9E%E6%B4%B2%E8%82%BA%E9%B1%BC/4496622?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">非洲肺鱼</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">、</span>	<a href=\"https://baike.baidu.com/item/%E5%BC%B9%E6%B6%82%E9%B1%BC/463644?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">弹涂鱼</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">、</span>	<a href=\"https://baike.baidu.com/item/%E6%94%80%E9%B2%88/863920?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">攀鲈</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">能在陆地上长时间生存，以及</span>	<a href=\"https://baike.baidu.com/item/%E9%BB%91%E9%B1%BC/1659292?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">黑鱼</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">、</span>	<a href=\"https://baike.baidu.com/item/%E9%BB%84%E9%B3%9D/469424?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">黄鳝</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">、</span>	<a href=\"https://baike.baidu.com/item/%E9%9B%80%E9%B3%9D/651108?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">雀鳝</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">靠单鳔呼吸，虽然大多数鱼类是</span>	<a href=\"https://baike.baidu.com/item/%E5%86%B7%E8%A1%80%E5%8A%A8%E7%89%A9/79564?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">冷血动物</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">，但很多</span>	<a href=\"https://baike.baidu.com/item/%E9%B2%A8%E9%B1%BC/40174?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">鲨鱼</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">和</span>	<a href=\"https://baike.baidu.com/item/%E9%87%91%E6%9E%AA%E9%B1%BC/272467?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">金枪鱼</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">是半恒温的，</span>	<a href=\"https://baike.baidu.com/item/%E6%9C%88%E4%BA%AE%E9%B1%BC/3317930?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">月亮鱼</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">则是恒温的。全球现生种鱼类共有36000多种，占已命名脊椎动物大半，且新种鱼类不断被发现，平均每年以约150种计，十多年应已增加超过1500。</span></p>', '2023-04-16 09:18:36', '管理员');
INSERT INTO `zhishikepu` VALUES (1681608064706, '2023-04-16 09:21:03', '宇宙', 'upload/1681608053541.jpg', '太空', '<p>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">哲学所指宇宙，即所有的空间、时间、物质等及其所产生的一切事物的统称，是物质的整体，是物理学和天文学的最大研究对象，哲学上又叫世界。</span></p>', '2023-04-16 09:20:15', '管理员');
INSERT INTO `zhishikepu` VALUES (1681608188240, '2023-04-16 09:23:07', '虫类', 'upload/1681608170562.jpg', '昆虫', '<p>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">昆虫种类繁多、形态各异，属于</span>	<a href=\"https://baike.baidu.com/item/%E6%97%A0%E8%84%8A%E6%A4%8E%E5%8A%A8%E7%89%A9/149803?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">无脊椎动物</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">中的</span>	<a href=\"https://baike.baidu.com/item/%E8%8A%82%E8%82%A2%E5%8A%A8%E7%89%A9/417366?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">节肢动物</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">，是地球上数量最多的动物群体，在所有生物种类（包括细菌、真菌、病毒）中占了超过50%，它们的踪迹几乎遍布世界的每一个角落。</span></p>', '2023-04-16 09:21:08', '管理员');
INSERT INTO `zhishikepu` VALUES (1681608376205, '2023-04-16 09:26:15', '水果', 'upload/1681608360277.png', '水果', '<p>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">水果，是指多汁且主要味觉为</span>	<a href=\"https://baike.baidu.com/item/%E7%94%9C%E5%91%B3/9675531?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">甜味</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">和酸味，可食用的植物</span>	<a href=\"https://baike.baidu.com/item/%E6%9E%9C%E5%AE%9E?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">果实</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">。水果不但含有丰富的维生素</span>	<a href=\"https://baike.baidu.com/item/%E8%90%A5%E5%85%BB/2260162?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">营养</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">，而且能够促进</span>	<a href=\"https://baike.baidu.com/item/%E6%B6%88%E5%8C%96/403663?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">消化</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">。</span></p>', '2023-04-16 09:23:11', '管理员');
INSERT INTO `zhishikepu` VALUES (1681608592438, '2023-04-16 09:29:51', '狗类', 'upload/1681608675745.jpg', '狗', '<p>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">狗（拉丁文Canis lupus familiaris）属于</span>	<a href=\"https://baike.baidu.com/item/%E8%84%8A%E7%B4%A2%E5%8A%A8%E7%89%A9%E9%97%A8/3516708?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">脊索动物门</a>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">、脊椎动物亚门、</span>	<a href=\"https://baike.baidu.com/item/%E5%93%BA%E4%B9%B3%E7%BA%B2/525725?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">哺乳纲</a>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">、真兽亚纲、</span>	<a href=\"https://baike.baidu.com/item/%E9%A3%9F%E8%82%89%E7%9B%AE/1469691?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">食肉目</a>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">、裂脚亚目、犬科动物。中文亦称“犬”，狗分布于世界各地。狗与</span>	<a href=\"https://baike.baidu.com/item/%E9%A9%AC/7204564?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">马</a>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">、牛、</span>	<a href=\"https://baike.baidu.com/item/%E7%BE%8A?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">羊</a>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">、</span>	<a href=\"https://baike.baidu.com/item/%E7%8C%AA/147315?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">猪</a>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">、</span>	<a href=\"https://baike.baidu.com/item/%E9%B8%A1/416172?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">鸡</a>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">并称传统“</span>	<a href=\"https://baike.baidu.com/item/%E5%85%AD%E7%95%9C/721559?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">六畜</a>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">”</span>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">。</span>	<span style=\"color: rgb(51, 102, 204); background-color: rgb(255, 255, 255);\">&nbsp;[12]</span>	<span style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">&nbsp;</span>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">&nbsp;有科学家认为狗是由早期人类从</span>	<a href=\"https://baike.baidu.com/item/%E7%81%B0%E7%8B%BC/9780069?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">灰狼</a>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">驯化而来，驯养时间在4万年前~1.5万年前。被称为“人类最忠实的朋友”，是饲养率最高的宠物，其寿命大约在12~18年</span>	<span style=\"color: rgb(51, 102, 204); background-color: rgb(255, 255, 255);\">&nbsp;[1]</span>	<span style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">&nbsp;</span>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">&nbsp;。在中国文化中，狗属于</span>	<a href=\"https://baike.baidu.com/item/%E5%8D%81%E4%BA%8C%E7%94%9F%E8%82%96/48593?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">十二生肖</a>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">之一，在</span>	<a href=\"https://baike.baidu.com/item/%E5%8D%81%E4%BA%8C%E7%94%9F%E8%82%96/48593?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194); background-color: rgb(255, 255, 255);\">十二生肖</a>	<span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">中的第11位。</span></p>', '2023-04-16 09:28:58', '管理员');
INSERT INTO `zhishikepu` VALUES (1681608737779, '2023-04-16 09:32:17', '猫类', 'upload/1681608725777.jpg', '猫', '<p>	猫，属于<a href=\"https://baike.baidu.com/item/%E7%8C%AB%E7%A7%91%E5%8A%A8%E7%89%A9/71877?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">猫科动物</a>，是全世界家庭中较为广泛的<a href=\"https://baike.baidu.com/item/%E5%AE%A0%E7%89%A9/229020?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">宠物</a>。家猫的祖先据推测是<a href=\"https://baike.baidu.com/item/%E5%8F%A4%E5%9F%83%E5%8F%8A/226771?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">古埃及</a>时期的<a href=\"https://baike.baidu.com/item/%E6%B2%99%E6%BC%A0%E7%8C%AB/8437421?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">沙漠猫</a>，波斯的<a href=\"https://baike.baidu.com/item/%E6%B3%A2%E6%96%AF%E7%8C%AB/585?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">波斯猫</a>，已经被人类驯化了3500年（但未像狗一样完全地被驯化）<span style=\"color: rgb(51, 102, 204);\">&nbsp;[5]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;。</p><p>	一般的猫：头圆、颜面部短，前肢五趾，后肢四趾，趾端具锐利而弯曲的爪，爪能伸缩，具有夜视性。</p>', '2023-04-16 09:31:35', '管理员');

SET FOREIGN_KEY_CHECKS = 1;
