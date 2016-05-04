/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.5.24 : Database - ever_offer_in
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ever_offer_in` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ever_offer_in`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_first` varchar(250) DEFAULT NULL,
  `address_second` varchar(250) DEFAULT NULL,
  `address_third` varchar(250) DEFAULT NULL,
  `contact_no` varchar(25) DEFAULT NULL,
  `contact_email` varchar(55) DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `contact_url` varchar(55) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `updated_date` varchar(55) DEFAULT NULL,
  `letitude` varchar(55) DEFAULT NULL,
  `longitude` varchar(55) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_address` (`city_id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`),
  CONSTRAINT `FK_address` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `address` */

insert  into `address`(`id`,`address_first`,`address_second`,`address_third`,`contact_no`,`contact_email`,`pin_code`,`contact_url`,`city_id`,`created_date`,`updated_date`,`letitude`,`longitude`,`state_id`) values (1,'Tilak nagar, indore','','','9685538949','vjmali121@gmail.com',452001,'',330,NULL,NULL,'22.7195665','75.8955113',18),(2,'Indore ','','','9685538949','aj@gmail.com',452001,'',330,NULL,NULL,'22.7081955','75.8824422',18);

/*Table structure for table `advertisement` */

DROP TABLE IF EXISTS `advertisement`;

CREATE TABLE `advertisement` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL,
  `city_id` int(55) DEFAULT NULL,
  `letitude` varchar(55) DEFAULT NULL,
  `longitude` varchar(55) DEFAULT NULL,
  `created_date` varchar(30) DEFAULT NULL,
  `updated_date` varchar(30) DEFAULT NULL,
  `isApproved` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `advertisement` */

insert  into `advertisement`(`id`,`name`,`image`,`city_id`,`letitude`,`longitude`,`created_date`,`updated_date`,`isApproved`) values (1,'vijay','6 - 1.jpg',517,'27.1766701','78.0080745','2016-01-15 13:58:35','2016-01-15 13:58:35',0),(2,'rahul','\'{p\'po;.jpg',330,'22.7195687','75.8577258','2016-01-15 14:03:58','2016-01-15 14:03:58',0),(3,'sandeep','10.11.15 - 1.jpg',323,'22.9622672','76.0507949','2016-01-15 14:59:10','2016-01-15 14:59:10',0),(4,'dada','',125,'23.0225050','72.5713621','2016-01-15 15:09:38','2016-01-15 15:09:38',0),(5,'dsf','',504,'29.5892407','79.6466660','2016-01-15 15:47:54','2016-01-15 15:47:54',0),(6,'raj','2015 - 1.jpg',324,'22.6012922','75.3024655','2016-01-15 16:21:07','2016-01-15 16:21:07',0),(7,'fsfsd','6 - 1.jpg',310,'22.3059709','74.3558148','2016-01-30 12:30:58','2016-01-30 12:30:58',0);

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(55) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_date` varchar(25) DEFAULT NULL,
  `updated_date` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_city` (`state_id`),
  CONSTRAINT `FK_city` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=latin1;

/*Data for the table `city` */

