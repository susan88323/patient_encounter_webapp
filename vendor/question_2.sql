/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.5.28 : Database - interview
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`interview` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `interview`;

/*Table structure for table `encounters` */

DROP TABLE IF EXISTS `encounters`;

CREATE TABLE `encounters` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `visit_number` varchar(6) NOT NULL,
  `admitted_at` datetime NOT NULL,
  `discharged_at` datetime DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `room` int(5) DEFAULT NULL,
  `bed` int(5) DEFAULT NULL,
  `patient_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_encounters` (`patient_id`),
  CONSTRAINT `FK_encounters` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `encounters` */

insert  into `encounters`(`id`,`visit_number`,`admitted_at`,`discharged_at`,`location`,`room`,`bed`,`patient_id`) values (1,'VN0001','2014-09-22 04:00:00','2014-09-24 14:00:00','Fifth Ward',189,3,3),(2,'VN0002','2014-07-02 11:30:34','2014-07-08 16:34:00','ICU',133,2,3),(3,'VN0003','2015-03-22 06:00:00',NULL,'ER',3,5,3),(4,'VN0004','2014-08-01 18:24:22','2014-08-12 10:25:00','Fourth Ward',2323,3,4),(5,'VN0005','2014-07-23 13:34:00','2014-07-29 14:22:00','Third Ward',382,1,5),(6,'VN0006','2014-08-19 01:00:00','2014-08-23 08:30:00','Second Ward',2329,2,5),(7,'VN0007','2015-02-19 12:23:45',NULL,'ICU',2,6,4),(8,'VN0008','2014-07-04 23:59:00',NULL,NULL,NULL,NULL,6);

/*Table structure for table `patients` */

DROP TABLE IF EXISTS `patients`;

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `mrn` varchar(20) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `patients` */

insert  into `patients`(`patient_id`,`first_name`,`middle_name`,`last_name`,`weight`,`height`,`mrn`) values (3,'James','John','Smith',85,180,'THC123'),(4,'Sandy','Aria','Mits',55,145,'THC124'),(5,'Bently','Frank','Lee',90,178,'THC125'),(6,'Harry','Benson','Banner',25,120,'THC126');

/*Table structure for table `q1` */

DROP TABLE IF EXISTS `q1`;

CREATE TABLE `q1` (
  `patient_id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `mrn` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `q1` */

insert  into `q1`(`patient_id`,`first_name`,`middle_name`,`last_name`,`weight`,`height`,`mrn`) values (3,'James','John','Smith',85,180,'THC123'),(4,'Sandy','Aria','Mits',55,145,'THC124');

/*Table structure for table `q2` */

DROP TABLE IF EXISTS `q2`;

CREATE TABLE `q2` (
  `patient_id` int(11) NOT NULL DEFAULT '0',
  `mrn` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `q2` */

insert  into `q2`(`patient_id`,`mrn`,`first_name`,`middle_name`,`last_name`,`weight`,`height`) values (3,'THC123','James','John','Smith',85,180),(4,'THC124','Sandy','Aria','Mits',55,145),(5,'THC125','Bently','Frank','Lee',90,178);

/*Table structure for table `q3` */

DROP TABLE IF EXISTS `q3`;

CREATE TABLE `q3` (
  `patient_id` int(11) NOT NULL DEFAULT '0',
  `mrn` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `q3` */

insert  into `q3`(`patient_id`,`mrn`,`first_name`,`middle_name`,`last_name`,`weight`,`height`) values (4,'THC124','Sandy','Aria','Mits',55,145),(5,'THC125','Bently','Frank','Lee',90,178);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
