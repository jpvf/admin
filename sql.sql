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

/*Table structure for table `contents` */

DROP TABLE IF EXISTS `contents`;

CREATE TABLE `contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `background` varchar(200) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `contents` */

insert  into `contents`(`id`,`name`,`title`,`background`,`active`,`updated_at`,`created_at`) values (1,'Main','contenido_home.png','bg_home.jpg',1,'2012-12-12 05:51:58','2012-12-12 05:51:58'),(3,'2','btn_premiosoff.png','bg_ventajas.jpg',1,'2012-12-12 06:04:46','2012-12-12 06:04:46'),(5,'3','p6.png','byn.jpg',0,'2012-12-12 06:30:07','2012-12-12 06:13:01');

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

insert  into `users`(`id`,`username`,`email`,`password`,`password_reset_hash`,`name`,`remember_me`,`ip_address`,`status`,`activated`,`permissions`,`last_login`,`created_at`,`updated_at`,`active`) values (1,'admin','admin@zetta.com','$2a$08$h8dXbSouN3zgR8uOMIaR2eaOSXAC8wK4IgAemZsZDR1aN3hQ5E0we',NULL,'Admin Istrador',NULL,'::1','1','1','{\"superuser\":1}','2012-12-10 21:15:51','2012-11-16 02:00:52','2012-11-17 14:53:31',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
