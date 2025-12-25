-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: factory_overview
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `task_execution`
--

DROP TABLE IF EXISTS `task_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_execution` (
  `task_ID` int NOT NULL AUTO_INCREMENT,
  `robot_ID` int DEFAULT NULL,
  `task_name` varchar(50) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`task_ID`),
  KEY `robot_ID` (`robot_ID`),
  CONSTRAINT `task_execution_ibfk_1` FOREIGN KEY (`robot_ID`) REFERENCES `robots` (`robot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_execution`
--

LOCK TABLES `task_execution` WRITE;
/*!40000 ALTER TABLE `task_execution` DISABLE KEYS */;
INSERT INTO `task_execution` VALUES (1,1,'Pick & Place','2025-09-12 11:00:00','2025-09-12 11:23:11','Completed'),(2,2,'Assembly','2025-09-12 12:00:00','2025-09-12 12:19:59','Completed'),(3,3,'Welding','2025-09-12 07:00:00','2025-09-12 08:00:00','Error'),(4,1,'Inspection','2025-08-12 19:05:00','2025-08-12 19:06:15','Completed'),(5,1,'Pick & Place','2025-12-12 10:31:00','2025-12-12 10:33:40','Completed'),(6,1,'Sorting','2025-10-12 07:55:00','2025-10-12 07:56:50','Error'),(7,2,'Assembly','2025-08-12 19:02:00','2025-08-12 19:07:20','Completed'),(8,2,'Quality Check','2025-12-12 10:05:00','2025-12-12 10:07:45','Completed'),(9,2,'Packaging','2025-11-12 20:02:00','2025-11-12 20:03:10','Error'),(10,3,'Welding','2025-08-12 19:01:00','2025-08-12 19:04:32','Completed'),(11,3,'Metal Cutting','2025-12-12 20:01:00','2025-12-12 20:04:25','Completed'),(12,3,'Calibration','2025-11-12 23:01:00','2025-11-12 23:07:55','Completed');
/*!40000 ALTER TABLE `task_execution` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-25 17:23:51
