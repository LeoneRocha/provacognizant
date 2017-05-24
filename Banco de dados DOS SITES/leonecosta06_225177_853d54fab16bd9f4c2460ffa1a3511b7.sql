-- MySQL dump 10.13  Distrib 5.6.23, for linux-glibc2.5 (x86_64)
--
-- Host: mysql04-farm58.kinghost.net    Database: leonecosta06
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (3,'Quem sou eu','Quem sou eu',2,2,1,19,0,'',0),(4,'Serviços Web','Servicos Web',2,2,1,20,0,'',0),(5,'Produtos Web','Produtos Web',2,2,1,21,0,'',0),(6,'Gerenciador de Conteúdo','Gerenciador de Conteudo',2,2,1,21,1,'http://leonecosta.com.br/Produtos/Gerenciador-de-Conteudo/CMS',0),(7,'E-commerce','E-commerce',2,4,0,21,0,'http://leonecosta.com.br/Produtos/E-commerce/Lojas-Virtuais',0),(8,'Atendimento Online','Atendimento Online',2,4,0,21,0,'http://leonecosta.com.br/Produtos/Atendimento-Online/Chat-Comercial',0),(9,'Currículo','Curriculo',2,2,1,19,1,'http://leonecosta.com.br/Sobre-mim/Curriculo/Curriculum-Vitae',0),(10,'Ajuda','Ajuda',2,2,1,23,0,'',0);
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
INSERT INTO `configuracao` VALUES (42,'Leone Costa Rocha','contato@leonecosta.com.br','Sistema\\Leone Costa\\logo.png','Sistema\\Leone Costa\\logo.png',10,'10,25,50,100',800,8772470702.08,8579197173.76,0,'f2fa5a','Leone Rocha',0,10,1,1,4,'1,2,3,4,5,6,',2,1,'Site pessoal de Leone Costa Rocha, desenvolvedor web. Trabalho com ASP.NET, ASP, SQL Server, MySQL, Ajax e Javascript. Este site contém meu currículo e informações para contato. Desenvolvimento de Sistemas Web Microsoft.','desenvolvedor, desenvolvedor web, programador, programador web, Sistemas, sp, sao paulo, padroes web, padrões web, webstandards, web standards, acessibilidade, usabilidade, html, xhtml, css, javascript,sql,mysql, sql server, access, db2, Cobol, Asp.Net, C#, Ajax, Soluções para Internet, Currículo, MCP, MTA, MCTS.','<!--VEFIFICACAO DO GOOGLE ANALITICS SITE www.leonecostarocha.com.br-->\r\n    <script type=\"text/javascript\">\r\n        var _gaq = _gaq || [];\r\n        _gaq.push([\'_setAccount\', \'UA-18418909-1\']);\r\n        _gaq.push([\'_trackPageview\']);\r\n\r\n        (function () {\r\n            var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\r\n            ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\r\n            var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\r\n        })();\r\n\r\n    </script>\r\n    <!--VEFIFICACAO DO GOOGLE ANALITICS SITE www.leonecosta.com.br-->\r\n    <script type=\"text/javascript\">\r\n        var _gaq = _gaq || [];\r\n        _gaq.push([\'_setAccount\', \'UA-18418628-1\']);\r\n        _gaq.push([\'_trackPageview\']);\r\n\r\n        (function () {\r\n            var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\r\n            ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\r\n            var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\r\n        })();\r\n\r\n    </script>','<meta name=\"author\" content=\"Leone Costa Rocha\" /><meta name=\"reply-to\" content=\"contato@leonecosta.com.br\" /><meta name=\"copyright\" content=\"leonecosta.com.br\" /><link rev=\"made\" href=\"mailto:contato@leonecosta.com.bt\" /><meta name=\"url\" content=\"www.leonecosta.com.br\" /><meta name=\"category\" content=\"Programador\" /><meta name=\"distribution\" content=\"Global\" /><meta name=\"language\" content=\"pt-br\" /><meta name=\"rating\" content=\"General\" /><meta name=\"robots\" content=\"index, follow\" /><meta name=\"revisit-after\" content=\"3\" /><meta http-equiv=\"cache-control\" content=\"no-cache\" /><meta name=\"msnbot\" content=\"NOODP\" /><meta name=\"MSSmartTagsPreventParsing\" content=\"TRUE\" />\r\n    <!--VEFIFICACAO DO GOOGLE WEBMASTER SITE www.leonecostarocha.com.br-->\r\n    <meta name=\"google-site-verification\" content=\"3RA5NyiQjxTPV_EGW5eKelX1vg2VpxW7fE4SOGgUBHo\" />\r\n    <!--VEFIFICACAO DO GOOGLE WEBMASTER  SITE www.leonecosta.com.br-->\r\n    <meta name=\"google-site-verification\" content=\"Qmd7b2ZzuPLcRwYyl43-cgWjVjMtNYiMpofx_jdbQmg\" />','Leone Costa | Microsoft MCP | MCTS | MTA | Desenvolvedor e Programador Web - Asp.Net C# - São Paulo, SP');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteudo`
--

LOCK TABLES `conteudo` WRITE;
/*!40000 ALTER TABLE `conteudo` DISABLE KEYS */;
INSERT INTO `conteudo` VALUES (3,'2012-08-25 00:00:00','Sobre mim','Sobre mim','<p align=\"justify\">Apaixonado por inform&aacute;tica desde 2000. Sou tecn&oacute;logo em Web Designer (Designer Gr&aacute;fico) desde 2009. Inicialmente minha &aacute;rea de interesse foi de trabalhar com cria&ccedil;&atilde;o de sites e cria&ccedil;&atilde;o de artes gr&aacute;ficas, mas me identifiquei com a parte de programa&ccedil;&atilde;o web por ter habilidade e maior aptid&atilde;o profissional que se juntou ao gosto de criar sites.</p>\r\n<p align=\"justify\">Gosto de trabalhar com linguagens de programa&ccedil;&atilde;o voltadas para web com VBScript (em ASP cl&aacute;ssico) e C# (em Asp.Net) na qual eu me admirei pelo seu poder no desenvolvimento. Cursos que eu fiz para aprimoramento prossional foram de : MCTS ASP.NET + Visual Studio 2008: ADO.NET 3.5, SQL SERVER 2005 e VB.NET 2005, Programador Mainframe ( Sistema operacional Z/OS 390, Cobol Batch e Online, Modelagem de Dados, DB2, CICS). Tenho conhecimentos em Mysql, Access, e experi&ecirc;ncia de trabalho de 2 anos e 6 meses com ASP.</p>\r\n<p align=\"justify\">Atualmente trabalho como WebMaster e/ou Programador Asp em uma empresa de consultoria e marketing sediada em S&atilde;o Paulo &ndash; Capital no desenvolvimento de websites, cria&ccedil;&atilde;o e melhorando sistemas em ASP com banco de dados access ou mysql, cria&ccedil;&atilde;o de sistemas de CMS, email-marketing, newsletter etc.</p>\r\n<p align=\"justify\"><span>Atrav&eacute;s de minha experi&ecirc;ncia, hoje sou um Profissional Certificado (MCP / MCTS / MTA) na plataforma Microsoft <a href=\"../Geral/Download.aspx?caminhoArquivo=YBQnycP%2fU2j1CVQw%2fXxiFb5inSzP6iGEyAX5t%2boxWyf6xgw5f2iTmnyHv6u79%2fSC\" target=\"_blank\">Download Microsoft Transcript</a></span></p>\r\n<table style=\"width: 200px;\" border=\"0\" cellspacing=\"5\" cellpadding=\"5\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img title=\"Logo Microsoft Certified Professsional\" src=\"../../certificados/certificacoes/MCP_TRANS.png\" alt=\"Logo Microsoft Certified Professsional\" width=\"262\" height=\"117\" /> <img title=\"Logo Microsoft Certified Technology Specialist\" src=\"../../certificados/certificacoes/MCTS_TRANS_ALL.png\" alt=\"Logo Microsoft Certified Technology Specialist\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Logo Microsoft Certified Technology Specialist | 70-515 | Web Applications Development with Microsoft .NET Framework 4 \" src=\"../../certificados/certificacoes/MCTS_TRANS.png\" alt=\"Logo Microsoft Certified Technology Specialist | 70-515 | Web Applications Development with Microsoft .NET Framework 4 \" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Logo Microsoft Technology Associate | 98-361| Software Development Fundamentals\" src=\"../../certificados/certificacoes/MTA_98-361.png\" alt=\"Logo Microsoft Technology Associate | 98-361| Software Development Fundamentals\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Link Workana:&nbsp;<a href=\"https://www.workana.com/w/leone-costa-rocha\">https://www.workana.com/w/leone-costa-rocha</a></p>',NULL,1,'',2,4,3,0),(4,'2012-08-25 00:00:00','Meus Serviços','Meus Servicos','<div class=\"entry bullet-list\">\r\n<ul>\r\n<li><a href=\"#1\">Desenvolvimento&nbsp;<em>server-side</em>&nbsp;e&nbsp;<em>front-end</em></a></li>\r\n<li><a href=\"#2\">Desenvolvimento e manuten&ccedil;&atilde;o de sistemas em ASP &ldquo;Cl&aacute;ssico&rdquo;</a></li>\r\n<li><a href=\"#3\">Desenvolvimento e manuten&ccedil;&atilde;o de sistemas em ASP.NET</a></li>\r\n<li><a href=\"#4\">Desenvolvimento de Intranet / Extranet</a></li>\r\n<li><a href=\"#5\">Desenvolvimento, manuten&ccedil;&atilde;o e migra&ccedil;&atilde;o de banco de dados Access, MySQL e MsSQL (Sql Server 2005/2008)</a>.</li>\r\n<li><a href=\"#6\">Desenvolvimento e manuten&ccedil;&atilde;o de sistemas em COBOL.</a></li>\r\n<li><a href=\"#7\">Manuten&ccedil;&atilde;o de banco de dados DB2</a></li>\r\n</ul>\r\n</div>\r\n<hr />\r\n<p>&nbsp;</p>\r\n<h4>Desenvolvimento&nbsp;<em>server-side</em>&nbsp;e&nbsp;<em>front-end</em> <a id=\"1\" name=\"1\"></a></h4>\r\n<p class=\"style5\" align=\"justify\"><strong>Server-side</strong>, ou literalmente \"lado do servidor\", &eacute; um termo usado para designar opera&ccedil;&otilde;es que, em um contexto cliente-servidor, s&atilde;o feitas no servidor, n&atilde;o no cliente.<br /> Existem v&aacute;rias raz&otilde;es para isso: desde o meio poder de processamento do servidor, at&eacute; a presen&ccedil;a de softwares ou recursos que estejam dispon&iacute;veis apenas no servidor.<br /> <strong>Front-end</strong> &eacute; ooposto de server-side &eacute; Client Side Scripts, que designa opera&ccedil;&otilde;es feitas na esta&ccedil;&atilde;o de trabalho do usu&aacute;rio.<br /> Front-end e back-end s&atilde;o termos generalizados que referem-se &agrave;s etapas inicial e final de um processo. O front-end &eacute; respons&aacute;vel por coletar a entrada em v&aacute;rias formas do usu&aacute;rio e process&aacute;-la para adequ&aacute;-la a uma especifica&ccedil;&atilde;o &uacute;til para o back-end. O front-end &eacute; uma esp&eacute;cie de interface entre o usu&aacute;rio e o back-end.</p>\r\n<h4>Desenvolvimento e manuten&ccedil;&atilde;o de sistemas em ASP &ldquo;Cl&aacute;ssico&rdquo;<a id=\"2\" name=\"2\"></a></h4>\r\n<p class=\"style5\" align=\"justify\">O ASP (de Active Server Pages) &eacute; uma estrutura de bibliotecas b&aacute;sicas (e n&atilde;o uma linguagem) para processamento de linguagens de script no lado servidor para gera&ccedil;&atilde;o de conte&uacute;do din&acirc;mico na Web. Exemplos de linguagens aceitas s&atilde;o: VBScript, JScript, PerlScript, TCL ou Python sendo que apenas as duas primeiras s&atilde;o suportadas por padr&atilde;o.</p>\r\n<p class=\"style5\" align=\"justify\">Ele roda/corre nativamente em servidores Windows, atrav&eacute;s do servi&ccedil;o chamado de IIS (Internet Information Service) - o servidor web da Microsoft, ou do PWS (Personal Web Server) em ambientes com Windows 98. Al&eacute;m disso ele pode rodar/correr em outras plataformas, como Linux no servidor Apache quando usando um M&oacute;dulo de um programa como o Tomcat.<br /> O script &eacute; interpretado no lado do servidor e o que &eacute; enviado ao lado do usu&aacute;rio/utilizador (navegador, por exemplo) &eacute; apenas a sa&iacute;da. que normalmente &eacute; uma linguagem de marca&ccedil;&atilde;o como HTML, XHTML ou XML.<br /> Linguagens como o Javascript e o VBScript podem ser processadas pelo navegador do visitante. Neste caso, este tem que suportar a linguagem. Contudo, como o ASP &eacute; processado pelo servidor, h&aacute; independ&ecirc;ncia de navegadores, uma vez que eles s&oacute; processar&atilde;o HTML.<br /> Atrav&eacute;s dessa tecnologia tamb&eacute;m &eacute; poss&iacute;vel executar consultas a Banco de Dados, atrav&eacute;s da biblioteca de componentes ActiveX.<br /> O uso desta tecnologia vem diminuindo sensivelmente pela matura&ccedil;&atilde;o da tecnologia .NET, sendo gradativamente substitu&iacute;do pelo ASP.NET que proporciona uma gama maior de recursos e um melhor desempenho.<br /> <strong>Quais as vantagens do ASP</strong>? <br /> Roda em qualquer browser - n&atilde;o h&aacute; problema com compatibilidade, pois as p&aacute;ginas s&atilde;o processadas no servidor e o conte&uacute;do html padr&atilde;o &eacute; enviado ao browser. Publicar banco de dados - permite a manipula&ccedil;&atilde;o de banco de dados (inclus&atilde;o, altera&ccedil;&atilde;o, exclus&atilde;o e consultas) utilizando um driver ODBC ou atrav&eacute;s de uma conex&atilde;o direta com MS-Access, SQL Server ou MySQL.<br /> C&oacute;digo seguro - como tudo &eacute; processado no servidor, n&atilde;o existe problema de altera&ccedil;&atilde;o no c&oacute;digo da p&aacute;gina, j&aacute; que o servidor retorna uma p&aacute;gina html para o browser.<br /> <strong>Porque usar o ASP?</strong> <br /> Por que &eacute; uma linguagem com muitos recursos e simples de usar, &eacute; processada no servidor e n&atilde;o no browser e permite combinar as linguagens HTML, Vbscript, JavaScript e PERL.</p>\r\n<h4>Desenvolvimento e manuten&ccedil;&atilde;o de sistemas em ASP.NET<a id=\"3\" name=\"3\"></a></h4>\r\n<p class=\"style5\" align=\"justify\">ASP.NET &eacute; a plataforma da Microsoft para o desenvolvimento de aplica&ccedil;&otilde;es Web e &eacute; o sucessor da tecnologia ASP. &Eacute; um componente do IIS que permite atrav&eacute;s de uma linguagem de programa&ccedil;&atilde;o integrada na .NET Framework criar p&aacute;ginas din&acirc;micas. N&atilde;o &eacute; nem uma linguagem de programa&ccedil;&atilde;o como VBScript, php, nem um servidor web como IIS, Apache.<br /> O ASP.NET &eacute; baseado no Framework .NET herdando todas as suas caracter&iacute;sticas, por isso, como qualquer aplica&ccedil;&atilde;o .NET, as aplica&ccedil;&otilde;es para essa plataforma podem ser escritas em v&aacute;rias linguagens, como C# e Visual Basic .NET.<br /> Embora se possa desenvolver aplica&ccedil;&otilde;es ASP.NET utilizando somente o notepad e o compilador .NET, o ambiente de desenvolvimento mais comum das aplica&ccedil;&otilde;es ASP.NET &eacute; o Visual Studio .NET j&aacute; que possui algumas caracter&iacute;sticas que facilitam o trabalho do programador, como os componentes visuais para cria&ccedil;&atilde;o de formul&aacute;rios de p&aacute;ginas Web.<br /> Uma aplica&ccedil;&atilde;o para web desenvolvida em ASP.NET pode reutilizar c&oacute;digo de qualquer outro projeto escrito para a plataforma .NET, mesmo que em linguagem diferente. Uma p&aacute;gina ASP.NET escrita em VB.NET pode chamar componentes escritos em C# ou Web Services escritos em C++, por exemplo. Ao contr&aacute;rio da tecnologia ASP, as aplica&ccedil;&otilde;es ASP.NET s&atilde;o compiladas antes da execu&ccedil;&atilde;o, trazendo sens&iacute;vel ganho de desempenho.<br /> As aplica&ccedil;&otilde;es Web ASP.NET necessitam do Framework .NET e do servidor IIS para executar, pelo menos na plataforma Windows. Existe tamb&eacute;m o projeto mod_aspdotnet, m&oacute;dulo que permite o servidor Apache HTTP Server trabalhar em conjunto com o Framework .NET e rodar aplica&ccedil;&otilde;es ASP.NET na plataforma Windows. O projeto Mono &eacute; um esfor&ccedil;o para permitir que aplica&ccedil;&otilde;es ASP.NET (na verdade toda a plataforma .NET) possam executar em outras plataformas, como o Linux.<br /> <strong>Porque usar o ASP e Quais as vantagens do ASP.NET ?</strong></p>\r\n<div align=\"justify\">\r\n<div class=\"entry bullet-list\">\r\n<ul>\r\n<li><strong>Produtividade do desenvolvedor: </strong>Modelo de programa&ccedil;&atilde;o simplificada, Op&ccedil;&otilde;es de idioma flex&iacute;veis, &Oacute;tima ferramenta de edi&ccedil;&atilde;o (Visual Studio)</li>\r\n<li><strong>Desempenho e escalabilidade: </strong>Sistema &eacute; compilado ao inv&eacute;s de interpretado, Cache Sa&iacute;da Extenso</li>\r\n<li><strong>Confiabilidade: </strong>Dispers&atilde;o de mem&oacute;ria, Deadlock e Prote&ccedil;&atilde;o contra crash</li>\r\n<li><strong>F&aacute;cil Implanta&ccedil;&atilde;o: </strong>Atualiza&ccedil;&atilde;o din&acirc;mica da aplica&ccedil;&atilde;o, F&aacute;cil migra&ccedil;&atilde;o de servidor para servidor</li>\r\n<li>Para mais informa&ccedil;&otilde;es acesse : <a href=\"http://technet.microsoft.com/pt-br/library/cc775831(WS.10).aspx\" target=\"_blank\"> http://technet.microsoft.com/pt-br/library/cc775831(WS.10).aspx</a> e / ou <a href=\"http://technet.microsoft.com/pt-pt/library/cc775831(WS.10).aspx\" target=\"_blank\"> http://technet.microsoft.com/pt-pt/library/cc775831(WS.10).aspx</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<h4>Desenvolvimento de Intranet / Extranet<a id=\"4\" name=\"4\"></a></h4>\r\n<p class=\"style5\" align=\"justify\"><strong>Intranets</strong> s&atilde;o redes corporativas que utilizam a tecnologia e a infra-estrutura de comunica&ccedil;&atilde;o de dados da Internet. S&atilde;o utilizadas na comunica&ccedil;&atilde;o interna da pr&oacute;pria empresa e/ou comunica&ccedil;&atilde;o independente da localiza&ccedil;&atilde;o f&iacute;sica destes departamentos e/ou divis&otilde;es que possam estar fisicamente separadas. <br /> Com a Intranet a empresa passa a interligar seus v&aacute;rios departamentos e unidades utilizando uma interface em estilo web que permite a integra&ccedil;&atilde;o de seus softwares administrativos e adiciona uma s&eacute;rie de funcionalidades inteiramente novas, como:<br /> Interliga&ccedil;&atilde;o de unidades da empresa fisicamente separadas;<br /> Redirecionamento de fluxos administrativos, aumentando sua efici&ecirc;ncia;<br /> Cria&ccedil;&atilde;o de um ambiente corporativo din&acirc;mico, onde as informa&ccedil;&otilde;es chegam rapidamente;<br /> Cria&ccedil;&atilde;o de uma identidade corporativa forte.<br /> A implanta&ccedil;&atilde;o de uma Intranet disponibiliza aos usu&aacute;rios da empresa, de forma simples e intuitiva, todas as informa&ccedil;&otilde;es organizadas em um &uacute;nico ponto de modo a permitir o acesso aonde quer que se esteja, seja dentro ou fora da empresa, utilizando um simples navegador.<br /> Novas inser&ccedil;&otilde;es atrav&eacute;s de um f&aacute;cil mecanismo de up load s&atilde;o disponibilizadas a todos causando uma diminui&ccedil;&atilde;o sens&iacute;vel no fluxo de pap&eacute;is, al&eacute;m da racionaliza&ccedil;&atilde;o de rotinas e processos.<br /> <strong> <br /> Extranet</strong> s&atilde;o os mesmos princ&iacute;pios e utiliza&ccedil;&otilde;es de uma intranet por&eacute;m aberta a colaboradores, clientes e fornecedores que n&atilde;o fazem parte do quadro funcional da empresa. Extranet tamb&eacute;m pode ser vista como uma parte da empresa que &eacute; estendida a usu&aacute;rios externos (\"rede extra-empresa\"), tais como representantes e clientes. Outro uso comum do termo Extranet ocorre na designa&ccedil;&atilde;o da \"parte privada\" de um site, onde somente \"usu&aacute;rios registrados\" podem navegar, previamente autenticados por sua senha (login).</p>\r\n<h4>Desenvolvimento, manuten&ccedil;&atilde;o e migra&ccedil;&atilde;o de banco de dados Access, MySQL e MsSQL (Sql Server 2005/2008).<a id=\"5\" name=\"5\"></a></h4>\r\n<p class=\"style5\" align=\"justify\">Banco de dados (ou base de dados), &eacute; um conjunto de registros dispostos em estrutura regular que possibilita a reorganiza&ccedil;&atilde;o dos mesmos e produ&ccedil;&atilde;o de informa&ccedil;&atilde;o. Um banco de dados normalmente agrupa registros utiliz&aacute;veis para um mesmo fim.<br /> Um banco de dados &eacute; usualmente mantido e acessado por meio de um software conhecido como Sistema Gerenciador de Banco de Dados (SGBD). Normalmente um SGBD adota um modelo de dados, de forma pura, reduzida ou estendida. Muitas vezes o termo banco de dados &eacute; usado, de forma err&ocirc;nea, como sin&ocirc;nimo de SGDB.<br /> O modelo de dados mais adotado hoje em dia &eacute; o modelo relacional, onde as estruturas t&ecirc;m a forma de tabelas, compostas por tuplas (linhas) e colunas.</p>\r\n<p class=\"style5\" align=\"justify\">Mais informa&ccedil;&otilde;es: <a href=\"http://pt.wikipedia.org/wiki/Banco_de_dados\" target=\"_blank\">http://pt.wikipedia.org/wiki/Banco_de_dados</a></p>\r\n<h4>Desenvolvimento e manuten&ccedil;&atilde;o de sistemas em COBOL.<a id=\"6\" name=\"6\"></a></h4>\r\n<p class=\"style5\" align=\"justify\">COBOL &eacute; uma linguagem de programa&ccedil;&atilde;o de Terceira Gera&ccedil;&atilde;o. Este nome &eacute; a sigla de COmmon Business Oriented Language (Linguagem Orientada aos Neg&oacute;cios), que define seu objetivo principal em sistemas comerciais, financeiros e administrativos para empresas e governos.<br /> O COBOL 2002 inclui suporte para programa&ccedil;&atilde;o orientada a objetos e outras caracter&iacute;sticas das linguagens modernas. Entretanto, a maior parte deste artigo est&aacute; baseado no COBOL 85.</p>\r\n<p class=\"style5\" align=\"justify\">Mais informa&ccedil;&otilde;es: <a href=\"http://pt.wikipedia.org/wiki/COBOL\" target=\"_blank\"> http://pt.wikipedia.org/wiki/COBOL</a></p>\r\n<h4>Manuten&ccedil;&atilde;o de banco de dados DB2 <a id=\"7\" name=\"7\"></a></h4>\r\n<p class=\"style5\" align=\"justify\">O DB2 &eacute; o Sistema Gerenciador de Banco de Dados Relacionais (SGDBR) produzido pela IBM. Existem diferentes vers&otilde;es do DB2 que rodam desde num simples PDA|computador de m&atilde;o, at&eacute; em potentes mainframes e funcionam em servidores baseados em sistemas Unix, Windows, ou Linux.</p>\r\n<p class=\"style5\" align=\"justify\">Mais informa&ccedil;&otilde;es: <a href=\"http://pt.wikipedia.org/wiki/DB2\" target=\"_blank\"> http://pt.wikipedia.org/wiki/DB2</a></p>',NULL,1,'',2,2,4,0),(5,'2012-08-25 00:00:00','Produtos','Produtos','<p>Criei produtos, para serem vendidos s&atilde;o vendidos, podendo ser personalizados de acordo com a necessidade do cliente, sem a necessidade de desenvolver um novo sistema exclusivo e pr&oacute;prio a partir do zero, otimizando assim, custos e prazos.</p>\r\n<p align=\"justify\">Abaixos sistemas e solu&ccedil;&otilde;es para seu neg&oacute;cio</p>\r\n<table class=\"estilo1\" style=\"width: 100%;\" border=\"0\" cellspacing=\"5\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td class=\"estilo3\" width=\"129px\"><img style=\"height: 102px; width: 161px;\" src=\"http://www.leonecosta.com.br/img/cms.jpg\" alt=\"\" /></td>\r\n<td class=\"estilo2\" valign=\"top\">\r\n<p><strong>Gerenciador de Conte&uacute;do - CMS</strong></p>\r\nTenha&nbsp; um sistema de gerenciamento de conte&uacute;do, desenvolvido para atualiza&ccedil;&atilde;o das informa&ccedil;&otilde;es dos sites, portais e intranets. Com o gerenciador de conte&uacute;do , voc&ecirc; tem liberdade para realizar altera&ccedil;&otilde;es a qualquer momento, com poucos cliques, de forma simples e r&aacute;pida, bastando ter um computador com acesso &agrave; internet. <a href=\"../../Produtos/Gerenciador-de-Conteudo/CMS\"> Saiba mais</a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"estilo3\" width=\"129px\"><img src=\"http://www.leonecosta.com.br/img/lojas-virtuais.jpg\" alt=\"\" width=\"130px\" height=\"130px\" /></td>\r\n<td class=\"estilo2\" valign=\"top\">\r\n<p><strong>Cria&ccedil;&atilde;o de Lojas Virtuais</strong></p>\r\nCria&ccedil;&atilde;o de lojas virtuais como caracter&iacute;sticas essenciais para o sucesso do seu neg&oacute;cio na internet entre em contato, eu posso criar a sua loja virtual. <a href=\"../../Produtos/E-commerce/Lojas-Virtuais\"> Saiba mais</a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"estilo3\"><img src=\"http://www.leonecosta.com.br/img/atendimento_online.jpg\" alt=\"\" width=\"130\" height=\"78\" /></td>\r\n<td class=\"estilo2\" valign=\"top\">\r\n<p><strong>Atendimento Online</strong></p>\r\n<p>Melhore sua comunica&ccedil;&atilde;o com o cliente! <br /> Aumente suas vendas, agilize o atendimento, reduza custos com linhas 0800 e tenha seu cliente satisfeito. <a href=\"../../Produtos/Atendimento-Online/Chat-Comercial\">Saiba mais</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"estilo3\" width=\"129px\"><img src=\"http://www.leonecosta.com.br/img/seo-e-tecnicas-search-engine-optimization.jpg\" alt=\"\" width=\"130\" height=\"84\" /></td>\r\n<td class=\"estilo2\" valign=\"top\">\r\n<p><strong>SEO &ndash; Otimiza&ccedil;&atilde;o de sites (SEO)</strong></p>\r\nSEO (Seach Engine Optimization) ou Otimiza&ccedil;&atilde;o de sites para mecanismos de busca (SEO), s&atilde;o as a&ccedil;&otilde;es aplicadas a um site, afim, de torna-lo melhor posicionado no ranking de buscas. Entre em contato comigo para mais detalhes.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p align=\"justify\">&nbsp;Abaixo os produtos personalizados que desenvolvi para clientes .</p>\r\n<div class=\"entry bullet-list\">\r\n<ul>\r\n<li>Sites Personalizados</li>\r\n<li>Sites Administr&aacute;veis</li>\r\n<li>Biblioteca on line</li>\r\n<li>Intranet</li>\r\n<li>Extranet</li>\r\n<li>Newsletter</li>\r\n<li>Galerias de imagens</li>\r\n<li>Gerenciamento de not&iacute;cias</li>\r\n<li>Gerenciamento de arquivos para downloads no site.</li>\r\n<li>Gera&ccedil;&atilde;o de Boletos Banc&aacute;rios On-Line</li>\r\n<li>Sistema de Email Marketing</li>\r\n<li>Sistema de Cadastro de Clientes</li>\r\n<li>Sistema de Controle de usu&aacute;rios</li>\r\n<li>Sistema de administra&ccedil;&atilde;o de banners</li>\r\n<li>Sistemas de Links</li>\r\n<li>Sistemas Personalizados</li>\r\n<li>Sistemas Personalizados</li>\r\n</ul>\r\n</div>',NULL,1,'',2,2,5,0),(6,'2012-08-29 00:00:00','CMS','CMS','<div align=\"center\"><img style=\"height: 102px; width: 161px;\" src=\"http://www.leonecosta.com.br/img/cms.jpg\" alt=\"\" /></div>\r\n<p align=\"justify\"><br /> Tenha&nbsp; um sistema de gerenciamento de conte&uacute;do, que foi desenvolvido para que atualiza&ccedil;&atilde;o de sites, portais e intranets seja bem simples e f&aacute;cil de fazer sem muitos conhecimentos t&eacute;cnicos ou espec&iacute;ficos.</p>\r\n<p align=\"justify\">Voc&ecirc; tem liberdade para realizar altera&ccedil;&otilde;es a qualquer momento, com poucos cliques, de forma simples e r&aacute;pida, bastando ter um computador com acesso &agrave; internet.</p>\r\n<p align=\"justify\">Pode ser implementado em pouco&nbsp; prazo&nbsp;&nbsp; e tamb&eacute;m pode ser hospedado em qualquer servidor Windows, com o Framework .NET e banco de dados MySql.</p>\r\n<p align=\"justify\">Caso voc&ecirc; j&aacute; possua um site e queira apenas implantar um gerenciador de conte&uacute;dos, n&oacute;s tamb&eacute;m podemos atend&ecirc;-lo.&nbsp;</p>\r\n<p align=\"justify\">Com o Gerenciador de Conte&uacute;do o seu site ir&aacute; melhorar a posi&ccedil;&atilde;o de busca no buscadores como o google. Pois o sistema implementar&aacute; SEO ao seu site. Gerando paginas com <a title=\"Clique aqui e saiba mais\" href=\"../../FAQ/Ajuda/URLs-Amigaveis\">urls amig&aacute;veis</a>&nbsp;</p>\r\n<hr />\r\n<h3 class=\"estiloTex\" align=\"justify\"><strong>- A quem se destina:</strong></h3>\r\n<p align=\"justify\">O CMS &eacute; uma solu&ccedil;&atilde;o que se destina a empresas, pessoas aut&ocirc;nomas, profissionais liberais que tenha algum neg&oacute;cio prorpio e que necessitam de liberdade e agilidade para atualizar informa&ccedil;&otilde;es referentes as suas informa&ccedil;&otilde;es institucionais, corporativas, pessoais, empresarial e as informa&ccedil;&otilde;es de seus servi&ccedil;os em seu web site.</p>\r\n<h3 class=\"estiloTex\" align=\"justify\">- Utiliza&ccedil;&atilde;o:</h3>\r\n<p align=\"justify\">Por n&atilde;o ser um sistema complexo de se utilizar, o CMS n&atilde;o imp&otilde;e dificuldades e recursos dif&iacute;ceis de utiliza&ccedil;&atilde;o no quesito t&eacute;cnico especializado, ou seja, qualquer pessoa sendo ela conhecendo ou n&atilde;o de inform&aacute;tica poder&aacute; manipular as informa&ccedil;&otilde;es do web site bastando apenas que tenha acesso a um computador conectado a internet e que tenha em m&atilde;os as informa&ccedil;&otilde;es referentes &agrave;s atualiza&ccedil;&otilde;es.</p>\r\n<h3 align=\"justify\">- Vantagens:</h3>\r\n<p>Todo o conte&uacute;do alterado &eacute; instantaneamente alterado no web site, voc&ecirc; consegue com extrema facilidade atualizar suas informa&ccedil;&otilde;es expostas sem que para isso seja necess&aacute;rio ter custo em forma de contrato de manuten&ccedil;&atilde;o.</p>\r\n<p><span style=\"color: #ff0000;\">** Acessiv&eacute;l em tablets e celulares com acesso a internet 3G ou Wi-fi</span></p>\r\n<h3><span style=\"color: #888888;\">&nbsp;- Recursos:</span></h3>\r\n<ul>\r\n<li>Gerenciamento de p&aacute;ginas e menus</li>\r\n<li>Editor HTML f&aacute;cil e amig&aacute;vel</li>\r\n<li>Sistema de busca nas p&aacute;ginas do site</li>\r\n<li>Acesso ao painel de controle mediante login e senha</li>\r\n<li>P&aacute;ginas ilimitadas</li>\r\n<li>SEO &ndash; Search Engine Otimization: p&aacute;ginas com title e meta-tags autom&aacute;ticas ou personalizadas</li>\r\n<li>Suporte a multi idiomas. Seu site em idiomas ilimitados para as p&aacute;ginas do site e as editorias de not&iacute;cias.</li>\r\n<li>Crie galerias de fotos ilimitadas</li>\r\n<li>F&aacute;cil atualiza&ccedil;&atilde;o de textos e imagens - conte&uacute;do atualizado on-line em tempo real em ambiente amig&aacute;vel atrav&eacute;s de qualquer Browser</li>\r\n<li>Acesso ao gerenciamento de p&aacute;ginas e not&iacute;cias mediante login e senha a partir de qualquer computador com acesso a internet</li>\r\n<li>Not&iacute;cias com recursos de foto principal (aparece na not&iacute;cia com recurso de zoom, nas not&iacute;cias destaque da home), galeria de fotos</li>\r\n</ul>\r\n<h3>&nbsp;- Detalhes t&eacute;cnicos do sistema:</h3>\r\n<ul>\r\n<li>Desenvolvido em C# .Net 4.0</li>\r\n<li>Banco de dados Mysql 5.5 ou superior</li>\r\n<li>Suporte a multi-Idiomas (nativo por padr&atilde;o ingl&ecirc;s e portugu&ecirc;s)</li>\r\n<li>Uso de Jquery UI para recursos visuais e funcionais.</li>\r\n<li>N-Camadas.</li>\r\n<li>Login de acesso de usu&aacute;rio com autentica&ccedil;&atilde;o criptografada</li>\r\n<li>Monitoramento em tempo real do servidor. Visualizando consumo de mem&oacute;ria e processador</li>\r\n<li>Sistema de gera&ccedil;&atilde;o de url amigav&eacute;is</li>\r\n<li>Sistema de Cacheamento de p&aacute;ginas no servidor para otimizar e melhorar performace do site.</li>\r\n</ul>',NULL,1,'',2,4,6,0),(7,'2012-08-29 00:00:00','Lojas Virtuais','Lojas Virtuais','<p>Em fase de atualiza&ccedil;&atilde;o</p>',NULL,0,'',2,4,7,0),(8,'2012-08-29 00:00:00','Chat Comercial','Chat Comercial','<p align=\"justify\">Este sistema de Atendimento permite &agrave; empresa ter um canal de comunica&ccedil;&atilde;o com seus clientes atrav&eacute;s do seu website sem grandes altera&ccedil;&otilde;es estruturais. Sua principal fun&ccedil;&atilde;o &eacute; a consulta r&aacute;pida pelos clientes que desejam informa&ccedil;&otilde;es quanto aos servi&ccedil;os e produtos da empresa e n&atilde;o conseguiram encontrar durante sua navega&ccedil;&atilde;o normal. Este &eacute; baseado em um programa de plataforma Web permitindo que o atendente fique online atrav&eacute;s de qualquer computador que tenha acesso a internet.</p>\r\n<p align=\"justify\">Fa&ccedil;a um tour na &aacute;rea administrativa</p>\r\n<p align=\"justify\"><strong> Endere&ccedil;o:&nbsp;<a href=\"http://www.leonecostarocha.com.br/chat/\" target=\"_blank\">http://www.leonecostarocha.com.br/chat/</a></strong></p>\r\n<p><strong> Nome do Usu&aacute;rio: </strong>admin <strong> Senha: </strong>teste</p>\r\n<p align=\"justify\"><strong>&Aacute;rea de contato do usu&aacute;rio</strong></p>\r\n<!-- Powered by:  Leone Costa        http://www.leonecosta.com.br/  -->\r\n<div id=\"Atendimento\">\r\n<script type=\"text/javascript\" src=\"http://leonecostarocha.com.br/chat/livehelp_js.php?eo=1&amp;department=1&amp;serversession=1&amp;pingtimes=15\"></script>\r\n<br /><br /></div>\r\n<!-- copyright -  2011 -->',NULL,0,'',2,4,8,0),(9,'2012-08-29 00:00:00','Curriculum Vitae','Curriculum Vitae','<p align=\"justify\"><strong>LEONE COSTA ROCHA</strong> <br /><strong>Bairro: </strong>Itaquera - <strong>Cidade:</strong> S&atilde;o Paulo -<strong> Estado:</strong> S&atilde;o Paulo.&nbsp;<br /> <strong>Celular: </strong>(11) 98851-8843 / 97989-5984 <br /> <strong>E-mail: </strong><a href=\"mailto:leocr_lem@yahoo.com.br\">leocr_lem@yahoo.com.br</a> &nbsp;<br /> <strong>Data de nascimento: </strong>22/11/1987 - Brasileiro</p>\r\n<p align=\"justify\"><span class=\"style2\"><strong>Objetivo Profissional </strong></span> <br /> Atuar numa das seguintes &aacute;reas: Programador Web, Programador .NET, Desenvolvedor Web .Net, &nbsp;Programador Cobol.<br /> <br /> <span class=\"style2\"><strong>Resumo Profissional </strong></span> <br /><span>Experiente em desenvolver sistemas web, Web Sites, Intranets/Extranets com ASP e ASP.Net. Experi&ecirc;ncia com plataforma Cloud Windows Azure e MVC.&nbsp; </span></p>\r\n<p align=\"justify\"><strong><span class=\"style1\">Qualifica&ccedil;&ocirc;es</span></strong><br /><span>Programador de sistemas Web com experi&ecirc;ncia em HTML, CSS, JavaScript, ASP, ASP.NET, VB.NET, C#.NET, Azure, MVC, AJAX&nbsp; e banco de dados,&nbsp; Microsoft Visual Studio 2005/2008/2010, Sistema operacional Z/OS/390, Cobol Batch e Online, Modelagem de Dados, DB2, CICS. Com capacidade desenvolver novas tecnologias, esp&iacute;rito com aptid&atilde;o para descobri problemas e desenvolver solu&ccedil;&otilde;es para otimizar a rotina de trabalho.</span><br /> <br /> <strong><span class=\"style1\">Forma&ccedil;&atilde;o Acad&ecirc;mica</span>&nbsp;</strong><br /> <br /> Tecnologia de Comunica&ccedil;&atilde;o em cria&ccedil;&atilde;o e desenvolvimento de Web Site e Design - 4 Semestres &nbsp;- &nbsp;Conclu&iacute;do em 2008&nbsp;<br /> [Centro Universit&aacute;rio Sant\'Anna] - S&atilde;o Paulo -SP&nbsp;</p>\r\n<p align=\"justify\"><span class=\"style1\"><strong>Experi&ecirc;ncia Profissional</strong> </span> <br /> <br /> <strong>T4W Solu&ccedil;&otilde;es Empresariais e Web</strong><br /> De&nbsp; 01/2012 At&eacute; a presente data &nbsp;<br /> <strong>Cargo: </strong>Desenvolvedor .Net C# e VB.NET.&nbsp; <strong>Principais atividades: </strong>Desenvolvimento de sistemas em linguagem C e VB.NET em projetos(Solu&ccedil;&otilde;es) : Console Application , WebServices , WCF , Asp.Net , Windows Services, &nbsp;ORM (Entity FrameWork), Linq , Testes Unit&aacute;rios , N - Camadas, Design Patterns,&nbsp; Web Application e WCF no Windows Azure.<span>&nbsp;</span>&nbsp;</p>\r\n<p align=\"justify\"><strong>Fad Marketing Fad Marketing</strong><br /> <strong>Estagio:&nbsp;</strong>&nbsp;1/22/2008-01/12/2008 (31/9/2010) &ndash;Fad Consult. de Marketing e Servi&ccedil;os S/C<br />De&nbsp; 01/10/2010 At&eacute; 18/01/2012&ndash; Fad Consult. de Marketing e Servi&ccedil;os S/C <br />Cargo: WebMaster.&nbsp; Principais atividades: Desenvolvimento de websites, cria&ccedil;&atilde;o e&nbsp;melhoramento de sistemas em ASP com banco de dados access ou mysql, cria&ccedil;&atilde;o de sistemas de CMS, email-marketing, newsletter etc.&nbsp;</p>\r\n<p align=\"justify\"><strong>Certifica&ccedil;&otilde;es</strong></p>\r\n<ul>\r\n<li>70-515: Web Applications Development with Microsoft .NET Framework 4&nbsp;</li>\r\n<li>98-361: MTA Software Development Fundamentals&nbsp;</li>\r\n</ul>\r\n<p align=\"justify\"><strong><span class=\"style1\">Idiomas</span></strong></p>\r\n<p align=\"justify\"><strong>Ingl&ecirc;s -</strong> Capacidade de leitura (b&aacute;sica), N&iacute;vel T&ecirc;cnico (instrumental)&nbsp;&nbsp;</p>\r\n<p align=\"justify\"><span class=\"style2\"><strong>Informa&ccedil;&otilde;es adicionais</strong><br /> </span><strong>&nbsp; Cursos de Capacita&ccedil;&atilde;o : </strong></p>\r\n<div align=\"justify\">\r\n<div class=\"entry bullet-list\">\r\n<ul>\r\n<li>MCTS: Visual Studio 2010 Web Developer 4. - Conte&uacute;dos: 10266-Programming in C# with Microsoft Visual Studio 2010 10267-Introduction to Web Development / 10264-Developing Web Applications 10265-Developing Data Access Solutions 1026-Developing Windows Communication Foundation Solutions.</li>\r\n<li>MCTS ASP.NET + Visual Studio 2008: ADO.NET 3.5 (KaSolution) - Carga hor&aacute;ria de: 150 horas.</li>\r\n<li>Introdu&ccedil;&atilde;o ao SQL SERVER 2005, Visual Basic .NET 2005.</li>\r\n<li>Programador Mainframe (GPTI - Treinamento) M&oacute;dulos: L&oacute;gica de Programa&ccedil;&atilde;o; Introdu&ccedil;&atilde;o ao sistema operacional Z/OS 390; Cobol; Modelagem de Dados; DB2; CICS&nbsp;&nbsp; - Carga hor&oacute;ria de 184 horas.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<p align=\"justify\"><br /> Outros cursos: Windows XP, Word, Excel, Power Point, Publisher, Html, Front Page, Internet, auxiliar de escrit&oacute;rio.<br /> <br /> <strong>Pretens&atilde;o Salarial:</strong><br /> &nbsp;* entre encontato por email para mais detalhes.</p>\r\n<hr />\r\n<p align=\"justify\"><strong>Carta de Apresenta&ccedil;&atilde;o: &nbsp;</strong></p>\r\n<p align=\"justify\">Em pdf&nbsp;<a href=\"http://tinyurl.com/af5eg56\">clique aqui</a></p>\r\n<p align=\"justify\"><strong>Curr&iacute;culo para download:</strong></p>\r\n<p align=\"justify\">Em pdf&nbsp;<a href=\"http://tinyurl.com/c7goykn\">clique aqui</a></p>\r\n<p align=\"justify\">*Caso precise de meu curr&iacute;culo em .doc favor envie-me um e-mail solicitando</p>\r\n<hr />\r\n<p align=\"justify\"><strong>&nbsp;</strong><strong>Acad&ecirc;mico:</strong></p>\r\n<table class=\"style1\" cellspacing=\"10px\" cellpadding=\"10px\">\r\n<tbody>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/academico/DiplomaDeLeoneUnisantana2010comAssinaturabaixaresolucao.jpg\" rel=\"gallery\"> <img id=\"Image12\" src=\"http://www.leonecosta.com.br/academico/DiplomaDeLeoneUnisantana2010comAssinaturabaixaresolucao_mini.jpg\" alt=\"\" /> </a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr />\r\n<p align=\"justify\"><strong>Certifica&ccedil;&otilde;es Microsoft&nbsp; :</strong></p>\r\n<table class=\"style1\" cellspacing=\"10px\" cellpadding=\"10px\">\r\n<tbody>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/certificacoes/Certificado_MCTS_ALL.jpg\" rel=\"gallery\"> <img id=\"Image1\" src=\"http://www.leonecosta.com.br/certificados/certificacoes/Certificado_MCTS_70-515_mini.jpg\" alt=\"Certificado MCTS\" name=\"Image1\" /> </a></td>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/certificacoes/Certificado_MCTS_70-515.jpg\" rel=\"gallery\"> <img id=\"Image2\" src=\"http://www.leonecosta.com.br/certificados/certificacoes/Certificado_MCTS_70-515_mini.jpg\" alt=\"Certificado MCTS 70-515\" /> </a></td>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/certificacoes/CERTIFICADO_MTA_98-361_NOVO.jpg\" rel=\"gallery\"> <img id=\"Image3\" src=\"http://www.leonecosta.com.br/certificados/certificacoes/CERTIFICADO_MTA_98-361_NOVO_Mini.jpg\" alt=\"Certificado MTA 98-361\" /> </a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr />\r\n<p align=\"justify\"><strong>Certificados&nbsp; :</strong></p>\r\n<table class=\"style1\" cellspacing=\"10px\" cellpadding=\"10px\">\r\n<tbody>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2009GPTI1.JPG\" rel=\"gallery\"> <img id=\"Image3\" src=\"http://www.leonecosta.com.br/certificados/2009GPTI1MIni.JPG\" alt=\"\" /> </a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2009GPTI2.JPG\" rel=\"gallery\"> <img id=\"Image4\" src=\"http://www.leonecosta.com.br/certificados/2009GPTI2MIni.JPG\" alt=\"\" /> </a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2012MAGENTOCURSO.JPG\" rel=\"gallery\"> <img id=\"Image1\" src=\"http://www.leonecosta.com.br/certificados/2012MAGENTOCURSOMini.JPG\" alt=\"\" /> </a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p align=\"justify\"><strong>Certificados Cursos Microsoft :</strong></p>\r\n<table class=\"style1\" cellspacing=\"10px\" cellpadding=\"10px\">\r\n<tbody>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2008TEKNOC1.JPG\" rel=\"gallery\"> <img id=\"Image13\" src=\"http://www.leonecosta.com.br/certificados/2008TEKNOC1MIni.JPG\" alt=\"\" /> </a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2008TEKNOC2.JPG\" rel=\"gallery\"> <img id=\"Image14\" src=\"http://www.leonecosta.com.br/certificados/2008TEKNOC2MIni.JPG\" alt=\"\" /> </a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2010KAMSC1.JPG\" rel=\"gallery\"> <img id=\"Image17\" src=\"http://www.leonecosta.com.br/certificados/2010KAMSC1MIni.JPG\" alt=\"\" /> </a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2010KAMSC3.JPG\" rel=\"gallery\"> <img id=\"Image19\" src=\"http://www.leonecosta.com.br/certificados/2010KAMSC3MIni.JPG\" alt=\"\" /> </a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2010KAMSC4.JPG\" rel=\"gallery\"> <img id=\"Image20\" src=\"http://www.leonecosta.com.br/certificados/2010KAMSC4MIni.JPG\" alt=\"\" /> </a></td>\r\n<td><span class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2010KAMSC2.JPG\" rel=\"gallery\"> <img id=\"Image18\" src=\"http://www.leonecosta.com.br/certificados/2010KAMSC2MIni.JPG\" alt=\"\" /></a></span></td>\r\n</tr>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2010KAMSC5.JPG\" rel=\"gallery\"> <img id=\"Image21\" src=\"http://www.leonecosta.com.br/certificados/2010KAMSC5MIni.JPG\" alt=\"\" width=\"220\" height=\"153\" /></a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2011KAMSC1.JPG\" rel=\"gallery\"> <img id=\"Image22\" src=\"http://www.leonecosta.com.br/certificados/2011KAMSC1Mini.JPG\" alt=\"\" /></a></td>\r\n<td><span class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2012KAMSC2.JPG\" rel=\"gallery\"> <img id=\"Image23\" src=\"http://www.leonecosta.com.br/certificados/2012KAMSC2Mini.JPG\" alt=\"\" /></a></span></td>\r\n</tr>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2012KAMSC3.JPG\" rel=\"gallery\"> <img id=\"Image24\" src=\"http://www.leonecosta.com.br/certificados/2012KAMSC3Mini.JPG\" alt=\"\" /></a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2012KAMSC4.JPG\" rel=\"gallery\"> <img id=\"Image5\" src=\"http://www.leonecosta.com.br/certificados/2012KAMSC4Mini.JPG\" alt=\"\" /></a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2012KAMSC5.JPG\" rel=\"gallery\"> <img id=\"Image6\" src=\"http://www.leonecosta.com.br/certificados/2012KAMSC5Mini.JPG\" alt=\"\" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>',NULL,1,'',2,4,9,0),(10,'2012-08-30 00:00:00','URLs Amigáveis','URLs Amigaveis','<p>Vou falar de algo que &eacute; extremamente importante nos que diz respeitos &agrave; mudan&ccedil;as on-page, que &eacute; a estrutura da url do seu site.</p>\r\n<p>&nbsp;</p>\r\n<p>Um dos fatores de rankeamento dos mecanismos de buscas s&atilde;o as urls, veja abaixo o que s&atilde;o urls amig&aacute;veis e porque utilizar.</p>\r\n<p class=\"style1\"><strong>ESTRUTURAS DA URL </strong></p>\r\n<p>&nbsp;As urls n&atilde;o amig&aacute;veis tem v&aacute;rios parametros e c&oacute;digos.Os mecanismos de busca e tamb&eacute;m os usu&aacute;rios n&atilde;o gostam, pois fica muito mais dif&iacute;ceis de ler e entender. Veja abaixo como ficaria a url desse post, se n&atilde;o fosse amig&aacute;vel:</p>\r\n<p><strong>URLS n&atilde;o s&atilde;o amig&aacute;veis</strong></p>\r\n<p>As urls n&atilde;o amig&aacute;veis tem v&aacute;rios parametros e c&oacute;digos.Os mecanismos de busca e tamb&eacute;m os usu&aacute;rios n&atilde;o gostam, pois fica muito mais dif&iacute;ceis de ler e entender. Veja abaixo um exemplo de como ficaria a url , se n&atilde;o fosse amig&aacute;vel:</p>\r\n<p>http://leonecosta.com/?p=4528</p>\r\n<p><strong>URLS amig&aacute;veis</strong></p>\r\n<p>Por outro lado, as urls amig&aacute;veis s&atilde;o bem mais interessantes, elas definem o conte&uacute;do, o que facilita para os rob&ocirc;s e usu&aacute;rios.</p>\r\n<p>Um exemplo de como ficaria a url : http:// leonecosta.com/seo/otimize-seu-site-seo/urls-amigaveis/</p>\r\n<p class=\"style1\"><strong>A import&acirc;ncia e as boas praticas</strong></p>\r\n<p class=\"style2\">Mudar a estrutura da url, em termos de otimiza&ccedil;&atilde;o &eacute; algo b&aacute;sico para qualquer site, veja abaixo um exemplo com os 3 primeiros resultados para a busca &ldquo;Buscadores Verticais&ldquo;.</p>\r\n<p><img title=\"GOOGLE SEO\" src=\"http://www.leonecosta.com.br/img/url-amigavel.png\" alt=\"\" width=\"566\" height=\"249\" /></p>\r\n<p>Reparem que no snippet, o Google tamb&eacute;m d&aacute; destaque para as urls e quando ela n&atilde;o &eacute; amig&aacute;vel ele, mesmo assim, tenta entend&ecirc;-la. Veja abaixo 3 dicas para alterar a estrutura das urls do seu site:</p>\r\n<p>&nbsp;<strong>Descreva o seu conte&uacute;do: </strong>Nada melhor do que o usu&aacute;rio ver a url e saber do que se trata o assunto. Isso &eacute; importante, pois urls s&atilde;o compartilhadas, enviadas por email, anotadas e acima de tudo, os mecanismos de busca, as reconhecem.</p>\r\n<p><strong>Crie um url curta: </strong>Uma url curta tamb&eacute;m &eacute; algo que ajuda muito os usu&aacute;rio, pois fica mais f&aacute;cil de ler e anotar. E tamb&eacute;m tem o agravante, caso voc&ecirc; deixe uma url grande e com v&aacute;rias palavras-chave, os mecanismos de busca, podem pensar que voc&ecirc; est&aacute; tentando fazer spam.</p>\r\n<p><strong>Use url est&aacute;ticas: </strong>Basicamente resume o post. N&atilde;o use parametros e c&oacute;digos na sua url, deixe-a mais elegante.</p>\r\n<p>Refer&ecirc;ncias:</p>\r\n<p>&nbsp;Guia de SEO do Google</p>\r\n<p>&nbsp;A Arte de SEO</p>\r\n<p>SEM e SEO: Dominando o Markting de Busca</p>\r\n<p>Algoritmizando</p>\r\n<p>&nbsp;</p>',NULL,1,'',2,2,10,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupocategoria`
--

