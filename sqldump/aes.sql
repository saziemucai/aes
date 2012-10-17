-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: aes
-- ------------------------------------------------------
-- Server version	5.5.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','12345');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answerkey`
--

DROP TABLE IF EXISTS `answerkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answerkey` (
  `id` int(11) NOT NULL,
  `answer` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answerkey`
--

LOCK TABLES `answerkey` WRITE;
/*!40000 ALTER TABLE `answerkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `answerkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper`
--

DROP TABLE IF EXISTS `paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paper` (
  `id` int(50) NOT NULL,
  `sy` varchar(30) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `subject` varchar(11) NOT NULL,
  `test_name` varchar(30) NOT NULL,
  `question` varchar(50) NOT NULL,
  `option1` varchar(30) NOT NULL,
  `option2` varchar(30) NOT NULL,
  `option3` varchar(30) NOT NULL,
  `option4` varchar(30) NOT NULL,
  `answer` varchar(30) NOT NULL,
  `point` int(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
INSERT INTO `paper` VALUES (2,'2012-2013','1st Semester','CSC 101','Midterm','Number 2','A','B','C','D','B',0),(1,'2012-2013','1st Semester','CSC 101','Midterm','Number 1','A','B','C','D','B',0),(2,'2012-2013','1st Semester','CSC 101','Prelim','Number 2','A','B','C','D','B',0),(1,'2012-2013','1st Semester','CSC 101','Prelim','Number 1','A','B','C','D','B',0);
/*!40000 ALTER TABLE `paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_answer`
--

DROP TABLE IF EXISTS `student_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_answer` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(50) NOT NULL,
  `sy` varchar(30) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `subject` varchar(11) NOT NULL,
  `test_name` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `num_ans` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=303 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_answer`
--

LOCK TABLES `student_answer` WRITE;
/*!40000 ALTER TABLE `student_answer` DISABLE KEYS */;
INSERT INTO `student_answer` VALUES (290,'2012-0001','2012-2013','1st Sem','CSC 101','Prelim',5,5),(295,'2012-0003','2012-2013','2nd Sem','CSC 101','Prelim',3,5),(302,'2012-0001','2012-2013','1st Sem','CSC 101','Finals',0,5);
/*!40000 ALTER TABLE `student_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idno` varchar(50) NOT NULL,
  `course` varchar(5) NOT NULL,
  `year` int(1) NOT NULL,
  `sy` varchar(30) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (26,'Elisa May Comeda','2012-0045','BSCS',1,'2012-2013','1st Sem','CSC 101','A4','miakah','d8578edf8458ce06fbc5bb76a58c5ca4'),(3,'Enchong Dee','2012-0003','BSCS',1,'2012-2013','2nd Sem','CSC 101','A9','choyin','d8578edf8458ce06fbc5bb76a58c5ca4'),(25,'Rose Bacar','2012-0007','BSCS',1,'2012-2013','2nd Sem','CSC 101','A1','rosita','d8578edf8458ce06fbc5bb76a58c5ca4'),(2,'Jane Faith Abanid','2012-0002','BSCS',1,'2012-2013','1st Sem','CSC 101','A1','dzeyn','d8578edf8458ce06fbc5bb76a58c5ca4'),(1,'Charlie Yee','2012-0001','BS-CS',1,'2012-2013','1st Sem','CSC 101','A1','tsaparlippi','d8578edf8458ce06fbc5bb76a58c5ca4');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) NOT NULL,
  `sy` varchar(30) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `section1` varchar(11) NOT NULL,
  `section2` varchar(11) NOT NULL,
  `section3` varchar(11) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (67,'CSC 101','2012-2013','1st Sem','A1','B1','C1');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-14  1:49:39
