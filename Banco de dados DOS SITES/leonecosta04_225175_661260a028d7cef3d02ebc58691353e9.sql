-- MySQL dump 10.13  Distrib 5.6.23, for linux-glibc2.5 (x86_64)
--
-- Host: mysql04-farm58.kinghost.net    Database: leonecosta04
-- ------------------------------------------------------
-- Server version	5.6.27-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Agendamento`
--

DROP TABLE IF EXISTS `Agendamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Agendamento` (
  `idAgendamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idCampanha` int(11) unsigned NOT NULL,
  `DataAgendamento` datetime DEFAULT NULL,
  `DataEnvioCampanha` datetime DEFAULT NULL,
  `idTipoCadastro` int(10) unsigned DEFAULT NULL,
  `Emails` text,
  `Sexo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idAgendamento`),
  KEY `Agendamento_FKIndex1` (`idCampanha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Agendamento`
--

LOCK TABLES `Agendamento` WRITE;
/*!40000 ALTER TABLE `Agendamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `Agendamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cadastro`
--

DROP TABLE IF EXISTS `Cadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cadastro` (
  `idCadastro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idTipoCadastro` int(10) unsigned NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Celular` varchar(20) DEFAULT NULL,
  `email` text,
  `sexo` varchar(1) DEFAULT NULL,
  `nascimento` datetime DEFAULT NULL,
  `Obs` longtext,
  `Empresa` text,
  PRIMARY KEY (`idCadastro`),
  KEY `Cadastro_FKIndex2` (`idTipoCadastro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cadastro`
--

LOCK TABLES `Cadastro` WRITE;
/*!40000 ALTER TABLE `Cadastro` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campanha`
--

DROP TABLE IF EXISTS `Campanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campanha` (
  `idCampanha` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idGoogleAnalytics` int(10) unsigned NOT NULL,
  `idGrupoCampanha` int(10) unsigned NOT NULL,
  `idRemetente` int(10) unsigned DEFAULT NULL,
  `DataCampanha` datetime DEFAULT NULL,
  `Assunto` text,
  `Conteudo` longtext,
  PRIMARY KEY (`idCampanha`),
  KEY `Campanha_FKIndex1` (`idRemetente`),
  KEY `Campanha_FKIndex2` (`idGrupoCampanha`),
  KEY `Campanha_FKIndex3` (`idGoogleAnalytics`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campanha`
--

LOCK TABLES `Campanha` WRITE;
/*!40000 ALTER TABLE `Campanha` DISABLE KEYS */;
/*!40000 ALTER TABLE `Campanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Configuracao`
--

DROP TABLE IF EXISTS `Configuracao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Configuracao` (
  `idConfiguracao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Smtp` varchar(255) DEFAULT NULL,
  `UsuarioSmtp` varchar(255) DEFAULT NULL,
  `SenhaSmtp` varchar(50) DEFAULT NULL,
  `ProvedorDB` varchar(255) DEFAULT NULL,
  `UsuarioDB` varchar(100) DEFAULT NULL,
  `LimiteEmailsMax` int(10) unsigned DEFAULT NULL,
  `Token` longtext NOT NULL,
  `Ativo` enum('true','false') DEFAULT NULL,
  PRIMARY KEY (`idConfiguracao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Configuracao`
--

LOCK TABLES `Configuracao` WRITE;
/*!40000 ALTER TABLE `Configuracao` DISABLE KEYS */;
/*!40000 ALTER TABLE `Configuracao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EnderecoCadastro`
--

DROP TABLE IF EXISTS `EnderecoCadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EnderecoCadastro` (
  `idEnderecoCadastro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idCadastro` int(10) unsigned NOT NULL,
  `Cep` text,
  `Endereco` text,
  `Cidade` text,
  `Estado` text,
  `Bairro` text,
  `Regiao` text,
  PRIMARY KEY (`idEnderecoCadastro`),
  KEY `EnderecoCadastro_FKIndex1` (`idCadastro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EnderecoCadastro`
--

LOCK TABLES `EnderecoCadastro` WRITE;
/*!40000 ALTER TABLE `EnderecoCadastro` DISABLE KEYS */;
/*!40000 ALTER TABLE `EnderecoCadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GoogleAnalytics`
--

DROP TABLE IF EXISTS `GoogleAnalytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GoogleAnalytics` (
  `idGoogleAnalytics` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `codigorast` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idGoogleAnalytics`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GoogleAnalytics`
--

LOCK TABLES `GoogleAnalytics` WRITE;
/*!40000 ALTER TABLE `GoogleAnalytics` DISABLE KEYS */;
/*!40000 ALTER TABLE `GoogleAnalytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GrupoCampanha`
--

DROP TABLE IF EXISTS `GrupoCampanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GrupoCampanha` (
  `idGrupoCampanha` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NomeGrupo` text,
  PRIMARY KEY (`idGrupoCampanha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GrupoCampanha`
--

LOCK TABLES `GrupoCampanha` WRITE;
/*!40000 ALTER TABLE `GrupoCampanha` DISABLE KEYS */;
/*!40000 ALTER TABLE `GrupoCampanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HistoricoCampanha`
--

DROP TABLE IF EXISTS `HistoricoCampanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HistoricoCampanha` (
  `idHistoricoCampanha` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idCampanha` int(11) unsigned DEFAULT NULL,
  `DataHistorico` datetime DEFAULT NULL,
  `Emails` text,
  `emailslidos` int(11) DEFAULT NULL,
  `emailsnaolidos` int(11) DEFAULT NULL,
  `emailsfalso` int(11) DEFAULT NULL,
  `QtdEmailsEnviados` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idHistoricoCampanha`),
  KEY `HistoricoCampanha_FKIndex1` (`idCampanha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HistoricoCampanha`
--

LOCK TABLES `HistoricoCampanha` WRITE;
/*!40000 ALTER TABLE `HistoricoCampanha` DISABLE KEYS */;
/*!40000 ALTER TABLE `HistoricoCampanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImagensUp`
--

DROP TABLE IF EXISTS `ImagensUp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImagensUp` (
  `idImagensUp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(100) DEFAULT NULL,
  `DataImg` date DEFAULT NULL,
  `Arquivo` longtext,
  `Tamanho` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idImagensUp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImagensUp`
--

LOCK TABLES `ImagensUp` WRITE;
/*!40000 ALTER TABLE `ImagensUp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImagensUp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LimiteEmails`
--

DROP TABLE IF EXISTS `LimiteEmails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LimiteEmails` (
  `idLimiteEmail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idUsuario` int(10) unsigned NOT NULL,
  `LimiteEmailsMax` int(10) unsigned DEFAULT NULL,
  `LimiteEmailsCount` int(10) unsigned DEFAULT NULL,
  `DataLimite` datetime DEFAULT NULL,
  PRIMARY KEY (`idLimiteEmail`),
  KEY `LimiteEmails_FKIndex1` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LimiteEmails`
--

LOCK TABLES `LimiteEmails` WRITE;
/*!40000 ALTER TABLE `LimiteEmails` DISABLE KEYS */;
/*!40000 ALTER TABLE `LimiteEmails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LogsErros`
--

DROP TABLE IF EXISTS `LogsErros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LogsErros` (
  `idLogsErros` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idUsuario` int(10) unsigned DEFAULT NULL,
  `DataLog` date DEFAULT NULL,
  `MsgError` text,
  `Situacao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idLogsErros`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogsErros`
--

LOCK TABLES `LogsErros` WRITE;
/*!40000 ALTER TABLE `LogsErros` DISABLE KEYS */;
/*!40000 ALTER TABLE `LogsErros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Remetente`
--

DROP TABLE IF EXISTS `Remetente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Remetente` (
  `idRemetente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FromEmail` varchar(255) DEFAULT NULL,
  `NomeRemetente` text,
  PRIMARY KEY (`idRemetente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Remetente`
--

LOCK TABLES `Remetente` WRITE;
/*!40000 ALTER TABLE `Remetente` DISABLE KEYS */;
/*!40000 ALTER TABLE `Remetente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SituacaoCadastro`
--

DROP TABLE IF EXISTS `SituacaoCadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SituacaoCadastro` (
  `idSituacaoCadastro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idCadastro` int(10) unsigned NOT NULL,
  `RecebidoLidos` enum('true','false') DEFAULT NULL,
  `Enviado` enum('true','false') DEFAULT NULL,
  `Ativo` enum('true','false') DEFAULT NULL,
  PRIMARY KEY (`idSituacaoCadastro`),
  KEY `SituacaoCadastro_FKIndex1` (`idCadastro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SituacaoCadastro`
--

LOCK TABLES `SituacaoCadastro` WRITE;
/*!40000 ALTER TABLE `SituacaoCadastro` DISABLE KEYS */;
/*!40000 ALTER TABLE `SituacaoCadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoCadastro`
--

DROP TABLE IF EXISTS `TipoCadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoCadastro` (
  `idTipoCadastro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TipoCadastroNome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idTipoCadastro`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoCadastro`
--

LOCK TABLES `TipoCadastro` WRITE;
/*!40000 ALTER TABLE `TipoCadastro` DISABLE KEYS */;
INSERT INTO `TipoCadastro` VALUES (1,'Cliente'),(2,'Excliente');
/*!40000 ALTER TABLE `TipoCadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `idUsuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `email` text,
  `login` varchar(25) DEFAULT NULL,
  `senha` varchar(15) DEFAULT NULL,
  `adm` enum('true','false') DEFAULT NULL,
  `NivelAcesso` int(3) DEFAULT NULL,
  `SenhaHash` text,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_Agendamento_Campanha`
--

DROP TABLE IF EXISTS `view_Agendamento_Campanha`;
/*!50001 DROP VIEW IF EXISTS `view_Agendamento_Campanha`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_Agendamento_Campanha` AS SELECT 
 1 AS `idAgendamento`,
 1 AS `DataAgendamento`,
 1 AS `DataEnvioCampanha`,
 1 AS `Assunto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_Campanha_GoogleAnalytics_GrupoCampanha_Remetente`
--

DROP TABLE IF EXISTS `view_Campanha_GoogleAnalytics_GrupoCampanha_Remetente`;
/*!50001 DROP VIEW IF EXISTS `view_Campanha_GoogleAnalytics_GrupoCampanha_Remetente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_Campanha_GoogleAnalytics_GrupoCampanha_Remetente` AS SELECT 
 1 AS `idCampanha`,
 1 AS `DataCampanha`,
 1 AS `Assunto`,
 1 AS `Conteudo`,
 1 AS `nome`,
 1 AS `NomeGrupo`,
 1 AS `NomeRemetente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_EnderecoCadastro_Cadastro`
--

DROP TABLE IF EXISTS `view_EnderecoCadastro_Cadastro`;
/*!50001 DROP VIEW IF EXISTS `view_EnderecoCadastro_Cadastro`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_EnderecoCadastro_Cadastro` AS SELECT 
 1 AS `idEnderecoCadastro`,
 1 AS `Cep`,
 1 AS `Endereco`,
 1 AS `Cidade`,
 1 AS `Estado`,
 1 AS `Bairro`,
 1 AS `Regiao`,
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_HistoricoCampanha_Campanha`
--

DROP TABLE IF EXISTS `view_HistoricoCampanha_Campanha`;
/*!50001 DROP VIEW IF EXISTS `view_HistoricoCampanha_Campanha`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_HistoricoCampanha_Campanha` AS SELECT 
 1 AS `idHistoricoCampanha`,
 1 AS `DataHistorico`,
 1 AS `Emails`,
 1 AS `emailslidos`,
 1 AS `emailsnaolidos`,
 1 AS `emailsfalso`,
 1 AS `Assunto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_LimiteEmails_Usuario`
--

DROP TABLE IF EXISTS `view_LimiteEmails_Usuario`;
/*!50001 DROP VIEW IF EXISTS `view_LimiteEmails_Usuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_LimiteEmails_Usuario` AS SELECT 
 1 AS `idLimiteEmail`,
 1 AS `LimiteEmailsMax`,
 1 AS `LimiteEmailsCount`,
 1 AS `DataLimite`,
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_cadastro_tipocadastro`
--

DROP TABLE IF EXISTS `view_cadastro_tipocadastro`;
/*!50001 DROP VIEW IF EXISTS `view_cadastro_tipocadastro`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_cadastro_tipocadastro` AS SELECT 
 1 AS `idCadastro`,
 1 AS `nome`,
 1 AS `Telefone`,
 1 AS `Celular`,
 1 AS `email`,
 1 AS `sexo`,
 1 AS `nascimento`,
 1 AS `Obs`,
 1 AS `Empresa`,
 1 AS `TipoCadastroNome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_situacaocadastro_cadastro`
--

DROP TABLE IF EXISTS `view_situacaocadastro_cadastro`;
/*!50001 DROP VIEW IF EXISTS `view_situacaocadastro_cadastro`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_situacaocadastro_cadastro` AS SELECT 
 1 AS `idSituacaoCadastro`,
 1 AS `nome`,
 1 AS `RecebidoLidos`,
 1 AS `Enviado`,
 1 AS `Ativo`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'leonecosta04'
--

--
-- Final view structure for view `view_Agendamento_Campanha`
--

/*!50001 DROP VIEW IF EXISTS `view_Agendamento_Campanha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`leonecosta04`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_Agendamento_Campanha` AS select `Agendamento`.`idAgendamento` AS `idAgendamento`,`Agendamento`.`DataAgendamento` AS `DataAgendamento`,`Agendamento`.`DataEnvioCampanha` AS `DataEnvioCampanha`,`Campanha`.`Assunto` AS `Assunto` from (`Agendamento` join `Campanha` on((`Agendamento`.`idCampanha` = `Campanha`.`idCampanha`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_Campanha_GoogleAnalytics_GrupoCampanha_Remetente`
--

/*!50001 DROP VIEW IF EXISTS `view_Campanha_GoogleAnalytics_GrupoCampanha_Remetente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`leonecosta04`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_Campanha_GoogleAnalytics_GrupoCampanha_Remetente` AS select `Campanha`.`idCampanha` AS `idCampanha`,`Campanha`.`DataCampanha` AS `DataCampanha`,`Campanha`.`Assunto` AS `Assunto`,`Campanha`.`Conteudo` AS `Conteudo`,`GoogleAnalytics`.`nome` AS `nome`,`GrupoCampanha`.`NomeGrupo` AS `NomeGrupo`,`Remetente`.`NomeRemetente` AS `NomeRemetente` from (((`Campanha` join `GoogleAnalytics` on((`GoogleAnalytics`.`idGoogleAnalytics` = `Campanha`.`idGoogleAnalytics`))) join `GrupoCampanha` on((`GrupoCampanha`.`idGrupoCampanha` = `Campanha`.`idGrupoCampanha`))) join `Remetente` on((`Remetente`.`idRemetente` = `Campanha`.`idRemetente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_EnderecoCadastro_Cadastro`
--

/*!50001 DROP VIEW IF EXISTS `view_EnderecoCadastro_Cadastro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`leonecosta04`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_EnderecoCadastro_Cadastro` AS select `EnderecoCadastro`.`idEnderecoCadastro` AS `idEnderecoCadastro`,`EnderecoCadastro`.`Cep` AS `Cep`,`EnderecoCadastro`.`Endereco` AS `Endereco`,`EnderecoCadastro`.`Cidade` AS `Cidade`,`EnderecoCadastro`.`Estado` AS `Estado`,`EnderecoCadastro`.`Bairro` AS `Bairro`,`EnderecoCadastro`.`Regiao` AS `Regiao`,`Cadastro`.`nome` AS `nome` from (`EnderecoCadastro` join `Cadastro` on((`EnderecoCadastro`.`idCadastro` = `Cadastro`.`idCadastro`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_HistoricoCampanha_Campanha`
--

/*!50001 DROP VIEW IF EXISTS `view_HistoricoCampanha_Campanha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`leonecosta04`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_HistoricoCampanha_Campanha` AS select `HistoricoCampanha`.`idHistoricoCampanha` AS `idHistoricoCampanha`,`HistoricoCampanha`.`DataHistorico` AS `DataHistorico`,`HistoricoCampanha`.`Emails` AS `Emails`,`HistoricoCampanha`.`emailslidos` AS `emailslidos`,`HistoricoCampanha`.`emailsnaolidos` AS `emailsnaolidos`,`HistoricoCampanha`.`emailsfalso` AS `emailsfalso`,`Campanha`.`Assunto` AS `Assunto` from (`HistoricoCampanha` join `Campanha` on((`HistoricoCampanha`.`idCampanha` = `Campanha`.`idCampanha`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_LimiteEmails_Usuario`
--

/*!50001 DROP VIEW IF EXISTS `view_LimiteEmails_Usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`leonecosta04`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_LimiteEmails_Usuario` AS select `LimiteEmails`.`idLimiteEmail` AS `idLimiteEmail`,`LimiteEmails`.`LimiteEmailsMax` AS `LimiteEmailsMax`,`LimiteEmails`.`LimiteEmailsCount` AS `LimiteEmailsCount`,`LimiteEmails`.`DataLimite` AS `DataLimite`,`Usuario`.`nome` AS `nome` from (`LimiteEmails` join `Usuario` on((`LimiteEmails`.`idUsuario` = `Usuario`.`idUsuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_cadastro_tipocadastro`
--

/*!50001 DROP VIEW IF EXISTS `view_cadastro_tipocadastro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`leonecosta04`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_cadastro_tipocadastro` AS select `Cadastro`.`idCadastro` AS `idCadastro`,`Cadastro`.`nome` AS `nome`,`Cadastro`.`Telefone` AS `Telefone`,`Cadastro`.`Celular` AS `Celular`,`Cadastro`.`email` AS `email`,`Cadastro`.`sexo` AS `sexo`,`Cadastro`.`nascimento` AS `nascimento`,`Cadastro`.`Obs` AS `Obs`,`Cadastro`.`Empresa` AS `Empresa`,`TipoCadastro`.`TipoCadastroNome` AS `TipoCadastroNome` from (`Cadastro` join `TipoCadastro` on((`Cadastro`.`idTipoCadastro` = `TipoCadastro`.`idTipoCadastro`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_situacaocadastro_cadastro`
--

/*!50001 DROP VIEW IF EXISTS `view_situacaocadastro_cadastro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`leonecosta04`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_situacaocadastro_cadastro` AS select `SituacaoCadastro`.`idSituacaoCadastro` AS `idSituacaoCadastro`,`Cadastro`.`nome` AS `nome`,`SituacaoCadastro`.`RecebidoLidos` AS `RecebidoLidos`,`SituacaoCadastro`.`Enviado` AS `Enviado`,`SituacaoCadastro`.`Ativo` AS `Ativo` from (`SituacaoCadastro` join `Cadastro` on((`Cadastro`.`idCadastro` = `SituacaoCadastro`.`idCadastro`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-19 14:53:19