LOCK TABLES `grupocategoria` WRITE;
/*!40000 ALTER TABLE `grupocategoria` DISABLE KEYS */;
INSERT INTO `grupocategoria` VALUES (19,'Sobre mim','Sobre mim',2,2,1,1,'http://leonecosta.com.br/Sobre-mim/Quem-sou-eu/Sobre-mim',1),(20,'Serviços','Servicos',2,2,1,1,'http://leonecosta.com.br/Servicos/Servicos-Web/Meus-Servicos',4),(21,'Produtos','Produtos',2,2,1,1,'http://leonecosta.com.br/Produtos/Produtos-Web/Produtos',3),(22,'Curriculum Vitae','Curriculum Vitae',2,2,1,0,'http://leonecosta.com.br/Curriculum-Vitae/Curriculo/Curriculum-Vitae',2),(23,'FAQ','FAQ',2,2,1,0,'',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens_grupo`
--

LOCK TABLES `imagens_grupo` WRITE;
/*!40000 ALTER TABLE `imagens_grupo` DISABLE KEYS */;
INSERT INTO `imagens_grupo` VALUES (30,'2012-08-25 00:00:00','LOGO MTA','Sobre mim\\MTA98-361FULL.png',19951,19,2,2,1,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `midias`
--

LOCK TABLES `midias` WRITE;
/*!40000 ALTER TABLE `midias` DISABLE KEYS */;
INSERT INTO `midias` VALUES (1,'2012-10-08 00:00:00','Sobre mim: Sou Desenvolvedor Web. Minhas especialidades são desenvolvimento server-side e front-end, usabilidade e acessibilidade de interfaces, SEO, padrões web.','http://www.leonecosta.com.br/Sobre-mim/Quem-sou-eu/Sobre-mim','Banner\\banner00.jpg',37772,'.jpg',2,4,1,1,0,1,0),(2,'2012-10-08 00:00:00','Sistema de Gerenciamento de Conteúdo (CMS) Atualize você mesmo seu site com um sistema de gerencimanento de conteúdo on-line.','http://www.leonecosta.com.br/Produtos/Gerenciador-de-Conteudo/CMS','Banner\\banner01.jpg',43039,'.jpg',2,2,1,1,0,2,0),(3,'2012-10-08 00:00:00','E-mail Marketing: A ferramenta de E-mail Marketing é uma excelente solução para o planejamento, mensuração e envio de campanhas de Marketing Direto.','http://www.leonecosta.com.br/Servicos/Servicos-Web/Meus-Servicos','Banner\\banner02.jpg',42617,'.jpg',2,2,1,1,0,3,0),(4,'2012-10-08 00:00:00','Intranet: A sua plataforma de comunicação - Interligue todas as partes de sua empresa trancando informações internas','http://www.leonecosta.com.br/Servicos/Servicos-Web/Meus-Servicos','Banner\\banner03.jpg',52589,'.jpg',2,2,1,1,0,4,0),(5,'2012-10-08 00:00:00','Login: Deixe seu sistema web protegido.','http://www.leonecosta.com.br/Servicos/Servicos-Web/Meus-Servicos','Banner\\banner04.jpg',52244,'.jpg',2,2,1,1,0,5,0),(8,'2012-12-16 00:00:00','Microsoft Transcript 2012',NULL,'Arquivos\\MS_Learning_Transcript_2012_ex.pdf',622043,'.pdf',4,4,1,3,0,1,0),(11,'2013-03-06 00:00:00','carta_apresentacao VAGA EMPREGO',NULL,'Arquivos\\carta_apresentacao.pdf',28894,'.pdf',4,4,1,3,0,NULL,0),(12,'2013-03-06 00:00:00','Currículo CV ',NULL,'Arquivos\\Curriculum_2013.pdf',49317,'.pdf',4,4,1,3,0,NULL,0);
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
INSERT INTO `my_aspnet_membership` VALUES (3,'contato@leonecosta.com.br','','nzZqZ79M+GQfEmhNupiZsA==','N2ptsOhp3BlYHMuYMPTTgw==',0,'Hacunabatata','Hacunabatata',1,'2014-01-14 15:55:03','2014-01-14 15:55:03','2012-06-29 22:17:11','2012-06-29 22:17:11',0,'2012-09-16 20:19:32',1,'2015-05-24 16:18:20',0,'2012-06-29 22:17:11'),(4,'leocr_lem@yahoo.com.br','','ipnYJpeLwyZhqwLZ3avUsg==','/+ypgsVYEYRgB8mqlFDICw==',0,'Hacunabatata','Hacunabatata',1,'2014-06-11 19:20:29','2014-06-11 19:20:29','2012-09-24 15:18:01','2012-09-24 15:18:01',0,'2012-09-24 15:18:01',1,'2014-02-25 12:52:41',0,'2012-09-24 15:18:01');
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
INSERT INTO `my_aspnet_users` VALUES (3,1,'Fulano',0,'2014-01-14 15:55:03'),(4,1,'Leone',0,'2014-06-11 19:20:29');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traducao`
--

LOCK TABLES `traducao` WRITE;
/*!40000 ALTER TABLE `traducao` DISABLE KEYS */;
INSERT INTO `traducao` VALUES (6,'GrupoCategoria','NomeGrupo',21,'en-US','Products',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(7,'GrupoCategoria','NomeGrupo',20,'en-US','Services',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(8,'GrupoCategoria','NomeGrupo',19,'en-US','About me',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(9,'Categoria','NomeCategoria',10,'en-US','Help',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(10,'Categoria','NomeCategoria',8,'en-US','Attendance On-line',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(11,'Categoria','NomeCategoria',9,'en-US','Curriculum',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(13,'Categoria','NomeCategoria',6,'en-US','Content Manager',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(14,'Categoria','NomeCategoria',5,'en-US','Web products',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(15,'Categoria','NomeCategoria',3,'en-US','Who am I',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(16,'Categoria','NomeCategoria',4,'en-US','Web Services',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(17,'Conteudo','Titulo',8,'en-US','Chat Commercial',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(18,'Conteudo','Titulo',7,'en-US','Virtual Stores',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(19,'Conteudo','Titulo',4,'en-US','My Services',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(20,'Conteudo','Titulo',3,'en-US','About me',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(21,'Conteudo','Titulo',10,'en-US','Friendly URLs',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(22,'Conteudo','Titulo',5,'en-US','Products',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(26,'Conteudo','Descricao',3,'en-US','<p>&nbsp;Fond computing since 2000. I am a technologist Web Designer (Graphic Designer) since 2009. Initially my area of interest was working with building websites and creating graphic arts, but I identified with the part of web programming to have greater skill and fitness professional who joined like to create websites.</p>\r\n<p>&nbsp;I like working with programming languages ??oriented web with VBScript (classic ASP) and C # (in Asp.Net) in which I admired for its power development. Courses that I made for improvement were prossional: MCTS ASP.NET + Visual Studio 2008: ADO.NET 3.5, SQL SERVER 2005 and VB.NET 2005, Mainframe Programmer (Operating System Z / OS 390, Cobol and Batch Online, Modeling data, DB2, CICS). I have knowledge in MySQL, Access, and work experience of 2 years and 6 months with ASP.</p>\r\n<p>&nbsp;Currently working as Webmaster and / or Asp Programmer in a consulting and marketing firm headquartered in S&atilde;o Paulo - Capital in developing websites, creating and improving systems in ASP with database access or mysql, creating CMS systems, email-marketing , newsletter etc..</p>\r\n<p>&nbsp;Through my experience, today I am a Certified Professional (MCP / MCTS / MTA) on the &nbsp;<a href=\"http://www.leonecosta.com.br/certificados/Transcripts/MSTranscriptMTA.pdf\" target=\"_blank\">Download Microsoft Transcript</a></p>\r\n<table style=\"width: 200px;\" border=\"0\" cellspacing=\"5\" cellpadding=\"5\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img title=\"Logo Microsoft Certified Professsional\" src=\"http://www.leonecosta.com.br/certificados/certificacoes/MCP_TRANS.png\" alt=\"Logo Microsoft Certified Professsional\" width=\"262\" height=\"117\" /> <img title=\"Logo Microsoft Certified Technology Specialist\" src=\"http://www.leonecosta.com.br/certificados/certificacoes/MCTS_TRANS_ALL.png\" alt=\"Logo Microsoft Certified Technology Specialist\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Logo Microsoft Certified Technology Specialist | 70-515 | Web Applications Development with Microsoft .NET Framework 4 \" src=\"http://www.leonecosta.com.br/certificados/certificacoes/MCTS_TRANS.png\" alt=\"Logo Microsoft Certified Technology Specialist | 70-515 | Web Applications Development with Microsoft .NET Framework 4 \" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Logo Microsoft Technology Associate | 98-361| Software Development Fundamentals\" src=\"http://www.leonecosta.com.br/certificados/certificacoes/MTA_98-361.png\" alt=\"Logo Microsoft Technology Associate | 98-361| Software Development Fundamentals\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>',2,'0001-01-01 00:00:00',4,'0001-01-01 00:00:00'),(27,'Conteudo','Descricao',8,'en-US','<p>This system allows the company to Care have a communication channel with your customers through your website without major structural changes. Its main function is the quick reference for customers who want information about the services and products of the company and could not find during your normal browsing. This program is based on a web platform allowing the attendant get online from any computer that has internet access.</p>\r\n<p>Take a tour in the administrative area</p>\r\n<p><strong>Address:</strong> <a href=\"http://www.leonecostarocha.com.br/chat/\" target=\"_blank\">http://www.leonecostarocha.com.br/chat/</a></p>\r\n<p><strong>User Name:</strong> admin<strong> Password:</strong> test</p>\r\n<p align=\"justify\"><strong> &Aacute;rea de contato do usu&aacute;rio</strong></p>\r\n<!-- Powered by:  Leone Costa        http://www.leonecosta.com.br/  -->\r\n<div id=\"Atendimento\">&nbsp;</div>',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(28,'Conteudo','Descricao',6,'en-US','<p>Have a content management system, which was developed to update websites, portals and intranets is very simple and easy to do without a lot of technical knowledge or specific.</p>\r\n<p>You are free to make changes at any time, with a few clicks, simply and quickly, simply having a computer with internet access.</p>\r\n<p>Can be implemented in a short time and also can be hosted on any Windows server with the Framework. NET and MySql database.</p>\r\n<p>If you already have a website and just want to deploy a content management system, we can also assist you.</p>\r\n<p>With the Content Manager will improve your website\'s position in search search engines like google. For the system to implement SEO your website. Generating pages with friendly urls</p>\r\n<p style=\"text-align: center;\" align=\"justify\">&nbsp;<img style=\"height: 102px; width: 161px;\" src=\"http://www.leonecosta.com.br/img/cms.jpg\" alt=\"\" /></p>\r\n<p>-&nbsp;Who is it for:</p>\r\n<p align=\"justify\">The CMS is a solution aimed at enterprises, autonomous people, professionals who have some business prorpio and need freedom and agility to update information concerning its information institutional, corporate, personal, business and information services available in your web site.</p>\r\n<p class=\"estiloTex\" align=\"justify\">- Use:</p>\r\n<p align=\"justify\">Not being a complex system to use, CMS does not impose hardships and difficult to use resources in the requirement technician, or anyone knowing or not being her computer can manipulate the information the web site just by having access to a computer connected to the internet and find handy information regarding software updates.</p>\r\n<p class=\"estiloTex\" align=\"justify\">- Advantages:</p>\r\n<p>All content is changed instantly changed the website, you can very easily update their information exposed without it being necessary to have cost in the form of maintenance contract.</p>\r\n<p>- Means:</p>\r\n<ul>\r\n<li>Management pages and menus</li>\r\n<li>User-friendly HTML Editor</li>\r\n<li>Search engine on the site pages</li>\r\n<li>Access to the control panel via login and password</li>\r\n<li>Unlimited pages</li>\r\n<li>SEO - Search Engine Otimization: pages with title tags and meta-automatic or custom</li>\r\n<li>Support multi languages??. His language site for unlimited website pages and editorial news.</li>\r\n<li>Create unlimited photo galleries</li>\r\n<li>Easy update text and images - updated content online in real time environment friendly through any Browser</li>\r\n<li>Access management and news pages by login and password from any computer with internet access</li>\r\n<li>News with resources for primary photo (it appears in the news with zoom feature, the home featured in the news), photo gallery</li>\r\n</ul>\r\n<p class=\"estiloTex\" align=\"justify\">- Technical details of the system:</p>\r\n<ul>\r\n<li>Developed in C #. 4.0 Net</li>\r\n<li>Mysql database 5.5 or higher</li>\r\n<li>Support multi-languages ??(native standard for English and Portuguese)</li>\r\n<li>Using jQuery UI to visual and functional features.</li>\r\n<li>N-layers.</li>\r\n<li>Login user access to encrypted authentication</li>\r\n<li>Real-time monitoring server. Viewing memory consumption and processor</li>\r\n<li>Generation system URL friendlier</li>\r\n<li>System Caching of pages on the server to optimize and improve the performace site.</li>\r\n</ul>',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(29,'Conteudo','Descricao',5,'en-US','<p>I created products to be sold are sold, and can be customized according to customer\'s need, without the need to develop a new and very unique system from scratch, thus optimizing, costs and deadlines.</p>\r\n<p>Abaixos systems and solutions for your business</p>\r\n<table class=\"estilo1\" style=\"width: 100%;\" border=\"0\" cellspacing=\"5\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td class=\"estilo3\" width=\"129px\"><img style=\"height: 102px; width: 161px;\" src=\"http://www.leonecosta.com.br/img/cms.jpg\" alt=\"\" /></td>\r\n<td class=\"estilo2\" valign=\"top\">\r\n<p><strong>Content Manager - CMS</strong></p>\r\n<p>Have a content management system, developed to update the information from websites, portals and intranets. With the content management system, you have the freedom to make changes at any time, with a few clicks, simply and quickly, simply having a computer with internet access.</p>\r\n<p><a href=\"../../Produtos/Gerenciador-de-Conteudo/CMS\">Read more</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"estilo3\" width=\"129px\"><img src=\"http://www.leonecosta.com.br/img/lojas-virtuais.jpg\" alt=\"\" width=\"130px\" height=\"130px\" /></td>\r\n<td class=\"estilo2\" valign=\"top\">\r\n<p><strong>Creation of Virtual Stores</strong></p>\r\n<p>Creating virtual stores as essential characteristics for success of your business on the internet contact, I can create your virtual store.</p>\r\n<p>&nbsp;<a href=\"../../Produtos/E-commerce/Lojas-Virtuais\">Read more</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"estilo3\"><img src=\"http://www.leonecosta.com.br/img/atendimento_online.jpg\" alt=\"\" width=\"130\" height=\"78\" /></td>\r\n<td class=\"estilo2\" valign=\"top\">\r\n<p><strong>Online Service</strong></p>\r\n<p>Improve your communication with the customer!<br />Increase your sales, streamline care, reduce costs for lines 0800 and has its satisfied customer.</p>\r\n<p><a href=\"../../Produtos/Atendimento-Online/Chat-Comercial\">Saiba mais</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"estilo3\" width=\"129px\"><img src=\"http://www.leonecosta.com.br/img/seo-e-tecnicas-search-engine-optimization.jpg\" alt=\"\" width=\"130\" height=\"84\" /></td>\r\n<td class=\"estilo2\" valign=\"top\">\r\n<p><strong>SEO - Website Optimization (SEO)</strong></p>\r\n<p>SEO (Seach Engine Optimization) and Website Optimization for search engines (SEO), actions are applied to a site, in order, to make it better positioned in search engine ranking. Please contact me for more details.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p align=\"justify\">&nbsp;Below I have developed customized products for customers.</p>\r\n<div class=\"entry bullet-list\">\r\n<ul>\r\n<li>Custom Sites</li>\r\n<li>Websites Manageable</li>\r\n<li>Library on line</li>\r\n<li>Intranet</li>\r\n<li>Extranet</li>\r\n<li>Newsletter</li>\r\n<li>Image Galleries</li>\r\n<li>Management News</li>\r\n<li>File management for downloads on the site.</li>\r\n<li>Generation of Online Banking Boletos</li>\r\n<li>Email Marketing System</li>\r\n<li>System Customer Master</li>\r\n<li>Control System users</li>\r\n<li>Management System banners</li>\r\n<li>Systems Links</li>\r\n<li>Custom systems&nbsp;</li>\r\n</ul>\r\n</div>',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(30,'Conteudo','Descricao',10,'en-US','<p>I\'ll talk about something that is extremely important to us that concerning on-page changes, which is the URL structure of your site.</p>\r\n<p>&nbsp;</p>\r\n<p>One of the factors rankeamento search engines are the urls, see below what they are and why to use friendly urls.</p>\r\n<p>STRUCTURES OF URL</p>\r\n<p>&nbsp; The unfriendly urls has several parameters and c&oacute;digos.Os search engines and users also dislike because it is much harder to read and understand. See below how would the url of this post, if not friendly:</p>\r\n<p>URLS are not friendly</p>\r\n<p>The unfriendly urls has several parameters and c&oacute;digos.Os search engines and users also dislike because it is much harder to read and understand. Below is an example of how would the url, if not friendly:</p>\r\n<p>http://leonecosta.com/?p=4528</p>\r\n<p>friendly URLS</p>\r\n<p>Moreover, the friendly urls are much more interesting, they define the content, making it easier for users and robots.</p>\r\n<p>An example would be how the url: http:// leonecosta.com / seo / optimize-your-website-seo / urls-friendly /</p>\r\n<p>The importance and best practices</p>\r\n<p>Change the url structure, in terms of optimization is something basic to any website, see below for an example with the top 3 search results for \"Vertical Search Engines\".</p>\r\n<p>&nbsp;</p>\r\n<p><img title=\"GOOGLE SEO\" src=\"http://www.leonecosta.com.br/img/url-amigavel.png\" alt=\"\" width=\"566\" height=\"249\" /></p>\r\n<p>Notice that the snippet, Google also gives prominence to the urls and when she is not friendly he nevertheless tries to understand it. Here are 3 tips to change the structure of your website urls:</p>\r\n<p>&nbsp; Describe your content: Nothing better than you see the url and know what it is about the subject. This is important because urls are shared, emailed, written down and most of all, the search engines recognize them.</p>\r\n<p>Create a short url: A short url is also something that greatly helps the user, making it easier to read and annotate. And also has the aggravating if you leave a url with large and multiple keywords, search engines may think you\'re trying to spam.</p>\r\n<p>Use static url: Basically sums up the post. Do not use codes and parameters in your url, let it more elegant.</p>\r\n<p>references:</p>\r\n<p>&nbsp; Google SEO Guide</p>\r\n<p>&nbsp; The Art of SEO</p>\r\n<p>SEM and SEO: Mastering Search markting</p>\r\n<p>Algoritmizando</p>\r\n<p>&nbsp;</p>',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(31,'Conteudo','Descricao',4,'en-US','<div class=\"entry bullet-list\">\r\n<ul>\r\n<li><a href=\"#1\">D</a><a href=\"#1\">esenvolvimento&nbsp;<em>server-side</em>&nbsp;e&nbsp;<em>front-en</em></a><a href=\"#1\"><em>d</em></a></li>\r\n<li><a href=\"#2\">Development and maintenance of systems in ASP \"Classic\"</a></li>\r\n<li><a href=\"#3\">Development and maintenance of systems in ASP.NET</a></li>\r\n<li><a href=\"#4\">Development of Intranet / Extranet</a></li>\r\n<li><a href=\"#5\">Development, maintenance and migration Database Access, MySQL and MsSQL (Sql Server 2005/2008).</a></li>\r\n<li><a href=\"#6\">Development and maintenance of COBOL systems.</a></li>\r\n<li><a href=\"#7\">Maintenance of DB2 database</a></li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>\r\n<hr />\r\n<p>&nbsp;Developing server-side and front-end</p>\r\n<p><a id=\"1\" name=\"1\"></a></p>\r\n<p class=\"style5\" align=\"justify\"><strong>Server-side</strong>,&nbsp;is a term used to describe operations that, in a client-server context, are done on the server, not the client.</p>\r\n<p>There are several reasons for this: since the middle of server processing power, even the presence of software or features that are available only on the server.<br />Front-end is ooposto is a server-side Client Side Scripts designating operations done on the workstation user.<br />Front-end and back-end are generalized terms that refer to the initial and final stages of a process. The front-end is responsible for collecting input in various forms from the user and process it to make it conform to a specification useful for the back end. The front-end is a kind of interface between the user and the back-end.</p>\r\n<h4>Development and maintenance of systems in ASP \"Classic\"<br /><a id=\"2\" name=\"2\"></a></h4>\r\n<p>The ASP (Active Server Pages) is a framework of basic libraries (and not a language) for processing scripting languages ??on the server side to generate dynamic content on the Web Examples of languages ??accepted are: VBScript, JScript, PerlScript, TCL Python or with only the first two are supported by default.<br />It runs / runs natively on Windows servers, through the service called IIS (Internet Information Service) - Microsoft\'s web server, or PWS (Personal Web Server) environments with Windows 98. Furthermore it can run / run on other platforms, such as Linux Apache server module when using a program such as Tomcat.<br />The script is interpreted on the server side and the side that is sent to the user / user (browser, for example) is only output. which is usually a markup language like HTML, XHTML or XML.<br />Languages ??like JavaScript and VBScript can be processed by the visitor\'s browser. In this case, this must support the language. However, since the ASP is processed by the server, the browser\'s independence, since only they will render HTML.<br />Through this technology you can also run queries to the database through the library of ActiveX components.<br />The use of this technology has decreased considerably by the maturation of the technology. NET, ASP.NET gradually being replaced by providing a wider range of resources and better performance.</p>\r\n<p class=\"style5\" align=\"justify\"><strong>What are the advantages of ASP?&nbsp;</strong></p>\r\n<p>Runs on any browser - no problem with compatibility, because the pages are processed on the server and default html content is sent to the browser. Publish database - allows manipulation of the database (inclusion, change, and delete queries) using an ODBC driver or via a direct connection to MS-Access, SQL Server or MySQL<br />Secure code - how everything is processed on the server, there is no problem to change the code of the page, since the server returns an HTML page to the browser.</p>\r\n<p class=\"style5\" align=\"justify\"><strong>Why use ASP?&nbsp;</strong><br />Why is a language with many features and simple to use, is processed on the server and not in the browser and allows you to combine HTML, Vbscript, JavaScript and PERL.</p>\r\n<h4>Development and maintenance of systems in ASP.NET<br /><a id=\"3\" name=\"3\"></a></h4>\r\n<p>ASP.NET is Microsoft\'s platform for developing web applications and is the successor of ASP technology. It is a component of IIS which allows through a built-in programming language. NET Framework to create dynamic pages. It is not a programming language such as VBScript, php, or a web server such as IIS, Apache.<br />The ASP.NET Framework is based on. NET inheriting all its features, so any application. NET applications for this platform can be written in several languages, such as C # and Visual Basic. NET.<br />Although it can develop ASP.NET applications using only notepad and compiler. NET, the most common development environment of ASP.NET applications is Visual Studio. NET since it has some features that facilitate the work of the programmer, as the visual components for creating Web forms pages<br />A web application developed in ASP.NET can reuse code from another project written for the platform. NET, even though in different language. An ASP.NET page written in VB.NET can call components written in C # and Web Services written in C + +, for example. Unlike ASP, ASP.NET applications are compiled before execution, bringing appreciable performance gain.<br />ASP.NET Web applications require the Framework. NET and IIS server to run at least on the Windows platform. There is also the project mod_aspdotnet, module that allows Apache HTTP Server work together with the Framework. NET and ASP.NET applications run on the Windows platform. The Mono project is an effort to allow ASP.NET applications (actually the whole platform. NET) can run on other platforms, such as Linux.</p>\r\n<p class=\"style5\" align=\"justify\"><br /><strong>Why use ASP and ASP.NET What are the advantages?</strong></p>\r\n<div align=\"justify\">\r\n<div class=\"entry bullet-list\">\r\n<ul>\r\n<li><strong>Developer productivity: </strong>Simplified programming model, flexible language options, Great editing tool (Visual Studio)</li>\r\n<li><strong>Performance and Scalability: </strong>System is compiled rather than interpreted, Extensive Output Cache</li>\r\n<li><strong>Reliability: </strong>Dispersion memory, Deadlock and crash protection</li>\r\n<li><strong><strong>Easy Deployment</strong>:&nbsp;</strong>Dynamic update of the application, Easy migration from server to server</li>\r\n<li>For more information visit&nbsp;: <a href=\"http://technet.microsoft.com/pt-br/library/cc775831(WS.10).aspx\" target=\"_blank\"> http://technet.microsoft.com/pt-br/library/cc775831(WS.10).aspx</a>&nbsp; and / or&nbsp;<a href=\"http://technet.microsoft.com/pt-pt/library/cc775831(WS.10).aspx\" target=\"_blank\">http://technet.microsoft.com/pt-pt/library/cc775831(WS.10).aspx</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<h4>Development of Intranet / Extranet<br /><a id=\"4\" name=\"4\"></a></h4>\r\n<p>are corporate networks that use the technology and infrastructure for data communication from the Internet. They are used in internal communication of the company and / or communication independent of the physical location of these departments and / or divisions that can be physically separated.<br />With the Intranet the company will interconnect its various departments and units using a web-style interface that allows integration of their software and administrative adds a number of entirely new features, such as:<br />Interconnection of business units physically separated;<br />Redirection administrative flows, increasing their efficiency;<br />Creating a dynamic corporate environment, where the information arrives quickly;<br />Creating a strong corporate identity.<br />The deployment of an Intranet available to business users in a simple and intuitive, all of the information organized in a single point to allow access wherever you are, whether inside or outside the company, using a simple web browser.<br />New insertions through an easy load up mechanism are available to all causing a decrease in the flow of sensitive papers in addition to streamlining processes and routines.</p>\r\n<p class=\"style5\" align=\"justify\"><strong> Extranet</strong> are the same principles and uses an intranet but open to employees, customers and suppliers that are not part of the company\'s workforce. Extranet can also be seen as part of the company that is extended to external users (\"network outside the company\"), such as representatives and customers. Another common use of the term occurs in the Extranet designation of \"private part\" of a site where only \"registered users\" can navigate previously authenticated by password (login).</p>\r\n<h4>Development, maintenance and migration Database Access, MySQL and MsSQL (Sql Server 2005/2008).<a id=\"5\" name=\"5\"></a></h4>\r\n<p>Database (or databases), is a set of records arranged in regular structure that enables the rearrangement and the same information production. A database typically groups usable records for the same purpose.<br />A database is usually maintained and accessed through a software known as System Manager Database (DBMS). Typically adopts a DBMS data model, so pure, reduced or extended. Often the term database is used, wrongly, as a synonym for DBMS.<br />The data model most widely adopted nowadays is the relational model, where the structures have the form of tables, composed of tuples (rows) and columns.</p>\r\n<p class=\"style5\" align=\"justify\">More information: <a href=\"http://pt.wikipedia.org/wiki/Banco_de_dados\" target=\"_blank\">http://pt.wikipedia.org/wiki/Banco_de_dados</a></p>\r\n<h4>Development and maintenance of COBOL.<a id=\"6\" name=\"6\"></a></h4>\r\n<p>COBOL is a programming language Third Generation. Its name is an acronym for Common Business Oriented Language (Language Oriented Business), which defines its main goal in business systems, financial and administrative systems for companies and governments.<br />The COBOL 2002 includes support for object-oriented programming and other modern language features. However, most of this article is based on COBOL 85.</p>\r\n<p class=\"style5\" align=\"justify\"><span>More information</span>: <a href=\"http://pt.wikipedia.org/wiki/COBOL\" target=\"_blank\"> http://pt.wikipedia.org/wiki/COBOL</a></p>\r\n<h4>Maintenance of DB2 database&nbsp;<a id=\"7\" name=\"7\"></a></h4>\r\n<p class=\"style5\" align=\"justify\">DB2 is the System Manager Relational Databases (SGDBR) produced by IBM. There are different versions of DB2 that run from a simple PDA | handheld, even at work in powerful mainframes and servers based on Unix, Windows, or Linux.</p>\r\n<p class=\"style5\" align=\"justify\"><span>More information</span>: <a href=\"http://pt.wikipedia.org/wiki/DB2\" target=\"_blank\"> http://pt.wikipedia.org/wiki/DB2</a></p>',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(32,'Conteudo','Descricao',9,'en-US','<p align=\"justify\"><strong>LEONE COSTA ROCHA</strong> <br /><strong><span>District</span>: </strong>Itaquera - <strong>City:</strong> S&atilde;o Paulo -<strong>&nbsp;<span>Country</span>:</strong> S&atilde;o Paulo. &nbsp;&nbsp;<br /><strong>Mobile phone: </strong>(11) 8851-8843 / 7989-5984 <br /> <strong>E-mail: </strong><a href=\"mailto:leocr_lem@yahoo.com.br\">leocr_lem@yahoo.com.br</a> &nbsp;<br /><strong>Date of birth: </strong>22/11/1987 -&nbsp;Brazilian</p>\r\n<p align=\"justify\"><span class=\"style2\"><strong>Professional goal</strong></span><br />Acting in the following areas: Web Developer, Programmer. NET, Web Developer. Net, Cobol Developer, SQL Server DBA, System Analyst.<br /> <br /><span class=\"style2\"><strong><strong>Professional r</strong>esume&nbsp;</strong></span><br /> Experiente em desenvolver sistemas web, Web Sites, Intranets/Extranets com ASP e ASP.Net.&nbsp;&nbsp;</p>\r\n<p align=\"justify\"><strong><span class=\"style1\">Qualifications</span></strong><br />Web systems programmer with experience in HTML, CSS, JavaScript, ASP, ASP.NET, VB.NET, C #. NET, AJAX and database, Microsoft Visual Studio 2005/2008/2010, Dreamweaver, InDesign, PageMaker, PhotoShop, CorelDraw, FireWorks, Flash, operating System Z/OS/390, Cobol and Batch Online, Data Modeling, DB2, CICS. With the ability to develop new technologies, spirit with ability to discover problems and develop solutions to optimize work routine.<br /> <br /><strong><span class=\"style1\">Education</span></strong></p>\r\n<p>Communication Technology in the creation and development of Web Site and Design - 4 Semesters<br />[Centro Universit&aacute;rio Sant\'Anna] - S&atilde;o Paulo-SP</p>\r\n<p align=\"justify\"><span class=\"style1\"><strong>Professional Experience</strong></span><br /> <br /> <strong>T4W Solu&ccedil;&otilde;es Empresariais e Web</strong><br />From 01/2012 To date -&nbsp; T4W Solu&ccedil;&otilde;es Empresariais e Web<br /><strong><span>Role</span>: </strong>Developer in .Net C# e VB.NET&nbsp; .&nbsp; <strong>Principal activities: </strong>Development of web systems.</p>\r\n<p align=\"justify\"><strong>Fad Marketing Fad Marketing</strong><br /><strong>Internship: </strong>01/2008 -12/2008 - Fad Consult. de Marketing e Servi&ccedil;os S/C<br /><span>From&nbsp;</span>01/2009 <span>To date&nbsp;</span>01/2012 - Fad Consult. de Marketing e Servi&ccedil;os S/C <br /><strong><strong>Role</strong>: </strong>WebMaster.<strong>&nbsp;<strong>Principal activities:</strong>&nbsp;</strong>Website development, creation and improvement of systems in ASP with database access or mysql, creating CMS systems, email-marketing, newsletter etc.</p>\r\n<p align=\"justify\"><strong><span class=\"style1\">Languages</span></strong></p>\r\n<p align=\"justify\"><strong>English&nbsp;-</strong>&nbsp;Reading skills (basic) technical level (instrumental).&nbsp;</p>\r\n<p align=\"justify\"><strong>Brazilian Portuguese&nbsp;-</strong><span>&nbsp;Reading and writing fluently.</span></p>\r\n<p align=\"justify\"><span class=\"style2\"><strong>Additional information</strong><br /> </span><strong>&nbsp; Training Courses&nbsp;: </strong></p>\r\n<div align=\"justify\">\r\n<div class=\"entry bullet-list\">\r\n<ul>\r\n<li>MCTS: Visual Studio 2010 Web Developer 4. Contents: 10266-Programming in C# with Microsoft Visual Studio 2010 10267-Introduction to Web Development / 10264-Developing Web Applications 10265-Developing Data Access Solutions 1026-Developing Windows Communication Foundation Solutions.</li>\r\n<li>MCTS ASP.NET + Visual Studio 2008: ADO.NET 3.5 (KaSolution) - Hours of:&nbsp;150 horas.</li>\r\n<li>Introdu&ccedil;&atilde;o ao SQL SERVER 2005, Visual Basic .NET 2005.</li>\r\n<li>Mainframe programmer&nbsp;(GPTI - Treinamento) Modules: Logic Programming, Introduction to operating system Z/OS 390; Cobol, Data Modeling, DB2, CICS&nbsp; &nbsp;- <span>Hours of</span>&nbsp;184 horas.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<p align=\"justify\"><br />Other courses: Windows XP, Word, Excel, Power Point, Publisher, Html, Front Page, Internet, office assistant.<br /> <br /><strong>Wage claim:</strong><br /> &nbsp;* contact by email for more details.</p>\r\n<hr />\r\n<p align=\"justify\"><strong>Cover Letter: &nbsp;&nbsp;</strong></p>\r\n<p align=\"justify\">In pdf&nbsp;<a href=\"http://www.leonecosta.com.br/curriculo/carta_apresentacao.pdf\">click here</a></p>\r\n<p align=\"justify\"><strong>Curr&iacute;culo para download:</strong></p>\r\n<p align=\"justify\">In pdf&nbsp;<a href=\"http://www.leonecosta.com.br/curriculo/Curriculum.pdf\">click here</a></p>\r\n<p align=\"justify\">*If you need my resume in. Doc please send me an e-mail requesting</p>\r\n<hr />\r\n<p align=\"justify\"><strong>Academic</strong><strong>:</strong></p>\r\n<table class=\"style1\" cellspacing=\"10px\" cellpadding=\"10px\">\r\n<tbody>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/academico/DiplomaDeLeoneUnisantana2010comAssinaturabaixaresolucao.jpg\" rel=\"gallery\"> <img id=\"Image12\" src=\"http://www.leonecosta.com.br/academico/DiplomaDeLeoneUnisantana2010comAssinaturabaixaresolucao_mini.jpg\" alt=\"\" /> </a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr />\r\n<p align=\"justify\"><strong>Microsoft Certifications&nbsp;:</strong></p>\r\n<table class=\"style1\" cellspacing=\"10px\" cellpadding=\"10px\">\r\n<tbody>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/logosCertificacao/CERTIFICADOMTA98-361.jpg\" rel=\"gallery\"> <img id=\"Image2\" src=\"http://www.leonecosta.com.br/certificados/logosCertificacao/CERTIFICADOMTA98-361min.jpg\" alt=\"\" /> </a></td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr />\r\n<p align=\"justify\"><strong>Certificates&nbsp; :</strong></p>\r\n<table class=\"style1\" cellspacing=\"10px\" cellpadding=\"10px\">\r\n<tbody>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2009GPTI1.JPG\" rel=\"gallery\"> <img id=\"Image3\" src=\"http://www.leonecosta.com.br/certificados/2009GPTI1MIni.JPG\" alt=\"\" /> </a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2009GPTI2.JPG\" rel=\"gallery\"> <img id=\"Image4\" src=\"http://www.leonecosta.com.br/certificados/2009GPTI2MIni.JPG\" alt=\"\" /> </a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2012MAGENTOCURSO.JPG\" rel=\"gallery\"> <img id=\"Image1\" src=\"http://www.leonecosta.com.br/certificados/2012MAGENTOCURSOMini.JPG\" alt=\"\" /> </a></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p align=\"justify\"><strong>Microsoft Certified Courses&nbsp;:</strong></p>\r\n<table class=\"style1\" cellspacing=\"10px\" cellpadding=\"10px\">\r\n<tbody>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2008TEKNOC1.JPG\" rel=\"gallery\"> <img id=\"Image13\" src=\"http://www.leonecosta.com.br/certificados/2008TEKNOC1MIni.JPG\" alt=\"\" /> </a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2008TEKNOC2.JPG\" rel=\"gallery\"> <img id=\"Image14\" src=\"http://www.leonecosta.com.br/certificados/2008TEKNOC2MIni.JPG\" alt=\"\" /> </a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2010KAMSC1.JPG\" rel=\"gallery\"> <img id=\"Image17\" src=\"http://www.leonecosta.com.br/certificados/2010KAMSC1MIni.JPG\" alt=\"\" /> </a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2010KAMSC3.JPG\" rel=\"gallery\"> <img id=\"Image19\" src=\"http://www.leonecosta.com.br/certificados/2010KAMSC3MIni.JPG\" alt=\"\" /> </a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2010KAMSC4.JPG\" rel=\"gallery\"> <img id=\"Image20\" src=\"http://www.leonecosta.com.br/certificados/2010KAMSC4MIni.JPG\" alt=\"\" /> </a></td>\r\n<td><span class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2010KAMSC2.JPG\" rel=\"gallery\"> <img id=\"Image18\" src=\"http://www.leonecosta.com.br/certificados/2010KAMSC2MIni.JPG\" alt=\"\" /></a></span></td>\r\n</tr>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/certificados/2010KAMSC5.JPG\" rel=\"gallery\"> <img id=\"Image21\" src=\"http://www.leonecosta.com.br/certificados/2010KAMSC5MIni.JPG\" alt=\"\" width=\"220\" height=\"153\" /></a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2011KAMSC1.JPG\" rel=\"gallery\"> <img id=\"Image22\" src=\"http://www.leonecosta.com.br/certificados/2011KAMSC1Mini.JPG\" alt=\"\" /></a></td>\r\n<td><span class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2012KAMSC2.JPG\" rel=\"gallery\"> <img id=\"Image23\" src=\"http://www.leonecosta.com.br/certificados/2012KAMSC2Mini.JPG\" alt=\"\" /></a></span></td>\r\n</tr>\r\n<tr>\r\n<td class=\"style3\"><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2012KAMSC3.JPG\" rel=\"gallery\"> <img id=\"Image24\" src=\"http://www.leonecosta.com.br/certificados/2012KAMSC3Mini.JPG\" alt=\"\" /></a></td>\r\n<td><a class=\"pirobox_gall\" href=\"http://www.leonecosta.com.br/certificados/2012KAMSC4.JPG\" rel=\"gallery\"> <img id=\"Image5\" src=\"http://www.leonecosta.com.br/certificados/2012KAMSC4Mini.JPG\" alt=\"\" /></a></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>',2,'0001-01-01 00:00:00',2,'0001-01-01 00:00:00'),(33,'Midia','Descricao',1,'en-US','About me: I am a Web Developer My specialties are developing server-side and front-end interfaces for usability and accessibility, SEO, web standards.',4,'0001-01-01 00:00:00',4,'0001-01-01 00:00:00'),(34,'Midia','Descricao',2,'en-US','Content Management System (CMS) Update your site yourself with a content management system online.',4,'0001-01-01 00:00:00',4,'0001-01-01 00:00:00'),(35,'Midia','Descricao',3,'en-US','Email Marketing: A Tool Email Marketing is an excellent solution for planning, measuring and sending direct marketing campaigns.',4,'0001-01-01 00:00:00',4,'0001-01-01 00:00:00'),(36,'Midia','Descricao',4,'en-US','Intranet: Your communication platform - Interconnect all parts of your business information locked inside',4,'0001-01-01 00:00:00',4,'0001-01-01 00:00:00'),(37,'Midia','Descricao',5,'en-US','Login: Leave your system protected web.',4,'0001-01-01 00:00:00',4,'0001-01-01 00:00:00');
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
-- Dumping routines for database 'leonecosta06'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-19 14:53:33
