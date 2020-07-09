/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : ocdb

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-04-25 19:48:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_auth_user`;
CREATE TABLE `t_auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '登录用户名',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `gender` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别',
  `header` varchar(128) NOT NULL DEFAULT '' COMMENT '头像',
  `mobile` varchar(15) NOT NULL DEFAULT '' COMMENT '手机号码',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '状态：待审核（0），有效（1），无效（3）',
  `birthday` date NOT NULL DEFAULT '1900-01-01',
  `education` varchar(20) NOT NULL DEFAULT '' COMMENT '学历：大专、本科、硕士、博士、博士后',
  `college_code` varchar(50) NOT NULL DEFAULT '' COMMENT '大学编码',
  `college_name` varchar(100) NOT NULL DEFAULT '' COMMENT '大学名称',
  `cert_no` varchar(50) NOT NULL DEFAULT '' COMMENT '资格证书编号',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '头衔',
  `sign` varchar(500) NOT NULL DEFAULT '' COMMENT '签名',
  `open_id` varchar(128) NOT NULL DEFAULT '' COMMENT '微信公众号openid',
  `wechat_id` varchar(100) NOT NULL DEFAULT '' COMMENT '微信号',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT 'qq号',
  `login_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次登录时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后一次登录IP',
  `province` varchar(16) NOT NULL DEFAULT '' COMMENT '所在省份',
  `city` varchar(16) NOT NULL DEFAULT '' COMMENT '所在城市',
  `district` varchar(16) NOT NULL DEFAULT '' COMMENT '所在地区',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '权重',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `T_AUTH_USER_USERNAME_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_auth_user
