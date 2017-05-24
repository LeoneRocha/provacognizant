-- MySQL dump 10.13  Distrib 5.6.23, for linux-glibc2.5 (x86_64)
--
-- Host: mysql04-farm58.kinghost.net    Database: leonecosta02
-- ------------------------------------------------------
-- Server version	5.6.27-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Duvidas`
--

DROP TABLE IF EXISTS `Duvidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Duvidas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `primeironome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `duvida` text,
  `resposta` text,
  `dataresposta` datetime DEFAULT NULL,
  `respostapor` varchar(50) DEFAULT NULL,
  `aprovado` enum('True','False') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Duvidas`
--

LOCK TABLES `Duvidas` WRITE;
/*!40000 ALTER TABLE `Duvidas` DISABLE KEYS */;
INSERT INTO `Duvidas` VALUES (5,'diego dfd','sadasdas','adsdsadas@hotmail.com','addaskadskads','SC','dadssadad','teste','2011-03-14 00:00:00',NULL,'True'),(6,'','','','','','',NULL,NULL,NULL,NULL),(2,'Tonzete','Mendes','paulom@yahoo.com.br','Teste','BA','aaaaa','Fazer e fazer, buddy','2011-03-14 00:00:00','','True'),(7,'','','','','','',NULL,NULL,NULL,NULL),(8,'','','','','','',NULL,NULL,NULL,NULL),(9,'','','','','','',NULL,NULL,NULL,NULL),(10,'','','','','','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Duvidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'leonecosta02'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-19 14:53:04
