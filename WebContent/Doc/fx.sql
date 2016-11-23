# Host: localhost  (Version: 5.6.17)
# Date: 2015-12-14 20:45:30
# Generator: MySQL-Front 5.3  (Build 4.13)

/*!40101 SET NAMES utf8 */;

#
# Source for table "fx_collect"
#

DROP TABLE IF EXISTS `fx_collect`;
CREATE TABLE `fx_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `rentid` int(11) DEFAULT NULL COMMENT '房屋id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='房屋收藏';

#
# Data for table "fx_collect"
#

INSERT INTO `fx_collect` VALUES (1,34,1),(2,34,5),(4,34,6),(5,34,2),(6,34,4),(12,34,11),(13,34,13),(14,34,7),(15,34,8),(16,34,18);

#
# Source for table "fx_comment"
#

DROP TABLE IF EXISTS `fx_comment`;
CREATE TABLE `fx_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL COMMENT '约看表id',
  `fid` int(11) DEFAULT NULL COMMENT '蜂小二id',
  `uid` int(11) DEFAULT NULL COMMENT '评价用户id',
  `score` varchar(30) DEFAULT NULL COMMENT '评分',
  `time` varchar(30) DEFAULT NULL COMMENT '评价日期',
  `content` varchar(255) DEFAULT NULL COMMENT '评价内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='评价表';

#
# Data for table "fx_comment"
#


#
# Source for table "fx_fans"
#