insert  into `city`(`id`,`city_name`,`state_id`,`created_date`,`updated_date`) values (1,'Adilabad',1,NULL,NULL),(2,'Anantapur',1,NULL,NULL),(3,'Chittoor',1,NULL,NULL),(4,'East Godavari',1,NULL,NULL),(5,'Guntur',1,NULL,NULL),(6,'Hyderabad',1,NULL,NULL),(7,'Kadapa',1,NULL,NULL),(8,'Karimnagar',1,NULL,NULL),(9,'Khammam',1,NULL,NULL),(10,'Krishna',1,NULL,NULL),(11,'Kurnool',1,NULL,NULL),(12,'Mahbubnagar',1,NULL,NULL),(13,'Medak',1,NULL,NULL),(14,'Nalgonda',1,NULL,NULL),(15,'Nellore',1,NULL,NULL),(16,'Nizamabad',1,NULL,NULL),(17,'Prakasam',1,NULL,NULL),(18,'Rangareddi',1,NULL,NULL),(19,'Srikakulam',1,NULL,NULL),(20,'Vishakhapatnam',1,NULL,NULL),(21,'Vizianagaram',1,NULL,NULL),(22,'Warangal',1,NULL,NULL),(23,'West Godavari',1,NULL,NULL),(24,'Anjaw',2,NULL,NULL),(25,'Changlang',2,NULL,NULL),(26,'East Kameng',2,NULL,NULL),(27,'Lohit',2,NULL,NULL),(28,'Lower Subansiri',2,NULL,NULL),(29,'Papum Pare',2,NULL,NULL),(30,'Tirap',2,NULL,NULL),(31,'Dibang Valley',2,NULL,NULL),(32,'Upper Subansiri',2,NULL,NULL),(33,'West Kameng',2,NULL,NULL),(34,'Barpeta',3,NULL,NULL),(35,'Bongaigaon',3,NULL,NULL),(36,'Cachar',3,NULL,NULL),(37,'Darrang',3,NULL,NULL),(38,'Dhemaji',3,NULL,NULL),(39,'Dhubri',3,NULL,NULL),(40,'Dibrugarh',3,NULL,NULL),(41,'Goalpara',3,NULL,NULL),(42,'Golaghat',3,NULL,NULL),(43,'Hailakandi',3,NULL,NULL),(44,'Jorhat',3,NULL,NULL),(45,'Karbi Anglong',3,NULL,NULL),(46,'Karimganj',3,NULL,NULL),(47,'Kokrajhar',3,NULL,NULL),(48,'Lakhimpur',3,NULL,NULL),(49,'Marigaon',3,NULL,NULL),(50,'Nagaon',3,NULL,NULL),(51,'Nalbari',3,NULL,NULL),(52,'North Cachar Hills',3,NULL,NULL),(53,'Sibsagar',3,NULL,NULL),(54,'Sonitpur',3,NULL,NULL),(55,'Tinsukia',3,NULL,NULL),(56,'Araria',4,NULL,NULL),(57,'Aurangabad',4,NULL,NULL),(58,'Banka',4,NULL,NULL),(59,'Begusarai',4,NULL,NULL),(60,'Bhagalpur',4,NULL,NULL),(61,'Bhojpur',4,NULL,NULL),(62,'Buxar',4,NULL,NULL),(63,'Darbhanga',4,NULL,NULL),(64,'Purba Champaran',4,NULL,NULL),(65,'Gaya',4,NULL,NULL),(66,'Gopalganj',4,NULL,NULL),(67,'Jamui',4,NULL,NULL),(68,'Jehanabad',4,NULL,NULL),(69,'Khagaria',4,NULL,NULL),(70,'Kishanganj',4,NULL,NULL),(71,'Kaimur',4,NULL,NULL),(72,'Katihar',4,NULL,NULL),(73,'Lakhisarai',4,NULL,NULL),(74,'Madhubani',4,NULL,NULL),(75,'Munger',4,NULL,NULL),(76,'Madhepura',4,NULL,NULL),(77,'Muzaffarpur',4,NULL,NULL),(78,'Nalanda',4,NULL,NULL),(79,'Nawada',4,NULL,NULL),(80,'Patna',4,NULL,NULL),(81,'Purnia',4,NULL,NULL),(82,'Rohtas',4,NULL,NULL),(83,'Saharsa',4,NULL,NULL),(84,'Samastipur',4,NULL,NULL),(85,'Sheohar',4,NULL,NULL),(86,'Sheikhpura',4,NULL,NULL),(87,'Saran',4,NULL,NULL),(88,'Sitamarhi',4,NULL,NULL),(89,'Supaul',4,NULL,NULL),(90,'Siwan',4,NULL,NULL),(91,'Vaishali',4,NULL,NULL),(92,'Pashchim Champaran',4,NULL,NULL),(93,'Bastar',5,NULL,NULL),(94,'Bilaspur',5,NULL,NULL),(95,'Dantewada',5,NULL,NULL),(96,'Dhamtari',5,NULL,NULL),(97,'Durg',5,NULL,NULL),(98,'Jashpur',5,NULL,NULL),(99,'Janjgir-Champa',5,NULL,NULL),(100,'Korba',5,NULL,NULL),(101,'Koriya',5,NULL,NULL),(102,'Kanker',5,NULL,NULL),(103,'Kawardha',5,NULL,NULL),(104,'Mahasamund',5,NULL,NULL),(105,'Raigarh',5,NULL,NULL),(106,'Rajnandgaon',5,NULL,NULL),(107,'Raipur',5,NULL,NULL),(108,'Surguja',5,NULL,NULL),(109,'Central Delhi',6,NULL,NULL),(110,'East Delhi',6,NULL,NULL),(111,'New Delhi',6,NULL,NULL),(112,'North Delhi',6,NULL,NULL),(113,'North East Delhi',6,NULL,NULL),(114,'North West Delhi',6,NULL,NULL),(115,'South Delhi',6,NULL,NULL),(116,'South West Delhi',6,NULL,NULL),(117,'West Delhi',6,NULL,NULL),(118,'Panaji',7,NULL,NULL),(119,'Margao',7,NULL,NULL),(120,'Mapusa',7,NULL,NULL),(121,'Ponda',7,NULL,NULL),(122,'Canacona',7,NULL,NULL),(123,'Mormugao',7,NULL,NULL),(124,'Vasco-da-Gama',7,NULL,NULL),(125,'Ahmedabad',8,NULL,NULL),(126,'Amreli District',8,NULL,NULL),(127,'Anand',8,NULL,NULL),(128,'Banaskantha',8,NULL,NULL),(129,'Bharuch',8,NULL,NULL),(130,'Bhavnagar',8,NULL,NULL),(131,'Dahod',8,NULL,NULL),(132,'The Dangs',8,NULL,NULL),(133,'Gandhinagar',8,NULL,NULL),(134,'Jamnagar',8,NULL,NULL),(135,'Junagadh',8,NULL,NULL),(136,'Kutch',8,NULL,NULL),(137,'Kheda',8,NULL,NULL),(138,'Mehsana',8,NULL,NULL),(139,'Narmada',8,NULL,NULL),(140,'Navsari',8,NULL,NULL),(141,'Patan',8,NULL,NULL),(142,'Panchmahal',8,NULL,NULL),(143,'Porbandar',8,NULL,NULL),(144,'Rajkot',8,NULL,NULL),(145,'Sabarkantha',8,NULL,NULL),(146,'Surendranagar',8,NULL,NULL),(147,'Surat',8,NULL,NULL),(148,'Vadodara',8,NULL,NULL),(149,'Valsad',8,NULL,NULL),(150,'Bilaspur',9,NULL,NULL),(151,'Chamba',9,NULL,NULL),(152,'Hamirpur',9,NULL,NULL),(153,'Kangra',9,NULL,NULL),(154,'Kinnaur',9,NULL,NULL),(155,'Kulu',9,NULL,NULL),(156,'Lahaul and Spiti',9,NULL,NULL),(157,'Mandi',9,NULL,NULL),(158,'Shimla',9,NULL,NULL),(159,'Sirmaur',9,NULL,NULL),(160,'Solan',9,NULL,NULL),(161,'Una',9,NULL,NULL),(162,'Bhiwani',10,NULL,NULL),(163,'Faridabad',10,NULL,NULL),(164,'Fatehabad',10,NULL,NULL),(165,'Gurgaon',10,NULL,NULL),(166,'Hissar',10,NULL,NULL),(167,'Jhajjar',10,NULL,NULL),(168,'Jind',10,NULL,NULL),(169,'Karnal',10,NULL,NULL),(170,'Kaithal',10,NULL,NULL),(171,'Kurukshetra',10,NULL,NULL),(172,'Mahendragarh',10,NULL,NULL),(173,'Mewat',10,NULL,NULL),(174,'Panchkula',10,NULL,NULL),(175,'Panipat',10,NULL,NULL),(176,'Rewari',10,NULL,NULL),(177,'Rohtak',10,NULL,NULL),(178,'Sirsa',10,NULL,NULL),(179,'Sonepat',10,NULL,NULL),(180,'Yamuna Nagar',10,NULL,NULL),(181,'Palwal',10,NULL,NULL),(182,'Anantnag',11,NULL,NULL),(183,'Badgam',11,NULL,NULL),(184,'Bandipore',11,NULL,NULL),(185,'Baramula',11,NULL,NULL),(186,'Doda',11,NULL,NULL),(187,'Jammu',11,NULL,NULL),(188,'Kargil',11,NULL,NULL),(189,'Kathua',11,NULL,NULL),(190,'Kupwara',11,NULL,NULL),(191,'Leh',11,NULL,NULL),(192,'Poonch',11,NULL,NULL),(193,'Pulwama',11,NULL,NULL),(194,'Rajauri',11,NULL,NULL),(195,'Srinagar',11,NULL,NULL),(196,'Samba',11,NULL,NULL),(197,'Udhampur',11,NULL,NULL),(198,'Bokaro',12,NULL,NULL),(199,'Chatra',12,NULL,NULL),(200,'Deoghar',12,NULL,NULL),(201,'Dhanbad',12,NULL,NULL),(202,'Dumka',12,NULL,NULL),(203,'Purba Singhbhum',12,NULL,NULL),(204,'Garhwa',12,NULL,NULL),(205,'Giridih',12,NULL,NULL),(206,'Godda',12,NULL,NULL),(207,'Gumla',12,NULL,NULL),(208,'Hazaribagh',12,NULL,NULL),(209,'Koderma',12,NULL,NULL),(210,'Lohardaga',12,NULL,NULL),(211,'Pakur',12,NULL,NULL),(212,'Palamu',12,NULL,NULL),(213,'Ranchi',12,NULL,NULL),(214,'Sahibganj',12,NULL,NULL),(215,'Seraikela and Kharsawan',12,NULL,NULL),(216,'Pashchim Singhbhum',12,NULL,NULL),(217,'Ramgarh',12,NULL,NULL),(218,'Alappuzha',13,NULL,NULL),(219,'Ernakulam',13,NULL,NULL),(220,'Idukki',13,NULL,NULL),(221,'Kollam',13,NULL,NULL),(222,'Kannur',13,NULL,NULL),(223,'Kasaragod',13,NULL,NULL),(224,'Kottayam',13,NULL,NULL),(225,'Kozhikode',13,NULL,NULL),(226,'Malappuram',13,NULL,NULL),(227,'Palakkad',13,NULL,NULL),(228,'Pathanamthitta',13,NULL,NULL),(229,'Thrissur',13,NULL,NULL),(230,'Thiruvananthapuram',13,NULL,NULL),(231,'Wayanad',13,NULL,NULL),(232,'Bidar',14,NULL,NULL),(233,'Belgaum',14,NULL,NULL),(234,'Bijapur',14,NULL,NULL),(235,'Bagalkot',14,NULL,NULL),(236,'Bellary',14,NULL,NULL),(237,'Bangalore Rural District',14,NULL,NULL),(238,'Bangalore Urban District',14,NULL,NULL),(239,'Chamarajnagar',14,NULL,NULL),(240,'Chikmagalur',14,NULL,NULL),(241,'Chitradurga',14,NULL,NULL),(242,'Davanagere',14,NULL,NULL),(243,'Dharwad',14,NULL,NULL),(244,'Dakshina Kannada',14,NULL,NULL),(245,'Gadag',14,NULL,NULL),(246,'Gulbarga',14,NULL,NULL),(247,'Hassan',14,NULL,NULL),(248,'Haveri District',14,NULL,NULL),(249,'Kodagu',14,NULL,NULL),(250,'Kolar',14,NULL,NULL),(251,'Koppal',14,NULL,NULL),(252,'Mandya',14,NULL,NULL),(253,'Mysore',14,NULL,NULL),(254,'Raichur',14,NULL,NULL),(255,'Shimoga',14,NULL,NULL),(256,'Tumkur',14,NULL,NULL),(257,'Udupi',14,NULL,NULL),(258,'Uttara Kannada',14,NULL,NULL),(259,'Ramanagara',14,NULL,NULL),(260,'Chikballapur',14,NULL,NULL),(261,'Yadagiri',14,NULL,NULL),(262,'Jowai',15,NULL,NULL),(263,'Nongstoin',15,NULL,NULL),(264,'Shillong',15,NULL,NULL),(265,'Tura',15,NULL,NULL),(266,'Ahmednagar',16,NULL,NULL),(267,'Akola',16,NULL,NULL),(268,'Amrawati',16,NULL,NULL),(269,'Aurangabad',16,NULL,NULL),(270,'Bhandara',16,NULL,NULL),(271,'Beed',16,NULL,NULL),(272,'Buldhana',16,NULL,NULL),(273,'Chandrapur',16,NULL,NULL),(274,'Dhule',16,NULL,NULL),(275,'Gadchiroli',16,NULL,NULL),(276,'Gondiya',16,NULL,NULL),(277,'Hingoli',16,NULL,NULL),(278,'Jalgaon',16,NULL,NULL),(279,'Jalna',16,NULL,NULL),(280,'Kolhapur',16,NULL,NULL),(281,'Latur',16,NULL,NULL),(282,'Mumbai City',16,NULL,NULL),(283,'Mumbai suburban',16,NULL,NULL),(284,'Nandurbar',16,NULL,NULL),(285,'Nanded',16,NULL,NULL),(286,'Nagpur',16,NULL,NULL),(287,'Nashik',16,NULL,NULL),(288,'Osmanabad',16,NULL,NULL),(289,'Parbhani',16,NULL,NULL),(290,'Pune',16,NULL,NULL),(291,'Raigad',16,NULL,NULL),(292,'Ratnagiri',16,NULL,NULL),(293,'Sindhudurg',16,NULL,NULL),(294,'Sangli',16,NULL,NULL),(295,'Solapur',16,NULL,NULL),(296,'Satara',16,NULL,NULL),(297,'Thane',16,NULL,NULL),(298,'Wardha',16,NULL,NULL),(299,'Washim',16,NULL,NULL),(300,'Yavatmal',16,NULL,NULL),(301,'Bishnupur',17,NULL,NULL),(302,'Churachandpur',17,NULL,NULL),(303,'Chandel',17,NULL,NULL),(304,'Imphal East',17,NULL,NULL),(305,'Senapati',17,NULL,NULL),(306,'Tamenglong',17,NULL,NULL),(307,'Thoubal',17,NULL,NULL),(308,'Ukhrul',17,NULL,NULL),(309,'Imphal West',17,NULL,NULL),(310,'Alirajpur',18,NULL,NULL),(311,'Anuppur',18,NULL,NULL),(312,'Ashok Nagar',18,NULL,NULL),(313,'Balaghat',18,NULL,NULL),(314,'Barwani',18,NULL,NULL),(315,'Betul',18,NULL,NULL),(316,'Bhind',18,NULL,NULL),(317,'Bhopal',18,NULL,NULL),(318,'Burhanpur',18,NULL,NULL),(319,'Chhatarpur',18,NULL,NULL),(320,'Chhindwara',18,NULL,NULL),(321,'Damoh',18,NULL,NULL),(322,'Datia',18,NULL,NULL),(323,'Dewas',18,NULL,NULL),(324,'Dhar',18,NULL,NULL),(325,'Dindori',18,NULL,NULL),(326,'Guna',18,NULL,NULL),(327,'Gwalior',18,NULL,NULL),(328,'Harda',18,NULL,NULL),(329,'Hoshangabad',18,NULL,NULL),(330,'Indore',18,NULL,NULL),(331,'Jabalpur',18,NULL,NULL),(332,'Jhabua',18,NULL,NULL),(333,'Katni',18,NULL,NULL),(334,'Khandwa',18,NULL,NULL),(335,'Khargone',18,NULL,NULL),(336,'Mandla',18,NULL,NULL),(337,'Mandsaur',18,NULL,NULL),(338,'Morena',18,NULL,NULL),(339,'Narsinghpur',18,NULL,NULL),(340,'Neemuch',18,NULL,NULL),(341,'Panna',18,NULL,NULL),(342,'Rewa',18,NULL,NULL),(343,'Rajgarh',18,NULL,NULL),(344,'Ratlam',18,NULL,NULL),(345,'Raisen',18,NULL,NULL),(346,'Sagar',18,NULL,NULL),(347,'Satna',18,NULL,NULL),(348,'Sehore',18,NULL,NULL),(349,'Seoni',18,NULL,NULL),(350,'Shahdol',18,NULL,NULL),(351,'Shajapur',18,NULL,NULL),(352,'Sheopur',18,NULL,NULL),(353,'Shivpuri',18,NULL,NULL),(354,'Sidhi',18,NULL,NULL),(355,'Singrauli',18,NULL,NULL),(356,'Tikamgarh',18,NULL,NULL),(357,'Ujjain',18,NULL,NULL),(358,'Umaria',18,NULL,NULL),(359,'Vidisha',18,NULL,NULL),(360,'Aizawl',19,NULL,NULL),(361,'Champhai',19,NULL,NULL),(362,'Kolasib',19,NULL,NULL),(363,'Lawngtlai',19,NULL,NULL),(364,'Lunglei',19,NULL,NULL),(365,'Mamit',19,NULL,NULL),(366,'Saiha',19,NULL,NULL),(367,'Serchhip',19,NULL,NULL),(368,'Dimapur',20,NULL,NULL),(369,'Kohima',20,NULL,NULL),(370,'Mokokchung',20,NULL,NULL),(371,'Mon',20,NULL,NULL),(372,'Phek',20,NULL,NULL),(373,'Tuensang',20,NULL,NULL),(374,'Wokha',20,NULL,NULL),(375,'Zunheboto',20,NULL,NULL),(376,'Angul',21,NULL,NULL),(377,'Boudh',21,NULL,NULL),(378,'Bhadrak',21,NULL,NULL),(379,'Bolangir',21,NULL,NULL),(380,'Bargarh',21,NULL,NULL),(381,'Baleswar',21,NULL,NULL),(382,'Cuttack',21,NULL,NULL),(383,'Debagarh',21,NULL,NULL),(384,'Dhenkanal',21,NULL,NULL),(385,'Ganjam',21,NULL,NULL),(386,'Gajapati',21,NULL,NULL),(387,'Jharsuguda',21,NULL,NULL),(388,'Jajapur',21,NULL,NULL),(389,'Jagatsinghpur',21,NULL,NULL),(390,'Khordha',21,NULL,NULL),(391,'Kendujhar',21,NULL,NULL),(392,'Kalahandi',21,NULL,NULL),(393,'Kandhamal',21,NULL,NULL),(394,'Koraput',21,NULL,NULL),(395,'Kendrapara',21,NULL,NULL),(396,'Malkangiri',21,NULL,NULL),(397,'Mayurbhanj',21,NULL,NULL),(398,'Nabarangpur',21,NULL,NULL),(399,'Nuapada',21,NULL,NULL),(400,'Nayagarh',21,NULL,NULL),(401,'Puri',21,NULL,NULL),(402,'Rayagada',21,NULL,NULL),(403,'Sambalpur',21,NULL,NULL),(404,'Subarnapur',21,NULL,NULL),(405,'Sundargarh',21,NULL,NULL),(406,'Amritsar',22,NULL,NULL),(407,'Bathinda',22,NULL,NULL),(408,'Firozpur',22,NULL,NULL),(409,'Faridkot',22,NULL,NULL),(410,'Fatehgarh Sahib',22,NULL,NULL),(411,'Gurdaspur',22,NULL,NULL),(412,'Hoshiarpur',22,NULL,NULL),(413,'Jalandhar',22,NULL,NULL),(414,'Kapurthala',22,NULL,NULL),(415,'Ludhiana',22,NULL,NULL),(416,'Mansa',22,NULL,NULL),(417,'Moga',22,NULL,NULL),(418,'Mukatsar',22,NULL,NULL),(419,'Nawan Shehar',22,NULL,NULL),(420,'Patiala',22,NULL,NULL),(421,'Rupnagar',22,NULL,NULL),(422,'Sangrur',22,NULL,NULL),(423,'Ajmer',23,NULL,NULL),(424,'Alwar',23,NULL,NULL),(425,'Bikaner',23,NULL,NULL),(426,'Barmer',23,NULL,NULL),(427,'Banswara',23,NULL,NULL),(428,'Bharatpur',23,NULL,NULL),(429,'Baran',23,NULL,NULL),(430,'Bundi',23,NULL,NULL),(431,'Bhilwara',23,NULL,NULL),(432,'Churu',23,NULL,NULL),(433,'Chittorgarh',23,NULL,NULL),(434,'Dausa',23,NULL,NULL),(435,'Dholpur',23,NULL,NULL),(436,'Dungapur',23,NULL,NULL),(437,'Ganganagar',23,NULL,NULL),(438,'Hanumangarh',23,NULL,NULL),(439,'Juhnjhunun',23,NULL,NULL),(440,'Jalore',23,NULL,NULL),(441,'Jodhpur',23,NULL,NULL),(442,'Jaipur',23,NULL,NULL),(443,'Jaisalmer',23,NULL,NULL),(444,'Jhalawar',23,NULL,NULL),(445,'Karauli',23,NULL,NULL),(446,'Kota',23,NULL,NULL),(447,'Nagaur',23,NULL,NULL),(448,'Pali',23,NULL,NULL),(449,'Pratapgarh',23,NULL,NULL),(450,'Rajsamand',23,NULL,NULL),(451,'Sikar',23,NULL,NULL),(452,'Sawai Madhopur',23,NULL,NULL),(453,'Sirohi',23,NULL,NULL),(454,'Tonk',23,NULL,NULL),(455,'Udaipur',23,NULL,NULL),(456,'East Sikkim',24,NULL,NULL),(457,'North Sikkim',24,NULL,NULL),(458,'South Sikkim',24,NULL,NULL),(459,'Gangtok',24,NULL,NULL),(460,'Ariyalur',25,NULL,NULL),(461,'Chennai',25,NULL,NULL),(462,'Coimbatore',25,NULL,NULL),(463,'Cuddalore',25,NULL,NULL),(464,'Dharmapuri',25,NULL,NULL),(465,'Dindigul',25,NULL,NULL),(466,'Erode',25,NULL,NULL),(467,'Kanchipuram',25,NULL,NULL),(468,'Kanyakumari',25,NULL,NULL),(469,'Karur',25,NULL,NULL),(470,'Madurai',25,NULL,NULL),(471,'Nagapattinam',25,NULL,NULL),(472,'The Nilgiris',25,NULL,NULL),(473,'Namakkal',25,NULL,NULL),(474,'Perambalur',25,NULL,NULL),(475,'Pudukkottai',25,NULL,NULL),(476,'Ramanathapuram',25,NULL,NULL),(477,'Salem',25,NULL,NULL),(478,'Sivagangai',25,NULL,NULL),(479,'Tiruppur',25,NULL,NULL),(480,'Tiruchirappalli',25,NULL,NULL),(481,'Theni',25,NULL,NULL),(482,'Tirunelveli',25,NULL,NULL),(483,'Thanjavur',25,NULL,NULL),(484,'Thoothukudi',25,NULL,NULL),(485,'Thiruvallur',25,NULL,NULL),(486,'Thiruvarur',25,NULL,NULL),(487,'Tiruvannamalai',25,NULL,NULL),(488,'Vellore',25,NULL,NULL),(489,'Villupuram',25,NULL,NULL),(490,'Hyderabad',26,NULL,NULL),(491,'Warangal',26,NULL,NULL),(492,'Mahabubnagar',26,NULL,NULL),(493,'Nizamabad',26,NULL,NULL),(494,'Suryapet',26,NULL,NULL),(495,'Nalgonda',26,NULL,NULL),(496,'Agartala',27,NULL,NULL),(497,'Badharghat',27,NULL,NULL),(498,'Dharmanagar',27,NULL,NULL),(499,'Indranagar',27,NULL,NULL),(500,'Jogendranagar',27,NULL,NULL),(501,'Kailasahar',27,NULL,NULL),(502,'Khowai',27,NULL,NULL),(503,'Udaipur',27,NULL,NULL),(504,'Almora',28,NULL,NULL),(505,'Bageshwar',28,NULL,NULL),(506,'Chamoli',28,NULL,NULL),(507,'Champawat',28,NULL,NULL),(508,'Dehradun',28,NULL,NULL),(509,'Haridwar',28,NULL,NULL),(510,'Nainital',28,NULL,NULL),(511,'Pauri Garhwal',28,NULL,NULL),(512,'Pithoragharh',28,NULL,NULL),(513,'Rudraprayag',28,NULL,NULL),(514,'Tehri Garhwal',28,NULL,NULL),(515,'Udham Singh Nagar',28,NULL,NULL),(516,'Uttarkashi',28,NULL,NULL),(517,'Agra',29,NULL,NULL),(518,'Allahabad',29,NULL,NULL),(519,'Aligarh',29,NULL,NULL),(520,'Ambedkar Nagar',29,NULL,NULL),(521,'Auraiya',29,NULL,NULL),(522,'Azamgarh',29,NULL,NULL),(523,'Barabanki',29,NULL,NULL),(524,'Badaun',29,NULL,NULL),(525,'Bagpat',29,NULL,NULL),(526,'Bahraich',29,NULL,NULL),(527,'Bijnor',29,NULL,NULL),(528,'Ballia',29,NULL,NULL),(529,'Banda',29,NULL,NULL),(530,'Balrampur',29,NULL,NULL),(531,'Bareilly',29,NULL,NULL),(532,'Basti',29,NULL,NULL),(533,'Bulandshahr',29,NULL,NULL),(534,'Chandauli',29,NULL,NULL),(535,'Chitrakoot',29,NULL,NULL),(536,'Deoria',29,NULL,NULL),(537,'Etah',29,NULL,NULL),(538,'Kanshiram Nagar',29,NULL,NULL),(539,'Etawah',29,NULL,NULL),(540,'Firozabad',29,NULL,NULL),(541,'Farrukhabad',29,NULL,NULL),(542,'Fatehpur',29,NULL,NULL),(543,'Faizabad',29,NULL,NULL),(544,'Gautam Buddha Nagar',29,NULL,NULL),(545,'Gonda',29,NULL,NULL),(546,'Ghazipur',29,NULL,NULL),(547,'Gorkakhpur',29,NULL,NULL),(548,'Ghaziabad',29,NULL,NULL),(549,'Hamirpur',29,NULL,NULL),(550,'Hardoi',29,NULL,NULL),(551,'Mahamaya Nagar',29,NULL,NULL),(552,'Jhansi',29,NULL,NULL),(553,'Jalaun',29,NULL,NULL),(554,'Jyotiba Phule Nagar',29,NULL,NULL),(555,'Jaunpur District',29,NULL,NULL),(556,'Kanpur Dehat',29,NULL,NULL),(557,'Kannauj',29,NULL,NULL),(558,'Kanpur Nagar',29,NULL,NULL),(559,'Kaushambi',29,NULL,NULL),(560,'Kushinagar',29,NULL,NULL),(561,'Lalitpur',29,NULL,NULL),(562,'Lakhimpur Kheri',29,NULL,NULL),(563,'Lucknow',29,NULL,NULL),(564,'Mau',29,NULL,NULL),(565,'Meerut',29,NULL,NULL),(566,'Maharajganj',29,NULL,NULL),(567,'Mahoba',29,NULL,NULL),(568,'Mirzapur',29,NULL,NULL),(569,'Moradabad',29,NULL,NULL),(570,'Mainpuri',29,NULL,NULL),(571,'Mathura',29,NULL,NULL),(572,'Muzaffarnagar',29,NULL,NULL),(573,'Pilibhit',29,NULL,NULL),(574,'Pratapgarh',29,NULL,NULL),(575,'Rampur',29,NULL,NULL),(576,'Rae Bareli',29,NULL,NULL),(577,'Saharanpur',29,NULL,NULL),(578,'Sitapur',29,NULL,NULL),(579,'Shahjahanpur',29,NULL,NULL),(580,'Sant Kabir Nagar',29,NULL,NULL),(581,'Siddharthnagar',29,NULL,NULL),(582,'Sonbhadra',29,NULL,NULL),(583,'Sant Ravidas Nagar',29,NULL,NULL),(584,'Sultanpur',29,NULL,NULL),(585,'Shravasti',29,NULL,NULL),(586,'Unnao',29,NULL,NULL),(587,'Varanasi',29,NULL,NULL),(588,'Birbhum',30,NULL,NULL),(589,'Bankura',30,NULL,NULL),(590,'Bardhaman',30,NULL,NULL),(591,'Darjeeling',30,NULL,NULL),(592,'Dakshin Dinajpur',30,NULL,NULL),(593,'Hooghly',30,NULL,NULL),(594,'Howrah',30,NULL,NULL),(595,'Jalpaiguri',30,NULL,NULL),(596,'Cooch Behar',30,NULL,NULL),(597,'Kolkata',30,NULL,NULL),(598,'Malda',30,NULL,NULL),(599,'Midnapore',30,NULL,NULL),(600,'Murshidabad',30,NULL,NULL),(601,'Nadia',30,NULL,NULL),(602,'North 24 Parganas',30,NULL,NULL),(603,'South 24 Parganas',30,NULL,NULL),(604,'Purulia',30,NULL,NULL),(605,'Uttar Dinajpur',30,NULL,NULL);

