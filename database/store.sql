/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : store

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 16/05/2024 19:06:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_detail
-- ----------------------------
DROP TABLE IF EXISTS `account_detail`;
CREATE TABLE `account_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `birthdate` datetime NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` bigint NULL DEFAULT NULL,
  `address` varchar(265) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK9ova18pr7v2oy5naxm6godxg3`(`account_id` ASC) USING BTREE,
  CONSTRAINT `FK9ova18pr7v2oy5naxm6godxg3` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_detail
-- ----------------------------
INSERT INTO `account_detail` VALUES (1, '2022-08-27 00:00:00', 'tanvx308@gmail.com', 'Vũ Xuân Tân', 'Nam', '0366202468', 1, 'Hà Nội 36 phố phường');
INSERT INTO `account_detail` VALUES (2, '2022-08-28 00:00:00', 'minhminhnc@gmail.com', 'Nguyễn Công Minh', 'Nữ', '0697856354', 2, 'xxx, Phường Ngọc Thụy, Quận Long Biên, Thành phố Hà Nội');
INSERT INTO `account_detail` VALUES (3, '2001-04-02 00:00:00', 'chudai010421@gmail.com', 'Chu Văn Đài', 'Nam', '0587719303', 3, '');
INSERT INTO `account_detail` VALUES (4, '1996-08-07 00:00:00', 'hunghv070896@gmail.com', 'Hoàng Văn Hưng', 'Nam', '0364690214', 4, '');
INSERT INTO `account_detail` VALUES (5, '2001-02-06 00:00:00', 'manhqnph11859@fpt.edu.vn', 'Quách Ngọc Mạnh', 'Nữ', '0365046857', 5, '');
INSERT INTO `account_detail` VALUES (6, '2001-03-07 00:00:00', 'hieuncph12247@fpt.edu.vn', 'Nguyễn Công Hiếu', 'Nam', '0965799576', 6, '');
INSERT INTO `account_detail` VALUES (7, '2022-08-27 00:00:00', 'minhncph13186@fpt.edu.vn', 'Chu Công Minh', 'Nam', '0987654321', 7, '69 Long Biên');
INSERT INTO `account_detail` VALUES (8, '2022-08-28 00:00:00', 'minh17cm@fpt.edu.vn', 'Chu Công Minh', 'Nữ', '0987654321', 8, '69 Long Biên, Mỹ');
INSERT INTO `account_detail` VALUES (9, '2022-07-24 00:00:00', 'tuanhaph12996@fpt.edu.vn', 'Chu Công Minh', 'Nam', '0987654321', 9, 'HN');
INSERT INTO `account_detail` VALUES (10, '2022-07-24 00:00:00', 'englishvillashare@gmail.com', 'Chu Công Minh', 'Nữ', '0987654321', 10, 'HN');
INSERT INTO `account_detail` VALUES (11, '2022-07-24 00:00:00', 'tanvx308@gmail.com', 'Vu Xuan Tan', 'Nam', '0987654321', 11, 'số 55 Tổ Dân Phố Đông Ba');
INSERT INTO `account_detail` VALUES (12, '2022-07-24 00:00:00', 'minhcmc69@gmail.com', 'Chu Công Minh', 'Nữ', '0987654321', 12, 'Long Biên');
INSERT INTO `account_detail` VALUES (13, '2022-07-24 00:00:00', 'minhncph1318@fpt.edu.vn', 'Chu Công Minh', 'Nữ', '0987654321', 13, 'Long Biên');
INSERT INTO `account_detail` VALUES (14, '2022-08-07 00:00:00', 'minhncph13185@fpt.edu.vn', 'Chu Công Minh', 'Nữ', '0987654321', 14, 'HN');
INSERT INTO `account_detail` VALUES (15, '2022-08-28 00:00:00', 'minhncph13186@cmc.vn', 'Công Minh Khinh Người', 'Nữ', '0987654321', 15, 'Long Biên');
INSERT INTO `account_detail` VALUES (16, '2024-05-16 00:00:00', 'admin.shoes@gmail.com', 'ADMIN', 'Nam', '0382742710', 16, 'Tp.HCM');

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `modify_date` date NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_k8h1bgqoplx0rkngj01pm1rgp`(`username` ASC) USING BTREE,
  INDEX `FKt3wava8ssfdspnh3hg4col3m1`(`role_id` ASC) USING BTREE,
  CONSTRAINT `FKt3wava8ssfdspnh3hg4col3m1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES (1, '2022-06-01', 1, '2022-08-27', '$2a$10$8u4b.UhMGLoKB4UUGED3ZOPBQCF2jh9VSRqCeGqoXNTMshs3zACli', 'tanvx', 1);
INSERT INTO `accounts` VALUES (2, '2022-06-01', 1, '2022-08-28', '$2a$10$wGrHJdgHvTaqlNxxreKtNO4rttRSUgRFZ4LfYeBCRfPFUCvZ5pYCa', 'minhnc', 3);
INSERT INTO `accounts` VALUES (3, '2022-06-01', 1, '2022-06-01', '$2a$10$DnZ83rlh.z.Wvua5MOYCuu0oXvosnyuRIdmPQxwMPVqn.0Rbw.MJC', 'daicv', 2);
INSERT INTO `accounts` VALUES (4, '2022-06-01', 1, '2022-06-01', '$2a$10$wt9PMeccQR5I.qyX2.lseOtu5BvRd9019bHnD.m02N1gQ/wkL9koa', 'manhnq', 3);
INSERT INTO `accounts` VALUES (5, '2022-06-01', 1, '2022-06-01', '$2a$10$LF8y3CRaXeymrPGU33eEsO1GwrffjgwnfMb17MQLzYpJCWXlOhX/6', 'hunghv', 3);
INSERT INTO `accounts` VALUES (6, '2022-06-01', 1, '2022-06-01', '$2a$10$WfghWo8b0Xmg.2jkNoWaz.N/3kH.TPQAM4uipGQ0sgLiogKYTXKU6', 'hieunv', 3);
INSERT INTO `accounts` VALUES (7, '2022-07-17', 1, '2022-07-17', '$2a$10$knFYVxG563kfNlbXCYg1bOrzXm3a5ZiNLt4SrCAO1heM5kp62swMu', 'sa', 2);
INSERT INTO `accounts` VALUES (8, '2022-07-17', 1, '2022-08-28', '$2a$10$tiUL9aNM9K9jD6/F/3XZzup0OZRDVKCltCAbu/2K4KoVGMxR5RjsO', 'minh17cm', 3);
INSERT INTO `accounts` VALUES (9, '2022-07-24', 1, '2022-07-24', '$2a$10$LuofhzCEhaPKArDsyaVT4OSwvvzOdElvkSZedW.vOuJUp90toZqDW', 'sa999', 3);
INSERT INTO `accounts` VALUES (10, '2022-07-24', 1, '2022-07-24', '$2a$10$3EnWRztWKm8Q8Pw4yLPvL.GGUvLzU0x7sX/7rkdyQBzowkLNmddgS', 'minhnc69', 3);
INSERT INTO `accounts` VALUES (11, '2022-07-24', 1, '2022-07-24', '$2a$10$QwKSpsnbVVikqiPZbd90UeXZ3UIcsV2OL81GZHsoscoQgibXK3HgS', 'tanvx_fsoft', 3);
INSERT INTO `accounts` VALUES (12, '2022-07-24', 1, '2022-07-24', '$2a$10$oGQgxgycDxqDiLMyiUNl2.U5e5V.w81cnNq3J9oEmlxDWsHLaodXy', 'minhnc_cmc', 3);
INSERT INTO `accounts` VALUES (13, '2022-07-24', 0, '2022-07-24', '$2a$10$0zqRKuezJ0O5NOuI9pU2iuWYLzcu80sn2EMGEett7k8/WyqiWiY96', 'sa123', 3);
INSERT INTO `accounts` VALUES (14, '2022-08-07', 1, '2022-08-07', '$2a$10$C.S4KmQz6GrbLoZ7HZYBs.Hakk0oQvZJv/uOvKVFUfRnJqLFFcnqa', 'sa22', 3);
INSERT INTO `accounts` VALUES (15, '2022-08-08', 1, '2022-08-28', '$2a$10$f80O3iOaPSYiBEBemo4ZQupIJDbdGIYRCr7LnzHVbbWS0MMrhP19.', 'minh69cmc', 3);
INSERT INTO `accounts` VALUES (16, '2024-05-16', 1, '2024-05-16', '$2a$10$xlJAVY9KrKz.PzDPwfeuZuRc.0VgrstmACfyDdK9dKRrI7cPerGWe', 'admin', 3);

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `price` double NOT NULL,
  `size` int NOT NULL,
  `stock` int NOT NULL,
  `product_id` bigint NULL DEFAULT NULL,
  `cache` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKdmxq368cv2u55c08l151uhwer`(`product_id` ASC) USING BTREE,
  CONSTRAINT `FKdmxq368cv2u55c08l151uhwer` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attribute
