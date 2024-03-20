-- Create database
DROP DATABASE IF EXISTS investment_analysis_db;
CREATE DATABASE investment_analysis_db;


-- Use database
USE investment_analysis_db;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` INT NOT NULL AUTO_INCREMENT COMMENT '(本系统内的)用户id',
  `user_name` VARCHAR(32) NOT NULL COMMENT '用户名',
  `unique_id` CHAR(8) NOT NULL COMMENT '(本企业内的)用户唯一标识',
  `position` VARCHAR(16) NOT NULL COMMENT '用户职位',
  `organization_name` VARCHAR(32) NOT NULL COMMENT '所属组织名称(所属最小管理单位)',
  `institution_path` VARCHAR(255) NOT NULL COMMENT '机构路径',
  `state` TINYINT(1) DEFAULT 1 COMMENT '状态: 0禁用, 1正常',
  `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB COMMENT='用户信息表';


-- ----------------------------
-- Table structure for user_auth
-- ----------------------------
DROP TABLE IF EXISTS `user_auth`;
CREATE TABLE `user_auth` (
  `user_id` INT NOT NULL COMMENT '(本系统内的)用户id',
  `user_account` varchar(64) NOT NULL COMMENT '用户账号',
  `user_password` varchar(100) NOT NULL COMMENT '用户密码;',
  `fail_count` tinyint(1) NOT NULL DEFAULT 0 COMMENT '失败次数',
  `last_login_time` DATETIME DEFAULT NULL COMMENT '最后登录时间',
  `update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB COMMENT='用户认证信息表';


-- TODO label预登记 版本管理

-- TODO 通知公告