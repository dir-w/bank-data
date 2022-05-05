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


-- -------------------------------
-- Table structure for parameters
-- -------------------------------
DROP TABLE IF EXISTS `parameters`;
CREATE TABLE `parameters`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parameters table
-- ----------------------------
INSERT INTO `parameters` VALUES (UUID(), 'GENDER', 'Female', '0', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'GENDER', 'Male', '1', @USER_UID, @USER_UID, NOW(), NOW());

INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Islam', 'islam', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Catholic', 'catholic', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Protestant', 'protestant', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Hindu', 'hindu', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Buddhist', 'buddhist', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Confucianism', 'confucianism', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Other', 'other', @USER_UID, @USER_UID, NOW(), NOW());

INSERT INTO `parameters` VALUES (UUID(), 'MARITAL', 'Single', 'single', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'MARITAL', 'Married', 'married', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'MARITAL', 'Widow / Widower', 'widow-er', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'MARITAL', 'Divorce', 'divorce', @USER_UID, @USER_UID, NOW(), NOW());

INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'AED', 'uae-dirham', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'ARS', 'argentina-peso', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'CAD', 'canada-dollar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'CNY', 'china-yuan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'EUR', 'euro', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'GBP', 'british-pound-sterling', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'HKD', 'hong-kong-dollar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'IDR', 'indonesia-rupiah', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'INR', 'india-rupee', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'KRW', 'korea-won', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'KWD', 'kuwait-dinar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'MYR', 'malaysia-ringgit', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'RUB', 'russia-ruble', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'SAR', 'saudi-riyal', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'SGD', 'singapore-dollar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'THB', 'thailand-baht', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'TRY', 'turkey-lira', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'UAH', 'ukraine-hryvnia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'USD', 'us-dollar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'VND', 'vietnam-donk', @USER_UID, @USER_UID, NOW(), NOW());

INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Afghan', 'afghan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Albanian', 'albanian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Algerian', 'algerian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Argentine', 'argentine', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Australian', 'australian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Austrian', 'austrian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Bangladeshi', 'bangladeshi', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Belgian', 'belgian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Bolivian', 'bolivian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Brazilian', 'brazilian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Bulgarian', 'bulgarian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Cambodian', 'cambodian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Cameroonian', 'cameroonian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Canadian', 'canadian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Chilean', 'chilean', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Chinese', 'chinese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Colombian', 'colombian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Costa Rican', 'costa-rican', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Croatian', 'croatian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Cuban', 'cuban', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Czech', 'czech', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Danish', 'danish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Dominican', 'dominican', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Ecuadorian', 'ecuadorian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Egyptian', 'egyptian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Salvadorian', 'salvadorian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'English', 'english', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Estonian', 'estonian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Ethiopian', 'ethiopian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Fijian', 'fijian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Finnish', 'finnish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'French', 'french', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'German', 'german', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Ghanaian', 'ghanaian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Greek', 'greek', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Haitian', 'haitian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Honduran', 'honduran', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Hungarian', 'hungarian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Icelandic', 'icelandic', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Indian', 'indian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Indonesian', 'indonesian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Iranian', 'iranian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Iraqi', 'iraqi', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Irish', 'irish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Israeli', 'israeli', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Jamaican', 'jamaican', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Japanese', 'japanese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Jordanian', 'jordanian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Kenyan', 'kenyan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Kuwaiti', 'kuwaiti', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Lao', 'lao', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Latvian', 'latvian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Lebanese', 'lebanese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Libyan', 'libyan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Lithuanian', 'lithuanian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Malagasy', 'malagasy', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Malaysian', 'malaysian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Malian', 'malian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Maltese', 'maltese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Mexican', 'mexican', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Mongolian', 'mongolian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Moroccan', 'moroccan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Mozambican', 'mozambican', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Namibian', 'namibian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Nepalese', 'nepalese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Dutch', 'dutch', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'New Zealand', 'new-zealand', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Nicaraguan', 'nicaraguan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Nigerian', 'nigerian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Norwegian', 'norwegian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Pakistani', 'pakistani', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Panamanian', 'panamanian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Paraguayan', 'paraguayan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Peruvian', 'peruvian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Philippine', 'philippine', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Polish', 'polish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Portuguese', 'portuguese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Romanian', 'romanian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Russian', 'russian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Saudi', 'saudi', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Scottish', 'scottish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Senegalese', 'senegalese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Serbian', 'serbian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Singaporean', 'singaporean', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Slovak', 'slovak', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'South African', 'south-african', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Korean', 'korean', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Spanish', 'spanish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Sri Lankan', 'sri-lankan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Sudanese', 'sudanese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Swedish', 'swedish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Swiss', 'swiss', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Syrian', 'syrian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Taiwanese', 'taiwanese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Tajikistani', 'tajikistani', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Thai', 'thai', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Tongan', 'tongan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Tunisian', 'tunisian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Turkish', 'turkish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Ukrainian', 'ukrainian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Emirati', 'emirati', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'British', 'british', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'American', 'american', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Uruguayan', 'uruguayan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Venezuelan', 'venezuelan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Vietnamese', 'vietnamese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Welsh', 'welsh', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Zambian', 'zambian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Zimbabwean', 'zimbabwean', @USER_UID, @USER_UID, NOW(), NOW());


-- Enable foreign key check integrity
SET FOREIGN_KEY_CHECKS = 1;