-- ----------------------------
INSERT INTO `attribute` VALUES (1, '2022-06-01', '2022-06-01', 1250000, 39, 20, 2, 3, 'Giày Sneaker Adidas Eq21 Triple Black');
INSERT INTO `attribute` VALUES (2, '2022-06-01', '2022-06-01', 1350000, 40, 10, 2, 7, 'Giày Sneaker Adidas Eq21 Triple Black');
INSERT INTO `attribute` VALUES (3, '2022-06-01', '2022-06-01', 1450000, 41, 7, 2, 2, 'Giày Sneaker Adidas Eq21 Triple Black');
INSERT INTO `attribute` VALUES (4, '2022-06-01', '2022-06-01', 1320000, 39, 10, 3, 6, 'Giày Sneaker Adidas Stansmith Mule');
INSERT INTO `attribute` VALUES (5, '2022-06-01', '2022-06-01', 1420000, 40, 10, 3, 6, 'Giày Sneaker Adidas Stansmith Mule');
INSERT INTO `attribute` VALUES (6, '2022-06-01', '2022-06-01', 1520000, 41, 5, 3, 1, 'Giày Sneaker Adidas Stansmith Mule');
INSERT INTO `attribute` VALUES (7, '2022-06-01', '2022-06-01', 1610000, 39, 4, 4, 2, 'Giày Sneaker Adidas 4d Fwd Pulse');
INSERT INTO `attribute` VALUES (8, '2022-06-01', '2022-06-01', 17100000, 40, 9, 4, 1, 'Giày Sneaker Adidas 4d Fwd Pulse');
INSERT INTO `attribute` VALUES (9, '2022-06-01', '2022-06-01', 18100000, 41, 10, 4, 0, 'Giày Sneaker Adidas 4d Fwd Pulse');
INSERT INTO `attribute` VALUES (10, '2022-06-01', '2022-06-01', 1200000, 39, 14, 1, 0, 'Giày Sneaker Adidas Bravada NAM ANA');
INSERT INTO `attribute` VALUES (11, '2022-06-01', '2022-06-01', 1300000, 40, 9, 1, 0, 'Giày Sneaker Adidas Bravada NAM ANA');
INSERT INTO `attribute` VALUES (12, '2022-06-01', '2022-06-01', 1400000, 41, 9, 1, 0, 'Giày Sneaker Adidas Bravada NAM ANA');
INSERT INTO `attribute` VALUES (13, '2022-06-01', '2022-06-01', 1300000, 39, 10, 20, 0, 'Chuck Taylor All Star Classic AB');
INSERT INTO `attribute` VALUES (14, '2022-06-01', '2022-06-01', 1400000, 40, 10, 20, 0, 'Chuck Taylor All Star Classic AB');
INSERT INTO `attribute` VALUES (15, '2022-06-01', '2022-06-01', 1500000, 41, 10, 20, 0, 'Chuck Taylor All Star Classic AB');
INSERT INTO `attribute` VALUES (16, '2022-06-01', '2022-06-01', 1400000, 39, 10, 19, 0, 'Giày Thể Thao Fila Shiny Pink ');
INSERT INTO `attribute` VALUES (17, '2022-06-01', '2022-06-01', 1500000, 40, 10, 19, 0, 'Giày Thể Thao Fila Shiny Pink ');
INSERT INTO `attribute` VALUES (18, '2022-06-01', '2022-06-01', 1600000, 41, 10, 19, 0, 'Giày Thể Thao Fila Shiny Pink ');
INSERT INTO `attribute` VALUES (19, '2022-06-01', '2022-06-01', 1500000, 39, 5, 5, 3, 'GIÀY NIKE RENEW RIDE 3 NỮ');
INSERT INTO `attribute` VALUES (20, '2022-06-01', '2022-06-01', 1600000, 40, 10, 5, 0, 'GIÀY NIKE RENEW RIDE 3 NỮ');
INSERT INTO `attribute` VALUES (21, '2022-06-01', '2022-06-01', 1700000, 41, 10, 5, 0, 'GIÀY NIKE RENEW RIDE 3 NỮ');
INSERT INTO `attribute` VALUES (22, '2022-06-01', '2022-06-01', 1600000, 39, 10, 6, 0, 'GIÀY NIKE AIR ZOOM PEGASUS NAM ');
INSERT INTO `attribute` VALUES (23, '2022-06-01', '2022-06-01', 1700000, 40, 10, 6, 0, 'GIÀY NIKE AIR ZOOM PEGASUS NAM ');
INSERT INTO `attribute` VALUES (24, '2022-06-01', '2022-06-01', 1800000, 41, 10, 6, 0, 'GIÀY NIKE AIR ZOOM PEGASUS NAM ');
INSERT INTO `attribute` VALUES (25, '2022-06-01', '2022-06-01', 1550000, 39, 10, 8, 0, 'GIÀY NIKE AIR ZOOM RIVAL FLY');
INSERT INTO `attribute` VALUES (26, '2022-06-01', '2022-06-01', 1650000, 40, 10, 8, 0, 'GIÀY NIKE AIR ZOOM RIVAL FLY');
INSERT INTO `attribute` VALUES (27, '2022-06-01', '2022-06-01', 1750000, 41, 10, 8, 0, 'GIÀY NIKE AIR ZOOM RIVAL FLY');
INSERT INTO `attribute` VALUES (28, '2022-06-01', '2022-06-01', 1650000, 39, 10, 9, 0, 'REEBOK ROYAL TECHQUET DEPOR ACE NAE');
INSERT INTO `attribute` VALUES (29, '2022-06-01', '2022-06-01', 1750000, 40, 10, 9, 0, 'REEBOK ROYAL TECHQUET DEPOR ACE NAE');
INSERT INTO `attribute` VALUES (30, '2022-06-01', '2022-06-01', 1850000, 41, 10, 9, 0, 'REEBOK ROYAL TECHQUET DEPOR ACE NAE');
INSERT INTO `attribute` VALUES (31, '2022-06-01', '2022-06-01', 1750000, 39, 10, 10, 0, 'REEBOK ROYAL COMPLETE CLN2 HAZN AB');
INSERT INTO `attribute` VALUES (32, '2022-06-01', '2022-06-01', 1850000, 40, 10, 10, 0, 'REEBOK ROYAL COMPLETE CLN2 HAZN AB');
INSERT INTO `attribute` VALUES (33, '2022-06-01', '2022-06-01', 1950000, 41, 10, 10, 0, 'REEBOK ROYAL COMPLETE CLN2 HAZN AB');
INSERT INTO `attribute` VALUES (34, '2022-06-01', '2022-06-01', 1850000, 39, 10, 11, 0, 'LIQUIFECT 902 BR AUTMAX AB SN');
INSERT INTO `attribute` VALUES (35, '2022-06-01', '2022-06-01', 1950000, 40, 10, 11, 0, 'LIQUIFECT 902 BR AUTMAX AB SN');
INSERT INTO `attribute` VALUES (36, '2022-06-01', '2022-06-01', 2050000, 41, 10, 11, 0, 'LIQUIFECT 902 BR AUTMAX AB SN');
INSERT INTO `attribute` VALUES (37, '2022-06-01', '2022-06-01', 1850000, 39, 10, 12, 0, 'HIIT TR 2.0 FIFA ZATHER ONE');
INSERT INTO `attribute` VALUES (38, '2022-06-01', '2022-06-01', 1950000, 40, 10, 12, 0, 'HIIT TR 2.0 FIFA ZATHER ONE');
INSERT INTO `attribute` VALUES (39, '2022-06-01', '2022-06-01', 2050000, 41, 10, 12, 0, 'HIIT TR 2.0 FIFA ZATHER ONE');
INSERT INTO `attribute` VALUES (40, '2022-06-01', '2022-06-01', 1950000, 39, 7, 13, 2, 'GIÀY PUMA ANZARUB LITE NAM A1');
INSERT INTO `attribute` VALUES (41, '2022-06-01', '2022-06-01', 2050000, 40, 10, 13, 0, 'GIÀY PUMA ANZARUB LITE NAM A1');
INSERT INTO `attribute` VALUES (42, '2022-06-01', '2022-06-01', 2150000, 41, 10, 13, 0, 'GIÀY PUMA ANZARUB LITE NAM A1');
INSERT INTO `attribute` VALUES (43, '2022-06-01', '2022-06-01', 2050000, 39, 10, 14, 0, 'GIÀY PUMA CAVEN NỮ AB CAP');
INSERT INTO `attribute` VALUES (44, '2022-06-01', '2022-06-01', 2150000, 40, 10, 14, 0, 'GIÀY PUMA CAVEN NỮ AB CAP');
INSERT INTO `attribute` VALUES (45, '2022-06-01', '2022-06-01', 2250000, 41, 10, 14, 0, 'GIÀY PUMA CAVEN NỮ AB CAP');
INSERT INTO `attribute` VALUES (46, '2022-06-01', '2022-06-01', 2050000, 39, 10, 15, 0, 'GIÀY PUMA ELICTIRIFY NITRO NAM BB');
INSERT INTO `attribute` VALUES (47, '2022-06-01', '2022-06-01', 2150000, 40, 10, 15, 0, 'GIÀY PUMA ELICTIRIFY NITRO NAM BB');
INSERT INTO `attribute` VALUES (48, '2022-06-01', '2022-06-01', 2250000, 41, 10, 15, 0, 'GIÀY PUMA ELICTIRIFY NITRO NAM BB');
INSERT INTO `attribute` VALUES (49, '2022-06-01', '2022-06-01', 2050000, 39, 10, 16, 0, 'GIÀY PUMA RALPH SAMPSON LO JOKER');
INSERT INTO `attribute` VALUES (50, '2022-06-01', '2022-06-01', 2150000, 40, 10, 16, 0, 'GIÀY PUMA RALPH SAMPSON LO JOKER');
INSERT INTO `attribute` VALUES (51, '2022-06-01', '2022-06-01', 2250000, 41, 10, 16, 0, 'GIÀY PUMA RALPH SAMPSON LO JOKER');
INSERT INTO `attribute` VALUES (52, '2022-06-01', '2022-06-01', 2150000, 39, 10, 17, 0, 'Giày Fila Unisex Como Mule Trắng');
INSERT INTO `attribute` VALUES (53, '2022-06-01', '2022-06-01', 2250000, 40, 10, 17, 0, 'Giày Fila Unisex Como Mule Trắng');
INSERT INTO `attribute` VALUES (54, '2022-06-01', '2022-06-01', 2350000, 41, 10, 17, 0, 'Giày Fila Unisex Como Mule Trắng');
INSERT INTO `attribute` VALUES (55, '2022-06-01', '2022-06-01', 2250000, 39, 10, 18, 0, 'Giày Fila Unisex Scanline Mule Đen');
INSERT INTO `attribute` VALUES (56, '2022-06-01', '2022-06-01', 2350000, 40, 10, 18, 0, 'Giày Fila Unisex Scanline Mule Đen');
INSERT INTO `attribute` VALUES (57, '2022-06-01', '2022-06-01', 2450000, 41, 10, 18, 0, 'Giày Fila Unisex Scanline Mule Đen');
INSERT INTO `attribute` VALUES (58, '2022-06-01', '2022-06-01', 2350000, 39, 9, 21, 1, 'Chuck Taylor All Star Crafted Stripes');
INSERT INTO `attribute` VALUES (59, '2022-06-01', '2022-06-01', 2450000, 40, 10, 21, 0, 'Chuck Taylor All Star Crafted Stripes');
INSERT INTO `attribute` VALUES (60, '2022-06-01', '2022-06-01', 2550000, 41, 10, 21, 0, 'Chuck Taylor All Star Crafted Stripes');
INSERT INTO `attribute` VALUES (61, '2022-06-01', '2022-06-01', 2350000, 39, 10, 22, 0, 'Chuck 70 Seasonal Color CX CATER');
INSERT INTO `attribute` VALUES (62, '2022-06-01', '2022-06-01', 2450000, 40, 10, 22, 0, 'Chuck 70 Seasonal Color CX CATER');
INSERT INTO `attribute` VALUES (63, '2022-06-01', '2022-06-01', 2550000, 41, 10, 22, 0, 'Chuck 70 Seasonal Color CX CATER');
INSERT INTO `attribute` VALUES (64, '2022-06-01', '2022-06-01', 2350000, 39, 10, 23, 0, 'Chuck Taylor All Star Lift Platform');
INSERT INTO `attribute` VALUES (65, '2022-06-01', '2022-06-01', 2450000, 40, 10, 23, 0, 'Chuck Taylor All Star Lift Platform');
INSERT INTO `attribute` VALUES (66, '2022-06-01', '2022-06-01', 2550000, 41, 10, 23, 0, 'Chuck Taylor All Star Lift Platform');
INSERT INTO `attribute` VALUES (67, '2022-06-01', '2022-06-01', 2350000, 39, 10, 24, 0, 'Giày Super Light 19 nam AB');
INSERT INTO `attribute` VALUES (68, '2022-06-01', '2022-06-01', 2450000, 40, 10, 24, 0, 'Giày Super Light 19 nam AB');
INSERT INTO `attribute` VALUES (69, '2022-06-01', '2022-06-01', 2550000, 41, 10, 24, 0, 'Giày Super Light 19 nam AB');
INSERT INTO `attribute` VALUES (70, '2022-06-01', '2022-06-01', 2350000, 39, 10, 25, 0, 'Giày chạy bộ nam SUPER ID');
INSERT INTO `attribute` VALUES (71, '2022-06-01', '2022-06-01', 2450000, 40, 10, 25, 0, 'Giày chạy bộ nam SUPER ID');
INSERT INTO `attribute` VALUES (72, '2022-06-01', '2022-06-01', 2550000, 41, 10, 25, 0, 'Giày chạy bộ nam SUPER ID');
INSERT INTO `attribute` VALUES (73, '2022-06-01', '2022-06-01', 2350000, 39, 9, 26, 0, 'Giày chạy bộ nữ SUPER ID');
INSERT INTO `attribute` VALUES (74, '2022-06-01', '2022-06-01', 2450000, 40, 10, 26, 0, 'Giày chạy bộ nữ SUPER ID');
INSERT INTO `attribute` VALUES (75, '2022-06-01', '2022-06-01', 2550000, 41, 10, 26, 0, 'Giày chạy bộ nữ SUPER ID');
INSERT INTO `attribute` VALUES (76, '2022-06-01', '2022-06-01', 2350000, 39, 10, 27, 9, 'Giày chạy bộ thể thao nữ');
INSERT INTO `attribute` VALUES (77, '2022-06-01', '2022-06-01', 2450000, 40, 10, 27, 0, 'Giày chạy bộ thể thao nữ');
INSERT INTO `attribute` VALUES (78, '2022-06-01', '2022-06-01', 2550000, 41, 10, 27, 0, 'Giày chạy bộ thể thao nữ');
INSERT INTO `attribute` VALUES (79, '2022-06-01', '2022-06-01', 2450000, 39, 7, 7, 1, 'GIÀY NIKE AIR ZOOM PEGASUS NỮ');
INSERT INTO `attribute` VALUES (80, '2022-06-01', '2022-06-01', 2550000, 40, 10, 7, 0, 'GIÀY NIKE AIR ZOOM PEGASUS NỮ');
INSERT INTO `attribute` VALUES (81, '2022-06-01', '2022-06-01', 2650000, 41, 10, 7, 0, 'GIÀY NIKE AIR ZOOM PEGASUS NỮ');
INSERT INTO `attribute` VALUES (82, '2022-07-31', '2022-07-31', 1500000, 39, 7, 28, 1, 'Giày Adidas BOA');
INSERT INTO `attribute` VALUES (83, '2022-07-31', '2022-07-31', 1600000, 40, 10, 28, 0, 'Giày Adidas BOA');
INSERT INTO `attribute` VALUES (84, '2022-07-31', '2022-07-31', 1700000, 41, 9, 28, 1, 'Giày Adidas BOA');
INSERT INTO `attribute` VALUES (85, '2022-07-31', '2022-07-31', 1500000, 39, 7, 29, 3, 'ADIDAS BOA New');
INSERT INTO `attribute` VALUES (86, '2022-07-31', '2022-07-31', 1600000, 40, 10, 29, 0, 'ADIDAS BOA New');
INSERT INTO `attribute` VALUES (87, '2022-07-31', '2022-07-31', 1700000, 41, 10, 29, 0, 'ADIDAS BOA New');
INSERT INTO `attribute` VALUES (88, '2022-07-31', '2022-07-31', 2000000, 39, 4, 30, 3, 'NIKE 2022');
INSERT INTO `attribute` VALUES (89, '2022-07-31', '2022-07-31', 2500000, 40, 10, 30, 0, 'NIKE 2022');
INSERT INTO `attribute` VALUES (90, '2022-07-31', '2022-07-31', 3000000, 41, 10, 30, 0, 'NIKE 2022');
INSERT INTO `attribute` VALUES (91, '2022-07-31', '2022-07-31', 3500000, 42, 10, 30, 0, 'NIKE 2022');
INSERT INTO `attribute` VALUES (92, '2022-07-31', '2022-07-31', 500000, 38, 9, 31, 2, 'ADIDAS Super Ultra');
INSERT INTO `attribute` VALUES (93, '2022-07-31', '2022-07-31', 700000, 39, 3, 31, 17, 'ADIDAS Super Ultra');
INSERT INTO `attribute` VALUES (94, '2022-07-31', '2022-07-31', 1000000, 40, 13, 31, 0, 'ADIDAS Super Ultra');
INSERT INTO `attribute` VALUES (95, '2022-07-31', '2022-07-31', 1500000, 41, 14, 31, 0, 'ADIDAS Super Ultra');
INSERT INTO `attribute` VALUES (96, '2022-08-27', '2022-08-27', 4000000, 39, 10, 32, 0, 'Ultraboost');
INSERT INTO `attribute` VALUES (97, '2022-08-27', '2022-08-27', 4500000, 40, 9, 32, 0, 'Ultraboost');
INSERT INTO `attribute` VALUES (98, '2022-08-27', '2022-08-27', 5000000, 41, 10, 32, 0, 'Ultraboost');
INSERT INTO `attribute` VALUES (99, '2022-08-27', '2022-08-27', 5500000, 42, 9, 32, 0, 'Ultraboost');
INSERT INTO `attribute` VALUES (100, '2022-08-28', '2022-08-28', 10500000, 36, 1, 33, 0, 'Gucci Gang');
INSERT INTO `attribute` VALUES (101, '2022-08-28', '2022-08-28', 11000000, 37, 4, 33, 0, 'Gucci Gang');
INSERT INTO `attribute` VALUES (102, '2022-08-28', '2022-08-28', 12000000, 38, 4, 33, 0, 'Gucci Gang');
INSERT INTO `attribute` VALUES (103, '2022-08-28', '2022-08-28', 13000000, 39, 5, 33, 0, 'Gucci Gang');
INSERT INTO `attribute` VALUES (104, '2022-08-28', '2022-08-28', 24000000, 40, 4, 33, 0, 'Gucci Gang');
INSERT INTO `attribute` VALUES (105, '2022-08-28', '2022-08-28', 15000000, 41, 4, 33, 0, 'Gucci Gang');
INSERT INTO `attribute` VALUES (106, '2022-08-28', '2022-08-28', 16000000, 42, 5, 33, 0, 'Gucci Gang');
INSERT INTO `attribute` VALUES (107, '2022-08-28', '2022-08-28', 17000000, 43, 5, 33, 0, 'Gucci Gang');
INSERT INTO `attribute` VALUES (108, '2022-08-28', '2022-08-28', 18000000, 44, 5, 33, 0, 'Gucci Gang');
INSERT INTO `attribute` VALUES (109, '2022-08-28', '2022-08-28', 19000000, 45, 5, 33, 0, 'Gucci Gang');
INSERT INTO `attribute` VALUES (110, '2022-08-28', '2022-08-28', 1200000, 39, 5, 34, 0, 'Gucci000');
INSERT INTO `attribute` VALUES (111, '2022-08-28', '2022-08-28', 2000000, 40, 5, 34, 0, 'Gucci000');
INSERT INTO `attribute` VALUES (112, '2022-08-28', '2022-08-28', 2500000, 41, 5, 34, 0, 'Gucci000');
INSERT INTO `attribute` VALUES (113, '2022-08-28', '2022-08-28', 3000000, 42, 5, 34, 0, 'Gucci000');

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES (1, '2022-06-01', 'PUMA', 'puma.jpg', b'1', '2022-07-14', 'PUMA');
INSERT INTO `brands` VALUES (2, '2022-06-01', 'REEBOK', 'reeebok.jpg', b'1', '2022-06-01', 'REEBOK');
INSERT INTO `brands` VALUES (3, '2022-06-01', 'NIKE', 'nike.jpg', b'1', '2022-07-21', 'NIKE');
INSERT INTO `brands` VALUES (4, '2022-06-01', 'ADIDAS', 'adidas.jpg', b'1', '2022-06-01', 'ADIDAS');
INSERT INTO `brands` VALUES (5, '2022-06-01', 'FILA', 'Dfila.jpg', b'1', '2022-06-01', 'FILA');
INSERT INTO `brands` VALUES (6, '2022-06-01', 'CONVERSE vintage', 'converse.jpg', b'1', '2022-07-14', 'CONVERSE');
INSERT INTO `brands` VALUES (7, '2022-06-01', 'LI-NING  của Trung Quốc', 'lining.jpg', b'1', '2022-07-14', 'LI-NING');
INSERT INTO `brands` VALUES (8, '2022-07-14', 'Local brand của Công Minh Idol', NULL, b'0', '2022-07-17', 'Gucci');

