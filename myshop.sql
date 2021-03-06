<<<<<<< HEAD
# Host: 127.0.0.1  (Version: 5.5.15)
# Date: 2020-03-16 23:46:32
# Generator: MySQL-Front 5.3  (Build 4.269)

/*!40101 SET NAMES gb2312 */;

#
# Structure for table "alteruser"
#

CREATE TABLE `alteruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alterName` varchar(255) DEFAULT NULL,
  `alterPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "alteruser"
#

INSERT INTO `alteruser` VALUES (1,'123','456');

#
# Structure for table "category"
#

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (1,'生活用品',NULL),(2,'学习书籍',NULL),(3,'防晒必须',NULL),(6,'休闲鞋',NULL);

#
# Structure for table "cproperty"
#

CREATE TABLE `cproperty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cpid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `ptid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjoi1xle984p0m4rsl6ttuaght` (`cpid`),
  KEY `FKdtsq3vr1f0f0b2uhm4tvegve9` (`pid`),
  KEY `FK29qrd38rc83k07lt3k6gf3ny0` (`ptid`),
  CONSTRAINT `FK29qrd38rc83k07lt3k6gf3ny0` FOREIGN KEY (`ptid`) REFERENCES `category` (`id`),
  CONSTRAINT `FKjoi1xle984p0m4rsl6ttuaght` FOREIGN KEY (`cpid`) REFERENCES `category` (`id`),
  CONSTRAINT `FKsog8kny4xk0jioi1cj3h5fqh1` FOREIGN KEY (`ptid`) REFERENCES `cproperty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

#
# Data for table "cproperty"
#

INSERT INTO `cproperty` VALUES (16,'制造商',1,NULL,NULL),(17,'都是废话1 ',1,NULL,NULL),(18,'功能：',6,NULL,NULL),(19,'上市时间：',6,NULL,NULL),(20,'适用场景：',6,NULL,NULL),(21,'内置材质：',6,NULL,NULL),(22,'适用季节：',6,NULL,NULL),(23,'适用人群：',6,NULL,NULL);

#
# Structure for table "product"
#

CREATE TABLE `product` (
=======
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
INSERT INTO `category` VALUES (1, '鐢熸椿鐢ㄥ搧');

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
INSERT INTO `product` VALUES (1, '4鏉¤ 娲�4鏉¤ 娲佷附闆呮瘺宸剧函妫夋礂鑴稿鐢ㄦ垚浜烘煍杞叏妫夊惛姘寸敺濂冲姞鍘氬ぇ姣涘肪娲�4鏉¤ 娲佷附闆呮瘺宸剧函妫夋礂鑴稿鐢ㄦ垚浜烘煍杞叏妫夊惛姘寸敺濂冲姞鍘氬ぇ姣涘弻灞傛瘺宸句繚婀挎棤鑿岃�愮敤鍨嬩附闆呮瘺宸剧函妫夋礂鑴稿鐢ㄦ垚浜烘煍杞蒋鍏ㄦ鍚告按鐢峰コ鍔犲帤澶ф瘺宸惧弻灞傛瘺宸句繚婀挎棤鑿岃�愮敤鍨嬪叏妫夊惛姘寸敺濂冲姞鍘氬ぇ姣涘肪鍙屽眰姣涘肪淇濇箍鏃犺弻鑰愮敤鍨�', '灏忕背鍙屽眰姣涘肪', 29.9, 9.9, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (3, '鏉瓙瀛︾敓鏉紝杞讳究鎼鸿鍙笂鐝斁瀛︿娇鐢ㄦ疆娴�360ml鑰愮湅nice鍨嬩繚娓�', '316閽㈡潗淇濇俯鏉�', 69.9, 29.9, 120, 1, NULL, NULL);
INSERT INTO `product` VALUES (4, '4鏉¤ 娲佷附闆呮瘺宸剧函妫夋礂鑴稿鐢ㄦ垚浜烘煍杞叏妫夊惛姘寸敺濂冲姞鍘氬ぇ姣涘肪鍙屽眰姣涘肪淇濇箍鏃犺弻鑰愮敤鍨嬫瘺宸�', '灏忕背鍙屽眰姣涘肪', 29.9, 9.9, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (5, '鐟炲＋鍐涘垁濞佹垐锛圵enger锛�14.4鑻卞鍙岃偐鍖呭晢鍔＄數鑴戝寘鐢� 闃叉臣姘� 榛戣壊锛圫GB10516109044锛�', '灏忕背鍙屽眰姣涘肪', 109, 89, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (6, '鐖卞崕浠曪紙OIWAS锛変竾鍚戣疆鎷夋潌绠�20鑻卞鐧绘満绠卞ぇ瀹归噺鏃呰绠辩敺24鑻卞瀛︾敓琛屾潕绠�6152 娣″北鑼辫惛绮� 20鑻卞', '涓囧悜杞媺鏉嗙', 309, 89, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (7, '绗節鍩�(V.NINE) 鐢佃剳鍖�13/14鑻卞鐢峰コ澹嫻鏋滆仈鎯冲皬鏂版埓灏旀墜鎻愬崟鑲╀笓鐢ㄥ寘绗旇鏈í娆惧叕鏂囧寘 VD7BV11911J 娣辩伆', '绗旇鏈í娆惧叕鏂囧寘', 179, 109, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (8, '鍗″笣涔愰硠楸�(CARTELO) 涓囧悜杞媺鏉嗙鑰愮（闃插埉20鑻卞鐧绘満绠辨椂灏氱敺濂宠鏉庣杞荤泩鍟嗗姟浼戦棽鏃呰绠卞寘 鐐叿榛�', '浼戦棽鏃呰绠卞寘', 189, 128, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (9, '鍗″笣涔愰硠楸�(CARTELO) 涓囧悜杞媺鏉嗙鑰愮（闃插埉20鑻卞鐧绘満绠辨椂灏氱敺濂宠鏉庣杞荤泩鍟嗗姟浼戦棽鏃呰绠卞寘 鐐叿榛�', '浼戦棽鏃呰绠卞寘', 189, 128, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (10, '鍗″笣涔愰硠楸�(CARTELO) 涓囧悜杞媺鏉嗙鑰愮（闃插埉20鑻卞鐧绘満绠辨椂灏氱敺濂宠鏉庣杞荤泩鍟嗗姟浼戦棽鏃呰绠卞寘 鐐叿榛�', '浼戦棽鏃呰绠卞寘', 189, 128, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (11, 'FOOJO 鎸傞挬 鏃犵棔閫忔槑绮橀挬 娴村鎸傞挬璐� 鍏嶉拤鎵块噸鍘ㄦ埧寮哄姏绮橀挬 鏃犵棔閽夊闈㈣。鏌滈棬鍚庢寕琛ｉ挬 10鐗囧瑁�', '鎸傝。閽╃矘閽�', 29, 19, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (12, '娲佹瘮涓� 绮惧搧妗冩湪姊� 鏈堢墮缁嗛娇 闃查潤鐢电編鍙戞寜鎽╂⒊瀛�', '鎸夋懇姊冲瓙', 9, 5.9, 30, 1, NULL, NULL);

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
INSERT INTO `property` VALUES (1, 1, '闀垮害');
INSERT INTO `property` VALUES (2, 1, '棰滆壊');
INSERT INTO `property` VALUES (3, 3, '鏉瓙澶у皬');

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
>>>>>>> e758c956e5423da8048903847a93325d3ccc0bc4
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subTitle` varchar(255) DEFAULT NULL,
  `originalPrice` float DEFAULT NULL,
  `promotePrice` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_category` (`cid`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`cid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (2,'【java】基础书籍，从入门到精通学习无压力高清印刷质量正品','李阳疯狂java',89,59.9,60,2,'2020-03-12 00:00:00'),(5,'欧莱雅 防晒护肤必备美白功能 女士出行必备防晒霜','欧莱雅防晒护肤霜',69.9,28.88,60,3,'2020-03-12 00:00:00'),(29,'马桶全自动智能马桶，冲洗方便设计舒适','全自动马桶',139.9,99.9,63,1,'2020-03-15 13:34:50'),(30,'vue.js全栈开发，框架易学书籍','vue.jsx',39.9,23.9,30,2,'2020-03-15 13:36:05'),(31,'【劳力士】机械表，正品质量保证，不会影响你开法拉利哦！ ','【劳力士】机械表',1000000,99999.9,3,1,'2020-03-15 14:07:20'),(32,'【劳力士】全自动机械表，智能不影响你开法拉利','【劳力士】机械表',1000000,700000,35,1,'2020-03-15 14:57:48'),(33,'男鞋春季2020新款韩版潮流运动休闲板鞋百搭网面跑步老爹ins潮鞋子白黑 42','休闲ins潮鞋',168,128,18,6,'2020-03-16 21:13:03'),(34,'VANSΟSO男鞋wans官网帆布鞋男经典款低帮帆布鞋涂鸦滑板鞋子休闲 002GU黑白条经典百搭 41','wans帆布鞋',168,158,30,6,'2020-03-16 21:22:02'),(35,'耐克NIKE 男子 休闲鞋子 TANJUN 天君 运动鞋 812654-011 奥利奥 黑色41码',' 休闲鞋 ',419,398,3,6,'2020-03-16 23:08:04'),(36,'安踏板鞋男士2020春季轻便透气韩版潮耐磨学生跑步休闲运动鞋子小白鞋官方 -1安踏白 42','安踏板鞋',199,178,50,6,'2020-03-16 23:26:04'),(37,'安踏女鞋2020春季新款透气轻便跑步鞋时尚休闲运动鞋女慢跑鞋子户外鞋 -1裸粉/婴儿粉/安踏白【推荐】 37.5','安踏女鞋',189,189,103,6,'2020-03-16 23:29:00');

