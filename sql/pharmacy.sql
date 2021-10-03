/*
Navicat MySQL Data Transfer

Source Server         : mine
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : pharmacy

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2021-10-02 15:33:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `gen_table`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO gen_table VALUES ('4', 'news', '消息表', null, null, 'News', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'news', '消息', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:09:31', null);
INSERT INTO gen_table VALUES ('5', 'news_record', '消息记录表', null, null, 'NewsRecord', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'newsRecord', '消息记录', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:43:22', null);
INSERT INTO gen_table VALUES ('6', 'notice', '公告表', null, null, 'Notice', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'notice', '公告', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:11:00', null);
INSERT INTO gen_table VALUES ('7', 'notice_record', '公告记录表', null, null, 'NoticeRecord', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'noticeRecord', '公告记录', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:43:51', null);
INSERT INTO gen_table VALUES ('8', 'order', '订单表', null, null, 'Order', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'order', '订单', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:11:20', null);
INSERT INTO gen_table VALUES ('9', 'prescription', '处方表', null, null, 'Prescription', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'prescription', '处方', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30', null);
INSERT INTO gen_table VALUES ('10', 'prescription_drugs', '处方药品表', null, null, 'PrescriptionDrugs', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'drugs', '处方药品', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:41', null);
INSERT INTO gen_table VALUES ('11', 'sales_promotion', '促销方案表', null, null, 'SalesPromotion', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'promotion', '促销方案', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:53', null);
INSERT INTO gen_table VALUES ('12', 'user', '用户表', null, null, 'User', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'user', '用户', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-29 10:34:07', '', '2021-09-29 10:34:28', null);
INSERT INTO gen_table VALUES ('13', 'user_info', '用户信息表', null, null, 'UserInfo', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'userinfo', '用户信息', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:35:29', null);
INSERT INTO gen_table VALUES ('14', 'goods_type', '商品类别表', null, null, 'GoodsType', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'goodsType', '商品类别', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-29 11:47:36', '', '2021-10-02 14:45:20', null);
INSERT INTO gen_table VALUES ('15', 'sales_promotion_goods', '促销商品表', null, null, 'SalesPromotionGoods', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'goods', '促销商品', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-30 10:07:50', '', '2021-09-30 15:35:36', null);
INSERT INTO gen_table VALUES ('16', 'goods', '商品表', null, null, 'Goods', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'goods', '商品', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36', null);
INSERT INTO gen_table VALUES ('17', 'sales_promotion_record', '促销方案修改记录表', null, null, 'SalesPromotionRecord', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'promotionRecord', '促销方案修改记录', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:24:03', null);
INSERT INTO gen_table VALUES ('18', 'sales_record', '销售记录表', null, null, 'SalesRecord', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'salesRecord', '销售记录', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:42', null);
INSERT INTO gen_table VALUES ('19', 'shopping_cart', '购物车表', null, null, 'ShoppingCart', 'crud', 'com.ruoyi.pharmacy', 'pharmacy', 'cart', '购物车', 'ruoyi', '0', '/', '{}', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:15', null);

-- ----------------------------
-- Table structure for `gen_table_column`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO gen_table_column VALUES ('23', '4', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:09:31');
INSERT INTO gen_table_column VALUES ('24', '4', 'content', '消息内容', 'varchar(1000)', 'String', 'content', '0', '0', null, '1', '1', '1', '1', 'EQ', 'editor', '', '2', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:09:31');
INSERT INTO gen_table_column VALUES ('25', '4', 'source', '消息来源', 'varchar(100)', 'String', 'source', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:09:31');
INSERT INTO gen_table_column VALUES ('26', '5', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:43:22');
INSERT INTO gen_table_column VALUES ('27', '5', 'news_id', '消息ID', 'int(11)', 'Long', 'newsId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:43:22');
INSERT INTO gen_table_column VALUES ('28', '5', 'push_id', '推送者ID', 'varchar(11)', 'String', 'pushId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:43:22');
INSERT INTO gen_table_column VALUES ('29', '5', 'push_time', '推送时间', 'datetime', 'Date', 'pushTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '4', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:43:22');
INSERT INTO gen_table_column VALUES ('30', '6', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:11:00');
INSERT INTO gen_table_column VALUES ('31', '6', 'title', '公告标题', 'varchar(50)', 'String', 'title', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:11:00');
INSERT INTO gen_table_column VALUES ('32', '6', 'content', '公告内容', 'varchar(1000)', 'String', 'content', '0', '0', null, '1', '1', '1', '1', 'EQ', 'editor', '', '3', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:11:00');
INSERT INTO gen_table_column VALUES ('33', '7', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:43:51');
INSERT INTO gen_table_column VALUES ('34', '7', 'notice_id', '公告ID', 'int(11)', 'Long', 'noticeId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:43:51');
INSERT INTO gen_table_column VALUES ('35', '7', 'publish_id', '发布者ID', 'varchar(11)', 'String', 'publishId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:43:51');
INSERT INTO gen_table_column VALUES ('36', '7', 'publish_time', '发布时间', 'datetime', 'Date', 'publishTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '4', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:43:51');
INSERT INTO gen_table_column VALUES ('37', '8', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:11:20');
INSERT INTO gen_table_column VALUES ('38', '8', 'user_id', '用户账号', 'varchar(11)', 'String', 'userId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:11:20');
INSERT INTO gen_table_column VALUES ('39', '8', 'payment_account', '付款账号', 'varchar(20)', 'String', 'paymentAccount', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:11:20');
INSERT INTO gen_table_column VALUES ('40', '8', 'payment_time', '付款时间', 'datetime', 'Date', 'paymentTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '4', 'admin', '2021-09-29 10:08:23', '', '2021-09-29 10:11:20');
INSERT INTO gen_table_column VALUES ('41', '8', 'payable', '应付金额', 'decimal(10,0)', 'Long', 'payable', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:20');
INSERT INTO gen_table_column VALUES ('42', '8', 'amount', '实付金额', 'decimal(10,0)', 'Long', 'amount', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:20');
INSERT INTO gen_table_column VALUES ('43', '8', 'receiving_method', '收货方式', 'varchar(4)', 'String', 'receivingMethod', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:20');
INSERT INTO gen_table_column VALUES ('44', '8', 'receiving_address', '收货地址', 'varchar(100)', 'String', 'receivingAddress', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:20');
INSERT INTO gen_table_column VALUES ('45', '8', 'tel', '联系电话', 'varchar(11)', 'String', 'tel', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:20');
INSERT INTO gen_table_column VALUES ('46', '8', 'code', '自提码', 'varchar(6)', 'String', 'code', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:20');
INSERT INTO gen_table_column VALUES ('47', '8', 'state', '状态', 'varchar(10)', 'String', 'state', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:20');
INSERT INTO gen_table_column VALUES ('48', '9', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('49', '9', 'hospital_name', '医疗机构名称', 'varchar(100)', 'String', 'hospitalName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('50', '9', 'prescription_date', '处方开具日期', 'date', 'Date', 'prescriptionDate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '3', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('51', '9', 'prescription_outdate', '处方有效期限', 'date', 'Date', 'prescriptionOutdate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '4', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('52', '9', 'dr_name', '开处方医生姓名', 'varchar(100)', 'String', 'drName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('53', '9', 'dr_dept', '就诊科室', 'varchar(100)', 'String', 'drDept', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('54', '9', 'dr_sign', '医生签名', 'varchar(100)', 'String', 'drSign', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('55', '9', 'patient_name', '患者姓名', 'varchar(100)', 'String', 'patientName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '8', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('56', '9', 'patient_age', '患者年龄', 'int(11)', 'Long', 'patientAge', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('57', '9', 'patient_sex', '患者性别', 'varchar(2)', 'String', 'patientSex', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '10', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('58', '9', 'patient_weight', '患者体重', 'decimal(10,0)', 'Long', 'patientWeight', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('59', '9', 'patient_allergy', '患者过敏情况', 'varchar(100)', 'String', 'patientAllergy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('60', '9', 'clinical_diag', '临床诊断', 'varchar(100)', 'String', 'clinicalDiag', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '13', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('61', '9', 'prescription_review', '处方审核医生', 'varchar(40)', 'String', 'prescriptionReview', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '14', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:30');
INSERT INTO gen_table_column VALUES ('62', '10', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:41');
INSERT INTO gen_table_column VALUES ('63', '10', 'prescription_id', '处方ID', 'int(11)', 'Long', 'prescriptionId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:41');
INSERT INTO gen_table_column VALUES ('64', '10', 'drug_name', '药品名称', 'varchar(100)', 'String', 'drugName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:41');
INSERT INTO gen_table_column VALUES ('65', '10', 'drug_spec', '药品规格', 'varchar(100)', 'String', 'drugSpec', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:41');
INSERT INTO gen_table_column VALUES ('66', '10', 'drug_form', '药品剂型', 'varchar(100)', 'String', 'drugForm', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:41');
INSERT INTO gen_table_column VALUES ('67', '10', 'drug_dose', '药品剂量', 'varchar(100)', 'String', 'drugDose', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:41');
INSERT INTO gen_table_column VALUES ('68', '10', 'drug_usage', '药品使用说明', 'text', 'String', 'drugUsage', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '7', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:41');
INSERT INTO gen_table_column VALUES ('69', '10', 'drug_info', '药品使用频次', 'varchar(100)', 'String', 'drugInfo', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:41');
INSERT INTO gen_table_column VALUES ('70', '11', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:53');
INSERT INTO gen_table_column VALUES ('71', '11', 'sp_code', '促销方案编码', 'int(11)', 'Long', 'spCode', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:53');
INSERT INTO gen_table_column VALUES ('72', '11', 'sp_title', '促销方案标题', 'varchar(50)', 'String', 'spTitle', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:53');
INSERT INTO gen_table_column VALUES ('73', '11', 'discount', '折扣', 'decimal(10,0)', 'Long', 'discount', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:53');
INSERT INTO gen_table_column VALUES ('74', '11', 'effective_time', '生效时间', 'datetime', 'Date', 'effectiveTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '5', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:53');
INSERT INTO gen_table_column VALUES ('75', '11', 'invalid_time', '失效时间', 'datetime', 'Date', 'invalidTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '6', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:53');
INSERT INTO gen_table_column VALUES ('76', '11', 'state', '状态', 'varchar(1)', 'String', 'state', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2021-09-29 10:08:24', '', '2021-09-29 10:11:53');
INSERT INTO gen_table_column VALUES ('77', '12', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:34:28');
INSERT INTO gen_table_column VALUES ('78', '12', 'user_id', '账号', 'varchar(11)', 'String', 'userId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:34:28');
INSERT INTO gen_table_column VALUES ('79', '12', 'pwd', '密码', 'varchar(100)', 'String', 'pwd', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:34:28');
INSERT INTO gen_table_column VALUES ('80', '12', 'status', '身份', 'varchar(10)', 'String', 'status', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', '', '4', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:34:28');
INSERT INTO gen_table_column VALUES ('81', '12', 'register_time', '注册时间', 'datetime', 'Date', 'registerTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '5', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:34:28');
INSERT INTO gen_table_column VALUES ('82', '13', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:35:29');
INSERT INTO gen_table_column VALUES ('83', '13', 'user_id', '账号', 'varchar(11)', 'String', 'userId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:35:29');
INSERT INTO gen_table_column VALUES ('84', '13', 'name', '姓名', 'varchar(40)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:35:29');
INSERT INTO gen_table_column VALUES ('85', '13', 'sex', '性别', 'varchar(2)', 'String', 'sex', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '4', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:35:29');
INSERT INTO gen_table_column VALUES ('86', '13', 'birthday', '出生日期', 'date', 'Date', 'birthday', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '5', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:35:29');
INSERT INTO gen_table_column VALUES ('87', '13', 'address', '收货地址', 'varchar(100)', 'String', 'address', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:35:29');
INSERT INTO gen_table_column VALUES ('88', '13', 'tel', '联系电话', 'varchar(11)', 'String', 'tel', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:35:29');
INSERT INTO gen_table_column VALUES ('89', '13', 'diseases', '关注病种', 'varchar(100)', 'String', 'diseases', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2021-09-29 10:34:08', '', '2021-09-29 10:35:29');
INSERT INTO gen_table_column VALUES ('90', '14', 'id', '类别编号', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-29 11:47:36', '', '2021-10-02 14:45:20');
INSERT INTO gen_table_column VALUES ('91', '14', 'type', '商品类别', 'varchar(20)', 'String', 'type', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '2', 'admin', '2021-09-29 11:47:36', '', '2021-10-02 14:45:20');
INSERT INTO gen_table_column VALUES ('94', '15', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-30 10:07:50', '', '2021-09-30 15:35:36');
INSERT INTO gen_table_column VALUES ('95', '15', 'sp_code', '促销方案编码', 'int(11)', 'Long', 'spCode', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-30 10:07:50', '', '2021-09-30 15:35:36');
INSERT INTO gen_table_column VALUES ('96', '15', 'goods_id', '商品ID', 'varchar(50)', 'String', 'goodsId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-09-30 10:07:50', '', '2021-09-30 15:35:36');
INSERT INTO gen_table_column VALUES ('97', '15', 'discount', '折扣', 'decimal(10,0)', 'Long', 'discount', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2021-09-30 10:07:50', '', '2021-09-30 15:35:36');
INSERT INTO gen_table_column VALUES ('98', '15', 'del_flag', '假删除标记', 'varchar(1)', 'String', 'delFlag', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '5', 'admin', '2021-09-30 10:07:50', '', '2021-09-30 15:35:36');
INSERT INTO gen_table_column VALUES ('117', '16', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('118', '16', 'goods_id', '商品ID', 'varchar(20)', 'String', 'goodsId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('119', '16', 'type_id', '商品类别编号', 'int(11)', 'Long', 'typeId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('120', '16', 'name', '名称', 'varchar(100)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('121', '16', 'num', '数量', 'int(11)', 'Long', 'num', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('122', '16', 'price', '定价', 'decimal(10,0)', 'Long', 'price', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('123', '16', 'cost', '进价', 'decimal(10,0)', 'Long', 'cost', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('124', '16', 'img_path', '图片路径', 'varchar(255)', 'String', 'imgPath', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('125', '16', 'treatment_type', '治疗类型', 'varchar(100)', 'String', 'treatmentType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '9', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('126', '16', 'components', '主要成分', 'text', 'String', 'components', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '10', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('127', '16', 'keeping', '贮存', 'varchar(50)', 'String', 'keeping', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('128', '16', 'enterprise', '生产企业', 'varchar(100)', 'String', 'enterprise', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('129', '16', 'effect', '功效', 'text', 'String', 'effect', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '13', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('130', '16', 'drug_usage', '注意事项', 'text', 'String', 'drugUsage', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '14', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('131', '16', 'usage', '用法', 'varchar(100)', 'String', 'usage', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '15', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('132', '16', 'dosage', '用量', 'varchar(100)', 'String', 'dosage', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '16', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('133', '16', 'ADRs', '不良反应', 'text', 'String', 'adrs', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '17', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('134', '16', 'batch_num', '生产批号', 'varchar(100)', 'String', 'batchNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '18', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('135', '16', 'drug_form', '剂型', 'varchar(100)', 'String', 'drugForm', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '19', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('136', '16', 'drug_spec', '规格', 'varchar(100)', 'String', 'drugSpec', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '20', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('137', '16', 'packing_spec', '包装规格', 'varchar(100)', 'String', 'packingSpec', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '21', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('138', '16', 'manufacture_time', '生产日期', 'date', 'Date', 'manufactureTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '22', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('139', '16', 'save_time', '保质期', 'varchar(20)', 'String', 'saveTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '23', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('140', '16', 'suggested_price', '建议零售价', 'decimal(10,0)', 'Long', 'suggestedPrice', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '24', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('141', '16', 'is_otc', '是否处方药', 'varchar(1)', 'String', 'isOtc', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '25', 'admin', '2021-09-30 15:18:51', '', '2021-09-30 15:19:36');
INSERT INTO gen_table_column VALUES ('142', '17', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:24:03');
INSERT INTO gen_table_column VALUES ('143', '17', 'sp_code', '促销方案编码', 'int(11)', 'Long', 'spCode', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:24:03');
INSERT INTO gen_table_column VALUES ('144', '17', 'content', '促销方案内容', 'text', 'String', 'content', '0', '0', null, '1', '1', '1', '1', 'EQ', 'editor', '', '3', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:24:03');
INSERT INTO gen_table_column VALUES ('145', '17', 'update_by', '修改者ID', 'varchar(11)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '4', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:24:03');
INSERT INTO gen_table_column VALUES ('146', '17', 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '5', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:24:03');
INSERT INTO gen_table_column VALUES ('147', '18', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:42');
INSERT INTO gen_table_column VALUES ('148', '18', 'order_id', '订单ID', 'int(11)', 'Long', 'orderId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:42');
INSERT INTO gen_table_column VALUES ('149', '18', 'goods_id', '商品ID', 'varchar(20)', 'String', 'goodsId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:42');
INSERT INTO gen_table_column VALUES ('150', '18', 'num', '数量', 'int(11)', 'Long', 'num', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:42');
INSERT INTO gen_table_column VALUES ('151', '18', 'cost', '进价', 'decimal(10,0)', 'Long', 'cost', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:42');
INSERT INTO gen_table_column VALUES ('152', '18', 'original_price', '原价', 'decimal(10,0)', 'Long', 'originalPrice', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:42');
INSERT INTO gen_table_column VALUES ('153', '18', 'discount', '折扣', 'decimal(10,0)', 'Long', 'discount', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:42');
INSERT INTO gen_table_column VALUES ('154', '18', 'price', '售价', 'decimal(10,0)', 'Long', 'price', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:42');
INSERT INTO gen_table_column VALUES ('155', '19', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:15');
INSERT INTO gen_table_column VALUES ('156', '19', 'user_id', '用户账户', 'varchar(11)', 'String', 'userId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:15');
INSERT INTO gen_table_column VALUES ('157', '19', 'goods_id', '商品ID', 'varchar(20)', 'String', 'goodsId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:15');
INSERT INTO gen_table_column VALUES ('158', '19', 'num', '数量', 'int(11)', 'Long', 'num', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2021-09-30 15:22:46', '', '2021-09-30 15:23:15');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` varchar(20) DEFAULT NULL COMMENT '商品ID',
  `type_id` int(11) DEFAULT NULL COMMENT '商品类别编号',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `price` decimal(10,0) DEFAULT NULL COMMENT '定价',
  `cost` decimal(10,0) DEFAULT NULL COMMENT '进价',
  `img_path` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `treatment_type` varchar(100) DEFAULT NULL COMMENT '治疗类型',
  `components` text COMMENT '主要成分',
  `keeping` varchar(50) DEFAULT NULL COMMENT '贮存',
  `enterprise` varchar(100) DEFAULT NULL COMMENT '生产企业',
  `effect` text COMMENT '功效',
  `drug_usage` text COMMENT '注意事项',
  `usage` varchar(100) DEFAULT NULL COMMENT '用法',
  `dosage` varchar(100) DEFAULT NULL COMMENT '用量',
  `ADRs` text COMMENT '不良反应',
  `batch_num` varchar(100) DEFAULT NULL COMMENT '生产批号',
  `drug_form` varchar(100) DEFAULT NULL COMMENT '剂型',
  `drug_spec` varchar(100) DEFAULT NULL COMMENT '规格',
  `packing_spec` varchar(100) DEFAULT NULL COMMENT '包装规格',
  `manufacture_time` date DEFAULT NULL COMMENT '生产日期',
  `save_time` varchar(20) DEFAULT NULL COMMENT '保质期',
  `suggested_price` decimal(10,0) DEFAULT NULL COMMENT '建议零售价',
  `is_otc` varchar(1) DEFAULT NULL COMMENT '是否处方药',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别编号',
  `type` varchar(20) DEFAULT NULL COMMENT '商品类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品类别表';

-- ----------------------------
-- Records of goods_type
-- ----------------------------

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` varchar(1000) DEFAULT NULL COMMENT '消息内容',
  `source` varchar(100) DEFAULT NULL COMMENT '消息来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息表';

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for `news_record`
-- ----------------------------
DROP TABLE IF EXISTS `news_record`;
CREATE TABLE `news_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_id` int(11) DEFAULT NULL COMMENT '消息ID',
  `push_id` varchar(11) DEFAULT NULL COMMENT '推送者ID',
  `push_time` datetime DEFAULT NULL COMMENT '推送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息记录表';

-- ----------------------------
-- Records of news_record
-- ----------------------------

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(50) DEFAULT NULL COMMENT '公告标题',
  `content` varchar(1000) DEFAULT NULL COMMENT '公告内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告表';

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for `notice_record`
-- ----------------------------
DROP TABLE IF EXISTS `notice_record`;
CREATE TABLE `notice_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `notice_id` int(11) DEFAULT NULL COMMENT '公告ID',
  `publish_id` varchar(11) DEFAULT NULL COMMENT '发布者ID',
  `publish_time` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告记录表';

-- ----------------------------
-- Records of notice_record
-- ----------------------------

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` varchar(11) DEFAULT NULL COMMENT '用户账号',
  `payment_account` varchar(20) DEFAULT NULL COMMENT '付款账号',
  `payment_time` datetime DEFAULT NULL COMMENT '付款时间',
  `payable` decimal(10,0) DEFAULT NULL COMMENT '应付金额',
  `amount` decimal(10,0) DEFAULT NULL COMMENT '实付金额',
  `receiving_method` varchar(4) DEFAULT NULL COMMENT '收货方式',
  `receiving_address` varchar(100) DEFAULT NULL COMMENT '收货地址',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `code` varchar(6) DEFAULT NULL COMMENT '自提码',
  `state` varchar(10) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for `prescription`
-- ----------------------------
DROP TABLE IF EXISTS `prescription`;
CREATE TABLE `prescription` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hospital_name` varchar(100) DEFAULT NULL COMMENT '医疗机构名称',
  `prescription_date` date DEFAULT NULL COMMENT '处方开具日期',
  `prescription_outdate` date DEFAULT NULL COMMENT '处方有效期限',
  `dr_name` varchar(100) DEFAULT NULL COMMENT '开处方医生姓名',
  `dr_dept` varchar(100) DEFAULT NULL COMMENT '就诊科室',
  `dr_sign` varchar(100) DEFAULT NULL COMMENT '医生签名',
  `patient_name` varchar(100) DEFAULT NULL COMMENT '患者姓名',
  `patient_age` int(11) DEFAULT NULL COMMENT '患者年龄',
  `patient_sex` varchar(2) DEFAULT NULL COMMENT '患者性别',
  `patient_weight` decimal(10,0) DEFAULT NULL COMMENT '患者体重',
  `patient_allergy` varchar(100) DEFAULT NULL COMMENT '患者过敏情况',
  `clinical_diag` varchar(100) DEFAULT NULL COMMENT '临床诊断',
  `prescription_review` varchar(40) DEFAULT NULL COMMENT '处方审核医生',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='处方表';

-- ----------------------------
-- Records of prescription
-- ----------------------------

-- ----------------------------
-- Table structure for `prescription_drugs`
-- ----------------------------
DROP TABLE IF EXISTS `prescription_drugs`;
CREATE TABLE `prescription_drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `prescription_id` int(11) DEFAULT NULL COMMENT '处方ID',
  `drug_name` varchar(100) DEFAULT NULL COMMENT '药品名称',
  `drug_spec` varchar(100) DEFAULT NULL COMMENT '药品规格',
  `drug_form` varchar(100) DEFAULT NULL COMMENT '药品剂型',
  `drug_dose` varchar(100) DEFAULT NULL COMMENT '药品剂量',
  `drug_usage` text COMMENT '药品使用说明',
  `drug_info` varchar(100) DEFAULT NULL COMMENT '药品使用频次',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='处方药品表';

-- ----------------------------
-- Records of prescription_drugs
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO qrtz_cron_triggers VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO qrtz_cron_triggers VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO qrtz_cron_triggers VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO qrtz_job_details VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017C2F3044E878707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO qrtz_job_details VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017C2F3044E878707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO qrtz_job_details VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017C2F3044E878707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO qrtz_locks VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO qrtz_locks VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO qrtz_scheduler_state VALUES ('RuoyiScheduler', 'DESKTOP-71932TL1633159458800', '1633159977076', '15000');

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO qrtz_triggers VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1633159460000', '-1', '5', 'PAUSED', 'CRON', '1633159459000', '0', null, '2', '');
INSERT INTO qrtz_triggers VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1633159470000', '-1', '5', 'PAUSED', 'CRON', '1633159459000', '0', null, '2', '');
INSERT INTO qrtz_triggers VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1633159460000', '-1', '5', 'PAUSED', 'CRON', '1633159459000', '0', null, '2', '');

-- ----------------------------
-- Table structure for `sales_promotion`
-- ----------------------------
DROP TABLE IF EXISTS `sales_promotion`;
CREATE TABLE `sales_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sp_code` int(11) DEFAULT NULL COMMENT '促销方案编码',
  `sp_title` varchar(50) DEFAULT NULL COMMENT '促销方案标题',
  `discount` decimal(10,0) DEFAULT NULL COMMENT '折扣',
  `effective_time` datetime DEFAULT NULL COMMENT '生效时间',
  `invalid_time` datetime DEFAULT NULL COMMENT '失效时间',
  `state` varchar(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='促销方案表';

-- ----------------------------
-- Records of sales_promotion
-- ----------------------------

-- ----------------------------
-- Table structure for `sales_promotion_goods`
-- ----------------------------
DROP TABLE IF EXISTS `sales_promotion_goods`;
CREATE TABLE `sales_promotion_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sp_code` int(11) DEFAULT NULL COMMENT '促销方案编码',
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `discount` decimal(10,0) DEFAULT NULL COMMENT '折扣',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '假删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='促销商品表';

-- ----------------------------
-- Records of sales_promotion_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `sales_promotion_record`
-- ----------------------------
DROP TABLE IF EXISTS `sales_promotion_record`;
CREATE TABLE `sales_promotion_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sp_code` int(11) DEFAULT NULL COMMENT '促销方案编码',
  `content` text COMMENT '促销方案内容',
  `update_by` varchar(11) DEFAULT NULL COMMENT '修改者ID',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='促销方案修改记录表';

-- ----------------------------
-- Records of sales_promotion_record
-- ----------------------------

-- ----------------------------
-- Table structure for `sales_record`
-- ----------------------------
DROP TABLE IF EXISTS `sales_record`;
CREATE TABLE `sales_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` int(11) DEFAULT NULL COMMENT '订单ID',
  `goods_id` varchar(20) DEFAULT NULL COMMENT '商品ID',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `cost` decimal(10,0) DEFAULT NULL COMMENT '进价',
  `original_price` decimal(10,0) DEFAULT NULL COMMENT '原价',
  `discount` decimal(10,0) DEFAULT NULL COMMENT '折扣',
  `price` decimal(10,0) DEFAULT NULL COMMENT '售价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售记录表';

-- ----------------------------
-- Records of sales_record
-- ----------------------------

-- ----------------------------
-- Table structure for `shopping_cart`
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` varchar(11) DEFAULT NULL COMMENT '用户账户',
  `goods_id` varchar(20) DEFAULT NULL COMMENT '商品ID',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO sys_config VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-09-29 09:34:25', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO sys_config VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-09-29 09:34:25', '', null, '初始化密码 123456');
INSERT INTO sys_config VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-09-29 09:34:25', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO sys_config VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2021-09-29 09:34:25', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO sys_config VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-09-29 09:34:25', '', null, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO sys_dept VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-29 09:34:24', '', null);
INSERT INTO sys_dept VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-29 09:34:24', '', null);
INSERT INTO sys_dept VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-29 09:34:24', '', null);
INSERT INTO sys_dept VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-29 09:34:24', '', null);
INSERT INTO sys_dept VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-29 09:34:24', '', null);
INSERT INTO sys_dept VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-29 09:34:24', '', null);
INSERT INTO sys_dept VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-29 09:34:24', '', null);
INSERT INTO sys_dept VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-29 09:34:24', '', null);
INSERT INTO sys_dept VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-29 09:34:24', '', null);
INSERT INTO sys_dept VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-29 09:34:24', '', null);

-- ----------------------------
-- Table structure for `sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO sys_dict_data VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-09-29 09:34:25', '', null, '性别男');
INSERT INTO sys_dict_data VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '性别女');
INSERT INTO sys_dict_data VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '性别未知');
INSERT INTO sys_dict_data VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-09-29 09:34:25', '', null, '显示菜单');
INSERT INTO sys_dict_data VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '隐藏菜单');
INSERT INTO sys_dict_data VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-09-29 09:34:25', '', null, '正常状态');
INSERT INTO sys_dict_data VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '停用状态');
INSERT INTO sys_dict_data VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-09-29 09:34:25', '', null, '正常状态');
INSERT INTO sys_dict_data VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '停用状态');
INSERT INTO sys_dict_data VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-09-29 09:34:25', '', null, '默认分组');
INSERT INTO sys_dict_data VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '系统分组');
INSERT INTO sys_dict_data VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-09-29 09:34:25', '', null, '系统默认是');
INSERT INTO sys_dict_data VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '系统默认否');
INSERT INTO sys_dict_data VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-09-29 09:34:25', '', null, '通知');
INSERT INTO sys_dict_data VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '公告');
INSERT INTO sys_dict_data VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-09-29 09:34:25', '', null, '正常状态');
INSERT INTO sys_dict_data VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '关闭状态');
INSERT INTO sys_dict_data VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '新增操作');
INSERT INTO sys_dict_data VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '修改操作');
INSERT INTO sys_dict_data VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '删除操作');
INSERT INTO sys_dict_data VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '授权操作');
INSERT INTO sys_dict_data VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '导出操作');
INSERT INTO sys_dict_data VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '导入操作');
INSERT INTO sys_dict_data VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '强退操作');
INSERT INTO sys_dict_data VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '生成操作');
INSERT INTO sys_dict_data VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '清空操作');
INSERT INTO sys_dict_data VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '正常状态');
INSERT INTO sys_dict_data VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-09-29 09:34:25', '', null, '停用状态');

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO sys_dict_type VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2021-09-29 09:34:24', '', null, '用户性别列表');
INSERT INTO sys_dict_type VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2021-09-29 09:34:24', '', null, '菜单状态列表');
INSERT INTO sys_dict_type VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2021-09-29 09:34:24', '', null, '系统开关列表');
INSERT INTO sys_dict_type VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2021-09-29 09:34:24', '', null, '任务状态列表');
INSERT INTO sys_dict_type VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2021-09-29 09:34:24', '', null, '任务分组列表');
INSERT INTO sys_dict_type VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2021-09-29 09:34:24', '', null, '系统是否列表');
INSERT INTO sys_dict_type VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2021-09-29 09:34:24', '', null, '通知类型列表');
INSERT INTO sys_dict_type VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2021-09-29 09:34:24', '', null, '通知状态列表');
INSERT INTO sys_dict_type VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2021-09-29 09:34:24', '', null, '操作类型列表');
INSERT INTO sys_dict_type VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2021-09-29 09:34:25', '', null, '登录状态列表');

-- ----------------------------
-- Table structure for `sys_job`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO sys_job VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-09-29 09:34:25', '', null, '');
INSERT INTO sys_job VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-09-29 09:34:25', '', null, '');
INSERT INTO sys_job VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-09-29 09:34:25', '', null, '');

-- ----------------------------
-- Table structure for `sys_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_logininfor`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO sys_logininfor VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 09:42:35');
INSERT INTO sys_logininfor VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 11:45:00');
INSERT INTO sys_logininfor VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 14:46:23');
INSERT INTO sys_logininfor VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 18:33:14');
INSERT INTO sys_logininfor VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-29 19:06:06');
INSERT INTO sys_logininfor VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-09-30 09:26:29');
INSERT INTO sys_logininfor VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-30 09:26:36');
INSERT INTO sys_logininfor VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-30 10:07:15');
INSERT INTO sys_logininfor VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-30 14:58:20');
INSERT INTO sys_logininfor VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-02 14:16:07');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2009 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO sys_menu VALUES ('1', '系统管理', '0', '1', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2021-09-29 09:34:24', '', null, '系统管理目录');
INSERT INTO sys_menu VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2021-09-29 09:34:24', '', null, '系统监控目录');
INSERT INTO sys_menu VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2021-09-29 09:34:24', '', null, '系统工具目录');
INSERT INTO sys_menu VALUES ('4', '若依官网', '0', '4', 'http://ruoyi.vip', null, '', '0', '0', 'M', '0', '0', '', 'guide', 'admin', '2021-09-29 09:34:24', '', null, '若依官网地址');
INSERT INTO sys_menu VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-09-29 09:34:24', '', null, '用户管理菜单');
INSERT INTO sys_menu VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-09-29 09:34:24', '', null, '角色管理菜单');
INSERT INTO sys_menu VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-09-29 09:34:24', '', null, '菜单管理菜单');
INSERT INTO sys_menu VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-09-29 09:34:24', '', null, '部门管理菜单');
INSERT INTO sys_menu VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-09-29 09:34:24', '', null, '岗位管理菜单');
INSERT INTO sys_menu VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-09-29 09:34:24', '', null, '字典管理菜单');
INSERT INTO sys_menu VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2021-09-29 09:34:24', '', null, '参数设置菜单');
INSERT INTO sys_menu VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-09-29 09:34:24', '', null, '通知公告菜单');
INSERT INTO sys_menu VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2021-09-29 09:34:24', '', null, '日志管理菜单');
INSERT INTO sys_menu VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-09-29 09:34:24', '', null, '在线用户菜单');
INSERT INTO sys_menu VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-09-29 09:34:24', '', null, '定时任务菜单');
INSERT INTO sys_menu VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-09-29 09:34:24', '', null, '数据监控菜单');
INSERT INTO sys_menu VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-09-29 09:34:24', '', null, '服务监控菜单');
INSERT INTO sys_menu VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-09-29 09:34:24', '', null, '缓存监控菜单');
INSERT INTO sys_menu VALUES ('114', '表单构建', '3', '1', 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-09-29 09:34:24', '', null, '表单构建菜单');
INSERT INTO sys_menu VALUES ('115', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-09-29 09:34:24', '', null, '代码生成菜单');
INSERT INTO sys_menu VALUES ('116', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-09-29 09:34:24', '', null, '系统接口菜单');
INSERT INTO sys_menu VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-09-29 09:34:24', '', null, '操作日志菜单');
INSERT INTO sys_menu VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-09-29 09:34:24', '', null, '登录日志菜单');
INSERT INTO sys_menu VALUES ('1001', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1002', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1003', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1004', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1005', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1006', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1007', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1008', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1009', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1010', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1011', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1012', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1013', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1014', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1015', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1016', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1017', '部门查询', '103', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1018', '部门新增', '103', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1019', '部门修改', '103', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1020', '部门删除', '103', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1021', '岗位查询', '104', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1022', '岗位新增', '104', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1023', '岗位修改', '104', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1024', '岗位删除', '104', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1025', '岗位导出', '104', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1026', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1027', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1028', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1029', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1030', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1031', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1032', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1033', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1034', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1035', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1036', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1037', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1038', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1039', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1040', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1041', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1042', '日志导出', '500', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1043', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1044', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1045', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1049', '任务查询', '110', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1050', '任务新增', '110', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1051', '任务修改', '110', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1052', '任务删除', '110', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1053', '状态修改', '110', '5', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1054', '任务导出', '110', '7', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1055', '生成查询', '115', '1', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1056', '生成修改', '115', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1057', '生成删除', '115', '3', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1058', '导入代码', '115', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1059', '预览代码', '115', '4', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('1060', '生成代码', '115', '5', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_menu VALUES ('2000', '药店管理', '0', '0', 'pharmacy', '', null, '1', '0', 'M', '0', '0', '', 'people', 'admin', '2021-09-29 09:49:38', 'admin', '2021-09-29 10:32:56', '');
INSERT INTO sys_menu VALUES ('2001', '用户管理', '2000', '0', 'user', 'pharmacy/user/index', null, '1', '0', 'C', '0', '0', 'pharmacy:user:index', 'peoples', 'admin', '2021-09-29 10:31:31', 'admin', '2021-09-29 10:48:28', '');
INSERT INTO sys_menu VALUES ('2002', '订单管理', '2000', '3', 'order', 'pharmacy/order/index', null, '1', '0', 'C', '0', '0', 'pharmacy:order:index', 'build', 'admin', '2021-09-29 10:55:48', 'admin', '2021-10-02 14:43:35', '');
INSERT INTO sys_menu VALUES ('2003', '报表管理', '2000', '6', 'reports', 'pharmacy/reports/index', null, '1', '0', 'C', '0', '0', 'pharmacy:reports:index', 'excel', 'admin', '2021-09-29 10:57:13', 'admin', '2021-09-30 16:21:31', '');
INSERT INTO sys_menu VALUES ('2004', '商品管理', '2000', '1', 'goods', 'pharmacy/goods/index', null, '1', '0', 'C', '0', '0', 'pharmacy:goods:index', 'shopping', 'admin', '2021-09-30 15:51:53', 'admin', '2021-09-30 16:21:49', '');
INSERT INTO sys_menu VALUES ('2005', '促销管理', '2000', '3', 'promotion', 'pharmacy/promotion/index', null, '1', '0', 'C', '0', '0', 'pharmacy:promotion:index', 'money', 'admin', '2021-09-30 15:53:04', 'admin', '2021-09-30 16:22:11', '');
INSERT INTO sys_menu VALUES ('2006', '公告管理', '2000', '4', 'notice', 'pharmacy/notice/index', null, '1', '0', 'C', '0', '0', 'pharmacy:notice:index', 'edit', 'admin', '2021-09-30 15:53:50', 'admin', '2021-09-30 16:22:40', '');
INSERT INTO sys_menu VALUES ('2007', '消息管理', '2000', '5', 'news', 'pharmacy/news/index', null, '1', '0', 'C', '0', '0', 'pharmacy:news:index', 'message', 'admin', '2021-09-30 15:54:25', 'admin', '2021-09-30 16:22:21', '');
INSERT INTO sys_menu VALUES ('2008', '药品管理', '2000', '2', 'goodsType', 'pharmacy/goodsType/index', null, '1', '0', 'C', '0', '0', 'pharmacy:goodstype:index', 'tool', 'admin', '2021-10-02 14:43:25', 'admin', '2021-10-02 15:18:32', '');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO sys_notice VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-09-29 09:34:25', '', null, '管理员');
INSERT INTO sys_notice VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2021-09-29 09:34:25', '', null, '管理员');

-- ----------------------------
-- Table structure for `sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO sys_oper_log VALUES ('100', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'drug', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 09:43:38');
INSERT INTO sys_oper_log VALUES ('101', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"2\",\"menuName\":\"药店销售\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"users\",\"component\":\"pharmacy/users/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"pharmacy:users:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 09:49:38');
INSERT INTO sys_oper_log VALUES ('102', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"药店销售\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"users\",\"component\":\"pharmacy/users/index\",\"children\":[],\"createTime\":1632880178000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"pharmacy:users:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 09:49:52');
INSERT INTO sys_oper_log VALUES ('103', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632879818000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"GoodsId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"goodsId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632879818000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"goods_id\"},{\"capJavaField\":\"DrugName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"drugName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"药品名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632879818000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"drug_name\"},{\"capJavaField\":\"TreatmentType\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"treatmentType\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"治疗类型\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 09:50:43');
INSERT INTO sys_oper_log VALUES ('104', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-09-29 09:50:47');
INSERT INTO sys_oper_log VALUES ('105', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'medical_equipment,goods,news,news_record,notice,notice_record,order,prescription,prescription_drugs,sales_promotion', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:08:24');
INSERT INTO sys_oper_log VALUES ('106', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":10,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632881303000,\"tableId\":2,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"GoodsId\",\"usableColumn\":false,\"columnId\":11,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"goodsId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"goods_id\"},{\"capJavaField\":\"Num\",\"usableColumn\":false,\"columnId\":12,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"num\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品数量\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"num\"},{\"capJavaField\":\"Price\",\"usableColumn\":false,\"columnId\":13,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"price\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"定价\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"decimal(10,0)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:09:08');
INSERT INTO sys_oper_log VALUES ('107', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":15,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632881303000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"GoodsId\",\"usableColumn\":false,\"columnId\":16,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"goodsId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"goods_id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":17,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"ManufactureTime\",\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"manufactureTime\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"生产日期\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"date\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:09:20');
INSERT INTO sys_oper_log VALUES ('108', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632881303000,\"tableId\":4,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"content\",\"htmlType\":\"editor\",\"edit\":true,\"query\":true,\"columnComment\":\"消息内容\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"content\"},{\"capJavaField\":\"Source\",\"usableColumn\":false,\"columnId\":25,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"source\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"消息来源\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"source\"}],\"businessName\":\"news\",\"moduleName\":\"pharmacy\",\"className\":\"News\",\"tableName\":\"news\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.pharmacy\",\"functionName\":\"消息\",\"tree\":false,\"tableComment\":\"消息表\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":4,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:09:31');
INSERT INTO sys_oper_log VALUES ('109', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":26,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632881303000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"NewsId\",\"usableColumn\":false,\"columnId\":27,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"newsId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"消息ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"news_id\"},{\"capJavaField\":\"PushId\",\"usableColumn\":false,\"columnId\":28,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"pushId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"推送者ID\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"push_id\"},{\"capJavaField\":\"PushTime\",\"usableColumn\":false,\"columnId\":29,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"pushTime\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"推送时间\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":163288130300', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:10:11');
INSERT INTO sys_oper_log VALUES ('110', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":33,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632881303000,\"tableId\":7,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"NoticeId\",\"usableColumn\":false,\"columnId\":34,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"noticeId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"公告ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"notice_id\"},{\"capJavaField\":\"PublishId\",\"usableColumn\":false,\"columnId\":35,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"publishId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"发布者ID\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"publish_id\"},{\"capJavaField\":\"PublishTime\",\"usableColumn\":false,\"columnId\":36,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"publishTime\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"发布时间\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"cre', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:10:38');
INSERT INTO sys_oper_log VALUES ('111', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":30,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632881303000,\"tableId\":6,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Title\",\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"公告标题\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"title\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":32,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"content\",\"htmlType\":\"editor\",\"edit\":true,\"query\":true,\"columnComment\":\"公告内容\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"content\"}],\"businessName\":\"notice\",\"moduleName\":\"pharmacy\",\"className\":\"Notice\",\"tableName\":\"notice\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.pharmacy\",\"functionName\":\"公告\",\"tree\":false,\"tableComment\":\"公告表\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":6,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:11:00');
INSERT INTO sys_oper_log VALUES ('112', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":37,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632881303000,\"tableId\":8,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"UserId\",\"usableColumn\":false,\"columnId\":38,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"userId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户账号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":8,\"pk\":false,\"columnName\":\"user_id\"},{\"capJavaField\":\"PaymentAccount\",\"usableColumn\":false,\"columnId\":39,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"paymentAccount\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"付款账号\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":8,\"pk\":false,\"columnName\":\"payment_account\"},{\"capJavaField\":\"PaymentTime\",\"usableColumn\":false,\"columnId\":40,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"paymentTime\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"付款时间\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:11:20');
INSERT INTO sys_oper_log VALUES ('113', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":48,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632881304000,\"tableId\":9,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"HospitalName\",\"usableColumn\":false,\"columnId\":49,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"hospitalName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"医疗机构名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881304000,\"isEdit\":\"1\",\"tableId\":9,\"pk\":false,\"columnName\":\"hospital_name\"},{\"capJavaField\":\"PrescriptionDate\",\"usableColumn\":false,\"columnId\":50,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"prescriptionDate\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"处方开具日期\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"date\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881304000,\"isEdit\":\"1\",\"tableId\":9,\"pk\":false,\"columnName\":\"prescription_date\"},{\"capJavaField\":\"PrescriptionOutdate\",\"usableColumn\":false,\"columnId\":51,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"prescriptionOutdate\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"处方有效期限\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:11:31');
INSERT INTO sys_oper_log VALUES ('114', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":62,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632881304000,\"tableId\":10,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"PrescriptionId\",\"usableColumn\":false,\"columnId\":63,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"prescriptionId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"处方ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881304000,\"isEdit\":\"1\",\"tableId\":10,\"pk\":false,\"columnName\":\"prescription_id\"},{\"capJavaField\":\"DrugName\",\"usableColumn\":false,\"columnId\":64,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"drugName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"药品名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881304000,\"isEdit\":\"1\",\"tableId\":10,\"pk\":false,\"columnName\":\"drug_name\"},{\"capJavaField\":\"DrugSpec\",\"usableColumn\":false,\"columnId\":65,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"drugSpec\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"药品规格\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:11:41');
INSERT INTO sys_oper_log VALUES ('115', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":70,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632881304000,\"tableId\":11,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"SpCode\",\"usableColumn\":false,\"columnId\":71,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"spCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"促销方案编码\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881304000,\"isEdit\":\"1\",\"tableId\":11,\"pk\":false,\"columnName\":\"sp_code\"},{\"capJavaField\":\"SpTitle\",\"usableColumn\":false,\"columnId\":72,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"spTitle\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"促销方案标题\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881304000,\"isEdit\":\"1\",\"tableId\":11,\"pk\":false,\"columnName\":\"sp_title\"},{\"capJavaField\":\"Discount\",\"usableColumn\":false,\"columnId\":73,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"discount\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"折扣\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"decimal(10,0)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":163', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:11:53');
INSERT INTO sys_oper_log VALUES ('116', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-09-29 10:12:29');
INSERT INTO sys_oper_log VALUES ('117', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"1\",\"menuName\":\"药店管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"pharmacy\",\"component\":\"pharmacy/users/index\",\"children\":[],\"createTime\":1632880178000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"pharmacy:users:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:29:38');
INSERT INTO sys_oper_log VALUES ('118', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"0\",\"menuName\":\"用户管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"users\",\"component\":\"pharmacy/users/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"pharmacy:users:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:31:31');
INSERT INTO sys_oper_log VALUES ('119', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"药店管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"pharmacy\",\"component\":\"pharmacy/users/index\",\"children\":[],\"createTime\":1632880178000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"pharmacy:users:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:32:04');
INSERT INTO sys_oper_log VALUES ('120', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"药店管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"manage\",\"component\":\"\",\"children\":[],\"createTime\":1632880178000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:32:35');
INSERT INTO sys_oper_log VALUES ('121', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"药店管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"pharmacy\",\"component\":\"\",\"children\":[],\"createTime\":1632880178000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:32:56');
INSERT INTO sys_oper_log VALUES ('122', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'user,user_info', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:34:08');
INSERT INTO sys_oper_log VALUES ('123', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":77,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632882848000,\"tableId\":12,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"UserId\",\"usableColumn\":false,\"columnId\":78,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"userId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"账号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632882848000,\"isEdit\":\"1\",\"tableId\":12,\"pk\":false,\"columnName\":\"user_id\"},{\"capJavaField\":\"Pwd\",\"usableColumn\":false,\"columnId\":79,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"pwd\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"密码\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632882848000,\"isEdit\":\"1\",\"tableId\":12,\"pk\":false,\"columnName\":\"pwd\"},{\"capJavaField\":\"Status\",\"usableColumn\":false,\"columnId\":80,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"身份\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(10)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632882848000,\"isEdit', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:34:28');
INSERT INTO sys_oper_log VALUES ('124', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":82,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632882848000,\"tableId\":13,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"UserId\",\"usableColumn\":false,\"columnId\":83,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"userId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"账号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632882848000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"user_id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":84,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"姓名\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(40)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632882848000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Sex\",\"usableColumn\":false,\"columnId\":85,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"sex\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"性别\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(2)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632882848000,\"isEdit\":', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:34:42');
INSERT INTO sys_oper_log VALUES ('125', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":82,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"updateTime\":1632882882000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632882848000,\"tableId\":13,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"UserId\",\"usableColumn\":false,\"columnId\":83,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"userId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"账号\",\"isQuery\":\"1\",\"updateTime\":1632882882000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632882848000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"user_id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":84,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"姓名\",\"isQuery\":\"1\",\"updateTime\":1632882882000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(40)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632882848000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Sex\",\"usableColumn\":false,\"columnId\":85,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"sex\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"性别\",\"isQuery\":\"1\",\"updateTime\":1632882882000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:35:29');
INSERT INTO sys_oper_log VALUES ('126', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-09-29 10:35:40');
INSERT INTO sys_oper_log VALUES ('127', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":26,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"updateTime\":1632881411000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632881303000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"NewsId\",\"usableColumn\":false,\"columnId\":27,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"newsId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"消息ID\",\"isQuery\":\"1\",\"updateTime\":1632881411000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"news_id\"},{\"capJavaField\":\"PushId\",\"usableColumn\":false,\"columnId\":28,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"pushId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"推送者ID\",\"isQuery\":\"1\",\"updateTime\":1632881411000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"push_id\"},{\"capJavaField\":\"PushTime\",\"usableColumn\":false,\"columnId\":29,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"pushTime\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"推送时间\",\"isQuery\":\"1\",\"updateTime\":1632881411000,\"sort\":4,\"list\":true,\"params\":{},\"javaT', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:43:22');
INSERT INTO sys_oper_log VALUES ('128', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":33,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"updateTime\":1632881438000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632881303000,\"tableId\":7,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"NoticeId\",\"usableColumn\":false,\"columnId\":34,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"noticeId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"公告ID\",\"isQuery\":\"1\",\"updateTime\":1632881438000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"notice_id\"},{\"capJavaField\":\"PublishId\",\"usableColumn\":false,\"columnId\":35,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"publishId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"发布者ID\",\"isQuery\":\"1\",\"updateTime\":1632881438000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632881303000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"publish_id\"},{\"capJavaField\":\"PublishTime\",\"usableColumn\":false,\"columnId\":36,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"publishTime\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"发布时间\",\"isQuery\":\"1\",\"updateTime\":1632881438000,\"sort\":4,\"list\":tr', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:43:51');
INSERT INTO sys_oper_log VALUES ('129', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-09-29 10:44:00');
INSERT INTO sys_oper_log VALUES ('130', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"0\",\"menuName\":\"用户管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"pharmacy/user/index\",\"children\":[],\"createTime\":1632882691000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"pharmacy:user:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:48:28');
INSERT INTO sys_oper_log VALUES ('131', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":\"1\",\"menuName\":\"订单管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"order\",\"component\":\"pharmacy/order/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"pharmacy:order:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:55:48');
INSERT INTO sys_oper_log VALUES ('132', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"excel\",\"orderNum\":\"2\",\"menuName\":\"报表管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"reports\",\"component\":\"pharmacy/reports/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"pharmacy:reports:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 10:57:13');
INSERT INTO sys_oper_log VALUES ('133', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'goods_type', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 11:47:36');
INSERT INTO sys_oper_log VALUES ('134', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/goods_type', '127.0.0.1', '内网IP', '{tableName=goods_type}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 11:47:44');
INSERT INTO sys_oper_log VALUES ('135', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":90,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"类别编号\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632887256000,\"tableId\":14,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Type\",\"usableColumn\":false,\"columnId\":91,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"商品类别\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632887256000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"type\"}],\"businessName\":\"type\",\"moduleName\":\"pharmacy\",\"className\":\"GoodsType\",\"tableName\":\"goods_type\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.pharmacy\",\"functionName\":\"商品类别\",\"tree\":false,\"tableComment\":\"商品类别表\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":14,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 11:49:38');
INSERT INTO sys_oper_log VALUES ('136', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/goods', '127.0.0.1', '内网IP', '{tableName=goods}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 11:49:52');
INSERT INTO sys_oper_log VALUES ('137', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-09-29 11:49:57');
INSERT INTO sys_oper_log VALUES ('138', '用户', '1', 'com.ruoyi.pharmacy.controller.UserController.add()', 'POST', '1', 'admin', null, '/pharmacy/user', '127.0.0.1', '内网IP', '{\"registerTime\":1631030400000,\"id\":1,\"params\":{},\"pwd\":\"11\",\"userId\":\"11\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-29 19:06:26');
INSERT INTO sys_oper_log VALUES ('139', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sales_promotion_goods', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 10:07:50');
INSERT INTO sys_oper_log VALUES ('140', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-09-30 10:08:24');
INSERT INTO sys_oper_log VALUES ('141', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/goods', '127.0.0.1', '内网IP', '{tableName=goods}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:05:38');
INSERT INTO sys_oper_log VALUES ('142', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/goods', '127.0.0.1', '内网IP', '{tableName=goods}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:16:18');
INSERT INTO sys_oper_log VALUES ('143', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/notice', '127.0.0.1', '内网IP', '{tableName=notice}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:16:53');
INSERT INTO sys_oper_log VALUES ('144', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/2', '127.0.0.1', '内网IP', '{tableIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:18:45');
INSERT INTO sys_oper_log VALUES ('145', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'goods', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:18:51');
INSERT INTO sys_oper_log VALUES ('146', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":117,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632986331000,\"tableId\":16,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"GoodsId\",\"usableColumn\":false,\"columnId\":118,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"goodsId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986331000,\"isEdit\":\"1\",\"tableId\":16,\"pk\":false,\"columnName\":\"goods_id\"},{\"capJavaField\":\"TypeId\",\"usableColumn\":false,\"columnId\":119,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"typeId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品类别编号\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986331000,\"isEdit\":\"1\",\"tableId\":16,\"pk\":false,\"columnName\":\"type_id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":120,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"名称\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":163298', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:19:36');
INSERT INTO sys_oper_log VALUES ('147', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-09-30 15:19:45');
INSERT INTO sys_oper_log VALUES ('148', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sales_promotion_record,sales_record,shopping_cart', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:22:46');
INSERT INTO sys_oper_log VALUES ('149', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":155,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632986566000,\"tableId\":19,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"UserId\",\"usableColumn\":false,\"columnId\":156,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"userId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户账户\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986566000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"user_id\"},{\"capJavaField\":\"GoodsId\",\"usableColumn\":false,\"columnId\":157,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"goodsId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品ID\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986566000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"goods_id\"},{\"capJavaField\":\"Num\",\"usableColumn\":false,\"columnId\":158,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"num\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"数量\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986566000', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:23:15');
INSERT INTO sys_oper_log VALUES ('150', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":147,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632986566000,\"tableId\":18,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"OrderId\",\"usableColumn\":false,\"columnId\":148,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"orderId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"订单ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986566000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"order_id\"},{\"capJavaField\":\"GoodsId\",\"usableColumn\":false,\"columnId\":149,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"goodsId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品ID\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986566000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"goods_id\"},{\"capJavaField\":\"Num\",\"usableColumn\":false,\"columnId\":150,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"num\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"数量\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986566000,\"i', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:23:28');
INSERT INTO sys_oper_log VALUES ('151', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":147,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"updateTime\":1632986608000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632986566000,\"tableId\":18,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"OrderId\",\"usableColumn\":false,\"columnId\":148,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"orderId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"订单ID\",\"isQuery\":\"1\",\"updateTime\":1632986608000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986566000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"order_id\"},{\"capJavaField\":\"GoodsId\",\"usableColumn\":false,\"columnId\":149,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"goodsId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品ID\",\"isQuery\":\"1\",\"updateTime\":1632986608000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986566000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"goods_id\"},{\"capJavaField\":\"Num\",\"usableColumn\":false,\"columnId\":150,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"num\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"数量\",\"isQuery\":\"1\",\"updateTime\":1632986608000,\"sort\":4,\"list\":true,\"params\":{},\"javaType', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:23:42');
INSERT INTO sys_oper_log VALUES ('152', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":142,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632986566000,\"tableId\":17,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"SpCode\",\"usableColumn\":false,\"columnId\":143,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"spCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"促销方案编码\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986566000,\"isEdit\":\"1\",\"tableId\":17,\"pk\":false,\"columnName\":\"sp_code\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":144,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"content\",\"htmlType\":\"editor\",\"edit\":true,\"query\":true,\"columnComment\":\"促销方案内容\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"text\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986566000,\"isEdit\":\"1\",\"tableId\":17,\"pk\":false,\"columnName\":\"content\"},{\"capJavaField\":\"UpdateBy\",\"usableColumn\":false,\"columnId\":145,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"updateBy\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"修改者ID\",\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632986566000,\"isEdit\":\"1\",\"t', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:24:03');
INSERT INTO sys_oper_log VALUES ('153', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-09-30 15:24:21');
INSERT INTO sys_oper_log VALUES ('154', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-09-30 15:33:24');
INSERT INTO sys_oper_log VALUES ('155', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":94,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632967670000,\"tableId\":15,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"SpCode\",\"usableColumn\":false,\"columnId\":95,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"spCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"促销方案编码\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632967670000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"sp_code\"},{\"capJavaField\":\"GoodsId\",\"usableColumn\":false,\"columnId\":96,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"goodsId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品ID\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632967670000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"goods_id\"},{\"capJavaField\":\"Discount\",\"usableColumn\":false,\"columnId\":97,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"discount\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"折扣\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"decimal(10,0)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":16329', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:35:36');
INSERT INTO sys_oper_log VALUES ('156', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-09-30 15:36:08');
INSERT INTO sys_oper_log VALUES ('157', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"shopping\",\"orderNum\":\"3\",\"menuName\":\"商品管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"goods\",\"component\":\"pharmacy/goods/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"pharmacy:goods:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:51:53');
INSERT INTO sys_oper_log VALUES ('158', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"money\",\"orderNum\":\"4\",\"menuName\":\"促销管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"promotion\",\"component\":\"pharmacy/promotion/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"pharmacy:promotion:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:53:04');
INSERT INTO sys_oper_log VALUES ('159', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"edit\",\"orderNum\":\"5\",\"menuName\":\"公告管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"notice\",\"component\":\"pharmacy/notice/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"pharmacy:notice:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:53:50');
INSERT INTO sys_oper_log VALUES ('160', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"message\",\"orderNum\":\"6\",\"menuName\":\"消息管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"news\",\"component\":\"pharmacy/news/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"pharmacy:news:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 15:54:25');
INSERT INTO sys_oper_log VALUES ('161', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"excel\",\"orderNum\":\"6\",\"menuName\":\"报表管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"reports\",\"component\":\"pharmacy/reports/index\",\"children\":[],\"createTime\":1632884233000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"C\",\"perms\":\"pharmacy:reports:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 16:21:31');
INSERT INTO sys_oper_log VALUES ('162', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"shopping\",\"orderNum\":\"2\",\"menuName\":\"商品管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"goods\",\"component\":\"pharmacy/goods/index\",\"children\":[],\"createTime\":1632988313000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"pharmacy:goods:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 16:21:41');
INSERT INTO sys_oper_log VALUES ('163', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"shopping\",\"orderNum\":\"2\",\"menuName\":\"商品管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"goods\",\"component\":\"pharmacy/goods/index\",\"children\":[],\"createTime\":1632988313000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"pharmacy:goods:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 16:21:41');
INSERT INTO sys_oper_log VALUES ('164', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"shopping\",\"orderNum\":\"1\",\"menuName\":\"商品管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"goods\",\"component\":\"pharmacy/goods/index\",\"children\":[],\"createTime\":1632988313000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"pharmacy:goods:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 16:21:49');
INSERT INTO sys_oper_log VALUES ('165', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":\"2\",\"menuName\":\"订单管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"order\",\"component\":\"pharmacy/order/index\",\"children\":[],\"createTime\":1632884148000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"pharmacy:order:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 16:21:59');
INSERT INTO sys_oper_log VALUES ('166', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"money\",\"orderNum\":\"3\",\"menuName\":\"促销管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"promotion\",\"component\":\"pharmacy/promotion/index\",\"children\":[],\"createTime\":1632988384000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2005,\"menuType\":\"C\",\"perms\":\"pharmacy:promotion:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 16:22:11');
INSERT INTO sys_oper_log VALUES ('167', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"message\",\"orderNum\":\"5\",\"menuName\":\"消息管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"news\",\"component\":\"pharmacy/news/index\",\"children\":[],\"createTime\":1632988465000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2007,\"menuType\":\"C\",\"perms\":\"pharmacy:news:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 16:22:21');
INSERT INTO sys_oper_log VALUES ('168', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"edit\",\"orderNum\":\"4\",\"menuName\":\"公告管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"notice\",\"component\":\"pharmacy/notice/index\",\"children\":[],\"createTime\":1632988430000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"pharmacy:notice:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-09-30 16:22:41');
INSERT INTO sys_oper_log VALUES ('169', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tool\",\"orderNum\":\"2\",\"menuName\":\"药品管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"goodsType\",\"component\":\"pharmacy/goodsType/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"pharmacy:goodsType:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 14:43:25');
INSERT INTO sys_oper_log VALUES ('170', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":\"3\",\"menuName\":\"订单管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"order\",\"component\":\"pharmacy/order/index\",\"children\":[],\"createTime\":1632884148000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"pharmacy:order:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 14:43:35');
INSERT INTO sys_oper_log VALUES ('171', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tool\",\"orderNum\":\"2\",\"menuName\":\"药品管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"type\",\"component\":\"pharmacy/type/index\",\"children\":[],\"createTime\":1633157005000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"pharmacy:type:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 14:44:22');
INSERT INTO sys_oper_log VALUES ('172', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":90,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"类别编号\",\"updateTime\":1632887378000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1632887256000,\"tableId\":14,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Type\",\"usableColumn\":false,\"columnId\":91,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"商品类别\",\"isQuery\":\"1\",\"updateTime\":1632887378000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1632887256000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"type\"}],\"businessName\":\"goodsType\",\"moduleName\":\"pharmacy\",\"className\":\"GoodsType\",\"tableName\":\"goods_type\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.pharmacy\",\"functionName\":\"商品类别\",\"tree\":false,\"tableComment\":\"商品类别表\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":14,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 14:45:20');
INSERT INTO sys_oper_log VALUES ('173', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-10-02 14:46:23');
INSERT INTO sys_oper_log VALUES ('174', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tool\",\"orderNum\":\"2\",\"menuName\":\"药品管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"goodsType\",\"component\":\"pharmacy/goodsType/index\",\"children\":[],\"createTime\":1633157005000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"pharmacy:goodsType:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 14:51:20');
INSERT INTO sys_oper_log VALUES ('175', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/1', '127.0.0.1', '内网IP', '{tableIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:02:52');
INSERT INTO sys_oper_log VALUES ('176', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/3', '127.0.0.1', '内网IP', '{tableIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:02:55');
INSERT INTO sys_oper_log VALUES ('177', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/goods_type', '127.0.0.1', '内网IP', '{tableName=goods_type}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:06');
INSERT INTO sys_oper_log VALUES ('178', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/goods', '127.0.0.1', '内网IP', '{tableName=goods}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:09');
INSERT INTO sys_oper_log VALUES ('179', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/news', '127.0.0.1', '内网IP', '{tableName=news}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:17');
INSERT INTO sys_oper_log VALUES ('180', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/news_record', '127.0.0.1', '内网IP', '{tableName=news_record}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:19');
INSERT INTO sys_oper_log VALUES ('181', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/notice', '127.0.0.1', '内网IP', '{tableName=notice}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:22');
INSERT INTO sys_oper_log VALUES ('182', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/order', '127.0.0.1', '内网IP', '{tableName=order}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:28');
INSERT INTO sys_oper_log VALUES ('183', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/prescription', '127.0.0.1', '内网IP', '{tableName=prescription}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:31');
INSERT INTO sys_oper_log VALUES ('184', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/prescription', '127.0.0.1', '内网IP', '{tableName=prescription}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:34');
INSERT INTO sys_oper_log VALUES ('185', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/prescription_drugs', '127.0.0.1', '内网IP', '{tableName=prescription_drugs}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:36');
INSERT INTO sys_oper_log VALUES ('186', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/sales_promotion', '127.0.0.1', '内网IP', '{tableName=sales_promotion}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:39');
INSERT INTO sys_oper_log VALUES ('187', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/sales_promotion', '127.0.0.1', '内网IP', '{tableName=sales_promotion}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:43');
INSERT INTO sys_oper_log VALUES ('188', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/user', '127.0.0.1', '内网IP', '{tableName=user}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:44');
INSERT INTO sys_oper_log VALUES ('189', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/user_info', '127.0.0.1', '内网IP', '{tableName=user_info}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:47');
INSERT INTO sys_oper_log VALUES ('190', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/goods_type', '127.0.0.1', '内网IP', '{tableName=goods_type}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:48');
INSERT INTO sys_oper_log VALUES ('191', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/sales_promotion_goods', '127.0.0.1', '内网IP', '{tableName=sales_promotion_goods}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:52');
INSERT INTO sys_oper_log VALUES ('192', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/goods', '127.0.0.1', '内网IP', '{tableName=goods}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:53');
INSERT INTO sys_oper_log VALUES ('193', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/sales_promotion_record', '127.0.0.1', '内网IP', '{tableName=sales_promotion_record}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:57');
INSERT INTO sys_oper_log VALUES ('194', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/sales_record', '127.0.0.1', '内网IP', '{tableName=sales_record}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:03:58');
INSERT INTO sys_oper_log VALUES ('195', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/shopping_cart', '127.0.0.1', '内网IP', '{tableName=shopping_cart}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:04:00');
INSERT INTO sys_oper_log VALUES ('196', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-10-02 15:04:10');
INSERT INTO sys_oper_log VALUES ('197', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-10-02 15:04:14');
INSERT INTO sys_oper_log VALUES ('198', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tool\",\"orderNum\":\"2\",\"menuName\":\"药品管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"goodstype\",\"component\":\"pharmacy/goodstype/index\",\"children\":[],\"createTime\":1633157005000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"pharmacy:goodstype:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:17:23');
INSERT INTO sys_oper_log VALUES ('199', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tool\",\"orderNum\":\"2\",\"menuName\":\"药品管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"goodsType\",\"component\":\"pharmacy/goodsType/index\",\"children\":[],\"createTime\":1633157005000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"pharmacy:goodstype:index\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-10-02 15:18:32');

-- ----------------------------
-- Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO sys_post VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_post VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_post VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2021-09-29 09:34:24', '', null, '');
INSERT INTO sys_post VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2021-09-29 09:34:24', '', null, '');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO sys_role VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2021-09-29 09:34:24', '', null, '超级管理员');
INSERT INTO sys_role VALUES ('2', '普通角色', 'common', '2', '2', '1', '1', '0', '0', 'admin', '2021-09-29 09:34:24', '', null, '普通角色');

-- ----------------------------
-- Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO sys_role_dept VALUES ('2', '100');
INSERT INTO sys_role_dept VALUES ('2', '101');
INSERT INTO sys_role_dept VALUES ('2', '105');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO sys_role_menu VALUES ('2', '1');
INSERT INTO sys_role_menu VALUES ('2', '2');
INSERT INTO sys_role_menu VALUES ('2', '3');
INSERT INTO sys_role_menu VALUES ('2', '4');
INSERT INTO sys_role_menu VALUES ('2', '100');
INSERT INTO sys_role_menu VALUES ('2', '101');
INSERT INTO sys_role_menu VALUES ('2', '102');
INSERT INTO sys_role_menu VALUES ('2', '103');
INSERT INTO sys_role_menu VALUES ('2', '104');
INSERT INTO sys_role_menu VALUES ('2', '105');
INSERT INTO sys_role_menu VALUES ('2', '106');
INSERT INTO sys_role_menu VALUES ('2', '107');
INSERT INTO sys_role_menu VALUES ('2', '108');
INSERT INTO sys_role_menu VALUES ('2', '109');
INSERT INTO sys_role_menu VALUES ('2', '110');
INSERT INTO sys_role_menu VALUES ('2', '111');
INSERT INTO sys_role_menu VALUES ('2', '112');
INSERT INTO sys_role_menu VALUES ('2', '113');
INSERT INTO sys_role_menu VALUES ('2', '114');
INSERT INTO sys_role_menu VALUES ('2', '115');
INSERT INTO sys_role_menu VALUES ('2', '116');
INSERT INTO sys_role_menu VALUES ('2', '500');
INSERT INTO sys_role_menu VALUES ('2', '501');
INSERT INTO sys_role_menu VALUES ('2', '1000');
INSERT INTO sys_role_menu VALUES ('2', '1001');
INSERT INTO sys_role_menu VALUES ('2', '1002');
INSERT INTO sys_role_menu VALUES ('2', '1003');
INSERT INTO sys_role_menu VALUES ('2', '1004');
INSERT INTO sys_role_menu VALUES ('2', '1005');
INSERT INTO sys_role_menu VALUES ('2', '1006');
INSERT INTO sys_role_menu VALUES ('2', '1007');
INSERT INTO sys_role_menu VALUES ('2', '1008');
INSERT INTO sys_role_menu VALUES ('2', '1009');
INSERT INTO sys_role_menu VALUES ('2', '1010');
INSERT INTO sys_role_menu VALUES ('2', '1011');
INSERT INTO sys_role_menu VALUES ('2', '1012');
INSERT INTO sys_role_menu VALUES ('2', '1013');
INSERT INTO sys_role_menu VALUES ('2', '1014');
INSERT INTO sys_role_menu VALUES ('2', '1015');
INSERT INTO sys_role_menu VALUES ('2', '1016');
INSERT INTO sys_role_menu VALUES ('2', '1017');
INSERT INTO sys_role_menu VALUES ('2', '1018');
INSERT INTO sys_role_menu VALUES ('2', '1019');
INSERT INTO sys_role_menu VALUES ('2', '1020');
INSERT INTO sys_role_menu VALUES ('2', '1021');
INSERT INTO sys_role_menu VALUES ('2', '1022');
INSERT INTO sys_role_menu VALUES ('2', '1023');
INSERT INTO sys_role_menu VALUES ('2', '1024');
INSERT INTO sys_role_menu VALUES ('2', '1025');
INSERT INTO sys_role_menu VALUES ('2', '1026');
INSERT INTO sys_role_menu VALUES ('2', '1027');
INSERT INTO sys_role_menu VALUES ('2', '1028');
INSERT INTO sys_role_menu VALUES ('2', '1029');
INSERT INTO sys_role_menu VALUES ('2', '1030');
INSERT INTO sys_role_menu VALUES ('2', '1031');
INSERT INTO sys_role_menu VALUES ('2', '1032');
INSERT INTO sys_role_menu VALUES ('2', '1033');
INSERT INTO sys_role_menu VALUES ('2', '1034');
INSERT INTO sys_role_menu VALUES ('2', '1035');
INSERT INTO sys_role_menu VALUES ('2', '1036');
INSERT INTO sys_role_menu VALUES ('2', '1037');
INSERT INTO sys_role_menu VALUES ('2', '1038');
INSERT INTO sys_role_menu VALUES ('2', '1039');
INSERT INTO sys_role_menu VALUES ('2', '1040');
INSERT INTO sys_role_menu VALUES ('2', '1041');
INSERT INTO sys_role_menu VALUES ('2', '1042');
INSERT INTO sys_role_menu VALUES ('2', '1043');
INSERT INTO sys_role_menu VALUES ('2', '1044');
INSERT INTO sys_role_menu VALUES ('2', '1045');
INSERT INTO sys_role_menu VALUES ('2', '1046');
INSERT INTO sys_role_menu VALUES ('2', '1047');
INSERT INTO sys_role_menu VALUES ('2', '1048');
INSERT INTO sys_role_menu VALUES ('2', '1049');
INSERT INTO sys_role_menu VALUES ('2', '1050');
INSERT INTO sys_role_menu VALUES ('2', '1051');
INSERT INTO sys_role_menu VALUES ('2', '1052');
INSERT INTO sys_role_menu VALUES ('2', '1053');
INSERT INTO sys_role_menu VALUES ('2', '1054');
INSERT INTO sys_role_menu VALUES ('2', '1055');
INSERT INTO sys_role_menu VALUES ('2', '1056');
INSERT INTO sys_role_menu VALUES ('2', '1057');
INSERT INTO sys_role_menu VALUES ('2', '1058');
INSERT INTO sys_role_menu VALUES ('2', '1059');
INSERT INTO sys_role_menu VALUES ('2', '1060');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO sys_user VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-10-02 14:16:07', 'admin', '2021-09-29 09:34:24', '', '2021-10-02 14:16:07', '管理员');
INSERT INTO sys_user VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-09-29 09:34:24', 'admin', '2021-09-29 09:34:24', '', null, '测试员');

-- ----------------------------
-- Table structure for `sys_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO sys_user_post VALUES ('1', '1');
INSERT INTO sys_user_post VALUES ('2', '2');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO sys_user_role VALUES ('1', '1');
INSERT INTO sys_user_role VALUES ('2', '2');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` varchar(11) DEFAULT NULL COMMENT '账号',
  `pwd` varchar(100) DEFAULT NULL COMMENT '密码',
  `status` varchar(10) DEFAULT '0' COMMENT '身份',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO user VALUES ('1', '11', '11', '1', '2021-09-08 00:00:00');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` varchar(11) DEFAULT NULL COMMENT '账号',
  `name` varchar(40) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `address` varchar(100) DEFAULT NULL COMMENT '收货地址',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `diseases` varchar(100) DEFAULT NULL COMMENT '关注病种',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