DROP TABLE IF EXISTS `fx_fans`;
CREATE TABLE `fx_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT '' COMMENT '身份',
  `openid` varchar(255) DEFAULT '' COMMENT '用户唯一标识',
  `truename` varchar(255) DEFAULT '' COMMENT '真实姓名',
  `nickname` varchar(255) DEFAULT '' COMMENT '微信昵称',
  `sex` tinyint(2) DEFAULT '0' COMMENT '微信性别1男2女0未知',
  `language` varchar(255) DEFAULT '' COMMENT '微信字符集',
  `city` varchar(255) DEFAULT '' COMMENT '微信所在城市',
  `province` varchar(255) DEFAULT '' COMMENT '微信所在省',
  `country` varchar(255) DEFAULT '' COMMENT '微信所在国家',
  `headimgurl` varchar(255) DEFAULT '' COMMENT '头像',
  `unionid` varchar(255) DEFAULT '' COMMENT '多应用的唯一用户id',
  `groupid` int(11) DEFAULT '0' COMMENT '用户分组id',
  `access_token` varchar(255) DEFAULT '',
  `refresh_token` varchar(255) DEFAULT '',
  `mobile` varchar(11) DEFAULT '' COMMENT '粉丝手机号',
  `introduction` varchar(255) DEFAULT '',
  `bindtime` int(10) DEFAULT NULL COMMENT '绑定时间',
  `referee_truename` varchar(255) DEFAULT '' COMMENT '推  荐 人：',
  `referee_mobile` varchar(11) DEFAULT '' COMMENT '电　话：',
  `price` varchar(11) DEFAULT '0',
  `integral` int(11) DEFAULT NULL COMMENT '积分',
  `historyfid` text COMMENT '历史蜂小二id(以符号/ 间隔)',
  `historyseeid` text COMMENT '历史约看清单',
  `signtime` varchar(30) DEFAULT NULL COMMENT '最近一次签到时间(24小时一次)\\',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`,`unionid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

#
# Data for table "fx_fans"
#

INSERT INTO `fx_fans` VALUES (1,'','oHRf-t8IxYaCwDdLu8i0aqQoPJII','陈紅玲','陈红玲',2,'zh_CN','','','中国','http://wx.qlogo.cn/mmopen/695ag2ZqnKfrWnjZTCwtFAzNLW4M1xaSB7RpLNNfPg2LPRqV7M7qDuJXFjKoPTsqUsd5WB1AVrnc7Dpwkp2rxrM8ibycPMMVN/0','otWqJs29Szb2NO51CgdAM_vafWCI',0,'','','18671408222','',1446801551,'许飞','15071328560','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(29,'','oHRf-t9nS8WwiQW6l9CgoLtNeqbA','','a          aaaaaak',1,'zh_CN','','','中国','http://wx.qlogo.cn/mmopen/PiajxSqBRaEIyiammFw04GCoLkgxic5czZtw86G5wDm0NwZjwSSq5ib1MY2zvRXasQVlcLV5u3LoQowOl3BXuUmMNA/0','otWqJs1wTts7Vbo77IYiO74xbUO0',0,'','','13071298116','',1446797294,'123123','123','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(30,'','oHRf-txTtoMglTB1kbzwuVCUSGMs','','jyolo',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/R1TYAJ5QUiaTjpSe4hP6ukfxT5XbrQjFlX4hLgvOCCIP6bZFePw7EIHUiaBt4zDKlEEBAhcFcWOibw1RmUWXcpwRtsgqibNBcdnB/0','otWqJs0Xmg2C1GWwUg6uh8d3SVIc',0,'','','13071298116','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(33,'','oHRf-t7GL_9v1Ztn9rPMbN57j3mE','罗','67',2,'zh_CN','','湖北','中国','http://wx.qlogo.cn/mmopen/05EwTIC6jRYDGib0qk6Ib5OEDiamo0UvUV4Diao62GaEuMGiaT73Scdibyf0waKyv7UuHHwKgEE7KmcwmmYXqicMW9sojtWXhTL35d/0','otWqJs6iJyvLbr7cBoBzHlT5-pvE',0,'','','15971532645','',1446801003,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(34,'管理员','oHRf-t3OcWox1xwNndQqe890cWBY','','When',1,'zh_CN','','Vienna','','http://wx.qlogo.cn/mmopen/05EwTIC6jRYw3HYoh2msAWYaH22Xty9T1BqE2uGIt6o22CYuqMxX6HOiapFiadFZIhOLKhNYqdDicZxJFhicfRV6icS0NHzwwgKbk/0','otWqJs7ROG17PqtKY-6XzGv2zBqM',0,NULL,NULL,'13237247303',NULL,1446801406,NULL,NULL,'0',NULL,NULL,NULL,'2015-12-11 10:15:57'),(35,'租客','oHRf-t3qpk_u8Do0MI0WRO1vC44s','','Mosaic',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/SibA7CwxxLnYpeobQRQHNUXkJicAQrBFqicIUY1zP7yfLbKYuzYynumdlReZOibY5n7GAVaQrLc2MOzAxDS52JQvA3L86icgVj96V/0','otWqJs4jeLODUcTywqtWkg6v2aUo',0,'','','18271624447','',1446801280,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(36,'','oHRf-t23y0AqMy7bq7HQTqQtV-lA','','刘贱贱',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/ajNVdqHZLLBfHtUALUYVYRXL2ibjQRX6jnLNgmNUvZ2MyVEVcnicSxesLiaYcj1Iv2xpE3NhIMrZqV1TUrKicOwA7g/0','otWqJs5NaqyAUUM6_KqzemSwLfXs',0,'','','13995966708','',1446801362,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(37,'','oHRf-t92awabpqAK0KzK_HMnczAE','彭','照脸呼一下',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/g9RQicMD01M3RjwCjhbBRvkyo7jY6kDCx4Qju0fTBvQMIYM6Ln0OOvkN22H9fmCEHV4tdL7FYLN5chj777ynMicCWSmV9X1ERn/0','otWqJsxdMs76zgKY9YRgeewwTOqg',0,'','','18037817276','',1446801469,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(38,'','oHRf-t426uPzXj5NKQ0KaaFUGW30','蜂小二','王毅',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/05EwTIC6jRZ6ukOQptMo7ib1vz3z9X0S9GDjNt1wawSDcvWuRkmINw7nqjXIXuDoIYHdibSRUzcTTyFXbId0S6fa4SLrOFaX0j/0','otWqJs0KOQIROyi0epYzpYrgYC8g',0,'','','15072056661','',1446801460,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(39,'','','','',0,'','','','','','',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(40,'','oHRf-t95Qh1dUQ3BD_SMtNI9XijU','疾风剑豪','桃子',1,'zh_CN','合肥','安徽','中国','http://wx.qlogo.cn/mmopen/05EwTIC6jRbfMWWic5gfEibjJSblkd6s9AYKpToP1eOu0X0kXJEV1nmvcibA0jRzNMPq15XQrJA6HUxyHU18JM3r7phGicrsgYn8/0','otWqJs5hIIIyV0brgTSeyXblLlw0',0,'','','13117038083','',1446801872,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(41,'','oHRf-t_Q-mwymPiO5QVAxC30QBDQ','张三','',1,'zh_CN','','湖北','中国','http://wx.qlogo.cn/mmopen/R1TYAJ5QUiaSjufBZgPcengkv3WC94Lk9Rrz3eqBCreYQC2icH3g4phrrAbMnYhJicbJRtB3CpdNXzeKvUNu7JSkg/0','otWqJs647PcH2Vf1fKxghfnptMa8',0,'','','18671419988','',1447247006,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(42,'','oHRf-t_H8XGAN1P-0inbiVdn1MBE','彭喆','喜羊羊',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/ajNVdqHZLLB1QUoUGOicB0L35Wx8niat6YB0dpeep1g97GyViarzFnTvOZ8CDU80CyE5Za0BKEYUd1qpUxNvvUCBA/0','otWqJs1_VO2qbInKrgyNq0V35X2E',0,'','','13807230969','',1446811793,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(43,'','oHRf-t-GjWWGKjVqChsLhGRVRapc','','柏灼',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/g9RQicMD01M3RjwCjhbBRvsNMia6ZqpfibFaic2UGvqzKOxicN3oIOrevMqiakc20G1jYPSLId2jZOpRVuzm0JibD1vRg4enTtmh66U/0','otWqJs9P-jGEgqCU8u-gyxFUM0JE',0,'','','15374537287','',1446856883,'qwert','1311254781','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(44,NULL,'oHRf-typn4CR9i0W2k_lcfIM12tk','邓','邓永锐',1,'zh_CN','武汉','湖北','中国','http://wx.qlogo.cn/mmopen/lIqyiaMSF4ssGiadJbnUzLGGLpdnGUfiaqMr4CPs6gkiaeMngAGkPpIB9a06ibrAHQ03HZeucoibyGI2ujujsoibKciaBWib0SnGeInVD/0','otWqJs2cIyTnMoa-34DsmUpDT0ag',0,'','','18607238111','',1447666288,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(45,'','oHRf-t2ROaAmCEv1qx01HvkTAJjo','','叫我小超人',2,'zh_CN','','','','http://wx.qlogo.cn/mmopen/05EwTIC6jRaKiaMwZthicrDlTw9jlvdI9zocH1IndUDqCTSasvf7trbWZpTSlLn2WribLALYRpb7HAIlqwJfy5GTzhicjSwvybw6/0','otWqJs4bCPPY7Lfzdh7yvC9F50WM',0,'','','15997133412','',1446889006,'','15997133412','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(46,'','oHRf-t40kQ42NLMBDtEoncxn7DzE','纪文娟','–J',2,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/qlWaO3sJj58oKy5XnJsVQRvHQd1GN6tLx9T3E4l1cmYUG4Yb3IcmYyoBDPxX2mkKhImIK5lVTOv79J8wYcUKmLYib8PFDZh9I/0','otWqJsyCszeWFxXBcsisam2v9ph4',0,'','','13872105121','',1447402698,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(47,'','oHRf-t94uGBi2_emVK7bkJ_gX4CE','','中安信业 李媛15524288993',2,'zh_CN','沈阳','辽宁','中国','http://wx.qlogo.cn/mmopen/ajNVdqHZLLC3vCN4Ws9rXgh2dJicQ6g7qUPKl32VZ6icCGpfU95j2RzbWic9FgLE6gvmbodXe0muz9CkzpHNTliclQ/0','otWqJsx8FEXYrswinVwqzB3vnzak',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(48,'','oHRf-txbnZcCVjMJV8mqUbne6TH8','','yongbo',1,'zh_CN','黄冈','湖北','中国','http://wx.qlogo.cn/mmopen/zp0DmmatickPAzO50fozuhKGTufFibnvZr52cPIqL0Rl3kdGhFicDVZXv42y9xmQGLLO9NFGdXBibv6MoJK0z8P3D6LfatzYv7Ub/0','otWqJs77EoFSqJfpmLqEbflHNwTg',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(49,'','oHRf-t7QR8V2cZHQg-ErWbIa9srU','','曦予粑粑',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/R1TYAJ5QUiaRmWkUUj8GQtTb76ICu43qUad5CrL1pRBryOqnbeLlNC73Q1YTXft5DUREJ6LulIC95YljJFmxxMQ/0','otWqJsyzdfgJORicHNJaUbpmskQ0',0,'','','13333333333','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(50,'','oHRf-t8dBhDAippkopeu3AALMR50','','   ',2,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/qlWaO3sJj5icoMY4ajtgVlGFmq2qBmIkiaBknpnYBfAF3LTiaYmhYSoD8VJVic5EN1sbz4A3zdRBX2P6DLsQ5iaxsM62Jg8Y06Rql/0','otWqJs35kZPxDMT6SGMApeln8r3k',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(51,'','oHRf-t1qexnFZ20l-KT3yUx7pRf0','','zedd',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/05EwTIC6jRYw3HYoh2msAfX63h8oGDDj999kskqJNJO0MxZSXaAbuEgH5FsHHjoibRaxT59cgT8RjHF5k7MnxhIURcVWoD6p7/0','otWqJs5pT81SyfW2AHtJ6BP8nNBY',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(52,'','oHRf-tzlfKi3veYdZ9-B7CalShnY','','李斌',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/R1TYAJ5QUiaT2DbibOhMY8SMJJxZibtYw3ibQsUQcwFgrkTYBkGw2DYeoNhnjYb7U4L4TAnaSZIdFyjCYkour7iaWyMGcIQPC13Tj/0','otWqJs2xW7zFYNORh2wAAh5mNCqU',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(53,'','oHRf-txRPbW7ZNjpgbLDuyl6y-qQ','','邵',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/qlWaO3sJj5icKEgI4AowhX69cY3ibVspMJe0sJ3RIDvRznUkkVXaEXHcDK6f3Y4o1aQYuFzFbnuNCmLMlibTzUfKyvhN1nSYsvd/0','otWqJs2wAqeYGrW1GUcsniJ6vYI4',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(54,'','oHRf-t2-GhWjt2ksbfv7GTc2NFOw','','梅子',2,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/qlWaO3sJj58oKy5XnJsVQRHVGj1mayhOnQJPtGhytRSumueibmf8WMiaPQvbxjvynFhNDRiaDdFkb8jpetlpChAuD38Vwkk0BBO/0','otWqJswXL3g41ZFvr7sqDHdkWyh8',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(55,'','oHRf-tzXIOq8i1iVCxs0nfrE9bSM','','阳新生活网',2,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/ajNVdqHZLLBIh9dLP3pg9icLmAPFokYpV72I3SlUiaiaZcN9TicjcdG65g9fqw3lYFhleUpnJLSlJZcQ95VgIuicmww/0','otWqJsywLiSVsSkGkgYolr-ASuEo',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(56,'','oHRf-t9EmyrZwFyN-OBM7ne7x8QE','','太子哥',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/qlWaO3sJj59flbTwGVSsNlPVX2oic2ZQicKVRM1IVdxwETOaZnZfLNuGyYMH0b2sMLvP9grq666jiapg9YP6WUuVysfEMOKsk6R/0','otWqJs5TnKPUEV106KSNW4ZpMls8',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(57,'','oHRf-t9g5OmcbYrm5EwCijbJ5Q4U','','吾为君歌',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/R1TYAJ5QUiaTjpSe4hP6ukVzGAlVM2SRccPjdPzkANkjka8xpYHpkbFgX9uHs9lqs3ydT7Smy6qPRPYia6fRia971RgPZ8rtd5l/0','otWqJs4k9mOT8uSGNPnCbXYnAgTE',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(58,'','oHRf-t9_p3Px-wqVZ7ZO-sm_kS0E','','',2,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/05EwTIC6jRZn5G5icRHSbC4b9Itke90AuPgkxiakNbvZNtpHcOaTjazbA6uZO1AYOicZAiclVBib7oUwyLNicDQH3W5w/0','otWqJs8KotSxVs5JtTywzgKuBS4Y',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(59,'','oHRf-t7KgxkCa-5vaoV9yQHDlhos','','雲飛',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/g9RQicMD01M1g1z2kYFnVWrvM4nUnHXoZmILpq9ZaPHlXMSsUnZ4XiaZPayFyQhFaRnBAPFkpyQKFtklxHe0rxfw/0','otWqJs_dYJE1w70Lm26_iIqTHRT0',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(60,'','oHRf-t_7OFo-XGHPBQAEP_vdQpOs','','你在天南星',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/05EwTIC6jRaKiaMwZthicrDjicXKKPXnMuib2dPJ4oau6R43Pd9jq63x6jAWr3l8TQSwYoyUMplW6nQHorsODhCvQLPfwoPbHOjY/0','otWqJs-PnZaerwNE-UhGx8yCx1iw',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(61,'','oHRf-t2ucRkNTQOq5_C3PI3kWORM','','盛',2,'zh_CN','黄石','湖北','中国','','otWqJs5czx63IM9PFb6GtwrdGypU',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(62,'','oHRf-tzmfbQ1B9BMvE4pSn25YHs8','','刘博文',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/g9RQicMD01M3RjwCjhbBRvmvl5YRKUYficguhibYU6Hobd7vPBxssYnc1sA6ejb8JWnNh68GTa3lYvib2tkghZGZXcHBDNvQuFkd/0','otWqJs0r7i9QpyD_HA9OUcPMxeSM',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(63,'','oHRf-t_DKcy0FzqiSMWerCicLGWw','','jeane',2,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/R1TYAJ5QUiaRF1BepgzQskZXhmDyZO48SZRGdAP3Z92sSY0v474Hib8INiaM0P4ibL3kJX5CoOEA4NcD3rNaKNNTEg/0','otWqJs-_vuXiKq8bwcphlIlG6MyE',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(64,'','oHRf-t8lnaA5jx70SsgkWD11-XTw','','心里的色彩',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/Q3auHgzwzM60RkrG390Nqez8UzTEqKkhHBuFUCwZoGP6mTpib9eU2ZEoiccBl2qeV61eOkSgnDTtlPpfgOPTkNp7aS7BhKrY67f9YgDbY2mlY/0','otWqJs8M4D3c9Hgzdc8pBNaW-gcs',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(65,'','oHRf-twghSo7ha4xnqvWcOjZ_VE8','','路人乙',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/R1TYAJ5QUiaTjpSe4hP6ukae0HtqGjQfEk1Onqg9NvbaR3XCfvg6Ujq4J9D1GgSYnWgBl5mEpbnXGlkSc0tibF2y3EureM0JLE/0','otWqJs_0inrzClZBQVTcpHzRbMv0',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(66,'','oHRf-t6axgsL59Xv-W2MmHKkDYrw','','Chitry',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/05EwTIC6jRYI1qvDuGLIY8yNsB2HCbMtyQS48C468MRcXiaMPm6Jy0S5yFKQeo75GTeFEOrSXaqakrs3DPhXtAOw9R5DG0vUW/0','otWqJs9UwLq9PJiuSsDG_RQ187qU',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16'),(67,'','oHRf-t2vMt99QmmZuZUXJRgZC1iE','','全',1,'zh_CN','黄石','湖北','中国','http://wx.qlogo.cn/mmopen/R1TYAJ5QUiaTjpSe4hP6ukZakOWu7dwiajV9iabLBaN5KefTVXfJOGcPQDMyc9OYRelINtiagicnrTYic1xAH3HtcyXOiarA1b3ibEZs/0','otWqJs14AROh8dK9z6Pa99uNwWQA',0,'','','','',NULL,'','','0',NULL,NULL,NULL,'2015-11-30 08:50:16');

#
# Source for table "fx_fx2"
#

DROP TABLE IF EXISTS `fx_fx2`;
CREATE TABLE `fx_fx2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `password` varchar(100) DEFAULT NULL COMMENT '登陆密码',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `business` varchar(10) DEFAULT NULL COMMENT '业务',
  `address` varchar(20) DEFAULT NULL COMMENT '负责区域',
  `seenum` int(11) DEFAULT NULL COMMENT '带看次数',
  `sunum` int(11) DEFAULT NULL COMMENT '成交次数',
  `score` varchar(30) DEFAULT NULL COMMENT '综合评分',
  `pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` int(11) DEFAULT NULL COMMENT '性别:1-男 2-女 3-未知',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='蜂小二信息';

