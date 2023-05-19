/*
 Navicat Premium Data Transfer

 Source Server         : mysql_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : ys_community

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 19/05/2023 21:20:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for concern
-- ----------------------------
DROP TABLE IF EXISTS `concern`;
CREATE TABLE `concern`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NULL DEFAULT NULL,
  `concernUserId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of concern
-- ----------------------------
INSERT INTO `concern` VALUES (1, 1, 1);
INSERT INTO `concern` VALUES (2, 1, 1);
INSERT INTO `concern` VALUES (3, 1, 3);
INSERT INTO `concern` VALUES (4, 2, 1);

-- ----------------------------
-- Table structure for follows
-- ----------------------------
DROP TABLE IF EXISTS `follows`;
CREATE TABLE `follows`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `postId` int NULL DEFAULT NULL,
  `toUserId` int NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `releaseTime` datetime NULL DEFAULT NULL,
  `likes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `disLikes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follows
-- ----------------------------
INSERT INTO `follows` VALUES (1, 1, 1, '测试交互内容', '2023-05-17 22:35:19', '20', '12', 1);
INSERT INTO `follows` VALUES (2, 1, 2, '测试交互内容', '2023-05-18 22:53:14', '11', '10', 1);
INSERT INTO `follows` VALUES (3, 1, 3, '测试交互内容', '2023-05-18 22:53:37', '11', '22', 1);
INSERT INTO `follows` VALUES (4, 1, 1, '测试交互内容1', '2023-05-18 22:54:04', '10', '22', 2);
INSERT INTO `follows` VALUES (5, 1, 2, '1212', '2023-05-19 08:37:56', '0', '0', 1);
INSERT INTO `follows` VALUES (6, 1, 1, '测试评论', '2023-05-19 08:38:54', '0', '0', 1);
INSERT INTO `follows` VALUES (7, 2, 2, '测试评论', '2023-05-19 08:41:01', '0', '0', 1);
INSERT INTO `follows` VALUES (8, 2, 2, '测试1', '2023-05-19 08:41:18', '0', '0', 1);
INSERT INTO `follows` VALUES (9, 2, 1, '1212312', '2023-05-19 08:46:08', '0', '0', 1);

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `releaseTime` datetime NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '1 原神 2 崩三',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Json格式的Tags数组',
  `views` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `likes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1001 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, '「携友山间行」——微信游戏×原神 趣味分享活动现已上线', '2023-05-17 20:52:22', '1', NULL, '12', '20', '[图片]亲爱的旅行者，「携友山间行」——微信游戏×原神 趣味分享活动现已上线~点击【网页链接】即可参', '原神2.jpg', 1);
INSERT INTO `posts` VALUES (2, '官方\r\n《原神》联动主题表情包「派蒙的画作科颜氏联动篇」现已上线', '2023-05-17 21:10:23', '2', NULL, '29', '39', '[图片]旅行者们好~「派蒙的画作科颜氏联动篇」表情包已经上架米游社啦！欢迎旅行者们使用~[图片', '铁道2.jpg', 1);
INSERT INTO `posts` VALUES (3, '官方\r\n《原神》联动主题表情包「派蒙的画作科颜氏联动篇」现已上线', '2023-05-17 23:06:13', '3', NULL, '22', '11', '派蒙的画作科颜氏联动篇」表情包已经上架米游社啦！欢迎旅行者们使用~[图片', '铁道2.jpg', 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `loginTime` datetime NULL DEFAULT NULL,
  `createTime` datetime NULL DEFAULT NULL,
  `truthName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1001 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'leeyun', '123456', '都是风景，幸会', '20', '2019-07-01 11:27:52', '2003-03-09 23:38:05', '李云', NULL);
INSERT INTO `user` VALUES (2, 'cumulus', '123456', '什么是人，欲望满身。', '10', '2016-01-22 23:43:54', '2016-12-11 08:04:23', '李明', NULL);
INSERT INTO `user` VALUES (3, 'duchanyuan', '123456', '永远温柔，与世无仇。', '3', '2009-04-02 05:40:25', '2012-07-14 09:52:42', '杜禅元', NULL);
INSERT INTO `user` VALUES (4, 'dujuan', '123456', '山行野宿，孤身万里。', '2', '2002-02-25 07:32:29', '2015-04-20 03:44:20', '杜鹃', NULL);
INSERT INTO `user` VALUES (5, 'xiaoyu', '123456', '没有期待的日子反而顺顺利利。', '1', '2016-09-06 22:11:00', '2003-04-19 06:25:20', '小玉', NULL);
INSERT INTO `user` VALUES (6, 'leemulus', '123456', '吹不出褶的平静日子也在闪光。', '100', '2011-03-21 20:17:28', '2006-06-24 10:21:44', '李云', NULL);
INSERT INTO `user` VALUES (7, 'heydoa', '123456', '撒娇是察觉到了被偏爱的可能。', '53', '2017-10-28 09:23:51', '2022-08-29 15:10:50', '娟', NULL);
INSERT INTO `user` VALUES (8, 'nodl', '123456', '我们长棱角，因为要变成星星。', '22', '2017-03-14 19:36:40', '2014-09-20 03:28:13', '测试', NULL);
INSERT INTO `user` VALUES (9, 'lemontree', '123456', '慢慢体会我的极端与浪漫吧。', '44', '2015-07-13 09:33:00', '2006-02-01 21:54:05', '柠檬', NULL);
INSERT INTO `user` VALUES (10, 'Xue Lu', '123456', '老子死也要活着。', '52', '2002-03-19 23:21:52', '2004-11-03 21:17:37', '李玉', NULL);

SET FOREIGN_KEY_CHECKS = 1;
