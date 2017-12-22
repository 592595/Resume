/*
Navicat MySQL Data Transfer

Source Server         : Resume
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : resume

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-12-22 20:58:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Contactid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ContactTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ContactContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('panda', '1', 'Locatin', '内蒙古赤峰市');
INSERT INTO `contact` VALUES ('panda', '2', 'Phone', '15540947621');
INSERT INTO `contact` VALUES ('panda', '3', 'Email', '744151913@qq.com\r\n');
INSERT INTO `contact` VALUES ('panda', '4', 'Github', '74415191545');

-- ----------------------------
-- Table structure for exper
-- ----------------------------
DROP TABLE IF EXISTS `exper`;
CREATE TABLE `exper` (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Experid` varchar(10) DEFAULT NULL,
  `ExperTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ExperContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exper
-- ----------------------------
INSERT INTO `exper` VALUES ('panda', '1', 'photoshop', 'qwewrerwer');
INSERT INTO `exper` VALUES ('panda', '2', 'JavaScript', 'Learn JavaScript and stay connected with the latest news created and curated by the JavaScript community.');
INSERT INTO `exper` VALUES ('panda', '3', 'Java ', 'Java Web Start is included in the Java Runtime Environment (JRE) since release of Java 5.0. This means that when you install Java');

-- ----------------------------
-- Table structure for intro
-- ----------------------------
DROP TABLE IF EXISTS `intro`;
CREATE TABLE `intro` (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IntroContent` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intro
-- ----------------------------
INSERT INTO `intro` VALUES ('panda', 0x4A617661E5BE886E696365);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '潘佳慧', '123456');

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work` (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Workid` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `WorkTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `WorkContent` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `WorkTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `WorkLocation` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Workid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES ('panda', '1', 'Imudges', 0x44756973206175746520697275726520646F6C6F7220696E20726570726568656E646572697420696E20766F6C7570746174652076656C697420657373652063696C6C756D20646F6C6F726520657520667567696174206E756C6C612070617269617475722E204578636570746575722073696E74206F6363616563617420637570696461746174206E6F6E2070726F6964656E742C2073756E7420696E2063756C706120717569206F666669636961206465736572756E74206D6F6C6C697420616E696D20696420657374206C61626F72756D2E0D0A0D0A4C6F72656D20697073756D20646F6C6F722073697420616D65742C20636F6E7365637465747572206164697069736963696E6720656C69742C2073656420646F20656975736D6F642074656D706F7220696E6369646964756E74207574206C61626F726520657420646F6C6F7265206D61676E6120616C697175612E20557420656E696D206164206D696E696D2076656E69616D2C2071756973206E6F73747275642E, '2017.7.1', '内蒙古大学');
INSERT INTO `work` VALUES ('panda', '2', 'bdb d', 0x64622064, 'bd bd', 'dbdg');
INSERT INTO `work` VALUES ('panda', '3', '123132', 0x333231, '21', '21');
INSERT INTO `work` VALUES ('panda', '4', '212', 0x323231, '212', '1231');
INSERT INTO `work` VALUES ('panda', '5', '123', 0x32313233, '21', '312');
