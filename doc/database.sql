create database webdemo;
DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
Alter table user_info add unique(username);

insert  into `user_info`(`username`,`password`) values ('admin','admin');

DROP TABLE IF EXISTS `member_info`;
CREATE TABLE member_info (
  memberId int(11) NOT NULL AUTO_INCREMENT comment '客户自增ID',
  memberName varchar(40) NOT NULL comment '客户名称',
  certificate varchar(255) NOT NULL comment '身份证号码',
  address varchar(255) NOT NULL comment '联系地址',
  phoneNumber varchar(40) NOT NULL comment '联系电话',
  gender varchar(2) not null comment '性别',
  birthday date comment '出生日期',
  age int(4) NOT NULL comment '年龄',
  status int (4) NOT NULL comment '当前状态,1:正常，2:预警',
  PRIMARY KEY (memberId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

Alter table member_info add unique(certificate);

DROP TABLE IF EXISTS `location_info`;
CREATE TABLE location_info (
  id int(11) NOT NULL AUTO_INCREMENT comment '自增ID',
  memberId int (11) NOT NULL comment '客户ID',
  xposition int(40) NOT NULL comment 'x坐标位置',
  yposition int(40) NOT NULL comment 'y坐标位置',
  floor varchar(255) NOT NULL comment '楼层',
  sampletime date comment '采样时间',
  status int (4) NOT NULL comment '当前状态,1:正常，2:预警',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `webdemo`.`location_info`
(memberId,`xposition`, `yposition`, `floor`, `sampletime`, `status`)
VALUES
  (1,100,   100,   1,   '2016-10-26 08:00:00',   1);
INSERT INTO `webdemo`.`location_info`
(memberId,`xposition`, `yposition`, `floor`, `sampletime`, `status`)
VALUES
  (1,200,   200,   1,   '2016-10-26 08:05:00',   1);
INSERT INTO `webdemo`.`location_info`
(memberId,`xposition`, `yposition`, `floor`, `sampletime`, `status`)
VALUES
  (1,300,   200,   1,   '2016-10-26 08:10:00',   1);
INSERT INTO `webdemo`.`location_info`
(memberId,`xposition`, `yposition`, `floor`, `sampletime`, `status`)
VALUES
  (1,400,   300,   2,   '2016-10-26 08:15:00',   2);


DROP TABLE IF EXISTS `location_intime`;
CREATE TABLE location_intime (
  id int(11) NOT NULL AUTO_INCREMENT comment '自增ID',
  memberId int (11) NOT NULL comment '客户ID',
  xposition int(40) NOT NULL comment 'x坐标位置',
  yposition int(40) NOT NULL comment 'y坐标位置',
  floor varchar(255) NOT NULL comment '楼层',
  sampletime date comment '采样时间',
  staytime INT(11) not null COMMENT '停留时间，以分钟计数',
  status int (4) NOT NULL comment '当前状态,1:正常，2:预警',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
Alter table location_intime add unique(memberId);

INSERT INTO `webdemo`.`location_intime`
(memberId,`xposition`, `yposition`, `floor`, `sampletime`, `staytime`,`status`)
VALUES
  (2,100,   100,   1,   '2016-10-26 08:00:00', 30,  1);
INSERT INTO `webdemo`.`location_intime`
(memberId,`xposition`, `yposition`, `floor`, `sampletime`, `staytime`,`status`)
VALUES
  (3,200,   200,   1,   '2016-10-26 08:05:00', 20,  1);
INSERT INTO `webdemo`.`location_intime`
(memberId,`xposition`, `yposition`, `floor`, `sampletime`, `staytime`,`status`)
VALUES
  (4,300,   200,   1,   '2016-10-26 08:10:00', 50,  1);
INSERT INTO `webdemo`.`location_intime`
(memberId,`xposition`, `yposition`, `floor`, `sampletime`, `staytime`,`status`)
VALUES
  (5,400,   300,   2,   '2016-10-26 08:15:00', 25,  2);



DROP TABLE IF EXISTS `member_event_history`;
CREATE TABLE member_event_history (
  id int(11) NOT NULL AUTO_INCREMENT comment '自增ID',
  memberId int (11) NOT NULL comment '客户ID',
  title varchar(255) NOT NULL comment '事件标题',
  eventdesc varchar(255) NOT NULL comment '事件描述',
  eventtime datetime comment '事件发生时间',
  eventtype int (4) NOT NULL comment '事件类型,1:通知，2:警告',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `webdemo`.`member_event_history`
(memberId,`title`, `eventdesc`, `eventtime`, `eventtype`)
VALUES
  (1,'欢迎新客户加入', '欢迎客户测试加入', '2016-10-26 08:01:05', 1);
INSERT INTO `webdemo`.`member_event_history`
(memberId,`title`, `eventdesc`, `eventtime`, `eventtype`)
VALUES
  (1,'日常体检结果', '体检正常', '2016-10-27 08:30:00', 1);

INSERT INTO `webdemo`.`member_event_history`
(memberId,`title`, `eventdesc`, `eventtime`, `eventtype`)
VALUES
  (1,'警告', '客户跌倒，地点二楼厕所', '2016-10-28 10:05:01', 2);

