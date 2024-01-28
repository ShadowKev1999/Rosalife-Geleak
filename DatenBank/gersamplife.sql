/*
Navicat MySQL Data Transfer

Source Server         : Home Server
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : gersamplife

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-03-24 20:15:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `accbans`
-- ----------------------------
DROP TABLE IF EXISTS `accbans`;
CREATE TABLE `accbans` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(24) NOT NULL,
  `Teammitglied` varchar(24) NOT NULL,
  `Bangrund` varchar(64) NOT NULL,
  `Uhrzeit` varchar(16) NOT NULL,
  `Datum` varchar(16) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accbans
-- ----------------------------

-- ----------------------------
-- Table structure for `accounts`
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(24) NOT NULL,
  `Passwort` varchar(64) NOT NULL,
  `Connected` int(11) NOT NULL DEFAULT '0',
  `ConnectGMX` int(11) NOT NULL DEFAULT '0',
  `Registerdatum` varchar(32) NOT NULL DEFAULT 'unbekannt',
  `IP-Adresse` varchar(32) NOT NULL DEFAULT 'unbekannt',
  `Email` varchar(34) NOT NULL DEFAULT 'unbekannt',
  `Alter` varchar(12) NOT NULL DEFAULT '18',
  `Geschlecht` int(11) NOT NULL DEFAULT '0',
  `Geburtsdatum` varchar(18) NOT NULL DEFAULT '01.01.1999',
  `Online` int(11) NOT NULL DEFAULT '0',
  `Admin` int(11) NOT NULL DEFAULT '0',
  `PositionX` double NOT NULL DEFAULT '0.000',
  `PositionY` double NOT NULL DEFAULT '0.000',
  `PositionZ` double NOT NULL DEFAULT '0.000',
  `PositionA` double NOT NULL DEFAULT '0.000',
  `Interior` int(11) NOT NULL DEFAULT '0',
  `Tot_X` double NOT NULL DEFAULT '0.000',
  `Tot_Y` double NOT NULL DEFAULT '0.000',
  `Tot_Z` double NOT NULL DEFAULT '0.000',
  `SkinID` int(11) NOT NULL DEFAULT '26',
  `KnastSkin` int(11) NOT NULL DEFAULT '62',
  `Stadt` int(11) NOT NULL DEFAULT '1',
  `Spawn` int(11) NOT NULL DEFAULT '0',
  `Fraktion` int(11) NOT NULL DEFAULT '0',
  `Team` int(11) NOT NULL DEFAULT '0',
  `Leader` int(11) NOT NULL DEFAULT '0',
  `Rank` int(11) NOT NULL DEFAULT '0',
  `lVerbrechen` varchar(84) NOT NULL DEFAULT '-',
  `Wanteds` int(11) NOT NULL DEFAULT '0',
  `Knastzeit` int(11) NOT NULL DEFAULT '0',
  `Zelle` int(11) NOT NULL DEFAULT '0',
  `EXP` int(11) NOT NULL DEFAULT '0',
  `EXPNeeded` int(11) NOT NULL DEFAULT '400',
  `Level` int(11) NOT NULL DEFAULT '1',
  `Verwarnungen` int(11) NOT NULL DEFAULT '0',
  `Mutezeit` int(11) NOT NULL DEFAULT '0',
  `Badword` int(11) NOT NULL DEFAULT '0',
  `Bargeld` int(11) NOT NULL DEFAULT '3000',
  `AntiCheatGMX` int(11) NOT NULL DEFAULT '0',
  `Perso` int(11) NOT NULL DEFAULT '0',
  `Mission` int(11) NOT NULL DEFAULT '0',
  `MissionComplete` int(11) NOT NULL DEFAULT '0',
  `BankPIN` int(11) NOT NULL DEFAULT '0',
  `Bankkonto` int(11) NOT NULL DEFAULT '0',
  `Tankstelle` int(11) NOT NULL DEFAULT '0',
  `Ammunation` int(11) NOT NULL DEFAULT '0',
  `Store` int(11) NOT NULL DEFAULT '0',
  `Haus` int(11) NOT NULL DEFAULT '0',
  `Gruppenhaus` int(11) NOT NULL DEFAULT '0',
  `Mieter` int(11) NOT NULL DEFAULT '0',
  `Nebenjob` int(11) NOT NULL DEFAULT '0',
  `QuitJob` int(11) NOT NULL DEFAULT '0',
  `sFirma` int(11) NOT NULL DEFAULT '0',
	`sFRank` int(11) NOT NULL DEFAULT '0',
	`sGFirma` int(11) NOT NULL DEFAULT '0',
  `sFLeader` int(11) NOT NULL DEFAULT '0',
  `Autoschein` int(11) NOT NULL DEFAULT '0',
  `Bootschein` int(11) NOT NULL DEFAULT '0',
  `Waffenschein` int(11) NOT NULL DEFAULT '0',
  `Flugschein` int(11) NOT NULL DEFAULT '0',
  `LKWschein` int(11) NOT NULL DEFAULT '0',
  `Motorradschein` int(11) NOT NULL DEFAULT '0',
  `Krankenhaus` int(11) NOT NULL DEFAULT '0',
  `Wiederbeleben` int(11) NOT NULL DEFAULT '0',
  `Tot_Int` int(11) NOT NULL DEFAULT '0',
  `Tot_World` int(11) NOT NULL DEFAULT '0',
  `Paket` int(11) NOT NULL DEFAULT '0',
  `PayDay` int(11) NOT NULL DEFAULT '0',
  `Stadtplan` int(11) NOT NULL DEFAULT '0',
  `Navi` int(11) NOT NULL DEFAULT '0',
  `Handy` int(11) NOT NULL DEFAULT '0',
  `Guthaben` int(11) NOT NULL DEFAULT '0',
  `Telefonbuch` int(11) NOT NULL DEFAULT '0',
  `Repairkit` int(11) NOT NULL DEFAULT '0',
  `PBKills` int(11) NOT NULL DEFAULT '0',
  `PBTode` int(11) NOT NULL DEFAULT '0',
  `MP3Player` int(11) NOT NULL DEFAULT '0',
  `VirtualWorld` int(11) NOT NULL DEFAULT '0',
  `Handschellen` int(11) NOT NULL DEFAULT '0',
  `Startbonus` int(11) NOT NULL DEFAULT '0',
  `Fraksperre` int(11) NOT NULL DEFAULT '0',
  `icpNachrichten` int(11) NOT NULL DEFAULT '1',
  `icpHitsound` int(11) NOT NULL DEFAULT '1',
  `icpOChat` int(11) NOT NULL DEFAULT '1',
  `icpCamera` int(11) NOT NULL DEFAULT '0',
  `stvoAutoschein` int(11) NOT NULL DEFAULT '0',
  `stvoMotorradschein` int(11) NOT NULL DEFAULT '0',
  `stvoFlugschein` int(11) NOT NULL DEFAULT '0',
  `stvoTruckschein` int(11) NOT NULL DEFAULT '0',
  `stvoBootschein` int(11) NOT NULL DEFAULT '0',
  `TicketsBearbeitet` int(11) NOT NULL DEFAULT '0',
  `PayDayGeld` int(11) NOT NULL DEFAULT '0',
  `wpSlot1` int(11) NOT NULL DEFAULT '0',
  `wpSlot2` int(11) NOT NULL DEFAULT '0',
  `wpSlot3` int(11) NOT NULL DEFAULT '0',
  `wpSlot4` int(11) NOT NULL DEFAULT '0',
  `wpSlot5` int(11) NOT NULL DEFAULT '0',
  `wpSlot6` int(11) NOT NULL DEFAULT '0',
  `wpSlot7` int(11) NOT NULL DEFAULT '0',
  `wpSlot8` int(11) NOT NULL DEFAULT '0',
  `wpSlot9` int(11) NOT NULL DEFAULT '0',
  `wpSlot10` int(11) NOT NULL DEFAULT '0',
  `wpSlot11` int(11) NOT NULL DEFAULT '0',
  `wpSlot12` int(11) NOT NULL DEFAULT '0',
  `wpSlot1Ammu` int(11) NOT NULL DEFAULT '0',
  `wpSlot2Ammu` int(11) NOT NULL DEFAULT '0',
  `wpSlot3Ammu` int(11) NOT NULL DEFAULT '0',
  `wpSlot4Ammu` int(11) NOT NULL DEFAULT '0',
  `wpSlot5Ammu` int(11) NOT NULL DEFAULT '0',
  `wpSlot6Ammu` int(11) NOT NULL DEFAULT '0',
  `wpSlot7Ammu` int(11) NOT NULL DEFAULT '0',
  `wpSlot8Ammu` int(11) NOT NULL DEFAULT '0',
  `wpSlot9Ammu` int(11) NOT NULL DEFAULT '0',
  `wpSlot10Ammu` int(11) NOT NULL DEFAULT '0',
  `wpSlot11Ammu` int(11) NOT NULL DEFAULT '0',
  `wpSlot12Ammu` int(11) NOT NULL DEFAULT '0',
  `Lotto1` int(11) NOT NULL DEFAULT '0',
  `Lotto2` int(11) NOT NULL DEFAULT '0',
  `Lotto3` int(11) NOT NULL DEFAULT '0',
  `TruckerSkill` int(11) NOT NULL DEFAULT '0',
  `PizzaboteSkill` int(11) NOT NULL DEFAULT '0',
  `KehrmaschinenSkill` int(11) NOT NULL DEFAULT '0',
  `PilotenSkill` int(11) NOT NULL DEFAULT '0',
  `BusfahrerSkill` int(11) NOT NULL DEFAULT '0',
  `MuellmannSkill` int(11) NOT NULL DEFAULT '0',
  `Drogen` int(11) NOT NULL DEFAULT '0',
  `Tutorial` int(11) NOT NULL DEFAULT '0',
  `Quest` int(11) NOT NULL DEFAULT '0',
  `Contract` int(11) NOT NULL DEFAULT '0',
  `Gruppe` int(11) NOT NULL DEFAULT '0',
  `GLeader` int(11) NOT NULL DEFAULT '0',
  `GRank` int(11) NOT NULL DEFAULT '0',
  `Donator` int(11) NOT NULL DEFAULT '0',
  `Premium` int(11) NOT NULL DEFAULT '0',
  `Garage` int(11) NOT NULL DEFAULT '0',
  `GMieter` int(11) NOT NULL DEFAULT '0',
  `Materialien` int(11) NOT NULL DEFAULT '0',
  `banned` int(11) NOT NULL DEFAULT '0',
  `coins` int(11) unsigned zerofill NOT NULL DEFAULT '0',
  `Kurrier` int(11) NOT NULL DEFAULT '0',
  `Bombe` int(11) NOT NULL DEFAULT '0',
  `Kampfstyle` int(11) NOT NULL DEFAULT '0',
  `WerbungSperre` int(11) NOT NULL DEFAULT '0',
  `icpHandy` int(11) NOT NULL DEFAULT '0',
  `WContract` int(11) NOT NULL DEFAULT '0',
  `Pfandflaschen` int(11) NOT NULL DEFAULT '0',
  `Beutel` int(11) NOT NULL DEFAULT '0',
  `Helm` int(11) NOT NULL DEFAULT '0',
  `DrogenPflanze` int(11) NOT NULL DEFAULT '0',
  `C4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accounts
-- ----------------------------
CREATE TABLE `werbetafel` (
  `ID` int(11) NOT NULL,
  `Text` varchar(256) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten fÃ¼r Tabelle `werbetafel`
--

INSERT INTO `werbetafel` (`ID`, `Text`) VALUES
(0, 'Hier könnte Ihre Werbung stehen!'),
(1, 'Hier könnte Ihre Werbung stehen!'),
(2, 'Hier könnte Ihre Werbung stehen!'),
(3, 'Hier könnte Ihre Werbung stehen!'),
(4, 'Hier könnte Ihre Werbung stehen!'),
(5, 'Hier könnte Ihre Werbung stehen!'),
(6, 'Hier könnte Ihre Werbung stehen!'),
(7, 'Hier könnte Ihre Werbung stehen!'),
(8, 'Hier könnte Ihre Werbung stehen!'),
(9, 'Hier könnte Ihre Werbung stehen!'),
(10, 'Hier könnte Ihre Werbung stehen!'),
(11, 'Hier könnte Ihre Werbung stehen!'),
(12, 'Hier könnte Ihre Werbung stehen!'),
(13, 'Hier könnte Ihre Werbung stehen!'),
(14, 'Hier könnte Ihre Werbung stehen!'),
(15, 'Hier könnte Ihre Werbung stehen!'),
(16, 'Hier könnte Ihre Werbung stehen!'),
(17, 'Hier könnte Ihre Werbung stehen!'),
(18, 'Hier könnte Ihre Werbung stehen!'),
(19, 'Hier könnte Ihre Werbung stehen!'),
(20, 'Hier könnte Ihre Werbung stehen!'),
(21, 'Hier könnte Ihre Werbung stehen!');

ALTER TABLE `werbetafel`
  ADD PRIMARY KEY (`ID`);

DROP TABLE IF EXISTS `stuff`;
CREATE TABLE `stuff` (
  `ID` int(11) NOT NULL,
  `motd` varchar(256) NOT NULL DEFAULT '-',
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `firmagrundstucke`;
CREATE TABLE `firmagrundstucke` (
  `firmengrid` int(11) NOT NULL,
  `create` int(11) NOT NULL DEFAULT '0',
  `firmenname` varchar(256) NOT NULL DEFAULT '-',
  `firmenid` int(11) NOT NULL DEFAULT '0',
  `posx` double NOT NULL DEFAULT '0.000',
  `posy` double NOT NULL DEFAULT '0.000',
  `posx2` double NOT NULL DEFAULT '0.000',
  `posy2` double NOT NULL DEFAULT '0.000',
  `iposx` double NOT NULL DEFAULT '0.000',
  `iposy` double NOT NULL DEFAULT '0.000',
  `iposz` double NOT NULL DEFAULT '0.000',
  `preis` int(11) NOT NULL DEFAULT '0',
  `igekauft` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `firmengrid` (`firmengrid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `firmalager`;
CREATE TABLE `firmalager` (
  `firmenlid` int(11) NOT NULL,
  `firmenname` varchar(256) NOT NULL DEFAULT '-',
  `firmenid` int(11) NOT NULL DEFAULT '0',
  `posx` double NOT NULL DEFAULT '0.000',
  `posy` double NOT NULL DEFAULT '0.000',
  `posz` double NOT NULL DEFAULT '0.000',
  UNIQUE KEY `firmenlid` (`firmenlid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `firmen`;
CREATE TABLE `firmen` (
  `ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL DEFAULT '-',
  `fOwner` varchar(256) NOT NULL DEFAULT '-',
  `Kennzeichen` varchar(256) NOT NULL DEFAULT '-',
  `Kasse` int(11) NOT NULL DEFAULT '0',
  `GehaltUpgrade` int(11) NOT NULL DEFAULT '0',
  `geburen` int(11) NOT NULL DEFAULT '0',
  `geburenLS` int(11) NOT NULL DEFAULT '0',
  `geburenSF` int(11) NOT NULL DEFAULT '0',
  `geburenLV` int(11) NOT NULL DEFAULT '0',
  `DrogenPflanze` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- ----------------------------
-- Table structure for `accwarns`
-- ----------------------------
DROP TABLE IF EXISTS `accwarns`;
CREATE TABLE `accwarns` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(24) NOT NULL,
  `Teammitglied` varchar(24) NOT NULL,
  `Warngrund` varchar(64) NOT NULL,
  `Uhrzeit` varchar(16) NOT NULL,
  `Datum` varchar(16) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accwarns
-- ----------------------------

-- ----------------------------
-- Table structure for `allgemein`
-- ----------------------------
DROP TABLE IF EXISTS `allgemein`;
CREATE TABLE `allgemein` (
  `ServerID` int(11) NOT NULL,
  `Rekord` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of allgemein
-- ----------------------------
INSERT INTO `allgemein` VALUES ('1', '4');

-- ----------------------------
-- Table structure for `ammunation`
-- ----------------------------
DROP TABLE IF EXISTS `ammunation`;
CREATE TABLE `ammunation` (
  `ID` int(11) NOT NULL,
  `Besitzer` varchar(24) NOT NULL,
  `Preis` int(11) NOT NULL,
  `Pos_X` double NOT NULL,
  `Pos_Y` double NOT NULL,
  `Pos_Z` double NOT NULL,
  `Armour` int(11) NOT NULL,
  `Schlagring` int(11) NOT NULL,
  `Messer` int(11) NOT NULL,
  `Baseball` int(11) NOT NULL,
  `Deagle` int(11) NOT NULL,
  `MP5` int(11) NOT NULL,
  `AK` int(11) NOT NULL,
  `M4` int(11) NOT NULL,
  `Sniper` int(11) NOT NULL,
  `Fallschirm` int(11) NOT NULL,
  `Kasse` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ammunation
-- ----------------------------
INSERT INTO `ammunation` VALUES ('1', '', '150000', '1368.030395', '-1279.718505', '13.546875', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ammunation` VALUES ('2', '', '850000', '2177.037597', '925.373901', '11.099519', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ammunation` VALUES ('3', '', '850000', '776.990783', '1871.589111', '4.907775', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ammunation` VALUES ('4', '', '600000', '-1508.909301', '2610.503906', '55.835937', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ammunation` VALUES ('5', '', '850000', '-2626.453857', '208.398651', '4.8125', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ammunation` VALUES ('6', '', '750000', '-2093.86206', '-2464.643066', '30.625', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ammunation` VALUES ('7', '', '850000', '671.048217', '-519.656677', '16.335937', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `beta`
-- ----------------------------
DROP TABLE IF EXISTS `beta`;
CREATE TABLE `beta` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(24) NOT NULL,
  `Key` varchar(12) NOT NULL,
  `Aktiviert` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of beta
-- ----------------------------

-- ----------------------------
-- Table structure for `blitzer`
-- ----------------------------
DROP TABLE IF EXISTS `blitzer`;
CREATE TABLE `blitzer` (
  `ID` int(11) NOT NULL,
  `Geschwindigkeit` int(11) NOT NULL,
  `Ort` varchar(64) NOT NULL,
  `PosX` double NOT NULL,
  `PosY` double NOT NULL,
  `PosZ` double NOT NULL,
  `PosA` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of blitzer
-- ----------------------------

-- ----------------------------
-- Table structure for `carinfos`
-- ----------------------------
DROP TABLE IF EXISTS `carinfos`;
CREATE TABLE `carinfos` (
  `ModelID` int(11) NOT NULL,
  `TankArt` int(11) NOT NULL DEFAULT '0',
  `Verbrauch` double NOT NULL,
  `Liter` int(11) NOT NULL,
  `Freikaufpreis` int(11) NOT NULL DEFAULT '1500',
  PRIMARY KEY (`ModelID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of carinfos
-- ----------------------------
INSERT INTO `carinfos` VALUES ('400', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('401', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('402', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('403', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('404', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('405', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('406', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('407', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('408', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('409', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('410', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('411', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('412', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('413', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('414', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('415', '1', '0.4', '40', '1500');
INSERT INTO `carinfos` VALUES ('416', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('417', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('418', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('419', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('420', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('421', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('422', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('423', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('424', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('425', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('426', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('427', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('428', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('429', '1', '0.4', '40', '1500');
INSERT INTO `carinfos` VALUES ('430', '1', '0.4', '100', '1500');
INSERT INTO `carinfos` VALUES ('431', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('432', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('433', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('434', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('435', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('436', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('437', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('438', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('439', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('440', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('441', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('442', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('443', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('444', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('445', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('446', '1', '0.4', '100', '1500');
INSERT INTO `carinfos` VALUES ('447', '2', '1.4', '100', '1500');
INSERT INTO `carinfos` VALUES ('448', '1', '0.4', '50', '1500');
INSERT INTO `carinfos` VALUES ('449', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('450', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('451', '1', '0.4', '40', '1500');
INSERT INTO `carinfos` VALUES ('452', '1', '0.4', '100', '1500');
INSERT INTO `carinfos` VALUES ('453', '1', '0.4', '100', '1500');
INSERT INTO `carinfos` VALUES ('454', '1', '0.4', '100', '1500');
INSERT INTO `carinfos` VALUES ('455', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('456', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('457', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('458', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('459', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('460', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('461', '1', '0.4', '50', '1500');
INSERT INTO `carinfos` VALUES ('462', '0', '0.4', '50', '1500');
INSERT INTO `carinfos` VALUES ('463', '1', '0.4', '50', '1500');
INSERT INTO `carinfos` VALUES ('464', '2', '1.4', '0', '1500');
INSERT INTO `carinfos` VALUES ('465', '2', '1.4', '0', '1500');
INSERT INTO `carinfos` VALUES ('466', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('467', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('468', '1', '0.4', '50', '1500');
INSERT INTO `carinfos` VALUES ('469', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('470', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('471', '1', '0.4', '50', '1500');
INSERT INTO `carinfos` VALUES ('472', '1', '0.4', '100', '1500');
INSERT INTO `carinfos` VALUES ('473', '1', '0.4', '100', '1500');
INSERT INTO `carinfos` VALUES ('474', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('475', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('476', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('477', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('478', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('479', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('480', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('481', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('482', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('483', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('484', '1', '0.4', '100', '1500');
INSERT INTO `carinfos` VALUES ('485', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('486', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('487', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('488', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('489', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('490', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('491', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('492', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('493', '1', '0.4', '100', '1500');
INSERT INTO `carinfos` VALUES ('494', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('495', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('496', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('497', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('498', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('499', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('500', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('501', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('502', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('503', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('504', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('505', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('506', '1', '0.4', '40', '1500');
INSERT INTO `carinfos` VALUES ('507', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('508', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('509', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('510', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('511', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('512', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('513', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('514', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('515', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('516', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('517', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('518', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('519', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('520', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('521', '1', '0.4', '50', '1500');
INSERT INTO `carinfos` VALUES ('522', '1', '0.4', '50', '1500');
INSERT INTO `carinfos` VALUES ('523', '1', '0.4', '50', '1500');
INSERT INTO `carinfos` VALUES ('524', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('525', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('526', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('527', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('528', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('529', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('530', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('531', '1', '0.4', '40', '1500');
INSERT INTO `carinfos` VALUES ('532', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('533', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('534', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('535', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('536', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('537', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('538', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('539', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('540', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('541', '1', '0.4', '40', '1500');
INSERT INTO `carinfos` VALUES ('542', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('543', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('544', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('545', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('546', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('547', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('548', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('549', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('550', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('551', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('552', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('553', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('554', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('555', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('556', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('557', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('558', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('559', '1', '0.4', '40', '1500');
INSERT INTO `carinfos` VALUES ('560', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('561', '1', '0.4', '60', '1500');
INSERT INTO `carinfos` VALUES ('562', '1', '0.4', '40', '1500');
INSERT INTO `carinfos` VALUES ('563', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('564', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('565', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('566', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('567', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('568', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('569', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('570', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('571', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('572', '1', '0.4', '40', '1500');
INSERT INTO `carinfos` VALUES ('573', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('574', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('575', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('576', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('577', '2', '1.4', '100', '1500');
INSERT INTO `carinfos` VALUES ('578', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('579', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('580', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('581', '1', '0.4', '50', '1500');
INSERT INTO `carinfos` VALUES ('582', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('583', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('584', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('585', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('586', '1', '0.4', '50', '1500');
INSERT INTO `carinfos` VALUES ('587', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('588', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('589', '1', '0.4', '40', '1500');
INSERT INTO `carinfos` VALUES ('590', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('591', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('592', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('593', '2', '1.4', '150', '1500');
INSERT INTO `carinfos` VALUES ('594', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('595', '1', '0.4', '100', '1500');
INSERT INTO `carinfos` VALUES ('596', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('597', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('598', '1', '0.4', '80', '1500');
INSERT INTO `carinfos` VALUES ('599', '1', '0.4', '80', '3000');
INSERT INTO `carinfos` VALUES ('600', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('601', '1', '0.4', '80', '5000');
INSERT INTO `carinfos` VALUES ('602', '0', '0.7', '40', '1500');
INSERT INTO `carinfos` VALUES ('603', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('604', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('605', '0', '0.7', '60', '1500');
INSERT INTO `carinfos` VALUES ('606', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('607', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('608', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('609', '0', '0.7', '80', '1500');
INSERT INTO `carinfos` VALUES ('610', '0', '0.7', '0', '1500');
INSERT INTO `carinfos` VALUES ('611', '0', '0.7', '0', '1500');

-- ----------------------------
-- Table structure for `complaints`
-- ----------------------------
DROP TABLE IF EXISTS `complaints`;
CREATE TABLE `complaints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_creation` datetime NOT NULL,
  `creator` varchar(45) NOT NULL,
  `perpetrator` varchar(45) NOT NULL,
  `case` varchar(45) NOT NULL,
  `info` text NOT NULL,
  `screen_1` varchar(120) NOT NULL,
  `screen_2` varchar(120) NOT NULL,
  `screen_3` varchar(120) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of complaints
-- ----------------------------

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `Index` int(11) NOT NULL AUTO_INCREMENT,
  `Config` varchar(16) DEFAULT NULL,
  `ValueStr` varchar(32) DEFAULT NULL,
  `ValueInt` int(11) DEFAULT NULL,
  PRIMARY KEY (`Index`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('14', 'LottoGewinn', '0', '0');
INSERT INTO `config` VALUES ('15', 'Beta', '0', '0');
INSERT INTO `config` VALUES ('16', 'Feuer', '0', '16');

-- ----------------------------
-- Table structure for `contracts`
-- ----------------------------
DROP TABLE IF EXISTS `contracts`;
CREATE TABLE `contracts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(24) NOT NULL,
  `Contract` varchar(24) NOT NULL,
  `Preis` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contracts
-- ----------------------------

-- ----------------------------
-- Table structure for `drogenpflanzen`
-- ----------------------------
DROP TABLE IF EXISTS `drogenpflanzen`;
CREATE TABLE `drogenpflanzen` (
  `ID` int(11) NOT NULL,
  `Besitzer` varchar(24) NOT NULL,
  `PosX` double NOT NULL,
  `PosY` double NOT NULL,
  `PosZ` double NOT NULL,
  `Reife` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of drogenpflanzen
-- ----------------------------

-- ----------------------------
-- Table structure for `feuer`
-- ----------------------------
DROP TABLE IF EXISTS `feuer`;
CREATE TABLE `feuer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Alarm` int(11) NOT NULL,
  `Rauch` int(11) NOT NULL,
  `Pos_X` double NOT NULL,
  `Pos_Y` double NOT NULL,
  `Pos_Z` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=810 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feuer
-- ----------------------------
INSERT INTO `feuer` VALUES ('1', '1', '1', '1759.25769', '-1349.785766', '13.109375');
INSERT INTO `feuer` VALUES ('2', '1', '1', '1755.222412', '-1350.096801', '13.109375');
INSERT INTO `feuer` VALUES ('3', '1', '1', '1757.251953', '-1350.336547', '13.109375');
INSERT INTO `feuer` VALUES ('4', '1', '0', '1761.336547', '-1348.416748', '13.109375');
INSERT INTO `feuer` VALUES ('5', '1', '1', '1761.759155', '-1351.483276', '13.109375');
INSERT INTO `feuer` VALUES ('6', '1', '0', '1753.326293', '-1351.559204', '13.109375');
INSERT INTO `feuer` VALUES ('7', '1', '0', '1752.803955', '-1348.845947', '13.109375');
INSERT INTO `feuer` VALUES ('8', '1', '0', '1766.086303', '-1348.92871', '13.259518');
INSERT INTO `feuer` VALUES ('9', '1', '0', '1767.894775', '-1352.346679', '13.263582');
INSERT INTO `feuer` VALUES ('10', '1', '0', '1770.677124', '-1350.359008', '13.260185');
INSERT INTO `feuer` VALUES ('11', '1', '0', '1773.115722', '-1352.692626', '13.257207');
INSERT INTO `feuer` VALUES ('12', '1', '0', '1776.0531', '-1351.088012', '13.253621');
INSERT INTO `feuer` VALUES ('13', '1', '0', '1777.863647', '-1355.919555', '13.25934');
INSERT INTO `feuer` VALUES ('14', '1', '0', '1781.598144', '-1353.801635', '13.258284');
INSERT INTO `feuer` VALUES ('15', '1', '0', '1781.727172', '-1356.529663', '13.263709');
INSERT INTO `feuer` VALUES ('16', '1', '0', '1784.259399', '-1357.454833', '13.257812');
INSERT INTO `feuer` VALUES ('17', '1', '1', '1786.958862', '-1359.28479', '13.257812');
INSERT INTO `feuer` VALUES ('18', '1', '1', '1788.72705', '-1361.314331', '13.257812');
INSERT INTO `feuer` VALUES ('19', '1', '1', '1786.384033', '-1362.898315', '13.257812');
INSERT INTO `feuer` VALUES ('20', '1', '1', '1786.95227', '-1360.968261', '13.974712');
INSERT INTO `feuer` VALUES ('21', '1', '1', '1787.145507', '-1357.134277', '13.982524');
INSERT INTO `feuer` VALUES ('22', '1', '1', '1787.027099', '-1353.790161', '13.974712');
INSERT INTO `feuer` VALUES ('23', '1', '1', '1785.749633', '-1355.138183', '13.263936');
INSERT INTO `feuer` VALUES ('24', '1', '1', '1788.144775', '-1355.391113', '13.257812');
INSERT INTO `feuer` VALUES ('25', '1', '1', '1787.256347', '-1352.486816', '13.25655');
INSERT INTO `feuer` VALUES ('26', '1', '0', '1783.773925', '-1352.760498', '13.257844');
INSERT INTO `feuer` VALUES ('27', '2', '0', '1140.254638', '-1468.108154', '13.689916');
INSERT INTO `feuer` VALUES ('28', '2', '0', '1139.982788', '-1464.472045', '13.276075');
INSERT INTO `feuer` VALUES ('29', '2', '0', '1137.66809', '-1464.445434', '13.274837');
INSERT INTO `feuer` VALUES ('30', '2', '0', '1137.389038', '-1461.7583', '13.296875');
INSERT INTO `feuer` VALUES ('31', '2', '0', '1139.051513', '-1459.786254', '13.296875');
INSERT INTO `feuer` VALUES ('32', '2', '0', '1138.36621', '-1457.229125', '13.296875');
INSERT INTO `feuer` VALUES ('33', '2', '0', '1139.316406', '-1456.541625', '13.689916');
INSERT INTO `feuer` VALUES ('34', '2', '0', '1141.057495', '-1452.098999', '13.296875');
INSERT INTO `feuer` VALUES ('35', '2', '0', '1137.821044', '-1452.709228', '13.296875');
INSERT INTO `feuer` VALUES ('36', '2', '0', '1133.34375', '-1454.304565', '13.296875');
INSERT INTO `feuer` VALUES ('37', '2', '0', '1139.35559', '-1467.614135', '16.597108');
INSERT INTO `feuer` VALUES ('38', '2', '0', '1139.470214', '-1456.905395', '16.583581');
INSERT INTO `feuer` VALUES ('39', '2', '0', '1134.420043', '-1461.270629', '13.296875');
INSERT INTO `feuer` VALUES ('40', '2', '0', '1129.823974', '-1462.279663', '13.301811');
INSERT INTO `feuer` VALUES ('41', '2', '0', '1130.824829', '-1466.034912', '13.255043');
INSERT INTO `feuer` VALUES ('42', '2', '0', '1127.80603', '-1469.332519', '13.242027');
INSERT INTO `feuer` VALUES ('43', '2', '0', '1127.891967', '-1472.242553', '13.624361');
INSERT INTO `feuer` VALUES ('44', '2', '0', '1127.899902', '-1474.611572', '15.399156');
INSERT INTO `feuer` VALUES ('45', '2', '0', '1127.90979', '-1477.960327', '17.844566');
INSERT INTO `feuer` VALUES ('46', '2', '0', '1128.4458', '-1478.553833', '18.337774');
INSERT INTO `feuer` VALUES ('47', '2', '0', '1129.862182', '-1481.091308', '20.169872');
INSERT INTO `feuer` VALUES ('48', '2', '0', '1128.968994', '-1483.884521', '20.269031');
INSERT INTO `feuer` VALUES ('49', '2', '0', '1125.566162', '-1485.989379', '20.269031');
INSERT INTO `feuer` VALUES ('50', '2', '0', '1125.637573', '-1488.889282', '20.269031');
INSERT INTO `feuer` VALUES ('51', '2', '0', '1129.297607', '-1487.007812', '20.269031');
INSERT INTO `feuer` VALUES ('52', '2', '0', '1124.583007', '-1492.180419', '20.269031');
INSERT INTO `feuer` VALUES ('53', '2', '0', '1120.211791', '-1490.083984', '20.269031');
INSERT INTO `feuer` VALUES ('54', '2', '0', '1118.824096', '-1486.748291', '20.269031');
INSERT INTO `feuer` VALUES ('55', '2', '0', '1116.848144', '-1488.632934', '20.269031');
INSERT INTO `feuer` VALUES ('56', '2', '0', '1115.175659', '-1491.661376', '20.269031');
INSERT INTO `feuer` VALUES ('57', '2', '0', '1113.850708', '-1494.061401', '20.269031');
INSERT INTO `feuer` VALUES ('58', '2', '0', '1111.104492', '-1494.479248', '20.269031');
INSERT INTO `feuer` VALUES ('59', '2', '0', '1109.602661', '-1491.707885', '20.269031');
INSERT INTO `feuer` VALUES ('60', '2', '0', '1107.774291', '-1488.281494', '20.269031');
INSERT INTO `feuer` VALUES ('61', '2', '0', '1106.765258', '-1485.174438', '20.269031');
INSERT INTO `feuer` VALUES ('62', '2', '0', '1104.351806', '-1487.199096', '20.269031');
INSERT INTO `feuer` VALUES ('63', '2', '0', '1101.329833', '-1488.562011', '20.269031');
INSERT INTO `feuer` VALUES ('64', '2', '0', '1099.391967', '-1492.072143', '20.269031');
INSERT INTO `feuer` VALUES ('65', '2', '0', '1100.186889', '-1494.637695', '20.269031');
INSERT INTO `feuer` VALUES ('66', '2', '0', '1096.413696', '-1494.890258', '20.269031');
INSERT INTO `feuer` VALUES ('67', '2', '0', '1094.771728', '-1492.63623', '20.260383');
INSERT INTO `feuer` VALUES ('68', '2', '0', '1092.800415', '-1489.131225', '20.263807');
INSERT INTO `feuer` VALUES ('69', '2', '0', '1090.087158', '-1487.345581', '20.26173');
INSERT INTO `feuer` VALUES ('70', '2', '0', '1088.834716', '-1484.777343', '20.254611');
INSERT INTO `feuer` VALUES ('71', '2', '0', '1088.740722', '-1481.546997', '20.249671');
INSERT INTO `feuer` VALUES ('72', '3', '0', '355.427062', '202.680282', '1006.679687');
INSERT INTO `feuer` VALUES ('73', '3', '0', '356.242614', '202.156127', '1006.679687');
INSERT INTO `feuer` VALUES ('74', '3', '0', '357.355987', '202.643676', '1006.679687');
INSERT INTO `feuer` VALUES ('75', '3', '0', '356.735931', '203.666076', '1005.882812');
INSERT INTO `feuer` VALUES ('76', '3', '0', '355.273681', '203.860961', '1005.882812');
INSERT INTO `feuer` VALUES ('77', '3', '0', '356.258941', '205.318466', '1005.882812');
INSERT INTO `feuer` VALUES ('78', '3', '0', '356.623718', '206.485183', '1005.882812');
INSERT INTO `feuer` VALUES ('79', '3', '0', '358.194732', '206.191726', '1005.882812');
INSERT INTO `feuer` VALUES ('80', '3', '0', '358.770996', '207.560958', '1005.882812');
INSERT INTO `feuer` VALUES ('81', '3', '0', '359.405273', '205.572204', '1005.882812');
INSERT INTO `feuer` VALUES ('82', '3', '0', '361.670043', '203.969161', '1005.882812');
INSERT INTO `feuer` VALUES ('83', '3', '0', '362.955993', '203.132019', '1006.679687');
INSERT INTO `feuer` VALUES ('84', '3', '0', '361.549102', '202.381286', '1006.672058');
INSERT INTO `feuer` VALUES ('85', '3', '0', '363.283569', '205.948196', '1005.882812');
INSERT INTO `feuer` VALUES ('86', '3', '0', '363.859954', '206.687362', '1005.882812');
INSERT INTO `feuer` VALUES ('87', '3', '0', '364.00476', '208.979202', '1005.882812');
INSERT INTO `feuer` VALUES ('88', '3', '0', '363.04187', '209.28334', '1005.882812');
INSERT INTO `feuer` VALUES ('89', '3', '0', '362.798706', '209.59201', '1005.882812');
INSERT INTO `feuer` VALUES ('90', '3', '0', '362.173675', '209.949874', '1005.882812');
INSERT INTO `feuer` VALUES ('91', '3', '0', '361.186218', '209.991683', '1005.882812');
INSERT INTO `feuer` VALUES ('92', '3', '0', '359.938781', '210.973617', '1005.882812');
INSERT INTO `feuer` VALUES ('93', '3', '0', '359.009124', '209.263092', '1005.882812');
INSERT INTO `feuer` VALUES ('94', '3', '0', '357.157257', '208.985656', '1005.882812');
INSERT INTO `feuer` VALUES ('95', '3', '0', '356.15866', '209.696578', '1005.882812');
INSERT INTO `feuer` VALUES ('96', '3', '0', '356.734497', '211.200576', '1007.055541');
INSERT INTO `feuer` VALUES ('97', '3', '0', '357.189453', '211.047012', '1006.679687');
INSERT INTO `feuer` VALUES ('98', '3', '0', '354.362274', '210.138107', '1006.679687');
INSERT INTO `feuer` VALUES ('99', '3', '0', '354.439971', '207.691986', '1005.882812');
INSERT INTO `feuer` VALUES ('100', '4', '0', '1592.354614', '-1676.529541', '1255.25061');
INSERT INTO `feuer` VALUES ('101', '4', '0', '1593.466308', '-1676.223632', '1255.25061');
INSERT INTO `feuer` VALUES ('102', '4', '0', '1593.789916', '-1676.852172', '1256.514282');
INSERT INTO `feuer` VALUES ('103', '4', '0', '1595.021606', '-1676.918212', '1255.25061');
INSERT INTO `feuer` VALUES ('104', '4', '0', '1595.353271', '-1675.17517', '1255.25061');
INSERT INTO `feuer` VALUES ('105', '4', '0', '1594.271972', '-1674.238891', '1255.25061');
INSERT INTO `feuer` VALUES ('106', '4', '0', '1592.353515', '-1673.684082', '1255.25061');
INSERT INTO `feuer` VALUES ('107', '4', '0', '1590.711547', '-1674.615478', '1255.25061');
INSERT INTO `feuer` VALUES ('108', '4', '0', '1589.510131', '-1675.784545', '1255.25061');
INSERT INTO `feuer` VALUES ('109', '4', '0', '1587.861083', '-1675.789672', '1255.25061');
INSERT INTO `feuer` VALUES ('110', '4', '0', '1586.487182', '-1674.503662', '1255.410156');
INSERT INTO `feuer` VALUES ('111', '4', '0', '1586.00061', '-1675.245117', '1255.750732');
INSERT INTO `feuer` VALUES ('112', '4', '0', '1585.438964', '-1676.060668', '1256.151');
INSERT INTO `feuer` VALUES ('113', '4', '0', '1584.457153', '-1676.651489', '1256.85083');
INSERT INTO `feuer` VALUES ('114', '4', '0', '1588.306396', '-1672.748413', '1255.25061');
INSERT INTO `feuer` VALUES ('115', '4', '0', '1589.631835', '-1671.603881', '1255.25061');
INSERT INTO `feuer` VALUES ('116', '4', '0', '1589.081054', '-1670.304199', '1255.25061');
INSERT INTO `feuer` VALUES ('117', '4', '0', '1589.065551', '-1668.35437', '1255.25061');
INSERT INTO `feuer` VALUES ('118', '4', '0', '1591.121948', '-1667.733642', '1255.25061');
INSERT INTO `feuer` VALUES ('119', '4', '0', '1592.118652', '-1666.337158', '1255.25061');
INSERT INTO `feuer` VALUES ('120', '4', '0', '1593.49121', '-1664.262207', '1255.25061');
INSERT INTO `feuer` VALUES ('121', '4', '0', '1594.836669', '-1664.870361', '1255.25061');
INSERT INTO `feuer` VALUES ('122', '4', '0', '1595.418212', '-1666.083374', '1255.25061');
INSERT INTO `feuer` VALUES ('123', '4', '0', '1596.952636', '-1665.743652', '1255.25061');
INSERT INTO `feuer` VALUES ('124', '4', '0', '1596.705444', '-1661.662963', '1255.25061');
INSERT INTO `feuer` VALUES ('125', '4', '0', '1595.975463', '-1660.734619', '1255.25061');
INSERT INTO `feuer` VALUES ('126', '4', '0', '1594.822265', '-1661.42163', '1255.25061');
INSERT INTO `feuer` VALUES ('127', '4', '0', '1592.80017', '-1662.249145', '1255.25061');
INSERT INTO `feuer` VALUES ('128', '4', '0', '1590.915283', '-1660.703735', '1255.25061');
INSERT INTO `feuer` VALUES ('129', '4', '0', '1590.595214', '-1658.638671', '1255.25061');
INSERT INTO `feuer` VALUES ('130', '4', '0', '1590.037475', '-1656.82312', '1255.25061');
INSERT INTO `feuer` VALUES ('131', '4', '0', '1588.82434', '-1656.020507', '1255.25061');
INSERT INTO `feuer` VALUES ('132', '4', '0', '1587.904541', '-1656.769653', '1255.25061');
INSERT INTO `feuer` VALUES ('133', '4', '0', '1588.596191', '-1662.363159', '1255.25061');
INSERT INTO `feuer` VALUES ('134', '4', '0', '1590.717529', '-1664.049438', '1255.25061');
INSERT INTO `feuer` VALUES ('135', '4', '0', '1588.610961', '-1665.086425', '1255.25061');
INSERT INTO `feuer` VALUES ('136', '4', '0', '1594.173095', '-1660.643188', '1258.75061');
INSERT INTO `feuer` VALUES ('137', '4', '0', '1592.59436', '-1662', '1258.75061');
INSERT INTO `feuer` VALUES ('138', '4', '0', '1592.58142', '-1665.138671', '1258.75061');
INSERT INTO `feuer` VALUES ('139', '4', '0', '1594.763427', '-1664.984863', '1258.75061');
INSERT INTO `feuer` VALUES ('140', '4', '0', '1596.543701', '-1663.720581', '1258.75061');
INSERT INTO `feuer` VALUES ('141', '4', '0', '1596.965698', '-1662.153076', '1258.75061');
INSERT INTO `feuer` VALUES ('142', '4', '0', '1587.354125', '-1664.579589', '1255.25061');
INSERT INTO `feuer` VALUES ('143', '4', '0', '1587.227172', '-1666.169311', '1255.75061');
INSERT INTO `feuer` VALUES ('144', '5', '0', '1366.409301', '-1285.871093', '11.046875');
INSERT INTO `feuer` VALUES ('145', '5', '0', '1367.146972', '-1285.209228', '12.35886');
INSERT INTO `feuer` VALUES ('146', '5', '0', '1366.682739', '-1284.158691', '11.046875');
INSERT INTO `feuer` VALUES ('147', '5', '0', '1364.763671', '-1284.669311', '11.046875');
INSERT INTO `feuer` VALUES ('148', '5', '0', '1364.354736', '-1287.431274', '11.046875');
INSERT INTO `feuer` VALUES ('149', '5', '0', '1362.523681', '-1288.547485', '10.882812');
INSERT INTO `feuer` VALUES ('150', '5', '0', '1362.679565', '-1286.221313', '11.046875');
INSERT INTO `feuer` VALUES ('151', '5', '0', '1360.794189', '-1284.641967', '10.870593');
INSERT INTO `feuer` VALUES ('152', '5', '0', '1359.960693', '-1286.424682', '10.821215');
INSERT INTO `feuer` VALUES ('153', '5', '0', '1358.175292', '-1284.745239', '10.767848');
INSERT INTO `feuer` VALUES ('154', '5', '0', '1357.488403', '-1282.663085', '10.777711');
INSERT INTO `feuer` VALUES ('155', '5', '0', '1355.814086', '-1284.325561', '10.826925');
INSERT INTO `feuer` VALUES ('156', '5', '0', '1355.873046', '-1286.036865', '10.808323');
INSERT INTO `feuer` VALUES ('157', '5', '0', '1358.098022', '-1288.302001', '10.730946');
INSERT INTO `feuer` VALUES ('158', '5', '0', '1356.245361', '-1288.531982', '10.770076');
INSERT INTO `feuer` VALUES ('159', '5', '0', '1355.675659', '-1290.517333', '10.773291');
INSERT INTO `feuer` VALUES ('160', '5', '0', '1356.235229', '-1292.182373', '10.863619');
INSERT INTO `feuer` VALUES ('161', '5', '0', '1355.52478', '-1294.082031', '10.767658');
INSERT INTO `feuer` VALUES ('162', '5', '0', '1353.861694', '-1292.779907', '10.832279');
INSERT INTO `feuer` VALUES ('163', '5', '0', '1351.91333', '-1292.383422', '11.001568');
INSERT INTO `feuer` VALUES ('164', '5', '0', '1350.704345', '-1291.539184', '10.999723');
INSERT INTO `feuer` VALUES ('165', '5', '0', '1350.301269', '-1294.378051', '13.142848');
INSERT INTO `feuer` VALUES ('166', '5', '0', '1350.186889', '-1296.016845', '13.140848');
INSERT INTO `feuer` VALUES ('167', '5', '0', '1350.205688', '-1296.898925', '13.139771');
INSERT INTO `feuer` VALUES ('168', '5', '0', '1350.215209', '-1297.573242', '13.138948');
INSERT INTO `feuer` VALUES ('169', '5', '0', '1351.601928', '-1298.91748', '11.546875');
INSERT INTO `feuer` VALUES ('170', '5', '0', '1352.730957', '-1298.893676', '10.876214');
INSERT INTO `feuer` VALUES ('171', '5', '0', '1352.947265', '-1297.73767', '10.86781');
INSERT INTO `feuer` VALUES ('172', '5', '0', '1354.407348', '-1297.465698', '10.811077');
INSERT INTO `feuer` VALUES ('173', '5', '0', '1355.191528', '-1298.595581', '10.780606');
INSERT INTO `feuer` VALUES ('174', '5', '0', '1356.452026', '-1298.811279', '10.755721');
INSERT INTO `feuer` VALUES ('175', '5', '0', '1346.80371', '-1296.776977', '10.939728');
INSERT INTO `feuer` VALUES ('176', '5', '0', '1345.860595', '-1296.018432', '10.995558');
INSERT INTO `feuer` VALUES ('177', '5', '0', '1346.56604', '-1294.738281', '10.953798');
INSERT INTO `feuer` VALUES ('178', '5', '0', '1345.798461', '-1293.070556', '10.999237');
INSERT INTO `feuer` VALUES ('179', '5', '0', '1343.610351', '-1293.390747', '11.128767');
INSERT INTO `feuer` VALUES ('180', '5', '0', '1344.429321', '-1290.624877', '11.069025');
INSERT INTO `feuer` VALUES ('181', '5', '0', '1343.294067', '-1289.376953', '11.09991');
INSERT INTO `feuer` VALUES ('182', '5', '0', '1341.751464', '-1290.909301', '11.121359');
INSERT INTO `feuer` VALUES ('183', '5', '0', '1341.793579', '-1294.723632', '11.123852');
INSERT INTO `feuer` VALUES ('184', '5', '0', '1343.032714', '-1295.738769', '11.123826');
INSERT INTO `feuer` VALUES ('185', '5', '0', '1345.169189', '-1296.952026', '11.036488');
INSERT INTO `feuer` VALUES ('186', '5', '0', '1347.303222', '-1297.690063', '10.910159');
INSERT INTO `feuer` VALUES ('187', '5', '0', '1347.825073', '-1298.724609', '10.902926');
INSERT INTO `feuer` VALUES ('188', '5', '0', '1349.241577', '-1300.578613', '12.144262');
INSERT INTO `feuer` VALUES ('189', '5', '0', '1357.745605', '-1301.357543', '10.768425');
INSERT INTO `feuer` VALUES ('190', '5', '0', '1359.955688', '-1300.517089', '10.778945');
INSERT INTO `feuer` VALUES ('191', '5', '0', '1361.964599', '-1300.403686', '10.857005');
INSERT INTO `feuer` VALUES ('192', '5', '0', '1363.258789', '-1299.444458', '11.046875');
INSERT INTO `feuer` VALUES ('193', '5', '0', '1364.374267', '-1297.810058', '11.046875');
INSERT INTO `feuer` VALUES ('194', '5', '0', '1365.414184', '-1295.674072', '11.046875');
INSERT INTO `feuer` VALUES ('195', '5', '0', '1365.848022', '-1293.328369', '11.046875');
INSERT INTO `feuer` VALUES ('196', '5', '0', '1366.165039', '-1291.197753', '11.046875');
INSERT INTO `feuer` VALUES ('197', '6', '0', '829.07843', '-856.7854', '70.856849');
INSERT INTO `feuer` VALUES ('198', '6', '0', '827.439453', '-856.928466', '70.976051');
INSERT INTO `feuer` VALUES ('199', '6', '0', '826.851806', '-855.474121', '71.438751');
INSERT INTO `feuer` VALUES ('200', '6', '0', '828.331604', '-854.588562', '71.542068');
INSERT INTO `feuer` VALUES ('201', '6', '0', '828.513061', '-853.554687', '71.812789');
INSERT INTO `feuer` VALUES ('202', '6', '0', '826.335876', '-852.901916', '71.779624');
INSERT INTO `feuer` VALUES ('203', '6', '0', '824.02124', '-853.035583', '71.593193');
INSERT INTO `feuer` VALUES ('204', '6', '0', '821.708862', '-853.868835', '71.601051');
INSERT INTO `feuer` VALUES ('205', '6', '0', '819.243652', '-855.498779', '71.815147');
INSERT INTO `feuer` VALUES ('206', '6', '0', '819.129394', '-857.698974', '71.568634');
INSERT INTO `feuer` VALUES ('207', '6', '0', '818.87976', '-859.964965', '71.888687');
INSERT INTO `feuer` VALUES ('208', '6', '0', '818.183837', '-862.364196', '71.44384');
INSERT INTO `feuer` VALUES ('209', '6', '0', '816.493774', '-862.413146', '72.65625');
INSERT INTO `feuer` VALUES ('210', '6', '0', '817.777832', '-864.148376', '70.984886');
INSERT INTO `feuer` VALUES ('211', '6', '0', '818.272399', '-865.962829', '70.923538');
INSERT INTO `feuer` VALUES ('212', '6', '0', '819.775695', '-867.819213', '67.421875');
INSERT INTO `feuer` VALUES ('213', '6', '0', '821.074462', '-867.147216', '67.421875');
INSERT INTO `feuer` VALUES ('214', '6', '0', '822.995849', '-865.351684', '67.421875');
INSERT INTO `feuer` VALUES ('215', '6', '0', '824.772583', '-864.669494', '67.421875');
INSERT INTO `feuer` VALUES ('216', '6', '0', '825.512268', '-864.452819', '67.584381');
INSERT INTO `feuer` VALUES ('217', '6', '0', '826.356872', '-863.130737', '67.584381');
INSERT INTO `feuer` VALUES ('218', '6', '0', '827.812133', '-863.628967', '67.584381');
INSERT INTO `feuer` VALUES ('219', '6', '0', '826.695922', '-861.706176', '67.428558');
INSERT INTO `feuer` VALUES ('220', '6', '0', '827.274169', '-860.996948', '67.428558');
INSERT INTO `feuer` VALUES ('221', '6', '0', '826.207092', '-859.640808', '67.428558');
INSERT INTO `feuer` VALUES ('222', '6', '0', '826.402709', '-859.10791', '67.83081');
INSERT INTO `feuer` VALUES ('223', '6', '0', '827.619262', '-858.053283', '67.83081');
INSERT INTO `feuer` VALUES ('224', '6', '0', '829.335754', '-857.915649', '67.83081');
INSERT INTO `feuer` VALUES ('225', '6', '0', '830.970764', '-858.013732', '67.421875');
INSERT INTO `feuer` VALUES ('226', '6', '0', '832.786926', '-858.985168', '67.421875');
INSERT INTO `feuer` VALUES ('227', '6', '0', '834.017578', '-858.412902', '67.440834');
INSERT INTO `feuer` VALUES ('228', '6', '0', '834.474792', '-859.522949', '67.459266');
INSERT INTO `feuer` VALUES ('229', '6', '0', '832.806762', '-860.892211', '67.444946');
INSERT INTO `feuer` VALUES ('230', '6', '0', '831.90155', '-861.94281', '67.402687');
INSERT INTO `feuer` VALUES ('231', '6', '0', '831.822448', '-863.541137', '67.04895');
INSERT INTO `feuer` VALUES ('232', '6', '0', '830.791809', '-864.69934', '66.852645');
INSERT INTO `feuer` VALUES ('233', '6', '0', '831.192016', '-865.773681', '66.586921');
INSERT INTO `feuer` VALUES ('235', '8', '0', '1783.700195', '-1700.90039', '14.530937');
INSERT INTO `feuer` VALUES ('236', '8', '0', '1783.618164', '-1702.068115', '14.530937');
INSERT INTO `feuer` VALUES ('237', '8', '0', '1783.530029', '-1703.324218', '14.530937');
INSERT INTO `feuer` VALUES ('238', '8', '0', '1783.391479', '-1705.290893', '14.530937');
INSERT INTO `feuer` VALUES ('239', '8', '0', '1783.446044', '-1706.67395', '14.530937');
INSERT INTO `feuer` VALUES ('240', '8', '0', '1783.565795', '-1708.568237', '14.528938');
INSERT INTO `feuer` VALUES ('241', '8', '0', '1783.403564', '-1710.876831', '14.528938');
INSERT INTO `feuer` VALUES ('242', '8', '0', '1785.62976', '-1711.18872', '14.528938');
INSERT INTO `feuer` VALUES ('243', '8', '0', '1787.272583', '-1711.575561', '14.528936');
INSERT INTO `feuer` VALUES ('244', '8', '0', '1789.135131', '-1711.422485', '14.528936');
INSERT INTO `feuer` VALUES ('245', '8', '0', '1790.67517', '-1711.29602', '14.528936');
INSERT INTO `feuer` VALUES ('246', '8', '0', '1791.713134', '-1711.210937', '14.445999');
INSERT INTO `feuer` VALUES ('247', '8', '0', '1793.760375', '-1711.183715', '14.526937');
INSERT INTO `feuer` VALUES ('248', '8', '0', '1785.458129', '-1706.233398', '14.530937');
INSERT INTO `feuer` VALUES ('249', '8', '0', '1786.57727', '-1706.197143', '14.530937');
INSERT INTO `feuer` VALUES ('250', '8', '0', '1788.634399', '-1706.47998', '14.530937');
INSERT INTO `feuer` VALUES ('251', '8', '0', '1789.594604', '-1706.416992', '14.530937');
INSERT INTO `feuer` VALUES ('252', '8', '0', '1791.604125', '-1706.285034', '14.445999');
INSERT INTO `feuer` VALUES ('253', '8', '0', '1792.775756', '-1706.208374', '14.445999');
INSERT INTO `feuer` VALUES ('254', '8', '0', '1791.23291', '-1706.025268', '11.050937');
INSERT INTO `feuer` VALUES ('255', '8', '0', '1790.231079', '-1705.184204', '11.050937');
INSERT INTO `feuer` VALUES ('256', '8', '0', '1791.317504', '-1703.420288', '11.050937');
INSERT INTO `feuer` VALUES ('257', '8', '0', '1791.694946', '-1701.677001', '11.050937');
INSERT INTO `feuer` VALUES ('258', '8', '0', '1790.451293', '-1701.276367', '11.050937');
INSERT INTO `feuer` VALUES ('259', '8', '0', '1788.548095', '-1700.93811', '11.544526');
INSERT INTO `feuer` VALUES ('260', '8', '0', '1788.180053', '-1702.32727', '11.050937');
INSERT INTO `feuer` VALUES ('261', '8', '0', '1788.528686', '-1705.733154', '11.050937');
INSERT INTO `feuer` VALUES ('262', '8', '0', '1786.263183', '-1706.255126', '11.062937');
INSERT INTO `feuer` VALUES ('263', '8', '0', '1785.409667', '-1707.285156', '11.062937');
INSERT INTO `feuer` VALUES ('264', '8', '0', '1784.464965', '-1705.530761', '11.060937');
INSERT INTO `feuer` VALUES ('265', '8', '0', '1782.313964', '-1705.818969', '11.050937');
INSERT INTO `feuer` VALUES ('266', '8', '0', '1781.423828', '-1703.525146', '11.050937');
INSERT INTO `feuer` VALUES ('267', '8', '0', '1779.966552', '-1704.120483', '11.062937');
INSERT INTO `feuer` VALUES ('268', '8', '0', '1779.721069', '-1702.794921', '12.175392');
INSERT INTO `feuer` VALUES ('269', '8', '0', '1780.247924', '-1701.897094', '11.050937');
INSERT INTO `feuer` VALUES ('270', '8', '0', '1778.593261', '-1700.942871', '11.050937');
INSERT INTO `feuer` VALUES ('271', '8', '0', '1778.655029', '-1699.497558', '11.050937');
INSERT INTO `feuer` VALUES ('272', '8', '0', '1777.470214', '-1699.581909', '11.050937');
INSERT INTO `feuer` VALUES ('273', '8', '0', '1776.182006', '-1699.499877', '11.050937');
INSERT INTO `feuer` VALUES ('274', '8', '0', '1775.662597', '-1699.030151', '11.99867');
INSERT INTO `feuer` VALUES ('275', '8', '0', '1774.796386', '-1699.185668', '11.050937');
INSERT INTO `feuer` VALUES ('276', '8', '0', '1774.594238', '-1700.202026', '11.050937');
INSERT INTO `feuer` VALUES ('277', '8', '0', '1774.572998', '-1701.347045', '11.050937');
INSERT INTO `feuer` VALUES ('278', '8', '0', '1773.555786', '-1703.280029', '11.050937');
INSERT INTO `feuer` VALUES ('279', '8', '0', '1776.884399', '-1702.189453', '11.050937');
INSERT INTO `feuer` VALUES ('280', '8', '0', '1777.798217', '-1703.364746', '11.502418');
INSERT INTO `feuer` VALUES ('281', '8', '0', '1777.397094', '-1705.318115', '11.050937');
INSERT INTO `feuer` VALUES ('282', '8', '0', '1776.322998', '-1706.408569', '11.050937');
INSERT INTO `feuer` VALUES ('283', '8', '0', '1777.511474', '-1707.327026', '11.052937');
INSERT INTO `feuer` VALUES ('284', '8', '0', '1779.291381', '-1709.278808', '11.060937');
INSERT INTO `feuer` VALUES ('285', '8', '0', '1778.65332', '-1710.580322', '11.048937');
INSERT INTO `feuer` VALUES ('286', '8', '0', '1779.701171', '-1711.413574', '11.048937');
INSERT INTO `feuer` VALUES ('287', '8', '0', '1779.088012', '-1713.454345', '11.048937');
INSERT INTO `feuer` VALUES ('288', '8', '0', '1778.548217', '-1715.625244', '11.048937');
INSERT INTO `feuer` VALUES ('289', '8', '0', '1780.089355', '-1715.64038', '11.048937');
INSERT INTO `feuer` VALUES ('290', '8', '0', '1780.828002', '-1713.814941', '11.048937');
INSERT INTO `feuer` VALUES ('291', '8', '0', '1782.530883', '-1713.666137', '11.052937');
INSERT INTO `feuer` VALUES ('292', '9', '0', '1854.127319', '-1585.005615', '11.131837');
INSERT INTO `feuer` VALUES ('293', '9', '0', '1856.216308', '-1586.039062', '12.263576');
INSERT INTO `feuer` VALUES ('294', '9', '0', '1853.819091', '-1586.371948', '12.735292');
INSERT INTO `feuer` VALUES ('295', '9', '0', '1852.097167', '-1586.784057', '12.324309');
INSERT INTO `feuer` VALUES ('296', '9', '0', '1850.614257', '-1588.427124', '11.131837');
INSERT INTO `feuer` VALUES ('297', '9', '0', '1852.454833', '-1589.412597', '11.131837');
INSERT INTO `feuer` VALUES ('298', '9', '0', '1854.939697', '-1589.528076', '11.131837');
INSERT INTO `feuer` VALUES ('299', '9', '0', '1857.812744', '-1589.650512', '11.122037');
INSERT INTO `feuer` VALUES ('300', '9', '0', '1858.363159', '-1587.487548', '11.122037');
INSERT INTO `feuer` VALUES ('301', '9', '0', '1859.287841', '-1585.754394', '11.122037');
INSERT INTO `feuer` VALUES ('302', '9', '0', '1860.056396', '-1583.395629', '11.122037');
INSERT INTO `feuer` VALUES ('303', '9', '0', '1861.627075', '-1583.46289', '11.110137');
INSERT INTO `feuer` VALUES ('304', '9', '0', '1863.026245', '-1581.706542', '11.110137');
INSERT INTO `feuer` VALUES ('305', '9', '0', '1863.67395', '-1579.24353', '11.111937');
INSERT INTO `feuer` VALUES ('306', '9', '0', '1865.347167', '-1578.451049', '11.111937');
INSERT INTO `feuer` VALUES ('307', '9', '0', '1867.419311', '-1578.564208', '11.111937');
INSERT INTO `feuer` VALUES ('308', '9', '0', '1867.69934', '-1579.598144', '11.6794');
INSERT INTO `feuer` VALUES ('309', '9', '0', '1866.156494', '-1580.05603', '11.111937');
INSERT INTO `feuer` VALUES ('310', '9', '0', '1867.093505', '-1580.554565', '11.111937');
INSERT INTO `feuer` VALUES ('311', '9', '0', '1867.198486', '-1581.920532', '11.110137');
INSERT INTO `feuer` VALUES ('312', '9', '0', '1865.211425', '-1582.122192', '11.110137');
INSERT INTO `feuer` VALUES ('313', '9', '0', '1864.50708', '-1583.92456', '11.110137');
INSERT INTO `feuer` VALUES ('314', '9', '0', '1865.751831', '-1584.463256', '11.110137');
INSERT INTO `feuer` VALUES ('315', '9', '0', '1867.125488', '-1584.840209', '11.110137');
INSERT INTO `feuer` VALUES ('316', '9', '0', '1868.246093', '-1584.465209', '11.110137');
INSERT INTO `feuer` VALUES ('317', '9', '0', '1869.017333', '-1583.794799', '11.110137');
INSERT INTO `feuer` VALUES ('318', '9', '0', '1870.560058', '-1582.370849', '11.110137');
INSERT INTO `feuer` VALUES ('319', '9', '0', '1871.436401', '-1580.467773', '11.110137');
INSERT INTO `feuer` VALUES ('320', '9', '0', '1874.711669', '-1583.260131', '12.177227');
INSERT INTO `feuer` VALUES ('321', '9', '0', '1873.8833', '-1583.572387', '12.095277');
INSERT INTO `feuer` VALUES ('322', '9', '0', '1873.613647', '-1582.714599', '12.281381');
INSERT INTO `feuer` VALUES ('323', '9', '0', '1873.653076', '-1581.787841', '12.619916');
INSERT INTO `feuer` VALUES ('324', '9', '0', '1872.761108', '-1581.150146', '12.713115');
INSERT INTO `feuer` VALUES ('325', '9', '0', '1873.393432', '-1579.790405', '12.143384');
INSERT INTO `feuer` VALUES ('326', '9', '0', '1872.337524', '-1578.917968', '11.189176');
INSERT INTO `feuer` VALUES ('327', '9', '0', '1869.554443', '-1585.163452', '11.110137');
INSERT INTO `feuer` VALUES ('328', '9', '0', '1867.731689', '-1586.172363', '11.110137');
INSERT INTO `feuer` VALUES ('329', '9', '0', '1865.699096', '-1587.712158', '11.110737');
INSERT INTO `feuer` VALUES ('330', '9', '0', '1867.097045', '-1588.547241', '11.110737');
INSERT INTO `feuer` VALUES ('331', '9', '0', '1866.790527', '-1590.645263', '11.110737');
INSERT INTO `feuer` VALUES ('332', '9', '0', '1867.009643', '-1592.181518', '11.110737');
INSERT INTO `feuer` VALUES ('333', '9', '0', '1868.013061', '-1593.765258', '11.110737');
INSERT INTO `feuer` VALUES ('334', '9', '0', '1868.411499', '-1594.990844', '11.110737');
INSERT INTO `feuer` VALUES ('335', '9', '0', '1869.448242', '-1593.561279', '12.460941');
INSERT INTO `feuer` VALUES ('336', '9', '0', '1868.912109', '-1592.390625', '12.093962');
INSERT INTO `feuer` VALUES ('337', '9', '0', '1868.919189', '-1591.298583', '11.955989');
INSERT INTO `feuer` VALUES ('338', '9', '0', '1868.473876', '-1595.201782', '11.110737');
INSERT INTO `feuer` VALUES ('339', '9', '0', '1865.027343', '-1595.805664', '11.110737');
INSERT INTO `feuer` VALUES ('340', '9', '0', '1862.251953', '-1595.864624', '11.110737');
INSERT INTO `feuer` VALUES ('341', '9', '0', '1862.198608', '-1597.385986', '11.109937');
INSERT INTO `feuer` VALUES ('342', '9', '0', '1861.088134', '-1599.123657', '11.109937');
INSERT INTO `feuer` VALUES ('343', '9', '0', '1863.042114', '-1599.259887', '11.109937');
INSERT INTO `feuer` VALUES ('344', '9', '0', '1865.785156', '-1599.125732', '11.972175');
INSERT INTO `feuer` VALUES ('345', '9', '0', '1868.165893', '-1593.404785', '11.110737');
INSERT INTO `feuer` VALUES ('346', '9', '0', '1870.464111', '-1595.15686', '12.100148');
INSERT INTO `feuer` VALUES ('347', '9', '0', '1870.481201', '-1594.069702', '12.268212');
INSERT INTO `feuer` VALUES ('348', '9', '0', '1869.503906', '-1592.760131', '12.30151');
INSERT INTO `feuer` VALUES ('349', '9', '0', '1869.272949', '-1591.065673', '12.019095');
INSERT INTO `feuer` VALUES ('350', '9', '0', '1870.085327', '-1590.483764', '11.110737');
INSERT INTO `feuer` VALUES ('351', '9', '0', '1870.866577', '-1588.754394', '11.110737');
INSERT INTO `feuer` VALUES ('352', '9', '0', '1872.5885', '-1587.405639', '11.110737');
INSERT INTO `feuer` VALUES ('353', '9', '0', '1872.939697', '-1585.440063', '11.110137');
INSERT INTO `feuer` VALUES ('354', '10', '0', '2018.703369', '-1282.955322', '25.988073');
INSERT INTO `feuer` VALUES ('355', '10', '0', '2016.42041', '-1283.502441', '25.988073');
INSERT INTO `feuer` VALUES ('356', '10', '0', '2015.125', '-1284.585693', '25.988073');
INSERT INTO `feuer` VALUES ('357', '10', '0', '2012.357421', '-1282.990966', '25.988073');
INSERT INTO `feuer` VALUES ('358', '10', '0', '2010.936767', '-1284.200683', '25.988073');
INSERT INTO `feuer` VALUES ('359', '10', '0', '2008.342407', '-1284.681396', '25.988073');
INSERT INTO `feuer` VALUES ('360', '10', '0', '2007.009033', '-1282.884033', '25.988073');
INSERT INTO `feuer` VALUES ('361', '10', '0', '2006.735961', '-1282.127075', '26.720821');
INSERT INTO `feuer` VALUES ('362', '10', '0', '2005.80957', '-1285.273681', '25.988073');
INSERT INTO `feuer` VALUES ('363', '10', '0', '2000.385009', '-1282.98645', '25.988073');
INSERT INTO `feuer` VALUES ('364', '10', '0', '1999.124267', '-1284.736816', '25.988073');
INSERT INTO `feuer` VALUES ('365', '10', '0', '1996.668334', '-1283.617553', '25.988073');
INSERT INTO `feuer` VALUES ('366', '10', '0', '1993.990356', '-1282.88269', '25.988073');
INSERT INTO `feuer` VALUES ('367', '10', '0', '1991.214355', '-1282.88269', '25.988073');
INSERT INTO `feuer` VALUES ('368', '10', '0', '1990.591796', '-1284.641235', '25.988073');
INSERT INTO `feuer` VALUES ('369', '10', '0', '1987.793212', '-1284.701416', '25.988073');
INSERT INTO `feuer` VALUES ('370', '10', '0', '1987.355834', '-1282.883911', '25.988073');
INSERT INTO `feuer` VALUES ('371', '10', '0', '1984.480346', '-1282.88269', '25.988073');
INSERT INTO `feuer` VALUES ('372', '10', '0', '1982.650756', '-1284.455444', '25.991893');
INSERT INTO `feuer` VALUES ('373', '10', '0', '1979.829345', '-1283.271362', '25.988073');
INSERT INTO `feuer` VALUES ('374', '10', '0', '1976.762573', '-1284.724975', '25.991893');
INSERT INTO `feuer` VALUES ('375', '10', '0', '1974.538818', '-1282.999023', '25.988073');
INSERT INTO `feuer` VALUES ('376', '10', '0', '1971.051269', '-1284.724853', '25.991893');
INSERT INTO `feuer` VALUES ('377', '10', '0', '1970.833618', '-1282.885498', '25.991893');
INSERT INTO `feuer` VALUES ('378', '10', '0', '1970.86145', '-1282.081542', '26.464433');
INSERT INTO `feuer` VALUES ('379', '10', '0', '1970.876098', '-1280.985229', '21.484375');
INSERT INTO `feuer` VALUES ('380', '10', '0', '1972.826538', '-1280.848266', '21.484312');
INSERT INTO `feuer` VALUES ('381', '10', '0', '1974.369995', '-1282.693725', '21.471242');
INSERT INTO `feuer` VALUES ('382', '10', '0', '1976.346191', '-1282.41394', '21.473224');
INSERT INTO `feuer` VALUES ('383', '10', '0', '1978.617431', '-1281.73706', '21.478017');
INSERT INTO `feuer` VALUES ('384', '10', '0', '1979.896606', '-1279.641601', '21.320312');
INSERT INTO `feuer` VALUES ('385', '10', '0', '1977.92041', '-1279.116699', '21.320312');
INSERT INTO `feuer` VALUES ('386', '10', '0', '1974.934448', '-1278.313964', '21.320312');
INSERT INTO `feuer` VALUES ('387', '10', '0', '1975.481689', '-1276.60083', '21.320312');
INSERT INTO `feuer` VALUES ('388', '10', '0', '1978.042114', '-1275.852905', '21.320312');
INSERT INTO `feuer` VALUES ('389', '10', '0', '1980.593994', '-1275.923706', '21.320312');
INSERT INTO `feuer` VALUES ('390', '10', '0', '1980.555664', '-1274.200317', '21.320312');
INSERT INTO `feuer` VALUES ('391', '10', '0', '1978.351684', '-1273.663574', '21.320312');
INSERT INTO `feuer` VALUES ('392', '10', '0', '1979.205566', '-1272.603637', '21.320312');
INSERT INTO `feuer` VALUES ('393', '10', '0', '1976.429443', '-1273.996093', '21.320312');
INSERT INTO `feuer` VALUES ('394', '10', '0', '1975.867065', '-1272.662353', '21.320312');
INSERT INTO `feuer` VALUES ('395', '10', '0', '1974.077758', '-1274.474487', '21.320312');
INSERT INTO `feuer` VALUES ('396', '10', '0', '1971.434204', '-1275.052856', '21.490795');
INSERT INTO `feuer` VALUES ('397', '10', '0', '1970.09497', '-1277.236938', '21.484375');
INSERT INTO `feuer` VALUES ('398', '10', '0', '1970.288696', '-1278.944946', '21.484375');
INSERT INTO `feuer` VALUES ('399', '10', '0', '1968.970458', '-1279.508056', '21.484375');
INSERT INTO `feuer` VALUES ('400', '10', '0', '1968.163696', '-1282.197143', '21.484375');
INSERT INTO `feuer` VALUES ('401', '10', '0', '1967.496582', '-1284.976562', '21.484375');
INSERT INTO `feuer` VALUES ('402', '11', '0', '2123.027343', '-1244.101806', '21.491037');
INSERT INTO `feuer` VALUES ('403', '11', '0', '2124.397949', '-1245.956787', '21.491943');
INSERT INTO `feuer` VALUES ('404', '11', '0', '2126.763427', '-1245.690551', '21.491813');
INSERT INTO `feuer` VALUES ('405', '11', '0', '2127.373291', '-1246.937866', '21.492422');
INSERT INTO `feuer` VALUES ('406', '11', '0', '2126.706542', '-1248.865966', '21.493364');
INSERT INTO `feuer` VALUES ('407', '11', '0', '2125.316162', '-1248.736694', '21.493301');
INSERT INTO `feuer` VALUES ('408', '11', '0', '2123.384765', '-1248.488525', '21.493179');
INSERT INTO `feuer` VALUES ('409', '11', '0', '2121.569091', '-1248.248535', '21.493062');
INSERT INTO `feuer` VALUES ('410', '11', '0', '2127.946533', '-1247.611083', '25.085172');
INSERT INTO `feuer` VALUES ('411', '11', '0', '2128.562255', '-1246.117797', '25.462348');
INSERT INTO `feuer` VALUES ('412', '11', '0', '2129.822509', '-1245.956909', '25.502986');
INSERT INTO `feuer` VALUES ('413', '11', '0', '2130.170654', '-1244.045776', '25.985702');
INSERT INTO `feuer` VALUES ('414', '11', '0', '2128.745361', '-1242.554199', '26.362447');
INSERT INTO `feuer` VALUES ('415', '11', '0', '2130.102783', '-1240.583862', '26.852058');
INSERT INTO `feuer` VALUES ('416', '11', '0', '2128.550048', '-1238.708984', '26.496971');
INSERT INTO `feuer` VALUES ('417', '11', '0', '2129.911132', '-1236.744018', '25.992967');
INSERT INTO `feuer` VALUES ('418', '11', '0', '2128.572509', '-1235.111694', '25.576774');
INSERT INTO `feuer` VALUES ('419', '11', '0', '2130.675537', '-1234.693969', '25.604337');
INSERT INTO `feuer` VALUES ('420', '11', '0', '2130.76831', '-1233.304809', '25.631174');
INSERT INTO `feuer` VALUES ('421', '11', '0', '2129.06958', '-1232.257812', '25.139778');
INSERT INTO `feuer` VALUES ('422', '11', '0', '2128.791259', '-1231.597778', '25.059267');
INSERT INTO `feuer` VALUES ('423', '11', '0', '2130.685791', '-1231.969482', '25.607303');
INSERT INTO `feuer` VALUES ('424', '11', '0', '2132.203369', '-1232.779296', '26.046298');
INSERT INTO `feuer` VALUES ('425', '11', '0', '2132.43164', '-1233.912231', '26.112331');
INSERT INTO `feuer` VALUES ('426', '11', '0', '2133.418945', '-1232.027465', '26.397932');
INSERT INTO `feuer` VALUES ('427', '11', '0', '2133.704345', '-1231.452758', '26.320577');
INSERT INTO `feuer` VALUES ('428', '11', '0', '2134.05249', '-1230.436889', '26.320577');
INSERT INTO `feuer` VALUES ('429', '11', '0', '2134.05249', '-1230.436889', '28.89178');
INSERT INTO `feuer` VALUES ('430', '11', '0', '2134.05249', '-1230.436889', '30.358383');
INSERT INTO `feuer` VALUES ('431', '11', '0', '2134.05249', '-1230.436889', '31.538578');
INSERT INTO `feuer` VALUES ('432', '11', '0', '2134.05249', '-1230.436889', '32.366138');
INSERT INTO `feuer` VALUES ('433', '11', '0', '2134.814941', '-1233.916259', '25.999958');
INSERT INTO `feuer` VALUES ('434', '11', '0', '2135.768798', '-1232.15747', '25.724588');
INSERT INTO `feuer` VALUES ('435', '11', '0', '2137.838378', '-1232.392089', '25.127119');
INSERT INTO `feuer` VALUES ('436', '11', '0', '2138.982177', '-1232.893432', '25.008092');
INSERT INTO `feuer` VALUES ('437', '11', '0', '2138.921386', '-1231.633666', '24.814464');
INSERT INTO `feuer` VALUES ('438', '11', '0', '2139.125244', '-1232.231567', '21.477424');
INSERT INTO `feuer` VALUES ('439', '11', '0', '2136.799804', '-1231.79248', '21.47721');
INSERT INTO `feuer` VALUES ('440', '11', '0', '2134.473632', '-1232.763671', '21.921875');
INSERT INTO `feuer` VALUES ('441', '11', '0', '2132.590576', '-1232.268188', '21.921875');
INSERT INTO `feuer` VALUES ('442', '11', '0', '2130.771484', '-1232.506469', '21.921875');
INSERT INTO `feuer` VALUES ('443', '11', '0', '2129.423828', '-1232.012573', '21.477317');
INSERT INTO `feuer` VALUES ('444', '11', '0', '2128.229248', '-1232.510986', '21.477561');
INSERT INTO `feuer` VALUES ('445', '11', '0', '2127.051025', '-1232.352416', '21.477483');
INSERT INTO `feuer` VALUES ('446', '11', '0', '2127.329833', '-1234.467651', '21.478517');
INSERT INTO `feuer` VALUES ('447', '11', '0', '2128.062255', '-1234.67163', '22.280517');
INSERT INTO `feuer` VALUES ('448', '11', '0', '2128.062255', '-1234.67163', '23.500516');
INSERT INTO `feuer` VALUES ('449', '11', '0', '2128.062255', '-1234.67163', '25.464721');
INSERT INTO `feuer` VALUES ('450', '11', '0', '2138.558593', '-1231.804321', '21.477216');
INSERT INTO `feuer` VALUES ('451', '11', '0', '2138.978027', '-1232.770141', '21.477687');
INSERT INTO `feuer` VALUES ('452', '11', '0', '2140.784423', '-1231.728027', '21.47718');
INSERT INTO `feuer` VALUES ('453', '11', '0', '2141.450439', '-1233.002197', '21.477802');
INSERT INTO `feuer` VALUES ('454', '11', '0', '2141.834472', '-1233.262817', '22.777912');
INSERT INTO `feuer` VALUES ('455', '11', '0', '2143.14038', '-1234.427001', '22.482725');
INSERT INTO `feuer` VALUES ('456', '11', '0', '2144.219482', '-1235.644287', '22.480989');
INSERT INTO `feuer` VALUES ('457', '11', '0', '2143.617187', '-1237.225585', '22.485023');
INSERT INTO `feuer` VALUES ('458', '11', '0', '2144.678955', '-1238.490112', '22.483074');
INSERT INTO `feuer` VALUES ('459', '11', '0', '2146.96582', '-1238.38916', '21.948085');
INSERT INTO `feuer` VALUES ('460', '11', '0', '2147.062255', '-1236.6604', '21.842786');
INSERT INTO `feuer` VALUES ('461', '11', '0', '2148.378417', '-1236.290649', '21.820266');
INSERT INTO `feuer` VALUES ('462', '11', '0', '2150.525146', '-1236.41333', '21.81991');
INSERT INTO `feuer` VALUES ('463', '11', '0', '2147.256347', '-1234.933959', '21.737628');
INSERT INTO `feuer` VALUES ('464', '11', '0', '2148.549804', '-1234.248657', '21.695888');
INSERT INTO `feuer` VALUES ('465', '11', '0', '2150.571533', '-1235.370483', '21.756389');
INSERT INTO `feuer` VALUES ('466', '11', '0', '2147.157958', '-1232.62561', '21.597028');
INSERT INTO `feuer` VALUES ('467', '11', '0', '2147.599853', '-1231.428222', '21.524095');
INSERT INTO `feuer` VALUES ('468', '12', '0', '2217.120849', '-1175.047607', '24.233324');
INSERT INTO `feuer` VALUES ('469', '12', '0', '2217.550537', '-1177.264404', '24.226562');
INSERT INTO `feuer` VALUES ('470', '12', '0', '2216.296142', '-1176.979003', '24.226562');
INSERT INTO `feuer` VALUES ('471', '12', '0', '2215.402832', '-1175.86621', '24.233324');
INSERT INTO `feuer` VALUES ('472', '12', '0', '2216.040283', '-1175.475219', '25.099725');
INSERT INTO `feuer` VALUES ('473', '12', '0', '2216.040283', '-1175.475219', '28.411628');
INSERT INTO `feuer` VALUES ('474', '12', '0', '2216.040283', '-1175.475219', '29.963932');
INSERT INTO `feuer` VALUES ('475', '12', '0', '2216.040283', '-1175.475219', '32.34663');
INSERT INTO `feuer` VALUES ('476', '12', '0', '2216.245605', '-1175.544799', '33.541122');
INSERT INTO `feuer` VALUES ('477', '12', '0', '2218.936767', '-1176.456298', '33.574127');
INSERT INTO `feuer` VALUES ('478', '12', '0', '2218.73706', '-1179.990722', '27.297086');
INSERT INTO `feuer` VALUES ('479', '12', '0', '2217.413085', '-1180.267456', '27.297086');
INSERT INTO `feuer` VALUES ('480', '12', '0', '2215.726562', '-1179.943115', '27.297086');
INSERT INTO `feuer` VALUES ('481', '12', '0', '2213.829589', '-1179.931152', '27.297086');
INSERT INTO `feuer` VALUES ('482', '12', '0', '2211.673095', '-1179.448608', '27.297086');
INSERT INTO `feuer` VALUES ('483', '12', '0', '2210.849609', '-1179.549926', '27.297086');
INSERT INTO `feuer` VALUES ('484', '12', '0', '2209.427978', '-1179.315551', '27.297086');
INSERT INTO `feuer` VALUES ('485', '12', '0', '2208.298095', '-1180.013671', '27.297086');
INSERT INTO `feuer` VALUES ('486', '12', '0', '2205.453369', '-1179.332397', '27.297086');
INSERT INTO `feuer` VALUES ('487', '12', '0', '2202.197753', '-1179.775024', '27.297086');
INSERT INTO `feuer` VALUES ('488', '12', '0', '2201.500732', '-1177.488769', '27.296875');
INSERT INTO `feuer` VALUES ('489', '12', '0', '2201.895996', '-1175.439819', '27.296875');
INSERT INTO `feuer` VALUES ('490', '12', '0', '2202.523925', '-1173.453247', '27.296875');
INSERT INTO `feuer` VALUES ('491', '12', '0', '2202.522705', '-1170.6156', '27.296875');
INSERT INTO `feuer` VALUES ('492', '12', '0', '2201.919921', '-1169.43518', '27.296875');
INSERT INTO `feuer` VALUES ('493', '12', '0', '2202.466552', '-1166.924926', '27.296875');
INSERT INTO `feuer` VALUES ('494', '12', '0', '2201.503662', '-1164.812622', '27.296875');
INSERT INTO `feuer` VALUES ('495', '12', '0', '2201.781005', '-1159.405883', '27.296875');
INSERT INTO `feuer` VALUES ('496', '12', '0', '2202.210449', '-1162.20874', '27.296875');
INSERT INTO `feuer` VALUES ('497', '12', '0', '2202.523193', '-1157.726928', '27.296875');
INSERT INTO `feuer` VALUES ('498', '12', '0', '2202.17041', '-1155.300537', '27.296875');
INSERT INTO `feuer` VALUES ('499', '12', '0', '2203.621826', '-1155.343994', '26.2257');
INSERT INTO `feuer` VALUES ('500', '12', '0', '2203.97583', '-1155.343994', '23.347969');
INSERT INTO `feuer` VALUES ('501', '12', '0', '2206.160644', '-1154.873168', '23.236875');
INSERT INTO `feuer` VALUES ('502', '12', '0', '2206.113525', '-1152.674316', '23.239253');
INSERT INTO `feuer` VALUES ('503', '12', '0', '2203.336914', '-1152.924072', '23.252571');
INSERT INTO `feuer` VALUES ('504', '12', '0', '2201.399414', '-1152.411621', '23.365823');
INSERT INTO `feuer` VALUES ('505', '12', '0', '2201.481689', '-1155.998291', '23.367933');
INSERT INTO `feuer` VALUES ('506', '12', '0', '2201.651123', '-1159.071777', '23.372278');
INSERT INTO `feuer` VALUES ('507', '12', '0', '2201.800781', '-1161.803344', '23.376117');
INSERT INTO `feuer` VALUES ('508', '12', '0', '2203.812011', '-1163.346557', '23.24007');
INSERT INTO `feuer` VALUES ('509', '12', '0', '2206.996337', '-1162.929077', '23.226562');
INSERT INTO `feuer` VALUES ('510', '12', '0', '2207.619873', '-1165.341308', '23.226562');
INSERT INTO `feuer` VALUES ('511', '12', '0', '2209.647705', '-1165.287963', '23.226562');
INSERT INTO `feuer` VALUES ('512', '12', '0', '2210.252685', '-1167.66748', '23.226562');
INSERT INTO `feuer` VALUES ('513', '12', '0', '2208.710937', '-1169.822387', '23.226562');
INSERT INTO `feuer` VALUES ('514', '12', '0', '2210.588378', '-1171.295532', '23.226562');
INSERT INTO `feuer` VALUES ('515', '12', '0', '2213.228271', '-1172.551269', '23.226562');
INSERT INTO `feuer` VALUES ('516', '12', '0', '2214.908691', '-1171.76416', '23.226562');
INSERT INTO `feuer` VALUES ('517', '12', '0', '2217.229003', '-1172.781616', '23.229902');
INSERT INTO `feuer` VALUES ('518', '12', '0', '2218.314697', '-1173.348754', '23.726562');
INSERT INTO `feuer` VALUES ('519', '12', '0', '2219.489501', '-1175.392456', '23.726562');
INSERT INTO `feuer` VALUES ('520', '12', '0', '2220.888427', '-1175.419433', '23.226562');
INSERT INTO `feuer` VALUES ('521', '12', '0', '2221.153564', '-1173.086547', '23.226562');
INSERT INTO `feuer` VALUES ('522', '12', '0', '2223.262451', '-1172.507812', '23.226562');
INSERT INTO `feuer` VALUES ('523', '12', '0', '2223.826416', '-1174.5177', '23.226562');
INSERT INTO `feuer` VALUES ('524', '12', '0', '2225.208251', '-1174.544799', '23.226562');
INSERT INTO `feuer` VALUES ('525', '12', '0', '2225.889892', '-1177.325317', '23.226562');
INSERT INTO `feuer` VALUES ('526', '12', '0', '2224.187255', '-1178.079711', '23.226562');
INSERT INTO `feuer` VALUES ('527', '12', '0', '2224.270019', '-1180.069824', '23.390625');
INSERT INTO `feuer` VALUES ('528', '12', '0', '2226.013671', '-1180.415039', '23.390625');
INSERT INTO `feuer` VALUES ('529', '12', '0', '2228.082275', '-1180.163818', '23.390625');
INSERT INTO `feuer` VALUES ('530', '12', '0', '2229.364013', '-1179.870239', '23.390625');
INSERT INTO `feuer` VALUES ('531', '12', '0', '2231.407714', '-1179.980346', '23.390625');
INSERT INTO `feuer` VALUES ('532', '12', '0', '2231.164794', '-1178.902832', '23.226562');
INSERT INTO `feuer` VALUES ('533', '12', '0', '2228.76123', '-1178.328369', '23.226562');
INSERT INTO `feuer` VALUES ('534', '12', '0', '2227.824218', '-1176.383056', '23.226562');
INSERT INTO `feuer` VALUES ('535', '12', '0', '2229.194091', '-1176.988525', '23.226562');
INSERT INTO `feuer` VALUES ('536', '12', '0', '2231.476318', '-1176.005249', '23.243034');
INSERT INTO `feuer` VALUES ('537', '12', '0', '2232.6958', '-1175.140502', '23.397182');
INSERT INTO `feuer` VALUES ('538', '12', '0', '2232.056884', '-1173.252319', '23.390625');
INSERT INTO `feuer` VALUES ('539', '12', '0', '2230.096923', '-1172.209228', '23.244144');
INSERT INTO `feuer` VALUES ('540', '13', '0', '2069.336669', '-1577.986083', '10.95996');
INSERT INTO `feuer` VALUES ('541', '13', '0', '2071.810302', '-1579.345336', '10.960498');
INSERT INTO `feuer` VALUES ('542', '13', '0', '2072.867919', '-1581.524414', '10.967752');
INSERT INTO `feuer` VALUES ('543', '13', '0', '2070.440673', '-1581.520874', '10.973072');
INSERT INTO `feuer` VALUES ('544', '13', '0', '2068.420166', '-1583.771728', '10.984605');
INSERT INTO `feuer` VALUES ('545', '13', '0', '2069.467529', '-1585.61621', '10.98788');
INSERT INTO `feuer` VALUES ('546', '13', '0', '2071.628173', '-1586.640869', '10.992967');
INSERT INTO `feuer` VALUES ('547', '13', '0', '2073.5', '-1587.358764', '10.992009');
INSERT INTO `feuer` VALUES ('548', '13', '0', '2072.952636', '-1589.802612', '10.996397');
INSERT INTO `feuer` VALUES ('549', '13', '0', '2071.004638', '-1589.737426', '10.994414');
INSERT INTO `feuer` VALUES ('550', '13', '0', '2068.48999', '-1591.036621', '10.993544');
INSERT INTO `feuer` VALUES ('551', '13', '0', '2067.925292', '-1593.560302', '10.996074');
INSERT INTO `feuer` VALUES ('552', '13', '0', '2070.116455', '-1594.662841', '10.999561');
INSERT INTO `feuer` VALUES ('553', '13', '0', '2070.807617', '-1596.695068', '11.002717');
INSERT INTO `feuer` VALUES ('554', '13', '0', '2073.581054', '-1596.119384', '11.004723');
INSERT INTO `feuer` VALUES ('555', '13', '0', '2074.655761', '-1587.3125', '10.989265');
INSERT INTO `feuer` VALUES ('556', '13', '0', '2077.168945', '-1587.598754', '10.985');
INSERT INTO `feuer` VALUES ('557', '13', '0', '2077.900878', '-1585.677734', '10.974947');
INSERT INTO `feuer` VALUES ('558', '13', '0', '2080.221435', '-1585.972167', '10.971141');
INSERT INTO `feuer` VALUES ('559', '13', '0', '2080.40332', '-1587.437866', '10.977185');
INSERT INTO `feuer` VALUES ('560', '13', '0', '2080.360595', '-1585.840942', '11.932811');
INSERT INTO `feuer` VALUES ('561', '13', '0', '2080.361328', '-1587.283935', '12.032812');
INSERT INTO `feuer` VALUES ('562', '13', '0', '2080.361328', '-1587.283935', '13.132812');
INSERT INTO `feuer` VALUES ('563', '13', '0', '2081.64746', '-1587.285522', '10.9707');
INSERT INTO `feuer` VALUES ('564', '13', '0', '2083.390869', '-1585.981079', '10.959857');
INSERT INTO `feuer` VALUES ('565', '13', '0', '2084.493408', '-1583.730346', '10.946733');
INSERT INTO `feuer` VALUES ('566', '13', '0', '2083.230712', '-1582.312622', '10.944202');
INSERT INTO `feuer` VALUES ('567', '13', '0', '2083.678466', '-1579.408203', '10.930123');
INSERT INTO `feuer` VALUES ('568', '13', '0', '2082.627441', '-1576.951293', '10.922403');
INSERT INTO `feuer` VALUES ('569', '13', '0', '2083.25708', '-1574.294799', '10.908286');
INSERT INTO `feuer` VALUES ('570', '13', '0', '2080.551025', '-1574.135742', '10.916454');
INSERT INTO `feuer` VALUES ('571', '13', '0', '2079.790771', '-1572.291381', '10.908216');
INSERT INTO `feuer` VALUES ('572', '13', '0', '2079.125488', '-1569.883178', '10.896739');
INSERT INTO `feuer` VALUES ('573', '13', '0', '2077.779052', '-1568.745117', '10.893585');
INSERT INTO `feuer` VALUES ('574', '13', '0', '2076.24707', '-1569.923461', '10.903283');
INSERT INTO `feuer` VALUES ('575', '13', '0', '2074.787841', '-1572.146362', '10.918432');
INSERT INTO `feuer` VALUES ('576', '13', '0', '2072.838378', '-1570.910644', '10.916078');
INSERT INTO `feuer` VALUES ('577', '13', '0', '2070.368652', '-1571.640258', '10.925426');
INSERT INTO `feuer` VALUES ('578', '13', '0', '2068.220214', '-1573.574951', '10.940542');
INSERT INTO `feuer` VALUES ('579', '13', '0', '2066.530517', '-1572.367919', '10.93777');
INSERT INTO `feuer` VALUES ('580', '13', '0', '2064.060546', '-1573.511962', '10.949345');
INSERT INTO `feuer` VALUES ('581', '13', '0', '2063.514404', '-1571.711547', '10.942109');
INSERT INTO `feuer` VALUES ('582', '13', '0', '2063.584228', '-1569.385375', '10.937893');
INSERT INTO `feuer` VALUES ('583', '13', '0', '2065.267578', '-1568.113403', '10.929964');
INSERT INTO `feuer` VALUES ('584', '13', '0', '2065.906494', '-1569.583129', '10.930292');
INSERT INTO `feuer` VALUES ('585', '13', '0', '2067.842041', '-1568.714721', '10.92219');
INSERT INTO `feuer` VALUES ('586', '13', '0', '2068.331542', '-1567.103515', '11.932811');
INSERT INTO `feuer` VALUES ('587', '13', '0', '2068.331542', '-1567.106445', '12.032812');
INSERT INTO `feuer` VALUES ('588', '13', '0', '2070.360351', '-1567.239379', '10.913202');
INSERT INTO `feuer` VALUES ('589', '13', '0', '2072.001708', '-1568.039306', '10.906814');
INSERT INTO `feuer` VALUES ('590', '13', '0', '2073.423583', '-1568.866577', '10.903367');
INSERT INTO `feuer` VALUES ('591', '13', '0', '2075.294921', '-1568.071044', '10.89561');
INSERT INTO `feuer` VALUES ('592', '13', '0', '2076.387939', '-1595.56311', '15.289062');
INSERT INTO `feuer` VALUES ('593', '13', '0', '2076.252441', '-1592.981445', '15.289062');
INSERT INTO `feuer` VALUES ('594', '13', '0', '2075.405517', '-1590.120239', '15.289062');
INSERT INTO `feuer` VALUES ('595', '13', '0', '2077.46997', '-1590.180419', '15.289062');
INSERT INTO `feuer` VALUES ('596', '13', '0', '2080.307128', '-1590.515502', '15.289062');
INSERT INTO `feuer` VALUES ('597', '13', '0', '2080.096679', '-1593.276855', '15.289062');
INSERT INTO `feuer` VALUES ('598', '13', '0', '2080.578857', '-1596.057495', '15.289062');
INSERT INTO `feuer` VALUES ('599', '13', '0', '2061.123291', '-1588.898193', '15.289062');
INSERT INTO `feuer` VALUES ('600', '13', '0', '2062.721191', '-1589.363891', '15.289062');
INSERT INTO `feuer` VALUES ('601', '13', '0', '2064.924804', '-1590.203613', '15.289062');
INSERT INTO `feuer` VALUES ('602', '13', '0', '2066.716064', '-1588.421752', '15.289062');
INSERT INTO `feuer` VALUES ('603', '13', '0', '2066.114257', '-1591.696289', '15.289062');
INSERT INTO `feuer` VALUES ('604', '13', '0', '2065.804687', '-1594.692626', '15.289062');
INSERT INTO `feuer` VALUES ('605', '13', '0', '2066.071777', '-1595.79309', '15.289062');
INSERT INTO `feuer` VALUES ('606', '13', '0', '2063.519775', '-1596.178588', '15.289062');
INSERT INTO `feuer` VALUES ('607', '13', '0', '2061.290039', '-1595.961425', '15.289062');
INSERT INTO `feuer` VALUES ('608', '14', '0', '2149.131591', '-1800.505126', '11.064135');
INSERT INTO `feuer` VALUES ('609', '14', '0', '2148.667968', '-1797.142333', '12.255527');
INSERT INTO `feuer` VALUES ('610', '14', '0', '2146.75708', '-1796.588012', '12.249306');
INSERT INTO `feuer` VALUES ('611', '14', '0', '2147.355468', '-1799.055175', '13.314529');
INSERT INTO `feuer` VALUES ('612', '14', '0', '2147.909667', '-1802.10437', '13.651718');
INSERT INTO `feuer` VALUES ('613', '14', '0', '2145.015136', '-1802.711669', '13.640625');
INSERT INTO `feuer` VALUES ('614', '14', '0', '2142.001953', '-1803.171875', '13.647472');
INSERT INTO `feuer` VALUES ('615', '14', '0', '2140.978027', '-1803.256225', '14.174999');
INSERT INTO `feuer` VALUES ('616', '14', '0', '2139.480712', '-1802.517089', '16.378763');
INSERT INTO `feuer` VALUES ('617', '14', '0', '2138.848632', '-1804.374755', '16.37799');
INSERT INTO `feuer` VALUES ('618', '14', '0', '2136.898925', '-1805.023071', '16.37561');
INSERT INTO `feuer` VALUES ('619', '14', '0', '2136.147216', '-1802.686401', '16.374692');
INSERT INTO `feuer` VALUES ('620', '14', '0', '2137.056884', '-1800.580566', '16.375804');
INSERT INTO `feuer` VALUES ('621', '14', '0', '2139.717285', '-1799.169677', '16.379053');
INSERT INTO `feuer` VALUES ('622', '14', '0', '2141.954589', '-1799.662231', '16.381784');
INSERT INTO `feuer` VALUES ('623', '14', '0', '2144.836425', '-1797.103515', '16.385303');
INSERT INTO `feuer` VALUES ('624', '14', '0', '2142.894531', '-1795.345458', '16.38293');
INSERT INTO `feuer` VALUES ('625', '14', '0', '2144.108398', '-1792.430664', '16.377189');
INSERT INTO `feuer` VALUES ('626', '14', '0', '2146.565429', '-1793.137451', '16.378143');
INSERT INTO `feuer` VALUES ('627', '14', '0', '2150.23291', '-1796.634765', '12.590721');
INSERT INTO `feuer` VALUES ('628', '14', '0', '2152.252197', '-1803.292968', '11.066316');
INSERT INTO `feuer` VALUES ('629', '14', '0', '2153.547119', '-1804.711059', '11.067234');
INSERT INTO `feuer` VALUES ('630', '14', '0', '2153.248535', '-1807.303833', '11.047111');
INSERT INTO `feuer` VALUES ('631', '14', '0', '2152.212402', '-1809.499755', '11.047678');
INSERT INTO `feuer` VALUES ('632', '14', '0', '2153.62622', '-1811.237304', '11.049217');
INSERT INTO `feuer` VALUES ('633', '14', '0', '2152.158203', '-1813.762329', '11.049734');
INSERT INTO `feuer` VALUES ('634', '14', '0', '2154.180175', '-1814.47998', '11.046875');
INSERT INTO `feuer` VALUES ('635', '14', '0', '2156.17456', '-1814.745483', '11.046875');
INSERT INTO `feuer` VALUES ('636', '14', '0', '2156.732666', '-1813.376708', '11.046875');
INSERT INTO `feuer` VALUES ('637', '14', '0', '2158.087646', '-1812.560913', '11.046875');
INSERT INTO `feuer` VALUES ('638', '14', '0', '2159.056396', '-1814.693725', '11.046875');
INSERT INTO `feuer` VALUES ('639', '14', '0', '2159.644287', '-1814.443603', '11.046875');
INSERT INTO `feuer` VALUES ('640', '14', '0', '2161.347656', '-1814.035888', '11.046875');
INSERT INTO `feuer` VALUES ('641', '14', '0', '2161.938476', '-1812.161132', '11.046875');
INSERT INTO `feuer` VALUES ('642', '14', '0', '2162.605712', '-1809.965332', '10.875436');
INSERT INTO `feuer` VALUES ('643', '14', '0', '2161.424316', '-1809.480834', '10.874963');
INSERT INTO `feuer` VALUES ('644', '14', '0', '2159.877441', '-1808.387084', '10.873895');
INSERT INTO `feuer` VALUES ('645', '14', '0', '2158.24121', '-1807.01123', '10.884097');
INSERT INTO `feuer` VALUES ('646', '14', '0', '2157.257324', '-1809.093505', '10.874586');
INSERT INTO `feuer` VALUES ('647', '14', '0', '2156.308105', '-1810.174438', '10.87564');
INSERT INTO `feuer` VALUES ('648', '14', '0', '2153.056152', '-1810.666015', '11.540624');
INSERT INTO `feuer` VALUES ('649', '14', '0', '2151.780273', '-1810.402465', '13.650453');
INSERT INTO `feuer` VALUES ('650', '14', '0', '2151.786132', '-1808.704223', '13.650444');
INSERT INTO `feuer` VALUES ('651', '14', '0', '2152.079833', '-1806.366699', '13.649942');
INSERT INTO `feuer` VALUES ('652', '14', '0', '2150.568847', '-1804.020751', '13.652524');
INSERT INTO `feuer` VALUES ('653', '14', '0', '2151.049804', '-1802.860839', '13.651702');
INSERT INTO `feuer` VALUES ('654', '14', '0', '2149.392578', '-1802.991943', '13.654535');
INSERT INTO `feuer` VALUES ('655', '14', '0', '2148.503417', '-1804.433593', '13.646949');
INSERT INTO `feuer` VALUES ('656', '14', '0', '2149.626464', '-1806.353149', '13.646526');
INSERT INTO `feuer` VALUES ('657', '14', '0', '2146.540771', '-1806.509033', '13.640625');
INSERT INTO `feuer` VALUES ('658', '14', '0', '2147.03833', '-1808.070922', '13.640625');
INSERT INTO `feuer` VALUES ('659', '14', '0', '2148.965087', '-1810.518798', '13.640625');
INSERT INTO `feuer` VALUES ('660', '14', '0', '2147.324951', '-1812.091308', '13.640625');
INSERT INTO `feuer` VALUES ('661', '14', '0', '2149.072998', '-1813.49707', '13.640625');
INSERT INTO `feuer` VALUES ('662', '14', '0', '2149.410156', '-1815.46936', '13.640625');
INSERT INTO `feuer` VALUES ('663', '14', '0', '2146.986816', '-1816.466064', '13.640625');
INSERT INTO `feuer` VALUES ('664', '14', '0', '2147.064453', '-1818.67517', '13.640625');
INSERT INTO `feuer` VALUES ('665', '14', '0', '2149.027832', '-1819.103271', '13.640625');
INSERT INTO `feuer` VALUES ('666', '14', '0', '2149.92163', '-1818.2135', '13.640625');
INSERT INTO `feuer` VALUES ('667', '14', '0', '2151.269042', '-1816.92395', '13.640625');
INSERT INTO `feuer` VALUES ('668', '14', '0', '2153.545898', '-1817.008178', '13.640625');
INSERT INTO `feuer` VALUES ('669', '14', '0', '2153.828857', '-1818.27832', '13.640625');
INSERT INTO `feuer` VALUES ('670', '14', '0', '2156.691894', '-1819.696777', '13.640625');
INSERT INTO `feuer` VALUES ('671', '14', '0', '2157.702148', '-1818.081909', '13.640625');
INSERT INTO `feuer` VALUES ('672', '14', '0', '2159.122558', '-1816.333007', '13.640625');
INSERT INTO `feuer` VALUES ('673', '14', '0', '2161.931396', '-1816.693603', '13.640625');
INSERT INTO `feuer` VALUES ('674', '14', '0', '2162.032958', '-1818.795898', '13.640625');
INSERT INTO `feuer` VALUES ('675', '14', '0', '2163.398925', '-1819.561645', '13.640625');
INSERT INTO `feuer` VALUES ('676', '15', '0', '2262.163085', '-2255.169921', '11.046875');
INSERT INTO `feuer` VALUES ('677', '15', '0', '2258.780517', '-2254.634277', '11.046875');
INSERT INTO `feuer` VALUES ('678', '15', '0', '2257.912109', '-2256.992675', '11.046875');
INSERT INTO `feuer` VALUES ('679', '15', '0', '2257.879638', '-2260.235839', '11.046875');
INSERT INTO `feuer` VALUES ('680', '15', '0', '2258.283691', '-2260.835205', '12.199604');
INSERT INTO `feuer` VALUES ('681', '15', '0', '2259.641845', '-2261.088378', '14.299604');
INSERT INTO `feuer` VALUES ('682', '15', '0', '2261.380126', '-2261.136718', '14.299604');
INSERT INTO `feuer` VALUES ('683', '15', '0', '2261.710693', '-2260.126708', '14.299604');
INSERT INTO `feuer` VALUES ('684', '15', '0', '2263.065185', '-2259.147216', '14.299604');
INSERT INTO `feuer` VALUES ('685', '15', '0', '2264.440917', '-2257.453369', '14.299604');
INSERT INTO `feuer` VALUES ('686', '15', '0', '2263.906982', '-2256.492187', '14.299604');
INSERT INTO `feuer` VALUES ('687', '15', '0', '2260.051269', '-2253.430175', '11.046875');
INSERT INTO `feuer` VALUES ('688', '15', '0', '2257.892578', '-2252.061767', '11.046875');
INSERT INTO `feuer` VALUES ('689', '15', '0', '2256.204345', '-2249.800048', '11.221323');
INSERT INTO `feuer` VALUES ('690', '15', '0', '2255.939453', '-2250.778564', '11.264669');
INSERT INTO `feuer` VALUES ('691', '15', '0', '2255.709472', '-2253.432617', '12.740121');
INSERT INTO `feuer` VALUES ('692', '15', '0', '2253.718017', '-2252.576904', '14.547485');
INSERT INTO `feuer` VALUES ('693', '15', '0', '2253.018554', '-2252.379638', '13.142265');
INSERT INTO `feuer` VALUES ('694', '15', '0', '2253.461181', '-2253.16748', '15.242265');
INSERT INTO `feuer` VALUES ('695', '15', '0', '2251.199462', '-2251.804199', '12.264669');
INSERT INTO `feuer` VALUES ('696', '15', '0', '2249.074462', '-2250.103759', '12.264669');
INSERT INTO `feuer` VALUES ('697', '15', '0', '2247.844726', '-2250.214599', '12.754133');
INSERT INTO `feuer` VALUES ('698', '15', '0', '2247.403808', '-2252.70288', '13.754133');
INSERT INTO `feuer` VALUES ('699', '15', '0', '2244.398437', '-2254.583496', '12.264669');
INSERT INTO `feuer` VALUES ('700', '15', '0', '2241.274902', '-2257.110351', '14.308937');
INSERT INTO `feuer` VALUES ('701', '15', '0', '2242.45581', '-2257.819824', '13.368558');
INSERT INTO `feuer` VALUES ('702', '15', '0', '2243.510253', '-2258.723144', '14.308937');
INSERT INTO `feuer` VALUES ('703', '15', '0', '2244.916503', '-2259.951171', '13.372117');
INSERT INTO `feuer` VALUES ('704', '15', '0', '2246.541992', '-2260.895751', '13.258049');
INSERT INTO `feuer` VALUES ('705', '15', '0', '2247.415039', '-2261.675781', '12.264669');
INSERT INTO `feuer` VALUES ('706', '15', '0', '2249.679931', '-2263.712402', '13.199604');
INSERT INTO `feuer` VALUES ('707', '15', '0', '2250.750244', '-2264.710205', '14.299604');
INSERT INTO `feuer` VALUES ('708', '15', '0', '2252.424804', '-2263.281494', '14.299604');
INSERT INTO `feuer` VALUES ('709', '15', '0', '2253.935302', '-2262.45288', '14.299604');
INSERT INTO `feuer` VALUES ('710', '15', '0', '2254.40332', '-2260.871582', '14.299604');
INSERT INTO `feuer` VALUES ('711', '15', '0', '2252.650878', '-2258.825439', '11.046875');
INSERT INTO `feuer` VALUES ('712', '15', '0', '2251.430908', '-2261.106201', '11.046875');
INSERT INTO `feuer` VALUES ('713', '15', '0', '2249.657958', '-2263.254882', '11.046875');
INSERT INTO `feuer` VALUES ('714', '15', '0', '2247.621337', '-2264.483642', '11.046875');
INSERT INTO `feuer` VALUES ('715', '15', '0', '2246.378173', '-2265.990234', '11.046875');
INSERT INTO `feuer` VALUES ('716', '15', '0', '2245.689697', '-2265.464355', '11.264669');
INSERT INTO `feuer` VALUES ('717', '15', '0', '2243.784179', '-2263.49414', '12.264669');
INSERT INTO `feuer` VALUES ('718', '15', '0', '2240.994873', '-2262.049316', '12.264669');
INSERT INTO `feuer` VALUES ('719', '15', '0', '2239.185058', '-2263.577636', '12.264669');
INSERT INTO `feuer` VALUES ('720', '15', '0', '2237.530517', '-2261.99121', '12.264669');
INSERT INTO `feuer` VALUES ('721', '15', '0', '2238.169433', '-2260.110595', '12.264669');
INSERT INTO `feuer` VALUES ('722', '15', '0', '2238.561523', '-2257.841064', '12.264669');
INSERT INTO `feuer` VALUES ('723', '15', '0', '2236.071777', '-2259.493652', '12.264669');
INSERT INTO `feuer` VALUES ('724', '15', '0', '2233.915771', '-2261.31372', '12.264669');
INSERT INTO `feuer` VALUES ('725', '15', '0', '2234.087158', '-2262.803466', '12.264669');
INSERT INTO `feuer` VALUES ('726', '15', '0', '2234.410644', '-2265.023925', '12.264669');
INSERT INTO `feuer` VALUES ('727', '15', '0', '2236.592285', '-2266.263183', '12.264669');
INSERT INTO `feuer` VALUES ('728', '15', '0', '2236.442871', '-2268.632812', '12.264669');
INSERT INTO `feuer` VALUES ('729', '15', '0', '2238.669677', '-2268.384765', '12.264669');
INSERT INTO `feuer` VALUES ('730', '15', '0', '2240.340332', '-2269.15332', '12.264669');
INSERT INTO `feuer` VALUES ('731', '15', '0', '2242.485595', '-2267.689208', '14.301008');
INSERT INTO `feuer` VALUES ('732', '15', '0', '2242.096679', '-2267.300292', '15.301008');
INSERT INTO `feuer` VALUES ('733', '15', '0', '2240.186767', '-2267.406738', '15.301008');
INSERT INTO `feuer` VALUES ('734', '15', '0', '2239.183349', '-2266.816406', '15.301008');
INSERT INTO `feuer` VALUES ('735', '15', '0', '2240.81958', '-2265.755615', '15.301008');
INSERT INTO `feuer` VALUES ('736', '15', '0', '2237.946289', '-2257.877929', '12.264669');
INSERT INTO `feuer` VALUES ('737', '15', '0', '2266.0979', '-2259.854003', '11.046875');
INSERT INTO `feuer` VALUES ('738', '15', '0', '2263.939697', '-2261.643066', '11.046875');
INSERT INTO `feuer` VALUES ('739', '15', '0', '2261.594238', '-2263.890869', '11.046875');
INSERT INTO `feuer` VALUES ('740', '15', '0', '2262.493652', '-2265.373535', '12.264669');
INSERT INTO `feuer` VALUES ('741', '16', '0', '2776.731689', '-2411.766845', '11.1434');
INSERT INTO `feuer` VALUES ('742', '16', '0', '2777.095947', '-2409.604736', '11.1489');
INSERT INTO `feuer` VALUES ('743', '16', '0', '2775.764404', '-2408.120605', '11.142322');
INSERT INTO `feuer` VALUES ('744', '16', '0', '2774.930664', '-2405.943847', '11.814325');
INSERT INTO `feuer` VALUES ('745', '16', '0', '2776.447021', '-2405.935302', '11.814325');
INSERT INTO `feuer` VALUES ('746', '16', '0', '2776.635986', '-2408.016601', '11.148351');
INSERT INTO `feuer` VALUES ('747', '16', '0', '2778.812011', '-2407.885009', '11.135855');
INSERT INTO `feuer` VALUES ('748', '16', '0', '2781.068359', '-2405.929931', '11.814325');
INSERT INTO `feuer` VALUES ('749', '16', '0', '2782.635986', '-2407.961914', '11.134922');
INSERT INTO `feuer` VALUES ('750', '16', '0', '2782.635986', '-2407.961914', '12.434621');
INSERT INTO `feuer` VALUES ('751', '16', '0', '2782.537353', '-2412.003173', '12.434621');
INSERT INTO `feuer` VALUES ('752', '16', '0', '2782.537353', '-2412.003173', '13.804021');
INSERT INTO `feuer` VALUES ('753', '16', '0', '2784.207275', '-2412.73706', '15.172893');
INSERT INTO `feuer` VALUES ('754', '16', '0', '2784.084472', '-2412.158691', '15.172893');
INSERT INTO `feuer` VALUES ('755', '16', '0', '2779.38623', '-2413.845458', '11.135715');
INSERT INTO `feuer` VALUES ('756', '16', '0', '2779.250976', '-2415.239013', '11.135748');
INSERT INTO `feuer` VALUES ('757', '16', '0', '2781.397216', '-2415.649902', '11.135224');
INSERT INTO `feuer` VALUES ('758', '16', '0', '2783.051269', '-2414.605712', '11.13482');
INSERT INTO `feuer` VALUES ('759', '16', '0', '2784.741455', '-2414.800781', '11.134407');
INSERT INTO `feuer` VALUES ('760', '16', '0', '2785.914306', '-2413.749755', '11.13412');
INSERT INTO `feuer` VALUES ('761', '16', '0', '2785.696044', '-2412.259765', '11.134174');
INSERT INTO `feuer` VALUES ('762', '16', '0', '2787.414794', '-2410.208007', '11.133754');
INSERT INTO `feuer` VALUES ('763', '16', '0', '2786.13916', '-2408.726562', '11.134065');
INSERT INTO `feuer` VALUES ('764', '16', '0', '2786.127441', '-2407.261718', '11.134068');
INSERT INTO `feuer` VALUES ('765', '16', '0', '2787.257568', '-2405.936035', '11.814325');
INSERT INTO `feuer` VALUES ('766', '16', '0', '2788.48999', '-2406.465576', '11.814325');
INSERT INTO `feuer` VALUES ('767', '16', '0', '2789.376953', '-2406.981445', '11.133275');
INSERT INTO `feuer` VALUES ('768', '16', '0', '2790.730712', '-2408.58374', '11.132945');
INSERT INTO `feuer` VALUES ('769', '16', '0', '2790.654052', '-2409.770751', '11.132964');
INSERT INTO `feuer` VALUES ('770', '16', '0', '2790.548339', '-2411.25122', '11.132989');
INSERT INTO `feuer` VALUES ('771', '16', '0', '2790.376708', '-2412.806152', '11.133031');
INSERT INTO `feuer` VALUES ('772', '16', '0', '2791.589599', '-2414.227539', '11.132735');
INSERT INTO `feuer` VALUES ('773', '16', '0', '2794.126953', '-2413.885498', '11.132116');
INSERT INTO `feuer` VALUES ('774', '16', '0', '2793.963134', '-2412.352539', '11.132155');
INSERT INTO `feuer` VALUES ('775', '16', '0', '2795.318603', '-2411.056396', '11.131824');
INSERT INTO `feuer` VALUES ('776', '16', '0', '2794.139404', '-2409.342041', '11.132112');
INSERT INTO `feuer` VALUES ('777', '16', '0', '2794.173828', '-2408.063964', '11.132104');
INSERT INTO `feuer` VALUES ('778', '16', '0', '2795.423339', '-2406.952636', '11.131799');
INSERT INTO `feuer` VALUES ('779', '16', '0', '2796.37915', '-2408.301757', '12.003866');
INSERT INTO `feuer` VALUES ('780', '16', '0', '2796.527099', '-2410.919921', '12.003866');
INSERT INTO `feuer` VALUES ('781', '16', '0', '2796.260742', '-2414.628173', '11.131594');
INSERT INTO `feuer` VALUES ('782', '16', '0', '2794.06372', '-2416.208496', '11.132131');
INSERT INTO `feuer` VALUES ('783', '16', '0', '2796.182128', '-2418.598144', '11.131613');
INSERT INTO `feuer` VALUES ('784', '16', '0', '2794.035644', '-2420.643798', '11.132138');
INSERT INTO `feuer` VALUES ('785', '16', '0', '2791.678222', '-2420.183349', '11.132713');
INSERT INTO `feuer` VALUES ('786', '16', '0', '2791.031005', '-2421.794677', '11.132871');
INSERT INTO `feuer` VALUES ('787', '16', '0', '2788.665283', '-2421.239746', '11.133449');
INSERT INTO `feuer` VALUES ('788', '16', '0', '2785.811767', '-2420.38623', '11.134145');
INSERT INTO `feuer` VALUES ('789', '16', '0', '2785.655761', '-2422.730224', '11.134183');
INSERT INTO `feuer` VALUES ('790', '16', '0', '2786.592773', '-2425.110107', '11.133955');
INSERT INTO `feuer` VALUES ('791', '16', '0', '2787.841064', '-2424.952148', '11.13365');
INSERT INTO `feuer` VALUES ('792', '16', '0', '2790.256835', '-2426.230224', '11.13306');
INSERT INTO `feuer` VALUES ('793', '16', '0', '2789.8208', '-2428.466064', '11.133167');
INSERT INTO `feuer` VALUES ('794', '16', '0', '2787.899902', '-2428.113037', '11.133636');
INSERT INTO `feuer` VALUES ('795', '16', '0', '2785.610351', '-2428.495117', '11.134195');
INSERT INTO `feuer` VALUES ('796', '16', '0', '2784.542236', '-2419.888671', '11.134455');
INSERT INTO `feuer` VALUES ('797', '16', '0', '2783.068847', '-2417.22705', '11.134816');
INSERT INTO `feuer` VALUES ('798', '16', '0', '2780.770751', '-2418.780517', '11.135377');
INSERT INTO `feuer` VALUES ('799', '16', '0', '2778.95996', '-2420.541015', '11.135819');
INSERT INTO `feuer` VALUES ('800', '16', '0', '2776.494628', '-2419.979248', '11.136421');
INSERT INTO `feuer` VALUES ('801', '16', '0', '2776.325439', '-2421.987304', '11.136463');
INSERT INTO `feuer` VALUES ('802', '16', '0', '2776.332275', '-2424.425537', '11.136461');
INSERT INTO `feuer` VALUES ('803', '16', '0', '2776.402587', '-2426.576904', '11.136444');
INSERT INTO `feuer` VALUES ('804', '16', '0', '2776.376464', '-2427.855712', '11.13645');
INSERT INTO `feuer` VALUES ('805', '16', '0', '2777.812744', '-2428.147705', '11.136099');
INSERT INTO `feuer` VALUES ('806', '16', '0', '2780.89746', '-2427.070556', '11.135346');
INSERT INTO `feuer` VALUES ('807', '16', '0', '2782.041503', '-2428.598632', '11.135066');
INSERT INTO `feuer` VALUES ('808', '16', '0', '2782.440185', '-2425.812011', '11.134969');
INSERT INTO `feuer` VALUES ('809', '16', '0', '2781.299072', '-2423.39331', '11.135248');

-- ----------------------------
-- Table structure for `frakequip`
-- ----------------------------
DROP TABLE IF EXISTS `frakequip`;
CREATE TABLE `frakequip` (
  `frakid` int(11) NOT NULL,
  `Equip1Name` varchar(32) NOT NULL DEFAULT 'Equip1',
  `Equip2Name` varchar(32) NOT NULL DEFAULT 'Equip2',
  `Equip3Name` varchar(32) NOT NULL DEFAULT 'Equip3',
  `Equip1Waffe1` int(11) NOT NULL,
  `Equip1Waffe2` int(11) NOT NULL,
  `Equip1Waffe3` int(11) NOT NULL,
  `Equip1Waffe4` int(11) NOT NULL,
  `Equip1Waffe5` int(11) NOT NULL,
  `Equip2Waffe1` int(11) NOT NULL,
  `Equip2Waffe2` int(11) NOT NULL,
  `Equip2Waffe3` int(11) NOT NULL,
  `Equip2Waffe4` int(11) NOT NULL,
  `Equip2Waffe5` int(11) NOT NULL,
  `Equip3Waffe1` int(11) NOT NULL,
  `Equip3Waffe2` int(11) NOT NULL,
  `Equip3Waffe3` int(11) NOT NULL,
  `Equip3Waffe4` int(11) NOT NULL,
  `Equip3Waffe5` int(11) NOT NULL,
  `Equip1Rang` int(11) NOT NULL,
  `Equip2Rang` int(11) NOT NULL,
  `Equip3Rang` int(11) NOT NULL,
  PRIMARY KEY (`frakid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of frakequip
-- ----------------------------
INSERT INTO `frakequip` VALUES ('2', 'Streifendienst', 'Zoll-Einsatz', 'Spezialeinsatzkommando', '24', '24', '25', '25', '29', '3', '23', '24', '29', '25', '24', '25', '29', '31', '34', '1', '3', '4');
INSERT INTO `frakequip` VALUES ('6', 'Agent', 'Special Agent', 'SpecialSealTeam', '3', '23', '24', '29', '43', '3', '23', '24', '29', '31', '23', '24', '31', '34', '25', '0', '3', '5');

-- ----------------------------
-- Table structure for `frakinfos`
-- ----------------------------
DROP TABLE IF EXISTS `frakinfos`;
CREATE TABLE `frakinfos` (
  `FID` int(11) NOT NULL,
  `Members` int(11) NOT NULL DEFAULT '0',
  `Kasse` int(11) NOT NULL DEFAULT '0',
  `Mats` int(11) NOT NULL DEFAULT '0',
  `Bomben` int(11) NOT NULL,
  `WarGegner` int(11) NOT NULL DEFAULT '0',
  `WarPoints` int(11) NOT NULL DEFAULT '0',
  `GVerbrecher` int(11) NOT NULL DEFAULT '0',
  `UCPAllow` int(11) NOT NULL DEFAULT '1',
  `Beschreibung` varchar(1000) NOT NULL DEFAULT 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.',
  `Gehalt_Rang0` int(11) NOT NULL DEFAULT '0',
  `Gehalt_Rang1` int(11) NOT NULL DEFAULT '0',
  `Gehalt_Rang2` int(11) NOT NULL DEFAULT '0',
  `Gehalt_Rang3` int(11) NOT NULL DEFAULT '0',
  `Gehalt_Rang4` int(11) NOT NULL DEFAULT '0',
  `Gehalt_Rang5` int(11) NOT NULL DEFAULT '0',
  `Gehalt_Rang6` int(11) NOT NULL DEFAULT '0',
  `Gehalt_Rang7` int(11) NOT NULL DEFAULT '0',
  `Gehalt_TRang1` int(11) NOT NULL,
  `Gehalt_TRang2` int(11) NOT NULL,
  `Gehalt_TRang3` int(11) NOT NULL,
  `Gehalt_TRang4` int(11) NOT NULL,
  `Gehalt_TRang5` int(11) NOT NULL,
  `Gehalt_TRang6` int(11) NOT NULL,
  `Gehalt_TRang7` int(11) NOT NULL,
  `Bild` varchar(255) NOT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of frakinfos
-- ----------------------------
INSERT INTO `frakinfos` VALUES ('1', '1', '100000', '0', '0', '0', '0', '0', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('2', '35', '62880370', '0', '0', '0', '0', '4', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '1200', '1800', '2400', '3000', '3600', '4200', '4800', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('3', '2', '100000', '0', '0', '0', '0', '0', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('4', '1', '100000', '0', '0', '0', '0', '0', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('5', '25', '91450', '0', '0', '0', '0', '6', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '1200', '2800', '4200', '5600', '7000', '8400', '9800', '0', '0', '0', '0', '0', '0', '0', 'http://www10.pic-upload.de/19.08.12/cgjsldv1iatd.png');
INSERT INTO `frakinfos` VALUES ('6', '18', '89314750', '0', '0', '0', '0', '2', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '8000', '8000', '7000', '8500', '9000', '9500', '10000', '0', '0', '0', '0', '0', '0', '0', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/US-FBI-ShadedSeal.svg/2000px-US-FBI-ShadedSeal.svg.png');
INSERT INTO `frakinfos` VALUES ('7', '8', '90044970', '0', '0', '0', '0', '0', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '5000', '9000', '11000', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('8', '9', '100000', '0', '0', '0', '0', '0', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('9', '17', '56494', '3475', '2', '10', '6', '2', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('10', '6', '57184', '1615', '0', '9', '15', '0', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '1000000', '0', '0', '0', '0', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('11', '8', '3500', '1611', '0', '0', '0', '3', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('12', '3', '50000', '760', '0', '0', '0', '0', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('13', '1', '50000', '1000', '0', '0', '0', '0', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('14', '1', '52000', '6000', '0', '0', '0', '0', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('15', '3', '47250', '940', '0', '0', '0', '0', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '5000', '7000', '8000', '9000', '10000', '19000', '20000', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('16', '0', '50000', '1000', '0', '0', '0', '0', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('17', '1', '50000', '1000', '0', '0', '0', '0', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('18', '11', '12500', '1135', '0', '0', '0', '3', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `frakinfos` VALUES ('19', '16', '524099', '1000', '0', '0', '0', '9', '1', 'Die Fraktionsleitung hat keine Beschreibung Ã¼ber diese Fraktion angegeben.', '0', '500', '0', '0', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', '');

-- ----------------------------
-- Table structure for `freikaufpreise`
-- ----------------------------
DROP TABLE IF EXISTS `freikaufpreise`;
CREATE TABLE `freikaufpreise` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ModelID` int(11) NOT NULL,
  `Preis` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of freikaufpreise
-- ----------------------------

-- ----------------------------
-- Table structure for `gangzones`
-- ----------------------------
DROP TABLE IF EXISTS `gangzones`;
CREATE TABLE `gangzones` (
  `GID` int(11) NOT NULL,
  `GangzoneX1` double NOT NULL,
  `GangzoneY1` double NOT NULL,
  `GangzoneX2` double NOT NULL,
  `GangzoneY2` double NOT NULL,
  `Owner` int(11) NOT NULL,
  `Attacker` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Value` int(11) NOT NULL,
  `OwnerPunkte` int(11) NOT NULL,
  `AttackerPunkte` int(11) NOT NULL,
  `CTFX` double NOT NULL,
  `CTFY` double NOT NULL,
  `CTFZ` double NOT NULL,
  `LastFight` int(11) NOT NULL DEFAULT '0',
  `FightTime` int(11) NOT NULL DEFAULT '0',
  `Gebiet` int(11) NOT NULL,
  PRIMARY KEY (`GID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gangzones
-- ----------------------------
INSERT INTO `gangzones` VALUES ('1', '2406.3145', '-1880.8536', '2322.1038', '-1963.5065', '0', '0', '1', '3092412', '0', '0', '2378.0681', '-1935.3723', '12.5469', '0', '0', '0');
INSERT INTO `gangzones` VALUES ('2', '2708.7769', '-1973.3947', '2624.6135', '-2036.2955', '10', '0', '1', '3087005', '0', '0', '2635.0061', '-2001.9636', '12.5544', '0', '0', '0');
INSERT INTO `gangzones` VALUES ('3', '2281.1233', '-1394.5831', '2218.3196', '-1477.298', '11', '0', '1', '3092114', '0', '0', '2262.397', '-1433.0641', '23.0053', '0', '0', '0');
INSERT INTO `gangzones` VALUES ('4', '2056.4114', '-1146.033', '1862.2692', '-1250.6836', '18', '0', '1', '3060797', '6', '7', '1975.3965', '-1222.851', '19.0234', '0', '0', '0');
INSERT INTO `gangzones` VALUES ('5', '786.6033', '-1225.0721', '654.7806', '-1309.8972', '13', '0', '1', '3074932', '0', '0', '691.1516', '-1275.9996', '12.5604', '0', '0', '0');
INSERT INTO `gangzones` VALUES ('6', '778.9943', '319.7232', '684.3536', '239.0202', '14', '0', '1', '3092540', '0', '0', '721.6265', '303.864', '19.2344', '0', '0', '0');
INSERT INTO `gangzones` VALUES ('7', '288.214', '1485.384', '111.655', '1334.5895', '15', '0', '1', '3095009', '0', '0', '206.6583', '1399.3647', '9.5859', '0', '0', '0');
INSERT INTO `gangzones` VALUES ('8', '-1753.2544', '1309.2', '-1871.1774', '1261.9987', '16', '0', '1', '3095036', '0', '0', '-1813.6877', '1298.8423', '21.5625', '0', '0', '0');
INSERT INTO `gangzones` VALUES ('9', '-1358.058', '1507.2078', '-1487.5339', '1476.4266', '17', '0', '1', '3088624', '0', '0', '-1475.1718', '1489.4503', '7.2578', '0', '0', '0');

-- ----------------------------
-- Table structure for `garagen`
-- ----------------------------
DROP TABLE IF EXISTS `garagen`;
CREATE TABLE `garagen` (
  `ID` int(11) NOT NULL,
  `Besitzer` varchar(24) NOT NULL,
  `Preis` int(11) NOT NULL,
  `Ort` int(11) NOT NULL,
  `Locked` int(11) NOT NULL,
  `Mietbar` int(11) NOT NULL,
  `Miete` int(11) NOT NULL,
  `Pos_X` double NOT NULL,
  `Pos_Y` double NOT NULL,
  `Pos_Z` double NOT NULL,
  `OPos_X` double NOT NULL,
  `OPos_Y` double NOT NULL,
  `OPos_Z` double NOT NULL,
  `OPos_A` double NOT NULL,
  `Fahrzeug1` int(11) NOT NULL,
  `Fahrzeug2` int(11) NOT NULL,
  `Fahrzeug3` int(11) NOT NULL,
  `Fahrzeug4` int(11) NOT NULL,
  `Fahrzeug5` int(11) NOT NULL,
  `Fahrzeug6` int(11) NOT NULL,
  `Fahrzeug7` int(11) NOT NULL,
  `Fahrzeug8` int(11) NOT NULL,
  `Fahrzeug9` int(11) NOT NULL,
  `Fahrzeug10` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of garagen
-- ----------------------------
INSERT INTO `garagen` VALUES ('1', '', '225000', '1', '0', '0', '0', '1847.404174', '-1761.440429', '13.546875', '1848.816406', '-1757.857788', '13.167663', '94.352363', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('2', '', '225000', '1', '0', '0', '0', '1866.021362', '-1761.421875', '13.546875', '1866.088989', '-1758.035034', '13.166523', '91.028694', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('3', '', '225000', '1', '0', '0', '0', '1885.105834', '-1761.588378', '13.546875', '1885.470581', '-1757.816772', '13.166967', '90.915496', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('4', '', '225000', '1', '0', '0', '0', '1654.98767', '-1863.121582', '13.534399', '1655.496826', '-1868.076293', '13.16021', '89.47541', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('5', '', '225000', '1', '0', '0', '0', '1639.92395', '-1863.953125', '13.537779', '1639.965698', '-1868.022583', '13.161445', '89.689926', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('6', '', '225000', '1', '0', '0', '0', '1631.954711', '-1864.031372', '13.546875', '1631.859619', '-1868.013183', '13.164455', '89.758255', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('7', '', '225000', '1', '0', '0', '0', '1652.828857', '-1841.280761', '13.545263', '1646.81311', '-1837.123779', '13.249505', '92.105224', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('8', '', '225000', '1', '0', '0', '0', '1657.555297', '-1838.10498', '13.547192', '1653.275268', '-1833.154907', '13.254367', '52.659465', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('9', '', '225000', '1', '0', '0', '0', '1659.158813', '-1821.019409', '13.551077', '1653.916992', '-1820.922729', '13.247972', '90.524002', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('10', '', '225000', '1', '0', '0', '0', '1658.919067', '-1807.322998', '13.550726', '1654.034057', '-1806.754028', '13.24903', '87.649971', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('11', '', '225000', '1', '0', '0', '0', '1602.124145', '-1824.712158', '13.458395', '1605.54956', '-1824.298095', '13.172292', '271.21997', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('12', '', '225000', '1', '0', '0', '0', '1602.539672', '-1836.945922', '13.497717', '1605.66101', '-1835.909301', '13.208221', '275.41397', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('13', '', '225000', '1', '0', '0', '0', '1606.448852', '-1840.716552', '13.509072', '1613.231567', '-1840.655273', '13.22942', '268.501861', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('14', '', '225000', '1', '0', '0', '0', '1041.027709', '-1056.085327', '31.703125', '1041.340576', '-1052.414306', '31.408609', '359.605346', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('15', '', '225000', '1', '0', '0', '0', '1028.29602', '-1055.774902', '31.666507', '1028.992919', '-1050.015502', '31.34061', '359.892425', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('16', '', '225000', '1', '0', '0', '0', '1016.143127', '-1053.766479', '31.14377', '1015.924011', '-1050.369018', '31.268114', '0.665329', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('17', '', '225000', '1', '0', '0', '0', '1004.263183', '-1053.374511', '31.014911', '1004.394226', '-1049.561279', '31.021965', '2.166803', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('18', '', '225000', '1', '0', '0', '0', '1421.132202', '-917.17102', '36.046875', '1421.981323', '-923.691955', '35.735084', '172.757888', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('19', '', '225000', '1', '0', '0', '0', '1450.684082', '-922.574768', '37.593051', '1452.650878', '-927.803344', '37.087589', '171.125473', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `garagen` VALUES ('20', '', '1', '1', '0', '0', '0', '1806.982788', '-2288.874755', '-2.527086', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `grangnamen`
-- ----------------------------
DROP TABLE IF EXISTS `grangnamen`;
CREATE TABLE `grangnamen` (
  `gid` int(11) NOT NULL,
  `1` varchar(24) NOT NULL DEFAULT 'Rang 1',
  `2` varchar(24) NOT NULL DEFAULT 'Rang 2',
  `3` varchar(24) NOT NULL DEFAULT 'Rang 3',
  `4` varchar(24) NOT NULL DEFAULT 'Rang 4',
  `5` varchar(24) NOT NULL DEFAULT 'Rang 5',
  `6` varchar(24) NOT NULL DEFAULT 'Rang 6',
  `7` varchar(24) NOT NULL DEFAULT 'Rang 7',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grangnamen
-- ----------------------------
INSERT INTO `grangnamen` VALUES ('1', 'Strategic Team Agent', 'Intelligence Team Agent', 'Public Information Agent', 'Operation Agent', 'Counter Terrorism Agent', 'Deputy Director of DIA', 'Chief of DIA');
INSERT INTO `grangnamen` VALUES ('2', 'Security M1', 'Security M2', 'Security M3', 'Security Agent', 'Security Special Agent', 'Security Special Team', 'Security Director');
INSERT INTO `grangnamen` VALUES ('3', 'T.C Neuling', 'T.C', 'T.C', 'T.C', 'T.C', 'T.C', 'T.C PrÃ¤sident');

-- ----------------------------
-- Table structure for `gruppen`
-- ----------------------------
DROP TABLE IF EXISTS `gruppen`;
CREATE TABLE `gruppen` (
  `ID` int(11) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Kennzeichen` varchar(11) NOT NULL,
  `Kasse` int(11) NOT NULL,
  `GehaltUpgrade` int(11) NOT NULL,
  `Gehalt_Rang1` int(11) NOT NULL,
  `Gehalt_Rang2` int(11) NOT NULL,
  `Gehalt_Rang3` int(11) NOT NULL,
  `Gehalt_Rang4` int(11) NOT NULL,
  `Gehalt_Rang5` int(11) NOT NULL,
  `Gehalt_Rang6` int(11) NOT NULL,
  `Gehalt_Rang7` int(11) NOT NULL,
  `Bild` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gruppen
-- ----------------------------

-- ----------------------------
-- Table structure for `hauser`
-- ----------------------------
DROP TABLE IF EXISTS `hauser`;
CREATE TABLE `hauser` (
  `ID` int(11) NOT NULL,
  `Besitzer` varchar(24) NOT NULL,
  `Preis` int(11) NOT NULL,
  `Ort` int(11) NOT NULL,
  `Typ` int(11) NOT NULL,
  `Interior` int(11) NOT NULL,
  `Locked` int(11) NOT NULL,
  `Mietbar` int(11) NOT NULL,
  `Miete` int(11) NOT NULL,
  `Health` int(11) NOT NULL,
  `Pos_X` double NOT NULL,
  `Pos_Y` double NOT NULL,
  `Pos_Z` double NOT NULL,
  `IPos_X` double NOT NULL,
  `IPos_Y` double NOT NULL,
  `IPos_Z` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hauser
-- ----------------------------
INSERT INTO `hauser` VALUES ('1', '', '300000', '1', '1', '1', '0', '0', '0', '0', '1188.491333', '-1011.798706', '36.226699', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('2', '', '300000', '1', '1', '1', '0', '0', '0', '0', '1195.669555', '-1010.820861', '36.226699', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('3', '', '300000', '1', '1', '1', '0', '0', '0', '0', '1196.09497', '-1017.03955', '36.234375', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('4', '', '300000', '1', '1', '1', '0', '0', '0', '0', '1189.280029', '-1017.997802', '36.234375', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('5', '', '300000', '1', '1', '1', '0', '0', '0', '0', '1227.124023', '-1016.588317', '36.214309', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('6', '', '300000', '1', '1', '1', '0', '0', '0', '0', '1233.61621', '-1016.364013', '36.174411', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('7', '', '300000', '1', '1', '1', '0', '0', '0', '0', '1226.244384', '-1010.538208', '36.132785', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('8', '', '300000', '1', '1', '1', '0', '0', '0', '0', '1233.358032', '-1010.059143', '36.086036', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('9', '', '300000', '1', '1', '1', '0', '0', '0', '0', '1226.960083', '-1016.901123', '32.601562', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('10', '', '300000', '1', '1', '1', '0', '0', '0', '0', '1233.701782', '-1016.258422', '32.606651', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('11', '', '450000', '1', '2', '2', '1', '1', '5', '1', '2067.604492', '-1731.595458', '13.876157', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('12', '', '450000', '1', '2', '2', '0', '0', '0', '0', '2066.937255', '-1716.998535', '13.554683', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('13', '', '450000', '1', '2', '2', '1', '0', '0', '0', '2065.12622', '-1703.534423', '14.148437', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('14', '', '450000', '1', '2', '2', '0', '0', '0', '0', '2066.947753', '-1656.544921', '14.093161', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('15', '', '450000', '1', '2', '2', '0', '0', '0', '0', '2067.565429', '-1643.822021', '14.136316', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('16', '', '450000', '1', '2', '2', '0', '0', '0', '0', '2068.368652', '-1628.871948', '13.876157', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('17', '', '500000', '1', '2', '2', '0', '0', '0', '0', '2139.198974', '-1698.128417', '15.078443', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('18', '', '500000', '1', '2', '2', '0', '0', '0', '0', '2155.497802', '-1698.927856', '15.085937', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('19', '', '500000', '1', '2', '2', '1', '0', '0', '0', '2166.262207', '-1671.585693', '15.073861', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('20', '', '500000', '1', '2', '2', '1', '0', '0', '0', '2178.466552', '-1660.817749', '14.954196', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('21', '', '500000', '1', '2', '2', '0', '0', '0', '0', '2185.902099', '-1608.334472', '14.355303', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('22', '', '500000', '1', '2', '2', '0', '0', '0', '0', '2143.065185', '-1605.268432', '14.351562', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('23', '', '350000', '1', '1', '1', '0', '0', '0', '0', '2068.243652', '-1589.151733', '13.491003', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('24', '', '350000', '1', '1', '1', '0', '0', '0', '0', '2073.368896', '-1583.248657', '13.47423', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('25', '', '350000', '1', '1', '1', '0', '0', '0', '0', '2065.621582', '-1583.367431', '13.481378', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('26', '', '350000', '1', '1', '1', '0', '0', '0', '0', '2075.964111', '-1588.067871', '13.48971', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('27', '', '550000', '1', '2', '2', '0', '0', '0', '0', '2091.531738', '-1067.680297', '27.729553', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('28', '', '550000', '1', '2', '2', '0', '0', '0', '0', '2101.825439', '-1075.217773', '25.823419', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('29', '', '550000', '1', '2', '2', '0', '0', '0', '0', '2108.766357', '-1082.227294', '25.429924', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('30', '', '550000', '1', '2', '2', '0', '0', '0', '0', '2099.622558', '-1051.657714', '28.748813', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('31', '', '550000', '1', '2', '2', '0', '0', '0', '0', '2094.041992', '-1047.651733', '29.984626', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('32', '', '550000', '1', '2', '2', '0', '0', '0', '0', '2082.922851', '-1039.72644', '32.082832', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('33', '', '750000', '1', '2', '2', '0', '0', '0', '0', '1468.333007', '-905.913879', '54.835937', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('34', '', '950000', '1', '2', '2', '0', '0', '0', '0', '1536.131591', '-885.131103', '57.657482', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('35', '', '950000', '1', '2', '2', '0', '0', '0', '0', '1540.459228', '-851.632873', '64.336059', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('36', '', '950000', '1', '2', '2', '0', '0', '0', '0', '1534.908325', '-800.284545', '72.849456', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('37', '', '850000', '1', '2', '2', '0', '0', '0', '0', '1527.825439', '-772.76477', '80.578125', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('38', 'DevilIntel', '2500000', '1', '3', '7', '0', '1', '1', '1', '1496.993652', '-688.208557', '95.522529', '225.630997', '1022.47998', '1084.069946');
INSERT INTO `hauser` VALUES ('39', '', '1800000', '1', '2', '2', '0', '0', '0', '0', '1442.70642', '-628.932617', '95.718566', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('40', '', '1800000', '1', '3', '7', '0', '0', '0', '0', '989.811401', '-828.650573', '95.468574', '225.630997', '1022.47998', '1084.069946');
INSERT INTO `hauser` VALUES ('41', '', '1500000', '1', '2', '2', '0', '0', '0', '0', '1016.650512', '-763.361938', '112.563018', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('42', '', '1900000', '1', '2', '2', '0', '0', '0', '0', '891.246704', '-782.945678', '101.312416', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('43', '', '1200000', '1', '2', '2', '0', '0', '0', '0', '848.179748', '-745.726867', '94.969268', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('44', '', '1400000', '1', '2', '2', '0', '0', '0', '0', '808.229736', '-759.251342', '76.531364', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('45', '', '1100000', '1', '2', '2', '0', '0', '0', '0', '785.993957', '-828.011291', '70.289581', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('46', '', '150000', '3', '1', '1', '0', '0', '0', '0', '753.660339', '1973.254394', '5.699619', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('47', '', '150000', '3', '1', '1', '0', '0', '0', '0', '789.85852', '1974.165039', '5.738682', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('48', '', '150000', '3', '1', '1', '0', '0', '0', '0', '793.16748', '1991.540283', '5.793369', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('49', '', '150000', '3', '1', '1', '0', '0', '0', '0', '767.79718', '2007.592773', '6.066807', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('50', '', '60000', '3', '1', '1', '0', '0', '0', '0', '767.06195', '1989.728149', '5.335937', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('51', '', '60000', '3', '1', '1', '0', '0', '0', '0', '755.8703', '1958.525146', '5.335937', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('52', '', '60000', '3', '1', '1', '0', '0', '0', '0', '777.694519', '1937.622192', '5.57799', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('53', '', '150000', '3', '1', '1', '0', '0', '0', '0', '-1450.61499', '2691.176513', '56.176181', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('54', '', '150000', '3', '1', '1', '0', '0', '0', '0', '-1465.8656', '2693.114257', '56.269931', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('55', '', '150000', '3', '2', '2', '0', '0', '0', '0', '-1491.517822', '2685.678222', '55.859375', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('56', '', '150000', '3', '2', '2', '0', '0', '0', '0', '-1511.795043', '2695.358398', '55.872341', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('57', '', '150000', '3', '1', '1', '0', '0', '0', '0', '-1476.181884', '2563.298583', '56.176181', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('58', '', '150000', '3', '1', '1', '0', '0', '0', '0', '-1478.81665', '2547.343505', '56.254306', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('59', '', '460000', '2', '2', '2', '0', '0', '0', '0', '-2654.152832', '200.841812', '5', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('60', '', '480000', '2', '2', '2', '0', '0', '0', '0', '-2660.732177', '200.458374', '7.195312', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('61', '', '440000', '2', '2', '2', '0', '0', '0', '0', '-2672.298583', '200.822525', '5', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('62', '', '490000', '2', '2', '2', '0', '0', '0', '0', '-2678.158447', '200.352416', '7.195312', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('63', '', '450000', '2', '2', '2', '0', '0', '0', '0', '-2688.933593', '197.830612', '7.203125', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('64', '', '160000', '2', '1', '1', '0', '0', '0', '0', '-2044.954589', '-2522.519042', '31.066806', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('65', '', '160000', '2', '1', '1', '0', '0', '0', '0', '-2052.960693', '-2544.572509', '31.066806', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('66', '', '160000', '2', '1', '1', '0', '0', '0', '0', '-2069.308349', '-2561.576171', '31.066806', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('67', '', '160000', '2', '1', '1', '0', '0', '0', '0', '-2081.91455', '-2548.276611', '30.841997', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('68', '', '160000', '2', '1', '1', '0', '0', '0', '0', '-2075.206298', '-2526.480957', '31.066806', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('69', '', '160000', '2', '1', '1', '0', '0', '0', '0', '-2058.249267', '-2503.766601', '31.066806', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('70', '', '160000', '2', '1', '1', '0', '0', '0', '0', '-2069.270996', '-2494.967773', '31.066806', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('71', '', '160000', '2', '1', '1', '0', '0', '0', '0', '-2087.155517', '-2510.706298', '31.066806', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('72', '', '160000', '2', '1', '1', '0', '0', '0', '0', '-2101.253906', '-2532.513671', '31.066806', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('73', '', '380000', '2', '2', '2', '0', '0', '0', '0', '-2134.601806', '-2504.504638', '31.81627', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('74', '', '320000', '2', '2', '2', '0', '0', '0', '0', '-2161.318115', '-2535.474121', '31.81627', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('75', '', '320000', '2', '2', '2', '0', '0', '0', '0', '-2181.098876', '-2519.918701', '31.81627', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('76', '', '320000', '2', '2', '2', '0', '0', '0', '0', '-2192.767578', '-2510.351074', '31.816272', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('77', '', '320000', '2', '2', '2', '0', '0', '0', '0', '-2173.89038', '-2481.480224', '31.816272', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('78', '', '320000', '2', '2', '2', '0', '0', '0', '0', '-2227.871093', '-2489.058105', '31.816272', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('79', '', '318000', '2', '2', '2', '0', '0', '0', '0', '-2214.073974', '-2451.929199', '31.81627', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('80', '', '278000', '2', '2', '2', '0', '0', '0', '0', '-2239.074218', '-2423.912841', '32.707267', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('81', '', '318000', '2', '2', '2', '0', '0', '0', '0', '-2220.155029', '-2400.115234', '32.582267', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('82', '', '370000', '1', '2', '2', '0', '0', '0', '0', '736.678222', '-556.717895', '18.012926', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('83', '', '320000', '1', '2', '2', '0', '0', '0', '0', '766.618591', '-556.783874', '18.012924', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('84', '', '370000', '1', '2', '2', '0', '0', '0', '0', '768.06958', '-503.484741', '18.012926', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('85', '', '340000', '1', '2', '2', '0', '0', '0', '0', '794.908813', '-506.568237', '18.012922', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('86', '', '320000', '1', '2', '2', '0', '0', '0', '0', '818.149169', '-509.626892', '18.012922', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('87', '', '210000', '1', '1', '1', '0', '0', '0', '0', '759.185791', '-591.778076', '18.013332', '223.043991', '1289.259888', '1082.199951');
INSERT INTO `hauser` VALUES ('88', '', '390000', '1', '2', '2', '0', '0', '0', '0', '745.19104', '-590.883056', '18.012922', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('89', '', '240000', '1', '2', '2', '0', '0', '0', '0', '1421.631103', '-885.74707', '50.668472', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('90', '', '2200000', '1', '3', '7', '0', '0', '0', '0', '1259.398315', '-785.357727', '92.03125', '225.630997', '1022.47998', '1084.069946');
INSERT INTO `hauser` VALUES ('91', 'Daniel_LeMarc', '2800000', '1', '3', '7', '1', '0', '0', '0', '1093.948486', '-807.125976', '107.419219', '225.630997', '1022.47998', '1084.069946');
INSERT INTO `hauser` VALUES ('92', '', '280000', '1', '2', '2', '0', '0', '0', '0', '1853.85852', '-1914.946166', '15.256797', '225.756989', '1240', '1082.149902');
INSERT INTO `hauser` VALUES ('93', 'Tyrael', '380000', '1', '2', '2', '0', '1', '500', '0', '1440.735961', '-926.586303', '39.640625', '225.756989', '1240', '1082.149902');

-- ----------------------------
-- Table structure for `jobinfos`
-- ----------------------------
DROP TABLE IF EXISTS `jobinfos`;
CREATE TABLE `jobinfos` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Gehalt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jobinfos
-- ----------------------------
INSERT INTO `jobinfos` VALUES ('1', '1500');
INSERT INTO `jobinfos` VALUES ('2', '2900');
INSERT INTO `jobinfos` VALUES ('3', '1500');
INSERT INTO `jobinfos` VALUES ('4', '3200');
INSERT INTO `jobinfos` VALUES ('5', '3000');
INSERT INTO `jobinfos` VALUES ('6', '5000');
INSERT INTO `jobinfos` VALUES ('7', '4000');

-- ----------------------------
-- Table structure for `oldtickets`
-- ----------------------------
DROP TABLE IF EXISTS `oldtickets`;
CREATE TABLE `oldtickets` (
  `ID` int(11) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Text` varchar(128) NOT NULL,
  `Uhrzeit` varchar(16) NOT NULL,
  `Datum` varchar(16) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oldtickets
-- ----------------------------

-- ----------------------------
-- Table structure for `rangnamen`
-- ----------------------------
DROP TABLE IF EXISTS `rangnamen`;
CREATE TABLE `rangnamen` (
  `frakid` int(11) NOT NULL,
  `1` varchar(24) NOT NULL DEFAULT 'Rang 1',
  `2` varchar(24) NOT NULL DEFAULT 'Rang 2',
  `3` varchar(24) NOT NULL DEFAULT 'Rang 3',
  `4` varchar(24) NOT NULL DEFAULT 'Rang 4',
  `5` varchar(24) NOT NULL DEFAULT 'Rang 5',
  `6` varchar(24) NOT NULL DEFAULT 'Co-Leader',
  `7` varchar(24) NOT NULL DEFAULT 'Leader',
  `T1` varchar(24) NOT NULL DEFAULT 'Rang 1',
  `T2` varchar(24) NOT NULL DEFAULT 'Rang 2',
  `T3` varchar(24) NOT NULL DEFAULT 'Rang 3',
  `T4` varchar(24) NOT NULL DEFAULT 'Rang 4',
  `T5` varchar(24) NOT NULL DEFAULT 'Rang 5',
  `T6` varchar(24) NOT NULL DEFAULT 'Rang 6',
  `T7` varchar(24) NOT NULL DEFAULT 'Rang 7',
  PRIMARY KEY (`frakid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rangnamen
-- ----------------------------
INSERT INTO `rangnamen` VALUES ('1', 'Rang 1', 'Rang 2', 'Rang 3', 'Rang 4', 'Rang 5', 'Co-Leader', 'Leader', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('2', 'Trainee', 'Police Officer I', 'Detective', 'Captain', 'Commander', 'Assistant Chief', 'Chief of Police', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('3', 'Rang 1', 'Rang 2', 'Rang 3', 'Rang 4', 'Rang 5', 'Co-Leader', 'Leader', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('4', 'Rang 1', 'Rang 2', 'Rang 3', 'Rang 4', 'Rang 5', 'Co-Leader', 'Leader', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('5', 'Praktikant', 'Azubi', 'Rang 3', 'Rang 4', 'Spezialist', 'Chefarzt', 'Oberarzt', 'Trainee', 'Firefighter I', 'Firefighter II', 'Engineer', 'Battalion Chief', 'Assistant Chief of Fire', 'Chief of Fire');
INSERT INTO `rangnamen` VALUES ('6', 'Special Agent', 'Undercover Agent', 'Einsatzpilot', 'Special Seal Agent', 'Operation Agent', 'Deputy Director', 'Director', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('7', 'Azubi', 'Gelehrter', 'Mechaniker', 'Meister', 'Abteilunsleiter', 'Ordnungsverwalter', 'Dienststellenleiter', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('8', 'Rang 1', 'Rang 2', 'Rang 3', 'Rang 4', 'Rang 5', 'Co-Leader', 'Leader', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('9', 'Rang 1', 'Rang 2', 'Rang 3', 'Rang 4', 'Rang 5', 'Godfather', 'Godfather of God', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('10', 'Newcomer', 'Hustler', 'Thug Life', 'Smoker', 'Rustler', 'lil\'G', 'O.G', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('11', 'Rang 1', 'Rang 2', 'Rang 3', 'Rang 4', 'Rang 5', 'Co-Leader', 'Leader', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('12', 'Zahnstocher', 'Schuhputzer', 'Novicio', 'Mafiosi', 'Ausbilder', 'Stellvertretender Don', 'Don', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('13', 'Rang 1', 'Rang 2', 'Rang 3', 'Rang 4', 'Rang 5', 'Co-Leader', 'Leader', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('14', 'Rang 1', 'Rang 2', 'Rang 3', 'Rang 4', 'Rang 5', 'Co-Leader', 'Leader', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('15', 'Arjukiou', 'Skatei', 'Kyodai', 'Shotolum', 'Kinsai-Kai', 'Ansatsu-Cha', 'Oyabun', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('16', 'Rang 1', 'Rang 2', 'Rang 3', 'Rang 4', 'Rang 5', 'Co-Leader', 'Leader', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('17', 'Rang 1', 'Rang 2', 'Rang 3', 'Rang 4', 'Rang 5', 'Co-Leader', 'Leader', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('18', 'Neuling', 'Rang 2', 'Rang 3', 'Rang 4', 'Rang 5', 'Co-Leader', 'Der Russe', '', '', '', '', '', '', '');
INSERT INTO `rangnamen` VALUES ('19', 'Agent', 'Silent-Agent', 'Elite-Agent', 'Assassin', 'Silent-Assassin', 'Elite-Assassin', 'Master-Assassin', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `records`
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records` (
  `Name` varchar(30) NOT NULL,
  `Record` int(11) NOT NULL,
  `Day` int(11) NOT NULL,
  `Month` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Second` int(11) NOT NULL,
  `Minute` int(11) NOT NULL,
  `Hour` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of records
-- ----------------------------

-- ----------------------------
-- Table structure for `skinordnung`
-- ----------------------------
DROP TABLE IF EXISTS `skinordnung`;
CREATE TABLE `skinordnung` (
  `frakid` int(11) NOT NULL,
  `Rang1` int(11) NOT NULL,
  `Rang2` int(11) NOT NULL,
  `Rang3` int(11) NOT NULL,
  `Rang4` int(11) NOT NULL,
  `Rang5` int(11) NOT NULL,
  `Rang6` int(11) NOT NULL,
  `Rang7` int(11) NOT NULL,
  `TRang1` int(11) NOT NULL,
  `TRang2` int(11) NOT NULL,
  `TRang3` int(11) NOT NULL,
  `TRang4` int(11) NOT NULL,
  `TRang5` int(11) NOT NULL,
  `TRang6` int(11) NOT NULL,
  `TRang7` int(11) NOT NULL,
  PRIMARY KEY (`frakid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of skinordnung
-- ----------------------------
INSERT INTO `skinordnung` VALUES ('1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('2', '281', '282', '282', '288', '283', '288', '283', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('5', '276', '275', '275', '274', '274', '70', '70', '277', '0', '0', '0', '0', '0', '279');
INSERT INTO `skinordnung` VALUES ('6', '286', '286', '286', '285', '164', '165', '166', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('7', '71', '71', '71', '71', '71', '71', '50', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('9', '106', '0', '0', '269', '0', '271', '271', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('10', '185', '185', '104', '103', '103', '102', '102', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('11', '109', '109', '109', '109', '110', '108', '108', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('12', '115', '115', '116', '116', '116', '114', '114', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('15', '121', '121', '121', '122', '122', '123', '123', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('18', '124', '124', '124', '124', '124', '126', '112', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `skinordnung` VALUES ('19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `stores`
-- ----------------------------
DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `ID` int(11) NOT NULL,
  `Besitzer` varchar(24) NOT NULL,
  `Preis` int(11) NOT NULL,
  `Pos_X` double NOT NULL,
  `Pos_Y` double NOT NULL,
  `Pos_Z` double NOT NULL,
  `Kasse` int(11) NOT NULL DEFAULT '0',
  `Navi` int(11) NOT NULL DEFAULT '0',
  `Handy` int(11) NOT NULL DEFAULT '0',
  `Telefonbuch` int(11) NOT NULL,
  `Repairkit` int(11) NOT NULL,
  `MP3Player` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stores
-- ----------------------------
INSERT INTO `stores` VALUES ('1', '', '280000', '1352.285156', '-1758.549926', '13.507812', '0', '0', '0', '0', '0', '0');
INSERT INTO `stores` VALUES ('2', '', '280000', '1833.220092', '-1842.541503', '13.578125', '0', '0', '0', '0', '0', '0');
INSERT INTO `stores` VALUES ('3', '', '280000', '1315.542602', '-899.333435', '39.578125', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `suptickets`
-- ----------------------------
DROP TABLE IF EXISTS `suptickets`;
CREATE TABLE `suptickets` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(24) NOT NULL,
  `Text` varchar(164) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of suptickets
-- ----------------------------

-- ----------------------------
-- Table structure for `tankstellen`
-- ----------------------------
DROP TABLE IF EXISTS `tankstellen`;
CREATE TABLE `tankstellen` (
  `ID` int(11) NOT NULL,
  `Besitzer` varchar(24) NOT NULL,
  `Preis` int(11) NOT NULL,
  `Beschreibung` varchar(15) NOT NULL DEFAULT 'Petrol Station',
  `TPos_X1` double NOT NULL,
  `TPos_Y1` double NOT NULL,
  `TPos_Z1` double NOT NULL,
  `TPos_X2` double NOT NULL,
  `TPos_Y2` double NOT NULL,
  `TPos_Z2` double NOT NULL,
  `EPos_X` double NOT NULL,
  `EPos_Y` double NOT NULL,
  `EPos_Z` double NOT NULL,
  `S_PosX` double NOT NULL,
  `S_PosY` double NOT NULL,
  `S_PosZ` double NOT NULL,
  `S_PosR` double NOT NULL,
  `Benzin` int(11) NOT NULL DEFAULT '0',
  `Benzin Preis` int(11) NOT NULL DEFAULT '0',
  `Benzin Liter` int(11) NOT NULL DEFAULT '0',
  `Diesel` int(11) NOT NULL DEFAULT '0',
  `Diesel Preis` int(11) NOT NULL DEFAULT '0',
  `Diesel Liter` int(11) NOT NULL DEFAULT '0',
  `Kerosin` int(11) NOT NULL DEFAULT '0',
  `Kerosin Preis` int(11) NOT NULL DEFAULT '0',
  `Kerosin Liter` int(11) NOT NULL DEFAULT '0',
  `Kasse` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tankstellen
-- ----------------------------
INSERT INTO `tankstellen` VALUES ('1', '', '400000', 'T.C Tankstelle', '1944.050048', '-1774.610717', '13.390598', '1939.189575', '-1772.728637', '13.382812', '1929.544677', '-1776.140747', '13.546875', '1953.978515', '-1775.527465', '16.546875', '358.037353', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('2', '', '850000', 'Petrol Station', '1001.642822', '-934.17749', '42.179687', '1004.676147', '-940.409606', '42.179687', '1000.087341', '-920.203796', '42.328125', '1011.976623', '-947.444396', '45.3125', '95.438476', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('3', '', '500000', 'ROCE SECURITY', '1862.753662', '-2387.442626', '13.554687', '0', '0', '0', '1878.165283', '-2375.941162', '13.635999', '1852.718017', '-2384.93457', '16.554687', '74.713104', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('4', '', '350000', 'Petrol Station', '658.382751', '-561.38739', '16.335937', '652.621643', '-569.286315', '16.335937', '661.130493', '-573.699584', '16.335937', '649.334289', '-550.607849', '19.262317', '3.103874', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('5', '', '350000', 'Petrol Station', '-94.63121', '-1175.373046', '2.268259', '-89.448524', '-1164.917236', '2.324742', '-78.888679', '-1169.755126', '2.148351', '-99.395828', '-1155.526123', '5.072594', '151.777603', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('6', '', '350000', 'Petrol Station', '-2239.983398', '-2562.378417', '31.921875', '-2244.526611', '-2561.085693', '31.921875', '-2231.933593', '-2558.055419', '31.921875', '-2254.985107', '-2572.146728', '35.406925', '169.963531', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('7', '', '350000', 'Petrol Station', '-1608.861938', '-2718.819091', '48.539062', '-1605.446899', '-2714.280273', '48.533473', '-1561.898193', '-2733.44458', '48.743457', '-1626.042846', '-2719.333007', '51.715324', '237.073394', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('8', '', '350000', 'Petrol Station', '-2029.046997', '157.820953', '28.835937', '-2024.041259', '157.014511', '28.835937', '-2032.975219', '161.512115', '29.046106', '-1683.953125', '387.886962', '10.179687', '136.387725', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('9', '', '350000', 'Petrol Station', '-1677.833374', '420.560455', '7.179687', '-1672.066528', '415.094055', '7.179687', '-1675.939208', '431.726043', '7.179687', '-1687.506469', '384.046691', '10.179687', '315.128448', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('10', '', '350000', 'Petrol Station', '-2413.463867', '974.741699', '45.296875', '-2407.608154', '975.394836', '45.296875', '-2420.154785', '969.918457', '45.296875', '-2400.309326', '951.403625', '48.296875', '175.468704', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('11', '', '350000', 'Petrol Station', '2114.633544', '922.690979', '10.820312', '2115.071289', '911.989868', '10.820312', '2117.326171', '896.778442', '11.179687', '2136.118408', '916.965026', '14.21875', '180.344345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('12', '', '350000', 'Petrol Station', '2640.003173', '1114.106811', '10.820312', '2640.025146', '1103.231689', '10.820312', '2637.186767', '1129.675781', '11.179687', '2618.645263', '1111.156494', '14.21875', '1.155213', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('13', '', '350000', 'Petrol Station', '2148.050048', '2740.587646', '10.820312', '2147.570312', '2751.137695', '10.820312', '2150.535888', '2733.865722', '11.176349', '2153.202148', '2761.820068', '14.179687', '90.456283', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('14', '', '350000', 'Petrol Station', '2194.827148', '2474.072998', '10.820312', '2206.144287', '2474.389404', '10.820312', '2188.13916', '2469.684814', '11.242187', '2215.064697', '2475.997802', '14.209033', '1.484771', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('15', '', '350000', 'Petrol Station', '1595.802734', '2206.16333', '10.820312', '1595.893676', '2195.986083', '10.820312', '1599.552734', '2221.314453', '11.0625', '1593.210083', '2183.287353', '14.060997', '265.439147', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('16', '', '250000', 'Petrol Station', '621.724182', '1681.093139', '6.992187', '618.365722', '1686.533081', '6.992187', '638.821472', '1683.937133', '7.1875', '614.207092', '1721.312622', '9.909277', '313.497528', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('17', '', '250000', 'Petrol Station', '-1465.037719', '1862.63269', '32.632812', '-1476.599243', '1865.120971', '32.632812', '-1465.767456', '1873.213256', '32.632812', '-1489.670166', '1853.051147', '34.993988', '86.685073', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tankstellen` VALUES ('18', '', '250000', 'Petrol Station', '-1327.960937', '2682.549316', '50.0625', '-1328.448364', '2676.884033', '50.0625', '-1320.428588', '2698.68164', '50.266281', '-1350.08081', '2660.762207', '54.25135', '222.974777', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `timebans`
-- ----------------------------
DROP TABLE IF EXISTS `timebans`;
CREATE TABLE `timebans` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(24) NOT NULL,
  `Teammitglied` varchar(24) NOT NULL,
  `Bangrund` varchar(64) NOT NULL,
  `Uhrzeit` varchar(16) NOT NULL,
  `Datum` varchar(16) NOT NULL,
  `serv_Data` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of timebans
-- ----------------------------

-- ----------------------------
-- Table structure for `vehicles`
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ModelID` int(11) NOT NULL,
  `PositionX` double NOT NULL,
  `PositionY` double NOT NULL,
  `PositionZ` double NOT NULL,
  `PositionA` double NOT NULL,
  `Farbe1` int(11) NOT NULL,
  `Farbe2` int(11) NOT NULL,
  `Paintjob` int(11) NOT NULL DEFAULT '3',
  `Fraktion` int(11) NOT NULL,
  `Gruppe` int(11) NOT NULL,
  `Autohaus` int(11) NOT NULL,
  `Nebenjob` int(11) NOT NULL,
  `Fahrschule` int(11) NOT NULL,
  `Garage` int(11) NOT NULL,
  `GPark` int(11) NOT NULL,
  `JobEXP` int(11) NOT NULL,
  `Besitzer` varchar(24) NOT NULL,
  `Kennzeichen` varchar(10) NOT NULL,
  `Abgeschleppt` int(11) NOT NULL,
  `Parkkralle` int(11) NOT NULL,
  `Kilometer` int(11) NOT NULL,
  `Tank` double NOT NULL,
  `Rang` int(11) NOT NULL,
  `Preis` int(11) NOT NULL,
  `Neon` int(11) NOT NULL DEFAULT '0',
  `Spoiler` int(11) NOT NULL DEFAULT '0',
  `Hood` int(11) NOT NULL,
  `Roof` int(11) NOT NULL,
  `Sideskirt` int(11) NOT NULL,
  `Lamps` int(11) NOT NULL,
  `Nitro` int(11) NOT NULL,
  `Exhaust` int(11) NOT NULL,
  `Wheels` int(11) NOT NULL,
  `Stereo` int(11) NOT NULL,
  `Hydraulics` int(11) NOT NULL,
  `Front Bumper` int(11) NOT NULL,
  `Rear Bumper` int(11) NOT NULL,
  `Vent Right` int(11) NOT NULL,
  `Vent Left` int(11) NOT NULL,
  `Panels` int(11) NOT NULL,
  `Doors` int(11) NOT NULL,
  `Lights` int(11) NOT NULL,
  `Tires` int(11) NOT NULL,
  `Geld` int(11) NOT NULL,
  `NeonFarbe` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=693 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vehicles
-- ----------------------------
INSERT INTO `vehicles` VALUES ('377', '405', '1015.549377', '-1368.048706', '13.285856', '359.711669', '2', '1', '3', '0', '0', '0', '0', '1', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('378', '405', '1011.16986', '-1368.0802', '13.262345', '0.790058', '2', '1', '3', '0', '0', '0', '0', '1', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('379', '487', '1024.906616', '-1349.77246', '17.322635', '358.858947', '2', '1', '3', '0', '0', '0', '0', '1', '0', '0', '0', '', '', '0', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('380', '461', '1023.957336', '-1354.966308', '13.304677', '90.584564', '2', '1', '3', '0', '0', '0', '0', '1', '0', '0', '0', '', '', '0', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('381', '461', '1023.917053', '-1357.973266', '13.306506', '89.300971', '2', '1', '3', '0', '0', '0', '0', '1', '0', '0', '0', '', '', '0', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('382', '497', '-2188.664062', '299.710235', '40.631481', '0.863201', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '109', '150', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('383', '497', '-2176.989746', '305.440521', '40.644805', '358.235504', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '47', '150', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('384', '497', '-2165.534667', '305.192626', '40.609878', '1.30936', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '150', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('385', '425', '-2227.523437', '292.414672', '43.818187', '271.677276', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '148', '150', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('387', '560', '-2192.897949', '238.466125', '35.041465', '267.623107', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '1232', '60', '0', '0', '0', '0', '0', '0', '0', '0', '1009', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('388', '560', '-2193.160644', '234.958999', '35.041553', '267.399475', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '346', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('389', '579', '-2193.156494', '231.585174', '35.26741', '267.933624', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '8', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('390', '579', '-2193.26831', '228.226196', '35.267459', '267.789306', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '71', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('392', '416', '1688.324951', '-1278.381835', '15.004156', '359.252838', '1', '3', '3', '5', '0', '0', '0', '0', '0', '0', '0', '', 'SARD', '0', '0', '96', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('393', '416', '1682.724975', '-1278.405639', '14.994771', '358.664978', '1', '3', '3', '5', '0', '0', '0', '0', '0', '0', '0', '', 'SARD', '0', '0', '252', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('394', '416', '1696.192871', '-1276.566772', '14.869707', '40.373546', '1', '3', '3', '5', '0', '0', '0', '0', '0', '0', '0', '', 'SARD', '0', '0', '47', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('395', '560', '1680.030639', '-1243.929443', '14.646656', '225.845428', '3', '3', '3', '5', '0', '0', '0', '0', '0', '0', '0', '', 'SARD', '0', '0', '382', '60', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('396', '560', '1680.100585', '-1238.992553', '14.606492', '231.198379', '3', '3', '3', '5', '0', '0', '0', '0', '0', '0', '0', '', 'SARD', '0', '0', '234', '60', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('398', '407', '1695.483886', '-1214.72705', '15.13547', '137.036758', '3', '3', '3', '5', '0', '0', '0', '0', '0', '0', '0', '', 'SARD', '0', '0', '357', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('403', '427', '-2206.081298', '275.580963', '27.047321', '91.325851', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '80', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('404', '427', '-2206.059326', '271.413269', '27.047447', '90.170486', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '80', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('405', '427', '-2206.031982', '267.458648', '27.047437', '91.070045', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '80', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('406', '427', '-2205.922363', '263.354248', '27.047317', '90.148887', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '80', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('407', '490', '-2221.742675', '279.822631', '27.043224', '270.299011', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('408', '490', '-2221.704589', '275.638092', '27.043914', '269.900512', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('409', '490', '-2221.634521', '271.533294', '27.043806', '269.238067', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('410', '490', '-2221.830078', '259.182708', '27.043077', '269.050018', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('411', '490', '-2221.732421', '255.005325', '27.043418', '269.536926', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '40', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('412', '596', '-2184.784179', '222.15129', '35.050861', '359.855987', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '160', '80', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('414', '597', '-2207.031982', '259.262268', '26.684324', '90.088417', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('415', '597', '-2207.024902', '255.04454', '26.683582', '90.399475', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('416', '597', '-2207.012695', '251.030441', '26.684141', '90.296073', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('417', '599', '-2222.058349', '246.988189', '27.105512', '268.621582', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '190', '80', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('418', '523', '-2206.832031', '247.954147', '26.485675', '88.867828', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('419', '523', '-2206.752197', '246.045166', '26.486307', '88.867828', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('421', '589', '2102.137695', '-1779.493652', '13.050827', '293.734893', '3', '3', '3', '0', '0', '0', '2', '0', '0', '0', '0', '', '', '0', '0', '90', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('422', '589', '2101.580566', '-1783.617309', '13.05128', '292.714599', '3', '3', '3', '0', '0', '0', '2', '0', '0', '0', '0', '', '', '0', '0', '392', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('423', '589', '2102.565673', '-1775.782104', '13.051215', '295.65686', '3', '3', '3', '0', '0', '0', '2', '0', '0', '0', '0', '', '', '0', '0', '7', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('424', '589', '2103.354003', '-1771.678833', '13.051769', '296.861633', '3', '3', '3', '0', '0', '0', '2', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('425', '589', '2121.066406', '-1783.872192', '13.045742', '68.237976', '3', '3', '3', '0', '0', '0', '2', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('426', '589', '2121.017089', '-1780.009155', '13.046998', '68.704246', '3', '3', '3', '0', '0', '0', '2', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('427', '589', '2121.047363', '-1776.135375', '13.049407', '66.7191', '3', '3', '3', '0', '0', '0', '2', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('428', '589', '2121.101562', '-1771.930175', '13.051465', '65.399856', '3', '3', '3', '0', '0', '0', '2', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('429', '589', '2121.113281', '-1767.356689', '13.053686', '61.949466', '3', '3', '3', '0', '0', '0', '2', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('433', '599', '613.707397', '-597.065185', '17.421758', '268.792053', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('434', '599', '613.642272', '-601.669616', '17.416362', '271.562408', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('435', '599', '622.36975', '-610.552429', '17.312313', '269.736907', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '64', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('436', '599', '622.546752', '-606.02362', '17.304672', '269.328491', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '52', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('437', '596', '1545.122558', '-1684.292846', '5.57693', '91.37416', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '792', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('438', '596', '1544.93103', '-1680.17517', '5.554461', '91.940307', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '179', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('439', '596', '1545.054321', '-1676.220214', '5.566696', '89.835777', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '35', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('440', '596', '1545.089843', '-1672.00354', '5.611935', '89.913307', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '56', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('441', '596', '1545.091674', '-1667.805053', '5.61169', '89.942085', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('442', '596', '1545.090454', '-1663.079956', '5.610877', '89.849739', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '58', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('443', '560', '1545.415649', '-1659.008056', '5.595568', '89.676895', '4', '0', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '145', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('444', '560', '1545.342163', '-1655.018432', '5.584423', '89.968482', '4', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('445', '547', '1545.221801', '-1651.025634', '5.625988', '89.917488', '53', '0', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('446', '427', '1538.897338', '-1645.168945', '6.022634', '179.918426', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '6', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('447', '427', '1534.80249', '-1645.062744', '6.022614', '179.934387', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('448', '427', '1530.551269', '-1645.138305', '6.03125', '181.226211', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('449', '427', '1526.509399', '-1645.212158', '6.0225', '180.84996', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('450', '523', '1529.585815', '-1682.865234', '5.453372', '269.611267', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('451', '523', '1529.476684', '-1684.732666', '5.453958', '270.090728', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '17', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('452', '601', '1558.803466', '-1711.232666', '5.649372', '359.81549', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '4', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('453', '601', '1564.213867', '-1711.205444', '5.649404', '359.157897', '1', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '8', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('454', '497', '1566.169921', '-1654.692993', '28.562961', '90.031066', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '32', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('455', '497', '1554.290649', '-1643.947509', '28.569435', '89.995132', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('456', '497', '1566.593994', '-1694.33081', '28.571472', '90.285202', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('457', '497', '1557.865234', '-1708.228393', '28.56756', '90.225158', '1', '1', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('458', '525', '1578.763793', '-1613.854003', '13.270153', '0.629383', '0', '0', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '177', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('459', '525', '1575.26123', '-1613.721191', '13.273138', '359.867584', '0', '0', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '19', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('460', '525', '1571.797363', '-1613.764892', '13.262656', '0.052358', '0', '0', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('462', '552', '1568.210449', '-1613.750244', '13.07761', '0.227301', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('463', '552', '1564.763183', '-1613.859008', '13.077692', '0.607536', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('464', '552', '1561.183105', '-1613.815063', '13.077075', '359.336425', '0', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '83', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('467', '426', '1873.561035', '-1581.858642', '13.353281', '201.942276', '1', '1', '3', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '42000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('468', '439', '1881.674194', '-1581.746459', '13.506031', '202.291702', '1', '1', '3', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '48000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('469', '458', '1903.627563', '-1591.725097', '13.489192', '37.835861', '1', '1', '3', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '53000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('470', '400', '1895.244384', '-1592.683105', '13.703083', '30.460159', '1', '1', '3', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '80', '0', '34000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('471', '404', '1900.533325', '-1581.664062', '13.343457', '193.483032', '1', '1', '3', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '26000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('472', '604', '1853.876464', '-1586.52246', '13.3736', '280.536865', '1', '1', '3', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '2500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('473', '589', '1891.071777', '-1581.595825', '13.268157', '202.94168', '1', '1', '3', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '1', '40', '0', '29500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('475', '549', '1885.85559', '-1592.728759', '13.242582', '30.260725', '1', '1', '3', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '17000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('476', '526', '1869.733642', '-1593.042358', '13.376105', '27.370346', '1', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '26500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('477', '500', '1877.777465', '-1593.496826', '13.724205', '30.17712', '1', '1', '3', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '31000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('478', '462', '1833.486083', '-1404.749755', '13.162154', '1.183868', '1', '1', '3', '0', '0', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '50', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('479', '463', '1831.272338', '-1404.746215', '13.104515', '0.10835', '1', '1', '3', '0', '0', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '50', '0', '16000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('480', '461', '1828.966796', '-1404.45935', '13.147598', '0.429396', '1', '1', '3', '0', '0', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '50', '0', '22000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('481', '468', '1826.654541', '-1404.581665', '13.231055', '0.493371', '1', '1', '3', '0', '0', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '50', '0', '18000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('482', '471', '1820.373046', '-1404.437255', '13.043725', '0.605912', '1', '1', '3', '0', '0', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '50', '0', '17000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('483', '522', '1822.493041', '-1404.443237', '13.134634', '0.181334', '1', '1', '3', '0', '0', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '50', '0', '32000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('484', '521', '1824.37854', '-1404.420532', '13.133945', '0.704491', '1', '1', '3', '0', '0', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '50', '0', '19800', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('485', '586', '1835.484741', '-1404.549804', '13.08275', '0.566483', '1', '1', '3', '0', '0', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '50', '0', '19000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('488', '402', '-1549.726196', '1134.325073', '7.02634', '270.527465', '1', '1', '3', '0', '0', '3', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '185000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('489', '415', '-1546.689575', '1191.811767', '6.966485', '316.815063', '1', '1', '3', '0', '0', '3', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '85000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('490', '429', '-1550.33081', '1199.224975', '6.874422', '283.451171', '1', '1', '3', '0', '0', '3', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '87000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('491', '477', '-1549.870361', '1207.718627', '6.949551', '246.345306', '1', '1', '3', '0', '0', '3', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '136000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('492', '480', '-1541.948486', '1212.020507', '6.96841', '201.775909', '1', '1', '3', '0', '0', '3', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '86000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('494', '506', '-1548.357543', '1125.899047', '6.898951', '309.085266', '1', '1', '3', '0', '0', '3', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '195000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('495', '534', '-1526.391479', '1202.926879', '6.919497', '124.744949', '1', '1', '3', '0', '0', '3', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '92000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('496', '541', '-1547.439086', '1142.967651', '6.819653', '227.688003', '1', '1', '3', '0', '0', '3', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '215000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('497', '559', '-1529.110961', '1211.800781', '6.852062', '129.581253', '1', '1', '3', '0', '0', '3', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '116000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('498', '565', '-1538.51831', '1191.126098', '6.81956', '318.261016', '1', '1', '3', '0', '0', '3', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '64000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('499', '587', '-1537.244384', '1124.22351', '6.921216', '357.038024', '1', '1', '3', '0', '0', '3', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '165000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('500', '603', '-1527.964477', '1126.584594', '7.032927', '38.997623', '1', '3', '3', '0', '0', '3', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '172000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('502', '574', '1359.992431', '-1652.169677', '13.162652', '269.723999', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('503', '574', '1359.795776', '-1660.104125', '13.180665', '269.704345', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('504', '574', '1359.860473', '-1657.583496', '13.174076', '270.518341', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('505', '574', '1359.797485', '-1650.187744', '13.18155', '270.15921', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '10', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('506', '574', '1359.798828', '-1644.433715', '13.182641', '270.967559', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('507', '574', '1359.794311', '-1642.224609', '13.182209', '269.994018', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('508', '574', '1359.805664', '-1636.640258', '13.179718', '269.549224', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('509', '574', '1359.809082', '-1634.412963', '13.17768', '269.59317', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('510', '574', '1375.566772', '-1654.919799', '13.107986', '90.31607', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('511', '574', '1375.542846', '-1658.045898', '13.10799', '90.489944', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('512', '574', '1375.523071', '-1661.312988', '13.107992', '89.576332', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('513', '574', '1375.477539', '-1642.844482', '13.10799', '90.290969', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '47', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('514', '574', '1375.493041', '-1639.435913', '13.107988', '89.763122', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '11', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('515', '574', '1375.545043', '-1636.095703', '13.107994', '89.577056', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('516', '574', '1375.520385', '-1632.406127', '13.107989', '88.948974', '86', '86', '3', '0', '0', '0', '3', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('517', '408', '1749.029174', '-2057.832275', '14.376907', '180.220825', '1', '1', '3', '0', '0', '0', '6', '0', '0', '0', '0', '', '', '0', '0', '113', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('518', '408', '1753.947631', '-2057.894531', '14.380349', '180.189697', '1', '1', '3', '0', '0', '0', '6', '0', '0', '0', '0', '', '', '0', '0', '41', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('519', '408', '1768.567993', '-2051.677978', '14.352293', '270.112609', '1', '1', '3', '0', '0', '0', '6', '0', '0', '0', '0', '', '', '0', '0', '18', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('520', '408', '1768.550292', '-2046.621459', '14.326375', '270.915527', '1', '1', '3', '0', '0', '0', '6', '0', '0', '0', '0', '', '', '0', '0', '116', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('521', '408', '1768.556274', '-2034.458496', '14.316102', '270.21527', '1', '1', '3', '0', '0', '0', '6', '0', '0', '0', '0', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('522', '408', '1768.533935', '-2029.494995', '14.324357', '271.104675', '1', '1', '3', '0', '0', '0', '6', '0', '0', '0', '0', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('523', '408', '1808.297119', '-2023.942993', '14.086783', '88.948272', '1', '1', '3', '0', '0', '0', '6', '0', '0', '0', '0', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('524', '408', '1808.285156', '-2029.794311', '14.086977', '89.283897', '1', '1', '3', '0', '0', '0', '6', '0', '0', '0', '0', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('525', '408', '1808.270996', '-2036.244628', '14.106122', '89.485443', '1', '1', '3', '0', '0', '0', '6', '0', '0', '0', '0', '', '', '0', '0', '1', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('526', '408', '1808.311035', '-2043.12561', '14.106225', '89.410087', '1', '1', '3', '0', '0', '0', '6', '0', '0', '0', '0', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('527', '408', '1808.280517', '-2050.467041', '14.110786', '89.430709', '1', '1', '3', '0', '0', '0', '6', '0', '0', '0', '0', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('528', '532', '-31.831539', '58.015495', '4.092325', '68.880386', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '4', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('529', '532', '-28.288551', '67.658447', '4.093315', '68.827354', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '12', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('530', '532', '-24.947206', '76.463462', '4.088407', '70.69181', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '3', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('531', '532', '-21.261199', '86.432907', '4.086964', '66.772796', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('532', '532', '-56.141883', '88.648506', '4.091042', '250.070281', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '5', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('533', '532', '-65.402206', '102.089607', '4.091464', '66.149848', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '4', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('534', '532', '-57.072086', '98.491989', '4.099246', '66.649459', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('535', '531', '-99.94384', '78.56916', '3.081515', '220.033355', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '18', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('536', '531', '-98.974227', '82.977775', '3.077903', '214.702285', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('537', '531', '-97.62899', '86.912864', '3.07359', '210.083328', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('538', '531', '-96.383125', '91.051147', '3.075931', '210.623962', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('539', '531', '-94.93048', '95.167854', '3.080075', '210.030715', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('540', '531', '-93.706077', '99.835632', '3.080327', '210.572631', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('541', '531', '-92.47657', '103.658828', '3.083137', '214.114074', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('542', '531', '-91.062232', '107.565086', '3.082602', '217.481063', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('543', '531', '-89.857292', '111.695091', '3.081346', '222.500381', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('544', '478', '-54.215023', '55.525714', '3.101227', '29.076219', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '25', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('545', '478', '-55.933853', '51.041187', '3.101632', '21.516593', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('546', '478', '-57.413722', '46.192966', '3.107882', '26.848718', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('547', '478', '-58.96928', '42.032058', '3.107789', '27.145948', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '1', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('548', '478', '-63.05091', '56.489604', '3.097208', '284.895294', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '51', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('549', '478', '-64.580253', '52.191066', '3.103001', '286.263183', '1', '0', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '8', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('550', '478', '-65.985618', '47.782295', '3.09834', '288.78247', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('551', '478', '-67.676948', '43.451179', '3.101994', '291.637329', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('552', '478', '-69.145591', '39.382362', '3.104825', '291.730133', '1', '1', '3', '0', '0', '0', '7', '0', '0', '0', '0', '', '', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('556', '431', '1560.127685', '-2308.792724', '13.645503', '91.08348', '1', '1', '3', '0', '0', '0', '5', '0', '0', '0', '0', '', '', '0', '0', '175', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('557', '431', '1560.11914', '-2315.452392', '13.640786', '90.038612', '1', '1', '3', '0', '0', '0', '5', '0', '0', '0', '0', '', '', '0', '0', '128', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('558', '431', '1560.063842', '-2322.132812', '13.641156', '89.959754', '1', '1', '3', '0', '0', '0', '5', '0', '0', '0', '0', '', '', '0', '0', '65', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('559', '431', '1560.125732', '-2328.618896', '13.646739', '90.073936', '1', '1', '3', '0', '0', '0', '5', '0', '0', '0', '0', '', '', '0', '0', '29', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('560', '431', '1560.06604', '-2335.16455', '13.647665', '89.578056', '1', '1', '3', '0', '0', '0', '5', '0', '0', '0', '0', '', '', '0', '0', '52', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('561', '437', '1539.804809', '-2302.200683', '13.680191', '180.234069', '1', '1', '3', '0', '0', '0', '5', '0', '0', '0', '40', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('562', '437', '1539.838012', '-2317.960937', '13.682126', '180.327468', '1', '1', '3', '0', '0', '0', '5', '0', '0', '0', '40', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('563', '437', '1539.885986', '-2332.999755', '13.686525', '179.831527', '1', '1', '3', '0', '0', '0', '5', '0', '0', '0', '40', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('564', '437', '1532.258789', '-2341.664794', '13.680335', '90.129425', '1', '1', '3', '0', '0', '0', '5', '0', '0', '0', '40', '', '', '0', '0', '1', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('565', '437', '1517.562866', '-2341.663085', '13.680191', '90.1016', '1', '1', '3', '0', '0', '0', '5', '0', '0', '0', '40', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('566', '431', '1560.186523', '-2351.762207', '13.649351', '88.774162', '1', '1', '3', '0', '0', '0', '5', '0', '0', '0', '0', '', '', '0', '0', '78', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('567', '431', '1560.190185', '-2345.35791', '13.645537', '89.189842', '1', '1', '3', '0', '0', '0', '5', '0', '0', '0', '0', '', '', '0', '0', '35', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('569', '511', '1994.209228', '-2240.035156', '14.920907', '90.179397', '3', '1', '3', '0', '0', '0', '4', '0', '0', '0', '0', '', '', '0', '0', '152', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('570', '511', '1994.220825', '-2261.631835', '14.920385', '90.8096', '3', '1', '3', '0', '0', '0', '4', '0', '0', '0', '0', '', '', '0', '0', '5', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('571', '511', '1994.220214', '-2306.634521', '14.92068', '90.050834', '3', '1', '3', '0', '0', '0', '4', '0', '0', '0', '0', '', '', '0', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('572', '511', '1994.228027', '-2328.125488', '14.931878', '90.410224', '3', '1', '3', '0', '0', '0', '4', '0', '0', '0', '0', '', '', '0', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('573', '511', '1994.207519', '-2373.502441', '14.918869', '89.892463', '3', '1', '3', '0', '0', '0', '4', '0', '0', '0', '0', '', '', '0', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('574', '511', '1994.227783', '-2395.242187', '14.92928', '89.884452', '3', '1', '3', '0', '0', '0', '4', '0', '0', '0', '0', '', '', '0', '0', '5', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('575', '577', '1821.793212', '-2422.359619', '13.470499', '178.237655', '3', '1', '3', '0', '0', '0', '4', '0', '0', '0', '100', '', '', '0', '0', '2', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('576', '577', '1725.283447', '-2441.002685', '13.469676', '180.561981', '3', '1', '3', '0', '0', '0', '4', '0', '0', '0', '100', '', '', '0', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('577', '553', '1889.200561', '-2630.125732', '14.874688', '359.002868', '3', '1', '3', '0', '0', '0', '4', '0', '0', '0', '50', '', '', '0', '0', '88', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('590', '472', '-2222.440185', '2396.500976', '-0.175429', '41.702644', '1', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('591', '472', '-2229.900634', '2403.695068', '-0.234641', '45.288887', '1', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '35', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('592', '472', '-2227.970458', '2390.480957', '0.003225', '44.140258', '1', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('593', '472', '-2235.457519', '2398.004638', '0.137307', '45.388877', '1', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '109', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('594', '595', '-2203.675048', '2418.216796', '0.227375', '43.252353', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '35', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('595', '595', '-2209.03955', '2411.576904', '0.393519', '46.147991', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('612', '515', '2159.635253', '-2280.655761', '14.390151', '223.944763', '3', '3', '3', '0', '0', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '27', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('613', '515', '2166.774169', '-2273.40039', '14.379014', '224.448593', '3', '3', '3', '0', '0', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '12', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('614', '515', '2174.074951', '-2266.127441', '14.391448', '226.712661', '3', '3', '3', '0', '0', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '72', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('615', '515', '2169.136718', '-2224.550048', '14.428092', '225.360168', '3', '3', '3', '0', '0', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('616', '515', '2176.289306', '-2217.512695', '14.536887', '224.424407', '3', '3', '3', '0', '0', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '19', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('618', '515', '2183.549072', '-2210.125976', '14.56727', '224.61914', '3', '3', '3', '0', '0', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '11', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('620', '515', '993.500122', '-1376.01416', '14.441431', '1.059707', '2', '2', '3', '0', '0', '0', '0', '1', '0', '0', '0', '', '', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('622', '463', '2069.902587', '-1739.83142', '13.091217', '265.825012', '1', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Gamekun', 'LS:J:5', '0', '0', '29', '49.135986', '0', '16000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('623', '439', '1560.326782', '-2237.854003', '13.442645', '89.215301', '1', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'GangstaSunny', 'LS:Z:27', '0', '0', '41', '40', '0', '48000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1145', '0', '0', '4', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('624', '526', '2502.768554', '-2002.365722', '13.313534', '91.967208', '1', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'KeNzo.RiaZ', 'LS:Y:596', '0', '0', '32', '34.708023', '0', '26500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('625', '560', '2504.297851', '-1681.000366', '13.165884', '307.032958', '86', '86', '3', '9', '0', '0', '0', '0', '0', '0', '0', '', 'GROVE', '0', '0', '74', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('626', '560', '2510.197753', '-1669.365478', '13.148544', '0.895286', '86', '86', '3', '9', '0', '0', '0', '0', '0', '0', '0', '', 'GROVE', '0', '0', '52', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('627', '522', '2498.472656', '-1681.998901', '12.927843', '347.605957', '86', '86', '3', '9', '0', '0', '0', '0', '0', '0', '0', '', 'GROVE', '0', '0', '26', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('628', '522', '2496.558105', '-1682.009033', '12.925021', '348.26007', '86', '86', '3', '9', '0', '0', '0', '0', '0', '0', '0', '', 'GROVE', '0', '0', '64', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('631', '560', '2529.28833', '-2012.767822', '13.259716', '90.947097', '2', '2', '3', '12', '0', '0', '0', '0', '0', '0', '0', '', 'AZTECAS', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('632', '560', '2510.849853', '-2008.647949', '13.28125', '246.680023', '2', '2', '3', '12', '0', '0', '0', '0', '0', '0', '0', '', 'AZTECAS', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('633', '522', '2513.562988', '-2001.387817', '13.10044', '92.274337', '2', '2', '3', '12', '0', '0', '0', '0', '0', '0', '0', '', 'AZTECAS', '0', '0', '20', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('634', '522', '2510.900146', '-2016.877197', '13.116291', '88.832626', '2', '2', '3', '12', '0', '0', '0', '0', '0', '0', '0', '', 'AZTECAS', '0', '0', '23', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('636', '560', '1568.286132', '30.729913', '23.877252', '95.153549', '1', '0', '2', '19', '0', '0', '0', '0', '0', '1', '0', '', '', '0', '0', '135', '60', '0', '0', '0', '0', '0', '0', '0', '0', '1010', '1029', '1078', '0', '0', '0', '1140', '0', '0', '0', '33686020', '5', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('637', '522', '1563.625976', '25.719606', '23.736528', '97.183227', '0', '0', '3', '19', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '617', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('638', '490', '1680.988647', '-1234.797241', '15.085534', '229.425079', '3', '3', '3', '5', '0', '0', '0', '0', '0', '0', '0', '', 'SARD', '0', '0', '165', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('639', '490', '1680.970581', '-1229.943481', '15.084895', '230.019744', '3', '3', '3', '5', '0', '0', '0', '0', '0', '0', '0', '', 'SARD', '0', '0', '11', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('641', '407', '1697.740966', '-1221.407836', '15.068441', '137.24118', '3', '3', '3', '5', '0', '0', '0', '0', '0', '0', '0', '', 'SARD', '0', '1', '225', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('642', '544', '1697.887329', '-1230.522094', '15.229454', '140.993148', '3', '3', '3', '5', '0', '0', '0', '0', '0', '0', '0', '', 'SARD', '0', '0', '12', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('645', '559', '-2161.550781', '232.142227', '34.986858', '92.723564', '75', '1', '3', '0', '1', '0', '0', '0', '0', '0', '0', '', 'DIA', '0', '0', '23', '40', '0', '116000', '0', '0', '0', '0', '0', '0', '1010', '1065', '1082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('646', '560', '305.940368', '-1172.30017', '80.616706', '269.836364', '25', '25', '3', '18', '0', '0', '0', '0', '0', '0', '0', '', 'RUSSIA', '0', '0', '241', '60', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('647', '560', '320.55371', '-1157.770263', '80.613594', '180.505325', '25', '25', '3', '18', '0', '0', '0', '0', '0', '0', '0', '', 'RUSSIA', '0', '0', '135', '60', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('649', '522', '304.560424', '-1177.033691', '80.483772', '277.44989', '25', '25', '3', '18', '0', '0', '0', '0', '0', '0', '0', '', 'RUSSIA', '0', '0', '135', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('650', '522', '326.344024', '-1156.201171', '80.478973', '181.53189', '25', '25', '3', '18', '0', '0', '0', '0', '0', '0', '0', '', 'RUSSIA', '0', '0', '109', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('651', '559', '-2161.705566', '235.605834', '34.986896', '92.105644', '75', '1', '3', '0', '1', '0', '0', '0', '0', '0', '0', '', 'DIA', '0', '0', '11', '40', '0', '116000', '0', '0', '0', '0', '0', '0', '1010', '1065', '1082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('652', '526', '2076.192626', '-1727.710815', '13.22747', '180.762847', '7', '1', '3', '0', '0', '0', '0', '0', '0', '1', '0', 'Daniel_LeMarc', 'LS:U:557', '0', '0', '30', '40', '0', '26500', '0', '0', '0', '0', '0', '0', '1010', '0', '1097', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('653', '426', '1902.418579', '-1555.258056', '13.438199', '271.552795', '53', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Tobi_DeKey', 'LS:W:9', '0', '0', '117', '60', '0', '42000', '0', '0', '1005', '1006', '0', '0', '1010', '1019', '1080', '0', '1087', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18647');
INSERT INTO `vehicles` VALUES ('655', '560', '-2188.240722', '221.954635', '35.038425', '0.499305', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '73', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('660', '604', '1895.753295', '-1573.172851', '13.413298', '359.441192', '1', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'drkiller', 'LS:U:285', '0', '0', '28', '55.464019', '0', '2500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '131584', '5', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('661', '487', '-2192.768798', '264.767395', '35.506317', '89.306335', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '', 'FBI', '0', '0', '160', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('662', '426', '-2162.13623', '239.029098', '35.073661', '92.073631', '75', '1', '3', '0', '1', '0', '0', '0', '0', '0', '0', '', 'DIA', '0', '0', '51', '60', '0', '42000', '0', '0', '0', '0', '0', '0', '1010', '1019', '1082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('663', '426', '1585.982788', '-1671.828491', '5.636672', '269.798095', '75', '1', '3', '0', '1', '0', '0', '0', '0', '0', '0', '', 'DIA', '0', '0', '5', '60', '0', '42000', '0', '0', '0', '0', '0', '0', '0', '1019', '1082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('664', '522', '1535.670532', '-1680.805541', '12.952733', '268.520141', '17', '6', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'DevilIntel', 'LS:R:7', '0', '0', '221', '50', '0', '32000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('665', '506', '1536.097045', '-1666.377075', '13.087203', '179.768035', '6', '1', '3', '0', '0', '0', '0', '0', '0', '1', '0', 'DevilIntel', 'LS:O:49', '0', '0', '274', '40', '0', '195000', '0', '0', '0', '0', '0', '0', '1010', '0', '0', '0', '1087', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18650');
INSERT INTO `vehicles` VALUES ('666', '541', '1675.633056', '-1225.29895', '14.4937', '356.893493', '1', '6', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'DevilIntel', 'LS:T:45', '0', '0', '1021', '22.503889', '0', '215000', '0', '0', '0', '0', '0', '0', '1010', '0', '1077', '0', '1087', '0', '0', '0', '0', '0', '131587', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('667', '604', '1451.588378', '-931.914855', '36.503707', '172.363098', '1', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Tyrael', 'LS:L:92', '0', '0', '34', '57.921009', '0', '2500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('668', '400', '1412.300537', '-935.620544', '35.67918', '260.788085', '1', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Tobi_DeKey', 'LS:B:94', '0', '0', '1', '80', '0', '34000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('669', '462', '1834.942626', '-1392.099609', '13.148098', '229.207107', '1', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'aLmero.RiaZ', 'LS:U:337', '0', '0', '2', '19.784', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('670', '541', '1151.488037', '-735.492309', '61.914318', '45.062473', '3', '1', '2', '0', '0', '0', '0', '0', '0', '2', '0', 'Ette', 'LS:Z:163', '0', '0', '319', '25.635885', '0', '215000', '0', '0', '0', '0', '0', '0', '1010', '0', '1096', '0', '0', '0', '0', '0', '0', '0', '33686018', '5', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('671', '426', '1585.210571', '-1679.291015', '5.752737', '268.524536', '79', '1', '3', '2', '0', '0', '0', '0', '0', '0', '0', '', 'SAPD', '0', '0', '11', '60', '0', '42000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('673', '541', '2188.041748', '-1657.236206', '14.723443', '348.311279', '1', '1', '3', '0', '2', '0', '0', '0', '0', '0', '0', '', 'ROSE', '0', '0', '26', '40', '5', '215000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('674', '541', '2184.872314', '-1672.187133', '14.027537', '348.153991', '1', '1', '3', '0', '2', '0', '0', '0', '0', '0', '0', '', 'ROSE', '0', '0', '45', '40', '5', '215000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('675', '541', '2186.403076', '-1664.504882', '14.384757', '349.438903', '1', '1', '3', '0', '2', '0', '0', '0', '0', '0', '0', '', 'ROSE', '0', '0', '33', '40', '5', '215000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('676', '522', '2160.110351', '-1693.224365', '14.655447', '179.779678', '1', '1', '3', '0', '2', '0', '0', '0', '0', '0', '0', '', 'ROSE', '0', '0', '3', '50', '0', '32000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('677', '522', '2159.665527', '-1689.480346', '14.655508', '354.761779', '1', '1', '3', '0', '2', '0', '0', '0', '0', '0', '0', '', 'ROSE', '0', '0', '7', '50', '0', '32000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('678', '522', '2161.606201', '-1677.836181', '14.657238', '136.57518', '1', '1', '3', '0', '2', '0', '0', '0', '0', '0', '0', '', 'ROSE', '0', '0', '166', '50', '0', '32000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('679', '415', '-1517.790771', '1145.604736', '6.8796', '269.588897', '3', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'DevilIntel', 'LS:G:782', '0', '0', '89', '10.38801', '0', '85000', '0', '0', '0', '0', '1017', '0', '1010', '1019', '1077', '0', '1087', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('680', '522', '1822.276489', '-1392.550659', '13.147891', '217.638305', '1', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'ROCE', 'LS:Z:456', '0', '0', '29', '50', '0', '32000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('681', '426', '1895.753295', '-1573.172851', '13.41329', '359.441192', '36', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'dreamer5655', 'LS:D:933', '0', '0', '9', '60', '0', '42000', '0', '0', '0', '0', '0', '0', '1010', '1021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('682', '522', '271.082061', '-1365.607177', '52.689971', '114.91909', '1', '1', '3', '0', '3', '0', '0', '0', '0', '0', '0', '', 'T.C', '0', '0', '90', '50', '0', '32000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('683', '522', '270.099914', '-1363.870239', '52.727756', '117.594764', '1', '1', '3', '0', '3', '0', '0', '0', '0', '0', '0', '', 'T.C', '0', '0', '37', '50', '0', '32000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('684', '522', '269.156494', '-1362.372314', '52.795173', '124.906768', '1', '1', '3', '0', '3', '0', '0', '0', '0', '0', '0', '', 'T.C', '0', '0', '64', '50', '0', '32000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('685', '541', '250.497848', '-1359.865844', '52.73442', '304.830657', '1', '1', '3', '0', '3', '0', '0', '0', '0', '0', '0', '', 'T.C', '0', '0', '20', '40', '0', '215000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('686', '541', '247.93254', '-1356.219604', '52.734336', '306.930053', '1', '1', '3', '0', '3', '0', '0', '0', '0', '0', '0', '', 'T.C', '0', '0', '20', '40', '0', '215000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('687', '506', '264.699584', '-1377.5625', '52.813804', '33.030994', '1', '1', '3', '0', '3', '0', '0', '0', '0', '0', '0', '', 'T.C', '0', '0', '19', '40', '0', '195000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('688', '506', '267.751068', '-1375.217407', '52.813655', '37.093879', '1', '1', '3', '0', '3', '0', '0', '0', '0', '0', '0', '', 'T.C', '0', '0', '19', '40', '0', '195000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('689', '471', '1885.463012', '-1757.748291', '12.943426', '91.143905', '1', '1', '3', '0', '0', '0', '0', '0', '0', '1', '0', 'Ette', 'LS:N:252', '0', '0', '3', '19.676', '0', '17000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('691', '500', '1895.753295', '-1573.172851', '13.413299', '359.441192', '1', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Ette', 'LS:F:299', '0', '0', '14', '17.354011', '0', '31000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '131076', '1', '0', '0', '0');
INSERT INTO `vehicles` VALUES ('692', '598', '1807.424072', '-2291.562744', '-2.541145', '182.346282', '1', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0', '', 'Autohaus', '0', '0', '0', '0', '0', '999999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

ALTER TABLE `vehicles`
ADD `Firma` int(12) NOT NULL DEFAULT '0',
ADD `C4` int(12) NOT NULL DEFAULT '0';

-- ----------------------------
-- Table structure for `wcf1_conversation`
-- ----------------------------
DROP TABLE IF EXISTS `wcf1_conversation`;
CREATE TABLE `wcf1_conversation` (
  `conversationID` int(10) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `firstMessageID` int(10) DEFAULT NULL,
  `userID` int(10) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastPostTime` int(10) NOT NULL DEFAULT '0',
  `lastPosterID` int(10) DEFAULT NULL,
  `lastPoster` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `replies` mediumint(7) NOT NULL DEFAULT '0',
  `attachments` smallint(5) NOT NULL DEFAULT '0',
  `participants` mediumint(7) NOT NULL DEFAULT '0',
  `participantSummary` text COLLATE utf8_unicode_ci,
  `participantCanInvite` tinyint(1) NOT NULL DEFAULT '0',
  `isClosed` tinyint(1) NOT NULL DEFAULT '0',
  `isDraft` tinyint(1) NOT NULL DEFAULT '0',
  `draftData` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`conversationID`),
  KEY `userID` (`userID`,`isDraft`),
  KEY `b035850f8722daf62d988d3925203c10_fk` (`lastPosterID`),
  KEY `f987307a33dd906af020a993c877fdd4_fk` (`firstMessageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wcf1_conversation
-- ----------------------------

-- ----------------------------
-- Table structure for `wcf1_conversation_message`
-- ----------------------------
DROP TABLE IF EXISTS `wcf1_conversation_message`;
CREATE TABLE `wcf1_conversation_message` (
  `messageID` int(10) NOT NULL AUTO_INCREMENT,
  `conversationID` int(10) NOT NULL,
  `userID` int(10) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  `attachments` smallint(5) NOT NULL DEFAULT '0',
  `enableSmilies` tinyint(1) NOT NULL DEFAULT '1',
  `enableHtml` tinyint(1) NOT NULL DEFAULT '0',
  `enableBBCodes` tinyint(1) NOT NULL DEFAULT '1',
  `showSignature` tinyint(1) NOT NULL DEFAULT '1',
  `ipAddress` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`messageID`),
  KEY `conversationID` (`conversationID`,`userID`),
  KEY `ipAddress` (`ipAddress`),
  KEY `9181ab0c761e822306834be3ce57a5f9_fk` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wcf1_conversation_message
-- ----------------------------

-- ----------------------------
-- Table structure for `zonesinfo`
-- ----------------------------
DROP TABLE IF EXISTS `zonesinfo`;
CREATE TABLE `zonesinfo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GangID` int(11) NOT NULL,
  `Min_X` float NOT NULL,
  `Min_Y` float NOT NULL,
  `Max_X` float NOT NULL,
  `Max_Y` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zonesinfo
-- ----------------------------
