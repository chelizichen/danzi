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

 Date: 26/05/2023 21:47:24
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 310 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follows
-- ----------------------------
INSERT INTO `follows` VALUES (2, 1, 2, '测试交互内容', '2023-05-18 22:53:14', '11', '10', 1);
INSERT INTO `follows` VALUES (3, 1, 3, '测试交互内容', '2023-05-18 22:53:37', '11', '22', 1);
INSERT INTO `follows` VALUES (4, 1, 1, '测试交互内容1', '2023-05-18 22:54:04', '10', '22', 2);
INSERT INTO `follows` VALUES (5, 1, 2, '1212', '2023-05-19 08:37:56', '0', '0', 1);
INSERT INTO `follows` VALUES (6, 1, 1, '测试评论', '2023-05-19 08:38:54', '0', '0', 1);
INSERT INTO `follows` VALUES (7, 2, 2, '测试评论', '2023-05-19 08:41:01', '0', '0', 1);
INSERT INTO `follows` VALUES (8, 2, 2, '测试1', '2023-05-19 08:41:18', '0', '0', 1);
INSERT INTO `follows` VALUES (10, 1, 1, '测试内容', '2023-05-25 08:41:27', '0', '0', 2);
INSERT INTO `follows` VALUES (11, 1, 1, '测试内容', '2023-05-25 08:41:28', '0', '0', 2);
INSERT INTO `follows` VALUES (12, 1, 1, '测试内容', '2023-05-25 08:41:28', '0', '0', 2);
INSERT INTO `follows` VALUES (13, 1, 1, '测试内容', '2023-05-25 08:41:28', '0', '0', 2);
INSERT INTO `follows` VALUES (14, 1, 1, '测试内容', '2023-05-25 08:41:28', '0', '0', 2);
INSERT INTO `follows` VALUES (15, 1, 1, '测试内容', '2023-05-25 08:41:28', '0', '0', 2);
INSERT INTO `follows` VALUES (16, 1, 1, '测试内容', '2023-05-25 08:41:28', '0', '0', 2);
INSERT INTO `follows` VALUES (17, 1, 1, '测试内容', '2023-05-25 08:41:28', '0', '0', 2);
INSERT INTO `follows` VALUES (18, 1, 1, '测试内容', '2023-05-25 08:41:28', '0', '0', 2);
INSERT INTO `follows` VALUES (19, 1, 1, '测试内容', '2023-05-25 08:41:29', '0', '0', 2);
INSERT INTO `follows` VALUES (20, 1, 1, '测试内容', '2023-05-25 08:41:29', '0', '0', 2);
INSERT INTO `follows` VALUES (21, 1, 1, '测试内容', '2023-05-25 08:41:29', '0', '0', 2);
INSERT INTO `follows` VALUES (22, 1, 1, '测试内容', '2023-05-25 08:41:29', '0', '0', 2);
INSERT INTO `follows` VALUES (23, 1, 1, '测试内容', '2023-05-25 08:41:29', '0', '0', 2);
INSERT INTO `follows` VALUES (24, 1, 1, '测试内容', '2023-05-25 08:41:29', '0', '0', 2);
INSERT INTO `follows` VALUES (25, 1, 1, '测试内容', '2023-05-25 08:41:29', '0', '0', 2);
INSERT INTO `follows` VALUES (26, 1, 1, '测试内容', '2023-05-25 08:41:29', '0', '0', 2);
INSERT INTO `follows` VALUES (27, 1, 1, '测试内容', '2023-05-25 08:41:30', '0', '0', 2);
INSERT INTO `follows` VALUES (28, 1, 1, '测试内容', '2023-05-25 08:41:30', '0', '0', 2);
INSERT INTO `follows` VALUES (29, 1, 1, '测试内容', '2023-05-25 08:41:30', '0', '0', 2);
INSERT INTO `follows` VALUES (30, 1, 1, '测试内容', '2023-05-25 08:41:30', '0', '0', 2);
INSERT INTO `follows` VALUES (31, 1, 1, '测试内容', '2023-05-25 08:41:30', '0', '0', 2);
INSERT INTO `follows` VALUES (32, 1, 1, '测试内容', '2023-05-25 08:41:30', '0', '0', 2);
INSERT INTO `follows` VALUES (33, 1, 1, '测试内容', '2023-05-25 08:41:30', '0', '0', 2);
INSERT INTO `follows` VALUES (34, 1, 1, '测试内容', '2023-05-25 08:41:31', '0', '0', 2);
INSERT INTO `follows` VALUES (35, 1, 1, '测试内容', '2023-05-25 08:41:31', '0', '0', 2);
INSERT INTO `follows` VALUES (36, 1, 1, '测试内容', '2023-05-25 08:41:31', '0', '0', 2);
INSERT INTO `follows` VALUES (37, 1, 1, '测试内容', '2023-05-25 08:41:31', '0', '0', 2);
INSERT INTO `follows` VALUES (38, 1, 1, '测试内容', '2023-05-25 08:41:31', '0', '0', 2);
INSERT INTO `follows` VALUES (39, 1, 1, '测试内容', '2023-05-25 08:41:31', '0', '0', 2);
INSERT INTO `follows` VALUES (40, 1, 1, '测试内容', '2023-05-25 08:41:31', '0', '0', 2);
INSERT INTO `follows` VALUES (41, 1, 1, '测试内容', '2023-05-25 08:41:31', '0', '0', 2);
INSERT INTO `follows` VALUES (42, 1, 1, '测试内容', '2023-05-25 08:41:32', '0', '0', 2);
INSERT INTO `follows` VALUES (43, 1, 1, '测试内容', '2023-05-25 08:41:32', '0', '0', 2);
INSERT INTO `follows` VALUES (44, 1, 1, '测试内容', '2023-05-25 08:41:32', '0', '0', 2);
INSERT INTO `follows` VALUES (45, 1, 1, '测试内容', '2023-05-25 08:41:32', '0', '0', 2);
INSERT INTO `follows` VALUES (46, 1, 1, '测试内容', '2023-05-25 08:41:32', '0', '0', 2);
INSERT INTO `follows` VALUES (47, 1, 1, '测试内容', '2023-05-25 08:41:32', '0', '0', 2);
INSERT INTO `follows` VALUES (48, 1, 1, '测试内容', '2023-05-25 08:41:32', '0', '0', 2);
INSERT INTO `follows` VALUES (49, 1, 1, '测试内容', '2023-05-25 08:41:32', '0', '0', 2);
INSERT INTO `follows` VALUES (50, 1, 1, '测试内容', '2023-05-25 08:41:33', '0', '0', 2);
INSERT INTO `follows` VALUES (51, 1, 1, '测试内容', '2023-05-25 08:41:33', '0', '0', 2);
INSERT INTO `follows` VALUES (52, 1, 1, '测试内容', '2023-05-25 08:41:33', '0', '0', 2);
INSERT INTO `follows` VALUES (53, 1, 1, '测试内容', '2023-05-25 08:41:33', '0', '0', 2);
INSERT INTO `follows` VALUES (54, 1, 1, '测试内容', '2023-05-25 08:41:33', '0', '0', 2);
INSERT INTO `follows` VALUES (55, 1, 1, '测试内容', '2023-05-25 08:41:33', '0', '0', 2);
INSERT INTO `follows` VALUES (56, 1, 1, '测试内容', '2023-05-25 08:41:33', '0', '0', 2);
INSERT INTO `follows` VALUES (57, 1, 1, '测试内容', '2023-05-25 08:41:33', '0', '0', 2);
INSERT INTO `follows` VALUES (58, 1, 1, '测试内容', '2023-05-25 08:41:34', '0', '0', 2);
INSERT INTO `follows` VALUES (59, 1, 1, '测试内容', '2023-05-25 08:41:34', '0', '0', 2);
INSERT INTO `follows` VALUES (60, 1, 1, '测试内容', '2023-05-25 08:41:34', '0', '0', 2);
INSERT INTO `follows` VALUES (61, 1, 1, '测试内容', '2023-05-25 08:41:34', '0', '0', 2);
INSERT INTO `follows` VALUES (62, 1, 1, '测试内容', '2023-05-25 08:41:34', '0', '0', 2);
INSERT INTO `follows` VALUES (63, 1, 1, '测试内容', '2023-05-25 08:41:34', '0', '0', 2);
INSERT INTO `follows` VALUES (64, 1, 1, '测试内容', '2023-05-25 08:41:34', '0', '0', 2);
INSERT INTO `follows` VALUES (65, 1, 1, '测试内容', '2023-05-25 08:41:35', '0', '0', 2);
INSERT INTO `follows` VALUES (66, 1, 1, '测试内容', '2023-05-25 08:41:35', '0', '0', 2);
INSERT INTO `follows` VALUES (67, 1, 1, '测试内容', '2023-05-25 08:41:35', '0', '0', 2);
INSERT INTO `follows` VALUES (68, 1, 1, '测试内容', '2023-05-25 08:41:35', '0', '0', 2);
INSERT INTO `follows` VALUES (69, 1, 1, '测试内容', '2023-05-25 08:41:35', '0', '0', 2);
INSERT INTO `follows` VALUES (70, 1, 1, '测试内容', '2023-05-25 08:41:35', '0', '0', 2);
INSERT INTO `follows` VALUES (71, 1, 1, '测试内容', '2023-05-25 08:41:35', '0', '0', 2);
INSERT INTO `follows` VALUES (72, 1, 1, '测试内容', '2023-05-25 08:41:35', '0', '0', 2);
INSERT INTO `follows` VALUES (73, 1, 1, '测试内容', '2023-05-25 08:41:35', '0', '0', 2);
INSERT INTO `follows` VALUES (74, 1, 1, '测试内容', '2023-05-25 08:41:36', '0', '0', 2);
INSERT INTO `follows` VALUES (75, 1, 1, '测试内容', '2023-05-25 08:41:36', '0', '0', 2);
INSERT INTO `follows` VALUES (76, 1, 1, '测试内容', '2023-05-25 08:41:36', '0', '0', 2);
INSERT INTO `follows` VALUES (77, 1, 1, '测试内容', '2023-05-25 08:41:36', '0', '0', 2);
INSERT INTO `follows` VALUES (78, 1, 1, '测试内容', '2023-05-25 08:41:36', '0', '0', 2);
INSERT INTO `follows` VALUES (79, 1, 1, '测试内容', '2023-05-25 08:41:36', '0', '0', 2);
INSERT INTO `follows` VALUES (80, 1, 1, '测试内容', '2023-05-25 08:41:36', '0', '0', 2);
INSERT INTO `follows` VALUES (81, 1, 1, '测试内容', '2023-05-25 08:41:36', '0', '0', 2);
INSERT INTO `follows` VALUES (82, 1, 1, '测试内容', '2023-05-25 08:41:37', '0', '0', 2);
INSERT INTO `follows` VALUES (83, 1, 1, '测试内容', '2023-05-25 08:41:37', '0', '0', 2);
INSERT INTO `follows` VALUES (84, 1, 1, '测试内容', '2023-05-25 08:41:37', '0', '0', 2);
INSERT INTO `follows` VALUES (85, 1, 1, '测试内容', '2023-05-25 08:41:37', '0', '0', 2);
INSERT INTO `follows` VALUES (86, 1, 1, '测试内容', '2023-05-25 08:41:37', '0', '0', 2);
INSERT INTO `follows` VALUES (87, 1, 1, '测试内容', '2023-05-25 08:41:37', '0', '0', 2);
INSERT INTO `follows` VALUES (88, 1, 1, '测试内容', '2023-05-25 08:41:37', '0', '0', 2);
INSERT INTO `follows` VALUES (89, 1, 1, '测试内容', '2023-05-25 08:41:37', '0', '0', 2);
INSERT INTO `follows` VALUES (90, 1, 1, '测试内容', '2023-05-25 08:41:38', '0', '0', 2);
INSERT INTO `follows` VALUES (91, 1, 1, '测试内容', '2023-05-25 08:41:38', '0', '0', 2);
INSERT INTO `follows` VALUES (92, 1, 1, '测试内容', '2023-05-25 08:41:38', '0', '0', 2);
INSERT INTO `follows` VALUES (93, 1, 1, '测试内容', '2023-05-25 08:41:38', '0', '0', 2);
INSERT INTO `follows` VALUES (94, 1, 1, '测试内容', '2023-05-25 08:41:38', '0', '0', 2);
INSERT INTO `follows` VALUES (95, 1, 1, '测试内容', '2023-05-25 08:41:38', '0', '0', 2);
INSERT INTO `follows` VALUES (96, 1, 1, '测试内容', '2023-05-25 08:41:38', '0', '0', 2);
INSERT INTO `follows` VALUES (97, 1, 1, '测试内容', '2023-05-25 08:41:39', '0', '0', 2);
INSERT INTO `follows` VALUES (98, 1, 1, '测试内容', '2023-05-25 08:41:39', '0', '0', 2);
INSERT INTO `follows` VALUES (99, 1, 1, '测试内容', '2023-05-25 08:41:39', '0', '0', 2);
INSERT INTO `follows` VALUES (100, 1, 1, '测试内容', '2023-05-25 08:41:39', '0', '0', 2);
INSERT INTO `follows` VALUES (101, 1, 1, '测试内容', '2023-05-25 08:41:39', '0', '0', 2);
INSERT INTO `follows` VALUES (102, 1, 1, '测试内容', '2023-05-25 08:41:39', '0', '0', 2);
INSERT INTO `follows` VALUES (103, 1, 1, '测试内容', '2023-05-25 08:41:39', '0', '0', 2);
INSERT INTO `follows` VALUES (104, 1, 1, '测试内容', '2023-05-25 08:41:40', '0', '0', 2);
INSERT INTO `follows` VALUES (105, 1, 1, '测试内容', '2023-05-25 08:41:40', '0', '0', 2);
INSERT INTO `follows` VALUES (106, 1, 1, '测试内容', '2023-05-25 08:41:40', '0', '0', 2);
INSERT INTO `follows` VALUES (107, 1, 1, '测试内容', '2023-05-25 08:41:40', '0', '0', 2);
INSERT INTO `follows` VALUES (108, 1, 1, '测试内容', '2023-05-25 08:41:40', '0', '0', 2);
INSERT INTO `follows` VALUES (109, 1, 1, '测试内容', '2023-05-25 08:41:40', '0', '0', 2);
INSERT INTO `follows` VALUES (110, 1, 1, '测试内容', '2023-05-25 08:42:29', '0', '0', 2);
INSERT INTO `follows` VALUES (111, 1, 1, '测试内容', '2023-05-25 08:42:29', '0', '0', 2);
INSERT INTO `follows` VALUES (112, 1, 1, '测试内容', '2023-05-25 08:42:29', '0', '0', 2);
INSERT INTO `follows` VALUES (113, 1, 1, '测试内容', '2023-05-25 08:42:29', '0', '0', 2);
INSERT INTO `follows` VALUES (114, 1, 1, '测试内容', '2023-05-25 08:42:29', '0', '0', 2);
INSERT INTO `follows` VALUES (115, 1, 1, '测试内容', '2023-05-25 08:42:29', '0', '0', 2);
INSERT INTO `follows` VALUES (116, 1, 1, '测试内容', '2023-05-25 08:42:29', '0', '0', 2);
INSERT INTO `follows` VALUES (117, 1, 1, '测试内容', '2023-05-25 08:42:29', '0', '0', 2);
INSERT INTO `follows` VALUES (118, 1, 1, '测试内容', '2023-05-25 08:42:30', '0', '0', 2);
INSERT INTO `follows` VALUES (119, 1, 1, '测试内容', '2023-05-25 08:42:30', '0', '0', 2);
INSERT INTO `follows` VALUES (120, 1, 1, '测试内容', '2023-05-25 08:42:30', '0', '0', 2);
INSERT INTO `follows` VALUES (121, 1, 1, '测试内容', '2023-05-25 08:42:30', '0', '0', 2);
INSERT INTO `follows` VALUES (122, 1, 1, '测试内容', '2023-05-25 08:42:30', '0', '0', 2);
INSERT INTO `follows` VALUES (123, 1, 1, '测试内容', '2023-05-25 08:42:30', '0', '0', 2);
INSERT INTO `follows` VALUES (124, 1, 1, '测试内容', '2023-05-25 08:42:31', '0', '0', 2);
INSERT INTO `follows` VALUES (125, 1, 1, '测试内容', '2023-05-25 08:42:31', '0', '0', 2);
INSERT INTO `follows` VALUES (126, 1, 1, '测试内容', '2023-05-25 08:42:31', '0', '0', 2);
INSERT INTO `follows` VALUES (127, 1, 1, '测试内容', '2023-05-25 08:42:31', '0', '0', 2);
INSERT INTO `follows` VALUES (128, 1, 1, '测试内容', '2023-05-25 08:42:31', '0', '0', 2);
INSERT INTO `follows` VALUES (129, 1, 1, '测试内容', '2023-05-25 08:42:31', '0', '0', 2);
INSERT INTO `follows` VALUES (130, 1, 1, '测试内容', '2023-05-25 08:42:31', '0', '0', 2);
INSERT INTO `follows` VALUES (131, 1, 1, '测试内容', '2023-05-25 08:42:32', '0', '0', 2);
INSERT INTO `follows` VALUES (132, 1, 1, '测试内容', '2023-05-25 08:42:32', '0', '0', 2);
INSERT INTO `follows` VALUES (133, 1, 1, '测试内容', '2023-05-25 08:42:32', '0', '0', 2);
INSERT INTO `follows` VALUES (134, 1, 1, '测试内容', '2023-05-25 08:42:32', '0', '0', 2);
INSERT INTO `follows` VALUES (135, 1, 1, '测试内容', '2023-05-25 08:42:32', '0', '0', 2);
INSERT INTO `follows` VALUES (136, 1, 1, '测试内容', '2023-05-25 08:42:32', '0', '0', 2);
INSERT INTO `follows` VALUES (137, 1, 1, '测试内容', '2023-05-25 08:42:32', '0', '0', 2);
INSERT INTO `follows` VALUES (138, 1, 1, '测试内容', '2023-05-25 08:42:32', '0', '0', 2);
INSERT INTO `follows` VALUES (139, 1, 1, '测试内容', '2023-05-25 08:42:33', '0', '0', 2);
INSERT INTO `follows` VALUES (140, 1, 1, '测试内容', '2023-05-25 08:42:33', '0', '0', 2);
INSERT INTO `follows` VALUES (141, 1, 1, '测试内容', '2023-05-25 08:42:33', '0', '0', 2);
INSERT INTO `follows` VALUES (142, 1, 1, '测试内容', '2023-05-25 08:42:33', '0', '0', 2);
INSERT INTO `follows` VALUES (143, 1, 1, '测试内容', '2023-05-25 08:42:33', '0', '0', 2);
INSERT INTO `follows` VALUES (144, 1, 1, '测试内容', '2023-05-25 08:42:33', '0', '0', 2);
INSERT INTO `follows` VALUES (145, 1, 1, '测试内容', '2023-05-25 08:42:33', '0', '0', 2);
INSERT INTO `follows` VALUES (146, 1, 1, '测试内容', '2023-05-25 08:42:33', '0', '0', 2);
INSERT INTO `follows` VALUES (147, 1, 1, '测试内容', '2023-05-25 08:42:34', '0', '0', 2);
INSERT INTO `follows` VALUES (148, 1, 1, '测试内容', '2023-05-25 08:42:34', '0', '0', 2);
INSERT INTO `follows` VALUES (149, 1, 1, '测试内容', '2023-05-25 08:42:34', '0', '0', 2);
INSERT INTO `follows` VALUES (150, 1, 1, '测试内容', '2023-05-25 08:42:34', '0', '0', 2);
INSERT INTO `follows` VALUES (151, 1, 1, '测试内容', '2023-05-25 08:42:34', '0', '0', 2);
INSERT INTO `follows` VALUES (152, 1, 1, '测试内容', '2023-05-25 08:42:34', '0', '0', 2);
INSERT INTO `follows` VALUES (153, 1, 1, '测试内容', '2023-05-25 08:42:34', '0', '0', 2);
INSERT INTO `follows` VALUES (154, 1, 1, '测试内容', '2023-05-25 08:42:35', '0', '0', 2);
INSERT INTO `follows` VALUES (155, 1, 1, '测试内容', '2023-05-25 08:42:35', '0', '0', 2);
INSERT INTO `follows` VALUES (156, 1, 1, '测试内容', '2023-05-25 08:42:35', '0', '0', 2);
INSERT INTO `follows` VALUES (157, 1, 1, '测试内容', '2023-05-25 08:42:35', '0', '0', 2);
INSERT INTO `follows` VALUES (158, 1, 1, '测试内容', '2023-05-25 08:42:35', '0', '0', 2);
INSERT INTO `follows` VALUES (159, 1, 1, '测试内容', '2023-05-25 08:42:35', '0', '0', 2);
INSERT INTO `follows` VALUES (160, 1, 1, '测试内容', '2023-05-25 08:42:35', '0', '0', 2);
INSERT INTO `follows` VALUES (161, 1, 1, '测试内容', '2023-05-25 08:42:35', '0', '0', 2);
INSERT INTO `follows` VALUES (162, 1, 1, '测试内容', '2023-05-25 08:42:36', '0', '0', 2);
INSERT INTO `follows` VALUES (163, 1, 1, '测试内容', '2023-05-25 08:42:36', '0', '0', 2);
INSERT INTO `follows` VALUES (164, 1, 1, '测试内容', '2023-05-25 08:42:36', '0', '0', 2);
INSERT INTO `follows` VALUES (165, 1, 1, '测试内容', '2023-05-25 08:42:36', '0', '0', 2);
INSERT INTO `follows` VALUES (166, 1, 1, '测试内容', '2023-05-25 08:42:36', '0', '0', 2);
INSERT INTO `follows` VALUES (167, 1, 1, '测试内容', '2023-05-25 08:42:36', '0', '0', 2);
INSERT INTO `follows` VALUES (168, 1, 1, '测试内容', '2023-05-25 08:42:37', '0', '0', 2);
INSERT INTO `follows` VALUES (169, 1, 1, '测试内容', '2023-05-25 08:42:37', '0', '0', 2);
INSERT INTO `follows` VALUES (170, 1, 1, '测试内容', '2023-05-25 08:42:37', '0', '0', 2);
INSERT INTO `follows` VALUES (171, 1, 1, '测试内容', '2023-05-25 08:42:37', '0', '0', 2);
INSERT INTO `follows` VALUES (172, 1, 1, '测试内容', '2023-05-25 08:42:37', '0', '0', 2);
INSERT INTO `follows` VALUES (173, 1, 1, '测试内容', '2023-05-25 08:42:37', '0', '0', 2);
INSERT INTO `follows` VALUES (174, 1, 1, '测试内容', '2023-05-25 08:42:37', '0', '0', 2);
INSERT INTO `follows` VALUES (175, 1, 1, '测试内容', '2023-05-25 08:42:37', '0', '0', 2);
INSERT INTO `follows` VALUES (176, 1, 1, '测试内容', '2023-05-25 08:42:38', '0', '0', 2);
INSERT INTO `follows` VALUES (177, 1, 1, '测试内容', '2023-05-25 08:42:38', '0', '0', 2);
INSERT INTO `follows` VALUES (178, 1, 1, '测试内容', '2023-05-25 08:42:38', '0', '0', 2);
INSERT INTO `follows` VALUES (179, 1, 1, '测试内容', '2023-05-25 08:42:38', '0', '0', 2);
INSERT INTO `follows` VALUES (180, 1, 1, '测试内容', '2023-05-25 08:42:38', '0', '0', 2);
INSERT INTO `follows` VALUES (181, 1, 1, '测试内容', '2023-05-25 08:42:38', '0', '0', 2);
INSERT INTO `follows` VALUES (182, 1, 1, '测试内容', '2023-05-25 08:42:38', '0', '0', 2);
INSERT INTO `follows` VALUES (183, 1, 1, '测试内容', '2023-05-25 08:42:39', '0', '0', 2);
INSERT INTO `follows` VALUES (184, 1, 1, '测试内容', '2023-05-25 08:42:39', '0', '0', 2);
INSERT INTO `follows` VALUES (185, 1, 1, '测试内容', '2023-05-25 08:42:39', '0', '0', 2);
INSERT INTO `follows` VALUES (186, 1, 1, '测试内容', '2023-05-25 08:42:39', '0', '0', 2);
INSERT INTO `follows` VALUES (187, 1, 1, '测试内容', '2023-05-25 08:42:39', '0', '0', 2);
INSERT INTO `follows` VALUES (188, 1, 1, '测试内容', '2023-05-25 08:42:39', '0', '0', 2);
INSERT INTO `follows` VALUES (189, 1, 1, '测试内容', '2023-05-25 08:42:39', '0', '0', 2);
INSERT INTO `follows` VALUES (190, 1, 1, '测试内容', '2023-05-25 08:42:39', '0', '0', 2);
INSERT INTO `follows` VALUES (191, 1, 1, '测试内容', '2023-05-25 08:42:40', '0', '0', 2);
INSERT INTO `follows` VALUES (192, 1, 1, '测试内容', '2023-05-25 08:42:40', '0', '0', 2);
INSERT INTO `follows` VALUES (193, 1, 1, '测试内容', '2023-05-25 08:42:40', '0', '0', 2);
INSERT INTO `follows` VALUES (194, 1, 1, '测试内容', '2023-05-25 08:42:40', '0', '0', 2);
INSERT INTO `follows` VALUES (195, 1, 1, '测试内容', '2023-05-25 08:42:40', '0', '0', 2);
INSERT INTO `follows` VALUES (196, 1, 1, '测试内容', '2023-05-25 08:42:40', '0', '0', 2);
INSERT INTO `follows` VALUES (197, 1, 1, '测试内容', '2023-05-25 08:42:40', '0', '0', 2);
INSERT INTO `follows` VALUES (198, 1, 1, '测试内容', '2023-05-25 08:42:40', '0', '0', 2);
INSERT INTO `follows` VALUES (199, 1, 1, '测试内容', '2023-05-25 08:42:41', '0', '0', 2);
INSERT INTO `follows` VALUES (200, 1, 1, '测试内容', '2023-05-25 08:42:41', '0', '0', 2);
INSERT INTO `follows` VALUES (201, 1, 1, '测试内容', '2023-05-25 08:42:41', '0', '0', 2);
INSERT INTO `follows` VALUES (202, 1, 1, '测试内容', '2023-05-25 08:42:41', '0', '0', 2);
INSERT INTO `follows` VALUES (203, 1, 1, '测试内容', '2023-05-25 08:42:41', '0', '0', 2);
INSERT INTO `follows` VALUES (204, 1, 1, '测试内容', '2023-05-25 08:42:41', '0', '0', 2);
INSERT INTO `follows` VALUES (205, 1, 1, '测试内容', '2023-05-25 08:42:41', '0', '0', 2);
INSERT INTO `follows` VALUES (206, 1, 1, '测试内容', '2023-05-25 08:42:42', '0', '0', 2);
INSERT INTO `follows` VALUES (207, 1, 1, '测试内容', '2023-05-25 08:42:42', '0', '0', 2);
INSERT INTO `follows` VALUES (208, 1, 1, '测试内容', '2023-05-25 08:42:42', '0', '0', 2);
INSERT INTO `follows` VALUES (209, 1, 1, '测试内容', '2023-05-25 08:42:42', '0', '0', 2);
INSERT INTO `follows` VALUES (210, 1, 1, '测试内容', '2023-05-25 08:46:16', '0', '0', 2);
INSERT INTO `follows` VALUES (211, 1, 1, '测试内容', '2023-05-25 08:46:58', '0', '0', 2);
INSERT INTO `follows` VALUES (212, 1, 1, '测试内容', '2023-05-25 08:46:58', '0', '0', 2);
INSERT INTO `follows` VALUES (213, 1, 1, '测试内容', '2023-05-25 08:46:58', '0', '0', 2);
INSERT INTO `follows` VALUES (214, 1, 1, '测试内容', '2023-05-25 08:46:58', '0', '0', 2);
INSERT INTO `follows` VALUES (215, 1, 1, '测试内容', '2023-05-25 08:46:58', '0', '0', 2);
INSERT INTO `follows` VALUES (216, 1, 1, '测试内容', '2023-05-25 08:46:58', '0', '0', 2);
INSERT INTO `follows` VALUES (217, 1, 1, '测试内容', '2023-05-25 08:46:58', '0', '0', 2);
INSERT INTO `follows` VALUES (218, 1, 1, '测试内容', '2023-05-25 08:46:59', '0', '0', 2);
INSERT INTO `follows` VALUES (219, 1, 1, '测试内容', '2023-05-25 08:46:59', '0', '0', 2);
INSERT INTO `follows` VALUES (220, 1, 1, '测试内容', '2023-05-25 08:46:59', '0', '0', 2);
INSERT INTO `follows` VALUES (221, 1, 1, '测试内容', '2023-05-25 08:46:59', '0', '0', 2);
INSERT INTO `follows` VALUES (222, 1, 1, '测试内容', '2023-05-25 08:46:59', '0', '0', 2);
INSERT INTO `follows` VALUES (223, 1, 1, '测试内容', '2023-05-25 08:46:59', '0', '0', 2);
INSERT INTO `follows` VALUES (224, 1, 1, '测试内容', '2023-05-25 08:46:59', '0', '0', 2);
INSERT INTO `follows` VALUES (225, 1, 1, '测试内容', '2023-05-25 08:47:00', '0', '0', 2);
INSERT INTO `follows` VALUES (226, 1, 1, '测试内容', '2023-05-25 08:47:00', '0', '0', 2);
INSERT INTO `follows` VALUES (227, 1, 1, '测试内容', '2023-05-25 08:47:00', '0', '0', 2);
INSERT INTO `follows` VALUES (228, 1, 1, '测试内容', '2023-05-25 08:47:00', '0', '0', 2);
INSERT INTO `follows` VALUES (229, 1, 1, '测试内容', '2023-05-25 08:47:00', '0', '0', 2);
INSERT INTO `follows` VALUES (230, 1, 1, '测试内容', '2023-05-25 08:47:00', '0', '0', 2);
INSERT INTO `follows` VALUES (231, 1, 1, '测试内容', '2023-05-25 08:47:00', '0', '0', 2);
INSERT INTO `follows` VALUES (232, 1, 1, '测试内容', '2023-05-25 08:47:00', '0', '0', 2);
INSERT INTO `follows` VALUES (233, 1, 1, '测试内容', '2023-05-25 08:47:01', '0', '0', 2);
INSERT INTO `follows` VALUES (234, 1, 1, '测试内容', '2023-05-25 08:47:01', '0', '0', 2);
INSERT INTO `follows` VALUES (235, 1, 1, '测试内容', '2023-05-25 08:47:01', '0', '0', 2);
INSERT INTO `follows` VALUES (236, 1, 1, '测试内容', '2023-05-25 08:47:01', '0', '0', 2);
INSERT INTO `follows` VALUES (237, 1, 1, '测试内容', '2023-05-25 08:47:01', '0', '0', 2);
INSERT INTO `follows` VALUES (238, 1, 1, '测试内容', '2023-05-25 08:47:01', '0', '0', 2);
INSERT INTO `follows` VALUES (239, 1, 1, '测试内容', '2023-05-25 08:47:02', '0', '0', 2);
INSERT INTO `follows` VALUES (240, 1, 1, '测试内容', '2023-05-25 08:47:02', '0', '0', 2);
INSERT INTO `follows` VALUES (241, 1, 1, '测试内容', '2023-05-25 08:47:02', '0', '0', 2);
INSERT INTO `follows` VALUES (242, 1, 1, '测试内容', '2023-05-25 08:47:02', '0', '0', 2);
INSERT INTO `follows` VALUES (243, 1, 1, '测试内容', '2023-05-25 08:47:02', '0', '0', 2);
INSERT INTO `follows` VALUES (244, 1, 1, '测试内容', '2023-05-25 08:47:02', '0', '0', 2);
INSERT INTO `follows` VALUES (245, 1, 1, '测试内容', '2023-05-25 08:47:02', '0', '0', 2);
INSERT INTO `follows` VALUES (246, 1, 1, '测试内容', '2023-05-25 08:47:03', '0', '0', 2);
INSERT INTO `follows` VALUES (247, 1, 1, '测试内容', '2023-05-25 08:47:03', '0', '0', 2);
INSERT INTO `follows` VALUES (248, 1, 1, '测试内容', '2023-05-25 08:47:03', '0', '0', 2);
INSERT INTO `follows` VALUES (249, 1, 1, '测试内容', '2023-05-25 08:47:03', '0', '0', 2);
INSERT INTO `follows` VALUES (250, 1, 1, '测试内容', '2023-05-25 08:47:03', '0', '0', 2);
INSERT INTO `follows` VALUES (251, 1, 1, '测试内容', '2023-05-25 08:47:03', '0', '0', 2);
INSERT INTO `follows` VALUES (252, 1, 1, '测试内容', '2023-05-25 08:47:03', '0', '0', 2);
INSERT INTO `follows` VALUES (253, 1, 1, '测试内容', '2023-05-25 08:47:04', '0', '0', 2);
INSERT INTO `follows` VALUES (254, 1, 1, '测试内容', '2023-05-25 08:47:04', '0', '0', 2);
INSERT INTO `follows` VALUES (255, 1, 1, '测试内容', '2023-05-25 08:47:04', '0', '0', 2);
INSERT INTO `follows` VALUES (256, 1, 1, '测试内容', '2023-05-25 08:47:04', '0', '0', 2);
INSERT INTO `follows` VALUES (257, 1, 1, '测试内容', '2023-05-25 08:47:04', '0', '0', 2);
INSERT INTO `follows` VALUES (258, 1, 1, '测试内容', '2023-05-25 08:47:04', '0', '0', 2);
INSERT INTO `follows` VALUES (259, 1, 1, '测试内容', '2023-05-25 08:47:04', '0', '0', 2);
INSERT INTO `follows` VALUES (260, 1, 1, '测试内容', '2023-05-25 08:47:05', '0', '0', 2);
INSERT INTO `follows` VALUES (261, 1, 1, '测试内容', '2023-05-25 08:47:05', '0', '0', 2);
INSERT INTO `follows` VALUES (262, 1, 1, '测试内容', '2023-05-25 08:47:05', '0', '0', 2);
INSERT INTO `follows` VALUES (263, 1, 1, '测试内容', '2023-05-25 08:47:05', '0', '0', 2);
INSERT INTO `follows` VALUES (264, 1, 1, '测试内容', '2023-05-25 08:47:05', '0', '0', 2);
INSERT INTO `follows` VALUES (265, 1, 1, '测试内容', '2023-05-25 08:47:05', '0', '0', 2);
INSERT INTO `follows` VALUES (266, 1, 1, '测试内容', '2023-05-25 08:47:05', '0', '0', 2);
INSERT INTO `follows` VALUES (267, 1, 1, '测试内容', '2023-05-25 08:47:06', '0', '0', 2);
INSERT INTO `follows` VALUES (268, 1, 1, '测试内容', '2023-05-25 08:47:06', '0', '0', 2);
INSERT INTO `follows` VALUES (269, 1, 1, '测试内容', '2023-05-25 08:47:06', '0', '0', 2);
INSERT INTO `follows` VALUES (270, 1, 1, '测试内容', '2023-05-25 08:47:06', '0', '0', 2);
INSERT INTO `follows` VALUES (271, 1, 1, '测试内容', '2023-05-25 08:47:06', '0', '0', 2);
INSERT INTO `follows` VALUES (272, 1, 1, '测试内容', '2023-05-25 08:47:06', '0', '0', 2);
INSERT INTO `follows` VALUES (273, 1, 1, '测试内容', '2023-05-25 08:47:06', '0', '0', 2);
INSERT INTO `follows` VALUES (274, 1, 1, '测试内容', '2023-05-25 08:47:06', '0', '0', 2);
INSERT INTO `follows` VALUES (275, 1, 1, '测试内容', '2023-05-25 08:47:07', '0', '0', 2);
INSERT INTO `follows` VALUES (276, 1, 1, '测试内容', '2023-05-25 08:47:07', '0', '0', 2);
INSERT INTO `follows` VALUES (277, 1, 1, '测试内容', '2023-05-25 08:47:07', '0', '0', 2);
INSERT INTO `follows` VALUES (278, 1, 1, '测试内容', '2023-05-25 08:47:07', '0', '0', 2);
INSERT INTO `follows` VALUES (279, 1, 1, '测试内容', '2023-05-25 08:47:07', '0', '0', 2);
INSERT INTO `follows` VALUES (280, 1, 1, '测试内容', '2023-05-25 08:47:07', '0', '0', 2);
INSERT INTO `follows` VALUES (281, 1, 1, '测试内容', '2023-05-25 08:47:07', '0', '0', 2);
INSERT INTO `follows` VALUES (282, 1, 1, '测试内容', '2023-05-25 08:47:07', '0', '0', 2);
INSERT INTO `follows` VALUES (283, 1, 1, '测试内容', '2023-05-25 08:47:08', '0', '0', 2);
INSERT INTO `follows` VALUES (284, 1, 1, '测试内容', '2023-05-25 08:47:08', '0', '0', 2);
INSERT INTO `follows` VALUES (285, 1, 1, '测试内容', '2023-05-25 08:47:08', '0', '0', 2);
INSERT INTO `follows` VALUES (286, 1, 1, '测试内容', '2023-05-25 08:47:08', '0', '0', 2);
INSERT INTO `follows` VALUES (287, 1, 1, '测试内容', '2023-05-25 08:47:08', '0', '0', 2);
INSERT INTO `follows` VALUES (288, 1, 1, '测试内容', '2023-05-25 08:47:08', '0', '0', 2);
INSERT INTO `follows` VALUES (289, 1, 1, '测试内容', '2023-05-25 08:47:09', '0', '0', 2);
INSERT INTO `follows` VALUES (290, 1, 1, '测试内容', '2023-05-25 08:47:09', '0', '0', 2);
INSERT INTO `follows` VALUES (291, 1, 1, '测试内容', '2023-05-25 08:47:09', '0', '0', 2);
INSERT INTO `follows` VALUES (292, 1, 1, '测试内容', '2023-05-25 08:47:09', '0', '0', 2);
INSERT INTO `follows` VALUES (293, 1, 1, '测试内容', '2023-05-25 08:47:09', '0', '0', 2);
INSERT INTO `follows` VALUES (294, 1, 1, '测试内容', '2023-05-25 08:47:09', '0', '0', 2);
INSERT INTO `follows` VALUES (295, 1, 1, '测试内容', '2023-05-25 08:47:09', '0', '0', 2);
INSERT INTO `follows` VALUES (296, 1, 1, '测试内容', '2023-05-25 08:47:10', '0', '0', 2);
INSERT INTO `follows` VALUES (297, 1, 1, '测试内容', '2023-05-25 08:47:10', '0', '0', 2);
INSERT INTO `follows` VALUES (298, 1, 1, '测试内容', '2023-05-25 08:47:10', '0', '0', 2);
INSERT INTO `follows` VALUES (299, 1, 1, '测试内容', '2023-05-25 08:47:10', '0', '0', 2);
INSERT INTO `follows` VALUES (300, 1, 1, '测试内容', '2023-05-25 08:47:10', '0', '0', 2);
INSERT INTO `follows` VALUES (301, 1, 1, '测试内容', '2023-05-25 08:47:10', '0', '0', 2);
INSERT INTO `follows` VALUES (302, 1, 1, '测试内容', '2023-05-25 08:47:10', '0', '0', 2);
INSERT INTO `follows` VALUES (303, 1, 1, '测试内容', '2023-05-25 08:47:11', '0', '0', 2);
INSERT INTO `follows` VALUES (304, 1, 1, '测试内容', '2023-05-25 08:47:11', '0', '0', 2);
INSERT INTO `follows` VALUES (305, 1, 1, '测试内容', '2023-05-25 08:47:11', '0', '0', 2);
INSERT INTO `follows` VALUES (306, 1, 1, '测试内容', '2023-05-25 08:47:11', '0', '0', 2);
INSERT INTO `follows` VALUES (307, 1, 1, '测试内容', '2023-05-25 08:47:11', '0', '0', 2);
INSERT INTO `follows` VALUES (308, 1, 1, '测试内容', '2023-05-25 08:47:11', '0', '0', 2);
INSERT INTO `follows` VALUES (309, 1, 1, '测试内容', '2023-05-25 08:47:11', '0', '0', 2);
INSERT INTO `follows` VALUES (310, 1, 1, '测试内容', '2023-05-25 08:47:11', '0', '0', 2);

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
  `content` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, '「携友山间行」——微信游戏×原神 趣味分享活动现已上线', '2023-05-17 20:52:22', '1', NULL, '317', '20', '[图片]亲爱的旅行者，「携友山间行」——微信游戏×原神 趣味分享活动现已上线~点击【网页链接】即可参', '原神2.jpg', 1);