-- ----------------------------
-- Table structure for cart_item
-- ----------------------------
DROP TABLE IF EXISTS `cart_item`;
CREATE TABLE `cart_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NULL DEFAULT NULL,
  `account_id` bigint NULL DEFAULT NULL,
  `attribute_id` bigint NULL DEFAULT NULL,
  `last_price` double NULL DEFAULT NULL,
  `is_active` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKr73mlc9qnqbuohor52oa82e8u`(`account_id` ASC) USING BTREE,
  INDEX `FKqqnwtpr34wi90lptk7a4pd66`(`attribute_id` ASC) USING BTREE,
  CONSTRAINT `FKqqnwtpr34wi90lptk7a4pd66` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKr73mlc9qnqbuohor52oa82e8u` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_item
-- ----------------------------
INSERT INTO `cart_item` VALUES (1, 0, 1, 10, 960000, 0);
INSERT INTO `cart_item` VALUES (2, 0, 1, 1, 1000000, 0);
INSERT INTO `cart_item` VALUES (3, 0, 1, 6, 1216000, 0);
INSERT INTO `cart_item` VALUES (4, 0, 2, 1, 1000000, 0);
INSERT INTO `cart_item` VALUES (5, 0, 2, 7, 1610000, 0);
INSERT INTO `cart_item` VALUES (6, 0, 2, 6, 1216000, 0);
INSERT INTO `cart_item` VALUES (7, 0, 2, 10, 960000, 0);
INSERT INTO `cart_item` VALUES (8, 0, 2, 19, 1200000, 0);
INSERT INTO `cart_item` VALUES (9, 0, 2, 4, 1056000, 0);
INSERT INTO `cart_item` VALUES (10, 0, 2, 11, 1040000, 0);
INSERT INTO `cart_item` VALUES (11, 0, 2, 3, 1160000, 0);
INSERT INTO `cart_item` VALUES (12, 0, 2, 12, 1120000, 0);
INSERT INTO `cart_item` VALUES (13, 0, 2, 22, 800000, 0);
INSERT INTO `cart_item` VALUES (14, 0, 2, 23, 850000, 0);
INSERT INTO `cart_item` VALUES (15, 0, 2, 76, 1645000, 0);
INSERT INTO `cart_item` VALUES (16, 0, 2, 73, 1880000, 0);
INSERT INTO `cart_item` VALUES (17, 0, 2, 93, 490000, 0);
INSERT INTO `cart_item` VALUES (18, 3, 2, 88, 1400000, 1);
INSERT INTO `cart_item` VALUES (19, 2, 11, 93, 490000, 1);
INSERT INTO `cart_item` VALUES (20, 1, 11, 88, 1400000, 1);
INSERT INTO `cart_item` VALUES (21, 0, 11, 55, 1575000, 0);
INSERT INTO `cart_item` VALUES (22, 0, 11, 49, 2050000, 0);
INSERT INTO `cart_item` VALUES (23, 0, 11, 40, 1950000, 0);
INSERT INTO `cart_item` VALUES (24, 0, 11, 58, 1645000, 0);
INSERT INTO `cart_item` VALUES (25, 0, 2, 92, 350000, 0);
INSERT INTO `cart_item` VALUES (26, 0, 11, 85, 1350000, 0);
INSERT INTO `cart_item` VALUES (27, 0, 11, 94, 700000, 0);
INSERT INTO `cart_item` VALUES (28, 0, 11, 92, 350000, 0);
INSERT INTO `cart_item` VALUES (29, 0, 11, 79, 2450000, 0);
INSERT INTO `cart_item` VALUES (30, 0, 11, 82, 1350000, 0);
INSERT INTO `cart_item` VALUES (31, 0, 11, 104, 11200000, 0);
INSERT INTO `cart_item` VALUES (32, 0, 11, 102, 9600000, 0);
INSERT INTO `cart_item` VALUES (33, 1, 11, 109, 15200000, 1);
INSERT INTO `cart_item` VALUES (34, 1, 11, 110, 840000, 1);
INSERT INTO `cart_item` VALUES (35, 0, 11, 105, 12000000, 0);
INSERT INTO `cart_item` VALUES (36, 0, 11, 99, 3850000, 0);
INSERT INTO `cart_item` VALUES (37, 1, 11, 70, 2350000, 1);
INSERT INTO `cart_item` VALUES (38, 1, 11, 89, 1750000, 1);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` bit(1) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, '2022-06-01', 'Giày Nam', b'1', '2022-07-21', 'Giày Nam');
INSERT INTO `categories` VALUES (2, '2022-06-01', 'Giày Nữ', b'1', '2022-06-01', 'Giày Nữ');
INSERT INTO `categories` VALUES (3, '2022-06-01', 'Giày Trẻ Em', b'1', '2022-06-01', 'Giày Trẻ Em');
INSERT INTO `categories` VALUES (4, '2022-06-01', 'Giày Ðá Bóng', b'1', '2022-06-01', 'Giày Ðá Bóng');
INSERT INTO `categories` VALUES (5, '2022-06-01', 'Giày Thời Trang', b'1', '2022-06-01', 'Giày Thời Trang');
INSERT INTO `categories` VALUES (6, '2022-06-01', 'Giày bóng rổ', b'1', '2022-07-15', 'Giày bóng rổ');
INSERT INTO `categories` VALUES (7, '2022-06-01', 'Giày chạy bộ nè', b'1', '2022-07-15', 'Giày chạy bộ');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `image_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` bit(1) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKghwsjbjo7mg3iufxruvq6iu3q`(`product_id` ASC) USING BTREE,
  CONSTRAINT `FKghwsjbjo7mg3iufxruvq6iu3q` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (1, '2022-06-01', 'Fw2888.jpg', b'1', '2022-06-01', 'main', 1);
INSERT INTO `images` VALUES (2, '2022-06-01', 'Fw2888_1.jpg', b'1', '2022-06-01', 'other', 1);
INSERT INTO `images` VALUES (3, '2022-06-01', 'Fw2888_2.jpg', b'1', '2022-06-01', 'other', 1);
INSERT INTO `images` VALUES (4, '2022-06-01', 'Fw2888_3.jpg', b'1', '2022-06-01', 'other', 1);
INSERT INTO `images` VALUES (5, '2022-06-01', 'Fw2888_4.jpg', b'1', '2022-06-01', 'other', 1);
INSERT INTO `images` VALUES (6, '2022-06-01', 'Fw2888_5.jpg', b'1', '2022-06-01', 'other', 1);
INSERT INTO `images` VALUES (7, '2022-06-01', 'H00521.jpg', b'1', '2022-06-01', 'main', 2);
INSERT INTO `images` VALUES (8, '2022-06-01', 'H00521_1.jpg', b'1', '2022-06-01', 'other', 2);
INSERT INTO `images` VALUES (9, '2022-06-01', 'H00521_2.jpg', b'1', '2022-06-01', 'other', 2);
INSERT INTO `images` VALUES (10, '2022-06-01', 'H00521_3.jpg', b'1', '2022-06-01', 'other', 2);
INSERT INTO `images` VALUES (11, '2022-06-01', 'H00521_4.jpg', b'1', '2022-06-01', 'other', 2);
INSERT INTO `images` VALUES (12, '2022-06-01', 'H00521_5.jpg', b'1', '2022-06-01', 'other', 2);
INSERT INTO `images` VALUES (13, '2022-06-01', 'Fx5849.jpg', b'1', '2022-06-01', 'main', 3);
INSERT INTO `images` VALUES (14, '2022-06-01', 'Fx5849_1.jpg', b'1', '2022-06-01', 'other', 3);
INSERT INTO `images` VALUES (15, '2022-06-01', 'Fx5849_2.jpg', b'1', '2022-06-01', 'other', 3);
INSERT INTO `images` VALUES (16, '2022-06-01', 'Fx5849_3.jpg', b'1', '2022-06-01', 'other', 3);
INSERT INTO `images` VALUES (17, '2022-06-01', 'Fx5849_4.jpg', b'1', '2022-06-01', 'other', 3);
INSERT INTO `images` VALUES (18, '2022-06-01', 'Fx5849_5.jpg', b'1', '2022-06-01', 'other', 3);
INSERT INTO `images` VALUES (19, '2022-06-01', 'h026064.jpg', b'1', '2022-06-01', 'main', 19);
INSERT INTO `images` VALUES (20, '2022-06-01', 'h026064_1.jpg', b'1', '2022-06-01', 'other', 9);
INSERT INTO `images` VALUES (21, '2022-06-01', 'h026064_2.jpg', b'1', '2022-06-01', 'other', 19);
INSERT INTO `images` VALUES (22, '2022-06-01', 'h026064_3.jpg', b'1', '2022-06-01', 'other', 19);
INSERT INTO `images` VALUES (23, '2022-06-01', 'h026064_4.jpg', b'1', '2022-06-01', 'other', 19);
INSERT INTO `images` VALUES (24, '2022-06-01', 'h026064_5.jpg', b'1', '2022-06-01', 'other', 19);
INSERT INTO `images` VALUES (25, '2022-06-01', 'A00416C.png', b'1', '2022-06-01', 'main', 21);
INSERT INTO `images` VALUES (26, '2022-06-01', 'A00416C_1.jpg', b'1', '2022-06-01', 'other', 21);
INSERT INTO `images` VALUES (27, '2022-06-01', 'A00416C_2.jpg', b'1', '2022-06-01', 'other', 21);
INSERT INTO `images` VALUES (28, '2022-06-01', 'A00416C_3.jpg', b'1', '2022-06-01', 'other', 21);
INSERT INTO `images` VALUES (29, '2022-06-01', 'A00416C_4.jpg', b'1', '2022-06-01', 'other', 21);
INSERT INTO `images` VALUES (30, '2022-06-01', 'A00416C_5.jpg', b'1', '2022-06-01', 'other', 21);
INSERT INTO `images` VALUES (31, '2022-06-01', 'M7650.png', b'1', '2022-06-01', 'main', 20);
INSERT INTO `images` VALUES (32, '2022-06-01', 'M7650_1.jpg', b'1', '2022-06-01', 'other', 20);
INSERT INTO `images` VALUES (33, '2022-06-01', 'M7650_2.jpg', b'1', '2022-06-01', 'other', 20);
INSERT INTO `images` VALUES (34, '2022-06-01', 'M7650_3.jpg', b'1', '2022-06-01', 'other', 20);
INSERT INTO `images` VALUES (35, '2022-06-01', 'M7650_4.jpg', b'1', '2022-06-01', 'other', 20);
INSERT INTO `images` VALUES (36, '2022-06-01', 'M7650_5.jpg', b'1', '2022-06-01', 'other', 20);
INSERT INTO `images` VALUES (37, '2022-06-01', 'Q46225.jpg', b'1', '2022-06-01', 'main', 4);
INSERT INTO `images` VALUES (38, '2022-06-01', 'Q46225_1.jpg', b'1', '2022-06-01', 'other', 4);
INSERT INTO `images` VALUES (39, '2022-06-01', 'Q46225_2.jpg', b'1', '2022-06-01', 'other', 4);
INSERT INTO `images` VALUES (40, '2022-06-01', 'Q46225_3.jpg', b'1', '2022-06-01', 'other', 4);
INSERT INTO `images` VALUES (41, '2022-06-01', 'Q46225_4.jpg', b'1', '2022-06-01', 'other', 4);
INSERT INTO `images` VALUES (42, '2022-06-01', 'Q46225_5.jpg', b'1', '2022-06-01', 'other', 4);
INSERT INTO `images` VALUES (43, '2022-06-01', 'MSN913.jpg', b'1', '2022-06-01', 'main', 5);
INSERT INTO `images` VALUES (44, '2022-06-01', 'MSN913_1.jpg', b'1', '2022-06-01', 'other', 5);
INSERT INTO `images` VALUES (45, '2022-06-01', 'MSN913_2.jpg', b'1', '2022-06-01', 'other', 5);
INSERT INTO `images` VALUES (46, '2022-06-01', 'MSN913_3.jpg', b'1', '2022-06-01', 'other', 5);
INSERT INTO `images` VALUES (47, '2022-06-01', 'MSN913_4.jpg', b'1', '2022-06-01', 'other', 5);
INSERT INTO `images` VALUES (48, '2022-06-01', 'MSN913_5.jpg', b'1', '2022-06-01', 'other', 5);
INSERT INTO `images` VALUES (49, '2022-06-01', 'MSN911.jpg', b'1', '2022-06-01', 'main', 6);
INSERT INTO `images` VALUES (50, '2022-06-01', 'MSN911_1.jpg', b'1', '2022-06-01', 'other', 6);
INSERT INTO `images` VALUES (51, '2022-06-01', 'MSN911_2.jpg', b'1', '2022-06-01', 'other', 6);
INSERT INTO `images` VALUES (52, '2022-06-01', 'MSN911_3.jpg', b'1', '2022-06-01', 'other', 6);
INSERT INTO `images` VALUES (53, '2022-06-01', 'MSN911_4.jpg', b'1', '2022-06-01', 'other', 6);
INSERT INTO `images` VALUES (54, '2022-06-01', 'MSN911_5.jpg', b'1', '2022-06-01', 'other', 6);
INSERT INTO `images` VALUES (55, '2022-06-01', 'MSN910.jpg', b'1', '2022-06-01', 'main', 7);
INSERT INTO `images` VALUES (56, '2022-06-01', 'MSN910_1.jpg', b'1', '2022-06-01', 'other', 7);
INSERT INTO `images` VALUES (57, '2022-06-01', 'MSN910_3.jpg', b'1', '2022-06-01', 'other', 7);
INSERT INTO `images` VALUES (58, '2022-06-01', 'MSN910_4.jpg', b'1', '2022-06-01', 'other', 7);
INSERT INTO `images` VALUES (59, '2022-06-01', 'MSN910_5.jpg', b'1', '2022-06-01', 'other', 7);
INSERT INTO `images` VALUES (60, '2022-06-01', 'MSN910_6.jpg', b'1', '2022-06-01', 'other', 7);
INSERT INTO `images` VALUES (61, '2022-06-01', 'MSN908.jpg', b'1', '2022-06-01', 'main', 8);
INSERT INTO `images` VALUES (62, '2022-06-01', 'MSN908_1.jpg', b'1', '2022-06-01', 'other', 8);
INSERT INTO `images` VALUES (63, '2022-06-01', 'MSN908_2.jpg', b'1', '2022-06-01', 'other', 8);
INSERT INTO `images` VALUES (64, '2022-06-01', 'MSN908_3.jpg', b'1', '2022-06-01', 'other', 8);
INSERT INTO `images` VALUES (65, '2022-06-01', 'MSN908_4.jpg', b'1', '2022-06-01', 'other', 8);
INSERT INTO `images` VALUES (66, '2022-06-01', 'MSN908_5.jpg', b'1', '2022-06-01', 'other', 8);
INSERT INTO `images` VALUES (67, '2022-06-01', 'GV7412_7.jpg', b'1', '2022-06-01', 'main', 9);
INSERT INTO `images` VALUES (68, '2022-06-01', 'GV7412-1.jpg', b'1', '2022-06-01', 'other', 9);
INSERT INTO `images` VALUES (69, '2022-06-01', 'GV7412-2.jpg', b'1', '2022-06-01', 'other', 9);
INSERT INTO `images` VALUES (70, '2022-06-01', 'GV7412-3.jpg', b'1', '2022-06-01', 'other', 9);
INSERT INTO `images` VALUES (71, '2022-06-01', 'GV7412-4.jpg', b'1', '2022-06-01', 'other', 9);
INSERT INTO `images` VALUES (72, '2022-06-01', 'GV7412-5.jpg', b'1', '2022-06-01', 'other', 9);
INSERT INTO `images` VALUES (73, '2022-06-01', 'EG9415_7.jpg', b'1', '2022-06-01', 'main', 10);
INSERT INTO `images` VALUES (74, '2022-06-01', 'EG9415-1.jpg', b'1', '2022-06-01', 'other', 10);
INSERT INTO `images` VALUES (75, '2022-06-01', 'EG9415-2.jpg', b'1', '2022-06-01', 'other', 10);
INSERT INTO `images` VALUES (76, '2022-06-01', 'EG9415-3.jpg', b'1', '2022-06-01', 'other', 10);
INSERT INTO `images` VALUES (77, '2022-06-01', 'EG9415-4.jpg', b'1', '2022-06-01', 'other', 10);
INSERT INTO `images` VALUES (78, '2022-06-01', 'EG9415-5.jpg', b'1', '2022-06-01', 'other', 10);
INSERT INTO `images` VALUES (79, '2022-06-01', 'GY7749_7.jpg', b'1', '2022-06-01', 'main', 11);
INSERT INTO `images` VALUES (80, '2022-06-01', 'GY7749-1.jpg', b'1', '2022-06-01', 'other', 11);
INSERT INTO `images` VALUES (81, '2022-06-01', 'GY7749-2.jpg', b'1', '2022-06-01', 'other', 11);
INSERT INTO `images` VALUES (82, '2022-06-01', 'GY7749-3.jpg', b'1', '2022-06-01', 'other', 11);
INSERT INTO `images` VALUES (83, '2022-06-01', 'GY7749-4.jpg', b'1', '2022-06-01', 'other', 11);
INSERT INTO `images` VALUES (84, '2022-06-01', 'GY7749-5.jpg', b'1', '2022-06-01', 'other', 11);
INSERT INTO `images` VALUES (85, '2022-06-01', 'GY8453_7.jpg', b'1', '2022-06-01', 'main', 12);
INSERT INTO `images` VALUES (86, '2022-06-01', 'GY8453-1.jpg', b'1', '2022-06-01', 'other', 12);
INSERT INTO `images` VALUES (87, '2022-06-01', 'GY8453-2.jpg', b'1', '2022-06-01', 'other', 12);
INSERT INTO `images` VALUES (88, '2022-06-01', 'GY8453-3.jpg', b'1', '2022-06-01', 'other', 12);
INSERT INTO `images` VALUES (89, '2022-06-01', 'GY8453-4.jpg', b'1', '2022-06-01', 'other', 12);
INSERT INTO `images` VALUES (90, '2022-06-01', 'GY8453-5.jpg', b'1', '2022-06-01', 'other', 12);
INSERT INTO `images` VALUES (91, '2022-06-01', 'MSP215.jpg', b'1', '2022-06-01', 'main', 13);
INSERT INTO `images` VALUES (92, '2022-06-01', 'MSP215-1.jpg', b'1', '2022-06-01', 'other', 13);
INSERT INTO `images` VALUES (93, '2022-06-01', 'MSP215-2.jpg', b'1', '2022-06-01', 'other', 13);
INSERT INTO `images` VALUES (94, '2022-06-01', 'MSP215-3.jpg', b'1', '2022-06-01', 'other', 13);
INSERT INTO `images` VALUES (95, '2022-06-01', 'MSP215-4.jpg', b'1', '2022-06-01', 'other', 13);
INSERT INTO `images` VALUES (96, '2022-06-01', 'MSP215-5.jpg', b'1', '2022-06-01', 'other', 13);
INSERT INTO `images` VALUES (97, '2022-06-01', 'MSP207.jpg', b'1', '2022-06-01', 'main', 14);
INSERT INTO `images` VALUES (98, '2022-06-01', 'MSP207-1.jpg', b'1', '2022-06-01', 'other', 14);
INSERT INTO `images` VALUES (99, '2022-06-01', 'MSP207-2.jpg', b'1', '2022-06-01', 'other', 14);
INSERT INTO `images` VALUES (100, '2022-06-01', 'MSP207-3.jpg', b'1', '2022-06-01', 'other', 14);
INSERT INTO `images` VALUES (101, '2022-06-01', 'MSP207-4.jpg', b'1', '2022-06-01', 'other', 14);
INSERT INTO `images` VALUES (102, '2022-06-01', 'MSP207-5.jpg', b'1', '2022-06-01', 'other', 14);
INSERT INTO `images` VALUES (103, '2022-06-01', 'MSP223.jpg', b'1', '2022-06-01', 'main', 15);
INSERT INTO `images` VALUES (104, '2022-06-01', 'MSP223-1.jpg', b'1', '2022-06-01', 'other', 15);
INSERT INTO `images` VALUES (105, '2022-06-01', 'MSP223-2.jpg', b'1', '2022-06-01', 'other', 15);
INSERT INTO `images` VALUES (106, '2022-06-01', 'MSP223-3.jpg', b'1', '2022-06-01', 'other', 15);
INSERT INTO `images` VALUES (107, '2022-06-01', 'MSP223-4.jpg', b'1', '2022-06-01', 'other', 15);
INSERT INTO `images` VALUES (108, '2022-06-01', 'MSP223-5.jpg', b'1', '2022-06-01', 'other', 15);
INSERT INTO `images` VALUES (109, '2022-06-01', 'MSP218.jpg', b'1', '2022-06-01', 'main', 16);
INSERT INTO `images` VALUES (110, '2022-06-01', 'MSP218-1.jpg', b'1', '2022-06-01', 'other', 16);
INSERT INTO `images` VALUES (111, '2022-06-01', 'MSP218-2.jpg', b'1', '2022-06-01', 'other', 16);
INSERT INTO `images` VALUES (112, '2022-06-01', 'MSP218-3.jpg', b'1', '2022-06-01', 'other', 16);
INSERT INTO `images` VALUES (113, '2022-06-01', 'MSP218-4.jpg', b'1', '2022-06-01', 'other', 16);
INSERT INTO `images` VALUES (114, '2022-06-01', 'MSP218-5.jpg', b'1', '2022-06-01', 'other', 16);
INSERT INTO `images` VALUES (115, '2022-06-01', 'A00621C.png', b'1', '2022-06-01', 'main', 22);
INSERT INTO `images` VALUES (116, '2022-06-01', 'A00621C_1.jpg', b'1', '2022-06-01', 'other', 22);
INSERT INTO `images` VALUES (117, '2022-06-01', 'A00621C_2.jpg', b'1', '2022-06-01', 'other', 22);
INSERT INTO `images` VALUES (118, '2022-06-01', 'A00621C_3.jpg', b'1', '2022-06-01', 'other', 22);
INSERT INTO `images` VALUES (119, '2022-06-01', 'A00621C_4.jpg', b'1', '2022-06-01', 'other', 22);
INSERT INTO `images` VALUES (120, '2022-06-01', 'A00621C_5.jpg', b'1', '2022-06-01', 'other', 22);
INSERT INTO `images` VALUES (121, '2022-06-01', 'A03175C.png', b'1', '2022-06-01', 'main', 23);
INSERT INTO `images` VALUES (122, '2022-06-01', 'A03175C_1.jpg', b'1', '2022-06-01', 'other', 23);
INSERT INTO `images` VALUES (123, '2022-06-01', 'A03175C_2.jpg', b'1', '2022-06-01', 'other', 23);
INSERT INTO `images` VALUES (124, '2022-06-01', 'A03175C_3.jpg', b'1', '2022-06-01', 'other', 23);
INSERT INTO `images` VALUES (125, '2022-06-01', 'A03175C_4.jpg', b'1', '2022-06-01', 'other', 23);
INSERT INTO `images` VALUES (126, '2022-06-01', 'A03175C_5.jpg', b'1', '2022-06-01', 'other', 23);
INSERT INTO `images` VALUES (127, '2022-06-01', 'ARVS001-5.jpg', b'1', '2022-06-01', 'other', 24);
INSERT INTO `images` VALUES (128, '2022-06-01', 'ARVS001-5_1.jpg', b'1', '2022-06-01', 'other', 24);
INSERT INTO `images` VALUES (129, '2022-06-01', 'ARVS001-5_2.jpg', b'1', '2022-06-01', 'other', 24);
INSERT INTO `images` VALUES (130, '2022-06-01', 'ARVS001-5_3.jpg', b'1', '2022-06-01', 'other', 24);
INSERT INTO `images` VALUES (131, '2022-06-01', 'ARVS001-5_4.jpg', b'1', '2022-06-01', 'other', 24);
INSERT INTO `images` VALUES (132, '2022-06-01', 'ARVS001-5_5.jpg', b'1', '2022-06-01', 'other', 24);
INSERT INTO `images` VALUES (133, '2022-06-01', 'ARMS003-2.jpg', b'1', '2022-06-01', 'main', 25);
INSERT INTO `images` VALUES (134, '2022-06-01', 'ARMS003-2_1.jpg', b'1', '2022-06-01', 'other', 25);
INSERT INTO `images` VALUES (135, '2022-06-01', 'ARMS003-2_2.jpg', b'1', '2022-06-01', 'other', 25);
INSERT INTO `images` VALUES (136, '2022-06-01', 'ARMS003-2_3.jpg', b'1', '2022-06-01', 'other', 25);
INSERT INTO `images` VALUES (137, '2022-06-01', 'ARMS003-2_4.jpg', b'1', '2022-06-01', 'other', 25);
INSERT INTO `images` VALUES (138, '2022-06-01', 'ARMS003-2_5.jpg', b'1', '2022-06-01', 'other', 25);
INSERT INTO `images` VALUES (139, '2022-06-01', 'ARHR042-4.jpg', b'1', '2022-06-01', 'main', 26);
INSERT INTO `images` VALUES (140, '2022-06-01', 'ARHR042-4_1.jpg', b'1', '2022-06-01', 'other', 26);
INSERT INTO `images` VALUES (141, '2022-06-01', 'ARHR042-4_2.jpg', b'1', '2022-06-01', 'other', 26);
INSERT INTO `images` VALUES (142, '2022-06-01', 'ARHR042-4_3.jpg', b'1', '2022-06-01', 'other', 26);
INSERT INTO `images` VALUES (143, '2022-06-01', 'ARHR042-4_4.jpg', b'1', '2022-06-01', 'other', 26);
INSERT INTO `images` VALUES (144, '2022-06-01', 'ARHR042-4_5.jpg', b'1', '2022-06-01', 'other', 26);
INSERT INTO `images` VALUES (145, '2022-06-01', 'ARHR132-1.jpg', b'1', '2022-06-01', 'main', 27);
INSERT INTO `images` VALUES (146, '2022-06-01', 'ARHR132-1_1.jpg', b'1', '2022-06-01', 'other', 27);
INSERT INTO `images` VALUES (147, '2022-06-01', 'ARHR132-1_2.jpg', b'1', '2022-06-01', 'other', 27);
INSERT INTO `images` VALUES (148, '2022-06-01', 'ARHR132-1_3.jpg', b'1', '2022-06-01', 'other', 27);
INSERT INTO `images` VALUES (149, '2022-06-01', 'ARHR132-1_4.jpg', b'1', '2022-06-01', 'other', 27);
INSERT INTO `images` VALUES (150, '2022-06-01', 'ARHR132-1_5.jpg', b'1', '2022-06-01', 'other', 27);
INSERT INTO `images` VALUES (151, '2022-06-01', 'h041906.jpg', b'1', '2022-06-01', 'main', 17);
INSERT INTO `images` VALUES (152, '2022-06-01', 'h04190_1.jpg', b'1', '2022-06-01', 'other', 17);
INSERT INTO `images` VALUES (153, '2022-06-01', 'h04190_2.jpg', b'1', '2022-06-01', 'other', 17);
INSERT INTO `images` VALUES (154, '2022-06-01', 'h04190_3.jpg', b'1', '2022-06-01', 'other', 17);
INSERT INTO `images` VALUES (155, '2022-06-01', 'h04190_4.jpg', b'1', '2022-06-01', 'other', 17);
INSERT INTO `images` VALUES (156, '2022-06-01', 'h04190_5.jpg', b'1', '2022-06-01', 'other', 17);
INSERT INTO `images` VALUES (157, '2022-06-01', 'h041919.jpg', b'1', '2022-06-01', 'main', 18);
INSERT INTO `images` VALUES (158, '2022-06-01', 'h041919_1.jpg', b'1', '2022-06-01', 'other', 18);
INSERT INTO `images` VALUES (159, '2022-06-01', 'h041919_2.jpg', b'1', '2022-06-01', 'other', 18);
INSERT INTO `images` VALUES (160, '2022-06-01', 'h041919_3.jpg', b'1', '2022-06-01', 'other', 18);
INSERT INTO `images` VALUES (161, '2022-06-01', 'h041919_4.jpg', b'1', '2022-06-01', 'other', 18);
INSERT INTO `images` VALUES (162, '2022-06-01', 'h041919_5.jpg', b'1', '2022-06-01', 'other', 18);
INSERT INTO `images` VALUES (163, '2022-07-31', 'adidas_boa.jpg', b'1', '2022-07-31', 'main', 28);
INSERT INTO `images` VALUES (164, '2022-07-31', 'adidas_boa_1.jpg', b'1', '2022-07-31', 'other', 28);
INSERT INTO `images` VALUES (165, '2022-07-31', 'adidas_boa_3.jpg', b'1', '2022-07-31', 'other', 28);
INSERT INTO `images` VALUES (166, '2022-07-31', 'adidas_boa_3.jpg', b'1', '2022-07-31', 'other', 28);
INSERT INTO `images` VALUES (167, '2022-07-31', 'adidas_boa_4.jpg', b'1', '2022-07-31', 'other', 28);
INSERT INTO `images` VALUES (168, '2022-07-31', 'adidas_boa_5.jpg', b'1', '2022-07-31', 'other', 28);
INSERT INTO `images` VALUES (169, '2022-07-31', 'adidas_boa.jpg', b'1', '2022-07-31', 'main', 29);
INSERT INTO `images` VALUES (170, '2022-07-31', 'adidas_boa_1.jpg', b'1', '2022-07-31', 'other', 29);
INSERT INTO `images` VALUES (171, '2022-07-31', 'adidas_boa_3.jpg', b'1', '2022-07-31', 'other', 29);
INSERT INTO `images` VALUES (172, '2022-07-31', 'adidas_boa_3.jpg', b'1', '2022-07-31', 'other', 29);
INSERT INTO `images` VALUES (173, '2022-07-31', 'adidas_boa_4.jpg', b'1', '2022-07-31', 'other', 29);
INSERT INTO `images` VALUES (174, '2022-07-31', 'adidas_boa_5.jpg', b'1', '2022-07-31', 'other', 29);
INSERT INTO `images` VALUES (175, '2022-07-31', 'nike_b.jpg', b'1', '2022-07-31', 'main', 30);
INSERT INTO `images` VALUES (176, '2022-07-31', 'nike_b_1.jpg', b'1', '2022-07-31', 'other', 30);
INSERT INTO `images` VALUES (177, '2022-07-31', 'nike_b_2.jpg', b'1', '2022-07-31', 'other', 30);
INSERT INTO `images` VALUES (178, '2022-07-31', 'nike_b_3.jpg', b'1', '2022-07-31', 'other', 30);
INSERT INTO `images` VALUES (179, '2022-07-31', 'nike_b_4.jpg', b'1', '2022-07-31', 'other', 30);
INSERT INTO `images` VALUES (180, '2022-07-31', 'nike_b_5.jpg', b'1', '2022-07-31', 'other', 30);
INSERT INTO `images` VALUES (181, '2022-07-31', 'adidas_supper.jpg', b'1', '2022-07-31', 'main', 31);
INSERT INTO `images` VALUES (182, '2022-07-31', 'adidas_supper_1.jpg', b'1', '2022-07-31', 'other', 31);
INSERT INTO `images` VALUES (183, '2022-07-31', 'adidas_supper_2.jpg', b'1', '2022-07-31', 'other', 31);
INSERT INTO `images` VALUES (184, '2022-07-31', 'adidas_supper_3.jpg', b'1', '2022-07-31', 'other', 31);
INSERT INTO `images` VALUES (185, '2022-07-31', 'adidas_supper_4.jpg', b'1', '2022-07-31', 'other', 31);
INSERT INTO `images` VALUES (186, '2022-07-31', 'adidas_supper_5.jpg', b'1', '2022-07-31', 'other', 31);
INSERT INTO `images` VALUES (187, '2022-08-27', 'nike_a.jpg', b'1', '2022-08-27', 'main', 32);
INSERT INTO `images` VALUES (188, '2022-08-27', 'nike_a_1.jpg', b'1', '2022-08-27', 'other', 32);
INSERT INTO `images` VALUES (189, '2022-08-27', 'nike_a_2.jpg', b'1', '2022-08-27', 'other', 32);
INSERT INTO `images` VALUES (190, '2022-08-27', 'nike_a_3.jpg', b'1', '2022-08-27', 'other', 32);
INSERT INTO `images` VALUES (191, '2022-08-27', 'nike_a_4.jpg', b'1', '2022-08-27', 'other', 32);
INSERT INTO `images` VALUES (192, '2022-08-27', 'nike_a_5.jpg', b'1', '2022-08-27', 'other', 32);
INSERT INTO `images` VALUES (193, '2022-08-28', 'converse_a.jpg', b'1', '2022-08-28', 'main', 33);
INSERT INTO `images` VALUES (194, '2022-08-28', 'converse_a_1.jpg', b'1', '2022-08-28', 'other', 33);
INSERT INTO `images` VALUES (195, '2022-08-28', 'converse_a_2.jpg', b'1', '2022-08-28', 'other', 33);
INSERT INTO `images` VALUES (196, '2022-08-28', 'converse_a_3.jpg', b'1', '2022-08-28', 'other', 33);
INSERT INTO `images` VALUES (197, '2022-08-28', 'converse_a_4.jpg', b'1', '2022-08-28', 'other', 33);
INSERT INTO `images` VALUES (198, '2022-08-28', 'converse_a_5.jpg', b'1', '2022-08-28', 'other', 33);
INSERT INTO `images` VALUES (199, '2022-08-28', 'adidas_supper.jpg', b'1', '2022-08-28', 'main', 34);
INSERT INTO `images` VALUES (200, '2022-08-28', 'adidas_supper_1.jpg', b'1', '2022-08-28', 'other', 34);
INSERT INTO `images` VALUES (201, '2022-08-28', 'adidas_supper_2.jpg', b'1', '2022-08-28', 'other', 34);
INSERT INTO `images` VALUES (202, '2022-08-28', 'adidas_supper_3.jpg', b'1', '2022-08-28', 'other', 34);
INSERT INTO `images` VALUES (203, '2022-08-28', 'adidas_supper_4.jpg', b'1', '2022-08-28', 'other', 34);
INSERT INTO `images` VALUES (204, '2022-08-28', 'adidas_supper_5.jpg', b'1', '2022-08-28', 'other', 34);

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `read` tinyint(1) NULL DEFAULT NULL,
  `deliver` tinyint(1) NULL DEFAULT NULL,
  `order_id` bigint NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `product_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK4gbdnyp7alt2qobudy7oo1nwp`(`order_id` ASC) USING BTREE,
  INDEX `FK557oqdnctfria015no3n7ev72`(`product_id` ASC) USING BTREE,
  CONSTRAINT `FK4gbdnyp7alt2qobudy7oo1nwp` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK557oqdnctfria015no3n7ev72` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES (1, 'Đơn hàng 10028 vừa được tạo, xác nhận ngay nào', 1, 1, 10028, 1, NULL);
