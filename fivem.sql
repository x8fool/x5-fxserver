-- Disable foreign key checks temporarily for clean bulk loading
SET session_replication_role = 'replica';

-- ----------------------------
-- Table structure for addon_account
-- ----------------------------
DROP TABLE IF EXISTS "addon_account" CASCADE;
CREATE TABLE "addon_account" (
  "name" VARCHAR(60) NOT NULL,
  "label" VARCHAR(255) NOT NULL,
  "shared" INT NOT NULL,
  PRIMARY KEY ("name")
);

INSERT INTO "addon_account" VALUES ('bank_savings', 'BankSavings', 0);
INSERT INTO "addon_account" VALUES ('caution', 'caution', 0);
INSERT INTO "addon_account" VALUES ('property_black_money', 'Money Sale Property', 0);
INSERT INTO "addon_account" VALUES ('society_ambulance', 'Ambulance', 1);
INSERT INTO "addon_account" VALUES ('society_banker', 'Banker', 1);
INSERT INTO "addon_account" VALUES ('society_cardealer', 'Cardealer', 1);
INSERT INTO "addon_account" VALUES ('society_council', 'council', 1);
INSERT INTO "addon_account" VALUES ('society_foodpanda', 'Foodpanda', 1);
INSERT INTO "addon_account" VALUES ('society_mechanic', 'Mechanic', 1);
INSERT INTO "addon_account" VALUES ('society_police', 'Police', 1);
INSERT INTO "addon_account" VALUES ('society_police_black_money', 'Police Black Money', 1);
INSERT INTO "addon_account" VALUES ('society_realestateagent', 'Agent immobilier', 1);
INSERT INTO "addon_account" VALUES ('society_taxi', 'Taxi', 1);
INSERT INTO "addon_account" VALUES ('vault_black_money', 'Money Vault', 0);

-- ----------------------------
-- Table structure for addon_account_data
-- ----------------------------
DROP TABLE IF EXISTS "addon_account_data" CASCADE;
CREATE TABLE "addon_account_data" (
  "id" SERIAL PRIMARY KEY,
  "account_name" VARCHAR(255) DEFAULT NULL,
  "money" DOUBLE PRECISION NOT NULL,
  "owner" VARCHAR(255) DEFAULT NULL
);

INSERT INTO "addon_account_data" VALUES (1, 'society_ambulance', 0, NULL);
INSERT INTO "addon_account_data" VALUES (2, 'society_banker', 0, NULL);
INSERT INTO "addon_account_data" VALUES (3, 'society_cardealer', 0, NULL);
INSERT INTO "addon_account_data" VALUES (4, 'society_foodpanda', 0, NULL);
INSERT INTO "addon_account_data" VALUES (5, 'society_mechanic', 0, NULL);
INSERT INTO "addon_account_data" VALUES (6, 'society_police', 1700, NULL);
INSERT INTO "addon_account_data" VALUES (7, 'society_police_black_money', 0, NULL);
INSERT INTO "addon_account_data" VALUES (8, 'society_realestateagent', 0, NULL);
INSERT INTO "addon_account_data" VALUES (9, 'society_taxi', 0, NULL);
INSERT INTO "addon_account_data" VALUES (26, 'society_council', 0, NULL);

-- ----------------------------
-- Table structure for addon_inventory
-- ----------------------------
DROP TABLE IF EXISTS "addon_inventory" CASCADE;
CREATE TABLE "addon_inventory" (
  "name" VARCHAR(60) NOT NULL,
  "label" VARCHAR(255) NOT NULL,
  "shared" INT NOT NULL,
  PRIMARY KEY ("name")
);

INSERT INTO "addon_inventory" VALUES ('housing', 'Housing', 0);
INSERT INTO "addon_inventory" VALUES ('property', 'Propriété', 0);
INSERT INTO "addon_inventory" VALUES ('society_ambulance', 'Ambulance', 1);
INSERT INTO "addon_inventory" VALUES ('society_cardealer', 'Concesionnaire', 1);
INSERT INTO "addon_inventory" VALUES ('society_council', 'council', 1);
INSERT INTO "addon_inventory" VALUES ('society_foodpanda', 'Foodpanda', 1);
INSERT INTO "addon_inventory" VALUES ('society_mechanic', 'Mechanic', 1);
INSERT INTO "addon_inventory" VALUES ('society_police', 'Police', 1);
INSERT INTO "addon_inventory" VALUES ('vault', 'Vault', 0);

-- ----------------------------
-- Table structure for addon_inventory_items
-- ----------------------------
DROP TABLE IF EXISTS "addon_inventory_items" CASCADE;
CREATE TABLE "addon_inventory_items" (
  "id" SERIAL PRIMARY KEY,
  "inventory_name" VARCHAR(255) NOT NULL,
  "name" VARCHAR(255) NOT NULL,
  "count" INT NOT NULL,
  "owner" VARCHAR(60) DEFAULT NULL
);

-- ----------------------------
-- Table structure for azael_dc_whitelisted
-- ----------------------------
DROP TABLE IF EXISTS "azael_dc_whitelisted" CASCADE;
CREATE TABLE "azael_dc_whitelisted" (
  "discord" VARCHAR(50) NOT NULL,
  "identifier" VARCHAR(50) NOT NULL,
  "date_exp" INT NOT NULL DEFAULT 0,
  "point" INT NOT NULL DEFAULT 0,
  "point_exp" INT DEFAULT NULL,
  "connect" INT DEFAULT NULL,
  "banned" SMALLINT NOT NULL DEFAULT 0,
  "remove" SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY ("discord", "identifier")
);

-- ----------------------------
-- Table structure for bans
-- ----------------------------
DROP TABLE IF EXISTS "bans" CASCADE;
CREATE TABLE "bans" (
  "license" VARCHAR(255) NOT NULL,
  "name" VARCHAR(255) NOT NULL,
  "time" INT NOT NULL,
  "reason" VARCHAR(255) NOT NULL,
  PRIMARY KEY ("license")
);

