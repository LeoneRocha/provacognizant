-- MySQL dump 10.13  Distrib 5.6.23, for linux-glibc2.5 (x86_64)
--
-- Host: mysql04-farm58.kinghost.net    Database: leonecosta03
-- ------------------------------------------------------
-- Server version	5.6.27-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Acesso`
--

DROP TABLE IF EXISTS `Acesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Acesso` (
  `idAcesso` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(100) DEFAULT NULL,
  `email` text,
  `Login` text,
  `Senha` text,
  `SenhaHASH` text,
  PRIMARY KEY (`idAcesso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acesso`
--

LOCK TABLES `Acesso` WRITE;
/*!40000 ALTER TABLE `Acesso` DISABLE KEYS */;
/*!40000 ALTER TABLE `Acesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categoria`
--

DROP TABLE IF EXISTS `Categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categoria` (
  `idCategoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NomeCategoria` text,
  PRIMARY KEY (`idCategoria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categoria`
--

LOCK TABLES `Categoria` WRITE;
/*!40000 ALTER TABLE `Categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `Categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConteudoSite`
--

DROP TABLE IF EXISTS `ConteudoSite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConteudoSite` (
  `idConteudoSite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Categoria_idCategoria` int(10) unsigned NOT NULL,
  `DataConteudoSite` datetime DEFAULT NULL,
  `Titulo` text,
  `Descricao` text,
  `Imagem` text,
  `Situacao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idConteudoSite`),
  KEY `ConteudoSite_FKIndex1` (`Categoria_idCategoria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConteudoSite`
--

LOCK TABLES `ConteudoSite` WRITE;
/*!40000 ALTER TABLE `ConteudoSite` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConteudoSite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GaleriaImagens`
--

DROP TABLE IF EXISTS `GaleriaImagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GaleriaImagens` (
  `idGaleriaImagens` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Grupo_idGrupo` int(10) unsigned NOT NULL,
  `Titulo` varchar(100) DEFAULT NULL,
  `Descricao` text,
  `Exibir` varchar(3) DEFAULT NULL,
  `DataGaleriaImagens` date DEFAULT NULL,
  `Imagen` text,
  PRIMARY KEY (`idGaleriaImagens`),
  KEY `GaleriaImagens_FKIndex1` (`Grupo_idGrupo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GaleriaImagens`
--

LOCK TABLES `GaleriaImagens` WRITE;
/*!40000 ALTER TABLE `GaleriaImagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `GaleriaImagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Grupo`
--

DROP TABLE IF EXISTS `Grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Grupo` (
  `idGrupo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NomeGrupo` varchar(100) DEFAULT NULL,
  `Imagen` text,
  `DataGrupo` datetime DEFAULT NULL,
  `Periodo` text,
  PRIMARY KEY (`idGrupo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grupo`
--

LOCK TABLES `Grupo` WRITE;
/*!40000 ALTER TABLE `Grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Videos`
--

DROP TABLE IF EXISTS `Videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Videos` (
  `idVideos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Grupo_idGrupo` int(10) unsigned NOT NULL,
  `Titulo` varchar(100) DEFAULT NULL,
  `Descricao` text,
  `Exibir` varchar(3) DEFAULT NULL,
  `DataVideo` datetime DEFAULT NULL,
  `Video` text,
  PRIMARY KEY (`idVideos`),
  KEY `Videos_FKIndex1` (`Grupo_idGrupo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Videos`
--

LOCK TABLES `Videos` WRITE;
/*!40000 ALTER TABLE `Videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'leonecosta03'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-19 14:53:11
