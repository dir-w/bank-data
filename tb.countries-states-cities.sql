-- Setup Target Database
USE ###DATABASE_NAME###;

-- Setup CHARACTER SET
SET NAMES utf8mb4;

-- Disable foreign key check integrity
SET FOREIGN_KEY_CHECKS = 0;

-- Setup User ID
-- If you already have user table, get it from there
-- Example : 
-- -- SELECT @USER_UID := ID FROM ###DATABASE_NAME.TABLE_NAME###
SET @USER_UID = '05dc1eb4-783f-4492-90da-04f43f73a19d';


-- ------------------------------
-- Table structure for countries
-- ------------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;


-- ---------------------------------------------------------------------------
-- Table structure for states
-- country_id : Foreign Key for relational one to many from table countries
-- ---------------------------------------------------------------------------
DROP TABLE IF EXISTS `states`;
CREATE TABLE `states`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;


-- ----------------------------------------------------------------------
-- Table structure for cities
-- state_id : Foreign Key for relational one to many from table states
-- ----------------------------------------------------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;


-- --------------------------------------------------
-- Records of countries nested by states and cities
-- --------------------------------------------------
INSERT INTO `countries` VALUES (UUID(), 'Afghanistan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Albania', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Algeria', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Andorra', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Angola', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Argentina', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Armenia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Australia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Austria', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Azerbaijan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Bahrain', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Bangladesh', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Barbados', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Belarus', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Belgium', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Bolivia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Bosnia Herzegovina', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Brazil', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Brunei', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Bulgaria', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Cambodia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Cameroon', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Canada', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Chile', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'China', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Colombia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Costa Rica', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Croatia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Cuba', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Cyprus', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Czech Republic', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Cyprus', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Denmark', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Dominican Republic', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'East Timor', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ecuador', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Egypt', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'El Salvador', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Estonia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ethiopia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Fiji', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Finland', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'France', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Georgia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Germany', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ghana', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Greece', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Guatemala', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Honduras', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Hungary', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Iceland', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'India', @USER_UID, @USER_UID, NOW(), NOW());

-- Get Indonesia Country UID for ForeignID in States / Province Table.
SET @COUNTRY_UID = UUID();
INSERT INTO `countries` VALUES (@COUNTRY_UID, 'Indonesia', @USER_UID, @USER_UID, NOW(), NOW());

    -- -------------------------------
    -- Records of states in Indonesia
    -- -------------------------------
    -- Get Aceh States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Aceh', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Aceh
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Barat Daya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Besar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Jaya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Singkil', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Tamiang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Tenggara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bener Meriah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bireuen', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gayo Lues', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Nagan Raya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pidie', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pidie Jaya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Simeulue', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Banda Aceh', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Langsa', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Lhokseumawe', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Sabang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Subulussalam', @USER_UID, @USER_UID, NOW(), NOW());

    
    -- Get Bali States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Bali', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Bali
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Badung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bangli', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Buleleng', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gianyar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Jembrana', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Karangasem', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Klungkung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tabanan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Denpasar', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Banten States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Banten', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Banten
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lebak', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pandeglang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Serang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tangerang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Cilegon', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Serang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tangerang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tangerang Selatan', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Bengkulu States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Bengkulu', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Bengkulu
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bengkulu Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bengkulu Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bengkulu Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kaur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepahiang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lebong', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mukomuko', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Rejang Lebong', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Seluma', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bengkulu', @USER_UID, @USER_UID, NOW(), NOW());
        

    -- Get DI Yogyakarta States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'DI Yogyakarta', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Bengkulu
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bantul', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gunungkidul', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kulon Progo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sleman', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Yogyakarta', @USER_UID, @USER_UID, NOW(), NOW());

    
    -- Get DKI Jakarta States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'DKI Jakarta', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in DKI Jakarta
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Seribu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jakarta Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jakarta Pusat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jakarta Selatan', @USER_UID, @USER_UID, NOW(), NOW());        
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jakarta Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jakarta Utara', @USER_UID, @USER_UID, NOW(), NOW());

    -- Get Gorontalo States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Gorontalo', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Gorontalo
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Boalemo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bone Bolango', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gorontalo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gorontalo Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pohuwato', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Gorontalo', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Jambi States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Jambi', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Jambi
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Batanghari', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bungo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kerinci', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Merangin', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Muaro Jambi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sarolangun', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tanjung Jabung Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tanjung Jabung Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tebo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jambi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Sungai Penuh', @USER_UID, @USER_UID, NOW(), NOW());

    
    -- Get Jawa Barat States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Jawa Barat', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ---------------------------------
        -- Records of cities in Jawa Barat
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bogor', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sukabumi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Cianjur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bandung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Garut', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tasikmalaya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ciamis', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kuningan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Cirebon', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Majalengka', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sumedang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Indramayu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Subang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Purwakarta', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Karawang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bekasi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bandung Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pangandaran', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bogor', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Sukabumi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bandung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Cirebon', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bekasi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Depok', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Cimahi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tasikmalaya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Banjar', @USER_UID, @USER_UID, NOW(), NOW());

    -- Get Jawa Tengah States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Jawa Tengah', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ---------------------------------
        -- Records of cities in Jawa Tengah
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Banjarnegara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Banyumas', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Batang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Blora', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Boyolali', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Brebes', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Cilacap', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Demak', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Grobogan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Jepara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Karanganyar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kebumen', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kendal', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Klaten', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kudus', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Magelang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pati', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pekalongan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pemalang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Purbalingga', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Purworejo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Rembang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Semarang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sragen', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sukoharjo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tegal', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Temanggung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Wonogiri', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Wonosobo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Magelang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Pekalongan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Salatiga', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Semarang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Surakarta', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tegal', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Jawa Timur States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Jawa Timur', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ---------------------------------
        -- Records of cities in Jawa Timur
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bangkalan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Banyuwangi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Blitar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bojonegoro', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bondowoso', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gresik', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Jember', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Jombang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kediri', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lamongan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lumajang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Madiun', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Magetan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Malang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mojokerto', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Nganjuk', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ngawi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pacitan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pamekasan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pasuruan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ponorogo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Probolinggo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sampang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sidoarjo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Situbondo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sumenep', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Trenggalek', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tuban', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tulungagung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Batu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Blitar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Kediri', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Madiun', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Malang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Mojokerto', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Pasuruan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Probolinggo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Surabaya', @USER_UID, @USER_UID, NOW(), NOW());
    


    -- Get Kalimantan Barat States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kalimantan Barat', @USER_UID, @USER_UID, NOW(), NOW());    
        -- --------------------------------------
        -- Records of cities in Kalimantan Barat
        -- --------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bengkayang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kapuas Hulu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kayong Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ketapang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kubu Raya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Landak', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Melawi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mempawah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sambas', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sanggau', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sekadau', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sintang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Pontianak', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Singkawang', @USER_UID, @USER_UID, NOW(), NOW());
    

    -- Get Kalimantan Selatan States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kalimantan Selatan', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ----------------------------------------
        -- Records of cities in Kalimantan Selatan
        -- ----------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Balangan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Banjar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Barito Kuala', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Hulu Sungai Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Hulu Sungai Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Hulu Sungai Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kotabaru', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tabalong', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tanah Bumbu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tanah Laut', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tapin', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Banjarbaru', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Banjarmasin', @USER_UID, @USER_UID, NOW(), NOW());
    

    -- Get Kalimantan Tengah States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kalimantan Tengah', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ----------------------------------------
        -- Records of cities in Kalimantan Tengah
        -- ----------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Barito Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Barito Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Barito Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gunung Mas', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kapuas', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Katingan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kotawaringin Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kotawaringin Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lamandau', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Murung Raya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pulang Pisau', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sukamara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Seruyan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Palangka Raya', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Kalimantan Timur States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kalimantan Timur', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ----------------------------------------
        -- Records of cities in Kalimantan Timur
        -- ----------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Berau', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kutai Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kutai Kartanegara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kutai Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mahakam Ulu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Paser', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Penajam Paser Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Balikpapan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bontang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Samarinda', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Kalimantan Utara States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kalimantan Utara', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ----------------------------------------
        -- Records of cities in Kalimantan Utara
        -- ----------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bulungan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Malinau', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Nunukan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tana Tidung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tarakan', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Kepulauan Bangka Belitung States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kepulauan Bangka Belitung', @USER_UID, @USER_UID, NOW(), NOW());    
        -- -----------------------------------------------
        -- Records of cities in Kepulauan Bangka Belitung
        -- -----------------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bangka', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bangka Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bangka Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bangka Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Belitung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Belitung Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Pangkal Pinang', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Kepulauan Riau States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kepulauan Riau', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ------------------------------------
        -- Records of cities in Kepulauan Riau
        -- ------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bintan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Karimun', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Anambas', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lingga', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Natuna', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Batam', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tanjungpinang', @USER_UID, @USER_UID, NOW(), NOW());
    

    -- Get Lampung States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Lampung', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ------------------------------
        -- Records of cities in Lampung
        -- ------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lampung Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lampung Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lampung Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lampung Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lampung Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mesuji', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pesawaran', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pesisir Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pringsewu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tanggamus', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tulang Bawang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tulang Bawang Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Way Kanan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bandar Lampung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Metro', @USER_UID, @USER_UID, NOW(), NOW());
    
    
    -- Get Maluku States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Maluku', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ------------------------------
        -- Records of cities in Maluku
        -- ------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Buru', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Buru Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Aru', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Tanimbar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Maluku Barat Daya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Maluku Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Maluku Tenggara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Seram Bagian Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Seram Bagian Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Ambon', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tual', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Maluku Utara States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Maluku Utara', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ----------------------------------
        -- Records of cities in Maluku Utara
        -- ----------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Halmahera Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Halmahera Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Halmahera Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Halmahera Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Halmahera Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Sula', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pulau Morotai', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pulau Taliabu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Ternate', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tidore Kepulauan', @USER_UID, @USER_UID, NOW(), NOW());
    

    -- Get Nusa Tenggara Barat States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Nusa Tenggara Barat', @USER_UID, @USER_UID, NOW(), NOW());    
        -- -----------------------------------------
        -- Records of cities in Nusa Tenggara Barat
        -- -----------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bima', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Dompu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lombok Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lombok Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lombok Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lombok Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sumbawa', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sumbawa Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bima', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Mataram', @USER_UID, @USER_UID, NOW(), NOW());
    

    -- Get Nusa Tenggara Timur States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Nusa Tenggara Timur', @USER_UID, @USER_UID, NOW(), NOW());    
        -- -----------------------------------------
        -- Records of cities in Nusa Tenggara Timur
        -- -----------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Alor', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Belu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ende', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Flores Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kupang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lembata', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Malaka', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Manggarai', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Manggarai Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Manggarai Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Nagekeo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ngada', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Rote Ndao', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sabu Raijua', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sikka', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sumba Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sumba Barat Daya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sumba Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sumba Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Timor Tengah Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Timor Tengah Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Kupang', @USER_UID, @USER_UID, NOW(), NOW());
        

    -- Get Papua States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Papua', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ---------------------------
        -- Records of cities in Papua
        -- ---------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Asmat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Biak Numfor', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Boven Digoel', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Deiyai', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Dogiyai', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Intan Jaya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Jayapura', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Jayawijaya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Keerom', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Yapen', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lanny Jaya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mamberamo Raya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mamberamo Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mappi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Merauke', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mimika', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Nabire', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Nduga', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Paniai', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pegunungan Bintang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Puncak', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Puncak Jaya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sarmi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Supiori', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tolikara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Waropen', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Yahukimo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Yalimo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jayapura', @USER_UID, @USER_UID, NOW(), NOW());

    
    -- Get Papua Barat States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Papua Barat', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ---------------------------------
        -- Records of cities in Papua Barat
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Fakfak', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kaimana', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Manokwari', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Manokwari Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Maybrat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pegunungan Arfak', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Raja Ampat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sorong', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sorong Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tambrauw', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Teluk Bintuni', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Teluk Wondama', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Sorong', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Riau States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Riau', @USER_UID, @USER_UID, NOW(), NOW());    
        -- --------------------------
        -- Records of cities in Riau
        -- --------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bengkalis', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Indragiri Hilir', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Indragiri Hulu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kampar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Meranti', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kuantan Singingi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pelalawan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Rokan Hilir', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Rokan Hulu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Siak', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Dumai', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Pekanbaru', @USER_UID, @USER_UID, NOW(), NOW());
    

    -- Get Sulawesi Barat States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Sulawesi Barat', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ------------------------------------
        -- Records of cities in Sulawesi Barat
        -- ------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Majene', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mamasa', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mamuju', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mamuju Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pasangkayu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Polewali Mandar', @USER_UID, @USER_UID, NOW(), NOW());
    
    
    -- Get Sulawesi Selatan States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Sulawesi Selatan', @USER_UID, @USER_UID, NOW(), NOW());        
        -- --------------------------------------
        -- Records of cities in Sulawesi Selatan
        -- --------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bantaeng', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Barru', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bone', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bulukumba', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Enrekang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gowa', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Jeneponto', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Selayar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Luwu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Luwu Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Luwu Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Maros', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pangkajene dan Kepulauan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pinrang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sidenreng Rappang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sinjai', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Soppeng', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Takalar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tana Toraja', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Toraja Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Wajo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Makassar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Palopo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Parepare', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Sulawesi Tengah States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Sulawesi Tengah', @USER_UID, @USER_UID, NOW(), NOW());        
        -- --------------------------------------
        -- Records of cities in Sulawesi Tengah
        -- --------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Banggai', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Banggai Kepulauan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Banggai Laut', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Buol', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Donggala', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Morowali', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Morowali Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Parigi Moutong', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Poso', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sigi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tojo Una-Una', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tolitoli', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Palu', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Sulawesi Tenggara States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Sulawesi Tenggara', @USER_UID, @USER_UID, NOW(), NOW());        
        -- --------------------------------------
        -- Records of cities in Sulawesi Tenggara
        -- --------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bombana', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Buton', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Buton Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Buton Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Buton Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kolaka', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kolaka Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kolaka Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Konawe', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Konawe Kepulauan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Konawe Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Konawe Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Muna', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Muna Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Wakatobi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Baubau', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Kendari', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Sulawesi Utara States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Sulawesi Utara', @USER_UID, @USER_UID, NOW(), NOW());        
        -- --------------------------------------
        -- Records of cities in Sulawesi Utara
        -- --------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bolaang Mongondow', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bolaang Mongondow Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bolaang Mongondow Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bolaang Mongondow Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Sangihe', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Siau Tagulandang Biaro', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Talaud', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Minahasa', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Minahasa Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Minahasa Tenggara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Minahasa Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bitung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Kotamobagu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Manado', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tomohon', @USER_UID, @USER_UID, NOW(), NOW());
    

    -- Get Sumatera Barat States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Sumatera Barat', @USER_UID, @USER_UID, NOW(), NOW());        
        -- --------------------------------------
        -- Records of cities in Sumatera Barat
        -- --------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Agam', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Dharmasraya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Mentawai', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lima Puluh Kota', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Padang Pariaman', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pasaman', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pasaman Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pesisir Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sijunjung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Solok', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Solok Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tanah Datar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bukittinggi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Padang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Padang Panjang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Pariaman', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Payakumbuh', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Sawahlunto', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Solok', @USER_UID, @USER_UID, NOW(), NOW());
    
    
    -- Get Sumatera Selatan States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Sumatera Selatan', @USER_UID, @USER_UID, NOW(), NOW());        
        -- --------------------------------------
        -- Records of cities in Sumatera Selatan
        -- --------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Banyuasin', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Empat Lawang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lahat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Muara Enim', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Musi Banyuasin', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Musi Rawas', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Musi Rawas Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ogan Ilir', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ogan Komering Ilir', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ogan Komering Ulu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ogan Komering Ulu Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ogan Komering Ulu Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Penukal Abab Lematang Ilir', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Lubuklinggau', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Pagar Alam', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Palembang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Prabumulih', @USER_UID, @USER_UID, NOW(), NOW());
        
    
    -- Get Sumatera Utara States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Sumatera Utara', @USER_UID, @USER_UID, NOW(), NOW());        
        -- --------------------------------------
        -- Records of cities in Sumatera Utara
        -- --------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Asahan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Batu Bara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Dairi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Deli Serdang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Humbang Hasundutan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Karo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Labuhanbatu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Labuhanbatu Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Labuhanbatu Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Langkat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mandailing Natal', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Nias', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Nias Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Nias Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Nias Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Padang Lawas', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Padang Lawas Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pakpak Bharat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Samosir', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Serdang Bedagai', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Simalungun', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tapanuli Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tapanuli Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tapanuli Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Toba', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Binjai', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Gunungsitoli', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Medan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Padang Sidempuan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Pematangsiantar', @USER_UID, @USER_UID, NOW(), NOW());        
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Sibolga', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tanjungbalai', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tebing Tinggi', @USER_UID, @USER_UID, NOW(), NOW());


