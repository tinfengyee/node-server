/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : cool

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 15/05/2020 12:49:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_conf
-- ----------------------------
DROP TABLE IF EXISTS `sys_conf`;
CREATE TABLE `sys_conf`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `cKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_cd5b2672d971f8619e63009d12`(`cKey`) USING BTREE,
  INDEX `IDX_3fe26fdbdf2049a6ccafeacca2`(`createTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_conf
-- ----------------------------
INSERT INTO `sys_conf` VALUES (1, '2019-11-17 19:35:50.905349', '2019-11-17 19:35:50.905349', 'logKeep', '30');

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parentId` bigint(20) NULL DEFAULT NULL,
  `orderNum` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_a52c93a4c1e40e5d616b9c4a53`(`createTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_department
-- ----------------------------
INSERT INTO `sys_department` VALUES (1, '2019-11-18 14:56:19.747535', '2020-05-15 11:01:59.000000', 'SYSTEM', NULL, 0);
INSERT INTO `sys_department` VALUES (10, '2019-11-18 17:07:06.666624', '2019-11-18 17:56:16.000000', '123123', 10, 1);
INSERT INTO `sys_department` VALUES (11, '2019-11-18 17:07:10.400246', '2019-11-18 17:56:17.000000', '3333', 11, 3);
INSERT INTO `sys_department` VALUES (12, '2019-11-18 17:20:28.008716', '2019-11-18 17:56:16.000000', '123123123', 12, 2);
INSERT INTO `sys_department` VALUES (13, '2019-11-18 17:58:57.509676', '2019-11-19 00:40:44.000000', '部门1', 1, 1);
INSERT INTO `sys_department` VALUES (14, '2019-11-18 17:59:04.259483', '2019-11-19 00:40:55.000000', '小组1', 13, 2);
INSERT INTO `sys_department` VALUES (15, '2019-11-18 17:59:07.348778', '2019-11-19 00:40:49.000000', '部门2', 1, 3);
INSERT INTO `sys_department` VALUES (16, '2019-11-18 17:59:12.552068', '2019-11-19 00:41:01.000000', '小组2', 15, 4);
INSERT INTO `sys_department` VALUES (17, '2019-11-19 00:41:19.008306', '2019-11-19 00:41:19.008306', '小组1', 15, 0);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `userId` bigint(20) NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `action` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ipAddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_7217d5c9de1b05ce4ad42ecbee`(`createTime`) USING BTREE,
  INDEX `IDX_ff05f06b91d250e91bb4232163`(`userId`) USING BTREE,
  INDEX `IDX_7348bae9165c893fc91281b826`(`action`) USING BTREE,
  INDEX `IDX_b90847f09ea57036ce3ff8608a`(`ip`) USING BTREE,
  INDEX `IDX_5a45ffff94248c8d1b4fa6a482`(`ipAddr`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 447 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (221, '2020-05-11 18:25:35.690988', '2020-05-11 18:25:35.690988', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (222, '2020-05-11 18:25:35.693600', '2020-05-11 18:25:35.693600', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (223, '2020-05-11 18:25:35.769244', '2020-05-11 18:25:35.769244', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (224, '2020-05-11 18:25:37.998819', '2020-05-11 18:25:37.998819', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (225, '2020-05-11 18:25:37.998049', '2020-05-11 18:25:37.998049', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (226, '2020-05-11 18:25:55.117253', '2020-05-11 18:25:55.117253', 1, NULL, '/admin/sys/department/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (227, '2020-05-11 18:25:55.118369', '2020-05-11 18:25:55.118369', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (228, '2020-05-11 18:25:55.450769', '2020-05-11 18:25:55.450769', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (229, '2020-05-11 18:25:56.064481', '2020-05-11 18:25:56.064481', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (230, '2020-05-11 18:25:56.329094', '2020-05-11 18:25:56.329094', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/role/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (231, '2020-05-11 18:25:58.183639', '2020-05-11 18:25:58.183639', 1, '{\"page\":\"1\",\"size\":\"20\"}', '/admin/sys/param/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (232, '2020-05-11 18:27:16.874365', '2020-05-11 18:27:16.874365', 1, '{\"id\":\"45\"}', '/admin/sys/menu/info', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (233, '2020-05-11 18:27:16.909398', '2020-05-11 18:27:16.909398', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (234, '2020-05-11 18:27:33.490234', '2020-05-11 18:27:33.490234', 1, '{\"page\":\"1\",\"size\":\"20\",\"departmentIds\":\"17\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (235, '2020-05-11 18:27:34.014251', '2020-05-11 18:27:34.014251', 1, '{\"page\":\"1\",\"size\":\"20\",\"departmentIds\":\"16\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (236, '2020-05-11 18:27:34.903483', '2020-05-11 18:27:34.903483', 1, '{\"page\":\"1\",\"size\":\"20\",\"departmentIds\":\"14\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (237, '2020-05-11 18:27:35.214600', '2020-05-11 18:27:35.214600', 1, '{\"page\":\"1\",\"size\":\"20\",\"departmentIds\":\"13,14\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (238, '2020-05-11 18:27:36.005368', '2020-05-11 18:27:36.005368', 1, '{\"page\":\"1\",\"size\":\"20\",\"departmentIds\":\"1,13,14,15,17,16\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (239, '2020-05-11 18:27:42.454284', '2020-05-11 18:27:42.454284', 1, NULL, '/admin/sys/log/get-keep', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (240, '2020-05-11 18:27:43.062857', '2020-05-11 18:27:43.062857', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/log/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (241, '2020-05-11 18:27:43.759652', '2020-05-11 18:27:43.759652', 1, NULL, '/admin/sys/info/record', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (242, '2020-05-11 18:27:46.455044', '2020-05-11 18:27:46.455044', 1, NULL, '/admin/sys/info/record', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (243, '2020-05-11 18:27:49.550538', '2020-05-11 18:27:49.550538', 1, '{\"type\":\"0\",\"status\":\"1\",\"size\":\"10\",\"page\":\"1\",\"total\":\"0\"}', '/admin/sys/task/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (244, '2020-05-11 18:27:49.575753', '2020-05-11 18:27:49.575753', 1, '{\"type\":\"1\",\"status\":\"1\",\"size\":\"10\",\"page\":\"1\",\"total\":\"0\"}', '/admin/sys/task/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (245, '2020-05-11 18:27:49.582769', '2020-05-11 18:27:49.582769', 1, '{\"status\":\"0\",\"size\":\"10\",\"page\":\"1\",\"total\":\"0\"}', '/admin/sys/task/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (246, '2020-05-11 18:27:49.611438', '2020-05-11 18:27:49.611438', 1, '{\"size\":\"10\",\"page\":\"1\"}', '/admin/sys/task/log', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (247, '2020-05-13 17:38:23.999122', '2020-05-13 17:38:23.999122', NULL, NULL, '/', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (248, '2020-05-14 16:03:05.055917', '2020-05-14 16:03:05.055917', NULL, NULL, '/', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (249, '2020-05-14 20:31:47.487094', '2020-05-14 20:31:47.487094', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (250, '2020-05-14 20:35:54.915528', '2020-05-14 20:35:54.915528', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (251, '2020-05-14 20:35:56.883411', '2020-05-14 20:35:56.883411', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (252, '2020-05-14 20:36:00.480033', '2020-05-14 20:36:00.480033', NULL, '{\"username\":\"admin\",\"password\":\"123456\",\"captchaId\":\"756fd390-95df-11ea-999f-df1ce9cd83d2\",\"verifyCode\":\"snr3\"}', '/admin/comm/login', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (253, '2020-05-14 20:36:00.547392', '2020-05-14 20:36:00.547392', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (254, '2020-05-14 20:36:00.613790', '2020-05-14 20:36:00.613790', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (255, '2020-05-14 20:36:02.776549', '2020-05-14 20:36:02.776549', 1, NULL, '/admin/sys/department/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (256, '2020-05-14 20:36:03.149910', '2020-05-14 20:36:03.149910', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (257, '2020-05-14 20:36:03.646894', '2020-05-14 20:36:03.646894', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (258, '2020-05-14 20:36:04.218226', '2020-05-14 20:36:04.218226', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (259, '2020-05-14 20:36:04.483206', '2020-05-14 20:36:04.483206', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/role/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (260, '2020-05-14 20:36:05.464322', '2020-05-14 20:36:05.464322', 1, '{\"type\":\"0\",\"status\":\"1\",\"size\":\"10\",\"page\":\"1\",\"total\":\"0\"}', '/admin/sys/task/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (261, '2020-05-14 20:36:05.775330', '2020-05-14 20:36:05.775330', 1, '{\"type\":\"1\",\"status\":\"1\",\"size\":\"10\",\"page\":\"1\",\"total\":\"0\"}', '/admin/sys/task/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (262, '2020-05-14 20:36:05.777922', '2020-05-14 20:36:05.777922', 1, '{\"status\":\"0\",\"size\":\"10\",\"page\":\"1\",\"total\":\"0\"}', '/admin/sys/task/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (263, '2020-05-14 20:36:05.818162', '2020-05-14 20:36:05.818162', 1, '{\"size\":\"10\",\"page\":\"1\"}', '/admin/sys/task/log', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (264, '2020-05-14 20:36:07.289564', '2020-05-14 20:36:07.289564', 1, '{\"page\":\"1\",\"size\":\"20\"}', '/admin/sys/param/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (265, '2020-05-14 20:36:08.142489', '2020-05-14 20:36:08.142489', 1, NULL, '/admin/sys/info/record', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (266, '2020-05-14 20:36:11.426304', '2020-05-14 20:36:11.426304', 1, NULL, '/admin/sys/info/record', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (267, '2020-05-14 20:36:14.131651', '2020-05-14 20:36:14.131651', 1, NULL, '/admin/sys/info/record', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (268, '2020-05-14 20:36:14.634084', '2020-05-14 20:36:14.634084', 1, NULL, '/admin/sys/log/get-keep', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (269, '2020-05-14 20:36:14.635249', '2020-05-14 20:36:14.635249', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/log/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (270, '2020-05-14 20:36:20.551238', '2020-05-14 20:36:20.551238', 1, NULL, '/admin/sys/info/record', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (271, '2020-05-14 20:36:21.823123', '2020-05-14 20:36:21.823123', 1, NULL, '/admin/sys/log/get-keep', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (272, '2020-05-14 20:36:22.131350', '2020-05-14 20:36:22.131350', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/log/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (273, '2020-05-14 21:04:13.767861', '2020-05-14 21:04:13.767861', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (274, '2020-05-14 21:04:13.766919', '2020-05-14 21:04:13.766919', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (275, '2020-05-14 21:04:13.821036', '2020-05-14 21:04:13.821036', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (276, '2020-05-14 21:04:13.822086', '2020-05-14 21:04:13.822086', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (277, '2020-05-14 21:17:54.969376', '2020-05-14 21:17:54.969376', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (278, '2020-05-14 21:17:54.972875', '2020-05-14 21:17:54.972875', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (279, '2020-05-14 21:39:50.123389', '2020-05-14 21:39:50.123389', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (280, '2020-05-14 21:39:50.137424', '2020-05-14 21:39:50.137424', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (281, '2020-05-14 23:10:10.497356', '2020-05-14 23:10:10.497356', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (282, '2020-05-14 23:10:10.500038', '2020-05-14 23:10:10.500038', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (283, '2020-05-14 23:12:25.752631', '2020-05-14 23:12:25.752631', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (284, '2020-05-14 23:12:25.753412', '2020-05-14 23:12:25.753412', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (285, '2020-05-14 23:51:13.747332', '2020-05-14 23:51:13.747332', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (286, '2020-05-14 23:51:13.751395', '2020-05-14 23:51:13.751395', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (287, '2020-05-15 01:20:27.624298', '2020-05-15 01:20:27.624298', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (288, '2020-05-15 01:20:27.637872', '2020-05-15 01:20:27.637872', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (289, '2020-05-15 01:29:52.388779', '2020-05-15 01:29:52.388779', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (290, '2020-05-15 01:29:52.389243', '2020-05-15 01:29:52.389243', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (291, '2020-05-15 01:30:04.937186', '2020-05-15 01:30:04.937186', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (292, '2020-05-15 01:30:04.939108', '2020-05-15 01:30:04.939108', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (293, '2020-05-15 01:30:08.019366', '2020-05-15 01:30:08.019366', NULL, NULL, '/admin/comm/logout', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (294, '2020-05-15 01:30:09.118203', '2020-05-15 01:30:09.118203', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (295, '2020-05-15 01:30:17.361122', '2020-05-15 01:30:17.361122', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (296, '2020-05-15 01:30:17.446823', '2020-05-15 01:30:17.446823', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (297, '2020-05-15 01:30:36.285234', '2020-05-15 01:30:36.285234', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (298, '2020-05-15 01:30:39.721321', '2020-05-15 01:30:39.721321', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (299, '2020-05-15 01:30:57.900830', '2020-05-15 01:30:57.900830', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (300, '2020-05-15 01:31:18.670444', '2020-05-15 01:31:18.670444', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (301, '2020-05-15 01:31:22.558435', '2020-05-15 01:31:22.558435', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (302, '2020-05-15 01:31:46.972301', '2020-05-15 01:31:46.972301', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (303, '2020-05-15 01:31:53.607960', '2020-05-15 01:31:53.607960', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (304, '2020-05-15 01:32:18.497840', '2020-05-15 01:32:18.497840', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (305, '2020-05-15 01:32:21.286323', '2020-05-15 01:32:21.286323', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (306, '2020-05-15 01:32:44.390040', '2020-05-15 01:32:44.390040', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (307, '2020-05-15 01:32:51.384293', '2020-05-15 01:32:51.384293', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (308, '2020-05-15 01:32:54.204164', '2020-05-15 01:32:54.204164', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (309, '2020-05-15 01:34:05.082539', '2020-05-15 01:34:05.082539', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (310, '2020-05-15 01:34:15.268208', '2020-05-15 01:34:15.268208', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (311, '2020-05-15 01:34:32.494535', '2020-05-15 01:34:32.494535', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (312, '2020-05-15 01:34:39.477184', '2020-05-15 01:34:39.477184', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (313, '2020-05-15 01:34:53.931486', '2020-05-15 01:34:53.931486', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (314, '2020-05-15 01:35:32.560972', '2020-05-15 01:35:32.560972', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (315, '2020-05-15 01:35:32.638362', '2020-05-15 01:35:32.638362', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (316, '2020-05-15 01:35:36.188200', '2020-05-15 01:35:36.188200', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (317, '2020-05-15 01:36:17.958268', '2020-05-15 01:36:17.958268', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (318, '2020-05-15 01:36:20.217786', '2020-05-15 01:36:20.217786', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (319, '2020-05-15 01:36:30.913819', '2020-05-15 01:36:30.913819', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (320, '2020-05-15 01:37:08.457373', '2020-05-15 01:37:08.457373', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (321, '2020-05-15 01:37:27.144834', '2020-05-15 01:37:27.144834', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (322, '2020-05-15 11:00:52.326270', '2020-05-15 11:00:52.326270', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (323, '2020-05-15 11:01:00.296847', '2020-05-15 11:01:00.296847', NULL, '{\"username\":\"admin\",\"password\":\"123456\",\"captchaId\":\"4987dab0-9658-11ea-999f-df1ce9cd83d2\",\"verifyCode\":\"vhVJ\"}', '/admin/comm/login', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (324, '2020-05-15 11:01:00.647318', '2020-05-15 11:01:00.647318', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (325, '2020-05-15 11:01:00.897230', '2020-05-15 11:01:00.897230', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (326, '2020-05-15 11:01:29.711440', '2020-05-15 11:01:29.711440', 1, NULL, '/admin/sys/department/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (327, '2020-05-15 11:01:29.751177', '2020-05-15 11:01:29.751177', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (328, '2020-05-15 11:01:59.651983', '2020-05-15 11:01:59.651983', 1, '{\"id\":\"1\",\"parentId\":null,\"name\":\"SYSTEM\",\"orderNum\":0}', '/admin/sys/department/update', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (329, '2020-05-15 11:01:59.895740', '2020-05-15 11:01:59.895740', 1, NULL, '/admin/sys/department/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (330, '2020-05-15 11:02:07.334791', '2020-05-15 11:02:07.334791', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (331, '2020-05-15 11:02:07.942767', '2020-05-15 11:02:07.942767', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (332, '2020-05-15 11:02:10.807730', '2020-05-15 11:02:10.807730', 1, '{\"page\":\"1\",\"size\":\"20\",\"departmentIds\":\"15,17,16\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (333, '2020-05-15 11:02:11.897296', '2020-05-15 11:02:11.897296', 1, '{\"page\":\"1\",\"size\":\"20\",\"departmentIds\":\"1,13,14,15,17,16\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (334, '2020-05-15 11:02:12.853187', '2020-05-15 11:02:12.853187', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/role/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (335, '2020-05-15 11:02:14.936866', '2020-05-15 11:02:14.936866', 1, NULL, '/admin/sys/log/get-keep', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (336, '2020-05-15 11:02:14.955289', '2020-05-15 11:02:14.955289', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/log/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (337, '2020-05-15 11:02:16.507322', '2020-05-15 11:02:16.507322', 1, NULL, '/admin/sys/info/record', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (338, '2020-05-15 11:02:20.096327', '2020-05-15 11:02:20.096327', 1, '{\"type\":\"0\",\"status\":\"1\",\"size\":\"10\",\"page\":\"1\",\"total\":\"0\"}', '/admin/sys/task/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (339, '2020-05-15 11:02:20.109787', '2020-05-15 11:02:20.109787', 1, '{\"type\":\"1\",\"status\":\"1\",\"size\":\"10\",\"page\":\"1\",\"total\":\"0\"}', '/admin/sys/task/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (340, '2020-05-15 11:02:20.143945', '2020-05-15 11:02:20.143945', 1, '{\"status\":\"0\",\"size\":\"10\",\"page\":\"1\",\"total\":\"0\"}', '/admin/sys/task/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (341, '2020-05-15 11:02:20.156979', '2020-05-15 11:02:20.156979', 1, '{\"size\":\"10\",\"page\":\"1\"}', '/admin/sys/task/log', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (342, '2020-05-15 11:02:23.478380', '2020-05-15 11:02:23.478380', 1, '{\"page\":\"1\",\"size\":\"20\"}', '/admin/sys/param/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (343, '2020-05-15 11:02:26.019871', '2020-05-15 11:02:26.019871', 1, '{\"id\":\"4\"}', '/admin/sys/param/info', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (344, '2020-05-15 11:03:04.754935', '2020-05-15 11:03:04.754935', 1, '{\"id\":\"4\"}', '/admin/sys/param/info', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (345, '2020-05-15 11:04:59.207854', '2020-05-15 11:04:59.207854', 1, '{\"name\":\"富文本参数\",\"key\":\"rich\",\"data\":\"<h1>哈哈哈</h1><p>呵呵呵</p><p><span style=\\\"color: rgb(230, 0, 0);\\\">发</span></p><p><a href=\\\"i0.hdslb.com/bfs/archive/ed92db305ae43c7fc8a59b1789934caa2636b876.png\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(34, 34, 34);\\\">i0.hdslb.com/bfs/archive/ed92db305ae43c7fc8a59b1789934caa2636b876.png</a></p>\",\"remark\":\"测试富文本参数 访问地址： https://show.cool-admin.com/api/app/comm/html?key=rich\",\"id\":\"4\",\"createTime\":\"2019-12-09 13:03:37\",\"updateTime\":\"2019-12-10 13:05:08\",\"dataType\":0}', '/admin/sys/param/update', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (346, '2020-05-15 11:04:59.451778', '2020-05-15 11:04:59.451778', 1, '{\"page\":\"1\",\"size\":\"20\"}', '/admin/sys/param/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (347, '2020-05-15 11:05:00.676077', '2020-05-15 11:05:00.676077', 1, '{\"id\":\"4\"}', '/admin/sys/param/info', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (348, '2020-05-15 11:05:05.739060', '2020-05-15 11:05:05.739060', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (349, '2020-05-15 11:05:05.741057', '2020-05-15 11:05:05.741057', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (350, '2020-05-15 11:06:31.264151', '2020-05-15 11:06:31.264151', 1, NULL, '/admin/comm/upload', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (351, '2020-05-15 11:06:54.567522', '2020-05-15 11:06:54.567522', 1, '{\"name\":\"富文本参数\",\"key\":\"rich\",\"data\":\"<h1>哈哈哈</h1><p>呵呵呵</p><p><span style=\\\"color: rgb(230, 0, 0);\\\">发</span></p><p><img src=\\\"/uploads/\\\\20200515\\\\138db050-9659-11ea-999f-df1ce9cd83d2.jpg\\\"></p>\",\"remark\":\"测试富文本参数 访问地址： http://127.0.0.1:7001/api/app/comm/html?key=rich\",\"id\":\"4\",\"createTime\":\"2019-12-09 13:03:37\",\"updateTime\":\"2020-05-15 11:04:59\",\"dataType\":0}', '/admin/sys/param/update', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (352, '2020-05-15 11:06:54.810801', '2020-05-15 11:06:54.810801', 1, '{\"page\":\"1\",\"size\":\"20\"}', '/admin/sys/param/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (353, '2020-05-15 11:06:56.923867', '2020-05-15 11:06:56.923867', 1, '{\"id\":\"4\"}', '/admin/sys/param/info', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (354, '2020-05-15 11:07:00.191919', '2020-05-15 11:07:00.191919', NULL, '{\"key\":\"rich\"}', '/api/app/comm/html', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (355, '2020-05-15 11:07:07.747378', '2020-05-15 11:07:07.747378', NULL, '{\"key\":\"rich\"}', '/app/comm/html', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (356, '2020-05-15 11:07:17.508538', '2020-05-15 11:07:17.508538', 1, '{\"name\":\"富文本参数\",\"key\":\"rich\",\"data\":\"<h1>哈哈哈</h1><p>呵呵呵</p><p><span style=\\\"color: rgb(230, 0, 0);\\\">发</span></p><p><img src=\\\"/uploads/\\\\20200515\\\\138db050-9659-11ea-999f-df1ce9cd83d2.jpg\\\"></p>\",\"remark\":\"测试富文本参数 访问地址： http://127.0.0.1:7001/app/comm/html?key=rich\",\"id\":\"4\",\"createTime\":\"2019-12-09 13:03:37\",\"updateTime\":\"2020-05-15 11:06:54\",\"dataType\":0}', '/admin/sys/param/update', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (357, '2020-05-15 11:07:17.758904', '2020-05-15 11:07:17.758904', 1, '{\"page\":\"1\",\"size\":\"20\"}', '/admin/sys/param/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (358, '2020-05-15 11:07:26.300862', '2020-05-15 11:07:26.300862', 1, NULL, '/admin/sys/log/get-keep', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (359, '2020-05-15 11:07:26.657590', '2020-05-15 11:07:26.657590', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/log/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (360, '2020-05-15 11:07:27.221370', '2020-05-15 11:07:27.221370', 1, NULL, '/admin/sys/info/record', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (361, '2020-05-15 11:07:28.817012', '2020-05-15 11:07:28.817012', 1, NULL, '/admin/sys/log/get-keep', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (362, '2020-05-15 11:07:28.817861', '2020-05-15 11:07:28.817861', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/log/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (363, '2020-05-15 11:10:27.517328', '2020-05-15 11:10:27.517328', 1, NULL, '/admin/sys/department/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (364, '2020-05-15 11:10:27.661738', '2020-05-15 11:10:27.661738', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (365, '2020-05-15 11:10:28.035839', '2020-05-15 11:10:28.035839', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (366, '2020-05-15 11:10:28.332192', '2020-05-15 11:10:28.332192', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (367, '2020-05-15 11:10:29.490125', '2020-05-15 11:10:29.490125', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/role/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (368, '2020-05-15 11:13:54.780088', '2020-05-15 11:13:54.780088', 1, '{\"page\":\"1\",\"size\":\"20\"}', '/admin/sys/param/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (369, '2020-05-15 11:13:56.690425', '2020-05-15 11:13:56.690425', 1, NULL, '/admin/sys/log/get-keep', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (370, '2020-05-15 11:13:57.027662', '2020-05-15 11:13:57.027662', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/log/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (371, '2020-05-15 11:13:58.011914', '2020-05-15 11:13:58.011914', 1, NULL, '/admin/sys/info/record', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (372, '2020-05-15 11:14:04.223631', '2020-05-15 11:14:04.223631', 1, '{\"id\":\"48\"}', '/admin/sys/menu/info', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (373, '2020-05-15 11:14:04.253643', '2020-05-15 11:14:04.253643', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (374, '2020-05-15 11:14:26.826265', '2020-05-15 11:14:26.826265', 1, '{\"type\":1,\"name\":\"文档\",\"parentId\":\"47\",\"router\":\"/tutorial/doc\",\"keepAlive\":true,\"viewPath\":\"https://eggjs.org/zh-cn/\",\"icon\":\"icon-favorfill\",\"orderNum\":0,\"perms\":null,\"id\":\"48\",\"createTime\":\"2019-11-08 09:35:53\",\"updateTime\":\"2019-11-08 09:37:02\"}', '/admin/sys/menu/update', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (375, '2020-05-15 11:14:27.079582', '2020-05-15 11:14:27.079582', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (376, '2020-05-15 11:14:27.252890', '2020-05-15 11:14:27.252890', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (377, '2020-05-15 11:14:29.754914', '2020-05-15 11:14:29.754914', 1, '{\"id\":\"47\"}', '/admin/sys/menu/info', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (378, '2020-05-15 11:14:29.757387', '2020-05-15 11:14:29.757387', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (379, '2020-05-15 11:14:50.775280', '2020-05-15 11:14:50.775280', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (380, '2020-05-15 11:14:50.776500', '2020-05-15 11:14:50.776500', 1, '{\"id\":\"47\"}', '/admin/sys/menu/info', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (381, '2020-05-15 11:14:52.822376', '2020-05-15 11:14:52.822376', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (382, '2020-05-15 11:14:53.124926', '2020-05-15 11:14:53.124926', 1, '{\"id\":\"48\"}', '/admin/sys/menu/info', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (383, '2020-05-15 11:15:03.321106', '2020-05-15 11:15:03.321106', 1, '{\"type\":1,\"name\":\"Egg文档\",\"parentId\":\"47\",\"router\":\"/tutorial/doc\",\"keepAlive\":true,\"viewPath\":\"https://eggjs.org/zh-cn/\",\"icon\":\"icon-favorfill\",\"orderNum\":0,\"perms\":null,\"id\":\"48\",\"createTime\":\"2019-11-08 09:35:53\",\"updateTime\":\"2020-05-15 11:14:26\"}', '/admin/sys/menu/update', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (384, '2020-05-15 11:15:03.571145', '2020-05-15 11:15:03.571145', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (385, '2020-05-15 11:15:03.707799', '2020-05-15 11:15:03.707799', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (386, '2020-05-15 11:15:16.346448', '2020-05-15 11:15:16.346448', 1, '{\"id\":\"48\"}', '/admin/sys/menu/info', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (387, '2020-05-15 11:15:16.350183', '2020-05-15 11:15:16.350183', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (388, '2020-05-15 11:15:18.756328', '2020-05-15 11:15:18.756328', 1, '{\"type\":1,\"name\":\"Egg\",\"parentId\":\"47\",\"router\":\"/tutorial/doc\",\"keepAlive\":true,\"viewPath\":\"https://eggjs.org/zh-cn/\",\"icon\":\"icon-favorfill\",\"orderNum\":0,\"perms\":null,\"id\":\"48\",\"createTime\":\"2019-11-08 09:35:53\",\"updateTime\":\"2020-05-15 11:15:03\"}', '/admin/sys/menu/update', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (389, '2020-05-15 11:15:19.119518', '2020-05-15 11:15:19.119518', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (390, '2020-05-15 11:15:19.370424', '2020-05-15 11:15:19.370424', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (391, '2020-05-15 11:15:20.534472', '2020-05-15 11:15:20.534472', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (392, '2020-05-15 11:15:20.836581', '2020-05-15 11:15:20.836581', 1, '{\"id\":\"47\"}', '/admin/sys/menu/info', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (393, '2020-05-15 11:15:25.333602', '2020-05-15 11:15:25.333602', 1, '{\"type\":0,\"name\":\"文档\",\"parentId\":null,\"router\":\"/tutorial\",\"keepAlive\":true,\"viewPath\":null,\"icon\":\"icon-weibiaoti4\",\"orderNum\":3,\"perms\":null,\"id\":\"47\",\"createTime\":\"2019-11-08 09:35:08\",\"updateTime\":\"2019-11-08 19:44:44\"}', '/admin/sys/menu/update', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (394, '2020-05-15 11:15:25.586294', '2020-05-15 11:15:25.586294', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (395, '2020-05-15 11:15:25.733847', '2020-05-15 11:15:25.733847', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (396, '2020-05-15 11:23:46.630381', '2020-05-15 11:23:46.630381', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (397, '2020-05-15 11:23:46.649046', '2020-05-15 11:23:46.649046', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (398, '2020-05-15 11:23:58.276775', '2020-05-15 11:23:58.276775', 1, NULL, '/admin/sys/department/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (399, '2020-05-15 11:23:58.356353', '2020-05-15 11:23:58.356353', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (400, '2020-05-15 11:23:59.115334', '2020-05-15 11:23:59.115334', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (401, '2020-05-15 11:23:59.707441', '2020-05-15 11:23:59.707441', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (402, '2020-05-15 11:23:59.963732', '2020-05-15 11:23:59.963732', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/role/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (403, '2020-05-15 11:24:02.124564', '2020-05-15 11:24:02.124564', 1, '{\"type\":\"0\",\"status\":\"1\",\"size\":\"10\",\"page\":\"1\",\"total\":\"0\"}', '/admin/sys/task/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (404, '2020-05-15 11:24:02.437391', '2020-05-15 11:24:02.437391', 1, '{\"type\":\"1\",\"status\":\"1\",\"size\":\"10\",\"page\":\"1\",\"total\":\"0\"}', '/admin/sys/task/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (405, '2020-05-15 11:24:02.438482', '2020-05-15 11:24:02.438482', 1, '{\"status\":\"0\",\"size\":\"10\",\"page\":\"1\",\"total\":\"0\"}', '/admin/sys/task/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (406, '2020-05-15 11:24:02.472644', '2020-05-15 11:24:02.472644', 1, '{\"size\":\"10\",\"page\":\"1\"}', '/admin/sys/task/log', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (407, '2020-05-15 11:24:03.322104', '2020-05-15 11:24:03.322104', 1, '{\"page\":\"1\",\"size\":\"20\"}', '/admin/sys/param/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (408, '2020-05-15 11:25:10.639395', '2020-05-15 11:25:10.639395', NULL, NULL, '/admin/comm/logout', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (409, '2020-05-15 11:25:11.490505', '2020-05-15 11:25:11.490505', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (410, '2020-05-15 11:32:34.275332', '2020-05-15 11:32:34.275332', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (411, '2020-05-15 11:32:34.351483', '2020-05-15 11:32:34.351483', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (412, '2020-05-15 11:32:40.201965', '2020-05-15 11:32:40.201965', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (413, '2020-05-15 11:32:40.258265', '2020-05-15 11:32:40.258265', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (414, '2020-05-15 11:33:00.266552', '2020-05-15 11:33:00.266552', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (415, '2020-05-15 11:33:23.036095', '2020-05-15 11:33:23.036095', NULL, '{\"username\":\"admin\",\"password\":\"123456\",\"captchaId\":\"c6ac26f0-965c-11ea-999f-df1ce9cd83d2\",\"verifyCode\":\"cm72\"}', '/admin/comm/login', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (416, '2020-05-15 11:33:23.268500', '2020-05-15 11:33:23.268500', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (417, '2020-05-15 11:33:23.414489', '2020-05-15 11:33:23.414489', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (418, '2020-05-15 11:55:24.522632', '2020-05-15 11:55:24.522632', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (419, '2020-05-15 11:55:24.526111', '2020-05-15 11:55:24.526111', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (420, '2020-05-15 12:42:19.699042', '2020-05-15 12:42:19.699042', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (421, '2020-05-15 12:42:19.710539', '2020-05-15 12:42:19.710539', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (422, '2020-05-15 12:42:24.103341', '2020-05-15 12:42:24.103341', NULL, NULL, '/admin/comm/logout', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (423, '2020-05-15 12:42:24.776324', '2020-05-15 12:42:24.776324', NULL, '{\"height\":\"36\",\"width\":\"110\"}', '/admin/comm/captcha', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (424, '2020-05-15 12:42:36.022323', '2020-05-15 12:42:36.022323', NULL, '{\"username\":\"admin\",\"password\":\"123456\",\"captchaId\":\"78e9a4b0-9666-11ea-999f-df1ce9cd83d2\",\"verifyCode\":\"KQXZ\"}', '/admin/comm/login', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (425, '2020-05-15 12:42:36.270585', '2020-05-15 12:42:36.270585', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (426, '2020-05-15 12:42:36.353462', '2020-05-15 12:42:36.353462', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (427, '2020-05-15 12:42:40.510339', '2020-05-15 12:42:40.510339', 1, NULL, '/admin/sys/department/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (428, '2020-05-15 12:42:40.884274', '2020-05-15 12:42:40.884274', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (429, '2020-05-15 12:46:05.439460', '2020-05-15 12:46:05.439460', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (430, '2020-05-15 12:46:05.440839', '2020-05-15 12:46:05.440839', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (431, '2020-05-15 12:46:07.452284', '2020-05-15 12:46:07.452284', 1, NULL, '/admin/sys/department/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (432, '2020-05-15 12:46:07.521969', '2020-05-15 12:46:07.521969', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (433, '2020-05-15 12:46:38.618127', '2020-05-15 12:46:38.618127', 1, NULL, '/admin/comm/upload', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (434, '2020-05-15 12:48:12.061972', '2020-05-15 12:48:12.061972', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (435, '2020-05-15 12:48:12.066746', '2020-05-15 12:48:12.066746', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (436, '2020-05-15 12:48:12.205356', '2020-05-15 12:48:12.205356', 1, NULL, '/admin/sys/log/get-keep', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (437, '2020-05-15 12:48:12.283293', '2020-05-15 12:48:12.283293', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/log/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (438, '2020-05-15 12:48:21.204742', '2020-05-15 12:48:21.204742', 1, NULL, '/admin/sys/department/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (439, '2020-05-15 12:48:21.560181', '2020-05-15 12:48:21.560181', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (440, '2020-05-15 12:48:37.902518', '2020-05-15 12:48:37.902518', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (441, '2020-05-15 12:48:37.903446', '2020-05-15 12:48:37.903446', 1, NULL, '/admin/comm/person', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (442, '2020-05-15 12:48:41.060378', '2020-05-15 12:48:41.060378', 1, NULL, '/admin/sys/department/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (443, '2020-05-15 12:48:41.115195', '2020-05-15 12:48:41.115195', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/user/page', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (444, '2020-05-15 12:48:42.565137', '2020-05-15 12:48:42.565137', 1, NULL, '/admin/sys/menu/list', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (445, '2020-05-15 12:48:42.827937', '2020-05-15 12:48:42.827937', 1, NULL, '/admin/comm/permmenu', '127.0.0.1', '本机地址');
INSERT INTO `sys_log` VALUES (446, '2020-05-15 12:48:43.988342', '2020-05-15 12:48:43.988342', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\"}', '/admin/sys/role/page', '127.0.0.1', '本机地址');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `parentId` bigint(20) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `router` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `perms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `orderNum` int(11) NOT NULL DEFAULT 0,
  `viewPath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keepAlive` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_1616b35781fbecc494f496498f`(`createTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '2019-09-11 11:14:44.000000', '2019-11-18 15:56:36.000000', NULL, '工作台', '/', NULL, 0, 'icon-gongzuotai', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (2, '2019-09-11 11:14:47.000000', '2019-09-18 15:37:18.000000', NULL, '系统', '/sys', NULL, 0, 'icon-systemfill', 2, NULL, 1);
INSERT INTO `sys_menu` VALUES (8, '2019-09-11 23:19:57.053631', '2019-09-12 15:53:39.000000', 27, '菜单列表', '/sys/menu', NULL, 1, 'icon-menu', 2, 'views/system/menu/index.vue', 1);
INSERT INTO `sys_menu` VALUES (10, '2019-09-12 00:19:27.325922', '2019-09-12 00:19:27.325922', 8, '新增', NULL, 'sys:menu:add', 2, NULL, 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (11, '2019-09-12 00:19:51.101514', '2019-09-12 00:19:51.101514', 8, '删除', NULL, 'sys:menu:delete', 2, NULL, 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (12, '2019-09-12 00:20:05.150021', '2019-09-12 00:20:05.150021', 8, '修改', NULL, 'sys:menu:update', 2, NULL, 3, NULL, 0);
INSERT INTO `sys_menu` VALUES (13, '2019-09-12 00:20:19.341206', '2019-09-12 00:20:19.341206', 8, '查询', NULL, 'sys:menu:page,sys:menu:list,sys:menu:info', 2, NULL, 4, NULL, 0);
INSERT INTO `sys_menu` VALUES (17, '2019-09-12 00:31:25.334489', '2019-09-15 23:45:57.000000', 27, '用户列表', '/sys/user', NULL, 1, 'icon-user', 1, 'views/system/user/index.vue', 1);
INSERT INTO `sys_menu` VALUES (18, '2019-09-12 00:32:21.000000', '2019-11-09 22:22:19.000000', 17, '新增', NULL, 'sys:user:add', 2, NULL, 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (19, '2019-09-12 00:32:34.578645', '2019-09-12 00:32:34.578645', 17, '删除', NULL, 'sys:user:delete', 2, NULL, 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (20, '2019-09-12 00:32:47.291027', '2019-09-12 00:32:47.291027', 17, '修改', NULL, 'sys:user:update', 2, NULL, 3, NULL, 0);
INSERT INTO `sys_menu` VALUES (21, '2019-09-12 00:33:00.053653', '2019-09-12 00:33:00.053653', 17, '查询', NULL, 'sys:user:page,sys:user:list,sys:user:info', 2, NULL, 4, NULL, 0);
INSERT INTO `sys_menu` VALUES (22, '2019-09-12 00:34:01.141743', '2019-09-15 23:47:27.000000', 27, '角色列表', '/sys/role', NULL, 1, 'icon-role', 3, 'views/system/role/index.vue', 1);
INSERT INTO `sys_menu` VALUES (23, '2019-09-12 00:34:23.459460', '2019-09-12 00:34:23.459460', 22, '新增', NULL, 'sys:role:add', 2, NULL, 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (24, '2019-09-12 00:34:40.523471', '2019-09-12 00:34:40.523471', 22, '删除', NULL, 'sys:role:delete', 2, NULL, 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (25, '2019-09-12 00:34:53.306692', '2019-09-12 00:34:53.306692', 22, '修改', NULL, 'sys:role:update', 2, NULL, 3, NULL, 0);
INSERT INTO `sys_menu` VALUES (26, '2019-09-12 00:35:05.024307', '2019-09-12 00:35:05.024307', 22, '查询', NULL, 'sys:role:page,sys:role:list,sys:role:info', 2, NULL, 4, NULL, 0);
INSERT INTO `sys_menu` VALUES (27, '2019-09-12 15:52:44.342387', '2019-09-15 22:11:56.000000', 2, '权限管理', NULL, NULL, 0, 'icon-permission', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (28, '2019-09-12 17:19:16.827254', '2019-09-15 22:12:08.000000', 2, '系统监控', NULL, NULL, 0, 'icon-monitor', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (29, '2019-09-12 17:35:51.000000', '2019-11-26 23:46:53.000000', 28, '请求日志', '/sys/log', '', 1, 'icon-log', 1, 'views/system/log/index.vue', 0);
INSERT INTO `sys_menu` VALUES (30, '2019-09-12 17:37:03.000000', '2019-11-18 14:20:27.000000', 29, '权限', NULL, 'sys:log:page,sys:log:clear,sys:log:get-keep,sys:log:set-keep', 2, NULL, 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (43, '2019-11-07 14:22:34.000000', '2019-11-09 22:11:18.000000', 45, 'crud 示例', '/crud', NULL, 1, 'icon-radioboxfill', 1, 'views/test/crud.vue', 1);
INSERT INTO `sys_menu` VALUES (45, '2019-11-07 22:36:57.000000', '2019-11-11 15:21:10.000000', 1, '组件库', '/ui-lib', NULL, 0, 'icon-activityfill', 2, NULL, 1);
INSERT INTO `sys_menu` VALUES (47, '2019-11-08 09:35:08.000000', '2020-05-15 11:15:25.000000', NULL, '文档', '/tutorial', NULL, 0, 'icon-weibiaoti4', 3, NULL, 1);
INSERT INTO `sys_menu` VALUES (48, '2019-11-08 09:35:53.000000', '2020-05-15 11:15:18.000000', 47, 'Egg', '/tutorial/doc', NULL, 1, 'icon-favorfill', 0, 'https://eggjs.org/zh-cn/', 1);
INSERT INTO `sys_menu` VALUES (49, '2019-11-09 22:11:13.000000', '2019-11-09 22:11:34.000000', 45, 'Quill富文本', '/editor-quill', NULL, 1, 'icon-radioboxfill', 3, 'views/test/editor-quill.vue', 1);
INSERT INTO `sys_menu` VALUES (53, '2019-11-11 15:21:00.457911', '2019-11-11 15:21:00.457911', 1, '组件预览', '/ui-components', NULL, 1, 'icon-activityfill', 1, 'views/workbench/ui-components', 1);
INSERT INTO `sys_menu` VALUES (59, '2019-11-18 16:50:27.676184', '2019-11-18 16:50:27.676184', 17, '部门列表', NULL, 'sys:department:list', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (60, '2019-11-18 16:50:45.783945', '2019-11-18 16:50:45.783945', 17, '新增部门', NULL, 'sys:department:add', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (61, '2019-11-18 16:50:59.241883', '2019-11-18 16:50:59.241883', 17, '更新部门', NULL, 'sys:department:update', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (62, '2019-11-18 16:51:13.304712', '2019-11-18 16:51:13.304712', 17, '删除部门', NULL, 'sys:department:delete', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (63, '2019-11-18 17:49:35.009792', '2019-11-18 17:49:35.009792', 17, '部门排序', NULL, 'sys:department:order', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (65, '2019-11-18 23:59:21.775467', '2019-11-18 23:59:21.775467', 17, '用户转移', NULL, 'sys:user:move', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (66, '2019-11-26 23:48:16.000000', '2019-11-26 23:48:29.000000', 28, '服务状态', '/sys/perf', NULL, 1, 'icon-monitor', 2, 'views/system/perf/index.vue', 0);
INSERT INTO `sys_menu` VALUES (67, '2019-11-26 23:50:13.059599', '2019-11-26 23:50:13.059599', 66, '记录', NULL, 'sys:info:record', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (69, '2019-12-10 13:24:18.492207', '2019-12-10 13:24:18.492207', 2, '任务管理', NULL, NULL, 0, 'icon-weibiaoti4', 3, NULL, 1);
INSERT INTO `sys_menu` VALUES (70, '2019-12-10 13:25:06.000000', '2019-12-10 13:28:53.000000', 69, '任务列表', '/sys/task', NULL, 1, 'icon-radioboxfill', 1, 'views/system/task/index.vue', 1);
INSERT INTO `sys_menu` VALUES (71, '2019-12-10 13:25:33.801310', '2019-12-10 13:25:33.801310', 70, '新增', NULL, 'sys:task:add', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (72, '2019-12-10 13:25:45.160298', '2019-12-10 13:25:45.160298', 70, '删除', NULL, 'sys:task:delete', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (73, '2019-12-10 13:26:03.000000', '2019-12-10 13:26:18.000000', 70, '修改', NULL, 'sys:task:info,sys:task:update', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (74, '2019-12-10 13:26:49.432939', '2019-12-10 13:26:49.432939', 70, '查看', NULL, 'sys:task:page,sys:task:info,sys:task:log', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (75, '2019-12-10 13:27:10.024980', '2019-12-10 13:27:10.024980', 70, '立即执行', NULL, 'sys:task:once', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (76, '2019-12-10 13:27:24.472364', '2019-12-10 13:27:24.472364', 70, '开始', NULL, 'sys:task:start', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (77, '2019-12-10 13:27:36.460352', '2019-12-10 13:27:36.460352', 70, '暂停', NULL, 'sys:task:stop', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (78, '2019-12-10 13:27:56.000000', '2019-12-10 13:28:37.000000', 2, '参数配置', NULL, NULL, 0, 'icon-repairfill', 4, NULL, 1);
INSERT INTO `sys_menu` VALUES (79, '2019-12-10 13:29:33.170527', '2019-12-10 13:29:33.170527', 78, '参数列表', '/sys/param', NULL, 1, 'icon-menu', 0, 'views/system/param/index.vue', 1);
INSERT INTO `sys_menu` VALUES (80, '2019-12-10 13:29:50.146781', '2019-12-10 13:29:50.146781', 79, '新增', NULL, 'sys:param:add', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (81, '2019-12-10 13:30:10.030761', '2019-12-10 13:30:10.030761', 79, '修改', NULL, 'sys:param:info,sys:param:update', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (82, '2019-12-10 13:30:25.791907', '2019-12-10 13:30:25.791907', 79, '删除', NULL, 'sys:param:delete', 2, NULL, 0, NULL, 1);
INSERT INTO `sys_menu` VALUES (83, '2019-12-10 13:30:40.469454', '2019-12-10 13:30:40.469454', 79, '查看', NULL, 'sys:param:page,sys:param:list,sys:param:info', 2, NULL, 0, NULL, 1);

-- ----------------------------
-- Table structure for sys_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_param`;
CREATE TABLE `sys_param`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dataType` tinyint(4) NOT NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_efeedadce2f49b12e9317909d5`(`createTime`) USING BTREE,
  INDEX `IDX_417813ad97413e91fbf45f245d`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_param
-- ----------------------------
INSERT INTO `sys_param` VALUES (4, '2019-12-09 13:03:37.000000', '2020-05-15 11:07:17.000000', 'rich', 0, '测试富文本参数 访问地址： http://127.0.0.1:7001/app/comm/html?key=rich', '富文本参数', '<h1>哈哈哈</h1><p>呵呵呵</p><p><span style=\"color: rgb(230, 0, 0);\">发</span></p><p><img src=\"/uploads/\\20200515\\138db050-9659-11ea-999f-df1ce9cd83d2.jpg\"></p>');
INSERT INTO `sys_param` VALUES (5, '2019-12-10 13:06:11.178999', '2019-12-10 13:06:11.178999', 'comm', 1, '测试普通参数', '普通参数', '[1,2,3]');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_223de54d6badbe43a5490450c3`(`name`) USING BTREE,
  UNIQUE INDEX `IDX_f2d07943355da93c3a8a1c411a`(`label`) USING BTREE,
  INDEX `IDX_77917ed69a116ebf458c681829`(`createTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '2019-09-11 23:04:35.193681', '2019-09-11 23:04:35.193681', '超管', NULL, NULL, '');
INSERT INTO `sys_role` VALUES (27, '2019-11-07 02:35:13.129487', '2019-11-10 08:57:09.000000', 'testRole', NULL, 'testRole', '');
INSERT INTO `sys_role` VALUES (28, '2019-11-11 10:21:11.192497', '2019-11-11 10:21:11.192497', '测试', NULL, '2', '');
INSERT INTO `sys_role` VALUES (29, '2019-11-11 15:15:37.181624', '2019-11-20 15:38:32.000000', '只有部门1', NULL, 'hititle', '');
INSERT INTO `sys_role` VALUES (30, '2019-11-20 15:47:23.961531', '2019-11-20 15:47:23.961531', '只有部门2小组2', NULL, 'bd2', '');
INSERT INTO `sys_role` VALUES (31, '2020-01-18 16:21:20.704899', '2020-01-18 16:21:20.704899', '测试角色新建的', NULL, 'test2', '16');

-- ----------------------------
-- Table structure for sys_role_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_department`;
CREATE TABLE `sys_role_department`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `roleId` bigint(20) NOT NULL,
  `departmentId` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_e083017094bc786b1c10c5de8f`(`createTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_department
-- ----------------------------
INSERT INTO `sys_role_department` VALUES (7, '2019-11-20 15:38:36.526522', '2019-11-20 15:38:36.526522', 29, 13);
INSERT INTO `sys_role_department` VALUES (8, '2019-11-20 15:38:36.530798', '2019-11-20 15:38:36.530798', 29, 14);
INSERT INTO `sys_role_department` VALUES (9, '2019-11-20 15:38:36.535719', '2019-11-20 15:38:36.535719', 29, 1);
INSERT INTO `sys_role_department` VALUES (13, '2019-11-20 15:49:01.451822', '2019-11-20 15:49:01.451822', 30, 17);
INSERT INTO `sys_role_department` VALUES (14, '2019-11-20 15:49:01.550535', '2019-11-20 15:49:01.550535', 30, 1);
INSERT INTO `sys_role_department` VALUES (15, '2019-11-20 15:49:01.672427', '2019-11-20 15:49:01.672427', 30, 15);
INSERT INTO `sys_role_department` VALUES (16, '2019-11-20 15:50:34.742493', '2019-11-20 15:50:34.742493', 28, 1);
INSERT INTO `sys_role_department` VALUES (17, '2019-11-20 15:50:34.851417', '2019-11-20 15:50:34.851417', 28, 13);
INSERT INTO `sys_role_department` VALUES (18, '2019-11-20 15:50:34.971234', '2019-11-20 15:50:34.971234', 28, 14);
INSERT INTO `sys_role_department` VALUES (19, '2019-11-20 15:50:35.101318', '2019-11-20 15:50:35.101318', 28, 15);
INSERT INTO `sys_role_department` VALUES (20, '2019-11-20 15:50:35.205765', '2019-11-20 15:50:35.205765', 28, 17);
INSERT INTO `sys_role_department` VALUES (21, '2019-11-20 15:50:35.304480', '2019-11-20 15:50:35.304480', 28, 16);
INSERT INTO `sys_role_department` VALUES (26, '2020-01-18 14:57:59.988784', '2020-01-18 14:57:59.988784', 27, 15);
INSERT INTO `sys_role_department` VALUES (27, '2020-01-18 14:58:00.123781', '2020-01-18 14:58:00.123781', 27, 17);
INSERT INTO `sys_role_department` VALUES (28, '2020-01-18 14:58:00.228715', '2020-01-18 14:58:00.228715', 27, 16);
INSERT INTO `sys_role_department` VALUES (29, '2020-01-18 14:58:00.319111', '2020-01-18 14:58:00.319111', 27, 1);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `roleId` bigint(20) NOT NULL,
  `menuId` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_84d8a9d8befebc08fb3be08f1a`(`createTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (89, '2019-09-24 10:48:52.467519', '2019-09-24 10:48:52.467519', 3, 0);
INSERT INTO `sys_role_menu` VALUES (90, '2019-09-24 10:48:52.557034', '2019-09-24 10:48:52.557034', 3, 0);
INSERT INTO `sys_role_menu` VALUES (91, '2019-09-24 10:48:52.660929', '2019-09-24 10:48:52.660929', 3, 0);
INSERT INTO `sys_role_menu` VALUES (92, '2019-09-24 10:48:52.777932', '2019-09-24 10:48:52.777932', 3, 0);
INSERT INTO `sys_role_menu` VALUES (93, '2019-09-24 10:48:52.879811', '2019-09-24 10:48:52.879811', 3, 0);
INSERT INTO `sys_role_menu` VALUES (94, '2019-09-24 10:48:52.970470', '2019-09-24 10:48:52.970470', 3, 0);
INSERT INTO `sys_role_menu` VALUES (95, '2019-09-24 10:48:53.076595', '2019-09-24 10:48:53.076595', 3, 0);
INSERT INTO `sys_role_menu` VALUES (96, '2019-09-24 10:48:53.197894', '2019-09-24 10:48:53.197894', 3, 0);
INSERT INTO `sys_role_menu` VALUES (97, '2019-09-24 10:48:53.315433', '2019-09-24 10:48:53.315433', 3, 0);
INSERT INTO `sys_role_menu` VALUES (98, '2019-09-24 10:48:53.443267', '2019-09-24 10:48:53.443267', 3, 0);
INSERT INTO `sys_role_menu` VALUES (99, '2019-09-24 10:48:53.545574', '2019-09-24 10:48:53.545574', 3, 0);
INSERT INTO `sys_role_menu` VALUES (100, '2019-09-24 10:48:53.635436', '2019-09-24 10:48:53.635436', 3, 0);
INSERT INTO `sys_role_menu` VALUES (101, '2019-09-24 10:48:53.739326', '2019-09-24 10:48:53.739326', 3, 0);
INSERT INTO `sys_role_menu` VALUES (102, '2019-09-24 10:48:53.851149', '2019-09-24 10:48:53.851149', 3, 0);
INSERT INTO `sys_role_menu` VALUES (103, '2019-09-24 10:48:53.967937', '2019-09-24 10:48:53.967937', 3, 0);
INSERT INTO `sys_role_menu` VALUES (104, '2019-09-24 10:48:54.095735', '2019-09-24 10:48:54.095735', 3, 0);
INSERT INTO `sys_role_menu` VALUES (105, '2019-09-24 10:48:54.222146', '2019-09-24 10:48:54.222146', 3, 0);
INSERT INTO `sys_role_menu` VALUES (106, '2019-09-24 10:48:54.348489', '2019-09-24 10:48:54.348489', 3, 0);
INSERT INTO `sys_role_menu` VALUES (107, '2019-09-24 10:48:54.460685', '2019-09-24 10:48:54.460685', 3, 0);
INSERT INTO `sys_role_menu` VALUES (108, '2019-09-24 10:48:54.556885', '2019-09-24 10:48:54.556885', 3, 0);
INSERT INTO `sys_role_menu` VALUES (109, '2019-09-24 10:48:54.647511', '2019-09-24 10:48:54.647511', 3, 0);
INSERT INTO `sys_role_menu` VALUES (110, '2019-09-24 10:48:54.756336', '2019-09-24 10:48:54.756336', 3, 0);
INSERT INTO `sys_role_menu` VALUES (111, '2019-09-24 10:48:54.873173', '2019-09-24 10:48:54.873173', 3, 0);
INSERT INTO `sys_role_menu` VALUES (112, '2019-09-24 10:48:54.998758', '2019-09-24 10:48:54.998758', 3, 0);
INSERT INTO `sys_role_menu` VALUES (113, '2019-09-24 10:49:03.229459', '2019-09-24 10:49:03.229459', 2, 0);
INSERT INTO `sys_role_menu` VALUES (114, '2019-09-24 10:49:03.340162', '2019-09-24 10:49:03.340162', 2, 0);
INSERT INTO `sys_role_menu` VALUES (115, '2019-09-24 10:49:03.458236', '2019-09-24 10:49:03.458236', 2, 0);
INSERT INTO `sys_role_menu` VALUES (116, '2019-09-24 10:49:03.577590', '2019-09-24 10:49:03.577590', 2, 0);
INSERT INTO `sys_role_menu` VALUES (117, '2019-09-24 10:49:03.691109', '2019-09-24 10:49:03.691109', 2, 0);
INSERT INTO `sys_role_menu` VALUES (118, '2019-09-24 10:49:03.802532', '2019-09-24 10:49:03.802532', 2, 0);
INSERT INTO `sys_role_menu` VALUES (119, '2019-09-24 10:49:03.907959', '2019-09-24 10:49:03.907959', 2, 0);
INSERT INTO `sys_role_menu` VALUES (120, '2019-09-24 10:49:04.003739', '2019-09-24 10:49:04.003739', 2, 0);
INSERT INTO `sys_role_menu` VALUES (121, '2019-09-24 10:49:04.107757', '2019-09-24 10:49:04.107757', 2, 0);
INSERT INTO `sys_role_menu` VALUES (122, '2019-09-24 10:49:04.227512', '2019-09-24 10:49:04.227512', 2, 0);
INSERT INTO `sys_role_menu` VALUES (123, '2019-09-24 10:49:04.341716', '2019-09-24 10:49:04.341716', 2, 0);
INSERT INTO `sys_role_menu` VALUES (124, '2019-09-24 10:49:04.452449', '2019-09-24 10:49:04.452449', 2, 0);
INSERT INTO `sys_role_menu` VALUES (125, '2019-09-24 10:49:04.557443', '2019-09-24 10:49:04.557443', 2, 0);
INSERT INTO `sys_role_menu` VALUES (126, '2019-09-24 10:49:04.653254', '2019-09-24 10:49:04.653254', 2, 0);
INSERT INTO `sys_role_menu` VALUES (127, '2019-09-24 10:49:04.756598', '2019-09-24 10:49:04.756598', 2, 0);
INSERT INTO `sys_role_menu` VALUES (128, '2019-09-24 10:49:04.876996', '2019-09-24 10:49:04.876996', 2, 0);
INSERT INTO `sys_role_menu` VALUES (129, '2019-09-24 10:49:04.990503', '2019-09-24 10:49:04.990503', 2, 0);
INSERT INTO `sys_role_menu` VALUES (130, '2019-09-24 10:49:05.101961', '2019-09-24 10:49:05.101961', 2, 0);
INSERT INTO `sys_role_menu` VALUES (131, '2019-09-24 10:49:05.206586', '2019-09-24 10:49:05.206586', 2, 0);
INSERT INTO `sys_role_menu` VALUES (132, '2019-09-24 10:49:05.302415', '2019-09-24 10:49:05.302415', 2, 0);
INSERT INTO `sys_role_menu` VALUES (133, '2019-09-24 10:49:05.407244', '2019-09-24 10:49:05.407244', 2, 0);
INSERT INTO `sys_role_menu` VALUES (134, '2019-09-24 10:49:05.526579', '2019-09-24 10:49:05.526579', 2, 0);
INSERT INTO `sys_role_menu` VALUES (135, '2019-09-24 10:49:05.628459', '2019-09-24 10:49:05.628459', 2, 0);
INSERT INTO `sys_role_menu` VALUES (136, '2019-09-24 10:49:05.744732', '2019-09-24 10:49:05.744732', 2, 0);
INSERT INTO `sys_role_menu` VALUES (137, '2019-09-25 00:41:21.138065', '2019-09-25 00:41:21.138065', 18, 0);
INSERT INTO `sys_role_menu` VALUES (138, '2019-09-25 00:41:21.144458', '2019-09-25 00:41:21.144458', 18, 0);
INSERT INTO `sys_role_menu` VALUES (867, '2019-10-12 16:15:06.167767', '2019-10-12 16:15:06.167767', 24, 0);
INSERT INTO `sys_role_menu` VALUES (868, '2019-10-12 16:15:06.172573', '2019-10-12 16:15:06.172573', 24, 0);
INSERT INTO `sys_role_menu` VALUES (869, '2019-10-12 16:15:06.176941', '2019-10-12 16:15:06.176941', 24, 0);
INSERT INTO `sys_role_menu` VALUES (870, '2019-10-12 16:15:06.182146', '2019-10-12 16:15:06.182146', 24, 0);
INSERT INTO `sys_role_menu` VALUES (871, '2019-10-12 16:15:06.186409', '2019-10-12 16:15:06.186409', 24, 0);
INSERT INTO `sys_role_menu` VALUES (872, '2019-10-12 16:15:06.190788', '2019-10-12 16:15:06.190788', 24, 0);
INSERT INTO `sys_role_menu` VALUES (873, '2019-10-12 16:15:06.194922', '2019-10-12 16:15:06.194922', 24, 0);
INSERT INTO `sys_role_menu` VALUES (874, '2019-10-12 16:15:06.199735', '2019-10-12 16:15:06.199735', 24, 0);
INSERT INTO `sys_role_menu` VALUES (875, '2019-10-12 16:15:06.205756', '2019-10-12 16:15:06.205756', 24, 0);
INSERT INTO `sys_role_menu` VALUES (876, '2019-10-12 16:15:06.211841', '2019-10-12 16:15:06.211841', 24, 0);
INSERT INTO `sys_role_menu` VALUES (877, '2019-10-12 16:15:06.216456', '2019-10-12 16:15:06.216456', 24, 0);
INSERT INTO `sys_role_menu` VALUES (878, '2019-10-12 16:15:06.220695', '2019-10-12 16:15:06.220695', 24, 0);
INSERT INTO `sys_role_menu` VALUES (879, '2019-10-12 16:15:06.224822', '2019-10-12 16:15:06.224822', 24, 0);
INSERT INTO `sys_role_menu` VALUES (880, '2019-10-12 16:15:06.233621', '2019-10-12 16:15:06.233621', 24, 0);
INSERT INTO `sys_role_menu` VALUES (881, '2019-10-12 16:15:06.239309', '2019-10-12 16:15:06.239309', 24, 0);
INSERT INTO `sys_role_menu` VALUES (882, '2019-10-12 16:15:06.243481', '2019-10-12 16:15:06.243481', 24, 0);
INSERT INTO `sys_role_menu` VALUES (883, '2019-10-12 16:15:06.247731', '2019-10-12 16:15:06.247731', 24, 0);
INSERT INTO `sys_role_menu` VALUES (884, '2019-10-12 16:15:06.252832', '2019-10-12 16:15:06.252832', 24, 0);
INSERT INTO `sys_role_menu` VALUES (885, '2019-10-12 16:15:06.257061', '2019-10-12 16:15:06.257061', 24, 0);
INSERT INTO `sys_role_menu` VALUES (886, '2019-10-12 16:15:06.261862', '2019-10-12 16:15:06.261862', 24, 0);
INSERT INTO `sys_role_menu` VALUES (887, '2019-10-12 16:15:06.267708', '2019-10-12 16:15:06.267708', 24, 0);
INSERT INTO `sys_role_menu` VALUES (888, '2019-10-12 16:15:06.274844', '2019-10-12 16:15:06.274844', 24, 0);
INSERT INTO `sys_role_menu` VALUES (889, '2019-10-12 16:15:06.279153', '2019-10-12 16:15:06.279153', 24, 0);
INSERT INTO `sys_role_menu` VALUES (890, '2019-10-12 16:15:06.283420', '2019-10-12 16:15:06.283420', 24, 0);
INSERT INTO `sys_role_menu` VALUES (891, '2019-11-05 22:14:16.056755', '2019-11-05 22:14:16.056755', 23, 0);
INSERT INTO `sys_role_menu` VALUES (892, '2019-11-05 22:14:16.063030', '2019-11-05 22:14:16.063030', 23, 0);
INSERT INTO `sys_role_menu` VALUES (893, '2019-11-05 22:14:16.069977', '2019-11-05 22:14:16.069977', 23, 0);
INSERT INTO `sys_role_menu` VALUES (894, '2019-11-05 22:14:16.078227', '2019-11-05 22:14:16.078227', 23, 0);
INSERT INTO `sys_role_menu` VALUES (895, '2019-11-05 22:14:16.091438', '2019-11-05 22:14:16.091438', 23, 0);
INSERT INTO `sys_role_menu` VALUES (896, '2019-11-05 22:14:16.096875', '2019-11-05 22:14:16.096875', 23, 0);
INSERT INTO `sys_role_menu` VALUES (897, '2019-11-05 22:14:16.103069', '2019-11-05 22:14:16.103069', 23, 0);
INSERT INTO `sys_role_menu` VALUES (898, '2019-11-05 22:14:16.109508', '2019-11-05 22:14:16.109508', 23, 0);
INSERT INTO `sys_role_menu` VALUES (899, '2019-11-05 22:14:16.114690', '2019-11-05 22:14:16.114690', 23, 0);
INSERT INTO `sys_role_menu` VALUES (900, '2019-11-05 22:14:16.124765', '2019-11-05 22:14:16.124765', 23, 0);
INSERT INTO `sys_role_menu` VALUES (901, '2019-11-05 22:14:16.136467', '2019-11-05 22:14:16.136467', 23, 0);
INSERT INTO `sys_role_menu` VALUES (902, '2019-11-05 22:14:16.145850', '2019-11-05 22:14:16.145850', 23, 0);
INSERT INTO `sys_role_menu` VALUES (903, '2019-11-05 22:14:16.151799', '2019-11-05 22:14:16.151799', 23, 0);
INSERT INTO `sys_role_menu` VALUES (904, '2019-11-05 22:14:16.156997', '2019-11-05 22:14:16.156997', 23, 0);
INSERT INTO `sys_role_menu` VALUES (905, '2019-11-05 22:14:16.162013', '2019-11-05 22:14:16.162013', 23, 0);
INSERT INTO `sys_role_menu` VALUES (906, '2019-11-05 22:14:16.166897', '2019-11-05 22:14:16.166897', 23, 0);
INSERT INTO `sys_role_menu` VALUES (907, '2019-11-05 22:14:16.172890', '2019-11-05 22:14:16.172890', 23, 0);
INSERT INTO `sys_role_menu` VALUES (908, '2019-11-05 22:14:16.179600', '2019-11-05 22:14:16.179600', 23, 0);
INSERT INTO `sys_role_menu` VALUES (909, '2019-11-05 22:14:16.184456', '2019-11-05 22:14:16.184456', 23, 0);
INSERT INTO `sys_role_menu` VALUES (910, '2019-11-05 22:14:16.189343', '2019-11-05 22:14:16.189343', 23, 0);
INSERT INTO `sys_role_menu` VALUES (911, '2019-11-05 22:14:16.195251', '2019-11-05 22:14:16.195251', 23, 0);
INSERT INTO `sys_role_menu` VALUES (912, '2019-11-05 22:14:16.200053', '2019-11-05 22:14:16.200053', 23, 0);
INSERT INTO `sys_role_menu` VALUES (913, '2019-11-05 22:14:18.192401', '2019-11-05 22:14:18.192401', 22, 0);
INSERT INTO `sys_role_menu` VALUES (914, '2019-11-05 22:14:18.197334', '2019-11-05 22:14:18.197334', 22, 0);
INSERT INTO `sys_role_menu` VALUES (915, '2019-11-05 22:14:18.202609', '2019-11-05 22:14:18.202609', 22, 0);
INSERT INTO `sys_role_menu` VALUES (916, '2019-11-05 22:14:18.211358', '2019-11-05 22:14:18.211358', 22, 0);
INSERT INTO `sys_role_menu` VALUES (917, '2019-11-05 22:14:18.222491', '2019-11-05 22:14:18.222491', 22, 0);
INSERT INTO `sys_role_menu` VALUES (918, '2019-11-05 22:14:18.227339', '2019-11-05 22:14:18.227339', 22, 0);
INSERT INTO `sys_role_menu` VALUES (919, '2019-11-05 22:14:18.232034', '2019-11-05 22:14:18.232034', 22, 0);
INSERT INTO `sys_role_menu` VALUES (920, '2019-11-05 22:14:18.242783', '2019-11-05 22:14:18.242783', 22, 0);
INSERT INTO `sys_role_menu` VALUES (927, '2019-11-06 16:28:47.239598', '2019-11-06 16:28:47.239598', 26, 0);
INSERT INTO `sys_role_menu` VALUES (928, '2019-11-06 16:28:47.250806', '2019-11-06 16:28:47.250806', 26, 0);
INSERT INTO `sys_role_menu` VALUES (929, '2019-11-06 16:28:47.256429', '2019-11-06 16:28:47.256429', 26, 0);
INSERT INTO `sys_role_menu` VALUES (930, '2019-11-06 16:28:47.261071', '2019-11-06 16:28:47.261071', 26, 0);
INSERT INTO `sys_role_menu` VALUES (931, '2019-11-06 16:28:47.276814', '2019-11-06 16:28:47.276814', 26, 0);
INSERT INTO `sys_role_menu` VALUES (953, '2019-11-20 15:38:36.301783', '2019-11-20 15:38:36.301783', 29, 1);
INSERT INTO `sys_role_menu` VALUES (954, '2019-11-20 15:38:36.311870', '2019-11-20 15:38:36.311870', 29, 53);
INSERT INTO `sys_role_menu` VALUES (955, '2019-11-20 15:38:36.324812', '2019-11-20 15:38:36.324812', 29, 45);
INSERT INTO `sys_role_menu` VALUES (956, '2019-11-20 15:38:36.331792', '2019-11-20 15:38:36.331792', 29, 43);
INSERT INTO `sys_role_menu` VALUES (957, '2019-11-20 15:38:36.340468', '2019-11-20 15:38:36.340468', 29, 49);
INSERT INTO `sys_role_menu` VALUES (958, '2019-11-20 15:38:36.348038', '2019-11-20 15:38:36.348038', 29, 2);
INSERT INTO `sys_role_menu` VALUES (959, '2019-11-20 15:38:36.355328', '2019-11-20 15:38:36.355328', 29, 27);
INSERT INTO `sys_role_menu` VALUES (960, '2019-11-20 15:38:36.359654', '2019-11-20 15:38:36.359654', 29, 17);
INSERT INTO `sys_role_menu` VALUES (961, '2019-11-20 15:38:36.364408', '2019-11-20 15:38:36.364408', 29, 59);
INSERT INTO `sys_role_menu` VALUES (962, '2019-11-20 15:38:36.368796', '2019-11-20 15:38:36.368796', 29, 60);
INSERT INTO `sys_role_menu` VALUES (963, '2019-11-20 15:38:36.373162', '2019-11-20 15:38:36.373162', 29, 61);
INSERT INTO `sys_role_menu` VALUES (964, '2019-11-20 15:38:36.377858', '2019-11-20 15:38:36.377858', 29, 62);
INSERT INTO `sys_role_menu` VALUES (965, '2019-11-20 15:38:36.384752', '2019-11-20 15:38:36.384752', 29, 63);
INSERT INTO `sys_role_menu` VALUES (966, '2019-11-20 15:38:36.393795', '2019-11-20 15:38:36.393795', 29, 65);
INSERT INTO `sys_role_menu` VALUES (967, '2019-11-20 15:38:36.399660', '2019-11-20 15:38:36.399660', 29, 18);
INSERT INTO `sys_role_menu` VALUES (968, '2019-11-20 15:38:36.405684', '2019-11-20 15:38:36.405684', 29, 19);
INSERT INTO `sys_role_menu` VALUES (969, '2019-11-20 15:38:36.417278', '2019-11-20 15:38:36.417278', 29, 20);
INSERT INTO `sys_role_menu` VALUES (970, '2019-11-20 15:38:36.425006', '2019-11-20 15:38:36.425006', 29, 21);
INSERT INTO `sys_role_menu` VALUES (971, '2019-11-20 15:38:36.432167', '2019-11-20 15:38:36.432167', 29, 8);
INSERT INTO `sys_role_menu` VALUES (972, '2019-11-20 15:38:36.441416', '2019-11-20 15:38:36.441416', 29, 10);
INSERT INTO `sys_role_menu` VALUES (973, '2019-11-20 15:38:36.448209', '2019-11-20 15:38:36.448209', 29, 11);
INSERT INTO `sys_role_menu` VALUES (974, '2019-11-20 15:38:36.452642', '2019-11-20 15:38:36.452642', 29, 12);
INSERT INTO `sys_role_menu` VALUES (975, '2019-11-20 15:38:36.458106', '2019-11-20 15:38:36.458106', 29, 13);
INSERT INTO `sys_role_menu` VALUES (976, '2019-11-20 15:38:36.462988', '2019-11-20 15:38:36.462988', 29, 22);
INSERT INTO `sys_role_menu` VALUES (977, '2019-11-20 15:38:36.467914', '2019-11-20 15:38:36.467914', 29, 23);
INSERT INTO `sys_role_menu` VALUES (978, '2019-11-20 15:38:36.474978', '2019-11-20 15:38:36.474978', 29, 24);
INSERT INTO `sys_role_menu` VALUES (979, '2019-11-20 15:38:36.479461', '2019-11-20 15:38:36.479461', 29, 25);
INSERT INTO `sys_role_menu` VALUES (980, '2019-11-20 15:38:36.484749', '2019-11-20 15:38:36.484749', 29, 26);
INSERT INTO `sys_role_menu` VALUES (981, '2019-11-20 15:38:36.489338', '2019-11-20 15:38:36.489338', 29, 28);
INSERT INTO `sys_role_menu` VALUES (982, '2019-11-20 15:38:36.493807', '2019-11-20 15:38:36.493807', 29, 29);
INSERT INTO `sys_role_menu` VALUES (983, '2019-11-20 15:38:36.499537', '2019-11-20 15:38:36.499537', 29, 30);
INSERT INTO `sys_role_menu` VALUES (984, '2019-11-20 15:38:36.510351', '2019-11-20 15:38:36.510351', 29, 51);
INSERT INTO `sys_role_menu` VALUES (985, '2019-11-20 15:38:36.514727', '2019-11-20 15:38:36.514727', 29, 47);
INSERT INTO `sys_role_menu` VALUES (986, '2019-11-20 15:38:36.518915', '2019-11-20 15:38:36.518915', 29, 48);
INSERT INTO `sys_role_menu` VALUES (1021, '2019-11-20 15:48:57.986005', '2019-11-20 15:48:57.986005', 30, 1);
INSERT INTO `sys_role_menu` VALUES (1022, '2019-11-20 15:48:58.106434', '2019-11-20 15:48:58.106434', 30, 53);
INSERT INTO `sys_role_menu` VALUES (1023, '2019-11-20 15:48:58.212226', '2019-11-20 15:48:58.212226', 30, 45);
INSERT INTO `sys_role_menu` VALUES (1024, '2019-11-20 15:48:58.304996', '2019-11-20 15:48:58.304996', 30, 43);
INSERT INTO `sys_role_menu` VALUES (1025, '2019-11-20 15:48:58.396317', '2019-11-20 15:48:58.396317', 30, 49);
INSERT INTO `sys_role_menu` VALUES (1026, '2019-11-20 15:48:58.485613', '2019-11-20 15:48:58.485613', 30, 2);
INSERT INTO `sys_role_menu` VALUES (1027, '2019-11-20 15:48:58.583594', '2019-11-20 15:48:58.583594', 30, 27);
INSERT INTO `sys_role_menu` VALUES (1028, '2019-11-20 15:48:58.703265', '2019-11-20 15:48:58.703265', 30, 17);
INSERT INTO `sys_role_menu` VALUES (1029, '2019-11-20 15:48:58.809437', '2019-11-20 15:48:58.809437', 30, 59);
INSERT INTO `sys_role_menu` VALUES (1030, '2019-11-20 15:48:58.903667', '2019-11-20 15:48:58.903667', 30, 60);
INSERT INTO `sys_role_menu` VALUES (1031, '2019-11-20 15:48:58.991331', '2019-11-20 15:48:58.991331', 30, 61);
INSERT INTO `sys_role_menu` VALUES (1032, '2019-11-20 15:48:59.082845', '2019-11-20 15:48:59.082845', 30, 62);
INSERT INTO `sys_role_menu` VALUES (1033, '2019-11-20 15:48:59.185234', '2019-11-20 15:48:59.185234', 30, 63);
INSERT INTO `sys_role_menu` VALUES (1034, '2019-11-20 15:48:59.307216', '2019-11-20 15:48:59.307216', 30, 65);
INSERT INTO `sys_role_menu` VALUES (1035, '2019-11-20 15:48:59.424020', '2019-11-20 15:48:59.424020', 30, 18);
INSERT INTO `sys_role_menu` VALUES (1036, '2019-11-20 15:48:59.518959', '2019-11-20 15:48:59.518959', 30, 19);
INSERT INTO `sys_role_menu` VALUES (1037, '2019-11-20 15:48:59.608891', '2019-11-20 15:48:59.608891', 30, 20);
INSERT INTO `sys_role_menu` VALUES (1038, '2019-11-20 15:48:59.698854', '2019-11-20 15:48:59.698854', 30, 21);
INSERT INTO `sys_role_menu` VALUES (1039, '2019-11-20 15:48:59.796802', '2019-11-20 15:48:59.796802', 30, 8);
INSERT INTO `sys_role_menu` VALUES (1040, '2019-11-20 15:48:59.916117', '2019-11-20 15:48:59.916117', 30, 10);
INSERT INTO `sys_role_menu` VALUES (1041, '2019-11-20 15:49:00.020465', '2019-11-20 15:49:00.020465', 30, 11);
INSERT INTO `sys_role_menu` VALUES (1042, '2019-11-20 15:49:00.113954', '2019-11-20 15:49:00.113954', 30, 12);
INSERT INTO `sys_role_menu` VALUES (1043, '2019-11-20 15:49:00.203839', '2019-11-20 15:49:00.203839', 30, 13);
INSERT INTO `sys_role_menu` VALUES (1044, '2019-11-20 15:49:00.294606', '2019-11-20 15:49:00.294606', 30, 22);
INSERT INTO `sys_role_menu` VALUES (1045, '2019-11-20 15:49:00.393320', '2019-11-20 15:49:00.393320', 30, 23);
INSERT INTO `sys_role_menu` VALUES (1046, '2019-11-20 15:49:00.512970', '2019-11-20 15:49:00.512970', 30, 24);
INSERT INTO `sys_role_menu` VALUES (1047, '2019-11-20 15:49:00.616566', '2019-11-20 15:49:00.616566', 30, 25);
INSERT INTO `sys_role_menu` VALUES (1048, '2019-11-20 15:49:00.710823', '2019-11-20 15:49:00.710823', 30, 26);
INSERT INTO `sys_role_menu` VALUES (1049, '2019-11-20 15:49:00.798504', '2019-11-20 15:49:00.798504', 30, 28);
INSERT INTO `sys_role_menu` VALUES (1050, '2019-11-20 15:49:00.887412', '2019-11-20 15:49:00.887412', 30, 29);
INSERT INTO `sys_role_menu` VALUES (1051, '2019-11-20 15:49:00.986103', '2019-11-20 15:49:00.986103', 30, 30);
INSERT INTO `sys_role_menu` VALUES (1052, '2019-11-20 15:49:01.105769', '2019-11-20 15:49:01.105769', 30, 51);
INSERT INTO `sys_role_menu` VALUES (1053, '2019-11-20 15:49:01.218223', '2019-11-20 15:49:01.218223', 30, 47);
INSERT INTO `sys_role_menu` VALUES (1054, '2019-11-20 15:49:01.311715', '2019-11-20 15:49:01.311715', 30, 48);
INSERT INTO `sys_role_menu` VALUES (1087, '2019-11-20 15:50:31.086823', '2019-11-20 15:50:31.086823', 28, 1);
INSERT INTO `sys_role_menu` VALUES (1088, '2019-11-20 15:50:31.202090', '2019-11-20 15:50:31.202090', 28, 53);
INSERT INTO `sys_role_menu` VALUES (1089, '2019-11-20 15:50:31.332046', '2019-11-20 15:50:31.332046', 28, 45);
INSERT INTO `sys_role_menu` VALUES (1090, '2019-11-20 15:50:31.453922', '2019-11-20 15:50:31.453922', 28, 43);
INSERT INTO `sys_role_menu` VALUES (1091, '2019-11-20 15:50:31.547850', '2019-11-20 15:50:31.547850', 28, 49);
INSERT INTO `sys_role_menu` VALUES (1092, '2019-11-20 15:50:31.644821', '2019-11-20 15:50:31.644821', 28, 2);
INSERT INTO `sys_role_menu` VALUES (1093, '2019-11-20 15:50:31.753734', '2019-11-20 15:50:31.753734', 28, 27);
INSERT INTO `sys_role_menu` VALUES (1094, '2019-11-20 15:50:31.868616', '2019-11-20 15:50:31.868616', 28, 17);
INSERT INTO `sys_role_menu` VALUES (1095, '2019-11-20 15:50:32.004953', '2019-11-20 15:50:32.004953', 28, 59);
INSERT INTO `sys_role_menu` VALUES (1096, '2019-11-20 15:50:32.125528', '2019-11-20 15:50:32.125528', 28, 60);
INSERT INTO `sys_role_menu` VALUES (1097, '2019-11-20 15:50:32.218069', '2019-11-20 15:50:32.218069', 28, 61);
INSERT INTO `sys_role_menu` VALUES (1098, '2019-11-20 15:50:32.315766', '2019-11-20 15:50:32.315766', 28, 62);
INSERT INTO `sys_role_menu` VALUES (1099, '2019-11-20 15:50:32.423330', '2019-11-20 15:50:32.423330', 28, 63);
INSERT INTO `sys_role_menu` VALUES (1100, '2019-11-20 15:50:32.537843', '2019-11-20 15:50:32.537843', 28, 65);
INSERT INTO `sys_role_menu` VALUES (1101, '2019-11-20 15:50:32.667348', '2019-11-20 15:50:32.667348', 28, 18);
INSERT INTO `sys_role_menu` VALUES (1102, '2019-11-20 15:50:32.801051', '2019-11-20 15:50:32.801051', 28, 19);
INSERT INTO `sys_role_menu` VALUES (1103, '2019-11-20 15:50:32.907455', '2019-11-20 15:50:32.907455', 28, 20);
INSERT INTO `sys_role_menu` VALUES (1104, '2019-11-20 15:50:33.021963', '2019-11-20 15:50:33.021963', 28, 21);
INSERT INTO `sys_role_menu` VALUES (1105, '2019-11-20 15:50:33.152371', '2019-11-20 15:50:33.152371', 28, 8);
INSERT INTO `sys_role_menu` VALUES (1106, '2019-11-20 15:50:33.258070', '2019-11-20 15:50:33.258070', 28, 10);
INSERT INTO `sys_role_menu` VALUES (1107, '2019-11-20 15:50:33.354995', '2019-11-20 15:50:33.354995', 28, 11);
INSERT INTO `sys_role_menu` VALUES (1108, '2019-11-20 15:50:33.466397', '2019-11-20 15:50:33.466397', 28, 12);
INSERT INTO `sys_role_menu` VALUES (1109, '2019-11-20 15:50:33.582469', '2019-11-20 15:50:33.582469', 28, 13);
INSERT INTO `sys_role_menu` VALUES (1110, '2019-11-20 15:50:33.696298', '2019-11-20 15:50:33.696298', 28, 22);
INSERT INTO `sys_role_menu` VALUES (1111, '2019-11-20 15:50:33.825341', '2019-11-20 15:50:33.825341', 28, 23);
INSERT INTO `sys_role_menu` VALUES (1112, '2019-11-20 15:50:33.930322', '2019-11-20 15:50:33.930322', 28, 24);
INSERT INTO `sys_role_menu` VALUES (1113, '2019-11-20 15:50:34.026717', '2019-11-20 15:50:34.026717', 28, 25);
INSERT INTO `sys_role_menu` VALUES (1114, '2019-11-20 15:50:34.137896', '2019-11-20 15:50:34.137896', 28, 26);
INSERT INTO `sys_role_menu` VALUES (1115, '2019-11-20 15:50:34.246722', '2019-11-20 15:50:34.246722', 28, 28);
INSERT INTO `sys_role_menu` VALUES (1116, '2019-11-20 15:50:34.361437', '2019-11-20 15:50:34.361437', 28, 29);
INSERT INTO `sys_role_menu` VALUES (1117, '2019-11-20 15:50:34.489654', '2019-11-20 15:50:34.489654', 28, 30);
INSERT INTO `sys_role_menu` VALUES (1118, '2019-11-20 15:50:34.595799', '2019-11-20 15:50:34.595799', 28, 51);
INSERT INTO `sys_role_menu` VALUES (1146, '2020-01-18 14:57:57.259603', '2020-01-18 14:57:57.259603', 27, 27);
INSERT INTO `sys_role_menu` VALUES (1147, '2020-01-18 14:57:57.362234', '2020-01-18 14:57:57.362234', 27, 17);
INSERT INTO `sys_role_menu` VALUES (1148, '2020-01-18 14:57:57.460499', '2020-01-18 14:57:57.460499', 27, 59);
INSERT INTO `sys_role_menu` VALUES (1149, '2020-01-18 14:57:57.570514', '2020-01-18 14:57:57.570514', 27, 60);
INSERT INTO `sys_role_menu` VALUES (1150, '2020-01-18 14:57:57.674255', '2020-01-18 14:57:57.674255', 27, 61);
INSERT INTO `sys_role_menu` VALUES (1151, '2020-01-18 14:57:57.768070', '2020-01-18 14:57:57.768070', 27, 62);
INSERT INTO `sys_role_menu` VALUES (1152, '2020-01-18 14:57:57.876489', '2020-01-18 14:57:57.876489', 27, 63);
INSERT INTO `sys_role_menu` VALUES (1153, '2020-01-18 14:57:57.976171', '2020-01-18 14:57:57.976171', 27, 65);
INSERT INTO `sys_role_menu` VALUES (1154, '2020-01-18 14:57:58.073744', '2020-01-18 14:57:58.073744', 27, 18);
INSERT INTO `sys_role_menu` VALUES (1155, '2020-01-18 14:57:58.184675', '2020-01-18 14:57:58.184675', 27, 19);
INSERT INTO `sys_role_menu` VALUES (1156, '2020-01-18 14:57:58.287746', '2020-01-18 14:57:58.287746', 27, 20);
INSERT INTO `sys_role_menu` VALUES (1157, '2020-01-18 14:57:58.380441', '2020-01-18 14:57:58.380441', 27, 21);
INSERT INTO `sys_role_menu` VALUES (1158, '2020-01-18 14:57:58.494809', '2020-01-18 14:57:58.494809', 27, 8);
INSERT INTO `sys_role_menu` VALUES (1159, '2020-01-18 14:57:58.593781', '2020-01-18 14:57:58.593781', 27, 10);
INSERT INTO `sys_role_menu` VALUES (1160, '2020-01-18 14:57:58.691644', '2020-01-18 14:57:58.691644', 27, 11);
INSERT INTO `sys_role_menu` VALUES (1161, '2020-01-18 14:57:58.807852', '2020-01-18 14:57:58.807852', 27, 12);
INSERT INTO `sys_role_menu` VALUES (1162, '2020-01-18 14:57:58.909562', '2020-01-18 14:57:58.909562', 27, 13);
INSERT INTO `sys_role_menu` VALUES (1163, '2020-01-18 14:57:59.009430', '2020-01-18 14:57:59.009430', 27, 22);
INSERT INTO `sys_role_menu` VALUES (1164, '2020-01-18 14:57:59.126996', '2020-01-18 14:57:59.126996', 27, 23);
INSERT INTO `sys_role_menu` VALUES (1165, '2020-01-18 14:57:59.226387', '2020-01-18 14:57:59.226387', 27, 24);
INSERT INTO `sys_role_menu` VALUES (1166, '2020-01-18 14:57:59.324691', '2020-01-18 14:57:59.324691', 27, 25);
INSERT INTO `sys_role_menu` VALUES (1167, '2020-01-18 14:57:59.434213', '2020-01-18 14:57:59.434213', 27, 26);
INSERT INTO `sys_role_menu` VALUES (1168, '2020-01-18 14:57:59.538841', '2020-01-18 14:57:59.538841', 27, 29);
INSERT INTO `sys_role_menu` VALUES (1169, '2020-01-18 14:57:59.638282', '2020-01-18 14:57:59.638282', 27, 30);
INSERT INTO `sys_role_menu` VALUES (1170, '2020-01-18 14:57:59.745029', '2020-01-18 14:57:59.745029', 27, 2);
INSERT INTO `sys_role_menu` VALUES (1171, '2020-01-18 14:57:59.845509', '2020-01-18 14:57:59.845509', 27, 28);
INSERT INTO `sys_role_menu` VALUES (1172, '2020-01-18 16:21:20.840827', '2020-01-18 16:21:20.840827', 31, 1);
INSERT INTO `sys_role_menu` VALUES (1173, '2020-01-18 16:21:20.927452', '2020-01-18 16:21:20.927452', 31, 53);
INSERT INTO `sys_role_menu` VALUES (1174, '2020-01-18 16:21:21.031470', '2020-01-18 16:21:21.031470', 31, 45);
INSERT INTO `sys_role_menu` VALUES (1175, '2020-01-18 16:21:21.150072', '2020-01-18 16:21:21.150072', 31, 43);
INSERT INTO `sys_role_menu` VALUES (1176, '2020-01-18 16:21:21.249210', '2020-01-18 16:21:21.249210', 31, 49);
INSERT INTO `sys_role_menu` VALUES (1177, '2020-01-18 16:21:21.335289', '2020-01-18 16:21:21.335289', 31, 27);
INSERT INTO `sys_role_menu` VALUES (1178, '2020-01-18 16:21:21.432042', '2020-01-18 16:21:21.432042', 31, 17);
INSERT INTO `sys_role_menu` VALUES (1179, '2020-01-18 16:21:21.538085', '2020-01-18 16:21:21.538085', 31, 59);
INSERT INTO `sys_role_menu` VALUES (1180, '2020-01-18 16:21:21.641298', '2020-01-18 16:21:21.641298', 31, 60);
INSERT INTO `sys_role_menu` VALUES (1181, '2020-01-18 16:21:21.727213', '2020-01-18 16:21:21.727213', 31, 61);
INSERT INTO `sys_role_menu` VALUES (1182, '2020-01-18 16:21:21.817164', '2020-01-18 16:21:21.817164', 31, 62);
INSERT INTO `sys_role_menu` VALUES (1183, '2020-01-18 16:21:21.916078', '2020-01-18 16:21:21.916078', 31, 63);
INSERT INTO `sys_role_menu` VALUES (1184, '2020-01-18 16:21:22.016313', '2020-01-18 16:21:22.016313', 31, 65);
INSERT INTO `sys_role_menu` VALUES (1185, '2020-01-18 16:21:22.100233', '2020-01-18 16:21:22.100233', 31, 18);
INSERT INTO `sys_role_menu` VALUES (1186, '2020-01-18 16:21:22.193411', '2020-01-18 16:21:22.193411', 31, 19);
INSERT INTO `sys_role_menu` VALUES (1187, '2020-01-18 16:21:22.290044', '2020-01-18 16:21:22.290044', 31, 20);
INSERT INTO `sys_role_menu` VALUES (1188, '2020-01-18 16:21:22.390495', '2020-01-18 16:21:22.390495', 31, 21);
INSERT INTO `sys_role_menu` VALUES (1189, '2020-01-18 16:21:22.476395', '2020-01-18 16:21:22.476395', 31, 8);
INSERT INTO `sys_role_menu` VALUES (1190, '2020-01-18 16:21:22.573599', '2020-01-18 16:21:22.573599', 31, 10);
INSERT INTO `sys_role_menu` VALUES (1191, '2020-01-18 16:21:22.671788', '2020-01-18 16:21:22.671788', 31, 11);
INSERT INTO `sys_role_menu` VALUES (1192, '2020-01-18 16:21:22.776534', '2020-01-18 16:21:22.776534', 31, 12);
INSERT INTO `sys_role_menu` VALUES (1193, '2020-01-18 16:21:22.860915', '2020-01-18 16:21:22.860915', 31, 13);
INSERT INTO `sys_role_menu` VALUES (1194, '2020-01-18 16:21:22.952658', '2020-01-18 16:21:22.952658', 31, 22);
INSERT INTO `sys_role_menu` VALUES (1195, '2020-01-18 16:21:23.054920', '2020-01-18 16:21:23.054920', 31, 23);
INSERT INTO `sys_role_menu` VALUES (1196, '2020-01-18 16:21:23.172532', '2020-01-18 16:21:23.172532', 31, 24);
INSERT INTO `sys_role_menu` VALUES (1197, '2020-01-18 16:21:23.276214', '2020-01-18 16:21:23.276214', 31, 25);
INSERT INTO `sys_role_menu` VALUES (1198, '2020-01-18 16:21:23.372288', '2020-01-18 16:21:23.372288', 31, 26);
INSERT INTO `sys_role_menu` VALUES (1199, '2020-01-18 16:21:23.479075', '2020-01-18 16:21:23.479075', 31, 2);

-- ----------------------------
-- Table structure for sys_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cron` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `limit` int(11) NULL DEFAULT NULL,
  `every` int(11) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `startDate` datetime(0) NULL DEFAULT NULL,
  `endDate` datetime(0) NULL DEFAULT NULL,
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `repeatConf` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nextRunTime` datetime(0) NULL DEFAULT NULL,
  `taskType` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_57ae639c0d4a32aa99fda3df77`(`createTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_task
-- ----------------------------
INSERT INTO `sys_task` VALUES (91, '2019-12-10 10:13:16.837000', '2020-05-13 16:49:21.000000', '清理系统请求日志', '0 0 0 * * *', NULL, NULL, '每天0点执行', 1, NULL, NULL, NULL, 'sys.log.clear()', 0, '{\"count\":1,\"id\":\"91\",\"createTime\":\"2019-12-10 10:13:16\",\"updateTime\":\"2020-05-11 18:25:13\",\"name\":\"清理系统请求日志\",\"cron\":\"0 0 0 * * *\",\"remark\":\"每天0点执行\",\"status\":1,\"service\":\"sys.log.clear()\",\"type\":0,\"nextRunTime\":\"2020-05-12 00:00:00\",\"taskType\":0,\"jobId\":\"91\"}', '2020-05-16 00:00:00', 0);
INSERT INTO `sys_task` VALUES (92, '2019-12-10 10:27:42.657000', '2020-05-14 20:24:19.004000', '服务状态监控', '*/3 * * * * *', NULL, NULL, '每3秒获取一次服务状态信息', 0, NULL, NULL, NULL, 'sys.info.saveRecord()', 0, '{\"count\":1,\"id\":\"92\",\"createTime\":\"2019-12-10 10:27:42\",\"updateTime\":\"2020-01-18 14:47:31\",\"name\":\"服务状态监控\",\"cron\":\"*/3 * * * * *\",\"remark\":\"每3秒获取一次服务状态信息\",\"status\":1,\"service\":\"sys.info.saveRecord()\",\"type\":0,\"nextRunTime\":\"2020-05-11 18:29:03\",\"taskType\":0,\"jobId\":\"92\"}', NULL, 0);

-- ----------------------------
-- Table structure for sys_task_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_task_log`;
CREATE TABLE `sys_task_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `taskId` bigint(20) NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_18c5af7cb8a1ccc671d077f6a0`(`createTime`) USING BTREE,
  INDEX `IDX_46ad23dbfa00ffe8b33f0c3eae`(`taskId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58644 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_task_log
-- ----------------------------
INSERT INTO `sys_task_log` VALUES (58556, '2020-05-14 12:43:08.672343', '2020-05-14 12:43:08.672343', 91, 1, '');
INSERT INTO `sys_task_log` VALUES (58623, '2020-05-14 16:03:39.009332', '2020-05-14 16:03:39.009332', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58624, '2020-05-14 16:03:42.008958', '2020-05-14 16:03:42.008958', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58625, '2020-05-14 16:03:45.009691', '2020-05-14 16:03:45.009691', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58626, '2020-05-14 16:03:48.009726', '2020-05-14 16:03:48.009726', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58627, '2020-05-14 16:03:51.009662', '2020-05-14 16:03:51.009662', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58628, '2020-05-14 16:03:54.008640', '2020-05-14 16:03:54.008640', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58629, '2020-05-14 16:03:57.011121', '2020-05-14 16:03:57.011121', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58630, '2020-05-14 16:04:00.009511', '2020-05-14 16:04:00.009511', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58631, '2020-05-14 16:04:03.009796', '2020-05-14 16:04:03.009796', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58632, '2020-05-14 16:04:06.009389', '2020-05-14 16:04:06.009389', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58633, '2020-05-14 16:04:09.009197', '2020-05-14 16:04:09.009197', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58634, '2020-05-14 16:04:12.013193', '2020-05-14 16:04:12.013193', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58635, '2020-05-14 16:04:15.011542', '2020-05-14 16:04:15.011542', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58636, '2020-05-14 16:04:18.010684', '2020-05-14 16:04:18.010684', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58637, '2020-05-14 16:04:21.009168', '2020-05-14 16:04:21.009168', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58638, '2020-05-14 16:04:24.010154', '2020-05-14 16:04:24.010154', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58639, '2020-05-14 20:24:10.626318', '2020-05-14 20:24:10.626318', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58640, '2020-05-14 20:24:12.014342', '2020-05-14 20:24:12.014342', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58641, '2020-05-14 20:24:15.010012', '2020-05-14 20:24:15.010012', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58642, '2020-05-14 20:24:19.041820', '2020-05-14 20:24:19.041820', 92, 1, '');
INSERT INTO `sys_task_log` VALUES (58643, '2020-05-15 00:00:00.033475', '2020-05-15 00:00:00.033475', 91, 1, '');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `passwordV` int(11) NOT NULL DEFAULT 1,
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `headImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `departmentId` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_9e7164b2f1ea1348bc0eb0a7da`(`username`) USING BTREE,
  INDEX `IDX_167ca903c7c3418b8a4376e1a4`(`createTime`) USING BTREE,
  INDEX `IDX_7bef5cdb09432b1dfc46a063ce`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '超级管理员', 'e10adc3949ba59abbe56e057f20f883e', 1, '超管', 'https://qlogo1.store.qq.com/qzone/712049188/712049188/100?1509501507', '123456@qq.com', '备注', 1, '2019-06-25 10:20:20.600461', '2019-11-12 09:40:27.000000', 'admin', '18000000000', 1);
INSERT INTO `sys_user` VALUES (16, '测试', '4297f44b13955235245b2497399d7a93', 1, '测试', NULL, NULL, NULL, 1, '2019-11-11 10:37:43.851039', '2020-01-18 15:21:54.000000', 'test', NULL, 1);
INSERT INTO `sys_user` VALUES (17, '阿', 'e10adc3949ba59abbe56e057f20f883e', 1, '123', NULL, NULL, NULL, 1, '2019-11-18 18:07:57.648144', '2019-11-18 18:07:57.648144', '123', NULL, 16);
INSERT INTO `sys_user` VALUES (18, '阿打算', 'e10adc3949ba59abbe56e057f20f883e', 1, '12312', NULL, NULL, NULL, 1, '2019-11-18 18:20:04.326660', '2019-11-18 18:20:04.326660', '3123', NULL, 13);
INSERT INTO `sys_user` VALUES (19, '33', 'e10adc3949ba59abbe56e057f20f883e', 1, '333', NULL, NULL, NULL, 1, '2019-11-19 00:02:27.390425', '2019-11-19 00:02:27.390425', '333', NULL, 17);
INSERT INTO `sys_user` VALUES (20, '测试部门权限', 'e10adc3949ba59abbe56e057f20f883e', 1, '测试部门权限昵称', NULL, NULL, NULL, 1, '2019-11-20 15:39:28.637665', '2019-11-20 15:39:28.637665', 'testdep', NULL, 1);
INSERT INTO `sys_user` VALUES (21, '测试部门权限2', 'e10adc3949ba59abbe56e057f20f883e', 1, '权限2昵称', NULL, NULL, NULL, 1, '2019-11-20 15:48:31.407260', '2019-11-20 15:48:31.407260', 'testdp2', NULL, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `userId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_56d79fdd5342d2e35d7d9fec02`(`createTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, '2019-09-11 23:05:18.890144', '2019-09-11 23:05:18.890144', 1, 1);
INSERT INTO `sys_user_role` VALUES (2, '2019-09-25 10:11:32.665042', '2019-09-25 10:11:32.665042', 2, 1);
INSERT INTO `sys_user_role` VALUES (5, '2019-10-12 17:21:20.139560', '2019-10-12 17:21:20.139560', 3, 22);
INSERT INTO `sys_user_role` VALUES (30, '2019-11-01 14:20:10.865935', '2019-11-01 14:20:10.865935', 5, 22);
INSERT INTO `sys_user_role` VALUES (31, '2019-11-01 14:20:10.872003', '2019-11-01 14:20:10.872003', 5, 1);
INSERT INTO `sys_user_role` VALUES (32, '2019-11-01 14:20:10.877348', '2019-11-01 14:20:10.877348', 5, 24);
INSERT INTO `sys_user_role` VALUES (37, '2019-11-02 17:11:07.717747', '2019-11-02 17:11:07.717747', 4, 1);
INSERT INTO `sys_user_role` VALUES (38, '2019-11-02 17:11:07.722790', '2019-11-02 17:11:07.722790', 4, 22);
INSERT INTO `sys_user_role` VALUES (39, '2019-11-02 17:11:07.727410', '2019-11-02 17:11:07.727410', 4, 23);
INSERT INTO `sys_user_role` VALUES (40, '2019-11-02 17:11:07.735471', '2019-11-02 17:11:07.735471', 4, 24);
INSERT INTO `sys_user_role` VALUES (44, '2019-11-04 17:50:35.158438', '2019-11-04 17:50:35.158438', 6, 22);
INSERT INTO `sys_user_role` VALUES (45, '2019-11-04 17:50:35.163856', '2019-11-04 17:50:35.163856', 6, 23);
INSERT INTO `sys_user_role` VALUES (51, '2019-11-05 22:35:14.306468', '2019-11-05 22:35:14.306468', 7, 22);
INSERT INTO `sys_user_role` VALUES (55, '2019-11-06 00:41:10.225544', '2019-11-06 00:41:10.225544', 9, 23);
INSERT INTO `sys_user_role` VALUES (56, '2019-11-06 00:41:10.230733', '2019-11-06 00:41:10.230733', 9, 22);
INSERT INTO `sys_user_role` VALUES (57, '2019-11-06 00:41:10.235927', '2019-11-06 00:41:10.235927', 9, 25);
INSERT INTO `sys_user_role` VALUES (58, '2019-11-06 00:41:10.240702', '2019-11-06 00:41:10.240702', 9, 1);
INSERT INTO `sys_user_role` VALUES (59, '2019-11-06 00:47:44.162575', '2019-11-06 00:47:44.162575', 10, 22);
INSERT INTO `sys_user_role` VALUES (60, '2019-11-06 00:47:44.167694', '2019-11-06 00:47:44.167694', 10, 23);
INSERT INTO `sys_user_role` VALUES (64, '2019-11-07 14:12:53.451430', '2019-11-07 14:12:53.451430', 12, 1);
INSERT INTO `sys_user_role` VALUES (71, '2019-11-10 08:58:15.413834', '2019-11-10 08:58:15.413834', 14, 27);
INSERT INTO `sys_user_role` VALUES (76, '2019-11-11 09:35:55.469018', '2019-11-11 09:35:55.469018', 13, 1);
INSERT INTO `sys_user_role` VALUES (77, '2019-11-11 09:35:55.474682', '2019-11-11 09:35:55.474682', 13, 27);
INSERT INTO `sys_user_role` VALUES (78, '2019-11-11 10:22:34.919093', '2019-11-11 10:22:34.919093', 15, 27);
INSERT INTO `sys_user_role` VALUES (79, '2019-11-11 10:22:34.926909', '2019-11-11 10:22:34.926909', 15, 28);
INSERT INTO `sys_user_role` VALUES (87, '2019-11-18 18:07:57.801548', '2019-11-18 18:07:57.801548', 17, 1);
INSERT INTO `sys_user_role` VALUES (88, '2019-11-18 18:20:04.464118', '2019-11-18 18:20:04.464118', 18, 27);
INSERT INTO `sys_user_role` VALUES (89, '2019-11-19 00:02:27.513399', '2019-11-19 00:02:27.513399', 19, 29);
INSERT INTO `sys_user_role` VALUES (90, '2019-11-20 15:39:28.649071', '2019-11-20 15:39:28.649071', 20, 29);
INSERT INTO `sys_user_role` VALUES (91, '2019-11-20 15:48:31.556205', '2019-11-20 15:48:31.556205', 21, 30);
INSERT INTO `sys_user_role` VALUES (95, '2020-01-18 15:22:05.080785', '2020-01-18 15:22:05.080785', 16, 28);

SET FOREIGN_KEY_CHECKS = 1;
