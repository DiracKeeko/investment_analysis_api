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
  `user_name` varchar(32) NOT NULL COMMENT '用户名',
  `unique_id` char(8) NOT NULL COMMENT '(本企业内的)用户唯一标识',
  `position` varchar(16) NOT NULL COMMENT '用户职位',
  `organization_name` varchar(32) NOT NULL COMMENT '所属组织名称(所属最小管理单位)',
  `institution_path` varchar(255) NOT NULL COMMENT '机构路径',
  `state` tinyint(1) DEFAULT 1 COMMENT '状态: 0禁用, 1正常',
  `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB COMMENT='用户信息表';