#
# Data for table "fx_fx2"
#

INSERT INTO `fx_fx2` VALUES (1,'孙小丽2','123456','2343223','租房','黄石港区',15,10,'5','/Style/img/3.jpg',2),(2,'孙小1','123456','56543124','租房','下陆区',18,14,'3','/Style/img/3.jpg',2);

#
# Source for table "fx_manage"
#

DROP TABLE IF EXISTS `fx_manage`;
CREATE TABLE `fx_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roll` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "fx_manage"
#

/*!40000 ALTER TABLE `fx_manage` DISABLE KEYS */;
INSERT INTO `fx_manage` VALUES (1,'admin','4QrcOUm6Wau+VuBX8g+IPg==',1);
/*!40000 ALTER TABLE `fx_manage` ENABLE KEYS */;

#
# Source for table "fx_renthouse"
#

DROP TABLE IF EXISTS `fx_renthouse`;
CREATE TABLE `fx_renthouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '房屋名称',
  `address` varchar(20) DEFAULT NULL COMMENT '地址',
  `picurl` text COMMENT '房屋图片url(-间隔)',
  `type` int(2) DEFAULT '1' COMMENT '房屋类型： 1住宅 2办公 3商铺',
  `aparttype` int(2) DEFAULT '1' COMMENT '[住宅]户型：X室Y厅Z卫A阳台[略]',
  `area` int(6) DEFAULT '200' COMMENT '面积',
  `floor` int(3) DEFAULT '10' COMMENT '[住宅] 建筑面积 :第几层',
  `floorcount` int(3) DEFAULT '10' COMMENT '[住宅] 建筑面积 :共几层',
  `colnum` int(11) DEFAULT '1' COMMENT '收藏次数',
  `sptype` int(2) DEFAULT '1' COMMENT '[商铺]类型：1-街铺 2-百货超市 3-专业市场 4-其他',
  `renovation` int(2) DEFAULT '1' COMMENT '装修情况：1- 简装 2-精装 3-毛坯',
  `paytype` int(2) DEFAULT '1' COMMENT '支付方式：[略]',
  `chicktime` varchar(10) DEFAULT NULL COMMENT '入住时间： 1-随时 | 2-具体时间',
  `description` varchar(255) DEFAULT '描述信息' COMMENT '[住宅+办公]描述',
  `uid` int(11) DEFAULT NULL COMMENT '发布账户id',
  `price` varchar(10) DEFAULT NULL COMMENT '租金',
  `zxdate` varchar(20) DEFAULT '10' COMMENT '[办公+商铺]装修期',
  `transferfee` varchar(20) DEFAULT '有' COMMENT '[商铺]转手费',
  `shanpuwork` varchar(20) DEFAULT '1' COMMENT '[商铺]目前经营：服装类 电器类 食品类 其他类',
  `addressx` varchar(10) DEFAULT NULL COMMENT '地图x',
  `addressy` varchar(10) DEFAULT NULL COMMENT '地图y',
  `name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `sex` int(2) DEFAULT NULL COMMENT '性别：1-男 2-女 3-未知',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `shenfen` int(2) DEFAULT '1' COMMENT '[办公+商铺]出租方身份:1-业主 2-租客 3-管理员',
  `renttime` varchar(10) DEFAULT '1' COMMENT '[办公+商铺]租贷期限',
  `equitment` varchar(50) DEFAULT '0/0/0/0/0/0/0/0/' COMMENT '[住宅]配套设施:格式 8个：0/1/0/1/0/1/0 1代表有 0代表无',
  `tjpersonid` varchar(50) DEFAULT '无推荐人' COMMENT '推荐人id',
  `status` int(2) DEFAULT '2' COMMENT '状态:(1-上架 2-下架) 定期删除',
  `bgtype` int(11) DEFAULT '1' COMMENT '[办公类型] 1-高级写字楼 2-商务写字楼 3-普通写字楼 4-甲级写字楼 5-乙级写字楼',
  `fid` int(11) DEFAULT '0' COMMENT '绑定的蜂小二id   0-未绑定蜂小二',
  `studio` int(11) DEFAULT '2' COMMENT '审核状态: 2 - 未通过 1-通过',
  `trus` int(11) DEFAULT '2' COMMENT '托管 2未 1是',
  `iswrite` int(2) DEFAULT '2' COMMENT '是否签约:1-签约 2-未签约(是否签约和审核是否通过决定是否上架)',
  `clicknum` int(11) DEFAULT '1' COMMENT '流量(点击量)',
  `isup` int(2) DEFAULT '0' COMMENT '房源广播：0不启动 1申请启动 2已经处理',
  `allisup` int(2) DEFAULT '0' COMMENT '委托服务：0-不开启 1申请开启 2-已经处理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='房源表';