/*Table structure for table `complementary_code` */

DROP TABLE IF EXISTS `complementary_code`;

CREATE TABLE `complementary_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` varchar(55) DEFAULT NULL,
  `updated_date` varchar(55) DEFAULT NULL,
  `complementary_code` varchar(55) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

/*Data for the table `complementary_code` */

insert  into `complementary_code`(`id`,`created_date`,`updated_date`,`complementary_code`,`status`) values (1,NULL,NULL,'64MX88jp2P',1),(2,NULL,NULL,'h2oTSZIt23',1),(3,NULL,NULL,'8LI4LV1MfF',0),(4,NULL,NULL,'iS6B295er7',0),(5,NULL,NULL,'CBAa5yAip1',0),(6,NULL,NULL,'2rbIyar0mB',0),(7,NULL,NULL,'1Mp8e7JvAO',0),(8,NULL,NULL,'930FZ2oO0r',0),(9,NULL,NULL,'T9yQbpi7q3',0),(10,NULL,NULL,'5RT3crbLn2',0),(11,NULL,NULL,'BU68w2njt4',0),(12,NULL,NULL,'gm314ed0lV',0),(13,NULL,NULL,'LP1V6h6mZL',0),(14,NULL,NULL,'Tj9E501wtw',0),(15,NULL,NULL,'p9DP1sw3BH',0),(16,NULL,NULL,'5fX0487f2n',0),(17,NULL,NULL,'SSxz617A2V',0),(18,NULL,NULL,'bMWMfqigGR',0),(19,NULL,NULL,'4pUr38yShH',0),(20,NULL,NULL,'s9ifFb4W8V',0),(21,NULL,NULL,'e0ADF7e0i2',0),(22,NULL,NULL,'6v90sQkwAz',0),(23,NULL,NULL,'x208nJi1T7',0),(24,NULL,NULL,'e9hm9lh670',0),(25,NULL,NULL,'zp6mwmN4jm',0),(26,NULL,NULL,'DOA209T3on',0),(27,NULL,NULL,'jYlhmxt331',0),(28,NULL,NULL,'22zD144CIQ',0),(29,NULL,NULL,'237w29Pplz',0),(30,NULL,NULL,'A3WN43wyFo',0),(31,NULL,NULL,'6kX6YEaoO7',0),(32,NULL,NULL,'pW4zPi1XOC',0),(33,NULL,NULL,'njaMs98559',0),(34,NULL,NULL,'U8sb26tZ41',0),(35,NULL,NULL,'3g4i1M2fEy',0),(36,NULL,NULL,'CPBJ57rdMC',0),(37,NULL,NULL,'54HmaaOv1o',0),(38,NULL,NULL,'Nnxz5egPO5',0),(39,NULL,NULL,'7zl4wbl1WE',0),(40,NULL,NULL,'ut4yDvVchU',0),(41,NULL,NULL,'B54664Z6B5',0),(42,NULL,NULL,'tLhnGlj5AP',0),(43,NULL,NULL,'ly3q30CBsC',0),(44,NULL,NULL,'86WeV28eOj',0),(45,NULL,NULL,'3I01yZGM34',0),(46,NULL,NULL,'mjI4Xq7C7W',0),(47,NULL,NULL,'WP4G6cjZ7O',0),(48,NULL,NULL,'gP332I8d6A',0),(49,NULL,NULL,'stm5CeMetN',0),(50,NULL,NULL,'4n56778ztF',0),(51,NULL,NULL,'yhi657X118',0),(52,NULL,NULL,'5ckIW3T333',0),(53,NULL,NULL,'zq7C331653',0),(54,NULL,NULL,'448Jz6R5C5',0),(55,NULL,NULL,'1W9qp9ym4j',0),(56,NULL,NULL,'f9124e0yr4',0),(57,NULL,NULL,'j43wA1U7B7',0),(58,NULL,NULL,'wTMkh24O6c',0),(59,NULL,NULL,'UA44i0NLWU',0),(60,NULL,NULL,'Q38vSB3rR0',0),(61,NULL,NULL,'i2d9pH4DjP',0),(62,NULL,NULL,'wTD5l6Jptq',0),(63,NULL,NULL,'Ln95S6EUY9',0),(64,NULL,NULL,'H24AJNV232',0),(65,NULL,NULL,'LfGhPjnayw',0),(66,NULL,NULL,'S0Y5skEf27',0),(67,NULL,NULL,'7NDCRy8PkM',0),(68,NULL,NULL,'8D7qcpzXy1',0),(69,NULL,NULL,'h37SZ94jNo',0),(70,NULL,NULL,'2BbUc9k0wv',0),(71,NULL,NULL,'spZGot6wdL',0),(72,NULL,NULL,'n6FVNH7afs',0),(73,NULL,NULL,'zt7bYMG548',0),(74,NULL,NULL,'AJ6Vy6BW67',0),(75,NULL,NULL,'Yo38G7AYB1',0),(76,NULL,NULL,'Ik6ZajeWQR',0),(77,NULL,NULL,'Ql7Z1dx1O1',0),(78,NULL,NULL,'177GG0568w',0),(79,NULL,NULL,'T2tFl58OZ9',0),(80,NULL,NULL,'6Um7MP28bh',0),(81,NULL,NULL,'f619nXkVs2',0),(82,NULL,NULL,'TXgWB92J49',0),(83,NULL,NULL,'52c17D6fv5',0),(84,NULL,NULL,'vcP9dg6h2m',0),(85,NULL,NULL,'5a04JG5Gf1',0),(86,NULL,NULL,'zOZNw4p9Hx',0),(87,NULL,NULL,'D9q9H3R5P5',0),(88,NULL,NULL,'vJUi2BnX25',0),(89,NULL,NULL,'Z38YiouH0v',0),(90,NULL,NULL,'2DanYkoD5Y',0),(91,NULL,NULL,'3qdYnnMMPs',0),(92,NULL,NULL,'N8mzY16EY5',0),(93,NULL,NULL,'Q8jRbF52yr',0),(94,NULL,NULL,'MdOTmC88E7',0),(95,NULL,NULL,'a77fy31B78',0),(96,NULL,NULL,'8da21ouw7B',0),(97,NULL,NULL,'RIX6280188',0),(98,NULL,NULL,'UEO55EUPb2',0),(99,NULL,NULL,'V2aiAR14nJ',0),(100,NULL,NULL,'99Ut25L5MF',0),(101,NULL,NULL,'I23iU7N16t',0),(102,NULL,NULL,'9t0X6tAo69',0),(103,NULL,NULL,'Ceg8939QWp',0),(104,NULL,NULL,'0DDlq0kyO0',0),(105,NULL,NULL,'0J7vtW82w6',0),(106,NULL,NULL,'SL19x5M3e6',0),(107,NULL,NULL,'5V9d4M3891',0),(108,NULL,NULL,'Tmo5Y1sUJI',0),(109,NULL,NULL,'xmUhkYAyaM',0),(110,NULL,NULL,'6FI4VTiSy9',0),(111,NULL,NULL,'QT84Zk7HCh',0),(112,NULL,NULL,'0b46066g0z',0),(113,NULL,NULL,'Re934200e2',0),(114,NULL,NULL,'v15usAG9DA',0),(115,NULL,NULL,'L4ieLZ6p8w',0),(116,NULL,NULL,'49sW12zWBb',0),(117,NULL,NULL,'F2O1V9G8L1',0),(118,NULL,NULL,'cS52g6j7Ri',0),(119,NULL,NULL,'j8oja99GCH',0),(120,NULL,NULL,'e4j61v4j5o',0),(121,NULL,NULL,'f54S12c950',0),(122,NULL,NULL,'2gAb74EMIa',0),(123,NULL,NULL,'supO1ilX1l',0),(124,NULL,NULL,'ju941G34q0',0),(125,NULL,NULL,'DadnFl72MG',0),(126,NULL,NULL,'n8mQ984D02',0),(127,NULL,NULL,'e3t702of4S',0),(128,NULL,NULL,'sAm0eH6caS',0),(129,NULL,NULL,'2zatVoB0HN',0),(130,NULL,NULL,'SlZh04u6jM',0),(131,NULL,NULL,'ccj752w430',0),(132,NULL,NULL,'h7US7GH1CY',0),(133,NULL,NULL,'Hpk69R3rmA',0),(134,NULL,NULL,'1WOaLnNEz5',0),(135,NULL,NULL,'JfI2Y4CmO3',0),(136,NULL,NULL,'x97oWpX5ac',0),(137,NULL,NULL,'2TadrnfC5e',0),(138,NULL,NULL,'Sw6sb3Az36',0),(139,NULL,NULL,'0D2kmtUJRh',0),(140,NULL,NULL,'43v06nCPZW',0),(141,NULL,NULL,'FfrPLd4CuY',0),(142,NULL,NULL,'l2fo2makE9',0),(143,NULL,NULL,'kLgLn0Bht8',0),(144,NULL,NULL,'9Rz8z7D4ga',0),(145,NULL,NULL,'N752OQyw89',0),(146,NULL,NULL,'8XGVzDz0ZY',0),(147,NULL,NULL,'YIjTWC1ykE',0),(148,NULL,NULL,'lv09N108C8',0),(149,NULL,NULL,'vx3h5RutFj',0),(150,NULL,NULL,'25VpTTBVp2',0),(151,NULL,NULL,'XQFi7O5Dv9',0),(152,NULL,NULL,'zUwB202voB',0),(153,NULL,NULL,'ELyyGd5IoP',0),(154,NULL,NULL,'AJ6fpaUp22',0),(155,NULL,NULL,'6r3c83sl8W',0),(156,NULL,NULL,'86ywC0M3F7',0),(157,NULL,NULL,'5HfeaNHS6v',0),(158,NULL,NULL,'ha6Y1CPeU8',0),(159,NULL,NULL,'0677362g94',0),(160,NULL,NULL,'0sj1Il740S',0),(161,NULL,NULL,'2CvOGX23si',0),(162,NULL,NULL,'gv1OkmaP21',0),(163,NULL,NULL,'2cA5hg634i',0),(164,NULL,NULL,'6qIC49GEW3',0),(165,NULL,NULL,'9f9l0AF68d',0),(166,NULL,NULL,'3Edh6lc164',0),(167,NULL,NULL,'8FMM3pH6On',0),(168,NULL,NULL,'JaRZs2e3z7',0),(169,NULL,NULL,'OSz74Ei45j',0),(170,NULL,NULL,'zXi2UBC6Uh',0),(171,NULL,NULL,'6wGV59O298',0),(172,NULL,NULL,'Z704Mf7m8n',0),(173,NULL,NULL,'Jd0zmZIMPz',0),(174,NULL,NULL,'4Y818t6HlV',0),(175,NULL,NULL,'873Awr7E6e',0),(176,NULL,NULL,'7nPP4LYJF1',0),(177,NULL,NULL,'VX7yj1OXpY',0),(178,NULL,NULL,'tbbXt2Ap97',0),(179,NULL,NULL,'b0o01y9g2o',0),(180,NULL,NULL,'q1oShMr128',0),(181,NULL,NULL,'U6yRgv434L',0),(182,NULL,NULL,'afLg5Va3Ls',0),(183,NULL,NULL,'7bQCg3V6lL',0),(184,NULL,NULL,'6n2QrI3m4L',0),(185,NULL,NULL,'W7OUReMp9r',0),(186,NULL,NULL,'X6w589o61V',0),(187,NULL,NULL,'1zY8M7t5Bz',0),(188,NULL,NULL,'jPeG12808I',0),(189,NULL,NULL,'9V57Hhk4Z1',0),(190,NULL,NULL,'SEUBUHw6tF',0),(191,NULL,NULL,'a175zh6fXG',0),(192,NULL,NULL,'jB5SbvA904',0),(193,NULL,NULL,'8vwvuwPlHY',0),(194,NULL,NULL,'9RuX9HvbA0',0),(195,NULL,NULL,'lt6kUg0RE0',0),(196,NULL,NULL,'3c8YT6z5m2',0),(197,NULL,NULL,'21i90W903N',0),(198,NULL,NULL,'pHc3II0p85',0),(199,NULL,NULL,'H3q3712L4N',0),(200,NULL,NULL,'ARY772HgDL',0);

