create database webdemo;
DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
    `age` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

insert  into `user_info`(`id`,`username`,`password`,`age`) values (1,'测试','sfasgfaf',24);


CREATE TABLE member_info (
  memberId int(11) NOT NULL AUTO_INCREMENT comment '客户自增ID',
  memberName varchar(40) NOT NULL comment '客户名称',
  address varchar(255) NOT NULL comment '联系地址',
  phoneNumber varchar(40) NOT NULL comment '联系电话',
  gender varchar(2) not null comment '性别',
  birthday date comment '出生日期',
  age int(4) NOT NULL comment '年龄',
  status int (4) NOT NULL comment '当前状态,1:正常，2:预警',
  PRIMARY KEY (memberId)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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