#
# Structure for table "cpropertyvalue"
#

CREATE TABLE `cpropertyvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `ptid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7sy8r0rkpa0kcwgqp1hcyaupd` (`ptid`),
  KEY `FKbb5cbc3bxyodk1g4234wsx4fq` (`pid`),
  CONSTRAINT `FK7sy8r0rkpa0kcwgqp1hcyaupd` FOREIGN KEY (`ptid`) REFERENCES `cproperty` (`id`),
  CONSTRAINT `FKbb5cbc3bxyodk1g4234wsx4fq` FOREIGN KEY (`pid`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

#
# Data for table "cpropertyvalue"
#

INSERT INTO `cpropertyvalue` VALUES (1,NULL,16,32),(2,NULL,16,31),(3,NULL,16,29),(4,NULL,17,32),(5,NULL,17,31),(6,'穿着、百搭',18,34),(7,'20203-16',19,34),(8,'休闲',20,34),(9,'棉',21,34),(10,'四季',22,34),(11,'青年更好房间合格加和规划局',23,34),(12,'-',18,33),(13,'2020-02-20',19,33),(14,'-',20,33),(15,'-',21,33),(16,'秋季',22,33),(17,'青年',23,33),(18,'跑步、约会',18,35),(19,'2020-3-12',19,35),(20,'户外、运动',20,35),(21,'棉',21,35),(22,'四季均可',22,35),(23,'大学生',23,35),(24,'撩妹',18,36),(25,'2020-03-12',19,36),(26,'运动休闲',20,36),(27,'棉',21,36),(28,'四季',22,36),(29,'13-25',23,36),(30,'撩男生',18,37),(31,'2020-03-02',19,37),(32,'跑步',20,37),(33,'纯棉、透气',21,37),(34,'全四季',22,37),(35,'女孩',23,37);

#
# Structure for table "productimage"
#

CREATE TABLE `productimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc3xlrvuah7r3w3mbr58cr9uwh` (`pid`),
  CONSTRAINT `FKc3xlrvuah7r3w3mbr58cr9uwh` FOREIGN KEY (`pid`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

#
# Data for table "productimage"
#

INSERT INTO `productimage` VALUES (1,'wpimage',33),(2,'wpimage',33),(3,'wpimage',34),(4,'wpimage',34),(5,'wpimage',34),(6,'dtimage',34),(7,'dtimage',34),(8,'wpimage',35),(9,'wpimage',35),(10,'wpimage',36),(11,'wpimage',37);

#
# Structure for table "property"
#

CREATE TABLE `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_property_category` (`cid`),
  CONSTRAINT `fk_property_category` FOREIGN KEY (`cid`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Data for table "property"
#

INSERT INTO `property` VALUES (3,NULL,'杯子大小'),(6,5,'大小'),(7,2,'版本'),(8,32,'款式'),(9,32,'颜色'),(10,30,'1'),(11,34,'尺码'),(12,34,'颜色'),(13,33,'尺码'),(14,33,'颜色'),(15,35,'尺码'),(16,35,'颜色'),(17,36,'尺码'),(18,36,'颜色'),(19,37,'颜色'),(20,37,'尺码');

#
# Structure for table "propertyvalue"
#

CREATE TABLE `propertyvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `propertyvalue_ibfk_1` (`pid`),
  CONSTRAINT `propertyvalue_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

#
# Data for table "propertyvalue"
#

INSERT INTO `propertyvalue` VALUES (3,3,'450ml'),(4,3,'380ml'),(7,7,'第三版'),(8,7,'第四版'),(9,8,'钢带框'),(10,8,'皮带款'),(11,9,'金色（豪华）'),(12,9,'银白色（显白）'),(13,9,'黑色（成熟）'),(14,12,'黑色'),(15,12,'黄色'),(16,11,'39'),(17,11,'40'),(18,11,'41'),(19,11,'42'),(20,11,'43'),(21,13,'39'),(22,13,'40'),(23,13,'41'),(24,13,'42'),(25,13,'43'),(26,14,'黑色'),(27,14,'蓝色'),(28,14,'绿色'),(29,15,'39'),(30,15,'40'),(31,15,'41'),(32,16,'红色'),(33,16,'蓝色'),(34,16,'白色'),(35,17,'40'),(36,17,'42'),(37,18,'白色'),(38,18,'灰色'),(39,18,'黑色'),(40,19,'粉色'),(41,19,'白色'),(42,19,'黑色'),(43,20,'37'),(44,20,'38'),(45,20,'39'),(46,20,'40');

#
# Structure for table "property_propertyvalues"
#

CREATE TABLE `property_propertyvalues` (
  `Property_id` int(11) NOT NULL,
  `propertyvalues_id` int(11) NOT NULL,
  UNIQUE KEY `UK_6g3ov71thmcjhbicy2ccxd26c` (`propertyvalues_id`),
  KEY `FK3y1bdllnbkbogdh2mwxwt1g9c` (`Property_id`),
  CONSTRAINT `FK3y1bdllnbkbogdh2mwxwt1g9c` FOREIGN KEY (`Property_id`) REFERENCES `property` (`id`),
  CONSTRAINT `FKsxntcbh6yr9geux86ii8p73n8` FOREIGN KEY (`propertyvalues_id`) REFERENCES `propertyvalue` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "property_propertyvalues"
#


#
# Structure for table "user_"
#

CREATE TABLE `user_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatarurl` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `session_key` varchar(255) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "user_"
#

INSERT INTO `user_` VALUES (2,'https://wx.qlogo.cn/mmopen/vi_32/WrAziazlczso2orGnv3rWian4vwJONhQPP3qN6nibBS7Lec1iaaXqqKUwcPQQJRGBYy4QCq5Njt5iawHUgoeqQ7PtBQ/132','Chow',NULL,1,'下雨天','oMnSq5YjkQr-pR4RgYvu7UPEoenE','Guangxi','sUVs47XVhLJsgME8tfnH0Q==',NULL,NULL,NULL);
