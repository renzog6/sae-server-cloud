/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : sae_neumatico

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 15/11/2022 19:27:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for deposito
-- ----------------------------
DROP TABLE IF EXISTS `deposito`;
CREATE TABLE `deposito`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `info` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of deposito
-- ----------------------------
INSERT INTO `deposito` VALUES (1, 'General', 'Planta de Silos / Etc');
INSERT INTO `deposito` VALUES (2, 'En Uso', 'En Uso en Equipo');
INSERT INTO `deposito` VALUES (3, 'Para Retacar', 'Para Retacar');
INSERT INTO `deposito` VALUES (4, 'En Retacado', 'En Retacado');
INSERT INTO `deposito` VALUES (5, 'Baja', 'Sin uso / Descartados');
INSERT INTO `deposito` VALUES (6, 'Otro', 'Nose');

-- ----------------------------
-- Table structure for equipo
-- ----------------------------
DROP TABLE IF EXISTS `equipo`;
CREATE TABLE `equipo`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `patente` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `tipo` enum('Acoplado','Camion','Camioneta','Carreton','Semirremolque','Tractor','Herramienta','Maquinaria','Otro') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT 'Otro',
  `chofer` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `estado` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of equipo
-- ----------------------------
INSERT INTO `equipo` VALUES (1, 'Eq.1', 'AF490AM', 'Acoplado', 'Chofer-Eq.1', 'GROSS-2022-Barranda Volcable 9.30 (D2-D2)--8A9101703NAAG1079--', 1);
INSERT INTO `equipo` VALUES (2, 'Eq.2', 'AF490AN', 'Acoplado', 'Chofer-Eq.2', 'GROSS-2022-Barranda Volcable 9.30 (D2-D2)--8A9101703NAAG1080--', 1);
INSERT INTO `equipo` VALUES (3, 'Eq.3', 'AF490AK', 'Acoplado', 'Chofer-Eq.3', 'GROSS-2022-Barranda Volcable 9.30 (D2-D2)--8A9101703NAAG1081--', 1);
INSERT INTO `equipo` VALUES (4, 'Eq.4', 'AF490AL', 'Acoplado', 'Chofer-Eq.4', 'GROSS-2022-Barranda Volcable 9.30 (D2-D2)--8A9101703NAAG1082--', 1);
INSERT INTO `equipo` VALUES (5, 'Eq.5', 'AE388MZ', 'Acoplado', 'Chofer-Eq.5', 'OMBU-2020-ABV4E960--8D9422AB6LP097838--', 1);
INSERT INTO `equipo` VALUES (6, 'Eq.6', 'AE437OU', 'Acoplado', 'Chofer-Eq.6', 'OMBU-2020-ABV4E960--8D9422AB6LP097839--', 1);
INSERT INTO `equipo` VALUES (7, 'Eq.7', 'AD206OJ', 'Acoplado', 'Chofer-Eq.7', 'Sola y Brusa-2018-Barrandas Volcables 4 Ejes--8BAK0934AJ1000771--', 1);
INSERT INTO `equipo` VALUES (8, 'Eq.8', 'PND459', 'Camion', 'Chofer-Eq.8', 'Ford-2016-Cargo 1723--9BFEAXVOFB591565-36527141', 1);
INSERT INTO `equipo` VALUES (9, 'Eq.9', 'KAV 158', 'Camion', 'Chofer-Eq.9', 'Scania-2011-G420 A4x2--+9BSG4X200++C3683602+-8167252', 1);
INSERT INTO `equipo` VALUES (10, 'Eq.10', 'KML 007', 'Camion', 'Chofer-Eq.10', 'Scania-2011-G420 B4x2--+9BSG4X200++C3695833+-8180048', 1);
INSERT INTO `equipo` VALUES (11, 'Eq.11', 'MBM 580', 'Camion', 'Chofer-Eq.11', 'Scania-2013-G410 A4X2--+9BSG4X200++D3818062+-8203233', 1);
INSERT INTO `equipo` VALUES (12, 'Eq.12', 'NCM 534', 'Camion', 'Chofer-Eq.12', 'Scania-2013-G410 B4X2--+9BSG4X200++E3841120+-8227087', 1);
INSERT INTO `equipo` VALUES (13, 'Eq.13', 'AD147KV', 'Camion', 'Chofer-Eq.13', 'Scania-2018-R400 B4X2--+9BSR4X200++K3940810+-8331283', 1);
INSERT INTO `equipo` VALUES (14, 'Eq.14', 'AD880KO', 'Camion', 'Chofer-Eq.14', 'Scania-2019-G360 B4X2--+9BSG4X200++L3962662+-8352686', 1);
INSERT INTO `equipo` VALUES (15, 'Eq.15', 'AE487HG', 'Camion', 'Chofer-Eq.15', 'Scania-2021-G410 B4X2--+9BSG4X200+M3978828+-8368479', 1);
INSERT INTO `equipo` VALUES (16, 'Eq.16', 'AE487HH', 'Camion', 'Chofer-Eq.16', 'Scania-2021-G410 B4X2--+9BSG4X200++M3978832+-8368475', 1);
INSERT INTO `equipo` VALUES (17, 'Eq.17', 'AF232ME', 'Camion', 'Chofer-Eq.17', 'Scania-2022-R450 A6X2--+9BSR6X200++N4011652+-8400822', 1);
INSERT INTO `equipo` VALUES (18, 'Eq.18', 'AE535EW', 'Camioneta', 'Chofer-Eq.18', 'BMW-2021-X2--WBAYN1109L5P30491-A038P999B48A20E', 1);
INSERT INTO `equipo` VALUES (19, 'Eq.19', 'AE535EX', 'Camioneta', 'Chofer-Eq.19', 'BMW-2021-X3--WBSTS0107M9D5257-J0833617S58B30A', 1);
INSERT INTO `equipo` VALUES (20, 'Eq.20', 'AE888GX', 'Camioneta', 'Chofer-Eq.20', 'Ford-2021-Ranger Raptor 4x4--MPBUR2369MX325734-YN2SXM325734', 1);
INSERT INTO `equipo` VALUES (21, 'Eq.21', 'MJD 071', 'Camioneta', 'Chofer-Eq.21', 'Toyota-2013-Hilux 4x2--8AJCR32G3D0015966-2KD-A002160', 1);
INSERT INTO `equipo` VALUES (22, 'Eq.22', 'NXM 338', 'Camioneta', 'Chofer-Eq.22', 'Toyota-2014-Hilux 4x2--8AJCR32G3F0019034-2KD-A494112', 1);
INSERT INTO `equipo` VALUES (23, 'Eq.23', 'AA920QE', 'Camioneta', 'Chofer-Eq.23', 'Toyota-2017-Hilux 4x2--8AJEB8DB7H4156923-2GD-4220304', 1);
INSERT INTO `equipo` VALUES (24, 'Eq.24', 'AB602TO', 'Camioneta', 'Chofer-Eq.24', 'Toyota-2017-Hilux 4x2--8AJED8DB0H4157427-2GD-4281370', 1);
INSERT INTO `equipo` VALUES (25, 'Eq.25', 'AD164JK', 'Camioneta', 'Chofer-Eq.25', 'Toyota-2018-Hilux 4x2--8AJEB8DB4K4160077-2GD-C401989', 1);
INSERT INTO `equipo` VALUES (26, 'Eq.26', 'AD147KU', 'Camioneta', 'Chofer-Eq.26', 'Toyota-2018-Hilux 4x2--8AJEB8DB6K4160596-2GD-G069823', 1);
INSERT INTO `equipo` VALUES (27, 'Eq.27', 'AD164JJ', 'Camioneta', 'Chofer-Eq.27', 'Toyota-2018-Hilux 4x2--8AJEB8DB0K4160075-2GD-C402729', 1);
INSERT INTO `equipo` VALUES (28, 'Eq.28', 'AD655MH', 'Camioneta', 'Chofer-Eq.28', 'Toyota-2019-Hilux 4x2--8AJEB8DBXK4161170-2GD-G096608', 1);
INSERT INTO `equipo` VALUES (29, 'Eq.29', 'AD974YD', 'Camioneta', 'Chofer-Eq.29', 'Toyota-2019-Hilux 4x2--8AJEB8DBXL4161736-2GD-0738362', 1);
INSERT INTO `equipo` VALUES (30, 'Eq.30', 'AE953OL', 'Camioneta', 'Chofer-Eq.30', 'Toyota-2021-Hilux 4x2--8AJCB3DB7M5740172-2GD-1012046', 1);
INSERT INTO `equipo` VALUES (31, 'Eq.31', 'AF180RG', 'Camioneta', 'Chofer-Eq.31', 'Volkswagen-2022-Amarok V6--8AWDW22H0NA003554-DDX178915', 1);
INSERT INTO `equipo` VALUES (32, 'Eq.32', 'IYC 209', 'Carreton', 'Chofer-Eq.32', 'Marcelini-2010-SRC12N2--8B9S1835CA0175047-', 1);
INSERT INTO `equipo` VALUES (33, 'Eq.33', 'KMK 984', 'Carreton', 'Chofer-Eq.33', 'Marcelini-2011-SRC12N2/2012--8B9S1835CB0175151-', 1);
INSERT INTO `equipo` VALUES (34, 'Eq.34', 'AA459DH', 'Semirremolque', 'Chofer-Eq.34', 'Aiello-2016-SR-310--8A9G1203SGA100043-', 1);
INSERT INTO `equipo` VALUES (35, 'Eq.35', 'AA459DI', 'Semirremolque', 'Chofer-Eq.35', 'Aiello-2016-SR-310--8A9G1203SGA100051-', 1);
INSERT INTO `equipo` VALUES (36, 'Eq.36', 'AA459DJ', 'Semirremolque', 'Chofer-Eq.36', 'Aiello-2016-SR-310--8A9G1203SGA100049-', 1);
INSERT INTO `equipo` VALUES (37, 'Eq.37', 'AD655MI', 'Semirremolque', 'Chofer-Eq.37', 'Aiello-2019-SR-310--8A9G136SKA100044--', 1);

