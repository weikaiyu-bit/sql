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

INSERT INTO `category` VALUES (1,'Éú»îÓÃÆ·',NULL),(2,'Ñ§Ï°Êé¼®',NULL),(3,'·ÀÉ¹±ØÐë',NULL),(6,'ÐÝÏÐÐ¬',NULL);

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

INSERT INTO `cproperty` VALUES (16,'ÖÆÔìÉÌ',1,NULL,NULL),(17,'¶¼ÊÇ·Ï»°1 ',1,NULL,NULL),(18,'¹¦ÄÜ£º',6,NULL,NULL),(19,'ÉÏÊÐÊ±¼ä£º',6,NULL,NULL),(20,'ÊÊÓÃ³¡¾°£º',6,NULL,NULL),(21,'ÄÚÖÃ²ÄÖÊ£º',6,NULL,NULL),(22,'ÊÊÓÃ¼¾½Ú£º',6,NULL,NULL),(23,'ÊÊÓÃÈËÈº£º',6,NULL,NULL);

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
INSERT INTO `category` VALUES (1, 'ç”Ÿæ´»ç”¨å“');

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
INSERT INTO `product` VALUES (1, '4æ¡è£… æ´4æ¡è£… æ´ä¸½é›…æ¯›å·¾çº¯æ£‰æ´—è„¸å®¶ç”¨æˆäººæŸ”è½¯å…¨æ£‰å¸æ°´ç”·å¥³åŠ åŽšå¤§æ¯›å·¾æ´4æ¡è£… æ´ä¸½é›…æ¯›å·¾çº¯æ£‰æ´—è„¸å®¶ç”¨æˆäººæŸ”è½¯å…¨æ£‰å¸æ°´ç”·å¥³åŠ åŽšå¤§æ¯›åŒå±‚æ¯›å·¾ä¿æ¹¿æ— èŒè€ç”¨åž‹ä¸½é›…æ¯›å·¾çº¯æ£‰æ´—è„¸å®¶ç”¨æˆäººæŸ”è½¯è½¯å…¨æ£‰å¸æ°´ç”·å¥³åŠ åŽšå¤§æ¯›å·¾åŒå±‚æ¯›å·¾ä¿æ¹¿æ— èŒè€ç”¨åž‹å…¨æ£‰å¸æ°´ç”·å¥³åŠ åŽšå¤§æ¯›å·¾åŒå±‚æ¯›å·¾ä¿æ¹¿æ— èŒè€ç”¨åž‹', 'å°ç±³åŒå±‚æ¯›å·¾', 29.9, 9.9, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (3, 'æ¯å­å­¦ç”Ÿæ¯ï¼Œè½»ä¾¿æºè¢‹å¯ä¸Šç­æ”¾å­¦ä½¿ç”¨æ½®æµ360mlè€çœ‹niceåž‹ä¿æ¸©', '316é’¢æä¿æ¸©æ¯', 69.9, 29.9, 120, 1, NULL, NULL);
INSERT INTO `product` VALUES (4, '4æ¡è£… æ´ä¸½é›…æ¯›å·¾çº¯æ£‰æ´—è„¸å®¶ç”¨æˆäººæŸ”è½¯å…¨æ£‰å¸æ°´ç”·å¥³åŠ åŽšå¤§æ¯›å·¾åŒå±‚æ¯›å·¾ä¿æ¹¿æ— èŒè€ç”¨åž‹æ¯›å·¾', 'å°ç±³åŒå±‚æ¯›å·¾', 29.9, 9.9, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (5, 'ç‘žå£«å†›åˆ€å¨æˆˆï¼ˆWengerï¼‰14.4è‹±å¯¸åŒè‚©åŒ…å•†åŠ¡ç”µè„‘åŒ…ç”· é˜²æ³¼æ°´ é»‘è‰²ï¼ˆSGB10516109044ï¼‰', 'å°ç±³åŒå±‚æ¯›å·¾', 109, 89, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (6, 'çˆ±åŽä»•ï¼ˆOIWASï¼‰ä¸‡å‘è½®æ‹‰æ†ç®±20è‹±å¯¸ç™»æœºç®±å¤§å®¹é‡æ—…è¡Œç®±ç”·24è‹±å¯¸å­¦ç”Ÿè¡ŒæŽç®±6152 æ·¡å±±èŒ±è¸ç²‰ 20è‹±å¯¸', 'ä¸‡å‘è½®æ‹‰æ†ç®±', 309, 89, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (7, 'ç¬¬ä¹åŸŽ(V.NINE) ç”µè„‘åŒ…13/14è‹±å¯¸ç”·å¥³å£«è‹¹æžœè”æƒ³å°æ–°æˆ´å°”æ‰‹æå•è‚©ä¸“ç”¨åŒ…ç¬”è®°æœ¬æ¨ªæ¬¾å…¬æ–‡åŒ… VD7BV11911J æ·±ç°', 'ç¬”è®°æœ¬æ¨ªæ¬¾å…¬æ–‡åŒ…', 179, 109, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (8, 'å¡å¸ä¹é³„é±¼(CARTELO) ä¸‡å‘è½®æ‹‰æ†ç®±è€ç£¨é˜²åˆ®20è‹±å¯¸ç™»æœºç®±æ—¶å°šç”·å¥³è¡ŒæŽç®±è½»ç›ˆå•†åŠ¡ä¼‘é—²æ—…è¡Œç®±åŒ… ç‚«é…·é»‘', 'ä¼‘é—²æ—…è¡Œç®±åŒ…', 189, 128, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (9, 'å¡å¸ä¹é³„é±¼(CARTELO) ä¸‡å‘è½®æ‹‰æ†ç®±è€ç£¨é˜²åˆ®20è‹±å¯¸ç™»æœºç®±æ—¶å°šç”·å¥³è¡ŒæŽç®±è½»ç›ˆå•†åŠ¡ä¼‘é—²æ—…è¡Œç®±åŒ… ç‚«é…·é»‘', 'ä¼‘é—²æ—…è¡Œç®±åŒ…', 189, 128, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (10, 'å¡å¸ä¹é³„é±¼(CARTELO) ä¸‡å‘è½®æ‹‰æ†ç®±è€ç£¨é˜²åˆ®20è‹±å¯¸ç™»æœºç®±æ—¶å°šç”·å¥³è¡ŒæŽç®±è½»ç›ˆå•†åŠ¡ä¼‘é—²æ—…è¡Œç®±åŒ… ç‚«é…·é»‘', 'ä¼‘é—²æ—…è¡Œç®±åŒ…', 189, 128, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (11, 'FOOJO æŒ‚é’© æ— ç—•é€æ˜Žç²˜é’© æµ´å®¤æŒ‚é’©è´´ å…é’‰æ‰¿é‡åŽ¨æˆ¿å¼ºåŠ›ç²˜é’© æ— ç—•é’‰å¢™é¢è¡£æŸœé—¨åŽæŒ‚è¡£é’© 10ç‰‡å¥—è£…', 'æŒ‚è¡£é’©ç²˜é’©', 29, 19, 30, 1, NULL, NULL);
INSERT INTO `product` VALUES (12, 'æ´æ¯”ä¸– ç²¾å“æ¡ƒæœ¨æ¢³ æœˆç‰™ç»†é½¿ é˜²é™ç”µç¾Žå‘æŒ‰æ‘©æ¢³å­', 'æŒ‰æ‘©æ¢³å­', 9, 5.9, 30, 1, NULL, NULL);

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
INSERT INTO `property` VALUES (1, 1, 'é•¿åº¦');
INSERT INTO `property` VALUES (2, 1, 'é¢œè‰²');
INSERT INTO `property` VALUES (3, 3, 'æ¯å­å¤§å°');

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

INSERT INTO `product` VALUES (2,'¡¾java¡¿»ù´¡Êé¼®£¬´ÓÈëÃÅµ½¾«Í¨Ñ§Ï°ÎÞÑ¹Á¦¸ßÇåÓ¡Ë¢ÖÊÁ¿ÕýÆ·','ÀîÑô·è¿ñjava',89,59.9,60,2,'2020-03-12 00:00:00'),(5,'Å·À³ÑÅ ·ÀÉ¹»¤·ô±Ø±¸ÃÀ°×¹¦ÄÜ Å®Ê¿³öÐÐ±Ø±¸·ÀÉ¹Ëª','Å·À³ÑÅ·ÀÉ¹»¤·ôËª',69.9,28.88,60,3,'2020-03-12 00:00:00'),(29,'ÂíÍ°È«×Ô¶¯ÖÇÄÜÂíÍ°£¬³åÏ´·½±ãÉè¼ÆÊæÊÊ','È«×Ô¶¯ÂíÍ°',139.9,99.9,63,1,'2020-03-15 13:34:50'),(30,'vue.jsÈ«Õ»¿ª·¢£¬¿ò¼ÜÒ×Ñ§Êé¼®','vue.jsx',39.9,23.9,30,2,'2020-03-15 13:36:05'),(31,'¡¾ÀÍÁ¦Ê¿¡¿»úÐµ±í£¬ÕýÆ·ÖÊÁ¿±£Ö¤£¬²»»áÓ°ÏìÄã¿ª·¨À­ÀûÅ¶£¡ ','¡¾ÀÍÁ¦Ê¿¡¿»úÐµ±í',1000000,99999.9,3,1,'2020-03-15 14:07:20'),(32,'¡¾ÀÍÁ¦Ê¿¡¿È«×Ô¶¯»úÐµ±í£¬ÖÇÄÜ²»Ó°ÏìÄã¿ª·¨À­Àû','¡¾ÀÍÁ¦Ê¿¡¿»úÐµ±í',1000000,700000,35,1,'2020-03-15 14:57:48'),(33,'ÄÐÐ¬´º¼¾2020ÐÂ¿îº«°æ³±Á÷ÔË¶¯ÐÝÏÐ°åÐ¬°Ù´îÍøÃæÅÜ²½ÀÏµùins³±Ð¬×Ó°×ºÚ 42','ÐÝÏÐins³±Ð¬',168,128,18,6,'2020-03-16 21:13:03'),(34,'VANS¦¯SOÄÐÐ¬wans¹ÙÍø·«²¼Ð¬ÄÐ¾­µä¿îµÍ°ï·«²¼Ð¬Í¿Ñ»»¬°åÐ¬×ÓÐÝÏÐ 002GUºÚ°×Ìõ¾­µä°Ù´î 41','wans·«²¼Ð¬',168,158,30,6,'2020-03-16 21:22:02'),(35,'ÄÍ¿ËNIKE ÄÐ×Ó ÐÝÏÐÐ¬×Ó TANJUN Ìì¾ý ÔË¶¯Ð¬ 812654-011 °ÂÀû°Â ºÚÉ«41Âë',' ÐÝÏÐÐ¬ ',419,398,3,6,'2020-03-16 23:08:04'),(36,'°²Ì¤°åÐ¬ÄÐÊ¿2020´º¼¾Çá±ãÍ¸Æøº«°æ³±ÄÍÄ¥Ñ§ÉúÅÜ²½ÐÝÏÐÔË¶¯Ð¬×ÓÐ¡°×Ð¬¹Ù·½ -1°²Ì¤°× 42','°²Ì¤°åÐ¬',199,178,50,6,'2020-03-16 23:26:04'),(37,'°²Ì¤Å®Ð¬2020´º¼¾ÐÂ¿îÍ¸ÆøÇá±ãÅÜ²½Ð¬Ê±ÉÐÐÝÏÐÔË¶¯Ð¬Å®ÂýÅÜÐ¬×Ó»§ÍâÐ¬ -1Âã·Û/Ó¤¶ù·Û/°²Ì¤°×¡¾ÍÆ¼ö¡¿ 37.5','°²Ì¤Å®Ð¬',189,189,103,6,'2020-03-16 23:29:00');

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

INSERT INTO `cpropertyvalue` VALUES (1,NULL,16,32),(2,NULL,16,31),(3,NULL,16,29),(4,NULL,17,32),(5,NULL,17,31),(6,'´©×Å¡¢°Ù´î',18,34),(7,'20203-16',19,34),(8,'ÐÝÏÐ',20,34),(9,'ÃÞ',21,34),(10,'ËÄ¼¾',22,34),(11,'ÇàÄê¸üºÃ·¿¼äºÏ¸ñ¼ÓºÍ¹æ»®¾Ö',23,34),(12,'-',18,33),(13,'2020-02-20',19,33),(14,'-',20,33),(15,'-',21,33),(16,'Çï¼¾',22,33),(17,'ÇàÄê',23,33),(18,'ÅÜ²½¡¢Ô¼»á',18,35),(19,'2020-3-12',19,35),(20,'»§Íâ¡¢ÔË¶¯',20,35),(21,'ÃÞ',21,35),(22,'ËÄ¼¾¾ù¿É',22,35),(23,'´óÑ§Éú',23,35),(24,'ÁÃÃÃ',18,36),(25,'2020-03-12',19,36),(26,'ÔË¶¯ÐÝÏÐ',20,36),(27,'ÃÞ',21,36),(28,'ËÄ¼¾',22,36),(29,'13-25',23,36),(30,'ÁÃÄÐÉú',18,37),(31,'2020-03-02',19,37),(32,'ÅÜ²½',20,37),(33,'´¿ÃÞ¡¢Í¸Æø',21,37),(34,'È«ËÄ¼¾',22,37),(35,'Å®º¢',23,37);

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

INSERT INTO `property` VALUES (3,NULL,'±­×Ó´óÐ¡'),(6,5,'´óÐ¡'),(7,2,'°æ±¾'),(8,32,'¿îÊ½'),(9,32,'ÑÕÉ«'),(10,30,'1'),(11,34,'³ßÂë'),(12,34,'ÑÕÉ«'),(13,33,'³ßÂë'),(14,33,'ÑÕÉ«'),(15,35,'³ßÂë'),(16,35,'ÑÕÉ«'),(17,36,'³ßÂë'),(18,36,'ÑÕÉ«'),(19,37,'ÑÕÉ«'),(20,37,'³ßÂë');

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

INSERT INTO `propertyvalue` VALUES (3,3,'450ml'),(4,3,'380ml'),(7,7,'µÚÈý°æ'),(8,7,'µÚËÄ°æ'),(9,8,'¸Ö´ø¿ò'),(10,8,'Æ¤´ø¿î'),(11,9,'½ðÉ«£¨ºÀ»ª£©'),(12,9,'Òø°×É«£¨ÏÔ°×£©'),(13,9,'ºÚÉ«£¨³ÉÊì£©'),(14,12,'ºÚÉ«'),(15,12,'»ÆÉ«'),(16,11,'39'),(17,11,'40'),(18,11,'41'),(19,11,'42'),(20,11,'43'),(21,13,'39'),(22,13,'40'),(23,13,'41'),(24,13,'42'),(25,13,'43'),(26,14,'ºÚÉ«'),(27,14,'À¶É«'),(28,14,'ÂÌÉ«'),(29,15,'39'),(30,15,'40'),(31,15,'41'),(32,16,'ºìÉ«'),(33,16,'À¶É«'),(34,16,'°×É«'),(35,17,'40'),(36,17,'42'),(37,18,'°×É«'),(38,18,'»ÒÉ«'),(39,18,'ºÚÉ«'),(40,19,'·ÛÉ«'),(41,19,'°×É«'),(42,19,'ºÚÉ«'),(43,20,'37'),(44,20,'38'),(45,20,'39'),(46,20,'40');

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

INSERT INTO `user_` VALUES (2,'https://wx.qlogo.cn/mmopen/vi_32/WrAziazlczso2orGnv3rWian4vwJONhQPP3qN6nibBS7Lec1iaaXqqKUwcPQQJRGBYy4QCq5Njt5iawHUgoeqQ7PtBQ/132','Chow',NULL,1,'ÏÂÓêÌì','oMnSq5YjkQr-pR4RgYvu7UPEoenE','Guangxi','sUVs47XVhLJsgME8tfnH0Q==',NULL,NULL,NULL);
