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

 Date: 11/03/2020 18:03:26
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alteruser
-- ----------------------------
INSERT INTO `alteruser` VALUES (1, '123', '456');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '生活用品');

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
  `category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_product_category`(`cid`) USING BTREE,
  INDEX `FK1mtsbur82frn64de7balymq9s`(`category_id`) USING BTREE,
  CONSTRAINT `fk_product_category` FOREIGN KEY (`cid`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '4条装 洁4条装 洁丽雅毛巾纯棉洗脸家用成人柔软全棉吸水男女加厚大毛巾洁4条装 洁丽雅毛巾纯棉洗脸家用成人柔软全棉吸水男女加厚大毛双层毛巾保湿无菌耐用型丽雅毛巾纯棉洗脸家用成人柔软软全棉吸水男女加厚大毛巾双层毛巾保湿无菌耐用型全棉吸水男女加厚大毛巾双层毛巾保湿无菌耐用型', '小米双层毛巾', 29.9, 9.9, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (3, '杯子学生杯，轻便携袋可上班放学使用潮流360ml耐看nice型保温', '316钢材保温杯', 69.9, 29.9, 120, 1, NULL, NULL);
INSERT INTO `product` VALUES (4, '4条装 洁丽雅毛巾纯棉洗脸家用成人柔软全棉吸水男女加厚大毛巾双层毛巾保湿无菌耐用型毛巾', '小米双层毛巾', 29.9, 9.9, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (5, '瑞士军刀威戈（Wenger）14.4英寸双肩包商务电脑包男 防泼水 黑色（SGB10516109044）', '小米双层毛巾', 109, 89, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (6, '爱华仕（OIWAS）万向轮拉杆箱20英寸登机箱大容量旅行箱男24英寸学生行李箱6152 淡山茱萸粉 20英寸', '万向轮拉杆箱', 309, 89, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (7, '第九城(V.NINE) 电脑包13/14英寸男女士苹果联想小新戴尔手提单肩专用包笔记本横款公文包 VD7BV11911J 深灰', '笔记本横款公文包', 179, 109, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (8, '卡帝乐鳄鱼(CARTELO) 万向轮拉杆箱耐磨防刮20英寸登机箱时尚男女行李箱轻盈商务休闲旅行箱包 炫酷黑', '休闲旅行箱包', 189, 128, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (9, '卡帝乐鳄鱼(CARTELO) 万向轮拉杆箱耐磨防刮20英寸登机箱时尚男女行李箱轻盈商务休闲旅行箱包 炫酷黑', '休闲旅行箱包', 189, 128, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (10, '卡帝乐鳄鱼(CARTELO) 万向轮拉杆箱耐磨防刮20英寸登机箱时尚男女行李箱轻盈商务休闲旅行箱包 炫酷黑', '休闲旅行箱包', 189, 128, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (11, 'FOOJO 挂钩 无痕透明粘钩 浴室挂钩贴 免钉承重厨房强力粘钩 无痕钉墙面衣柜门后挂衣钩 10片套装', '挂衣钩粘钩', 29, 19, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (12, '洁比世 精品桃木梳 月牙细齿 防静电美发按摩梳子', '按摩梳子', 9, 5.9, 30, 1, NULL, NULL);

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
-- Table structure for property_propertyvalues
-- ----------------------------
DROP TABLE IF EXISTS `property_propertyvalues`;
CREATE TABLE `property_propertyvalues`  (
  `Property_id` int(11) NOT NULL,
  `propertyvalues_id` int(11) NOT NULL,
  UNIQUE INDEX `UK_6g3ov71thmcjhbicy2ccxd26c`(`propertyvalues_id`) USING BTREE,
  INDEX `FK3y1bdllnbkbogdh2mwxwt1g9c`(`Property_id`) USING BTREE,
  CONSTRAINT `FK3y1bdllnbkbogdh2mwxwt1g9c` FOREIGN KEY (`Property_id`) REFERENCES `property` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsxntcbh6yr9geux86ii8p73n8` FOREIGN KEY (`propertyvalues_id`) REFERENCES `propertyvalue` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