-- ----------------------------
INSERT INTO `t_auth_user` VALUES ('1', '四条蛋蛋', 'sitiaodandan', '0FA7CAC93C51C7F2D2FDEC84D3F2E67C', '1', '/default/all/0/9aeeb060270f4706884f31a5fd55a58a', '13750466450', '2', '1996-11-21', '大专', '', '江门职业技术学院', 'fasf', '高级讲师', '擅长java、python', '', 'zhangsan', '12345678', '0000-00-00 00:00:00', '127.0.0.1', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-17 15:18:36', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('2', '曾老师', 'zengxianlong', '0FA7CAC93C51C7F2D2FDEC84D3F2E67C', '1', '/default/all/0/26c1d53a26b947d8af4009ea9094b579.jpeg', '13750466450', '2', '1900-01-01', '大专狗', '', '江门职业技术学院', '', '特级讲师', '擅长java', '', 'lisi', '', '0000-00-00 00:00:00', '127.0.0.1', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-24 09:50:26', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('3', '黄老师', 'huangzelong', '0FA7CAC93C51C7F2D2FDEC84D3F2E67C', '1', '/default/all/0/be5df6c0008d4bf8899a41f66dc312a4.jpeg', '13750466450', '2', '1900-01-01', '大专', '', '江门职业技术学院', '', '特级讲师', '擅长java、ps', '', '', '', '0000-00-00 00:00:00', '127.0.0.1', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:33:42', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('4', '谢老师', 'xiejunjie', '0FA7CAC93C51C7F2D2FDEC84D3F2E67C', '1', '/default/all/0/427cf59fedce4b038ed20a7e26a48212.jpeg', '13750466450', '2', '1900-01-01', '博士后', '', '社会大学', '', '高级讲师', '擅长java', '', '', '', '0000-00-00 00:00:00', '127.0.0.1', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:49:43', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('5', '郑老师', 'zhengguixing', '0FA7CAC93C51C7F2D2FDEC84D3F2E67C', '1', '/default/all/0/1150a307770f4850aed13fe00d1846c6.jpeg', '13750466450', '2', '1900-01-01', '博士后', '', '哈佛大学', '', '特级讲师', '擅长打代码', '', '', '', '0000-00-00 00:00:00', '127.0.0.1', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:43:55', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('6', '王老师', 'wangyangming2', '96E79218965EB72C92A549DD5A330112', '1', '', '13750466450', '2', '1900-01-01', '大专狗', '', '华南大学', '', '高级讲师', '擅长打代码', '', '', '', '0000-00-00 00:00:00', '127.0.0.1', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('7', '', '111111', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('8', '', '1111112', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('9', '', '11111123', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('10', '', '22222222', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('11', '', '222222223', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('14', '新的test00005', 'test0005', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('15', '', 'zhangsan111', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('16', '', 'zhangsan112', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('17', '', 'wangyangmi2', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('18', '', 'wangyangmi11', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('19', '', 'zhangsan11111', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('20', '', 'zhangsan111111', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('21', '', '011111', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('22', '', 'test001', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('23', '', 'test002', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('24', '', 'wangyangmi1212', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('25', '', '11111111111', '7FA8282AD93047A4D6FE6111C93B308A', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('26', '', 'wangyangmi222', '96E79218965EB72C92A549DD5A330112', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('27', '', 'admin', '0FA7CAC93C51C7F2D2FDEC84D3F2E67C', '1', '/default/all/0/a432a420c386455cb32439d598ceddd1.jpeg', '', '2', '1900-01-01', '大专', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 19:44:43', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('28', '', 'xianlong', '0FA7CAC93C51C7F2D2FDEC84D3F2E67C', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-14 14:52:46', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('29', '', 'long', '0FA7CAC93C51C7F2D2FDEC84D3F2E67C', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-15 11:13:22', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('30', '', 'longgege', '0FA7CAC93C51C7F2D2FDEC84D3F2E67C', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-17 15:41:17', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('31', '', '999999', '52C69E3A57331081823331C4E69D3F2E', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-18 21:42:30', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('32', '', 'zhangsangsan', '0FA7CAC93C51C7F2D2FDEC84D3F2E67C', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-24 16:38:11', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('33', '', 'lisisi', '0FA7CAC93C51C7F2D2FDEC84D3F2E67C', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-24 16:38:28', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('34', '', 'wangwuwu', 'B2B0EA0843CF0923DDAEF0A4C260326E', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-24 16:59:56', 'system', '0');
INSERT INTO `t_auth_user` VALUES ('35', '', 'MALIULIU', '0FA7CAC93C51C7F2D2FDEC84D3F2E67C', '1', '', '', '2', '1900-01-01', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '0', '0000-00-00 00:00:00', 'system', '2018-04-24 17:00:32', 'system', '0');

-- ----------------------------
-- Table structure for `t_consts_classify`
-- ----------------------------
DROP TABLE IF EXISTS `t_consts_classify`;
CREATE TABLE `t_consts_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `code` varchar(50) NOT NULL DEFAULT '',
  `parent_code` varchar(50) NOT NULL DEFAULT '0' COMMENT '父级别code',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程类别表';

-- ----------------------------
-- Records of t_consts_classify
-- ----------------------------
INSERT INTO `t_consts_classify` VALUES ('1', '前端开发', 'fe', '0', '1', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('2', '后端开发', 'be', '0', '2', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('3', '移动开发', 'mobile', '0', '3', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('4', '数据库', 'db', '0', '4', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('5', '云计算&大数据', 'cb', '0', '5', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('6', 'UI设计', 'ui', '0', '6', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('9', 'JQUERY', 'jquery', 'fe', '2', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('10', 'Html5', 'html5', 'fe', '3', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('11', 'Node.js', 'node', 'fe', '4', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('12', 'AngularJS', 'angular', 'fe', '5', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('13', 'Bootstrap', 'bootstrap', 'fe', '6', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('14', 'WebApp1', 'webapp', 'fe', '7', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('15', 'PHP', 'php', 'be', '1', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('16', 'Java', 'java', 'be', '2', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('17', 'Python', 'python', 'be', '3', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('18', 'C', 'c', 'be', '4', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('19', 'Android', 'android', 'mobile', '1', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('20', 'IOS', 'ios', 'mobile', '2', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('21', 'MySQL', 'mysql', 'db', '1', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('22', 'MongoDB', 'mongodb', 'db', '2', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('23', 'Oracle', 'oracle', 'db', '3', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('24', 'SQL Server', 'sqlserver', 'db', '4', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('25', '大数据', 'bigdata', 'cb', '1', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('26', '云计算', 'cloud', 'cb', '2', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('27', '动画动效', 'movie', 'ui', '1', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('28', 'APPUI设计', 'appui', 'ui', '2', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('29', '设计工具', 'tools', 'ui', '3', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('32', 'sss', 'sss', '0', '0', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '1');
INSERT INTO `t_consts_classify` VALUES ('33', '机器学习', 'jqxx', '0', '0', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '1');
INSERT INTO `t_consts_classify` VALUES ('34', '无人驾驶', 'wrjs', '0', '0', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '1');
INSERT INTO `t_consts_classify` VALUES ('35', '无人驾驶', 'wrjs', 'jqxx', '0', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_classify` VALUES ('36', 'Oracle', 'oracle1', 'jqxx', '0', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '1');

-- ----------------------------
-- Table structure for `t_consts_college`
-- ----------------------------
DROP TABLE IF EXISTS `t_consts_college`;
CREATE TABLE `t_consts_college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '编码',
  `picture` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='高校表结构';

-- ----------------------------
-- Records of t_consts_college
-- ----------------------------
INSERT INTO `t_consts_college` VALUES ('6', '中南大学中南大学', 'zndx', '', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:12', 'system', '1');
INSERT INTO `t_consts_college` VALUES ('7', '上海大学', 'shdx', '', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:13', 'system', '1');
INSERT INTO `t_consts_college` VALUES ('50', '苏州大学', 'szdx', '', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:15', 'system', '1');
INSERT INTO `t_consts_college` VALUES ('51', '南京大学', 'njdx', '', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:16', 'system', '1');
INSERT INTO `t_consts_college` VALUES ('52', '江苏大学', 'jsdx', '', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:18', 'system', '1');
INSERT INTO `t_consts_college` VALUES ('53', '江门职业技术学院', 'zmzy', '', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:31', 'system', '0');
INSERT INTO `t_consts_college` VALUES ('54', '清华大学', 'QHDX', '', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:44', 'system', '0');
INSERT INTO `t_consts_college` VALUES ('55', '北京大学', 'BJDX', '', '0000-00-00 00:00:00', 'system', '2018-04-17 17:00:54', 'system', '0');

-- ----------------------------
-- Table structure for `t_consts_dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `t_consts_dictionary`;
CREATE TABLE `t_consts_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_code` int(11) NOT NULL DEFAULT '0' COMMENT '分组code',
  `group_name` varchar(32) NOT NULL DEFAULT '' COMMENT '分组名称',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键',
  `value` varchar(128) NOT NULL DEFAULT '' COMMENT '值',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据字典：可用于可选项值的配置等';

-- ----------------------------
-- Records of t_consts_dictionary
-- ----------------------------

-- ----------------------------
-- Table structure for `t_consts_site_carousel`
-- ----------------------------
DROP TABLE IF EXISTS `t_consts_site_carousel`;
CREATE TABLE `t_consts_site_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `picture` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '链接',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '权重',
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='首页轮播表';

-- ----------------------------
-- Records of t_consts_site_carousel
-- ----------------------------
INSERT INTO `t_consts_site_carousel` VALUES ('1', '搞定高并发与高并发技术让你的薪资更上一层楼', '/default/all/0/a19a43d47b3c40ff883b0a15555e99ab.jpeg', 'http://baidu.com', '1', '1', '0000-00-00 00:00:00', 'system', '2018-04-17 12:57:13', 'system', '0');
INSERT INTO `t_consts_site_carousel` VALUES ('2', '系统学习数据结构算法大牛带你飞', '/default/all/0/5d3eaf8a54ff4d82af413883d253cd4b.jpeg', 'http://baidu.com', '1', '1', '0000-00-00 00:00:00', 'system', '2018-04-17 12:57:25', 'system', '0');
INSERT INTO `t_consts_site_carousel` VALUES ('3', 'SpringCloud微服务实战', '/default/all/0/03c6b968a04f4ba296f2feab7b1d5c90.jpeg', 'http://baidu.com', '1', '1', '0000-00-00 00:00:00', 'system', '2018-04-17 12:57:50', 'system', '0');
INSERT INTO `t_consts_site_carousel` VALUES ('4', 'Vue核心技术Vue+vue+Vie-Router+Vuex+SSR实战精讲', '/default/all/0/e26c222d5dfb47168db393807d70fd1e.jpeg', 'http://baidu.com', '1', '1', '0000-00-00 00:00:00', 'system', '2018-04-17 12:58:04', 'system', '0');
INSERT INTO `t_consts_site_carousel` VALUES ('5', '从零入门Vue2.0实战去哪儿网', '/default/all/0/3032a7b9b20d4cca9077a676bc76b88e.jpeg', 'www.baidu.com', '1', '1', '0000-00-00 00:00:00', 'system', '2018-04-16 22:18:27', 'system', '0');

-- ----------------------------
-- Table structure for `t_course`
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '课程名称',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '课程类型',
  `classify` varchar(50) NOT NULL DEFAULT '' COMMENT '课程分类',
  `classify_name` varchar(100) NOT NULL DEFAULT '',
  `sub_classify` varchar(50) NOT NULL DEFAULT '' COMMENT '课程二级分类',
  `sub_classify_name` varchar(100) NOT NULL DEFAULT '',
  `direction` varchar(20) NOT NULL DEFAULT '' COMMENT '课程方向',
  `username` varchar(200) NOT NULL DEFAULT '' COMMENT '归属人',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '课程级别：1-初级，2-中级，3-高级',
  `free` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否免费：0-否，1-是',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '课程价格',
  `time` varchar(50) NOT NULL DEFAULT '' COMMENT '时长',
  `onsale` tinyint(1) NOT NULL DEFAULT '0' COMMENT '未上架（0）、上架（1）',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `brief` text COMMENT '课程描述',
  `recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '未推荐（0）、推荐（1）',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '权重',
  `study_count` int(11) NOT NULL DEFAULT '0' COMMENT '学习人数',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('1', '最全面的Java接口自动化测试实战', '', 'be', '后端开发', 'java', 'Java', '', 'zengxianlong', '3', '0', '399.00', '2小时25分', '1', '/default/all/0/0f22d132da0e4d85b402cd7f1139dc6c.jpeg', '本课程由BAT测试老司机带你学习Java接口自动化测试，掌握HttpClient和TestNG、Mock平台、Mybatis及SpringBoot等内容，学完即可独立完成接口自动化测试！', '0', '0', '1452', '0000-00-00 00:00:00', 'system', '2018-04-17 15:38:58', 'system', '0');
INSERT INTO `t_course` VALUES ('2', '基于Python玩转人工智能最火框架 TensorFlow应用实践', '', 'be', '后端开发', 'python', 'python', '', 'zengxianlong', '2', '0', '249.00', '2小时25分', '1', '/default/all/0/28f5c341d0f243e6a5df0b02879046ae.jpeg', '全民人工智能时代，不甘心只做一个旁观者，那就现在开始，从人工智能最流行的框架TensorFlow学起，本课程将手把手带你掌握TensorFlow技术，遵循从基础到实践应用的完整过程，是你通向人工智能开发的首选！', '0', '0', '1300', '0000-00-00 00:00:00', 'system', '2018-04-17 15:40:26', 'system', '0');
INSERT INTO `t_course` VALUES ('3', 'Python Flask高级编程', '', 'be', '后端开发', 'java', 'python', '', 'zengxianlong', '2', '0', '99.00', '2小时25分', '1', '/default/all/0/ae84ce022ccb49368222ca66d285fd06.jpeg', '通过一个项目的实践，深入浅出讲解Flask核心原理、剖析Flask源码，在解读Flask的同时，学习Python高级编程、培养面向对象思维，是市面上稀缺的优质课程。', '0', '0', '1452', '0000-00-00 00:00:00', 'system', '2018-04-17 15:32:25', 'system', '0');
INSERT INTO `t_course` VALUES ('4', '程序猿的内功修炼，学好算法与数据结构', '', 'be', '后端开发', 'java', 'Java', '', 'zengxianlong', '2', '1', '0.00', '2小时25分', '1', '/default/all/0/a9f71852379948eb97b3abda1824c3ec.jpeg', '任何时候学习算法都不晚，而且越早越好，这么多年，你听说过技术过时，什么时候听说过算法过时，不仅没有过时，因为机器学习、大数据的要求，算法变得越来越重要了 ', '0', '0', '1452', '0000-00-00 00:00:00', 'system', '2018-04-17 16:32:33', 'system', '0');
INSERT INTO `t_course` VALUES ('5', 'JSP常用标签', '', 'be', '后端开发', 'python', 'python', '', 'zengxianlong', '1', '1', '0.00', '2小时25分', '1', '/default/all/0/8ef3fcd212af469b970e4574eb202cd6.jpeg', '配置及使用常用JSTL标签，这是一项必备的基本技能', '0', '1', '1452', '0000-00-00 00:00:00', 'system', '2018-04-17 16:40:45', 'system', '0');
INSERT INTO `t_course` VALUES ('6', '韩天峰力荐 Swoole入门到实战打造高性能赛事直播平台', '', 'be', '后端开发', 'php', 'PHP', '', 'zengxianlong', '2', '0', '399.00', '2小时25分', '1', '/default/all/0/14fc4ada6afa49a28ea1608b1a890690.png', '通过一个项目的实践，深入浅出讲解Flask核心原理、剖析Flask源码，在解读Flask的同时，学习Python高级编程、培养面向对象思维，是市面上稀缺的优质课程。 ', '0', '0', '1300', '0000-00-00 00:00:00', 'system', '2018-04-17 15:35:17', 'system', '0');
INSERT INTO `t_course` VALUES ('7', 'Java开发企业级权限管理系统', '', 'be', '后端开发', 'Java', 'Java', '', 'zengxianlong', '2', '0', '399.00', '2小时25分', '1', '/default/all/0/45f1fe5f749240ac93647797bb24b319.jpeg', '全程手把手带你运用Java技术栈，打造一套基于最流行的RBAC拓展模型的，分布式的，有界面的，高灵活性，高拓展性的企业级权限管理系统。学完本课程你将可以轻松应对绝大多数企业开发中与权限管理及后台系统相关的需求。', '0', '0', '1452', '0000-00-00 00:00:00', 'system', '2018-04-17 16:34:09', 'system', '0');
INSERT INTO `t_course` VALUES ('8', '初识机器学习-理论篇', '', 'be', '后端开发', 'python', 'python', '', 'zengxianlong', '1', '1', '0.00', '2小时25分', '1', '/default/all/0/95a42e502e3b4f0fbe6f70a267a11119.jpeg', '大数据时代背景下，机器学习在各行各业都有广泛应用。本课对机器学习做入门级介绍，主要介绍机器学习的概念、典型的行业案例，并对比机器学习和传统数据分析的差别，一些经典的算法，最后是Demo演示 ', '0', '2', '1452', '0000-00-00 00:00:00', 'system', '2018-04-17 16:25:30', 'system', '0');
INSERT INTO `t_course` VALUES ('9', 'Dwr实现JAVA服务器端向客户端推送消息', '', 'be', '后端开发', 'python', 'python', '', 'zengxianlong', '3', '1', '0.00', '2小时25分', '1', '/default/all/0/3c7ee78b11b84cf8ad9fcd781804423f.jpeg', 'dwr轻松帮你实现server push。', '0', '0', '1300', '0000-00-00 00:00:00', 'system', '2018-04-17 16:41:20', 'system', '0');
INSERT INTO `t_course` VALUES ('10', 'IntelliJ IDEA神器使用技巧', '', 'be', '后端开发', 'java', 'Java', '', 'zengxianlong', '1', '1', '0.00', '2小时25分', '1', '/default/all/0/8b90a403c30b40b884b996f21255c711.jpeg', '程序员每日都会花费数小时使用ide编写和调试代码，其中很多操作都是机械重复且频率非常高，本着\"工欲善其事必先利其器\"的精神，闷头写代码之外花点时间研究一下自己用的ide，其带来的效率提升非常可观。本课程选择了intellij idea这一java集成工作开发环境，从如何高效定位、代码智能提示、重构、关联、版本控制等全方面展示这款idea发挥的功能，相信同学们在学习并掌握了这款idea的技巧之后，开发效率至少提升两倍以上，你只需要专注于业务逻辑，把更多的重复劳动交给idea吧 ', '0', '3', '1452', '0000-00-00 00:00:00', 'system', '2018-04-17 16:23:54', 'system', '0');
INSERT INTO `t_course` VALUES ('11', 'JS实现人机大战之五子棋（UI篇）', '', 'be', '后端开发', 'JS', 'JS', '', 'zengxianlong', '2', '1', '0.00', '2小时25分', '1', '/default/all/0/54b99fc133764dcdb7a26290165b11ea.jpeg', '利用js及canvas绘图知识，实现程序界面编写和交互逻辑处理', '0', '0', '1552', '0000-00-00 00:00:00', 'system', '2018-04-17 16:36:36', 'system', '0');
INSERT INTO `t_course` VALUES ('12', 'SpringBoot+MyBatis搭建迷你小程序', '', 'be', '后端开发', 'java', 'Java', '', 'zengxianlong', '1', '1', '0.00', '2小时25分', '1', '/default/all/0/df829bb83b7e4548b5563fbad33b591c.jpeg', 'SpringBoot+MyBatis搭建迷你小程序', '0', '5', '1300', '0000-00-00 00:00:00', 'system', '2018-04-17 16:22:16', 'system', '0');
INSERT INTO `t_course` VALUES ('13', 'RBAC打造通用web管理权限', '', 'be', '后端开发', 'c', 'C语言', '', 'zengxianlong', '3', '1', '0.00', '2小时25分', '1', '/default/all/0/60c00779456a4a719d3f7c7397f0c427.jpeg', 'RBAC为商业系统安全防范手段，结合理论和实战介绍RBAC', '0', '0', '1300', '0000-00-00 00:00:00', 'system', '2018-04-17 16:42:32', 'system', '0');
INSERT INTO `t_course` VALUES ('14', '轻松学会Laravel-高级篇sdsdsdsssss', '', 'be', '后端开发', 'java', 'C语言', '', 'zengxianlong', '3', '1', '200.00', '2小时25分', '0', '/default/all/0/c96fc5be2ff24760a34fbfc33252f0f9.jpeg', 'Laravel框架高级教程，介绍Laravel提供的工具和功能，快来体验', '0', '5', '1300', '0000-00-00 00:00:00', 'system', '2018-04-17 16:41:53', 'system', '0');
INSERT INTO `t_course` VALUES ('15', 'Shiro安全框架入门', '', 'be', '后端开发', 'java', 'Java', '', 'zengxianlong', '2', '1', '0.00', '2小时25分', '1', '/default/all/0/7ecef494f95949aeaddb928c4381cf75.jpeg', '本课程通过从shiro和spring Security对比入手，进而讲解Shiro整体架构以及认证，授权的过程，通过结合代码带同学更深刻的认识Shiro。同时课程会讲解Shiro其他特性，比如：Session管理，缓存管理等，以及集成Spring在实际项目中应用Shiro，使同学能在未来自己做的项目中更加熟练的使用Shiro。 ', '0', '8', '1300', '0000-00-00 00:00:00', 'system', '2018-04-17 16:16:23', 'system', '0');
INSERT INTO `t_course` VALUES ('18', '微信小程序开发如此简单', '', 'be', '后端开发', 'java', 'Java', '', 'zengxianlong', '1', '1', '0.00', '2小时25分', '1', '/default/all/0/678d95521e254b30a70be5de72713b9f.jpeg', '微信小程序开发如此简单', '0', '1', '1552', '0000-00-00 00:00:00', 'system', '2018-04-17 16:37:33', 'system', '0');
INSERT INTO `t_course` VALUES ('19', 'Python人工智能常用库Numpy使用入门', '', 'be', '后端开发', 'python', 'python', '', 'zengxianlong', '1', '1', '0.00', '2小时25分', '1', '/default/all/0/4300d0219afd4c61932bd2bc365ad974.jpeg', '人工智能的很多方关于数据的操作，机器学习，深度学习，大数据，数据分析等，或多或少都会用到numpy这一python工具库。本课程从搭建环境开始，从anaconda，jupyter notebook，再到课程重点numpy工具库的使用，让你快速掌握这一热门框架。 ', '0', '2', '1300', '0000-00-00 00:00:00', 'system', '2018-04-17 16:27:13', 'system', '0');
INSERT INTO `t_course` VALUES ('20', 'Java企业级电商项目架构演进之路 Tomcat集群与Redis分布式', '', 'be', '后端开发', 'java', 'Java', '', 'zengxianlong', '1', '0', '399.00', '2小时25分', '1', '/default/all/0/561f5a9e74b941c0a9727f14ecd816ed.jpeg', '优秀的架构是演进出来的，本课程将手把手带你从项目架构到系统架构，从代码重构到源码原理解析不断演进，逐步提高你驾驭大项目的能力，让你的编程思维和架构能力得到双重提升，助你迈好高级工程师之路的第一步！', '0', '1', '1452', '0000-00-00 00:00:00', 'system', '2018-04-17 16:19:28', 'system', '0');
INSERT INTO `t_course` VALUES ('22', 'Java高并发秒杀API之高并发优化', '', 'be', '后端开发', 'java', 'Java', '', 'zengxianlong', '1', '1', '0.00', '2小时25分', '1', '/default/all/0/398f65c311a740289eb5f2a399b77276.jpeg', 'Java实现高并发秒杀API的第四门课，小伙伴一定可以从中受益', '0', '0', '1552', '0000-00-00 00:00:00', 'system', '2018-04-17 16:39:54', 'system', '0');
INSERT INTO `t_course` VALUES ('28', '测试批量添加', '', 'fe', '', 'jquery', '', '', 'zengxianlong', '1', '1', '0.00', '', '0', '/default/all/0/fdf47f1e3eaf43bba4671cd7bc71ee87', '我是描述我是描述', '0', '0', '0', '0000-00-00 00:00:00', 'system', '2018-04-17 16:38:20', 'system', '0');
INSERT INTO `t_course` VALUES ('30', 'Python3入门机器学习 经典算法与应用', '', 'be', '后端开发', 'python', 'Python', '', 'zengxianlong', '1', '1', '0.00', '', '0', '', 'bobo老师特为机器学习初学者量身打造，使用最新的python3语言和最流行的scikit-learn框架，算法与编程两翼齐飞，由浅入深，一步步的进入机器学习的世界。学到的不只是一门课程，更是不断思考的能力', '0', '1', '0', '0000-00-00 00:00:00', 'system', '2018-04-17 16:45:04', 'system', '0');
INSERT INTO `t_course` VALUES ('31', '全网最热Python3入门+进阶 更快上手实际开发', '', 'be', '后端开发', 'python', 'Python', '', 'huangzelong', '2', '1', '0.00', '', '0', '/default/all/0/558256ffdae340579eebd41368ab92ca.jpeg', '无论是大数据、人工智能还是机器学习，Python都是最热门的首选语言 ，这次课程，就将带你从基础入门Python3，掌握Python3.x 版本语法，并结合讲师实际工作经验讲解Python使用技巧以及数据结构等相关知识，并为你精心配套了练习题目及实战案例。', '0', '0', '0', '0000-00-00 00:00:00', 'system', '2018-04-24 16:46:38', 'system', '0');
INSERT INTO `t_course` VALUES ('32', 'Python3入门机器学习 经典算法与应用', '', 'be', '后端开发', 'python', 'Python', '', 'huangzelong', '2', '1', '0.00', '', '0', '/default/all/0/b4e85bc9b27b47f09194a6b2da482656.jpeg', 'bobo老师特为机器学习初学者量身打造，使用最新的python3语言和最流行的scikit-learn框架，算法与编程两翼齐飞，由浅入深，一步步的进入机器学习的世界。学到的不只是一门课程，更是不断思考的能力。', '0', '0', '0', '0000-00-00 00:00:00', 'system', '2018-04-24 16:48:12', 'system', '0');
INSERT INTO `t_course` VALUES ('33', 'SpringBoot2.0不容错过的新特性 WebFlux响应式编程', '', 'be', '后端开发', 'java', 'Java', '', 'xiejunjie', '2', '1', '0.00', '', '0', '', '北京时间 3 月 1 日，SpringBoot2.0 正式发布。作为 Spring 生态中的重要开源项目， SpringBoot2.0 中加入了众多令人激动的新特性，其中最亮眼的，莫过于使用 Spring WebFlux提供响应式 Web 编程。本课程从基础讲解到实践，带你玩转SpringBoot2.0响应式编程。 ', '0', '0', '0', '0000-00-00 00:00:00', 'system', '2018-04-24 16:50:27', 'system', '0');
INSERT INTO `t_course` VALUES ('34', '基于Python玩转人工智能最火框架 TensorFlow应用实践', '', 'be', '后端开发', 'python', 'Python', '', 'xiejunjie', '2', '1', '0.00', '', '0', '/default/all/0/1590e76e927f49d2918bb5c2dc82490a.jpeg', '全民人工智能时代，不甘心只做一个旁观者，那就现在开始，从人工智能最流行的框架TensorFlow学起，本课程将手把手带你掌握TensorFlow技术，遵循从基础到实践应用的完整过程，是你通向人工智能开发的首选！', '0', '0', '0', '0000-00-00 00:00:00', 'system', '2018-04-24 16:54:00', 'system', '0');

-- ----------------------------
-- Table structure for `t_course_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_course_comment`;
CREATE TABLE `t_course_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL DEFAULT '' COMMENT '用户username',
  `to_username` varchar(200) NOT NULL DEFAULT '' COMMENT '评论对象username',
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `section_id` int(11) NOT NULL DEFAULT '0' COMMENT '章节id',
  `section_title` varchar(200) NOT NULL DEFAULT '0' COMMENT '章节标题',
  `content` varchar(255) NOT NULL DEFAULT '0' COMMENT '评论内容',
  `ref_id` int(11) NOT NULL DEFAULT '0' COMMENT '引用id',
  `ref_content` varchar(255) NOT NULL DEFAULT '' COMMENT '引用内容',
  `type` tinyint(11) NOT NULL DEFAULT '0' COMMENT '类型：0-评论；1-答疑QA',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='课程评论&答疑';

-- ----------------------------
-- Records of t_course_comment
-- ----------------------------
INSERT INTO `t_course_comment` VALUES ('1', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:17:30', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('2', 'lisi', 'zhangsan', '1', '12', '1-2 Java讲的真好', 'Java讲的真好的评论是这样的', '1', '', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:17:32', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('3', 'zhangsan', '', '1', '12', '1-2 Java讲的真好', '我是问答，我是问答', '0', '我是评论我是评论', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:17:34', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('5', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:17:36', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('6', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:17:39', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('7', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:17:42', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('8', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '我是评论我是评论', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:17:45', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('9', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:17:48', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('10', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:17:50', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('11', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:17:52', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('12', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:17:55', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('14', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:17:58', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('15', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '0', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:01', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('19', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:04', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('21', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:07', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('22', 'lisi', 'zhangsan', '1', '12', '1-2 Java讲的真好', 'Java讲的真好的评论是这样的', '1', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:09', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('23', 'zhangsan', '', '1', '12', '1-2 Java讲的真好', '我是问答，我是问答', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:13', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('24', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:15', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('25', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:19', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('26', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:22', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('27', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:24', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('28', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:26', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('29', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:28', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('30', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:30', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('31', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:32', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('32', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:34', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('33', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:38', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('34', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:40', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('35', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:42', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('36', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:48', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('37', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:50', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('38', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:52', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('39', 'zhangsan', 'lisi', '1', '12', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论我是评论', '0', '', '1', '2018-04-13 00:00:00', 'system', '2018-04-24 09:18:54', 'system', '0');
INSERT INTO `t_course_comment` VALUES ('40', 'wangyangming', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '发布新的评论', '0', '我是评论我是评论', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:18:56', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('41', 'wangyangming', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '发布新的评论', '0', '', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:18:58', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('42', 'wangyangming', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '发布新的评论', '0', '', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:19:00', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('43', 'wangyangming', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '发布新的评论', '0', '', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:19:02', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('44', 'wangyangming', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '发布新的评论', '0', '', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:19:04', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('45', 'wangyangming', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '发布新的评论', '0', '我是评论我是评论', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:19:05', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('46', 'wangyangming', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '发布新的评论', '0', '', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:19:07', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('47', 'wangyangming', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '发布新的评论', '0', '', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:19:09', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('48', 'wangyangming', '', '1', '23', '5-1 类定义', 'fda', '0', '我是评论我是评论', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:19:14', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('49', 'wangyangming', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '放大法', '0', '', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:19:16', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('50', 'wangyangming', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '我是问答我是问答', '0', '我是评论我是评论', '1', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:19:17', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('51', 'wangyangming', '', '1', '6', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '我是评论', '0', '', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:17:23', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('52', 'wangyangming', '', '1', '9', '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', 'fdsafadsfdsaf', '0', '我是评论我是评论', '1', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:17:20', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('53', 'wangyangming', '', '1', '9', '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', 'fdsafdsaf', '0', '我是评论我是评论', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:17:16', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('54', 'wangyangming', 'wangyangming', '1', '9', '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', '我是回答我是回答', '53', 'fdsafdsaf', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:17:13', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('55', 'wangyangming', 'wangyangming', '1', '9', '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', '我回答你我回答你我的回答你', '53', 'fdsafdsaf', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:16:50', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('56', 'wangyangming', 'wangyangming', '1', '9', '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', '我我我我我我我我我我我我我我我', '55', '我回答你我回答你我的回答你', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:17:07', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('57', 'wangyangming', '', '1', '12', '3-1 变量的定义、赋值、运算 ', 'fdafdsaf', '0', '', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:17:05', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('58', 'wangyangming', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '老师你好棒哦', '0', '', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:19:28', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('59', 'wangyangming', 'wangyangming', '1', '12', '3-1 变量的定义、赋值、运算 ', '泽龙你好厉害啊', '58', '桂鑫你好厉害啊', '0', '2018-04-13 00:00:00', 'wangyangming', '2018-04-24 09:19:50', 'wangyangming', '0');
INSERT INTO `t_course_comment` VALUES ('60', 'admin', '', '1', '12', '3-1 变量的定义、赋值、运算 ', 'sdds', '0', '', '1', '2018-04-13 00:00:00', 'admin', '2018-04-13 12:56:34', 'admin', '0');
INSERT INTO `t_course_comment` VALUES ('61', 'admin', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '你好', '0', '', '1', '2018-04-13 00:00:00', 'admin', '2018-04-13 12:57:02', 'admin', '0');
INSERT INTO `t_course_comment` VALUES ('62', 'huangzelong', '', '20', '85', '1-001：我是001', '老师你好棒哦', '0', '', '0', '2018-04-18 00:00:00', 'huangzelong', '2018-04-18 20:43:50', 'huangzelong', '0');
INSERT INTO `t_course_comment` VALUES ('63', 'huangzelong', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '黄老师，你好帅哦', '0', '', '0', '2018-04-18 00:00:00', 'huangzelong', '2018-04-18 20:44:51', 'huangzelong', '0');
INSERT INTO `t_course_comment` VALUES ('64', 'zhengguixing', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '泽龙你好厉害啊', '0', '', '0', '2018-04-18 00:00:00', 'zhengguixing', '2018-04-18 20:45:57', 'zhengguixing', '0');
INSERT INTO `t_course_comment` VALUES ('65', 'zhengguixing', '', '1', '12', '3-1 变量的定义、赋值、运算 ', '泽龙你好厉害啊', '0', '', '0', '2018-04-18 00:00:00', 'zhengguixing', '2018-04-18 20:46:09', 'zhengguixing', '0');
INSERT INTO `t_course_comment` VALUES ('66', 'zhengguixing', '', '1', '12', '3-1 变量的定义、赋值、运算 ', 'sdfasfd', '0', '', '0', '2018-04-18 00:00:00', 'zhengguixing', '2018-04-18 20:46:26', 'zhengguixing', '0');
INSERT INTO `t_course_comment` VALUES ('67', 'admin', '', '28', '62', '2-001：我是003', '讲的好详细哦', '0', '', '0', '2018-04-18 00:00:00', 'admin', '2018-04-18 20:56:55', 'admin', '0');
INSERT INTO `t_course_comment` VALUES ('68', 'zengxianlong', '', '28', '62', '2-001：我是003', '你好', '0', '', '1', '2018-04-18 00:00:00', 'zengxianlong', '2018-04-18 20:57:52', 'zengxianlong', '0');
INSERT INTO `t_course_comment` VALUES ('69', 'zengxianlong', 'wangyangming', '1', '12', '3-1 变量的定义、赋值、运算 ', '你好', '59', '我是新的回答我是新的回答', '0', '2018-04-18 00:00:00', 'zengxianlong', '2018-04-18 21:14:07', 'zengxianlong', '0');
INSERT INTO `t_course_comment` VALUES ('70', 'zengxianlong', 'wangyangming', '1', '12', '3-1 变量的定义、赋值、运算 ', 'halo', '50', '我是问答我是问答', '0', '2018-04-18 00:00:00', 'zengxianlong', '2018-04-18 21:14:52', 'zengxianlong', '0');
INSERT INTO `t_course_comment` VALUES ('71', 'zengxianlong', 'wangyangming', '1', '12', '3-1 变量的定义、赋值、运算 ', '你好', '50', '我是问答我是问答', '0', '2018-04-18 00:00:00', 'zengxianlong', '2018-04-18 21:15:05', 'zengxianlong', '0');
INSERT INTO `t_course_comment` VALUES ('72', 'zengxianlong', 'wangyangming', '1', '9', '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', '大赛大赛', '52', 'fdsafadsfdsaf', '0', '2018-04-18 00:00:00', 'zengxianlong', '2018-04-18 21:15:22', 'zengxianlong', '0');

-- ----------------------------
-- Table structure for `t_course_section`
-- ----------------------------
DROP TABLE IF EXISTS `t_course_section`;
CREATE TABLE `t_course_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '归属课程id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父章节id，（只有2级）',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '章节名称',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `time` varchar(50) NOT NULL DEFAULT '' COMMENT '时长',
  `onsale` tinyint(1) NOT NULL DEFAULT '0' COMMENT '未上架（0）、上架（1）',
  `video_url` varchar(255) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8 COMMENT='课程章节表';

-- ----------------------------
-- Records of t_course_section
-- ----------------------------
INSERT INTO `t_course_section` VALUES ('1', '1', '0', '第1章 课程介绍', '1', '', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('2', '1', '0', '第2章 Java关键字讲解', '2', '', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('3', '1', '0', '第3章 语法', '3', '', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('4', '1', '0', '第4章 函数', '4', '', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('5', '1', '0', '第5章 类', '5', '', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('6', '1', '1', '1-1 使用RecyclerView优雅实现复杂布局-课程介绍', '1', '06:55', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('7', '1', '1', '1-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放111', '1', '07:46', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('8', '1', '2', '2-1 使用RecyclerView优雅实现复杂布局-课程介绍 ', '1', '06:00', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('9', '1', '2', '2-2 包括录制到文件、播放文件，可以实现类似于微信的语音消息发送与播放', '1', '01:30', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('10', '1', '2', '2-3 WebGL带你走进浏览器的3D世界', '1', '06:46', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('11', '1', '2', '2-4 WebGL带你走进浏览器的3D世界', '1', '07:46', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('12', '1', '3', '3-1 变量的定义、赋值、运算 ', '1', '06:00', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('13', '1', '3', '3-2 自定义对象User变量的取值 ', '1', '01:30', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('14', '1', '3', '3-3 集合List的遍历', '1', '07:33', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('15', '1', '3', '3-4 集合Map的遍历', '1', '06:46', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('16', '1', '3', '3-5 if语法', '1', '07:46', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('17', '1', '3', '3-6 switch语法', '1', '06:00', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('18', '1', '4', '4-1 自定义函数章节简介 ', '1', '01:30', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('19', '1', '4', '4-2 string基本操作指令', '1', '07:33', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('20', '1', '4', '4-3 自定义函数', '1', '06:46', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('21', '1', '4', '4-4 list排序内建函数、常用指令', '1', '07:46', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('22', '1', '4', '4-5 自定义指令', '1', '06:00', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('23', '1', '5', '5-1 类定义', '1', '01:30', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('24', '1', '5', '5-2 类创建', '1', '07:33', '1', 'http://www.baidu.com', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('31', '28', '0', '章节001', '1', '23:22', '1', '', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('32', '28', '31', '001-001', '1', '23:56', '1', 'http://www.baidu.com', '2017-04-15 00:00:00', '', '2018-04-18 20:24:25', '', '0');
INSERT INTO `t_course_section` VALUES ('33', '28', '31', '001-002', '2', '23:56', '1', 'http://www.baidu.com', '2017-04-15 00:00:00', '', '2018-04-18 20:24:25', '', '0');
INSERT INTO `t_course_section` VALUES ('34', '28', '0', '章节002', '2', '23:22', '1', '', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('35', '28', '34', '章节002-001', '1', '23:56', '1', 'http://www.baidu.com', '2017-04-15 00:00:00', '', '2018-04-18 20:24:25', '', '0');
INSERT INTO `t_course_section` VALUES ('36', '28', '0', '章节03', '3', '23:22', '1', '', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('37', '28', '36', '章节03-01', '1', '00:00', '1', '', '2017-04-15 00:00:00', '', '2018-04-18 20:24:25', '', '0');
INSERT INTO `t_course_section` VALUES ('38', '28', '36', '章节03-02', '2', '00:00', '1', '', '2017-04-15 00:00:00', '', '2018-04-18 20:24:25', '', '0');
INSERT INTO `t_course_section` VALUES ('39', '28', '0', '章节04', '5', '23:22', '1', '', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('40', '28', '39', '章节04-01', '1', '00:00', '1', '', '2017-04-15 00:00:00', '', '2018-04-18 20:24:25', '', '0');
INSERT INTO `t_course_section` VALUES ('41', '28', '39', '章节04-02', '2', '00:00', '1', '', '2017-04-15 00:00:00', '', '2018-04-18 20:24:25', '', '0');
INSERT INTO `t_course_section` VALUES ('42', '28', '0', 'fdsaf', '6', '', '1', '', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '1');
INSERT INTO `t_course_section` VALUES ('43', '28', '0', 'fdsaf', '7', '', '1', '', '0000-00-00 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '1');
INSERT INTO `t_course_section` VALUES ('44', '28', '0', '第一章：我是第一章', '8', '0:0', '1', '', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('45', '28', '44', '第一章：我是第一章', '1', '00:00', '1', '第一章：我是第一章', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('46', '28', '44', '', '2', '00:00', '1', '', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('47', '28', '44', '', '3', '00:00', '1', '', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('48', '28', '44', '', '4', '00:00', '1', '', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('49', '28', '0', '第二章：我是第二章', '10', '0:0', '1', '', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('50', '28', '49', '第二章：我是第二章', '1', '00:00', '1', '第二章：我是第二章', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('51', '28', '49', '', '2', '00:00', '1', '', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('52', '28', '49', '', '3', '00:00', '1', '', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('53', '28', '49', '', '4', '00:00', '1', '', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('54', '28', '0', '第一章：我是第一章', '11', '36:6', '1', '', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('55', '28', '54', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('56', '28', '54', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('57', '28', '54', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('58', '28', '54', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('59', '28', '0', '第二章：我是第二章', '13', '32:22', '1', '', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('60', '28', '59', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('61', '28', '59', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('62', '28', '59', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('63', '28', '59', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('64', '29', '0', '第一章：我是第一章', '1', '36:6', '1', '', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('65', '29', '64', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('66', '29', '64', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('67', '29', '64', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('68', '29', '64', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('69', '29', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('70', '29', '69', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('71', '29', '69', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('72', '29', '69', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('73', '29', '69', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2017-04-16 00:00:00', 'system', '2018-04-18 20:24:25', 'system', '0');
INSERT INTO `t_course_section` VALUES ('74', '2', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:03:47', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('75', '2', '74', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:03:48', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('76', '2', '74', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:03:48', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('77', '2', '74', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:03:48', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('78', '2', '74', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:03:48', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('79', '2', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:03:48', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('80', '2', '79', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:03:48', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('81', '2', '79', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:03:48', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('82', '2', '79', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:03:48', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('83', '2', '79', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:03:48', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('84', '20', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:12', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('85', '20', '84', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:12', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('86', '20', '84', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:12', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('87', '20', '84', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:12', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('88', '20', '84', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:12', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('89', '20', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:12', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('90', '20', '89', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:12', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('91', '20', '89', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:12', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('92', '20', '89', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:12', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('93', '20', '89', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:12', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('94', '6', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('95', '6', '94', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('96', '6', '94', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('97', '6', '94', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('98', '6', '94', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('99', '6', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('100', '6', '99', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('101', '6', '99', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('102', '6', '99', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('103', '6', '99', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('104', '3', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:34', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('105', '3', '104', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:34', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('106', '3', '104', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:34', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('107', '3', '104', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:34', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('108', '3', '104', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:34', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('109', '3', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:34', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('110', '3', '109', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:34', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('111', '3', '109', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:34', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('112', '3', '109', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:34', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('113', '3', '109', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:04:34', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('114', '15', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:17:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('115', '15', '114', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:17:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('116', '15', '114', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:17:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('117', '15', '114', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:17:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('118', '15', '114', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:17:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('119', '15', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:17:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('120', '15', '119', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:17:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('121', '15', '119', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:17:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('122', '15', '119', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:17:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('123', '15', '119', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:17:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('124', '12', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:22:26', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('125', '12', '124', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:22:26', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('126', '12', '124', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:22:26', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('127', '12', '124', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:22:26', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('128', '12', '124', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:22:26', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('129', '12', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:22:26', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('130', '12', '129', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:22:26', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('131', '12', '129', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:22:26', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('132', '12', '129', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:22:26', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('133', '12', '129', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:22:26', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('134', '10', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:24:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('135', '10', '134', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:24:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('136', '10', '134', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:24:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('137', '10', '134', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:24:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('138', '10', '134', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:24:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('139', '10', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:24:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('140', '10', '139', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:24:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('141', '10', '139', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:24:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('142', '10', '139', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:24:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('143', '10', '139', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:24:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('144', '8', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:25:40', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('145', '8', '144', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:25:40', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('146', '8', '144', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:25:40', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('147', '8', '144', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:25:40', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('148', '8', '144', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:25:40', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('149', '8', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:25:40', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('150', '8', '149', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:25:40', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('151', '8', '149', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:25:40', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('152', '8', '149', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:25:40', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('153', '8', '149', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:25:40', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('154', '19', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:27:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('155', '19', '154', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:27:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('156', '19', '154', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:27:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('157', '19', '154', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:27:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('158', '19', '154', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:27:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('159', '19', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:27:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('160', '19', '159', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:27:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('161', '19', '159', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:27:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('162', '19', '159', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:27:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('163', '19', '159', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:27:24', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('164', '18', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:30:04', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('165', '18', '164', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:30:04', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('166', '18', '164', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:30:04', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('167', '18', '164', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:30:04', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('168', '18', '164', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:30:04', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('169', '18', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:30:04', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('170', '18', '169', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:30:04', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('171', '18', '169', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:30:04', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('172', '18', '169', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:30:04', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('173', '18', '169', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:30:04', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('174', '7', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:34:21', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('175', '7', '174', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:34:21', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('176', '7', '174', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:34:21', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('177', '7', '174', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:34:21', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('178', '7', '174', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:34:21', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('179', '7', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:34:21', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('180', '7', '179', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:34:21', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('181', '7', '179', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:34:21', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('182', '7', '179', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:34:21', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('183', '7', '179', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:34:21', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('184', '22', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:02', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('185', '22', '184', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:02', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('186', '22', '184', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:02', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('187', '22', '184', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:02', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('188', '22', '184', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:02', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('189', '22', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:02', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('190', '22', '189', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:02', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('191', '22', '189', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:02', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('192', '22', '189', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:02', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('193', '22', '189', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:02', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('194', '5', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:52', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('195', '5', '194', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:52', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('196', '5', '194', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:52', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('197', '5', '194', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:52', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('198', '5', '194', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:52', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('199', '5', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:52', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('200', '5', '199', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:52', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('201', '5', '199', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:52', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('202', '5', '199', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:52', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('203', '5', '199', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:40:52', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('204', '14', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:00', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('205', '14', '204', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:00', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('206', '14', '204', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:00', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('207', '14', '204', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:00', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('208', '14', '204', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:00', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('209', '14', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:00', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('210', '14', '209', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:00', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('211', '14', '209', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:00', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('212', '14', '209', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:00', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('213', '14', '209', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:00', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('214', '13', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:39', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('215', '13', '214', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:39', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('216', '13', '214', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:39', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('217', '13', '214', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:39', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('218', '13', '214', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:39', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('219', '13', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:39', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('220', '13', '219', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:39', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('221', '13', '219', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:39', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('222', '13', '219', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:39', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('223', '13', '219', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:42:39', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('224', '30', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:45:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('225', '30', '224', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:45:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('226', '30', '224', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:45:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('227', '30', '224', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:45:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('228', '30', '224', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:45:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('229', '30', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:45:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('230', '30', '229', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:45:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('231', '30', '229', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:45:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('232', '30', '229', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:45:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('233', '30', '229', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-17 00:00:00', 'admin', '2018-04-17 16:45:08', 'admin', '0');
INSERT INTO `t_course_section` VALUES ('234', '31', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-24 00:00:00', '999999', '2018-04-24 16:46:53', '999999', '0');
INSERT INTO `t_course_section` VALUES ('235', '31', '234', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:46:53', '999999', '0');
INSERT INTO `t_course_section` VALUES ('236', '31', '234', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:46:53', '999999', '0');
INSERT INTO `t_course_section` VALUES ('237', '31', '234', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:46:53', '999999', '0');
INSERT INTO `t_course_section` VALUES ('238', '31', '234', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:46:53', '999999', '0');
INSERT INTO `t_course_section` VALUES ('239', '31', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-24 00:00:00', '999999', '2018-04-24 16:46:53', '999999', '0');
INSERT INTO `t_course_section` VALUES ('240', '31', '239', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:46:53', '999999', '0');
INSERT INTO `t_course_section` VALUES ('241', '31', '239', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:46:53', '999999', '0');
INSERT INTO `t_course_section` VALUES ('242', '31', '239', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:46:53', '999999', '0');
INSERT INTO `t_course_section` VALUES ('243', '31', '239', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:46:53', '999999', '0');
INSERT INTO `t_course_section` VALUES ('244', '32', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-24 00:00:00', '999999', '2018-04-24 16:48:22', '999999', '0');
INSERT INTO `t_course_section` VALUES ('245', '32', '244', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:48:22', '999999', '0');
INSERT INTO `t_course_section` VALUES ('246', '32', '244', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:48:22', '999999', '0');
INSERT INTO `t_course_section` VALUES ('247', '32', '244', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:48:22', '999999', '0');
INSERT INTO `t_course_section` VALUES ('248', '32', '244', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:48:22', '999999', '0');
INSERT INTO `t_course_section` VALUES ('249', '32', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-24 00:00:00', '999999', '2018-04-24 16:48:22', '999999', '0');
INSERT INTO `t_course_section` VALUES ('250', '32', '249', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:48:22', '999999', '0');
INSERT INTO `t_course_section` VALUES ('251', '32', '249', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:48:22', '999999', '0');
INSERT INTO `t_course_section` VALUES ('252', '32', '249', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:48:22', '999999', '0');
INSERT INTO `t_course_section` VALUES ('253', '32', '249', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:48:22', '999999', '0');
INSERT INTO `t_course_section` VALUES ('254', '33', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-24 00:00:00', '999999', '2018-04-24 16:50:35', '999999', '0');
INSERT INTO `t_course_section` VALUES ('255', '33', '254', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:50:35', '999999', '0');
INSERT INTO `t_course_section` VALUES ('256', '33', '254', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:50:35', '999999', '0');
INSERT INTO `t_course_section` VALUES ('257', '33', '254', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:50:35', '999999', '0');
INSERT INTO `t_course_section` VALUES ('258', '33', '254', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:50:35', '999999', '0');
INSERT INTO `t_course_section` VALUES ('259', '33', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-24 00:00:00', '999999', '2018-04-24 16:50:35', '999999', '0');
INSERT INTO `t_course_section` VALUES ('260', '33', '259', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:50:35', '999999', '0');
INSERT INTO `t_course_section` VALUES ('261', '33', '259', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:50:35', '999999', '0');
INSERT INTO `t_course_section` VALUES ('262', '33', '259', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:50:35', '999999', '0');
INSERT INTO `t_course_section` VALUES ('263', '33', '259', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:50:35', '999999', '0');
INSERT INTO `t_course_section` VALUES ('264', '34', '0', '第一章：我是第一章', '1', '36:06', '1', '', '2018-04-24 00:00:00', '999999', '2018-04-24 16:54:08', '999999', '0');
INSERT INTO `t_course_section` VALUES ('265', '34', '264', '1-001：我是001', '1', '09:00', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:54:08', '999999', '0');
INSERT INTO `t_course_section` VALUES ('266', '34', '264', '1-001：我是002', '2', '09:01', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:54:08', '999999', '0');
INSERT INTO `t_course_section` VALUES ('267', '34', '264', '1-001：我是003', '3', '09:02', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:54:08', '999999', '0');
INSERT INTO `t_course_section` VALUES ('268', '34', '264', '1-001：我是004', '4', '09:03', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:54:08', '999999', '0');
INSERT INTO `t_course_section` VALUES ('269', '34', '0', '第二章：我是第二章', '3', '32:22', '1', '', '2018-04-24 00:00:00', '999999', '2018-04-24 16:54:08', '999999', '0');
INSERT INTO `t_course_section` VALUES ('270', '34', '269', '2-001：我是001', '1', '08:04', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:54:08', '999999', '0');
INSERT INTO `t_course_section` VALUES ('271', '34', '269', '2-001：我是002', '2', '08:05', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:54:08', '999999', '0');
INSERT INTO `t_course_section` VALUES ('272', '34', '269', '2-001：我是003', '3', '08:06', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:54:08', '999999', '0');
INSERT INTO `t_course_section` VALUES ('273', '34', '269', '2-001：我是004', '4', '08:07', '1', 'http://www.baidu.com', '2018-04-24 00:00:00', '999999', '2018-04-24 16:54:08', '999999', '0');

-- ----------------------------
-- Table structure for `t_user_collections`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_collections`;
CREATE TABLE `t_user_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `classify` int(11) NOT NULL DEFAULT '0' COMMENT '用户收藏分类',
  `object_id` int(11) NOT NULL DEFAULT '0' COMMENT '收藏内容id',
  `tips` varchar(100) NOT NULL DEFAULT '' COMMENT '用户收藏备注',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户收藏';

-- ----------------------------
-- Records of t_user_collections
-- ----------------------------
INSERT INTO `t_user_collections` VALUES ('4', '1', '1', '1', '', '2017-05-06 12:00:40', 'system', '2018-04-18 21:02:32', 'system', '0');
INSERT INTO `t_user_collections` VALUES ('5', '1', '1', '20', '', '2017-05-06 12:00:40', 'system', '2018-04-18 21:02:32', 'system', '0');
INSERT INTO `t_user_collections` VALUES ('8', '2', '1', '19', '', '2018-04-18 00:00:00', 'system', '2018-04-18 21:02:37', 'system', '0');
INSERT INTO `t_user_collections` VALUES ('9', '2', '1', '18', '', '2018-04-18 00:00:00', 'system', '2018-04-18 21:02:43', 'system', '0');

-- ----------------------------
-- Table structure for `t_user_course_section`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_course_section`;
CREATE TABLE `t_user_course_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `section_id` int(11) NOT NULL DEFAULT '0' COMMENT '章节id',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态：0-学习中；1-学习结束',
  `rate` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='用户学习章节表';

-- ----------------------------
-- Records of t_user_course_section
-- ----------------------------
INSERT INTO `t_user_course_section` VALUES ('1', '1', '1', '7', '1', '50', '2017-05-03 00:00:00', 'system', '2018-04-17 15:36:51', 'system', '0');
INSERT INTO `t_user_course_section` VALUES ('2', '1', '1', '8', '1', '60', '2017-05-03 00:00:00', 'system', '2018-04-17 15:36:51', 'system', '0');
INSERT INTO `t_user_course_section` VALUES ('3', '1', '1', '12', '0', '0', '2017-05-03 00:00:00', 'system', '2018-04-18 21:21:51', 'system', '0');
INSERT INTO `t_user_course_section` VALUES ('4', '1', '1', '23', '0', '0', '2017-05-04 00:00:00', 'system', '2018-04-18 21:21:53', 'system', '0');
INSERT INTO `t_user_course_section` VALUES ('5', '2', '1', '24', '0', '0', '2017-05-04 00:00:00', 'system', '2018-04-18 21:21:33', 'wangyangming', '0');
INSERT INTO `t_user_course_section` VALUES ('6', '2', '1', '6', '0', '0', '2017-05-04 00:00:00', 'system', '2018-04-18 21:21:59', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('7', '3', '1', '13', '0', '0', '2017-05-04 00:00:00', 'system', '2018-04-18 21:21:58', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('8', '3', '1', '14', '0', '0', '2017-05-04 00:00:00', 'system', '2018-04-18 21:21:57', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('9', '1', '1', '15', '0', '0', '2017-05-04 00:00:00', 'system', '2018-04-18 21:21:56', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('10', '4', '1', '21', '0', '0', '2017-05-04 00:00:00', 'system', '2018-04-18 21:21:56', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('11', '4', '1', '9', '0', '0', '2017-05-04 00:00:00', 'system', '2018-04-18 21:21:55', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('12', '1', '1', '9', '0', '0', '2017-05-06 00:00:00', 'system', '2018-04-18 21:21:54', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('13', '27', '1', '12', '0', '0', '2018-04-13 00:00:00', 'admin', '2018-04-24 09:32:45', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('14', '29', '1', '12', '0', '0', '2018-04-15 00:00:00', 'long', '2018-04-15 11:25:24', 'long', '0');
INSERT INTO `t_user_course_section` VALUES ('15', '2', '1', '12', '0', '0', '2018-04-17 00:00:00', 'zengxianlong', '2018-04-17 15:36:51', 'zengxianlong', '0');
INSERT INTO `t_user_course_section` VALUES ('16', '30', '1', '12', '0', '0', '2018-04-17 00:00:00', 'longgege', '2018-04-17 18:51:06', 'longgege', '0');
INSERT INTO `t_user_course_section` VALUES ('17', '27', '1', '6', '0', '0', '2018-04-18 00:00:00', 'admin', '2018-04-23 23:39:41', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('18', '27', '1', '7', '0', '0', '2018-04-18 00:00:00', 'admin', '2018-04-18 20:08:02', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('19', '27', '1', '14', '0', '0', '2018-04-18 00:00:00', 'admin', '2018-04-18 19:31:13', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('20', '27', '1', '8', '0', '0', '2018-04-18 00:00:00', 'admin', '2018-04-18 20:08:04', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('21', '3', '20', '85', '0', '0', '2018-04-18 00:00:00', 'huangzelong', '2018-04-18 20:43:52', 'huangzelong', '0');
INSERT INTO `t_user_course_section` VALUES ('22', '3', '1', '12', '0', '0', '2018-04-18 00:00:00', 'huangzelong', '2018-04-18 20:45:26', 'huangzelong', '0');
INSERT INTO `t_user_course_section` VALUES ('23', '5', '1', '12', '0', '0', '2018-04-18 00:00:00', 'zhengguixing', '2018-04-18 20:46:16', 'zhengguixing', '0');
INSERT INTO `t_user_course_section` VALUES ('24', '27', '28', '62', '0', '0', '2018-04-18 00:00:00', 'admin', '2018-04-18 20:56:41', 'admin', '0');
INSERT INTO `t_user_course_section` VALUES ('25', '2', '28', '62', '0', '0', '2018-04-18 00:00:00', 'zengxianlong', '2018-04-18 20:57:58', 'zengxianlong', '0');
INSERT INTO `t_user_course_section` VALUES ('26', '2', '2', '75', '0', '0', '2018-04-18 00:00:00', 'zengxianlong', '2018-04-18 20:58:08', 'zengxianlong', '0');
INSERT INTO `t_user_course_section` VALUES ('27', '31', '1', '12', '0', '0', '2018-04-18 00:00:00', '999999', '2018-04-18 22:06:50', '999999', '0');
INSERT INTO `t_user_course_section` VALUES ('28', '27', '15', '115', '0', '0', '2018-04-23 00:00:00', 'admin', '2018-04-23 23:36:58', 'admin', '0');

-- ----------------------------
-- Table structure for `t_user_follows`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_follows`;
CREATE TABLE `t_user_follows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `follow_id` int(11) NOT NULL DEFAULT '0' COMMENT '关注的用户id',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户关注';

-- ----------------------------
-- Records of t_user_follows
-- ----------------------------
INSERT INTO `t_user_follows` VALUES ('1', '1', '2', '0000-00-00 00:00:00', 'system', '2018-04-18 21:02:32', 'system', '0');
INSERT INTO `t_user_follows` VALUES ('2', '1', '3', '0000-00-00 00:00:00', 'system', '2018-04-18 21:02:32', 'system', '0');
INSERT INTO `t_user_follows` VALUES ('3', '1', '4', '0000-00-00 00:00:00', 'system', '2018-04-18 21:02:32', 'system', '0');
INSERT INTO `t_user_follows` VALUES ('4', '1', '5', '0000-00-00 00:00:00', 'system', '2018-04-18 21:02:32', 'system', '0');
INSERT INTO `t_user_follows` VALUES ('5', '3', '2', '2018-04-18 00:00:00', 'system', '2018-04-18 20:43:26', 'system', '0');
INSERT INTO `t_user_follows` VALUES ('6', '5', '2', '2018-04-18 00:00:00', 'system', '2018-04-18 20:44:50', 'system', '0');
INSERT INTO `t_user_follows` VALUES ('9', '31', '2', '2018-04-18 00:00:00', 'system', '2018-04-18 22:06:49', 'system', '0');

-- ----------------------------
-- Table structure for `t_user_message`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_message`;
CREATE TABLE `t_user_message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '消息接收用户id',
  `send_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '消息发起用户id',
  `send_user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '消息发起用户名称',
  `ref_id` varchar(50) NOT NULL DEFAULT '0' COMMENT '引用id',
  `ref_Content` varchar(256) NOT NULL DEFAULT '' COMMENT '引用内容',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '通知的类型，1-评论，2-关注，3-答疑',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '未读（0）、已读（1）',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_message
-- ----------------------------
