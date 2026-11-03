-- PostgreSQL Master Migration Script with JSONB & Native Types
BEGIN;

-- Table: addon_account
DROP TABLE IF EXISTS "addon_account" CASCADE;
CREATE TABLE "addon_account" (
    "name" TEXT,
    "label" TEXT,
    "shared" BIGINT
);

INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('bank_savings', 'BankSavings', 0);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('caution', 'caution', 0);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('property_black_money', 'Money Sale Property', 0);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('society_ambulance', 'Ambulance', 1);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('society_banker', 'Banker', 1);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('society_cardealer', 'Cardealer', 1);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('society_council', 'council', 1);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('society_foodpanda', 'Foodpanda', 1);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('society_mechanic', 'Mechanic', 1);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('society_police', 'Police', 1);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('society_police_black_money', 'Police Black Money', 1);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('society_realestateagent', 'Agent immobilier', 1);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('society_taxi', 'Taxi', 1);
INSERT INTO "addon_account" ("name", "label", "shared") VALUES ('vault_black_money', 'Money Vault', 0);

-- Table: addon_account_data
DROP TABLE IF EXISTS "addon_account_data" CASCADE;
CREATE TABLE "addon_account_data" (
    "id" BIGINT,
    "account_name" TEXT,
    "money" BIGINT,
    "owner" TEXT
);

INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (1, 'society_ambulance', 0, NULL);
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (2, 'society_banker', 0, NULL);
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (3, 'society_cardealer', 0, NULL);
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (4, 'society_foodpanda', 0, NULL);
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (5, 'society_mechanic', 0, NULL);
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (6, 'society_police', 1700, NULL);
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (7, 'society_police_black_money', 0, NULL);
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (8, 'society_realestateagent', 0, NULL);
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (9, 'society_taxi', 0, NULL);
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (26, 'society_council', 0, NULL);
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (27, 'bank_savings', 0, 'steam:11000015b8b3350');
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (28, 'property_black_money', 0, 'steam:11000015b8b3350');
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (29, 'caution', 0, 'steam:11000015b8b3350');
INSERT INTO "addon_account_data" ("id", "account_name", "money", "owner") VALUES (30, 'vault_black_money', 0, 'steam:11000015b8b3350');

-- Table: addon_inventory
DROP TABLE IF EXISTS "addon_inventory" CASCADE;
CREATE TABLE "addon_inventory" (
    "name" TEXT,
    "label" TEXT,
    "shared" BIGINT
);

INSERT INTO "addon_inventory" ("name", "label", "shared") VALUES ('housing', 'Housing', 0);
INSERT INTO "addon_inventory" ("name", "label", "shared") VALUES ('property', 'Propriété', 0);
INSERT INTO "addon_inventory" ("name", "label", "shared") VALUES ('society_ambulance', 'Ambulance', 1);
INSERT INTO "addon_inventory" ("name", "label", "shared") VALUES ('society_cardealer', 'Concesionnaire', 1);
INSERT INTO "addon_inventory" ("name", "label", "shared") VALUES ('society_council', 'council', 1);
INSERT INTO "addon_inventory" ("name", "label", "shared") VALUES ('society_foodpanda', 'Foodpanda', 1);
INSERT INTO "addon_inventory" ("name", "label", "shared") VALUES ('society_mechanic', 'Mechanic', 1);
INSERT INTO "addon_inventory" ("name", "label", "shared") VALUES ('society_police', 'Police', 1);
INSERT INTO "addon_inventory" ("name", "label", "shared") VALUES ('vault', 'Vault', 0);

-- Table: datastore
DROP TABLE IF EXISTS "datastore" CASCADE;
CREATE TABLE "datastore" (
    "name" TEXT,
    "label" TEXT,
    "shared" BIGINT
);

INSERT INTO "datastore" ("name", "label", "shared") VALUES ('society_ambulance', 'Ambulance', 1);
INSERT INTO "datastore" ("name", "label", "shared") VALUES ('society_police', 'Police', 1);
INSERT INTO "datastore" ("name", "label", "shared") VALUES ('society_taxi', 'Taxi', 1);
INSERT INTO "datastore" ("name", "label", "shared") VALUES ('user_ears', 'Ears', 0);
INSERT INTO "datastore" ("name", "label", "shared") VALUES ('user_glasses', 'Glasses', 0);
INSERT INTO "datastore" ("name", "label", "shared") VALUES ('user_helmet', 'Helmet', 0);
INSERT INTO "datastore" ("name", "label", "shared") VALUES ('user_mask', 'Mask', 0);
INSERT INTO "datastore" ("name", "label", "shared") VALUES ('vault', 'Vault', 0);
INSERT INTO "datastore" ("name", "label", "shared") VALUES ('housing', 'Housing', 0);
INSERT INTO "datastore" ("name", "label", "shared") VALUES ('society_mechanic    ', 'Mechanic', 1);

-- Table: datastore_data
DROP TABLE IF EXISTS "datastore_data" CASCADE;
CREATE TABLE "datastore_data" (
    "id" BIGINT,
    "name" TEXT,
    "owner" TEXT,
    "data" TEXT
);

INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (1, 'society_ambulance', NULL, '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (2, 'society_police', NULL, '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (3, 'society_taxi', NULL, '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (4, 'society_mechanic    ', NULL, '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (5, 'user_glasses', 'steam:11000010a33c8db', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (6, 'user_helmet', 'steam:11000010a33c8db', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (7, 'housing', 'steam:11000010a33c8db', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (8, 'user_mask', 'steam:11000010a33c8db', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (9, 'user_ears', 'steam:11000010a33c8db', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (10, 'vault', 'steam:11000010a33c8db', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (11, 'user_ears', 'steam:110000105d9c575', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (12, 'user_glasses', 'steam:110000105d9c575', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (13, 'user_helmet', 'steam:110000105d9c575', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (14, 'user_mask', 'steam:110000105d9c575', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (15, 'vault', 'steam:110000105d9c575', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (16, 'housing', 'steam:110000105d9c575', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (17, 'user_glasses', 'steam:1100001358fb54d', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (18, 'user_ears', 'steam:1100001358fb54d', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (19, 'user_helmet', 'steam:1100001358fb54d', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (20, 'vault', 'steam:1100001358fb54d', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (21, 'user_mask', 'steam:1100001358fb54d', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (22, 'housing', 'steam:1100001358fb54d', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (23, 'user_ears', 'steam:110000117301dd3', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (24, 'user_glasses', 'steam:110000117301dd3', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (25, 'user_helmet', 'steam:110000117301dd3', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (26, 'user_mask', 'steam:110000117301dd3', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (27, 'vault', 'steam:110000117301dd3', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (28, 'housing', 'steam:110000117301dd3', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (29, 'user_ears', 'steam:11000015b8b3350', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (30, 'user_helmet', 'steam:11000015b8b3350', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (31, 'vault', 'steam:11000015b8b3350', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (32, 'user_glasses', 'steam:11000015b8b3350', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (33, 'user_mask', 'steam:11000015b8b3350', '{}');
INSERT INTO "datastore_data" ("id", "name", "owner", "data") VALUES (34, 'housing', 'steam:11000015b8b3350', '{}');

-- Table: devil_fine
DROP TABLE IF EXISTS "devil_fine" CASCADE;
CREATE TABLE "devil_fine" (
    "id" BIGINT,
    "label" TEXT,
    "amount" BIGINT,
    "time" BIGINT,
    "category" TEXT
);

INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (1, 'หลบหนีการจับกุม', 2000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (2, 'หลบหนีนอกเมือง ขึ้นเขา ลงน้ำ X2', 2000, 10, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (3, 'หลบหนีหลังการจับกุม', 5000, 15, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (4, 'ซุกซ่อนของกลาง', 2000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (5, 'สมรู้ร่วมคิด', 2000, 0, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (6, 'กระทำเหตุซึ่งหน้า', 1000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (7, 'พื้นที่สุ่มเสี่ยง', 2000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (8, 'ครอบครองเงินผิดกฎหมาย X3', 3000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (9, 'ครอบครองแผงลิเทียม', 3000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (10, 'ครอบครองปลวก', 3000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (11, 'ครอบครองสายไฟ', 3000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (12, 'ครอบครองโคเคนอัดเม็ด', 3000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (13, 'โจรกรรมร้านค้า', 20000, 15, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (14, 'ครอบครองอุปกรณ์งัดแงะ', 2000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (15, 'ฉ้อโกงทรัพย์', 5000, 20, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (16, 'พยายามปล้น', 5000, 10, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (17, 'ปล้นชิงทรัพย์', 10000, 20, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (18, 'โจรกรรมยานพาหนะ', 5000, 10, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (19, 'โจรกรรมยานพาหนะหน่วยงาน', 10000, 20, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (20, 'แจ้งความเท็จ', 2000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (21, 'แอบอ้างหรือแต่งตัวเรียนแบบเจ้าหน้าที่', 10000, 15, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (22, 'ปิดบังใบหน้า', 1000, 5, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (23, 'อนาจารและสร้างความวุ่นวาย', 2000, 10, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (24, 'แหกคุก ช่วยเหลือการแหกคุก', 20000, 30, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (25, 'โพสต์เกี่ยวกับสิ่งผิดกฎหมาย', 2000, 10, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (26, 'โพสต์เกี่ยวกับการดูหมิ่นผู้อื่น', 2000, 10, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (27, 'ประกันตัว', 1000, -1, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (28, 'เบิกรถที่ถูกยึด', 2000, 0, 'คดีทั่วไป');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (29, 'กักขังหน่วงเหนี่ยวประชาชน', 10000, 20, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (30, 'กักขังหน่วงเหนี่ยวหน่วยงาน', 30000, 60, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (31, 'ข่มขู่ประชาชน', 5000, 5, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (32, 'ข่มขู่เจ้าหน้าที่', 10000, 10, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (33, 'ขัดขวางการทำงานของเจ้าหน้าที่', 5000, 5, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (34, 'หมิ่นประมาทเจ้าหน้าที่', 10000, 10, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (35, 'ติดสินบนเจ้าพนักงาน', 5000, 5, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (36, 'ก่อกวนในสถานที่ราชการ', 5000, 10, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (37, 'บุกรุกสถานที่ราชการ', 5000, 10, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (38, 'ชิงตัวผู้ต้องหา', 10000, 15, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (39, 'ทำร้ายร่างกายเจ้าหน้าที่จนถึงแก่ชีวิต', 20000, 30, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (40, 'พยายามทำร้ายร่างกายเจ้าหน้าที่', 10000, 15, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (41, 'ทำร้ายร่างกายผู้อื่นไม่ถึงแก่ชีวิต', 10000, 10, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (42, 'ทำร้ายร่างกายผู้อื่นถึงแก่ชีวิต', 20000, 20, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (43, 'ทะเลาะวิวาท', 3000, 5, 'คดีแดง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (44, 'เคลื่อนย้ายและอำพรางศพ', 30000, 30, 'คดีร้ายแรง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (45, 'เคลื่อนย้ายและอำพรางศพจนถึงแก่ชีวิต', 50000, 60, 'คดีร้ายแรง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (46, 'อำพรางศพ', 10000, 10, 'คดีร้ายแรง');
INSERT INTO "devil_fine" ("id", "label", "amount", "time", "category") VALUES (278, 'แก๊งค์ลดคดี', 0, 5, 'แก๊งค์');

-- Table: dpkeybinds
DROP TABLE IF EXISTS "dpkeybinds" CASCADE;
CREATE TABLE "dpkeybinds" (
    "id" TEXT,
    "keybind1" TEXT,
    "emote1" TEXT,
    "keybind2" TEXT,
    "emote2" TEXT,
    "keybind3" TEXT,
    "emote3" TEXT,
    "keybind4" TEXT,
    "emote4" TEXT,
    "keybind5" TEXT,
    "emote5" TEXT,
    "keybind6" TEXT,
    "emote6" TEXT
);

INSERT INTO "dpkeybinds" ("id", "keybind1", "emote1", "keybind2", "emote2", "keybind3", "emote3", "keybind4", "emote4", "keybind5", "emote5", "keybind6", "emote6") VALUES ('steam:11000010a33c8db', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO "dpkeybinds" ("id", "keybind1", "emote1", "keybind2", "emote2", "keybind3", "emote3", "keybind4", "emote4", "keybind5", "emote5", "keybind6", "emote6") VALUES ('steam:1100001358fb54d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO "dpkeybinds" ("id", "keybind1", "emote1", "keybind2", "emote2", "keybind3", "emote3", "keybind4", "emote4", "keybind5", "emote5", "keybind6", "emote6") VALUES ('steam:110000105d9c575', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO "dpkeybinds" ("id", "keybind1", "emote1", "keybind2", "emote2", "keybind3", "emote3", "keybind4", "emote4", "keybind5", "emote5", "keybind6", "emote6") VALUES ('steam:11000015b8b3350', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- Table: fine_types
DROP TABLE IF EXISTS "fine_types" CASCADE;
CREATE TABLE "fine_types" (
    "id" BIGINT,
    "label" TEXT,
    "amount" BIGINT,
    "category" BIGINT
);

INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (1, 'Usage abusif du klaxon', 30, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (2, 'Franchir une ligne continue', 40, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (3, 'Circulation à contresens', 250, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (4, 'Demi-tour non autorisé', 250, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (5, 'Circulation hors-route', 170, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (6, 'Non-respect des distances de sécurité', 30, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (7, 'Arrêt dangereux / interdit', 150, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (8, 'Stationnement gênant / interdit', 70, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (9, 'Non respect  de la priorité à droite', 70, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (10, 'Non-respect à un véhicule prioritaire', 90, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (11, 'Non-respect d''un stop', 105, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (12, 'Non-respect d''un feu rouge', 130, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (13, 'Dépassement dangereux', 100, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (14, 'Véhicule non en état', 100, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (15, 'Conduite sans permis', 1500, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (16, 'Délit de fuite', 800, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (17, 'Excès de vitesse < 5 kmh', 90, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (18, 'Excès de vitesse 5-15 kmh', 120, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (19, 'Excès de vitesse 15-30 kmh', 180, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (20, 'Excès de vitesse > 30 kmh', 300, 0);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (21, 'Entrave de la circulation', 110, 1);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (22, 'Dégradation de la voie publique', 90, 1);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (23, 'Trouble à l''ordre publique', 90, 1);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (24, 'Entrave opération de police', 130, 1);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (25, 'Insulte envers / entre civils', 75, 1);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (26, 'Outrage à agent de police', 110, 1);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (27, 'Menace verbale ou intimidation envers civil', 90, 1);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (28, 'Menace verbale ou intimidation envers policier', 150, 1);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (29, 'Manifestation illégale', 250, 1);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (30, 'Tentative de corruption', 1500, 1);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (31, 'Arme blanche sortie en ville', 120, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (32, 'Arme léthale sortie en ville', 300, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (33, 'Port d''arme non autorisé (défaut de license)', 600, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (34, 'Port d''arme illégal', 700, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (35, 'Pris en flag lockpick', 300, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (36, 'Vol de voiture', 1800, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (37, 'Vente de drogue', 1500, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (38, 'Fabriquation de drogue', 1500, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (39, 'Possession de drogue', 650, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (40, 'Prise d''ôtage civil', 1500, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (41, 'Prise d''ôtage agent de l''état', 2000, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (42, 'Braquage particulier', 650, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (43, 'Braquage magasin', 650, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (44, 'Braquage de banque', 1500, 2);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (45, 'Tir sur civil', 2000, 3);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (46, 'Tir sur agent de l''état', 2500, 3);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (47, 'Tentative de meurtre sur civil', 3000, 3);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (48, 'Tentative de meurtre sur agent de l''état', 5000, 3);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (49, 'Meurtre sur civil', 10000, 3);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (50, 'Meurte sur agent de l''état', 30000, 3);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (51, 'Meurtre involontaire', 1800, 3);
INSERT INTO "fine_types" ("id", "label", "amount", "category") VALUES (52, 'Escroquerie à l''entreprise', 2000, 2);

-- Table: items
DROP TABLE IF EXISTS "items" CASCADE;
CREATE TABLE "items" (
    "name" TEXT,
    "label" TEXT,
    "limit" BIGINT,
    "weight" BIGINT,
    "rare" BIGINT,
    "can_remove" BIGINT
);

INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('Box_01', 'กล่องBOX_1', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('Box_02', 'กล่องBOX_2', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('Box_03', 'กล่องBOX_3', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('Magicseed', 'เมล็ดกัญชา', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('Phone', 'โทรศัพท์', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('SteelScrap', 'แร่เหล็ก', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('acabbage', 'กะหล่ำดิบ', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('adrr', 'ยาวิ่งไว', 20, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('aed', 'AED', 10, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('afk_coin', 'AFK Coin', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('antist2', 'ยาแก้เครียด', 20, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('armor', 'เกราะ', 20, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('bandage', 'ผ้าพันแผล', 20, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('bandage1', 'ยาปั้มHP', 20, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('bet_afk', 'เบ็ดตกปลา', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('boolean', 'ที่ดามขา', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('bread', 'ขนมปัง', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('c4_door', 'ถุงห่อศพ', 5, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('cardx2', 'บัตรคูณ2', 1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('cement', 'ปูน', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('cementwork', 'ที่ตัดถุงปูน', 1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('cherry', 'เชอร์รี่', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('clip', 'แม็กกระสุน', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('coco', 'ผลโกโก้', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('coin', 'เหรียญทำงาน', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('coin_kiminoto', 'เหรียญ', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('coke', 'โคเคน', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('coke_pooch', 'โคเคนแพ็ค', 25, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('contract', 'ใบโอนรถ', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('cookingoil', 'น้ำมันทำอาหาร', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('copperrod', 'แท่งทองแดง', 100, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('corn', 'อาหารหมา', 10, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('cubediamond', 'ก้อนเพรช', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('cut', 'กรรไกร', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('dmuncut', 'เพชรเจียระไน', 100, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('fail_kiminoto', 'เหรียญดวยซวย', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('fish_afk', 'ปลาคราฟ', 100, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('fixkit', 'ที่ซ่อมรถ', 10, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('freshcabbage', 'กะหล่ำปลีแพ็ค', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('fruitbroth', 'น้ำซุปผลไม้', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('gacha_01', 'Gacha 01', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('gacha_02', 'Gacha 02', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('gacha_03', 'Gacha 03', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('gacha_04', 'Gacha 04', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('gacha_05', 'Gacha 05', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('goldbar', 'แท่งทองคำ', 100, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('goldscrap', 'เศษทองคำ', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('grape', 'องุ่น', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('growup', 'น้ำยาเร่งโต', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('hifi', 'วิทยุ', 1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('marijuana', 'กัญชาแปรรูป', 25, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('meatpig', 'เนื้อหมู', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('medikit', 'ชุดปฐมพยาบาล', 20, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('melon', 'เมล่อน', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('meteorite', 'เศษหินเสียหาย', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('meteorite2', 'เศษอุกกาบาต', 120, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('moneystick', 'แท่งเงิน', 100, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('mushroom', 'เห็ด', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('non_afk', 'เหยื่อตกปลา', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('oil', 'น้ำมันดิบ', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('onion', 'หัวหอม', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('orange_a', 'ผลส้ม', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('orangesmoothie', 'น้ำส้ม', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('oxygen_mask', 'ถังดำน้ำ', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('pearlmilk', 'ชานม', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('ped_Dog', 'ลูกหมา', 10, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('pinto_beefpm', 'ชาบู', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('pinto_food', 'ปิ่นโต', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('pinto_meatpm', 'อาหารชุดใหญ่', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('pixcar', 'ที่ตัดเหล็ก', 1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('plywood', 'ไม้อัด', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('porkpackage', 'หมูสามชั้น', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('pumpkin', 'ฟักทอง', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('pumpkinPie', 'ฟักทองแพ็ค', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('punch9', 'หมัดสายฟ้า', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('radio', 'วอสื่อสาร', 1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('refinedoil', 'น้ำมันกลั่น', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('rice', 'ข้าว', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('ricepro', 'ข้าวสาร', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('scel', 'คีมตัดสายไฟ', 1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('scrapcopper', 'เศษทองแดง', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('scrapmoney', 'เศษเงิน', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('seller', 'บัตรขายยา', 1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('shell', 'หอย', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('sidedishes', 'เครื่องเคียง', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('skateboard', 'สเก็ตบอร์ด', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('stone', 'แร่ดิบ', 120, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('stone_p', 'หิน', 60, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('strawberry', 'สตรอเบอร์รี่', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('strawberrypro', 'น้ำสตรอเบอร์รี่', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('surgency', 'บัตรแต่งตัว', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('thinfabric', 'ผ้าขาวบาง', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('vault_key', 'กุญแจเขียว', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('vault_red', 'กุญแจแดง', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('water', 'น้ำ', -1, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('watermelon', 'แตงโม', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('watermelonpro', 'น้ำแตงโม', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('weed', 'กัญชา', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('whitecloth', 'เศษผ้า', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('wire', 'สายไฟ', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('wood', 'ไม้', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('wood_rag', 'เปลือกไม้', 50, 1, 0, 1);
INSERT INTO "items" ("name", "label", "limit", "weight", "rare", "can_remove") VALUES ('zap_oil', 'น้ำมันสน', 50, 1, 0, 1);

-- Table: job_grades
DROP TABLE IF EXISTS "job_grades" CASCADE;
CREATE TABLE "job_grades" (
    "id" BIGINT,
    "job_name" TEXT,
    "grade" BIGINT,
    "name" TEXT,
    "label" TEXT,
    "salary" BIGINT,
    "skin_male" TEXT,
    "skin_female" TEXT
);

INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (1, 'unemployed', 0, 'unemployed', 'ว่างงาน', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (6, 'ambulance', 0, 'ambulance', 'นักเรียนแพทย์', 150, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (7, 'ambulance', 1, 'doctor', 'แพทย์', 200, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (8, 'ambulance', 4, 'chief_doctor', 'รองผู้อำนวยการแพทย์', 350, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (9, 'ambulance', 5, 'boss', 'ผู้อำนวยการแพทย์', 400, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (10, 'police', 0, 'recruit', 'นักเรียนตำรวจ', 150, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (11, 'police', 1, 'officer', 'จ่า', 200, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (12, 'police', 2, 'officer', 'หมวด', 250, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (13, 'police', 3, 'sergeant', 'สารวัต', 300, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (14, 'police', 4, 'lieutenant', 'รองผบ', 350, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (15, 'mechanic', 0, 'recrue', 'นักเรียนช่าง', 100, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (16, 'mechanic', 1, 'novice', 'ช่าง', 150, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (17, 'mechanic', 2, 'experimente', 'ช่างชํานาญการ', 200, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (18, 'mechanic', 4, 'boss', 'หัวหน้าช่าง', 300, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (25, 'offpolice', 0, 'recruit', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (26, 'offpolice', 1, 'officer', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (27, 'offpolice', 2, 'officer', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (28, 'offpolice', 3, 'officer', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (29, 'offpolice', 4, 'sergeant', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (30, 'offambulance', 0, 'ambulance', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (31, 'offambulance', 4, 'chief_doctor', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (32, 'offambulance', 5, 'boss', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (34, 'offmechanic', 0, 'recrue', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (35, 'offmechanic', 1, 'novice', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (36, 'offmechanic', 2, 'experimente', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (37, 'offmechanic', 3, 'chief', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (38, 'offmechanic', 5, 'boss', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (75, 'police', 5, 'boss', 'ผบ', 400, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (81, 'offpolice', 5, 'sergeant', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (82, 'offpolice', 6, 'sergeant', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (83, 'offpolice', 7, 'lieutenant', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (85, 'offpolice', 8, 'lieutenant', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (86, 'offpolice', 10, 'boss', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (87, 'offpolice', 9, 'boss', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (88, 'mechanic', 3, 'chief', 'รองหัวหน้าช่าง', 250, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (89, 'offmechanic', 4, 'chief', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (90, 'ambulance', 2, 'doctor', 'แพทย์ชำนาญการณ์', 250, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (91, 'ambulance', 3, 'chief_doctor', 'หัวหน้าแพทย์', 300, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (92, 'offambulance', 1, 'doctor', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (93, 'offambulance', 2, 'doctor', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (94, 'offambulance', 3, 'chief_doctor', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (95, 'foodpanda', 0, 'recrue', 'พนักงานฝึกหัด', 100, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (96, 'foodpanda', 1, 'novice', 'พนักงานlineman', 150, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (97, 'foodpanda', 2, 'experimente', 'หัวหน้าlineman', 200, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (98, 'foodpanda', 3, 'boss', 'ผู้จัดการ lineman', 250, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (105, 'offfoodpanda', 0, 'recrue', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (106, 'offfoodpanda', 1, 'novice', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (107, 'offfoodpanda', 2, 'experimente', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (108, 'offfoodpanda', 3, 'uber', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (109, 'offambulance', 4, 'boss', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (110, 'offfoodpanda', 4, 'boss', 'ออกเวร', 0, '{}', '{}');
INSERT INTO "job_grades" ("id", "job_name", "grade", "name", "label", "salary", "skin_male", "skin_female") VALUES (111, 'council', 0, 'boss', 'สภาผู้แทนราษฎร', 0, '{}', '{}');

-- Table: jobs
DROP TABLE IF EXISTS "jobs" CASCADE;
CREATE TABLE "jobs" (
    "name" TEXT,
    "label" TEXT
);

INSERT INTO "jobs" ("name", "label") VALUES ('ambulance', 'Ambulance');
INSERT INTO "jobs" ("name", "label") VALUES ('council', 'สภาผู้แทนราษฎร');
INSERT INTO "jobs" ("name", "label") VALUES ('foodpanda', 'Foodpanda');
INSERT INTO "jobs" ("name", "label") VALUES ('mechanic', 'Mechanic');
INSERT INTO "jobs" ("name", "label") VALUES ('offambulance', 'Off-Duty');
INSERT INTO "jobs" ("name", "label") VALUES ('offfoodpanda', 'Off-Duty');
INSERT INTO "jobs" ("name", "label") VALUES ('offmechanic', 'Off-Duty');
INSERT INTO "jobs" ("name", "label") VALUES ('offpolice', 'Off-Duty');
INSERT INTO "jobs" ("name", "label") VALUES ('police', 'LSPD');
INSERT INTO "jobs" ("name", "label") VALUES ('unemployed', 'ว่างงาน');

-- Table: licenses
DROP TABLE IF EXISTS "licenses" CASCADE;
CREATE TABLE "licenses" (
    "type" TEXT,
    "label" TEXT
);

INSERT INTO "licenses" ("type", "label") VALUES ('boat', 'ใบอนุญาติขับขี่เรือ');
INSERT INTO "licenses" ("type", "label") VALUES ('coke_processing', 'ใบอนุญาติผลิตโคเคน');
INSERT INTO "licenses" ("type", "label") VALUES ('dig_processing', 'dig Processing License');
INSERT INTO "licenses" ("type", "label") VALUES ('dmv', 'กฎหมายจราจร');
INSERT INTO "licenses" ("type", "label") VALUES ('drive', 'ใบอนุญาติขับขี่รถยนต์');
INSERT INTO "licenses" ("type", "label") VALUES ('drive_bike', 'ใบอนุญาติขับขี่รถจักรยานยนต์');
INSERT INTO "licenses" ("type", "label") VALUES ('drive_truck', 'ใบอนุญาติขับขี่รถบรรทุก');
INSERT INTO "licenses" ("type", "label") VALUES ('meth_processing', 'Meth Processing License');
INSERT INTO "licenses" ("type", "label") VALUES ('weapon', 'ใบอนุญาติพกอาวุธ');
INSERT INTO "licenses" ("type", "label") VALUES ('weed_processing', 'ใบอนุญาติผลิตกัญชา');

-- Table: owned_boat
DROP TABLE IF EXISTS "owned_boat" CASCADE;
CREATE TABLE "owned_boat" (
    "owner" TEXT,
    "state" BIGINT,
    "plate" TEXT,
    "stored" BIGINT,
    "vehicle" TEXT,
    "type" TEXT,
    "vehiclename" TEXT,
    "health_engine" BIGINT,
    "health_body" BIGINT,
    "health_tank" BIGINT
);

INSERT INTO "owned_boat" ("owner", "state", "plate", "stored", "vehicle", "type", "vehiclename", "health_engine", "health_body", "health_tank") VALUES ('steam:11000010a33c8db', 0, 'LNT 925', 1, '{"modFrame":-1,"modTrunk":-1,"modHydrolic":-1,"color2":73,"color2Type":0,"modSpeakers":-1,"modFender":-1,"modDial":-1,"modXenon":255,"engineHealth":1000.0,"modOrnaments":-1,"modGrille":-1,"modHorns":-1,"modEngine":-1,"modSmokeEnabled":false,"color1":1,"modTank":-1,"modEngineBlock":-1,"pearlescentColor":5,"modExhaust":-1,"modTrimA":-1,"modSeats":-1,"plate":"LNT 925","modSuspension":-1,"color1Type":0,"windowTint":-1,"modRightFender":-1,"modPlateHolder":-1,"modSideSkirt":-1,"color2Custom":[14,49,109],"modRearBumper":-1,"modHood":-1,"modBrakes":-1,"modTrimB":-1,"modFrontWheels":-1,"modSteeringWheel":-1,"modTurbo":0,"modSpoilers":-1,"modRoof":-1,"plateIndex":4,"tyreSmokeColor":[255,255,255],"modFrontBumper":-1,"modTransmission":-1,"modShifterLeavers":-1,"bodyHealth":1000.0,"wheelColor":156,"modDashboard":-1,"color1Custom":[15,15,15],"wheels":0,"dirtLevel":0.0,"modAPlate":-1,"modVanityPlate":-1,"extras":[],"modArmor":-1,"neonColor":[255,0,255],"modLivery":-1,"modStruts":-1,"fuelLevel":32.3,"modAirFilter":-1,"modWindows":-1,"modBackWheels":-1,"modAerials":-1,"neonEnabled":[false,false,false,false],"modArchCover":-1,"livery":-1,"model":-1030275036,"modDoorSpeaker":-1}', 'boat', 'voiture', 1000, 1000, 1000);
INSERT INTO "owned_boat" ("owner", "state", "plate", "stored", "vehicle", "type", "vehiclename", "health_engine", "health_body", "health_tank") VALUES ('steam:11000010a33c8db', 0, 'PJC 171', 1, '{"modFrame":-1,"modTrunk":-1,"modHydrolic":-1,"color2":4,"color2Type":0,"modSpeakers":-1,"modFender":-1,"modDial":-1,"modXenon":255,"engineHealth":1000.0,"modOrnaments":-1,"modGrille":-1,"modHorns":-1,"modEngine":-1,"modSmokeEnabled":false,"color1":0,"modTank":-1,"modEngineBlock":-1,"pearlescentColor":3,"modExhaust":-1,"modTrimA":-1,"modSeats":-1,"plate":"PJC 171","modSuspension":-1,"color1Type":0,"windowTint":-1,"modRightFender":-1,"modPlateHolder":-1,"modSideSkirt":-1,"color2Custom":[90,94,102],"modRearBumper":-1,"modHood":-1,"modBrakes":-1,"modTrimB":-1,"modFrontWheels":-1,"modSteeringWheel":-1,"modTurbo":0,"modSpoilers":-1,"modRoof":-1,"plateIndex":4,"tyreSmokeColor":[255,255,255],"modFrontBumper":-1,"modTransmission":-1,"modShifterLeavers":-1,"bodyHealth":1000.0,"wheelColor":156,"modDashboard":-1,"color1Custom":[8,8,8],"wheels":0,"dirtLevel":0.0,"modAPlate":-1,"modVanityPlate":-1,"extras":[],"modArmor":-1,"neonColor":[255,0,255],"modLivery":-1,"modStruts":-1,"fuelLevel":50.7,"modAirFilter":-1,"modWindows":-1,"modBackWheels":-1,"modAerials":-1,"neonEnabled":[false,false,false,false],"modArchCover":-1,"livery":-1,"model":861409633,"modDoorSpeaker":-1}', 'boat', 'voiture', 1000, 1000, 1000);

-- Table: owned_vehicles
DROP TABLE IF EXISTS "owned_vehicles" CASCADE;
CREATE TABLE "owned_vehicles" (
    "owner" TEXT,
    "plate" TEXT,
    "vehicle" TEXT,
    "type" TEXT,
    "job" TEXT,
    "stored" BIGINT,
    "health_vehicles" TEXT,
    "police" BIGINT,
    "police_by" TEXT,
    "time" TEXT
);

INSERT INTO "owned_vehicles" ("owner", "plate", "vehicle", "type", "job", "stored", "health_vehicles", "police", "police_by", "time") VALUES ('steam:11000010a33c8db', 'BRX 298', '{"modOrnaments":-1,"extras":{"1":1},"modFrontBumper":-1,"color2":0,"modSmokeEnabled":false,"tyreSmokeColor":[255,255,255],"modSteeringWheel":-1,"modShifterLeavers":-1,"modTurbo":0,"bodyHealth":868.9,"modRearBumper":-1,"modTrunk":-1,"neonColor":[255,0,255],"modLivery":-1,"plate":"BRX 298","modArchCover":-1,"modTrimA":-1,"modEngineBlock":-1,"wheelColor":156,"neonEnabled":[false,false,false,false],"modSeats":-1,"modSideSkirt":-1,"wheels":5,"modStruts":-1,"modHydrolic":-1,"modHorns":-1,"modWindows":-1,"color2Custom":[8,8,8],"modSpeakers":-1,"modSpoilers":-1,"modAerials":-1,"modFrame":-1,"modSuspension":-1,"modExhaust":-1,"modDashboard":-1,"modAirFilter":-1,"modTrimB":-1,"modRightFender":-1,"color1":0,"modGrille":-1,"modRoof":-1,"modDial":-1,"engineHealth":183.8,"color2Type":0,"windowTint":-1,"modTransmission":-1,"modArmor":-1,"modXenon":255,"modFrontWheels":-1,"color1Type":0,"pearlescentColor":18,"modBrakes":-1,"color1Custom":[153,153,153],"livery":-1,"modEngine":-1,"modVanityPlate":-1,"fuelLevel":48.4,"dirtLevel":8.5,"modTank":-1,"modBackWheels":-1,"modAPlate":-1,"modHood":-1,"modDoorSpeaker":-1,"model":-2098954619,"modFender":-1,"plateIndex":0,"modPlateHolder":-1}', 'car', '', 0, '{"health_body":868.9388427734375,"doors":[false,false,false,false,false,false],"fuel":48.37385559082031,"health_engine":182.9908447265625,"tyres":[false,false,false,false,false,false,false]}', 0, NULL, NULL);
INSERT INTO "owned_vehicles" ("owner", "plate", "vehicle", "type", "job", "stored", "health_vehicles", "police", "police_by", "time") VALUES ('steam:11000010a33c8db', 'SLB 360', '{"modRightFender":-1,"modDashboard":-1,"modSpeakers":-1,"bodyHealth":876.3,"fuelLevel":62.4,"model":-2098954619,"wheels":5,"modSmokeEnabled":false,"neonColor":[255,0,255],"modSideSkirt":-1,"wheelColor":156,"modPlateHolder":-1,"modXenon":255,"modRoof":-1,"modBrakes":-1,"modTurbo":0,"modRearBumper":-1,"windowTint":-1,"modSuspension":-1,"modSeats":-1,"modVanityPlate":-1,"modWindows":-1,"color1Type":0,"neonEnabled":[false,false,false,false],"modStruts":-1,"modTrimB":-1,"color2":0,"color2Custom":[8,8,8],"dirtLevel":3.1,"modLivery":-1,"livery":-1,"engineHealth":364.8,"modGrille":-1,"modOrnaments":-1,"modHydrolic":-1,"extras":{"1":1},"modEngineBlock":-1,"plateIndex":0,"modHorns":-1,"modArchCover":-1,"modFrontWheels":-1,"color1Custom":[8,8,8],"modTrimA":-1,"modTransmission":-1,"modArmor":-1,"modDial":-1,"modTrunk":-1,"modFrontBumper":-1,"modAirFilter":-1,"modTank":-1,"modExhaust":-1,"modAerials":-1,"modAPlate":-1,"color2Type":0,"modEngine":-1,"modSteeringWheel":-1,"modSpoilers":-1,"modFender":-1,"modBackWheels":-1,"pearlescentColor":92,"modDoorSpeaker":-1,"tyreSmokeColor":[255,255,255],"modFrame":-1,"modShifterLeavers":-1,"modHood":-1,"plate":"SLB 360","color1":0}', 'car', '', 0, '{"doors":[1,false,false,false,1,false],"health_engine":364.78228759765627,"health_body":876.3330078125,"fuel":62.36199188232422,"tyres":[false,false,false,false,false,false,false]}', 0, NULL, NULL);

-- Table: phone_messages
DROP TABLE IF EXISTS "phone_messages" CASCADE;
CREATE TABLE "phone_messages" (
    "id" BIGINT,
    "transmitter" TEXT,
    "receiver" TEXT,
    "message" TEXT,
    "time" TEXT,
    "isRead" BIGINT,
    "owner" BIGINT
);

INSERT INTO "phone_messages" ("id", "transmitter", "receiver", "message", "time", "isRead", "owner") VALUES (18, '4972889', '4972889', '        มีคนซื้อไอเทม แม็กกระสุน จำนวน 1 เงินที่ได้ $1
    ', '2024-01-10 00:35:51', 0, 0);

-- Table: properties
DROP TABLE IF EXISTS "properties" CASCADE;
CREATE TABLE "properties" (
    "id" BIGINT,
    "name" TEXT,
    "label" TEXT,
    "entering" TEXT,
    "exit" TEXT,
    "inside" TEXT,
    "outside" TEXT,
    "ipls" TEXT,
    "gateway" TEXT,
    "is_single" BIGINT,
    "is_room" BIGINT,
    "is_gateway" BIGINT,
    "room_menu" TEXT,
    "price" BIGINT
);

INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (1, 'WhispymoundDrive', '2677 Whispymound Drive', '{"y":564.89,"z":182.959,"x":119.384}', '{"x":117.347,"y":559.506,"z":183.304}', '{"y":557.032,"z":183.301,"x":118.037}', '{"y":567.798,"z":182.131,"x":119.249}', '[]', NULL, 1, 1, 0, '{"x":118.748,"y":566.573,"z":175.697}', 1500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{"x":372.796,"y":428.327,"z":144.685}', '{"x":373.548,"y":422.982,"z":144.907},', '{"y":420.075,"z":145.904,"x":372.161}', '{"x":372.454,"y":432.886,"z":143.443}', '[]', NULL, 1, 1, 0, '{"x":377.349,"y":429.422,"z":137.3}', 1500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{"y":-379.165,"z":37.961,"x":-936.363}', '{"y":-365.476,"z":113.274,"x":-913.097}', '{"y":-367.637,"z":113.274,"x":-918.022}', '{"y":-382.023,"z":37.961,"x":-943.626}', '[]', NULL, 1, 1, 0, '{"x":-927.554,"y":-377.744,"z":112.674}', 1700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{"y":440.8,"z":146.702,"x":346.964}', '{"y":437.456,"z":148.394,"x":341.683}', '{"y":435.626,"z":148.394,"x":339.595}', '{"x":350.535,"y":443.329,"z":145.764}', '[]', NULL, 1, 1, 0, '{"x":337.726,"y":436.985,"z":140.77}', 1500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (5, 'WildOatsDrive', '3655 Wild Oats Drive', '{"y":502.696,"z":136.421,"x":-176.003}', '{"y":497.817,"z":136.653,"x":-174.349}', '{"y":495.069,"z":136.666,"x":-173.331}', '{"y":506.412,"z":135.0664,"x":-177.927}', '[]', NULL, 1, 1, 0, '{"x":-174.725,"y":493.095,"z":129.043}', 1500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{"y":596.58,"z":142.641,"x":-686.554}', '{"y":591.988,"z":144.392,"x":-681.728}', '{"y":590.608,"z":144.392,"x":-680.124}', '{"y":599.019,"z":142.059,"x":-689.492}', '[]', NULL, 1, 1, 0, '{"x":-680.46,"y":588.6,"z":136.769}', 1500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (7, 'LowEndApartment', 'Appartement de base', '{"y":-1078.735,"z":28.4031,"x":292.528}', '{"y":-1007.152,"z":-102.002,"x":265.845}', '{"y":-1002.802,"z":-100.008,"x":265.307}', '{"y":-1078.669,"z":28.401,"x":296.738}', '[]', NULL, 1, 1, 0, '{"x":265.916,"y":-999.38,"z":-100.008}', 562500);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{"y":454.955,"z":96.462,"x":-1294.433}', '{"x":-1289.917,"y":449.541,"z":96.902}', '{"y":446.322,"z":96.899,"x":-1289.642}', '{"y":455.453,"z":96.517,"x":-1298.851}', '[]', NULL, 1, 1, 0, '{"x":-1287.306,"y":455.901,"z":89.294}', 1500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{"x":-853.346,"y":696.678,"z":147.782}', '{"y":690.875,"z":151.86,"x":-859.961}', '{"y":688.361,"z":151.857,"x":-859.395}', '{"y":701.628,"z":147.773,"x":-855.007}', '[]', NULL, 1, 1, 0, '{"x":-858.543,"y":697.514,"z":144.253}', 1500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{"y":620.494,"z":141.588,"x":-752.82}', '{"y":618.62,"z":143.153,"x":-759.317}', '{"y":617.629,"z":143.153,"x":-760.789}', '{"y":621.281,"z":141.254,"x":-750.919}', '[]', NULL, 1, 1, 0, '{"x":-762.504,"y":618.992,"z":135.53}', 1500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{"y":37.025,"z":42.58,"x":-618.299}', '{"y":58.898,"z":97.2,"x":-603.301}', '{"y":58.941,"z":97.2,"x":-608.741}', '{"y":30.603,"z":42.524,"x":-620.017}', '[]', NULL, 1, 1, 0, '{"x":-622.173,"y":54.585,"z":96.599}', 1700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (12, 'MiltonDrive', 'Milton Drive', '{"x":-775.17,"y":312.01,"z":84.658}', NULL, NULL, '{"x":-775.346,"y":306.776,"z":84.7}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_01_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.661,"y":327.672,"z":210.396}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_01_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.735,"y":326.757,"z":186.313}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_01_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.386,"y":330.782,"z":195.08}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_02_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.615,"y":327.878,"z":210.396}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_02_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.297,"y":327.092,"z":186.313}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_02_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.303,"y":330.932,"z":195.085}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_03_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.885,"y":327.641,"z":210.396}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_03_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.607,"y":327.344,"z":186.313}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_03_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.525,"y":330.851,"z":195.085}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_04_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.527,"y":327.89,"z":210.396}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_04_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.642,"y":326.497,"z":186.313}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_04_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.503,"y":331.318,"z":195.085}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_05_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.289,"y":328.086,"z":210.396}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_05_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.692,"y":326.762,"z":186.313}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_05_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.094,"y":330.976,"z":195.085}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_06_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.263,"y":328.104,"z":210.396}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_06_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.655,"y":326.611,"z":186.313}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_06_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.3,"y":331.414,"z":195.085}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_07_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.956,"y":328.257,"z":210.396}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_07_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.545,"y":326.659,"z":186.313}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_07_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.087,"y":331.429,"z":195.123}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_08_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.187,"y":328.47,"z":210.396}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_08_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.658,"y":326.563,"z":186.313}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_08_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.287,"y":331.084,"z":195.086}', 1300000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (37, 'IntegrityWay', '4 Integrity Way', '{"x":-47.804,"y":-585.867,"z":36.956}', NULL, NULL, '{"x":-54.178,"y":-583.762,"z":35.798}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{"x":-31.409,"y":-594.927,"z":79.03}', '{"x":-26.098,"y":-596.909,"z":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-11.923,"y":-597.083,"z":78.43}', 1700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{"x":-17.702,"y":-588.524,"z":89.114}', '{"x":-16.21,"y":-582.569,"z":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-26.327,"y":-588.384,"z":89.123}', 1700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (40, 'DellPerroHeights', 'Dell Perro Heights', '{"x":-1447.06,"y":-538.28,"z":33.74}', NULL, NULL, '{"x":-1440.022,"y":-548.696,"z":33.74}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{"x":-1452.125,"y":-540.591,"z":73.044}', '{"x":-1455.435,"y":-535.79,"z":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1467.058,"y":-527.571,"z":72.443}', 1700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{"x":-1451.562,"y":-523.535,"z":55.928}', '{"x":-1456.02,"y":-519.209,"z":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1457.026,"y":-530.219,"z":55.937}', 1700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (43, 'MazeBankBuilding', 'Maze Bank Building', '{"x":-79.18,"y":-795.92,"z":43.35}', NULL, NULL, '{"x":-72.50,"y":-786.92,"z":43.40}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_01a"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_01b"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_01c"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (47, 'ExecutiveRich', 'Executive Rich', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_02b"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (48, 'ExecutiveCool', 'Executive Cool', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_02c"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_02a"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_03a"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_03b"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_03c"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (53, 'LomBank', 'Lom Bank', '{"x":-1581.36,"y":-558.23,"z":34.07}', NULL, NULL, '{"x":-1583.60,"y":-555.12,"z":34.07}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_01a"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_01b"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_01c"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_02b"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_02c"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_02a"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_03a"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_03b"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_03c"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (63, 'MazeBankWest', 'Maze Bank West', '{"x":-1379.58,"y":-499.63,"z":32.22}', NULL, NULL, '{"x":-1378.95,"y":-502.82,"z":32.22}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_01a"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_01b"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_01c"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_02b"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_02c"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_02a"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_03a"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_03b"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000);
INSERT INTO "properties" ("id", "name", "label", "entering", "exit", "inside", "outside", "ipls", "gateway", "is_single", "is_room", "is_gateway", "room_menu", "price") VALUES (72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_03c"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000);

-- Table: shops_new
DROP TABLE IF EXISTS "shops_new" CASCADE;
CREATE TABLE "shops_new" (
    "id" BIGINT,
    "item" TEXT,
    "price" BIGINT,
    "category" TEXT
);

INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (1, 'bread', 30, 'Normal');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (2, 'water', 30, 'Normal');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (23, 'hookah', 1000, 'Weed');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (26, 'lrod', 500, 'Fish');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (27, 'lbait', 5, 'Fish');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (29, 'plongee1', 100, 'Police');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (32, 'fixkit', 3200, 'Car');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (37, 'handcuffs', 95000, 'Hand');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (38, 'handcuffs_key', 3000, 'Hand');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (40, 'paper_bag', 5000, 'Hand');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (59, 'donut1', 40, 'Prison');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (60, 'donut2', 40, 'Prison');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (61, 'water', 40, 'Prison');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (64, 'phone', 2500, 'Normal');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (65, 'lrod', 500, 'SuperMarket');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (67, 'cardcabbage', 500, 'SuperMarket');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (68, 'lbait', 5, 'SuperMarket');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (70, 'milk_engine', 500, 'SuperMarket');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (71, 'drill', 500, 'SuperMarket');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (73, 'pixcar', 500, 'SuperMarket');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (74, 'hatchet_lj', 500, 'SuperMarket');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (75, 'basket', 500, 'SuperMarket');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (76, 'hammer', 500, 'SuperMarket');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (77, 'pumpkin_shovel', 500, 'SuperMarket');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (78, 'cigarett', 30, 'Club');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (79, 'lighter', 220, 'Club');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (80, 'beer', 110, 'Club');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (81, 'weed_pooch', 150, 'Club');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (82, 'bong', 900, 'Club');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (83, 'juice', 50, 'Normal');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (84, 'lrod2', 500, 'SuperMarket');
INSERT INTO "shops_new" ("id", "item", "price", "category") VALUES (88, 'gacha_04', 50000, 'Cleanmoney');

-- Table: twitter_accounts
DROP TABLE IF EXISTS "twitter_accounts" CASCADE;
CREATE TABLE "twitter_accounts" (
    "id" BIGINT,
    "identifier" TEXT,
    "username" TEXT,
    "password" TEXT,
    "avatar_url" TEXT,
    "avatar_urlSB" TEXT
);

INSERT INTO "twitter_accounts" ("id", "identifier", "username", "password", "avatar_url", "avatar_urlSB") VALUES (3524, 'steam:11000010a33c8db', 'Oatt Devil', '0', NULL, NULL);
INSERT INTO "twitter_accounts" ("id", "identifier", "username", "password", "avatar_url", "avatar_urlSB") VALUES (3525, 'steam:110000105d9c575', 'BlackNIght Caramel', '0', NULL, NULL);
INSERT INTO "twitter_accounts" ("id", "identifier", "username", "password", "avatar_url", "avatar_urlSB") VALUES (3526, 'steam:1100001358fb54d', 'Hexs GoMODE', '0', NULL, 'https://res.heraldm.com/content/image/2023/08/24/20230824000865_0.jpg');
INSERT INTO "twitter_accounts" ("id", "identifier", "username", "password", "avatar_url", "avatar_urlSB") VALUES (3527, 'steam:110000117301dd3', 'Satoru Minarushi', '0', NULL, NULL);
INSERT INTO "twitter_accounts" ("id", "identifier", "username", "password", "avatar_url", "avatar_urlSB") VALUES (3528, 'steam:11000015b8b3350', 'Skibidi Toilet', '0', NULL, NULL);

-- Table: twitter_tweets
DROP TABLE IF EXISTS "twitter_tweets" CASCADE;
CREATE TABLE "twitter_tweets" (
    "id" BIGINT,
    "authorId" BIGINT,
    "realUser" TEXT,
    "message" TEXT,
    "image" TEXT,
    "time" TEXT,
    "likes" BIGINT
);

INSERT INTO "twitter_tweets" ("id", "authorId", "realUser", "message", "image", "time", "likes") VALUES (10714, 3524, 'steam:11000010a33c8db', 'asd', '', '2024-01-17 06:37:24', 0);

-- Table: users
DROP TABLE IF EXISTS "users" CASCADE;
CREATE TABLE "users" (
    "id" BIGINT,
    "identifier" TEXT,
    "accounts" TEXT,
    "inventory" TEXT,
    "skin" TEXT,
    "job" TEXT,
    "job_grade" BIGINT,
    "group" TEXT,
    "loadout" TEXT,
    "position" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "dateofbirth" TEXT,
    "sex" TEXT,
    "height" TEXT,
    "is_dead" BIGINT,
    "status" TEXT,
    "tattoos" TEXT,
    "last_property" TEXT,
    "jail_time" BIGINT,
    "jail" BIGINT,
    "user_skin" TEXT,
    "phone_number" TEXT,
    "gift" BIGINT,
    "pregnant" BIGINT,
    "house" TEXT,
    "bought_furniture" TEXT
);

INSERT INTO "users" ("id", "identifier", "accounts", "inventory", "skin", "job", "job_grade", "group", "loadout", "position", "firstname", "lastname", "dateofbirth", "sex", "height", "is_dead", "status", "tattoos", "last_property", "jail_time", "jail", "user_skin", "phone_number", "gift", "pregnant", "house", "bought_furniture") VALUES (33, 'steam:11000010a33c8db', '{"money":121611,"bank":5000,"black_money":0}', '{"stone":3,"Box_01":1,"Phone":1,"bread":10,"water":10}', '{"sex":0,"pants_2":0,"decals_2":0,"makeup_3":0,"complexion_2":0,"bodyb_2":0,"chest_1":0,"beard_1":0,"eyebrows_4":0,"eyebrows_2":0,"blush_1":0,"hair_color_2":0,"beard_2":0,"chest_2":0,"eyebrows_3":0,"lipstick_1":0,"decals_1":0,"chest_3":0,"mask_2":0,"beard_4":0,"hair_color_1":0,"blush_3":0,"ears_1":-1,"watches_2":0,"bags_1":0,"torso_2":0,"eyebrows_1":0,"bproof_2":0,"lipstick_3":0,"lipstick_4":0,"blush_2":0,"bracelets_1":-1,"glasses_1":0,"moles_1":0,"skin":0,"shoes_2":0,"mask_1":0,"glasses_2":0,"beard_3":0,"moles_2":0,"makeup_2":0,"complexion_1":0,"watches_1":-1,"makeup_4":0,"age_2":0,"hair_1":0,"blemishes_2":0,"hair_2":0,"helmet_2":0,"sun_2":0,"bodyb_1":0,"helmet_1":-1,"bags_2":0,"tshirt_2":0,"tshirt_1":0,"face":0,"bracelets_2":0,"makeup_1":0,"lipstick_2":0,"arms":0,"eye_color":0,"chain_2":0,"shoes_1":0,"bproof_1":0,"chain_1":0,"pants_1":0,"arms_2":0,"blemishes_1":0,"sun_1":0,"torso_1":0,"ears_2":0,"age_1":0}', 'ambulance', 0, 'superadmin', '[]', '{"z":78.7509765625,"heading":221.1023712158203,"x":883.8461303710938,"y":-5.89450073242187}', 'Oatt', 'Oaqwe', '11-11-1111', 'm', '170', 0, '[{"name":"hunger","percent":79.03999999999999,"val":790400},{"name":"thirst","percent":79.03999999999999,"val":790400},{"name":"stress","percent":13.25,"val":132500},{"name":"drunk","percent":0.0,"val":0},{"name":"drunk","percent":0.0,"val":0}]', NULL, NULL, 0, 0, 'default', '4051878', 0, 0, NULL, NULL);
INSERT INTO "users" ("id", "identifier", "accounts", "inventory", "skin", "job", "job_grade", "group", "loadout", "position", "firstname", "lastname", "dateofbirth", "sex", "height", "is_dead", "status", "tattoos", "last_property", "jail_time", "jail", "user_skin", "phone_number", "gift", "pregnant", "house", "bought_furniture") VALUES (34, 'steam:11000015b8b3350', '{"black_money":0,"money":5000,"bank":5000}', '{"bread":10,"Phone":1,"water":10}', NULL, 'unemployed', 0, 'user', '[]', '{"heading":221.1023712158203,"x":-59.03735733032226,"y":-867.006591796875,"z":40.5692138671875}', 'Skibidi', 'Toilet', '17/09/1999', 'm', '188', 0, '[]', NULL, NULL, 0, 0, 'default', '4146240', 0, 0, NULL, NULL);

-- Table: vehicle_categories
DROP TABLE IF EXISTS "vehicle_categories" CASCADE;
CREATE TABLE "vehicle_categories" (
    "name" TEXT,
    "label" TEXT
);

INSERT INTO "vehicle_categories" ("name", "label") VALUES ('compacts', 'รถเริ่มต้น');
INSERT INTO "vehicle_categories" ("name", "label") VALUES ('coupes', 'รถเก๋ง');
INSERT INTO "vehicle_categories" ("name", "label") VALUES ('cycles', 'รถจักรยาน');
INSERT INTO "vehicle_categories" ("name", "label") VALUES ('motorcycles', 'รถจักรยานยนต์');
INSERT INTO "vehicle_categories" ("name", "label") VALUES ('muscle', 'มัสเซิลคาร์');
INSERT INTO "vehicle_categories" ("name", "label") VALUES ('offroad', 'ออฟโร้ด');
INSERT INTO "vehicle_categories" ("name", "label") VALUES ('sedans', 'รถเก๋ง2');
INSERT INTO "vehicle_categories" ("name", "label") VALUES ('sports', 'รถสปอร์ต');
INSERT INTO "vehicle_categories" ("name", "label") VALUES ('sportsclassics', 'รถสปอร์ต คลาสสิก');
INSERT INTO "vehicle_categories" ("name", "label") VALUES ('super', 'รถซุปเปอร์คาร์');
INSERT INTO "vehicle_categories" ("name", "label") VALUES ('suvs', 'รถเอสยูวี');
INSERT INTO "vehicle_categories" ("name", "label") VALUES ('vans', 'รถแวน');

-- Table: vehicles
DROP TABLE IF EXISTS "vehicles" CASCADE;
CREATE TABLE "vehicles" (
    "name" TEXT,
    "model" TEXT,
    "price" BIGINT,
    "category" TEXT,
    "stock" BIGINT
);

INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('akuma', 'akuma', 39000, 'motorcycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('avarus', 'avarus', 43000, 'motorcycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('baller3', 'baller3', 70000, 'suvs', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('bati', 'bati', 65000, 'motorcycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('bjxl', 'bjxl', 71000, 'suvs', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('bmx', 'bmx', 3000, 'cycles', 9);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('brawler', 'brawler', 103000, 'offroad', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('caracara2', 'caracara2', 109000, 'offroad', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('chimera', 'chimera', 42000, 'motorcycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('club', 'club', 11999, 'compacts', 49);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('cogcabrio', 'cogcabrio', 73000, 'coupes', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('comet5', 'comet5', 230000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('coquette4', 'coquette4', 320000, 'sports', 9);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('cruiser', 'cruiser', 3000, 'cycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('cyclone', 'cyclone', 640000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('daemon', 'daemon', 42000, 'motorcycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('daemon2', 'daemon2', 45000, 'motorcycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('diablous2', 'diablous2', 64000, 'motorcycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('drafter', 'drafter', 290000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('dubsta', 'dubsta', 70000, 'suvs', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('dubsta3', 'dubsta3', 106000, 'offroad', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('elegy', 'elegy', 290000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('enduro', 'enduro', 52000, 'motorcycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('entity2', 'entity2', 680000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('entityxf', 'entityxf', 620000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('faggio2', 'faggio2', 9000, 'motorcycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('faggio3', 'faggio3', 9000, 'motorcycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('fixter', 'fixter', 3000, 'cycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('flashgt', 'flashgt', 260000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('fmj', 'fmj', 650000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('freecrawler', 'freecrawler', 105000, 'offroad', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('furia', 'furia', 770000, 'super', 9);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('gauntlet4', 'gauntlet4', 99000, 'muscle', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('gb200', 'gb200', 210000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('gburrito', 'gburrito', 25000, 'vans', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('hustler', 'hustler', 82000, 'muscle', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('issi3', 'issi3', 12000, 'compacts', 50);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('italigtb', 'italigtb', 680000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('Jester', 'jester', 240000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('kamacho', 'kamacho', 104000, 'offroad', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('kanjo', 'kanjo', 16000, 'compacts', 50);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('Locust', 'locust', 223456, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('neon', 'neon', 270000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('nero2', 'nero2', 680000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('nightblade', 'nightblade', 59000, 'motorcycles', 9);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('nightshade', 'nightshade', 99000, 'muscle', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('osiris', 'osiris', 620000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('panto', 'panto', 12500, 'compacts', 50);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('pariah', 'pariah', 285000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('patriot', 'patriot', 69000, 'suvs', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('patriot2', 'patriot2', 72000, 'suvs', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('reaper', 'reaper', 600000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('rhapsody', 'rhapsody', 7000, 'compacts', 50);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('rumpo', 'rumpo', 22000, 'vans', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('rumpo3', 'rumpo3', 25000, 'vans', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('sabregt2', 'sabregt2', 89000, 'muscle', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('sanctus', 'sanctus', 62000, 'motorcycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('schlagen', 'schlagen', 240000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('scorcher', 'scorcher', 3000, 'cycles', 9);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('sentinel2', 'sentinel2', 75000, 'coupes', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('seven70', 'seven70', 295000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('Specter2', 'specter2', 290000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('sugoi', 'sugoi', 290000, 'sports', 9);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('surano', 'surano', 210000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('surfer', 'surfer', 21000, 'vans', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('t20', 't20', 640000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('tempesta', 'tempesta', 690000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('thrax', 'thrax', 790000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('toros', 'toros', 99000, 'suvs', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('tribike', 'tribike', 3500, 'cycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('tribike2', 'tribike2', 3500, 'cycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('tribike3', 'tribike3', 3500, 'cycles', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('vstr', 'vstr', 220000, 'sports', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('warrener', 'warrener', 75000, 'muscle', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('windsor2', 'windsor2', 75000, 'coupes', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('xa21', 'xa21', 690000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('yosemite2', 'yosemite2', 99000, 'muscle', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('youga', 'youga', 20000, 'vans', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('zentorno', 'zentorno', 720000, 'super', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('zion2', 'zion2', 73000, 'coupes', 10);
INSERT INTO "vehicles" ("name", "model", "price", "category", "stock") VALUES ('zombieb', 'zombieb', 56000, 'motorcycles', 10);

COMMIT;
