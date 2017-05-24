-- MySQL dump 10.13  Distrib 5.6.23, for linux-glibc2.5 (x86_64)
--
-- Host: mysql04-farm58.kinghost.net    Database: leonecosta09
-- ------------------------------------------------------
-- Server version	5.6.27-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `NomeCategoria` varchar(100) NOT NULL,
  `NomeCategoriaMenu` varchar(100) DEFAULT NULL,
  `NomeCategoria_SEO` varchar(100) DEFAULT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `grupocategoria_idGrupoCategoria` int(11) NOT NULL,
  `OpcaoMenu` tinyint(1) NOT NULL,
  `Url` varchar(255) DEFAULT NULL,
  `Ordem` int(11) NOT NULL DEFAULT '0',
  `ImagemEntidade` text,
  `TamanhoImagemEntidade` int(11) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  KEY `fk_categoria_grupocategoria1` (`grupocategoria_idGrupoCategoria`),
  CONSTRAINT `fk_categoria_grupocategoria1` FOREIGN KEY (`grupocategoria_idGrupoCategoria`) REFERENCES `grupocategoria` (`idGrupoCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (11,'2013','2013','2013',4,4,1,24,1,'',0,'Galeria de Fotos\\galeria1.jpg',50588),(12,'2013','2013','2013',4,4,1,28,1,'',0,NULL,0),(13,'2012','2012','2012',4,4,1,24,1,'',0,'Galeria de Fotos\\galeria2012.jpg',24628),(14,'Sobre nós','Sobre nós','Sobre nos',4,4,1,29,1,'',0,NULL,0),(15,'2013','2013','2013',4,4,1,27,1,'',0,NULL,0);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracao`
--

DROP TABLE IF EXISTS `configuracao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuracao` (
  `idConfiguracao` int(11) NOT NULL AUTO_INCREMENT,
  `TituloSystema` varchar(200) DEFAULT NULL,
  `EmailDestino` varchar(200) DEFAULT NULL,
  `LogoSistema` text,
  `ImagemMarcaDAgua` text,
  `QtdRegistrosPorPagina` int(10) NOT NULL,
  `OpcoesRegistrosPorPagina` varchar(100) DEFAULT NULL,
  `LarguraImagens` int(10) NOT NULL,
  `EspacoDiscoTotal` double DEFAULT NULL,
  `EspacoDiscoLivre` double DEFAULT NULL,
  `AtivarMarcaDAgua` tinyint(1) NOT NULL,
  `CorTextoMarcaDAgua` varchar(20) DEFAULT NULL,
  `TextoMarcaDAgua` varchar(50) DEFAULT NULL,
  `AtivarCacheamentoPaginas` tinyint(1) NOT NULL,
  `DuracaoCache` int(10) NOT NULL,
  `AtivarEdicaoFrontEnd` tinyint(1) NOT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `RedesSociais` varchar(25) DEFAULT NULL,
  `TemaEditorTextoAdm` int(10) DEFAULT '1',
  `QuantidadeCaracteresParaBusca` int(10) DEFAULT '1',
  `MetaTagDescricao` text,
  `MetaTagPalavrasChave` text,
  `RastreaMentoGoogle` text,
  `OutrasMetaTag` text,
  `MetaTagTitulo` varchar(255) DEFAULT NULL,
  `AtivarRedimensionamento` tinyint(1) NOT NULL,
  `IdGrupoBanners` int(11) NOT NULL DEFAULT '1',
  `IdsGaleriaCategoria` varchar(200) NOT NULL DEFAULT '24;',
  `IdsGaleriaConteudo` varchar(200) NOT NULL DEFAULT '24;',
  `ManterBannerEmCache` tinyint(1) NOT NULL,
  `IdGaleriaFotos` int(11) NOT NULL DEFAULT '24',
  PRIMARY KEY (`idConfiguracao`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracao`
--

LOCK TABLES `configuracao` WRITE;
/*!40000 ALTER TABLE `configuracao` DISABLE KEYS */;
INSERT INTO `configuracao` VALUES (42,'Hard Extreme','contato@leonecosta.com.br',NULL,NULL,10,'10,25,50,100',800,8772470702.08,8579197173.76,0,'f2fa5a','Har Extreme',0,10,0,1,4,'1,2,3,4,5,6,',2,1,'A HARD EXTREME É UMA LOJA DE SUPLEMENTAÇÃO ESPORTIVA E ARTIGOS DE LUTAS.','Suplementos, Academia, Musculacao, Fitness, Treino, Masssa Muscular, Perda de peso, Ganho de Massa.','<!--VEFIFICACAO DO GOOGLE ANALITICS SITE www.leonecostarocha.com.br-->\r\n    <script type=\"text/javascript\">\r\n        var _gaq = _gaq || [];\r\n        _gaq.push([\'_setAccount\', \'UA-18418909-1\']);\r\n        _gaq.push([\'_trackPageview\']);\r\n\r\n        (function () {\r\n            var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\r\n            ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\r\n            var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\r\n        })();\r\n\r\n    </script>\r\n    <!--VEFIFICACAO DO GOOGLE ANALITICS SITE www.leonecosta.com.br-->\r\n    <script type=\"text/javascript\">\r\n        var _gaq = _gaq || [];\r\n        _gaq.push([\'_setAccount\', \'UA-18418628-1\']);\r\n        _gaq.push([\'_trackPageview\']);\r\n\r\n        (function () {\r\n            var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\r\n            ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\r\n            var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\r\n        })();\r\n\r\n    </script>','<meta name=\"author\" content=\"Leone Costa Rocha\" /><meta name=\"reply-to\" content=\"contato@leonecosta.com.br\" /><meta name=\"copyright\" content=\"leonecosta.com.br\" /><link rev=\"made\" href=\"mailto:contato@leonecosta.com.bt\" /><meta name=\"url\" content=\"www.leonecosta.com.br\" /><meta name=\"category\" content=\"Programador\" /><meta name=\"distribution\" content=\"Global\" /><meta name=\"language\" content=\"pt-br\" /><meta name=\"rating\" content=\"General\" /><meta name=\"robots\" content=\"index, follow\" /><meta name=\"revisit-after\" content=\"3\" /><meta http-equiv=\"cache-control\" content=\"no-cache\" /><meta name=\"msnbot\" content=\"NOODP\" /><meta name=\"MSSmartTagsPreventParsing\" content=\"TRUE\" />\r\n    <!--VEFIFICACAO DO GOOGLE WEBMASTER SITE www.leonecostarocha.com.br-->\r\n    <meta name=\"google-site-verification\" content=\"3RA5NyiQjxTPV_EGW5eKelX1vg2VpxW7fE4SOGgUBHo\" />\r\n    <!--VEFIFICACAO DO GOOGLE WEBMASTER  SITE www.leonecosta.com.br-->\r\n    <meta name=\"google-site-verification\" content=\"Qmd7b2ZzuPLcRwYyl43-cgWjVjMtNYiMpofx_jdbQmg\" />','Hard Extreme',0,1,'24;','24;',0,24);
/*!40000 ALTER TABLE `configuracao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conteudo`
--

DROP TABLE IF EXISTS `conteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conteudo` (
  `idConteudo` int(11) NOT NULL AUTO_INCREMENT,
  `dataConteudo` datetime NOT NULL,
  `Titulo` varchar(200) NOT NULL,
  `Titulo_SEO` varchar(200) DEFAULT NULL,
  `Descricao` text,
  `Texto` text,
  `Ativo` tinyint(1) NOT NULL,
  `Url` varchar(100) DEFAULT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `categoria_idCategoria` int(11) NOT NULL,
  `Ordem` int(11) NOT NULL DEFAULT '0',
  `ImagemEntidade` text,
  `TamanhoImagemEntidade` int(11) NOT NULL,
  PRIMARY KEY (`idConteudo`),
  KEY `fk_conteudo_categoria1` (`categoria_idCategoria`),
  CONSTRAINT `fk_conteudo_categoria1` FOREIGN KEY (`categoria_idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteudo`
--

LOCK TABLES `conteudo` WRITE;
/*!40000 ALTER TABLE `conteudo` DISABLE KEYS */;
INSERT INTO `conteudo` VALUES (11,'2013-11-03 00:00:00','Videos Testes','Videos Testes','',NULL,1,'',4,4,12,0,NULL,0),(12,'2013-11-05 00:00:00','Galeria de fotos 1','Galeria de fotos 1','',NULL,1,'',4,4,11,0,'Galeria de Fotos\\Galeria de fotos 1\\galeria1.jpg',50588),(13,'2013-11-09 00:00:00','Galeria de fotos 2','Galeria de fotos 2','',NULL,1,'',4,4,11,1,'Galeria de Fotos\\2013\\galeria2.jpg',44707),(14,'2013-11-09 00:00:00','Galeria de fotos 3','Galeria de fotos 3','',NULL,1,'',4,4,11,3,'Galeria de Fotos\\2013\\galeria3.jpg',45596),(15,'2013-11-09 00:00:00','Galeria de fotos 4','Galeria de fotos 4','',NULL,1,'',4,4,11,0,'Galeria de Fotos\\2013\\galeria4.jpg',38036),(16,'2013-11-10 00:00:00','Quem Somos','Quem Somos','<p>asdfsadsadsad</p>\r\n<p></p>\r\n<p><object id=\"ebb98a5a-a8db-afab-3aab-e88ae989b08b\" width=\"0\" height=\"0\" type=\"application/gas-events-abn\"></object></p>',NULL,1,'',4,4,14,0,NULL,0),(17,'2013-11-14 00:00:00','Inauguração da 10ª loja, agora na zona Sul no Itaim Bibi, promoções especiais.','Inauguracao da 10 loja agora na zona Sul no Itaim Bibi promocoes especiais','<p><span>Inaugura&ccedil;&atilde;o da 10&ordf; loja, agora na zona Sul no Itaim Bibi, promo&ccedil;&otilde;es especiais.</span></p>',NULL,1,'',4,4,15,1,NULL,0),(18,'2013-11-14 00:00:00','Sed ut perspiciatis unde omnis iste natus error sit voluptatem','Sed ut perspiciatis unde omnis iste natus error sit voluptatem','<p><span>Sed ut perspiciatis unde omnis iste natus error sit voluptatem</span></p>',NULL,1,'',4,4,15,0,NULL,0),(19,'2013-11-14 00:00:00','Sed ut perspiciatis unde omnis iste natus error sit voluptatem1','Sed ut perspiciatis unde omnis iste natus error sit voluptatem1','<p><span>Sed ut perspiciatis unde omnis iste natus error sit voluptatem2</span></p>',NULL,1,'',4,4,15,0,NULL,0),(20,'2013-11-14 00:00:00','Sed ut perspiciatis unde omnis iste natus error sit voluptatem122','Sed ut perspiciatis unde omnis iste natus error sit voluptatem122','<p><span>Sed ut perspiciatis unde omnis iste natus error sit voluptatem1asdas</span></p>',NULL,1,'',4,4,15,0,NULL,0);
/*!40000 ALTER TABLE `conteudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailsnewsletter`
--

DROP TABLE IF EXISTS `emailsnewsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailsnewsletter` (
  `IdNewsLetter` int(11) NOT NULL AUTO_INCREMENT,
  `DataNewsLetter` datetime NOT NULL,
  `Nome` varchar(45) DEFAULT NULL,
  `Sexo` varchar(2) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  PRIMARY KEY (`IdNewsLetter`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailsnewsletter`
--

LOCK TABLES `emailsnewsletter` WRITE;
/*!40000 ALTER TABLE `emailsnewsletter` DISABLE KEYS */;
INSERT INTO `emailsnewsletter` VALUES (5,'2013-11-13 21:14:54',NULL,NULL,'leocr_lem@yahoo.com.br',1,4,4);
/*!40000 ALTER TABLE `emailsnewsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupocategoria`
--

DROP TABLE IF EXISTS `grupocategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupocategoria` (
  `idGrupoCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `NomeGrupo` varchar(100) NOT NULL,
  `NomeGrupoMenu` varchar(100) DEFAULT NULL,
  `NomeGrupo_SEO` varchar(200) DEFAULT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `OpcaoMenu` tinyint(1) NOT NULL,
  `Url` varchar(255) DEFAULT NULL,
  `Ordem` int(11) NOT NULL DEFAULT '0',
  `ImagemEntidade` text,
  `TamanhoImagemEntidade` int(11) NOT NULL,
  PRIMARY KEY (`idGrupoCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupocategoria`
--

LOCK TABLES `grupocategoria` WRITE;
/*!40000 ALTER TABLE `grupocategoria` DISABLE KEYS */;
INSERT INTO `grupocategoria` VALUES (24,'Galeria de Fotos','Galeria','Galeria de Fotos',4,4,1,1,'',4,NULL,65305),(25,'Dicas Importantes','Dicas','Dicas Importantes',4,4,1,1,'',6,NULL,0),(26,'Nossos Produtos','Produtos','Nossos Produtos',4,4,1,1,'',5,NULL,0),(27,'Eventos da HARD','Eventos','Eventos da HARD',4,4,1,0,'',0,NULL,0),(28,'Vídeos HARD','Vídeos','Videos HARD',4,4,1,0,'',0,NULL,0),(29,'Empresa','Empresa','Empresa',4,4,1,1,'',1,NULL,0),(30,'Lojas','Lojas','Lojas',4,4,1,1,'',2,NULL,0),(31,'Marcas','Marcas','Marcas',4,4,1,1,'',3,NULL,0),(118,'Receitas','Receitas','Receitas',4,4,1,1,'',7,NULL,0);
/*!40000 ALTER TABLE `grupocategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupomidias`
--

DROP TABLE IF EXISTS `grupomidias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupomidias` (
  `idGrupoMidias` int(11) NOT NULL AUTO_INCREMENT,
  `NomeGrupo` varchar(100) NOT NULL,
  `NomeGrupo_SEO` varchar(200) DEFAULT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idGrupoMidias`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupomidias`
--

LOCK TABLES `grupomidias` WRITE;
/*!40000 ALTER TABLE `grupomidias` DISABLE KEYS */;
INSERT INTO `grupomidias` VALUES (1,'Banners','Banners',4,4,1),(2,'Imagens','Imagens',4,4,1),(3,'Arquivos','Arquivos',4,4,1);
/*!40000 ALTER TABLE `grupomidias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagens_categoria`
--

DROP TABLE IF EXISTS `imagens_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagens_categoria` (
  `idImagens` int(11) NOT NULL AUTO_INCREMENT,
  `DataImagem` datetime NOT NULL,
  `Titulo` varchar(45) NOT NULL,
  `Arquivo` text,
  `Tamanho` int(11) NOT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `categoria_idCategoria` int(11) NOT NULL,
  `Principal` tinyint(1) NOT NULL,
  `Ordem` int(11) NOT NULL DEFAULT '0',
  `AtivarExibicaoHome` tinyint(1) NOT NULL,
  PRIMARY KEY (`idImagens`),
  KEY `fk_imagens_categoria_categoria1` (`categoria_idCategoria`),
  CONSTRAINT `fk_imagens_categoria_categoria1` FOREIGN KEY (`categoria_idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens_categoria`
--

LOCK TABLES `imagens_categoria` WRITE;
/*!40000 ALTER TABLE `imagens_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagens_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagens_grupo`
--

DROP TABLE IF EXISTS `imagens_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagens_grupo` (
  `idImagens` int(11) NOT NULL AUTO_INCREMENT,
  `DataImagem` datetime NOT NULL,
  `Titulo` varchar(45) NOT NULL,
  `Arquivo` text,
  `Tamanho` int(11) NOT NULL,
  `GrupoCategoriaID` int(11) NOT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `Principal` tinyint(1) NOT NULL,
  `Ordem` int(11) NOT NULL DEFAULT '0',
  `AtivarExibicaoHome` tinyint(1) NOT NULL,
  PRIMARY KEY (`idImagens`),
  KEY `imagens_grupo_GrupoCategoria_FK` (`GrupoCategoriaID`),
  CONSTRAINT `imagens_grupo_GrupoCategoria_FK` FOREIGN KEY (`GrupoCategoriaID`) REFERENCES `grupocategoria` (`idGrupoCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens_grupo`
--

LOCK TABLES `imagens_grupo` WRITE;
/*!40000 ALTER TABLE `imagens_grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagens_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagensconteudo`
--

DROP TABLE IF EXISTS `imagensconteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagensconteudo` (
  `idImagens` int(11) NOT NULL AUTO_INCREMENT,
  `DataImagem` datetime NOT NULL,
  `Titulo` varchar(45) NOT NULL,
  `Arquivo` text,
  `Tamanho` int(11) NOT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `conteudo_idConteudo` int(11) NOT NULL,
  `Principal` tinyint(1) NOT NULL,
  `Ordem` int(11) NOT NULL DEFAULT '0',
  `AtivarExibicaoHome` tinyint(1) NOT NULL,
  PRIMARY KEY (`idImagens`),
  KEY `fk_imagensconteudo_conteudo1` (`conteudo_idConteudo`),
  CONSTRAINT `fk_imagensconteudo_conteudo1` FOREIGN KEY (`conteudo_idConteudo`) REFERENCES `conteudo` (`idConteudo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagensconteudo`
--

LOCK TABLES `imagensconteudo` WRITE;
/*!40000 ALTER TABLE `imagensconteudo` DISABLE KEYS */;
INSERT INTO `imagensconteudo` VALUES (1,'2013-11-09 00:00:00','1','Galeria de Fotos\\2013\\60000824782.jpg',36176,4,4,1,12,0,0,0),(2,'2013-11-09 00:00:00','2','Galeria de Fotos\\2013\\60000845998.jpg',40823,4,4,1,12,0,0,0),(3,'2013-11-09 00:00:00','3','Galeria de Fotos\\2013\\asf03783.jpg',44615,4,4,1,12,0,0,0),(4,'2013-11-09 00:00:00','4','Galeria de Fotos\\2013\\slide1.jpg',45806,4,4,1,12,0,0,0),(5,'2013-11-09 00:00:00','5','Galeria de Fotos\\2013\\slide2.jpg',44930,4,4,1,12,0,0,0),(6,'2013-11-09 00:00:00','6','Galeria de Fotos\\2013\\slide4.jpg',46500,4,4,1,12,0,0,0),(14,'2013-11-16 00:00:00','HE','Galeria de Fotos\\2013\\home_imagem05.jpg',65305,4,4,1,12,0,0,1);
/*!40000 ALTER TABLE `imagensconteudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `midias`
--

DROP TABLE IF EXISTS `midias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `midias` (
  `idMidias` int(11) NOT NULL AUTO_INCREMENT,
  `DataArquivo` datetime NOT NULL,
  `Descricao` varchar(255) DEFAULT NULL,
  `Url_link` varchar(200) DEFAULT NULL,
  `Arquivo` text,
  `Tamanho` int(11) NOT NULL,
  `TipoArquivo` varchar(10) NOT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `GrupoMidiasID` int(11) NOT NULL,
  `Principal` tinyint(1) NOT NULL,
  `Ordem` int(11) DEFAULT NULL,
  `AjusteTamanhoImagens` tinyint(1) NOT NULL,
  PRIMARY KEY (`idMidias`),
  KEY `fk_Midias_grupoMidias` (`GrupoMidiasID`),
  CONSTRAINT `fk_Midias_grupoMidias` FOREIGN KEY (`GrupoMidiasID`) REFERENCES `grupomidias` (`idGrupoMidias`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `midias`
--

LOCK TABLES `midias` WRITE;
/*!40000 ALTER TABLE `midias` DISABLE KEYS */;
INSERT INTO `midias` VALUES (13,'2013-11-03 00:00:00','Teste 1',NULL,'Banners\\01.png',352728,'.png',4,4,1,1,0,1,0),(14,'2013-11-03 00:00:00','teste 2 ',NULL,'Banners\\02.png',331543,'.png',4,4,1,1,0,2,1),(15,'2013-11-03 00:00:00','teste 3',NULL,'Banners\\03.png',381429,'.png',4,4,1,1,0,3,0);
/*!40000 ALTER TABLE `midias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_applications`
--

DROP TABLE IF EXISTS `my_aspnet_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_applications`
--

LOCK TABLES `my_aspnet_applications` WRITE;
/*!40000 ALTER TABLE `my_aspnet_applications` DISABLE KEYS */;
INSERT INTO `my_aspnet_applications` VALUES (1,'/','MySQL Role provider');
/*!40000 ALTER TABLE `my_aspnet_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_membership`
--

DROP TABLE IF EXISTS `my_aspnet_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_membership` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `Email` varchar(128) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `Password` varchar(128) NOT NULL,
  `PasswordKey` char(32) DEFAULT NULL,
  `PasswordFormat` tinyint(4) DEFAULT NULL,
  `PasswordQuestion` varchar(255) DEFAULT NULL,
  `PasswordAnswer` varchar(255) DEFAULT NULL,
  `IsApproved` tinyint(1) DEFAULT NULL,
  `LastActivityDate` datetime DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  `LastPasswordChangedDate` datetime DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `IsLockedOut` tinyint(1) DEFAULT NULL,
  `LastLockedOutDate` datetime DEFAULT NULL,
  `FailedPasswordAttemptCount` int(10) unsigned DEFAULT NULL,
  `FailedPasswordAttemptWindowStart` datetime DEFAULT NULL,
  `FailedPasswordAnswerAttemptCount` int(10) unsigned DEFAULT NULL,
  `FailedPasswordAnswerAttemptWindowStart` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_membership`
--

LOCK TABLES `my_aspnet_membership` WRITE;
/*!40000 ALTER TABLE `my_aspnet_membership` DISABLE KEYS */;
INSERT INTO `my_aspnet_membership` VALUES (3,'contato@leonecosta.com.br','','ipnYJpeLwyZhqwLZ3avUsg==','N2ptsOhp3BlYHMuYMPTTgw==',0,'Hacunabatata','Hacunabatata',1,'2013-11-15 22:59:37','2013-11-15 22:59:37','2012-06-29 22:17:11','2012-06-29 22:17:11',0,'2013-10-26 17:29:36',1,'2013-11-15 22:55:57',0,'2012-06-29 22:17:11'),(4,'leocr_lem@yahoo.com.br','','ipnYJpeLwyZhqwLZ3avUsg==','/+ypgsVYEYRgB8mqlFDICw==',0,'Hacunabatata','Hacunabatata',1,'2013-11-17 14:47:13','2013-11-17 14:47:13','2012-09-24 15:18:01','2012-09-24 15:18:01',0,'2013-10-26 17:27:35',0,'2013-10-26 17:25:45',0,'2012-09-24 15:18:01');
/*!40000 ALTER TABLE `my_aspnet_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_profiles`
--

DROP TABLE IF EXISTS `my_aspnet_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_profiles` (
  `userId` int(11) NOT NULL,
  `valueindex` longtext,
  `stringdata` longtext,
  `binarydata` longblob,
  `lastUpdatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_profiles`
--

LOCK TABLES `my_aspnet_profiles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_roles`
--

DROP TABLE IF EXISTS `my_aspnet_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_roles`
--

LOCK TABLES `my_aspnet_roles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_roles` DISABLE KEYS */;
INSERT INTO `my_aspnet_roles` VALUES (8,1,'Visitor'),(9,1,'Admin'),(11,1,'Outro');
/*!40000 ALTER TABLE `my_aspnet_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_schemaversion`
--

DROP TABLE IF EXISTS `my_aspnet_schemaversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_schemaversion` (
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_schemaversion`
--

LOCK TABLES `my_aspnet_schemaversion` WRITE;
/*!40000 ALTER TABLE `my_aspnet_schemaversion` DISABLE KEYS */;
INSERT INTO `my_aspnet_schemaversion` VALUES (7);
/*!40000 ALTER TABLE `my_aspnet_schemaversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_sessioncleanup`
--

DROP TABLE IF EXISTS `my_aspnet_sessioncleanup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_sessioncleanup` (
  `LastRun` datetime NOT NULL,
  `IntervalMinutes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_sessioncleanup`
--

LOCK TABLES `my_aspnet_sessioncleanup` WRITE;
/*!40000 ALTER TABLE `my_aspnet_sessioncleanup` DISABLE KEYS */;
INSERT INTO `my_aspnet_sessioncleanup` VALUES ('2012-06-25 19:06:38',10);
/*!40000 ALTER TABLE `my_aspnet_sessioncleanup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_sessions`
--

DROP TABLE IF EXISTS `my_aspnet_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_sessions` (
  `SessionId` varchar(255) NOT NULL,
  `ApplicationId` int(11) NOT NULL,
  `Created` datetime NOT NULL,
  `Expires` datetime NOT NULL,
  `LockDate` datetime NOT NULL,
  `LockId` int(11) NOT NULL,
  `Timeout` int(11) NOT NULL,
  `Locked` tinyint(1) NOT NULL,
  `SessionItems` longblob,
  `Flags` int(11) NOT NULL,
  PRIMARY KEY (`SessionId`,`ApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_sessions`
--

LOCK TABLES `my_aspnet_sessions` WRITE;
/*!40000 ALTER TABLE `my_aspnet_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_users`
--

DROP TABLE IF EXISTS `my_aspnet_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationId` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `isAnonymous` tinyint(1) NOT NULL DEFAULT '1',
  `lastActivityDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_users`
--

LOCK TABLES `my_aspnet_users` WRITE;
/*!40000 ALTER TABLE `my_aspnet_users` DISABLE KEYS */;
INSERT INTO `my_aspnet_users` VALUES (3,1,'Fulano',0,'2013-11-15 22:59:37'),(4,1,'Leone',0,'2013-11-17 14:47:13');
/*!40000 ALTER TABLE `my_aspnet_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_usersinroles`
--

DROP TABLE IF EXISTS `my_aspnet_usersinroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_usersinroles` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_usersinroles`
--

LOCK TABLES `my_aspnet_usersinroles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_usersinroles` DISABLE KEYS */;
INSERT INTO `my_aspnet_usersinroles` VALUES (3,8),(3,11),(4,8),(4,9),(4,11);
/*!40000 ALTER TABLE `my_aspnet_usersinroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traducao`
--

DROP TABLE IF EXISTS `traducao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traducao` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Classe` varchar(255) NOT NULL,
  `Propriedade` varchar(255) NOT NULL,
  `ObjetoId` int(10) NOT NULL,
  `Idioma` varchar(10) NOT NULL,
  `Valor` text NOT NULL,
  `UsuarioInsercaoId` int(10) NOT NULL,
  `DataInsercao` datetime NOT NULL,
  `UsuarioAlteracaoId` int(10) NOT NULL,
  `DataAlteracao` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traducao`
--

LOCK TABLES `traducao` WRITE;
/*!40000 ALTER TABLE `traducao` DISABLE KEYS */;
INSERT INTO `traducao` VALUES (17,'GrupoCategoria','NomeGrupoMenu',24,'en-US','teste',4,'0001-01-01 00:00:00',4,'0001-01-01 00:00:00');
/*!40000 ALTER TABLE `traducao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT COMMENT '	',
  `Nome` varchar(45) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Login` varchar(50) DEFAULT NULL,
  `Senha` varchar(25) DEFAULT NULL,
  `SenhaHASH` text,
  `Ativo` tinyint(1) NOT NULL,
  `Admin` tinyint(1) NOT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Leone','contato@leonecosta.com.br','zsasasd','',NULL,1,0,0,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videocategoria`
--

DROP TABLE IF EXISTS `videocategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videocategoria` (
  `IdVideo` int(11) NOT NULL AUTO_INCREMENT,
  `DataVideo` datetime NOT NULL,
  `Titulo` varchar(45) NOT NULL,
  `ImagemPreview` text,
  `TamanhoImagemPreview` int(11) NOT NULL,
  `Incorporar` text,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `Principal` tinyint(1) NOT NULL,
  `Ordem` int(11) NOT NULL DEFAULT '0',
  `AtivarExibicaoHome` tinyint(1) NOT NULL,
  PRIMARY KEY (`IdVideo`),
  KEY `fk_videogcategoria_Categoria` (`CategoriaID`),
  CONSTRAINT `fk_videogcategoria_Categoria` FOREIGN KEY (`CategoriaID`) REFERENCES `categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videocategoria`
--

LOCK TABLES `videocategoria` WRITE;
/*!40000 ALTER TABLE `videocategoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `videocategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videoconteudo`
--

DROP TABLE IF EXISTS `videoconteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videoconteudo` (
  `IdVideo` int(11) NOT NULL AUTO_INCREMENT,
  `DataVideo` datetime NOT NULL,
  `Titulo` varchar(45) NOT NULL,
  `Incorporar` text,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `ConteudoID` int(11) NOT NULL,
  `Principal` tinyint(1) NOT NULL,
  `Ordem` int(11) NOT NULL DEFAULT '0',
  `AtivarExibicaoHome` tinyint(1) NOT NULL,
  `ImagemPreview` text,
  `TamanhoImagemPreview` int(11) NOT NULL,
  PRIMARY KEY (`IdVideo`),
  KEY `fk_videoconteudo_conteudo` (`ConteudoID`),
  CONSTRAINT `fk_videoconteudo_conteudo` FOREIGN KEY (`ConteudoID`) REFERENCES `conteudo` (`idConteudo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videoconteudo`
--

LOCK TABLES `videoconteudo` WRITE;
/*!40000 ALTER TABLE `videoconteudo` DISABLE KEYS */;
INSERT INTO `videoconteudo` VALUES (4,'2013-11-03 00:00:00','Video sobre musculação 1','http://www.youtube.com/v/aSET1KRfwf4?autoplay=1&rel=0&enablejsapi=1&playerapiid=ytplayer',4,4,1,11,0,0,0,'Vídeos HARD\\2013\\0.png',99512),(5,'2013-11-03 00:00:00','Video sobre musculação 2','http://www.youtube.com/v/J1Y4XY8Pl6U?autoplay=1&rel=0&enablejsapi=1&playerapiid=ytplayer',4,4,1,11,0,0,0,'Vídeos HARD\\2013\\1.png',77687),(6,'2013-11-03 00:00:00','Video sobre musculação 3','http://www.youtube.com/v/l7cYizwUdm8?autoplay=1&rel=0&enablejsapi=1&playerapiid=ytplayer',4,4,1,11,0,0,0,'Vídeos HARD\\2013\\2.png',54658),(7,'2013-11-03 00:00:00','Video sobre musculação 4','http://www.youtube.com/v/6enp4Mo0xy4?autoplay=1&rel=0&enablejsapi=1&playerapiid=ytplayer',4,4,1,11,0,0,0,'Vídeos HARD\\2013\\3.png',76726),(21,'2013-11-15 00:00:00','Arnold - Pai da Musculação [RDA]','www.youtube.com/embed/LthWytE0wX8',4,4,0,11,0,0,1,'Vídeos HARD\\2013\\arnold.jpg',7336);
/*!40000 ALTER TABLE `videoconteudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videogrupocategoria`
--

DROP TABLE IF EXISTS `videogrupocategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videogrupocategoria` (
  `IdVideo` int(11) NOT NULL AUTO_INCREMENT,
  `DataVideo` datetime NOT NULL,
  `Titulo` varchar(45) NOT NULL,
  `ImagemPreview` text,
  `TamanhoImagemPreview` int(11) NOT NULL,
  `Incorporar` text,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `GrupoCategoriaID` int(11) NOT NULL,
  `Principal` tinyint(1) NOT NULL,
  `Ordem` int(11) NOT NULL DEFAULT '0',
  `AtivarExibicaoHome` tinyint(1) NOT NULL,
  PRIMARY KEY (`IdVideo`),
  KEY `fk_videogrupocategoria_GrupoCategoria` (`GrupoCategoriaID`),
  CONSTRAINT `fk_videogrupocategoria_GrupoCategoria` FOREIGN KEY (`GrupoCategoriaID`) REFERENCES `grupocategoria` (`idGrupoCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videogrupocategoria`
--

LOCK TABLES `videogrupocategoria` WRITE;
/*!40000 ALTER TABLE `videogrupocategoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `videogrupocategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'leonecosta09'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-19 14:54:03
