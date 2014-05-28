/*
Navicat MySQL Data Transfer

Source Server         : LOCAL
Source Server Version : 50524
Source Host           : 127.0.0.1:3306
Source Database       : db_selva

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2014-04-20 23:47:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for caserio
-- ----------------------------
DROP TABLE IF EXISTS `caserio`;
CREATE TABLE `caserio` (
  `IdDistrito` int(11) NOT NULL,
  `cDistrito` varchar(100) NOT NULL,
  `IdProvincia` int(11) NOT NULL,
  `nDisEstado` int(4) DEFAULT '1',
  PRIMARY KEY (`IdDistrito`,`IdProvincia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of caserio
-- ----------------------------

-- ----------------------------
-- Table structure for departamento
-- ----------------------------
DROP TABLE IF EXISTS `departamento`;
CREATE TABLE `departamento` (
  `IdDepartamento` int(11) NOT NULL,
  `cDepartamento` varchar(100) NOT NULL,
  `IdPais` int(11) NOT NULL,
  `nDepEstado` int(4) DEFAULT '1',
  PRIMARY KEY (`IdDepartamento`,`IdPais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of departamento
-- ----------------------------
INSERT INTO `departamento` VALUES ('1', 'Amazonas', '1', '0');
INSERT INTO `departamento` VALUES ('2', 'Ancash', '1', '1');
INSERT INTO `departamento` VALUES ('3', 'Apurimac', '1', '0');
INSERT INTO `departamento` VALUES ('4', 'Arequipa', '1', '1');
INSERT INTO `departamento` VALUES ('5', 'Ayacucho', '1', '0');
INSERT INTO `departamento` VALUES ('6', 'Cajamarca', '1', '0');
INSERT INTO `departamento` VALUES ('7', 'Cusco', '1', '0');
INSERT INTO `departamento` VALUES ('8', 'Huanuco', '1', '0');
INSERT INTO `departamento` VALUES ('9', 'Huancavelica', '1', '0');
INSERT INTO `departamento` VALUES ('10', 'Ica', '1', '1');
INSERT INTO `departamento` VALUES ('11', 'Junin', '1', '0');
INSERT INTO `departamento` VALUES ('12', 'La Libertad', '1', '1');
INSERT INTO `departamento` VALUES ('13', 'Lambayeque', '1', '1');
INSERT INTO `departamento` VALUES ('14', 'Lima', '1', '1');
INSERT INTO `departamento` VALUES ('15', 'Loreto', '1', '0');
INSERT INTO `departamento` VALUES ('16', 'Madre de Dios', '1', '0');
INSERT INTO `departamento` VALUES ('17', 'Moquegua', '1', '1');
INSERT INTO `departamento` VALUES ('18', 'Pasco', '1', '0');
INSERT INTO `departamento` VALUES ('19', 'Piura', '1', '1');
INSERT INTO `departamento` VALUES ('20', 'Puno', '1', '0');
INSERT INTO `departamento` VALUES ('21', 'San Martin', '1', '0');
INSERT INTO `departamento` VALUES ('22', 'Tacna', '1', '1');
INSERT INTO `departamento` VALUES ('23', 'Tumbes', '1', '1');
INSERT INTO `departamento` VALUES ('24', 'Ucayali', '1', '0');

-- ----------------------------
-- Table structure for distrito
-- ----------------------------
DROP TABLE IF EXISTS `distrito`;
CREATE TABLE `distrito` (
  `IdDistrito` int(11) NOT NULL,
  `cDistrito` varchar(100) NOT NULL,
  `IdProvincia` int(11) NOT NULL,
  `nDisEstado` int(4) DEFAULT '1',
  PRIMARY KEY (`IdDistrito`,`IdProvincia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of distrito
-- ----------------------------
INSERT INTO `distrito` VALUES ('1', 'Chachapoyas', '1', '1');
INSERT INTO `distrito` VALUES ('2', 'Asuncion', '1', '1');
INSERT INTO `distrito` VALUES ('3', 'Balsas', '1', '1');
INSERT INTO `distrito` VALUES ('4', 'Cheto', '1', '1');
INSERT INTO `distrito` VALUES ('5', 'Chiliquin', '1', '1');
INSERT INTO `distrito` VALUES ('6', 'Chuquibamba', '1', '1');
INSERT INTO `distrito` VALUES ('7', 'Granada', '1', '1');
INSERT INTO `distrito` VALUES ('8', 'Huancas', '1', '1');
INSERT INTO `distrito` VALUES ('9', 'La Jalca', '1', '1');
INSERT INTO `distrito` VALUES ('10', 'Leimebamba', '1', '1');
INSERT INTO `distrito` VALUES ('11', 'Levanto', '1', '1');
INSERT INTO `distrito` VALUES ('12', 'Magdalena', '1', '1');
INSERT INTO `distrito` VALUES ('13', 'Mariscal Castilla', '1', '1');
INSERT INTO `distrito` VALUES ('14', 'Molinopampa', '1', '1');
INSERT INTO `distrito` VALUES ('15', 'Montevideo', '1', '1');
INSERT INTO `distrito` VALUES ('16', 'Olleros', '1', '1');
INSERT INTO `distrito` VALUES ('17', 'Quinjalca', '1', '1');
INSERT INTO `distrito` VALUES ('18', 'San Francisco de Daguas', '1', '1');
INSERT INTO `distrito` VALUES ('19', 'San Isidro de Maino', '1', '1');
INSERT INTO `distrito` VALUES ('20', 'Soloco', '1', '1');
INSERT INTO `distrito` VALUES ('21', 'Sonche', '1', '1');
INSERT INTO `distrito` VALUES ('22', 'Lla Peca', '2', '1');
INSERT INTO `distrito` VALUES ('23', 'Aramango', '2', '1');
INSERT INTO `distrito` VALUES ('24', 'Copallin', '2', '1');
INSERT INTO `distrito` VALUES ('25', 'El Parco', '2', '1');
INSERT INTO `distrito` VALUES ('26', 'Imaza', '2', '1');
INSERT INTO `distrito` VALUES ('27', 'Jumbilla', '3', '1');
INSERT INTO `distrito` VALUES ('28', 'Chisquilla', '3', '1');
INSERT INTO `distrito` VALUES ('29', 'Churuja', '3', '1');
INSERT INTO `distrito` VALUES ('30', 'Corosha', '3', '1');
INSERT INTO `distrito` VALUES ('31', 'Cuispes', '3', '1');
INSERT INTO `distrito` VALUES ('32', 'Florida', '3', '1');
INSERT INTO `distrito` VALUES ('33', 'Jazan', '3', '1');
INSERT INTO `distrito` VALUES ('34', 'Recta', '3', '1');
INSERT INTO `distrito` VALUES ('35', 'San Carlos', '3', '1');
INSERT INTO `distrito` VALUES ('36', 'Shipasbamba', '3', '1');
INSERT INTO `distrito` VALUES ('37', 'Valera', '3', '1');
INSERT INTO `distrito` VALUES ('38', 'Yambrasbamba', '3', '1');
INSERT INTO `distrito` VALUES ('39', 'Nieva', '4', '1');
INSERT INTO `distrito` VALUES ('40', 'El Cenepa', '4', '1');
INSERT INTO `distrito` VALUES ('41', 'Rio Santiago', '4', '1');
INSERT INTO `distrito` VALUES ('42', 'Lamud', '5', '1');
INSERT INTO `distrito` VALUES ('43', 'Camporredondo', '5', '1');
INSERT INTO `distrito` VALUES ('44', 'Cocabamba', '5', '1');
INSERT INTO `distrito` VALUES ('45', 'Colcamar', '5', '1');
INSERT INTO `distrito` VALUES ('46', 'Conila', '5', '1');
INSERT INTO `distrito` VALUES ('47', 'Inguilpata', '5', '1');
INSERT INTO `distrito` VALUES ('48', 'Longuita', '5', '1');
INSERT INTO `distrito` VALUES ('49', 'Lonya Chico', '5', '1');
INSERT INTO `distrito` VALUES ('50', 'Luya', '5', '1');
INSERT INTO `distrito` VALUES ('51', 'Luya Viejo', '5', '1');
INSERT INTO `distrito` VALUES ('52', 'Maria', '5', '1');
INSERT INTO `distrito` VALUES ('53', 'Ocalli', '5', '1');
INSERT INTO `distrito` VALUES ('54', 'Ocumal', '5', '1');
INSERT INTO `distrito` VALUES ('55', 'Pisuquia', '5', '1');
INSERT INTO `distrito` VALUES ('56', 'Providencia', '5', '1');
INSERT INTO `distrito` VALUES ('57', 'San Cristobal', '5', '1');
INSERT INTO `distrito` VALUES ('58', 'San Francisco Del Yeso', '5', '1');
INSERT INTO `distrito` VALUES ('59', 'San Jeronimo', '5', '1');
INSERT INTO `distrito` VALUES ('60', 'San Juan De Lopecancha', '5', '1');
INSERT INTO `distrito` VALUES ('61', 'Santa Catalina', '5', '1');
INSERT INTO `distrito` VALUES ('62', 'Santo Tomas', '5', '1');
INSERT INTO `distrito` VALUES ('63', 'Tingo', '5', '1');
INSERT INTO `distrito` VALUES ('64', 'Trita', '5', '1');
INSERT INTO `distrito` VALUES ('65', 'San Nicolas', '6', '1');
INSERT INTO `distrito` VALUES ('66', 'Chirimoto', '6', '1');
INSERT INTO `distrito` VALUES ('67', 'Cochamal', '6', '1');
INSERT INTO `distrito` VALUES ('68', 'Huambo', '6', '1');
INSERT INTO `distrito` VALUES ('69', 'Limabamba', '6', '1');
INSERT INTO `distrito` VALUES ('70', 'Longar', '6', '1');
INSERT INTO `distrito` VALUES ('71', 'Mariscal Benavides', '6', '1');
INSERT INTO `distrito` VALUES ('72', 'Milpuc', '6', '1');
INSERT INTO `distrito` VALUES ('73', 'Omia', '6', '1');
INSERT INTO `distrito` VALUES ('74', 'Santa Rosa', '6', '1');
INSERT INTO `distrito` VALUES ('75', 'Totora', '6', '1');
INSERT INTO `distrito` VALUES ('76', 'Vista Alegre', '6', '1');
INSERT INTO `distrito` VALUES ('77', 'Bagua Grande', '7', '1');
INSERT INTO `distrito` VALUES ('78', 'Cajaruro', '7', '1');
INSERT INTO `distrito` VALUES ('79', 'Cumba', '7', '1');
INSERT INTO `distrito` VALUES ('80', 'El Milagro', '7', '1');
INSERT INTO `distrito` VALUES ('81', 'Jamalca', '7', '1');
INSERT INTO `distrito` VALUES ('82', 'Lonya Grande', '7', '1');
INSERT INTO `distrito` VALUES ('83', 'Yamon', '7', '1');
INSERT INTO `distrito` VALUES ('84', 'Huaraz', '8', '1');
INSERT INTO `distrito` VALUES ('85', 'Cochabamba', '8', '1');
INSERT INTO `distrito` VALUES ('86', 'Colcabamba', '8', '1');
INSERT INTO `distrito` VALUES ('87', 'Huanchay', '8', '1');
INSERT INTO `distrito` VALUES ('88', 'Jangas', '8', '1');
INSERT INTO `distrito` VALUES ('89', 'La Libertad', '8', '1');
INSERT INTO `distrito` VALUES ('90', 'Olleros', '8', '1');
INSERT INTO `distrito` VALUES ('91', 'Pampas', '8', '1');
INSERT INTO `distrito` VALUES ('92', 'Pariacoto', '8', '1');
INSERT INTO `distrito` VALUES ('93', 'Pira', '8', '1');
INSERT INTO `distrito` VALUES ('94', 'Tarica', '8', '1');
INSERT INTO `distrito` VALUES ('95', 'Independencia', '8', '1');
INSERT INTO `distrito` VALUES ('96', 'Aija', '9', '1');
INSERT INTO `distrito` VALUES ('97', 'Coris', '9', '1');
INSERT INTO `distrito` VALUES ('98', 'Huacllan', '9', '1');
INSERT INTO `distrito` VALUES ('99', 'La Merced', '9', '1');
INSERT INTO `distrito` VALUES ('100', 'Succha', '9', '1');
INSERT INTO `distrito` VALUES ('101', 'Llamellin', '10', '1');
INSERT INTO `distrito` VALUES ('102', 'Aczo', '10', '1');
INSERT INTO `distrito` VALUES ('103', 'Chaccho', '10', '1');
INSERT INTO `distrito` VALUES ('104', 'Chingas', '10', '1');
INSERT INTO `distrito` VALUES ('105', 'Mirgas', '10', '1');
INSERT INTO `distrito` VALUES ('106', 'San Juan De Rontoy', '10', '1');
INSERT INTO `distrito` VALUES ('107', 'Chacas', '11', '1');
INSERT INTO `distrito` VALUES ('108', 'Acochaca', '11', '1');
INSERT INTO `distrito` VALUES ('109', 'Chiquian', '12', '1');
INSERT INTO `distrito` VALUES ('110', 'Abelardo Pardo Lezameta', '12', '1');
INSERT INTO `distrito` VALUES ('111', 'Antonio Raymondi', '12', '1');
INSERT INTO `distrito` VALUES ('112', 'Aquia', '12', '1');
INSERT INTO `distrito` VALUES ('113', 'Cajacay', '12', '1');
INSERT INTO `distrito` VALUES ('114', 'Canis', '12', '1');
INSERT INTO `distrito` VALUES ('115', 'Colquioc', '12', '1');
INSERT INTO `distrito` VALUES ('116', 'Huallanca', '12', '1');
INSERT INTO `distrito` VALUES ('117', 'Huasta', '12', '1');
INSERT INTO `distrito` VALUES ('118', 'Huayllacayan', '12', '1');
INSERT INTO `distrito` VALUES ('119', 'La Primavera', '12', '1');
INSERT INTO `distrito` VALUES ('120', 'Mangas', '12', '1');
INSERT INTO `distrito` VALUES ('121', 'Pacllon', '12', '1');
INSERT INTO `distrito` VALUES ('122', 'S. Mgel De Corpanqui', '12', '1');
INSERT INTO `distrito` VALUES ('123', 'Ticllos', '12', '1');
INSERT INTO `distrito` VALUES ('124', 'Carhuaz', '13', '1');
INSERT INTO `distrito` VALUES ('125', 'Acopampa', '13', '1');
INSERT INTO `distrito` VALUES ('126', 'Amashca', '13', '1');
INSERT INTO `distrito` VALUES ('127', 'Anta', '13', '1');
INSERT INTO `distrito` VALUES ('128', 'Ataquero', '13', '1');
INSERT INTO `distrito` VALUES ('129', 'Marcara', '13', '1');
INSERT INTO `distrito` VALUES ('130', 'Pariahuanca', '13', '1');
INSERT INTO `distrito` VALUES ('131', 'San Miguel De Aco', '13', '1');
INSERT INTO `distrito` VALUES ('132', 'Shilla', '13', '1');
INSERT INTO `distrito` VALUES ('133', 'Tinco', '13', '1');
INSERT INTO `distrito` VALUES ('134', 'Yungar', '13', '1');
INSERT INTO `distrito` VALUES ('135', 'San Luis', '14', '1');
INSERT INTO `distrito` VALUES ('136', 'San Nicolas', '14', '1');
INSERT INTO `distrito` VALUES ('137', 'Yauya', '14', '1');
INSERT INTO `distrito` VALUES ('138', 'Casma', '15', '1');
INSERT INTO `distrito` VALUES ('139', 'Buena Vista Alta', '15', '1');
INSERT INTO `distrito` VALUES ('140', 'Comandante Noel', '15', '1');
INSERT INTO `distrito` VALUES ('141', 'Yautan', '15', '1');
INSERT INTO `distrito` VALUES ('142', 'Corongo', '16', '1');
INSERT INTO `distrito` VALUES ('143', 'Aco', '16', '1');
INSERT INTO `distrito` VALUES ('144', 'Bambas', '16', '1');
INSERT INTO `distrito` VALUES ('145', 'Cusca', '16', '1');
INSERT INTO `distrito` VALUES ('146', 'La Pampa', '16', '1');
INSERT INTO `distrito` VALUES ('147', 'Yanac', '16', '1');
INSERT INTO `distrito` VALUES ('148', 'Yupan', '16', '1');
INSERT INTO `distrito` VALUES ('149', 'Huari', '17', '1');
INSERT INTO `distrito` VALUES ('150', 'Anra', '17', '1');
INSERT INTO `distrito` VALUES ('151', 'Cajay', '17', '1');
INSERT INTO `distrito` VALUES ('152', 'Chavin De Huantar', '17', '1');
INSERT INTO `distrito` VALUES ('153', 'Huacachi', '17', '1');
INSERT INTO `distrito` VALUES ('154', 'Huacchis', '17', '1');
INSERT INTO `distrito` VALUES ('155', 'Huachis', '17', '1');
INSERT INTO `distrito` VALUES ('156', 'Huantar', '17', '1');
INSERT INTO `distrito` VALUES ('157', 'Masin', '17', '1');
INSERT INTO `distrito` VALUES ('158', 'Paucas', '17', '1');
INSERT INTO `distrito` VALUES ('159', 'Ponto', '17', '1');
INSERT INTO `distrito` VALUES ('160', 'Rahuapampa', '17', '1');
INSERT INTO `distrito` VALUES ('161', 'Rapayan', '17', '1');
INSERT INTO `distrito` VALUES ('162', 'San Marcos', '17', '1');
INSERT INTO `distrito` VALUES ('163', 'San Pedro De Chana', '17', '1');
INSERT INTO `distrito` VALUES ('164', 'Uco', '17', '1');
INSERT INTO `distrito` VALUES ('165', 'Huarmey', '18', '1');
INSERT INTO `distrito` VALUES ('166', 'Cochapeti', '18', '1');
INSERT INTO `distrito` VALUES ('167', 'Culebras', '18', '1');
INSERT INTO `distrito` VALUES ('168', 'Huayan', '18', '1');
INSERT INTO `distrito` VALUES ('169', 'Malvas', '18', '1');
INSERT INTO `distrito` VALUES ('170', 'Caraz', '19', '1');
INSERT INTO `distrito` VALUES ('171', 'Huallanca', '19', '1');
INSERT INTO `distrito` VALUES ('172', 'Huata', '19', '1');
INSERT INTO `distrito` VALUES ('173', 'Huaylas', '19', '1');
INSERT INTO `distrito` VALUES ('174', 'Mato', '19', '1');
INSERT INTO `distrito` VALUES ('175', 'Pamparomas', '19', '1');
INSERT INTO `distrito` VALUES ('176', 'Pueblo Libre', '19', '1');
INSERT INTO `distrito` VALUES ('177', 'Santa Cruz', '19', '1');
INSERT INTO `distrito` VALUES ('178', 'Santo Toribio', '19', '1');
INSERT INTO `distrito` VALUES ('179', 'Yuracmarca', '19', '1');
INSERT INTO `distrito` VALUES ('180', 'Piscobamba', '20', '1');
INSERT INTO `distrito` VALUES ('181', 'Casca', '20', '1');
INSERT INTO `distrito` VALUES ('182', 'Eleazar Guzman Barron', '20', '1');
INSERT INTO `distrito` VALUES ('183', 'Fidel Olivas Escudero', '20', '1');
INSERT INTO `distrito` VALUES ('184', 'Llama', '20', '1');
INSERT INTO `distrito` VALUES ('185', 'Llumpa', '20', '1');
INSERT INTO `distrito` VALUES ('186', 'Lucma', '20', '1');
INSERT INTO `distrito` VALUES ('187', 'Musga', '20', '1');
INSERT INTO `distrito` VALUES ('188', 'Ocros', '21', '1');
INSERT INTO `distrito` VALUES ('189', 'Acas', '21', '1');
INSERT INTO `distrito` VALUES ('190', 'Cajamarquilla', '21', '1');
INSERT INTO `distrito` VALUES ('191', 'Carhuapampa', '21', '1');
INSERT INTO `distrito` VALUES ('192', 'Cochas', '21', '1');
INSERT INTO `distrito` VALUES ('193', 'Congas', '21', '1');
INSERT INTO `distrito` VALUES ('194', 'Llipa', '21', '1');
INSERT INTO `distrito` VALUES ('195', 'San Cristobal De Rajan', '21', '1');
INSERT INTO `distrito` VALUES ('196', 'San Pedro', '21', '1');
INSERT INTO `distrito` VALUES ('197', 'Santiago De Chilcas', '21', '1');
INSERT INTO `distrito` VALUES ('198', 'Cabana', '22', '1');
INSERT INTO `distrito` VALUES ('199', 'Bolognesi', '22', '1');
INSERT INTO `distrito` VALUES ('200', 'Conchucos', '22', '1');
INSERT INTO `distrito` VALUES ('201', 'Huacaschuque', '22', '1');
INSERT INTO `distrito` VALUES ('202', 'Huandoval', '22', '1');
INSERT INTO `distrito` VALUES ('203', 'Lacabamba', '22', '1');
INSERT INTO `distrito` VALUES ('204', 'Llapo', '22', '1');
INSERT INTO `distrito` VALUES ('205', 'Pallasca', '22', '1');
INSERT INTO `distrito` VALUES ('206', 'Pampas', '22', '1');
INSERT INTO `distrito` VALUES ('207', 'Santa Rosa', '22', '1');
INSERT INTO `distrito` VALUES ('208', 'Tauca', '22', '1');
INSERT INTO `distrito` VALUES ('209', 'Pomabamba', '23', '1');
INSERT INTO `distrito` VALUES ('210', 'Huayllan', '23', '1');
INSERT INTO `distrito` VALUES ('211', 'Parobamba', '23', '1');
INSERT INTO `distrito` VALUES ('212', 'Quinuabamba', '23', '1');
INSERT INTO `distrito` VALUES ('213', 'Recuay', '24', '1');
INSERT INTO `distrito` VALUES ('214', 'Catac', '24', '1');
INSERT INTO `distrito` VALUES ('215', 'Cotaparaco', '24', '1');
INSERT INTO `distrito` VALUES ('216', 'Huayllapampa', '24', '1');
INSERT INTO `distrito` VALUES ('217', 'Llacllin', '24', '1');
INSERT INTO `distrito` VALUES ('218', 'Marca', '24', '1');
INSERT INTO `distrito` VALUES ('219', 'Pampas Chico', '24', '1');
INSERT INTO `distrito` VALUES ('220', 'Pararin', '24', '1');
INSERT INTO `distrito` VALUES ('221', 'Tapacocha', '24', '1');
INSERT INTO `distrito` VALUES ('222', 'Ticapampa', '24', '1');
INSERT INTO `distrito` VALUES ('223', 'Chimbote', '25', '1');
INSERT INTO `distrito` VALUES ('224', 'Caceres Del Peru', '25', '1');
INSERT INTO `distrito` VALUES ('225', 'Coishco', '25', '1');
INSERT INTO `distrito` VALUES ('226', 'Macate', '25', '1');
INSERT INTO `distrito` VALUES ('227', 'Moro', '25', '1');
INSERT INTO `distrito` VALUES ('228', 'Nepeña', '25', '1');
INSERT INTO `distrito` VALUES ('229', 'Samanco', '25', '1');
INSERT INTO `distrito` VALUES ('230', 'Santa', '25', '1');
INSERT INTO `distrito` VALUES ('231', 'Nuevo Chimbote', '25', '1');
INSERT INTO `distrito` VALUES ('232', 'Sihuas', '26', '1');
INSERT INTO `distrito` VALUES ('233', 'Acobamba', '26', '1');
INSERT INTO `distrito` VALUES ('234', 'Alfonso Ugarte', '26', '1');
INSERT INTO `distrito` VALUES ('235', 'Cashapampa', '26', '1');
INSERT INTO `distrito` VALUES ('236', 'Chingalpo', '26', '1');
INSERT INTO `distrito` VALUES ('237', 'Huayllabamba', '26', '1');
INSERT INTO `distrito` VALUES ('238', 'Quiches', '26', '1');
INSERT INTO `distrito` VALUES ('239', 'Ragash', '26', '1');
INSERT INTO `distrito` VALUES ('240', 'San Juan', '26', '1');
INSERT INTO `distrito` VALUES ('241', 'Sicsibamba', '26', '1');
INSERT INTO `distrito` VALUES ('242', 'Yungay', '27', '1');
INSERT INTO `distrito` VALUES ('243', 'Cascapara', '27', '1');
INSERT INTO `distrito` VALUES ('244', 'Mancos', '27', '1');
INSERT INTO `distrito` VALUES ('245', 'Matacoto', '27', '1');
INSERT INTO `distrito` VALUES ('246', 'Quillo', '27', '1');
INSERT INTO `distrito` VALUES ('247', 'Ranrahirca', '27', '1');
INSERT INTO `distrito` VALUES ('248', 'Shupluy', '27', '1');
INSERT INTO `distrito` VALUES ('249', 'Yanama', '27', '1');
INSERT INTO `distrito` VALUES ('250', 'Abancay', '28', '1');
INSERT INTO `distrito` VALUES ('251', 'Chacoche', '28', '1');
INSERT INTO `distrito` VALUES ('252', 'Circa', '28', '1');
INSERT INTO `distrito` VALUES ('253', 'Curahuasi', '28', '1');
INSERT INTO `distrito` VALUES ('254', 'Huanipaca', '28', '1');
INSERT INTO `distrito` VALUES ('255', 'Lambrama', '28', '1');
INSERT INTO `distrito` VALUES ('256', 'Pichirhua', '28', '1');
INSERT INTO `distrito` VALUES ('257', 'San Pedro De Cachora', '28', '1');
INSERT INTO `distrito` VALUES ('258', 'Tamburco', '28', '1');
INSERT INTO `distrito` VALUES ('259', 'Antabamba', '30', '1');
INSERT INTO `distrito` VALUES ('260', 'El Oro', '30', '1');
INSERT INTO `distrito` VALUES ('261', 'Huaquirca', '30', '1');
INSERT INTO `distrito` VALUES ('262', 'Juan Espinoza Medrano', '30', '1');
INSERT INTO `distrito` VALUES ('263', 'Oropesa', '30', '1');
INSERT INTO `distrito` VALUES ('264', 'Pachaconas', '30', '1');
INSERT INTO `distrito` VALUES ('265', 'Sabaino', '30', '1');
INSERT INTO `distrito` VALUES ('266', 'Chalhuanca', '31', '1');
INSERT INTO `distrito` VALUES ('267', 'Capaya', '31', '1');
INSERT INTO `distrito` VALUES ('268', 'Caraybamba', '31', '1');
INSERT INTO `distrito` VALUES ('269', 'Chapimarca', '31', '1');
INSERT INTO `distrito` VALUES ('270', 'Colcabamba', '31', '1');
INSERT INTO `distrito` VALUES ('271', 'Cotaruse', '31', '1');
INSERT INTO `distrito` VALUES ('272', 'Huayllo', '31', '1');
INSERT INTO `distrito` VALUES ('273', 'Justo Apu Sahuaraura', '31', '1');
INSERT INTO `distrito` VALUES ('274', 'Lucre', '31', '1');
INSERT INTO `distrito` VALUES ('275', 'Pocohuanca', '31', '1');
INSERT INTO `distrito` VALUES ('276', 'San Juan De Chacña', '31', '1');
INSERT INTO `distrito` VALUES ('277', 'Sañayca', '31', '1');
INSERT INTO `distrito` VALUES ('278', 'Soraya', '31', '1');
INSERT INTO `distrito` VALUES ('279', 'Tapairihua', '31', '1');
INSERT INTO `distrito` VALUES ('280', 'Tintay', '31', '1');
INSERT INTO `distrito` VALUES ('281', 'Toraya', '31', '1');
INSERT INTO `distrito` VALUES ('282', 'Yanaca', '31', '1');
INSERT INTO `distrito` VALUES ('283', 'Tambobamba', '32', '1');
INSERT INTO `distrito` VALUES ('284', 'Cotabambas', '32', '1');
INSERT INTO `distrito` VALUES ('285', 'Coyllurqui', '32', '1');
INSERT INTO `distrito` VALUES ('286', 'Haquira', '32', '1');
INSERT INTO `distrito` VALUES ('287', 'Mara', '32', '1');
INSERT INTO `distrito` VALUES ('288', 'Challhuahuacho', '32', '1');
INSERT INTO `distrito` VALUES ('289', 'Chuquibambilla', '34', '1');
INSERT INTO `distrito` VALUES ('290', 'Curpahuasi', '34', '1');
INSERT INTO `distrito` VALUES ('291', 'Gamarra', '34', '1');
INSERT INTO `distrito` VALUES ('292', 'Huayllati', '34', '1');
INSERT INTO `distrito` VALUES ('293', 'Mamara', '34', '1');
INSERT INTO `distrito` VALUES ('294', 'Micaela Bastidas', '34', '1');
INSERT INTO `distrito` VALUES ('295', 'Pataypampa', '34', '1');
INSERT INTO `distrito` VALUES ('296', 'Progreso', '34', '1');
INSERT INTO `distrito` VALUES ('297', 'San Antonio', '34', '1');
INSERT INTO `distrito` VALUES ('298', 'Santa Rosa', '34', '1');
INSERT INTO `distrito` VALUES ('299', 'Turpay', '34', '1');
INSERT INTO `distrito` VALUES ('300', 'Vilcabamba', '34', '1');
INSERT INTO `distrito` VALUES ('301', 'Virundo', '34', '1');
INSERT INTO `distrito` VALUES ('302', 'Curasco', '34', '1');
INSERT INTO `distrito` VALUES ('303', 'Chincheros', '33', '1');
INSERT INTO `distrito` VALUES ('304', 'Anco-huallo', '33', '1');
INSERT INTO `distrito` VALUES ('305', 'Cocharcas', '33', '1');
INSERT INTO `distrito` VALUES ('306', 'Huaccana', '33', '1');
INSERT INTO `distrito` VALUES ('307', 'Ocobamba', '33', '1');
INSERT INTO `distrito` VALUES ('308', 'Ongoy', '33', '1');
INSERT INTO `distrito` VALUES ('309', 'Uranmarca', '33', '1');
INSERT INTO `distrito` VALUES ('310', 'Ranracancha', '33', '1');
INSERT INTO `distrito` VALUES ('311', 'Andahuaylas', '29', '1');
INSERT INTO `distrito` VALUES ('312', 'Andarapa', '29', '1');
INSERT INTO `distrito` VALUES ('313', 'Chiara', '29', '1');
INSERT INTO `distrito` VALUES ('314', 'Huancarama', '29', '1');
INSERT INTO `distrito` VALUES ('315', 'Huancaray', '29', '1');
INSERT INTO `distrito` VALUES ('316', 'Huayana', '29', '1');
INSERT INTO `distrito` VALUES ('317', 'Kishuara', '29', '1');
INSERT INTO `distrito` VALUES ('318', 'Pacobamba', '29', '1');
INSERT INTO `distrito` VALUES ('319', 'Pacucha', '29', '1');
INSERT INTO `distrito` VALUES ('320', 'Pampachiri', '29', '1');
INSERT INTO `distrito` VALUES ('321', 'Pomacocha', '29', '1');
INSERT INTO `distrito` VALUES ('322', 'San Antonio De Cachi', '29', '1');
INSERT INTO `distrito` VALUES ('323', 'San Jeronimo', '29', '1');
INSERT INTO `distrito` VALUES ('324', 'San Miguel De Chaccrampa', '29', '1');
INSERT INTO `distrito` VALUES ('325', 'Santa Maria De Chicmo', '29', '1');
INSERT INTO `distrito` VALUES ('326', 'Talavera', '29', '1');
INSERT INTO `distrito` VALUES ('327', 'Tumay Huaraca', '29', '1');
INSERT INTO `distrito` VALUES ('328', 'Turpo', '29', '1');
INSERT INTO `distrito` VALUES ('329', 'Kaquiabamba', '29', '1');
INSERT INTO `distrito` VALUES ('330', 'Arequipa', '35', '1');
INSERT INTO `distrito` VALUES ('331', 'Alto Selva Alegre', '35', '1');
INSERT INTO `distrito` VALUES ('332', 'Cayma', '35', '1');
INSERT INTO `distrito` VALUES ('333', 'Cerro Colorado', '35', '1');
INSERT INTO `distrito` VALUES ('334', 'Characato', '35', '1');
INSERT INTO `distrito` VALUES ('335', 'Chiguata', '35', '1');
INSERT INTO `distrito` VALUES ('336', 'Jacobo Hunter', '35', '1');
INSERT INTO `distrito` VALUES ('337', 'La Joya', '35', '1');
INSERT INTO `distrito` VALUES ('338', 'Mariano Melgar', '35', '1');
INSERT INTO `distrito` VALUES ('339', 'Miraflores', '35', '1');
INSERT INTO `distrito` VALUES ('340', 'Mollebaya', '35', '1');
INSERT INTO `distrito` VALUES ('341', 'Paucarpata', '35', '1');
INSERT INTO `distrito` VALUES ('342', 'Pocsi', '35', '1');
INSERT INTO `distrito` VALUES ('343', 'Polobaya', '35', '1');
INSERT INTO `distrito` VALUES ('344', 'Quequeña', '35', '1');
INSERT INTO `distrito` VALUES ('345', 'Sabandia', '35', '1');
INSERT INTO `distrito` VALUES ('346', 'Sachaca', '35', '1');
INSERT INTO `distrito` VALUES ('347', 'San Juan De Siguas', '35', '1');
INSERT INTO `distrito` VALUES ('348', 'San Juan De Tarucani', '35', '1');
INSERT INTO `distrito` VALUES ('349', 'Santa Isabel De Siguas', '35', '1');
INSERT INTO `distrito` VALUES ('350', 'Santa Rita De Siguas', '35', '1');
INSERT INTO `distrito` VALUES ('351', 'Socabaya', '35', '1');
INSERT INTO `distrito` VALUES ('352', 'Tiabaya', '35', '1');
INSERT INTO `distrito` VALUES ('353', 'Uchumayo', '35', '1');
INSERT INTO `distrito` VALUES ('354', 'Vitor', '35', '1');
INSERT INTO `distrito` VALUES ('355', 'Yanahuara', '35', '1');
INSERT INTO `distrito` VALUES ('356', 'Yarabamba', '35', '1');
INSERT INTO `distrito` VALUES ('357', 'Yura', '35', '1');
INSERT INTO `distrito` VALUES ('358', 'Jose Luis Bustamante Y Rivero', '35', '1');
INSERT INTO `distrito` VALUES ('359', 'Camana', '36', '1');
INSERT INTO `distrito` VALUES ('360', 'Jose Maria Quimper', '36', '1');
INSERT INTO `distrito` VALUES ('361', 'Mariano Nicolas Valcarcel', '36', '1');
INSERT INTO `distrito` VALUES ('362', 'Mariscal Caceres', '36', '1');
INSERT INTO `distrito` VALUES ('363', 'Nicolas De Pierola', '36', '1');
INSERT INTO `distrito` VALUES ('364', 'Ocoña', '36', '1');
INSERT INTO `distrito` VALUES ('365', 'Quilca', '36', '1');
INSERT INTO `distrito` VALUES ('366', 'Samuel Pastor', '36', '1');
INSERT INTO `distrito` VALUES ('367', 'Caraveli', '37', '1');
INSERT INTO `distrito` VALUES ('368', 'Acari', '37', '1');
INSERT INTO `distrito` VALUES ('369', 'Atico', '37', '1');
INSERT INTO `distrito` VALUES ('370', 'Atiquipa', '37', '1');
INSERT INTO `distrito` VALUES ('371', 'Bella Union', '37', '1');
INSERT INTO `distrito` VALUES ('372', 'Cahuacho', '37', '1');
INSERT INTO `distrito` VALUES ('373', 'Chala', '37', '1');
INSERT INTO `distrito` VALUES ('374', 'Chaparra', '37', '1');
INSERT INTO `distrito` VALUES ('375', 'Huanuhuanu', '37', '1');
INSERT INTO `distrito` VALUES ('376', 'Jaqui', '37', '1');
INSERT INTO `distrito` VALUES ('377', 'Lomas', '37', '1');
INSERT INTO `distrito` VALUES ('378', 'Quicacha', '37', '1');
INSERT INTO `distrito` VALUES ('379', 'Yauca', '37', '1');
INSERT INTO `distrito` VALUES ('380', 'Aplao', '38', '1');
INSERT INTO `distrito` VALUES ('381', 'Andagua', '38', '1');
INSERT INTO `distrito` VALUES ('382', 'Ayo', '38', '1');
INSERT INTO `distrito` VALUES ('383', 'Chachas', '38', '1');
INSERT INTO `distrito` VALUES ('384', 'Chilcaymarca', '38', '1');
INSERT INTO `distrito` VALUES ('385', 'Choco', '38', '1');
INSERT INTO `distrito` VALUES ('386', 'Huancarqui', '38', '1');
INSERT INTO `distrito` VALUES ('387', 'Machaguay', '38', '1');
INSERT INTO `distrito` VALUES ('388', 'Orcopampa', '38', '1');
INSERT INTO `distrito` VALUES ('389', 'Pampacolca', '38', '1');
INSERT INTO `distrito` VALUES ('390', 'Tipan', '38', '1');
INSERT INTO `distrito` VALUES ('391', 'Uñon', '38', '1');
INSERT INTO `distrito` VALUES ('392', 'Uraca', '38', '1');
INSERT INTO `distrito` VALUES ('393', 'Viraco', '38', '1');
INSERT INTO `distrito` VALUES ('394', 'Chivay', '39', '1');
INSERT INTO `distrito` VALUES ('395', 'Achoma', '39', '1');
INSERT INTO `distrito` VALUES ('396', 'Cabanaconde', '39', '1');
INSERT INTO `distrito` VALUES ('397', 'Callalli', '39', '1');
INSERT INTO `distrito` VALUES ('398', 'Caylloma', '39', '1');
INSERT INTO `distrito` VALUES ('399', 'Coporaque', '39', '1');
INSERT INTO `distrito` VALUES ('400', 'Huambo', '39', '1');
INSERT INTO `distrito` VALUES ('401', 'Huanca', '39', '1');
INSERT INTO `distrito` VALUES ('402', 'Ichupampa', '39', '1');
INSERT INTO `distrito` VALUES ('403', 'Lari', '39', '1');
INSERT INTO `distrito` VALUES ('404', 'Lluta', '39', '1');
INSERT INTO `distrito` VALUES ('405', 'Maca', '39', '1');
INSERT INTO `distrito` VALUES ('406', 'Madrigal', '39', '1');
INSERT INTO `distrito` VALUES ('407', 'San Antonio De Chuca', '39', '1');
INSERT INTO `distrito` VALUES ('408', 'Sibayo', '39', '1');
INSERT INTO `distrito` VALUES ('409', 'Tapay', '39', '1');
INSERT INTO `distrito` VALUES ('410', 'Tisco', '39', '1');
INSERT INTO `distrito` VALUES ('411', 'Tuti', '39', '1');
INSERT INTO `distrito` VALUES ('412', 'Yanque', '39', '1');
INSERT INTO `distrito` VALUES ('413', 'Chuquibamba', '40', '1');
INSERT INTO `distrito` VALUES ('414', 'Andaray', '40', '1');
INSERT INTO `distrito` VALUES ('415', 'Cayarani', '40', '1');
INSERT INTO `distrito` VALUES ('416', 'Chichas', '40', '1');
INSERT INTO `distrito` VALUES ('417', 'Iray', '40', '1');
INSERT INTO `distrito` VALUES ('418', 'Rio Grande', '40', '1');
INSERT INTO `distrito` VALUES ('419', 'Salamanca', '40', '1');
INSERT INTO `distrito` VALUES ('420', 'Yanaquihua', '40', '1');
INSERT INTO `distrito` VALUES ('421', 'Mollendo', '41', '1');
INSERT INTO `distrito` VALUES ('422', 'Cocachacra', '41', '1');
INSERT INTO `distrito` VALUES ('423', 'Dean Valdivia', '41', '1');
INSERT INTO `distrito` VALUES ('424', 'Islay', '41', '1');
INSERT INTO `distrito` VALUES ('425', 'Mejia', '41', '1');
INSERT INTO `distrito` VALUES ('426', 'Punta De Bombon', '41', '1');
INSERT INTO `distrito` VALUES ('427', 'Cotahuasi', '42', '1');
INSERT INTO `distrito` VALUES ('428', 'Alca', '42', '1');
INSERT INTO `distrito` VALUES ('429', 'Charcana', '42', '1');
INSERT INTO `distrito` VALUES ('430', 'Huaynacotas', '42', '1');
INSERT INTO `distrito` VALUES ('431', 'Pampamarca', '42', '1');
INSERT INTO `distrito` VALUES ('432', 'Puyca', '42', '1');
INSERT INTO `distrito` VALUES ('433', 'Quechualla', '42', '1');
INSERT INTO `distrito` VALUES ('434', 'Sayla', '42', '1');
INSERT INTO `distrito` VALUES ('435', 'Tauria', '42', '1');
INSERT INTO `distrito` VALUES ('436', 'Tomepampa', '42', '1');
INSERT INTO `distrito` VALUES ('437', 'Toro', '42', '1');
INSERT INTO `distrito` VALUES ('438', 'Ayacucho', '43', '1');
INSERT INTO `distrito` VALUES ('439', 'Acocro', '43', '1');
INSERT INTO `distrito` VALUES ('440', 'Acos Vinchos', '43', '1');
INSERT INTO `distrito` VALUES ('441', 'Carmen Alto', '43', '1');
INSERT INTO `distrito` VALUES ('442', 'Chiara', '43', '1');
INSERT INTO `distrito` VALUES ('443', 'Ocros', '43', '1');
INSERT INTO `distrito` VALUES ('444', 'Pacaycasa', '43', '1');
INSERT INTO `distrito` VALUES ('445', 'Quinua', '43', '1');
INSERT INTO `distrito` VALUES ('446', 'San Jose De Ticllas', '43', '1');
INSERT INTO `distrito` VALUES ('447', 'San Juan Bautista', '43', '1');
INSERT INTO `distrito` VALUES ('448', 'Santiago De Pischa', '43', '1');
INSERT INTO `distrito` VALUES ('449', 'Socos', '43', '1');
INSERT INTO `distrito` VALUES ('450', 'Tambillo', '43', '1');
INSERT INTO `distrito` VALUES ('451', 'Vinchos', '43', '1');
INSERT INTO `distrito` VALUES ('452', 'Jesus Nazareno', '43', '1');
INSERT INTO `distrito` VALUES ('453', 'Cangallo', '44', '1');
INSERT INTO `distrito` VALUES ('454', 'Chuschi', '44', '1');
INSERT INTO `distrito` VALUES ('455', 'Los Morochucos', '44', '1');
INSERT INTO `distrito` VALUES ('456', 'Maria Parado De Bellido', '44', '1');
INSERT INTO `distrito` VALUES ('457', 'Paras', '44', '1');
INSERT INTO `distrito` VALUES ('458', 'Totos', '44', '1');
INSERT INTO `distrito` VALUES ('459', 'Sancos', '45', '1');
INSERT INTO `distrito` VALUES ('460', 'Carapo', '45', '1');
INSERT INTO `distrito` VALUES ('461', 'Sacsamarca', '45', '1');
INSERT INTO `distrito` VALUES ('462', 'Santiago De Lucanamarca', '45', '1');
INSERT INTO `distrito` VALUES ('463', 'Huanta', '46', '1');
INSERT INTO `distrito` VALUES ('464', 'Hayahuanco', '46', '1');
INSERT INTO `distrito` VALUES ('465', 'Huamanguilla', '46', '1');
INSERT INTO `distrito` VALUES ('466', 'Iguain', '46', '1');
INSERT INTO `distrito` VALUES ('467', 'Luricocha', '46', '1');
INSERT INTO `distrito` VALUES ('468', 'Santillana', '46', '1');
INSERT INTO `distrito` VALUES ('469', 'Sivia', '46', '1');
INSERT INTO `distrito` VALUES ('470', 'San Miguel', '47', '1');
INSERT INTO `distrito` VALUES ('471', 'Anco', '47', '1');
INSERT INTO `distrito` VALUES ('472', 'Ayna', '47', '1');
INSERT INTO `distrito` VALUES ('473', 'Chilcas', '47', '1');
INSERT INTO `distrito` VALUES ('474', 'Chungui', '47', '1');
INSERT INTO `distrito` VALUES ('475', 'Luis Carranza', '47', '1');
INSERT INTO `distrito` VALUES ('476', 'Tambo', '47', '1');
INSERT INTO `distrito` VALUES ('477', 'Santa Rosa', '47', '1');
INSERT INTO `distrito` VALUES ('478', 'Puquio', '48', '1');
INSERT INTO `distrito` VALUES ('479', 'Aucara', '48', '1');
INSERT INTO `distrito` VALUES ('480', 'Cabana', '48', '1');
INSERT INTO `distrito` VALUES ('481', 'Carmen Salcedo', '48', '1');
INSERT INTO `distrito` VALUES ('482', 'Chaviña', '48', '1');
INSERT INTO `distrito` VALUES ('483', 'Chipao', '48', '1');
INSERT INTO `distrito` VALUES ('484', 'Huac-huas', '48', '1');
INSERT INTO `distrito` VALUES ('485', 'Laramate', '48', '1');
INSERT INTO `distrito` VALUES ('486', 'Leoncio Prado', '48', '1');
INSERT INTO `distrito` VALUES ('487', 'Llauta', '48', '1');
INSERT INTO `distrito` VALUES ('488', 'Lucanas', '48', '1');
INSERT INTO `distrito` VALUES ('489', 'Ocaña', '48', '1');
INSERT INTO `distrito` VALUES ('490', 'Otoca', '48', '1');
INSERT INTO `distrito` VALUES ('491', 'Saisa', '48', '1');
INSERT INTO `distrito` VALUES ('492', 'San Cristobal', '48', '1');
INSERT INTO `distrito` VALUES ('493', 'San Juan', '48', '1');
INSERT INTO `distrito` VALUES ('494', 'San Pedro', '48', '1');
INSERT INTO `distrito` VALUES ('495', 'San Pedro De Palco', '48', '1');
INSERT INTO `distrito` VALUES ('496', 'Sancos', '48', '1');
INSERT INTO `distrito` VALUES ('497', 'Santa Ana De Huaycahuacho', '48', '1');
INSERT INTO `distrito` VALUES ('498', 'Santa Lucia', '48', '1');
INSERT INTO `distrito` VALUES ('499', 'Coracora', '49', '1');
INSERT INTO `distrito` VALUES ('500', 'Chumpi', '49', '1');
INSERT INTO `distrito` VALUES ('501', 'Coronel Castañeda', '49', '1');
INSERT INTO `distrito` VALUES ('502', 'Pacapausa', '49', '1');
INSERT INTO `distrito` VALUES ('503', 'Pullo', '49', '1');
INSERT INTO `distrito` VALUES ('504', 'Puyusca', '49', '1');
INSERT INTO `distrito` VALUES ('505', 'San Francisco De Ravacayco', '49', '1');
INSERT INTO `distrito` VALUES ('506', 'Upahuacho', '49', '1');
INSERT INTO `distrito` VALUES ('507', 'Pausa', '50', '1');
INSERT INTO `distrito` VALUES ('508', 'Colta', '50', '1');
INSERT INTO `distrito` VALUES ('509', 'Corculla', '50', '1');
INSERT INTO `distrito` VALUES ('510', 'Lampa', '50', '1');
INSERT INTO `distrito` VALUES ('511', 'Marcabamba', '50', '1');
INSERT INTO `distrito` VALUES ('512', 'Oyolo', '50', '1');
INSERT INTO `distrito` VALUES ('513', 'Pararca', '50', '1');
INSERT INTO `distrito` VALUES ('514', 'San Javier Del Alpabamba', '50', '1');
INSERT INTO `distrito` VALUES ('515', 'San Jose De Ushua', '50', '1');
INSERT INTO `distrito` VALUES ('516', 'Sara Sara', '50', '1');
INSERT INTO `distrito` VALUES ('517', 'Querobamba', '51', '1');
INSERT INTO `distrito` VALUES ('518', 'Belen', '51', '1');
INSERT INTO `distrito` VALUES ('519', 'Chalcos', '51', '1');
INSERT INTO `distrito` VALUES ('520', 'Chilcayoc', '51', '1');
INSERT INTO `distrito` VALUES ('521', 'Huacaña', '51', '1');
INSERT INTO `distrito` VALUES ('522', 'Morcolla', '51', '1');
INSERT INTO `distrito` VALUES ('523', 'Paico', '51', '1');
INSERT INTO `distrito` VALUES ('524', 'San Pedro De Larcay', '51', '1');
INSERT INTO `distrito` VALUES ('525', 'San Salvador De Quije', '51', '1');
INSERT INTO `distrito` VALUES ('526', 'Santiago De Paucaray', '51', '1');
INSERT INTO `distrito` VALUES ('527', 'Soras', '51', '1');
INSERT INTO `distrito` VALUES ('528', 'Huancapi', '52', '1');
INSERT INTO `distrito` VALUES ('529', 'Alcamenca', '52', '1');
INSERT INTO `distrito` VALUES ('530', 'Apongo', '52', '1');
INSERT INTO `distrito` VALUES ('531', 'Asquipata', '52', '1');
INSERT INTO `distrito` VALUES ('532', 'Canaria', '52', '1');
INSERT INTO `distrito` VALUES ('533', 'Cayara', '52', '1');
INSERT INTO `distrito` VALUES ('534', 'Colca', '52', '1');
INSERT INTO `distrito` VALUES ('535', 'Huamanquiquia', '52', '1');
INSERT INTO `distrito` VALUES ('536', 'Huancaraylla', '52', '1');
INSERT INTO `distrito` VALUES ('537', 'Huaya', '52', '1');
INSERT INTO `distrito` VALUES ('538', 'Sarhua', '52', '1');
INSERT INTO `distrito` VALUES ('539', 'Vilcanchos', '52', '1');
INSERT INTO `distrito` VALUES ('540', 'Vilcas Huaman', '53', '1');
INSERT INTO `distrito` VALUES ('541', 'Accomarca', '53', '1');
INSERT INTO `distrito` VALUES ('542', 'Carhuanca', '53', '1');
INSERT INTO `distrito` VALUES ('543', 'Concepcion', '53', '1');
INSERT INTO `distrito` VALUES ('544', 'Huambalpa', '53', '1');
INSERT INTO `distrito` VALUES ('545', 'Independencia', '53', '1');
INSERT INTO `distrito` VALUES ('546', 'Saurama', '53', '1');
INSERT INTO `distrito` VALUES ('547', 'Vischongo', '53', '1');
INSERT INTO `distrito` VALUES ('548', 'San Ignacio', '62', '1');
INSERT INTO `distrito` VALUES ('549', 'Chirinos', '62', '1');
INSERT INTO `distrito` VALUES ('550', 'Huarango', '62', '1');
INSERT INTO `distrito` VALUES ('551', 'La Coipa', '62', '1');
INSERT INTO `distrito` VALUES ('552', 'Namballe', '62', '1');
INSERT INTO `distrito` VALUES ('553', 'San Jose De Lourdes', '62', '1');
INSERT INTO `distrito` VALUES ('554', 'Tabaconas', '62', '1');
INSERT INTO `distrito` VALUES ('555', 'Jaen', '61', '1');
INSERT INTO `distrito` VALUES ('556', 'Bellavista', '61', '1');
INSERT INTO `distrito` VALUES ('557', 'Chontali', '61', '1');
INSERT INTO `distrito` VALUES ('558', 'Colasay', '61', '1');
INSERT INTO `distrito` VALUES ('559', 'Huabal', '61', '1');
INSERT INTO `distrito` VALUES ('560', 'Las Pirias', '61', '1');
INSERT INTO `distrito` VALUES ('561', 'Pomahuaca', '61', '1');
INSERT INTO `distrito` VALUES ('562', 'Pucara', '61', '1');
INSERT INTO `distrito` VALUES ('563', 'Sallique', '61', '1');
INSERT INTO `distrito` VALUES ('564', 'San Felipe', '61', '1');
INSERT INTO `distrito` VALUES ('565', 'San Jose Del Alto', '61', '1');
INSERT INTO `distrito` VALUES ('566', 'Santa Rosa', '61', '1');
INSERT INTO `distrito` VALUES ('567', 'Cutervo', '59', '1');
INSERT INTO `distrito` VALUES ('568', 'Callayuc', '59', '1');
INSERT INTO `distrito` VALUES ('569', 'Choros', '59', '1');
INSERT INTO `distrito` VALUES ('570', 'Cujillo', '59', '1');
INSERT INTO `distrito` VALUES ('571', 'La Ramada', '59', '1');
INSERT INTO `distrito` VALUES ('572', 'Pimpingos', '59', '1');
INSERT INTO `distrito` VALUES ('573', 'Querocotillo', '59', '1');
INSERT INTO `distrito` VALUES ('574', 'San Andres De Cutervo', '59', '1');
INSERT INTO `distrito` VALUES ('575', 'San Juan De Cutervo', '59', '1');
INSERT INTO `distrito` VALUES ('576', 'San Luis De Lucma', '59', '1');
INSERT INTO `distrito` VALUES ('577', 'Santa Cruz', '59', '1');
INSERT INTO `distrito` VALUES ('578', 'Santo Domingo De La Capilla', '59', '1');
INSERT INTO `distrito` VALUES ('579', 'Santo Tomas', '59', '1');
INSERT INTO `distrito` VALUES ('580', 'Socota', '59', '1');
INSERT INTO `distrito` VALUES ('581', 'Toribio Casanova', '59', '1');
INSERT INTO `distrito` VALUES ('582', 'Chota', '57', '1');
INSERT INTO `distrito` VALUES ('583', 'Anguia', '57', '1');
INSERT INTO `distrito` VALUES ('584', 'Chadin', '57', '1');
INSERT INTO `distrito` VALUES ('585', 'Chiguirip', '57', '1');
INSERT INTO `distrito` VALUES ('586', 'Chimban', '57', '1');
INSERT INTO `distrito` VALUES ('587', 'Cochabamba', '57', '1');
INSERT INTO `distrito` VALUES ('588', 'Conchan', '57', '1');
INSERT INTO `distrito` VALUES ('589', 'Huambos', '57', '1');
INSERT INTO `distrito` VALUES ('590', 'Lajas', '57', '1');
INSERT INTO `distrito` VALUES ('591', 'Llama', '57', '1');
INSERT INTO `distrito` VALUES ('592', 'Miracosta', '57', '1');
INSERT INTO `distrito` VALUES ('593', 'Paccha', '57', '1');
INSERT INTO `distrito` VALUES ('594', 'Pion', '57', '1');
INSERT INTO `distrito` VALUES ('595', 'Querocoto', '57', '1');
INSERT INTO `distrito` VALUES ('596', 'San Juan De Licupis', '57', '1');
INSERT INTO `distrito` VALUES ('597', 'Tacabamba', '57', '1');
INSERT INTO `distrito` VALUES ('598', 'Tocmoche', '57', '1');
INSERT INTO `distrito` VALUES ('599', 'Choropampa', '57', '1');
INSERT INTO `distrito` VALUES ('600', 'Chalamarca', '57', '1');
INSERT INTO `distrito` VALUES ('601', 'Santa Cruz', '66', '1');
INSERT INTO `distrito` VALUES ('602', 'Andabamba', '66', '1');
INSERT INTO `distrito` VALUES ('603', 'Catache', '66', '1');
INSERT INTO `distrito` VALUES ('604', 'Chancaybaños', '66', '1');
INSERT INTO `distrito` VALUES ('605', 'La Esperanza', '66', '1');
INSERT INTO `distrito` VALUES ('606', 'Ninabamba', '66', '1');
INSERT INTO `distrito` VALUES ('607', 'Pulan', '66', '1');
INSERT INTO `distrito` VALUES ('608', 'Saucepampa', '66', '1');
INSERT INTO `distrito` VALUES ('609', 'Sexi', '66', '1');
INSERT INTO `distrito` VALUES ('610', 'Uticyacu', '66', '1');
INSERT INTO `distrito` VALUES ('611', 'Yauyucan', '66', '1');
INSERT INTO `distrito` VALUES ('612', 'Bambamarca', '60', '1');
INSERT INTO `distrito` VALUES ('613', 'Chugur', '60', '1');
INSERT INTO `distrito` VALUES ('614', 'Hualgayoc', '60', '1');
INSERT INTO `distrito` VALUES ('615', 'Celendin', '56', '1');
INSERT INTO `distrito` VALUES ('616', 'Chumuch', '56', '1');
INSERT INTO `distrito` VALUES ('617', 'Cortegana', '56', '1');
INSERT INTO `distrito` VALUES ('618', 'Huasmin', '56', '1');
INSERT INTO `distrito` VALUES ('619', 'Jorge Chavez', '56', '1');
INSERT INTO `distrito` VALUES ('620', 'Jose Galvez', '56', '1');
INSERT INTO `distrito` VALUES ('621', 'Miguel Iglesias', '56', '1');
INSERT INTO `distrito` VALUES ('622', 'Oxamarca', '56', '1');
INSERT INTO `distrito` VALUES ('623', 'Sorochuco', '56', '1');
INSERT INTO `distrito` VALUES ('624', 'Sucre', '56', '1');
INSERT INTO `distrito` VALUES ('625', 'Utco', '56', '1');
INSERT INTO `distrito` VALUES ('626', 'La Libertad De Pallan', '56', '1');
INSERT INTO `distrito` VALUES ('627', 'San Pablo', '65', '1');
INSERT INTO `distrito` VALUES ('628', 'San Bernardino', '65', '1');
INSERT INTO `distrito` VALUES ('629', 'San Luis', '65', '1');
INSERT INTO `distrito` VALUES ('630', 'Tumbaden', '65', '1');
INSERT INTO `distrito` VALUES ('631', 'San Miguel', '64', '1');
INSERT INTO `distrito` VALUES ('632', 'Bolivar', '64', '1');
INSERT INTO `distrito` VALUES ('633', 'Calquis', '64', '1');
INSERT INTO `distrito` VALUES ('634', 'Catilluc', '64', '1');
INSERT INTO `distrito` VALUES ('635', 'El Prado', '64', '1');
INSERT INTO `distrito` VALUES ('636', 'La Florida', '64', '1');
INSERT INTO `distrito` VALUES ('637', 'Llapa', '64', '1');
INSERT INTO `distrito` VALUES ('638', 'Nanchoc', '64', '1');
INSERT INTO `distrito` VALUES ('639', 'Niepos', '64', '1');
INSERT INTO `distrito` VALUES ('640', 'San Gregorio', '64', '1');
INSERT INTO `distrito` VALUES ('641', 'San Silvestre De Cochan', '64', '1');
INSERT INTO `distrito` VALUES ('642', 'Tongod', '64', '1');
INSERT INTO `distrito` VALUES ('643', 'Union Agua Blanca', '64', '1');
INSERT INTO `distrito` VALUES ('644', 'Contumaza', '58', '1');
INSERT INTO `distrito` VALUES ('645', 'Chilete', '58', '1');
INSERT INTO `distrito` VALUES ('646', 'Cupisnique', '58', '1');
INSERT INTO `distrito` VALUES ('647', 'Guzmango', '58', '1');
INSERT INTO `distrito` VALUES ('648', 'San Benito', '58', '1');
INSERT INTO `distrito` VALUES ('649', 'Santa Cruz De Toled', '58', '1');
INSERT INTO `distrito` VALUES ('650', 'Tantarica', '58', '1');
INSERT INTO `distrito` VALUES ('651', 'Yonan', '58', '1');
INSERT INTO `distrito` VALUES ('652', 'Cajamarca', '54', '1');
INSERT INTO `distrito` VALUES ('653', 'Asuncion', '54', '1');
INSERT INTO `distrito` VALUES ('654', 'Chetilla', '54', '1');
INSERT INTO `distrito` VALUES ('655', 'Cospan', '54', '1');
INSERT INTO `distrito` VALUES ('656', 'Encañada', '54', '1');
INSERT INTO `distrito` VALUES ('657', 'Jesus', '54', '1');
INSERT INTO `distrito` VALUES ('658', 'Llacanora', '54', '1');
INSERT INTO `distrito` VALUES ('659', 'Los Baños Del Inca', '54', '1');
INSERT INTO `distrito` VALUES ('660', 'Magdalena', '54', '1');
INSERT INTO `distrito` VALUES ('661', 'Matara', '54', '1');
INSERT INTO `distrito` VALUES ('662', 'Namora', '54', '1');
INSERT INTO `distrito` VALUES ('663', 'San Juan', '54', '1');
INSERT INTO `distrito` VALUES ('664', 'Cajabamba', '55', '1');
INSERT INTO `distrito` VALUES ('665', 'Cachachi', '55', '1');
INSERT INTO `distrito` VALUES ('666', 'Condebamba', '55', '1');
INSERT INTO `distrito` VALUES ('667', 'Sitacocha', '55', '1');
INSERT INTO `distrito` VALUES ('668', 'Pedro Galvez', '63', '1');
INSERT INTO `distrito` VALUES ('669', 'Eduardo Villanueva', '63', '1');
INSERT INTO `distrito` VALUES ('670', 'Gregorio Pita', '63', '1');
INSERT INTO `distrito` VALUES ('671', 'Ichocan', '63', '1');
INSERT INTO `distrito` VALUES ('672', 'Jose Manuel Quiroz', '63', '1');
INSERT INTO `distrito` VALUES ('673', 'Jose Sabogal', '63', '1');
INSERT INTO `distrito` VALUES ('674', 'Chancay', '63', '1');
INSERT INTO `distrito` VALUES ('675', 'Cusco', '68', '1');
INSERT INTO `distrito` VALUES ('676', 'Ccorca', '68', '1');
INSERT INTO `distrito` VALUES ('677', 'Poroy', '68', '1');
INSERT INTO `distrito` VALUES ('678', 'San Jeronimo', '68', '1');
INSERT INTO `distrito` VALUES ('679', 'San Sebastian', '68', '1');
INSERT INTO `distrito` VALUES ('680', 'Santiago', '68', '1');
INSERT INTO `distrito` VALUES ('681', 'Saylla', '68', '1');
INSERT INTO `distrito` VALUES ('682', 'Wanchaq', '68', '1');
INSERT INTO `distrito` VALUES ('683', 'Acomayo', '69', '1');
INSERT INTO `distrito` VALUES ('684', 'Acopia', '69', '1');
INSERT INTO `distrito` VALUES ('685', 'Acos', '69', '1');
INSERT INTO `distrito` VALUES ('686', 'Mosoc Llacta', '69', '1');
INSERT INTO `distrito` VALUES ('687', 'Pomacanchi', '69', '1');
INSERT INTO `distrito` VALUES ('688', 'Rondocan', '69', '1');
INSERT INTO `distrito` VALUES ('689', 'Sangarara', '69', '1');
INSERT INTO `distrito` VALUES ('690', 'Anta', '70', '1');
INSERT INTO `distrito` VALUES ('691', 'Ancahuasi', '70', '1');
INSERT INTO `distrito` VALUES ('692', 'Cachimayo', '70', '1');
INSERT INTO `distrito` VALUES ('693', 'Chinchaypujio', '70', '1');
INSERT INTO `distrito` VALUES ('694', 'Huarocondo', '70', '1');
INSERT INTO `distrito` VALUES ('695', 'Limatambo', '70', '1');
INSERT INTO `distrito` VALUES ('696', 'Mollepata', '70', '1');
INSERT INTO `distrito` VALUES ('697', 'Pucyura', '70', '1');
INSERT INTO `distrito` VALUES ('698', 'Zurite', '70', '1');
INSERT INTO `distrito` VALUES ('699', 'Calca', '71', '1');
INSERT INTO `distrito` VALUES ('700', 'Coya', '71', '1');
INSERT INTO `distrito` VALUES ('701', 'Lamay', '71', '1');
INSERT INTO `distrito` VALUES ('702', 'Lares', '71', '1');
INSERT INTO `distrito` VALUES ('703', 'Pisac', '71', '1');
INSERT INTO `distrito` VALUES ('704', 'San Salvador', '71', '1');
INSERT INTO `distrito` VALUES ('705', 'Taray', '71', '1');
INSERT INTO `distrito` VALUES ('706', 'Yanatile', '71', '1');
INSERT INTO `distrito` VALUES ('707', 'Yanaoca', '72', '1');
INSERT INTO `distrito` VALUES ('708', 'Checca', '72', '1');
INSERT INTO `distrito` VALUES ('709', 'Kunturkanki', '72', '1');
INSERT INTO `distrito` VALUES ('710', 'Langui', '72', '1');
INSERT INTO `distrito` VALUES ('711', 'Layo', '72', '1');
INSERT INTO `distrito` VALUES ('712', 'Pampamarca', '72', '1');
INSERT INTO `distrito` VALUES ('713', 'Quehue', '72', '1');
INSERT INTO `distrito` VALUES ('714', 'Tupac Amaru', '72', '1');
INSERT INTO `distrito` VALUES ('715', 'Sicuani', '73', '1');
INSERT INTO `distrito` VALUES ('716', 'Checacupe', '73', '1');
INSERT INTO `distrito` VALUES ('717', 'Combapata', '73', '1');
INSERT INTO `distrito` VALUES ('718', 'Marangani', '73', '1');
INSERT INTO `distrito` VALUES ('719', 'Pitumarca', '73', '1');
INSERT INTO `distrito` VALUES ('720', 'San Pablo', '73', '1');
INSERT INTO `distrito` VALUES ('721', 'San Pedro', '73', '1');
INSERT INTO `distrito` VALUES ('722', 'Tinta', '73', '1');
INSERT INTO `distrito` VALUES ('723', 'Santo Tomas', '74', '1');
INSERT INTO `distrito` VALUES ('724', 'Capacmarca', '74', '1');
INSERT INTO `distrito` VALUES ('725', 'Chamaca', '74', '1');
INSERT INTO `distrito` VALUES ('726', 'Colquemarca', '74', '1');
INSERT INTO `distrito` VALUES ('727', 'Livitaca', '74', '1');
INSERT INTO `distrito` VALUES ('728', 'Llusco', '74', '1');
INSERT INTO `distrito` VALUES ('729', 'Quiñota', '74', '1');
INSERT INTO `distrito` VALUES ('730', 'Velille', '74', '1');
INSERT INTO `distrito` VALUES ('731', 'Espinar', '75', '1');
INSERT INTO `distrito` VALUES ('732', 'Condoroma', '75', '1');
INSERT INTO `distrito` VALUES ('733', 'Coporaque', '75', '1');
INSERT INTO `distrito` VALUES ('734', 'Ocoruro', '75', '1');
INSERT INTO `distrito` VALUES ('735', 'Pallpata', '75', '1');
INSERT INTO `distrito` VALUES ('736', 'Pichigua', '75', '1');
INSERT INTO `distrito` VALUES ('737', 'Suyckutambo', '75', '1');
INSERT INTO `distrito` VALUES ('738', 'Alto Pichigua', '75', '1');
INSERT INTO `distrito` VALUES ('739', 'Santa Ana', '76', '1');
INSERT INTO `distrito` VALUES ('740', 'Echarate', '76', '1');
INSERT INTO `distrito` VALUES ('741', 'Huayopata', '76', '1');
INSERT INTO `distrito` VALUES ('742', 'Maranura', '76', '1');
INSERT INTO `distrito` VALUES ('743', 'Ocobamba', '76', '1');
INSERT INTO `distrito` VALUES ('744', 'Quellouno', '76', '1');
INSERT INTO `distrito` VALUES ('745', 'Quimbiri', '76', '1');
INSERT INTO `distrito` VALUES ('746', 'Santa Teresa', '76', '1');
INSERT INTO `distrito` VALUES ('747', 'Vilcabamba', '76', '1');
INSERT INTO `distrito` VALUES ('748', 'Pichari', '76', '1');
INSERT INTO `distrito` VALUES ('749', 'Paruro', '77', '1');
INSERT INTO `distrito` VALUES ('750', 'Accha', '77', '1');
INSERT INTO `distrito` VALUES ('751', 'Ccapi', '77', '1');
INSERT INTO `distrito` VALUES ('752', 'Colcha', '77', '1');
INSERT INTO `distrito` VALUES ('753', 'Huanoquite', '77', '1');
INSERT INTO `distrito` VALUES ('754', 'Omacha', '77', '1');
INSERT INTO `distrito` VALUES ('755', 'Paccaritambo', '77', '1');
INSERT INTO `distrito` VALUES ('756', 'Pillpinto', '77', '1');
INSERT INTO `distrito` VALUES ('757', 'Yaurisque', '77', '1');
INSERT INTO `distrito` VALUES ('758', 'Paucartambo', '78', '1');
INSERT INTO `distrito` VALUES ('759', 'Caicay', '78', '1');
INSERT INTO `distrito` VALUES ('760', 'Challabamba', '78', '1');
INSERT INTO `distrito` VALUES ('761', 'Colquepata', '78', '1');
INSERT INTO `distrito` VALUES ('762', 'Huancarani', '78', '1');
INSERT INTO `distrito` VALUES ('763', 'Kosñipata', '78', '1');
INSERT INTO `distrito` VALUES ('764', 'Urcos', '79', '1');
INSERT INTO `distrito` VALUES ('765', 'Andahuaylillas', '79', '1');
INSERT INTO `distrito` VALUES ('766', 'Camanti', '79', '1');
INSERT INTO `distrito` VALUES ('767', 'Ccarhuayo', '79', '1');
INSERT INTO `distrito` VALUES ('768', 'Ccatca', '79', '1');
INSERT INTO `distrito` VALUES ('769', 'Cusipata', '79', '1');
INSERT INTO `distrito` VALUES ('770', 'Huaro', '79', '1');
INSERT INTO `distrito` VALUES ('771', 'Lucre', '79', '1');
INSERT INTO `distrito` VALUES ('772', 'Marcapata', '79', '1');
INSERT INTO `distrito` VALUES ('773', 'Ocongate', '79', '1');
INSERT INTO `distrito` VALUES ('774', 'Oropesa', '79', '1');
INSERT INTO `distrito` VALUES ('775', 'Quiquijana', '79', '1');
INSERT INTO `distrito` VALUES ('776', 'Urubamba', '80', '1');
INSERT INTO `distrito` VALUES ('777', 'Chinchero', '80', '1');
INSERT INTO `distrito` VALUES ('778', 'Huayllabamba', '80', '1');
INSERT INTO `distrito` VALUES ('779', 'Machupicchu', '80', '1');
INSERT INTO `distrito` VALUES ('780', 'Maras', '80', '1');
INSERT INTO `distrito` VALUES ('781', 'Ollantaytambo', '80', '1');
INSERT INTO `distrito` VALUES ('782', 'Yucay', '80', '1');
INSERT INTO `distrito` VALUES ('783', 'Huancavelica', '81', '1');
INSERT INTO `distrito` VALUES ('784', 'Acobambilla', '81', '1');
INSERT INTO `distrito` VALUES ('785', 'Acoria', '81', '1');
INSERT INTO `distrito` VALUES ('786', 'Conayca', '81', '1');
INSERT INTO `distrito` VALUES ('787', 'Cuenca', '81', '1');
INSERT INTO `distrito` VALUES ('788', 'Huachocolpa', '81', '1');
INSERT INTO `distrito` VALUES ('789', 'Huayllahuara', '81', '1');
INSERT INTO `distrito` VALUES ('790', 'Izcuchaca', '81', '1');
INSERT INTO `distrito` VALUES ('791', 'Laria', '81', '1');
INSERT INTO `distrito` VALUES ('792', 'Manta', '81', '1');
INSERT INTO `distrito` VALUES ('793', 'Mariscal Caceres', '81', '1');
INSERT INTO `distrito` VALUES ('794', 'Moya', '81', '1');
INSERT INTO `distrito` VALUES ('795', 'Nuevo Occoro', '81', '1');
INSERT INTO `distrito` VALUES ('796', 'Palca', '81', '1');
INSERT INTO `distrito` VALUES ('797', 'Pilchaca', '81', '1');
INSERT INTO `distrito` VALUES ('798', 'Vilca', '81', '1');
INSERT INTO `distrito` VALUES ('799', 'Yauli', '81', '1');
INSERT INTO `distrito` VALUES ('800', 'Ascencion', '81', '1');
INSERT INTO `distrito` VALUES ('801', 'Acobamba', '82', '1');
INSERT INTO `distrito` VALUES ('802', 'Andabamba', '82', '1');
INSERT INTO `distrito` VALUES ('803', 'Anta', '82', '1');
INSERT INTO `distrito` VALUES ('804', 'Caja', '82', '1');
INSERT INTO `distrito` VALUES ('805', 'Marcas', '82', '1');
INSERT INTO `distrito` VALUES ('806', 'Paucara', '82', '1');
INSERT INTO `distrito` VALUES ('807', 'Pomacocha', '82', '1');
INSERT INTO `distrito` VALUES ('808', 'Rosario', '82', '1');
INSERT INTO `distrito` VALUES ('809', 'Lircay', '83', '1');
INSERT INTO `distrito` VALUES ('810', 'Anchonga', '83', '1');
INSERT INTO `distrito` VALUES ('811', 'Callanmarca', '83', '1');
INSERT INTO `distrito` VALUES ('812', 'Ccochaccasa', '83', '1');
INSERT INTO `distrito` VALUES ('813', 'Chincho', '83', '1');
INSERT INTO `distrito` VALUES ('814', 'Congalla', '83', '1');
INSERT INTO `distrito` VALUES ('815', 'Huanca-huanca', '83', '1');
INSERT INTO `distrito` VALUES ('816', 'Huayllay Grande', '83', '1');
INSERT INTO `distrito` VALUES ('817', 'Julcamarca', '83', '1');
INSERT INTO `distrito` VALUES ('818', 'San Antonio De Antaparco', '83', '1');
INSERT INTO `distrito` VALUES ('819', 'Santo Tomas De Pata', '83', '1');
INSERT INTO `distrito` VALUES ('820', 'Secclla', '83', '1');
INSERT INTO `distrito` VALUES ('821', 'Castrovirreyna', '84', '1');
INSERT INTO `distrito` VALUES ('822', 'Arma', '84', '1');
INSERT INTO `distrito` VALUES ('823', 'Aurahua', '84', '1');
INSERT INTO `distrito` VALUES ('824', 'Capillas', '84', '1');
INSERT INTO `distrito` VALUES ('825', 'Chupamarca', '84', '1');
INSERT INTO `distrito` VALUES ('826', 'Cocas', '84', '1');
INSERT INTO `distrito` VALUES ('827', 'Huachos', '84', '1');
INSERT INTO `distrito` VALUES ('828', 'Huamatambo', '84', '1');
INSERT INTO `distrito` VALUES ('829', 'Mollepampa', '84', '1');
INSERT INTO `distrito` VALUES ('830', 'San Juan', '84', '1');
INSERT INTO `distrito` VALUES ('831', 'Santa Ana', '84', '1');
INSERT INTO `distrito` VALUES ('832', 'Tantara', '84', '1');
INSERT INTO `distrito` VALUES ('833', 'Ticrapo', '84', '1');
INSERT INTO `distrito` VALUES ('834', 'Churcampa', '85', '1');
INSERT INTO `distrito` VALUES ('835', 'Anco', '85', '1');
INSERT INTO `distrito` VALUES ('836', 'Chinchihuasi', '85', '1');
INSERT INTO `distrito` VALUES ('837', 'El Carmen', '85', '1');
INSERT INTO `distrito` VALUES ('838', 'La Merced', '85', '1');
INSERT INTO `distrito` VALUES ('839', 'Locroja', '85', '1');
INSERT INTO `distrito` VALUES ('840', 'Pachamarca', '85', '1');
INSERT INTO `distrito` VALUES ('841', 'Paucarbamba', '85', '1');
INSERT INTO `distrito` VALUES ('842', 'San Miguel De Mayocc', '85', '1');
INSERT INTO `distrito` VALUES ('843', 'San Pedro De Coris', '85', '1');
INSERT INTO `distrito` VALUES ('844', 'Huaytara', '86', '1');
INSERT INTO `distrito` VALUES ('845', 'Ayavi', '86', '1');
INSERT INTO `distrito` VALUES ('846', 'Cordova', '86', '1');
INSERT INTO `distrito` VALUES ('847', 'Huayacundo Arma', '86', '1');
INSERT INTO `distrito` VALUES ('848', 'Laramarca', '86', '1');
INSERT INTO `distrito` VALUES ('849', 'Ocoyo', '86', '1');
INSERT INTO `distrito` VALUES ('850', 'Pilpichaca', '86', '1');
INSERT INTO `distrito` VALUES ('851', 'Querco', '86', '1');
INSERT INTO `distrito` VALUES ('852', 'Quito-arma', '86', '1');
INSERT INTO `distrito` VALUES ('853', 'San Antonio De Cusicancha', '86', '1');
INSERT INTO `distrito` VALUES ('854', 'San Francisco De Sangayaico', '86', '1');
INSERT INTO `distrito` VALUES ('855', 'San Isidro', '86', '1');
INSERT INTO `distrito` VALUES ('856', 'Santiago De Chocorvos', '86', '1');
INSERT INTO `distrito` VALUES ('857', 'Santiago De Quirahuara', '86', '1');
INSERT INTO `distrito` VALUES ('858', 'Santo Domingo De Capillas', '86', '1');
INSERT INTO `distrito` VALUES ('859', 'Tambo', '86', '1');
INSERT INTO `distrito` VALUES ('860', 'Pampas', '87', '1');
INSERT INTO `distrito` VALUES ('861', 'Acostambo', '87', '1');
INSERT INTO `distrito` VALUES ('862', 'Acraquia', '87', '1');
INSERT INTO `distrito` VALUES ('863', 'Ahuaycha', '87', '1');
INSERT INTO `distrito` VALUES ('864', 'Colcabamba', '87', '1');
INSERT INTO `distrito` VALUES ('865', 'Daniel Hernandez', '87', '1');
INSERT INTO `distrito` VALUES ('866', 'Huachocolpa', '87', '1');
INSERT INTO `distrito` VALUES ('867', 'Huando', '87', '1');
INSERT INTO `distrito` VALUES ('868', 'Huaribamba', '87', '1');
INSERT INTO `distrito` VALUES ('869', 'Ñahuimpuquio', '87', '1');
INSERT INTO `distrito` VALUES ('870', 'Pazos', '87', '1');
INSERT INTO `distrito` VALUES ('871', 'Quishuar', '87', '1');
INSERT INTO `distrito` VALUES ('872', 'Salcabamba', '87', '1');
INSERT INTO `distrito` VALUES ('873', 'Salcahuasi', '87', '1');
INSERT INTO `distrito` VALUES ('874', 'San Marcos De Rocchac', '87', '1');
INSERT INTO `distrito` VALUES ('875', 'Surcubamba', '87', '1');
INSERT INTO `distrito` VALUES ('876', 'Tintay Puncu', '87', '1');
INSERT INTO `distrito` VALUES ('877', 'Huanuco', '88', '1');
INSERT INTO `distrito` VALUES ('878', 'Amarilis', '88', '1');
INSERT INTO `distrito` VALUES ('879', 'Chinchao', '88', '1');
INSERT INTO `distrito` VALUES ('880', 'Churubamba', '88', '1');
INSERT INTO `distrito` VALUES ('881', 'Margos', '88', '1');
INSERT INTO `distrito` VALUES ('882', 'Quisqui', '88', '1');
INSERT INTO `distrito` VALUES ('883', 'San Francisco De Cayran', '88', '1');
INSERT INTO `distrito` VALUES ('884', 'San Pedro De Chaulan', '88', '1');
INSERT INTO `distrito` VALUES ('885', 'Santa Maria Del Valle', '88', '1');
INSERT INTO `distrito` VALUES ('886', 'Yarumayo', '88', '1');
INSERT INTO `distrito` VALUES ('887', 'Pillco Marca', '88', '1');
INSERT INTO `distrito` VALUES ('888', 'Ambo', '89', '1');
INSERT INTO `distrito` VALUES ('889', 'Cayna', '89', '1');
INSERT INTO `distrito` VALUES ('890', 'Colpas', '89', '1');
INSERT INTO `distrito` VALUES ('891', 'Conchamarca', '89', '1');
INSERT INTO `distrito` VALUES ('892', 'Huacar', '89', '1');
INSERT INTO `distrito` VALUES ('893', 'San Francisco', '89', '1');
INSERT INTO `distrito` VALUES ('894', 'San Rafael', '89', '1');
INSERT INTO `distrito` VALUES ('895', 'Tomay Kichwa', '89', '1');
INSERT INTO `distrito` VALUES ('896', 'La Union', '90', '1');
INSERT INTO `distrito` VALUES ('897', 'Chuquis', '90', '1');
INSERT INTO `distrito` VALUES ('898', 'Marias', '90', '1');
INSERT INTO `distrito` VALUES ('899', 'Pachas', '90', '1');
INSERT INTO `distrito` VALUES ('900', 'Quivilla', '90', '1');
INSERT INTO `distrito` VALUES ('901', 'Ripan', '90', '1');
INSERT INTO `distrito` VALUES ('902', 'Shunqui', '90', '1');
INSERT INTO `distrito` VALUES ('903', 'Sillapata', '90', '1');
INSERT INTO `distrito` VALUES ('904', 'Yanas', '90', '1');
INSERT INTO `distrito` VALUES ('905', 'Huacaybamba', '91', '1');
INSERT INTO `distrito` VALUES ('906', 'Canchabamba', '91', '1');
INSERT INTO `distrito` VALUES ('907', 'Cochabamba', '91', '1');
INSERT INTO `distrito` VALUES ('908', 'Pinra', '91', '1');
INSERT INTO `distrito` VALUES ('909', 'Llata', '92', '1');
INSERT INTO `distrito` VALUES ('910', 'Arancay', '92', '1');
INSERT INTO `distrito` VALUES ('911', 'Chavin De Pariarca', '92', '1');
INSERT INTO `distrito` VALUES ('912', 'Jacas Grande', '92', '1');
INSERT INTO `distrito` VALUES ('913', 'Jircan', '92', '1');
INSERT INTO `distrito` VALUES ('914', 'Miraflores', '92', '1');
INSERT INTO `distrito` VALUES ('915', 'Monzon', '92', '1');
INSERT INTO `distrito` VALUES ('916', 'Punchao', '92', '1');
INSERT INTO `distrito` VALUES ('917', 'Puños', '92', '1');
INSERT INTO `distrito` VALUES ('918', 'Singa', '92', '1');
INSERT INTO `distrito` VALUES ('919', 'Tantamayo', '92', '1');
INSERT INTO `distrito` VALUES ('920', 'Rupa-rupa', '93', '1');
INSERT INTO `distrito` VALUES ('921', 'Daniel Alomia Robles', '93', '1');
INSERT INTO `distrito` VALUES ('922', 'Hermilio Valdizan', '93', '1');
INSERT INTO `distrito` VALUES ('923', 'Jose Crespo Y Castillo', '93', '1');
INSERT INTO `distrito` VALUES ('924', 'Luyando', '93', '1');
INSERT INTO `distrito` VALUES ('925', 'Mariano Damaso Beraun', '93', '1');
INSERT INTO `distrito` VALUES ('926', 'Huacrachuco', '94', '1');
INSERT INTO `distrito` VALUES ('927', 'Cholon', '94', '1');
INSERT INTO `distrito` VALUES ('928', 'San Buenaventura', '94', '1');
INSERT INTO `distrito` VALUES ('929', 'Panao', '95', '1');
INSERT INTO `distrito` VALUES ('930', 'Chaglla', '95', '1');
INSERT INTO `distrito` VALUES ('931', 'Molino', '95', '1');
INSERT INTO `distrito` VALUES ('932', 'Umari', '95', '1');
INSERT INTO `distrito` VALUES ('933', 'Puerto Inca', '96', '1');
INSERT INTO `distrito` VALUES ('934', 'Codo Del Pozuzo', '96', '1');
INSERT INTO `distrito` VALUES ('935', 'Honoria', '96', '1');
INSERT INTO `distrito` VALUES ('936', 'Tournavista', '96', '1');
INSERT INTO `distrito` VALUES ('937', 'Yuyapichis', '96', '1');
INSERT INTO `distrito` VALUES ('938', 'Jesus', '97', '1');
INSERT INTO `distrito` VALUES ('939', 'Baños', '97', '1');
INSERT INTO `distrito` VALUES ('940', 'Jivia', '97', '1');
INSERT INTO `distrito` VALUES ('941', 'Queropalca', '97', '1');
INSERT INTO `distrito` VALUES ('942', 'Rondos', '97', '1');
INSERT INTO `distrito` VALUES ('943', 'San Francisco De Asis', '97', '1');
INSERT INTO `distrito` VALUES ('944', 'San Miguel De Cauri', '97', '1');
INSERT INTO `distrito` VALUES ('945', 'Chavinillo', '98', '1');
INSERT INTO `distrito` VALUES ('946', 'Cahuac', '98', '1');
INSERT INTO `distrito` VALUES ('947', 'Chacabamba', '98', '1');
INSERT INTO `distrito` VALUES ('948', 'Chupan', '98', '1');
INSERT INTO `distrito` VALUES ('949', 'Jacas Chico', '98', '1');
INSERT INTO `distrito` VALUES ('950', 'Obas', '98', '1');
INSERT INTO `distrito` VALUES ('951', 'Pampamarca', '98', '1');
INSERT INTO `distrito` VALUES ('952', 'Ica', '99', '1');
INSERT INTO `distrito` VALUES ('953', 'La Tinguiña', '99', '1');
INSERT INTO `distrito` VALUES ('954', 'Los Aquijes', '99', '1');
INSERT INTO `distrito` VALUES ('955', 'Ocucaje', '99', '1');
INSERT INTO `distrito` VALUES ('956', 'Pachacutec', '99', '1');
INSERT INTO `distrito` VALUES ('957', 'Parcona', '99', '1');
INSERT INTO `distrito` VALUES ('958', 'Pueblo Nuevo', '99', '1');
INSERT INTO `distrito` VALUES ('959', 'Salas', '99', '1');
INSERT INTO `distrito` VALUES ('960', 'San Jose De Los Molinos', '99', '1');
INSERT INTO `distrito` VALUES ('961', 'San Juan Bautista', '99', '1');
INSERT INTO `distrito` VALUES ('962', 'Santiago', '99', '1');
INSERT INTO `distrito` VALUES ('963', 'Subtanjalla', '99', '1');
INSERT INTO `distrito` VALUES ('964', 'Tate', '99', '1');
INSERT INTO `distrito` VALUES ('965', 'Yauca Del Rosario', '99', '1');
INSERT INTO `distrito` VALUES ('966', 'Chincha Alta', '100', '1');
INSERT INTO `distrito` VALUES ('967', 'Alto Laran', '100', '1');
INSERT INTO `distrito` VALUES ('968', 'Chavin', '100', '1');
INSERT INTO `distrito` VALUES ('969', 'Chincha Baja', '100', '1');
INSERT INTO `distrito` VALUES ('970', 'El Carmen', '100', '1');
INSERT INTO `distrito` VALUES ('971', 'Grocio Prado', '100', '1');
INSERT INTO `distrito` VALUES ('972', 'Pueblo Nuevo', '100', '1');
INSERT INTO `distrito` VALUES ('973', 'San Juan De Yanac', '100', '1');
INSERT INTO `distrito` VALUES ('974', 'San Pedro De Huacarpana', '100', '1');
INSERT INTO `distrito` VALUES ('975', 'Sunampe', '100', '1');
INSERT INTO `distrito` VALUES ('976', 'Tambo De Mora', '100', '1');
INSERT INTO `distrito` VALUES ('977', 'Nazca', '101', '1');
INSERT INTO `distrito` VALUES ('978', 'Changuillo', '101', '1');
INSERT INTO `distrito` VALUES ('979', 'El Ingenio', '101', '1');
INSERT INTO `distrito` VALUES ('980', 'Marcona', '101', '1');
INSERT INTO `distrito` VALUES ('981', 'Vista Alegre', '101', '1');
INSERT INTO `distrito` VALUES ('982', 'Palpa', '102', '1');
INSERT INTO `distrito` VALUES ('983', 'Llipata', '102', '1');
INSERT INTO `distrito` VALUES ('984', 'Rio Grande', '102', '1');
INSERT INTO `distrito` VALUES ('985', 'Santa Cruz', '102', '1');
INSERT INTO `distrito` VALUES ('986', 'Tibillo', '102', '1');
INSERT INTO `distrito` VALUES ('987', 'Pisco', '103', '1');
INSERT INTO `distrito` VALUES ('988', 'Huancano', '103', '1');
INSERT INTO `distrito` VALUES ('989', 'Humay', '103', '1');
INSERT INTO `distrito` VALUES ('990', 'Independencia', '103', '1');
INSERT INTO `distrito` VALUES ('991', 'Paracas', '103', '1');
INSERT INTO `distrito` VALUES ('992', 'San Andres', '103', '1');
INSERT INTO `distrito` VALUES ('993', 'San Clemente', '103', '1');
INSERT INTO `distrito` VALUES ('994', 'Tupac Amaru Inca', '103', '1');
INSERT INTO `distrito` VALUES ('995', 'Huancayo', '104', '1');
INSERT INTO `distrito` VALUES ('996', 'Carhuacallanga', '104', '1');
INSERT INTO `distrito` VALUES ('997', 'Chacapampa', '104', '1');
INSERT INTO `distrito` VALUES ('998', 'Chicche', '104', '1');
INSERT INTO `distrito` VALUES ('999', 'Chilca', '104', '1');
INSERT INTO `distrito` VALUES ('1000', 'Chongos Alto', '104', '1');
INSERT INTO `distrito` VALUES ('1001', 'Chupuro', '104', '1');
INSERT INTO `distrito` VALUES ('1002', 'Colca', '104', '1');
INSERT INTO `distrito` VALUES ('1003', 'Cullhuas', '104', '1');
INSERT INTO `distrito` VALUES ('1004', 'El Tambo', '104', '1');
INSERT INTO `distrito` VALUES ('1005', 'Huacrapuquio', '104', '1');
INSERT INTO `distrito` VALUES ('1006', 'Hualhuas', '104', '1');
INSERT INTO `distrito` VALUES ('1007', 'Huancan', '104', '1');
INSERT INTO `distrito` VALUES ('1008', 'Huasicancha', '104', '1');
INSERT INTO `distrito` VALUES ('1009', 'Huayucachi', '104', '1');
INSERT INTO `distrito` VALUES ('1010', 'Ingenio', '104', '1');
INSERT INTO `distrito` VALUES ('1011', 'Pariahuanca', '104', '1');
INSERT INTO `distrito` VALUES ('1012', 'Pilcomayo', '104', '1');
INSERT INTO `distrito` VALUES ('1013', 'Pucara', '104', '1');
INSERT INTO `distrito` VALUES ('1014', 'Quichuay', '104', '1');
INSERT INTO `distrito` VALUES ('1015', 'Quilcas', '104', '1');
INSERT INTO `distrito` VALUES ('1016', 'San Agustin', '104', '1');
INSERT INTO `distrito` VALUES ('1017', 'San Jeronimo De Tunan', '104', '1');
INSERT INTO `distrito` VALUES ('1018', 'Saño', '104', '1');
INSERT INTO `distrito` VALUES ('1019', 'Santo Domingo De Acobamba', '104', '1');
INSERT INTO `distrito` VALUES ('1020', 'Sapallanga', '104', '1');
INSERT INTO `distrito` VALUES ('1021', 'Sicaya', '104', '1');
INSERT INTO `distrito` VALUES ('1022', 'Viques', '104', '1');
INSERT INTO `distrito` VALUES ('1023', 'Chanchamayo', '106', '1');
INSERT INTO `distrito` VALUES ('1024', 'Perene', '106', '1');
INSERT INTO `distrito` VALUES ('1025', 'Pichanaqui', '106', '1');
INSERT INTO `distrito` VALUES ('1026', 'San Luis De Shuaro', '106', '1');
INSERT INTO `distrito` VALUES ('1027', 'San Ramon', '106', '1');
INSERT INTO `distrito` VALUES ('1028', 'Vitoc', '106', '1');
INSERT INTO `distrito` VALUES ('1029', 'Concepcion', '105', '1');
INSERT INTO `distrito` VALUES ('1030', 'Aco', '105', '1');
INSERT INTO `distrito` VALUES ('1031', 'Andamarca', '105', '1');
INSERT INTO `distrito` VALUES ('1032', 'Chambara', '105', '1');
INSERT INTO `distrito` VALUES ('1033', 'Cochas', '105', '1');
INSERT INTO `distrito` VALUES ('1034', 'Comas', '105', '1');
INSERT INTO `distrito` VALUES ('1035', 'Heroinas Toledo', '105', '1');
INSERT INTO `distrito` VALUES ('1036', 'Manzanares', '105', '1');
INSERT INTO `distrito` VALUES ('1037', 'Mariscal Castilla', '105', '1');
INSERT INTO `distrito` VALUES ('1038', 'Matahuasi', '105', '1');
INSERT INTO `distrito` VALUES ('1039', 'Mito', '105', '1');
INSERT INTO `distrito` VALUES ('1040', 'Nueve De Julio', '105', '1');
INSERT INTO `distrito` VALUES ('1041', 'Orcotuna', '105', '1');
INSERT INTO `distrito` VALUES ('1042', 'San Jose De Quero', '105', '1');
INSERT INTO `distrito` VALUES ('1043', 'Santa Rosa De Ocopa', '105', '1');
INSERT INTO `distrito` VALUES ('1044', 'Junin', '108', '1');
INSERT INTO `distrito` VALUES ('1045', 'Carhuamayo', '108', '1');
INSERT INTO `distrito` VALUES ('1046', 'Ondores', '108', '1');
INSERT INTO `distrito` VALUES ('1047', 'Ulcumayo', '108', '1');
INSERT INTO `distrito` VALUES ('1048', 'Satipo', '109', '1');
INSERT INTO `distrito` VALUES ('1049', 'Coviriali', '109', '1');
INSERT INTO `distrito` VALUES ('1050', 'Llaylla', '109', '1');
INSERT INTO `distrito` VALUES ('1051', 'Mazamari', '109', '1');
INSERT INTO `distrito` VALUES ('1052', 'Pampa Hermosa', '109', '1');
INSERT INTO `distrito` VALUES ('1053', 'Pangoa', '109', '1');
INSERT INTO `distrito` VALUES ('1054', 'Rio Negro', '109', '1');
INSERT INTO `distrito` VALUES ('1055', 'Rio Tambo', '109', '1');
INSERT INTO `distrito` VALUES ('1056', 'Jauja', '107', '1');
INSERT INTO `distrito` VALUES ('1057', 'Acolla', '107', '1');
INSERT INTO `distrito` VALUES ('1058', 'Apata', '107', '1');
INSERT INTO `distrito` VALUES ('1059', 'Ataura', '107', '1');
INSERT INTO `distrito` VALUES ('1060', 'Canchayllo', '107', '1');
INSERT INTO `distrito` VALUES ('1061', 'Curicaca', '107', '1');
INSERT INTO `distrito` VALUES ('1062', 'El Mantaro', '107', '1');
INSERT INTO `distrito` VALUES ('1063', 'Huamali', '107', '1');
INSERT INTO `distrito` VALUES ('1064', 'Huaripampa', '107', '1');
INSERT INTO `distrito` VALUES ('1065', 'Huertas', '107', '1');
INSERT INTO `distrito` VALUES ('1066', 'Janjaillo', '107', '1');
INSERT INTO `distrito` VALUES ('1067', 'Julcan', '107', '1');
INSERT INTO `distrito` VALUES ('1068', 'Leonor Ordoñez', '107', '1');
INSERT INTO `distrito` VALUES ('1069', 'Llocllapampa', '107', '1');
INSERT INTO `distrito` VALUES ('1070', 'Marco', '107', '1');
INSERT INTO `distrito` VALUES ('1071', 'Masma', '107', '1');
INSERT INTO `distrito` VALUES ('1072', 'Masma Chicche', '107', '1');
INSERT INTO `distrito` VALUES ('1073', 'Molinos', '107', '1');
INSERT INTO `distrito` VALUES ('1074', 'Monobamba', '107', '1');
INSERT INTO `distrito` VALUES ('1075', 'Muqui', '107', '1');
INSERT INTO `distrito` VALUES ('1076', 'Muquiyauyo', '107', '1');
INSERT INTO `distrito` VALUES ('1077', 'Paca', '107', '1');
INSERT INTO `distrito` VALUES ('1078', 'Paccha', '107', '1');
INSERT INTO `distrito` VALUES ('1079', 'Pancan', '107', '1');
INSERT INTO `distrito` VALUES ('1080', 'Parco', '107', '1');
INSERT INTO `distrito` VALUES ('1081', 'Pomacancha', '107', '1');
INSERT INTO `distrito` VALUES ('1082', 'Ricran', '107', '1');
INSERT INTO `distrito` VALUES ('1083', 'San Lorenzo', '107', '1');
INSERT INTO `distrito` VALUES ('1084', 'San Pedro De Chunan', '107', '1');
INSERT INTO `distrito` VALUES ('1085', 'Sausa', '107', '1');
INSERT INTO `distrito` VALUES ('1086', 'Sincos', '107', '1');
INSERT INTO `distrito` VALUES ('1087', 'Tunan Marca', '107', '1');
INSERT INTO `distrito` VALUES ('1088', 'Yauli', '107', '1');
INSERT INTO `distrito` VALUES ('1089', 'Yauyos', '107', '1');
INSERT INTO `distrito` VALUES ('1090', 'Tarma', '110', '1');
INSERT INTO `distrito` VALUES ('1091', 'Acobamba', '110', '1');
INSERT INTO `distrito` VALUES ('1092', 'Huaricolca', '110', '1');
INSERT INTO `distrito` VALUES ('1093', 'Huasahuasi', '110', '1');
INSERT INTO `distrito` VALUES ('1094', 'La Union', '110', '1');
INSERT INTO `distrito` VALUES ('1095', 'Palca', '110', '1');
INSERT INTO `distrito` VALUES ('1096', 'Palcamayo', '110', '1');
INSERT INTO `distrito` VALUES ('1097', 'San Pedro De Cajas', '110', '1');
INSERT INTO `distrito` VALUES ('1098', 'Tapo', '110', '1');
INSERT INTO `distrito` VALUES ('1099', 'La Oroya', '111', '1');
INSERT INTO `distrito` VALUES ('1100', 'Chacapalpa', '111', '1');
INSERT INTO `distrito` VALUES ('1101', 'Huay-huay', '111', '1');
INSERT INTO `distrito` VALUES ('1102', 'Marcapomacocha', '111', '1');
INSERT INTO `distrito` VALUES ('1103', 'Morococha', '111', '1');
INSERT INTO `distrito` VALUES ('1104', 'Paccha', '111', '1');
INSERT INTO `distrito` VALUES ('1105', 'Santa Barbara De Carhuacayan', '111', '1');
INSERT INTO `distrito` VALUES ('1106', 'Santa Rosa De Sacco', '111', '1');
INSERT INTO `distrito` VALUES ('1107', 'Suitucancha', '111', '1');
INSERT INTO `distrito` VALUES ('1108', 'Yauli', '111', '1');
INSERT INTO `distrito` VALUES ('1109', 'Chupaca', '112', '1');
INSERT INTO `distrito` VALUES ('1110', 'Ahuac', '112', '1');
INSERT INTO `distrito` VALUES ('1111', 'Chongos Bajo', '112', '1');
INSERT INTO `distrito` VALUES ('1112', 'Huachac', '112', '1');
INSERT INTO `distrito` VALUES ('1113', 'Huamancaca Chico', '112', '1');
INSERT INTO `distrito` VALUES ('1114', 'San Juan De Yscos', '112', '1');
INSERT INTO `distrito` VALUES ('1115', 'San Juan De Jarpa', '112', '1');
INSERT INTO `distrito` VALUES ('1116', 'Tres De Diciembre', '112', '1');
INSERT INTO `distrito` VALUES ('1117', 'Yanacancha', '112', '1');
INSERT INTO `distrito` VALUES ('1118', 'Trujillo', '113', '1');
INSERT INTO `distrito` VALUES ('1119', 'El Porvenir', '113', '1');
INSERT INTO `distrito` VALUES ('1120', 'Florencia De Mora', '113', '1');
INSERT INTO `distrito` VALUES ('1121', 'Huanchaco', '113', '1');
INSERT INTO `distrito` VALUES ('1122', 'La Esperanza', '113', '1');
INSERT INTO `distrito` VALUES ('1123', 'Laredo', '113', '1');
INSERT INTO `distrito` VALUES ('1124', 'Moche', '113', '1');
INSERT INTO `distrito` VALUES ('1125', 'Poroto', '113', '1');
INSERT INTO `distrito` VALUES ('1126', 'Salaverry', '113', '1');
INSERT INTO `distrito` VALUES ('1127', 'Simbal', '113', '1');
INSERT INTO `distrito` VALUES ('1128', 'Victor Larco Herrera', '113', '1');
INSERT INTO `distrito` VALUES ('1129', 'Ascope', '114', '1');
INSERT INTO `distrito` VALUES ('1130', 'Chicama', '114', '1');
INSERT INTO `distrito` VALUES ('1131', 'Chocope', '114', '1');
INSERT INTO `distrito` VALUES ('1132', 'Magdalena De Cao', '114', '1');
INSERT INTO `distrito` VALUES ('1133', 'Paijan', '114', '1');
INSERT INTO `distrito` VALUES ('1134', 'Razuri', '114', '1');
INSERT INTO `distrito` VALUES ('1135', 'Santiago De Cao', '114', '1');
INSERT INTO `distrito` VALUES ('1136', 'Casa Grande', '114', '1');
INSERT INTO `distrito` VALUES ('1137', 'Bolivar', '115', '1');
INSERT INTO `distrito` VALUES ('1138', 'Bambamarca', '115', '1');
INSERT INTO `distrito` VALUES ('1139', 'Condormarca', '115', '1');
INSERT INTO `distrito` VALUES ('1140', 'Longotea', '115', '1');
INSERT INTO `distrito` VALUES ('1141', 'Uchumarca', '115', '1');
INSERT INTO `distrito` VALUES ('1142', 'Ucuncha', '115', '1');
INSERT INTO `distrito` VALUES ('1143', 'Chepen', '116', '1');
INSERT INTO `distrito` VALUES ('1144', 'Pacanga', '116', '1');
INSERT INTO `distrito` VALUES ('1145', 'Pueblo Nuevo', '116', '1');
INSERT INTO `distrito` VALUES ('1146', 'Julcan', '117', '1');
INSERT INTO `distrito` VALUES ('1147', 'Calamarca', '117', '1');
INSERT INTO `distrito` VALUES ('1148', 'Carabamba', '117', '1');
INSERT INTO `distrito` VALUES ('1149', 'Huaso', '117', '1');
INSERT INTO `distrito` VALUES ('1150', 'Otuzco', '118', '1');
INSERT INTO `distrito` VALUES ('1151', 'Agallpampa', '118', '1');
INSERT INTO `distrito` VALUES ('1152', 'Charat', '118', '1');
INSERT INTO `distrito` VALUES ('1153', 'Huaranchal', '118', '1');
INSERT INTO `distrito` VALUES ('1154', 'La Cuesta', '118', '1');
INSERT INTO `distrito` VALUES ('1155', 'Mache', '118', '1');
INSERT INTO `distrito` VALUES ('1156', 'Paranday', '118', '1');
INSERT INTO `distrito` VALUES ('1157', 'Salpo', '118', '1');
INSERT INTO `distrito` VALUES ('1158', 'Sinsicap', '118', '1');
INSERT INTO `distrito` VALUES ('1159', 'Usquil', '118', '1');
INSERT INTO `distrito` VALUES ('1160', 'Cascas', '123', '1');
INSERT INTO `distrito` VALUES ('1161', 'Lucma', '123', '1');
INSERT INTO `distrito` VALUES ('1162', 'Marmot', '123', '1');
INSERT INTO `distrito` VALUES ('1163', 'Sayapullo', '123', '1');
INSERT INTO `distrito` VALUES ('1164', 'Viru', '124', '1');
INSERT INTO `distrito` VALUES ('1165', 'Chao', '124', '1');
INSERT INTO `distrito` VALUES ('1166', 'Guadalupito', '124', '1');
INSERT INTO `distrito` VALUES ('1167', 'San Pedro De Lloc', '119', '1');
INSERT INTO `distrito` VALUES ('1168', 'Guadalupe', '119', '1');
INSERT INTO `distrito` VALUES ('1169', 'Jequetepeque', '119', '1');
INSERT INTO `distrito` VALUES ('1170', 'Pacasmayo', '119', '1');
INSERT INTO `distrito` VALUES ('1171', 'San Jose', '119', '1');
INSERT INTO `distrito` VALUES ('1172', 'Tayabamba', '120', '1');
INSERT INTO `distrito` VALUES ('1173', 'Buldibuyo', '120', '1');
INSERT INTO `distrito` VALUES ('1174', 'Chillia', '120', '1');
INSERT INTO `distrito` VALUES ('1175', 'Huancaspata', '120', '1');
INSERT INTO `distrito` VALUES ('1176', 'Huaylillas', '120', '1');
INSERT INTO `distrito` VALUES ('1177', 'Huayo', '120', '1');
INSERT INTO `distrito` VALUES ('1178', 'Ongon', '120', '1');
INSERT INTO `distrito` VALUES ('1179', 'Parcoy', '120', '1');
INSERT INTO `distrito` VALUES ('1180', 'Pataz', '120', '1');
INSERT INTO `distrito` VALUES ('1181', 'Pias', '120', '1');
INSERT INTO `distrito` VALUES ('1182', 'Santiago De Challas', '120', '1');
INSERT INTO `distrito` VALUES ('1183', 'Taurija', '120', '1');
INSERT INTO `distrito` VALUES ('1184', 'Urpay', '120', '1');
INSERT INTO `distrito` VALUES ('1185', 'Huamachuco', '121', '1');
INSERT INTO `distrito` VALUES ('1186', 'Chugay', '121', '1');
INSERT INTO `distrito` VALUES ('1187', 'Cochorco', '121', '1');
INSERT INTO `distrito` VALUES ('1188', 'Curgos', '121', '1');
INSERT INTO `distrito` VALUES ('1189', 'Marcabal', '121', '1');
INSERT INTO `distrito` VALUES ('1190', 'Sanagoran', '121', '1');
INSERT INTO `distrito` VALUES ('1191', 'Sarin', '121', '1');
INSERT INTO `distrito` VALUES ('1192', 'Sartimbamba', '121', '1');
INSERT INTO `distrito` VALUES ('1193', 'Santiago De Chuco', '122', '1');
INSERT INTO `distrito` VALUES ('1194', 'Angasmarca', '122', '1');
INSERT INTO `distrito` VALUES ('1195', 'Cachicadan', '122', '1');
INSERT INTO `distrito` VALUES ('1196', 'Mollebamba', '122', '1');
INSERT INTO `distrito` VALUES ('1197', 'Mollepata', '122', '1');
INSERT INTO `distrito` VALUES ('1198', 'Quiruvilca', '122', '1');
INSERT INTO `distrito` VALUES ('1199', 'Santa Cruz De Chuca', '122', '1');
INSERT INTO `distrito` VALUES ('1200', 'Sitabamba', '122', '1');
INSERT INTO `distrito` VALUES ('1201', 'Chiclayo', '125', '1');
INSERT INTO `distrito` VALUES ('1202', 'Chongoyape', '125', '0');
INSERT INTO `distrito` VALUES ('1203', 'Eten', '125', '1');
INSERT INTO `distrito` VALUES ('1204', 'Eten Puerto', '125', '1');
INSERT INTO `distrito` VALUES ('1205', 'Jose Leonardo Ortiz', '125', '0');
INSERT INTO `distrito` VALUES ('1206', 'La Victoria', '125', '0');
INSERT INTO `distrito` VALUES ('1207', 'Lagunas', '125', '1');
INSERT INTO `distrito` VALUES ('1208', 'Monsefu', '125', '1');
INSERT INTO `distrito` VALUES ('1209', 'Nueva Arica', '125', '0');
INSERT INTO `distrito` VALUES ('1210', 'Oyotun', '125', '0');
INSERT INTO `distrito` VALUES ('1211', 'Picsi', '125', '0');
INSERT INTO `distrito` VALUES ('1212', 'Pimentel', '125', '1');
INSERT INTO `distrito` VALUES ('1213', 'Reque', '125', '0');
INSERT INTO `distrito` VALUES ('1214', 'Santa Rosa', '125', '1');
INSERT INTO `distrito` VALUES ('1215', 'Saña', '125', '0');
INSERT INTO `distrito` VALUES ('1216', 'Cayalti', '125', '0');
INSERT INTO `distrito` VALUES ('1217', 'Patapo', '125', '0');
INSERT INTO `distrito` VALUES ('1218', 'Pomalca', '125', '0');
INSERT INTO `distrito` VALUES ('1219', 'Pucala', '125', '0');
INSERT INTO `distrito` VALUES ('1220', 'Tuman', '125', '0');
INSERT INTO `distrito` VALUES ('1221', 'Ferreñafe', '126', '1');
INSERT INTO `distrito` VALUES ('1222', 'Cañaris', '126', '1');
INSERT INTO `distrito` VALUES ('1223', 'Incahuasi', '126', '1');
INSERT INTO `distrito` VALUES ('1224', 'Manuel Atonio Mesones Muro', '126', '1');
INSERT INTO `distrito` VALUES ('1225', 'Pitipo', '126', '1');
INSERT INTO `distrito` VALUES ('1226', 'Pueblo Nuevo', '126', '0');
INSERT INTO `distrito` VALUES ('1227', 'Lambayeque', '127', '1');
INSERT INTO `distrito` VALUES ('1228', 'Chochope', '127', '0');
INSERT INTO `distrito` VALUES ('1229', 'Illimo', '127', '0');
INSERT INTO `distrito` VALUES ('1230', 'Jayanca', '127', '0');
INSERT INTO `distrito` VALUES ('1231', 'Mochumi', '127', '0');
INSERT INTO `distrito` VALUES ('1232', 'Morrope', '127', '0');
INSERT INTO `distrito` VALUES ('1233', 'Motupe', '127', '0');
INSERT INTO `distrito` VALUES ('1234', 'Olmos', '127', '0');
INSERT INTO `distrito` VALUES ('1235', 'Pacora', '127', '0');
INSERT INTO `distrito` VALUES ('1236', 'Salas', '127', '0');
INSERT INTO `distrito` VALUES ('1237', 'San Jose', '127', '1');
INSERT INTO `distrito` VALUES ('1238', 'Tucume', '127', '0');
INSERT INTO `distrito` VALUES ('1239', 'Lima', '128', '1');
INSERT INTO `distrito` VALUES ('1240', 'Ancon', '128', '1');
INSERT INTO `distrito` VALUES ('1241', 'Ate', '128', '1');
INSERT INTO `distrito` VALUES ('1242', 'Barranco', '128', '1');
INSERT INTO `distrito` VALUES ('1243', 'Breña', '128', '1');
INSERT INTO `distrito` VALUES ('1244', 'Carabayllo', '128', '1');
INSERT INTO `distrito` VALUES ('1245', 'Chaclacayo', '128', '1');
INSERT INTO `distrito` VALUES ('1246', 'Chorrillos', '128', '1');
INSERT INTO `distrito` VALUES ('1247', 'Cieneguilla', '128', '1');
INSERT INTO `distrito` VALUES ('1248', 'Comas', '128', '1');
INSERT INTO `distrito` VALUES ('1249', 'El Agustino', '128', '1');
INSERT INTO `distrito` VALUES ('1250', 'Independencia', '128', '1');
INSERT INTO `distrito` VALUES ('1251', 'Jesus Maria', '128', '1');
INSERT INTO `distrito` VALUES ('1252', 'La Molina', '128', '1');
INSERT INTO `distrito` VALUES ('1253', 'La Victoria', '128', '1');
INSERT INTO `distrito` VALUES ('1254', 'Lince', '128', '1');
INSERT INTO `distrito` VALUES ('1255', 'Los Olivos', '128', '1');
INSERT INTO `distrito` VALUES ('1256', 'Lurigancho', '128', '1');
INSERT INTO `distrito` VALUES ('1257', 'Lurin', '128', '1');
INSERT INTO `distrito` VALUES ('1258', 'Magdalena Del Mar', '128', '1');
INSERT INTO `distrito` VALUES ('1259', 'Magdalena Vieja', '128', '1');
INSERT INTO `distrito` VALUES ('1260', 'Miraflores', '128', '1');
INSERT INTO `distrito` VALUES ('1261', 'Pachacamac', '128', '1');
INSERT INTO `distrito` VALUES ('1262', 'Pucusana', '128', '1');
INSERT INTO `distrito` VALUES ('1263', 'Puente Piedra', '128', '1');
INSERT INTO `distrito` VALUES ('1264', 'Punta Hermosa', '128', '1');
INSERT INTO `distrito` VALUES ('1265', 'Punta Negra', '128', '1');
INSERT INTO `distrito` VALUES ('1266', 'Rimac', '128', '1');
INSERT INTO `distrito` VALUES ('1267', 'San Bartolo', '128', '1');
INSERT INTO `distrito` VALUES ('1268', 'San Borja', '128', '1');
INSERT INTO `distrito` VALUES ('1269', 'San Isidro', '128', '1');
INSERT INTO `distrito` VALUES ('1270', 'San Juan De Lurigancho', '128', '1');
INSERT INTO `distrito` VALUES ('1271', 'San Juan De Miraflores', '128', '1');
INSERT INTO `distrito` VALUES ('1272', 'San Luis', '128', '1');
INSERT INTO `distrito` VALUES ('1273', 'San Martin De Porres', '128', '1');
INSERT INTO `distrito` VALUES ('1274', 'San Miguel', '128', '1');
INSERT INTO `distrito` VALUES ('1275', 'Santa Anita', '128', '1');
INSERT INTO `distrito` VALUES ('1276', 'Santa Maria Del Mar', '128', '1');
INSERT INTO `distrito` VALUES ('1277', 'Santa Rosa', '128', '1');
INSERT INTO `distrito` VALUES ('1278', 'Santiago De Surco', '128', '1');
INSERT INTO `distrito` VALUES ('1279', 'Surquillo', '128', '1');
INSERT INTO `distrito` VALUES ('1280', 'Villa El Salvador', '128', '1');
INSERT INTO `distrito` VALUES ('1281', 'Villa Maria Del Triunfo', '128', '1');
INSERT INTO `distrito` VALUES ('1282', 'Barranca', '129', '1');
INSERT INTO `distrito` VALUES ('1283', 'Paramonga', '129', '1');
INSERT INTO `distrito` VALUES ('1284', 'Pativilca', '129', '1');
INSERT INTO `distrito` VALUES ('1285', 'Supe', '129', '1');
INSERT INTO `distrito` VALUES ('1286', 'Supe Puerto', '129', '1');
INSERT INTO `distrito` VALUES ('1287', 'Cajatambo', '130', '1');
INSERT INTO `distrito` VALUES ('1288', 'Copa', '130', '1');
INSERT INTO `distrito` VALUES ('1289', 'Gorgor', '130', '1');
INSERT INTO `distrito` VALUES ('1290', 'Huancapon', '130', '1');
INSERT INTO `distrito` VALUES ('1291', 'Manas', '130', '1');
INSERT INTO `distrito` VALUES ('1292', 'San Vicente De Cañete', '132', '1');
INSERT INTO `distrito` VALUES ('1293', 'Asia', '132', '1');
INSERT INTO `distrito` VALUES ('1294', 'Calango', '132', '1');
INSERT INTO `distrito` VALUES ('1295', 'Cerro Azul', '132', '1');
INSERT INTO `distrito` VALUES ('1296', 'Chilca', '132', '1');
INSERT INTO `distrito` VALUES ('1297', 'Coayllo', '132', '1');
INSERT INTO `distrito` VALUES ('1298', 'Imperial', '132', '1');
INSERT INTO `distrito` VALUES ('1299', 'Lunahuana', '132', '1');
INSERT INTO `distrito` VALUES ('1300', 'Mala', '132', '1');
INSERT INTO `distrito` VALUES ('1301', 'Nuevo Imperial', '132', '1');
INSERT INTO `distrito` VALUES ('1302', 'Pacaran', '132', '1');
INSERT INTO `distrito` VALUES ('1303', 'Quilmana', '132', '1');
INSERT INTO `distrito` VALUES ('1304', 'San Antonio', '132', '1');
INSERT INTO `distrito` VALUES ('1305', 'San Luis', '132', '1');
INSERT INTO `distrito` VALUES ('1306', 'Santa Cruz De Flores', '132', '1');
INSERT INTO `distrito` VALUES ('1307', 'Zuñiga', '132', '1');
INSERT INTO `distrito` VALUES ('1308', 'Canta', '131', '1');
INSERT INTO `distrito` VALUES ('1309', 'Arahuay', '131', '1');
INSERT INTO `distrito` VALUES ('1310', 'Huamantanga', '131', '1');
INSERT INTO `distrito` VALUES ('1311', 'Huaros', '131', '1');
INSERT INTO `distrito` VALUES ('1312', 'Lachaqui', '131', '1');
INSERT INTO `distrito` VALUES ('1313', 'San Buenaventura', '131', '1');
INSERT INTO `distrito` VALUES ('1314', 'Santa Rosa De Quives', '131', '1');
INSERT INTO `distrito` VALUES ('1315', 'Huaral', '133', '1');
INSERT INTO `distrito` VALUES ('1316', 'Atavillos Alto', '133', '1');
INSERT INTO `distrito` VALUES ('1317', 'Atavillos Bajo', '133', '1');
INSERT INTO `distrito` VALUES ('1318', 'Aucallama', '133', '1');
INSERT INTO `distrito` VALUES ('1319', 'Chancay', '133', '1');
INSERT INTO `distrito` VALUES ('1320', 'Ihuari', '133', '1');
INSERT INTO `distrito` VALUES ('1321', 'Lampian', '133', '1');
INSERT INTO `distrito` VALUES ('1322', 'Pacaraos', '133', '1');
INSERT INTO `distrito` VALUES ('1323', 'San Miguel De Acos', '133', '1');
INSERT INTO `distrito` VALUES ('1324', 'Santa Cruz De Andamarca', '133', '1');
INSERT INTO `distrito` VALUES ('1325', 'Sumbilca', '133', '1');
INSERT INTO `distrito` VALUES ('1326', 'Veintisiete De Noviembre', '133', '1');
INSERT INTO `distrito` VALUES ('1327', 'Matucana', '134', '1');
INSERT INTO `distrito` VALUES ('1328', 'Antioquia', '134', '1');
INSERT INTO `distrito` VALUES ('1329', 'Callahuanca', '134', '1');
INSERT INTO `distrito` VALUES ('1330', 'Carampoma', '134', '1');
INSERT INTO `distrito` VALUES ('1331', 'Chicla', '134', '1');
INSERT INTO `distrito` VALUES ('1332', 'Cuenca', '134', '1');
INSERT INTO `distrito` VALUES ('1333', 'Huachupampa', '134', '1');
INSERT INTO `distrito` VALUES ('1334', 'Huanza', '134', '1');
INSERT INTO `distrito` VALUES ('1335', 'Huarochiri', '134', '1');
INSERT INTO `distrito` VALUES ('1336', 'Lahuaytambo', '134', '1');
INSERT INTO `distrito` VALUES ('1337', 'Langa', '134', '1');
INSERT INTO `distrito` VALUES ('1338', 'Laraos', '134', '1');
INSERT INTO `distrito` VALUES ('1339', 'Mariatana', '134', '1');
INSERT INTO `distrito` VALUES ('1340', 'Ricardo Palma', '134', '1');
INSERT INTO `distrito` VALUES ('1341', 'San Andres De Tupicocha', '134', '1');
INSERT INTO `distrito` VALUES ('1342', 'San Antonio', '134', '1');
INSERT INTO `distrito` VALUES ('1343', 'San Bartolome', '134', '1');
INSERT INTO `distrito` VALUES ('1344', 'San Damian', '134', '1');
INSERT INTO `distrito` VALUES ('1345', 'San Juan De Iris', '134', '1');
INSERT INTO `distrito` VALUES ('1346', 'San Juan De Tantaranche', '134', '1');
INSERT INTO `distrito` VALUES ('1347', 'San Lorenzo De Quinti', '134', '1');
INSERT INTO `distrito` VALUES ('1348', 'San Mateo', '134', '1');
INSERT INTO `distrito` VALUES ('1349', 'San Mateo De Otao', '134', '1');
INSERT INTO `distrito` VALUES ('1350', 'San Pedro De Casta', '134', '1');
INSERT INTO `distrito` VALUES ('1351', 'San Pedro De Huancayre', '134', '1');
INSERT INTO `distrito` VALUES ('1352', 'Sangallaya', '134', '1');
INSERT INTO `distrito` VALUES ('1353', 'Santa Cruz De Cocachacra', '134', '1');
INSERT INTO `distrito` VALUES ('1354', 'Santa Eulalia', '134', '1');
INSERT INTO `distrito` VALUES ('1355', 'Santiago De Anchucaya', '134', '1');
INSERT INTO `distrito` VALUES ('1356', 'Santiago De Tuna', '134', '1');
INSERT INTO `distrito` VALUES ('1357', 'Santo Domingo De Los Olleros', '134', '1');
INSERT INTO `distrito` VALUES ('1358', 'Surco', '134', '1');
INSERT INTO `distrito` VALUES ('1359', 'Huacho', '135', '1');
INSERT INTO `distrito` VALUES ('1360', 'Ambar', '135', '1');
INSERT INTO `distrito` VALUES ('1361', 'Caleta De Carquin', '135', '1');
INSERT INTO `distrito` VALUES ('1362', 'Checras', '135', '1');
INSERT INTO `distrito` VALUES ('1363', 'Hualmay', '135', '1');
INSERT INTO `distrito` VALUES ('1364', 'Huaura', '135', '1');
INSERT INTO `distrito` VALUES ('1365', 'Leoncio Prado', '135', '1');
INSERT INTO `distrito` VALUES ('1366', 'Paccho', '135', '1');
INSERT INTO `distrito` VALUES ('1367', 'Santa Leonor', '135', '1');
INSERT INTO `distrito` VALUES ('1368', 'Santa Maria', '135', '1');
INSERT INTO `distrito` VALUES ('1369', 'Sayan', '135', '1');
INSERT INTO `distrito` VALUES ('1370', 'Vegueta', '135', '1');
INSERT INTO `distrito` VALUES ('1371', 'Oyon', '136', '1');
INSERT INTO `distrito` VALUES ('1372', 'Andajes', '136', '1');
INSERT INTO `distrito` VALUES ('1373', 'Caujul', '136', '1');
INSERT INTO `distrito` VALUES ('1374', 'Cochamarca', '136', '1');
INSERT INTO `distrito` VALUES ('1375', 'Navan', '136', '1');
INSERT INTO `distrito` VALUES ('1376', 'Pachangara', '136', '1');
INSERT INTO `distrito` VALUES ('1377', 'Yauyos', '137', '1');
INSERT INTO `distrito` VALUES ('1378', 'Alis', '137', '1');
INSERT INTO `distrito` VALUES ('1379', 'Ayauca', '137', '1');
INSERT INTO `distrito` VALUES ('1380', 'Ayaviri', '137', '1');
INSERT INTO `distrito` VALUES ('1381', 'Azangaro', '137', '1');
INSERT INTO `distrito` VALUES ('1382', 'Cacra', '137', '1');
INSERT INTO `distrito` VALUES ('1383', 'Carania', '137', '1');
INSERT INTO `distrito` VALUES ('1384', 'Catahuasi', '137', '1');
INSERT INTO `distrito` VALUES ('1385', 'Chocos', '137', '1');
INSERT INTO `distrito` VALUES ('1386', 'Cochas', '137', '1');
INSERT INTO `distrito` VALUES ('1387', 'Colonia', '137', '1');
INSERT INTO `distrito` VALUES ('1388', 'Hongos', '137', '1');
INSERT INTO `distrito` VALUES ('1389', 'Huampara', '137', '1');
INSERT INTO `distrito` VALUES ('1390', 'Huancaya', '137', '1');
INSERT INTO `distrito` VALUES ('1391', 'Huangascar', '137', '1');
INSERT INTO `distrito` VALUES ('1392', 'Huantan', '137', '1');
INSERT INTO `distrito` VALUES ('1393', 'Huañec', '137', '1');
INSERT INTO `distrito` VALUES ('1394', 'Laraos', '137', '1');
INSERT INTO `distrito` VALUES ('1395', 'Lincha', '137', '1');
INSERT INTO `distrito` VALUES ('1396', 'Madean', '137', '1');
INSERT INTO `distrito` VALUES ('1397', 'Miraflores', '137', '1');
INSERT INTO `distrito` VALUES ('1398', 'Omas', '137', '1');
INSERT INTO `distrito` VALUES ('1399', 'Putinza', '137', '1');
INSERT INTO `distrito` VALUES ('1400', 'Quinches', '137', '1');
INSERT INTO `distrito` VALUES ('1401', 'Quinocay', '137', '1');
INSERT INTO `distrito` VALUES ('1402', 'San Joaquin', '137', '1');
INSERT INTO `distrito` VALUES ('1403', 'San Pedro De Pilas', '137', '1');
INSERT INTO `distrito` VALUES ('1404', 'Tanta', '137', '1');
INSERT INTO `distrito` VALUES ('1405', 'Tauripampa', '137', '1');
INSERT INTO `distrito` VALUES ('1406', 'Tomas', '137', '1');
INSERT INTO `distrito` VALUES ('1407', 'Tupe', '137', '1');
INSERT INTO `distrito` VALUES ('1408', 'Viñac', '137', '1');
INSERT INTO `distrito` VALUES ('1409', 'Vitis', '137', '1');
INSERT INTO `distrito` VALUES ('1410', 'Callao', '67', '1');
INSERT INTO `distrito` VALUES ('1411', 'Bellavista', '67', '1');
INSERT INTO `distrito` VALUES ('1412', 'Carmen De La Legua Reynoso', '67', '1');
INSERT INTO `distrito` VALUES ('1413', 'La Perla', '67', '1');
INSERT INTO `distrito` VALUES ('1414', 'La Punta', '67', '1');
INSERT INTO `distrito` VALUES ('1415', 'Ventanilla', '67', '1');
INSERT INTO `distrito` VALUES ('1416', 'Iquitos', '138', '1');
INSERT INTO `distrito` VALUES ('1417', 'Alto Nanay', '138', '1');
INSERT INTO `distrito` VALUES ('1418', 'Fernando Lores', '138', '1');
INSERT INTO `distrito` VALUES ('1419', 'Indiana', '138', '1');
INSERT INTO `distrito` VALUES ('1420', 'Las Amazonas', '138', '1');
INSERT INTO `distrito` VALUES ('1421', 'Mazan', '138', '1');
INSERT INTO `distrito` VALUES ('1422', 'Napo', '138', '1');
INSERT INTO `distrito` VALUES ('1423', 'Punchana', '138', '1');
INSERT INTO `distrito` VALUES ('1424', 'Putumayo', '138', '1');
INSERT INTO `distrito` VALUES ('1425', 'Torres Causana', '138', '1');
INSERT INTO `distrito` VALUES ('1426', 'Belen', '138', '1');
INSERT INTO `distrito` VALUES ('1427', 'San Juan Bautista', '138', '1');
INSERT INTO `distrito` VALUES ('1428', 'Yurimaguas', '139', '1');
INSERT INTO `distrito` VALUES ('1429', 'Balsapuerto', '139', '1');
INSERT INTO `distrito` VALUES ('1430', 'Barranca', '139', '1');
INSERT INTO `distrito` VALUES ('1431', 'Cahuapanas', '139', '1');
INSERT INTO `distrito` VALUES ('1432', 'Jeberos', '139', '1');
INSERT INTO `distrito` VALUES ('1433', 'Lagunas', '139', '1');
INSERT INTO `distrito` VALUES ('1434', 'Manseriche', '139', '1');
INSERT INTO `distrito` VALUES ('1435', 'Morona', '139', '1');
INSERT INTO `distrito` VALUES ('1436', 'Pastaza', '139', '1');
INSERT INTO `distrito` VALUES ('1437', 'Santa Cruz', '139', '1');
INSERT INTO `distrito` VALUES ('1438', 'Teniente Cesar Lopez Rojas', '139', '1');
INSERT INTO `distrito` VALUES ('1439', 'Nauta', '140', '1');
INSERT INTO `distrito` VALUES ('1440', 'Parinari', '140', '1');
INSERT INTO `distrito` VALUES ('1441', 'Tigre', '140', '1');
INSERT INTO `distrito` VALUES ('1442', 'Trompeteros', '140', '1');
INSERT INTO `distrito` VALUES ('1443', 'Urarinas', '140', '1');
INSERT INTO `distrito` VALUES ('1444', 'Ramon Castilla', '141', '1');
INSERT INTO `distrito` VALUES ('1445', 'Pebas', '141', '1');
INSERT INTO `distrito` VALUES ('1446', 'Yavari', '141', '1');
INSERT INTO `distrito` VALUES ('1447', 'San Pablo', '141', '1');
INSERT INTO `distrito` VALUES ('1448', 'Requena', '142', '1');
INSERT INTO `distrito` VALUES ('1449', 'Alto Tapiche', '142', '1');
INSERT INTO `distrito` VALUES ('1450', 'Capelo', '142', '1');
INSERT INTO `distrito` VALUES ('1451', 'Emilio San Martin', '142', '1');
INSERT INTO `distrito` VALUES ('1452', 'Maquia', '142', '1');
INSERT INTO `distrito` VALUES ('1453', 'Puinahua', '142', '1');
INSERT INTO `distrito` VALUES ('1454', 'Saquena', '142', '1');
INSERT INTO `distrito` VALUES ('1455', 'Soplin', '142', '1');
INSERT INTO `distrito` VALUES ('1456', 'Tapiche', '142', '1');
INSERT INTO `distrito` VALUES ('1457', 'Yaquerana', '142', '1');
INSERT INTO `distrito` VALUES ('1458', 'Jenaro Herrera', '142', '1');
INSERT INTO `distrito` VALUES ('1459', 'Contamana', '143', '1');
INSERT INTO `distrito` VALUES ('1460', 'Inahuaya', '143', '1');
INSERT INTO `distrito` VALUES ('1461', 'Padre Marquez', '143', '1');
INSERT INTO `distrito` VALUES ('1462', 'Pampa Hermosa', '143', '1');
INSERT INTO `distrito` VALUES ('1463', 'Sarayacu', '143', '1');
INSERT INTO `distrito` VALUES ('1464', 'Vargas Guerra', '143', '1');
INSERT INTO `distrito` VALUES ('1465', 'Tambopata', '145', '1');
INSERT INTO `distrito` VALUES ('1466', 'Inambari', '145', '1');
INSERT INTO `distrito` VALUES ('1467', 'Las Piedras', '145', '1');
INSERT INTO `distrito` VALUES ('1468', 'Laberinto', '145', '1');
INSERT INTO `distrito` VALUES ('1469', 'Fitzcarrald', '146', '1');
INSERT INTO `distrito` VALUES ('1470', 'Manu', '146', '1');
INSERT INTO `distrito` VALUES ('1471', 'Madre De Dios', '146', '1');
INSERT INTO `distrito` VALUES ('1472', 'Heupetuhe', '146', '1');
INSERT INTO `distrito` VALUES ('1473', 'Iñapari', '147', '1');
INSERT INTO `distrito` VALUES ('1474', 'Iberia', '147', '1');
INSERT INTO `distrito` VALUES ('1475', 'Tahuamanu', '147', '1');
INSERT INTO `distrito` VALUES ('1476', 'Moquegua', '148', '1');
INSERT INTO `distrito` VALUES ('1477', 'Carumas', '148', '1');
INSERT INTO `distrito` VALUES ('1478', 'Cuchumbaya', '148', '1');
INSERT INTO `distrito` VALUES ('1479', 'Samegua', '148', '1');
INSERT INTO `distrito` VALUES ('1480', 'San Cristobal', '148', '1');
INSERT INTO `distrito` VALUES ('1481', 'Torata', '148', '1');
INSERT INTO `distrito` VALUES ('1482', 'Omate', '149', '1');
INSERT INTO `distrito` VALUES ('1483', 'Chojata', '149', '1');
INSERT INTO `distrito` VALUES ('1484', 'Coalaque', '149', '1');
INSERT INTO `distrito` VALUES ('1485', 'Ichuña', '149', '1');
INSERT INTO `distrito` VALUES ('1486', 'La Capilla', '149', '1');
INSERT INTO `distrito` VALUES ('1487', 'Lloque', '149', '1');
INSERT INTO `distrito` VALUES ('1488', 'Matalaque', '149', '1');
INSERT INTO `distrito` VALUES ('1489', 'Puquina', '149', '1');
INSERT INTO `distrito` VALUES ('1490', 'Quinistaquillas', '149', '1');
INSERT INTO `distrito` VALUES ('1491', 'Ubinas', '149', '1');
INSERT INTO `distrito` VALUES ('1492', 'Yunga', '149', '1');
INSERT INTO `distrito` VALUES ('1493', 'Ilo', '150', '1');
INSERT INTO `distrito` VALUES ('1494', 'El Algarrobal', '150', '1');
INSERT INTO `distrito` VALUES ('1495', 'Pacocha', '150', '1');
INSERT INTO `distrito` VALUES ('1496', 'Chaupimarca', '151', '1');
INSERT INTO `distrito` VALUES ('1497', 'Huachon', '151', '1');
INSERT INTO `distrito` VALUES ('1498', 'Huariaca', '151', '1');
INSERT INTO `distrito` VALUES ('1499', 'Huayllay', '151', '1');
INSERT INTO `distrito` VALUES ('1500', 'Ninacaca', '151', '1');
INSERT INTO `distrito` VALUES ('1501', 'Pallanchacra', '151', '1');
INSERT INTO `distrito` VALUES ('1502', 'Paucartambo', '151', '1');
INSERT INTO `distrito` VALUES ('1503', 'San Fco.de Asis De Yarusyacan', '151', '1');
INSERT INTO `distrito` VALUES ('1504', 'Simon Bolivar', '151', '1');
INSERT INTO `distrito` VALUES ('1505', 'Ticlacayan', '151', '1');
INSERT INTO `distrito` VALUES ('1506', 'Tinyahuarco', '151', '1');
INSERT INTO `distrito` VALUES ('1507', 'Vicco', '151', '1');
INSERT INTO `distrito` VALUES ('1508', 'Yanacancha', '151', '1');
INSERT INTO `distrito` VALUES ('1509', 'Yanahuanca', '152', '1');
INSERT INTO `distrito` VALUES ('1510', 'Chacayan', '152', '1');
INSERT INTO `distrito` VALUES ('1511', 'Goyllarisquizga', '152', '1');
INSERT INTO `distrito` VALUES ('1512', 'Paucar', '152', '1');
INSERT INTO `distrito` VALUES ('1513', 'San Pedro De Pillao', '152', '1');
INSERT INTO `distrito` VALUES ('1514', 'Santa Ana De Tusi', '152', '1');
INSERT INTO `distrito` VALUES ('1515', 'Tapuc', '152', '1');
INSERT INTO `distrito` VALUES ('1516', 'Vilcabamba', '152', '1');
INSERT INTO `distrito` VALUES ('1517', 'Oxapampa', '153', '1');
INSERT INTO `distrito` VALUES ('1518', 'Chontabamba', '153', '1');
INSERT INTO `distrito` VALUES ('1519', 'Huancabamba', '153', '1');
INSERT INTO `distrito` VALUES ('1520', 'Palcazu', '153', '1');
INSERT INTO `distrito` VALUES ('1521', 'Pozuzo', '153', '1');
INSERT INTO `distrito` VALUES ('1522', 'Puerto Bermudez', '153', '1');
INSERT INTO `distrito` VALUES ('1523', 'Villa Rica', '153', '1');
INSERT INTO `distrito` VALUES ('1524', 'Piura', '154', '1');
INSERT INTO `distrito` VALUES ('1525', 'Castilla', '154', '1');
INSERT INTO `distrito` VALUES ('1526', 'Catacaos', '154', '1');
INSERT INTO `distrito` VALUES ('1527', 'Cura Mori', '154', '1');
INSERT INTO `distrito` VALUES ('1528', 'El Tallan', '154', '1');
INSERT INTO `distrito` VALUES ('1529', 'La Arena', '154', '1');
INSERT INTO `distrito` VALUES ('1530', 'La Union', '154', '1');
INSERT INTO `distrito` VALUES ('1531', 'Las Lomas', '154', '1');
INSERT INTO `distrito` VALUES ('1532', 'Tambo Grande', '154', '1');
INSERT INTO `distrito` VALUES ('1533', 'Ayabaca', '155', '1');
INSERT INTO `distrito` VALUES ('1534', 'Frias', '155', '1');
INSERT INTO `distrito` VALUES ('1535', 'Jilili', '155', '1');
INSERT INTO `distrito` VALUES ('1536', 'Lagunas', '155', '1');
INSERT INTO `distrito` VALUES ('1537', 'Montero', '155', '1');
INSERT INTO `distrito` VALUES ('1538', 'Pacaipampa', '155', '1');
INSERT INTO `distrito` VALUES ('1539', 'Paimas', '155', '1');
INSERT INTO `distrito` VALUES ('1540', 'Sapillica', '155', '1');
INSERT INTO `distrito` VALUES ('1541', 'Sicchez', '155', '1');
INSERT INTO `distrito` VALUES ('1542', 'Suyo', '155', '1');
INSERT INTO `distrito` VALUES ('1543', 'Huancabamba', '156', '1');
INSERT INTO `distrito` VALUES ('1544', 'Canchaque', '156', '1');
INSERT INTO `distrito` VALUES ('1545', 'El Carmen De La Frontera', '156', '1');
INSERT INTO `distrito` VALUES ('1546', 'Huarmaca', '156', '1');
INSERT INTO `distrito` VALUES ('1547', 'Lalaquiz', '156', '1');
INSERT INTO `distrito` VALUES ('1548', 'San Miguel De El Faique', '156', '1');
INSERT INTO `distrito` VALUES ('1549', 'Sondor', '156', '1');
INSERT INTO `distrito` VALUES ('1550', 'Sondorillo', '156', '1');
INSERT INTO `distrito` VALUES ('1551', 'Paita', '158', '1');
INSERT INTO `distrito` VALUES ('1552', 'Amotape', '158', '1');
INSERT INTO `distrito` VALUES ('1553', 'Arenal', '158', '1');
INSERT INTO `distrito` VALUES ('1554', 'Colan', '158', '1');
INSERT INTO `distrito` VALUES ('1555', 'La Huaca', '158', '1');
INSERT INTO `distrito` VALUES ('1556', 'Tamarindo', '158', '1');
INSERT INTO `distrito` VALUES ('1557', 'Vichayal', '158', '1');
INSERT INTO `distrito` VALUES ('1558', 'Chulucanas', '157', '1');
INSERT INTO `distrito` VALUES ('1559', 'Buenos Aires', '157', '1');
INSERT INTO `distrito` VALUES ('1560', 'Chalaco', '157', '1');
INSERT INTO `distrito` VALUES ('1561', 'La Matanza', '157', '1');
INSERT INTO `distrito` VALUES ('1562', 'Morropon', '157', '1');
INSERT INTO `distrito` VALUES ('1563', 'Salitral', '157', '1');
INSERT INTO `distrito` VALUES ('1564', 'San Juan De Bigote', '157', '1');
INSERT INTO `distrito` VALUES ('1565', 'Santa Catalina De Mossa', '157', '1');
INSERT INTO `distrito` VALUES ('1566', 'Santo Domingo', '157', '1');
INSERT INTO `distrito` VALUES ('1567', 'Yamango', '157', '1');
INSERT INTO `distrito` VALUES ('1568', 'Sechura', '161', '1');
INSERT INTO `distrito` VALUES ('1569', 'Bellavista La Union', '161', '1');
INSERT INTO `distrito` VALUES ('1570', 'Bernal', '161', '1');
INSERT INTO `distrito` VALUES ('1571', 'Cristo Nos Valga', '161', '1');
INSERT INTO `distrito` VALUES ('1572', 'Rinconada Llicuar', '161', '1');
INSERT INTO `distrito` VALUES ('1573', 'Vice', '161', '1');
INSERT INTO `distrito` VALUES ('1574', 'Sullana', '159', '1');
INSERT INTO `distrito` VALUES ('1575', 'Bellavista', '159', '1');
INSERT INTO `distrito` VALUES ('1576', 'Ignacio Escudero', '159', '1');
INSERT INTO `distrito` VALUES ('1577', 'Lancones', '159', '1');
INSERT INTO `distrito` VALUES ('1578', 'Marcavelica', '159', '1');
INSERT INTO `distrito` VALUES ('1579', 'Miguel Checa', '159', '1');
INSERT INTO `distrito` VALUES ('1580', 'Querecotillo', '159', '1');
INSERT INTO `distrito` VALUES ('1581', 'Salitral', '159', '1');
INSERT INTO `distrito` VALUES ('1582', 'Pariñas', '160', '1');
INSERT INTO `distrito` VALUES ('1583', 'El Alto', '160', '1');
INSERT INTO `distrito` VALUES ('1584', 'La Brea', '160', '1');
INSERT INTO `distrito` VALUES ('1585', 'Lobitos', '160', '1');
INSERT INTO `distrito` VALUES ('1586', 'Los Organos', '160', '1');
INSERT INTO `distrito` VALUES ('1587', 'Mancora', '160', '1');
INSERT INTO `distrito` VALUES ('1588', 'Puno', '162', '1');
INSERT INTO `distrito` VALUES ('1589', 'Acora', '162', '1');
INSERT INTO `distrito` VALUES ('1590', 'Amantani', '162', '1');
INSERT INTO `distrito` VALUES ('1591', 'Atuncolla', '162', '1');
INSERT INTO `distrito` VALUES ('1592', 'Capachica', '162', '1');
INSERT INTO `distrito` VALUES ('1593', 'Chucuito', '162', '1');
INSERT INTO `distrito` VALUES ('1594', 'Coata', '162', '1');
INSERT INTO `distrito` VALUES ('1595', 'Huata', '162', '1');
INSERT INTO `distrito` VALUES ('1596', 'Mañazo', '162', '1');
INSERT INTO `distrito` VALUES ('1597', 'Paucarcolla', '162', '1');
INSERT INTO `distrito` VALUES ('1598', 'Pichacani', '162', '1');
INSERT INTO `distrito` VALUES ('1599', 'Plateria', '162', '1');
INSERT INTO `distrito` VALUES ('1600', 'San Antonio', '162', '1');
INSERT INTO `distrito` VALUES ('1601', 'Tiquillaca', '162', '1');
INSERT INTO `distrito` VALUES ('1602', 'Vilque', '162', '1');
INSERT INTO `distrito` VALUES ('1603', 'Azangaro', '163', '1');
INSERT INTO `distrito` VALUES ('1604', 'Achaya', '163', '1');
INSERT INTO `distrito` VALUES ('1605', 'Arapa', '163', '1');
INSERT INTO `distrito` VALUES ('1606', 'Asillo', '163', '1');
INSERT INTO `distrito` VALUES ('1607', 'Caminaca', '163', '1');
INSERT INTO `distrito` VALUES ('1608', 'Chupa', '163', '1');
INSERT INTO `distrito` VALUES ('1609', 'Jose Domingo Choquehuanca', '163', '1');
INSERT INTO `distrito` VALUES ('1610', 'Muñani', '163', '1');
INSERT INTO `distrito` VALUES ('1611', 'Potoni', '163', '1');
INSERT INTO `distrito` VALUES ('1612', 'Saman', '163', '1');
INSERT INTO `distrito` VALUES ('1613', 'San Anton', '163', '1');
INSERT INTO `distrito` VALUES ('1614', 'San Jose', '163', '1');
INSERT INTO `distrito` VALUES ('1615', 'San Juan De Salinas', '163', '1');
INSERT INTO `distrito` VALUES ('1616', 'Santiago De Pupuja', '163', '1');
INSERT INTO `distrito` VALUES ('1617', 'Tirapata', '163', '1');
INSERT INTO `distrito` VALUES ('1618', 'Macusani', '164', '1');
INSERT INTO `distrito` VALUES ('1619', 'Ajoyani', '164', '1');
INSERT INTO `distrito` VALUES ('1620', 'Ayapata', '164', '1');
INSERT INTO `distrito` VALUES ('1621', 'Coasa', '164', '1');
INSERT INTO `distrito` VALUES ('1622', 'Corani', '164', '1');
INSERT INTO `distrito` VALUES ('1623', 'Crucero', '164', '1');
INSERT INTO `distrito` VALUES ('1624', 'Ituata', '164', '1');
INSERT INTO `distrito` VALUES ('1625', 'Ollachea', '164', '1');
INSERT INTO `distrito` VALUES ('1626', 'San Gaban', '164', '1');
INSERT INTO `distrito` VALUES ('1627', 'Usicayos', '164', '1');
INSERT INTO `distrito` VALUES ('1628', 'Juli', '165', '1');
INSERT INTO `distrito` VALUES ('1629', 'Desaguadero', '165', '1');
INSERT INTO `distrito` VALUES ('1630', 'Huacullani', '165', '1');
INSERT INTO `distrito` VALUES ('1631', 'Kelluyo', '165', '1');
INSERT INTO `distrito` VALUES ('1632', 'Pisacoma', '165', '1');
INSERT INTO `distrito` VALUES ('1633', 'Pomata', '165', '1');
INSERT INTO `distrito` VALUES ('1634', 'Zepita', '165', '1');
INSERT INTO `distrito` VALUES ('1635', 'Ilave', '166', '1');
INSERT INTO `distrito` VALUES ('1636', 'Capazo', '166', '1');
INSERT INTO `distrito` VALUES ('1637', 'Pilcuyo', '166', '1');
INSERT INTO `distrito` VALUES ('1638', 'Santa Rosa', '166', '1');
INSERT INTO `distrito` VALUES ('1639', 'Conduriri', '166', '1');
INSERT INTO `distrito` VALUES ('1640', 'Huancane', '167', '1');
INSERT INTO `distrito` VALUES ('1641', 'Cojata', '167', '1');
INSERT INTO `distrito` VALUES ('1642', 'Huatasani', '167', '1');
INSERT INTO `distrito` VALUES ('1643', 'Inchupalla', '167', '1');
INSERT INTO `distrito` VALUES ('1644', 'Pusi', '167', '1');
INSERT INTO `distrito` VALUES ('1645', 'Rosaspata', '167', '1');
INSERT INTO `distrito` VALUES ('1646', 'Taraco', '167', '1');
INSERT INTO `distrito` VALUES ('1647', 'Vilque Chico', '167', '1');
INSERT INTO `distrito` VALUES ('1648', 'Lampa', '168', '1');
INSERT INTO `distrito` VALUES ('1649', 'Cabanilla', '168', '1');
INSERT INTO `distrito` VALUES ('1650', 'Calapuja', '168', '1');
INSERT INTO `distrito` VALUES ('1651', 'Nicasio', '168', '1');
INSERT INTO `distrito` VALUES ('1652', 'Ocuviri', '168', '1');
INSERT INTO `distrito` VALUES ('1653', 'Palca', '168', '1');
INSERT INTO `distrito` VALUES ('1654', 'Paratia', '168', '1');
INSERT INTO `distrito` VALUES ('1655', 'Pucara', '168', '1');
INSERT INTO `distrito` VALUES ('1656', 'Santa Lucia', '168', '1');
INSERT INTO `distrito` VALUES ('1657', 'Vilavila', '168', '1');
INSERT INTO `distrito` VALUES ('1658', 'Ayaviri', '169', '1');
INSERT INTO `distrito` VALUES ('1659', 'Antauta', '169', '1');
INSERT INTO `distrito` VALUES ('1660', 'Cupi', '169', '1');
INSERT INTO `distrito` VALUES ('1661', 'Llalli', '169', '1');
INSERT INTO `distrito` VALUES ('1662', 'Macari', '169', '1');
INSERT INTO `distrito` VALUES ('1663', 'Nuñoa', '169', '1');
INSERT INTO `distrito` VALUES ('1664', 'Orurillo', '169', '1');
INSERT INTO `distrito` VALUES ('1665', 'Santa Rosa', '169', '1');
INSERT INTO `distrito` VALUES ('1666', 'Umachiri', '169', '1');
INSERT INTO `distrito` VALUES ('1667', 'Moho', '170', '1');
INSERT INTO `distrito` VALUES ('1668', 'Conima', '170', '1');
INSERT INTO `distrito` VALUES ('1669', 'Huayrapata', '170', '1');
INSERT INTO `distrito` VALUES ('1670', 'Tilali', '170', '1');
INSERT INTO `distrito` VALUES ('1671', 'Putina', '171', '1');
INSERT INTO `distrito` VALUES ('1672', 'Ananea', '171', '1');
INSERT INTO `distrito` VALUES ('1673', 'Pedro Vilca Apaza', '171', '1');
INSERT INTO `distrito` VALUES ('1674', 'Quilcapuncu', '171', '1');
INSERT INTO `distrito` VALUES ('1675', 'Sina', '171', '1');
INSERT INTO `distrito` VALUES ('1676', 'Juliaca', '172', '1');
INSERT INTO `distrito` VALUES ('1677', 'Cabana', '172', '1');
INSERT INTO `distrito` VALUES ('1678', 'Cabanillas', '172', '1');
INSERT INTO `distrito` VALUES ('1679', 'Caracoto', '172', '1');
INSERT INTO `distrito` VALUES ('1680', 'Sandia', '173', '1');
INSERT INTO `distrito` VALUES ('1681', 'Cuyocuyo', '173', '1');
INSERT INTO `distrito` VALUES ('1682', 'Limbani', '173', '1');
INSERT INTO `distrito` VALUES ('1683', 'Patambuco', '173', '1');
INSERT INTO `distrito` VALUES ('1684', 'Phara', '173', '1');
INSERT INTO `distrito` VALUES ('1685', 'Quiaca', '173', '1');
INSERT INTO `distrito` VALUES ('1686', 'San Juan Del Oro', '173', '1');
INSERT INTO `distrito` VALUES ('1687', 'Yanahuaya', '173', '1');
INSERT INTO `distrito` VALUES ('1688', 'Alto Inambari', '173', '1');
INSERT INTO `distrito` VALUES ('1689', 'Yunguyo', '174', '1');
INSERT INTO `distrito` VALUES ('1690', 'Anapia', '174', '1');
INSERT INTO `distrito` VALUES ('1691', 'Copani', '174', '1');
INSERT INTO `distrito` VALUES ('1692', 'Cuturapi', '174', '1');
INSERT INTO `distrito` VALUES ('1693', 'Ollaraya', '174', '1');
INSERT INTO `distrito` VALUES ('1694', 'Tinicachi', '174', '1');
INSERT INTO `distrito` VALUES ('1695', 'Unicachi', '174', '1');
INSERT INTO `distrito` VALUES ('1696', 'Bellavista', '176', '1');
INSERT INTO `distrito` VALUES ('1697', 'Alto Biavo', '176', '1');
INSERT INTO `distrito` VALUES ('1698', 'Bajo Biavo', '176', '1');
INSERT INTO `distrito` VALUES ('1699', 'Huallaga', '176', '1');
INSERT INTO `distrito` VALUES ('1700', 'San Pablo', '176', '1');
INSERT INTO `distrito` VALUES ('1701', 'San Rafael', '176', '1');
INSERT INTO `distrito` VALUES ('1702', 'Saposoa', '178', '1');
INSERT INTO `distrito` VALUES ('1703', 'Alto Saposoa', '178', '1');
INSERT INTO `distrito` VALUES ('1704', 'El Eslabon', '178', '1');
INSERT INTO `distrito` VALUES ('1705', 'Piscoyacu', '178', '1');
INSERT INTO `distrito` VALUES ('1706', 'Sacanche', '178', '1');
INSERT INTO `distrito` VALUES ('1707', 'Tingo De Sapoa', '178', '1');
INSERT INTO `distrito` VALUES ('1708', 'Lamas', '179', '1');
INSERT INTO `distrito` VALUES ('1709', 'Alonso De Alvara', '179', '1');
INSERT INTO `distrito` VALUES ('1710', 'Barranquita', '179', '1');
INSERT INTO `distrito` VALUES ('1711', 'Caynarachi', '179', '1');
INSERT INTO `distrito` VALUES ('1712', 'Cuñumbuqui', '179', '1');
INSERT INTO `distrito` VALUES ('1713', 'Pinto Recodo', '179', '1');
INSERT INTO `distrito` VALUES ('1714', 'Rumisapa', '179', '1');
INSERT INTO `distrito` VALUES ('1715', 'San Roque De Cumbaza', '179', '1');
INSERT INTO `distrito` VALUES ('1716', 'Shanao', '179', '1');
INSERT INTO `distrito` VALUES ('1717', 'Tabalosos', '179', '1');
INSERT INTO `distrito` VALUES ('1718', 'Zapatero', '179', '1');
INSERT INTO `distrito` VALUES ('1719', 'Juanjui', '180', '1');
INSERT INTO `distrito` VALUES ('1720', 'Campanilla', '180', '1');
INSERT INTO `distrito` VALUES ('1721', 'Huicungo', '180', '1');
INSERT INTO `distrito` VALUES ('1722', 'Pachiza', '180', '1');
INSERT INTO `distrito` VALUES ('1723', 'Pajarillo', '180', '1');
INSERT INTO `distrito` VALUES ('1724', 'Moyobamba', '175', '1');
INSERT INTO `distrito` VALUES ('1725', 'Calzadda', '175', '1');
INSERT INTO `distrito` VALUES ('1726', 'Habana', '175', '1');
INSERT INTO `distrito` VALUES ('1727', 'Jepelacio', '175', '1');
INSERT INTO `distrito` VALUES ('1728', 'Soritor', '175', '1');
INSERT INTO `distrito` VALUES ('1729', 'Yantalo', '175', '1');
INSERT INTO `distrito` VALUES ('1730', 'Picota', '181', '1');
INSERT INTO `distrito` VALUES ('1731', 'Buenos Aires', '181', '1');
INSERT INTO `distrito` VALUES ('1732', 'Caspisapa', '181', '1');
INSERT INTO `distrito` VALUES ('1733', 'Pilluana', '181', '1');
INSERT INTO `distrito` VALUES ('1734', 'Pucacaca', '181', '1');
INSERT INTO `distrito` VALUES ('1735', 'San Cristobal', '181', '1');
INSERT INTO `distrito` VALUES ('1736', 'San Hilarion', '181', '1');
INSERT INTO `distrito` VALUES ('1737', 'Shamboyacu', '181', '1');
INSERT INTO `distrito` VALUES ('1738', 'Tingo De Ponasa', '181', '1');
INSERT INTO `distrito` VALUES ('1739', 'Tres Unidos', '181', '1');
INSERT INTO `distrito` VALUES ('1740', 'Rioja', '182', '1');
INSERT INTO `distrito` VALUES ('1741', 'Awajun', '182', '1');
INSERT INTO `distrito` VALUES ('1742', 'Elias Soplin Vargas', '182', '1');
INSERT INTO `distrito` VALUES ('1743', 'Nueva Cajamarca', '182', '1');
INSERT INTO `distrito` VALUES ('1744', 'Pardo Miguel', '182', '1');
INSERT INTO `distrito` VALUES ('1745', 'Posic', '182', '1');
INSERT INTO `distrito` VALUES ('1746', 'San Fernando', '182', '1');
INSERT INTO `distrito` VALUES ('1747', 'Yorongos', '182', '1');
INSERT INTO `distrito` VALUES ('1748', 'Yuracyacu', '182', '1');
INSERT INTO `distrito` VALUES ('1749', 'Tarapoto', '183', '1');
INSERT INTO `distrito` VALUES ('1750', 'Alberto Leveau', '183', '1');
INSERT INTO `distrito` VALUES ('1751', 'Cacatachi', '183', '1');
INSERT INTO `distrito` VALUES ('1752', 'Chazuta', '183', '1');
INSERT INTO `distrito` VALUES ('1753', 'Chipurana', '183', '1');
INSERT INTO `distrito` VALUES ('1754', 'El Porvenir', '183', '1');
INSERT INTO `distrito` VALUES ('1755', 'Humbayoc', '183', '1');
INSERT INTO `distrito` VALUES ('1756', 'Juan Guerra', '183', '1');
INSERT INTO `distrito` VALUES ('1757', 'La Banda De Shilcayo', '183', '1');
INSERT INTO `distrito` VALUES ('1758', 'Morales', '183', '1');
INSERT INTO `distrito` VALUES ('1759', 'Papaplaya', '183', '1');
INSERT INTO `distrito` VALUES ('1760', 'San Antonio', '183', '1');
INSERT INTO `distrito` VALUES ('1761', 'Sauce', '183', '1');
INSERT INTO `distrito` VALUES ('1762', 'Shapaja', '183', '1');
INSERT INTO `distrito` VALUES ('1763', 'Tocache', '184', '1');
INSERT INTO `distrito` VALUES ('1764', 'Nuevo Progreso', '184', '1');
INSERT INTO `distrito` VALUES ('1765', 'Polvora', '184', '1');
INSERT INTO `distrito` VALUES ('1766', 'Shunte', '184', '1');
INSERT INTO `distrito` VALUES ('1767', 'Uchiza', '184', '1');
INSERT INTO `distrito` VALUES ('1768', 'San Jose De Sisa', '177', '1');
INSERT INTO `distrito` VALUES ('1769', 'Agua Blanca', '177', '1');
INSERT INTO `distrito` VALUES ('1770', 'San Martin', '177', '1');
INSERT INTO `distrito` VALUES ('1771', 'Santa Rosa', '177', '1');
INSERT INTO `distrito` VALUES ('1772', 'Shatoja', '177', '1');
INSERT INTO `distrito` VALUES ('1773', 'Tacna', '185', '1');
INSERT INTO `distrito` VALUES ('1774', 'Alto De La Alianza', '185', '1');
INSERT INTO `distrito` VALUES ('1775', 'Calana', '185', '1');
INSERT INTO `distrito` VALUES ('1776', 'Inclan', '185', '1');
INSERT INTO `distrito` VALUES ('1777', 'Pachia', '185', '1');
INSERT INTO `distrito` VALUES ('1778', 'Palca', '185', '1');
INSERT INTO `distrito` VALUES ('1779', 'Pocollay', '185', '1');
INSERT INTO `distrito` VALUES ('1780', 'Sama', '185', '1');
INSERT INTO `distrito` VALUES ('1781', 'Ciudad Nueva', '185', '1');
INSERT INTO `distrito` VALUES ('1782', 'Candarave', '186', '1');
INSERT INTO `distrito` VALUES ('1783', 'Cairani', '186', '1');
INSERT INTO `distrito` VALUES ('1784', 'Camilaca', '186', '1');
INSERT INTO `distrito` VALUES ('1785', 'Curibaya', '186', '1');
INSERT INTO `distrito` VALUES ('1786', 'Huanuara', '186', '1');
INSERT INTO `distrito` VALUES ('1787', 'Quilahuani', '186', '1');
INSERT INTO `distrito` VALUES ('1788', 'Locumba', '187', '1');
INSERT INTO `distrito` VALUES ('1789', 'Ilabaya', '187', '1');
INSERT INTO `distrito` VALUES ('1790', 'Ite', '187', '1');
INSERT INTO `distrito` VALUES ('1791', 'Tarata', '188', '1');
INSERT INTO `distrito` VALUES ('1792', 'Chucatamani', '188', '1');
INSERT INTO `distrito` VALUES ('1793', 'Estique', '188', '1');
INSERT INTO `distrito` VALUES ('1794', 'Estique-pampa', '188', '1');
INSERT INTO `distrito` VALUES ('1795', 'Sitajara', '188', '1');
INSERT INTO `distrito` VALUES ('1796', 'Susapaya', '188', '1');
INSERT INTO `distrito` VALUES ('1797', 'Tarucachi', '188', '1');
INSERT INTO `distrito` VALUES ('1798', 'Ticaco', '188', '1');
INSERT INTO `distrito` VALUES ('1799', 'Zarumilla', '191', '1');
INSERT INTO `distrito` VALUES ('1800', 'Aguas Verdes', '191', '1');
INSERT INTO `distrito` VALUES ('1801', 'Matapalo', '191', '1');
INSERT INTO `distrito` VALUES ('1802', 'Papayal', '191', '1');
INSERT INTO `distrito` VALUES ('1803', 'Tumbes', '189', '1');
INSERT INTO `distrito` VALUES ('1804', 'Corrales', '189', '1');
INSERT INTO `distrito` VALUES ('1805', 'La Cruz', '189', '1');
INSERT INTO `distrito` VALUES ('1806', 'Pampas De Hospital', '189', '1');
INSERT INTO `distrito` VALUES ('1807', 'San Jacinto', '189', '1');
INSERT INTO `distrito` VALUES ('1808', 'San Juan De La Virgen', '189', '1');
INSERT INTO `distrito` VALUES ('1809', 'Zorritos', '190', '1');
INSERT INTO `distrito` VALUES ('1810', 'Casitas', '190', '1');
INSERT INTO `distrito` VALUES ('1811', 'Callaria', '192', '1');
INSERT INTO `distrito` VALUES ('1812', 'Campoverde', '192', '1');
INSERT INTO `distrito` VALUES ('1813', 'Iparia', '192', '1');
INSERT INTO `distrito` VALUES ('1814', 'Masisea', '192', '1');
INSERT INTO `distrito` VALUES ('1815', 'Yarinacocha', '192', '1');
INSERT INTO `distrito` VALUES ('1816', 'Nueva Requena', '192', '1');
INSERT INTO `distrito` VALUES ('1817', 'Raymondi', '193', '1');
INSERT INTO `distrito` VALUES ('1818', 'Sepahua', '193', '1');
INSERT INTO `distrito` VALUES ('1819', 'Tahuania', '193', '1');
INSERT INTO `distrito` VALUES ('1820', 'Yurua', '193', '1');
INSERT INTO `distrito` VALUES ('1821', 'Padre Abad', '194', '1');
INSERT INTO `distrito` VALUES ('1822', 'Irazola', '194', '1');
INSERT INTO `distrito` VALUES ('1823', 'Curimana', '194', '1');
INSERT INTO `distrito` VALUES ('1824', 'Purus', '195', '1');

-- ----------------------------
-- Table structure for docidentifica
-- ----------------------------
DROP TABLE IF EXISTS `docidentifica`;
CREATE TABLE `docidentifica` (
  `cDocCodigo` varchar(15) NOT NULL,
  `nDocTipoNum` int(11) NOT NULL,
  `cDocNDoc` varchar(100) NOT NULL,
  PRIMARY KEY (`cDocCodigo`,`nDocTipoNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docidentifica
-- ----------------------------

-- ----------------------------
-- Table structure for docparametro
-- ----------------------------
DROP TABLE IF EXISTS `docparametro`;
CREATE TABLE `docparametro` (
  `cDocCodigo` varchar(15) NOT NULL,
  `nParClase` int(11) NOT NULL,
  `nParCodigo` int(11) NOT NULL,
  `cDocParObservacion` varchar(500) NOT NULL,
  PRIMARY KEY (`cDocCodigo`,`nParClase`,`nParCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docparametro
-- ----------------------------

-- ----------------------------
-- Table structure for docparparametro
-- ----------------------------
DROP TABLE IF EXISTS `docparparametro`;
CREATE TABLE `docparparametro` (
  `cDocCodigo` varchar(20) NOT NULL,
  `nParSrcCodigo` int(11) NOT NULL,
  `nParSrcClase` int(11) NOT NULL,
  `nParDstCodigo` int(11) NOT NULL,
  `nParDstClase` int(11) NOT NULL,
  `cParParValor` varchar(250) DEFAULT NULL,
  `cParParGlosa` text,
  PRIMARY KEY (`cDocCodigo`,`nParSrcCodigo`,`nParSrcClase`,`nParDstCodigo`,`nParDstClase`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docparparametro
-- ----------------------------

-- ----------------------------
-- Table structure for docparparext
-- ----------------------------
DROP TABLE IF EXISTS `docparparext`;
CREATE TABLE `docparparext` (
  `cDocCodigo` varchar(20) NOT NULL,
  `nIntSrcCodigo` int(11) NOT NULL,
  `nIntSrcClase` int(11) NOT NULL,
  `nIntDstCodigo` int(11) NOT NULL,
  `nIntDstClase` int(11) NOT NULL,
  `nObjCodigo` int(11) NOT NULL,
  `nObjTipo` int(11) DEFAULT NULL,
  `cParParExtValor` varchar(250) DEFAULT NULL,
  `cParParExtGlosa` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docparparext
-- ----------------------------

-- ----------------------------
-- Table structure for docparparextdetalle
-- ----------------------------
DROP TABLE IF EXISTS `docparparextdetalle`;
CREATE TABLE `docparparextdetalle` (
  `cDocCodigo` varchar(20) NOT NULL,
  `nIntSrcCodigo` int(11) NOT NULL,
  `nIntSrcClase` int(11) NOT NULL,
  `nIntDstCodigo` int(11) NOT NULL,
  `nIntDstClase` int(11) NOT NULL,
  `nObjCodigo` int(11) NOT NULL,
  `nObjTipo` int(11) NOT NULL,
  `nParDetCodigo` int(11) NOT NULL,
  `nParDetClase` int(11) NOT NULL,
  `cParParExtDetValor` varchar(250) DEFAULT NULL,
  `cParParExtDetGlosa` text,
  PRIMARY KEY (`cDocCodigo`,`nIntSrcCodigo`,`nIntSrcClase`,`nIntDstCodigo`,`nIntDstClase`,`nObjCodigo`,`nObjTipo`,`nParDetCodigo`,`nParDetClase`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docparparextdetalle
-- ----------------------------

-- ----------------------------
-- Table structure for docperiodo
-- ----------------------------
DROP TABLE IF EXISTS `docperiodo`;
CREATE TABLE `docperiodo` (
  `cDocCodigo` varchar(15) NOT NULL,
  `nPrdInic` int(11) NOT NULL,
  `nPrdFin` int(11) NOT NULL,
  PRIMARY KEY (`cDocCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docperiodo
-- ----------------------------

-- ----------------------------
-- Table structure for docpersona
-- ----------------------------
DROP TABLE IF EXISTS `docpersona`;
CREATE TABLE `docpersona` (
  `cDocCodigo` varchar(15) NOT NULL,
  `nDocPerTipo` int(11) NOT NULL,
  `cPerCodigo` varchar(20) NOT NULL,
  `nPerRelacion` int(11) NOT NULL,
  `nDocTipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docpersona
-- ----------------------------

-- ----------------------------
-- Table structure for docpresupuesto
-- ----------------------------
DROP TABLE IF EXISTS `docpresupuesto`;
CREATE TABLE `docpresupuesto` (
  `cDocCodigo` varchar(20) DEFAULT NULL,
  `nParCodigo` int(11) DEFAULT NULL,
  `nParClase` int(11) DEFAULT NULL,
  `cDocPreValor` varchar(100) DEFAULT NULL,
  `cDocParGlosa` varchar(250) DEFAULT NULL,
  `nDocPreEstado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docpresupuesto
-- ----------------------------
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '1', '2078', '34', 'INGRESOS PROMEDIO MENSUAL O POR FAENA DE PESCA ', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '2', '2078', '45', 'INGRESOS PROMEDIO MENSUAL POR OTRA ACTIDAD', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '1', '2079', '45', 'GASTOS PROPIETARIO - ARTE Y/O APAREJO DE PESCA', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '2', '2079', '65', 'ASTOS PROPIETARIO - REPARACION Y MANTENIMIENTO', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '3', '2079', '56', 'ASTOS PROPIETARIO - OTROS GASTOS', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '1', '2080', '56', 'GASTOS COMUNES - ALIMIMENTOS', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '2', '2080', '65', 'GASTOS COMUNES - COMBUSTIBLE', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '3', '2080', '65', 'GASTOS COMUNES - LUBRICANTES', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '4', '2080', '56', 'GASTOS COMUNES - AGUA', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '5', '2080', '0.00', 'GASTOS COMUNES - HIELO', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '6', '2080', '0.00', 'GASTOS COMUNES - OTROS', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '7', '2080', '408', 'GASTOS COMUNES - TOTAL DE GASTOS COMUNES', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '2', '2043', '56', '657', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '1', '2043', '56', '567', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '1', '2082', '56', 'GASTOS COMUNES -GANANCIAS TOTALES', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '2', '2082', '756', 'GASTOS COMUNES - NUMERO TOTAL DE PARTES', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '3', '2082', '76', 'GASTOS COMUNES - VALOR DE UNA PARTE', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '4', '2082', '67', 'GASTOS COMUNES - PARTES PARA EL ARMADOR', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '5', '2082', '67', 'GASTOS COMUNES - PARTES PARA EL PROPIETARIO DE LA RED', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '6', '2082', '67', 'GASTOS COMUNES - PARTES PARA LA TRIBULACION', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '7', '2082', '67', 'GASTOS COMUNES -OTROS(ESPECIFICAR)', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074688', '8', '2082', '1156', 'GASTOS COMUNES - TOTALES GANANCIAS', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '1', '2078', '34', 'INGRESOS PROMEDIO MENSUAL O POR FAENA DE PESCA ', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '2', '2078', '45', 'INGRESOS PROMEDIO MENSUAL POR OTRA ACTIDAD', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '1', '2079', '45', 'GASTOS PROPIETARIO - ARTE Y/O APAREJO DE PESCA', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '2', '2079', '65', 'ASTOS PROPIETARIO - REPARACION Y MANTENIMIENTO', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '3', '2079', '56', 'ASTOS PROPIETARIO - OTROS GASTOS', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '1', '2080', '56', 'GASTOS COMUNES - ALIMIMENTOS', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '2', '2080', '65', 'GASTOS COMUNES - COMBUSTIBLE', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '3', '2080', '65', 'GASTOS COMUNES - LUBRICANTES', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '4', '2080', '56', 'GASTOS COMUNES - AGUA', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '5', '2080', '0.00', 'GASTOS COMUNES - HIELO', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '6', '2080', '0.00', 'GASTOS COMUNES - OTROS', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '7', '2080', '408', 'GASTOS COMUNES - TOTAL DE GASTOS COMUNES', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '2', '2043', '56', '657', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '1', '2043', '56', '567', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '1', '2082', '56', 'GASTOS COMUNES -GANANCIAS TOTALES', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '2', '2082', '756', 'GASTOS COMUNES - NUMERO TOTAL DE PARTES', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '3', '2082', '76', 'GASTOS COMUNES - VALOR DE UNA PARTE', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '4', '2082', '67', 'GASTOS COMUNES - PARTES PARA EL ARMADOR', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '5', '2082', '67', 'GASTOS COMUNES - PARTES PARA EL PROPIETARIO DE LA RED', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '6', '2082', '67', 'GASTOS COMUNES - PARTES PARA LA TRIBULACION', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '7', '2082', '67', 'GASTOS COMUNES -OTROS(ESPECIFICAR)', '1');
INSERT INTO `docpresupuesto` VALUES ('20198441074689', '8', '2082', '1156', 'GASTOS COMUNES - TOTALES GANANCIAS', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '1', '2078', '0.00', 'INGRESOS PROMEDIO MENSUAL O POR FAENA DE PESCA ', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '2', '2078', '0.00', 'INGRESOS PROMEDIO MENSUAL POR OTRA ACTIDAD', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '1', '2079', '12', 'GASTOS PROPIETARIO - ARTE Y/O APAREJO DE PESCA', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '2', '2079', '45', 'ASTOS PROPIETARIO - REPARACION Y MANTENIMIENTO', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '3', '2079', '20.9', 'ASTOS PROPIETARIO - OTROS GASTOS', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '1', '2080', '12', 'GASTOS COMUNES - ALIMIMENTOS', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '2', '2080', '45', 'GASTOS COMUNES - COMBUSTIBLE', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '3', '2080', '0.00', 'GASTOS COMUNES - LUBRICANTES', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '4', '2080', '54', 'GASTOS COMUNES - AGUA', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '5', '2080', '12', 'GASTOS COMUNES - HIELO', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '6', '2080', '34', 'GASTOS COMUNES - OTROS', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '7', '2080', '234.9', 'GASTOS COMUNES - TOTAL DE GASTOS COMUNES', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '2', '2043', '12', '12', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '1', '2043', '12', '12', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '1', '2043', '12', '13', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '1', '2082', '12', 'GASTOS COMUNES -GANANCIAS TOTALES', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '2', '2082', '23.9', 'GASTOS COMUNES - NUMERO TOTAL DE PARTES', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '3', '2082', '23', 'GASTOS COMUNES - VALOR DE UNA PARTE', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '4', '2082', '45', 'GASTOS COMUNES - PARTES PARA EL ARMADOR', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '5', '2082', '123', 'GASTOS COMUNES - PARTES PARA EL PROPIETARIO DE LA RED', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '6', '2082', '4', 'GASTOS COMUNES - PARTES PARA LA TRIBULACION', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '7', '2082', '5', 'GASTOS COMUNES -OTROS(ESPECIFICAR)', '1');
INSERT INTO `docpresupuesto` VALUES ('26598529548291', '8', '2082', '235.9', 'GASTOS COMUNES - TOTALES GANANCIAS', '1');

-- ----------------------------
-- Table structure for docprovincia
-- ----------------------------
DROP TABLE IF EXISTS `docprovincia`;
CREATE TABLE `docprovincia` (
  `cDocCodigo` varchar(20) DEFAULT NULL,
  `nParCodigo` int(11) DEFAULT NULL,
  `nParClase` int(11) DEFAULT NULL,
  `cDocProValor` varchar(20) DEFAULT NULL,
  `cDocProGlosa` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docprovincia
-- ----------------------------
INSERT INTO `docprovincia` VALUES ('20198441074688', '0', '0', 'pro00125', 'MERCADO FINA - PROVINCIA');
INSERT INTO `docprovincia` VALUES ('20198441074689', '0', '0', 'pro00125', 'MERCADO FINA - PROVINCIA');
INSERT INTO `docprovincia` VALUES ('26598529548291', '0', '0', 'pro00125', 'MERCADO FINA - PROVINCIA');

-- ----------------------------
-- Table structure for docref
-- ----------------------------
DROP TABLE IF EXISTS `docref`;
CREATE TABLE `docref` (
  `cDocCodigo` varchar(15) NOT NULL DEFAULT '',
  `cDocRefCodigo` varchar(15) NOT NULL,
  PRIMARY KEY (`cDocCodigo`,`cDocRefCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docref
-- ----------------------------

-- ----------------------------
-- Table structure for docrefdestino
-- ----------------------------
DROP TABLE IF EXISTS `docrefdestino`;
CREATE TABLE `docrefdestino` (
  `cDocCodigo` varchar(15) NOT NULL,
  `cLugarOrigen` text NOT NULL,
  `nOrigTipo` int(11) NOT NULL,
  `cOrigDireccion` varchar(200) NOT NULL,
  `cOrigManz` varchar(100) NOT NULL,
  `cOrigLote` varchar(100) NOT NULL,
  `nOrigTipoRes` int(11) NOT NULL,
  `cOrigResidencia` varchar(200) NOT NULL,
  `cLugarDestino` text NOT NULL,
  `nDestTipo` int(11) NOT NULL,
  `cDestDireccion` varchar(200) NOT NULL,
  PRIMARY KEY (`cDocCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docrefdestino
-- ----------------------------

-- ----------------------------
-- Table structure for documentos
-- ----------------------------
DROP TABLE IF EXISTS `documentos`;
CREATE TABLE `documentos` (
  `cDocCodigo` varchar(20) NOT NULL,
  `dDocFecha` datetime NOT NULL,
  `cDocObserv` varchar(1000) NOT NULL,
  `nDocTipo` int(11) NOT NULL,
  `nEstado` int(11) NOT NULL,
  PRIMARY KEY (`cDocCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of documentos
-- ----------------------------

-- ----------------------------
-- Table structure for docvigencia
-- ----------------------------
DROP TABLE IF EXISTS `docvigencia`;
CREATE TABLE `docvigencia` (
  `cDocCodigo` varchar(15) NOT NULL,
  `dFecha` date NOT NULL,
  `dFechaFin` date NOT NULL,
  `dHora` datetime NOT NULL,
  PRIMARY KEY (`cDocCodigo`),
  UNIQUE KEY `Codigo` (`cDocCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docvigencia
-- ----------------------------

-- ----------------------------
-- Table structure for pais
-- ----------------------------
DROP TABLE IF EXISTS `pais`;
CREATE TABLE `pais` (
  `IdPais` varchar(20) NOT NULL,
  `Nombre` varchar(250) DEFAULT NULL,
  `nPaiEstado` int(4) DEFAULT '1',
  PRIMARY KEY (`IdPais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pais
-- ----------------------------
INSERT INTO `pais` VALUES ('pai00001', 'Perú', '1');
INSERT INTO `pais` VALUES ('pai00002', 'Afganistán', '1');
INSERT INTO `pais` VALUES ('pai00003', 'Akrotiri', '0');
INSERT INTO `pais` VALUES ('pai00004', 'Albania', '0');
INSERT INTO `pais` VALUES ('pai00005', 'Alemania', '0');
INSERT INTO `pais` VALUES ('pai00006', 'Andorra', '0');
INSERT INTO `pais` VALUES ('pai00007', 'Angola', '0');
INSERT INTO `pais` VALUES ('pai00008', 'Anguila', '0');
INSERT INTO `pais` VALUES ('pai00009', 'Antártida', '0');
INSERT INTO `pais` VALUES ('pai00010', 'Antigua y Barbuda', '0');
INSERT INTO `pais` VALUES ('pai00011', 'Antillas Neerlandesas', '0');
INSERT INTO `pais` VALUES ('pai00012', 'Arabia Saudí', '0');
INSERT INTO `pais` VALUES ('pai00013', 'Arctic Ocean', '0');
INSERT INTO `pais` VALUES ('pai00014', 'Argelia', '0');
INSERT INTO `pais` VALUES ('pai00015', 'Argentina', '0');
INSERT INTO `pais` VALUES ('pai00016', 'Armenia', '0');
INSERT INTO `pais` VALUES ('pai00017', 'Aruba', '0');
INSERT INTO `pais` VALUES ('pai00018', 'Ashmore and Cartier Islands', '0');
INSERT INTO `pais` VALUES ('pai00019', 'Atlantic Ocean', '0');
INSERT INTO `pais` VALUES ('pai00020', 'Australia', '0');
INSERT INTO `pais` VALUES ('pai00021', 'Austria', '0');
INSERT INTO `pais` VALUES ('pai00022', 'Azerbaiyán', '0');
INSERT INTO `pais` VALUES ('pai00023', 'Bahamas', '0');
INSERT INTO `pais` VALUES ('pai00024', 'Bahráin', '0');
INSERT INTO `pais` VALUES ('pai00025', 'Bangladesh', '0');
INSERT INTO `pais` VALUES ('pai00026', 'Barbados', '0');
INSERT INTO `pais` VALUES ('pai00027', 'Bélgica', '0');
INSERT INTO `pais` VALUES ('pai00028', 'Belice', '0');
INSERT INTO `pais` VALUES ('pai00029', 'Benín', '0');
INSERT INTO `pais` VALUES ('pai00030', 'Bermudas', '0');
INSERT INTO `pais` VALUES ('pai00031', 'Bielorrusia', '0');
INSERT INTO `pais` VALUES ('pai00032', 'Birmania; Myanmar', '0');
INSERT INTO `pais` VALUES ('pai00033', 'Bolivia', '0');
INSERT INTO `pais` VALUES ('pai00034', 'Bosnia y Hercegovina', '0');
INSERT INTO `pais` VALUES ('pai00035', 'Botsuana', '0');
INSERT INTO `pais` VALUES ('pai00036', 'Brasil', '0');
INSERT INTO `pais` VALUES ('pai00037', 'Brunéi', '0');
INSERT INTO `pais` VALUES ('pai00038', 'Bulgaria', '0');
INSERT INTO `pais` VALUES ('pai00039', 'Burkina Faso', '0');
INSERT INTO `pais` VALUES ('pai00040', 'Burundi', '0');
INSERT INTO `pais` VALUES ('pai00041', 'Bután', '0');
INSERT INTO `pais` VALUES ('pai00042', 'Cabo Verde', '0');
INSERT INTO `pais` VALUES ('pai00043', 'Camboya', '0');
INSERT INTO `pais` VALUES ('pai00044', 'Camerún', '0');
INSERT INTO `pais` VALUES ('pai00045', 'Canadá', '0');
INSERT INTO `pais` VALUES ('pai00046', 'Chad', '0');
INSERT INTO `pais` VALUES ('pai00047', 'Chile', '0');
INSERT INTO `pais` VALUES ('pai00048', 'China', '0');
INSERT INTO `pais` VALUES ('pai00049', 'Chipre', '0');
INSERT INTO `pais` VALUES ('pai00050', 'Clipperton Island', '0');
INSERT INTO `pais` VALUES ('pai00051', 'Colombia', '0');
INSERT INTO `pais` VALUES ('pai00052', 'Comoras', '0');
INSERT INTO `pais` VALUES ('pai00053', 'Congo', '0');
INSERT INTO `pais` VALUES ('pai00054', 'Coral Sea Islands', '0');
INSERT INTO `pais` VALUES ('pai00055', 'Corea del Norte', '0');
INSERT INTO `pais` VALUES ('pai00056', 'Corea del Sur', '0');
INSERT INTO `pais` VALUES ('pai00057', 'Costa de Marfil', '0');
INSERT INTO `pais` VALUES ('pai00058', 'Costa Rica', '0');
INSERT INTO `pais` VALUES ('pai00059', 'Croacia', '0');
INSERT INTO `pais` VALUES ('pai00060', 'Cuba', '0');
INSERT INTO `pais` VALUES ('pai00061', 'Dhekelia', '0');
INSERT INTO `pais` VALUES ('pai00062', 'Dinamarca', '0');
INSERT INTO `pais` VALUES ('pai00063', 'Dominica', '0');
INSERT INTO `pais` VALUES ('pai00064', 'Ecuador', '0');
INSERT INTO `pais` VALUES ('pai00065', 'Egipto', '0');
INSERT INTO `pais` VALUES ('pai00066', 'El Salvador', '0');
INSERT INTO `pais` VALUES ('pai00067', 'El Vaticano', '0');
INSERT INTO `pais` VALUES ('pai00068', 'Emiratos Árabes Unidos', '0');
INSERT INTO `pais` VALUES ('pai00069', 'Eritrea', '0');
INSERT INTO `pais` VALUES ('pai00070', 'Eslovaquia', '0');
INSERT INTO `pais` VALUES ('pai00071', 'Eslovenia', '0');
INSERT INTO `pais` VALUES ('pai00072', 'España', '0');
INSERT INTO `pais` VALUES ('pai00073', 'Estados Unidos', '0');
INSERT INTO `pais` VALUES ('pai00074', 'Estonia', '0');
INSERT INTO `pais` VALUES ('pai00075', 'Etiopía', '0');
INSERT INTO `pais` VALUES ('pai00076', 'Filipinas', '0');
INSERT INTO `pais` VALUES ('pai00077', 'Finlandia', '0');
INSERT INTO `pais` VALUES ('pai00078', 'Fiyi', '0');
INSERT INTO `pais` VALUES ('pai00079', 'Francia', '0');
INSERT INTO `pais` VALUES ('pai00080', 'Gabón', '0');
INSERT INTO `pais` VALUES ('pai00081', 'Gambia', '0');
INSERT INTO `pais` VALUES ('pai00082', 'Gaza Strip', '0');
INSERT INTO `pais` VALUES ('pai00083', 'Georgia', '0');
INSERT INTO `pais` VALUES ('pai00084', 'Ghana', '0');
INSERT INTO `pais` VALUES ('pai00085', 'Gibraltar', '0');
INSERT INTO `pais` VALUES ('pai00086', 'Granada', '0');
INSERT INTO `pais` VALUES ('pai00087', 'Grecia', '0');
INSERT INTO `pais` VALUES ('pai00088', 'Groenlandia', '0');
INSERT INTO `pais` VALUES ('pai00089', 'Guam', '0');
INSERT INTO `pais` VALUES ('pai00090', 'Guatemala', '0');
INSERT INTO `pais` VALUES ('pai00091', 'Guernsey', '0');
INSERT INTO `pais` VALUES ('pai00092', 'Guinea', '0');
INSERT INTO `pais` VALUES ('pai00093', 'Guinea Ecuatorial', '0');
INSERT INTO `pais` VALUES ('pai00094', 'Guinea-Bissau', '0');
INSERT INTO `pais` VALUES ('pai00095', 'Guyana', '0');
INSERT INTO `pais` VALUES ('pai00096', 'Haití', '0');
INSERT INTO `pais` VALUES ('pai00097', 'Honduras', '0');
INSERT INTO `pais` VALUES ('pai00098', 'Hong Kong', '0');
INSERT INTO `pais` VALUES ('pai00099', 'Hungría', '0');
INSERT INTO `pais` VALUES ('pai00100', 'India', '0');
INSERT INTO `pais` VALUES ('pai00101', 'Indian Ocean', '0');
INSERT INTO `pais` VALUES ('pai00102', 'Indonesia', '0');
INSERT INTO `pais` VALUES ('pai00103', 'Irán', '0');
INSERT INTO `pais` VALUES ('pai00104', 'Iraq', '0');
INSERT INTO `pais` VALUES ('pai00105', 'Irlanda', '0');
INSERT INTO `pais` VALUES ('pai00106', 'Isla Bouvet', '0');
INSERT INTO `pais` VALUES ('pai00107', 'Isla Christmas', '0');
INSERT INTO `pais` VALUES ('pai00108', 'Isla Norfolk', '0');
INSERT INTO `pais` VALUES ('pai00109', 'Islandia', '0');
INSERT INTO `pais` VALUES ('pai00110', 'Islas Caimán', '0');
INSERT INTO `pais` VALUES ('pai00111', 'Islas Cocos', '0');
INSERT INTO `pais` VALUES ('pai00112', 'Islas Cook', '0');
INSERT INTO `pais` VALUES ('pai00113', 'Islas Feroe', '0');
INSERT INTO `pais` VALUES ('pai00114', 'Islas Georgia del Sur y Sandwich del Sur', '0');
INSERT INTO `pais` VALUES ('pai00115', 'Islas Heard y McDonald', '0');
INSERT INTO `pais` VALUES ('pai00116', 'Islas Malvinas', '0');
INSERT INTO `pais` VALUES ('pai00117', 'Islas Marianas del Norte', '0');
INSERT INTO `pais` VALUES ('pai00118', 'Islas Marshall', '0');
INSERT INTO `pais` VALUES ('pai00119', 'Islas Pitcairn', '0');
INSERT INTO `pais` VALUES ('pai00120', 'Islas Salomón', '0');
INSERT INTO `pais` VALUES ('pai00121', 'Islas Turcas y Caicos', '0');
INSERT INTO `pais` VALUES ('pai00122', 'Islas Vírgenes Americanas', '0');
INSERT INTO `pais` VALUES ('pai00123', 'Islas Vírgenes Británicas', '0');
INSERT INTO `pais` VALUES ('pai00124', 'Israel', '0');
INSERT INTO `pais` VALUES ('pai00125', 'Italia', '0');
INSERT INTO `pais` VALUES ('pai00126', 'Jamaica', '0');
INSERT INTO `pais` VALUES ('pai00127', 'Jan Mayen', '0');
INSERT INTO `pais` VALUES ('pai00128', 'Japón', '0');
INSERT INTO `pais` VALUES ('pai00129', 'Jersey', '0');
INSERT INTO `pais` VALUES ('pai00130', 'Jordania', '0');
INSERT INTO `pais` VALUES ('pai00131', 'Kazajistán', '0');
INSERT INTO `pais` VALUES ('pai00132', 'Kenia', '0');
INSERT INTO `pais` VALUES ('pai00133', 'Kirguizistán', '0');
INSERT INTO `pais` VALUES ('pai00134', 'Kiribati', '0');
INSERT INTO `pais` VALUES ('pai00135', 'Kuwait', '0');
INSERT INTO `pais` VALUES ('pai00136', 'Laos', '0');
INSERT INTO `pais` VALUES ('pai00137', 'Lesoto', '0');
INSERT INTO `pais` VALUES ('pai00138', 'Letonia', '0');
INSERT INTO `pais` VALUES ('pai00139', 'Líbano', '0');
INSERT INTO `pais` VALUES ('pai00140', 'Liberia', '0');
INSERT INTO `pais` VALUES ('pai00141', 'Libia', '0');
INSERT INTO `pais` VALUES ('pai00142', 'Liechtenstein', '0');
INSERT INTO `pais` VALUES ('pai00143', 'Lituania', '0');
INSERT INTO `pais` VALUES ('pai00144', 'Luxemburgo', '0');
INSERT INTO `pais` VALUES ('pai00145', 'Macao', '0');
INSERT INTO `pais` VALUES ('pai00146', 'Macedonia', '0');
INSERT INTO `pais` VALUES ('pai00147', 'Madagascar', '0');
INSERT INTO `pais` VALUES ('pai00148', 'Malasia', '0');
INSERT INTO `pais` VALUES ('pai00149', 'Malaui', '0');
INSERT INTO `pais` VALUES ('pai00150', 'Maldivas', '0');
INSERT INTO `pais` VALUES ('pai00151', 'Malí', '0');
INSERT INTO `pais` VALUES ('pai00152', 'Malta', '0');
INSERT INTO `pais` VALUES ('pai00153', 'Man, Isle of', '0');
INSERT INTO `pais` VALUES ('pai00154', 'Marruecos', '0');
INSERT INTO `pais` VALUES ('pai00155', 'Mauricio', '0');
INSERT INTO `pais` VALUES ('pai00156', 'Mauritania', '0');
INSERT INTO `pais` VALUES ('pai00157', 'Mayotte', '0');
INSERT INTO `pais` VALUES ('pai00158', 'México', '0');
INSERT INTO `pais` VALUES ('pai00159', 'Micronesia', '0');
INSERT INTO `pais` VALUES ('pai00160', 'Moldavia', '0');
INSERT INTO `pais` VALUES ('pai00161', 'Mónaco', '0');
INSERT INTO `pais` VALUES ('pai00162', 'Mongolia', '0');
INSERT INTO `pais` VALUES ('pai00163', 'Montenegro', '0');
INSERT INTO `pais` VALUES ('pai00164', 'Montserrat', '0');
INSERT INTO `pais` VALUES ('pai00165', 'Mozambique', '0');
INSERT INTO `pais` VALUES ('pai00166', 'Mundo', '0');
INSERT INTO `pais` VALUES ('pai00167', 'Namibia', '0');
INSERT INTO `pais` VALUES ('pai00168', 'Nauru', '0');
INSERT INTO `pais` VALUES ('pai00169', 'Navassa Island', '0');
INSERT INTO `pais` VALUES ('pai00170', 'Nepal', '0');
INSERT INTO `pais` VALUES ('pai00171', 'Nicaragua', '0');
INSERT INTO `pais` VALUES ('pai00172', 'Níger', '0');
INSERT INTO `pais` VALUES ('pai00173', 'Nigeria', '0');
INSERT INTO `pais` VALUES ('pai00174', 'Niue', '0');
INSERT INTO `pais` VALUES ('pai00175', 'Noruega', '0');
INSERT INTO `pais` VALUES ('pai00176', 'Nueva Caledonia', '0');
INSERT INTO `pais` VALUES ('pai00177', 'Nueva Zelanda', '0');
INSERT INTO `pais` VALUES ('pai00178', 'Omán', '0');
INSERT INTO `pais` VALUES ('pai00179', 'Pacific Ocean', '0');
INSERT INTO `pais` VALUES ('pai00180', 'Países Bajos', '0');
INSERT INTO `pais` VALUES ('pai00181', 'Pakistán', '0');
INSERT INTO `pais` VALUES ('pai00182', 'Palaos', '0');
INSERT INTO `pais` VALUES ('pai00183', 'Panamá', '0');
INSERT INTO `pais` VALUES ('pai00184', 'Papúa-Nueva Guinea', '0');
INSERT INTO `pais` VALUES ('pai00185', 'Paracel Islands', '0');
INSERT INTO `pais` VALUES ('pai00186', 'Paraguay', '0');
INSERT INTO `pais` VALUES ('pai00187', 'Polinesia Francesa', '0');
INSERT INTO `pais` VALUES ('pai00188', 'Polonia', '0');
INSERT INTO `pais` VALUES ('pai00189', 'Portugal', '0');
INSERT INTO `pais` VALUES ('pai00190', 'Puerto Rico', '0');
INSERT INTO `pais` VALUES ('pai00191', 'Qatar', '0');
INSERT INTO `pais` VALUES ('pai00192', 'Reino Unido', '0');
INSERT INTO `pais` VALUES ('pai00193', 'República Centroafricana', '0');
INSERT INTO `pais` VALUES ('pai00194', 'República Checa', '0');
INSERT INTO `pais` VALUES ('pai00195', 'República Democrática del Congo', '0');
INSERT INTO `pais` VALUES ('pai00196', 'República Dominicana', '0');
INSERT INTO `pais` VALUES ('pai00197', 'Ruanda', '0');
INSERT INTO `pais` VALUES ('pai00198', 'Rumania', '0');
INSERT INTO `pais` VALUES ('pai00199', 'Rusia', '0');
INSERT INTO `pais` VALUES ('pai00200', 'Sáhara Occidental', '0');
INSERT INTO `pais` VALUES ('pai00201', 'Samoa', '0');
INSERT INTO `pais` VALUES ('pai00202', 'Samoa Americana', '0');
INSERT INTO `pais` VALUES ('pai00203', 'San Cristóbal y Nieves', '0');
INSERT INTO `pais` VALUES ('pai00204', 'San Marino', '0');
INSERT INTO `pais` VALUES ('pai00205', 'San Pedro y Miquelón', '0');
INSERT INTO `pais` VALUES ('pai00206', 'San Vicente y las Granadinas', '0');
INSERT INTO `pais` VALUES ('pai00207', 'Santa Helena', '0');
INSERT INTO `pais` VALUES ('pai00208', 'Santa Lucía', '0');
INSERT INTO `pais` VALUES ('pai00209', 'Santo Tomé y Príncipe', '0');
INSERT INTO `pais` VALUES ('pai00210', 'Senegal', '0');
INSERT INTO `pais` VALUES ('pai00211', 'Serbia', '0');
INSERT INTO `pais` VALUES ('pai00212', 'Seychelles', '0');
INSERT INTO `pais` VALUES ('pai00213', 'Sierra Leona', '0');
INSERT INTO `pais` VALUES ('pai00214', 'Singapur', '0');
INSERT INTO `pais` VALUES ('pai00215', 'Siria', '0');
INSERT INTO `pais` VALUES ('pai00216', 'Somalia', '0');
INSERT INTO `pais` VALUES ('pai00217', 'Southern Ocean', '0');
INSERT INTO `pais` VALUES ('pai00218', 'Spratly Islands', '0');
INSERT INTO `pais` VALUES ('pai00219', 'Sri Lanka', '0');
INSERT INTO `pais` VALUES ('pai00220', 'Suazilandia', '0');
INSERT INTO `pais` VALUES ('pai00221', 'Sudáfrica', '0');
INSERT INTO `pais` VALUES ('pai00222', 'Sudán', '0');
INSERT INTO `pais` VALUES ('pai00223', 'Suecia', '0');
INSERT INTO `pais` VALUES ('pai00224', 'Suiza', '0');
INSERT INTO `pais` VALUES ('pai00225', 'Surinam', '0');
INSERT INTO `pais` VALUES ('pai00226', 'Svalbard y Jan Mayen', '0');
INSERT INTO `pais` VALUES ('pai00227', 'Tailandia', '0');
INSERT INTO `pais` VALUES ('pai00228', 'Taiwán', '0');
INSERT INTO `pais` VALUES ('pai00229', 'Tanzania', '0');
INSERT INTO `pais` VALUES ('pai00230', 'Tayikistán', '0');
INSERT INTO `pais` VALUES ('pai00231', 'Territorio Británico del Océano Indico', '0');
INSERT INTO `pais` VALUES ('pai00232', 'Territorios Australes Franceses', '0');
INSERT INTO `pais` VALUES ('pai00233', 'Timor Oriental', '0');
INSERT INTO `pais` VALUES ('pai00234', 'Togo', '0');
INSERT INTO `pais` VALUES ('pai00235', 'Tokelau', '0');
INSERT INTO `pais` VALUES ('pai00236', 'Tonga', '0');
INSERT INTO `pais` VALUES ('pai00237', 'Trinidad y Tobago', '0');
INSERT INTO `pais` VALUES ('pai00238', 'Túnez', '0');
INSERT INTO `pais` VALUES ('pai00239', 'Turkmenistán', '0');
INSERT INTO `pais` VALUES ('pai00240', 'Turquía', '0');
INSERT INTO `pais` VALUES ('pai00241', 'Tuvalu', '0');
INSERT INTO `pais` VALUES ('pai00242', 'Ucrania', '0');
INSERT INTO `pais` VALUES ('pai00243', 'Uganda', '0');
INSERT INTO `pais` VALUES ('pai00244', 'Unión Europea', '0');
INSERT INTO `pais` VALUES ('pai00245', 'Uruguay', '0');
INSERT INTO `pais` VALUES ('pai00246', 'Uzbekistán', '0');
INSERT INTO `pais` VALUES ('pai00247', 'Vanuatu', '0');
INSERT INTO `pais` VALUES ('pai00248', 'Venezuela', '0');
INSERT INTO `pais` VALUES ('pai00249', 'Vietnam', '0');
INSERT INTO `pais` VALUES ('pai00250', 'Wake Island', '0');
INSERT INTO `pais` VALUES ('pai00251', 'Wallis y Futuna', '0');
INSERT INTO `pais` VALUES ('pai00252', 'West Bank', '0');
INSERT INTO `pais` VALUES ('pai00253', 'Yemen', '0');
INSERT INTO `pais` VALUES ('pai00254', 'Yibuti', '0');
INSERT INTO `pais` VALUES ('pai00255', 'Zambia', '0');
INSERT INTO `pais` VALUES ('pai00256', 'Zimbabue', '0');

-- ----------------------------
-- Table structure for parametro
-- ----------------------------
DROP TABLE IF EXISTS `parametro`;
CREATE TABLE `parametro` (
  `nParCodigo` bigint(11) NOT NULL,
  `nParClase` int(11) NOT NULL,
  `cParJerarquia` varchar(500) NOT NULL,
  `cParNombre` varchar(1000) NOT NULL,
  `cParDescripcion` varchar(1000) NOT NULL,
  `nParTipo` int(11) NOT NULL,
  PRIMARY KEY (`nParCodigo`,`nParClase`),
  KEY `idx_Parametro_cParNombre` (`cParNombre`(767)),
  KEY `idx_Parametro_cParDescripcion` (`cParDescripcion`(767))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parametro
-- ----------------------------
INSERT INTO `parametro` VALUES ('0', '2002', '10', 'Sector', '.:::.Sector.:::.', '0');
INSERT INTO `parametro` VALUES ('1', '2001', '1001', 'ONSR', 'CAMPAÑA 2014 124435', '1000');
INSERT INTO `parametro` VALUES ('2', '2001', '1002', 'SEGUNDA CAMPAÑA I', 'CAMPAÑA 2014 I', '1000');
INSERT INTO `parametro` VALUES ('3', '2001', '1003', 'SADCSD', 'CAMPAÑA 2014333333', '1000');
INSERT INTO `parametro` VALUES ('10', '5000', '10', 'MODULO SISTEMA WEB', 'MODULO SISTEMA WEB', '0');
INSERT INTO `parametro` VALUES ('1001', '5000', '1001', 'MAESTRO MANTENEDORES', 'Tablas Maestra', '1000');
INSERT INTO `parametro` VALUES ('1002', '5000', '1002', 'MAESTRO MANTENEDORES', 'Productores', '1000');
INSERT INTO `parametro` VALUES ('100101', '5000', '100101', 'xajax_Listar_Periodos(0,20,1,1);', 'Campaña', '1000');
INSERT INTO `parametro` VALUES ('100102', '5000', '100102', 'xajax_Listar_Sectores(0,20,1,1);', 'Sector', '1000');
INSERT INTO `parametro` VALUES ('100103', '5000', '100103', 'xajax_Configurar_Parametro(1003)', 'Tipos de Zonas', '1000');
INSERT INTO `parametro` VALUES ('100201', '5000', '100201', 'xajax_Listar_Productor();', 'Productor', '1000');
INSERT INTO `parametro` VALUES ('10010101', '5001', '10010101', 'boton-nuevo', 'Nuevo', '1000');
INSERT INTO `parametro` VALUES ('10010102', '5001', '10010102', 'boton-listar', 'Listar', '1000');
INSERT INTO `parametro` VALUES ('10010103', '5001', '10010103', 'boton-editar', 'Editar', '1000');
INSERT INTO `parametro` VALUES ('10010104', '5001', '10010104', 'boton-eliminar', 'Eliminar', '1000');
INSERT INTO `parametro` VALUES ('10010105', '5001', '10010105', 'boton-reporte', 'Reportes', '1000');
INSERT INTO `parametro` VALUES ('10010201', '5001', '10010201', 'boton-nuevo', 'Nuevo', '1000');
INSERT INTO `parametro` VALUES ('10010202', '5001', '10010202', 'boton-listar', 'Listar', '1000');
INSERT INTO `parametro` VALUES ('10010203', '5001', '10010203', 'boton-editar', 'Editar', '1000');
INSERT INTO `parametro` VALUES ('10010204', '5001', '10010204', 'boton-eliminar', 'Eliminar', '1000');
INSERT INTO `parametro` VALUES ('10010205', '5001', '10010205', 'boton-reporte', 'Reporte PDF', '1000');
INSERT INTO `parametro` VALUES ('10010301', '5001', '10010301', 'boton-nuevo', 'Nuevo', '1000');
INSERT INTO `parametro` VALUES ('10010302', '5001', '10010302', 'boton-listar', 'Listar', '1000');
INSERT INTO `parametro` VALUES ('10010303', '5001', '10010303', 'boton-editar', 'Editar', '1000');
INSERT INTO `parametro` VALUES ('10010304', '5001', '10010304', 'boton-eliminar', 'Eliminar', '1000');
INSERT INTO `parametro` VALUES ('10010305', '5001', '10010305', 'boton-reporte', 'Reportes', '1000');
INSERT INTO `parametro` VALUES ('10020101', '5001', '10020101', 'boton-nuevo', 'Nuevo', '1000');
INSERT INTO `parametro` VALUES ('10020102', '5001', '10020102', 'boton-listar', 'Listar', '1000');
INSERT INTO `parametro` VALUES ('10020103', '5001', '10020103', 'boton-editar', 'Editar', '1000');
INSERT INTO `parametro` VALUES ('10020104', '5001', '10020104', 'boton-eliminar', 'Eliminar', '1000');
INSERT INTO `parametro` VALUES ('10020105', '5001', '10020105', 'boton-reporte', 'Reportes', '1000');

-- ----------------------------
-- Table structure for parcoordenada
-- ----------------------------
DROP TABLE IF EXISTS `parcoordenada`;
CREATE TABLE `parcoordenada` (
  `nParCodigo` int(11) NOT NULL,
  `nParClase` int(11) DEFAULT NULL,
  `cParLatitud` varchar(100) DEFAULT NULL,
  `cParLonguitud` varchar(100) DEFAULT NULL,
  `cParAltitud` varchar(100) DEFAULT NULL,
  `cObservacion` text,
  `nEstado` int(11) DEFAULT NULL,
  PRIMARY KEY (`nParCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parcoordenada
-- ----------------------------
INSERT INTO `parcoordenada` VALUES ('1', '2044', '6°5\'22\'\'', '7°5\'22\'\'', '', 'ZONA DE PESCA 1', '1');
INSERT INTO `parcoordenada` VALUES ('2', '2044', '6°6\'24\'\'', '8°7\'23\'\'', '', 'ZONA DE PESCA 2', '1');
INSERT INTO `parcoordenada` VALUES ('3', '2044', '7°6\'25\'\'', '6°7\'53\'\'', '', 'ZONA DE PESCA 3', '1');
INSERT INTO `parcoordenada` VALUES ('4', '2044', '6°5\'22\'\'', '7°5\'22\'\'', '', 'ZONA DE PESCA 4', '1');
INSERT INTO `parcoordenada` VALUES ('5', '2044', '6°6\'24\'\'', '8°7\'23\'\'', '', 'ZONA DE PESCA 5', '1');
INSERT INTO `parcoordenada` VALUES ('6', '2044', '7°6\'25\'\'', '6°7\'53\'\'', '', 'ZONA DE PESCA 6', '1');
INSERT INTO `parcoordenada` VALUES ('7', '2044', '6°5\'22\'\'', '7°5\'22\'\'', '', 'ZONA DE PESCA 7', '1');
INSERT INTO `parcoordenada` VALUES ('8', '2044', '6°6\'24\'\'', '8°7\'23\'\'', '', 'ZONA DE PESCA 8', '1');
INSERT INTO `parcoordenada` VALUES ('9', '2044', '7°6\'25\'\'', '6°7\'53\'\'', '', 'ZONA DE PESCA 9', '1');
INSERT INTO `parcoordenada` VALUES ('10', '2044', '6°5\'22\'\'', '7°5\'22\'\'', '', 'ZONA DE PESCA 10', '1');
INSERT INTO `parcoordenada` VALUES ('11', '2044', '6°6\'24\'\'', '8°7\'23\'\'', '', 'ZONA DE PESCA 11', '1');
INSERT INTO `parcoordenada` VALUES ('12', '2044', '7°6\'25\'\'', '6°7\'53\'\'', '', 'ZONA DE PESCA 12', '1');
INSERT INTO `parcoordenada` VALUES ('13', '2044', '6°5\'22\'\'', '7°5\'22\'\'', '', 'ZONA DE PESCA 13', '1');
INSERT INTO `parcoordenada` VALUES ('14', '2044', '6°6\'24\'\'', '8°7\'23\'\'', '', 'ZONA DE PESCA 14', '1');
INSERT INTO `parcoordenada` VALUES ('15', '2044', '7°6\'25\'\'', '6°7\'53\'\'', '', 'ZONA DE PESCA 15', '1');
INSERT INTO `parcoordenada` VALUES ('16', '2044', '6°5\'22\'\'', '7°5\'22\'\'', '', 'ZONA DE PESCA 16', '1');
INSERT INTO `parcoordenada` VALUES ('17', '2044', '6°6\'24\'\'', '8°7\'23\'\'', '', 'ZONA DE PESCA 17', '1');
INSERT INTO `parcoordenada` VALUES ('18', '2044', '7°6\'25\'\'', '6°7\'53\'\'', '', 'ZONA DE PESCA 18', '1');
INSERT INTO `parcoordenada` VALUES ('19', '2044', '6°5\'22\'\'', '7°5\'22\'\'', '', 'ZONA DE PESCA 19', '1');
INSERT INTO `parcoordenada` VALUES ('20', '2044', '6°6\'24\'\'', '8°7\'23\'\'', '', 'ZONA DE PESCA 20', '1');
INSERT INTO `parcoordenada` VALUES ('21', '2044', '7°6\'25\'\'', '6°7\'53\'\'', '', 'ZONA DE PESCA 21', '1');

-- ----------------------------
-- Table structure for pardetalle
-- ----------------------------
DROP TABLE IF EXISTS `pardetalle`;
CREATE TABLE `pardetalle` (
  `nParCodigo` int(11) NOT NULL,
  `nParClase` int(11) NOT NULL,
  `nParItem` int(11) NOT NULL,
  `nParItemS` int(11) NOT NULL,
  `cParDetTexto` text NOT NULL,
  `cParDetTxtRef` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`nParCodigo`,`nParClase`,`nParItem`,`nParItemS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pardetalle
-- ----------------------------
INSERT INTO `pardetalle` VALUES ('1', '2066', '9', '2067', '45234', 'malla');
INSERT INTO `pardetalle` VALUES ('2', '2066', '9', '2067', '34534', 'paños');
INSERT INTO `pardetalle` VALUES ('3', '2066', '9', '2067', '34566', 'paños');
INSERT INTO `pardetalle` VALUES ('6', '2066', '9', '2067', '200', 'c/paños');
INSERT INTO `pardetalle` VALUES ('7', '2066', '9', '2067', '123', 'paños');
INSERT INTO `pardetalle` VALUES ('8', '2066', '9', '2067', '456456', 'paños');
INSERT INTO `pardetalle` VALUES ('10', '2066', '9', '2067', '34', '56');
INSERT INTO `pardetalle` VALUES ('11', '2066', '9', '2067', '12', '3');
INSERT INTO `pardetalle` VALUES ('13', '2066', '9', '2067', '124', '12');

-- ----------------------------
-- Table structure for pardireccion
-- ----------------------------
DROP TABLE IF EXISTS `pardireccion`;
CREATE TABLE `pardireccion` (
  `nParCodigo` int(11) DEFAULT NULL,
  `nParClase` int(11) DEFAULT NULL,
  `cUbigCodigo` varchar(20) DEFAULT NULL,
  `cParGlosa` text COMMENT 'Observacion o Descripcion',
  `nParDirEstado` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pardireccion
-- ----------------------------
INSERT INTO `pardireccion` VALUES ('2', '2030', 'dis01214', 'DISTRITO - SITIO DESEMBARQUE', '1');
INSERT INTO `pardireccion` VALUES ('3', '2030', '00323', 'DISTRITO - SITIO DESEMBARQUE', '1');
INSERT INTO `pardireccion` VALUES ('4', '2030', 'dis00110', 'DISTRITO - SITIO DESEMBARQUE', '1');
INSERT INTO `pardireccion` VALUES ('5', '2030', 'dis00110', 'DISTRITO - SITIO DESEMBARQUE', '0');
INSERT INTO `pardireccion` VALUES ('6', '2040', 'dis01208', 'DISTRITO - SITIO DESEMBARQUE', '0');
INSERT INTO `pardireccion` VALUES ('7', '2040', '00005-f', 'DISTRITO - SITIO DESEMBARQUE', '0');
INSERT INTO `pardireccion` VALUES ('8', '2040', '00011', 'DISTRITO - SITIO DESEMBARQUE', '1');
INSERT INTO `pardireccion` VALUES ('9', '2040', 'dis01204', 'DISTRITO - SITIO DESEMBARQUE', '1');

-- ----------------------------
-- Table structure for parimagen
-- ----------------------------
DROP TABLE IF EXISTS `parimagen`;
CREATE TABLE `parimagen` (
  `nParCodigo` int(11) NOT NULL,
  `nParClase` int(11) NOT NULL,
  `cParImgRuta` text NOT NULL,
  `nParImgTipo` int(11) NOT NULL,
  `nParImgEstado` int(11) NOT NULL,
  `cGlosa` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parimagen
-- ----------------------------
INSERT INTO `parimagen` VALUES ('1', '1010', 'http://adrisconsulting.com/imagenrecords/img/epicx.png', '1', '1', null);
INSERT INTO `parimagen` VALUES ('1', '1010', 'http://adrisconsulting.com/imagenrecords/img/epicx_detalle.jpg', '2', '1', null);
INSERT INTO `parimagen` VALUES ('2', '1010', 'http://adrisconsulting.com/imagenrecords/img/canon5d.png', '1', '1', null);
INSERT INTO `parimagen` VALUES ('2', '1010', 'http://adrisconsulting.com/imagenrecords/img/canon5d_detalle.jpg', '2', '1', null);

-- ----------------------------
-- Table structure for parparametro
-- ----------------------------
DROP TABLE IF EXISTS `parparametro`;
CREATE TABLE `parparametro` (
  `nParSrcCodigo` int(11) NOT NULL,
  `nParSrcClase` int(11) NOT NULL,
  `nParDstCodigo` int(11) NOT NULL,
  `nParDstClase` int(11) NOT NULL,
  `cValor` varchar(250) DEFAULT NULL,
  `nParEstado` int(11) DEFAULT NULL,
  PRIMARY KEY (`nParSrcCodigo`,`nParSrcClase`,`nParDstCodigo`,`nParDstClase`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parparametro
-- ----------------------------
INSERT INTO `parparametro` VALUES ('100101', '5000', '10010101', '5001', 'xajax_Nuevo_Periodo();', '1');
INSERT INTO `parparametro` VALUES ('100101', '5000', '10010102', '5001', 'xajax_Listar_Periodos(0,20,1,1);', '1');
INSERT INTO `parparametro` VALUES ('100101', '5000', '10010103', '5001', 'xajax_Editar_Periodo(xajax.getFormValues(FrmPrincipal));', '1');
INSERT INTO `parparametro` VALUES ('100101', '5000', '10010104', '5001', 'xajax_Eliminar_Periodo(xajax.getFormValues(FrmPrincipal));', '1');
INSERT INTO `parparametro` VALUES ('100101', '5000', '10010105', '5001', 'xajax_Reportes_Parametro(xajax.getFormValues(FrmPrincipal));', '1');
INSERT INTO `parparametro` VALUES ('100102', '5000', '10010201', '5001', 'xajax_Nuevo_Sector();', '1');
INSERT INTO `parparametro` VALUES ('100102', '5000', '10010202', '5001', 'xajax_Listar_Sectores(0,20,1,1);', '1');
INSERT INTO `parparametro` VALUES ('100102', '5000', '10010203', '5001', 'xajax_Editar_Sector(xajax.getFormValues(FrmPrincipal));', '1');
INSERT INTO `parparametro` VALUES ('100102', '5000', '10010204', '5001', 'xajax_Eliminar_Sector(xajax.getFormValues(FrmPrincipal));', '1');
INSERT INTO `parparametro` VALUES ('100102', '5000', '10010205', '5001', 'xajax_Rpt_Sector_Pdf(xajax.getFormValues(FrmPrincipal));', '1');
INSERT INTO `parparametro` VALUES ('100103', '5000', '10010301', '5001', 'xajax_Nuevo_Parametro();', '1');
INSERT INTO `parparametro` VALUES ('100103', '5000', '10010302', '5001', 'xajax_Configurar_Parametro(1003);', '1');
INSERT INTO `parparametro` VALUES ('100103', '5000', '10010303', '5001', 'xajax_Editar_Parametro(xajax.getFormValues(FrmPrincipal));', '1');
INSERT INTO `parparametro` VALUES ('100103', '5000', '10010304', '5001', 'xajax_Eliminar_Parametro(xajax.getFormValues(FrmPrincipal));', '1');
INSERT INTO `parparametro` VALUES ('100103', '5000', '10010305', '5001', 'xajax_Reportes_Parametro(xajax.getFormValues(FrmPrincipal));', '1');
INSERT INTO `parparametro` VALUES ('100201', '5000', '10020101', '5001', 'xajax_Nuevo_Productor();', '1');
INSERT INTO `parparametro` VALUES ('100201', '5000', '10020102', '5001', 'xajax_Listar_Productor();', '1');
INSERT INTO `parparametro` VALUES ('100201', '5000', '10020103', '5001', 'xajax_Editar_Productor(xajax.getFormValues(FrmPrincipal));', '1');
INSERT INTO `parparametro` VALUES ('100201', '5000', '10020104', '5001', 'xajax_Eliminar_Productor(xajax.getFormValues(FrmPrincipal));', '1');
INSERT INTO `parparametro` VALUES ('100201', '5000', '10020105', '5001', 'xajax_Reporte_Productor(xajax.getFormValues(FrmPrincipal));', '1');

-- ----------------------------
-- Table structure for parparext
-- ----------------------------
DROP TABLE IF EXISTS `parparext`;
CREATE TABLE `parparext` (
  `nIntSrcCodigo` int(11) DEFAULT NULL,
  `nIntSrcClase` int(11) DEFAULT NULL,
  `nIntDstCodigo` int(11) DEFAULT NULL,
  `nIntDstClase` int(11) DEFAULT NULL,
  `nObjCodigo` int(11) DEFAULT NULL,
  `nObjTipo` int(11) DEFAULT NULL,
  `cValor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parparext
-- ----------------------------
INSERT INTO `parparext` VALUES ('1', '2042', '2', '2053', '1', '2055', '# eslora');
INSERT INTO `parparext` VALUES ('1', '2042', '2', '2053', '2', '2055', '# manga');
INSERT INTO `parparext` VALUES ('1', '2042', '2', '2053', '3', '2055', '# puntal');
INSERT INTO `parparext` VALUES ('1', '2042', '3', '2053', '1', '2056', '# bodega');
INSERT INTO `parparext` VALUES ('1', '2042', '3', '2053', '2', '2056', '# trb');
INSERT INTO `parparext` VALUES ('1', '2042', '3', '2053', '3', '2056', '# trn ');
INSERT INTO `parparext` VALUES ('2', '2042', '2', '2053', '1', '2055', '# eslora ');
INSERT INTO `parparext` VALUES ('2', '2042', '2', '2053', '2', '2055', 'manga');
INSERT INTO `parparext` VALUES ('2', '2042', '2', '2053', '3', '2055', 'puntal');
INSERT INTO `parparext` VALUES ('2', '2042', '3', '2053', '1', '2056', 'bodega');
INSERT INTO `parparext` VALUES ('2', '2042', '3', '2053', '2', '2056', 'trb');
INSERT INTO `parparext` VALUES ('2', '2042', '3', '2053', '3', '2056', 'trn');
INSERT INTO `parparext` VALUES ('1', '2042', '6', '2053', '1', '2062', 'sdfasdf');
INSERT INTO `parparext` VALUES ('1', '2042', '6', '2053', '2', '2062', 'asdfads');
INSERT INTO `parparext` VALUES ('1', '2042', '6', '2053', '3', '2062', '1999');
INSERT INTO `parparext` VALUES ('1', '2042', '6', '2053', '4', '2062', '345234');
INSERT INTO `parparext` VALUES ('1', '2042', '5', '2053', '2', '2057', 'CONSTRUCCIÓN');
INSERT INTO `parparext` VALUES ('1', '2042', '7', '2053', '1', '2063', 'asdfasd');
INSERT INTO `parparext` VALUES ('1', '2042', '7', '2053', '2', '2063', '2452345');
INSERT INTO `parparext` VALUES ('1', '2042', '8', '2053', '1', '2058', 'CONTADO');
INSERT INTO `parparext` VALUES ('1', '2042', '10', '2053', '1', '2059', 'NAVEGADOR');
INSERT INTO `parparext` VALUES ('1', '2042', '11', '2053', '1', '2060', 'NO MECANIZADO');
INSERT INTO `parparext` VALUES ('1', '2042', '12', '2053', '1', '2061', 'dfgsdfg');
INSERT INTO `parparext` VALUES ('1', '2042', '12', '2053', '2', '2061', '');
INSERT INTO `parparext` VALUES ('1', '2042', '12', '2053', '3', '2061', 'NUEVO');
INSERT INTO `parparext` VALUES ('2', '2042', '6', '2053', '1', '2062', 'asdfsadf');
INSERT INTO `parparext` VALUES ('2', '2042', '6', '2053', '2', '2062', '345');
INSERT INTO `parparext` VALUES ('2', '2042', '6', '2053', '3', '2062', '34534');
INSERT INTO `parparext` VALUES ('2', '2042', '6', '2053', '4', '2062', '45');
INSERT INTO `parparext` VALUES ('2', '2042', '5', '2053', '1', '2057', 'HERENCIA');
INSERT INTO `parparext` VALUES ('2', '2042', '7', '2053', '1', '2063', '2345');
INSERT INTO `parparext` VALUES ('2', '2042', '7', '2053', '2', '2063', '45');
INSERT INTO `parparext` VALUES ('2', '2042', '8', '2053', '1', '2058', 'CONTADO');
INSERT INTO `parparext` VALUES ('2', '2042', '10', '2053', '1', '2059', 'NAVEGADOR');
INSERT INTO `parparext` VALUES ('2', '2042', '10', '2053', '2', '2059', 'ECOSONDA');
INSERT INTO `parparext` VALUES ('2', '2042', '11', '2053', '1', '2060', 'NO MECANIZADO');
INSERT INTO `parparext` VALUES ('2', '2042', '12', '2053', '1', '2061', '3452345');
INSERT INTO `parparext` VALUES ('2', '2042', '12', '2053', '2', '2061', '');
INSERT INTO `parparext` VALUES ('2', '2042', '12', '2053', '3', '2061', 'NUEVO');
INSERT INTO `parparext` VALUES ('2', '2042', '6', '2053', '1', '2062', 'asdfsadf');
INSERT INTO `parparext` VALUES ('2', '2042', '6', '2053', '2', '2062', '345');
INSERT INTO `parparext` VALUES ('2', '2042', '6', '2053', '3', '2062', '34534');
INSERT INTO `parparext` VALUES ('2', '2042', '6', '2053', '4', '2062', '45');
INSERT INTO `parparext` VALUES ('2', '2042', '5', '2053', '1', '2057', 'HERENCIA');
INSERT INTO `parparext` VALUES ('2', '2042', '7', '2053', '1', '2063', '2345');
INSERT INTO `parparext` VALUES ('2', '2042', '7', '2053', '2', '2063', '45');
INSERT INTO `parparext` VALUES ('2', '2042', '8', '2053', '1', '2058', 'CONTADO');
INSERT INTO `parparext` VALUES ('2', '2042', '10', '2053', '1', '2059', 'NAVEGADOR');
INSERT INTO `parparext` VALUES ('2', '2042', '10', '2053', '2', '2059', 'ECOSONDA');
INSERT INTO `parparext` VALUES ('2', '2042', '11', '2053', '1', '2060', 'NO MECANIZADO');
INSERT INTO `parparext` VALUES ('2', '2042', '12', '2053', '1', '2061', '3452345');
INSERT INTO `parparext` VALUES ('2', '2042', '12', '2053', '2', '2061', '');
INSERT INTO `parparext` VALUES ('2', '2042', '12', '2053', '3', '2061', 'NUEVO');
INSERT INTO `parparext` VALUES ('3', '2042', '2', '2053', '1', '2055', '9.20');
INSERT INTO `parparext` VALUES ('3', '2042', '2', '2053', '2', '2055', '3.35');
INSERT INTO `parparext` VALUES ('3', '2042', '2', '2053', '3', '2055', '1.45');
INSERT INTO `parparext` VALUES ('3', '2042', '3', '2053', '1', '2056', '10');
INSERT INTO `parparext` VALUES ('3', '2042', '3', '2053', '2', '2056', '');
INSERT INTO `parparext` VALUES ('3', '2042', '3', '2053', '3', '2056', '6.42');
INSERT INTO `parparext` VALUES ('3', '2042', '6', '2053', '1', '2062', '1993');
INSERT INTO `parparext` VALUES ('3', '2042', '6', '2053', '2', '2062', '22');
INSERT INTO `parparext` VALUES ('3', '2042', '6', '2053', '3', '2062', '1993');
INSERT INTO `parparext` VALUES ('3', '2042', '6', '2053', '4', '2062', '15');
INSERT INTO `parparext` VALUES ('3', '2042', '5', '2053', '2', '2057', 'CONSTRUCCIÓN');
INSERT INTO `parparext` VALUES ('3', '2042', '7', '2053', '1', '2063', '35000');
INSERT INTO `parparext` VALUES ('3', '2042', '7', '2053', '2', '2063', '18000');
INSERT INTO `parparext` VALUES ('3', '2042', '8', '2053', '2', '2058', 'por partes ');
INSERT INTO `parparext` VALUES ('3', '2042', '10', '2053', '1', '2059', 'NAVEGADOR');
INSERT INTO `parparext` VALUES ('3', '2042', '10', '2053', '2', '2059', 'ECOSONDA');
INSERT INTO `parparext` VALUES ('3', '2042', '10', '2053', '3', '2059', 'RADIO');
INSERT INTO `parparext` VALUES ('3', '2042', '11', '2053', '3', '2060', 'FUERA DE BORDA ');
INSERT INTO `parparext` VALUES ('3', '2042', '12', '2053', '1', '2061', 'mitsubishi');
INSERT INTO `parparext` VALUES ('3', '2042', '12', '2053', '2', '2061', '140');
INSERT INTO `parparext` VALUES ('3', '2042', '12', '2053', '3', '2061', 'NUEVO');
INSERT INTO `parparext` VALUES ('3', '2042', '6', '2053', '1', '2062', '1993');
INSERT INTO `parparext` VALUES ('3', '2042', '6', '2053', '2', '2062', '22');
INSERT INTO `parparext` VALUES ('3', '2042', '6', '2053', '3', '2062', '1993');
INSERT INTO `parparext` VALUES ('3', '2042', '6', '2053', '4', '2062', '15');
INSERT INTO `parparext` VALUES ('3', '2042', '5', '2053', '2', '2057', 'CONSTRUCCIÓN');
INSERT INTO `parparext` VALUES ('3', '2042', '7', '2053', '1', '2063', '35000');
INSERT INTO `parparext` VALUES ('3', '2042', '7', '2053', '2', '2063', '18000');
INSERT INTO `parparext` VALUES ('3', '2042', '8', '2053', '2', '2058', 'por partes ');
INSERT INTO `parparext` VALUES ('3', '2042', '10', '2053', '1', '2059', 'NAVEGADOR');
INSERT INTO `parparext` VALUES ('3', '2042', '10', '2053', '2', '2059', 'ECOSONDA');
INSERT INTO `parparext` VALUES ('3', '2042', '10', '2053', '3', '2059', 'RADIO');
INSERT INTO `parparext` VALUES ('3', '2042', '11', '2053', '3', '2060', 'FUERA DE BORDA ');
INSERT INTO `parparext` VALUES ('3', '2042', '12', '2053', '1', '2061', 'mitsubishi');
INSERT INTO `parparext` VALUES ('3', '2042', '12', '2053', '2', '2061', '140');
INSERT INTO `parparext` VALUES ('3', '2042', '12', '2053', '3', '2061', 'NUEVO');
INSERT INTO `parparext` VALUES ('4', '2042', '2', '2053', '1', '2055', '2.45');
INSERT INTO `parparext` VALUES ('4', '2042', '2', '2053', '2', '2055', '23.6');
INSERT INTO `parparext` VALUES ('4', '2042', '2', '2053', '3', '2055', '5.4');
INSERT INTO `parparext` VALUES ('4', '2042', '3', '2053', '1', '2056', '6.5');
INSERT INTO `parparext` VALUES ('4', '2042', '3', '2053', '2', '2056', '5.6');
INSERT INTO `parparext` VALUES ('4', '2042', '3', '2053', '3', '2056', '45.4');
INSERT INTO `parparext` VALUES ('4', '2042', '6', '2053', '1', '2062', '');
INSERT INTO `parparext` VALUES ('4', '2042', '6', '2053', '2', '2062', '1995');
INSERT INTO `parparext` VALUES ('4', '2042', '6', '2053', '3', '2062', 'we');
INSERT INTO `parparext` VALUES ('4', '2042', '6', '2053', '4', '2062', '');
INSERT INTO `parparext` VALUES ('4', '2042', '5', '2053', '1', '2057', 'HERENCIA');
INSERT INTO `parparext` VALUES ('4', '2042', '7', '2053', '1', '2063', '345');
INSERT INTO `parparext` VALUES ('4', '2042', '7', '2053', '2', '2063', 'rt');
INSERT INTO `parparext` VALUES ('4', '2042', '8', '2053', '1', '2058', 'CONTADO');
INSERT INTO `parparext` VALUES ('4', '2042', '10', '2053', '1', '2059', 'NAVEGADOR');
INSERT INTO `parparext` VALUES ('4', '2042', '10', '2053', '2', '2059', 'ECOSONDA');
INSERT INTO `parparext` VALUES ('4', '2042', '10', '2053', '3', '2059', 'RADIO');
INSERT INTO `parparext` VALUES ('4', '2042', '11', '2053', '1', '2060', 'NO MECANIZADO');
INSERT INTO `parparext` VALUES ('4', '2042', '12', '2053', '1', '2061', 'toyota');
INSERT INTO `parparext` VALUES ('4', '2042', '12', '2053', '2', '2061', 'erre');
INSERT INTO `parparext` VALUES ('4', '2042', '12', '2053', '3', '2061', 'USADO');
INSERT INTO `parparext` VALUES ('5', '2042', '2', '2053', '1', '2055', '3.4');
INSERT INTO `parparext` VALUES ('5', '2042', '2', '2053', '2', '2055', '6.6');
INSERT INTO `parparext` VALUES ('5', '2042', '2', '2053', '3', '2055', '4.6');
INSERT INTO `parparext` VALUES ('5', '2042', '3', '2053', '1', '2056', '5.4');
INSERT INTO `parparext` VALUES ('5', '2042', '3', '2053', '2', '2056', '5.6');
INSERT INTO `parparext` VALUES ('5', '2042', '3', '2053', '3', '2056', '75');
INSERT INTO `parparext` VALUES ('4', '2042', '6', '2053', '1', '2062', '');
INSERT INTO `parparext` VALUES ('4', '2042', '6', '2053', '2', '2062', '1995');
INSERT INTO `parparext` VALUES ('4', '2042', '6', '2053', '3', '2062', 'we');
INSERT INTO `parparext` VALUES ('4', '2042', '6', '2053', '4', '2062', '');
INSERT INTO `parparext` VALUES ('4', '2042', '5', '2053', '1', '2057', 'HERENCIA');
INSERT INTO `parparext` VALUES ('4', '2042', '7', '2053', '1', '2063', '345');
INSERT INTO `parparext` VALUES ('4', '2042', '7', '2053', '2', '2063', 'rt');
INSERT INTO `parparext` VALUES ('4', '2042', '8', '2053', '1', '2058', 'CONTADO');
INSERT INTO `parparext` VALUES ('4', '2042', '18', '2053', '1', '2083', 'SI');
INSERT INTO `parparext` VALUES ('4', '2042', '10', '2053', '1', '2059', 'NAVEGADOR');
INSERT INTO `parparext` VALUES ('4', '2042', '10', '2053', '2', '2059', 'ECOSONDA');
INSERT INTO `parparext` VALUES ('4', '2042', '10', '2053', '3', '2059', 'RADIO');
INSERT INTO `parparext` VALUES ('4', '2042', '11', '2053', '1', '2060', 'NO MECANIZADO');
INSERT INTO `parparext` VALUES ('4', '2042', '12', '2053', '1', '2061', 'toyota');
INSERT INTO `parparext` VALUES ('4', '2042', '12', '2053', '2', '2061', 'erre');
INSERT INTO `parparext` VALUES ('4', '2042', '12', '2053', '3', '2061', 'USADO');
INSERT INTO `parparext` VALUES ('5', '2042', '6', '2053', '1', '2062', '');
INSERT INTO `parparext` VALUES ('5', '2042', '6', '2053', '2', '2062', '23');
INSERT INTO `parparext` VALUES ('5', '2042', '6', '2053', '3', '2062', '1900');
INSERT INTO `parparext` VALUES ('5', '2042', '6', '2053', '4', '2062', '20');
INSERT INTO `parparext` VALUES ('5', '2042', '5', '2053', '1', '2057', 'HERENCIA');
INSERT INTO `parparext` VALUES ('5', '2042', '7', '2053', '1', '2063', '434');
INSERT INTO `parparext` VALUES ('5', '2042', '7', '2053', '2', '2063', '2000');
INSERT INTO `parparext` VALUES ('5', '2042', '8', '2053', '2', '2058', '');
INSERT INTO `parparext` VALUES ('5', '2042', '10', '2053', '1', '2059', 'NAVEGADOR');
INSERT INTO `parparext` VALUES ('5', '2042', '10', '2053', '2', '2059', 'ECOSONDA');
INSERT INTO `parparext` VALUES ('5', '2042', '11', '2053', '2', '2060', 'MECANIZADO INTERIOR');
INSERT INTO `parparext` VALUES ('5', '2042', '12', '2053', '1', '2061', 'toyota');
INSERT INTO `parparext` VALUES ('5', '2042', '12', '2053', '2', '2061', '');
INSERT INTO `parparext` VALUES ('5', '2042', '12', '2053', '3', '2061', 'USADO');
INSERT INTO `parparext` VALUES ('6', '2042', '2', '2053', '1', '2055', '12');
INSERT INTO `parparext` VALUES ('6', '2042', '2', '2053', '2', '2055', '3');
INSERT INTO `parparext` VALUES ('6', '2042', '2', '2053', '3', '2055', '4');
INSERT INTO `parparext` VALUES ('6', '2042', '3', '2053', '1', '2056', '5');
INSERT INTO `parparext` VALUES ('6', '2042', '3', '2053', '2', '2056', '5');
INSERT INTO `parparext` VALUES ('6', '2042', '3', '2053', '3', '2056', '4');
INSERT INTO `parparext` VALUES ('6', '2042', '6', '2053', '1', '2062', '');
INSERT INTO `parparext` VALUES ('6', '2042', '6', '2053', '2', '2062', '2000|');
INSERT INTO `parparext` VALUES ('6', '2042', '6', '2053', '3', '2062', '1995');
INSERT INTO `parparext` VALUES ('6', '2042', '6', '2053', '4', '2062', '10');
INSERT INTO `parparext` VALUES ('6', '2042', '5', '2053', '2', '2057', 'CONSTRUCCIÓN');
INSERT INTO `parparext` VALUES ('6', '2042', '7', '2053', '1', '2063', '7000');
INSERT INTO `parparext` VALUES ('6', '2042', '7', '2053', '2', '2063', '32');
INSERT INTO `parparext` VALUES ('6', '2042', '8', '2053', '1', '2058', 'CONTADO');
INSERT INTO `parparext` VALUES ('6', '2042', '18', '2053', '1', '2083', 'SI');
INSERT INTO `parparext` VALUES ('6', '2042', '10', '2053', '1', '2059', 'NAVEGADOR');
INSERT INTO `parparext` VALUES ('6', '2042', '10', '2053', '2', '2059', 'ECOSONDA');
INSERT INTO `parparext` VALUES ('6', '2042', '12', '2053', '1', '2061', 'nissan');
INSERT INTO `parparext` VALUES ('6', '2042', '12', '2053', '2', '2061', '45');
INSERT INTO `parparext` VALUES ('6', '2042', '12', '2053', '3', '2061', 'USADO');
INSERT INTO `parparext` VALUES ('7', '2042', '2', '2053', '1', '2055', '45');
INSERT INTO `parparext` VALUES ('7', '2042', '2', '2053', '2', '2055', '4');
INSERT INTO `parparext` VALUES ('7', '2042', '2', '2053', '3', '2055', '2');
INSERT INTO `parparext` VALUES ('7', '2042', '3', '2053', '1', '2056', '78');
INSERT INTO `parparext` VALUES ('7', '2042', '3', '2053', '2', '2056', '98');
INSERT INTO `parparext` VALUES ('7', '2042', '3', '2053', '3', '2056', '0');
INSERT INTO `parparext` VALUES ('7', '2042', '4', '2053', '1', '2084', 'MATERIAL DE CONSTRUCCION');
INSERT INTO `parparext` VALUES ('7', '2042', '6', '2053', '1', '2062', '1900');
INSERT INTO `parparext` VALUES ('7', '2042', '6', '2053', '2', '2062', '2000');
INSERT INTO `parparext` VALUES ('7', '2042', '6', '2053', '3', '2062', '1990');
INSERT INTO `parparext` VALUES ('7', '2042', '6', '2053', '4', '2062', '1243');
INSERT INTO `parparext` VALUES ('7', '2042', '5', '2053', '1', '2057', 'HERENCIA');
INSERT INTO `parparext` VALUES ('7', '2042', '7', '2053', '1', '2063', '34533');
INSERT INTO `parparext` VALUES ('7', '2042', '7', '2053', '2', '2063', '123434');
INSERT INTO `parparext` VALUES ('7', '2042', '8', '2053', '1', '2058', 'CONTADO');
INSERT INTO `parparext` VALUES ('7', '2042', '18', '2053', '2', '2083', 'NO');
INSERT INTO `parparext` VALUES ('7', '2042', '10', '2053', '1', '2059', 'NAVEGADOR');
INSERT INTO `parparext` VALUES ('7', '2042', '10', '2053', '2', '2059', 'ECOSONDA');
INSERT INTO `parparext` VALUES ('7', '2042', '10', '2053', '3', '2059', 'RADIO');
INSERT INTO `parparext` VALUES ('7', '2042', '11', '2053', '1', '2060', 'NO MECANIZADO');
INSERT INTO `parparext` VALUES ('7', '2042', '12', '2053', '1', '2061', 'toyota ');
INSERT INTO `parparext` VALUES ('7', '2042', '12', '2053', '2', '2061', '');
INSERT INTO `parparext` VALUES ('7', '2042', '12', '2053', '3', '2061', 'NUEVO');
INSERT INTO `parparext` VALUES ('8', '2042', '2', '2053', '1', '2055', '2.5');
INSERT INTO `parparext` VALUES ('8', '2042', '2', '2053', '2', '2055', '4');
INSERT INTO `parparext` VALUES ('8', '2042', '2', '2053', '3', '2055', '5');
INSERT INTO `parparext` VALUES ('8', '2042', '3', '2053', '1', '2056', '6');
INSERT INTO `parparext` VALUES ('8', '2042', '3', '2053', '2', '2056', '6');
INSERT INTO `parparext` VALUES ('8', '2042', '3', '2053', '3', '2056', '7');
INSERT INTO `parparext` VALUES ('9', '2042', '2', '2053', '1', '2055', '12');
INSERT INTO `parparext` VALUES ('9', '2042', '2', '2053', '2', '2055', '6.4');
INSERT INTO `parparext` VALUES ('9', '2042', '2', '2053', '3', '2055', '4.3');
INSERT INTO `parparext` VALUES ('9', '2042', '3', '2053', '1', '2056', '34');
INSERT INTO `parparext` VALUES ('9', '2042', '3', '2053', '2', '2056', '0.0');
INSERT INTO `parparext` VALUES ('9', '2042', '3', '2053', '3', '2056', '3.4');
INSERT INTO `parparext` VALUES ('10', '2042', '2', '2053', '1', '2055', '34.4');
INSERT INTO `parparext` VALUES ('10', '2042', '2', '2053', '2', '2055', '5.42');
INSERT INTO `parparext` VALUES ('10', '2042', '2', '2053', '3', '2055', '23.4');
INSERT INTO `parparext` VALUES ('10', '2042', '3', '2053', '1', '2056', '5.53');
INSERT INTO `parparext` VALUES ('10', '2042', '3', '2053', '2', '2056', '3.4');
INSERT INTO `parparext` VALUES ('10', '2042', '3', '2053', '3', '2056', '.34');
INSERT INTO `parparext` VALUES ('11', '2042', '2', '2053', '1', '2055', '34.4');
INSERT INTO `parparext` VALUES ('11', '2042', '2', '2053', '2', '2055', '5.42');
INSERT INTO `parparext` VALUES ('11', '2042', '2', '2053', '3', '2055', '23.4');
INSERT INTO `parparext` VALUES ('11', '2042', '3', '2053', '1', '2056', '5.53');
INSERT INTO `parparext` VALUES ('11', '2042', '3', '2053', '2', '2056', '3.4');
INSERT INTO `parparext` VALUES ('11', '2042', '3', '2053', '3', '2056', '.34');
INSERT INTO `parparext` VALUES ('12', '2042', '2', '2053', '1', '2055', '3.41');
INSERT INTO `parparext` VALUES ('12', '2042', '2', '2053', '2', '2055', '4.32');
INSERT INTO `parparext` VALUES ('12', '2042', '2', '2053', '3', '2055', '4.43');
INSERT INTO `parparext` VALUES ('12', '2042', '3', '2053', '1', '2056', '3.54');
INSERT INTO `parparext` VALUES ('12', '2042', '3', '2053', '2', '2056', '2.43');
INSERT INTO `parparext` VALUES ('12', '2042', '3', '2053', '3', '2056', '3,5');
INSERT INTO `parparext` VALUES ('13', '2042', '2', '2053', '1', '2055', '3.41');
INSERT INTO `parparext` VALUES ('13', '2042', '2', '2053', '2', '2055', '4.32');
INSERT INTO `parparext` VALUES ('13', '2042', '2', '2053', '3', '2055', '4.43');
INSERT INTO `parparext` VALUES ('13', '2042', '3', '2053', '1', '2056', '3.54');
INSERT INTO `parparext` VALUES ('13', '2042', '3', '2053', '2', '2056', '2.43');
INSERT INTO `parparext` VALUES ('13', '2042', '3', '2053', '3', '2056', '3,5');
INSERT INTO `parparext` VALUES ('14', '2042', '2', '2053', '1', '2055', '3.41');
INSERT INTO `parparext` VALUES ('14', '2042', '2', '2053', '2', '2055', '4.32');
INSERT INTO `parparext` VALUES ('14', '2042', '2', '2053', '3', '2055', '4.43');
INSERT INTO `parparext` VALUES ('14', '2042', '3', '2053', '1', '2056', '3.54');
INSERT INTO `parparext` VALUES ('14', '2042', '3', '2053', '2', '2056', '2.43');
INSERT INTO `parparext` VALUES ('14', '2042', '3', '2053', '3', '2056', '3,5');
INSERT INTO `parparext` VALUES ('15', '2042', '2', '2053', '1', '2055', '3.41');
INSERT INTO `parparext` VALUES ('15', '2042', '2', '2053', '2', '2055', '4.32');
INSERT INTO `parparext` VALUES ('15', '2042', '2', '2053', '3', '2055', '4.43');
INSERT INTO `parparext` VALUES ('15', '2042', '3', '2053', '1', '2056', '3.54');
INSERT INTO `parparext` VALUES ('15', '2042', '3', '2053', '2', '2056', '2.43');
INSERT INTO `parparext` VALUES ('15', '2042', '3', '2053', '3', '2056', '3,5');
INSERT INTO `parparext` VALUES ('16', '2042', '2', '2053', '1', '2055', 'DSD');
INSERT INTO `parparext` VALUES ('16', '2042', '2', '2053', '2', '2055', 'SDSD');
INSERT INTO `parparext` VALUES ('16', '2042', '2', '2053', '3', '2055', 'SDSD');
INSERT INTO `parparext` VALUES ('16', '2042', '3', '2053', '1', '2056', 'SD');
INSERT INTO `parparext` VALUES ('16', '2042', '3', '2053', '2', '2056', 'SD');
INSERT INTO `parparext` VALUES ('16', '2042', '3', '2053', '3', '2056', 'SD');
INSERT INTO `parparext` VALUES ('17', '2042', '2', '2053', '1', '2055', 'DSD');
INSERT INTO `parparext` VALUES ('17', '2042', '2', '2053', '2', '2055', 'SDSD');
INSERT INTO `parparext` VALUES ('17', '2042', '2', '2053', '3', '2055', 'SDSD');
INSERT INTO `parparext` VALUES ('17', '2042', '3', '2053', '1', '2056', 'SD');
INSERT INTO `parparext` VALUES ('17', '2042', '3', '2053', '2', '2056', 'SD');
INSERT INTO `parparext` VALUES ('17', '2042', '3', '2053', '3', '2056', 'SD');
INSERT INTO `parparext` VALUES ('18', '2042', '2', '2053', '1', '2055', '123');
INSERT INTO `parparext` VALUES ('18', '2042', '2', '2053', '2', '2055', '345');
INSERT INTO `parparext` VALUES ('18', '2042', '2', '2053', '3', '2055', '345');
INSERT INTO `parparext` VALUES ('18', '2042', '3', '2053', '1', '2056', '345');
INSERT INTO `parparext` VALUES ('18', '2042', '3', '2053', '2', '2056', '5');
INSERT INTO `parparext` VALUES ('18', '2042', '3', '2053', '3', '2056', '534543');
INSERT INTO `parparext` VALUES ('19', '2042', '2', '2053', '1', '2055', '3');
INSERT INTO `parparext` VALUES ('19', '2042', '2', '2053', '2', '2055', '3');
INSERT INTO `parparext` VALUES ('19', '2042', '2', '2053', '3', '2055', '4');
INSERT INTO `parparext` VALUES ('19', '2042', '3', '2053', '1', '2056', '3');
INSERT INTO `parparext` VALUES ('19', '2042', '3', '2053', '2', '2056', '4');
INSERT INTO `parparext` VALUES ('19', '2042', '3', '2053', '3', '2056', '5');
INSERT INTO `parparext` VALUES ('14', '2066', '1', '2065', '7', '2040', 'LUGAR DE ZARPE');
INSERT INTO `parparext` VALUES ('14', '2066', '6', '2065', '7', '2040', 'LUGAR DE ARRIBO');
INSERT INTO `parparext` VALUES ('15', '2066', '1', '2065', '7', '2040', 'LUGAR DE ZARPE');
INSERT INTO `parparext` VALUES ('15', '2066', '6', '2065', '7', '2040', 'LUGAR DE ARRIBO');
INSERT INTO `parparext` VALUES ('16', '2066', '1', '2065', '9', '2040', 'LUGAR DE ZARPE');
INSERT INTO `parparext` VALUES ('16', '2066', '6', '2065', '6', '2040', 'LUGAR DE ARRIBO');
INSERT INTO `parparext` VALUES ('17', '2066', '1', '2065', '5', '2040', 'LUGAR DE ZARPE');
INSERT INTO `parparext` VALUES ('17', '2066', '6', '2065', '7', '2040', 'LUGAR DE ARRIBO');
INSERT INTO `parparext` VALUES ('59', '2066', '1', '2065', '5', '2040', 'LUGAR DE ZARPE');
INSERT INTO `parparext` VALUES ('59', '2066', '6', '2065', '7', '2040', 'LUGAR DE ARRIBO');
INSERT INTO `parparext` VALUES ('13', '2042', '2', '2053', '1', '2055', '56');
INSERT INTO `parparext` VALUES ('13', '2042', '2', '2053', '2', '2055', '678');
INSERT INTO `parparext` VALUES ('13', '2042', '2', '2053', '3', '2055', '678');
INSERT INTO `parparext` VALUES ('13', '2042', '3', '2053', '1', '2056', '678');
INSERT INTO `parparext` VALUES ('13', '2042', '3', '2053', '2', '2056', '678');
INSERT INTO `parparext` VALUES ('13', '2042', '3', '2053', '3', '2056', '678');
INSERT INTO `parparext` VALUES ('14', '2042', '2', '2053', '1', '2055', '');
INSERT INTO `parparext` VALUES ('14', '2042', '2', '2053', '2', '2055', '');
INSERT INTO `parparext` VALUES ('14', '2042', '2', '2053', '3', '2055', '');
INSERT INTO `parparext` VALUES ('14', '2042', '3', '2053', '1', '2056', '');
INSERT INTO `parparext` VALUES ('14', '2042', '3', '2053', '2', '2056', '');
INSERT INTO `parparext` VALUES ('14', '2042', '3', '2053', '3', '2056', '');
INSERT INTO `parparext` VALUES ('15', '2042', '2', '2053', '1', '2055', '234');
INSERT INTO `parparext` VALUES ('15', '2042', '2', '2053', '2', '2055', '34');
INSERT INTO `parparext` VALUES ('15', '2042', '2', '2053', '3', '2055', '34');
INSERT INTO `parparext` VALUES ('15', '2042', '3', '2053', '1', '2056', '345');
INSERT INTO `parparext` VALUES ('15', '2042', '3', '2053', '2', '2056', '345');
INSERT INTO `parparext` VALUES ('15', '2042', '3', '2053', '3', '2056', '345');
INSERT INTO `parparext` VALUES ('16', '2042', '2', '2053', '1', '2055', '435');
INSERT INTO `parparext` VALUES ('16', '2042', '2', '2053', '2', '2055', '345');
INSERT INTO `parparext` VALUES ('16', '2042', '2', '2053', '3', '2055', '345');
INSERT INTO `parparext` VALUES ('16', '2042', '3', '2053', '1', '2056', '3453');
INSERT INTO `parparext` VALUES ('16', '2042', '3', '2053', '2', '2056', '345');
INSERT INTO `parparext` VALUES ('16', '2042', '3', '2053', '3', '2056', '345');
INSERT INTO `parparext` VALUES ('17', '2042', '2', '2053', '1', '2055', '345');
INSERT INTO `parparext` VALUES ('17', '2042', '2', '2053', '2', '2055', '453');
INSERT INTO `parparext` VALUES ('17', '2042', '2', '2053', '3', '2055', '534');
INSERT INTO `parparext` VALUES ('17', '2042', '3', '2053', '1', '2056', '45');
INSERT INTO `parparext` VALUES ('17', '2042', '3', '2053', '2', '2056', '45');
INSERT INTO `parparext` VALUES ('17', '2042', '3', '2053', '3', '2056', '345');
INSERT INTO `parparext` VALUES ('18', '2042', '2', '2053', '1', '2055', '134');
INSERT INTO `parparext` VALUES ('18', '2042', '2', '2053', '2', '2055', '43');
INSERT INTO `parparext` VALUES ('18', '2042', '2', '2053', '3', '2055', '43');
INSERT INTO `parparext` VALUES ('18', '2042', '3', '2053', '1', '2056', '54');
INSERT INTO `parparext` VALUES ('18', '2042', '3', '2053', '2', '2056', '56');
INSERT INTO `parparext` VALUES ('18', '2042', '3', '2053', '3', '2056', '56');
INSERT INTO `parparext` VALUES ('19', '2042', '2', '2053', '1', '2055', '4');
INSERT INTO `parparext` VALUES ('19', '2042', '2', '2053', '2', '2055', '3');
INSERT INTO `parparext` VALUES ('19', '2042', '2', '2053', '3', '2055', '1.20');
INSERT INTO `parparext` VALUES ('19', '2042', '3', '2053', '1', '2056', '0');
INSERT INTO `parparext` VALUES ('19', '2042', '3', '2053', '2', '2056', '0');
INSERT INTO `parparext` VALUES ('19', '2042', '3', '2053', '3', '2056', '0');
INSERT INTO `parparext` VALUES ('79', '2066', '1', '2065', '7', '2040', 'LUGAR DE ZARPE');
INSERT INTO `parparext` VALUES ('79', '2066', '6', '2065', '7', '2040', 'LUGAR DE ARRIBO');
INSERT INTO `parparext` VALUES ('80', '2066', '1', '2065', '4', '2040', 'LUGAR DE ZARPE');
INSERT INTO `parparext` VALUES ('80', '2066', '6', '2065', '7', '2040', 'LUGAR DE ARRIBO');
INSERT INTO `parparext` VALUES ('80', '2066', '1', '2203', '4', '2044', 'ZONA DE PESCA');
INSERT INTO `parparext` VALUES ('81', '2066', '1', '2065', '7', '2040', 'LUGAR DE ZARPE');
INSERT INTO `parparext` VALUES ('81', '2066', '6', '2065', '5', '2040', 'LUGAR DE ARRIBO');
INSERT INTO `parparext` VALUES ('81', '2066', '1', '2203', '9', '2044', 'ZONA DE PESCA');
INSERT INTO `parparext` VALUES ('82', '2066', '1', '2065', '5', '2040', 'LUGAR DE ZARPE');
INSERT INTO `parparext` VALUES ('82', '2066', '6', '2065', '9', '2040', 'LUGAR DE ARRIBO');
INSERT INTO `parparext` VALUES ('82', '2066', '1', '2203', '11', '2044', 'ZONA DE PESCA');

-- ----------------------------
-- Table structure for parserporpersona
-- ----------------------------
DROP TABLE IF EXISTS `parserporpersona`;
CREATE TABLE `parserporpersona` (
  `nParSerCodigo` int(11) NOT NULL AUTO_INCREMENT,
  `cPerCodigo` varchar(20) NOT NULL,
  `dParSerFecha` datetime NOT NULL,
  `nParSrcCodigo` int(11) NOT NULL,
  `nParSrcClase` int(11) NOT NULL,
  `nParDstCodigo` int(11) NOT NULL,
  `nParDstClase` int(11) NOT NULL,
  `nParSerPorcentaje` int(11) NOT NULL,
  `nParSerEstado` int(11) NOT NULL,
  PRIMARY KEY (`nParSerCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parserporpersona
-- ----------------------------

-- ----------------------------
-- Table structure for percontacto
-- ----------------------------
DROP TABLE IF EXISTS `percontacto`;
CREATE TABLE `percontacto` (
  `cPerJurCodigo` varchar(20) NOT NULL,
  `cPerCodigo` varchar(20) NOT NULL,
  `nPerConEstado` int(11) NOT NULL,
  `cPerObservacion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of percontacto
-- ----------------------------

-- ----------------------------
-- Table structure for percuenta
-- ----------------------------
DROP TABLE IF EXISTS `percuenta`;
CREATE TABLE `percuenta` (
  `nPerCtaCodigo` int(11) NOT NULL AUTO_INCREMENT,
  `cPerCodigo` varchar(20) NOT NULL,
  `cNroCuenta` varchar(20) NOT NULL,
  `nPerCtaTipo` int(11) NOT NULL,
  `cPerJurCodigo` varchar(20) NOT NULL,
  `nMonCodigo` int(11) NOT NULL,
  `nPerCtaEstado` int(11) NOT NULL,
  PRIMARY KEY (`nPerCtaCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of percuenta
-- ----------------------------

-- ----------------------------
-- Table structure for perdireccion
-- ----------------------------
DROP TABLE IF EXISTS `perdireccion`;
CREATE TABLE `perdireccion` (
  `cPerCodigo` varchar(20) NOT NULL COMMENT 'Codigo de la Persona a la que le pertenece esta direccion',
  `nUbiCodigo` int(11) NOT NULL COMMENT 'Codigo del ubigeo de esta direccion',
  `nPerDirTipo` int(11) NOT NULL COMMENT 'Codigo del tipo de la direccion (Casa - trabajo)',
  `nPerRelTipo` int(11) DEFAULT NULL,
  `cPerDirDescripcion` varchar(500) NOT NULL COMMENT 'Descripcion de la direccion',
  `cPerDirGlosa` varchar(500) DEFAULT NULL,
  `nPerDirEstado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Se registra la diferentes direcciones de una persona';

-- ----------------------------
-- Records of perdireccion
-- ----------------------------
INSERT INTO `perdireccion` VALUES ('1', '0', '1', '1', 'DIEGO FERRE MONSEFU', 'USUARIO', '1');
INSERT INTO `perdireccion` VALUES ('100000100001', '0', '1', '1', 'La Victoria #45', 'Direccion Empresa', '1');

-- ----------------------------
-- Table structure for perdocumento
-- ----------------------------
DROP TABLE IF EXISTS `perdocumento`;
CREATE TABLE `perdocumento` (
  `cPerCodigo` varchar(20) NOT NULL COMMENT 'Codigo de la Persona a la que le pertenece este documento. ',
  `nPerDocTipo` int(11) NOT NULL COMMENT 'Codigo del tipo de documento',
  `cPerDocNumero` varchar(250) NOT NULL COMMENT 'Numero del documento',
  `dPerDocCaducidad` date NOT NULL,
  `nPerDocCategoria` int(11) DEFAULT NULL,
  `nPerDocEstado` int(11) NOT NULL DEFAULT '1',
  UNIQUE KEY `idx_cPerDocNumero` (`cPerDocNumero`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Se registra los diferentes documentos de una persona ';

-- ----------------------------
-- Records of perdocumento
-- ----------------------------
INSERT INTO `perdocumento` VALUES ('1', '1', '23524656', '0000-00-00', '0', '1');
INSERT INTO `perdocumento` VALUES ('100000100001', '2', '85296314785', '0000-00-00', '0', '1');

-- ----------------------------
-- Table structure for perdomicilio
-- ----------------------------
DROP TABLE IF EXISTS `perdomicilio`;
CREATE TABLE `perdomicilio` (
  `cPerCodigo` varchar(20) NOT NULL,
  `nParCodigo` int(11) NOT NULL,
  `nParClase` int(11) NOT NULL,
  `cPerDomValor` varchar(250) DEFAULT NULL,
  `dPerDomFecha` date DEFAULT NULL,
  `nPerDomEstado` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of perdomicilio
-- ----------------------------
INSERT INTO `perdomicilio` VALUES ('1', '1', '2070', 'VIVIENDA-UBICACÓN-ÁREA URBANA', '0000-00-00', '1');
INSERT INTO `perdomicilio` VALUES ('100000100001', '1', '2070', 'Los tautas #45', null, '1');

-- ----------------------------
-- Table structure for pergrado
-- ----------------------------
DROP TABLE IF EXISTS `pergrado`;
CREATE TABLE `pergrado` (
  `cPerCodigo` varchar(20) NOT NULL DEFAULT '',
  `nParCodigo` int(11) NOT NULL DEFAULT '0',
  `nParClase` int(11) NOT NULL DEFAULT '0',
  `nPerGraValor` int(11) NOT NULL,
  `cPerGraGlosa` text,
  `dPerGraGlosa` date DEFAULT NULL,
  `nPerGraEstado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pergrado
-- ----------------------------

-- ----------------------------
-- Table structure for perimagen
-- ----------------------------
DROP TABLE IF EXISTS `perimagen`;
CREATE TABLE `perimagen` (
  `cPerCodigo` varchar(50) NOT NULL,
  `cPerRuta` varchar(50) NOT NULL,
  `nPerTipo` int(11) NOT NULL,
  `nPerEstado` int(11) NOT NULL,
  PRIMARY KEY (`cPerCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of perimagen
-- ----------------------------
INSERT INTO `perimagen` VALUES ('1', 'default.png', '1', '1');
INSERT INTO `perimagen` VALUES ('100000100001', 'default.png', '2', '1');

-- ----------------------------
-- Table structure for periodo
-- ----------------------------
DROP TABLE IF EXISTS `periodo`;
CREATE TABLE `periodo` (
  `nPrdCodigo` int(11) NOT NULL,
  `cPrdDescripcion` varchar(250) CHARACTER SET latin1 NOT NULL,
  `dPrdFecInic` date NOT NULL,
  `dPrdFecFin` date NOT NULL,
  `nPrdTipo` int(11) NOT NULL,
  `nPrdEstado` int(11) NOT NULL,
  PRIMARY KEY (`nPrdCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of periodo
-- ----------------------------
INSERT INTO `periodo` VALUES ('1', 'CAMPAÑA 2014 124435', '2014-04-26', '2014-08-14', '1', '1');
INSERT INTO `periodo` VALUES ('2', 'CAMPAÑA 2014 I', '2014-09-12', '2014-10-02', '1', '1');
INSERT INTO `periodo` VALUES ('3', 'CAMPAÑA 2014333333', '2014-01-02', '2014-01-02', '1', '2');

-- ----------------------------
-- Table structure for perjuridica
-- ----------------------------
DROP TABLE IF EXISTS `perjuridica`;
CREATE TABLE `perjuridica` (
  `cPerCodigo` varchar(20) CHARACTER SET utf8 NOT NULL,
  `nPerJurRubro` int(11) NOT NULL,
  `nPerJurTipoEmpresa` int(11) NOT NULL,
  `cPerJurDescripcion` varchar(250) CHARACTER SET utf8 NOT NULL,
  `nPerEmpresa` int(11) NOT NULL,
  PRIMARY KEY (`cPerCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of perjuridica
-- ----------------------------
INSERT INTO `perjuridica` VALUES ('100000100001', '11', '0', 'Selva Andina', '1');

-- ----------------------------
-- Table structure for perlaboral
-- ----------------------------
DROP TABLE IF EXISTS `perlaboral`;
CREATE TABLE `perlaboral` (
  `cPerCodigo` varchar(20) DEFAULT NULL,
  `nParClase` int(11) DEFAULT NULL,
  `nParCodigo` int(11) DEFAULT NULL,
  `dPerLabRegistro` date DEFAULT NULL,
  `nPerLabEstado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of perlaboral
-- ----------------------------

-- ----------------------------
-- Table structure for permail
-- ----------------------------
DROP TABLE IF EXISTS `permail`;
CREATE TABLE `permail` (
  `cPerCodigo` varchar(20) NOT NULL COMMENT 'Codigo de la Persona a la que le pertenece este Email',
  `nPerMailTipo` int(11) DEFAULT NULL COMMENT 'Codigo del tipo de email(personal - corporativo)',
  `cPerMail` varchar(250) NOT NULL COMMENT 'Descripcion del Email',
  `nPerRelTipo` int(11) DEFAULT NULL,
  `nPerMailEstado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Se registra los diferentes email de una persona ';

-- ----------------------------
-- Records of permail
-- ----------------------------
INSERT INTO `permail` VALUES ('1', '1', 'juanjiner@adrisconsulting.com', '1', '1');
INSERT INTO `permail` VALUES ('100000100001', '1', 'armandoaepp@hotmail.com', '1', '1');

-- ----------------------------
-- Table structure for pernatural
-- ----------------------------
DROP TABLE IF EXISTS `pernatural`;
CREATE TABLE `pernatural` (
  `cPerCodigo` varchar(20) NOT NULL COMMENT 'Codigo de la Persona',
  `cPerNatApePaterno` varchar(250) NOT NULL COMMENT 'Registro del apellido paterno',
  `cPerNatApeMaterno` varchar(250) NOT NULL COMMENT 'Registro del apellido Materno',
  `nPerNatSexo` int(11) NOT NULL COMMENT 'Codigo de la Persona a la que le pertenece este sexo',
  `nPerNatEstCivil` int(11) NOT NULL COMMENT 'Codigo de la Persona a la que le pertenece este estado civil',
  PRIMARY KEY (`cPerCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='En esta tabla se registra los apellidos de una persona';

-- ----------------------------
-- Records of pernatural
-- ----------------------------
INSERT INTO `pernatural` VALUES ('1', 'Pisfil ', 'Puemape', '2', '4');

-- ----------------------------
-- Table structure for perparametro
-- ----------------------------
DROP TABLE IF EXISTS `perparametro`;
CREATE TABLE `perparametro` (
  `cPerCodigo` varchar(20) NOT NULL,
  `nParCodigo` int(11) NOT NULL,
  `nParClase` int(11) NOT NULL,
  `nPerParValor` int(11) DEFAULT NULL,
  `cPerParGlosa` varchar(255) DEFAULT NULL,
  `nPerParEstado` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of perparametro
-- ----------------------------

-- ----------------------------
-- Table structure for perrelacion
-- ----------------------------
DROP TABLE IF EXISTS `perrelacion`;
CREATE TABLE `perrelacion` (
  `cPerCodigo` varchar(20) NOT NULL,
  `nPerRelTipo` int(11) NOT NULL,
  `cPerJuridica` varchar(20) NOT NULL,
  `nPerRelEstado` int(11) NOT NULL,
  `dPerRelacion` date NOT NULL,
  `cPerObservacion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of perrelacion
-- ----------------------------
INSERT INTO `perrelacion` VALUES ('1', '1', '100000100001', '1', '2014-03-20', 'Representante Legal');

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `cPerCodigo` varchar(20) NOT NULL COMMENT 'Codigo de la persona.',
  `cPerNombre` varchar(1000) NOT NULL COMMENT 'Nombre de la persona.',
  `cPerApellidos` varchar(500) DEFAULT NULL,
  `dPerNacimiento` date NOT NULL COMMENT 'Fecha de nacimiento de la persona.',
  `nPerTipo` int(11) NOT NULL COMMENT 'Codigo si es una persona  juridica o natural.',
  `nPerEstado` int(11) NOT NULL COMMENT 'Codigo si esta persona esta activa o inactivo.',
  PRIMARY KEY (`cPerCodigo`),
  KEY `idx_cPerApellidos` (`cPerApellidos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='En esta tabla se registran los nombres de una persona';

-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO `persona` VALUES ('1', 'Armando Enrique', 'Pisfil Puemape', '1987-02-04', '1', '1');
INSERT INTO `persona` VALUES ('100000100001', 'Selva Andina', ' ', '2014-03-20', '2', '1');

-- ----------------------------
-- Table structure for pertelefono
-- ----------------------------
DROP TABLE IF EXISTS `pertelefono`;
CREATE TABLE `pertelefono` (
  `cPerCodigo` varchar(20) NOT NULL COMMENT 'Codigo de la Persona a la cual le pertenece este Numero Telefonico',
  `nPerTelTipo` int(11) NOT NULL COMMENT 'Tipo de Telefono (Fijo - Celular Movistar - Celular Claro)',
  `cPerTelNumero` varchar(250) NOT NULL COMMENT 'Numero del Telefono',
  `nPerRelTipo` int(11) NOT NULL,
  `nPerTelEstado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena los telefonos de una determinada Persona';

-- ----------------------------
-- Records of pertelefono
-- ----------------------------
INSERT INTO `pertelefono` VALUES ('1', '2', '996393414', '1', '1');
INSERT INTO `pertelefono` VALUES ('100000100001', '3', '#996393414', '1', '1');

-- ----------------------------
-- Table structure for perusuacceso
-- ----------------------------
DROP TABLE IF EXISTS `perusuacceso`;
CREATE TABLE `perusuacceso` (
  `cPerCodigo` varchar(20) NOT NULL COMMENT 'Codigo de la persona quien tendra acceso al sistema.',
  `nPerUsuAccGrupo` int(11) NOT NULL COMMENT 'Codigo de un determinado grupo a la que una persona tendra acceso.',
  `nPerUsuAccTipo` int(11) NOT NULL COMMENT 'Codigo de un determinado grupo a la que una persona tendra acceso.',
  `nPerUsuAccObjCodigo` int(11) NOT NULL COMMENT 'Codigo del permiso al que tendra una persona.',
  `nPerUsuAccCodigo` int(11) NOT NULL COMMENT 'Codigo del permiso al que tendra una persona.',
  `nPerUsuAccPrdCodigo` int(11) NOT NULL COMMENT 'Codigo de un determinado periodo al que un usuario tendra acceso.',
  `nPerUsuAccEstado` int(11) NOT NULL COMMENT 'Codigo del estado de un usuario(activo - inactivo).',
  PRIMARY KEY (`cPerCodigo`,`nPerUsuAccGrupo`,`nPerUsuAccTipo`,`nPerUsuAccObjCodigo`,`nPerUsuAccCodigo`,`nPerUsuAccPrdCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='En esta tabla se registraran los permisos de un determinado ';

-- ----------------------------
-- Records of perusuacceso
-- ----------------------------
INSERT INTO `perusuacceso` VALUES ('1', '10', '1', '5000', '1001', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '10', '1', '5000', '1002', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '10', '1', '5000', '100101', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '10', '1', '5000', '100102', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '10', '1', '5000', '100103', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '10', '1', '5000', '100201', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '10', '1', '5000', '100301', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010101', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010102', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010103', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010104', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010105', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010201', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010202', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010203', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010204', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010205', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010301', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010302', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010303', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010304', '0', '0');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10010305', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10020101', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10020102', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10020103', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10020104', '0', '1');
INSERT INTO `perusuacceso` VALUES ('1', '5001', '1', '5001', '10020105', '0', '1');

-- ----------------------------
-- Table structure for perusuario
-- ----------------------------
DROP TABLE IF EXISTS `perusuario`;
CREATE TABLE `perusuario` (
  `cPerCodigo` varchar(20) NOT NULL COMMENT 'Codigo de la persona ',
  `cPerUsuCodigo` varchar(50) NOT NULL COMMENT 'Registro del nombre del usuario.',
  `cPerUsuClave` varchar(50) NOT NULL COMMENT 'Registro de la clave del usuario.',
  `nPerUsuEstado` int(11) NOT NULL COMMENT 'Codigo del estado del usuario(activo - inactivo)',
  PRIMARY KEY (`cPerCodigo`,`cPerUsuCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of perusuario
-- ----------------------------
INSERT INTO `perusuario` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1');

-- ----------------------------
-- Table structure for provincia
-- ----------------------------
DROP TABLE IF EXISTS `provincia`;
CREATE TABLE `provincia` (
  `IdProvincia` int(11) NOT NULL,
  `cProvincia` varchar(100) NOT NULL,
  `IdDepartamento` int(11) NOT NULL,
  `nProEstado` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`IdProvincia`,`IdDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of provincia
-- ----------------------------
INSERT INTO `provincia` VALUES ('1', 'Chachapoyas', '1', '1');
INSERT INTO `provincia` VALUES ('2', 'Bagua', '1', '1');
INSERT INTO `provincia` VALUES ('3', 'Bongara', '1', '1');
INSERT INTO `provincia` VALUES ('4', 'Condorcanqui', '1', '1');
INSERT INTO `provincia` VALUES ('5', 'Luya', '1', '1');
INSERT INTO `provincia` VALUES ('6', 'Rodriguez de Mendoza', '1', '1');
INSERT INTO `provincia` VALUES ('7', 'Utcubamba', '1', '1');
INSERT INTO `provincia` VALUES ('8', 'Huaraz', '2', '1');
INSERT INTO `provincia` VALUES ('9', 'Aija', '2', '1');
INSERT INTO `provincia` VALUES ('10', 'Antonio Raymondi', '2', '1');
INSERT INTO `provincia` VALUES ('11', 'Asuncion', '2', '1');
INSERT INTO `provincia` VALUES ('12', 'Bolognesi', '2', '1');
INSERT INTO `provincia` VALUES ('13', 'Carhuaz', '2', '1');
INSERT INTO `provincia` VALUES ('14', 'Carlos Fermin Fitzcarrald', '2', '1');
INSERT INTO `provincia` VALUES ('15', 'Casma', '2', '1');
INSERT INTO `provincia` VALUES ('16', 'Corongo', '2', '1');
INSERT INTO `provincia` VALUES ('17', 'Huari', '2', '1');
INSERT INTO `provincia` VALUES ('18', 'Huarmey', '2', '1');
INSERT INTO `provincia` VALUES ('19', 'Huaylas', '2', '1');
INSERT INTO `provincia` VALUES ('20', 'Mariscal Luzuriaga', '2', '1');
INSERT INTO `provincia` VALUES ('21', 'Ocros', '2', '1');
INSERT INTO `provincia` VALUES ('22', 'Pallasca', '2', '1');
INSERT INTO `provincia` VALUES ('23', 'Pomabamba', '2', '1');
INSERT INTO `provincia` VALUES ('24', 'Recuay', '2', '1');
INSERT INTO `provincia` VALUES ('25', 'Santa', '2', '1');
INSERT INTO `provincia` VALUES ('26', 'Sihuas', '2', '1');
INSERT INTO `provincia` VALUES ('27', 'Yungay', '2', '1');
INSERT INTO `provincia` VALUES ('28', 'Abancay', '3', '1');
INSERT INTO `provincia` VALUES ('29', 'Andahuaylas', '3', '1');
INSERT INTO `provincia` VALUES ('30', 'Antabamba', '3', '1');
INSERT INTO `provincia` VALUES ('31', 'Aymaraes', '3', '1');
INSERT INTO `provincia` VALUES ('32', 'Cotabambas', '3', '1');
INSERT INTO `provincia` VALUES ('33', 'Chincheros', '3', '1');
INSERT INTO `provincia` VALUES ('34', 'Grau', '3', '1');
INSERT INTO `provincia` VALUES ('35', 'Arequipa', '4', '1');
INSERT INTO `provincia` VALUES ('36', 'Camana', '4', '1');
INSERT INTO `provincia` VALUES ('37', 'Caraveli', '4', '1');
INSERT INTO `provincia` VALUES ('38', 'Castilla', '4', '1');
INSERT INTO `provincia` VALUES ('39', 'Caylloma', '4', '1');
INSERT INTO `provincia` VALUES ('40', 'Condesuyos', '4', '1');
INSERT INTO `provincia` VALUES ('41', 'Islay', '4', '1');
INSERT INTO `provincia` VALUES ('42', 'La Union', '4', '1');
INSERT INTO `provincia` VALUES ('43', 'Huamanga', '5', '1');
INSERT INTO `provincia` VALUES ('44', 'Cangallo', '5', '1');
INSERT INTO `provincia` VALUES ('45', 'Huanca Sancos', '5', '1');
INSERT INTO `provincia` VALUES ('46', 'Huanta', '5', '1');
INSERT INTO `provincia` VALUES ('47', 'La Mar', '5', '1');
INSERT INTO `provincia` VALUES ('48', 'Lucanas', '5', '1');
INSERT INTO `provincia` VALUES ('49', 'Parinacochas', '5', '1');
INSERT INTO `provincia` VALUES ('50', 'Paucar del Sara', '5', '1');
INSERT INTO `provincia` VALUES ('51', 'Sucre', '5', '1');
INSERT INTO `provincia` VALUES ('52', 'Victor Fajardo', '5', '1');
INSERT INTO `provincia` VALUES ('53', 'Vilcas Huaman', '5', '1');
INSERT INTO `provincia` VALUES ('54', 'Cajamarca', '6', '1');
INSERT INTO `provincia` VALUES ('55', 'Cajabamba', '6', '1');
INSERT INTO `provincia` VALUES ('56', 'Celendin', '6', '1');
INSERT INTO `provincia` VALUES ('57', 'Chota', '6', '1');
INSERT INTO `provincia` VALUES ('58', 'Contumaza', '6', '1');
INSERT INTO `provincia` VALUES ('59', 'Cutervo', '6', '1');
INSERT INTO `provincia` VALUES ('60', 'Hualgayoc', '6', '1');
INSERT INTO `provincia` VALUES ('61', 'Jaen', '6', '1');
INSERT INTO `provincia` VALUES ('62', 'San Ignacio', '6', '1');
INSERT INTO `provincia` VALUES ('63', 'San Marcos', '6', '1');
INSERT INTO `provincia` VALUES ('64', 'San Miguel', '6', '1');
INSERT INTO `provincia` VALUES ('65', 'San Pablo', '6', '1');
INSERT INTO `provincia` VALUES ('66', 'Santa Cruz', '6', '1');
INSERT INTO `provincia` VALUES ('67', 'Callao', '14', '1');
INSERT INTO `provincia` VALUES ('68', 'Cusco', '7', '1');
INSERT INTO `provincia` VALUES ('69', 'Acomayo', '7', '1');
INSERT INTO `provincia` VALUES ('70', 'Anta', '7', '1');
INSERT INTO `provincia` VALUES ('71', 'Calca', '7', '1');
INSERT INTO `provincia` VALUES ('72', 'Canas', '7', '1');
INSERT INTO `provincia` VALUES ('73', 'Canchis', '7', '1');
INSERT INTO `provincia` VALUES ('74', 'Chumbivilcas', '7', '1');
INSERT INTO `provincia` VALUES ('75', 'Espinar', '7', '1');
INSERT INTO `provincia` VALUES ('76', 'La Convencion', '7', '1');
INSERT INTO `provincia` VALUES ('77', 'Paruro', '7', '1');
INSERT INTO `provincia` VALUES ('78', 'Paucartambo', '7', '1');
INSERT INTO `provincia` VALUES ('79', 'Quispicanchi', '7', '1');
INSERT INTO `provincia` VALUES ('80', 'Urubamba', '7', '1');
INSERT INTO `provincia` VALUES ('81', 'Huancavelica', '9', '1');
INSERT INTO `provincia` VALUES ('82', 'Acobamba', '9', '1');
INSERT INTO `provincia` VALUES ('83', 'Angaraes', '9', '1');
INSERT INTO `provincia` VALUES ('84', 'Castrovirreyna', '9', '1');
INSERT INTO `provincia` VALUES ('85', 'Churcampa', '9', '1');
INSERT INTO `provincia` VALUES ('86', 'Huaytara', '9', '1');
INSERT INTO `provincia` VALUES ('87', 'Tayacaja', '9', '1');
INSERT INTO `provincia` VALUES ('88', 'Huanuco', '8', '1');
INSERT INTO `provincia` VALUES ('89', 'Ambo', '8', '1');
INSERT INTO `provincia` VALUES ('90', 'Dos de Mayo', '8', '1');
INSERT INTO `provincia` VALUES ('91', 'Huacaybamba', '8', '1');
INSERT INTO `provincia` VALUES ('92', 'Huamalies', '8', '1');
INSERT INTO `provincia` VALUES ('93', 'Leoncio Prado', '8', '1');
INSERT INTO `provincia` VALUES ('94', 'Marañon', '8', '1');
INSERT INTO `provincia` VALUES ('95', 'Pachitea', '8', '1');
INSERT INTO `provincia` VALUES ('96', 'Puerto Inca', '8', '1');
INSERT INTO `provincia` VALUES ('97', 'Lauricocha', '8', '1');
INSERT INTO `provincia` VALUES ('98', 'Yarowilca', '8', '1');
INSERT INTO `provincia` VALUES ('99', 'Ica', '10', '1');
INSERT INTO `provincia` VALUES ('100', 'Chincha', '10', '1');
INSERT INTO `provincia` VALUES ('101', 'Nazca', '10', '1');
INSERT INTO `provincia` VALUES ('102', 'Palpa', '10', '1');
INSERT INTO `provincia` VALUES ('103', 'Pisco', '10', '1');
INSERT INTO `provincia` VALUES ('104', 'Huancayo', '11', '1');
INSERT INTO `provincia` VALUES ('105', 'Concepcion', '11', '1');
INSERT INTO `provincia` VALUES ('106', 'Chanchamayo', '11', '1');
INSERT INTO `provincia` VALUES ('107', 'Jauja', '11', '1');
INSERT INTO `provincia` VALUES ('108', 'Junin', '11', '1');
INSERT INTO `provincia` VALUES ('109', 'Satipo', '11', '1');
INSERT INTO `provincia` VALUES ('110', 'Tarma', '11', '1');
INSERT INTO `provincia` VALUES ('111', 'Yauli', '11', '1');
INSERT INTO `provincia` VALUES ('112', 'Chupaca', '11', '1');
INSERT INTO `provincia` VALUES ('113', 'Trujillo', '12', '1');
INSERT INTO `provincia` VALUES ('114', 'Ascope', '12', '1');
INSERT INTO `provincia` VALUES ('115', 'Bolivar', '12', '1');
INSERT INTO `provincia` VALUES ('116', 'Chepen', '12', '1');
INSERT INTO `provincia` VALUES ('117', 'Julcan', '12', '1');
INSERT INTO `provincia` VALUES ('118', 'Otuzco', '12', '1');
INSERT INTO `provincia` VALUES ('119', 'Pacasmayo', '12', '1');
INSERT INTO `provincia` VALUES ('120', 'Pataz', '12', '1');
INSERT INTO `provincia` VALUES ('121', 'Sanchez Carrion', '12', '1');
INSERT INTO `provincia` VALUES ('122', 'Santiago de Chuco', '12', '1');
INSERT INTO `provincia` VALUES ('123', 'Gran Chimu', '12', '1');
INSERT INTO `provincia` VALUES ('124', 'Viru', '12', '1');
INSERT INTO `provincia` VALUES ('125', 'Chiclayo', '13', '1');
INSERT INTO `provincia` VALUES ('126', 'Ferreñafe', '13', '0');
INSERT INTO `provincia` VALUES ('127', 'Lambayeque', '13', '1');
INSERT INTO `provincia` VALUES ('128', 'Lima', '14', '1');
INSERT INTO `provincia` VALUES ('129', 'Barranca', '14', '1');
INSERT INTO `provincia` VALUES ('130', 'Cajatambo', '14', '1');
INSERT INTO `provincia` VALUES ('131', 'Canta', '14', '1');
INSERT INTO `provincia` VALUES ('132', 'Cañete', '14', '1');
INSERT INTO `provincia` VALUES ('133', 'Huaral', '14', '1');
INSERT INTO `provincia` VALUES ('134', 'Huarochiri', '14', '1');
INSERT INTO `provincia` VALUES ('135', 'Huaura', '14', '1');
INSERT INTO `provincia` VALUES ('136', 'Oyon', '14', '1');
INSERT INTO `provincia` VALUES ('137', 'Yauyos', '14', '1');
INSERT INTO `provincia` VALUES ('138', 'Maynas', '15', '1');
INSERT INTO `provincia` VALUES ('139', 'Alto Amazonas', '15', '1');
INSERT INTO `provincia` VALUES ('140', 'Loreto', '15', '1');
INSERT INTO `provincia` VALUES ('141', 'Mariscal Ramon Castilla', '15', '1');
INSERT INTO `provincia` VALUES ('142', 'Requena', '15', '1');
INSERT INTO `provincia` VALUES ('143', 'Ucayali', '15', '1');
INSERT INTO `provincia` VALUES ('144', 'Datem del Mara&Atilde;&plusmn;on', '15', '1');
INSERT INTO `provincia` VALUES ('145', 'Tambopata', '16', '1');
INSERT INTO `provincia` VALUES ('146', 'Manu', '16', '1');
INSERT INTO `provincia` VALUES ('147', 'Tahuamanu', '16', '1');
INSERT INTO `provincia` VALUES ('148', 'Mariscal Nieto', '17', '1');
INSERT INTO `provincia` VALUES ('149', 'General Sanchez Cerro', '17', '1');
INSERT INTO `provincia` VALUES ('150', 'Ilo', '17', '1');
INSERT INTO `provincia` VALUES ('151', 'Pasco', '18', '1');
INSERT INTO `provincia` VALUES ('152', 'Daniel Alcides Carrion', '18', '1');
INSERT INTO `provincia` VALUES ('153', 'Oxapampa', '18', '1');
INSERT INTO `provincia` VALUES ('154', 'Piura', '19', '1');
INSERT INTO `provincia` VALUES ('155', 'Ayabaca', '19', '1');
INSERT INTO `provincia` VALUES ('156', 'Huancabamba', '19', '1');
INSERT INTO `provincia` VALUES ('157', 'Morropon', '19', '1');
INSERT INTO `provincia` VALUES ('158', 'Paita', '19', '1');
INSERT INTO `provincia` VALUES ('159', 'Sullana', '19', '1');
INSERT INTO `provincia` VALUES ('160', 'Talara', '19', '1');
INSERT INTO `provincia` VALUES ('161', 'Sechura', '19', '1');
INSERT INTO `provincia` VALUES ('162', 'Puno', '20', '1');
INSERT INTO `provincia` VALUES ('163', 'Azangaro', '20', '1');
INSERT INTO `provincia` VALUES ('164', 'Carabaya', '20', '1');
INSERT INTO `provincia` VALUES ('165', 'Chucuito', '20', '1');
INSERT INTO `provincia` VALUES ('166', 'El Collao', '20', '1');
INSERT INTO `provincia` VALUES ('167', 'Huancane', '20', '1');
INSERT INTO `provincia` VALUES ('168', 'Lampa', '20', '1');
INSERT INTO `provincia` VALUES ('169', 'Melgar', '20', '1');
INSERT INTO `provincia` VALUES ('170', 'Moho', '20', '1');
INSERT INTO `provincia` VALUES ('171', 'San Antonio de Putina', '20', '1');
INSERT INTO `provincia` VALUES ('172', 'San Roman', '20', '1');
INSERT INTO `provincia` VALUES ('173', 'Sandia', '20', '1');
INSERT INTO `provincia` VALUES ('174', 'Yunguyo', '20', '1');
INSERT INTO `provincia` VALUES ('175', 'Moyobamba', '21', '1');
INSERT INTO `provincia` VALUES ('176', 'Bellavista', '21', '1');
INSERT INTO `provincia` VALUES ('177', 'El Dorado', '21', '1');
INSERT INTO `provincia` VALUES ('178', 'Huallaga', '21', '1');
INSERT INTO `provincia` VALUES ('179', 'Lamas', '21', '1');
INSERT INTO `provincia` VALUES ('180', 'Mariscal Caceres', '21', '1');
INSERT INTO `provincia` VALUES ('181', 'Picota', '21', '1');
INSERT INTO `provincia` VALUES ('182', 'Rioja', '21', '1');
INSERT INTO `provincia` VALUES ('183', 'San Martin', '21', '1');
INSERT INTO `provincia` VALUES ('184', 'Tocache', '21', '1');
INSERT INTO `provincia` VALUES ('185', 'Tacna', '22', '1');
INSERT INTO `provincia` VALUES ('186', 'Candarave', '22', '1');
INSERT INTO `provincia` VALUES ('187', 'Jorge Basadre', '22', '1');
INSERT INTO `provincia` VALUES ('188', 'Tarata', '22', '1');
INSERT INTO `provincia` VALUES ('189', 'Tumbes', '23', '1');
INSERT INTO `provincia` VALUES ('190', 'Contralmirante Villar', '23', '1');
INSERT INTO `provincia` VALUES ('191', 'Zarumilla', '23', '1');
INSERT INTO `provincia` VALUES ('192', 'Coronel Portillo', '24', '1');
INSERT INTO `provincia` VALUES ('193', 'Atalaya', '24', '1');
INSERT INTO `provincia` VALUES ('194', 'Padre Abad', '24', '1');
INSERT INTO `provincia` VALUES ('195', 'Purus', '24', '1');

-- ----------------------------
-- Table structure for transaccion
-- ----------------------------
DROP TABLE IF EXISTS `transaccion`;
CREATE TABLE `transaccion` (
  `cTraCodigo` varchar(100) NOT NULL COMMENT 'Codigo de la transaccion que se va a realizar.',
  `nOpeCodigo` int(11) NOT NULL COMMENT 'Codigo de la operacion que se esta realizando',
  `cPerCodigo` varchar(20) NOT NULL COMMENT 'Codigo de la persona quien esta realizando una determinada transaccion.',
  `dTraFecha` datetime NOT NULL COMMENT 'Fecha en que se realiza una determinada transaccion.',
  `cComputer` varchar(250) NOT NULL COMMENT 'Descripcion del equipo que se esta utilizando',
  `cTraDescripcion` longtext NOT NULL COMMENT 'Descripcion de la transaccion que se esta realizando',
  PRIMARY KEY (`cTraCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='En esta tabla se registrara las transaciones que realiza un ';

-- ----------------------------
-- Records of transaccion
-- ----------------------------
INSERT INTO `transaccion` VALUES ('20140418121501f9885f74c71c11e3a11f2016d8d47c3d', '101', '1', '2014-04-18 12:15:01', '', 'ACTULIZO PERIODO - nParCodigo : 1 - nParClase : 2001 - cParDescripcion : CAMPAÑA 2014 IIIIII');
INSERT INTO `transaccion` VALUES ('201404181216041f4b075ac71d11e3a11f2016d8d47c3d', '101', '1', '2014-04-18 12:16:04', '', 'ACTULIZO PERIODO - nParCodigo : 1 - nParClase : 2001 - cParDescripcion : CAMPAÑA 2014 124435');
INSERT INTO `transaccion` VALUES ('201404182058592c15daa0c76611e3a11f2016d8d47c3d', '3', '1', '2014-04-18 20:58:59', '', 'ELIMNO PERIODO: nParCodigo : 1 - nParClase : 2001 - cParDescripcion : ');
INSERT INTO `transaccion` VALUES ('20140419150959956c5b39c7fe11e3a11f2016d8d47c3d', '1', '1', '2014-04-19 15:09:59', '', 'NUEVO PERIODO: nParCodigo : 3 - nParClase : 2001 - cParDescripcion : CAMPAÑA 2014333333');
INSERT INTO `transaccion` VALUES ('20140419162748749cda03c80911e3a11f2016d8d47c3d', '3', '1', '2014-04-19 16:27:48', '', 'ELIMNO PERIODO: nParCodigo : 3 - nParClase : 2001 - cParDescripcion : ');
INSERT INTO `transaccion` VALUES ('201404191633203a4d7833c80a11e3a11f2016d8d47c3d', '4', '1', '2014-04-19 16:33:20', '', 'CERRO Y/O APERTURO PERIODO: nParCodigo : 1 - nParClase : 2001 - cParDescripcion : ');

-- ----------------------------
-- Table structure for visitas
-- ----------------------------
DROP TABLE IF EXISTS `visitas`;
CREATE TABLE `visitas` (
  `id_visita` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `num` int(10) NOT NULL,
  `nombrehost` varchar(50) NOT NULL,
  PRIMARY KEY (`id_visita`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of visitas
-- ----------------------------

-- ----------------------------
-- Procedure structure for usp_app_Buscar_Parametro
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Buscar_Parametro`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Buscar_Parametro`(nParCodigo int (11), nParClase int(11))
BEGIN
		SELECT parametro.nParCodigo,
				parametro.cParNombre,
				parametro.cParDescripcion
		FROM parametro
		WHERE parametro.nParTipo = 1000
		AND parametro.nParClase = nParClase
		AND parametro.nParCodigo = nParCodigo;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_Get_Departamentos_Pais
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Get_Departamentos_Pais`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Get_Departamentos_Pais`(IdPais varchar(20))
BEGIN
	SELECT departamento.IdDepartamento , departamento.cDepartamento , departamento.IdPais
	FROM departamento
	WHERE  departamento.IdPais = IdPais AND departamento.nDepEstado = 1
 ORDER BY departamento.cDepartamento ASC ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_Get_Parametro_By_cParClase
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Get_Parametro_By_cParClase`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Get_Parametro_By_cParClase`(nParClase int(11))
BEGIN
		SELECT parametro.nParCodigo,
				parametro.cParNombre,
				parametro.cParDescripcion
		FROM parametro
		WHERE parametro.nParTipo = 1000
		AND parametro.nParClase = nParClase
		ORDER BY 	parametro.cParDescripcion , parametro.cParNombre  ASC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_Get_Sel_Periodos
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Get_Sel_Periodos`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Get_Sel_Periodos`(nOriReg Int(4), nCanReg Int(4), nPagRegistro Int(4),  cPrdDescripcion varchar(100))
BEGIN

	IF  (nPagRegistro = 1 ) THEN

		SET @sentencia = CONCAT('SELECT periodo.nPrdCodigo,
					 periodo.cPrdDescripcion,
					DATE_FORMAT(periodo.dPrdFecInic ,"%d/%m/%Y") AS dPrdFecInic,
					DATE_FORMAT(periodo.dPrdFecFin ,"%d/%m/%Y") AS dPrdFecFin ,
					periodo.nPrdEstado
				FROM periodo
				WHERE periodo.nPrdEstado 		IN( 1, 2)
				AND( ("',cPrdDescripcion ,'" ="-"  ) OR (  periodo.cPrdDescripcion like "',cPrdDescripcion ,'%") )
				ORDER BY DATE_FORMAT(periodo.dPrdFecInic ,"%d/%m/%Y") DESC , DATE_FORMAT(periodo.dPrdFecFin ,"%d/%m/%Y")  DESC
				LIMIT ',nOriReg,',',nCanReg);
		prepare consulta FROM @sentencia;
		execute consulta;

	ELSE

		SELECT periodo.nPrdCodigo,
			 periodo.cPrdDescripcion,
			 DATE_FORMAT(periodo.dPrdFecInic ,'%d/%m/%Y') AS dPrdFecInic,
			 DATE_FORMAT(periodo.dPrdFecFin ,'%d/%m/%Y') AS dPrdFecFin ,
			periodo.nPrdEstado

		FROM periodo
		WHERE periodo.nPrdEstado 		IN( 1, 2)
		AND( (cPrdDescripcion ='-') 		OR ( periodo.cPrdDescripcion like concat(cPrdDescripcion,'%')) )
		ORDER BY DATE_FORMAT(periodo.dPrdFecInic ,"%d/%m/%Y") DESC , DATE_FORMAT(periodo.dPrdFecFin ,"%d/%m/%Y")  DESC;

	END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_Get_Sel_Sectores
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Get_Sel_Sectores`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Get_Sel_Sectores`(nOriReg Int(4), nCanReg Int(4), nPagRegistro Int(4),  cParDescSector varchar(100))
BEGIN


	IF  (nPagRegistro = 1 ) THEN

		SET @sentencia = CONCAT('
					SELECT
						departamento.IdDepartamento ,
						departamento.cDepartamento,
						provincia.IdProvincia ,
						provincia.cProvincia ,
						distrito.IdDistrito ,
						distrito.cDistrito ,
						p_sector.nParCodigo ,
						p_sector.cParDescripcion
					FROM departamento
					INNER JOIN provincia ON provincia.IdDepartamento = departamento.IdDepartamento
					INNER JOIN distrito ON distrito.IdProvincia = provincia.IdProvincia
					INNER JOIN parametro AS p_sector ON p_sector.nParCodigo = distrito.IdDistrito
																					 AND p_sector.nParClase = 2002
					WHERE p_sector.nParTipo = 1000
				AND( ("',cParDescSector  ,'" ="-"  ) OR (  p_sector.cParDescripcion like "',cParDescSector  ,'%") )
				ORDER BY departamento.cDepartamento, provincia.cProvincia ,distrito.cDistrito ASC
				LIMIT ',nOriReg,',',nCanReg);
		prepare consulta FROM @sentencia;
		execute consulta;

	ELSE

		SELECT
			departamento.IdDepartamento ,
			departamento.cDepartamento,
			provincia.IdProvincia ,
			provincia.cProvincia ,
			distrito.IdDistrito ,
			distrito.cDistrito ,
			p_sector.nParCodigo ,
			p_sector.cParDescripcion
		FROM departamento
		INNER JOIN provincia ON provincia.IdDepartamento = departamento.IdDepartamento
		INNER JOIN distrito ON distrito.IdProvincia = provincia.IdProvincia
		INNER JOIN parametro AS p_sector ON p_sector.nParCodigo = distrito.IdDistrito
																		 AND p_sector.nParClase = 2002
		WHERE p_sector.nParTipo = 1000
		AND ((cParDescSector = "-") OR ( 	p_sector.cParDescripcion LIKE CONCAT(cParDescSector,"%") ))
		ORDER BY departamento.cDepartamento, provincia.cProvincia ,distrito.cDistrito ASC
		;

	END IF;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_Reg_Parametro
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Reg_Parametro`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Reg_Parametro`(nParCodigo int(11), nParClase int(11) ,cParNombre varchar(1000), cParDescripcion varchar(1000))
BEGIN

	DECLARE cParJerarquia VARCHAR(20);

-- Generar jerarquia para el parametro
  SELECT 	LPAD(IFNULL( MAX(parametro.cParJerarquia)+1 , 1001 ),4,'0') INTO cParJerarquia
	FROM 		parametro
	WHERE 	parametro.nParClase=nParClase AND parametro.nParCodigo <> 0 ;

		INSERT INTO parametro (parametro.nParCodigo,
												 parametro.nParClase,
												 parametro.cParJerarquia,
												 parametro.cParNombre,
												 parametro.cParDescripcion,
												 parametro.nParTipo)
  VALUES(nParCodigo, nParClase, cParJerarquia, cParNombre, cParDescripcion,	1000);

	SELECT nParCodigo, cParJerarquia;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_Set_Periodo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Set_Periodo`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Set_Periodo`(cPrdDescripcion VARCHAR(250), dPrdFecInic DATE , dPrdFecFin DATE , nPrdTipo INT(4) ,  nPrdEstado INT(4))
BEGIN

	-- SELECT MAX(CAST((nPrdCodigo) AS SIGNED))+1
SELECT ( IFNULL(MAX(CAST((nPrdCodigo) AS SIGNED)),0)+1 ) INTO @pnPeriodo
	FROM periodo ;

	INSERT INTO periodo
	(
		periodo.nPrdCodigo,
		periodo.cPrdDescripcion,
		periodo.dPrdFecInic,
		periodo.dPrdFecFin,
		periodo.nPrdTipo,
		periodo.nPrdEstado
	)
	VALUES
	(
		@pnPeriodo,
		cPrdDescripcion,
		dPrdFecInic,
		dPrdFecFin,
		nPrdTipo ,
		nPrdEstado
	);

		SELECT  @pnPeriodo AS nPrdCodigo ;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_Upd_Parametro
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Upd_Parametro`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Upd_Parametro`(nParCodigo int(11), nParClase  int(11) , cParNombre varchar(255), cParDescripcion varchar(255))
BEGIN
		UPDATE parametro
		SET parametro.cParNombre=cParNombre,
				parametro.cParDescripcion=cParDescripcion
		WHERE parametro.nParCodigo = nParCodigo
		AND parametro.nParClase = nParClase
		AND parametro.nParTipo = 1000;
	SELECT  nParCodigo  ;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_Upd_Parametro_Estado
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Upd_Parametro_Estado`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Upd_Parametro_Estado`(nParCodigo int(11), nParClase int(11) ,  nParTipo int(4))
BEGIN
  UPDATE parametro SET
				parametro.nParTipo= nParTipo
	WHERE parametro.nParCodigo=nParCodigo
		AND parametro.nParClase=nParClase ;
SELECT 'ok' AS cMensaje ;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_Upd_Periodo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Upd_Periodo`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Upd_Periodo`(nPrdCodigo INT(11) , cPrdDescripcion VARCHAR(250) , dPrdFecInic DATE , dPrdFecFin DATE, nPrdTipo INT(11))
BEGIN

	UPDATE periodo SET
		periodo.cPrdDescripcion = cPrdDescripcion,
		periodo.dPrdFecInic     = dPrdFecInic,
		periodo.dPrdFecFin      = dPrdFecFin,
		periodo.nPrdTipo        = nPrdTipo
	WHERE periodo.nPrdCodigo = nPrdCodigo;
	-- esto para que el metodo de conexion no duelva error cuando se trabaja con transacciones
	SELECT "Ok" AS cMensaje ;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_Upd_Periodo_Estado
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Upd_Periodo_Estado`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Upd_Periodo_Estado`(nPrdCodigo INT(11), nPrdEstado INT(4))
BEGIN
	UPDATE periodo SET
		periodo.nPrdEstado = nPrdEstado
	WHERE periodo.nPrdCodigo = nPrdCodigo;
	SELECT "ok" AS cMensaje ;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_Validar_Periodo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Validar_Periodo`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Validar_Periodo`(nPrdCodigo int(11) , cPrdDescripcion varchar(150) , dPrdFecInic varchar(20) , dPrdFecFin varchar(20))
BEGIN

	SELECT
				periodo.nPrdCodigo ,
				periodo.cPrdDescripcion ,
				periodo.dPrdFecInic ,
				periodo.dPrdFecFin,
				periodo.nPrdEstado
	FROM periodo
	WHERE ((nPrdCodigo = 0 ) OR ( periodo.nPrdCodigo = nPrdCodigo ))
		AND ((cPrdDescripcion = '-' ) OR ( periodo.cPrdDescripcion = cPrdDescripcion ))
		AND ((dPrdFecInic = '-' ) OR ( periodo.dPrdFecInic = dPrdFecInic ))
		AND ((dPrdFecFin = '-' ) OR ( periodo.dPrdFecFin = dPrdFecFin ))
 ;
-- nPrdCodigo , cPrdDescripcion , dPrdFecInic , dPrdFecFin
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_Validar_Periodo_by_Fecha
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_Validar_Periodo_by_Fecha`;
DELIMITER ;;
CREATE  PROCEDURE `usp_app_Validar_Periodo_by_Fecha`(dPrdFecha DATE , nPrdTipo INT(4))
BEGIN

	SELECT
				periodo.nPrdCodigo ,
				periodo.cPrdDescripcion ,
				periodo.dPrdFecInic ,
				periodo.dPrdFecFin ,
				periodo.nPrdEstado
				FROM periodo
	WHERE dPrdFecha  BETWEEN periodo.dPrdFecInic AND periodo.dPrdFecFin
	AND periodo.nPrdTipo = nPrdTipo
	AND nPrdEstado IN( 1 , 2) ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Filtrar_Parametro
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Filtrar_Parametro`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Filtrar_Parametro`(nOriReg Int(4), nCanReg Int(4), nPagRegistro Int(4), cParNombre varchar(500), cParDescripcion varchar(500), nParClase int(11))
BEGIN

	IF  (nPagRegistro = 1 ) THEN
		SET @sentencia = CONCAT('SELECT parametro.nParCodigo,
							parametro.cParNombre,
							IFNULL(parametro.cParDescripcion,"") cParDescripcion
					FROM parametro
					WHERE parametro.nParClase="',nParClase,'"
					AND parametro.nParTipo=1000
					AND( ( "',cParNombre ,'" 				= "-" )	OR ( parametro.cParNombre like "',cParNombre ,'%") )
					AND( ( "',cParDescripcion ,'" 	= "-" ) OR ( parametro.cParDescripcion like "',cParDescripcion ,'%") )
					ORDER BY parametro.cParDescripcion ASC
					LIMIT  ',nOriReg,',',nCanReg,' ; ');
					prepare consulta FROM @sentencia;
					execute consulta;
	ELSE
		SELECT parametro.nParCodigo,
				parametro.cParNombre,
				IFNULL(parametro.cParDescripcion,"") cParDescripcion
		FROM parametro
		WHERE parametro.nParClase=nParClase
		AND parametro.nParTipo=1000
		AND ( ( cParNombre 			= "-" ) OR ( parametro.cParNombre 			LIKE CONCAT(cParNombre,'%') ) )
		AND	( ( cParDescripcion = "-" ) OR ( parametro.cParDescripcion 	LIKE CONCAT(cParDescripcion,'%') ) )
		ORDER BY parametro.cParJerarquia ASC ;
	END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Get_Departamentos
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Get_Departamentos`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Get_Departamentos`(nOriReg Int(4), nCanReg Int(4), nPagRegistro Int(4), cDepartamento varchar(200))
BEGIN
	IF  (nPagRegistro = 1 ) THEN
			SET @sentencia = CONCAT('SELECT departamento.IdDepartamento, departamento.cDepartamento,departamento.IdPais
										FROM departamento
						WHERE( ("',cDepartamento   ,'" ="-"  ) OR (departamento.cDepartamento like "',cDepartamento  ,'%") )
						ORDER BY departamento.cDepartamento ASC
						LIMIT  ',nOriReg,',',nCanReg);
						prepare consulta FROM @sentencia;
						execute consulta;
		ELSE
			SELECT departamento.IdDepartamento, departamento.cDepartamento ,departamento.IdPais
			FROM departamento  ORDER BY departamento.cDepartamento ASC ;
	END IF;



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Get_Parametro_By_Todos
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Get_Parametro_By_Todos`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Get_Parametro_By_Todos`(nParCodigo int(4), nParClase Int(4), cParJerarquia nVarChar(100), cParNombre nVarChar(200), cParDescripcion nVarChar(500), nParTipo Int(4))
BEGIN

	SELECT parametro.nParCodigo,
		parametro.nParClase,
		parametro.cParJerarquia,
		parametro.cParNombre,
		parametro.cParDescripcion,
		parametro.nParTipo,
		(length(parametro.cParJerarquia)) as CanJerarquia
	From parametro
	WHERE (( nParCodigo = 0) OR (parametro.nParCodigo = nParCodigo ))
	AND (( nParClase = 0) OR (parametro.nParClase = nParClase ))
	AND (( cParJerarquia = '-' ) OR (parametro.cParJerarquia = cParJerarquia ))
	AND (( cParNombre = '-' ) OR (parametro.cParNombre = cParNombre ))
	AND (( cParDescripcion = '-' ) OR (parametro.cParDescripcion = cParDescripcion ))
	AND (( nParTipo = 0) OR (parametro.nParTipo = nParTipo ))
	ORDER BY parametro.cParJerarquia;

/*
	SET @sentencia = CONCAT('
					SELECT parametro.nParCodigo,
							parametro.nParClase,
							parametro.cParJerarquia,
							parametro.cParNombre,
							parametro.cParDescripcion,
							parametro.nParTipo,
							(length(parametro.cParJerarquia)) as CanJerarquia
					 From parametro
						WHERE (( ',nParCodigo,' = 0) OR (parametro.nParCodigo = ',nParCodigo ,' ))
							AND (( ',nParClase ,' = 0) OR (parametro.nParClase = ', nParClase,' ))
							AND (( "',cParNombre,'" = "-"  ) OR (parametro.cParNombre = "', cParNombre,'" ))
							AND (("', cParDescripcion,'" = "-"  ) OR (parametro.cParDescripcion ="', cParDescripcion ,'" ))
							AND (( ',nParTipo,' = 0) OR (parametro.nParTipo = ', nParTipo ,' ))
							ORDER BY parametro.',nOrderBy,'   ; '
					);
				PREPARE consulta FROM @sentencia;
				EXECUTE consulta;
				DEALLOCATE PREPARE consulta;
*/
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Get_Parametro_Padre_nParClase
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Get_Parametro_Padre_nParClase`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Get_Parametro_Padre_nParClase`(nParClase INT(4))
BEGIN
		SELECT parametro.cParJerarquia ,
			parametro.cParNombre ,
			parametro.cParDescripcion FROM parametro
		WHERE parametro.nParClase =  nParClase
		AND parametro.nParTipo = 0
		AND parametro.nParCodigo = 0  ;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Get_Periodo_By_nPrdCodigo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Get_Periodo_By_nPrdCodigo`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Get_Periodo_By_nPrdCodigo`(nPrdCodigo Int(4))
BEGIN

	SELECT periodo.nPrdCodigo,
		periodo.cPrdDescripcion,
		periodo.nPrdTipo ,
		periodo.dPrdFecInic,
		periodo.dPrdFecFin,
		periodo.nPrdEstado
	FROM periodo
	WHERE periodo.nPrdCodigo		  = nPrdCodigo;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Get_Periodo_nPrdTipo_nPrdEstado
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Get_Periodo_nPrdTipo_nPrdEstado`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Get_Periodo_nPrdTipo_nPrdEstado`(nPrdTipo INT(4) , nPrdEstado INT(4))
BEGIN

 	SELECT
				periodo.nPrdCodigo ,
				periodo.cPrdDescripcion ,
				periodo.dPrdFecInic ,
				periodo.dPrdFecFin
FROM periodo
WHERE  periodo.nPrdTipo = nPrdTipo
AND periodo.nPrdEstado = nPrdEstado
ORDER BY periodo.nPrdEstado ASC;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Get_Permisos_Botonera_By_Usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Get_Permisos_Botonera_By_Usuario`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Get_Permisos_Botonera_By_Usuario`(nPerTipo int(4), nPerEstado int(4), nPerUsuEstado Int(4), nPerUsuAccEstado Int(4), nParClase Int(4),cPerCodigo  varchar(20), nPerUsuAccGrupo Int(4), nParTipo Int(4), nParSrcClase Int(4), nParSrcCodigo Int(4))
BEGIN
	SELECT persona.cPerCodigo,
		persona.cPerNombre,
		persona.nPerTipo,
		perusuacceso.nPerUsuAccGrupo,
    perusuacceso.nPerUsuAccCodigo,
		perusuacceso.nPerUsuAccEstado,
		parametro.cParJerarquia,
		parametro.cParNombre,
    parametro.cParDescripcion,
		(length(parametro.cParJerarquia)) as CanJerarquia,
		parparametro.cValor
	FROM persona
  INNER JOIN perusuario  	ON persona.cPerCodigo    = perusuario.cPerCodigo
  INNER JOIN perusuacceso ON perusuario.cPerCodigo = perusuacceso.cPerCodigo
  INNER JOIN parametro    ON parametro.nParCodigo  = perusuacceso.nPerUsuAccCodigo AND parametro.nParClase = perusuacceso.nPerUsuAccObjCodigo
	INNER JOIN parparametro	ON parparametro.nParDstClase = parametro.nParClase AND parparametro.nParDstCodigo = parametro.nParCodigo
	WHERE persona.nPerTipo             = nPerTipo
  AND persona.nPerEstado             <> nPerEstado
  AND perusuario.nPerUsuEstado       <> nPerUsuEstado
  AND perusuacceso.nPerUsuAccEstado  <>	nPerUsuAccEstado
  AND parametro.nParClase            = nParClase
  AND persona.cPerCodigo             = cPerCodigo
	AND perusuacceso.nPerUsuAccGrupo	 = nPerUsuAccGrupo
	AND parametro.nParTipo			   		 = nParTipo
	AND parparametro.nParSrcClase			 = nParSrcClase
	AND parparametro.nParSrcCodigo		 = nParSrcCodigo
	ORDER BY parametro.cParJerarquia;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Get_Permisos_By_Usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Get_Permisos_By_Usuario`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Get_Permisos_By_Usuario`(nPerTipo int(4), nPerEstado int(4), nPerUsuEstado Int(4), nPerUsuAccEstado Int(4), nParClase Int(4), cPerCodigo  varchar(20), nPerUsuAccGrupo Int(4))
BEGIN
	SELECT persona.cPerCodigo,
		persona.cPerNombre,
		persona.nPerTipo,
		perusuacceso.nPerUsuAccGrupo,
    perusuacceso.nPerUsuAccCodigo,
		perusuacceso.nPerUsuAccEstado,
		parametro.cParJerarquia,
		parametro.cParNombre,
    Concat(left(parametro.cParDescripcion,1),lower(right(parametro.cParDescripcion,(length(parametro.cParDescripcion)-1)))) AS NombreMenu,
		(length(parametro.cParJerarquia)) as CanJerarquia
	FROM persona
  INNER JOIN perusuario   ON persona.cPerCodigo    = perusuario.cPerCodigo
  INNER JOIN perusuacceso ON perusuario.cPerCodigo = perusuacceso.cPerCodigo
  INNER JOIN parametro    ON parametro.nParCodigo  = perusuacceso.nPerUsuAccCodigo AND parametro.nParClase = perusuacceso.nPerUsuAccObjCodigo
	WHERE persona.nPerTipo            = nPerTipo
  AND persona.nPerEstado            <> nPerEstado
  AND perusuario.nPerUsuEstado      <> nPerUsuEstado
  AND perusuacceso.nPerUsuAccEstado <> nPerUsuAccEstado
  AND parametro.nParClase           = nParClase
  AND persona.cPerCodigo            = cPerCodigo
	AND perusuacceso.nPerUsuAccGrupo	= nPerUsuAccGrupo
	ORDER BY parametro.cParJerarquia;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Get_Provincias_Departamento
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Get_Provincias_Departamento`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Get_Provincias_Departamento`(IdDepartamento CHAR(8))
BEGIN
			SELECT provincia.IdProvincia,provincia.Nombre, provincia.IdDepartamento
				FROM provincia
WHERE provincia.IdDepartamento=IdDepartamento
AND provincia.nProEstado = 1
ORDER BY provincia.Nombre ASC ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Get_Seleccionar_Periodo_Activos
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Get_Seleccionar_Periodo_Activos`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Get_Seleccionar_Periodo_Activos`()
BEGIN

		SELECT periodo.nPrdCodigo,
			 periodo.cPrdDescripcion,
			 parametro.cParDescripcion
		FROM periodo
		INNER JOIN parametro 				ON periodo.nPrdTipo = parametro.nParCodigo
		WHERE parametro.nParClase	= 2031
		AND periodo.nPrdEstado 		= 1
		AND periodo.dPrdFecFin >= CURDATE() ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Get_Selecionar_Periodos_copy
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Get_Selecionar_Periodos_copy`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Get_Selecionar_Periodos_copy`(nOriReg Int(4), nCanReg Int(4), nPagRegistro Int(4), cParDescripcion varchar(500))
BEGIN

	IF  (nPagRegistro = 1 ) THEN

		SET @sentencia = CONCAT('SELECT periodo.nPrdCodigo,
					 periodo.cPrdDescripcion,
					 parametro.cParDescripcion,
			 DATE_FORMAT(periodo.dPrdFecInic ,"%d/%m/%Y") AS dPrdFecInic,
			 DATE_FORMAT(periodo.dPrdFecFin ,"%d/%m/%Y") AS dPrdFecFin ,
				periodo.nPrdEstado
				FROM periodo
				INNER JOIN parametro 				ON periodo.nPrdTipo = parametro.nParCodigo
				WHERE parametro.nParClase	= 2031
				AND periodo.nPrdEstado 		IN( 1, 2)
				AND( ("',cParDescripcion ,'" ="-"  ) OR (  periodo.cPrdDescripcion like "',cParDescripcion ,'%") )
				ORDER BY DATE_FORMAT(periodo.dPrdFecInic ,"%d/%m/%Y")  DESC
				LIMIT ',nOriReg,',',nCanReg);
		prepare consulta FROM @sentencia;
		execute consulta;

	ELSE

		SELECT periodo.nPrdCodigo,
			 periodo.cPrdDescripcion,
			 parametro.cParDescripcion ,
			 DATE_FORMAT(periodo.dPrdFecInic ,'%d/%m/%Y') AS dPrdFecInic,
			 DATE_FORMAT(periodo.dPrdFecFin ,'%d/%m/%Y') AS dPrdFecFin ,
			periodo.nPrdEstado

		FROM periodo
		INNER JOIN parametro 				ON periodo.nPrdTipo = parametro.nParCodigo
		WHERE parametro.nParClase	= 2031
		AND periodo.nPrdEstado 		IN( 1, 2)
		AND( (cParDescripcion ='-') 		OR ( periodo.cPrdDescripcion like concat(cParDescripcion,'%')) )
		ORDER BY DATE_FORMAT(periodo.dPrdFecInic ,"%d/%m/%Y")  DESC;
		-- DATE_FORMAT('1997-10-04 22:23:00',    '%H %k %I %r %T %S %w')
	END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Get_SubPermisos_By_Usuario_Jerarquia
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Get_SubPermisos_By_Usuario_Jerarquia`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Get_SubPermisos_By_Usuario_Jerarquia`(nPerTipo int(4), nPerEstado int(4), nPerUsuEstado Int(4), nPerUsuAccEstado Int(4), nParClase Int(4), cPerCodigo  varchar(20), nCanJerarquia Int(4), cJerarquia nVarChar(50), nPerUsuAccGrupo Int(4), nParJerarquia Int(4))
BEGIN
	SELECT
		persona.cPerCodigo,
		persona.cPerNombre,
		persona.nPerTipo,
		perusuacceso.nPerUsuAccGrupo,
    perusuacceso.nPerUsuAccCodigo,
		perusuacceso.nPerUsuAccEstado,
		parametro.cParJerarquia,
		parametro.cParNombre ,
    Concat(left(parametro.cParDescripcion,1),lower(right(parametro.cParDescripcion,(length(parametro.cParDescripcion)-1)))) AS NombreMenu,
		(length(parametro.cParJerarquia)) as CanJerarquia
	FROM persona
  INNER JOIN perusuario   ON persona.cPerCodigo    = perusuario.cPerCodigo
  INNER JOIN perusuacceso ON perusuario.cPerCodigo = perusuacceso.cPerCodigo
  INNER JOIN parametro    ON parametro.nParCodigo  = perusuacceso.nPerUsuAccCodigo AND  parametro.nParClase = perusuacceso.nPerUsuAccObjCodigo
	WHERE   persona.nPerTipo           = nPerTipo
  AND persona.nPerEstado             <> nPerEstado
  AND perusuario.nPerUsuEstado       <> nPerUsuEstado
  AND perusuacceso.nPerUsuAccEstado  <> nPerUsuAccEstado
  AND parametro.nParClase            = nParClase
  AND persona.cPerCodigo             = cPerCodigo
	AND LENGTH(parametro.cParJerarquia)= (nCanJerarquia+2)
	AND LEFT(parametro.cParJerarquia,nParJerarquia)= cJerarquia
	AND perusuacceso.nPerUsuAccGrupo	 = nPerUsuAccGrupo
	ORDER BY parametro.cParJerarquia ;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Get_Usuario_By_Clave_UserName
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Get_Usuario_By_Clave_UserName`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Get_Usuario_By_Clave_UserName`(cUserName varchar(50),cUserClave varchar(50))
BEGIN
	SELECT  perusuario.cPerCodigo,
		 persona.cPerNombre,
		 persona.cPerApellidos
	FROM    perusuario
	Inner Join persona ON persona.cPerCodigo = perusuario.cPerCodigo
	WHERE   perusuario.cPerUsuCodigo  =cUserName
  AND perusuario.cPerUsuClave   = cUserClave
  AND perusuario.nPerUsuEstado  <> 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Ins_DocPeriodo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Ins_DocPeriodo`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Ins_DocPeriodo`(cDocCodigo varchar(15), nPrdInic INT(11) , nPrdFin INT(11))
BEGIN

	INSERT INTO docperiodo(docperiodo.cDocCodigo, docperiodo.nPrdInic, docperiodo.nPrdFin)
	VALUES (cDocCodigo, nPrdInic, nPrdFin);


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Ins_Transaccion
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Ins_Transaccion`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Ins_Transaccion`(nOpeCodigo int(11), cPerCodigo  varchar(20), cComputer varchar(250), cTraDescripcion varchar(250))
BEGIN

	insert into transaccion
		(cTraCodigo, nOpeCodigo, cPerCodigo, dTraFecha, cComputer, cTraDescripcion)
	values
		(CONCAT( CAST(replace(replace(replace(now(),'-',''),' ',''),':','') AS CHAR), LEFT(CAST(  REPLACE(UUID(),'-','') AS CHAR),36)),
		  nOpeCodigo,
		  cPerCodigo,
		  now(),
		  cComputer,
		  cTraDescripcion );

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Listar_Departamento
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Listar_Departamento`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Listar_Departamento`(IdDepartamento VARCHAR(50), Nombre VARCHAR(150), IdPais VARCHAR(50), nDepEstado VARCHAR(50), OrderBy VARCHAR(150), Ordenar VARCHAR(50), Inicio INT(11), Cuantos INT(11))
BEGIN
	/* '', '', '', '-1','Nombre', 'ASC', -1, -1 */
	IF(Inicio<>-1 AND Cuantos<>-1) THEN
		SET @sentencia = CONCAT('select * from departamento
														WHERE
																( ("',IdDepartamento,'" = "" ) OR (departamento.IdDepartamento = "', IdDepartamento ,'" ))
														AND (	("',Nombre,'" = "") OR (departamento.Nombre LIKE "%', Nombre,'%" ))
														AND	( ("',IdPais,'" = "" ) OR (departamento.IdPais = "',IdPais,'") )
														AND	( ("',nDepEstado,'" = "-1" ) OR (departamento.nDepEstado IN (',nDepEstado,') ) )
														ORDER BY ',OrderBy,' ',Ordenar,'
														LIMIT ',Inicio,',',Cuantos);
		prepare consulta FROM @sentencia;
		execute consulta;
	ELSE
		SET @sentencia = CONCAT('select * from departamento
														WHERE
																( ("',IdDepartamento,'" = "" ) OR (departamento.IdDepartamento = "', IdDepartamento ,'" ))
														AND (	("',Nombre,'" = "") OR (departamento.Nombre LIKE "%', Nombre,'%" ))
														AND	( ("',IdPais,'" = "" ) OR (departamento.IdPais = "',IdPais,'") )
														AND	( ("',nDepEstado,'" = "-1" ) OR (departamento.nDepEstado IN (',nDepEstado,') ) )
														ORDER BY ',OrderBy,' ',Ordenar);
		prepare consulta FROM @sentencia;
		execute consulta;
	END if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Listar_Distrito
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Listar_Distrito`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Listar_Distrito`(IdDistrito VARCHAR(50), Nombre VARCHAR(150), IdProvincia VARCHAR(50), nDisEstado VARCHAR(50), OrderBy VARCHAR(150), Ordenar VARCHAR(50), Inicio INT(11), Cuantos INT(11))
BEGIN
	/* '', '', '', '-1','Nombre', 'ASC', -1, -1 */
	IF(Inicio<>-1 AND Cuantos<>-1) THEN
		SET @sentencia = CONCAT('select * from distrito
														WHERE
																( ("',IdDistrito,'" = "" ) OR (distrito.IdDistrito = "', IdDistrito ,'" ))
														AND (	("',Nombre,'" = "") OR (distrito.Nombre LIKE "%', Nombre,'%" ))
														AND	( ("',IdProvincia,'" = "" ) OR (distrito.IdProvincia = "',IdProvincia,'") )
														AND	( ("',nDisEstado,'" = "-1" ) OR (distrito.nDisEstado IN (',nDisEstado,') ) )
														ORDER BY ',OrderBy,' ',Ordenar,'
														LIMIT ',Inicio,',',Cuantos);
		prepare consulta FROM @sentencia;
		execute consulta;
	ELSE
		SET @sentencia = CONCAT('select * from distrito
														WHERE
																( ("',IdDistrito,'" = "" ) OR (distrito.IdDistrito = "', IdDistrito ,'" ))
														AND (	("',Nombre,'" = "") OR (distrito.Nombre LIKE "%', Nombre,'%" ))
														AND	( ("',IdProvincia,'" = "" ) OR (distrito.IdProvincia = "',IdProvincia,'") )
														AND	( ("',nDisEstado,'" = "-1" ) OR (distrito.nDisEstado IN (',nDisEstado,') ) )
														ORDER BY ',OrderBy,' ',Ordenar);
		prepare consulta FROM @sentencia;
		execute consulta;
	END if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Listar_Provincia
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Listar_Provincia`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Listar_Provincia`(IdProvincia VARCHAR(50), Nombre VARCHAR(150), IdDepartamento VARCHAR(50), nProEstado VARCHAR(50), OrderBy VARCHAR(150), Ordenar VARCHAR(50), Inicio INT(11), Cuantos INT(11))
BEGIN
	/* '', '', '', '-1','Nombre', 'ASC', -1, -1 */
	IF(Inicio<>-1 AND Cuantos<>-1) THEN
		SET @sentencia = CONCAT('select * from provincia
														WHERE
																( ("',IdProvincia,'" = "" ) OR (provincia.IdProvincia = "', IdProvincia ,'" ))
														AND (	("',Nombre,'" = "") OR (provincia.Nombre LIKE "%', Nombre,'%" ))
														AND	( ("',IdDepartamento,'" = "" ) OR (provincia.IdDepartamento = "',IdDepartamento,'") )
														AND	( ("',nProEstado,'" = "-1" ) OR (provincia.nProEstado IN (',nProEstado,') ) )
														ORDER BY ',OrderBy,' ',Ordenar,'
														LIMIT ',Inicio,',',Cuantos);
		prepare consulta FROM @sentencia;
		execute consulta;
	ELSE
		SET @sentencia = CONCAT('select * from provincia
														WHERE
																( ("',IdProvincia,'" = "" ) OR (provincia.IdProvincia = "', IdProvincia ,'" ))
														AND (	("',Nombre,'" = "") OR (provincia.Nombre LIKE "%', Nombre,'%" ))
														AND	( ("',IdDepartamento,'" = "" ) OR (provincia.IdDepartamento = "',IdDepartamento,'") )
														AND	( ("',nProEstado,'" = "-1" ) OR (provincia.nProEstado IN (',nProEstado,') ) )
														ORDER BY ',OrderBy,' ',Ordenar);
		prepare consulta FROM @sentencia;
		execute consulta;
	END if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Set_Parametro
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Set_Parametro`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Set_Parametro`( nParClase int(11) ,cParNombre varchar(1000), cParDescripcion varchar(1000))
BEGIN
  DECLARE nParCodigo INT;
	DECLARE cParJerarquia VARCHAR(20);
-- Generar codigo para el parametro
  SELECT 	IFNULL( MAX(parametro.nParCodigo)+1 , 1 ) INTO nParCodigo
	FROM		parametro
	WHERE		parametro.nParClase = nParClase;
-- Generar jerarquia para el parametro
  SELECT 	LPAD(IFNULL( MAX(parametro.cParJerarquia)+1 , 1001 ),4,'0') INTO cParJerarquia
	FROM 		parametro
	WHERE 	parametro.nParClase=nParClase AND parametro.nParCodigo <> 0 ;

		INSERT INTO parametro (parametro.nParCodigo,
												 parametro.nParClase,
												 parametro.cParJerarquia,
												 parametro.cParNombre,
												 parametro.cParDescripcion,
												 parametro.nParTipo)
  VALUES(nParCodigo, nParClase, cParJerarquia, cParNombre, cParDescripcion,	1000);

	SELECT nParCodigo, cParJerarquia;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_Validar_Parametro
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_Validar_Parametro`;
DELIMITER ;;
CREATE  PROCEDURE `usp_Validar_Parametro`(nParClase int(11), cParNombre varchar(500), cParDescripcion varchar(500))
BEGIN

		SELECT 	parametro.nParCodigo,
						parametro.cParNombre,
						cParDescripcion
		FROM parametro
		WHERE parametro.nParTipo = 1000
		AND	parametro.nParClase = nParClase
		AND ( ( cParNombre 			= "-" ) OR ( parametro.cParNombre 			= cParNombre ) )
		AND	( ( cParDescripcion = "-" ) OR ( parametro.cParDescripcion 	= cParDescripcion ) );

END
;;
DELIMITER ;
