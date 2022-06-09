/*
 Navicat Premium Data Transfer

 Source Server         : localhost 5433
 Source Server Type    : PostgreSQL
 Source Server Version : 130007
 Source Host           : localhost:5433
 Source Catalog        : test
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 130007
 File Encoding         : 65001

 Date: 09/06/2022 10:45:31
*/


-- ----------------------------
-- Sequence structure for categories_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."categories_seq";
CREATE SEQUENCE "public"."categories_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for customers_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."customers_seq";
CREATE SEQUENCE "public"."customers_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for manufacturers_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."manufacturers_seq";
CREATE SEQUENCE "public"."manufacturers_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for products_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."products_seq";
CREATE SEQUENCE "public"."products_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for purchase_items_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."purchase_items_seq";
CREATE SEQUENCE "public"."purchase_items_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for purchases_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."purchases_seq";
CREATE SEQUENCE "public"."purchases_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stores_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stores_seq";
CREATE SEQUENCE "public"."stores_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."categories";
CREATE TABLE "public"."categories" (
  "category_id" int8 NOT NULL DEFAULT nextval('categories_seq'::regclass),
  "category_name" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO "public"."categories" VALUES (1, 'Мелкая бытовая техника');
INSERT INTO "public"."categories" VALUES (2, 'Компьютерная техника');
INSERT INTO "public"."categories" VALUES (3, 'Офис и канцелярия');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS "public"."customers";
CREATE TABLE "public"."customers" (
  "customer_id" int8 NOT NULL DEFAULT nextval('customers_seq'::regclass),
  "customer_name" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO "public"."customers" VALUES (1, 'Елена Кузьминична Елисеева');
INSERT INTO "public"."customers" VALUES (2, 'Галкина Жанна Геннадьевна');
INSERT INTO "public"."customers" VALUES (3, 'Мухина Зоя Валентиновна');
INSERT INTO "public"."customers" VALUES (4, 'Мишина Евдокия Ниловна');
INSERT INTO "public"."customers" VALUES (5, 'Ульян Изотович Большаков');

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS "public"."manufacturers";
CREATE TABLE "public"."manufacturers" (
  "manufacturer_id" int8 NOT NULL DEFAULT nextval('manufacturers_seq'::regclass),
  "manufacturer_name" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
INSERT INTO "public"."manufacturers" VALUES (1, 'Greys');
INSERT INTO "public"."manufacturers" VALUES (2, 'Takasima');
INSERT INTO "public"."manufacturers" VALUES (3, 'Autostandart');
INSERT INTO "public"."manufacturers" VALUES (4, 'Aksion');
INSERT INTO "public"."manufacturers" VALUES (5, 'Avantree');
INSERT INTO "public"."manufacturers" VALUES (6, 'Hitachi');
INSERT INTO "public"."manufacturers" VALUES (7, 'Erisson');
INSERT INTO "public"."manufacturers" VALUES (8, 'Zimber');
INSERT INTO "public"."manufacturers" VALUES (9, 'Maman');
INSERT INTO "public"."manufacturers" VALUES (10, 'Elna');
INSERT INTO "public"."manufacturers" VALUES (11, 'AFOX');
INSERT INTO "public"."manufacturers" VALUES (12, 'Lee Stafford');
INSERT INTO "public"."manufacturers" VALUES (13, 'Defender');
INSERT INTO "public"."manufacturers" VALUES (14, 'Bannye Shtuchki');
INSERT INTO "public"."manufacturers" VALUES (15, 'OptiFit');
INSERT INTO "public"."manufacturers" VALUES (16, 'Revyline');
INSERT INTO "public"."manufacturers" VALUES (17, 'Ladomir');
INSERT INTO "public"."manufacturers" VALUES (18, 'Taurus');
INSERT INTO "public"."manufacturers" VALUES (19, 'Iiyama');
INSERT INTO "public"."manufacturers" VALUES (20, 'Agressor');
INSERT INTO "public"."manufacturers" VALUES (21, 'Mystery');
INSERT INTO "public"."manufacturers" VALUES (22, 'Clear Fit');
INSERT INTO "public"."manufacturers" VALUES (23, 'Creative');
INSERT INTO "public"."manufacturers" VALUES (24, 'Chieftec');
INSERT INTO "public"."manufacturers" VALUES (25, 'Gemlux');
INSERT INTO "public"."manufacturers" VALUES (26, 'Mophie');
INSERT INTO "public"."manufacturers" VALUES (27, 'LevelOne');
INSERT INTO "public"."manufacturers" VALUES (28, 'WMF');
INSERT INTO "public"."manufacturers" VALUES (29, 'Saturn');
INSERT INTO "public"."manufacturers" VALUES (30, 'Havit');
INSERT INTO "public"."manufacturers" VALUES (31, 'Braun');
INSERT INTO "public"."manufacturers" VALUES (32, 'A&D');
INSERT INTO "public"."manufacturers" VALUES (33, 'DigiCare');
INSERT INTO "public"."manufacturers" VALUES (34, 'Formula');
INSERT INTO "public"."manufacturers" VALUES (35, 'Rhythm');
INSERT INTO "public"."manufacturers" VALUES (36, 'ECOLUN');
INSERT INTO "public"."manufacturers" VALUES (37, 'Hikvision');
INSERT INTO "public"."manufacturers" VALUES (38, 'Little Doctor');
INSERT INTO "public"."manufacturers" VALUES (39, 'Barrier');
INSERT INTO "public"."manufacturers" VALUES (40, 'Hotter');
INSERT INTO "public"."manufacturers" VALUES (41, 'Samurai');
INSERT INTO "public"."manufacturers" VALUES (42, 'Pango');
INSERT INTO "public"."manufacturers" VALUES (43, 'Everest');
INSERT INTO "public"."manufacturers" VALUES (44, 'Haier');
INSERT INTO "public"."manufacturers" VALUES (45, 'Aquakit');
INSERT INTO "public"."manufacturers" VALUES (46, 'Inno3D');
INSERT INTO "public"."manufacturers" VALUES (47, 'STM');
INSERT INTO "public"."manufacturers" VALUES (48, 'Orion');
INSERT INTO "public"."manufacturers" VALUES (49, 'Bravo');
INSERT INTO "public"."manufacturers" VALUES (50, 'Aeotec');
INSERT INTO "public"."manufacturers" VALUES (51, 'Scab');
INSERT INTO "public"."manufacturers" VALUES (52, 'Bremed');
INSERT INTO "public"."manufacturers" VALUES (53, 'Tiemme');
INSERT INTO "public"."manufacturers" VALUES (54, 'RawMid');
INSERT INTO "public"."manufacturers" VALUES (55, 'Ogawa');
INSERT INTO "public"."manufacturers" VALUES (56, 'Gam');
INSERT INTO "public"."manufacturers" VALUES (57, 'RF Elements');
INSERT INTO "public"."manufacturers" VALUES (58, 'Redmond');
INSERT INTO "public"."manufacturers" VALUES (59, 'CBR');
INSERT INTO "public"."manufacturers" VALUES (60, 'ZOTAC');
INSERT INTO "public"."manufacturers" VALUES (61, 'Weber');
INSERT INTO "public"."manufacturers" VALUES (62, 'Prestigio');
INSERT INTO "public"."manufacturers" VALUES (63, 'Vontron');
INSERT INTO "public"."manufacturers" VALUES (64, 'Continent');
INSERT INTO "public"."manufacturers" VALUES (65, 'ITAP');
INSERT INTO "public"."manufacturers" VALUES (66, 'Whirlpool');
INSERT INTO "public"."manufacturers" VALUES (67, 'KIA');
INSERT INTO "public"."manufacturers" VALUES (68, 'Dobrynia');
INSERT INTO "public"."manufacturers" VALUES (69, 'ECOVACS');
INSERT INTO "public"."manufacturers" VALUES (70, 'iClebo');
INSERT INTO "public"."manufacturers" VALUES (71, 'LiteOn');
INSERT INTO "public"."manufacturers" VALUES (72, 'IDEAL');
INSERT INTO "public"."manufacturers" VALUES (73, 'AstraLux');
INSERT INTO "public"."manufacturers" VALUES (74, 'WD');
INSERT INTO "public"."manufacturers" VALUES (75, 'Brabantia');
INSERT INTO "public"."manufacturers" VALUES (76, 'Juravinka');
INSERT INTO "public"."manufacturers" VALUES (77, 'Lexand');
INSERT INTO "public"."manufacturers" VALUES (78, 'Artel');
INSERT INTO "public"."manufacturers" VALUES (79, 'Centek');
INSERT INTO "public"."manufacturers" VALUES (80, 'Zinger');
INSERT INTO "public"."manufacturers" VALUES (81, 'Mikma');
INSERT INTO "public"."manufacturers" VALUES (82, 'Gainward');
INSERT INTO "public"."manufacturers" VALUES (83, 'Comfort Vapo');
INSERT INTO "public"."manufacturers" VALUES (84, 'Faber-Castell');
INSERT INTO "public"."manufacturers" VALUES (85, 'Teka');
INSERT INTO "public"."manufacturers" VALUES (86, 'Veterok');
INSERT INTO "public"."manufacturers" VALUES (87, 'WOPOW');
INSERT INTO "public"."manufacturers" VALUES (88, 'KFA2');
INSERT INTO "public"."manufacturers" VALUES (89, 'Ekspedicia');
INSERT INTO "public"."manufacturers" VALUES (90, 'Kelli');
INSERT INTO "public"."manufacturers" VALUES (91, 'Pineng');
INSERT INTO "public"."manufacturers" VALUES (92, 'Yoobao');
INSERT INTO "public"."manufacturers" VALUES (93, 'Toshiba');
INSERT INTO "public"."manufacturers" VALUES (94, 'MAXIMA');
INSERT INTO "public"."manufacturers" VALUES (95, 'Pfaff');
INSERT INTO "public"."manufacturers" VALUES (96, 'MerryLock');
INSERT INTO "public"."manufacturers" VALUES (97, 'Newline');
INSERT INTO "public"."manufacturers" VALUES (98, 'Nika');
INSERT INTO "public"."manufacturers" VALUES (99, 'Pari');
INSERT INTO "public"."manufacturers" VALUES (100, 'Noctua');
INSERT INTO "public"."manufacturers" VALUES (101, 'DrayTek');
INSERT INTO "public"."manufacturers" VALUES (102, 'InterStep');
INSERT INTO "public"."manufacturers" VALUES (103, 'Fellowes');
INSERT INTO "public"."manufacturers" VALUES (104, 'Makita');
INSERT INTO "public"."manufacturers" VALUES (105, 'HP');
INSERT INTO "public"."manufacturers" VALUES (106, 'Polti');
INSERT INTO "public"."manufacturers" VALUES (107, 'Velecta Paramount');
INSERT INTO "public"."manufacturers" VALUES (108, 'Laica');
INSERT INTO "public"."manufacturers" VALUES (109, 'Feya');
INSERT INTO "public"."manufacturers" VALUES (110, 'Sapphire');
INSERT INTO "public"."manufacturers" VALUES (111, 'Megeon');
INSERT INTO "public"."manufacturers" VALUES (112, 'HIS');
INSERT INTO "public"."manufacturers" VALUES (113, 'Husqvarna');
INSERT INTO "public"."manufacturers" VALUES (114, 'Apacer');
INSERT INTO "public"."manufacturers" VALUES (115, 'Neptun');
INSERT INTO "public"."manufacturers" VALUES (116, 'MAUNFELD');
INSERT INTO "public"."manufacturers" VALUES (117, 'Neovo');
INSERT INTO "public"."manufacturers" VALUES (118, 'Huawei');
INSERT INTO "public"."manufacturers" VALUES (119, 'Garden Show');
INSERT INTO "public"."manufacturers" VALUES (120, '3Cott');
INSERT INTO "public"."manufacturers" VALUES (121, 'Accu-Chek');
INSERT INTO "public"."manufacturers" VALUES (122, 'Richter');
INSERT INTO "public"."manufacturers" VALUES (123, 'Izumi');
INSERT INTO "public"."manufacturers" VALUES (124, 'Eltron');
INSERT INTO "public"."manufacturers" VALUES (125, 'DeWALT');
INSERT INTO "public"."manufacturers" VALUES (126, 'Elgato');
INSERT INTO "public"."manufacturers" VALUES (127, 'Cimberio');
INSERT INTO "public"."manufacturers" VALUES (128, 'Patriot');
INSERT INTO "public"."manufacturers" VALUES (129, 'RedVerg');
INSERT INTO "public"."manufacturers" VALUES (130, 'Garin');
INSERT INTO "public"."manufacturers" VALUES (131, 'Uniel');
INSERT INTO "public"."manufacturers" VALUES (132, 'Vigor');
INSERT INTO "public"."manufacturers" VALUES (133, 'Bialetti');
INSERT INTO "public"."manufacturers" VALUES (134, 'Amrus');
INSERT INTO "public"."manufacturers" VALUES (135, 'Runco');
INSERT INTO "public"."manufacturers" VALUES (136, 'Ecodoctor');
INSERT INTO "public"."manufacturers" VALUES (137, 'SanDisk');
INSERT INTO "public"."manufacturers" VALUES (138, 'Oka');
INSERT INTO "public"."manufacturers" VALUES (139, 'Remington');
INSERT INTO "public"."manufacturers" VALUES (140, 'ROTOR');
INSERT INTO "public"."manufacturers" VALUES (141, 'XFX');
INSERT INTO "public"."manufacturers" VALUES (142, 'Bellissima');
INSERT INTO "public"."manufacturers" VALUES (143, 'Zwilling J.A. Henckels');
INSERT INTO "public"."manufacturers" VALUES (144, 'Cuckoo');
INSERT INTO "public"."manufacturers" VALUES (145, 'DFC');
INSERT INTO "public"."manufacturers" VALUES (146, 'Sirman');
INSERT INTO "public"."manufacturers" VALUES (147, 'Netis');
INSERT INTO "public"."manufacturers" VALUES (148, 'Powercase');
INSERT INTO "public"."manufacturers" VALUES (149, 'PortCase');
INSERT INTO "public"."manufacturers" VALUES (150, 'Canyon');
INSERT INTO "public"."manufacturers" VALUES (151, 'Fractal Design');
INSERT INTO "public"."manufacturers" VALUES (152, 'Shop-Vac');
INSERT INTO "public"."manufacturers" VALUES (153, 'Gelberk');
INSERT INTO "public"."manufacturers" VALUES (154, 'Omron');
INSERT INTO "public"."manufacturers" VALUES (155, 'Chudesnitsa');
INSERT INTO "public"."manufacturers" VALUES (156, 'Kharkov');
INSERT INTO "public"."manufacturers" VALUES (157, 'SmartBuy');
INSERT INTO "public"."manufacturers" VALUES (158, 'Deppa');
INSERT INTO "public"."manufacturers" VALUES (159, 'MANGO');
INSERT INTO "public"."manufacturers" VALUES (160, 'Cooler Master');
INSERT INTO "public"."manufacturers" VALUES (161, 'Macap');
INSERT INTO "public"."manufacturers" VALUES (162, 'US Medica');
INSERT INTO "public"."manufacturers" VALUES (163, 'SoundTronix');
INSERT INTO "public"."manufacturers" VALUES (164, 'King Mix');
INSERT INTO "public"."manufacturers" VALUES (165, 'Garmin');
INSERT INTO "public"."manufacturers" VALUES (166, 'BenQ');
INSERT INTO "public"."manufacturers" VALUES (167, 'iRobot');
INSERT INTO "public"."manufacturers" VALUES (168, 'Atomic');
INSERT INTO "public"."manufacturers" VALUES (169, 'LUMME');
INSERT INTO "public"."manufacturers" VALUES (170, 'Howard Miller');
INSERT INTO "public"."manufacturers" VALUES (171, 'Connex');
INSERT INTO "public"."manufacturers" VALUES (172, 'Attribute');
INSERT INTO "public"."manufacturers" VALUES (173, 'Kumtel');
INSERT INTO "public"."manufacturers" VALUES (174, 'Ginzzu');
INSERT INTO "public"."manufacturers" VALUES (175, 'OLTO');
INSERT INTO "public"."manufacturers" VALUES (176, 'Brand');
INSERT INTO "public"."manufacturers" VALUES (177, 'Dyson');
INSERT INTO "public"."manufacturers" VALUES (178, 'BXG');
INSERT INTO "public"."manufacturers" VALUES (179, 'VES');
INSERT INTO "public"."manufacturers" VALUES (180, 'Bresko');
INSERT INTO "public"."manufacturers" VALUES (181, 'Liana');
INSERT INTO "public"."manufacturers" VALUES (182, 'Stadler Form');
INSERT INTO "public"."manufacturers" VALUES (183, 'EGE');
INSERT INTO "public"."manufacturers" VALUES (184, 'Hama');
INSERT INTO "public"."manufacturers" VALUES (185, 'Bestway');
INSERT INTO "public"."manufacturers" VALUES (186, 'Transcend');
INSERT INTO "public"."manufacturers" VALUES (187, 'G-Plate');
INSERT INTO "public"."manufacturers" VALUES (188, 'Contento');
INSERT INTO "public"."manufacturers" VALUES (189, 'Rewwel');
INSERT INTO "public"."manufacturers" VALUES (190, 'Jata');
INSERT INTO "public"."manufacturers" VALUES (191, 'Fujitsu');
INSERT INTO "public"."manufacturers" VALUES (192, 'Laretti');
INSERT INTO "public"."manufacturers" VALUES (193, 'Beckers');
INSERT INTO "public"."manufacturers" VALUES (194, 'MikroTik');
INSERT INTO "public"."manufacturers" VALUES (195, 'Thule');
INSERT INTO "public"."manufacturers" VALUES (196, 'Alca');
INSERT INTO "public"."manufacturers" VALUES (197, 'Robot-Coupe');
INSERT INTO "public"."manufacturers" VALUES (198, 'Upvel');
INSERT INTO "public"."manufacturers" VALUES (199, 'Alfa');
INSERT INTO "public"."manufacturers" VALUES (200, 'Powerpod');
INSERT INTO "public"."manufacturers" VALUES (201, 'Eolo');
INSERT INTO "public"."manufacturers" VALUES (202, 'Artway');
INSERT INTO "public"."manufacturers" VALUES (203, 'Ego');
INSERT INTO "public"."manufacturers" VALUES (204, 'Thermaltake');
INSERT INTO "public"."manufacturers" VALUES (205, 'Pullman');
INSERT INTO "public"."manufacturers" VALUES (206, 'Joseph Joseph');
INSERT INTO "public"."manufacturers" VALUES (207, 'Bradex');
INSERT INTO "public"."manufacturers" VALUES (208, 'Cuchen');
INSERT INTO "public"."manufacturers" VALUES (209, 'Babymoov');
INSERT INTO "public"."manufacturers" VALUES (210, 'Ellrona');
INSERT INTO "public"."manufacturers" VALUES (211, 'RAIFIL');
INSERT INTO "public"."manufacturers" VALUES (212, 'Uni-Fitt');
INSERT INTO "public"."manufacturers" VALUES (213, 'BeeWi');
INSERT INTO "public"."manufacturers" VALUES (214, 'Alessi');
INSERT INTO "public"."manufacturers" VALUES (215, 'Allied Telesis');
INSERT INTO "public"."manufacturers" VALUES (216, 'Rondell');
INSERT INTO "public"."manufacturers" VALUES (217, 'Lepse');
INSERT INTO "public"."manufacturers" VALUES (218, 'Rotel');
INSERT INTO "public"."manufacturers" VALUES (219, 'Native Union');
INSERT INTO "public"."manufacturers" VALUES (220, 'Nemox');
INSERT INTO "public"."manufacturers" VALUES (221, 'Codegen');
INSERT INTO "public"."manufacturers" VALUES (222, 'Alcatel');
INSERT INTO "public"."manufacturers" VALUES (223, 'Briz');
INSERT INTO "public"."manufacturers" VALUES (224, 'Wesco');
INSERT INTO "public"."manufacturers" VALUES (225, 'Harizma');
INSERT INTO "public"."manufacturers" VALUES (226, 'Willmark');
INSERT INTO "public"."manufacturers" VALUES (227, 'Black Fox');
INSERT INTO "public"."manufacturers" VALUES (228, 'Aurora');
INSERT INTO "public"."manufacturers" VALUES (229, 'Supermicro');
INSERT INTO "public"."manufacturers" VALUES (230, 'AgeStar');
INSERT INTO "public"."manufacturers" VALUES (231, 'Bodykraft');
INSERT INTO "public"."manufacturers" VALUES (232, 'Aresa');
INSERT INTO "public"."manufacturers" VALUES (233, 'Hitt');
INSERT INTO "public"."manufacturers" VALUES (234, 'Noiseblocker');
INSERT INTO "public"."manufacturers" VALUES (235, 'Waytronic');
INSERT INTO "public"."manufacturers" VALUES (236, 'Morphy Richards');
INSERT INTO "public"."manufacturers" VALUES (237, 'Hahnel');
INSERT INTO "public"."manufacturers" VALUES (238, 'Little Balance');
INSERT INTO "public"."manufacturers" VALUES (239, 'Krausen');
INSERT INTO "public"."manufacturers" VALUES (240, 'Black&Decker');
INSERT INTO "public"."manufacturers" VALUES (241, 'iRest');
INSERT INTO "public"."manufacturers" VALUES (242, 'Element');
INSERT INTO "public"."manufacturers" VALUES (243, 'BVItech');
INSERT INTO "public"."manufacturers" VALUES (244, 'Atlas Filtri');
INSERT INTO "public"."manufacturers" VALUES (245, 'Salut');
INSERT INTO "public"."manufacturers" VALUES (246, 'Moleskine');
INSERT INTO "public"."manufacturers" VALUES (247, 'ErgoPower');
INSERT INTO "public"."manufacturers" VALUES (248, 'BayerHoff');
INSERT INTO "public"."manufacturers" VALUES (249, 'Sony');
INSERT INTO "public"."manufacturers" VALUES (250, 'Sinbo');
INSERT INTO "public"."manufacturers" VALUES (251, 'Sakura');
INSERT INTO "public"."manufacturers" VALUES (252, 'Briel');
INSERT INTO "public"."manufacturers" VALUES (253, 'Profi Cook');
INSERT INTO "public"."manufacturers" VALUES (254, 'Optima');
INSERT INTO "public"."manufacturers" VALUES (255, 'ALMAZ');
INSERT INTO "public"."manufacturers" VALUES (256, 'Fiorenzato');
INSERT INTO "public"."manufacturers" VALUES (257, 'Lowell');
INSERT INTO "public"."manufacturers" VALUES (258, 'Schaub Lorenz');
INSERT INTO "public"."manufacturers" VALUES (259, 'Sofia');
INSERT INTO "public"."manufacturers" VALUES (260, 'EVGA');
INSERT INTO "public"."manufacturers" VALUES (261, 'X-Flash');
INSERT INTO "public"."manufacturers" VALUES (262, 'Vileda');
INSERT INTO "public"."manufacturers" VALUES (263, 'Siemens');
INSERT INTO "public"."manufacturers" VALUES (264, 'Krups');
INSERT INTO "public"."manufacturers" VALUES (265, 'Ermila');
INSERT INTO "public"."manufacturers" VALUES (266, 'Eizo');
INSERT INTO "public"."manufacturers" VALUES (267, 'Hammer');
INSERT INTO "public"."manufacturers" VALUES (268, 'OTO');
INSERT INTO "public"."manufacturers" VALUES (269, 'Gefest');
INSERT INTO "public"."manufacturers" VALUES (270, 'Breville');
INSERT INTO "public"."manufacturers" VALUES (271, 'Boutique-S');
INSERT INTO "public"."manufacturers" VALUES (272, 'Triada');
INSERT INTO "public"."manufacturers" VALUES (273, 'Good Helper');
INSERT INTO "public"."manufacturers" VALUES (274, 'Sumdex');
INSERT INTO "public"."manufacturers" VALUES (275, 'Gembird');
INSERT INTO "public"."manufacturers" VALUES (276, 'Arredamenti');
INSERT INTO "public"."manufacturers" VALUES (277, 'Leifheit');
INSERT INTO "public"."manufacturers" VALUES (278, 'JetA');
INSERT INTO "public"."manufacturers" VALUES (279, 'Lubby');
INSERT INTO "public"."manufacturers" VALUES (280, 'Vitek');
INSERT INTO "public"."manufacturers" VALUES (281, 'TouchBeauty');
INSERT INTO "public"."manufacturers" VALUES (282, 'BERTI');
INSERT INTO "public"."manufacturers" VALUES (283, 'Becker');
INSERT INTO "public"."manufacturers" VALUES (284, 'Totolink');
INSERT INTO "public"."manufacturers" VALUES (285, 'Hairway');
INSERT INTO "public"."manufacturers" VALUES (286, 'Gino');
INSERT INTO "public"."manufacturers" VALUES (287, 'Orico');
INSERT INTO "public"."manufacturers" VALUES (288, 'ARK');
INSERT INTO "public"."manufacturers" VALUES (289, 'Ksitex');
INSERT INTO "public"."manufacturers" VALUES (290, 'Awei');
INSERT INTO "public"."manufacturers" VALUES (291, 'LaCie');
INSERT INTO "public"."manufacturers" VALUES (292, 'First');
INSERT INTO "public"."manufacturers" VALUES (293, 'Transtek');
INSERT INTO "public"."manufacturers" VALUES (294, 'Shivaki');
INSERT INTO "public"."manufacturers" VALUES (295, 'Novis');
INSERT INTO "public"."manufacturers" VALUES (296, 'TESCOMA');
INSERT INTO "public"."manufacturers" VALUES (297, 'SilverStone');
INSERT INTO "public"."manufacturers" VALUES (298, 'Sterlingg');
INSERT INTO "public"."manufacturers" VALUES (299, 'SOEHNLE');
INSERT INTO "public"."manufacturers" VALUES (300, 'Jeelex');
INSERT INTO "public"."manufacturers" VALUES (301, 'Omega');
INSERT INTO "public"."manufacturers" VALUES (302, 'Hyundai');
INSERT INTO "public"."manufacturers" VALUES (303, 'KS-is');
INSERT INTO "public"."manufacturers" VALUES (304, 'Amkodor-Belvar');
INSERT INTO "public"."manufacturers" VALUES (305, 'PowerColor');
INSERT INTO "public"."manufacturers" VALUES (306, 'Eltex');
INSERT INTO "public"."manufacturers" VALUES (307, 'Eksi');
INSERT INTO "public"."manufacturers" VALUES (308, 'Hottek');
INSERT INTO "public"."manufacturers" VALUES (309, 'ElinaStar');
INSERT INTO "public"."manufacturers" VALUES (310, 'Leader');
INSERT INTO "public"."manufacturers" VALUES (311, 'Be quiet');
INSERT INTO "public"."manufacturers" VALUES (312, 'D-Link');
INSERT INTO "public"."manufacturers" VALUES (313, 'Luxell');
INSERT INTO "public"."manufacturers" VALUES (314, 'Sanitas');
INSERT INTO "public"."manufacturers" VALUES (315, 'Ergolux');
INSERT INTO "public"."manufacturers" VALUES (316, 'Krampouz');
INSERT INTO "public"."manufacturers" VALUES (317, 'Kromax');
INSERT INTO "public"."manufacturers" VALUES (318, 'Technika');
INSERT INTO "public"."manufacturers" VALUES (319, 'Aqua-Jet');
INSERT INTO "public"."manufacturers" VALUES (320, 'Neato');
INSERT INTO "public"."manufacturers" VALUES (321, 'Hipro');
INSERT INTO "public"."manufacturers" VALUES (322, 'BRITA');
INSERT INTO "public"."manufacturers" VALUES (323, 'Zalger');
INSERT INTO "public"."manufacturers" VALUES (324, 'Philips');
INSERT INTO "public"."manufacturers" VALUES (325, 'MSI');
INSERT INTO "public"."manufacturers" VALUES (326, 'ASUSTOR');
INSERT INTO "public"."manufacturers" VALUES (327, 'Gastromix');
INSERT INTO "public"."manufacturers" VALUES (328, 'Navan');
INSERT INTO "public"."manufacturers" VALUES (329, 'Astoria');
INSERT INTO "public"."manufacturers" VALUES (330, 'SWF');
INSERT INTO "public"."manufacturers" VALUES (331, 'GEZAtone');
INSERT INTO "public"."manufacturers" VALUES (332, 'AccesStyle');
INSERT INTO "public"."manufacturers" VALUES (333, 'Francis Francis');
INSERT INTO "public"."manufacturers" VALUES (334, 'Merlin');
INSERT INTO "public"."manufacturers" VALUES (335, 'BergHOFF');
INSERT INTO "public"."manufacturers" VALUES (336, 'Starmix');
INSERT INTO "public"."manufacturers" VALUES (337, 'Zojirushi');
INSERT INTO "public"."manufacturers" VALUES (338, 'Imetec');
INSERT INTO "public"."manufacturers" VALUES (339, 'cRadia');
INSERT INTO "public"."manufacturers" VALUES (340, 'Top House');
INSERT INTO "public"."manufacturers" VALUES (341, 'Cleanfix');
INSERT INTO "public"."manufacturers" VALUES (342, 'Minerva');
INSERT INTO "public"."manufacturers" VALUES (343, 'Mechta');
INSERT INTO "public"."manufacturers" VALUES (344, 'Tribest');
INSERT INTO "public"."manufacturers" VALUES (345, 'AOC');
INSERT INTO "public"."manufacturers" VALUES (346, 'Super Flower');
INSERT INTO "public"."manufacturers" VALUES (347, 'Tucano');
INSERT INTO "public"."manufacturers" VALUES (348, 'Nozomi');
INSERT INTO "public"."manufacturers" VALUES (349, 'Acer');
INSERT INTO "public"."manufacturers" VALUES (350, 'Smile');
INSERT INTO "public"."manufacturers" VALUES (351, 'MOXA');
INSERT INTO "public"."manufacturers" VALUES (352, 'Moulinex');
INSERT INTO "public"."manufacturers" VALUES (353, 'Bugatti');
INSERT INTO "public"."manufacturers" VALUES (354, 'WAECO');
INSERT INTO "public"."manufacturers" VALUES (355, 'Scholl');
INSERT INTO "public"."manufacturers" VALUES (356, 'Crown');
INSERT INTO "public"."manufacturers" VALUES (357, 'Korting');
INSERT INTO "public"."manufacturers" VALUES (358, 'Termozeta');
INSERT INTO "public"."manufacturers" VALUES (359, 'AudioQuest');
INSERT INTO "public"."manufacturers" VALUES (360, 'Cunill');
INSERT INTO "public"."manufacturers" VALUES (361, 'Ezidri');
INSERT INTO "public"."manufacturers" VALUES (362, 'Calve');
INSERT INTO "public"."manufacturers" VALUES (363, 'VALTEC');
INSERT INTO "public"."manufacturers" VALUES (364, 'Spektr-Pribor');
INSERT INTO "public"."manufacturers" VALUES (365, 'Ysbao');
INSERT INTO "public"."manufacturers" VALUES (366, 'KitchenAid');
INSERT INTO "public"."manufacturers" VALUES (367, 'Aquaphor');
INSERT INTO "public"."manufacturers" VALUES (368, 'Gaggia');
INSERT INTO "public"."manufacturers" VALUES (369, 'Spidem');
INSERT INTO "public"."manufacturers" VALUES (370, 'Comfort');
INSERT INTO "public"."manufacturers" VALUES (371, 'BWT');
INSERT INTO "public"."manufacturers" VALUES (372, 'AcmePower');
INSERT INTO "public"."manufacturers" VALUES (373, 'Kenwood');
INSERT INTO "public"."manufacturers" VALUES (374, 'Kingmax');
INSERT INTO "public"."manufacturers" VALUES (375, 'Synology');
INSERT INTO "public"."manufacturers" VALUES (376, 'GlacialTech');
INSERT INTO "public"."manufacturers" VALUES (377, 'Team Group');
INSERT INTO "public"."manufacturers" VALUES (378, 'Janome');
INSERT INTO "public"."manufacturers" VALUES (379, 'Brig Plus');
INSERT INTO "public"."manufacturers" VALUES (380, 'Home-Element');
INSERT INTO "public"."manufacturers" VALUES (381, 'EnGenius');
INSERT INTO "public"."manufacturers" VALUES (382, 'IBM');
INSERT INTO "public"."manufacturers" VALUES (383, 'Colombo');
INSERT INTO "public"."manufacturers" VALUES (384, 'Blaze');
INSERT INTO "public"."manufacturers" VALUES (385, 'Pininfarina');
INSERT INTO "public"."manufacturers" VALUES (386, 'ExeGate');
INSERT INTO "public"."manufacturers" VALUES (387, 'Tanita');
INSERT INTO "public"."manufacturers" VALUES (388, 'UNIPUMP');
INSERT INTO "public"."manufacturers" VALUES (389, 'Rombica');
INSERT INTO "public"."manufacturers" VALUES (390, 'DUX');
INSERT INTO "public"."manufacturers" VALUES (391, 'NEC');
INSERT INTO "public"."manufacturers" VALUES (392, 'Fujiiryoki');
INSERT INTO "public"."manufacturers" VALUES (393, 'ITA Filter');
INSERT INTO "public"."manufacturers" VALUES (394, 'Bartscher');
INSERT INTO "public"."manufacturers" VALUES (395, 'AVS');
INSERT INTO "public"."manufacturers" VALUES (396, 'Candeon');
INSERT INTO "public"."manufacturers" VALUES (397, 'Balio');
INSERT INTO "public"."manufacturers" VALUES (398, 'AquaPro');
INSERT INTO "public"."manufacturers" VALUES (399, 'AEG');
INSERT INTO "public"."manufacturers" VALUES (400, 'Silk’n');
INSERT INTO "public"."manufacturers" VALUES (401, 'Besser Vacuum');
INSERT INTO "public"."manufacturers" VALUES (402, 'Helfer');
INSERT INTO "public"."manufacturers" VALUES (403, 'Jura');
INSERT INTO "public"."manufacturers" VALUES (404, 'Micron');
INSERT INTO "public"."manufacturers" VALUES (405, 'Sititek');
INSERT INTO "public"."manufacturers" VALUES (406, 'Colorful');
INSERT INTO "public"."manufacturers" VALUES (407, '31 Vek');
INSERT INTO "public"."manufacturers" VALUES (408, 'Princess');
INSERT INTO "public"."manufacturers" VALUES (409, 'Kachok');
INSERT INTO "public"."manufacturers" VALUES (410, 'BabyOno');
INSERT INTO "public"."manufacturers" VALUES (411, 'Art Moon');
INSERT INTO "public"."manufacturers" VALUES (412, 'Hoco');
INSERT INTO "public"."manufacturers" VALUES (413, 'Excalibur');
INSERT INTO "public"."manufacturers" VALUES (414, 'Framar');
INSERT INTO "public"."manufacturers" VALUES (415, 'Ergonova');
INSERT INTO "public"."manufacturers" VALUES (416, 'Hotpoint-Ariston');
INSERT INTO "public"."manufacturers" VALUES (417, 'Irit');
INSERT INTO "public"."manufacturers" VALUES (418, 'Thecus');
INSERT INTO "public"."manufacturers" VALUES (419, 'GMC');
INSERT INTO "public"."manufacturers" VALUES (420, 'Kaffitcom');
INSERT INTO "public"."manufacturers" VALUES (421, 'GA.MA');
INSERT INTO "public"."manufacturers" VALUES (422, 'Miniland');
INSERT INTO "public"."manufacturers" VALUES (423, 'STATUS');
INSERT INTO "public"."manufacturers" VALUES (424, 'TFA');
INSERT INTO "public"."manufacturers" VALUES (425, 'CACTUS');
INSERT INTO "public"."manufacturers" VALUES (426, 'Electrolux');
INSERT INTO "public"."manufacturers" VALUES (427, 'Vitesse');
INSERT INTO "public"."manufacturers" VALUES (428, 'Aruba');
INSERT INTO "public"."manufacturers" VALUES (429, 'Supra');
INSERT INTO "public"."manufacturers" VALUES (430, 'Katadyn');
INSERT INTO "public"."manufacturers" VALUES (431, 'FSP');
INSERT INTO "public"."manufacturers" VALUES (432, 'Lex');
INSERT INTO "public"."manufacturers" VALUES (433, 'Delta');
INSERT INTO "public"."manufacturers" VALUES (434, 'Oregon');
INSERT INTO "public"."manufacturers" VALUES (435, 'Pantech');
INSERT INTO "public"."manufacturers" VALUES (436, 'Phantom');
INSERT INTO "public"."manufacturers" VALUES (437, 'Yamaguchi');
INSERT INTO "public"."manufacturers" VALUES (438, 'Crumpler');
INSERT INTO "public"."manufacturers" VALUES (439, 'Antex');
INSERT INTO "public"."manufacturers" VALUES (440, 'Case Logic');
INSERT INTO "public"."manufacturers" VALUES (441, 'Souz');
INSERT INTO "public"."manufacturers" VALUES (442, 'Gimi');
INSERT INTO "public"."manufacturers" VALUES (443, 'Star Expo');
INSERT INTO "public"."manufacturers" VALUES (444, 'Thomas');
INSERT INTO "public"."manufacturers" VALUES (445, 'Viconte');
INSERT INTO "public"."manufacturers" VALUES (446, 'Paderno');
INSERT INTO "public"."manufacturers" VALUES (447, 'HANSUN');
INSERT INTO "public"."manufacturers" VALUES (448, 'FIBARO');
INSERT INTO "public"."manufacturers" VALUES (449, 'Frankford Arsenal');
INSERT INTO "public"."manufacturers" VALUES (450, 'Galanz');
INSERT INTO "public"."manufacturers" VALUES (451, 'Kingston');
INSERT INTO "public"."manufacturers" VALUES (452, 'Accord');
INSERT INTO "public"."manufacturers" VALUES (453, 'Clatronic');
INSERT INTO "public"."manufacturers" VALUES (454, 'DEXP');
INSERT INTO "public"."manufacturers" VALUES (455, 'Mayer & Boch');
INSERT INTO "public"."manufacturers" VALUES (456, 'Arkray');
INSERT INTO "public"."manufacturers" VALUES (457, 'Sven');
INSERT INTO "public"."manufacturers" VALUES (458, 'Winner');
INSERT INTO "public"."manufacturers" VALUES (459, 'Mec');
INSERT INTO "public"."manufacturers" VALUES (460, 'Heyner');
INSERT INTO "public"."manufacturers" VALUES (461, 'Ramili');
INSERT INTO "public"."manufacturers" VALUES (462, 'Dragonfly');
INSERT INTO "public"."manufacturers" VALUES (463, 'Atesy');
INSERT INTO "public"."manufacturers" VALUES (464, 'Trust');
INSERT INTO "public"."manufacturers" VALUES (465, 'Berdsk');
INSERT INTO "public"."manufacturers" VALUES (466, 'Casada');
INSERT INTO "public"."manufacturers" VALUES (467, 'UST-M');
INSERT INTO "public"."manufacturers" VALUES (468, 'Bayer');
INSERT INTO "public"."manufacturers" VALUES (469, 'Wahoo');
INSERT INTO "public"."manufacturers" VALUES (470, 'C-Media');
INSERT INTO "public"."manufacturers" VALUES (471, 'Unit');
INSERT INTO "public"."manufacturers" VALUES (472, 'Ryobi');
INSERT INTO "public"."manufacturers" VALUES (473, 'Valera');
INSERT INTO "public"."manufacturers" VALUES (474, 'Gastrorag');
INSERT INTO "public"."manufacturers" VALUES (475, 'Berkut');
INSERT INTO "public"."manufacturers" VALUES (476, 'Fiesta');
INSERT INTO "public"."manufacturers" VALUES (477, 'Easy Touch');
INSERT INTO "public"."manufacturers" VALUES (478, 'CRYORIG');
INSERT INTO "public"."manufacturers" VALUES (479, 'Elekta');
INSERT INTO "public"."manufacturers" VALUES (480, 'Janeke');
INSERT INTO "public"."manufacturers" VALUES (481, 'Sonoff');
INSERT INTO "public"."manufacturers" VALUES (482, 'StarWind');
INSERT INTO "public"."manufacturers" VALUES (483, 'Zauber');
INSERT INTO "public"."manufacturers" VALUES (484, 'Kaiser');
INSERT INTO "public"."manufacturers" VALUES (485, 'AL-KO');
INSERT INTO "public"."manufacturers" VALUES (486, 'Wivat');
INSERT INTO "public"."manufacturers" VALUES (487, 'Kocateq');
INSERT INTO "public"."manufacturers" VALUES (488, 'Mikhail Moskvin');
INSERT INTO "public"."manufacturers" VALUES (489, 'Artero');
INSERT INTO "public"."manufacturers" VALUES (490, 'RedLine');
INSERT INTO "public"."manufacturers" VALUES (491, 'DoCut');
INSERT INTO "public"."manufacturers" VALUES (492, 'Jacob Jensen');
INSERT INTO "public"."manufacturers" VALUES (493, 'PQI');
INSERT INTO "public"."manufacturers" VALUES (494, 'e.Zicom');
INSERT INTO "public"."manufacturers" VALUES (495, 'Lian Li');
INSERT INTO "public"."manufacturers" VALUES (496, 'Clever&Clean');
INSERT INTO "public"."manufacturers" VALUES (497, 'Hausmann');
INSERT INTO "public"."manufacturers" VALUES (498, 'Tefal');
INSERT INTO "public"."manufacturers" VALUES (499, 'Meizu');
INSERT INTO "public"."manufacturers" VALUES (500, 'ZyXel');
INSERT INTO "public"."manufacturers" VALUES (501, 'Bomann');
INSERT INTO "public"."manufacturers" VALUES (502, 'Nilfisk');
INSERT INTO "public"."manufacturers" VALUES (503, 'Einhell');
INSERT INTO "public"."manufacturers" VALUES (504, 'Buro');
INSERT INTO "public"."manufacturers" VALUES (505, 'EDIMAX');
INSERT INTO "public"."manufacturers" VALUES (506, 'Midea');
INSERT INTO "public"."manufacturers" VALUES (507, 'Jaguar');
INSERT INTO "public"."manufacturers" VALUES (508, 'Carrin');
INSERT INTO "public"."manufacturers" VALUES (509, 'Toyota');
INSERT INTO "public"."manufacturers" VALUES (510, 'Caso');
INSERT INTO "public"."manufacturers" VALUES (511, 'Hapica');
INSERT INTO "public"."manufacturers" VALUES (512, 'Aquafilter');
INSERT INTO "public"."manufacturers" VALUES (513, 'GFGRIL');
INSERT INTO "public"."manufacturers" VALUES (514, 'Hurom');
INSERT INTO "public"."manufacturers" VALUES (515, 'PROMO');
INSERT INTO "public"."manufacturers" VALUES (516, 'Targus');
INSERT INTO "public"."manufacturers" VALUES (517, 'SPARKY');
INSERT INTO "public"."manufacturers" VALUES (518, 'Gejzer');
INSERT INTO "public"."manufacturers" VALUES (519, 'Redber');
INSERT INTO "public"."manufacturers" VALUES (520, 'SANA');
INSERT INTO "public"."manufacturers" VALUES (521, 'Winard');
INSERT INTO "public"."manufacturers" VALUES (522, 'Nobby');
INSERT INTO "public"."manufacturers" VALUES (523, 'Lepow');
INSERT INTO "public"."manufacturers" VALUES (524, 'Bosch');
INSERT INTO "public"."manufacturers" VALUES (525, 'ELIS');
INSERT INTO "public"."manufacturers" VALUES (526, 'Enkor');
INSERT INTO "public"."manufacturers" VALUES (527, 'GP');
INSERT INTO "public"."manufacturers" VALUES (528, 'Schaerer');
INSERT INTO "public"."manufacturers" VALUES (529, 'Luazon');
INSERT INTO "public"."manufacturers" VALUES (530, 'Lenovo');
INSERT INTO "public"."manufacturers" VALUES (531, 'RBM');
INSERT INTO "public"."manufacturers" VALUES (532, 'Port Designs');
INSERT INTO "public"."manufacturers" VALUES (533, 'Foppapedretti');
INSERT INTO "public"."manufacturers" VALUES (534, 'Seagate');
INSERT INTO "public"."manufacturers" VALUES (535, 'Apach');
INSERT INTO "public"."manufacturers" VALUES (536, 'Multydom');
INSERT INTO "public"."manufacturers" VALUES (537, 'Candy');
INSERT INTO "public"."manufacturers" VALUES (538, 'Kristal');
INSERT INTO "public"."manufacturers" VALUES (539, 'Auzer');
INSERT INTO "public"."manufacturers" VALUES (540, 'Ritmix');
INSERT INTO "public"."manufacturers" VALUES (541, 'PowerCool');
INSERT INTO "public"."manufacturers" VALUES (542, 'BBK');
INSERT INTO "public"."manufacturers" VALUES (543, 'Ester Plus');
INSERT INTO "public"."manufacturers" VALUES (544, 'TG-NET');
INSERT INTO "public"."manufacturers" VALUES (545, 'PC PET');
INSERT INTO "public"."manufacturers" VALUES (546, 'Atlanta');
INSERT INTO "public"."manufacturers" VALUES (547, 'Lavor Pro');
INSERT INTO "public"."manufacturers" VALUES (548, 'Verbatim');
INSERT INTO "public"."manufacturers" VALUES (549, 'OCZ');
INSERT INTO "public"."manufacturers" VALUES (550, 'Ardin');
INSERT INTO "public"."manufacturers" VALUES (551, 'Curaprox');
INSERT INTO "public"."manufacturers" VALUES (552, 'Oskar');
INSERT INTO "public"."manufacturers" VALUES (553, 'Mitsumaru');
INSERT INTO "public"."manufacturers" VALUES (554, 'Gutrend');
INSERT INTO "public"."manufacturers" VALUES (555, 'NZXT');
INSERT INTO "public"."manufacturers" VALUES (556, 'DFunc');
INSERT INTO "public"."manufacturers" VALUES (557, 'JARKOFF');
INSERT INTO "public"."manufacturers" VALUES (558, 'Meditech');
INSERT INTO "public"."manufacturers" VALUES (559, 'UAG');
INSERT INTO "public"."manufacturers" VALUES (560, 'Dicota');
INSERT INTO "public"."manufacturers" VALUES (561, 'Hoffman');
INSERT INTO "public"."manufacturers" VALUES (562, 'Orient');
INSERT INTO "public"."manufacturers" VALUES (563, 'Nescafe');
INSERT INTO "public"."manufacturers" VALUES (564, 'Davis');
INSERT INTO "public"."manufacturers" VALUES (565, 'Miracase');
INSERT INTO "public"."manufacturers" VALUES (566, 'MAG');
INSERT INTO "public"."manufacturers" VALUES (567, 'ATP');
INSERT INTO "public"."manufacturers" VALUES (568, 'TMB');
INSERT INTO "public"."manufacturers" VALUES (569, 'Octavo');
INSERT INTO "public"."manufacturers" VALUES (570, 'Eurostek');
INSERT INTO "public"."manufacturers" VALUES (571, 'JOHNSON');
INSERT INTO "public"."manufacturers" VALUES (572, 'Bieffe');
INSERT INTO "public"."manufacturers" VALUES (573, 'LSI');
INSERT INTO "public"."manufacturers" VALUES (574, 'Celestron');
INSERT INTO "public"."manufacturers" VALUES (575, 'Celme');
INSERT INTO "public"."manufacturers" VALUES (576, 'Veet');
INSERT INTO "public"."manufacturers" VALUES (577, 'OLMIO');
INSERT INTO "public"."manufacturers" VALUES (578, 'Greenis');
INSERT INTO "public"."manufacturers" VALUES (579, 'Nivona');
INSERT INTO "public"."manufacturers" VALUES (580, 'Faema');
INSERT INTO "public"."manufacturers" VALUES (581, 'Jeanselit');
INSERT INTO "public"."manufacturers" VALUES (582, 'Meteo Guide');
INSERT INTO "public"."manufacturers" VALUES (583, 'Omoikiri');
INSERT INTO "public"."manufacturers" VALUES (584, 'Cisco');
INSERT INTO "public"."manufacturers" VALUES (585, 'Packard Bell');
INSERT INTO "public"."manufacturers" VALUES (586, 'Sport Elite');
INSERT INTO "public"."manufacturers" VALUES (587, 'LAMARK');
INSERT INTO "public"."manufacturers" VALUES (588, 'BEON');
INSERT INTO "public"."manufacturers" VALUES (589, 'Ghibli');
INSERT INTO "public"."manufacturers" VALUES (590, 'Carrera');
INSERT INTO "public"."manufacturers" VALUES (591, 'Dogrular');
INSERT INTO "public"."manufacturers" VALUES (592, 'Termolux');
INSERT INTO "public"."manufacturers" VALUES (593, 'TP-LINK');
INSERT INTO "public"."manufacturers" VALUES (594, 'Smart Bird');
INSERT INTO "public"."manufacturers" VALUES (595, 'Rolsen');
INSERT INTO "public"."manufacturers" VALUES (596, 'TURMIX');
INSERT INTO "public"."manufacturers" VALUES (597, 'Fimar');
INSERT INTO "public"."manufacturers" VALUES (598, 'Rio');
INSERT INTO "public"."manufacturers" VALUES (599, 'Rapala');
INSERT INTO "public"."manufacturers" VALUES (600, 'Hoox');
INSERT INTO "public"."manufacturers" VALUES (601, 'Fixsen');
INSERT INTO "public"."manufacturers" VALUES (602, 'Metalnova');
INSERT INTO "public"."manufacturers" VALUES (603, 'Solis');
INSERT INTO "public"."manufacturers" VALUES (604, 'Rowenta');
INSERT INTO "public"."manufacturers" VALUES (605, 'Motorola');
INSERT INTO "public"."manufacturers" VALUES (606, 'OK');
INSERT INTO "public"."manufacturers" VALUES (607, 'Speed Dragon');
INSERT INTO "public"."manufacturers" VALUES (608, 'Silter');
INSERT INTO "public"."manufacturers" VALUES (609, 'Prym');
INSERT INTO "public"."manufacturers" VALUES (610, 'CEM');
INSERT INTO "public"."manufacturers" VALUES (611, 'A-Data');
INSERT INTO "public"."manufacturers" VALUES (612, 'Alcom');
INSERT INTO "public"."manufacturers" VALUES (613, 'KITFORT');
INSERT INTO "public"."manufacturers" VALUES (614, 'Remax');
INSERT INTO "public"."manufacturers" VALUES (615, 'Deepcool');
INSERT INTO "public"."manufacturers" VALUES (616, 'Molgato');
INSERT INTO "public"."manufacturers" VALUES (617, 'Defort');
INSERT INTO "public"."manufacturers" VALUES (618, 'ACME');
INSERT INTO "public"."manufacturers" VALUES (619, 'Ryzhij Kot');
INSERT INTO "public"."manufacturers" VALUES (620, 'Cremesso');
INSERT INTO "public"."manufacturers" VALUES (621, 'Viewsonic');
INSERT INTO "public"."manufacturers" VALUES (622, 'EMC');
INSERT INTO "public"."manufacturers" VALUES (623, 'Kuvings');
INSERT INTO "public"."manufacturers" VALUES (624, 'Palit');
INSERT INTO "public"."manufacturers" VALUES (625, 'Geil');
INSERT INTO "public"."manufacturers" VALUES (626, 'Battistella');
INSERT INTO "public"."manufacturers" VALUES (627, 'Zubr');
INSERT INTO "public"."manufacturers" VALUES (628, 'Moser');
INSERT INTO "public"."manufacturers" VALUES (629, 'NETGEAR');
INSERT INTO "public"."manufacturers" VALUES (630, 'Rosinka');
INSERT INTO "public"."manufacturers" VALUES (631, 'Maxion');
INSERT INTO "public"."manufacturers" VALUES (632, 'RGV');
INSERT INTO "public"."manufacturers" VALUES (633, 'NUK');
INSERT INTO "public"."manufacturers" VALUES (634, 'ANKER');
INSERT INTO "public"."manufacturers" VALUES (635, 'Bork');
INSERT INTO "public"."manufacturers" VALUES (636, 'LifeScan');
INSERT INTO "public"."manufacturers" VALUES (637, 'Panasonic');
INSERT INTO "public"."manufacturers" VALUES (638, 'Hurakan');
INSERT INTO "public"."manufacturers" VALUES (639, 'Dahua');
INSERT INTO "public"."manufacturers" VALUES (640, 'Dicom');
INSERT INTO "public"."manufacturers" VALUES (641, 'Flaem Nuova');
INSERT INTO "public"."manufacturers" VALUES (642, 'G-case');
INSERT INTO "public"."manufacturers" VALUES (643, 'Gamma Piu');
INSERT INTO "public"."manufacturers" VALUES (644, 'Vortmax');
INSERT INTO "public"."manufacturers" VALUES (645, 'De''Longhi');
INSERT INTO "public"."manufacturers" VALUES (646, 'GIGALINK');
INSERT INTO "public"."manufacturers" VALUES (647, 'Soteco');
INSERT INTO "public"."manufacturers" VALUES (648, 'Armed');
INSERT INTO "public"."manufacturers" VALUES (649, 'AMD');
INSERT INTO "public"."manufacturers" VALUES (650, 'Bort');
INSERT INTO "public"."manufacturers" VALUES (651, 'Wendox');
INSERT INTO "public"."manufacturers" VALUES (652, 'Planta');
INSERT INTO "public"."manufacturers" VALUES (653, 'Doffler');
INSERT INTO "public"."manufacturers" VALUES (654, 'Samsonite');
INSERT INTO "public"."manufacturers" VALUES (655, 'HouseFit');
INSERT INTO "public"."manufacturers" VALUES (656, 'Nord');
INSERT INTO "public"."manufacturers" VALUES (657, 'Autovirazh');
INSERT INTO "public"."manufacturers" VALUES (658, 'Hynix');
INSERT INTO "public"."manufacturers" VALUES (659, 'Yasi');
INSERT INTO "public"."manufacturers" VALUES (660, 'Masterica');
INSERT INTO "public"."manufacturers" VALUES (661, 'Novaya Voda');
INSERT INTO "public"."manufacturers" VALUES (662, 'PARLUX');
INSERT INTO "public"."manufacturers" VALUES (663, 'Wellberg');
INSERT INTO "public"."manufacturers" VALUES (664, 'Elta');
INSERT INTO "public"."manufacturers" VALUES (665, 'Yunmai');
INSERT INTO "public"."manufacturers" VALUES (666, 'Travola');
INSERT INTO "public"."manufacturers" VALUES (667, 'KRET');
INSERT INTO "public"."manufacturers" VALUES (668, 'Miele');
INSERT INTO "public"."manufacturers" VALUES (669, 'Gelid Solutions');
INSERT INTO "public"."manufacturers" VALUES (670, 'Melitta');
INSERT INTO "public"."manufacturers" VALUES (671, 'Domena');
INSERT INTO "public"."manufacturers" VALUES (672, 'MAC5');
INSERT INTO "public"."manufacturers" VALUES (673, 'Boneco');
INSERT INTO "public"."manufacturers" VALUES (674, 'Switel');
INSERT INTO "public"."manufacturers" VALUES (675, 'Leran');
INSERT INTO "public"."manufacturers" VALUES (676, 'Energy');
INSERT INTO "public"."manufacturers" VALUES (677, 'RIVACASE');
INSERT INTO "public"."manufacturers" VALUES (678, 'Testo');
INSERT INTO "public"."manufacturers" VALUES (679, 'Nokia');
INSERT INTO "public"."manufacturers" VALUES (680, 'Apple');
INSERT INTO "public"."manufacturers" VALUES (681, 'Cozistyle');
INSERT INTO "public"."manufacturers" VALUES (682, 'Sharp');
INSERT INTO "public"."manufacturers" VALUES (683, 'Beko');
INSERT INTO "public"."manufacturers" VALUES (684, 'Prime Line');
INSERT INTO "public"."manufacturers" VALUES (685, 'Daewoo');
INSERT INTO "public"."manufacturers" VALUES (686, 'Monella');
INSERT INTO "public"."manufacturers" VALUES (687, 'Karcher');
INSERT INTO "public"."manufacturers" VALUES (688, 'Utes');
INSERT INTO "public"."manufacturers" VALUES (689, 'Donfeel');
INSERT INTO "public"."manufacturers" VALUES (690, 'Hartmann');
INSERT INTO "public"."manufacturers" VALUES (691, 'Partner');
INSERT INTO "public"."manufacturers" VALUES (692, 'Elchim');
INSERT INTO "public"."manufacturers" VALUES (693, 'Maxwell');
INSERT INTO "public"."manufacturers" VALUES (694, 'Ea2');
INSERT INTO "public"."manufacturers" VALUES (695, 'Tenda');
INSERT INTO "public"."manufacturers" VALUES (696, 'Geratherm');
INSERT INTO "public"."manufacturers" VALUES (697, 'Indokor');
INSERT INTO "public"."manufacturers" VALUES (698, 'Korg');
INSERT INTO "public"."manufacturers" VALUES (699, 'Powertraveller');
INSERT INTO "public"."manufacturers" VALUES (700, 'Horizont');
INSERT INTO "public"."manufacturers" VALUES (701, 'Elitech');
INSERT INTO "public"."manufacturers" VALUES (702, 'Powerocks');
INSERT INTO "public"."manufacturers" VALUES (703, 'Crucial');
INSERT INTO "public"."manufacturers" VALUES (704, 'BarTec');
INSERT INTO "public"."manufacturers" VALUES (705, 'Dream Machines');
INSERT INTO "public"."manufacturers" VALUES (706, 'LG');
INSERT INTO "public"."manufacturers" VALUES (707, 'Gamemax');
INSERT INTO "public"."manufacturers" VALUES (708, 'Vema');
INSERT INTO "public"."manufacturers" VALUES (709, 'Forward');
INSERT INTO "public"."manufacturers" VALUES (710, 'Kambrook');
INSERT INTO "public"."manufacturers" VALUES (711, 'Fusion');
INSERT INTO "public"."manufacturers" VALUES (712, 'Simfer');
INSERT INTO "public"."manufacturers" VALUES (713, 'Ziver');
INSERT INTO "public"."manufacturers" VALUES (714, 'VAPOSTEAM');
INSERT INTO "public"."manufacturers" VALUES (715, 'VolTera');
INSERT INTO "public"."manufacturers" VALUES (716, 'LinkWorld');
INSERT INTO "public"."manufacturers" VALUES (717, 'Zigmund&Shtain');
INSERT INTO "public"."manufacturers" VALUES (718, 'ZTE');
INSERT INTO "public"."manufacturers" VALUES (719, 'Marta');
INSERT INTO "public"."manufacturers" VALUES (720, 'S-Line');
INSERT INTO "public"."manufacturers" VALUES (721, 'Kromatech');
INSERT INTO "public"."manufacturers" VALUES (722, 'Hiper');
INSERT INTO "public"."manufacturers" VALUES (723, 'Momax');
INSERT INTO "public"."manufacturers" VALUES (724, 'Ariete');
INSERT INTO "public"."manufacturers" VALUES (725, 'Rosenberg');
INSERT INTO "public"."manufacturers" VALUES (726, 'Sima-land');
INSERT INTO "public"."manufacturers" VALUES (727, 'Waring');
INSERT INTO "public"."manufacturers" VALUES (728, 'PROconnect');
INSERT INTO "public"."manufacturers" VALUES (729, 'Brother');
INSERT INTO "public"."manufacturers" VALUES (730, 'Kamille');
INSERT INTO "public"."manufacturers" VALUES (731, 'Mir Detstva');
INSERT INTO "public"."manufacturers" VALUES (732, 'Scythe');
INSERT INTO "public"."manufacturers" VALUES (733, 'Parker');
INSERT INTO "public"."manufacturers" VALUES (734, 'DAFI');
INSERT INTO "public"."manufacturers" VALUES (735, 'Timson');
INSERT INTO "public"."manufacturers" VALUES (736, 'Hamilton');
INSERT INTO "public"."manufacturers" VALUES (737, 'Cezaris');
INSERT INTO "public"."manufacturers" VALUES (738, 'Krusell');
INSERT INTO "public"."manufacturers" VALUES (739, 'REXANT');
INSERT INTO "public"."manufacturers" VALUES (740, 'MTM');
INSERT INTO "public"."manufacturers" VALUES (741, 'ASRock');
INSERT INTO "public"."manufacturers" VALUES (742, 'Emmi-Dent');
INSERT INTO "public"."manufacturers" VALUES (743, 'Axentia');
INSERT INTO "public"."manufacturers" VALUES (744, 'Xiaomi');
INSERT INTO "public"."manufacturers" VALUES (745, 'Pilot');
INSERT INTO "public"."manufacturers" VALUES (746, 'Scarlett');
INSERT INTO "public"."manufacturers" VALUES (747, 'Topperr');
INSERT INTO "public"."manufacturers" VALUES (748, 'KREZ');
INSERT INTO "public"."manufacturers" VALUES (749, 'Lequip');
INSERT INTO "public"."manufacturers" VALUES (750, 'TRISTAR');
INSERT INTO "public"."manufacturers" VALUES (751, 'Corsair');
INSERT INTO "public"."manufacturers" VALUES (752, 'Powerman');
INSERT INTO "public"."manufacturers" VALUES (753, 'Vorwerk');
INSERT INTO "public"."manufacturers" VALUES (754, 'Yamata');
INSERT INTO "public"."manufacturers" VALUES (755, 'Riester');
INSERT INTO "public"."manufacturers" VALUES (756, 'Polaris');
INSERT INTO "public"."manufacturers" VALUES (757, 'Rubetek');
INSERT INTO "public"."manufacturers" VALUES (758, 'ROCK');
INSERT INTO "public"."manufacturers" VALUES (759, 'Polar');
INSERT INTO "public"."manufacturers" VALUES (760, 'GOODRAM');
INSERT INTO "public"."manufacturers" VALUES (761, 'uBear');
INSERT INTO "public"."manufacturers" VALUES (762, 'Veritas');
INSERT INTO "public"."manufacturers" VALUES (763, 'Dell');
INSERT INTO "public"."manufacturers" VALUES (764, 'EXEQ');
INSERT INTO "public"."manufacturers" VALUES (765, 'Lelit');
INSERT INTO "public"."manufacturers" VALUES (766, 'Aston');
INSERT INTO "public"."manufacturers" VALUES (767, 'Boulle');
INSERT INTO "public"."manufacturers" VALUES (768, 'Jardeko');
INSERT INTO "public"."manufacturers" VALUES (769, 'Beeline');
INSERT INTO "public"."manufacturers" VALUES (770, 'Brig');
INSERT INTO "public"."manufacturers" VALUES (771, 'NAD');
INSERT INTO "public"."manufacturers" VALUES (772, 'Camry');
INSERT INTO "public"."manufacturers" VALUES (773, 'Homestar');
INSERT INTO "public"."manufacturers" VALUES (774, 'Think Tank');
INSERT INTO "public"."manufacturers" VALUES (775, 'Maruchi');
INSERT INTO "public"."manufacturers" VALUES (776, 'Oster');
INSERT INTO "public"."manufacturers" VALUES (777, 'GAL');
INSERT INTO "public"."manufacturers" VALUES (778, 'Inada');
INSERT INTO "public"."manufacturers" VALUES (779, 'WaterShot');
INSERT INTO "public"."manufacturers" VALUES (780, 'Chayka');
INSERT INTO "public"."manufacturers" VALUES (781, 'Jofel');
INSERT INTO "public"."manufacturers" VALUES (782, 'Arnica');
INSERT INTO "public"."manufacturers" VALUES (783, 'Qumo');
INSERT INTO "public"."manufacturers" VALUES (784, 'Akel');
INSERT INTO "public"."manufacturers" VALUES (785, 'Enermax');
INSERT INTO "public"."manufacturers" VALUES (786, 'Sturm');
INSERT INTO "public"."manufacturers" VALUES (787, 'Aquatech');
INSERT INTO "public"."manufacturers" VALUES (788, 'Nuova Simonelli');
INSERT INTO "public"."manufacturers" VALUES (789, 'Wellcraft');
INSERT INTO "public"."manufacturers" VALUES (790, 'Fackelmann');
INSERT INTO "public"."manufacturers" VALUES (791, 'Intex');
INSERT INTO "public"."manufacturers" VALUES (792, 'LINKSYS');
INSERT INTO "public"."manufacturers" VALUES (793, 'MEROL');
INSERT INTO "public"."manufacturers" VALUES (794, 'Vertex');
INSERT INTO "public"."manufacturers" VALUES (795, 'Gess');
INSERT INTO "public"."manufacturers" VALUES (796, 'AMMA');
INSERT INTO "public"."manufacturers" VALUES (797, 'iconBIT');
INSERT INTO "public"."manufacturers" VALUES (798, 'TechLink');
INSERT INTO "public"."manufacturers" VALUES (799, 'Golla');
INSERT INTO "public"."manufacturers" VALUES (800, 'Andis');
INSERT INTO "public"."manufacturers" VALUES (801, 'BISSELL');
INSERT INTO "public"."manufacturers" VALUES (802, 'EIO');
INSERT INTO "public"."manufacturers" VALUES (803, 'Rohaus');
INSERT INTO "public"."manufacturers" VALUES (804, 'Mig');
INSERT INTO "public"."manufacturers" VALUES (805, 'Foxline');
INSERT INTO "public"."manufacturers" VALUES (806, 'Sibel');
INSERT INTO "public"."manufacturers" VALUES (807, 'STIHL');
INSERT INTO "public"."manufacturers" VALUES (808, 'Extreme Networks');
INSERT INTO "public"."manufacturers" VALUES (809, 'Samsung');
INSERT INTO "public"."manufacturers" VALUES (810, 'Beaba');
INSERT INTO "public"."manufacturers" VALUES (811, 'Baby Lock');
INSERT INTO "public"."manufacturers" VALUES (812, 'DBK');
INSERT INTO "public"."manufacturers" VALUES (813, 'Jetpik');
INSERT INTO "public"."manufacturers" VALUES (814, 'Unicorn');
INSERT INTO "public"."manufacturers" VALUES (815, 'Multico');
INSERT INTO "public"."manufacturers" VALUES (816, 'Tesler');
INSERT INTO "public"."manufacturers" VALUES (817, 'Honeywell');
INSERT INTO "public"."manufacturers" VALUES (818, 'Grand Master');
INSERT INTO "public"."manufacturers" VALUES (819, 'Bravilor Bonamat');
INSERT INTO "public"."manufacturers" VALUES (820, 'G-teq');
INSERT INTO "public"."manufacturers" VALUES (821, 'Megasonex');
INSERT INTO "public"."manufacturers" VALUES (822, 'Karl Weis');
INSERT INTO "public"."manufacturers" VALUES (823, 'Akai');
INSERT INTO "public"."manufacturers" VALUES (824, 'Shenzhen Jingyitian');
INSERT INTO "public"."manufacturers" VALUES (825, 'Xrobot');
INSERT INTO "public"."manufacturers" VALUES (826, 'RICCI');
INSERT INTO "public"."manufacturers" VALUES (827, 'Coolmart');
INSERT INTO "public"."manufacturers" VALUES (828, 'Korona');
INSERT INTO "public"."manufacturers" VALUES (829, 'EVO');
INSERT INTO "public"."manufacturers" VALUES (830, 'Foxconn');
INSERT INTO "public"."manufacturers" VALUES (831, 'HARPER');
INSERT INTO "public"."manufacturers" VALUES (832, 'CAS');
INSERT INTO "public"."manufacturers" VALUES (833, 'Keosan');
INSERT INTO "public"."manufacturers" VALUES (834, 'Medisana');
INSERT INTO "public"."manufacturers" VALUES (835, 'Franke');
INSERT INTO "public"."manufacturers" VALUES (836, 'CS Medica');
INSERT INTO "public"."manufacturers" VALUES (837, 'Bekker');
INSERT INTO "public"."manufacturers" VALUES (838, 'Sea Sonic');
INSERT INTO "public"."manufacturers" VALUES (839, 'Mercury');
INSERT INTO "public"."manufacturers" VALUES (840, 'New Home');
INSERT INTO "public"."manufacturers" VALUES (841, 'BelOMO');
INSERT INTO "public"."manufacturers" VALUES (842, 'Russell Hobbs');
INSERT INTO "public"."manufacturers" VALUES (843, 'TRENDnet');
INSERT INTO "public"."manufacturers" VALUES (844, 'GARDENA');
INSERT INTO "public"."manufacturers" VALUES (845, 'Infortrend');
INSERT INTO "public"."manufacturers" VALUES (846, 'Aerocool');
INSERT INTO "public"."manufacturers" VALUES (847, '5bites');
INSERT INTO "public"."manufacturers" VALUES (848, 'Espada');
INSERT INTO "public"."manufacturers" VALUES (849, 'Delimano');
INSERT INTO "public"."manufacturers" VALUES (850, 'Zanussi');
INSERT INTO "public"."manufacturers" VALUES (851, 'Moshi');
INSERT INTO "public"."manufacturers" VALUES (852, 'RST');
INSERT INTO "public"."manufacturers" VALUES (853, 'Liloma');
INSERT INTO "public"."manufacturers" VALUES (854, 'Canpol Babies');
INSERT INTO "public"."manufacturers" VALUES (855, 'Panda');
INSERT INTO "public"."manufacturers" VALUES (856, 'Cambridge');
INSERT INTO "public"."manufacturers" VALUES (857, 'MIE');
INSERT INTO "public"."manufacturers" VALUES (858, 'Lavezzini');
INSERT INTO "public"."manufacturers" VALUES (859, 'Barry');
INSERT INTO "public"."manufacturers" VALUES (860, 'Zepter');
INSERT INTO "public"."manufacturers" VALUES (861, 'Velikie Reki');
INSERT INTO "public"."manufacturers" VALUES (862, 'QNAP');
INSERT INTO "public"."manufacturers" VALUES (863, 'Falcon Eye');
INSERT INTO "public"."manufacturers" VALUES (864, 'Body Sculpture');
INSERT INTO "public"."manufacturers" VALUES (865, 'Menumaster');
INSERT INTO "public"."manufacturers" VALUES (866, 'Laurastar');
INSERT INTO "public"."manufacturers" VALUES (867, 'Galaxy');
INSERT INTO "public"."manufacturers" VALUES (868, 'Eurogold');
INSERT INTO "public"."manufacturers" VALUES (869, 'Steba');
INSERT INTO "public"."manufacturers" VALUES (870, 'Intel');
INSERT INTO "public"."manufacturers" VALUES (871, 'AVEX');
INSERT INTO "public"."manufacturers" VALUES (872, 'Lira');
INSERT INTO "public"."manufacturers" VALUES (873, 'Columbus');
INSERT INTO "public"."manufacturers" VALUES (874, 'PLANET');
INSERT INTO "public"."manufacturers" VALUES (875, 'ZiPower');
INSERT INTO "public"."manufacturers" VALUES (876, 'Salter');
INSERT INTO "public"."manufacturers" VALUES (877, 'Brisk');
INSERT INTO "public"."manufacturers" VALUES (878, 'Dewal');
INSERT INTO "public"."manufacturers" VALUES (879, 'SoWash');
INSERT INTO "public"."manufacturers" VALUES (880, 'BERNINA');
INSERT INTO "public"."manufacturers" VALUES (881, 'Beurer');
INSERT INTO "public"."manufacturers" VALUES (882, 'Chicco');
INSERT INTO "public"."manufacturers" VALUES (883, 'Sarayli');
INSERT INTO "public"."manufacturers" VALUES (884, 'B.Well');
INSERT INTO "public"."manufacturers" VALUES (885, 'Oursson');
INSERT INTO "public"."manufacturers" VALUES (886, 'TopON');
INSERT INTO "public"."manufacturers" VALUES (887, 'Thermalright');
INSERT INTO "public"."manufacturers" VALUES (888, 'Penzmash');
INSERT INTO "public"."manufacturers" VALUES (889, 'Graef');
INSERT INTO "public"."manufacturers" VALUES (890, 'Cellularline');
INSERT INTO "public"."manufacturers" VALUES (891, 'Smeg');
INSERT INTO "public"."manufacturers" VALUES (892, 'Vitamix');
INSERT INTO "public"."manufacturers" VALUES (893, 'Eibenstock');
INSERT INTO "public"."manufacturers" VALUES (894, 'Bamix');
INSERT INTO "public"."manufacturers" VALUES (895, 'Wahl');
INSERT INTO "public"."manufacturers" VALUES (896, 'ROVUS');
INSERT INTO "public"."manufacturers" VALUES (897, 'Nissei');
INSERT INTO "public"."manufacturers" VALUES (898, 'Asus');
INSERT INTO "public"."manufacturers" VALUES (899, 'Anatomico');
INSERT INTO "public"."manufacturers" VALUES (900, 'Gipfel');
INSERT INTO "public"."manufacturers" VALUES (901, 'Juniper');
INSERT INTO "public"."manufacturers" VALUES (902, 'Sensa');
INSERT INTO "public"."manufacturers" VALUES (903, 'Zalman');
INSERT INTO "public"."manufacturers" VALUES (904, 'Aksberry');
INSERT INTO "public"."manufacturers" VALUES (905, 'Zenet');
INSERT INTO "public"."manufacturers" VALUES (906, 'Monster');
INSERT INTO "public"."manufacturers" VALUES (907, 'Koh-i-Noor');
INSERT INTO "public"."manufacturers" VALUES (908, 'Delvir');
INSERT INTO "public"."manufacturers" VALUES (909, 'Plextor');
INSERT INTO "public"."manufacturers" VALUES (910, 'Elgreen');
INSERT INTO "public"."manufacturers" VALUES (911, 'FGUP UPPO');
INSERT INTO "public"."manufacturers" VALUES (912, 'STLab');
INSERT INTO "public"."manufacturers" VALUES (913, 'Antec');
INSERT INTO "public"."manufacturers" VALUES (914, 'La Cimbali');
INSERT INTO "public"."manufacturers" VALUES (915, 'In Win');
INSERT INTO "public"."manufacturers" VALUES (916, 'Cougar');
INSERT INTO "public"."manufacturers" VALUES (917, 'Binatone');
INSERT INTO "public"."manufacturers" VALUES (918, 'Ross&Moor');
INSERT INTO "public"."manufacturers" VALUES (919, 'Asahi Irica');
INSERT INTO "public"."manufacturers" VALUES (920, 'Silicon Power');
INSERT INTO "public"."manufacturers" VALUES (921, 'RME');
INSERT INTO "public"."manufacturers" VALUES (922, 'Kampfer');
INSERT INTO "public"."manufacturers" VALUES (923, 'Tomas Stern');
INSERT INTO "public"."manufacturers" VALUES (924, 'Green Apple');
INSERT INTO "public"."manufacturers" VALUES (925, 'GD');
INSERT INTO "public"."manufacturers" VALUES (926, 'Texet');
INSERT INTO "public"."manufacturers" VALUES (927, 'Starfood');
INSERT INTO "public"."manufacturers" VALUES (928, 'ST');
INSERT INTO "public"."manufacturers" VALUES (929, 'Biostar');
INSERT INTO "public"."manufacturers" VALUES (930, 'Cata');
INSERT INTO "public"."manufacturers" VALUES (931, 'Microlife');
INSERT INTO "public"."manufacturers" VALUES (932, 'Gigabyte');
INSERT INTO "public"."manufacturers" VALUES (933, 'Skylink');
INSERT INTO "public"."manufacturers" VALUES (934, 'Abat');
INSERT INTO "public"."manufacturers" VALUES (935, 'Storm');
INSERT INTO "public"."manufacturers" VALUES (936, 'Barigo');
INSERT INTO "public"."manufacturers" VALUES (937, 'PNY');
INSERT INTO "public"."manufacturers" VALUES (938, 'LigoWave');
INSERT INTO "public"."manufacturers" VALUES (939, 'BaByliss');
INSERT INTO "public"."manufacturers" VALUES (940, 'Unitekno');
INSERT INTO "public"."manufacturers" VALUES (941, 'Gold Eagle');
INSERT INTO "public"."manufacturers" VALUES (942, 'Longa Vita');
INSERT INTO "public"."manufacturers" VALUES (943, 'Henkelman');
INSERT INTO "public"."manufacturers" VALUES (944, 'Gorenje');
INSERT INTO "public"."manufacturers" VALUES (945, 'Happy Baby');
INSERT INTO "public"."manufacturers" VALUES (946, 'Airhot');
INSERT INTO "public"."manufacturers" VALUES (947, 'Rommelsbacher');
INSERT INTO "public"."manufacturers" VALUES (948, 'TITAN');
INSERT INTO "public"."manufacturers" VALUES (949, 'SYR');
INSERT INTO "public"."manufacturers" VALUES (950, 'Colgate');
INSERT INTO "public"."manufacturers" VALUES (951, 'MPM');
INSERT INTO "public"."manufacturers" VALUES (952, 'Piquadro');
INSERT INTO "public"."manufacturers" VALUES (953, 'Promate');
INSERT INTO "public"."manufacturers" VALUES (954, 'Varta');
INSERT INTO "public"."manufacturers" VALUES (955, 'AmperIn');
INSERT INTO "public"."manufacturers" VALUES (956, 'MAGNIT');
INSERT INTO "public"."manufacturers" VALUES (957, 'Asko');
INSERT INTO "public"."manufacturers" VALUES (958, 'Torneo');
INSERT INTO "public"."manufacturers" VALUES (959, 'Nanoxia');
INSERT INTO "public"."manufacturers" VALUES (960, 'Irbis');
INSERT INTO "public"."manufacturers" VALUES (961, 'PIT');
INSERT INTO "public"."manufacturers" VALUES (962, 'MESSER');
INSERT INTO "public"."manufacturers" VALUES (963, 'Metabo');
INSERT INTO "public"."manufacturers" VALUES (964, 'Nofer');
INSERT INTO "public"."manufacturers" VALUES (965, 'AIRLINE');
INSERT INTO "public"."manufacturers" VALUES (966, 'Hoover');
INSERT INTO "public"."manufacturers" VALUES (967, 'Peroni');
INSERT INTO "public"."manufacturers" VALUES (968, 'VIA');
INSERT INTO "public"."manufacturers" VALUES (969, 'Staleks');
INSERT INTO "public"."manufacturers" VALUES (970, 'Waterpik');
INSERT INTO "public"."manufacturers" VALUES (971, 'Runtastic');
INSERT INTO "public"."manufacturers" VALUES (972, 'Urbano');
INSERT INTO "public"."manufacturers" VALUES (973, 'Atoll');
INSERT INTO "public"."manufacturers" VALUES (974, 'Solinberg');
INSERT INTO "public"."manufacturers" VALUES (975, 'APC');
INSERT INTO "public"."manufacturers" VALUES (976, 'Adaptec');
INSERT INTO "public"."manufacturers" VALUES (977, 'Kurnosiky');
INSERT INTO "public"."manufacturers" VALUES (978, 'Xilence');
INSERT INTO "public"."manufacturers" VALUES (979, 'EFBA');
INSERT INTO "public"."manufacturers" VALUES (980, 'Promac');
INSERT INTO "public"."manufacturers" VALUES (981, 'Family');
INSERT INTO "public"."manufacturers" VALUES (982, 'VAX');
INSERT INTO "public"."manufacturers" VALUES (983, 'MED 2000');
INSERT INTO "public"."manufacturers" VALUES (984, 'Metaltex');
INSERT INTO "public"."manufacturers" VALUES (985, 'Zelmer');
INSERT INTO "public"."manufacturers" VALUES (986, 'Momert');
INSERT INTO "public"."manufacturers" VALUES (987, 'Ampix');
INSERT INTO "public"."manufacturers" VALUES (988, 'IceHammer');
INSERT INTO "public"."manufacturers" VALUES (989, 'Juki');
INSERT INTO "public"."manufacturers" VALUES (990, 'HoMedics');
INSERT INTO "public"."manufacturers" VALUES (991, 'Tria');
INSERT INTO "public"."manufacturers" VALUES (992, 'Start');
INSERT INTO "public"."manufacturers" VALUES (993, 'InStyler');
INSERT INTO "public"."manufacturers" VALUES (994, 'Calibre');
INSERT INTO "public"."manufacturers" VALUES (995, 'iStorage');
INSERT INTO "public"."manufacturers" VALUES (996, 'Akira');
INSERT INTO "public"."manufacturers" VALUES (997, 'Singer');
INSERT INTO "public"."manufacturers" VALUES (998, 'Gretti');
INSERT INTO "public"."manufacturers" VALUES (999, 'SuperJet');
INSERT INTO "public"."manufacturers" VALUES (1000, 'Bebe Confort');
INSERT INTO "public"."manufacturers" VALUES (1001, 'ARCTIC');
INSERT INTO "public"."manufacturers" VALUES (1002, 'Oysters');
INSERT INTO "public"."manufacturers" VALUES (1003, 'Violet');
INSERT INTO "public"."manufacturers" VALUES (1004, 'CoifIn');
INSERT INTO "public"."manufacturers" VALUES (1005, 'BoyScout');
INSERT INTO "public"."manufacturers" VALUES (1006, 'Meliconi');
INSERT INTO "public"."manufacturers" VALUES (1007, 'Ubiquiti');
INSERT INTO "public"."manufacturers" VALUES (1008, 'Romoss');
INSERT INTO "public"."manufacturers" VALUES (1009, 'JTC');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS "public"."products";
CREATE TABLE "public"."products" (
  "product_id" int8 NOT NULL DEFAULT nextval('products_seq'::regclass),
  "product_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "manufacturer_id" int8 NOT NULL,
  "category_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO "public"."products" VALUES (1, 'Ноутбук Lenovo ThinkPad X270 [X270 20HN0012RT]', 530, 2);
INSERT INTO "public"."products" VALUES (2, 'Материнская плата MSI B250M BAZOOKA PLUS', 325, 2);
INSERT INTO "public"."products" VALUES (3, 'Электрочайник Oursson 	 EK1763M', 885, 1);
INSERT INTO "public"."products" VALUES (4, 'Фен Sinbo SHD-7034', 250, 1);
INSERT INTO "public"."products" VALUES (5, 'Ноутбук HP 250 G6 [250G6 1WY51EA]', 105, 2);
INSERT INTO "public"."products" VALUES (6, 'Ноутбук HP 15-bs000 [15-BS019UR 1ZJ85EA]', 105, 2);
INSERT INTO "public"."products" VALUES (7, 'Видеокарта Gigabyte GeForce GTX 1050 GV-N1050WF2OC-2GD', 932, 2);
INSERT INTO "public"."products" VALUES (8, 'Массажер для тела GEZAtone AMG114', 331, 1);
INSERT INTO "public"."products" VALUES (9, 'Ноутбук Dell Inspiron 15 5570 [5570-0054]', 763, 2);
INSERT INTO "public"."products" VALUES (10, 'Ноутбук Dell Latitude 3480 [3480-6126]', 763, 2);
INSERT INTO "public"."products" VALUES (11, 'Монитор Acer G237HLAwi', 349, 2);
INSERT INTO "public"."products" VALUES (12, 'Электродуховка Artel MD 4212 E', 78, 1);
INSERT INTO "public"."products" VALUES (13, 'Электрическая зубная щетка CS Medica Sonic Pulsar CS-131', 836, 1);
INSERT INTO "public"."products" VALUES (14, 'Материнская плата MSI H81M-E33', 325, 2);
INSERT INTO "public"."products" VALUES (15, 'Ноутбук MSI GS70 6QE Stealth Pro [GS70 6QE-265]', 325, 2);
INSERT INTO "public"."products" VALUES (16, 'Швейная машина, оверлок Singer 14SH754', 997, 1);
INSERT INTO "public"."products" VALUES (17, 'Пылесос Samsung SC-432A', 809, 1);
INSERT INTO "public"."products" VALUES (18, 'Микроволновая печь Candy CMXW 22 DS', 537, 1);
INSERT INTO "public"."products" VALUES (19, 'Ноутбук HP 15-bw000 [15-BW071UR 2CN98EA]', 105, 2);
INSERT INTO "public"."products" VALUES (20, 'Антенна для Wi-Fi и 3G Ubiquiti AirMax Sector M-V5G-Ti', 1007, 2);
INSERT INTO "public"."products" VALUES (21, 'Швейная машина, оверлок BERNINA B580', 880, 1);
INSERT INTO "public"."products" VALUES (22, 'Пылесос Agressor AGR 140', 20, 1);
INSERT INTO "public"."products" VALUES (23, 'Весы Kromax KS-519', 317, 1);
INSERT INTO "public"."products" VALUES (24, 'Кофемолка Saturn ST-CM1033', 29, 1);
INSERT INTO "public"."products" VALUES (25, 'Весы Tanita HD-394', 387, 1);
INSERT INTO "public"."products" VALUES (26, 'Сумка для ноутбуков Sumdex Impulse Fashion Place Portfolio Brief [Impulse Fashion Place Portfolio Brief 15.4]', 274, 2);
INSERT INTO "public"."products" VALUES (27, 'Антенна для Wi-Fi и 3G Antex PETRA Broad Band 75', 439, 2);
INSERT INTO "public"."products" VALUES (28, 'Фен Redmond RF-524', 58, 1);
INSERT INTO "public"."products" VALUES (29, 'Оперативная память Transcend DDR2 [JM800QLU-2G]', 186, 2);
INSERT INTO "public"."products" VALUES (30, 'Фен Beurer HS80', 881, 1);
INSERT INTO "public"."products" VALUES (31, 'Фен Gamma Piu Rainbow', 643, 1);
INSERT INTO "public"."products" VALUES (32, 'Машинка для стрижки волос Moser 1245-0066', 628, 1);
INSERT INTO "public"."products" VALUES (33, 'Жесткий диск WD RE [WD2004FBYZ]', 74, 2);
INSERT INTO "public"."products" VALUES (34, 'Монитор Sharp PN-80SC5', 682, 2);
INSERT INTO "public"."products" VALUES (35, 'Микроволновая печь LG MS-23M38GIH', 706, 1);
INSERT INTO "public"."products" VALUES (36, 'Ноутбук MSI GP72M 7RDX Leopard [GP72M 7RDX-1239]', 325, 2);
INSERT INTO "public"."products" VALUES (37, 'Блок питания Thermaltake Toughpower DPS [TPG-0850D]', 204, 2);
INSERT INTO "public"."products" VALUES (38, 'Коммутатор Dell X4012', 763, 2);
INSERT INTO "public"."products" VALUES (39, 'Оперативная память Corsair Vengeance RGB DDR4 [CMR32GX4M4A2666C16]', 751, 2);
INSERT INTO "public"."products" VALUES (40, 'Фен Moser 4445-0050', 628, 1);
INSERT INTO "public"."products" VALUES (41, 'Блинница Kromax CM-24', 317, 1);
INSERT INTO "public"."products" VALUES (42, 'Коммутатор Cisco WS-C2960X-48TD-L', 584, 2);
INSERT INTO "public"."products" VALUES (43, 'Электрочайник Tefal KI 760', 498, 1);
INSERT INTO "public"."products" VALUES (44, 'Весы Scarlett SC-KS57P20', 746, 1);
INSERT INTO "public"."products" VALUES (45, 'Система охлаждения Thermaltake CLW0222', 204, 2);
INSERT INTO "public"."products" VALUES (46, 'Кофемолка De''Longhi KG 49', 645, 1);
INSERT INTO "public"."products" VALUES (47, 'Коммутатор HP JG221A', 105, 2);
INSERT INTO "public"."products" VALUES (48, 'Ноутбук Lenovo Ideapad 710S 13 [710S-13ISK 80SW0063RK]', 530, 2);
INSERT INTO "public"."products" VALUES (49, 'Швейная машина, оверлок Toyota ART 20', 509, 1);
INSERT INTO "public"."products" VALUES (50, 'Сумка для ноутбуков Sumdex Passage Computer Brief PON-328 [Passage Computer Brief PON-328 15.6]', 274, 2);

-- ----------------------------
-- Table structure for purchase_items
-- ----------------------------
DROP TABLE IF EXISTS "public"."purchase_items";
CREATE TABLE "public"."purchase_items" (
  "purchase_id" int8 NOT NULL DEFAULT nextval('purchase_items_seq'::regclass),
  "product_id" int8 NOT NULL,
  "product_count" int8 NOT NULL,
  "product_price" float4 NOT NULL
)
;

-- ----------------------------
-- Records of purchase_items
-- ----------------------------
INSERT INTO "public"."purchase_items" VALUES (1, 1, 2, 89709.4);
INSERT INTO "public"."purchase_items" VALUES (1, 43, 1, 3839);
INSERT INTO "public"."purchase_items" VALUES (1, 10, 1, 50444.9);
INSERT INTO "public"."purchase_items" VALUES (2, 14, 1, 2464);
INSERT INTO "public"."purchase_items" VALUES (2, 30, 1, 5610);
INSERT INTO "public"."purchase_items" VALUES (2, 6, 2, 48389);
INSERT INTO "public"."purchase_items" VALUES (3, 41, 1, 1366.2);
INSERT INTO "public"."purchase_items" VALUES (4, 38, 1, 80551.9);
INSERT INTO "public"."purchase_items" VALUES (4, 20, 1, 11849.2);
INSERT INTO "public"."purchase_items" VALUES (4, 22, 1, 1570.8);
INSERT INTO "public"."purchase_items" VALUES (5, 18, 1, 6282.1);
INSERT INTO "public"."purchase_items" VALUES (5, 8, 1, 1529);
INSERT INTO "public"."purchase_items" VALUES (5, 40, 2, 2696.1);
INSERT INTO "public"."purchase_items" VALUES (6, 30, 1, 5610);
INSERT INTO "public"."purchase_items" VALUES (7, 47, 1, 26419.8);
INSERT INTO "public"."purchase_items" VALUES (8, 34, 2, 869000);
INSERT INTO "public"."purchase_items" VALUES (9, 26, 1, 1375);
INSERT INTO "public"."purchase_items" VALUES (10, 20, 1, 11849.2);
INSERT INTO "public"."purchase_items" VALUES (10, 21, 2, 197890);
INSERT INTO "public"."purchase_items" VALUES (11, 48, 1, 85789);
INSERT INTO "public"."purchase_items" VALUES (11, 14, 1, 2464);
INSERT INTO "public"."purchase_items" VALUES (11, 1, 1, 89709.4);
INSERT INTO "public"."purchase_items" VALUES (12, 33, 1, 9452.3);
INSERT INTO "public"."purchase_items" VALUES (13, 21, 2, 197890);
INSERT INTO "public"."purchase_items" VALUES (14, 27, 1, 1645.6);
INSERT INTO "public"."purchase_items" VALUES (15, 26, 1, 1375);
INSERT INTO "public"."purchase_items" VALUES (16, 14, 2, 2464);
INSERT INTO "public"."purchase_items" VALUES (16, 6, 1, 48389);
INSERT INTO "public"."purchase_items" VALUES (16, 16, 2, 19688.9);
INSERT INTO "public"."purchase_items" VALUES (17, 34, 1, 869000);
INSERT INTO "public"."purchase_items" VALUES (18, 10, 1, 50444.9);
INSERT INTO "public"."purchase_items" VALUES (18, 26, 1, 1375);
INSERT INTO "public"."purchase_items" VALUES (18, 50, 1, 1331);
INSERT INTO "public"."purchase_items" VALUES (19, 39, 2, 27353.7);
INSERT INTO "public"."purchase_items" VALUES (19, 5, 1, 27682.6);
INSERT INTO "public"."purchase_items" VALUES (19, 24, 1, 616);
INSERT INTO "public"."purchase_items" VALUES (20, 2, 2, 5137);
INSERT INTO "public"."purchase_items" VALUES (20, 3, 2, 1089);
INSERT INTO "public"."purchase_items" VALUES (21, 50, 2, 1331);
INSERT INTO "public"."purchase_items" VALUES (21, 35, 1, 10626);
INSERT INTO "public"."purchase_items" VALUES (22, 18, 2, 6282.1);
INSERT INTO "public"."purchase_items" VALUES (23, 34, 1, 869000);
INSERT INTO "public"."purchase_items" VALUES (23, 4, 2, 633.6);
INSERT INTO "public"."purchase_items" VALUES (23, 42, 1, 183579);
INSERT INTO "public"."purchase_items" VALUES (24, 46, 1, 3208.7);
INSERT INTO "public"."purchase_items" VALUES (24, 6, 2, 48389);
INSERT INTO "public"."purchase_items" VALUES (24, 8, 2, 1529);
INSERT INTO "public"."purchase_items" VALUES (25, 24, 2, 616);
INSERT INTO "public"."purchase_items" VALUES (25, 41, 2, 1366.2);
INSERT INTO "public"."purchase_items" VALUES (26, 14, 2, 2464);
INSERT INTO "public"."purchase_items" VALUES (26, 37, 2, 19676.8);
INSERT INTO "public"."purchase_items" VALUES (26, 30, 1, 5610);
INSERT INTO "public"."purchase_items" VALUES (27, 47, 2, 26419.8);
INSERT INTO "public"."purchase_items" VALUES (28, 33, 1, 9452.3);
INSERT INTO "public"."purchase_items" VALUES (28, 5, 2, 27682.6);
INSERT INTO "public"."purchase_items" VALUES (29, 37, 1, 19676.8);
INSERT INTO "public"."purchase_items" VALUES (29, 7, 1, 11053.9);
INSERT INTO "public"."purchase_items" VALUES (29, 34, 2, 869000);
INSERT INTO "public"."purchase_items" VALUES (30, 42, 2, 183579);
INSERT INTO "public"."purchase_items" VALUES (30, 32, 1, 2471.7);
INSERT INTO "public"."purchase_items" VALUES (31, 17, 1, 4881.8);
INSERT INTO "public"."purchase_items" VALUES (32, 30, 2, 5610);
INSERT INTO "public"."purchase_items" VALUES (32, 50, 1, 1331);
INSERT INTO "public"."purchase_items" VALUES (33, 37, 2, 19676.8);
INSERT INTO "public"."purchase_items" VALUES (33, 43, 2, 3839);
INSERT INTO "public"."purchase_items" VALUES (34, 17, 2, 4881.8);
INSERT INTO "public"."purchase_items" VALUES (34, 31, 1, 3298.9);
INSERT INTO "public"."purchase_items" VALUES (34, 18, 2, 6282.1);
INSERT INTO "public"."purchase_items" VALUES (35, 27, 2, 1645.6);
INSERT INTO "public"."purchase_items" VALUES (36, 32, 1, 2471.7);
INSERT INTO "public"."purchase_items" VALUES (37, 17, 1, 4881.8);
INSERT INTO "public"."purchase_items" VALUES (38, 30, 2, 5610);
INSERT INTO "public"."purchase_items" VALUES (38, 43, 2, 3839);
INSERT INTO "public"."purchase_items" VALUES (38, 41, 1, 1366.2);
INSERT INTO "public"."purchase_items" VALUES (39, 13, 1, 1560.9);
INSERT INTO "public"."purchase_items" VALUES (39, 19, 2, 32439);
INSERT INTO "public"."purchase_items" VALUES (39, 5, 2, 27682.6);
INSERT INTO "public"."purchase_items" VALUES (40, 4, 2, 633.6);
INSERT INTO "public"."purchase_items" VALUES (41, 36, 1, 82489);
INSERT INTO "public"."purchase_items" VALUES (41, 8, 2, 1529);
INSERT INTO "public"."purchase_items" VALUES (41, 42, 2, 183579);
INSERT INTO "public"."purchase_items" VALUES (42, 23, 2, 867.9);
INSERT INTO "public"."purchase_items" VALUES (42, 44, 1, 959.2);
INSERT INTO "public"."purchase_items" VALUES (43, 22, 1, 1570.8);
INSERT INTO "public"."purchase_items" VALUES (43, 31, 2, 3298.9);
INSERT INTO "public"."purchase_items" VALUES (44, 34, 1, 869000);
INSERT INTO "public"."purchase_items" VALUES (45, 21, 2, 197890);
INSERT INTO "public"."purchase_items" VALUES (45, 40, 2, 2696.1);
INSERT INTO "public"."purchase_items" VALUES (45, 48, 2, 85789);
INSERT INTO "public"."purchase_items" VALUES (46, 12, 1, 5121.6);
INSERT INTO "public"."purchase_items" VALUES (46, 2, 1, 5137);
INSERT INTO "public"."purchase_items" VALUES (47, 49, 1, 9020);
INSERT INTO "public"."purchase_items" VALUES (47, 17, 1, 4881.8);
INSERT INTO "public"."purchase_items" VALUES (48, 40, 1, 2696.1);
INSERT INTO "public"."purchase_items" VALUES (49, 40, 2, 2696.1);
INSERT INTO "public"."purchase_items" VALUES (49, 23, 2, 867.9);
INSERT INTO "public"."purchase_items" VALUES (50, 9, 2, 35970);
INSERT INTO "public"."purchase_items" VALUES (50, 21, 1, 197890);

-- ----------------------------
-- Table structure for purchases
-- ----------------------------
DROP TABLE IF EXISTS "public"."purchases";
CREATE TABLE "public"."purchases" (
  "purchase_id" int8 NOT NULL DEFAULT nextval('purchases_seq'::regclass),
  "customer_id" int8 NOT NULL,
  "store_id" int8 NOT NULL,
  "purchase_date" date NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of purchases
-- ----------------------------
INSERT INTO "public"."purchases" VALUES (1, 2, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (2, 4, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (3, 5, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (4, 5, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (5, 1, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (6, 5, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (7, 4, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (8, 5, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (9, 2, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (10, 3, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (11, 3, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (12, 1, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (13, 2, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (14, 1, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (15, 4, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (16, 1, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (17, 4, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (18, 5, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (19, 5, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (20, 2, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (21, 4, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (22, 3, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (23, 1, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (24, 1, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (25, 2, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (26, 4, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (27, 1, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (28, 2, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (29, 4, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (30, 5, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (31, 4, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (32, 3, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (33, 4, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (34, 4, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (35, 2, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (36, 5, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (37, 5, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (38, 1, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (39, 1, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (40, 1, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (41, 5, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (42, 3, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (43, 2, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (44, 2, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (45, 5, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (46, 3, 2, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (47, 1, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (48, 5, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (49, 3, 1, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (50, 4, 3, '2022-06-09');
INSERT INTO "public"."purchases" VALUES (51, 4, 4, '2022-06-09');

-- ----------------------------
-- Table structure for stores
-- ----------------------------
DROP TABLE IF EXISTS "public"."stores";
CREATE TABLE "public"."stores" (
  "store_id" int8 NOT NULL DEFAULT nextval('stores_seq'::regclass),
  "store_name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of stores
-- ----------------------------
INSERT INTO "public"."stores" VALUES (1, 'Филиал №1');
INSERT INTO "public"."stores" VALUES (2, 'Филиал №2');
INSERT INTO "public"."stores" VALUES (3, 'Филиал №3');
INSERT INTO "public"."stores" VALUES (4, 'Филиал №1');
INSERT INTO "public"."stores" VALUES (5, 'Филиал №2');
INSERT INTO "public"."stores" VALUES (6, 'Филиал №3');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."categories_seq"
OWNED BY "public"."categories"."category_id";
SELECT setval('"public"."categories_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."customers_seq"
OWNED BY "public"."customers"."customer_id";
SELECT setval('"public"."customers_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."manufacturers_seq"
OWNED BY "public"."manufacturers"."manufacturer_id";
SELECT setval('"public"."manufacturers_seq"', 1010, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."products_seq"
OWNED BY "public"."products"."product_id";
SELECT setval('"public"."products_seq"', 51, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."purchase_items_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."purchases_seq"
OWNED BY "public"."purchases"."purchase_id";
SELECT setval('"public"."purchases_seq"', 52, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stores_seq"
OWNED BY "public"."stores"."store_id";
SELECT setval('"public"."stores_seq"', 7, true);

-- ----------------------------
-- Primary Key structure for table categories
-- ----------------------------
ALTER TABLE "public"."categories" ADD CONSTRAINT "categories_pkey" PRIMARY KEY ("category_id");

-- ----------------------------
-- Primary Key structure for table customers
-- ----------------------------
ALTER TABLE "public"."customers" ADD CONSTRAINT "customers_pkey" PRIMARY KEY ("customer_id");

-- ----------------------------
-- Primary Key structure for table manufacturers
-- ----------------------------
ALTER TABLE "public"."manufacturers" ADD CONSTRAINT "manufacturers_pkey" PRIMARY KEY ("manufacturer_id");

-- ----------------------------
-- Primary Key structure for table products
-- ----------------------------
ALTER TABLE "public"."products" ADD CONSTRAINT "products_pkey" PRIMARY KEY ("product_id");

-- ----------------------------
-- Primary Key structure for table purchase_items
-- ----------------------------
ALTER TABLE "public"."purchase_items" ADD CONSTRAINT "purchase_items_pkey" PRIMARY KEY ("purchase_id", "product_id");

-- ----------------------------
-- Primary Key structure for table purchases
-- ----------------------------
ALTER TABLE "public"."purchases" ADD CONSTRAINT "purchases_pkey" PRIMARY KEY ("purchase_id");

-- ----------------------------
-- Primary Key structure for table stores
-- ----------------------------
ALTER TABLE "public"."stores" ADD CONSTRAINT "stores_pkey" PRIMARY KEY ("store_id");
