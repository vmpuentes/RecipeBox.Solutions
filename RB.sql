-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'recipes'
--
-- ---

DROP TABLE IF EXISTS `recipes`;

CREATE TABLE `recipes` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  `Instructions` VARCHAR NULL DEFAULT NULL,
  `rating` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'ingredientes_recipes'
--
-- ---

DROP TABLE IF EXISTS `ingredientes_recipes`;

CREATE TABLE `ingredientes_recipes` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `recipe_id` INTEGER NULL DEFAULT NULL,
  `ingredient_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'ingredients'
--
-- ---

DROP TABLE IF EXISTS `ingredients`;

CREATE TABLE `ingredients` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'tags_recipes'
--
-- ---

DROP TABLE IF EXISTS `tags_recipes`;

CREATE TABLE `tags_recipes` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `tag_id` INTEGER NULL DEFAULT NULL,
  `recipe_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'tags'
--
-- ---

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `ingredientes_recipes` ADD FOREIGN KEY (recipe_id) REFERENCES `recipes` (`id`);
ALTER TABLE `ingredientes_recipes` ADD FOREIGN KEY (ingredient_id) REFERENCES `ingredients` (`id`);
ALTER TABLE `tags_recipes` ADD FOREIGN KEY (tag_id) REFERENCES `tags` (`id`);
ALTER TABLE `tags_recipes` ADD FOREIGN KEY (recipe_id) REFERENCES `recipes` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `recipes` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `ingredientes_recipes` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `ingredients` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tags_recipes` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tags` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `recipes` (`id`,`name`,`Instructions`,`rating`) VALUES
-- ('','','','');
-- INSERT INTO `ingredientes_recipes` (`id`,`recipe_id`,`ingredient_id`) VALUES
-- ('','','');
-- INSERT INTO `ingredients` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `tags_recipes` (`id`,`tag_id`,`recipe_id`) VALUES
-- ('','','');
-- INSERT INTO `tags` (`id`,`name`) VALUES
-- ('','');
