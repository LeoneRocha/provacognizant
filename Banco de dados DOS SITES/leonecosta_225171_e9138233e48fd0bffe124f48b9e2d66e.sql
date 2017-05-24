-- MySQL dump 10.13  Distrib 5.6.23, for linux-glibc2.5 (x86_64)
--
-- Host: mysql04-farm58.kinghost.net    Database: leonecosta
-- ------------------------------------------------------
-- Server version	5.6.27-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ArquivosBin`
--

DROP TABLE IF EXISTS `ArquivosBin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ArquivosBin` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Arquivo` longblob,
  `MIME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ArquivosBin`
--

LOCK TABLES `ArquivosBin` WRITE;
/*!40000 ALTER TABLE `ArquivosBin` DISABLE KEYS */;
INSERT INTO `ArquivosBin` VALUES (6,NULL,'image/jpeg');
/*!40000 ALTER TABLE `ArquivosBin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agendaSemanal`
--

DROP TABLE IF EXISTS `agendaSemanal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agendaSemanal` (
  `IdAgenda` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DiaSemana` varchar(50) DEFAULT NULL,
  `Data` datetime DEFAULT NULL,
  `Local` text,
  `Descicao` text,
  `Horario` datetime DEFAULT NULL,
  `Valor` decimal(10,0) DEFAULT NULL,
  `Site` text,
  `Email` text,
  PRIMARY KEY (`IdAgenda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendaSemanal`
--

LOCK TABLES `agendaSemanal` WRITE;
/*!40000 ALTER TABLE `agendaSemanal` DISABLE KEYS */;
/*!40000 ALTER TABLE `agendaSemanal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bairro` (
  `bai_codigo` int(11) DEFAULT NULL,
  `bai_nome` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'Tucuruvi            '),(2,'Jabaquara           '),(3,'Barra Funda         '),(4,'Itaquera            '),(5,'Centro              '),(6,'Santana             '),(7,'Sé                  '),(8,'Luz'),(9,'Sacoma              '),(10,'Ibirabuera          '),(11,'Paraiso             ');
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastro`
--

DROP TABLE IF EXISTS `cadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cadastro` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) DEFAULT NULL,
  `email` text,
  `telefone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro`
--

LOCK TABLES `cadastro` WRITE;
/*!40000 ALTER TABLE `cadastro` DISABLE KEYS */;
INSERT INTO `cadastro` VALUES (1,'Leone','leone@bambooartes.com.br',88518843),(2,'Leone Costa Rocha','leocr_lem@yahoo.com.br',797895984);
/*!40000 ALTER TABLE `cadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `IdCategoria` int(3) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT '0',
  PRIMARY KEY (`IdCategoria`),
  UNIQUE KEY `IdCategoria` (`IdCategoria`),
  KEY `IdCategoria_2` (`IdCategoria`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Escrita'),(2,'Escolar'),(3,'Papeis'),(4,'Escritorio'),(5,'Informatica');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `fone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'João Pedro','2365-1234'),(2,'Guilherme Silva','2365-3698'),(3,'Marcos Luiz','2365-9871'),(4,'Vilma Soares','2365-1456'),(5,'Ana Garcia','2365-8521'),(6,'Luis Augusto','2365-3698'),(7,'André Luiz','2365-2583'),(8,'Pedro Guilherme','2365-1472'),(9,'Anderson Pinto','2365-8901'),(10,'Ariana Peres','2365-4567'),(11,'Walkiria','88382590'),(12,'Leone','4654');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contato` (
  `pkContatoID` int(11) NOT NULL AUTO_INCREMENT,
  `fkEmpresaID` int(11) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Telefone` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Observacao` longtext,
  PRIMARY KEY (`pkContatoID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `IdCursos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Data` decimal(10,0) DEFAULT NULL,
  `Situacao` int(11) DEFAULT NULL,
  `ValorPromocional` enum('True','False') DEFAULT NULL,
  `DiaSemana` text,
  `Ritmo` text,
  `Professor` text,
  `HorarioInicial` datetime DEFAULT NULL,
  `HorarioFinal` datetime DEFAULT NULL,
  `Obs` text,
  PRIMARY KEY (`IdCursos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `pkEmpresaID` int(11) NOT NULL AUTO_INCREMENT,
  `RazaoSocial` varchar(50) DEFAULT NULL,
  `NomeFantasia` varchar(50) NOT NULL,
  `CNPJ` varchar(50) DEFAULT NULL,
  `Endereco` varchar(50) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `Estado` varchar(2) DEFAULT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pkEmpresaID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'Agencia Bamboo de Artes e Internet LDTA','Agencia Bamboo Artes','123456789','Rua Central Nº 00','São Paulo','SP','88518843'),(2,'Agencia Bamboo de Artes e Internet LDTA','Agencia Bamboo de Artes e Internet LDTA','1',NULL,NULL,NULL,NULL),(3,'wererew','dsfsdf',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoque` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `preco` double(10,2) DEFAULT NULL,
  `quantidade` int(10) unsigned DEFAULT NULL,
  `vendidos` int(10) unsigned DEFAULT NULL,
  `IdCategoria` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,'Caderno',11.00,100,30,3),(2,'Borracha',1.00,80,50,2),(3,'Lapiseira',1.00,60,20,2),(4,'Folhas',16.00,40,30,3),(5,'Apontador',0.60,20,20,2),(6,'Caneta Preta',1.50,70,40,1),(7,'Caneta Azul',1.40,50,25,1),(8,'Caneta Verde',1.60,30,15,1),(9,'Fichario',25.50,100,15,3);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginacesso`
--

DROP TABLE IF EXISTS `loginacesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginacesso` (
  `UserID` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(50) DEFAULT '0',
  `Email` varchar(50) DEFAULT '0',
  `Login` varchar(15) NOT NULL DEFAULT '0',
  `Senha` varchar(16) NOT NULL DEFAULT '0',
  `Strcripto` longtext,
  PRIMARY KEY (`UserID`),
  KEY `UserID` (`UserID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginacesso`
--

LOCK TABLES `loginacesso` WRITE;
/*!40000 ALTER TABLE `loginacesso` DISABLE KEYS */;
INSERT INTO `loginacesso` VALUES (1,'Leone','leone@bambooartes.com.br','leocr','teste',NULL),(2,'Fulano','suporte@bambooartes.com.br','spba','teste','698DC19D489C4E4DB73E28A713EAB07B'),(3,'teste','teste','leoteste','teste','698DC19D489C4E4DB73E28A713EAB07B');
/*!40000 ALTER TABLE `loginacesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto`
--

DROP TABLE IF EXISTS `projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projeto` (
  `pkProjetoID` int(11) NOT NULL AUTO_INCREMENT,
  `fkEmpresaID` int(11) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `DataInicio` datetime DEFAULT NULL,
  `DataFim` datetime DEFAULT NULL,
  `Observacao` longtext,
  PRIMARY KEY (`pkProjetoID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto`
--

LOCK TABLES `projeto` WRITE;
/*!40000 ALTER TABLE `projeto` DISABLE KEYS */;
INSERT INTO `projeto` VALUES (1,NULL,'Projeto1','2010-04-01 00:00:00','2010-04-30 00:00:00',NULL),(2,NULL,'Projeto2','2010-05-01 00:00:00','2010-05-31 00:00:00',NULL);
/*!40000 ALTER TABLE `projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarefa`
--

DROP TABLE IF EXISTS `tarefa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarefa` (
  `pkTarefaID` int(11) NOT NULL AUTO_INCREMENT,
  `fkProjetoID` int(11) DEFAULT NULL,
  `Descricao` longtext,
  `DataInicial` datetime DEFAULT NULL,
  `DataFinal` datetime DEFAULT NULL,
  PRIMARY KEY (`pkTarefaID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefa`
--

LOCK TABLES `tarefa` WRITE;
/*!40000 ALTER TABLE `tarefa` DISABLE KEYS */;
INSERT INTO `tarefa` VALUES (1,1,'tarefa  2 do projeto 1 a',NULL,NULL),(2,1,'tarefa 1 do projeto 1',NULL,NULL),(3,2,'tarefa 2 do projeto 2',NULL,NULL),(4,2,'tarefa 1 do projeto 2',NULL,NULL),(5,NULL,'dfdsfds',NULL,NULL);
/*!40000 ALTER TABLE `tarefa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploadarquivos`
--

DROP TABLE IF EXISTS `uploadarquivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploadarquivos` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(50) DEFAULT NULL,
  `Descricao` longtext,
  `Arquivo` longtext,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploadarquivos`
--

LOCK TABLES `uploadarquivos` WRITE;
/*!40000 ALTER TABLE `uploadarquivos` DISABLE KEYS */;
INSERT INTO `uploadarquivos` VALUES (1,'4','4','ninfeias.jpg'),(2,'3','3','montanhas.jpg'),(3,'2','2','Inverno.jpg'),(4,'cara','modelo','EXEMPLOWEBMASTER.jpg'),(8,'','','SOBRE CRIPTOGRAFIA.docx'),(6,'5','5','pordosol.jpg'),(7,'asdsa','<p><strong>Digite aqui</strong></p>','2qqqqqqq.jpg'),(9,'','','ler excel net.docx'),(10,'','','ler excel net.docx'),(25,'fhgfh','<p>ghd</p>','LOGIN.txt'),(24,'asdfsd','<p>Digite aasdfqui</p>','Country.txt'),(23,'asdfsd','<p>Digite aasdfqui</p>','LOGIN.txt');
/*!40000 ALTER TABLE `uploadarquivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'leonecosta'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-19 14:52:22