/*Table structure for table `contact_us` */

DROP TABLE IF EXISTS `contact_us`;

CREATE TABLE `contact_us` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `updated_date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `contact_us` */

insert  into `contact_us`(`id`,`name`,`email`,`message`,`created_date`,`updated_date`) values (1,'Vijay Mali','vj@gmail.com','hiii...............nice website','Fri Jan 01 12:18:13 IST 2016','Fri Jan 01 12:18:13 IST 2016'),(2,'Mith Dashore','mith@gmail.com','hiiii...............very usefull portal','Fri Jan 01 12:18:54 IST 2016','Fri Jan 01 12:18:54 IST 2016'),(3,'Mayank Sharma','sharma@gmail.com','i like this','Fri Jan 01 12:19:36 IST 2016','Fri Jan 01 12:19:36 IST 2016'),(4,'Chetan Verma','verma@gmail.com','hiii all.......please use this website','Fri Jan 01 12:21:04 IST 2016','Fri Jan 01 12:21:04 IST 2016'),(5,'Shukhvinder Shing','ss@gmail.com','Very helpfull  website','Fri Jan 01 12:22:02 IST 2016','Fri Jan 01 12:22:02 IST 2016'),(6,'Amit','amit@gmail.com','please solve my query.','Wed Jan 13 15:44:28 IST 2016','Wed Jan 13 15:44:28 IST 2016');

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(55) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `updated_date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `country` */

