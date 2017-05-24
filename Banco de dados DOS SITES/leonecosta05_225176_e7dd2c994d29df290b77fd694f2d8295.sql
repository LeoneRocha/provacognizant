-- MySQL dump 10.13  Distrib 5.6.23, for linux-glibc2.5 (x86_64)
--
-- Host: mysql04-farm58.kinghost.net    Database: leonecosta05
-- ------------------------------------------------------
-- Server version	5.6.27-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `ConteudoView`
--

DROP TABLE IF EXISTS `ConteudoView`;
/*!50001 DROP VIEW IF EXISTS `ConteudoView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ConteudoView` AS SELECT 
 1 AS `idConteudo`,
 1 AS `dataConteudo`,
 1 AS `Titulo`,
 1 AS `Descricao`,
 1 AS `Texto`,
 1 AS `Ativo`,
 1 AS `Url`,
 1 AS `NomeCategoria`,
 1 AS `NomeGrupo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `NomeCategoria` varchar(100) NOT NULL,
  `NomeCategoria_SEO` varchar(100) DEFAULT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `grupocategoria_idGrupoCategoria` int(11) NOT NULL,
  `OpcaoMenu` tinyint(1) NOT NULL,
  `Url` varchar(255) DEFAULT NULL,
  `Ordem` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idCategoria`),
  KEY `fk_categoria_grupocategoria1` (`grupocategoria_idGrupoCategoria`),
  CONSTRAINT `fk_categoria_grupocategoria1` FOREIGN KEY (`grupocategoria_idGrupoCategoria`) REFERENCES `grupocategoria` (`idGrupoCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Quem Somos','Quem Somos',2,2,1,1,1,'http://modelositecms.leonecosta.com.br/Empresa/Quem-Somos/Quem-Somos',1),(5,'Nossos Serviços','Nossos Servicos',2,2,1,2,1,'http://modelositecms.leonecosta.com.br/Servicos/Nossos-Servicos/Servicos',1);
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
  PRIMARY KEY (`idConfiguracao`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracao`
--

LOCK TABLES `configuracao` WRITE;
/*!40000 ALTER TABLE `configuracao` DISABLE KEYS */;
INSERT INTO `configuracao` VALUES (42,'ABA Serviços','leocr_lem@yahoo.com.br','Sistema\\TEste\\57106555_1.jpg','Sistema\\TEste1\\nc-cms.png',6,'5,10,25,50',800,7516192768,7461431934.976,0,'f2fa5a','Aba Servicos',0,1,0,1,2,'1,2,3,4,5,6,',2,1,'Serviços terceirizados, da melhor qualidade e com o melhor preço','manutenção, prédio, limpeza, segurança, serviços, terceirizado, orçamento, melhor, barato, promoção, desconto.','<script type=\"text/javascript\">\r\n        var _gaq = _gaq || [];\r\n        _gaq.push([\'_setAccount\', \'UA-18418628-1\']);\r\n        _gaq.push([\'_trackPageview\']);\r\n\r\n        (function () {\r\n            var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\r\n            ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\r\n            var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\r\n        })();\r\n\r\n    </script>','<meta name=\"google-site-verification\" content=\"Qmd7b2ZzuPLcRwYyl43-cgWjVjMtNYiMpofx_jdbQmg\" />',':: Aba Serviços-portaria-limpeza-zeladoria-serviços gerais ::');
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
  PRIMARY KEY (`idConteudo`),
  KEY `fk_conteudo_categoria1` (`categoria_idCategoria`),
  CONSTRAINT `fk_conteudo_categoria1` FOREIGN KEY (`categoria_idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteudo`
--

LOCK TABLES `conteudo` WRITE;
/*!40000 ALTER TABLE `conteudo` DISABLE KEYS */;
INSERT INTO `conteudo` VALUES (1,'2012-11-06 00:00:00','Quem Somos','Quem Somos','<h2><span style=\"color: #339966;\"><strong>Quem Somos</strong></span></h2>\r\n<p>A ABA Servi&ccedil;os Ltda. &eacute; resultado de mais de 5 anos de experi&ecirc;ncia no ramo de portaria e limpeza, pois o Sr. Welton Dantas, diretor e fundador respons&aacute;vel, juntou sua experi&ecirc;ncia de mercado com sua forma&ccedil;&atilde;o profissional, para desenvolver um centro onde seus clientes possa encontrar um amplo servi&ccedil;o tanto em portaria, quanto limpeza, servi&ccedil;os de manuten&ccedil;&atilde;o, suportes as grandes eventos, recep&ccedil;&atilde;o e at&eacute; jardinagens que cuida carinhosamente do seu condom&iacute;nio.</p>\r\n<p>Hoje a ABA est&aacute; &agrave; procura de inova&ccedil;&otilde;es e tecnologias que garanta melhorias na presta&ccedil;&atilde;o de seus servi&ccedil;os al&eacute;m de formar parcerias com os administradores que est&atilde;o sempre preocupados com a seguran&ccedil;a de seus cond&ocirc;minos.</p>\r\n<p>A empresa al&eacute;m de procurar prestar um excelente servi&ccedil;o, tem o cuidado na contrata&ccedil;&atilde;o de seus profissionais que s&atilde;o totalmente treinados e preparados para a execu&ccedil;&atilde;o de seus trabalhos. Prestamos servi&ccedil;os em diversas regi&otilde;es e diversos tipos de patrim&ocirc;nios como, por exemplo, o SESC ITAQUERA, pois nossa empresa possui uma completa estrutura, operacional, t&eacute;cnica e jur&iacute;dica que garante um &oacute;timo suporte cont&aacute;bil aos contratantes de nossos servi&ccedil;os.</p>\r\n<h2><br /><span style=\"color: #339966;\"><strong>Miss&atilde;o</strong></span></h2>\r\n<p>A ABA Servi&ccedil;os Ltda. tem como miss&atilde;o atender as necessidades de nossos clientes, protegendo e preservando seus patrim&ocirc;nios imobili&aacute;rios como particularidades nossas, assim, suas preocupa&ccedil;&otilde;es s&atilde;o as nossas, e sua satisfa&ccedil;&atilde;o &eacute; o nosso compromisso.<br />Vis&atilde;o</p>\r\n<p>Com o foco destes aumentos de criminalidade praticados em condom&iacute;nios fechados, ABA procurou a cada dia preparar e treinar seus profissionais, que buscam solu&ccedil;&otilde;es adequadas para cada situa&ccedil;&atilde;o, tendo agilidades nas tomadas de decis&otilde;es, realizando um atendimento totalmente personalizado que garante a tranq&uuml;ilidade aos nossos clientes.</p>\r\n<h2><br /><span style=\"color: #339966;\"><strong>Princ&iacute;pios e Valores</strong></span></h2>\r\n<p><strong>Colaboradores</strong><br />N&oacute;s, da ABA Servi&ccedil;os Ltda., somos pessoas flex&iacute;veis, pr&oacute;-ativas, dispon&iacute;veis, &iacute;ntegras, isentas de preconceitos e discrimina&ccedil;&otilde;es. Com amplo conhecimento no ramo que atuamos e motivados pelo ambiente de confian&ccedil;a, pelo senso de eq&uuml;idade e justi&ccedil;a e pelos desafios impostos pelas demandas de nosso neg&oacute;cio.</p>\r\n<p><strong>Clientes</strong></p>\r\n<p>A ABA, mant&eacute;m com seus clientes, uma rela&ccedil;&atilde;o construtivas, flex&iacute;veis e de longo prazo, entregando solu&ccedil;&otilde;es que superam suas expectativas quanto &agrave; qualidade de nossos servi&ccedil;os, pois a satisfa&ccedil;&atilde;o de nossos clientes, &eacute; o nosso compromisso.</p>\r\n<p><strong>Identidade Cultural</strong><br />N&oacute;s, adotamos pol&iacute;ticas uniformes, respeitando valores e peculiaridades culturais das pessoas que est&atilde;o ao nosso redor, assim atuamos de forma que promovemos a integra&ccedil;&atilde;o das pessoas, o entendimento, o respeito m&uacute;tuo e a unicidade corporativa independente de ra&ccedil;a, cor, religi&atilde;o ou n&iacute;vel social.</p>\r\n<h2><strong><span style=\"color: #339966;\">Comportamento &Eacute;tico</span></strong></h2>\r\n<p>A ABA Servi&ccedil;os Ltda. tem um relacionamento com o seu p&uacute;blico alvo, amigos, parceiro e todas as partes interessadas que s&atilde;o fundamentadas na &eacute;tica e sua reciprocidade. Neste contexto estamos comprometidos com:</p>\r\n<ul>\r\n<li>Boas pr&aacute;ticas de governan&ccedil;a;</li>\r\n<li>Combate &agrave; pirataria, sonega&ccedil;&atilde;o, fraude e corrup&ccedil;&atilde;o;</li>\r\n<li>Pr&aacute;ticas leais de concorr&ecirc;ncia;</li>\r\n<li>Direitos da crian&ccedil;a e do adolescente;</li>\r\n<li>Inclus&atilde;o social e valorizamos o car&aacute;ter humano.</li>\r\n</ul>',NULL,1,'',2,2,1,0),(3,'2012-11-06 00:00:00','Serviços','Servicos','<table style=\"width: 97%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"5\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td class=\"titulogrande3\" style=\"text-align: center;\" bgcolor=\"#83C525\" width=\"50%\">Portaria</td>\r\n<td class=\"titulogrande3\" style=\"text-align: center;\" bgcolor=\"#83C525\" width=\"50%\">Limpeza</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><img src=\"http://www.abaservicos.com.br/images/interna_servicos01.jpg\" alt=\"\" width=\"360\" height=\"202\" /></td>\r\n<td style=\"text-align: center;\"><img src=\"http://www.abaservicos.com.br/images/interna_servicos02.jpg\" alt=\"\" width=\"360\" height=\"202\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"titulogrande3\" style=\"text-align: center;\" bgcolor=\"#83C525\">Jardinagem</td>\r\n<td class=\"titulogrande3\" style=\"text-align: center;\" bgcolor=\"#83C525\">Zeladoria</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><img src=\"http://www.abaservicos.com.br/images/interna_servicos03.jpg\" alt=\"\" width=\"360\" height=\"202\" /></td>\r\n<td style=\"text-align: center;\"><img src=\"http://www.abaservicos.com.br/images/interna_servicos04.jpg\" alt=\"\" width=\"360\" height=\"202\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\" bgcolor=\"#83C525\"><span class=\"titulogrande3\">Servi&ccedil;os Gerais</span></td>\r\n<td style=\"text-align: center;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><img src=\"http://www.abaservicos.com.br/images/interna_servicos05.jpg\" alt=\"\" width=\"360\" height=\"202\" /></td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>',NULL,1,'',2,2,5,1);
/*!40000 ALTER TABLE `conteudo` ENABLE KEYS */;
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
  `NomeGrupo_SEO` varchar(200) DEFAULT NULL,
  `UsuarioInsercaoId` int(11) NOT NULL,
  `UsuarioAlteracaoId` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `OpcaoMenu` tinyint(1) NOT NULL,
  `Url` varchar(255) DEFAULT NULL,
  `Ordem` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idGrupoCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupocategoria`
--

LOCK TABLES `grupocategoria` WRITE;
/*!40000 ALTER TABLE `grupocategoria` DISABLE KEYS */;
INSERT INTO `grupocategoria` VALUES (1,'Empresa','Empresa',2,2,1,1,'',1),(2,'Serviços','Servicos',2,2,1,1,'',2),(3,'Clientes','Clientes',2,2,1,1,'',3),(4,'Parcerias','Parcerias',2,2,1,1,'',4);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupomidias`
--

LOCK TABLES `grupomidias` WRITE;
/*!40000 ALTER TABLE `grupomidias` DISABLE KEYS */;
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
  PRIMARY KEY (`idImagens`),
  KEY `fk_imagensconteudo_conteudo1` (`conteudo_idConteudo`),
  CONSTRAINT `fk_imagensconteudo_conteudo1` FOREIGN KEY (`conteudo_idConteudo`) REFERENCES `conteudo` (`idConteudo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagensconteudo`
--

LOCK TABLES `imagensconteudo` WRITE;
/*!40000 ALTER TABLE `imagensconteudo` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `midias`
--

LOCK TABLES `midias` WRITE;
/*!40000 ALTER TABLE `midias` DISABLE KEYS */;
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
INSERT INTO `my_aspnet_membership` VALUES (2,'contato@leonecosta.com.br','','ipnYJpeLwyZhqwLZ3avUsg==','Cn3i6ophmuTLX1LN5uLHgQ==',0,'Hacunabatata','Hacunabatata',1,'2013-10-12 12:57:11','2013-10-12 12:57:11','2012-06-29 22:17:11','2012-06-29 22:17:11',0,'2012-06-29 22:17:11',0,'2012-06-29 22:17:11',0,'2012-06-29 22:17:11'),(3,'leocr_lem@yahoo.com.br','','nzZqZ79M+GQfEmhNupiZsA==','N2ptsOhp3BlYHMuYMPTTgw==',0,'Hacunabatata','Hacunabatata',1,'2012-08-01 13:54:30','2012-08-01 13:54:30','2012-07-10 19:28:24','2012-07-10 19:28:24',0,'2012-07-10 19:28:24',0,'2012-07-10 19:28:24',0,'2012-07-10 19:28:24');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_users`
--

LOCK TABLES `my_aspnet_users` WRITE;
/*!40000 ALTER TABLE `my_aspnet_users` DISABLE KEYS */;
INSERT INTO `my_aspnet_users` VALUES (2,1,'Usuario Master',0,'2013-10-12 12:57:11'),(3,1,'Fulano',0,'2012-08-01 13:54:30');
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
INSERT INTO `my_aspnet_usersinroles` VALUES (2,9),(2,11),(3,8),(3,11);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traducao`
--

LOCK TABLES `traducao` WRITE;
/*!40000 ALTER TABLE `traducao` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Leone','contato@leonecosta.com.br','zsasasd','',NULL,1,0,0,1),(2,'Walkiria',NULL,NULL,NULL,NULL,0,0,0,0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'leonecosta05'
--

--
-- Final view structure for view `ConteudoView`
--

/*!50001 DROP VIEW IF EXISTS `ConteudoView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`leonecosta05`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ConteudoView` AS select `conteudo`.`idConteudo` AS `idConteudo`,`conteudo`.`dataConteudo` AS `dataConteudo`,`conteudo`.`Titulo` AS `Titulo`,`conteudo`.`Descricao` AS `Descricao`,`conteudo`.`Texto` AS `Texto`,`conteudo`.`Ativo` AS `Ativo`,`conteudo`.`Url` AS `Url`,`categoria`.`NomeCategoria` AS `NomeCategoria`,`grupocategoria`.`NomeGrupo` AS `NomeGrupo` from ((`conteudo` join `categoria` on((`conteudo`.`categoria_idCategoria` = `categoria`.`idCategoria`))) join `grupocategoria` on((`categoria`.`grupocategoria_idGrupoCategoria` = `grupocategoria`.`idGrupoCategoria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-19 14:53:27
