/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 07/08/2023 00:03:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_account
-- ----------------------------
DROP TABLE IF EXISTS `tb_account`;
CREATE TABLE `tb_account`
(
    `id`            int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `username`      varchar(255) DEFAULT NULL COMMENT '账户名',
    `email`         varchar(255) DEFAULT NULL COMMENT '邮箱',
    `password`      varchar(255) DEFAULT NULL COMMENT '密码',
    `role`          varchar(255) DEFAULT NULL COMMENT '角色',
    `register_time` datetime     DEFAULT NULL COMMENT '注册时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `unique_email` (`email`),
    UNIQUE KEY `unique_username` (`username`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT ='账户表';


-- ----------------------------
-- Records of tb_account
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
