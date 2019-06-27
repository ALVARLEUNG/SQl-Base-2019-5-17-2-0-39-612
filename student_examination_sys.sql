# Host: localhost:3316  (Version: 5.5.22)
# Date: 2019-06-27 11:51:09
# Generator: MySQL-Front 5.3  (Build 4.9)

/*!40101 SET NAMES utf8 */;

#
# Source for table "student"
#

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(5) NOT NULL DEFAULT '',
  `name` varchar(10) DEFAULT NULL,
  `age` varchar(2) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "student"
#

INSERT INTO `student` VALUES ('001','张三','18','男'),('002','李四','20','女');

#
# Source for table "subject"
#

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` varchar(5) NOT NULL DEFAULT '',
  `subject` varchar(10) DEFAULT NULL,
  `teacher` varchar(10) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "subject"
#

INSERT INTO `subject` VALUES ('1001','语文','王老师','本次考试比较简单'),('1002','数学','刘老师','本次考试比较难');

#
# Source for table "score"
#

DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(5) DEFAULT NULL,
  `subject_id` varchar(5) DEFAULT NULL,
  `score` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `score_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "score"
#

INSERT INTO `score` VALUES (1,'001','1001','80'),(2,'002','1002','60'),(3,'001','1001','70'),(4,'002','1002','60');
