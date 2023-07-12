/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : monster_hunter_rise_sunbreak

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 12/07/2023 21:35:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `min_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `max_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES (39, '怪异化的重龙骨', '101', '120');
INSERT INTO `material` VALUES (40, '怪异化的厚鳞', '101', '120');
INSERT INTO `material` VALUES (41, '怪异化的上等鳞', '31', '100');
INSERT INTO `material` VALUES (42, '怪异化的甲壳', '1', '30');
INSERT INTO `material` VALUES (43, '怪异化的净血', '31', '100');
INSERT INTO `material` VALUES (44, '怪异化的重骨', '101', '120');
INSERT INTO `material` VALUES (45, '破怪的硬龙骨', '161', '220');
INSERT INTO `material` VALUES (46, '破怪的龙骨', '111', '160');
INSERT INTO `material` VALUES (47, '怪异化的凶血', '91', '140');
INSERT INTO `material` VALUES (48, '怪异化的凶牙', '91', '140');
INSERT INTO `material` VALUES (49, '怪异化的重牙', '101', '120');
INSERT INTO `material` VALUES (50, '怪异化的龙骨', '1', '30');
INSERT INTO `material` VALUES (51, '怪异化的凶鳞', '51', '100');
INSERT INTO `material` VALUES (52, '怪异化的凶角', '51', '100');
INSERT INTO `material` VALUES (53, '怪异化的血', '1', '30');
INSERT INTO `material` VALUES (54, '怪异化的凶重骨', '161', '200');
INSERT INTO `material` VALUES (55, '怪异化的凶刚翼', '201', '220');
INSERT INTO `material` VALUES (56, '怪异化的爪', '1', '30');
INSERT INTO `material` VALUES (57, '怪异化的骨', '1', '30');
INSERT INTO `material` VALUES (58, '怪异化的上等皮', '31', '100');
INSERT INTO `material` VALUES (59, '怪异化的皮', '1', '30');
INSERT INTO `material` VALUES (60, '怪异化的重壳', '101', '120');
INSERT INTO `material` VALUES (61, '怪异化的牙', '1', '30');
INSERT INTO `material` VALUES (62, '怪异化的凶翼', '141', '200');
INSERT INTO `material` VALUES (63, '怪异化的净浓血', '101', '120');
INSERT INTO `material` VALUES (64, '怪异化的凶厚鳞', '161', '200');
INSERT INTO `material` VALUES (65, '怪异化的凶壳', '71', '110');
INSERT INTO `material` VALUES (66, '怪异化的凶净血', '141', '200');
INSERT INTO `material` VALUES (67, '怪异化的鳞', '1', '30');
INSERT INTO `material` VALUES (68, '怪异化的硬骨', '31', '100');
INSERT INTO `material` VALUES (69, '怪异化的凶尖角', '101', '120');
INSERT INTO `material` VALUES (70, '怪异化的厚皮', '101', '120');
INSERT INTO `material` VALUES (71, '怪异化的尖爪', '31', '100');
INSERT INTO `material` VALUES (72, '怪异化的凶翼膜', '91', '140');
INSERT INTO `material` VALUES (73, '怪异化的凶刚角', '161', '200');
INSERT INTO `material` VALUES (74, '怪异化的坚壳', '31', '100');
INSERT INTO `material` VALUES (75, '怪异化的坚龙骨', '31', '100');
INSERT INTO `material` VALUES (76, '怪异化的凶重牙', '201', '220');
INSERT INTO `material` VALUES (77, '怪异化的刚爪', '101', '120');
INSERT INTO `material` VALUES (78, '怪异化的锐牙', '31', '100');
INSERT INTO `material` VALUES (79, '怪异化的上等凶鳞', '101', '120');
INSERT INTO `material` VALUES (80, '怪异化的凶硬骨', '101', '120');
INSERT INTO `material` VALUES (81, '怪异化的凶骨', '51', '100');
INSERT INTO `material` VALUES (82, '怪异化的凶爪', '71', '110');
INSERT INTO `material` VALUES (83, '怪异化的凶重壳', '181', '200');
INSERT INTO `material` VALUES (84, '怪异化的凶坚壳', '111', '120');
INSERT INTO `material` VALUES (85, '怪异化的凶尖爪', '111', '120');
INSERT INTO `material` VALUES (86, '怪异化的凶锐牙', '141', '200');
INSERT INTO `material` VALUES (87, '怪异化的凶浓血', '201', '220');
INSERT INTO `material` VALUES (88, '怪异化的凶刚爪', '181', '200');

