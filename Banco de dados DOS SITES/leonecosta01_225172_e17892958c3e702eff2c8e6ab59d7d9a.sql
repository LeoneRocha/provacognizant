-- MySQL dump 10.13  Distrib 5.6.23, for linux-glibc2.5 (x86_64)
--
-- Host: mysql04-farm58.kinghost.net    Database: leonecosta01
-- ------------------------------------------------------
-- Server version	5.6.27-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forums` (
  `forumid` int(11) NOT NULL AUTO_INCREMENT,
  `forumname` varchar(255) NOT NULL,
  `forumshortname` varchar(32) NOT NULL,
  `forumdescription` longtext NOT NULL,
  `categoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `forumcreationdate` datetime NOT NULL,
  `forumlasteditdate` datetime NOT NULL,
  `forumlastedituser` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `forumtopiccount` int(11) NOT NULL,
  `forummessagecount` int(11) NOT NULL,
  `forumorder` int(11) NOT NULL,
  PRIMARY KEY (`forumid`),
  UNIQUE KEY `ix_forums_forumshortname` (`forumshortname`),
  KEY `fk_forums_forumscategories` (`categoryid`),
  KEY `fk_forums_users` (`userid`),
  KEY `fk_forums_users_lastedit` (`forumlastedituser`),
  CONSTRAINT `fk_forums_forumscategories` FOREIGN KEY (`categoryid`) REFERENCES `forumscategories` (`categoryid`),
  CONSTRAINT `fk_forums_users` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  CONSTRAINT `fk_forums_users_lastedit` FOREIGN KEY (`forumlastedituser`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums`
--

LOCK TABLES `forums` WRITE;
/*!40000 ALTER TABLE `forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forumscategories`
--

DROP TABLE IF EXISTS `forumscategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forumscategories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(255) NOT NULL,
  `categoryorder` int(11) NOT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forumscategories`
--

LOCK TABLES `forumscategories` WRITE;
/*!40000 ALTER TABLE `forumscategories` DISABLE KEYS */;
INSERT INTO `forumscategories` VALUES (1,'General',10);
/*!40000 ALTER TABLE `forumscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `topicid` int(11) NOT NULL,
  `messageid` int(11) NOT NULL,
  `messagebody` longtext NOT NULL,
  `messagecreationdate` datetime NOT NULL,
  `messagelasteditdate` datetime NOT NULL,
  `messagelastedituser` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `editip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`topicid`,`messageid`),
  KEY `fk_messages_users` (`userid`),
  CONSTRAINT `fk_messages_topics` FOREIGN KEY (`topicid`) REFERENCES `topics` (`topicid`),
  CONSTRAINT `fk_messages_users` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `tag` varchar(50) NOT NULL,
  `topicid` int(11) NOT NULL,
  PRIMARY KEY (`tag`,`topicid`),
  KEY `fk_tags_topics` (`topicid`),
  CONSTRAINT `fk_tags_topics` FOREIGN KEY (`topicid`) REFERENCES `topics` (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `templateid` int(11) NOT NULL AUTO_INCREMENT,
  `templatekey` varchar(16) NOT NULL,
  `templatedescription` varchar(256) DEFAULT NULL,
  `templateiscurrent` tinyint(1) NOT NULL,
  `templatedate` datetime NOT NULL,
  PRIMARY KEY (`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `topicid` int(11) NOT NULL AUTO_INCREMENT,
  `topictitle` varchar(256) NOT NULL,
  `topicshortname` varchar(64) NOT NULL,
  `topicdescription` longtext NOT NULL,
  `topiccreationdate` datetime NOT NULL,
  `topiclasteditdate` datetime NOT NULL,
  `topicviews` int(11) NOT NULL,
  `topicreplies` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `topictags` varchar(256) NOT NULL,
  `forumid` int(11) NOT NULL,
  `topiclastedituser` int(11) NOT NULL,
  `topiclasteditip` varchar(15) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `topicisclose` tinyint(1) NOT NULL,
  `topicorder` int(11) DEFAULT NULL,
  `lastmessageid` int(11) DEFAULT NULL,
  `messagesidentity` int(11) NOT NULL,
  PRIMARY KEY (`topicid`),
  KEY `fk_topics_forums` (`forumid`),
  KEY `fk_topics_users` (`userid`),
  KEY `fk_topics_users_lastedit` (`topiclastedituser`),
  CONSTRAINT `fk_topics_forums` FOREIGN KEY (`forumid`) REFERENCES `forums` (`forumid`),
  CONSTRAINT `fk_topics_users` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  CONSTRAINT `fk_topics_users_lastedit` FOREIGN KEY (`topiclastedituser`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `userprofile` longtext,
  `usersignature` longtext,
  `usergroupid` smallint(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `userbirthdate` datetime DEFAULT NULL,
  `userwebsite` varchar(255) DEFAULT NULL,
  `userguid` char(32) NOT NULL,
  `usertimezone` decimal(9,2) NOT NULL,
  `useremail` varchar(100) DEFAULT NULL,
  `useremailpolicy` int(11) DEFAULT NULL,
  `userphoto` varchar(1024) DEFAULT NULL,
  `userregistrationdate` datetime NOT NULL,
  `userexternalprofileurl` varchar(255) DEFAULT NULL,
  `UserProvider` varchar(32) NOT NULL,
  `UserProviderId` varchar(64) NOT NULL,
  `UserProviderLastCall` datetime NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `fk_users_usersgroups` (`usergroupid`),
  CONSTRAINT `fk_users_usersgroups` FOREIGN KEY (`usergroupid`) REFERENCES `usersgroups` (`usergroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersgroups`
--

DROP TABLE IF EXISTS `usersgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersgroups` (
  `usergroupid` smallint(6) NOT NULL,
  `usergroupname` varchar(50) NOT NULL,
  PRIMARY KEY (`usergroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersgroups`
--

LOCK TABLES `usersgroups` WRITE;
/*!40000 ALTER TABLE `usersgroups` DISABLE KEYS */;
INSERT INTO `usersgroups` VALUES (1,'Level 1'),(2,'Level2'),(3,'Moderator'),(10,'Admin');
/*!40000 ALTER TABLE `usersgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'leonecosta01'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-19 14:52:56
