-- MySQL dump 10.13  Distrib 5.6.23, for linux-glibc2.5 (x86_64)
--
-- Host: mysql04-farm58.kinghost.net    Database: leonecosta11
-- ------------------------------------------------------
-- Server version	5.6.27-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `UltimosCalculos`
--

DROP TABLE IF EXISTS `UltimosCalculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UltimosCalculos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Resultado` double NOT NULL,
  `Entrada1` double NOT NULL,
  `Entrada2` double NOT NULL,
  `Operacao` varchar(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UltimosCalculos`
--

LOCK TABLES `UltimosCalculos` WRITE;
/*!40000 ALTER TABLE `UltimosCalculos` DISABLE KEYS */;
INSERT INTO `UltimosCalculos` VALUES (23,21,7,3,'*'),(24,38,34,4,'+'),(25,12,3,4,'*'),(26,27,3,9,'*'),(27,72,8,9,'*'),(28,5,2,3,'+'),(29,16,4,4,'*'),(30,0,4,4,'-'),(31,-41,4,45,'-'),(32,0.08888888888888889,4,45,'/'),(33,49,4,45,'+'),(34,-1,3,4,'-'),(35,0.75,3,4,'/'),(36,7,3,4,'+'),(37,4,2,2,'*'),(38,2,1,2,'*'),(39,-2,1,3,'-'),(40,0.3333333333333333,1,3,'/'),(41,19,21,2,'-'),(42,10.5,21,2,'/'),(43,7,3,4,'+'),(44,7,3,4,'+'),(45,-42,3,45,'-'),(46,4,9,5,'-'),(47,14,9,5,'+'),(48,3,1,2,'+'),(49,3,1,2,'+'),(50,-1,1,2,'-'),(51,2,1,2,'*'),(52,20000,20,1000,'*'),(53,0.02,20,1000,'/'),(54,13,8,5,'+'),(55,26,23,3,'+'),(56,7.666666666666667,23,3,'/'),(57,20,23,3,'-'),(58,10,5,2,'*'),(59,2.5,5,2,'/'),(60,21,7,3,'*'),(61,18,18000,1000,'/'),(62,1.8,18000,10000,'/'),(63,0.18,18000,100000,'/'),(64,0,0,0,'+'),(65,12376,56,221,'*');
/*!40000 ALTER TABLE `UltimosCalculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'leonecosta11'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-19 14:55:18
