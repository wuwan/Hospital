/*
Navicat MySQL Data Transfer

Source Server         : 20142894
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : hospitolindex

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-06-10 09:56:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PartID` int(11) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PartID` (`PartID`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`PartID`) REFERENCES `part` (`PartID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '1', '感冒科');
INSERT INTO `department` VALUES ('2', '2', '发烧科');
INSERT INTO `department` VALUES ('3', '2', '眼鼻喉科');
INSERT INTO `department` VALUES ('4', '3', '癌症科');

-- ----------------------------
-- Table structure for `docpaiban`
-- ----------------------------
DROP TABLE IF EXISTS `docpaiban`;
CREATE TABLE `docpaiban` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DocID` int(11) DEFAULT NULL COMMENT '医生ID',
  `Monam` varchar(10) DEFAULT NULL,
  `Monpm` varchar(10) DEFAULT NULL,
  `Moneve` varchar(10) DEFAULT NULL,
  `Tueam` varchar(10) DEFAULT NULL,
  `Tuepm` varchar(10) DEFAULT NULL,
  `Tueeve` varchar(10) DEFAULT NULL,
  `Wenam` varchar(10) DEFAULT NULL,
  `Wenpm` varchar(10) DEFAULT NULL,
  `Weneve` varchar(10) DEFAULT NULL,
  `Thuam` varchar(10) DEFAULT NULL,
  `Thupm` varchar(10) DEFAULT NULL,
  `Thueve` varchar(10) DEFAULT NULL,
  `Friam` varchar(10) DEFAULT NULL,
  `Fripm` varchar(10) DEFAULT NULL,
  `Frieve` varchar(10) DEFAULT NULL,
  `Satam` varchar(10) DEFAULT NULL,
  `Satpm` varchar(10) DEFAULT NULL,
  `Sateve` varchar(10) DEFAULT NULL,
  `Sunam` varchar(10) DEFAULT NULL,
  `Sunpm` varchar(10) DEFAULT NULL,
  `Suneve` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `DocID` (`DocID`),
  CONSTRAINT `DocID` FOREIGN KEY (`DocID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of docpaiban
-- ----------------------------
INSERT INTO `docpaiban` VALUES ('188', '426203250', '4', '3', '1', '3', '2', '0', '4', '3', '1', '4', '2', '1', '4', '-1', '0', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `docpaiban` VALUES ('204', '426203251', '4', '3', '1', '4', '3', '1', '4', '1', '0', '4', '2', '-1', '4', '1', '0', '-1', '-1', '-1', '-1', '-1', '-1');
INSERT INTO `docpaiban` VALUES ('225', '426203242', '-5', '3', '4', '4', '2', null, '-2', null, null, null, '2', '4', null, null, '4', '0', '3', null, null, null, null);
INSERT INTO `docpaiban` VALUES ('227', '426203243', '2', '2', '-1', '0', '2', '1', '3', '2', '-1', '2', '3', '1', '0', '-1', '1', '-1', '-1', '-1', '-1', '0', '-1');
INSERT INTO `docpaiban` VALUES ('228', '426203244', '3', '2', '-1', '4', '3', '1', '2', '2', '1', '0', '1', '-1', '4', '2', '0', null, null, '2', null, null, null);

-- ----------------------------
-- Table structure for `hospitol`
-- ----------------------------
DROP TABLE IF EXISTS `hospitol`;
CREATE TABLE `hospitol` (
  `HosID` int(11) NOT NULL AUTO_INCREMENT,
  `HosName` varchar(100) DEFAULT NULL,
  `HosProvince` varchar(50) DEFAULT NULL,
  `HosCity` varchar(50) DEFAULT NULL COMMENT '医院具体地址',
  `HosAdress` varchar(100) DEFAULT NULL,
  `HosPhone` varchar(50) DEFAULT NULL COMMENT '医院联系电话',
  PRIMARY KEY (`HosID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hospitol
-- ----------------------------
INSERT INTO `hospitol` VALUES ('1', '汉东省人民医院', '汉东省', '汉东市', '中国', '00000000');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DocID` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DocName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Date` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Time` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Type` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('32', 'drc', '426203244', '??', '2017-06-13', '上午:8:00-9:00', '请及时前往医院就诊！');
INSERT INTO `order` VALUES ('37', 'drc', '426203243', '???', '2017-06-13', '上午:11:00-12:00', '请及时前往医院就诊！');

-- ----------------------------
-- Table structure for `part`
-- ----------------------------
DROP TABLE IF EXISTS `part`;
CREATE TABLE `part` (
  `PartID` int(11) NOT NULL AUTO_INCREMENT,
  `HosID` int(11) DEFAULT NULL,
  `PartName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PartID`),
  KEY `HosID` (`HosID`),
  CONSTRAINT `HosID` FOREIGN KEY (`HosID`) REFERENCES `hospitol` (`HosID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of part
-- ----------------------------
INSERT INTO `part` VALUES ('1', '1', '门诊部');
INSERT INTO `part` VALUES ('2', '1', '住院部');
INSERT INTO `part` VALUES ('3', '1', '护理部');
INSERT INTO `part` VALUES ('4', '1', '咨询部');

-- ----------------------------
-- Table structure for `privilege`
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) DEFAULT NULL COMMENT '权限名',
  `URL` varchar(300) DEFAULT NULL COMMENT '访问路径',
  `Pid` int(11) DEFAULT NULL COMMENT '父ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privilege
-- ----------------------------
INSERT INTO `privilege` VALUES ('1', '预约挂号', null, '-1');
INSERT INTO `privilege` VALUES ('2', '出诊安排', null, '-1');
INSERT INTO `privilege` VALUES ('3', '添加医生', 'FindPart.action', '-1');
INSERT INTO `privilege` VALUES ('4', '病患管理', 'FindBh.action', '-1');
INSERT INTO `privilege` VALUES ('5', '医生管理', 'FindDoc.action', '-1');
INSERT INTO `privilege` VALUES ('6', '在线咨询', 'FindDocbyuser.action', '-1');
INSERT INTO `privilege` VALUES ('7', '预约记录', 'Doctor/YuYueJiLu.action', '-1');
INSERT INTO `privilege` VALUES ('9', '修改排班', 'Doctor/FindPaiban.action', '-1');
INSERT INTO `privilege` VALUES ('10', '权限分配', 'Doctor/QuanXianfenpei.action', '-1');
INSERT INTO `privilege` VALUES ('11', '角色分配', 'Doctor/JueSeFenpei.action', '-1');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `RoleID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(255) DEFAULT NULL,
  `RoleMiaoShu` text,
  `RoleKZ` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '普通用户', '普通用户一般是预约医生的病人', null);
INSERT INTO `role` VALUES ('2', '医生', '医生角色', null);
INSERT INTO `role` VALUES ('3', '管理员', '管理员管理用户权限分配和医生排班信息以及处理不良用户', null);

-- ----------------------------
-- Table structure for `role_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `role_privilege`;
CREATE TABLE `role_privilege` (
  `RoleId` int(11) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `privilegeId` int(11) NOT NULL DEFAULT '0' COMMENT '权限ID',
  `identity` int(11) DEFAULT NULL,
  PRIMARY KEY (`RoleId`,`privilegeId`),
  KEY `privilegeId` (`privilegeId`),
  CONSTRAINT `privilegeId` FOREIGN KEY (`privilegeId`) REFERENCES `privilege` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RoleId` FOREIGN KEY (`RoleId`) REFERENCES `role` (`RoleID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_privilege
-- ----------------------------
INSERT INTO `role_privilege` VALUES ('1', '1', null);
INSERT INTO `role_privilege` VALUES ('1', '2', null);
INSERT INTO `role_privilege` VALUES ('2', '2', null);
INSERT INTO `role_privilege` VALUES ('2', '7', null);
INSERT INTO `role_privilege` VALUES ('2', '9', null);
INSERT INTO `role_privilege` VALUES ('3', '3', null);
INSERT INTO `role_privilege` VALUES ('3', '4', null);
INSERT INTO `role_privilege` VALUES ('3', '5', null);
INSERT INTO `role_privilege` VALUES ('3', '6', null);
INSERT INTO `role_privilege` VALUES ('3', '10', null);
INSERT INTO `role_privilege` VALUES ('3', '11', null);

-- ----------------------------
-- Table structure for `role_user`
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `RoleId` int(11) NOT NULL DEFAULT '0',
  `UserId` int(11) NOT NULL DEFAULT '0',
  `indentity` int(11) DEFAULT NULL,
  PRIMARY KEY (`RoleId`,`UserId`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`RoleId`) REFERENCES `role` (`RoleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('1', '426203251', null);
INSERT INTO `role_user` VALUES ('2', '426203243', null);
INSERT INTO `role_user` VALUES ('2', '426203244', null);
INSERT INTO `role_user` VALUES ('2', '426203250', null);
INSERT INTO `role_user` VALUES ('3', '426203242', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) DEFAULT NULL,
  `UserQQ` varchar(100) DEFAULT NULL,
  `UserAge` int(11) DEFAULT NULL,
  `PassWord` varchar(255) DEFAULT NULL,
  `DepID` int(11) DEFAULT NULL,
  `UserSex` varchar(10) DEFAULT NULL,
  `UserPhone` varchar(50) DEFAULT NULL,
  `DocBelongHos` varchar(100) DEFAULT NULL,
  `DocBelongPart` varchar(100) DEFAULT NULL,
  `DocBelongPartId` int(11) DEFAULT NULL COMMENT '所属部门编号',
  `DocLevel` int(10) DEFAULT NULL COMMENT '医生等级',
  `DocTitle` varchar(50) DEFAULT NULL COMMENT '职称',
  `Isavailable` varchar(50) DEFAULT 'True',
  PRIMARY KEY (`ID`),
  KEY `doctor_ibfk_1` (`DepID`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`DepID`) REFERENCES `department` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=426203253 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('426203242', '邵文正', '2943052070', '40', '111111', '1', '男', '13216987415', '汉东省人民医院', '住院部', null, '100', '砖家', '是');
INSERT INTO `user` VALUES ('426203243', '朱一凡', '2943052070', '18', '123456', '1', '女', '15226586361', '汉东省人民医院', '门诊部', null, '100', '砖家', '是');
INSERT INTO `user` VALUES ('426203244', '福莱', '1625280851', '22', '123456', '1', '女', '15226586361', '汉东省人民医院', '住院部', null, '100', '砖家', '是');
INSERT INTO `user` VALUES ('426203250', '千项', '1625280852', '30', '111111', '2', '女', '12312312311', '汉东省人民医院', '门诊部', null, '100', '砖家', '是');
INSERT INTO `user` VALUES ('426203251', '苏月', null, '33', '123', null, '女', '1637583748378', null, null, null, '100', null, '是');
