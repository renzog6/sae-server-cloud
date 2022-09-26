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

 Date: 20/09/2022 10:31:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

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

-- ----------------------------
-- Table structure for neumatico
-- ----------------------------
DROP TABLE IF EXISTS `neumatico`;
CREATE TABLE `neumatico`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `equipo` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `medida` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `marca_id` bigint(10) NULL DEFAULT NULL,
  `modelo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `posicion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `stock` int(100) NULL DEFAULT 0,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_neumatico_marca`(`marca_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of neumatico
-- ----------------------------
INSERT INTO `neumatico` VALUES (13, 'Camion', '245/70R17', 6, 'H/T X', 'Atras', 15, 'XX', '2022-09-19 09:59:55');
INSERT INTO `neumatico` VALUES (14, 'Camion SA', '245 / 70 R17', 9, 'H/T W', 'Atras Q', 5, 'DB Grano Fino', '2022-09-19 18:23:47');
INSERT INTO `neumatico` VALUES (15, 'CamionX', '245/70R17', 11, 'H/TX', 'AtrasX', 8, 'X', '2022-09-15 09:15:11');
INSERT INTO `neumatico` VALUES (16, 'Camion A', '245/70R17', 2, 'H/T', 'Atras', 9, 'X', '2022-09-19 18:36:10');
INSERT INTO `neumatico` VALUES (17, 'Camion', '245/70R17', 13, 'H/T', 'Atras', 7, NULL, '2022-09-14 15:37:52');
INSERT INTO `neumatico` VALUES (18, 'Camion', '245/70R17', 4, 'H/T', 'Atras', 5, NULL, '2022-09-19 17:44:30');
INSERT INTO `neumatico` VALUES (19, 'Camion', '245/70R17', 5, 'H/T', 'Atras', 2, NULL, '2022-09-14 15:57:22');
INSERT INTO `neumatico` VALUES (22, 'Camion', '245/70R17', 3, 'H/T', 'Atras', 10, NULL, '2022-09-19 17:51:53');
INSERT INTO `neumatico` VALUES (27, 'Camion', '245/70R17', 5, 'H/T', 'Atras', 8, NULL, '2022-09-14 16:07:34');
INSERT INTO `neumatico` VALUES (30, 'Camion', '245/70R17', 5, 'H/T', 'Atras', 8, NULL, '2022-09-14 16:18:39');
INSERT INTO `neumatico` VALUES (31, 'Camion', '245/70R17', 9, 'H/T', 'Atras', 2, NULL, '2022-09-14 16:18:57');
INSERT INTO `neumatico` VALUES (32, 'Camion', '245/70R17', 4, 'H/T', 'Atras', 3, NULL, '2022-09-14 16:21:59');
INSERT INTO `neumatico` VALUES (33, 'Camioneta', '255/80/R17', 14, 'TT', 'Adelante atras', 5, NULL, '2022-09-19 18:36:49');
INSERT INTO `neumatico` VALUES (34, 'Camioneta', '255/80/R17', 12, 'TT', 'Adelante atras', 2, NULL, '2022-09-14 17:51:13');
INSERT INTO `neumatico` VALUES (36, 'Sembradora', '15L-28', 6, 'H/T X', 'Adelante', 0, 'DB Grano Fino', '2022-09-15 18:35:31');
INSERT INTO `neumatico` VALUES (38, 'Auto', '245/70R17', 11, 'H/T X', 'Trasera', 0, '', '2022-09-15 18:37:35');
INSERT INTO `neumatico` VALUES (39, 'Camioneta', '245 / 70 R22', 5, 'TT', 'AtrasX', 5, 'QW', '2022-09-16 17:22:11');
INSERT INTO `neumatico` VALUES (40, 'Auto', '175', 14, 'RES', 'Atras', 10, 'X', '2022-09-19 10:03:18');

SET FOREIGN_KEY_CHECKS = 1;
