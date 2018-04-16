/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50636
Source Host           : 127.0.0.1:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2018-04-16 17:39:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sz_shop
-- ----------------------------
DROP TABLE IF EXISTS `sz_shop`;
CREATE TABLE `sz_shop` (
  `sdate` datetime DEFAULT NULL,
  `shopid` int(11) DEFAULT NULL,
  `amt` int(11) DEFAULT NULL,
  `uv` int(11) DEFAULT NULL,
  `sname` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `addr` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `stime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of sz_shop
-- ----------------------------
INSERT INTO `sz_shop` VALUES ('2018-04-10 17:15:51', '1', '1', '3', 'apple', 'usa', '17:16:45');
INSERT INTO `sz_shop` VALUES ('2018-04-18 17:15:54', '1', '2', '3', 'apple', 'usa', null);
INSERT INTO `sz_shop` VALUES (null, '1', '3', '3', 'apple', 'usa', null);
INSERT INTO `sz_shop` VALUES (null, '2', '1', '3', 'smartisan', 'CN', null);
INSERT INTO `sz_shop` VALUES (null, '2', '2', '3', null, null, null);
INSERT INTO `sz_shop` VALUES (null, '3', '1', '7', null, null, '17:16:48');
INSERT INTO `sz_shop` VALUES (null, '3', '2', '7', null, null, null);
INSERT INTO `sz_shop` VALUES (null, '3', '3', '7', null, null, null);
INSERT INTO `sz_shop` VALUES (null, '1', '8', '3', 'apple', 'usa', null);
INSERT INTO `sz_shop` VALUES ('2018-04-17 17:15:57', '1', '5', '3', 'apple', 'usa', null);
INSERT INTO `sz_shop` VALUES (null, '3', '12', '7', null, null, '17:16:50');
INSERT INTO `sz_shop` VALUES (null, '3', '6', '7', null, null, null);
INSERT INTO `sz_shop` VALUES (null, '4', '1', '1', null, null, null);
INSERT INTO `sz_shop` VALUES (null, '4', '2', '1', null, 'CN', null);
INSERT INTO `sz_shop` VALUES (null, '2', '1', '3', null, null, '17:16:52');
INSERT INTO `sz_shop` VALUES (null, '0', '0', '0', null, null, null);
INSERT INTO `sz_shop` VALUES (null, '666', '666', '666', null, 'CN', '19:16:54');
