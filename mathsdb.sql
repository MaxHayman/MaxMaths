/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : mathsdb

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2012-10-15 17:26:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `institutions`
-- ----------------------------
DROP TABLE IF EXISTS `institutions`;
CREATE TABLE `institutions` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `subend` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of institutions
-- ----------------------------

-- ----------------------------
-- Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `vars` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=356 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('2', 'mod', 'typ', 'lol=1', 'lol');
INSERT INTO `questions` VALUES ('3', 'm1', 'collisions', 'qu=4;qv=2;qm=14;pu=6;pv=5;pm=15;', 'lol');
INSERT INTO `questions` VALUES ('4', 'm1', 'collisions', 'qu=6;qv=19;qm=8;pu=12;pv=19;pm=17;', 'lol');
INSERT INTO `questions` VALUES ('5', 'm1', 'collisions', 'qu=6;qv=17;qm=10;pu=14;pv=9;pm=6;', 'lol');
INSERT INTO `questions` VALUES ('6', 'm1', 'collisions', 'qu=4;qv=17;qm=19;pu=9;pv=1;pm=11;', 'lol');
INSERT INTO `questions` VALUES ('7', 'm1', 'collisions', 'qu=19;qv=10;qm=7;pu=6;pv=1;pm=14', 'lol');
INSERT INTO `questions` VALUES ('8', 'm1', 'collisions', 'qu=12;qv=7;qm=14;pu=4;pv=2;pm=15;', 'lol');
INSERT INTO `questions` VALUES ('9', 'm1', 'collisions', 'qu=4;qv=19;qm=10;pu=20;pv=3;pm=3;', 'lol');
INSERT INTO `questions` VALUES ('10', 'm1', 'collisions', 'qu=9;qv=2;qm=2;pu=2;pv=12;pm=16;', 'lol');
INSERT INTO `questions` VALUES ('11', 'm1', 'collisions', 'qu=0;qv=13;qm=2;pu=17;pv=;pm=10', 'lol');
INSERT INTO `questions` VALUES ('12', 'm1', 'collisions', 'qu=0;qv=2;qm=19;pu=9;pv=;pm=7', 'lol');
INSERT INTO `questions` VALUES ('13', 'm1', 'collisions', 'qu=0;qv=17;qm=18;pu=6;pv=-13.125;pm=16', 'lol');
INSERT INTO `questions` VALUES ('14', 'm1', 'collisions', 'imp=-56;qu=0;qv=4;qm=14;pu=2;pv=-7.33333333333;pm=', 'lol');
INSERT INTO `questions` VALUES ('15', 'm1', 'collisions', 'imp=-221;qu=0;qv=13;qm=17;pu=3;pv=-107.5;pm=2', 'lol');
INSERT INTO `questions` VALUES ('16', 'm1', 'collisions', 'imp=-3.96;qu=0;qv=2;qm=2;pu=8;pv=7.78;pm=18', 'lol');
INSERT INTO `questions` VALUES ('17', 'm1', 'collisions', 'imp=-2;qu=0;qv=1;qm=2;pu=6;pv=5;pm=2', 'lol');
INSERT INTO `questions` VALUES ('18', 'm1', 'collisions', 'imp=-6.05;qu=0;qv=2;qm=3;pu=10;pv=9.45;pm=11', 'lol');
INSERT INTO `questions` VALUES ('19', 'm1', 'collisions', 'imp=-48.02;qu=0;qv=8;qm=6;pu=7;pv=3.57;pm=14', 'lol');
INSERT INTO `questions` VALUES ('20', 'm1', 'collisions', 'imp=-7;qu=0;qv=1;qm=7;pu=7;pv=6.3;pm=10', 'lol');
INSERT INTO `questions` VALUES ('21', 'm1', 'collisions', 'imp=-24.05;qu=0;qv=4;qm=6;pu=9;pv=7.15;pm=13', 'lol');
INSERT INTO `questions` VALUES ('22', 'm1', 'collisions', 'imp=-160;qu=0;qv=10;qm=16;pu=2;pv=-38;pm=4', 'lol');
INSERT INTO `questions` VALUES ('23', 'm1', 'collisions', 'imp=-21;qu=0;qv=7;qm=3;pu=4;pv=0.5;pm=6', 'lol');
INSERT INTO `questions` VALUES ('24', 'm1', 'collisions', 'imp=-63;qu=0;qv=9;qm=7;pu=9;pv=5.85;pm=20', 'lol');
INSERT INTO `questions` VALUES ('25', 'm1', 'collisions', 'imp=-48;qu=0;qv=8;qm=6;pu=9;pv=-39;pm=1', 'lol');
INSERT INTO `questions` VALUES ('26', 'm1', 'collisions', 'imp=-42.03;qu=0;qv=6;qm=7;pu=2;pv=-2.67;pm=9', 'lol');
INSERT INTO `questions` VALUES ('27', 'm1', 'collisions', 'imp=-18;qu=0;qv=9;qm=2;pu=5;pv=0.5;pm=4', 'lol');
INSERT INTO `questions` VALUES ('28', 'm1', 'collisions', 'imp=-20;qu=0;qv=5;qm=4;pu=1;pv=-1.5;pm=8', 'lol');
INSERT INTO `questions` VALUES ('29', 'm1', 'collisions', 'imp=-30;qu=0;qv=6;qm=5;pu=7;pv=2;pm=6', 'lol');
INSERT INTO `questions` VALUES ('30', 'm1', 'collisions', 'imp=-6;qu=0;qv=6;qm=1;pu=3;pv=1.8;pm=5', 'lol');
INSERT INTO `questions` VALUES ('31', 'm1', 'collisions', 'imp=-1.4;qu=0;qv=0.7;qm=2;pu=5;pv=4.72;pm=5', 'lol');
INSERT INTO `questions` VALUES ('32', 'm1', 'collisions', 'imp=-2.414;qu=0;qv=0.6;qm=4;pu=4;pv=3.66;pm=7.1', 'lol');
INSERT INTO `questions` VALUES ('33', 'm1', 'collisions', 'imp=-2.7;qu=0;qv=0.9;qm=3;pu=1;pv=0.73;pm=10', 'lol');
INSERT INTO `questions` VALUES ('34', 'm1', 'collisions', 'imp=-1;qu=0;qv=0.5;qm=2;pu=0.3;pv=0.2;pm=10', 'lol');
INSERT INTO `questions` VALUES ('35', 'm1', 'collisions', 'imp=-4;qu=0;qv=0.8;qm=5;pu=0.2;pv=-0.2;pm=10', 'lol');
INSERT INTO `questions` VALUES ('36', 'm1', 'collisions', 'imp=-0.21;qu=0;qv=1;qm=0.2;pu=0.6;pv=0.57;pm=7', 'lol');
INSERT INTO `questions` VALUES ('37', 'm1', 'collisions', 'imp=-7;qu=0;qv=2.33;qm=3;pu=3;pv=-0.5;pm=2', 'lol');
INSERT INTO `questions` VALUES ('38', 'm1', 'collisions', 'imp=-7;qu=0;qv=2.33;qm=3;pu=3;pv=-0.5;pm=2', 'lol');
INSERT INTO `questions` VALUES ('39', 'm1', 'collisions', 'imp=5;qu=0;qv=2.33;qm=3;pu=3;pv=-0.5;pm=2', 'lol');
INSERT INTO `questions` VALUES ('40', 'm1', 'collisions', 'imp=-7;qu=0;qv=2.33;qm=3;pu=3;pv=-0.5;pm=2', 'lol');
INSERT INTO `questions` VALUES ('41', 'm1', 'collisions', 'imp=7;qu=0;qv=2.33;qm=3;pu=3;pv=-0.5;pm=2', 'lol');
INSERT INTO `questions` VALUES ('42', 'm1', 'collisions', 'imp=7;qu=0;qv=2.33;qm=3;pu=3;pv=-0.5;pm=2', 'lol');
INSERT INTO `questions` VALUES ('43', 'm1', 'collisions', 'imp=0.63;qu=0;qv=0.6;qm=1;pu=0.4;pv=0.33;pm=9', 'lol');
INSERT INTO `questions` VALUES ('44', 'm1', 'collisions', 'imp=3.5;qu=0;qv=0.5;qm=7;pu=3;pv=2.65;pm=10', 'lol');
INSERT INTO `questions` VALUES ('45', 'm1', 'collisions', 'imp=10;qu=0;qv=1;qm=10;pu=1;pv=-0.25;pm=8', 'lol');
INSERT INTO `questions` VALUES ('46', 'm1', 'collisions', 'imp=2.96;qu=0;qv=0.5;qm=6;pu=7;pv=6.63;pm=8', 'lol');
INSERT INTO `questions` VALUES ('47', 'm1', 'collisions', 'imp=49.6;qu=0;qv=6.2;qm=8;pu=3;pv=-3.2;pm=8', 'lol');
INSERT INTO `questions` VALUES ('48', 'm1', 'collisions', 'imp=54.56;qu=0;qv=9.1;qm=6;pu=9;pv=2.18;pm=8', 'lol');
INSERT INTO `questions` VALUES ('49', 'm1', 'collisions', 'imp=6.88;qu=0;qv=6.9;qm=1;pu=7;pv=6.14;pm=8', 'lol');
INSERT INTO `questions` VALUES ('50', 'm1', 'collisions', 'imp=50.4;qu=0;qv=6.3;qm=8;pu=1;pv=-6.2;pm=7', 'lol');
INSERT INTO `questions` VALUES ('51', 'm1', 'collisions', 'imp=46.8;qu=0;qv=5.2;qm=9;pu=2;pv=-3.2;pm=9', 'lol');
INSERT INTO `questions` VALUES ('52', 'm1', 'collisions', 'imp=59.4;qu=0;qv=9.9;qm=6;pu=2;pv=-4.6;pm=9', 'lol');
INSERT INTO `questions` VALUES ('53', 'm1', 'collisions', 'imp=6.57;qu=0;qv=6.6;qm=1;pu=2;pv=1.27;pm=9', 'lol');
INSERT INTO `questions` VALUES ('54', 'm1', 'collisions', 'imp=63.92;qu=0;qv=7.1;qm=9;pu=7.5;pv=-0.49;pm=8', 'lol');
INSERT INTO `questions` VALUES ('55', 'm1', 'collisions', 'imp=13.8;qu=0;qv=6.9;qm=2;pu=7.6;pv=5.3;pm=6', 'lol');
INSERT INTO `questions` VALUES ('56', 'm1', 'collisions', 'imp=28.21;qu=0;qv=9.4;qm=3;pu=6.3;pv=2.27;pm=7', 'lol');
INSERT INTO `questions` VALUES ('57', 'm1', 'collisions', 'imp=9.03;qu=0;qv=9;qm=1;pu=2.7;pv=1.41;pm=7', 'lol');
INSERT INTO `questions` VALUES ('58', 'm1', 'collisions', 'imp=38.43;qu=0;qv=6.4;qm=6;pu=2.3;pv=-3.19;pm=7', 'lol');
INSERT INTO `questions` VALUES ('59', 'm1', 'collisions', 'imp=60.21;qu=0;qv=8.6;qm=7;pu=8.5;pv=1.81;pm=9', 'lol');
INSERT INTO `questions` VALUES ('60', 'm1', 'collisions', 'imp=9.72;qu=0;qv=9.7;qm=1;pu=1.5;pv=0.42;pm=9', 'lol');
INSERT INTO `questions` VALUES ('61', 'm1', 'collisions', 'imp=36.8;qu=0;qv=9.2;qm=4;pu=4.6;pv=-2.76;pm=5', 'lol');
INSERT INTO `questions` VALUES ('62', 'm1', 'collisions', 'imp=85.5;qu=0;qv=9.5;qm=9;pu=5;pv=-9.25;pm=6', 'lol');
INSERT INTO `questions` VALUES ('63', 'm1', 'collisions', 'imp=18;qu=0;qv=9;qm=2;pu=3;pv=0;pm=6', 'lol');
INSERT INTO `questions` VALUES ('64', 'm1', 'collisions', 'imp=79.17;qu=0;qv=8.8;qm=9;pu=5.2;pv=-6.11;pm=7', 'lol');
INSERT INTO `questions` VALUES ('65', 'm1', 'collisions', 'imp=10.01;qu=0;qv=10;qm=1;pu=7.6;pv=6.17;pm=7', 'lol');
INSERT INTO `questions` VALUES ('66', 'm1', 'collisions', 'imp=44.82;qu=0;qv=6.4;qm=7;pu=3.5;pv=-3.97;pm=6', 'lol');
INSERT INTO `questions` VALUES ('67', 'm1', 'collisions', 'imp=34.5;qu=0;qv=6.9;qm=5;pu=1.9;pv=-1.55;pm=10', 'lol');
INSERT INTO `questions` VALUES ('68', 'm1', 'collisions', 'imp=11.6;qu=0;qv=5.8;qm=2;pu=9.4;pv=7.08;pm=5', 'lol');
INSERT INTO `questions` VALUES ('69', 'm1', 'collisions', 'imp=83.7;qu=0;qv=9.3;qm=9;pu=3;pv=-10.95;pm=6', 'lol');
INSERT INTO `questions` VALUES ('70', 'm1', 'collisions', 'imp=60.03;qu=0;qv=7.5;qm=8;pu=5.6;pv=-1.07;pm=9', 'lol');
INSERT INTO `questions` VALUES ('71', 'm1', 'collisions', 'imp=53.6;qu=0;qv=6.7;qm=8;pu=2.9;pv=-7.82;pm=5', 'lol');
INSERT INTO `questions` VALUES ('72', 'm1', 'collisions', 'imp=70.38;qu=0;qv=8.8;qm=8;pu=4.6;pv=-3.22;pm=9', 'lol');
INSERT INTO `questions` VALUES ('73', 'm1', 'collisions', 'imp=5.8;qu=0;qv=5.8;qm=1;pu=3.5;pv=2.34;pm=5', 'lol');
INSERT INTO `questions` VALUES ('74', 'm1', 'collisions', 'imp=36.61;qu=0;qv=6.1;qm=6;pu=2.1;pv=-3.13;pm=7', 'lol');
INSERT INTO `questions` VALUES ('75', 'm1', 'collisions', 'imp=56.7;qu=0;qv=6.3;qm=9;pu=5.9;pv=-5.44;pm=5', 'lol');
INSERT INTO `questions` VALUES ('76', 'm1', 'collisions', 'imp=36.4;qu=0;qv=9.1;qm=4;pu=3.4;pv=-1.15;pm=8', 'lol');
INSERT INTO `questions` VALUES ('77', 'm1', 'collisions', 'imp=28.77;qu=0;qv=7.2;qm=4;pu=4.4;pv=0.29;pm=7', 'lol');
INSERT INTO `questions` VALUES ('78', 'm1', 'collisions', 'imp=94;qu=0;qv=9.4;qm=10;pu=1.3;pv=-17.5;pm=5', 'lol');
INSERT INTO `questions` VALUES ('79', 'm1', 'collisions', 'imp=38.52;qu=0;qv=5.5;qm=7;pu=6.9;pv=2.62;pm=9', 'lol');
INSERT INTO `questions` VALUES ('80', 'm1', 'collisions', 'imp=21.6;qu=0;qv=5.4;qm=4;pu=6.1;pv=3.4;pm=8', 'lol');
INSERT INTO `questions` VALUES ('81', 'm1', 'collisions', 'imp=17.4;qu=0;qv=5.8;qm=3;pu=1.9;pv=0.16;pm=10', 'lol');
INSERT INTO `questions` VALUES ('82', 'm1', 'collisions', 'imp=6.18;qu=0;qv=6.2;qm=1;pu=3.3;pv=2.27;pm=6', 'lol');
INSERT INTO `questions` VALUES ('83', 'm1', 'collisions', 'imp=69.6;qu=0;qv=8.7;qm=8;pu=6.6;pv=-2.1;pm=8', 'lol');
INSERT INTO `questions` VALUES ('84', 'm1', 'collisions', 'imp=10.62;qu=0;qv=5.3;qm=2;pu=1.4;pv=-0.37;pm=6', 'lol');
INSERT INTO `questions` VALUES ('85', 'm1', 'collisions', 'imp=10.6;qu=0;qv=5.3;qm=2;pu=5.8;pv=4.74;pm=10', 'lol');
INSERT INTO `questions` VALUES ('86', 'm1', 'collisions', 'imp=19.6;qu=0;qv=9.8;qm=2;pu=8;pv=6.04;pm=10', 'lol');
INSERT INTO `questions` VALUES ('87', 'm1', 'collisions', 'imp=30.48;qu=0;qv=6.1;qm=5;pu=9.9;pv=6.09;pm=8', 'lol');
INSERT INTO `questions` VALUES ('88', 'm1', 'collisions', 'imp=28.8;qu=0;qv=9.6;qm=3;pu=5;pv=0.2;pm=6', 'lol');
INSERT INTO `questions` VALUES ('89', 'm1', 'collisions', 'imp=36.42;qu=0;qv=5.2;qm=7;pu=2.7;pv=-3.37;pm=6', 'lol');
INSERT INTO `questions` VALUES ('90', 'm1', 'collisions', 'imp=25.6;qu=0;qv=6.4;qm=4;pu=6;pv=0.88;pm=5', 'lol');
INSERT INTO `questions` VALUES ('91', 'm1', 'collisions', 'imp=55.2;qu=0;qv=9.2;qm=6;pu=8;pv=2.48;pm=10', 'lol');
INSERT INTO `questions` VALUES ('92', 'm1', 'collisions', 'imp=7.76;qu=0;qv=7.8;qm=1;pu=4.9;pv=3.93;pm=8', 'lol');
INSERT INTO `questions` VALUES ('93', 'm1', 'collisions', 'imp=18.63;qu=0;qv=6.2;qm=3;pu=1.6;pv=-0.47;pm=9', 'lol');
INSERT INTO `questions` VALUES ('94', 'm1', 'collisions', 'imp=62.02;qu=0;qv=6.2;qm=10;pu=5.7;pv=-3.16;pm=7', 'lol');
INSERT INTO `questions` VALUES ('95', 'm1', 'collisions', 'imp=37.12;qu=0;qv=5.3;qm=7;pu=5.1;pv=0.46;pm=8', 'lol');
INSERT INTO `questions` VALUES ('96', 'm1', 'collisions', 'imp=39.96;qu=0;qv=8;qm=5;pu=7.3;pv=2.86;pm=9', 'lol');
INSERT INTO `questions` VALUES ('97', 'm1', 'collisions', 'imp=52.02;qu=0;qv=5.2;qm=10;pu=6.8;pv=1.02;pm=9', 'lol');
INSERT INTO `questions` VALUES ('98', 'm1', 'collisions', 'imp=53.91;qu=0;qv=7.7;qm=7;pu=6.2;pv=0.21;pm=9', 'lol');
INSERT INTO `questions` VALUES ('99', 'm1', 'collisions', 'imp=50.4;qu=0;qv=8.4;qm=6;pu=10;pv=1.6;pm=6', 'lol');
INSERT INTO `questions` VALUES ('100', 'm1', 'collisions', 'imp=68.96;qu=0;qv=6.9;qm=10;pu=8.7;pv=0.08;pm=8', 'lol');
INSERT INTO `questions` VALUES ('101', 'm1', 'collisions', 'imp=15;qu=0;qv=5;qm=3;pu=8.7;pv=7.2;pm=10', 'lol');
INSERT INTO `questions` VALUES ('102', 'm1', 'collisions', 'imp=66.42;qu=0;qv=8.3;qm=8;pu=6.2;pv=-4.87;pm=6', 'lol');
INSERT INTO `questions` VALUES ('103', 'm1', 'collisions', 'imp=7.76;qu=0;qv=7.8;qm=1;pu=8.3;pv=7.33;pm=8', 'lol');
INSERT INTO `questions` VALUES ('104', 'm1', 'collisions', 'imp=59.4;qu=0;qv=9.9;qm=6;pu=5.6;pv=-4.3;pm=6', 'lol');
INSERT INTO `questions` VALUES ('105', 'm1', 'collisions', 'imp=39.18;qu=0;qv=9.8;qm=4;pu=1.7;pv=-4.83;pm=6', 'lol');
INSERT INTO `questions` VALUES ('106', 'm1', 'collisions', 'imp=8.7;qu=0;qv=8.7;qm=1;pu=4.3;pv=2.85;pm=6', 'lol');
INSERT INTO `questions` VALUES ('107', 'm1', 'collisions', 'imp=28.5;qu=0;qv=9.5;qm=3;pu=8.1;pv=5.25;pm=10', 'lol');
INSERT INTO `questions` VALUES ('108', 'm1', 'collisions', 'imp=11;qu=0;qv=5.5;qm=2;pu=3;pv=0.8;pm=5', 'lol');
INSERT INTO `questions` VALUES ('109', 'm1', 'collisions', 'imp=18.97;qu=0;qv=9.5;qm=2;pu=3;pv=0.29;pm=7', 'lol');
INSERT INTO `questions` VALUES ('110', 'm1', 'collisions', 'imp=25.2;qu=0;qv=8.4;qm=3;pu=7.8;pv=5.28;pm=10', 'lol');
INSERT INTO `questions` VALUES ('111', 'm1', 'collisions', 'imp=5.28;qu=0;qv=5.3;qm=1;pu=3.4;pv=2.74;pm=8', 'lol');
INSERT INTO `questions` VALUES ('112', 'm1', 'collisions', 'imp=60.3;qu=0;qv=6.7;qm=9;pu=6;pv=-0.03;pm=10', 'lol');
INSERT INTO `questions` VALUES ('113', 'm1', 'collisions', 'imp=46.8;qu=0;qv=5.2;qm=9;pu=6.6;pv=0.75;pm=8', 'lol');
INSERT INTO `questions` VALUES ('114', 'm1', 'collisions', 'imp=5.39;qu=0;qv=5.4;qm=1;pu=5.4;pv=4.63;pm=7', 'lol');
INSERT INTO `questions` VALUES ('115', 'm1', 'collisions', 'imp=75.6;qu=0;qv=8.4;qm=9;pu=2;pv=-7.45;pm=8', 'lol');
INSERT INTO `questions` VALUES ('116', 'm1', 'collisions', 'imp=55.17;qu=0;qv=9.2;qm=6;pu=9.9;pv=3.77;pm=9', 'lol');
INSERT INTO `questions` VALUES ('117', 'm1', 'collisions', 'imp=46.98;qu=0;qv=9.4;qm=5;pu=1.6;pv=-6.23;pm=6', 'lol');
INSERT INTO `questions` VALUES ('118', 'm1', 'collisions', 'imp=37.8;qu=0;qv=6.3;qm=6;pu=4;pv=-2.3;pm=6', 'lol');
INSERT INTO `questions` VALUES ('119', 'm1', 'collisions', 'imp=52.5;qu=0;qv=7.5;qm=7;pu=6.3;pv=-4.2;pm=5', 'lol');
INSERT INTO `questions` VALUES ('120', 'm1', 'collisions', 'imp=54.6;qu=0;qv=7.8;qm=7;pu=1;pv=-6.8;pm=7', 'lol');
INSERT INTO `questions` VALUES ('121', 'm1', 'collisions', 'imp=31.78;qu=0;qv=5.3;qm=6;pu=8.8;pv=4.26;pm=7', 'lol');
INSERT INTO `questions` VALUES ('122', 'm1', 'collisions', 'imp=37.8;qu=0;qv=6.3;qm=6;pu=9.9;pv=3.6;pm=6', 'lol');
INSERT INTO `questions` VALUES ('123', 'm1', 'dynamicsof', 'imp=8.1;qu=0;qv=8.1;qm=1;pu=5.3;pv=4.49;pm=10', 'lol');
INSERT INTO `questions` VALUES ('124', 'm1', 'dynamicsof', 'imp=28;qu=0;qv=5.6;qm=5;pu=1.5;pv=-2;pm=8', 'lol');
INSERT INTO `questions` VALUES ('125', 'm1', 'dynamicsof', 'm=6;f=9;ta=3;ba=4;angle=0.75;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('126', 'm1', 'dynamicsof', 'm=9;f=13;ta=1;ba=5;angle=0.2;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('127', 'm1', 'dynamicsof', 'm=3;f=9;ta=3;ba=4;angle=0.75;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('128', 'm1', 'dynamicsof', 'm=10;f=11;ta=2;ba=4;angle=0.5;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('129', 'm1', 'dynamicsof', 'm=4;f=11;ta=3;ba=5;angle=0.6;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('130', 'm1', 'dynamicsof', 'm=6;f=6;ta=2;ba=5;angle=0.4;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('131', 'm1', 'dynamicsof', 'm=9;f=2;ta=3;ba=4;angle=0.75;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('132', 'm1', 'dynamicsof', 'm=1;f=23;ta=3;ba=4;angle=0.75;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('133', 'm1', 'dynamicsof', 'm=9;f=4;ta=1;ba=5;angle=0.2;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('134', 'm1', 'dynamicsof', 'm=5;f=5;ta=2;ba=5;angle=0.4;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('135', 'm1', 'dynamicsof', 'm=3;f=23;ta=1;ba=4;angle=0.25;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('136', 'm1', 'dynamicsof', 'm=4;f=11;ta=2;ba=4;angle=0.5;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('137', 'm1', 'dynamicsof', 'm=6;f=15;ta=2;ba=5;angle=0.4;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('138', 'm1', 'dynamicsof', 'm=6;f=21;ta=3;ba=5;angle=0.6;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('139', 'm1', 'dynamicsof', 'm=2;f=12;ta=3;ba=5;angle=0.6;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('140', 'm1', 'dynamicsof', 'm=3;f=23;ta=2;ba=5;angle=0.4;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('141', 'm1', 'dynamicsof', 'm=3;f=30;ta=2;ba=5;angle=0.4;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('142', 'm1', 'dynamicsof', 'm=5;f=11;ta=1;ba=5;angle=0.2;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('143', 'm1', 'dynamicsof', 'm=8;f=16;ta=2;ba=4;angle=0.5;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('144', 'm1', 'dynamicsof', 'm=1;f=23;ta=1;ba=5;angle=0.2;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('145', 'm1', 'dynamicsof', 'm=1;f=23;ta=2;ba=5;angle=0.4;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('146', 'm1', 'dynamicsof', 'm=5;f=21;ta=3;ba=4;angle=0.75;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('147', 'm1', 'dynamicsof', 'm=6;f=9;ta=1;ba=5;angle=0.2;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('148', 'm1', 'dynamicsof', 'm=8;f=9;ta=3;ba=4;angle=0.75;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('149', 'm1', 'dynamicsof', 'm=10;f=14;ta=3;ba=5;angle=0.6;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('150', 'm1', 'dynamicsof', 'm=8;f=11;ta=1;ba=5;angle=0.2;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('151', 'm1', 'dynamicsof', 'm=9;f=15;ta=2;ba=5;angle=0.4;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('152', 'm1', 'dynamicsof', 'm=10;f=9;ta=3;ba=4;angle=0.75;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('153', 'm1', 'dynamicsof', 'm=6;f=13;ta=3;ba=4;angle=0.75;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('154', 'm1', 'dynamicsof', 'm=2;f=4;ta=1;ba=4;angle=0.25;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('155', 'm1', 'dynamicsof', 'm=7;f=13;ta=2;ba=5;angle=0.4;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('156', 'm1', 'dynamicsof', 'm=2;f=22;ta=2;ba=5;angle=0.4;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('157', 'm1', 'dynamicsof', 'm=4;f=17;ta=2;ba=4;angle=0.5;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('158', 'm1', 'dynamicsof', 'm=1;f=25;ta=3;ba=4;angle=0.75;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('159', 'm1', 'dynamicsof', 'm=9;f=2;ta=3;ba=4;angle=0.75;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('160', 'm1', 'dynamicsof', 'm=5;f=27;ta=2;ba=4;angle=0.5;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('161', 'm1', 'dynamicsof', 'm=4;f=10;ta=1;ba=5;angle=0.2;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('162', 'm1', 'dynamicsof', 'm=7;f=14;ta=3;ba=4;angle=0.75;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('163', 'm1', 'dynamicsof', 'm=7;f=28;ta=3;ba=5;angle=0.6;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('164', 'm1', 'dynamicsof', 'm=6;f=28;ta=2;ba=5;angle=0.4;rea=0;acc=0', 'lol');
INSERT INTO `questions` VALUES ('165', 'm1', 'dynamicsof', 'm=2;f=20;ta=3;ba=4;angle=0.75;rea=27.68;acc=0', 'lol');
INSERT INTO `questions` VALUES ('166', 'm1', 'dynamicsof', 'm=2;f=20;ta=3;ba=4;angle=0.75;rea=27.68;acc=0', 'lol');
INSERT INTO `questions` VALUES ('167', 'm1', 'dynamicsof', 'm=2;f=20;ta=3;ba=4;angle=0.75;rea=27.68;acc=0', 'lol');
INSERT INTO `questions` VALUES ('168', 'm1', 'dynamicsof', 'm=2;f=20;ta=3;ba=4;angle=0.75;rea=27.68;acc=0', 'lol');
INSERT INTO `questions` VALUES ('169', 'm1', 'dynamicsof', 'm=2;f=20;ta=3;ba=4;angle=0.75;rea=27.68;acc=0', 'lol');
INSERT INTO `questions` VALUES ('170', 'm1', 'dynamicsof', 'm=2;f=20;ta=3;ba=4;angle=0.75;rea=27.68;acc=0', 'lol');
INSERT INTO `questions` VALUES ('171', 'm1', 'dynamicsof', 'm=2;f=20;ta=3;ba=4;angle=0.75;rea=27.68;acc=2.12', 'lol');
INSERT INTO `questions` VALUES ('172', 'm1', 'dynamicsof', 'm=2;f=20;ta=3;ba=4;angle=0.75;rea=27.68;acc=2.12', 'lol');
INSERT INTO `questions` VALUES ('173', 'm1', 'dynamicsof', 'm=2;f=20;ta=3;ba=4;angle=0.75;rea=27.68;acc=2.12', 'lol');
INSERT INTO `questions` VALUES ('174', 'm1', 'dynamicsof', 'm=2;f=20;ta=3;ba=4;angle=0.75;rea=27.68;acc=2.12', 'lol');
INSERT INTO `questions` VALUES ('175', 'm1', 'dynamicsof', 'm=2;f=20;ta=3;ba=4;angle=0.75;rea=27.68;acc=2.12', 'lol');
INSERT INTO `questions` VALUES ('176', 'm1', 'dynamicsof', 'm=2;f=20;ta=3;ba=4;angle=0.75;rea=27.68;acc=2.12', 'lol');
INSERT INTO `questions` VALUES ('177', 'm1', 'dynamicsof', 'm=5;f=24;ta=1;ba=4;angle=0.25;rea=53.357837508;acc', 'lol');
INSERT INTO `questions` VALUES ('178', 'm1', 'dynamicsof', 'm=1;f=30;ta=2;ba=4;angle=0.5;rea=22.1817943368;acc', 'lol');
INSERT INTO `questions` VALUES ('179', 'm1', 'dynamicsof', 'm=6;f=5;ta=3;ba=5;angle=0.6;rea=52.993062809;acc=-', 'lol');
INSERT INTO `questions` VALUES ('180', 'm1', 'dynamicsof', 'm=2;f=9;ta=1;ba=5;angle=0.2;rea=20.9844264598;acc=', 'lol');
INSERT INTO `questions` VALUES ('181', 'm1', 'dynamicsof', 'm=2;f=23;ta=2;ba=5;angle=0.4;rea=26.7401286975;acc', 'lol');
INSERT INTO `questions` VALUES ('182', 'm1', 'dynamicsof', 'm=8;f=22;ta=3;ba=5;angle=0.6;rea=78.5463519953;acc', 'lol');
INSERT INTO `questions` VALUES ('183', 'm1', 'dynamicsof', 'm=10;f=15;ta=2;ba=5;angle=0.4;rea=96.5615758521;ac', 'lol');
INSERT INTO `questions` VALUES ('184', 'm1', 'dynamicsof', 'm=10;f=30;ta=2;ba=4;angle=0.5;rea=101.070272583;ac', 'lol');
INSERT INTO `questions` VALUES ('185', 'm1', 'dynamicsof', 'm=9;f=27;ta=1;ba=5;angle=0.2;rea=91.7823512447;acc', 'lol');
INSERT INTO `questions` VALUES ('186', 'm1', 'dynamicsof', 'm=9;f=14;ta=2;ba=4;angle=0.5;rea=85.1494685832;acc', 'lol');
INSERT INTO `questions` VALUES ('187', 'm1', 'dynamicsof', 'm=9;f=10;ta=2;ba=4;angle=0.5;rea=83.3606142012;acc', 'lol');
INSERT INTO `questions` VALUES ('188', 'm1', 'dynamicsof', 'm=9;f=10;ta=2;ba=4;angle=0.5;rea=83.3606142012;acc', 'lol');
INSERT INTO `questions` VALUES ('189', 'm1', 'dynamicsof', 'm=3.8;f=10;ta=2;ba=4;angle=0.5;rea=37.7806045478;a', 'lol');
INSERT INTO `questions` VALUES ('190', 'm1', 'dynamicsof', 'm=2.8;f=10;ta=1;ba=4;angle=0.25;rea=29.0460664544;', 'lol');
INSERT INTO `questions` VALUES ('191', 'm1', 'dynamicsof', 'm=4.8;f=20;ta=3;ba=4;angle=0.75;rea=49.632;acc=-2.', 'lol');
INSERT INTO `questions` VALUES ('192', 'm1', 'dynamicsof', 'm=2;f=20;ta=2;ba=4;angle=0.5;rea=26.4750448536;acc', 'lol');
INSERT INTO `questions` VALUES ('193', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=5;angle=0.2;rea=13.5320133245;acc', 'lol');
INSERT INTO `questions` VALUES ('194', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=4;angle=0.5;rea=17.7096583818;acc', 'lol');
INSERT INTO `questions` VALUES ('195', 'm1', 'dynamicsof', 'm=1.4;f=20;ta=3;ba=5;angle=0.6;rea=22.0547180493;a', 'lol');
INSERT INTO `questions` VALUES ('196', 'm1', 'dynamicsof', 'm=3.9;f=20;ta=2;ba=4;angle=0.5;rea=43.12927915;acc', 'lol');
INSERT INTO `questions` VALUES ('197', 'm1', 'dynamicsof', 'm=2.2;f=20;ta=2;ba=4;angle=0.5;rea=28.228122148;ac', 'lol');
INSERT INTO `questions` VALUES ('198', 'm1', 'dynamicsof', 'm=2.5;f=20;ta=2;ba=4;angle=0.5;rea=30.8577380895;a', 'lol');
INSERT INTO `questions` VALUES ('199', 'm1', 'dynamicsof', 'm=3.8;f=20;ta=1;ba=4;angle=0.25;rea=40.9788192061;', 'lol');
INSERT INTO `questions` VALUES ('200', 'm1', 'dynamicsof', 'm=2.7;f=20;ta=1;ba=5;angle=0.2;rea=29.8684873815;a', 'lol');
INSERT INTO `questions` VALUES ('201', 'm1', 'dynamicsof', 'm=1.6;f=20;ta=3;ba=4;angle=0.75;rea=24.544;acc=4.1', 'lol');
INSERT INTO `questions` VALUES ('202', 'm1', 'dynamicsof', 'm=3.7;f=20;ta=3;ba=4;angle=0.75;rea=41.008;acc=-1.', 'lol');
INSERT INTO `questions` VALUES ('203', 'm1', 'dynamicsof', 'm=2.6;f=20;ta=3;ba=4;angle=0.75;rea=32.384;acc=0.2', 'lol');
INSERT INTO `questions` VALUES ('204', 'm1', 'dynamicsof', 'm=1.8;f=20;ta=1;ba=4;angle=0.25;rea=21.9640262033;', 'lol');
INSERT INTO `questions` VALUES ('205', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=4;angle=0.25;rea=14.3581090022;ac', 'lol');
INSERT INTO `questions` VALUES ('206', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=5;angle=0.2;rea=13.5320133245;acc', 'lol');
INSERT INTO `questions` VALUES ('207', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=5;angle=0.2;rea=13.5320133245;acc', 'lol');
INSERT INTO `questions` VALUES ('208', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=4;angle=0.25;rea=14.3581090022;ac', 'lol');
INSERT INTO `questions` VALUES ('209', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=5;angle=0.2;rea=13.5320133245;acc', 'lol');
INSERT INTO `questions` VALUES ('210', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=4;angle=0.25;rea=14.3581090022;ac', 'lol');
INSERT INTO `questions` VALUES ('211', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=5;angle=0.6;rea=18.6933457805;acc', 'lol');
INSERT INTO `questions` VALUES ('212', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=4;angle=0.75;rea=19.84;acc=10.12', 'lol');
INSERT INTO `questions` VALUES ('213', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=5;angle=0.4;rea=16.5268850978;acc', 'lol');
INSERT INTO `questions` VALUES ('214', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=4;angle=0.25;rea=14.3581090022;ac', 'lol');
INSERT INTO `questions` VALUES ('215', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=4;angle=0.75;rea=19.84;acc=10.12', 'lol');
INSERT INTO `questions` VALUES ('216', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=5;angle=0.4;rea=16.5268850978;acc', 'lol');
INSERT INTO `questions` VALUES ('217', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=5;angle=0.2;rea=13.5320133245;acc', 'lol');
INSERT INTO `questions` VALUES ('218', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=4;angle=0.75;rea=19.84;acc=10.12', 'lol');
INSERT INTO `questions` VALUES ('219', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=4;angle=0.5;rea=17.7096583818;acc', 'lol');
INSERT INTO `questions` VALUES ('220', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=4;angle=0.5;rea=17.7096583818;acc', 'lol');
INSERT INTO `questions` VALUES ('221', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=4;angle=0.25;rea=14.3581090022;ac', 'lol');
INSERT INTO `questions` VALUES ('222', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=5;angle=0.2;rea=13.5320133245;acc', 'lol');
INSERT INTO `questions` VALUES ('223', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=5;angle=0.6;rea=18.6933457805;acc', 'lol');
INSERT INTO `questions` VALUES ('224', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=5;angle=0.6;rea=18.6933457805;acc', 'lol');
INSERT INTO `questions` VALUES ('225', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=5;angle=0.2;rea=13.5320133245;acc', 'lol');
INSERT INTO `questions` VALUES ('226', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=4;angle=0.75;rea=19.84;acc=10.12', 'lol');
INSERT INTO `questions` VALUES ('227', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=4;angle=0.5;rea=17.7096583818;acc', 'lol');
INSERT INTO `questions` VALUES ('228', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=5;angle=0.6;rea=18.6933457805;acc', 'lol');
INSERT INTO `questions` VALUES ('229', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=5;angle=0.2;rea=13.5320133245;acc', 'lol');
INSERT INTO `questions` VALUES ('230', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=5;angle=0.4;rea=16.5268850978;acc', 'lol');
INSERT INTO `questions` VALUES ('231', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=5;angle=0.4;rea=16.5268850978;acc', 'lol');
INSERT INTO `questions` VALUES ('232', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=5;angle=0.4;rea=16.5268850978;acc', 'lol');
INSERT INTO `questions` VALUES ('233', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=5;angle=0.4;rea=16.5268850978;acc', 'lol');
INSERT INTO `questions` VALUES ('234', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=5;angle=0.6;rea=18.6933457805;acc', 'lol');
INSERT INTO `questions` VALUES ('235', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=5;angle=0.6;rea=18.6933457805;acc', 'lol');
INSERT INTO `questions` VALUES ('236', 'm1', 'dynamicsof', 'm=1;f=20;ta=1;ba=5;angle=0.2;rea=13.5320133245;acc', 'lol');
INSERT INTO `questions` VALUES ('237', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=5;angle=0.6;rea=18.6933457805;acc', 'lol');
INSERT INTO `questions` VALUES ('238', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=5;angle=0.4;rea=16.5268850978;acc', 'lol');
INSERT INTO `questions` VALUES ('239', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=4;angle=0.5;rea=17.7096583818;acc', 'lol');
INSERT INTO `questions` VALUES ('240', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=5;angle=0.6;rea=18.6933457805;acc', 'lol');
INSERT INTO `questions` VALUES ('241', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=5;angle=0.6;rea=18.6933457805;acc', 'lol');
INSERT INTO `questions` VALUES ('242', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=4;angle=0.5;rea=17.7096583818;acc', 'lol');
INSERT INTO `questions` VALUES ('243', 'm1', 'dynamicsof', 'm=1;f=20;ta=3;ba=4;angle=0.75;rea=19.84;acc=10.12', 'lol');
INSERT INTO `questions` VALUES ('244', 'm1', 'dynamicsof', 'm=1;f=20;ta=2;ba=5;angle=0.4;rea=16.5268850978;acc', 'lol');
INSERT INTO `questions` VALUES ('245', 'm1', 'dynamicsof', 'm=1;f=28;ta=1;ba=5;angle=0.2;rea=15.1009424056;acc', 'lol');
INSERT INTO `questions` VALUES ('246', 'm1', 'dynamicsof', 'm=3.7;f=28;ta=2;ba=4;angle=0.5;rea=44.9539106197;a', 'lol');
INSERT INTO `questions` VALUES ('247', 'm1', 'dynamicsof', 'm=1.5;f=25;ta=3;ba=4;angle=0.75;rea=26.76;acc=7.45', 'lol');
INSERT INTO `questions` VALUES ('248', 'm1', 'dynamicsof', 'm=3.5;f=26;ta=1;ba=4;angle=0.25;rea=39.5818140059;', 'lol');
INSERT INTO `questions` VALUES ('249', 'm1', 'dynamicsof', 'm=2.9;f=24;ta=1;ba=4;angle=0.25;rea=33.392304855;a', 'lol');
INSERT INTO `questions` VALUES ('250', 'm1', 'dynamicsof', 'm=1.2;f=26;ta=2;ba=5;angle=0.4;rea=20.57504347;acc', 'lol');
INSERT INTO `questions` VALUES ('251', 'm1', 'dynamicsof', 'm=2.7;f=34;ta=2;ba=4;angle=0.5;rea=38.8718057209;a', 'lol');
INSERT INTO `questions` VALUES ('252', 'm1', 'dynamicsof', 'm=1.4;f=26;ta=1;ba=4;angle=0.25;rea=19.6162813529;', 'lol');
INSERT INTO `questions` VALUES ('253', 'm1', 'dynamicsof', 'm=3.1;f=38;ta=3;ba=4;angle=0.75;rea=47.104;acc=3.9', 'lol');
INSERT INTO `questions` VALUES ('254', 'm1', 'dynamicsof', 'm=2.7;f=30;ta=3;ba=4;angle=0.75;rea=39.168;acc=3.0', 'lol');
INSERT INTO `questions` VALUES ('255', 'm1', 'dynamicsof', 'm=2.9;f=27;ta=2;ba=5;angle=0.4;rea=36.41;acc=5', 'lol');
INSERT INTO `questions` VALUES ('256', 'm1', 'dynamicsof', 'm=1.1;f=38;ta=1;ba=5;angle=0.2;rea=18.02;acc=31.95', 'lol');
INSERT INTO `questions` VALUES ('257', 'm1', 'dynamicsof', 'm=1.2;f=30;ta=3;ba=5;angle=0.6;rea=25.52;acc=16.4', 'lol');
INSERT INTO `questions` VALUES ('258', 'm1', 'dynamicsof', 'm=3.7;f=21;ta=1;ba=5;angle=0.2;rea=39.67;acc=3.64', 'lol');
INSERT INTO `questions` VALUES ('259', 'm1', 'collisions', 'imp=30.96;qu=0;qv=6.2;qm=5;pu=3.1;pv=-0.34;pm=9', 'lol');
INSERT INTO `questions` VALUES ('260', 'm1', 'collisions', 'imp=43.36;qu=0;qv=6.2;qm=7;pu=9.3;pv=3.88;pm=8', 'lol');
INSERT INTO `questions` VALUES ('261', 'm1', 'dynamicsof', 'm=1.2;f=21;ta=2;ba=5;angle=0.4;rea=18.72;acc=12.61', 'lol');
INSERT INTO `questions` VALUES ('262', 'm1', 'dynamicsof', 'm=2.5;f=32;ta=3;ba=4;angle=0.75;rea=38.8;acc=4.36', 'lol');
INSERT INTO `questions` VALUES ('263', 'm1', 'dynamicsof', 'm=2.9;f=22;ta=2;ba=4;angle=0.5;rea=35.26;acc=2.4', 'lol');
INSERT INTO `questions` VALUES ('264', 'm1', 'dynamicsof', 'm=2.4;f=27;ta=2;ba=5;angle=0.4;rea=31.87;acc=6.81', 'lol');
INSERT INTO `questions` VALUES ('265', 'm1', 'dynamicsof', 'm=2.2;f=27;ta=2;ba=4;angle=0.5;rea=31.36;acc=6.59', 'lol');
INSERT INTO `questions` VALUES ('266', 'm1', 'dynamicsof', 'm=3.5;f=38;ta=3;ba=4;angle=0.75;rea=50.24;acc=2.81', 'lol');
INSERT INTO `questions` VALUES ('267', 'm1', 'dynamicsof', 'm=2.7;f=28;ta=1;ba=4;angle=0.25;rea=32.46;acc=7.68', 'lol');
INSERT INTO `questions` VALUES ('268', 'm1', 'dynamicsof', 'm=2.1;f=28;ta=2;ba=5;angle=0.4;rea=29.51;acc=8.74', 'lol');
INSERT INTO `questions` VALUES ('269', 'm1', 'dynamicsof', 'm=2;f=21;ta=3;ba=5;angle=0.6;rea=27.61;acc=3.96', 'lol');
INSERT INTO `questions` VALUES ('270', 'm1', 'dynamicsof', 'm=1.9;f=21;ta=1;ba=5;angle=0.2;rea=22.38;acc=8.92', 'lol');
INSERT INTO `questions` VALUES ('271', 'm1', 'dynamicsof', 'm=1.8;f=22;ta=3;ba=4;angle=0.75;rea=27.31;acc=3.9', 'lol');
INSERT INTO `questions` VALUES ('272', 'm1', 'dynamicsof', 'm=2.9;f=27;ta=3;ba=4;angle=0.75;rea=38.94;acc=1.57', 'lol');
INSERT INTO `questions` VALUES ('273', 'm1', 'dynamicsof', 'm=2.7;f=34;ta=1;ba=4;angle=0.25;rea=33.92;acc=9.84', 'lol');
INSERT INTO `questions` VALUES ('274', 'm1', 'dynamicsof', 'm=1.9;f=35;ta=1;ba=5;angle=0.2;rea=25.12;acc=16.14', 'lol');
INSERT INTO `questions` VALUES ('275', 'm1', 'collisions', 'imp=70;qu=0;qv=7;qm=10;pu=5.3;pv=-4.7;pm=7', 'lol');
INSERT INTO `questions` VALUES ('276', 'm1', 'collisions', 'imp=18.2;qu=0;qv=9.1;qm=2;pu=4.7;pv=2.88;pm=10', 'lol');
INSERT INTO `questions` VALUES ('277', 'm1', 'dynamicsof', 'm=1.7;f=30;ta=2;ba=5;angle=0.4;rea=26.61;acc=12.75', 'lol');
INSERT INTO `questions` VALUES ('278', 'm1', 'dynamicsof', 'm=1.6;f=34;ta=3;ba=4;angle=0.75;rea=32.94;acc=11.1', 'lol');
INSERT INTO `questions` VALUES ('279', 'm1', 'collisions', 'imp=22.8;qu=0;qv=5.7;qm=4;pu=2.3;pv=0.02;pm=10', 'lol');
INSERT INTO `questions` VALUES ('280', 'm1', 'collisions', 'imp=7.8;qu=0;qv=7.8;qm=1;pu=3.1;pv=2.32;pm=10', 'lol');
INSERT INTO `questions` VALUES ('281', 'm1', 'collisions', 'imp=41.6;qu=0;qv=5.2;qm=8;pu=2.7;pv=-5.62;pm=5', 'lol');
INSERT INTO `questions` VALUES ('282', 'm1', 'collisions', 'imp=19.18;qu=0;qv=6.4;qm=3;pu=2.9;pv=0.16;pm=7', 'lol');
INSERT INTO `questions` VALUES ('283', 'm1', 'collisions', 'imp=38.5;qu=0;qv=5.5;qm=7;pu=5.3;pv=-0.2;pm=7', 'lol');
INSERT INTO `questions` VALUES ('284', 'm1', 'collisions', 'imp=55.2;qu=0;qv=6.9;qm=8;pu=4.1;pv=-6.94;pm=5', 'lol');
INSERT INTO `questions` VALUES ('285', 'm1', 'kinematics', '', 'lol');
INSERT INTO `questions` VALUES ('286', 'm1', 'kinematics', '', 'lol');
INSERT INTO `questions` VALUES ('287', 'm1', 'kinematics', '', 'lol');
INSERT INTO `questions` VALUES ('288', 'm1', 'kinematics', '', 'lol');
INSERT INTO `questions` VALUES ('289', 'm1', 'kinematics', '', 'lol');
INSERT INTO `questions` VALUES ('290', 'm1', 'kinematics', '', 'lol');
INSERT INTO `questions` VALUES ('291', 'm1', 'kinematics', 'vo=10;t=21;vp=40;t2=27;vq=48.5714285714;s=265.7142', 'lol');
INSERT INTO `questions` VALUES ('292', 'm1', 'kinematics', 'vo=27;t=27;vp=53;t2=30;vq=55.8888888889;s=163.3333', 'lol');
INSERT INTO `questions` VALUES ('293', 'm1', 'kinematics', 'vo=18;t=15;vp=43;t2=21;vq=53;s=288', 'lol');
INSERT INTO `questions` VALUES ('294', 'm1', 'kinematics', 'vo=27;t=14;vp=34;t2=21;vq=37.5;s=250.25', 'lol');
INSERT INTO `questions` VALUES ('295', 'm1', 'kinematics', 'vo=27;t=23;vp=56;t2=32;vq=67.35;s=555.08', 'lol');
INSERT INTO `questions` VALUES ('296', 'm1', 'kinematics', 'vo=13;t=18;vp=36;t2=20;vq=38.56;s=74.56', 'lol');
INSERT INTO `questions` VALUES ('297', 'm1', 'kinematics', 'vo=18;t=25;vp=25;t2=27;vq=25.56;s=50.56', 'lol');
INSERT INTO `questions` VALUES ('298', 'm1', 'kinematics', 'vo=19;t=26;vp=44;t2=28;vq=45.92;s=89.92', 'lol');
INSERT INTO `questions` VALUES ('299', 'm1', 'kinematics', 'vo=18;t=14;vp=31;t2=18;vq=34.71;s=131.42', 'lol');
INSERT INTO `questions` VALUES ('300', 'm1', 'kinematics', 'vo=22;t=28;vp=37;t2=30;vq=38.07;s=75.07', 'lol');
INSERT INTO `questions` VALUES ('301', 'm1', 'collisions', 'imp=76;qu=0;qv=7.6;qm=10;pu=1.6;pv=-13.6;pm=5', 'lol');
INSERT INTO `questions` VALUES ('302', 'm1', 'collisions', 'imp=42.6;qu=0;qv=7.1;qm=6;pu=9.1;pv=0.58;pm=5', 'lol');
INSERT INTO `questions` VALUES ('303', 'm1', 'collisions', 'imp=82.8;qu=0;qv=9.2;qm=9;pu=3.4;pv=-5.8;pm=9', 'lol');
INSERT INTO `questions` VALUES ('304', 'm1', 'collisions', 'imp=37.08;qu=0;qv=5.3;qm=7;pu=1.2;pv=-4.98;pm=6', 'lol');
INSERT INTO `questions` VALUES ('305', 'm1', 'collisions', 'imp=82.02;qu=0;qv=8.2;qm=10;pu=1.3;pv=-12.37;pm=6', 'lol');
INSERT INTO `questions` VALUES ('306', 'm1', 'collisions', 'imp=34.38;qu=0;qv=8.6;qm=4;pu=4.6;pv=-1.13;pm=6', 'lol');
INSERT INTO `questions` VALUES ('307', 'm1', 'collisions', 'imp=23.7;qu=0;qv=7.9;qm=3;pu=4.8;pv=0.06;pm=5', 'lol');
INSERT INTO `questions` VALUES ('308', 'm1', 'collisions', 'imp=76.8;qu=0;qv=9.6;qm=8;pu=3.1;pv=-12.26;pm=5', 'lol');
INSERT INTO `questions` VALUES ('309', 'm1', 'dynamicsof', 'm=1.4;f=20;ta=1;ba=4;angle=0.25;rea=18.16;acc=11.4', 'lol');
INSERT INTO `questions` VALUES ('310', 'm1', 'dynamicsof', 'm=3.4;f=28;ta=1;ba=5;angle=0.2;rea=38.16;acc=6.15', 'lol');
INSERT INTO `questions` VALUES ('311', 'm1', 'collisions', 'imp=62.28;qu=0;qv=8.9;qm=7;pu=8.9;pv=-1.48;pm=6', 'lol');
INSERT INTO `questions` VALUES ('312', 'm1', 'dynamicsof', 'm=2.7;f=36;ta=3;ba=5;angle=0.6;rea=41.21;acc=6.39', 'lol');
INSERT INTO `questions` VALUES ('313', 'm1', 'kinematics', 'vo=18;t=29;vp=25;t2=35;vq=26.45;s=154.35', 'lol');
INSERT INTO `questions` VALUES ('314', 'm1', 'kinematics', 'vo=22;t=28;vp=44;t2=37;vq=51.07;s=427.82', 'lol');
INSERT INTO `questions` VALUES ('315', 'm1', 'collisions', 'imp=60.8;qu=0;qv=7.6;qm=8;pu=9.1;pv=-3.06;pm=5', 'lol');
INSERT INTO `questions` VALUES ('316', 'm1', 'dynamicsof', 'm=3.8;f=38;ta=3;ba=5;angle=0.6;rea=51.48;acc=3.53', 'lol');
INSERT INTO `questions` VALUES ('317', 'm1', 'dynamicsof', 'm=3.2;f=32;ta=1;ba=4;angle=0.25;rea=38.18;acc=7.32', 'lol');
INSERT INTO `questions` VALUES ('318', 'm1', 'kinematics', 'vo=19;t=23;vp=30;t2=33;vq=34.78;s=323.9', 'lol');
INSERT INTO `questions` VALUES ('319', 'm1', 'collisions', 'imp=38;qu=0;qv=9.5;qm=4;pu=1.3;pv=-3.45;pm=8', 'lol');
INSERT INTO `questions` VALUES ('320', 'm1', 'collisions', 'imp=20.4;qu=0;qv=6.8;qm=3;pu=5.7;pv=3.15;pm=8', 'lol');
INSERT INTO `questions` VALUES ('321', 'm1', 'collisions', 'imp=44.4;qu=0;qv=7.4;qm=6;pu=6.8;pv=-0.6;pm=6', 'lol');
INSERT INTO `questions` VALUES ('322', 'm1', 'collisions', 'imp=38.43;qu=0;qv=6.4;qm=6;pu=9.4;pv=5.13;pm=9', 'lol');
INSERT INTO `questions` VALUES ('323', 'm1', 'collisions', 'imp=97.02;qu=0;qv=9.7;qm=10;pu=1.1;pv=-9.68;pm=9', 'lol');
INSERT INTO `questions` VALUES ('324', 'm1', 'collisions', 'imp=69.6;qu=0;qv=8.7;qm=8;pu=8.1;pv=-5.82;pm=5', 'lol');
INSERT INTO `questions` VALUES ('325', 'm1', 'collisions', 'imp=38;qu=0;qv=9.5;qm=4;pu=3.8;pv=-3.8;pm=5', 'lol');
INSERT INTO `questions` VALUES ('326', 'm1', 'collisions', 'imp=6.93;qu=0;qv=6.9;qm=1;pu=4.2;pv=3.43;pm=9', 'lol');
INSERT INTO `questions` VALUES ('327', 'm1', 'collisions', 'imp=8.1;qu=0;qv=8.1;qm=1;pu=8.2;pv=6.58;pm=5', 'lol');
INSERT INTO `questions` VALUES ('328', 'm1', 'collisions', 'imp=20.09;qu=0;qv=6.7;qm=3;pu=6.2;pv=3.33;pm=7', 'lol');
INSERT INTO `questions` VALUES ('329', 'm1', 'collisions', 'imp=11.97;qu=0;qv=6;qm=2;pu=6.3;pv=4.59;pm=7', 'lol');
INSERT INTO `questions` VALUES ('330', 'm1', 'collisions', 'imp=70.16;qu=0;qv=7.8;qm=9;pu=9.9;pv=1.13;pm=8', 'lol');
INSERT INTO `questions` VALUES ('331', 'm1', 'collisions', 'imp=68.64;qu=0;qv=9.8;qm=7;pu=5.9;pv=-2.68;pm=8', 'lol');
INSERT INTO `questions` VALUES ('332', 'm1', 'collisions', 'imp=40.02;qu=0;qv=10;qm=4;pu=5;pv=-1.67;pm=6', 'lol');
INSERT INTO `questions` VALUES ('333', 'm1', 'collisions', 'imp=40.98;qu=0;qv=8.2;qm=5;pu=1;pv=-5.83;pm=6', 'lol');
INSERT INTO `questions` VALUES ('334', 'm1', 'collisions', 'imp=10.38;qu=0;qv=5.2;qm=2;pu=9.8;pv=8.07;pm=6', 'lol');
INSERT INTO `questions` VALUES ('335', 'm1', 'collisions', 'imp=28.2;qu=0;qv=9.4;qm=3;pu=7;pv=4.18;pm=10', 'lol');
INSERT INTO `questions` VALUES ('336', 'm1', 'collisions', 'imp=57;qu=0;qv=9.5;qm=6;pu=6.6;pv=-2.9;pm=6', 'lol');
INSERT INTO `questions` VALUES ('337', 'm1', 'collisions', 'imp=67.97;qu=0;qv=6.8;qm=10;pu=3.9;pv=-5.81;pm=7', 'lol');
INSERT INTO `questions` VALUES ('338', 'm1', 'collisions', 'imp=8.08;qu=0;qv=8.1;qm=1;pu=2.7;pv=1.69;pm=8', 'lol');
INSERT INTO `questions` VALUES ('339', 'm1', 'collisions', 'imp=25.62;qu=0;qv=6.4;qm=4;pu=7.8;pv=4.14;pm=7', 'lol');
INSERT INTO `questions` VALUES ('340', 'm1', 'collisions', 'imp=17.8;qu=0;qv=8.9;qm=2;pu=2;pv=0.22;pm=10', 'lol');
INSERT INTO `questions` VALUES ('341', 'm1', 'collisions', 'imp=53.9;qu=0;qv=7.7;qm=7;pu=5.5;pv=0.11;pm=10', 'lol');
INSERT INTO `questions` VALUES ('342', 'm1', 'collisions', 'imp=51.12;qu=0;qv=7.3;qm=7;pu=3;pv=-3.39;pm=8', 'lol');
INSERT INTO `questions` VALUES ('343', 'm1', 'collisions', 'imp=5.28;qu=0;qv=5.3;qm=1;pu=6.9;pv=6.24;pm=8', 'lol');
INSERT INTO `questions` VALUES ('344', 'm1', 'collisions', 'imp=36.78;qu=0;qv=9.2;qm=4;pu=6.5;pv=0.37;pm=6', 'lol');
INSERT INTO `questions` VALUES ('345', 'm1', 'collisions', 'imp=12.6;qu=0;qv=6.3;qm=2;pu=7.6;pv=5.08;pm=5', 'lol');
INSERT INTO `questions` VALUES ('346', 'm1', 'collisions', 'imp=49.63;qu=0;qv=6.2;qm=8;pu=4.4;pv=-2.69;pm=7', 'lol');
INSERT INTO `questions` VALUES ('347', 'm1', 'collisions', 'imp=38.52;qu=0;qv=5.5;qm=7;pu=4.7;pv=-1.72;pm=6', 'lol');
INSERT INTO `questions` VALUES ('348', 'm1', 'dynamicsof', 'm=1.4;f=37;ta=2;ba=4;angle=0.5;rea=28.82;acc=19.26', 'lol');
INSERT INTO `questions` VALUES ('349', 'm1', 'kinematics', 'vo=29;t=27;vp=39;t2=32;vq=40.85;s=199.63', 'lol');
INSERT INTO `questions` VALUES ('350', 'm1', 'dynamicsof', 'm=2;f=31;ta=3;ba=4;angle=0.75;rea=34.28;acc=6.52', 'lol');
INSERT INTO `questions` VALUES ('351', 'm1', 'dynamicsof', 'm=3.7;f=26;ta=1;ba=5;angle=0.2;rea=40.65;acc=4.97', 'lol');
INSERT INTO `questions` VALUES ('352', 'm1', 'kinematics', 'vo=28;t=30;vp=53;t2=34;vq=56.33;s=218.66', 'lol');
INSERT INTO `questions` VALUES ('353', 'm1', 'collisions', 'imp=60.84;qu=0;qv=7.6;qm=8;pu=7.4;pv=0.64;pm=9', 'lol');
INSERT INTO `questions` VALUES ('354', 'm1', 'collisions', 'imp=10;qu=0;qv=5;qm=2;pu=1.5;pv=0.25;pm=8', 'lol');
INSERT INTO `questions` VALUES ('355', 'm1', 'collisions', 'imp=38;qu=0;qv=7.6;qm=5;pu=6.9;pv=-0.7;pm=5', 'lol');

-- ----------------------------
-- Table structure for `tips`
-- ----------------------------
DROP TABLE IF EXISTS `tips`;
CREATE TABLE `tips` (
  `tip` varchar(100) NOT NULL,
  PRIMARY KEY (`tip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tips
-- ----------------------------
INSERT INTO `tips` VALUES (' Life is complex: it has both real and imaginary components. ');
INSERT INTO `tips` VALUES ('Algebraic symbols are used when you do not know what you are talking about.  ');
INSERT INTO `tips` VALUES ('Cakes are round, but pi r squared.');
INSERT INTO `tips` VALUES ('Do you already know the latest stats joke? Probably... ');
INSERT INTO `tips` VALUES ('How do you make one burn? Differentiate a log fire! ');
INSERT INTO `tips` VALUES ('Listen to decimals, they have a point.');
INSERT INTO `tips` VALUES ('Math is the language God used to write the universe.  ');
INSERT INTO `tips` VALUES ('Mathematicians never die - they only lose some of their functions. ');
INSERT INTO `tips` VALUES ('There are 10 types of people in the world: Those who understand binary, and those who don\'t.');
INSERT INTO `tips` VALUES ('Trigonometry for farmers: swine and coswine... ');
INSERT INTO `tips` VALUES ('What do mermaids wear? An algae-bra!');
INSERT INTO `tips` VALUES ('What does the zero say to the eight? Nice belt!');
INSERT INTO `tips` VALUES ('What is the first derivative of a cow? Prime Rib! ');
INSERT INTO `tips` VALUES ('Why are powers like fish? Because they\'re all indices (in the seas).');
INSERT INTO `tips` VALUES ('Why did the mathematical tree fall over? Because it had no real roots.');
INSERT INTO `tips` VALUES ('Why did the Maths textbook look so sad? Because it had so many problems!');
INSERT INTO `tips` VALUES ('Why do mathematicians always confuse Halloween and Christmas? Because 31 Oct = 25 Dec.');
INSERT INTO `tips` VALUES ('Why don\'t they serve beer at the math party? So you can\'t drink and derive.');
INSERT INTO `tips` VALUES ('Why was six afraid of seven? Because 7 8 9 (seven ate nine).');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `joindate` int(10) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `institution` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
