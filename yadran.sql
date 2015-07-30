# MySQL-Front 3.2  (Build 7.5)
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'latin1' */;


# Host: localhost    Database: yadran
# ------------------------------------------------------
# Server version 5.1.54-community

USE `yadran`;


/*!40101 SET NAMES utf8 */;

#
# Table structure for table approval_conditions
#

DROP TABLE IF EXISTS `approval_conditions`;
CREATE TABLE `approval_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approval_condition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table approval_conditions
#
INSERT INTO `approval_conditions` VALUES (1,'without a prescription');
INSERT INTO `approval_conditions` VALUES (2,'on prescription');


#
# Table structure for table changes
#

DROP TABLE IF EXISTS `changes`;
CREATE TABLE `changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `changes_box` varchar(100) DEFAULT NULL,
  `changes_old` varchar(255) DEFAULT NULL,
  `changes_new` varchar(255) DEFAULT NULL,
  `changes_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table changes
#


#
# Table structure for table companies
#

DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Dumping data for table companies
#
INSERT INTO `companies` VALUES (1,'-',NULL);


#
# Table structure for table countries
#

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Dumping data for table countries
#
INSERT INTO `countries` VALUES (1,'Russia');
INSERT INTO `countries` VALUES (2,'Ukraine');
INSERT INTO `countries` VALUES (3,'Kazakhstan');
INSERT INTO `countries` VALUES (4,'Belarus');
INSERT INTO `countries` VALUES (5,'Armenia');
INSERT INTO `countries` VALUES (6,'Azerbaijan');
INSERT INTO `countries` VALUES (7,'Georgia');
INSERT INTO `countries` VALUES (8,'Moldova');
INSERT INTO `countries` VALUES (9,'Turkmenistan');
INSERT INTO `countries` VALUES (10,'Tajikistan');
INSERT INTO `countries` VALUES (11,'Mongolia');
INSERT INTO `countries` VALUES (12,'Kirgizia');
INSERT INTO `countries` VALUES (13,'Croatia');


#
# Table structure for table dosages
#

DROP TABLE IF EXISTS `dosages`;
CREATE TABLE `dosages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dosage` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Dumping data for table dosages
#
INSERT INTO `dosages` VALUES (1,'mg');
INSERT INTO `dosages` VALUES (2,'ml');
INSERT INTO `dosages` VALUES (3,'g');


#
# Table structure for table files
#

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `add_date` int(11) DEFAULT NULL,
  `discription` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table files
#


#
# Table structure for table international_nonproprietary_names
#

DROP TABLE IF EXISTS `international_nonproprietary_names`;
CREATE TABLE `international_nonproprietary_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `international_nonproprietary_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Dumping data for table international_nonproprietary_names
#
INSERT INTO `international_nonproprietary_names` VALUES (1,'-');


#
# Table structure for table pharmaceutical_forms
#

DROP TABLE IF EXISTS `pharmaceutical_forms`;
CREATE TABLE `pharmaceutical_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pharmaceutical_form` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Dumping data for table pharmaceutical_forms
#
INSERT INTO `pharmaceutical_forms` VALUES (1,'tablets');
INSERT INTO `pharmaceutical_forms` VALUES (2,'lozenges');
INSERT INTO `pharmaceutical_forms` VALUES (3,'nasal spray');
INSERT INTO `pharmaceutical_forms` VALUES (4,'nasal drops');
INSERT INTO `pharmaceutical_forms` VALUES (5,'srpay for topical use');
INSERT INTO `pharmaceutical_forms` VALUES (6,'sirupus');
INSERT INTO `pharmaceutical_forms` VALUES (7,'ointment');
INSERT INTO `pharmaceutical_forms` VALUES (8,'cream');
INSERT INTO `pharmaceutical_forms` VALUES (9,'drops');
INSERT INTO `pharmaceutical_forms` VALUES (10,'soap');
INSERT INTO `pharmaceutical_forms` VALUES (11,'gel');
INSERT INTO `pharmaceutical_forms` VALUES (12,'spray');


#
# Table structure for table product_statuses
#

DROP TABLE IF EXISTS `product_statuses`;
CREATE TABLE `product_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Dumping data for table product_statuses
#
INSERT INTO `product_statuses` VALUES (1,'medicine');
INSERT INTO `product_statuses` VALUES (2,'BAA');
INSERT INTO `product_statuses` VALUES (3,'medical device');
INSERT INTO `product_statuses` VALUES (4,'cosmetics');
INSERT INTO `product_statuses` VALUES (5,'food suplement');


#
# Table structure for table products
#

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `international_nonproprietary_name_id` int(11) DEFAULT NULL,
  `active_ingredient` text,
  `quantity_ai` int(11) DEFAULT NULL,
  `dosage_id` int(11) DEFAULT NULL,
  `composition` text,
  `status_id` int(11) DEFAULT NULL,
  `pharmaceutical_form_id` int(11) DEFAULT NULL,
  `packaging` varchar(255) DEFAULT NULL,
  `shelf_life_id` int(11) DEFAULT NULL,
  `storage_condition_id` int(11) DEFAULT NULL,
  `approval_condition_id` int(11) DEFAULT NULL,
  `registration_certificate_id` int(11) DEFAULT NULL,
  `registration_stage_id` int(11) DEFAULT NULL,
  `registration_stage_date` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `comment` text,
  `manufacturer` int(11) DEFAULT NULL,
  `manufacturer_primary` int(11) DEFAULT NULL,
  `manufacturer_secondary` int(11) DEFAULT NULL,
  `quality_control` int(11) DEFAULT NULL,
  `marketing_authorisation_holder` int(11) DEFAULT NULL,
  `type_of_process` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table products
