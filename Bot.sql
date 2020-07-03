CREATE DATABASE IF NOT EXISTS `Bot` DEFAULT CHARACTER SET utf8;
USE `Bot`;

DROP TABLE IF EXISTS `Admins`;
CREATE TABLE IF NOT EXISTS `Admins` (
  `id` BIGINT,
  `first_name` TEXT DEFAULT NULL,
  `last_name` TEXT DEFAULT NULL,
  `username` VARCHAR(32) UNIQUE DEFAULT NULL,
  `phone_number` TEXT DEFAULT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8;

DROP TABLE IF EXISTS `Chats`;
CREATE TABLE IF NOT EXISTS `Chats` (
  `id` BIGINT,
  `type` TEXT NOT NULL,
  `title` TEXT DEFAULT NULL,
  `username` VARCHAR(32) UNIQUE DEFAULT NULL,
  `first_name` TEXT DEFAULT NULL,
  `last_name` TEXT DEFAULT NULL,
  `invite_link` TEXT DEFAULT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8;

DROP TABLE IF EXISTS `Blacklist`;
CREATE TABLE IF NOT EXISTS `Blacklist` (
  `id` BIGINT,
  PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8;