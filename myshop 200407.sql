/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost:3306
 Source Schema         : myshop

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 07/04/2020 01:46:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alteruser
-- ----------------------------
DROP TABLE IF EXISTS `alteruser`;
CREATE TABLE `alteruser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alterName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alterPassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '马桶');

-- ----------------------------
-- Table structure for cproperty
-- ----------------------------
DROP TABLE IF EXISTS `cproperty`;
CREATE TABLE `cproperty`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cpid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKjoi1xle984p0m4rsl6ttuaght`(`cpid`) USING BTREE,
  CONSTRAINT `FKjoi1xle984p0m4rsl6ttuaght` FOREIGN KEY (`cpid`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cpropertyvalue
-- ----------------------------
DROP TABLE IF EXISTS `cpropertyvalue`;
CREATE TABLE `cpropertyvalue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ptid` int(11) NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK7sy8r0rkpa0kcwgqp1hcyaupd`(`ptid`) USING BTREE,
  INDEX `FKbb5cbc3bxyodk1g4234wsx4fq`(`pid`) USING BTREE,
  CONSTRAINT `FKbb5cbc3bxyodk1g4234wsx4fq` FOREIGN KEY (`pid`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK7sy8r0rkpa0kcwgqp1hcyaupd` FOREIGN KEY (`ptid`) REFERENCES `cproperty` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` int(11) NULL DEFAULT NULL,
  `opid` int(11) NULL DEFAULT NULL,
  `ouid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKa92q6y9i1x6nn5ctt1v43lsfj`(`opid`) USING BTREE,
  INDEX `FK1sklbpyletkns6yh1m7bsorvu`(`ouid`) USING BTREE,
  CONSTRAINT `FK1sklbpyletkns6yh1m7bsorvu` FOREIGN KEY (`ouid`) REFERENCES `user_` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKa92q6y9i1x6nn5ctt1v43lsfj` FOREIGN KEY (`opid`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for orderitem_pertyvalue
-- ----------------------------
DROP TABLE IF EXISTS `orderitem_pertyvalue`;
CREATE TABLE `orderitem_pertyvalue`  (
  `orderitem_id` int(11) NOT NULL,
  `propertyvalue_id` int(11) NOT NULL,
  PRIMARY KEY (`orderitem_id`, `propertyvalue_id`) USING BTREE,
  INDEX `FKf3ap6h229mjax06b0mnxn65vg`(`propertyvalue_id`) USING BTREE,
  CONSTRAINT `FKe5l8vdgsdm7vg0gjul6sl94tg` FOREIGN KEY (`orderitem_id`) REFERENCES `orderitem` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKf3ap6h229mjax06b0mnxn65vg` FOREIGN KEY (`propertyvalue_id`) REFERENCES `propertyvalue` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for orders_
-- ----------------------------
DROP TABLE IF EXISTS `orders_`;
CREATE TABLE `orders_`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_oid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK8an1dqaljdtb1m8hescs1syla`(`o_oid`) USING BTREE,
  CONSTRAINT `FK8an1dqaljdtb1m8hescs1syla` FOREIGN KEY (`o_oid`) REFERENCES `orderitem` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `originalPrice` float NULL DEFAULT NULL,
  `promotePrice` float NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `subTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKcxmxpfdetdqdqm69d4cgbhotv`(`cid`) USING BTREE,
  CONSTRAINT `FKcxmxpfdetdqdqm69d4cgbhotv` FOREIGN KEY (`cid`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '2020-04-07 01:40:40', '马桶啊', 39.9, 36.6, 30, '马桶', 1);

-- ----------------------------
-- Table structure for productimage
-- ----------------------------
DROP TABLE IF EXISTS `productimage`;
CREATE TABLE `productimage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKc3xlrvuah7r3w3mbr58cr9uwh`(`pid`) USING BTREE,
  CONSTRAINT `FKc3xlrvuah7r3w3mbr58cr9uwh` FOREIGN KEY (`pid`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of productimage
-- ----------------------------
INSERT INTO `productimage` VALUES (1, 'wpimage', 1);
INSERT INTO `productimage` VALUES (2, 'wpimage', 1);
INSERT INTO `productimage` VALUES (3, 'wpimage', 1);
INSERT INTO `productimage` VALUES (4, 'wpimage', 1);
INSERT INTO `productimage` VALUES (5, 'dtimage', 1);
INSERT INTO `productimage` VALUES (6, 'dtimage', 1);
INSERT INTO `productimage` VALUES (7, 'dtimage', 1);
INSERT INTO `productimage` VALUES (8, 'dtimage', 1);
INSERT INTO `productimage` VALUES (9, 'dtimage', 1);

-- ----------------------------
-- Table structure for property
-- ----------------------------
DROP TABLE IF EXISTS `property`;
CREATE TABLE `property`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK7nvqrwxx46dsnjeb3markwc0s`(`cid`) USING BTREE,
  CONSTRAINT `FK7nvqrwxx46dsnjeb3markwc0s` FOREIGN KEY (`cid`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for propertyvalue
-- ----------------------------
DROP TABLE IF EXISTS `propertyvalue`;
CREATE TABLE `propertyvalue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK5w5mf20w12fifw8g467jy1pmf`(`pid`) USING BTREE,
  CONSTRAINT `FK5w5mf20w12fifw8g467jy1pmf` FOREIGN KEY (`pid`) REFERENCES `property` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_
-- ----------------------------
DROP TABLE IF EXISTS `user_`;
CREATE TABLE `user_`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatarUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` int(11) NULL DEFAULT NULL,
  `nickName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `random` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `session_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ouid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKn5eean02iyadwl3ryy5eoyr1a`(`ouid`) USING BTREE,
  CONSTRAINT `FKn5eean02iyadwl3ryy5eoyr1a` FOREIGN KEY (`ouid`) REFERENCES `orderitem` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_
-- ----------------------------
INSERT INTO `user_` VALUES (1, 'https://wx.qlogo.cn/mmopen/vi_32/WrAziazlczso2orGnv3rWian4vwJONhQPP3qN6nibBS7Lec1iaaXqqKUwcPQQJRGBYy4QCq5Njt5iawHUgoeqQ7PtBQ/132', 'Chow', NULL, 1, '下雨天', 'oMnSq5YjkQr-pR4RgYvu7UPEoenE', 'Guangxi', '794021F77ACF4615B09CEBFC9286BFC9', '3pGYrKbqIh6TCxBBhJ1f6Q==', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
