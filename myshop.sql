/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : myshop

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 07/03/2020 18:10:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '生活用品');
INSERT INTO `category` VALUES (2, '学习书籍');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `originalPrice` float NULL DEFAULT NULL,
  `promotePrice` float NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  `createDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_product_category`(`cid`) USING BTREE,
  CONSTRAINT `fk_product_category` FOREIGN KEY (`cid`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '4条装 洁4条装 洁丽雅毛巾纯棉洗脸家用成人柔软全棉吸水男女加厚大毛巾洁4条装 洁丽雅毛巾纯棉洗脸家用成人柔软全棉吸水男女加厚大毛双层毛巾保湿无菌耐用型丽雅毛巾纯棉洗脸家用成人柔软软全棉吸水男女加厚大毛巾双层毛巾保湿无菌耐用型全棉吸水男女加厚大毛巾双层毛巾保湿无菌耐用型', '小米双层毛巾', 29.9, 9.9, 30, 1, NULL);
INSERT INTO `product` VALUES (2, '【java】基础书籍，从入门到精通学习无压力高清印刷质量正品', '李阳疯狂java', 89, 59.9, 60, 2, NULL);
INSERT INTO `product` VALUES (3, '杯子学生杯，轻便携袋可上班放学使用潮流360ml耐看nice型保温', '316钢材保温杯', 69.9, 29.9, 120, 1, NULL);
INSERT INTO `product` VALUES (4, '4条装 洁丽雅毛巾纯棉洗脸家用成人柔软全棉吸水男女加厚大毛巾双层毛巾保湿无菌耐用型毛巾', '小米双层毛巾', 29.9, 9.9, 30, 1, NULL);

-- ----------------------------
-- Table structure for property
-- ----------------------------
DROP TABLE IF EXISTS `property`;
CREATE TABLE `property`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_property_category`(`cid`) USING BTREE,
  CONSTRAINT `fk_property_category` FOREIGN KEY (`cid`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of property
-- ----------------------------
INSERT INTO `property` VALUES (1, 1, '长度');
INSERT INTO `property` VALUES (2, 1, '颜色');
INSERT INTO `property` VALUES (3, 3, '杯子大小');

-- ----------------------------
-- Table structure for propertyvalue
-- ----------------------------
DROP TABLE IF EXISTS `propertyvalue`;
CREATE TABLE `propertyvalue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  CONSTRAINT `propertyvalue_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `property` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of propertyvalue
-- ----------------------------
INSERT INTO `propertyvalue` VALUES (1, 1, '90cm');
INSERT INTO `propertyvalue` VALUES (2, 1, '1.2m');
INSERT INTO `propertyvalue` VALUES (3, 3, '450ml');
INSERT INTO `propertyvalue` VALUES (4, 3, '380ml');
INSERT INTO `propertyvalue` VALUES (5, 2, '粉红色');
INSERT INTO `propertyvalue` VALUES (6, 2, '蓝色');
INSERT INTO `propertyvalue` VALUES (7, 2, '卡其色');

-- ----------------------------
-- Table structure for user_
-- ----------------------------
DROP TABLE IF EXISTS `user_`;
CREATE TABLE `user_`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatarurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` int(11) NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `session_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_
-- ----------------------------
INSERT INTO `user_` VALUES (1, NULL, 'Chow', NULL, 1, NULL, 'oMnSq5YjkQr-pR4RgYvu7UPEoenE', 'Guangxi', 'eeGzWbHG8uugi6Ylg0fheQ==', NULL);

SET FOREIGN_KEY_CHECKS = 1;
