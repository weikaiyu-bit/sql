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

INSERT INTO `category` VALUES (1,'������Ʒ',NULL),(2,'ѧϰ�鼮',NULL),(3,'��ɹ����',NULL),(6,'����Ь',NULL);

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

INSERT INTO `cproperty` VALUES (16,'������',1,NULL,NULL),(17,'���Ƿϻ�1 ',1,NULL,NULL),(18,'���ܣ�',6,NULL,NULL),(19,'����ʱ�䣺',6,NULL,NULL),(20,'���ó�����',6,NULL,NULL),(21,'���ò��ʣ�',6,NULL,NULL),(22,'���ü��ڣ�',6,NULL,NULL),(23,'������Ⱥ��',6,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (2,'��java�������鼮�������ŵ���ͨѧϰ��ѹ������ӡˢ������Ʒ','�������java',89,59.9,60,2,'2020-03-12 00:00:00'),(5,'ŷ���� ��ɹ�����ر����׹��� Ůʿ���бر���ɹ˪','ŷ���ŷ�ɹ����˪',69.9,28.88,60,3,'2020-03-12 00:00:00'),(29,'��Ͱȫ�Զ�������Ͱ����ϴ�����������','ȫ�Զ���Ͱ',139.9,99.9,63,1,'2020-03-15 13:34:50'),(30,'vue.jsȫջ�����������ѧ�鼮','vue.jsx',39.9,23.9,30,2,'2020-03-15 13:36:05'),(31,'������ʿ����е����Ʒ������֤������Ӱ���㿪������Ŷ�� ','������ʿ����е��',1000000,99999.9,3,1,'2020-03-15 14:07:20'),(32,'������ʿ��ȫ�Զ���е�����ܲ�Ӱ���㿪������','������ʿ����е��',1000000,700000,35,1,'2020-03-15 14:57:48'),(33,'��Ь����2020�¿�泱���˶����а�Ь�ٴ������ܲ��ϵ�ins��Ь�Ӱ׺� 42','����ins��Ь',168,128,18,6,'2020-03-16 21:13:03'),(34,'VANS��SO��Ьwans��������Ь�о����Ͱ﷫��ЬͿѻ����Ь������ 002GU�ڰ�������ٴ� 41','wans����Ь',168,158,30,6,'2020-03-16 21:22:02'),(35,'�Ϳ�NIKE ���� ����Ь�� TANJUN ��� �˶�Ь 812654-011 ������ ��ɫ41��',' ����Ь ',419,398,3,6,'2020-03-16 23:08:04'),(36,'��̤��Ь��ʿ2020�������͸�����泱��ĥѧ���ܲ������˶�Ь��С��Ь�ٷ� -1��̤�� 42','��̤��Ь',199,178,50,6,'2020-03-16 23:26:04'),(37,'��̤ŮЬ2020�����¿�͸������ܲ�Ьʱ�������˶�ЬŮ����Ь�ӻ���Ь -1���/Ӥ����/��̤�ס��Ƽ��� 37.5','��̤ŮЬ',189,189,103,6,'2020-03-16 23:29:00');

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

INSERT INTO `cpropertyvalue` VALUES (1,NULL,16,32),(2,NULL,16,31),(3,NULL,16,29),(4,NULL,17,32),(5,NULL,17,31),(6,'���š��ٴ�',18,34),(7,'20203-16',19,34),(8,'����',20,34),(9,'��',21,34),(10,'�ļ�',22,34),(11,'������÷���ϸ�Ӻ͹滮��',23,34),(12,'-',18,33),(13,'2020-02-20',19,33),(14,'-',20,33),(15,'-',21,33),(16,'�＾',22,33),(17,'����',23,33),(18,'�ܲ���Լ��',18,35),(19,'2020-3-12',19,35),(20,'���⡢�˶�',20,35),(21,'��',21,35),(22,'�ļ�����',22,35),(23,'��ѧ��',23,35),(24,'����',18,36),(25,'2020-03-12',19,36),(26,'�˶�����',20,36),(27,'��',21,36),(28,'�ļ�',22,36),(29,'13-25',23,36),(30,'������',18,37),(31,'2020-03-02',19,37),(32,'�ܲ�',20,37),(33,'���ޡ�͸��',21,37),(34,'ȫ�ļ�',22,37),(35,'Ů��',23,37);

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

INSERT INTO `property` VALUES (3,NULL,'���Ӵ�С'),(6,5,'��С'),(7,2,'�汾'),(8,32,'��ʽ'),(9,32,'��ɫ'),(10,30,'1'),(11,34,'����'),(12,34,'��ɫ'),(13,33,'����'),(14,33,'��ɫ'),(15,35,'����'),(16,35,'��ɫ'),(17,36,'����'),(18,36,'��ɫ'),(19,37,'��ɫ'),(20,37,'����');

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

INSERT INTO `propertyvalue` VALUES (3,3,'450ml'),(4,3,'380ml'),(7,7,'������'),(8,7,'���İ�'),(9,8,'�ִ���'),(10,8,'Ƥ����'),(11,9,'��ɫ��������'),(12,9,'����ɫ���԰ף�'),(13,9,'��ɫ�����죩'),(14,12,'��ɫ'),(15,12,'��ɫ'),(16,11,'39'),(17,11,'40'),(18,11,'41'),(19,11,'42'),(20,11,'43'),(21,13,'39'),(22,13,'40'),(23,13,'41'),(24,13,'42'),(25,13,'43'),(26,14,'��ɫ'),(27,14,'��ɫ'),(28,14,'��ɫ'),(29,15,'39'),(30,15,'40'),(31,15,'41'),(32,16,'��ɫ'),(33,16,'��ɫ'),(34,16,'��ɫ'),(35,17,'40'),(36,17,'42'),(37,18,'��ɫ'),(38,18,'��ɫ'),(39,18,'��ɫ'),(40,19,'��ɫ'),(41,19,'��ɫ'),(42,19,'��ɫ'),(43,20,'37'),(44,20,'38'),(45,20,'39'),(46,20,'40');

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

INSERT INTO `user_` VALUES (2,'https://wx.qlogo.cn/mmopen/vi_32/WrAziazlczso2orGnv3rWian4vwJONhQPP3qN6nibBS7Lec1iaaXqqKUwcPQQJRGBYy4QCq5Njt5iawHUgoeqQ7PtBQ/132','Chow',NULL,1,'������','oMnSq5YjkQr-pR4RgYvu7UPEoenE','Guangxi','sUVs47XVhLJsgME8tfnH0Q==',NULL,NULL,NULL);