#
# Data for table "fx_renthouse"
#

INSERT INTO `fx_renthouse` VALUES (1,'港区政府附近','黄石市黄石港区磁湖路','/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg',1,5,50,1,7,9,1,1,3,'1','21',34,'2400','112','有','1',NULL,NULL,'钱程',1,'123123213',1,'2410','1/0/1/0/1/0/1/0/','无',2,1,0,2,2,NULL,8,1,1),(2,'观山路工行','黄石市黄石港区磁湖路','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,50,1,7,2,NULL,1,4,'1','1',35,'2400',NULL,'有',NULL,NULL,NULL,'钱程',1,'123123213',1,'','1/0/1/0/1/0/1/0/','无',1,NULL,1,1,2,NULL,16,1,1),(4,'天津路工行','黄石市黄石港区磁湖路','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,2,50,1,7,321,NULL,3,3,'1','1',35,'2400',NULL,'有',NULL,NULL,NULL,'钱程',1,'123123213',1,'','1/0/1/0/1/0/1/0/','无',1,NULL,1,1,1,NULL,3,1,1),(5,'南京路工行','黄石市黄石港区磁湖路','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,4,50,1,7,2,NULL,1,3,'1','1',3,'2400',NULL,'有',NULL,NULL,NULL,'钱程',1,'123123213',1,'','1/0/1/0/1/0/1/0/','无',1,NULL,0,1,1,NULL,3,2,1),(6,'湖北师范','黄石市黄石港区磁湖路','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',2,3,21,1,1,3,NULL,2,2,'1','1',34,'2400',NULL,'有',NULL,NULL,NULL,'钱程',1,'123123213',1,'','1/1/0/0/0/0/1/0/','无',2,NULL,1,1,1,NULL,7,1,1),(7,'阳光超市附近','黄石市黄石港区磁湖路','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',2,3,123,1,1,10,NULL,3,3,'1','1',3,'2400',NULL,'有',NULL,NULL,NULL,'钱程',1,'123123213',1,'','1/1/0/0/0/0/1/0/','无',1,NULL,1,1,1,NULL,7,1,1),(8,'南岳村','黄石市黄石港区磁湖路','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',2,1,50,1,1,322,NULL,2,2,'1','1',35,'2400',NULL,'有',NULL,NULL,NULL,'钱程',1,'123123213',1,'','1/1/0/0/0/0/1/0/','无',1,NULL,1,1,1,NULL,9,1,1),(9,'王家里','黄石市黄石港区磁湖路','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',2,2,12,1,1,9,NULL,1,43,'1','1',34,'2400',NULL,'有',NULL,NULL,NULL,'钱程',1,'123123213',1,'','1/1/0/0/0/0/1/0/','无',2,NULL,2,1,1,NULL,1,1,1),(11,'联合村','黄石市黄石港区磁湖路','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',3,1,123,1,1,3,NULL,1,2,'1','11',34,'2400',NULL,'有','2',NULL,NULL,'钱程',1,'123123213',1,'','1/1/0/0/0/0/1/0/','无',1,NULL,1,1,1,NULL,1,1,1),(12,'智华大厦','黄石市黄石港区磁湖路','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',3,2,2,1,1,3,NULL,2,3,'1','1',35,'2400',NULL,'有','1',NULL,NULL,'钱程',1,'123123213',1,'','1/1/0/0/0/0/1/0/','无',1,NULL,2,1,1,NULL,2,1,1),(13,'智华大厦','黄石市黄石港区磁湖路','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',3,2,321,1,1,22,NULL,2,4,'1','1',34,'2400',NULL,'无','3',NULL,NULL,'钱程',1,'123123213',2,'','1/1/0/0/1/0/1/0/','无',1,NULL,2,1,1,NULL,4,1,1),(14,'爱康医院对面','西塞山','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',3,1,3,1,1,12,NULL,3,4,'2014年5月5','1',35,'2400',NULL,'无','4',NULL,NULL,'钱程',1,'123123213',1,'','1/1/0/0/1/0/1/0/','无',1,NULL,2,1,1,NULL,1,1,1),(15,'上窑口','西塞山','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',3,3,12,1,1,3,NULL,2,4,'1','1',35,'2400',NULL,'有','2',NULL,NULL,'钱程',1,'123123213',2,'','1/1/0/0/1/0/1/0/','无',1,NULL,2,1,1,NULL,1,2,1),(16,'陈家湾公安医院','西塞山','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',3,1,2,1,1,3,NULL,1,4,'1','1',34,'2400',NULL,'有','3',NULL,NULL,'钱程',1,'123123213',1,'','1/1/0/0/1/0/1/0/','无',2,NULL,2,1,1,NULL,1,0,1),(17,'456456','456465','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',2,1,200,1,1,1,NULL,1,1,'1','1',34,'46546','44','有',NULL,NULL,NULL,'464',1,'464',1,'654','1/0/0/0/0/0/0/0/','无',2,1,1,1,2,NULL,1,0,0),(18,'4564564','4564654','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,456465,1,1,2,NULL,1,1,'2015-12-09','456456',34,'46546',NULL,'有',NULL,NULL,NULL,'45646',1,'456465',1,'654','1/0/0/0/0/0/0/0/','46546',2,NULL,1,2,2,NULL,3,0,0),(19,'45654654','45646','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',3,1,200,1,1,1,NULL,1,1,'1','1',34,'46546','4564','有','1',NULL,NULL,'4654',1,'46546',1,'4564','0/0/0/0/0/0/0/0/','无',2,1,0,2,2,NULL,1,0,0),(20,'456','45646','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',2,1,200,1,1,1,NULL,1,1,'2015-12-19','1',34,'45646','4654','有',NULL,NULL,NULL,'4654',1,'4654',1,'46546','0/0/0/0/0/0/0/0/','无',2,1,1,1,2,NULL,1,0,1),(21,'4951961','419561961','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',2,1,200,1,1,1,NULL,1,1,'2015-12-09','1',34,'161961961','65161','有',NULL,NULL,NULL,'61651',1,'1961961',1,'','0/0/0/0/0/0/0/0/','无',2,1,1,2,2,1,1,0,0),(22,'16516','1651961','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,961,1,1,1,NULL,1,1,'1','16516',34,'616',NULL,'有',NULL,NULL,NULL,'1616',1,'1616',1,NULL,'0/0/0/0/0/0/0/0/','6',1,NULL,0,2,2,NULL,1,0,0),(23,'165','196','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',3,1,200,1,1,1,NULL,1,3,'2015-12-09','1',34,'191','4984949','有','2',NULL,NULL,'4651',1,'4984',1,'94','0/0/0/0/0/0/0/0/','无',1,4,0,2,2,NULL,1,0,0),(24,'541841','46541','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,651,1,1,1,NULL,1,1,'1','894984',34,'4646',NULL,'有',NULL,NULL,NULL,'494',1,'949494',1,NULL,'0/0/0/0/0/0/0/0/','494',2,NULL,0,2,2,NULL,1,0,0),(25,'465461','黄石市黄石港区磁湖路','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,46464,1,1,1,NULL,1,1,'1','464',34,'4646464',NULL,'有',NULL,NULL,NULL,'64654',1,'464',1,NULL,'1/0/0/0/0/0/0/0/','64',2,NULL,0,2,2,NULL,1,2,2),(26,'242434','黄石市3434343434343','1',1,1,343434,343,434,1,NULL,1,1,'2015-12-10','43434',34,'3434',NULL,'有',NULL,NULL,NULL,'3434',1,'4343',1,NULL,'0/0/0/0/0/0/0/0/','465464',2,NULL,0,2,2,NULL,1,0,0),(27,'57434','黄石市343434343434','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,343,34334,3434,1,NULL,1,1,'2015-12-10','3434',34,'343344',NULL,'有',NULL,NULL,NULL,'343',1,'4343',1,NULL,'0/0/0/0/0/0/0/0/','3434',2,NULL,0,2,2,NULL,1,0,0),(28,'4654','黄石市456','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,456654,4654,4654,1,NULL,1,1,'1','4564',34,'464',NULL,'有',NULL,NULL,NULL,'4654',1,'4564',1,NULL,'1/0/0/0/0/0/0/0/','465465',2,NULL,0,2,2,NULL,1,0,0),(29,'45645','黄石市46544565644564','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,465,464,46,1,NULL,1,1,'1','4564',34,'45646',NULL,'有',NULL,NULL,NULL,'456465',1,'46546',1,NULL,'1/0/0/0/0/0/1/0/','无',2,NULL,1,2,2,NULL,1,0,0),(30,'7897','黄石市7897789798789789','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,798789,789798,798798,1,NULL,1,1,'1','4564',34,'789798',NULL,'有',NULL,NULL,NULL,'45646',1,'456465',1,NULL,'1/0/0/1/0/0/0/0','456465',2,NULL,2,2,2,2,1,0,0),(31,'7897','黄石市7897789798789789','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,798789,789798,798798,1,NULL,1,1,'1','4564',34,'789798',NULL,'有',NULL,NULL,NULL,'45646',1,'456465',1,NULL,'1/0/0/1/0/0/0/0/','456465',2,NULL,0,2,2,NULL,1,0,0),(32,'7897','黄石市7897789798789789','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,798789,789798,798798,1,NULL,1,1,'1','4564',34,'789798',NULL,'有',NULL,NULL,NULL,'45646',1,'456465',1,NULL,'1/0/0/1/0/0/0/0/','456465',2,NULL,0,2,2,NULL,1,0,0),(33,'7897','黄石市7897789798789789','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,798789,789798,798798,1,NULL,1,1,'1','4564',34,'789798',NULL,'有',NULL,NULL,NULL,'45646',1,'456465',1,NULL,'1/0/0/1/0/0/0/0/','456465',2,NULL,0,2,2,NULL,1,0,0),(34,'7897','黄石市7897789798789789','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,798789,789798,798798,1,NULL,1,1,'1','4564',34,'789798',NULL,'有',NULL,NULL,NULL,'45646',1,'456465',1,NULL,'1/0/0/1/0/0/0/0/','456465',2,NULL,0,2,2,NULL,1,0,0),(35,'7897','黄石市7897789798789789','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,798789,789798,798798,1,NULL,1,1,'1','4564',34,'789798',NULL,'有',NULL,NULL,NULL,'45646',1,'456465',1,NULL,'1/0/0/1/0/0/0/0/','456465',2,NULL,0,2,2,NULL,1,0,0),(36,'7897','黄石市7897789798789789','/data/img/renthouse/1.jpg-/data/img/renthouse/3.jpg',1,1,798789,789798,798798,1,NULL,1,1,'1','4564',34,'789798',NULL,'有',NULL,NULL,NULL,'45646',1,'456465',1,NULL,'1/0/0/1/0/0/0/0/','456465',2,NULL,0,2,2,NULL,1,0,0),(37,'7897','黄石市7897789798789789','',1,1,798789,789798,798798,1,NULL,1,1,'1','4564',34,'789798',NULL,'有',NULL,NULL,NULL,'45646',1,'456465',1,NULL,'1/0/0/1/0/0/0/0/','456465',2,NULL,0,2,2,NULL,1,0,0),(38,'7897','黄石市7897789798789789','',1,1,798789,789798,798798,1,NULL,1,1,'1','4564',34,'789798',NULL,'有',NULL,NULL,NULL,'45646',1,'456465',1,NULL,'1/0/0/1/1/0/0/0','456465',1,NULL,2,2,2,1,1,0,0),(39,'湖北师范学院6东','湖北师范学院6东','/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg',1,1,20,3,7,0,1,2,1,'随时入住','不错啊',34,'1000','10','有','1',NULL,NULL,'胡开才',1,'110',1,'1','1/0/0/0/0/0/0/0','无推荐人',2,1,2,1,2,2,2,1,1);

