/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : ks_db

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 17/05/2021 09:34:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for assignment
-- ----------------------------
DROP TABLE IF EXISTS `assignment`;
CREATE TABLE `assignment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID（老师ID）',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `memo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '任务描述',
  `type` int(11) NULL DEFAULT NULL COMMENT '任务类型',
  `created_on` date NULL DEFAULT NULL COMMENT '创建时间',
  `is_deleted` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of assignment
-- ----------------------------
INSERT INTO `assignment` VALUES (29, 1, '测试', 'vue', 2, '2021-05-10', NULL);
INSERT INTO `assignment` VALUES (30, 1, '阿方索第三大', '123', 2, '2021-05-10', NULL);
INSERT INTO `assignment` VALUES (31, 1, '测试0510dsfsdfsdfdsfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfdsfsdfsdfsdfsdfsdfsdfsfsdfsdf', 'vue', 2, '2021-05-10', NULL);
INSERT INTO `assignment` VALUES (32, 1, 'dasdasdsa', 'asddas', 2, '2021-05-10', NULL);
INSERT INTO `assignment` VALUES (33, 1, 'asddasdsa', 'adsd', 2, '2021-05-10', NULL);
INSERT INTO `assignment` VALUES (34, 1, 'dsadas', 'asddas', 2, '2021-05-10', NULL);
INSERT INTO `assignment` VALUES (35, 1, '测试dsadsa', 'vuesad', 1, '2021-05-10', NULL);
INSERT INTO `assignment` VALUES (36, 1, 'saddsa', 'dsds', 1, '2021-05-10', NULL);
INSERT INTO `assignment` VALUES (37, 1, 'saddsa', 'dsds', 1, '2021-05-10', NULL);
INSERT INTO `assignment` VALUES (38, 1, 'saddsa', 'dsds', 1, '2021-05-10', NULL);
INSERT INTO `assignment` VALUES (39, 1, '测试11', 'vue11', 1, '2021-05-10', NULL);
INSERT INTO `assignment` VALUES (40, 1, '测试11', 'vue', 2, '2021-05-12', NULL);
INSERT INTO `assignment` VALUES (41, 1, 'zy1', 'vue', 1, '2021-05-12', NULL);
INSERT INTO `assignment` VALUES (42, 1, '测试', 'vue', 1, '2021-05-12', NULL);
INSERT INTO `assignment` VALUES (43, 1, '测试11111', 'vue', 2, '2021-05-17', NULL);

-- ----------------------------
-- Table structure for ks_class
-- ----------------------------
DROP TABLE IF EXISTS `ks_class`;
CREATE TABLE `ks_class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级名称',
  `created_on` date NULL DEFAULT NULL COMMENT '创建时间',
  `is_deleted` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ks_class
-- ----------------------------
INSERT INTO `ks_class` VALUES (1, 'java1期', '2021-05-10', NULL);
INSERT INTO `ks_class` VALUES (4, 'java4期', '2021-05-04', NULL);
INSERT INTO `ks_class` VALUES (5, 'java6期', '2021-05-04', NULL);
INSERT INTO `ks_class` VALUES (7, '前端5期', '2021-05-04', NULL);
INSERT INTO `ks_class` VALUES (9, 'java231期', '2021-05-08', NULL);

-- ----------------------------
-- Table structure for ks_config
-- ----------------------------
DROP TABLE IF EXISTS `ks_config`;
CREATE TABLE `ks_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID （老师）',
  `begin_question` int(11) NULL DEFAULT NULL COMMENT '1.未开始 2.开始 3.抢答结束',
  `created_on` date NULL DEFAULT NULL COMMENT '创建时间',
  `is_deleted` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级ID',
  `student_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `userIid_pk`(`user_id`) USING BTREE COMMENT '发布老师唯一ID'
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ks_config
-- ----------------------------
INSERT INTO `ks_config` VALUES (2, 1, 2, '2021-05-10', NULL, 1, '');

-- ----------------------------
-- Table structure for ks_group
-- ----------------------------
DROP TABLE IF EXISTS `ks_group`;
CREATE TABLE `ks_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级id',
  `created_on` date NULL DEFAULT NULL,
  `is_deleted` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ks_group