insert  into `country`(`id`,`country_name`,`created_date`,`updated_date`) values (1,'India',NULL,NULL);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_date` varchar(30) DEFAULT NULL,
  `updated_date` varchar(30) DEFAULT NULL,
  `supervisor_id` int(55) DEFAULT NULL,
  `is_deleted` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`id`,`name`,`email`,`contact`,`address`,`created_date`,`updated_date`,`supervisor_id`,`is_deleted`) values (1,'Meenal Pathre','menull@gmail.com','9893001510','Malviya nagar,indore(M.P.)','Sat Jan 02 15:03:57 IST 2016',NULL,1,1),(2,'Nilesh khanchandani','nilesh@gmail.com','6868456465','Sindhi colony,indore(M.P.)','Fri Jan 01 12:11:57 IST 2016',NULL,2,1),(3,'Mithiles','mithiles@gmail.com','6983684844','Banganga,indore(M.P.)','Fri Jan 01 12:13:00 IST 2016',NULL,3,1),(4,'Shorabh','shorabh@gmail.com','9668768387','Aanand Bazar,indore(M.P.)','Fri Jan 01 12:13:56 IST 2016',NULL,4,1),(5,'Harshita kukkde','kukkde@gmail.com','9868584651','Ujjain(M.P.)','Fri Jan 01 12:15:10 IST 2016',NULL,5,1),(6,'Ankush Patel','patel@gmail.com','9689686541','Banganga,indore(M.P.)','Fri Jan 01 12:16:03 IST 2016',NULL,6,1),(7,'Jagdeep Kour','kour@gmail.com','9654536654','dewas naka,indore(M.P.)','Fri Jan 01 12:16:49 IST 2016',NULL,7,1);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `merchant_type` int(5) DEFAULT NULL,
  `opening_time` varchar(55) DEFAULT NULL,
  `closing_time` varchar(55) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `term_condition` varchar(5) DEFAULT NULL,
  `time_period` varchar(55) DEFAULT NULL,
  `image` varchar(55) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `subscription_plan` int(55) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `employee_id` int(55) DEFAULT NULL,
  `opt_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_login_roleId` (`role_id`),
  KEY `FK_login_addressId` (`address_id`),
  KEY `payment_id` (`payment_id`),
  CONSTRAINT `FK_login_addressId` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FK_login_roleId` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`user_name`,`password`,`name`,`merchant_type`,`opening_time`,`closing_time`,`role_id`,`address_id`,`created_date`,`updated_date`,`term_condition`,`time_period`,`image`,`payment_id`,`subscription_plan`,`isApproved`,`employee_id`,`opt_code`) values (1,'vijayMali','123456','Vijay Mali',2,'12 : 27 AM','12 : 27 AM',2,1,'2016-01-23 12:35:23','2016-01-23 12:35:23','Yes','22-01-2016','sks_ps_print_03b_20x30cm_300dpi.jpg',NULL,4,1,1,NULL),(2,'Aj','123456','Ajay Jirati',1,'3 : 35 PM','3 : 35 PM',2,2,'2016-01-27 15:37:53','2016-01-27 15:37:53','Yes','26-02-2016','download (1).jpg',NULL,NULL,1,6,NULL);

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(12) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_date` varchar(30) DEFAULT NULL,
  `updated_date` varchar(30) DEFAULT NULL,
  `is_deleted` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `manager` */

insert  into `manager`(`id`,`name`,`email`,`contact`,`address`,`created_date`,`updated_date`,`is_deleted`) values (1,'Neeraj','neeraj@gmail.com','9685538949','Aanand,Gujrat','Sat Jan 02 14:18:23 IST 2016',NULL,1),(2,'Arun Rathore','rathore.arun@gmail.com','9300000000','Vijay nagar,indore(M.P.)','Sat Jan 02 14:23:17 IST 2016',NULL,1),(3,'Ajay Jirati','jirati@gmail.com','8469456148','Old Palasia,indore(M.P.)','Fri Jan 01 11:46:44 IST 2016',NULL,1),(4,'Sumit Gangrade','sumit@gmail.com','9845684658','Tilak nagar,indor (M.P.)','Fri Jan 01 11:47:33 IST 2016',NULL,1),(5,'Praveen','praveen@gamil.com','8949841654','93,saket nagar , indore(M.P.)','Fri Jan 01 11:48:31 IST 2016',NULL,1),(6,'Mayank Shukla','shukla@gmail.com','9845648156','Vijay nagar,indore(M.P.)','Fri Jan 01 11:49:21 IST 2016',NULL,1);

/*Table structure for table `offer` */

DROP TABLE IF EXISTS `offer`;

CREATE TABLE `offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_description` varchar(250) DEFAULT NULL,
  `offer_start_time` varchar(55) DEFAULT NULL,
  `offer_end_time` varchar(55) DEFAULT NULL,
  `offer_coupan_code` varchar(55) DEFAULT NULL,
  `offer_heading` varchar(250) DEFAULT NULL,
  `is_approved` tinyint(4) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `updated_date` varchar(55) DEFAULT NULL,
  `offer_image` varchar(55) DEFAULT NULL,
  `offer_validity` varbinary(30) DEFAULT NULL,
  `terms_and_conditions` varchar(250) DEFAULT NULL,
  `no_of_coupons_per_person` int(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `normal_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `rate_type` int(11) DEFAULT NULL,
  `rate_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_offer_loginId` (`login_id`),
  CONSTRAINT `FK_offer_loginId` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `offer` */