INSERT INTO `notifications` VALUES (2, 'Đơn hàng 10029 vừa được tạo, xác nhận ngay nào', 1, 1, 10029, 1, NULL);
INSERT INTO `notifications` VALUES (3, 'Đơn hàng 10030 đã được tạo, xử lí ngay nào!', 1, 1, 10030, 1, NULL);
INSERT INTO `notifications` VALUES (4, 'Đơn hàng 10027 đã được tạo, xử lí ngay nào!', 1, 1, 10027, 1, NULL);
INSERT INTO `notifications` VALUES (5, 'Đơn hàng 10031 đã được tạo, xử lí ngay nào!', 1, 1, 10031, 1, NULL);
INSERT INTO `notifications` VALUES (6, 'Đơn hàng 10032 đã được tạo, xử lí ngay nào!', 1, 1, 10032, 1, NULL);
INSERT INTO `notifications` VALUES (7, 'Đơn hàng 10035 vừa được tạo, xác nhận ngay nào', 1, 1, 10035, 1, NULL);
INSERT INTO `notifications` VALUES (8, 'Đơn hàng 10036 vừa được tạo, xác nhận ngay nào', 1, 1, 10036, 1, NULL);
INSERT INTO `notifications` VALUES (9, 'Đơn hàng 10037 vừa được tạo, xác nhận ngay nào', 1, 1, 10037, 1, NULL);
INSERT INTO `notifications` VALUES (10, 'Đơn hàng 10038 vừa được tạo, xác nhận ngay nào', 1, 1, 10038, 1, NULL);
INSERT INTO `notifications` VALUES (11, 'Đơn hàng 10039 vừa được tạo, xác nhận ngay nào', 1, 1, 10039, 1, NULL);
INSERT INTO `notifications` VALUES (12, 'Đơn hàng 10040 vừa được tạo, xác nhận ngay nào', 1, 1, 10040, 1, NULL);
INSERT INTO `notifications` VALUES (13, 'Đơn hàng 10041 vừa được tạo, xác nhận ngay nào', 1, 1, 10041, 1, NULL);
INSERT INTO `notifications` VALUES (14, 'Đơn hàng 10042 vừa được tạo, xác nhận ngay nào', 1, 1, 10042, 1, NULL);
INSERT INTO `notifications` VALUES (15, 'Đơn hàng 10015 vừa hủy, kiểm tra ngay nào', 1, 1, 10015, 2, NULL);
INSERT INTO `notifications` VALUES (16, 'Đơn hàng 10042 vừa hủy, kiểm tra ngay nào', 1, 1, 10042, 2, NULL);
INSERT INTO `notifications` VALUES (17, 'Đơn hàng 10015 vừa hủy, kiểm tra ngay nào', 1, 1, 10015, 2, NULL);
INSERT INTO `notifications` VALUES (18, 'Đơn hàng 10014 vừa hủy, kiểm tra ngay nào', 1, 1, 10014, 2, NULL);
INSERT INTO `notifications` VALUES (19, 'Đơn hàng 10036 vừa hủy, kiểm tra ngay nào', 1, 1, 10036, 2, NULL);
INSERT INTO `notifications` VALUES (20, 'Đơn hàng 10043 vừa được tạo, xác nhận ngay nào', 1, 1, 10043, 1, NULL);
INSERT INTO `notifications` VALUES (21, 'Đơn hàng 10044 vừa được tạo, xác nhận ngay nào', 1, 1, 10044, 1, NULL);
INSERT INTO `notifications` VALUES (22, 'Đơn hàng 10045 vừa được tạo, xác nhận ngay nào', 1, 1, 10045, 1, NULL);
INSERT INTO `notifications` VALUES (23, 'Đơn hàng 10046 vừa được tạo, xác nhận ngay nào', 1, 1, 10046, 1, NULL);
INSERT INTO `notifications` VALUES (24, 'Đơn hàng 10047 vừa được tạo, xác nhận ngay nào', 1, 1, 10047, 1, NULL);
INSERT INTO `notifications` VALUES (26, 'Đơn hàng 10046 vừa hủy, kiểm tra ngay nào', 1, 1, 10046, 2, NULL);
INSERT INTO `notifications` VALUES (27, 'Đơn hàng 10049 vừa được tạo, xác nhận ngay nào', 1, 1, 10049, 1, NULL);
INSERT INTO `notifications` VALUES (29, 'Đơn hàng 10051 vừa được tạo, xác nhận ngay nào', 1, 1, 10051, 1, NULL);
INSERT INTO `notifications` VALUES (31, 'Đơn hàng 10053 vừa được tạo, xác nhận ngay nào', 1, 1, 10053, 1, NULL);
INSERT INTO `notifications` VALUES (33, 'Đơn hàng 10055 vừa được tạo, xác nhận ngay nào', 1, 1, 10055, 1, NULL);
INSERT INTO `notifications` VALUES (34, 'Đơn hàng 10056 vừa được tạo, xác nhận ngay nào', 1, 1, 10056, 1, NULL);
INSERT INTO `notifications` VALUES (35, 'Đơn hàng 10026 vừa hủy, kiểm tra ngay nào', 1, 1, 10026, 2, NULL);
INSERT INTO `notifications` VALUES (36, 'Đơn hàng 10017 vừa hủy, kiểm tra ngay nào', 1, 1, 10017, 2, NULL);
INSERT INTO `notifications` VALUES (37, 'Đơn hàng 10011 vừa hủy, kiểm tra ngay nào', 1, 1, 10011, 2, NULL);
INSERT INTO `notifications` VALUES (38, 'Đơn hàng 10008 vừa hủy, kiểm tra ngay nào', 1, 1, 10008, 2, NULL);
INSERT INTO `notifications` VALUES (39, 'Đơn hàng 10057 vừa được tạo, xác nhận ngay nào', 1, 1, 10057, 1, NULL);
INSERT INTO `notifications` VALUES (40, 'Đơn hàng 10058 vừa được tạo, xác nhận ngay nào', 1, 1, 10058, 1, NULL);
INSERT INTO `notifications` VALUES (41, 'Đơn hàng 10059 vừa được tạo, xác nhận ngay nào', 1, 1, 10059, 1, NULL);
INSERT INTO `notifications` VALUES (42, 'Đơn hàng 10059 vừa hủy, kiểm tra ngay nào', 1, 1, 10059, 2, NULL);
INSERT INTO `notifications` VALUES (43, 'Đơn hàng 10060 vừa được tạo, xác nhận ngay nào', 1, 1, 10060, 1, NULL);
INSERT INTO `notifications` VALUES (44, 'Đơn hàng 10060 vừa hủy, kiểm tra ngay nào', 1, 1, 10060, 2, NULL);
INSERT INTO `notifications` VALUES (45, 'Đơn hàng 10061 vừa được tạo, xác nhận ngay nào', 1, 1, 10061, 1, NULL);
INSERT INTO `notifications` VALUES (46, 'Đơn hàng 10061 vừa hủy, kiểm tra ngay nào', 1, 1, 10061, 2, NULL);
INSERT INTO `notifications` VALUES (47, 'Đơn hàng 10057 vừa hủy, kiểm tra ngay nào', 1, 1, 10057, 2, NULL);
INSERT INTO `notifications` VALUES (48, 'Đơn hàng 10062 vừa được tạo, xác nhận ngay nào', 1, 1, 10062, 1, NULL);
INSERT INTO `notifications` VALUES (49, 'Đơn hàng 10062 vừa hủy, kiểm tra ngay nào', 1, 1, 10062, 2, NULL);
INSERT INTO `notifications` VALUES (50, 'Đơn hàng 10062 vừa hủy, kiểm tra ngay nào', 1, 1, 10062, 2, NULL);
INSERT INTO `notifications` VALUES (51, 'Đơn hàng 10063 vừa được tạo, xác nhận ngay nào', 1, 1, 10063, 1, NULL);
INSERT INTO `notifications` VALUES (52, 'Đơn hàng 10064 vừa được tạo, xác nhận ngay nào', 1, 1, 10064, 1, NULL);
INSERT INTO `notifications` VALUES (53, 'Đơn hàng 10065 vừa được tạo, xác nhận ngay nào', 1, 1, 10065, 1, NULL);
INSERT INTO `notifications` VALUES (54, 'Sản phẩm Gucci Gang size 36 sắp hết, kiểm tra ngay nào', 1, 1, NULL, 3, 33);
INSERT INTO `notifications` VALUES (55, 'Sản phẩm Gucci Gang size 36 sắp hết, kiểm tra ngay nào', 1, 1, NULL, 3, 33);
INSERT INTO `notifications` VALUES (56, 'Đơn hàng 10066 vừa được tạo, xác nhận ngay nào', 1, 1, 10066, 1, NULL);
INSERT INTO `notifications` VALUES (57, 'Đơn hàng 10067 vừa được tạo, xác nhận ngay nào', 1, 1, 10067, 1, NULL);
INSERT INTO `notifications` VALUES (58, 'Đơn hàng 10068 vừa được tạo, xác nhận ngay nào', 1, 1, 10068, 1, NULL);
INSERT INTO `notifications` VALUES (59, 'Đơn hàng 10069 vừa được tạo, xác nhận ngay nào', 1, 1, 10069, 1, NULL);
INSERT INTO `notifications` VALUES (60, 'Đơn hàng 10070 vừa được tạo, xác nhận ngay nào', 1, 1, 10070, 1, NULL);
INSERT INTO `notifications` VALUES (61, 'Sản phẩm Gucci Gang size 36 sắp hết, kiểm tra ngay nào', 0, 1, NULL, 3, 33);
INSERT INTO `notifications` VALUES (62, 'Đơn hàng 10071 vừa được tạo, xác nhận ngay nào', 0, 1, 10071, 1, NULL);
INSERT INTO `notifications` VALUES (63, 'Đơn hàng 10072 vừa được tạo, xác nhận ngay nào', 0, 1, 10072, 1, NULL);

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `origin_price` double NOT NULL,
  `quantity` int NOT NULL,
  `sell_price` double NOT NULL,
  `attribute_id` bigint NULL DEFAULT NULL,
  `order_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKbpibmme3f3wayg5vs7pbnnmaw`(`attribute_id` ASC) USING BTREE,
  INDEX `FKrws2q0si6oyd6il8gqe2aennc`(`order_id` ASC) USING BTREE,
  CONSTRAINT `FKbpibmme3f3wayg5vs7pbnnmaw` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrws2q0si6oyd6il8gqe2aennc` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (1, 1250000, 1, 250000, 1, 10001);
INSERT INTO `order_detail` VALUES (2, 1610000, 1, 500000, 7, 10001);
INSERT INTO `order_detail` VALUES (3, 1500000, 1, 300000, 19, 10002);
INSERT INTO `order_detail` VALUES (4, 1200000, 1, 240000, 10, 10002);
INSERT INTO `order_detail` VALUES (5, 1200000, 1, 960000, 10, 10003);
INSERT INTO `order_detail` VALUES (6, 1250000, 1, 1000000, 1, 10003);
INSERT INTO `order_detail` VALUES (7, 1200000, 1, 960000, 10, 10004);
INSERT INTO `order_detail` VALUES (8, 1250000, 1, 1000000, 1, 10004);
INSERT INTO `order_detail` VALUES (9, 1500000, 1, 1200000, 19, 10005);
INSERT INTO `order_detail` VALUES (10, 1520000, 1, 1216000, 6, 10005);
INSERT INTO `order_detail` VALUES (11, 1610000, 2, 1610000, 7, 10006);
INSERT INTO `order_detail` VALUES (12, 1200000, 2, 960000, 10, 10006);
INSERT INTO `order_detail` VALUES (13, 1610000, 2, 1610000, 7, 10007);
INSERT INTO `order_detail` VALUES (14, 1200000, 2, 960000, 10, 10007);
INSERT INTO `order_detail` VALUES (15, 1320000, 1, 1056000, 4, 10008);
INSERT INTO `order_detail` VALUES (16, 1250000, 1, 1000000, 1, 10008);
INSERT INTO `order_detail` VALUES (17, 1450000, 1, 1160000, 3, 10009);
INSERT INTO `order_detail` VALUES (18, 1300000, 1, 1040000, 11, 10009);
INSERT INTO `order_detail` VALUES (19, 1400000, 1, 1120000, 12, 10010);
INSERT INTO `order_detail` VALUES (20, 1200000, 1, 960000, 10, 10011);
INSERT INTO `order_detail` VALUES (21, 1600000, 10, 800000, 22, 10012);
INSERT INTO `order_detail` VALUES (23, 2350000, 4, 1645000, 76, 10014);
INSERT INTO `order_detail` VALUES (24, 2350000, 4, 2350000, 76, 10015);
INSERT INTO `order_detail` VALUES (25, 2350000, 1, 2350000, 76, 10016);
INSERT INTO `order_detail` VALUES (26, 2350000, 1, 1880000, 73, 10016);
INSERT INTO `order_detail` VALUES (27, 700000, 1, 490000, 93, 10017);
INSERT INTO `order_detail` VALUES (28, 2000000, 1, 1400000, 88, 10017);
INSERT INTO `order_detail` VALUES (30, 700000, 1, 490000, 93, 10024);
INSERT INTO `order_detail` VALUES (31, 1500000, 1, 1350000, 82, 10024);
INSERT INTO `order_detail` VALUES (32, 2450000, 1, 2450000, 79, 10025);
INSERT INTO `order_detail` VALUES (33, 2250000, 1, 1575000, 55, 10026);
INSERT INTO `order_detail` VALUES (34, 2050000, 1, 2050000, 49, 10026);
INSERT INTO `order_detail` VALUES (35, 2000000, 1, 1400000, 88, 10027);
INSERT INTO `order_detail` VALUES (36, 2000000, 1, 1400000, 88, 10028);
INSERT INTO `order_detail` VALUES (37, 1500000, 1, 1350000, 85, 10029);
INSERT INTO `order_detail` VALUES (38, 1950000, 1, 1950000, 40, 10030);
INSERT INTO `order_detail` VALUES (39, 1500000, 1, 1200000, 19, 10031);
INSERT INTO `order_detail` VALUES (40, 1700000, 1, 1530000, 84, 10032);
INSERT INTO `order_detail` VALUES (41, 2000000, 1, 1400000, 88, 10033);
INSERT INTO `order_detail` VALUES (42, 2450000, 1, 2450000, 79, 10034);
INSERT INTO `order_detail` VALUES (43, 1950000, 1, 1950000, 40, 10035);
INSERT INTO `order_detail` VALUES (44, 2350000, 1, 1645000, 58, 10036);
INSERT INTO `order_detail` VALUES (45, 500000, 1, 350000, 92, 10037);
INSERT INTO `order_detail` VALUES (46, 500000, 1, 350000, 92, 10038);
INSERT INTO `order_detail` VALUES (47, 2000000, 1, 1400000, 88, 10039);
INSERT INTO `order_detail` VALUES (48, 1500000, 1, 1350000, 85, 10040);
INSERT INTO `order_detail` VALUES (49, 500000, 1, 350000, 92, 10041);
INSERT INTO `order_detail` VALUES (50, 2350000, 1, 2350000, 76, 10042);
INSERT INTO `order_detail` VALUES (51, 700000, 1, 490000, 93, 10043);
INSERT INTO `order_detail` VALUES (52, 700000, 2, 490000, 93, 10044);
INSERT INTO `order_detail` VALUES (53, 2000000, 5, 1400000, 88, 10045);
INSERT INTO `order_detail` VALUES (54, 1500000, 1, 1350000, 85, 10046);
INSERT INTO `order_detail` VALUES (55, 700000, 3, 490000, 93, 10047);
INSERT INTO `order_detail` VALUES (57, 700000, 1, 490000, 93, 10049);
INSERT INTO `order_detail` VALUES (59, 2000000, 1, 1400000, 88, 10051);
INSERT INTO `order_detail` VALUES (61, 700000, 1, 490000, 93, 10053);
INSERT INTO `order_detail` VALUES (63, 1950000, 1, 1950000, 40, 10055);
INSERT INTO `order_detail` VALUES (64, 2450000, 1, 2450000, 79, 10056);
INSERT INTO `order_detail` VALUES (65, 2450000, 1, 2450000, 79, 10057);
INSERT INTO `order_detail` VALUES (66, 2000000, 1, 1400000, 88, 10057);
INSERT INTO `order_detail` VALUES (67, 2000000, 1, 1400000, 88, 10058);
INSERT INTO `order_detail` VALUES (68, 1950000, 1, 1950000, 40, 10059);
INSERT INTO `order_detail` VALUES (69, 2000000, 1, 1400000, 88, 10060);
INSERT INTO `order_detail` VALUES (70, 2450000, 2, 2450000, 79, 10061);
INSERT INTO `order_detail` VALUES (71, 500000, 1, 350000, 92, 10062);
INSERT INTO `order_detail` VALUES (72, 2000000, 1, 1400000, 88, 10063);
INSERT INTO `order_detail` VALUES (73, 4000000, 1, 2800000, 96, 10064);
INSERT INTO `order_detail` VALUES (74, 11000000, 1, 8800000, 101, 10065);
INSERT INTO `order_detail` VALUES (75, 14000000, 1, 11200000, 104, 10066);
INSERT INTO `order_detail` VALUES (76, 12000000, 1, 9600000, 102, 10067);
INSERT INTO `order_detail` VALUES (77, 2000000, 1, 1400000, 88, 10068);
INSERT INTO `order_detail` VALUES (78, 19000000, 1, 15200000, 109, 10069);
INSERT INTO `order_detail` VALUES (79, 1500000, 2, 1350000, 82, 10070);
INSERT INTO `order_detail` VALUES (80, 15000000, 1, 12000000, 105, 10071);
INSERT INTO `order_detail` VALUES (81, 5500000, 1, 3850000, 99, 10072);

-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_status
-- ----------------------------
INSERT INTO `order_status` VALUES (1, '2022-06-01', 'Đơn hàng tạo mới', 'Chờ xác nhận', '2022-06-01');
INSERT INTO `order_status` VALUES (2, '2022-06-01', 'Đơn hàng đang được xử lí', 'Đang xử lí', '2022-06-01');
INSERT INTO `order_status` VALUES (3, '2022-06-01', 'Đơn hàng đang vận chuyển', 'Đang vận chuyển', '2022-06-01');
INSERT INTO `order_status` VALUES (4, '2022-06-01', 'Đơn hàng giao thành công', 'Đã giao', '2022-06-01');
INSERT INTO `order_status` VALUES (5, '2022-06-01', 'Đơn hàng đã hủy', 'Đã hủy', '2022-06-01');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` date NOT NULL,
  `fullname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_pending` tinyint(1) NOT NULL,
  `modify_date` date NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_date` date NULL DEFAULT NULL,
  `total` double NOT NULL,
  `account_id` bigint NULL DEFAULT NULL,
  `order_status_id` bigint NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucher_id` bigint NULL DEFAULT NULL,
  `encode_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `seen` tinyint(1) NOT NULL,
  `code` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `shipment` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKagh5svlor3slbay6tq5wqor1o`(`account_id` ASC) USING BTREE,
  INDEX `FK2n7p8t83wo7x0lep1q06a6cvy`(`order_status_id` ASC) USING BTREE,
  INDEX `FKdimvsocblb17f45ikjr6xn1wj`(`voucher_id` ASC) USING BTREE,
  CONSTRAINT `FK2n7p8t83wo7x0lep1q06a6cvy` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKagh5svlor3slbay6tq5wqor1o` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKdimvsocblb17f45ikjr6xn1wj` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10073 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (10001, 'TDP 69, Phường Ngọc Thụy, Quận Long Biên, Thành phố Hà Nội', '2022-04-03', 'Công Minh Idol', 0, '2022-07-10', 'Mua hàng không cần nhìn giá', '0987654321', '2022-06-08', 375000, 1, 3, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMDE=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10002, 'TDP 69, Phường Ngọc Thụy, Quận Long Biên, Thành phố Hà Nội', '2022-05-03', 'Công Minh Idol', 0, '2022-07-10', 'xxx', '0987654321', '2022-07-08', 270000, 2, 3, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMDI=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10003, '69, Phường Ngọc Thụy, Quận Long Biên, Thành phố Hà Nội', '2022-06-03', 'Công Minh Idol', 1, '2022-07-10', 'xyz', '0987654321', '2022-05-08', 980000, 1, 4, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMDM=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10004, 'TDP69, Phường Ngọc Thụy, Quận Long Biên, Thành phố Hà Nội', '2022-07-03', 'Công Minh Idol', 0, '2022-07-11', 'xyz', '0987654321', '2022-04-08', 980000, 2, 2, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMDQ=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10005, '69, Phường Ngọc Thụy, Quận Long Biên, Thành phố Hà Nội', '2022-07-06', 'Công Minh Idol', 0, '2022-07-10', 'nợ', '0987654321', '2022-07-11', 1208000, 1, 3, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMDU=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10006, '68, Phường Thượng Cát, Quận Bắc Từ Liêm, Thành phố Hà Nội', '2022-07-10', 'Công Minh Idol', 0, '2022-07-10', 'Giàu vl', '0987654321', '2022-07-15', 5140000, 2, 2, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMDY=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10007, '68, Phường Thượng Cát, Quận Bắc Từ Liêm, Thành phố Hà Nội', '2022-07-10', 'Công Minh Idol', 1, '2022-07-11', 'Giàu vl', '0987654321', '2022-07-15', 5140000, 2, 4, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMDc=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10008, '68, Phường Phú Thượng, Quận Tây Hồ, Thành phố Hà Nội', '2020-07-10', 'Công Minh Idol', 0, '2022-07-10', 'xxx', '0987654321', '2022-07-15', 1028000, 2, 5, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMDg=', 1, NULL, 'AhaMove - Không thích nữa', NULL, NULL);
INSERT INTO `orders` VALUES (10009, 'xxx, Phường Hạ Long, Thành phố Nam Định, Tỉnh Nam Định', '2022-07-10', 'Công Minh Idol', 0, '2022-07-17', 'xxx', '0987654321', '2022-07-15', 2200000, 2, 3, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMDk=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10010, '123, Phường Nhật Tân, Quận Tây Hồ, Thành phố Hà Nội', '2022-07-10', 'Công Minh Idol', 0, '2022-07-11', 'xxx', '0987654321', '2022-07-15', 560000, 2, 3, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMTA=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10011, '123, Phường Phúc Tân, Quận Hoàn Kiếm, Thành phố Hà Nội', '2019-07-10', 'Công Minh Idol', 0, '2022-07-12', 'qưe', '0987654321', '2022-07-15', 480000, 2, 5, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMTE=', 1, NULL, 'Thêm bớt sản phẩm - Mua chục đôi', NULL, NULL);
INSERT INTO `orders` VALUES (10012, '1, Phường Trúc Bạch, Quận Ba Đình, Thành phố Hà Nội', '2018-07-10', 'Công Minh Idol', 0, '2022-07-16', 'Idol', '0987654321', '2022-07-15', 8000000, 2, 3, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMTI=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10014, 'zzz, Phường Phúc Tân, Quận Hoàn Kiếm, Thành phố Hà Nội', '2020-07-18', 'Công Minh Idol', 1, '2022-07-18', '', '0987654321', '2022-07-23', 6580000, 2, 4, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMTQ=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10015, 'HN, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2021-07-24', 'Công Minh Idol', 1, '2022-07-31', 'Mình nợ nhé bạn ơi', '0987654321', '2022-07-29', 9400000, 2, 4, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMTU=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10016, 'a, Phường Phúc Tân, Quận Hoàn Kiếm, Thành phố Hà Nội', '2022-07-24', 'Công Minh Idol', 0, '2022-07-24', '', '0987654321', '2022-07-29', 4230000, 2, 3, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMTY=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10017, 'abc, Phường Thượng Cát, Quận Bắc Từ Liêm, Thành phố Hà Nội', '2022-08-06', 'Tan Vu', 0, '2022-08-06', 'zxc', '0987654321', '2022-08-11', 1890000, 11, 5, 'tanvx308@gmail.com', NULL, 'MTAwMTc=', 1, NULL, 'AhaMove - Không thích', NULL, NULL);
INSERT INTO `orders` VALUES (10019, 'qưe, Phường Phú Thượng, Quận Tây Hồ, Thành phố Hà Nội', '2022-08-07', 'Tan Vu', 0, '2022-08-07', 'qqq', '0987654321', '2022-08-12', 980000, NULL, 1, 'tanvx308@gmail.com', NULL, 'MTAwMTk=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10020, 'xxx, Phường Nguyễn Du, Quận Hai Bà Trưng, Thành phố Hà Nội', '2022-08-07', 'Công Minh', 0, '2022-08-07', 'xxx', '0987654321', '2022-08-12', 980000, NULL, 1, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMjA=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10021, 'xxx, Phường Phúc Tân, Quận Hoàn Kiếm, Thành phố Hà Nội', '2022-08-07', 'Tan Vu', 0, '2022-08-07', 'xxx', '0987654321', '2022-08-12', 980000, NULL, 1, 'tanvx308@gmail.com', NULL, 'MTAwMjE=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10022, 'xxx, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-07', 'Công Minh', 0, '2022-08-07', 'xxx', '0366202468', '2022-08-12', 980000, NULL, 1, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMjI=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10023, 'xxx, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-07', 'Công Minh Idol', 0, '2022-08-07', 'xxx', '0987654321', '2022-08-12', 2590000, NULL, 1, 'tanvx308@gmail.com', NULL, 'MTAwMjM=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10024, 'xxx, Phường Duyên Hải, Thành phố Lào Cai, Tỉnh Lào Cai', '2022-08-07', 'Tan Vu', 0, '2022-08-07', 'xxx', '0987654321', '2022-08-12', 1840000, NULL, 1, 'tanvx308@gmail.com', NULL, 'MTAwMjQ=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10025, 'xxx, Phường Phú Thượng, Quận Tây Hồ, Thành phố Hà Nội', '2022-08-07', 'Tan Vu', 1, '2022-08-27', 'xxx', '0987654321', '2022-08-31', 2450000, NULL, 4, 'tanvx308@gmail.com', NULL, 'MTAwMjU=', 1, 'Viettel123', NULL, 'ViettelPost', NULL);
INSERT INTO `orders` VALUES (10026, 'xxx, Phường Thượng Cát, Quận Bắc Từ Liêm, Thành phố Hà Nội', '2022-08-07', 'Tan Vu', 0, '2022-08-07', 'xxx', '0987654321', '2022-08-12', 3625000, 11, 5, 'tanvx308@gmail.com', NULL, 'MTAwMjY=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10027, 'a, Phường Phúc Tân, Quận Hoàn Kiếm, Thành phố Hà Nội', '2022-08-07', 'Công Minh Idol', 0, '2022-08-07', 'a', '0987654321', '2022-08-12', 1400000, NULL, 1, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMjc=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10028, 'x, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-07', 'Công Minh Idol', 0, '2022-08-07', 'a', '0987654321', '2022-08-12', 1400000, NULL, 1, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMjg=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10029, '1, Thị trấn Phó Bảng, Huyện Đồng Văn, Tỉnh Hà Giang', '2022-08-07', 'Tan Vu', 0, '2022-08-07', '1', '0987654321', '2022-08-12', 1350000, NULL, 1, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMjk=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10030, 'asdf, Phường Đồng Xuân, Quận Hoàn Kiếm, Thành phố Hà Nội', '2022-08-08', 'Tan Vu', 1, '2022-08-17', 'asd', '0987654321', '2022-08-20', 1950000, NULL, 4, 'tanvx308@gmail.com', NULL, 'MTAwMzA=', 1, 'JT123456', NULL, 'J&T', NULL);
INSERT INTO `orders` VALUES (10031, 'op, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-08', 'Tan Vu', 1, '2022-08-09', 'po', '0987654321', '2022-08-13', 1200000, NULL, 4, 'tanvx308@gmail.com', NULL, 'MTAwMzE=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10032, 'j, Phường Đồng Xuân, Quận Hoàn Kiếm, Thành phố Hà Nội', '2022-08-08', 'Công Minh Idol', 0, '2022-08-18', 'Giao nhanh lên bạn ơi\n', '0987654321', '2022-08-13', 1530000, NULL, 2, 'tanvx308@gmail.com', NULL, 'MTAwMzI=', 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10033, 'kkk, Xã Nghĩa Thuận, Huyện Quản Bạ, Tỉnh Hà Giang', '2022-08-08', 'Công Minh Idol', 0, '2022-08-08', 'lkkk', '0987654321', '2022-08-13', 1400000, NULL, 1, 'tanvx308@gmail.com', NULL, 'MTAwMzM=', 0, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10034, 'ooo, Xã Đức Hạnh, Huyện Bảo Lâm, Tỉnh Cao Bằng', '2022-08-08', 'Công Minh Idol', 0, '2022-08-08', 'jjj', '0987654321', '2022-08-13', 2450000, NULL, 1, 'tanvx308@gmail.com', NULL, 'MTAwMzQ=', 0, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10035, '69, Phường Thượng Cát, Quận Bắc Từ Liêm, Thành phố Hà Nội', '2022-08-09', 'Tan Vu', 0, '2022-08-09', '96', '0987654321', '2022-08-14', 1950000, 11, 3, 'tanvx308@gmail.com', NULL, 'MTAwMzU=', 0, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10036, '22, Phường Thượng Cát, Quận Bắc Từ Liêm, Thành phố Hà Nội', '2022-08-09', 'Tan Vu', 1, '2022-08-09', 'abc', '0366202468', '2022-08-14', 1645000, 11, 4, 'tanvx308@gmail.com', NULL, 'MTAwMzY=', 0, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10037, '333, Thị trấn Văn Điển, Huyện Thanh Trì, Thành phố Hà Nội', '2022-08-10', 'Tan Vu', 0, '2022-08-16', '333', '0987654321', '2022-08-15', 350000, NULL, 2, 'tanvx308@gmail.com', NULL, 'MTAwMzc=', 0, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10038, 'abc, Phường Thượng Cát, Quận Bắc Từ Liêm, Thành phố Hà Nội', '2022-08-10', 'Tan Vu', 0, '2022-08-16', 'abc', '0987654321', '2022-08-15', 350000, NULL, 2, 'tanvx308@gmail.com', NULL, 'MTAwMzg=', 0, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10039, 'abc, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-10', 'Công Minh Idol', 0, '2022-08-22', 'Nhà Công Minh', '0987654321', '2022-08-15', 1400000, NULL, 5, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwMzk=', 0, NULL, 'Đặt trùng - Mua lại', NULL, NULL);
INSERT INTO `orders` VALUES (10040, 'aaa, Xã Hồ Bốn, Huyện Mù Căng Chải, Tỉnh Yên Bái', '2022-08-10', 'Tan Vu', 0, '2022-08-17', 'alo', '0987654321', '2022-08-15', 1350000, NULL, 5, 'hunghvph12990@fpt.edu.vn', NULL, 'MTAwNDA=', 0, NULL, 'Gojek - Khách hàng hủy', NULL, NULL);
INSERT INTO `orders` VALUES (10041, 'abc, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-10', 'Công Minh Idol', 0, '2022-08-16', 'abc', '0987654321', '2022-08-20', 350000, NULL, 3, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwNDE=', 0, '123456', NULL, 'ViettelPost', NULL);
INSERT INTO `orders` VALUES (10042, 'abc, Phường Cầu Diễn, Quận Nam Từ Liêm, Thành phố Hà Nội', '2022-08-10', 'Công Minh Idol', 1, '2022-08-10', 'abc', '0987654321', '2022-08-15', 2350000, 2, 4, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwNDI=', 0, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10043, 'aaa, Thị trấn Phó Bảng, Huyện Đồng Văn, Tỉnh Hà Giang', '2022-08-11', 'Công Minh Idol', 0, '2022-08-12', 'aaa', '0987654321', '2022-08-16', 490000, NULL, 3, 'tanvx308@gmail.com', NULL, 'MTAwNDM=', 0, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10044, 'a, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-11', 'Công Minh Idol', 0, '2022-08-17', 'a', '0987654321', '2022-08-20', 980000, NULL, 5, 'tanvx308@gmail.com', NULL, 'MTAwNDQ=', 0, 'VIET123456', 'AhaMove - Hết xiền', 'ViettelPost', NULL);
INSERT INTO `orders` VALUES (10045, 'a, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-11', 'Công Minh Idol', 1, '2022-08-11', 'a', '0987654321', '2022-08-16', 6300000, 11, 4, 'tanvx308@gmail.com', NULL, 'MTAwNDU=', 0, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10046, 'aaa, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-11', 'Công Minh Idol', 1, '2022-08-11', 'aaa', '0987654321', '2022-08-16', 1215000, 11, 4, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwNDY=', 0, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10047, 'abc, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-11', 'Công Minh Idol', 0, '2022-08-11', 'abc', '0987654321', '2022-08-16', 1323000, 11, 5, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwNDc=', 0, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (10049, '333, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-25', 'Tan Vu', 1, '2022-08-28', 'abc', '0366202468', '2022-08-31', 490000, NULL, 4, 'tanvx308@gmail.com', NULL, 'MTAwNDk=', 0, 'abc', NULL, 'J&T', 'Chuyển khoản qua ngân hàng');
INSERT INTO `orders` VALUES (10051, 'abc, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-25', 'Công Minh Idol', 1, '2022-08-29', 'abc', '0987654321', '2022-09-01', 980000, NULL, 4, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwNTE=', 0, '123456', NULL, 'ViettelPost', 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10053, 'abc, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-25', 'Công Minh Idol', 0, '2022-08-25', 'abc', '0987654321', '2022-08-30', 441000, NULL, 1, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwNTM=', 0, NULL, NULL, NULL, 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10055, 'abc, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-25', 'Công Minh Idol', 1, '2022-08-28', 'abc', '0987654321', '2022-09-01', 1560000, NULL, 4, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwNTU=', 0, '123', NULL, 'ViettelPost', 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10056, 'abc, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-25', 'Công Minh Idol', 1, '2022-08-29', 'abc', '0987654321', '2022-08-31', 2450000, NULL, 4, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwNTY=', 0, '123456', NULL, 'ViettelPost', 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10057, 'HN, Phường Cầu Diễn, Quận Nam Từ Liêm, Thành phố Hà Nội', '2022-08-27', 'Vu Xuan Tan', 0, '2022-08-27', 'Free ship nhớ', '0987654321', '2022-09-01', 3850000, 11, 5, 'minhncph6969@fpt.edu.vn', NULL, 'MTAwNTc=', 0, NULL, 'Đặt trùng - abc', NULL, 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10058, 'abc, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-27', 'Công Minh Idol', 0, '2022-08-27', 'abc', '0987654321', '2022-09-01', 1400000, NULL, 5, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwNTg=', 0, NULL, 'AhaMove - Khách hàng không nghe máy', NULL, 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10059, 'HN, Phường Hàng Mã, Quận Hoàn Kiếm, Thành phố Hà Nội', '2022-08-27', 'Vu Xuan Tan', 0, '2022-08-27', 'abc', '0987654321', '2022-09-01', 1365000, 11, 5, 'minhncph6969@fpt.edu.vn', NULL, 'MTAwNTk=', 0, NULL, 'Gojek - Mua cái khác', NULL, 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10060, 'HN, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-27', 'Vu Xuan Tan', 0, '2022-08-27', 'abc', '0987654321', '2022-09-01', 980000, 11, 5, 'minhncph6969@fpt.edu.vn', NULL, 'MTAwNjA=', 0, NULL, 'Gojek - mua cái khác', NULL, 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10061, 'HN, Thị trấn Sóc Sơn, Huyện Sóc Sơn, Thành phố Hà Nội', '2022-08-27', 'Vu Xuan Tan', 0, '2022-08-27', 'abc', '0987654321', '2022-09-01', 3430000, 11, 5, 'minhncph6969@fpt.edu.vn', NULL, 'MTAwNjE=', 0, NULL, 'Gojek - Mua cái khác', NULL, 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10062, 'xxx, Phường Ngọc Thụy, Quận Long Biên, Thành phố Hà Nội, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-27', 'Nguyễn Công Minh', 0, '2022-08-27', 'abc', '0697856354', '2022-09-01', 280000, 2, 5, 'minhminhnc@gmail.com', 12, 'MTAwNjI=', 0, NULL, 'Đặt trùng - Mua lại', NULL, 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10063, 'số 55 Tổ Dân Phố Đông Ba, Phường Phúc Tân, Quận Hoàn Kiếm, Thành phố Hà Nội', '2022-08-27', 'Vu Xuan Tan', 1, '2022-08-27', 'abc', '0987654321', '2022-08-30', 980000, 11, 4, 'tanvx308@gmail.com', 3, 'MTAwNjM=', 0, 'abc123456', NULL, 'ViettelPost', 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10064, '333, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-27', 'Công Minh Idol', 0, '2022-08-28', 'abc', '0987654321', '2022-09-01', 2240000, NULL, 5, 'minhncph13186@fpt.edu.vn', 1, 'MTAwNjQ=', 0, NULL, 'Thêm bớt sản phẩm - abc', NULL, 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10065, '123, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-28', 'Công Minh Idol', 1, '2022-08-28', '123', '0987654321', '2022-09-01', 8800000, NULL, 4, 'minhncph13186@fpt.edu.vn', NULL, 'MTAwNjU=', 0, 'JT123456', NULL, 'J&T', 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10066, 'số 55 Tổ Dân Phố Đông Ba, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-28', 'Vu Xuan Tan', 1, '2022-08-28', '333', '0987654321', '2022-08-31', 7840000, 11, 4, 'tanvx308@gmail.com', 13, 'MTAwNjY=', 0, 'abc', NULL, 'ViettelPost', 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10067, 'số 55 Tổ Dân Phố Đông Ba, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-28', 'Vu Xuan Tan', 1, '2022-08-28', '123', '0987654321', '2022-08-31', 6720000, 11, 4, 'tanvx308@gmail.com', 10, 'MTAwNjc=', 0, '123456', NULL, 'ViettelPost', 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10068, 'số 55 Tổ Dân Phố Đông Ba, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-28', 'Vu Xuan Tan', 1, '2022-08-28', '', '0987654321', '2022-08-31', 1400000, 11, 4, 'tanvx308@gmail.com', NULL, 'MTAwNjg=', 0, 'abc', NULL, 'ViettelPost', 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10069, 'số 55 Tổ Dân Phố Đông Ba, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-28', 'Vu Xuan Tan', 0, '2022-08-28', 'Free ship nhớ', '0987654321', '2022-08-31', 15200000, 11, 5, 'tanvx308@gmail.com', NULL, 'MTAwNjk=', 0, 'GJ123', 'Đặt trùng - alo', 'Gojek', 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10070, 'số 55 Tổ Dân Phố Đông Ba, Xã Pải Lủng, Huyện Mèo Vạc, Tỉnh Hà Giang', '2022-08-28', 'Vu Xuan Tan', 1, '2022-08-29', 'abc', '0987654321', '2022-08-31', 2700000, 11, 4, 'tanvx308@gmail.com', NULL, 'MTAwNzA=', 0, '123', NULL, 'ViettelPost', 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10071, 'số 55 Tổ Dân Phố Đông Ba, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-29', 'Vu Xuan Tan', 1, '2022-08-29', 'Free ship', '0987654321', '2022-08-31', 12000000, 11, 4, 'tanvx308@gmail.com', NULL, 'MTAwNzE=', 0, '123456', NULL, 'ViettelPost', 'Thanh toán khi giao hàng(COD)');
INSERT INTO `orders` VALUES (10072, 'số 55 Tổ Dân Phố Đông Ba, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội', '2022-08-29', 'Vu Xuan Tan', 1, '2022-08-29', 'aaa', '0987654321', '2022-08-31', 3850000, 11, 4, 'tanvx308@gmail.com', NULL, 'MTAwNzI=', 0, 'abc', NULL, 'ViettelPost', 'Thanh toán khi giao hàng(COD)');

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint NULL DEFAULT NULL,
  `product_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKdswxvx2nl2032yjv609r29sdr`(`category_id` ASC) USING BTREE,
  INDEX `FK5w81wp3eyugvi2lii94iao3fm`(`product_id` ASC) USING BTREE,
  CONSTRAINT `FK5w81wp3eyugvi2lii94iao3fm` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKdswxvx2nl2032yjv609r29sdr` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES (1, 1, 7);
INSERT INTO `product_category` VALUES (2, 2, 6);
INSERT INTO `product_category` VALUES (3, 3, 5);
INSERT INTO `product_category` VALUES (4, 4, 3);
INSERT INTO `product_category` VALUES (5, 5, 4);
INSERT INTO `product_category` VALUES (6, 6, 2);
INSERT INTO `product_category` VALUES (7, 7, 1);
INSERT INTO `product_category` VALUES (8, 7, 8);
INSERT INTO `product_category` VALUES (9, 6, 9);
INSERT INTO `product_category` VALUES (10, 5, 10);
INSERT INTO `product_category` VALUES (11, 4, 11);
INSERT INTO `product_category` VALUES (12, 3, 12);
INSERT INTO `product_category` VALUES (13, 2, 13);
INSERT INTO `product_category` VALUES (14, 1, 14);
INSERT INTO `product_category` VALUES (15, 1, 15);
INSERT INTO `product_category` VALUES (16, 2, 16);
INSERT INTO `product_category` VALUES (17, 3, 17);
INSERT INTO `product_category` VALUES (18, 4, 18);
INSERT INTO `product_category` VALUES (19, 5, 19);
INSERT INTO `product_category` VALUES (20, 6, 20);
INSERT INTO `product_category` VALUES (21, 7, 21);
INSERT INTO `product_category` VALUES (22, 7, 22);
INSERT INTO `product_category` VALUES (23, 6, 23);
INSERT INTO `product_category` VALUES (24, 5, 24);
INSERT INTO `product_category` VALUES (25, 4, 25);
INSERT INTO `product_category` VALUES (26, 3, 26);
INSERT INTO `product_category` VALUES (27, 2, 27);
INSERT INTO `product_category` VALUES (30, 3, 29);
INSERT INTO `product_category` VALUES (31, 7, 29);
INSERT INTO `product_category` VALUES (67, 1, 31);
INSERT INTO `product_category` VALUES (68, 4, 31);
INSERT INTO `product_category` VALUES (69, 5, 31);
INSERT INTO `product_category` VALUES (70, 7, 31);
INSERT INTO `product_category` VALUES (73, 1, 32);
INSERT INTO `product_category` VALUES (74, 7, 32);
INSERT INTO `product_category` VALUES (75, 3, 28);
INSERT INTO `product_category` VALUES (76, 6, 28);
INSERT INTO `product_category` VALUES (77, 7, 28);
INSERT INTO `product_category` VALUES (78, 1, 30);
INSERT INTO `product_category` VALUES (79, 4, 30);
INSERT INTO `product_category` VALUES (80, 5, 30);
INSERT INTO `product_category` VALUES (81, 6, 30);
INSERT INTO `product_category` VALUES (82, 7, 30);
INSERT INTO `product_category` VALUES (87, 1, 34);
INSERT INTO `product_category` VALUES (88, 5, 34);
INSERT INTO `product_category` VALUES (97, 1, 33);
INSERT INTO `product_category` VALUES (98, 5, 33);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` date NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` bigint NOT NULL,
  `brand_id` bigint NULL DEFAULT NULL,
  `sale_id` bigint NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_57ivhy5aj3qfmdvl6vxdfjs4p`(`code` ASC) USING BTREE,
  INDEX `FKa3a4mpsfdf4d2y6r8ra3sc8mv`(`brand_id` ASC) USING BTREE,
  INDEX `FKorwhur7undd0tdqkijmpf7882`(`sale_id` ASC) USING BTREE,
  CONSTRAINT `FKa3a4mpsfdf4d2y6r8ra3sc8mv` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKorwhur7undd0tdqkijmpf7882` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Fw2888', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Sneaker Adidas Bravada NAM ANA', 100, 4, 2, 1);
INSERT INTO `products` VALUES (2, 'H00521', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Sneaker Adidas Eq21 Triple Black', 100, 4, 2, 1);
INSERT INTO `products` VALUES (3, 'Fx5849', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân. ', '2022-06-01', 'Giày Sneaker Adidas Stansmith Mule', 100, 4, 2, 1);
INSERT INTO `products` VALUES (4, 'Q46225', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Sneaker Adidas 4d Fwd Pulse', 100, 4, 1, 1);
INSERT INTO `products` VALUES (5, 'MSN913', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY NIKE RENEW RIDE 3 NỮ', 100, 3, 2, 1);
INSERT INTO `products` VALUES (6, 'MSN911', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY NIKE AIR ZOOM PEGASUS NAM ', 100, 3, 3, 1);
INSERT INTO `products` VALUES (7, 'MSN910', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY NIKE AIR ZOOM PEGASUS NỮ', 100, 3, 1, 1);
INSERT INTO `products` VALUES (8, 'MSN908', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY NIKE AIR ZOOM RIVAL FLY', 100, 3, 2, 1);
INSERT INTO `products` VALUES (9, 'GV7412', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'REEBOK ROYAL TECHQUET DEPOR ACE NAE', 100, 2, 3, 1);
INSERT INTO `products` VALUES (10, 'EG9415', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'REEBOK ROYAL COMPLETE CLN2 HAZN AB', 100, 2, 1, 1);
INSERT INTO `products` VALUES (11, 'GY7749', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'LIQUIFECT 902 BR AUTMAX AB SN', 100, 2, 2, 1);
INSERT INTO `products` VALUES (12, 'GY8453', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'HIIT TR 2.0 FIFA ZATHER ONE', 100, 2, 3, 1);
INSERT INTO `products` VALUES (13, 'MSP215', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY PUMA ANZARUB LITE NAM A1', 100, 1, 1, 1);
INSERT INTO `products` VALUES (14, 'MSP207', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY PUMA CAVEN NỮ AB CAP', 100, 1, 2, 1);
INSERT INTO `products` VALUES (15, 'MSP223', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY PUMA ELICTIRIFY NITRO NAM BB', 100, 1, 3, 1);
INSERT INTO `products` VALUES (16, 'MSP218', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY PUMA RALPH SAMPSON LO JOKER', 100, 1, 1, 1);
INSERT INTO `products` VALUES (17, 'h04190', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Fila Unisex Como Mule Trắng', 100, 5, 2, 1);
INSERT INTO `products` VALUES (18, 'h041919', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Fila Unisex Scanline Mule Đen', 100, 5, 3, 1);
INSERT INTO `products` VALUES (19, 'h026064', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Thể Thao Fila Shiny Pink ', 100, 5, 1, 1);
INSERT INTO `products` VALUES (20, 'M7650', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Chuck Taylor All Star Classic AB', 100, 6, 2, 1);
INSERT INTO `products` VALUES (21, 'A00416C', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Chuck Taylor All Star Crafted Stripes', 100, 6, 3, 1);
INSERT INTO `products` VALUES (22, 'A00621C', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Chuck 70 Seasonal Color CX CATER', 100, 6, 1, 1);
INSERT INTO `products` VALUES (23, 'A03175C', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Chuck Taylor All Star Lift Platform', 100, 6, 2, 1);
INSERT INTO `products` VALUES (24, 'ARVS001-5', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Super Light 19 nam AB', 100, 7, 3, 1);
INSERT INTO `products` VALUES (25, 'ARMS003-2', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày chạy bộ nam SUPER ID', 100, 7, 1, 1);
INSERT INTO `products` VALUES (26, 'ARHR042-4', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày chạy bộ nữ SUPER ID', 100, 7, 2, 1);
INSERT INTO `products` VALUES (27, 'ARHR132-1', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày chạy bộ thể thao nữ', 100, 7, 1, 1);
INSERT INTO `products` VALUES (28, 'NEW888', '2022-07-31', 'Giày siêu siêu đẹp', '2022-08-27', 'Giày Adidas BOA', 1, 3, 4, 1);
INSERT INTO `products` VALUES (29, 'BOA888', '2022-07-31', 'X', '2022-07-31', 'ADIDAS BOA New', 1, 3, 4, 1);
INSERT INTO `products` VALUES (30, 'NIKE2022', '2022-07-31', 'Sản phẩm mới nhất của NIKE', '2022-08-27', 'NIKE 2022', 1, 3, 3, 1);
INSERT INTO `products` VALUES (31, 'SUPER2022', '2022-07-31', 'Mẫu giày mới của ADIDAS năm 2022', '2022-08-01', 'ADIDAS Super Ultra', 1, 8, 3, 1);
INSERT INTO `products` VALUES (32, 'ULT9999', '2022-08-27', 'Kiểu dáng: Ôm vừa, có dây buộc. Đế ngoài: Đế ngoài bằng cao su chống trơn trượt', '2022-08-27', 'Ultraboost', 1, 4, 3, 1);
INSERT INTO `products` VALUES (33, 'Gucci8888', '2022-08-28', 'Big City Boyyyyyyy', '2022-08-28', 'Gucci Gang', 1, 8, 2, 1);
INSERT INTO `products` VALUES (34, 'GC00000', '2022-08-28', 'gucci', '2022-08-28', 'Gucci000', 1, 8, 3, 1);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, '2022-06-01', '2022-06-01', 'ADMIN');
INSERT INTO `roles` VALUES (2, '2022-06-01', '2022-06-01', 'EMP');
INSERT INTO `roles` VALUES (3, '2022-06-01', '2022-06-01', 'CUS');

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int NULL DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES (1, '2022-06-01', 'Chương trình mặc định', 0, b'1', '2022-06-01', 'Mặc định');
INSERT INTO `sales` VALUES (2, '2022-06-01', 'Thông thường', 20, b'1', '2022-06-01', 'Thông thường');
INSERT INTO `sales` VALUES (3, '2022-06-01', 'Siêu giảm giá', 30, b'1', '2022-06-01', 'Siêu giảm giá');
INSERT INTO `sales` VALUES (4, '2022-07-15', 'Công Minh Idol xả hàng', 10, b'0', '2022-07-15', 'Công Minh Idol');

-- ----------------------------
-- Table structure for vouchers
-- ----------------------------
DROP TABLE IF EXISTS `vouchers`;
CREATE TABLE `vouchers`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL,
  `discount` int NULL DEFAULT NULL,
  `expire_date` date NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_30ftp2biebbvpik8e49wlmady`(`code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vouchers
-- ----------------------------
INSERT INTO `vouchers` VALUES (1, 'ADIDAS2022', 1, '2022-08-28', 50, '2022-08-30', 1);
INSERT INTO `vouchers` VALUES (2, 'NIKE2022', 1, '2022-06-01', 30, '2022-06-01', 0);
INSERT INTO `vouchers` VALUES (3, 'NIKE2021', 0, '2022-08-27', 30, '2022-08-30', 1);
INSERT INTO `vouchers` VALUES (4, 'ADIDAS888', 0, '2022-08-25', 30, '2022-08-31', 1);
INSERT INTO `vouchers` VALUES (5, 'ADIDAS8888', 0, '2022-08-25', 10, '2022-08-30', 1);
INSERT INTO `vouchers` VALUES (6, 'ADIDAS111', 0, '2022-08-25', 20, '2022-09-14', 1);
INSERT INTO `vouchers` VALUES (7, 'ADIDAS222', 1, '2022-07-13', 25, '2022-07-30', 1);
INSERT INTO `vouchers` VALUES (8, 'ADIDAS333', 1, '2022-07-13', 15, '2022-07-26', 1);
INSERT INTO `vouchers` VALUES (9, 'ADIDAS444', 1, '2022-07-13', 35, '2023-08-27', 1);
INSERT INTO `vouchers` VALUES (10, 'ADIDAS555', 0, '2022-08-28', 30, '2023-07-21', 1);
INSERT INTO `vouchers` VALUES (11, 'ADIDAS889', 0, '2022-08-11', 10, '2022-08-30', 1);
INSERT INTO `vouchers` VALUES (12, 'T8CgNF5jWG', 1, '2022-08-27', 20, '2023-08-27', 1);
INSERT INTO `vouchers` VALUES (13, '6Mnmk6aOLU', 0, '2022-08-28', 30, '2023-08-28', 1);
INSERT INTO `vouchers` VALUES (14, 'o06jPeZuVA', 1, '2022-08-28', 30, '2023-08-28', 1);
INSERT INTO `vouchers` VALUES (15, 'KqqgfsnshW', 1, '2022-08-28', 10, '2023-08-28', 1);
INSERT INTO `vouchers` VALUES (16, 'HGWfw7VB6m', 1, '2022-08-28', 30, '2023-08-28', 1);
INSERT INTO `vouchers` VALUES (17, 'MST6X5lhBN', 1, '2022-08-28', 10, '2023-08-28', 1);
INSERT INTO `vouchers` VALUES (18, 'JwXNmZhgeS', 1, '2022-08-29', 20, '2023-08-29', 1);
INSERT INTO `vouchers` VALUES (19, 'AvCreVbd3E', 1, '2022-08-29', 20, '2023-08-29', 1);
INSERT INTO `vouchers` VALUES (20, 'ZrXi6OWrl8', 1, '2022-08-29', 30, '2023-08-29', 1);
INSERT INTO `vouchers` VALUES (21, 'k5BJAB5s8q', 1, '2022-08-29', 30, '2023-08-29', 1);

SET FOREIGN_KEY_CHECKS = 1;
