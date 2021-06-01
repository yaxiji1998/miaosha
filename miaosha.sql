/*
 Navicat Premium Data Transfer

 Source Server         : thisComputer
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : miaosha

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 01/06/2021 16:59:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `price` decimal(64, 2) NOT NULL DEFAULT 0.00,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `sales` int NOT NULL DEFAULT 0,
  `img_url` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, 'iphone99', 800.00, '最好用的iphone', 9, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1529777722,1161573978&fm=26&gp=0.jpg');
INSERT INTO `item` VALUES (2, 'iphone99', 800.00, '最好用的iphone', 0, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1529777722,1161573978&fm=26&gp=0.jpg');
INSERT INTO `item` VALUES (3, 'iphone8', 200.00, '第二好用的iphone', 3, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1529777722,1161573978&fm=26&gp=0.jpg');
INSERT INTO `item` VALUES (4, 'iphone8', 200.00, '第二好用的iphone', 0, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1529777722,1161573978&fm=26&gp=0.jpg');

-- ----------------------------
-- Table structure for item_stock
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stock` int NOT NULL DEFAULT 0,
  `item_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `item_id_index`(`item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of item_stock
-- ----------------------------
INSERT INTO `item_stock` VALUES (9, 94, 1);
INSERT INTO `item_stock` VALUES (10, 100, 2);
INSERT INTO `item_stock` VALUES (11, 97, 3);
INSERT INTO `item_stock` VALUES (12, 300, 4);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_id` int NOT NULL DEFAULT 0,
  `item_id` int NOT NULL DEFAULT 0,
  `item_price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `amount` int NOT NULL DEFAULT 0,
  `order_price` decimal(40, 2) NOT NULL DEFAULT 0.00,
  `promo_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('2019080200000000', 40, 1, 23.00, 1, 23.00, 1);
INSERT INTO `order_info` VALUES ('2019080200000100', 40, 1, 23.00, 1, 23.00, 1);
INSERT INTO `order_info` VALUES ('2019080200000200', 40, 1, 23.00, 1, 23.00, 1);
INSERT INTO `order_info` VALUES ('2019080200000300', 40, 3, 200.00, 1, 200.00, 0);
INSERT INTO `order_info` VALUES ('2019080200000400', 40, 3, 200.00, 1, 200.00, 0);
INSERT INTO `order_info` VALUES ('2019080200000500', 40, 3, 200.00, 1, 200.00, 0);
INSERT INTO `order_info` VALUES ('2021041600000600', 56, 1, 800.00, 1, 800.00, 0);
INSERT INTO `order_info` VALUES ('2021042000000700', 61, 1, 800.00, 1, 800.00, 0);
INSERT INTO `order_info` VALUES ('2021042200000800', 61, 1, 23.00, 1, 23.00, 1);
INSERT INTO `order_info` VALUES ('2021042200000900', 61, 1, 23.00, 1, 23.00, 1);
INSERT INTO `order_info` VALUES ('2021042200001000', 61, 1, 23.00, 1, 23.00, 1);
INSERT INTO `order_info` VALUES ('2021042200001100', 61, 1, 23.00, 1, 23.00, 1);

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `promo_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `start_date` datetime(0) NOT NULL DEFAULT '2019-08-09 19:55:52',
  `end_date` datetime(0) NOT NULL DEFAULT '2019-08-09 19:55:52',
  `item_id` int NOT NULL DEFAULT 0,
  `promo_item_price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of promo
-- ----------------------------
INSERT INTO `promo` VALUES (1, 'iphone大减价', '2019-08-01 19:55:47', '2021-06-19 19:55:52', 1, 23.00);
INSERT INTO `promo` VALUES (2, 'iphone8大减价', '2019-08-27 20:17:17', '2021-06-25 20:18:18', 3, 3.00);

-- ----------------------------
-- Table structure for sequence_info
-- ----------------------------
DROP TABLE IF EXISTS `sequence_info`;
CREATE TABLE `sequence_info`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `current_value` int NOT NULL DEFAULT 0,
  `step` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sequence_info
-- ----------------------------
INSERT INTO `sequence_info` VALUES ('order_info', 12, 1);

-- ----------------------------
-- Table structure for stock_log
-- ----------------------------
DROP TABLE IF EXISTS `stock_log`;
CREATE TABLE `stock_log`  (
  `stock_log_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int NOT NULL DEFAULT 0,
  `amount` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`stock_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock_log
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `gender` tinyint NOT NULL DEFAULT 0 COMMENT '1代表男性\r\n',
  `age` int NOT NULL DEFAULT 0,
  `telphone` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `register_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '//byphone,bywechat,byalipay,',
  `third_party_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `telphone_unique_index`(`telphone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (40, '1', 1, 1, '123', 'byphone', 0);
INSERT INTO `user_info` VALUES (52, '1', 1, 1, '111111', 'byphone', 0);
INSERT INTO `user_info` VALUES (53, '1', 1, 11111111, '11', 'byphone', 0);
INSERT INTO `user_info` VALUES (55, '1', 1, 1, '111', 'byphone', 0);
INSERT INTO `user_info` VALUES (56, '1', 1, 1, '333', 'byphone', 0);
INSERT INTO `user_info` VALUES (61, '1', 1, 1, '1', 'byphone', 0);

-- ----------------------------
-- Table structure for user_password
-- ----------------------------
DROP TABLE IF EXISTS `user_password`;
CREATE TABLE `user_password`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `use_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_password
-- ----------------------------
INSERT INTO `user_password` VALUES (18, 'ICy5YqxZB1uWSwcVLSNLcA==', 40);
INSERT INTO `user_password` VALUES (19, 'xMpCOKC5I4INzFCab3WEmw==', 0);
INSERT INTO `user_password` VALUES (20, 'xMpCOKC5I4INzFCab3WEmw==', 0);
INSERT INTO `user_password` VALUES (21, 'ICy5YqxZB1uWSwcVLSNLcA==', 0);
INSERT INTO `user_password` VALUES (22, 'xMpCOKC5I4INzFCab3WEmw==', 52);
INSERT INTO `user_password` VALUES (23, 'xMpCOKC5I4INzFCab3WEmw==', 53);
INSERT INTO `user_password` VALUES (24, 'xMpCOKC5I4INzFCab3WEmw==', 55);
INSERT INTO `user_password` VALUES (26, 'xMpCOKC5I4INzFCab3WEmw==', 0);
INSERT INTO `user_password` VALUES (27, 'xMpCOKC5I4INzFCab3WEmw==', 61);

SET FOREIGN_KEY_CHECKS = 1;
