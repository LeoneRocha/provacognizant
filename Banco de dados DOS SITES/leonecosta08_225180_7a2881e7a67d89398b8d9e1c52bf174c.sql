-- MySQL dump 10.13  Distrib 5.6.23, for linux-glibc2.5 (x86_64)
--
-- Host: mysql04-farm58.kinghost.net    Database: leonecosta08
-- ------------------------------------------------------
-- Server version	5.6.27-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblAvaliacao`
--

DROP TABLE IF EXISTS `tblAvaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblAvaliacao` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `EmpresaID` int(11) NOT NULL,
  `PeriodoAvaliacao` int(11) NOT NULL,
  `TipoAvaliacao` int(11) NOT NULL,
  `Departamento` varchar(100) DEFAULT NULL,
  `PontosParaPercentualSalario` int(11) NOT NULL,
  `PontorParaGratificacao` int(11) NOT NULL,
  `PontosParaPercentualParticipacaoLucros` int(11) NOT NULL,
  `PontosParaDescansoRemunerado` int(11) NOT NULL,
  `PontosParaIncentivosEducacionais` int(11) NOT NULL,
  `PontosParaPromocao` int(11) NOT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `DataInsercao` datetime NOT NULL,
  `DataAlteracao` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_avaliacao_empresa` (`EmpresaID`),
  CONSTRAINT `fk_avaliacao_empresa` FOREIGN KEY (`EmpresaID`) REFERENCES `tblEmpresa` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblAvaliacao`
--

LOCK TABLES `tblAvaliacao` WRITE;
/*!40000 ALTER TABLE `tblAvaliacao` DISABLE KEYS */;
INSERT INTO `tblAvaliacao` VALUES (31,1,3,1,NULL,90,90,90,50,50,85,1,1,'2013-05-20 13:23:32','2013-05-20 13:27:52'),(32,2,3,1,NULL,10,20,90,50,30,90,1,1,'2013-05-20 15:54:45','2013-05-20 15:54:45'),(33,2,1,2,'Financeiro',10,20,90,50,30,90,1,1,'2013-05-20 15:57:02','2013-05-20 15:57:02'),(34,1,1,2,'Fabrica de Software',90,90,90,30,40,80,1,1,'2013-05-20 16:07:15','2013-05-20 16:07:15'),(35,1,2,2,'infra',90,90,95,30,70,95,1,1,'2013-05-20 16:31:27','2013-05-20 16:31:27');
/*!40000 ALTER TABLE `tblAvaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblEmpresa`
--

DROP TABLE IF EXISTS `tblEmpresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblEmpresa` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TipoEmpresa` int(11) NOT NULL,
  `RamoAtividade` int(11) NOT NULL,
  `Setor` varchar(200) NOT NULL,
  `RazaoSocial` varchar(200) NOT NULL,
  `NomeFantasia` varchar(200) DEFAULT NULL,
  `CNPJ` varchar(200) NOT NULL,
  `InscricaoEstadual` varchar(200) DEFAULT NULL,
  `Rua` varchar(200) NOT NULL,
  `Numero` varchar(50) NOT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `Bairro` varchar(50) NOT NULL,
  `Cep` varchar(50) NOT NULL,
  `Cidade` varchar(50) NOT NULL,
  `UF` varchar(50) NOT NULL,
  `Ativo` tinyint(1) DEFAULT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `DataInsercao` datetime NOT NULL,
  `DataAlteracao` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblEmpresa`
--

LOCK TABLES `tblEmpresa` WRITE;
/*!40000 ALTER TABLE `tblEmpresa` DISABLE KEYS */;
INSERT INTO `tblEmpresa` VALUES (1,2,1,'Setor','Razão Social Teste','Nome Fantasia','11.111.111/1111 - 10','InscEstadual','Rua','Numero','Complemento','Bairro','12342-043','São Paulo','So',1,1,1,'2013-05-12 00:00:00','2013-05-19 12:08:23'),(2,1,1,'Setor','Segunda empresa ','Nome Fantasia teste','34.567.586/9709 - 98','Insc','Rua','NUmero','Compl','bairr','34256-786','São Paulo','So',1,1,1,'2013-05-12 00:00:00','2013-05-20 15:51:08'),(8,2,2,'Comercio Vestuário','Taina Teste Ltda','Taina Teste ','02.356.989/8898 - 98','015456465','Rua das Flores','125','01','Bairro Copo de Leite ','02155-223','São Paulo','SP',1,1,1,'2013-05-13 14:45:22','2013-05-20 16:25:34'),(13,2,2,'Segurança','Segurança teste','Segurança teste','45.423.565/9898 - 98','12124565656','Rua das Flores','4525','44','Raio de sol','45457-877','São Paulo','SP',0,1,1,'2013-05-20 16:23:15','2013-05-20 16:25:45');
/*!40000 ALTER TABLE `tblEmpresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblMeta`
--

DROP TABLE IF EXISTS `tblMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblMeta` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AvaliacaoID` int(11) NOT NULL,
  `Descricao` varchar(5000) DEFAULT NULL,
  `PontuacaoMaxima` int(11) NOT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `DataInsercao` datetime NOT NULL,
  `DataAlteracao` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_meta_avaliacao` (`AvaliacaoID`),
  CONSTRAINT `fk_meta_avaliacao` FOREIGN KEY (`AvaliacaoID`) REFERENCES `tblAvaliacao` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblMeta`