#
# Source for table "fx_seehouse"
#

DROP TABLE IF EXISTS `fx_seehouse`;
CREATE TABLE `fx_seehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `fx2id` int(10) DEFAULT NULL,
  `rentid` int(11) DEFAULT NULL COMMENT '房源id(/间隔)',
  `ispay` int(2) DEFAULT NULL,
  `yytime` varchar(20) DEFAULT '0' COMMENT '预约时间',
  `seenum` int(2) DEFAULT NULL COMMENT '带看次数',
  `seetime` varchar(20) DEFAULT NULL COMMENT '付账时间',
  `paytype` int(11) DEFAULT NULL COMMENT '付账类型:1-99 2-15天佣金',
  `comment` varchar(30) DEFAULT NULL COMMENT '本次服务评价(本条记录时间截止)',
  `status` int(2) DEFAULT NULL COMMENT '状态: 1-未结束 0-结束',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='约看表';

#
# Data for table "fx_seehouse"
#

INSERT INTO `fx_seehouse` VALUES (1,34,1,2,1,'2015-9-7',2,'2015-9-10',2,'陈先生&2015-2-4&很满意',0),(3,34,2,1,1,'2015-9-10',1,'2015-9-10',1,'李先生&2015-2-4&dADASDK',1),(4,35,1,10,1,'2015-9-10',1,'2015-9-10',1,'李先生&2015-2-4&dADASDK',1),(5,34,1,1,0,'2015-9-7',0,'2015-9-10',1,'李先生&2015-2-4&服务热情',0),(6,34,2,1,0,'0',0,'2015-9-10',2,'李先生&2015-2-4&服务热情',0),(7,34,2,1,0,'0',0,'2015-9-10',1,'李先生&2015-2-4&服务热情',0),(8,34,1,7,0,'0',0,'2015-9-10',1,'李先生&2015-2-4&服务热情',0),(9,34,2,6,0,'0',0,'2015-9-10',1,'李先生&2015-2-4&服务热情',0),(10,34,1,6,0,'2016-02-10',0,'2015-9-10',1,'李先生&2015-2-4&服务热情',0),(12,34,2,18,NULL,'0',NULL,NULL,NULL,NULL,NULL),(16,34,1,2,0,'0',0,NULL,NULL,NULL,1);
