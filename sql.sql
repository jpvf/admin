/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.27 : Database - zetta
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zetta` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `zetta`;

/*Table structure for table `content` */

DROP TABLE IF EXISTS `content`;

CREATE TABLE `content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `content` */

insert  into `content`(`id`,`name`,`slug`,`value`,`status`) values (1,'Company','company','Platform',1),(2,'Copyright','copyright','The BSD 3-Clause License - Copyright &copy; 2011-2012, Cartalyst LLC',1),(3,'Feature Block Develop','feature-block-develop','<h2>Develop</h2><p>Platform is Core light and built upon a strong PHP framework with great documentation and a fantastic community, Laravel.</p>',1),(4,'Feature Block Design','feature-block-design','<h2>Design</h2><p>Powerful theme system that utilizes the blade template engine giving front end developers a solid separation between logic and markup.</p>',1),(5,'Feature Block Extend','feature-block-extend','<h2>Extend</h2><p>You won’t find complex and tangled control structures; everything in Platform is an extension and completely modular.</p>',1);

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `iso_code_2` varchar(200) DEFAULT NULL,
  `iso_code_3` varchar(200) DEFAULT NULL,
  `iso_code_numeric_3` varchar(200) DEFAULT NULL,
  `region` varchar(200) DEFAULT NULL,
  `subregion` varchar(200) DEFAULT NULL,
  `currency` varchar(200) DEFAULT NULL,
  `cdh_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=latin1;

/*Data for the table `countries` */

insert  into `countries`(`id`,`name`,`slug`,`iso_code_2`,`iso_code_3`,`iso_code_numeric_3`,`region`,`subregion`,`currency`,`cdh_id`,`status`,`created_at`,`updated_at`) values (1,'Afghanistan','afghanistan','AF','AFG','004','Asia','Southern Asia','AFN',2,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(2,'Albania','albania','AL','ALB','008','Europe','Southern Europe','ALK',4,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(3,'Algeria','algeria','DZ','DZA','012','Africa','Northern Africa','DZD',5,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(4,'American Samoa','american-samoa','AS','ASM','016','Oceania','Polynesia','USD',6,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(5,'Andorra','andorra','AD','AND','020','Europe','Southern Europe','ADF',7,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(6,'Angola','angola','AO','AGO','024','Africa','Middle Africa','AOR',8,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(7,'Anguilla','anguilla','AI','AIA','660','Americas','Caribbean','XCD',9,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(8,'Antarctica','antarctica','AQ','ATA','010','','','-',10,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(9,'Antigua and Barbuda','antigua-and-barbuda','AG','ATG','028','Americas','Caribbean','XCD',11,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(10,'Argentina','argentina','AR','ARG','032','Americas','South America','ARA',12,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(11,'Armenia','armenia','AM','ARM','051','Asia','Western Asia','AMD',13,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(12,'Aruba','aruba','AW','ABW','533','Americas','Caribbean','AWG',14,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(13,'Australia','australia','AU','AUS','036','Oceania','Australia and New Zealand','AUD',15,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(14,'Austria','austria','AT','AUT','040','Europe','Western Europe','ATS',16,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(15,'Azerbaijan','azerbaijan','AZ','AZE','031','Asia','Western Asia','AZM',17,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(16,'Bahamas','bahamas','BS','BHS','044','Americas','Caribbean','BSD',18,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(17,'Bahrain','bahrain','BH','BHR','048','Asia','Western Asia','BHD',21,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(18,'Bangladesh','bangladesh','BD','BGD','050','Asia','Southern Asia','BDT',22,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(19,'Barbados','barbados','BB','BRB','052','Americas','Caribbean','BBD',23,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(20,'Belarus','belarus','BY','BLR','112','Europe','Eastern Europe','BYR',24,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(21,'Belgium','belgium','BE','BEL','056','Europe','Western Europe','BEC',25,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(22,'Belize','belize','BZ','BLZ','084','Americas','Central America','BZD',26,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(23,'Benin','benin','BJ','BEN','204','Africa','Western Africa','XOF',27,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(24,'Bermuda','bermuda','BM','BMU','060','Americas','Northern America','BMD',28,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(25,'Bhutan','bhutan','BT','BTN','064','Asia','Southern Asia','INR',29,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(26,'Bolivia, Plurinational State Of','bolivia-plurinational-state-of','BO','BOL','068','Americas','South America','BOP',30,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(27,'Bosnia and Herzegovina','bosnia-and-herzegovina','BA','BIH','070','Europe','Southern Europe','BAM',31,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(28,'Botswana','botswana','BW','BWA','072','Africa','Southern Africa','BWP',32,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(29,'Bouvet Island','bouvet-island','BV','BVT','074','','','NOK',33,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(30,'Brazil','brazil','BR','BRA','076','Americas','South America','BRC',34,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(31,'British Indian Ocean Territory','british-indian-ocean-territory','IO','IOT','086','Africa','Eastern Africa','USD',35,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(32,'Brunei Darussalam','brunei-darussalam','BN','BRN','096','Asia','South-Eastern Asia','BND',36,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(33,'Bulgaria','bulgaria','BG','BGR','100','Europe','Eastern Europe','BGN',37,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(34,'Burkina Faso','burkina-faso','BF','BFA','854','Africa','Western Africa','XOF',38,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(35,'Burundi','burundi','BI','BDI','108','Africa','Eastern Africa','BIF',39,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(36,'Cambodia','cambodia','KH','KHM','116','Asia','South-Eastern Asia','KHR',40,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(37,'Cameroon','cameroon','CM','CMR','120','Africa','Middle Africa','XAF',41,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(38,'Canada','canada','CA','CAN','124','Americas','Northern America','CAD',42,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(39,'Cape Verde','cape-verde','CV','CPV','132','Africa','Western Africa','CVE',43,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(40,'Cayman Islands','cayman-islands','KY','CYM','136','Americas','Caribbean','KYD',44,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(41,'Central African Republic','central-african-republic','CF','CAF','140','Africa','Middle Africa','XAF',45,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(42,'Chad','chad','TD','TCD','148','Africa','Middle Africa','XAF',46,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(43,'Chile','chile','CL','CHL','152','Americas','South America','CLP',47,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(44,'China','china','CN','CHN','156','Asia','Eastern Asia','CNX',48,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(45,'Christmas Island','christmas-island','CX','CXR','162','Oceania','Australia and New Zealand','AUD',49,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(46,'Cocos (Keeling) Islands','cocos-keeling-islands','CC','CCK','166','Oceania','Australia and New Zealand','AUD',50,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(47,'Colombia','colombia','CO','COL','170','Americas','South America','COP',51,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(48,'Comoros','comoros','KM','COM','174','Africa','Eastern Africa','KMF',52,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(49,'Congo','congo','CG','COG','178','Africa','Middle Africa','XAF',53,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(50,'Congo, The Democratic Republic Of The','congo-the-democratic-republic-of-the','CD','COD','180','Africa','Middle Africa','CDF',54,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(51,'Cook Islands','cook-islands','CK','COK','184','Oceania','Polynesia','NZD',55,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(52,'Costa Rica','costa-rica','CR','CRI','188','Americas','Central America','CRC',56,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(53,'Croatia','croatia','HR','HRV','191','Europe','Southern Europe','HRK',58,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(54,'Cuba','cuba','CU','CUB','192','Americas','Caribbean','CUP',59,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(55,'Cyprus','cyprus','CY','CYP','196','Asia','Western Asia','CYP',60,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(56,'Czech Republic','czech-republic','CZ','CZE','203','Europe','Eastern Europe','CZK',61,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(57,'Côte D\\\'Ivoire','cte-divoire','CI','CIV','384','Africa','Western Africa','XOF',57,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(58,'Denmark','denmark','DK','DNK','208','Europe','Northern Europe','DKK',62,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(59,'Djibouti','djibouti','DJ','DJI','262','Africa','Eastern Africa','DJF',63,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(60,'Dominica','dominica','DM','DMA','212','Americas','Caribbean','XCD',64,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(61,'Dominican Republic','dominican-republic','DO','DOM','214','Americas','Caribbean','DOP',65,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(62,'Ecuador','ecuador','EC','ECU','218','Americas','South America','ECS',66,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(63,'Egypt','egypt','EG','EGY','818','Africa','Northern Africa','EGP',67,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(64,'El Salvador','el-salvador','SV','SLV','222','Americas','Central America','SVC',68,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(65,'Equatorial Guinea','equatorial-guinea','GQ','GNQ','226','Africa','Middle Africa','XAF',69,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(66,'Eritrea','eritrea','ER','ERI','232','Africa','Eastern Africa','ERN',70,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(67,'Estonia','estonia','EE','EST','233','Europe','Northern Europe','EUR',71,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(68,'Ethiopia','ethiopia','ET','ETH','231','Africa','Eastern Africa','ETB',73,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(69,'Falkland Islands  (Malvinas)','falkland-islands-malvinas','FK','FLK','238','Americas','South America','FKP',74,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(70,'Faroe Islands','faroe-islands','FO','FRO','234','Europe','Northern Europe','DKK',75,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(71,'Fiji','fiji','FJ','FJI','242','Oceania','Melanesia','FJD',76,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(72,'Finland','finland','FI','FIN','246','Europe','Northern Europe','EUR',77,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(73,'France','france','FR','FRA','250','Europe','Western Europe','EUR',78,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(74,'French Guiana','french-guiana','GF','GUF','254','Americas','South America','EUR',80,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(75,'French Polynesia','french-polynesia','PF','PYF','258','Oceania','Polynesia','XPF',81,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(76,'French Southern Territories','french-southern-territories','TF','ATF','260','','','EUR',82,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(77,'Gabon','gabon','GA','GAB','266','Africa','Middle Africa','XAF',83,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(78,'Gambia','gambia','GM','GMB','270','Africa','Western Africa','GMD',84,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(79,'Georgia','georgia','GE','GEO','268','Asia','Western Asia','GEL',1,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(80,'Germany','germany','DE','DEU','276','Europe','Western Europe','DEM',85,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(81,'Ghana','ghana','GH','GHA','288','Africa','Western Africa','GHS',86,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(82,'Gibraltar','gibraltar','GI','GIB','292','Europe','Southern Europe','GIP',87,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(83,'Greece','greece','GR','GRC','300','Europe','Southern Europe','EUR',88,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(84,'Greenland','greenland','GL','GRL','304','Americas','Northern America','DKK',89,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(85,'Grenada','grenada','GD','GRD','308','Americas','Caribbean','XCD',90,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(86,'Guadeloupe','guadeloupe','GP','GLP','312','Americas','Caribbean','EUR',91,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(87,'Guam','guam','GU','GUM','316','Oceania','Micronesia','USD',92,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(88,'Guatemala','guatemala','GT','GTM','320','Americas','Central America','GTQ',93,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(89,'Guernsey','guernsey','GG','GGY','831','Europe','Northern Europe','GBP',94,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(90,'Guinea','guinea','GN','GIN','324','Africa','Western Africa','GNF',95,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(91,'Guinea-Bissau','guinea-bissau','GW','GNB','624','Africa','Western Africa','XOF',96,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(92,'Guyana','guyana','GY','GUY','328','Americas','South America','GYD',97,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(93,'Haiti','haiti','HT','HTI','332','Americas','Caribbean','HTG',98,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(94,'Heard Island and McDonald Islands','heard-island-and-mcdonald-islands','HM','HMD','334','','','AUD',99,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(95,'Holy See (Vatican City State)','holy-see-vatican-city-state','VA','VAT','336','Europe','Southern Europe','EUR',100,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(96,'Honduras','honduras','HN','HND','340','Americas','Central America','HNL',101,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(97,'Hong Kong','hong-kong','HK','HKG','344','Asia','Eastern Asia','HKD',102,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(98,'Hungary','hungary','HU','HUN','348','Europe','Eastern Europe','HUF',103,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(99,'Iceland','iceland','IS','ISL','352','Europe','Northern Europe','ISK',104,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(100,'India','india','IN','IND','356','Asia','Southern Asia','INR',105,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(101,'Indonesia','indonesia','ID','IDN','360','Asia','South-Eastern Asia','IDR',106,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(102,'Iran, Islamic Republic Of','iran-islamic-republic-of','IR','IRN','364','Asia','Southern Asia','IRR',107,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(103,'Iraq','iraq','IQ','IRQ','368','Asia','Western Asia','IQD',108,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(104,'Ireland','ireland','IE','IRL','372','Europe','Northern Europe','EUR',109,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(105,'Isle of Man','isle-of-man','IM','IMN','833','Europe','Northern Europe','GBP',110,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(106,'Israel','israel','IL','ISR','376','Asia','Western Asia','ILP',111,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(107,'Italy','italy','IT','ITA','380','Europe','Southern Europe','EUR',112,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(108,'Jamaica','jamaica','JM','JAM','388','Americas','Caribbean','JMD',113,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(109,'Japan','japan','JP','JPN','392','Asia','Eastern Asia','JPY',114,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(110,'Jersey','jersey','JE','JEY','832','Europe','Northern Europe','GBP',115,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(111,'Jordan','jordan','JO','JOR','400','Asia','Western Asia','JOD',116,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(112,'Kazakhstan','kazakhstan','KZ','KAZ','398','Asia','Central Asia','KZT',117,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(113,'Kenya','kenya','KE','KEN','404','Africa','Eastern Africa','KES',118,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(114,'Kiribati','kiribati','KI','KIR','296','Oceania','Micronesia','AUD',119,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(115,'Korea, Democratic People\\\'s Republic Of','korea-democratic-peoples-republic-of','KP','PRK','408','Asia','Eastern Asia','KPW',121,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(116,'Korea, Republic of','korea-republic-of','KR','KOR','410','Asia','Eastern Asia','KRW',120,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(117,'Kuwait','kuwait','KW','KWT','414','Asia','Western Asia','KWD',122,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(118,'Kyrgyzstan','kyrgyzstan','KG','KGZ','417','Asia','Central Asia','KGS',123,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(119,'Lao People\\\'s Democratic Republic','lao-peoples-democratic-republic','LA','LAO','418','Asia','South-Eastern Asia','LAK',124,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(120,'Latvia','latvia','LV','LVA','428','Europe','Northern Europe','LVL',125,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(121,'Lebanon','lebanon','LB','LBN','422','Asia','Western Asia','LBP',126,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(122,'Lesotho','lesotho','LS','LSO','426','Africa','Southern Africa','LSL',127,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(123,'Liberia','liberia','LR','LBR','430','Africa','Western Africa','LRD',128,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(124,'Libya','libya','LY','LBY','434','Africa','Northern Africa','LYD',129,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(125,'Liechtenstein','liechtenstein','LI','LIE','438','Europe','Western Europe','CHF',130,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(126,'Lithuania','lithuania','LT','LTU','440','Europe','Northern Europe','LTL',131,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(127,'Luxembourg','luxembourg','LU','LUX','442','Europe','Western Europe','EUR',132,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(128,'Macao','macao','MO','MAC','446','Asia','Eastern Asia','MOP',133,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(129,'Macedonia, the Former Yugoslav Republic Of','macedonia-the-former-yugoslav-republic-of','MK','MKD','807','Europe','Southern Europe','MKD',134,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(130,'Madagascar','madagascar','MG','MDG','450','Africa','Eastern Africa','MGA',135,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(131,'Malawi','malawi','MW','MWI','454','Africa','Eastern Africa','MWK',136,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(132,'Malaysia','malaysia','MY','MYS','458','Asia','South-Eastern Asia','MYR',137,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(133,'Maldives','maldives','MV','MDV','462','Asia','Southern Asia','MVQ',138,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(134,'Mali','mali','ML','MLI','466','Africa','Western Africa','XOF',139,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(135,'Malta','malta','MT','MLT','470','Europe','Southern Europe','EUR',140,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(136,'Marshall Islands','marshall-islands','MH','MHL','584','Oceania','Micronesia','USD',141,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(137,'Martinique','martinique','MQ','MTQ','474','Americas','Caribbean','EUR',142,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(138,'Mauritania','mauritania','MR','MRT','478','Africa','Western Africa','MRO',143,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(139,'Mauritius','mauritius','MU','MUS','480','Africa','Eastern Africa','MUR',144,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(140,'Mayotte','mayotte','YT','MYT','175','Africa','Eastern Africa','EUR',145,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(141,'Mexico','mexico','MX','MEX','484','Americas','Central America','MXP',146,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(142,'Micronesia, Federated States Of','micronesia-federated-states-of','FM','FSM','583','Oceania','Micronesia','USD',147,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(143,'Moldova, Republic of','moldova-republic-of','MD','MDA','498','Europe','Eastern Europe','MDL',148,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(144,'Monaco','monaco','MC','MCO','492','Europe','Western Europe','EUR',149,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(145,'Mongolia','mongolia','MN','MNG','496','Asia','Eastern Asia','MNT',150,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(146,'Montenegro','montenegro','ME','MNE','499','Europe','Southern Europe','EUR',151,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(147,'Montserrat','montserrat','MS','MSR','500','Americas','Caribbean','XCD',152,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(148,'Morocco','morocco','MA','MAR','504','Africa','Northern Africa','MAD',153,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(149,'Mozambique','mozambique','MZ','MOZ','508','Africa','Eastern Africa','MZM',154,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(150,'Myanmar','myanmar','MM','MMR','104','Asia','South-Eastern Asia','MMK',155,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(151,'Namibia','namibia','NA','NAM','516','Africa','Southern Africa','NAD',156,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(152,'Nauru','nauru','NR','NRU','520','Oceania','Micronesia','AUD',157,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(153,'Nepal','nepal','NP','NPL','524','Asia','Southern Asia','NPR',158,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(154,'Netherlands','netherlands','NL','NLD','528','Europe','Western Europe','EUR',159,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(155,'New Caledonia','new-caledonia','NC','NCL','540','Oceania','Melanesia','XPF',161,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(156,'New Zealand','new-zealand','NZ','NZL','554','Oceania','Australia and New Zealand','NZD',162,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(157,'Nicaragua','nicaragua','NI','NIC','558','Americas','Central America','NIO',163,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(158,'Niger','niger','NE','NER','562','Africa','Western Africa','XOF',164,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(159,'Nigeria','nigeria','NG','NGA','566','Africa','Western Africa','NGN',165,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(160,'Niue','niue','NU','NIU','570','Oceania','Polynesia','NZD',166,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(161,'Norfolk Island','norfolk-island','NF','NFK','574','Oceania','Australia and New Zealand','AUD',167,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(162,'Northern Mariana Islands','northern-mariana-islands','MP','MNP','580','Oceania','Micronesia','USD',168,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(163,'Norway','norway','NO','NOR','578','Europe','Northern Europe','NOK',169,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(164,'Oman','oman','OM','OMN','512','Asia','Western Asia','OMR',170,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(165,'Pakistan','pakistan','PK','PAK','586','Asia','Southern Asia','PKR',171,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(166,'Palau','palau','PW','PLW','585','Oceania','Micronesia','USD',172,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(167,'Palestinian Territory, Occupied','palestinian-territory-occupied','PS','PSE','275','Asia','Western Asia','-',173,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(168,'Panama','panama','PA','PAN','591','Americas','Central America','PAB',175,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(169,'Papua New Guinea','papua-new-guinea','PG','PNG','598','Oceania','Melanesia','PGK',176,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(170,'Paraguay','paraguay','PY','PRY','600','Americas','South America','PYG',177,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(171,'Peru','peru','PE','PER','604','Americas','South America','PEN',178,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(172,'Philippines','philippines','PH','PHL','608','Asia','South-Eastern Asia','PHP',180,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(173,'Pitcairn','pitcairn','PN','PCN','612','Oceania','Polynesia','NZD',182,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(174,'Poland','poland','PL','POL','616','Europe','Eastern Europe','PLZ',183,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(175,'Portugal','portugal','PT','PRT','620','Europe','Southern Europe','EUR',184,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(176,'Puerto Rico','puerto-rico','PR','PRI','630','Americas','Caribbean','USD',185,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(177,'Qatar','qatar','QA','QAT','634','Asia','Western Asia','QAR',186,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(178,'Romania','romania','RO','ROU','642','Europe','Eastern Europe','RON',189,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(179,'Russian Federation','russian-federation','RU','RUS','643','Europe','Eastern Europe','RUB',190,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(180,'Rwanda','rwanda','RW','RWA','646','Africa','Eastern Africa','RWF',191,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(181,'Réunion','runion','RE','REU','638','Africa','Eastern Africa','EUR',187,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(182,'Saint Barthélemy','saint-barthlemy','BL','BLM','652','Americas','Caribbean','EUR',300,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(183,'Saint Helena, Ascension and Tristan Da Cunha','saint-helena-ascension-and-tristan-da-cunha','SH','SHN','654','Africa','Western Africa','SHP',192,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(184,'Saint Kitts And Nevis','saint-kitts-and-nevis','KN','KNA','659','Americas','Caribbean','XCD',193,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(185,'Saint Lucia','saint-lucia','LC','LCA','662','Americas','Caribbean','XCD',194,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(186,'Saint Martin (French Part)','saint-martin-french-part','MF','MAF','663','Americas','Caribbean','EUR',301,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(187,'Saint Pierre And Miquelon','saint-pierre-and-miquelon','PM','SPM','666','Americas','Northern America','EUR',181,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(188,'Saint Vincent And The Grenadines','saint-vincent-and-the-grenadines','VC','VCT','670','Americas','Caribbean','XCD',195,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(189,'Samoa','samoa','WS','WSM','882','Oceania','Polynesia','WST',196,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(190,'San Marino','san-marino','SM','SMR','674','Europe','Southern Europe','EUR',197,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(191,'Sao Tome and Principe','sao-tome-and-principe','ST','STP','678','Africa','Middle Africa','STD',198,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(192,'Saudi Arabia','saudi-arabia','SA','SAU','682','Asia','Western Asia','SAR',199,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(193,'Senegal','senegal','SN','SEN','686','Africa','Western Africa','XOF',200,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(194,'Serbia','serbia','RS','SRB','688','Europe','Southern Europe','CSD',201,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(195,'Seychelles','seychelles','SC','SYC','690','Africa','Eastern Africa','SCR',202,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(196,'Sierra Leone','sierra-leone','SL','SLE','694','Africa','Western Africa','SLL',203,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(197,'Singapore','singapore','SG','SGP','702','Asia','South-Eastern Asia','SGD',205,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(198,'Sint Maarten (Dutch part)','sint-maarten-dutch-part','SX','SXM','534','','','ANG',702,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(199,'Slovakia','slovakia','SK','SVK','703','Europe','Eastern Europe','EUR',206,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(200,'Slovenia','slovenia','SI','SVN','705','Europe','Southern Europe','EUR',207,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(201,'Solomon Islands','solomon-islands','SB','SLB','090','Oceania','Melanesia','SBD',208,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(202,'Somalia','somalia','SO','SOM','706','Africa','Eastern Africa','SOS',209,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(203,'South Africa','south-africa','ZA','ZAF','710','Africa','Southern Africa','ZAR',210,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(204,'South Georgia and the South Sandwich Islands','south-georgia-and-the-south-sandwich-islands','GS','SGS','239','Americas','South America','-',211,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(205,'South Sudan','south-sudan','SS','SSD','728','','','SSP',703,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(206,'Spain','spain','ES','ESP','724','Europe','Southern Europe','EUR',212,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(207,'Sri Lanka','sri-lanka','LK','LKA','144','Asia','Southern Asia','LKR',213,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(208,'Sudan','sudan','SD','SDN','729','Africa','Northern Africa','SDD',214,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(209,'Suriname','suriname','SR','SUR','740','Americas','South America','SRD',215,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(210,'Svalbard And Jan Mayen','svalbard-and-jan-mayen','SJ','SJM','744','Europe','Northern Europe','NOK',216,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(211,'Swaziland','swaziland','SZ','SWZ','748','Africa','Southern Africa','SZL',217,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(212,'Sweden','sweden','SE','SWE','752','Europe','Northern Europe','SEK',218,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(213,'Switzerland','switzerland','CH','CHE','756','Europe','Western Europe','CHF',219,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(214,'Syrian Arab Republic','syrian-arab-republic','SY','SYR','760','Asia','Western Asia','SYP',220,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(215,'Taiwan, Province Of China','taiwan-province-of-china','TW','TWN','158','Asia','Eastern Asia','TWD',221,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(216,'Tajikistan','tajikistan','TJ','TJK','762','Asia','Central Asia','TJS',222,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(217,'Tanzania, United Republic of','tanzania-united-republic-of','TZ','TZA','834','Africa','Eastern Africa','TZS',223,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(218,'Thailand','thailand','TH','THA','764','Asia','South-Eastern Asia','THB',224,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(219,'Timor-Leste','timor-leste','TL','TLS','626','Asia','South-Eastern Asia','USD',226,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(220,'Togo','togo','TG','TGO','768','Africa','Western Africa','XOF',227,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(221,'Tokelau','tokelau','TK','TKL','772','Oceania','Polynesia','NZD',228,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(222,'Tonga','tonga','TO','TON','776','Oceania','Polynesia','TOP',229,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(223,'Trinidad and Tobago','trinidad-and-tobago','TT','TTO','780','Americas','Caribbean','TTD',230,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(224,'Tunisia','tunisia','TN','TUN','788','Africa','Northern Africa','TND',231,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(225,'Turkey','turkey','TR','TUR','792','Asia','Western Asia','TRY',232,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(226,'Turkmenistan','turkmenistan','TM','TKM','795','Asia','Central Asia','TMM',233,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(227,'Turks and Caicos Islands','turks-and-caicos-islands','TC','TCA','796','Americas','Caribbean','USD',234,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(228,'Tuvalu','tuvalu','TV','TUV','798','Oceania','Polynesia','AUD',235,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(229,'Uganda','uganda','UG','UGA','800','Africa','Eastern Africa','UGX',236,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(230,'Ukraine','ukraine','UA','UKR','804','Europe','Eastern Europe','UAH',237,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(231,'United Arab Emirates','united-arab-emirates','AE','ARE','784','Asia','Western Asia','AED',238,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(232,'United Kingdom','united-kingdom','GB','GBR','826','Europe','Northern Europe','GBP',239,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(233,'United States','united-states','US','USA','840','Americas','Northern America','USD',240,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(234,'United States Minor Outlying Islands','united-states-minor-outlying-islands','UM','UMI','581','Americas','Northern America','USD',241,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(235,'Uruguay','uruguay','UY','URY','858','Americas','South America','UYU',242,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(236,'Uzbekistan','uzbekistan','UZ','UZB','860','Asia','Central Asia','UZS',243,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(237,'Vanuatu','vanuatu','VU','VUT','548','Oceania','Melanesia','VUV',244,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(238,'Venezuela, Bolivarian Republic of','venezuela-bolivarian-republic-of','VE','VEN','862','Americas','South America','VEF',245,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(239,'Viet Nam','viet-nam','VN','VNM','704','Asia','South-Eastern Asia','VND',247,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(240,'Virgin Islands, British','virgin-islands-british','VG','VGB','092','Americas','Caribbean','USD',248,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(241,'Virgin Islands, U.S.','virgin-islands-us','VI','VIR','850','Americas','Caribbean','USD',249,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(242,'Wallis and Futuna','wallis-and-futuna','WF','WLF','876','Oceania','Polynesia','XPF',250,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(243,'Western Sahara','western-sahara','EH','ESH','732','Africa','Northern Africa','MAD',251,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(244,'Yemen','yemen','YE','YEM','887','Asia','Western Asia','YER',252,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(245,'Zambia','zambia','ZM','ZMB','894','Africa','Eastern Africa','ZMK',255,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(246,'Zimbabwe','zimbabwe','ZW','ZWE','716','Africa','Eastern Africa','ZWL',256,1,'2012-11-16 02:00:49','2012-11-16 02:00:49'),(247,'Åland Islands','land-islands','AX','ALA','248','Europe','Northern Europe','EUR',3,1,'2012-11-16 02:00:49','2012-11-16 02:00:49');

/*Table structure for table `currencies` */

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `code` varchar(5) NOT NULL,
  `sign` varchar(200) NOT NULL,
  `after_price` varchar(200) DEFAULT NULL,
  `ths_sign` varchar(1) DEFAULT NULL,
  `decimal_sign` varchar(1) DEFAULT NULL,
  `decimals` varchar(1) DEFAULT NULL,
  `rate` decimal(15,8) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `cdh_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `currencies` */