--

LOCK TABLES `tblMeta` WRITE;
/*!40000 ALTER TABLE `tblMeta` DISABLE KEYS */;
INSERT INTO `tblMeta` VALUES (214,31,'Critério de Avaliação 1',10,1,1,'2013-05-20 13:27:52','2013-05-20 13:27:52'),(215,31,'Critério de Avaliação 2',10,1,1,'2013-05-20 13:27:52','2013-05-20 13:27:52'),(216,31,'Critério de Avaliação 3',15,1,1,'2013-05-20 13:27:52','2013-05-20 13:27:52'),(217,31,'Critério de Avaliação 4',5,1,1,'2013-05-20 13:27:52','2013-05-20 13:27:52'),(218,31,'Critério de Avaliação 5',20,1,1,'2013-05-20 13:27:52','2013-05-20 13:27:52'),(219,31,'Critério de Avaliação 6',10,1,1,'2013-05-20 13:27:52','2013-05-20 13:27:52'),(220,31,'Critério de Avaliação 7',20,1,1,'2013-05-20 13:27:52','2013-05-20 13:27:52'),(221,31,'Critério de Avaliação 8',10,1,1,'2013-05-20 13:27:52','2013-05-20 13:27:52'),(222,32,'Critério de Avaliação 01',10,1,1,'2013-05-20 15:54:45','2013-05-20 15:54:45'),(223,32,'Critério de Avaliação 02',20,1,1,'2013-05-20 15:54:45','2013-05-20 15:54:45'),(224,32,'Critério de Avaliação 03',30,1,1,'2013-05-20 15:54:45','2013-05-20 15:54:45'),(225,32,'Critério de Avaliação 04',40,1,1,'2013-05-20 15:54:45','2013-05-20 15:54:45'),(226,33,'Critério de Avaliação 01',30,1,1,'2013-05-20 15:57:02','2013-05-20 15:57:02'),(227,33,'Critério de Avaliação 02',20,1,1,'2013-05-20 15:57:02','2013-05-20 15:57:02'),(228,33,'Critério de Avaliação 003',50,1,1,'2013-05-20 15:57:02','2013-05-20 15:57:02'),(229,34,'Critério 01',10,1,1,'2013-05-20 16:07:15','2013-05-20 16:07:15'),(230,34,'Critério 02',20,1,1,'2013-05-20 16:07:15','2013-05-20 16:07:15'),(231,34,'Critério 03',50,1,1,'2013-05-20 16:07:15','2013-05-20 16:07:15'),(232,34,'Critério 04',20,1,1,'2013-05-20 16:07:15','2013-05-20 16:07:15'),(233,35,'Critério de Avaliação 01',10,1,1,'2013-05-20 16:31:27','2013-05-20 16:31:27'),(234,35,'Critério de Avaliação 02',20,1,1,'2013-05-20 16:31:27','2013-05-20 16:31:27'),(235,35,'Critério de Avaliação 03',30,1,1,'2013-05-20 16:31:27','2013-05-20 16:31:27'),(236,35,'Critério de Avaliação 04',20,1,1,'2013-05-20 16:31:27','2013-05-20 16:31:27'),(237,35,'Critério de Avaliação 05',20,1,1,'2013-05-20 16:31:27','2013-05-20 16:31:27');
/*!40000 ALTER TABLE `tblMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblPontuacaoMeta`
--

DROP TABLE IF EXISTS `tblPontuacaoMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblPontuacaoMeta` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario_Avaliacao_ID` int(11) NOT NULL,
  `MetaID` int(11) NOT NULL,
  `Pontuacao` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_pontuacaometa_meta` (`MetaID`),
  KEY `fk_pontuacaometa_usuario_avaliacao` (`Usuario_Avaliacao_ID`),
  CONSTRAINT `fk_pontuacaometa_meta` FOREIGN KEY (`MetaID`) REFERENCES `tblMeta` (`Id`),
  CONSTRAINT `fk_pontuacaometa_usuario_avaliacao` FOREIGN KEY (`Usuario_Avaliacao_ID`) REFERENCES `tblUsuario_Avaliacao` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblPontuacaoMeta`
--

LOCK TABLES `tblPontuacaoMeta` WRITE;
/*!40000 ALTER TABLE `tblPontuacaoMeta` DISABLE KEYS */;
INSERT INTO `tblPontuacaoMeta` VALUES (81,136,226,20),(82,136,227,15),(83,136,228,29),(84,134,222,5),(85,134,223,10),(86,134,224,15),(87,134,225,20),(88,137,229,5),(89,137,230,10),(90,137,231,25),(91,137,232,20),(92,131,214,10),(93,131,215,10),(94,131,216,10),(95,131,217,3),(96,131,218,15),(97,131,219,5),(98,131,220,10),(99,131,221,5),(100,133,214,10),(101,133,215,10),(102,133,216,15),(103,133,217,5),(104,133,218,20),(105,133,219,10),(106,133,220,20),(107,133,221,5),(108,132,214,5),(109,132,215,10),(110,132,216,15),(111,132,217,5),(112,132,218,15),(113,132,219,10),(114,132,220,20),(115,132,221,5),(116,139,233,5),(117,139,234,15),(118,139,235,25),(119,139,236,20),(120,139,237,20),(121,138,229,10),(122,138,230,15),(123,138,231,25),(124,138,232,10);
/*!40000 ALTER TABLE `tblPontuacaoMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblUsuario_Avaliacao`
--

DROP TABLE IF EXISTS `tblUsuario_Avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblUsuario_Avaliacao` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AvaliacaoID` int(11) NOT NULL,
  `UsuarioAvaliandoID` int(11) NOT NULL,
  `UsuarioSendoAvaliadoID` int(11) NOT NULL,
  `AvaliacaoRealizada` bit(1) NOT NULL,
  `Gratificacoes` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_usuario_avaliacao_usuario_avaliando` (`UsuarioAvaliandoID`),
  KEY `fk_usuario_avaliacao_usuario_sendoavaliado` (`UsuarioSendoAvaliadoID`),
  KEY `fk_usuario_avaliacao_avaliacao` (`AvaliacaoID`),
  CONSTRAINT `fk_usuario_avaliacao_avaliacao` FOREIGN KEY (`AvaliacaoID`) REFERENCES `tblAvaliacao` (`Id`),
  CONSTRAINT `fk_usuario_avaliacao_usuario_avaliando` FOREIGN KEY (`UsuarioAvaliandoID`) REFERENCES `tblusuario` (`Id`),
  CONSTRAINT `fk_usuario_avaliacao_usuario_sendoavaliado` FOREIGN KEY (`UsuarioSendoAvaliadoID`) REFERENCES `tblusuario` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblUsuario_Avaliacao`
--

LOCK TABLES `tblUsuario_Avaliacao` WRITE;
/*!40000 ALTER TABLE `tblUsuario_Avaliacao` DISABLE KEYS */;
INSERT INTO `tblUsuario_Avaliacao` VALUES (131,31,16,16,'','Descanso remunerado;Incentivos educacionais'),(132,31,17,17,'','Descanso remunerado;Incentivos educacionais;Promoção'),(133,31,18,18,'','Gratificação;Descanso remunerado;Incentivos educacionais;Participação de lucros;Percentual de salário;Promoção'),(134,32,30,30,'','Gratificação;Descanso remunerado;Incentivos educacionais;Percentual de salário'),(135,32,31,31,'\0',NULL),(136,33,31,31,'','Gratificação;Descanso remunerado;Incentivos educacionais;Percentual de salário'),(137,34,18,18,'','Descanso remunerado;Incentivos educacionais'),(138,34,32,32,'','Descanso remunerado;Incentivos educacionais'),(139,35,33,33,'','Descanso remunerado;Incentivos educacionais');
/*!40000 ALTER TABLE `tblUsuario_Avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuario`
--

DROP TABLE IF EXISTS `tblusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusuario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Login` varchar(200) NOT NULL,
  `Nome` varchar(200) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Senha` varchar(50) NOT NULL,
  `Cpf` varchar(20) NOT NULL,
  `Departamento` varchar(100) DEFAULT NULL,
  `Cargo` varchar(100) DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  `PerfilAcesso` int(11) NOT NULL,
  `Ativo` tinyint(1) DEFAULT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `DataInsercao` datetime NOT NULL,
  `DataAlteracao` datetime NOT NULL,
  `EmpresaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_usuario_empresa` (`EmpresaID`),
  CONSTRAINT `fk_usuario_empresa` FOREIGN KEY (`EmpresaID`) REFERENCES `tblEmpresa` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuario`
--

LOCK TABLES `tblusuario` WRITE;
/*!40000 ALTER TABLE `tblusuario` DISABLE KEYS */;
INSERT INTO `tblusuario` VALUES (1,'admin','Admin','admin@si4w.com.br','taina2012','55555555555','Dep','Si4W',1001.00,1,1,-99,-99,'2013-02-04 00:00:00','2013-02-04 00:00:00',NULL),(3,'leone','Leone','contato@leonecosta.com.br','taina2012','12345678903','Si4W','Cargo',10.00,1,1,1,1,'2013-05-12 00:00:00','2013-05-15 16:38:27',NULL),(10,'admin','usuário teste ','usuarioteste@teste.com.br','taina2012','12345678908','Desenvolvimento ','Auxiliar',1200.00,2,1,1,1,'2013-05-15 16:22:38','2013-05-15 16:28:03',8),(11,'admin','teste interno ','testeinterno@teste.com.br','taina2012','33333333333','Suporte','Gerente',1500.00,2,1,1,1,'2013-05-15 16:29:13','2013-05-15 16:29:44',8),(16,'taina.medeiros','Taina Medeiros','ricardo@gmail.com','taina2012','12345678902','Desenvolvimento','Desenvolvedor',1000.00,3,1,1,1,'2013-05-18 10:43:05','2013-05-20 13:21:00',1),(17,'jacque','Jacqueline Jaen','email@email.com','taina2012','12345678915','Depto Faturamento','Cargo fat.',2000.00,6,1,1,32,'2013-05-18 10:48:17','2013-05-20 16:15:30',1),(18,'anderson.lima','anderson saraiva lima','anderson_saraiva90@yahoo.com.br','taina2012','12345678904','Fabrica de Software','Programador',3000.00,3,1,1,1,'2013-05-18 10:52:48','2013-05-18 11:02:40',1),(30,'teste','Jacqueline','jac@jác.com.br','taina2012','77777777777','teste cadastro usuário','Teste',99999999.99,6,1,1,1,'2013-05-20 10:33:11','2013-05-20 10:33:11',2),(31,'taina.simoes','Taina Simoes','taina@teste.com.br','taina2012','35656898998','Financeiro','Financeiro',2000.00,2,0,1,1,'2013-05-20 15:52:48','2013-05-20 15:52:48',2),(32,'ricardo','Ricardo Barbosa','ricardo@teste.com.br','taina2012','25368996587','Fabrica de Software','Desenvolvedor',2358.96,2,1,1,1,'2013-05-20 16:04:59','2013-05-20 16:14:14',1),(33,'lucas','Siesley Lucas','siesley@teste.com.br','taina2012','45258989699','infra','Técnico',2456.82,6,1,1,1,'2013-05-20 16:28:30','2013-05-20 16:28:30',1);
/*!40000 ALTER TABLE `tblusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'leonecosta08'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-19 14:53:55
