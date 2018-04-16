/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50636
Source Host           : 127.0.0.1:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2018-04-16 17:39:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for math
-- ----------------------------
DROP TABLE IF EXISTS `math`;
CREATE TABLE `math` (
  `num1` int(11) DEFAULT NULL,
  `num2` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of math
-- ----------------------------
INSERT INTO `math` VALUES ('1', '1');
INSERT INTO `math` VALUES ('-1', '1');
INSERT INTO `math` VALUES ('-2', '-3');
INSERT INTO `math` VALUES ('30', '30');
INSERT INTO `math` VALUES ('90', '90');
INSERT INTO `math` VALUES ('60', '60');
INSERT INTO `math` VALUES (null, null);
