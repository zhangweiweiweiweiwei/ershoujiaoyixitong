/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 02/03/2021 20:55:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `street` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细地址',
  `zipcode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮编',
  `mbr_id` int(11) NOT NULL COMMENT '所属会员',
  `default_value` tinyint(1) DEFAULT 0 COMMENT '是否为所属会员的默认收货地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '张三', '13902025678', '武汉市黄陂区传智播客教育科创园1号楼201室', '430000', 1, 0);
INSERT INTO `address` VALUES (2, '李四', '13702204321', '武汉市黄陂区传智播客教育科创园5号楼501室', '430000', 1, 0);
INSERT INTO `address` VALUES (3, '王五', '022-87188666', '武汉市洪山区光谷云计算大厦', '430000', 1, 0);
INSERT INTO `address` VALUES (5, '大宝', '99999999999', '99999999999号', '999999', 1, 0);
INSERT INTO `address` VALUES (7, '二宝', '99999999999', '99999999999号', '999999', 1, 0);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类目名称',
  `alias` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类目别名',
  `order_weight` int(11) NOT NULL COMMENT '排序权重',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `alias`(`alias`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (00000000001, '手   机', 'shouji', 10);
INSERT INTO `category` VALUES (00000000002, '电   脑', 'diannao', 10);
INSERT INTO `category` VALUES (00000000003, '书   籍', 'shuji', 10);
INSERT INTO `category` VALUES (00000000004, '衣服', 'jiadian', 10);
INSERT INTO `category` VALUES (00000000005, '鞋子', 'xiezi', 10);
INSERT INTO `category` VALUES (00000000006, '被   子', 'beizi', 10);
INSERT INTO `category` VALUES (00000000007, '电   器', 'dianqi', 10);
INSERT INTO `category` VALUES (00000000008, '生活用品', 'shenghuoyongpin', 10);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '所属订单编号',
  `product_id` int(11) NOT NULL COMMENT '商品编号',
  `amount` int(11) DEFAULT NULL COMMENT '单品数量',
  `total_price` decimal(9, 2) DEFAULT NULL COMMENT '单品总价',
  `payment_price` decimal(9, 2) DEFAULT NULL COMMENT '单品实付的总价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, 1, 24, 4, 7996.00, 6000.00);
INSERT INTO `item` VALUES (2, 1, 24, 3, 5997.00, 4500.00);
INSERT INTO `item` VALUES (3, 1, 17, 2, 3996.00, 3000.00);
INSERT INTO `item` VALUES (4, 1, 4, 1, 1699.00, 1699.00);
INSERT INTO `item` VALUES (5, 2, 24, 4, 7996.00, 6000.00);
INSERT INTO `item` VALUES (6, 2, 24, 3, 5997.00, 4500.00);
INSERT INTO `item` VALUES (7, 2, 17, 2, 3996.00, 3000.00);
INSERT INTO `item` VALUES (8, 2, 4, 1, 1699.00, 1699.00);
INSERT INTO `item` VALUES (9, 3, 9, 1, 12999.00, 12999.00);
INSERT INTO `item` VALUES (10, 4, 17, 1, 1998.00, 1500.00);
INSERT INTO `item` VALUES (11, 5, 17, 1, 1998.00, 1500.00);
INSERT INTO `item` VALUES (12, 5, 17, 1, 1998.00, 1500.00);
INSERT INTO `item` VALUES (13, 6, 17, 1, 1998.00, 1500.00);
INSERT INTO `item` VALUES (14, 7, 8, 1, 9999.00, 8999.00);
INSERT INTO `item` VALUES (15, 8, 105, 1, 699.00, 599.00);
INSERT INTO `item` VALUES (16, 9, 17, 1, 1998.00, 1500.00);
INSERT INTO `item` VALUES (17, 10, 17, 1, 1998.00, 1500.00);
INSERT INTO `item` VALUES (18, 10, 24, 1, 1999.00, 1500.00);
INSERT INTO `item` VALUES (19, 10, 24, 1, 1999.00, 1500.00);
INSERT INTO `item` VALUES (20, 11, 17, 1, 1998.00, 1500.00);
INSERT INTO `item` VALUES (21, 11, 24, 1, 1999.00, 1500.00);
INSERT INTO `item` VALUES (22, 11, 24, 1, 1999.00, 1500.00);
INSERT INTO `item` VALUES (23, 12, 2, 1, 5288.00, 4880.00);
INSERT INTO `item` VALUES (24, 13, 2, 3, 15864.00, 14640.00);
INSERT INTO `item` VALUES (25, 14, 8, 1, 9999.00, 8999.00);
INSERT INTO `item` VALUES (26, 14, 18, 1, 150.00, 130.00);
INSERT INTO `item` VALUES (27, 1, 7, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (28, 1, 7, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (29, 1, 7, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (30, 1, 234, 1, 5500.00, 5500.00);
INSERT INTO `item` VALUES (31, 1, 238, 2, 8598.00, 8598.00);
INSERT INTO `item` VALUES (32, 1, 234, 2, 11000.00, 11000.00);
INSERT INTO `item` VALUES (33, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (34, 1, 7, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (35, 1, 7, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (36, 1, 7, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (37, 1, 16, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (38, 1, 236, 1, 10.00, 10.00);
INSERT INTO `item` VALUES (39, 1, 7, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (40, 1, 7, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (41, 1, 7, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (42, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (43, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (44, 1, 235, 1, 6500.00, 6500.00);
INSERT INTO `item` VALUES (45, 1, 235, 1, 6500.00, 6500.00);
INSERT INTO `item` VALUES (46, 1, 235, 1, 6500.00, 6500.00);
INSERT INTO `item` VALUES (47, 1, 234, 1, 5500.00, 5500.00);
INSERT INTO `item` VALUES (48, 1, 236, 1, 10.00, 10.00);
INSERT INTO `item` VALUES (49, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (50, 1, 235, 1, 6500.00, 6500.00);
INSERT INTO `item` VALUES (51, 1, 238, 1, 4299.00, 4299.00);
INSERT INTO `item` VALUES (52, 1, 25, 1, 20.00, 50.00);
INSERT INTO `item` VALUES (53, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (54, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (55, 1, 7, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (56, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (57, 1, 7, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (58, 1, 3, 1, 0.00, 0.00);
INSERT INTO `item` VALUES (59, 1, 16, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (60, 1, 1, 1, 280.00, 120.00);
INSERT INTO `item` VALUES (61, 1, 45, 1, 20.00, 50.00);
INSERT INTO `item` VALUES (62, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (63, 1, 7, 1, 500.00, 799.00);
INSERT INTO `item` VALUES (64, 1, 3, 1, 0.00, 0.00);
INSERT INTO `item` VALUES (65, 1, 1, 1, 280.00, 120.00);
INSERT INTO `item` VALUES (66, 1, 234, 1, 5500.00, 5500.00);
INSERT INTO `item` VALUES (67, 1, 234, 1, 5500.00, 5500.00);
INSERT INTO `item` VALUES (68, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (69, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (70, 1, 45, 1, 20.00, 50.00);
INSERT INTO `item` VALUES (71, 1, 24, 1, 20.00, 50.00);
INSERT INTO `item` VALUES (72, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (73, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (74, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (75, 1, 231, 1, 20.00, 39.90);
INSERT INTO `item` VALUES (76, 1, 24, 1, 20.00, 50.00);
INSERT INTO `item` VALUES (77, 1, 235, 1, 6500.00, 6500.00);
INSERT INTO `item` VALUES (78, 1, 2, 1, 5288.00, 4880.00);
INSERT INTO `item` VALUES (79, 1, 78, 2, 19998.00, 17998.00);
INSERT INTO `item` VALUES (80, 1, 16, 3, 1500.00, 1197.00);
INSERT INTO `item` VALUES (81, 1, 7, 1, 500.00, 399.00);
INSERT INTO `item` VALUES (82, 1, 24, 1, 20.00, 19.90);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `nick_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `real_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '真实名',
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱号',
  `gender` tinyint(1) DEFAULT 0 COMMENT '性别，默认值false  1为男，0为女',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (1, '13888888888', '666666', '阿伟', '张伟', '1271917029@qq.com', 1, '2020-05-29 08:50:22');
INSERT INTO `member` VALUES (6, '13111111111', '111111', '晓风残月荧', '何家豪', '3114636071@qq.com', 1, '2020-06-03 15:05:25');
INSERT INTO `member` VALUES (7, '13888888889', '999999', '老大', '韩庆超', '00000000000@qq.com', 1, '2020-06-15 20:28:29');
INSERT INTO `member` VALUES (8, '15707207642', '666666', '大宝', NULL, NULL, 0, '2021-01-24 14:49:45');
INSERT INTO `member` VALUES (9, '13112345679', '666666', NULL, NULL, NULL, 0, NULL);
INSERT INTO `member` VALUES (13, '13707227646', '666666', NULL, NULL, NULL, 0, NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `buyer_id` int(11) NOT NULL COMMENT '所属买家会员编号',
  `total_amount` int(11) DEFAULT NULL COMMENT '商品总数量',
  `total_price` decimal(9, 2) DEFAULT NULL COMMENT '总的费用',
  `payment_price` decimal(9, 2) DEFAULT NULL COMMENT '实付的费用',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '买家留言',
  `contact` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收货人',
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `street` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '详细地址',
  `zipcode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮编',
  `create_time` datetime DEFAULT NULL COMMENT '下单时间',
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `delivery_time` datetime DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime DEFAULT NULL COMMENT '完成时间',
  `status` int(11) NOT NULL COMMENT '订单状态：0下单,1待付款,2已付款,3待发货,4已发货,5己收货,6已完成,-1已取消',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `number`(`number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '20200603194808552', 1, 10, 19688.00, 15199.00, '注意隐私', '二宝', '99999999999', '99999999999号', '999999', '2020-06-03 19:48:08', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (2, '20200603194814118', 1, 10, 19688.00, 15199.00, '注意隐私', '二宝', '99999999999', '99999999999号', '999999', '2020-06-03 19:48:14', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (3, '20200604101208492', 1, 1, 12999.00, 12999.00, '小', '大宝', '99999999999', '99999999999号', '999999', '2020-06-04 10:12:08', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (4, '20200604111319380', 1, 1, 1998.00, 1500.00, '111', '大宝', '99999999999', '99999999999号', '999999', '2020-06-04 11:13:19', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (5, '20200604111414203', 1, 2, 3996.00, 3000.00, '', '二宝', '99999999999', '99999999999号', '999999', '2020-06-04 11:14:14', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (6, '20200604112500340', 1, 1, 1998.00, 1500.00, '', '二宝', '99999999999', '99999999999号', '999999', '2020-06-04 11:25:00', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (7, '20200604112647580', 1, 1, 9999.00, 8999.00, '666', '二宝', '99999999999', '99999999999号', '999999', '2020-06-04 11:26:47', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (8, '20200604112733714', 1, 1, 699.00, 599.00, '', '二宝', '99999999999', '99999999999号', '999999', '2020-06-04 11:27:33', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (9, '20200604145208326', 1, 1, 1998.00, 1500.00, '', '大宝', '99999999999', '99999999999号', '999999', '2020-06-04 14:52:08', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (10, '20200610194840856', 1, 3, 5996.00, 4500.00, '', '二宝', '99999999999', '99999999999号', '999999', '2020-06-10 19:48:40', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (11, '20200610194909399', 1, 3, 5996.00, 4500.00, '', '二宝', '99999999999', '99999999999号', '999999', '2020-06-10 19:49:09', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (12, '20200616185449941', 1, 1, 5288.00, 4880.00, '', '二宝', '99999999999', '99999999999号', '999999', '2020-06-16 18:54:50', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (13, '20200616190551315', 1, 3, 15864.00, 14640.00, '', '大宝', '99999999999', '99999999999号', '999999', '2020-06-16 19:05:51', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (14, '20210119211823906', 1, 2, 10149.00, 9129.00, '', '', '', '', '', '2021-01-19 21:18:24', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (15, '20210126150400821', 1, 2, 1000.00, 1598.00, '小', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-26 15:04:00', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (16, '20210126150934007', 1, 1, 500.00, 799.00, '小', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-26 15:09:34', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (17, '20210126155335720', 1, 1, 500.00, 799.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-26 15:53:35', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (18, '20210126155953582', 1, 1, 500.00, 799.00, '小', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-26 15:59:53', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (19, '20210126160429224', 1, 1, 5500.00, 5500.00, '小', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-26 16:04:29', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (20, '20210126194217257', 1, 2, 8598.00, 8598.00, '小', '张三', '13902025678', '武汉市黄陂区传智播客教育科创园1号楼201室', '430000', '2021-01-26 19:42:17', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (21, '20210126203725247', 1, 2, 11000.00, 11000.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-26 20:37:25', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (22, '20210130102516155', 1, 1, 20.00, 39.90, '小', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 10:25:16', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (23, '20210130103205560', 1, 1, 500.00, 799.00, '小', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 10:32:05', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (24, '20210130103212099', 1, 1, 500.00, 799.00, '小', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 10:32:12', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (25, '20210130104201167', 1, 1, 500.00, 799.00, '小', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 10:42:01', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (26, '20210130104252296', 1, 1, 500.00, 799.00, '小', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 10:42:52', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (27, '20210130104352586', 1, 1, 10.00, 10.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 10:43:52', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (28, '20210130111947845', 1, 1, 500.00, 799.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 11:19:47', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (29, '20210130111954870', 1, 1, 500.00, 799.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 11:19:54', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (30, '20210130111957118', 1, 1, 500.00, 799.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 11:19:57', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (31, '20210130112929507', 1, 1, 20.00, 39.90, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 11:29:29', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (32, '20210130174648233', 1, 1, 20.00, 39.90, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 17:46:48', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (33, '20210130174902170', 1, 1, 6500.00, 6500.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 17:49:02', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (34, '20210130175951163', 1, 1, 6500.00, 6500.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 17:59:51', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (35, '20210130190652995', 1, 1, 6500.00, 6500.00, '小', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 19:06:53', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (36, '20210130191625836', 1, 1, 5500.00, 5500.00, '', '王五', '022-87188666', '武汉市洪山区光谷云计算大厦', '430000', '2021-01-30 19:16:25', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (37, '20210130191653955', 1, 1, 10.00, 10.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 19:16:53', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (38, '20210130192058212', 1, 1, 20.00, 39.90, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-30 19:20:58', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (39, '20210130192956284', 1, 1, 6500.00, 6500.00, '', '二宝', '99999999999', '99999999999号', '999999', '2021-01-30 19:29:56', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (40, '20210130193034984', 1, 1, 4299.00, 4299.00, '', '大宝', '99999999999', '99999999999号', '999999', '2021-01-30 19:30:34', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (41, '20210130211501761', 1, 1, 20.00, 50.00, '', '二宝', '99999999999', '99999999999号', '999999', '2021-01-30 21:15:01', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (42, '20210131201950559', 1, 1, 20.00, 39.90, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 20:19:50', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (43, '20210131202729981', 1, 2, 520.00, 838.90, '', '张三', '13902025678', '武汉市黄陂区传智播客教育科创园1号楼201室', '430000', '2021-01-31 20:27:29', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (44, '20210131203034289', 1, 3, 520.00, 838.90, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 20:30:34', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (45, '20210131203146988', 1, 3, 800.00, 969.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 20:31:46', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (46, '20210131203616738', 1, 3, 520.00, 838.90, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 20:36:16', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (47, '20210131205127882', 1, 1, 280.00, 120.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 20:51:27', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (48, '20210131205320807', 1, 1, 5500.00, 5500.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 20:53:20', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (49, '20210131205447638', 1, 2, 5520.00, 5539.90, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 20:54:47', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (50, '20210131210148229', 1, 1, 20.00, 39.90, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 21:01:48', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (51, '20210131211522011', 1, 1, 20.00, 50.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 21:15:22', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (52, '20210131212058543', 1, 2, 40.00, 89.90, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 21:20:58', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (53, '20210131212602276', 1, 1, 20.00, 39.90, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 21:26:02', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (54, '20210131212821537', 1, 1, 20.00, 39.90, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 21:28:21', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (55, '20210131213130367', 1, 1, 20.00, 39.90, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-01-31 21:31:30', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (56, '20210201152758429', 1, 1, 20.00, 50.00, '', '张淑婷', '13707227648', '湖北武汉', '999999', '2021-02-01 15:27:58', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (57, '20210227102814171', 1, 1, 6500.00, 6500.00, '', '张淑婷', '13707227648', '湖北武汉', '999999', '2021-02-27 10:28:14', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (58, '20210228221149635', 1, 1, 5288.00, 4880.00, '', '大宝', '13111111111', '湖北武汉', '999999', '2021-02-28 22:11:49', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (59, '20210302191540220', 1, 5, 21498.00, 19195.00, '', '张淑婷', '13707227648', '湖北武汉', '999999', '2021-03-02 19:15:40', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (60, '20210302191700175', 1, 1, 500.00, 399.00, '', '张淑婷', '13707227648', '湖北武汉', '999999', '2021-03-02 19:17:00', NULL, NULL, NULL, 0);
INSERT INTO `orders` VALUES (61, '20210302191929326', 1, 1, 20.00, 19.90, '', '张淑婷', '13707227648', '湖北武汉', '999999', '2021-03-02 19:19:29', NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `cate_id` int(11) DEFAULT NULL COMMENT '所属类目编号',
  `thumbnail` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主配图片',
  `inventory` int(11) DEFAULT 0 COMMENT '库存数量',
  `sales_volume` int(11) DEFAULT 0 COMMENT '售出数量',
  `price` decimal(9, 2) DEFAULT 0.00 COMMENT '定价',
  `sale_price` decimal(9, 2) DEFAULT 0.00 COMMENT '售价',
  `detail_description` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '详情富文本描述',
  `selling_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卖点富文本描述',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `sale_time` datetime DEFAULT NULL COMMENT '开售时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 298 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (2, 'iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (3, '华为 P9 ', 1, 'shouji04.png', 0, 0, 0.00, 0.00, NULL, '华为 P9 ', NULL, NULL);
INSERT INTO `product` VALUES (4, '小米Max', 1, 'shouji05.png', 0, 0, 0.00, 0.00, NULL, '小米Max', NULL, NULL);
INSERT INTO `product` VALUES (5, '魅蓝3 礼盒版', 1, 'shouji06.png', 0, 0, 0.00, 0.00, NULL, '魅蓝3 礼盒版', NULL, NULL);
INSERT INTO `product` VALUES (7, '简柯林秋冬季外套男装衣服男士修身工装学生', 4, 'yifu01.png', 1000, 10, 500.00, 399.00, NULL, '简柯林秋冬季外套男装衣服男士修身工装学生', '2021-01-21 20:02:26', '2021-01-27 20:02:23');
INSERT INTO `product` VALUES (8, 'ThinkPad X1 Carbon (20FBA00XCD) 14英寸超极笔记本电脑', 2, 'thinkpad-x1.jpg', 300, 0, 9999.00, 8999.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/thinkpad-x1-1.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	i5-6200U 8G 192GB SSD FHD IPS Win10 64位\r\n</h1>', '2016-06-03 10:10:45', '2016-06-03 10:09:00');
INSERT INTO `product` VALUES (9, '外星人（Alienware）ALW13E-4728S 13.3英寸笔记本电脑', 2, 'alienware.jpg', 400, 0, 12999.00, 11999.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/alienware-1.jpg\" alt=\"\" />\r\n <img src=\"/img/alienware-2.jpg\" alt=\"\" /> \r\n<img src=\"/img/alienware-3.jpg\" alt=\"\" /> \r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（I7-6500U 8G 256GB SSD GTX 960M 4G独显 Win10）银\r\n</h1>', '2016-06-03 10:31:11', '2016-06-03 10:28:00');
INSERT INTO `product` VALUES (10, '戴尔（DELL）XPS 13-9350-R1708 13.3英寸微边框笔记本电脑', 2, 'dell.jpg', 125, 0, 8999.00, 7999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/dell-1.jpg\" alt=\"\" />\n<img src=\"/img/dell-2.jpg\" alt=\"\" />\n<img src=\"/img/dell-3.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（ i7-6500U 8G 256GSSD Win10）银\r\n</h1>', '2016-06-03 10:34:08', '2016-06-03 10:33:00');
INSERT INTO `product` VALUES (11, '戴尔（DELL）Vostro 3800-R6308 台式电脑', 2, 'dell-desktop.jpg', 1000, 0, 3699.00, 3199.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/dell-desktop-1.jpg\" alt=\"\" />\n<img src=\"/img/dell-desktop-2.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（i3-4170 4G 500G DVD 三年上门 三年硬盘保留Win7）黑\r\n</h1>', '2016-06-03 10:39:46', '2016-06-03 10:38:00');
INSERT INTO `product` VALUES (12, '联想（Lenovo）H3050台式电脑', 2, 'lenovo.jpg', 1000, 0, 3399.00, 3099.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/lenovo-1.jpg\" alt=\"\" />\n<img src=\"/img/lenovo-2.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（i3-4170 4G 500G 集显 DVD 千兆网卡 Win10）20英寸\r\n</h1>', '2016-06-03 10:43:17', '2016-06-03 10:42:00');
INSERT INTO `product` VALUES (13, 'Apple iPad mini 4 平板电脑 7.9英寸', 2, 'ipad.png', 600, 0, 3288.00, 3088.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/ipad-1.jpg\" alt=\"\" />\n<img src=\"/img/ipad-2.jpg\" alt=\"\" />\n<img src=\"/img/ipad-3.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（64G WLAN版/A8芯片/Retina显示屏/Touch ID技术 MK9J2CH）金色\r\n</h1>', '2016-06-03 10:46:54', '2016-06-03 10:45:00');
INSERT INTO `product` VALUES (14, '小米（XIAOMI）平板电脑2 WIFI版 7.9英寸', 2, 'mipad.jpg', 400, 0, 999.00, 799.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/mipad-1.jpg\" alt=\"\" />\n<img src=\"/img/mipad-2.jpg\" alt=\"\" />\n<img src=\"/img/mipad-3.jpg\" alt=\"\" />\n<img src=\"/img/mipad-4.jpg\" alt=\"\" />\n<img src=\"/img/mipad-5.jpg\" alt=\"\" /><br />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（Intel Z8500 2G/16G 500W/800W）香槟金\r\n</h1>', '2016-06-03 10:52:14', '2016-06-03 10:50:00');
INSERT INTO `product` VALUES (15, '乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 799.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (16, '工装靴男秋冬季高帮潮流英伦风马丁靴', 5, 'xiezi01.png', 1000, 10, 500.00, 399.00, NULL, '工装靴男秋冬季高帮潮流英伦风马丁靴', '2020-12-29 20:02:13', '2021-01-20 20:02:17');
INSERT INTO `product` VALUES (17, '南极人NanJiren 被芯 加厚秋冬保暖被子 200*230cm', 6, 'beizi01.jpg', 1000, 10, 500.00, 399.00, NULL, '南极人NanJiren 被芯 加厚秋冬保暖被子 200*230cm', '2021-01-21 20:02:33', '2021-01-12 20:02:35');
INSERT INTO `product` VALUES (18, 'astikis麦斯特凯斯韩国牙膏', 8, 'yagao01.png', 1000, 10, 50.00, 25.00, NULL, 'astikis麦斯特凯斯韩国牙膏', '2021-02-18 20:02:38', '2021-01-26 20:02:41');
INSERT INTO `product` VALUES (19, 'C语言从入门到精通零起点', 3, 'cyuyan01.png', 100, 20, 20.00, 19.00, NULL, 'C语言从入门到精通零起点', '2021-01-07 20:02:56', '2021-01-13 20:02:51');
INSERT INTO `product` VALUES (20, '飞利浦电动剃须刀S5080充电式全身水洗多功能三刀头S5000系列', 7, 'xiaojiadian01.jpg', 500, 50, 699.00, 599.00, '<div style=\"text-align:center;\">\r\n<img src=\"./img/xiaojiadian0101.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0102.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0103.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 13:56:17', '2016-07-06 13:56:20');
INSERT INTO `product` VALUES (21, '格力加湿器 家用静音 卧室迷你小型 办公室空气净化大雾量增湿器', 7, 'xiaojiadian02.jpg', 500, 50, 799.00, 599.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/xiaojiadian0201.jpg\" alt=\"\" />\r\n<img src=\"/img/xiaojiadian0202.jpg\" alt=\"\" />\r\n<img src=\"/img/xiaojiadian0203.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 13:59:09', '2016-07-06 13:59:11');
INSERT INTO `product` VALUES (22, 'SIEMENS/西门子 BCD-610W(KA82NV06TI)双开门双门对开门电冰箱', 7, 'bingxiang01.jpg', 500, 50, 6999.00, 6530.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/bingxiang0101.jpg\" alt=\"\" />\r\n<img src=\"/img/bingxiang0102.jpg\" alt=\"\" />\r\n<img src=\"/img/bingxiang0103.jpg\" alt=\"\" />\r\n<img src=\"/img/bingxiang0104.jpg\" alt=\"\" />\r\n<img src=\"/img/bingxiang0105.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 14:09:33', '2016-07-06 14:09:36');
INSERT INTO `product` VALUES (23, '省电Kelon/科龙 KFR-35GW/ERQBN3(1L04) 大1.5匹智能冷暖空调挂机', 7, 'kongtiao01.jpg', 500, 100, 2600.00, 2300.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/kongtiao0101.jpg\" alt=\"\" />\r\n<img src=\"/img/kongtiao0102.jpg\" alt=\"\" />\r\n<img src=\"/img/kongtiao0103.jpg\" alt=\"\" />\r\n<img src=\"/img/kongtiao0104.jpg\" alt=\"\" />\r\n<img src=\"/img/kongtiao0105.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 14:33:15', '2016-07-06 14:33:18');
INSERT INTO `product` VALUES (24, '数据结构 严蔚敏 C语言版+数据结构题集', 3, 'shujujiegou01.png', 100, 20, 20.00, 19.90, NULL, '数据结构 严蔚敏 C语言版+数据结构题集', '2021-01-07 20:02:44', '2021-02-04 20:02:53');
INSERT INTO `product` VALUES (25, '数据结构与算法分析 C语言描述（原书第2版）典藏版', 3, 'shujujiegou02.png', 100, 20, 20.00, 19.90, NULL, '数据结构与算法分析 C语言描述（原书第2版）典藏版', '2021-01-14 20:03:02', '2021-02-03 20:02:59');
INSERT INTO `product` VALUES (26, '计算机操作系统 汤小丹 第四版 第4版 ', 3, 'caozuoxitong01.png', 100, 20, 20.00, 19.90, NULL, '计算机操作系统 汤小丹 第四版 第4版 ', '2021-01-14 20:03:06', '2021-01-14 20:03:08');
INSERT INTO `product` VALUES (27, '现代操作系统（原书第4版）', 3, 'caozuoxitong02.png', 100, 20, 20.00, 19.90, NULL, '现代操作系统（原书第4版）', '2021-01-21 20:03:14', '2021-01-27 20:03:11');
INSERT INTO `product` VALUES (28, '计算机操作系统教程（第4版）/普通高等教育“十一五”国家级规划教材·', 3, 'caozuoxitong03.png', 100, 20, 20.00, 19.90, NULL, '计算机操作系统教程（第4版）/普通高等教育“十一五”国家级规划教材·', '2021-01-14 20:03:17', '2021-01-06 20:03:20');
INSERT INTO `product` VALUES (29, '计算机网络：自顶向下方法(原书第7版)', 3, 'jisaunjiwangluo01.png', 100, 20, 20.00, 19.90, NULL, '计算机网络：自顶向下方法(原书第7版)', '2021-01-29 20:03:23', '2021-01-21 20:03:25');
INSERT INTO `product` VALUES (30, '计算机网络（第7版） 谢希仁 编著', 3, 'jisaunjiwangluo02.png', 100, 20, 20.00, 19.90, NULL, '计算机网络（第7版） 谢希仁 编著', '2021-01-07 20:03:28', '2021-01-26 20:03:31');
INSERT INTO `product` VALUES (31, 'Java语言程序设计:基础篇原书第8版', 3, 'java01.png', 100, 20, 20.00, 19.90, NULL, 'Java语言程序设计:基础篇原书第8版', '2020-12-31 20:03:34', '2020-12-28 20:03:38');
INSERT INTO `product` VALUES (32, 'Java核心技术 卷I 基础知识（原书第11版）', 3, 'java02.png', 100, 20, 20.00, 19.90, NULL, 'Java核心技术 卷I 基础知识（原书第11版）', '2021-01-06 20:03:41', '2021-01-12 20:03:44');
INSERT INTO `product` VALUES (33, 'Java性能优化实践 JVM调优策略 工具与技巧', 3, 'java03.png', 100, 20, 20.00, 19.90, NULL, 'Java性能优化实践 JVM调优策略 工具与技巧', '2021-01-07 20:03:48', '2020-12-29 20:03:51');
INSERT INTO `product` VALUES (34, '计算机科学丛书：计算机组成原理 ', 3, 'jisuanjizuchengyuanli01.png', 100, 20, 20.00, 19.90, NULL, '计算机科学丛书：计算机组成原理 ', '2021-01-27 20:03:55', '2021-02-01 20:03:58');
INSERT INTO `product` VALUES (35, '计算机组成原理（第六版.立体化教材）', 3, 'jisuanjizuchengyuanli02.png', 100, 20, 20.00, 19.90, NULL, '计算机组成原理（第六版.立体化教材）', '2021-01-21 20:04:01', '2021-01-27 20:04:04');
INSERT INTO `product` VALUES (36, '星火英语四级真题备考21年6月试卷全套资料4级全真试题', 3, 'yingyusiji01.png', 100, 20, 20.00, 19.90, NULL, '星火英语四级真题备考21年6月试卷全套资料4级全真试题', '2021-02-04 20:04:07', '2021-01-27 20:04:10');
INSERT INTO `product` VALUES (37, '星火英语四级真题备考21年6月试卷全套资料四级通关', 3, 'yingyusiji02.png', 100, 20, 20.00, 19.90, NULL, '星火英语四级真题备考21年6月试卷全套资料四级通关', '2021-01-22 20:04:13', '2021-01-14 20:04:16');
INSERT INTO `product` VALUES (38, '新视野大学英语视听说教程1', 3, 'daxueyingyu01.png', 100, 20, 20.00, 19.90, NULL, '新视野大学英语视听说教程1', '2021-01-21 20:04:19', '2021-01-07 20:04:22');
INSERT INTO `product` VALUES (39, '新视野大学英语(2)(长篇阅读)(第三版)', 3, 'daxueyingyu02.png', 100, 20, 20.00, 19.90, NULL, '新视野大学英语(2)(长篇阅读)(第三版)', '2020-12-31 20:04:26', '2021-01-13 20:04:29');
INSERT INTO `product` VALUES (40, '新视野大学英语 视听说教程3第三版', 3, 'daxueyingyu03.png', 100, 20, 20.00, 19.90, NULL, '新视野大学英语 视听说教程3第三版', '2021-01-29 20:04:32', '2021-01-20 20:04:35');
INSERT INTO `product` VALUES (41, '新视野大学英语读写教程4 第3版 ', 3, 'daxueyingyu04.png', 100, 20, 20.00, 19.90, NULL, '新视野大学英语读写教程4 第3版 ', '2021-01-28 20:04:38', '2021-01-29 20:04:42');
INSERT INTO `product` VALUES (42, '工程数学：线性代数（第6版）', 3, 'xianxingdaishu01.png', 100, 20, 20.00, 19.90, NULL, '工程数学：线性代数（第6版）', '2021-02-04 20:04:51', '2021-01-20 20:04:54');
INSERT INTO `product` VALUES (43, '2022考研数学线性代数辅导讲义', 3, 'xianxingdaishu02.png', 100, 20, 20.00, 19.90, NULL, '2022考研数学线性代数辅导讲义', '2021-01-28 20:04:56', '2021-01-27 20:04:58');
INSERT INTO `product` VALUES (44, '2022李林考研数学一历年真题解析', 3, 'kaoyanshuxue01.png', 100, 20, 20.00, 19.90, NULL, '2022李林考研数学一历年真题解析', '2021-01-14 20:05:03', '2021-01-08 20:05:06');
INSERT INTO `product` VALUES (45, '诗翁 港风t恤男宽松超火ins上衣潮流潮牌短袖男装20新款夏学生衣服男 T恤 T03白色 L', 4, 'yifu02.png', 100, 20, 20.00, 19.90, NULL, '诗翁 港风t恤男宽松超火ins上衣潮流潮牌短袖男装20新款夏学生衣服男 T恤 T03白色 L', '2021-01-14 20:05:10', '2021-01-26 20:05:13');
INSERT INTO `product` VALUES (46, 'J-VAN秋季工装牛仔春秋外套男夹克秋装连帽卫衣韩版衣服休闲潮流棉衣冬季棒球服春季青少年运动风衣套装 3件】80黑+白T+黑裤 XL', 4, 'yifu03.png', 100, 20, 180.00, 135.00, NULL, 'J-VAN秋季工装牛仔春秋外套男夹克秋装连帽卫衣韩版衣服休闲潮流棉衣冬季棒球服春季青少年运动风衣套装 3件】80黑+白T+黑裤 XL', '2021-01-07 20:05:36', '2021-01-13 20:05:39');
INSERT INTO `product` VALUES (48, 'Robbye外套男春秋季男装新款时尚修身棒球服轻薄夹克衣服男士秋天纯色潮流上衣大码服饰男装衣服 6602深灰色 XL', 4, 'yifu05.png', 100, 20, 20.00, 19.90, NULL, 'Robbye外套男春秋季男装新款时尚修身棒球服轻薄夹克衣服男士秋天纯色潮流上衣大码服饰男装衣服 6602深灰色 XL', '2021-01-15 20:05:48', '2021-01-27 20:05:51');
INSERT INTO `product` VALUES (49, '芬腾 睡衣女春夏翻领开衫纯棉长袖睡衣女士家居服女士睡衣Q980733005 兰底花 L', 4, 'yifu06.png', 100, 20, 150.00, 139.00, '0', '芬腾 睡衣女春夏翻领开衫纯棉长袖睡衣女士家居服女士睡衣Q980733005 兰底花 L', '2021-01-24 19:17:09', '2021-01-24 19:17:12');
INSERT INTO `product` VALUES (50, 'J-VAN 新品3件套装卫衣裤子棉服男士冬季外套棉衣秋冬装加厚棉袄子冬天衣服夹克面包服短款风衣 3件】22黑色+加绒卫衣+裤子 L', 4, 'yifu07.png', 100, 20, 200.00, 188.00, NULL, 'J-VAN 新品3件套装卫衣裤子棉服男士冬季外套棉衣秋冬装加厚棉袄子冬天衣服夹克面包服短款风衣 3件】22黑色+加绒卫衣+裤子 L', NULL, NULL);
INSERT INTO `product` VALUES (51, 'Robbye时尚长袖t恤男2021春秋季新款圆领体恤衫休闲百搭卫衣韩版印花打底衫男装衣服 W803白色+W803蓝色 XL', 4, 'yifu08.png', 100, 20, 100.00, 98.00, NULL, 'Robbye时尚长袖t恤男2021春秋季新款圆领体恤衫休闲百搭卫衣韩版印花打底衫男装衣服 W803白色+W803蓝色 XL', NULL, NULL);
INSERT INTO `product` VALUES (52, '【两件套】外套男 夹克男2021春秋季男装男士休闲夹克男外套连帽潮流工装夹克外套休闲运动套装男衣服 803军绿两件套 M', 4, 'yifu09.png', 100, 20, 200.00, 128.00, NULL, '【两件套】外套男 夹克男2021春秋季男装男士休闲夹克男外套连帽潮流工装夹克外套休闲运动套装男衣服 803军绿两件套 M', NULL, NULL);
INSERT INTO `product` VALUES (53, '特步男装运动短袖t恤衫2021春夏四季新款透气潮流修身男士休闲速干棉显瘦百搭上衣跑步运动健身经典衣服 【店长推荐】白色-logo圆领(速干)四季基础 L(175/96A)', 4, 'yifu10.png', 100, 20, 100.00, 52.00, NULL, '特步男装运动短袖t恤衫2021春夏四季新款透气潮流修身男士休闲速干棉显瘦百搭上衣跑步运动健身经典衣服 【店长推荐】白色-logo圆领(速干)四季基础 L(175/96A)', NULL, NULL);
INSERT INTO `product` VALUES (54, 'Robbye外套男春秋季夹克男衣服韩版潮流修身休闲服饰男生工装外套棒球服男上衣时尚情侣装男短外套 J1869黑色 XL', 4, 'yifu11.png', 100, 20, 150.00, 128.00, NULL, 'Robbye外套男春秋季夹克男衣服韩版潮流修身休闲服饰男生工装外套棒球服男上衣时尚情侣装男短外套 J1869黑色 XL', NULL, NULL);
INSERT INTO `product` VALUES (55, '典纶 外套男装春秋季衣服男秋装夹克修身休闲潮牌工装潮流头号青年春秋棒球服男生上衣学生男 6202浅蓝色 3XL', 4, 'yifu12.png', 100, 20, 128.00, 100.00, NULL, '典纶 外套男装春秋季衣服男秋装夹克修身休闲潮牌工装潮流头号青年春秋棒球服男生上衣学生男 6202浅蓝色 3XL', NULL, NULL);
INSERT INTO `product` VALUES (56, '罗则 春季潮牌加绒卫衣男士长袖T恤保暖打底衫秋衣休闲毛衣圆领外套上衣服男装无帽青少年新品春装体恤 9-0 春款 白色 XL', 4, 'yifu13.png', 100, 20, 100.00, 59.00, NULL, '罗则 春季潮牌加绒卫衣男士长袖T恤保暖打底衫秋衣休闲毛衣圆领外套上衣服男装无帽青少年新品春装体恤 9-0 春款 白色 XL', NULL, NULL);
INSERT INTO `product` VALUES (57, '南极人春季薄款圆领卫衣男牛年本命年贺岁牛转乾坤衣服潮流百搭情侣装宽松大码男生运动休闲无帽长袖T恤上衣 黑(牛转钱坤) L【推荐120-130斤左右】', 4, 'yifu14.png', 100, 20, 100.00, 69.00, NULL, '南极人春季薄款圆领卫衣男牛年本命年贺岁牛转乾坤衣服潮流百搭情侣装宽松大码男生运动休闲无帽长袖T恤上衣 黑(牛转钱坤) L【推荐120-130斤左右】', NULL, NULL);
INSERT INTO `product` VALUES (58, '银色黎明棒球服外套男春秋韩版潮流秋季潮牌夹克ins百搭炸街痞帅宽松帅气 深蓝色 L', 4, 'yifu15.png', 100, 20, 150.00, 128.00, NULL, '银色黎明棒球服外套男春秋韩版潮流秋季潮牌夹克ins百搭炸街痞帅宽松帅气 深蓝色 L', NULL, NULL);
INSERT INTO `product` VALUES (59, '【型徒】外套男 2021飞行员夹克春季户外韩版冲锋衣加绒新品运动套装男士卫衣工装情侣风衣上衣棉服男 不加绒款#2318黑色 XL(建议125-140斤)', 4, 'yifu16.png', 100, 20, 150.00, 128.00, NULL, '【型徒】外套男 2021飞行员夹克春季户外韩版冲锋衣加绒新品运动套装男士卫衣工装情侣风衣上衣棉服男 不加绒款#2318黑色 XL(建议125-140斤)', NULL, NULL);
INSERT INTO `product` VALUES (60, '特步卫衣男装套头t恤衫显瘦修身休闲运动服男士印花潮流时尚百搭内打底宽松长袖上衣2021春新款保暖外套 【店长推荐】黑色-logo基础经典款 L/175【官网现发】', 4, 'yifu17.png', 100, 20, 100.00, 98.00, NULL, '特步卫衣男装套头t恤衫显瘦修身休闲运动服男士印花潮流时尚百搭内打底宽松长袖上衣2021春新款保暖外套 【店长推荐】黑色-logo基础经典款 L/175【官网现发】', NULL, NULL);
INSERT INTO `product` VALUES (61, '询彧外套男春秋季衣服男士韩版工装休闲夹克男装休闲修身青少年男生时尚潮流外套男士短款衣服 JK2088灰色 XL', 4, 'yifu18.png', 100, 20, 150.00, 108.00, NULL, '询彧外套男春秋季衣服男士韩版工装休闲夹克男装休闲修身青少年男生时尚潮流外套男士短款衣服 JK2088灰色 XL', NULL, NULL);
INSERT INTO `product` VALUES (62, '芬腾 睡衣女翻领开衫简约图案温暖法兰绒休闲长袖女士睡衣家居服Q980742105 灰绿 L', 4, 'yifu19.png', 100, 20, 150.00, 119.00, NULL, '芬腾 睡衣女翻领开衫简约图案温暖法兰绒休闲长袖女士睡衣家居服Q980742105 灰绿 L', NULL, NULL);
INSERT INTO `product` VALUES (63, 'soinku潮型库 原创设计2021年春季新款外套男夹克宽松潮流休闲卡通猫咪印花系列班服套装 7012猫咪卫衣 XXL', 4, 'yifu20.png', 100, 20, 150.00, 128.00, NULL, 'soinku潮型库 原创设计2021年春季新款外套男夹克宽松潮流休闲卡通猫咪印花系列班服套装 7012猫咪卫衣 XXL', NULL, NULL);
INSERT INTO `product` VALUES (64, '男士t恤长袖秋衣加肥加大码日常上衣秋装立领拉链肥佬胖人 钱灰色 M【建议105-125斤】', 4, 'yifu21.png', 100, 20, 150.00, 108.00, NULL, '男士t恤长袖秋衣加肥加大码日常上衣秋装立领拉链肥佬胖人 钱灰色 M【建议105-125斤】', NULL, NULL);
INSERT INTO `product` VALUES (65, 'PBOA卫衣男士加绒潮圆领t恤长袖运动外套青少年上衣服秋冬款男生休闲保暖宽松白色情侣装无帽加厚打底衫 雾霾蓝加绒+豆绿加绒 L', 4, 'yifu22.png', 100, 20, 120.00, 119.00, NULL, 'PBOA卫衣男士加绒潮圆领t恤长袖运动外套青少年上衣服秋冬款男生休闲保暖宽松白色情侣装无帽加厚打底衫 雾霾蓝加绒+豆绿加绒 L', NULL, NULL);
INSERT INTO `product` VALUES (66, 'J-VAN春季夹克男士外套春秋工装休闲上衣服T恤裤子套装青少年男装春装棒球服潮流卫衣秋季短款潮牌风衣 3件丨春秋款丨20蓝色+T恤+裤子 XL', 4, 'yifu23.png', 100, 20, 150.00, 138.00, NULL, 'J-VAN春季夹克男士外套春秋工装休闲上衣服T恤裤子套装青少年男装春装棒球服潮流卫衣秋季短款潮牌风衣 3件丨春秋款丨20蓝色+T恤+裤子 XL', NULL, NULL);
INSERT INTO `product` VALUES (67, '南极人外套男夹克春秋季2021新款春装男士上衣ins潮韩版潮流学生休闲男装衣服工装春季春款 1938-卡其色 XL（115-130斤）', 4, 'yifu24.png', 100, 20, 100.00, 99.00, NULL, '南极人外套男夹克春秋季2021新款春装男士上衣ins潮韩版潮流学生休闲男装衣服工装春季春款 1938-卡其色 XL（115-130斤）', NULL, NULL);
INSERT INTO `product` VALUES (68, 'PBOA连帽衫卫衣男士秋季冬加绒潮牌宽松长袖T恤运动套装大码情侣圆领加厚青少年男生款外套休闲衣服男装 8113白色（单件薄款） L', 4, 'yifu25.png', 100, 20, 100.00, 79.00, NULL, 'PBOA连帽衫卫衣男士秋季冬加绒潮牌宽松长袖T恤运动套装大码情侣圆领加厚青少年男生款外套休闲衣服男装 8113白色（单件薄款） L', NULL, NULL);
INSERT INTO `product` VALUES (69, '斯得雅（STAVA）卫衣男士连帽长袖T恤2021春季韩版时尚套头上衣青年印花国潮宽松运动服外套 白色 2XL', 4, 'yifu26.png', 100, 20, 200.00, 178.00, NULL, '斯得雅（STAVA）卫衣男士连帽长袖T恤2021春季韩版时尚套头上衣青年印花国潮宽松运动服外套 白色 2XL', NULL, NULL);
INSERT INTO `product` VALUES (70, '【三件套】【夹克+T恤+裤子】外套男2021春秋季男装男士休闲运动套装潮流连帽工装夹克外套男衣服 601卡其黑三件套 XL', 4, 'yifu27.png', 100, 20, 200.00, 138.00, NULL, '【三件套】【夹克+T恤+裤子】外套男2021春秋季男装男士休闲运动套装潮流连帽工装夹克外套男衣服 601卡其黑三件套 XL', NULL, NULL);
INSERT INTO `product` VALUES (71, '罗则 春季夹克男士外套春秋季加绒加厚工装衣服套装休闲男装春装牛仔潮流卫衣连帽开衫青少年短款风衣 2件套 208款蓝色+T恤 XL', 4, 'yifu28.png', 100, 20, 100.00, 108.00, NULL, '罗则 春季夹克男士外套春秋季加绒加厚工装衣服套装休闲男装春装牛仔潮流卫衣连帽开衫青少年短款风衣 2件套 208款蓝色+T恤 XL', NULL, NULL);
INSERT INTO `product` VALUES (72, '1Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (73, '1iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (74, '1魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (77, '1Apple MacBook Pro 13.3英寸笔记本电脑', 2, 'mbp.jpg', 300, 0, 9288.00, 9200.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/mbp-1.jpg\" alt=\"\" />\n<img src=\"/img/mbp-2.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	银色(Core i5 处理器/8GB内存/128GB SSD闪存/Retina屏 MF839CH/A)\r\n</h1>', '2016-06-03 10:05:00', '2016-06-03 10:03:00');
INSERT INTO `product` VALUES (78, '1ThinkPad X1 Carbon (20FBA00XCD) 14英寸超极笔记本电脑', 2, 'thinkpad-x1.jpg', 300, 0, 9999.00, 8999.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/thinkpad-x1-1.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	i5-6200U 8G 192GB SSD FHD IPS Win10 64位\r\n</h1>', '2016-06-03 10:10:45', '2016-06-03 10:09:00');
INSERT INTO `product` VALUES (79, '1外星人（Alienware）ALW13E-4728S 13.3英寸笔记本电脑', 2, 'alienware.jpg', 400, 0, 12999.00, 11999.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/alienware-1.jpg\" alt=\"\" />\r\n <img src=\"/img/alienware-2.jpg\" alt=\"\" /> \r\n<img src=\"/img/alienware-3.jpg\" alt=\"\" /> \r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（I7-6500U 8G 256GB SSD GTX 960M 4G独显 Win10）银\r\n</h1>', '2016-06-03 10:31:11', '2016-06-03 10:28:00');
INSERT INTO `product` VALUES (80, '1戴尔（DELL）XPS 13-9350-R1708 13.3英寸微边框笔记本电脑', 2, 'dell.jpg', 125, 0, 8999.00, 8099.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/dell-1.jpg\" alt=\"\" />\n<img src=\"/img/dell-2.jpg\" alt=\"\" />\n<img src=\"/img/dell-3.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（ i7-6500U 8G 256GSSD Win10）银\r\n</h1>', '2016-06-03 10:34:08', '2016-06-03 10:33:00');
INSERT INTO `product` VALUES (81, '1戴尔（DELL）Vostro 3800-R6308 台式电脑', 2, 'dell-desktop.jpg', 1000, 0, 3699.00, 3199.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/dell-desktop-1.jpg\" alt=\"\" />\n<img src=\"/img/dell-desktop-2.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（i3-4170 4G 500G DVD 三年上门 三年硬盘保留Win7）黑\r\n</h1>', '2016-06-03 10:39:46', '2016-06-03 10:38:00');
INSERT INTO `product` VALUES (82, '1联想（Lenovo）H3050台式电脑', 2, 'lenovo.jpg', 1000, 0, 3399.00, 3099.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/lenovo-1.jpg\" alt=\"\" />\n<img src=\"/img/lenovo-2.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（i3-4170 4G 500G 集显 DVD 千兆网卡 Win10）20英寸\r\n</h1>', '2016-06-03 10:43:17', '2016-06-03 10:42:00');
INSERT INTO `product` VALUES (83, '1Apple iPad mini 4 平板电脑 7.9英寸', 2, 'ipad.png', 600, 0, 3288.00, 3288.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/ipad-1.jpg\" alt=\"\" />\n<img src=\"/img/ipad-2.jpg\" alt=\"\" />\n<img src=\"/img/ipad-3.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（64G WLAN版/A8芯片/Retina显示屏/Touch ID技术 MK9J2CH）金色\r\n</h1>', '2016-06-03 10:46:54', '2016-06-03 10:45:00');
INSERT INTO `product` VALUES (84, '1小米（XIAOMI）平板电脑2 WIFI版 7.9英寸', 2, 'mipad.jpg', 400, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/mipad-1.jpg\" alt=\"\" />\n<img src=\"/img/mipad-2.jpg\" alt=\"\" />\n<img src=\"/img/mipad-3.jpg\" alt=\"\" />\n<img src=\"/img/mipad-4.jpg\" alt=\"\" />\n<img src=\"/img/mipad-5.jpg\" alt=\"\" /><br />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（Intel Z8500 2G/16G 500W/800W）香槟金\r\n</h1>', '2016-06-03 10:52:14', '2016-06-03 10:50:00');
INSERT INTO `product` VALUES (85, '2Apple MacBook Pro 13.3英寸笔记本电脑', 2, 'mbp.jpg', 300, 0, 9288.00, 9200.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/mbp-1.jpg\" alt=\"\" />\n<img src=\"/img/mbp-2.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	银色(Core i5 处理器/8GB内存/128GB SSD闪存/Retina屏 MF839CH/A)\r\n</h1>', '2016-06-03 10:05:00', '2016-06-03 10:03:00');
INSERT INTO `product` VALUES (86, '2ThinkPad X1 Carbon (20FBA00XCD) 14英寸超极笔记本电脑', 2, 'thinkpad-x1.jpg', 300, 0, 9999.00, 8999.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/thinkpad-x1-1.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	i5-6200U 8G 192GB SSD FHD IPS Win10 64位\r\n</h1>', '2016-06-03 10:10:45', '2016-06-03 10:09:00');
INSERT INTO `product` VALUES (87, '2外星人（Alienware）ALW13E-4728S 13.3英寸笔记本电脑', 2, 'alienware.jpg', 400, 0, 12999.00, 12999.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/alienware-1.jpg\" alt=\"\" />\r\n <img src=\"/img/alienware-2.jpg\" alt=\"\" /> \r\n<img src=\"/img/alienware-3.jpg\" alt=\"\" /> \r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（I7-6500U 8G 256GB SSD GTX 960M 4G独显 Win10）银\r\n</h1>', '2016-06-03 10:31:11', '2016-06-03 10:28:00');
INSERT INTO `product` VALUES (88, '2戴尔（DELL）XPS 13-9350-R1708 13.3英寸微边框笔记本电脑', 2, 'dell.jpg', 125, 0, 8999.00, 8099.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/dell-1.jpg\" alt=\"\" />\n<img src=\"/img/dell-2.jpg\" alt=\"\" />\n<img src=\"/img/dell-3.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（ i7-6500U 8G 256GSSD Win10）银\r\n</h1>', '2016-06-03 10:34:08', '2016-06-03 10:33:00');
INSERT INTO `product` VALUES (89, '2戴尔（DELL）Vostro 3800-R6308 台式电脑', 2, 'dell-desktop.jpg', 1000, 0, 3699.00, 3199.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/dell-desktop-1.jpg\" alt=\"\" />\n<img src=\"/img/dell-desktop-2.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（i3-4170 4G 500G DVD 三年上门 三年硬盘保留Win7）黑\r\n</h1>', '2016-06-03 10:39:46', '2016-06-03 10:38:00');
INSERT INTO `product` VALUES (90, '2联想（Lenovo）H3050台式电脑', 2, 'lenovo.jpg', 1000, 0, 3399.00, 3099.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/lenovo-1.jpg\" alt=\"\" />\n<img src=\"/img/lenovo-2.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（i3-4170 4G 500G 集显 DVD 千兆网卡 Win10）20英寸\r\n</h1>', '2016-06-03 10:43:17', '2016-06-03 10:42:00');
INSERT INTO `product` VALUES (91, '2Apple iPad mini 4 平板电脑 7.9英寸', 2, 'ipad.png', 600, 0, 3288.00, 3288.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/ipad-1.jpg\" alt=\"\" />\n<img src=\"/img/ipad-2.jpg\" alt=\"\" />\n<img src=\"/img/ipad-3.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（64G WLAN版/A8芯片/Retina显示屏/Touch ID技术 MK9J2CH）金色\r\n</h1>', '2016-06-03 10:46:54', '2016-06-03 10:45:00');
INSERT INTO `product` VALUES (92, '2小米（XIAOMI）平板电脑2 WIFI版 7.9英寸', 2, 'mipad.jpg', 400, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/mipad-1.jpg\" alt=\"\" />\n<img src=\"/img/mipad-2.jpg\" alt=\"\" />\n<img src=\"/img/mipad-3.jpg\" alt=\"\" />\n<img src=\"/img/mipad-4.jpg\" alt=\"\" />\n<img src=\"/img/mipad-5.jpg\" alt=\"\" /><br />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	（Intel Z8500 2G/16G 500W/800W）香槟金\r\n</h1>', '2016-06-03 10:52:14', '2016-06-03 10:50:00');
INSERT INTO `product` VALUES (93, '1创维（Skyworth）55X5 55英寸 六核智能酷开网络平板液晶电视(黑色)', 7, 'dajiadian01.jpg', 100, 100, 2700.00, 2000.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/dajiadian0101.jpg\" alt=\"\" />\r\n<img src=\"/img/dajiadian0102.jpg\" alt=\"\" />\r\n<img src=\"/img/dajiadian0103.jpg\" alt=\"\" />\r\n<img src=\"/img/dajiadian0104.jpg\" alt=\"\" />\r\n<img src=\"/img/dajiadian0105.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-05 15:59:00', '2016-07-05 15:59:05');
INSERT INTO `product` VALUES (95, '1Edifier/漫步者 R101V笔记本电脑音响 多媒体台式小音箱2.1低音炮', 7, 'yingyinyule02.jpg', 100, 100, 150.00, 130.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/yingyinyule0201.jpg\" alt=\"\" />\r\n<img src=\"/img/yingyinyule0202.jpg\" alt=\"\" />\r\n<img src=\"/img/yingyinyule0203.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 11:23:25', '2016-07-06 11:23:28');
INSERT INTO `product` VALUES (97, '2创维（Skyworth）55X5 55英寸 六核智能酷开网络平板液晶电视(黑色)', 7, 'dajiadian01.jpg', 100, 100, 2700.00, 2000.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/dajiadian0101.jpg\" alt=\"\" />\r\n<img src=\"/img/dajiadian0102.jpg\" alt=\"\" />\r\n<img src=\"/img/dajiadian0103.jpg\" alt=\"\" />\r\n<img src=\"/img/dajiadian0104.jpg\" alt=\"\" />\r\n<img src=\"/img/dajiadian0105.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-05 15:59:00', '2016-07-05 15:59:05');
INSERT INTO `product` VALUES (99, '2Edifier/漫步者 R101V笔记本电脑音响 多媒体台式小音箱2.1低音炮', 7, 'yingyinyule02.jpg', 100, 100, 150.00, 130.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/yingyinyule0201.jpg\" alt=\"\" />\r\n<img src=\"/img/yingyinyule0202.jpg\" alt=\"\" />\r\n<img src=\"/img/yingyinyule0203.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 11:23:25', '2016-07-06 11:23:28');
INSERT INTO `product` VALUES (100, '2nphic/英菲克 I9 8核网络机顶盒无线高清硬盘播放器八核电视盒子', 7, 'yingyinyule03.jpg', 100, 50, 399.00, 350.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/yingyinyule0301.jpg\" alt=\"\" />\r\n<img src=\"/img/yingyinyule0302.jpg\" alt=\"\" />\r\n<img src=\"/img/yingyinyule0303.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 13:47:05', '2016-07-06 13:47:09');
INSERT INTO `product` VALUES (101, '3创维（Skyworth）55X5 55英寸 六核智能酷开网络平板液晶电视(黑色)', 7, 'dajiadian01.jpg', 100, 100, 2700.00, 2000.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/dajiadian0101.jpg\" alt=\"\" />\r\n<img src=\"/img/dajiadian0102.jpg\" alt=\"\" />\r\n<img src=\"/img/dajiadian0103.jpg\" alt=\"\" />\r\n<img src=\"/img/dajiadian0104.jpg\" alt=\"\" />\r\n<img src=\"/img/dajiadian0105.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-05 15:59:00', '2016-07-05 15:59:05');
INSERT INTO `product` VALUES (103, '3Edifier/漫步者 R101V笔记本电脑音响 多媒体台式小音箱2.1低音炮', 7, 'yingyinyule02.jpg', 100, 100, 150.00, 130.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/yingyinyule0201.jpg\" alt=\"\" />\r\n<img src=\"/img/yingyinyule0202.jpg\" alt=\"\" />\r\n<img src=\"/img/yingyinyule0203.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 11:23:25', '2016-07-06 11:23:28');
INSERT INTO `product` VALUES (104, '3nphic/英菲克 I9 8核网络机顶盒无线高清硬盘播放器八核电视盒子', 7, 'yingyinyule03.jpg', 100, 50, 399.00, 350.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/yingyinyule0301.jpg\" alt=\"\" />\r\n<img src=\"/img/yingyinyule0302.jpg\" alt=\"\" />\r\n<img src=\"/img/yingyinyule0303.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 13:47:05', '2016-07-06 13:47:09');
INSERT INTO `product` VALUES (105, '1飞利浦电动剃须刀S5080充电式全身水洗多功能三刀头S5000系列', 7, 'xiaojiadian01.jpg', 500, 50, 699.00, 599.00, '<div style=\"text-align:center;\">\r\n<img src=\"./img/xiaojiadian0101.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0102.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0103.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 13:56:17', '2016-07-06 13:56:20');
INSERT INTO `product` VALUES (106, '1格力加湿器 家用静音 卧室迷你小型 办公室空气净化大雾量增湿器', 7, 'xiaojiadian02.jpg', 500, 50, 799.00, 599.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/xiaojiadian0201.jpg\" alt=\"\" />\r\n<img src=\"/img/xiaojiadian0202.jpg\" alt=\"\" />\r\n<img src=\"/img/xiaojiadian0203.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 13:59:09', '2016-07-06 13:59:11');
INSERT INTO `product` VALUES (114, '2飞利浦电动剃须刀S5080充电式全身水洗多功能三刀头S5000系列', 7, 'xiaojiadian01.jpg', 500, 50, 699.00, 599.00, '<div style=\"text-align:center;\">\r\n<img src=\"./img/xiaojiadian0101.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0102.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0103.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 13:56:17', '2016-07-06 13:56:20');
INSERT INTO `product` VALUES (115, '2格力加湿器 家用静音 卧室迷你小型 办公室空气净化大雾量增湿器', 7, 'xiaojiadian02.jpg', 500, 50, 799.00, 599.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/xiaojiadian0201.jpg\" alt=\"\" />\r\n<img src=\"/img/xiaojiadian0202.jpg\" alt=\"\" />\r\n<img src=\"/img/xiaojiadian0203.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 13:59:09', '2016-07-06 13:59:11');
INSERT INTO `product` VALUES (123, '3飞利浦电动剃须刀S5080充电式全身水洗多功能三刀头S5000系列', 7, 'xiaojiadian01.jpg', 500, 50, 699.00, 599.00, '<div style=\"text-align:center;\">\r\n<img src=\"./img/xiaojiadian0101.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0102.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0103.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 13:56:17', '2016-07-06 13:56:20');
INSERT INTO `product` VALUES (124, '3格力加湿器 家用静音 卧室迷你小型 办公室空气净化大雾量增湿器', 7, 'xiaojiadian02.jpg', 500, 50, 799.00, 599.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/xiaojiadian0201.jpg\" alt=\"\" />\r\n<img src=\"/img/xiaojiadian0202.jpg\" alt=\"\" />\r\n<img src=\"/img/xiaojiadian0203.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 13:59:09', '2016-07-06 13:59:11');
INSERT INTO `product` VALUES (132, '4飞利浦电动剃须刀S5080充电式全身水洗多功能三刀头S5000系列', 7, 'xiaojiadian01.jpg', 500, 50, 699.00, 599.00, '<div style=\"text-align:center;\">\r\n<img src=\"./img/xiaojiadian0101.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0102.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0103.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 13:56:17', '2016-07-06 13:56:20');
INSERT INTO `product` VALUES (133, '4格力加湿器 家用静音 卧室迷你小型 办公室空气净化大雾量增湿器', 7, 'xiaojiadian02.jpg', 500, 50, 799.00, 599.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/xiaojiadian0201.jpg\" alt=\"\" />\r\n<img src=\"/img/xiaojiadian0202.jpg\" alt=\"\" />\r\n<img src=\"/img/xiaojiadian0203.jpg\" alt=\"\" />\r\n</div>', NULL, '2016-07-06 13:59:09', '2016-07-06 13:59:11');
INSERT INTO `product` VALUES (141, 'O2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (142, 'O2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (143, 'O2小米Max', 1, 'xiaomi.jpg', 1000, 0, 1699.00, 1699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/mi-1.jpg\" alt=\"\" />\r\n<img src=\"/img/mi-2.jpg\" alt=\"\" />\r\n<img src=\"/img/mi-3.jpg\" alt=\"\" />\r\n<img src=\"/img/mi-4.jpg\" alt=\"\" />\r\n<img src=\"/img/mi-5.jpg\" alt=\"\" />\r\n<img src=\"/img/mi-6.jpg\" alt=\"\" /> \r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	4G手机 双卡双待 金色 全网通(3G RAM+32G ROM)标配\r\n</h1>', '2016-06-03 09:50:25', '2016-06-10 09:00:00');
INSERT INTO `product` VALUES (144, 'O2华为 P40 全网通 3GB+32GB版 流光金 移动联通电信4G手机 双卡双待', 1, 'huawei.jpg', 2000, 0, 3188.00, 3188.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/hw-1.jpg\" alt=\"\" /> \r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 3GB+32GB版 流光金 移动联通电信4G手机 双卡双待\r\n</h1>', '2016-06-03 09:54:00', '2016-06-10 09:50:00');
INSERT INTO `product` VALUES (146, 'O2乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (147, 'P2Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (148, 'P2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (149, 'P2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (150, 'P2小米Max', 1, 'xiaomi.jpg', 1000, 0, 1699.00, 1699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/mi-1.jpg\" alt=\"\" />\r\n<img src=\"/img/mi-2.jpg\" alt=\"\" />\r\n<img src=\"/img/mi-3.jpg\" alt=\"\" />\r\n<img src=\"/img/mi-4.jpg\" alt=\"\" />\r\n<img src=\"/img/mi-5.jpg\" alt=\"\" />\r\n<img src=\"/img/mi-6.jpg\" alt=\"\" /> \r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	4G手机 双卡双待 金色 全网通(3G RAM+32G ROM)标配\r\n</h1>', '2016-06-03 09:50:25', '2016-06-10 09:00:00');
INSERT INTO `product` VALUES (151, 'P2华为 P9 全网通 3GB+32GB版 流光金 移动联通电信4G手机 双卡双待', 1, 'huawei.jpg', 2000, 0, 3188.00, 3188.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/hw-1.jpg\" alt=\"\" /> \r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 3GB+32GB版 流光金 移动联通电信4G手机 双卡双待\r\n</h1>', '2016-06-03 09:54:00', '2016-06-10 09:50:00');
INSERT INTO `product` VALUES (153, 'P2乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (154, 'Q2Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (155, 'Q2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (156, 'Q2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (160, 'Q2乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (161, 'R2Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (162, 'R2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (163, 'R2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (167, 'R2乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (168, 'S2Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (169, 'S2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (170, 'S2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (174, 'S2乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (175, 'T2Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (176, 'T2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (177, 'T2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (181, 'T2乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (182, 'U2Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (183, 'U2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (184, 'U2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (188, 'U2乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (189, 'V2Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (190, 'V2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (191, 'V2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (195, 'V2乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (196, 'W2Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (197, 'W2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (198, 'W2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (202, 'W2乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (203, 'X2Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (204, 'X2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (205, 'X2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (209, 'X2乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (210, 'Y2Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (211, 'Y2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (212, 'Y2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (216, 'Y2乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (217, 'Z2Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (218, 'Z2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (219, 'Z2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (223, 'Z2乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', 1, 'letv.jpg', 666, 0, 999.00, 999.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/letv-1.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-2.jpg\" alt=\"\" />\r\n<img src=\"/img/letv-3.jpg\" alt=\"\" />\r\n</div>', '<span style=\"color:#E3393C;font-family:arial, \'microsoft yahei\';font-size:14px;line-height:20px;background-color:#FFFFFF;\">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', '2016-06-03 11:04:39', '2016-06-03 11:03:00');
INSERT INTO `product` VALUES (224, '2Nokia 经典通话机（第七代）', 1, 'nokia.jpg', 200, 0, 280.00, 120.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/n1.jpg\" alt=\"\" />\r\n<img src=\"/img/n2.jpg\" alt=\"\" /> \r\n<img src=\"/img/n3.jpg\" alt=\"\" /> \r\n<img src=\"/img/n4.jpg\" alt=\"\" /> \r\n</div>', '手机中的战斗机。待机时间15天。', '2016-06-01 17:37:59', '2016-06-03 18:50:00');
INSERT INTO `product` VALUES (225, '2iphone 6s plus (64G)', 1, 'iphone6s.jpg', 123, 0, 5288.00, 4880.00, '<div style=\"text-align:center;\">\r\n<img src=\"/img/detail-1.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-2.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-3.jpg\" alt=\"\" />\r\n<img src=\"/img/detail-4.jpg\" alt=\"\" />\r\n</div>', '', '2016-06-01 22:38:11', '2016-06-02 18:28:00');
INSERT INTO `product` VALUES (226, '2魅蓝3 礼盒版', 1, 'meinote3.jpg', 100, 0, 799.00, 699.00, '<div style=\"text-align:center;\">\r\n	<img src=\"/img/me1.jpg\" alt=\"\" />\r\n<img src=\"/img/me2.jpg\" alt=\"\" />\r\n<img src=\"/img/me3.jpg\" alt=\"\" />\r\n<img src=\"/img/me4.jpg\" alt=\"\" />\r\n</div>\r\n', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>', '2016-06-03 09:44:28', '2016-06-05 09:40:00');
INSERT INTO `product` VALUES (227, '家电冰箱', 7, 'bingxiang0101.png', 500, 50, 699.00, 599.00, '<div style=\"text-align:center;\">\r\n<img src=\"./img/xiaojiadian0101.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0102.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0103.jpg\" alt=\"\" />\r\n</div>', '<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>	2016-06-03 09:44:28	2016-06-05 09:40:00', '2016-07-06 13:56:17', '2016-07-06 13:56:20');
INSERT INTO `product` VALUES (228, '家电冰箱2', 7, 'bingxiang0102.png', 500, 50, 799.00, 1000.00, '<div style=\"text-align:center;\">\r\n<img src=\"./img/xiaojiadian0101.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0102.jpg\" alt=\"\" />\r\n<img src=\"./img/xiaojiadian0103.jpg\" alt=\"\" />\r\n</div>	<h1 style=\"font-size:16px;font-family:arial, \'microsoft yahei\';color:#666666;background-color:#FFFFFF;\">\r\n	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配\r\n</h1>	2016-06-03 09:44:28	2016-06-05 09:40:00	2016-07-06 13:56:17	2016-07-06 13:56:20', NULL, '2021-01-06 20:01:12', '2021-01-24 16:43:24');
INSERT INTO `product` VALUES (229, '高等数学1', 3, 'shuxue01.png', 1000, 500, 10.00, 19.90, NULL, '大学必修1', '2021-01-27 20:01:15', '2021-01-14 20:01:08');
INSERT INTO `product` VALUES (230, '高等数学2', 3, 'shuxue02.png', 500, 100, 10.00, 19.90, NULL, '大学必修2', '2021-01-07 20:01:21', '2021-01-13 20:01:28');
INSERT INTO `product` VALUES (231, '英语六级', 3, 'yingyu01.png', 100, 50, 20.00, 19.90, NULL, '英语六级', '2020-12-29 20:01:46', '2021-01-20 20:02:20');
INSERT INTO `product` VALUES (234, 'Apple 苹果 iPhone 12 5G手机 黑色 全网通 128GB', 1, 'shouji01.png', 100, 50, 5500.00, 5500.00, NULL, 'Apple 苹果 iPhone 12 5G手机 黑色 全网通 128GB', '2021-03-04 18:24:04', '2021-03-25 18:24:09');
INSERT INTO `product` VALUES (235, 'Apple MacBook Air新款八核M1芯片 8G 256G深空灰 笔记本电脑', 2, 'diannao01.png', 100, 50, 6500.00, 6500.00, NULL, 'Apple MacBook Air新款八核M1芯片 8G 256G深空灰 笔记本电脑', '2021-04-01 18:24:11', '2021-03-02 18:24:19');
INSERT INTO `product` VALUES (236, '电火锅家用多功能电热锅', 7, 'jiadian01.png', 100, 50, 10.00, 10.00, NULL, '电火锅家用多功能电热锅', '2021-03-02 18:24:23', '2021-03-02 18:24:26');
INSERT INTO `product` VALUES (237, 'Apple iPhone 12 (A2404) 128GB 黑色', 1, 'shouji02.png', 100, 50, 6399.00, 6399.00, NULL, 'Apple iPhone 12 (A2404) 128GB 黑色', '2021-03-02 18:24:29', '2021-03-02 18:24:33');
INSERT INTO `product` VALUES (238, '小米11 5G 骁龙888 2K AMOLED四曲面柔性屏', 1, 'shouji03.png', 100, 100, 4299.00, 4299.00, NULL, '小米11 5G 骁龙888 2K AMOLED四曲面柔性屏', '2021-03-02 18:24:36', '2021-03-02 18:24:40');
INSERT INTO `product` VALUES (239, '橙哥（chenggee）鞋子男春季跑步鞋男鞋新款老爹鞋男运动鞋时尚休闲鞋男韩版增高板鞋男 @JF-N589白黑 42', 5, 'xiezi02.png', 100, 100, 100.00, 59.00, NULL, '橙哥（chenggee）鞋子男春季跑步鞋男鞋新款老爹鞋男运动鞋时尚休闲鞋男韩版增高板鞋男 @JF-N589白黑 42', '2021-03-02 18:24:43', '2021-03-02 18:24:45');
INSERT INTO `product` VALUES (240, '安踏男鞋休闲运动鞋男士2021春季网面透气轻便板鞋慢跑步鞋子户外训练旅游 -18黑【皮面】 43', 5, 'xiezi03.png', 100, 100, 200.00, 159.00, NULL, '安踏男鞋休闲运动鞋男士2021春季网面透气轻便板鞋慢跑步鞋子户外训练旅游 -18黑【皮面】 43', '2021-03-02 18:24:49', '2021-03-02 18:26:11');
INSERT INTO `product` VALUES (241, '吉布狗鞋子春季休闲运动鞋男韩版潮流学生板鞋男鞋小白鞋男透气百搭男户外跑步鞋青少年老爹鞋男 @YD-G63白黑色 41码', 5, 'xiezi04.png', 100, 100, 100.00, 69.00, NULL, '吉布狗鞋子春季休闲运动鞋男韩版潮流学生板鞋男鞋小白鞋男透气百搭男户外跑步鞋青少年老爹鞋男 @YD-G63白黑色 41码', '2021-03-02 18:24:54', '2021-03-02 18:26:15');
INSERT INTO `product` VALUES (242, '南极人（Nanjiren）男鞋 户外登山休闲鞋男时尚韩版老爹鞋透气男子百搭运动鞋子男 2X30190101 黑色 42码', 5, 'xiezi05.png', 100, 100, 200.00, 158.00, NULL, '南极人（Nanjiren）男鞋 户外登山休闲鞋男时尚韩版老爹鞋透气男子百搭运动鞋子男 2X30190101 黑色 42码', '2021-03-02 18:25:00', '2021-03-02 18:26:18');
INSERT INTO `product` VALUES (243, '安踏男鞋跑步鞋2021年春季网面缓震耐磨时尚休闲运动鞋子轻便板鞋户外篮球旅游 -3深灰/雾灰/黑【推荐】 42', 5, 'xiezi06.png', 100, 100, 500.00, 209.00, NULL, '安踏男鞋跑步鞋2021年春季网面缓震耐磨时尚休闲运动鞋子轻便板鞋户外篮球旅游 -3深灰/雾灰/黑【推荐】 42', '2021-03-02 18:25:04', '2021-03-02 18:26:22');
INSERT INTO `product` VALUES (244, '【正常发货】春秋季2021新款高帮男鞋韩版潮流鞋子男百搭青少年运动休闲增高涂鸦老爹潮鞋学生时尚板鞋 白黑 41', 5, 'xiezi07.png', 100, 100, 200.00, 128.00, NULL, '【正常发货】春秋季2021新款高帮男鞋韩版潮流鞋子男百搭青少年运动休闲增高涂鸦老爹潮鞋学生时尚板鞋 白黑 41', '2021-03-02 18:25:07', '2021-03-02 18:26:25');
INSERT INTO `product` VALUES (245, '特步男鞋板鞋时尚小白鞋ins潮流滑板鞋男休闲鞋经典绿尾运动鞋983219319266 白绿42码', 5, 'xiezi08.png', 100, 100, 200.00, 129.00, NULL, '特步男鞋板鞋时尚小白鞋ins潮流滑板鞋男休闲鞋经典绿尾运动鞋983219319266 白绿42码', '2021-03-02 18:25:12', '2021-03-02 18:26:28');
INSERT INTO `product` VALUES (246, '小牛犊春季潮鞋子百搭时尚青年老爹鞋男鞋韩版网红街拍潮流板鞋男学生社会小伙休闲鞋男潮户外运动小白鞋 MK-318黑白 42', 5, 'xiezi09.png', 100, 100, 100.00, 55.00, NULL, '小牛犊春季潮鞋子百搭时尚青年老爹鞋男鞋韩版网红街拍潮流板鞋男学生社会小伙休闲鞋男潮户外运动小白鞋 MK-318黑白 42', '2021-03-02 18:25:15', '2021-03-02 18:26:30');
INSERT INTO `product` VALUES (247, '361度男鞋跑步鞋轻便减震透气休闲运动鞋671832270-3曜石黑/361度白 42', 5, 'xiezi10.png', 100, 100, 150.00, 129.00, NULL, '361度男鞋跑步鞋轻便减震透气休闲运动鞋671832270-3曜石黑/361度白 42', '2021-03-02 18:25:19', '2021-03-02 18:26:33');
INSERT INTO `product` VALUES (248, '环球先生男鞋秋冬季休闲男士皮鞋男时尚雪地鞋板鞋短靴运动鞋跑步鞋学生百搭商务小白鞋子男 黑色 41', 5, 'xiezi11.png', 100, 100, 500.00, 299.00, NULL, '环球先生男鞋秋冬季休闲男士皮鞋男时尚雪地鞋板鞋短靴运动鞋跑步鞋学生百搭商务小白鞋子男 黑色 41', '2021-03-02 18:25:22', '2021-03-02 18:26:36');
INSERT INTO `product` VALUES (249, 'ALEXANDER MCQUEEN 麦昆小白鞋 2020年新款男鞋牛皮撞色系带平底休闲运动鞋 9061 白色黑尾 41', 5, 'xiezi12.png', 100, 100, 5000.00, 3980.00, NULL, 'ALEXANDER MCQUEEN 麦昆小白鞋 2020年新款男鞋牛皮撞色系带平底休闲运动鞋 9061 白色黑尾 41', '2021-03-02 18:25:26', '2021-03-02 18:26:40');
INSERT INTO `product` VALUES (250, 'Dr.Martens马汀博士2976系列 POLISHED SMOOTH经典切尔西靴 男女同款 22227001 黑色 38', 5, 'xiezi13.png', 100, 100, 1000.00, 659.00, NULL, 'Dr.Martens马汀博士2976系列 POLISHED SMOOTH经典切尔西靴 男女同款 22227001 黑色 38', '2021-03-02 18:25:30', '2021-03-02 18:26:44');
INSERT INTO `product` VALUES (251, 'aj男鞋秋季2020新款韩版潮流百搭高帮男士运动休闲鞋男潮鞋板鞋中帮 白灰 42', 5, 'xiezi14.png', 100, 100, 500.00, 480.00, NULL, 'aj男鞋秋季2020新款韩版潮流百搭高帮男士运动休闲鞋男潮鞋板鞋中帮 白灰 42', '2021-03-02 18:25:34', '2021-03-02 18:26:51');
INSERT INTO `product` VALUES (253, 'Giuseppe Zanotti GZ 男士黑色绒面革刺绣乐福鞋 002黑色 41', 5, 'xiezi16.png', 100, 100, 15000.00, 13500.00, NULL, 'Giuseppe Zanotti GZ 男士黑色绒面革刺绣乐福鞋 002黑色 41', '2021-03-02 18:25:42', '2021-03-02 18:26:54');
INSERT INTO `product` VALUES (254, '菲拉格慕(Salvatore Ferragamo) 女士VARA芭蕾平底鞋 0676235_1D _ 55', 5, 'xiezi17.png', 100, 100, 5000.00, 4439.00, NULL, '菲拉格慕(Salvatore Ferragamo) 女士VARA芭蕾平底鞋 0676235_1D _ 55', '2021-03-02 18:25:46', '2021-03-02 18:26:58');
INSERT INTO `product` VALUES (255, '古驰GUCCI 女鞋 Rhyton系列女士Mystic Cat印花运动鞋老爹鞋 字母款【预订】 35', 5, 'xiezi18.png', 100, 100, 10000.00, 9520.00, NULL, '古驰GUCCI 女鞋 Rhyton系列女士Mystic Cat印花运动鞋老爹鞋 字母款【预订】 35', '2021-03-02 18:25:52', '2021-03-02 18:27:02');
INSERT INTO `product` VALUES (256, '【赵露思同款】HOGAN女鞋2021春夏新品Hyperactive 系列猫爪鞋 白色 36', 5, 'xiezi19.png', 100, 100, 7000.00, 5100.00, NULL, '【赵露思同款】HOGAN女鞋2021春夏新品Hyperactive 系列猫爪鞋 白色 36', '2021-03-02 18:25:55', '2021-03-02 18:27:05');
INSERT INTO `product` VALUES (257, '路易威登LV女鞋高跟鞋山羊羔皮制成麂皮水晶镶嵌LV Circle 标识时尚优雅1A853I 礼物 35', 5, 'xiezi20.png', 100, 100, 15000.00, 10659.00, NULL, '路易威登LV女鞋高跟鞋山羊羔皮制成麂皮水晶镶嵌LV Circle 标识时尚优雅1A853I 礼物 35', '2021-03-02 18:25:59', '2021-03-03 18:27:12');
INSERT INTO `product` VALUES (258, '塞乔罗西 SERGIO ROSSI 女士高跟鞋A81783-MFI154 6828 35', 5, 'xiezi21.png', 100, 100, 10000.00, 8300.00, NULL, '塞乔罗西 SERGIO ROSSI 女士高跟鞋A81783-MFI154 6828 35', '2021-03-02 18:26:02', '2021-02-02 18:27:08');
INSERT INTO `product` VALUES (259, '巴黎世家 BALENCIAGA 男女同款Triple S系列白紫灰水洗做旧款复古休闲老爹鞋 541641 W09OF 9095 36', 5, 'xiezi22.png', 100, 100, 10000.00, 7800.00, NULL, '巴黎世家 BALENCIAGA 男女同款Triple S系列白紫灰水洗做旧款复古休闲老爹鞋 541641 W09OF 9095 36', '2021-03-02 18:26:05', '2021-03-02 18:27:17');
INSERT INTO `product` VALUES (260, '【特价】STUART WEITZMAN 女鞋奢侈品女士SW靴子过膝长靴 Keelan 黑色 38.5码', 5, 'xiezi23.png', 100, 100, 5000.00, 3630.00, NULL, '【特价】STUART WEITZMAN 女鞋奢侈品女士SW靴子过膝长靴 Keelan 黑色 38.5码', '2021-03-02 18:26:07', '2021-03-02 18:27:22');
INSERT INTO `product` VALUES (261, '水星家纺春秋抗菌被芯 单人双人加大被子被褥子四季通用太空被空调被春秋被 200*230cm粉色', 6, 'beizi02.png', 100, 100, 200.00, 169.00, NULL, '水星家纺春秋抗菌被芯 单人双人加大被子被褥子四季通用太空被空调被春秋被 200*230cm粉色', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (262, ' 南极人NanJiren 被子 春秋冬单人加厚被芯150*200cm 5斤学生空调盖被褥四季被子', 6, 'beizi03.png', 100, 100, 100.00, 75.00, NULL, ' 南极人NanJiren 被子 春秋冬单人加厚被芯150*200cm 5斤学生空调盖被褥四季被子', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (263, '南极人NanJiren 保暖被子秋冬被芯 米黄 150*200cm 4斤 被褥家纺棉被单人学生被芯春秋盖被', 6, 'beizi04.png', 100, 100, 100.00, 80.00, NULL, '南极人NanJiren 保暖被子秋冬被芯 米黄 150*200cm 4斤 被褥家纺棉被单人学生被芯春秋盖被', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (264, '水星家纺羊毛被 澳洲羊毛抗菌冬被 加厚羊毛冬被芯 双人加大被子被芯200*230cm', 6, 'beizi05.png', 100, 100, 500.00, 459.00, NULL, '水星家纺羊毛被 澳洲羊毛抗菌冬被 加厚羊毛冬被芯 双人加大被子被芯200*230cm', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (265, '南极人 被芯家纺 加厚保暖秋冬被子 春秋纤维空调暖气被褥 学生棉被单人盖被 米黄 150*200cm 4斤', 6, 'beizi06.png', 100, 100, 100.00, 70.00, NULL, '南极人 被芯家纺 加厚保暖秋冬被子 春秋纤维空调暖气被褥 学生棉被单人盖被 米黄 150*200cm 4斤', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (266, '南极人NanJiren 100%新疆长绒棉花被6斤200*230cm 100%全棉面料被子双人加厚棉被春秋被芯冬季被褥棉花胎棉絮', 6, 'beizi07.png', 100, 100, 200.00, 194.00, NULL, '南极人NanJiren 100%新疆长绒棉花被6斤200*230cm 100%全棉面料被子双人加厚棉被春秋被芯冬季被褥棉花胎棉絮', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (267, '百富帝（byford）被子被芯冬天加厚双人纤维被保暖棉被冬被 灰白格 200*230cm', 6, 'beizi09.png', 100, 100, 100.00, 79.00, NULL, '百富帝（byford）被子被芯冬天加厚双人纤维被保暖棉被冬被 灰白格 200*230cm', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (268, '南极人（Nanjiren）被子家纺 秋冬被褥加厚被芯 单人学生空调被春秋盖被棉被 绯红秋 150*200cm 4斤', 6, 'beizi08.png', 100, 100, 100.00, 79.00, NULL, '南极人（Nanjiren）被子家纺 秋冬被褥加厚被芯 单人学生空调被春秋盖被棉被 绯红秋 150*200cm 4斤', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (269, '恒源祥家纺被子 保暖双人秋冬被芯200*230cm 5斤 空调被四季被被', 6, 'beizi10.png', 100, 100, 150.00, 146.00, NULL, '恒源祥家纺被子 保暖双人秋冬被芯200*230cm 5斤 空调被四季被被', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (270, '皮尔卡丹 全棉被子被芯春秋四季被 羽绒羽毛被白鹅毛被防钻绒冬被 冬天双人被褥 珍珠白 200*230cm', 6, 'beizi11.png', 100, 100, 500.00, 269.00, NULL, '皮尔卡丹 全棉被子被芯春秋四季被 羽绒羽毛被白鹅毛被防钻绒冬被 冬天双人被褥 珍珠白 200*230cm', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (271, '南极人NanJiren 被子 100%羽毛被 全棉羽绒毛被 双人加厚春秋被褥被芯 约6斤 200*230cm', 6, 'beizi12.png', 100, 100, 350.00, 299.00, NULL, '南极人NanJiren 被子 100%羽毛被 全棉羽绒毛被 双人加厚春秋被褥被芯 约6斤 200*230cm', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (272, '水星家纺 95%白鹅绒羽绒被 抗菌保暖冬被芯 暖寐鹅绒冬被 防羽面料加大双人被子220*240cm', 6, 'beizi13.png', 100, 100, 2000.00, 1799.00, NULL, '水星家纺 95%白鹅绒羽绒被 抗菌保暖冬被芯 暖寐鹅绒冬被 防羽面料加大双人被子220*240cm', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (273, 'LF拉芙菲尔 五星级酒店羽绒被白鸭绒被芯冬被加厚单双人暖气被', 6, 'beizi14.png', 100, 100, 700.00, 599.00, NULL, 'LF拉芙菲尔 五星级酒店羽绒被白鸭绒被芯冬被加厚单双人暖气被', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (274, '南极人NanJiren 羽绒被 90%白鸭绒被子 保暖双人加厚秋冬被子被芯被褥 200*230cm', 6, 'beizi15.png', 100, 100, 1000.00, 799.00, NULL, '南极人NanJiren 羽绒被 90%白鸭绒被子 保暖双人加厚秋冬被子被芯被褥 200*230cm', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (279, '清风（APP）卷纸 原木纯品 3层270段卫生纸*10卷', 8, 'shenghuoyongpin02.png', 100, 100, 20.00, 19.80, NULL, '清风（APP）卷纸 原木纯品 3层270段卫生纸*10卷', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (280, '山山 除螨包天然祛螨虫包杀去螨虫植物除螨喷剂除螨喷雾床上家用除螨贴螨立净', 8, 'shenghuoyongpin03.png', 100, 100, 50.00, 9.90, NULL, '山山 除螨包天然祛螨虫包杀去螨虫植物除螨喷剂除螨喷雾床上家用除螨贴螨立净', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (281, '乐荔 搓澡巾拉背条 洗澡巾搓背加厚去角质搓澡神器', 8, 'shenghuoyongpin04.png', 100, 100, 50.00, 18.90, NULL, '乐荔 搓澡巾拉背条 洗澡巾搓背加厚去角质搓澡神器', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (282, 'JAJALIN 可拆成2个漱口杯洗漱杯简约家用刷牙杯创意可爱便携牙缸牙桶套装情侣牙刷杯子旅行套装 深蓝色', 8, 'shenghuoyongpin05.png', 100, 100, 50.00, 10.80, NULL, 'JAJALIN 可拆成2个漱口杯洗漱杯简约家用刷牙杯创意可爱便携牙缸牙桶套装情侣牙刷杯子旅行套装 深蓝色', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (283, '得力(deli)170mm办公家用生活剪刀 1把 办公用品 黑色0603', 8, 'shenghuoyongpin06.png', 100, 100, 10.00, 3.90, NULL, '得力(deli)170mm办公家用生活剪刀 1把 办公用品 黑色0603', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (284, '维达（Vinda）超韧无芯卷纸4层140g两提24卷单提12卷 家用手纸厕纸卫生纸整箱实惠装纸巾 单提12卷', 8, 'shenghuoyongpin07.png', 100, 100, 30.00, 22.90, NULL, '维达（Vinda）超韧无芯卷纸4层140g两提24卷单提12卷 家用手纸厕纸卫生纸整箱实惠装纸巾 单提12卷', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (285, ' 侑家良品 日式洗澡刷浴刷长柄软毛搓澡刷搓背巾洗澡神器沐浴刷搓泥刷子', 8, 'shenghuoyongpin08.png', 100, 100, 30.00, 21.90, NULL, ' 侑家良品 日式洗澡刷浴刷长柄软毛搓澡刷搓背巾洗澡神器沐浴刷搓泥刷子', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (286, '克来比 加厚隔热烘焙烧烤专用手套厨房烤箱微波炉防烫耐高温防热家用手套 KLB1127 单只装', 8, 'shenghuoyongpin09.png', 100, 100, 20.00, 9.90, NULL, '克来比 加厚隔热烘焙烧烤专用手套厨房烤箱微波炉防烫耐高温防热家用手套 KLB1127 单只装', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (287, '尚美德 卫生间置物架 免打孔洗漱台毛巾架挂件厕所洗手间收纳架用品美式 浴室置物架 三层转角置物架', 8, 'shenghuoyongpin10.png', 100, 100, 100.00, 39.00, NULL, '尚美德 卫生间置物架 免打孔洗漱台毛巾架挂件厕所洗手间收纳架用品美式 浴室置物架 三层转角置物架', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (288, ' 富居(FOOJO)挂钩 无痕透明粘钩 浴室挂钩贴 免钉承重厨房强力粘钩 无痕钉墙面衣柜门后挂衣钩 10片套装', 8, 'shenghuoyongpin11.png', 100, 100, 50.00, 6.90, NULL, ' 富居(FOOJO)挂钩 无痕透明粘钩 浴室挂钩贴 免钉承重厨房强力粘钩 无痕钉墙面衣柜门后挂衣钩 10片套装', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (289, '贝瑟斯 浴室用品浴花加大沐浴球洗澡球 2个装 洗澡沐浴球搓澡搓背起泡洗浴用品沐浴花泡澡球洗澡用具', 8, 'shenghuoyongpin12.png', 100, 100, 50.00, 9.90, NULL, '贝瑟斯 浴室用品浴花加大沐浴球洗澡球 2个装 洗澡沐浴球搓澡搓背起泡洗浴用品沐浴花泡澡球洗澡用具', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (290, '梦庭 浴帽女男洗澡防水厨房防油烟 花样年华系列 1979', 8, 'shenghuoyongpin13.png', 100, 100, 50.00, 9.90, NULL, '梦庭 浴帽女男洗澡防水厨房防油烟 花样年华系列 1979', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (291, '维达(Vinda) 卷纸 立体美棉韧4层125g卫生纸*24卷(整箱销售） 母婴可用 亲肤无刺激呵护肌肤', 8, 'shenghuoyongpin14.png', 100, 100, 100.00, 57.00, NULL, '维达(Vinda) 卷纸 立体美棉韧4层125g卫生纸*24卷(整箱销售） 母婴可用 亲肤无刺激呵护肌肤', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (292, '晟旎尚品 卡通挂钩贴10只装 创意免打孔强力无痕粘钩 厨房卫生间置物架浴室挂毛巾架门后衣柜挂衣钩', 8, 'shenghuoyongpin15.png', 100, 100, 25.00, 12.50, NULL, '晟旎尚品 卡通挂钩贴10只装 创意免打孔强力无痕粘钩 厨房卫生间置物架浴室挂毛巾架门后衣柜挂衣钩', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (293, '青苇 自由拼接浴室防滑垫脚垫地垫 灰白6片装 门垫隔水疏水卫生间淋浴房浴缸酒店家居日用 可剪裁', 8, 'shenghuoyongpin16.png', 100, 100, 50.00, 29.90, NULL, '青苇 自由拼接浴室防滑垫脚垫地垫 灰白6片装 门垫隔水疏水卫生间淋浴房浴缸酒店家居日用 可剪裁', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT INTO `product` VALUES (294, '家杰优品 鞋刷洗衣刷 浴室地板刷 多功能清洁塑料小刷子 通用洗鞋刷（1只装）', 8, 'shenghuoyongpin17.png', 100, 100, 20.00, 6.90, NULL, '家杰优品 鞋刷洗衣刷 浴室地板刷 多功能清洁塑料小刷子 通用洗鞋刷（1只装）', '2021-03-02 18:25:55', '2021-03-02 18:25:55');
INSERT IN