-- ----------------------------
-- Table structure for monster
-- ----------------------------
DROP TABLE IF EXISTS `monster`;
CREATE TABLE `monster`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `affect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of monster
-- ----------------------------
INSERT INTO `monster` VALUES (78, '冰呪龙', '');
INSERT INTO `monster` VALUES (79, '怪异克服天彗龙', '');
INSERT INTO `monster` VALUES (80, '人鱼龙', '怪异化的重壳, 怪异化的坚壳, 怪异化的甲壳');
INSERT INTO `monster` VALUES (81, '伞鸟', '怪异化的重龙骨, 怪异化的龙骨, 怪异化的坚龙骨');
INSERT INTO `monster` VALUES (82, '冥渊龙', '');
INSERT INTO `monster` VALUES (83, '冰人鱼龙', '怪异化的爪, 怪异化的尖爪, 怪异化的刚爪');
INSERT INTO `monster` VALUES (84, '冰牙龙', '怪异化的重牙, 怪异化的牙, 怪异化的锐牙');
INSERT INTO `monster` VALUES (85, '冰狼龙', '怪异化的凶骨, 怪异化的凶硬骨, 怪异化的凶重骨');
INSERT INTO `monster` VALUES (86, '刚缠兽', '怪异化的重牙, 怪异化的牙, 怪异化的锐牙');
INSERT INTO `monster` VALUES (87, '千刃龙', '怪异化的凶尖角, 怪异化的凶刚角, 怪异化的凶角');
INSERT INTO `monster` VALUES (88, '嗟怨震天怨虎龙', '怪异化的凶牙, 怪异化的凶重牙, 怪异化的凶锐牙');
INSERT INTO `monster` VALUES (89, '土砂龙', '怪异化的重龙骨, 怪异化的龙骨, 怪异化的坚龙骨');
INSERT INTO `monster` VALUES (90, '大名盾蟹', '怪异化的净浓血, 怪异化的血, 怪异化的净血');
INSERT INTO `monster` VALUES (91, '天廻龙', '');
INSERT INTO `monster` VALUES (92, '天狗兽', '怪异化的净浓血, 怪异化的血, 怪异化的净血');
INSERT INTO `monster` VALUES (93, '奇怪龙', '怪异化的净浓血, 怪异化的血, 怪异化的净血');
INSERT INTO `monster` VALUES (94, '妃蜘蛛', '怪异化的爪, 怪异化的尖爪, 怪异化的刚爪');
INSERT INTO `monster` VALUES (95, '将军镰蟹', '怪异化的重壳, 怪异化的坚壳, 怪异化的甲壳');
INSERT INTO `monster` VALUES (96, '岩龙', '怪异化的重龙骨, 怪异化的龙骨, 怪异化的坚龙骨');
INSERT INTO `monster` VALUES (97, '怨虎龙', '怪异化的重牙, 怪异化的牙, 怪异化的锐牙');
INSERT INTO `monster` VALUES (98, '怪异克服炎王龙', '破怪的硬龙骨, 破怪的龙骨');
INSERT INTO `monster` VALUES (99, '怪异克服钢龙', '破怪的硬龙骨, 破怪的龙骨');
INSERT INTO `monster` VALUES (100, '怪异克服霞龙', '破怪的硬龙骨, 破怪的龙骨');
INSERT INTO `monster` VALUES (101, '搔鸟', '怪异化的厚皮, 怪异化的上等皮, 怪异化的皮');
INSERT INTO `monster` VALUES (102, '月迅龙', '');
INSERT INTO `monster` VALUES (103, '棘茶龙', '怪异化的凶血, 怪异化的凶净血, 怪异化的凶浓血');
INSERT INTO `monster` VALUES (104, '棘龙', '怪异化的凶重壳, 怪异化的凶坚壳, 怪异化的凶壳');
INSERT INTO `monster` VALUES (105, '毒妖鸟', '怪异化的厚鳞, 怪异化的上等鳞, 怪异化的鳞');
INSERT INTO `monster` VALUES (106, '毒狗龙王', '怪异化的厚皮, 怪异化的上等皮, 怪异化的皮');
INSERT INTO `monster` VALUES (107, '水兽', '怪异化的重龙骨, 怪异化的龙骨, 怪异化的坚龙骨');
INSERT INTO `monster` VALUES (108, '河童蛙', '怪异化的净浓血, 怪异化的血, 怪异化的净血');
INSERT INTO `monster` VALUES (109, '泡狐龙', '怪异化的凶鳞, 怪异化的凶厚鳞, 怪异化的上等凶鳞');
INSERT INTO `monster` VALUES (110, '泥翁龙', '怪异化的爪, 怪异化的尖爪, 怪异化的刚爪');
INSERT INTO `monster` VALUES (111, '泥鱼龙', '怪异化的重壳, 怪异化的坚壳, 怪异化的甲壳');
INSERT INTO `monster` VALUES (112, '混沌黑蚀龙', '怪异化的凶血, 怪异化的凶净血, 怪异化的凶浓血');
INSERT INTO `monster` VALUES (113, '激昂金狮子', '怪异化的凶牙, 怪异化的凶重牙, 怪异化的凶锐牙');
INSERT INTO `monster` VALUES (114, '火龙', '怪异化的凶鳞, 怪异化的凶厚鳞, 怪异化的上等凶鳞');
INSERT INTO `monster` VALUES (115, '炎王龙', '');
INSERT INTO `monster` VALUES (116, '炽妃蜘蛛', '怪异化的凶爪, 怪异化的凶尖爪, 怪异化的凶刚爪');
INSERT INTO `monster` VALUES (117, '焰狐龙', '');
INSERT INTO `monster` VALUES (118, '熔翁龙', '怪异化的凶骨, 怪异化的凶硬骨, 怪异化的凶重骨');
INSERT INTO `monster` VALUES (119, '爆鳞龙', '怪异化的凶重壳, 怪异化的凶坚壳, 怪异化的凶壳');
INSERT INTO `monster` VALUES (120, '爵银龙', '');
INSERT INTO `monster` VALUES (121, '电龙', '怪异化的凶鳞, 怪异化的凶厚鳞, 怪异化的上等凶鳞');
INSERT INTO `monster` VALUES (122, '白兔兽', '怪异化的重骨, 怪异化的骨, 怪异化的硬骨');
INSERT INTO `monster` VALUES (123, '百龙渊源雷神龙', '');
INSERT INTO `monster` VALUES (124, '眠狗龙王', '怪异化的厚皮, 怪异化的上等皮, 怪异化的皮');
INSERT INTO `monster` VALUES (125, '神秘红光天彗龙', '');
INSERT INTO `monster` VALUES (126, '红莲爆鳞龙', '怪异化的凶血, 怪异化的凶净血, 怪异化的凶浓血');
INSERT INTO `monster` VALUES (127, '绯天狗兽', '怪异化的重壳, 怪异化的坚壳, 怪异化的甲壳');
INSERT INTO `monster` VALUES (128, '蛮颚龙', '怪异化的厚鳞, 怪异化的上等鳞, 怪异化的鳞');
INSERT INTO `monster` VALUES (129, '角龙', '怪异化的凶尖角, 怪异化的凶刚角, 怪异化的凶角');
INSERT INTO `monster` VALUES (130, '赤甲兽', '怪异化的重骨, 怪异化的骨, 怪异化的硬骨');
INSERT INTO `monster` VALUES (131, '轰龙', '怪异化的凶骨, 怪异化的凶硬骨, 怪异化的凶重骨');
INSERT INTO `monster` VALUES (132, '迅龙', '怪异化的重牙, 怪异化的牙, 怪异化的锐牙');
INSERT INTO `monster` VALUES (133, '金火龙', '怪异化的凶翼膜, 怪异化的凶翼, 怪异化的凶刚翼');
INSERT INTO `monster` VALUES (134, '金狮子', '怪异化的凶爪, 怪异化的凶尖爪, 怪异化的凶刚爪');
INSERT INTO `monster` VALUES (135, '钢龙', '');
INSERT INTO `monster` VALUES (136, '银火龙', '怪异化的凶翼膜, 怪异化的凶翼, 怪异化的凶刚翼');
INSERT INTO `monster` VALUES (137, '镰鼬龙王', '怪异化的厚皮, 怪异化的上等皮, 怪异化的皮');
INSERT INTO `monster` VALUES (138, '雌火龙', '怪异化的厚鳞, 怪异化的上等鳞, 怪异化的鳞');
INSERT INTO `monster` VALUES (139, '雪鬼兽', '怪异化的爪, 怪异化的尖爪, 怪异化的刚爪');
INSERT INTO `monster` VALUES (140, '雷狼龙', '怪异化的凶尖角, 怪异化的凶刚角, 怪异化的凶角');
INSERT INTO `monster` VALUES (141, '雷神龙', '');
INSERT INTO `monster` VALUES (142, '霞龙', '');
INSERT INTO `monster` VALUES (143, '霸主・泡狐龙', '');
INSERT INTO `monster` VALUES (144, '霸主・火龙', '');
INSERT INTO `monster` VALUES (145, '霸主・角龙', '');
INSERT INTO `monster` VALUES (146, '霸主・雌火龙', '');
INSERT INTO `monster` VALUES (147, '霸主・雷狼龙', '');
INSERT INTO `monster` VALUES (148, '霸主・青熊兽', '');
INSERT INTO `monster` VALUES (149, '青熊兽', '怪异化的重骨, 怪异化的骨, 怪异化的硬骨');
INSERT INTO `monster` VALUES (150, '风神龙', '');
INSERT INTO `monster` VALUES (151, '飞雷龙', '怪异化的厚鳞, 怪异化的上等鳞, 怪异化的鳞');
INSERT INTO `monster` VALUES (152, '黑蚀龙', '怪异化的凶重壳, 怪异化的凶坚壳, 怪异化的凶壳');

-- ----------------------------
-- Table structure for monster_material_rel
-- ----------------------------
DROP TABLE IF EXISTS `monster_material_rel`;
CREATE TABLE `monster_material_rel`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `monster_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `material_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of monster_material_rel
-- ----------------------------
INSERT INTO `monster_material_rel` VALUES (1, '人鱼龙', '怪异化的重壳');
INSERT INTO `monster_material_rel` VALUES (2, '人鱼龙', '怪异化的坚壳');
INSERT INTO `monster_material_rel` VALUES (3, '人鱼龙', '怪异化的甲壳');
INSERT INTO `monster_material_rel` VALUES (4, '伞鸟', '怪异化的重龙骨');
INSERT INTO `monster_material_rel` VALUES (5, '伞鸟', '怪异化的龙骨');
INSERT INTO `monster_material_rel` VALUES (6, '伞鸟', '怪异化的坚龙骨');
INSERT INTO `monster_material_rel` VALUES (7, '冰人鱼龙', '怪异化的爪');
INSERT INTO `monster_material_rel` VALUES (8, '冰人鱼龙', '怪异化的尖爪');
INSERT INTO `monster_material_rel` VALUES (9, '冰人鱼龙', '怪异化的刚爪');
INSERT INTO `monster_material_rel` VALUES (10, '冰牙龙', '怪异化的重牙');
INSERT INTO `monster_material_rel` VALUES (11, '冰牙龙', '怪异化的牙');
INSERT INTO `monster_material_rel` VALUES (12, '冰牙龙', '怪异化的锐牙');
INSERT INTO `monster_material_rel` VALUES (13, '冰狼龙', '怪异化的凶骨');
INSERT INTO `monster_material_rel` VALUES (14, '冰狼龙', '怪异化的凶硬骨');
INSERT INTO `monster_material_rel` VALUES (15, '冰狼龙', '怪异化的凶重骨');
INSERT INTO `monster_material_rel` VALUES (16, '刚缠兽', '怪异化的重牙');
INSERT INTO `monster_material_rel` VALUES (17, '刚缠兽', '怪异化的牙');
INSERT INTO `monster_material_rel` VALUES (18, '刚缠兽', '怪异化的锐牙');
INSERT INTO `monster_material_rel` VALUES (19, '千刃龙', '怪异化的凶尖角');
INSERT INTO `monster_material_rel` VALUES (20, '千刃龙', '怪异化的凶刚角');
INSERT INTO `monster_material_rel` VALUES (21, '千刃龙', '怪异化的凶角');
INSERT INTO `monster_material_rel` VALUES (22, '嗟怨震天怨虎龙', '怪异化的凶牙');
INSERT INTO `monster_material_rel` VALUES (23, '嗟怨震天怨虎龙', '怪异化的凶重牙');
INSERT INTO `monster_material_rel` VALUES (24, '嗟怨震天怨虎龙', '怪异化的凶锐牙');
INSERT INTO `monster_material_rel` VALUES (25, '土砂龙', '怪异化的重龙骨');
INSERT INTO `monster_material_rel` VALUES (26, '土砂龙', '怪异化的龙骨');
INSERT INTO `monster_material_rel` VALUES (27, '土砂龙', '怪异化的坚龙骨');
INSERT INTO `monster_material_rel` VALUES (28, '大名盾蟹', '怪异化的净浓血');
INSERT INTO `monster_material_rel` VALUES (29, '大名盾蟹', '怪异化的血');
INSERT INTO `monster_material_rel` VALUES (30, '大名盾蟹', '怪异化的净血');
INSERT INTO `monster_material_rel` VALUES (31, '天狗兽', '怪异化的净浓血');
INSERT INTO `monster_material_rel` VALUES (32, '天狗兽', '怪异化的血');
INSERT INTO `monster_material_rel` VALUES (33, '天狗兽', '怪异化的净血');
INSERT INTO `monster_material_rel` VALUES (34, '奇怪龙', '怪异化的净浓血');
INSERT INTO `monster_material_rel` VALUES (35, '奇怪龙', '怪异化的血');
INSERT INTO `monster_material_rel` VALUES (36, '奇怪龙', '怪异化的净血');
INSERT INTO `monster_material_rel` VALUES (37, '妃蜘蛛', '怪异化的爪');
INSERT INTO `monster_material_rel` VALUES (38, '妃蜘蛛', '怪异化的尖爪');
INSERT INTO `monster_material_rel` VALUES (39, '妃蜘蛛', '怪异化的刚爪');
INSERT INTO `monster_material_rel` VALUES (40, '将军镰蟹', '怪异化的重壳');
INSERT INTO `monster_material_rel` VALUES (41, '将军镰蟹', '怪异化的坚壳');
INSERT INTO `monster_material_rel` VALUES (42, '将军镰蟹', '怪异化的甲壳');
INSERT INTO `monster_material_rel` VALUES (43, '岩龙', '怪异化的重龙骨');
INSERT INTO `monster_material_rel` VALUES (44, '岩龙', '怪异化的龙骨');
INSERT INTO `monster_material_rel` VALUES (45, '岩龙', '怪异化的坚龙骨');
INSERT INTO `monster_material_rel` VALUES (46, '怨虎龙', '怪异化的重牙');
INSERT INTO `monster_material_rel` VALUES (47, '怨虎龙', '怪异化的牙');
INSERT INTO `monster_material_rel` VALUES (48, '怨虎龙', '怪异化的锐牙');
INSERT INTO `monster_material_rel` VALUES (49, '怪异克服炎王龙', '破怪的硬龙骨');
INSERT INTO `monster_material_rel` VALUES (50, '怪异克服炎王龙', '破怪的龙骨');
INSERT INTO `monster_material_rel` VALUES (51, '怪异克服钢龙', '破怪的硬龙骨');
INSERT INTO `monster_material_rel` VALUES (52, '怪异克服钢龙', '破怪的龙骨');
INSERT INTO `monster_material_rel` VALUES (53, '怪异克服霞龙', '破怪的硬龙骨');
INSERT INTO `monster_material_rel` VALUES (54, '怪异克服霞龙', '破怪的龙骨');
INSERT INTO `monster_material_rel` VALUES (55, '搔鸟', '怪异化的厚皮');
INSERT INTO `monster_material_rel` VALUES (56, '搔鸟', '怪异化的上等皮');
INSERT INTO `monster_material_rel` VALUES (57, '搔鸟', '怪异化的皮');
INSERT INTO `monster_material_rel` VALUES (58, '棘茶龙', '怪异化的凶血');
INSERT INTO `monster_material_rel` VALUES (59, '棘茶龙', '怪异化的凶净血');
INSERT INTO `monster_material_rel` VALUES (60, '棘茶龙', '怪异化的凶浓血');
INSERT INTO `monster_material_rel` VALUES (61, '棘龙', '怪异化的凶重壳');
INSERT INTO `monster_material_rel` VALUES (62, '棘龙', '怪异化的凶坚壳');
INSERT INTO `monster_material_rel` VALUES (63, '棘龙', '怪异化的凶壳');
INSERT INTO `monster_material_rel` VALUES (64, '毒妖鸟', '怪异化的厚鳞');
INSERT INTO `monster_material_rel` VALUES (65, '毒妖鸟', '怪异化的上等鳞');
INSERT INTO `monster_material_rel` VALUES (66, '毒妖鸟', '怪异化的鳞');
INSERT INTO `monster_material_rel` VALUES (67, '毒狗龙王', '怪异化的厚皮');
INSERT INTO `monster_material_rel` VALUES (68, '毒狗龙王', '怪异化的上等皮');
INSERT INTO `monster_material_rel` VALUES (69, '毒狗龙王', '怪异化的皮');
INSERT INTO `monster_material_rel` VALUES (70, '水兽', '怪异化的重龙骨');
INSERT INTO `monster_material_rel` VALUES (71, '水兽', '怪异化的龙骨');
INSERT INTO `monster_material_rel` VALUES (72, '水兽', '怪异化的坚龙骨');
INSERT INTO `monster_material_rel` VALUES (73, '河童蛙', '怪异化的净浓血');
INSERT INTO `monster_material_rel` VALUES (74, '河童蛙', '怪异化的血');
INSERT INTO `monster_material_rel` VALUES (75, '河童蛙', '怪异化的净血');
INSERT INTO `monster_material_rel` VALUES (76, '泡狐龙', '怪异化的凶鳞');
INSERT INTO `monster_material_rel` VALUES (77, '泡狐龙', '怪异化的凶厚鳞');
INSERT INTO `monster_material_rel` VALUES (78, '泡狐龙', '怪异化的上等凶鳞');
INSERT INTO `monster_material_rel` VALUES (79, '泥翁龙', '怪异化的爪');
INSERT INTO `monster_material_rel` VALUES (80, '泥翁龙', '怪异化的尖爪');
INSERT INTO `monster_material_rel` VALUES (81, '泥翁龙', '怪异化的刚爪');
INSERT INTO `monster_material_rel` VALUES (82, '泥鱼龙', '怪异化的重壳');
INSERT INTO `monster_material_rel` VALUES (83, '泥鱼龙', '怪异化的坚壳');
INSERT INTO `monster_material_rel` VALUES (84, '泥鱼龙', '怪异化的甲壳');
INSERT INTO `monster_material_rel` VALUES (85, '混沌黑蚀龙', '怪异化的凶血');
INSERT INTO `monster_material_rel` VALUES (86, '混沌黑蚀龙', '怪异化的凶净血');
INSERT INTO `monster_material_rel` VALUES (87, '混沌黑蚀龙', '怪异化的凶浓血');
INSERT INTO `monster_material_rel` VALUES (88, '激昂金狮子', '怪异化的凶牙');
INSERT INTO `monster_material_rel` VALUES (89, '激昂金狮子', '怪异化的凶重牙');
INSERT INTO `monster_material_rel` VALUES (90, '激昂金狮子', '怪异化的凶锐牙');
INSERT INTO `monster_material_rel` VALUES (91, '火龙', '怪异化的凶鳞');
INSERT INTO `monster_material_rel` VALUES (92, '火龙', '怪异化的凶厚鳞');
INSERT INTO `monster_material_rel` VALUES (93, '火龙', '怪异化的上等凶鳞');
INSERT INTO `monster_material_rel` VALUES (94, '炽妃蜘蛛', '怪异化的凶爪');
INSERT INTO `monster_material_rel` VALUES (95, '炽妃蜘蛛', '怪异化的凶尖爪');
INSERT INTO `monster_material_rel` VALUES (96, '炽妃蜘蛛', '怪异化的凶刚爪');
INSERT INTO `monster_material_rel` VALUES (97, '熔翁龙', '怪异化的凶骨');
INSERT INTO `monster_material_rel` VALUES (98, '熔翁龙', '怪异化的凶硬骨');
INSERT INTO `monster_material_rel` VALUES (99, '熔翁龙', '怪异化的凶重骨');
INSERT INTO `monster_material_rel` VALUES (100, '爆鳞龙', '怪异化的凶重壳');
INSERT INTO `monster_material_rel` VALUES (101, '爆鳞龙', '怪异化的凶坚壳');
INSERT INTO `monster_material_rel` VALUES (102, '爆鳞龙', '怪异化的凶壳');
INSERT INTO `monster_material_rel` VALUES (103, '电龙', '怪异化的凶鳞');
INSERT INTO `monster_material_rel` VALUES (104, '电龙', '怪异化的凶厚鳞');
INSERT INTO `monster_material_rel` VALUES (105, '电龙', '怪异化的上等凶鳞');
INSERT INTO `monster_material_rel` VALUES (106, '白兔兽', '怪异化的重骨');
INSERT INTO `monster_material_rel` VALUES (107, '白兔兽', '怪异化的骨');
INSERT INTO `monster_material_rel` VALUES (108, '白兔兽', '怪异化的硬骨');
INSERT INTO `monster_material_rel` VALUES (109, '眠狗龙王', '怪异化的厚皮');
INSERT INTO `monster_material_rel` VALUES (110, '眠狗龙王', '怪异化的上等皮');
INSERT INTO `monster_material_rel` VALUES (111, '眠狗龙王', '怪异化的皮');
INSERT INTO `monster_material_rel` VALUES (112, '红莲爆鳞龙', '怪异化的凶血');
INSERT INTO `monster_material_rel` VALUES (113, '红莲爆鳞龙', '怪异化的凶净血');
INSERT INTO `monster_material_rel` VALUES (114, '红莲爆鳞龙', '怪异化的凶浓血');
INSERT INTO `monster_material_rel` VALUES (115, '绯天狗兽', '怪异化的重壳');
INSERT INTO `monster_material_rel` VALUES (116, '绯天狗兽', '怪异化的坚壳');
INSERT INTO `monster_material_rel` VALUES (117, '绯天狗兽', '怪异化的甲壳');
INSERT INTO `monster_material_rel` VALUES (118, '蛮颚龙', '怪异化的厚鳞');
INSERT INTO `monster_material_rel` VALUES (119, '蛮颚龙', '怪异化的上等鳞');
INSERT INTO `monster_material_rel` VALUES (120, '蛮颚龙', '怪异化的鳞');
INSERT INTO `monster_material_rel` VALUES (121, '角龙', '怪异化的凶尖角');
INSERT INTO `monster_material_rel` VALUES (122, '角龙', '怪异化的凶刚角');
INSERT INTO `monster_material_rel` VALUES (123, '角龙', '怪异化的凶角');
INSERT INTO `monster_material_rel` VALUES (124, '赤甲兽', '怪异化的重骨');
INSERT INTO `monster_material_rel` VALUES (125, '赤甲兽', '怪异化的骨');
INSERT INTO `monster_material_rel` VALUES (126, '赤甲兽', '怪异化的硬骨');
INSERT INTO `monster_material_rel` VALUES (127, '轰龙', '怪异化的凶骨');
INSERT INTO `monster_material_rel` VALUES (128, '轰龙', '怪异化的凶硬骨');
INSERT INTO `monster_material_rel` VALUES (129, '轰龙', '怪异化的凶重骨');
INSERT INTO `monster_material_rel` VALUES (130, '迅龙', '怪异化的重牙');
INSERT INTO `monster_material_rel` VALUES (131, '迅龙', '怪异化的牙');
INSERT INTO `monster_material_rel` VALUES (132, '迅龙', '怪异化的锐牙');
INSERT INTO `monster_material_rel` VALUES (133, '金火龙', '怪异化的凶翼膜');
INSERT INTO `monster_material_rel` VALUES (134, '金火龙', '怪异化的凶翼');
INSERT INTO `monster_material_rel` VALUES (135, '金火龙', '怪异化的凶刚翼');
INSERT INTO `monster_material_rel` VALUES (136, '金狮子', '怪异化的凶爪');
INSERT INTO `monster_material_rel` VALUES (137, '金狮子', '怪异化的凶尖爪');
INSERT INTO `monster_material_rel` VALUES (138, '金狮子', '怪异化的凶刚爪');
INSERT INTO `monster_material_rel` VALUES (139, '银火龙', '怪异化的凶翼膜');
INSERT INTO `monster_material_rel` VALUES (140, '银火龙', '怪异化的凶翼');
INSERT INTO `monster_material_rel` VALUES (141, '银火龙', '怪异化的凶刚翼');
INSERT INTO `monster_material_rel` VALUES (142, '镰鼬龙王', '怪异化的厚皮');
INSERT INTO `monster_material_rel` VALUES (143, '镰鼬龙王', '怪异化的上等皮');
INSERT INTO `monster_material_rel` VALUES (144, '镰鼬龙王', '怪异化的皮');
INSERT INTO `monster_material_rel` VALUES (145, '雌火龙', '怪异化的厚鳞');
INSERT INTO `monster_material_rel` VALUES (146, '雌火龙', '怪异化的上等鳞');
INSERT INTO `monster_material_rel` VALUES (147, '雌火龙', '怪异化的鳞');
INSERT INTO `monster_material_rel` VALUES (148, '雪鬼兽', '怪异化的爪');
INSERT INTO `monster_material_rel` VALUES (149, '雪鬼兽', '怪异化的尖爪');
INSERT INTO `monster_material_rel` VALUES (150, '雪鬼兽', '怪异化的刚爪');
INSERT INTO `monster_material_rel` VALUES (151, '雷狼龙', '怪异化的凶尖角');
INSERT INTO `monster_material_rel` VALUES (152, '雷狼龙', '怪异化的凶刚角');
INSERT INTO `monster_material_rel` VALUES (153, '雷狼龙', '怪异化的凶角');
INSERT INTO `monster_material_rel` VALUES (154, '青熊兽', '怪异化的重骨');
INSERT INTO `monster_material_rel` VALUES (155, '青熊兽', '怪异化的骨');
INSERT INTO `monster_material_rel` VALUES (156, '青熊兽', '怪异化的硬骨');
INSERT INTO `monster_material_rel` VALUES (157, '飞雷龙', '怪异化的厚鳞');
INSERT INTO `monster_material_rel` VALUES (158, '飞雷龙', '怪异化的上等鳞');
INSERT INTO `monster_material_rel` VALUES (159, '飞雷龙', '怪异化的鳞');
INSERT INTO `monster_material_rel` VALUES (160, '黑蚀龙', '怪异化的凶重壳');
INSERT INTO `monster_material_rel` VALUES (161, '黑蚀龙', '怪异化的凶坚壳');
INSERT INTO `monster_material_rel` VALUES (162, '黑蚀龙', '怪异化的凶壳');

SET FOREIGN_KEY_CHECKS = 1;
