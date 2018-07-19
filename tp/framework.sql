/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : framework

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-07-19 15:14:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uname` varchar(45) DEFAULT NULL COMMENT '用户名',
  `content` text COMMENT '内容',
  `created_at` varchar(300) NOT NULL DEFAULT '0' COMMENT '创建于',
  `updated_at` varchar(300) NOT NULL DEFAULT '0' COMMENT '更新于',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES ('32', 'This life, than life', 'I had already experienced more torment than most Australian people see in their whole lives.', '1531739416', '1531739416');
INSERT INTO `msg` VALUES ('40', '生日快乐', 'hello 贝贝', '1531797325', '1531797325');
INSERT INTO `msg` VALUES ('41', '', '', '1531826734', '1531826734');
INSERT INTO `msg` VALUES ('37', '热热', '放到', '1531741364', '1531741364');
INSERT INTO `msg` VALUES ('38', '嘿嘿', '狗绳子', '1531741655', '1531741655');
INSERT INTO `msg` VALUES ('29', 'very miss you', 'my baby ,mis殷', '1531739301', '1531739301');
INSERT INTO `msg` VALUES ('30', 'This life, than life', 'I had already experienced more torment than most Australian people see in their whole lives.', '1531739313', '1531739313');
INSERT INTO `msg` VALUES ('31', '张三', '你好淫笑歪', '1531739334', '1531739334');

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES ('1836820188');
INSERT INTO `phone` VALUES ('1599026718');
INSERT INTO `phone` VALUES ('1358679389');
