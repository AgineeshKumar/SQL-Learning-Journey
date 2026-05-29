CREATE DATABASE  IF NOT EXISTS `my_sql_learnings` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `my_sql_learnings`;
-- MySQL dump 10.13  Distrib 8.0.46, for macos15 (arm64)
--
-- Host: localhost    Database: my_sql_learnings
-- ------------------------------------------------------
-- Server version	9.7.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '239eb694-5a96-11f1-b3c9-61ab360fa922:1-82';

--
-- Table structure for table `Customer_Info`
--

DROP TABLE IF EXISTS `Customer_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_Info` (
  `Customer_ID` int DEFAULT NULL,
  `Customer_Name` varchar(25) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_Info`
--

LOCK TABLES `Customer_Info` WRITE;
/*!40000 ALTER TABLE `Customer_Info` DISABLE KEYS */;
INSERT INTO `Customer_Info` VALUES (1001,'Agineesh Kumar','Chennai','India','agineesh@gmail.com'),(1002,'Priya Sharma','Mumbai','India','priya.sharma@gmail.com'),(1003,'Raj Patel','Delhi','India','raj.patel@gmail.com'),(1004,'Sean Murphy','Dublin','Ireland','sean.murphy@gmail.com'),(1005,'Emma Walsh','Cork','Ireland','emma.walsh@gmail.com'),(1006,'Liam O\'Brien','Galway','Ireland','liam.obrien@gmail.com'),(1007,'Annaya Nair',NULL,'India','annaya.nair@gmail.com'),(1008,'Ciara Kelly',NULL,'Ireland','ciara.kelly@gmail.com'),(1009,'Hari Prasad','Bengalore','India','hari.prasad21@gmail.com');
/*!40000 ALTER TABLE `Customer_Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_Info`
--

DROP TABLE IF EXISTS `Order_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order_Info` (
  `Order_ID` varchar(7) DEFAULT NULL,
  `Customer_ID` int DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Order_Date` date DEFAULT NULL,
  `Total_Amount` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_Info`
--

LOCK TABLES `Order_Info` WRITE;
/*!40000 ALTER TABLE `Order_Info` DISABLE KEYS */;
INSERT INTO `Order_Info` VALUES ('ORD-001',1001,2003,2,'2025-04-23',19780.00),('ORD-002',1002,2003,6,'2026-05-27',59340.00),('ORD-002',1002,2006,3,'2026-05-27',7469.70),('ORD-002',1002,2002,5,'2026-05-27',17849.90),('ORD-003',1005,2008,10,'2026-04-19',499.90),('ORD-003',1005,2006,2,'2026-04-19',4979.80),('ORD-003',1005,2001,1,'2026-04-19',119900.99),('ORD-003',1005,2007,1,'2026-04-19',1769.00),('ORD-004',1008,2006,5,'2026-05-24',12449.50),('ORD-004',1008,2005,2,'2026-05-24',33578.98),('ORD-004',1008,2007,3,'2026-05-24',5307.00),('ORD-004',1008,2004,7,'2026-05-27',563.50),('ORD-005',1006,2001,1,'2026-05-16',119900.99),('ORD-005',1006,2005,1,'2026-05-16',16789.49),('ORD-005',1006,2003,10,'2026-05-16',49798.00),('Ord-007',1007,2009,4,'2026-05-21',31599.08);
/*!40000 ALTER TABLE `Order_Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product_Info`
--

DROP TABLE IF EXISTS `Product_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product_Info` (
  `Product_ID` int DEFAULT NULL,
  `Product_Name` varchar(20) DEFAULT NULL,
  `Category` varchar(15) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Stock` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product_Info`
--

LOCK TABLES `Product_Info` WRITE;
/*!40000 ALTER TABLE `Product_Info` DISABLE KEYS */;
INSERT INTO `Product_Info` VALUES (2001,'Mac Book Pro','Electronics',119900.99,9),(2002,'Wireless Mouse','Electronics',3569.98,22),(2003,'Office Chair','Furniture',9890.00,3),(2004,'Notebook','Stationery',80.50,78),(2005,'Standing Desk','Furniture',16789.49,1),(2006,'USB Hub','Electronics',2489.90,36),(2007,'Desk Lamp','Furniture',1769.00,17),(2008,'Pen Set','Stationery',49.99,189),(2009,'Monitor','Electronics',7899.77,45);
/*!40000 ALTER TABLE `Product_Info` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-29 13:11:25