INSERT INTO `posts` VALUES (2, '官方\r\n《原神》联动主题表情包「派蒙的画作科颜氏联动篇」现已上线', '2023-05-17 21:10:23', '2', NULL, '30', '39', '旅行者们好~「派蒙的画作科颜氏联动篇」表情包已经上架米游社啦！欢迎旅行者们使用~', '铁道2.jpg', 1);
INSERT INTO `posts` VALUES (3, '官方\r\n《原神》联动主题表情包「派蒙的画作科颜氏联动篇」现已上线', '2023-05-17 23:06:13', '2', NULL, '24', '11', '派蒙的画作科颜氏联动篇」表情包已经上架米游社啦！欢迎旅行者们使用~[图片', '铁道2.jpg', 2);
INSERT INTO `posts` VALUES (4, '《崩坏：星穹铁道》新角色PV：“希儿”一夜无事', '2023-05-21 18:30:12', '4', 'https://www.3dmgame.com/news/202304/3867740.html', '25', '20', '贝洛伯格的夜，谎言灭不了火焰。她最后的笑容，预示着黎明将现。', 'news/9.png', 1);
INSERT INTO `posts` VALUES (5, '《崩坏 星穹铁道》千星纪游PV《仙舟通鉴·帝弓七天将》', '2023-05-21 18:49:01', '4', 'https://www.gamersky.com/news/202305/1594286.shtml', '15', '21', '关于仙舟这个帝弓七天将，从PV上看能够明显得出结论，那就是现存的六艘仙舟都是有着自己的历史朝代原型的。而且有些仙舟的历史朝代原型，还很可能是一个。', 'news/10.png', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1004 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'leeyun', '123456', '都是风景，幸会，幸会', '21', '2019-07-01 11:27:52', '2003-03-09 23:38:05', '李云', NULL);
INSERT INTO `user` VALUES (2, 'cumulus', '123456', '什么是人，欲望满身。', '10', '2016-01-22 23:43:54', '2016-12-11 08:04:23', '李明', NULL);
INSERT INTO `user` VALUES (3, 'duchanyuan', '123456', '永远温柔，与世无仇。', '3', '2009-04-02 05:40:25', '2012-07-14 09:52:42', '杜禅元', NULL);
INSERT INTO `user` VALUES (4, 'dujuan', '123456', '山行野宿，孤身万里。', '2', '2002-02-25 07:32:29', '2015-04-20 03:44:20', '杜鹃', NULL);
INSERT INTO `user` VALUES (5, 'xiaoyu', '123456', '没有期待的日子反而顺顺利利。', '1', '2016-09-06 22:11:00', '2003-04-19 06:25:20', '小玉', NULL);
INSERT INTO `user` VALUES (6, 'leemulus', '123456', '吹不出褶的平静日子也在闪光。', '100', '2011-03-21 20:17:28', '2006-06-24 10:21:44', '李云', NULL);
INSERT INTO `user` VALUES (7, 'heydoa', '123456', '撒娇是察觉到了被偏爱的可能。', '53', '2017-10-28 09:23:51', '2022-08-29 15:10:50', '娟', NULL);
INSERT INTO `user` VALUES (8, 'nodl', '123456', '我们长棱角，因为要变成星星。', '22', '2017-03-14 19:36:40', '2014-09-20 03:28:13', '测试', NULL);
INSERT INTO `user` VALUES (9, 'lemontree', '123456', '慢慢体会我的极端与浪漫吧。', '44', '2015-07-13 09:33:00', '2006-02-01 21:54:05', '柠檬', NULL);
INSERT INTO `user` VALUES (10, 'Xue Lu', '123456', '老子死也要活着。', '52', '2002-03-19 23:21:52', '2004-11-03 21:17:37', '李玉', NULL);
INSERT INTO `user` VALUES (1001, '测试11', '123456', '测试的东西', '', NULL, NULL, '', '');
INSERT INTO `user` VALUES (1002, '测试112', '11124213123', '21', '', NULL, NULL, '', '');
INSERT INTO `user` VALUES (1003, '123ces ', '123124', '1212', '0', '2023-05-20 11:52:11', '2023-05-20 11:52:11', '1212', '');
INSERT INTO `user` VALUES (1004, '测试111', '1121', '1212', '0', '2023-05-20 11:52:46', '2023-05-20 11:52:46', '213123', '');

SET FOREIGN_KEY_CHECKS = 1;
