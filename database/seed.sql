DROP TABLE IF EXISTS `entries`, `installs`;

CREATE TABLE `entries` (
  `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `slug` VARCHAR(255) NOT NULL,
  `createdBy` VARCHAR(255) NOT NULL,
  `updatedDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE `installs` (
  `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `entryId` INTEGER UNSIGNED NOT NULL,
  CONSTRAINT `fk_installs_entryId` FOREIGN KEY (`entryId`) REFERENCES `entries` (`id`)
);

INSERT INTO `entries` (`slug`, `createdBy`) VALUES ('coldbox', 'ortus');
INSERT INTO `entries` (`slug`, `createdBy`) VALUES ('testbox', 'ortus');
INSERT INTO `entries` (`slug`, `createdBy`) VALUES ('qb', 'elpete');

INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'coldbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'coldbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'coldbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'coldbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'coldbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'coldbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'coldbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'coldbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'coldbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'coldbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'coldbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'coldbox';

INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'testbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'testbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'testbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'testbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'testbox';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'testbox';

INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'qb';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'qb';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'qb';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'qb';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'qb';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'qb';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'qb';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'qb';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'qb';
INSERT INTO `installs` (`entryId`) SELECT `id` FROM `entries` WHERE `slug` = 'qb';