insert  into `offer`(`id`,`offer_description`,`offer_start_time`,`offer_end_time`,`offer_coupan_code`,`offer_heading`,`is_approved`,`login_id`,`created_date`,`updated_date`,`offer_image`,`offer_validity`,`terms_and_conditions`,`no_of_coupons_per_person`,`image`,`normal_price`,`offer_price`,`rate_type`,`rate_value`) values (1,'on 56','2 : 46 PM','2 : 46 PM','7M2GBB2Q9Q','Hot sandwich',2,1,'21-01-2016',NULL,NULL,'2016-01-31','nooooooooooooooooooooo',5,'7M2GBB2Q9Q_516664b4ec166aab5981829552fca864.jpg',500,400,1,10);

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txnid` varchar(60) DEFAULT NULL,
  `amount` varchar(60) DEFAULT NULL,
  `cardnum` varchar(60) DEFAULT NULL,
  `card_type` varchar(60) DEFAULT NULL,
  `status` varchar(60) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `updated_date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_type` varchar(55) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `updated_date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`id`,`role_type`,`created_date`,`updated_date`) values (1,'Admin',NULL,NULL),(2,'Merchant',NULL,NULL),(3,'customer',NULL,NULL),(4,'Sub_Admin',NULL,NULL);

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(55) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `updated_date` varchar(55) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_state` (`country_id`),
  CONSTRAINT `FK_state` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `state` */

insert  into `state`(`id`,`state_name`,`country_id`,`updated_date`,`created_date`) values (1,'Andhra Pradesh',1,NULL,NULL),(2,'Arunachal Pradesh',1,NULL,NULL),(3,'Assam',1,NULL,NULL),(4,'Bihar',1,NULL,NULL),(5,'Chattisgarh',1,NULL,NULL),(6,'Delhi',1,NULL,NULL),(7,'Goa',1,NULL,NULL),(8,'Gujarat',1,NULL,NULL),(9,'Himachal Pradesh',1,NULL,NULL),(10,'Haryana',1,NULL,NULL),(11,'Jammu And Kashmir',1,NULL,NULL),(12,'Jharkhand',1,NULL,NULL),(13,'Kerala',1,NULL,NULL),(14,'Karnataka',1,NULL,NULL),(15,'Meghalaya',1,NULL,NULL),(16,'Maharashtra',1,NULL,NULL),(17,'Manipur',1,NULL,NULL),(18,'Madhya Pradesh',1,NULL,NULL),(19,'Mizoram',1,NULL,NULL),(20,'Nagaland',1,NULL,NULL),(21,'Orissa',1,NULL,NULL),(22,'Punjab',1,NULL,NULL),(23,'Rajasthan',1,NULL,NULL),(24,'Sikkim',1,NULL,NULL),(25,'Tamil Nadu',1,NULL,NULL),(26,'Telangana',1,NULL,NULL),(27,'Tripura',1,NULL,NULL),(28,'Uttarakhand',1,NULL,NULL),(29,'Uttar Pradesh',1,NULL,NULL),(30,'West Bengal',1,NULL,NULL);

/*Table structure for table `sub_admin` */

DROP TABLE IF EXISTS `sub_admin`;

CREATE TABLE `sub_admin` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `role_id` int(5) DEFAULT NULL,
  `created_date` varchar(30) DEFAULT NULL,
  `updated_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `sub_admin` */