INSERT INTO `countries` VALUES (UUID(), 'Iran', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Iraq', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ireland {Republic}', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Israel', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Italy', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ivory Coast', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Jamaica', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Japan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Jordan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Kazakhstan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Kenya', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Korea North', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Korea South', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Kosovo', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Kuwait', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Laos', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Latvia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Lebanon', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Liberia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Libya', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Liechtenstein', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Lithuania', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Luxembourg', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Macedonia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Madagascar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Malaysia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Maldives', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Mali', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Malta', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Mauritania', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Mauritius', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Mexico', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Micronesia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Moldova', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Monaco', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Mongolia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Montenegro', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Morocco', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Mozambique', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Myanmar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Namibia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Nepal', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Netherlands', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'New Zealand', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Norway', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Oman', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Pakistan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Panama', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Papua New Guinea', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Paraguay', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Peru', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Philippines', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Poland', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Portugal', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Qatar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Romania', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Russian Federation', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Rwanda', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'San Marino', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Saudi Arabia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Senegal', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Serbia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Sierra Leone', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Singapore', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Slovakia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Slovenia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'South Africa', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Spain', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Sri Lanka', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Sudan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Suriname', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Sweden', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Switzerland', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Syria', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Taiwan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Tajikistan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Tanzania', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Thailand', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Trinidad & Tobago', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Tunisia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Turkey', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Turkmenistan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Uganda', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ukraine', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'United Arab Emirates', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ukraine', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'United Kingdom', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'United States', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Uruguay', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Uzbekistan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Vatican City', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Venezuela', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Vietnam', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Yemen', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Zambia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Zimbabwe', @USER_UID, @USER_UID, NOW(), NOW());

-- Enable foreign key check integrity
SET FOREIGN_KEY_CHECKS = 1;