-- ----------------------------
-- Table structure for instalado
-- ----------------------------
DROP TABLE IF EXISTS `instalado`;
CREATE TABLE `instalado`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date NULL DEFAULT NULL,
  `equipo_id` bigint(20) NULL DEFAULT NULL,
  `neumatico_id` bigint(20) NULL DEFAULT NULL,
  `posicion` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of instalado
-- ----------------------------
INSERT INTO `instalado` VALUES (15, '2022-11-15', 9, 27, 'A01', '');
INSERT INTO `instalado` VALUES (16, '2022-11-15', 9, 43, 'B01', '');
INSERT INTO `instalado` VALUES (17, '2022-11-15', 9, 34, 'A02', '');
INSERT INTO `instalado` VALUES (18, '2022-11-15', 9, 46, 'B04', '');
INSERT INTO `instalado` VALUES (19, '2022-11-15', 9, 84, 'A05', '');
INSERT INTO `instalado` VALUES (20, '2022-11-15', 10, 47, 'B04', '');

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of marca
-- ----------------------------
INSERT INTO `marca` VALUES (1, 'Desconocida', NULL);
INSERT INTO `marca` VALUES (2, 'BF Goodrich', NULL);
INSERT INTO `marca` VALUES (3, 'Bridgestone', NULL);
INSERT INTO `marca` VALUES (4, 'Continental', NULL);
INSERT INTO `marca` VALUES (5, 'Dunlop', NULL);
INSERT INTO `marca` VALUES (6, 'Fate', NULL);
INSERT INTO `marca` VALUES (7, 'Firestone', NULL);
INSERT INTO `marca` VALUES (8, 'Goodyear', NULL);
INSERT INTO `marca` VALUES (9, 'Hankook', NULL);
INSERT INTO `marca` VALUES (10, 'Kumho', NULL);
INSERT INTO `marca` VALUES (11, 'Michelin', NULL);
INSERT INTO `marca` VALUES (12, 'Pirelli', NULL);
INSERT INTO `marca` VALUES (13, 'Toyo', NULL);
INSERT INTO `marca` VALUES (14, 'Yokohama', NULL);