-- ----------------------------
INSERT INTO `ks_group` VALUES (10, '球球3', 1, '2021-05-10', NULL);
INSERT INTO `ks_group` VALUES (11, '球球5', 1, '2021-05-10', NULL);
INSERT INTO `ks_group` VALUES (12, '球球3111', 1, '2021-05-10', NULL);
INSERT INTO `ks_group` VALUES (13, '球球5111', 1, '2021-05-10', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号（账户）',
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  `status` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（1有效，2无效，3休学）',
  `created_on` date NULL DEFAULT NULL COMMENT '创建时间',
  `is_deleted` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '1.老师 2.学生',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级id',
  `group_id` int(11) NULL DEFAULT NULL COMMENT '小组id',
  `group_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小组名称',
  `integral` int(11) NULL DEFAULT NULL COMMENT '学生积分',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nmae_pk`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '张三', '13012345678', 'a9c4020fa0fc89c333afe8fa91228d28', 'aaaa', '1', '2021-05-03', '0', 1, 1, NULL, NULL, 2);
INSERT INTO `user` VALUES (22, '请问11', 'A12343111', 'a9c4020fa0fc89c333afe8fa91228d28', 'aaaa', '1', '2021-05-10', '0', 2, 1, 12, '球球3111', 15);
INSERT INTO `user` VALUES (23, '大的11', 'A1231341111', '04c2e4ff2d5ff620809337d7d6f5b48a', 'java1期', '1', '2021-05-10', '0', 2, 1, 13, '球球5111', 10);

-- ----------------------------
-- Table structure for user_class_group
-- ----------------------------
DROP TABLE IF EXISTS `user_class_group`;
CREATE TABLE `user_class_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID（学生）',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级ID',
  `group_id` int(11) NULL DEFAULT NULL COMMENT '小组ID',
  `group_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小组名称',
  `created_on` date NULL DEFAULT NULL COMMENT '创建时间',
  `is_deleted` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_class_group
-- ----------------------------

-- ----------------------------
-- Table structure for user_student_assignment
-- ----------------------------
DROP TABLE IF EXISTS `user_student_assignment`;
CREATE TABLE `user_student_assignment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID（学生）',
  `assignment_id` int(11) NULL DEFAULT NULL COMMENT '任务ID',
  `assignment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `assignment_type` int(11) NULL DEFAULT NULL COMMENT '任务类型 1作业  2 练习题',
  `status` int(11) NULL DEFAULT NULL COMMENT '任务状态 1 未完成 2 已完成',
  `created_on` date NULL DEFAULT NULL COMMENT '创建时间',
  `is_deleted` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_student_assignment
-- ----------------------------
INSERT INTO `user_student_assignment` VALUES (43, 12, 31, '测试0510dsfsdfsdfdsfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfdsfsdfsdfsdfsdfsdfsdfsfsdfsdf', 2, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (44, 13, 31, '测试0510dsfsdfsdfdsfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfdsfsdfsdfsdfsdfsdfsdfsfsdfsdf', 2, 2, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (45, 12, 32, 'dasdasdsa', 2, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (46, 13, 32, 'dasdasdsa', 2, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (47, 12, 33, 'asddasdsa', 2, 2, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (48, 13, 33, 'asddasdsa', 2, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (49, 12, 34, 'dsadas', 2, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (50, 13, 34, 'dsadas', 2, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (51, 12, 35, '测试dsadsa', 1, 2, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (52, 13, 35, '测试dsadsa', 1, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (53, 12, 36, 'saddsa', 1, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (54, 13, 36, 'saddsa', 1, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (55, 12, 37, 'saddsa', 1, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (56, 13, 37, 'saddsa', 1, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (57, 12, 38, 'saddsa', 1, 2, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (58, 13, 38, 'saddsa', 1, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (59, 12, 39, '测试11', 1, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (60, 13, 39, '测试11', 1, 1, '2021-05-10', NULL);
INSERT INTO `user_student_assignment` VALUES (61, 22, 40, '测试11', 2, 2, '2021-05-12', NULL);
INSERT INTO `user_student_assignment` VALUES (62, 23, 40, '测试11', 2, 1, '2021-05-12', NULL);
INSERT INTO `user_student_assignment` VALUES (63, 22, 41, 'zy1', 1, 1, '2021-05-12', NULL);
INSERT INTO `user_student_assignment` VALUES (64, 23, 41, 'zy1', 1, 1, '2021-05-12', NULL);
INSERT INTO `user_student_assignment` VALUES (65, 22, 42, '测试', 1, 1, '2021-05-12', NULL);
INSERT INTO `user_student_assignment` VALUES (66, 23, 42, '测试', 1, 1, '2021-05-12', NULL);
INSERT INTO `user_student_assignment` VALUES (67, 22, 43, '测试11111', 2, 1, '2021-05-17', NULL);
INSERT INTO `user_student_assignment` VALUES (68, 23, 43, '测试11111', 2, 1, '2021-05-17', NULL);

SET FOREIGN_KEY_CHECKS = 1;