insert  into `sub_admin`(`id`,`user_name`,`password`,`name`,`contact`,`role_id`,`created_date`,`updated_date`) values (1,'admin','000000','Admin','1236547890',1,NULL,NULL),(2,'vijay','123456','VIjay Mali','1236547879',4,'Mon Jan 25 16:07:07 IST 2016',NULL),(3,'ram','123456','Ram sharma','9846468496',4,'Thu Jan 28 15:21:45 IST 2016',NULL);

/*Table structure for table `supervisor` */

DROP TABLE IF EXISTS `supervisor`;

CREATE TABLE `supervisor` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(12) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_date` varchar(30) DEFAULT NULL,
  `updated_date` varchar(30) DEFAULT NULL,
  `manager_id` int(55) DEFAULT NULL,
  `is_deleted` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `supervisor` */

insert  into `supervisor`(`id`,`name`,`email`,`contact`,`address`,`created_date`,`updated_date`,`manager_id`,`is_deleted`) values (1,'Akshada Bhoite','akshada@gmail.com','8415698568','Ram bag colony, indore(M.P.)','Sat Jan 02 15:09:49 IST 2016',NULL,3,1),(2,'Shubohi imran','shubohi@gmail.com','8415298465','Ranisati get,indore(M.P.)','Mon Jan 11 11:31:24 IST 2016',NULL,2,1),(3,'Sandeep Jaria','jariya@gmail.com','8945618946','mahu,indore(M.P.)','Fri Jan 01 12:04:20 IST 2016',NULL,5,1),(4,'Sandeep Patidar','patidar@gmail.com','8491841568','Bhanver kuaa,indore(M.P.)','Fri Jan 01 12:05:03 IST 2016',NULL,4,1),(5,'Vivek Nagar','vivek@gmail.com','8956128946','Bhanver kuaa,indore(M.P.)','Fri Jan 01 12:06:00 IST 2016',NULL,6,1),(6,'Vipul Raj Shinh Chohan','vipul@gmial.com','3856974858','navlakha bus stand,indore(M.P.)','Fri Jan 01 12:07:22 IST 2016',NULL,2,1),(7,'Vijay Mali','vj@gmail.com','8561451624','Vinbha nagar,tilak nagar,indore(M.P.)','Tue Jan 05 17:51:44 IST 2016',NULL,5,1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
