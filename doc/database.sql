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