-- ----------------------------
-- Table structure for billing
-- ----------------------------
DROP TABLE IF EXISTS "billing" CASCADE;
CREATE TABLE "billing" (
  "id" SERIAL PRIMARY KEY,
  "identifier" VARCHAR(255) NOT NULL,
  "sender" VARCHAR(255) NOT NULL,
  "target_type" VARCHAR(50) NOT NULL,
  "target" VARCHAR(255) NOT NULL,
  "label" VARCHAR(255) NOT NULL,
  "amount" INT NOT NULL,
  "time" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- ----------------------------
-- Table structure for bought_houses
-- ----------------------------
DROP TABLE IF EXISTS "bought_houses" CASCADE;
CREATE TABLE "bought_houses" (
  "houseid" INT NOT NULL,
  PRIMARY KEY ("houseid")
);

-- ----------------------------
-- Table structure for cardealer_vehicles
-- ----------------------------
DROP TABLE IF EXISTS "cardealer_vehicles" CASCADE;
CREATE TABLE "cardealer_vehicles" (
  "id" SERIAL PRIMARY KEY,
  "vehicle" VARCHAR(255) NOT NULL,
  "price" INT NOT NULL
);

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS "characters" CASCADE;
CREATE TABLE "characters" (
  "id" SERIAL PRIMARY KEY,
  "identifier" VARCHAR(255) NOT NULL,
  "firstname" VARCHAR(255) NOT NULL,
  "lastname" VARCHAR(255) NOT NULL,
  "dateofbirth" VARCHAR(255) NOT NULL,
  "sex" VARCHAR(1) NOT NULL DEFAULT 'M',
  "height" VARCHAR(128) NOT NULL
);

-- ----------------------------
-- Table structure for crew_phone_bank
-- ----------------------------
DROP TABLE IF EXISTS "crew_phone_bank" CASCADE;
CREATE TABLE "crew_phone_bank" (
  "id" SERIAL PRIMARY KEY,
  "type" INT NOT NULL DEFAULT 1,
  "identifier" VARCHAR(50) NOT NULL,
  "name" VARCHAR(50) NOT NULL,
  "price" INT NOT NULL,
  "time" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- ----------------------------
-- Table structure for crew_phone_news
-- ----------------------------
DROP TABLE IF EXISTS "crew_phone_news" CASCADE;
CREATE TABLE "crew_phone_news" (
  "id" SERIAL PRIMARY KEY,
  "data" TEXT DEFAULT NULL
);

-- ----------------------------
-- Table structure for datastore
-- ----------------------------
DROP TABLE IF EXISTS "datastore" CASCADE;
CREATE TABLE "datastore" (
  "name" VARCHAR(60) NOT NULL,
  "label" VARCHAR(255) NOT NULL,
  "shared" INT NOT NULL
);

INSERT INTO "datastore" VALUES ('society_ambulance', 'Ambulance', 1);
INSERT INTO "datastore" VALUES ('society_police', 'Police', 1);
INSERT INTO "datastore" VALUES ('society_taxi', 'Taxi', 1);
INSERT INTO "datastore" VALUES ('user_ears', 'Ears', 0);
INSERT INTO "datastore" VALUES ('user_glasses', 'Glasses', 0);
INSERT INTO "datastore" VALUES ('user_helmet', 'Helmet', 0);
INSERT INTO "datastore" VALUES ('user_mask', 'Mask', 0);
INSERT INTO "datastore" VALUES ('vault', 'Vault', 0);
INSERT INTO "datastore" VALUES ('housing', 'Housing', 0);
INSERT INTO "datastore" VALUES ('society_mechanic    ', 'Mechanic', 1);

-- ----------------------------
-- Table structure for datastore_data
-- ----------------------------
DROP TABLE IF EXISTS "datastore_data" CASCADE;
CREATE TABLE "datastore_data" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(60) NOT NULL,
  "owner" VARCHAR(60) DEFAULT NULL,
  "data" TEXT DEFAULT NULL
);
CREATE UNIQUE INDEX "unique_datastore_owner_name" ON "datastore_data" ("owner", "name");
CREATE INDEX "index_datastore_name" ON "datastore_data" ("name");
CREATE INDEX "datastore_data_owner_idx" ON "datastore_data" ("owner");

INSERT INTO "datastore_data" VALUES (1, 'society_ambulance', NULL, '{}');
INSERT INTO "datastore_data" VALUES (2, 'society_police', NULL, '{}');
INSERT INTO "datastore_data" VALUES (3, 'society_taxi', NULL, '{}');
INSERT INTO "datastore_data" VALUES (4, 'society_mechanic    ', NULL, '{}');
INSERT INTO "datastore_data" VALUES (5, 'user_glasses', 'steam:11000010a33c8db', '{}');
INSERT INTO "datastore_data" VALUES (6, 'user_helmet', 'steam:11000010a33c8db', '{}');
INSERT INTO "datastore_data" VALUES (7, 'housing', 'steam:11000010a33c8db', '{}');
INSERT INTO "datastore_data" VALUES (8, 'user_mask', 'steam:11000010a33c8db', '{}');
INSERT INTO "datastore_data" VALUES (9, 'user_ears', 'steam:11000010a33c8db', '{}');
INSERT INTO "datastore_data" VALUES (10, 'vault', 'steam:11000010a33c8db', '{}');
INSERT INTO "datastore_data" VALUES (11, 'user_ears', 'steam:110000105d9c575', '{}');
INSERT INTO "datastore_data" VALUES (12, 'user_glasses', 'steam:110000105d9c575', '{}');
INSERT INTO "datastore_data" VALUES (13, 'user_helmet', 'steam:110000105d9c575', '{}');
INSERT INTO "datastore_data" VALUES (14, 'user_mask', 'steam:110000105d9c575', '{}');
INSERT INTO "datastore_data" VALUES (15, 'vault', 'steam:110000105d9c575', '{}');
INSERT INTO "datastore_data" VALUES (16, 'housing', 'steam:110000105d9c575', '{}');
INSERT INTO "datastore_data" VALUES (17, 'user_glasses', 'steam:1100001358fb54d', '{}');
INSERT INTO "datastore_data" VALUES (18, 'user_ears', 'steam:1100001358fb54d', '{}');
INSERT INTO "datastore_data" VALUES (19, 'user_helmet', 'steam:1100001358fb54d', '{}');
INSERT INTO "datastore_data" VALUES (20, 'vault', 'steam:1100001358fb54d', '{}');
INSERT INTO "datastore_data" VALUES (21, 'user_mask', 'steam:1100001358fb54d', '{}');
INSERT INTO "datastore_data" VALUES (22, 'housing', 'steam:1100001358fb54d', '{}');
INSERT INTO "datastore_data" VALUES (23, 'user_ears', 'steam:110000117301dd3', '{}');
INSERT INTO "datastore_data" VALUES (24, 'user_glasses', 'steam:110000117301dd3', '{}');
INSERT INTO "datastore_data" VALUES (25, 'user_helmet', 'steam:110000117301dd3', '{}');
INSERT INTO "datastore_data" VALUES (26, 'user_mask', 'steam:110000117301dd3', '{}');
INSERT INTO "datastore_data" VALUES (27, 'vault', 'steam:110000117301dd3', '{}');
INSERT INTO "datastore_data" VALUES (28, 'housing', 'steam:110000117301dd3', '{}');

-- ----------------------------
-- Table structure for devil_fine
-- ----------------------------
DROP TABLE IF EXISTS "devil_fine" CASCADE;
CREATE TABLE "devil_fine" (
  "id" SERIAL PRIMARY KEY,
  "label" VARCHAR(255) DEFAULT NULL,
  "amount" INT DEFAULT NULL,
  "time" INT DEFAULT NULL,
  "category" VARCHAR(255) DEFAULT NULL
);

INSERT INTO "devil_fine" VALUES (1, 'หลบหนีการจับกุม', 2000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (2, 'หลบหนีนอกเมือง ขึ้นเขา ลงน้ำ X2', 2000, 10, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (3, 'หลบหนีหลังการจับกุม', 5000, 15, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (4, 'ซุกซ่อนของกลาง', 2000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (5, 'สมรู้ร่วมคิด', 2000, 0, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (6, 'กระทำเหตุซึ่งหน้า', 1000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (7, 'พื้นที่สุ่มเสี่ยง', 2000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (8, 'ครอบครองเงินผิดกฎหมาย X3', 3000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (9, 'ครอบครองแผงลิเทียม', 3000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (10, 'ครอบครองปลวก', 3000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (11, 'ครอบครองสายไฟ', 3000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (12, 'ครอบครองโคเคนอัดเม็ด', 3000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (13, 'โจรกรรมร้านค้า', 20000, 15, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (14, 'ครอบครองอุปกรณ์งัดแงะ', 2000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (15, 'ฉ้อโกงทรัพย์', 5000, 20, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (16, 'พยายามปล้น', 5000, 10, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (17, 'ปล้นชิงทรัพย์', 10000, 20, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (18, 'โจรกรรมยานพาหนะ', 5000, 10, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (19, 'โจรกรรมยานพาหนะหน่วยงาน', 10000, 20, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (20, 'แจ้งความเท็จ', 2000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (21, 'แอบอ้างหรือแต่งตัวเรียนแบบเจ้าหน้าที่', 10000, 15, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (22, 'ปิดบังใบหน้า', 1000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (23, 'อนาจารและสร้างความวุ่นวาย', 2000, 10, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (24, 'แหกคุก ช่วยเหลือการแหกคุก', 20000, 30, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (25, 'โพสต์เกี่ยวกับสิ่งผิดกฎหมาย', 2000, 10, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (26, 'โพสต์เกี่ยวกับการดูหมิ่นผู้อื่น', 2000, 10, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (27, 'ประกันตัว', 1000, -1, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (28, 'เบิกรถที่ถูกยึด', 2000, 0, 'คดีทั่วไป');
INSERT INTO "devil_fine" VALUES (29, 'กักขังหน่วงเหนี่ยวประชาชน', 10000, 20, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (30, 'กักขังหน่วงเหนี่ยวหน่วยงาน', 30000, 60, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (31, 'ข่มขู่ประชาชน', 5000, 5, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (32, 'ข่มขู่เจ้าหน้าที่', 10000, 10, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (33, 'ขัดขวางการทำงานของเจ้าหน้าที่', 5000, 5, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (34, 'หมิ่นประมาทเจ้าหน้าที่', 10000, 10, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (35, 'ติดสินบนเจ้าพนักงาน', 5000, 5, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (36, 'ก่อกวนในสถานที่ราชการ', 5000, 10, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (37, 'บุกรุกสถานที่ราชการ', 5000, 10, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (38, 'ชิงตัวผู้ต้องหา', 10000, 15, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (39, 'ทำร้ายร่างกายเจ้าหน้าที่จนถึงแก่ชีวิต', 20000, 30, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (40, 'พยายามทำร้ายร่างกายเจ้าหน้าที่', 10000, 15, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (41, 'ทำร้ายร่างกายผู้อื่นไม่ถึงแก่ชีวิต', 10000, 10, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (42, 'ทำร้ายร่างกายผู้อื่นถึงแก่ชีวิต', 20000, 20, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (43, 'ทะเลาะวิวาท', 3000, 5, 'คดีแดง');
INSERT INTO "devil_fine" VALUES (44, 'เคลื่อนย้ายและอำพรางศพ', 30000, 30, 'คดีร้ายแรง');
INSERT INTO "devil_fine" VALUES (45, 'เคลื่อนย้ายและอำพรางศพจนถึงแก่ชีวิต', 50000, 60, 'คดีร้ายแรง');
INSERT INTO "devil_fine" VALUES (46, 'อำพรางศพ', 10000, 10, 'คดีร้ายแรง');
INSERT INTO "devil_fine" VALUES (278, 'แก๊งค์ลดคดี', 0, 5, 'แก๊งค์');

-- ----------------------------
-- Table structure for dpkeybinds
-- ----------------------------
DROP TABLE IF EXISTS "dpkeybinds" CASCADE;
CREATE TABLE "dpkeybinds" (
  "id" VARCHAR(50) DEFAULT NULL,
  "keybind1" VARCHAR(50) DEFAULT 'num4',
  "emote1" VARCHAR(255) DEFAULT '',
  "keybind2" VARCHAR(50) DEFAULT 'num5',
  "emote2" VARCHAR(255) DEFAULT '',
  "keybind3" VARCHAR(50) DEFAULT 'num6',
  "emote3" VARCHAR(255) DEFAULT '',
  "keybind4" VARCHAR(50) DEFAULT 'num7',
  "emote4" VARCHAR(255) DEFAULT '',
  "keybind5" VARCHAR(50) DEFAULT 'num8',
  "emote5" VARCHAR(255) DEFAULT '',
  "keybind6" VARCHAR(50) DEFAULT 'num9',
  "emote6" VARCHAR(255) DEFAULT ''
);

INSERT INTO "dpkeybinds" VALUES ('steam:11000010a33c8db', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO "dpkeybinds" VALUES ('steam:1100001358fb54d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO "dpkeybinds" VALUES ('steam:110000105d9c575', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- ----------------------------
-- Table structure for dv_trade_data
-- ----------------------------
DROP TABLE IF EXISTS "dv_trade_data" CASCADE;
CREATE TABLE "dv_trade_data" (
  "id" SERIAL PRIMARY KEY,
  "sender" VARCHAR(50) NOT NULL,
  "senderName" VARCHAR(50) NOT NULL,
  "target" VARCHAR(50) NOT NULL,
  "targetName" VARCHAR(50) NOT NULL,
  "senderItems" TEXT NOT NULL,
  "targetItems" TEXT NOT NULL,
  "section" VARCHAR(12) NOT NULL,
  "state" VARCHAR(12) NOT NULL,
  "noted" VARCHAR(255) NOT NULL DEFAULT '',
  "addedToTarget" SMALLINT NOT NULL DEFAULT 0,
  "addedToSender" SMALLINT NOT NULL DEFAULT 0,
  "createAt" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "expiredAt" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "lastUpdated" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- ----------------------------
-- Table structure for fine_types
-- ----------------------------
DROP TABLE IF EXISTS "fine_types" CASCADE;
CREATE TABLE "fine_types" (
  "id" SERIAL PRIMARY KEY,
  "label" VARCHAR(255) DEFAULT NULL,
  "amount" INT DEFAULT NULL,
  "category" INT DEFAULT NULL
);

INSERT INTO "fine_types" VALUES (1, 'Usage abusif du klaxon', 30, 0);
INSERT INTO "fine_types" VALUES (2, 'Franchir une ligne continue', 40, 0);
INSERT INTO "fine_types" VALUES (3, 'Circulation à contresens', 250, 0);
INSERT INTO "fine_types" VALUES (4, 'Demi-tour non autorisé', 250, 0);
INSERT INTO "fine_types" VALUES (5, 'Circulation hors-route', 170, 0);
INSERT INTO "fine_types" VALUES (6, 'Non-respect des distances de sécurité', 30, 0);
INSERT INTO "fine_types" VALUES (7, 'Arrêt dangereux / interdit', 150, 0);
INSERT INTO "fine_types" VALUES (8, 'Stationnement gênant / interdit', 70, 0);
INSERT INTO "fine_types" VALUES (9, 'Non respect  de la priorité à droite', 70, 0);
INSERT INTO "fine_types" VALUES (10, 'Non-respect à un véhicule prioritaire', 90, 0);
INSERT INTO "fine_types" VALUES (11, 'Non-respect d\'un stop', 105, 0);
INSERT INTO "fine_types" VALUES (12, 'Non-respect d\'un feu rouge', 130, 0);
INSERT INTO "fine_types" VALUES (13, 'Dépassement dangereux', 100, 0);
INSERT INTO "fine_types" VALUES (14, 'Véhicule non en état', 100, 0);
INSERT INTO "fine_types" VALUES (15, 'Conduite sans permis', 1500, 0);
INSERT INTO "fine_types" VALUES (16, 'Délit de fuite', 800, 0);
INSERT INTO "fine_types" VALUES (17, 'Excès de vitesse < 5 kmh', 90, 0);
INSERT INTO "fine_types" VALUES (18, 'Excès de vitesse 5-15 kmh', 120, 0);
INSERT INTO "fine_types" VALUES (19, 'Excès de vitesse 15-30 kmh', 180, 0);
INSERT INTO "fine_types" VALUES (20, 'Excès de vitesse > 30 kmh', 300, 0);
INSERT INTO "fine_types" VALUES (21, 'Entrave de la circulation', 110, 1);
INSERT INTO "fine_types" VALUES (22, 'Dégradation de la voie publique', 90, 1);
INSERT INTO "fine_types" VALUES (23, 'Trouble à l\'ordre publique', 90, 1);
INSERT INTO "fine_types" VALUES (24, 'Entrave opération de police', 130, 1);
INSERT INTO "fine_types" VALUES (25, 'Insulte envers / entre civils', 75, 1);
INSERT INTO "fine_types" VALUES (26, 'Outrage à agent de police', 110, 1);
INSERT INTO "fine_types" VALUES (27, 'Menace verbale ou intimidation envers civil', 90, 1);
INSERT INTO "fine_types" VALUES (28, 'Menace verbale ou intimidation envers policier', 150, 1);
INSERT INTO "fine_types" VALUES (29, 'Manifestation illégale', 250, 1);
INSERT INTO "fine_types" VALUES (30, 'Tentative de corruption', 1500, 1);
INSERT INTO "fine_types" VALUES (31, 'Arme blanche sortie en ville', 120, 2);
INSERT INTO "fine_types" VALUES (32, 'Arme léthale sortie en ville', 300, 2);
INSERT INTO "fine_types" VALUES (33, 'Port d\'arme non autorisé (défaut de license)', 600, 2);
INSERT INTO "fine_types" VALUES (34, 'Port d\'arme illégal', 700, 2);
INSERT INTO "fine_types" VALUES (35, 'Pris en flag lockpick', 300, 2);
INSERT INTO "fine_types" VALUES (36, 'Vol de voiture', 1800, 2);
INSERT INTO "fine_types" VALUES (37, 'Vente de drogue', 1500, 2);
INSERT INTO "fine_types" VALUES (38, 'Fabriquation de drogue', 1500, 2);
INSERT INTO "fine_types" VALUES (39, 'Possession de drogue', 650, 2);
INSERT INTO "fine_types" VALUES (40, 'Prise d\'ôtage civil', 1500, 2);
INSERT INTO "fine_types" VALUES (41, 'Prise d\'ôtage agent de l\'état', 2000, 2);
INSERT INTO "fine_types" VALUES (42, 'Braquage particulier', 650, 2);
INSERT INTO "fine_types" VALUES (43, 'Braquage magasin', 650, 2);
INSERT INTO "fine_types" VALUES (44, 'Braquage de banque', 1500, 2);
INSERT INTO "fine_types" VALUES (45, 'Tir sur civil', 2000, 3);
INSERT INTO "fine_types" VALUES (46, 'Tir sur agent de l\'état', 2500, 3);
INSERT INTO "fine_types" VALUES (47, 'Tentative de meurtre sur civil', 3000, 3);
INSERT INTO "fine_types" VALUES (48, 'Tentative de meurtre sur agent de l\'état', 5000, 3);
INSERT INTO "fine_types" VALUES (49, 'Meurtre sur civil', 10000, 3);
INSERT INTO "fine_types" VALUES (50, 'Meurte sur agent de l\'état', 30000, 3);
INSERT INTO "fine_types" VALUES (51, 'Meurtre involontaire', 1800, 3);
INSERT INTO "fine_types" VALUES (52, 'Escroquerie à l\'entreprise', 2000, 2);

-- ----------------------------
-- Table structure for gangs
-- ----------------------------
DROP TABLE IF EXISTS "gangs" CASCADE;
CREATE TABLE "gangs" (
  "name" VARCHAR(50) NOT NULL,
  "label" VARCHAR(250) NOT NULL,
  "logo" TEXT DEFAULT NULL,
  "member" TEXT DEFAULT NULL,
  "header" VARCHAR(50) DEFAULT NULL,
  "authorities" VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY ("name")
);

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS "items" CASCADE;
CREATE TABLE "items" (
  "name" VARCHAR(50) NOT NULL,
  "label" VARCHAR(50) NOT NULL,
  "limit" INT NOT NULL DEFAULT -1,
  "weight" INT NOT NULL DEFAULT 1,
  "rare" INT NOT NULL DEFAULT 0,
  "can_remove" INT NOT NULL DEFAULT 1,
  PRIMARY KEY ("name")
);
CREATE INDEX "items_name_idx" ON "items" ("name");
CREATE INDEX "items_can_remove_idx" ON "items" ("can_remove");

INSERT INTO "items" VALUES ('Box_01', 'กล่องBOX_1', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('Box_02', 'กล่องBOX_2', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('Box_03', 'กล่องBOX_3', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('Magicseed', 'เมล็ดกัญชา', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('Phone', 'โทรศัพท์', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('SteelScrap', 'แร่เหล็ก', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('acabbage', 'กะหล่ำดิบ', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('adrr', 'ยาวิ่งไว', 20, 1, 0, 1);
INSERT INTO "items" VALUES ('aed', 'AED', 10, 1, 0, 1);
INSERT INTO "items" VALUES ('afk_coin', 'AFK Coin', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('antist2', 'ยาแก้เครียด', 20, 1, 0, 1);
INSERT INTO "items" VALUES ('armor', 'เกราะ', 20, 1, 0, 1);
INSERT INTO "items" VALUES ('bandage', 'ผ้าพันแผล', 20, 1, 0, 1);
INSERT INTO "items" VALUES ('bandage1', 'ยาปั้มHP', 20, 1, 0, 1);
INSERT INTO "items" VALUES ('bet_afk', 'เบ็ดตกปลา', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('boolean', 'ที่ดามขา', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('bread', 'ขนมปัง', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('c4_door', 'ถุงห่อศพ', 5, 1, 0, 1);
INSERT INTO "items" VALUES ('cardx2', 'บัตรคูณ2', 1, 1, 0, 1);
INSERT INTO "items" VALUES ('cement', 'ปูน', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('cementwork', 'ที่ตัดถุงปูน', 1, 1, 0, 1);
INSERT INTO "items" VALUES ('cherry', 'เชอร์รี่', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('clip', 'แม็กกระสุน', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('coco', 'ผลโกโก้', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('coin', 'เหรียญทำงาน', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('coin_kiminoto', 'เหรียญ', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('coke', 'โคเคน', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('coke_pooch', 'โคเคนแพ็ค', 25, 1, 0, 1);
INSERT INTO "items" VALUES ('contract', 'ใบโอนรถ', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('cookingoil', 'น้ำมันทำอาหาร', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('copperrod', 'แท่งทองแดง', 100, 1, 0, 1);
INSERT INTO "items" VALUES ('corn', 'อาหารหมา', 10, 1, 0, 1);
INSERT INTO "items" VALUES ('cubediamond', 'ก้อนเพรช', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('cut', 'กรรไกร', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('dmuncut', 'เพชรเจียระไน', 100, 1, 0, 1);
INSERT INTO "items" VALUES ('fail_kiminoto', 'เหรียญดวยซวย', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('fish_afk', 'ปลาคราฟ', 100, 1, 0, 1);
INSERT INTO "items" VALUES ('fixkit', 'ที่ซ่อมรถ', 10, 1, 0, 1);
INSERT INTO "items" VALUES ('freshcabbage', 'กะหล่ำปลีแพ็ค', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('fruitbroth', 'น้ำซุปผลไม้', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('gacha_01', 'Gacha 01', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('gacha_02', 'Gacha 02', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('gacha_03', 'Gacha 03', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('gacha_04', 'Gacha 04', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('gacha_05', 'Gacha 05', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('goldbar', 'แท่งทองคำ', 100, 1, 0, 1);
INSERT INTO "items" VALUES ('goldscrap', 'เศษทองคำ', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('grape', 'องุ่น', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('growup', 'น้ำยาเร่งโต', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('hifi', 'วิทยุ', 1, 1, 0, 1);
INSERT INTO "items" VALUES ('marijuana', 'กัญชาแปรรูป', 25, 1, 0, 1);
INSERT INTO "items" VALUES ('meatpig', 'เนื้อหมู', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('medikit', 'ชุดปฐมพยาบาล', 20, 1, 0, 1);
INSERT INTO "items" VALUES ('melon', 'เมล่อน', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('meteorite', 'เศษหินเสียหาย', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('meteorite2', 'เศษอุกกาบาต', 120, 1, 0, 1);
INSERT INTO "items" VALUES ('moneystick', 'แท่งเงิน', 100, 1, 0, 1);
INSERT INTO "items" VALUES ('mushroom', 'เห็ด', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('non_afk', 'เหยื่อตกปลา', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('oil', 'น้ำมันดิบ', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('onion', 'หัวหอม', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('orange_a', 'ผลส้ม', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('orangesmoothie', 'น้ำส้ม', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('oxygen_mask', 'ถังดำน้ำ', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('pearlmilk', 'ชานม', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('ped_Dog', 'ลูกหมา', 10, 1, 0, 1);
INSERT INTO "items" VALUES ('pinto_beefpm', 'ชาบู', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('pinto_food', 'ปิ่นโต', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('pinto_meatpm', 'อาหารชุดใหญ่', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('pixcar', 'ที่ตัดเหล็ก', 1, 1, 0, 1);
INSERT INTO "items" VALUES ('plywood', 'ไม้อัด', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('porkpackage', 'หมูสามชั้น', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('pumpkin', 'ฟักทอง', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('pumpkinPie', 'ฟักทองแพ็ค', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('punch9', 'หมัดสายฟ้า', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('radio', 'วอสื่อสาร', 1, 1, 0, 1);
INSERT INTO "items" VALUES ('refinedoil', 'น้ำมันกลั่น', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('rice', 'ข้าว', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('ricepro', 'ข้าวสาร', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('scel', 'คีมตัดสายไฟ', 1, 1, 0, 1);
INSERT INTO "items" VALUES ('scrapcopper', 'เศษทองแดง', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('scrapmoney', 'เศษเงิน', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('seller', 'บัตรขายยา', 1, 1, 0, 1);
INSERT INTO "items" VALUES ('shell', 'หอย', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('sidedishes', 'เครื่องเคียง', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('skateboard', 'สเก็ตบอร์ด', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('stone', 'แร่ดิบ', 120, 1, 0, 1);
INSERT INTO "items" VALUES ('stone_p', 'หิน', 60, 1, 0, 1);
INSERT INTO "items" VALUES ('strawberry', 'สตรอเบอร์รี่', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('strawberrypro', 'น้ำสตรอเบอร์รี่', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('surgency', 'บัตรแต่งตัว', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('thinfabric', 'ผ้าขาวบาง', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('vault_key', 'กุญแจเขียว', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('vault_red', 'กุญแจแดง', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('water', 'น้ำ', -1, 1, 0, 1);
INSERT INTO "items" VALUES ('watermelon', 'แตงโม', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('watermelonpro', 'น้ำแตงโม', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('weed', 'กัญชา', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('whitecloth', 'เศษผ้า', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('wire', 'สายไฟ', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('wood', 'ไม้', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('wood_rag', 'เปลือกไม้', 50, 1, 0, 1);
INSERT INTO "items" VALUES ('zap_oil', 'น้ำมันสน', 50, 1, 0, 1);

-- ----------------------------
-- Table structure for job_grades
-- ----------------------------
DROP TABLE IF EXISTS "job_grades" CASCADE;
CREATE TABLE "job_grades" (
  "id" SERIAL PRIMARY KEY,
  "job_name" VARCHAR(50) DEFAULT NULL,
  "grade" INT NOT NULL,
  "name" VARCHAR(50) NOT NULL,
  "label" VARCHAR(50) NOT NULL,
  "salary" INT NOT NULL,
  "skin_male" TEXT NOT NULL,
  "skin_female" TEXT NOT NULL
);

INSERT INTO "job_grades" VALUES (1, 'unemployed', 0, 'unemployed', 'ว่างงาน', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (6, 'ambulance', 0, 'ambulance', 'นักเรียนแพทย์', 150, '{}', '{}');
INSERT INTO "job_grades" VALUES (7, 'ambulance', 1, 'doctor', 'แพทย์', 200, '{}', '{}');
INSERT INTO "job_grades" VALUES (8, 'ambulance', 4, 'chief_doctor', 'รองผู้อำนวยการแพทย์', 350, '{}', '{}');
INSERT INTO "job_grades" VALUES (9, 'ambulance', 5, 'boss', 'ผู้อำนวยการแพทย์', 400, '{}', '{}');
INSERT INTO "job_grades" VALUES (10, 'police', 0, 'recruit', 'นักเรียนตำรวจ', 150, '{}', '{}');
INSERT INTO "job_grades" VALUES (11, 'police', 1, 'officer', 'จ่า', 200, '{}', '{}');
INSERT INTO "job_grades" VALUES (12, 'police', 2, 'officer', 'หมวด', 250, '{}', '{}');
INSERT INTO "job_grades" VALUES (13, 'police', 3, 'sergeant', 'สารวัต', 300, '{}', '{}');
INSERT INTO "job_grades" VALUES (14, 'police', 4, 'lieutenant', 'รองผบ', 350, '{}', '{}');
INSERT INTO "job_grades" VALUES (15, 'mechanic', 0, 'recrue', 'นักเรียนช่าง', 100, '{}', '{}');
INSERT INTO "job_grades" VALUES (16, 'mechanic', 1, 'novice', 'ช่าง', 150, '{}', '{}');
INSERT INTO "job_grades" VALUES (17, 'mechanic', 2, 'experimente', 'ช่างชํานาญการ', 200, '{}', '{}');
INSERT INTO "job_grades" VALUES (18, 'mechanic', 4, 'boss', 'หัวหน้าช่าง', 300, '{}', '{}');
INSERT INTO "job_grades" VALUES (25, 'offpolice', 0, 'recruit', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (26, 'offpolice', 1, 'officer', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (27, 'offpolice', 2, 'officer', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (28, 'offpolice', 3, 'officer', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (29, 'offpolice', 4, 'sergeant', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (30, 'offambulance', 0, 'ambulance', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (31, 'offambulance', 4, 'chief_doctor', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (32, 'offambulance', 5, 'boss', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (34, 'offmechanic', 0, 'recrue', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (35, 'offmechanic', 1, 'novice', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (36, 'offmechanic', 2, 'experimente', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (37, 'offmechanic', 3, 'chief', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (38, 'offmechanic', 5, 'boss', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (75, 'police', 5, 'boss', 'ผบ', 400, '{}', '{}');
INSERT INTO "job_grades" VALUES (81, 'offpolice', 5, 'sergeant', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (82, 'offpolice', 6, 'sergeant', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (83, 'offpolice', 7, 'lieutenant', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (85, 'offpolice', 8, 'lieutenant', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (86, 'offpolice', 10, 'boss', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (87, 'offpolice', 9, 'boss', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (88, 'mechanic', 3, 'chief', 'รองหัวหน้าช่าง', 250, '{}', '{}');
INSERT INTO "job_grades" VALUES (89, 'offmechanic', 4, 'chief', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (90, 'ambulance', 2, 'doctor', 'แพทย์ชำนาญการณ์', 250, '{}', '{}');
INSERT INTO "job_grades" VALUES (91, 'ambulance', 3, 'chief_doctor', 'หัวหน้าแพทย์', 300, '{}', '{}');
INSERT INTO "job_grades" VALUES (92, 'offambulance', 1, 'doctor', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (93, 'offambulance', 2, 'doctor', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (94, 'offambulance', 3, 'chief_doctor', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (95, 'foodpanda', 0, 'recrue', 'พนักงานฝึกหัด', 100, '{}', '{}');
INSERT INTO "job_grades" VALUES (96, 'foodpanda', 1, 'novice', 'พนักงานlineman', 150, '{}', '{}');
INSERT INTO "job_grades" VALUES (97, 'foodpanda', 2, 'experimente', 'หัวหน้าlineman', 200, '{}', '{}');
INSERT INTO "job_grades" VALUES (98, 'foodpanda', 3, 'boss', 'ผู้จัดการ lineman', 250, '{}', '{}');
INSERT INTO "job_grades" VALUES (105, 'offfoodpanda', 0, 'recrue', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (106, 'offfoodpanda', 1, 'novice', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (107, 'offfoodpanda', 2, 'experimente', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (108, 'offfoodpanda', 3, 'uber', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (109, 'offambulance', 4, 'boss', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (110, 'offfoodpanda', 4, 'boss', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" VALUES (111, 'council', 0, 'boss', 'สภาผู้แทนราษฎร', 0, '{}', '{}');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS "jobs" CASCADE;
CREATE TABLE "jobs" (
  "name" VARCHAR(50) NOT NULL,
  "label" VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY ("name")
);

INSERT INTO "jobs" VALUES ('ambulance', 'Ambulance');
INSERT INTO "jobs" VALUES ('council', 'สภาผู้แทนราษฎร');
INSERT INTO "jobs" VALUES ('foodpanda', 'Foodpanda');
INSERT INTO "jobs" VALUES ('mechanic', 'Mechanic');
INSERT INTO "jobs" VALUES ('offambulance', 'Off-Duty');
INSERT INTO "jobs" VALUES ('offfoodpanda', 'Off-Duty');
INSERT INTO "jobs" VALUES ('offmechanic', 'Off-Duty');
INSERT INTO "jobs" VALUES ('offpolice', 'Off-Duty');
INSERT INTO "jobs" VALUES ('police', 'LSPD');
INSERT INTO "jobs" VALUES ('unemployed', 'ว่างงาน');

-- ----------------------------
-- Table structure for kc_bans
-- ----------------------------
DROP TABLE IF EXISTS "kc_bans" CASCADE;
CREATE TABLE "kc_bans" (
  "id" SERIAL PRIMARY KEY,
  "identifier" VARCHAR(100) NOT NULL DEFAULT '0',
  "license" VARCHAR(100) NOT NULL,
  "reason" VARCHAR(250) NOT NULL DEFAULT '0',
  "name" VARCHAR(100) NOT NULL DEFAULT '0',
  "ip" VARCHAR(16) NOT NULL DEFAULT '127.0.0.1',
  "admin_name" VARCHAR(100) NOT NULL DEFAULT '0',
  "admin_identifier" VARCHAR(100) NOT NULL DEFAULT '0',
  "time" VARCHAR(50) NOT NULL DEFAULT '0',
  "date" VARCHAR(50) NOT NULL
);

-- ----------------------------
-- Table structure for kc_jails
-- ----------------------------
DROP TABLE IF EXISTS "kc_jails" CASCADE;
CREATE TABLE "kc_jails" (
  "id" SERIAL PRIMARY KEY,
  "license" VARCHAR(100) NOT NULL DEFAULT '0',
  "name" VARCHAR(100) NOT NULL DEFAULT '0',
  "admin_name" VARCHAR(100) NOT NULL DEFAULT '0',
  "admin_identifier" VARCHAR(100) NOT NULL DEFAULT '0',
  "time" VARCHAR(100) NOT NULL DEFAULT '0',
  "time_s" VARCHAR(100) NOT NULL DEFAULT '0'
);

-- ----------------------------
-- Table structure for kc_warns
-- ----------------------------
DROP TABLE IF EXISTS "kc_warns" CASCADE;
CREATE TABLE "kc_warns" (
  "id" SERIAL PRIMARY KEY,
  "identifier" VARCHAR(100) NOT NULL DEFAULT '0',
  "license" VARCHAR(100) NOT NULL DEFAULT '0',
  "reason" VARCHAR(250) NOT NULL DEFAULT '0',
  "name" VARCHAR(250) NOT NULL DEFAULT '0',
  "admin_name" VARCHAR(250) NOT NULL DEFAULT '0',
  "admin_identifier" VARCHAR(100) NOT NULL DEFAULT '0',
  "timestamp" VARCHAR(50) NOT NULL DEFAULT '0'
);

-- ----------------------------
-- Table structure for last_pregnant
-- ----------------------------
DROP TABLE IF EXISTS "last_pregnant" CASCADE;
CREATE TABLE "last_pregnant" (
  "identifier" VARCHAR(255) NOT NULL,
  "pregnant_time" INT DEFAULT NULL,
  PRIMARY KEY ("identifier")
);

-- ----------------------------
-- Table structure for licenses
-- ----------------------------
DROP TABLE IF EXISTS "licenses" CASCADE;
CREATE TABLE "licenses" (
  "type" VARCHAR(60) NOT NULL,
  "label" VARCHAR(60) NOT NULL,
  PRIMARY KEY ("type")
);

INSERT INTO "licenses" VALUES ('boat', 'ใบอนุญาติขับขี่เรือ');
INSERT INTO "licenses" VALUES ('coke_processing', 'ใบอนุญาติผลิตโคเคน');
INSERT INTO "licenses" VALUES ('dig_processing', 'dig Processing License');
INSERT INTO "licenses" VALUES ('dmv', 'กฎหมายจราจร');
INSERT INTO "licenses" VALUES ('drive', 'ใบอนุญาติขับขี่รถยนต์');
INSERT INTO "licenses" VALUES ('drive_bike', 'ใบอนุญาติขับขี่รถจักรยานยนต์');
INSERT INTO "licenses" VALUES ('drive_truck', 'ใบอนุญาติขับขี่รถบรรทุก');
INSERT INTO "licenses" VALUES ('meth_processing', 'Meth Processing License');
INSERT INTO "licenses" VALUES ('weapon', 'ใบอนุญาติพกอาวุธ');
INSERT INTO "licenses" VALUES ('weed_processing', 'ใบอนุญาติผลิตกัญชา');

-- ----------------------------
-- Table structure for lottery_result
-- ----------------------------
DROP TABLE IF EXISTS "lottery_result" CASCADE;
CREATE TABLE "lottery_result" (
  "result_poll" TEXT NOT NULL,
  "result_date" DATE NOT NULL
);
CREATE UNIQUE INDEX "result_date" ON "lottery_result" ("result_date");

-- ----------------------------
-- Table structure for meeta_accessory_inventory
-- ----------------------------
DROP TABLE IF EXISTS "meeta_accessory_inventory" CASCADE;
CREATE TABLE "meeta_accessory_inventory" (
  "id" SERIAL PRIMARY KEY,
  "owner" VARCHAR(255) DEFAULT NULL,
  "label" VARCHAR(255) DEFAULT NULL,
  "skin" TEXT DEFAULT NULL,
  "type" VARCHAR(255) DEFAULT NULL
);
CREATE INDEX "meeta_accessory_inventory_owner_idx" ON "meeta_accessory_inventory" ("owner");
CREATE INDEX "meeta_accessory_inventory_type_idx" ON "meeta_accessory_inventory" ("type");

-- ----------------------------
-- Table structure for meeta_vehicle_trunk
-- ----------------------------
DROP TABLE IF EXISTS "meeta_vehicle_trunk" CASCADE;
CREATE TABLE "meeta_vehicle_trunk" (
  "id" SERIAL PRIMARY KEY,
  "plate" VARCHAR(255) DEFAULT NULL,
  "item" VARCHAR(255) NOT NULL,
  "count" INT DEFAULT NULL,
  "isweapon" INT NOT NULL DEFAULT 0,
  "owner" VARCHAR(255) DEFAULT NULL,
  "label_weapon" VARCHAR(255) DEFAULT NULL
);
CREATE INDEX "meeta_vehicle_trunk_plate_idx" ON "meeta_vehicle_trunk" ("plate");
CREATE INDEX "meeta_vehicle_trunk_isweapon_idx" ON "meeta_vehicle_trunk" ("isweapon");

-- ----------------------------
-- Table structure for owned_boat
-- ----------------------------
DROP TABLE IF EXISTS "owned_boat" CASCADE;
CREATE TABLE "owned_boat" (
  "owner" VARCHAR(22) NOT NULL,
  "state" SMALLINT NOT NULL DEFAULT 0,
  "plate" VARCHAR(12) NOT NULL,
  "stored" SMALLINT NOT NULL DEFAULT 1,
  "vehicle" TEXT DEFAULT NULL,
  "type" VARCHAR(20) NOT NULL DEFAULT 'car',
  "vehiclename" VARCHAR(50) DEFAULT 'voiture',
  "health_engine" INT NOT NULL DEFAULT 1000,
  "health_body" INT NOT NULL DEFAULT 1000,
  "health_tank" INT NOT NULL DEFAULT 1000,
  PRIMARY KEY ("plate")
);
CREATE INDEX "owned_boat_owner_idx" ON "owned_boat" ("owner");
CREATE INDEX "owned_boat_stored_idx" ON "owned_boat" ("stored");

INSERT INTO "owned_boat" VALUES ('steam:11000010a33c8db', 0, 'LNT 925', 1, '{\"modFrame\":-1,\"modTrunk\":-1,\"modHydrolic\":-1,\"color2\":73,\"color2Type\":0,\"modSpeakers\":-1,\"modFender\":-1,\"modDial\":-1,\"modXenon\":255,\"engineHealth\":1000.0,\"modOrnaments\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"color1\":1,\"modTank\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":5,\"modExhaust\":-1,\"modTrimA\":-1,\"modSeats\":-1,\"plate\":\"LNT 925\",\"modSuspension\":-1,\"color1Type\":0,\"windowTint\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"color2Custom\":[14,49,109],\"modRearBumper\":-1,\"modHood\":-1,\"modBrakes\":-1,\"modTrimB\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modTurbo\":0,\"modSpoilers\":-1,\"modRoof\":-1,\"plateIndex\":4,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":-1,\"modTransmission\":-1,\"modShifterLeavers\":-1,\"bodyHealth\":1000.0,\"wheelColor\":156,\"modDashboard\":-1,\"color1Custom\":[15,15,15],\"wheels\":0,\"dirtLevel\":0.0,\"modAPlate\":-1,\"modVanityPlate\":-1,\"extras\":[],\"modArmor\":-1,\"neonColor\":[255,0,255],\"modLivery\":-1,\"modStruts\":-1,\"fuelLevel\":32.3,\"modAirFilter\":-1,\"modWindows\":-1,\"modBackWheels\":-1,\"modAerials\":-1,\"neonEnabled\":[false,false,false,false],\"modArchCover\":-1,\"livery\":-1,\"model\":-1030275036,\"modDoorSpeaker\":-1}', 'boat', 'voiture', 1000, 1000, 1000);
INSERT INTO "owned_boat" VALUES ('steam:11000010a33c8db', 0, 'PJC 171', 1, '{\"modFrame\":-1,\"modTrunk\":-1,\"modHydrolic\":-1,\"color2\":4,\"color2Type\":0,\"modSpeakers\":-1,\"modFender\":-1,\"modDial\":-1,\"modXenon\":255,\"engineHealth\":1000.0,\"modOrnaments\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"color1\":0,\"modTank\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":3,\"modExhaust\":-1,\"modTrimA\":-1,\"modSeats\":-1,\"plate\":\"PJC 171\",\"modSuspension\":-1,\"color1Type\":0,\"windowTint\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"color2Custom\":[90,94,102],\"modRearBumper\":-1,\"modHood\":-1,\"modBrakes\":-1,\"modTrimB\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modTurbo\":0,\"modSpoilers\":-1,\"modRoof\":-1,\"plateIndex\":4,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":-1,\"modTransmission\":-1,\"modShifterLeavers\":-1,\"bodyHealth\":1000.0,\"wheelColor\":156,\"modDashboard\":-1,\"color1Custom\":[8,8,8],\"wheels\":0,\"dirtLevel\":0.0,\"modAPlate\":-1,\"modVanityPlate\":-1,\"extras\":[],\"modArmor\":-1,\"neonColor\":[255,0,255],\"modLivery\":-1,\"modStruts\":-1,\"fuelLevel\":50.7,\"modAirFilter\":-1,\"modWindows\":-1,\"modBackWheels\":-1,\"modAerials\":-1,\"neonEnabled\":[false,false,false,false],\"modArchCover\":-1,\"livery\":-1,\"model\":861409633,\"modDoorSpeaker\":-1}', 'boat', 'voiture', 1000, 1000, 1000);

-- ----------------------------
-- Table structure for owned_properties
-- ----------------------------
DROP TABLE IF EXISTS "owned_properties" CASCADE;
CREATE TABLE "owned_properties" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(255) NOT NULL,
  "price" DOUBLE PRECISION NOT NULL,
  "rented" INT NOT NULL,
  "owner" VARCHAR(60) NOT NULL
);

-- ----------------------------
-- Table structure for owned_vehicles
-- ----------------------------
DROP TABLE IF EXISTS "owned_vehicles" CASCADE;
CREATE TABLE "owned_vehicles" (
  "owner" VARCHAR(22) NOT NULL,
  "plate" VARCHAR(12) NOT NULL,
  "vehicle" TEXT DEFAULT NULL,
  "type" VARCHAR(20) NOT NULL DEFAULT 'car',
  "job" VARCHAR(20) NOT NULL DEFAULT '',
  "stored" SMALLINT NOT NULL DEFAULT 1,
  "health_vehicles" TEXT DEFAULT NULL,
  "police" INT DEFAULT 0,
  "police_by" VARCHAR(50) DEFAULT NULL,
  "time" TIMESTAMP DEFAULT NULL,
  PRIMARY KEY ("plate")
);

INSERT INTO "owned_vehicles" VALUES ('steam:11000010a33c8db', 'BRX 298', '{\"modOrnaments\":-1,\"extras\":{\"1\":1},\"modFrontBumper\":-1,\"color2\":0,\"modSmokeEnabled\":false,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modTurbo\":0,\"bodyHealth\":868.9,\"modRearBumper\":-1,\"modTrunk\":-1,\"neonColor\":[255,0,255],\"modLivery\":-1,\"plate\":\"BRX 298\",\"modArchCover\":-1,\"modTrimA\":-1,\"modEngineBlock\":-1,\"wheelColor\":156,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"modSideSkirt\":-1,\"wheels\":5,\"modStruts\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modWindows\":-1,\"color2Custom\":[8,8,8],\"modSpeakers\":-1,\"modSpoilers\":-1,\"modAerials\":-1,\"modFrame\":-1,\"modSuspension\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"color1\":0,\"modGrille\":-1,\"modRoof\":-1,\"modDial\":-1,\"engineHealth\":183.8,\"color2Type\":0,\"windowTint\":-1,\"modTransmission\":-1,\"modArmor\":-1,\"modXenon\":255,\"modFrontWheels\":-1,\"color1Type\":0,\"pearlescentColor\":18,\"modBrakes\":-1,\"color1Custom\":[153,153,153],\"livery\":-1,\"modEngine\":-1,\"modVanityPlate\":-1,\"fuelLevel\":48.4,\"dirtLevel\":8.5,\"modTank\":-1,\"modBackWheels\":-1,\"modAPlate\":-1,\"modHood\":-1,\"modDoorSpeaker\":-1,\"model\":-2098954619,\"modFender\":-1,\"plateIndex\":0,\"modPlateHolder\":-1}', 'car', '', 0, '{\"health_body\":868.9388427734375,\"doors\":[false,false,false,false,false,false],\"fuel\":48.37385559082031,\"health_engine\":182.9908447265625,\"tyres\":[false,false,false,false,false,false,false]}', 0, NULL, NULL);
INSERT INTO "owned_vehicles" VALUES ('steam:11000010a33c8db', 'SLB 360', '{\"modRightFender\":-1,\"modDashboard\":-1,\"modSpeakers\":-1,\"bodyHealth\":876.3,\"fuelLevel\":62.4,\"model\":-2098954619,\"wheels\":5,\"modSmokeEnabled\":false,\"neonColor\":[255,0,255],\"modSideSkirt\":-1,\"wheelColor\":156,\"modPlateHolder\":-1,\"modXenon\":255,\"modRoof\":-1,\"modBrakes\":-1,\"modTurbo\":0,\"modRearBumper\":-1,\"windowTint\":-1,\"modSuspension\":-1,\"modSeats\":-1,\"modVanityPlate\":-1,\"modWindows\":-1,\"color1Type\":0,\"neonEnabled\":[false,false,false,false],\"modStruts\":-1,\"modTrimB\":-1,\"color2\":0,\"color2Custom\":[8,8,8],\"dirtLevel\":3.1,\"modLivery\":-1,\"livery\":-1,\"engineHealth\":364.8,\"modGrille\":-1,\"modOrnaments\":-1,\"modHydrolic\":-1,\"extras\":{\"1\":1},\"modEngineBlock\":-1,\"plateIndex\":0,\"modHorns\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"color1Custom\":[8,8,8],\"modTrimA\":-1,\"modTransmission\":-1,\"modArmor\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modAirFilter\":-1,\"modTank\":-1,\"modExhaust\":-1,\"modAerials\":-1,\"modAPlate\":-1,\"color2Type\":0,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modSpoilers\":-1,\"modFender\":-1,\"modBackWheels\":-1,\"pearlescentColor\":92,\"modDoorSpeaker\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"plate\":\"SLB 360\",\"color1\":0}', 'car', '', 0, '{\"doors\":[1,false,false,false,1,false],\"health_engine\":364.78228759765627,\"health_body\":876.3330078125,\"fuel\":62.36199188232422,\"tyres\":[false,false,false,false,false,false,false]}', 0, NULL, NULL);

-- ----------------------------
-- Table structure for phone_app_chat
-- ----------------------------
DROP TABLE IF EXISTS "phone_app_chat" CASCADE;
CREATE TABLE "phone_app_chat" (
  "id" SERIAL PRIMARY KEY,
  "channel" VARCHAR(20) NOT NULL,
  "message" VARCHAR(255) NOT NULL,
  "time" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- ----------------------------
-- Table structure for phone_bank
-- ----------------------------
DROP TABLE IF EXISTS "phone_bank" CASCADE;
CREATE TABLE "phone_bank" (
  "id" SERIAL PRIMARY KEY,
  "type" INT NOT NULL DEFAULT 1,
  "identifier" VARCHAR(50) NOT NULL,
  "name" VARCHAR(50) NOT NULL,
  "price" INT NOT NULL,
  "time" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- ----------------------------
-- Table structure for phone_calls
-- ----------------------------
DROP TABLE IF EXISTS "phone_calls" CASCADE;
CREATE TABLE "phone_calls" (
  "id" SERIAL PRIMARY KEY,
  "owner" VARCHAR(10) NOT NULL,
  "num" VARCHAR(10) NOT NULL,
  "incoming" INT NOT NULL,
  "time" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "accepts" INT NOT NULL
);

-- ----------------------------
-- Table structure for phone_messages
-- ----------------------------
DROP TABLE IF EXISTS "phone_messages" CASCADE;
CREATE TABLE "phone_messages" (
  "id" SERIAL PRIMARY KEY,
  "transmitter" VARCHAR(10) NOT NULL,
  "receiver" VARCHAR(10) NOT NULL,
  "message" VARCHAR(255) NOT NULL DEFAULT '0',
  "time" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "isRead" INT NOT NULL DEFAULT 0,
  "owner" INT NOT NULL DEFAULT 0
);

INSERT INTO "phone_messages" VALUES (18, '4972889', '4972889', '        มีคนซื้อไอเทม แม็กกระสุน จำนวน 1 เงินที่ได้ $1\n    ', '2024-01-10 00:35:51', 0, 0);

-- ----------------------------
-- Table structure for phone_users_contacts
-- ----------------------------
DROP TABLE IF EXISTS "phone_users_contacts" CASCADE;
CREATE TABLE "phone_users_contacts" (
  "id" SERIAL PRIMARY KEY,
  "identifier" VARCHAR(60) DEFAULT NULL,
  "number" VARCHAR(10) DEFAULT NULL,
  "display" VARCHAR(64) NOT NULL DEFAULT '-1'
);

-- ----------------------------
-- Table structure for porpy_delete_items
-- ----------------------------
DROP TABLE IF EXISTS "porpy_delete_items" CASCADE;
CREATE TABLE "porpy_delete_items" (
  "id" SERIAL PRIMARY KEY,
  "identifier" VARCHAR(50) NOT NULL,
  "name" VARCHAR(50) NOT NULL,
  "weapons" VARCHAR(50) DEFAULT NULL,
  "day" INT NOT NULL DEFAULT 1,
  "time" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- ----------------------------
-- Table structure for properties
-- ----------------------------
DROP TABLE IF EXISTS "properties" CASCADE;
CREATE TABLE "properties" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(255) DEFAULT NULL,
  "label" VARCHAR(255) DEFAULT NULL,
  "entering" VARCHAR(255) DEFAULT NULL,
  "exit" VARCHAR(255) DEFAULT NULL,
  "inside" VARCHAR(255) DEFAULT NULL,
  "outside" VARCHAR(255) DEFAULT NULL,
  "ipls" VARCHAR(255) DEFAULT '[]',
  "gateway" VARCHAR(255) DEFAULT NULL,
  "is_single" INT DEFAULT NULL,
  "is_room" INT DEFAULT NULL,
  "is_gateway" INT DEFAULT NULL,
  "room_menu" VARCHAR(255) DEFAULT NULL,
  "price" INT NOT NULL
);

INSERT INTO "properties" VALUES (1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000);
INSERT INTO "properties" VALUES (2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000);
INSERT INTO "properties" VALUES (3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000);
INSERT INTO "properties" VALUES (4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000);
INSERT INTO "properties" VALUES (5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000);
INSERT INTO "properties" VALUES (6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000);
INSERT INTO "properties" VALUES (7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500);
INSERT INTO "properties" VALUES (8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000);
INSERT INTO "properties" VALUES (9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000);
INSERT INTO "properties" VALUES (10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000);
INSERT INTO "properties" VALUES (11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000);
INSERT INTO "properties" VALUES (12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO "properties" VALUES (13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000);
INSERT INTO "properties" VALUES (14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000);
INSERT INTO "properties" VALUES (15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000);
INSERT INTO "properties" VALUES (16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000);
INSERT INTO "properties" VALUES (17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000);
INSERT INTO "properties" VALUES (18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000);
INSERT INTO "properties" VALUES (19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000);
INSERT INTO "properties" VALUES (20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000);
INSERT INTO "properties" VALUES (21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000);
INSERT INTO "properties" VALUES (22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000);
INSERT INTO "properties" VALUES (23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000);
INSERT INTO "properties" VALUES (24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000);
INSERT INTO "properties" VALUES (25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000);
INSERT INTO "properties" VALUES (26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000);
INSERT INTO "properties" VALUES (27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000);
INSERT INTO "properties" VALUES (28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000);
INSERT INTO "properties" VALUES (29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000);
INSERT INTO "properties" VALUES (30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000);
INSERT INTO "properties" VALUES (31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000);
INSERT INTO "properties" VALUES (32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000);
INSERT INTO "properties" VALUES (33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000);
INSERT INTO "properties" VALUES (34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000);
INSERT INTO "properties" VALUES (35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000);
INSERT INTO "properties" VALUES (36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000);
INSERT INTO "properties" VALUES (37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO "properties" VALUES (38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000);
INSERT INTO "properties" VALUES (39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000);
INSERT INTO "properties" VALUES (40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO "properties" VALUES (41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000);
INSERT INTO "properties" VALUES (42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);
INSERT INTO "properties" VALUES (43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO "properties" VALUES (44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000);
INSERT INTO "properties" VALUES (45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000);
INSERT INTO "properties" VALUES (46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000);
INSERT INTO "properties" VALUES (47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000);
INSERT INTO "properties" VALUES (48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000);
INSERT INTO "properties" VALUES (49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000);
INSERT INTO "properties" VALUES (50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000);
INSERT INTO "properties" VALUES (51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000);
INSERT INTO "properties" VALUES (52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000);
INSERT INTO "properties" VALUES (53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO "properties" VALUES (54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000);
INSERT INTO "properties" VALUES (55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000);
INSERT INTO "properties" VALUES (56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000);
INSERT INTO "properties" VALUES (57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000);
INSERT INTO "properties" VALUES (58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000);
INSERT INTO "properties" VALUES (59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000);
INSERT INTO "properties" VALUES (60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000);
INSERT INTO "properties" VALUES (61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000);
INSERT INTO "properties" VALUES (62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000);
INSERT INTO "properties" VALUES (63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO "properties" VALUES (64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);
INSERT INTO "properties" VALUES (65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);
INSERT INTO "properties" VALUES (66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);
INSERT INTO "properties" VALUES (67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);
INSERT INTO "properties" VALUES (68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);
INSERT INTO "properties" VALUES (69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);
INSERT INTO "properties" VALUES (70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);
INSERT INTO "properties" VALUES (71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);
INSERT INTO "properties" VALUES (72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- ----------------------------
-- Table structure for properties_inventory
-- ----------------------------
DROP TABLE IF EXISTS "properties_inventory" CASCADE;
CREATE TABLE "properties_inventory" (
  "id" SERIAL PRIMARY KEY,
  "propertie_id" INT DEFAULT NULL,
  "item" VARCHAR(255) NOT NULL,
  "count" INT DEFAULT NULL,
  "isweapon" INT NOT NULL DEFAULT 0,
  "owner" VARCHAR(255) DEFAULT NULL,
  "label_weapon" VARCHAR(255) DEFAULT NULL
);

-- ----------------------------
-- Table structure for radiocar
-- ----------------------------
DROP TABLE IF EXISTS "radiocar" CASCADE;
CREATE TABLE "radiocar" (
  "id" SERIAL PRIMARY KEY,
  "label" VARCHAR(64) NOT NULL,
  "url" VARCHAR(256) NOT NULL,
  "spz" VARCHAR(32) NOT NULL,
  "index_music" INT NOT NULL
);

-- ----------------------------
-- Table structure for radiocar_owned
-- ----------------------------
DROP TABLE IF EXISTS "radiocar_owned" CASCADE;
CREATE TABLE "radiocar_owned" (
  "id" SERIAL PRIMARY KEY,
  "spz" VARCHAR(32) NOT NULL
);

-- ----------------------------
-- Table structure for rented_vehicles
-- ----------------------------
DROP TABLE IF EXISTS "rented_vehicles" CASCADE;
CREATE TABLE "rented_vehicles" (
  "vehicle" VARCHAR(60) NOT NULL,
  "plate" VARCHAR(12) NOT NULL,
  "player_name" VARCHAR(255) NOT NULL,
  "base_price" INT NOT NULL,
  "rent_price" INT NOT NULL,
  "owner" VARCHAR(22) NOT NULL,
  PRIMARY KEY ("plate")
);

-- ----------------------------
-- Table structure for shops_new
-- ----------------------------
DROP TABLE IF EXISTS "shops_new" CASCADE;
CREATE TABLE "shops_new" (
  "id" SERIAL PRIMARY KEY,
  "item" VARCHAR(100) NOT NULL,
  "price" INT NOT NULL,
  "category" VARCHAR(255) DEFAULT NULL
);

INSERT INTO "shops_new" VALUES (1, 'bread', 30, 'Normal');
INSERT INTO "shops_new" VALUES (2, 'water', 30, 'Normal');
INSERT INTO "shops_new" VALUES (23, 'hookah', 1000, 'Weed');
INSERT INTO "shops_new" VALUES (26, 'lrod', 500, 'Fish');
INSERT INTO "shops_new" VALUES (27, 'lbait', 5, 'Fish');
INSERT INTO "shops_new" VALUES (29, 'plongee1', 100, 'Police');
INSERT INTO "shops_new" VALUES (32, 'fixkit', 3200, 'Car');
INSERT INTO "shops_new" VALUES (37, 'handcuffs', 95000, 'Hand');
INSERT INTO "shops_new" VALUES (38, 'handcuffs_key', 3000, 'Hand');
INSERT INTO "shops_new" VALUES (40, 'paper_bag', 5000, 'Hand');
INSERT INTO "shops_new" VALUES (59, 'donut1', 40, 'Prison');
INSERT INTO "shops_new" VALUES (60, 'donut2', 40, 'Prison');
INSERT INTO "shops_new" VALUES (61, 'water', 40, 'Prison');
INSERT INTO "shops_new" VALUES (64, 'phone', 2500, 'Normal');
INSERT INTO "shops_new" VALUES (65, 'lrod', 500, 'SuperMarket');
INSERT INTO "shops_new" VALUES (67, 'cardcabbage', 500, 'SuperMarket');
INSERT INTO "shops_new" VALUES (68, 'lbait', 5, 'SuperMarket');
INSERT INTO "shops_new" VALUES (70, 'milk_engine', 500, 'SuperMarket');
INSERT INTO "shops_new" VALUES (71, 'drill', 500, 'SuperMarket');
INSERT INTO "shops_new" VALUES (73, 'pixcar', 500, 'SuperMarket');
INSERT INTO "shops_new" VALUES (74, 'hatchet_lj', 500, 'SuperMarket');
INSERT INTO "shops_new" VALUES (75, 'basket', 500, 'SuperMarket');
INSERT INTO "shops_new" VALUES (76, 'hammer', 500, 'SuperMarket');
INSERT INTO "shops_new" VALUES (77, 'pumpkin_shovel', 500, 'SuperMarket');
INSERT INTO "shops_new" VALUES (78, 'cigarett', 30, 'Club');
INSERT INTO "shops_new" VALUES (79, 'lighter', 220, 'Club');
INSERT INTO "shops_new" VALUES (80, 'beer', 110, 'Club');
INSERT INTO "shops_new" VALUES (81, 'weed_pooch', 150, 'Club');
INSERT INTO "shops_new" VALUES (82, 'bong', 900, 'Club');
INSERT INTO "shops_new" VALUES (83, 'juice', 50, 'Normal');
INSERT INTO "shops_new" VALUES (84, 'lrod2', 500, 'SuperMarket');
INSERT INTO "shops_new" VALUES (88, 'gacha_04', 50000, 'Cleanmoney');

-- ----------------------------
-- Table structure for sm_inventory
-- ----------------------------
DROP TABLE IF EXISTS "sm_inventory" CASCADE;
CREATE TABLE "sm_inventory" (
  "owner" VARCHAR(22) NOT NULL,
  "slot" TEXT DEFAULT NULL
);

-- ----------------------------
-- Table structure for society_moneywash
-- ----------------------------
DROP TABLE IF EXISTS "society_moneywash" CASCADE;
CREATE TABLE "society_moneywash" (
  "id" SERIAL PRIMARY KEY,
  "identifier" VARCHAR(60) NOT NULL,
  "society" VARCHAR(60) NOT NULL,
  "amount" INT NOT NULL
);

-- ----------------------------
-- Table structure for twitter_accounts
-- ----------------------------
DROP TABLE IF EXISTS "twitter_accounts" CASCADE;
CREATE TABLE "twitter_accounts" (
  "id" SERIAL PRIMARY KEY,
  "identifier" VARCHAR(50) NOT NULL,
  "username" VARCHAR(50) NOT NULL DEFAULT '0',
  "password" VARCHAR(50) NOT NULL DEFAULT '0',
  "avatar_url" VARCHAR(255) DEFAULT NULL,
  "avatar_urlSB" VARCHAR(255) DEFAULT NULL
);
CREATE UNIQUE INDEX "twitter_accounts_identifier_idx" ON "twitter_accounts" ("identifier");

INSERT INTO "twitter_accounts" VALUES (3524, 'steam:11000010a33c8db', 'Oatt Devil', '0', NULL, NULL);
INSERT INTO "twitter_accounts" VALUES (3525, 'steam:110000105d9c575', 'BlackNIght Caramel', '0', NULL, NULL);
INSERT INTO "twitter_accounts" VALUES (3526, 'steam:1100001358fb54d', 'Hexs GoMODE', '0', NULL, 'https://res.heraldm.com/content/image/2023/08/24/20230824000865_0.jpg');
INSERT INTO "twitter_accounts" VALUES (3527, 'steam:110000117301dd3', 'Satoru Minarushi', '0', NULL, NULL);

-- ----------------------------
-- Table structure for twitter_likes
-- ----------------------------
DROP TABLE IF EXISTS "twitter_likes" CASCADE;
CREATE TABLE "twitter_likes" (
  "id" SERIAL PRIMARY KEY,
  "authorId" INT DEFAULT NULL,
  "tweetId" INT DEFAULT NULL
);

-- ----------------------------
-- Table structure for twitter_tweets
-- ----------------------------
DROP TABLE IF EXISTS "twitter_tweets" CASCADE;
CREATE TABLE "twitter_tweets" (
  "id" SERIAL PRIMARY KEY,
  "authorId" INT NOT NULL,
  "realUser" VARCHAR(50) DEFAULT NULL,
  "message" VARCHAR(256) NOT NULL,
  "image" VARCHAR(255) DEFAULT '',
  "time" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "likes" INT NOT NULL DEFAULT 0
);

INSERT INTO "twitter_tweets" VALUES (10714, 3524, 'steam:11000010a33c8db', 'asd', '', '2024-01-17 06:37:24', 0);

-- ----------------------------
-- Table structure for user_car_keys
-- ----------------------------
DROP TABLE IF EXISTS "user_car_keys" CASCADE;
CREATE TABLE "user_car_keys" (
  "identifier" VARCHAR(50) NOT NULL,
  "plate" VARCHAR(12) NOT NULL,
  PRIMARY KEY ("identifier", "plate")
);

-- ----------------------------
-- Table structure for user_daily_reward
-- ----------------------------
DROP TABLE IF EXISTS "user_daily_reward" CASCADE;
CREATE TABLE "user_daily_reward" (
  "identifier" VARCHAR(30) NOT NULL,
  "received_date" DATE NOT NULL,
  PRIMARY KEY ("identifier", "received_date")
);

-- ----------------------------
-- Table structure for user_licenses
-- ----------------------------
DROP TABLE IF EXISTS "user_licenses" CASCADE;
CREATE TABLE "user_licenses" (
  "id" SERIAL PRIMARY KEY,
  "type" VARCHAR(60) NOT NULL,
  "owner" VARCHAR(60) NOT NULL
);

-- ----------------------------
-- Table structure for user_lottery
-- ----------------------------
DROP TABLE IF EXISTS "user_lottery" CASCADE;
CREATE TABLE "user_lottery" (
  "identifier" VARCHAR(50) NOT NULL,
  "powerball" VARCHAR(6) NOT NULL DEFAULT '',
  "count" SMALLINT NOT NULL DEFAULT 1,
  "lottery_date" DATE NOT NULL,
  PRIMARY KEY ("powerball", "lottery_date")
);

-- ----------------------------
-- Table structure for user_skin
-- ----------------------------
DROP TABLE IF EXISTS "user_skin" CASCADE;
CREATE TABLE "user_skin" (
  "Id" SERIAL PRIMARY KEY,
  "identifier" VARCHAR(22) DEFAULT NULL,
  "skin" VARCHAR(255) DEFAULT NULL
);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "users" CASCADE;
CREATE TABLE "users" (
  "id" SERIAL,
  "identifier" VARCHAR(50) NOT NULL,
  "accounts" TEXT DEFAULT NULL,
  "inventory" TEXT DEFAULT NULL,
  "skin" TEXT DEFAULT NULL,
  "job" VARCHAR(50) DEFAULT 'unemployed',
  "job_grade" INT DEFAULT 0,
  "group" VARCHAR(50) DEFAULT 'user',
  "loadout" TEXT DEFAULT NULL,
  "position" VARCHAR(255) DEFAULT '{\"x\":-309.65,\"y\":-998.31,\"z\":30.89,\"heading\":205.8}',
  "firstname