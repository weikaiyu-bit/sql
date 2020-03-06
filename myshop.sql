# Host: 127.0.0.1  (Version: 5.5.15)
# Date: 2020-03-06 23:22:05
# Generator: MySQL-Front 5.3  (Build 4.269)

/*!40101 SET NAMES gb2312 */;

#
# Structure for table "category"
#

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (1,'生活用品'),(2,'学习书籍');

#
# Structure for table "product"
#

CREATE TABLE `product` (
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (1,'4条装 洁丽雅毛巾纯棉洗脸家用成人柔软全棉吸水男女加厚大毛巾双层毛巾保湿无菌耐用型','小米双层毛巾',29.9,9.9,30,1,NULL),(2,'【java】基础书籍，从入门到精通学习无压力高清印刷质量正品','李阳疯狂java',89,59.9,60,2,NULL),(3,'杯子学生杯，轻便携袋可上班放学使用潮流360ml耐看nice型保温','316钢材保温杯',69.9,29.9,120,1,NULL),(4,'4条装 洁丽雅毛巾纯棉洗脸家用成人柔软全棉吸水男女加厚大毛巾双层毛巾保湿无菌耐用型','小米双层毛巾',29.9,9.9,30,1,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "property"
#

INSERT INTO `property` VALUES (1,1,'长度'),(2,1,'厚度'),(3,3,'杯子大小');

#
# Structure for table "propertyvalue"
#

CREATE TABLE `propertyvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  CONSTRAINT `propertyvalue_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `property` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "propertyvalue"
#

INSERT INTO `propertyvalue` VALUES (1,1,'90cm'),(2,1,'1.2m'),(3,3,'450ml'),(4,3,'380ml');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "user_"
#

INSERT INTO `user_` VALUES (1,NULL,'Chow',NULL,1,NULL,'oMnSq5YjkQr-pR4RgYvu7UPEoenE','Guangxi','eeGzWbHG8uugi6Ylg0fheQ==',NULL,'https://wx.qlogo.cn/mmopen/vi_32/WrAziazlczso2orGnv3rWian4vwJONhQPP3qN6nibBS7Lec1iaaXqqKUwcPQQJRGBYy4Ru1C6YeEl7EY5tYYXYyxAw/132','下雨天');