insert  into `currencies`(`id`,`name`,`slug`,`code`,`sign`,`after_price`,`ths_sign`,`decimal_sign`,`decimals`,`rate`,`status`,`cdh_id`,`created_at`,`updated_at`) values (1,'US Dollars','us-dollars','USD','$','',',','.','2','1.00000000',1,NULL,'2012-11-16 02:00:51','2012-11-16 02:00:51'),(2,'Euro','euro','EUR','€','',',','.','2','0.77831500',1,NULL,'2012-11-16 02:00:51','2012-11-16 02:00:51'),(3,'GB Pound','gb-pound','GBP','£','',',','.','2','0.62342800',1,NULL,'2012-11-16 02:00:51','2012-11-16 02:00:51');

/*Table structure for table `extensions` */

DROP TABLE IF EXISTS `extensions`;

CREATE TABLE `extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor` varchar(150) NOT NULL,
  `extension` varchar(150) NOT NULL,
  `version` varchar(10) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `extensions` */

insert  into `extensions`(`id`,`vendor`,`extension`,`version`,`enabled`) values (1,'platform','menus','1.1',1),(2,'platform','settings','1.1',1),(3,'platform','themes','1.1',1),(4,'platform','users','1.1',1),(5,'platform','dashboard','1.1',1),(6,'platform','developers','1.0',1),(7,'platform','extensions','1.1',1),(8,'platform','localisation','1.0.1',1),(9,'platform','pages','1.1.1',1);

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `groups` */