#


#
# Table structure for table registration_certificates
#

DROP TABLE IF EXISTS `registration_certificates`;
CREATE TABLE `registration_certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_certificate_number` varchar(255) DEFAULT NULL,
  `registration_certificate_date` int(11) DEFAULT NULL,
  `parent_registration_certificate` int(11) DEFAULT NULL,
  `period_of_validity` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `unlimited_validity` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Dumping data for table registration_certificates
#
INSERT INTO `registration_certificates` VALUES (1,'-',NULL,NULL,NULL,NULL,0);


#
# Table structure for table registration_stages
#

DROP TABLE IF EXISTS `registration_stages`;
CREATE TABLE `registration_stages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_stage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

#
# Dumping data for table registration_stages
#
INSERT INTO `registration_stages` VALUES (1,'Dossier was obtained');
INSERT INTO `registration_stages` VALUES (2,'Dossier is being translated');
INSERT INTO `registration_stages` VALUES (3,'Documents are being prepared for registration');
INSERT INTO `registration_stages` VALUES (4,'Application was submitted for registration');
INSERT INTO `registration_stages` VALUES (5,'Documents were submitted for registration');
INSERT INTO `registration_stages` VALUES (6,'Initial examination of documents');
INSERT INTO `registration_stages` VALUES (7,'Examination of documents');
INSERT INTO `registration_stages` VALUES (8,'Technical and toxicological trials');
INSERT INTO `registration_stages` VALUES (9,'Clinical trials');
INSERT INTO `registration_stages` VALUES (10,'Evaluation of clinical trials results');
INSERT INTO `registration_stages` VALUES (11,'Pharm examination');
INSERT INTO `registration_stages` VALUES (12,'Approval of Normative Document');
INSERT INTO `registration_stages` VALUES (13,'Approval  of leaflet');
INSERT INTO `registration_stages` VALUES (14,'Experts committee');
INSERT INTO `registration_stages` VALUES (15,'Final stage of registration');
INSERT INTO `registration_stages` VALUES (16,'Order under signature');
INSERT INTO `registration_stages` VALUES (17,'Registration Certificate was obtained');
INSERT INTO `registration_stages` VALUES (18,'Preparation of package material');
INSERT INTO `registration_stages` VALUES (19,'Product registered');


#
# Table structure for table roles
#

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table roles
#
INSERT INTO `roles` VALUES (1,'login','Login privileges, granted after account confirmation');
INSERT INTO `roles` VALUES (2,'admin','Administrative user, has access to everything.');


#
# Table structure for table roles_users
#

DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table roles_users
#
INSERT INTO `roles_users` VALUES (1,1);
INSERT INTO `roles_users` VALUES (1,2);
INSERT INTO `roles_users` VALUES (2,1);
INSERT INTO `roles_users` VALUES (2,2);
INSERT INTO `roles_users` VALUES (3,1);


#
# Table structure for table shelf_lifes
#

DROP TABLE IF EXISTS `shelf_lifes`;
CREATE TABLE `shelf_lifes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shelf_life` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Dumping data for table shelf_lifes
#
INSERT INTO `shelf_lifes` VALUES (1,'1 years');
INSERT INTO `shelf_lifes` VALUES (2,'2 years');
INSERT INTO `shelf_lifes` VALUES (3,'3 years');
INSERT INTO `shelf_lifes` VALUES (4,'4 years');
INSERT INTO `shelf_lifes` VALUES (5,'5 years');


#
# Table structure for table storage_conditions
#

DROP TABLE IF EXISTS `storage_conditions`;
CREATE TABLE `storage_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_condition` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Dumping data for table storage_conditions
#
INSERT INTO `storage_conditions` VALUES (1,'At temperature not more than 25° C');
INSERT INTO `storage_conditions` VALUES (2,'from 2 to 8° C');
INSERT INTO `storage_conditions` VALUES (3,'from 0 to 10° C');


#
# Table structure for table user_tokens
#

DROP TABLE IF EXISTS `user_tokens`;
CREATE TABLE `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `fk_user_id` (`user_id`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table user_tokens
#


#
# Table structure for table users
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(10) unsigned DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Dumping data for table users
#
INSERT INTO `users` VALUES (1,'Egor Isaev','mikrit@ai-tech.ru','mikrit','496259cb6b4d9f3d3eaaf530c8534b847acf4c15ff8c56c0f319a3e0211814ac',24,1408947923,1,'Main admin');
INSERT INTO `users` VALUES (2,'Тест','test@test.ru','test','18c7a796f76b61d396800f649243f7a58ed370154a3b39af52c48a819d0f0040',15,1408947883,13,'test 1');
INSERT INTO `users` VALUES (3,'Тест2','test2@test.ru','test2','18c7a796f76b61d396800f649243f7a58ed370154a3b39af52c48a819d0f0040',5,1408947828,1,'test 2');


#
#  Foreign keys for table roles_users
#

ALTER TABLE `roles_users`
  ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

#
#  Foreign keys for table user_tokens
#

ALTER TABLE `user_tokens`
  ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
/*!40101 SET NAMES latin1 */;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
