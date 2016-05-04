/*
Navicat MySQL Data Transfer

Source Server         : aartek
Source Server Version : 50137
Source Host           : localhost:3306
Source Database       : everoffe_offerin

Target Server Type    : MYSQL
Target Server Version : 50137
File Encoding         : 65001

Date: 2016-05-02 11:38:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `address`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO address VALUES ('1', 'Tilak nagar, indore', 'indore', '', '9685538949', 'vjmali121@gmail.com', '452001', 'www.4ever.com', '330', null, null, '22.6955272', '75.8812400', '18');
INSERT INTO address VALUES ('2', 'Kamptee, Nagpur', 'Nagpur', '', '9893001510', 'navin.jain@gmail.com', '440010', '', '286', null, null, '21.1601744', '79.1578626', '16');
INSERT INTO address VALUES ('3', 'dewas naka,indore', 'indore', '', '9977235641', 'koar.jagdeep@gmail.com', '452001', '', '330', null, null, '22.7854330', '75.9104394', '18');
INSERT INTO address VALUES ('4', 'Hanuman Nagar, Nagpur', 'Nagpur', '', '9993256787', 'manoj.kale@gmail.com', '452001', 'https://www.everoffer.in', '286', null, null, '21.1291900', '79.1017491', '16');
INSERT INTO address VALUES ('5', 'Vijay nagar,indore', 'indore', '', '9893697010', 'govindaparihar111@gmail.com', '452001', 'https://www.pariharHardware.com', '330', null, null, '22.7174911', '75.8682826', '18');
INSERT INTO address VALUES ('6', 'M.G. road,Dhar', 'Dhar', '', '9770163261', 'shubham.mukati10@gmail.com', '452001', '', '324', null, null, '22.6258037', '75.3967860', '18');
INSERT INTO address VALUES ('7', 'trethuyj', '', '', '6786768686', '', '676876', '', '25', null, null, null, null, '2');
INSERT INTO address VALUES ('8', 'Rajwada garden,indore', '', '', '8448165561', 'reet@gmail.com', '452001', '', '330', null, null, '22.7282909', '75.9328794', '18');
INSERT INTO address VALUES ('9', 'SHRADDHANAGAR WADGAON ROAD YAVATMAL', '', '', '9168155999', 'anil99@gmail.com', '441005', '', '300', null, null, null, null, '16');
INSERT INTO address VALUES ('10', 'SHRADDHANAGAR WADGAON ROAD YAVATMAL', '', '', '9168155999', 'anil99@gmail.com', '441005', '', '300', null, null, null, null, '16');
INSERT INTO address VALUES ('12', 'indore', '', '', '9988721365', 'mamata@gmail.com', '452001', '', '330', null, null, '22.7081955', '75.8824422', '18');
INSERT INTO address VALUES ('22', null, null, null, '7804814213', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('23', 'indore', '', '', '9845698416', 'chhatrapal@gmail.com', '452001', '', '330', null, null, '22.7081955', '75.8824422', '18');
INSERT INTO address VALUES ('24', null, null, null, null, 'praveen.raghuvanshii@gmail.com', null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('25', 'Amravati', '', '', '7264913109', 'manojakae@rediffmail.com', '444601', '', '268', null, null, '20.9315561', '77.7584403', '16');
INSERT INTO address VALUES ('26', null, null, null, '7869999639', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('27', null, null, null, '1236547896', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('28', 'saket nagar', '', '', '7804814213', 'praveen.raghuvanshii@gmail.com', '452001', '', '330', null, null, '22.7233647', '75.9029443', '18');
INSERT INTO address VALUES ('29', 'lig', null, null, '7869999639', '7869999639', null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('30', 'saket nagar', null, null, '7804814213', 'praveen@gmail.com', null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('31', null, null, null, '9822679333', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('32', 'Dhar', '', '', '9685559864', 'vjay@gmail.com', '452001', '', '324', null, null, '22.4080049', '75.4051571', '18');
INSERT INTO address VALUES ('33', 'Dr.Bapat chowk Amravati', '', '', '9823967977', 'chavans.naresh@gmail.com', '444601', 't2b.top2bottoms@gmail.com', '268', null, null, '20.9416359', '77.7509303', '16');
INSERT INTO address VALUES ('34', 'Bapat chowk rathi complex amravati', '', '', '9403050924', 'gawliir1234@gmail.com', '444601', '', '268', null, null, '20.9416359', '77.7509303', '16');
INSERT INTO address VALUES ('35', 'Jaistambh Chowk Amravati\r\n444701', '', '', '9730110024', 'bagdejewellers@gmail.com', '444601', 'bagdejewellers@gmail.com', '268', null, null, '20.9280569', '77.7512108', '16');
INSERT INTO address VALUES ('36', 'indore', 'indore', 'indore', '7678676866', 'avi@gmail.com', '452001', '', '324', null, null, '22.7110070', '75.8872060', '18');
INSERT INTO address VALUES ('37', null, null, null, '9770683567', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('38', null, null, null, '9850393002', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('39', null, null, null, null, 'vinrathore.16@gmail.com', null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('40', null, null, null, '9665649035', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('41', null, null, null, '9175539053', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('42', null, null, null, '7879351505', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('43', null, null, null, '9405648390', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('44', 'Chandni Chowk {Near Post office} Walgaon Road Amravati', '', '', '9822995848', 'sydsam92@gmail.com', '444601', 'amravati.ht@rediffimail\'com', '268', null, null, '20.9416359', '77.7509303', '16');
INSERT INTO address VALUES ('45', '007,Nehru Timber Market Near Of SBI Bank Amravati', '', '', '0721267366', 'livingstyle@gmail.com', '444601', 'www.livingstylez.com', '268', null, null, '20.9416359', '77.7509303', '16');
INSERT INTO address VALUES ('46', 'Opp.City Kotwali,Jaistambh Chowk Amravati', '', '', '0721267138', 'ashokk40@gmail.com', '444601', '', '268', null, null, '20.9416359', '77.7509303', '16');
INSERT INTO address VALUES ('47', null, null, null, '8446890368', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('48', 'indore', 'indore', 'indore', '1234567890', 'abhi@gmail.com', '452002', 'www.google.co.in', '330', null, null, '22.7161740', '75.8532173', '18');
INSERT INTO address VALUES ('49', 'gangwal bus stand ,indore', 'indore', '', '9658526555', 'sunil@gmail.com', '452001', '', '330', null, null, '22.7277891', '75.8045990', '18');
INSERT INTO address VALUES ('50', 'Infront Muncipal corporation , Kawach Arcade, Basement,Gandhi   Road,Akola', '', '', '9405515667', 'Srushtiorgano@gmail.com', '444001', '', '267', null, null, '20.699648', '77.016144', '16');
INSERT INTO address VALUES ('51', '131B , Trade Centre ', '', '', '9039022400', 'kumar@jsinformatics.com', '452001', '', '330', null, null, '22.7211450', '75.8832872', '18');
INSERT INTO address VALUES ('52', 'shri vallabha complex, tilak road, akola', '', '', '8177970771', 'ddeokar025@gmail.com', '444001', '', '267', null, null, '20.7126569', '76.9965428', '16');
INSERT INTO address VALUES ('53', 'indore', 'indore', 'indore', '9685538949', 'sdff@gmail.com', '452001', '', '324', null, null, '22.7110070', '75.8872060', '18');
INSERT INTO address VALUES ('54', 'infront of muncipal corporation,kawach Arcade,basement,akol', '', '', '9405515667', 'srushtiorgano@gmail.com', '444001', '', '267', null, null, '20.699648', '77.016144', '16');
INSERT INTO address VALUES ('55', 'Das Sales. Infront of Muncipal Corporation.Kawach Arcade basement  Gandhi Road.Akola', '', '', '9766317105', 'dassales142@gmail.com', '444001', '', '267', null, null, '20.6996477', '77.0161436', '16');
INSERT INTO address VALUES ('56', 'Civil line road.Akola', '', '', '8888116610', 'tausifali56782@gmail.com', '444005', '', '267', null, null, '20.7247951', '77.0391754', '16');
INSERT INTO address VALUES ('57', 'Ratanlal plot chowk Blackberry complex', '', '', '0724241080', 'vivek_warokar11@rediff.com', '444005', '', '267', null, null, '20.7247951', '77.0391754', '16');
INSERT INTO address VALUES ('58', '516-520, Rafel Tower', '', '', '7804814213', '', '452001', '', '330', null, null, '22.7250806', '75.8941155', '18');
INSERT INTO address VALUES ('59', 'shivaji comercial', 'Ravi Nagar', 'Amravati', '7387924562', 'konikaganjare4@gmail.com', '444805', 'giftio.in', '267', null, null, '21.3060922', '77.5275463', '16');
INSERT INTO address VALUES ('60', null, null, null, '9405618390', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('61', 'Karanja Post Office, Shivaji Nagar', '', '', '7804814213', '', '452011', '', '601', null, null, '19.104589', '73.022817', '16');
INSERT INTO address VALUES ('62', 'Infront of old Income tax office,Gorakshan Road.Akola', '', '', '9552446570', 'harshadjain70@gmail.com', '444004', '', '267', null, null, '20.6877476', '77.0219936', '16');
INSERT INTO address VALUES ('63', 'Spaze iTech Park Building A, 339, Sohna Rd, Sector 49', '', '', '7804814213', '', '122018', '', '165', null, null, '28.4133081', '77.0433582', '10');
INSERT INTO address VALUES ('64', 'Reliace fresh classic moon building old palasia', '', '', '7804814213', '', '452001', '', '330', null, null, '22.7270091', '75.8809900', '18');
INSERT INTO address VALUES ('65', 'A/2, Classic Moon Building, 3rd Floor, Old Palasia, Above Reliance Fresh', '', '', '1234567896', '', '452001', '', '330', null, null, '22.7251355', '75.8926071', '18');
INSERT INTO address VALUES ('66', '3rd Floor, 5-A/2, Classic Moon Building, Greater Kailash Road, Saket Square, Above Reliance Fresh, Old Palasia', '', '', '7804814213', '', '452001', '', '330', null, null, '22.7251355', '75.8926071', '18');
INSERT INTO address VALUES ('67', '3rd Floor, 5-A/2, Classic Moon Building, Greater Kailash Road, Saket Square, Above Reliance Fresh, Old Palasia', '', '', '7804814213', '', '452001', '', '330', null, null, '22.7251355', '75.8926071', '18');
INSERT INTO address VALUES ('68', 'Global Cable Network, Mahajan Heights, Mangrulpir Road, Bypass', '', '', '1236547896', '', '444105', '', '606', null, null, '20.4827357', '77.4816693', '16');
INSERT INTO address VALUES ('69', 'kalamkhar', null, null, '8889128490', '8889128490', null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('70', 'Near Shivayanama math, Behind Rest House', '', '', '1478523693', '', '444105', '', '606', null, null, '20.4827357', '77.4816693', '16');
INSERT INTO address VALUES ('71', 'Nafees Restaurant , 30-B, Apollo Avenue, Greater Kailash Road, Old Palasia', '', '', '1478523698', '', '452002', '', '330', null, null, '22.7110256', '75.8341332', '18');
INSERT INTO address VALUES ('72', '30-B, Apollo Avenue, Greater Kailash Road, Old Palasia', '', '', '1236547896', '', '452002', '', '330', null, null, '22.7258415', '75.8879172', '18');
INSERT INTO address VALUES ('73', null, null, null, '9822131974', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('74', null, null, null, '7264913109', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('75', null, null, null, null, 'manojakale@rediffmail.com', null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('76', null, null, null, '8523697412', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('77', null, null, null, '8989864695', null, null, null, null, null, null, null, null, null);
INSERT INTO address VALUES ('78', 'saket nagar ssss', null, null, '121545555555', '5656633211@gmail.com', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `advertisement`
-- ----------------------------
DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(60) DEFAULT NULL,
  `city_id` int(55) DEFAULT NULL,
  `letitude` varchar(55) DEFAULT NULL,
  `longitude` varchar(55) DEFAULT NULL,
  `created_date` varchar(30) DEFAULT NULL,
  `updated_date` varchar(30) DEFAULT NULL,
  `isApproved` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of advertisement
-- ----------------------------
INSERT INTO advertisement VALUES ('1', 'vijay', '6 - 1.jpg', '517', '27.1766701', '78.0080745', '2016-01-15 13:58:35', '2016-01-15 13:58:35', '0');
INSERT INTO advertisement VALUES ('2', 'rahul', '2.png', '330', '22.7195687', '75.8577258', '2016-01-15 14:03:58', '2016-01-15 14:03:58', '1');
INSERT INTO advertisement VALUES ('3', 'sandeep', '10.11.15 - 1.jpg', '323', '22.9622672', '76.0507949', '2016-01-15 14:59:10', '2016-01-15 14:59:10', '0');
INSERT INTO advertisement VALUES ('4', 'dada', '', '125', '23.0225050', '72.5713621', '2016-01-15 15:09:38', '2016-01-15 15:09:38', '0');
INSERT INTO advertisement VALUES ('5', 'Praveen', 'coupon_3.jpg', '330', '22.7195687', '75.8577258', '2016-01-15 18:35:10', '2016-01-15 18:35:10', '1');
INSERT INTO advertisement VALUES ('6', 'ram', '6 - 1.jpg', '310', '22.3059709', '74.3558148', '2016-01-23 11:57:10', '2016-01-23 11:57:10', '0');
INSERT INTO advertisement VALUES ('7', 'sale', '6 - 1.jpg', '218', '9.4980667', '76.3388484', '2016-02-09 18:14:19', '2016-02-09 18:14:19', '0');
INSERT INTO advertisement VALUES ('8', 'discount', '10613132_1100280199984708_3912769564153299208_n - Copy.jpg', '524', '28.0337088', '79.1205419', '2016-02-09 18:21:56', '2016-02-09 18:21:56', '0');

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=607 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO city VALUES ('1', 'Adilabad', '1', null, null);
INSERT INTO city VALUES ('2', 'Anantapur', '1', null, null);
INSERT INTO city VALUES ('3', 'Chittoor', '1', null, null);
INSERT INTO city VALUES ('4', 'East Godavari', '1', null, null);
INSERT INTO city VALUES ('5', 'Guntur', '1', null, null);
INSERT INTO city VALUES ('6', 'Hyderabad', '1', null, null);
INSERT INTO city VALUES ('7', 'Kadapa', '1', null, null);
INSERT INTO city VALUES ('8', 'Karimnagar', '1', null, null);
INSERT INTO city VALUES ('9', 'Khammam', '1', null, null);
INSERT INTO city VALUES ('10', 'Krishna', '1', null, null);
INSERT INTO city VALUES ('11', 'Kurnool', '1', null, null);
INSERT INTO city VALUES ('12', 'Mahbubnagar', '1', null, null);
INSERT INTO city VALUES ('13', 'Medak', '1', null, null);
INSERT INTO city VALUES ('14', 'Nalgonda', '1', null, null);
INSERT INTO city VALUES ('15', 'Nellore', '1', null, null);
INSERT INTO city VALUES ('16', 'Nizamabad', '1', null, null);
INSERT INTO city VALUES ('17', 'Prakasam', '1', null, null);
INSERT INTO city VALUES ('18', 'Rangareddi', '1', null, null);
INSERT INTO city VALUES ('19', 'Srikakulam', '1', null, null);
INSERT INTO city VALUES ('20', 'Vishakhapatnam', '1', null, null);
INSERT INTO city VALUES ('21', 'Vizianagaram', '1', null, null);
INSERT INTO city VALUES ('22', 'Warangal', '1', null, null);
INSERT INTO city VALUES ('23', 'West Godavari', '1', null, null);
INSERT INTO city VALUES ('24', 'Anjaw', '2', null, null);
INSERT INTO city VALUES ('25', 'Changlang', '2', null, null);
INSERT INTO city VALUES ('26', 'East Kameng', '2', null, null);
INSERT INTO city VALUES ('27', 'Lohit', '2', null, null);
INSERT INTO city VALUES ('28', 'Lower Subansiri', '2', null, null);
INSERT INTO city VALUES ('29', 'Papum Pare', '2', null, null);
INSERT INTO city VALUES ('30', 'Tirap', '2', null, null);
INSERT INTO city VALUES ('31', 'Dibang Valley', '2', null, null);
INSERT INTO city VALUES ('32', 'Upper Subansiri', '2', null, null);
INSERT INTO city VALUES ('33', 'West Kameng', '2', null, null);
INSERT INTO city VALUES ('34', 'Barpeta', '3', null, null);
INSERT INTO city VALUES ('35', 'Bongaigaon', '3', null, null);
INSERT INTO city VALUES ('36', 'Cachar', '3', null, null);
INSERT INTO city VALUES ('37', 'Darrang', '3', null, null);
INSERT INTO city VALUES ('38', 'Dhemaji', '3', null, null);
INSERT INTO city VALUES ('39', 'Dhubri', '3', null, null);
INSERT INTO city VALUES ('40', 'Dibrugarh', '3', null, null);
INSERT INTO city VALUES ('41', 'Goalpara', '3', null, null);
INSERT INTO city VALUES ('42', 'Golaghat', '3', null, null);
INSERT INTO city VALUES ('43', 'Hailakandi', '3', null, null);
INSERT INTO city VALUES ('44', 'Jorhat', '3', null, null);
INSERT INTO city VALUES ('45', 'Karbi Anglong', '3', null, null);
INSERT INTO city VALUES ('46', 'Karimganj', '3', null, null);
INSERT INTO city VALUES ('47', 'Kokrajhar', '3', null, null);
INSERT INTO city VALUES ('48', 'Lakhimpur', '3', null, null);
INSERT INTO city VALUES ('49', 'Marigaon', '3', null, null);
INSERT INTO city VALUES ('50', 'Nagaon', '3', null, null);
INSERT INTO city VALUES ('51', 'Nalbari', '3', null, null);
INSERT INTO city VALUES ('52', 'North Cachar Hills', '3', null, null);
INSERT INTO city VALUES ('53', 'Sibsagar', '3', null, null);
INSERT INTO city VALUES ('54', 'Sonitpur', '3', null, null);
INSERT INTO city VALUES ('55', 'Tinsukia', '3', null, null);
INSERT INTO city VALUES ('56', 'Araria', '4', null, null);
INSERT INTO city VALUES ('57', 'Aurangabad', '4', null, null);
INSERT INTO city VALUES ('58', 'Banka', '4', null, null);
INSERT INTO city VALUES ('59', 'Begusarai', '4', null, null);
INSERT INTO city VALUES ('60', 'Bhagalpur', '4', null, null);
INSERT INTO city VALUES ('61', 'Bhojpur', '4', null, null);
INSERT INTO city VALUES ('62', 'Buxar', '4', null, null);
INSERT INTO city VALUES ('63', 'Darbhanga', '4', null, null);
INSERT INTO city VALUES ('64', 'Purba Champaran', '4', null, null);
INSERT INTO city VALUES ('65', 'Gaya', '4', null, null);
INSERT INTO city VALUES ('66', 'Gopalganj', '4', null, null);
INSERT INTO city VALUES ('67', 'Jamui', '4', null, null);
INSERT INTO city VALUES ('68', 'Jehanabad', '4', null, null);
INSERT INTO city VALUES ('69', 'Khagaria', '4', null, null);
INSERT INTO city VALUES ('70', 'Kishanganj', '4', null, null);
INSERT INTO city VALUES ('71', 'Kaimur', '4', null, null);
INSERT INTO city VALUES ('72', 'Katihar', '4', null, null);
INSERT INTO city VALUES ('73', 'Lakhisarai', '4', null, null);
INSERT INTO city VALUES ('74', 'Madhubani', '4', null, null);
INSERT INTO city VALUES ('75', 'Munger', '4', null, null);
INSERT INTO city VALUES ('76', 'Madhepura', '4', null, null);
INSERT INTO city VALUES ('77', 'Muzaffarpur', '4', null, null);
INSERT INTO city VALUES ('78', 'Nalanda', '4', null, null);
INSERT INTO city VALUES ('79', 'Nawada', '4', null, null);
INSERT INTO city VALUES ('80', 'Patna', '4', null, null);
INSERT INTO city VALUES ('81', 'Purnia', '4', null, null);
INSERT INTO city VALUES ('82', 'Rohtas', '4', null, null);
INSERT INTO city VALUES ('83', 'Saharsa', '4', null, null);
INSERT INTO city VALUES ('84', 'Samastipur', '4', null, null);
INSERT INTO city VALUES ('85', 'Sheohar', '4', null, null);
INSERT INTO city VALUES ('86', 'Sheikhpura', '4', null, null);
INSERT INTO city VALUES ('87', 'Saran', '4', null, null);
INSERT INTO city VALUES ('88', 'Sitamarhi', '4', null, null);
INSERT INTO city VALUES ('89', 'Supaul', '4', null, null);
INSERT INTO city VALUES ('90', 'Siwan', '4', null, null);
INSERT INTO city VALUES ('91', 'Vaishali', '4', null, null);
INSERT INTO city VALUES ('92', 'Pashchim Champaran', '4', null, null);
INSERT INTO city VALUES ('93', 'Bastar', '5', null, null);
INSERT INTO city VALUES ('94', 'Bilaspur', '5', null, null);
INSERT INTO city VALUES ('95', 'Dantewada', '5', null, null);
INSERT INTO city VALUES ('96', 'Dhamtari', '5', null, null);
INSERT INTO city VALUES ('97', 'Durg', '5', null, null);
INSERT INTO city VALUES ('98', 'Jashpur', '5', null, null);
INSERT INTO city VALUES ('99', 'Janjgir-Champa', '5', null, null);
INSERT INTO city VALUES ('100', 'Korba', '5', null, null);
INSERT INTO city VALUES ('101', 'Koriya', '5', null, null);
INSERT INTO city VALUES ('102', 'Kanker', '5', null, null);
INSERT INTO city VALUES ('103', 'Kawardha', '5', null, null);
INSERT INTO city VALUES ('104', 'Mahasamund', '5', null, null);
INSERT INTO city VALUES ('105', 'Raigarh', '5', null, null);
INSERT INTO city VALUES ('106', 'Rajnandgaon', '5', null, null);
INSERT INTO city VALUES ('107', 'Raipur', '5', null, null);
INSERT INTO city VALUES ('108', 'Surguja', '5', null, null);
INSERT INTO city VALUES ('109', 'Central Delhi', '6', null, null);
INSERT INTO city VALUES ('110', 'East Delhi', '6', null, null);
INSERT INTO city VALUES ('111', 'New Delhi', '6', null, null);
INSERT INTO city VALUES ('112', 'North Delhi', '6', null, null);
INSERT INTO city VALUES ('113', 'North East Delhi', '6', null, null);
INSERT INTO city VALUES ('114', 'North West Delhi', '6', null, null);
INSERT INTO city VALUES ('115', 'South Delhi', '6', null, null);
INSERT INTO city VALUES ('116', 'South West Delhi', '6', null, null);
INSERT INTO city VALUES ('117', 'West Delhi', '6', null, null);
INSERT INTO city VALUES ('118', 'Panaji', '7', null, null);
INSERT INTO city VALUES ('119', 'Margao', '7', null, null);
INSERT INTO city VALUES ('120', 'Mapusa', '7', null, null);
INSERT INTO city VALUES ('121', 'Ponda', '7', null, null);
INSERT INTO city VALUES ('122', 'Canacona', '7', null, null);
INSERT INTO city VALUES ('123', 'Mormugao', '7', null, null);
INSERT INTO city VALUES ('124', 'Vasco-da-Gama', '7', null, null);
INSERT INTO city VALUES ('125', 'Ahmedabad', '8', null, null);
INSERT INTO city VALUES ('126', 'Amreli District', '8', null, null);
INSERT INTO city VALUES ('127', 'Anand', '8', null, null);
INSERT INTO city VALUES ('128', 'Banaskantha', '8', null, null);
INSERT INTO city VALUES ('129', 'Bharuch', '8', null, null);
INSERT INTO city VALUES ('130', 'Bhavnagar', '8', null, null);
INSERT INTO city VALUES ('131', 'Dahod', '8', null, null);
INSERT INTO city VALUES ('132', 'The Dangs', '8', null, null);
INSERT INTO city VALUES ('133', 'Gandhinagar', '8', null, null);
INSERT INTO city VALUES ('134', 'Jamnagar', '8', null, null);
INSERT INTO city VALUES ('135', 'Junagadh', '8', null, null);
INSERT INTO city VALUES ('136', 'Kutch', '8', null, null);
INSERT INTO city VALUES ('137', 'Kheda', '8', null, null);
INSERT INTO city VALUES ('138', 'Mehsana', '8', null, null);
INSERT INTO city VALUES ('139', 'Narmada', '8', null, null);
INSERT INTO city VALUES ('140', 'Navsari', '8', null, null);
INSERT INTO city VALUES ('141', 'Patan', '8', null, null);
INSERT INTO city VALUES ('142', 'Panchmahal', '8', null, null);
INSERT INTO city VALUES ('143', 'Porbandar', '8', null, null);
INSERT INTO city VALUES ('144', 'Rajkot', '8', null, null);
INSERT INTO city VALUES ('145', 'Sabarkantha', '8', null, null);
INSERT INTO city VALUES ('146', 'Surendranagar', '8', null, null);
INSERT INTO city VALUES ('147', 'Surat', '8', null, null);
INSERT INTO city VALUES ('148', 'Vadodara', '8', null, null);
INSERT INTO city VALUES ('149', 'Valsad', '8', null, null);
INSERT INTO city VALUES ('150', 'Bilaspur', '9', null, null);
INSERT INTO city VALUES ('151', 'Chamba', '9', null, null);
INSERT INTO city VALUES ('152', 'Hamirpur', '9', null, null);
INSERT INTO city VALUES ('153', 'Kangra', '9', null, null);
INSERT INTO city VALUES ('154', 'Kinnaur', '9', null, null);
INSERT INTO city VALUES ('155', 'Kulu', '9', null, null);
INSERT INTO city VALUES ('156', 'Lahaul and Spiti', '9', null, null);
INSERT INTO city VALUES ('157', 'Mandi', '9', null, null);
INSERT INTO city VALUES ('158', 'Shimla', '9', null, null);
INSERT INTO city VALUES ('159', 'Sirmaur', '9', null, null);
INSERT INTO city VALUES ('160', 'Solan', '9', null, null);
INSERT INTO city VALUES ('161', 'Una', '9', null, null);
INSERT INTO city VALUES ('162', 'Bhiwani', '10', null, null);
INSERT INTO city VALUES ('163', 'Faridabad', '10', null, null);
INSERT INTO city VALUES ('164', 'Fatehabad', '10', null, null);
INSERT INTO city VALUES ('165', 'Gurgaon', '10', null, null);
INSERT INTO city VALUES ('166', 'Hissar', '10', null, null);
INSERT INTO city VALUES ('167', 'Jhajjar', '10', null, null);
INSERT INTO city VALUES ('168', 'Jind', '10', null, null);
INSERT INTO city VALUES ('169', 'Karnal', '10', null, null);
INSERT INTO city VALUES ('170', 'Kaithal', '10', null, null);
INSERT INTO city VALUES ('171', 'Kurukshetra', '10', null, null);
INSERT INTO city VALUES ('172', 'Mahendragarh', '10', null, null);
INSERT INTO city VALUES ('173', 'Mewat', '10', null, null);
INSERT INTO city VALUES ('174', 'Panchkula', '10', null, null);
INSERT INTO city VALUES ('175', 'Panipat', '10', null, null);
INSERT INTO city VALUES ('176', 'Rewari', '10', null, null);
INSERT INTO city VALUES ('177', 'Rohtak', '10', null, null);
INSERT INTO city VALUES ('178', 'Sirsa', '10', null, null);
INSERT INTO city VALUES ('179', 'Sonepat', '10', null, null);
INSERT INTO city VALUES ('180', 'Yamuna Nagar', '10', null, null);
INSERT INTO city VALUES ('181', 'Palwal', '10', null, null);
INSERT INTO city VALUES ('182', 'Anantnag', '11', null, null);
INSERT INTO city VALUES ('183', 'Badgam', '11', null, null);
INSERT INTO city VALUES ('184', 'Bandipore', '11', null, null);
INSERT INTO city VALUES ('185', 'Baramula', '11', null, null);
INSERT INTO city VALUES ('186', 'Doda', '11', null, null);
INSERT INTO city VALUES ('187', 'Jammu', '11', null, null);
INSERT INTO city VALUES ('188', 'Kargil', '11', null, null);
INSERT INTO city VALUES ('189', 'Kathua', '11', null, null);
INSERT INTO city VALUES ('190', 'Kupwara', '11', null, null);
INSERT INTO city VALUES ('191', 'Leh', '11', null, null);
INSERT INTO city VALUES ('192', 'Poonch', '11', null, null);
INSERT INTO city VALUES ('193', 'Pulwama', '11', null, null);
INSERT INTO city VALUES ('194', 'Rajauri', '11', null, null);
INSERT INTO city VALUES ('195', 'Srinagar', '11', null, null);
INSERT INTO city VALUES ('196', 'Samba', '11', null, null);
INSERT INTO city VALUES ('197', 'Udhampur', '11', null, null);
INSERT INTO city VALUES ('198', 'Bokaro', '12', null, null);
INSERT INTO city VALUES ('199', 'Chatra', '12', null, null);
INSERT INTO city VALUES ('200', 'Deoghar', '12', null, null);
INSERT INTO city VALUES ('201', 'Dhanbad', '12', null, null);
INSERT INTO city VALUES ('202', 'Dumka', '12', null, null);
INSERT INTO city VALUES ('203', 'Purba Singhbhum', '12', null, null);
INSERT INTO city VALUES ('204', 'Garhwa', '12', null, null);
INSERT INTO city VALUES ('205', 'Giridih', '12', null, null);
INSERT INTO city VALUES ('206', 'Godda', '12', null, null);
INSERT INTO city VALUES ('207', 'Gumla', '12', null, null);
INSERT INTO city VALUES ('208', 'Hazaribagh', '12', null, null);
INSERT INTO city VALUES ('209', 'Koderma', '12', null, null);
INSERT INTO city VALUES ('210', 'Lohardaga', '12', null, null);
INSERT INTO city VALUES ('211', 'Pakur', '12', null, null);
INSERT INTO city VALUES ('212', 'Palamu', '12', null, null);
INSERT INTO city VALUES ('213', 'Ranchi', '12', null, null);
INSERT INTO city VALUES ('214', 'Sahibganj', '12', null, null);
INSERT INTO city VALUES ('215', 'Seraikela and Kharsawan', '12', null, null);
INSERT INTO city VALUES ('216', 'Pashchim Singhbhum', '12', null, null);
INSERT INTO city VALUES ('217', 'Ramgarh', '12', null, null);
INSERT INTO city VALUES ('218', 'Alappuzha', '13', null, null);
INSERT INTO city VALUES ('219', 'Ernakulam', '13', null, null);
INSERT INTO city VALUES ('220', 'Idukki', '13', null, null);
INSERT INTO city VALUES ('221', 'Kollam', '13', null, null);
INSERT INTO city VALUES ('222', 'Kannur', '13', null, null);
INSERT INTO city VALUES ('223', 'Kasaragod', '13', null, null);
INSERT INTO city VALUES ('224', 'Kottayam', '13', null, null);
INSERT INTO city VALUES ('225', 'Kozhikode', '13', null, null);
INSERT INTO city VALUES ('226', 'Malappuram', '13', null, null);
INSERT INTO city VALUES ('227', 'Palakkad', '13', null, null);
INSERT INTO city VALUES ('228', 'Pathanamthitta', '13', null, null);
INSERT INTO city VALUES ('229', 'Thrissur', '13', null, null);
INSERT INTO city VALUES ('230', 'Thiruvananthapuram', '13', null, null);
INSERT INTO city VALUES ('231', 'Wayanad', '13', null, null);
INSERT INTO city VALUES ('232', 'Bidar', '14', null, null);
INSERT INTO city VALUES ('233', 'Belgaum', '14', null, null);
INSERT INTO city VALUES ('234', 'Bijapur', '14', null, null);
INSERT INTO city VALUES ('235', 'Bagalkot', '14', null, null);
INSERT INTO city VALUES ('236', 'Bellary', '14', null, null);
INSERT INTO city VALUES ('237', 'Bangalore Rural District', '14', null, null);
INSERT INTO city VALUES ('238', 'Bangalore Urban District', '14', null, null);
INSERT INTO city VALUES ('239', 'Chamarajnagar', '14', null, null);
INSERT INTO city VALUES ('240', 'Chikmagalur', '14', null, null);
INSERT INTO city VALUES ('241', 'Chitradurga', '14', null, null);
INSERT INTO city VALUES ('242', 'Davanagere', '14', null, null);
INSERT INTO city VALUES ('243', 'Dharwad', '14', null, null);
INSERT INTO city VALUES ('244', 'Dakshina Kannada', '14', null, null);
INSERT INTO city VALUES ('245', 'Gadag', '14', null, null);
INSERT INTO city VALUES ('246', 'Gulbarga', '14', null, null);
INSERT INTO city VALUES ('247', 'Hassan', '14', null, null);
INSERT INTO city VALUES ('248', 'Haveri District', '14', null, null);
INSERT INTO city VALUES ('249', 'Kodagu', '14', null, null);
INSERT INTO city VALUES ('250', 'Kolar', '14', null, null);
INSERT INTO city VALUES ('251', 'Koppal', '14', null, null);
INSERT INTO city VALUES ('252', 'Mandya', '14', null, null);
INSERT INTO city VALUES ('253', 'Mysore', '14', null, null);
INSERT INTO city VALUES ('254', 'Raichur', '14', null, null);
INSERT INTO city VALUES ('255', 'Shimoga', '14', null, null);
INSERT INTO city VALUES ('256', 'Tumkur', '14', null, null);
INSERT INTO city VALUES ('257', 'Udupi', '14', null, null);
INSERT INTO city VALUES ('258', 'Uttara Kannada', '14', null, null);
INSERT INTO city VALUES ('259', 'Ramanagara', '14', null, null);
INSERT INTO city VALUES ('260', 'Chikballapur', '14', null, null);
INSERT INTO city VALUES ('261', 'Yadagiri', '14', null, null);
INSERT INTO city VALUES ('262', 'Jowai', '15', null, null);
INSERT INTO city VALUES ('263', 'Nongstoin', '15', null, null);
INSERT INTO city VALUES ('264', 'Shillong', '15', null, null);
INSERT INTO city VALUES ('265', 'Tura', '15', null, null);
INSERT INTO city VALUES ('266', 'Ahmednagar', '16', null, null);
INSERT INTO city VALUES ('267', 'Akola', '16', null, null);
INSERT INTO city VALUES ('268', 'Amrawati', '16', null, null);
INSERT INTO city VALUES ('269', 'Aurangabad', '16', null, null);
INSERT INTO city VALUES ('270', 'Bhandara', '16', null, null);
INSERT INTO city VALUES ('271', 'Beed', '16', null, null);
INSERT INTO city VALUES ('272', 'Buldhana', '16', null, null);
INSERT INTO city VALUES ('273', 'Chandrapur', '16', null, null);
INSERT INTO city VALUES ('274', 'Dhule', '16', null, null);
INSERT INTO city VALUES ('275', 'Gadchiroli', '16', null, null);
INSERT INTO city VALUES ('276', 'Gondiya', '16', null, null);
INSERT INTO city VALUES ('277', 'Hingoli', '16', null, null);
INSERT INTO city VALUES ('278', 'Jalgaon', '16', null, null);
INSERT INTO city VALUES ('279', 'Jalna', '16', null, null);
INSERT INTO city VALUES ('280', 'Kolhapur', '16', null, null);
INSERT INTO city VALUES ('281', 'Latur', '16', null, null);
INSERT INTO city VALUES ('282', 'Mumbai City', '16', null, null);
INSERT INTO city VALUES ('283', 'Mumbai suburban', '16', null, null);
INSERT INTO city VALUES ('284', 'Nandurbar', '16', null, null);
INSERT INTO city VALUES ('285', 'Nanded', '16', null, null);
INSERT INTO city VALUES ('286', 'Nagpur', '16', null, null);
INSERT INTO city VALUES ('287', 'Nashik', '16', null, null);
INSERT INTO city VALUES ('288', 'Osmanabad', '16', null, null);
INSERT INTO city VALUES ('289', 'Parbhani', '16', null, null);
INSERT INTO city VALUES ('290', 'Pune', '16', null, null);
INSERT INTO city VALUES ('291', 'Raigad', '16', null, null);
INSERT INTO city VALUES ('292', 'Ratnagiri', '16', null, null);
INSERT INTO city VALUES ('293', 'Sindhudurg', '16', null, null);
INSERT INTO city VALUES ('294', 'Sangli', '16', null, null);
INSERT INTO city VALUES ('295', 'Solapur', '16', null, null);
INSERT INTO city VALUES ('296', 'Satara', '16', null, null);
INSERT INTO city VALUES ('297', 'Thane', '16', null, null);
INSERT INTO city VALUES ('298', 'Wardha', '16', null, null);
INSERT INTO city VALUES ('299', 'Washim', '16', null, null);
INSERT INTO city VALUES ('300', 'Yavatmal', '16', null, null);
INSERT INTO city VALUES ('301', 'Bishnupur', '17', null, null);
INSERT INTO city VALUES ('302', 'Churachandpur', '17', null, null);
INSERT INTO city VALUES ('303', 'Chandel', '17', null, null);
INSERT INTO city VALUES ('304', 'Imphal East', '17', null, null);
INSERT INTO city VALUES ('305', 'Senapati', '17', null, null);
INSERT INTO city VALUES ('306', 'Tamenglong', '17', null, null);
INSERT INTO city VALUES ('307', 'Thoubal', '17', null, null);
INSERT INTO city VALUES ('308', 'Ukhrul', '17', null, null);
INSERT INTO city VALUES ('309', 'Imphal West', '17', null, null);
INSERT INTO city VALUES ('310', 'Alirajpur', '18', null, null);
INSERT INTO city VALUES ('311', 'Anuppur', '18', null, null);
INSERT INTO city VALUES ('312', 'Ashok Nagar', '18', null, null);
INSERT INTO city VALUES ('313', 'Balaghat', '18', null, null);
INSERT INTO city VALUES ('314', 'Barwani', '18', null, null);
INSERT INTO city VALUES ('315', 'Betul', '18', null, null);
INSERT INTO city VALUES ('316', 'Bhind', '18', null, null);
INSERT INTO city VALUES ('317', 'Bhopal', '18', null, null);
INSERT INTO city VALUES ('318', 'Burhanpur', '18', null, null);
INSERT INTO city VALUES ('319', 'Chhatarpur', '18', null, null);
INSERT INTO city VALUES ('320', 'Chhindwara', '18', null, null);
INSERT INTO city VALUES ('321', 'Damoh', '18', null, null);
INSERT INTO city VALUES ('322', 'Datia', '18', null, null);
INSERT INTO city VALUES ('323', 'Dewas', '18', null, null);
INSERT INTO city VALUES ('324', 'Dhar', '18', null, null);
INSERT INTO city VALUES ('325', 'Dindori', '18', null, null);
INSERT INTO city VALUES ('326', 'Guna', '18', null, null);
INSERT INTO city VALUES ('327', 'Gwalior', '18', null, null);
INSERT INTO city VALUES ('328', 'Harda', '18', null, null);
INSERT INTO city VALUES ('329', 'Hoshangabad', '18', null, null);
INSERT INTO city VALUES ('330', 'Indore', '18', null, null);
INSERT INTO city VALUES ('331', 'Jabalpur', '18', null, null);
INSERT INTO city VALUES ('332', 'Jhabua', '18', null, null);
INSERT INTO city VALUES ('333', 'Katni', '18', null, null);
INSERT INTO city VALUES ('334', 'Khandwa', '18', null, null);
INSERT INTO city VALUES ('335', 'Khargone', '18', null, null);
INSERT INTO city VALUES ('336', 'Mandla', '18', null, null);
INSERT INTO city VALUES ('337', 'Mandsaur', '18', null, null);
INSERT INTO city VALUES ('338', 'Morena', '18', null, null);
INSERT INTO city VALUES ('339', 'Narsinghpur', '18', null, null);
INSERT INTO city VALUES ('340', 'Neemuch', '18', null, null);
INSERT INTO city VALUES ('341', 'Panna', '18', null, null);
INSERT INTO city VALUES ('342', 'Rewa', '18', null, null);
INSERT INTO city VALUES ('343', 'Rajgarh', '18', null, null);
INSERT INTO city VALUES ('344', 'Ratlam', '18', null, null);
INSERT INTO city VALUES ('345', 'Raisen', '18', null, null);
INSERT INTO city VALUES ('346', 'Sagar', '18', null, null);
INSERT INTO city VALUES ('347', 'Satna', '18', null, null);
INSERT INTO city VALUES ('348', 'Sehore', '18', null, null);
INSERT INTO city VALUES ('349', 'Seoni', '18', null, null);
INSERT INTO city VALUES ('350', 'Shahdol', '18', null, null);
INSERT INTO city VALUES ('351', 'Shajapur', '18', null, null);
INSERT INTO city VALUES ('352', 'Sheopur', '18', null, null);
INSERT INTO city VALUES ('353', 'Shivpuri', '18', null, null);
INSERT INTO city VALUES ('354', 'Sidhi', '18', null, null);
INSERT INTO city VALUES ('355', 'Singrauli', '18', null, null);
INSERT INTO city VALUES ('356', 'Tikamgarh', '18', null, null);
INSERT INTO city VALUES ('357', 'Ujjain', '18', null, null);
INSERT INTO city VALUES ('358', 'Umaria', '18', null, null);
INSERT INTO city VALUES ('359', 'Vidisha', '18', null, null);
INSERT INTO city VALUES ('360', 'Aizawl', '19', null, null);
INSERT INTO city VALUES ('361', 'Champhai', '19', null, null);
INSERT INTO city VALUES ('362', 'Kolasib', '19', null, null);
INSERT INTO city VALUES ('363', 'Lawngtlai', '19', null, null);
INSERT INTO city VALUES ('364', 'Lunglei', '19', null, null);
INSERT INTO city VALUES ('365', 'Mamit', '19', null, null);
INSERT INTO city VALUES ('366', 'Saiha', '19', null, null);
INSERT INTO city VALUES ('367', 'Serchhip', '19', null, null);
INSERT INTO city VALUES ('368', 'Dimapur', '20', null, null);
INSERT INTO city VALUES ('369', 'Kohima', '20', null, null);
INSERT INTO city VALUES ('370', 'Mokokchung', '20', null, null);
INSERT INTO city VALUES ('371', 'Mon', '20', null, null);
INSERT INTO city VALUES ('372', 'Phek', '20', null, null);
INSERT INTO city VALUES ('373', 'Tuensang', '20', null, null);
INSERT INTO city VALUES ('374', 'Wokha', '20', null, null);
INSERT INTO city VALUES ('375', 'Zunheboto', '20', null, null);
INSERT INTO city VALUES ('376', 'Angul', '21', null, null);
INSERT INTO city VALUES ('377', 'Boudh', '21', null, null);
INSERT INTO city VALUES ('378', 'Bhadrak', '21', null, null);
INSERT INTO city VALUES ('379', 'Bolangir', '21', null, null);
INSERT INTO city VALUES ('380', 'Bargarh', '21', null, null);
INSERT INTO city VALUES ('381', 'Baleswar', '21', null, null);
INSERT INTO city VALUES ('382', 'Cuttack', '21', null, null);
INSERT INTO city VALUES ('383', 'Debagarh', '21', null, null);
INSERT INTO city VALUES ('384', 'Dhenkanal', '21', null, null);
INSERT INTO city VALUES ('385', 'Ganjam', '21', null, null);
INSERT INTO city VALUES ('386', 'Gajapati', '21', null, null);
INSERT INTO city VALUES ('387', 'Jharsuguda', '21', null, null);
INSERT INTO city VALUES ('388', 'Jajapur', '21', null, null);
INSERT INTO city VALUES ('389', 'Jagatsinghpur', '21', null, null);
INSERT INTO city VALUES ('390', 'Khordha', '21', null, null);
INSERT INTO city VALUES ('391', 'Kendujhar', '21', null, null);
INSERT INTO city VALUES ('392', 'Kalahandi', '21', null, null);
INSERT INTO city VALUES ('393', 'Kandhamal', '21', null, null);
INSERT INTO city VALUES ('394', 'Koraput', '21', null, null);
INSERT INTO city VALUES ('395', 'Kendrapara', '21', null, null);
INSERT INTO city VALUES ('396', 'Malkangiri', '21', null, null);
INSERT INTO city VALUES ('397', 'Mayurbhanj', '21', null, null);
INSERT INTO city VALUES ('398', 'Nabarangpur', '21', null, null);
INSERT INTO city VALUES ('399', 'Nuapada', '21', null, null);
INSERT INTO city VALUES ('400', 'Nayagarh', '21', null, null);
INSERT INTO city VALUES ('401', 'Puri', '21', null, null);
INSERT INTO city VALUES ('402', 'Rayagada', '21', null, null);
INSERT INTO city VALUES ('403', 'Sambalpur', '21', null, null);
INSERT INTO city VALUES ('404', 'Subarnapur', '21', null, null);
INSERT INTO city VALUES ('405', 'Sundargarh', '21', null, null);
INSERT INTO city VALUES ('406', 'Amritsar', '22', null, null);
INSERT INTO city VALUES ('407', 'Bathinda', '22', null, null);
INSERT INTO city VALUES ('408', 'Firozpur', '22', null, null);
INSERT INTO city VALUES ('409', 'Faridkot', '22', null, null);
INSERT INTO city VALUES ('410', 'Fatehgarh Sahib', '22', null, null);
INSERT INTO city VALUES ('411', 'Gurdaspur', '22', null, null);
INSERT INTO city VALUES ('412', 'Hoshiarpur', '22', null, null);
INSERT INTO city VALUES ('413', 'Jalandhar', '22', null, null);
INSERT INTO city VALUES ('414', 'Kapurthala', '22', null, null);
INSERT INTO city VALUES ('415', 'Ludhiana', '22', null, null);
INSERT INTO city VALUES ('416', 'Mansa', '22', null, null);
INSERT INTO city VALUES ('417', 'Moga', '22', null, null);
INSERT INTO city VALUES ('418', 'Mukatsar', '22', null, null);
INSERT INTO city VALUES ('419', 'Nawan Shehar', '22', null, null);
INSERT INTO city VALUES ('420', 'Patiala', '22', null, null);
INSERT INTO city VALUES ('421', 'Rupnagar', '22', null, null);
INSERT INTO city VALUES ('422', 'Sangrur', '22', null, null);
INSERT INTO city VALUES ('423', 'Ajmer', '23', null, null);
INSERT INTO city VALUES ('424', 'Alwar', '23', null, null);
INSERT INTO city VALUES ('425', 'Bikaner', '23', null, null);
INSERT INTO city VALUES ('426', 'Barmer', '23', null, null);
INSERT INTO city VALUES ('427', 'Banswara', '23', null, null);
INSERT INTO city VALUES ('428', 'Bharatpur', '23', null, null);
INSERT INTO city VALUES ('429', 'Baran', '23', null, null);
INSERT INTO city VALUES ('430', 'Bundi', '23', null, null);
INSERT INTO city VALUES ('431', 'Bhilwara', '23', null, null);
INSERT INTO city VALUES ('432', 'Churu', '23', null, null);
INSERT INTO city VALUES ('433', 'Chittorgarh', '23', null, null);
INSERT INTO city VALUES ('434', 'Dausa', '23', null, null);
INSERT INTO city VALUES ('435', 'Dholpur', '23', null, null);
INSERT INTO city VALUES ('436', 'Dungapur', '23', null, null);
INSERT INTO city VALUES ('437', 'Ganganagar', '23', null, null);
INSERT INTO city VALUES ('438', 'Hanumangarh', '23', null, null);
INSERT INTO city VALUES ('439', 'Juhnjhunun', '23', null, null);
INSERT INTO city VALUES ('440', 'Jalore', '23', null, null);
INSERT INTO city VALUES ('441', 'Jodhpur', '23', null, null);
INSERT INTO city VALUES ('442', 'Jaipur', '23', null, null);
INSERT INTO city VALUES ('443', 'Jaisalmer', '23', null, null);
INSERT INTO city VALUES ('444', 'Jhalawar', '23', null, null);
INSERT INTO city VALUES ('445', 'Karauli', '23', null, null);
INSERT INTO city VALUES ('446', 'Kota', '23', null, null);
INSERT INTO city VALUES ('447', 'Nagaur', '23', null, null);
INSERT INTO city VALUES ('448', 'Pali', '23', null, null);
INSERT INTO city VALUES ('449', 'Pratapgarh', '23', null, null);
INSERT INTO city VALUES ('450', 'Rajsamand', '23', null, null);
INSERT INTO city VALUES ('451', 'Sikar', '23', null, null);
INSERT INTO city VALUES ('452', 'Sawai Madhopur', '23', null, null);
INSERT INTO city VALUES ('453', 'Sirohi', '23', null, null);
INSERT INTO city VALUES ('454', 'Tonk', '23', null, null);
INSERT INTO city VALUES ('455', 'Udaipur', '23', null, null);
INSERT INTO city VALUES ('456', 'East Sikkim', '24', null, null);
INSERT INTO city VALUES ('457', 'North Sikkim', '24', null, null);
INSERT INTO city VALUES ('458', 'South Sikkim', '24', null, null);
INSERT INTO city VALUES ('459', 'Gangtok', '24', null, null);
INSERT INTO city VALUES ('460', 'Ariyalur', '25', null, null);
INSERT INTO city VALUES ('461', 'Chennai', '25', null, null);
INSERT INTO city VALUES ('462', 'Coimbatore', '25', null, null);
INSERT INTO city VALUES ('463', 'Cuddalore', '25', null, null);
INSERT INTO city VALUES ('464', 'Dharmapuri', '25', null, null);
INSERT INTO city VALUES ('465', 'Dindigul', '25', null, null);
INSERT INTO city VALUES ('466', 'Erode', '25', null, null);
INSERT INTO city VALUES ('467', 'Kanchipuram', '25', null, null);
INSERT INTO city VALUES ('468', 'Kanyakumari', '25', null, null);
INSERT INTO city VALUES ('469', 'Karur', '25', null, null);
INSERT INTO city VALUES ('470', 'Madurai', '25', null, null);
INSERT INTO city VALUES ('471', 'Nagapattinam', '25', null, null);
INSERT INTO city VALUES ('472', 'The Nilgiris', '25', null, null);
INSERT INTO city VALUES ('473', 'Namakkal', '25', null, null);
INSERT INTO city VALUES ('474', 'Perambalur', '25', null, null);
INSERT INTO city VALUES ('475', 'Pudukkottai', '25', null, null);
INSERT INTO city VALUES ('476', 'Ramanathapuram', '25', null, null);
INSERT INTO city VALUES ('477', 'Salem', '25', null, null);
INSERT INTO city VALUES ('478', 'Sivagangai', '25', null, null);
INSERT INTO city VALUES ('479', 'Tiruppur', '25', null, null);
INSERT INTO city VALUES ('480', 'Tiruchirappalli', '25', null, null);
INSERT INTO city VALUES ('481', 'Theni', '25', null, null);
INSERT INTO city VALUES ('482', 'Tirunelveli', '25', null, null);
INSERT INTO city VALUES ('483', 'Thanjavur', '25', null, null);
INSERT INTO city VALUES ('484', 'Thoothukudi', '25', null, null);
INSERT INTO city VALUES ('485', 'Thiruvallur', '25', null, null);
INSERT INTO city VALUES ('486', 'Thiruvarur', '25', null, null);
INSERT INTO city VALUES ('487', 'Tiruvannamalai', '25', null, null);
INSERT INTO city VALUES ('488', 'Vellore', '25', null, null);
INSERT INTO city VALUES ('489', 'Villupuram', '25', null, null);
INSERT INTO city VALUES ('490', 'Hyderabad', '26', null, null);
INSERT INTO city VALUES ('491', 'Warangal', '26', null, null);
INSERT INTO city VALUES ('492', 'Mahabubnagar', '26', null, null);
INSERT INTO city VALUES ('493', 'Nizamabad', '26', null, null);
INSERT INTO city VALUES ('494', 'Suryapet', '26', null, null);
INSERT INTO city VALUES ('495', 'Nalgonda', '26', null, null);
INSERT INTO city VALUES ('496', 'Agartala', '27', null, null);
INSERT INTO city VALUES ('497', 'Badharghat', '27', null, null);
INSERT INTO city VALUES ('498', 'Dharmanagar', '27', null, null);
INSERT INTO city VALUES ('499', 'Indranagar', '27', null, null);
INSERT INTO city VALUES ('500', 'Jogendranagar', '27', null, null);
INSERT INTO city VALUES ('501', 'Kailasahar', '27', null, null);
INSERT INTO city VALUES ('502', 'Khowai', '27', null, null);
INSERT INTO city VALUES ('503', 'Udaipur', '27', null, null);
INSERT INTO city VALUES ('504', 'Almora', '28', null, null);
INSERT INTO city VALUES ('505', 'Bageshwar', '28', null, null);
INSERT INTO city VALUES ('506', 'Chamoli', '28', null, null);
INSERT INTO city VALUES ('507', 'Champawat', '28', null, null);
INSERT INTO city VALUES ('508', 'Dehradun', '28', null, null);
INSERT INTO city VALUES ('509', 'Haridwar', '28', null, null);
INSERT INTO city VALUES ('510', 'Nainital', '28', null, null);
INSERT INTO city VALUES ('511', 'Pauri Garhwal', '28', null, null);
INSERT INTO city VALUES ('512', 'Pithoragharh', '28', null, null);
INSERT INTO city VALUES ('513', 'Rudraprayag', '28', null, null);
INSERT INTO city VALUES ('514', 'Tehri Garhwal', '28', null, null);
INSERT INTO city VALUES ('515', 'Udham Singh Nagar', '28', null, null);
INSERT INTO city VALUES ('516', 'Uttarkashi', '28', null, null);
INSERT INTO city VALUES ('517', 'Agra', '29', null, null);
INSERT INTO city VALUES ('518', 'Allahabad', '29', null, null);
INSERT INTO city VALUES ('519', 'Aligarh', '29', null, null);
INSERT INTO city VALUES ('520', 'Ambedkar Nagar', '29', null, null);
INSERT INTO city VALUES ('521', 'Auraiya', '29', null, null);
INSERT INTO city VALUES ('522', 'Azamgarh', '29', null, null);
INSERT INTO city VALUES ('523', 'Barabanki', '29', null, null);
INSERT INTO city VALUES ('524', 'Badaun', '29', null, null);
INSERT INTO city VALUES ('525', 'Bagpat', '29', null, null);
INSERT INTO city VALUES ('526', 'Bahraich', '29', null, null);
INSERT INTO city VALUES ('527', 'Bijnor', '29', null, null);
INSERT INTO city VALUES ('528', 'Ballia', '29', null, null);
INSERT INTO city VALUES ('529', 'Banda', '29', null, null);
INSERT INTO city VALUES ('530', 'Balrampur', '29', null, null);
INSERT INTO city VALUES ('531', 'Bareilly', '29', null, null);
INSERT INTO city VALUES ('532', 'Basti', '29', null, null);
INSERT INTO city VALUES ('533', 'Bulandshahr', '29', null, null);
INSERT INTO city VALUES ('534', 'Chandauli', '29', null, null);
INSERT INTO city VALUES ('535', 'Chitrakoot', '29', null, null);
INSERT INTO city VALUES ('536', 'Deoria', '29', null, null);
INSERT INTO city VALUES ('537', 'Etah', '29', null, null);
INSERT INTO city VALUES ('538', 'Kanshiram Nagar', '29', null, null);
INSERT INTO city VALUES ('539', 'Etawah', '29', null, null);
INSERT INTO city VALUES ('540', 'Firozabad', '29', null, null);
INSERT INTO city VALUES ('541', 'Farrukhabad', '29', null, null);
INSERT INTO city VALUES ('542', 'Fatehpur', '29', null, null);
INSERT INTO city VALUES ('543', 'Faizabad', '29', null, null);
INSERT INTO city VALUES ('544', 'Gautam Buddha Nagar', '29', null, null);
INSERT INTO city VALUES ('545', 'Gonda', '29', null, null);
INSERT INTO city VALUES ('546', 'Ghazipur', '29', null, null);
INSERT INTO city VALUES ('547', 'Gorkakhpur', '29', null, null);
INSERT INTO city VALUES ('548', 'Ghaziabad', '29', null, null);
INSERT INTO city VALUES ('549', 'Hamirpur', '29', null, null);
INSERT INTO city VALUES ('550', 'Hardoi', '29', null, null);
INSERT INTO city VALUES ('551', 'Mahamaya Nagar', '29', null, null);
INSERT INTO city VALUES ('552', 'Jhansi', '29', null, null);
INSERT INTO city VALUES ('553', 'Jalaun', '29', null, null);
INSERT INTO city VALUES ('554', 'Jyotiba Phule Nagar', '29', null, null);
INSERT INTO city VALUES ('555', 'Jaunpur District', '29', null, null);
INSERT INTO city VALUES ('556', 'Kanpur Dehat', '29', null, null);
INSERT INTO city VALUES ('557', 'Kannauj', '29', null, null);
INSERT INTO city VALUES ('558', 'Kanpur Nagar', '29', null, null);
INSERT INTO city VALUES ('559', 'Kaushambi', '29', null, null);
INSERT INTO city VALUES ('560', 'Kushinagar', '29', null, null);
INSERT INTO city VALUES ('561', 'Lalitpur', '29', null, null);
INSERT INTO city VALUES ('562', 'Lakhimpur Kheri', '29', null, null);
INSERT INTO city VALUES ('563', 'Lucknow', '29', null, null);
INSERT INTO city VALUES ('564', 'Mau', '29', null, null);
INSERT INTO city VALUES ('565', 'Meerut', '29', null, null);
INSERT INTO city VALUES ('566', 'Maharajganj', '29', null, null);
INSERT INTO city VALUES ('567', 'Mahoba', '29', null, null);
INSERT INTO city VALUES ('568', 'Mirzapur', '29', null, null);
INSERT INTO city VALUES ('569', 'Moradabad', '29', null, null);
INSERT INTO city VALUES ('570', 'Mainpuri', '29', null, null);
INSERT INTO city VALUES ('571', 'Mathura', '29', null, null);
INSERT INTO city VALUES ('572', 'Muzaffarnagar', '29', null, null);
INSERT INTO city VALUES ('573', 'Pilibhit', '29', null, null);
INSERT INTO city VALUES ('574', 'Pratapgarh', '29', null, null);
INSERT INTO city VALUES ('575', 'Rampur', '29', null, null);
INSERT INTO city VALUES ('576', 'Rae Bareli', '29', null, null);
INSERT INTO city VALUES ('577', 'Saharanpur', '29', null, null);
INSERT INTO city VALUES ('578', 'Sitapur', '29', null, null);
INSERT INTO city VALUES ('579', 'Shahjahanpur', '29', null, null);
INSERT INTO city VALUES ('580', 'Sant Kabir Nagar', '29', null, null);
INSERT INTO city VALUES ('581', 'Siddharthnagar', '29', null, null);
INSERT INTO city VALUES ('582', 'Sonbhadra', '29', null, null);
INSERT INTO city VALUES ('583', 'Sant Ravidas Nagar', '29', null, null);
INSERT INTO city VALUES ('584', 'Sultanpur', '29', null, null);
INSERT INTO city VALUES ('585', 'Shravasti', '29', null, null);
INSERT INTO city VALUES ('586', 'Unnao', '29', null, null);
INSERT INTO city VALUES ('587', 'Varanasi', '29', null, null);
INSERT INTO city VALUES ('588', 'Birbhum', '30', null, null);
INSERT INTO city VALUES ('589', 'Bankura', '30', null, null);
INSERT INTO city VALUES ('590', 'Bardhaman', '30', null, null);
INSERT INTO city VALUES ('591', 'Darjeeling', '30', null, null);
INSERT INTO city VALUES ('592', 'Dakshin Dinajpur', '30', null, null);
INSERT INTO city VALUES ('593', 'Hooghly', '30', null, null);
INSERT INTO city VALUES ('594', 'Howrah', '30', null, null);
INSERT INTO city VALUES ('595', 'Jalpaiguri', '30', null, null);
INSERT INTO city VALUES ('596', 'Cooch Behar', '30', null, null);
INSERT INTO city VALUES ('597', 'Kolkata', '30', null, null);
INSERT INTO city VALUES ('598', 'Malda', '30', null, null);
INSERT INTO city VALUES ('599', 'Midnapore', '30', null, null);
INSERT INTO city VALUES ('600', 'Murshidabad', '30', null, null);
INSERT INTO city VALUES ('601', 'Nadia', '30', null, null);
INSERT INTO city VALUES ('602', 'North 24 Parganas', '30', null, null);
INSERT INTO city VALUES ('603', 'South 24 Parganas', '30', null, null);
INSERT INTO city VALUES ('604', 'Purulia', '30', null, null);
INSERT INTO city VALUES ('605', 'Uttar Dinajpur', '30', null, null);
INSERT INTO city VALUES ('606', 'Karanja Lad', '16', null, null);

-- ----------------------------
-- Table structure for `complementary_code`
-- ----------------------------
DROP TABLE IF EXISTS `complementary_code`;
CREATE TABLE `complementary_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` varchar(55) DEFAULT NULL,
  `updated_date` varchar(55) DEFAULT NULL,
  `complementary_code` varchar(55) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of complementary_code
-- ----------------------------
INSERT INTO complementary_code VALUES ('1', null, null, '64MX88jp2P', '1');
INSERT INTO complementary_code VALUES ('2', null, null, 'h2oTSZIt23', '1');
INSERT INTO complementary_code VALUES ('3', null, null, '8LI4LV1MfF', '1');
INSERT INTO complementary_code VALUES ('4', null, null, 'iS6B295er7', '1');
INSERT INTO complementary_code VALUES ('5', null, null, 'CBAa5yAip1', '1');
INSERT INTO complementary_code VALUES ('6', null, null, '2rbIyar0mB', '1');
INSERT INTO complementary_code VALUES ('7', null, null, '1Mp8e7JvAO', '1');
INSERT INTO complementary_code VALUES ('8', null, null, '930FZ2oO0r', '0');
INSERT INTO complementary_code VALUES ('9', null, null, 'T9yQbpi7q3', '1');
INSERT INTO complementary_code VALUES ('10', null, null, '5RT3crbLn2', '1');
INSERT INTO complementary_code VALUES ('11', null, null, 'BU68w2njt4', '0');
INSERT INTO complementary_code VALUES ('12', null, null, 'gm314ed0lV', '1');
INSERT INTO complementary_code VALUES ('13', null, null, 'LP1V6h6mZL', '0');
INSERT INTO complementary_code VALUES ('14', null, null, 'Tj9E501wtw', '1');
INSERT INTO complementary_code VALUES ('15', null, null, 'p9DP1sw3BH', '0');
INSERT INTO complementary_code VALUES ('16', null, null, '5fX0487f2n', '1');
INSERT INTO complementary_code VALUES ('17', null, null, 'SSxz617A2V', '0');
INSERT INTO complementary_code VALUES ('18', null, null, 'bMWMfqigGR', '1');
INSERT INTO complementary_code VALUES ('19', null, null, '4pUr38yShH', '0');
INSERT INTO complementary_code VALUES ('20', null, null, 's9ifFb4W8V', '1');
INSERT INTO complementary_code VALUES ('21', null, null, 'e0ADF7e0i2', '0');
INSERT INTO complementary_code VALUES ('22', null, null, '6v90sQkwAz', '0');
INSERT INTO complementary_code VALUES ('23', null, null, 'x208nJi1T7', '0');
INSERT INTO complementary_code VALUES ('24', null, null, 'e9hm9lh670', '0');
INSERT INTO complementary_code VALUES ('25', null, null, 'zp6mwmN4jm', '1');
INSERT INTO complementary_code VALUES ('26', null, null, 'DOA209T3on', '1');
INSERT INTO complementary_code VALUES ('27', null, null, 'jYlhmxt331', '1');
INSERT INTO complementary_code VALUES ('28', null, null, '22zD144CIQ', '1');
INSERT INTO complementary_code VALUES ('29', null, null, '237w29Pplz', '1');
INSERT INTO complementary_code VALUES ('30', null, null, 'A3WN43wyFo', '1');
INSERT INTO complementary_code VALUES ('31', null, null, '6kX6YEaoO7', '1');
INSERT INTO complementary_code VALUES ('32', null, null, 'pW4zPi1XOC', '1');
INSERT INTO complementary_code VALUES ('33', null, null, 'njaMs98559', '0');
INSERT INTO complementary_code VALUES ('34', null, null, 'U8sb26tZ41', '1');
INSERT INTO complementary_code VALUES ('35', null, null, '3g4i1M2fEy', '1');
INSERT INTO complementary_code VALUES ('36', null, null, 'CPBJ57rdMC', '1');
INSERT INTO complementary_code VALUES ('37', null, null, '54HmaaOv1o', '1');
INSERT INTO complementary_code VALUES ('38', null, null, 'Nnxz5egPO5', '0');
INSERT INTO complementary_code VALUES ('39', null, null, '7zl4wbl1WE', '1');
INSERT INTO complementary_code VALUES ('40', null, null, 'ut4yDvVchU', '0');
INSERT INTO complementary_code VALUES ('41', null, null, 'B54664Z6B5', '0');
INSERT INTO complementary_code VALUES ('42', null, null, 'tLhnGlj5AP', '0');
INSERT INTO complementary_code VALUES ('43', null, null, 'ly3q30CBsC', '0');
INSERT INTO complementary_code VALUES ('44', null, null, '86WeV28eOj', '0');
INSERT INTO complementary_code VALUES ('45', null, null, '3I01yZGM34', '0');
INSERT INTO complementary_code VALUES ('46', null, null, 'mjI4Xq7C7W', '0');
INSERT INTO complementary_code VALUES ('47', null, null, 'WP4G6cjZ7O', '0');
INSERT INTO complementary_code VALUES ('48', null, null, 'gP332I8d6A', '1');
INSERT INTO complementary_code VALUES ('49', null, null, 'stm5CeMetN', '0');
INSERT INTO complementary_code VALUES ('50', null, null, '4n56778ztF', '0');
INSERT INTO complementary_code VALUES ('51', null, null, 'yhi657X118', '0');
INSERT INTO complementary_code VALUES ('52', null, null, '5ckIW3T333', '0');
INSERT INTO complementary_code VALUES ('53', null, null, 'zq7C331653', '0');
INSERT INTO complementary_code VALUES ('54', null, null, '448Jz6R5C5', '0');
INSERT INTO complementary_code VALUES ('55', null, null, '1W9qp9ym4j', '0');
INSERT INTO complementary_code VALUES ('56', null, null, 'f9124e0yr4', '0');
INSERT INTO complementary_code VALUES ('57', null, null, 'j43wA1U7B7', '0');
INSERT INTO complementary_code VALUES ('58', null, null, 'wTMkh24O6c', '0');
INSERT INTO complementary_code VALUES ('59', null, null, 'UA44i0NLWU', '0');
INSERT INTO complementary_code VALUES ('60', null, null, 'Q38vSB3rR0', '0');
INSERT INTO complementary_code VALUES ('61', null, null, 'i2d9pH4DjP', '1');
INSERT INTO complementary_code VALUES ('62', null, null, 'wTD5l6Jptq', '1');
INSERT INTO complementary_code VALUES ('63', null, null, 'Ln95S6EUY9', '1');
INSERT INTO complementary_code VALUES ('64', null, null, 'H24AJNV232', '1');
INSERT INTO complementary_code VALUES ('65', null, null, 'LfGhPjnayw', '1');
INSERT INTO complementary_code VALUES ('66', null, null, 'S0Y5skEf27', '0');
INSERT INTO complementary_code VALUES ('67', null, null, '7NDCRy8PkM', '0');
INSERT INTO complementary_code VALUES ('68', null, null, '8D7qcpzXy1', '0');
INSERT INTO complementary_code VALUES ('69', null, null, 'h37SZ94jNo', '0');
INSERT INTO complementary_code VALUES ('70', null, null, '2BbUc9k0wv', '0');
INSERT INTO complementary_code VALUES ('71', null, null, 'spZGot6wdL', '0');
INSERT INTO complementary_code VALUES ('72', null, null, 'n6FVNH7afs', '0');
INSERT INTO complementary_code VALUES ('73', null, null, 'zt7bYMG548', '0');
INSERT INTO complementary_code VALUES ('74', null, null, 'AJ6Vy6BW67', '0');
INSERT INTO complementary_code VALUES ('75', null, null, 'Yo38G7AYB1', '0');
INSERT INTO complementary_code VALUES ('76', null, null, 'Ik6ZajeWQR', '0');
INSERT INTO complementary_code VALUES ('77', null, null, 'Ql7Z1dx1O1', '0');
INSERT INTO complementary_code VALUES ('78', null, null, '177GG0568w', '0');
INSERT INTO complementary_code VALUES ('79', null, null, 'T2tFl58OZ9', '0');
INSERT INTO complementary_code VALUES ('80', null, null, '6Um7MP28bh', '0');
INSERT INTO complementary_code VALUES ('81', null, null, 'f619nXkVs2', '0');
INSERT INTO complementary_code VALUES ('82', null, null, 'TXgWB92J49', '0');
INSERT INTO complementary_code VALUES ('83', null, null, '52c17D6fv5', '0');
INSERT INTO complementary_code VALUES ('84', null, null, 'vcP9dg6h2m', '0');
INSERT INTO complementary_code VALUES ('85', null, null, '5a04JG5Gf1', '0');
INSERT INTO complementary_code VALUES ('86', null, null, 'zOZNw4p9Hx', '0');
INSERT INTO complementary_code VALUES ('87', null, null, 'D9q9H3R5P5', '0');
INSERT INTO complementary_code VALUES ('88', null, null, 'vJUi2BnX25', '0');
INSERT INTO complementary_code VALUES ('89', null, null, 'Z38YiouH0v', '0');
INSERT INTO complementary_code VALUES ('90', null, null, '2DanYkoD5Y', '0');
INSERT INTO complementary_code VALUES ('91', null, null, '3qdYnnMMPs', '0');
INSERT INTO complementary_code VALUES ('92', null, null, 'N8mzY16EY5', '0');
INSERT INTO complementary_code VALUES ('93', null, null, 'Q8jRbF52yr', '0');
INSERT INTO complementary_code VALUES ('94', null, null, 'MdOTmC88E7', '0');
INSERT INTO complementary_code VALUES ('95', null, null, 'a77fy31B78', '0');
INSERT INTO complementary_code VALUES ('96', null, null, '8da21ouw7B', '0');
INSERT INTO complementary_code VALUES ('97', null, null, 'RIX6280188', '0');
INSERT INTO complementary_code VALUES ('98', null, null, 'UEO55EUPb2', '0');
INSERT INTO complementary_code VALUES ('99', null, null, 'V2aiAR14nJ', '0');
INSERT INTO complementary_code VALUES ('100', null, null, '99Ut25L5MF', '0');
INSERT INTO complementary_code VALUES ('101', null, null, 'I23iU7N16t', '0');
INSERT INTO complementary_code VALUES ('102', null, null, '9t0X6tAo69', '0');
INSERT INTO complementary_code VALUES ('103', null, null, 'Ceg8939QWp', '0');
INSERT INTO complementary_code VALUES ('104', null, null, '0DDlq0kyO0', '0');
INSERT INTO complementary_code VALUES ('105', null, null, '0J7vtW82w6', '0');
INSERT INTO complementary_code VALUES ('106', null, null, 'SL19x5M3e6', '0');
INSERT INTO complementary_code VALUES ('107', null, null, '5V9d4M3891', '0');
INSERT INTO complementary_code VALUES ('108', null, null, 'Tmo5Y1sUJI', '0');
INSERT INTO complementary_code VALUES ('109', null, null, 'xmUhkYAyaM', '0');
INSERT INTO complementary_code VALUES ('110', null, null, '6FI4VTiSy9', '0');
INSERT INTO complementary_code VALUES ('111', null, null, 'QT84Zk7HCh', '0');
INSERT INTO complementary_code VALUES ('112', null, null, '0b46066g0z', '0');
INSERT INTO complementary_code VALUES ('113', null, null, 'Re934200e2', '0');
INSERT INTO complementary_code VALUES ('114', null, null, 'v15usAG9DA', '0');
INSERT INTO complementary_code VALUES ('115', null, null, 'L4ieLZ6p8w', '0');
INSERT INTO complementary_code VALUES ('116', null, null, '49sW12zWBb', '0');
INSERT INTO complementary_code VALUES ('117', null, null, 'F2O1V9G8L1', '0');
INSERT INTO complementary_code VALUES ('118', null, null, 'cS52g6j7Ri', '0');
INSERT INTO complementary_code VALUES ('119', null, null, 'j8oja99GCH', '0');
INSERT INTO complementary_code VALUES ('120', null, null, 'e4j61v4j5o', '0');
INSERT INTO complementary_code VALUES ('121', null, null, 'f54S12c950', '0');
INSERT INTO complementary_code VALUES ('122', null, null, '2gAb74EMIa', '0');
INSERT INTO complementary_code VALUES ('123', null, null, 'supO1ilX1l', '0');
INSERT INTO complementary_code VALUES ('124', null, null, 'ju941G34q0', '0');
INSERT INTO complementary_code VALUES ('125', null, null, 'DadnFl72MG', '0');
INSERT INTO complementary_code VALUES ('126', null, null, 'n8mQ984D02', '0');
INSERT INTO complementary_code VALUES ('127', null, null, 'e3t702of4S', '0');
INSERT INTO complementary_code VALUES ('128', null, null, 'sAm0eH6caS', '0');
INSERT INTO complementary_code VALUES ('129', null, null, '2zatVoB0HN', '0');
INSERT INTO complementary_code VALUES ('130', null, null, 'SlZh04u6jM', '0');
INSERT INTO complementary_code VALUES ('131', null, null, 'ccj752w430', '0');
INSERT INTO complementary_code VALUES ('132', null, null, 'h7US7GH1CY', '0');
INSERT INTO complementary_code VALUES ('133', null, null, 'Hpk69R3rmA', '0');
INSERT INTO complementary_code VALUES ('134', null, null, '1WOaLnNEz5', '0');
INSERT INTO complementary_code VALUES ('135', null, null, 'JfI2Y4CmO3', '0');
INSERT INTO complementary_code VALUES ('136', null, null, 'x97oWpX5ac', '0');
INSERT INTO complementary_code VALUES ('137', null, null, '2TadrnfC5e', '0');
INSERT INTO complementary_code VALUES ('138', null, null, 'Sw6sb3Az36', '0');
INSERT INTO complementary_code VALUES ('139', null, null, '0D2kmtUJRh', '0');
INSERT INTO complementary_code VALUES ('140', null, null, '43v06nCPZW', '0');
INSERT INTO complementary_code VALUES ('141', null, null, 'FfrPLd4CuY', '0');
INSERT INTO complementary_code VALUES ('142', null, null, 'l2fo2makE9', '0');
INSERT INTO complementary_code VALUES ('143', null, null, 'kLgLn0Bht8', '0');
INSERT INTO complementary_code VALUES ('144', null, null, '9Rz8z7D4ga', '0');
INSERT INTO complementary_code VALUES ('145', null, null, 'N752OQyw89', '0');
INSERT INTO complementary_code VALUES ('146', null, null, '8XGVzDz0ZY', '0');
INSERT INTO complementary_code VALUES ('147', null, null, 'YIjTWC1ykE', '0');
INSERT INTO complementary_code VALUES ('148', null, null, 'lv09N108C8', '0');
INSERT INTO complementary_code VALUES ('149', null, null, 'vx3h5RutFj', '0');
INSERT INTO complementary_code VALUES ('150', null, null, '25VpTTBVp2', '0');
INSERT INTO complementary_code VALUES ('151', null, null, 'XQFi7O5Dv9', '0');
INSERT INTO complementary_code VALUES ('152', null, null, 'zUwB202voB', '0');
INSERT INTO complementary_code VALUES ('153', null, null, 'ELyyGd5IoP', '0');
INSERT INTO complementary_code VALUES ('154', null, null, 'AJ6fpaUp22', '0');
INSERT INTO complementary_code VALUES ('155', null, null, '6r3c83sl8W', '0');
INSERT INTO complementary_code VALUES ('156', null, null, '86ywC0M3F7', '0');
INSERT INTO complementary_code VALUES ('157', null, null, '5HfeaNHS6v', '0');
INSERT INTO complementary_code VALUES ('158', null, null, 'ha6Y1CPeU8', '0');
INSERT INTO complementary_code VALUES ('159', null, null, '0677362g94', '1');
INSERT INTO complementary_code VALUES ('160', null, null, '0sj1Il740S', '0');
INSERT INTO complementary_code VALUES ('161', null, null, '2CvOGX23si', '0');
INSERT INTO complementary_code VALUES ('162', null, null, 'gv1OkmaP21', '0');
INSERT INTO complementary_code VALUES ('163', null, null, '2cA5hg634i', '0');
INSERT INTO complementary_code VALUES ('164', null, null, '6qIC49GEW3', '0');
INSERT INTO complementary_code VALUES ('165', null, null, '9f9l0AF68d', '0');
INSERT INTO complementary_code VALUES ('166', null, null, '3Edh6lc164', '0');
INSERT INTO complementary_code VALUES ('167', null, null, '8FMM3pH6On', '0');
INSERT INTO complementary_code VALUES ('168', null, null, 'JaRZs2e3z7', '0');
INSERT INTO complementary_code VALUES ('169', null, null, 'OSz74Ei45j', '0');
INSERT INTO complementary_code VALUES ('170', null, null, 'zXi2UBC6Uh', '0');
INSERT INTO complementary_code VALUES ('171', null, null, '6wGV59O298', '0');
INSERT INTO complementary_code VALUES ('172', null, null, 'Z704Mf7m8n', '0');
INSERT INTO complementary_code VALUES ('173', null, null, 'Jd0zmZIMPz', '0');
INSERT INTO complementary_code VALUES ('174', null, null, '4Y818t6HlV', '0');
INSERT INTO complementary_code VALUES ('175', null, null, '873Awr7E6e', '0');
INSERT INTO complementary_code VALUES ('176', null, null, '7nPP4LYJF1', '0');
INSERT INTO complementary_code VALUES ('177', null, null, 'VX7yj1OXpY', '0');
INSERT INTO complementary_code VALUES ('178', null, null, 'tbbXt2Ap97', '0');
INSERT INTO complementary_code VALUES ('179', null, null, 'b0o01y9g2o', '0');
INSERT INTO complementary_code VALUES ('180', null, null, 'q1oShMr128', '0');
INSERT INTO complementary_code VALUES ('181', null, null, 'U6yRgv434L', '0');
INSERT INTO complementary_code VALUES ('182', null, null, 'afLg5Va3Ls', '0');
INSERT INTO complementary_code VALUES ('183', null, null, '7bQCg3V6lL', '0');
INSERT INTO complementary_code VALUES ('184', null, null, '6n2QrI3m4L', '1');
INSERT INTO complementary_code VALUES ('185', null, null, 'W7OUReMp9r', '0');
INSERT INTO complementary_code VALUES ('186', null, null, 'X6w589o61V', '0');
INSERT INTO complementary_code VALUES ('187', null, null, '1zY8M7t5Bz', '0');
INSERT INTO complementary_code VALUES ('188', null, null, 'jPeG12808I', '0');
INSERT INTO complementary_code VALUES ('189', null, null, '9V57Hhk4Z1', '0');
INSERT INTO complementary_code VALUES ('190', null, null, 'SEUBUHw6tF', '0');
INSERT INTO complementary_code VALUES ('191', null, null, 'a175zh6fXG', '0');
INSERT INTO complementary_code VALUES ('192', null, null, 'jB5SbvA904', '0');
INSERT INTO complementary_code VALUES ('193', null, null, '8vwvuwPlHY', '0');
INSERT INTO complementary_code VALUES ('194', null, null, '9RuX9HvbA0', '0');
INSERT INTO complementary_code VALUES ('195', null, null, 'lt6kUg0RE0', '1');
INSERT INTO complementary_code VALUES ('196', null, null, '3c8YT6z5m2', '0');
INSERT INTO complementary_code VALUES ('197', null, null, '21i90W903N', '0');
INSERT INTO complementary_code VALUES ('198', null, null, 'pHc3II0p85', '1');
INSERT INTO complementary_code VALUES ('199', null, null, 'H3q3712L4N', '1');
INSERT INTO complementary_code VALUES ('200', null, null, 'ARY772HgDL', '1');

-- ----------------------------
-- Table structure for `contact_us`
-- ----------------------------
DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE `contact_us` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `updated_date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contact_us
-- ----------------------------
INSERT INTO contact_us VALUES ('1', 'Vijay Mali', 'vj@gmail.com', 'hiii...............nice website', 'Fri Jan 01 12:18:13 IST 2016', 'Fri Jan 01 12:18:13 IST 2016');
INSERT INTO contact_us VALUES ('2', 'Mith Dashore', 'mith@gmail.com', 'hiiii...............very usefull portal', 'Fri Jan 01 12:18:54 IST 2016', 'Fri Jan 01 12:18:54 IST 2016');
INSERT INTO contact_us VALUES ('3', 'Mayank Sharma', 'sharma@gmail.com', 'i like this', 'Fri Jan 01 12:19:36 IST 2016', 'Fri Jan 01 12:19:36 IST 2016');
INSERT INTO contact_us VALUES ('4', 'Chetan Verma', 'verma@gmail.com', 'hiii all.......please use this website', 'Fri Jan 01 12:21:04 IST 2016', 'Fri Jan 01 12:21:04 IST 2016');
INSERT INTO contact_us VALUES ('5', 'Shukhvinder Shing', 'ss@gmail.com', 'Very helpfull  website', 'Fri Jan 01 12:22:02 IST 2016', 'Fri Jan 01 12:22:02 IST 2016');
INSERT INTO contact_us VALUES ('6', 'Rajkumar Solanki', 'rajkumarslonki@gmail.com', 'Hello.....', 'Tue Jan 12 11:57:11 IST 2016', 'Tue Jan 12 11:57:11 IST 2016');
INSERT INTO contact_us VALUES ('7', 'fdsf', 'p@gmail.com', 'dgdfgdfg', 'Wed Jan 13 15:38:48 IST 2016', 'Wed Jan 13 15:38:48 IST 2016');
INSERT INTO contact_us VALUES ('8', 'raj', 'raj@gmail.com', 'this is test message please ignore', 'Wed Jan 13 19:41:09 IST 2016', 'Wed Jan 13 19:41:09 IST 2016');
INSERT INTO contact_us VALUES ('9', null, null, null, 'Fri Jan 15 02:23:15 IST 2016', 'Fri Jan 15 02:23:15 IST 2016');
INSERT INTO contact_us VALUES ('10', 'trst', 'mobileappz007@gmail.com', 'trst apis', 'Fri Jan 15 02:25:44 IST 2016', 'Fri Jan 15 02:25:44 IST 2016');
INSERT INTO contact_us VALUES ('11', 'fh', 'mobileappz007@gmail.com', 'fhj', 'Fri Jan 15 02:27:45 IST 2016', 'Fri Jan 15 02:27:45 IST 2016');
INSERT INTO contact_us VALUES ('12', 'fh', 'mobileappz007@gmail.com', 'fhj', 'Fri Jan 15 02:28:21 IST 2016', 'Fri Jan 15 02:28:21 IST 2016');
INSERT INTO contact_us VALUES ('13', 'fh', 'mobileappz007@gmail.com', 'fhj', 'Fri Jan 15 02:28:49 IST 2016', 'Fri Jan 15 02:28:49 IST 2016');
INSERT INTO contact_us VALUES ('14', 'vin', 'abc@gmail.com', 'Msg here', 'Thu Jan 28 01:04:08 IST 2016', 'Thu Jan 28 01:04:08 IST 2016');
INSERT INTO contact_us VALUES ('15', 'e', 'e', 'e', 'Sat Jan 30 13:06:37 IST 2016', 'Sat Jan 30 13:06:37 IST 2016');
INSERT INTO contact_us VALUES ('16', 'neha Rajput', 'neha.93.raj@gmail.com', 'hello', 'Fri Feb 05 15:11:57 IST 2016', 'Fri Feb 05 15:11:57 IST 2016');
INSERT INTO contact_us VALUES ('17', 'neha Rajput', 'neha.93.raj@gmail.com', 'hello', 'Fri Feb 05 15:12:16 IST 2016', 'Fri Feb 05 15:12:16 IST 2016');
INSERT INTO contact_us VALUES ('18', 'neha Rajput', 'neha.93.raj@gmail.com', 'hello', 'Fri Feb 05 15:12:31 IST 2016', 'Fri Feb 05 15:12:31 IST 2016');
INSERT INTO contact_us VALUES ('19', 's', 's', 's', 'Fri Feb 05 15:28:46 IST 2016', 'Fri Feb 05 15:28:46 IST 2016');
INSERT INTO contact_us VALUES ('20', 's', 's', 's', 'Fri Feb 05 15:28:54 IST 2016', 'Fri Feb 05 15:28:54 IST 2016');
INSERT INTO contact_us VALUES ('21', 's', 's', 's', 'Fri Feb 05 15:38:52 IST 2016', 'Fri Feb 05 15:38:52 IST 2016');
INSERT INTO contact_us VALUES ('22', 's', 's', 's', 'Fri Feb 05 15:46:57 IST 2016', 'Fri Feb 05 15:46:57 IST 2016');
INSERT INTO contact_us VALUES ('23', 's', 'san@gmail.com', 's', 'Fri Feb 05 15:47:13 IST 2016', 'Fri Feb 05 15:47:13 IST 2016');
INSERT INTO contact_us VALUES ('24', 'hshhhahahaha', 'san@gmail.com', 'sBzhHahagagahahagagagag', 'Fri Feb 05 15:47:27 IST 2016', 'Fri Feb 05 15:47:27 IST 2016');
INSERT INTO contact_us VALUES ('25', 's', 's', 's', 'Fri Feb 05 16:29:29 IST 2016', 'Fri Feb 05 16:29:29 IST 2016');
INSERT INTO contact_us VALUES ('26', 'pra', 'praveen.raghuvanshii@gmail.com', 'hkk', 'Fri Feb 05 16:29:38 IST 2016', 'Fri Feb 05 16:29:38 IST 2016');
INSERT INTO contact_us VALUES ('27', 's', 's', 's', 'Fri Feb 05 16:29:38 IST 2016', 'Fri Feb 05 16:29:38 IST 2016');
INSERT INTO contact_us VALUES ('28', 'pra', 'praveen.raghuvanshii@gmail.com', 'hkk', 'Fri Feb 05 16:29:46 IST 2016', 'Fri Feb 05 16:29:46 IST 2016');
INSERT INTO contact_us VALUES ('29', '45566uiooi55256666666655443', '23446766', 'fgfx', 'Fri Feb 05 16:42:47 IST 2016', 'Fri Feb 05 16:42:47 IST 2016');
INSERT INTO contact_us VALUES ('30', '45566uiooi55256666666655443', '23446766', 'fgfx', 'Fri Feb 05 16:43:21 IST 2016', 'Fri Feb 05 16:43:21 IST 2016');
INSERT INTO contact_us VALUES ('31', '45566uiooi55256666666655443', '23446766', 'fgf', 'Fri Feb 05 16:43:53 IST 2016', 'Fri Feb 05 16:43:53 IST 2016');
INSERT INTO contact_us VALUES ('32', 's', 's', 's', 'Tue Feb 09 12:00:18 IST 2016', 'Tue Feb 09 12:00:18 IST 2016');
INSERT INTO contact_us VALUES ('33', 's', 's', 's', 'Tue Feb 09 12:26:20 IST 2016', 'Tue Feb 09 12:26:20 IST 2016');
INSERT INTO contact_us VALUES ('34', '200000', '200000', '200000', 'Thu Feb 25 03:58:56 IST 2016', 'Thu Feb 25 03:58:56 IST 2016');
INSERT INTO contact_us VALUES ('35', '200000', '200000', '200000', 'Thu Feb 25 03:59:03 IST 2016', 'Thu Feb 25 03:59:03 IST 2016');
INSERT INTO contact_us VALUES ('36', 'Vijay', 'Vijaywankhade2001@gmail.com', 'Location', 'Sun Feb 28 21:03:21 IST 2016', 'Sun Feb 28 21:03:21 IST 2016');
INSERT INTO contact_us VALUES ('37', 'Vijay', 'Vijaywankhade2001@gmail.com', 'Location', 'Sun Feb 28 21:03:21 IST 2016', 'Sun Feb 28 21:03:21 IST 2016');
INSERT INTO contact_us VALUES ('38', 'vaibhao D Bhagwatkar ', 'Bhagwatkarvd98@rediffmail.com', '', 'Sun Feb 28 23:59:20 IST 2016', 'Sun Feb 28 23:59:20 IST 2016');
INSERT INTO contact_us VALUES ('39', 'Kail sh pnjabarav kokate', 'Kailshkokate98@gmail.com', 'K pkokate', 'Tue Mar 01 23:03:13 IST 2016', 'Tue Mar 01 23:03:13 IST 2016');

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(55) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `updated_date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO country VALUES ('1', 'India', null, null);

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO employee VALUES ('1', 'Meenal Pathre', 'menull@gmail.com', '9893001510', 'Malviya nagar,indore(M.P.)', 'Sat Jan 02 15:03:57 IST 2016', null, '1', '1');
INSERT INTO employee VALUES ('2', 'Nilesh khanchandani', 'nilesh@gmail.com', '6868456465', 'Sindhi colony,indore(M.P.)', 'Fri Jan 01 12:11:57 IST 2016', null, '2', '1');
INSERT INTO employee VALUES ('3', 'Mithiles', 'mithiles@gmail.com', '6983684844', 'Banganga,indore(M.P.)', 'Fri Jan 01 12:13:00 IST 2016', null, '3', '1');
INSERT INTO employee VALUES ('4', 'Shorabh', 'shorabh@gmail.com', '9668768387', 'Aanand Bazar,indore(M.P.)', 'Fri Jan 01 12:13:56 IST 2016', null, '4', '1');
INSERT INTO employee VALUES ('5', 'Harshita kukkde', 'kukkde@gmail.com', '9868584651', 'Ujjain(M.P.)', 'Fri Jan 01 12:15:10 IST 2016', null, '5', '1');
INSERT INTO employee VALUES ('6', 'Ankush Patel', 'patel@gmail.com', '9689686541', 'Banganga,indore(M.P.)', 'Fri Jan 01 12:16:03 IST 2016', null, '6', '1');
INSERT INTO employee VALUES ('7', 'Jagdeep Kour', 'kour@gmail.com', '9654536654', 'dewas naka,indore(M.P.)', 'Fri Jan 01 12:16:49 IST 2016', null, '7', '1');
INSERT INTO employee VALUES ('8', 'Khan M. A', 'khanmma4855@gmai.com', '9175539053', 'Amravati', 'Mon Jan 18 12:47:53 IST 2016', null, '8', '1');
INSERT INTO employee VALUES ('9', 'amit', 'amit@gmail.com', '8868484486', 'dhar(m.p.)', 'Tue Feb 09 18:17:14 IST 2016', null, '9', '1');
INSERT INTO employee VALUES ('10', 'Nitesh Pawane', 'niteshpawane@gmail.com', '9665494262', 'Akola', 'Sun Feb 14 22:17:06 IST 2016', null, '10', '1');
INSERT INTO employee VALUES ('11', 'Vivek Warokar', 'vivekwarokar11@rediffmail.com', '9096797453', 'Akola', 'Mon Feb 15 13:35:59 IST 2016', null, '10', '1');
INSERT INTO employee VALUES ('12', 'Deshmukh (Akola)', 'manojakale@rediffmail.com', '9922516229', 'Akola', 'Mon Feb 15 14:01:40 IST 2016', null, '10', '1');
INSERT INTO employee VALUES ('13', 'Deepak Deokar', 'Ddeokar025@gmail.com', '8177970771', 'Akola', 'Mon Feb 15 15:16:03 IST 2016', null, '10', '1');
INSERT INTO employee VALUES ('14', 'Vijay Wankhade (Akola)', 'Viju963771106@rediffmail.com', '8180084023', 'Akola', 'Mon Feb 15 15:18:55 IST 2016', null, '10', '1');
INSERT INTO employee VALUES ('15', 'Kailash Kokate', 'manojakale@rediffmail.com', '8308721917', 'Akola', 'Mon Feb 15 15:28:07 IST 2016', null, '10', '1');

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO login VALUES ('1', 'admin', '000000', 'Admin', null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO login VALUES ('2', 'vijayMali', '123456', 'Vijay Mali', '1', '11 : 00 AM', '7 : 00 PM', '2', '1', '2016-01-09 16:04:19', '2016-01-09 16:04:21', 'Yes', '08-02-2016', 'download.jpg', null, null, '1', '3', null);
INSERT INTO login VALUES ('3', 'navin', '123456', 'Navin Jain', '2', '9 : 00 AM', '10 : 00 PM', '2', '2', '2016-01-09 18:04:41', '2016-01-09 18:04:41', 'Yes', '08-02-2016', 'images.jpg', null, null, '1', '5', null);
INSERT INTO login VALUES ('4', 'jagdeep', '123456', 'Jagdeep Koar ', '1', '11 : 00 AM', '9 : 00 PM', '2', '3', '2016-01-09 18:10:06', '2016-01-09 18:10:06', 'Yes', '08-02-2016', 'logo_1139.jpg', null, null, '1', '1', null);
INSERT INTO login VALUES ('5', 'manoj', '123456', 'Manoj Kale', '2', '9 : 00 AM', '11 : 00 PM', '2', '4', '2016-01-09 18:13:52', '2016-01-09 18:13:52', 'Yes', '08-02-2016', 'linx_logo_transparent144.png', null, null, '1', '2', null);
INSERT INTO login VALUES ('6', 'govinda', '123456', 'Govinda Parihar', '1', '11 : 30 AM', '6 : 30 PM', '2', '5', '2016-01-09 18:35:10', '2016-01-09 18:35:10', 'Yes', '08-02-2016', 'download (1).jpg', null, null, '1', '4', null);
INSERT INTO login VALUES ('7', 'shubham', '123456', 'Shubham Mukati', '2', '10 : 00 AM', '8 : 00 PM', '2', '6', '2016-01-09 18:38:13', '2016-01-09 18:38:13', 'Yes', '08-02-2016', 'linx_logo_transparent.png', null, null, '1', '6', null);
INSERT INTO login VALUES ('8', 'fsdgd', '43436796/', 'reert', '2', '12 : 00 AM', '12 : 00 AM', '2', '7', '2016-01-12 12:03:35', '2016-01-12 12:03:35', 'Yes', '11-02-2016', '', null, null, '1', '4', null);
INSERT INTO login VALUES ('9', 'reet', '123456', 'Reet', '1', '12 : 22 AM', '12 : 22 AM', '2', '8', '2016-01-12 13:05:50', '2016-01-12 13:05:50', 'Yes', '11-02-2016', '12.jpg', null, null, '1', '3', null);
INSERT INTO login VALUES ('10', 'anilntkade', 'anil26', 'Nyan Engineering', '1', '9 : 28 AM', '6 : 28 PM', '2', '9', '2016-01-12 16:40:35', '2016-01-12 16:40:35', 'Yes', '06-04-2017', '', null, '4', '0', '4', null);
INSERT INTO login VALUES ('11', 'anilntkade', 'anil26', 'Nyan Engineering', '1', '9 : 28 AM', '6 : 28 PM', '2', '10', '2016-01-12 16:40:35', '2016-01-12 16:40:35', 'Yes', '06-04-2017', '', null, '4', '0', '4', null);
INSERT INTO login VALUES ('13', 'mamta', '123456', 'mamata sankla', '1', '12 : 00 PM', '7 : 00 PM', '2', '12', '2016-01-13 19:44:12', '2016-01-13 19:44:12', 'Yes', '12-02-2016', '516664b4ec166aab5981829552fca864.jpg', null, null, '1', '3', null);
INSERT INTO login VALUES ('23', '7804814214', '123', null, null, null, null, '3', '22', '2016-01-15 16:17:55', '2016-01-15 16:17:55', null, null, null, null, null, '1', null, '4615');
INSERT INTO login VALUES ('24', 'chhatra', '123456', 'Chhatra pal shingh', '2', '4 : 29 PM', '4 : 29 PM', '2', '23', '2016-01-15 16:34:01', '2016-01-15 16:34:01', 'Yes', '14-02-2016', '2015 - 1.jpg', null, null, '1', '4', null);
INSERT INTO login VALUES ('25', 'praveen.raghuvanshii@gmail.com', '123', null, null, null, null, '3', '24', '2016-01-15 18:53:19', '2016-01-15 18:53:19', null, null, null, null, null, null, null, '2563');
INSERT INTO login VALUES ('26', 'muf', 'muf12345', 'manoj1', '1', '12 : 00 AM', '12 : 00 PM', '2', '25', '2016-01-18 12:08:49', '2016-01-18 12:08:49', 'Yes', '17-05-2016', '', null, '1', '1', null, null);
INSERT INTO login VALUES ('27', '78699996311', '12345', null, null, null, null, '3', '26', '2016-01-18 13:00:08', '2016-01-18 13:00:08', null, null, null, null, null, '1', null, '1246');
INSERT INTO login VALUES ('28', '1236547896', '123', null, null, null, null, '3', '27', '2016-01-18 13:45:49', '2016-01-18 13:45:49', null, null, null, null, null, '1', null, '256');
INSERT INTO login VALUES ('29', 'testing3', '123456', 'praveen', '1', '3 : 06 PM', '3 : 06 PM', '2', '28', '2016-01-18 15:08:22', '2016-01-18 15:08:22', 'Yes', '17-05-2016', 'Desert.jpg', '1', '1', '1', '6', null);
INSERT INTO login VALUES ('30', '7869999639', '12345', null, null, null, null, '3', '29', '2016-01-18 15:15:51', '2016-01-18 15:15:51', null, null, '7869999639.JPEG', null, null, '1', null, '7057');
INSERT INTO login VALUES ('31', '7804814213', '123456', null, null, null, null, '3', '30', '2016-01-18 15:36:07', '2016-01-18 15:36:07', null, null, '7804814213.JPEG', null, null, '1', null, '8370');
INSERT INTO login VALUES ('32', '9822679333', 'bhaiya', null, null, null, null, '3', '31', '2016-01-18 20:08:52', '2016-01-18 20:08:52', null, null, null, null, null, '1', null, '6408');
INSERT INTO login VALUES ('33', 'vinay', '123456', 'Vinay', '1', '1 : 48 PM', '1 : 48 PM', '2', '32', '2016-01-19 13:49:30', '2016-01-19 13:49:30', 'Yes', '18-02-2016', '', null, null, '1', '2', null);
INSERT INTO login VALUES ('34', 'chavans.naresh@gmail.com', '211647', 'naresh chavan', '1', '10 : 00 AM', '10 : 00 PM', '2', '33', '2016-01-19 14:00:24', '2016-01-19 14:00:24', 'Yes', '18-02-2016', '1453189731380.jpg', null, null, '1', '8', null);
INSERT INTO login VALUES ('35', 'jitu', '51972', 'Gwalior faision', '1', '10 : 30 AM', '9 : 00 PM', '2', '34', '2016-01-20 15:53:03', '2016-01-20 15:53:03', 'Yes', '19-02-2016', '1453285296360.jpg', null, null, '1', '8', null);
INSERT INTO login VALUES ('36', 'Bagde ewellers', '2562233', 'Bagde Jewellers', '2', '11 : 30 AM', '8 : 00 PM', '2', '35', '2016-01-21 14:10:11', '2016-01-21 14:10:11', 'Yes', '20-02-2016', '1453365561300.jpg', null, null, '1', '8', null);
INSERT INTO login VALUES ('37', 'avinash', '123456', 'avinash', '1', '11 : 53 AM', '11 : 53 AM', '2', '36', '2016-01-23 11:55:23', '2016-01-23 11:55:23', 'Yes', '22-02-2016', 'download (1).jpg', null, null, '1', '2', null);
INSERT INTO login VALUES ('38', '9770683567', 'qwerty', null, null, null, null, '3', '37', '2016-01-23 18:49:38', '2016-01-23 18:49:38', null, null, null, null, null, '1', null, '5046');
INSERT INTO login VALUES ('39', '9850393002', 'raju', null, null, null, null, '3', '38', '2016-01-23 17:58:05', '2016-01-23 17:58:05', null, null, null, null, null, '1', null, '8157');
INSERT INTO login VALUES ('40', 'vinrathore.16@gmail.com', 'qwerty', null, null, null, null, '3', '39', '2016-01-23 21:21:08', '2016-01-23 21:21:08', null, null, null, null, null, '1', null, '1028');
INSERT INTO login VALUES ('41', '9665649035', 'rupesh', null, null, null, null, '3', '40', '2016-01-24 12:01:00', '2016-01-24 12:01:00', null, null, null, null, null, null, null, '6830');
INSERT INTO login VALUES ('42', '9175539053', '999118', null, null, null, null, '3', '41', '2016-01-25 12:31:40', '2016-01-25 12:31:40', null, null, null, null, null, '1', null, '4466');
INSERT INTO login VALUES ('43', '7879351505', 'arun@1234', null, null, null, null, '3', '42', '2016-01-24 17:59:19', '2016-01-24 17:59:19', null, null, null, null, null, '1', null, '7162');
INSERT INTO login VALUES ('44', '9405648390', 'htchtc', null, null, null, null, '3', '43', '2016-02-18 16:36:10', '2016-02-18 16:36:10', null, null, null, null, null, '1', null, '0234');
INSERT INTO login VALUES ('45', 'syed sameer', '559866', 'Amravati Tours & Travel', '1', '10 : 00 AM', '9 : 00 PM', '2', '44', '2016-01-27 13:59:37', '2016-01-27 13:59:37', 'Yes', '26-02-2016', 'IMG-20141016-WA0003_1413731283_998.jpg', null, null, '1', '8', null);
INSERT INTO login VALUES ('46', 'Ravi tank', '711990', 'Living Styles Interrior', '1', '10 : 00 AM', '9 : 00 PM', '2', '45', '2016-01-27 16:20:08', '2016-01-27 16:20:08', 'Yes', '26-02-2016', 'IMG-20150107-WA0003_1421068206_19.jpg', null, null, '1', '8', null);
INSERT INTO login VALUES ('47', 'ashok khatri', '351414', 'Sukh Sagar Pure Veg Restaurant', '1', '10 : 00 AM', '10 : 00 PM', '2', '46', '2016-01-28 14:36:47', '2016-01-28 14:36:47', 'Yes', '27-02-2016', '20160128_143135.jpg', null, null, '1', '8', null);
INSERT INTO login VALUES ('48', '8446890368', 'Sam@12345', null, null, null, null, '3', '47', '2016-01-31 07:27:42', '2016-01-31 07:27:42', null, null, null, null, null, '1', null, '8541');
INSERT INTO login VALUES ('49', 'Abhi', 'qwert12345', 'Abhishek', '1', '3 : 52 PM', '11 : 52 PM', '2', '48', '2016-02-05 15:59:09', '2016-02-05 15:59:09', 'Yes', '04-06-2016', '', null, '1', '0', '1', null);
INSERT INTO login VALUES ('50', 'sunil', '123456', 'Sunil prasad', '1', '5 : 57 PM', '5 : 57 PM', '2', '49', '2016-02-09 18:00:47', '2016-02-09 18:00:47', 'Yes', '09-02-2016', '6 - 1.jpg', null, null, '1', '5', null);
INSERT INTO login VALUES ('51', 'Darshan1', 'Baburao', 'Baburao Deshmukh', '1', '10 : 00 AM', '10 : 00 PM', '2', '50', '2016-02-15 11:41:06', '2016-02-15 11:41:06', 'Yes', '15-02-2016', 'IMG_20160215_112100.jpg', null, null, '1', '10', null);
INSERT INTO login VALUES ('52', 'kumar', '9691230211', 'JS Informatics', '1', '10 : 00 AM', '9 : 52 PM', '2', '51', '2016-02-15 15:56:18', '2016-02-15 15:56:18', 'Yes', '15-02-2016', '', null, '1', '0', null, null);
INSERT INTO login VALUES ('53', 'deepak deokar', '8975139595', 'deepak deokar', '1', '11 : 00 AM', '8 : 14 PM', '2', '52', '2016-02-15 17:22:09', '2016-02-15 17:22:09', 'Yes', '15-02-2016', 'utsav 1.jpg', null, null, '1', '13', null);
INSERT INTO login VALUES ('54', 'rohit', '123456', 'Rojpurohit', '1', '5 : 24 PM', '5 : 24 PM', '2', '53', '2016-02-15 17:27:09', '2016-02-15 17:27:09', 'Yes', '15-02-2016', 'linx_logo_transparent.png', null, null, '1', '3', null);
INSERT INTO login VALUES ('55', 'baburao1', 'darshan', 'Baburao Deshmukh', '1', '10 : 00 AM', '10 : 00 PM', '2', '54', '2016-02-15 18:18:45', '2016-02-15 18:18:45', 'Yes', '15-02-2016', 'IMG_20160215_115945.jpg', null, null, '1', '12', null);
INSERT INTO login VALUES ('56', 'Das sales', '123456', 'Ritesh Mirzapure', '1', '10 : 30 AM', '10 : 00 PM', '2', '55', '2016-02-17 13:00:42', '2016-02-17 13:00:42', 'Yes', '17-02-2016', '1455694180396.jpg', null, null, '1', '12', null);
INSERT INTO login VALUES ('57', 'JKcollection', 'fuzail', 'Alwar khan', '1', '11 : 00 AM', '10 : 00 PM', '2', '56', '2016-02-18 13:36:21', '2016-02-18 13:36:21', 'Yes', '18-02-2016', 'IMG-20160218-WA0029.jpg', null, null, '1', '11', null);
INSERT INTO login VALUES ('58', 'designerhut', 'dhut8888', 'Ankit', '1', '10 : 00 AM', '9 : 00 PM', '2', '57', '2016-02-18 13:51:13', '2016-02-18 13:51:13', 'Yes', '18-02-2016', 'IMG-20160218-WA0030.jpg', null, null, '1', '11', null);
INSERT INTO login VALUES ('59', 'testing', '123456', 'pizza testing', '1', '2 : 40 PM', '2 : 40 PM', '2', '58', '2016-02-18 14:43:07', '2016-02-18 14:43:07', 'Yes', '18-02-2016', '', null, null, '1', '1', null);
INSERT INTO login VALUES ('60', 'konika', 'konika1234', 'konika12', '1', '3 : 37 PM', '3 : 37 PM', '2', '59', '2016-02-18 15:45:00', '2016-02-18 15:45:00', 'Yes', '18-02-2016', '9.jpg', null, '2', '1', '1', null);
INSERT INTO login VALUES ('61', '9405618390', 'htchtc', null, null, null, null, '3', '60', '2016-02-18 16:35:42', '2016-02-18 16:35:42', null, null, null, null, null, null, null, '2433');
INSERT INTO login VALUES ('62', 'apna', '123456', 'apna sweet', '1', '9 : 56 AM', '10 : 56 PM', '2', '61', '2016-02-19 15:59:40', '2016-02-19 15:59:40', 'Yes', '19-02-2016', '', null, null, '1', '1', null);
INSERT INTO login VALUES ('63', 'Harshad123', 'jk1234', 'Harshad Jain', '1', '10 : 00 AM', '10 : 00 PM', '2', '62', '2016-02-21 09:09:54', '2016-02-21 09:09:54', 'Yes', '21-02-2016', 'IMG_20160219_132950.jpg', null, null, '1', '12', null);
INSERT INTO login VALUES ('64', 'first', '123456', 'testing', '1', '11 : 43 AM', '11 : 43 AM', '2', '63', '2016-02-26 11:45:13', '2016-02-26 11:45:13', 'Yes', '26-02-2016', '', null, null, '1', '1', null);
INSERT INTO login VALUES ('65', 'fresh', '123456', 'Reliance Fresh', '1', '2 : 40 PM', '2 : 40 PM', '2', '64', '2016-02-27 14:42:16', '2016-02-27 14:42:16', 'Yes', '27-02-2016', '', null, null, '1', '1', null);
INSERT INTO login VALUES ('66', 'prestige', '123456', 'prestige point', '1', '8 : 02 AM', '10 : 56 PM', '2', '65', '2016-02-27 14:58:11', '2016-02-27 14:58:11', 'Yes', '27-02-2016', '', null, null, '1', '1', null);
INSERT INTO login VALUES ('67', 'aartek', '123456', 'aartek', '1', '3 : 17 PM', '3 : 17 PM', '2', '66', '2016-02-27 15:18:35', '2016-02-27 15:18:35', 'Yes', '27-02-2016', '', null, null, '1', '1', null);
INSERT INTO login VALUES ('68', 'qqq', '123456', 'qqqq', '1', '4 : 54 PM', '4 : 54 PM', '2', '67', '2016-02-27 16:55:43', '2016-02-27 16:55:43', 'Yes', '27-02-2016', '', null, null, '1', '2', null);
INSERT INTO login VALUES ('69', 'global', '123456', 'Global Cable Network', '1', '3 : 04 PM', '3 : 04 PM', '2', '68', '2016-02-29 15:06:02', '2016-02-29 15:06:02', 'Yes', '29-02-2016', '', null, null, '1', '1', null);
INSERT INTO login VALUES ('70', '8889128490', '123', null, null, null, null, '3', '69', '2016-03-01 12:01:42', '2016-03-01 12:01:42', null, null, null, null, null, '1', null, '1531');
INSERT INTO login VALUES ('71', 'Manojkale', '123456', 'Manoj Kale', '1', '12 : 56 AM', '12 : 56 AM', '2', '70', '2016-03-01 12:58:20', '2016-03-01 12:58:20', 'Yes', '01-03-2016', '', null, null, '1', '1', null);
INSERT INTO login VALUES ('72', 'nafees', '123456', 'Nafees Restaurant ', '1', '1 : 05 PM', '1 : 05 PM', '2', '71', '2016-03-01 13:08:26', '2016-03-01 13:08:26', 'Yes', '01-03-2016', '', null, null, '1', '1', null);
INSERT INTO login VALUES ('73', 'nafees1', '123456', 'Nafees', '1', '1 : 10 PM', '1 : 10 PM', '2', '72', '2016-03-01 13:11:29', '2016-03-01 13:11:29', 'Yes', '01-03-2016', '', null, null, '1', '1', null);
INSERT INTO login VALUES ('74', '9822131974', 'kiran', null, null, null, null, '3', '73', '2016-03-01 19:26:22', '2016-03-01 19:26:22', null, null, null, null, null, null, null, '4035');
INSERT INTO login VALUES ('75', '7264913109', 'abhirup', null, null, null, null, '3', '74', '2016-03-01 19:58:24', '2016-03-01 19:58:24', null, null, null, null, null, null, null, '1029');
INSERT INTO login VALUES ('76', 'manojakale@rediffmail.com', 'abhirup', null, null, null, null, '3', '75', '2016-03-01 21:18:40', '2016-03-01 21:18:40', null, null, null, null, null, null, null, '1074');
INSERT INTO login VALUES ('77', '8523697412', '1@3456', null, null, null, null, '3', '76', '2016-03-03 15:58:12', '2016-03-03 15:58:12', null, null, null, null, null, null, null, '7186');
INSERT INTO login VALUES ('78', '8989864695', '123', null, null, null, null, '3', '77', '2016-03-03 16:01:49', '2016-03-03 16:01:49', null, null, null, null, null, null, null, '0448');
INSERT INTO login VALUES ('79', '258963', '2563', null, null, null, null, '3', '78', '2016-03-11 15:35:27', '2016-03-11 15:35:27', null, null, null, null, null, null, null, '2563');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO manager VALUES ('1', 'Neeraj', 'neeraj@gmail.com', '9685538949', 'Aanand,Gujrat india', 'Thu Feb 11 20:09:26 IST 2016', null, '1');
INSERT INTO manager VALUES ('2', 'Arun Rathore', 'rathore.arun@gmail.com', '9300000000', 'Vijay nagar,indore(M.P.)', 'Sat Jan 02 14:23:17 IST 2016', null, '1');
INSERT INTO manager VALUES ('3', 'Ajay Jirati', 'jirati@gmail.com', '8469456148', 'Old Palasia,indore(M.P.)', 'Fri Jan 01 11:46:44 IST 2016', null, '1');
INSERT INTO manager VALUES ('4', 'Sumit Gangrade', 'sumit@gmail.com', '9845684658', 'Tilak nagar,indor (M.P.)', 'Fri Jan 01 11:47:33 IST 2016', null, '1');
INSERT INTO manager VALUES ('5', 'Praveen', 'praveen@gamil.com', '8949841654', '93,saket nagar , indore(M.P.)', 'Fri Jan 01 11:48:31 IST 2016', null, '1');
INSERT INTO manager VALUES ('6', 'Mayank Shukla', 'shukla@gmail.com', '9845648156', 'Vijay nagar,indore(M.P.)', 'Fri Jan 01 11:49:21 IST 2016', null, '1');
INSERT INTO manager VALUES ('7', 'Manoj', 'manojakae@rediffmail.com', '7264913109', 'Karanja', 'Mon Jan 18 12:44:27 IST 2016', null, '1');
INSERT INTO manager VALUES ('8', 'Jay', 'jay@gmail.com', '5588868668', 'indore', 'Tue Feb 09 18:15:34 IST 2016', null, '1');
INSERT INTO manager VALUES ('9', 'Vishwas Deshmukh', 'srushtiorgano@gmail.com', '9403936445', 'Akola', 'Sun Feb 14 22:13:00 IST 2016', null, '1');

-- ----------------------------
-- Table structure for `offer`
-- ----------------------------
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
  `offer_validity` varchar(50) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of offer
-- ----------------------------
INSERT INTO offer VALUES ('1', 'By one product and get one more product', '12 : 00 AM', '12 : 00 PM', 'D3RD1S2ZUY', 'By one get one', '1', '3', '11-01-2016', 'Sat Jan 09 18:41:35 IST 2016', null, '2016-01-14 00:00:00', 'Offer on body spry', '1', '0FE95N_pizza12.png', '1500', '1000', '2', '500');
INSERT INTO offer VALUES ('2', 'Get discount on every stationary items. ', '12 : 00 AM', '12 : 00 PM', 'RNZWULF0CK', 'Cash discount', '1', '3', '11-01-2016', 'Sat Jan 09 18:43:25 IST 2016', null, '2016-01-12 00:00:00', 'No terms and conditions', '2', '35HBK9_Lighthouse.jpg', '500', '400', '2', '100');
INSERT INTO offer VALUES ('3', 'Get 10 % discount on Dell LCD and LED monitor', '12 : 00 AM', '7 : 00 PM', 'H1NVLF9QX0', 'Great deal on LCD,LED monitor', '1', '6', '11-01-2016', 'Sat Jan 09 18:46:06 IST 2016', null, '2016-01-26 00:00:00', 'No terms and conditions', '1', '35HBK9_Lighthouse.jpg', '5600', '5040', '1', '10');
INSERT INTO offer VALUES ('4', 'Complete PC in Rs. 21000', '12 : 00 PM', '11 : 00 PM', '0CZN8X1XL0', 'Complete PC on low prize', '1', '6', '11-01-2016', 'Sat Jan 09 18:48:27 IST 2016', null, '2016-01-19 00:00:00', 'Only lenovo PC', '2', '35HBK9_Lighthouse.jpg', '29000', '21000', '2', '8000');
INSERT INTO offer VALUES ('5', 'All types websites only Rs. 5000', '10 : 00 AM', '9 : 00 PM', 'JOUB6C8208', 'Website only', '2', '2', '11-01-2016', null, null, '2016-02-23', 'Only informative websites', '5', '35HBK9_Lighthouse.jpg', '0', '0', '2', '3000');
INSERT INTO offer VALUES ('6', 'By all cosmetics items and get discount', '9 : 00 AM', '6 : 00 PM', '3D58LDFFIH', 'All cosmetics item on 33% discount ', '0', '4', '11-01-2016', 'Sat Jan 09 18:53:28 IST 2016', null, '2016-01-16 00:00:00', 'No terms and conditions', '5', '35HBK9_Lighthouse.jpg', '100', '66', '1', '33');
INSERT INTO offer VALUES ('7', 'By one park avenue dio and one more', '11 : 00 AM', '8 : 00 PM', '5UXZYZCR5E', 'By one and get one', '1', '4', '11-01-2016', 'Sat Jan 09 18:55:27 IST 2016', null, '2016-01-28 00:00:00', 'Offer available only perfumes and body spry', '2', '35HBK9_Lighthouse.jpg', '120', '120', '2', '120');
INSERT INTO offer VALUES ('8', 'Hot sandwich only Rs. 20 on Rs. 5 off', '11 : 00 AM', '8 : 00 PM', 'CZQGAW77S4', 'Hot sanwich', '1', '5', '11-01-2016', 'Sat Jan 09 18:57:42 IST 2016', null, '2016-01-21 00:00:00', 'No terms and conditions ', '1', '35HBK9_Lighthouse.jpg', '25', '20', '2', '5');
INSERT INTO offer VALUES ('9', 'All branded shirt,jeans on 20% discount', '11 : 00 AM', '9 : 00 PM', '9SUQRFXCVD', 'Branded sale', '0', '7', '11-01-2016', 'Sat Jan 09 18:59:38 IST 2016', null, '2016-01-22 00:00:00', 'Fix Rates', '1', '35HBK9_Lighthouse.jpg', '3000', '2400', '1', '20');
INSERT INTO offer VALUES ('10', 'By winter clothes on flat discount', '9 : 00 AM', '9 : 00 PM', 'PRZK3462UD', 'Winter sale', '1', '7', '11-01-2016', 'Sat Jan 09 19:01:18 IST 2016', null, '2016-01-20 00:00:00', 'Only kids clothes available', '2', '35HBK9_Lighthouse.jpg', '1500', '1200', '2', '200');
INSERT INTO offer VALUES ('11', 'All types beg available on flat discount', '10 : 00 AM', '7 : 00 PM', '597KSSN7XD', 'All types beg', '1', '3', '11-01-2016', null, null, '2016-2-20', 'No only school beg', '3', '35HBK9_Lighthouse.jpg', '0', '0', '1', '10');
INSERT INTO offer VALUES ('12', 'Android mobile only Rs. 999/- ', '1 : 06 PM', '1 : 06 PM', 'P8XHLP6UZ4', 'Mobile just Rs. 999', '0', '9', '12-01-2016', 'Tue Jan 12 13:07:47 IST 2016', null, '2016-01-22 00:00:00', 'only zen mobile', '1', 'P8XHLP6UZ4_download (1).jpg', '1500', '999', '2', '500');
INSERT INTO offer VALUES ('13', 'fghjkl;', '1 : 07 PM', '1 : 07 PM', 'XV3DKNR92E', 'asdfghjkl', '0', '9', '12-01-2016', 'Tue Jan 12 13:08:08 IST 2016', null, '2016-01-25 00:00:00', 'fgjkl', '1', 'XV3DKNR92E_6 - 1.jpg', '4578', '878', '1', '10');
INSERT INTO offer VALUES ('14', 'no description', '1 : 08 PM', '1 : 08 PM', 'FKTOJAY0DX', 'rtett ', '0', '9', '12-01-2016', 'Tue Jan 12 13:08:50 IST 2016', null, '2016-01-26 00:00:00', 'ghjkl', '4', 'FKTOJAY0DX_10.11.15 - 1.jpg', '100', '200', '1', '10');
INSERT INTO offer VALUES ('15', 'Hot Pavbhaji of 56 ', '12 : 00 PM', '7 : 00 PM', 'NNHC1ZWFJ9', 'Hot pavbhaji', '1', '13', '13-01-2016', 'Wed Jan 13 19:46:38 IST 2016', null, '2016-01-26 00:00:00', 'No terms and conditions', '1', 'NNHC1ZWFJ9_sandwich.jpg', '70', '50', '2', '20');
INSERT INTO offer VALUES ('16', 'all footwear on flat dis', '12 : 29 AM', '12 : 29 AM', 'YU4D9WA0Z7', 'footwear sale', '0', '24', '18-01-2016', 'Mon Jan 18 12:31:00 IST 2016', null, '2016-01-28 00:00:00', 'no terms and conditions', '1', 'YU4D9WA0Z7_12.jpg', '500', '400', '2', '100');
INSERT INTO offer VALUES ('17', 'Discount is available on all kid of Pizza', '2 : 33 AM', '5 : 28 PM', 'X4CHTT5T1B', 'Get 25% discount on Pizza', '1', '26', '18-01-2016', 'Mon Jan 18 12:34:55 IST 2016', null, '2016-02-28 00:00:00', 'Offers for Everoffer', '2', 'X4CHTT5T1B_offer-Details.jpg', '100', '75', '1', '25');
INSERT INTO offer VALUES ('18', 'Flat 10%', '10 : 00 AM', '10 : 00 PM', 'IL9CQ8IECJ', 'Flat 10%', '1', '34', '19-01-2016', 'Tue Jan 19 14:46:38 IST 2016', null, '2016-03-31 00:00:00', 'for everoffer coustomers', '1', 'IL9CQ8IECJ_foroffer.jpg', '1000', '900', '2', '0');
INSERT INTO offer VALUES ('19', 'Gowaliar cloth store', '10 : 00 AM', '10 : 00 PM', 'K6VXAJ6L6T', '20', '1', '35', '20-01-2016', 'Wed Jan 20 15:57:17 IST 2016', null, '2016-03-31 00:00:00', 'All cloth', '1', 'K6VXAJ6L6T_IMG_20160120_155201.jpg', '1000', '800', '1', '1');
INSERT INTO offer VALUES ('20', 'this is offer', '12 : 01 AM', '12 : 01 AM', 'P1CHNDGRGC', 'offer', '1', '37', '23-01-2016', 'Sat Jan 23 12:01:49 IST 2016', null, '2016-01-29 00:00:00', 'no', '2', 'P1CHNDGRGC_linx_logo_transparent.png', '500', '400', '1', '10');
INSERT INTO offer VALUES ('21', 'Haj,Umrha Tour Organiser\r\nPassport Assistan \r\nRail-E-Ticket,Air Ticket', '9 : 00 AM', '10 : 00 PM', 'PJ1BUSTVUQ', 'Amravati Tour And Travel15% discount', '1', '45', '27-01-2016', 'Wed Jan 27 14:23:14 IST 2016', null, '2016-03-31 00:00:00', 'Use Of Perches In All Currencies', '5', 'PJ1BUSTVUQ_IMG-20141016-WA0003_1413731283_998.jpg', '10000', '8500', '1', '15');
INSERT INTO offer VALUES ('22', 'Living Room Furniture,Bead Room Furniture,Dining Seat\'s ,Office Furniture,Artifacts & Furnishing', '10 : 00 AM', '9 : 00 PM', 'P5B7CZ2N64', 'Living Stylez furniture on 20% discount', '1', '46', '27-01-2016', 'Wed Jan 27 16:31:04 IST 2016', null, '2016-03-31 00:00:00', 'Home Delivery Is available', '1', 'P5B7CZ2N64_IMG-20150107-WA0003_1421068206_19.jpg', '40000', '36000', '1', '20');
INSERT INTO offer VALUES ('23', 'All veg Dishes And Party Order,', '10 : 00 AM', '10 : 00 AM', 'OVD8DWAECR', 'Sukh Sagar Restaurant flat 20% off', '1', '47', '28-01-2016', null, null, '2016-03-31', 'Only Veg', '1', 'OVD8DWAECR_20160128_143135.jpg', '0', '0', '2', '20');
INSERT INTO offer VALUES ('24', 'big sale', '6 : 01 PM', '6 : 01 PM', 'O80KVF8N7T', 'sale sale sale sale.....', '1', '50', '09-02-2016', null, null, '2016-02-23', 'Noooooooooooooo', '2', 'O80KVF8N7T_logo_1139.jpg', '0', '0', '1', '50');
INSERT INTO offer VALUES ('25', 'all appliance ', '12 : 41 AM', '12 : 41 AM', 'KAI2A0DXLI', 'big mela', '0', '2', '12-02-2016', 'Fri Feb 12 12:42:19 IST 2016', null, '2016-02-24', 'no', '2', 'KAI2A0DXLI_images.jpg', '100', '50', '1', '10');
INSERT INTO offer VALUES ('26', 'SALE ON CLOTHES', '5 : 27 PM', '5 : 27 PM', 'Q8M4L5U2EB', 'HURRY UP!!!!', '1', '54', '15-02-2016', 'Mon Feb 15 17:28:04 IST 2016', null, '2016-02-24', 'NO', '5', 'Q8M4L5U2EB_download.png', '100', '50', '2', '10');
INSERT INTO offer VALUES ('27', 'design ', '11 : 31 AM', '8 : 31 PM', '1IPYJL7T7I', '10 % discount for EverOffr users', '1', '53', '15-02-2016', null, null, '2016-03-15', '100% payment', '1', '1IPYJL7T7I_utsav 1.jpg', '0', '0', '1', '10');
INSERT INTO offer VALUES ('28', '25% discount on purching minimum Rs 1500 ', '10 : 00 AM', '10 : 00 PM', '1HJBLSWOYY', 'bag house', '1', '55', '15-02-2016', 'Mon Feb 15 18:22:33 IST 2016', null, '2016-03-15', 'purching above Rs 1500', '1', '1HJBLSWOYY_IMG_20160215_115945.jpg', '0', '0', '1', '25');
INSERT INTO offer VALUES ('29', 'Minimum purchase @200/ ', '1 : 01 PM', '1 : 01 PM', 'RP99NNOIB7', 'Mobile accessories ', '1', '56', '17-02-2016', 'Wed Feb 17 13:07:58 IST 2016', null, '2016-03-17', 'Minimum purchase @200/_', '1', 'RP99NNOIB7_IMG_20160216_210459.jpg', '0', '0', '1', '20');
INSERT INTO offer VALUES ('30', 'Offer upto 50% discount all type cloth', '1 : 37 PM', '1 : 37 PM', 'TAVIP3F152', 'Readymade cloth store', '1', '57', '18-02-2016', 'Thu Feb 18 13:42:00 IST 2016', null, '2016-03-19', 'Discount on any type of cloths', '1', 'TAVIP3F152_IMG-20160218-WA0029.jpg', '0', '0', '1', '50');
INSERT INTO offer VALUES ('31', 'Flat 25% on all types', '1 : 52 PM', '1 : 52 PM', 'KSY89F4WVA', 'Ladies garment', '1', '58', '18-02-2016', 'Thu Feb 18 13:54:21 IST 2016', null, '2016-03-19', 'Discount on all types', '1', 'KSY89F4WVA_IMG-20160218-WA0030.jpg', '0', '0', '1', '25');
INSERT INTO offer VALUES ('32', 'discount', '2 : 43 PM', '2 : 43 PM', 'BVWMDCT8XE', 'two by one', '1', '59', '18-02-2016', 'Thu Feb 18 14:44:21 IST 2016', null, '2016-2-28', 'Nothing', '5', 'BVWMDCT8XE_coupon_3.jpg', '150', '120', '1', '10');
INSERT INTO offer VALUES ('33', 'Bag offer', '3 : 45 PM', '4 : 45 PM', 'ICCTG31ZR7', 'giftoffer', '1', '60', '18-02-2016', 'Thu Feb 18 15:47:30 IST 2016', null, '2016-02-28', 'terms', '2', 'ICCTG31ZR7_9.jpg', '100', '80', '1', '20');
INSERT INTO offer VALUES ('34', 'indori poha', '3 : 59 PM', '3 : 59 PM', 'B6VFOUFX1Y', 'get one poha by one', '1', '62', '19-02-2016', 'Fri Feb 19 16:01:43 IST 2016', null, '2016-2-26', 'no', '9', 'B6VFOUFX1Y_coupon_3.jpg', '12', '10', '1', '2');
INSERT INTO offer VALUES ('35', 'Discount above purchase minimum @ 1000/', '10 : 00 AM', '10 : 00 PM', '3LWVMZKJAN', 'Redaymate cloths', '1', '63', '21-02-2016', 'Sun Feb 21 09:15:58 IST 2016', null, '2016-03-22', 'Flat discount on All type cloths mini purchse @1000/-', '1', '3LWVMZKJAN_IMG_20160219_132950.jpg', '0', '0', '2', '10');
INSERT INTO offer VALUES ('36', 'nothing', '11 : 45 AM', '11 : 45 AM', '5ZW8JDQ5IY', 'pizza gurgoan', '1', '64', '26-02-2016', 'Fri Feb 26 11:46:37 IST 2016', null, '2016-2-29', 'nothing', '1', '5ZW8JDQ5IY_168s.jpg', '12', '10', '1', '10');
INSERT INTO offer VALUES ('37', 'nothing', '2 : 42 PM', '2 : 42 PM', 'XMMXKRQXU0', '10% extra on ice cream', '0', '65', '27-02-2016', 'Sat Feb 27 14:51:31 IST 2016', null, '2016-2-29', 'nothing', '6', 'XMMXKRQXU0_168s.jpg', '10', '5', '1', '10');
INSERT INTO offer VALUES ('38', 'free 23 days java training with corporate trainer', '2 : 58 PM', '2 : 58 PM', 'DD5MMLM5U3', 'free 3 dyas java training', '0', '66', '27-02-2016', 'Sat Feb 27 14:59:30 IST 2016', null, '2016-3-20', 'nothing', '5', 'DD5MMLM5U3_admin.jpg', '45000', '35000', '1', '1');
INSERT INTO offer VALUES ('39', 'nothing', '3 : 18 PM', '3 : 18 PM', 'TCB8CTTG42', 'aartek testing', '1', '67', '27-02-2016', 'Sat Feb 27 15:19:24 IST 2016', null, '2016-3-20', 'nothing', '5', 'TCB8CTTG42_coupon_3.jpg', '50', '20', '1', '3');
INSERT INTO offer VALUES ('40', 'nothing', '4 : 56 PM', '4 : 56 PM', '2DHUDU4F2E', 'prestige point 10 %', '1', '68', '27-02-2016', 'Sat Feb 27 16:58:44 IST 2016', null, '2016-3-20', 'nothing', '5', '2DHUDU4F2E_admin.jpg', '45000', '35000', '1', '10');
INSERT INTO offer VALUES ('41', 'nothing', '3 : 06 PM', '3 : 06 PM', 'GRHSIS2VM3', 'One month internet free', '1', '69', '29-02-2016', 'Mon Feb 29 15:07:18 IST 2016', null, '2016-3-20', 'nothing', '5', 'GRHSIS2VM3_admin.jpg', '500', '450', '1', '10');
INSERT INTO offer VALUES ('42', 'nothing', '12 : 58 AM', '12 : 58 AM', '1NFC9K7M8Y', 'testt', '1', '71', '01-03-2016', 'Tue Mar 01 12:59:15 IST 2016', null, '2016-3-20', 'nohthing', '5', '1NFC9K7M8Y_coupon_3.jpg', '120', '20', '1', '3');
INSERT INTO offer VALUES ('43', 'nothing', '1 : 12 PM', '1 : 12 PM', 'YNEKKYIYLK', '50% off on dal tadka', '1', '73', '01-03-2016', 'Tue Mar 01 13:13:18 IST 2016', null, '2016-3-20', 'nothing', '5', 'YNEKKYIYLK_2.png', '150', '75', '1', '50');

-- ----------------------------
-- Table structure for `offer_status`
-- ----------------------------
DROP TABLE IF EXISTS `offer_status`;
CREATE TABLE `offer_status` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `offer_id` int(55) DEFAULT NULL,
  `device_id` varchar(150) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `updated_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of offer_status
-- ----------------------------
INSERT INTO offer_status VALUES ('1', '2', 'abcd1234hf', '1', 'Mon Feb 22 12:45:00 IST 2016', 'Mon Feb 22 12:45:00 IST 2016');
INSERT INTO offer_status VALUES ('2', '36', '358952061465019', '1', 'Sat Feb 27 10:02:52 IST 2016', 'Sat Feb 27 10:02:52 IST 2016');
INSERT INTO offer_status VALUES ('3', '32', '359710055791371', '1', 'Sat Feb 27 11:18:55 IST 2016', 'Sat Feb 27 11:18:55 IST 2016');
INSERT INTO offer_status VALUES ('4', '40', '359710055791371', '1', 'Sat Feb 27 16:59:35 IST 2016', 'Sat Feb 27 16:59:35 IST 2016');
INSERT INTO offer_status VALUES ('5', '32', '356637056088031', '1', 'Tue Mar 01 12:02:50 IST 2016', 'Tue Mar 01 12:02:50 IST 2016');
INSERT INTO offer_status VALUES ('6', '41', '357386067952921', '1', 'Tue Mar 01 19:34:35 IST 2016', 'Tue Mar 01 19:34:35 IST 2016');
INSERT INTO offer_status VALUES ('7', '42', '357386067952921', '1', 'Tue Mar 01 19:36:24 IST 2016', 'Tue Mar 01 19:36:24 IST 2016');

-- ----------------------------
-- Table structure for `payment`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO payment VALUES ('1', 'e2675fbe39dc8e4001f4', '10.00', null, null, 'success', null, null);

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_type` varchar(55) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `updated_date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO role VALUES ('1', 'Admin', null, null);
INSERT INTO role VALUES ('2', 'Merchant', null, null);
INSERT INTO role VALUES ('3', 'customer', null, null);
INSERT INTO role VALUES ('4', 'sub_admin', null, null);

-- ----------------------------
-- Table structure for `state`
-- ----------------------------
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

-- ----------------------------
-- Records of state
-- ----------------------------
INSERT INTO state VALUES ('1', 'Andhra Pradesh', '1', null, null);
INSERT INTO state VALUES ('2', 'Arunachal Pradesh', '1', null, null);
INSERT INTO state VALUES ('3', 'Assam', '1', null, null);
INSERT INTO state VALUES ('4', 'Bihar', '1', null, null);
INSERT INTO state VALUES ('5', 'Chattisgarh', '1', null, null);
INSERT INTO state VALUES ('6', 'Delhi', '1', null, null);
INSERT INTO state VALUES ('7', 'Goa', '1', null, null);
INSERT INTO state VALUES ('8', 'Gujarat', '1', null, null);
INSERT INTO state VALUES ('9', 'Himachal Pradesh', '1', null, null);
INSERT INTO state VALUES ('10', 'Haryana', '1', null, null);
INSERT INTO state VALUES ('11', 'Jammu And Kashmir', '1', null, null);
INSERT INTO state VALUES ('12', 'Jharkhand', '1', null, null);
INSERT INTO state VALUES ('13', 'Kerala', '1', null, null);
INSERT INTO state VALUES ('14', 'Karnataka', '1', null, null);
INSERT INTO state VALUES ('15', 'Meghalaya', '1', null, null);
INSERT INTO state VALUES ('16', 'Maharashtra', '1', null, null);
INSERT INTO state VALUES ('17', 'Manipur', '1', null, null);
INSERT INTO state VALUES ('18', 'Madhya Pradesh', '1', null, null);
INSERT INTO state VALUES ('19', 'Mizoram', '1', null, null);
INSERT INTO state VALUES ('20', 'Nagaland', '1', null, null);
INSERT INTO state VALUES ('21', 'Orissa', '1', null, null);
INSERT INTO state VALUES ('22', 'Punjab', '1', null, null);
INSERT INTO state VALUES ('23', 'Rajasthan', '1', null, null);
INSERT INTO state VALUES ('24', 'Sikkim', '1', null, null);
INSERT INTO state VALUES ('25', 'Tamil Nadu', '1', null, null);
INSERT INTO state VALUES ('26', 'Telangana', '1', null, null);
INSERT INTO state VALUES ('27', 'Tripura', '1', null, null);
INSERT INTO state VALUES ('28', 'Uttarakhand', '1', null, null);
INSERT INTO state VALUES ('29', 'Uttar Pradesh', '1', null, null);
INSERT INTO state VALUES ('30', 'West Bengal', '1', null, null);

-- ----------------------------
-- Table structure for `sub_admin`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sub_admin
-- ----------------------------
INSERT INTO sub_admin VALUES ('1', 'admin', '000000', 'Admin', '1236547890', '1', null, null);
INSERT INTO sub_admin VALUES ('2', 'vijay', '123456', 'VIjay Mali', '1236547879', '4', 'Mon Jan 25 16:07:07 IST 2016', null);
INSERT INTO sub_admin VALUES ('3', 'praveen', '123456', 'Praveen', '7804814213', '4', 'Thu Jan 28 13:03:20 IST 2016', null);
INSERT INTO sub_admin VALUES ('4', 'abhirup', 'abhirup', 'Abhirup Kale', '9824570042', '4', 'Fri Jan 29 23:48:14 IST 2016', null);
INSERT INTO sub_admin VALUES ('5', 'rajiv', '123456', 'rajiv gupta', '8656546848', '4', 'Tue Feb 09 18:12:58 IST 2016', null);

-- ----------------------------
-- Table structure for `supervisor`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of supervisor
-- ----------------------------
INSERT INTO supervisor VALUES ('1', 'Akshada Bhoite', 'akshada@gmail.com', '8415698568', 'Ram bag colony, indore(M.P.)', 'Sat Jan 02 15:09:49 IST 2016', null, '3', '1');
INSERT INTO supervisor VALUES ('2', 'Shubohi imran', 'shubohi@gmail.com', '8415298465', 'Ranisati get,indore(M.P.)', 'Fri Jan 01 12:02:09 IST 2016', null, '1', '1');
INSERT INTO supervisor VALUES ('3', 'Sandeep Jaria', 'jariya@gmail.com', '8945618946', 'mahu,indore(M.P.)', 'Fri Jan 01 12:04:20 IST 2016', null, '5', '1');
INSERT INTO supervisor VALUES ('4', 'Sandeep Patidar', 'patidar@gmail.com', '8491841568', 'Bhanver kuaa,indore(M.P.)', 'Fri Jan 01 12:05:03 IST 2016', null, '4', '1');
INSERT INTO supervisor VALUES ('5', 'Vivek Nagar', 'vivek@gmail.com', '8956128946', 'Bhanver kuaa,indore(M.P.)', 'Fri Jan 01 12:06:00 IST 2016', null, '6', '1');
INSERT INTO supervisor VALUES ('6', 'Vipul Raj Shinh Chohan', 'vipul@gmial.com', '3856974858', 'navlakha bus stand,indore(M.P.)', 'Fri Jan 01 12:07:22 IST 2016', null, '2', '1');
INSERT INTO supervisor VALUES ('7', 'Vijay Mali', 'vj@gmail.com', '8561451624', 'Vinbha nagar,tilak nagar,indore(M.P.)', 'Tue Jan 05 17:51:44 IST 2016', null, '5', '1');
INSERT INTO supervisor VALUES ('8', 'Manoj Kale', 'manojakae@rediffmail.com', '7264913109', 'Karanja', 'Mon Jan 18 12:45:44 IST 2016', null, '7', '1');
INSERT INTO supervisor VALUES ('9', 'vijay', 'vj@gmail.com', '5435569549', 'dhar (m.p.)', 'Tue Feb 09 18:16:26 IST 2016', null, '8', '1');
INSERT INTO supervisor VALUES ('10', 'Deshmukh Akola', 'srushtiorgano@gmail.com', '9665549426', 'Akola', 'Sun Feb 14 22:15:19 IST 2016', null, '9', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
