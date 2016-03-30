CREATE DATABASE  IF NOT EXISTS `MedicalReport` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `MedicalReport`;
-- MySQL dump 10.13  Distrib 5.6.17, for osx10.6 (i386)
--
-- Host: localhost    Database: MedicalReport
-- ------------------------------------------------------
-- Server version	5.6.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `booklets`
--

DROP TABLE IF EXISTS `booklets`;
/*!50001 DROP VIEW IF EXISTS `booklets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `booklets` (
  `id` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `month` tinyint NOT NULL,
  `no` tinyint NOT NULL,
  `client_name` tinyint NOT NULL,
  `client_id` tinyint NOT NULL,
  `target_name_kana` tinyint NOT NULL,
  `set_master_alias` tinyint NOT NULL,
  `set_master_id` tinyint NOT NULL,
  `set_data_id` tinyint NOT NULL,
  `order_display_id` tinyint NOT NULL,
  `blood_collected_date` tinyint NOT NULL,
  `sent_date` tinyint NOT NULL,
  `received_datetime` tinyint NOT NULL,
  `cost_price` tinyint NOT NULL,
  `unit_price` tinyint NOT NULL,
  `tax_rate` tinyint NOT NULL,
  `tax_included` tinyint NOT NULL,
  `paid_price` tinyint NOT NULL,
  `unpaid_price` tinyint NOT NULL,
  `payment_date` tinyint NOT NULL,
  `posting_date` tinyint NOT NULL,
  `examiner_billing_month` tinyint NOT NULL,
  `note` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `books`
--

DROP TABLE IF EXISTS `books`;
/*!50001 DROP VIEW IF EXISTS `books`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `books` (
  `id` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `month` tinyint NOT NULL,
  `no` tinyint NOT NULL,
  `client_name` tinyint NOT NULL,
  `client_id` tinyint NOT NULL,
  `target_name_kana` tinyint NOT NULL,
  `set_master_alias` tinyint NOT NULL,
  `set_master_id` tinyint NOT NULL,
  `set_data_id` tinyint NOT NULL,
  `order_display_id` tinyint NOT NULL,
  `blood_collected_date` tinyint NOT NULL,
  `sent_date` tinyint NOT NULL,
  `received_datetime` tinyint NOT NULL,
  `cost_price` tinyint NOT NULL,
  `unit_price` tinyint NOT NULL,
  `tax_rate` tinyint NOT NULL,
  `tax_included` tinyint NOT NULL,
  `paid_price` tinyint NOT NULL,
  `unpaid_price` tinyint NOT NULL,
  `payment_date` tinyint NOT NULL,
  `posting_date` tinyint NOT NULL,
  `examiner_billing_month` tinyint NOT NULL,
  `note` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!50001 DROP VIEW IF EXISTS `discounts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `discounts` (
  `id` tinyint NOT NULL,
  `price_id` tinyint NOT NULL,
  `unit_price` tinyint NOT NULL,
  `tax_included` tinyint NOT NULL,
  `saving` tinyint NOT NULL,
  `discount_times` tinyint NOT NULL,
  `least_numbers` tinyint NOT NULL,
  `start_date` tinyint NOT NULL,
  `end_date` tinyint NOT NULL,
  `type` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `inv_d_Book`
--

DROP TABLE IF EXISTS `inv_d_Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_d_Book` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `set_data_id` varchar(32) DEFAULT NULL,
  `cost_price` decimal(10,0) NOT NULL,
  `unit_price` decimal(10,0) NOT NULL,
  `tax_rate` decimal(3,2) NOT NULL,
  `paid_price` decimal(10,0) NOT NULL DEFAULT '0',
  `payment_date` date DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `examiner_billing_month` varchar(10) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `set_data_id` (`set_data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='請求管理/売掛金データ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_d_Book`
--

LOCK TABLES `inv_d_Book` WRITE;
/*!40000 ALTER TABLE `inv_d_Book` DISABLE KEYS */;
INSERT INTO `inv_d_Book` VALUES (1,2015,10,'SDataES-00000000000000000000001b',1600,8000,1.08,0,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `inv_d_Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_d_Invoice`
--

DROP TABLE IF EXISTS `inv_d_Invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_d_Invoice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) DEFAULT NULL,
  `client_id` varchar(32) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `publish_date` date NOT NULL,
  `limit_date` date NOT NULL,
  `note` varchar(128) DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='請求管理/請求書データ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_d_Invoice`
--

LOCK TABLES `inv_d_Invoice` WRITE;
/*!40000 ALTER TABLE `inv_d_Invoice` DISABLE KEYS */;
INSERT INTO `inv_d_Invoice` VALUES (1,'NKM-S0611999999','Org-00000000003a',2015,11,'2015-10-07','2015-12-31',NULL,0,0);
/*!40000 ALTER TABLE `inv_d_Invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_m_Agent`
--

DROP TABLE IF EXISTS `inv_m_Agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_m_Agent` (
  `actor_id` int(11) NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '代理店ID',
  `name` varchar(50) NOT NULL COMMENT '通称',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '削除フラグ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='請求管理/代理店マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_m_Agent`
--

LOCK TABLES `inv_m_Agent` WRITE;
/*!40000 ALTER TABLE `inv_m_Agent` DISABLE KEYS */;
INSERT INTO `inv_m_Agent` VALUES (12,1,'ダミーデータ',0);
/*!40000 ALTER TABLE `inv_m_Agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_m_AgentCase`
--

DROP TABLE IF EXISTS `inv_m_AgentCase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_m_AgentCase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `agent_case` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `parent_case` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `payment_years` int(11) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `agent_id` (`agent_id`,`agent_case`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_m_AgentCase`
--

LOCK TABLES `inv_m_AgentCase` WRITE;
/*!40000 ALTER TABLE `inv_m_AgentCase` DISABLE KEYS */;
INSERT INTO `inv_m_AgentCase` VALUES (1,1,1,NULL,NULL,'基本',NULL,NULL,2,0);
/*!40000 ALTER TABLE `inv_m_AgentCase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_m_Alias`
--

DROP TABLE IF EXISTS `inv_m_Alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_m_Alias` (
  `organization_id` varchar(16) NOT NULL COMMENT '組織名',
  `name` varchar(20) NOT NULL COMMENT '別名',
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='請求管理/通称マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_m_Alias`
--

LOCK TABLES `inv_m_Alias` WRITE;
/*!40000 ALTER TABLE `inv_m_Alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_m_Alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_m_Config`
--

DROP TABLE IF EXISTS `inv_m_Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_m_Config` (
  `key` varchar(128) NOT NULL,
  `value` varchar(256) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='請求書/基本設定マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_m_Config`
--

LOCK TABLES `inv_m_Config` WRITE;
/*!40000 ALTER TABLE `inv_m_Config` DISABLE KEYS */;
INSERT INTO `inv_m_Config` VALUES ('current_tax_rate','1.08');
/*!40000 ALTER TABLE `inv_m_Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_m_Contact`
--

DROP TABLE IF EXISTS `inv_m_Contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_m_Contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `organization_id` varchar(16) NOT NULL COMMENT '組織ID',
  `type` int(10) NOT NULL DEFAULT '0' COMMENT '種別 0=メイン,1=報告先,2=請求先',
  `alternative_organization_name` varchar(100) DEFAULT NULL COMMENT '専用の組織名',
  `person_name` varchar(32) DEFAULT NULL COMMENT '担当者名',
  `unit_name` varchar(32) DEFAULT NULL COMMENT '担当部署',
  `mrs` varchar(16) DEFAULT NULL COMMENT '敬称',
  `zip_code` varchar(16) NOT NULL COMMENT '郵便番号',
  `prefecture` varchar(32) NOT NULL COMMENT '都道府県',
  `city` varchar(32) NOT NULL COMMENT '市区町村',
  `block` varchar(32) NOT NULL COMMENT '町名',
  `number` varchar(32) NOT NULL COMMENT '番地',
  `building` varchar(64) DEFAULT NULL COMMENT '建物名',
  `phone` varchar(32) DEFAULT NULL COMMENT '電話番号',
  `fax` varchar(32) DEFAULT NULL COMMENT 'FAX番号',
  `email` varchar(128) DEFAULT NULL COMMENT 'メールアドレス',
  `url` varchar(128) DEFAULT NULL COMMENT 'ホームページ',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=削除済',
  PRIMARY KEY (`id`),
  UNIQUE KEY `organization_id` (`organization_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='請求管理/連絡先マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_m_Contact`
--

LOCK TABLES `inv_m_Contact` WRITE;
/*!40000 ALTER TABLE `inv_m_Contact` DISABLE KEYS */;
INSERT INTO `inv_m_Contact` VALUES (1,'Org-00000000001a',0,'ああああああああ','富永朋','予防医学事業部','様','105-0012','東京都','港区','芝大門','2-5-5','住友芝大門ビル111F','03-3505-5119',NULL,'hiroshi.sakazume@noritsu.com',NULL,0),(2,'Org-00000000002a',0,'株式会社 北里大塚バイオメディカルアッセイ研究所','','','','141-0031','','','','','','',NULL,'',NULL,0),(3,'Org-00000000003a',0,NULL,'検査太郎','検査科','様','100-0001','東京都','千代田区','千代田','1-1',NULL,'090-0000-0000',NULL,'sample@clinic.jp',NULL,0),(4,'Org-00000000004a',0,'サンプル臨床','','','','141-0031','','','','','','',NULL,'',NULL,0),(5,'Org-00000000003a',2,'医療法人サンプル会/サンプルクリニック','','','御中','100-0001','東京都','千代田区','千代田','1-1',NULL,'090-0000-0000',NULL,'sample@clinic.jp',NULL,0),(7,'Org-00000000001a',1,'知床病院','山下 知床','予防医療事業部','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `inv_m_Contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_m_Discount`
--

DROP TABLE IF EXISTS `inv_m_Discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_m_Discount` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `price_id` int(10) NOT NULL,
  `unit_price` decimal(10,0) NOT NULL DEFAULT '0',
  `discount_times` int(5) NOT NULL DEFAULT '0',
  `least_numbers` int(10) NOT NULL DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'VDの種類　1=全件、2=以後',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='請求書/割引マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_m_Discount`
--

LOCK TABLES `inv_m_Discount` WRITE;
/*!40000 ALTER TABLE `inv_m_Discount` DISABLE KEYS */;
INSERT INTO `inv_m_Discount` VALUES (1,1,6300,0,100,'2016-01-01','2016-03-31',1,0);
/*!40000 ALTER TABLE `inv_m_Discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_m_Examiner`
--

DROP TABLE IF EXISTS `inv_m_Examiner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_m_Examiner` (
  `actor_id` int(11) NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `alias_name` varchar(20) NOT NULL COMMENT '通称',
  `organization_id` varchar(16) NOT NULL COMMENT '組織ID',
  `examination_cost` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '検査費用（原価）',
  `nominal_examination_cost` decimal(10,0) DEFAULT NULL COMMENT '額面上の検査費用',
  `delegate_to` int(10) DEFAULT '117' COMMENT '検査委託先',
  `is_demandee` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=請求先',
  `is_deliveree` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=報告書送付先',
  `allows_each_prices` tinyint(1) NOT NULL DEFAULT '0' COMMENT '卸の場合に個別の価格設定を許可する',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=削除済',
  PRIMARY KEY (`id`),
  UNIQUE KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='請求管理/検査会社マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_m_Examiner`
--

LOCK TABLES `inv_m_Examiner` WRITE;
/*!40000 ALTER TABLE `inv_m_Examiner` DISABLE KEYS */;
INSERT INTO `inv_m_Examiner` VALUES (4,1,'KOBAL','Org-00000000002a',1600,NULL,NULL,0,0,0,0),(11,2,'サンプル_卸','Org-00000000004a',0,NULL,117,1,1,0,0);
/*!40000 ALTER TABLE `inv_m_Examiner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_m_Price`
--

DROP TABLE IF EXISTS `inv_m_Price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_m_Price` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `organization_id` varchar(16) NOT NULL,
  `set_master_id` varchar(32) NOT NULL,
  `unit_price` decimal(10,0) NOT NULL DEFAULT '8000',
  `contract_date` date DEFAULT NULL,
  `billing_month_after` int(3) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `organization_id` (`organization_id`,`set_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='請求書/単価マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_m_Price`
--

LOCK TABLES `inv_m_Price` WRITE;
/*!40000 ALTER TABLE `inv_m_Price` DISABLE KEYS */;
INSERT INTO `inv_m_Price` VALUES (1,'Org-00000000003a','ExmSet-000000000000000000000001a',8000,NULL,1,0),(2,'Org-00000000004a','ExmSet-000000000000000000000001a',7500,NULL,1,0);
/*!40000 ALTER TABLE `inv_m_Price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_m_Sample`
--

DROP TABLE IF EXISTS `inv_m_Sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_m_Sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_m_Sample`
--

LOCK TABLES `inv_m_Sample` WRITE;
/*!40000 ALTER TABLE `inv_m_Sample` DISABLE KEYS */;
INSERT INTO `inv_m_Sample` VALUES (1,'サンプル',0,0),(2,'BMS直送サンプル',0,0),(3,'有料サンプル',5000,0);
/*!40000 ALTER TABLE `inv_m_Sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_m_Share`
--

DROP TABLE IF EXISTS `inv_m_Share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_m_Share` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agent_id` int(10) NOT NULL COMMENT '代理店ID',
  `agent_case` int(11) NOT NULL DEFAULT '1',
  `least_price` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '基準となる卸値下限',
  `formula` varchar(1024) NOT NULL COMMENT '卸値をxとした計算式',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agent_id` (`agent_id`,`agent_case`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='請求管理/代理店手数料マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_m_Share`
--

LOCK TABLES `inv_m_Share` WRITE;
/*!40000 ALTER TABLE `inv_m_Share` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_m_Share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_r_Agent_Organization`
--

DROP TABLE IF EXISTS `inv_r_Agent_Organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_r_Agent_Organization` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agent_id` int(10) NOT NULL COMMENT '代理店ID',
  `agent_case` int(11) NOT NULL DEFAULT '1',
  `organization_id` varchar(16) NOT NULL COMMENT '組織ID',
  PRIMARY KEY (`id`),
  KEY `agent_id` (`agent_id`,`agent_case`),
  KEY `organization_id` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='請求書/代理店-医療機関リレーション';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_r_Agent_Organization`
--

LOCK TABLES `inv_r_Agent_Organization` WRITE;
/*!40000 ALTER TABLE `inv_r_Agent_Organization` DISABLE KEYS */;
INSERT INTO `inv_r_Agent_Organization` VALUES (1,1,1,'Org-00000000003a');
/*!40000 ALTER TABLE `inv_r_Agent_Organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_r_Invoice_Book`
--

DROP TABLE IF EXISTS `inv_r_Invoice_Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_r_Invoice_Book` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) NOT NULL,
  `book_id` int(10) NOT NULL,
  `unit_price` decimal(10,0) NOT NULL DEFAULT '0',
  `tax_included` decimal(10,0) NOT NULL DEFAULT '0',
  `unpaid_price` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_id` (`invoice_id`,`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='請求書/請求書-売掛金リレーション';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_r_Invoice_Book`
--

LOCK TABLES `inv_r_Invoice_Book` WRITE;
/*!40000 ALTER TABLE `inv_r_Invoice_Book` DISABLE KEYS */;
INSERT INTO `inv_r_Invoice_Book` VALUES (1,1,1,8000,8640,8640);
/*!40000 ALTER TABLE `inv_r_Invoice_Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_r_Organization_Examiner`
--

DROP TABLE IF EXISTS `inv_r_Organization_Examiner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_r_Organization_Examiner` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `organization_id` varchar(16) NOT NULL COMMENT '組織ID',
  `examiner_id` int(10) NOT NULL DEFAULT '2' COMMENT '検査会社ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `organization_id` (`organization_id`),
  KEY `examiner_id` (`examiner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='請求管理/医療機関・検査会社リレーション';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_r_Organization_Examiner`
--

LOCK TABLES `inv_r_Organization_Examiner` WRITE;
/*!40000 ALTER TABLE `inv_r_Organization_Examiner` DISABLE KEYS */;
INSERT INTO `inv_r_Organization_Examiner` VALUES (1,'Org-00000000003a',1);
/*!40000 ALTER TABLE `inv_r_Organization_Examiner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `leaks`
--

DROP TABLE IF EXISTS `leaks`;
/*!50001 DROP VIEW IF EXISTS `leaks`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `leaks` (
  `order_display_id` tinyint NOT NULL,
  `set_data_id` tinyint NOT NULL,
  `sent_date_time` tinyint NOT NULL,
  `client_id` tinyint NOT NULL,
  `set_master_id` tinyint NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!50001 DROP VIEW IF EXISTS `prices`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `prices` (
  `id` tinyint NOT NULL,
  `organization_name` tinyint NOT NULL,
  `organization_id` tinyint NOT NULL,
  `set_master_alias` tinyint NOT NULL,
  `set_master_name` tinyint NOT NULL,
  `set_master_id` tinyint NOT NULL,
  `unit_price` tinyint NOT NULL,
  `tax_included` tinyint NOT NULL,
  `contract_date` tinyint NOT NULL,
  `billing_month_after` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sets`
--

DROP TABLE IF EXISTS `sets`;
/*!50001 DROP VIEW IF EXISTS `sets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sets` (
  `id` tinyint NOT NULL,
  `set_data_id` tinyint NOT NULL,
  `order_display_id` tinyint NOT NULL,
  `order_card_id` tinyint NOT NULL,
  `blood_collected_date` tinyint NOT NULL,
  `target_name_kana` tinyint NOT NULL,
  `target_name` tinyint NOT NULL,
  `target_birthday` tinyint NOT NULL,
  `target_age` tinyint NOT NULL,
  `target_sex` tinyint NOT NULL,
  `set_master_alias` tinyint NOT NULL,
  `set_master_name` tinyint NOT NULL,
  `set_master_id` tinyint NOT NULL,
  `course_master_name` tinyint NOT NULL,
  `course_master_id` tinyint NOT NULL,
  `client_name` tinyint NOT NULL,
  `client_id` tinyint NOT NULL,
  `client_unit_name` tinyint NOT NULL,
  `client_unit_id` tinyint NOT NULL,
  `client_user_name` tinyint NOT NULL,
  `client_user_id` tinyint NOT NULL,
  `doctor` tinyint NOT NULL,
  `note` tinyint NOT NULL,
  `received_datetime` tinyint NOT NULL,
  `entered_datetime` tinyint NOT NULL,
  `sent_datetime` tinyint NOT NULL,
  `delivery_date` tinyint NOT NULL,
  `status_id` tinyint NOT NULL,
  `sample_type` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `task_list_records`
--

DROP TABLE IF EXISTS `task_list_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_list_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sqn` int(11) DEFAULT NULL,
  `group_code` varchar(255) DEFAULT NULL,
  `collector_name` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `patient_family_name` varchar(255) DEFAULT NULL,
  `patient_first_name` varchar(255) DEFAULT NULL,
  `medical_record_id` varchar(255) DEFAULT NULL,
  `blood_collected_date` varchar(255) DEFAULT NULL,
  `nb_examination` varchar(255) DEFAULT NULL,
  `unique_code` varchar(255) DEFAULT NULL,
  `nb_reports` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `destination_name` varchar(255) DEFAULT NULL,
  `destination_dep_name` varchar(255) DEFAULT NULL,
  `alternative_destination_dep_name` varchar(255) DEFAULT NULL,
  `destination_psn_name` varchar(255) DEFAULT NULL,
  `alternative_destination_psn_family_name` varchar(255) DEFAULT NULL,
  `alternative_destination_psn_first_name` varchar(255) DEFAULT NULL,
  `destination_honorific` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `adr1` varchar(255) DEFAULT NULL,
  `adr2` varchar(255) DEFAULT NULL,
  `adr3` varchar(255) DEFAULT NULL,
  `adr4` varchar(255) DEFAULT NULL,
  `adr_building` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `group_code` (`group_code`,`sqn`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_list_records`
--

LOCK TABLES `task_list_records` WRITE;
/*!40000 ALTER TABLE `task_list_records` DISABLE KEYS */;
INSERT INTO `task_list_records` VALUES (43,1,'20160227204537','KOBAL','サンプルクリニック','noUserFamilyName','noUserFirstName','01234567','2015-11-01 00:00:00','1','\"UNIQUE-CODE\"','2','A3-CDR','','','検査科','','検査','太郎','','','','','','','','2016-02-27 00:00:00'),(44,2,'20160227204537','','NKメディコ株式会社','エヌケイ','太郎','00001','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(45,3,'20160227204537','','NKメディコ株式会社','エヌケイ','花子','00002','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(46,4,'20160227204537','','NKメディコ株式会社','山下','拓','00003','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(47,5,'20160227204537','','NKメディコ株式会社','飯田','健雄','00004','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(48,6,'20160227204537','','NKメディコ株式会社','岡澤','和弘','00005','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(49,7,'20160227204537','','NKメディコ株式会社','方志','嘉孝','00006','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(50,8,'20160227204537','','NKメディコ株式会社','米谷','諒','00007','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(51,9,'20160227204537','','NKメディコ株式会社','勝田','諒','00008','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(52,10,'20160227204537','','NKメディコ株式会社','室田','鉄兵','00009','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(53,11,'20160227204537','','NKメディコ株式会社','遠藤','雄','00010','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(54,12,'20160227204537','','NKメディコ株式会社','青木','ゆかり','00011','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(55,13,'20160227204537','','NKメディコ株式会社','野口','和秀','00012','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(56,14,'20160227204537','','NKメディコ株式会社','井川','恵美子','00013','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(57,15,'20160227204537','','NKメディコ株式会社','松本','智佳','00014','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(58,16,'20160227204537','','NKメディコ株式会社','大沢','和樹','00015','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(59,17,'20160227204537','','NKメディコ株式会社','大原','一樹','00016','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(60,18,'20160227204537','','NKメディコ株式会社','岩崎','敏','00017','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(61,19,'20160227204537','','NKメディコ株式会社','鶴見','敏行','00018','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(62,20,'20160227204537','','NKメディコ株式会社','瀧川','顕憲','00019','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(63,21,'20160227204537','','NKメディコ株式会社','林','サン','00020','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(64,1,'20160227204713','KOBAL','サンプルクリニック','noUserFamilyName','noUserFirstName','01234567','2015-11-01 00:00:00','1','\"UNIQUE-CODE\"','2','A3-CDR','','','検査科','','検査','太郎','','','','','','','','2016-02-27 00:00:00'),(65,2,'20160227204713','','NKメディコ株式会社','エヌケイ','太郎','00001','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(66,3,'20160227204713','','NKメディコ株式会社','エヌケイ','花子','00002','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(67,4,'20160227204713','','NKメディコ株式会社','山下','拓','00003','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(68,5,'20160227204713','','NKメディコ株式会社','飯田','健雄','00004','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(69,6,'20160227204713','','NKメディコ株式会社','岡澤','和弘','00005','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(70,7,'20160227204713','','NKメディコ株式会社','方志','嘉孝','00006','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(71,8,'20160227204713','','NKメディコ株式会社','米谷','諒','00007','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(72,9,'20160227204713','','NKメディコ株式会社','勝田','諒','00008','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(73,10,'20160227204713','','NKメディコ株式会社','室田','鉄兵','00009','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(74,11,'20160227204713','','NKメディコ株式会社','遠藤','雄','00010','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(75,12,'20160227204713','','NKメディコ株式会社','青木','ゆかり','00011','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(76,13,'20160227204713','','NKメディコ株式会社','野口','和秀','00012','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(77,14,'20160227204713','','NKメディコ株式会社','井川','恵美子','00013','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(78,15,'20160227204713','','NKメディコ株式会社','松本','智佳','00014','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(79,16,'20160227204713','','NKメディコ株式会社','大沢','和樹','00015','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(80,17,'20160227204713','','NKメディコ株式会社','大原','一樹','00016','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(81,18,'20160227204713','','NKメディコ株式会社','岩崎','敏','00017','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(82,19,'20160227204713','','NKメディコ株式会社','鶴見','敏行','00018','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(83,20,'20160227204713','','NKメディコ株式会社','瀧川','顕憲','00019','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00'),(84,21,'20160227204713','','NKメディコ株式会社','林','サン','00020','2015-12-31 00:00:00','1','-','2','A3','知床病院','予防医療事業部','予防医療事業部','山下 知床','平井','建丸','様','141-0031','東京都','品川区','西五反田','2-1-22','プラネットビル６階','2016-02-27 00:00:00');
/*!40000 ALTER TABLE `task_list_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_ActionLog`
--

DROP TABLE IF EXISTS `tbl_d_ActionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_ActionLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `user_id` varchar(16) NOT NULL,
  `client_ip` varchar(16) NOT NULL,
  `client_agent` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `action` varchar(32) NOT NULL,
  `object` varchar(32) NOT NULL,
  `detail` text,
  `result` varchar(32) NOT NULL,
  `message` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_ActionLog`
--

LOCK TABLES `tbl_d_ActionLog` WRITE;
/*!40000 ALTER TABLE `tbl_d_ActionLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_d_ActionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_Aggregation`
--

DROP TABLE IF EXISTS `tbl_d_Aggregation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_Aggregation` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `order_display_id` varchar(32) NOT NULL COMMENT '依頼ID',
  PRIMARY KEY (`id`,`order_display_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='依頼管理/複数回受診名寄せデータ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_Aggregation`
--

LOCK TABLES `tbl_d_Aggregation` WRITE;
/*!40000 ALTER TABLE `tbl_d_Aggregation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_d_Aggregation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_Migration`
--

DROP TABLE IF EXISTS `tbl_d_Migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_Migration` (
  `OrganizationId` varchar(16) NOT NULL,
  `Done` tinyint(4) NOT NULL,
  PRIMARY KEY (`OrganizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_Migration`
--

LOCK TABLES `tbl_d_Migration` WRITE;
/*!40000 ALTER TABLE `tbl_d_Migration` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_d_Migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_SheetDataAttachDataList`
--

DROP TABLE IF EXISTS `tbl_d_SheetDataAttachDataList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_SheetDataAttachDataList` (
  `SheetDataAttachDataListIndex` int(10) NOT NULL AUTO_INCREMENT,
  `SheetDataAttachDataListId` varchar(32) NOT NULL,
  `SheetDataAttachDataListIdCreatedUserId` varchar(32) NOT NULL,
  `SheetDataAttachDataListIdCreatedDateTime` datetime NOT NULL,
  `SheetDataAttachDataListIdLastUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataAttachDataListIdLastUpdatedDateTime` datetime NOT NULL,
  `SheetDataAttachDataListIdIsDeleted` smallint(6) NOT NULL,
  `SheetDataAttachDataListIdDeletedUserId` varchar(32) NOT NULL,
  `SheetDataAttachDataListIdDeletedDateTime` datetime NOT NULL,
  `SheetDataAttachDataListSheetDataCommonId` varchar(32) NOT NULL,
  `SheetDataAttachDataListAttachOrdinalNumber` smallint(6) NOT NULL,
  `SheetDataAttachDataListAttachLimitForDeleteDateTime` datetime NOT NULL,
  `SheetDataAttachDataListAttachIsDeleted` smallint(6) NOT NULL,
  `SheetDataAttachDataListAttachDeletedUserId` varchar(32) NOT NULL,
  `SheetDataAttachDataListAttachDeletedDateTime` datetime NOT NULL,
  `SheetDataAttachDataListAttachSenderPcMacAddress` varchar(128) NOT NULL,
  `SheetDataAttachDataListAttachSenderPcFullPath` varchar(1000) NOT NULL,
  `SheetDataAttachDataListAttachHashIsChecked` smallint(6) NOT NULL,
  `SheetDataAttachDataListAttachHashListIsCreated` smallint(6) NOT NULL,
  `SheetDataAttachDataListAttachHashResult` varchar(512) NOT NULL,
  `SheetDataAttachDataListAttachHashListLink` varchar(1000) NOT NULL,
  `SheetDataAttachDataListAttachHashListSize` bigint(20) NOT NULL,
  `SheetDataAttachDataListAttachHashListDownloadTimesExecuted` bigint(20) NOT NULL,
  `SheetDataAttachDataListAttachTitle` varchar(500) NOT NULL,
  `SheetDataAttachDataListAttachLink` varchar(1000) NOT NULL,
  `SheetDataAttachDataListAttachNumOfFiles` bigint(20) NOT NULL,
  `SheetDataAttachDataListAttachSize` bigint(20) NOT NULL,
  `SheetDataAttachDataListAttachPermissionType` smallint(6) NOT NULL,
  `SheetDataAttachDataListAttachDownloadTimesAllowed` bigint(20) NOT NULL,
  `SheetDataAttachDataListAttachDownloadTimesExecuted` bigint(20) NOT NULL,
  `SheetDataAttachDataListAttribute` varchar(250) NOT NULL,
  `SheetDataAttachDataListNote` varchar(500) NOT NULL,
  `SheetDataAttachDataListIdUserIdInCharge` varchar(32) NOT NULL,
  `SheetDataAttachDataListIsActiveValue` smallint(6) NOT NULL,
  `SheetDataAttachDataListIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`SheetDataAttachDataListIndex`),
  UNIQUE KEY `SheetDataAttachDataListId` (`SheetDataAttachDataListId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='依頼管理/添付リストデータ[未使用]';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_SheetDataAttachDataList`
--

LOCK TABLES `tbl_d_SheetDataAttachDataList` WRITE;
/*!40000 ALTER TABLE `tbl_d_SheetDataAttachDataList` DISABLE KEYS */;
INSERT INTO `tbl_d_SheetDataAttachDataList` VALUES (1,'SDataADL-0000000000000000000000a','User-00000000000000000000000000a','2012-08-27 21:56:04','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','Sdata-0000000000000000000000000a',-1,'1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','noSheetDataAttachDataListAttachSenderPcMacAddress','noSheetDataAttachDataListAttachSenderPcFullPath',-1,-1,'noSheetDataAttachDataListAttachHashResult','noSheetDataAttachDataListAttachHashListLink',-1,-1,'noSheetDataAttachDataListAttachTitle','noSheetDataAttachDataListAttachLink',-1,-1,-1,-1,-1,'noSheetDataAttachDataListAttribute','noSheetDataAttachDataListNote','User-00000000000000000000000000a',-1,'2012-08-27 21:56:04');
/*!40000 ALTER TABLE `tbl_d_SheetDataAttachDataList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_SheetDataCommon`
--

DROP TABLE IF EXISTS `tbl_d_SheetDataCommon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_SheetDataCommon` (
  `SheetDataCommonIndex` int(10) NOT NULL AUTO_INCREMENT,
  `SheetDataCommonId` varchar(32) NOT NULL,
  `SheetDataCommonIdCreatedUserId` varchar(32) NOT NULL,
  `SheetDataCommonIdCreatedDateTime` datetime NOT NULL,
  `SheetDataCommonIdLastUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataCommonIdLastUpdatedDateTime` datetime NOT NULL,
  `SheetDataCommonIdIsDeleted` smallint(6) NOT NULL,
  `SheetDataCommonIdDeletedUserId` varchar(32) NOT NULL,
  `SheetDataCommonIdDeletedDateTime` datetime NOT NULL,
  `SheetDataCommonPassword` varchar(255) NOT NULL,
  `SheetDataCommonIsAlias` varchar(32) NOT NULL,
  `SheetDataCommonPjId` varchar(32) NOT NULL,
  `SheetDataCommonSheetStatusId` varchar(16) NOT NULL COMMENT 'ステータス 依頼登録済=Sstatus-0000070a, 結果入力済=Sstatus-0000080a, 発送完了済=Sstatus-0000210a',
  `SheetDataCommonHolderUserId` varchar(32) NOT NULL,
  `SheetDataCommonSheetTypeId` varchar(16) NOT NULL,
  `SheetDataCommonPriority` varchar(8) NOT NULL,
  `SheetDataCommonLimitForAnswerDateTime` datetime NOT NULL,
  `SheetDataCommonTitle` varchar(500) NOT NULL,
  `SheetDataCommonCreatedMatter` varchar(4000) NOT NULL,
  `SheetDataCommonAnsweredMatter` varchar(4000) NOT NULL,
  `SheetDataCommonConfirmedMatter` varchar(4000) NOT NULL,
  `SheetDataCommonCompletedMatter` varchar(4000) NOT NULL,
  `SheetDataCommonIdUserIdInCharge` varchar(32) NOT NULL,
  `SheetDataCommonIsActiveValue` smallint(6) NOT NULL,
  `SheetDataCommonIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`SheetDataCommonIndex`),
  UNIQUE KEY `SheetDataCommonId` (`SheetDataCommonId`),
  KEY `SheetDataCommonSheetTypeId` (`SheetDataCommonSheetTypeId`),
  KEY `SheetDataCommonSheetStatusId` (`SheetDataCommonSheetStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='依頼管理/共通項目データ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_SheetDataCommon`
--

LOCK TABLES `tbl_d_SheetDataCommon` WRITE;
/*!40000 ALTER TABLE `tbl_d_SheetDataCommon` DISABLE KEYS */;
INSERT INTO `tbl_d_SheetDataCommon` VALUES (1,'SData-0000000000000000000000000b','User-00000000000000000000000000a','2012-08-27 20:02:07','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','noSheetDataCommonPassword','Sdata-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000000a','User-00000000000000000000000000a','STyp-0000000000a','-','1999-12-31 23:59:59','noSheetDataCommonTitle','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000000a',-1,'2012-08-27 20:02:07'),(2,'SData-0000000000000000000000001b','User-00000000000000000000015173a','2015-10-30 19:38:02','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000210a','User-00000000000000000000015173a','STyp-0000000001a','B','1999-12-31 23:59:59','検査依頼(2015-10-30 19:38:02)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000015173a',1,'2015-10-30 19:38:02'),(3,'SData-0000000000000000000000002b','User-00000000000000000000000002a','2016-02-25 07:18:57','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:57)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:57'),(4,'SData-0000000000000000000000003b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(5,'SData-0000000000000000000000004b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(6,'SData-0000000000000000000000005b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(7,'SData-0000000000000000000000006b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(8,'SData-0000000000000000000000007b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(9,'SData-0000000000000000000000008b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(10,'SData-0000000000000000000000009b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(11,'SData-0000000000000000000000010b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(12,'SData-0000000000000000000000011b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(13,'SData-0000000000000000000000012b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(14,'SData-0000000000000000000000013b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(15,'SData-0000000000000000000000014b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(16,'SData-0000000000000000000000015b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(17,'SData-0000000000000000000000016b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(18,'SData-0000000000000000000000017b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(19,'SData-0000000000000000000000018b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(20,'SData-0000000000000000000000019b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(21,'SData-0000000000000000000000020b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(22,'SData-0000000000000000000000021b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000080a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-25 07:18:58)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(23,'SData-0000000000000000000000022b','User-00000000000000000000015173a','2016-02-27 11:09:08','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','noSheetDataCommonPassword','SData-0000000000000000000000000a','Pj-0000000000000000000000000000a','Sstatus-0000070a','User-00000000000000000000000003a','STyp-0000000001a','B','2000-01-01 00:00:00','検査依頼(2016-02-27 11:09:08)','noSheetDataCommonCreatedMatter','noSheetDataCommonAnsweredMatter','noSheetDataCommonConfirmedMatter','noSheetDataCommonCompletedMatter','User-00000000000000000000015173a',1,'2016-02-27 11:09:08');
/*!40000 ALTER TABLE `tbl_d_SheetDataCommon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_SheetDataExaminationCourse`
--

DROP TABLE IF EXISTS `tbl_d_SheetDataExaminationCourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_SheetDataExaminationCourse` (
  `SheetDataExaminationCourseIndex` int(10) NOT NULL AUTO_INCREMENT,
  `SheetDataExaminationCourseId` varchar(32) NOT NULL,
  `SheetDataExaminationCourseIdCreatedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationCourseIdCreatedDateTime` datetime NOT NULL,
  `SheetDataExaminationCourseIdLastUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationCourseIdLastUpdatedDateTime` datetime NOT NULL,
  `SheetDataExaminationCourseIdIsDeleted` smallint(6) NOT NULL,
  `SheetDataExaminationCourseIdDeletedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationCourseIdDeletedDateTime` datetime NOT NULL,
  `SheetDataExaminationCourseSheetDataExaminationOrderId` varchar(32) NOT NULL,
  `SheetDataExaminationCourseExaminationCourseId` varchar(32) NOT NULL,
  `SheetDataExaminationCourseDisplayExaminationCourseId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderResearchResult` varchar(4000) NOT NULL,
  `SheetDataExaminationCourseNote` varchar(1000) NOT NULL,
  `SheetDataExaminationCourseIdUserIdInCharge` varchar(32) NOT NULL,
  `SheetDataExaminationCourseIsActiveValue` smallint(6) NOT NULL,
  `SheetDataExaminationCourseIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`SheetDataExaminationCourseIndex`),
  UNIQUE KEY `SheetDataExaminationCourseId` (`SheetDataExaminationCourseId`),
  KEY `SheetDataExaminationCourseSheetDataExaminationOrderId` (`SheetDataExaminationCourseSheetDataExaminationOrderId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='依頼管理/検査コースデータ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_SheetDataExaminationCourse`
--

LOCK TABLES `tbl_d_SheetDataExaminationCourse` WRITE;
/*!40000 ALTER TABLE `tbl_d_SheetDataExaminationCourse` DISABLE KEYS */;
INSERT INTO `tbl_d_SheetDataExaminationCourse` VALUES (1,'SDataEC-00000000000000000000000b','User-00000000000000000000000000a','2012-09-21 17:18:40','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','SdataEO-00000000000000000000000a','ExmCrs-000000000000000000000000a','E00000000000000O00C000','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000000a',-1,'2012-09-21 17:18:40'),(2,'SDataEC-00000000000000000000001b','User-00000000000000000000015173a','2015-10-30 19:38:03','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SDataEO-00000000000000000000001b','ExmCrs-000000000000000000000000a','b00010003030001001C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000015173a',1,'2015-10-30 19:38:03'),(3,'SDataEC-00000000000000000000002b','User-00000000000000000000000002a','2016-02-25 07:18:57','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000002b','ExmCrs-000000000000000000000000a','160225161857992382C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:57'),(4,'SDataEC-00000000000000000000003b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000003b','ExmCrs-000000000000000000000000a','160225161858001627C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(5,'SDataEC-00000000000000000000004b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000004b','ExmCrs-000000000000000000000000a','160225161858025056C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(6,'SDataEC-00000000000000000000005b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000005b','ExmCrs-000000000000000000000000a','160225161858042119C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(7,'SDataEC-00000000000000000000006b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000006b','ExmCrs-000000000000000000000000a','160225161858058650C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(8,'SDataEC-00000000000000000000007b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000007b','ExmCrs-000000000000000000000000a','160225161858075287C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(9,'SDataEC-00000000000000000000008b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000008b','ExmCrs-000000000000000000000000a','160225161858091882C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(10,'SDataEC-00000000000000000000009b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000009b','ExmCrs-000000000000000000000000a','160225161858101231C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(11,'SDataEC-00000000000000000000010b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000010b','ExmCrs-000000000000000000000000a','160225161858115681C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(12,'SDataEC-00000000000000000000011b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000011b','ExmCrs-000000000000000000000000a','160225161858121560C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(13,'SDataEC-00000000000000000000012b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000012b','ExmCrs-000000000000000000000000a','160225161858138223C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(14,'SDataEC-00000000000000000000013b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000013b','ExmCrs-000000000000000000000000a','160225161858144292C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(15,'SDataEC-00000000000000000000014b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000014b','ExmCrs-000000000000000000000000a','160225161858149895C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(16,'SDataEC-00000000000000000000015b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000015b','ExmCrs-000000000000000000000000a','160225161858155377C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(17,'SDataEC-00000000000000000000016b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000016b','ExmCrs-000000000000000000000000a','160225161858160802C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(18,'SDataEC-00000000000000000000017b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000017b','ExmCrs-000000000000000000000000a','160225161858166284C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(19,'SDataEC-00000000000000000000018b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000018b','ExmCrs-000000000000000000000000a','160225161858172968C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(20,'SDataEC-00000000000000000000019b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000019b','ExmCrs-000000000000000000000000a','160225161858178870C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(21,'SDataEC-00000000000000000000020b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000020b','ExmCrs-000000000000000000000000a','160225161858184567C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(22,'SDataEC-00000000000000000000021b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000021b','ExmCrs-000000000000000000000000a','160225161858190262C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(23,'SDataEC-00000000000000000000022b','User-00000000000000000000015173a','2016-02-27 11:09:09','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEO-00000000000000000000022b','ExmCrs-000000000000000000000000a','160227200908977602C001','noSheetDataExaminationOrderResearchResult','noSheetDataExaminationCourseNote','User-00000000000000000000015173a',1,'2016-02-27 11:09:09');
/*!40000 ALTER TABLE `tbl_d_SheetDataExaminationCourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_SheetDataExaminationInterviewChoice`
--

DROP TABLE IF EXISTS `tbl_d_SheetDataExaminationInterviewChoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_SheetDataExaminationInterviewChoice` (
  `SheetDataExaminationInterviewChoiceIndex` int(10) NOT NULL AUTO_INCREMENT,
  `SheetDataExaminationInterviewChoiceId` varchar(32) NOT NULL,
  `SheetDataExaminationInterviewChoiceIdCreatedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationInterviewChoiceIdCreatedDateTime` datetime NOT NULL,
  `SheetDataExaminationInterviewChoiceIdLastUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationInterviewChoiceIdLastUpdatedDateTime` datetime NOT NULL,
  `SheetDataExaminationInterviewChoiceIdIsDeleted` smallint(6) NOT NULL,
  `SheetDataExaminationInterviewChoiceIdDeletedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationInterviewChoiceIdDeletedDateTime` datetime NOT NULL,
  `SheetDataExaminationInterviewChoiceSheetDataExaminationSetId` varchar(32) NOT NULL,
  `SheetDataExaminationInterviewChoiceExaminationInterviewId` varchar(32) NOT NULL,
  `SheetDataExaminationInterviewChoiceExaminationInterviewChoiceId` varchar(32) NOT NULL,
  `SheetDataExaminationInterviewChoiceDisplayExaminationIntrvwChcId` varchar(32) NOT NULL,
  `SheetDataExaminationInterviewChoiceNote` varchar(1000) NOT NULL,
  `SheetDataExaminationInterviewChoiceIdUserIdInCharge` varchar(32) NOT NULL,
  `SheetDataExaminationInterviewChoiceIsActiveValue` smallint(6) NOT NULL,
  `SheetDataExaminationInterviewChoiceIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`SheetDataExaminationInterviewChoiceIndex`),
  UNIQUE KEY `SheetDataExaminationInterviewChoiceId` (`SheetDataExaminationInterviewChoiceId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='依頼管理/問診データ[未使用]';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_SheetDataExaminationInterviewChoice`
--

LOCK TABLES `tbl_d_SheetDataExaminationInterviewChoice` WRITE;
/*!40000 ALTER TABLE `tbl_d_SheetDataExaminationInterviewChoice` DISABLE KEYS */;
INSERT INTO `tbl_d_SheetDataExaminationInterviewChoice` VALUES (1,'SDataES-00000000000000000000000b','User-00000000000000000000000000a','2012-08-27 21:38:26','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','SdataES-000000000000000000000000','ExmIntrvw-000000000000000000000a','ExmIntrvwChc-000000000000000000a','EO000a00a000a-EC00a-ES00a-EI00a','noSheetDataExaminationSetNote','User-00000000000000000000000000a',-1,'2012-08-27 21:38:26');
/*!40000 ALTER TABLE `tbl_d_SheetDataExaminationInterviewChoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_SheetDataExaminationItem`
--

DROP TABLE IF EXISTS `tbl_d_SheetDataExaminationItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_SheetDataExaminationItem` (
  `SheetDataExaminationItemIndex` int(10) NOT NULL AUTO_INCREMENT,
  `SheetDataExaminationItemId` varchar(32) NOT NULL,
  `SheetDataExaminationItemIdCreatedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationItemIdCreatedDateTime` datetime NOT NULL,
  `SheetDataExaminationItemIdLastUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationItemIdLastUpdatedDateTime` datetime NOT NULL,
  `SheetDataExaminationItemIdIsDeleted` smallint(6) NOT NULL,
  `SheetDataExaminationItemIdDeletedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationItemIdDeletedDateTime` datetime NOT NULL,
  `SheetDataExaminationItemSheetDataExaminationSetId` varchar(32) NOT NULL,
  `SheetDataExaminationItemExaminationItemId` varchar(32) NOT NULL,
  `SheetDataExaminationItemSpecimenCollectedDateTime` datetime NOT NULL,
  `SheetDataExaminationItemSpecimenMeasuredDateTime` datetime NOT NULL,
  `SheetDataExaminationItemSpecimenReportedDateTime` datetime NOT NULL,
  `SheetDataExaminationItemTestResultValue` varchar(64) NOT NULL,
  `SheetDataExaminationItemConversionEquation` varchar(64) NOT NULL,
  `SheetDataExaminationItemExaminationItemIdConverted` varchar(32) NOT NULL,
  `SheetDataExaminationItemTestResultValueConverted` varchar(64) NOT NULL,
  `SheetDataExaminationItemConversionAbstraction` varchar(64) NOT NULL,
  `SheetDataExaminationItemTestResultValueAbstracted` varchar(64) NOT NULL,
  `SheetDataExaminationItemTestSystemId` varchar(32) NOT NULL,
  `SheetDataExaminationItemTestSystemTestItemId` varchar(32) NOT NULL,
  `SheetDataExaminationItemDisplayExaminationItemId` varchar(32) NOT NULL,
  `SheetDataExaminationItemNote` varchar(1000) NOT NULL,
  `SheetDataExaminationItemIdUserIdInCharge` varchar(32) NOT NULL,
  `SheetDataExaminationItemIsActiveValue` smallint(6) NOT NULL,
  `SheetDataExaminationItemIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`SheetDataExaminationItemIndex`),
  UNIQUE KEY `SheetDataExaminationItemId` (`SheetDataExaminationItemId`),
  KEY `SheetDataExaminationItemSheetDataExaminationSetId` (`SheetDataExaminationItemSheetDataExaminationSetId`),
  KEY `SheetDataExaminationItemExaminationItemId` (`SheetDataExaminationItemExaminationItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='依頼管理/検査結果データ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_SheetDataExaminationItem`
--

LOCK TABLES `tbl_d_SheetDataExaminationItem` WRITE;
/*!40000 ALTER TABLE `tbl_d_SheetDataExaminationItem` DISABLE KEYS */;
INSERT INTO `tbl_d_SheetDataExaminationItem` VALUES (1,'SDataEI-00000000000000000000000b','User-00000000000000000000000000a','2012-09-21 17:15:02','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','SdataES-00000000000000000000000a','ExmItm-000000000000000000000000a','1999-12-31 23:59:59','1999-12-31 23:59:59','1999-12-31 23:59:59','noSheetDataExaminationItemTestResultValue','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','E00000000000000O00C000S000I0000','noSheetDataExaminationItemNote','User-00000000000000000000000000a',-1,'2012-09-21 17:15:02'),(2,'SDataEI-00000000000000000000001b','User-00000000000000000000015173a','2015-10-30 19:38:03','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SDataES-00000000000000000000001b','ExmItm-000000000000000000000001a','2015-11-01 00:00:00','1999-12-31 23:59:59','1999-12-31 23:59:59','150.0','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','b00010003030001001C001S001I0001','noSheetDataExaminationItemNote','User-00000000000000000000015173a',1,'2015-10-30 19:38:03'),(3,'SDataEI-00000000000000000000002b','User-00000000000000000000015173a','2015-10-30 19:38:03','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SDataES-00000000000000000000001b','ExmItm-000000000000000000000002a','2015-11-01 00:00:00','1999-12-31 23:59:59','1999-12-31 23:59:59','45.0','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','b00010003030001001C001S001I0002','noSheetDataExaminationItemNote','User-00000000000000000000015173a',1,'2015-10-30 19:38:03'),(4,'SDataEI-00000000000000000000003b','User-00000000000000000000015173a','2015-10-30 19:40:25','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SDataES-00000000000000000000001b','ExmItm-000000000000000000000003a','2015-11-01 00:00:00','1999-12-31 23:59:59','1999-12-31 23:59:59','500','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','b00010003030001001C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000015173a',1,'2015-10-30 19:40:25'),(5,'SDataEI-00000000000000000000004b','User-00000000000000000000015173a','2015-10-30 19:40:25','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SDataES-00000000000000000000001b','ExmItm-000000000000000000000004a','2015-11-01 00:00:00','1999-12-31 23:59:59','1999-12-31 23:59:59','5','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','b00010003030001001C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000015173a',1,'2015-10-30 19:40:25'),(6,'SDataEI-00000000000000000000005b','User-00000000000000000000015173a','2015-10-30 19:40:25','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SDataES-00000000000000000000001b','ExmItm-000000000000000000000005a','2015-11-01 00:00:00','1999-12-31 23:59:59','1999-12-31 23:59:59','2500','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','b00010003030001001C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000015173a',1,'2015-10-30 19:40:25'),(7,'SDataEI-00000000000000000000006b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000002b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','722.444','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161857992382C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(8,'SDataEI-00000000000000000000007b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000002b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2.65','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161857992382C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(9,'SDataEI-00000000000000000000008b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000002b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','1914','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161857992382C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(10,'SDataEI-00000000000000000000009b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000003b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','514.783','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858001627C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(11,'SDataEI-00000000000000000000010b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000003b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','4.057','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858001627C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(12,'SDataEI-00000000000000000000011b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000003b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2088','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858001627C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(13,'SDataEI-00000000000000000000012b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000004b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','722.444','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858025056C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(14,'SDataEI-00000000000000000000013b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000004b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2.65','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858025056C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(15,'SDataEI-00000000000000000000014b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000004b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','1914','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858025056C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(16,'SDataEI-00000000000000000000015b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000005b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','514.783','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858042119C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(17,'SDataEI-00000000000000000000016b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000005b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','4.057','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858042119C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(18,'SDataEI-00000000000000000000017b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000005b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2088','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858042119C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(19,'SDataEI-00000000000000000000018b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000006b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','722.444','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858058650C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(20,'SDataEI-00000000000000000000019b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000006b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2.65','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858058650C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(21,'SDataEI-00000000000000000000020b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000006b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','1914','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858058650C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(22,'SDataEI-00000000000000000000021b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000007b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','514.783','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858075287C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(23,'SDataEI-00000000000000000000022b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000007b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','4.057','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858075287C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(24,'SDataEI-00000000000000000000023b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000007b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2088','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858075287C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(25,'SDataEI-00000000000000000000024b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000008b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','722.444','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858091882C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(26,'SDataEI-00000000000000000000025b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000008b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2.65','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858091882C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(27,'SDataEI-00000000000000000000026b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000008b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','1914','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858091882C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(28,'SDataEI-00000000000000000000027b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000009b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','514.783','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858101231C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(29,'SDataEI-00000000000000000000028b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000009b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','4.057','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858101231C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(30,'SDataEI-00000000000000000000029b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000009b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2088','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858101231C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(31,'SDataEI-00000000000000000000030b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000010b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','722.444','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858115681C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(32,'SDataEI-00000000000000000000031b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000010b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2.65','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858115681C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(33,'SDataEI-00000000000000000000032b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000010b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','1914','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858115681C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(34,'SDataEI-00000000000000000000033b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000011b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','514.783','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858121560C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(35,'SDataEI-00000000000000000000034b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000011b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','4.057','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858121560C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(36,'SDataEI-00000000000000000000035b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000011b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2088','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858121560C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(37,'SDataEI-00000000000000000000036b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000012b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','722.444','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858138223C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(38,'SDataEI-00000000000000000000037b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000012b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2.65','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858138223C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(39,'SDataEI-00000000000000000000038b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000012b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','1914','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858138223C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(40,'SDataEI-00000000000000000000039b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000013b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','514.783','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858144292C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(41,'SDataEI-00000000000000000000040b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000013b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','4.057','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858144292C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(42,'SDataEI-00000000000000000000041b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000013b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2088','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858144292C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(43,'SDataEI-00000000000000000000042b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000014b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','722.444','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858149895C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(44,'SDataEI-00000000000000000000043b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000014b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2.65','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858149895C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(45,'SDataEI-00000000000000000000044b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000014b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','1914','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858149895C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(46,'SDataEI-00000000000000000000045b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000015b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','514.783','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858155377C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(47,'SDataEI-00000000000000000000046b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000015b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','4.057','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858155377C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(48,'SDataEI-00000000000000000000047b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000015b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2088','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858155377C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(49,'SDataEI-00000000000000000000048b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000016b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','722.444','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858160802C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(50,'SDataEI-00000000000000000000049b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000016b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2.65','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858160802C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(51,'SDataEI-00000000000000000000050b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000016b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','1914','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858160802C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(52,'SDataEI-00000000000000000000051b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000017b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','514.783','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858166284C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(53,'SDataEI-00000000000000000000052b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000017b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','4.057','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858166284C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(54,'SDataEI-00000000000000000000053b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000017b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2088','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858166284C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(55,'SDataEI-00000000000000000000054b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000018b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','722.444','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858172968C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(56,'SDataEI-00000000000000000000055b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000018b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2.65','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858172968C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(57,'SDataEI-00000000000000000000056b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000018b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','1914','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858172968C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(58,'SDataEI-00000000000000000000057b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000019b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','514.783','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858178870C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(59,'SDataEI-00000000000000000000058b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000019b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','4.057','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858178870C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(60,'SDataEI-00000000000000000000059b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000019b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2088','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858178870C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(61,'SDataEI-00000000000000000000060b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000020b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','722.444','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858184567C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(62,'SDataEI-00000000000000000000061b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000020b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2.65','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858184567C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(63,'SDataEI-00000000000000000000062b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000020b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','1914','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858184567C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(64,'SDataEI-00000000000000000000063b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000021b','ExmItm-000000000000000000000003a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','514.783','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858190262C001S001I0003','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(65,'SDataEI-00000000000000000000064b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000021b','ExmItm-000000000000000000000004a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','4.057','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858190262C001S001I0004','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(66,'SDataEI-00000000000000000000065b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000021b','ExmItm-000000000000000000000005a','2015-12-31 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','2088','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160225161858190262C001S001I0005','noSheetDataExaminationItemNote','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(67,'SDataEI-00000000000000000000066b','User-00000000000000000000015173a','2016-02-27 11:09:09','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000022b','ExmItm-000000000000000000000001a','2016-02-27 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','151.0','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160227200908977602C001S001I0001','noSheetDataExaminationItemNote','User-00000000000000000000015173a',1,'2016-02-27 11:09:09'),(68,'SDataEI-00000000000000000000067b','User-00000000000000000000015173a','2016-02-27 11:09:09','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataES-00000000000000000000022b','ExmItm-000000000000000000000002a','2016-02-27 00:00:00','2000-01-01 00:00:00','2000-01-01 00:00:00','42.0','noSheetDataExaminationItemConversionEquation','ExmItm-000000000000000000000000a','noSheetDataExaminationItemTestResultValueConverted','noSheetDataExaminationItemConversionEquation','noSheetDataExaminationItemTestResultValueAbstracted','TstSys-000000000000000000000000a','noShtDtExmntnItmTstSystmTstItmId','160227200908977602C001S001I0002','noSheetDataExaminationItemNote','User-00000000000000000000015173a',1,'2016-02-27 11:09:09');
/*!40000 ALTER TABLE `tbl_d_SheetDataExaminationItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_SheetDataExaminationOrder`
--

DROP TABLE IF EXISTS `tbl_d_SheetDataExaminationOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_SheetDataExaminationOrder` (
  `SheetDataExaminationOrderIndex` int(10) NOT NULL AUTO_INCREMENT,
  `SheetDataExaminationOrderId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderIdCreatedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderIdCreatedDateTime` datetime NOT NULL,
  `SheetDataExaminationOrderIdLastUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderIdLastUpdatedDateTime` datetime NOT NULL,
  `SheetDataExaminationOrderIdIsDeleted` smallint(6) NOT NULL,
  `SheetDataExaminationOrderIdDeletedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderIdDeletedDateTime` datetime NOT NULL,
  `SheetDataExaminationOrderSheetDataCommonId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderExaminationOrderId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderDisplayExaminationOrderId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderOrderOrganizationId` varchar(16) NOT NULL,
  `SheetDataExaminationOrderOrderUnitId` varchar(16) NOT NULL,
  `SheetDataExaminationOrderOrderUserId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderMedicalRecordId` varchar(50) NOT NULL,
  `SheetDataExaminationOrderDoctorInCharge` varchar(200) NOT NULL,
  `SheetDataExaminationOrderTargetUserId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderTargetUserAge` smallint(6) NOT NULL,
  `SheetDataExaminationOrderTargetPreviousExaminationTimes` smallint(6) NOT NULL,
  `SheetDataExaminationOrderBloodCollectedDateTime` datetime NOT NULL,
  `SheetDataExaminationOrderAmountOfCollectedBlood` varchar(16) NOT NULL,
  `SheetDataExaminationOrderUrineCollectedDateTime` datetime NOT NULL,
  `SheetDataExaminationOrderAmountOfUrine` varchar(16) NOT NULL,
  `SheetDataExaminationOrderUrinationDateTime` datetime NOT NULL,
  `SheetDataExaminationOrderSpecimen01Type` varchar(128) NOT NULL,
  `SheetDataExaminationOrderSpecimen01CollectedDateTime` datetime NOT NULL,
  `SheetDataExaminationOrderAmountOfSpecimen01` varchar(16) NOT NULL,
  `SheetDataExaminationOrderSpecimen01Note` varchar(200) NOT NULL,
  `SheetDataExaminationOrderHourAfterEating` varchar(8) NOT NULL,
  `SheetDataExaminationOrderDeliveryRequestDateTime` datetime NOT NULL,
  `SheetDataExaminationOrderTestCenterSystemId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderTestCenterPartnerId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderTestCenterTestOrderId` varchar(32) NOT NULL,
  `SheetDataExaminationOrderNote` varchar(1000) NOT NULL,
  `SheetDataExaminationOrderIdUserIdInCharge` varchar(32) NOT NULL,
  `SheetDataExaminationOrderIsActiveValue` smallint(6) NOT NULL,
  `SheetDataExaminationOrderIsActiveDateTime` datetime NOT NULL,
  `SheetDataExaminationOrderIsSample` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=sample, 2=BMS直送',
  `SheetDataExaminationOrderIsTicket` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'B2Cウェブマーケティング用',
  `Language` varchar(2) NOT NULL DEFAULT 'JP' COMMENT '報告書の言語',
  PRIMARY KEY (`SheetDataExaminationOrderIndex`),
  UNIQUE KEY `SheetDataExaminationOrderId` (`SheetDataExaminationOrderId`),
  UNIQUE KEY `SheetDataExaminationOrderDisplayExaminationOrderId` (`SheetDataExaminationOrderDisplayExaminationOrderId`),
  KEY `SheetDataExaminationOrderIdIsDeleted` (`SheetDataExaminationOrderIdIsDeleted`),
  KEY `SheetDataExaminationOrderSheetDataCommonId` (`SheetDataExaminationOrderSheetDataCommonId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='依頼管理/依頼データ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_SheetDataExaminationOrder`
--

LOCK TABLES `tbl_d_SheetDataExaminationOrder` WRITE;
/*!40000 ALTER TABLE `tbl_d_SheetDataExaminationOrder` DISABLE KEYS */;
INSERT INTO `tbl_d_SheetDataExaminationOrder` VALUES (1,'SDataEO-00000000000000000000000b','User-00000000000000000000000000a','2012-09-27 12:20:05','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','Sdata-0000000000000000000000000a','ExmOrdr-00000000000000000000000a','E00000000000000O00','Org-00000000000a','Unit-0000000000a','User-00000000000000000000000000a','noSheetDataExaminationOrderMedicalRecordId','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000000a',-1,-1,'1999-12-31 23:59:59','-1','1999-12-31 23:59:59','-1','1999-12-31 23:59:59','noSheetDataExaminationOrderSpecimen01Type','1999-12-31 23:59:59','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','1999-12-31 23:59:59','TstSys-000000000000000000000000a','noSheetDataExaminationOrderTestC','noSheetDataExaminationOrderTestC','noSheetDataExaminationOrderNote','User-00000000000000000000000000a',-1,'2012-09-27 12:20:05',0,0,'JP'),(2,'SDataEO-00000000000000000000001b','User-00000000000000000000015173a','2015-10-30 19:38:03','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SData-0000000000000000000000001b','ExmOrdr-00000000000000000000001a','b00010003030001001','Org-00000000003a','Unit-0000000003a','User-00000000000000000000015174a','01234567','ドクター中鉢','Pati-00000000000000000000000001b',25,0,'2015-11-01 00:00:00','-1','1999-12-31 23:59:59','-1','1999-12-31 23:59:59','noSheetDataExaminationOrderSpecimen01Type','1999-12-31 23:59:59','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2015-11-10 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','\"UNIQUE-CODE\"','User-00000000000000000000015173a',1,'2015-10-30 19:38:03',0,0,'JP'),(3,'SDataEO-00000000000000000000002b','User-00000000000000000000000002a','2016-02-25 07:18:57','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000002b','ExmOrdr-00000000000000000000001a','160225161857992382','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00001','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000002b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:57',0,0,'JP'),(4,'SDataEO-00000000000000000000003b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000003b','ExmOrdr-00000000000000000000001a','160225161858001627','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00002','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000003b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(5,'SDataEO-00000000000000000000004b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000004b','ExmOrdr-00000000000000000000001a','160225161858025056','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00003','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000004b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(6,'SDataEO-00000000000000000000005b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000005b','ExmOrdr-00000000000000000000001a','160225161858042119','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00004','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000005b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(7,'SDataEO-00000000000000000000006b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000006b','ExmOrdr-00000000000000000000001a','160225161858058650','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00005','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000006b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(8,'SDataEO-00000000000000000000007b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000007b','ExmOrdr-00000000000000000000001a','160225161858075287','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00006','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000007b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(9,'SDataEO-00000000000000000000008b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000008b','ExmOrdr-00000000000000000000001a','160225161858091882','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00007','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000008b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(10,'SDataEO-00000000000000000000009b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000009b','ExmOrdr-00000000000000000000001a','160225161858101231','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00008','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000009b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(11,'SDataEO-00000000000000000000010b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000010b','ExmOrdr-00000000000000000000001a','160225161858115681','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00009','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000010b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(12,'SDataEO-00000000000000000000011b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000011b','ExmOrdr-00000000000000000000001a','160225161858121560','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00010','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000011b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(13,'SDataEO-00000000000000000000012b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000012b','ExmOrdr-00000000000000000000001a','160225161858138223','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00011','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000012b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(14,'SDataEO-00000000000000000000013b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000013b','ExmOrdr-00000000000000000000001a','160225161858144292','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00012','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000013b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(15,'SDataEO-00000000000000000000014b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000014b','ExmOrdr-00000000000000000000001a','160225161858149895','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00013','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000014b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(16,'SDataEO-00000000000000000000015b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000015b','ExmOrdr-00000000000000000000001a','160225161858155377','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00014','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000015b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(17,'SDataEO-00000000000000000000016b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000016b','ExmOrdr-00000000000000000000001a','160225161858160802','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00015','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000016b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(18,'SDataEO-00000000000000000000017b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000017b','ExmOrdr-00000000000000000000001a','160225161858166284','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00016','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000017b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(19,'SDataEO-00000000000000000000018b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000018b','ExmOrdr-00000000000000000000001a','160225161858172968','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00017','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000018b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(20,'SDataEO-00000000000000000000019b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000019b','ExmOrdr-00000000000000000000001a','160225161858178870','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00018','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000019b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(21,'SDataEO-00000000000000000000020b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000020b','ExmOrdr-00000000000000000000001a','160225161858184567','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00019','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000020b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(22,'SDataEO-00000000000000000000021b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000021b','ExmOrdr-00000000000000000000001a','160225161858190262','Org-00000000001a','Unit-0000000002a','User-00000000000000000000015173a','00020','noSheetDataExaminationOrderDoctorInCharge','Pati-00000000000000000000000021b',50,0,'2015-12-31 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-07 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','-','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,'JP'),(23,'SDataEO-00000000000000000000022b','User-00000000000000000000015173a','2016-02-27 11:09:08','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000022b','ExmOrdr-00000000000000000000001a','160227200908977602','Org-00000000003a','Unit-0000000003a','User-00000000000000000000015174a','111','111','Pati-00000000000000000000000022b',1,0,'2016-02-27 00:00:00','-1','2000-01-01 00:00:00','-1','2000-01-01 00:00:00','noSheetDataExaminationOrderSpecimen01Type','2000-01-01 00:00:00','-1','noSheetDataExaminationOrderSpecimen01Note','0.0','2016-03-09 00:00:00','TstSys-000000000000000000000000a','noShtDtExmntnOrdrTstCntrPrtnrId','noShtDtExmntnOrdrTstCntrTstOdrId','abcde','User-00000000000000000000015173a',1,'2016-02-27 11:09:08',0,0,'JP');
/*!40000 ALTER TABLE `tbl_d_SheetDataExaminationOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_SheetDataExaminationSet`
--

DROP TABLE IF EXISTS `tbl_d_SheetDataExaminationSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_SheetDataExaminationSet` (
  `SheetDataExaminationSetIndex` int(10) NOT NULL AUTO_INCREMENT,
  `SheetDataExaminationSetId` varchar(32) NOT NULL,
  `SheetDataExaminationSetIdCreatedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationSetIdCreatedDateTime` datetime NOT NULL,
  `SheetDataExaminationSetIdLastUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationSetIdLastUpdatedDateTime` datetime NOT NULL,
  `SheetDataExaminationSetIdIsDeleted` smallint(6) NOT NULL,
  `SheetDataExaminationSetIdDeletedUserId` varchar(32) NOT NULL,
  `SheetDataExaminationSetIdDeletedDateTime` datetime NOT NULL,
  `SheetDataExaminationSetSheetDataExaminationCourseId` varchar(32) NOT NULL,
  `SheetDataExaminationSetExaminationSetId` varchar(32) NOT NULL,
  `SheetDataExaminationSetDisplayExaminationSetId` varchar(32) NOT NULL,
  `SheetDataExaminationSetCertifiedDateTime` datetime NOT NULL,
  `SheetDataExaminationSetExaminationSetCommentId01` varchar(32) NOT NULL,
  `SheetDataExaminationSetExaminationSetCommentId02` varchar(32) NOT NULL,
  `SheetDataExaminationSetExaminationSetCommentId03` varchar(32) NOT NULL,
  `SheetDataExaminationSetExaminationSetCommentId04` varchar(32) NOT NULL,
  `SheetDataExaminationSetExaminationSetCommentId05` varchar(32) NOT NULL,
  `SheetDataExaminationSetExaminationSetCommentId06` varchar(32) NOT NULL,
  `SheetDataExaminationSetExaminationSetCommentId07` varchar(32) NOT NULL,
  `SheetDataExaminationSetExaminationSetCommentId08` varchar(32) NOT NULL,
  `SheetDataExaminationSetExaminationSetCommentId09` varchar(32) NOT NULL,
  `SheetDataExaminationSetExaminationSetCommentId10` varchar(32) NOT NULL,
  `SheetDataExaminationSetNote` varchar(1000) NOT NULL,
  `SheetDataExaminationSetIdUserIdInCharge` varchar(32) NOT NULL,
  `SheetDataExaminationSetIsActiveValue` smallint(6) NOT NULL,
  `SheetDataExaminationSetIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`SheetDataExaminationSetIndex`),
  UNIQUE KEY `SheetDataExaminationSetId` (`SheetDataExaminationSetId`),
  KEY `SheetDataExaminationSetSheetDataExaminationCourseId` (`SheetDataExaminationSetSheetDataExaminationCourseId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='依頼管理/検査セットデータ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_SheetDataExaminationSet`
--

LOCK TABLES `tbl_d_SheetDataExaminationSet` WRITE;
/*!40000 ALTER TABLE `tbl_d_SheetDataExaminationSet` DISABLE KEYS */;
INSERT INTO `tbl_d_SheetDataExaminationSet` VALUES (1,'SDataES-00000000000000000000000b','User-00000000000000000000000000a','2012-09-21 17:13:27','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','SdataEC-000000000000000000000000','ExmSet-000000000000000000000000a','E00000000000000O00C000S000','1999-12-31 23:59:59','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000000a',-1,'2012-09-21 17:13:27'),(2,'SDataES-00000000000000000000001b','User-00000000000000000000015173a','2015-10-30 19:38:03','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SDataEC-00000000000000000000001b','ExmSet-000000000000000000000001a','b00010003030001001C001S001','2015-10-30 19:40:25','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000015173a',1,'2015-10-30 19:38:03'),(3,'SDataES-00000000000000000000002b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000002b','ExmSet-000000000000000000000001a','160225161857992382C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(4,'SDataES-00000000000000000000003b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000003b','ExmSet-000000000000000000000001a','160225161858001627C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(5,'SDataES-00000000000000000000004b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000004b','ExmSet-000000000000000000000001a','160225161858025056C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(6,'SDataES-00000000000000000000005b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000005b','ExmSet-000000000000000000000001a','160225161858042119C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(7,'SDataES-00000000000000000000006b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000006b','ExmSet-000000000000000000000001a','160225161858058650C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(8,'SDataES-00000000000000000000007b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000007b','ExmSet-000000000000000000000001a','160225161858075287C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(9,'SDataES-00000000000000000000008b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000008b','ExmSet-000000000000000000000001a','160225161858091882C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(10,'SDataES-00000000000000000000009b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000009b','ExmSet-000000000000000000000001a','160225161858101231C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(11,'SDataES-00000000000000000000010b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000010b','ExmSet-000000000000000000000001a','160225161858115681C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(12,'SDataES-00000000000000000000011b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000011b','ExmSet-000000000000000000000001a','160225161858121560C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(13,'SDataES-00000000000000000000012b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000012b','ExmSet-000000000000000000000001a','160225161858138223C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(14,'SDataES-00000000000000000000013b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000013b','ExmSet-000000000000000000000001a','160225161858144292C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(15,'SDataES-00000000000000000000014b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000014b','ExmSet-000000000000000000000001a','160225161858149895C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(16,'SDataES-00000000000000000000015b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000015b','ExmSet-000000000000000000000001a','160225161858155377C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(17,'SDataES-00000000000000000000016b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000016b','ExmSet-000000000000000000000001a','160225161858160802C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(18,'SDataES-00000000000000000000017b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000017b','ExmSet-000000000000000000000001a','160225161858166284C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(19,'SDataES-00000000000000000000018b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000018b','ExmSet-000000000000000000000001a','160225161858172968C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(20,'SDataES-00000000000000000000019b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000019b','ExmSet-000000000000000000000001a','160225161858178870C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(21,'SDataES-00000000000000000000020b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000020b','ExmSet-000000000000000000000001a','160225161858184567C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(22,'SDataES-00000000000000000000021b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000021b','ExmSet-000000000000000000000001a','160225161858190262C001S001','2016-02-25 07:36:13','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(23,'SDataES-00000000000000000000022b','User-00000000000000000000015173a','2016-02-27 11:09:09','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SDataEC-00000000000000000000022b','ExmSet-000000000000000000000001a','160227200908977602C001S001','2000-01-01 00:00:00','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','ExmStCmmnt-00000000000000000000a','noSheetDataExaminationSetNote','User-00000000000000000000015173a',1,'2016-02-27 11:09:09');
/*!40000 ALTER TABLE `tbl_d_SheetDataExaminationSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_SheetDataFlow`
--

DROP TABLE IF EXISTS `tbl_d_SheetDataFlow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_SheetDataFlow` (
  `SheetDataFlowIndex` int(10) NOT NULL AUTO_INCREMENT,
  `SheetDataFlowId` varchar(32) NOT NULL,
  `SheetDataFlowIdCreatedUserId` varchar(32) NOT NULL,
  `SheetDataFlowIdCreatedDateTime` datetime NOT NULL,
  `SheetDataFlowIdLastUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataFlowIdLastUpdatedDateTime` datetime NOT NULL,
  `SheetDataFlowIdIsDeleted` smallint(6) NOT NULL,
  `SheetDataFlowIdDeletedUserId` varchar(32) NOT NULL,
  `SheetDataFlowIdDeletedDateTime` datetime NOT NULL,
  `SheetDataFlowSheetDataCommonId` varchar(32) NOT NULL,
  `SheetDataFlowCreationPreStartUserId` varchar(32) NOT NULL,
  `SheetDataFlowCreationPreStartDateTime` datetime NOT NULL,
  `SheetDataFlowCreationStartedUserId` varchar(32) NOT NULL,
  `SheetDataFlowCreationStartedDateTime` datetime NOT NULL,
  `SheetDataFlowCreationUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataFlowCreationUpdatedDateTime` datetime NOT NULL,
  `SheetDataFlowCreationInspectedUserId` varchar(32) NOT NULL,
  `SheetDataFlowCreationInspectedDateTime` datetime NOT NULL,
  `SheetDataFlowCreationAcknowledgedUserId` varchar(32) NOT NULL,
  `SheetDataFlowCreationAcknowledgedDateTime` datetime NOT NULL,
  `SheetDataFlowAnswerPreStartUserId` varchar(32) NOT NULL,
  `SheetDataFlowAnswerPreStartDateTime` datetime NOT NULL,
  `SheetDataFlowAnswerStartedUserId` varchar(32) NOT NULL,
  `SheetDataFlowAnswerStartedDateTime` datetime NOT NULL,
  `SheetDataFlowAnswerUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataFlowAnswerUpdatedDateTime` datetime NOT NULL,
  `SheetDataFlowAnswerInspectedUserId` varchar(32) NOT NULL,
  `SheetDataFlowAnswerInspectedDateTime` datetime NOT NULL,
  `SheetDataFlowAnswerAcknowledgedUserId` varchar(32) NOT NULL,
  `SheetDataFlowAnswerAcknowledgedDateTime` datetime NOT NULL,
  `SheetDataFlowConfirmationPreStartUserId` varchar(32) NOT NULL,
  `SheetDataFlowConfirmationPreStartDateTime` datetime NOT NULL,
  `SheetDataFlowConfirmationStartedUserId` varchar(32) NOT NULL,
  `SheetDataFlowConfirmationStartedDateTime` datetime NOT NULL,
  `SheetDataFlowConfirmationUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataFlowConfirmationUpdatedDateTime` datetime NOT NULL,
  `SheetDataFlowConfirmationInspectedUserId` varchar(32) NOT NULL,
  `SheetDataFlowConfirmationInspectedDateTime` datetime NOT NULL,
  `SheetDataFlowConfirmationAcknowledgedUserId` varchar(32) NOT NULL,
  `SheetDataFlowConfirmationAcknowledgedDateTime` datetime NOT NULL,
  `SheetDataFlowCompletionPreStartUserId` varchar(32) NOT NULL,
  `SheetDataFlowCompletionPreStartDateTime` datetime NOT NULL,
  `SheetDataFlowCompletionStartedUserId` varchar(32) NOT NULL,
  `SheetDataFlowCompletionStartedDateTime` datetime NOT NULL,
  `SheetDataFlowCompletionUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataFlowCompletionUpdatedDateTime` datetime NOT NULL,
  `SheetDataFlowCompletionInspectedUserId` varchar(32) NOT NULL,
  `SheetDataFlowCompletionInspectedDateTime` datetime NOT NULL,
  `SheetDataFlowCompletionAcknowledgedUserId` varchar(32) NOT NULL,
  `SheetDataFlowCompletionAcknowledgedDateTime` datetime NOT NULL,
  `SheetDataFlowClientReceivedDateTime` datetime NOT NULL DEFAULT '1999-12-31 23:59:59',
  `SheetDataFlowIdUserIdInCharge` varchar(32) NOT NULL,
  `SheetDataFlowIsActiveValue` smallint(6) NOT NULL,
  `SheetDataFlowIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`SheetDataFlowIndex`),
  UNIQUE KEY `SheetDataFlowId` (`SheetDataFlowId`),
  KEY `SheetDataFlowCreationUpdatedDateTime` (`SheetDataFlowCreationUpdatedDateTime`),
  KEY `SheetDataFlowSheetDataCommonId` (`SheetDataFlowSheetDataCommonId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='依頼管理/依頼フローデータ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_SheetDataFlow`
--

LOCK TABLES `tbl_d_SheetDataFlow` WRITE;
/*!40000 ALTER TABLE `tbl_d_SheetDataFlow` DISABLE KEYS */;
INSERT INTO `tbl_d_SheetDataFlow` VALUES (1,'SFlow-0000000000000000000000000b','User-00000000000000000000000000a','2012-08-27 20:18:23','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','Sdata-0000000000000000000000000a','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','1999-12-31 23:59:59','User-00000000000000000000000000a',-1,'2012-08-27 20:18:23'),(2,'SFlow-0000000000000000000000001b','User-00000000000000000000015173a','2015-10-30 19:38:02','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SData-0000000000000000000000001b','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000015173a','2015-10-30 19:38:02','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000015173a','2015-10-30 19:40:25','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000015173a','2015-10-30 20:10:07','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','User-00000000000000000000000000a','1999-12-31 23:59:59','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2015-10-30 19:38:02'),(3,'SFlow-0000000000000000000000002b','User-00000000000000000000000002a','2016-02-25 07:18:57','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000002b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:57','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:57'),(4,'SFlow-0000000000000000000000003b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000003b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(5,'SFlow-0000000000000000000000004b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000004b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(6,'SFlow-0000000000000000000000005b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000005b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(7,'SFlow-0000000000000000000000006b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000006b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(8,'SFlow-0000000000000000000000007b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000007b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(9,'SFlow-0000000000000000000000008b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000008b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(10,'SFlow-0000000000000000000000009b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000009b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(11,'SFlow-0000000000000000000000010b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000010b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(12,'SFlow-0000000000000000000000011b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000011b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(13,'SFlow-0000000000000000000000012b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000012b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(14,'SFlow-0000000000000000000000013b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000013b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(15,'SFlow-0000000000000000000000014b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000014b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(16,'SFlow-0000000000000000000000015b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000015b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(17,'SFlow-0000000000000000000000016b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000016b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(18,'SFlow-0000000000000000000000017b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000017b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(19,'SFlow-0000000000000000000000018b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000018b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(20,'SFlow-0000000000000000000000019b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000019b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(21,'SFlow-0000000000000000000000020b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000020b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(22,'SFlow-0000000000000000000000021b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000021b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(23,'SFlow-0000000000000000000000022b','User-00000000000000000000015173a','2016-02-27 11:09:08','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000022b','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000015173a','2016-02-27 11:09:08','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','User-00000000000000000000000000a','2000-01-01 00:00:00','1999-12-31 23:59:59','User-00000000000000000000000002a',1,'2016-02-27 11:09:08');
/*!40000 ALTER TABLE `tbl_d_SheetDataFlow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_SheetDataForward`
--

DROP TABLE IF EXISTS `tbl_d_SheetDataForward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_SheetDataForward` (
  `SheetDataForwardIndex` int(10) NOT NULL AUTO_INCREMENT,
  `SheetDataForwardId` varchar(32) NOT NULL,
  `SheetDataForwardIdCreatedUserId` varchar(32) NOT NULL,
  `SheetDataForwardIdCreatedDateTime` datetime NOT NULL,
  `SheetDataForwardIdLastUpdatedUserId` varchar(32) NOT NULL,
  `SheetDataForwardIdLastUpdatedDateTime` datetime NOT NULL,
  `SheetDataForwardIdIsDeleted` smallint(6) NOT NULL,
  `SheetDataForwardIdDeletedUserId` varchar(32) NOT NULL,
  `SheetDataForwardIdDeletedDateTime` datetime NOT NULL,
  `SheetDataForwardSheetDataCommonId` varchar(32) NOT NULL,
  `SheetDataForwardFwdUserIdFrom` varchar(32) NOT NULL,
  `SheetDataForwardFwdSheetStatusIdFrom` varchar(16) NOT NULL,
  `SheetDataForwardFwdTimes` int(11) NOT NULL,
  `SheetDataForwardFwdDateTime` datetime NOT NULL,
  `SheetDataForwardFwdComment` varchar(500) NOT NULL,
  `SheetDataForwardFwdUserIdTo` varchar(32) NOT NULL,
  `SheetDataForwardFwdSheetStatusIdTo` varchar(16) NOT NULL,
  `SheetDataForwardIdUserIdInCharge` varchar(32) NOT NULL,
  `SheetDataForwardIsActiveValue` smallint(6) NOT NULL,
  `SheetDataForwardIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`SheetDataForwardIndex`),
  UNIQUE KEY `SheetDataForwardId` (`SheetDataForwardId`),
  KEY `SheetDataForwardSheetDataCommonId` (`SheetDataForwardSheetDataCommonId`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='依頼管理/依頼遷移データ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_SheetDataForward`
--

LOCK TABLES `tbl_d_SheetDataForward` WRITE;
/*!40000 ALTER TABLE `tbl_d_SheetDataForward` DISABLE KEYS */;
INSERT INTO `tbl_d_SheetDataForward` VALUES (1,'Sfwd-00000000000000000000000000b','User-00000000000000000000000000a','2012-08-27 22:12:58','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','Sdata-0000000000000000000000000a','User-00000000000000000000000000a','Sstatus-0000000a',-1,'1999-12-31 23:59:59','noSheetDataForwardFwdComment','User-00000000000000000000000000a','Sstatus-0000000a','User-00000000000000000000000000a',-1,'2012-08-27 22:12:58'),(2,'Sfwd-00000000000000000000000001b','User-00000000000000000000015173a','2015-10-30 19:38:03','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SData-0000000000000000000000001b','User-00000000000000000000015173a','Sstatus-0000010a',1,'2015-10-30 19:38:03','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000015173a',1,'2015-10-30 19:38:03'),(3,'Sfwd-00000000000000000000000002b','User-00000000000000000000015173a','2015-10-30 19:40:24','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SData-0000000000000000000000001b','User-00000000000000000000015173a','Sstatus-0000070a',2,'2015-10-30 19:40:24','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000015173a',1,'2015-10-30 19:40:24'),(4,'Sfwd-00000000000000000000000003b','User-00000000000000000000015173a','2015-10-30 20:10:01','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SData-0000000000000000000000001b','User-00000000000000000000015173a','Sstatus-0000080a',3,'2015-10-30 20:10:01','noSheetDataForwardFwdComment','User-00000000000000000000015173a','Sstatus-0000090a','User-00000000000000000000015173a',1,'2015-10-30 20:10:01'),(5,'Sfwd-00000000000000000000000004b','User-00000000000000000000015173a','2015-10-30 20:10:07','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','SData-0000000000000000000000001b','User-00000000000000000000015173a','Sstatus-0000090a',4,'2015-10-30 20:10:07','noSheetDataForwardFwdComment','User-00000000000000000000015173a','Sstatus-0000210a','User-00000000000000000000015173a',1,'2015-10-30 20:10:07'),(6,'Sfwd-00000000000000000000000005b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000002b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(7,'Sfwd-00000000000000000000000006b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000003b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(8,'Sfwd-00000000000000000000000007b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000004b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(9,'Sfwd-00000000000000000000000008b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000005b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(10,'Sfwd-00000000000000000000000009b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000006b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(11,'Sfwd-00000000000000000000000010b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000007b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(12,'Sfwd-00000000000000000000000011b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000008b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(13,'Sfwd-00000000000000000000000012b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000009b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(14,'Sfwd-00000000000000000000000013b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000010b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(15,'Sfwd-00000000000000000000000014b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000011b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(16,'Sfwd-00000000000000000000000015b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000012b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(17,'Sfwd-00000000000000000000000016b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000013b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(18,'Sfwd-00000000000000000000000017b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000014b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(19,'Sfwd-00000000000000000000000018b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000015b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(20,'Sfwd-00000000000000000000000019b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000016b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(21,'Sfwd-00000000000000000000000020b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000017b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(22,'Sfwd-00000000000000000000000021b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000018b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(23,'Sfwd-00000000000000000000000022b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000019b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(24,'Sfwd-00000000000000000000000023b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000020b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(25,'Sfwd-00000000000000000000000024b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000021b','User-00000000000000000000000002a','Sstatus-0000010a',1,'2016-02-25 07:18:58','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000000002a',1,'2016-02-25 07:18:58'),(26,'Sfwd-00000000000000000000000025b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000002b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(27,'Sfwd-00000000000000000000000026b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000003b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(28,'Sfwd-00000000000000000000000027b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000004b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(29,'Sfwd-00000000000000000000000028b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000005b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(30,'Sfwd-00000000000000000000000029b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000006b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(31,'Sfwd-00000000000000000000000030b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000007b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(32,'Sfwd-00000000000000000000000031b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000008b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(33,'Sfwd-00000000000000000000000032b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000009b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(34,'Sfwd-00000000000000000000000033b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000010b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(35,'Sfwd-00000000000000000000000034b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000011b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(36,'Sfwd-00000000000000000000000035b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000012b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(37,'Sfwd-00000000000000000000000036b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000013b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(38,'Sfwd-00000000000000000000000037b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000014b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(39,'Sfwd-00000000000000000000000038b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000015b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(40,'Sfwd-00000000000000000000000039b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000016b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(41,'Sfwd-00000000000000000000000040b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000017b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(42,'Sfwd-00000000000000000000000041b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000018b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(43,'Sfwd-00000000000000000000000042b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000019b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(44,'Sfwd-00000000000000000000000043b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000020b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(45,'Sfwd-00000000000000000000000044b','User-00000000000000000000000002a','2016-02-25 07:36:13','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000021b','User-00000000000000000000000002a','Sstatus-0000070a',2,'2016-02-25 07:36:13','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000080a','User-00000000000000000000000002a',1,'2016-02-25 07:36:13'),(46,'Sfwd-00000000000000000000000045b','User-00000000000000000000015173a','2016-02-27 11:09:09','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','SData-0000000000000000000000022b','User-00000000000000000000015173a','Sstatus-0000010a',1,'2016-02-27 11:09:09','noSheetDataForwardFwdComment','User-00000000000000000000000003a','Sstatus-0000070a','User-00000000000000000000015173a',1,'2016-02-27 11:09:09');
/*!40000 ALTER TABLE `tbl_d_SheetDataForward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_d_UserActionLog`
--

DROP TABLE IF EXISTS `tbl_d_UserActionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_d_UserActionLog` (
  `UALogIndex` int(10) NOT NULL AUTO_INCREMENT,
  `UALogId` varchar(32) NOT NULL,
  `UALogIdCreatedUserId` varchar(32) NOT NULL,
  `UALogIdCreatedDateTime` datetime NOT NULL,
  `UALogIdLastUpdatedUserId` varchar(32) NOT NULL,
  `UALogIdLastUpdatedDateTime` datetime NOT NULL,
  `UALogIdIsDeleted` smallint(6) NOT NULL,
  `UALogIdDeletedUserId` varchar(32) NOT NULL,
  `UALogIdDeletedDateTime` datetime NOT NULL,
  `UALogDateTime` datetime NOT NULL,
  `UALogUserId` varchar(32) NOT NULL,
  `UALogRecordService` varchar(128) NOT NULL,
  `UALogClientPCIpAddress` varchar(32) NOT NULL,
  `UALogClientPCMacAddress` varchar(128) NOT NULL,
  `UALogCommand` varchar(128) NOT NULL,
  `UALogWindowBefore` varchar(512) NOT NULL,
  `UALogWindowAfter` varchar(512) NOT NULL,
  `UALogAttachedData001` varchar(1000) NOT NULL,
  `UALogAttachedData002` varchar(1000) NOT NULL,
  `UALogAttachedData003` varchar(1000) NOT NULL,
  `UALogAttachedData004` varchar(1000) NOT NULL,
  `UALogAttachedData005` varchar(1000) NOT NULL,
  `UALogDetail` varchar(4000) NOT NULL,
  `UALogResult` varchar(256) NOT NULL,
  `UALogIdUserIdInCharge` varchar(32) NOT NULL,
  `UALogIsActiveValue` smallint(6) NOT NULL,
  `UALogIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`UALogIndex`),
  UNIQUE KEY `UALogId` (`UALogId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='依頼管理/アクションログデータ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_d_UserActionLog`
--

LOCK TABLES `tbl_d_UserActionLog` WRITE;
/*!40000 ALTER TABLE `tbl_d_UserActionLog` DISABLE KEYS */;
INSERT INTO `tbl_d_UserActionLog` VALUES (1,'UALog-0000000000000000000000000a','User-00000000000000000000000000a','2012-08-27 22:26:46','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','2012-08-27 22:26:46','User-00000000000000000000000000a','noUALogRecordService','noUALogClientPCIpAddress','noUALogClientPCMacAddress','noUALogCommand','noUALogWindowBefore','noUALogWindowAfter','noUALogAttachedData001','noUALogAttachedData002','noUALogAttachedData003','noUALogAttachedData004','noUALogAttachedData005','noUALogDetail','noUALogResult','User-00000000000000000000000000a',-1,'2012-08-27 22:26:46');
/*!40000 ALTER TABLE `tbl_d_UserActionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_Actor`
--

DROP TABLE IF EXISTS `tbl_m_Actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_Actor` (
  `actor_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_Actor`
--

LOCK TABLES `tbl_m_Actor` WRITE;
/*!40000 ALTER TABLE `tbl_m_Actor` DISABLE KEYS */;
INSERT INTO `tbl_m_Actor` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38);
/*!40000 ALTER TABLE `tbl_m_Actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_Authority`
--

DROP TABLE IF EXISTS `tbl_m_Authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_Authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) NOT NULL,
  `authority` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_Authority`
--

LOCK TABLES `tbl_m_Authority` WRITE;
/*!40000 ALTER TABLE `tbl_m_Authority` DISABLE KEYS */;
INSERT INTO `tbl_m_Authority` VALUES (1,'Administrator','EDIT_MASTER');
/*!40000 ALTER TABLE `tbl_m_Authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_Comment`
--

DROP TABLE IF EXISTS `tbl_m_Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_Comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `set` varchar(16) NOT NULL DEFAULT 'LOX' COMMENT '検査セット',
  `item` varchar(16) NOT NULL COMMENT '項目',
  `type` varchar(32) NOT NULL DEFAULT 'A' COMMENT 'タイプ',
  `explanation` varchar(50) NOT NULL COMMENT 'タイプの説明',
  `comment` varchar(1024) DEFAULT NULL COMMENT 'コメント本文',
  `order` int(2) NOT NULL DEFAULT '1' COMMENT '低い順',
  PRIMARY KEY (`id`),
  UNIQUE KEY `set` (`set`,`item`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='依頼管理/コメントマスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_Comment`
--

LOCK TABLES `tbl_m_Comment` WRITE;
/*!40000 ALTER TABLE `tbl_m_Comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_m_Comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_CommentKobal`
--

DROP TABLE IF EXISTS `tbl_m_CommentKobal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_CommentKobal` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item` varchar(16) NOT NULL COMMENT '項目',
  `type` varchar(32) NOT NULL DEFAULT 'A' COMMENT 'タイプ',
  `language` varchar(2) NOT NULL DEFAULT 'JP' COMMENT '言語',
  `explanation` varchar(50) NOT NULL COMMENT 'タイプの説明',
  `comment` varchar(1024) DEFAULT NULL COMMENT 'コメント本文',
  PRIMARY KEY (`id`),
  UNIQUE KEY `set` (`item`,`type`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=61084 DEFAULT CHARSET=utf8 COMMENT='依頼管理/コメントマスタ（KOBAL版）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_CommentKobal`
--

LOCK TABLES `tbl_m_CommentKobal` WRITE;
/*!40000 ALTER TABLE `tbl_m_CommentKobal` DISABLE KEYS */;
INSERT INTO `tbl_m_CommentKobal` VALUES (11011,'sLOX-1','A','JP','低','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1が低く、理想的な状態です。LOX-1は血中から異物を取り除く働きをしているため、異物が少なく、また、血管炎症も少なく、動脈硬化が進行しにくい状態が保たれていると考えられます。\n　しかし、安心は禁物です。特に加齢に伴って、血中の異物は増え、動脈硬化が進行しやすくなります。今まで以上に健康を意識した生活習慣を心がけて下さい。'),(11012,'sLOX-1','A','CS','低','恶性胆固醇的新靶标LOX-1(血凝素样氧化型低密度胶蛋白受体)，具有驱除血液中异物的作用。一旦出现血管障碍问题，LOX－1则会上升，由此LOX－1的数值可以作为测验血管炎症的新靶标来使用。\n\n此次结果: LOX－1很低，属于理想的健康状态。LOX－1有从血液中驱除异物的功能，现在的结果显示：血管中异物很少，血管炎症也少，这种状态很难发展成动脉硬化。\n\n不能因此结果而掉以轻心。特别是随着年龄增长，血液中的异物增加，仍然容易发展为动脉硬化。注意在今后的生活中保持更加健康的饮食和生活习惯。'),(11013,'sLOX-1','A','CT','低',NULL),(11021,'sLOX-1','Ba','JP','中低','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1の値が低い状態です。しかし現在の生活習慣を続けると、酸化LDLなどに代表される動脈硬化の原因物質が増加し、血管の炎症を起こし、LOX-1が上昇する可能性が高くなると考えられます。\n　この状態を改善するには、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(11022,'sLOX-1','Ba','CS','中低','恶性胆固醇的新靶标LOX-1(血凝素样氧化型低密度胶蛋白受体)，具有驱除血液中异物的作用。一旦出现血管障碍问题，LOX－1则会上升，由此LOX－1的数值可以作为测验血管炎症的新靶标来使用。\n\n此次检查结果：LOX－1很低。切不可以掉以轻心，如不改善现在的生活习惯，随着血管中促进动脉硬化产生的氧化(低密度脂蛋白)LDL等物质的增加，及易引发血管炎症，LOX－1上升的可能性也会加大。想要改善现在的状态，就要防止精神压力、精神紧张和氧化应激。推荐通过健康的饮食疗法改善生活习惯。\n\n'),(11023,'sLOX-1','Ba','CT','中低',NULL),(11031,'sLOX-1','Bb','JP','中','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1の値が少し高くなっています。LOX-1は血中から異物を取り除く働きをしているため、酸化LDLなどに代表される動脈硬化の原因物質が多く、血管の炎症が起っていると考えられます。\n　この状態を改善するには、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(11032,'sLOX-1','Bb','CS','中','恶性胆固醇的新靶标LOX-1(血凝素样氧化型低密度胶蛋白受体)，具有驱除血液中异物的作用。一旦出现血管障碍问题，LOX－1则会上升，由此LOX－1的数值可以作为测验血管炎症的新靶标来使用。\n\n此次检查结果：LOX－1偏高，LOX－1有驱除血液里异物的作用，酸化LDL等(证明是动脉硬化)的物质很多，说明血管内已有炎症。\n\n想要改善现在的状态，就要防止精神压力、精神紧张和氧化应激。推荐通过健康的饮食疗法改善生活习惯。\n\n'),(11033,'sLOX-1','Bb','CT','中',NULL),(11041,'sLOX-1','Bc','JP','中高','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1の値が高くなっています。LOX-1は血中から異物を取り除く働きをしているため、酸化LDLなどに代表される動脈硬化の原因物質が多く、血管の炎症が起っていると考えられます。\n　この状態を改善するには、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(11042,'sLOX-1','Bc','CS','中高','恶性胆固醇的新靶标LOX-1(血凝素样氧化型低密度胶蛋白受体)，具有驱除血液中异物的作用。一旦出现血管障碍问题，LOX－1则会上升，由此LOX－1的数值可以作为测验血管炎症的新靶标来使用。\n\n 此次检查结果：LOX－1偏高，LOX－1有驱除血液里异物的作用，酸化LDL等(证明是动脉硬化)的物质很多，说明血管内已有炎症。\n\n想要改善现在的状态，就要防止精神压力、精神紧张和氧化应激。推荐通过健康的饮食疗法改善生活习惯。\n\n\n'),(11043,'sLOX-1','Bc','CT','中高',NULL),(11051,'sLOX-1','C','JP','高','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1が非常に高く、動脈硬化の進行しやすい状態です。血中に酸化LDLなどに代表される動脈硬化の原因物質が多く存在し、血管の炎症が進行している可能性が高いと考えられます。\n　まずは、脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。'),(11052,'sLOX-1','C','CS','高','恶性胆固醇的新靶标LOX-1(血凝素样氧化型低密度胶蛋白受体)，具有驱除血液中异物的作用。一旦出现血管障碍问题，LOX－1则会上升，由此LOX－1的数值可以作为测验血管炎症的新靶标来使用。\n\n此次检查结果：LOX－1非常高，已经属于动脉硬化。血液中能够证明是动脉硬化的氧化LDL等物质很多，血管发炎的可能性很高。\n\n首先，请做脉波的传播速度(PWV、CAVI)等颈动脉超声检查确认动脉硬化的发展速度、并且根据检查结果，研究改善身体状况的具体措施。'),(11053,'sLOX-1','C','CT','高',NULL),(12011,'sLOX-1','A->A','JP','現状維持','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回と同様にLOX-1が低く、理想的な状態です。動脈硬化が進行しにくい状態が保たれていると考えられます。\n　高血圧や塩分摂取の増加、高脂質、ストレスなどによりLOX-1は高くなります。食生活の改善やストレスの解消などにより、リスクを抑えるように心がけて下さい。'),(12012,'sLOX-1','A->A','CS','現状維持',NULL),(12013,'sLOX-1','A->A','CT','現状維持',NULL),(12021,'sLOX-1','A->Ba','JP','少し悪化','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回より高めですが、LOX-1の値が低い状態となっています。現状は大きな問題とはなりませんが、前回の結果を目標に改善を目指しましょう。\n　高血圧や塩分摂取の増加、高脂質、ストレスなどによりLOX-1は高くなります。食生活の改善やストレスの解消などにより、リスクを抑えるように心がけて下さい。'),(12022,'sLOX-1','A->Ba','CS','少し悪化',NULL),(12023,'sLOX-1','A->Ba','CT','少し悪化',NULL),(12031,'sLOX-1','A->Bb','JP','悪化','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1の値が前回より高く、状態が悪化しています。LOX-1は血中から異物を取り除く働きをしているため、酸化LDLなどに代表される動脈硬化の原因物質が多く、血管の炎症が起っていると考えられます。\n　生活習慣の悪化やストレスの増加などに心当たりがあるでしょうか？前回の受診後から、生活習慣で大きく変わった事など問題を見つけ、改善に努めましょう。'),(12032,'sLOX-1','A->Bb','CS','悪化',NULL),(12033,'sLOX-1','A->Bb','CT','悪化',NULL),(12041,'sLOX-1','A->Bc','JP','悪化','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1の値が前回より非常に高く、状態がかなり悪化しています。LOX-1は血中から異物を取り除く働きをしているため、酸化LDLなどに代表される動脈硬化の原因物質が多く、血管の炎症が起っていると考えられます。\n　生活習慣の悪化やストレスの増加などに心当たりがあるでしょうか？前回の受診後から、生活習慣で大きく変わった事など問題を見つけ、改善に努めましょう。'),(12042,'sLOX-1','A->Bc','CS','悪化',NULL),(12043,'sLOX-1','A->Bc','CT','悪化',NULL),(12051,'sLOX-1','A->C','JP','超悪化','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1の値が前回より非常に高く、危険な状態です。血中に酸化LDLなどに代表される動脈硬化の原因物質が多く存在し、血管の炎症が進行している可能性が高いと考えられます。\n　生活習慣の悪化やストレスの増加などに心当たりがあるでしょうか？すぐにかかりつけ医に相談し、脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。'),(12052,'sLOX-1','A->C','CS','超悪化',NULL),(12053,'sLOX-1','A->C','CT','超悪化',NULL),(12061,'sLOX-1','Ba->A','JP','改善','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回と比較して改善し、LOX-1の値が低く、理想的な状態です。LOX-1は血中から異物を取り除く働きをしているため、異物が少なく、また、血管炎症も少なく、動脈硬化が進行しにくい状態が保たれていると考えられます。\n　しかし、安心は禁物です。特に加齢に伴って、血中の異物は増え、動脈硬化が進行しやすくなります。今まで以上に健康を意識した生活習慣を心がけて下さい。'),(12062,'sLOX-1','Ba->A','CS','改善',NULL),(12063,'sLOX-1','Ba->A','CT','改善',NULL),(12071,'sLOX-1','Ba->Ba','JP','現状維持','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回と同様にLOX-1の値が低い状態です。しかしLOX-1は血中から異物を取り除く働きをしているため、酸化LDLなどに代表される動脈硬化の原因物質が多く、血管の炎症が起っていると考えられます。\n　この状態を改善するには、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(12072,'sLOX-1','Ba->Ba','CS','現状維持',NULL),(12073,'sLOX-1','Ba->Ba','CT','現状維持',NULL),(12081,'sLOX-1','Ba->Bb','JP','少し悪化','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回より悪化し、LOX-1の値が少し高くなっています。LOX-1は血中から異物を取り除く働きをしているため、酸化LDLなどに代表される動脈硬化の原因物質が多く、血管の炎症が起っていると考えられます。\n　この状態を改善するには、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(12082,'sLOX-1','Ba->Bb','CS','少し悪化',NULL),(12083,'sLOX-1','Ba->Bb','CT','少し悪化',NULL),(12091,'sLOX-1','Ba->Bc','JP','悪化','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回よりかなり悪化し、LOX-1の値が高くなっています。LOX-1は血中から異物を取り除く働きをしているため、酸化LDLなどに代表される動脈硬化の原因物質が多く、血管の炎症が起っていると考えられます。\n　この状態を改善するには、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(12092,'sLOX-1','Ba->Bc','CS','悪化',NULL),(12093,'sLOX-1','Ba->Bc','CT','悪化',NULL),(12101,'sLOX-1','Ba->C','JP','超悪化','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回よりかなり悪化し、LOX-1の値が非常に高く、動脈硬化の進行しやすい危険な状態です。血中に酸化LDLなどに代表される動脈硬化の原因物質が多く存在し、血管の炎症が進行している可能性が高いと考えられます。\n　体調の変化や生活習慣の悪化、ストレスの増加などに心当たりがあるでしょうか？すぐにかかりつけ医に相談し、脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。'),(12102,'sLOX-1','Ba->C','CS','超悪化',NULL),(12103,'sLOX-1','Ba->C','CT','超悪化',NULL),(12111,'sLOX-1','Bb->A','JP','改善','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回と比較して改善し、LOX-1の値が低く理想的な状態です。LOX-1は血中から異物を取り除く働きをしているため、異物が少なく、また、血管炎症も少なく、動脈硬化が進行しにくい状態が保たれていると考えられます。\n　しかし、安心は禁物です。特に加齢に伴って、血中の異物は増え、動脈硬化が進行しやすくなります。今まで以上に健康を意識した生活習慣を心がけて下さい。'),(12112,'sLOX-1','Bb->A','CS','改善',NULL),(12113,'sLOX-1','Bb->A','CT','改善',NULL),(12121,'sLOX-1','Bb->Ba','JP','少し改善','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1の値が低い状態で、前回より改善が見られます。LOX-1は血中から異物を取り除く働きをしているため、異物が少なく、また、血管炎症も少なく、動脈硬化が進行しにくい状態が保たれていると考えられます。\n　より理想的な状態に近づけるために、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(12122,'sLOX-1','Bb->Ba','CS','少し改善',NULL),(12123,'sLOX-1','Bb->Ba','CT','少し改善',NULL),(12131,'sLOX-1','Bb->Bb','JP','現状維持','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回と同様にLOX-1の値が少し高い状態です。LOX-1は血中から異物を取り除く働きをしているため、酸化LDLなどに代表される動脈硬化の原因物質が多く、血管の炎症が起っていると考えられます。\n　この状態を改善するには、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(12132,'sLOX-1','Bb->Bb','CS','現状維持',NULL),(12133,'sLOX-1','Bb->Bb','CT','現状維持',NULL),(12141,'sLOX-1','Bb->Bc','JP','悪化','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回より悪化しLOX-1の値が高くなっています。動脈硬化が進みやすい状態になっていると考えられます。\n　体調の変化や生活習慣の悪化、ストレスの増加などに心当たりがあるでしょうか？すぐにかかりつけ医に相談し、脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。'),(12142,'sLOX-1','Bb->Bc','CS','悪化',NULL),(12143,'sLOX-1','Bb->Bc','CT','悪化',NULL),(12151,'sLOX-1','Bb->C','JP','超悪化','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1の値が前回より非常に高く、危険な状態です。動脈硬化が進みやすい状態になっていると考えられます。\n　体調の変化や生活習慣の悪化やストレスの増加などに心当たりがあるでしょうか？すぐにかかりつけ医に相談し、脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。'),(12152,'sLOX-1','Bb->C','CS','超悪化',NULL),(12153,'sLOX-1','Bb->C','CT','超悪化',NULL),(12161,'sLOX-1','Bc->A','JP','改善','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回と比較して改善し、LOX-1の値が低く、理想的な状態です。LOX-1は血中から異物を取り除く働きをしているため、異物が少なく、また、血管炎症も少なく、動脈硬化が進行しにくい状態が保たれていると考えられます。\n　しかし、安心は禁物です。特に加齢に伴って、血中の異物は増え、動脈硬化が進行しやすくなります。今まで以上に健康を意識した生活習慣を心がけて下さい。'),(12162,'sLOX-1','Bc->A','CS','改善',NULL),(12163,'sLOX-1','Bc->A','CT','改善',NULL),(12171,'sLOX-1','Bc->Ba','JP','改善','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1の値が低い状態で、前回より改善が見られます。理想的な状態に近づきつつあります。LOX-1は血中から異物を取り除く働きをしているため、異物が少なく、また、血管炎症も少なく、動脈硬化が進行しにくい状態が保たれていると考えられます。\n　より理想的な状態に近づけるために、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(12172,'sLOX-1','Bc->Ba','CS','改善',NULL),(12173,'sLOX-1','Bc->Ba','CT','改善',NULL),(12181,'sLOX-1','Bc->Bb','JP','少し改善','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回より改善が見られますがLOX-1の値が少し高い状態です。さらによい状態を目指していきましょう。\n　さらに改善していくには、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(12182,'sLOX-1','Bc->Bb','CS','少し改善',NULL),(12183,'sLOX-1','Bc->Bb','CT','少し改善',NULL),(12191,'sLOX-1','Bc->Bc','JP','現状維持','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回同様にLOX-1の値が高い状態が続いています。LOX-1は血中から異物を取り除く働きをしているため、酸化LDLなどに代表される動脈硬化の原因物質が多く、血管の炎症が起っていると考えられます。\n　まずは、脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。'),(12192,'sLOX-1','Bc->Bc','CS','現状維持',NULL),(12193,'sLOX-1','Bc->Bc','CT','現状維持',NULL),(12201,'sLOX-1','Bc->C','JP','悪化','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1の値が前回より非常に高く、危険な状態です。動脈硬化の進行しやすい危険な状態です。血中に酸化LDLなどに代表される動脈硬化の原因物質が多く存在し、血管の炎症が進行している可能性が高いと考えられます。\n　まずは、脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。'),(12202,'sLOX-1','Bc->C','CS','悪化',NULL),(12203,'sLOX-1','Bc->C','CT','悪化',NULL),(12211,'sLOX-1','C->A','JP','超改善','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回と比較して大幅に改善し、LOX-1の値が低く理想的な状態です。LOX-1は血中から異物を取り除く働きをしているため、異物が少なく、また、血管炎症も少なく、動脈硬化が進行しにくい状態が保たれていると考えられます。\n　しかし、安心は禁物です。特に加齢に伴って、血中の異物は増え、動脈硬化が進行しやすくなります。今まで以上に健康を意識した生活習慣を心がけて下さい。'),(12212,'sLOX-1','C->A','CS','超改善',NULL),(12213,'sLOX-1','C->A','CT','超改善',NULL),(12221,'sLOX-1','C->Ba','JP','超改善','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、LOX-1の値が低い状態で、前回より改善が見られます。理想的な状態に近づきつつあります。LOX-1は血中から異物を取り除く働きをしているため、異物が少なく、また、血管炎症も少なく、動脈硬化が進行しにくい状態が保たれていると考えられます。\n　より理想的な状態に近づけるために、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(12222,'sLOX-1','C->Ba','CS','超改善',NULL),(12223,'sLOX-1','C->Ba','CT','超改善',NULL),(12231,'sLOX-1','C->Bb','JP','改善','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回より改善が見られますがLOX-1の値が少し高い状態です。さらによい状態を目指していきましょう。\n　さらに改善していくには、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(12232,'sLOX-1','C->Bb','CS','改善',NULL),(12233,'sLOX-1','C->Bb','CT','改善',NULL),(12241,'sLOX-1','C->Bc','JP','少し改善','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回より少し改善が見られますがLOX-1の値が高い状態です。さらによい状態を目指し、生活習慣の改善などに努めていきましょう。\n　さらに改善していくには、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(12242,'sLOX-1','C->Bc','CS','少し改善',NULL),(12243,'sLOX-1','C->Bc','CT','少し改善',NULL),(12251,'sLOX-1','C->C++','JP','少し改善','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回より少し改善が見られますがLOX-1の値がまだ高い状態です。さらによい状態を目指し、生活習慣の改善などに努めていきましょう。\n　さらに改善していくには、ストレスを避けることが必要です。メンタルストレスのほか、酸化ストレスにも注意して下さい。食を中心とした生活習慣の改善をお薦めします。'),(12252,'sLOX-1','C->C++','CS','少し改善',NULL),(12253,'sLOX-1','C->C++','CT','少し改善',NULL),(12261,'sLOX-1','C->C','JP','現状維持','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回同様にLOX-1の値が非常に高い状態が続いています。動脈硬化の進行しやすい危険な状態です。血中に酸化LDLなどに代表される動脈硬化の原因物質が多く存在し、血管の炎症が進行している可能性が高いと考えられます。\n　まずは、脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。'),(12262,'sLOX-1','C->C','CS','現状維持',NULL),(12263,'sLOX-1','C->C','CT','現状維持',NULL),(12271,'sLOX-1','C->C--','JP','悪化','　超悪玉コレステロールの担い手LOX-1は、血液中から異物を取り除く働きをしています。血管に障害が起こるとLOX-1の生成が促進されるため、LOX-1は血管炎症の指標として利用されています。\n　今回の結果は、前回と同様にLOX-1の値が非常に高い状態が続いています。動脈硬化の進行しやすい危険な状態です。血中に酸化LDLなどに代表される動脈硬化の原因物質が多く存在し、血管の炎症が進行している可能性が高いと考えられます。\n　まずは、脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。'),(12272,'sLOX-1','C->C--','CS','悪化',NULL),(12273,'sLOX-1','C->C--','CT','悪化',NULL),(21011,'LAB','A','JP','低','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、動脈硬化の原因であるLABは低く、動脈硬化が進行しにくい理想的な状態を保てていると考えられます。\n　しかし、安心は禁物です。特に加齢に伴って、血中の異物は増え、動脈硬化が進行しやすくなります。今まで以上に健康を意識した生活習慣を心がけて下さい。'),(21012,'LAB','A','CS','低','恶性胆固醇LAB是恶性胆固醇LDL胆固醇受活性氧等影响而使血管“生锈”的状态。这种“生锈”的LDL胆固醇是引起动脉硬化原因。\n\n此次检查结果：造成动脉硬化的原因LAB很低，不容易产生动脉硬化，属于健康的理想状态,。\n\n不过此结果并不说明能够掉以轻心，今后随着年龄的增长，仍然有得脑梗塞和心梗塞的可能，今后要比现在更加注意保持健康的饮食习惯。'),(21013,'LAB','A','CT','低',NULL),(21021,'LAB','Ba','JP','中低','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、動脈硬化の原因であるLABの値が低い状態です。しかし、これはLDLコレステロールの酸化が少しづつ進んでいる状態と考えられ、サビついたLDLコレステロールが増える傾向にあります。\n　この状態を改善するには、食を中心とした生活習慣の改善をお薦めします。'),(21022,'LAB','Ba','CS','中低','恶性胆固醇LAB是恶性胆固醇LDL胆固醇受活性氧等影响而使血管“生锈”的状态。这种“生锈”的LDL胆固醇是引起动脉硬化原因。\n\n此次检查结果：造成动脉硬化的原因LAB很低，但是有LDL胆固醇逐渐氧化的现象发生，生锈的LDL胆固醇有增加的倾向。\n\n要改善现状，建议改变现在的饮食习惯。'),(21023,'LAB','Ba','CT','中低',NULL),(21031,'LAB','Bb','JP','中','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、動脈硬化の原因であるLABの値が少し高い状態です。これはLDLコレステロールの酸化が進んでいる状態と考えられ、サビついたLDLコレステロールが増えてきています。\n　この状態を改善するには、食を中心とした生活習慣の改善をお薦めします。'),(21032,'LAB','Bb','CS','中','恶性胆固醇LAB是恶性胆固醇LDL胆固醇受活性氧等影响而使血管“生锈”的状态。这种“生锈”的LDL胆固醇是引起动脉硬化原因。\n\n此次检查结果： 造成动脉硬化的LAB值偏高，这个指标认为有可能LDL胆固醇的氧化现象已经产生，“生锈”的LDL胆固醇也再继续增加。\n\n要改善现状，建议改变现在的饮食习惯。'),(21033,'LAB','Bb','CT','中',NULL),(21041,'LAB','Bc','JP','中高','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　　今回の結果は、動脈硬化の原因であるLABの値が高い状態です。これはLDLコレステロールの酸化が進んでいる状態と考えられ、サビついたLDLコレステロールが増えています。\n　この状態を改善するには、食を中心とした生活習慣の改善をお薦めします。'),(21042,'LAB','Bc','CS','中高','恶性胆固醇LAB是恶性胆固醇LDL胆固醇受活性氧等影响而使血管“生锈”的状态。这种“生锈”的LDL胆固醇是引起动脉硬化原因。\n\n此次的检查结果：造成动脉硬化的LAB值较高，这个指标可以看出LDL胆固醇的氧化现象已经产生，“生锈”的LDL胆固醇也再继续增加。\n\n要改善现状，建议改变现在的饮食习惯。'),(21043,'LAB','Bc','CT','中高',NULL),(21051,'LAB','C','JP','高','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、動脈硬化の原因であるLABが非常に高い状態です。動脈硬化が進みやすい状態もしくは動脈硬化がかなり進行している可能性があります。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。また、生活習慣の改善も必要です。'),(21052,'LAB','C','CS','高','恶性胆固醇LAB是恶性胆固醇LDL胆固醇受活性氧等影响而使血管“生锈”的状态。这种“生锈”的LDL胆固醇是引起动脉硬化原因。\n\n此次的检查结果: 造成动脉硬化的LAB值很高，有可能是动脉硬化发展很快，或者说动脉硬化很严重。\n\n首先，脉波的传播速度(PWV、CAVI)等颈动脉超声波检查确认动脉硬化的发展速度，并根据检查结果寻求适当的指导，改善现在的生活习惯。'),(21053,'LAB','C','CT','高',NULL),(22011,'LAB','A->A','JP','現状維持','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回同様に動脈硬化の原因であるLABは低く、動脈硬化が進行しにくい理想的な状態を保てていると考えられます。\n　しかし、安心は禁物です。特に加齢に伴って、血中の異物は増え、動脈硬化が進行しやすくなります。今まで以上に健康を意識した生活習慣を心がけて下さい。'),(22012,'LAB','A->A','CS','現状維持',NULL),(22013,'LAB','A->A','CT','現状維持',NULL),(22021,'LAB','A->Ba','JP','少し悪化','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回より高めですがLABの値は低い状態です。しかし、これはLDLコレステロールの酸化が少しづつ進んでいる状態と考えられ、サビついたLDLコレステロールが増える傾向にあります。\n　生活習慣に大きな変化がなければ、一過性のストレスや炎症等によるものと考えられます。今後、加齢などの要因がリスクを高める可能性がありますので、よりよい生活習慣を保ちましょう。'),(22022,'LAB','A->Ba','CS','少し悪化',NULL),(22023,'LAB','A->Ba','CT','少し悪化',NULL),(22031,'LAB','A->Bb','JP','悪化','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、LABの値が高く、状態が悪化しています。これはLDLコレステロールの酸化が進んでいる状態と考えられ、サビついたLDLコレステロールが増えてきています。\n　生活習慣に大きな変化がなければ、一過性のストレスや炎症等によるものと考えられます。今後、加齢などの要因がリスクを高める可能性がありますので、よりよい生活習慣を保ちましょう。'),(22032,'LAB','A->Bb','CS','悪化',NULL),(22033,'LAB','A->Bb','CT','悪化',NULL),(22041,'LAB','A->Bc','JP','悪化','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、動脈硬化の原因であるLABの値が非常に高く、状態がかなり悪化しています。今後、加齢などによりリスクが上がる可能性がかなり高いと考えられます。\n　まずは、脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。'),(22042,'LAB','A->Bc','CS','悪化',NULL),(22043,'LAB','A->Bc','CT','悪化',NULL),(22051,'LAB','A->C','JP','超悪化','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、動脈硬化の原因であるLABが前回と比較してかなり悪化し、非常に高い状態です。今後、加齢などによりリスクが上がる可能性がかなり高いと考えられます。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。また、生活習慣の改善も必要です。'),(22052,'LAB','A->C','CS','超悪化',NULL),(22053,'LAB','A->C','CT','超悪化',NULL),(22061,'LAB','Ba->A','JP','改善','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、動脈硬化の原因であるLABは前回より改善し、動脈硬化が進行しにくい理想的な状態を保てていると考えられます。\n　今後、加齢などによりリスクが上がる可能性が高いため、生活習慣の改善などでLABを下げるように心がけて下さい。'),(22062,'LAB','Ba->A','CS','改善',NULL),(22063,'LAB','Ba->A','CT','改善',NULL),(22071,'LAB','Ba->Ba','JP','現状維持','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回と同様に動脈硬化の原因であるLABの値が低い状態です。しかし、少しの努力でより低くすることができます。生活習慣の改善を目指しましょう。\n　今後、加齢などによりリスクが上がる可能性が高いため、生活習慣の改善などでLABを下げるように心がけて下さい。'),(22072,'LAB','Ba->Ba','CS','現状維持',NULL),(22073,'LAB','Ba->Ba','CT','現状維持',NULL),(22081,'LAB','Ba->Bb','JP','少し悪化','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回より少し悪化しLABの値は少し高い状態です。リスクが上昇している傾向がみられます。\n　生活習慣に大きな変化がなければ、一過性のストレスや炎症等によるものと考えられます。今後、加齢などの要因がリスクを高める可能性がありますので、よりよい生活習慣を保ちましょう。'),(22082,'LAB','Ba->Bb','CS','少し悪化',NULL),(22083,'LAB','Ba->Bb','CT','少し悪化',NULL),(22091,'LAB','Ba->Bc','JP','悪化','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回より悪化しLABの値が高い状態です。これはLDLコレステロールの酸化が進んでいる状態と考えられ、サビついたLDLコレステロールが増えています。\n　今後、加齢などによりリスクが上がる可能性が高いため、生活習慣の改善などでLABを下げるように心がけて下さい。'),(22092,'LAB','Ba->Bc','CS','悪化',NULL),(22093,'LAB','Ba->Bc','CT','悪化',NULL),(22101,'LAB','Ba->C','JP','超悪化','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回よりかなり悪化しLABが非常に高い状態です。今後、加齢などによりリスクが上がる可能性がかなり高いと考えられます。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。また、生活習慣の改善も必要です。'),(22102,'LAB','Ba->C','CS','超悪化',NULL),(22103,'LAB','Ba->C','CT','超悪化',NULL),(22111,'LAB','Bb->A','JP','改善','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回と比較して改善し、LABの値が低く理想的な状態です。動脈硬化が進行しにくい理想的な状態を保てていると考えられます。\n　しかし、安心は禁物です。特に加齢に伴って、血中の異物は増え、動脈硬化が進行しやすくなります。今まで以上に健康を意識した生活習慣を心がけて下さい。'),(22112,'LAB','Bb->A','CS','改善',NULL),(22113,'LAB','Bb->A','CT','改善',NULL),(22121,'LAB','Bb->Ba','JP','少し改善','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、LABの値が低い状態で、前回より改善が見られます。動脈硬化が進行しにくい状態にあると考えられます。\n　しかし今後、加齢などによりリスクが上がる可能性が高いため、生活習慣の改善などでLABを下げるように心がけて下さい。'),(22122,'LAB','Bb->Ba','CS','少し改善',NULL),(22123,'LAB','Bb->Ba','CT','少し改善',NULL),(22131,'LAB','Bb->Bb','JP','現状維持','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回と同様にLABの値が少し高い状態です。これはLDLコレステロールの酸化が進んでいる状態と考えられ、サビついたLDLコレステロールが増えてきています。\n　今一度、生活習慣を見直してみましょう。また今後、加齢などによりリスクが上がる可能性が高いため、生活習慣の改善などでLABを下げるように心がけて下さい。'),(22132,'LAB','Bb->Bb','CS','現状維持',NULL),(22133,'LAB','Bb->Bb','CT','現状維持',NULL),(22141,'LAB','Bb->Bc','JP','悪化','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回より悪化しLABの値が高い状態です。これはLDLコレステロールの酸化が進んでいる状態と考えられ、サビついたLDLコレステロールが増えています。\n　生活習慣に大きな変化がなければ、一過性のストレスや炎症等によるものと考えられます。今後、加齢などの要因がリスクを高める可能性がありますので、よりよい生活習慣を保ちましょう。'),(22142,'LAB','Bb->Bc','CS','悪化',NULL),(22143,'LAB','Bb->Bc','CT','悪化',NULL),(22151,'LAB','Bb->C','JP','超悪化','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回と比べてかなり悪化し、動脈硬化の原因であるLABが非常に高い状態です。動脈硬化が進行している可能性があります。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。また、生活習慣の改善も必要です。'),(22152,'LAB','Bb->C','CS','超悪化',NULL),(22153,'LAB','Bb->C','CT','超悪化',NULL),(22161,'LAB','Bc->A','JP','改善','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回と比較して改善し、LABの値が低く理想的な状態です。動脈硬化が進行しにくい理想的な状態を保てていると考えられます。\n　しかし今後、加齢などの要因がリスクを高める可能性がありますので、よりよい生活習慣を保ちましょう。'),(22162,'LAB','Bc->A','CS','改善',NULL),(22163,'LAB','Bc->A','CT','改善',NULL),(22171,'LAB','Bc->Ba','JP','改善','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、動脈硬化の原因であるLABの値が低い状態です。動脈硬化が進行しにくい状態になっていると考えられます。\n　今回の結果を励みにさらなる改善を目指しましょう。'),(22172,'LAB','Bc->Ba','CS','改善',NULL),(22173,'LAB','Bc->Ba','CT','改善',NULL),(22181,'LAB','Bc->Bb','JP','少し改善','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回より改善が見られますが、LABの値がまだ少し高い状態です。\n　更なる改善を目指すために、生活習慣を見直してみましょう。また今後、加齢などによりリスクが上がる可能性が高いため、生活習慣の改善などでLABを下げるように心がけて下さい。'),(22182,'LAB','Bc->Bb','CS','少し改善',NULL),(22183,'LAB','Bc->Bb','CT','少し改善',NULL),(22191,'LAB','Bc->Bc','JP','現状維持','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回同様に動脈硬化の原因であるLABの値が高い状態です。\n　この状態を改善するために、生活習慣を見直してください。また、加齢などの要因がリスクを高める可能性がありますので、よりよい生活習慣を心がけましょう。'),(22192,'LAB','Bc->Bc','CS','現状維持',NULL),(22193,'LAB','Bc->Bc','CT','現状維持',NULL),(22201,'LAB','Bc->C','JP','悪化','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回と比べてかなり悪化し、動脈硬化の原因であるLABが非常に高い状態です。動脈硬化が進行している可能性があります。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。また、生活習慣の改善も必要です。'),(22202,'LAB','Bc->C','CS','悪化',NULL),(22203,'LAB','Bc->C','CT','悪化',NULL),(22211,'LAB','C->A','JP','超改善','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回と比べると大幅に改善し、動脈硬化の原因であるLABは非常に低く、動脈硬化が進行しにくい理想的な状態を保てていると考えられます。\n　しかし今後、加齢に伴って、血中の異物は増え、動脈硬化が進行しやすくなります。今まで以上に健康を意識した生活習慣を心がけて下さい。'),(22212,'LAB','C->A','CS','超改善',NULL),(22213,'LAB','C->A','CT','超改善',NULL),(22221,'LAB','C->Ba','JP','超改善','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回と比べると改善し、動脈硬化の原因であるLABの値が低くなっています。動脈硬化が進行しにくい状態になっていると考えられます。\n　　しかし今後、加齢に伴って、血中の異物は増え、動脈硬化が進行しやすくなります。今まで以上に健康を意識した生活習慣を心がけて下さい。'),(22222,'LAB','C->Ba','CS','超改善',NULL),(22223,'LAB','C->Ba','CT','超改善',NULL),(22231,'LAB','C->Bb','JP','改善','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回より改善が見られますが、LABの値がまだ少し高い状態です。更なる改善を目指しましょう。\n　今後、加齢に伴って、血中の異物は増え、動脈硬化が進行しやすくなります。今まで以上に健康を意識した生活習慣を心がけて下さい。'),(22232,'LAB','C->Bb','CS','改善',NULL),(22233,'LAB','C->Bb','CT','改善',NULL),(22241,'LAB','C->Bc','JP','少し改善','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回より改善が見られますが、LABの値がまだ高い状態です。\n　更なる改善を目指すために、生活習慣を見直してみましょう。また今後、加齢などによりリスクが上がる可能性が高いため、生活習慣の改善などでLABを下げるように心がけて下さい。'),(22242,'LAB','C->Bc','CS','少し改善',NULL),(22243,'LAB','C->Bc','CT','少し改善',NULL),(22251,'LAB','C->C++','JP','少し改善','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、前回より改善が見られますが、LABの値が非常に高い状態が続いています。更なる改善を目指しましょう。\n　この状態を改善するために、生活習慣を見直してください。また、加齢などの要因がリスクを高める可能性がありますので、よりよい生活習慣を心がけましょう。'),(22252,'LAB','C->C++','CS','少し改善',NULL),(22253,'LAB','C->C++','CT','少し改善',NULL),(22261,'LAB','C->C','JP','現状維持','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、　今回の結果は、前回と同様に動脈硬化の原因であるLABが非常に高い状態です。動脈硬化が進行している可能性があります。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。'),(22262,'LAB','C->C','CS','現状維持',NULL),(22263,'LAB','C->C','CT','現状維持',NULL),(22271,'LAB','C->C--','JP','悪化','　超悪玉コレステロールLABは、悪玉コレステロールであるLDLコレステロールが酸化し、サビ付いた状態を示します。LDLコレステロールの一部は活性酸素等の影響によりサビつきます。このサビ付いたLDLコレステロールは動脈硬化を引き起こす原因となります。\n　今回の結果は、　今回の結果は、前回と同様に動脈硬化の原因であるLABが非常に高い状態です。動脈硬化が進行している可能性があります。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなどの検査で動脈硬化の進行度合をチェックして下さい。その結果と併せて、適切な改善指導を受けられることをお薦め致します。'),(22272,'LAB','C->C--','CS','悪化',NULL),(22273,'LAB','C->C--','CT','悪化',NULL),(31011,'LOX-index','A','JP','低','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、リスクは低いと評価されました。このまま今の状態を維持できれば、将来的に脳梗塞・心筋梗塞が発症するリスクを低く抑えることができます。\n　しかし、安心は禁物です。今後、加齢などにより発症リスクが上がる可能性もあります。今まで以上に健康を意識した生活習慣を心がけ、LOX-1とLABを低く保てるようして下さい。'),(31012,'LOX-index','A','CS','低','「lox-index」是衡量脑梗塞和心梗的最新靶标，这个验测结果能够得出今后发生心梗塞和脑梗塞的发病机率。 \n\n此次检查结果认为：发生脑梗塞和心梗塞的机率很低。如果今后保持这样的健康状态，将来得脑梗塞和心梗塞的可能性较小。 \n\n不过此结果并不说明能够掉以轻心，今后随着年龄的增长，仍然有得脑梗塞和心梗塞的可能，今后要比现在更加注意保持健康的饮食习惯，防止LOX-1和LAB增高。'),(31013,'LOX-index','A','CT','低',NULL),(31021,'LOX-index','Ba','JP','中低','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、リスクは低めと評価されました。少し努力することによって、将来的に脳梗塞・心筋梗塞が発症するリスクを低く抑えることができます。\n　しかし、安心は禁物です。今後、加齢などにより発症リスクが上がる可能性もあります。今まで以上に健康を意識した生活習慣を心がけ、LOX-1とLABを低く保てるようして下さい。'),(31022,'LOX-index','Ba','CS','中低','「lox-index」是衡量脑梗塞和心梗的最新靶标，这个验测结果能够得出今后发生心梗塞和脑梗塞的发病机率。 \n\n 此次的检查结果认为： 发生脑梗塞和心梗塞的机率很低，如果稍微努力，今后可以很好的预防发生脑梗塞和心梗塞。 不过此结果并不说明能够掉以轻心，\n\n今后随着年龄的增长，仍然有得脑梗塞和心梗塞的可能，今后要比现在更加注意保持健康的饮食习惯，防止LOX-1和LAB增高。'),(31023,'LOX-index','Ba','CT','中低',NULL),(31031,'LOX-index','Bb','JP','中','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、リスクは中程度と評価されました。将来、脳梗塞・心筋梗塞が発症するリスクは少し高めとなっています。\n　一時的な生活習慣の変化やストレスの上昇による、一過性の軽微なものとも考えられます。しかし今後、加齢などにより発症リスクが上がる可能性がかなり高いため、生活習慣の改善などでLOX-1とLABを下げる必要があります。\n　よりよい生活習慣とストレス解消を心がけて、リスクの軽減に努めましょう。'),(31032,'LOX-index','Bb','CS','中','「lox-index」是衡量脑梗塞和心梗的最新靶标，这个验测结果能够得出今后发生心梗塞和脑梗塞的发病机率。\n\n此次的检查结果认为：危险程度属于中等，将来有患心梗塞和脑梗塞的可能性。\n\n 可以推测为一时的生活习惯的变化和精神压力造成的临时性数据增高现象，今后随着年龄的增长，发生心梗塞和脑梗塞的可能性则会加大，需要及时改变生活和饮食习惯，有必要通过健康的生活方式保证LOX-1和LAB的数值下降。在改变生活习惯和减少精神压力的同时降低发病的可能性。'),(31033,'LOX-index','Bb','CT','中',NULL),(31041,'LOX-index','Bc','JP','中高','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、リスクは高めと評価されました。将来、脳梗塞・心筋梗塞が発症するリスクは高くなっています。\n　一時的な生活習慣の変化やストレスの上昇による、一過性の軽微なものとも考えられます。しかし今後、加齢などにより発症リスクが上がる可能性がかなり高いため、生活習慣の改善などでLOX-1とLABを下げる必要があります。\n　よりよい生活習慣とストレス解消を心がけて、リスクの軽減に努めましょう。'),(31042,'LOX-index','Bc','CS','中高','「lox-index」是衡量脑梗塞和心梗的最新靶标，这个验测结果能够得出今后发生心梗塞和脑梗塞的发病机率。 \n\n此次检查结果认为：患心脑血管病症的可能性高，将来患心梗塞和脑梗塞的可能性很大。\n\n 可以推测为一时的生活习惯的变化和精神压力造成的临时性数据增高现象，今后随着年龄的增长，发生心梗塞和脑梗塞的可能性则会加大，需要及时改变生活和饮食习惯，有必要通过健康的生活方式保证LOX-1和LAB的数值下降。在改变生活习惯和减少精神压力的同时降低发病的可能性。'),(31043,'LOX-index','Bc','CT','中高',NULL),(31051,'LOX-index','C','JP','高','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、リスクは非常に高いと評価されました。将来、脳梗塞・心筋梗塞が発症するリスクが高く、危険な状態です。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなど、動脈硬化の精密検査を受診されることをお薦めします。その結果を加味し、食事、運動といった生活習慣を早急に改善するようにしてください。'),(31052,'LOX-index','C','CS','高','「lox-index」是衡量脑梗塞和心梗的最新靶标，这个验测结果能够得出今后发生心梗塞和脑梗塞的发病机率。\n\n此次的检查结果认为：患心脑血管病症得可能性特别高，将来患心梗塞和脑梗塞的危险性很大，处于特别危险的状态中。\n\n首先，务必做脉波的传播速度(PWV、CAVI)等颈动脉超声检查，根据动脉硬化的结果通过饮食、运动等生活指导，尽快改变现在不良的生活习惯。'),(31053,'LOX-index','C','CT','高',NULL),(32011,'LOX-index','A->A','JP','現状維持','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と同様にリスクは低いと評価されました。このまま今の状態を維持できれば、将来的に脳梗塞・心筋梗塞が発症するリスクを低く抑えることができます。\n　しかし、安心は禁物です。今後、加齢などによりリスクが上がる可能性もあるため、今まで以上に健康を意識した生活習慣を心がけ、LOX-1とLABを低く保てるようして下さい。'),(32012,'LOX-index','A->A','CS','現状維持',NULL),(32013,'LOX-index','A->A','CT','現状維持',NULL),(32021,'LOX-index','A->Ba','JP','少し悪化','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回より少し悪化しておりますが、リスクは低めと評価されました。一時的な生活習慣の変化やストレスの上昇による、一過性の軽微なものの可能性が考えられます。\n　しかし、安心は禁物です。今後、加齢などによりリスクが上がる可能性もあるため、今まで以上に健康を意識した生活習慣を心がけ、LOX-1とLABを低く保てるようして下さい。'),(32022,'LOX-index','A->Ba','CS','少し悪化',NULL),(32023,'LOX-index','A->Ba','CT','少し悪化',NULL),(32031,'LOX-index','A->Bb','JP','悪化','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と比べて悪化していますがリスクは中程度と評価されました。一時的な生活習慣の変化やストレスの上昇による、一過性の軽微なものの可能性が考えられます。\n　しかし、安心は禁物です。今後、加齢などによりリスクが上がる可能性もあるため、今まで以上に健康を意識した生活習慣を心がけ、LOX-1とLABを低く保てるようして下さい。'),(32032,'LOX-index','A->Bb','CS','悪化',NULL),(32033,'LOX-index','A->Bb','CT','悪化',NULL),(32041,'LOX-index','A->Bc','JP','悪化','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と比べて悪化しており、リスクが高めと評価されました。将来、脳梗塞・心筋梗塞が発症するリスクは少し高めとなっています。\n　一時的な生活習慣の変化やストレスの上昇による、一過性の軽微なものの可能性が考えられます。しかし今後、加齢などによりリスクが上がる可能性がかなり高いため、生活習慣の改善などでLOX-1とLABを下げる必要があります。\n　よりよい生活習慣とストレス解消を心がけて、リスクの軽減に努めましょう。'),(32042,'LOX-index','A->Bc','CS','悪化',NULL),(32043,'LOX-index','A->Bc','CT','悪化',NULL),(32051,'LOX-index','A->C','JP','超悪化','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と比べてかなり悪化しており、リスクは非常に高いと評価されました。動脈硬化が進行している可能性があり、将来、脳梗塞・心筋梗塞が発症するリスクが高く、危険な状態です。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなど、動脈硬化の精密検査を受診されることをお薦めします。その結果を加味し、食事、運動といった生活習慣を早急に改善するようにしてください。'),(32052,'LOX-index','A->C','CS','超悪化',NULL),(32053,'LOX-index','A->C','CT','超悪化',NULL),(32061,'LOX-index','Ba->A','JP','改善','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回より改善しリスクは低いと評価されました。このまま今の状態を維持できれば、将来的に脳梗塞・心筋梗塞が発症するリスクを低く抑えることができます。\n　しかし、安心は禁物です。今後、加齢などによりリスクが上がる可能性もあるため、今まで以上に健康を意識した生活習慣を心がけ、LOX-1とLABを低く保てるようして下さい。'),(32062,'LOX-index','Ba->A','CS','改善',NULL),(32063,'LOX-index','Ba->A','CT','改善',NULL),(32071,'LOX-index','Ba->Ba','JP','現状維持','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と同様にリスクは低めと評価されました。\n　少し努力することによって、将来的に脳梗塞・心筋梗塞が発症するリスクを低く抑えることができます。今一度、生活習慣を見直してみましょう。また今後、加齢などによりリスクが上がる可能性が高いため、よりよい生活習慣とストレス解消を心がけて、リスクの軽減に努めましょう。'),(32072,'LOX-index','Ba->Ba','CS','現状維持',NULL),(32073,'LOX-index','Ba->Ba','CT','現状維持',NULL),(32081,'LOX-index','Ba->Bb','JP','少し悪化','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と比べて少し悪化しておりリスクは中程度と評価されました。　将来、脳梗塞・心筋梗塞が発症するリスクは少し高めとなっていますが、生活習慣に大きな変化がなければ、一過性のストレスや炎症等によるものと考えられます。\n　今後、加齢などによりリスクが上がる可能性がかなり高いため、生活習慣の改善などでLOX-1とLABを下げる必要があります。よりよい生活習慣を心がけて下さい。'),(32082,'LOX-index','Ba->Bb','CS','少し悪化',NULL),(32083,'LOX-index','Ba->Bb','CT','少し悪化',NULL),(32091,'LOX-index','Ba->Bc','JP','悪化','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と比べて悪化しており、リスクが高めと評価されました。将来、脳梗塞・心筋梗塞が発症するリスクは少し高めとなっています。\n　一時的な生活習慣の変化やストレスの上昇による、一過性の軽微なものの可能性が考えられますが、今後、加齢などによりリスクが上がる可能性がかなり高いため、生活習慣の改善などでLOX-1とLABを下げる必要があります。\n　よりよい生活習慣とストレス解消を心がけて、リスクの軽減に努めましょう。'),(32092,'LOX-index','Ba->Bc','CS','悪化',NULL),(32093,'LOX-index','Ba->Bc','CT','悪化',NULL),(32101,'LOX-index','Ba->C','JP','超悪化','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と比べてかなり悪化しており、リスクは非常に高いと評価されました。動脈硬化が進行している可能性があり、将来、脳梗塞・心筋梗塞が発症するリスクが高く、危険な状態です。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなど、動脈硬化の精密検査を受診されることをお薦めします。その結果を加味し、食事、運動といった生活習慣を早急に改善するようにしてください。'),(32102,'LOX-index','Ba->C','CS','超悪化',NULL),(32103,'LOX-index','Ba->C','CT','超悪化',NULL),(32111,'LOX-index','Bb->A','JP','改善','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回より改善しリスクは低いと評価されました。このまま今の状態を維持できれば、将来的に脳梗塞・心筋梗塞が発症するリスクを低く抑えることができます。\n　しかし、安心は禁物です。今後、加齢などによりリスクが上がる可能性もあるため、今まで以上に健康を意識した生活習慣を心がけ、LOX-1とLABを低く保てるようして下さい。'),(32112,'LOX-index','Bb->A','CS','改善',NULL),(32113,'LOX-index','Bb->A','CT','改善',NULL),(32121,'LOX-index','Bb->Ba','JP','少し改善','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回より少し改善しリスクは低めと評価されました。\n　少し努力することによって、将来的に脳梗塞・心筋梗塞が発症するリスクを低く抑えることができます。今一度、生活習慣を見直してみましょう。また今後、加齢などによりリスクが上がる可能性が高いため、よりよい生活習慣とストレス解消を心がけて、リスクの軽減に努めましょう。'),(32122,'LOX-index','Bb->Ba','CS','少し改善',NULL),(32123,'LOX-index','Bb->Ba','CT','少し改善',NULL),(32131,'LOX-index','Bb->Bb','JP','現状維持','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と同様にリスクは中程度と評価されました。将来、脳梗塞・心筋梗塞が発症するリスクは少し高めとなっていますが、生活習慣に大きな変化がなければ、一過性のストレスや炎症等によるものと考えられます。\n　今後、加齢などによりリスクが上がる可能性がかなり高いため、生活習慣の改善などでLOX-1とLABを下げる必要があります。よりよい生活習慣を心がけて下さい。'),(32132,'LOX-index','Bb->Bb','CS','現状維持',NULL),(32133,'LOX-index','Bb->Bb','CT','現状維持',NULL),(32141,'LOX-index','Bb->Bc','JP','悪化','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と比べて悪化しており、リスクが高めと評価されました。将来、脳梗塞・心筋梗塞が発症するリスクは少し高めとなっています。\n　一時的な生活習慣の変化やストレスの上昇による、一過性の軽微なものの可能性が考えられますが、今後、加齢などによりリスクが上がる可能性がかなり高いため、生活習慣の改善などでLOX-1とLABを下げる必要があります。\n　よりよい生活習慣とストレス解消を心がけて、リスクの軽減に努めましょう。'),(32142,'LOX-index','Bb->Bc','CS','悪化',NULL),(32143,'LOX-index','Bb->Bc','CT','悪化',NULL),(32151,'LOX-index','Bb->C','JP','超悪化','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と比べてかなり悪化しており、リスクが非常に高くなっています。動脈硬化が進行している可能性があり、将来、脳梗塞・心筋梗塞が発症するリスクが高く、危険な状態です。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなど、動脈硬化の精密検査を受診されることをお薦めします。その結果を加味し、食事、運動といった生活習慣を早急に改善するようにしてください。'),(32152,'LOX-index','Bb->C','CS','超悪化',NULL),(32153,'LOX-index','Bb->C','CT','超悪化',NULL),(32161,'LOX-index','Bc->A','JP','改善','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回より改善しリスクは低いと評価されました。このまま今の状態を維持できれば、将来的に脳梗塞・心筋梗塞が発症するリスクを低く抑えることができます。\n　しかし、安心は禁物です。今後、加齢などによりリスクが上がる可能性もあるため、今まで以上に健康を意識した生活習慣を心がけ、LOX-1とLABを低く保てるようして下さい。'),(32162,'LOX-index','Bc->A','CS','改善',NULL),(32163,'LOX-index','Bc->A','CT','改善',NULL),(32171,'LOX-index','Bc->Ba','JP','改善','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回より改善しリスクは低めと評価されました。あと少し努力することによって、将来的に脳梗塞・心筋梗塞が発症するリスクを低く抑えることができます。\n　しかし、安心は禁物です。今後、加齢などによりリスクが上がる可能性もあるため、今まで以上に健康を意識した生活習慣を心がけ、LOX-1とLABを低く保てるようして下さい。'),(32172,'LOX-index','Bc->Ba','CS','改善',NULL),(32173,'LOX-index','Bc->Ba','CT','改善',NULL),(32181,'LOX-index','Bc->Bb','JP','少し改善','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回より少し改善しリスクは中程度と評価されました。更なる改善を目指しましょう。\n　今後、加齢などによりリスクが上がる可能性がかなり高いため、生活習慣の改善などでLOX-1とLABを下げる必要があります。\n　よりよい生活習慣とストレス解消を心がけて、リスクの軽減に努めましょう。'),(32182,'LOX-index','Bc->Bb','CS','少し改善',NULL),(32183,'LOX-index','Bc->Bb','CT','少し改善',NULL),(32191,'LOX-index','Bc->Bc','JP','現状維持','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と同様にリスクが高めと評価されました。動脈硬化が進行している可能性があります。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなど、動脈硬化の精密検査を受診されることをお薦めします。その結果を加味し、食事、運動といった生活習慣を早急に改善するようにしてください'),(32192,'LOX-index','Bc->Bc','CS','現状維持',NULL),(32193,'LOX-index','Bc->Bc','CT','現状維持',NULL),(32201,'LOX-index','Bc->C','JP','悪化','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回と比べて悪化しており、リスクが非常に高くなっています。動脈硬化が進行している可能性があり、将来、脳梗塞・心筋梗塞が発症するリスクが高く、危険な状態です。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなど、動脈硬化の精密検査を受診されることをお薦めします。その結果を加味し、食事、運動といった生活習慣を早急に改善するようにしてください。'),(32202,'LOX-index','Bc->C','CS','悪化',NULL),(32203,'LOX-index','Bc->C','CT','悪化',NULL),(32211,'LOX-index','C->A','JP','超改善','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回より大幅に改善しリスクは低いと評価されました。このまま今の状態を維持できれば、将来的に脳梗塞・心筋梗塞が発症するリスクを低く抑えることができます。\n　しかし今後、加齢などによりリスクが上がる可能性もあるため、生活習慣の改善などでLOX-1とLABを低く保てるよう心がけて下さい。'),(32212,'LOX-index','C->A','CS','超改善',NULL),(32213,'LOX-index','C->A','CT','超改善',NULL),(32221,'LOX-index','C->Ba','JP','超改善','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回より改善しリスクは低めと評価されました。あと少し努力することによって、将来的に脳梗塞・心筋梗塞が発症するリスクを低く抑えることができます。\n　今後、加齢などによりリスクが上がる可能性がかなり高いため、生活習慣の改善などでLOX-1とLABを下げる必要があります。\n　よりよい生活習慣とストレス解消を心がけて、リスクの軽減に努めましょう。'),(32222,'LOX-index','C->Ba','CS','超改善',NULL),(32223,'LOX-index','C->Ba','CT','超改善',NULL),(32231,'LOX-index','C->Bb','JP','改善','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回より改善しリスクは中程度と評価されました。更なる改善を目指しましょう。\n　今後、加齢などによりリスクが上がる可能性がかなり高いため、生活習慣の改善などでLOX-1とLABを下げる必要があります。\n　よりよい生活習慣とストレス解消を心がけて、リスクの軽減に努めましょう。'),(32232,'LOX-index','C->Bb','CS','改善',NULL),(32233,'LOX-index','C->Bb','CT','改善',NULL),(32241,'LOX-index','C->Bc','JP','少し改善','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回より改善していますがリスクはまだ高めです。更なる改善を目指しましょう。\n　前回、脈波伝播速度（PWV、CAVI）や頸動脈エコーなど、動脈硬化の精密検査を受診されるいなければ、受診をお薦めします。その結果を加味し、食事、運動といった生活習慣を早急に改善するようにしてください。'),(32242,'LOX-index','C->Bc','CS','少し改善',NULL),(32243,'LOX-index','C->Bc','CT','少し改善',NULL),(32251,'LOX-index','C->C++','JP','少し改善','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回より少し改善していますがリスクが非常に高い状態です。動脈硬化が進行している可能性があり、将来、脳梗塞・心筋梗塞が発症するリスクが高く、危険な状態です。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなど、動脈硬化の精密検査を受診されることをお薦めします。その結果を加味し、食事、運動といった生活習慣を早急に改善するようにしてください。'),(32252,'LOX-index','C->C++','CS','少し改善',NULL),(32253,'LOX-index','C->C++','CT','少し改善',NULL),(32261,'LOX-index','C->C','JP','現状維持','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回同様にリスクが非常に高い状態です。動脈硬化が進行している可能性があり、将来、脳梗塞・心筋梗塞が発症するリスクが高く、危険な状態です。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなど、動脈硬化の精密検査を受診されることをお薦めします。その結果を加味し、食事、運動といった生活習慣を早急に改善するようにしてください。'),(32262,'LOX-index','C->C','CS','現状維持',NULL),(32263,'LOX-index','C->C','CT','現状維持',NULL),(32271,'LOX-index','C->C--','JP','悪化','　「LOX-index」は、脳梗塞・心筋梗塞発症リスクを評価する最新の指標です。この結果は、将来の脳梗塞・心筋梗塞発症率を大きく左右します。\n　今回の検査結果では、前回同様にリスクが非常に高い状態です。動脈硬化が進行している可能性があり、将来、脳梗塞・心筋梗塞が発症するリスクが高く、危険な状態です。\n　まずは脈波伝播速度（PWV、CAVI）や頸動脈エコーなど、動脈硬化の精密検査を受診されることをお薦めします。その結果を加味し、食事、運動といった生活習慣を早急に改善するようにしてください。'),(32272,'LOX-index','C->C--','CS','悪化',NULL),(32273,'LOX-index','C->C--','CT','悪化',NULL),(41011,'total','01','JP','低[LOX-indexが低い]','　超悪玉コレステロールLAB、超悪玉コレステロールの担い手LOX-1がともに低い値で、血管障害リスク（血管が傷む危険性）が低い理想的な状態です。\n　しかし、安心は禁物です。動脈硬化が原因となる脳梗塞や心筋梗塞は、様々な要因から発症します。今回の検査結果は、動脈硬化の主な原因と考えられている血管障害リスクの一つを示しているに過ぎません。特に加齢にともなって、動脈硬化が進みやすい状態になりやすくなります。\n　今まで以上に健康を意識した生活習慣を心がけて下さい。特に、高血圧、高血糖、肥満、喫煙など、他の血管障害リスクを持っている人は十分注意して下さい。'),(41012,'total','01','CS','低[LOX-indexが低い]','超坏胆固醇LAB和坏胆固醇的运输工LOX－1数值都低，血管障碍的危险性很低，处于理想的健康状态。\n\n但是并不可以掉以轻心。因为动脉硬化引起的脑梗塞和心肌梗塞还会因为各种原因发生。此次的检查结果只能证明造成动脉硬化的主要原因的血管病变一项没有问题。特别是随着年龄增加，非常容易出现动脉硬化加重的状态。\n\n今后要更加注意坚持健康的生活习惯。尤其是有高血压、高血糖、肥胖、吸烟等容易出现血管问题的人群更要注意。'),(41013,'total','01','CT','低[LOX-indexが低い]',NULL),(41021,'total','02','JP','低（LABが高め～やや高め）','　超悪玉コレステロールLABが高く、超悪玉コレステロールの担い手LOX-1が低い状態で、血管障害リスク（血管が傷む危険性）が進行しやすい方向に傾いていると考えられます。\n　LABは、体内で活性酸素が発生することで、悪玉コレステロール（LDLコレステロール）がサビつく事で生成されます。サビ付きを抑えるには、活性酸素の発生を抑えることと、活性酸素への抵抗力を高めることが必要です。\n　活性酸素の発生を抑えるために、喫煙や運動不足などの生活習慣を見直して下さい。また活性酸素への抵抗力を高めるために、緑黄色野菜や果物の量を増やした食生活を心がけて下さい。'),(41022,'total','02','CS','低（LABが高め～やや高め）','超坏胆固醇LAB数值高，坏胆固醇的运输工LOX－1呈较低的状态，处于容易增加血管障碍危险度的状态。\n\nLAB是当体内产生的活性氧造成坏胆固醇（LDL脂蛋白）氧化产生的。为了防止氧化，必须防止活性氧的发生，并且加强体内对活性氧的抵抗力。\n为了防止活性氧的产生请检查和改善吸烟和运动不足等生活习惯。\n\n另外，为了提高机体对活性氧发生的抑制，请注意增加食用黄绿色蔬菜、水果。'),(41023,'total','02','CT','低（LABが高め～やや高め）',NULL),(41031,'total','03','JP','低（sLOX-1が高め～やや高め）','　超悪玉コレステロールLABは低く、超悪玉コレステロールの担い手LOX-1が高い状態で、血管障害リスク（血管が傷む危険性）が進行しやすい方向に傾いていると考えられます。\n　LOX-1は炎症で上昇することが知られています。体内に炎症の兆候が見られている可能性があり、生活習慣病や慢性疾患などの可能性は否定できません。\n　また、LOX-1が高い状態でLABが高くなると更にリスクが高まるため、LOX-1を低下させると共に、LABを上昇させないようにすることが重要です。\n　改善していくために、喫煙や運動不足などの生活習慣を見直すとともに、緑黄色野菜や果物の量を増やした食生活を心がけて下さい。'),(41032,'total','03','CS','低（sLOX-1が高め～やや高め）','超坏胆固醇LAB数值低，坏胆固醇的运输工LOX－1呈较高的状态，处于容易增加血管障碍危险度的状态。\n\n研究表明，LOX－1在有炎症时上升。推测可能体内有炎症的征兆。也不能否认存在生活习惯病或慢性炎症等状况。\n另外，因为在LOX－1高的情况下LAB也增高的话，危险度就会更高，所以不仅要降低LOX－1，还要防止LAB的上升。\n为了改善，请改变吸烟和运动不足等生活习惯。\n\n另外，为了防止活性氧的发生，请注意增加食用黄绿色蔬菜、水果。'),(41033,'total','03','CT','低（sLOX-1が高め～やや高め）',NULL),(41041,'total','04','JP','中高[sLOX-1が高い]','　超悪玉コレステロールLABの担い手LOX-1が非常に高い状態で、血管障害リスク（血管が傷む危険性）が高くなっています。\n　高血圧、高血糖、肥満、喫煙など他の動脈硬化リスクを持っている人は、疾患の治療や生活習慣の改善によってリスクを抑える必要があります。\n　LOX-1は炎症で上昇することが知られているため、生活習慣病や慢性疾患などにより炎症が起っている可能性があります。LOX-1が高い状態でLABが高くなると更にリスクが高まるため、LABを上昇させないようにすることが重要です。\n　経過観察のため、半年後の再受診をおすすめします。'),(41042,'total','04','CS','中高[sLOX-1が高い]','超坏胆固醇LAB和坏胆固醇的运输工LOX－1都非常高，处于血管障碍危险度高的状态。\n\n对于高血压、高血糖、肥胖、抽烟等容易患动脉硬化的高危人群来说，有必要在治疗的同时要改变现有的生活习惯。\n研究表明，LOX－1在有炎症时上升。推测炎症可能由生活习惯病或慢性疾病引起。\n因为在LOX－1增高时，LAB也增高会更加增加危险度，所以必须控制LAB上升。\n\n建议半年后再次检查观察病情发展。'),(41043,'total','04','CT','中高[sLOX-1が高い]',NULL),(41051,'total','05','JP','中高[LABが高い]','　超悪玉コレステロールLABが非常に高い状態です。そのため血管障害リスク（血管が傷む危険性）は高くなっています。\n　高血圧、高血糖、肥満、喫煙など他の動脈硬化リスクを持っている人は、疾患の治療や生活習慣の改善によってリスクを抑える必要があります。\n　LABは、体内で活性酸素が発生することで、悪玉コレステロール（LDLコレステロール）がサビつく事で生成されます。サビ付きを抑えるには、活性酸素の発生を抑えることと、活性酸素への抵抗力を高めることが必要です。\n　経過観察のため、半年後の再受診をおすすめします。'),(41052,'total','05','CS','中高[LABが高い]','超坏胆固醇LAB和坏胆固醇的运输工LOX－1都非常高，因此处于血管障碍危险度高的状态。\n\n对于高血压、高血糖、肥胖、抽烟等容易患动脉硬化的高危人群来说，有必要在治疗的同时要改变现有的生活习惯。\nLAB是当体内产生的活性氧造成坏胆固醇（LDL脂蛋白）氧化产生的。\n为了防止氧化，必须防止活性氧的发生，并且加强体内对活性氧的抵抗力。\n\n建议半年后再次检查观察病情发展。'),(41053,'total','05','CT','中高[LABが高い]',NULL),(41061,'total','06','JP','高[LOX-indexが高い]','　総合評価であるLOX-index値が非常に高く、血管障害リスク（血管が傷む危険性）が非常に高い状態です。\n　実際に動脈硬化がどこまで進行しているかを知るために、頚動脈エコーなどの精密検査を受診されることを強くおすすめします。その結果を加味して、医療機関の改善指導を受けることをお勧めします。\n改善指導の効果を知るためにも、半年後の再受診をおすすめします。'),(41062,'total','06','CS','高[LOX-indexが高い]','超坏胆固醇LAB和坏胆固醇的运输工LOX－1都非常高，处于血管障碍危险度非常高的状态。\n\n强烈建议通过颈动脉超声波等精密检查掌握实际动脉硬化的发展程度。\n并参照结果，在医疗机关接受改善指导。\n\n为了明确改善指导效果，建议半年后再次检查。'),(41063,'total','06','CT','高[LOX-indexが高い]',NULL),(41071,'total','07','JP','中cLOX-indexが高め]','　超悪玉コレステロールLAB、超悪玉コレステロールの担い手LOX-1がともに非常に高く、血管障害リスク（血管が傷む危険性）が非常に高い状態です。このままの状態が続くとすぐに悪化し、リスクがより高くなります。\n　実際に動脈硬化がどこまで進行しているかを知るために、頚動脈エコーなどの精密検査を受診されることをおすすめ致します。その結果を加味して、医療機関の改善指導を受けることをお勧めします。\n　改善指導の効果を知るためにも、半年後の再受診をおすすめします。'),(41072,'total','07','CS','中cLOX-indexが高め]','超坏胆固醇LAB和坏胆固醇的运输工LOX－1都非常高，处于血管障碍危险度高的状态。\n\n如果继续现在这种状况，可能会更恶化并使危险度更增高。建议通过颈动脉超声波等精密检查掌握实际动脉硬化的发展程度。\n并参照结果，在医疗机关接受改善指导。\n\n为了明确改善指导效果，建议半年后再次检查。'),(41073,'total','07','CT','中cLOX-indexが高め]',NULL),(41081,'total','08','JP','中b（sLOX-1が高め）','　超悪玉コレステロールの担い手LOX-1が高く、血管障害リスク（血管が傷む危険性）が進行しやすい方向に傾いていると考えられます。\n　高血圧、高血糖、肥満、喫煙など他の動脈硬化リスクを持っている人は、疾患の治療や生活習慣の改善によってリスクを抑える必要があります。\n　LOX-1は炎症で上昇することが知られているため、生活習慣病や慢性疾患などにより炎症が起っている可能性があります。LOX-1が高い状態でLABが高くなると更にリスクが高まるため、LABを上昇させないようにすることが重要です。\n　状態把握のためにも、一年後の再受診をおすすめします。'),(41082,'total','08','CS','中b（sLOX-1が高め）','超坏胆固醇LAB数值稍高，坏胆固醇的运输工LOX－1呈高的状态，处于容易增加血管障碍危险度的状态。\n\n对于高血压、高血糖、肥胖、抽烟等容易患动脉硬化的高危人群来说，有必要在治疗的同时要改变现有的生活习惯。\n研究表明，LOX－1在有炎症时上升。推测炎症可能是由生活习惯病或慢性疾病等引发的。\n因为在LOX－1增高时，LAB也增高会更加增加危险度，所以必须控制LAB上升。\n\n为了掌握健康状态，建议一年后再次检查观察病情发展。'),(41083,'total','08','CT','中b（sLOX-1が高め）',NULL),(41091,'total','09','JP','中b[LOX-indexがやや高め]','　超悪玉コレステロールLAB、超悪玉コレステロールの担い手LOX-1がともに少し高めの結果で、血管障害リスク（血管が傷む危険性）が進行しやすい方向に傾いていると考えられます。\n　高血圧、高血糖、肥満、喫煙など他の動脈硬化リスクを持っている人は、治療や生活習慣の改善によってリスクを抑える必要があります。\n　LOX-1は炎症で上昇しますので、体内に炎症の兆候がある可能性があります。また、LABは体内で活性酸素が発生することで、悪玉コレステロール（LDLコレステロール）がサビつき生成されます。これらは食生活、運動習慣によって改善できますので、生活習慣を見直しましょう。\n　状態把握のためにも、一年後の再受診をおすすめします。'),(41092,'total','09','CS','中b[LOX-indexがやや高め]','超坏胆固醇LAB数值和坏胆固醇的运输工LOX－1都呈较高的状态，处于血管障碍危险度易于发展的状态。\n\n对于高血压、高血糖、肥胖、抽烟等容易患动脉硬化的高危人群来说，有必要在治疗的同时要改变现有的生活习惯。\n研究表明，LOX－1在有炎症时上升，推测可能体内有炎症的征兆。LAB是当体内产生的活性氧造成坏胆固醇（LDL脂蛋白）氧化产生的。\n为了改善，请改变吸烟和运动不足等生活习惯。\n\n这些都可以通过改善饮食，运动习惯达到改善。为了掌握健康状态，建议一年后再次检查观察病情发展。'),(41093,'total','09','CT','中b[LOX-indexがやや高め]',NULL),(41101,'total','10','JP','中b（LABが高め）','　超悪玉コレステロールLABが高く、超悪玉コレステロールの担い手LOX-1も少し高めの結果で、血管障害リスク（血管が傷む危険性）が進行しやすい方向に傾いていると考えられます。\n　高血圧、高血糖、肥満、喫煙など他の動脈硬化リスクを持っている人は、疾患の治療や生活習慣の改善によってリスクを抑える必要があります。\n　LABは、体内で活性酸素が発生することで、悪玉コレステロール（LDLコレステロール）がサビつく事で生成されます。サビ付きを抑えるには、活性酸素の発生を抑えることと、活性酸素への抵抗力を高めることが必要です。\n　状態把握のためにも、一年後の再受診をおすすめします。'),(41102,'total','10','CS','中b（LABが高め）','超坏胆固醇LAB数值高，坏胆固醇的运输工LOX－1都呈偏高的状态，处于血管障碍危险度易于发展的状态。\n\n对于高血压、高血糖、肥胖、抽烟等容易患动脉硬化的高危人群来说，有必要在治疗的同时要改变现有的生活习惯。\n研究表明，LAB是当体内产生的活性氧造成坏胆固醇（LDL脂蛋白）氧化产生的。要防止氧化，必须防止活性氧的发生，并且加强体内对活性氧的抵抗力。\n\n为了掌握健康状态，建议一年后再次检查观察病情发展。'),(41103,'total','10','CT','中b（LABが高め）',NULL),(41111,'total','11','JP','中a（sLOX-1が高め）','　超悪玉コレステロールLABは平均的で、超悪玉コレステロールの担い手LOX-1が高く、血管障害リスク（血管が傷む危険性）が進行しやすい方向に傾いていると考えられます。\n　LOX-1は炎症で上昇することが知られています。体内に炎症の兆候が見られている可能性があり、生活習慣病や慢性疾患などの可能性は否定できません。\n　また、LOX-1が高い状態でLABが高くなると更にリスクが高まるため、LOX-1を低下させると共に、LABを上昇させないようにすることが重要です。\n　改善のために喫煙や運動不足などの生活習慣を見直しのほか、緑黄色野菜や果物の量を増やした食生活を心がけて下さい。'),(41112,'total','11','CS','中a（sLOX-1が高め）','超坏胆固醇LAB数值一般，坏胆固醇的运输工LOX－1呈高的状态，处于血管障碍危险度易于发展的状态。\n\n研究表明，LOX－1在有炎症时上升。推测可能体内有炎症的征兆，也可能存在生活习惯病或慢性炎症等状况。\n因为在LOX－1增高时，LAB也增高会更加增加危险度，所以不仅要降低LOX－1，还必须控制LAB上升。\n\n为了改善，请检点吸烟和运动不足等生活习惯，并请注意增加食用黄绿色蔬菜、水果。'),(41113,'total','11','CT','中a（sLOX-1が高め）',NULL),(41121,'total','12','JP','中a（sLOX-1がやや高め）','　超悪玉コレステロールLABは平均的で、超悪玉コレステロールの担い手LOX-1が少し高く、血管障害リスク（血管が傷む危険性）が進行しやすい方向に傾きつつあると考えられます。\n　LOX-1は炎症で上昇することが知られています。体内に炎症の兆候が見られている可能性があり、生活習慣病や慢性疾患などの可能性は否定できません。\n　また、LOX-1が高い状態でLABが高くなると更にリスクが高まるため、LOX-1を低下させると共に、LABを上昇させないようにすることが重要です。\n　改善のために喫煙や運動不足などの生活習慣を見直しのほか、緑黄色野菜や果物の量を増やした食生活を心がけて下さい。'),(41122,'total','12','CS','中a（sLOX-1がやや高め）','超坏胆固醇LAB数值一般，坏胆固醇的运输工LOX－1呈稍高的状态，血管障碍危险度逐渐处于易于发展的倾向。\n\n研究表明，LOX－1在有炎症时上升。推测可能体内有炎症的征兆，也可能存在生活习惯病或慢性疾病等状况。\n因为在LOX－1增高时，LAB也增高会更加增加危险度，所以不仅要降低LOX－1，还必须控制LAB上升。\n\n为了改善，请改变吸烟和运动不足等生活习惯，并请注意增加食用黄绿色蔬菜、水果。'),(41123,'total','12','CT','中a（sLOX-1がやや高め）',NULL),(41131,'total','13','JP','中a','　超悪玉コレステロールLAB、超悪玉コレステロールの担い手LOX-1がともに平均的な結果であり、血管障害リスク（血管が傷む危険性）も平均的であると考えられます。\n　しかし、安心は禁物です。脳梗塞や心筋梗塞は、様々な要因から発症します。今回の検査結果は、動脈硬化の主な原因と考えられている血管障害リスクの一つを示しているに過ぎません。特に加齢にともなって、動脈硬化が進みやすい状態になりやすくなります。\n　今まで以上に健康を意識した生活習慣を心がけて下さい。特に、高血圧、高血糖、肥満、喫煙など、他の血管障害リスクを持っている人は十分注意して下さい。'),(41132,'total','13','CS','中a','超坏胆固醇LAB和坏胆固醇的运输工LOX－1数值都接近平均，血管障碍的危险性也属于一般状态。\n\n但是并不可以掉以轻心。因为动脉硬化引起的脑梗塞和心肌梗塞还会因为各种原因发生。此次的检查结果只能证明造成动脉硬化的主要原因的血管病变一项没有问题。\n特别是随着年龄增加，非常容易出现动脉硬化加重的状态。今后要更加注意坚持健康的生活习惯。\n\n尤其是有高血压、高血糖、肥胖、吸烟等容易出现血管问题的人群更要注意。'),(41133,'total','13','CT','中a',NULL),(41141,'total','14','JP','中a（LABがやや高め）','　超悪玉コレステロールLABは少し高めで、超悪玉コレステロールの担い手LOX-1が平均的な結果であり、血管障害リスク（血管が傷む危険性）が進行しやすい方向に傾きつつあると考えられます。\n　LABは、体内で活性酸素が発生することで、悪玉コレステロール（LDLコレステロール）がサビつく事で生成されます。サビ付きを抑えるには、活性酸素の発生を抑えることと、活性酸素への抵抗力を高めることが必要です。\n　活性酸素を抑えるためには喫煙や運動不足などの生活習慣を見直して下さい。また活性酸素への抵抗力を高めるために、緑黄色野菜や果物の量を増やした食生活を心がけて下さい。'),(41142,'total','14','CS','中a（LABがやや高め）','超坏胆固醇LAB数值有点偏高，坏胆固醇的运输工LOX－1呈一般平均状态，处于倾向于容易增加血管障碍危险度的状态。\n\n研究表明，LAB是当体内产生的活性氧造成坏胆固醇（LDL脂蛋白）氧化产生的。要防止氧化，必须防止活性氧的发生，并且加强体内对活性氧的抵抗力。\n为了抑制活性氧，请改变吸烟和运动不足等生活习惯。\n\n另外，为了增加对于活性氧的抵抗力，请注意增加食用黄绿色蔬菜、水果。'),(41143,'total','14','CT','中a（LABがやや高め）',NULL),(41151,'total','15','JP','中a（LABが高め）','　超悪玉コレステロールLABは高めで、超悪玉コレステロールの担い手LOX-1が平均的な結果で、血管障害リスク（血管が傷む危険性）が進行しやすい方向に傾いていると考えられます。\n　LABは、体内で活性酸素が発生することで、悪玉コレステロール（LDLコレステロール）がサビつく事で生成されます。サビ付きを抑えるには、活性酸素の発生を抑えることと、活性酸素への抵抗力を高めることが必要です。\n　活性酸素を抑えるためには喫煙や運動不足などの生活習慣を見直して下さい。また活性酸素への抵抗力を高めるために、緑黄色野菜や果物の量を増やした食生活を心がけて下さい。'),(41152,'total','15','CS','中a（LABが高め）','超坏胆固醇LAB数值偏高，坏胆固醇的运输工LOX－1呈一般平均状态，处于倾向于容易增加血管障碍危险度的状态。\n\n研究表明，LAB是当体内产生的活性氧造成坏胆固醇（LDL脂蛋白）氧化产生的。要防止氧化，必须防止活性氧的发生，并且加强体内对活性氧的抵抗力。\n为了抑制活性氧，请改变吸烟和运动不足等生活习惯。\n\n另外，为了增加对于活性氧的抵抗力，请注意增加食用黄绿色蔬菜、水果。'),(41153,'total','15','CT','中a（LABが高め）',NULL),(51011,'total','common','JP','共通（サプリなし）',''),(51012,'total','common','CS','共通（サプリなし）',NULL),(51013,'total','common','CT','共通（サプリなし）',NULL),(51021,'total','common_supplement','JP','共通（サプリあり）','　LAB上昇の原因である活性酸素の発生を抑えるには、食生活の改善が第一です。加えて、コエンザイムQ10やアスタキサンチン、ビタミンEなどの抗酸化サプリメントの摂取が効果的だと言われています。また、喫煙、過度の飲酒、睡眠不足、精神的ストレスなど活性酸素の発生原因となる生活習慣の改善が重要です。'),(51022,'total','common_supplement','CS','共通（サプリあり）',NULL),(51023,'total','common_supplement','CT','共通（サプリあり）',NULL),(61011,'hint','low','JP','総合評価「低」','sLOX-1、LAB ともに低リスクの基準以内のため、総合評価は「低」です。'),(61012,'hint','low','CS','総合評価「低」',NULL),(61013,'hint','low','CT','総合評価「低」',NULL),(61021,'hint','middle_slox1','JP','総合評価「中」（sLOX-1が高い）','sLOX-1が低リスクの基準を超えているため、総合評価は「中」です。'),(61022,'hint','middle_slox1','CS','総合評価「中」（sLOX-1が高い）',NULL),(61023,'hint','middle_slox1','CT','総合評価「中」（sLOX-1が高い）',NULL),(61031,'hint','middle_lab','JP','総合評価「中」（LABが高い）','LABが低リスクの基準を超えているため、総合評価は「中」です。'),(61032,'hint','middle_lab','CS','総合評価「中」（LABが高い）',NULL),(61033,'hint','middle_lab','CT','総合評価「中」（LABが高い）',NULL),(61041,'hint','middle','JP','総合評価「中」','sLOX-1、LABともに低リスクの基準を超えているため、総合評価は「中」です。'),(61042,'hint','middle','CS','総合評価「中」',NULL),(61043,'hint','middle','CT','総合評価「中」',NULL),(61061,'hint','middle-high_slox1','JP','総合評価「中高」（sLOX-1が高い）','LABは低めですが、sLOX-1の値が高いため、総合評価は「中高」です。'),(61062,'hint','middle-high_slox1','CS','総合評価「中高」（sLOX-1が高い）',NULL),(61063,'hint','middle-high_slox1','CT','総合評価「中高」（sLOX-1が高い）',NULL),(61071,'hint','middle-high_lab','JP','総合評価「中高」（LABが高い）','sLOX-1は低めですが、LABの値が高いため、総合評価は「中高」です。'),(61072,'hint','middle-high_lab','CS','総合評価「中高」（LABが高い）',NULL),(61073,'hint','middle-high_lab','CT','総合評価「中高」（LABが高い）',NULL),(61081,'hint','high','JP','総合評価「高」','sLOX-1、LABから得られるLOX-indexの値が高いため、総合評価は「高」です。'),(61082,'hint','high','CS','総合評価「高」',NULL),(61083,'hint','high','CT','総合評価「高」',NULL);
/*!40000 ALTER TABLE `tbl_m_CommentKobal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_Eval`
--

DROP TABLE IF EXISTS `tbl_m_Eval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_Eval` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item` varchar(16) NOT NULL COMMENT '項目',
  `evaluation` int(1) NOT NULL DEFAULT '1' COMMENT '評価 1=L, 2=ML, 3=M, 4=MH, 5=H',
  `threshold` varchar(64) NOT NULL DEFAULT '0' COMMENT '閾値「より大きい」',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`item`,`evaluation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='依頼管理/基準値マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_Eval`
--

LOCK TABLES `tbl_m_Eval` WRITE;
/*!40000 ALTER TABLE `tbl_m_Eval` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_m_Eval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_EvalKobal`
--

DROP TABLE IF EXISTS `tbl_m_EvalKobal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_EvalKobal` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item` varchar(16) NOT NULL COMMENT '項目',
  `evaluation` int(1) NOT NULL DEFAULT '1' COMMENT '評価 1=L, 2=ML, 3=M, 4=MH, 5=H',
  `threshold` varchar(64) NOT NULL DEFAULT '0' COMMENT '閾値「より大きい」',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`item`,`evaluation`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='依頼管理/基準値マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_EvalKobal`
--

LOCK TABLES `tbl_m_EvalKobal` WRITE;
/*!40000 ALTER TABLE `tbl_m_EvalKobal` DISABLE KEYS */;
INSERT INTO `tbl_m_EvalKobal` VALUES (1,'sLOX-1',1,'0'),(2,'sLOX-1',2,'270'),(3,'sLOX-1',3,'500.1'),(4,'sLOX-1',4,'991'),(5,'sLOX-1',5,'1440'),(6,'LAB',1,'0'),(7,'LAB',2,'3.3'),(8,'LAB',3,'4.3'),(9,'LAB',4,'5.8'),(10,'LAB',5,'7.9'),(11,'LOX-index',1,'0'),(12,'LOX-index',2,'1068'),(13,'LOX-index',3,'2157.1'),(14,'LOX-index',4,'4943'),(15,'LOX-index',5,'7160');
/*!40000 ALTER TABLE `tbl_m_EvalKobal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_ExaminationCourse`
--

DROP TABLE IF EXISTS `tbl_m_ExaminationCourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_ExaminationCourse` (
  `ExaminationCourseIndex` int(10) NOT NULL AUTO_INCREMENT,
  `ExaminationCourseId` varchar(32) NOT NULL,
  `ExaminationCourseIdCreatedUserId` varchar(32) NOT NULL,
  `ExaminationCourseIdCreatedDateTime` datetime NOT NULL,
  `ExaminationCourseIdLastUpdatedUserId` varchar(32) NOT NULL,
  `ExaminationCourseIdLastUpdatedDateTime` datetime NOT NULL,
  `ExaminationCourseIdIsDeleted` smallint(6) NOT NULL,
  `ExaminationCourseIdDeletedUserId` varchar(32) NOT NULL,
  `ExaminationCourseIdDeletedDateTime` datetime NOT NULL,
  `ExaminationCourseName` varchar(128) NOT NULL,
  `ExaminationCourseProviderId` varchar(256) NOT NULL,
  `ExaminationCourseDeveloperId` varchar(128) NOT NULL,
  `ExaminationCourseExaminationSetId001` varchar(32) NOT NULL,
  `ExaminationCourseExaminationSetId002` varchar(32) NOT NULL,
  `ExaminationCourseExaminationSetId003` varchar(32) NOT NULL,
  `ExaminationCourseExaminationSetId004` varchar(32) NOT NULL,
  `ExaminationCourseExaminationSetId005` varchar(32) NOT NULL,
  `ExaminationCourseExaminationSetId006` varchar(32) NOT NULL,
  `ExaminationCourseExaminationSetId007` varchar(32) NOT NULL,
  `ExaminationCourseExaminationSetId008` varchar(32) NOT NULL,
  `ExaminationCourseExaminationSetId009` varchar(32) NOT NULL,
  `ExaminationCourseExaminationSetId010` varchar(32) NOT NULL,
  `ExaminationCourseNote` varchar(500) NOT NULL,
  `ExaminationCourseIdUserIdInCharge` varchar(32) NOT NULL,
  `ExaminationCourseIsActiveValue` smallint(6) NOT NULL,
  `ExaminationCourseIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`ExaminationCourseIndex`),
  UNIQUE KEY `ExaminationCourseId` (`ExaminationCourseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='依頼管理/検査コースマスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_ExaminationCourse`
--

LOCK TABLES `tbl_m_ExaminationCourse` WRITE;
/*!40000 ALTER TABLE `tbl_m_ExaminationCourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_m_ExaminationCourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_ExaminationInterview`
--

DROP TABLE IF EXISTS `tbl_m_ExaminationInterview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_ExaminationInterview` (
  `ExaminationInterviewIndex` int(10) NOT NULL AUTO_INCREMENT,
  `ExaminationInterviewId` varchar(32) NOT NULL,
  `ExaminationInterviewIdCreatedUserId` varchar(32) NOT NULL,
  `ExaminationInterviewIdCreatedDateTime` datetime NOT NULL,
  `ExaminationInterviewIdLastUpdatedUserId` varchar(32) NOT NULL,
  `ExaminationInterviewIdLastUpdatedDateTime` datetime NOT NULL,
  `ExaminationInterviewIdIsDeleted` smallint(6) NOT NULL,
  `ExaminationInterviewIdDeletedUserId` varchar(32) NOT NULL,
  `ExaminationInterviewIdDeletedDateTime` datetime NOT NULL,
  `ExaminationInterviewCategoryNameJapanese` varchar(128) NOT NULL,
  `ExaminationInterviewCategoryNameEnglish` varchar(128) NOT NULL,
  `ExaminationInterviewNameJapanese` varchar(128) NOT NULL,
  `ExaminationInterviewNameEnglish` varchar(128) NOT NULL,
  `ExaminationInterviewExaminationInterviewChoiceId001` varchar(32) NOT NULL,
  `ExaminationInterviewExaminationInterviewChoiceId002` varchar(32) NOT NULL,
  `ExaminationInterviewExaminationInterviewChoiceId003` varchar(32) NOT NULL,
  `ExaminationInterviewExaminationInterviewChoiceId004` varchar(32) NOT NULL,
  `ExaminationInterviewExaminationInterviewChoiceId005` varchar(32) NOT NULL,
  `ExaminationInterviewExaminationInterviewChoiceId006` varchar(32) NOT NULL,
  `ExaminationInterviewExaminationInterviewChoiceId007` varchar(32) NOT NULL,
  `ExaminationInterviewExaminationInterviewChoiceId008` varchar(32) NOT NULL,
  `ExaminationInterviewExaminationInterviewChoiceId009` varchar(32) NOT NULL,
  `ExaminationInterviewExaminationInterviewChoiceId010` varchar(32) NOT NULL,
  `ExaminationInterviewProviderId` varchar(256) NOT NULL,
  `ExaminationInterviewDeveloperId` varchar(128) NOT NULL,
  `ExaminationInterviewNote` varchar(500) NOT NULL,
  `ExaminationInterviewIdUserIdInCharge` varchar(32) NOT NULL,
  `ExaminationInterviewIsActiveValue` smallint(6) NOT NULL,
  `ExaminationInterviewIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`ExaminationInterviewIndex`),
  UNIQUE KEY `ExaminationInterviewId` (`ExaminationInterviewId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='依頼管理/問診マスタ[未使用]';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_ExaminationInterview`
--

LOCK TABLES `tbl_m_ExaminationInterview` WRITE;
/*!40000 ALTER TABLE `tbl_m_ExaminationInterview` DISABLE KEYS */;
INSERT INTO `tbl_m_ExaminationInterview` VALUES (1,'ExmIntrvw-000000000000000000000a','User-00000000000000000000000000a','2012-08-27 18:59:03','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','noExaminationInterviewCategoryNameJapanese','noExaminationInterviewCategoryNameEnglish','noExaminationInterviewNameJapanese','noExaminationInterviewNameEnglish','noExaminationInterviewExaminatio','noExaminationInterviewExaminatio','noExaminationInterviewExaminatio','noExaminationInterviewExaminatio','noExaminationInterviewExaminatio','noExaminationInterviewExaminatio','noExaminationInterviewExaminatio','noExaminationInterviewExaminatio','noExaminationInterviewExaminatio','noExaminationInterviewExaminatio','noExaminationInterviewProviderId','noExaminationInterviewDeveloperId','noExaminationInterviewNote','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59');
/*!40000 ALTER TABLE `tbl_m_ExaminationInterview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_ExaminationInterviewChoice`
--

DROP TABLE IF EXISTS `tbl_m_ExaminationInterviewChoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_ExaminationInterviewChoice` (
  `ExaminationInterviewChoiceIndex` int(10) NOT NULL AUTO_INCREMENT,
  `ExaminationInterviewChoiceId` varchar(32) NOT NULL,
  `ExaminationInterviewChoiceIdCreatedUserId` varchar(32) NOT NULL,
  `ExaminationInterviewChoiceIdCreatedDateTime` datetime NOT NULL,
  `ExaminationInterviewChoiceIdLastUpdatedUserId` varchar(32) NOT NULL,
  `ExaminationInterviewChoiceIdLastUpdatedDateTime` datetime NOT NULL,
  `ExaminationInterviewChoiceIdIsDeleted` smallint(6) NOT NULL,
  `ExaminationInterviewChoiceIdDeletedUserId` varchar(32) NOT NULL,
  `ExaminationInterviewChoiceIdDeletedDateTime` datetime NOT NULL,
  `ExaminationInterviewChoiceName` varchar(128) NOT NULL,
  `ExaminationInterviewChoiceUnit` varchar(128) NOT NULL,
  `ExaminationInterviewChoiceValue` varchar(128) NOT NULL,
  `ExaminationInterviewChoiceGranularity` varchar(128) NOT NULL,
  `ExaminationInterviewChoiceProviderId` varchar(256) NOT NULL,
  `ExaminationInterviewChoiceDeveloperId` varchar(128) NOT NULL,
  `ExaminationInterviewChoiceNote` varchar(500) NOT NULL,
  `ExaminationInterviewChoiceIdUserIdInCharge` varchar(32) NOT NULL,
  `ExaminationInterviewChoiceIsActiveValue` smallint(6) NOT NULL,
  `ExaminationInterviewChoiceIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`ExaminationInterviewChoiceIndex`),
  UNIQUE KEY `ExaminationInterviewChoiceId` (`ExaminationInterviewChoiceId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='依頼管理/問診選択肢マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_ExaminationInterviewChoice`
--

LOCK TABLES `tbl_m_ExaminationInterviewChoice` WRITE;
/*!40000 ALTER TABLE `tbl_m_ExaminationInterviewChoice` DISABLE KEYS */;
INSERT INTO `tbl_m_ExaminationInterviewChoice` VALUES (1,'ExmIntrvwChc-000000000000000000a','User-00000000000000000000000000a','2012-08-27 19:32:32','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','noExaminationInterviewChoiceName','noExaminationInterviewChoiceUnit','noExaminationInterviewChoiceValue','noExaminationInterviewChoiceGranularity','noExaminationInterviewChoiceProviderId','noExaminationInterviewChoiceDeveloperId','noExaminationInterviewChoiceNote','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59');
/*!40000 ALTER TABLE `tbl_m_ExaminationInterviewChoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_ExaminationItem`
--

DROP TABLE IF EXISTS `tbl_m_ExaminationItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_ExaminationItem` (
  `ExaminationItemIndex` int(10) NOT NULL AUTO_INCREMENT,
  `ExaminationItemId` varchar(32) NOT NULL,
  `ExaminationItemIdCreatedUserId` varchar(32) NOT NULL,
  `ExaminationItemIdCreatedDateTime` datetime NOT NULL,
  `ExaminationItemIdLastUpdatedUserId` varchar(32) NOT NULL,
  `ExaminationItemIdLastUpdatedDateTime` datetime NOT NULL,
  `ExaminationItemIdIsDeleted` smallint(6) NOT NULL,
  `ExaminationItemIdDeletedUserId` varchar(32) NOT NULL,
  `ExaminationItemIdDeletedDateTime` datetime NOT NULL,
  `ExaminationItemCoverageSex` varchar(8) NOT NULL,
  `ExaminationItemCoverageAgeMin` smallint(6) NOT NULL,
  `ExaminationItemCoverageAgeMax` smallint(6) NOT NULL,
  `ExaminationItemPrimaryClassificationId` varchar(128) NOT NULL,
  `ExaminationItemPrimaryClassificationName` varchar(128) NOT NULL,
  `ExaminationItemMediumClassificationId` varchar(128) NOT NULL,
  `ExaminationItemMediumClassificationName` varchar(128) NOT NULL,
  `ExaminationItemAnalyteCode` varchar(128) NOT NULL,
  `ExaminationItemExaminationCode` varchar(128) NOT NULL,
  `ExaminationItemName` varchar(128) NOT NULL,
  `ExaminationItemUnit` varchar(128) NOT NULL,
  `ExaminationItemReferencesRangeMinPrefix` varchar(128) NOT NULL,
  `ExaminationItemReferencesRangeMin` varchar(128) NOT NULL,
  `ExaminationItemReferencesRangeMinSuffix` varchar(128) NOT NULL,
  `ExaminationItemReferencesRangeMaxPrefix` varchar(128) NOT NULL,
  `ExaminationItemReferencesRangeMax` varchar(128) NOT NULL,
  `ExaminationItemReferencesRangeMaxSuffix` varchar(128) NOT NULL,
  `ExaminationItemProviderId` varchar(256) NOT NULL,
  `ExaminationItemDeveloperId` varchar(128) NOT NULL,
  `ExaminationItemNote` varchar(32) NOT NULL,
  `ExaminationItemIdUserIdInCharge` varchar(32) NOT NULL,
  `ExaminationItemIsActiveValue` smallint(6) NOT NULL,
  `ExaminationItemIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`ExaminationItemIndex`),
  UNIQUE KEY `ExaminationItemId` (`ExaminationItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='依頼管理/検査項目マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_ExaminationItem`
--

LOCK TABLES `tbl_m_ExaminationItem` WRITE;
/*!40000 ALTER TABLE `tbl_m_ExaminationItem` DISABLE KEYS */;
INSERT INTO `tbl_m_ExaminationItem` VALUES (1,'ExmItm-000000000000000000000000a','User-00000000000000000000000000a','2012-09-20 19:47:09','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','noEICSX',-1,-1,'noExaminationItemPrimaryClassificationId','noExaminationItemPrimaryClassificationName','noExaminationItemMediumClassificationId','noExaminationItemMediumClassificationName','noExaminationItemAnalyteCode','noExaminationItemExaminationCode','noExaminationItemName','noExaminationItemUnit','noExaminationItemReferencesRangeMinPrefix','noExaminationItemReferencesRangeMin','noExaminationItemReferencesRangeMinSuffix','noExaminationItemReferencesRangeMaxPrefix','noExaminationItemReferencesRangeMax','noExaminationItemReferencesRangeMaxSuffix','noExaminationItemProviderId','noExaminationItemDeveloperId','noExaminationItemNote','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59'),(2,'ExmItm-000000000000000000000001a','User-00000000000000000000000001a','2012-09-20 19:47:17','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','both',0,100,'EIPC-Id-99','その他の検査','EIPC-Id-99-99-999','その他の検査-その他の検査/-','-','-','身長','cm','-','0','1','-','200','0','Org-00000000000a','Org-00000000000a','noExaminationItemNote','User-00000000000000000000000002a',1,'2012-09-20 19:47:17'),(3,'ExmItm-000000000000000000000002a','User-00000000000000000000000001a','2012-09-20 19:47:26','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','both',0,100,'EIPC-Id-99','その他の検査','EIPC-Id-99-99-999','その他の検査-その他の検査/-','-','-','体重','kg','-','0','1','-','100','0','Org-00000000000a','Org-00000000000a','noExaminationItemNote','User-00000000000000000000000002a',1,'2012-09-20 19:47:26'),(4,'ExmItm-000000000000000000000003a','User-00000000000000000000000001a','2012-09-20 19:47:37','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','both',0,100,'EIPC-Id-04','生化学的検査','EIMC-Id-30-0F-010','生化学的検査-脂質および関連物質/生化学的検査-脂質関連検査','-','-','sLOX-1','ng/L','-','0','1','-','7.9','0','Org-00000000002a','Org-00000000000a','noExaminationItemNote','User-00000000000000000000000002a',1,'2012-09-20 19:47:37'),(5,'ExmItm-000000000000000000000004a','User-00000000000000000000000001a','2012-09-20 19:47:44','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','both',0,100,'EIPC-Id-04','生化学的検査','EIMC-Id-30-0F-010','生化学的検査-脂質および関連物質/生化学的検査-脂質関連検査','-','-','LAB','mg cs/L','-','0','1','-','1440','0','Org-00000000002a','Org-00000000002a','noExaminationItemNote','User-00000000000000000000000002a',1,'2012-09-20 19:47:44'),(6,'ExmItm-000000000000000000000005a','User-00000000000000000000000001a','2012-09-20 19:47:54','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','both',0,100,'EIPC-Id-04','生化学的検査','EIMC-Id-30-0F-010','生化学的検査-脂質および関連物質/生化学的検査-脂質関連検査','-','-','LOX-index','none','-','0','1','-','7460','0','Org-00000000002a','Org-00000000002a','noExaminationItemNote','User-00000000000000000000000002a',1,'2012-09-20 19:47:54');
/*!40000 ALTER TABLE `tbl_m_ExaminationItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_ExaminationOrder`
--

DROP TABLE IF EXISTS `tbl_m_ExaminationOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_ExaminationOrder` (
  `ExaminationOrderIndex` int(10) NOT NULL AUTO_INCREMENT,
  `ExaminationOrderId` varchar(32) NOT NULL,
  `ExaminationOrderIdCreatedUserId` varchar(32) NOT NULL,
  `ExaminationOrderIdCreatedDateTime` datetime NOT NULL,
  `ExaminationOrderIdLastUpdatedUserId` varchar(32) NOT NULL,
  `ExaminationOrderIdLastUpdatedDateTime` datetime NOT NULL,
  `ExaminationOrderIdIsDeleted` smallint(6) NOT NULL,
  `ExaminationOrderIdDeletedUserId` varchar(32) NOT NULL,
  `ExaminationOrderIdDeletedDateTime` datetime NOT NULL,
  `ExaminationOrderName` varchar(128) NOT NULL,
  `ExaminationOrderProviderId` varchar(256) NOT NULL,
  `ExaminationOrderDeveloperId` varchar(128) NOT NULL,
  `ExaminationOrderExaminationCourseId001` varchar(32) NOT NULL,
  `ExaminationOrderExaminationCourseId002` varchar(32) NOT NULL,
  `ExaminationOrderExaminationCourseId003` varchar(32) NOT NULL,
  `ExaminationOrderExaminationCourseId004` varchar(32) NOT NULL,
  `ExaminationOrderExaminationCourseId005` varchar(32) NOT NULL,
  `ExaminationOrderExaminationCourseId006` varchar(32) NOT NULL,
  `ExaminationOrderExaminationCourseId007` varchar(32) NOT NULL,
  `ExaminationOrderExaminationCourseId008` varchar(32) NOT NULL,
  `ExaminationOrderExaminationCourseId009` varchar(32) NOT NULL,
  `ExaminationOrderExaminationCourseId010` varchar(32) NOT NULL,
  `ExaminationOrderNote` varchar(500) NOT NULL,
  `ExaminationOrderIdUserIdInCharge` varchar(32) NOT NULL,
  `ExaminationOrderIsActiveValue` smallint(6) NOT NULL,
  `ExaminationOrderIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`ExaminationOrderIndex`),
  UNIQUE KEY `ExaminationOrderId` (`ExaminationOrderId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='依頼管理/依頼マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_ExaminationOrder`
--

LOCK TABLES `tbl_m_ExaminationOrder` WRITE;
/*!40000 ALTER TABLE `tbl_m_ExaminationOrder` DISABLE KEYS */;
INSERT INTO `tbl_m_ExaminationOrder` VALUES (1,'ExmOrdr-00000000000000000000000a','User-00000000000000000000000000a','2012-08-27 17:12:17','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','noExaminationOrderName','noExaminationOrderProviderId','noExaminationOrderDeveloperId','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderNote','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59'),(2,'ExmOrdr-00000000000000000000001a','User-00000000000000000000000001a','2012-09-21 14:13:26','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','LOX-index検査依頼書','Org-00000000001a','Org-00000000001a','ExmCrs-00000000000000000000001a','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderExaminationCou','noExaminationOrderNote','User-00000000000000000000000002a',1,'2012-09-21 14:13:26');
/*!40000 ALTER TABLE `tbl_m_ExaminationOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_ExaminationSet`
--

DROP TABLE IF EXISTS `tbl_m_ExaminationSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_ExaminationSet` (
  `ExaminationSetIndex` int(10) NOT NULL AUTO_INCREMENT,
  `ExaminationSetId` varchar(32) NOT NULL,
  `ExaminationSetIdCreatedUserId` varchar(32) NOT NULL,
  `ExaminationSetIdCreatedDateTime` datetime NOT NULL,
  `ExaminationSetIdLastUpdatedUserId` varchar(32) NOT NULL,
  `ExaminationSetIdLastUpdatedDateTime` datetime NOT NULL,
  `ExaminationSetIdIsDeleted` smallint(6) NOT NULL,
  `ExaminationSetIdDeletedUserId` varchar(32) NOT NULL,
  `ExaminationSetIdDeletedDateTime` datetime NOT NULL,
  `ExaminationSetName` varchar(128) NOT NULL,
  `ExaminationSetAlias` varchar(32) NOT NULL DEFAULT 'NoExmSetAlias',
  `ExaminationSetExaminationItemId001` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId002` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId003` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId004` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId005` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId006` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId007` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId008` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId009` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId010` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId011` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId012` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId013` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId014` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId015` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId016` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId017` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId018` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId019` varchar(32) NOT NULL,
  `ExaminationSetExaminationItemId020` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId001` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId002` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId003` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId004` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId005` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId006` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId007` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId008` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId009` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId010` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId011` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId012` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId013` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId014` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId015` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId016` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId017` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId018` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId019` varchar(32) NOT NULL,
  `ExaminationSetExaminationInterviewId020` varchar(32) NOT NULL,
  `ExaminationSetProviderId` varchar(256) NOT NULL,
  `ExaminationSetDeveloperId` varchar(128) NOT NULL,
  `ExaminationSetNote` varchar(500) NOT NULL,
  `ExaminationSetIdUserIdInCharge` varchar(32) NOT NULL,
  `ExaminationSetIsActiveValue` smallint(6) NOT NULL,
  `ExaminationSetIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`ExaminationSetIndex`),
  UNIQUE KEY `ExaminationSetId` (`ExaminationSetId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='依頼管理/検査セットマスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_ExaminationSet`
--

LOCK TABLES `tbl_m_ExaminationSet` WRITE;
/*!40000 ALTER TABLE `tbl_m_ExaminationSet` DISABLE KEYS */;
INSERT INTO `tbl_m_ExaminationSet` VALUES (1,'ExmSet-000000000000000000000000a','User-00000000000000000000000000a','2012-08-27 17:41:15','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','noExaminationSetName','NoExmSetAlias','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationItemI','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetExaminationInter','noExaminationSetProviderId','noExaminationSetDeveloperId','noExaminationSetNote','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59'),(2,'ExmSet-000000000000000000000001a','User-00000000000000000000000001a','2012-09-20 19:48:42','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','LOX-index 標準コース 標準セット','LOX-index','ExmItm-000000000000000000000001a','ExmItm-000000000000000000000002a','ExmItm-000000000000000000000003a','ExmItm-000000000000000000000004a','ExmItm-000000000000000000000005a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmItm-000000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','ExmIntrvw-000000000000000000000a','Org-00000000001a','Org-00000000001a','noExaminationSetNote','User-00000000000000000000000002a',1,'2012-09-20 19:48:42');
/*!40000 ALTER TABLE `tbl_m_ExaminationSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_ExaminationSetComment`
--

DROP TABLE IF EXISTS `tbl_m_ExaminationSetComment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_ExaminationSetComment` (
  `ExaminationSetCommentIndex` int(10) NOT NULL AUTO_INCREMENT,
  `ExaminationSetCommentId` varchar(32) NOT NULL,
  `ExaminationSetCommentIdCreatedUserId` varchar(32) NOT NULL,
  `ExaminationSetCommentIdCreatedDateTime` datetime NOT NULL,
  `ExaminationSetCommentIdLastUpdatedUserId` varchar(32) NOT NULL,
  `ExaminationSetCommentIdLastUpdatedDateTime` datetime NOT NULL,
  `ExaminationSetCommentIdIsDeleted` smallint(6) NOT NULL,
  `ExaminationSetCommentIdDeletedUserId` varchar(32) NOT NULL,
  `ExaminationSetCommentIdDeletedDateTime` datetime NOT NULL,
  `ExaminationSetCommentExaminationSetId` varchar(128) NOT NULL,
  `ExaminationSetCommentCategory01` varchar(64) NOT NULL,
  `ExaminationSetCommentCategory02` varchar(64) NOT NULL,
  `ExaminationSetCommentCategory03` varchar(64) NOT NULL,
  `ExaminationSetCommentJudgement` varchar(64) NOT NULL,
  `ExaminationSetCommentComment` varchar(1024) NOT NULL,
  `ExaminationSetCommentProviderId` varchar(256) NOT NULL,
  `ExaminationSetCommentDeveloperId` varchar(128) NOT NULL,
  `ExaminationSetCommentNote` varchar(500) NOT NULL,
  `ExaminationSetIdUserIdInCharge` varchar(32) NOT NULL,
  `ExaminationSetCommentIsActiveValue` smallint(6) NOT NULL,
  `ExaminationSetCommentIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`ExaminationSetCommentIndex`),
  UNIQUE KEY `ExaminationSetCommentId` (`ExaminationSetCommentId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='依頼管理/検査セットコメントマスタ[未使用]';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_ExaminationSetComment`
--

LOCK TABLES `tbl_m_ExaminationSetComment` WRITE;
/*!40000 ALTER TABLE `tbl_m_ExaminationSetComment` DISABLE KEYS */;
INSERT INTO `tbl_m_ExaminationSetComment` VALUES (1,'ExmStCmmnt-00000000000000000000a','User-00000000000000000000000000a','2012-08-27 18:08:04','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','ExmSet-000000000000000000000000a','noExaminationSetCommentCategory01','noExaminationSetCommentCategory02','noExaminationSetCommentCategory03','noExaminationSetCommentJudgement','noExaminationSetCommentComment','noExaminationSetCommentProviderId','noExaminationSetCommentDeveloperId','noExaminationSetCommentNote','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59');
/*!40000 ALTER TABLE `tbl_m_ExaminationSetComment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_ImportAlias`
--

DROP TABLE IF EXISTS `tbl_m_ImportAlias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_ImportAlias` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '定義名',
  `organization_id` varchar(16) NOT NULL COMMENT '該当するID',
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='xlsxファイルインポート時の照合用テーブル';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_ImportAlias`
--

LOCK TABLES `tbl_m_ImportAlias` WRITE;
/*!40000 ALTER TABLE `tbl_m_ImportAlias` DISABLE KEYS */;
INSERT INTO `tbl_m_ImportAlias` VALUES (3,'NKクリニック','Org-00000000001a');
/*!40000 ALTER TABLE `tbl_m_ImportAlias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_MailTemplate`
--

DROP TABLE IF EXISTS `tbl_m_MailTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_MailTemplate` (
  `MailTemplateIndex` int(10) NOT NULL AUTO_INCREMENT,
  `MailTemplateId` varchar(32) NOT NULL,
  `MailTemplateIdCreatedUserId` varchar(32) NOT NULL,
  `MailTemplateIdCreatedDateTime` datetime NOT NULL,
  `MailTemplateIdLastUpdatedUserId` varchar(32) NOT NULL,
  `MailTemplateIdLastUpdatedDateTime` datetime NOT NULL,
  `MailTemplateIdIsDeleted` smallint(6) NOT NULL,
  `MailTemplateIdDeletedUserId` varchar(32) NOT NULL,
  `MailTemplateIdDeletedDateTime` datetime NOT NULL,
  `MailTemplateSubject` varchar(128) NOT NULL,
  `MailTemplateBody` varchar(256) NOT NULL,
  `MailTemplateNote` varchar(500) NOT NULL,
  `MailTemplateIdUserIdInCharge` varchar(32) NOT NULL,
  `MailTemplateIsActiveValue` smallint(6) NOT NULL,
  `MailTemplateIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`MailTemplateIndex`),
  UNIQUE KEY `MailTemplateId` (`MailTemplateId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='依頼管理/メールテンプレート';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_MailTemplate`
--

LOCK TABLES `tbl_m_MailTemplate` WRITE;
/*!40000 ALTER TABLE `tbl_m_MailTemplate` DISABLE KEYS */;
INSERT INTO `tbl_m_MailTemplate` VALUES (1,'MailTemplate-000000000000000000a','User-00000000000000000000000000a','2012-08-27 15:30:11','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','noMailTemplateSubject','noMailTemplateBody','noMailTemplateNote','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59');
/*!40000 ALTER TABLE `tbl_m_MailTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_Organization`
--

DROP TABLE IF EXISTS `tbl_m_Organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_Organization` (
  `actor_id` int(11) NOT NULL,
  `OrganizationIndex` int(10) NOT NULL AUTO_INCREMENT,
  `OrganizationId` varchar(16) NOT NULL,
  `OrganizationMasterId` varchar(6) DEFAULT NULL,
  `OrganizationDisplayId` varchar(16) DEFAULT NULL,
  `OrganizationIdCreatedUserId` varchar(32) NOT NULL,
  `OrganizationIdCreatedDateTime` datetime NOT NULL,
  `OrganizationIdLastUpdatedUserId` varchar(32) NOT NULL,
  `OrganizationIdLastUpdatedDateTime` datetime NOT NULL,
  `OrganizationIdIsDeleted` smallint(6) NOT NULL,
  `OrganizationIdDeletedUserId` varchar(32) NOT NULL,
  `OrganizationIdDeletedDateTime` datetime NOT NULL,
  `OrganizationPassword` varchar(255) NOT NULL,
  `OrganizationName` varchar(100) NOT NULL,
  `OrganizationAddressCountry` varchar(64) NOT NULL,
  `OrganizationAddressZipCode` varchar(16) NOT NULL,
  `OrganizationAddressCapitalPrefectureCommonwealth` varchar(32) NOT NULL,
  `OrganizationAddressCityWard` varchar(32) NOT NULL,
  `OrganizationAddressCityWardRoman` varchar(32) NOT NULL,
  `OrganizationAddressTownVillage` varchar(32) NOT NULL,
  `OrganizationAddressTownVillageRoman` varchar(32) NOT NULL,
  `OrganizationAddressBlocknumberHousenumber` varchar(32) NOT NULL,
  `OrganizationAddressBlocknumberHousenumberRoman` varchar(32) NOT NULL,
  `OrganizationAddressBuilding` varchar(64) NOT NULL,
  `OrganizationAddressBuildingRoman` varchar(64) NOT NULL,
  `OrganizationPhoneNumber` varchar(32) NOT NULL,
  `OrganizationIdUserIdInCharge` varchar(32) NOT NULL,
  `OrganizationIsActiveValue` smallint(6) NOT NULL,
  `OrganizationIsActiveDateTime` datetime NOT NULL,
  `OrganizationIncludeCommentSupplement` tinyint(4) NOT NULL,
  `OrganizationNumberOfCopies` int(11) NOT NULL DEFAULT '2',
  `OrganizationOptionItems` text NOT NULL,
  `OrganizationFirstOrderDate` date DEFAULT NULL,
  `OrganizationNote` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OrganizationIndex`),
  UNIQUE KEY `OrganizationId` (`OrganizationId`),
  UNIQUE KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='依頼管理/組織マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_Organization`
--

LOCK TABLES `tbl_m_Organization` WRITE;
/*!40000 ALTER TABLE `tbl_m_Organization` DISABLE KEYS */;
INSERT INTO `tbl_m_Organization` VALUES (0,1,'Org-00000000000a',NULL,NULL,'User-00000000000000000000000000a','2012-08-27 15:18:35','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','noOrganizationPassword','noOrganizationName','noOrganizationAddressCountry','noOrganizationAd','noOrganizationAddressCapitalPref','noOrganizationAddressCityWard','noOrganizationAddressCityWardRom','noOrganizationAddressTownVillage','noOrganizationAddressTownVillage','noOrganizationAddressBlocknumber','noOrganizationAddressBlocknumber','noOrganizationAddressBuilding','noOrganizationAddressBuildingRoman','noOrganizationPhoneNumber','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59',1,2,'',NULL,'A3'),(2,2,'Org-00000000001a','000000','','User-00000000000000000000000001a','2012-09-17 02:58:30','User-00000000000000000000000003a','2015-02-12 19:14:00',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','noOrganizationPassword','NKメディコ株式会社','noOrganizationAddressCountry','105-0012','東京都','港区','noOrganizationAddressCityWardRom','芝大門','noOrganizationAddressTownVillage','2-5-5','noOrganizationAddressBlocknumber','住友芝大門ビル111F','noOrganizationAddressBuildingRoman','03-3505-5119','User-00000000000000000000000001a',1,'2012-09-17 02:58:30',1,2,'','2012-09-01','A3'),(5,3,'Org-00000000002a',NULL,NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00',0,'','0000-00-00 00:00:00','','株式会社 北里大塚バイオメディカルアッセイ研究所','','','','','','','','','','','','','',0,'0000-00-00 00:00:00',0,2,'',NULL,'A3-CDR'),(6,4,'Org-00000000003a','999999','OSD-9999','User-00000000000000000000015173a','2015-10-30 19:36:00','User-00000000000000000000000000a','1999-12-31 23:59:00',0,'User-00000000000000000000000000a','1999-12-31 23:59:00','noOrganizationPassword','サンプルクリニック','日本国','100-0001','東京都','千代田区','noOrganizationAddressCityWardRom','千代田','noOrganizationAddressTownVillage','1-1','noOrganizationAddressBlocknumber','noOrganizationAddressBuilding','noOrganizationAddressBuildingRoman','090-0000-0000','User-00000000000000000000000002a',1,'2015-10-30 19:36:00',1,2,'CD-R',NULL,'A3-CDR'),(10,5,'Org-00000000004a',NULL,NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00',0,'','0000-00-00 00:00:00','','サンプル臨床','','141-0031','','','','','','','','','','','',0,'0000-00-00 00:00:00',0,2,'',NULL,'A3-CDR');
/*!40000 ALTER TABLE `tbl_m_Organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_OrganizationKintone`
--

DROP TABLE IF EXISTS `tbl_m_OrganizationKintone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_OrganizationKintone` (
  `OrganizationId` varchar(16) NOT NULL COMMENT '組織ID',
  `AppId` int(11) NOT NULL COMMENT 'kintoneアプリID',
  `OrganizationMasterId` varchar(6) NOT NULL COMMENT 'kintone取引先コード',
  PRIMARY KEY (`OrganizationId`,`AppId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_OrganizationKintone`
--

LOCK TABLES `tbl_m_OrganizationKintone` WRITE;
/*!40000 ALTER TABLE `tbl_m_OrganizationKintone` DISABLE KEYS */;
INSERT INTO `tbl_m_OrganizationKintone` VALUES ('Org-00000000003a',67,'999999');
/*!40000 ALTER TABLE `tbl_m_OrganizationKintone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_OrganizationSpecialCode`
--

DROP TABLE IF EXISTS `tbl_m_OrganizationSpecialCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_OrganizationSpecialCode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` varchar(16) NOT NULL COMMENT '医療機関ID',
  `type` varchar(8) NOT NULL COMMENT 'MCM, 将来的には他も？',
  `code` varchar(8) NOT NULL COMMENT '医療機関コード(MCMは8桁)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `organization_id` (`organization_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='依頼管理/医療機関コード（LSI用）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_OrganizationSpecialCode`
--

LOCK TABLES `tbl_m_OrganizationSpecialCode` WRITE;
/*!40000 ALTER TABLE `tbl_m_OrganizationSpecialCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_m_OrganizationSpecialCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_Patient`
--

DROP TABLE IF EXISTS `tbl_m_Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_Patient` (
  `actor_id` int(11) NOT NULL,
  `UserIndex` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(32) NOT NULL,
  `UserIdCreatedUserId` varchar(32) NOT NULL,
  `UserIdCreatedDateTime` datetime NOT NULL,
  `UserIdLastUpdatedUserId` varchar(32) NOT NULL,
  `UserIdLastUpdatedDateTime` datetime NOT NULL,
  `UserIdIsDeleted` smallint(6) NOT NULL,
  `UserIdDeletedUserId` varchar(32) NOT NULL,
  `UserIdDeletedDateTime` datetime NOT NULL,
  `UserIdStartOfApplicationForRegistrationDateTime` datetime NOT NULL,
  `UserAccount` varchar(128) NOT NULL,
  `UserPassword` varchar(32) NOT NULL,
  `UserIsRegisteredTemporarily` smallint(6) NOT NULL,
  `UserIsRegisteredRegularly` smallint(6) NOT NULL,
  `UserExpirationDateTime` datetime NOT NULL,
  `UserLoginFailedConsecutivelyTimes` smallint(6) NOT NULL,
  `UserLastLoginedDateTime` datetime NOT NULL,
  `UserLastLogoutedDateTime` datetime NOT NULL,
  `UserFamilyName` varchar(50) NOT NULL,
  `UserFirstName` varchar(50) NOT NULL,
  `UserFamilyNameKana` varchar(50) NOT NULL,
  `UserFirstNameKana` varchar(50) NOT NULL,
  `UserFamilyNameRoman` varchar(50) NOT NULL,
  `UserFirstNameRoman` varchar(50) NOT NULL,
  `UserBirthDateTime` datetime NOT NULL,
  `UserSex` varchar(8) NOT NULL,
  `UserMailAddress001` varchar(128) NOT NULL,
  `UserMailAddress002` varchar(128) NOT NULL,
  `UserMailAddress003` varchar(128) NOT NULL,
  `UserPhoneNumber001` varchar(32) NOT NULL,
  `UserPhoneNumber002` varchar(32) NOT NULL,
  `UserPhoneNumber003` varchar(32) NOT NULL,
  `UserUnitId` varchar(16) NOT NULL,
  `UserAddressCountry` varchar(64) NOT NULL,
  `UserAddressZipCode` varchar(16) NOT NULL,
  `UserAddressCapitalPrefectureCommonwealth` varchar(32) NOT NULL,
  `UserAddressCityWard` varchar(32) NOT NULL,
  `UserAddressCityWardRoman` varchar(32) NOT NULL,
  `UserAddressTownVillage` varchar(32) NOT NULL,
  `UserAddressTownVillageRoman` varchar(32) NOT NULL,
  `UserAddressBlocknumberHousenumber` varchar(32) NOT NULL,
  `UserAddressBlocknumberHousenumberRoman` varchar(255) DEFAULT NULL,
  `UserAddressBuilding` varchar(64) NOT NULL,
  `UserAddressBuildingRoman` varchar(64) NOT NULL,
  `UserPhoneNumber` varchar(32) NOT NULL,
  `UserNote` varchar(500) NOT NULL,
  `UserIdUserIdInCharge` varchar(32) NOT NULL,
  `UserIsActiveValue` smallint(6) NOT NULL,
  `UserIsActiveDateTime` datetime NOT NULL,
  `UserIsSystemAdministrator` smallint(6) NOT NULL,
  `UserIsMraOperator` smallint(6) NOT NULL,
  `UserAllowMraRequest` smallint(6) NOT NULL,
  `UserAllowMraAnswer` smallint(6) NOT NULL,
  `UserIsDiaOperator` smallint(6) NOT NULL,
  `UserAllowDiaRequest` smallint(6) NOT NULL,
  `UserAllowDiaAnswer` smallint(6) NOT NULL,
  `UserIsExmOperator` smallint(6) NOT NULL,
  `UserAllowExmRequest` smallint(6) NOT NULL,
  `UserAllowExmAnswer` smallint(6) NOT NULL,
  `UserIsExmTarget` smallint(6) NOT NULL,
  PRIMARY KEY (`UserIndex`),
  UNIQUE KEY `UserId` (`UserId`),
  UNIQUE KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='依頼管理/ユーザー＆患者マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_Patient`
--

LOCK TABLES `tbl_m_Patient` WRITE;
/*!40000 ALTER TABLE `tbl_m_Patient` DISABLE KEYS */;
INSERT INTO `tbl_m_Patient` VALUES (0,1,'Pati-00000000000000000000000000b','User-00000000000000000000000000a','2012-08-27 14:08:29','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','1999-12-31 23:59:59','noUserAccount','noUserPassword',-1,-1,'1999-12-31 23:59:59',-1,'1999-12-31 23:59:59','1999-12-31 23:59:59','noUserFamilyName','noUserFirstName','noUserFamilyNameKana','noUserFirstNameKana','noUserFamilyNameRoman','noUserFirstNameRoman','1999-12-31 23:59:59','noSex','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRm','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59',-1,-1,-1,-1,0,0,0,0,0,0,0),(9,2,'Pati-00000000000000000000000001b','User-00000000000000000000015173a','2015-10-30 19:38:02','User-00000000000000000000000000a','1999-12-31 23:59:59',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','2015-10-30 19:36:27','Pati-00000000000000000000000001b','noUserPassword',1,0,'1999-12-31 23:59:59',0,'1999-12-31 23:59:59','1999-12-31 23:59:59','noUserFamilyName','noUserFirstName','サンプル','ハナコ','noUserFamilyNameRoman','noUserFirstNameRoman','1990-01-01 00:00:00','female','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRm','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000015173a',1,'2015-10-30 19:38:02',0,0,0,0,0,0,0,0,0,0,1),(18,3,'Pati-00000000000000000000000002b','User-00000000000000000000000002a','2016-02-25 07:18:57','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:57','Pati-00000000000000000000000002b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','エヌケイ','太郎','エヌケイ','タロウ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:57',0,0,0,0,0,0,0,0,0,0,1),(19,4,'Pati-00000000000000000000000003b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000003b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','エヌケイ','花子','エヌケイ','ハナコ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','female','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(20,5,'Pati-00000000000000000000000004b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000004b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','山下','拓','ヤマシタ','タク','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(21,6,'Pati-00000000000000000000000005b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000005b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','飯田','健雄','イイダ','タケオ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(22,7,'Pati-00000000000000000000000006b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000006b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','岡澤','和弘','オカザワ','カズヒロ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(23,8,'Pati-00000000000000000000000007b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000007b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','方志','嘉孝','ホウシ','ヨシタカ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(24,9,'Pati-00000000000000000000000008b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000008b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','米谷','諒','ヨネタニ','リョウ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(25,10,'Pati-00000000000000000000000009b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000009b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','勝田','諒','カツタ','リョウ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(26,11,'Pati-00000000000000000000000010b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000010b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','室田','鉄兵','ムロタ','テッペイ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(27,12,'Pati-00000000000000000000000011b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000011b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','遠藤','雄','エンドウ','タケシ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(28,13,'Pati-00000000000000000000000012b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000012b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','青木','ゆかり','アオキ','ユカリ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','female','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(29,14,'Pati-00000000000000000000000013b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000013b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','野口','和秀','ノグチ','カズヒデ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(30,15,'Pati-00000000000000000000000014b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000014b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','井川','恵美子','イカワ','エミコ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','female','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(31,16,'Pati-00000000000000000000000015b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000015b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','松本','智佳','マツモト','チカ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','female','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(32,17,'Pati-00000000000000000000000016b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000016b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','大沢','和樹','オオサワ','カズキ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(33,18,'Pati-00000000000000000000000017b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000017b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','大原','一樹','オオハラ','カズキ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(34,19,'Pati-00000000000000000000000018b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000018b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','岩崎','敏','イワザキ','サトシ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(35,20,'Pati-00000000000000000000000019b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000019b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','鶴見','敏行','ツルミ','トシユキ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(36,21,'Pati-00000000000000000000000020b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000020b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','瀧川','顕憲','タキガワ','アキノリ','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(37,22,'Pati-00000000000000000000000021b','User-00000000000000000000000002a','2016-02-25 07:18:58','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-25 16:18:58','Pati-00000000000000000000000021b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','林','サン','ハヤシ','サン','noUserFamilyNameRoman','noUserFirstNameRoman','0000-00-00 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000002a',1,'2016-02-25 07:18:58',0,0,0,0,0,0,0,0,0,0,1),(38,23,'Pati-00000000000000000000000022b','User-00000000000000000000015173a','2016-02-27 11:09:08','User-00000000000000000000000000a','2000-01-01 00:00:00',0,'User-00000000000000000000000000a','2000-01-01 00:00:00','2016-02-27 20:07:29','Pati-00000000000000000000000022b','noUserPassword',1,0,'2000-01-01 00:00:00',0,'2000-01-01 00:00:00','2000-01-01 00:00:00','う','え','あ','い','noUserFamilyNameRoman','noUserFirstNameRoman','2014-03-11 00:00:00','male','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRmn','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000015173a',1,'2016-02-27 11:09:08',0,0,0,0,0,0,0,0,0,0,1);
/*!40000 ALTER TABLE `tbl_m_Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_ProductCategory`
--

DROP TABLE IF EXISTS `tbl_m_ProductCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_ProductCategory` (
  `ProductCategoryIndex` int(10) NOT NULL AUTO_INCREMENT,
  `ProductCategoryId` varchar(32) NOT NULL,
  `ProductCategoryIdCreatedUserId` varchar(32) NOT NULL,
  `ProductCategoryIdCreatedDateTime` datetime NOT NULL,
  `ProductCategoryIdLastUpdatedUserId` varchar(32) NOT NULL,
  `ProductCategoryIdLastUpdatedDateTime` datetime NOT NULL,
  `ProductCategoryIdIsDeleted` smallint(6) NOT NULL,
  `ProductCategoryIdDeletedUserId` varchar(32) NOT NULL,
  `ProductCategoryIdDeletedDateTime` datetime NOT NULL,
  `ProductCategoryName` varchar(128) NOT NULL,
  `ProductCategoryNote` varchar(500) NOT NULL,
  `ProductCategoryIdUserIdInCharge` varchar(32) NOT NULL,
  `ProductCategoryIsActiveValue` smallint(6) NOT NULL,
  `ProductCategoryIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`ProductCategoryIndex`),
  UNIQUE KEY `ProductCategoryId` (`ProductCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='依頼管理/製品カテゴリマスタ[未使用]';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_ProductCategory`
--

LOCK TABLES `tbl_m_ProductCategory` WRITE;
/*!40000 ALTER TABLE `tbl_m_ProductCategory` DISABLE KEYS */;
INSERT INTO `tbl_m_ProductCategory` VALUES (1,'PrdctCtgry-00000000000000000000a','User-00000000000000000000000000a','2012-08-27 16:24:58','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','noProductCategoryName','noProductCategoryNote','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59');
/*!40000 ALTER TABLE `tbl_m_ProductCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_Role`
--

DROP TABLE IF EXISTS `tbl_m_Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_Role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(128) NOT NULL,
  `role_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_account`,`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_Role`
--

LOCK TABLES `tbl_m_Role` WRITE;
/*!40000 ALTER TABLE `tbl_m_Role` DISABLE KEYS */;
INSERT INTO `tbl_m_Role` VALUES (1,'takemaru.hirai@noritsu.com','Administrator');
/*!40000 ALTER TABLE `tbl_m_Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_SheetStatus`
--

DROP TABLE IF EXISTS `tbl_m_SheetStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_SheetStatus` (
  `SheetStatusIndex` int(10) NOT NULL AUTO_INCREMENT,
  `SheetStatusId` varchar(16) NOT NULL,
  `SheetStatusIdCreatedUserId` varchar(32) NOT NULL,
  `SheetStatusIdCreatedDateTime` datetime NOT NULL,
  `SheetStatusPassword` varchar(255) NOT NULL,
  `SheetStatusName` varchar(255) NOT NULL,
  `SheetStatusIdUserIdInCharge` varchar(32) NOT NULL,
  `SheetStatusIsActiveValue` smallint(6) NOT NULL,
  `SheetStatusIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`SheetStatusIndex`),
  UNIQUE KEY `SheetStatusId` (`SheetStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='依頼管理/ステータスマスタ[未使用]';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_SheetStatus`
--

LOCK TABLES `tbl_m_SheetStatus` WRITE;
/*!40000 ALTER TABLE `tbl_m_SheetStatus` DISABLE KEYS */;
INSERT INTO `tbl_m_SheetStatus` VALUES (1,'Sstatus-0000000a','User-00000000000000000000000000a','2012-08-27 16:00:28','noSheetStatusPassword','noSheetStatusName','User-00000000000000000000000000a',-1,'2012-08-27 16:00:28');
/*!40000 ALTER TABLE `tbl_m_SheetStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_SheetType`
--

DROP TABLE IF EXISTS `tbl_m_SheetType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_SheetType` (
  `SheetTypeIndex` int(10) NOT NULL AUTO_INCREMENT,
  `SheetTypeId` varchar(32) NOT NULL,
  `SheetTypeIdCreatedUserId` varchar(32) NOT NULL,
  `SheetTypeIdCreatedDateTime` datetime NOT NULL,
  `SheetTypePassword` varchar(255) NOT NULL,
  `SheetTypeName` varchar(255) NOT NULL,
  `SheetTypeIdUserIdInCharge` varchar(32) NOT NULL,
  `SheetTypeIsActiveValue` smallint(6) NOT NULL,
  `SheetTypeIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`SheetTypeIndex`),
  UNIQUE KEY `SheetTypeId` (`SheetTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='依頼管理/タイプマスタ[未使用]';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_SheetType`
--

LOCK TABLES `tbl_m_SheetType` WRITE;
/*!40000 ALTER TABLE `tbl_m_SheetType` DISABLE KEYS */;
INSERT INTO `tbl_m_SheetType` VALUES (1,'STyp-0000000000a','User-00000000000000000000000000a','2012-08-27 15:43:33','noSheetTypePassword','noSheetTypeName','User-00000000000000000000000000a',-1,'2012-08-27 15:43:33');
/*!40000 ALTER TABLE `tbl_m_SheetType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_SystemConfiguration`
--

DROP TABLE IF EXISTS `tbl_m_SystemConfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_SystemConfiguration` (
  `SysConfIndex` int(10) NOT NULL AUTO_INCREMENT,
  `SysConfId` varchar(16) NOT NULL,
  `SysConfIdCreatedUserId` varchar(32) NOT NULL,
  `SysConfIdCreatedDateTime` datetime NOT NULL,
  `SysConfMode` smallint(6) NOT NULL,
  `SysConfAdminUserId` varchar(32) NOT NULL,
  `SysConfUserAccountLockThreshold` smallint(6) NOT NULL,
  `SysWebApplicationServerInternal001HostName` varchar(128) NOT NULL,
  `SysDataAccessServerInternal001HostName` varchar(128) NOT NULL,
  `SysLogonRelayServerInternal001HostName` varchar(128) NOT NULL,
  `SysFileTransferRelayServerInternal001HostName` varchar(128) NOT NULL,
  `SysWebApplicationServerExternal001HostName` varchar(128) NOT NULL,
  `SysDataAccessServerExternal001HostName` varchar(128) NOT NULL,
  `SysLogonRelayServerExternal001HostName` varchar(128) NOT NULL,
  `SysFileTransferRelayServerExternal001HostName` varchar(128) NOT NULL,
  `SysDatabaseServer001HostName` varchar(128) NOT NULL,
  `SysLogonServer001HostName` varchar(128) NOT NULL,
  `SysFileStorageServer001HostName` varchar(128) NOT NULL,
  `SysConfRootPath` varchar(255) NOT NULL,
  `SysConfDsfPath` varchar(255) NOT NULL,
  `SysConfIdUserIdInCharge` varchar(32) NOT NULL,
  `SysConfIsActiveValue` smallint(6) NOT NULL,
  `SysConfIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`SysConfIndex`),
  UNIQUE KEY `SysConfId` (`SysConfId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='依頼管理/システム設定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_SystemConfiguration`
--

LOCK TABLES `tbl_m_SystemConfiguration` WRITE;
/*!40000 ALTER TABLE `tbl_m_SystemConfiguration` DISABLE KEYS */;
INSERT INTO `tbl_m_SystemConfiguration` VALUES (1,'SysConf-0000000a','User-00000000000000000000000000a','2012-08-06 18:23:59',-1,'User-00000000000000000000000000a',-1,'noSysWebApplicationServerInternal001HostName','noSysDataAccessServerInternal001HostName','noSysLogonRelayServerInternal001HostName','noSysFileTransferRelayServerInternal001HostName','noSysWebApplicationServerExternal001HostName','noSysDataAccessServerExternal001HostName','noSysLogonRelayServerExternal001HostName','noSysFileTransferRelayServerExternal001HostName','noSysDatabaseServer001HostName','noSysLogonServer001HostName','noSysFileStorageServer001HostName','noRootPath','noDsfPath','User-00000000000000000000000000a',-1,'2012-08-06 18:23:59'),(2,'SysConf-0000001a','User-00000000000000000000000000a','2012-09-17 01:04:10',1,'User-00000000000000000000000000a',5,'noSysWebApplicationServerInternal001HostName','noSysDataAccessServerInternal001HostName','noSysLogonRelayServerInternal001HostName','noSysFileTransferRelayServerInternal001HostName','www.round-ribbon.net','noSysDataAccessServerExternal001HostName','noSysLogonRelayServerExternal001HostName','noSysFileTransferRelayServerExternal001HostName','W2k3R2E86','noSysLogonServer001HostName','noSysFileStorageServer001HostName','noRootPath','noDsfPath','User-00000000000000000000000000a',1,'2012-09-17 01:04:10'),(3,'SysConf-0000002a','User-00000000000000000000000000a','2012-09-17 01:07:19',2,'User-00000000000000000000000000a',5,'noSysWebApplicationServerInternal001HostName','noSysDataAccessServerInternal001HostName','noSysLogonRelayServerInternal001HostName','noSysFileTransferRelayServerInternal001HostName','demo.aa9.netvolante.jp','noSysDataAccessServerExternal001HostName','noSysLogonRelayServerExternal001HostName','noSysFileTransferRelayServerExternal001HostName','W2k3R2E86','noSysLogonServer001HostName','noSysFileStorageServer001HostName','noRootPath','noDsfPath','User-00000000000000000000000000a',0,'2012-09-17 01:07:19');
/*!40000 ALTER TABLE `tbl_m_SystemConfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_TestSystem`
--

DROP TABLE IF EXISTS `tbl_m_TestSystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_TestSystem` (
  `TestSystemIndex` int(10) NOT NULL AUTO_INCREMENT,
  `TestSystemId` varchar(32) NOT NULL,
  `TestSystemIdCreatedUserId` varchar(32) NOT NULL,
  `TestSystemIdCreatedDateTime` datetime NOT NULL,
  `TestSystemIdLastUpdatedUserId` varchar(32) NOT NULL,
  `TestSystemIdLastUpdatedDateTime` datetime NOT NULL,
  `TestSystemIdIsDeleted` smallint(6) NOT NULL,
  `TestSystemIdDeletedUserId` varchar(32) NOT NULL,
  `TestSystemIdDeletedDateTime` datetime NOT NULL,
  `TestSystemName` varchar(128) NOT NULL,
  `TestSystemProviderId` varchar(256) NOT NULL,
  `TestSystemDeveloperId` varchar(128) NOT NULL,
  `TestSystemExaminationOrderId001` varchar(32) NOT NULL,
  `TestSystemExaminationOrderId002` varchar(32) NOT NULL,
  `TestSystemExaminationOrderId003` varchar(32) NOT NULL,
  `TestSystemExaminationOrderId004` varchar(32) NOT NULL,
  `TestSystemExaminationOrderId005` varchar(32) NOT NULL,
  `TestSystemExaminationOrderId006` varchar(32) NOT NULL,
  `TestSystemExaminationOrderId007` varchar(32) NOT NULL,
  `TestSystemExaminationOrderId008` varchar(32) NOT NULL,
  `TestSystemExaminationOrderId009` varchar(32) NOT NULL,
  `TestSystemExaminationOrderId010` varchar(32) NOT NULL,
  `TestSystemNote` varchar(500) NOT NULL,
  `TestSystemIdUserIdInCharge` varchar(32) NOT NULL,
  `TestSystemIsActiveValue` smallint(6) NOT NULL,
  `TestSystemIsActiveDateTime` datetime NOT NULL,
  PRIMARY KEY (`TestSystemIndex`),
  UNIQUE KEY `TestSystemId` (`TestSystemId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='依頼管理/用途不明';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_TestSystem`
--

LOCK TABLES `tbl_m_TestSystem` WRITE;
/*!40000 ALTER TABLE `tbl_m_TestSystem` DISABLE KEYS */;
INSERT INTO `tbl_m_TestSystem` VALUES (1,'TstSys-000000000000000000000000a','User-00000000000000000000000000a','2012-08-27 19:44:58','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','noTestSystemName','noTestSystemProviderId','noTestSystemDeveloperId','noTestSystemExaminationOrderId00','noTestSystemExaminationOrderId00','noTestSystemExaminationOrderId00','noTestSystemExaminationOrderId00','noTestSystemExaminationOrderId00','noTestSystemExaminationOrderId00','noTestSystemExaminationOrderId00','noTestSystemExaminationOrderId00','noTestSystemExaminationOrderId00','noTestSystemExaminationOrderId01','noTestSystemNote','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59');
/*!40000 ALTER TABLE `tbl_m_TestSystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_Unit`
--

DROP TABLE IF EXISTS `tbl_m_Unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_Unit` (
  `actor_id` int(11) NOT NULL,
  `UnitIndex` int(10) NOT NULL AUTO_INCREMENT,
  `UnitId` varchar(16) NOT NULL,
  `UnitIdCreatedUserId` varchar(32) NOT NULL,
  `UnitIdCreatedDateTime` datetime NOT NULL,
  `UnitIdLastUpdatedUserId` varchar(32) NOT NULL,
  `UnitIdLastUpdatedDateTime` datetime NOT NULL,
  `UnitIdIsDeleted` smallint(6) NOT NULL,
  `UnitIdDeletedUserId` varchar(32) NOT NULL,
  `UnitIdDeletedDateTime` datetime NOT NULL,
  `UnitPassword` varchar(255) NOT NULL,
  `UnitOrganizationId` varchar(16) NOT NULL,
  `Unit01DomainName` varchar(100) NOT NULL,
  `Unit02DepartmentName` varchar(100) NOT NULL,
  `Unit03DivisionName` varchar(100) NOT NULL,
  `Unit04SectionName` varchar(100) NOT NULL,
  `Unit05TeamName` varchar(100) NOT NULL,
  `UnitAddressCountry` varchar(64) NOT NULL,
  `UnitAddressZipCode` varchar(16) NOT NULL,
  `UnitAddressCapitalPrefectureCommonwealth` varchar(32) NOT NULL,
  `UnitAddressCityWard` varchar(32) NOT NULL,
  `UnitAddressCityWardRoman` varchar(32) NOT NULL,
  `UnitAddressTownVillage` varchar(32) NOT NULL,
  `UnitAddressTownVillageRoman` varchar(32) NOT NULL,
  `UnitAddressBlocknumberHousenumber` varchar(32) NOT NULL,
  `UnitAddressBlocknumberHousenumberRoman` varchar(32) NOT NULL,
  `UnitAddressBuilding` varchar(64) NOT NULL,
  `UnitAddressBuildingRoman` varchar(64) NOT NULL,
  `UnitPhoneNumber` varchar(32) NOT NULL,
  `UnitUserIdInCharge` varchar(32) NOT NULL,
  `UnitUserIdToApprove` varchar(32) NOT NULL,
  `UnitIdUserIdInCharge` varchar(32) NOT NULL,
  `UnitIsActiveValue` smallint(6) NOT NULL,
  `UnitIsActiveDateTime` datetime NOT NULL,
  `UnitAllowedDir1` varchar(255) NOT NULL,
  PRIMARY KEY (`UnitIndex`),
  UNIQUE KEY `UnitId` (`UnitId`),
  UNIQUE KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='依頼管理/部署マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_Unit`
--

LOCK TABLES `tbl_m_Unit` WRITE;
/*!40000 ALTER TABLE `tbl_m_Unit` DISABLE KEYS */;
INSERT INTO `tbl_m_Unit` VALUES (0,1,'Unit-0000000000a','User-00000000000000000000000000a','2012-08-27 15:02:18','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','noUnitPassword','noUnitOrganizati','noUnit01DomainName','noUnit02DepartmentName','noUnit03DivisionName','noUnit04SectionName','noUnit05TeamName','noUnitAddressCountry','noUnitAddressZip','noUnitAddressCapitalPrefectureCo','noUnitAddressCityWard','noUnitAddressCityWardRoman','noUnitAddressTownVillage','noUnitAddressTownVillageRoman','noUnitAddressBlocknumberHousenum','noUnitAddressBlocknumberHousenum','noUnitAddressBuilding','noUnitAddressBuildingRoman','noUnitPhoneNumber','noUnitUserIdInCharge','noUnitUserIdToApprove','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59','UnitAllowedDir1'),(2,2,'Unit-0000000002a','User-00000000000000000000000001a','2012-09-17 02:54:11','User-00000000000000000000000003a','2015-02-12 19:14:00',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','noUnitPassword','Org-00000000001a','noUnit01DomainName','noUnit02DepartmentName','予防医療事業部','noUnit04SectionName','noUnit05TeamName','noUnitAddressCountry','noUnitAddressZip','noUnitAddressCapitalPrefectureCo','noUnitAddressCityWard','noUnitAddressCityWardRoman','noUnitAddressTownVillage','noUnitAddressTownVillageRoman','noUnitAddressBlocknumberHousenum','noUnitAddressBlocknumberHousenum','noUnitAddressBuilding','noUnitAddressBuildingRoman','noUnitPhoneNumber','noUnitUserIdInCharge','noUnitUserIdToApprove','User-00000000000000000000000001a',1,'2012-09-17 02:54:11','UnitAllowedDir1'),(7,3,'Unit-0000000003a','User-00000000000000000000015173a','2015-10-30 19:36:00','User-00000000000000000000000000a','1999-12-31 23:59:00',0,'User-00000000000000000000000000a','1999-12-31 23:59:00','noUnitPassword','Org-00000000003a','noUnit01DomainName','noUnit02DepartmentName','検査科','noUnit04SectionName','noUnit05TeamName','noUnitAddressCountry','noUnitAddressZip','noUnitAddressCapitalPrefectureCo','noUnitAddressCityWard','noUnitAddressCityWardRoman','noUnitAddressTownVillage','noUnitAddressTownVillageRoman','noUnitAddressBlocknumberHousenum','noUnitAddressBlocknumberHousenum','noUnitAddressBuilding','noUnitAddressBuildingRoman','noUnitPhoneNumber','noUnitUserIdInCharge','noUnitUserIdToApprove','User-00000000000000000000000002a',1,'2015-10-30 19:36:00','UnitAllowedDir1');
/*!40000 ALTER TABLE `tbl_m_Unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_m_User`
--

DROP TABLE IF EXISTS `tbl_m_User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_m_User` (
  `actor_id` int(11) NOT NULL,
  `UserIndex` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(32) NOT NULL,
  `UserIdCreatedUserId` varchar(32) NOT NULL,
  `UserIdCreatedDateTime` datetime NOT NULL,
  `UserIdLastUpdatedUserId` varchar(32) NOT NULL,
  `UserIdLastUpdatedDateTime` datetime NOT NULL,
  `UserIdIsDeleted` smallint(6) NOT NULL,
  `UserIdDeletedUserId` varchar(32) NOT NULL,
  `UserIdDeletedDateTime` datetime NOT NULL,
  `UserIdStartOfApplicationForRegistrationDateTime` datetime NOT NULL,
  `UserAccount` varchar(128) NOT NULL,
  `UserPassword` varchar(32) NOT NULL,
  `UserIsRegisteredTemporarily` smallint(6) NOT NULL,
  `UserIsRegisteredRegularly` smallint(6) NOT NULL,
  `UserExpirationDateTime` datetime NOT NULL,
  `UserLoginFailedConsecutivelyTimes` smallint(6) NOT NULL,
  `UserLastLoginedDateTime` datetime NOT NULL,
  `UserLastLogoutedDateTime` datetime NOT NULL,
  `UserFamilyName` varchar(50) NOT NULL,
  `UserFirstName` varchar(50) NOT NULL,
  `UserFamilyNameKana` varchar(50) NOT NULL,
  `UserFirstNameKana` varchar(50) NOT NULL,
  `UserFamilyNameRoman` varchar(50) NOT NULL,
  `UserFirstNameRoman` varchar(50) NOT NULL,
  `UserBirthDateTime` datetime NOT NULL,
  `UserSex` varchar(8) NOT NULL,
  `UserMailAddress001` varchar(128) NOT NULL,
  `UserMailAddress002` varchar(128) NOT NULL,
  `UserMailAddress003` varchar(128) NOT NULL,
  `UserPhoneNumber001` varchar(32) NOT NULL,
  `UserPhoneNumber002` varchar(32) NOT NULL,
  `UserPhoneNumber003` varchar(32) NOT NULL,
  `UserUnitId` varchar(16) NOT NULL,
  `UserAddressCountry` varchar(64) NOT NULL,
  `UserAddressZipCode` varchar(16) NOT NULL,
  `UserAddressCapitalPrefectureCommonwealth` varchar(32) NOT NULL,
  `UserAddressCityWard` varchar(32) NOT NULL,
  `UserAddressCityWardRoman` varchar(32) NOT NULL,
  `UserAddressTownVillage` varchar(32) NOT NULL,
  `UserAddressTownVillageRoman` varchar(32) NOT NULL,
  `UserAddressBlocknumberHousenumber` varchar(32) NOT NULL,
  `UserAddressBlocknumberHousenumberRoman` varchar(255) DEFAULT NULL,
  `UserAddressBuilding` varchar(64) NOT NULL,
  `UserAddressBuildingRoman` varchar(64) NOT NULL,
  `UserPhoneNumber` varchar(32) NOT NULL,
  `UserNote` varchar(500) NOT NULL,
  `UserIdUserIdInCharge` varchar(32) NOT NULL,
  `UserIsActiveValue` smallint(6) NOT NULL,
  `UserIsActiveDateTime` datetime NOT NULL,
  `UserIsSystemAdministrator` smallint(6) NOT NULL,
  `UserIsMraOperator` smallint(6) NOT NULL,
  `UserAllowMraRequest` smallint(6) NOT NULL,
  `UserAllowMraAnswer` smallint(6) NOT NULL,
  `UserIsDiaOperator` smallint(6) NOT NULL,
  `UserAllowDiaRequest` smallint(6) NOT NULL,
  `UserAllowDiaAnswer` smallint(6) NOT NULL,
  `UserIsExmOperator` smallint(6) NOT NULL,
  `UserAllowExmRequest` smallint(6) NOT NULL,
  `UserAllowExmAnswer` smallint(6) NOT NULL,
  `UserIsExmTarget` smallint(6) NOT NULL,
  PRIMARY KEY (`UserIndex`),
  UNIQUE KEY `UserId` (`UserId`),
  UNIQUE KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='依頼管理/ユーザー＆患者マスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_m_User`
--

LOCK TABLES `tbl_m_User` WRITE;
/*!40000 ALTER TABLE `tbl_m_User` DISABLE KEYS */;
INSERT INTO `tbl_m_User` VALUES (0,1,'User-00000000000000000000000000a','User-00000000000000000000000000a','2012-08-27 14:08:29','User-00000000000000000000000000a','1999-12-31 23:59:59',-1,'User-00000000000000000000000000a','1999-12-31 23:59:59','1999-12-31 23:59:59','noUserAccount','noUserPassword',-1,-1,'1999-12-31 23:59:59',-1,'1999-12-31 23:59:59','1999-12-31 23:59:59','noUserFamilyName','noUserFirstName','noUserFamilyNameKana','noUserFirstNameKana','noUserFamilyNameRoman','noUserFirstNameRoman','1999-12-31 23:59:59','noSex','noUserMailAddress001','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000000a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRm','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000000a',-1,'1999-12-31 23:59:59',-1,-1,-1,-1,0,0,0,0,0,0,0),(3,2,'User-00000000000000000000015173a','User-00000000000000000000000003a','2015-03-05 17:09:16','User-00000000000000000000015173a','2016-02-27 11:13:53',0,'User-00000000000000000000000000a','1999-12-31 23:59:59','1999-12-31 23:59:59','takemaru.hirai@noritsu.com','1235e',0,1,'1999-12-31 23:59:59',0,'2016-02-27 11:13:53','1999-12-31 23:59:59','平井','建丸','-','-','noUserFamilyNameRoman','noUserFirstNameRoman','1999-12-31 23:59:59','unknown','takemaru.hirai@noritsu.com','noUserMailAddress002','noUserMailAddress003','noUserPhoneNumber001','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000002a','noUserAddressCountry','noUserAddressZip','noUserAddressCptlPrfctrCmmnwlth','noUserAddressCityWard','noUserAddressCityWardRoman','noUserAddressTownVillage','noUserAddressTownVillageRoman','noUserAddressBlocknumberHsnmbr','noUserAddressBlocknumberHsnmbrRm','noUserAddressBuilding','noUserAddressBuildingRoman','noUserPhoneNumber','noUserNote','User-00000000000000000000000003a',1,'2015-03-05 17:09:16',0,0,0,0,0,0,0,1,1,1,0),(8,3,'User-00000000000000000000015174a','User-00000000000000000000015173a','2015-10-30 19:36:00','User-00000000000000000000000000a','1999-12-31 23:59:00',0,'User-00000000000000000000000000a','1999-12-31 23:59:00','1999-12-31 23:59:00','sample@clinic.jp','1235e',0,1,'1999-12-31 23:59:00',0,'1999-12-31 23:59:00','1999-12-31 23:59:00','検査','太郎','','','','','1999-12-31 23:59:00','male','sample@clinic.jp','noUserMailAddress002','noUserMailAddress003','090-0000-0000','noUserPhoneNumber002','noUserPhoneNumber003','Unit-0000000003a','Japan','100-0001','東京都','千代田区','noUserAddressCityWardRoman','千代田','noUserAddressTownVillageRoman','1-1','noUserAddressBlocknumberHousenum','noUserAddressBuilding','noUserAddressBuildingRoman','090-0000-0000','noUserNote','User-00000000000000000000000002a',1,'2015-10-30 19:36:00',0,0,0,0,0,0,0,0,1,0,0);
/*!40000 ALTER TABLE `tbl_m_User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `booklets`
--

/*!50001 DROP TABLE IF EXISTS `booklets`*/;
/*!50001 DROP VIEW IF EXISTS `booklets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `booklets` AS select ifnull(`b`.`id`,NULL) AS `id`,ifnull(`b`.`year`,year(`s`.`sent_datetime`)) AS `year`,ifnull(`b`.`month`,month(`s`.`sent_datetime`)) AS `month`,ifnull(`b`.`no`,NULL) AS `no`,ifnull(`b`.`client_name`,`s`.`client_name`) AS `client_name`,ifnull(`b`.`client_id`,`s`.`client_id`) AS `client_id`,ifnull(`b`.`target_name_kana`,`s`.`target_name_kana`) AS `target_name_kana`,ifnull(`b`.`set_master_alias`,`s`.`set_master_alias`) AS `set_master_alias`,ifnull(`b`.`set_master_id`,`s`.`set_master_id`) AS `set_master_id`,ifnull(`b`.`set_data_id`,`s`.`set_data_id`) AS `set_data_id`,ifnull(`b`.`order_display_id`,`s`.`order_display_id`) AS `order_display_id`,ifnull(`b`.`blood_collected_date`,`s`.`blood_collected_date`) AS `blood_collected_date`,ifnull(`b`.`sent_date`,cast(`s`.`sent_datetime` as date)) AS `sent_date`,ifnull(`b`.`received_datetime`,`s`.`received_datetime`) AS `received_datetime`,ifnull(`b`.`cost_price`,NULL) AS `cost_price`,ifnull(`b`.`unit_price`,NULL) AS `unit_price`,ifnull(`b`.`tax_rate`,NULL) AS `tax_rate`,ifnull(`b`.`tax_included`,NULL) AS `tax_included`,ifnull(`b`.`paid_price`,NULL) AS `paid_price`,ifnull(`b`.`unpaid_price`,NULL) AS `unpaid_price`,ifnull(`b`.`payment_date`,NULL) AS `payment_date`,ifnull(`b`.`posting_date`,NULL) AS `posting_date`,ifnull(`b`.`examiner_billing_month`,NULL) AS `examiner_billing_month`,ifnull(`b`.`note`,NULL) AS `note` from (`sets` `s` left join `books` `b` on((`s`.`set_data_id` = `b`.`set_data_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `books`
--

/*!50001 DROP TABLE IF EXISTS `books`*/;
/*!50001 DROP VIEW IF EXISTS `books`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `books` AS select `f`.`id` AS `id`,`f`.`year` AS `year`,`f`.`month` AS `month`,`o`.`OrganizationDisplayId` AS `no`,`s`.`client_name` AS `client_name`,`s`.`client_id` AS `client_id`,`s`.`target_name_kana` AS `target_name_kana`,`s`.`set_master_alias` AS `set_master_alias`,`s`.`set_master_id` AS `set_master_id`,`s`.`set_data_id` AS `set_data_id`,`s`.`order_display_id` AS `order_display_id`,`s`.`blood_collected_date` AS `blood_collected_date`,cast(`s`.`sent_datetime` as date) AS `sent_date`,`s`.`received_datetime` AS `received_datetime`,`f`.`cost_price` AS `cost_price`,`f`.`unit_price` AS `unit_price`,`f`.`tax_rate` AS `tax_rate`,cast(floor(((`f`.`tax_rate` * `f`.`unit_price`) + 0.5)) as decimal(10,0)) AS `tax_included`,`f`.`paid_price` AS `paid_price`,(floor(((`f`.`tax_rate` * `f`.`unit_price`) + 0.5)) - `f`.`paid_price`) AS `unpaid_price`,`f`.`payment_date` AS `payment_date`,`f`.`posting_date` AS `posting_date`,`f`.`examiner_billing_month` AS `examiner_billing_month`,`f`.`note` AS `note` from (((`inv_d_Book` `f` left join `sets` `s` on((`s`.`set_data_id` = `f`.`set_data_id`))) left join `prices` `p` on(((`p`.`organization_id` = `s`.`client_id`) and (`p`.`set_master_id` = `s`.`set_master_id`)))) left join `tbl_m_Organization` `o` on((`o`.`OrganizationId` = `s`.`client_id`))) where (`f`.`deleted` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `discounts`
--

/*!50001 DROP TABLE IF EXISTS `discounts`*/;
/*!50001 DROP VIEW IF EXISTS `discounts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `discounts` AS select `d`.`id` AS `id`,`d`.`price_id` AS `price_id`,`d`.`unit_price` AS `unit_price`,cast((`d`.`unit_price` * `c`.`value`) as decimal(10,0)) AS `tax_included`,(`p`.`unit_price` - `d`.`unit_price`) AS `saving`,`d`.`discount_times` AS `discount_times`,`d`.`least_numbers` AS `least_numbers`,`d`.`start_date` AS `start_date`,`d`.`end_date` AS `end_date`,`d`.`type` AS `type` from ((`inv_m_Discount` `d` left join `inv_m_Price` `p` on((`p`.`id` = `d`.`price_id`))) left join `inv_m_Config` `c` on((`c`.`key` = 'current_tax_rate'))) where ((`d`.`deleted` = 0) and (`p`.`deleted` = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `leaks`
--

/*!50001 DROP TABLE IF EXISTS `leaks`*/;
/*!50001 DROP VIEW IF EXISTS `leaks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `leaks` AS select `o`.`SheetDataExaminationOrderDisplayExaminationOrderId` AS `order_display_id`,`s`.`SheetDataExaminationSetId` AS `set_data_id`,`f`.`SheetDataFlowAnswerUpdatedDateTime` AS `sent_date_time`,`o`.`SheetDataExaminationOrderOrderOrganizationId` AS `client_id`,`s`.`SheetDataExaminationSetExaminationSetId` AS `set_master_id`,`m`.`SheetDataCommonSheetStatusId` AS `status` from (((((`tbl_d_SheetDataExaminationSet` `s` left join `tbl_d_SheetDataExaminationCourse` `c` on((`s`.`SheetDataExaminationSetSheetDataExaminationCourseId` = `c`.`SheetDataExaminationCourseId`))) left join `tbl_d_SheetDataExaminationOrder` `o` on((`c`.`SheetDataExaminationCourseSheetDataExaminationOrderId` = `o`.`SheetDataExaminationOrderId`))) left join `tbl_d_SheetDataCommon` `m` on((`o`.`SheetDataExaminationOrderSheetDataCommonId` = `m`.`SheetDataCommonId`))) left join `tbl_d_SheetDataFlow` `f` on((`m`.`SheetDataCommonId` = `f`.`SheetDataFlowSheetDataCommonId`))) left join `inv_d_Book` `b` on((`s`.`SheetDataExaminationSetId` = `b`.`set_data_id`))) where (isnull(`b`.`set_data_id`) and (convert(`f`.`SheetDataFlowAnswerUpdatedDateTime` using utf8) > '2013-02-28') and (`o`.`SheetDataExaminationOrderIdIsDeleted` = 0) and (`m`.`SheetDataCommonSheetStatusId` <> 'Sstatus-0000999a')) order by `s`.`SheetDataExaminationSetId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prices`
--

/*!50001 DROP TABLE IF EXISTS `prices`*/;
/*!50001 DROP VIEW IF EXISTS `prices`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prices` AS select `p`.`id` AS `id`,`o`.`OrganizationName` AS `organization_name`,`p`.`organization_id` AS `organization_id`,`s`.`ExaminationSetAlias` AS `set_master_alias`,`s`.`ExaminationSetName` AS `set_master_name`,`p`.`set_master_id` AS `set_master_id`,`p`.`unit_price` AS `unit_price`,cast(floor(((cast(`c`.`value` as decimal(3,2)) * `p`.`unit_price`) + 0.5)) as decimal(10,0)) AS `tax_included`,`p`.`contract_date` AS `contract_date`,`p`.`billing_month_after` AS `billing_month_after` from (((`inv_m_Price` `p` left join `tbl_m_Organization` `o` on((`p`.`organization_id` = `o`.`OrganizationId`))) left join `tbl_m_ExaminationSet` `s` on((`p`.`set_master_id` = `s`.`ExaminationSetId`))) left join `inv_m_Config` `c` on(1)) where ((`c`.`key` = 'current_tax_rate') and (`p`.`deleted` = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sets`
--

/*!50001 DROP TABLE IF EXISTS `sets`*/;
/*!50001 DROP VIEW IF EXISTS `sets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sets` AS select `s`.`SheetDataExaminationSetIndex` AS `id`,`s`.`SheetDataExaminationSetId` AS `set_data_id`,`o`.`SheetDataExaminationOrderDisplayExaminationOrderId` AS `order_display_id`,`o`.`SheetDataExaminationOrderMedicalRecordId` AS `order_card_id`,cast(`o`.`SheetDataExaminationOrderBloodCollectedDateTime` as date) AS `blood_collected_date`,concat(`tu`.`UserFamilyNameKana`,' ',`tu`.`UserFirstNameKana`) AS `target_name_kana`,concat(`tu`.`UserFamilyName`,' ',`tu`.`UserFirstName`) AS `target_name`,cast(`tu`.`UserBirthDateTime` as date) AS `target_birthday`,`o`.`SheetDataExaminationOrderTargetUserAge` AS `target_age`,`tu`.`UserSex` AS `target_sex`,`ms`.`ExaminationSetAlias` AS `set_master_alias`,`ms`.`ExaminationSetName` AS `set_master_name`,`ms`.`ExaminationSetId` AS `set_master_id`,`cs`.`ExaminationCourseName` AS `course_master_name`,`cs`.`ExaminationCourseId` AS `course_master_id`,`og`.`OrganizationName` AS `client_name`,`og`.`OrganizationId` AS `client_id`,`un`.`Unit03DivisionName` AS `client_unit_name`,`un`.`UnitId` AS `client_unit_id`,concat(`us`.`UserFamilyName`,' ',`us`.`UserFirstName`) AS `client_user_name`,`us`.`UserId` AS `client_user_id`,`o`.`SheetDataExaminationOrderDoctorInCharge` AS `doctor`,`o`.`SheetDataExaminationOrderNote` AS `note`,`fw`.`SheetDataFlowCreationUpdatedDateTime` AS `received_datetime`,`fw`.`SheetDataFlowAnswerPreStartDateTime` AS `entered_datetime`,`fw`.`SheetDataFlowAnswerUpdatedDateTime` AS `sent_datetime`,cast(`o`.`SheetDataExaminationOrderDeliveryRequestDateTime` as date) AS `delivery_date`,`cm`.`SheetDataCommonSheetStatusId` AS `status_id`,`o`.`SheetDataExaminationOrderIsSample` AS `sample_type` from ((((((((((`tbl_d_SheetDataExaminationSet` `s` left join `tbl_m_ExaminationSet` `ms` on((`s`.`SheetDataExaminationSetExaminationSetId` = `ms`.`ExaminationSetId`))) left join `tbl_d_SheetDataExaminationCourse` `c` on((`s`.`SheetDataExaminationSetSheetDataExaminationCourseId` = `c`.`SheetDataExaminationCourseId`))) left join `tbl_m_ExaminationCourse` `cs` on((`c`.`SheetDataExaminationCourseExaminationCourseId` = `cs`.`ExaminationCourseId`))) left join `tbl_d_SheetDataExaminationOrder` `o` on((`c`.`SheetDataExaminationCourseSheetDataExaminationOrderId` = `o`.`SheetDataExaminationOrderId`))) left join `tbl_d_SheetDataCommon` `cm` on((`o`.`SheetDataExaminationOrderSheetDataCommonId` = `cm`.`SheetDataCommonId`))) left join `tbl_d_SheetDataFlow` `fw` on((`o`.`SheetDataExaminationOrderSheetDataCommonId` = `fw`.`SheetDataFlowSheetDataCommonId`))) left join `tbl_m_User` `us` on((`o`.`SheetDataExaminationOrderOrderUserId` = `us`.`UserId`))) left join `tbl_m_Unit` `un` on((`o`.`SheetDataExaminationOrderOrderUnitId` = `un`.`UnitId`))) left join `tbl_m_Organization` `og` on((`o`.`SheetDataExaminationOrderOrderOrganizationId` = `og`.`OrganizationId`))) left join `tbl_m_Patient` `tu` on((`o`.`SheetDataExaminationOrderTargetUserId` = `tu`.`UserId`))) where (`o`.`SheetDataExaminationOrderIdIsDeleted` < 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-27 20:51:14