insert  into `groups`(`id`,`name`,`permissions`) values (1,'admin','{\"is_admin\":1}'),(2,'users','');

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `abbreviation` varchar(5) NOT NULL,
  `locale` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `languages` */

insert  into `languages`(`id`,`name`,`slug`,`abbreviation`,`locale`,`status`,`created_at`,`updated_at`) values (1,'English','english','en','English_United Kingdom.1252',1,'2012-11-16 02:00:50','2012-11-16 02:00:50'),(2,'Portuguese','portuguese','pt','Portuguese_Portugal.1252',1,'2012-11-16 02:00:50','2012-11-16 02:00:50');

/*Table structure for table `laravel_migrations` */

DROP TABLE IF EXISTS `laravel_migrations`;

CREATE TABLE `laravel_migrations` (
  `bundle` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`bundle`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `laravel_migrations` */

insert  into `laravel_migrations`(`bundle`,`name`,`batch`) values ('application','2012_08_25_012000_v1_1_0',1),('platform/dashboard','2012_05_18_004446_v1_0_0',6),('platform/dashboard','2012_09_08_105000_v1_0_1',6),('platform/dashboard','2012_11_02_194115_v1_1_0',6),('platform/developers','2012_10_31_113028_v1_0_0',7),('platform/extensions','2012_05_25_033145_v1_0_0',8),('platform/extensions','2012_09_08_105000_v1_0_1',8),('platform/extensions','2012_11_02_192900_v1_1_0',8),('platform/localisation','2012_09_30_165013_v1_0_0',9),('platform/localisation','2012_09_30_203051_countries_v1_0_0',9),('platform/localisation','2012_09_30_214825_languages_v1_0_0',9),('platform/localisation','2012_10_01_001525_currencies_v1_0_0',9),('platform/localisation','2012_10_01_030517_timezones_v1_0_0',9),('platform/localisation','2012_11_13_205115_currencies_v1_0_1',9),('platform/menus','2012_05_15_045038_v1_0_0',2),('platform/menus','2012_09_07_103640_v1_0_1',2),('platform/menus','2012_10_23_095005_v1_1_0',2),('platform/pages','2012_10_16_000000_v1_1_0',10),('platform/pages','2012_11_13_000000_v1_1_1',10),('platform/settings','2012_05_15_045038_v1_0_0',3),('platform/settings','2012_09_08_105000_v1_0_1',3),('platform/settings','2012_10_15_000000_v1_1_0',3),('platform/themes','2012_05_18_013010_v1_0_0',4),('platform/themes','2012_09_08_105000_v1_0_1',4),('platform/themes','2012_10_31_000000_v1_1_0',4),('platform/users','2012_05_30_000000_v1_0_0',5),('platform/users','2012_09_08_105000_v1_0_1',5),('platform/users','2012_10_32_000000_v1_1_0',5),('sentry','2012_08_03_162320_install',5),('sentry','2012_08_15_001334_database_rules',5),('sentry','2012_10_08_000000_users_nullable',5);

/*Table structure for table `menus` */

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(200) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `uri` varchar(200) DEFAULT NULL,
  `secure` tinyint(1) NOT NULL DEFAULT '0',
  `user_editable` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `class` varchar(200) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL DEFAULT '0',
  `visibility` int(11) NOT NULL DEFAULT '0',
  `page_id` int(10) unsigned DEFAULT NULL,
  `vendor` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `menus` */

insert  into `menus`(`id`,`extension`,`name`,`slug`,`uri`,`secure`,`user_editable`,`lft`,`rgt`,`menu_id`,`status`,`class`,`type`,`target`,`visibility`,`page_id`,`vendor`) values (1,NULL,'Admin','admin',NULL,0,0,1,42,1,1,NULL,0,0,0,NULL,'platform'),(2,'menus','System','admin-system','settings',0,0,18,41,1,1,'icon-cog',0,0,0,NULL,'platform'),(3,'menus','Menus','admin-menus','menus',0,0,16,17,1,1,'icon-th-list',0,0,0,NULL,'platform'),(4,NULL,'Main','main',NULL,0,0,1,12,2,1,NULL,0,0,0,NULL,'platform'),(5,'menus','Login','main-login','login',0,1,4,5,2,1,'icon-signin',0,0,2,NULL,'platform'),(6,'menus','Logout','main-logout','logout',0,1,6,7,2,1,'icon-signout',0,0,1,NULL,'platform'),(7,'menus','Register','main-register','register',0,1,8,9,2,1,'icon-pencil',0,0,2,NULL,'platform'),(8,'menus','Admin Dashboard','main-admin-dashboard','dashboard',0,1,10,11,2,1,'icon-cog',0,0,3,NULL,'platform'),(9,'settings','Settings','admin-settings','settings',0,0,19,20,1,1,'icon-cog',0,0,0,NULL,'platform'),(10,'themes','Themes','admin-themes','themes',0,0,23,28,1,1,'icon-eye-open',0,0,0,NULL,'platform'),(11,'themes','Frontend','admin-frontend','themes/frontend',0,0,24,25,1,1,'icon-eye-open',0,0,0,NULL,'platform'),(12,'themes','Backend','admin-backend','themes/backend',0,0,26,27,1,1,'icon-eye-open',0,0,0,NULL,'platform'),(13,'users','Users','admin-users','users',0,0,10,15,1,1,'icon-user',0,0,0,NULL,'platform'),(14,'users','Users','admin-users-list','users',0,0,11,12,1,1,'icon-user',0,0,0,NULL,'platform'),(15,'users','Groups','admin-groups-list','users/groups',0,0,13,14,1,1,'icon-group',0,0,0,NULL,'platform'),(16,'dashboard','Dashboard','admin-dashboard','dashboard',0,0,2,3,1,1,'icon-th',0,0,0,NULL,'platform'),(17,'developers','Developers','admin-developers','developers',0,0,37,40,1,1,'icon-github',0,0,0,NULL,'platform'),(18,'developers-creator','Extension Creator','admin-developers-creator','developers/creator',0,0,38,39,1,1,'icon-magic',0,0,0,NULL,'platform'),(19,'extensions','Extensions','admin-extensions','extensions',0,0,21,22,1,1,'icon-leaf',0,0,0,NULL,'platform'),(20,'localisation','Localisation','admin-localisation','localisation',0,0,29,36,1,1,'icon-plane',0,0,0,NULL,'platform'),(21,'countries','Countries','admin-countries','localisation/countries',0,0,30,31,1,1,'icon-flag',0,0,0,NULL,'platform'),(22,'languages','Languages','admin-languages','localisation/languages',0,0,32,33,1,1,'icon-bullhorn',0,0,0,NULL,'platform'),(23,'currencies','Currencies','admin-currencies','localisation/currencies',0,0,34,35,1,1,'icon-money',0,0,0,NULL,'platform'),(24,'pages','Pages','admin-pages','pages',0,0,4,9,1,1,'icon-file',0,0,0,NULL,'platform'),(25,'pages','Pages','admin-pages-pages','pages',0,0,5,6,1,1,'icon-file',0,0,0,NULL,'platform'),(26,'pages','Content','admin-pages-content','pages/content',0,0,7,8,1,1,'icon-briefcase',0,0,0,NULL,'platform'),(27,'menus','Home','main-home',NULL,0,1,2,3,2,1,'icon-home',1,0,0,1,'platform');

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `template` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `pages` */

insert  into `pages`(`id`,`name`,`slug`,`value`,`template`,`status`) values (1,'Home','home','<input type=\'hidden\'>','default',1);

/*Table structure for table `rules` */

DROP TABLE IF EXISTS `rules`;

CREATE TABLE `rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule` varchar(200) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rules_rule_unique` (`rule`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `rules` */

insert  into `rules`(`id`,`rule`,`description`) values (1,'superuser','Access to Everything'),(2,'is_admin','Administrative Privileges');

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor` varchar(200) NOT NULL,
  `extension` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `settings` */

insert  into `settings`(`id`,`vendor`,`extension`,`type`,`name`,`value`) values (1,'platform','settings','site','title','Platform'),(2,'platform','settings','site','tagline','A base application on Laravel'),(3,'platform','settings','filesystem','frontend_fallback_message','off'),(4,'platform','settings','filesystem','frontend_failed_message','off'),(5,'platform','settings','filesystem','backend_fallback_message','warning'),(6,'platform','settings','filesystem','backend_failed_message','warning'),(7,'platform','themes','theme','frontend','default'),(8,'platform','themes','theme','backend','default'),(9,'platform','users','status','disabled','0'),(10,'platform','users','status','enabled','1'),(11,'platform','localisation','site','date_format','%Y-%m-%d'),(12,'platform','localisation','site','time_format','%H:%M:%S'),(13,'platform','localisation','site','country','gb'),(14,'platform','localisation','site','language','en'),(15,'platform','localisation','site','language_locale','English_United Kingdom.1252'),(16,'platform','localisation','site','currency','USD'),(17,'platform','localisation','site','currency_auto_update',''),(18,'platform','localisation','site','currency_api_key',''),(19,'platform','localisation','site','timezone','Europe/London'),(20,'platform','pages','status','disabled','0'),(21,'platform','pages','status','enabled','1'),(22,'platform','pages','default','page','1'),(23,'platform','pages','default','template','default'),(24,'platform','settings','site','email','jpvelandia5@gmail.com');

/*Table structure for table `theme_options` */

DROP TABLE IF EXISTS `theme_options`;

CREATE TABLE `theme_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `theme` varchar(200) NOT NULL,
  `options` text,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `theme_options` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `password_reset_hash` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `remember_me` varchar(200) DEFAULT NULL,
  `ip_address` varchar(200) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `activated` varchar(200) NOT NULL,
  `permissions` text NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`email`,`password`,`password_reset_hash`,`name`,`remember_me`,`ip_address`,`status`,`activated`,`permissions`,`last_login`,`created_at`,`updated_at`,`active`) values (1,'admin','admin@zetta.com','$2a$08$h8dXbSouN3zgR8uOMIaR2eaOSXAC8wK4IgAemZsZDR1aN3hQ5E0we',NULL,'Admin Istrador',NULL,'::1','1','1','{\"superuser\":1}','2012-12-10 21:15:51','2012-11-16 02:00:52','2012-11-17 14:53:31',1),(2,'jpvelandia','jpvelandia5@gmail.com','$2a$08$cVkT4gJqd3Q5z90A79HAY./sxrkJuK5OJM5CL8fdLP6GvZZbAJq/2',NULL,'Juan Velandia',NULL,NULL,'','','','2012-12-10 22:35:32','2012-12-11 03:19:12','2012-12-11 03:35:32',1),(3,'Otro','otro@example.com','$2a$08$DYCPv4k.aHnvF9l.NFE/buXA.zBuPffJdgzD7r.5JQhvQEuhk25VK',NULL,'Otro',NULL,NULL,'','','','2012-12-10 22:20:24','2012-12-11 03:20:24','2012-12-11 03:20:24',1);

/*Table structure for table `users_groups` */

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_groups` */

insert  into `users_groups`(`user_id`,`group_id`) values (1,1),(1,2);

/*Table structure for table `users_metadata` */

DROP TABLE IF EXISTS `users_metadata`;

CREATE TABLE `users_metadata` (
  `user_id` int(10) unsigned NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_metadata` */

insert  into `users_metadata`(`user_id`,`first_name`,`last_name`) values (1,'Admin','Istrator');

/*Table structure for table `users_suspended` */

DROP TABLE IF EXISTS `users_suspended`;

CREATE TABLE `users_suspended` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_id` varchar(200) NOT NULL,
  `attempts` int(11) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `last_attempt_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `suspended_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unsuspend_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_suspended` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
