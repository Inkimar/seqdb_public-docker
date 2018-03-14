-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: seqdbweb
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AccountPreferences`
--

DROP TABLE IF EXISTS `AccountPreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AccountPreferences` (
  `PreferenceID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `PreferenceName` varchar(50) NOT NULL,
  `PreferenceValue` varchar(50) NOT NULL,
  `AccountID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PreferenceID`),
  KEY `FK_est6u6oyjig1qej4vvsqpylk5` (`AccountID`),
  CONSTRAINT `FK_est6u6oyjig1qej4vvsqpylk5` FOREIGN KEY (`AccountID`) REFERENCES `Accounts` (`AccountID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccountPreferences`
--

LOCK TABLES `AccountPreferences` WRITE;
/*!40000 ALTER TABLE `AccountPreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `AccountPreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AccountProfilePrinters`
--

DROP TABLE IF EXISTS `AccountProfilePrinters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AccountProfilePrinters` (
  `AccountProfilePrinterID` int(11) NOT NULL AUTO_INCREMENT,
  `BarcodeableEntity` varchar(255) NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `AccountProfileID` int(11) DEFAULT NULL,
  `LabelTemplateID` int(11) DEFAULT NULL,
  `PrinterID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AccountProfilePrinterID`),
  KEY `FK_q48k8qlwetvmy5anf4yo9l8go` (`AccountProfileID`),
  KEY `FK_i3wj6ko1vkec6254r8l6laddr` (`LabelTemplateID`),
  KEY `FK_ec5p689miax2o0lk3sfqjdjey` (`PrinterID`),
  CONSTRAINT `FK_ec5p689miax2o0lk3sfqjdjey` FOREIGN KEY (`PrinterID`) REFERENCES `Printers` (`PrinterID`),
  CONSTRAINT `FK_i3wj6ko1vkec6254r8l6laddr` FOREIGN KEY (`LabelTemplateID`) REFERENCES `LabelTemplates` (`LabelTemplateID`),
  CONSTRAINT `FK_q48k8qlwetvmy5anf4yo9l8go` FOREIGN KEY (`AccountProfileID`) REFERENCES `AccountProfiles` (`AccountProfileID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccountProfilePrinters`
--

LOCK TABLES `AccountProfilePrinters` WRITE;
/*!40000 ALTER TABLE `AccountProfilePrinters` DISABLE KEYS */;
INSERT INTO `AccountProfilePrinters` VALUES (1,'SpecimenReplicate','2013-03-19 00:00:00.000000',1,5,8),(2,'Specimen','2013-03-19 00:00:00.000000',2,2,6),(3,'Sample','2013-03-19 00:00:00.000000',1,7,9),(4,'PcrPrimer','2013-03-19 00:00:00.000000',1,8,8);
/*!40000 ALTER TABLE `AccountProfilePrinters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AccountProfiles`
--

DROP TABLE IF EXISTS `AccountProfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AccountProfiles` (
  `AccountProfileID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `AccountID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AccountProfileID`),
  KEY `FK_mn2mclv3mcu6a5jjorxgewlta` (`AccountID`),
  CONSTRAINT `FK_mn2mclv3mcu6a5jjorxgewlta` FOREIGN KEY (`AccountID`) REFERENCES `Accounts` (`AccountID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccountProfiles`
--

LOCK TABLES `AccountProfiles` WRITE;
/*!40000 ALTER TABLE `AccountProfiles` DISABLE KEYS */;
INSERT INTO `AccountProfiles` VALUES (1,'2013-03-19 00:00:00.000000',1),(2,'2013-03-19 00:00:00.000000',2);
/*!40000 ALTER TABLE `AccountProfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AccountUsage`
--

DROP TABLE IF EXISTS `AccountUsage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AccountUsage` (
  `AccountUsageID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `AccountID` int(11) DEFAULT NULL,
  `UsageID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AccountUsageID`),
  KEY `FK_opbodkrj8ctv9tyjol5g5xwwu` (`AccountID`),
  KEY `FK_dxy68kqa1bjydnyckv4coh8hr` (`UsageID`),
  CONSTRAINT `FK_dxy68kqa1bjydnyckv4coh8hr` FOREIGN KEY (`UsageID`) REFERENCES `UsageKeys` (`UsageKeysID`),
  CONSTRAINT `FK_opbodkrj8ctv9tyjol5g5xwwu` FOREIGN KEY (`AccountID`) REFERENCES `Accounts` (`AccountID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccountUsage`
--

LOCK TABLES `AccountUsage` WRITE;
/*!40000 ALTER TABLE `AccountUsage` DISABLE KEYS */;
/*!40000 ALTER TABLE `AccountUsage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Accounts`
--

DROP TABLE IF EXISTS `Accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts` (
  `AccountID` int(11) NOT NULL AUTO_INCREMENT,
  `AccountExpires` date DEFAULT NULL,
  `AccountName` varchar(20) NOT NULL,
  `AccountPw` varchar(100) DEFAULT NULL,
  `AccountStatus` varchar(20) DEFAULT NULL,
  `AccountType` varchar(20) NOT NULL,
  `ApiKey` varchar(100) DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `LastLoginFrom` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `LdapDn` varchar(200) DEFAULT NULL,
  `PeopleID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AccountID`),
  UNIQUE KEY `UK_n6mldui384judl1gi8o4vr9n9` (`AccountName`),
  UNIQUE KEY `UK_t6cw0uwuj6yk5fnoejjm0s3go` (`ApiKey`),
  UNIQUE KEY `UK_53536gw88p3wmc9sj0typrkah` (`LdapDn`),
  KEY `FK_beprcfum14hti2f25qcyaxfwc` (`PeopleID`),
  CONSTRAINT `FK_beprcfum14hti2f25qcyaxfwc` FOREIGN KEY (`PeopleID`) REFERENCES `People` (`PeopleID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts`
--

LOCK TABLES `Accounts` WRITE;
/*!40000 ALTER TABLE `Accounts` DISABLE KEYS */;
INSERT INTO `Accounts` VALUES (1,NULL,'Admin','$2a$10$2AdGg40oWZdmL288StGGhO88VPXGOv6K548k8DbfRhza1rrkbnuci','Active','Admin','adminkey',NULL,NULL,'2007-04-03 00:00:00.000000',NULL,1),(2,NULL,'User','$2a$10$xWykm3LUauNxthMDhfXGfeeYFVsvVaN5uJk8C.1oTVV77ea0.nT4a','Active','User','userkey',NULL,NULL,'2007-04-03 00:00:00.000000',NULL,2);
/*!40000 ALTER TABLE `Accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AccountsGroups`
--

DROP TABLE IF EXISTS `AccountsGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AccountsGroups` (
  `AccountGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `Rights` varchar(20) NOT NULL,
  `AccountID` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `Admin` bit(1) NOT NULL,
  PRIMARY KEY (`AccountGroupID`),
  KEY `FK_dh5l0va08wgkf4t4rydt1qboc` (`AccountID`),
  KEY `FK_o3k28i5e35d32g1i4o6sbo35m` (`GroupID`),
  CONSTRAINT `FK_dh5l0va08wgkf4t4rydt1qboc` FOREIGN KEY (`AccountID`) REFERENCES `Accounts` (`AccountID`),
  CONSTRAINT `FK_o3k28i5e35d32g1i4o6sbo35m` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccountsGroups`
--

LOCK TABLES `AccountsGroups` WRITE;
/*!40000 ALTER TABLE `AccountsGroups` DISABLE KEYS */;
INSERT INTO `AccountsGroups` VALUES (1,'2013-03-19 00:00:00.000000','1111',1,1,'\0'),(2,'2013-03-19 00:00:00.000000','1111',2,2,'\0');
/*!40000 ALTER TABLE `AccountsGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Addresses`
--

DROP TABLE IF EXISTS `Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Addresses` (
  `AddressID` int(11) NOT NULL AUTO_INCREMENT,
  `AddressNote` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `Locality` varchar(64) DEFAULT NULL,
  `OrganisationName` varchar(256) DEFAULT NULL,
  `OrganisationUnit` varchar(256) DEFAULT NULL,
  `PostalCode` varchar(64) DEFAULT NULL,
  `Street` varchar(256) DEFAULT NULL,
  `Country` int(11) DEFAULT NULL,
  `StateProvince` int(11) DEFAULT NULL,
  PRIMARY KEY (`AddressID`),
  KEY `FK_sn9a64qvbnm650bmmfj23v3p9` (`Country`),
  KEY `FK_lx56ewrr853p17h0qt2qdu3r3` (`StateProvince`),
  CONSTRAINT `FK_lx56ewrr853p17h0qt2qdu3r3` FOREIGN KEY (`StateProvince`) REFERENCES `Provinces` (`ProvinceId`),
  CONSTRAINT `FK_sn9a64qvbnm650bmmfj23v3p9` FOREIGN KEY (`Country`) REFERENCES `Countries` (`CountryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Addresses`
--

LOCK TABLES `Addresses` WRITE;
/*!40000 ALTER TABLE `Addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Addresses_AUD`
--

DROP TABLE IF EXISTS `Addresses_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Addresses_AUD` (
  `AddressID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `AddressNote` longtext,
  `Locality` varchar(64) DEFAULT NULL,
  `OrganisationName` varchar(256) DEFAULT NULL,
  `OrganisationUnit` varchar(256) DEFAULT NULL,
  `PostalCode` varchar(64) DEFAULT NULL,
  `Street` varchar(256) DEFAULT NULL,
  `Country` int(11) DEFAULT NULL,
  `StateProvince` int(11) DEFAULT NULL,
  PRIMARY KEY (`AddressID`,`REV`),
  KEY `FK_a52vr69j4yhujfvingbvgwti7` (`REV`),
  CONSTRAINT `FK_a52vr69j4yhujfvingbvgwti7` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Addresses_AUD`
--

LOCK TABLES `Addresses_AUD` WRITE;
/*!40000 ALTER TABLE `Addresses_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Addresses_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnotationGroups`
--

DROP TABLE IF EXISTS `AnnotationGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnotationGroups` (
  `AnnotationGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(10) NOT NULL,
  PRIMARY KEY (`AnnotationGroupID`),
  UNIQUE KEY `UK_56t6u1kb88q0jsyobqor1199n` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnotationGroups`
--

LOCK TABLES `AnnotationGroups` WRITE;
/*!40000 ALTER TABLE `AnnotationGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnotationGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnotationTypes`
--

DROP TABLE IF EXISTS `AnnotationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnotationTypes` (
  `AnnotationTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`AnnotationTypeID`),
  UNIQUE KEY `UK_rxjw64b6ou832rldylrcqdeod` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnotationTypes`
--

LOCK TABLES `AnnotationTypes` WRITE;
/*!40000 ALTER TABLE `AnnotationTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnotationTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Annotations`
--

DROP TABLE IF EXISTS `Annotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Annotations` (
  `AnnotationID` int(11) NOT NULL AUTO_INCREMENT,
  `AnnotationDefault` bit(1) NOT NULL,
  `DateCreated` datetime NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Value` varchar(50) NOT NULL,
  `Link2AnnotationID` int(11) DEFAULT NULL,
  `AnnotationGroupID` int(11) DEFAULT NULL,
  `AnnotationTypeID` int(11) DEFAULT NULL,
  `SequenceID` int(11) DEFAULT NULL,
  `SpotID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AnnotationID`),
  KEY `FK_dwgkd6m4f6owt7vsof66jt54g` (`Link2AnnotationID`),
  KEY `FK_dee1xlolk34uhwqtc2i45nc0v` (`AnnotationGroupID`),
  KEY `FK_6ei8vksayjvut57t365guvbgm` (`AnnotationTypeID`),
  KEY `FK_trgcxt8qjd6e6jwrkfgpf7t63` (`SequenceID`),
  KEY `FK_793tgch4wtwhchwf0r7pd7bey` (`SpotID`),
  CONSTRAINT `FK_6ei8vksayjvut57t365guvbgm` FOREIGN KEY (`AnnotationTypeID`) REFERENCES `AnnotationTypes` (`AnnotationTypeID`),
  CONSTRAINT `FK_793tgch4wtwhchwf0r7pd7bey` FOREIGN KEY (`SpotID`) REFERENCES `Spots` (`SpotID`),
  CONSTRAINT `FK_dee1xlolk34uhwqtc2i45nc0v` FOREIGN KEY (`AnnotationGroupID`) REFERENCES `AnnotationGroups` (`AnnotationGroupID`),
  CONSTRAINT `FK_dwgkd6m4f6owt7vsof66jt54g` FOREIGN KEY (`Link2AnnotationID`) REFERENCES `Annotations` (`AnnotationID`),
  CONSTRAINT `FK_trgcxt8qjd6e6jwrkfgpf7t63` FOREIGN KEY (`SequenceID`) REFERENCES `Sequences` (`SequenceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Annotations`
--

LOCK TABLES `Annotations` WRITE;
/*!40000 ALTER TABLE `Annotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `Annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ArrayTypes`
--

DROP TABLE IF EXISTS `ArrayTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ArrayTypes` (
  `ArrayTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `NumberOfColumns` int(11) NOT NULL,
  `NumberOfRows` int(11) NOT NULL,
  `NumberOfSpots` int(11) NOT NULL,
  `Provider` varchar(50) NOT NULL,
  PRIMARY KEY (`ArrayTypeID`),
  UNIQUE KEY `UK_btil3ei5i1mc85ejn3ygb15h0` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ArrayTypes`
--

LOCK TABLES `ArrayTypes` WRITE;
/*!40000 ALTER TABLE `ArrayTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ArrayTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BarcodeableMaps`
--

DROP TABLE IF EXISTS `BarcodeableMaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BarcodeableMaps` (
  `BarcodeableMapID` int(11) NOT NULL AUTO_INCREMENT,
  `BarcodeableEntity` varchar(255) NOT NULL,
  `BarcodeableMapName` varchar(255) NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `MapFile` varchar(255) NOT NULL,
  PRIMARY KEY (`BarcodeableMapID`),
  UNIQUE KEY `UK_6fkvgcgl8mjl7edxbrh17d3y5` (`BarcodeableEntity`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BarcodeableMaps`
--

LOCK TABLES `BarcodeableMaps` WRITE;
/*!40000 ALTER TABLE `BarcodeableMaps` DISABLE KEYS */;
INSERT INTO `BarcodeableMaps` VALUES (1,'SpecimenReplicate','Specimen Map','2013-03-19 00:00:00.000000','Map file for Specimen'),(2,'Sample','Sample Map','2013-03-19 00:00:00.000000','Map file for Sample'),(3,'Container','Container Map','2013-03-19 00:00:00.000000','Map file for Container'),(4,'MixedSpecimen','Mixed Specimen Map','2013-03-19 00:00:00.000000','Map file for MixedSpecimen'),(5,'Product','Product Map','2013-03-19 00:00:00.000000','Map file for Product'),(6,'Storage','Storage Map','2013-03-19 00:00:00.000000','Map file for Storage'),(7,'PcrPrimer','PcrPrimer Map','2013-03-19 00:00:00.000000','Map file for PcrPrimer');
/*!40000 ALTER TABLE `BarcodeableMaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BiologicalCollections`
--

DROP TABLE IF EXISTS `BiologicalCollections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BiologicalCollections` (
  `BiologicalCollectionID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `LongName` varchar(512) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `WWW` varchar(100) DEFAULT NULL,
  `DatePublished` date DEFAULT NULL,
  `Language` varchar(20) DEFAULT NULL,
  `Address` int(11) DEFAULT NULL,
  `Contact` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`BiologicalCollectionID`),
  UNIQUE KEY `UK_ska14t8hsm48ydpdbdn2mky27` (`Name`,`GroupID`),
  KEY `FK_qtmk2q6w736xfc24hj9xbp4bw` (`Address`),
  KEY `FK_3eu58lcf41l1fb5b83yomu44n` (`Contact`),
  KEY `FK_gbiqv9ercno7hkdmqp9svtbk5` (`GroupID`),
  CONSTRAINT `FK_3eu58lcf41l1fb5b83yomu44n` FOREIGN KEY (`Contact`) REFERENCES `People` (`PeopleID`),
  CONSTRAINT `FK_gbiqv9ercno7hkdmqp9svtbk5` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_qtmk2q6w736xfc24hj9xbp4bw` FOREIGN KEY (`Address`) REFERENCES `Addresses` (`AddressID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BiologicalCollections`
--

LOCK TABLES `BiologicalCollections` WRITE;
/*!40000 ALTER TABLE `BiologicalCollections` DISABLE KEYS */;
/*!40000 ALTER TABLE `BiologicalCollections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BiologicalCollections_AUD`
--

DROP TABLE IF EXISTS `BiologicalCollections_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BiologicalCollections_AUD` (
  `BiologicalCollectionID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Description` longtext,
  `LongName` varchar(512) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `WWW` varchar(100) DEFAULT NULL,
  `DatePublished` date DEFAULT NULL,
  `Language` varchar(20) DEFAULT NULL,
  `Address` int(11) DEFAULT NULL,
  `Contact` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`BiologicalCollectionID`,`REV`),
  KEY `FK_odo8t97tysglk8nho27ejg69d` (`REV`),
  CONSTRAINT `FK_odo8t97tysglk8nho27ejg69d` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BiologicalCollections_AUD`
--

LOCK TABLES `BiologicalCollections_AUD` WRITE;
/*!40000 ALTER TABLE `BiologicalCollections_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `BiologicalCollections_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlastHits`
--

DROP TABLE IF EXISTS `BlastHits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlastHits` (
  `BlastHitID` int(11) NOT NULL AUTO_INCREMENT,
  `HitAccession` varchar(50) DEFAULT NULL,
  `HitBits` int(11) DEFAULT NULL,
  `HitDescription` longtext,
  `HitEnd` int(11) DEFAULT NULL,
  `HitFoundagain` bit(1) DEFAULT NULL,
  `HitLength` int(11) DEFAULT NULL,
  `HitName` varchar(255) NOT NULL,
  `HitQueryEnd` int(11) DEFAULT NULL,
  `HitQueryStart` int(11) DEFAULT NULL,
  `HitRank` int(11) DEFAULT NULL,
  `HitScore` int(11) DEFAULT NULL,
  `HitSignif` double DEFAULT NULL,
  `HitStart` int(11) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `NumHSP` int(11) DEFAULT NULL,
  `BlastResultID` int(11) DEFAULT NULL,
  PRIMARY KEY (`BlastHitID`),
  KEY `FK_teecm7ke2c04iprfxcfds7ump` (`BlastResultID`),
  CONSTRAINT `FK_teecm7ke2c04iprfxcfds7ump` FOREIGN KEY (`BlastResultID`) REFERENCES `BlastResults` (`BlastResultID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlastHits`
--

LOCK TABLES `BlastHits` WRITE;
/*!40000 ALTER TABLE `BlastHits` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlastHits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlastHsps`
--

DROP TABLE IF EXISTS `BlastHsps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlastHsps` (
  `BlastHspID` int(11) NOT NULL AUTO_INCREMENT,
  `Bitscore` float DEFAULT NULL,
  `HSPEValue` double DEFAULT NULL,
  `HSPFracCons` float DEFAULT NULL,
  `HSPFracIdent` float DEFAULT NULL,
  `HSPGaps` int(11) DEFAULT NULL,
  `HSPGroup` longtext,
  `HSPHitDescription` longtext,
  `HSPHitEnd` int(11) DEFAULT NULL,
  `HSPHitFrame` int(11) DEFAULT NULL,
  `HSPHitGaps` int(11) DEFAULT NULL,
  `HSPHitLength` int(11) DEFAULT NULL,
  `HSPHitName` varchar(50) DEFAULT NULL,
  `HSPHitSeq` longtext,
  `HSPHitStart` int(11) DEFAULT NULL,
  `HSPHomologySeq` longtext,
  `HSPLength` int(11) DEFAULT NULL,
  `HSPLinks` longtext,
  `HSPNumConserved` int(11) DEFAULT NULL,
  `HSPNumIdentical` int(11) DEFAULT NULL,
  `HSPPValue` float DEFAULT NULL,
  `HSPQueryDesc` longtext,
  `HSPQueryEnd` int(11) DEFAULT NULL,
  `HSPQueryFrame` int(11) DEFAULT NULL,
  `HSPQueryGaps` int(11) DEFAULT NULL,
  `HSPQueryLength` int(11) DEFAULT NULL,
  `HSPQueryName` varchar(50) DEFAULT NULL,
  `HSPQuerySequence` longtext,
  `HSPQueryStart` int(11) DEFAULT NULL,
  `HSPRank` int(11) DEFAULT NULL,
  `HSPScore` float DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `BlastHitID` int(11) DEFAULT NULL,
  PRIMARY KEY (`BlastHspID`),
  KEY `FK_g48fynsesdt18nq3qoyjaxrbe` (`BlastHitID`),
  CONSTRAINT `FK_g48fynsesdt18nq3qoyjaxrbe` FOREIGN KEY (`BlastHitID`) REFERENCES `BlastHits` (`BlastHitID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlastHsps`
--

LOCK TABLES `BlastHsps` WRITE;
/*!40000 ALTER TABLE `BlastHsps` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlastHsps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlastProjects`
--

DROP TABLE IF EXISTS `BlastProjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlastProjects` (
  `BlastProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `DateCreated` datetime NOT NULL,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Program` varchar(50) NOT NULL,
  `QueryDate` date NOT NULL,
  `QueryString` varchar(255) NOT NULL,
  `DatasetID` int(11) DEFAULT NULL,
  `ProjectID` int(11) DEFAULT NULL,
  PRIMARY KEY (`BlastProjectID`),
  UNIQUE KEY `UK_m0m2x42ehv4wiwthl4c9cdjr1` (`Name`),
  KEY `FK_bg9ucdvgtvkvoxjj9n1drmc61` (`DatasetID`),
  KEY `FK_e4661f4v6pobq6g9hun21acvq` (`ProjectID`),
  CONSTRAINT `FK_bg9ucdvgtvkvoxjj9n1drmc61` FOREIGN KEY (`DatasetID`) REFERENCES `Datasets` (`DatasetID`),
  CONSTRAINT `FK_e4661f4v6pobq6g9hun21acvq` FOREIGN KEY (`ProjectID`) REFERENCES `Projects` (`ProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlastProjects`
--

LOCK TABLES `BlastProjects` WRITE;
/*!40000 ALTER TABLE `BlastProjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlastProjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlastResults`
--

DROP TABLE IF EXISTS `BlastResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlastResults` (
  `BlastResultID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `OutputDir` varchar(255) DEFAULT NULL,
  `OutputFile` varchar(255) DEFAULT NULL,
  `BlastProjectID` int(11) DEFAULT NULL,
  `SequenceID` int(11) DEFAULT NULL,
  PRIMARY KEY (`BlastResultID`),
  KEY `FK_34433uytluhaf06rdf46u3ava` (`BlastProjectID`),
  KEY `FK_1v78ota9iutr1glkyp57pmstn` (`SequenceID`),
  CONSTRAINT `FK_1v78ota9iutr1glkyp57pmstn` FOREIGN KEY (`SequenceID`) REFERENCES `Sequences` (`SequenceID`),
  CONSTRAINT `FK_34433uytluhaf06rdf46u3ava` FOREIGN KEY (`BlastProjectID`) REFERENCES `BlastProjects` (`BlastProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlastResults`
--

LOCK TABLES `BlastResults` WRITE;
/*!40000 ALTER TABLE `BlastResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlastResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clones`
--

DROP TABLE IF EXISTS `Clones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Clones` (
  `CloneID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `LibraryID` int(11) DEFAULT NULL,
  `VectorID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CloneID`),
  UNIQUE KEY `UK_hv3etynois34sh0wcp5rm7e2e` (`Name`),
  KEY `FK_c15u3yal2u3bmnp96dcycn522` (`LibraryID`),
  KEY `FK_xh4m3hf4s2jrh7b9k6hcfuu7` (`VectorID`),
  CONSTRAINT `FK_c15u3yal2u3bmnp96dcycn522` FOREIGN KEY (`LibraryID`) REFERENCES `Libraries` (`LibraryID`),
  CONSTRAINT `FK_xh4m3hf4s2jrh7b9k6hcfuu7` FOREIGN KEY (`VectorID`) REFERENCES `Vectors` (`VectorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clones`
--

LOCK TABLES `Clones` WRITE;
/*!40000 ALTER TABLE `Clones` DISABLE KEYS */;
/*!40000 ALTER TABLE `Clones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClusterCons`
--

DROP TABLE IF EXISTS `ClusterCons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClusterCons` (
  `ClusterConsID` int(11) NOT NULL,
  `ClusterProjectID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ClusterConsID`),
  KEY `FK_bhu3d918y3o4r7loipn3ynn1m` (`ClusterProjectID`),
  CONSTRAINT `FK_bhu3d918y3o4r7loipn3ynn1m` FOREIGN KEY (`ClusterProjectID`) REFERENCES `ClusterProjects` (`ClusterProjectID`),
  CONSTRAINT `FK_mb8baxn860mb530wmepcct0bj` FOREIGN KEY (`ClusterConsID`) REFERENCES `Sequences` (`SequenceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClusterCons`
--

LOCK TABLES `ClusterCons` WRITE;
/*!40000 ALTER TABLE `ClusterCons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterCons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClusterCons_AUD`
--

DROP TABLE IF EXISTS `ClusterCons_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClusterCons_AUD` (
  `ClusterConsID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `ClusterProjectID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ClusterConsID`,`REV`),
  CONSTRAINT `FK_hx2169dofldjeoofyapn2i8sc` FOREIGN KEY (`ClusterConsID`, `REV`) REFERENCES `Sequences_AUD` (`SequenceID`, `REV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClusterCons_AUD`
--

LOCK TABLES `ClusterCons_AUD` WRITE;
/*!40000 ALTER TABLE `ClusterCons_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterCons_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClusterProjects`
--

DROP TABLE IF EXISTS `ClusterProjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClusterProjects` (
  `ClusterProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `AnnotSource` varchar(50) DEFAULT NULL,
  `Assembly` varchar(100) DEFAULT NULL,
  `AssemblyName` varchar(50) DEFAULT NULL,
  `ChimeraCheck` varchar(50) DEFAULT NULL,
  `DateCreated` datetime NOT NULL,
  `Description` longtext,
  `FinishingStrategy` varchar(100) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Sop` varchar(50) DEFAULT NULL,
  `Source` varchar(255) DEFAULT NULL,
  `Url` varchar(50) DEFAULT NULL,
  `GroupID` int(11) NOT NULL,
  `ProjectID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ClusterProjectID`),
  UNIQUE KEY `UK_5c6fv17koo5x6jy2sls38ko5n` (`Name`),
  KEY `FK_eom5gcyan5jrsd0luivtalhui` (`GroupID`),
  KEY `FK_svifa8l2op31413apv1d2unq4` (`ProjectID`),
  CONSTRAINT `FK_eom5gcyan5jrsd0luivtalhui` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_svifa8l2op31413apv1d2unq4` FOREIGN KEY (`ProjectID`) REFERENCES `Projects` (`ProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClusterProjects`
--

LOCK TABLES `ClusterProjects` WRITE;
/*!40000 ALTER TABLE `ClusterProjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterProjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClusterSeqs`
--

DROP TABLE IF EXISTS `ClusterSeqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClusterSeqs` (
  `ClusterSeqID` int(11) NOT NULL AUTO_INCREMENT,
  `AlignedEnd` int(11) DEFAULT NULL,
  `AlignedStart` int(11) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Seq` longtext,
  `Start` int(11) DEFAULT NULL,
  `Strand` int(11) DEFAULT NULL,
  `ClusterCons` int(11) DEFAULT NULL,
  `SequenceID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ClusterSeqID`),
  KEY `FK_dsjxu448lo4iqpswif2ututtv` (`ClusterCons`),
  KEY `FK_72w0hbbiv2tho9lcoe2n8oa21` (`SequenceID`),
  CONSTRAINT `FK_72w0hbbiv2tho9lcoe2n8oa21` FOREIGN KEY (`SequenceID`) REFERENCES `Sequences` (`SequenceID`),
  CONSTRAINT `FK_dsjxu448lo4iqpswif2ututtv` FOREIGN KEY (`ClusterCons`) REFERENCES `ClusterCons` (`ClusterConsID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClusterSeqs`
--

LOCK TABLES `ClusterSeqs` WRITE;
/*!40000 ALTER TABLE `ClusterSeqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterSeqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionInfos`
--

DROP TABLE IF EXISTS `CollectionInfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionInfos` (
  `CollectionInfoID` int(11) NOT NULL AUTO_INCREMENT,
  `AirTemperature` varchar(10) DEFAULT NULL,
  `BasinName` varchar(100) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Collector` varchar(200) DEFAULT NULL,
  `CollectorType` varchar(50) DEFAULT NULL,
  `Continent` varchar(50) DEFAULT NULL,
  `CoordinateSystem` varchar(100) DEFAULT NULL,
  `Coordinates` varchar(100) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Day` varchar(10) DEFAULT NULL,
  `DecimalCoordinateSystem` varchar(100) DEFAULT NULL,
  `Depth` varchar(20) DEFAULT NULL,
  `EcoRegions` varchar(100) DEFAULT NULL,
  `Effort` varchar(50) DEFAULT NULL,
  `Elevation` varchar(50) DEFAULT NULL,
  `EndDay` varchar(100) DEFAULT NULL,
  `EndMonth` varchar(100) DEFAULT NULL,
  `EndYear` varchar(100) DEFAULT NULL,
  `EventTime` varchar(50) DEFAULT NULL,
  `FilterSize` varchar(50) DEFAULT NULL,
  `GeoreferencedBy` varchar(50) DEFAULT NULL,
  `GeoreferencedDate` date DEFAULT NULL,
  `GPSSource` varchar(50) DEFAULT NULL,
  `Habitat` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Latitude` varchar(100) DEFAULT NULL,
  `Longitude` varchar(100) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `Notes` longtext,
  `Preparations` varchar(100) DEFAULT NULL,
  `Province` varchar(50) DEFAULT NULL,
  `RainFall` varchar(50) DEFAULT NULL,
  `RainVolumeCollected` varchar(50) DEFAULT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `RiverStreamName` varchar(100) DEFAULT NULL,
  `SampleSource` varchar(100) DEFAULT NULL,
  `SamplerCollectionDate` date DEFAULT NULL,
  `SamplerInstallationDate` date DEFAULT NULL,
  `Sector` varchar(50) DEFAULT NULL,
  `Site` varchar(200) DEFAULT NULL,
  `SiteCodes` varchar(50) DEFAULT NULL,
  `StreamOrder` int(11) DEFAULT NULL,
  `Week` varchar(50) DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `ProtocolID` int(11) DEFAULT NULL,
  `DecimalLatitude_OLD` varchar(100) DEFAULT NULL,
  `DecimalLongitude_OLD` varchar(100) DEFAULT NULL,
  `DecimalLatitude` float DEFAULT NULL,
  `DecimalLongitude` float DEFAULT NULL,
  PRIMARY KEY (`CollectionInfoID`),
  KEY `collectionInfo_city_idx` (`City`),
  KEY `FK_s238mngbvqv10t8lwkgqb81xc` (`ProtocolID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionInfos`
--

LOCK TABLES `CollectionInfos` WRITE;
/*!40000 ALTER TABLE `CollectionInfos` DISABLE KEYS */;
INSERT INTO `CollectionInfos` VALUES (15,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:52.967000','473722','7144350','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.4238,14.4545),(16,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.189000','476246','7142943','8',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.4113,14.5071),(17,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.372000','478044','7146154','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.4403,14.5439),(18,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.619000','477002','7141056','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.3944,14.5231),(19,NULL,NULL,'Åre (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.799000','400959','7092077','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9416,12.9791),(20,NULL,NULL,'Åre (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.951000','404603','7082947','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.8607,13.0591),(21,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.079000','585381','7092178','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9461,16.7424),(22,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.204000','588859','7093924','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9609,16.8144),(23,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.336000','586091','7095017','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9714,16.7585),(24,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.464000','586972','7092053','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9446,16.7748),(25,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.587000','587044','7091986','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.944,16.7762),(26,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.704000','587392','7094399','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9656,16.7847),(27,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.822000','588731','7092264','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9461,16.8108),(28,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.052000','587426','7094457','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9661,16.7854),(29,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.185000','562236','7087916','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9128,16.2685),(30,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.422000','587447','7091968','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9437,16.7844),(31,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.566000','587286','7093393','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9566,16.782),(32,NULL,NULL,'Härjedalen (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.675000','458726','6838283','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,61.6755,14.2203),(33,NULL,NULL,'Härjedalen (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.780000','461113','6847342','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,61.7571,14.2634),(34,NULL,NULL,'Härjedalen (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.888000','441594','6863156','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,61.8966,13.8886),(35,NULL,NULL,'Härjedalen (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.011000','450306','6885723','8',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,62.1003,14.0481),(36,NULL,NULL,'Härjedalen (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.202000','450306','6885723','8',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,62.1003,14.0481),(37,NULL,NULL,'Härjedalen (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.325000','438687','6860729','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,61.8743,13.8342),(38,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.440000','569426','7039454','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.4767,16.3935),(39,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.564000','563295','7041886','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.4996,16.2714),(40,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.698000','644338','7026055','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.334,17.8833),(41,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.818000','627418','7056813','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.6162,17.5704),(42,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.941000','628290','7070128','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.7353,17.5989),(43,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.067000','620688','7044544','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.5086,17.4254),(44,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.195000','604490','7077604','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.8102,17.1222),(45,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.315000','617972','7052984','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.5852,17.3772),(46,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.445000','627875','7058296','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.6294,17.5808),(47,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.576000','626141','7059589','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.6416,17.5469),(48,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.715000','624285','7063305','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.6756,17.5124),(49,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.859000','624377','7063320','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.6757,17.5143),(50,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.997000','618842','7044485','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.5087,17.3883),(51,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.134000','605328','7042539','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.4955,17.1156),(52,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.261000','605267','7031165','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.3935,17.1069),(53,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.388000','608993','7036252','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.438,17.1849),(54,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.526000','602644','7035562','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.4337,17.0573),(55,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.666000','610991','7044457','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.511,17.2306),(56,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.812000','580416','7074876','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.7921,16.6321),(57,NULL,NULL,'Sollefteå (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.953000','579726','7071376','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.7609,16.6163),(58,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.091000','651879','7050444','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.5495,18.0569),(59,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.222000','658060','7054354','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.5818,18.185),(60,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.345000','657964','7060442','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.6364,18.1892),(61,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.471000','658053','7060725','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.6389,18.1913),(62,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.600000','675848','7039313','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.4387,18.526),(63,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.731000','677123','7042124','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.4633,18.5546),(64,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.860000','674549','7036571','10',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.4148,18.497),(65,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.002000','667410','7041914','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.4661,18.3599),(66,NULL,NULL,'Örnsköldsvik (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.147000','675103','7040130','9',NULL,NULL,'Västernorrlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.4464,18.512),(67,NULL,NULL,'Krokom (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.274000','478281','7087203','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9113,14.5574),(68,NULL,NULL,'Krokom (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.402000','482915','7097473','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.0037,14.6507),(69,NULL,NULL,'Krokom (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.532000','484705','7092906','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9628,14.6877),(70,NULL,NULL,'Krokom (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.704000','477903','7086778','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9074,14.5497),(71,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.835000','512032','7125286','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.2535,15.2482),(72,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.968000','511631','7130395','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.2994,15.2404),(73,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.153000','510866','7128176','8',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.2795,15.2244),(74,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.292000','509378','7127906','8',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.2771,15.1937),(75,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.426000','540809','7091579','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9488,15.8328),(76,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.559000','536440','7092867','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9609,15.744),(77,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.692000','539167','7092642','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9586,15.7996),(78,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.826000','541932','7090702','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9408,15.8555),(79,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.959000','541170','7088468','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9209,15.8394),(80,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.093000','524376','7108914','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.1059,15.5003),(81,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.230000','518914','7111803','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.1322,15.3885),(82,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.360000','521049','7109877','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.1148,15.4321),(83,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.491000','522892','7110047','8',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.1162,15.47),(84,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.621000','529440','7114085','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.1519,15.6052),(85,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.751000','521849','7102278','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.0465,15.4474),(86,NULL,NULL,'Krokom (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.885000','467200','7098834','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.0148,14.329),(87,NULL,NULL,'Krokom (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.020000','466613','7099406','8',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.0199,14.3169),(88,NULL,NULL,'Krokom (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.159000','468873','7094089','8',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.9724,14.3642),(89,NULL,NULL,'Krokom (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.294000','458023','7105349','8',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.0723,14.1395),(90,NULL,NULL,'Åre (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.433000','404963','7005621','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.1673,13.1127),(91,NULL,NULL,'Åre (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.571000','418001','7014010','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.2457,13.3673),(92,NULL,NULL,'Åre (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.727000','439611','7005141','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.1704,13.8007),(93,NULL,NULL,'Åre (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.875000','419466','7011563','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.2241,13.3977),(94,NULL,NULL,'Åre (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.027000','405709','7007573','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.185,13.1264),(95,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.174000','518537','7137338','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.3614,15.384),(96,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.326000','522775','7156944','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.537,15.4748),(97,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.464000','506333','7141254','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.3969,15.1313),(98,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.598000','497564','7138269','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.3702,14.9495),(99,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.779000','515415','7100429','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.0303,15.3155),(100,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.912000','514296','7103086','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.0542,15.2928),(101,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.047000','510258','7119463','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.2013,15.2112),(102,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.180000','508389','7120331','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.2091,15.1728),(103,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.319000','510337','7118514','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.1928,15.2128),(104,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.457000','508276','7112719','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.1408,15.1701),(105,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.593000','509585','7118919','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.1964,15.1974),(106,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.731000','510855','7120597','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.2115,15.2236),(107,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.869000','510828','7118848','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.1958,15.2229),(108,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:06.008000','511408','7119766','10',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.204,15.2349),(109,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:06.150000','511138','7118375','9',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,64.1915,15.2293),(110,NULL,NULL,'Strömsund (S)',NULL,NULL,NULL,'SWEREF 99',NULL,NULL,'31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:06.291000','519849','7055510','8',NULL,NULL,'Jämtlands län (S)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015',NULL,NULL,NULL,63.627,15.4005);
/*!40000 ALTER TABLE `CollectionInfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionInfos_AUD`
--

DROP TABLE IF EXISTS `CollectionInfos_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionInfos_AUD` (
  `CollectionInfoID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `AirTemperature` varchar(10) DEFAULT NULL,
  `BasinName` varchar(100) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Collector` varchar(200) DEFAULT NULL,
  `CollectorType` varchar(50) DEFAULT NULL,
  `Continent` varchar(50) DEFAULT NULL,
  `CoordinateSystem` varchar(100) DEFAULT NULL,
  `Coordinates` varchar(100) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Day` varchar(10) DEFAULT NULL,
  `DecimalCoordinateSystem` varchar(100) DEFAULT NULL,
  `DecimalLatitude_OLD` varchar(100) DEFAULT NULL,
  `DecimalLongitude_OLD` varchar(100) DEFAULT NULL,
  `Depth` varchar(20) DEFAULT NULL,
  `EcoRegions` varchar(100) DEFAULT NULL,
  `Effort` varchar(50) DEFAULT NULL,
  `Elevation` varchar(50) DEFAULT NULL,
  `EndDay` varchar(10) DEFAULT NULL,
  `EndMonth` varchar(10) DEFAULT NULL,
  `EndYear` varchar(10) DEFAULT NULL,
  `EventTime` varchar(50) DEFAULT NULL,
  `FilterSize` varchar(50) DEFAULT NULL,
  `GeoreferencedBy` varchar(50) DEFAULT NULL,
  `GeoreferencedDate` date DEFAULT NULL,
  `GPSSource` varchar(50) DEFAULT NULL,
  `Habitat` varchar(50) DEFAULT NULL,
  `Latitude` varchar(100) DEFAULT NULL,
  `Longitude` varchar(100) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `Notes` longtext,
  `Preparations` varchar(100) DEFAULT NULL,
  `Province` varchar(50) DEFAULT NULL,
  `RainFall` varchar(50) DEFAULT NULL,
  `RainVolumeCollected` varchar(50) DEFAULT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `RiverStreamName` varchar(100) DEFAULT NULL,
  `SampleSource` varchar(100) DEFAULT NULL,
  `SamplerCollectionDate` date DEFAULT NULL,
  `SamplerInstallationDate` date DEFAULT NULL,
  `Sector` varchar(50) DEFAULT NULL,
  `Site` varchar(200) DEFAULT NULL,
  `SiteCodes` varchar(50) DEFAULT NULL,
  `StreamOrder` int(11) DEFAULT NULL,
  `Week` varchar(50) DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `ProtocolID` int(11) DEFAULT NULL,
  `DecimalLatitude` float DEFAULT NULL,
  `DecimalLongitude` float DEFAULT NULL,
  PRIMARY KEY (`CollectionInfoID`,`REV`),
  KEY `FK_1xm6fatpxmudxlvx20wg8n5h5` (`REV`),
  CONSTRAINT `FK_1xm6fatpxmudxlvx20wg8n5h5` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionInfos_AUD`
--

LOCK TABLES `CollectionInfos_AUD` WRITE;
/*!40000 ALTER TABLE `CollectionInfos_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionInfos_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionInfos_tmp`
--

DROP TABLE IF EXISTS `CollectionInfos_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionInfos_tmp` (
  `CollectionInfoID` int(11) NOT NULL AUTO_INCREMENT,
  `AirTemperature` varchar(10) DEFAULT NULL,
  `BasinName` varchar(100) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Collector` varchar(200) DEFAULT NULL,
  `CollectorType` varchar(50) DEFAULT NULL,
  `Continent` varchar(50) DEFAULT NULL,
  `CoordinateSystem` varchar(100) DEFAULT NULL,
  `Coordinates` varchar(100) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Day` varchar(10) DEFAULT NULL,
  `DecimalCoordinateSystem` varchar(100) DEFAULT NULL,
  `Depth` varchar(20) DEFAULT NULL,
  `EcoRegions` varchar(100) DEFAULT NULL,
  `Effort` varchar(50) DEFAULT NULL,
  `Elevation` varchar(50) DEFAULT NULL,
  `EndDay` varchar(100) DEFAULT NULL,
  `EndMonth` varchar(100) DEFAULT NULL,
  `EndYear` varchar(100) DEFAULT NULL,
  `EventTime` varchar(50) DEFAULT NULL,
  `FilterSize` varchar(50) DEFAULT NULL,
  `GeoreferencedBy` varchar(50) DEFAULT NULL,
  `GeoreferencedDate` date DEFAULT NULL,
  `GPSSource` varchar(50) DEFAULT NULL,
  `Habitat` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Latitude` varchar(100) DEFAULT NULL,
  `Longitude` varchar(100) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `Notes` longtext,
  `Preparations` varchar(100) DEFAULT NULL,
  `Province` varchar(50) DEFAULT NULL,
  `RainFall` varchar(50) DEFAULT NULL,
  `RainVolumeCollected` varchar(50) DEFAULT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `RiverStreamName` varchar(100) DEFAULT NULL,
  `SampleSource` varchar(100) DEFAULT NULL,
  `SamplerCollectionDate` date DEFAULT NULL,
  `SamplerInstallationDate` date DEFAULT NULL,
  `Sector` varchar(50) DEFAULT NULL,
  `Site` varchar(200) DEFAULT NULL,
  `SiteCodes` varchar(50) DEFAULT NULL,
  `StreamOrder` int(11) DEFAULT NULL,
  `Week` varchar(50) DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `ProtocolID` int(11) DEFAULT NULL,
  `DecimalLatitude_OLD` varchar(100) DEFAULT NULL,
  `DecimalLongitude_OLD` varchar(100) DEFAULT NULL,
  `DecimalLatitude` float DEFAULT NULL,
  `DecimalLongitude` float DEFAULT NULL,
  PRIMARY KEY (`CollectionInfoID`),
  KEY `collectionInfo_city_idx` (`City`),
  KEY `FK_s238mngbvqv10t8lwkgqb81xc` (`ProtocolID`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionInfos_tmp`
--

LOCK TABLES `CollectionInfos_tmp` WRITE;
/*!40000 ALTER TABLE `CollectionInfos_tmp` DISABLE KEYS */;
INSERT INTO `CollectionInfos_tmp` VALUES (15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.4238,14.4545),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.4113,14.5071),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.4403,14.5439),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.3944,14.5231),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9416,12.9791),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.8607,13.0591),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9461,16.7424),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9609,16.8144),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9714,16.7585),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9446,16.7748),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.944,16.7762),(26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9656,16.7847),(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9461,16.8108),(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9661,16.7854),(29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9128,16.2685),(30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9437,16.7844),(31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9566,16.782),(32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61.6755,14.2203),(33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61.7571,14.2634),(34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61.8966,13.8886),(35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62.1003,14.0481),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62.1003,14.0481),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61.8743,13.8342),(38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.4767,16.3935),(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.4996,16.2714),(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.334,17.8833),(41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.6162,17.5704),(42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.7353,17.5989),(43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.5086,17.4254),(44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.8102,17.1222),(45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.5852,17.3772),(46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.6294,17.5808),(47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.6416,17.5469),(48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.6756,17.5124),(49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.6757,17.5143),(50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.5087,17.3883),(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.4955,17.1156),(52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.3935,17.1069),(53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.438,17.1849),(54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.4337,17.0573),(55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.511,17.2306),(56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.7921,16.6321),(57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.7609,16.6163),(58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.5495,18.0569),(59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.5818,18.185),(60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.6364,18.1892),(61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.6389,18.1913),(62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.4387,18.526),(63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.4633,18.5546),(64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.4148,18.497),(65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.4661,18.3599),(66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.4464,18.512),(67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9113,14.5574),(68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.0037,14.6507),(69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9628,14.6877),(70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9074,14.5497),(71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.2535,15.2482),(72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.2994,15.2404),(73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.2795,15.2244),(74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.2771,15.1937),(75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9488,15.8328),(76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9609,15.744),(77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9586,15.7996),(78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9408,15.8555),(79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9209,15.8394),(80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.1059,15.5003),(81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.1322,15.3885),(82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.1148,15.4321),(83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.1162,15.47),(84,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.1519,15.6052),(85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.0465,15.4474),(86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.0148,14.329),(87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.0199,14.3169),(88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.9724,14.3642),(89,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.0723,14.1395),(90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.1673,13.1127),(91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.2457,13.3673),(92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.1704,13.8007),(93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.2241,13.3977),(94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.185,13.1264),(95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.3614,15.384),(96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.537,15.4748),(97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.3969,15.1313),(98,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.3702,14.9495),(99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.0303,15.3155),(100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.0542,15.2928),(101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.2013,15.2112),(102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.2091,15.1728),(103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.1928,15.2128),(104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.1408,15.1701),(105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.1964,15.1974),(106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.2115,15.2236),(107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.1958,15.2229),(108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.204,15.2349),(109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.1915,15.2293),(110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63.627,15.4005);
/*!40000 ALTER TABLE `CollectionInfos_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContainerTypes`
--

DROP TABLE IF EXISTS `ContainerTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContainerTypes` (
  `ContainerTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `BaseType` varchar(50) NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `NumberOfColumns` int(11) NOT NULL,
  `NumberOfRows` int(11) NOT NULL,
  `NumberOfWells` int(11) NOT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ContainerTypeID`),
  UNIQUE KEY `UK_ij5h5jfwxkt0ppev6h0ra5cqo` (`Name`,`GroupID`),
  KEY `FK_jhw6u82ksauethycw3p0nuadr` (`GroupID`),
  CONSTRAINT `FK_jhw6u82ksauethycw3p0nuadr` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContainerTypes`
--

LOCK TABLES `ContainerTypes` WRITE;
/*!40000 ALTER TABLE `ContainerTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ContainerTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Containers`
--

DROP TABLE IF EXISTS `Containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Containers` (
  `ContainerID` int(11) NOT NULL AUTO_INCREMENT,
  `ContainerNumber` varchar(50) NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `ContainerTypeID` int(11) NOT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `StorageID` int(11) DEFAULT NULL,
  `UnitSectionID` int(11) DEFAULT NULL,
  `FillByRow` bit(1) NOT NULL,
  PRIMARY KEY (`ContainerID`),
  UNIQUE KEY `UK_rllpdna6qkanrondp46qn6a41` (`ContainerNumber`,`StorageID`,`GroupID`),
  KEY `FK_sii753dw6tfwj8lc4iokho2q` (`ContainerTypeID`),
  KEY `FK_8b01ws3lovo12oxco33193f2n` (`GroupID`),
  KEY `FK_qrjwbqax7ro6uos8jllr4noyi` (`StorageID`),
  KEY `FK_4hmy3nk8ec60v0ahr5fpr7vny` (`UnitSectionID`),
  CONSTRAINT `FK_4hmy3nk8ec60v0ahr5fpr7vny` FOREIGN KEY (`UnitSectionID`) REFERENCES `UnitSections` (`UnitSectionID`),
  CONSTRAINT `FK_8b01ws3lovo12oxco33193f2n` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_qrjwbqax7ro6uos8jllr4noyi` FOREIGN KEY (`StorageID`) REFERENCES `Storages` (`StorageID`),
  CONSTRAINT `FK_sii753dw6tfwj8lc4iokho2q` FOREIGN KEY (`ContainerTypeID`) REFERENCES `ContainerTypes` (`ContainerTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Containers`
--

LOCK TABLES `Containers` WRITE;
/*!40000 ALTER TABLE `Containers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Countries`
--

DROP TABLE IF EXISTS `Countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Countries` (
  `CountryId` int(11) NOT NULL AUTO_INCREMENT,
  `Abbrev` varchar(100) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(512) NOT NULL,
  `Note` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`CountryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Countries`
--

LOCK TABLES `Countries` WRITE;
/*!40000 ALTER TABLE `Countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `Countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Datasets`
--

DROP TABLE IF EXISTS `Datasets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Datasets` (
  `DatasetID` int(11) NOT NULL AUTO_INCREMENT,
  `DatasetType` varchar(20) NOT NULL,
  `Description` longtext,
  `Directory` varchar(255) DEFAULT NULL,
  `Filename` varchar(50) DEFAULT NULL,
  `FilterProgramFile` varchar(255) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Query` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DatasetID`),
  UNIQUE KEY `UK_nemceqssvsiayn95cwo2n4l3k` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Datasets`
--

LOCK TABLES `Datasets` WRITE;
/*!40000 ALTER TABLE `Datasets` DISABLE KEYS */;
/*!40000 ALTER TABLE `Datasets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmailAddrs`
--

DROP TABLE IF EXISTS `EmailAddrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmailAddrs` (
  `EmailID` int(11) NOT NULL AUTO_INCREMENT,
  `EmailAddr` varchar(60) NOT NULL,
  `EmailType` varchar(20) NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `PrimaryEmail` bit(1) NOT NULL,
  `PeopleID` int(11) DEFAULT NULL,
  PRIMARY KEY (`EmailID`),
  KEY `FK_lwuk6hh8xifok37n2yry6owi2` (`PeopleID`),
  CONSTRAINT `FK_lwuk6hh8xifok37n2yry6owi2` FOREIGN KEY (`PeopleID`) REFERENCES `People` (`PeopleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmailAddrs`
--

LOCK TABLES `EmailAddrs` WRITE;
/*!40000 ALTER TABLE `EmailAddrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmailAddrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Events`
--

DROP TABLE IF EXISTS `Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Events` (
  `EventID` int(11) NOT NULL AUTO_INCREMENT,
  `argument` varchar(255) DEFAULT NULL,
  `Entity` varchar(255) NOT NULL,
  `Filter` varchar(255) DEFAULT NULL,
  `Operation` varchar(255) NOT NULL,
  `TaskID` int(11) NOT NULL,
  PRIMARY KEY (`EventID`),
  KEY `FK_r6bjqv7jmvqu5j2kbf017wvwv` (`TaskID`),
  CONSTRAINT `FK_r6bjqv7jmvqu5j2kbf017wvwv` FOREIGN KEY (`TaskID`) REFERENCES `Tasks` (`TaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Events`
--

LOCK TABLES `Events` WRITE;
/*!40000 ALTER TABLE `Events` DISABLE KEYS */;
/*!40000 ALTER TABLE `Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureLocations`
--

DROP TABLE IF EXISTS `FeatureLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureLocations` (
  `FeatureLocationID` int(11) NOT NULL AUTO_INCREMENT,
  `End` int(11) NOT NULL,
  `FeatureSequence` longtext,
  `Frame` int(11) NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Start` int(11) NOT NULL,
  `Strand` int(11) NOT NULL,
  `FeatureID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FeatureLocationID`),
  KEY `FK_thvqsq3ko7r52yfedudeab4vr` (`FeatureID`),
  CONSTRAINT `FK_thvqsq3ko7r52yfedudeab4vr` FOREIGN KEY (`FeatureID`) REFERENCES `Features` (`FeatureID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureLocations`
--

LOCK TABLES `FeatureLocations` WRITE;
/*!40000 ALTER TABLE `FeatureLocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `FeatureLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureLocations_AUD`
--

DROP TABLE IF EXISTS `FeatureLocations_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureLocations_AUD` (
  `FeatureLocationID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `End` int(11) DEFAULT NULL,
  `FeatureSequence` longtext,
  `Frame` int(11) DEFAULT NULL,
  `Start` int(11) DEFAULT NULL,
  `Strand` int(11) DEFAULT NULL,
  `FeatureID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FeatureLocationID`,`REV`),
  KEY `FK_p9o0sc50cparbgwdhviasv27e` (`REV`),
  CONSTRAINT `FK_p9o0sc50cparbgwdhviasv27e` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureLocations_AUD`
--

LOCK TABLES `FeatureLocations_AUD` WRITE;
/*!40000 ALTER TABLE `FeatureLocations_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `FeatureLocations_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Features`
--

DROP TABLE IF EXISTS `Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Features` (
  `FeatureID` int(11) NOT NULL AUTO_INCREMENT,
  `DateCreated` datetime NOT NULL,
  `Description` longtext,
  `FeatureDefault` bit(1) NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Link2FeatureID` int(11) DEFAULT NULL,
  `SequenceID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FeatureID`),
  KEY `FK_b4jkqt4yxxuuwre2sum1lys12` (`Link2FeatureID`),
  KEY `FK_c4u5jdc3fu4776plhw40lwqh9` (`SequenceID`),
  KEY `FK_qps6ai7tcwe35281n22f5qgac` (`RegionID`),
  CONSTRAINT `FK_b4jkqt4yxxuuwre2sum1lys12` FOREIGN KEY (`Link2FeatureID`) REFERENCES `Features` (`FeatureID`),
  CONSTRAINT `FK_c4u5jdc3fu4776plhw40lwqh9` FOREIGN KEY (`SequenceID`) REFERENCES `Sequences` (`SequenceID`),
  CONSTRAINT `FK_qps6ai7tcwe35281n22f5qgac` FOREIGN KEY (`RegionID`) REFERENCES `Regions` (`TagID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Features`
--

LOCK TABLES `Features` WRITE;
/*!40000 ALTER TABLE `Features` DISABLE KEYS */;
/*!40000 ALTER TABLE `Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Features_AUD`
--

DROP TABLE IF EXISTS `Features_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Features_AUD` (
  `FeatureID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `Description` longtext,
  `FeatureDefault` bit(1) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Link2FeatureID` int(11) DEFAULT NULL,
  `SequenceID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FeatureID`,`REV`),
  KEY `FK_i5819kpc7x3sxes3meew98m7n` (`REV`),
  CONSTRAINT `FK_i5819kpc7x3sxes3meew98m7n` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Features_AUD`
--

LOCK TABLES `Features_AUD` WRITE;
/*!40000 ALTER TABLE `Features_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Features_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSystemWatcherEntry`
--

DROP TABLE IF EXISTS `FileSystemWatcherEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSystemWatcherEntry` (
  `FileSystemWatcherEntryID` int(11) NOT NULL AUTO_INCREMENT,
  `AutoLink` bit(1) NOT NULL,
  `EntityType` varchar(255) NOT NULL,
  `FieldToLink` varchar(255) DEFAULT NULL,
  `FileNameFilter` varchar(255) DEFAULT NULL,
  `AutoLinkingRegex` varchar(255) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Path` varchar(255) NOT NULL,
  `Recursive` bit(1) NOT NULL,
  PRIMARY KEY (`FileSystemWatcherEntryID`),
  UNIQUE KEY `UK_fbuc77csbl7qcicve29l7d04a` (`Path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSystemWatcherEntry`
--

LOCK TABLES `FileSystemWatcherEntry` WRITE;
/*!40000 ALTER TABLE `FileSystemWatcherEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSystemWatcherEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fragments`
--

DROP TABLE IF EXISTS `Fragments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fragments` (
  `FragmentID` int(11) NOT NULL AUTO_INCREMENT,
  `CreationDate` datetime(6) DEFAULT NULL,
  `FileDir` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Note` varchar(1024) DEFAULT NULL,
  `Result` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `PcrBatchID` int(11) DEFAULT NULL,
  `PcrReactionID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  `SampleID` int(11) DEFAULT NULL,
  `SeqBatchID` int(11) DEFAULT NULL,
  `SeqReactionID` int(11) DEFAULT NULL,
  `SpecimenID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FragmentID`),
  KEY `fragment_name_idx` (`Name`),
  KEY `FK_690ir8h4t5713e5g8bpjxuqbv` (`GroupID`),
  KEY `FK_btqnax4uj78wdq9hc58g2s3ey` (`PcrBatchID`),
  KEY `FK_is4e1n5v2h6ynpek902c5h7bu` (`PcrReactionID`),
  KEY `FK_nfv5dwm6h44wnc721jf51uigy` (`RegionID`),
  KEY `FK_jsofbufrsm6m5h8qisfhkv9or` (`SampleID`),
  KEY `FK_n4b3g85fdqd5j407l6n3pmy3b` (`SeqBatchID`),
  KEY `FK_gcnjlac5jn8tln0ug2qkftf9b` (`SeqReactionID`),
  KEY `FK_7kanmm9rrhdfnmdx641s6f68j` (`SpecimenID`),
  CONSTRAINT `FK_690ir8h4t5713e5g8bpjxuqbv` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_7kanmm9rrhdfnmdx641s6f68j` FOREIGN KEY (`SpecimenID`) REFERENCES `Specimens` (`SpecimenID`),
  CONSTRAINT `FK_btqnax4uj78wdq9hc58g2s3ey` FOREIGN KEY (`PcrBatchID`) REFERENCES `PcrBatchs` (`PCRBatchID`),
  CONSTRAINT `FK_gcnjlac5jn8tln0ug2qkftf9b` FOREIGN KEY (`SeqReactionID`) REFERENCES `SeqReactions` (`SeqReactionID`),
  CONSTRAINT `FK_is4e1n5v2h6ynpek902c5h7bu` FOREIGN KEY (`PcrReactionID`) REFERENCES `PcrReactions` (`PcrReactionID`),
  CONSTRAINT `FK_jsofbufrsm6m5h8qisfhkv9or` FOREIGN KEY (`SampleID`) REFERENCES `Samples` (`SampleID`),
  CONSTRAINT `FK_n4b3g85fdqd5j407l6n3pmy3b` FOREIGN KEY (`SeqBatchID`) REFERENCES `SeqBatchs` (`SeqBatchID`),
  CONSTRAINT `FK_nfv5dwm6h44wnc721jf51uigy` FOREIGN KEY (`RegionID`) REFERENCES `Regions` (`TagID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fragments`
--

LOCK TABLES `Fragments` WRITE;
/*!40000 ALTER TABLE `Fragments` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fragments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fragments_AUD`
--

DROP TABLE IF EXISTS `Fragments_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fragments_AUD` (
  `FragmentID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `CreationDate` datetime(6) DEFAULT NULL,
  `FileDir` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Note` varchar(1024) DEFAULT NULL,
  `Result` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `PcrBatchID` int(11) DEFAULT NULL,
  `PcrReactionID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  `SampleID` int(11) DEFAULT NULL,
  `SeqBatchID` int(11) DEFAULT NULL,
  `SeqReactionID` int(11) DEFAULT NULL,
  `SpecimenID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FragmentID`,`REV`),
  KEY `FK_c3c6aipgssi2std58qr8hltxa` (`REV`),
  CONSTRAINT `FK_c3c6aipgssi2std58qr8hltxa` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fragments_AUD`
--

LOCK TABLES `Fragments_AUD` WRITE;
/*!40000 ALTER TABLE `Fragments_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fragments_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FungalInfos`
--

DROP TABLE IF EXISTS `FungalInfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FungalInfos` (
  `FungalInfoID` int(11) NOT NULL AUTO_INCREMENT,
  `CCFCNumber` varchar(50) DEFAULT NULL,
  `DAOMGroup` varchar(50) DEFAULT NULL,
  `DAOMNumber` varchar(50) DEFAULT NULL,
  `Culture` bit(1) DEFAULT NULL,
  `CultureType` varchar(50) DEFAULT NULL,
  `IsolateNumber` varchar(50) DEFAULT NULL,
  `IsolatedBy` varchar(50) DEFAULT NULL,
  `IsolationDate` date DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `ReceivedFrom` varchar(255) DEFAULT NULL,
  `SavedAs` varchar(50) DEFAULT NULL,
  `ToCCFC` date DEFAULT NULL,
  `ToDAOM` date DEFAULT NULL,
  PRIMARY KEY (`FungalInfoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FungalInfos`
--

LOCK TABLES `FungalInfos` WRITE;
/*!40000 ALTER TABLE `FungalInfos` DISABLE KEYS */;
/*!40000 ALTER TABLE `FungalInfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FungalInfos_AUD`
--

DROP TABLE IF EXISTS `FungalInfos_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FungalInfos_AUD` (
  `FungalInfoID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `CCFCNumber` varchar(50) DEFAULT NULL,
  `DAOMGroup` varchar(50) DEFAULT NULL,
  `DAOMNumber` varchar(50) DEFAULT NULL,
  `Culture` bit(1) DEFAULT NULL,
  `CultureType` varchar(50) DEFAULT NULL,
  `IsolateNumber` varchar(50) DEFAULT NULL,
  `IsolatedBy` varchar(50) DEFAULT NULL,
  `IsolationDate` date DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `ReceivedFrom` varchar(255) DEFAULT NULL,
  `SavedAs` varchar(50) DEFAULT NULL,
  `ToCCFC` date DEFAULT NULL,
  `ToDAOM` date DEFAULT NULL,
  PRIMARY KEY (`FungalInfoID`,`REV`),
  KEY `FK_60m2opdbdh0oovy8ojgwg2kf3` (`REV`),
  CONSTRAINT `FK_60m2opdbdh0oovy8ojgwg2kf3` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FungalInfos_AUD`
--

LOCK TABLES `FungalInfos_AUD` WRITE;
/*!40000 ALTER TABLE `FungalInfos_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `FungalInfos_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genotypes`
--

DROP TABLE IF EXISTS `Genotypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genotypes` (
  `GenotypeID` int(11) NOT NULL AUTO_INCREMENT,
  `Allele1` int(11) DEFAULT NULL,
  `Allele10` int(11) DEFAULT NULL,
  `Allele11` int(11) DEFAULT NULL,
  `Allele12` int(11) DEFAULT NULL,
  `Allele13` int(11) DEFAULT NULL,
  `Allele14` int(11) DEFAULT NULL,
  `Allele15` int(11) DEFAULT NULL,
  `Allele16` int(11) DEFAULT NULL,
  `Allele17` int(11) DEFAULT NULL,
  `Allele18` int(11) DEFAULT NULL,
  `Allele19` int(11) DEFAULT NULL,
  `Allele2` int(11) DEFAULT NULL,
  `Allele20` int(11) DEFAULT NULL,
  `Allele3` int(11) DEFAULT NULL,
  `Allele4` int(11) DEFAULT NULL,
  `Allele5` int(11) DEFAULT NULL,
  `Allele6` int(11) DEFAULT NULL,
  `Allele7` int(11) DEFAULT NULL,
  `Allele8` int(11) DEFAULT NULL,
  `Allele9` int(11) DEFAULT NULL,
  `Dye` varchar(50) NOT NULL,
  `FragmentFileName` varchar(100) NOT NULL,
  `GeneMapperProjectName` varchar(50) DEFAULT NULL,
  `Marker` varchar(50) DEFAULT NULL,
  `ProjectFileName` varchar(100) NOT NULL,
  `Size1` varchar(10) DEFAULT NULL,
  `Size10` varchar(10) DEFAULT NULL,
  `Size11` varchar(10) DEFAULT NULL,
  `Size12` varchar(10) DEFAULT NULL,
  `Size13` varchar(10) DEFAULT NULL,
  `Size14` varchar(10) DEFAULT NULL,
  `Size15` varchar(10) DEFAULT NULL,
  `Size16` varchar(10) DEFAULT NULL,
  `Size17` varchar(10) DEFAULT NULL,
  `Size18` varchar(10) DEFAULT NULL,
  `Size19` varchar(10) DEFAULT NULL,
  `Size2` varchar(10) DEFAULT NULL,
  `Size20` varchar(10) DEFAULT NULL,
  `Size3` varchar(10) DEFAULT NULL,
  `Size4` varchar(10) DEFAULT NULL,
  `Size5` varchar(10) DEFAULT NULL,
  `Size6` varchar(10) DEFAULT NULL,
  `Size7` varchar(10) DEFAULT NULL,
  `Size8` varchar(10) DEFAULT NULL,
  `Size9` varchar(10) DEFAULT NULL,
  `FragmentID` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `PcrReactionID` int(11) DEFAULT NULL,
  `SampleID` int(11) DEFAULT NULL,
  `SeqReactionID` int(11) DEFAULT NULL,
  `SpecimenID` int(11) DEFAULT NULL,
  `AnalysisProgram` varchar(50) DEFAULT NULL,
  `MachineName` varchar(50) DEFAULT NULL,
  `Polymer` varchar(50) DEFAULT NULL,
  `SizeStandard` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`GenotypeID`),
  KEY `FK_k7l4tnbth2y7o68pirvugiewk` (`FragmentID`),
  KEY `FK_rpbwh1f9k66r13ma96vy1wmvq` (`GroupID`),
  KEY `FK_rn5embtsuc9p9bbs027gun5px` (`PcrReactionID`),
  KEY `FK_agn2dbwsghp1adwacwp995vsu` (`SampleID`),
  KEY `FK_6v2oc6eppswssh1e5sqe9bnrk` (`SeqReactionID`),
  KEY `FK_3cwj5t84yd9qrhe8q0q9lc95k` (`SpecimenID`),
  CONSTRAINT `FK_3cwj5t84yd9qrhe8q0q9lc95k` FOREIGN KEY (`SpecimenID`) REFERENCES `Specimens` (`SpecimenID`),
  CONSTRAINT `FK_6v2oc6eppswssh1e5sqe9bnrk` FOREIGN KEY (`SeqReactionID`) REFERENCES `SeqReactions` (`SeqReactionID`),
  CONSTRAINT `FK_agn2dbwsghp1adwacwp995vsu` FOREIGN KEY (`SampleID`) REFERENCES `Samples` (`SampleID`),
  CONSTRAINT `FK_k7l4tnbth2y7o68pirvugiewk` FOREIGN KEY (`FragmentID`) REFERENCES `Fragments` (`FragmentID`),
  CONSTRAINT `FK_rn5embtsuc9p9bbs027gun5px` FOREIGN KEY (`PcrReactionID`) REFERENCES `PcrReactions` (`PcrReactionID`),
  CONSTRAINT `FK_rpbwh1f9k66r13ma96vy1wmvq` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genotypes`
--

LOCK TABLES `Genotypes` WRITE;
/*!40000 ALTER TABLE `Genotypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Genotypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genotypes_AUD`
--

DROP TABLE IF EXISTS `Genotypes_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genotypes_AUD` (
  `GenotypeID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Allele1` int(11) DEFAULT NULL,
  `Allele10` int(11) DEFAULT NULL,
  `Allele11` int(11) DEFAULT NULL,
  `Allele12` int(11) DEFAULT NULL,
  `Allele13` int(11) DEFAULT NULL,
  `Allele14` int(11) DEFAULT NULL,
  `Allele15` int(11) DEFAULT NULL,
  `Allele16` int(11) DEFAULT NULL,
  `Allele17` int(11) DEFAULT NULL,
  `Allele18` int(11) DEFAULT NULL,
  `Allele19` int(11) DEFAULT NULL,
  `Allele2` int(11) DEFAULT NULL,
  `Allele20` int(11) DEFAULT NULL,
  `Allele3` int(11) DEFAULT NULL,
  `Allele4` int(11) DEFAULT NULL,
  `Allele5` int(11) DEFAULT NULL,
  `Allele6` int(11) DEFAULT NULL,
  `Allele7` int(11) DEFAULT NULL,
  `Allele8` int(11) DEFAULT NULL,
  `Allele9` int(11) DEFAULT NULL,
  `Dye` varchar(50) DEFAULT NULL,
  `FragmentFileName` varchar(100) DEFAULT NULL,
  `GeneMapperProjectName` varchar(50) DEFAULT NULL,
  `Marker` varchar(50) DEFAULT NULL,
  `ProjectFileName` varchar(100) DEFAULT NULL,
  `Size1` varchar(10) DEFAULT NULL,
  `Size10` varchar(10) DEFAULT NULL,
  `Size11` varchar(10) DEFAULT NULL,
  `Size12` varchar(10) DEFAULT NULL,
  `Size13` varchar(10) DEFAULT NULL,
  `Size14` varchar(10) DEFAULT NULL,
  `Size15` varchar(10) DEFAULT NULL,
  `Size16` varchar(10) DEFAULT NULL,
  `Size17` varchar(10) DEFAULT NULL,
  `Size18` varchar(10) DEFAULT NULL,
  `Size19` varchar(10) DEFAULT NULL,
  `Size2` varchar(10) DEFAULT NULL,
  `Size20` varchar(10) DEFAULT NULL,
  `Size3` varchar(10) DEFAULT NULL,
  `Size4` varchar(10) DEFAULT NULL,
  `Size5` varchar(10) DEFAULT NULL,
  `Size6` varchar(10) DEFAULT NULL,
  `Size7` varchar(10) DEFAULT NULL,
  `Size8` varchar(10) DEFAULT NULL,
  `Size9` varchar(10) DEFAULT NULL,
  `FragmentID` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `PcrReactionID` int(11) DEFAULT NULL,
  `SampleID` int(11) DEFAULT NULL,
  `SeqReactionID` int(11) DEFAULT NULL,
  `SpecimenID` int(11) DEFAULT NULL,
  `AnalysisProgram` varchar(50) DEFAULT NULL,
  `MachineName` varchar(50) DEFAULT NULL,
  `Polymer` varchar(50) DEFAULT NULL,
  `SizeStandard` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`GenotypeID`,`REV`),
  KEY `FK_5251so8coqx5l8rxh8yb4kwoq` (`REV`),
  CONSTRAINT `FK_5251so8coqx5l8rxh8yb4kwoq` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genotypes_AUD`
--

LOCK TABLES `Genotypes_AUD` WRITE;
/*!40000 ALTER TABLE `Genotypes_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Genotypes_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GoHits`
--

DROP TABLE IF EXISTS `GoHits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GoHits` (
  `GoHitID` int(11) NOT NULL AUTO_INCREMENT,
  `GoBiologicalProc` bit(1) NOT NULL,
  `GoCellularComp` bit(1) NOT NULL,
  `GoDefinition` longtext,
  `GoHitNumber` varchar(20) NOT NULL,
  `GoMolecularFunc` bit(1) NOT NULL,
  `GoTerm` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `GoProjectID` int(11) DEFAULT NULL,
  PRIMARY KEY (`GoHitID`),
  KEY `FK_jt00wmbuf1wewbs6lxhhvrnhl` (`GoProjectID`),
  CONSTRAINT `FK_jt00wmbuf1wewbs6lxhhvrnhl` FOREIGN KEY (`GoProjectID`) REFERENCES `GoProjects` (`GoProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GoHits`
--

LOCK TABLES `GoHits` WRITE;
/*!40000 ALTER TABLE `GoHits` DISABLE KEYS */;
/*!40000 ALTER TABLE `GoHits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GoProjects`
--

DROP TABLE IF EXISTS `GoProjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GoProjects` (
  `GoProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `DateCreated` datetime NOT NULL,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `ProjectName` varchar(50) NOT NULL,
  `ProjectID` int(11) DEFAULT NULL,
  PRIMARY KEY (`GoProjectID`),
  UNIQUE KEY `UK_9id627ihsxoaojj0d5pxkyp5d` (`ProjectName`),
  KEY `FK_mqehuefgg1n7lejxjaurysses` (`ProjectID`),
  CONSTRAINT `FK_mqehuefgg1n7lejxjaurysses` FOREIGN KEY (`ProjectID`) REFERENCES `Projects` (`ProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GoProjects`
--

LOCK TABLES `GoProjects` WRITE;
/*!40000 ALTER TABLE `GoProjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `GoProjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `GroupID` int(11) NOT NULL AUTO_INCREMENT,
  `DefaultRights` varchar(20) DEFAULT NULL,
  `Description` longtext,
  `GroupName` varchar(50) NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`GroupID`),
  UNIQUE KEY `UK_lysadmheq7r9mxfllh6byrp0k` (`GroupName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,NULL,NULL,'Admin Group','2013-03-19 00:00:00.000000'),(2,NULL,NULL,'User Group','2013-03-19 00:00:00.000000'),(3,'1000','Publicly accessible read-only data','Public',NULL);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hosts`
--

DROP TABLE IF EXISTS `Hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hosts` (
  `HostID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(512) DEFAULT NULL,
  `Habitat` varchar(512) DEFAULT NULL,
  `HostETC` varchar(225) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Part` varchar(50) DEFAULT NULL,
  `TaxonID` int(11) DEFAULT NULL,
  `TaxonomyID` int(11) DEFAULT NULL,
  PRIMARY KEY (`HostID`),
  KEY `FK_klgh9npei7xn60sbiv941cn5e` (`TaxonID`),
  KEY `FK_i0qacll44p0uklvkejag31tf3` (`TaxonomyID`),
  CONSTRAINT `FK_i0qacll44p0uklvkejag31tf3` FOREIGN KEY (`TaxonomyID`) REFERENCES `Taxonomys` (`TaxonomyID`),
  CONSTRAINT `FK_klgh9npei7xn60sbiv941cn5e` FOREIGN KEY (`TaxonID`) REFERENCES `Taxa` (`TaxonID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hosts`
--

LOCK TABLES `Hosts` WRITE;
/*!40000 ALTER TABLE `Hosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hosts_AUD`
--

DROP TABLE IF EXISTS `Hosts_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hosts_AUD` (
  `HostID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Description` varchar(512) DEFAULT NULL,
  `Habitat` varchar(512) DEFAULT NULL,
  `HostETC` varchar(225) DEFAULT NULL,
  `Part` varchar(50) DEFAULT NULL,
  `TaxonID` int(11) DEFAULT NULL,
  `TaxonomyID` int(11) DEFAULT NULL,
  PRIMARY KEY (`HostID`,`REV`),
  KEY `FK_f1ko8oiulps3jmtxrq9f87mmj` (`REV`),
  CONSTRAINT `FK_f1ko8oiulps3jmtxrq9f87mmj` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hosts_AUD`
--

LOCK TABLES `Hosts_AUD` WRITE;
/*!40000 ALTER TABLE `Hosts_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hosts_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HybProjects`
--

DROP TABLE IF EXISTS `HybProjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HybProjects` (
  `HyProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`HyProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HybProjects`
--

LOCK TABLES `HybProjects` WRITE;
/*!40000 ALTER TABLE `HybProjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `HybProjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HybProjectsProjects`
--

DROP TABLE IF EXISTS `HybProjectsProjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HybProjectsProjects` (
  `HybProjectsProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `HyProjectID` int(11) DEFAULT NULL,
  `ProjectID` int(11) DEFAULT NULL,
  PRIMARY KEY (`HybProjectsProjectID`),
  KEY `FK_2uf57ss4mb8chcq4jlq5tmtwv` (`HyProjectID`),
  KEY `FK_ebs36c3v9l1trpqs5obdfxmt4` (`ProjectID`),
  CONSTRAINT `FK_2uf57ss4mb8chcq4jlq5tmtwv` FOREIGN KEY (`HyProjectID`) REFERENCES `HybProjects` (`HyProjectID`),
  CONSTRAINT `FK_ebs36c3v9l1trpqs5obdfxmt4` FOREIGN KEY (`ProjectID`) REFERENCES `Projects` (`ProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HybProjectsProjects`
--

LOCK TABLES `HybProjectsProjects` WRITE;
/*!40000 ALTER TABLE `HybProjectsProjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `HybProjectsProjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hybridizations`
--

DROP TABLE IF EXISTS `Hybridizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hybridizations` (
  `HybridizationID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime NOT NULL,
  `Description` longtext,
  `Duplicate` bit(1) NOT NULL,
  `ExpositionTime` time NOT NULL,
  `ImageDir` varchar(255) DEFAULT NULL,
  `ImageFileName` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `ArrayTypeID` int(11) DEFAULT NULL,
  `HyProjectID` int(11) DEFAULT NULL,
  PRIMARY KEY (`HybridizationID`),
  KEY `FK_nyf42lnk7bl6lvvutnqm8u4vy` (`ArrayTypeID`),
  KEY `FK_mqt6y55s7tmnvab0suukcp22v` (`HyProjectID`),
  CONSTRAINT `FK_mqt6y55s7tmnvab0suukcp22v` FOREIGN KEY (`HyProjectID`) REFERENCES `HybProjects` (`HyProjectID`),
  CONSTRAINT `FK_nyf42lnk7bl6lvvutnqm8u4vy` FOREIGN KEY (`ArrayTypeID`) REFERENCES `ArrayTypes` (`ArrayTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hybridizations`
--

LOCK TABLES `Hybridizations` WRITE;
/*!40000 ALTER TABLE `Hybridizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hybridizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INT_GROUP_TO_MESSAGE`
--

DROP TABLE IF EXISTS `INT_GROUP_TO_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INT_GROUP_TO_MESSAGE` (
  `GROUP_KEY` char(36) NOT NULL,
  `MESSAGE_ID` char(36) NOT NULL,
  PRIMARY KEY (`GROUP_KEY`,`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INT_GROUP_TO_MESSAGE`
--

LOCK TABLES `INT_GROUP_TO_MESSAGE` WRITE;
/*!40000 ALTER TABLE `INT_GROUP_TO_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `INT_GROUP_TO_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INT_MESSAGE`
--

DROP TABLE IF EXISTS `INT_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INT_MESSAGE` (
  `MESSAGE_ID` char(36) NOT NULL,
  `REGION` varchar(100) DEFAULT NULL,
  `CREATED_DATE` datetime(6) NOT NULL,
  `MESSAGE_BYTES` blob,
  PRIMARY KEY (`MESSAGE_ID`),
  KEY `INT_MESSAGE_IX1` (`CREATED_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INT_MESSAGE`
--

LOCK TABLES `INT_MESSAGE` WRITE;
/*!40000 ALTER TABLE `INT_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `INT_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INT_MESSAGE_GROUP`
--

DROP TABLE IF EXISTS `INT_MESSAGE_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INT_MESSAGE_GROUP` (
  `GROUP_KEY` char(36) NOT NULL,
  `REGION` varchar(100) DEFAULT NULL,
  `MARKED` bigint(20) DEFAULT NULL,
  `COMPLETE` bigint(20) DEFAULT NULL,
  `LAST_RELEASED_SEQUENCE` bigint(20) DEFAULT NULL,
  `CREATED_DATE` datetime(6) NOT NULL,
  `UPDATED_DATE` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`GROUP_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INT_MESSAGE_GROUP`
--

LOCK TABLES `INT_MESSAGE_GROUP` WRITE;
/*!40000 ALTER TABLE `INT_MESSAGE_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `INT_MESSAGE_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Identifications`
--

DROP TABLE IF EXISTS `Identifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Identifications` (
  `IdentificationID` int(11) NOT NULL AUTO_INCREMENT,
  `Accepted` bit(1) NOT NULL,
  `Day` varchar(10) DEFAULT NULL,
  `Error` varchar(50) DEFAULT NULL,
  `EvidenceNotes` varchar(1024) DEFAULT NULL,
  `IdentifiedBy` varchar(200) DEFAULT NULL,
  `IdentifierEmail` varchar(200) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `LifeCycle` varchar(20) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `NCBITaxonID` varchar(12) DEFAULT NULL,
  `Representative` bit(1) DEFAULT NULL,
  `Result` varchar(50) DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `SequenceID` int(11) DEFAULT NULL,
  `SpecimenID` int(11) DEFAULT NULL,
  `TaxonID` int(11) DEFAULT NULL,
  `TaxonomyID` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdentificationID`),
  KEY `FK_16rjw3tn0pbitl26qtce8a0iq` (`SequenceID`),
  KEY `FK_nabkyxwrsp4lhr4uihk8idcru` (`SpecimenID`),
  KEY `FK_sdfpg9um9vmjk132spagwfp3q` (`TaxonID`),
  KEY `FK_mvxonmas5vjv82wb2nym1na41` (`TaxonomyID`),
  CONSTRAINT `FK_16rjw3tn0pbitl26qtce8a0iq` FOREIGN KEY (`SequenceID`) REFERENCES `Sequences` (`SequenceID`),
  CONSTRAINT `FK_mvxonmas5vjv82wb2nym1na41` FOREIGN KEY (`TaxonomyID`) REFERENCES `Taxonomys` (`TaxonomyID`),
  CONSTRAINT `FK_nabkyxwrsp4lhr4uihk8idcru` FOREIGN KEY (`SpecimenID`) REFERENCES `Specimens` (`SpecimenID`),
  CONSTRAINT `FK_sdfpg9um9vmjk132spagwfp3q` FOREIGN KEY (`TaxonID`) REFERENCES `Taxa` (`TaxonID`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Identifications`
--

LOCK TABLES `Identifications` WRITE;
/*!40000 ALTER TABLE `Identifications` DISABLE KEYS */;
INSERT INTO `Identifications` VALUES (1,'','10','an error',NULL,'Tom Jones','aEmail@email.com','2013-03-19 00:00:00.000000','','11',NULL,'','Errored','2007',NULL,1,NULL,1),(2,'','10','test error',NULL,'Tommy','aEmail@email.com','2013-03-19 00:00:00.000000','','11',NULL,'\0','Errored','2002',NULL,2,NULL,2),(3,'','10','',NULL,'Tom ','a3Email@email.com','2013-03-19 00:00:00.000000','','11',NULL,'','Grouped:Identified','2003',NULL,3,NULL,3),(4,'','10','',NULL,'Jones','a4Email@email.com','2013-03-19 00:00:00.000000','','11',NULL,'','Grouped:Identified','2004',NULL,4,NULL,4),(5,'','10','',NULL,'Smith','a5Email@email.com','2013-03-19 00:00:00.000000','','11',NULL,'\0','Grouped:Identified','2005',NULL,5,NULL,5),(12,'','10','12error',NULL,'Smith','a12Email@email.com','2013-03-19 00:00:00.000000','','11',NULL,'','Errored','2012',NULL,12,NULL,12),(13,'','10','12error',NULL,'Smith','a12Email@email.com','2013-03-19 00:00:00.000000','','11',NULL,'','Errored','2012',NULL,13,NULL,13),(14,'','10','12error',NULL,'Smith','a12Email@email.com','2013-03-19 00:00:00.000000','','11',NULL,'','Errored','2012',NULL,14,NULL,14),(100,'','10','100error',NULL,'Smith','a100Email@email.com','2013-03-19 00:00:00.000000','','11',NULL,'','Errored','2012',1,100,NULL,100),(101,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:52.958000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,101),(102,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.175000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,103),(103,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.343000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,105),(104,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.607000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,107),(105,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.788000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,109),(106,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.940000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111),(107,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.067000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,113),(108,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.193000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,115),(109,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.324000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,117),(110,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.448000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,119),(111,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.573000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,121),(112,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.693000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,123),(113,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.810000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,125),(114,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.039000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,127),(115,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.171000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,129),(116,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.301000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,131),(117,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.544000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,133),(118,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.664000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,135),(119,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.768000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,137),(120,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.877000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,139),(121,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.998000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,141),(122,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.176000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143),(123,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.311000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,145),(124,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.428000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147),(125,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.550000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149),(126,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.684000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,151),(127,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.804000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153),(128,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.928000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,155),(129,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.053000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,157),(130,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.181000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,159),(131,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.302000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,161),(132,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.431000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,163),(133,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.561000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,165),(134,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.699000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,167),(135,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.844000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169),(136,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.981000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171),(137,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.121000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,173),(138,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.247000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,175),(139,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.371000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,177),(140,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.509000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,179),(141,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.651000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,181),(142,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.795000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,183),(143,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.937000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,185),(144,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.075000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,187),(145,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.208000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,189),(146,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.330000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,191),(147,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.456000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,193),(148,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.584000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,195),(149,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.714000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,197),(150,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.843000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,199),(151,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.985000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201),(152,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.131000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,203),(153,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.258000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,205),(154,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.386000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,207),(155,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.517000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,209),(156,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.688000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,211),(157,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.819000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,213),(158,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.951000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,215),(159,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.137000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,217),(160,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.277000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,219),(161,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.410000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,221),(162,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.543000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,223),(163,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.676000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,225),(164,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.810000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,227),(165,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.942000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,229),(166,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.077000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,231),(167,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.214000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,233),(168,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.344000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,235),(169,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.475000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,237),(170,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.605000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,239),(171,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.735000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,241),(172,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.868000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,243),(173,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.003000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,245),(174,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.143000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,247),(175,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.277000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,249),(176,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.416000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,251),(177,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.553000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,253),(178,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.710000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,255),(179,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.858000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,257),(180,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.010000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,259),(181,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.156000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,261),(182,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.310000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,263),(183,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.447000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,265),(184,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.580000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,267),(185,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.762000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,269),(186,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.894000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,271),(187,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.031000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,273),(188,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.163000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,275),(189,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.302000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,277),(190,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.440000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,279),(191,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.575000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,281),(192,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.713000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,283),(193,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.852000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,285),(194,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.991000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,287),(195,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:06.132000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,289),(196,'',NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:06.274000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,291);
/*!40000 ALTER TABLE `Identifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Identifications_AUD`
--

DROP TABLE IF EXISTS `Identifications_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Identifications_AUD` (
  `IdentificationID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Accepted` bit(1) DEFAULT NULL,
  `Day` varchar(10) DEFAULT NULL,
  `Error` varchar(50) DEFAULT NULL,
  `EvidenceNotes` varchar(1024) DEFAULT NULL,
  `IdentifiedBy` varchar(200) DEFAULT NULL,
  `IdentifierEmail` varchar(200) DEFAULT NULL,
  `LifeCycle` varchar(20) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `NCBITaxonID` varchar(12) DEFAULT NULL,
  `Representative` bit(1) DEFAULT NULL,
  `Result` varchar(50) DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `SequenceID` int(11) DEFAULT NULL,
  `SpecimenID` int(11) DEFAULT NULL,
  `TaxonID` int(11) DEFAULT NULL,
  `TaxonomyID` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdentificationID`,`REV`),
  KEY `FK_q9hx6uro42m6jguo0ubywc73b` (`REV`),
  CONSTRAINT `FK_q9hx6uro42m6jguo0ubywc73b` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Identifications_AUD`
--

LOCK TABLES `Identifications_AUD` WRITE;
/*!40000 ALTER TABLE `Identifications_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Identifications_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImportPermitAttach`
--

DROP TABLE IF EXISTS `ImportPermitAttach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImportPermitAttach` (
  `ImportPermitAttachId` int(11) NOT NULL AUTO_INCREMENT,
  `DateEntered` date NOT NULL,
  `FileExtension` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) NOT NULL,
  `FileTitle` varchar(255) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `ImportPermitId` int(11) NOT NULL,
  PRIMARY KEY (`ImportPermitAttachId`),
  KEY `FK_8op37369nil7onkhfvwsjx8qg` (`ImportPermitId`),
  CONSTRAINT `FK_8op37369nil7onkhfvwsjx8qg` FOREIGN KEY (`ImportPermitId`) REFERENCES `ImportPermits` (`ImportPermitID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImportPermitAttach`
--

LOCK TABLES `ImportPermitAttach` WRITE;
/*!40000 ALTER TABLE `ImportPermitAttach` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImportPermitAttach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImportPermitEvents`
--

DROP TABLE IF EXISTS `ImportPermitEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImportPermitEvents` (
  `ImportPermitEventID` int(11) NOT NULL AUTO_INCREMENT,
  `ImportationDate` date DEFAULT NULL,
  `ImportedBy` varchar(200) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `NumberOfSamples` varchar(50) DEFAULT NULL,
  `ImportPermitID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ImportPermitEventID`),
  KEY `FK_kn41lnvoh0wd5wo2otg013lnw` (`ImportPermitID`),
  CONSTRAINT `FK_kn41lnvoh0wd5wo2otg013lnw` FOREIGN KEY (`ImportPermitID`) REFERENCES `ImportPermits` (`ImportPermitID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImportPermitEvents`
--

LOCK TABLES `ImportPermitEvents` WRITE;
/*!40000 ALTER TABLE `ImportPermitEvents` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImportPermitEvents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImportPermitEvents_AUD`
--

DROP TABLE IF EXISTS `ImportPermitEvents_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImportPermitEvents_AUD` (
  `ImportPermitEventID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `ImportationDate` date DEFAULT NULL,
  `ImportedBy` varchar(200) DEFAULT NULL,
  `NumberOfSamples` varchar(50) DEFAULT NULL,
  `ImportPermitID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ImportPermitEventID`,`REV`),
  KEY `FK_3gp7w8nmhjrync27b1vmjm1d3` (`REV`),
  CONSTRAINT `FK_3gp7w8nmhjrync27b1vmjm1d3` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImportPermitEvents_AUD`
--

LOCK TABLES `ImportPermitEvents_AUD` WRITE;
/*!40000 ALTER TABLE `ImportPermitEvents_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImportPermitEvents_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImportPermits`
--

DROP TABLE IF EXISTS `ImportPermits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImportPermits` (
  `ImportPermitID` int(11) NOT NULL AUTO_INCREMENT,
  `CFIAPermitNumber` varchar(50) NOT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ImportPermitID`),
  UNIQUE KEY `UK_l2q8blrlithu5ngexk2at256h` (`CFIAPermitNumber`),
  KEY `FK_8t3csx2jn8t4wvjfyx0o87wsv` (`GroupID`),
  CONSTRAINT `FK_8t3csx2jn8t4wvjfyx0o87wsv` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImportPermits`
--

LOCK TABLES `ImportPermits` WRITE;
/*!40000 ALTER TABLE `ImportPermits` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImportPermits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImportPermits_AUD`
--

DROP TABLE IF EXISTS `ImportPermits_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImportPermits_AUD` (
  `ImportPermitID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `CFIAPermitNumber` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ImportPermitID`,`REV`),
  KEY `FK_9yt5xppi0c6phhbb9a0uo0klr` (`REV`),
  CONSTRAINT `FK_9yt5xppi0c6phhbb9a0uo0klr` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImportPermits_AUD`
--

LOCK TABLES `ImportPermits_AUD` WRITE;
/*!40000 ALTER TABLE `ImportPermits_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImportPermits_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LabelFormats`
--

DROP TABLE IF EXISTS `LabelFormats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LabelFormats` (
  `LabelFormatID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) NOT NULL,
  `LabelFormatName` varchar(50) NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `RibbonType` varchar(50) NOT NULL,
  PRIMARY KEY (`LabelFormatID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LabelFormats`
--

LOCK TABLES `LabelFormats` WRITE;
/*!40000 ALTER TABLE `LabelFormats` DISABLE KEYS */;
/*!40000 ALTER TABLE `LabelFormats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LabelTemplates`
--

DROP TABLE IF EXISTS `LabelTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LabelTemplates` (
  `LabelTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `LabelFile` longtext,
  `LabelTemplateName` varchar(50) NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `BarcodeableMapID` int(11) DEFAULT NULL,
  `LabelFormatID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LabelTemplateID`),
  KEY `FK_7ni5bxxry15ocko3jkdtblh0l` (`BarcodeableMapID`),
  KEY `FK_df6kifjhg2ci1s074w5cho48g` (`LabelFormatID`),
  CONSTRAINT `FK_7ni5bxxry15ocko3jkdtblh0l` FOREIGN KEY (`BarcodeableMapID`) REFERENCES `BarcodeableMaps` (`BarcodeableMapID`),
  CONSTRAINT `FK_df6kifjhg2ci1s074w5cho48g` FOREIGN KEY (`LabelFormatID`) REFERENCES `LabelFormats` (`LabelFormatID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LabelTemplates`
--

LOCK TABLES `LabelTemplates` WRITE;
/*!40000 ALTER TABLE `LabelTemplates` DISABLE KEYS */;
INSERT INTO `LabelTemplates` VALUES (2,'A template for DAOM specimen','c:\\sentinel\\labels\\test_specimen_printing1_v3.lab','DAOM Label','2013-03-19 00:00:00.000000',1,1),(5,'Generic Specimen Replicate label with tube cap and strip label','c:\\sentinel\\labels\\seifertk_specimen_replicate_June_2013.lab','Specimen Replicate Label','2013-03-19 00:00:00.000000',1,1),(6,'Long strip label for side of plates','Plate Label File','Plate Label','2013-03-19 00:00:00.000000',1,2),(7,'Generic template for printing DNA Samples. Prints to a THT-163 format label.','c:\\sentinel\\labels\\default_sample_June_2013.lab','Sample Template','2013-03-19 00:00:00.000000',2,2),(8,'Generic template for printing Pcr Primers. Prints to a THT-163 format label.','c:\\sentinel\\labels\\LEV_primer_June_2013.lab','PcrPrimer Template','2013-03-19 00:00:00.000000',7,2),(9,'Generic template for printing Container labels. Prints to a THT-163 format label.','c:\\sentinel\\labels\\default_container_June_2013.lab','Container Template','2013-03-19 00:00:00.000000',3,2);
/*!40000 ALTER TABLE `LabelTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lexicon`
--

DROP TABLE IF EXISTS `Lexicon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lexicon` (
  `LexiconID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `LastModifiedBy` varchar(80) NOT NULL,
  `LexStr` varchar(500) NOT NULL,
  `LanguageID` int(11) NOT NULL,
  PRIMARY KEY (`LexiconID`),
  KEY `FK_j2o9mp4t113b0nuulwkidj9kh` (`LanguageID`),
  CONSTRAINT `FK_j2o9mp4t113b0nuulwkidj9kh` FOREIGN KEY (`LanguageID`) REFERENCES `UsageKeys` (`UsageKeysID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lexicon`
--

LOCK TABLES `Lexicon` WRITE;
/*!40000 ALTER TABLE `Lexicon` DISABLE KEYS */;
INSERT INTO `Lexicon` VALUES (1,'2013-03-19 00:00:00.000000','John','taxonomy',1),(2,'2013-03-19 00:00:00.000000','John','biology',1),(3,'2013-03-19 00:00:00.000000','John','distribution',1),(4,'2013-03-19 00:00:00.000000','John','morphology',1);
/*!40000 ALTER TABLE `Lexicon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LexiconGroups`
--

DROP TABLE IF EXISTS `LexiconGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LexiconGroups` (
  `LexiconGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `LexiconID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LexiconGroupID`),
  KEY `FK_7wr7n039uaxxytw4qwac0401p` (`GroupID`),
  KEY `FK_3ak1ms9na75m4spxnkp9hkn4g` (`LexiconID`),
  CONSTRAINT `FK_3ak1ms9na75m4spxnkp9hkn4g` FOREIGN KEY (`LexiconID`) REFERENCES `Lexicon` (`LexiconID`),
  CONSTRAINT `FK_7wr7n039uaxxytw4qwac0401p` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LexiconGroups`
--

LOCK TABLES `LexiconGroups` WRITE;
/*!40000 ALTER TABLE `LexiconGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `LexiconGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LexiconUsage`
--

DROP TABLE IF EXISTS `LexiconUsage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LexiconUsage` (
  `LexiconUsageID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `LexiconID` int(11) DEFAULT NULL,
  `UsageID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LexiconUsageID`),
  KEY `FK_lobmdymx6yfsxg526yp1xjt2y` (`LexiconID`),
  KEY `FK_3mvttib8prndkuvcuts418msh` (`UsageID`),
  CONSTRAINT `FK_3mvttib8prndkuvcuts418msh` FOREIGN KEY (`UsageID`) REFERENCES `UsageKeys` (`UsageKeysID`),
  CONSTRAINT `FK_lobmdymx6yfsxg526yp1xjt2y` FOREIGN KEY (`LexiconID`) REFERENCES `Lexicon` (`LexiconID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LexiconUsage`
--

LOCK TABLES `LexiconUsage` WRITE;
/*!40000 ALTER TABLE `LexiconUsage` DISABLE KEYS */;
/*!40000 ALTER TABLE `LexiconUsage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Libraries`
--

DROP TABLE IF EXISTS `Libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Libraries` (
  `LibraryID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `SampleID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LibraryID`),
  UNIQUE KEY `UK_i7jye0mnqo3vd3vsgj4j55ocu` (`Name`),
  KEY `FK_9bdt7x1mdttes489fiu6ca0vc` (`SampleID`),
  CONSTRAINT `FK_9bdt7x1mdttes489fiu6ca0vc` FOREIGN KEY (`SampleID`) REFERENCES `Samples` (`SampleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Libraries`
--

LOCK TABLES `Libraries` WRITE;
/*!40000 ALTER TABLE `Libraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `Libraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LibrariesProjects`
--

DROP TABLE IF EXISTS `LibrariesProjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LibrariesProjects` (
  `LibrariesProjectsID` int(11) NOT NULL AUTO_INCREMENT,
  `LibraryID` int(11) DEFAULT NULL,
  `ProjectID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LibrariesProjectsID`),
  KEY `FK_873ojhy1tfgyvqcvlhlaq1v0w` (`LibraryID`),
  KEY `FK_fkisljs3fflmp59td40rdh9py` (`ProjectID`),
  CONSTRAINT `FK_873ojhy1tfgyvqcvlhlaq1v0w` FOREIGN KEY (`LibraryID`) REFERENCES `Libraries` (`LibraryID`),
  CONSTRAINT `FK_fkisljs3fflmp59td40rdh9py` FOREIGN KEY (`ProjectID`) REFERENCES `Projects` (`ProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LibrariesProjects`
--

LOCK TABLES `LibrariesProjects` WRITE;
/*!40000 ALTER TABLE `LibrariesProjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `LibrariesProjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoanAct`
--

DROP TABLE IF EXISTS `LoanAct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoanAct` (
  `LoanActId` int(11) NOT NULL AUTO_INCREMENT,
  `ActContent` varchar(512) DEFAULT NULL,
  `ActType` varchar(255) DEFAULT NULL,
  `DateEntered` date DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `CareOf` int(11) DEFAULT NULL,
  `LoanFormId` int(11) NOT NULL,
  PRIMARY KEY (`LoanActId`),
  KEY `FK_n24pcn7qawqpqsrnqk5blmoyp` (`CareOf`),
  KEY `FK_a4ruos4y5lde9c6vpbfedu1x8` (`LoanFormId`),
  CONSTRAINT `FK_a4ruos4y5lde9c6vpbfedu1x8` FOREIGN KEY (`LoanFormId`) REFERENCES `LoanForm` (`LoanFormID`),
  CONSTRAINT `FK_n24pcn7qawqpqsrnqk5blmoyp` FOREIGN KEY (`CareOf`) REFERENCES `People` (`PeopleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoanAct`
--

LOCK TABLES `LoanAct` WRITE;
/*!40000 ALTER TABLE `LoanAct` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoanAct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoanAttach`
--

DROP TABLE IF EXISTS `LoanAttach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoanAttach` (
  `LoanAttachId` int(11) NOT NULL AUTO_INCREMENT,
  `DateEntered` date NOT NULL,
  `FileExtension` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) NOT NULL,
  `FileTitle` varchar(255) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `LoanFormId` int(11) NOT NULL,
  PRIMARY KEY (`LoanAttachId`),
  KEY `FK_8hienxmj6umhwwdwtdia6mo00` (`LoanFormId`),
  CONSTRAINT `FK_8hienxmj6umhwwdwtdia6mo00` FOREIGN KEY (`LoanFormId`) REFERENCES `LoanForm` (`LoanFormID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoanAttach`
--

LOCK TABLES `LoanAttach` WRITE;
/*!40000 ALTER TABLE `LoanAttach` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoanAttach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoanForm`
--

DROP TABLE IF EXISTS `LoanForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoanForm` (
  `LoanFormID` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) DEFAULT NULL,
  `FileClosedOn` date DEFAULT NULL,
  `InvoiceId` varchar(20) NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `LoanRemarks` varchar(512) DEFAULT NULL,
  `MaterialSent` varchar(10000) DEFAULT NULL,
  `NumberOfParcels` int(11) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  `ShippedDate` date DEFAULT NULL,
  `ShippingMethod` varchar(100) DEFAULT NULL,
  `Address` int(11) DEFAULT NULL,
  `ApprovedBy` int(11) DEFAULT NULL,
  `Borrower` int(11) DEFAULT NULL,
  `CareOf` int(11) DEFAULT NULL,
  `CollectionCode` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `InitiatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`LoanFormID`),
  UNIQUE KEY `UK_r2o9pn5gdr6mxwl692sw1tav` (`InvoiceId`),
  KEY `FK_ap7h52t09ifgna8eb18rewjdw` (`Address`),
  KEY `FK_ksm66fxg7l7qyaxf1vsg0bfl2` (`ApprovedBy`),
  KEY `FK_cvux8wn8y5p76osk93xs676h3` (`Borrower`),
  KEY `FK_4p35ltc0esje5dqk6bijs1j8b` (`CareOf`),
  KEY `FK_focrnu2ify77abyh6uxpwlkfx` (`CollectionCode`),
  KEY `FK_mfvlp5u1havi9ud5sjy5wnqud` (`GroupID`),
  KEY `FK_ok08fa4vh19nl7hqardtce2vh` (`InitiatedBy`),
  CONSTRAINT `FK_4p35ltc0esje5dqk6bijs1j8b` FOREIGN KEY (`CareOf`) REFERENCES `People` (`PeopleID`),
  CONSTRAINT `FK_ap7h52t09ifgna8eb18rewjdw` FOREIGN KEY (`Address`) REFERENCES `Addresses` (`AddressID`),
  CONSTRAINT `FK_cvux8wn8y5p76osk93xs676h3` FOREIGN KEY (`Borrower`) REFERENCES `People` (`PeopleID`),
  CONSTRAINT `FK_focrnu2ify77abyh6uxpwlkfx` FOREIGN KEY (`CollectionCode`) REFERENCES `BiologicalCollections` (`BiologicalCollectionID`),
  CONSTRAINT `FK_ksm66fxg7l7qyaxf1vsg0bfl2` FOREIGN KEY (`ApprovedBy`) REFERENCES `People` (`PeopleID`),
  CONSTRAINT `FK_mfvlp5u1havi9ud5sjy5wnqud` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_ok08fa4vh19nl7hqardtce2vh` FOREIGN KEY (`InitiatedBy`) REFERENCES `People` (`PeopleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoanForm`
--

LOCK TABLES `LoanForm` WRITE;
/*!40000 ALTER TABLE `LoanForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoanForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Locations`
--

DROP TABLE IF EXISTS `Locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Locations` (
  `LocationID` int(11) NOT NULL AUTO_INCREMENT,
  `DateMoved` datetime DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `WellColumn` int(11) DEFAULT NULL,
  `WellRow` varchar(2) DEFAULT NULL,
  `CloneID` int(11) DEFAULT NULL,
  `ContainerID` int(11) NOT NULL,
  `FragmentID` int(11) DEFAULT NULL,
  `MixedSpecimenID` int(11) DEFAULT NULL,
  `PcrPrimerID` int(11) DEFAULT NULL,
  `SampleID` int(11) DEFAULT NULL,
  `SequenceID` int(11) DEFAULT NULL,
  `SpecimenReplicateID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LocationID`),
  UNIQUE KEY `UK_ftabvest74ag91ge26690247a` (`ContainerID`,`WellColumn`,`WellRow`),
  KEY `FK_t6cd9ar6svjw54k8x9hk5rfoa` (`CloneID`),
  KEY `FK_4ytymn0oh44qtb1qlhxde27oe` (`FragmentID`),
  KEY `FK_amshi66em4jphq5t3nempuqb9` (`MixedSpecimenID`),
  KEY `FK_owenubne8jbacxg0mwdliutp5` (`PcrPrimerID`),
  KEY `FK_pgeq6y89t7machd9auk56xfxv` (`SampleID`),
  KEY `FK_swn4iqbmyw7uoe1m7hq6fnyst` (`SequenceID`),
  KEY `FK_p2if06fynkj3xjn86klpe2rhq` (`SpecimenReplicateID`),
  CONSTRAINT `FK_4ytymn0oh44qtb1qlhxde27oe` FOREIGN KEY (`FragmentID`) REFERENCES `Fragments` (`FragmentID`),
  CONSTRAINT `FK_amshi66em4jphq5t3nempuqb9` FOREIGN KEY (`MixedSpecimenID`) REFERENCES `MixedSpecimens` (`MixedSpecimenID`),
  CONSTRAINT `FK_hqjcgefol6i4h3bx8mxyarxyl` FOREIGN KEY (`ContainerID`) REFERENCES `Containers` (`ContainerID`),
  CONSTRAINT `FK_owenubne8jbacxg0mwdliutp5` FOREIGN KEY (`PcrPrimerID`) REFERENCES `PcrPrimers` (`PCRPrimerID`),
  CONSTRAINT `FK_p2if06fynkj3xjn86klpe2rhq` FOREIGN KEY (`SpecimenReplicateID`) REFERENCES `SpecimenReplicates` (`SpecimenReplicateID`),
  CONSTRAINT `FK_pgeq6y89t7machd9auk56xfxv` FOREIGN KEY (`SampleID`) REFERENCES `Samples` (`SampleID`),
  CONSTRAINT `FK_swn4iqbmyw7uoe1m7hq6fnyst` FOREIGN KEY (`SequenceID`) REFERENCES `Sequences` (`SequenceID`),
  CONSTRAINT `FK_t6cd9ar6svjw54k8x9hk5rfoa` FOREIGN KEY (`CloneID`) REFERENCES `Clones` (`CloneID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Locations`
--

LOCK TABLES `Locations` WRITE;
/*!40000 ALTER TABLE `Locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `Locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MixedSpecimenAttach`
--

DROP TABLE IF EXISTS `MixedSpecimenAttach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MixedSpecimenAttach` (
  `MixedSpecimenAttachId` int(11) NOT NULL AUTO_INCREMENT,
  `DateEntered` date NOT NULL,
  `FileExtension` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) NOT NULL,
  `FileTitle` varchar(255) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `MixedSpecimenId` int(11) NOT NULL,
  PRIMARY KEY (`MixedSpecimenAttachId`),
  KEY `FK_c5x1738wdf7q5e7hxgq4o78e` (`MixedSpecimenId`),
  CONSTRAINT `FK_c5x1738wdf7q5e7hxgq4o78e` FOREIGN KEY (`MixedSpecimenId`) REFERENCES `MixedSpecimens` (`MixedSpecimenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MixedSpecimenAttach`
--

LOCK TABLES `MixedSpecimenAttach` WRITE;
/*!40000 ALTER TABLE `MixedSpecimenAttach` DISABLE KEYS */;
/*!40000 ALTER TABLE `MixedSpecimenAttach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MixedSpecimens`
--

DROP TABLE IF EXISTS `MixedSpecimens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MixedSpecimens` (
  `MixedSpecimenID` int(11) NOT NULL AUTO_INCREMENT,
  `AssociatedPlants` varchar(200) DEFAULT NULL,
  `CabinSiteCode` varchar(50) DEFAULT NULL,
  `CabinRefOrTestSite` varchar(50) DEFAULT NULL,
  `CabinStudy` varchar(50) DEFAULT NULL,
  `ExperimentalReplicate` varchar(5) DEFAULT NULL,
  `FungiIsolated` varchar(50) DEFAULT NULL,
  `LabAnalysisReport` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `MixedSpecimenNumber` varchar(50) NOT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `NumberOfSubsamples` int(11) DEFAULT NULL,
  `OtherIDs` varchar(200) DEFAULT NULL,
  `ReplicateInfo` varchar(200) DEFAULT NULL,
  `SampleDestroyed` date DEFAULT NULL,
  `SampleReceiptDate` date DEFAULT NULL,
  `SpikeMaterial` varchar(100) DEFAULT NULL,
  `SubstrateSize` int(11) DEFAULT NULL,
  `SubstrateType` varchar(200) DEFAULT NULL,
  `Treatment` varchar(100) DEFAULT NULL,
  `WaterQualitySampleId` varchar(50) DEFAULT NULL,
  `WaterQualitySiteId` varchar(50) DEFAULT NULL,
  `WaterSamplingTime` varchar(50) DEFAULT NULL,
  `BiologicalCollectionID` int(11) NOT NULL,
  `CollectionInfoID` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `ImportPermitID` int(11) DEFAULT NULL,
  `MixsSpecificationID` int(11) DEFAULT NULL,
  PRIMARY KEY (`MixedSpecimenID`),
  UNIQUE KEY `UK_kx2r3f1xk5ath9pj7nth70tm6` (`MixedSpecimenNumber`,`BiologicalCollectionID`),
  UNIQUE KEY `UK_3bnrsjvog8w18jw1y2eh5hdo0` (`MixsSpecificationID`),
  KEY `mixedSpecimen_substrateType_idx` (`SubstrateType`),
  KEY `FK_mr2al2qrjhtfdjurqp4rlai3a` (`BiologicalCollectionID`),
  KEY `FK_a6yywjr2k3p8liflvfcqvijhk` (`CollectionInfoID`),
  KEY `FK_4sbel4md60bhymihq22boplmq` (`GroupID`),
  KEY `FK_94np4iqalsmisrmtv3i0ce51c` (`ImportPermitID`),
  CONSTRAINT `FK_3bnrsjvog8w18jw1y2eh5hdo0` FOREIGN KEY (`MixsSpecificationID`) REFERENCES `MixsSpecification` (`MixsSpecificationID`),
  CONSTRAINT `FK_4sbel4md60bhymihq22boplmq` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_94np4iqalsmisrmtv3i0ce51c` FOREIGN KEY (`ImportPermitID`) REFERENCES `ImportPermits` (`ImportPermitID`),
  CONSTRAINT `FK_a6yywjr2k3p8liflvfcqvijhk` FOREIGN KEY (`CollectionInfoID`) REFERENCES `CollectionInfos` (`CollectionInfoID`),
  CONSTRAINT `FK_mr2al2qrjhtfdjurqp4rlai3a` FOREIGN KEY (`BiologicalCollectionID`) REFERENCES `BiologicalCollections` (`BiologicalCollectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MixedSpecimens`
--

LOCK TABLES `MixedSpecimens` WRITE;
/*!40000 ALTER TABLE `MixedSpecimens` DISABLE KEYS */;
/*!40000 ALTER TABLE `MixedSpecimens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MixedSpecimens_AUD`
--

DROP TABLE IF EXISTS `MixedSpecimens_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MixedSpecimens_AUD` (
  `MixedSpecimenID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `AssociatedPlants` varchar(200) DEFAULT NULL,
  `CabinSiteCode` varchar(50) DEFAULT NULL,
  `CabinRefOrTestSite` varchar(50) DEFAULT NULL,
  `CabinStudy` varchar(50) DEFAULT NULL,
  `ExperimentalReplicate` varchar(5) DEFAULT NULL,
  `FungiIsolated` varchar(50) DEFAULT NULL,
  `LabAnalysisReport` varchar(50) DEFAULT NULL,
  `MixedSpecimenNumber` varchar(50) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `NumberOfSubsamples` int(11) DEFAULT NULL,
  `OtherIDs` varchar(200) DEFAULT NULL,
  `ReplicateInfo` varchar(200) DEFAULT NULL,
  `SampleDestroyed` date DEFAULT NULL,
  `SampleReceiptDate` date DEFAULT NULL,
  `SpikeMaterial` varchar(100) DEFAULT NULL,
  `SubstrateSize` int(11) DEFAULT NULL,
  `SubstrateType` varchar(200) DEFAULT NULL,
  `Treatment` varchar(100) DEFAULT NULL,
  `WaterQualitySampleId` varchar(50) DEFAULT NULL,
  `WaterQualitySiteId` varchar(50) DEFAULT NULL,
  `WaterSamplingTime` varchar(50) DEFAULT NULL,
  `BiologicalCollectionID` int(11) DEFAULT NULL,
  `CollectionInfoID` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `ImportPermitID` int(11) DEFAULT NULL,
  `MixsSpecificationID` int(11) DEFAULT NULL,
  PRIMARY KEY (`MixedSpecimenID`,`REV`),
  KEY `FK_argt4d0rarc85d2x82523b2cf` (`REV`),
  CONSTRAINT `FK_argt4d0rarc85d2x82523b2cf` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MixedSpecimens_AUD`
--

LOCK TABLES `MixedSpecimens_AUD` WRITE;
/*!40000 ALTER TABLE `MixedSpecimens_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `MixedSpecimens_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MixsSpecification`
--

DROP TABLE IF EXISTS `MixsSpecification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MixsSpecification` (
  `MixsSpecificationID` int(11) NOT NULL AUTO_INCREMENT,
  `AbsAirHumidity` varchar(50) DEFAULT NULL,
  `AgrochemAddition` varchar(50) DEFAULT NULL,
  `AirTemp` varchar(50) DEFAULT NULL,
  `AirTempRegm` varchar(50) DEFAULT NULL,
  `AlSat` varchar(50) DEFAULT NULL,
  `AlSatMeth` varchar(50) DEFAULT NULL,
  `Alkalinity` varchar(50) DEFAULT NULL,
  `AlkylDiethers` varchar(50) DEFAULT NULL,
  `AminopeptAct` varchar(50) DEFAULT NULL,
  `Ammonium` varchar(50) DEFAULT NULL,
  `AmnioticFluidColor` varchar(50) DEFAULT NULL,
  `AnnualSeasonPrecpt` varchar(100) DEFAULT NULL,
  `AnnualSeasonTemp` varchar(100) DEFAULT NULL,
  `AntibioticRegm` varchar(50) DEFAULT NULL,
  `AtmosphericData` varchar(50) DEFAULT NULL,
  `BacProd` varchar(50) DEFAULT NULL,
  `BacResp` varchar(50) DEFAULT NULL,
  `BacteriaCarbProd` varchar(50) DEFAULT NULL,
  `BankfullWettedDepth` varchar(10) DEFAULT NULL,
  `BankfullWidth` varchar(10) DEFAULT NULL,
  `BarometricPress` varchar(50) DEFAULT NULL,
  `BiochemOxygenDem` varchar(50) DEFAULT NULL,
  `Biomass` varchar(50) DEFAULT NULL,
  `Biome` varchar(50) DEFAULT NULL,
  `BioticRelationship` varchar(50) DEFAULT NULL,
  `BirthControl` varchar(50) DEFAULT NULL,
  `Bishomohopanol` varchar(50) DEFAULT NULL,
  `BloodBloodDisord` varchar(50) DEFAULT NULL,
  `Bromide` varchar(50) DEFAULT NULL,
  `BuildOccupType` varchar(50) DEFAULT NULL,
  `BuildingSetting` varchar(50) DEFAULT NULL,
  `Calcium` varchar(50) DEFAULT NULL,
  `CanopyCoverage` varchar(10) DEFAULT NULL,
  `CarbDioxide` varchar(50) DEFAULT NULL,
  `CarbMonoxide` varchar(50) DEFAULT NULL,
  `CarbNitroRatio` varchar(50) DEFAULT NULL,
  `ChemAdministration` varchar(50) DEFAULT NULL,
  `ChemMutagen` varchar(50) DEFAULT NULL,
  `ChemOxygenDem` varchar(50) DEFAULT NULL,
  `Chloride` varchar(50) DEFAULT NULL,
  `Chlorophyll` varchar(50) DEFAULT NULL,
  `ClimateEnvironment` varchar(50) DEFAULT NULL,
  `Conduc` varchar(50) DEFAULT NULL,
  `CropRotation` varchar(50) DEFAULT NULL,
  `CurLandUse` varchar(100) DEFAULT NULL,
  `CurVegetation` varchar(50) DEFAULT NULL,
  `CurVegetationMeth` varchar(50) DEFAULT NULL,
  `Density` varchar(50) DEFAULT NULL,
  `DermatologyDisord` varchar(50) DEFAULT NULL,
  `DewPoint` varchar(50) DEFAULT NULL,
  `DietLastSixMonth` varchar(50) DEFAULT NULL,
  `DietherLipids` varchar(50) DEFAULT NULL,
  `DissCarbDioxide` varchar(50) DEFAULT NULL,
  `DissHydrogen` varchar(50) DEFAULT NULL,
  `DissInorgCarb` varchar(50) DEFAULT NULL,
  `DissInorgNitro` varchar(50) DEFAULT NULL,
  `DissInorgPhosp` varchar(50) DEFAULT NULL,
  `DissOrgCarb` varchar(50) DEFAULT NULL,
  `DissOrgNitro` varchar(50) DEFAULT NULL,
  `DissOxygen` varchar(50) DEFAULT NULL,
  `DominantHand` varchar(50) DEFAULT NULL,
  `DominantLandUse` varchar(100) DEFAULT NULL,
  `DominantStreamsideVegetation` varchar(100) DEFAULT NULL,
  `Douche` datetime(6) DEFAULT NULL,
  `DownPar` varchar(50) DEFAULT NULL,
  `DrainageClass` varchar(50) DEFAULT NULL,
  `DrugUsage` varchar(50) DEFAULT NULL,
  `EColi` varchar(50) DEFAULT NULL,
  `EfficiencyPercent` varchar(50) DEFAULT NULL,
  `Emulsions` varchar(50) DEFAULT NULL,
  `EncodedTraits` varchar(50) DEFAULT NULL,
  `EnvPackage` varchar(50) DEFAULT NULL,
  `EstimatedSize` varchar(50) DEFAULT NULL,
  `ExperimentalFactor` varchar(50) DEFAULT NULL,
  `ExtrachromElements` varchar(50) DEFAULT NULL,
  `ExtremeEvent` datetime(6) DEFAULT NULL,
  `ExtremeSalinity` varchar(100) DEFAULT NULL,
  `FaoClass` varchar(50) DEFAULT NULL,
  `Feature` varchar(50) DEFAULT NULL,
  `FertilizerRegm` varchar(50) DEFAULT NULL,
  `FilterType` varchar(50) DEFAULT NULL,
  `Fire` datetime(6) DEFAULT NULL,
  `FishKillEventInfo` varchar(100) DEFAULT NULL,
  `Flooding` datetime(6) DEFAULT NULL,
  `Fluor` varchar(50) DEFAULT NULL,
  `FoetalHealthStat` varchar(50) DEFAULT NULL,
  `FungicideRegm` varchar(50) DEFAULT NULL,
  `GaseousEnvironment` varchar(50) DEFAULT NULL,
  `GaseousSubstances` varchar(50) DEFAULT NULL,
  `GastrointestDisord` varchar(50) DEFAULT NULL,
  `GestationState` varchar(50) DEFAULT NULL,
  `GlucosidaseAct` varchar(50) DEFAULT NULL,
  `Gravidity` varchar(50) DEFAULT NULL,
  `Gravity` varchar(50) DEFAULT NULL,
  `GrowthHormoneRegm` varchar(50) DEFAULT NULL,
  `GrowthMed` varchar(50) DEFAULT NULL,
  `GynecologicDisord` varchar(50) DEFAULT NULL,
  `HealthDiseaseStat` varchar(50) DEFAULT NULL,
  `HeatCoolType` varchar(50) DEFAULT NULL,
  `HeavyMetals` varchar(50) DEFAULT NULL,
  `HeavyMetalsMeth` varchar(50) DEFAULT NULL,
  `HerbicideRegm` varchar(50) DEFAULT NULL,
  `Horizon` varchar(50) DEFAULT NULL,
  `HorizonMeth` varchar(50) DEFAULT NULL,
  `HostAge` varchar(50) DEFAULT NULL,
  `HostBloodPressDiast` varchar(50) DEFAULT NULL,
  `HostBloodPressSyst` varchar(50) DEFAULT NULL,
  `HostBodyHabitat` varchar(50) DEFAULT NULL,
  `HostBodyMassIndex` varchar(50) DEFAULT NULL,
  `HostBodyProduct` varchar(50) DEFAULT NULL,
  `HostBodySite` varchar(50) DEFAULT NULL,
  `HostBodyTemp` varchar(50) DEFAULT NULL,
  `HostColor` varchar(50) DEFAULT NULL,
  `HostCommonName` varchar(50) DEFAULT NULL,
  `HostDiet` varchar(50) DEFAULT NULL,
  `HostDiseaseStat` varchar(50) DEFAULT NULL,
  `HostDryMass` varchar(50) DEFAULT NULL,
  `HostFamilyRelationship` varchar(50) DEFAULT NULL,
  `HostGenotype` varchar(50) DEFAULT NULL,
  `HostGrowthCond` varchar(50) DEFAULT NULL,
  `HostHeight` varchar(50) DEFAULT NULL,
  `HostHivStat` varchar(50) DEFAULT NULL,
  `HostInfraSpecificName` varchar(50) DEFAULT NULL,
  `HostInfraSpecificRank` varchar(50) DEFAULT NULL,
  `HostLastMeal` varchar(50) DEFAULT NULL,
  `HostLength` varchar(50) DEFAULT NULL,
  `HostLifeStage` varchar(50) DEFAULT NULL,
  `HostOccupation` int(11) DEFAULT NULL,
  `HostPhenotype` varchar(50) DEFAULT NULL,
  `HostPulse` varchar(50) DEFAULT NULL,
  `HostSex` varchar(50) DEFAULT NULL,
  `HostShape` varchar(50) DEFAULT NULL,
  `HostSubjectId` varchar(50) DEFAULT NULL,
  `HostSubstrate` varchar(50) DEFAULT NULL,
  `HostTaxid` int(11) DEFAULT NULL,
  `HostTotMass` varchar(50) DEFAULT NULL,
  `HostWetMass` varchar(50) DEFAULT NULL,
  `Hrt` datetime(6) DEFAULT NULL,
  `Humidity` varchar(50) DEFAULT NULL,
  `HumidityRegm` varchar(50) DEFAULT NULL,
  `Hysterectomy` bit(1) DEFAULT NULL,
  `IhmcEthnicity` varchar(50) DEFAULT NULL,
  `IhmcMedicationCode` int(11) DEFAULT NULL,
  `IndoorSpace` varchar(50) DEFAULT NULL,
  `IndoorSurf` varchar(50) DEFAULT NULL,
  `IndustEffPercent` varchar(50) DEFAULT NULL,
  `InorgParticles` varchar(50) DEFAULT NULL,
  `InvestigationType` varchar(20) DEFAULT NULL,
  `IsolGrowthCondt` varchar(50) DEFAULT NULL,
  `KidneyDisord` varchar(50) DEFAULT NULL,
  `LightIntensity` varchar(50) DEFAULT NULL,
  `LightType` varchar(50) DEFAULT NULL,
  `LinkAdditAnalys` varchar(50) DEFAULT NULL,
  `LinkClassInfo` varchar(250) DEFAULT NULL,
  `LinkClimateInfo` varchar(250) DEFAULT NULL,
  `LiverDisord` varchar(50) DEFAULT NULL,
  `LocalClass` varchar(50) DEFAULT NULL,
  `LocalClassMeth` varchar(50) DEFAULT NULL,
  `MacrophyteCoverage` varchar(10) DEFAULT NULL,
  `Magnesium` varchar(50) DEFAULT NULL,
  `Material` varchar(50) DEFAULT NULL,
  `MaternalHealthStat` varchar(50) DEFAULT NULL,
  `MeanFrictVel` varchar(50) DEFAULT NULL,
  `MeanPeakFrictVel` varchar(50) DEFAULT NULL,
  `MechanicalDamage` varchar(50) DEFAULT NULL,
  `MedicHistPerform` bit(1) DEFAULT NULL,
  `Menarche` datetime(6) DEFAULT NULL,
  `Menopause` datetime(6) DEFAULT NULL,
  `Methane` varchar(50) DEFAULT NULL,
  `MicrobialBiomass` varchar(50) DEFAULT NULL,
  `MicrobialBiomassMeth` varchar(50) DEFAULT NULL,
  `MineralNutrRegm` varchar(50) DEFAULT NULL,
  `MiscParam` varchar(50) DEFAULT NULL,
  `nAlkanes` varchar(50) DEFAULT NULL,
  `Nitrate` varchar(50) DEFAULT NULL,
  `Nitrite` varchar(50) DEFAULT NULL,
  `Nitro` varchar(50) DEFAULT NULL,
  `NonMineralNutrRegm` varchar(50) DEFAULT NULL,
  `NoseMouthTeethThroatDisord` varchar(50) DEFAULT NULL,
  `NoseThroatDisord` varchar(50) DEFAULT NULL,
  `NumReplicons` int(11) DEFAULT NULL,
  `OccupSamp` int(11) DEFAULT NULL,
  `OccupantDensSamp` float DEFAULT NULL,
  `OrgCarb` varchar(50) DEFAULT NULL,
  `OrgMatter` varchar(50) DEFAULT NULL,
  `OrgNitro` varchar(50) DEFAULT NULL,
  `OrgParticles` varchar(50) DEFAULT NULL,
  `OrganismCount` varchar(50) DEFAULT NULL,
  `OxyStatSamp` varchar(50) DEFAULT NULL,
  `Oxygen` varchar(50) DEFAULT NULL,
  `PartOrgCarb` varchar(50) DEFAULT NULL,
  `PartOrgNitro` varchar(50) DEFAULT NULL,
  `ParticleClass` varchar(50) DEFAULT NULL,
  `Pathogenicity` varchar(50) DEFAULT NULL,
  `PeriphytonCoverage` varchar(100) DEFAULT NULL,
  `Perturbation` varchar(50) DEFAULT NULL,
  `PesticideRegm` varchar(50) DEFAULT NULL,
  `PetFarmAnimal` varchar(50) DEFAULT NULL,
  `PetroleumHydrocarb` varchar(50) DEFAULT NULL,
  `Ph` float DEFAULT NULL,
  `PhMeth` varchar(50) DEFAULT NULL,
  `PhRegm` varchar(50) DEFAULT NULL,
  `Phaeopigments` varchar(50) DEFAULT NULL,
  `Phosphate` varchar(50) DEFAULT NULL,
  `PhosplipidFattAcid` varchar(50) DEFAULT NULL,
  `PhotonFlux` varchar(50) DEFAULT NULL,
  `PlantBodySite` varchar(50) DEFAULT NULL,
  `PlantProduct` varchar(50) DEFAULT NULL,
  `Ploidy` varchar(50) DEFAULT NULL,
  `Pollutants` varchar(50) DEFAULT NULL,
  `PoolDnaExtracts` varchar(50) DEFAULT NULL,
  `Porosity` varchar(50) DEFAULT NULL,
  `Potassium` varchar(50) DEFAULT NULL,
  `PreTreatment` varchar(50) DEFAULT NULL,
  `Pregnancy` datetime(6) DEFAULT NULL,
  `Pressure` varchar(50) DEFAULT NULL,
  `PreviousLandUse` varchar(50) DEFAULT NULL,
  `PreviousLandUseMeth` varchar(50) DEFAULT NULL,
  `PrimaryProd` varchar(50) DEFAULT NULL,
  `PrimaryTreatment` varchar(50) DEFAULT NULL,
  `ProfilePosition` varchar(50) DEFAULT NULL,
  `Propagation` varchar(50) DEFAULT NULL,
  `PulmonaryDisord` varchar(50) DEFAULT NULL,
  `RadiationRegm` varchar(50) DEFAULT NULL,
  `RainfallRegm` varchar(50) DEFAULT NULL,
  `ReactorType` varchar(50) DEFAULT NULL,
  `RedoxPotential` varchar(50) DEFAULT NULL,
  `RefBiomaterial` varchar(50) DEFAULT NULL,
  `RelAirHumidity` varchar(50) DEFAULT NULL,
  `RelToOxygen` varchar(50) DEFAULT NULL,
  `RespPartMatter` varchar(50) DEFAULT NULL,
  `Salinity` varchar(50) DEFAULT NULL,
  `SalinityMeth` varchar(50) DEFAULT NULL,
  `SalmonInStream` varchar(10) DEFAULT NULL,
  `SalmonReturnStatus` varchar(15) DEFAULT NULL,
  `SaltRegm` varchar(50) DEFAULT NULL,
  `SampMatProcess` varchar(50) DEFAULT NULL,
  `SampSalinity` varchar(50) DEFAULT NULL,
  `SampSortMeth` varchar(50) DEFAULT NULL,
  `SampStoreDur` varchar(50) DEFAULT NULL,
  `SampStoreLoc` varchar(50) DEFAULT NULL,
  `SampStoreTemp` varchar(50) DEFAULT NULL,
  `SampVolWeDnaExt` varchar(50) DEFAULT NULL,
  `SampleReach` varchar(10) DEFAULT NULL,
  `SeasonEnvironment` varchar(50) DEFAULT NULL,
  `SecondaryTreatment` varchar(50) DEFAULT NULL,
  `SedimentType` varchar(50) DEFAULT NULL,
  `SewageType` varchar(50) DEFAULT NULL,
  `SexualAct` varchar(50) DEFAULT NULL,
  `Sieving` varchar(50) DEFAULT NULL,
  `Silicate` varchar(50) DEFAULT NULL,
  `SlopeAspect` varchar(50) DEFAULT NULL,
  `SlopeGradient` varchar(50) DEFAULT NULL,
  `SludgeRetentTime` varchar(50) DEFAULT NULL,
  `Smoker` bit(1) DEFAULT NULL,
  `Sodium` varchar(50) DEFAULT NULL,
  `SoilType` varchar(50) DEFAULT NULL,
  `SoilTypeMeth` varchar(50) DEFAULT NULL,
  `SolarIrradiance` varchar(50) DEFAULT NULL,
  `SolubleInorgMat` varchar(50) DEFAULT NULL,
  `SolubleOrgMat` varchar(50) DEFAULT NULL,
  `SolubleReactPhosp` varchar(50) DEFAULT NULL,
  `SpaceTypState` varchar(50) DEFAULT NULL,
  `SpecialDiet` varchar(50) DEFAULT NULL,
  `SpecificHost` varchar(50) DEFAULT NULL,
  `StandingWaterRegm` varchar(50) DEFAULT NULL,
  `StoreCond` varchar(50) DEFAULT NULL,
  `StreamsideVegetation` varchar(100) DEFAULT NULL,
  `StudyCompltStat` varchar(50) DEFAULT NULL,
  `SubspecfGenLin` varchar(50) DEFAULT NULL,
  `SubstructureType` varchar(50) DEFAULT NULL,
  `Sulfate` varchar(50) DEFAULT NULL,
  `Sulfide` varchar(50) DEFAULT NULL,
  `SurfAirCont` varchar(50) DEFAULT NULL,
  `SurfHumidity` varchar(50) DEFAULT NULL,
  `SurfMaterial` varchar(50) DEFAULT NULL,
  `SurfMoisture` varchar(50) DEFAULT NULL,
  `SurfMoisturePh` float DEFAULT NULL,
  `SurfTemp` varchar(50) DEFAULT NULL,
  `SuspendPartMatter` varchar(50) DEFAULT NULL,
  `SuspendSolids` varchar(50) DEFAULT NULL,
  `Temp` varchar(50) DEFAULT NULL,
  `TertiaryTreatment` varchar(50) DEFAULT NULL,
  `Texture` varchar(50) DEFAULT NULL,
  `TextureMeth` varchar(50) DEFAULT NULL,
  `TidalStage` varchar(50) DEFAULT NULL,
  `Tillage` varchar(50) DEFAULT NULL,
  `TimeLastToothbrush` datetime(6) DEFAULT NULL,
  `TimeSinceLastWash` datetime(6) DEFAULT NULL,
  `TissCultGrowthMed` varchar(50) DEFAULT NULL,
  `TotCarb` varchar(50) DEFAULT NULL,
  `TotDepthWaterCol` varchar(50) DEFAULT NULL,
  `TotDissNitro` varchar(50) DEFAULT NULL,
  `TotDissPhosp` varchar(50) DEFAULT NULL,
  `TotInorgNitro` varchar(50) DEFAULT NULL,
  `TotNMeth` varchar(50) DEFAULT NULL,
  `TotNitro` varchar(50) DEFAULT NULL,
  `TotOrgCMeth` varchar(50) DEFAULT NULL,
  `TotOrgCarb` varchar(50) DEFAULT NULL,
  `TotPartCarb` varchar(50) DEFAULT NULL,
  `TotPhosp` varchar(50) DEFAULT NULL,
  `TotPhosphate` varchar(50) DEFAULT NULL,
  `TotSuspendedSolids` varchar(50) DEFAULT NULL,
  `TravelOutSixMonth` varchar(50) DEFAULT NULL,
  `TrophicLevel` varchar(50) DEFAULT NULL,
  `Turbidity` varchar(50) DEFAULT NULL,
  `TwinSibling` bit(1) DEFAULT NULL,
  `TypOccupantDens` float DEFAULT NULL,
  `UrineCollectMeth` varchar(50) DEFAULT NULL,
  `UrogenitDisord` varchar(50) DEFAULT NULL,
  `UrogenitTractDisor` varchar(50) DEFAULT NULL,
  `VentilationRate` varchar(50) DEFAULT NULL,
  `VentilationType` varchar(50) DEFAULT NULL,
  `VolatileOrgComp` varchar(50) DEFAULT NULL,
  `WastewaterType` varchar(50) DEFAULT NULL,
  `WaterContent` varchar(50) DEFAULT NULL,
  `WaterContentSoilMeth` varchar(50) DEFAULT NULL,
  `WaterCurrent` varchar(50) DEFAULT NULL,
  `WaterTempRegm` varchar(50) DEFAULT NULL,
  `WateringRegm` varchar(50) DEFAULT NULL,
  `WeightLoss3Month` varchar(50) DEFAULT NULL,
  `WettedStreamWidth` varchar(10) DEFAULT NULL,
  `WindDirection` varchar(50) DEFAULT NULL,
  `WindSpeed` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MixsSpecificationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MixsSpecification`
--

LOCK TABLES `MixsSpecification` WRITE;
/*!40000 ALTER TABLE `MixsSpecification` DISABLE KEYS */;
/*!40000 ALTER TABLE `MixsSpecification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MixsSpecification_AUD`
--

DROP TABLE IF EXISTS `MixsSpecification_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MixsSpecification_AUD` (
  `MixsSpecificationID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `AbsAirHumidity` varchar(50) DEFAULT NULL,
  `AgrochemAddition` varchar(50) DEFAULT NULL,
  `AirTemp` varchar(50) DEFAULT NULL,
  `AirTempRegm` varchar(50) DEFAULT NULL,
  `AlSat` varchar(50) DEFAULT NULL,
  `AlSatMeth` varchar(50) DEFAULT NULL,
  `Alkalinity` varchar(50) DEFAULT NULL,
  `AlkylDiethers` varchar(50) DEFAULT NULL,
  `AminopeptAct` varchar(50) DEFAULT NULL,
  `Ammonium` varchar(50) DEFAULT NULL,
  `AmnioticFluidColor` varchar(50) DEFAULT NULL,
  `AnnualSeasonPrecpt` varchar(100) DEFAULT NULL,
  `AnnualSeasonTemp` varchar(100) DEFAULT NULL,
  `AntibioticRegm` varchar(50) DEFAULT NULL,
  `AtmosphericData` varchar(50) DEFAULT NULL,
  `BacProd` varchar(50) DEFAULT NULL,
  `BacResp` varchar(50) DEFAULT NULL,
  `BacteriaCarbProd` varchar(50) DEFAULT NULL,
  `BankfullWettedDepth` varchar(10) DEFAULT NULL,
  `BankfullWidth` varchar(10) DEFAULT NULL,
  `BarometricPress` varchar(50) DEFAULT NULL,
  `BiochemOxygenDem` varchar(50) DEFAULT NULL,
  `Biomass` varchar(50) DEFAULT NULL,
  `Biome` varchar(50) DEFAULT NULL,
  `BioticRelationship` varchar(50) DEFAULT NULL,
  `BirthControl` varchar(50) DEFAULT NULL,
  `Bishomohopanol` varchar(50) DEFAULT NULL,
  `BloodBloodDisord` varchar(50) DEFAULT NULL,
  `Bromide` varchar(50) DEFAULT NULL,
  `BuildOccupType` varchar(50) DEFAULT NULL,
  `BuildingSetting` varchar(50) DEFAULT NULL,
  `Calcium` varchar(50) DEFAULT NULL,
  `CanopyCoverage` varchar(10) DEFAULT NULL,
  `CarbDioxide` varchar(50) DEFAULT NULL,
  `CarbMonoxide` varchar(50) DEFAULT NULL,
  `CarbNitroRatio` varchar(50) DEFAULT NULL,
  `ChemAdministration` varchar(50) DEFAULT NULL,
  `ChemMutagen` varchar(50) DEFAULT NULL,
  `ChemOxygenDem` varchar(50) DEFAULT NULL,
  `Chloride` varchar(50) DEFAULT NULL,
  `Chlorophyll` varchar(50) DEFAULT NULL,
  `ClimateEnvironment` varchar(50) DEFAULT NULL,
  `Conduc` varchar(50) DEFAULT NULL,
  `CropRotation` varchar(50) DEFAULT NULL,
  `CurLandUse` varchar(100) DEFAULT NULL,
  `CurVegetation` varchar(50) DEFAULT NULL,
  `CurVegetationMeth` varchar(50) DEFAULT NULL,
  `Density` varchar(50) DEFAULT NULL,
  `DermatologyDisord` varchar(50) DEFAULT NULL,
  `DewPoint` varchar(50) DEFAULT NULL,
  `DietLastSixMonth` varchar(50) DEFAULT NULL,
  `DietherLipids` varchar(50) DEFAULT NULL,
  `DissCarbDioxide` varchar(50) DEFAULT NULL,
  `DissHydrogen` varchar(50) DEFAULT NULL,
  `DissInorgCarb` varchar(50) DEFAULT NULL,
  `DissInorgNitro` varchar(50) DEFAULT NULL,
  `DissInorgPhosp` varchar(50) DEFAULT NULL,
  `DissOrgCarb` varchar(50) DEFAULT NULL,
  `DissOrgNitro` varchar(50) DEFAULT NULL,
  `DissOxygen` varchar(50) DEFAULT NULL,
  `DominantHand` varchar(50) DEFAULT NULL,
  `DominantLandUse` varchar(100) DEFAULT NULL,
  `DominantStreamsideVegetation` varchar(100) DEFAULT NULL,
  `Douche` datetime(6) DEFAULT NULL,
  `DownPar` varchar(50) DEFAULT NULL,
  `DrainageClass` varchar(50) DEFAULT NULL,
  `DrugUsage` varchar(50) DEFAULT NULL,
  `EColi` varchar(50) DEFAULT NULL,
  `EfficiencyPercent` varchar(50) DEFAULT NULL,
  `Emulsions` varchar(50) DEFAULT NULL,
  `EncodedTraits` varchar(50) DEFAULT NULL,
  `EnvPackage` varchar(50) DEFAULT NULL,
  `EstimatedSize` varchar(50) DEFAULT NULL,
  `ExperimentalFactor` varchar(50) DEFAULT NULL,
  `ExtrachromElements` varchar(50) DEFAULT NULL,
  `ExtremeEvent` datetime(6) DEFAULT NULL,
  `ExtremeSalinity` varchar(100) DEFAULT NULL,
  `FaoClass` varchar(50) DEFAULT NULL,
  `Feature` varchar(50) DEFAULT NULL,
  `FertilizerRegm` varchar(50) DEFAULT NULL,
  `FilterType` varchar(50) DEFAULT NULL,
  `Fire` datetime(6) DEFAULT NULL,
  `FishKillEventInfo` varchar(100) DEFAULT NULL,
  `Flooding` datetime(6) DEFAULT NULL,
  `Fluor` varchar(50) DEFAULT NULL,
  `FoetalHealthStat` varchar(50) DEFAULT NULL,
  `FungicideRegm` varchar(50) DEFAULT NULL,
  `GaseousEnvironment` varchar(50) DEFAULT NULL,
  `GaseousSubstances` varchar(50) DEFAULT NULL,
  `GastrointestDisord` varchar(50) DEFAULT NULL,
  `GestationState` varchar(50) DEFAULT NULL,
  `GlucosidaseAct` varchar(50) DEFAULT NULL,
  `Gravidity` varchar(50) DEFAULT NULL,
  `Gravity` varchar(50) DEFAULT NULL,
  `GrowthHormoneRegm` varchar(50) DEFAULT NULL,
  `GrowthMed` varchar(50) DEFAULT NULL,
  `GynecologicDisord` varchar(50) DEFAULT NULL,
  `HealthDiseaseStat` varchar(50) DEFAULT NULL,
  `HeatCoolType` varchar(50) DEFAULT NULL,
  `HeavyMetals` varchar(50) DEFAULT NULL,
  `HeavyMetalsMeth` varchar(50) DEFAULT NULL,
  `HerbicideRegm` varchar(50) DEFAULT NULL,
  `Horizon` varchar(50) DEFAULT NULL,
  `HorizonMeth` varchar(50) DEFAULT NULL,
  `HostAge` varchar(50) DEFAULT NULL,
  `HostBloodPressDiast` varchar(50) DEFAULT NULL,
  `HostBloodPressSyst` varchar(50) DEFAULT NULL,
  `HostBodyHabitat` varchar(50) DEFAULT NULL,
  `HostBodyMassIndex` varchar(50) DEFAULT NULL,
  `HostBodyProduct` varchar(50) DEFAULT NULL,
  `HostBodySite` varchar(50) DEFAULT NULL,
  `HostBodyTemp` varchar(50) DEFAULT NULL,
  `HostColor` varchar(50) DEFAULT NULL,
  `HostCommonName` varchar(50) DEFAULT NULL,
  `HostDiet` varchar(50) DEFAULT NULL,
  `HostDiseaseStat` varchar(50) DEFAULT NULL,
  `HostDryMass` varchar(50) DEFAULT NULL,
  `HostFamilyRelationship` varchar(50) DEFAULT NULL,
  `HostGenotype` varchar(50) DEFAULT NULL,
  `HostGrowthCond` varchar(50) DEFAULT NULL,
  `HostHeight` varchar(50) DEFAULT NULL,
  `HostHivStat` varchar(50) DEFAULT NULL,
  `HostInfraSpecificName` varchar(50) DEFAULT NULL,
  `HostInfraSpecificRank` varchar(50) DEFAULT NULL,
  `HostLastMeal` varchar(50) DEFAULT NULL,
  `HostLength` varchar(50) DEFAULT NULL,
  `HostLifeStage` varchar(50) DEFAULT NULL,
  `HostOccupation` int(11) DEFAULT NULL,
  `HostPhenotype` varchar(50) DEFAULT NULL,
  `HostPulse` varchar(50) DEFAULT NULL,
  `HostSex` varchar(50) DEFAULT NULL,
  `HostShape` varchar(50) DEFAULT NULL,
  `HostSubjectId` varchar(50) DEFAULT NULL,
  `HostSubstrate` varchar(50) DEFAULT NULL,
  `HostTaxid` int(11) DEFAULT NULL,
  `HostTotMass` varchar(50) DEFAULT NULL,
  `HostWetMass` varchar(50) DEFAULT NULL,
  `Hrt` datetime(6) DEFAULT NULL,
  `Humidity` varchar(50) DEFAULT NULL,
  `HumidityRegm` varchar(50) DEFAULT NULL,
  `Hysterectomy` bit(1) DEFAULT NULL,
  `IhmcEthnicity` varchar(50) DEFAULT NULL,
  `IhmcMedicationCode` int(11) DEFAULT NULL,
  `IndoorSpace` varchar(50) DEFAULT NULL,
  `IndoorSurf` varchar(50) DEFAULT NULL,
  `IndustEffPercent` varchar(50) DEFAULT NULL,
  `InorgParticles` varchar(50) DEFAULT NULL,
  `InvestigationType` varchar(20) DEFAULT NULL,
  `IsolGrowthCondt` varchar(50) DEFAULT NULL,
  `KidneyDisord` varchar(50) DEFAULT NULL,
  `LightIntensity` varchar(50) DEFAULT NULL,
  `LightType` varchar(50) DEFAULT NULL,
  `LinkAdditAnalys` varchar(50) DEFAULT NULL,
  `LinkClassInfo` varchar(250) DEFAULT NULL,
  `LinkClimateInfo` varchar(250) DEFAULT NULL,
  `LiverDisord` varchar(50) DEFAULT NULL,
  `LocalClass` varchar(50) DEFAULT NULL,
  `LocalClassMeth` varchar(50) DEFAULT NULL,
  `MacrophyteCoverage` varchar(10) DEFAULT NULL,
  `Magnesium` varchar(50) DEFAULT NULL,
  `Material` varchar(50) DEFAULT NULL,
  `MaternalHealthStat` varchar(50) DEFAULT NULL,
  `MeanFrictVel` varchar(50) DEFAULT NULL,
  `MeanPeakFrictVel` varchar(50) DEFAULT NULL,
  `MechanicalDamage` varchar(50) DEFAULT NULL,
  `MedicHistPerform` bit(1) DEFAULT NULL,
  `Menarche` datetime(6) DEFAULT NULL,
  `Menopause` datetime(6) DEFAULT NULL,
  `Methane` varchar(50) DEFAULT NULL,
  `MicrobialBiomass` varchar(50) DEFAULT NULL,
  `MicrobialBiomassMeth` varchar(50) DEFAULT NULL,
  `MineralNutrRegm` varchar(50) DEFAULT NULL,
  `MiscParam` varchar(50) DEFAULT NULL,
  `nAlkanes` varchar(50) DEFAULT NULL,
  `Nitrate` varchar(50) DEFAULT NULL,
  `Nitrite` varchar(50) DEFAULT NULL,
  `Nitro` varchar(50) DEFAULT NULL,
  `NonMineralNutrRegm` varchar(50) DEFAULT NULL,
  `NoseMouthTeethThroatDisord` varchar(50) DEFAULT NULL,
  `NoseThroatDisord` varchar(50) DEFAULT NULL,
  `NumReplicons` int(11) DEFAULT NULL,
  `OccupSamp` int(11) DEFAULT NULL,
  `OccupantDensSamp` float DEFAULT NULL,
  `OrgCarb` varchar(50) DEFAULT NULL,
  `OrgMatter` varchar(50) DEFAULT NULL,
  `OrgNitro` varchar(50) DEFAULT NULL,
  `OrgParticles` varchar(50) DEFAULT NULL,
  `OrganismCount` varchar(50) DEFAULT NULL,
  `OxyStatSamp` varchar(50) DEFAULT NULL,
  `Oxygen` varchar(50) DEFAULT NULL,
  `PartOrgCarb` varchar(50) DEFAULT NULL,
  `PartOrgNitro` varchar(50) DEFAULT NULL,
  `ParticleClass` varchar(50) DEFAULT NULL,
  `Pathogenicity` varchar(50) DEFAULT NULL,
  `PeriphytonCoverage` varchar(100) DEFAULT NULL,
  `Perturbation` varchar(50) DEFAULT NULL,
  `PesticideRegm` varchar(50) DEFAULT NULL,
  `PetFarmAnimal` varchar(50) DEFAULT NULL,
  `PetroleumHydrocarb` varchar(50) DEFAULT NULL,
  `Ph` float DEFAULT NULL,
  `PhMeth` varchar(50) DEFAULT NULL,
  `PhRegm` varchar(50) DEFAULT NULL,
  `Phaeopigments` varchar(50) DEFAULT NULL,
  `Phosphate` varchar(50) DEFAULT NULL,
  `PhosplipidFattAcid` varchar(50) DEFAULT NULL,
  `PhotonFlux` varchar(50) DEFAULT NULL,
  `PlantBodySite` varchar(50) DEFAULT NULL,
  `PlantProduct` varchar(50) DEFAULT NULL,
  `Ploidy` varchar(50) DEFAULT NULL,
  `Pollutants` varchar(50) DEFAULT NULL,
  `PoolDnaExtracts` varchar(50) DEFAULT NULL,
  `Porosity` varchar(50) DEFAULT NULL,
  `Potassium` varchar(50) DEFAULT NULL,
  `PreTreatment` varchar(50) DEFAULT NULL,
  `Pregnancy` datetime(6) DEFAULT NULL,
  `Pressure` varchar(50) DEFAULT NULL,
  `PreviousLandUse` varchar(50) DEFAULT NULL,
  `PreviousLandUseMeth` varchar(50) DEFAULT NULL,
  `PrimaryProd` varchar(50) DEFAULT NULL,
  `PrimaryTreatment` varchar(50) DEFAULT NULL,
  `ProfilePosition` varchar(50) DEFAULT NULL,
  `Propagation` varchar(50) DEFAULT NULL,
  `PulmonaryDisord` varchar(50) DEFAULT NULL,
  `RadiationRegm` varchar(50) DEFAULT NULL,
  `RainfallRegm` varchar(50) DEFAULT NULL,
  `ReactorType` varchar(50) DEFAULT NULL,
  `RedoxPotential` varchar(50) DEFAULT NULL,
  `RefBiomaterial` varchar(50) DEFAULT NULL,
  `RelAirHumidity` varchar(50) DEFAULT NULL,
  `RelToOxygen` varchar(50) DEFAULT NULL,
  `RespPartMatter` varchar(50) DEFAULT NULL,
  `Salinity` varchar(50) DEFAULT NULL,
  `SalinityMeth` varchar(50) DEFAULT NULL,
  `SalmonInStream` varchar(10) DEFAULT NULL,
  `SalmonReturnStatus` varchar(15) DEFAULT NULL,
  `SaltRegm` varchar(50) DEFAULT NULL,
  `SampMatProcess` varchar(50) DEFAULT NULL,
  `SampSalinity` varchar(50) DEFAULT NULL,
  `SampSortMeth` varchar(50) DEFAULT NULL,
  `SampStoreDur` varchar(50) DEFAULT NULL,
  `SampStoreLoc` varchar(50) DEFAULT NULL,
  `SampStoreTemp` varchar(50) DEFAULT NULL,
  `SampVolWeDnaExt` varchar(50) DEFAULT NULL,
  `SampleReach` varchar(10) DEFAULT NULL,
  `SeasonEnvironment` varchar(50) DEFAULT NULL,
  `SecondaryTreatment` varchar(50) DEFAULT NULL,
  `SedimentType` varchar(50) DEFAULT NULL,
  `SewageType` varchar(50) DEFAULT NULL,
  `SexualAct` varchar(50) DEFAULT NULL,
  `Sieving` varchar(50) DEFAULT NULL,
  `Silicate` varchar(50) DEFAULT NULL,
  `SlopeAspect` varchar(50) DEFAULT NULL,
  `SlopeGradient` varchar(50) DEFAULT NULL,
  `SludgeRetentTime` varchar(50) DEFAULT NULL,
  `Smoker` bit(1) DEFAULT NULL,
  `Sodium` varchar(50) DEFAULT NULL,
  `SoilType` varchar(50) DEFAULT NULL,
  `SoilTypeMeth` varchar(50) DEFAULT NULL,
  `SolarIrradiance` varchar(50) DEFAULT NULL,
  `SolubleInorgMat` varchar(50) DEFAULT NULL,
  `SolubleOrgMat` varchar(50) DEFAULT NULL,
  `SolubleReactPhosp` varchar(50) DEFAULT NULL,
  `SpaceTypState` varchar(50) DEFAULT NULL,
  `SpecialDiet` varchar(50) DEFAULT NULL,
  `SpecificHost` varchar(50) DEFAULT NULL,
  `StandingWaterRegm` varchar(50) DEFAULT NULL,
  `StoreCond` varchar(50) DEFAULT NULL,
  `StreamsideVegetation` varchar(100) DEFAULT NULL,
  `StudyCompltStat` varchar(50) DEFAULT NULL,
  `SubspecfGenLin` varchar(50) DEFAULT NULL,
  `SubstructureType` varchar(50) DEFAULT NULL,
  `Sulfate` varchar(50) DEFAULT NULL,
  `Sulfide` varchar(50) DEFAULT NULL,
  `SurfAirCont` varchar(50) DEFAULT NULL,
  `SurfHumidity` varchar(50) DEFAULT NULL,
  `SurfMaterial` varchar(50) DEFAULT NULL,
  `SurfMoisture` varchar(50) DEFAULT NULL,
  `SurfMoisturePh` float DEFAULT NULL,
  `SurfTemp` varchar(50) DEFAULT NULL,
  `SuspendPartMatter` varchar(50) DEFAULT NULL,
  `SuspendSolids` varchar(50) DEFAULT NULL,
  `Temp` varchar(50) DEFAULT NULL,
  `TertiaryTreatment` varchar(50) DEFAULT NULL,
  `Texture` varchar(50) DEFAULT NULL,
  `TextureMeth` varchar(50) DEFAULT NULL,
  `TidalStage` varchar(50) DEFAULT NULL,
  `Tillage` varchar(50) DEFAULT NULL,
  `TimeLastToothbrush` datetime(6) DEFAULT NULL,
  `TimeSinceLastWash` datetime(6) DEFAULT NULL,
  `TissCultGrowthMed` varchar(50) DEFAULT NULL,
  `TotCarb` varchar(50) DEFAULT NULL,
  `TotDepthWaterCol` varchar(50) DEFAULT NULL,
  `TotDissNitro` varchar(50) DEFAULT NULL,
  `TotDissPhosp` varchar(50) DEFAULT NULL,
  `TotInorgNitro` varchar(50) DEFAULT NULL,
  `TotNMeth` varchar(50) DEFAULT NULL,
  `TotNitro` varchar(50) DEFAULT NULL,
  `TotOrgCMeth` varchar(50) DEFAULT NULL,
  `TotOrgCarb` varchar(50) DEFAULT NULL,
  `TotPartCarb` varchar(50) DEFAULT NULL,
  `TotPhosp` varchar(50) DEFAULT NULL,
  `TotPhosphate` varchar(50) DEFAULT NULL,
  `TotSuspendedSolids` varchar(50) DEFAULT NULL,
  `TravelOutSixMonth` varchar(50) DEFAULT NULL,
  `TrophicLevel` varchar(50) DEFAULT NULL,
  `Turbidity` varchar(50) DEFAULT NULL,
  `TwinSibling` bit(1) DEFAULT NULL,
  `TypOccupantDens` float DEFAULT NULL,
  `UrineCollectMeth` varchar(50) DEFAULT NULL,
  `UrogenitDisord` varchar(50) DEFAULT NULL,
  `UrogenitTractDisor` varchar(50) DEFAULT NULL,
  `VentilationRate` varchar(50) DEFAULT NULL,
  `VentilationType` varchar(50) DEFAULT NULL,
  `VolatileOrgComp` varchar(50) DEFAULT NULL,
  `WastewaterType` varchar(50) DEFAULT NULL,
  `WaterContent` varchar(50) DEFAULT NULL,
  `WaterContentSoilMeth` varchar(50) DEFAULT NULL,
  `WaterCurrent` varchar(50) DEFAULT NULL,
  `WaterTempRegm` varchar(50) DEFAULT NULL,
  `WateringRegm` varchar(50) DEFAULT NULL,
  `WeightLoss3Month` varchar(50) DEFAULT NULL,
  `WettedStreamWidth` varchar(10) DEFAULT NULL,
  `WindDirection` varchar(50) DEFAULT NULL,
  `WindSpeed` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MixsSpecificationID`,`REV`),
  KEY `FK_bva1xtoa70un4afj9pihokk84` (`REV`),
  CONSTRAINT `FK_bva1xtoa70un4afj9pihokk84` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MixsSpecification_AUD`
--

LOCK TABLES `MixsSpecification_AUD` WRITE;
/*!40000 ALTER TABLE `MixsSpecification_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `MixsSpecification_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PcrBatchAttach`
--

DROP TABLE IF EXISTS `PcrBatchAttach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PcrBatchAttach` (
  `PcrBatchAttachId` int(11) NOT NULL AUTO_INCREMENT,
  `DateEntered` date NOT NULL,
  `FileExtension` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) NOT NULL,
  `FileTitle` varchar(255) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `PcrBatchId` int(11) NOT NULL,
  PRIMARY KEY (`PcrBatchAttachId`),
  KEY `FK_i1hvqhm5h2qb9xbijcvcjkksn` (`PcrBatchId`),
  CONSTRAINT `FK_i1hvqhm5h2qb9xbijcvcjkksn` FOREIGN KEY (`PcrBatchId`) REFERENCES `PcrBatchs` (`PCRBatchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PcrBatchAttach`
--

LOCK TABLES `PcrBatchAttach` WRITE;
/*!40000 ALTER TABLE `PcrBatchAttach` DISABLE KEYS */;
/*!40000 ALTER TABLE `PcrBatchAttach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PcrBatchs`
--

DROP TABLE IF EXISTS `PcrBatchs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PcrBatchs` (
  `PCRBatchID` int(11) NOT NULL AUTO_INCREMENT,
  `DnaDilution` varchar(50) DEFAULT NULL,
  `Experimenter` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Notes` longtext,
  `Objective` varchar(200) DEFAULT NULL,
  `PcrPoolingNumber` varchar(50) DEFAULT NULL,
  `Pooled` bit(1) DEFAULT NULL,
  `PositiveControl` varchar(50) DEFAULT NULL,
  `Project` varchar(50) DEFAULT NULL,
  `Purification` varchar(50) DEFAULT NULL,
  `ReactionDate` date DEFAULT NULL,
  `ReactionVolume` varchar(50) DEFAULT NULL,
  `Reference` varchar(200) DEFAULT NULL,
  `Result` longtext,
  `Polymerase` varchar(50) DEFAULT NULL,
  `Thermocycler` varchar(50) DEFAULT NULL,
  `Type` varchar(255) NOT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `PCRProfileID` int(11) DEFAULT NULL,
  `PrimerForwardID` int(11) DEFAULT NULL,
  `PrimerReverseID` int(11) DEFAULT NULL,
  `ProtocolID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  `QuantificationMethod` varchar(100) DEFAULT NULL,
  `CleanUpMethod` varchar(100) DEFAULT NULL,
  `CleanUpPlateId` varchar(50) DEFAULT NULL,
  `CleanUpDate` date DEFAULT NULL,
  `NormalizationMethod` varchar(100) DEFAULT NULL,
  `NormalizedConcentration` varchar(20) DEFAULT NULL,
  `NormalizationPlateId` varchar(50) DEFAULT NULL,
  `Round2BatchID` int(11) DEFAULT NULL,
  `SeqSubmissionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PCRBatchID`),
  UNIQUE KEY `UK_dltslxx4u78lx3eoye0rgfiqu` (`Name`,`GroupID`),
  KEY `FK_190on7fv02cyhhqqbtynwmcfb` (`GroupID`),
  KEY `FK_iyhmua5d43idxmrqwa6mt1mmx` (`PCRProfileID`),
  KEY `FK_5xrpd7j1ifhcveugmvivsy9j4` (`PrimerForwardID`),
  KEY `FK_qsywx3kn4haf7fb0fal1ko4sd` (`PrimerReverseID`),
  KEY `FK_tkxk7kxmhav5jejmldunlthm2` (`ProtocolID`),
  KEY `FK_4c30viwryqtx91qdsp81emqa` (`RegionID`),
  KEY `FK_5ox5bp4jaw3po3u184kff1sul` (`Round2BatchID`),
  KEY `FK_knhujokmet0ew9isorewoouim` (`SeqSubmissionID`),
  CONSTRAINT `FK_190on7fv02cyhhqqbtynwmcfb` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_4c30viwryqtx91qdsp81emqa` FOREIGN KEY (`RegionID`) REFERENCES `Regions` (`TagID`),
  CONSTRAINT `FK_5ox5bp4jaw3po3u184kff1sul` FOREIGN KEY (`Round2BatchID`) REFERENCES `PcrBatchs` (`PCRBatchID`),
  CONSTRAINT `FK_5xrpd7j1ifhcveugmvivsy9j4` FOREIGN KEY (`PrimerForwardID`) REFERENCES `PcrPrimers` (`PCRPrimerID`),
  CONSTRAINT `FK_iyhmua5d43idxmrqwa6mt1mmx` FOREIGN KEY (`PCRProfileID`) REFERENCES `PcrProfiles` (`PCRProfileID`),
  CONSTRAINT `FK_knhujokmet0ew9isorewoouim` FOREIGN KEY (`SeqSubmissionID`) REFERENCES `SeqSubmissions` (`SeqSubmissionID`),
  CONSTRAINT `FK_qsywx3kn4haf7fb0fal1ko4sd` FOREIGN KEY (`PrimerReverseID`) REFERENCES `PcrPrimers` (`PCRPrimerID`),
  CONSTRAINT `FK_tkxk7kxmhav5jejmldunlthm2` FOREIGN KEY (`ProtocolID`) REFERENCES `Protocols` (`ProtocolID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PcrBatchs`
--

LOCK TABLES `PcrBatchs` WRITE;
/*!40000 ALTER TABLE `PcrBatchs` DISABLE KEYS */;
/*!40000 ALTER TABLE `PcrBatchs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PcrBatchs_AUD`
--

DROP TABLE IF EXISTS `PcrBatchs_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PcrBatchs_AUD` (
  `PCRBatchID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `DnaDilution` varchar(50) DEFAULT NULL,
  `Experimenter` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Notes` longtext,
  `Objective` varchar(200) DEFAULT NULL,
  `PcrPoolingNumber` varchar(50) DEFAULT NULL,
  `Pooled` bit(1) DEFAULT NULL,
  `PositiveControl` varchar(50) DEFAULT NULL,
  `Project` varchar(50) DEFAULT NULL,
  `Purification` varchar(50) DEFAULT NULL,
  `ReactionDate` date DEFAULT NULL,
  `ReactionVolume` varchar(50) DEFAULT NULL,
  `Reference` varchar(200) DEFAULT NULL,
  `Result` longtext,
  `Polymerase` varchar(50) DEFAULT NULL,
  `Thermocycler` varchar(50) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `PCRProfileID` int(11) DEFAULT NULL,
  `PrimerForwardID` int(11) DEFAULT NULL,
  `PrimerReverseID` int(11) DEFAULT NULL,
  `ProtocolID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  `QuantificationMethod` varchar(100) DEFAULT NULL,
  `CleanUpMethod` varchar(100) DEFAULT NULL,
  `CleanUpPlateId` varchar(50) DEFAULT NULL,
  `CleanUpDate` date DEFAULT NULL,
  `NormalizationMethod` varchar(100) DEFAULT NULL,
  `NormalizedConcentration` varchar(20) DEFAULT NULL,
  `NormalizationPlateId` varchar(50) DEFAULT NULL,
  `Round2BatchID` int(11) DEFAULT NULL,
  `SeqSubmissionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PCRBatchID`,`REV`),
  KEY `FK_djmx4xysiut1o4y0p87bgcp95` (`REV`),
  CONSTRAINT `FK_djmx4xysiut1o4y0p87bgcp95` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PcrBatchs_AUD`
--

LOCK TABLES `PcrBatchs_AUD` WRITE;
/*!40000 ALTER TABLE `PcrBatchs_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `PcrBatchs_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PcrPrimers`
--

DROP TABLE IF EXISTS `PcrPrimers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PcrPrimers` (
  `PCRPrimerID` int(11) NOT NULL AUTO_INCREMENT,
  `Application` varchar(200) DEFAULT NULL,
  `DateOrdered` date DEFAULT NULL,
  `DesignDate` date DEFAULT NULL,
  `DesignedBy` varchar(50) DEFAULT NULL,
  `Direction` varchar(1) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `LitReference` varchar(512) DEFAULT NULL,
  `LotNumber` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Note` varchar(1024) DEFAULT NULL,
  `Position` varchar(10) DEFAULT NULL,
  `Purification` varchar(50) DEFAULT NULL,
  `Reference` longtext,
  `ReferenceSeqDir` varchar(255) DEFAULT NULL,
  `ReferenceSeqFile` varchar(50) DEFAULT NULL,
  `RestrictionSite` longtext,
  `Seq` longtext NOT NULL,
  `SequenceLength` varchar(50) DEFAULT NULL,
  `StockConcentration` varchar(10) DEFAULT NULL,
  `Storage` varchar(50) DEFAULT NULL,
  `Supplier` varchar(50) DEFAULT NULL,
  `TargetSpecies` varchar(50) DEFAULT NULL,
  `TmCalculated` varchar(11) DEFAULT NULL,
  `TmPE` int(11) DEFAULT NULL,
  `Type` varchar(255) NOT NULL,
  `URLLink` longtext,
  `Used4Cloning` bit(1) DEFAULT NULL,
  `Used4Genotyping` bit(1) DEFAULT NULL,
  `Used4NestedPCR` bit(1) DEFAULT NULL,
  `Used4QRTPCR` bit(1) DEFAULT NULL,
  `Used4Sequencing` bit(1) DEFAULT NULL,
  `Used4StdPCR` bit(1) DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `DesignedByID` int(11) DEFAULT NULL,
  `PCRCieContactID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PCRPrimerID`),
  UNIQUE KEY `UK_duh2h6r8djyl9i4qael9wfu9w` (`Name`,`LotNumber`,`GroupID`),
  KEY `FK_libscfvci046fww5lgwxqauh5` (`GroupID`),
  KEY `FK_4anag2k5y8odmss8vru2hprag` (`DesignedByID`),
  KEY `FK_j7w8lp16p2plapfkw12sxn561` (`PCRCieContactID`),
  KEY `FK_d5ldlywy1pp43lba8ciyyx1us` (`RegionID`),
  CONSTRAINT `FK_4anag2k5y8odmss8vru2hprag` FOREIGN KEY (`DesignedByID`) REFERENCES `People` (`PeopleID`),
  CONSTRAINT `FK_d5ldlywy1pp43lba8ciyyx1us` FOREIGN KEY (`RegionID`) REFERENCES `Regions` (`TagID`),
  CONSTRAINT `FK_j7w8lp16p2plapfkw12sxn561` FOREIGN KEY (`PCRCieContactID`) REFERENCES `People` (`PeopleID`),
  CONSTRAINT `FK_libscfvci046fww5lgwxqauh5` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PcrPrimers`
--

LOCK TABLES `PcrPrimers` WRITE;
/*!40000 ALTER TABLE `PcrPrimers` DISABLE KEYS */;
/*!40000 ALTER TABLE `PcrPrimers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PcrPrimers_AUD`
--

DROP TABLE IF EXISTS `PcrPrimers_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PcrPrimers_AUD` (
  `PCRPrimerID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Application` varchar(200) DEFAULT NULL,
  `DateOrdered` date DEFAULT NULL,
  `DesignDate` date DEFAULT NULL,
  `DesignedBy` varchar(50) DEFAULT NULL,
  `Direction` varchar(1) DEFAULT NULL,
  `LitReference` varchar(512) DEFAULT NULL,
  `LotNumber` int(11) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Note` varchar(1024) DEFAULT NULL,
  `Position` varchar(10) DEFAULT NULL,
  `Purification` varchar(50) DEFAULT NULL,
  `Reference` longtext,
  `ReferenceSeqDir` varchar(255) DEFAULT NULL,
  `ReferenceSeqFile` varchar(50) DEFAULT NULL,
  `RestrictionSite` longtext,
  `Seq` longtext,
  `SequenceLength` varchar(50) DEFAULT NULL,
  `StockConcentration` varchar(10) DEFAULT NULL,
  `Storage` varchar(50) DEFAULT NULL,
  `Supplier` varchar(50) DEFAULT NULL,
  `TargetSpecies` varchar(50) DEFAULT NULL,
  `TmCalculated` varchar(11) DEFAULT NULL,
  `TmPE` int(11) DEFAULT NULL,
  `Type` varchar(255) NOT NULL,
  `URLLink` longtext,
  `Used4Cloning` bit(1) DEFAULT NULL,
  `Used4Genotyping` bit(1) DEFAULT NULL,
  `Used4NestedPCR` bit(1) DEFAULT NULL,
  `Used4QRTPCR` bit(1) DEFAULT NULL,
  `Used4Sequencing` bit(1) DEFAULT NULL,
  `Used4StdPCR` bit(1) DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `DesignedByID` int(11) DEFAULT NULL,
  `PCRCieContactID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PCRPrimerID`,`REV`),
  KEY `FK_7frxhwqxndu6ggu0pf8m33e1d` (`REV`),
  CONSTRAINT `FK_7frxhwqxndu6ggu0pf8m33e1d` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PcrPrimers_AUD`
--

LOCK TABLES `PcrPrimers_AUD` WRITE;
/*!40000 ALTER TABLE `PcrPrimers_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `PcrPrimers_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PcrProfiles`
--

DROP TABLE IF EXISTS `PcrProfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PcrProfiles` (
  `PCRProfileID` int(11) NOT NULL AUTO_INCREMENT,
  `Application` varchar(50) DEFAULT NULL,
  `Cycles` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Step1` varchar(50) DEFAULT NULL,
  `Step10` varchar(50) DEFAULT NULL,
  `Step11` varchar(50) DEFAULT NULL,
  `Step12` varchar(50) DEFAULT NULL,
  `Step13` varchar(50) DEFAULT NULL,
  `Step14` varchar(50) DEFAULT NULL,
  `Step15` varchar(50) DEFAULT NULL,
  `Step2` varchar(50) DEFAULT NULL,
  `Step3` varchar(50) DEFAULT NULL,
  `Step4` varchar(50) DEFAULT NULL,
  `Step5` varchar(50) DEFAULT NULL,
  `Step6` varchar(50) DEFAULT NULL,
  `Step7` varchar(50) DEFAULT NULL,
  `Step8` varchar(50) DEFAULT NULL,
  `Step9` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PCRProfileID`),
  UNIQUE KEY `UK_7sa4mdiir7g4x2bcydhd5r9w2` (`Name`,`GroupID`),
  KEY `FK_g9ndujio1cprdfv1vxr25h6r4` (`GroupID`),
  KEY `FK_8inqadrodpjw8h6jun9r19u20` (`RegionID`),
  CONSTRAINT `FK_8inqadrodpjw8h6jun9r19u20` FOREIGN KEY (`RegionID`) REFERENCES `Regions` (`TagID`),
  CONSTRAINT `FK_g9ndujio1cprdfv1vxr25h6r4` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PcrProfiles`
--

LOCK TABLES `PcrProfiles` WRITE;
/*!40000 ALTER TABLE `PcrProfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `PcrProfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PcrProfiles_AUD`
--

DROP TABLE IF EXISTS `PcrProfiles_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PcrProfiles_AUD` (
  `PCRProfileID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Application` varchar(50) DEFAULT NULL,
  `Cycles` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Step1` varchar(50) DEFAULT NULL,
  `Step10` varchar(50) DEFAULT NULL,
  `Step11` varchar(50) DEFAULT NULL,
  `Step12` varchar(50) DEFAULT NULL,
  `Step13` varchar(50) DEFAULT NULL,
  `Step14` varchar(50) DEFAULT NULL,
  `Step15` varchar(50) DEFAULT NULL,
  `Step2` varchar(50) DEFAULT NULL,
  `Step3` varchar(50) DEFAULT NULL,
  `Step4` varchar(50) DEFAULT NULL,
  `Step5` varchar(50) DEFAULT NULL,
  `Step6` varchar(50) DEFAULT NULL,
  `Step7` varchar(50) DEFAULT NULL,
  `Step8` varchar(50) DEFAULT NULL,
  `Step9` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PCRProfileID`,`REV`),
  KEY `FK_dftsxppl9qolmnbp96t2vyf4s` (`REV`),
  CONSTRAINT `FK_dftsxppl9qolmnbp96t2vyf4s` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PcrProfiles_AUD`
--

LOCK TABLES `PcrProfiles_AUD` WRITE;
/*!40000 ALTER TABLE `PcrProfiles_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `PcrProfiles_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PcrReactions`
--

DROP TABLE IF EXISTS `PcrReactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PcrReactions` (
  `PcrReactionID` int(11) NOT NULL AUTO_INCREMENT,
  `ImageDir` varchar(255) DEFAULT NULL,
  `ImageName` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `LocEnd` int(11) DEFAULT NULL,
  `LocStart` int(11) DEFAULT NULL,
  `Note` longtext,
  `PcrName` varchar(50) DEFAULT NULL,
  `Result` longtext,
  `Target` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `MID` int(11) DEFAULT NULL,
  `PCRBatchID` int(11) NOT NULL,
  `PrimerForwardID` int(11) DEFAULT NULL,
  `PrimerReverseID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  `SampleID` int(11) DEFAULT NULL,
  `FinalConcentration` varchar(50) DEFAULT NULL,
  `FinalQuality` varchar(50) DEFAULT NULL,
  `CleanUpPlateCoordinates` varchar(5) DEFAULT NULL,
  `NormalizationCoordinates` varchar(5) DEFAULT NULL,
  `Round1ReactionID` int(11) DEFAULT NULL,
  `IndexSet` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PcrReactionID`),
  UNIQUE KEY `UK_r6twnrc5jjmfcou6ga115bs9n` (`PcrName`,`PCRBatchID`,`GroupID`),
  KEY `FK_jg81alaokneidyb0v3knwmj3u` (`GroupID`),
  KEY `FK_947m1h8wbrjbe7webovc5ohhd` (`MID`),
  KEY `FK_s2joblkkv71yib8kce8uxvlt7` (`PCRBatchID`),
  KEY `FK_kvp7jk41aby9lisqxyxjlly6n` (`PrimerForwardID`),
  KEY `FK_hxxl23rrnb8u65nr8myhg0899` (`PrimerReverseID`),
  KEY `FK_nk19pirk3oy63udfhcjhg7m29` (`RegionID`),
  KEY `FK_aoqmedewpccv2ml2lgoec0c06` (`SampleID`),
  KEY `FK_7ipoegbsejjkxjwsotrcbxbr1` (`Round1ReactionID`),
  CONSTRAINT `FK_7ipoegbsejjkxjwsotrcbxbr1` FOREIGN KEY (`Round1ReactionID`) REFERENCES `PcrReactions` (`PcrReactionID`),
  CONSTRAINT `FK_947m1h8wbrjbe7webovc5ohhd` FOREIGN KEY (`MID`) REFERENCES `PcrPrimers` (`PCRPrimerID`),
  CONSTRAINT `FK_aoqmedewpccv2ml2lgoec0c06` FOREIGN KEY (`SampleID`) REFERENCES `Samples` (`SampleID`),
  CONSTRAINT `FK_hxxl23rrnb8u65nr8myhg0899` FOREIGN KEY (`PrimerReverseID`) REFERENCES `PcrPrimers` (`PCRPrimerID`),
  CONSTRAINT `FK_jg81alaokneidyb0v3knwmj3u` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_kvp7jk41aby9lisqxyxjlly6n` FOREIGN KEY (`PrimerForwardID`) REFERENCES `PcrPrimers` (`PCRPrimerID`),
  CONSTRAINT `FK_nk19pirk3oy63udfhcjhg7m29` FOREIGN KEY (`RegionID`) REFERENCES `Regions` (`TagID`),
  CONSTRAINT `FK_s2joblkkv71yib8kce8uxvlt7` FOREIGN KEY (`PCRBatchID`) REFERENCES `PcrBatchs` (`PCRBatchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PcrReactions`
--

LOCK TABLES `PcrReactions` WRITE;
/*!40000 ALTER TABLE `PcrReactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `PcrReactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PcrReactions_AUD`
--

DROP TABLE IF EXISTS `PcrReactions_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PcrReactions_AUD` (
  `PcrReactionID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `ImageDir` varchar(255) DEFAULT NULL,
  `ImageName` varchar(50) DEFAULT NULL,
  `LocEnd` int(11) DEFAULT NULL,
  `LocStart` int(11) DEFAULT NULL,
  `Note` longtext,
  `PcrName` varchar(50) DEFAULT NULL,
  `Result` longtext,
  `Target` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `MID` int(11) DEFAULT NULL,
  `PCRBatchID` int(11) DEFAULT NULL,
  `PrimerForwardID` int(11) DEFAULT NULL,
  `PrimerReverseID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  `SampleID` int(11) DEFAULT NULL,
  `FinalConcentration` varchar(50) DEFAULT NULL,
  `FinalQuality` varchar(50) DEFAULT NULL,
  `CleanUpPlateCoordinates` varchar(5) DEFAULT NULL,
  `NormalizationCoordinates` varchar(5) DEFAULT NULL,
  `Round1ReactionID` int(11) DEFAULT NULL,
  `IndexSet` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PcrReactionID`,`REV`),
  KEY `FK_e5emcecbalr3q8lwtky433qjm` (`REV`),
  CONSTRAINT `FK_e5emcecbalr3q8lwtky433qjm` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PcrReactions_AUD`
--

LOCK TABLES `PcrReactions_AUD` WRITE;
/*!40000 ALTER TABLE `PcrReactions_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `PcrReactions_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `People`
--

DROP TABLE IF EXISTS `People`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `People` (
  `PeopleID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `NameFamily` varchar(50) NOT NULL,
  `NameGiven` varchar(50) DEFAULT NULL,
  `NameMiddle` varchar(50) DEFAULT NULL,
  `NamePrefix` varchar(50) DEFAULT NULL,
  `NameSuffix` varchar(50) DEFAULT NULL,
  `Note` longtext,
  PRIMARY KEY (`PeopleID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `People`
--

LOCK TABLES `People` WRITE;
/*!40000 ALTER TABLE `People` DISABLE KEYS */;
INSERT INTO `People` VALUES (1,'2007-04-03 00:00:00.000000','Raible','Matt','','','',''),(2,'2007-04-03 00:00:00.000000','Johnson','Bob','','','','');
/*!40000 ALTER TABLE `People` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PeopleAddresses`
--

DROP TABLE IF EXISTS `PeopleAddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PeopleAddresses` (
  `PeopleAddressID` int(11) NOT NULL AUTO_INCREMENT,
  `AddrType` varchar(20) NOT NULL,
  `PrimaryAddr` bit(1) NOT NULL,
  `TelCell` varchar(40) DEFAULT NULL,
  `TelFax` varchar(40) DEFAULT NULL,
  `TelPager` varchar(40) DEFAULT NULL,
  `TelVoice1` varchar(40) DEFAULT NULL,
  `TelVoice2` varchar(40) DEFAULT NULL,
  `AddressID` int(11) DEFAULT NULL,
  `PeopleID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PeopleAddressID`),
  KEY `FK_t2mrruiddat2byt9i5coq185o` (`AddressID`),
  KEY `FK_fmo1wa3swpawahjntu632s4dm` (`PeopleID`),
  CONSTRAINT `FK_fmo1wa3swpawahjntu632s4dm` FOREIGN KEY (`PeopleID`) REFERENCES `People` (`PeopleID`),
  CONSTRAINT `FK_t2mrruiddat2byt9i5coq185o` FOREIGN KEY (`AddressID`) REFERENCES `Addresses` (`AddressID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PeopleAddresses`
--

LOCK TABLES `PeopleAddresses` WRITE;
/*!40000 ALTER TABLE `PeopleAddresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `PeopleAddresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PeopleGroups`
--

DROP TABLE IF EXISTS `PeopleGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PeopleGroups` (
  `PeopleGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `PeopleID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PeopleGroupID`),
  KEY `FK_7qbopoys5i020a1u0wtksh9al` (`GroupID`),
  KEY `FK_buxmypgdwcfgy8gprhfo1k9a4` (`PeopleID`),
  CONSTRAINT `FK_7qbopoys5i020a1u0wtksh9al` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_buxmypgdwcfgy8gprhfo1k9a4` FOREIGN KEY (`PeopleID`) REFERENCES `People` (`PeopleID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PeopleGroups`
--

LOCK TABLES `PeopleGroups` WRITE;
/*!40000 ALTER TABLE `PeopleGroups` DISABLE KEYS */;
INSERT INTO `PeopleGroups` VALUES (1,'2013-03-19 00:00:00.000000',6,1),(2,'2013-03-19 00:00:00.000000',7,1);
/*!40000 ALTER TABLE `PeopleGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Printers`
--

DROP TABLE IF EXISTS `Printers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Printers` (
  `PrinterID` int(11) NOT NULL AUTO_INCREMENT,
  `Alias` varchar(255) NOT NULL,
  `AssetTag` varchar(255) DEFAULT NULL,
  `IpAddress` varchar(255) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Path` varchar(255) DEFAULT NULL,
  `PrinterName` varchar(50) NOT NULL,
  `LabelFormatID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PrinterID`),
  UNIQUE KEY `UK_5et5n4fc8jcen1a6inakmydlx` (`Alias`),
  KEY `FK_di98ww0jwy6rja4tadd2baqrl` (`LabelFormatID`),
  CONSTRAINT `FK_di98ww0jwy6rja4tadd2baqrl` FOREIGN KEY (`LabelFormatID`) REFERENCES `LabelFormats` (`LabelFormatID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Printers`
--

LOCK TABLES `Printers` WRITE;
/*!40000 ALTER TABLE `Printers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Products` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(200) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `UPC` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `FK_clmijec1ll51e1cw4y06pa1lj` (`GroupID`),
  CONSTRAINT `FK_clmijec1ll51e1cw4y06pa1lj` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products_AUD`
--

DROP TABLE IF EXISTS `Products_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Products_AUD` (
  `ProductID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `UPC` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProductID`,`REV`),
  KEY `FK_n7jjay7ughu5qrc2sbuots3sk` (`REV`),
  CONSTRAINT `FK_n7jjay7ughu5qrc2sbuots3sk` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products_AUD`
--

LOCK TABLES `Products_AUD` WRITE;
/*!40000 ALTER TABLE `Products_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Products_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectTags`
--

DROP TABLE IF EXISTS `ProjectTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectTags` (
  `TagID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  `rgt` int(11) DEFAULT NULL,
  `DurationFrom` date DEFAULT NULL,
  `DurationUntil` date DEFAULT NULL,
  `FundingSource` varchar(30) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TagID`),
  UNIQUE KEY `UK_9x0k5m3mp5ms3pgxp4sp6dotw` (`Name`),
  UNIQUE KEY `UK_h88xanisv3f9ubo9h4x65nxhd` (`Name`,`GroupID`),
  KEY `FK_phqvhw9un9ed5rsp6nysmu151` (`GroupID`),
  CONSTRAINT `FK_phqvhw9un9ed5rsp6nysmu151` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectTags`
--

LOCK TABLES `ProjectTags` WRITE;
/*!40000 ALTER TABLE `ProjectTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectTags_AUD`
--

DROP TABLE IF EXISTS `ProjectTags_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectTags_AUD` (
  `TagID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `DurationFrom` date DEFAULT NULL,
  `DurationUntil` date DEFAULT NULL,
  `FundingSource` varchar(30) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TagID`,`REV`),
  KEY `FK_i84pu0014li6cglfesarm767j` (`REV`),
  CONSTRAINT `FK_i84pu0014li6cglfesarm767j` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectTags_AUD`
--

LOCK TABLES `ProjectTags_AUD` WRITE;
/*!40000 ALTER TABLE `ProjectTags_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectTags_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Projects`
--

DROP TABLE IF EXISTS `Projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Projects` (
  `ProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProjectID`),
  UNIQUE KEY `UK_6sxa05kpc3ujngpsvmaqdw9pt` (`Name`),
  KEY `FK_rsyctg2p1bxfnhguxpr3xrm47` (`GroupID`),
  CONSTRAINT `FK_rsyctg2p1bxfnhguxpr3xrm47` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Projects`
--

LOCK TABLES `Projects` WRITE;
/*!40000 ALTER TABLE `Projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `Projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectsProject`
--

DROP TABLE IF EXISTS `ProjectsProject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectsProject` (
  `ProjectsProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `ChildID` int(11) NOT NULL,
  `ParentID` int(11) NOT NULL,
  PRIMARY KEY (`ProjectsProjectID`),
  UNIQUE KEY `UK_tjbd851lfl437pmvjt76rbc57` (`ChildID`),
  KEY `FK_40glvko9wlbdh4axsvon037mg` (`ParentID`),
  CONSTRAINT `FK_40glvko9wlbdh4axsvon037mg` FOREIGN KEY (`ParentID`) REFERENCES `Projects` (`ProjectID`),
  CONSTRAINT `FK_tjbd851lfl437pmvjt76rbc57` FOREIGN KEY (`ChildID`) REFERENCES `Projects` (`ProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectsProject`
--

LOCK TABLES `ProjectsProject` WRITE;
/*!40000 ALTER TABLE `ProjectsProject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectsProject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProtocolAttach`
--

DROP TABLE IF EXISTS `ProtocolAttach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProtocolAttach` (
  `ProtocolAttachId` int(11) NOT NULL AUTO_INCREMENT,
  `DateEntered` date NOT NULL,
  `FileExtension` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) NOT NULL,
  `FileTitle` varchar(255) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `ProtocolID` int(11) NOT NULL,
  PRIMARY KEY (`ProtocolAttachId`),
  KEY `FK_susn9fe31sdoambvi1nlx436n` (`ProtocolID`),
  CONSTRAINT `FK_susn9fe31sdoambvi1nlx436n` FOREIGN KEY (`ProtocolID`) REFERENCES `Protocols` (`ProtocolID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProtocolAttach`
--

LOCK TABLES `ProtocolAttach` WRITE;
/*!40000 ALTER TABLE `ProtocolAttach` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProtocolAttach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Protocols`
--

DROP TABLE IF EXISTS `Protocols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Protocols` (
  `ProtocolID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(200) DEFAULT NULL,
  `Equipment` varchar(50) DEFAULT NULL,
  `ForwardPrimerConcentration` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Notes` varchar(200) DEFAULT NULL,
  `ReactionMixVolume` varchar(50) DEFAULT NULL,
  `ReactionMixVolumePerTube` varchar(50) DEFAULT NULL,
  `Reference` varchar(100) DEFAULT NULL,
  `ReversePrimerConcentration` varchar(50) DEFAULT NULL,
  `Steps` varchar(1000) DEFAULT NULL,
  `Type` varchar(255) NOT NULL,
  `Version` varchar(5) DEFAULT NULL,
  `GroupID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProtocolID`),
  UNIQUE KEY `UK_9rlls40vfmcvrg63wc6e9fig` (`GroupID`,`Name`,`Type`),
  KEY `FK_1xw4rqu4nlbrgr7tfhix7ufr1` (`ProductID`),
  CONSTRAINT `FK_1xw4rqu4nlbrgr7tfhix7ufr1` FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`),
  CONSTRAINT `FK_8uvt9ggw52gw8ec687h28civr` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Protocols`
--

LOCK TABLES `Protocols` WRITE;
/*!40000 ALTER TABLE `Protocols` DISABLE KEYS */;
INSERT INTO `Protocols` VALUES (1,NULL,NULL,'','2017-01-01 00:00:00.000000','Specimen collection protocol',NULL,'','',NULL,'',NULL,'COLLECTION_EVENT',NULL,1,NULL),(2,NULL,NULL,'','2017-01-01 00:00:00.000000','specimen preparation protocol',NULL,'','',NULL,'',NULL,'SPECIMEN_PREPARATION',NULL,1,NULL),(3,NULL,NULL,'','2017-01-01 00:00:00.000000','DNA extraction protocol',NULL,'','',NULL,'',NULL,'DNA_EXTRACTION',NULL,1,NULL),(4,NULL,NULL,'','2017-01-01 00:00:00.000000','PCR protocol',NULL,'','',NULL,'',NULL,'PCR_REACTION',NULL,1,NULL),(5,NULL,NULL,'','2017-01-01 00:00:00.000000','Sequence reaction protocol',NULL,'','',NULL,'',NULL,'SEQ_REACTION',NULL,1,NULL),(6,NULL,NULL,'','2017-01-01 00:00:00.000000','Environmental specimen collection protocol',NULL,'','',NULL,'',NULL,'COLLECTION_EVENT',NULL,1,NULL),(7,NULL,NULL,'','2017-01-01 00:00:00.000000','Sequencing using PCR templates and 20mM primers',NULL,'','',NULL,'',NULL,'SEQ_REACTION',NULL,1,NULL),(8,NULL,NULL,'','2017-01-17 00:00:00.000000','PCR Standardized for Sequencing (10ul), +BSA ',NULL,'10','9',NULL,'',NULL,'PCR_REACTION',NULL,1,NULL),(9,NULL,NULL,'20 uM','2017-01-01 00:00:00.000000','PCR without purification before sequencing, revise',NULL,'10','9',NULL,'20 uM',NULL,'PCR_REACTION',NULL,1,NULL),(10,NULL,NULL,'20 uM','2017-01-01 00:00:00.000000','PCR requiring purification before sequencing, revi',NULL,'10','9',NULL,'20 uM',NULL,'PCR_REACTION',NULL,1,NULL),(11,NULL,NULL,'3.2 uM','2017-01-01 00:00:00.000000','BDT v3.1 Sequencing Protocol. Revised July 2005 ND',NULL,'','',NULL,'',NULL,'SEQ_REACTION',NULL,1,NULL);
/*!40000 ALTER TABLE `Protocols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Protocols_AUD`
--

DROP TABLE IF EXISTS `Protocols_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Protocols_AUD` (
  `ProtocolID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Equipment` varchar(50) DEFAULT NULL,
  `ForwardPrimerConcentration` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Notes` varchar(200) DEFAULT NULL,
  `ReactionMixVolume` varchar(50) DEFAULT NULL,
  `ReactionMixVolumePerTube` varchar(50) DEFAULT NULL,
  `Reference` varchar(100) DEFAULT NULL,
  `ReversePrimerConcentration` varchar(50) DEFAULT NULL,
  `Steps` varchar(1000) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Version` varchar(5) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProtocolID`,`REV`),
  KEY `FK_gnj2gppl4gftqldmlj4btgxgg` (`REV`),
  CONSTRAINT `FK_gnj2gppl4gftqldmlj4btgxgg` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Protocols_AUD`
--

LOCK TABLES `Protocols_AUD` WRITE;
/*!40000 ALTER TABLE `Protocols_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Protocols_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProviderChains`
--

DROP TABLE IF EXISTS `ProviderChains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderChains` (
  `ProviderChainID` int(11) NOT NULL AUTO_INCREMENT,
  `DateReceived` datetime DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `SpecimenIdent` varchar(50) DEFAULT NULL,
  `SpecimenNumber` int(11) DEFAULT NULL,
  `ProviderID` int(11) DEFAULT NULL,
  `ReceivedByID` int(11) DEFAULT NULL,
  `ParentProviderChainID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProviderChainID`),
  KEY `FK_1jp1erfwf28iroh9l6liq791v` (`ProviderID`),
  KEY `FK_nil4cfpn0c7m8slqnk4owktsg` (`ReceivedByID`),
  KEY `FK_l3qknci5nmdeqx7h6o3smaswa` (`ParentProviderChainID`),
  CONSTRAINT `FK_1jp1erfwf28iroh9l6liq791v` FOREIGN KEY (`ProviderID`) REFERENCES `People` (`PeopleID`),
  CONSTRAINT `FK_l3qknci5nmdeqx7h6o3smaswa` FOREIGN KEY (`ParentProviderChainID`) REFERENCES `ProviderChains` (`ProviderChainID`),
  CONSTRAINT `FK_nil4cfpn0c7m8slqnk4owktsg` FOREIGN KEY (`ReceivedByID`) REFERENCES `People` (`PeopleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderChains`
--

LOCK TABLES `ProviderChains` WRITE;
/*!40000 ALTER TABLE `ProviderChains` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProviderChains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProviderChains_AUD`
--

DROP TABLE IF EXISTS `ProviderChains_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderChains_AUD` (
  `ProviderChainID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `DateReceived` datetime DEFAULT NULL,
  `SpecimenIdent` varchar(50) DEFAULT NULL,
  `SpecimenNumber` int(11) DEFAULT NULL,
  `ProviderID` int(11) DEFAULT NULL,
  `ReceivedByID` int(11) DEFAULT NULL,
  `ParentProviderChainID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProviderChainID`,`REV`),
  KEY `FK_syge507bmxa59tfo3sun3s8le` (`REV`),
  CONSTRAINT `FK_syge507bmxa59tfo3sun3s8le` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderChains_AUD`
--

LOCK TABLES `ProviderChains_AUD` WRITE;
/*!40000 ALTER TABLE `ProviderChains_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProviderChains_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Provinces`
--

DROP TABLE IF EXISTS `Provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Provinces` (
  `ProvinceId` int(11) NOT NULL AUTO_INCREMENT,
  `Abbreviation` varchar(512) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(512) NOT NULL,
  `Note` varchar(512) DEFAULT NULL,
  `CountryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProvinceId`),
  KEY `FK_sj0ixihlctmheexvesghvvhbh` (`CountryId`),
  CONSTRAINT `FK_sj0ixihlctmheexvesghvvhbh` FOREIGN KEY (`CountryId`) REFERENCES `Countries` (`CountryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Provinces`
--

LOCK TABLES `Provinces` WRITE;
/*!40000 ALTER TABLE `Provinces` DISABLE KEYS */;
/*!40000 ALTER TABLE `Provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReactionComponents`
--

DROP TABLE IF EXISTS `ReactionComponents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionComponents` (
  `ReactionComponentID` int(11) NOT NULL AUTO_INCREMENT,
  `Concentration` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Quantity` varchar(50) DEFAULT NULL,
  `ProtocolID` int(11) NOT NULL,
  PRIMARY KEY (`ReactionComponentID`),
  KEY `FK_1a4aoax0d4hbnk3xyjl4qi9vv` (`ProtocolID`),
  CONSTRAINT `FK_1a4aoax0d4hbnk3xyjl4qi9vv` FOREIGN KEY (`ProtocolID`) REFERENCES `Protocols` (`ProtocolID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReactionComponents`
--

LOCK TABLES `ReactionComponents` WRITE;
/*!40000 ALTER TABLE `ReactionComponents` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReactionComponents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Refs`
--

DROP TABLE IF EXISTS `Refs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Refs` (
  `ReferenceID` int(11) NOT NULL AUTO_INCREMENT,
  `AttachFile` varchar(100) DEFAULT NULL,
  `Author` varchar(500) DEFAULT NULL,
  `Date` varchar(100) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `OrigId` varchar(100) DEFAULT NULL,
  `Source` varchar(500) DEFAULT NULL,
  `Title` varchar(500) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `AccountID` int(11) NOT NULL,
  PRIMARY KEY (`ReferenceID`),
  KEY `FK_4qvccfx8g3psr818ndnsit51d` (`AccountID`),
  CONSTRAINT `FK_4qvccfx8g3psr818ndnsit51d` FOREIGN KEY (`AccountID`) REFERENCES `Accounts` (`AccountID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Refs`
--

LOCK TABLES `Refs` WRITE;
/*!40000 ALTER TABLE `Refs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Refs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regions`
--

DROP TABLE IF EXISTS `Regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Regions` (
  `TagID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `Symbol` varchar(50) NOT NULL,
  `Aliases` varchar(255) DEFAULT NULL,
  `ApplicableOrganisims` varchar(255) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`TagID`),
  UNIQUE KEY `UK_dyejdil5b8y2kps0hqh3thhun` (`Name`,`GroupID`),
  KEY `FK_afqlk7jwweqdv5evifnx1ugkm` (`GroupID`),
  CONSTRAINT `FK_afqlk7jwweqdv5evifnx1ugkm` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Regions`
--

LOCK TABLES `Regions` WRITE;
/*!40000 ALTER TABLE `Regions` DISABLE KEYS */;
INSERT INTO `Regions` VALUES (1,'System root node that every region inherits from. Should not be displayed in the UI.','2017-06-09 00:00:00.000000','root',1,'root',NULL,NULL,1,2);
/*!40000 ALTER TABLE `Regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regions_AUD`
--

DROP TABLE IF EXISTS `Regions_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Regions_AUD` (
  `TagID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Description` longtext,
  `Name` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `Symbol` varchar(50) DEFAULT NULL,
  `Aliases` varchar(255) DEFAULT NULL,
  `ApplicableOrganisims` varchar(255) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`TagID`,`REV`),
  KEY `FK_1tm6uj8qa05skj1arvj1tc5na` (`REV`),
  CONSTRAINT `FK_1tm6uj8qa05skj1arvj1tc5na` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Regions_AUD`
--

LOCK TABLES `Regions_AUD` WRITE;
/*!40000 ALTER TABLE `Regions_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Regions_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Revision`
--

DROP TABLE IF EXISTS `Revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` bigint(20) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Revision`
--

LOCK TABLES `Revision` WRITE;
/*!40000 ALTER TABLE `Revision` DISABLE KEYS */;
INSERT INTO `Revision` VALUES (1,1489674163496,'Admin'),(2,1490722099842,'Admin'),(3,1490722106067,'Admin'),(4,1490722224052,'Admin');
/*!40000 ALTER TABLE `Revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SampleAttach`
--

DROP TABLE IF EXISTS `SampleAttach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SampleAttach` (
  `SampleAttachId` int(11) NOT NULL AUTO_INCREMENT,
  `DateEntered` date NOT NULL,
  `FileExtension` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) NOT NULL,
  `FileTitle` varchar(255) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `SampleId` int(11) NOT NULL,
  PRIMARY KEY (`SampleAttachId`),
  KEY `FK_qb9ji50w6mbt5tgj801fn2yd0` (`SampleId`),
  CONSTRAINT `FK_qb9ji50w6mbt5tgj801fn2yd0` FOREIGN KEY (`SampleId`) REFERENCES `Samples` (`SampleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SampleAttach`
--

LOCK TABLES `SampleAttach` WRITE;
/*!40000 ALTER TABLE `SampleAttach` DISABLE KEYS */;
/*!40000 ALTER TABLE `SampleAttach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Samples`
--

DROP TABLE IF EXISTS `Samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Samples` (
  `SampleID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `DnaConcentration` varchar(50) DEFAULT NULL,
  `DnaConcentrationNotes` varchar(200) DEFAULT NULL,
  `DnaConcentrationPerStartMaterial` varchar(50) DEFAULT NULL,
  `DnaNotes` longtext,
  `Experimenter` varchar(50) DEFAULT NULL,
  `ExtractionBatch` varchar(100) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `LysisBufferVolume` double DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Notes` longtext,
  `NuclAcidExt` varchar(50) DEFAULT NULL,
  `PelletSize` double DEFAULT NULL,
  `ProteinaseKVolume` double DEFAULT NULL,
  `QuantificationMethod` varchar(100) DEFAULT NULL,
  `QubitDNAConcentration` double DEFAULT NULL,
  `Ratio260_230` double DEFAULT NULL,
  `Ratio260_280` double DEFAULT NULL,
  `Source` varchar(200) DEFAULT NULL,
  `Treatment` longtext,
  `TubeId` varchar(50) DEFAULT NULL,
  `UnusableDna` bit(1) DEFAULT NULL,
  `Version` varchar(50) DEFAULT NULL,
  `VersionDescription` varchar(512) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `MixedSpecimenID` int(11) DEFAULT NULL,
  `ProtocolID` int(11) DEFAULT NULL,
  `SpecimenID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SampleID`),
  UNIQUE KEY `UK_1aqcmkjwtipu7d9j70hud3j0i` (`Name`,`Version`,`GroupID`),
  KEY `FK_oydcu32elckh89l3sqk5sidbk` (`GroupID`),
  KEY `FK_chdo5fadxi2yf42ww78sy89xa` (`ProductID`),
  KEY `FK_nf0fq2j176ync5qmfirg3fker` (`MixedSpecimenID`),
  KEY `FK_68me2pv0wxtbibrt30wwtr1dr` (`ProtocolID`),
  KEY `FK_cs25lgdf3it0yx9ks1r8jb79n` (`SpecimenID`),
  CONSTRAINT `FK_68me2pv0wxtbibrt30wwtr1dr` FOREIGN KEY (`ProtocolID`) REFERENCES `Protocols` (`ProtocolID`),
  CONSTRAINT `FK_chdo5fadxi2yf42ww78sy89xa` FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`),
  CONSTRAINT `FK_cs25lgdf3it0yx9ks1r8jb79n` FOREIGN KEY (`SpecimenID`) REFERENCES `Specimens` (`SpecimenID`),
  CONSTRAINT `FK_nf0fq2j176ync5qmfirg3fker` FOREIGN KEY (`MixedSpecimenID`) REFERENCES `MixedSpecimens` (`MixedSpecimenID`),
  CONSTRAINT `FK_oydcu32elckh89l3sqk5sidbk` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Samples`
--

LOCK TABLES `Samples` WRITE;
/*!40000 ALTER TABLE `Samples` DISABLE KEYS */;
/*!40000 ALTER TABLE `Samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Samples_AUD`
--

DROP TABLE IF EXISTS `Samples_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Samples_AUD` (
  `SampleID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `DnaConcentration` varchar(50) DEFAULT NULL,
  `DnaConcentrationNotes` varchar(200) DEFAULT NULL,
  `DnaConcentrationPerStartMaterial` varchar(50) DEFAULT NULL,
  `DnaNotes` longtext,
  `Experimenter` varchar(50) DEFAULT NULL,
  `ExtractionBatch` varchar(100) DEFAULT NULL,
  `LysisBufferVolume` double DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Notes` longtext,
  `NuclAcidExt` varchar(50) DEFAULT NULL,
  `PelletSize` double DEFAULT NULL,
  `ProteinaseKVolume` double DEFAULT NULL,
  `QuantificationMethod` varchar(100) DEFAULT NULL,
  `QubitDNAConcentration` double DEFAULT NULL,
  `Ratio260_230` double DEFAULT NULL,
  `Ratio260_280` double DEFAULT NULL,
  `Source` varchar(200) DEFAULT NULL,
  `Treatment` longtext,
  `TubeId` varchar(50) DEFAULT NULL,
  `UnusableDna` bit(1) DEFAULT NULL,
  `Version` varchar(50) DEFAULT NULL,
  `VersionDescription` varchar(512) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `MixedSpecimenID` int(11) DEFAULT NULL,
  `ProtocolID` int(11) DEFAULT NULL,
  `SpecimenID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SampleID`,`REV`),
  KEY `FK_nokubna3i7h503rat5xynpm84` (`REV`),
  CONSTRAINT `FK_nokubna3i7h503rat5xynpm84` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Samples_AUD`
--

LOCK TABLES `Samples_AUD` WRITE;
/*!40000 ALTER TABLE `Samples_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Samples_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqBatchs`
--

DROP TABLE IF EXISTS `SeqBatchs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqBatchs` (
  `SeqBatchID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Experimenter` varchar(50) DEFAULT NULL,
  `FragmentType` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `Objective` varchar(255) DEFAULT NULL,
  `Reference` varchar(512) DEFAULT NULL,
  `SequenceCount` varchar(50) DEFAULT NULL,
  `Thermocycler` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `PCRProfileID` int(11) DEFAULT NULL,
  `ProtocolID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SeqBatchID`),
  UNIQUE KEY `UK_7pw7de7lhx3e8i1c68trdv2co` (`Name`,`GroupID`),
  KEY `FK_m81rb3pfdiq14tabkpj3j9jyn` (`GroupID`),
  KEY `FK_sirj0wrt2yk94lvw1mrlw2qc4` (`PCRProfileID`),
  KEY `FK_ehc393q8ngsuhjk6y6juhfs16` (`ProtocolID`),
  KEY `FK_n5tu2s6wqeql3yi5nfnj0g2mb` (`RegionID`),
  CONSTRAINT `FK_ehc393q8ngsuhjk6y6juhfs16` FOREIGN KEY (`ProtocolID`) REFERENCES `Protocols` (`ProtocolID`),
  CONSTRAINT `FK_m81rb3pfdiq14tabkpj3j9jyn` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_n5tu2s6wqeql3yi5nfnj0g2mb` FOREIGN KEY (`RegionID`) REFERENCES `Regions` (`TagID`),
  CONSTRAINT `FK_sirj0wrt2yk94lvw1mrlw2qc4` FOREIGN KEY (`PCRProfileID`) REFERENCES `PcrProfiles` (`PCRProfileID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqBatchs`
--

LOCK TABLES `SeqBatchs` WRITE;
/*!40000 ALTER TABLE `SeqBatchs` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqBatchs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqBatchs_AUD`
--

DROP TABLE IF EXISTS `SeqBatchs_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqBatchs_AUD` (
  `SeqBatchID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Experimenter` varchar(50) DEFAULT NULL,
  `FragmentType` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `Objective` varchar(255) DEFAULT NULL,
  `Reference` varchar(512) DEFAULT NULL,
  `SequenceCount` varchar(50) DEFAULT NULL,
  `Thermocycler` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `PCRProfileID` int(11) DEFAULT NULL,
  `ProtocolID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SeqBatchID`,`REV`),
  KEY `FK_t2eqlq7cjhc7a8jp5ulrypmgc` (`REV`),
  CONSTRAINT `FK_t2eqlq7cjhc7a8jp5ulrypmgc` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqBatchs_AUD`
--

LOCK TABLES `SeqBatchs_AUD` WRITE;
/*!40000 ALTER TABLE `SeqBatchs_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqBatchs_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqMethods`
--

DROP TABLE IF EXISTS `SeqMethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqMethods` (
  `SeqMethodID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`SeqMethodID`),
  UNIQUE KEY `UK_iakoyyeeqmi5ra3o4dyqcb4tl` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqMethods`
--

LOCK TABLES `SeqMethods` WRITE;
/*!40000 ALTER TABLE `SeqMethods` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqMethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqProjects`
--

DROP TABLE IF EXISTS `SeqProjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqProjects` (
  `SeqProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`SeqProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqProjects`
--

LOCK TABLES `SeqProjects` WRITE;
/*!40000 ALTER TABLE `SeqProjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqProjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqProjectsProjects`
--

DROP TABLE IF EXISTS `SeqProjectsProjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqProjectsProjects` (
  `SeqProjectsProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectID` int(11) DEFAULT NULL,
  `SeqProjectID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SeqProjectsProjectID`),
  KEY `FK_jyuf5lfeq8hhd2g6uwnv002uk` (`ProjectID`),
  KEY `FK_8wcdhmuhu5wu1597flwnaiopr` (`SeqProjectID`),
  CONSTRAINT `FK_8wcdhmuhu5wu1597flwnaiopr` FOREIGN KEY (`SeqProjectID`) REFERENCES `SeqProjects` (`SeqProjectID`),
  CONSTRAINT `FK_jyuf5lfeq8hhd2g6uwnv002uk` FOREIGN KEY (`ProjectID`) REFERENCES `Projects` (`ProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqProjectsProjects`
--

LOCK TABLES `SeqProjectsProjects` WRITE;
/*!40000 ALTER TABLE `SeqProjectsProjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqProjectsProjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqProjectsSequences`
--

DROP TABLE IF EXISTS `SeqProjectsSequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqProjectsSequences` (
  `SeqProjectsSequenceID` int(11) NOT NULL AUTO_INCREMENT,
  `SeqProjectID` int(11) NOT NULL,
  `SequenceID` int(11) NOT NULL,
  PRIMARY KEY (`SeqProjectsSequenceID`),
  KEY `FK_gr1q9bfsft2mpfsc83gyi62s1` (`SeqProjectID`),
  KEY `FK_ohpl1sdb8hm46b8l9g34sd0cf` (`SequenceID`),
  CONSTRAINT `FK_gr1q9bfsft2mpfsc83gyi62s1` FOREIGN KEY (`SeqProjectID`) REFERENCES `SeqProjects` (`SeqProjectID`),
  CONSTRAINT `FK_ohpl1sdb8hm46b8l9g34sd0cf` FOREIGN KEY (`SequenceID`) REFERENCES `Sequences` (`SequenceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqProjectsSequences`
--

LOCK TABLES `SeqProjectsSequences` WRITE;
/*!40000 ALTER TABLE `SeqProjectsSequences` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqProjectsSequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqReactions`
--

DROP TABLE IF EXISTS `SeqReactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqReactions` (
  `SeqReactionID` int(11) NOT NULL AUTO_INCREMENT,
  `AmpliconSize` varchar(50) DEFAULT NULL,
  `DNAConcentration` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `PrimerConcentration` varchar(50) DEFAULT NULL,
  `SeqCode` varchar(255) NOT NULL,
  `WellCoordinates` varchar(255) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `PcrReactionID` int(11) DEFAULT NULL,
  `SeqBatchID` int(11) DEFAULT NULL,
  `SeqPrimerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SeqReactionID`),
  UNIQUE KEY `UK_9y5yb24tcp3iunfpr4mc68uyv` (`WellCoordinates`,`SeqBatchID`,`GroupID`),
  KEY `FK_7bu545r1h1nac1rqdehvyhhwo` (`GroupID`),
  KEY `FK_orsl48c73rikurwvh0bw0asnn` (`PcrReactionID`),
  KEY `FK_rjc8t80j6yf06x4spmlq53mmi` (`SeqBatchID`),
  KEY `FK_ld8v5qix5ku6tjehe3mg3cgqs` (`SeqPrimerID`),
  CONSTRAINT `FK_7bu545r1h1nac1rqdehvyhhwo` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_ld8v5qix5ku6tjehe3mg3cgqs` FOREIGN KEY (`SeqPrimerID`) REFERENCES `PcrPrimers` (`PCRPrimerID`),
  CONSTRAINT `FK_orsl48c73rikurwvh0bw0asnn` FOREIGN KEY (`PcrReactionID`) REFERENCES `PcrReactions` (`PcrReactionID`),
  CONSTRAINT `FK_rjc8t80j6yf06x4spmlq53mmi` FOREIGN KEY (`SeqBatchID`) REFERENCES `SeqBatchs` (`SeqBatchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqReactions`
--

LOCK TABLES `SeqReactions` WRITE;
/*!40000 ALTER TABLE `SeqReactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqReactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqReactions_AUD`
--

DROP TABLE IF EXISTS `SeqReactions_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqReactions_AUD` (
  `SeqReactionID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `AmpliconSize` varchar(50) DEFAULT NULL,
  `DNAConcentration` varchar(50) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `PrimerConcentration` varchar(50) DEFAULT NULL,
  `SeqCode` varchar(255) DEFAULT NULL,
  `WellCoordinates` varchar(255) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `PcrReactionID` int(11) DEFAULT NULL,
  `SeqBatchID` int(11) DEFAULT NULL,
  `SeqPrimerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SeqReactionID`,`REV`),
  KEY `FK_97cbm6ka2tewfdj53avcpek7m` (`REV`),
  CONSTRAINT `FK_97cbm6ka2tewfdj53avcpek7m` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqReactions_AUD`
--

LOCK TABLES `SeqReactions_AUD` WRITE;
/*!40000 ALTER TABLE `SeqReactions_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqReactions_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqSources`
--

DROP TABLE IF EXISTS `SeqSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqSources` (
  `SequenceID` int(11) NOT NULL,
  `BiologicalCollectionID` int(11) DEFAULT NULL,
  `ClusterConsID` int(11) DEFAULT NULL,
  `ClusterSeqID` int(11) DEFAULT NULL,
  `CollectionInfoID` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `IdentificationID` int(11) DEFAULT NULL,
  `MidID` int(11) DEFAULT NULL,
  `MixedSpecimenID` int(11) DEFAULT NULL,
  `PcrBatchID` int(11) DEFAULT NULL,
  `PcrReactionID` int(11) DEFAULT NULL,
  `PrimerForwardID` int(11) DEFAULT NULL,
  `PrimerReverseID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  `SampleID` int(11) DEFAULT NULL,
  `SeqBatchID` int(11) DEFAULT NULL,
  `SeqReactionID` int(11) DEFAULT NULL,
  `SpecimenID` int(11) DEFAULT NULL,
  `TaxonID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SequenceID`),
  KEY `FK_841om21hek51soq7fc05fgvij` (`BiologicalCollectionID`),
  KEY `FK_qi2p2jj9tvuiyxgns6e7s7s7p` (`ClusterConsID`),
  KEY `FK_lomh51bwssbvqxf99lccbl1o9` (`ClusterSeqID`),
  KEY `FK_fe5snpi3d9mdpo5jh6vvbu5m7` (`CollectionInfoID`),
  KEY `FK_4t7cg90s9ltmig4lkj5onx4qb` (`GroupID`),
  KEY `FK_qjhdmqlauh995txjxbyqlvt0p` (`IdentificationID`),
  KEY `FK_dvb2lxtiyhu9q1l9r9mdpnadw` (`MidID`),
  KEY `FK_5ehbgji2j0gjaihyvdrk3yp6o` (`MixedSpecimenID`),
  KEY `FK_an50pyveilyolmvmt3dms960t` (`PcrBatchID`),
  KEY `FK_6a987nbi5u3n7ak73yy9dntnq` (`PcrReactionID`),
  KEY `FK_ojv4mufjy28wjte762tthjlsa` (`PrimerForwardID`),
  KEY `FK_2pb4jtciyg4rdbffl5l5bmktd` (`PrimerReverseID`),
  KEY `FK_8od61q4npqmrp9yi65jtj2ykt` (`RegionID`),
  KEY `FK_3080at25w8nm4v0d9yweie2ms` (`SampleID`),
  KEY `FK_m9ly95txnk442e90at8oe0qh3` (`SeqBatchID`),
  KEY `FK_1xl6pvmp5w185eq4b0aal9mft` (`SeqReactionID`),
  KEY `FK_8k21fscowx43bsg9stcjm6lne` (`SpecimenID`),
  KEY `FK_a4kc877d1qdvhe6ickb5t5t8y` (`TaxonID`),
  CONSTRAINT `FK_1xl6pvmp5w185eq4b0aal9mft` FOREIGN KEY (`SeqReactionID`) REFERENCES `SeqReactions` (`SeqReactionID`),
  CONSTRAINT `FK_2pb4jtciyg4rdbffl5l5bmktd` FOREIGN KEY (`PrimerReverseID`) REFERENCES `PcrPrimers` (`PCRPrimerID`),
  CONSTRAINT `FK_3080at25w8nm4v0d9yweie2ms` FOREIGN KEY (`SampleID`) REFERENCES `Samples` (`SampleID`),
  CONSTRAINT `FK_4t7cg90s9ltmig4lkj5onx4qb` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_5ehbgji2j0gjaihyvdrk3yp6o` FOREIGN KEY (`MixedSpecimenID`) REFERENCES `MixedSpecimens` (`MixedSpecimenID`),
  CONSTRAINT `FK_6a987nbi5u3n7ak73yy9dntnq` FOREIGN KEY (`PcrReactionID`) REFERENCES `PcrReactions` (`PcrReactionID`),
  CONSTRAINT `FK_841om21hek51soq7fc05fgvij` FOREIGN KEY (`BiologicalCollectionID`) REFERENCES `BiologicalCollections` (`BiologicalCollectionID`),
  CONSTRAINT `FK_8k21fscowx43bsg9stcjm6lne` FOREIGN KEY (`SpecimenID`) REFERENCES `Specimens` (`SpecimenID`),
  CONSTRAINT `FK_8od61q4npqmrp9yi65jtj2ykt` FOREIGN KEY (`RegionID`) REFERENCES `Regions` (`TagID`),
  CONSTRAINT `FK_a4kc877d1qdvhe6ickb5t5t8y` FOREIGN KEY (`TaxonID`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_an50pyveilyolmvmt3dms960t` FOREIGN KEY (`PcrBatchID`) REFERENCES `PcrBatchs` (`PCRBatchID`),
  CONSTRAINT `FK_dvb2lxtiyhu9q1l9r9mdpnadw` FOREIGN KEY (`MidID`) REFERENCES `PcrPrimers` (`PCRPrimerID`),
  CONSTRAINT `FK_fe5snpi3d9mdpo5jh6vvbu5m7` FOREIGN KEY (`CollectionInfoID`) REFERENCES `CollectionInfos` (`CollectionInfoID`),
  CONSTRAINT `FK_lomh51bwssbvqxf99lccbl1o9` FOREIGN KEY (`ClusterSeqID`) REFERENCES `ClusterSeqs` (`ClusterSeqID`),
  CONSTRAINT `FK_m9ly95txnk442e90at8oe0qh3` FOREIGN KEY (`SeqBatchID`) REFERENCES `SeqBatchs` (`SeqBatchID`),
  CONSTRAINT `FK_ojv4mufjy28wjte762tthjlsa` FOREIGN KEY (`PrimerForwardID`) REFERENCES `PcrPrimers` (`PCRPrimerID`),
  CONSTRAINT `FK_qi2p2jj9tvuiyxgns6e7s7s7p` FOREIGN KEY (`ClusterConsID`) REFERENCES `ClusterCons` (`ClusterConsID`),
  CONSTRAINT `FK_qjhdmqlauh995txjxbyqlvt0p` FOREIGN KEY (`IdentificationID`) REFERENCES `Identifications` (`IdentificationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqSources`
--

LOCK TABLES `SeqSources` WRITE;
/*!40000 ALTER TABLE `SeqSources` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqSources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqSources_AUD`
--

DROP TABLE IF EXISTS `SeqSources_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqSources_AUD` (
  `SequenceID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `BiologicalCollectionID` int(11) DEFAULT NULL,
  `ClusterConsID` int(11) DEFAULT NULL,
  `ClusterSeqID` int(11) DEFAULT NULL,
  `CollectionInfoID` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `IdentificationID` int(11) DEFAULT NULL,
  `MidID` int(11) DEFAULT NULL,
  `MixedSpecimenID` int(11) DEFAULT NULL,
  `PcrBatchID` int(11) DEFAULT NULL,
  `PcrReactionID` int(11) DEFAULT NULL,
  `PrimerForwardID` int(11) DEFAULT NULL,
  `PrimerReverseID` int(11) DEFAULT NULL,
  `RegionID` int(11) DEFAULT NULL,
  `SampleID` int(11) DEFAULT NULL,
  `SeqBatchID` int(11) DEFAULT NULL,
  `SeqReactionID` int(11) DEFAULT NULL,
  `SpecimenID` int(11) DEFAULT NULL,
  `TaxonID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SequenceID`,`REV`),
  KEY `FK_ifp950llqpju3mpdy9gllrvjb` (`REV`),
  CONSTRAINT `FK_ifp950llqpju3mpdy9gllrvjb` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqSources_AUD`
--

LOCK TABLES `SeqSources_AUD` WRITE;
/*!40000 ALTER TABLE `SeqSources_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqSources_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqSubmissionConfigs`
--

DROP TABLE IF EXISTS `SeqSubmissionConfigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqSubmissionConfigs` (
  `SeqSubmissionConfigID` int(11) NOT NULL AUTO_INCREMENT,
  `BatchType` varchar(255) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `SpreadSheetTemplateFileName` varchar(100) DEFAULT NULL,
  `StartingRow` int(11) DEFAULT NULL,
  `SubmissionFacilityID` int(11) DEFAULT NULL,
  `SeqCodeColumn` varchar(50) DEFAULT NULL,
  `WWW` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SeqSubmissionConfigID`),
  UNIQUE KEY `UK_4vdjkm1n5topaxbj6fe1o5vs4` (`Name`,`SubmissionFacilityID`),
  KEY `FK_fu1nicmbjrsh47siaw44o5emt` (`SubmissionFacilityID`),
  CONSTRAINT `FK_fu1nicmbjrsh47siaw44o5emt` FOREIGN KEY (`SubmissionFacilityID`) REFERENCES `SubmissionFacilitys` (`SubmissionFacilityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqSubmissionConfigs`
--

LOCK TABLES `SeqSubmissionConfigs` WRITE;
/*!40000 ALTER TABLE `SeqSubmissionConfigs` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqSubmissionConfigs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqSubmissionConfigs_AUD`
--

DROP TABLE IF EXISTS `SeqSubmissionConfigs_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqSubmissionConfigs_AUD` (
  `SeqSubmissionConfigID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `BatchType` varchar(255) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `SpreadSheetTemplateFileName` varchar(100) DEFAULT NULL,
  `StartingRow` int(11) DEFAULT NULL,
  `SubmissionFacilityID` int(11) DEFAULT NULL,
  `SeqCodeColumn` varchar(50) DEFAULT NULL,
  `WWW` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SeqSubmissionConfigID`,`REV`),
  KEY `FK_fxs96q5cde8k7q3x19eodhpuv` (`REV`),
  CONSTRAINT `FK_fxs96q5cde8k7q3x19eodhpuv` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqSubmissionConfigs_AUD`
--

LOCK TABLES `SeqSubmissionConfigs_AUD` WRITE;
/*!40000 ALTER TABLE `SeqSubmissionConfigs_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqSubmissionConfigs_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqSubmissions`
--

DROP TABLE IF EXISTS `SeqSubmissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqSubmissions` (
  `SeqSubmissionID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `PBIContractNumber` varchar(15) DEFAULT NULL,
  `PBIDeliverData` varchar(50) DEFAULT NULL,
  `PBIInternalOrderNumber` varchar(15) DEFAULT NULL,
  `PBIRoomNumber` varchar(15) DEFAULT NULL,
  `PBISequencedBy` varchar(100) DEFAULT NULL,
  `PBISequencedDate` date DEFAULT NULL,
  `RequiredSubmissionBy` varchar(10) DEFAULT NULL,
  `ScientistAuthorized` varchar(100) DEFAULT NULL,
  `SubmittedBy` varchar(100) DEFAULT NULL,
  `SubmittingInstitute` varchar(50) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `SeqBatchID` int(11) DEFAULT NULL,
  `SeqSubmissionConfigID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SeqSubmissionID`),
  UNIQUE KEY `UK_6dqe9e661sij0cvomp30hjd66` (`Name`,`GroupID`),
  UNIQUE KEY `UK_ocii5r25l17vhxo09v7i8yev7` (`SeqBatchID`),
  KEY `FK_9wmtct7d3ouyoo3vjrhfa1nml` (`GroupID`),
  KEY `FK_7epky6tflweq2d2d3ly5w4ga9` (`SeqSubmissionConfigID`),
  CONSTRAINT `FK_7epky6tflweq2d2d3ly5w4ga9` FOREIGN KEY (`SeqSubmissionConfigID`) REFERENCES `SeqSubmissionConfigs` (`SeqSubmissionConfigID`),
  CONSTRAINT `FK_9wmtct7d3ouyoo3vjrhfa1nml` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_ocii5r25l17vhxo09v7i8yev7` FOREIGN KEY (`SeqBatchID`) REFERENCES `SeqBatchs` (`SeqBatchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqSubmissions`
--

LOCK TABLES `SeqSubmissions` WRITE;
/*!40000 ALTER TABLE `SeqSubmissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqSubmissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqSubmissions_AUD`
--

DROP TABLE IF EXISTS `SeqSubmissions_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqSubmissions_AUD` (
  `SeqSubmissionID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `PBIContractNumber` varchar(15) DEFAULT NULL,
  `PBIDeliverData` varchar(50) DEFAULT NULL,
  `PBIInternalOrderNumber` varchar(15) DEFAULT NULL,
  `PBIRoomNumber` varchar(15) DEFAULT NULL,
  `PBISequencedBy` varchar(100) DEFAULT NULL,
  `PBISequencedDate` date DEFAULT NULL,
  `RequiredSubmissionBy` varchar(10) DEFAULT NULL,
  `ScientistAuthorized` varchar(100) DEFAULT NULL,
  `SubmissionFacility` varchar(50) DEFAULT NULL,
  `SubmittedBy` varchar(100) DEFAULT NULL,
  `SubmittingInstitute` varchar(50) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `SeqBatchID` int(11) DEFAULT NULL,
  `SeqSubmissionConfigID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SeqSubmissionID`,`REV`),
  KEY `FK_datf6vhkjqkdew6ajt992er74` (`REV`),
  CONSTRAINT `FK_datf6vhkjqkdew6ajt992er74` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqSubmissions_AUD`
--

LOCK TABLES `SeqSubmissions_AUD` WRITE;
/*!40000 ALTER TABLE `SeqSubmissions_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `SeqSubmissions_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequenceData`
--

DROP TABLE IF EXISTS `SequenceData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SequenceData` (
  `SequenceID` int(11) NOT NULL AUTO_INCREMENT,
  `Quality` longtext,
  `Seq` longtext NOT NULL,
  PRIMARY KEY (`SequenceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequenceData`
--

LOCK TABLES `SequenceData` WRITE;
/*!40000 ALTER TABLE `SequenceData` DISABLE KEYS */;
/*!40000 ALTER TABLE `SequenceData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sequences`
--

DROP TABLE IF EXISTS `Sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sequences` (
  `SequenceID` int(11) NOT NULL,
  `Accession` varchar(10) DEFAULT NULL,
  `CreationDate` datetime(6) DEFAULT NULL,
  `Direction` smallint(6) DEFAULT NULL,
  `FileDir` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `GenBankAccession` varchar(25) DEFAULT NULL,
  `GenBankGI` varchar(25) DEFAULT NULL,
  `GenBankVersion` varchar(25) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Note` varchar(1024) DEFAULT NULL,
  `ReadNum` int(11) NOT NULL,
  `Result` varchar(50) DEFAULT NULL,
  `SeqMeth` varchar(50) DEFAULT NULL,
  `SeqQualityCheck` varchar(50) DEFAULT NULL,
  `SeqType` varchar(1) NOT NULL,
  `SubmittedToInsdc` bit(1) DEFAULT NULL,
  `SubmittedToInsdcDate` date DEFAULT NULL,
  `CloneID` int(11) DEFAULT NULL,
  `GoHitID` int(11) DEFAULT NULL,
  `MixedSpecimenID` int(11) DEFAULT NULL,
  `PcrReactionID` int(11) DEFAULT NULL,
  `SeqBatchID` int(11) DEFAULT NULL,
  `SeqMethodID` int(11) DEFAULT NULL,
  `SeqPrimerID` int(11) DEFAULT NULL,
  `VectorID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SequenceID`),
  UNIQUE KEY `UK_c7ieibmckjmihi4hha3u5kh3i` (`GenBankGI`),
  UNIQUE KEY `UK_s65rv8c2er0t50boyii51fpma` (`GenBankVersion`),
  KEY `sequences_name_idx` (`Name`),
  KEY `sequences_fileName_idx` (`FileName`),
  KEY `sequences_mixedSpecimen_result_idx` (`MixedSpecimenID`,`Result`),
  KEY `FK_3u8ticbp842dnauunqgwcwyqd` (`CloneID`),
  KEY `FK_i4c0p2tldq4js6l2lpyjr1eyn` (`GoHitID`),
  KEY `FK_hfcc8fl3ycrmkykbhk5e093da` (`PcrReactionID`),
  KEY `FK_752c8t4y20n7b76oe23bw7ynw` (`SeqBatchID`),
  KEY `FK_gkeyalwa6s2trxx01k4b8pbr9` (`SeqMethodID`),
  KEY `FK_plfcpl8v5sp8kkvt6pb0fvrha` (`SeqPrimerID`),
  KEY `FK_34xfk4n49v3rpj0tucmnbm02i` (`VectorID`),
  CONSTRAINT `FK_2urfmger9sr5kwyn20brwdhd9` FOREIGN KEY (`MixedSpecimenID`) REFERENCES `MixedSpecimens` (`MixedSpecimenID`),
  CONSTRAINT `FK_34xfk4n49v3rpj0tucmnbm02i` FOREIGN KEY (`VectorID`) REFERENCES `Vectors` (`VectorID`),
  CONSTRAINT `FK_3u8ticbp842dnauunqgwcwyqd` FOREIGN KEY (`CloneID`) REFERENCES `Clones` (`CloneID`),
  CONSTRAINT `FK_752c8t4y20n7b76oe23bw7ynw` FOREIGN KEY (`SeqBatchID`) REFERENCES `SeqBatchs` (`SeqBatchID`),
  CONSTRAINT `FK_gkeyalwa6s2trxx01k4b8pbr9` FOREIGN KEY (`SeqMethodID`) REFERENCES `SeqMethods` (`SeqMethodID`),
  CONSTRAINT `FK_hfcc8fl3ycrmkykbhk5e093da` FOREIGN KEY (`PcrReactionID`) REFERENCES `PcrReactions` (`PcrReactionID`),
  CONSTRAINT `FK_i4c0p2tldq4js6l2lpyjr1eyn` FOREIGN KEY (`GoHitID`) REFERENCES `GoHits` (`GoHitID`),
  CONSTRAINT `FK_plfcpl8v5sp8kkvt6pb0fvrha` FOREIGN KEY (`SeqPrimerID`) REFERENCES `PcrPrimers` (`PCRPrimerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sequences`
--

LOCK TABLES `Sequences` WRITE;
/*!40000 ALTER TABLE `Sequences` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sequences_AUD`
--

DROP TABLE IF EXISTS `Sequences_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sequences_AUD` (
  `SequenceID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Accession` varchar(10) DEFAULT NULL,
  `CreationDate` datetime(6) DEFAULT NULL,
  `Direction` smallint(6) DEFAULT NULL,
  `FileDir` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `GenBankAccession` varchar(25) DEFAULT NULL,
  `GenBankGI` varchar(25) DEFAULT NULL,
  `GenBankVersion` varchar(25) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Note` varchar(1024) DEFAULT NULL,
  `ReadNum` int(11) DEFAULT NULL,
  `Result` varchar(50) DEFAULT NULL,
  `SeqMeth` varchar(50) DEFAULT NULL,
  `SeqQualityCheck` varchar(50) DEFAULT NULL,
  `SeqType` varchar(1) DEFAULT NULL,
  `SubmittedToInsdc` bit(1) DEFAULT NULL,
  `SubmittedToInsdcDate` date DEFAULT NULL,
  `CloneID` int(11) DEFAULT NULL,
  `GoHitID` int(11) DEFAULT NULL,
  `MixedSpecimenID` int(11) DEFAULT NULL,
  `PcrReactionID` int(11) DEFAULT NULL,
  `SeqBatchID` int(11) DEFAULT NULL,
  `SeqMethodID` int(11) DEFAULT NULL,
  `SeqPrimerID` int(11) DEFAULT NULL,
  `VectorID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SequenceID`,`REV`),
  KEY `FK_m5g45w4ca6g0p3ldqjaol1s7h` (`REV`),
  CONSTRAINT `FK_m5g45w4ca6g0p3ldqjaol1s7h` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sequences_AUD`
--

LOCK TABLES `Sequences_AUD` WRITE;
/*!40000 ALTER TABLE `Sequences_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sequences_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SpecimenAttach`
--

DROP TABLE IF EXISTS `SpecimenAttach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SpecimenAttach` (
  `SpecimenAttachId` int(11) NOT NULL AUTO_INCREMENT,
  `DateEntered` date NOT NULL,
  `FileExtension` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) NOT NULL,
  `FileTitle` varchar(255) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `SpecimenId` int(11) NOT NULL,
  PRIMARY KEY (`SpecimenAttachId`),
  KEY `FK_euetuttl64lssjvt1j7rihl72` (`SpecimenId`),
  CONSTRAINT `FK_euetuttl64lssjvt1j7rihl72` FOREIGN KEY (`SpecimenId`) REFERENCES `Specimens` (`SpecimenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SpecimenAttach`
--

LOCK TABLES `SpecimenAttach` WRITE;
/*!40000 ALTER TABLE `SpecimenAttach` DISABLE KEYS */;
/*!40000 ALTER TABLE `SpecimenAttach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SpecimenBatchJobs`
--

DROP TABLE IF EXISTS `SpecimenBatchJobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SpecimenBatchJobs` (
  `SpecimenBatchJobId` int(11) NOT NULL AUTO_INCREMENT,
  `BiologicalCollectionID` int(11) NOT NULL,
  `CurrentState` varchar(100) DEFAULT NULL,
  `CurrentStep` int(11) DEFAULT NULL,
  `Finished` bit(1) NOT NULL,
  `MaxSteps` int(11) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `RangeMax` int(11) NOT NULL,
  `RangeMin` int(11) NOT NULL,
  `TimeFinished` datetime DEFAULT NULL,
  `TimeStarted` datetime DEFAULT NULL,
  PRIMARY KEY (`SpecimenBatchJobId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SpecimenBatchJobs`
--

LOCK TABLES `SpecimenBatchJobs` WRITE;
/*!40000 ALTER TABLE `SpecimenBatchJobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `SpecimenBatchJobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SpecimenReplicates`
--

DROP TABLE IF EXISTS `SpecimenReplicates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SpecimenReplicates` (
  `SpecimenReplicateID` int(11) NOT NULL AUTO_INCREMENT,
  `Contents` varchar(100) DEFAULT NULL,
  `DateDestroyed` date DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `RevivalDate` date DEFAULT NULL,
  `SampSize` varchar(50) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `StorageMedium` varchar(100) DEFAULT NULL,
  `Version` varchar(50) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `ProtocolID` int(11) DEFAULT NULL,
  `SpecimenID` int(11) NOT NULL,
  PRIMARY KEY (`SpecimenReplicateID`),
  UNIQUE KEY `UK_o3e4b4vehe7by1roa0k42w0ft` (`SpecimenID`,`Version`),
  KEY `FK_pm69olc1lwa2gvrw78vduhusl` (`ParentID`),
  KEY `FK_epcn4bq7utejkjuyofy2rxvcq` (`ProtocolID`),
  CONSTRAINT `FK_3aes8cn2mdyh6s51clncxgwst` FOREIGN KEY (`SpecimenID`) REFERENCES `Specimens` (`SpecimenID`),
  CONSTRAINT `FK_epcn4bq7utejkjuyofy2rxvcq` FOREIGN KEY (`ProtocolID`) REFERENCES `Protocols` (`ProtocolID`),
  CONSTRAINT `FK_pm69olc1lwa2gvrw78vduhusl` FOREIGN KEY (`ParentID`) REFERENCES `SpecimenReplicates` (`SpecimenReplicateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SpecimenReplicates`
--

LOCK TABLES `SpecimenReplicates` WRITE;
/*!40000 ALTER TABLE `SpecimenReplicates` DISABLE KEYS */;
/*!40000 ALTER TABLE `SpecimenReplicates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SpecimenReplicates_AUD`
--

DROP TABLE IF EXISTS `SpecimenReplicates_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SpecimenReplicates_AUD` (
  `SpecimenReplicateID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Contents` varchar(100) DEFAULT NULL,
  `DateDestroyed` date DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `RevivalDate` date DEFAULT NULL,
  `SampSize` varchar(50) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `StorageMedium` varchar(100) DEFAULT NULL,
  `Version` varchar(50) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `ProtocolID` int(11) DEFAULT NULL,
  `SpecimenID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SpecimenReplicateID`,`REV`),
  KEY `FK_pank91epn0f86n0n5wk1x410v` (`REV`),
  CONSTRAINT `FK_pank91epn0f86n0n5wk1x410v` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SpecimenReplicates_AUD`
--

LOCK TABLES `SpecimenReplicates_AUD` WRITE;
/*!40000 ALTER TABLE `SpecimenReplicates_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `SpecimenReplicates_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Specimens`
--

DROP TABLE IF EXISTS `Specimens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Specimens` (
  `SpecimenID` int(11) NOT NULL AUTO_INCREMENT,
  `PPCLevel` varchar(20) DEFAULT NULL,
  `AnimalRGLevel` varchar(6) DEFAULT NULL,
  `AnnotatedBy` varchar(200) DEFAULT NULL,
  `AssociatedSequenceTargetsSameRegion` bit(1) DEFAULT NULL,
  `AssociatedSequences` varchar(250) DEFAULT NULL,
  `CatalogNumber` varchar(100) DEFAULT NULL,
  `CellType` varchar(50) DEFAULT NULL,
  `CollectionCode` varchar(100) DEFAULT NULL,
  `DateReceived` date DEFAULT NULL,
  `Description` longtext,
  `ExtraInfo` varchar(50) DEFAULT NULL,
  `FieldIdentifier` varchar(100) DEFAULT NULL,
  `HumanRGLevel` varchar(6) DEFAULT NULL,
  `InstitutionCode` varchar(200) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `LifeStage` varchar(20) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `Number` int(11) NOT NULL,
  `NumberString` varchar(11) NOT NULL,
  `OtherIDs` varchar(200) DEFAULT NULL,
  `Owner` varchar(50) DEFAULT NULL,
  `ProcessId` varchar(50) DEFAULT NULL,
  `ProjectName` varchar(50) DEFAULT NULL,
  `Restricted` bit(1) DEFAULT NULL,
  `RestrictedNotes` varchar(1024) DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `SubId` varchar(10) NOT NULL DEFAULT '',
  `Tissue` varchar(50) DEFAULT NULL,
  `Voucher` varchar(50) DEFAULT NULL,
  `BiologicalCollectionID` int(11) NOT NULL,
  `CollectionInfoID` int(11) DEFAULT NULL,
  `FungalInfoID` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `HostID` int(11) DEFAULT NULL,
  `IdentificationID` int(11) DEFAULT NULL,
  `ImportPermitID` int(11) DEFAULT NULL,
  `MixedSpecimenID` int(11) DEFAULT NULL,
  `MixsSpecificationID` int(11) DEFAULT NULL,
  `ProviderChainID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SpecimenID`),
  UNIQUE KEY `UK_gv40siuct8dlu5rb1y6wlaro1` (`Number`,`BiologicalCollectionID`,`SubId`,`GroupID`),
  UNIQUE KEY `UK_chm46hvjsj7r9jk2t9js4gf5o` (`MixsSpecificationID`),
  KEY `FK_g4pmqjoloyf5fhafvv73hjcn1` (`BiologicalCollectionID`),
  KEY `FK_q0hkqo8y5053o592ghgx06rb9` (`CollectionInfoID`),
  KEY `FK_7bjcosxo8x3vxchhcya79skrj` (`FungalInfoID`),
  KEY `FK_g4ipod035t585hvin5lhry1em` (`GroupID`),
  KEY `FK_pqbwa1ysc7so8uh8y3bruvfkj` (`HostID`),
  KEY `FK_qfj9ewnq35gytcvg9iqxvri7j` (`IdentificationID`),
  KEY `FK_a5jdmsuglwns7mfoklg41dko7` (`ImportPermitID`),
  KEY `FK_9gvxtgp71ikmbcxtth821ovhk` (`MixedSpecimenID`),
  KEY `FK_joe4105wh55sxa2b2olue5am5` (`ProviderChainID`),
  CONSTRAINT `FK_7bjcosxo8x3vxchhcya79skrj` FOREIGN KEY (`FungalInfoID`) REFERENCES `FungalInfos` (`FungalInfoID`),
  CONSTRAINT `FK_9gvxtgp71ikmbcxtth821ovhk` FOREIGN KEY (`MixedSpecimenID`) REFERENCES `MixedSpecimens` (`MixedSpecimenID`),
  CONSTRAINT `FK_a5jdmsuglwns7mfoklg41dko7` FOREIGN KEY (`ImportPermitID`) REFERENCES `ImportPermits` (`ImportPermitID`),
  CONSTRAINT `FK_chm46hvjsj7r9jk2t9js4gf5o` FOREIGN KEY (`MixsSpecificationID`) REFERENCES `MixsSpecification` (`MixsSpecificationID`),
  CONSTRAINT `FK_g4ipod035t585hvin5lhry1em` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`),
  CONSTRAINT `FK_g4pmqjoloyf5fhafvv73hjcn1` FOREIGN KEY (`BiologicalCollectionID`) REFERENCES `BiologicalCollections` (`BiologicalCollectionID`),
  CONSTRAINT `FK_joe4105wh55sxa2b2olue5am5` FOREIGN KEY (`ProviderChainID`) REFERENCES `ProviderChains` (`ProviderChainID`),
  CONSTRAINT `FK_pqbwa1ysc7so8uh8y3bruvfkj` FOREIGN KEY (`HostID`) REFERENCES `Hosts` (`HostID`),
  CONSTRAINT `FK_qfj9ewnq35gytcvg9iqxvri7j` FOREIGN KEY (`IdentificationID`) REFERENCES `Identifications` (`IdentificationID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Specimens`
--

LOCK TABLES `Specimens` WRITE;
/*!40000 ALTER TABLE `Specimens` DISABLE KEYS */;
INSERT INTO `Specimens` VALUES (1,NULL,NULL,'Person 1',NULL,NULL,'12345','mold cell type','DAOM','2007-01-05','Old Mold','extra info ','67890',NULL,'AAFC','2013-03-19 00:00:00.000000','Mature','mold notes',1,'1','aOtherId','Carleton','Process Id 1','Project Name 1',NULL,NULL,'Asexual','1','mold tiess','a mold voucher',1,1,1,1,1,1,1,1,1,1),(2,NULL,NULL,'Person 2',NULL,NULL,'12345','cell type','','2008-02-15','This species is semi-rare','extra info 2','67890',NULL,'','2013-03-19 00:00:00.000000','','these are some notes',2,'2','bOtherId','','Process Id 2','Project Name 2',NULL,NULL,'','2','this is a tissue','another voucher',1,2,2,3,2,2,2,2,2,2),(3,NULL,NULL,'Person 3',NULL,NULL,'12345','cell type','','2009-01-01','This species is very rare!','extra info ','67890',NULL,'','2013-03-19 00:00:00.000000','','these are some notes',3,'3','cOtherId','','Process Id 3','Project Name 3',NULL,NULL,'','3','this is a 3rd tissue','a voucher',1,3,3,1,3,3,3,3,3,3),(4,NULL,NULL,'Person 4',NULL,NULL,'12345','cell type','','2006-01-05','This species is very rare!','extra info ','67890',NULL,'','2013-03-19 00:00:00.000000','','these are some notes',4,'4','dOtherId','','Process Id 4','Project Name 4',NULL,NULL,'','4','this is a tissue','a voucher',1,4,4,1,4,4,4,4,4,4),(5,NULL,NULL,'Person 5',NULL,NULL,'12345','04cell type','','2005-12-04','04This species is very rare!','04extra info ','67890',NULL,'','2013-03-19 00:00:00.000000','','04These are some notes',5,'5','eOtherId','','Process Id 5','Project Name 5',NULL,NULL,'','5','04This is a tissue','04a voucher',1,5,5,1,5,5,5,5,5,5),(12,NULL,NULL,'Person 12',NULL,NULL,'12345','12cell type','','2005-12-12','12This species is very rare!','12extra info ','67890',NULL,'','2013-03-19 00:00:00.000000','','12These are some notes',12,'12','12aOtherId','','Process Id 12','Project Name 12',NULL,NULL,'','12','12This is a tissue','12a voucher',1,12,12,1,12,12,12,12,6,12),(13,NULL,NULL,'Person 13',NULL,NULL,'12345','13cell type','','2005-12-12','13This species is very rare!','13extra info ','67890',NULL,'','2013-03-19 00:00:00.000000','','13These are some notes',13,'13','13aOtherId','','Process Id 12','Project Name 13',NULL,NULL,'','13','13This is a tissue','13a voucher',4,13,13,2,13,13,13,13,13,13),(14,NULL,NULL,'Person 14',NULL,NULL,'12345','14cell type','','2005-12-12','14This species is very rare!','14extra info ','67890',NULL,'','2013-03-19 00:00:00.000000','','14These are some notes',14,'14','14aOtherId','','Process Id 12','Project Name 14',NULL,NULL,'','14','14This is a tissue','14a voucher',4,14,14,2,14,14,14,14,14,14),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.024000',NULL,NULL,2610,'2610','NRM-CGI-002610|BI000030',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,15,15,1,15,101,NULL,NULL,15,NULL),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.243000',NULL,NULL,2609,'2609','NRM-CGI-002609|BI000030',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,16,16,1,16,102,NULL,NULL,16,NULL),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.456000',NULL,NULL,2611,'2611','NRM-CGI-002611|BI000030',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,17,17,1,17,103,NULL,NULL,17,NULL),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.682000',NULL,NULL,2612,'2612','NRM-CGI-002612|BI000030',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,18,18,1,18,104,NULL,NULL,18,NULL),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.857000',NULL,NULL,2023,'2023','NRM-CGI-002023|BI000046',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,19,19,1,19,105,NULL,NULL,19,NULL),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.994000',NULL,NULL,2024,'2024','NRM-CGI-002024|BI000046',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,20,20,1,20,106,NULL,NULL,20,NULL),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.122000',NULL,NULL,4725,'4725','NRM-CGI-004725|BI040061',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,21,21,1,21,107,NULL,NULL,21,NULL),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.247000',NULL,NULL,4732,'4732','NRM-CGI-004732|BI040061',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,22,22,1,22,108,NULL,NULL,22,NULL),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.378000',NULL,NULL,4723,'4723','NRM-CGI-004723|BI040061',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,23,23,1,23,109,NULL,NULL,23,NULL),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.507000',NULL,NULL,4728,'4728','NRM-CGI-004728|BI040061',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,24,24,1,24,110,NULL,NULL,24,NULL),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.627000',NULL,NULL,4726,'4726','NRM-CGI-004726|BI040061',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,25,25,1,25,111,NULL,NULL,25,NULL),(26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.744000',NULL,NULL,4730,'4730','NRM-CGI-004730|BI040061',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,26,26,1,26,112,NULL,NULL,26,NULL),(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.965000',NULL,NULL,4733,'4733','NRM-CGI-004733|BI040061',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,27,27,1,27,113,NULL,NULL,27,NULL),(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.101000',NULL,NULL,4727,'4727','NRM-CGI-004727|BI040061',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,28,28,1,28,114,NULL,NULL,28,NULL),(29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.230000',NULL,NULL,4731,'4731','NRM-CGI-004731|BI040061',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,29,29,1,29,115,NULL,NULL,29,NULL),(30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.461000',NULL,NULL,4724,'4724','NRM-CGI-004724|BI040061',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,30,30,1,30,116,NULL,NULL,30,NULL),(31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.604000',NULL,NULL,4729,'4729','NRM-CGI-004729|BI040061',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,31,31,1,31,117,NULL,NULL,31,NULL),(32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.711000',NULL,NULL,3586,'3586','NRM-CGI-003586|BI040515',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,32,32,1,32,118,NULL,NULL,32,NULL),(33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.817000',NULL,NULL,3585,'3585','NRM-CGI-003585|BI040515',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,33,33,1,33,119,NULL,NULL,33,NULL),(34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.925000',NULL,NULL,2455,'2455','NRM-CGI-002455|BI040826',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,34,34,1,34,120,NULL,NULL,34,NULL),(35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.052000',NULL,NULL,2453,'2453','NRM-CGI-002453|BI040826',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,35,35,1,35,121,NULL,NULL,35,NULL),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.245000',NULL,NULL,2452,'2452','NRM-CGI-002452|BI040826',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,36,36,1,36,122,NULL,NULL,36,NULL),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.365000',NULL,NULL,2454,'2454','NRM-CGI-002454|BI040826',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,37,37,1,37,123,NULL,NULL,37,NULL),(38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.481000',NULL,NULL,4141,'4141','NRM-CGI-004141|BI040898',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,38,38,1,38,124,NULL,NULL,38,NULL),(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.606000',NULL,NULL,4140,'4140','NRM-CGI-004140|BI040898',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,39,39,1,39,125,NULL,NULL,39,NULL),(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.739000',NULL,NULL,1998,'1998','NRM-CGI-001998|BI040949',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,40,40,1,40,126,NULL,NULL,40,NULL),(41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.863000',NULL,NULL,6064,'6064','NRM-CGI-006064|BI040961',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,41,41,1,41,127,NULL,NULL,41,NULL),(42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.985000',NULL,NULL,6065,'6065','NRM-CGI-006065|BI040961',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,42,42,1,42,128,NULL,NULL,42,NULL),(43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.112000',NULL,NULL,6069,'6069','NRM-CGI-006069|BI040961',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,43,43,1,43,129,NULL,NULL,43,NULL),(44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.232000',NULL,NULL,6070,'6070','NRM-CGI-006070|BI040961',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,44,44,1,44,130,NULL,NULL,44,NULL),(45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.360000',NULL,NULL,6067,'6067','NRM-CGI-006067|BI040961',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,45,45,1,45,131,NULL,NULL,45,NULL),(46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.490000',NULL,NULL,6063,'6063','NRM-CGI-006063|BI040961',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,46,46,1,46,132,NULL,NULL,46,NULL),(47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.624000',NULL,NULL,6061,'6061','NRM-CGI-006061|BI040961',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,47,47,1,47,133,NULL,NULL,47,NULL),(48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.766000',NULL,NULL,6062,'6062','NRM-CGI-006062|BI040961',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,48,48,1,48,134,NULL,NULL,48,NULL),(49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.908000',NULL,NULL,6066,'6066','NRM-CGI-006066|BI040961',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,49,49,1,49,135,NULL,NULL,49,NULL),(50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.047000',NULL,NULL,6068,'6068','NRM-CGI-006068|BI040961',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,50,50,1,50,136,NULL,NULL,50,NULL),(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.177000',NULL,NULL,5691,'5691','NRM-CGI-005691|BI040965',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,51,51,1,51,137,NULL,NULL,51,NULL),(52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.305000',NULL,NULL,5693,'5693','NRM-CGI-005693|BI040965',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,52,52,1,52,138,NULL,NULL,52,NULL),(53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.432000',NULL,NULL,5692,'5692','NRM-CGI-005692|BI040965',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,53,53,1,53,139,NULL,NULL,53,NULL),(54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.578000',NULL,NULL,5695,'5695','NRM-CGI-005695|BI040965',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,54,54,1,54,140,NULL,NULL,54,NULL),(55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.717000',NULL,NULL,5694,'5694','NRM-CGI-005694|BI040965',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,55,55,1,55,141,NULL,NULL,55,NULL),(56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.863000',NULL,NULL,4503,'4503','NRM-CGI-004503|BI040969',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,56,56,1,56,142,NULL,NULL,56,NULL),(57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.004000',NULL,NULL,4502,'4502','NRM-CGI-004502|BI040969',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,57,57,1,57,143,NULL,NULL,57,NULL),(58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.139000',NULL,NULL,2988,'2988','NRM-CGI-002988|BI040975',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,58,58,1,58,144,NULL,NULL,58,NULL),(59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.266000',NULL,NULL,2989,'2989','NRM-CGI-002989|BI040975',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,59,59,1,59,145,NULL,NULL,59,NULL),(60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.390000',NULL,NULL,2990,'2990','NRM-CGI-002990|BI040975',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,60,60,1,60,146,NULL,NULL,60,NULL),(61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.517000',NULL,NULL,2991,'2991','NRM-CGI-002991|BI040975',NULL,NULL,NULL,NULL,NULL,'Hane','',NULL,NULL,7,61,61,1,61,147,NULL,NULL,61,NULL),(62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.647000',NULL,NULL,3264,'3264','NRM-CGI-003264|BI040977',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,62,62,1,62,148,NULL,NULL,62,NULL),(63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.776000',NULL,NULL,3268,'3268','NRM-CGI-003268|BI040977',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,63,63,1,63,149,NULL,NULL,63,NULL),(64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.912000',NULL,NULL,3267,'3267','NRM-CGI-003267|BI040977',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,64,64,1,64,150,NULL,NULL,64,NULL),(65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.054000',NULL,NULL,3265,'3265','NRM-CGI-003265|BI040977',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,65,65,1,65,151,NULL,NULL,65,NULL),(66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.193000',NULL,NULL,3266,'3266','NRM-CGI-003266|BI040977',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,66,66,1,66,152,NULL,NULL,66,NULL),(67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.321000',NULL,NULL,2543,'2543','NRM-CGI-002543|BI040992',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,67,67,1,67,153,NULL,NULL,67,NULL),(68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.451000',NULL,NULL,2544,'2544','NRM-CGI-002544|BI040992',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,68,68,1,68,154,NULL,NULL,68,NULL),(69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.579000',NULL,NULL,2541,'2541','NRM-CGI-002541|BI040992',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,69,69,1,69,155,NULL,NULL,69,NULL),(70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.751000',NULL,NULL,2542,'2542','NRM-CGI-002542|BI040992',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,70,70,1,70,156,NULL,NULL,70,NULL),(71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.882000',NULL,NULL,3433,'3433','NRM-CGI-003433|BI040993',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,71,71,1,71,157,NULL,NULL,71,NULL),(72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.016000',NULL,NULL,3434,'3434','NRM-CGI-003434|BI040993',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,72,72,1,72,158,NULL,NULL,72,NULL),(73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.205000',NULL,NULL,3431,'3431','NRM-CGI-003431|BI040993',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,73,73,1,73,159,NULL,NULL,73,NULL),(74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.340000',NULL,NULL,3432,'3432','NRM-CGI-003432|BI040993',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,74,74,1,74,160,NULL,NULL,74,NULL),(75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.474000',NULL,NULL,4662,'4662','NRM-CGI-004662|BI040996',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,75,75,1,75,161,NULL,NULL,75,NULL),(76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.607000',NULL,NULL,4660,'4660','NRM-CGI-004660|BI040996',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,76,76,1,76,162,NULL,NULL,76,NULL),(77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.742000',NULL,NULL,4663,'4663','NRM-CGI-004663|BI040996',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,77,77,1,77,163,NULL,NULL,77,NULL),(78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.875000',NULL,NULL,4661,'4661','NRM-CGI-004661|BI040996',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,78,78,1,78,164,NULL,NULL,78,NULL),(79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.011000',NULL,NULL,4664,'4664','NRM-CGI-004664|BI040996',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,79,79,1,79,165,NULL,NULL,79,NULL),(80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.148000',NULL,NULL,2701,'2701','NRM-CGI-002701|BI040999',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,80,80,1,80,166,NULL,NULL,80,NULL),(81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.277000',NULL,NULL,2699,'2699','NRM-CGI-002699|BI040999',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,81,81,1,81,167,NULL,NULL,81,NULL),(82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.409000',NULL,NULL,2700,'2700','NRM-CGI-002700|BI040999',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,82,82,1,82,168,NULL,NULL,82,NULL),(83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.538000',NULL,NULL,2697,'2697','NRM-CGI-002697|BI040999',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,83,83,1,83,169,NULL,NULL,83,NULL),(84,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.668000',NULL,NULL,2698,'2698','NRM-CGI-002698|BI040999',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,84,84,1,84,170,NULL,NULL,84,NULL),(85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.799000',NULL,NULL,1995,'1995','NRM-CGI-001995|BI041000',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,85,85,1,85,171,NULL,NULL,85,NULL),(86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.934000',NULL,NULL,3711,'3711','NRM-CGI-003711|BI041002',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,86,86,1,86,172,NULL,NULL,86,NULL),(87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.070000',NULL,NULL,3708,'3708','NRM-CGI-003708|BI041002',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,87,87,1,87,173,NULL,NULL,87,NULL),(88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.208000',NULL,NULL,3709,'3709','NRM-CGI-003709|BI041002',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,88,88,1,88,174,NULL,NULL,88,NULL),(89,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.345000',NULL,NULL,3710,'3710','NRM-CGI-003710|BI041002',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,89,89,1,89,175,NULL,NULL,89,NULL),(90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.483000',NULL,NULL,5528,'5528','NRM-CGI-005528|BI041012',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,90,90,1,90,176,NULL,NULL,90,NULL),(91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.631000',NULL,NULL,5526,'5526','NRM-CGI-005526|BI041012',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,91,91,1,91,177,NULL,NULL,91,NULL),(92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.778000',NULL,NULL,5530,'5530','NRM-CGI-005530|BI041012',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,92,92,1,92,178,NULL,NULL,92,NULL),(93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.935000',NULL,NULL,5527,'5527','NRM-CGI-005527|BI041012',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,93,93,1,93,179,NULL,NULL,93,NULL),(94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.079000',NULL,NULL,5529,'5529','NRM-CGI-005529|BI041012',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,94,94,1,94,180,NULL,NULL,94,NULL),(95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.236000',NULL,NULL,2006,'2006','NRM-CGI-002006|BI041023',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,95,95,1,95,181,NULL,NULL,95,NULL),(96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.377000',NULL,NULL,2010,'2010','NRM-CGI-002010|BI041025',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,96,96,1,96,182,NULL,NULL,96,NULL),(97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.513000',NULL,NULL,2001,'2001','NRM-CGI-002001|BI041035',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,97,97,1,97,183,NULL,NULL,97,NULL),(98,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.647000',NULL,NULL,1993,'1993','NRM-CGI-001993|BI041036',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,98,98,1,98,184,NULL,NULL,98,NULL),(99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.827000',NULL,NULL,2743,'2743','NRM-CGI-002743|BI041043',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,99,99,1,99,185,NULL,NULL,99,NULL),(100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.962000',NULL,NULL,2741,'2741','NRM-CGI-002741|BI041043',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,100,100,1,100,186,NULL,NULL,100,NULL),(101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.096000',NULL,NULL,2746,'2746','NRM-CGI-002746|BI041043',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,101,101,1,101,187,NULL,NULL,101,NULL),(102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.229000',NULL,NULL,2747,'2747','NRM-CGI-002747|BI041043',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,102,102,1,102,188,NULL,NULL,102,NULL),(103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.371000',NULL,NULL,2750,'2750','NRM-CGI-002750|BI041043',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,103,103,1,103,189,NULL,NULL,103,NULL),(104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.507000',NULL,NULL,2740,'2740','NRM-CGI-002740|BI041043',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,104,104,1,104,190,NULL,NULL,104,NULL),(105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.643000',NULL,NULL,2744,'2744','NRM-CGI-002744|BI041043',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,105,105,1,105,191,NULL,NULL,105,NULL),(106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.782000',NULL,NULL,2748,'2748','NRM-CGI-002748|BI041043',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,106,106,1,106,192,NULL,NULL,106,NULL),(107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.921000',NULL,NULL,2749,'2749','NRM-CGI-002749|BI041043',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,107,107,1,107,193,NULL,NULL,107,NULL),(108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:06.062000',NULL,NULL,2745,'2745','NRM-CGI-002745|BI041043',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,108,108,1,108,194,NULL,NULL,108,NULL),(109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:06.203000',NULL,NULL,2742,'2742','NRM-CGI-002742|BI041043',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,109,109,1,109,195,NULL,NULL,109,NULL),(110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:06.345000',NULL,NULL,5248,'5248','NRM-CGI-005248|BI041047',NULL,NULL,NULL,NULL,NULL,'Hona','',NULL,NULL,7,110,110,1,110,196,NULL,NULL,110,NULL);
/*!40000 ALTER TABLE `Specimens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Specimens_AUD`
--

DROP TABLE IF EXISTS `Specimens_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Specimens_AUD` (
  `SpecimenID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `PPCLevel` varchar(20) DEFAULT NULL,
  `AnimalRGLevel` varchar(6) DEFAULT NULL,
  `AnnotatedBy` varchar(200) DEFAULT NULL,
  `AssociatedSequenceTargetsSameRegion` bit(1) DEFAULT NULL,
  `AssociatedSequences` varchar(250) DEFAULT NULL,
  `CatalogNumber` varchar(100) DEFAULT NULL,
  `CellType` varchar(50) DEFAULT NULL,
  `CollectionCode` varchar(100) DEFAULT NULL,
  `DateReceived` date DEFAULT NULL,
  `Description` longtext,
  `ExtraInfo` varchar(50) DEFAULT NULL,
  `FieldIdentifier` varchar(100) DEFAULT NULL,
  `HumanRGLevel` varchar(6) DEFAULT NULL,
  `InstitutionCode` varchar(200) DEFAULT NULL,
  `LifeStage` varchar(20) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `NumberString` varchar(11) DEFAULT NULL,
  `OtherIDs` varchar(200) DEFAULT NULL,
  `Owner` varchar(50) DEFAULT NULL,
  `ProcessId` varchar(50) DEFAULT NULL,
  `ProjectName` varchar(50) DEFAULT NULL,
  `Restricted` bit(1) DEFAULT NULL,
  `RestrictedNotes` varchar(1024) DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `SubId` varchar(10) DEFAULT '',
  `Tissue` varchar(50) DEFAULT NULL,
  `Voucher` varchar(50) DEFAULT NULL,
  `BiologicalCollectionID` int(11) DEFAULT NULL,
  `CollectionInfoID` int(11) DEFAULT NULL,
  `FungalInfoID` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `HostID` int(11) DEFAULT NULL,
  `IdentificationID` int(11) DEFAULT NULL,
  `ImportPermitID` int(11) DEFAULT NULL,
  `MixedSpecimenID` int(11) DEFAULT NULL,
  `MixsSpecificationID` int(11) DEFAULT NULL,
  `ProviderChainID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SpecimenID`,`REV`),
  KEY `FK_lv3j7p9s03uyan9fcm2mcjl36` (`REV`),
  CONSTRAINT `FK_lv3j7p9s03uyan9fcm2mcjl36` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Specimens_AUD`
--

LOCK TABLES `Specimens_AUD` WRITE;
/*!40000 ALTER TABLE `Specimens_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Specimens_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Spots`
--

DROP TABLE IF EXISTS `Spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Spots` (
  `SpotID` int(11) NOT NULL AUTO_INCREMENT,
  `Background` double NOT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `NormVol` double NOT NULL,
  `Present` bit(1) NOT NULL,
  `Quality` varchar(5) DEFAULT NULL,
  `SpotColumn` int(11) NOT NULL,
  `SpotRow` varchar(1) NOT NULL,
  `VolBkgnd` double NOT NULL,
  `Volume` double NOT NULL,
  `CloneID` int(11) DEFAULT NULL,
  `HybridizationID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SpotID`),
  KEY `FK_pmnlt8vntd8p1c8gprjyib8as` (`CloneID`),
  KEY `FK_cuflk23ug0204f8gddp5ihwym` (`HybridizationID`),
  CONSTRAINT `FK_cuflk23ug0204f8gddp5ihwym` FOREIGN KEY (`HybridizationID`) REFERENCES `Hybridizations` (`HybridizationID`),
  CONSTRAINT `FK_pmnlt8vntd8p1c8gprjyib8as` FOREIGN KEY (`CloneID`) REFERENCES `Clones` (`CloneID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spots`
--

LOCK TABLES `Spots` WRITE;
/*!40000 ALTER TABLE `Spots` DISABLE KEYS */;
/*!40000 ALTER TABLE `Spots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SpreadSheetColumns`
--

DROP TABLE IF EXISTS `SpreadSheetColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SpreadSheetColumns` (
  `SpreadSheetColumnID` int(11) NOT NULL AUTO_INCREMENT,
  `ColumnIndex` varchar(50) NOT NULL,
  `SpreadSheetTemplateID` int(11) DEFAULT NULL,
  `SeqSubmissionConfigID` int(11) DEFAULT NULL,
  `Field` longtext NOT NULL,
  PRIMARY KEY (`SpreadSheetColumnID`),
  KEY `FK_4hn0og6pmo69k02rt88nfidff` (`SpreadSheetTemplateID`),
  KEY `FK_s7391xm6gpdaivq4k87wt2g8h` (`SeqSubmissionConfigID`),
  CONSTRAINT `FK_4hn0og6pmo69k02rt88nfidff` FOREIGN KEY (`SpreadSheetTemplateID`) REFERENCES `SpreadSheetTemplates` (`SpreadSheetTemplateID`),
  CONSTRAINT `FK_s7391xm6gpdaivq4k87wt2g8h` FOREIGN KEY (`SeqSubmissionConfigID`) REFERENCES `SeqSubmissionConfigs` (`SeqSubmissionConfigID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SpreadSheetColumns`
--

LOCK TABLES `SpreadSheetColumns` WRITE;
/*!40000 ALTER TABLE `SpreadSheetColumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `SpreadSheetColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SpreadSheetTemplates`
--

DROP TABLE IF EXISTS `SpreadSheetTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SpreadSheetTemplates` (
  `SpreadSheetTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `Importer` varchar(32) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `AccountProfileID` int(11) NOT NULL,
  PRIMARY KEY (`SpreadSheetTemplateID`),
  KEY `FK_bwa6s2770ef5adnwm1k214yh7` (`AccountProfileID`),
  CONSTRAINT `FK_bwa6s2770ef5adnwm1k214yh7` FOREIGN KEY (`AccountProfileID`) REFERENCES `AccountProfiles` (`AccountProfileID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SpreadSheetTemplates`
--

LOCK TABLES `SpreadSheetTemplates` WRITE;
/*!40000 ALTER TABLE `SpreadSheetTemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `SpreadSheetTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Storages`
--

DROP TABLE IF EXISTS `Storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Storages` (
  `StorageID` int(11) NOT NULL AUTO_INCREMENT,
  `CompartmentType` varchar(50) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `NumberOfShelves` int(11) DEFAULT NULL,
  `RoomNumber` varchar(50) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`StorageID`),
  UNIQUE KEY `UK_rfxhmrf2nokgc4svgxj8jm2fa` (`Name`),
  KEY `FK_jma7et3xaob4668lptl2wswup` (`GroupID`),
  CONSTRAINT `FK_jma7et3xaob4668lptl2wswup` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Storages`
--

LOCK TABLES `Storages` WRITE;
/*!40000 ALTER TABLE `Storages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubmissionFacilitys`
--

DROP TABLE IF EXISTS `SubmissionFacilitys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubmissionFacilitys` (
  `SubmissionFacilityID` int(11) NOT NULL AUTO_INCREMENT,
  `Contact` varchar(1024) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `ShippingDetails` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`SubmissionFacilityID`),
  UNIQUE KEY `UK_junyw2tx3grj5atqekn689wp3` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubmissionFacilitys`
--

LOCK TABLES `SubmissionFacilitys` WRITE;
/*!40000 ALTER TABLE `SubmissionFacilitys` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubmissionFacilitys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubmissionFacilitys_AUD`
--

DROP TABLE IF EXISTS `SubmissionFacilitys_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubmissionFacilitys_AUD` (
  `SubmissionFacilityID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Contact` varchar(1024) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `ShippingDetails` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`SubmissionFacilityID`,`REV`),
  KEY `FK_goum9a5y0kseu9dl94pdk6io9` (`REV`),
  CONSTRAINT `FK_goum9a5y0kseu9dl94pdk6io9` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubmissionFacilitys_AUD`
--

LOCK TABLES `SubmissionFacilitys_AUD` WRITE;
/*!40000 ALTER TABLE `SubmissionFacilitys_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubmissionFacilitys_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TagFragment`
--

DROP TABLE IF EXISTS `TagFragment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TagFragment` (
  `TagID` int(11) NOT NULL,
  `FragmentID` int(11) NOT NULL,
  PRIMARY KEY (`TagID`,`FragmentID`),
  KEY `FK_swtwrw5un870fjrefj2xtbnp4` (`FragmentID`),
  CONSTRAINT `FK_643autsd7naoi3ym5n1cmyqyy` FOREIGN KEY (`TagID`) REFERENCES `Tags` (`TagID`),
  CONSTRAINT `FK_swtwrw5un870fjrefj2xtbnp4` FOREIGN KEY (`FragmentID`) REFERENCES `Fragments` (`FragmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TagFragment`
--

LOCK TABLES `TagFragment` WRITE;
/*!40000 ALTER TABLE `TagFragment` DISABLE KEYS */;
/*!40000 ALTER TABLE `TagFragment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TagMixedSpecimen`
--

DROP TABLE IF EXISTS `TagMixedSpecimen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TagMixedSpecimen` (
  `TagID` int(11) NOT NULL,
  `MixedSpecimenID` int(11) NOT NULL,
  PRIMARY KEY (`TagID`,`MixedSpecimenID`),
  KEY `FK_2qk33ir4t157gly8xhlolo5n0` (`MixedSpecimenID`),
  CONSTRAINT `FK_2qk33ir4t157gly8xhlolo5n0` FOREIGN KEY (`MixedSpecimenID`) REFERENCES `MixedSpecimens` (`MixedSpecimenID`),
  CONSTRAINT `FK_occi02fr0coj9twv04gnbmi94` FOREIGN KEY (`TagID`) REFERENCES `Tags` (`TagID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TagMixedSpecimen`
--

LOCK TABLES `TagMixedSpecimen` WRITE;
/*!40000 ALTER TABLE `TagMixedSpecimen` DISABLE KEYS */;
/*!40000 ALTER TABLE `TagMixedSpecimen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TagSample`
--

DROP TABLE IF EXISTS `TagSample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TagSample` (
  `TagID` int(11) NOT NULL,
  `SampleID` int(11) NOT NULL,
  PRIMARY KEY (`TagID`,`SampleID`),
  KEY `FK_mbq67ya7vpqircwp8at9286hk` (`SampleID`),
  CONSTRAINT `FK_1sjim4vyu289iagm2oe7me121` FOREIGN KEY (`TagID`) REFERENCES `Tags` (`TagID`),
  CONSTRAINT `FK_mbq67ya7vpqircwp8at9286hk` FOREIGN KEY (`SampleID`) REFERENCES `Samples` (`SampleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TagSample`
--

LOCK TABLES `TagSample` WRITE;
/*!40000 ALTER TABLE `TagSample` DISABLE KEYS */;
/*!40000 ALTER TABLE `TagSample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TagSequence`
--

DROP TABLE IF EXISTS `TagSequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TagSequence` (
  `TagID` int(11) NOT NULL,
  `SequenceID` int(11) NOT NULL,
  PRIMARY KEY (`TagID`,`SequenceID`),
  KEY `FK_29af0jdceosu00gp08484a2f1` (`SequenceID`),
  CONSTRAINT `FK_29af0jdceosu00gp08484a2f1` FOREIGN KEY (`SequenceID`) REFERENCES `Sequences` (`SequenceID`),
  CONSTRAINT `FK_dfy3l4v77lgwyqgf54diobg8t` FOREIGN KEY (`TagID`) REFERENCES `Tags` (`TagID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TagSequence`
--

LOCK TABLES `TagSequence` WRITE;
/*!40000 ALTER TABLE `TagSequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `TagSequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TagSpecimen`
--

DROP TABLE IF EXISTS `TagSpecimen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TagSpecimen` (
  `TagID` int(11) NOT NULL,
  `SpecimenID` int(11) NOT NULL,
  PRIMARY KEY (`TagID`,`SpecimenID`),
  KEY `FK_j44wkjwhacarb897v73r23pk5` (`SpecimenID`),
  CONSTRAINT `FK_dfesxqm81ixf0nlhludtrdsqs` FOREIGN KEY (`TagID`) REFERENCES `Tags` (`TagID`),
  CONSTRAINT `FK_j44wkjwhacarb897v73r23pk5` FOREIGN KEY (`SpecimenID`) REFERENCES `Specimens` (`SpecimenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TagSpecimen`
--

LOCK TABLES `TagSpecimen` WRITE;
/*!40000 ALTER TABLE `TagSpecimen` DISABLE KEYS */;
/*!40000 ALTER TABLE `TagSpecimen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tags`
--

DROP TABLE IF EXISTS `Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tags` (
  `TagID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext,
  `DurationFrom` date DEFAULT NULL,
  `DurationUntil` date DEFAULT NULL,
  `FundingSource` varchar(30) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  `rgt` int(11) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `TagType` varchar(255) NOT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TagID`),
  UNIQUE KEY `UK_ku1p9itjyg2s98whsw8sxvn9x` (`Name`),
  KEY `FK_ofb5a9d7frsahcnjgl6yx5ari` (`GroupID`),
  CONSTRAINT `FK_ofb5a9d7frsahcnjgl6yx5ari` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tags`
--

LOCK TABLES `Tags` WRITE;
/*!40000 ALTER TABLE `Tags` DISABLE KEYS */;
INSERT INTO `Tags` VALUES (1,'System root node that every project inherits from. Should not be displayed in the UI.',NULL,NULL,NULL,'2013-03-19 00:00:00.000000',1,'root',16,NULL,'PROJECT',NULL,1);
/*!40000 ALTER TABLE `Tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tags_AUD`
--

DROP TABLE IF EXISTS `Tags_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tags_AUD` (
  `TagID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Description` longtext,
  `DurationFrom` date DEFAULT NULL,
  `DurationUntil` date DEFAULT NULL,
  `FundingSource` varchar(30) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `TagType` varchar(255) DEFAULT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TagID`,`REV`),
  KEY `FK_omamux45fgky7lj8sn8bjw9op` (`REV`),
  CONSTRAINT `FK_omamux45fgky7lj8sn8bjw9op` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tags_AUD`
--

LOCK TABLES `Tags_AUD` WRITE;
/*!40000 ALTER TABLE `Tags_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tags_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaskArguments`
--

DROP TABLE IF EXISTS `TaskArguments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaskArguments` (
  `TaskID` int(11) NOT NULL,
  `Argument` varchar(255) DEFAULT NULL,
  KEY `FK_podnyp77yrdamkchlpeslqla9` (`TaskID`),
  CONSTRAINT `FK_podnyp77yrdamkchlpeslqla9` FOREIGN KEY (`TaskID`) REFERENCES `Tasks` (`TaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaskArguments`
--

LOCK TABLES `TaskArguments` WRITE;
/*!40000 ALTER TABLE `TaskArguments` DISABLE KEYS */;
/*!40000 ALTER TABLE `TaskArguments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tasks`
--

DROP TABLE IF EXISTS `Tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tasks` (
  `TaskID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) NOT NULL,
  `AccountID` int(11) NOT NULL,
  `TimeInterval` int(11) DEFAULT NULL,
  `TimeUnit` varchar(255) DEFAULT NULL,
  `FileSystemWatcherEntryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaskID`),
  KEY `FK_2rtb4sk2nb8xh2jxmsky5xdga` (`AccountID`),
  KEY `FK_lpenr1wqnlgis1koqqqw22kom` (`FileSystemWatcherEntryID`),
  CONSTRAINT `FK_2rtb4sk2nb8xh2jxmsky5xdga` FOREIGN KEY (`AccountID`) REFERENCES `Accounts` (`AccountID`),
  CONSTRAINT `FK_lpenr1wqnlgis1koqqqw22kom` FOREIGN KEY (`FileSystemWatcherEntryID`) REFERENCES `FileSystemWatcherEntry` (`FileSystemWatcherEntryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tasks`
--

LOCK TABLES `Tasks` WRITE;
/*!40000 ALTER TABLE `Tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Taxa`
--

DROP TABLE IF EXISTS `Taxa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Taxa` (
  `TaxonID` int(11) NOT NULL AUTO_INCREMENT,
  `Author` varchar(100) DEFAULT NULL,
  `AuthorYear` int(11) DEFAULT NULL,
  `GenderEnding` varchar(10) DEFAULT NULL,
  `Identity` varchar(200) DEFAULT NULL,
  `Keywords` varchar(512) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `LastModifiedBy` varchar(512) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `OrigName` varchar(100) DEFAULT NULL,
  `SubAuthor` varchar(100) DEFAULT NULL,
  `SubAuthorYear` int(11) DEFAULT NULL,
  `OrigComb` int(11) DEFAULT NULL,
  `Parent` int(11) DEFAULT NULL,
  `Preferred` int(11) DEFAULT NULL,
  `RClass` int(11) DEFAULT NULL,
  `RFamily` int(11) DEFAULT NULL,
  `RForma` int(11) DEFAULT NULL,
  `RFormaSpecialis` int(11) DEFAULT NULL,
  `RGenus` int(11) DEFAULT NULL,
  `RInfraclass` int(11) DEFAULT NULL,
  `RInfraorder` int(11) DEFAULT NULL,
  `RKingdom` int(11) DEFAULT NULL,
  `RNoRank` int(11) DEFAULT NULL,
  `ROrder` int(11) DEFAULT NULL,
  `RParvorder` int(11) DEFAULT NULL,
  `RPhylum` int(11) DEFAULT NULL,
  `RSection` int(11) DEFAULT NULL,
  `RSeries` int(11) DEFAULT NULL,
  `RSpecies` int(11) DEFAULT NULL,
  `RSpeciesGroup` int(11) DEFAULT NULL,
  `RSpeciesSubgroup` int(11) DEFAULT NULL,
  `RSubclass` int(11) DEFAULT NULL,
  `RSubfamily` int(11) DEFAULT NULL,
  `RSubgenus` int(11) DEFAULT NULL,
  `RSubkingdom` int(11) DEFAULT NULL,
  `RSuborder` int(11) DEFAULT NULL,
  `RSubphylum` int(11) DEFAULT NULL,
  `RSubspecies` int(11) DEFAULT NULL,
  `RSubtribe` int(11) DEFAULT NULL,
  `RSuperclass` int(11) DEFAULT NULL,
  `RSuperfamily` int(11) DEFAULT NULL,
  `RSuperkingdom` int(11) DEFAULT NULL,
  `RSuperorder` int(11) DEFAULT NULL,
  `RSuperphylum` int(11) DEFAULT NULL,
  `RTribe` int(11) DEFAULT NULL,
  `RVariety` int(11) DEFAULT NULL,
  `TaxonomicRank` int(11) DEFAULT NULL,
  `SameAs` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaxonID`),
  KEY `FK_8xjjo8revddjgtew69fi2d4qo` (`OrigComb`),
  KEY `FK_bh11kemtx4pu5snt7ohpp001` (`Parent`),
  KEY `FK_sq1n8okqvy44oofqqvkhxqf13` (`Preferred`),
  KEY `FK_a9gk29p8sof5bnti457xfkh87` (`RClass`),
  KEY `FK_8g4x7w1q441tcqmjqjrepp9df` (`RFamily`),
  KEY `FK_6mhas0jkiqqwt9wqgd2tyuhwf` (`RForma`),
  KEY `FK_nvdn4ircr41s61ctno51viekd` (`RFormaSpecialis`),
  KEY `FK_le59c65oq61w3jtrk9b9tfo14` (`RGenus`),
  KEY `FK_qblg3frh0iswo7u3w6faghpr` (`RInfraclass`),
  KEY `FK_cacot4sqn736h54rx371yu6w6` (`RInfraorder`),
  KEY `FK_abmjpyg0a3fjx803jsvuohy8j` (`RKingdom`),
  KEY `FK_e7wdawkkl8giwgn4uwrqv8897` (`RNoRank`),
  KEY `FK_15ccibevnv1sc0ntlmbn7oxdt` (`ROrder`),
  KEY `FK_4dgb4gh2p3fmlalbj4qrolvkm` (`RParvorder`),
  KEY `FK_osm6gva5bo26w7obj7sl0k5f3` (`RPhylum`),
  KEY `FK_7x2v74i9c0j03hn520v736u82` (`RSection`),
  KEY `FK_5w10nvvxa5nfdr6vghqx8wic` (`RSeries`),
  KEY `FK_5k68p5d2j1dn1i1kp0cbi9m0f` (`RSpecies`),
  KEY `FK_mb8o3irwgug7doc3a2hfuos99` (`RSpeciesGroup`),
  KEY `FK_7yaw7x60h21dyp9dsvco0tu6c` (`RSpeciesSubgroup`),
  KEY `FK_hx82cmlm9a33gc2jnm1lhmc0o` (`RSubclass`),
  KEY `FK_9vmjpfkow8tsrpvkj1tls7l6c` (`RSubfamily`),
  KEY `FK_8vifg5efr3p08day12ari3ywb` (`RSubgenus`),
  KEY `FK_ih7ql24i0hufcjjnh22rv0xfb` (`RSubkingdom`),
  KEY `FK_lfjgcky9edg98resn1vadih2h` (`RSuborder`),
  KEY `FK_amncx0v5qk0t1rc2hdc80c4np` (`RSubphylum`),
  KEY `FK_fjyb34dplfbvwvhsaym7x1cxi` (`RSubspecies`),
  KEY `FK_ejljb80rovoht26aa8iqka6gf` (`RSubtribe`),
  KEY `FK_gu9ytkxs4x70fx0w53bw4lscx` (`RSuperclass`),
  KEY `FK_eyjixa0qguc5yxufrwscomh4x` (`RSuperfamily`),
  KEY `FK_c4fget0ufn0xy30sfpve8h4ty` (`RSuperkingdom`),
  KEY `FK_maxvacfxyxysc7lmrlf1npkto` (`RSuperorder`),
  KEY `FK_b4hyi1s7df54l89yxk8txbxd3` (`RSuperphylum`),
  KEY `FK_9vnuhsjbibxrndfjavof2oek3` (`RTribe`),
  KEY `FK_d3h9i3xcoa7d9norwjrft38ob` (`RVariety`),
  KEY `FK_gs4a2pja8lggk6611pag4f04h` (`TaxonomicRank`),
  KEY `FK_bw8gdw7kno52jatkm23yr7urg` (`SameAs`),
  CONSTRAINT `FK_15ccibevnv1sc0ntlmbn7oxdt` FOREIGN KEY (`ROrder`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_4dgb4gh2p3fmlalbj4qrolvkm` FOREIGN KEY (`RParvorder`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_5k68p5d2j1dn1i1kp0cbi9m0f` FOREIGN KEY (`RSpecies`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_5w10nvvxa5nfdr6vghqx8wic` FOREIGN KEY (`RSeries`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_6mhas0jkiqqwt9wqgd2tyuhwf` FOREIGN KEY (`RForma`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_7x2v74i9c0j03hn520v736u82` FOREIGN KEY (`RSection`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_7yaw7x60h21dyp9dsvco0tu6c` FOREIGN KEY (`RSpeciesSubgroup`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_8g4x7w1q441tcqmjqjrepp9df` FOREIGN KEY (`RFamily`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_8vifg5efr3p08day12ari3ywb` FOREIGN KEY (`RSubgenus`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_8xjjo8revddjgtew69fi2d4qo` FOREIGN KEY (`OrigComb`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_9vmjpfkow8tsrpvkj1tls7l6c` FOREIGN KEY (`RSubfamily`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_9vnuhsjbibxrndfjavof2oek3` FOREIGN KEY (`RTribe`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_a9gk29p8sof5bnti457xfkh87` FOREIGN KEY (`RClass`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_abmjpyg0a3fjx803jsvuohy8j` FOREIGN KEY (`RKingdom`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_amncx0v5qk0t1rc2hdc80c4np` FOREIGN KEY (`RSubphylum`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_b4hyi1s7df54l89yxk8txbxd3` FOREIGN KEY (`RSuperphylum`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_bh11kemtx4pu5snt7ohpp001` FOREIGN KEY (`Parent`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_bw8gdw7kno52jatkm23yr7urg` FOREIGN KEY (`SameAs`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_c4fget0ufn0xy30sfpve8h4ty` FOREIGN KEY (`RSuperkingdom`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_cacot4sqn736h54rx371yu6w6` FOREIGN KEY (`RInfraorder`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_d3h9i3xcoa7d9norwjrft38ob` FOREIGN KEY (`RVariety`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_e7wdawkkl8giwgn4uwrqv8897` FOREIGN KEY (`RNoRank`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_ejljb80rovoht26aa8iqka6gf` FOREIGN KEY (`RSubtribe`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_eyjixa0qguc5yxufrwscomh4x` FOREIGN KEY (`RSuperfamily`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_fjyb34dplfbvwvhsaym7x1cxi` FOREIGN KEY (`RSubspecies`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_gs4a2pja8lggk6611pag4f04h` FOREIGN KEY (`TaxonomicRank`) REFERENCES `TaxonRank` (`TaxonRankID`),
  CONSTRAINT `FK_gu9ytkxs4x70fx0w53bw4lscx` FOREIGN KEY (`RSuperclass`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_hx82cmlm9a33gc2jnm1lhmc0o` FOREIGN KEY (`RSubclass`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_ih7ql24i0hufcjjnh22rv0xfb` FOREIGN KEY (`RSubkingdom`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_le59c65oq61w3jtrk9b9tfo14` FOREIGN KEY (`RGenus`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_lfjgcky9edg98resn1vadih2h` FOREIGN KEY (`RSuborder`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_maxvacfxyxysc7lmrlf1npkto` FOREIGN KEY (`RSuperorder`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_mb8o3irwgug7doc3a2hfuos99` FOREIGN KEY (`RSpeciesGroup`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_nvdn4ircr41s61ctno51viekd` FOREIGN KEY (`RFormaSpecialis`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_osm6gva5bo26w7obj7sl0k5f3` FOREIGN KEY (`RPhylum`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_qblg3frh0iswo7u3w6faghpr` FOREIGN KEY (`RInfraclass`) REFERENCES `Taxa` (`TaxonID`),
  CONSTRAINT `FK_sq1n8okqvy44oofqqvkhxqf13` FOREIGN KEY (`Preferred`) REFERENCES `Taxa` (`TaxonID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Taxa`
--

LOCK TABLES `Taxa` WRITE;
/*!40000 ALTER TABLE `Taxa` DISABLE KEYS */;
INSERT INTO `Taxa` VALUES (1,'author',0,NULL,'All author 0[superkingdom]',NULL,'2013-03-19 00:00:00.000000','Bob','All','All',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `Taxa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Taxa_AUD`
--

DROP TABLE IF EXISTS `Taxa_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Taxa_AUD` (
  `TaxonID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Author` varchar(100) DEFAULT NULL,
  `AuthorYear` int(11) DEFAULT NULL,
  `GenderEnding` varchar(10) DEFAULT NULL,
  `Identity` varchar(200) DEFAULT NULL,
  `Keywords` varchar(512) DEFAULT NULL,
  `LastModifiedBy` varchar(512) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `OrigName` varchar(100) DEFAULT NULL,
  `SubAuthor` varchar(100) DEFAULT NULL,
  `SubAuthorYear` int(11) DEFAULT NULL,
  `OrigComb` int(11) DEFAULT NULL,
  `Parent` int(11) DEFAULT NULL,
  `Preferred` int(11) DEFAULT NULL,
  `RClass` int(11) DEFAULT NULL,
  `RFamily` int(11) DEFAULT NULL,
  `RForma` int(11) DEFAULT NULL,
  `RFormaSpecialis` int(11) DEFAULT NULL,
  `RGenus` int(11) DEFAULT NULL,
  `RInfraclass` int(11) DEFAULT NULL,
  `RInfraorder` int(11) DEFAULT NULL,
  `RKingdom` int(11) DEFAULT NULL,
  `RNoRank` int(11) DEFAULT NULL,
  `ROrder` int(11) DEFAULT NULL,
  `RParvorder` int(11) DEFAULT NULL,
  `RPhylum` int(11) DEFAULT NULL,
  `RSection` int(11) DEFAULT NULL,
  `RSeries` int(11) DEFAULT NULL,
  `RSpecies` int(11) DEFAULT NULL,
  `RSpeciesGroup` int(11) DEFAULT NULL,
  `RSpeciesSubgroup` int(11) DEFAULT NULL,
  `RSubclass` int(11) DEFAULT NULL,
  `RSubfamily` int(11) DEFAULT NULL,
  `RSubgenus` int(11) DEFAULT NULL,
  `RSubkingdom` int(11) DEFAULT NULL,
  `RSuborder` int(11) DEFAULT NULL,
  `RSubphylum` int(11) DEFAULT NULL,
  `RSubspecies` int(11) DEFAULT NULL,
  `RSubtribe` int(11) DEFAULT NULL,
  `RSuperclass` int(11) DEFAULT NULL,
  `RSuperfamily` int(11) DEFAULT NULL,
  `RSuperkingdom` int(11) DEFAULT NULL,
  `RSuperorder` int(11) DEFAULT NULL,
  `RSuperphylum` int(11) DEFAULT NULL,
  `RTribe` int(11) DEFAULT NULL,
  `RVariety` int(11) DEFAULT NULL,
  `TaxonomicRank` int(11) DEFAULT NULL,
  `SameAs` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaxonID`,`REV`),
  KEY `FK_1f2xpfvvbo9of6eauolhvqp7u` (`REV`),
  CONSTRAINT `FK_1f2xpfvvbo9of6eauolhvqp7u` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Taxa_AUD`
--

LOCK TABLES `Taxa_AUD` WRITE;
/*!40000 ALTER TABLE `Taxa_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Taxa_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaxonInfo`
--

DROP TABLE IF EXISTS `TaxonInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaxonInfo` (
  `TaxonInfoID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(500) DEFAULT NULL,
  `ContentType` varchar(100) DEFAULT NULL,
  `Info` varchar(500) DEFAULT NULL,
  `InfoType` varchar(100) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `lastModifiedBy` varchar(255) DEFAULT NULL,
  `Page` varchar(100) DEFAULT NULL,
  `Published` bit(1) DEFAULT NULL,
  `Field` int(11) DEFAULT NULL,
  `ReferenceID` int(11) DEFAULT NULL,
  `TaxonId` int(11) NOT NULL,
  PRIMARY KEY (`TaxonInfoID`),
  KEY `FK_3vj6jcwsuwtkcm2xfppshnjdf` (`Field`),
  KEY `FK_68fxul2h3cddufu0vpwj2ig36` (`ReferenceID`),
  KEY `FK_fsq05c8gi6u8h98gfpfb10k2j` (`TaxonId`),
  CONSTRAINT `FK_3vj6jcwsuwtkcm2xfppshnjdf` FOREIGN KEY (`Field`) REFERENCES `Lexicon` (`LexiconID`),
  CONSTRAINT `FK_68fxul2h3cddufu0vpwj2ig36` FOREIGN KEY (`ReferenceID`) REFERENCES `Refs` (`ReferenceID`),
  CONSTRAINT `FK_fsq05c8gi6u8h98gfpfb10k2j` FOREIGN KEY (`TaxonId`) REFERENCES `Taxa` (`TaxonID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaxonInfo`
--

LOCK TABLES `TaxonInfo` WRITE;
/*!40000 ALTER TABLE `TaxonInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `TaxonInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaxonLink`
--

DROP TABLE IF EXISTS `TaxonLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaxonLink` (
  `TaxonLinkID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `Source` varchar(20) DEFAULT NULL,
  `SourceId` varchar(20) NOT NULL,
  `SourceLink` varchar(500) DEFAULT NULL,
  `TaxonID` int(11) NOT NULL,
  PRIMARY KEY (`TaxonLinkID`),
  KEY `FK_4ctc19khf6aaty1sxd3ao6xch` (`TaxonID`),
  CONSTRAINT `FK_4ctc19khf6aaty1sxd3ao6xch` FOREIGN KEY (`TaxonID`) REFERENCES `Taxa` (`TaxonID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaxonLink`
--

LOCK TABLES `TaxonLink` WRITE;
/*!40000 ALTER TABLE `TaxonLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `TaxonLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaxonRank`
--

DROP TABLE IF EXISTS `TaxonRank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaxonRank` (
  `TaxonRankID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(60) DEFAULT NULL,
  `Note` varchar(512) DEFAULT NULL,
  `RankLevel` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaxonRankID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaxonRank`
--

LOCK TABLES `TaxonRank` WRITE;
/*!40000 ALTER TABLE `TaxonRank` DISABLE KEYS */;
INSERT INTO `TaxonRank` VALUES (1,'2013-03-19 00:00:00.000000','Superkingdom',NULL,10),(2,'2013-03-19 00:00:00.000000','Kingdom',NULL,20),(3,'2013-03-19 00:00:00.000000','Subkingdom',NULL,30),(4,'2013-03-19 00:00:00.000000','Superphylum',NULL,35),(5,'2013-03-19 00:00:00.000000','Phylum',NULL,40),(6,'2013-03-19 00:00:00.000000','Subphylum',NULL,45),(7,'2013-03-19 00:00:00.000000','Superclass',NULL,50),(8,'2013-03-19 00:00:00.000000','Class',NULL,60),(9,'2013-03-19 00:00:00.000000','Subclass',NULL,70),(10,'2013-03-19 00:00:00.000000','Infraclass',NULL,75),(11,'2013-03-19 00:00:00.000000','Superorder',NULL,77),(12,'2013-03-19 00:00:00.000000','Order',NULL,80),(13,'2013-03-19 00:00:00.000000','Suborder',NULL,85),(14,'2013-03-19 00:00:00.000000','Infraorder',NULL,90),(15,'2013-03-19 00:00:00.000000','Parvorder',NULL,91),(16,'2013-03-19 00:00:00.000000','Superfamily',NULL,95),(17,'2013-03-19 00:00:00.000000','Family',NULL,100),(18,'2013-03-19 00:00:00.000000','Subfamily',NULL,105),(19,'2013-03-19 00:00:00.000000','Tribe',NULL,120),(20,'2013-03-19 00:00:00.000000','Subtribe',NULL,125),(21,'2013-03-19 00:00:00.000000','Genus',NULL,140),(22,'2013-03-19 00:00:00.000000','Subgenus',NULL,145),(23,'2013-03-19 00:00:00.000000','Species',NULL,150),(24,'2013-03-19 00:00:00.000000','Subspecies',NULL,152),(25,'2013-03-19 00:00:00.000000','SpeciesGroup',NULL,155),(26,'2013-03-19 00:00:00.000000','SpeciesSubgroup',NULL,157),(27,'2013-03-19 00:00:00.000000','Varietas',NULL,160),(28,'2013-03-19 00:00:00.000000','Forma',NULL,170),(29,'2013-03-19 00:00:00.000000','NoRank',NULL,1);
/*!40000 ALTER TABLE `TaxonRank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaxonRank_AUD`
--

DROP TABLE IF EXISTS `TaxonRank_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaxonRank_AUD` (
  `TaxonRankID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Name` varchar(60) DEFAULT NULL,
  `Note` varchar(512) DEFAULT NULL,
  `RankLevel` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaxonRankID`,`REV`),
  KEY `FK_dr0ralul51gdqvut0cmn0aaa6` (`REV`),
  CONSTRAINT `FK_dr0ralul51gdqvut0cmn0aaa6` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaxonRank_AUD`
--

LOCK TABLES `TaxonRank_AUD` WRITE;
/*!40000 ALTER TABLE `TaxonRank_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `TaxonRank_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Taxonomys`
--

DROP TABLE IF EXISTS `Taxonomys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Taxonomys` (
  `TaxonomyID` int(11) NOT NULL AUTO_INCREMENT,
  `Authors` varchar(200) DEFAULT NULL,
  `CommonName` varchar(512) DEFAULT NULL,
  `Division` varchar(50) DEFAULT NULL,
  `Family` varchar(50) DEFAULT NULL,
  `Genus` varchar(50) DEFAULT NULL,
  `Kingdom` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `Phylum` varchar(50) DEFAULT NULL,
  `Species` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Strain` varchar(50) DEFAULT NULL,
  `Subgenera` varchar(200) DEFAULT NULL,
  `Superfamily` varchar(50) DEFAULT NULL,
  `Synonym` varchar(50) DEFAULT NULL,
  `TaxanomicClass` varchar(50) DEFAULT NULL,
  `TaxanomicGroup` varchar(50) DEFAULT NULL,
  `TaxanomicOrder` varchar(50) DEFAULT NULL,
  `TypeSpecimen` varchar(50) DEFAULT NULL,
  `Variety` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TaxonomyID`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Taxonomys`
--

LOCK TABLES `Taxonomys` WRITE;
/*!40000 ALTER TABLE `Taxonomys` DISABLE KEYS */;
INSERT INTO `Taxonomys` VALUES (1,'aAuthor',NULL,'aDivision','aFamily','aGenus','aKingdom','2013-03-19 00:00:00.000000','aNotes','aPhylum','aSpecie','','aStrain','aSubgenera','aSuperFamily','aSynonym','aClass','aGroup','aOrder','aType','aVariety'),(2,'bAuthor',NULL,'bDivision','bFamily','bGenus','bKingdom','2013-03-19 00:00:00.000000','bNotes','bPhylum','bSpecie','','bStrain','bSubgenera','bSuperFamily','bSynonym','bClass','bGroup','bOrder','bType','bVariety'),(3,'3bAuthor',NULL,'3bDivision','3bFamily','3bGenus','3bKingdom','2013-03-19 00:00:00.000000','3bNotes','3bPhylum','3bSpecie','','3bStrain','3bSubgenera','3bSuperFamily','3bSynonym','3bClass','3bGroup','3bOrder','3bType','3bVariety'),(4,'4bAuthor',NULL,'4bDivision','4bFamily','4bGenus','4bKingdom','2013-03-19 00:00:00.000000','4bNotes','4bPhylum','4bSpecie','','4bStrain','4bSubgenera','4bSuperFamily','4bSynonym','4bClass','4bGroup','4bOrder','4bType','4bVariety'),(5,'10bAuthor',NULL,'10bDivision','10bFamily','10bGenus','10bKingdom','2013-03-19 00:00:00.000000','10bNotes','10bPhylum','10bSpecie','','10bStrain','10bSubgenera','10bSuperFamily','10bSynonym','10bClass','10bGroup','10bOrder','10bType','10bVariety'),(6,'20bAuthor',NULL,'20bDivision','20bFamily','20bGenus','20bKingdom','2013-03-19 00:00:00.000000','20bNotes','20bPhylum','20bSpecie','','20bStrain','20bSubgenera','20bSuperFamily','20bSynonym','20bClass','20bGroup','20bOrder','20bType','20bVariety'),(7,'30bAuthor',NULL,'30bDivision','30bFamily','30bGenus','30bKingdom','2013-03-19 00:00:00.000000','30bNotes','30bPhylum','30bSpecie','','30bStrain','30bSubgenera','30bSuperFamily','30bSynonym','30bClass','30bGroup','30bOrder','30bType','30bVariety'),(8,'40bAuthor',NULL,'40bDivision','40bFamily','40bGenus','40bKingdom','2013-03-19 00:00:00.000000','40bNotes','40bPhylum','40bSpecie','','40bStrain','40bSubgenera','40bSuperFamily','40bSynonym','40bClass','40bGroup','40bOrder','40bType','40bVariety'),(12,'12bAuthor',NULL,'12bDivision','12bFamily','12bGenus','12bKingdom','2013-03-19 00:00:00.000000','12bNotes','12bPhylum','12bSpecie','','12bStrain','12bSubgenera','12bSuperFamily','12bSynonym','12bClass','12bGroup','12bOrder','12bType','12bVariety'),(13,'13bAuthor',NULL,'13bDivision','13bFamily','13bGenus','13bKingdom','2013-03-19 00:00:00.000000','13bNotes','13bPhylum','13bSpecie','','13bStrain','13bSubgenera','13bSuperFamily','13bSynonym','13bClass','13bGroup','13bOrder','13bType','13bVariety'),(14,'14bAuthor',NULL,'14bDivision','14bFamily','14bGenus','14bKingdom','2013-03-19 00:00:00.000000','14bNotes','14bPhylum','14bSpecie','','14bStrain','14bSubgenera','14bSuperFamily','14bSynonym','14bClass','14bGroup','14bOrder','14bType','14bVariety'),(20,'20bAuthor',NULL,'20bDivision','20bFamily','20Genus','20Kingdom','2013-03-19 00:00:00.000000','20bNotes','20Phylum','20Species','','20bStrain','20bSubgenera','20bSuperFamily','20bSynonym','20bClass','20bGroup','20bOrder','20bType','20bVariety'),(21,'21bAuthor',NULL,'21bDivision','21bFamily','21Genus','21Kingdom','2013-03-19 00:00:00.000000','21bNotes','21Phylum','21Species','','21bStrain','21bSubgenera','21bSuperFamily','21bSynonym','21bClass','21bGroup','21bOrder','21bType','21bVariety'),(31,'31bAuthor',NULL,'31bDivision','31bFamily','31Genus','31Kingdom','2013-03-19 00:00:00.000000','31bNotes','31Phylum','31Species','','31bStrain','31bSubgenera','31bSuperFamily','31bSynonym','31bClass','31bGroup','31bOrder','31bType','31bVariety'),(32,'32bAuthor',NULL,'32bDivision','32bFamily','32Genus','32Kingdom','2013-03-19 00:00:00.000000','32bNotes','32Phylum','32Species','','32bStrain','32bSubgenera','32bSuperFamily','32bSynonym','32bClass','32bGroup','32bOrder','32bType','32bVariety'),(33,'33bAuthor',NULL,'33bDivision','33bFamily','33Genus','33Kingdom','2013-03-19 00:00:00.000000','33bNotes','33Phylum','33Species','','33bStrain','33bSubgenera','33bSuperFamily','33bSynonym','33bClass','33bGroup','33bOrder','33bType','33bVariety'),(34,'34bAuthor',NULL,'34bDivision','34bFamily','34Genus','34Kingdom','2013-03-19 00:00:00.000000','34bNotes','34Phylum','34Species','','34bStrain','34bSubgenera','34bSuperFamily','34bSynonym','34bClass','34bGroup','34bOrder','34bType','34bVariety'),(35,'35bAuthor',NULL,'35bDivision','35bFamily','35Genus','35Kingdom','2013-03-19 00:00:00.000000','35bNotes','35Phylum','35Species','','35bStrain','35bSubgenera','35bSuperFamily','35bSynonym','35bClass','35bGroup','35bOrder','35bType','35bVariety'),(36,'36bAuthor',NULL,'36bDivision','36bFamily','36Genus','36Kingdom','2013-03-19 00:00:00.000000','36bNotes','36Phylum','36Species','','36bStrain','36bSubgenera','36bSuperFamily','36bSynonym','36bClass','36bGroup','36bOrder','36bType','36bVariety'),(37,'37bAuthor',NULL,'37bDivision','37bFamily','37Genus','37Kingdom','2013-03-19 00:00:00.000000','37bNotes','37Phylum','37Species','','37bStrain','37bSubgenera','37bSuperFamily','37bSynonym','37bClass','37bGroup','37bOrder','37bType','37bVariety'),(38,'38bAuthor',NULL,'38bDivision','38bFamily','38Genus','38Kingdom','2013-03-19 00:00:00.000000','38bNotes','38Phylum','38Species','','38bStrain','38bSubgenera','38bSuperFamily','38bSynonym','38bClass','38bGroup','38bOrder','38bType','38bVariety'),(100,'100bAuthor',NULL,'100bDivision','100bFamily','100Genus','100Kingdom','2013-03-19 00:00:00.000000','100bNotes','100Phylum','100Species','','100bStrain','100bSubgenera','100bSuperFamily','100bSynonym','100bClass','100bGroup','100bOrder','100bType','100bVariety'),(101,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:52.956000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:52.973000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:53.172000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.195000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:53.341000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.377000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:53.605000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.636000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:53.786000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.803000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:53.939000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:53.955000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:54.065000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.084000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:54.192000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.208000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(117,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:54.323000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(118,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.340000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(119,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:54.446000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(120,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.468000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:54.572000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(122,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.590000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(123,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:54.691000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(124,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.707000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(125,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:54.809000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(126,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:54.824000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(127,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:55.037000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(128,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.056000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(129,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:55.170000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(130,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.188000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(131,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:55.300000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(132,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.425000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(133,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:55.543000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(134,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.568000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(135,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:55.663000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(136,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.677000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(137,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:55.767000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(138,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.782000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(139,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:55.875000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(140,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:55.890000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(141,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:55.997000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.014000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(143,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:56.175000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.205000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:56.310000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.328000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:56.427000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(148,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.443000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(149,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:56.549000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(150,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.567000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(151,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:56.682000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.701000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:56.803000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(154,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.821000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(155,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:56.927000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:56.944000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(157,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:57.051000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(158,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.070000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(159,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:57.180000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(160,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.198000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(161,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:57.301000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(162,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.318000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(163,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:57.430000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(164,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.448000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(165,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:57.559000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(166,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.579000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(167,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:57.697000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(168,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.718000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(169,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:57.843000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(170,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:57.862000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(171,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:57.980000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(172,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(173,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:58.120000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(174,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.137000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(175,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:58.246000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(176,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.263000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(177,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:58.370000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(178,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.390000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(179,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:58.507000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(180,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.528000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(181,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:58.650000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(182,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.668000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(183,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:58.794000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(184,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.815000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(185,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:58.936000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(186,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:58.955000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(187,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:59.074000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(188,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.093000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(189,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:59.207000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(190,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.224000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(191,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:59.329000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(192,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.347000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(193,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:59.455000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(194,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.473000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(195,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:59.583000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(196,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.602000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(197,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:59.713000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(198,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.733000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(199,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:59.842000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(200,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:32:59.862000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(201,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:32:59.984000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(202,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.005000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(203,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:00.130000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(204,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.149000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(205,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:00.257000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(206,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.276000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(207,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:00.385000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(208,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.404000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(209,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:00.516000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(210,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.534000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(211,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:00.688000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(212,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.706000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(213,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:00.818000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(214,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.837000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(215,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:00.950000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(216,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:00.970000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(217,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:01.136000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(218,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.155000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(219,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:01.276000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(220,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.294000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(221,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:01.409000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(222,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.428000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(223,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:01.542000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(224,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.561000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(225,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:01.675000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(226,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.694000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(227,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:01.809000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(228,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.828000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(229,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:01.941000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(230,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:01.961000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(231,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:02.076000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(232,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.095000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(233,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:02.213000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(234,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.232000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(235,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:02.343000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.363000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(237,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:02.474000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(238,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.493000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(239,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:02.604000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(240,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.623000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(241,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:02.734000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(242,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.753000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(243,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:02.867000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(244,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:02.887000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(245,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:03.002000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(246,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.022000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(247,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:03.142000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(248,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.161000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(249,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:03.276000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(250,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.295000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(251,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:03.415000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.435000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(253,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:03.552000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(254,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.573000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(255,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:03.709000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(256,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.729000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(257,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:03.858000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(258,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:03.877000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(259,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:04.009000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(260,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.029000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(261,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:04.155000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(262,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.176000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(263,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:04.309000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(264,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.328000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(265,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:04.446000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(266,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.466000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(267,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:04.579000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(268,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.599000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(269,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:04.761000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(270,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.781000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(271,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:04.893000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(272,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:04.914000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(273,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:05.030000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(274,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.049000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(275,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:05.162000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(276,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.181000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(277,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:05.301000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(278,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.321000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(279,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:05.439000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(280,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.459000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(281,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:05.575000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(282,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.594000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(283,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:05.712000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(284,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.733000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(285,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:05.851000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(286,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:05.872000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(287,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:05.990000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(288,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:06.010000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(289,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:06.132000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(290,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:06.152000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(291,NULL,'Björn',NULL,NULL,'Ursus',NULL,'2018-01-18 16:33:06.273000',NULL,NULL,'arctos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(292,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-18 16:33:06.293000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Taxonomys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Taxonomys_AUD`
--

DROP TABLE IF EXISTS `Taxonomys_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Taxonomys_AUD` (
  `TaxonomyID` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `Authors` varchar(200) DEFAULT NULL,
  `CommonName` varchar(512) DEFAULT NULL,
  `Division` varchar(50) DEFAULT NULL,
  `Family` varchar(50) DEFAULT NULL,
  `Genus` varchar(50) DEFAULT NULL,
  `Kingdom` varchar(50) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `Phylum` varchar(50) DEFAULT NULL,
  `Species` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Strain` varchar(50) DEFAULT NULL,
  `Subgenera` varchar(200) DEFAULT NULL,
  `Superfamily` varchar(50) DEFAULT NULL,
  `Synonym` varchar(50) DEFAULT NULL,
  `TaxanomicClass` varchar(50) DEFAULT NULL,
  `TaxanomicGroup` varchar(50) DEFAULT NULL,
  `TaxanomicOrder` varchar(50) DEFAULT NULL,
  `TypeSpecimen` varchar(50) DEFAULT NULL,
  `Variety` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TaxonomyID`,`REV`),
  KEY `FK_p8kjq5lejdkrrh9fb1y8kboxo` (`REV`),
  CONSTRAINT `FK_p8kjq5lejdkrrh9fb1y8kboxo` FOREIGN KEY (`REV`) REFERENCES `Revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Taxonomys_AUD`
--

LOCK TABLES `Taxonomys_AUD` WRITE;
/*!40000 ALTER TABLE `Taxonomys_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `Taxonomys_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UnitSections`
--

DROP TABLE IF EXISTS `UnitSections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UnitSections` (
  `UnitSectionID` int(11) NOT NULL AUTO_INCREMENT,
  `Compartment` varchar(50) DEFAULT NULL,
  `LastModified` datetime(6) DEFAULT NULL,
  `RackNumber` int(11) DEFAULT NULL,
  `ShelfNumber` int(11) DEFAULT NULL,
  `StorageID` int(11) NOT NULL,
  PRIMARY KEY (`UnitSectionID`),
  UNIQUE KEY `UK_50e95w5itu8crcsj5xjsc0ljp` (`StorageID`,`Compartment`,`ShelfNumber`,`RackNumber`),
  CONSTRAINT `FK_ic4tij5ely5myq7wlqhnhghm5` FOREIGN KEY (`StorageID`) REFERENCES `Storages` (`StorageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UnitSections`
--

LOCK TABLES `UnitSections` WRITE;
/*!40000 ALTER TABLE `UnitSections` DISABLE KEYS */;
/*!40000 ALTER TABLE `UnitSections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsageKeys`
--

DROP TABLE IF EXISTS `UsageKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsageKeys` (
  `UsageKeysID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `LastModifiedBy` varchar(80) NOT NULL,
  `UsageStr` varchar(100) NOT NULL,
  PRIMARY KEY (`UsageKeysID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsageKeys`
--

LOCK TABLES `UsageKeys` WRITE;
/*!40000 ALTER TABLE `UsageKeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsageKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ValidationFields`
--

DROP TABLE IF EXISTS `ValidationFields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ValidationFields` (
  `FieldName` varchar(100) NOT NULL,
  `Pattern` varchar(255) DEFAULT NULL,
  `Requirment` varchar(255) NOT NULL,
  `ValidationRuleID` int(11) NOT NULL,
  PRIMARY KEY (`FieldName`,`ValidationRuleID`),
  KEY `FK_l6te4yfcdu08mg24xawd3btcl` (`ValidationRuleID`),
  CONSTRAINT `FK_l6te4yfcdu08mg24xawd3btcl` FOREIGN KEY (`ValidationRuleID`) REFERENCES `ValidationRules` (`ValidationRuleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ValidationFields`
--

LOCK TABLES `ValidationFields` WRITE;
/*!40000 ALTER TABLE `ValidationFields` DISABLE KEYS */;
/*!40000 ALTER TABLE `ValidationFields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ValidationRules`
--

DROP TABLE IF EXISTS `ValidationRules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ValidationRules` (
  `ValidationRuleID` int(11) NOT NULL AUTO_INCREMENT,
  `Entity` varchar(255) NOT NULL,
  `TagID` int(11) NOT NULL,
  PRIMARY KEY (`ValidationRuleID`),
  UNIQUE KEY `UK_2lncrb3eeq94xa1jbpu6pvo46` (`TagID`,`Entity`),
  CONSTRAINT `FK_lpyvw0afwddt8tb61weqjfyw2` FOREIGN KEY (`TagID`) REFERENCES `Tags` (`TagID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ValidationRules`
--

LOCK TABLES `ValidationRules` WRITE;
/*!40000 ALTER TABLE `ValidationRules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ValidationRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vectors`
--

DROP TABLE IF EXISTS `Vectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vectors` (
  `VectorID` int(11) NOT NULL AUTO_INCREMENT,
  `LastModified` datetime(6) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Seq` longtext NOT NULL,
  `Seq_3` longtext NOT NULL,
  `Seq_5` longtext NOT NULL,
  PRIMARY KEY (`VectorID`),
  UNIQUE KEY `UK_6c0vyoxsn6ctbk4mo3w570amy` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vectors`
--

LOCK TABLES `Vectors` WRITE;
/*!40000 ALTER TABLE `Vectors` DISABLE KEYS */;
/*!40000 ALTER TABLE `Vectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postal_code` varchar(15) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `credentials_expired` bit(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `account_enabled` bit(1) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_hint` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1j9d9a06i600gd43uu3km82jw` (`email`),
  UNIQUE KEY `UK_3k4cplvh82srueuttfkwnylq0` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(64) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Administrator role (can edit Users)','admin'),(2,'Default role for all Users','user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_it77eq964jhfqtu54081ebtio` (`role_id`),
  CONSTRAINT `FK_apcc8lxk2xnug8377fatvbn04` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`),
  CONSTRAINT `FK_it77eq964jhfqtu54081ebtio` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-06 10:19:05
