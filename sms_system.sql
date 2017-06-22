/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.6.17 : Database - sms_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `adjustment_details` */

DROP TABLE IF EXISTS `adjustment_details`;

CREATE TABLE `adjustment_details` (
  `adjustmentid` bigint(20) NOT NULL AUTO_INCREMENT,
  `adj_purpose` varchar(500) DEFAULT NULL,
  `adj_time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `warehouseid` bigint(20) DEFAULT NULL,
  `userID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`adjustmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adjustment_details` */

/*Table structure for table `adjustment_items` */

DROP TABLE IF EXISTS `adjustment_items`;

CREATE TABLE `adjustment_items` (
  `adjustmentitemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `adjustmentid` bigint(20) DEFAULT NULL,
  `itemno` bigint(20) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `action` varchar(500) DEFAULT NULL,
  `update_status` int(11) DEFAULT '0',
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`adjustmentitemsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `adjustment_items` */

/*Table structure for table `assets` */

DROP TABLE IF EXISTS `assets`;

CREATE TABLE `assets` (
  `assetid` bigint(20) NOT NULL AUTO_INCREMENT,
  `asset_article` varchar(500) DEFAULT NULL,
  `asset_particulars` text,
  `asset_classification` varchar(500) DEFAULT NULL,
  `asset_unit` varchar(500) DEFAULT 'PC',
  PRIMARY KEY (`assetid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assets` */

/*Table structure for table `audit` */

DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `auditid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT NULL,
  `sample` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`auditid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `audit` */

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `empNo` varchar(10) NOT NULL DEFAULT 'NONE',
  `lname` varchar(80) NOT NULL,
  `fname` varchar(80) NOT NULL,
  `mname` varchar(80) NOT NULL,
  `ename` varbinary(100) DEFAULT NULL,
  `designation` varchar(100) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`eid`,`empNo`,`lname`,`fname`,`mname`,`ename`,`designation`) values (12,'','ANCHETA-DIEGO','CHERRIE MELANIE','','','Director IV'),(13,'','CASIPIT','MA. GERALDINE','F','','Supervising Education Program Specialist'),(14,'','BUENIO','NYMPHA','N','','Chief Administrative Officer'),(15,'','ADQUILEN','EVELYN','C','','Administrative Officer III'),(16,'','AGCAOILI','REYNALDO','D','','Education Supervisor II'),(17,'','AGLUGUB','RODOLFO','E','','Education Supervisor II'),(18,'','ANCHETA','ARNOLD','V','','Education Supervisor II'),(19,'','BOSE','DANILO','B','','Education Supervisor II'),(20,'','CABANBAN','CHRISTIANNE LYNNETTE','G','','Education Supervisor II'),(21,'','CANTOR','MARK ANTHONY','L','','Administrative Aide VI'),(22,'','CHAN','CATHERINE','C','','Education Supervisor II'),(23,'','DOLORES','ANGELICA','Q','','Education Supervisor II'),(24,'','DULUEÃ‘A','PERFECTO','A','','Administrative Aide VI'),(25,'','FERRER','ANGELA','F','','Education Program Specialist II'),(26,'','GALERA JR.','ROGELIO','T','','Education Supervisor II'),(27,'','INIGO','KRIZZANE','C','','Administrative Assistant III'),(28,'','MENDOZA','MARVIN','I','','Administrative Aide IV'),(29,'','MINA','MYRELLE FAITH','D','','Education Supervisor II'),(30,'','MOLINA','FLORANTE','F','','Administrative Aide III'),(31,'','MONTEMAYOR','DIANNE JOYCE','B','','Administrative Officer III'),(32,'','OLI','CORNELIO','T','','Administrative Aide III'),(33,'','QUEZON','MAYROSE','L','','Education Supervisor II'),(34,'','NARCEDA','ARGIELYN','','','Job Order'),(35,'','PASCUA','CHARLES VINCENT','','','Job Order'),(36,'','TACTACAN','CIELITO','','','Job Order'),(37,'','VALENCIA','NASTASHA','A','','Job Order'),(38,'','YAMSON','VIC','','','Guard'),(39,'','OLPINDO','AUDIE','','','Guard'),(40,'','ESCAÃ‘O','MELODY','G','','Job Order'),(41,'','ANCHETA','MELQUIDES','','','PTS III'),(42,'','JONARD\r\n','GAVO\r\n','','','OJT'),(43,'','FRANCIA\r\n','POLIDO\r\n','','','OJT'),(44,'','CASEM','ELVIN','E','','PTS III');

/*Table structure for table `equipments` */

DROP TABLE IF EXISTS `equipments`;

CREATE TABLE `equipments` (
  `equipNo` bigint(20) NOT NULL AUTO_INCREMENT,
  `assetid` bigint(20) DEFAULT NULL,
  `propertyNo` varchar(100) DEFAULT 'NONE',
  `article` varchar(100) DEFAULT NULL,
  `particulars` text NOT NULL,
  `dateacquired` date NOT NULL DEFAULT '0000-00-00',
  `totalcost` double(10,2) NOT NULL DEFAULT '0.00',
  `issuedto` varchar(500) DEFAULT NULL,
  `enduser` varchar(500) DEFAULT NULL,
  `classification` varchar(200) DEFAULT NULL,
  `accountcode` varchar(100) DEFAULT NULL,
  `service` varchar(100) DEFAULT 'SERVICEABLE',
  `whereabout` text,
  `remarks` text,
  `inventorytag` varchar(100) DEFAULT NULL,
  `supplierID` int(11) DEFAULT '0',
  `barcode` varchar(500) DEFAULT NULL,
  `deliveryid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`equipNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `equipments` */

/*Table structure for table `equipments_details` */

DROP TABLE IF EXISTS `equipments_details`;

CREATE TABLE `equipments_details` (
  `equipdetailsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `equipNo` bigint(20) NOT NULL,
  `assetid` bigint(20) DEFAULT NULL,
  `processor` varchar(200) NOT NULL DEFAULT 'NONE',
  `ram` varchar(100) NOT NULL DEFAULT 'NONE',
  `hd` varchar(100) NOT NULL DEFAULT 'NONE',
  `operatingsystem` varchar(100) NOT NULL DEFAULT 'NONE',
  `brand` varchar(200) NOT NULL DEFAULT 'NONE',
  `color` varchar(100) NOT NULL DEFAULT 'NONE',
  `others` text NOT NULL,
  `equipsn` varchar(500) DEFAULT NULL,
  `processorsn` varchar(500) DEFAULT NULL,
  `monitorsn` varchar(500) DEFAULT NULL,
  `keyboardsn` varchar(500) DEFAULT NULL,
  `mousesn` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`equipdetailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `equipments_details` */

/*Table structure for table `equipments_ics` */

DROP TABLE IF EXISTS `equipments_ics`;

CREATE TABLE `equipments_ics` (
  `icsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `icsno` varchar(500) DEFAULT NULL,
  `icsdate` date DEFAULT NULL,
  `eid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`icsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `equipments_ics` */

/*Table structure for table `equipments_ics_items` */

DROP TABLE IF EXISTS `equipments_ics_items`;

CREATE TABLE `equipments_ics_items` (
  `icsitemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `icsid` bigint(20) DEFAULT NULL,
  `equipno` bigint(20) DEFAULT NULL,
  `assetid` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`icsitemsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `equipments_ics_items` */

/*Table structure for table `equipments_log` */

DROP TABLE IF EXISTS `equipments_log`;

CREATE TABLE `equipments_log` (
  `equiplogid` bigint(20) NOT NULL AUTO_INCREMENT,
  `tab` varchar(100) DEFAULT NULL,
  `logdescription` text,
  PRIMARY KEY (`equiplogid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `equipments_log` */

/*Table structure for table `equipments_par` */

DROP TABLE IF EXISTS `equipments_par`;

CREATE TABLE `equipments_par` (
  `parid` bigint(20) NOT NULL AUTO_INCREMENT,
  `parno` varchar(500) DEFAULT NULL,
  `pardate` date DEFAULT NULL,
  `eid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`parid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `equipments_par` */

/*Table structure for table `equipments_par_items` */

DROP TABLE IF EXISTS `equipments_par_items`;

CREATE TABLE `equipments_par_items` (
  `paritemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `parid` bigint(20) DEFAULT NULL,
  `equipno` bigint(20) DEFAULT NULL,
  `assetid` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`paritemsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `equipments_par_items` */

/*Table structure for table `equipments_ptr` */

DROP TABLE IF EXISTS `equipments_ptr`;

CREATE TABLE `equipments_ptr` (
  `ptrid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ptrno` varchar(500) DEFAULT NULL,
  `ptrdate` date DEFAULT NULL,
  `fromoffice` varchar(500) DEFAULT NULL,
  `tooffice` varchar(500) DEFAULT NULL,
  `transfertype` varchar(500) DEFAULT NULL,
  `transferreason` text,
  PRIMARY KEY (`ptrid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `equipments_ptr` */

/*Table structure for table `equipments_ptr_items` */

DROP TABLE IF EXISTS `equipments_ptr_items`;

CREATE TABLE `equipments_ptr_items` (
  `ptritemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ptrid` bigint(20) DEFAULT NULL,
  `equipno` bigint(20) DEFAULT NULL,
  `assetid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ptritemsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `equipments_ptr_items` */

/*Table structure for table `equipments_receiving` */

DROP TABLE IF EXISTS `equipments_receiving`;

CREATE TABLE `equipments_receiving` (
  `deliveryid` bigint(11) NOT NULL AUTO_INCREMENT,
  `supplierid` bigint(20) DEFAULT NULL,
  `status` varchar(500) DEFAULT 'PENDING',
  `receivedate` date DEFAULT NULL,
  `drno` varchar(300) DEFAULT NULL,
  `aprno` varchar(500) DEFAULT NULL,
  `aprid` bigint(20) DEFAULT NULL,
  `pono` varchar(500) DEFAULT NULL,
  `poid` bigint(20) DEFAULT NULL,
  `invoiceno` varchar(500) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`deliveryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `equipments_receiving` */

/*Table structure for table `equipments_receiving_items` */

DROP TABLE IF EXISTS `equipments_receiving_items`;

CREATE TABLE `equipments_receiving_items` (
  `deliveryitemsid` int(11) NOT NULL AUTO_INCREMENT,
  `deliveryid` varchar(500) DEFAULT NULL,
  `assetid` bigint(20) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unitprice` double(10,2) DEFAULT '0.00',
  `status` int(11) DEFAULT '0',
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`deliveryitemsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `equipments_receiving_items` */

/*Table structure for table `equipments_rre` */

DROP TABLE IF EXISTS `equipments_rre`;

CREATE TABLE `equipments_rre` (
  `rreid` bigint(20) NOT NULL AUTO_INCREMENT,
  `rreno` varchar(500) DEFAULT NULL,
  `rredate` date DEFAULT NULL,
  `rre_enduser` varchar(500) DEFAULT NULL,
  `rre_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rreid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `equipments_rre` */

/*Table structure for table `equipments_rre_items` */

DROP TABLE IF EXISTS `equipments_rre_items`;

CREATE TABLE `equipments_rre_items` (
  `rreitemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `rreid` bigint(20) DEFAULT NULL,
  `equipno` bigint(20) DEFAULT NULL,
  `assetid` bigint(20) DEFAULT NULL,
  `paricsno` varchar(500) DEFAULT NULL,
  `enduseroffice` varchar(500) DEFAULT NULL,
  `rre_remarks` text,
  PRIMARY KEY (`rreitemsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `equipments_rre_items` */

/*Table structure for table `inventory` */

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL AUTO_INCREMENT,
  `itemNo` int(11) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datereceived` date DEFAULT NULL,
  `drno` varchar(300) DEFAULT NULL,
  `aprno` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`inventoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `inventory` */

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `itemNo` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL DEFAULT 'Office Supply',
  `unit` varchar(20) NOT NULL DEFAULT 'PC',
  `unitCost` double(10,2) NOT NULL DEFAULT '0.00',
  `inventory_qty` int(11) DEFAULT '0',
  `supplierID` int(11) DEFAULT '0',
  `brand` varchar(200) DEFAULT 'NONE',
  `warehouseid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`itemNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `items` */

/*Table structure for table `items_buom` */

DROP TABLE IF EXISTS `items_buom`;

CREATE TABLE `items_buom` (
  `item_buom_id` int(11) NOT NULL AUTO_INCREMENT,
  `itemNo` int(11) DEFAULT NULL,
  `base_qty` int(11) DEFAULT NULL,
  `base_unit` varchar(50) DEFAULT NULL,
  `equiv_qty` int(11) DEFAULT NULL,
  `equiv_unit` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`item_buom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `items_buom` */

/*Table structure for table `items_buom_list` */

DROP TABLE IF EXISTS `items_buom_list`;

CREATE TABLE `items_buom_list` (
  `uomid` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(50) DEFAULT NULL,
  `unit_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uomid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `items_buom_list` */

/*Table structure for table `items_category` */

DROP TABLE IF EXISTS `items_category`;

CREATE TABLE `items_category` (
  `itemscategoryid` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`itemscategoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `items_category` */

/*Table structure for table `purchase_apr` */

DROP TABLE IF EXISTS `purchase_apr`;

CREATE TABLE `purchase_apr` (
  `aprid` bigint(20) NOT NULL AUTO_INCREMENT,
  `aprdate` date DEFAULT NULL,
  `aprno` varchar(500) DEFAULT NULL,
  `apritimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `addedby` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`aprid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase_apr` */

/*Table structure for table `purchase_apr_items` */

DROP TABLE IF EXISTS `purchase_apr_items`;

CREATE TABLE `purchase_apr_items` (
  `apritemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `aprid` bigint(20) DEFAULT NULL,
  `itemid` bigint(20) DEFAULT NULL,
  `description` text,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(300) DEFAULT NULL,
  `unitprice` double(10,2) DEFAULT NULL,
  `availability` varchar(300) DEFAULT 'NO',
  PRIMARY KEY (`apritemsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase_apr_items` */

/*Table structure for table `purchase_po` */

DROP TABLE IF EXISTS `purchase_po`;

CREATE TABLE `purchase_po` (
  `poid` bigint(20) NOT NULL AUTO_INCREMENT,
  `podate` date DEFAULT NULL,
  `pono` varchar(500) DEFAULT NULL,
  `prid` varchar(500) DEFAULT NULL,
  `prno` varchar(500) NOT NULL,
  `supplierid` varchar(500) DEFAULT NULL,
  `modeofprocurement` varchar(500) DEFAULT NULL,
  `placeofdelivery` varchar(500) DEFAULT NULL,
  `dateofdelivery` date DEFAULT NULL,
  `deliveryterm` varchar(500) DEFAULT NULL,
  `paymentterm` varchar(500) DEFAULT NULL,
  `addedby` bigint(20) DEFAULT NULL,
  `potimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amountinwords` text,
  PRIMARY KEY (`poid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase_po` */

/*Table structure for table `purchase_po_items` */

DROP TABLE IF EXISTS `purchase_po_items`;

CREATE TABLE `purchase_po_items` (
  `poitemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `poid` bigint(20) DEFAULT NULL,
  `itemid` bigint(20) DEFAULT NULL,
  `description` text,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(300) DEFAULT NULL,
  `unitprice` double(10,2) DEFAULT NULL,
  `availability` varchar(300) DEFAULT 'YES',
  PRIMARY KEY (`poitemsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase_po_items` */

/*Table structure for table `purchase_pr` */

DROP TABLE IF EXISTS `purchase_pr`;

CREATE TABLE `purchase_pr` (
  `prid` bigint(20) NOT NULL AUTO_INCREMENT,
  `prdate` date DEFAULT NULL,
  `aprno` varchar(500) DEFAULT NULL,
  `aprdate` date DEFAULT NULL,
  `prno` varchar(500) NOT NULL,
  `department` varchar(500) DEFAULT NULL,
  `section` varchar(500) DEFAULT NULL,
  `purpose` text,
  `addedby` bigint(20) DEFAULT NULL,
  `prtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `awardedsupplier` bigint(20) DEFAULT '0',
  `modeofprocurement` varchar(500) DEFAULT NULL,
  `awardreason` text,
  `requestedby` varchar(500) DEFAULT NULL,
  `prstatus` varchar(500) DEFAULT 'PENDING',
  PRIMARY KEY (`prid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase_pr` */

/*Table structure for table `purchase_pr_aoc` */

DROP TABLE IF EXISTS `purchase_pr_aoc`;

CREATE TABLE `purchase_pr_aoc` (
  `aocid` bigint(20) NOT NULL AUTO_INCREMENT,
  `prid` bigint(20) DEFAULT NULL,
  `pritemsid` bigint(20) DEFAULT NULL,
  `aocparticular` varchar(500) DEFAULT NULL,
  `supplierid` bigint(20) DEFAULT NULL,
  `unitprice` double(10,2) DEFAULT '0.00',
  PRIMARY KEY (`aocid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase_pr_aoc` */

/*Table structure for table `purchase_pr_items` */

DROP TABLE IF EXISTS `purchase_pr_items`;

CREATE TABLE `purchase_pr_items` (
  `pritemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `prid` bigint(20) DEFAULT NULL,
  `itemid` bigint(20) DEFAULT NULL,
  `description` text,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(300) DEFAULT NULL,
  `unitprice` double(10,2) DEFAULT NULL,
  `availability` varchar(300) DEFAULT 'NO',
  PRIMARY KEY (`pritemsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase_pr_items` */

/*Table structure for table `purchase_receiving` */

DROP TABLE IF EXISTS `purchase_receiving`;

CREATE TABLE `purchase_receiving` (
  `deliveryid` bigint(11) NOT NULL AUTO_INCREMENT,
  `supplierid` bigint(20) DEFAULT NULL,
  `status` varchar(500) DEFAULT 'PENDING',
  `receivedate` date DEFAULT NULL,
  `drno` varchar(300) DEFAULT NULL,
  `aprno` varchar(500) DEFAULT NULL,
  `aprid` bigint(20) DEFAULT NULL,
  `pono` varchar(500) DEFAULT NULL,
  `poid` bigint(20) DEFAULT NULL,
  `invoiceno` varchar(500) DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `warehouseid` bigint(20) DEFAULT NULL,
  `purpose` text,
  `prid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`deliveryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `purchase_receiving` */

/*Table structure for table `purchase_receiving_items` */

DROP TABLE IF EXISTS `purchase_receiving_items`;

CREATE TABLE `purchase_receiving_items` (
  `deliveryitemsid` int(11) NOT NULL AUTO_INCREMENT,
  `deliveryid` varchar(500) DEFAULT NULL,
  `drno` varchar(500) DEFAULT NULL,
  `itemNo` int(11) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unitcost` double(10,2) DEFAULT '0.00',
  `status` int(11) DEFAULT '0',
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datereceived` date DEFAULT NULL,
  `warehouseid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`deliveryitemsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `purchase_receiving_items` */

/*Table structure for table `requisition_details` */

DROP TABLE IF EXISTS `requisition_details`;

CREATE TABLE `requisition_details` (
  `reqid` bigint(20) NOT NULL AUTO_INCREMENT,
  `requisition_no` varchar(100) DEFAULT NULL,
  `requisition_date` date DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `logtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `requisition_status` varchar(100) NOT NULL DEFAULT 'NONE',
  `purpose` text,
  `warehouseid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`reqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `requisition_details` */

/*Table structure for table `requisition_items` */

DROP TABLE IF EXISTS `requisition_items`;

CREATE TABLE `requisition_items` (
  `reqitemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `reqid` bigint(20) DEFAULT NULL,
  `requisition_no` varchar(100) DEFAULT NULL,
  `itemno` bigint(20) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `update_status` int(11) DEFAULT '0',
  `time_stamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reqitemsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `requisition_items` */

/*Table structure for table `settings_article` */

DROP TABLE IF EXISTS `settings_article`;

CREATE TABLE `settings_article` (
  `articlename` varchar(300) NOT NULL,
  PRIMARY KEY (`articlename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `settings_article` */

insert  into `settings_article`(`articlename`) values ('Appliance'),('Cabinet'),('Chairs'),('Desktop'),('Laptop'),('Others'),('Printer'),('Tables');

/*Table structure for table `settings_classification` */

DROP TABLE IF EXISTS `settings_classification`;

CREATE TABLE `settings_classification` (
  `classification` varbinary(300) NOT NULL,
  PRIMARY KEY (`classification`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `settings_classification` */

insert  into `settings_classification`(`classification`) values ('Books'),('Communication Equipment'),('Expendable'),('Firefighting Equipment'),('Furniture and Fixtures'),('IT Equipment and Softwares'),('Medical and Dental Laboratory'),('Motor Vehicle'),('Office Building'),('Office Devices'),('Office Equipment'),('Other Machineries and Equipment'),('Others'),('Semi-expendable');

/*Table structure for table `settings_report` */

DROP TABLE IF EXISTS `settings_report`;

CREATE TABLE `settings_report` (
  `footerid` bigint(20) NOT NULL AUTO_INCREMENT,
  `reportmodule` varchar(500) DEFAULT NULL,
  `divposition` varchar(500) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`footerid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `settings_report` */

insert  into `settings_report`(`footerid`,`reportmodule`,`divposition`,`content`) values (1,'PAR','ISSUEDBY','<u><b>MYRELLE FAITH MINA</b></u><br>\nSignature over Printed Name of Supply and/or Property Custodian\n<br><br>\n<u>ES II/Supply Officer Designate</u><br>\nPosition/Office\n<br><br>'),(2,'APR','AGENCYNAME','<strong>COMMISSION ON HIGHER EDUCATION<br>HEDC BLDG., GOVT. CENTER, SEVILLA, SFLU<strong>'),(3,'APR','AGENCYACCOUNTCODE','F4723'),(4,'APR','PROCUREMENT','<span style=\"margin-left:10px;\">THE PROCUREMENT SERVICE<br></span>\r\n<span style=\"margin-left:35px;\">Dep\'t of Budget & Mgmt., Regional Office No. 1<br></span>\r\n<span style=\"margin-left:35px;\">City of San Fernando, La Union, 2500</span></span>'),(5,'APR','COLUMN1','_________________________<br>\r\nNYMPHA N. BUENIO<br>\r\nChief, Administrative Officer'),(6,'APR','COLUMN2','_________________________<br>\r\nKRIZZANE IÑIGO<br>\r\nAccountant II'),(7,'APR','COLUMN3','_________________________________<br>\r\nCHERRIE MELANIE A. DIEGO, Ed. D.<br>\r\nDirector IV'),(8,'PR','APPROVEDBY','CHERRIE MELANIE A. DIEGO, Ed. D.<br>\nDirector IV'),(9,'PR','SUBHEADER','Commission on Higer Education'),(10,'PR','CANVASSHEADER',' <p style=\"text-align:center;\">\r\n		Republic of the Philippines<br>\r\n		OFFICE OF THE PRESIDENT<br>\r\n		COMMISSION ON HIGHER EDUCATION<br>\r\n		REGION 1<br>\r\n		CITY OF SAN FERNANDO, LA UNION\r\n	</p>'),(11,'PR','CANVASSSIGNATURE','<strong>NYMPHA N. BUENIO</strong><br>\r\n	Chief, Administrative Officer'),(12,'PR','CANVASSSIGNATORIES','<table style=\"text-align:center;margin-left:100px;\">\r\n			<tr>\r\n				<td>NYMPHA N. BUENIO</td>\r\n				<td width=\"150\"></td>\r\n				<td>ANGELICA Q. DOLORES</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Chief Administrative Officer</td>\r\n				<td></td>\r\n				<td>Education Supervisor II</td>\r\n			</tr>\r\n			<tr>\r\n				<td><br><br></td>\r\n				\r\n			</tr>\r\n			<tr>\r\n				<td>CATHERINE C. CHAN</td>\r\n				<td width=\"150\"></td>\r\n				<td>MYRELLE FAITH D. MINA</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Education Supervisor II</td>\r\n				<td></td>\r\n				<td>ES II/Supply Officer Designate</td>\r\n			</tr>\r\n		</table>'),(13,'PR','HEADOFOFFICE','CHERRIE MELANIE A. DIEGO, Ed. D.\r\n	<br>\r\n	Director IV\r\n	<br>'),(14,'PO','SUBHEADER','Commission on Higer Education'),(15,'PO','POSIGNATURE','_________________________<br>\r\nNYMPHA N. BUENIO<br>\r\nChief, Administrative Officer'),(16,'PO','COLUMN1','_________________________<br>\r\n				NYMPHA N. BUENIO<br>\r\n				Chief Administrative Officer'),(17,'PO','COLUMN2','_________________________<br>\r\nKRIZANNE IÑIGO<br>\r\nAA III/ Accountant Designate'),(18,'RECEIVING','COLUMN1','<u>ANGELICA Q. DOLORES</u><br>\r\n	Inspection Officer/Inspection Committee'),(19,'RECEIVING','COLUMN2','<u>MYRELLE FAITH D. MINA</u><br>\r\n	Supply and/or Property Custodian'),(20,'PTR','COLUMN1','<b>PATRICIA B. LICUANAN</b><br>\r\nChairperson'),(21,'PTR','COLUMN2','<b>MARIA CHARINNA D. ZAFIRO</b><br>\r\nAdministrative Office V-GSD'),(22,'RRE','COLUMN1','<b>RTABIFRANCA / MCDZAFIRO</b>'),(23,'RRE','HEADER','<b>COMMISION ON HIGHER EDUCATION</b><br>\r\nRECEIPT OF RETURNED EQUIPMENT');

/*Table structure for table `suppliers` */

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `supplierID` bigint(20) NOT NULL AUTO_INCREMENT,
  `supName` varchar(300) NOT NULL,
  `address` varchar(300) DEFAULT 'NONE',
  `contactNo` text,
  `TIN` varchar(20) DEFAULT 'NONE',
  `products` varchar(300) DEFAULT NULL,
  `email` varchar(500) DEFAULT 'NONE',
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `suppliers` */

insert  into `suppliers`(`supplierID`,`supName`,`address`,`contactNo`,`TIN`,`products`,`email`) values (1,'Morning Star General Merchandise','Governor Ortigas, San Fernando, 2500 La Union, Philippine','+63 72 242 5115','NONE','NONE',NULL),(2,'National Bookstore','Manna Mall, Pagdaraoan Biday Road, San Fernando, La Union','NONE','NONE','NONE',NULL),(3,'PC 4 Me','San Fernando City La Union','607-2250/700-2249/09175005430/09199912205','NONE','NONE','diana@pc4me.com.ph'),(4,'SKM 2','Kenny Plaza, Quezon Ave, San Fernando City, La Union','(072)607-7775/607-1397','NONE','NONE',NULL),(5,'Insystech (Aquino Square)','Aquino Square, City of San Fernando La Union','','NONE',NULL,NULL),(6,'Sapphire Air-conditioning Center','Sevilla, San Fernando, La union','072-607-3348 / 607-4585 / 603-0229 / 09478928435','NONE','Aircon Maintenance',NULL),(7,'Azalea Residences','Baguio City','02-5794894/02-579-4890/074-442-8888	','NONE','Accomodation and Lease of Venue',NULL),(8,'Fort Ilocandia Hotel','Ilocos Norte','(6377) 670-9101/(6377) 670-9101','NONE','Accomodation and Lease of Venue','booking@fortilocandia.com.ph'),(9,'Hotel Elizabeth','Baguio City','0935-925-4213/0907-088-8568','NONE','Accomodation and Lease of Venue','salesaccount2.baguio@hotelelizabeth.com.ph'),(10,'B Hotel','Brgy. Laging Handa, Quezon City','990-5000/990-6000/02-7718383','NONE','Accomodation and Lease of Venue','iboto@thebhotelqc.com'),(11,'PhilCopy Corporation','Pagdalagan, City of San Fernando, La Union','072-8885102','NONE','Photocopying Machine','NONE'),(12,'Chowking','San Fernando City, La Union','072-242-4822/09108038348','NONE','Function room for seminars, meetings, birthdays','NONE'),(13,'Philippine Trade Training Center','Manila','02-834-1350	','NONE','Function rooms for seminars/conferences','facilities@pttc.gov.ph/www.pttc.gove.ph'),(14,'Hotel Ariana','Paringao, Bauang, La Union','705-0050/607-6788','NONE','Function rooms for seminars/conferences','NONE'),(15,'President Hotel','Lingayen, Pangasinan',NULL,'NONE','Function rooms for senubars.conferences','NONE'),(16,'CHIMES Enterprises','Parian, San Fernando City, La Union','Fax: 700-0443/09228845922','NONE','Office Furniture','NONE'),(17,'Apilado North Shutters and Construction','Quezon Avenue, Sevilla, San Fernando City, LU','242-3806/888-5108/09996789646','NONE','Roll-up doors and grills, metro plus doors, BFT Auto Gate Aluminum','NONE'),(18,'Godion Hotel','Vigan City, Ilocos Sur','077-674-0288/077-674-0998	','NONE','Function rooms for seminars/conferences','info@vigangordionhotel.com'),(19,'WindoBlinds','Marand, Bauang, LU','0917-802-9676/0998-861-9976','NONE','Window Blinds','NONE'),(20,'Savers Marketing','Sevilla, San Fernando, La Union','072-205-0163	','NONE','Office, School,Hub and Business Solution','NONE'),(21,'DBM-Procurement Service-PhilGEPS','NONE',NULL,'NONE',NULL,'NONE'),(22,'Inventory','CHED RO1','','','',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `usertype` varchar(10) NOT NULL DEFAULT 'staff',
  `status` varchar(1) NOT NULL,
  `linkeid` bigint(20) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`uid`,`username`,`password`,`name`,`usertype`,`status`,`linkeid`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','Admin','admin','1',0),(5,'lynnette','5f4dcc3b5aa765d61d8327deb882cf99','Lynnette','admin','1',0),(6,'elvin','e77b6b04e50421f5d6e122e2b1df7d39','Elvin Casem','staff','1',44);

/*Table structure for table `warehouse` */

DROP TABLE IF EXISTS `warehouse`;

CREATE TABLE `warehouse` (
  `warehouseid` bigint(20) NOT NULL AUTO_INCREMENT,
  `warehouse_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`warehouseid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `warehouse` */

insert  into `warehouse`(`warehouseid`,`warehouse_name`) values (1,'CHED Region 1'),(2,'CHED Kto12'),(3,'CHEDEA Coop');

/* Procedure structure for procedure `warehouse_balance` */

/*!50003 DROP PROCEDURE IF EXISTS  `warehouse_balance` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `warehouse_balance`(con int)
BEGIN
 SELECT warehouse_name, SUM(qty) as totalqty FROM purchase_receiving_items LEFT JOIN warehouse ON purchase_receiving_items.warehouseid = warehouse.warehouseid where itemNo = con;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