-- ----------------------------
-- Table structure for medida
-- ----------------------------
DROP TABLE IF EXISTS `medida`;
CREATE TABLE `medida`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `alt` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `info` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of medida
-- ----------------------------
INSERT INTO `medida` VALUES (1, '295 / 80 R22,5', NULL, 'Camiones');
INSERT INTO `medida` VALUES (2, '255 / 50 R17', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (3, '285 / 45 R19', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (4, '255 / 50 R19', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (5, '315 / 35 R20', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (6, '275 / 20 R20', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (7, '265/75 R16', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (8, '215 / 80 R16', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (9, '235 R15', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (10, '265 / 65 R17', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (11, '205 R16', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (12, '245 / 70 R16', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (13, '9-50-8', NULL, 'Sembradora');
INSERT INTO `medida` VALUES (14, '16.5L-16.1 SL', NULL, 'Sembradora');
INSERT INTO `medida` VALUES (15, '445 / 50R 22.5', NULL, 'Sembradora');
INSERT INTO `medida` VALUES (16, '14.00 - 24 TG', NULL, 'Desencontrada');
INSERT INTO `medida` VALUES (17, '11L - 15 SL', NULL, 'Sembradora');
INSERT INTO `medida` VALUES (18, '265/70 R15', NULL, 'Sembradora');
INSERT INTO `medida` VALUES (19, '380 / 90 R46 ( 14.9 ', NULL, 'Pulverizador');
INSERT INTO `medida` VALUES (20, '400 / 55 22.5', NULL, 'Sembradora');
INSERT INTO `medida` VALUES (21, '620 / 70 R42', NULL, 'Tractor');
INSERT INTO `medida` VALUES (22, '480 / 70 R30', NULL, 'Tractor');
INSERT INTO `medida` VALUES (23, ' 18 - 4 - 34', NULL, 'Tractor');
INSERT INTO `medida` VALUES (24, '600 / 70 R30', NULL, 'Tractor');
INSERT INTO `medida` VALUES (25, '520 / 85 R42 ( 20.8 ', NULL, 'Tractor');
INSERT INTO `medida` VALUES (26, ' 440 / 80 R26 ( 16.9', NULL, 'Tractor');
INSERT INTO `medida` VALUES (27, ' 420 / 90 R30 ( 16.9', NULL, 'Tractor');
INSERT INTO `medida` VALUES (28, ' 420 / 90 R30 ( 16.9', NULL, 'Tractor');
INSERT INTO `medida` VALUES (29, '11L - 15 SD', NULL, 'Sembradora');
INSERT INTO `medida` VALUES (30, '31 x 13,5 x 15', NULL, 'Sembradora');
INSERT INTO `medida` VALUES (31, '16.9 / 14 - 24 ', NULL, 'Rome');
INSERT INTO `medida` VALUES (32, '14.00 - 24 TG', NULL, 'Motoniveladora');
INSERT INTO `medida` VALUES (33, '9.5 / 9 - 24', NULL, 'Motoniveladora');
INSERT INTO `medida` VALUES (34, '14.00 - 24', NULL, 'Rolo Triturador');
INSERT INTO `medida` VALUES (35, '185 R14', NULL, 'Carros');
INSERT INTO `medida` VALUES (36, '520 / 85 R38 ( 20.8 ', NULL, 'Tractor');
INSERT INTO `medida` VALUES (37, '225 / 70 R17', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (38, '24 x 5 x 32', NULL, 'Cosechadora');
INSERT INTO `medida` VALUES (39, '245 / 70 R17', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (40, '600 / 70 R30', NULL, 'Tractor');
INSERT INTO `medida` VALUES (41, '1000 x 16', NULL, 'Tractor');
INSERT INTO `medida` VALUES (42, '23 x 1 x 30', NULL, 'Tractor');
INSERT INTO `medida` VALUES (43, '28L - 26', NULL, 'Cosechadora');
INSERT INTO `medida` VALUES (44, '520 / 85 R42 ( 20.8 ', NULL, 'Cosechadora');
INSERT INTO `medida` VALUES (45, '620 / 70 R46', NULL, 'Tractor');
INSERT INTO `medida` VALUES (46, '285 / 70 R17', NULL, 'Camioneta');
INSERT INTO `medida` VALUES (47, '255/70 R22.5', NULL, 'Carreton');
INSERT INTO `medida` VALUES (48, '275/70 R22.5', NULL, 'Carreton');
INSERT INTO `medida` VALUES (49, '14.0 / 9 - 26', NULL, 'Tractor');
INSERT INTO `medida` VALUES (50, ' 420 / 90 R30 ( 16.9', NULL, 'Tactor');

-- ----------------------------
-- Table structure for movimiento
-- ----------------------------
DROP TABLE IF EXISTS `movimiento`;
CREATE TABLE `movimiento`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `fecha` datetime(0) NULL DEFAULT NULL,
  `tipo` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `neumatico` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `cantidad` int(10) NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of movimiento
-- ----------------------------
INSERT INTO `movimiento` VALUES (1, '2022-09-01 16:31:55', 'ENTRADA', 'XR', 5, 'Compra a Juna');
INSERT INTO `movimiento` VALUES (2, '2022-09-19 17:43:27', 'ENTRADA', '245 / 70 R17', 5, '');
INSERT INTO `movimiento` VALUES (3, '2022-09-19 17:43:53', 'SALIDA', '245 / 70 R17', 5, '');
INSERT INTO `movimiento` VALUES (4, '2022-08-31 17:44:12', 'ENTRADA', '245/70R17', 5, 'Compra a Pedro');
INSERT INTO `movimiento` VALUES (5, '2022-09-19 17:49:16', 'SALIDA', '245 / 70 R17', 5, 'P/Camion XX313ZX');
INSERT INTO `movimiento` VALUES (6, '2022-09-19 17:51:43', 'ENTRADA', '245/70R17 - Bridgestone - H/T', 9, 'Compra a Pedro');
INSERT INTO `movimiento` VALUES (7, '2022-09-19 18:23:16', 'ENTRADA', '245 / 70 R17 - Hankook - H/T W', 5, 'QW');
INSERT INTO `movimiento` VALUES (8, '2022-09-19 18:40:04', 'ENTRADA', '255/80/R17 - Yokohama - TT', 5, 'Compra a Campana');
INSERT INTO `movimiento` VALUES (9, '2022-09-27 16:00:21', 'ENTRADA', '245 / 70 R17 - Hankook - H/T W', 5, 'DB Grano Fino');
INSERT INTO `movimiento` VALUES (10, '2022-09-27 16:03:23', 'ENTRADA', '245 / 70 R17 - Hankook - H/T W', 5, '');
INSERT INTO `movimiento` VALUES (11, '2022-09-27 16:05:42', 'SALIDA', '245/70R17 - Fate - H/T X', 5, '');
INSERT INTO `movimiento` VALUES (12, '2022-09-27 16:07:53', 'ENTRADA', '245/70R17 - Michelin - H/TX', 2, '');

-- ----------------------------
-- Table structure for neumatico
-- ----------------------------
DROP TABLE IF EXISTS `neumatico`;
CREATE TABLE `neumatico`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `medida_id` bigint(10) NULL DEFAULT NULL,
  `marca_id` bigint(10) NULL DEFAULT NULL,
  `modelo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `uso` enum('Mixto','Direccional','Traccion') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT 'Mixto',
  `estado` enum('Nuevo','Usado','Retacado','Baja') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT 'Nuevo',
  `deposito_id` bigint(10) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `create_at` datetime(0) NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_neumatico_marca`(`marca_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of neumatico
-- ----------------------------
INSERT INTO `neumatico` VALUES (15, 'XS21', 1, 3, 'H/TX', 'XXX', 'Direccional', 'Usado', 3, '2022-10-20 16:44:20', '2022-10-20 16:44:20');
INSERT INTO `neumatico` VALUES (18, 'XS', 2, 3, 'H/T', 'XS', 'Direccional', 'Usado', 3, '2022-10-20 16:44:31', '2022-10-20 16:44:31');
INSERT INTO `neumatico` VALUES (22, 'Camion', 5, 3, 'H/T', NULL, 'Mixto', 'Retacado', 1, '2022-10-20 16:44:33', '2022-10-20 16:44:33');
INSERT INTO `neumatico` VALUES (27, 'Camion', 1, 5, 'H/T', NULL, 'Mixto', 'Nuevo', 2, '2022-10-06 18:32:22', '2022-10-06 18:32:22');
INSERT INTO `neumatico` VALUES (33, 'DE23', 5, 5, 'TT', NULL, 'Mixto', 'Retacado', 1, '2022-10-20 16:44:37', '2022-10-20 16:44:37');
INSERT INTO `neumatico` VALUES (34, 'Camioneta', 1, 12, 'TT', NULL, 'Mixto', 'Baja', 2, '2022-10-20 17:16:11', '2022-10-20 17:16:11');
INSERT INTO `neumatico` VALUES (36, 'SE', 1, 6, 'H/T X', 'DB Grano Fino', 'Mixto', 'Nuevo', 2, '2022-10-19 16:54:20', '2022-10-19 16:54:20');
INSERT INTO `neumatico` VALUES (39, 'Camioneta', 1, 5, 'TT', 'QW', 'Mixto', 'Retacado', 3, '2022-11-01 18:47:42', '2022-10-19 09:21:44');
INSERT INTO `neumatico` VALUES (40, 'Auto', 1, 14, 'RES', 'X', 'Direccional', 'Nuevo', 2, '2022-10-06 18:32:22', '2022-10-06 18:32:22');
INSERT INTO `neumatico` VALUES (43, 'Camion', 1, 9, 'www', NULL, 'Traccion', 'Nuevo', 2, '2022-10-06 18:32:22', '2022-10-06 18:32:22');
INSERT INTO `neumatico` VALUES (44, 'EW', 1, 9, 'XR', NULL, 'Traccion', 'Usado', 3, '2022-11-01 18:43:40', '2022-10-19 09:21:48');
INSERT INTO `neumatico` VALUES (45, 'FA10', 1, 6, 'TT', 'X', 'Mixto', 'Usado', 2, '2022-10-20 16:44:23', '2022-10-20 16:44:23');
INSERT INTO `neumatico` VALUES (46, 'rueda-02', 1, 9, 'TT', 'XR', 'Direccional', 'Retacado', 2, '2022-10-20 16:44:26', '2022-10-20 16:44:26');
INSERT INTO `neumatico` VALUES (47, 'SAEAS', 1, 2, 'H/T', '', 'Traccion', 'Usado', 2, '2022-11-01 11:25:12', '2022-11-01 11:25:12');
INSERT INTO `neumatico` VALUES (48, ' XXX3', 5, 6, 'TT', '', 'Mixto', 'Usado', 1, '2022-11-13 18:42:11', '2022-10-20 11:19:13');
INSERT INTO `neumatico` VALUES (49, ' QcXxf', 5, 6, 'TT', '', 'Mixto', 'Nuevo', 1, '2022-10-20 11:19:13', '2022-10-20 11:19:13');
INSERT INTO `neumatico` VALUES (50, ' BlKEZ', 6, 10, 'TT', '', 'Mixto', 'Nuevo', 1, '2022-10-20 11:40:25', '2022-10-20 11:40:25');
INSERT INTO `neumatico` VALUES (51, ' 1VQys', 11, 3, 'H/T', '', 'Mixto', 'Nuevo', 1, '2022-10-21 15:56:46', '2022-10-21 15:56:46');
INSERT INTO `neumatico` VALUES (52, ' Ko082', 13, 11, 'Siembra22', 'Campana', 'Mixto', 'Usado', 3, '2022-11-01 10:45:39', '2022-11-01 10:45:39');
INSERT INTO `neumatico` VALUES (53, ' LG5S0', 13, 11, 'Siembra22', 'Campana', 'Mixto', 'Usado', 3, '2022-11-01 11:25:40', '2022-11-01 11:25:40');
INSERT INTO `neumatico` VALUES (54, ' 7v0zI', 9, 2, 'H/T', 'Juan', 'Traccion', 'Nuevo', 1, '2022-10-10 18:28:42', '2022-10-10 18:28:42');
INSERT INTO `neumatico` VALUES (55, ' Pepa', 9, 2, 'H/T', 'Juan', 'Traccion', 'Usado', 1, '2022-11-10 18:32:53', '2022-10-10 18:28:42');
INSERT INTO `neumatico` VALUES (56, ' OGhSP', 1, 3, 'TT', 'Pedro', 'Mixto', 'Nuevo', 1, '2022-11-01 18:37:04', '2022-11-01 18:37:04');
INSERT INTO `neumatico` VALUES (57, ' ZTrYB', 2, 6, 'H/T', '', 'Direccional', 'Nuevo', 1, '2022-11-01 18:38:50', '2022-11-01 18:38:50');
INSERT INTO `neumatico` VALUES (58, ' J3fND', 8, 5, 'H/TX', '', 'Mixto', 'Nuevo', 1, '2022-11-01 18:45:43', '2022-11-01 18:41:19');
INSERT INTO `neumatico` VALUES (59, ' ZEXDp', 16, 5, 'H/T W', '', 'Traccion', 'Nuevo', 1, '2022-11-01 18:46:52', '2022-11-01 18:46:52');
INSERT INTO `neumatico` VALUES (60, ' BJLQE', 7, 5, 'H/TX', '', 'Mixto', 'Nuevo', 1, '2022-11-02 11:08:38', '2022-11-02 11:08:38');
INSERT INTO `neumatico` VALUES (61, '', 6, 6, 'H/TX', '', 'Mixto', 'Nuevo', 1, '2022-11-02 11:17:56', '2022-11-02 11:17:56');
INSERT INTO `neumatico` VALUES (62, ' 6YSSy', 6, 3, 'RES', 'XZ', 'Traccion', 'Nuevo', 1, '2022-11-02 11:20:20', '2022-11-02 11:20:20');
INSERT INTO `neumatico` VALUES (63, ' 80gV3', 6, 3, 'RES', 'XZ', 'Traccion', 'Nuevo', 1, '2022-11-02 11:20:20', '2022-11-02 11:20:20');
INSERT INTO `neumatico` VALUES (64, ' xP8ue', 6, 3, 'RES', 'XZ', 'Traccion', 'Nuevo', 1, '2022-11-02 11:20:20', '2022-11-02 11:20:20');
INSERT INTO `neumatico` VALUES (65, ' W8Jcb', 6, 3, 'RES', 'XZ', 'Traccion', 'Nuevo', 1, '2022-11-02 11:20:20', '2022-11-02 11:20:20');
INSERT INTO `neumatico` VALUES (66, ' D8q6W', 6, 3, 'RES', 'XZ', 'Traccion', 'Nuevo', 1, '2022-11-02 11:20:20', '2022-11-02 11:20:20');
INSERT INTO `neumatico` VALUES (67, ' GQ8Ev', 6, 3, 'RES', 'XZ', 'Traccion', 'Nuevo', 1, '2022-11-02 11:20:20', '2022-11-02 11:20:20');
INSERT INTO `neumatico` VALUES (68, ' DR72E', 1, 5, 'H/T W', 'PP', 'Mixto', 'Nuevo', 1, '2022-11-02 11:26:01', '2022-11-02 11:26:01');
INSERT INTO `neumatico` VALUES (69, ' esvd8', 1, 5, 'H/T W', 'PP', 'Mixto', 'Nuevo', 1, '2022-11-02 11:26:01', '2022-11-02 11:26:01');
INSERT INTO `neumatico` VALUES (71, ' k3TKO', 16, 13, 'H/T W', 'PP', 'Mixto', 'Nuevo', 1, '2022-11-02 11:26:01', '2022-11-02 11:26:01');
INSERT INTO `neumatico` VALUES (72, ' J6M6R', 19, 10, 'TT', '', 'Direccional', 'Nuevo', 1, '2022-11-02 11:30:52', '2022-11-02 11:30:52');
INSERT INTO `neumatico` VALUES (73, ' wUtSn', 19, 10, 'TT', '', 'Direccional', 'Nuevo', 1, '2022-11-02 11:30:52', '2022-11-02 11:30:52');
INSERT INTO `neumatico` VALUES (74, ' rMVuO', 4, 2, 'TT', 'XS', 'Traccion', 'Nuevo', 1, '2022-11-02 11:32:09', '2022-11-02 11:32:09');
INSERT INTO `neumatico` VALUES (75, ' S311w', 4, 2, 'TT', 'XS', 'Traccion', 'Nuevo', 1, '2022-11-02 11:32:09', '2022-11-02 11:32:09');
INSERT INTO `neumatico` VALUES (76, ' vY8AZ', 7, 3, 'H/TX', '', 'Mixto', 'Nuevo', 1, '2022-11-02 11:33:15', '2022-11-02 11:33:15');
INSERT INTO `neumatico` VALUES (77, ' PMISK', 5, 5, 'H/T', '', 'Mixto', 'Usado', 3, '2022-11-02 11:33:38', '2022-11-02 11:33:38');
INSERT INTO `neumatico` VALUES (78, ' zP5wn', 5, 5, 'H/T', '', 'Mixto', 'Usado', 3, '2022-11-02 11:33:38', '2022-11-02 11:33:38');
INSERT INTO `neumatico` VALUES (79, ' aaGXl', 4, 2, 'H/T', '', 'Mixto', 'Usado', 3, '2022-11-02 11:38:41', '2022-11-02 11:38:41');
INSERT INTO `neumatico` VALUES (80, ' rt9pm', 4, 2, 'H/T', '', 'Mixto', 'Usado', 3, '2022-11-02 11:38:41', '2022-11-02 11:38:41');
INSERT INTO `neumatico` VALUES (81, ' C995f', 4, 2, 'H/T', '', 'Mixto', 'Usado', 3, '2022-11-02 11:38:41', '2022-11-02 11:38:41');
INSERT INTO `neumatico` VALUES (82, ' D70mB', 3, 5, 'H/TX', '', 'Mixto', 'Nuevo', 1, '2022-11-02 11:52:26', '2022-11-02 11:52:26');
INSERT INTO `neumatico` VALUES (83, ' dD5uq', 3, 6, 'RES', '', 'Mixto', 'Nuevo', 1, '2022-11-02 11:54:14', '2022-11-02 11:54:14');
INSERT INTO `neumatico` VALUES (84, ' CFXyj', 1, 2, 'TT', '', 'Direccional', 'Nuevo', 2, '2022-11-08 18:26:48', '2022-11-08 18:26:48');

-- ----------------------------
-- Table structure for seguimiento
-- ----------------------------
DROP TABLE IF EXISTS `seguimiento`;
CREATE TABLE `seguimiento`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fecha` datetime(0) NULL DEFAULT NULL,
  `neumatico` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `equipo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `posicion` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `km` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `estado` tinyint(1) NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
