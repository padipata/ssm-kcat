/*
Navicat MySQL Data Transfer

Source Server         : kangkang
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : kcat

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-08-13 21:13:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for bang
-- ----------------------------
DROP TABLE IF EXISTS `bang`;
CREATE TABLE `bang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoName` varchar(255) DEFAULT NULL,
  `videoType` int(11) DEFAULT NULL,
  `videoUrl` varchar(255) DEFAULT NULL,
  `videoImage` varchar(255) DEFAULT NULL,
  `videoExplain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `videoType` (`videoType`),
  CONSTRAINT `bang_ibfk_1` FOREIGN KEY (`videoType`) REFERENCES `bang_title` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bang
-- ----------------------------
INSERT INTO `bang` VALUES ('1', '那些你不知道的Word高手技巧', '1', 'http://study.163.com/course/introduction/1002970004.htm', 'bang/bangA33.jpg', '分享实用好玩的Word操作技巧，提高大家的办公效率。关注小黑课堂微信公众号：xhkt521获取更多学习资料，让你变身Office办公达人。');
INSERT INTO `bang` VALUES ('2', '汇编C语言C++基础原理系列经典教程', '1', 'https://ke.qq.com/course/160243', 'bang/bangA37.jpg', '从汇编入手，系统的讲述C\\C++的原理，深入浅出，精辟而细致，是目前公认最好的C\\C++基础理论教程！请务必从汇编开始按照既定的教学顺序学起，否则很难真正理解C语言及其他部分课程');
INSERT INTO `bang` VALUES ('3', '网页设计制作，带你认识网站架构', '1', 'https://ke.qq.com/course/201443', 'bang/bangA42.jpg', '网页界面设计，课程通过案例分析、原型设计、将理论知识与项目案列结合，帮助大家独立设计完成界面制作。');
INSERT INTO `bang` VALUES ('4', '2016JAVA+大数据讲座', '1', 'https://ke.qq.com/course/158932', 'bang/bangA43.jpg', '掌握JAVA+大数据学习方法');
INSERT INTO `bang` VALUES ('5', 'HTML5入门', '1', 'http://study.163.com/course/introduction/171001.htm', 'bang/bangA46.jpg', '本课程介绍的是 HTML5 的入门知识，即便是没有计算机专业知识背景的学生，也可以轻松掌握。');
INSERT INTO `bang` VALUES ('6', '面向对象程序设计-C++', '1', 'http://study.163.com/course/introduction/271005.htm', 'bang/bangA47.jpg', '本课程以C++语言来介绍面向对象程序设计的原理和方法，内容包括面向对象程序设计基本原理和C++特有的语言特性。');
INSERT INTO `bang` VALUES ('7', 'C语言从零到精通', '1', 'http://study.163.com/course/introduction/1003634022.htm', 'bang/bangA48.jpg', 'C语言从零开始，详细讲解、全程实战，涵盖C语言知识点、易错点。');
INSERT INTO `bang` VALUES ('8', '网页前端制作及PHP网站搭建课程', '1', 'http://study.163.com/course/introduction/1311001.htm', 'bang/bangA49.jpg', '从零基础由浅入深讲解PHP语言的数据类型、流程控制、数组、函数、文件操作等知识点。');
INSERT INTO `bang` VALUES ('9', 'oeasy html5、css3网页设计与制作', '1', 'http://study.163.com/course/introduction/266008.htm', 'bang/bangA50.jpg', '本教程专门讲解网页设计与制作前端技术h5(html5)+css3+javascript。');
INSERT INTO `bang` VALUES ('10', 'Java开发全套精编教程【完整版】', '2', 'http://study.163.com/course/introduction/1559013.htm', 'bang/bangA01.jpg', '零基础、动手能力差、不愿意错过任何java知识的编程爱好者');
INSERT INTO `bang` VALUES ('11', 'H5/web前端开发｜HTML5+CSS3', '2', 'http://study.163.com/course/introduction/1002904008.htm', 'bang/bangA02.jpg', '本课程从最基础的HTML5概述和新增常用元素学起，讲解了新的页面组织的标记');
INSERT INTO `bang` VALUES ('12', 'JavaScript教程-从入门到精通', '2', 'http://study.163.com/course/introduction/224014.htm', 'bang/bangA03.jpg', 'JavaScript是一种网页交互语言，为网页增添了巨大的表现力和交互能力');
INSERT INTO `bang` VALUES ('13', '面向对象程序设计-C++', '2', 'http://study.163.com/course/introduction/271005.htm', 'bang/bangA04.jpg', '本课程以C++语言来介绍面向对象程序设计的原理和方法，内容包括面向对象程序设计基本原理和C++特有的语言特性。');
INSERT INTO `bang` VALUES ('14', '零基础学编程系列之C语言', '2', 'http://study.163.com/course/introduction/1003425004.htm', 'bang/bangA05.jpg', '我们的终极目标是学完课程能做出自己需要的程序，能用程序来解决身边的问题。');
INSERT INTO `bang` VALUES ('15', '李炎恢老师jQuery视频教程', '2', 'http://study.163.com/course/introduction/501006.htm', 'bang/bangA06.jpg', '掌握jQuery基本用法，通过一个实战来引导实际开发');
INSERT INTO `bang` VALUES ('16', 'Flash零基础课件制作全过程', '2', 'http://study.163.com/course/introduction/1003400002.htm', 'bang/bangA09.jpg', '本课程是基于Flash课件制作的教程，通过flash课件制作全过程，一步一步从零基础到能运用flash进行课件制作');
INSERT INTO `bang` VALUES ('17', 'Android开发视频教程', '2', 'http://study.163.com/course/introduction/207001.htm', 'bang/bangA10.jpg', '该课程是一门面向广大编程爱好者的Android开发基础课程');
INSERT INTO `bang` VALUES ('18', 'IOS开发全套教程', '2', 'http://study.163.com/course/introduction/1002858003.htm', 'bang/bangA14.jpg', '涵盖IOS开发体系的XCode开发环境、基础组件、UI高级组件及UI布局、数据存储、网络编程、多媒体基础、高级动画、CocoaPods');
INSERT INTO `bang` VALUES ('19', '李炎恢Dreamweaver视频教程', '2', 'http://study.163.com/course/introduction/247001.htm', 'bang/bangA16.jpg', '对于Dreamweaver初学者、网页制作爱好者');
INSERT INTO `bang` VALUES ('20', '面向对象程序设计-C++', '2', 'http://study.163.com/course/introduction/271005.htm', 'bang/bangA04.jpg', '本课程以C++语言来介绍面向对象程序设计的原理和方法，内容包括面向对象程序设计基本原理和C++特有的语言特性。');
INSERT INTO `bang` VALUES ('21', '十分钟玩转PPT', '2', 'http://study.163.com/course/introduction/1097080.htm', 'bang/bangA32.jpg', '本课程为office办公软件下的PPT课程，主要帮助大家了解PPT模板的制作，帮助大家通过临摹PPT模板来学习掌握PPT，通过学习本课程即可了解一些PPT的基础知识，动手操作制作ppt模板。');
INSERT INTO `bang` VALUES ('22', '平面设计免费课PS/CDR/AI【航科教育】', '2', 'https://ke.qq.com/course/99159', 'bang/bangA35.jpg', '让学生了解设计师应该掌握那些知识');
INSERT INTO `bang` VALUES ('23', '云基础知识', '2', 'https://ke.qq.com/course/159656', 'bang/bangA38.jpg', '做为IT从业者，了解云计算相关技术，很可能将会影响你未来10年的职业发展。');
INSERT INTO `bang` VALUES ('24', '虚拟机快照及相关动手实验', '2', 'https://ke.qq.com/course/134496', 'bang/bangA39.jpg', '虚拟机快照及相关动手实验');
INSERT INTO `bang` VALUES ('25', 'Linux高级系统管理', '3', 'http://study.163.com/course/introduction/232008.htm', 'bang/bangA07.jpg', '针对Linux系统的运维技术进行深入讲解，深入了解Linux原理及复杂管理工具及功能的使用');
INSERT INTO `bang` VALUES ('26', 'PHP100视频教程2012版', '3', 'http://study.163.com/course/introduction/224012.htm', 'bang/bangA08.jpg', '我们的教程就是让人人都可以学会WEB开发和PHP程序设计。');
INSERT INTO `bang` VALUES ('27', '云计算基础知识', '3', 'http://study.163.com/course/introduction/1003476005.htm', 'bang/bangA11.jpg', '做为IT从业者，了解云计算相关技术，很可能将会影响你未来10年的职业发展。');
INSERT INTO `bang` VALUES ('28', 'MySQL数据库', '3', 'http://study.163.com/course/introduction/247003.htm', 'bang/bangA12.jpg', '这部分内容不仅有数据库的应用介绍，也有在PHP处理数据库的应用');
INSERT INTO `bang` VALUES ('29', '李炎恢JavaScript教程', '3', 'http://study.163.com/course/introduction/252008.htm', 'bang/bangA15.jpg', 'javaScript是一种基于对象和事件驱动并具有相对安全性的客户端脚本语言');
INSERT INTO `bang` VALUES ('30', '李炎恢Dreamweaver视频教程', '3', 'http://study.163.com/course/introduction/247001.htm', 'bang/bangA17.jpg', '对于Dreamweaver初学者、网页制作爱好者');
INSERT INTO `bang` VALUES ('31', 'H5/web前端开发｜HTML5+CSS3', '3', 'http://study.163.com/course/introduction/1002904008.htm', 'bang/bangA02.jpg', '本课程从最基础的HTML5概述和新增常用元素学起，讲解了新的页面组织的标记');
INSERT INTO `bang` VALUES ('32', 'Flash零基础课件制作全过程', '3', 'http://study.163.com/course/introduction/1003400002.htm', 'bang/bangA09.jpg', '本课程是基于Flash课件制作的教程，通过flash课件制作全过程，一步一步从零基础到能运用flash进行课件制作');
INSERT INTO `bang` VALUES ('33', '李炎恢老师jQuery视频教程', '3', 'http://study.163.com/course/introduction/501006.htm', 'bang/bangA06.jpg', '掌握jQuery基本用法，通过一个实战来引导实际开发');
INSERT INTO `bang` VALUES ('34', 'JavaScript教程-从入门到精通', '3', 'http://study.163.com/course/introduction/224014.htm', 'bang/bangA03.jpg', 'JavaScript是一种网页交互语言，为网页增添了巨大的表现力和交互能力');
INSERT INTO `bang` VALUES ('35', '零基础学编程系列之C语言', '3', 'http://study.163.com/course/introduction/1003425004.htm', 'bang/bangA05.jpg', '我们的终极目标是学完课程能做出自己需要的程序，能用程序来解决身边的问题。');
INSERT INTO `bang` VALUES ('36', 'Unity5.2 基础入门教程', '3', 'https://ke.qq.com/course/155176', 'bang/bangA30.jpg', '在这里会讲解Unity的基本使用，还有一个小的案例Roll A Ball ，这个教程是以Unity5.2的版本为基础的。');
INSERT INTO `bang` VALUES ('37', '【录播＋辅导】VR/AR零基础入门【渥瑞达科技】', '3', 'https://ke.qq.com/course/171128', 'bang/bangA31.jpg', '本套课程是一套完整的VR/AR学习基础课程，主要针对于零基础的学生进行录制的，本课程包含了C#基础知识、C#进阶知识，通过对该课程的学习，能够对C#有着更深入的理解，也能够为之后学习VR开发奠定基础。');
INSERT INTO `bang` VALUES ('38', '游戏UI设计灵魂课！心机婊同事求别学！', '3', 'https://ke.qq.com/course/109293', 'bang/bangA40.jpg', '了解基本的设计原理，完善设计基础，学习设计方法与软件技巧。');
INSERT INTO `bang` VALUES ('39', 'AI图标基础第四课', '3', 'https://ke.qq.com/course/178030', 'bang/bangA41.jpg', '运用钢笔等工具，制作矢量的人物不规则的图形设计。');
INSERT INTO `bang` VALUES ('40', 'Linux 入门基础', '3', 'http://study.163.com/course/introduction/232007.htm', 'bang/bangA44.jpg', '介绍Linux基础知识概念及基本操作技巧，以期能够熟练掌握Linux系统的使用、管理、维护及相关原理。内容将包括Linux基本操作、磁盘及文件系统管理、用户权限、网络、软件管理及多命令协作等等基础知识');
INSERT INTO `bang` VALUES ('41', '16位MSP430单片机学习教程', '4', 'http://study.163.com/course/introduction/1003811004.htm', 'bang/bangA45.jpg', '视屏课程中，我们会重点讲解该单片机的常用资源、编程方法、以及相关硬件电路，让大家能够快速掌握这款16位微控制器，并灵活应用在自己的项目开发中。');
INSERT INTO `bang` VALUES ('42', '3ds Max', '5', 'http://study.163.com/course/introduction/1438004.htm', 'bang/bangA13.jpg', '本课程为3ds Max软件的入门课程，将分为四个专题，分辨为3ds Max技术初步、动画技术初步、建模技术初步和材质与贴图技术初步');
INSERT INTO `bang` VALUES ('43', 'Android开发视频教程', '5', 'http://study.163.com/course/introduction/207001.htm', 'bang/bangA10.jpg', '该课程是一门面向广大编程爱好者的Android开发基础课程');
INSERT INTO `bang` VALUES ('44', 'Flash零基础课件制作全过程', '5', 'http://study.163.com/course/introduction/1003400002.htm', 'bang/bangA09.jpg', '本课程是基于Flash课件制作的教程，通过flash课件制作全过程，一步一步从零基础到能运用flash进行课件制作');
INSERT INTO `bang` VALUES ('45', 'JavaScript/jquery核心技术大揭秘', '5', 'https://ke.qq.com/course/134996', 'bang/bangA26.jpg', '用最简洁、易懂的语言讲述js/jquery，让您快速掌握js/jquery核心知识点，并迅速上手做酷炫网页特效。');
INSERT INTO `bang` VALUES ('46', '前端实战：教你用vue.js做个TODO List', '5', 'https://ke.qq.com/course/190123', 'bang/bangA27.jpg', 'vue.js是2017年最火的前端框架之一，一份前端简历如果缺少vue.js项目来锦上添花，简直无颜以对面试官呀！');
INSERT INTO `bang` VALUES ('47', '跟老张一起学Android--安卓基础篇--开发环境搭建［至远科技］', '5', 'https://ke.qq.com/course/106256', 'bang/bangA28.jpg', '跟老张一起学Android，是一个以零基础为起点，以生动幽默的方式，带将大家进入Android的世界。');
INSERT INTO `bang` VALUES ('48', '职场小白必学的PPT动画技巧', '5', 'http://study.163.com/course/introduction/1003000011.htm', 'bang/bangA29.jpg', '结合实际动画案例讲解PPT动画制作的原理，让初学者更好的掌握动画制作技巧.关注小黑课堂微信公众号：xhkt521获取更多学习资料');
INSERT INTO `bang` VALUES ('49', '网站开发绝杀技(html/css/js/jq/sql/c#)', '5', 'https://ke.qq.com/course/20945', 'bang/bangA34.jpg', '通过两个半月的在线系统学习，学员可以掌握web前端、sql server数据库、C#/.NET 4.5最核心的知识内容，通过所学到的技术，做出交互性强、系统稳固、外观酷炫的软件系统。');
INSERT INTO `bang` VALUES ('50', '和小白一起学设计法则——从零实战，快速提升设计思维', '5', 'https://ke.qq.com/course/119073', 'bang/bangA36.jpg', '专门针对新人小白的设计课程，全程精华干货，用一种轻松、简单、有趣的方式，学习设计当中重要的入门设计法则，快速提升新人设计思想，摆脱只会软件不会设计的尴尬。');

-- ----------------------------
-- Table structure for bang_title
-- ----------------------------
DROP TABLE IF EXISTS `bang_title`;
CREATE TABLE `bang_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bang_title
-- ----------------------------
INSERT INTO `bang_title` VALUES ('1', '计算机应用');
INSERT INTO `bang_title` VALUES ('2', '云计算');
INSERT INTO `bang_title` VALUES ('3', '电子商务');
INSERT INTO `bang_title` VALUES ('4', '电子信息工程');
INSERT INTO `bang_title` VALUES ('5', '动漫设计与制作');

-- ----------------------------
-- Table structure for soft
-- ----------------------------
DROP TABLE IF EXISTS `soft`;
CREATE TABLE `soft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `softName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of soft
-- ----------------------------
INSERT INTO `soft` VALUES ('1', 'office 2010');
INSERT INTO `soft` VALUES ('2', 'SSH');
INSERT INTO `soft` VALUES ('3', 'Adobe Flash CS6');
INSERT INTO `soft` VALUES ('4', 'Android ADT');
INSERT INTO `soft` VALUES ('5', 'Cisco Packet Tracer');
INSERT INTO `soft` VALUES ('6', 'Dreamware CS6');
INSERT INTO `soft` VALUES ('7', 'MatLab 6.5');
INSERT INTO `soft` VALUES ('8', 'MyEclipse 8.6');
INSERT INTO `soft` VALUES ('9', 'Photoshop CS6');
INSERT INTO `soft` VALUES ('10', 'SQL Server 2005');
INSERT INTO `soft` VALUES ('11', 'SQL Server 2008');
INSERT INTO `soft` VALUES ('12', 'VC++ 6.0');
INSERT INTO `soft` VALUES ('13', 'Vmware');
INSERT INTO `soft` VALUES ('14', 'Eclipse 3.2');
INSERT INTO `soft` VALUES ('15', 'lingo 9.0');
INSERT INTO `soft` VALUES ('16', '微信开发者工具');
INSERT INTO `soft` VALUES ('17', '网页三剑客（MX）');
INSERT INTO `soft` VALUES ('18', 'ensp');
INSERT INTO `soft` VALUES ('19', 'VirtualBox');
INSERT INTO `soft` VALUES ('20', 'unity 3D 5.0');
INSERT INTO `soft` VALUES ('21', '3ds Max 2014');
INSERT INTO `soft` VALUES ('22', 'Adobe Effects CS6');
INSERT INTO `soft` VALUES ('23', 'Premiere pro CS6');
INSERT INTO `soft` VALUES ('24', 'ImageReady CS2');
INSERT INTO `soft` VALUES ('25', 'Progisp');
INSERT INTO `soft` VALUES ('26', 'stc-isp-15xx-v6.85D');
INSERT INTO `soft` VALUES ('27', 'Quartus II 12.0');
INSERT INTO `soft` VALUES ('28', 'Proteus Pro 7.8');
INSERT INTO `soft` VALUES ('29', 'Keil uVision4');
INSERT INTO `soft` VALUES ('30', 'icc avr');
INSERT INTO `soft` VALUES ('31', 'GX simulator6');
INSERT INTO `soft` VALUES ('32', 'securecrt 5.2');
INSERT INTO `soft` VALUES ('33', 'Ewb50');
INSERT INTO `soft` VALUES ('34', '用友T3');
INSERT INTO `soft` VALUES ('35', 'pocib');
INSERT INTO `soft` VALUES ('36', 'S7 200');
INSERT INTO `soft` VALUES ('37', 'STEP 7 MicroWIN');
INSERT INTO `soft` VALUES ('38', 'AutoCAD 2008');
INSERT INTO `soft` VALUES ('39', 'ISIS 7 Professional');
INSERT INTO `soft` VALUES ('40', 'GPPW');
INSERT INTO `soft` VALUES ('41', 'solidWorks 2010');
INSERT INTO `soft` VALUES ('42', 'RobotStudio 5.61');
INSERT INTO `soft` VALUES ('43', 'winCC Flexible 2008');
INSERT INTO `soft` VALUES ('44', 'Keil uVision3');
INSERT INTO `soft` VALUES ('45', 'UG 8.0');
INSERT INTO `soft` VALUES ('46', 'FluidSim');
INSERT INTO `soft` VALUES ('47', 'Illustrator CS5');
INSERT INTO `soft` VALUES ('48', 'Painter 2016');
INSERT INTO `soft` VALUES ('49', 'MAYA');
INSERT INTO `soft` VALUES ('50', 'CorelDRAW X4');
INSERT INTO `soft` VALUES ('51', 'Rhinoceros 5.0');
INSERT INTO `soft` VALUES ('52', '富怡服装CAD');
INSERT INTO `soft` VALUES ('53', 'audition CS6');
INSERT INTO `soft` VALUES ('56', '琪儿');

-- ----------------------------
-- Table structure for tzz_login
-- ----------------------------
DROP TABLE IF EXISTS `tzz_login`;
CREATE TABLE `tzz_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `className` varchar(255) NOT NULL,
  `telPhone` varchar(255) NOT NULL,
  `qq` varchar(255) NOT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tzz_login
-- ----------------------------
INSERT INTO `tzz_login` VALUES ('6', '陈协斌等', '爸爸一家人', '信工学院', '网络等', '15521007464', '1772985411', '0');
INSERT INTO `tzz_login` VALUES ('7', '梁泽康', '八百逗比奔北坡', '信息工程学院', '电子商务2班', '15521450659', '278331323', '1');
INSERT INTO `tzz_login` VALUES ('8', '李静 何楚欣', '炒鸡无敌媚烧女', '信息工程学院', '动漫制作技术A班 电子商务A班', '15521458867', '773532205', '0');
INSERT INTO `tzz_login` VALUES ('9', '徐翠雯 余洁仪', '徐小眼和余大眼', '商贸学院', '15市场营销1', '15521149527', '429203922', '0');
INSERT INTO `tzz_login` VALUES ('10', '邓文锐', '逗小锐', '信息工程学院', '计算机应用技术2班', '15521459942', '1123852966', '1');
INSERT INTO `tzz_login` VALUES ('11', '陈城柱', '团结互助', '信工', '15电商A', '15626106700', '852198215', '0');
INSERT INTO `tzz_login` VALUES ('12', '凌铭辉', '个人', '信工', '电子应用班', '13682633882', '727787641', '1');
INSERT INTO `tzz_login` VALUES ('13', '陈嘉欣，林奕源，林春华', '易燃易爆炸', '信息工程学院', '14动漫C班', '15692029577', '593003124', '1');
INSERT INTO `tzz_login` VALUES ('14', '李晓芳   张海滢    林楚真', '坨哥', '信息工程学院', '计算机应用技术2班', '15521450591', '1063124290', '0');
INSERT INTO `tzz_login` VALUES ('15', '肖棉钰，彭月蓉', '吴线鹿由', '信息工程学院', '云计算技术与应用', '15521472664', '1160409193', '0');
INSERT INTO `tzz_login` VALUES ('16', '卢碧珍，孔晓雯，伍淑娟', 'I Girls', '广州科技贸易职业学院', '工商班', '15521131747', '974700421', '1');
INSERT INTO `tzz_login` VALUES ('17', '黄文素，梁诗淇，李步年', '小虎工作室', '信息工程学院', '16级动漫', '15626104023', '1287426940', '0');
INSERT INTO `tzz_login` VALUES ('18', '陈少敏，汪爱诗，陈智杰', '小虎工作室团队', '信息工程学院', '16级动漫', '15626104023', '1287426940', '0');
INSERT INTO `tzz_login` VALUES ('19', '陈马和  陈晓儒', '程咬金', '创意设计学院', '15环B', '15521145723', '1753650823', '0');
INSERT INTO `tzz_login` VALUES ('20', '林泽煜！李暖暖！刘洁新', '666小组', '信息工程学院', '电子信息工程技术', '15626102826', '1107595099', '0');
INSERT INTO `tzz_login` VALUES ('21', '陈斯', '莫逆', '机电', '15自动化', '15626104821', '359109700', '1');
INSERT INTO `tzz_login` VALUES ('22', '李瑛琪 王晓敏', '7296', '管理学院', '15社会工作班', '15521140761', '1195095297', '0');
INSERT INTO `tzz_login` VALUES ('23', '冯智慧', '智慧树下你和我', '管理学院', '物流2班', '15521138071', '1092824404@qq.com', '1');
INSERT INTO `tzz_login` VALUES ('24', '徐翠雯', 'Super J', '商贸学院', '15级市场营销1班', '15521149527', '429203922', '1');
INSERT INTO `tzz_login` VALUES ('25', '苏醒健', '简简单单', '管理学院', '16物流管理2班', '15521459202', '1182979920', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `userPwd` char(40) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `birthday` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `groupName` varchar(255) CHARACTER SET utf8mb4 DEFAULT '普通用户',
  PRIMARY KEY (`id`,`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '6828B9D4DC8', '6C3HVGXPGQG', 'KmL1fG@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('2', '300OUXIT5BQ', '503RPPJGARY', 'gcg0ph@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('3', 'RBF2E0SS78X', '31DJ616R56U', '40k1EM@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('4', 'YJFDNA663D', '41P7TFO267', '1ouE26@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('5', 'YQBVU5RJV4G', 'CC31KWW70DI', 'vY88tv@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('6', '72N1EUDW764', '2C6BJT0IJD6', '3y1LN4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('7', '4232PG4X0Q4', 'XV162HLEEQK', 'V45r6r@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('8', '4IU5W3026S0', 'EER33A702V1', 'f5Nt56@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('9', '317D94M49RH', 'S4H02RJG8RG', 'Y4rCMB@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('10', '36WHP6L9H1E', '0L5Z35QS18W', 'B50cmQ@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('11', '12FEE53ZZ09', 'UO795M7QACK', '1a53Bt@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('12', 'M8056AENHQ3', 'GI8LK8952FH', '272X64@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('13', '6R8YKB004BU', 'UPU2341RTT0', 'bxEwbF@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('14', '33CF2RVR9Y7', 'AAX39D2LZF4', 'W833Uf@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('15', '0798C60DL1N', '14NSYD8LDQF', 'n6b7V2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('16', 'IRX8U563EW4', '38K39XK6BV6', 'K31r5b@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('17', '7334M30XVCO', '5Q1J27318XH', '504652@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('18', '9SZ1M8ZU1CO', 'KGPY25OJI35', 'j4Y2eg@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('19', '80G6OD7U732', 'CF7XW2M0M96', '047rsp@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('20', 'Q79G7UQ60CW', 'N21QQDS4PV0', 'rnJGN0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('21', '3AJK58353RR', '44GU63C2O78', 'lB73bi@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('22', '8T4L4U74N20', 'LIJ3T1N561T', '403818@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('23', '4DK890IQH07', '7RQY7C02CXA', '7GI061@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('24', '3QTE64L0047', '88RL7M0YRJE', '777Sx0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('25', 'D2MHQKD8Z9J', '99W63C80SX0', 'RhgM88@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('26', 'KHWR66R9T3R', '3U43ERQ7779', 'Vp112x@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('27', '4D392W9IEZ8', 'W51553DJJ4W', '883QQu@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('28', 'V6YDDR9WR7X', 'IH9D8Q1HT99', '23183L@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('29', '72RVS37FJTU', '1JCBKYWBB5I', '5jP4Y1@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('30', '5K983368X60', 'NP7TEHA6H5Q', 'v8i5eL@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('31', 'Z4SY55BN9IQ', '055UKJQ31Y8', '57286T@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('32', '172I938YWJZ', '9M9C9U7M751', '7S4107@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('33', '2ONJ5F97684', '2J3K129XM18', '1HKSw2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('34', 'HY1N92J8885', '84QU35VYC42', '3HtaJH@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('35', '187SCH3994Q', 'HV6NG7F485G', 'bd80w4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('36', 'M437L3E3U44', 'R694Z20656K', 'Pb78xI@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('37', '5D2M91X3L21', '5KU262FSII1', '6a23Lk@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('38', 'Z5G155WP962', '8243AA1S511', '814BQf@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('39', 'B0M36M2801I', '94ZTA69N3JM', 'W27IC8@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('40', '4FS38TB1375', 'NR7J8589422', 'S3s5sB@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('41', '1X1229EJID4', 'F77W6URX091', '732l7i@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('42', '3O75J449ZYI', 'IR934M5GLZ9', '61VR7w@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('43', '3703H6QL223', '10GU27171L2', '716441@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('44', '356C8J226O7', 'OCF3CC5T130', 'yN8S6U@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('45', '3874WOK64C3', '2I1Q9I802SM', 'oy57JR@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('46', 'I18GHB1YD5A', 'U6T2C52A0U2', '01XO8K@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('47', '743B36FA31E', '38UQ5V8FPXA', 'R70PNF@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('48', 'OJ8ED9LGZU4', 'EYE475ZFT42', 'O85b87@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('49', '33P49G178OW', 'RH31J69Z91N', '218D06@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('50', 'Y5SR86U54S6', 'TL7668MH92Z', 'b4Td2A@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('51', 'Q7R9P4CS9W4', '655378J0T2F', '6I3GoG@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('52', '5H5V0OP5879', 'D2N8X5E6G8I', 'E1vfx3@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('53', 'II00080G4L5', '9DIHRAYC1TP', 'Sga77I@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('54', '7699953PCJ8', 'PQ57K914V16', '8m82X4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('55', '270496HBPS1', '270748L4208', 'Y0R56N@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('56', 'N4U3YR83XF3', '670T740XPVS', 'n1hg01@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('57', 'U6SI2LX4949', 'SGTOY380U01', '473T6A@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('58', 'OQ7V5XTP2V3', '38Y00Z80416', '5st1g2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('59', '81P5VW4880L', 'F0WG5Q227DO', 'qp64va@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('60', 'FX06YB480TU', 'HQ2I868336Y', 'D0kwEV@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('61', '059WQ9L08KP', 'TL734WBLD4J', 'FRaL0n@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('62', 'GBL9E916027', '2UF31AWG5G7', '3PrX10@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('63', '6S506V8JXV7', '9CECHCA7249', 'R16bP0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('64', 'SXA1BYCLSVK', 'HA60QK9XBWA', '800J4T@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('65', 'QPC23D0K3ZQ', 'Z0G2916U8T9', 'H602Am@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('66', '31O6SW55TX2', '0IOV53NOWL9', 'kvdg7w@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('67', '7B1H10P29OU', 'N1R118U2YI6', '5aX87B@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('68', '3W70P472L8A', 'I71775TLM88', '54mG76@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('69', 'H0Q0IH07J99', 'H11SK491064', '682u82@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('70', 'S6K4R5291PU', '16690769870', 'S5h417@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('71', '7XTL849I800', '31G7675C1I5', 'm02lEC@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('72', '0R1ID75XS17', '2V15PC0KYC8', 'x1JFn1@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('73', '2MHA30O255D', 'ZUC8K243E9U', '4MtVux@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('74', 'FVC53HXH3U4', 'M63U755O945', 'Vp5IN5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('75', 'RV756XAKA87', '28W6ZNA6WZP', '608c03@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('76', '20BJ2QOMZNX', '9AU951JU539', 'wq2823@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('77', 'YDRMXK7WFGG', 'IDD14P013MB', '4l0R3y@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('78', '761M20JAR2J', 'Z99A83735Q5', 'W21BCe@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('79', 'T21604BD4J9', '8SRJA72OS6V', 'h1Ds7U@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('80', 'C8HEG5DOVFL', 'JAEIRFNDJ67', '8X567i@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('81', '057DV7FV6E2', 'P2EZSTAL3TK', '8X8550@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('82', 'LU14C265L69', 'IUAPSND7I7B', 'Y1R4Tw@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('83', '73AKFZ4O8V5', 'N16XV54T5T0', 'J051X7@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('84', '2147672H3YO', '4C3710O27AN', 'qV4K12@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('85', 'H36CA6EAT78', '9RN42R4R5B0', 't78303@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('86', '390604C7FZR', '19YC6YW5YW5', '87x7x6@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('87', '6QK8J32CJ60', '4G6664JV0H8', 'h0s242@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('88', '57ZQ320N200', '2PH22802506', '227g2e@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('89', '68T5R223826', '97UK09Z75HI', 'n5W313@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('90', 'GY8KR7M595F', '468UEVF1K08', 'DGx50U@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('91', '3999GAF77FZ', '5AO8AWQCAD3', 'D16Ry8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('92', '8E2K1Y1S9G7', '0A95N9S552M', '14x671@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('93', 'T6EB5MI6T74', 'M4995965929', 'yji2h2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('94', '0K274H7I17E', '296A9K82U41', '6QP6W6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('95', '0VJ647FXT56', '1SJ7Z70BLXD', 'X6V7ru@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('96', '22S66QADJ24', 'Y5O6315YV03', 'QF31Cc@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('97', 'P7BC777QRQ3', '3E14W94O78A', 'jDhn8B@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('98', 'X30ID07KNNX', 'K0UU6UN7WB1', 'b03ioc@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('99', '54H6IQXFSHT', '5X835C957Z9', 'r1w16W@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('100', 'O58Q7IUG3HW', '4VUYOE30V59', '2pr84S@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('101', '3TXJ7EZ77KS', 'L1DZ1LUH3H0', '32x3IA@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('102', 'K87X3432H06', '9AEE9B0Z419', '28ma63@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('103', '3PS9MAV6UFN', 'IGD85GT30SG', 'f6G6WW@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('104', 'QB7196OZOB3', 'ZOS9796RAGI', '4mXR05@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('105', '40L64M9089L', '9REE5O5G8XK', 'y5B5i3@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('106', 'R0092141R04', 'XL4768H0PH4', '2Uc458@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('107', 'RYLM13FB401', '36SJ3340OKM', 'vgDGn8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('108', 'D6Q291150HN', 'TT59O40PBUH', 'pHu8rN@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('109', '843IV5MR14F', 'SM5460W34J7', '50dh58@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('110', 'Y91V19GKFFJ', 'RD8XY4I685A', '56Kc50@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('111', 'ALK572B0SWO', '88Q716TU688', 'W2W4M6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('112', '68SS0QE6ECI', 'HNACXCV58WG', '0h5627@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('113', '6S15861DBOW', '4QN607E7J2T', '8jp2YT@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('114', 'RWZQF8SB32T', 'GA74T7G0M32', '878kVX@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('115', 'KEB850Y0904', 'QRN092P2I93', '1Y5Pwj@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('116', 'N17KIZ744JN', '59RQ83H7FTW', '13BMu7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('117', '0I21CU25S37', 'GC8671BXP1W', '00m5jQ@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('118', '8T2B07W99Q2', 'C3725565S93', 'Eoa6E7@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('119', 'NS8586272KV', '87P9QGE4072', 'N6n25h@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('120', '04A4QH62982', 'P2GYB1GLCPS', 'H77S30@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('121', '2906HG1011F', 'S43OZU2L509', '286084@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('122', '6R2J77WJJ6K', 'C5ZU0RI350C', '8hblOL@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('123', 'O0JN7K9318N', '1D0RZ6Q7J4D', 'o2eg87@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('124', '0VL74T692EY', '7XRK878SGRU', 'Qi5U8y@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('125', '0G399B9W46D', '062HHKH4280', 'Lb8A7n@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('126', '503WQKPY7JE', '0WW393O63S6', '0XwuL1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('127', 'MDABX5BJV4S', 'T02KVD511AW', 'Hi4DUO@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('128', 'EW7C5020ZHG', 'F0W4F855O25', 'saMUvv@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('129', 'B2R1CINTF95', '1389R2F3D5F', 'aOI538@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('130', 'A1V0D7384TH', '7507JX168YI', 'P2L15e@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('131', '5I0QSM378I4', 'X0AOR3F20P6', '6rE24J@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('132', 'A4J92SRUPVW', 'K6C6ODH6VNI', 'F2d4fH@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('133', '4878P1548SM', '75806D8584G', 'N17tn1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('134', 'EHIOBVV5HN7', '58E95O61E29', 'RUe2xS@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('135', 'JD35J7O2S2S', '50906R71YN5', 'a27W4q@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('136', 'HWC363A1OZN', '0367TLL0E2I', '234Wk6@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('137', 'Y7A26U5VN8F', 'C758G5G27N6', 'HsFo7n@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('138', '8K8WL0OU5H0', '500W658F52O', '43Mcl1@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('139', 'LJZF85JOVS4', '5Y47UX6DR05', '65u25F@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('140', 'D2TJ00P8V07', 'L9MON903O8X', 'w7762d@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('141', '24886OTW5L5', 'CDT561LW1L8', 'J3gpE4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('142', '365KNBXCQY8', '5Y7F1GU2N27', 'aHGR8l@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('143', 'K7D8UA527IV', 'V64327UQGO7', 't0A7o3@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('144', '253XAE933C4', 'WFVG43CR8WN', 'S202kG@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('145', 'BZ47OX0039K', '4681FYQ61WI', '84ua78@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('146', '2YVQ8G3PZNV', 'NM5UN8G9243', 'lM8M5Q@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('147', '488B7OE253F', 'GQ8PT54H54L', '40Cj40@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('148', '1X1OS2T8MEA', 'GQBGZU9XAZ1', '7585u1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('149', 'I4QZ7359Z1P', 'DN41A12D6DP', 'm5B73H@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('150', '290YVFLW629', 'X32916I2O5G', 'JI7J88@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('151', '43FB00J156T', '345S928V352', 'oUR07p@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('152', '90BO3449X80', '6SGQRBEJ6I4', 'NmWo11@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('153', '63FQK6852O6', 'CQ53RV3FE28', 'lNAUGv@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('154', '6IBR287KR28', '31O609BL67M', '7FlGcr@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('155', 'J64N7L0CVBI', 'H1K3EL9MU6K', '404837@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('156', 'Z1J7K0JBZ42', '9ZN7ZFG5470', '74F3k3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('157', '175WB8L9OVM', 'C91DY8JOCF2', 'j87tpY@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('158', 'B7U2743O94U', 'Y888M459UO3', 'h3Yok1@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('159', 'WFLBQF2WK14', '6C619QQ3613', '4f4Fn8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('160', 'G1P54Q23IKD', '20ZCFDW34KH', '171v7l@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('161', 'CGCQ6M2E2ZH', 'J4862C4C136', 'VmH4xU@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('162', 'TOLI5HQ8JWV', '48R4HH1LQ4H', 'rwkw86@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('163', '8Z6PFB829D4', '9LSR3990CRD', '755E0o@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('164', 'O9ZW2L96490', '8961KWB08Z0', '8108A6@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('165', '03FW934QV9R', 'R4858E6H8P0', 'lgxt81@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('166', 'IP7OL0S7707', '306252GVLQ8', '5u0b88@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('167', 'KE76F9Z585F', 'DB85JF0MZR8', '3O28K4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('168', 'IN642U8OQPC', 'IW808081930', 'jSpQYk@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('169', 'ECU5DL285V8', '855AD82004F', 'nso346@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('170', 'V3568G3SU2P', '0GA8XAPDSP6', 'KehC4H@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('171', 'HU3C1V38Z6E', 'F4ZMQWP81QY', 'fcG0Y3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('172', 'NN8MJM0008E', 'Y46H5094Q50', 'jmw61R@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('173', '9HZG7P93S50', 'M0XJ400NCIZ', 'i8753c@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('174', 'G469H4TU5J8', '3E5HH44FO6Z', 'e30X24@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('175', 'JD5S0K0868V', 'GD2LT0ZAITX', 'VN4rjg@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('176', '11Y07LR31OX', 'QZC14M1D50F', '1e1JC7@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('177', '026KZ9214NS', 'A91AON5JBF7', 'V4G2AA@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('178', '66KHGPNRVLI', 'QE463730L32', '7o865Q@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('179', 'R65052KCJ27', 'L3D5FCQ1PJD', 'k7QQfs@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('180', 'V83LFA370E7', '0ZR47CU8F4G', 'Q77Ci1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('181', 'Z48R5Y0O98Z', 'XXERC51AXNB', 'upaq18@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('182', 'C7H157FRF12', 'VX8FQ166B81', '0g301c@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('183', 'FLUJ5B9OA6T', 'PU1X4N3PRLO', '68O1Cc@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('184', '7495746MEZP', '7JVX99QTE5H', 'b30021@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('185', '1626950JNTD', '7HKB06L91Z5', 'c7B766@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('186', '6X92OYDA6XD', '7X7E1S0JQ19', 'gwQ6gu@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('187', 'S61RX7BY94V', '62S08YQ8P2G', '137O3S@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('188', 'FP9RCU5257S', '02Q0X55TR98', '5e8654@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('189', 'XRM7O029T40', 'J9639T33G7O', 'Qb547A@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('190', 'VY3X1JDS0L0', 'CJ2LU0375EW', 'LI1pf4@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('191', '618OU77DGG3', '6040ZN34ZU2', 'e22F03@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('192', 'T940204M04A', '94Z3T4I1T92', 'c66nvX@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('193', '879XUBGE7OU', '291F3875FAO', '84Aw67@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('194', 'A1C89DQ3W41', 'L0YM5R7229I', '456G1w@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('195', 'NRI4GJ4S21J', 'RMGM6TD746E', 'SiPHK2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('196', '6V398M1DAPU', '0GJ1LV8EZ25', 'X6y275@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('197', '0M8F2946LUG', 'CJUUT4GO082', '77f87s@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('198', 'M439I51A9K3', '827LPS91C86', 'nv6XWg@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('199', '20X7V087C83', '91LUS58F570', 'ErT75G@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('200', 'MMXUO6PL19E', 'WGB31H078XD', '5XUivd@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('201', '784A023WZM8', '9808C6B0WUV', 'v6VW86@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('202', '1482U3AGJTY', 'W6W9ET901U6', '6SdJB3@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('203', '670GPFN8FI4', 'EL8H2B88TB7', '132U6g@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('204', '8D5X950VX32', '32GR8368JUU', 'quT6V8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('205', '845ZN2K00L3', '5Y37O54246T', 's515h8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('206', 'JXSPX7U473G', '405HGYT0ASH', 'E82H4C@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('207', 'KK430ONQ7F5', '29116ACE972', '65003Q@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('208', '597RHV6ID98', 'Z9E5JEN6D53', 't2pAYV@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('209', 'YPXI74J5XS8', 'NIH3T662QB8', '5MW0h4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('210', '5T6H4F12DSC', '8419141929J', '4477Ek@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('211', '64H908Z6N74', 'NAR48122SQ5', '14e3g4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('212', 'F679O29U593', '7PT5LWB5SP2', 'H14hMI@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('213', 'TA2I26Q23UZ', 'TA0JU1V9270', 'kBW5G5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('214', '2SHUW07Z828', 'CE7R89TV2YW', 'O2Ih11@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('215', 'F1Q745EWY15', '4Y3MZGT0UXO', 'H33Osq@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('216', '7L7329R5426', '315W2T3U59X', '137v50@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('217', 'BFQH5781VC4', '8C320EV3MVP', 'SuB5Ds@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('218', 'RB7AR1IQKUK', '8B680946U9T', 'y01838@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('219', '2Q81L1S648G', '3N1YS4AG0T0', '66772F@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('220', 'UP79170D7NU', 'E798Z357YPA', '2E651o@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('221', 'N85SE497H26', 'G0LGO83F831', '80O3WX@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('222', 'G3UV25I11E8', '577NQEFAV57', 'B8bNi2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('223', '461JND01AC9', '6PKR4W62A7V', 'J3W000@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('224', '58750IJC900', 'N6TVG5868BL', '6r8T7x@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('225', '0E1BOA33S0D', '3XKMV4YRKP0', '4w8Laj@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('226', 'BNP8F0FAU0O', '899PC427V79', '45q781@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('227', 'YVVZRV8S78M', 'W01PEH7GZM3', '7jr227@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('228', 'DWL60H49D4D', '2I733N1A4SI', 'gbI367@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('229', '8FL08BF4GBA', '916R0AMZKI5', 'nd005t@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('230', '00OXE28GFNF', '0048NKFM5KE', 'Klcu3C@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('231', 'MS1Q0ZDX04H', '0886G26YOE5', '5UqN4X@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('232', 'V2630997600', 'W6E4ES058W6', 'ft234H@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('233', 'AI103P2S417', '9GP6TZNTMNR', 'cUN763@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('234', 'XRGJ1048EZD', '9W8V74WA9R0', 'dx0Bn6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('235', '4H14808FXW4', 'OG7KU9X4915', 'V7fGd1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('236', 'WD95ZKJ770U', '96VOSMR3Z93', 'W3sEJA@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('237', 'N1286Y3PF52', 'BH51D8A8B5B', '4802Cg@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('238', '76ZQ0N555D8', '1N5I3727QYB', '7rYs78@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('239', '64V9JO43FYO', '714169KBM37', '8FJ8Pu@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('240', '83Z5539UDX1', '50737E2SSXC', '772IC8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('241', '49H8FEL1113', '87AH784M06J', 'L4dQS2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('242', '74BFTOIP92I', 'F2Y00R599M2', 'y0Mt47@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('243', '33QQMF2O441', 'TL9S3YR57I8', '6Ah2E2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('244', '8S7DZ74XT3L', 'YW6YJ1VN16Q', 'TEQE5y@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('245', 'QQZF9854419', '1E63A223MO0', 'O0017F@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('246', '342989DU4YW', '436ZNV0EHHV', '30k54j@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('247', 'AQF98PG8YIO', 'F289Q77F434', 'T35FGn@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('248', 'P3133PHG5P9', 'H73Z3QWHZ39', 'SKu80V@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('249', 'UTIX6U94P62', '4GO9FX0J0SD', 'yeU30j@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('250', 'LZ492M0AAH6', '1B7C68LXTY7', '3304yr@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('251', 'O242USH0I73', 'SRPJ694XWY5', 'M3gLl7@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('252', 'Q4NT0LC80WA', 'DT4KIDTTCLP', '1tmYPG@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('253', 'C025X48NA63', 'B8S527CQ3B0', '33y2nn@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('254', '1U961E22B12', 'SDV73GNZF4Q', '7eN670@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('255', '690V49EI8XB', '49O45H8R8B7', 'xeElcP@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('256', '4I7D4QMD406', '696QWA6J098', 'B5uOA2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('257', '1F5X6U5QLB8', '8S1N1N7PA1L', 'JS4T7p@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('258', 'YWO9OWI5OY8', '57TO972IXBU', '2c45Fw@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('259', '2CU168FXX1J', '13G41KA51VV', 'YcX061@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('260', '5HTD592WL47', '08OAQVKI7V4', 'TkjX1c@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('261', 'ZYRKOKK3SW5', 'D8H8M5QW3E9', 'hF13Rl@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('262', '2RN80DJ61Q9', '5B7SH897P1C', 'qcu7hg@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('263', 'X59I70K2XOM', 'CNLPODMOYN2', 'We4OxH@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('264', '04OWD4RA25Q', '6I2IWPROGB3', '17g1o0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('265', '901MMEFX82U', 'C222S929X42', '18A3nJ@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('266', '5A8C814968V', 'IBC57H66G2Z', '1117To@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('267', '1Q60NIG21K1', '232SVL30RQ2', 'PA418S@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('268', '298AQINX0TO', 'SVA5722K13J', '57y81Y@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('269', 'AC09VA2EWSS', 'HG4WMG6W80X', '2SB10e@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('270', '004NMJP70L3', 'P3OR5N2T2E7', 'j7e138@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('271', '28P1LL95SM4', 'DHULA447D6G', '0ED3of@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('272', '79LKE3X5Y9E', '4I674LA60IC', '56110b@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('273', 'F28N7IL81T2', 'K50054TDE21', 'UA0J5B@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('274', '0W3U8J79191', 'B8X57C57NQO', 'RKYuX6@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('275', '8058DSJ36GG', '2Q3Q425E88D', 'qyX3yE@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('276', 'GI9T0AXF79C', 'QOQ9T0MA773', '54dH2u@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('277', '696NOUH12SI', '55CS067AWON', 'Nx3000@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('278', '275Q84J8N0L', 'B4Z27E9Y3RP', 'HGq21w@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('279', '007N1TA9BQO', '2P0QZO5EHL3', '803A8R@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('280', '90KV7RE4QFM', '56S42R4M0KF', 'Y2qc31@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('281', 'BWH4SULC7I8', 'PI631HFNX90', 'jW3048@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('282', '6B70T4RA7WT', 'Z1K6I2U2180', '7q3sB4@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('283', '32330C9B748', '0U2K3VNM7I9', 'eL7m06@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('284', '7H24Y5O7U3N', 'L33QGADB71H', '8D6CY1@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('285', 'G77821PT93X', '0U076L9G4NC', '7hx5G4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('286', 'P2B77Q1K45O', 'ODJR5HVK690', 'vRf215@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('287', 'R77J5A0XT49', 'RCLXGK9FR8U', '8WuyL8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('288', '1MLHVN55QGU', '18U0YRLJC6D', '6Tdd35@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('289', '89R2PCBEQF2', '96R2W3D358M', 'W0Rk05@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('290', 'G9RT3C7ZW74', '28J0228N2CA', '174B04@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('291', '3ANKK259O20', '372O4EAU615', '1RdJP2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('292', '5USJ35FNH61', 'SWC45Z6BIWE', '8su0nd@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('293', 'SKKKXV3MJD7', '5AZ399HS4SR', '0ae5vI@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('294', 'BOTNPD76T58', '1JHP9FI4Y88', '0d4537@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('295', '5T1566V4B09', '68O9OP93X25', '74X707@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('296', 'D71669ET46C', 'B5Q349135T0', 'HCdW5g@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('297', '71CZ4MP9I0R', 'N368WOAMDJ1', '4WHL75@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('298', 'X1A5AP97HU5', 'H0FYDKL6A46', 'LJ3ty7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('299', 'VH98YQF2Q9E', 'T8VD10D883N', '083I75@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('300', 'J0UI57A5G7V', '320S3T75064', 'u2K6Sj@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('301', 'UB2ZRQK1WUU', '0J0S6074U36', '3dC0j6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('302', '1G551QTP9R5', 'G35W05VJ214', '63n73c@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('303', '2LN39IJ2NL0', 'A4332YRDD9X', 'EPQ272@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('304', 'LT61057YDR6', 'J060434UBUG', 'o0U28B@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('305', '71RDH58687C', 'V79WHG1G452', '7f5aW4@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('306', '3AW78AZOMN8', 'D0IG58V6X0Z', '14351U@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('307', 'FWQ7CYXTS8C', 'D2820185W0Z', '2fJUfG@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('308', 'ZF7LTQ2EYWV', '8GT6X9YULM3', 'hGYa17@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('309', 'G3MM4S3404X', 'WY8H0Z9T0OW', '806YA3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('310', '93I7667058W', 'ER4362F0R17', '3V827f@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('311', 'GS28Q12H98I', '7XS2G7AUV49', 'P777v8@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('312', 'S807JF79NMS', '4XF2827ZPW2', '65I754@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('313', '8E5IF166NIL', '04CTNSZLT1Z', '85JG22@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('314', '4H9Z329G1XO', 'P4D57KV76X5', '54s7MA@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('315', '91BN147E3QW', '31J6M8WN8KV', 'LqHmA8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('316', 'DUF29SJ63G7', 'Q27D41I669V', '15p368@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('317', 'E5VKPT34WSY', '90AKMDNLG45', '686fpP@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('318', '657SNPM0N13', '8543VX72V6N', 'e2a34Y@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('319', 'U38J019A7R0', 'EC4VG7F0214', 'S2j68m@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('320', 'NZZ86086TIE', 'YTCU6R4X96B', '0YqNva@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('321', '8U65X044B24', '2AMN3X0OA95', '0PiH4c@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('322', 'NM21G39D7P0', 'KHE8O9983D7', '0v4V47@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('323', 'E8FD54U423R', 'UD307QM3TM8', 'N8332f@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('324', '37WI8V7SYRM', 'K44Z4257Q68', '4j2V77@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('325', 'X9YW21E9GI8', 'T00921115WN', 'IR4NH1@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('326', 'PF06P8T1H73', 'C13OIFU97Y1', '4Uu201@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('327', 'QUEA0H02X16', 'LEFCROP6DEV', 'W28158@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('328', '92P35UQQZZ1', 'ZT9EY3NK65X', 'Vxmp55@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('329', 'KQ68CNOA0NS', '72A3Q37BVH3', 'dpHIx4@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('330', '02Q40067218', '5D57UL4A885', 'SOlL07@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('331', '38SA4B78EK2', 'FI1CPI712F8', 't46621@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('332', '6306E13WQ07', 'J2XRWL1I4W7', 'hf03h2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('333', 'LE97GNKP3M6', 'V4R6MI5548E', 'ii4L86@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('334', '28IK7YXFI6V', 'ULQ9YH3PB85', 'u7OSe7@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('335', 'ZHD37YDOTUC', 'R4N3EU90VD4', 'y2k8a7@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('336', '3640XI82RGN', 'G2WWE9U7M6N', 'WM308L@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('337', 'HB587AG8Z96', 'MQA5987M8YY', 'F874q8@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('338', '06570WXGI1Z', 'J8U2X4A37Y8', '525K1b@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('339', 'RRPDF2ANZ98', '6S7YAKJ2EEJ', '76B50U@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('340', '7TR2JJLM826', '1O48LYQL8BA', 'VD5808@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('341', 'NCU7Y3DR8WS', '6CX6H4RQ4VK', '3U7E7K@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('342', 'WVD306914ZS', '92HR047R3HG', '3yC7G7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('343', 'Y9939UCSVQ3', 'A15YI6Y0564', '1f2Sl7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('344', 'E4Z0N27SVX0', '5NK6WS5T0KD', '721S7x@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('345', '98CY1625BO4', '92Z61YH00VQ', '40Iskk@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('346', '5R7YEF1CT98', '8Y840G2L9I6', 'A0lh35@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('347', 'IS0O0J360B4', 'U228P9KYN8P', 'hI3y5K@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('348', '2349KJ96TY5', '59JV0Q61RCX', '77755I@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('349', '43OZOL38M93', 'X207H981P24', '1oyq31@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('350', '0S61KYN6E10', '871VFPWEDUS', 'O2s30x@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('351', '6F82N4076TF', '75T0FWBIJYL', 'e01o85@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('352', 'N4JG64S9EK4', '3N3DL4W692Z', 'Q8V83a@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('353', 'CHIIWMI67P4', 'GJ850R530Q6', '2m11vg@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('354', 'MW3N1HIW197', 'R9YY7QJ1X68', 'V6RN0R@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('355', 'Y067O77JS77', 'W9Q1R0K94C5', 'eYfpSX@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('356', '91U07U5572T', 'EF92S8B81U5', 'Ma6g2D@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('357', '25402929T7W', 'H85N4AZ738M', '8wpc55@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('358', '37111F5G6FQ', 'Y9402746QSW', 'jo38Cq@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('359', '17Z55PTYPLN', '978U9QGVFOJ', 'u2o026@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('360', '268E14BR5M0', '50165DUAB2A', '3n8FH5@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('361', '6M7153G8AJW', '058J29G4JB3', '66621b@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('362', 'J91S97200FS', 'UA404ZY548U', 'Ku215K@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('363', 'LW3YH5E0EH9', 'O2K7892E635', '6Q1832@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('364', '6S4DCB5Y22G', 'H0B8K753LB6', '563nfB@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('365', '6I32161NV8C', '477IS9Y4Y57', 'k8hd4R@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('366', '19LPOC21M61', '118DZDU4AYF', '75tDB0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('367', 'WMW6D19UNUX', 'A260EV9G71T', '6I8brn@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('368', '1J1LB0GOBDC', '5QRI78620CE', '6Bd3OC@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('369', 'HOVHT0I868B', 'X8ND67024Y6', '08207I@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('370', '68TV646TGU9', '07B6OG06WSA', '2726GV@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('371', '570N7LAXV6Z', '93I092C6B86', 'C1xTlq@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('372', 'S42OVHK004G', 'G7X54N1Q5N6', 'aC5h51@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('373', '421M75LV8WP', 'WS6V1L3BE77', '1CCNS1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('374', 'TNJKVXN1N03', 'H3UU8979T8M', 'kUh588@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('375', '465CHAD09L3', 'K497N9RY0MJ', '858LB6@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('376', '968D26U16R2', '420ERV4593T', '7440Sn@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('377', '4Z2S00699KU', 'QU08T77509K', '76O3gj@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('378', '6VTFWU2919R', 'G8U05PA9WQB', '21L12O@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('379', '2H8K21791JE', '1R91CV8HR64', 'M310av@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('380', 'U9PDMM26Q25', 'K5094Q14JN6', '2r8513@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('381', '3F54P5337H4', '98RV8K0M6XQ', 'pA8SqH@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('382', '51SU9H48H7Q', '03PLR4730XA', '40C2k1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('383', '4INW0Y459IZ', '6QS42I98540', 'asm0G6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('384', 'X0P6WPHIK5I', 'U0746V61S15', '2BUU54@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('385', '13X7O1ZZCA3', '1S0ND07U411', '22t4RR@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('386', '0Y9JMY1X633', 'BR6TOCY58VX', 'd5823H@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('387', '808S52PW06K', '8CUE97HGJC1', '5n74Od@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('388', 'Z59OKKUKXR2', 'AT3916PPT26', '8r336O@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('389', '1L4Q56RXQ05', 'O7S523E69NJ', '5G8vav@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('390', 'AUTZ04Q18NS', '7P248Q72UDY', '81sH52@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('391', '5L0B5K4CI4Q', '7E5Y313BF5B', '85PRA6@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('392', 'W6D23RS14KI', '96W3MUFAH5J', '1EVy55@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('393', 'GR969Q08N0W', '00WK4F14X62', 'BW051H@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('394', 'I8Q8Y60AUAZ', 'R1F1RACQHU4', '15301m@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('395', '4BVEQF9ZSN7', '1TGGW031Y0L', '042DAW@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('396', '5SQIK0L1JA8', 'F0262U8UF5M', '3AEd8H@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('397', 'S0AJI9K29AA', 'N60CC3043U1', 'Xuy264@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('398', 'UI2P6Q86852', '9H55K0I6QB0', '454QQm@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('399', '77VU7DZNFZ1', 'S6BLM8N4639', '40tJ4r@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('400', '8B44BBDYF0N', '0HL5QS59Z1H', '168533@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('401', 'M563I6OGV02', '4TW43Y85TZI', 'k7c6Xu@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('402', '30R66N4MERT', '84HKIHLZ9J3', '861lG3@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('403', 'O16993Q48MH', 'I72635YY35I', 'm01Vdu@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('404', 'I228OFY6585', 'G9PH01P7235', 'D0yJxd@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('405', 'WG216NXNGDF', '283SFQYARO4', '7Bh5Em@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('406', 'QI9W87L24QW', '6ANSG6L7DNO', 'b7630m@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('407', '6K7M30A3L5X', '623U201E5J2', '7T3U5I@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('408', '5966RT2HK2Y', 'A763R7P2793', '8b263y@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('409', 'E1TG6451LI1', '3202L5TAF7O', '270Qr4@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('410', '5ILCK5PT2NA', 'G6C98FIGQ8O', '2dS5v7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('411', '7SX385Q9JOR', '590671QG596', 'pd7n2P@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('412', 'UB82GA78252', 'N679Q5X56RH', '70i86Q@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('413', 'M56FGAP2YI6', 'KR6SXE90EH4', '562782@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('414', '4C0U54W587F', 'M9MO772CH55', '4M17e1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('415', '796K5JAO50S', 'V38XP9A3ANT', '23I53G@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('416', 'B3831EQT8JY', '22N2556WV1F', '38iK7O@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('417', '3X36L0HE8NL', 'PDM61TWU338', 'o0W2Yt@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('418', '0O80S48605J', '7201S5Q428K', 'O35d1G@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('419', '8HA2E29972N', 'R64U40R6I0X', '6YJFY2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('420', 'U9I8Q7P2A9M', '59895XOQ965', 'bCYX4K@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('421', 'DZDA2083NCZ', 'I2FA75V5TLZ', 'Jp2X65@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('422', 'QN2GUWP3B9J', 'ION0633X72Q', '283E46@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('423', '4SRG1788X2U', '52B3HU2P9FB', '274G1o@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('424', 'QG3Z59D9V41', 'J57GS569826', 'n12XBi@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('425', '2CEZHH86PJK', 'YVO63Y170Y0', 'fRr702@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('426', 'Q31OUA3OHS5', 'UCG2VO26FF3', 'r2Hj56@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('427', 'GQN24P6P822', '994CK8L0JGX', '1X2413@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('428', 'VR33D3EPYVG', 'JZNX0DQ718A', 'jl11I3@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('429', 'VWGL5OO84U5', 'UV4I145XI8V', 't6DhV0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('430', 'CD02Y6U3SEZ', 'L3436NDQ194', 'P5X3gN@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('431', '1VTMC8FW24W', 'A6X11D0A0J8', 'L47753@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('432', 'C1F7XT71P4C', 'Z22FXJH526L', 'gO07F3@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('433', 'THI67472OC5', 'C4H7056K2N7', '3P455S@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('434', '1TTN5GE8IC5', 'W3SFF0QTDG2', 'wTqO2u@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('435', '2J90DFHFU67', '90I3VC7Q3P5', '4x87h8@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('436', '5IM6Y24K6JS', '143R9X16NV6', '3WyC1e@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('437', '5SCMWQH5333', 'E037TP77645', 'xXWO1W@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('438', '9KS5A3V7H1J', '77OPQ22TX4L', '762nfp@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('439', '17ME08O632E', '9P47W2AKE06', '0d1x6D@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('440', '26W41DW4WN6', 'T06621HO9D7', '202TjP@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('441', '04MLNX8623Y', '2K7KHW54KBO', '1BQ8t0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('442', 'P5XQNP8FK8G', '846Z0901Z3X', '0r3Ft5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('443', '3J2WIX80B5O', '62ZZ34O115E', 'D6BDac@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('444', 'A3HE5X60U40', '79O87VD978O', '0604br@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('445', '13989772AXQ', '19R9O84H83K', '48S7ct@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('446', 'EFZT2V431KX', 'WT6L23K59D4', 'b8UD5l@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('447', 'VMTBCK6644B', 'RJT290XWL18', 'u13874@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('448', '0O5WM5HAJ9E', '23ZI98438R6', 'O16JBn@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('449', 'TV74BOYIF83', 'BFI6377N0O1', '6k1T6g@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('450', '24C19932W6Y', '47T5ZHK73Y8', '4lOq08@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('451', 'DM9Q65E6W6B', '1WGT9O04Z16', '3Hj00i@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('452', 'SE1597918Q8', '98EOWES3855', 'b3R184@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('453', '7ACF02NMM5L', 'MD4XO5A490N', 'Xn28v3@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('454', 'V8UH9C026SB', 'LWNP7659NOJ', 'NT6vG4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('455', 'YPF99SW8540', '5M1YIJ5PUHP', 'g8753R@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('456', 'XXH8PTZ621X', '7F1N6GE3A8R', 'Op8uAP@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('457', '34AF2DA5DYG', '6R00T15JE5Z', '6o6255@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('458', '396HSFH7P6I', 'K8O07GYZ97Q', 'GxOh3q@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('459', '9YYU78UDGD0', 'Z08XG3O8CZ6', '5060Q6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('460', '7R8H43Q4R1V', '6N0356OG983', 'w7f4Vy@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('461', 'EV67JS627F0', 'GOYG9YA7GV4', 'jfs26c@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('462', 'WPVDMEO447Z', 'DOAJ7TH86GJ', '704kLa@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('463', '32TSC008N13', '2K8T1J1QF8X', 'k38OV8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('464', '097H2FO4C5L', '7LV7V91EI89', '5i0U2R@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('465', '93240Z210T4', 'W16LFIE7W7P', 'CQk1Wr@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('466', 'ED8352031Q9', '38K9R2F840I', '760SGM@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('467', 'F81XIQCWG29', 'J3282P3F0OB', 'd4S88T@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('468', '2ARLS5Y6I5Q', '36C26645J9E', 'J55007@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('469', '55TZI5B3XSF', '97R81260Q35', '5fUJ88@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('470', '2C06L1UZ51T', 'D6NSD9AGZB1', 'D7LAOk@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('471', 'ODZ9BC23SRJ', '7HX3IBB424B', 'FXT0jW@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('472', 'XT8J674D328', '1QX40NV27Q5', '1218mb@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('473', '4B539X0KZU3', '8EN89392V5X', 'oW34i3@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('474', '1X68FC043XB', '9C39GP1896G', '5tl4Gu@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('475', '443D8A6IYY3', 'IFNB8K09AI8', 'PAm8Fb@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('476', '798863AY3PN', 'Q69T3SZ35V6', 'G11285@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('477', 'U62VM6TS6X8', 'MY2KTKN97F4', '024e3i@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('478', 'F00ZAZ45O94', 'Z6DRP5B6733', 'kkh26d@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('479', '5WFU4743O0E', 'ZZI246SM438', 'P3u8s3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('480', '9121ON0TJ87', '737UA7600P8', '360717@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('481', '5T979T2GY30', 'J870KG8C906', 'kk17A7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('482', '71ZR15DGU3E', '03HT66265Q5', '1r0L1M@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('483', '2KJ7JQV7224', '80R67FR2404', 'j52527@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('484', 'T26X83C1O46', '86E580577X2', '3UWccY@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('485', 'AYVL6I2665N', 'AF44VQ0747E', 'K32882@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('486', 'J3490R7JBYF', '9S1ZR1W8Z45', 'Si45KP@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('487', 'QN4JUN2431G', 'OK2M24Z99GA', '72m3p0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('488', '722ODCK2P07', 'EKN16TNGT88', '2tPrfI@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('489', 'TOUMAGX0H25', '87I2UJR46S3', 'X6E76K@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('490', 'J9BV3WE294L', '1TCA96L855R', 'm0L80q@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('491', '184SK4A951S', 'U41BN5YF4CP', '0Tt56B@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('492', '5925V7R2J75', '86AZG42JY6X', 'b720G3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('493', 'F1Z3L4OW076', 'QD221383053', '37p502@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('494', '3Y6FHBV75WJ', 'ZQ8U3BU5237', '10htR1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('495', 'RJVRBG22NX3', 'B3TR023C105', 'Q1IH51@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('496', 'LG7SNL8M3HM', '99392V3A15E', 'Ykb553@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('497', 'D7XUB7808R1', 'M4L2DAL73TD', '375d65@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('498', '60U425PDF0L', '1H63Y0KE2I2', '2j48Kl@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('499', 'O76A8D0W68O', '720X0OQ0GB4', 'rce0P1@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('500', 'T0E92W8KI5M', 'BXC2Z168P5G', '80b11M@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('501', 'DZQ5BO21S90', '00XS8526F97', 'Y7kliW@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('502', 'CRC5S6XH926', 'F41949671FG', 'U3h1vB@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('503', 'L650B7SPR66', 'P4EWNQ873HY', '41mF61@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('504', '289W9T1WBC9', 'FXPM4Y0CSK5', '840675@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('505', '639LDL4OA96', '0TGPOQDR777', 'Bn0513@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('506', '36EILAZ10G1', '25IIWFY46Z6', 'pYQ60g@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('507', '5IG1Z835K11', 'U14R7KEQP53', 'p485sl@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('508', '067K5AWT983', 'W784JZ32HFM', '17E5A6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('509', 'R1U985V5151', 'RRQT8IZ1YJ2', '7a64cQ@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('510', 'XZM1DR3C88E', '90N01EX626M', '32875j@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('511', '8R145992BUD', 'MR20355T9TZ', '481wIm@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('512', 'EZQM699480R', '0IS512S4HL0', '50Kb2l@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('513', 'VU0662BVRO0', '49RFVW216J2', '416CE2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('514', 'J19MDR562E3', '5SBNMCI4E13', 'uc38Kv@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('515', 'PPJM07J7M67', '78W39ASQP6C', '5B8I63@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('516', 'RA3XVFKAB4V', '5IB75W00OEZ', 'r77M3l@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('517', '0PK641596VA', 'Y7S0922K9TK', 'EXXSSp@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('518', '82V9GTXEP76', '01GB6AUU50P', 'VyI8yN@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('519', '22UM025QL08', 'XXIMULZA43X', '5roIW5@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('520', '4O6650N6SV8', '179E512R29F', '8GibMh@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('521', '6K2A4308670', 'U347Q21A2C6', 'k61uO5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('522', '9YBQCKR871I', 'FD0Z5LO2PIB', '2W2580@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('523', 'X93GI2UN01N', 'AQ8C4H36834', 's10437@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('524', '294520AZ4VM', '9RK0T102U64', '2e343B@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('525', 'X7JHD460E27', '2S37UFB206X', '386776@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('526', '83C786CK1SF', '3397CRE5N1D', 't857t3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('527', 'J89O5GP9DYL', 'NL759T0742V', 'y130ne@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('528', '6DO0LR952D3', 'UUP002ASM03', '341CLI@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('529', '5QXB3247P33', '0FE9C02NSB2', 'AQW4cU@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('530', '9SLMCV079Y5', 'Y46GODGS175', 'DbTN68@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('531', 'GXZF25ALSV2', 'G59L0A053KC', '783614@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('532', 'L5X27M5KDD6', 'WB0056I9VU1', 'g73j2r@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('533', 'T180G0NPR86', '5973I9HKV0A', '32215f@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('534', '97420R3QS8V', '9Y0K0741GI7', '0701x1@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('535', 'QY5Z6N6DSLA', '899FP83Y668', '6ty05Q@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('536', 'A7SD25I019W', 'FX52R48P35M', '4LQCI0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('537', '69283Z3TUP9', '6LN01NL8P9G', '256D4l@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('538', '5JNACM9861R', 'Z4NJ65R2OQI', 'OV6qe7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('539', 'NW3N7O80WD5', 'ELAMRY1AM8T', 'u707B5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('540', 'XV055S7HXYF', '5R585N9A615', '66Bwk3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('541', '4DTSL9L73HH', 'XOK649QPL80', 'O7413V@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('542', '4757WJNBM97', 'SJ87HF558K6', '6H7008@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('543', '6GL64SPMN88', 'Q1259S588F5', '6O1v4h@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('544', '9HCFEIFM419', 'B548C3M2W86', '2848WJ@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('545', '42B3M8890QK', '8133X7B5K11', 'C8E168@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('546', 'F4X7J5NMT34', 'OS317350A4O', 'O4YhI0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('547', 'S23RO7ZHY70', 'Q52FIE61LYT', 'X4436r@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('548', '2F2XY548ZF2', 'E83EI7149K7', 'gt2474@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('549', '743O6X8K850', '7N1AL2056QG', '6w32MF@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('550', '78N6JPG7242', 'BTB1SI1754K', 'M7m500@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('551', 'M4N6J2OU5J1', 'BI9OQE7Z6B5', 'N7wBa5@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('552', '51639F8W8GK', 'X5X9JU25145', 'FT61I0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('553', 'YR3FTS8VXP7', 'V1J414DVM0D', 'T2L5bY@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('554', 'KAJ5U6IW03I', 'J64N90I82R7', '08747N@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('555', 'DNJ8TV4KUGY', 'Z2ND378JW23', 'g13r65@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('556', 'LJC4UXB1I3Q', 'K20UN5012PT', 'u334N7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('557', '0U90730M265', '00Z3E5KB49T', 'Kn7qmp@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('558', 'LFM22Q16N07', '51X1I8VT7ER', '1j2336@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('559', 'S1C32T6743C', '18AS6O47224', 'f8yK7G@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('560', '59E231OH8Z6', 'KU8V9S8H1DV', '6D40G5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('561', 'OW328CJZ6XA', 'B41E63C2Z81', 'eX1xw6@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('562', 'UYF4W3AK25J', 'DQH00SE3V78', '1j264A@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('563', '63IKOR5O5J8', '7FN9T87EE16', '42UNO2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('564', 'PDX6563943F', '7I050X7AU92', 'OHu5x6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('565', '4D6TJW82144', '248GEIC6699', '6f7Ccf@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('566', '75670Q6GTR1', 'R3X6EUIB781', '248U47@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('567', '7X8504LWRA1', 'Z5D0M9FUNDS', 'av36O8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('568', 'B02M9V2B08U', '423LKV3L711', '2p2m87@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('569', 'Z7FJU4ONE5U', 'PSI1LJ3T803', '6yY763@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('570', '8IYB43LZ7Y0', '1M86LLMGM2S', '3rVPHP@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('571', 'F3MRLHKJ0ON', 'X91C3365L91', '4V0S8J@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('572', 'MS9LC5RUGH1', 'SJB76742GZ5', 'TNj2jk@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('573', 'KS9MSW8W0H2', '7T1KK50KJX1', 'A4G310@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('574', 'KNWLL2699F0', '33567D2Y4AC', 'yc84iO@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('575', '1MTC4XNK62C', '4K205OF9O45', '3dLED1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('576', '0OT52OD52G4', 'FNA20FX3Y0O', '75I61V@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('577', '710267616ZK', 'LMMW3XAQ8A9', 'E2228Y@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('578', 'IKW0IB17O36', 'S5947R62VXI', '0I50h6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('579', '88Q597SY6R2', '6W06I2TI6NQ', '7807G4@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('580', 'K79634Y5D4S', '70R6DJI6Y8T', '43s02V@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('581', '23G7J1EQ9X7', 'W6H81G42A06', '227w62@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('582', 'EHAQG5637NU', '76KJJ2V3L44', 'tm2s3X@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('583', '86A7RB82A4K', 'KNG3XA687P1', 'y50WDJ@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('584', 'B7W7VJ3B3X4', 'SMR8E87Z515', 'J80v5Y@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('585', 'CJF5Z7V0Y43', 'LW05X06V9WM', '2j08R2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('586', '9176CFG2432', 'DOUIN1O3I28', 'hanqo6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('587', 'M43Y06R09DC', 'VS29IHL9V10', '4I36w5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('588', '5XT721GO7F9', 'K2N4G0286Y3', '2r21bd@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('589', 'L1X81K4Q3WX', '74Z5SU4B536', '0B088a@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('590', '60ZM63E3DJD', '7PXN8748IAK', '61675d@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('591', '3Y3Z98G0EH3', '1O6VN7AXG4C', '43AYYG@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('592', '0452B8Y6A7Y', '8K6Q0FVOP8Y', '3252d3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('593', '8CBP47TT039', 'R45Y5MKUQ5G', 'H7LIO0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('594', 'U4TH80364CP', '4CF00411M2R', 'Ic7ANC@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('595', '76V94Z377K1', '4558184Z674', 'a5X16D@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('596', '2Y6LDRF6149', '7J49VNEQ0GY', '8UhPs5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('597', '46WM5MLUS32', '2D1470NS654', '56J5J4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('598', 'T1Q8JN1ZB80', 'GKYRUY7ZCU7', '12Xk5J@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('599', 'WLY56GLCY72', '0Z8UNYXS078', 'Fi3m64@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('600', 'B77Q16C6A91', 'MEL2YLJ2JJ1', '01kN65@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('601', 'K65U39XPXRH', 'OL2KZ48K5BP', '470328@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('602', 'ORCPVW83Q39', '9JZW1P8QZNN', '632Uh2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('603', 'F0UF2012172', 'P05TL98Z3Y9', '4i6wt1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('604', '346Q7A2V504', 'JP2246MIH6G', '238556@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('605', 'M4XDWT7TN2T', 'IO389FWQ83W', '167I5x@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('606', '1S0OU3CE92K', 'P1AJZFW0WKE', 'PgT37v@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('607', 'BGL6RS7N2DK', '9ZR0Y5QY03G', 'fC5345@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('608', '2GDRTW51535', '061H598H136', '336652@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('609', 'LBER0E9AO0V', '9M7441WLWRB', '1nS136@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('610', '1LVS68G7R7W', 'S3I2MRSSQMQ', '137HL3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('611', '071SQGEJMKI', '29UXNT35KP0', 'qPE71f@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('612', '9D0FT30ZWLM', 'MOMZW93B808', '66Sb58@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('613', '62LCL6R7344', '239NRHEW032', '60C48t@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('614', 'R3Y66C6487D', '4W0PY8AJCSY', '561723@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('615', '141T7EN9649', 'J0SVJZ69A7F', '64V1F8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('616', 'BO5THNEB2A0', 'TPZ20M0OZF1', '03D008@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('617', '48FFDH63519', '379KI0BTYBG', '3f87x0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('618', 'DI80FF8V21Q', 'N8EQ9B8P4P4', 'h0Q567@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('619', 'YIYGUTWDK04', '4CMOGH043Q8', '5805AQ@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('620', '181Q0E0X19R', 'SNYUGCH7ZZ7', 'b2Gc60@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('621', '69332059378', 'P0Q65I9P1UY', '63VIwo@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('622', '6LL242Z47XN', '3VE1I5U49G9', 'y7nlyi@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('623', 'NIGIL7BBD46', 'MDA279YR3ME', 'e1406J@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('624', 'T54OVC50B09', '0GC2G63NC7Y', 'eL6ial@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('625', '3S07M8J7KPK', '2OS66N6336Q', 'XUkF3E@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('626', '834FO33NK24', '5HPE7G629M9', 'HAx313@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('627', '6CAIOK6GX7D', 'N00H8N2E293', 'A5A6F0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('628', 'U010AHT95MC', 'D75473PG06Z', '55247E@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('629', '2OX2FCZ2PRR', '7H5LRD69BP6', 'O71qDQ@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('630', 'S7205BF17YS', 'C70EL3C730F', 'D53181@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('631', '4WE494IK75O', 'OH8B63L8MP1', '211u46@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('632', 'QR5T6KW85T7', '1I6O1474P9Y', '88EAXd@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('633', '63I2XCPHXF1', 'ZSPGR2Q54M9', 'f44F6d@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('634', '7316R798ZM4', 'Z2W9T52161T', '66D477@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('635', 'E288Y3SNO82', '45AGB1CC190', 'sKg036@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('636', '3DF27B70900', 'W582CB0798B', 'Wq3G4p@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('637', 'E61IA8ISKF5', '8Z392LU5408', '72S38d@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('638', 'M3S8UHZ576N', 'SZH016OG4P6', 'n8yUyN@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('639', '3X7302J24N6', 'Z9NP5ST5569', 'G5278v@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('640', '7TGZ06489Q8', 'WOV6LGAB6X4', 'VBJjn8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('641', 'F5L6J1LWTM4', 'J3BXG89ZV4J', '707F86@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('642', '1H75MC257H4', '3711K899WB3', 'Uw712V@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('643', '18N9RBO5I7I', 'GT5840JI8R7', 'i6V45j@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('644', 'EPRM58HUBV4', 'XEK42CNL7DR', '1T0h05@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('645', 'G18O6S1I374', 'N6G489X46K2', 'pmX175@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('646', '70U85CRMUCG', 'VWM4O3TOVA4', 'A1VLu3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('647', '44PA2IG9N7B', 'HH3531KOC27', 'FAY52a@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('648', 'PZN85K56MH4', 'PB3XG4YPLEJ', '2u352u@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('649', 'Q47A8KH4Q26', '9EM6L38P2D1', 'YHlcUN@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('650', 'LDJ262A433F', '98D2W48X176', 'b4iwH4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('651', 'MN3905I78JQ', 'GN5B2348494', 'q34h2g@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('652', '2WHIWVL675G', 'NW2LT2J4VCS', 'K57232@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('653', '9Z79537VJX7', 'CVJ2UNC87IX', '4aCc01@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('654', 'VMLXMHN70D0', '7M881IEQ8CL', '11626I@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('655', '4NB0985H926', '784V3J0B724', '7f11DQ@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('656', 'UJZQ9064365', 'R420A5DBL9E', 'FUx66y@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('657', '4KFT6829B2N', '31G7U0JOEQT', 'F84ae4@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('658', 'ERS607VAP6J', '7SA452B6KV2', '7rCHVv@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('659', 'UPNY9Y67Z8B', '2T78L3Q9XUP', '0503i5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('660', '96G741Y5Z71', 'LAJ7O2TGNR2', 'g8V1i5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('661', 'X8JFWX8257U', '30JV080QVN7', 'Afd7Jm@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('662', 'JW44BK82UH8', 'QY6783308WG', '424a22@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('663', '1R971JLV1YS', 'OPV8L33PMLQ', 'RW5pI6@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('664', '07RF434UGI0', '792NF8KVU37', '8c86de@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('665', '8B02H56J3XJ', '48F2M1ULKYV', 'NypMgd@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('666', 'V8T93832038', 'S3RW3CJTD4M', 'k2O0q2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('667', '0103K637Z96', '6F742H0V5ON', '078f5n@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('668', '355FP6HUDP0', 'G78925KN141', '1j7CyR@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('669', 'E5Z0GR22JL7', '1CNCF3J556O', '6717TJ@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('670', 'O3OX0V29P2B', '2Y40743Z5J4', '5J3v0l@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('671', 'D6JGF4NIKGO', '92KPEGS4IO9', 'e8nQ7J@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('672', 'NY7XMBX00SY', '108SX6UUA67', 'K864iT@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('673', '8E14W09O2B1', '2J83D877FJ5', 'Eb7312@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('674', '0FW34O2KV8X', '1921O2Y0F5V', 'l3F1DE@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('675', 'VM4V09WS410', '2S907MRO73L', 'JkO6Os@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('676', 'CSRU0X4KY1D', 'PFT04O0T854', '7lm4j2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('677', 'YX088261P50', '42352Q0UB94', 'f3Ae50@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('678', 'AM84XHMMQ35', '243520064N5', 'qJ6ciq@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('679', '5I8N87S07V4', 'JDF8L4L7TDH', 'WN7cD8@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('680', '6149MU21O0W', '4FJ0H7RJ01I', '472J68@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('681', 'LQ4SCMEN185', 'RGK2433Y36X', 'D53WDp@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('682', '150AW2F47J0', '101E3N54JBQ', 'W8q753@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('683', 'V87T27T3H1H', 'EO43565FQ5O', 'j2007k@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('684', 'ASZV3A3U8ER', 'YV63JM6J4G0', 'f7y5s2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('685', 'EDU80243913', '2ABZ1GMY3S0', '7lY1O4@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('686', '2PLD46K9IS2', '4S1UZE7TVG5', '2xL83W@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('687', '3MP99E1PJ37', 'BI345TG018D', '13T0n4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('688', '4W24VJU9530', '01597752SO9', '4yOMHH@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('689', 'AZ4QJ84G778', 'OF4J5G39ZV6', 'x2L067@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('690', '1506A082D1C', '66F7432I9IS', '32aO26@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('691', '6DV8P03SD45', '24ADB723I8L', 'gT58I0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('692', '569G3028JGE', '11WYBZ82M1U', 'w46YIB@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('693', '635OGU637T3', '1A58AT1D4N3', '603hVP@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('694', '0701N55B8MW', '20I066GZFQA', 'jk4884@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('695', '43KQS85GS5N', '67M2WOWMS3H', 'LCcK0S@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('696', '0T3H039GC9C', '30IW4FOC4O4', 'A6071q@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('697', '5ZS18HA1P15', 'Y47Q2B3JZ59', '5i2s1M@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('698', '314KVPA069P', 'NAU2LM9561C', 'wg3t0P@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('699', 'FX75128YIS3', 'BZW5X68N833', '31pxIR@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('700', 'FRS77I9VYQ0', '966PLP4J1DH', '8c3513@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('701', 'QD34Z59ISS0', 'P7CBZC8K1LX', 'lv218B@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('702', '1118HQGN7K8', '981738P2RM1', '6v8MN0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('703', '79SRT614LK1', 'J6V0S6OEN44', '5dtIUO@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('704', '93VDX9HLZ8P', '68SLI6HQZ0X', 'UIf58F@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('705', '9USK8V50A48', '275352PSDRK', '1v4t4r@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('706', '31B48XZK2JI', 'FP0934A9923', '1L6JIS@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('707', '8N56Z49EV60', 'RGTB15W4J50', '5E4iA3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('708', 'IMWO7XDL6A4', 'L1R0T5P0JO8', 'q4r3r6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('709', '1361FU88MBN', '9A5U41MT9T6', '8qi86A@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('710', 'R1NFHOW0PC3', 'R8RML8568PM', '8hFTn2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('711', '8QC3M1KYY82', '2QRO864MIK2', 'n46hVq@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('712', 'GD712C4P3NW', '8L446N30H3O', 'dv3nXI@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('713', 'LE7913A45V6', 'YF84D6UU654', 'N74pA6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('714', '7SAH9B6102K', 'D15T2I92B5C', '60hsHQ@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('715', '9F30MZS19D7', 'BG6G02ZHMFG', '2k4J32@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('716', 'FAQLAYLM4WZ', 'C6S9I58FV5G', '1L168P@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('717', 'T1B8GJJL4B6', 'L6G2CX8M59L', '3d6u35@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('718', 'Y130353E329', 'Q41UG0SLGD3', '84s1Q8@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('719', '47G8KGX4RKH', '409ZFKN1G86', '05M28e@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('720', '0NR41WQKA58', 'QDD08I3O6D9', 'mqEn48@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('721', '3V81HP94HAV', 'HK0PY5WW1P8', '43jD6N@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('722', '859RHNBB4JP', 'LN63WBP1K84', 'M2qRmx@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('723', 'V4783081B4L', '042DX48035T', '7J14v7@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('724', 'E17K4N987R4', '251Q9K9WV0T', '8LD6us@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('725', '2DX39D1G718', 'QW41F99YCBW', 'NgUC0g@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('726', '5M26LIO8GWN', 'ARE9I34FJ0J', 'Q76I6x@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('727', '7AS021O74H3', 'BH8ACNNI519', '241LA2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('728', '4YGISY9095W', 'IS459N1DK13', '3Sf0fU@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('729', '080ZWPA1FY8', 'ZNHO5GQB1O3', '5E4ju8@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('730', 'UDZQJF9KE18', '6F50D7A6I28', '1Y7XJC@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('731', '7ZBPBE38MV4', '4C9HNF2BER6', 't3qXqW@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('732', 'F4FI1L03ZL1', 'R04LI2EPJ0L', 'HFsX3R@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('733', 'OXKU0G5Z9UT', 'OZU301O6E8N', '4C138G@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('734', '7XSO823WC52', 'T2A5AW0S1JA', 'NK2EUA@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('735', 'OGQ7100ZSN0', 'P59A99QI2R6', '385H30@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('736', 'T344MQA55KY', '59YYJM3W5DX', '3Ca2n6@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('737', 'W945XFNBL14', 'IS9SQXB09FS', '74s1G1@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('738', 'VTD105E2P8G', 'L8626FWCTE5', 'edxQ6u@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('739', '50058E6UTBK', '52I31TGOR78', '717JM5@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('740', '1MV24D97VC3', 'A6J8BP7025S', '2V583E@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('741', 'YZR714HCK7K', '54681ODJ6L3', 'hH1424@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('742', '1MQ7F87BG4A', '116XJN91221', 'A3A5X1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('743', '97FO13U9966', 'WBS98J5U8QO', 'io85b7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('744', '8D0XDNC5R94', '5X1O469IWIY', 'qrq1TF@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('745', '3ZTS0RF9923', 'IO1E353O570', 'mkE8w5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('746', '1560K190MS8', 'O4M41M88PO0', 'W6r80U@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('747', 'I8Q925T6I98', 'E1A2QC6W3X1', '0kO4x1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('748', '48448NG9XL3', 'P90R9L0O4ZT', '75326T@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('749', 'ZVL7VT0F9AA', 'B3S73M15Y02', '205D7c@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('750', '38IJLXZ63X8', 'FFJJ3L7CEXF', 'VpL0N6@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('751', 'CUA9XTB24JS', '93JF1W7II2M', '5Ot10D@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('752', '69R45D53SIT', 'K24JZ9YP749', 'EBAk00@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('753', '4E293FDT14X', '0PBI29FSCZV', '0Wo2sN@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('754', '9T18DS09H8V', 'B1LYPLY9462', 'i6EW3U@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('755', 'M4K47L5Z060', '8WSS76GEST7', 'QX7yNL@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('756', '7S23D6V6663', 'I3G4I3FK50H', 'w6Wrh7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('757', 'L8MUEI56WGY', 'EJLT0F4XY8A', '6egJS4@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('758', '2AOQCG5UP95', 'X7EILP7HOJM', '68Ql0s@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('759', '4X3S91E725C', '7S6JQA63886', '5L3no5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('760', 'SVZ351888CO', 'DT65N03604L', '0th3n1@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('761', '919QXT0HB2A', 'R64U44NJB7H', 'q6RD7g@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('762', '6XW1S538186', 'QM65H6JTPGI', 'j03S1Q@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('763', 'P0UTA76T1YM', 'EV13U476CK8', '6c8sl2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('764', '6J8OAQ84O37', '951OJ1X3356', '6Y6b6C@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('765', '6T49P2279KX', '36274OYAJM2', 'L77Ke0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('766', '1F9R7P25G83', '427732D5L7G', 'T8u468@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('767', '9WODR153734', 'E4816EADL74', '50tIsS@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('768', 'KHO00W03Y25', 'JA2YM4302PF', 'x4742a@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('769', 'J19K7LY1HP1', 'CY47526U6U7', 'jFE84Q@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('770', '4UDI726N0Z2', 'Q4547EOD0T2', '85K023@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('771', '3C2M8K1V8O6', 'MQDSUAD9DWF', '1J0ArD@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('772', '21QBQMHBS24', 'S3090ZNOZT2', 'Cqe18j@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('773', 'S70AHT4Z9S5', '134XX5RA00N', '283358@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('774', '3X8VD8W2X23', '900P110WLEN', 'H4C451@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('775', '614SAB98073', '52UH4B4O79H', '7AMUs0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('776', 'R79LNIX9Q7R', '785123D3J12', 't108jV@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('777', 'G7QS3QF9I5P', 'N7HK2Q86MJ8', 'K12hba@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('778', 'Y623CR8DKRM', '4AP5C239E8D', '6N4y1H@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('779', 'VY079GWJ4FV', 'ID7H9LVF9U7', '15wC7d@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('780', '1AKTF7EWOI3', '5O375757WS6', 'wh7Es4@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('781', 'WESSFQ247I8', 'KMXO2D9VZ1B', '4Y4Hp5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('782', 'O36P0JU3C5N', 'ONUO762HT9Q', 'K8165P@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('783', 'TJ3EKF2A69U', 'CM2CJ57KX7E', 'k0GOAY@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('784', 'X1D45VZG3GL', '18N9L1RW9N0', 'DPSWcr@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('785', 'LHMG8B940W3', 'Z3G0SB4E46D', 'k0N68v@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('786', 'H8V4VO624L6', '6A3IA89LF14', 'Y0hIUf@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('787', 'OZ40BVIBOE7', 'ZIT8N91QK95', '7K8142@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('788', '6T17RT7AS81', '5KLN20QAS22', '52hap6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('789', '578M814S7VE', '8FA45KE6IF8', 'OP2DP7@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('790', 'N35HL7D4GZY', '6N0ROJ55HII', '37K7F7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('791', 'HWS90AK15KV', 'DZB9719A33V', 'TuXXxA@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('792', 'N34J7Y0XPM8', '45L032CL126', '2wc6Q3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('793', 'JE983L1EBAN', 'C18951A4X60', 'L43573@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('794', 'AO3FI8P600Y', '7668C79TP2Y', '11b075@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('795', '8AGUK8DR4Z0', '945MM359J56', '31ruJm@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('796', 'MQ27NF8MZJ4', '51BNE1UII52', 'dv4D76@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('797', 'C2L2YXN7O9W', '512S25138R8', 'qEE346@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('798', 'SO137V37T39', '77MVC199F82', '7CxUcF@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('799', 'VG40QQ94111', '6X5M5J996G5', '7o080q@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('800', '813M1O48DHZ', 'HO8VSI70AY0', 'r40GTe@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('801', '28I7J2G5FIQ', '309FO386KRS', 'B5Qor2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('802', '60X6IB09LAR', 'D634280GI24', '155B1w@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('803', 'L06944CD0OQ', '08U0SDQ9D08', 'l86o02@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('804', 'Z6R6VA403MY', '5JQJN32VJQ7', 'tPg60V@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('805', 'F0V2P8O7A6U', '7R4AH7L8D75', '05y765@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('806', 'P8J7WY9W751', '2OU6UI4MG3D', '28sS1c@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('807', 'PD59DVDU4T9', '8D50B753444', 'nHTT38@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('808', 'AS8XYQJ4434', '5B9T5788VM5', '2j1v0n@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('809', '8UO33S2N1PH', '4DPZ21XNE03', '4W3v42@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('810', '7978E7285I2', '4E4V2VI3B36', 'bo72d3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('811', '583IMXO3JB7', '8537GK0EV62', 'V5K75K@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('812', 'N0ZZNBCE66P', '86835R8HGE0', '444WFD@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('813', '1845FL30806', '0W7TM3H0VL0', 'Ob3S2b@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('814', '4V0JW7029KN', '24BS07E73YW', '86If4Y@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('815', '2OGS1KNNAQI', 'QBA650QM16G', '7F60c0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('816', '4O1KQY24OY7', 'WI578Y81963', 'yNv4u3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('817', '16A884MR493', 'FUMQ8Y729AU', '2XO208@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('818', 'ZBA57A81H5H', 'U4EOC0I8T69', '7pO0j7@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('819', '7608G52RJ20', '38ZAVJY5223', '6dq618@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('820', '6F13O247S23', 'Q3GK6KL16YW', 'O1J1wA@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('821', 'Z2091MG2K7C', '4NW30PNER3J', 'J0301Q@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('822', 'F49F2F41V74', 'A2YVJM34ZY1', '2GG044@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('823', 'X3P1P6D68M5', 'YQ0698GO1DX', '3EO031@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('824', 'S26O263OZJQ', '9NC1SBDJL7V', '7N321Y@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('825', 'ME2S9310BI8', '7OH298I5H23', 'I74hR0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('826', 'S9Y014F8T06', '8Z1B931AE67', '15PE1q@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('827', 'U1A3511AEB0', 'T9T2BF9G84W', 'xn07f1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('828', '719U732T7YM', 'OE72R59SRX3', '7J76O0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('829', 'Y3MXN708Z6B', 'B917OAY8407', 'iXlSs5@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('830', '14UO2G7U968', 'O25WK28B5M0', 'B0750L@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('831', 'KU43326V794', 'WH006065YH6', 'pbf862@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('832', '53OM3G13UR6', 'U35T14508K2', 'Ay27pC@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('833', 'MDF94512KCD', 'M5IYD1R13H2', '2fx1f2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('834', 'FGR7T1A4FR2', '92550NV23N8', 'n7JjFa@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('835', '2H0B39732TI', '1F0LN392F9Y', '1M56v7@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('836', '074T13OGN03', '0BOPN4P9E45', '86Ix76@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('837', '88OR5GOZ345', 'T279AAT2WVG', '1bC8Of@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('838', '4V3A72FAOAV', '35MHF6O7ILL', 'd7goX7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('839', '3676Y4RC2G8', 'IH94M3YZP73', '0357Af@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('840', '58566B4P7DL', '66FNL551P8O', 'UBBUmA@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('841', '8LAA8T76RJ7', 'U2YI054858W', '5K28pg@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('842', '41F8TP38WKK', '98IQJL8ZS90', 'T4416e@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('843', '1CR11IRR9SO', '08348C42C16', '11C5W7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('844', 'P228P199L88', 'KUBKT9ETX4L', 'B2s332@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('845', 'C5JK01X6Y6H', '323548S9E43', 'hrrEUn@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('846', 'VD0B37ZE935', 'OJ68YJ18U45', 'YaRUOu@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('847', '24559SP6O11', 'XAJ9II5O7U4', 'Od6SRh@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('848', '7X4R7HZ83H5', 'OW39N73RXK1', '66lKR5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('849', 'X4A37M77A7P', 'LVRY3Q49LH3', 'U7Es2F@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('850', 'J1ZXT232OO3', 'YIC8YNFT52A', 'MiLP6S@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('851', 'QRLATSV0V11', '84PD0T26U2J', 'd50l22@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('852', 'YN34MLXV3W2', 'IU1C2X206O2', '33Yv5c@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('853', 'D7XL9P1YGFB', 'T81DOA5VT29', '2P2I36@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('854', '27K1K2813F9', '35LQ40HJV7S', 'm0U04F@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('855', '8UO7U6978J6', 'B9ONWCI2J2X', '546r44@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('856', 'SRV932NNNWK', 'U00X8DN0218', '1P04c1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('857', '0YS7377987L', '0XB318D4C8Z', '0p48ag@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('858', '900B85ZRAJ4', '5086099820A', '0G05H7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('859', '8VAGWN5C819', 'VZC7N67L3RB', 'bs848n@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('860', 'DK1LPFM3660', 'ACU7PF3FD3I', 'SibXv2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('861', '11YE8ZU21V2', 'FMZW4E49NX2', '658p35@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('862', '25YT8K1L09L', '5JSI5RQ6EW5', 'IPua01@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('863', 'LHMLD99KE6C', '3BICN0TQQIL', '351o28@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('864', '6R8090AY26F', 'D2P6885Q3BV', '875nSB@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('865', '947SDEJ3C25', 'G38J08X1AEZ', '6bH352@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('866', '257248MCI4Q', '7FVIW40ZAG3', 'AUq5jN@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('867', '0XQ0L63VAR2', '9U6Q31C692W', '056wnd@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('868', 'IP8R9DE7620', 'H5K1NHGF1D1', '52WCVF@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('869', 'SSUBRHMP404', 'W8V77O8G92H', '8FiX0r@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('870', '12NUDM74ANI', '07G6GTJU697', 'T0krV2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('871', '8L04EK8P91K', 'I817J3IX7SO', 'XCb363@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('872', '0Z35O7V67R2', 'YM78D63M791', 'p68m6B@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('873', '0LR45LTAI06', '946W477STP4', 'L6k33e@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('874', 'LU2T9VU4OT4', '7IF87350A1L', 'WE8D62@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('875', 'U2F5P4I2C5D', 'KU4N474B4J8', 'Tb54jE@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('876', '2ACE7AV3DO1', '4EJD6AIR0J9', '7NaQ0g@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('877', '2H51O2HL711', 'BS6N03L6T57', 'W48PF3@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('878', 'RVZV3KP9B88', 'P32C0E34F21', 'Ti1ART@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('879', '946F8S805AL', '2IVN3C6C9I2', 'Rd5OR3@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('880', '50770QDD595', 'GVF2GWKP45V', '6G3h65@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('881', '0BM0021Y5IN', '22O065F77J2', 'K35KIv@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('882', 'S3860SF6EHA', 'FL5XQBUJMRU', 'rH7VF0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('883', 'NHQ9PG7WNFU', 'Z4WS0IBB6PA', 'SgR2r3@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('884', 'N1A468F05Z5', '1VKA32518ZC', 'nG1Ole@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('885', '6IJ35R4YGS3', '0A4W0WXIN6W', '45x5J8@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('886', '2K025Q01C7R', 'I7819USCKQ8', '4eLaH6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('887', 'FT0ZPD9ARSL', 'XW0KZ1S2I52', 'G1DX53@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('888', 'U84L7U269MU', 'N10Z6HI66S8', 'r8n63f@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('889', 'D9V2L106K83', 'CN709656554', '5I3uKQ@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('890', 'YD99COVZJJ2', 'ZFXRN1D4089', 'AFPI6E@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('891', '5WFR8SIF14I', '6G3563WEWAG', '72v227@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('892', '5TKU79M36XM', 'R44I897AD6R', '3LLxK0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('893', '7F578NE08FH', 'V5GQ5MA4P39', 'jk2t2o@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('894', 'H7XZEG26EW6', '98N3XEH4E22', '3i7263@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('895', 'PS7Z46FN670', '8042DEQM1AH', 'Ya8T51@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('896', 'V30ZUO1X3BA', 'ZL5S5IF5N4D', 'sQbM88@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('897', '1YWFP7Z0538', 'HLI2864U70O', '41QymP@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('898', 'G6R6N6449O1', 'GT64VNALXXU', '38h5oy@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('899', '7AR5D35P0DK', '06ZS758Y5R7', '07F5pq@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('900', 'V2F91231DOB', '33S6R4GL3EI', '646838@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('901', '3WY1OQB2C03', 'MI8YS30343A', '7qIR87@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('902', '37FS7U53911', 'U4V387A5M01', 's4mF87@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('903', '4581DBQY7Z9', 'QX36AIYW776', 'O3Nn2Y@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('904', '3K1AP2A8674', 'OZV06Y9QU3J', '8x5586@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('905', '4W9E788GB4M', 'T0PNSM18326', 'ynRx2l@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('906', 'L772KO89P2S', 'TG52KZGURVT', '626d5I@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('907', '31RKL0NB2MK', 'RR50KETNY6B', '823BK4@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('908', 'J093K0HB704', 'ZC7H6WGK17T', 'YW1RLD@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('909', '04CL0737Q5W', '252XN9963RC', 'A57Y86@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('910', '0W0HK5ZSS6U', '635393VS13Z', '67qbP1@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('911', 'PEV72B9JOU6', 'UW5H7T5M11S', '5D1Ril@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('912', 'Z3I1O28HE71', '933S96U7L8C', '854013@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('913', '2D5F163FV02', 'XKT6071026D', 'aI5QOd@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('914', '2101AUJ53T9', '4EX7BZF56ZX', 'Q28cOy@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('915', 'MG542PSHSOS', '6XE39K2OAWF', 'irEF0H@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('916', 'PYIX09LJ903', 'ZH615K94O87', 'V85Gad@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('917', '7Y641LE9GT4', '443924I9269', 'n13X8E@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('918', '4E1AVJEVFET', '3SHXQB3576X', '4xe872@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('919', 'KTZ9BWA85W4', '0A256H820UL', '0725W5@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('920', '39B6FX5DEA0', 'E0Z0337P4F4', 'vy7vn4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('921', '5U49PHVPL5S', '48AY1Z6842X', '3Xmdr5@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('922', 'VV51M173DVU', '8E2TJ8K900L', 'WC3YKH@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('923', '461VZXRN388', 'OBZDHL1F022', 's2x1Tu@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('924', 'V7891QL548B', '152Z4G932HM', 'ca4V36@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('925', 'PSPBXML443H', 'D042B6BM211', 'FNKse2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('926', 'MOWXZ9RIL3H', 'SK192PC5M2T', '25303N@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('927', 'USEF3GYH9F0', '2JS626BFVI3', 'WhH482@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('928', 'GW0I573HQGH', 'MKY0TOBSL48', '2tD0gv@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('929', '475K5916I07', 'B602G327L14', '4Tom1W@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('930', '0NF9HL1A33V', '8G48Z65319B', '1cxt7l@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('931', '2IKTSNK208M', 'ITP2181Y0LP', 'TU5t0l@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('932', '5C72390I02Z', '7UAPFF1GWK5', 'jl4X8s@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('933', '494W97PTPC6', 'W4O841PV688', 'U2DH81@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('934', '8JD5WKRD178', '9I81108Y3LR', 'N22BD8@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('935', 'FT9E9UM58P8', 'ZMXW105Q0AH', 'CT424M@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('936', '0HM7XNR320Q', 'UM15C7C15TY', '0GD0j3@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('937', 'UH3927VSW9L', '39OB370VQTH', 'VedNy1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('938', 'X4OGNT8O7C0', 'N1MU6RN148H', 'o47C75@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('939', 'HZ52ADB28DL', '6DJ8QEH5QA5', 't4hKw2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('940', 'Q9KS3WITU45', 'VFJ45MS6497', 'g84l5D@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('941', 'S2H93L8E427', 'II87010Y2GA', '1CSW17@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('942', '2G0H902SSUZ', '1O35OJV132I', '6Mdg54@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('943', '6DVB37OG30D', '718Y29G350P', '60W5V2@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('944', 'I4G0CMYS1P4', 'XE5GBPGE2J7', 'eqW516@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('945', '3P807VF5P95', 'W4VJ4KGY514', 'g75x88@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('946', '2G786F0D23T', '790G1X60298', '84244q@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('947', 'G186CXU4K8J', '6YG5393690H', '7QB3XL@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('948', 'F9VZ5C8KT45', 'MSHH96XPE8L', 'Ap8775@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('949', '2I68E09A7D3', 'SM5GZ2WC5H4', '0dxrL6@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('950', '3MNH2784RHG', '6N3B0O0JQJP', '4v7A1f@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('951', 'WRG38YR61CA', 'AHJYORU8YK8', 'ACX323@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('952', 'GOQHSU4VO4I', 'H0X21LJ2PPI', 'Q38Yjh@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('953', 'O1RT6R6IH52', 'OV6O5R64M4M', 'M6J2R7@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('954', 'J7B90L994P8', 'LU4BA3LLZ8O', 'R84477@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('955', 'IHHK8W7TEAW', 'KOFXXNXPH54', 'V74G33@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('956', '9OF5O0882G8', '1A3FW3499RW', 'a7VmhU@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('957', 'MGQ1471A5N0', 'EYD5Y72EXU0', 'yF8846@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('958', 'Y59O64IY709', '5L5JR8386HW', '0x0y13@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('959', 'QN32V136920', 'IW6U087J083', '1171UL@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('960', 'RJ68GB3VRS1', 'U36J921B5K4', '2q5wA6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('961', '1E0YPQ5CXBA', 'H5059HSE1CJ', 'T727S1@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('962', '0DE7O12T145', 'TWZ4I2UDRBS', '51X1R7@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('963', 'X8759911839', 'Y2MF66U528L', '23c7x0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('964', 'P10Y0A6QYVB', 'KM5HO1B0Z63', '16h662@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('965', '7DY6F5W2M39', '4PT07WL3L6A', '22Df0P@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('966', 'O535S3N8QE4', 'W9Q5JTJSS0F', 'QtPOH4@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('967', 'L38DR5I87PS', '679P982LHQ8', '7Y20lE@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('968', '3J97ZMHKVC2', '2053P5H04YV', '22w7jw@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('969', '139TG2D7DHW', '59QQ4BVBECR', 'Y8qGi0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('970', 'Q50JD8Y825W', 'K6AQDW2A7IO', 'OA5eGr@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('971', 'W7719E5MN34', '8XZV6NQXWTA', '444x7J@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('972', '666T6HE8YM7', 'J59W3I4RC32', 'v631S5@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('973', 'SSEC3572IXH', '35BTAHGNSEH', '2ixRv2@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('974', '3ILU4JWG2T7', 'DC492WJ1U88', 'Eq6pv5@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('975', '865H4171EH8', 'Y81MWOG7368', 'LN2g76@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('976', 'B5D6U4OAMLQ', 'X0254XY29W7', 'ldG81r@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('977', 'BPL91G7BG6Z', 'NA5H8BM3BH8', '880m13@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('978', '54VT6Z1EG3Z', '75J130HJGPH', 'kEu047@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('979', 'C89318UG34R', '66U3BH9N1S1', 'fgkN06@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('980', 'S65Q49OW5A8', 'FV683NWY9IZ', '00Kkoj@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('981', 'QL6LA4I4Y0Z', '9B7HUM36F5K', 'Q7O6D0@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('982', 'X7I6QG90U7F', 'ACTD2B04JX9', 'h41s24@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('983', 'GQZP86C39NG', 'C49N8B5B891', '658vh1@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('984', '2906Z5554E9', '82W4O8190RE', '22586g@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('985', '8MI7T32U4R2', '4UQ4JFUQLN9', '7LHC10@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('986', '4SKMTYL0300', 'LN25032Y48K', '5YU576@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('987', '91HUG5C2VRG', 'J681Z59QS0T', 'Xwai60@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('988', 'M6Z175LQ4D1', '8HT78L7T76A', '1cb04R@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('989', 'XBHQ8OVND2K', '33S713HN575', '80H072@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('990', 'EL3QM21AG6G', '600J9497TJC', '03b0d0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('991', 'BT63I1C4WN7', 'OL11I6M8NT4', '3k5t8T@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('992', 'HWX948CV46Q', 'HZ98NZ898U3', 'xh3201@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('993', 'I303J8X3BCE', 'FT6RO1RP7W2', '4155A6@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('994', 'K5I6D7A9E3H', 'G8H249RNN36', '614j7B@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('995', '46V6Q7L5IYY', '530WK48BLW9', 'BQ5j6i@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('996', '4B1B42RGFDN', '4B519ECTT4W', 'O13552@qq.com', '女', '', '', '普通用户');
INSERT INTO `user` VALUES ('997', '03C4MSK4HLC', 'V28216MT6K2', 'rSAIdh@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('998', '44VC6673O2J', 'RBJ90I64N9P', 'FO8MU4@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('999', '00T6TWF6L6L', '0RWLPE9Q5I0', 'd46SA0@qq.com', '男', '', '', '普通用户');
INSERT INTO `user` VALUES ('1000', 'kangkang', '123456', '2014561112@qq.com', '男', '', '', '管理员');
INSERT INTO `user` VALUES ('1001', 'admin', 'admin', 'admin@qq.com', '男', '', '', '超级管理员');

-- ----------------------------
-- Table structure for xiaoyuandianhua
-- ----------------------------
DROP TABLE IF EXISTS `xiaoyuandianhua`;
CREATE TABLE `xiaoyuandianhua` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `category` (`category`),
  CONSTRAINT `xiaoyuandianhua_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `xiaoyuandianhua_cg` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `xiaoyuandianhua_ibfk_2` FOREIGN KEY (`category`) REFERENCES `xiaoyuandianhua_cg` (`category`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xiaoyuandianhua
-- ----------------------------
INSERT INTO `xiaoyuandianhua` VALUES ('1', '1', '快递电话', '顺丰速运', 'logo_shunfeng.png', '95338');
INSERT INTO `xiaoyuandianhua` VALUES ('2', '1', '快递电话', '中国邮政EMS', 'logo_ems.png', '11183');
INSERT INTO `xiaoyuandianhua` VALUES ('3', '1', '快递电话', '申通快递', 'logo_shentong.png', '95543');
INSERT INTO `xiaoyuandianhua` VALUES ('4', '1', '快递电话', '圆通速递', 'logo_yuantong.png', '95554');
INSERT INTO `xiaoyuandianhua` VALUES ('5', '1', '快递电话', '韵达快递', 'logo_yunda.png', '95546');
INSERT INTO `xiaoyuandianhua` VALUES ('6', '1', '快递电话', '中通速递', 'logo_zhongtong.png', '95311');
INSERT INTO `xiaoyuandianhua` VALUES ('7', '1', '快递电话', '宅急送', 'logo_zaijisong.png', '4006789000');
INSERT INTO `xiaoyuandianhua` VALUES ('8', '1', '快递电话', '德邦物流', 'logo_debang.png', '95353');
INSERT INTO `xiaoyuandianhua` VALUES ('9', '2', '订餐电话', '麦当劳', 'logo_mdl.png', '4008517517');
INSERT INTO `xiaoyuandianhua` VALUES ('10', '2', '订餐电话', '肯德基', 'logo_kfc.png', '4008823823');
INSERT INTO `xiaoyuandianhua` VALUES ('11', '2', '订餐电话', '必胜客', 'logo_bsk.png', '4008123123');
INSERT INTO `xiaoyuandianhua` VALUES ('12', '2', '订餐电话', '真功夫', 'logo_zgf.png', '4006927927');
INSERT INTO `xiaoyuandianhua` VALUES ('13', '2', '订餐电话', '吉野家', 'logo_jiyejia.png', '4008197197');
INSERT INTO `xiaoyuandianhua` VALUES ('14', '2', '订餐电话', '永和大王', 'logo_yonghedawang.png', '010-65073338');
INSERT INTO `xiaoyuandianhua` VALUES ('15', '2', '订餐电话', '海底捞火锅', 'logo_haidilao.png', '4008107107');
INSERT INTO `xiaoyuandianhua` VALUES ('16', '2', '订餐电话', '德克士', 'logo_dicos.png', '4006309907');
INSERT INTO `xiaoyuandianhua` VALUES ('17', '3', '外卖电话', '黄焖鸡米饭', '001.jpg', '13699732939');
INSERT INTO `xiaoyuandianhua` VALUES ('18', '3', '外卖电话', '杨国福麻辣烫', '002.jpg', '18198911851');
INSERT INTO `xiaoyuandianhua` VALUES ('19', '3', '外卖电话', '九门寨石锅鱼', '003.jpg', '15692415500');
INSERT INTO `xiaoyuandianhua` VALUES ('20', '3', '外卖电话', '淼鑫猪肚鸡', '004.jpg', '020-39955589');
INSERT INTO `xiaoyuandianhua` VALUES ('21', '3', '外卖电话', '梅斯特', '005.jpg', '020-31146463');
INSERT INTO `xiaoyuandianhua` VALUES ('22', '3', '外卖电话', '面相聚', '006.jpg', '15820236975');
INSERT INTO `xiaoyuandianhua` VALUES ('23', '3', '外卖电话', '皇冠·玛莉奥', '007.jpg', '020-34726627');
INSERT INTO `xiaoyuandianhua` VALUES ('24', '3', '外卖电话', '贡茶', '008.jpg', '020-23886876');
INSERT INTO `xiaoyuandianhua` VALUES ('25', '3', '外卖电话', '味行动麻辣香锅', '009.jpg', '020-31045959');
INSERT INTO `xiaoyuandianhua` VALUES ('26', '3', '外卖电话', '麦可滋', '010.jpg', '020-36228221');
INSERT INTO `xiaoyuandianhua` VALUES ('27', '3', '外卖电话', '嘉记深井烧鹅', '011.jpg', '020-34726627');
INSERT INTO `xiaoyuandianhua` VALUES ('28', '3', '外卖电话', '开心花甲粉', '012.jpg', '13580494531');
INSERT INTO `xiaoyuandianhua` VALUES ('29', '3', '外卖电话', '禾意回转寿司', '013.jpg', '020-39298699');
INSERT INTO `xiaoyuandianhua` VALUES ('30', '3', '外卖电话', '老湘村', '014.jpg', '020-22626515');
INSERT INTO `xiaoyuandianhua` VALUES ('31', '3', '外卖电话', '森动烧烤', '015.jpg', '020-29891915');
INSERT INTO `xiaoyuandianhua` VALUES ('32', '3', '外卖电话', '呆萌比萨', '016.jpg', '020-84589186');
INSERT INTO `xiaoyuandianhua` VALUES ('33', '3', '外卖电话', '东北人家饺子馆', '017.jpg', '020-39950060');
INSERT INTO `xiaoyuandianhua` VALUES ('34', '3', '外卖电话', '正宗津市牛肉粉', '018.jpg', '020-29079231');
INSERT INTO `xiaoyuandianhua` VALUES ('35', '3', '外卖电话', '利品湘木桶饭', '019.jpg', '020-22096651');
INSERT INTO `xiaoyuandianhua` VALUES ('36', '3', '外卖电话', '牛三藏火锅', '020.jpg', '18317991426');
INSERT INTO `xiaoyuandianhua` VALUES ('37', '3', '外卖电话', 'TTOP顶级茶道', '021.jpg', '13826185617');
INSERT INTO `xiaoyuandianhua` VALUES ('38', '3', '外卖电话', '圣德堡', '022.jpg', '020-84747578');
INSERT INTO `xiaoyuandianhua` VALUES ('39', '3', '外卖电话', '初客牛排', '023.jpg', '18028091361');
INSERT INTO `xiaoyuandianhua` VALUES ('40', '2', '订餐电话', '今天吃鹅有机农庄', '024.jpg', '18026246291');
INSERT INTO `xiaoyuandianhua` VALUES ('41', '2', '订餐电话', '行奇异千层蛋糕', '025.jpg', '13288803004');
INSERT INTO `xiaoyuandianhua` VALUES ('42', '2', '订餐电话', '老北京炸酱面', '026.jpg', '15900052003');
INSERT INTO `xiaoyuandianhua` VALUES ('43', '2', '订餐电话', '虞美人', '027.jpg', '15018438852');
INSERT INTO `xiaoyuandianhua` VALUES ('44', '2', '订餐电话', '花果鲜茶', '028.jpg', '18575277527');
INSERT INTO `xiaoyuandianhua` VALUES ('45', '2', '订餐电话', '大食九奶茶饮品', '029.jpg', '13527790393');
INSERT INTO `xiaoyuandianhua` VALUES ('46', '2', '订餐电话', '快三秒汉堡果汁店', '030.jpg', '13928897065');
INSERT INTO `xiaoyuandianhua` VALUES ('47', '2', '订餐电话', '蜀香轩', '031.jpg', '13160816009');
INSERT INTO `xiaoyuandianhua` VALUES ('48', '2', '订餐电话', '耍牛满·爽腩鲜牛肉火锅', '032.jpg', '020-39218789');
INSERT INTO `xiaoyuandianhua` VALUES ('49', '2', '订餐电话', '真功夫（南村医院店）', '033.jpg', '400-692-7927');
INSERT INTO `xiaoyuandianhua` VALUES ('50', '2', '订餐电话', '梅斯特（南村店）', '034.jpg', '020-31146463');
INSERT INTO `xiaoyuandianhua` VALUES ('51', '2', '订餐电话', '东海堂（雅居乐店）', '035.jpg', '020-34766977');
INSERT INTO `xiaoyuandianhua` VALUES ('52', '2', '订餐电话', '皇家烤官', '036.jpg', '18620596573');
INSERT INTO `xiaoyuandianhua` VALUES ('53', '2', '订餐电话', '缤客意式手工冰淇淋', '037.jpg', '13599278487');
INSERT INTO `xiaoyuandianhua` VALUES ('54', '2', '订餐电话', '自由自在', '038.jpg', '13423999691');
INSERT INTO `xiaoyuandianhua` VALUES ('55', '2', '订餐电话', '榴芒恋上冰（南村店）', '039.jpg', '15820233693');
INSERT INTO `xiaoyuandianhua` VALUES ('56', '2', '订餐电话', '杨小贤（番禺万达店）', '040.jpg', '13418031713');
INSERT INTO `xiaoyuandianhua` VALUES ('57', '2', '订餐电话', '满客贡茶(番禺万达店)', '041.jpg', '020-39193897');
INSERT INTO `xiaoyuandianhua` VALUES ('58', '2', '订餐电话', '迪克咖啡·西餐厅', '042.jpg', '020-39950086');
INSERT INTO `xiaoyuandianhua` VALUES ('59', '2', '订餐电话', '金沙湾（万博店）', '043.jpg', '18928786977');
INSERT INTO `xiaoyuandianhua` VALUES ('60', '2', '订餐电话', '重庆烤活鱼石锅鱼', '044.jpg', '13113937179');
INSERT INTO `xiaoyuandianhua` VALUES ('61', '2', '订餐电话', '1128水果店', '045.jpg', '13422111128');
INSERT INTO `xiaoyuandianhua` VALUES ('62', '2', '订餐电话', '星河湾酒店', '046.jpg', '020-39933618');
INSERT INTO `xiaoyuandianhua` VALUES ('63', '2', '订餐电话', 'The Tavern Sports ..', '047.jpg', '020-34824882');
INSERT INTO `xiaoyuandianhua` VALUES ('64', '2', '订餐电话', '皇冠·玛莉奥（广海店）', '048.jpg', '020-34726627');
INSERT INTO `xiaoyuandianhua` VALUES ('65', '2', '订餐电话', '聚朋潮汕砂锅粥烧烤吧', '049.jpg', '13533659099');
INSERT INTO `xiaoyuandianhua` VALUES ('66', '2', '订餐电话', '二娘重庆冒菜', '050.jpg', '13660264070');
INSERT INTO `xiaoyuandianhua` VALUES ('67', '2', '订餐电话', '麦兴饼屋（塘东店', '051.jpg', '18719255496');
INSERT INTO `xiaoyuandianhua` VALUES ('68', '2', '订餐电话', '炉子炖砵', '052.jpg', '020-34725099');
INSERT INTO `xiaoyuandianhua` VALUES ('69', '2', '订餐电话', '呆萌披萨（南村店）', '053.jpg', '020-84589186');
INSERT INTO `xiaoyuandianhua` VALUES ('70', '2', '订餐电话', '清潭谷', '054.jpg', '020-34763939');
INSERT INTO `xiaoyuandianhua` VALUES ('71', '2', '订餐电话', '美味轩蛋糕', '055.jpg', '15989037760');
INSERT INTO `xiaoyuandianhua` VALUES ('72', '2', '订餐电话', '茂源养生炖品', '056.jpg', '020-31100689');
INSERT INTO `xiaoyuandianhua` VALUES ('73', '2', '订餐电话', '龙行天虾(虾尚皇)', '057.jpg', '020-39189035');
INSERT INTO `xiaoyuandianhua` VALUES ('74', '2', '订餐电话', '哈尔滨烧烤城-雪中王', '058.jpg', '15915729567');
INSERT INTO `xiaoyuandianhua` VALUES ('75', '2', '订餐电话', '本家韩国料理(番禺店)', '059.jpg', '020-34821771');
INSERT INTO `xiaoyuandianhua` VALUES ('76', '2', '订餐电话', '德利私厨-轻奢粤菜', '060.jpg', '020-34721862');
INSERT INTO `xiaoyuandianhua` VALUES ('77', '2', '订餐电话', '滋粥楼(南村店)', '061.jpg', '020-34691188');
INSERT INTO `xiaoyuandianhua` VALUES ('78', '2', '订餐电话', '森町渔屋', '062.jpg', '020-38983636');
INSERT INTO `xiaoyuandianhua` VALUES ('79', '2', '订餐电话', '非常厨房', '063.jpg', '18802061675');
INSERT INTO `xiaoyuandianhua` VALUES ('80', '2', '订餐电话', '叠水泉蚝专家', '064.jpg', '020-84561088');
INSERT INTO `xiaoyuandianhua` VALUES ('81', '2', '订餐电话', '一起吃小龙虾(万博店)', '065.jpg', '13926097288');
INSERT INTO `xiaoyuandianhua` VALUES ('82', '2', '订餐电话', '王品牛排(番禺万达店)', '066.jpg', '020-34763126');
INSERT INTO `xiaoyuandianhua` VALUES ('83', '2', '订餐电话', '隆江猪脚饭', '067.jpg', '13286862405');
INSERT INTO `xiaoyuandianhua` VALUES ('84', '2', '订餐电话', '周黑鸭(万达广场店)', '068.jpg', '4001717917');
INSERT INTO `xiaoyuandianhua` VALUES ('85', '2', '订餐电话', '超级队长Mix V(万达店)', '069.jpg', '020-31126566');
INSERT INTO `xiaoyuandianhua` VALUES ('86', '2', '订餐电话', '路转粉(南村店)', '070.jpg', '13631397067');
INSERT INTO `xiaoyuandianhua` VALUES ('87', '2', '订餐电话', '精品沙县小吃', '071.jpg', '18826280729');
INSERT INTO `xiaoyuandianhua` VALUES ('88', '2', '订餐电话', '嘉记深井烧鹅(南村店)', '072.jpg', '020-39952998');
INSERT INTO `xiaoyuandianhua` VALUES ('89', '2', '订餐电话', '传奇冒菜', '073.jpg', '13802429907');
INSERT INTO `xiaoyuandianhua` VALUES ('90', '2', '订餐电话', '莫老爷老鸭粉丝', '074.jpg', '020-31135891');
INSERT INTO `xiaoyuandianhua` VALUES ('91', '2', '订餐电话', '蒸之味营养快餐', '075.jpg', '020-34768533');
INSERT INTO `xiaoyuandianhua` VALUES ('92', '2', '订餐电话', '钱大妈(华碧店)', '076.jpg', '13286890693');
INSERT INTO `xiaoyuandianhua` VALUES ('93', '2', '订餐电话', '兴隆砂锅土豆粉', '077.jpg', '13432052229');
INSERT INTO `xiaoyuandianhua` VALUES ('94', '2', '订餐电话', '肥仔隆江猪脚饭', '078.jpg', '18102795718');
INSERT INTO `xiaoyuandianhua` VALUES ('95', '2', '订餐电话', '紫燕百味鸡(里仁洞村店)', '079.jpg', '13602799987');
INSERT INTO `xiaoyuandianhua` VALUES ('96', '2', '订餐电话', '一品炖汤(南村店)', '080.jpg', '13829792617');
INSERT INTO `xiaoyuandianhua` VALUES ('97', '2', '订餐电话', '百味千滋瓦罉饭', '081.jpg', '020-39185492');
INSERT INTO `xiaoyuandianhua` VALUES ('98', '2', '订餐电话', '娅米西做', '082.jpg', '020-34822166');
INSERT INTO `xiaoyuandianhua` VALUES ('99', '2', '订餐电话', '毅记猪扒包', '083.jpg', '13925098181');
INSERT INTO `xiaoyuandianhua` VALUES ('100', '2', '订餐电话', '味觉印象超级牛杂铺', '084.jpg', '13600041140');

-- ----------------------------
-- Table structure for xiaoyuandianhua_cg
-- ----------------------------
DROP TABLE IF EXISTS `xiaoyuandianhua_cg`;
CREATE TABLE `xiaoyuandianhua_cg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xiaoyuandianhua_cg
-- ----------------------------
INSERT INTO `xiaoyuandianhua_cg` VALUES ('3', '外卖电话');
INSERT INTO `xiaoyuandianhua_cg` VALUES ('1', '快递电话');
INSERT INTO `xiaoyuandianhua_cg` VALUES ('2', '订餐电话');

-- ----------------------------
-- Table structure for ylsoftware
-- ----------------------------
DROP TABLE IF EXISTS `ylsoftware`;
CREATE TABLE `ylsoftware` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `softName` varchar(255) DEFAULT NULL,
  `softType` varchar(255) DEFAULT NULL,
  `softImage` varchar(255) DEFAULT NULL,
  `soft_to_title` int(255) DEFAULT NULL,
  `soft_jianjie` varchar(255) DEFAULT NULL,
  `soft_jietu` varchar(255) DEFAULT NULL,
  `softUrl` varchar(255) DEFAULT NULL,
  `soft_date` varchar(255) DEFAULT NULL,
  `soft_version` varchar(255) DEFAULT NULL,
  `soft_pw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `soft_to_title` (`soft_to_title`),
  CONSTRAINT `ylsoftware_ibfk_1` FOREIGN KEY (`soft_to_title`) REFERENCES `ylsoftware_title` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylsoftware
-- ----------------------------
INSERT INTO `ylsoftware` VALUES ('1', '360驱动大师', '系统工具', 'ylrj/tubiao/1.png', '3', '360驱动大师是一款专业解决驱动安装更新软件，百万级的驱动库支持，驱动安装一键化，无需手动操作，首创的驱动体检技术，让你更直观了解您电脑的状态，强大的云安全中心让保证您所下载的驱动不带病毒', 'ylrj/jietu/1.jpg', 'http://pan.baidu.com/s/1bo0YHLP', '2017/5/7', '1.0.0', 'm8l0');
INSERT INTO `ylsoftware` VALUES ('2', '刷机精灵', '系统工具', 'ylrj/tubiao/2.png', '3', '乐视视频，原名乐视网，成立于2004年北京，享有国家级高新技术企业资质，致力打造基于视频产业、内容产业和智能终端的“平台+内容+终端+应用”完整生态系统，被业界称为“乐视模式”。乐视垂直产业链整合业务涵盖互联网视频、影视制作与发行、智能终端、应用市场、电子商务、互联网智能电动汽车等；旗下公司包括乐视网、乐视致新、乐视移动、乐视影业、乐视体育、网酒网、乐视控股等；2014年乐视全生态业务总收入接近100亿元。', 'ylrj/jietu/2.jpg', 'http://pan.baidu.com/s/1qYDFGJE', '2017/5/7', '1.0.0', 'hbps');
INSERT INTO `ylsoftware` VALUES ('3', 'YY语音', '影音工具', 'ylrj/tubiao/3.png', '1', 'YY语音是欢聚时代（又名广州华多网络科技有限公司）[1]  旗下的一款通讯软件，基于Internet团队语音通信平台，功能强大、音质清晰、安全稳定、不占资源、反响良好、适应游戏玩家的免费语音软件。在网络上通常用YY表示。', 'ylrj/jietu/3.jpg', 'http://pan.baidu.com/s/1qYc1S2S', '2017/5/7', '1.0.0', 'ehdb');
INSERT INTO `ylsoftware` VALUES ('4', '酷我音乐', '影音工具', 'ylrj/tubiao/4.png', '1', '酷我音乐是中国数字音乐的交互服务品牌，是互联网领域的数字音乐服务平台，同时也是一款内容全、聆听快和界面炫的音乐聚合播放器，是国内的多种音乐资源聚合的播放软件。', 'ylrj/jietu/4.jpg', 'http://pan.baidu.com/s/1slKznvJ', '2017/5/7', '1.0.0', '4qxp');
INSERT INTO `ylsoftware` VALUES ('5', '酷狗音乐', '影音工具', 'ylrj/tubiao/5.png', '1', '酷狗是中国领先的数字音乐交互服务提供商，互联网技术创新的领军企业，致力于为互联网用户和数字音乐产业发展提供最佳的解决方案。 公司的使命是成为亚太地区最大的数字音乐销售推广企业。', 'ylrj/jietu/5.jpg', 'http://pan.baidu.com/s/1jIMFsH4', '2017/5/7', '1.0.0', '7umh');
INSERT INTO `ylsoftware` VALUES ('6', '爱奇艺', '影音工具', 'ylrj/tubiao/6.png', '1', '爱奇艺品质、青春、时尚的品牌调性深入人心，网罗了中国最广大的年轻用户群体。爱奇艺打造涵盖电影、电视剧、综艺、动漫在内的十余种类型的中国最大正版视频内容库。', 'ylrj/jietu/6.jpg', 'http://pan.baidu.com/s/1bpy7g7t', '2017/5/7', '1.0.0', 'xyp6');
INSERT INTO `ylsoftware` VALUES ('7', 'pptv', '影音工具', 'ylrj/tubiao/7.png', '1', 'PPTV网络电视：别名PPLive，是由上海聚力传媒技术有限公司开发运营在线视频软件，它是全球华人领先的、规模最大、拥有巨大影响力的视频媒体，全面聚合和精编影视、体育、娱乐、资讯等各种热点视频内容。', 'ylrj/jietu/7.jpg', 'http://pan.baidu.com/s/1dFw1gpN', '2017/5/7', '1.0.0', 'syjr');
INSERT INTO `ylsoftware` VALUES ('8', '优酷', '影音工具', 'ylrj/tubiao/8.png', '1', '作为中国最大的数字娱乐平台，优酷的内容体系由剧集、综艺、电影、动漫四大头部内容矩阵和资讯、纪实、文化财经、时尚生活、音乐、体育、游戏、自频道八大垂直内容群构成，拥有国内最大内容库。', 'ylrj/jietu/8.jpg', 'http://pan.baidu.com/s/1bUhbno', '2017/5/7', '1.0.0', 'q7e2');
INSERT INTO `ylsoftware` VALUES ('9', '腾讯视频', '影音工具', 'ylrj/tubiao/9.png', '1', '腾讯视频定位于中国最大在线视频媒体平台，以丰富的内容、极致的观看体验、便捷的登录方式、24小时多平台无缝应用体验以及快捷分享的产品特性，满足用户在线观看视频的需求', 'ylrj/jietu/9.jpg', 'http://pan.baidu.com/s/1kV0YEub', '2017/5/7', '1.0.0', '0a5g');
INSERT INTO `ylsoftware` VALUES ('10', 'QQ旋风', '网络工具', 'ylrj/tubiao/10.png', '2', '腾讯qq旋风是新一代互联网下载工具。支持多个任务同时进行，每个任务使用多地址下载，拥有多线程、断点续传、线程连续调度优化等特点，是目前网络上最好用的下载工具之一。', 'ylrj/jietu/10.jpg', 'http://pan.baidu.com/s/1kVPvlX1', '2017/5/7', '1.0.0', '5r1g');
INSERT INTO `ylsoftware` VALUES ('11', '迅雷', '网络工具', 'ylrj/tubiao/11.png', '2', '迅雷是迅雷公司开发的互联网下载软件。迅雷是一款基于多资源超线程技术的下载软件，作为“宽带时期的下载工具”，迅雷针对宽带用户做了优化，并同时推出了“智能下载”的服务。', 'ylrj/jietu/11.jpg', 'http://pan.baidu.com/s/1qYpZjA0', '2017/5/7', '1.0.0', 'apk0');
INSERT INTO `ylsoftware` VALUES ('12', '迅雷播放器', '影音工具', 'ylrj/tubiao/12.png', '1', '迅雷播放器是迅雷公司为iOS用户量身打造的视频播放终端，流畅播放各类高清视频，包括avi、rm、rmvb、mkv、wmv等，支持用户自主调节画面效果，以及外挂字幕（支持智能网络匹配）。', 'ylrj/jietu/12.jpg', 'http://pan.baidu.com/s/1dF26MVv', '2017/5/7', '1.0.0', 'hlpq');
INSERT INTO `ylsoftware` VALUES ('13', '谷歌浏览器', '网络工具', 'ylrj/tubiao/13.png', '2', 'Google Chrome，是一个由Google公司开发的网页浏览器。该浏览器是基于其他开源软件所撰写，包括WebKit，目标是提升稳定性、速度和安全性，并创造出简单且有效率的使用者界面', 'ylrj/jietu/13.jpg', 'http://pan.baidu.com/s/1miRuZ3q', '2017/5/7', '1.0.0', '5usn');
INSERT INTO `ylsoftware` VALUES ('14', '大白菜U盘制作工具', '系统工具', 'ylrj/tubiao/14.png', '3', '大白菜超级U盘启动制作工具，做到人人都会U盘装系统。U盘的启动文件,是大白菜小组优化的系统。启动PE系统,是经过反复研究最终形成的安装系统PE。硬盘识别会导致系统安装是否成功，大白菜的PE系统，整合了硬盘驱动，安装便捷。', 'ylrj/jietu/14.jpg', 'http://pan.baidu.com/s/1nuZkj9J', '2017/5/7', '1.0.0', 'ge61');
INSERT INTO `ylsoftware` VALUES ('15', '腾讯电脑管家', '系统工具', 'ylrj/tubiao/15.png', '3', '腾讯电脑管家是腾讯公司推出的免费安全软件。拥有云查杀木马，系统加速，漏洞修复，实时防护，网速保护，电脑诊所，健康小助手等功能。', 'ylrj/jietu/15.jpg', 'http://pan.baidu.com/s/1nuEl5H3', '2017/5/7', '1.0.0', '726q');
INSERT INTO `ylsoftware` VALUES ('16', '鲁大师', '系统工具', 'ylrj/tubiao/16.png', '3', '鲁大师（原名：Z武器）是新一代的系统工具。它能轻松辨别电脑硬件真伪，保护电脑稳定运行，清查电脑病毒隐患，优化清理系统，提升电脑运行速度。', 'ylrj/jietu/16.jpg', 'http://pan.baidu.com/s/1nvjtDQp', '2017/5/7', '1.0.0', '8jyy');
INSERT INTO `ylsoftware` VALUES ('17', '360安全浏览器', '网络工具', 'ylrj/tubiao/17.png', '2', '360安全浏览器(360 Security Browser)是360安全中心推出的一款基于IE和Chrome双内核的浏览器，是世界之窗开发者凤凰工作室和360安全中心合作的产品。', 'ylrj/jietu/17.jpg', 'http://pan.baidu.com/s/1pKWytwZ', '2017/5/7', '1.0.0', '62qp');
INSERT INTO `ylsoftware` VALUES ('18', 'WiFi共享大师', '系统工具', 'ylrj/tubiao/18.png', '3', 'WiFi共享大师一款免费共享无线WiFi热点的软件，利用笔记本或者台式机的无线网卡共享出免费的无线热点，一键开启WiFi共享，让没有无线路由的用户，一键轻松将笔记本电脑变为wifi热点。', 'ylrj/jietu/18.jpg', 'http://pan.baidu.com/s/1qY9BVzQ', '2017/5/7', '1.0.0', '2x0i');
INSERT INTO `ylsoftware` VALUES ('19', '百度云绿色版', '系统工具', 'ylrj/tubiao/19.png', '3', '度云，是百度提供的公有云平台，2015年正式开放运营。作为百度17年来技术沉淀和资源积累的统一输出平台，百度云秉承“用科技力量推动社会创新”的愿景，不断将百度在云计算、大数据、人工智能的技术能力向社会输出。', 'ylrj/jietu/19.jpg', 'http://pan.baidu.com/s/1gfgifbt', '2017/5/7', '1.0.0', 'qma1');
INSERT INTO `ylsoftware` VALUES ('20', '360安全卫士', '系统工具', 'ylrj/tubiao/20.png', '3', '360安全卫士是一款由奇虎360公司推出的功能强、效果好、受用户欢迎的安全杀毒软件。360安全卫士拥有查杀木马、清理插件、修复漏洞、电脑体检、电脑救援、保护隐私，电脑专家，清理垃圾，清理痕迹多种功能', 'ylrj/jietu/20.jpg', 'http://pan.baidu.com/s/1i5E9XB3', '2017/5/7', '1.0.0', '1eq2');
INSERT INTO `ylsoftware` VALUES ('21', '百度浏览器', '网络工具', 'ylrj/tubiao/21.png', '2', '百度浏览器，是一款简洁轻快、智能懂你的浏览器。依靠百度强大的搜索平台，在满足用户浏览网页的基础上，它整合百度体系业务优势，带给用户更方便的浏览方式，更舒适的百度特色上网体验。', 'ylrj/jietu/21.jpg', 'http://pan.baidu.com/s/1sl99ReH', '2017/5/7', '1.0.0', 'ssmi');
INSERT INTO `ylsoftware` VALUES ('22', 'UC浏览器', '网络工具', 'ylrj/tubiao/22.png', '2', '全球使用量最大的第三方手机浏览器，UC浏览器为全球移动互联网用户提供聪明智能的手机上网服务。目前已覆盖Android、iOS、Windows等主流移动操作系统。', 'ylrj/jietu/22.jpg', 'http://pan.baidu.com/s/1eRRWZtS', '2017/5/7', '1.0.0', 'fd8h');
INSERT INTO `ylsoftware` VALUES ('23', '安卓模拟器', '系统工具', 'ylrj/tubiao/23.png', '3', '安卓模拟器是能在电脑上模拟安卓操作系统，并能安装、使用、卸载安卓应用的软件，它能让你在电脑上也能体验操作安卓系统的全过程。', 'ylrj/jietu/23.jpg', 'http://pan.baidu.com/s/1gfh3ZTx', '2017/5/7', '1.0.0', '1bh4');
INSERT INTO `ylsoftware` VALUES ('24', '鬼泣3', '游戏娱乐', 'ylrj/tubiao/24.png', '4', '《鬼泣3》由CAPCOM制作的一款动作冒险类游戏。于2005年3月1日发行', 'ylrj/jietu/24.jpg', 'http://pan.baidu.com/s/1i5FpR9N', '2017/5/7', '1.0.0', 'lnz7');
INSERT INTO `ylsoftware` VALUES ('25', '口袋妖怪XY', '游戏娱乐', 'ylrj/tubiao/25.png', '4', '《口袋妖怪 X·Y》（ポケットモンスター X・Y）是由Game Freak开发并由任天堂发售的任天堂3DS角色扮演游戏。它们是口袋妖怪系列第六世代的第一批作品。', 'ylrj/jietu/25.jpg', 'http://pan.baidu.com/s/1pLueWzT', '2017/5/7', '1.0.0', 'co5f');
INSERT INTO `ylsoftware` VALUES ('26', '口袋妖怪黑白2', '游戏娱乐', 'ylrj/tubiao/26.png', '4', '《口袋妖怪黑2·白2》（ポケットモンスター ブラック2・ホワイト2）是由GAME FREAK开发，任天堂和口袋妖怪发行的角色扮演游戏。', 'ylrj/jietu/26.jpg', 'http://pan.baidu.com/s/1i4VUDMH', '2017/5/7', '1.0.0', '3o59');
INSERT INTO `ylsoftware` VALUES ('27', '口袋妖怪漆黑的魅影', '游戏娱乐', 'ylrj/tubiao/27.png', '4', '口袋妖怪漆黑的魅影[1.2]口袋妖怪系列游戏以角色扮演（RPG）为主,辅以战略和动作游戏。', 'ylrj/jietu/27.jpg', 'http://pan.baidu.com/s/1i5PzoC9', '2017/5/7', '1.0.0', 'tsel');
INSERT INTO `ylsoftware` VALUES ('28', '红警2', '游戏娱乐', 'ylrj/tubiao/28.png', '4', '《命令与征服：红色警戒 2》是由Westwood制作、EA发行的一款即时战略游戏，于2000年9月28日发行。', 'ylrj/jietu/28.jpg', 'http://pan.baidu.com/s/1i5JZ9BZ', '2017/5/7', '1.0.0', 'pgtn');
INSERT INTO `ylsoftware` VALUES ('29', '黑暗之魂3', '游戏娱乐', 'ylrj/tubiao/29.png', '4', '《黑暗之魂3》是由FromSoftware公司开发的一款动作角色扮演类游戏，是《黑暗之魂》系列的游戏之一，于2016年03月24日发行。', 'ylrj/jietu/29.jpg', 'http://pan.baidu.com/s/1eSmpKX0', '2017/5/7', '1.0.0', 'njf7');
INSERT INTO `ylsoftware` VALUES ('30', '死或生5', '游戏娱乐', 'ylrj/tubiao/30.png', '4', '《死或生5》是由日本KOEI TECMO Games 旗下Team Ninja制作团队开发的一款格斗竞技类游戏，于2012年9月27日发行。', 'ylrj/jietu/30.jpg', 'http://pan.baidu.com/s/1dFxNdb7', '2017/5/7', '1.0.0', '0i7b');
INSERT INTO `ylsoftware` VALUES ('31', '银河文明3', '游戏娱乐', 'ylrj/tubiao/31.png', '4', '该作作为64 bit操作系统专用游戏，地图尺寸与视觉效果得到了大幅度进化，玩家在《银河文明3》中做出的选择会不可避免的影响文化发展，交易，外交，思想，和邻国的冲突。', 'ylrj/jietu/31.jpg', 'http://pan.baidu.com/s/1bV2Trg', '2017/5/7', '1.0.0', 'x7qb');
INSERT INTO `ylsoftware` VALUES ('32', '魔兽争霸3', '游戏娱乐', 'ylrj/tubiao/32.png', '4', '《魔兽争霸Ⅲ》（WarcraftⅢ）是由暴雪娱乐出品一款即时战略游戏，是《魔兽争霸》系列第三代作品，于2003年7月01日年正式发行。', 'ylrj/jietu/32.jpg', 'http://pan.baidu.com/s/1qXTE7Kw', '2017/5/7', '1.0.0', 'x6hb');
INSERT INTO `ylsoftware` VALUES ('33', '伟大时代：中世纪', '游戏娱乐', 'ylrj/tubiao/33.png', '4', '伟大时代中世纪中文版是一款策略游戏。本作将完美复刻中世纪时期的战争，而且伟大时代中世纪游戏中地图的达3000w平方千米，可编队骑士，弓箭手，骑兵战斗。', 'ylrj/jietu/33.jpg', 'http://pan.baidu.com/s/1bpN9BiR', '2017/5/7', '1.0.0', 'kfbi');
INSERT INTO `ylsoftware` VALUES ('34', '奇迹时代3', '游戏娱乐', 'ylrj/tubiao/34.png', '4', '《奇迹时代3》是由Triumph Studios开发的一款策略战棋游戏，于2014年发行。该游戏是《奇迹时代》系列的最新作，为PC独占作品。', 'ylrj/jietu/34.jpg', 'http://pan.baidu.com/s/1qXF1uTe', '2017/5/7', '1.0.0', 'je9l');
INSERT INTO `ylsoftware` VALUES ('35', '恶灵附身', '游戏娱乐', 'ylrj/tubiao/35.png', '4', '该游戏讲述的是身为刑警的主角赛巴斯蒂安为了调查一起严重的谋杀案，便偕同他的搭档约瑟夫与菜鸟刑警基德曼一同前往克里姆森市，开启一段恐怖的生存之旅。', 'ylrj/jietu/35.jpg', 'http://pan.baidu.com/s/1jHB9OpC', '2017/5/7', '1.0.0', 'nnu7');
INSERT INTO `ylsoftware` VALUES ('36', '生化危机：保护伞小队', '游戏娱乐', 'ylrj/tubiao/36.png', '4', '《生化危机：保护伞小队》正式版是一款第三人称射击游戏，故事围绕着保护伞小队执行的各种各样的任务而展开，游戏的气氛依然扣人心弦。', 'ylrj/jietu/36.jpg', 'http://pan.baidu.com/s/1skGLnIH', '2017/5/7', '1.0.0', 'bxx5');
INSERT INTO `ylsoftware` VALUES ('37', '使命召唤11', '游戏娱乐', 'ylrj/tubiao/37.png', '4', '《使命召唤：高级战争》是由Sledgehammer Games研发的一款动作射击游戏。', 'ylrj/jietu/37.jpg', 'http://pan.baidu.com/s/1b0uPlW', '2017/5/7', '1.0.0', '4qgq');
INSERT INTO `ylsoftware` VALUES ('38', '杀手5', '游戏娱乐', 'ylrj/tubiao/38.png', '4', '《杀手5：赦免》，是一款采用IO Interactive自主研发的冰川2引擎制作的动作冒险类游戏，于2012年11月20日发行。', 'ylrj/jietu/38.jpg', 'http://pan.baidu.com/s/1nv7amhz', '2017/5/7', '1.0.0', '734a');
INSERT INTO `ylsoftware` VALUES ('39', '哥特舰队：阿玛达', '游戏娱乐', 'ylrj/tubiao/39.png', '4', 'Focus Home Interactive日前正式公布了《战锤40K》系列新作《哥特舰队：阿玛达》，由《乙金战争》团队Tindalos Interactive打造，PC平台独占。', 'ylrj/jietu/39.jpg', 'http://pan.baidu.com/s/1nvUaO1V', '2017/5/7', '1.0.0', '2gwi');
INSERT INTO `ylsoftware` VALUES ('40', '武装突袭3', '游戏娱乐', 'ylrj/tubiao/40.png', '4', '《武装突袭3》是一款的战术动作游戏，设定在地中海岛屿，该系列是《闪点行动》的正统续作，是商业虚拟军事训练平台《VBS3》的民用商业版，尽管相对军方版本，真实度下降不少，但是仍然被玩家称为军事模拟软件而不是游戏。', 'ylrj/jietu/40.jpg', 'http://pan.baidu.com/s/1boUKY4J', '2017/5/7', '1.0.0', '7t13');
INSERT INTO `ylsoftware` VALUES ('41', '求生之路', '游戏娱乐', 'ylrj/tubiao/41.png', '4', '《求生之路》是Turtle Rock开发，Valve发行的一款第一人称射击游戏，于2008年11月18日发行。', 'ylrj/jietu/41.jpg', 'http://pan.baidu.com/s/1bo1EImj', '2017/5/7', '1.0.0', 'ayuw');
INSERT INTO `ylsoftware` VALUES ('42', '极品飞车19', '游戏娱乐', 'ylrj/tubiao/42.png', '4', '《极品飞车19》由英国的Ghost Games工作室研发，通过寒霜引擎制作的一款竞速类多人游戏，该游戏主机版已于2015年11月3日正式发售，PC版已于2016年3月15日正式发售。', 'ylrj/jietu/42.jpg', 'http://pan.baidu.com/s/1i4WA5aH', '2017/5/7', '1.0.0', '7h0u');
INSERT INTO `ylsoftware` VALUES ('43', '刺客信条', '游戏娱乐', 'ylrj/tubiao/43.png', '4', '《刺客信条》是由育碧蒙特利尔工作室研发的一款动作类游戏。', 'ylrj/jietu/43.jpg', 'http://pan.baidu.com/s/1o79zPfs', '2017/5/7', '1.0.0', '3kbe');
INSERT INTO `ylsoftware` VALUES ('44', '细胞分裂6', '游戏娱乐', 'ylrj/tubiao/44.png', '4', '《细胞分裂6：黑名单》的故事是围绕针对美国本土的恐怖袭击而展开，未来美国利用自己的武力强权在全球2/3的国家都部署了自己的军队，然而其中一些地区的人们对此感到极为不满，并向美国发出了恐怖袭击预告。', 'ylrj/jietu/44.jpg', 'http://pan.baidu.com/s/1c1SHdVM', '2017/5/7', '1.0.0', 'viuh');
INSERT INTO `ylsoftware` VALUES ('45', '三位一体3', '游戏娱乐', 'ylrj/tubiao/45.png', '4', 'Frozenbyte开发的动作游戏《三位一体(Trine)》是Frozenbyte公司研发的一款动作类单机游戏', 'ylrj/jietu/45.jpg', 'http://pan.baidu.com/s/1b4y9Ds', '2017/5/7', '1.0.0', 'ki1k');
INSERT INTO `ylsoftware` VALUES ('46', '三位一体2', '游戏娱乐', 'ylrj/tubiao/46.png', '4', 'Frozenbyte开发的动作游戏《三位一体(Trine)》是Frozenbyte公司研发的一款动作类单机游戏', 'ylrj/jietu/46.jpg', 'http://pan.baidu.com/s/1eS9qwAe', '2017/5/7', '1.0.0', 'zm01');
INSERT INTO `ylsoftware` VALUES ('47', '虐杀原形2', '游戏娱乐', 'ylrj/tubiao/47.png', '4', '《虐杀原形2》是由美国游戏开发商Radical Ent制作、Activision于2012年4月24日发行的一款单机冒险格斗类游戏，是作品《虐杀原形》三部系列中的第二部。', 'ylrj/jietu/47.jpg', 'http://pan.baidu.com/s/1o7J9pvc', '2017/5/7', '1.0.0', 'gf39');
INSERT INTO `ylsoftware` VALUES ('48', '方舟：生存进化', '游戏娱乐', 'ylrj/tubiao/48.png', '4', '独立工作室Wildcard旗下由虚幻引擎4（Unreal Engine 4）打造的生存类开放世界游戏。', 'ylrj/jietu/48.jpg', 'http://pan.baidu.com/s/1qXZej5i', '2017/5/7', '1.0.0', 'ogei');
INSERT INTO `ylsoftware` VALUES ('49', '黑道圣徒4', '游戏娱乐', 'ylrj/tubiao/49.png', '4', '《黑道圣徒4》是由Volition Inc开发的一款动作射击游戏，于2013年8月20日发行。本作玩家将扮演“三街圣徒”帮派的boss，同时也是美国的总统。', 'ylrj/jietu/49.jpg', 'http://pan.baidu.com/s/1i5eIkSX', '2017/5/7', '1.0.0', 'ubt6');
INSERT INTO `ylsoftware` VALUES ('50', '奥日与迷失森林', '游戏娱乐', 'ylrj/tubiao/50.png', '4', '《奥日与迷失森林》由月亮工作室（Moon Studios）制作，微软发行，是一个混合类型、一种有着“银河恶魔城”风格的游戏，只不过本作更加聚焦于平台跳跃和轻微RPG元素。玩家在游戏中扮演一个树灵，体验一个关于成长的故事。', 'ylrj/jietu/50.jpg', 'http://pan.baidu.com/s/1mhRKL64', '2017/5/7', '1.0.0', '62ah');

-- ----------------------------
-- Table structure for ylsoftware_title
-- ----------------------------
DROP TABLE IF EXISTS `ylsoftware_title`;
CREATE TABLE `ylsoftware_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titleName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylsoftware_title
-- ----------------------------
INSERT INTO `ylsoftware_title` VALUES ('1', '影音工具');
INSERT INTO `ylsoftware_title` VALUES ('2', '网络工具');
INSERT INTO `ylsoftware_title` VALUES ('3', '系统工具');
INSERT INTO `ylsoftware_title` VALUES ('4', '游戏娱乐');

-- ----------------------------
-- Table structure for zuoyefuzhu
-- ----------------------------
DROP TABLE IF EXISTS `zuoyefuzhu`;
CREATE TABLE `zuoyefuzhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `pw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `category` (`category`),
  CONSTRAINT `zuoyefuzhu_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `zuoyefuzhu_cg` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `zuoyefuzhu_ibfk_2` FOREIGN KEY (`category`) REFERENCES `zuoyefuzhu_cg` (`category`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zuoyefuzhu
-- ----------------------------
INSERT INTO `zuoyefuzhu` VALUES ('1', '1', '推荐专题', '企业商务PPT模板', 'tjzt1.jpg', 'http://www.baidu.com', '1');
INSERT INTO `zuoyefuzhu` VALUES ('2', '1', '推荐专题', '视频简历PPT模板', 'tjzt2.jpg', 'http://www.4399.com', '2');
INSERT INTO `zuoyefuzhu` VALUES ('3', '1', '推荐专题', '全新通用PPT模板下载', 'tjzt4.jpg', 'http://www.baidu.com', '3');
INSERT INTO `zuoyefuzhu` VALUES ('6', '2', 'K-Cat|&nbsp;高端精品', '116P超完整电子商务PPT', '20160418170631903190.jpg', '', '');
INSERT INTO `zuoyefuzhu` VALUES ('55', '1', '推荐专题', '结婚恋爱婚礼开场相册PPT模板', 'tjzt5.jpg', 'http://www.4399.com', '5');
INSERT INTO `zuoyefuzhu` VALUES ('58', '3', 'K-Cat|&nbsp;精品PPT模板，高端大气上档次', '多彩炫彩粒子视频PPT片头', '20160413091838603860.jpg', '', '');
INSERT INTO `zuoyefuzhu` VALUES ('59', '2', 'K-Cat|&nbsp;高端精品', '欧美风企业宣传介绍PPT', '20160411162099229922.jpg', '', null);
INSERT INTO `zuoyefuzhu` VALUES ('60', '3', 'K-Cat|&nbsp;精品PPT模板，高端大气上档次', '企业文化公司简介产品宣传商务PPT', '20160418132853245324.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('61', '2', 'K-Cat|&nbsp;高端精品', '蓝色震撼视频工作总结ppt模板', '20160413183264686468.jpg', '', null);
INSERT INTO `zuoyefuzhu` VALUES ('62', '4', 'K-Cat|&nbsp;最受欢迎的ppt模板', '年终大气工作总结ppt模板', '20160419104624932493.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('63', '3', 'K-Cat|&nbsp;精品PPT模板，高端大气上档次', '116P超完整电子商务PPT', '20160418170631903190.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('64', '4', 'K-Cat|&nbsp;最受欢迎的ppt模板', '完整商业融资计划书PPT模板', '20160413110112931293.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('65', '2', 'K-Cat|&nbsp;高端精品', '爱情成长故事婚礼婚纱电子相册ppt', '20160420133086658665.JPG', '', null);
INSERT INTO `zuoyefuzhu` VALUES ('66', '4', 'K-Cat|&nbsp;最受欢迎的ppt模板', '毕业论文答辩ppt模板', '20160420182386788678.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('67', '4', 'K-Cat|&nbsp;最受欢迎的ppt模板', '完整商业融资创业计划书PPT模板', '20160413093184478447.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('68', '3', 'K-Cat|&nbsp;精品PPT模板，高端大气上档次', '年终大气工作总结ppt模板', '20160419104624932493.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('69', '5', 'K-Cat最新上传了', 'IOS星空商务PPT工作总结计划', '20160425112555555555.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('70', '5', 'K-Cat最新上传了', '水墨动态毛笔中国风黑白大气商务', '20160425103515131513.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('71', '3', 'K-Cat|&nbsp;精品PPT模板，高端大气上档次', '黑白欧美大气极简线条画册风格', '20160422155950875087.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('72', '5', 'K-Cat最新上传了', '学术蓝色大气清晰框架完整毕业论', '20160425103399179917.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('73', '3', 'K-Cat|&nbsp;精品PPT模板，高端大气上档次', '五一党政风格专题动态PPT', '20160425103024102410.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('75', '3', 'K-Cat|&nbsp;精品PPT模板，高端大气上档次', '蓝色远航扬帆起航工作总结ppt模板', '20160420100266186618.jpg', null, null);
INSERT INTO `zuoyefuzhu` VALUES ('77', '3', 'K-Cat|&nbsp;精品PPT模板，高端大气上档次', '绿色竹子环保毕业论文答辩ppt模板', '20160420101740344034.jpg', 'http://www.baidu.com', null);

-- ----------------------------
-- Table structure for zuoyefuzhu_cg
-- ----------------------------
DROP TABLE IF EXISTS `zuoyefuzhu_cg`;
CREATE TABLE `zuoyefuzhu_cg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zuoyefuzhu_cg
-- ----------------------------
INSERT INTO `zuoyefuzhu_cg` VALUES ('4', 'K-Cat|&nbsp;最受欢迎的ppt模板');
INSERT INTO `zuoyefuzhu_cg` VALUES ('3', 'K-Cat|&nbsp;精品PPT模板，高端大气上档次');
INSERT INTO `zuoyefuzhu_cg` VALUES ('2', 'K-Cat|&nbsp;高端精品');
INSERT INTO `zuoyefuzhu_cg` VALUES ('5', 'K-Cat最新上传了');
INSERT INTO `zuoyefuzhu_cg` VALUES ('1', '推荐专题');

-- ----------------------------
-- Table structure for zysoftware
-- ----------------------------
DROP TABLE IF EXISTS `zysoftware`;
CREATE TABLE `zysoftware` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `softName` varchar(255) DEFAULT NULL,
  `softType` varchar(255) DEFAULT NULL,
  `softImage` varchar(255) DEFAULT NULL,
  `soft_to_titleS` int(11) DEFAULT NULL,
  `soft_jianjie` varchar(255) DEFAULT NULL,
  `soft_jietu` varchar(255) DEFAULT NULL,
  `softUrl` varchar(255) DEFAULT NULL,
  `soft_date` varchar(255) DEFAULT NULL,
  `soft_version` varchar(255) DEFAULT NULL,
  `soft_pw` varchar(255) DEFAULT NULL,
  `soft_video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `soft_to_titleS` (`soft_to_titleS`),
  CONSTRAINT `zysoftware_ibfk_1` FOREIGN KEY (`soft_to_titleS`) REFERENCES `zysoftware_titles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zysoftware
-- ----------------------------
INSERT INTO `zysoftware` VALUES ('1', 'office 2010', '办公', 'Sjiying/Sjy17.png', '1', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bjiying/Bjy13.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('2', 'SSH', '工具', 'Sjiying/Sjy02.png', '1', 'SSH是一个用来替代TELNET、FTP以及R命令的工具包，主要是想解决口令在网上明文传输的问题。通过使用SSH，你可以把所有传输的数据进行加密，这样\"中间人\"这种攻击方式就不可能实现了，而且也能够防止DNS欺骗和IP欺骗。', 'Bjiying/Bjy1.jpg', 'soft/2.rar', '2017/5/3', '1.0.0', 'ev4b', '2.mp4');
INSERT INTO `zysoftware` VALUES ('3', 'Adobe Flash CS6', '图形', 'Sjiying/Sjy03.png', '1', 'Adobe Flash CS6是用于创建动画和多媒体内容的强大的创作平台。Adobe Flash CS6设计身临其境，而且在台式计算机和平板电脑、智能手机和电视等多种设备中都能呈现一致效果的互动体验。', 'Bjiying/Bjy2.jpg', 'soft/3.rar', '2017/5/3', '1.0.0', 'b4b4', '3.mp4');
INSERT INTO `zysoftware` VALUES ('4', 'Android ADT', '开发', 'Sjiying/Sjy04.png', '1', 'ADT（Android Development Tools）在Eclipse编译IDE环境中，需安装ADT(Android Developer Tools)Plug-in,这是Android在Eclipse上的开发工具。', 'Bjiying/Bjy3.jpg', 'soft/4.rar', '2017/5/3', '1.0.0', '2txm', '4.mp4');
INSERT INTO `zysoftware` VALUES ('5', 'Cisco Packet Tracer', '工具', 'Sjiying/Sjy05.png', '1', 'Packet Tracer是一个功能强大的网络仿真程序，允许学生实验与网络行为，问“如果”的问题。随着网络技术学院的全面的学习经验的一个组成部分，包示踪提供的仿真，可视化，编辑，评估，和协作能力，有利于教学和复杂的技术概念的学习。', 'Bjiying/Bjy4.jpg', 'soft/5.rar', '2017/5/3', '1.0.0', 'tvrq', '5.mp4');
INSERT INTO `zysoftware` VALUES ('6', 'Dreamware CS6', '开发', 'Sjiying/Sjy06.png', '1', 'dreamweaver cs6用于制作并编辑网站和移动应用程序的网页设计软件。由于它支持代码、拆分、设计、实时视图等多种方式来创作、编写和修改网页，对于初级人员，你可以无需编写任何代码就能快速创建web页面。', 'Bjiying/Bjy5.jpg', 'soft/6.rar', '2017/5/3', '1.0.0', 'p6g6', '6.mp4');
INSERT INTO `zysoftware` VALUES ('7', 'MatLab 6.5', '工具', 'Sjiying/Sjy08.png', '1', 'MATLAB可以进行矩阵运算、绘制函数和数据、实现算法、创建用户界面、连接其他编程语言的程序等，主要应用于工程计算、控制设计、信号处理与通讯、图像处理、信号检测、金融建模设计与分析等领域。', 'Bjiying/Bjy12.jpg', 'soft/7.rar', '2017/5/3', '1.0.0', '22bz', '7.mp4');
INSERT INTO `zysoftware` VALUES ('8', 'MyEclipse 8.6', '开发', 'Sjiying/Sjy09.png', '1', 'MyEclipse，是在eclipse 基础上加上自己的插件开发而成的功能强大的企业级集成开发环境，主要用于Java、Java EE以及移动应用的开发。MyEclipse的功能非常强大，支持也十分广泛，尤其是对各种开源产品的支持相当不错。', 'Bjiying/Bjy7.jpg', 'soft/8.rar', '2017/5/3', '1.0.0', '33w9', '8.mp4');
INSERT INTO `zysoftware` VALUES ('9', 'Photoshop CS6', '图形', 'Sjiying/Sjy10.png', '1', 'AdobePhotoshopCS6在前几代加入了GPUOpenGL加速、内容填充等新特性，此代会加强3D图像编辑，采用新的暗色调用户界面，其他改进还有整合Adobe云服务、改进文件搜索等。', 'Bjiying/Bjy8.jpg', 'soft/9.rar', '2017/5/3', '1.0.0', 'ok73', '9.mp4');
INSERT INTO `zysoftware` VALUES ('10', 'SQL Server 2005', '开发', 'Sjiying/Sjy11.png', '1', 'Microsoft SQL Server 数据库引擎为关系型数据和结构化数据提供了更安全可靠的存储功能，使您可以构建和管理用于业务的高可用和高性能的数据应用程序。', 'Bjiying/Bjy9.jpg', 'soft/10.rar', '2017/5/3', '1.0.0', '0br9', '10.mp4');
INSERT INTO `zysoftware` VALUES ('11', 'SQL Server 2008', '开发', 'Sjiying/Sjy12.png', '1', 'Microsoft SQL Server 数据库引擎为关系型数据和结构化数据提供了更安全可靠的存储功能，使您可以构建和管理用于业务的高可用和高性能的数据应用程序。', 'Bjiying/Bjy10.jpg', 'soft/11.rar', '2017/5/3', '1.0.0', '5j4v', '11.mp4');
INSERT INTO `zysoftware` VALUES ('12', 'VC++ 6.0', '开发', 'Sjiying/Sjy13.png', '1', 'Microsoft Visual C++具有程序框架自动生成、灵活方便的类管理、代码编写和界面设计集成交互操作、可开发多种程序等优点，而且通过的设置就可使其生成的程序框架支持数据库接口、OLE2.0，WinSock网络。', 'Bjiying/Bjy11.jpg', 'soft/12.rar', '2017/5/3', '1.0.0', 'evn1', '12.mp4');
INSERT INTO `zysoftware` VALUES ('13', 'Vmware', '工具', 'Sjiying/Sjy14.png', '1', 'VMware Workstation可在一部实体机器上模拟完整的网络环境，以及可便于携带的虚拟机器，其更好的灵活性与先进的技术胜过了市面上其他的虚拟计算机软件。', 'Bjiying/Bjy16.jpg', 'soft/13.rar', '2017/5/3', '1.0.0', 'tw2a', '13.mp4');
INSERT INTO `zysoftware` VALUES ('14', 'Eclipse 3.2', '开发', 'Sjiying/Sjy15.png', '1', 'Eclipse 是一个开放源代码的、基于Java的可扩展开发平台。就其本身而言，它只是一个框架和一组服务，用于通过插件组件构建开发环境。幸运的是，Eclipse 附带了一个标准的插件集，包括Java开发工具（Java Development Kit，JDK）。', 'Bjiying/Bjy17.jpg', 'soft/14.rar', '2017/5/3', '1.0.0', 'j6qj', '14.mp4');
INSERT INTO `zysoftware` VALUES ('15', 'lingo 9.0', '工具', 'Sjiying/Sjy16.png', '1', 'LINGO交互式的线性和通用优化求解器可以用于求解非线性规划，也可以用于一些线性和非线性方程组的求解等，功能十分强大，是求解优化模型的最佳选择。', 'Bjiying/Bjy18.jpg', 'soft/15.rar', '2017/5/3', '1.0.0', 'vvzu', '15.mp4');
INSERT INTO `zysoftware` VALUES ('16', '微信开发者工具', '开发', 'Sjiying/Sjy18.png', '1', '为帮助开发者更方便、更安全地开发和调试基于微信的网页，我们推出了 web 开发者工具。它是一个桌面应用，通过模拟微信客户端的表现，使得开发者可以使用这个工具方便地在 PC 或者 Mac 上进行开发和调试工作。', 'Bjiying/Bjy14.jpg', 'soft/16.rar', '2017/5/3', '1.0.0', 'yxvq', '16.mp4');
INSERT INTO `zysoftware` VALUES ('17', '网页三剑客（MX）', '开发', 'Sjiying/Sjy19.png', '1', 'Dreamweaver与Flash、Firework 并称为 Macromedia的网页制作三剑客，由于是同一公司的产品，因而在功能上有着一个非常紧密的结合 。', 'Bjiying/Bjy15.jpg', 'soft/17.rar', '2017/5/3', '1.0.0', 'n6r5', '17.mp4');
INSERT INTO `zysoftware` VALUES ('18', 'office 2010', '办公', 'Syunjisuan/Syjs14.png', '2', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Byunjisuan/Byjs9.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('19', 'SSH', '工具', 'Syunjisuan/Syjs01.png', '2', '', 'Byunjisuan/Byjs1.jpg', 'soft/2.rar', '2017/5/3', '1.0.0', 'ev4b', '2.mp4');
INSERT INTO `zysoftware` VALUES ('20', 'Adobe Flash CS6', '图形', 'Syunjisuan/Syjs02.png', '2', 'Adobe Flash CS6是用于创建动画和多媒体内容的强大的创作平台。Adobe Flash CS6设计身临其境，而且在台式计算机和平板电脑、智能手机和电视等多种设备中都能呈现一致效果的互动体验。', 'Byunjisuan/Byjs12.jpg', 'soft/3.rar', '2017/5/3', '1.0.0', 'b4b4', '3.mp4');
INSERT INTO `zysoftware` VALUES ('21', 'ensp', '工具', 'Syunjisuan/Syjs03.png', '2', 'eNSP由华为提供的可扩展的、图形化操作的网络仿真工具平台，主要对企业网络路由器、交换机进行软件仿真。让广大用户有机会在没有真实设备的情况下能够模拟演练，学习网络技术。', 'Byunjisuan/Byjs10.jpg', 'soft/18.rar', '2017/5/3', '1.0.0', 'eeo2', '18.mp4');
INSERT INTO `zysoftware` VALUES ('22', 'VirtualBox', '工具', 'Syunjisuan/Syjs04.png', '2', 'VirtualBox号称是最强的免费虚拟机软件，它不仅具有丰富的特色，而且性能也很优异！它简单易用，可虚拟的系统包括Windows、Mac OS X、Linux、OpenBSD、Solaris、IBM OS2甚至Android等操作系统！', 'Byunjisuan/Byjs11.jpg', 'soft/19.rar', '2017/5/3', '1.0.0', 'y53j', '19.mp4');
INSERT INTO `zysoftware` VALUES ('23', 'Vmware', '工具', 'Syunjisuan/Syjs05.png', '2', 'VMware Workstation可在一部实体机器上模拟完整的网络环境，以及可便于携带的虚拟机器，其更好的灵活性与先进的技术胜过了市面上其他的虚拟计算机软件。', 'Byunjisuan/Byjs13.jpg', 'soft/13.rar', '2017/5/3', '1.0.0', 'tw2a', '13.mp4');
INSERT INTO `zysoftware` VALUES ('24', 'Android ADT', '开发', 'Syunjisuan/Syjs06.png', '2', 'ADT（Android Development Tools）在Eclipse编译IDE环境中，需安装ADT(Android Developer Tools)Plug-in,这是Android在Eclipse上的开发工具。', 'Byunjisuan/Byjs5.jpg', 'soft/4.rar', '2017/5/3', '1.0.0', '2txm', '4.mp4');
INSERT INTO `zysoftware` VALUES ('25', 'Cisco Packet Tracer', '工具', 'Syunjisuan/Syjs07.png', '2', 'Packet Tracer是一个功能强大的网络仿真程序，允许学生实验与网络行为，问“如果”的问题。随着网络技术学院的全面的学习经验的一个组成部分，包示踪提供的仿真，可视化，编辑，评估，和协作能力，有利于教学和复杂的技术概念的学习。', 'Byunjisuan/Byjs6.jpg', 'soft/5.rar', '2017/5/3', '1.0.0', 'tvrq', '5.mp4');
INSERT INTO `zysoftware` VALUES ('26', 'Dreamware CS6', '开发', 'Syunjisuan/Syjs08.png', '2', 'dreamweaver cs6用于制作并编辑网站和移动应用程序的网页设计软件。由于它支持代码、拆分、设计、实时视图等多种方式来创作、编写和修改网页，对于初级人员，你可以无需编写任何代码就能快速创建web页面。', 'Byunjisuan/Byjs2.jpg', 'soft/6.rar', '2017/5/3', '1.0.0', 'p6g6', '6.mp4');
INSERT INTO `zysoftware` VALUES ('27', 'Photoshop CS6', '图形', 'Syunjisuan/Syjs09.png', '2', 'AdobePhotoshopCS6在前几代加入了GPUOpenGL加速、内容填充等新特性，此代会加强3D图像编辑，采用新的暗色调用户界面，其他改进还有整合Adobe云服务、改进文件搜索等。', 'Byunjisuan/Byjs3.jpg', 'soft/9.rar', '2017/5/3', '1.0.0', 'ok73', '9.mp4');
INSERT INTO `zysoftware` VALUES ('28', 'SQL Server 2005', '开发', 'Syunjisuan/Syjs10.png', '2', 'Microsoft SQL Server 数据库引擎为关系型数据和结构化数据提供了更安全可靠的存储功能，使您可以构建和管理用于业务的高可用和高性能的数据应用程序。', 'Byunjisuan/Byjs4.jpg', 'soft/10.rar', '2017/5/3', '1.0.0', '0br9', '10.mp4');
INSERT INTO `zysoftware` VALUES ('29', 'VC++ 6.0', '开发', 'Syunjisuan/Syjs11.png', '2', 'Microsoft Visual C++具有程序框架自动生成、灵活方便的类管理、代码编写和界面设计集成交互操作、可开发多种程序等优点，而且通过的设置就可使其生成的程序框架支持数据库接口、OLE2.0，WinSock网络。', 'Byunjisuan/Byjs7.jpg', 'soft/12.rar', '2017/5/3', '1.0.0', 'evn1', '12.mp4');
INSERT INTO `zysoftware` VALUES ('30', 'Eclipse 3.2', '开发', 'Syunjisuan/Syjs12.png', '2', 'Eclipse 是一个开放源代码的、基于Java的可扩展开发平台。就其本身而言，它只是一个框架和一组服务，用于通过插件组件构建开发环境。幸运的是，Eclipse 附带了一个标准的插件集，包括Java开发工具（Java Development Kit，JDK）。', 'Byunjisuan/Byjs14.jpg', 'soft/14.rar', '2017/5/3', '1.0.0', 'j6qj', '14.mp4');
INSERT INTO `zysoftware` VALUES ('31', '网页三剑客（MX）', '开发', 'Syunjisuan/Syjs13.png', '2', 'Dreamweaver与Flash、Firework 并称为 Macromedia的网页制作三剑客，由于是同一公司的产品，因而在功能上有着一个非常紧密的结合 。', 'Byunjisuan/Byjs8.jpg', 'soft/17.rar', '2017/5/3', '1.0.0', 'n6r5', '17.mp4');
INSERT INTO `zysoftware` VALUES ('32', 'office 2010', '办公', 'Sdongman/Sdm01.png', '3', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bdongman/Bdm1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('33', 'Eclipse 3.2', '开发', 'Sdongman/Sdm02.png', '3', 'Eclipse 是一个开放源代码的、基于Java的可扩展开发平台。就其本身而言，它只是一个框架和一组服务，用于通过插件组件构建开发环境。幸运的是，Eclipse 附带了一个标准的插件集，包括Java开发工具（Java Development Kit，JDK）。', 'Bdongman/Bdm2.jpg', 'soft/14.rar', '2017/5/3', '1.0.0', 'j6qj', '14.mp4');
INSERT INTO `zysoftware` VALUES ('34', 'Android ADT', '开发', 'Sdongman/Sdm03.png', '3', 'ADT（Android Development Tools）在Eclipse编译IDE环境中，需安装ADT(Android Developer Tools)Plug-in,这是Android在Eclipse上的开发工具。', 'Bdongman/Bdm3.jpg', 'soft/4.rar', '2017/5/3', '1.0.0', '2txm', '4.mp4');
INSERT INTO `zysoftware` VALUES ('35', 'unity 3D 5.0', '图形', 'Sdongman/Sdm04.png', '3', 'Unity3D是由Unity Technologies开发的一个让玩家轻松创建诸如三维视频游戏、建筑可视化、实时三维动画等类型互动内容的多平台的综合型游戏开发工具，是一个全面整合的专业游戏引擎。', 'Bdongman/Bdm4.jpg', 'soft/20.rar', '2017/5/3', '1.0.0', '6a09', '20.mp4');
INSERT INTO `zysoftware` VALUES ('36', 'VC++ 6.0', '开发', 'Sdongman/Sdm05.png', '3', 'Microsoft Visual C++具有程序框架自动生成、灵活方便的类管理、代码编写和界面设计集成交互操作、可开发多种程序等优点，而且通过的设置就可使其生成的程序框架支持数据库接口、OLE2.0，WinSock网络。', 'Bdongman/Bdm5.jpg', 'soft/12.rar', '2017/5/3', '1.0.0', 'evn1', '12.mp4');
INSERT INTO `zysoftware` VALUES ('37', '3ds Max 2014', '图形', 'Sdongman/Sdm6.png', '3', '3D Studio Max，常简称为3d Max[1]  或3ds MAX，是Discreet公司开发的（后被Autodesk公司合并）基于PC系统的三维动画渲染和制作软件。其前身是基于DOS操作系统的3D Studio系列软件。', 'Bdongman/Bdm6.jpg', 'soft/21.rar', '2017/5/3', '1.0.0', 'j22k', '21.mp4');
INSERT INTO `zysoftware` VALUES ('38', 'Adobe Flash CS6', '图形', 'Sdongman/Sdm7.png', '3', 'Adobe Flash CS6是用于创建动画和多媒体内容的强大的创作平台。Adobe Flash CS6设计身临其境，而且在台式计算机和平板电脑、智能手机和电视等多种设备中都能呈现一致效果的互动体验。', 'Bdongman/Bdm7.jpg', 'soft/3.rar', '2017/5/3', '1.0.0', 'b4b4', '3.mp4');
INSERT INTO `zysoftware` VALUES ('39', 'Adobe Effects CS6', '图形', 'Sdongman/Sdm08.png', '3', '利用 Adobe After Effects CS6 软件，用户可以使用新的全局高性能缓存，比以往任何时候更快地实现影院视觉效果和动态图形。使用内置的文本和形状挤出功能、新的蒙版羽化选项和快速易用的 3D Camera Tracker，扩展您的创造力。', 'Bdongman/Bdm8.jpg', 'soft/22.rar', '2017/5/3', '1.0.0', 'uqay', '22.mp4');
INSERT INTO `zysoftware` VALUES ('40', 'Photoshop CS6', '图形', 'Sdongman/Sdm09.png', '3', 'AdobePhotoshopCS6在前几代加入了GPUOpenGL加速、内容填充等新特性，此代会加强3D图像编辑，采用新的暗色调用户界面，其他改进还有整合Adobe云服务、改进文件搜索等。', 'Bdongman/Bdm9.jpg', 'soft/9.rar', '2017/5/3', '1.0.0', 'ok73', '9.mp4');
INSERT INTO `zysoftware` VALUES ('41', 'Premiere pro CS6', '图形', 'Sdongman/Sdm10.png', '3', 'Adobe Premiere Pro CS6 软件将卓越的性能、优美的改进用户界面和许多奇妙的创意功能结合在一起，包括用于稳定素材的 Warp Stabilizer、动态时间轴裁切、扩展的多机编辑、调整图层等。', 'Bdongman/Bdm10.jpg', 'soft/23.rar', '2017/5/3', '1.0.0', '56cx', '23.mp4');
INSERT INTO `zysoftware` VALUES ('42', 'office 2010', '办公', 'Sdianzishangwu/Sdzsw06.png', '4', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bdianshang/Bds1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('43', 'ImageReady CS2', '工具', 'Sdianzishangwu/Sdzsw01.png', '4', 'ImageReady是由Adobe公司开发的，以处理网络图形为主的图像编辑软件。', 'Bdianshang/Bds2.jpg', 'soft/24.rar', '2017/5/3', '1.0.0', '660r', '24.mp4');
INSERT INTO `zysoftware` VALUES ('44', 'Dreamware CS6', '开发', 'Sdianzishangwu/Sdzsw02.png', '4', 'dreamweaver cs6用于制作并编辑网站和移动应用程序的网页设计软件。由于它支持代码、拆分、设计、实时视图等多种方式来创作、编写和修改网页，对于初级人员，你可以无需编写任何代码就能快速创建web页面。', 'Bdianshang/Bds3.jpg', 'soft/6.rar', '2017/5/3', '1.0.0', 'p6g6', '6.mp4');
INSERT INTO `zysoftware` VALUES ('45', 'Photoshop CS6', '图形', 'Sdianzishangwu/Sdzsw03.png', '4', 'AdobePhotoshopCS6在前几代加入了GPUOpenGL加速、内容填充等新特性，此代会加强3D图像编辑，采用新的暗色调用户界面，其他改进还有整合Adobe云服务、改进文件搜索等。', 'Bdianshang/Bds4.jpg', 'soft/9.rar', '2017/5/3', '1.0.0', 'ok73', '9.mp4');
INSERT INTO `zysoftware` VALUES ('46', 'SQL Server 2005', '开发', 'Sdianzishangwu/Sdzsw04.png', '4', 'Microsoft SQL Server 数据库引擎为关系型数据和结构化数据提供了更安全可靠的存储功能，使您可以构建和管理用于业务的高可用和高性能的数据应用程序。', 'Bdianshang/Bds5.jpg', 'soft/10.rar', '2017/5/3', '1.0.0', '0br9', '10.mp4');
INSERT INTO `zysoftware` VALUES ('47', 'Vmware', '工具', 'Sdianzishangwu/Sdzsw05.png', '4', 'VMware Workstation可在一部实体机器上模拟完整的网络环境，以及可便于携带的虚拟机器，其更好的灵活性与先进的技术胜过了市面上其他的虚拟计算机软件。', 'Bdianshang/Bds6.jpg', 'soft/13.rar', '2017/5/3', '1.0.0', 'tw2a', '13.mp4');
INSERT INTO `zysoftware` VALUES ('48', 'office 2010', '办公', 'Sdianzixinxi/Sdzxx01.png', '5', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bdianxin/Bdx1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('49', 'Progisp', '工具', 'Sdianzixinxi/Sdzxx02.png', '5', '超级下载软件Progisp，是一款应用广泛的下载软件', 'Bdianxin/Bdx10.jpg', 'soft/25.rar', '2017/5/3', '1.0.0', 'f6w5', '25.mp4');
INSERT INTO `zysoftware` VALUES ('50', 'stc-isp-15xx-v6.85D', '工具', 'Sdianzixinxi/Sdzxx03.png', '5', 'STC-ISP 是一款单片机下载编程烧录软件，是针对STC系列单片机而设计的，可下载STC89系列、12C2052系列和12C5410等系列的STC单片机，使用简便，现已被广泛使用。', 'Bdianxin/Bdx2.jpg', 'soft/26.rar', '2017/5/3', '1.0.0', 'qm8a', '26.mp4');
INSERT INTO `zysoftware` VALUES ('51', 'Quartus II 12.0', '工具', 'Sdianzixinxi/Sdzxx04.png', '5', '业界唯一提供FPGA和固定功能HardCopy器件统一设计流程的设计工具。', 'Bdianxin/Bdx3.jpg', 'soft/27.rar', '2017/5/3', '1.0.0', 'gbir', '27.mp4');
INSERT INTO `zysoftware` VALUES ('52', 'Proteus Pro 7.8', '工具', 'Sdianzixinxi/Sdzxx05.png', '5', 'Proteus是英国著名的EDA工具(仿真软件)，从原理图布图、代码调试到单片机与外围电路协同仿真，一键切换到PCB设计，真正实现了从概念到产品的完整设计。', 'Bdianxin/Bdx4.jpg', 'soft/28.rar', '2017/5/3', '1.0.0', 'n3ct', '28.mp4');
INSERT INTO `zysoftware` VALUES ('53', 'Keil uVision4', '工具', 'Sdianzixinxi/Sdzxx06.png', '5', '目前使用Keil uVision4的产品有Keil MDK-ARM，Keil C51，Keil C166和Keil C251', 'Bdianxin/Bdx5.jpg', 'soft/29.rar', '2017/5/3', '1.0.0', '9b54', '29.mp4');
INSERT INTO `zysoftware` VALUES ('54', 'icc avr', '工具', 'Sdianzixinxi/Sdzxx07.png', '5', 'CCAVR是一种符合ANSI标准的C语言来开发MCU（单片机）程序的一个工具，功能合适、使用方便、技术支持好', 'Bdianxin/Bdx6.jpg', 'soft/30.rar', '2017/5/3', '1.0.0', 'n33p', '30.mp4');
INSERT INTO `zysoftware` VALUES ('55', 'GX simulator6', '工具', 'Sdianzixinxi/Sdzxx08.png', '5', '三菱全系列PLC仿真调试软件gx simulator', 'Bdianxin/Bdx7.jpg', 'soft/31.rar', '2017/5/3', '1.0.0', 'cm3v', '31.mp4');
INSERT INTO `zysoftware` VALUES ('56', 'securecrt 5.2', '工具', 'Sdianzixinxi/Sdzxx09.png', '5', 'SecureCRT是一款支持SSH（SSH1和SSH2）的终端仿真程序，简单地说是Windows下登录UNIX或Linux服务器主机的软件。', 'Bdianxin/Bdx8.jpg', 'soft/32.rar', '2017/5/3', '1.0.0', '7z0h', '32.mp4');
INSERT INTO `zysoftware` VALUES ('57', 'Ewb50', '工具', 'Sdianzixinxi/Sdzxx10.png', '5', 'EWB软件是交互图像技术有限公司在九十年代初推出的EDA软件，用于模拟电路和数字电路的混合仿真，利用它可以直接从屏幕上看到各种电路的输出波形。EWB是一款小巧，但是仿真功能十分强大的软件。', 'Bdianxin/Bdx11.jpg', 'soft/33.rar', '2017/5/3', '1.0.0', '3gzt', '33.mp4');
INSERT INTO `zysoftware` VALUES ('58', 'Vmware', '工具', 'Sdianzixinxi/Sdzxx11.png', '5', 'VMware Workstation可在一部实体机器上模拟完整的网络环境，以及可便于携带的虚拟机器，其更好的灵活性与先进的技术胜过了市面上其他的虚拟计算机软件。', 'Bdianxin/Bdx9.jpg', 'soft/13.rar', '2017/5/3', '1.0.0', 'tw2a', '13.mp4');
INSERT INTO `zysoftware` VALUES ('59', 'office 2010', '办公', 'Sgongshang/Sgshang1.png', '6', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bgongshang/Bgs1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('60', 'office 2010', '办公', 'Schenggui/Scgui1.png', '7', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bchenggui/Bcg1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('61', 'office 2010', '办公', 'Swuliu/Swl1.png', '8', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bwuliu/Bwl1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('62', 'office 2010', '办公', 'Sshegong/Ssheg1.png', '9', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bshegong/Bsg1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('63', 'office 2010', '办公', 'Slvyou/Slvy1.png', '10', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Blvyou/Bly1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('64', 'office 2010', '办公', 'Syingyong/Syingy1.png', '11', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Byingyong/Byy1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('65', 'office 2010', '办公', 'Scaiwu/Scaiw2.png', '12', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bcaiwu/Bcw1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('66', '用友T3', '办公', 'Scaiwu/Scaiw1.png', '12', '用友T3支持成长型中小企业快速应对日益激烈的市场竞争，以客户为核心，集产、供、销、财一体解决方案，实现内部业务流程畅通、智能化管控平台、立体综合统计分析，支持全面科学决策。', 'Bcaiwu/Bcw2.jpg', 'soft/34.rar', '2017/5/3', '1.0.0', 'llhq', '34.mp4');
INSERT INTO `zysoftware` VALUES ('67', 'office 2010', '办公', 'Sguoji/gji2.png', '13', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bjingmao/Bjm1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('68', 'pocib', '办公', 'Sguoji/gji1.png', '13', 'POCIB是国际贸易从业技能综合实训是中国国际贸易学会继外销员考试、跟单员考试等考试项目之后，联合国际贸易杂志社和世格软件共同推出的互联网培训证书课程。', 'Bjingmao/Bjm2.jpg', 'soft/35.rar', '2017/5/3', '1.0.0', 'pwdw', '35.mp4');
INSERT INTO `zysoftware` VALUES ('69', 'office 2010', '办公', 'Shuizhan/Shz1.png', '14', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bhuizhan/Bhz1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('70', 'Photoshop CS6', '图形', 'Shuizhan/Shz2.png', '14', 'AdobePhotoshopCS6在前几代加入了GPUOpenGL加速、内容填充等新特性，此代会加强3D图像编辑，采用新的暗色调用户界面，其他改进还有整合Adobe云服务、改进文件搜索等。', 'Bhuizhan/Bhz2.jpg', 'soft/9.rar', '2017/5/3', '1.0.0', 'ok73', '9.mp4');
INSERT INTO `zysoftware` VALUES ('71', 'office 2010', '办公', 'Sshichang/Sshic2.png', '15', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bshiying/Bsy1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('72', 'Photoshop CS6', '图形', 'Sshichang/Sshic1.png', '15', 'AdobePhotoshopCS6在前几代加入了GPUOpenGL加速、内容填充等新特性，此代会加强3D图像编辑，采用新的暗色调用户界面，其他改进还有整合Adobe云服务、改进文件搜索等。', 'Bshiying/Bsy2.jpg', 'soft/9.rar', '2017/5/3', '1.0.0', 'ok73', '9.mp4');
INSERT INTO `zysoftware` VALUES ('73', 'office 2010', '办公', 'Sjinrong/Sjingr1.png', '16', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'jinrong/Bjy1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('74', 'office 2010', '办公', 'Sdianqi/Sdianq1.png', '17', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bdianhua/Bdh1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('75', 'S7 200', '开发', 'Sdianqi/Sdianq2.png', '17', 'S7-200 是一种小型的可编程序控制器，适用于各行各业，各种场合中的检测、监测及控制的自动化。S7-200系列的强大功能使其无论在独立运行中，或相连成网络皆能实现复杂控制功能。因此S7-200系列具有极高的性能/价格比。', 'Bdianhua/Bdh2.jpg', 'soft/36.rar', '2017/5/3', '1.0.0', '1cce', '36.mp4');
INSERT INTO `zysoftware` VALUES ('76', 'STEP 7 MicroWIN', '开发', 'Sdianqi/Sdianq3.png', '17', 'STEP 7 MicroWIN是西门子PLC S7-200编程软件最新版本', 'Bdianhua/Bdh3.jpg', 'soft/37.rar', '2017/5/3', '1.0.0', 'ozyg', '37.mp4');
INSERT INTO `zysoftware` VALUES ('77', 'AutoCAD 2008', '图形', 'Sdianqi/Sdianq4.png', '17', 'Autodesk公司升级产品AutoCAD 2008在界面、工作空间、面板、选项板、图形管理、图层、标注等到方面进行了改时宜，增加和增强了部分功能。', 'Bdianhua/Bdh4.jpg', 'soft/38.rar', '2017/5/3', '1.0.0', '8pj2', '38.mp4');
INSERT INTO `zysoftware` VALUES ('78', 'ISIS 7 Professional', '工具', 'Sdianqi/Sdianq5.png', '17', 'ISIS是智能原理图输入系统，用于设计原理图和电路仿真；', 'Bdianhua/Bdh5.jpg', 'soft/39.rar', '2017/5/3', '1.0.0', '', '39.mp4');
INSERT INTO `zysoftware` VALUES ('79', 'GPPW', '工具', 'Sdianqi/Sdianq6.png', '17', 'ISIS是智能原理图输入系统，用于设计原理图和电路仿真；ARES是先进的布线编辑系统，用于PCB设计。', 'Bdianhua/Bdh6.jpg', 'soft/40.rar', '2017/5/3', '1.0.0', 'hy09', '40.mp4');
INSERT INTO `zysoftware` VALUES ('80', 'solidWorks 2010', '工具', 'Sdianqi/Sdianq7.png', '17', 'SolidWorks为达索系统下的子公司，专门负责研发与销售机械设计软件的视窗产品。该集团提供涵盖整个产品生命周期的系统，包括设计、工程、制造和产品数据管理等各个领域中的最佳软件系统。', 'Bdianhua/Bdh7.jpg', 'soft/41.rar', '2017/5/3', '1.0.0', 'j5zn', '41.mp4');
INSERT INTO `zysoftware` VALUES ('81', 'RobotStudio 5.61', '工具', 'Sdianqi/Sdianq8.png', '17', 'ABB RobotStudio是优秀的计算机仿真软件。为帮助您提高生产率，降低购买与实施机器人解决方案的总成本，ABB开发了一个适用于机器人寿命周期各个阶段的软件产品家族。', 'Bdianhua/Bdh8.jpg', 'soft/42.rar', '2017/5/3', '1.0.0', 'w17m', '42.mp4');
INSERT INTO `zysoftware` VALUES ('82', 'winCC Flexible 2008', '工具', 'Sdianqi/Sdianq9.png', '17', 'WinCC flexible，德国西门子公司工业全集成自动化的子产品，是一款面向机器的自动化概念的HMI软件。WinCC flexible 用于组态用户界面以操作和监视机器与设备，提供了对面向解决方案概念的组态任务的支持。', 'Bdianhua/Bdh9.jpg', 'soft/43.rar', '2017/5/3', '1.0.0', 'cq1j', '43.mp4');
INSERT INTO `zysoftware` VALUES ('83', 'Keil uVision3', '工具', 'Sdianqi/Sdianq10.png', '17', 'KeilSoftware公司推出的uVision3是一款可用于多种8051MCU的集成开发环境(IDE)，该IDE同时也是PK51及其它开发套件的一个重要组件。包括AnalogDevices的ADuC83x和ADuC84x，以及Infineon的XC866等。', 'Bdianhua/Bdh10.jpg', 'soft/44.rar', '2017/5/3', '1.0.0', 'i1hf', '44.mp4');
INSERT INTO `zysoftware` VALUES ('84', 'office 2010', '办公', 'Smoju/Smoj2.png', '18', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bmuju/Bmj1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('85', 'AutoCAD 2008', '图形', 'Smoju/Smoj1.png', '18', 'Autodesk公司升级产品AutoCAD 2008在界面、工作空间、面板、选项板、图形管理、图层、标注等到方面进行了改时宜，增加和增强了部分功能。', 'Bmuju/Bmj2.jpg', 'soft/38.rar', '2017/5/3', '1.0.0', '8pj2', '38.mp4');
INSERT INTO `zysoftware` VALUES ('86', 'office 2010', '办公', 'Sjidian/Sjdian1.png', '19', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bjidian/Bjd1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('87', 'S7 200', '开发', 'Sjidian/Sjdian2.png', '19', 'S7-200 是一种小型的可编程序控制器，适用于各行各业，各种场合中的检测、监测及控制的自动化。S7-200系列的强大功能使其无论在独立运行中，或相连成网络皆能实现复杂控制功能。因此S7-200系列具有极高的性能/价格比。', 'Bjidian/Bjd2.jpg', 'soft/36.rar', '2017/5/3', '1.0.0', '1cce', '36.mp4');
INSERT INTO `zysoftware` VALUES ('88', 'STEP 7 MicroWIN', '开发', 'Sjidian/Sjdian3.png', '19', 'STEP 7 MicroWIN是西门子PLC S7-200编程软件最新版本', 'Bjidian/Bjd3.jpg', 'soft/37.rar', '2017/5/3', '1.0.0', 'ozyg', '37.mp4');
INSERT INTO `zysoftware` VALUES ('89', 'UG 8.0', '工具', 'Sjidian/Sjdian4.png', '19', 'UG是Siemens PLM Software公司出品的一个产品工程解决方案，它为用户的产品设计及加工过程提供了数字化造型和验证手段。Unigraphics NX针对用户的虚拟产品设计和工艺设计的需求，提供了经过实践验证的解决方案。', 'Bjidian/Bjd4.jpg', 'soft/45.rar', '2017/5/3', '1.0.0', '', '45.mp4');
INSERT INTO `zysoftware` VALUES ('90', 'AutoCAD 2008', '图形', 'Sjidian/Sjdian5.png', '19', 'Autodesk公司升级产品AutoCAD 2008在界面、工作空间、面板、选项板、图形管理、图层、标注等到方面进行了改时宜，增加和增强了部分功能。', 'Bjidian/Bjd5.jpg', 'soft/38.rar', '2017/5/3', '1.0.0', '8pj2', '38.mp4');
INSERT INTO `zysoftware` VALUES ('91', 'FluidSim', '工具', 'Sjidian/Sjdian6.png', '19', 'FluidSIM是德国Festo公司和Paderborn大学开发的用于液压与气压传动的教学软件等的软件。', 'Bjidian/Bjd6.jpg', 'soft/46.rar', '2017/5/3', '1.0.0', 'z3ky', '46.mp4');
INSERT INTO `zysoftware` VALUES ('92', 'office 2010', '办公', 'Sqicheweixiu/Sqcwx1.png', '20', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bqixiu/Bqx1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('93', 'office 2010', '办公', 'Sqichefuwu/Sqcfwu1.png', '21', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bqijin/Bqj1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('94', 'office 2010', '办公', 'Syingshi/Sys1.png', '22', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Byingshi/Bys1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('95', 'Premiere pro CS6', '图形', 'Syingshi/Sys2.png', '22', 'Adobe Premiere Pro CS6 软件将卓越的性能、优美的改进用户界面和许多奇妙的创意功能结合在一起，包括用于稳定素材的 Warp Stabilizer、动态时间轴裁切、扩展的多机编辑、调整图层等。', 'Byingshi/Bys2.jpg', 'soft/23.rar', '2017/5/3', '1.0.0', '56cx', '23.mp4');
INSERT INTO `zysoftware` VALUES ('96', 'Illustrator CS5', '图形', 'Syingshi/Sys3.png', '22', 'Adobe illustrator是一种应用于出版、多媒体和在线图像的工业标准矢量插画的软件，作为一款非常好的矢量图形处理工具', 'Byingshi/Bys3.jpg', 'soft/47.rar', '2017/5/3', '1.0.0', 'qb3z', '47.mp4');
INSERT INTO `zysoftware` VALUES ('97', 'Painter 2016', '图形', 'Syingshi/Sys4.png', '22', 'Painter是数码素描与绘画工具的终极选择，是一款极其优秀的仿自然绘画软件，拥有全面和逼真的仿自然画笔。它是专门为渴望追求自由创意及需要数码工具来仿真传统绘画的数码艺术家、插画画家及摄影师而开发的。', 'Byingshi/Bys4.jpg', 'soft/48.rar', '2017/5/3', '1.0.0', 'f1oo', '48.mp4');
INSERT INTO `zysoftware` VALUES ('98', 'Adobe Flash CS6', '图形', 'Syingshi/Sys5.png', '22', 'Adobe Flash CS6是用于创建动画和多媒体内容的强大的创作平台。Adobe Flash CS6设计身临其境，而且在台式计算机和平板电脑、智能手机和电视等多种设备中都能呈现一致效果的互动体验。', 'Byingshi/Bys5.jpg', 'soft/3.rar', '2017/5/3', '1.0.0', 'b4b4', '3.mp4');
INSERT INTO `zysoftware` VALUES ('99', 'MAYA', '图形', 'Syingshi/Sys6.png', '22', 'Autodesk Maya是美国Autodesk公司出品的世界顶级的三维动画软件，应用对象是专业的影视广告，角色动画，电影特技等。Maya功能完善，工作灵活，易学易用，制作效率极高，渲染真实感极强，是电影级别的高端制作软件.', 'Byingshi/Bys6.jpg', 'soft/49.rar', '2017/5/3', '1.0.0', 'zjs0', '49.mp4');
INSERT INTO `zysoftware` VALUES ('100', 'Photoshop CS6', '图形', 'Syingshi/Sys7.png', '22', 'AdobePhotoshopCS6在前几代加入了GPUOpenGL加速、内容填充等新特性，此代会加强3D图像编辑，采用新的暗色调用户界面，其他改进还有整合Adobe云服务、改进文件搜索等。', 'Byingshi/Bys7.jpg', 'soft/9.rar', '2017/5/3', '1.0.0', 'ok73', '9.mp4');
INSERT INTO `zysoftware` VALUES ('101', 'Adobe Effects CS6', '图形', 'Syingshi/Sys8.png', '22', '利用 Adobe After Effects CS6 软件，用户可以使用新的全局高性能缓存，比以往任何时候更快地实现影院视觉效果和动态图形。使用内置的文本和形状挤出功能、新的蒙版羽化选项和快速易用的 3D Camera Tracker，扩展您的创造力。', 'Byingshi/Bys8.jpg', 'soft/22.rar', '2017/5/3', '1.0.0', 'uqay', '22.mp4');
INSERT INTO `zysoftware` VALUES ('102', 'office 2010', '办公', 'Sguanggao/ggao1.png', '23', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bguanggao/Bgg1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('103', 'Photoshop CS6', '图形', 'Sguanggao/ggao2.png', '23', 'AdobePhotoshopCS6在前几代加入了GPUOpenGL加速、内容填充等新特性，此代会加强3D图像编辑，采用新的暗色调用户界面，其他改进还有整合Adobe云服务、改进文件搜索等。', 'Bguanggao/Bgg2.jpg', 'soft/9.rar', '2017/5/3', '1.0.0', 'ok73', '9.mp4');
INSERT INTO `zysoftware` VALUES ('104', 'CorelDRAW X4', '图形', 'Sguanggao/ggao3.png', '23', 'CorelDRAW X4是矢量绘图软件CORELDRAW的第14个版本，使用直观的矢量插图和页面布局工具创建卓越的设计，并使用专业照片编辑软件，润饰和增强照片效果。', 'Bguanggao/Bgg3.jpg', 'soft/50.rar', '2017/5/3', '1.0.0', '652o', '50.mp4');
INSERT INTO `zysoftware` VALUES ('105', 'office 2010', '办公', 'Schanpin/Scpin1.png', '24', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bchanpin/Bcp1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('106', 'Rhinoceros 5.0', '图形', 'Schanpin/Scpin2.png', '24', 'Rhinoceros 3D是一套专业的3D立体模型制作软件，简称Rhino3D，由位于美国西雅图的Robert', 'Bchanpin/Bcp2.jpg', 'soft/51.rar', '2017/5/3', '1.0.0', 'z9sb', '51.mp4');
INSERT INTO `zysoftware` VALUES ('107', 'Illustrator CS5', '图形', 'Schanpin/Scpin3.png', '24', 'Adobe Flash CS6是用于创建动画和多媒体内容的强大的创作平台。Adobe Flash CS6设计身临其境，而且在台式计算机和平板电脑、智能手机和电视等多种设备中都能呈现一致效果的互动体验。', 'Bchanpin/Bcp3.jpg', 'soft/47.rar', '2017/5/3', '1.0.0', 'qb3z', '47.mp4');
INSERT INTO `zysoftware` VALUES ('108', 'CAD 2008', '图形', 'Schanpin/Scpin4.png', '24', 'Autodesk公司升级产品AutoCAD 2008在界面、工作空间、面板、选项板、图形管理、图层、标注等到方面进行了改时宜，增加和增强了部分功能。', 'Bchanpin/Bcp4.jpg', 'soft/38.rar', '2017/5/3', '1.0.0', '8pj2', '38.mp4');
INSERT INTO `zysoftware` VALUES ('109', 'Photoshop CS6', '图形', 'Schanpin/Scpin5.png', '24', 'AdobePhotoshopCS6在前几代加入了GPUOpenGL加速、内容填充等新特性，此代会加强3D图像编辑，采用新的暗色调用户界面，其他改进还有整合Adobe云服务、改进文件搜索等。', 'Bchanpin/Bcp5.jpg', 'soft/9.rar', '2017/5/3', '1.0.0', 'ok73', '9.mp4');
INSERT INTO `zysoftware` VALUES ('110', 'office 2010', '办公', 'Shuanjing/Shj1.png', '25', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bhuanyi/Bhy1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('111', '3ds Max 2014', '图形', 'Shuanjing/Shj2.png', '25', '3D Studio Max，常简称为3d Max[1]  或3ds MAX，是Discreet公司开发的（后被Autodesk公司合并）基于PC系统的三维动画渲染和制作软件。其前身是基于DOS操作系统的3D Studio系列软件。', 'Bhuanyi/Bhy2.jpg', 'soft/21.rar', '2017/5/3', '1.0.0', 'j22k', '21.mp4');
INSERT INTO `zysoftware` VALUES ('112', 'CAD 2008', '图形', 'Shuanjing/Shj3.png', '25', 'Autodesk公司升级产品AutoCAD 2008在界面、工作空间、面板、选项板、图形管理、图层、标注等到方面进行了改时宜，增加和增强了部分功能。', 'Bhuanyi/Bhy3.jpg', 'soft/38.rar', '2017/5/3', '1.0.0', '8pj2', '38.mp4');
INSERT INTO `zysoftware` VALUES ('113', 'Photoshop CS6', '图形', 'Shuanjing/Shj4.png', '25', 'AdobePhotoshopCS6在前几代加入了GPUOpenGL加速、内容填充等新特性，此代会加强3D图像编辑，采用新的暗色调用户界面，其他改进还有整合Adobe云服务、改进文件搜索等。', 'Bhuanyi/Bhy4.jpg', 'soft/9.rar', '2017/5/3', '1.0.0', 'ok73', '9.mp4');
INSERT INTO `zysoftware` VALUES ('114', 'office 2010', '办公', 'Spiju/Spj1.png', '26', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bpiju/Bpj1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('115', 'Painter 2016', '图形', 'Spiju/Spj2.png', '26', 'Painter是数码素描与绘画工具的终极选择，是一款极其优秀的仿自然绘画软件，拥有全面和逼真的仿自然画笔。它是专门为渴望追求自由创意及需要数码工具来仿真传统绘画的数码艺术家、插画画家及摄影师而开发的。', 'Bpiju/Bpj2.jpg', 'soft/48.rar', '2017/5/3', '1.0.0', 'f1oo', '48.mp4');
INSERT INTO `zysoftware` VALUES ('116', 'CorelDRAW X4', '图形', 'Spiju/Spj3.png', '26', 'CorelDRAW X4是矢量绘图软件CORELDRAW的第14个版本，使用直观的矢量插图和页面布局工具创建卓越的设计，并使用专业照片编辑软件，润饰和增强照片效果。', 'Bpiju/Bpj3.jpg', 'soft/50.rar', '2017/5/3', '1.0.0', '652o', '50.mp4');
INSERT INTO `zysoftware` VALUES ('117', 'Illustrator CS5', '图形', 'Spiju/Spj4.png', '26', 'Adobe illustrator是一种应用于出版、多媒体和在线图像的工业标准矢量插画的软件，作为一款非常好的矢量图形处理工具', 'Bpiju/Bpj4.jpg', 'soft/47.rar', '2017/5/3', '1.0.0', 'qb3z', '47.mp4');
INSERT INTO `zysoftware` VALUES ('118', 'CAD 2008', '图形', 'Spiju/Spj5.png', '26', 'Autodesk公司升级产品AutoCAD 2008在界面、工作空间、面板、选项板、图形管理、图层、标注等到方面进行了改时宜，增加和增强了部分功能。', 'Bpiju/Bpj5.jpg', 'soft/38.rar', '2017/5/3', '1.0.0', '8pj2', '38.mp4');
INSERT INTO `zysoftware` VALUES ('119', 'Photoshop CS6', '图形', 'Spiju/Spj6.png', '26', 'AdobePhotoshopCS6在前几代加入了GPUOpenGL加速、内容填充等新特性，此代会加强3D图像编辑，采用新的暗色调用户界面，其他改进还有整合Adobe云服务、改进文件搜索等。', 'Bpiju/Bpj6.jpg', 'soft/9.rar', '2017/5/3', '1.0.0', 'ok73', '9.mp4');
INSERT INTO `zysoftware` VALUES ('120', 'office 2010', '办公', 'Sfuzhuang/Sfz1.png', '27', 'Microsoft Office 2010，是微软推出的新一代办公软件，开发代号为Office 14，实际是第12个发行版。该软件共有6个版本，分别是初级版、家庭及学生版、家庭及商业版、标准版、专业版和专业高级版。', 'Bfuzhuang/Bfz1.jpg', 'soft/1.rar', '2017/5/3', '1.0.0', '9m39', '1.mp4');
INSERT INTO `zysoftware` VALUES ('121', 'CorelDRAW X4', '图形', 'Sfuzhuang/Sfz2.png', '27', 'CorelDRAW X4是矢量绘图软件CORELDRAW的第14个版本，使用直观的矢量插图和页面布局工具创建卓越的设计，并使用专业照片编辑软件，润饰和增强照片效果。', 'Bfuzhuang/Bfz2.jpg', 'soft/50.rar', '2017/5/3', '1.0.0', '652o', '50.mp4');
INSERT INTO `zysoftware` VALUES ('122', 'Photoshop CS6', '图形', 'Sfuzhuang/Sfz3.png', '27', 'AdobePhotoshopCS6在前几代加入了GPUOpenGL加速、内容填充等新特性，此代会加强3D图像编辑，采用新的暗色调用户界面，其他改进还有整合Adobe云服务、改进文件搜索等。', 'Bfuzhuang/Bfz3.jpg', 'soft/9.rar', '2017/5/3', '1.0.0', 'ok73', '9.mp4');
INSERT INTO `zysoftware` VALUES ('123', '富怡服装CAD', '图形', 'Sfuzhuang/Sfz4.png', '27', '富怡服装CAD系统是一套应用于纺织、服装行业生产的专业电脑软件。它是集纸样设计、放码、排料于一体的专业系统。它可以开纸样、放码、排料及打印各种比例纸样图、排料图等，为纺织、服装行业提供了一个方便快捷、灵活高效的生产环境。', 'Bfuzhuang/Bfz4.jpg', 'soft/52.rar', '2017/5/3', '1.0.0', '09jg', '52.mp4');
INSERT INTO `zysoftware` VALUES ('124', 'audition CS6', '音频', 'Syinbiao/Syb1.png', '28', 'Adobe Audition，为Syntrillum出品的多音轨编辑工具(声音编辑软件)，支持128条音轨、多种音频特效、多种音频格式，可以很方便地对音频文件进行修改、合并。', 'Byinbiao/Byb1.jpg', 'soft/53.rar', '2017/5/3', '1.0.0', 'pd4v', '53.mp4');

-- ----------------------------
-- Table structure for zysoftware_titleb
-- ----------------------------
DROP TABLE IF EXISTS `zysoftware_titleb`;
CREATE TABLE `zysoftware_titleb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titleBName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zysoftware_titleb
-- ----------------------------
INSERT INTO `zysoftware_titleb` VALUES ('1', '信息工程学院');
INSERT INTO `zysoftware_titleb` VALUES ('2', '管理学院');
INSERT INTO `zysoftware_titleb` VALUES ('3', '商贸学院');
INSERT INTO `zysoftware_titleb` VALUES ('4', '机电工程学院');
INSERT INTO `zysoftware_titleb` VALUES ('5', '创意与设计学院');
INSERT INTO `zysoftware_titleb` VALUES ('6', '服装艺术学院');

-- ----------------------------
-- Table structure for zysoftware_titles
-- ----------------------------
DROP TABLE IF EXISTS `zysoftware_titles`;
CREATE TABLE `zysoftware_titles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titleSName` varchar(255) DEFAULT NULL,
  `titleS_to_titleB` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `titleS_to_titleB` (`titleS_to_titleB`),
  CONSTRAINT `zysoftware_titles_ibfk_1` FOREIGN KEY (`titleS_to_titleB`) REFERENCES `zysoftware_titleb` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zysoftware_titles
-- ----------------------------
INSERT INTO `zysoftware_titles` VALUES ('1', '计算机应用技术', '1');
INSERT INTO `zysoftware_titles` VALUES ('2', '云计算', '1');
INSERT INTO `zysoftware_titles` VALUES ('3', '动漫设计与制作', '1');
INSERT INTO `zysoftware_titles` VALUES ('4', '电子商务', '1');
INSERT INTO `zysoftware_titles` VALUES ('5', '电子信息工程', '1');
INSERT INTO `zysoftware_titles` VALUES ('6', '工商企业管理', '2');
INSERT INTO `zysoftware_titles` VALUES ('7', '城市轨道交通运营管理', '2');
INSERT INTO `zysoftware_titles` VALUES ('8', '物流管理', '2');
INSERT INTO `zysoftware_titles` VALUES ('9', '社会工作', '2');
INSERT INTO `zysoftware_titles` VALUES ('10', '旅游英语', '2');
INSERT INTO `zysoftware_titles` VALUES ('11', '应用英语', '3');
INSERT INTO `zysoftware_titles` VALUES ('12', '财务管理', '3');
INSERT INTO `zysoftware_titles` VALUES ('13', '国际经济与贸易', '3');
INSERT INTO `zysoftware_titles` VALUES ('14', '会展策划与管理', '3');
INSERT INTO `zysoftware_titles` VALUES ('15', '市场营销', '3');
INSERT INTO `zysoftware_titles` VALUES ('16', '金融管理', '3');
INSERT INTO `zysoftware_titles` VALUES ('17', '电气自动化技术', '4');
INSERT INTO `zysoftware_titles` VALUES ('18', '模具设计与制造', '4');
INSERT INTO `zysoftware_titles` VALUES ('19', '机电一体化技术', '4');
INSERT INTO `zysoftware_titles` VALUES ('20', '汽车检测与维修技术', '4');
INSERT INTO `zysoftware_titles` VALUES ('21', '汽车技术服务与运营', '4');
INSERT INTO `zysoftware_titles` VALUES ('22', '艺术设计（影视动画设计与制作）', '5');
INSERT INTO `zysoftware_titles` VALUES ('23', '艺术设计（广告设计与制作应用）', '5');
INSERT INTO `zysoftware_titles` VALUES ('24', '产品造型设计', '5');
INSERT INTO `zysoftware_titles` VALUES ('25', '环境艺术设计', '5');
INSERT INTO `zysoftware_titles` VALUES ('26', '皮具设计', '6');
INSERT INTO `zysoftware_titles` VALUES ('27', '服装设计', '6');
INSERT INTO `zysoftware_titles` VALUES ('28', '音乐表演', '6');
