/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : finereport_db

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-01-18 10:40:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wq_emp
-- ----------------------------
DROP TABLE IF EXISTS `wq_emp`;
CREATE TABLE "wq_emp" (
  "id" int(11) NOT NULL,
  "name" varchar(255) COLLATE utf8_bin DEFAULT NULL,
  "age" int(11) DEFAULT NULL,
  "address" varchar(255) COLLATE utf8_bin DEFAULT NULL,
  "phone" varchar(255) COLLATE utf8_bin DEFAULT NULL,
  "email" varchar(255) COLLATE utf8_bin DEFAULT NULL,
  "dept" varchar(255) COLLATE utf8_bin DEFAULT NULL,
  "company" varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wq_emp
-- ----------------------------
INSERT INTO `wq_emp` VALUES ('1', '吴1庆庆', '24', '江苏', '110', 'wq@qq.com', '软件部', '复旦光华');
INSERT INTO `wq_emp` VALUES ('2', '张荣同学', '24', '陕西', '111', 'zr@qq.com', '软件部', '复旦光华');
INSERT INTO `wq_emp` VALUES ('3', '王耀峰', '25', '湖南', '110', 'wyf@qq.com', '软件部', '复旦光华');
INSERT INTO `wq_emp` VALUES ('4', 'imydsafks', '222', 'df', 'sdf', 'sfd', 'dsf', 'sdf');

-- ----------------------------
-- Table structure for wq_items
-- ----------------------------
DROP TABLE IF EXISTS `wq_items`;
CREATE TABLE "wq_items" (
  "item_id" int(11) NOT NULL,
  "item_name" varchar(255) COLLATE utf8_bin DEFAULT NULL,
  "price" decimal(10,0) DEFAULT NULL,
  "num" int(11) DEFAULT NULL,
  "emp_id" int(11) DEFAULT NULL,
  PRIMARY KEY ("item_id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wq_items
-- ----------------------------
INSERT INTO `wq_items` VALUES ('1', '面包', '2', '2', '1');
INSERT INTO `wq_items` VALUES ('2', '牛奶', '3', '2', '2');
INSERT INTO `wq_items` VALUES ('3', '糖果', '11', '3', '3');
INSERT INTO `wq_items` VALUES ('4', '面条', '2', '3', '3');

-- ----------------------------
-- Table structure for wq_kind
-- ----------------------------
DROP TABLE IF EXISTS `wq_kind`;
CREATE TABLE "wq_kind" (
  "kind_id" int(11) NOT NULL,
  "kind_name" varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY ("kind_id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wq_kind
-- ----------------------------
INSERT INTO `wq_kind` VALUES ('1', '作业计划');
INSERT INTO `wq_kind` VALUES ('2', '故障处理');
INSERT INTO `wq_kind` VALUES ('3', '工程配合');

-- ----------------------------
-- Table structure for wq_org
-- ----------------------------
DROP TABLE IF EXISTS `wq_org`;
CREATE TABLE "wq_org" (
  "org_id" int(11) NOT NULL,
  "org_name" varchar(255) COLLATE utf8_bin DEFAULT NULL,
  "region_id" int(11) DEFAULT NULL,
  PRIMARY KEY ("org_id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wq_org
-- ----------------------------
INSERT INTO `wq_org` VALUES ('1', '北外滩', '1');
INSERT INTO `wq_org` VALUES ('2', '五角场', '1');
INSERT INTO `wq_org` VALUES ('3', '汾阳', '2');
INSERT INTO `wq_org` VALUES ('4', '徐家汇', '2');
INSERT INTO `wq_org` VALUES ('5', '黄浦', '3');
INSERT INTO `wq_org` VALUES ('6', '卢湾', '3');

-- ----------------------------
-- Table structure for wq_region
-- ----------------------------
DROP TABLE IF EXISTS `wq_region`;
CREATE TABLE "wq_region" (
  "region_id" int(11) NOT NULL,
  "region_name" varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY ("region_id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wq_region
-- ----------------------------
INSERT INTO `wq_region` VALUES ('1', '东区');
INSERT INTO `wq_region` VALUES ('2', '南区');
INSERT INTO `wq_region` VALUES ('3', '中区');

-- ----------------------------
-- Table structure for wq_static_bill
-- ----------------------------
DROP TABLE IF EXISTS `wq_static_bill`;
CREATE TABLE "wq_static_bill" (
  "report_id" int(11) NOT NULL,
  "region_id" int(11) DEFAULT NULL,
  "org_id" int(11) DEFAULT NULL,
  "kind_id" int(11) DEFAULT NULL,
  "static_month" varchar(255) COLLATE utf8_bin DEFAULT NULL,
  "bill_num" int(11) DEFAULT NULL,
  PRIMARY KEY ("report_id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wq_static_bill
-- ----------------------------
INSERT INTO `wq_static_bill` VALUES ('1', '1', '1', '1', '201810', '57');
INSERT INTO `wq_static_bill` VALUES ('2', '1', '1', '1', '201811', '64');
INSERT INTO `wq_static_bill` VALUES ('3', '1', '1', '1', '201812', '55');
INSERT INTO `wq_static_bill` VALUES ('4', '1', '1', '2', '201810', '45');
INSERT INTO `wq_static_bill` VALUES ('5', '1', '1', '2', '201811', '49');
INSERT INTO `wq_static_bill` VALUES ('6', '1', '1', '2', '201812', '52');
INSERT INTO `wq_static_bill` VALUES ('7', '1', '1', '3', '201810', '57');
INSERT INTO `wq_static_bill` VALUES ('8', '1', '1', '3', '201811', '54');
INSERT INTO `wq_static_bill` VALUES ('9', '1', '1', '3', '201812', '66');
INSERT INTO `wq_static_bill` VALUES ('10', '1', '2', '1', '201810', '52');
INSERT INTO `wq_static_bill` VALUES ('11', '1', '2', '1', '201811', '42');
INSERT INTO `wq_static_bill` VALUES ('12', '1', '2', '1', '201812', '78');
INSERT INTO `wq_static_bill` VALUES ('13', '1', '2', '2', '201810', '53');
INSERT INTO `wq_static_bill` VALUES ('14', '1', '2', '2', '201811', '57');
INSERT INTO `wq_static_bill` VALUES ('15', '1', '2', '2', '201812', '62');
INSERT INTO `wq_static_bill` VALUES ('16', '1', '2', '3', '201810', '81');
INSERT INTO `wq_static_bill` VALUES ('17', '1', '2', '3', '201811', '95');
INSERT INTO `wq_static_bill` VALUES ('18', '1', '2', '3', '201812', '26');
INSERT INTO `wq_static_bill` VALUES ('19', '2', '3', '1', '201810', '57');
INSERT INTO `wq_static_bill` VALUES ('20', '2', '3', '1', '201811', '64');
INSERT INTO `wq_static_bill` VALUES ('21', '2', '3', '1', '201812', '55');
INSERT INTO `wq_static_bill` VALUES ('22', '2', '3', '2', '201810', '45');
INSERT INTO `wq_static_bill` VALUES ('23', '2', '3', '2', '201811', '49');
INSERT INTO `wq_static_bill` VALUES ('24', '2', '3', '2', '201812', '52');
INSERT INTO `wq_static_bill` VALUES ('25', '2', '3', '3', '201810', '57');
INSERT INTO `wq_static_bill` VALUES ('26', '2', '3', '3', '201811', '1');
INSERT INTO `wq_static_bill` VALUES ('27', '2', '3', '3', '201812', '66');
INSERT INTO `wq_static_bill` VALUES ('28', '2', '4', '1', '201810', '52');
INSERT INTO `wq_static_bill` VALUES ('29', '2', '4', '1', '201811', '9');
INSERT INTO `wq_static_bill` VALUES ('30', '2', '4', '1', '201812', '78');
INSERT INTO `wq_static_bill` VALUES ('31', '2', '4', '2', '201810', '53');
INSERT INTO `wq_static_bill` VALUES ('32', '2', '4', '2', '201811', '57');
INSERT INTO `wq_static_bill` VALUES ('33', '2', '4', '2', '201812', '62');
INSERT INTO `wq_static_bill` VALUES ('34', '2', '4', '3', '201810', '81');
INSERT INTO `wq_static_bill` VALUES ('35', '2', '4', '3', '201811', '95');
INSERT INTO `wq_static_bill` VALUES ('36', '2', '4', '3', '201812', '291');
INSERT INTO `wq_static_bill` VALUES ('37', '3', '5', '1', '201810', '57');
INSERT INTO `wq_static_bill` VALUES ('38', '3', '5', '1', '201811', '64');
INSERT INTO `wq_static_bill` VALUES ('39', '3', '5', '1', '201812', '55');
INSERT INTO `wq_static_bill` VALUES ('40', '3', '5', '2', '201810', '45');
INSERT INTO `wq_static_bill` VALUES ('41', '3', '5', '2', '201811', '49');
INSERT INTO `wq_static_bill` VALUES ('42', '3', '5', '2', '201812', '52');
INSERT INTO `wq_static_bill` VALUES ('43', '3', '5', '3', '201810', '57');
INSERT INTO `wq_static_bill` VALUES ('44', '3', '5', '3', '201811', '11');
INSERT INTO `wq_static_bill` VALUES ('45', '3', '5', '3', '201812', '66');
INSERT INTO `wq_static_bill` VALUES ('46', '3', '6', '1', '201810', '52');
INSERT INTO `wq_static_bill` VALUES ('47', '3', '6', '1', '201811', '42');
INSERT INTO `wq_static_bill` VALUES ('48', '3', '6', '1', '201812', '78');
INSERT INTO `wq_static_bill` VALUES ('49', '3', '6', '2', '201810', '53');
INSERT INTO `wq_static_bill` VALUES ('50', '3', '6', '2', '201811', '57');
INSERT INTO `wq_static_bill` VALUES ('51', '3', '6', '2', '201812', '62');
INSERT INTO `wq_static_bill` VALUES ('52', '3', '6', '3', '201810', '13');
INSERT INTO `wq_static_bill` VALUES ('53', '3', '6', '3', '201811', '95');
INSERT INTO `wq_static_bill` VALUES ('54', '3', '6', '3', '201812', '26');
