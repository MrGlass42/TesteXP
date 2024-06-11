-- MySQL dump 10.13  Distrib 8.4.0, for Linux (x86_64)
--
-- Host: localhost    Database: xp_teste
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `xp_teste`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `xp_teste` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `xp_teste`;

--
-- Table structure for table `Evento`
--

DROP TABLE IF EXISTS `Evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Evento` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `IdUsuario` int NOT NULL,
  `UsuarioSnapshot` text NOT NULL,
  `Enviado` tinyint(1) NOT NULL,
  `TipoEvento` int NOT NULL,
  `DescricaoEvento` varchar(100) NOT NULL,
  `Data` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Evento`
--

LOCK TABLES `Evento` WRITE;
/*!40000 ALTER TABLE `Evento` DISABLE KEYS */;
INSERT INTO `Evento` VALUES (1,1,'eyJJZCI6MSwiTm9tZSI6IlBlZHJvIFJvY2hhIiwiVGlwbyI6MCwiRW1haWwiOiJwZWRyb2dvbWVzOTgwQGdtYWlsLmNvbSIsIlNlbmhhIjoiTVRJeiIsIlN0YXR1cyI6MH0=',1,0,'USUARIO_CADASTRADO','2024-06-11 16:54:33'),(2,2,'eyJJZCI6MiwiTm9tZSI6Ik5pY2tlbGJlY2siLCJUaXBvIjoxLCJFbWFpbCI6InRlc3RlQGdtYWlsLmNvbSIsIlNlbmhhIjoiTVRJeiIsIlN0YXR1cyI6MH0=',1,0,'USUARIO_CADASTRADO','2024-06-11 17:06:26');
/*!40000 ALTER TABLE `Evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Extrato`
--

DROP TABLE IF EXISTS `Extrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Extrato` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `IdProdutoFinanceiro` int NOT NULL,
  `ValorAnterior` float NOT NULL,
  `Rendimento` float NOT NULL,
  `DataReferencia` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdProdutoFinanceiro` (`IdProdutoFinanceiro`),
  CONSTRAINT `Extrato_ibfk_1` FOREIGN KEY (`IdProdutoFinanceiro`) REFERENCES `ProdutoFinanceiro` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Extrato`
--

LOCK TABLES `Extrato` WRITE;
/*!40000 ALTER TABLE `Extrato` DISABLE KEYS */;
INSERT INTO `Extrato` VALUES (1,1,20,0.1,'2024-06-11 13:56:44'),(2,1,22,0.1,'2024-06-11 13:57:26'),(3,1,24.2,0.1,'2024-06-11 14:05:08'),(4,1,26.62,0.1,'2024-06-11 14:05:09'),(5,1,29.282,0.1,'2024-06-11 14:05:10'),(6,1,32.2102,0.1,'2024-06-11 14:05:11'),(7,2,700,0.5,'2024-06-11 14:23:59'),(8,2,1050,0.5,'2024-06-11 14:24:00'),(9,2,1575,0.5,'2024-06-11 14:24:01'),(10,2,2362.5,0.5,'2024-06-11 14:24:02'),(11,2,3543.75,0.5,'2024-06-11 14:24:03'),(12,2,5315.62,0.5,'2024-06-11 14:24:03'),(13,2,7973.43,0.5,'2024-06-11 14:24:04'),(14,2,11960.1,0.5,'2024-06-11 14:24:06'),(15,2,17940.2,0.5,'2024-06-11 14:24:06'),(16,2,26910.3,0.5,'2024-06-11 14:24:07'),(17,2,40365.4,0.5,'2024-06-11 14:24:08'),(18,2,60548.1,0.5,'2024-06-11 14:24:08'),(19,2,90822.1,0.5,'2024-06-11 14:24:09'),(20,2,136233,0.5,'2024-06-11 14:24:10'),(21,1,35.4312,0.1,'2024-06-11 14:45:34'),(22,2,204350,0.5,'2024-06-11 14:45:34'),(23,1,38.9743,0.1,'2024-06-11 19:57:21'),(24,2,306525,0.5,'2024-06-11 19:57:21'),(25,1,42.8717,0.1,'2024-06-11 19:57:22'),(26,2,459788,0.5,'2024-06-11 19:57:22'),(27,1,47.1589,0.1,'2024-06-11 19:57:24'),(28,2,689682,0.5,'2024-06-11 19:57:24'),(29,1,51.8748,0.1,'2024-06-11 19:57:25'),(30,2,1034520,0.5,'2024-06-11 19:57:25'),(31,1,57.0623,0.1,'2024-06-11 19:57:26'),(32,2,1551780,0.5,'2024-06-11 19:57:26'),(33,1,62.7685,0.1,'2024-06-11 19:57:27'),(34,2,2327670,0.5,'2024-06-11 19:57:27'),(35,1,69.0453,0.1,'2024-06-11 19:57:28'),(36,2,3491500,0.5,'2024-06-11 19:57:28'),(37,1,75.9498,0.1,'2024-06-11 19:57:29'),(38,2,5237250,0.5,'2024-06-11 19:57:29'),(39,1,83.5448,0.1,'2024-06-11 19:57:30'),(40,2,7855880,0.5,'2024-06-11 19:57:30'),(41,1,91.8993,0.1,'2024-06-11 19:57:31'),(42,2,11783800,0.5,'2024-06-11 19:57:31'),(43,1,101.089,0.1,'2024-06-11 19:57:32'),(44,2,17675700,0.5,'2024-06-11 19:57:32'),(45,1,111.198,0.1,'2024-06-11 19:57:33'),(46,2,26513600,0.5,'2024-06-11 19:57:33'),(47,1,122.318,0.1,'2024-06-11 19:57:33'),(48,2,39770400,0.5,'2024-06-11 19:57:33');
/*!40000 ALTER TABLE `Extrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProdutoFinanceiro`
--

DROP TABLE IF EXISTS `ProdutoFinanceiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProdutoFinanceiro` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(200) NOT NULL,
  `DisponivelParaVenda` tinyint(1) NOT NULL,
  `Valor` float NOT NULL,
  `Status` int NOT NULL,
  `RendimentoDiario` float NOT NULL,
  `DataCadastro` datetime NOT NULL,
  `DataVencimento` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProdutoFinanceiro`
--

LOCK TABLES `ProdutoFinanceiro` WRITE;
/*!40000 ALTER TABLE `ProdutoFinanceiro` DISABLE KEYS */;
INSERT INTO `ProdutoFinanceiro` VALUES (1,'Pr00FG 1',0,20,0,0.1,'2024-06-11 13:55:13','2024-06-20 00:00:00'),(2,'FFYTr0G 2',1,700,0,0.5,'2024-06-11 14:17:09','2024-06-20 00:00:00');
/*!40000 ALTER TABLE `ProdutoFinanceiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProdutoUsuario`
--

DROP TABLE IF EXISTS `ProdutoUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProdutoUsuario` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `IdProdutoFinanceiro` int NOT NULL,
  `IdUsuario` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdProdutoFinanceiro` (`IdProdutoFinanceiro`),
  KEY `IdUsuario` (`IdUsuario`),
  CONSTRAINT `ProdutoUsuario_ibfk_1` FOREIGN KEY (`IdProdutoFinanceiro`) REFERENCES `ProdutoFinanceiro` (`Id`),
  CONSTRAINT `ProdutoUsuario_ibfk_2` FOREIGN KEY (`IdUsuario`) REFERENCES `Usuario` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProdutoUsuario`
--

LOCK TABLES `ProdutoUsuario` WRITE;
/*!40000 ALTER TABLE `ProdutoUsuario` DISABLE KEYS */;
INSERT INTO `ProdutoUsuario` VALUES (2,1,2),(4,2,2);
/*!40000 ALTER TABLE `ProdutoUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Saldo`
--

DROP TABLE IF EXISTS `Saldo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Saldo` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Valor` float NOT NULL,
  `IdUsuario` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdUsuario` (`IdUsuario`),
  CONSTRAINT `Saldo_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `Usuario` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Saldo`
--

LOCK TABLES `Saldo` WRITE;
/*!40000 ALTER TABLE `Saldo` DISABLE KEYS */;
INSERT INTO `Saldo` VALUES (1,305840,1),(2,-306560,2);
/*!40000 ALTER TABLE `Saldo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuario` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(200) NOT NULL,
  `Tipo` int NOT NULL,
  `Status` int NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Senha` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'Pedro Rocha',0,0,'pedrogomes980@gmail.com','MTIz'),(2,'Nickelbeck',1,0,'teste@gmail.com','MTIz');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Venda`
--

DROP TABLE IF EXISTS `Venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Venda` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `IdProdutoFinanceiro` int NOT NULL,
  `IdComprador` int NOT NULL,
  `IdVendedor` int DEFAULT NULL,
  `Valor` float NOT NULL,
  `DataVenda` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdProdutoFinanceiro` (`IdProdutoFinanceiro`),
  KEY `IdVendedor` (`IdVendedor`),
  CONSTRAINT `Venda_ibfk_1` FOREIGN KEY (`IdProdutoFinanceiro`) REFERENCES `ProdutoFinanceiro` (`Id`),
  CONSTRAINT `Venda_ibfk_2` FOREIGN KEY (`IdVendedor`) REFERENCES `Usuario` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Venda`
--

LOCK TABLES `Venda` WRITE;
/*!40000 ALTER TABLE `Venda` DISABLE KEYS */;
INSERT INTO `Venda` VALUES (1,1,1,NULL,20,'2024-06-11 13:56:22'),(2,1,2,1,35.4312,'2024-06-11 14:13:58'),(3,2,1,NULL,700,'2024-06-11 14:17:23'),(4,2,2,1,306525,'2024-06-11 14:46:14');
/*!40000 ALTER TABLE `Venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `keycloak`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `keycloak` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `keycloak`;

--
-- Table structure for table `ADMIN_EVENT_ENTITY`
--

DROP TABLE IF EXISTS `ADMIN_EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ADMIN_EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `ADMIN_EVENT_TIME` bigint DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `OPERATION_TYPE` varchar(255) DEFAULT NULL,
  `AUTH_REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_CLIENT_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `RESOURCE_PATH` text,
  `REPRESENTATION` text,
  `ERROR` varchar(255) DEFAULT NULL,
  `RESOURCE_TYPE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ADMIN_EVENT_TIME` (`REALM_ID`,`ADMIN_EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADMIN_EVENT_ENTITY`
--

LOCK TABLES `ADMIN_EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ASSOCIATED_POLICY`
--

DROP TABLE IF EXISTS `ASSOCIATED_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ASSOCIATED_POLICY` (
  `POLICY_ID` varchar(36) NOT NULL,
  `ASSOCIATED_POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`POLICY_ID`,`ASSOCIATED_POLICY_ID`),
  KEY `IDX_ASSOC_POL_ASSOC_POL_ID` (`ASSOCIATED_POLICY_ID`),
  CONSTRAINT `FK_FRSR5S213XCX4WNKOG82SSRFY` FOREIGN KEY (`ASSOCIATED_POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPAS14XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASSOCIATED_POLICY`
--

LOCK TABLES `ASSOCIATED_POLICY` WRITE;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_EXECUTION`
--

DROP TABLE IF EXISTS `AUTHENTICATION_EXECUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATION_EXECUTION` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `AUTHENTICATOR_FLOW` bit(1) NOT NULL DEFAULT b'0',
  `AUTH_FLOW_ID` varchar(36) DEFAULT NULL,
  `AUTH_CONFIG` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_EXEC_REALM_FLOW` (`REALM_ID`,`FLOW_ID`),
  KEY `IDX_AUTH_EXEC_FLOW` (`FLOW_ID`),
  CONSTRAINT `FK_AUTH_EXEC_FLOW` FOREIGN KEY (`FLOW_ID`) REFERENCES `AUTHENTICATION_FLOW` (`ID`),
  CONSTRAINT `FK_AUTH_EXEC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_EXECUTION`
--

LOCK TABLES `AUTHENTICATION_EXECUTION` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('0064ee80-b6d0-491c-bf8b-188cce6f6576',NULL,'idp-username-password-form','96697988-5ce7-4270-bc20-f580b5e13e24','a77c7381-bbfb-4729-bab9-cec11dbedfc2',0,10,_binary '\0',NULL,NULL),('05a91d3f-ab3f-49bb-88be-5da536c4847c',NULL,'auth-otp-form','96697988-5ce7-4270-bc20-f580b5e13e24','0b6c93d0-ad1d-4b64-92e3-fe47d433ffa3',0,20,_binary '\0',NULL,NULL),('05e2ee3f-bb93-4b9d-8801-7c7192e664d0',NULL,NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','3d734a0a-acdb-4ce8-bab7-bc67ed6a722a',2,30,_binary '','88da97b4-be41-4d16-80b8-1a7e7e645eae',NULL),('0a1a1204-7ed9-4113-a0a5-2b42033cb2a4',NULL,'auth-otp-form','25c03e82-4734-41ea-bd68-a8ee34cd4499','31691b3e-15c4-42a6-93bc-c6df0fc8efee',0,20,_binary '\0',NULL,NULL),('0cb5f686-3a31-4459-8c19-0520015e5c8f',NULL,'idp-confirm-link','25c03e82-4734-41ea-bd68-a8ee34cd4499','56bdfdc3-5c52-4b4e-86e8-fba1a47cd78c',0,10,_binary '\0',NULL,NULL),('127d771c-328d-43f4-be33-8c8922612a4a',NULL,'idp-username-password-form','25c03e82-4734-41ea-bd68-a8ee34cd4499','e4f19006-32b4-41a6-bd52-850c27c903e2',0,10,_binary '\0',NULL,NULL),('15064d4d-a970-4808-b02a-bd1a0cef1ee1',NULL,'registration-recaptcha-action','96697988-5ce7-4270-bc20-f580b5e13e24','87c035ec-9e49-4fd2-82a0-74a4d01e2094',3,60,_binary '\0',NULL,NULL),('1548d8b6-a01b-49d6-84e5-d589b25c8391',NULL,NULL,'96697988-5ce7-4270-bc20-f580b5e13e24','a3754d4f-17f4-4d2a-b329-e12a081b0d76',1,40,_binary '','4f7969c6-3f32-4da3-b173-40c209a87077',NULL),('1f157f32-0cea-4c36-81a7-0f25f968fa2e',NULL,'reset-credentials-choose-user','25c03e82-4734-41ea-bd68-a8ee34cd4499','dc084f23-4a92-4bdb-8a82-c530b2dc4c6d',0,10,_binary '\0',NULL,NULL),('21533c20-27ef-4a63-a5e2-9c09f090f5f7',NULL,'registration-recaptcha-action','25c03e82-4734-41ea-bd68-a8ee34cd4499','6c366be1-f51f-452f-ad46-da36336e767f',3,60,_binary '\0',NULL,NULL),('21668274-25a8-480b-a4f2-6c9474f120f3',NULL,'client-secret','96697988-5ce7-4270-bc20-f580b5e13e24','3e6b1a16-ebc8-4f58-af91-0b16731dc8d4',2,10,_binary '\0',NULL,NULL),('22f4fbb6-4541-4ff1-b00d-92c46f97f830',NULL,'reset-credentials-choose-user','96697988-5ce7-4270-bc20-f580b5e13e24','a3754d4f-17f4-4d2a-b329-e12a081b0d76',0,10,_binary '\0',NULL,NULL),('250a66a9-ce7e-431f-bd3d-6b8d4e97bc07',NULL,NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','e4225ef2-70e6-42e4-95e6-8df480f4d731',0,20,_binary '','ec6259fa-0f06-45fc-84f1-1acbbcfc5cc6',NULL),('28c59ae5-472f-44f9-b70f-92f49c2b47ea',NULL,'idp-create-user-if-unique','25c03e82-4734-41ea-bd68-a8ee34cd4499','b1fc7f8d-c4ad-4df3-bd65-f16f55129fbc',2,10,_binary '\0',NULL,'ad03de49-327c-4aa5-bb7a-80ca44f4ba86'),('2a14eee8-36fc-4b9b-8630-dce0eefe2a6d',NULL,'auth-otp-form','96697988-5ce7-4270-bc20-f580b5e13e24','9bcae1e2-25bf-4d9b-91ec-c3654da34465',0,20,_binary '\0',NULL,NULL),('2a50ebdb-244a-4539-9ed7-32dbe79205df',NULL,'conditional-user-configured','25c03e82-4734-41ea-bd68-a8ee34cd4499','92d1781a-7c29-4469-8e83-3e63a2972050',0,10,_binary '\0',NULL,NULL),('31d58a48-385b-4923-a51a-9b471154621c',NULL,'auth-otp-form','25c03e82-4734-41ea-bd68-a8ee34cd4499','558e67fa-bbc4-4c37-934c-3c610779980f',0,20,_binary '\0',NULL,NULL),('31efaf80-66f0-4685-a8fe-cbbb1167d87e',NULL,'idp-review-profile','25c03e82-4734-41ea-bd68-a8ee34cd4499','56e4e147-a114-4c3d-b5af-e1060d00e47e',0,10,_binary '\0',NULL,'035e9127-f758-4708-83ea-86ac5e7804cc'),('327c6c9b-6a39-4bac-a7b4-5ebccd198fb7',NULL,'conditional-user-configured','96697988-5ce7-4270-bc20-f580b5e13e24','9bcae1e2-25bf-4d9b-91ec-c3654da34465',0,10,_binary '\0',NULL,NULL),('33a229ac-fa9e-4f16-8e60-b03b5373b86b',NULL,'client-jwt','96697988-5ce7-4270-bc20-f580b5e13e24','3e6b1a16-ebc8-4f58-af91-0b16731dc8d4',2,20,_binary '\0',NULL,NULL),('361d12b2-d709-4d42-9779-55a4c1925a6d',NULL,'http-basic-authenticator','96697988-5ce7-4270-bc20-f580b5e13e24','065c335f-5ec1-4fd4-8a17-7f267ee12f03',0,10,_binary '\0',NULL,NULL),('36b58489-8159-446b-bfeb-66d22055d845',NULL,'reset-password','96697988-5ce7-4270-bc20-f580b5e13e24','a3754d4f-17f4-4d2a-b329-e12a081b0d76',0,30,_binary '\0',NULL,NULL),('3d9d9078-a982-406c-ba4d-6796a56db47a',NULL,'registration-password-action','96697988-5ce7-4270-bc20-f580b5e13e24','87c035ec-9e49-4fd2-82a0-74a4d01e2094',0,50,_binary '\0',NULL,NULL),('3f83d8c2-cf3d-4d77-9a9d-74ee85e3a1d8',NULL,'registration-page-form','96697988-5ce7-4270-bc20-f580b5e13e24','baa0bcd1-5e74-4a77-b7bb-b5b04e4059db',0,10,_binary '','87c035ec-9e49-4fd2-82a0-74a4d01e2094',NULL),('3f8a1d0a-0556-4d7e-b8cd-26a46403c0a7',NULL,'idp-review-profile','96697988-5ce7-4270-bc20-f580b5e13e24','16c68666-7701-4519-8ba4-2e015f18b959',0,10,_binary '\0',NULL,'8b30f94d-cc59-45cb-9d56-ada20ecd9ae7'),('413bca1a-ff41-4f6c-965e-0c34e5026bb5',NULL,'docker-http-basic-authenticator','25c03e82-4734-41ea-bd68-a8ee34cd4499','7a8f1f28-6824-46b9-8aff-205779dc613c',0,10,_binary '\0',NULL,NULL),('442efdac-d21e-4e44-b6e4-2cbcaf352e75',NULL,'registration-user-creation','25c03e82-4734-41ea-bd68-a8ee34cd4499','6c366be1-f51f-452f-ad46-da36336e767f',0,20,_binary '\0',NULL,NULL),('456eed8c-5926-4adc-9b5e-a76424b3c731',NULL,'auth-spnego','96697988-5ce7-4270-bc20-f580b5e13e24','b76ccfd0-2117-46a6-bcb9-a890b5db05bd',3,20,_binary '\0',NULL,NULL),('4651afc7-95c6-4102-b568-5efc6d3bcb4c',NULL,NULL,'96697988-5ce7-4270-bc20-f580b5e13e24','16c68666-7701-4519-8ba4-2e015f18b959',0,20,_binary '','c12b8fa2-d24d-4b0c-88d1-bd5a6d2bde60',NULL),('4930305b-794d-40b8-a9a9-2a6a95fe1ba6',NULL,'direct-grant-validate-password','96697988-5ce7-4270-bc20-f580b5e13e24','889078cb-f61f-4682-9a28-f4e29bd4f385',0,20,_binary '\0',NULL,NULL),('49ac936d-4c58-4638-97de-ec7f548d3ebf',NULL,'idp-confirm-link','96697988-5ce7-4270-bc20-f580b5e13e24','c0b4c931-0d92-4f0f-ae40-158a410a8162',0,10,_binary '\0',NULL,NULL),('49bb8fac-51eb-47c2-be88-1f64cb98a9a0',NULL,'basic-auth','25c03e82-4734-41ea-bd68-a8ee34cd4499','ec6259fa-0f06-45fc-84f1-1acbbcfc5cc6',0,10,_binary '\0',NULL,NULL),('4bbec3d8-cff7-403e-971b-0abb7b4cfd0d',NULL,NULL,'96697988-5ce7-4270-bc20-f580b5e13e24','e064c64c-5229-4b73-9c35-50441adc2124',0,20,_binary '','427fe47a-3459-411b-a48f-f5c63bc66198',NULL),('4c03ef12-f1cc-474e-b6e3-90fdca1d282a',NULL,'client-jwt','25c03e82-4734-41ea-bd68-a8ee34cd4499','20defc3a-62e5-4c20-af64-0a7471c4dd92',2,20,_binary '\0',NULL,NULL),('55dabff0-893d-4979-8ef6-85e075c9c13b',NULL,'reset-otp','96697988-5ce7-4270-bc20-f580b5e13e24','4f7969c6-3f32-4da3-b173-40c209a87077',0,20,_binary '\0',NULL,NULL),('57621612-dc1a-4397-9505-be40740b0c2e',NULL,'auth-spnego','25c03e82-4734-41ea-bd68-a8ee34cd4499','ec6259fa-0f06-45fc-84f1-1acbbcfc5cc6',3,30,_binary '\0',NULL,NULL),('5ae564d0-8336-40fa-81dc-886d0974f5bb',NULL,'idp-email-verification','96697988-5ce7-4270-bc20-f580b5e13e24','c2722cbf-4e17-4506-afad-c677f61f18c7',2,10,_binary '\0',NULL,NULL),('5af0a60b-abf0-4120-a2ea-063807bc5084',NULL,'conditional-user-configured','25c03e82-4734-41ea-bd68-a8ee34cd4499','31691b3e-15c4-42a6-93bc-c6df0fc8efee',0,10,_binary '\0',NULL,NULL),('5bd0fbbc-e50a-4881-8e90-56b1636bdb59',NULL,'registration-user-creation','96697988-5ce7-4270-bc20-f580b5e13e24','87c035ec-9e49-4fd2-82a0-74a4d01e2094',0,20,_binary '\0',NULL,NULL),('5ca3b734-a127-4e76-8c80-b4570b694a8e',NULL,'auth-spnego','96697988-5ce7-4270-bc20-f580b5e13e24','427fe47a-3459-411b-a48f-f5c63bc66198',3,30,_binary '\0',NULL,NULL),('5d5d6618-28ad-462e-a3a5-962617898afe',NULL,NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','e4f19006-32b4-41a6-bd52-850c27c903e2',1,20,_binary '','31691b3e-15c4-42a6-93bc-c6df0fc8efee',NULL),('5d91e30f-364e-43e7-8671-d955f0cd530b',NULL,'conditional-user-configured','96697988-5ce7-4270-bc20-f580b5e13e24','0b6c93d0-ad1d-4b64-92e3-fe47d433ffa3',0,10,_binary '\0',NULL,NULL),('6e4afcbd-4199-4b2e-976f-e29a0e658180',NULL,'auth-spnego','25c03e82-4734-41ea-bd68-a8ee34cd4499','3d734a0a-acdb-4ce8-bab7-bc67ed6a722a',3,20,_binary '\0',NULL,NULL),('7293ff04-5657-482a-baa0-1b61766d6b33',NULL,'registration-profile-action','25c03e82-4734-41ea-bd68-a8ee34cd4499','6c366be1-f51f-452f-ad46-da36336e767f',0,40,_binary '\0',NULL,NULL),('730b17d1-384d-4778-878c-72fd3e516099',NULL,NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','b1fc7f8d-c4ad-4df3-bd65-f16f55129fbc',2,20,_binary '','56bdfdc3-5c52-4b4e-86e8-fba1a47cd78c',NULL),('74f2738f-303a-44a4-b54d-7172aa4c9bdc',NULL,'identity-provider-redirector','25c03e82-4734-41ea-bd68-a8ee34cd4499','3d734a0a-acdb-4ce8-bab7-bc67ed6a722a',2,25,_binary '\0',NULL,NULL),('750cb0e6-262d-4081-9722-037d65947a8c',NULL,'auth-username-password-form','96697988-5ce7-4270-bc20-f580b5e13e24','3a1dabcd-f594-4568-9cf2-08be71f54ec4',0,10,_binary '\0',NULL,NULL),('7767b854-3918-4f75-b9ad-8908e391c508',NULL,'basic-auth-otp','96697988-5ce7-4270-bc20-f580b5e13e24','427fe47a-3459-411b-a48f-f5c63bc66198',3,20,_binary '\0',NULL,NULL),('7c8c2fd1-d7a1-4846-a26e-b77effe6608f',NULL,'idp-create-user-if-unique','96697988-5ce7-4270-bc20-f580b5e13e24','c12b8fa2-d24d-4b0c-88d1-bd5a6d2bde60',2,10,_binary '\0',NULL,'33fb3eef-1d55-4830-be5e-97e62c8614cb'),('7d030122-2af7-4683-9bf6-5f5ae1f2e2e9',NULL,'basic-auth-otp','25c03e82-4734-41ea-bd68-a8ee34cd4499','ec6259fa-0f06-45fc-84f1-1acbbcfc5cc6',3,20,_binary '\0',NULL,NULL),('80173291-814d-4149-abd5-4743fc3a9aa3',NULL,'reset-credential-email','25c03e82-4734-41ea-bd68-a8ee34cd4499','dc084f23-4a92-4bdb-8a82-c530b2dc4c6d',0,20,_binary '\0',NULL,NULL),('804e095e-7830-4e20-80b9-ad0358a0bf09',NULL,NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','8adbde4b-644d-42fb-9c5d-e51761f319be',2,20,_binary '','e4f19006-32b4-41a6-bd52-850c27c903e2',NULL),('82c1b723-f6b5-4dd0-a9b8-45ed97b55956',NULL,NULL,'96697988-5ce7-4270-bc20-f580b5e13e24','889078cb-f61f-4682-9a28-f4e29bd4f385',1,30,_binary '','0d8571b0-2238-498d-9dc3-7973f44ddf5d',NULL),('8799be62-372b-41f6-b272-a6abb7736842',NULL,NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','dc084f23-4a92-4bdb-8a82-c530b2dc4c6d',1,40,_binary '','40339a9e-e334-455a-82a8-45eb912654b4',NULL),('89554ed1-30a5-4b58-bcf0-792c6e2eb57a',NULL,'no-cookie-redirect','96697988-5ce7-4270-bc20-f580b5e13e24','e064c64c-5229-4b73-9c35-50441adc2124',0,10,_binary '\0',NULL,NULL),('8a1ed107-1b39-4ffe-8d3d-e210748f05ca',NULL,'identity-provider-redirector','96697988-5ce7-4270-bc20-f580b5e13e24','b76ccfd0-2117-46a6-bcb9-a890b5db05bd',2,25,_binary '\0',NULL,NULL),('8d28be16-5b0b-401d-84d9-74326289b04c',NULL,'reset-otp','25c03e82-4734-41ea-bd68-a8ee34cd4499','40339a9e-e334-455a-82a8-45eb912654b4',0,20,_binary '\0',NULL,NULL),('8d86952b-d70c-463e-a916-79c35c52a2a3',NULL,NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','7fc28f87-bf89-475e-bd89-a007d93f9950',1,30,_binary '','92d1781a-7c29-4469-8e83-3e63a2972050',NULL),('932e2ae9-8bb9-407b-a0a1-8d6d16effb5c',NULL,NULL,'96697988-5ce7-4270-bc20-f580b5e13e24','a77c7381-bbfb-4729-bab9-cec11dbedfc2',1,20,_binary '','9bcae1e2-25bf-4d9b-91ec-c3654da34465',NULL),('9635532d-2368-460f-a497-9317d7e59146',NULL,'client-secret-jwt','25c03e82-4734-41ea-bd68-a8ee34cd4499','20defc3a-62e5-4c20-af64-0a7471c4dd92',2,30,_binary '\0',NULL,NULL),('969a3fad-71bd-4613-9534-c6a4765d43ef',NULL,'reset-password','25c03e82-4734-41ea-bd68-a8ee34cd4499','dc084f23-4a92-4bdb-8a82-c530b2dc4c6d',0,30,_binary '\0',NULL,NULL),('98a044fc-8cc0-4a9d-9378-2336482d7cff',NULL,NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','56e4e147-a114-4c3d-b5af-e1060d00e47e',0,20,_binary '','b1fc7f8d-c4ad-4df3-bd65-f16f55129fbc',NULL),('9b1327de-ad23-4283-96e8-53b71002fcc4',NULL,'registration-page-form','25c03e82-4734-41ea-bd68-a8ee34cd4499','5a3ba3a1-ec7e-4c24-9a08-a120ef9da27b',0,10,_binary '','6c366be1-f51f-452f-ad46-da36336e767f',NULL),('a5e5d967-cc8b-48af-8a25-ad2b1dcf1236',NULL,NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','56bdfdc3-5c52-4b4e-86e8-fba1a47cd78c',0,20,_binary '','8adbde4b-644d-42fb-9c5d-e51761f319be',NULL),('a7378b74-ab43-420f-8f6b-c67e9fbdc764',NULL,'direct-grant-validate-otp','25c03e82-4734-41ea-bd68-a8ee34cd4499','92d1781a-7c29-4469-8e83-3e63a2972050',0,20,_binary '\0',NULL,NULL),('aabe3300-93a9-4124-91ed-60ae18cd1eb1',NULL,'client-secret-jwt','96697988-5ce7-4270-bc20-f580b5e13e24','3e6b1a16-ebc8-4f58-af91-0b16731dc8d4',2,30,_binary '\0',NULL,NULL),('ad6678e0-4978-4806-bae6-6aefc52c38d2',NULL,'registration-password-action','25c03e82-4734-41ea-bd68-a8ee34cd4499','6c366be1-f51f-452f-ad46-da36336e767f',0,50,_binary '\0',NULL,NULL),('b2186723-74bd-4393-bc64-a45a5b718de6',NULL,'conditional-user-configured','96697988-5ce7-4270-bc20-f580b5e13e24','0d8571b0-2238-498d-9dc3-7973f44ddf5d',0,10,_binary '\0',NULL,NULL),('b3fa2fab-03b0-42f4-bb74-1403dde64373',NULL,'no-cookie-redirect','25c03e82-4734-41ea-bd68-a8ee34cd4499','e4225ef2-70e6-42e4-95e6-8df480f4d731',0,10,_binary '\0',NULL,NULL),('b5f571a6-7886-4d1f-85ef-d1063e30b78d',NULL,'basic-auth','96697988-5ce7-4270-bc20-f580b5e13e24','427fe47a-3459-411b-a48f-f5c63bc66198',0,10,_binary '\0',NULL,NULL),('b7f177dd-18fe-4163-a7c5-684465d41734',NULL,'idp-email-verification','25c03e82-4734-41ea-bd68-a8ee34cd4499','8adbde4b-644d-42fb-9c5d-e51761f319be',2,10,_binary '\0',NULL,NULL),('ba90bfa4-9f57-4225-b1df-27c86c40ff54',NULL,'http-basic-authenticator','25c03e82-4734-41ea-bd68-a8ee34cd4499','5541a3aa-2a01-427b-b2b1-b67a0d9aa909',0,10,_binary '\0',NULL,NULL),('bd976bb6-f6a4-4564-95b4-012362e1a4c0',NULL,'conditional-user-configured','25c03e82-4734-41ea-bd68-a8ee34cd4499','40339a9e-e334-455a-82a8-45eb912654b4',0,10,_binary '\0',NULL,NULL),('bfb97a34-42d8-4d9b-9f1c-b9c4622c2ff7',NULL,NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','88da97b4-be41-4d16-80b8-1a7e7e645eae',1,20,_binary '','558e67fa-bbc4-4c37-934c-3c610779980f',NULL),('c1de158a-1f21-439f-8381-7ec496eb80bf',NULL,'reset-credential-email','96697988-5ce7-4270-bc20-f580b5e13e24','a3754d4f-17f4-4d2a-b329-e12a081b0d76',0,20,_binary '\0',NULL,NULL),('cc506b19-867b-4102-bcef-154f52be6af1',NULL,'conditional-user-configured','25c03e82-4734-41ea-bd68-a8ee34cd4499','558e67fa-bbc4-4c37-934c-3c610779980f',0,10,_binary '\0',NULL,NULL),('cfce8c67-9858-4417-9df9-2e5988f31a77',NULL,'conditional-user-configured','96697988-5ce7-4270-bc20-f580b5e13e24','4f7969c6-3f32-4da3-b173-40c209a87077',0,10,_binary '\0',NULL,NULL),('d07c56de-0325-4c32-b570-3bd042b30c2b',NULL,'direct-grant-validate-username','96697988-5ce7-4270-bc20-f580b5e13e24','889078cb-f61f-4682-9a28-f4e29bd4f385',0,10,_binary '\0',NULL,NULL),('d39ebaf2-3757-4ebe-baef-11146a2581ca',NULL,NULL,'96697988-5ce7-4270-bc20-f580b5e13e24','c2722cbf-4e17-4506-afad-c677f61f18c7',2,20,_binary '','a77c7381-bbfb-4729-bab9-cec11dbedfc2',NULL),('d3e07e65-bd10-406e-a4a8-010fe6e172b9',NULL,NULL,'96697988-5ce7-4270-bc20-f580b5e13e24','b76ccfd0-2117-46a6-bcb9-a890b5db05bd',2,30,_binary '','3a1dabcd-f594-4568-9cf2-08be71f54ec4',NULL),('d80b5a7d-c10d-4b2e-b111-822db753dc6b',NULL,'auth-username-password-form','25c03e82-4734-41ea-bd68-a8ee34cd4499','88da97b4-be41-4d16-80b8-1a7e7e645eae',0,10,_binary '\0',NULL,NULL),('dea1aa6b-18b1-4e2c-9207-779b1e312f7e',NULL,'direct-grant-validate-password','25c03e82-4734-41ea-bd68-a8ee34cd4499','7fc28f87-bf89-475e-bd89-a007d93f9950',0,20,_binary '\0',NULL,NULL),('df7eb98d-4d93-454a-bd6c-5679d33e0d5f',NULL,NULL,'96697988-5ce7-4270-bc20-f580b5e13e24','3a1dabcd-f594-4568-9cf2-08be71f54ec4',1,20,_binary '','0b6c93d0-ad1d-4b64-92e3-fe47d433ffa3',NULL),('e278ce15-227f-4bed-bb00-63a6ed02f106',NULL,'docker-http-basic-authenticator','96697988-5ce7-4270-bc20-f580b5e13e24','d45f7921-6cca-4684-ab3b-ada9e931ddd9',0,10,_binary '\0',NULL,NULL),('e7cf374b-1950-4042-a5b0-822f009cac44',NULL,'client-x509','96697988-5ce7-4270-bc20-f580b5e13e24','3e6b1a16-ebc8-4f58-af91-0b16731dc8d4',2,40,_binary '\0',NULL,NULL),('e98a261d-e0b8-40ed-a915-9c7c5619b84f',NULL,'client-secret','25c03e82-4734-41ea-bd68-a8ee34cd4499','20defc3a-62e5-4c20-af64-0a7471c4dd92',2,10,_binary '\0',NULL,NULL),('e9e710ef-81f4-4fc8-a455-6431d23eefcb',NULL,'direct-grant-validate-username','25c03e82-4734-41ea-bd68-a8ee34cd4499','7fc28f87-bf89-475e-bd89-a007d93f9950',0,10,_binary '\0',NULL,NULL),('ea2b7cea-bb7b-4361-bf8b-9d8d7ccf9ea2',NULL,'direct-grant-validate-otp','96697988-5ce7-4270-bc20-f580b5e13e24','0d8571b0-2238-498d-9dc3-7973f44ddf5d',0,20,_binary '\0',NULL,NULL),('eb37ab1e-e5dd-420f-89a4-f94897dbd9cf',NULL,'auth-cookie','96697988-5ce7-4270-bc20-f580b5e13e24','b76ccfd0-2117-46a6-bcb9-a890b5db05bd',2,10,_binary '\0',NULL,NULL),('ecba977a-8175-4d21-a4fd-8013d5975cf5',NULL,'client-x509','25c03e82-4734-41ea-bd68-a8ee34cd4499','20defc3a-62e5-4c20-af64-0a7471c4dd92',2,40,_binary '\0',NULL,NULL),('ef4dbd20-a688-4db2-a064-673130783fd9',NULL,NULL,'96697988-5ce7-4270-bc20-f580b5e13e24','c0b4c931-0d92-4f0f-ae40-158a410a8162',0,20,_binary '','c2722cbf-4e17-4506-afad-c677f61f18c7',NULL),('f6492d36-25fe-48bc-b45f-209b2148b057',NULL,'auth-cookie','25c03e82-4734-41ea-bd68-a8ee34cd4499','3d734a0a-acdb-4ce8-bab7-bc67ed6a722a',2,10,_binary '\0',NULL,NULL),('faae1c13-7a1f-41b9-bb88-d2ffa0d7e366',NULL,'registration-profile-action','96697988-5ce7-4270-bc20-f580b5e13e24','87c035ec-9e49-4fd2-82a0-74a4d01e2094',0,40,_binary '\0',NULL,NULL),('feaeaf4f-a059-4038-9109-29b9129f7eac',NULL,NULL,'96697988-5ce7-4270-bc20-f580b5e13e24','c12b8fa2-d24d-4b0c-88d1-bd5a6d2bde60',2,20,_binary '','c0b4c931-0d92-4f0f-ae40-158a410a8162',NULL);
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_FLOW`
--

DROP TABLE IF EXISTS `AUTHENTICATION_FLOW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATION_FLOW` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) NOT NULL DEFAULT 'basic-flow',
  `TOP_LEVEL` bit(1) NOT NULL DEFAULT b'0',
  `BUILT_IN` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_FLOW_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_FLOW_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('065c335f-5ec1-4fd4-8a17-7f267ee12f03','saml ecp','SAML ECP Profile Authentication Flow','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '',_binary ''),('0b6c93d0-ad1d-4b64-92e3-fe47d433ffa3','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '\0',_binary ''),('0d8571b0-2238-498d-9dc3-7973f44ddf5d','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '\0',_binary ''),('16c68666-7701-4519-8ba4-2e015f18b959','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '',_binary ''),('20defc3a-62e5-4c20-af64-0a7471c4dd92','clients','Base authentication for clients','25c03e82-4734-41ea-bd68-a8ee34cd4499','client-flow',_binary '',_binary ''),('31691b3e-15c4-42a6-93bc-c6df0fc8efee','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '\0',_binary ''),('3a1dabcd-f594-4568-9cf2-08be71f54ec4','forms','Username, password, otp and other auth forms.','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '\0',_binary ''),('3d734a0a-acdb-4ce8-bab7-bc67ed6a722a','browser','browser based authentication','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '',_binary ''),('3e6b1a16-ebc8-4f58-af91-0b16731dc8d4','clients','Base authentication for clients','96697988-5ce7-4270-bc20-f580b5e13e24','client-flow',_binary '',_binary ''),('40339a9e-e334-455a-82a8-45eb912654b4','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '\0',_binary ''),('427fe47a-3459-411b-a48f-f5c63bc66198','Authentication Options','Authentication options.','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '\0',_binary ''),('4f7969c6-3f32-4da3-b173-40c209a87077','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '\0',_binary ''),('5541a3aa-2a01-427b-b2b1-b67a0d9aa909','saml ecp','SAML ECP Profile Authentication Flow','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '',_binary ''),('558e67fa-bbc4-4c37-934c-3c610779980f','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '\0',_binary ''),('56bdfdc3-5c52-4b4e-86e8-fba1a47cd78c','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '\0',_binary ''),('56e4e147-a114-4c3d-b5af-e1060d00e47e','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '',_binary ''),('5a3ba3a1-ec7e-4c24-9a08-a120ef9da27b','registration','registration flow','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '',_binary ''),('6c366be1-f51f-452f-ad46-da36336e767f','registration form','registration form','25c03e82-4734-41ea-bd68-a8ee34cd4499','form-flow',_binary '\0',_binary ''),('7a8f1f28-6824-46b9-8aff-205779dc613c','docker auth','Used by Docker clients to authenticate against the IDP','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '',_binary ''),('7fc28f87-bf89-475e-bd89-a007d93f9950','direct grant','OpenID Connect Resource Owner Grant','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '',_binary ''),('87c035ec-9e49-4fd2-82a0-74a4d01e2094','registration form','registration form','96697988-5ce7-4270-bc20-f580b5e13e24','form-flow',_binary '\0',_binary ''),('889078cb-f61f-4682-9a28-f4e29bd4f385','direct grant','OpenID Connect Resource Owner Grant','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '',_binary ''),('88da97b4-be41-4d16-80b8-1a7e7e645eae','forms','Username, password, otp and other auth forms.','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '\0',_binary ''),('8adbde4b-644d-42fb-9c5d-e51761f319be','Account verification options','Method with which to verity the existing account','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '\0',_binary ''),('92d1781a-7c29-4469-8e83-3e63a2972050','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '\0',_binary ''),('9bcae1e2-25bf-4d9b-91ec-c3654da34465','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '\0',_binary ''),('a3754d4f-17f4-4d2a-b329-e12a081b0d76','reset credentials','Reset credentials for a user if they forgot their password or something','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '',_binary ''),('a77c7381-bbfb-4729-bab9-cec11dbedfc2','Verify Existing Account by Re-authentication','Reauthentication of existing account','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '\0',_binary ''),('b1fc7f8d-c4ad-4df3-bd65-f16f55129fbc','User creation or linking','Flow for the existing/non-existing user alternatives','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '\0',_binary ''),('b76ccfd0-2117-46a6-bcb9-a890b5db05bd','browser','browser based authentication','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '',_binary ''),('baa0bcd1-5e74-4a77-b7bb-b5b04e4059db','registration','registration flow','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '',_binary ''),('c0b4c931-0d92-4f0f-ae40-158a410a8162','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '\0',_binary ''),('c12b8fa2-d24d-4b0c-88d1-bd5a6d2bde60','User creation or linking','Flow for the existing/non-existing user alternatives','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '\0',_binary ''),('c2722cbf-4e17-4506-afad-c677f61f18c7','Account verification options','Method with which to verity the existing account','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '\0',_binary ''),('d45f7921-6cca-4684-ab3b-ada9e931ddd9','docker auth','Used by Docker clients to authenticate against the IDP','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '',_binary ''),('dc084f23-4a92-4bdb-8a82-c530b2dc4c6d','reset credentials','Reset credentials for a user if they forgot their password or something','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '',_binary ''),('e064c64c-5229-4b73-9c35-50441adc2124','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','96697988-5ce7-4270-bc20-f580b5e13e24','basic-flow',_binary '',_binary ''),('e4225ef2-70e6-42e4-95e6-8df480f4d731','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '',_binary ''),('e4f19006-32b4-41a6-bd52-850c27c903e2','Verify Existing Account by Re-authentication','Reauthentication of existing account','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '\0',_binary ''),('ec6259fa-0f06-45fc-84f1-1acbbcfc5cc6','Authentication Options','Authentication options.','25c03e82-4734-41ea-bd68-a8ee34cd4499','basic-flow',_binary '\0',_binary '');
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATOR_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_CONFIG_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('035e9127-f758-4708-83ea-86ac5e7804cc','review profile config','25c03e82-4734-41ea-bd68-a8ee34cd4499'),('33fb3eef-1d55-4830-be5e-97e62c8614cb','create unique user config','96697988-5ce7-4270-bc20-f580b5e13e24'),('8b30f94d-cc59-45cb-9d56-ada20ecd9ae7','review profile config','96697988-5ce7-4270-bc20-f580b5e13e24'),('ad03de49-327c-4aa5-bb7a-80ca44f4ba86','create unique user config','25c03e82-4734-41ea-bd68-a8ee34cd4499');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG_ENTRY`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATOR_CONFIG_ENTRY` (
  `AUTHENTICATOR_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`AUTHENTICATOR_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('035e9127-f758-4708-83ea-86ac5e7804cc','missing','update.profile.on.first.login'),('33fb3eef-1d55-4830-be5e-97e62c8614cb','false','require.password.update.after.registration'),('8b30f94d-cc59-45cb-9d56-ada20ecd9ae7','missing','update.profile.on.first.login'),('ad03de49-327c-4aa5-bb7a-80ca44f4ba86','false','require.password.update.after.registration');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BROKER_LINK`
--

DROP TABLE IF EXISTS `BROKER_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BROKER_LINK` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  `BROKER_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text,
  `USER_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BROKER_LINK`
--

LOCK TABLES `BROKER_LINK` WRITE;
/*!40000 ALTER TABLE `BROKER_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `BROKER_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT`
--

DROP TABLE IF EXISTS `CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FULL_SCOPE_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int DEFAULT NULL,
  `PUBLIC_CLIENT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` bit(1) NOT NULL DEFAULT b'0',
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int DEFAULT '0',
  `FRONTCHANNEL_LOGOUT` bit(1) NOT NULL DEFAULT b'0',
  `CONSENT_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `SERVICE_ACCOUNTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_AUTHENTICATOR_TYPE` varchar(255) DEFAULT NULL,
  `ROOT_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `REGISTRATION_TOKEN` varchar(255) DEFAULT NULL,
  `STANDARD_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'1',
  `IMPLICIT_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DIRECT_ACCESS_GRANTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ALWAYS_DISPLAY_IN_CONSOLE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B71CJLBENV945RB6GCON438AT` (`REALM_ID`,`CLIENT_ID`),
  KEY `IDX_CLIENT_ID` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT`
--

LOCK TABLES `CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT` VALUES ('0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '',_binary '\0','xp-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','96697988-5ce7-4270-bc20-f580b5e13e24',NULL,0,_binary '\0',_binary '\0','xp Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('2e363527-f696-4cd6-b2d5-a18e7705cb07',_binary '',_binary '','xp-app',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','25c03e82-4734-41ea-bd68-a8ee34cd4499','openid-connect',-1,_binary '',_binary '\0','xp-app',_binary '\0','client-secret',NULL,'xp-app',NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('52a6015c-275b-484f-8fd2-a2a852da7c64',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/master/console/',_binary '\0',NULL,_binary '\0','96697988-5ce7-4270-bc20-f580b5e13e24','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/xp/console/',_binary '\0',NULL,_binary '\0','25c03e82-4734-41ea-bd68-a8ee34cd4499','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('56cbb3c5-ef54-43ac-a482-c06f4c27bf84',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','25c03e82-4734-41ea-bd68-a8ee34cd4499','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '',_binary '\0','realm-management',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','25c03e82-4734-41ea-bd68-a8ee34cd4499','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('800c5bdd-25fd-401d-a83b-71b5d34c047a',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/master/account/',_binary '\0',NULL,_binary '\0','96697988-5ce7-4270-bc20-f580b5e13e24','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('9408b28b-4bc4-489d-bd7b-0a0f124e6e09',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','96697988-5ce7-4270-bc20-f580b5e13e24','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('a36be6e4-2474-4704-99fe-0604858eb58b',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/xp/account/',_binary '\0',NULL,_binary '\0','25c03e82-4734-41ea-bd68-a8ee34cd4499','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('b6427fda-c6c9-4ad2-ad49-0277af0d4981',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','96697988-5ce7-4270-bc20-f580b5e13e24','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '',_binary '\0','master-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','96697988-5ce7-4270-bc20-f580b5e13e24',NULL,0,_binary '\0',_binary '\0','master Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('efe19254-277d-4e31-b445-26e63bf5c78d',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/xp/account/',_binary '\0',NULL,_binary '\0','25c03e82-4734-41ea-bd68-a8ee34cd4499','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('f3c4f051-c802-49ce-8c91-f35cd80976f3',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','25c03e82-4734-41ea-bd68-a8ee34cd4499','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('fbe180b7-31be-4f10-b091-0e06f39aacf3',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/master/account/',_binary '\0',NULL,_binary '\0','96697988-5ce7-4270-bc20-f580b5e13e24','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0');
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_ATTRIBUTES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` text,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  KEY `IDX_CLIENT_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`(255)),
  CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('2e363527-f696-4cd6-b2d5-a18e7705cb07','false','backchannel.logout.revoke.offline.tokens'),('2e363527-f696-4cd6-b2d5-a18e7705cb07','true','backchannel.logout.session.required'),('2e363527-f696-4cd6-b2d5-a18e7705cb07','false','oauth2.device.authorization.grant.enabled'),('2e363527-f696-4cd6-b2d5-a18e7705cb07','false','oidc.ciba.grant.enabled'),('52a6015c-275b-484f-8fd2-a2a852da7c64','S256','pkce.code.challenge.method'),('52a6015c-275b-484f-8fd2-a2a852da7c64','+','post.logout.redirect.uris'),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','S256','pkce.code.challenge.method'),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','+','post.logout.redirect.uris'),('800c5bdd-25fd-401d-a83b-71b5d34c047a','S256','pkce.code.challenge.method'),('800c5bdd-25fd-401d-a83b-71b5d34c047a','+','post.logout.redirect.uris'),('a36be6e4-2474-4704-99fe-0604858eb58b','+','post.logout.redirect.uris'),('efe19254-277d-4e31-b445-26e63bf5c78d','S256','pkce.code.challenge.method'),('efe19254-277d-4e31-b445-26e63bf5c78d','+','post.logout.redirect.uris'),('fbe180b7-31be-4f10-b091-0e06f39aacf3','+','post.logout.redirect.uris');
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_AUTH_FLOW_BINDINGS`
--

DROP TABLE IF EXISTS `CLIENT_AUTH_FLOW_BINDINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_AUTH_FLOW_BINDINGS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `BINDING_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`BINDING_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_AUTH_FLOW_BINDINGS`
--

LOCK TABLES `CLIENT_AUTH_FLOW_BINDINGS` WRITE;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_INITIAL_ACCESS`
--

DROP TABLE IF EXISTS `CLIENT_INITIAL_ACCESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_INITIAL_ACCESS` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` int DEFAULT NULL,
  `EXPIRATION` int DEFAULT NULL,
  `COUNT` int DEFAULT NULL,
  `REMAINING_COUNT` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_INIT_ACC_REALM` (`REALM_ID`),
  CONSTRAINT `FK_CLIENT_INIT_ACC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_INITIAL_ACCESS`
--

LOCK TABLES `CLIENT_INITIAL_ACCESS` WRITE;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_NODE_REGISTRATIONS`
--

DROP TABLE IF EXISTS `CLIENT_NODE_REGISTRATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_NODE_REGISTRATIONS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` int DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  CONSTRAINT `FK4129723BA992F594` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_NODE_REGISTRATIONS`
--

LOCK TABLES `CLIENT_NODE_REGISTRATIONS` WRITE;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_CLI_SCOPE` (`REALM_ID`,`NAME`),
  KEY `IDX_REALM_CLSCOPE` (`REALM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE`
--

LOCK TABLES `CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE` VALUES ('0746fdb1-ad16-44ac-86c0-453262cf5fd5','profile','25c03e82-4734-41ea-bd68-a8ee34cd4499','OpenID Connect built-in scope: profile','openid-connect'),('19fb6889-0931-4410-9e5e-6705f85764eb','web-origins','25c03e82-4734-41ea-bd68-a8ee34cd4499','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('1e970533-5333-4846-962e-3b4f31ae3274','email','25c03e82-4734-41ea-bd68-a8ee34cd4499','OpenID Connect built-in scope: email','openid-connect'),('202e722d-0e8f-4ff4-8a1c-fc93df002d73','microprofile-jwt','25c03e82-4734-41ea-bd68-a8ee34cd4499','Microprofile - JWT built-in scope','openid-connect'),('20f73524-d97d-4ac4-87bc-6617c8a6d6de','microprofile-jwt','96697988-5ce7-4270-bc20-f580b5e13e24','Microprofile - JWT built-in scope','openid-connect'),('21d8fe26-78eb-4c09-ac35-47d2c7c1faf8','profile','96697988-5ce7-4270-bc20-f580b5e13e24','OpenID Connect built-in scope: profile','openid-connect'),('249c6acb-850c-4d9a-9c17-b23598561775','phone','96697988-5ce7-4270-bc20-f580b5e13e24','OpenID Connect built-in scope: phone','openid-connect'),('295092be-5320-435f-90a4-a4b6da94d82f','email','96697988-5ce7-4270-bc20-f580b5e13e24','OpenID Connect built-in scope: email','openid-connect'),('36c9cef3-88ad-48a0-aa18-d9690067205f','role_list','25c03e82-4734-41ea-bd68-a8ee34cd4499','SAML role list','saml'),('3ec6e56a-2fa1-4c17-b1fe-0519961ba80d','offline_access','25c03e82-4734-41ea-bd68-a8ee34cd4499','OpenID Connect built-in scope: offline_access','openid-connect'),('459c31dc-2bf3-47f4-ac9c-94e08d48e3e5','acr','96697988-5ce7-4270-bc20-f580b5e13e24','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('506f8683-6b73-4722-a49d-a7bde1dde690','roles','96697988-5ce7-4270-bc20-f580b5e13e24','OpenID Connect scope for add user roles to the access token','openid-connect'),('54393530-6700-42b6-9656-f97954488f79','phone','25c03e82-4734-41ea-bd68-a8ee34cd4499','OpenID Connect built-in scope: phone','openid-connect'),('948dc145-7a16-4e17-8f3f-bca6e5eb9a20','address','96697988-5ce7-4270-bc20-f580b5e13e24','OpenID Connect built-in scope: address','openid-connect'),('97011950-4978-407d-b10f-e4ff3ea5f378','roles','25c03e82-4734-41ea-bd68-a8ee34cd4499','OpenID Connect scope for add user roles to the access token','openid-connect'),('ad1853de-7aa0-4cf5-ae8d-f60c96d01f28','role_list','96697988-5ce7-4270-bc20-f580b5e13e24','SAML role list','saml'),('b113fac6-9c7c-40c6-b8b4-182331a16522','address','25c03e82-4734-41ea-bd68-a8ee34cd4499','OpenID Connect built-in scope: address','openid-connect'),('d2e3d744-ee54-4869-984e-f6a7afa8f7f4','web-origins','96697988-5ce7-4270-bc20-f580b5e13e24','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('d9599602-2cee-4ceb-bcf3-0fbac2ac31e6','offline_access','96697988-5ce7-4270-bc20-f580b5e13e24','OpenID Connect built-in scope: offline_access','openid-connect'),('db1c60eb-bc53-4b2c-858e-f831f0de282d','acr','25c03e82-4734-41ea-bd68-a8ee34cd4499','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect');
/*!40000 ALTER TABLE `CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE_ATTRIBUTES` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `VALUE` text,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`NAME`),
  KEY `IDX_CLSCOPE_ATTRS` (`SCOPE_ID`),
  CONSTRAINT `FK_CL_SCOPE_ATTR_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('0746fdb1-ad16-44ac-86c0-453262cf5fd5','${profileScopeConsentText}','consent.screen.text'),('0746fdb1-ad16-44ac-86c0-453262cf5fd5','true','display.on.consent.screen'),('0746fdb1-ad16-44ac-86c0-453262cf5fd5','true','include.in.token.scope'),('19fb6889-0931-4410-9e5e-6705f85764eb','','consent.screen.text'),('19fb6889-0931-4410-9e5e-6705f85764eb','false','display.on.consent.screen'),('19fb6889-0931-4410-9e5e-6705f85764eb','false','include.in.token.scope'),('1e970533-5333-4846-962e-3b4f31ae3274','${emailScopeConsentText}','consent.screen.text'),('1e970533-5333-4846-962e-3b4f31ae3274','true','display.on.consent.screen'),('1e970533-5333-4846-962e-3b4f31ae3274','true','include.in.token.scope'),('202e722d-0e8f-4ff4-8a1c-fc93df002d73','false','display.on.consent.screen'),('202e722d-0e8f-4ff4-8a1c-fc93df002d73','true','include.in.token.scope'),('20f73524-d97d-4ac4-87bc-6617c8a6d6de','false','display.on.consent.screen'),('20f73524-d97d-4ac4-87bc-6617c8a6d6de','true','include.in.token.scope'),('21d8fe26-78eb-4c09-ac35-47d2c7c1faf8','${profileScopeConsentText}','consent.screen.text'),('21d8fe26-78eb-4c09-ac35-47d2c7c1faf8','true','display.on.consent.screen'),('21d8fe26-78eb-4c09-ac35-47d2c7c1faf8','true','include.in.token.scope'),('249c6acb-850c-4d9a-9c17-b23598561775','${phoneScopeConsentText}','consent.screen.text'),('249c6acb-850c-4d9a-9c17-b23598561775','true','display.on.consent.screen'),('249c6acb-850c-4d9a-9c17-b23598561775','true','include.in.token.scope'),('295092be-5320-435f-90a4-a4b6da94d82f','${emailScopeConsentText}','consent.screen.text'),('295092be-5320-435f-90a4-a4b6da94d82f','true','display.on.consent.screen'),('295092be-5320-435f-90a4-a4b6da94d82f','true','include.in.token.scope'),('36c9cef3-88ad-48a0-aa18-d9690067205f','${samlRoleListScopeConsentText}','consent.screen.text'),('36c9cef3-88ad-48a0-aa18-d9690067205f','true','display.on.consent.screen'),('3ec6e56a-2fa1-4c17-b1fe-0519961ba80d','${offlineAccessScopeConsentText}','consent.screen.text'),('3ec6e56a-2fa1-4c17-b1fe-0519961ba80d','true','display.on.consent.screen'),('459c31dc-2bf3-47f4-ac9c-94e08d48e3e5','false','display.on.consent.screen'),('459c31dc-2bf3-47f4-ac9c-94e08d48e3e5','false','include.in.token.scope'),('506f8683-6b73-4722-a49d-a7bde1dde690','${rolesScopeConsentText}','consent.screen.text'),('506f8683-6b73-4722-a49d-a7bde1dde690','true','display.on.consent.screen'),('506f8683-6b73-4722-a49d-a7bde1dde690','false','include.in.token.scope'),('54393530-6700-42b6-9656-f97954488f79','${phoneScopeConsentText}','consent.screen.text'),('54393530-6700-42b6-9656-f97954488f79','true','display.on.consent.screen'),('54393530-6700-42b6-9656-f97954488f79','true','include.in.token.scope'),('948dc145-7a16-4e17-8f3f-bca6e5eb9a20','${addressScopeConsentText}','consent.screen.text'),('948dc145-7a16-4e17-8f3f-bca6e5eb9a20','true','display.on.consent.screen'),('948dc145-7a16-4e17-8f3f-bca6e5eb9a20','true','include.in.token.scope'),('97011950-4978-407d-b10f-e4ff3ea5f378','${rolesScopeConsentText}','consent.screen.text'),('97011950-4978-407d-b10f-e4ff3ea5f378','true','display.on.consent.screen'),('97011950-4978-407d-b10f-e4ff3ea5f378','false','include.in.token.scope'),('ad1853de-7aa0-4cf5-ae8d-f60c96d01f28','${samlRoleListScopeConsentText}','consent.screen.text'),('ad1853de-7aa0-4cf5-ae8d-f60c96d01f28','true','display.on.consent.screen'),('b113fac6-9c7c-40c6-b8b4-182331a16522','${addressScopeConsentText}','consent.screen.text'),('b113fac6-9c7c-40c6-b8b4-182331a16522','true','display.on.consent.screen'),('b113fac6-9c7c-40c6-b8b4-182331a16522','true','include.in.token.scope'),('d2e3d744-ee54-4869-984e-f6a7afa8f7f4','','consent.screen.text'),('d2e3d744-ee54-4869-984e-f6a7afa8f7f4','false','display.on.consent.screen'),('d2e3d744-ee54-4869-984e-f6a7afa8f7f4','false','include.in.token.scope'),('d9599602-2cee-4ceb-bcf3-0fbac2ac31e6','${offlineAccessScopeConsentText}','consent.screen.text'),('d9599602-2cee-4ceb-bcf3-0fbac2ac31e6','true','display.on.consent.screen'),('db1c60eb-bc53-4b2c-858e-f831f0de282d','false','display.on.consent.screen'),('db1c60eb-bc53-4b2c-858e-f831f0de282d','false','include.in.token.scope');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_CLIENT`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE_CLIENT` (
  `CLIENT_ID` varchar(255) NOT NULL,
  `SCOPE_ID` varchar(255) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`CLIENT_ID`,`SCOPE_ID`),
  KEY `IDX_CLSCOPE_CL` (`CLIENT_ID`),
  KEY `IDX_CL_CLSCOPE` (`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('2e363527-f696-4cd6-b2d5-a18e7705cb07','0746fdb1-ad16-44ac-86c0-453262cf5fd5',_binary ''),('2e363527-f696-4cd6-b2d5-a18e7705cb07','19fb6889-0931-4410-9e5e-6705f85764eb',_binary ''),('2e363527-f696-4cd6-b2d5-a18e7705cb07','1e970533-5333-4846-962e-3b4f31ae3274',_binary ''),('2e363527-f696-4cd6-b2d5-a18e7705cb07','202e722d-0e8f-4ff4-8a1c-fc93df002d73',_binary '\0'),('2e363527-f696-4cd6-b2d5-a18e7705cb07','3ec6e56a-2fa1-4c17-b1fe-0519961ba80d',_binary '\0'),('2e363527-f696-4cd6-b2d5-a18e7705cb07','54393530-6700-42b6-9656-f97954488f79',_binary '\0'),('2e363527-f696-4cd6-b2d5-a18e7705cb07','97011950-4978-407d-b10f-e4ff3ea5f378',_binary ''),('2e363527-f696-4cd6-b2d5-a18e7705cb07','b113fac6-9c7c-40c6-b8b4-182331a16522',_binary '\0'),('2e363527-f696-4cd6-b2d5-a18e7705cb07','db1c60eb-bc53-4b2c-858e-f831f0de282d',_binary ''),('52a6015c-275b-484f-8fd2-a2a852da7c64','20f73524-d97d-4ac4-87bc-6617c8a6d6de',_binary '\0'),('52a6015c-275b-484f-8fd2-a2a852da7c64','21d8fe26-78eb-4c09-ac35-47d2c7c1faf8',_binary ''),('52a6015c-275b-484f-8fd2-a2a852da7c64','249c6acb-850c-4d9a-9c17-b23598561775',_binary '\0'),('52a6015c-275b-484f-8fd2-a2a852da7c64','295092be-5320-435f-90a4-a4b6da94d82f',_binary ''),('52a6015c-275b-484f-8fd2-a2a852da7c64','459c31dc-2bf3-47f4-ac9c-94e08d48e3e5',_binary ''),('52a6015c-275b-484f-8fd2-a2a852da7c64','506f8683-6b73-4722-a49d-a7bde1dde690',_binary ''),('52a6015c-275b-484f-8fd2-a2a852da7c64','948dc145-7a16-4e17-8f3f-bca6e5eb9a20',_binary '\0'),('52a6015c-275b-484f-8fd2-a2a852da7c64','d2e3d744-ee54-4869-984e-f6a7afa8f7f4',_binary ''),('52a6015c-275b-484f-8fd2-a2a852da7c64','d9599602-2cee-4ceb-bcf3-0fbac2ac31e6',_binary '\0'),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','0746fdb1-ad16-44ac-86c0-453262cf5fd5',_binary ''),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','19fb6889-0931-4410-9e5e-6705f85764eb',_binary ''),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','1e970533-5333-4846-962e-3b4f31ae3274',_binary ''),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','202e722d-0e8f-4ff4-8a1c-fc93df002d73',_binary '\0'),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','3ec6e56a-2fa1-4c17-b1fe-0519961ba80d',_binary '\0'),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','54393530-6700-42b6-9656-f97954488f79',_binary '\0'),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','97011950-4978-407d-b10f-e4ff3ea5f378',_binary ''),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','b113fac6-9c7c-40c6-b8b4-182331a16522',_binary '\0'),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','db1c60eb-bc53-4b2c-858e-f831f0de282d',_binary ''),('56cbb3c5-ef54-43ac-a482-c06f4c27bf84','0746fdb1-ad16-44ac-86c0-453262cf5fd5',_binary ''),('56cbb3c5-ef54-43ac-a482-c06f4c27bf84','19fb6889-0931-4410-9e5e-6705f85764eb',_binary ''),('56cbb3c5-ef54-43ac-a482-c06f4c27bf84','1e970533-5333-4846-962e-3b4f31ae3274',_binary ''),('56cbb3c5-ef54-43ac-a482-c06f4c27bf84','202e722d-0e8f-4ff4-8a1c-fc93df002d73',_binary '\0'),('56cbb3c5-ef54-43ac-a482-c06f4c27bf84','3ec6e56a-2fa1-4c17-b1fe-0519961ba80d',_binary '\0'),('56cbb3c5-ef54-43ac-a482-c06f4c27bf84','54393530-6700-42b6-9656-f97954488f79',_binary '\0'),('56cbb3c5-ef54-43ac-a482-c06f4c27bf84','97011950-4978-407d-b10f-e4ff3ea5f378',_binary ''),('56cbb3c5-ef54-43ac-a482-c06f4c27bf84','b113fac6-9c7c-40c6-b8b4-182331a16522',_binary '\0'),('56cbb3c5-ef54-43ac-a482-c06f4c27bf84','db1c60eb-bc53-4b2c-858e-f831f0de282d',_binary ''),('6019d55d-58f6-4833-aa73-88bec3f105c5','0746fdb1-ad16-44ac-86c0-453262cf5fd5',_binary ''),('6019d55d-58f6-4833-aa73-88bec3f105c5','19fb6889-0931-4410-9e5e-6705f85764eb',_binary ''),('6019d55d-58f6-4833-aa73-88bec3f105c5','1e970533-5333-4846-962e-3b4f31ae3274',_binary ''),('6019d55d-58f6-4833-aa73-88bec3f105c5','202e722d-0e8f-4ff4-8a1c-fc93df002d73',_binary '\0'),('6019d55d-58f6-4833-aa73-88bec3f105c5','3ec6e56a-2fa1-4c17-b1fe-0519961ba80d',_binary '\0'),('6019d55d-58f6-4833-aa73-88bec3f105c5','54393530-6700-42b6-9656-f97954488f79',_binary '\0'),('6019d55d-58f6-4833-aa73-88bec3f105c5','97011950-4978-407d-b10f-e4ff3ea5f378',_binary ''),('6019d55d-58f6-4833-aa73-88bec3f105c5','b113fac6-9c7c-40c6-b8b4-182331a16522',_binary '\0'),('6019d55d-58f6-4833-aa73-88bec3f105c5','db1c60eb-bc53-4b2c-858e-f831f0de282d',_binary ''),('800c5bdd-25fd-401d-a83b-71b5d34c047a','20f73524-d97d-4ac4-87bc-6617c8a6d6de',_binary '\0'),('800c5bdd-25fd-401d-a83b-71b5d34c047a','21d8fe26-78eb-4c09-ac35-47d2c7c1faf8',_binary ''),('800c5bdd-25fd-401d-a83b-71b5d34c047a','249c6acb-850c-4d9a-9c17-b23598561775',_binary '\0'),('800c5bdd-25fd-401d-a83b-71b5d34c047a','295092be-5320-435f-90a4-a4b6da94d82f',_binary ''),('800c5bdd-25fd-401d-a83b-71b5d34c047a','459c31dc-2bf3-47f4-ac9c-94e08d48e3e5',_binary ''),('800c5bdd-25fd-401d-a83b-71b5d34c047a','506f8683-6b73-4722-a49d-a7bde1dde690',_binary ''),('800c5bdd-25fd-401d-a83b-71b5d34c047a','948dc145-7a16-4e17-8f3f-bca6e5eb9a20',_binary '\0'),('800c5bdd-25fd-401d-a83b-71b5d34c047a','d2e3d744-ee54-4869-984e-f6a7afa8f7f4',_binary ''),('800c5bdd-25fd-401d-a83b-71b5d34c047a','d9599602-2cee-4ceb-bcf3-0fbac2ac31e6',_binary '\0'),('9408b28b-4bc4-489d-bd7b-0a0f124e6e09','20f73524-d97d-4ac4-87bc-6617c8a6d6de',_binary '\0'),('9408b28b-4bc4-489d-bd7b-0a0f124e6e09','21d8fe26-78eb-4c09-ac35-47d2c7c1faf8',_binary ''),('9408b28b-4bc4-489d-bd7b-0a0f124e6e09','249c6acb-850c-4d9a-9c17-b23598561775',_binary '\0'),('9408b28b-4bc4-489d-bd7b-0a0f124e6e09','295092be-5320-435f-90a4-a4b6da94d82f',_binary ''),('9408b28b-4bc4-489d-bd7b-0a0f124e6e09','459c31dc-2bf3-47f4-ac9c-94e08d48e3e5',_binary ''),('9408b28b-4bc4-489d-bd7b-0a0f124e6e09','506f8683-6b73-4722-a49d-a7bde1dde690',_binary ''),('9408b28b-4bc4-489d-bd7b-0a0f124e6e09','948dc145-7a16-4e17-8f3f-bca6e5eb9a20',_binary '\0'),('9408b28b-4bc4-489d-bd7b-0a0f124e6e09','d2e3d744-ee54-4869-984e-f6a7afa8f7f4',_binary ''),('9408b28b-4bc4-489d-bd7b-0a0f124e6e09','d9599602-2cee-4ceb-bcf3-0fbac2ac31e6',_binary '\0'),('a36be6e4-2474-4704-99fe-0604858eb58b','0746fdb1-ad16-44ac-86c0-453262cf5fd5',_binary ''),('a36be6e4-2474-4704-99fe-0604858eb58b','19fb6889-0931-4410-9e5e-6705f85764eb',_binary ''),('a36be6e4-2474-4704-99fe-0604858eb58b','1e970533-5333-4846-962e-3b4f31ae3274',_binary ''),('a36be6e4-2474-4704-99fe-0604858eb58b','202e722d-0e8f-4ff4-8a1c-fc93df002d73',_binary '\0'),('a36be6e4-2474-4704-99fe-0604858eb58b','3ec6e56a-2fa1-4c17-b1fe-0519961ba80d',_binary '\0'),('a36be6e4-2474-4704-99fe-0604858eb58b','54393530-6700-42b6-9656-f97954488f79',_binary '\0'),('a36be6e4-2474-4704-99fe-0604858eb58b','97011950-4978-407d-b10f-e4ff3ea5f378',_binary ''),('a36be6e4-2474-4704-99fe-0604858eb58b','b113fac6-9c7c-40c6-b8b4-182331a16522',_binary '\0'),('a36be6e4-2474-4704-99fe-0604858eb58b','db1c60eb-bc53-4b2c-858e-f831f0de282d',_binary ''),('b6427fda-c6c9-4ad2-ad49-0277af0d4981','20f73524-d97d-4ac4-87bc-6617c8a6d6de',_binary '\0'),('b6427fda-c6c9-4ad2-ad49-0277af0d4981','21d8fe26-78eb-4c09-ac35-47d2c7c1faf8',_binary ''),('b6427fda-c6c9-4ad2-ad49-0277af0d4981','249c6acb-850c-4d9a-9c17-b23598561775',_binary '\0'),('b6427fda-c6c9-4ad2-ad49-0277af0d4981','295092be-5320-435f-90a4-a4b6da94d82f',_binary ''),('b6427fda-c6c9-4ad2-ad49-0277af0d4981','459c31dc-2bf3-47f4-ac9c-94e08d48e3e5',_binary ''),('b6427fda-c6c9-4ad2-ad49-0277af0d4981','506f8683-6b73-4722-a49d-a7bde1dde690',_binary ''),('b6427fda-c6c9-4ad2-ad49-0277af0d4981','948dc145-7a16-4e17-8f3f-bca6e5eb9a20',_binary '\0'),('b6427fda-c6c9-4ad2-ad49-0277af0d4981','d2e3d744-ee54-4869-984e-f6a7afa8f7f4',_binary ''),('b6427fda-c6c9-4ad2-ad49-0277af0d4981','d9599602-2cee-4ceb-bcf3-0fbac2ac31e6',_binary '\0'),('e9692c6a-190b-4fab-9b6a-2e9051e1e3f8','20f73524-d97d-4ac4-87bc-6617c8a6d6de',_binary '\0'),('e9692c6a-190b-4fab-9b6a-2e9051e1e3f8','21d8fe26-78eb-4c09-ac35-47d2c7c1faf8',_binary ''),('e9692c6a-190b-4fab-9b6a-2e9051e1e3f8','249c6acb-850c-4d9a-9c17-b23598561775',_binary '\0'),('e9692c6a-190b-4fab-9b6a-2e9051e1e3f8','295092be-5320-435f-90a4-a4b6da94d82f',_binary ''),('e9692c6a-190b-4fab-9b6a-2e9051e1e3f8','459c31dc-2bf3-47f4-ac9c-94e08d48e3e5',_binary ''),('e9692c6a-190b-4fab-9b6a-2e9051e1e3f8','506f8683-6b73-4722-a49d-a7bde1dde690',_binary ''),('e9692c6a-190b-4fab-9b6a-2e9051e1e3f8','948dc145-7a16-4e17-8f3f-bca6e5eb9a20',_binary '\0'),('e9692c6a-190b-4fab-9b6a-2e9051e1e3f8','d2e3d744-ee54-4869-984e-f6a7afa8f7f4',_binary ''),('e9692c6a-190b-4fab-9b6a-2e9051e1e3f8','d9599602-2cee-4ceb-bcf3-0fbac2ac31e6',_binary '\0'),('efe19254-277d-4e31-b445-26e63bf5c78d','0746fdb1-ad16-44ac-86c0-453262cf5fd5',_binary ''),('efe19254-277d-4e31-b445-26e63bf5c78d','19fb6889-0931-4410-9e5e-6705f85764eb',_binary ''),('efe19254-277d-4e31-b445-26e63bf5c78d','1e970533-5333-4846-962e-3b4f31ae3274',_binary ''),('efe19254-277d-4e31-b445-26e63bf5c78d','202e722d-0e8f-4ff4-8a1c-fc93df002d73',_binary '\0'),('efe19254-277d-4e31-b445-26e63bf5c78d','3ec6e56a-2fa1-4c17-b1fe-0519961ba80d',_binary '\0'),('efe19254-277d-4e31-b445-26e63bf5c78d','54393530-6700-42b6-9656-f97954488f79',_binary '\0'),('efe19254-277d-4e31-b445-26e63bf5c78d','97011950-4978-407d-b10f-e4ff3ea5f378',_binary ''),('efe19254-277d-4e31-b445-26e63bf5c78d','b113fac6-9c7c-40c6-b8b4-182331a16522',_binary '\0'),('efe19254-277d-4e31-b445-26e63bf5c78d','db1c60eb-bc53-4b2c-858e-f831f0de282d',_binary ''),('f3c4f051-c802-49ce-8c91-f35cd80976f3','0746fdb1-ad16-44ac-86c0-453262cf5fd5',_binary ''),('f3c4f051-c802-49ce-8c91-f35cd80976f3','19fb6889-0931-4410-9e5e-6705f85764eb',_binary ''),('f3c4f051-c802-49ce-8c91-f35cd80976f3','1e970533-5333-4846-962e-3b4f31ae3274',_binary ''),('f3c4f051-c802-49ce-8c91-f35cd80976f3','202e722d-0e8f-4ff4-8a1c-fc93df002d73',_binary '\0'),('f3c4f051-c802-49ce-8c91-f35cd80976f3','3ec6e56a-2fa1-4c17-b1fe-0519961ba80d',_binary '\0'),('f3c4f051-c802-49ce-8c91-f35cd80976f3','54393530-6700-42b6-9656-f97954488f79',_binary '\0'),('f3c4f051-c802-49ce-8c91-f35cd80976f3','97011950-4978-407d-b10f-e4ff3ea5f378',_binary ''),('f3c4f051-c802-49ce-8c91-f35cd80976f3','b113fac6-9c7c-40c6-b8b4-182331a16522',_binary '\0'),('f3c4f051-c802-49ce-8c91-f35cd80976f3','db1c60eb-bc53-4b2c-858e-f831f0de282d',_binary ''),('fbe180b7-31be-4f10-b091-0e06f39aacf3','20f73524-d97d-4ac4-87bc-6617c8a6d6de',_binary '\0'),('fbe180b7-31be-4f10-b091-0e06f39aacf3','21d8fe26-78eb-4c09-ac35-47d2c7c1faf8',_binary ''),('fbe180b7-31be-4f10-b091-0e06f39aacf3','249c6acb-850c-4d9a-9c17-b23598561775',_binary '\0'),('fbe180b7-31be-4f10-b091-0e06f39aacf3','295092be-5320-435f-90a4-a4b6da94d82f',_binary ''),('fbe180b7-31be-4f10-b091-0e06f39aacf3','459c31dc-2bf3-47f4-ac9c-94e08d48e3e5',_binary ''),('fbe180b7-31be-4f10-b091-0e06f39aacf3','506f8683-6b73-4722-a49d-a7bde1dde690',_binary ''),('fbe180b7-31be-4f10-b091-0e06f39aacf3','948dc145-7a16-4e17-8f3f-bca6e5eb9a20',_binary '\0'),('fbe180b7-31be-4f10-b091-0e06f39aacf3','d2e3d744-ee54-4869-984e-f6a7afa8f7f4',_binary ''),('fbe180b7-31be-4f10-b091-0e06f39aacf3','d9599602-2cee-4ceb-bcf3-0fbac2ac31e6',_binary '\0');
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE_ROLE_MAPPING` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`ROLE_ID`),
  KEY `IDX_CLSCOPE_ROLE` (`SCOPE_ID`),
  KEY `IDX_ROLE_CLSCOPE` (`ROLE_ID`),
  CONSTRAINT `FK_CL_SCOPE_RM_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('3ec6e56a-2fa1-4c17-b1fe-0519961ba80d','4fa96b1c-65e9-41df-86cc-163874b7cfd2'),('d9599602-2cee-4ceb-bcf3-0fbac2ac31e6','2c6a402f-6f51-4f54-8361-d540484d07ce');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION`
--

DROP TABLE IF EXISTS `CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SESSION` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `REDIRECT_URI` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `TIMESTAMP` int DEFAULT NULL,
  `SESSION_ID` varchar(36) DEFAULT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(36) DEFAULT NULL,
  `CURRENT_ACTION` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_SESSION_SESSION` (`SESSION_ID`),
  CONSTRAINT `FK_B4AO2VCVAT6UKAU74WBWTFQO1` FOREIGN KEY (`SESSION_ID`) REFERENCES `USER_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION`
--

LOCK TABLES `CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_AUTH_STATUS`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_AUTH_STATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SESSION_AUTH_STATUS` (
  `AUTHENTICATOR` varchar(36) NOT NULL,
  `STATUS` int DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`AUTHENTICATOR`),
  CONSTRAINT `AUTH_STATUS_CONSTRAINT` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_AUTH_STATUS`
--

LOCK TABLES `CLIENT_SESSION_AUTH_STATUS` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_AUTH_STATUS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_AUTH_STATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_NOTE`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`NAME`),
  CONSTRAINT `FK5EDFB00FF51C2736` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_NOTE`
--

LOCK TABLES `CLIENT_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_PROT_MAPPER`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_PROT_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SESSION_PROT_MAPPER` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`PROTOCOL_MAPPER_ID`),
  CONSTRAINT `FK_33A8SGQW18I532811V7O2DK89` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_PROT_MAPPER`
--

LOCK TABLES `CLIENT_SESSION_PROT_MAPPER` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_PROT_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_PROT_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_ROLE`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SESSION_ROLE` (
  `ROLE_ID` varchar(255) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`ROLE_ID`),
  CONSTRAINT `FK_11B7SGQW18I532811V7O2DV76` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_ROLE`
--

LOCK TABLES `CLIENT_SESSION_ROLE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_USER_SESSION_NOTE`
--

DROP TABLE IF EXISTS `CLIENT_USER_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_USER_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` text,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`NAME`),
  CONSTRAINT `FK_CL_USR_SES_NOTE` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_USER_SESSION_NOTE`
--

LOCK TABLES `CLIENT_USER_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `CLIENT_USER_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_USER_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT`
--

DROP TABLE IF EXISTS `COMPONENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPONENT` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_TYPE` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `SUB_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPONENT_REALM` (`REALM_ID`),
  KEY `IDX_COMPONENT_PROVIDER_TYPE` (`PROVIDER_TYPE`),
  CONSTRAINT `FK_COMPONENT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT`
--

LOCK TABLES `COMPONENT` WRITE;
/*!40000 ALTER TABLE `COMPONENT` DISABLE KEYS */;
INSERT INTO `COMPONENT` VALUES ('17188bb7-9f86-41a5-a1bf-60e42c322772','rsa-generated','25c03e82-4734-41ea-bd68-a8ee34cd4499','rsa-generated','org.keycloak.keys.KeyProvider','25c03e82-4734-41ea-bd68-a8ee34cd4499',NULL),('17b017bc-85f9-4658-9e70-31f5cb3872db','rsa-enc-generated','96697988-5ce7-4270-bc20-f580b5e13e24','rsa-enc-generated','org.keycloak.keys.KeyProvider','96697988-5ce7-4270-bc20-f580b5e13e24',NULL),('1bf4e0c5-9fb1-4e9c-95d9-bec268d0c57a','aes-generated','25c03e82-4734-41ea-bd68-a8ee34cd4499','aes-generated','org.keycloak.keys.KeyProvider','25c03e82-4734-41ea-bd68-a8ee34cd4499',NULL),('38f2dfb7-ca6e-44ac-b9c1-b3aa6a6f3e24','Allowed Client Scopes','96697988-5ce7-4270-bc20-f580b5e13e24','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','96697988-5ce7-4270-bc20-f580b5e13e24','anonymous'),('52e1c5ed-beb7-41d4-b915-fee604647841','rsa-enc-generated','25c03e82-4734-41ea-bd68-a8ee34cd4499','rsa-enc-generated','org.keycloak.keys.KeyProvider','25c03e82-4734-41ea-bd68-a8ee34cd4499',NULL),('5fea1dd6-d3d9-4ce7-baa4-6a360e0cc19b','Allowed Protocol Mapper Types','96697988-5ce7-4270-bc20-f580b5e13e24','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','96697988-5ce7-4270-bc20-f580b5e13e24','anonymous'),('62229b12-1d02-444e-9837-08c56b5e737f','Full Scope Disabled','96697988-5ce7-4270-bc20-f580b5e13e24','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','96697988-5ce7-4270-bc20-f580b5e13e24','anonymous'),('6b42c24b-b329-46ff-a0d0-4b9210198725','Allowed Protocol Mapper Types','25c03e82-4734-41ea-bd68-a8ee34cd4499','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','25c03e82-4734-41ea-bd68-a8ee34cd4499','anonymous'),('704515d6-7ed5-4808-b6a4-7b820c1bf96a','Allowed Protocol Mapper Types','96697988-5ce7-4270-bc20-f580b5e13e24','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','96697988-5ce7-4270-bc20-f580b5e13e24','authenticated'),('7a6b7c8f-37d0-416a-a9c9-a89f07993a4d','Max Clients Limit','25c03e82-4734-41ea-bd68-a8ee34cd4499','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','25c03e82-4734-41ea-bd68-a8ee34cd4499','anonymous'),('87cbb0ce-829b-449c-992c-0f76d8545a6b','Allowed Client Scopes','25c03e82-4734-41ea-bd68-a8ee34cd4499','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','25c03e82-4734-41ea-bd68-a8ee34cd4499','authenticated'),('967794e6-23a9-45c9-8c35-4a568f278c46','hmac-generated','96697988-5ce7-4270-bc20-f580b5e13e24','hmac-generated','org.keycloak.keys.KeyProvider','96697988-5ce7-4270-bc20-f580b5e13e24',NULL),('a6c16816-f7d6-4086-beb1-605858d2ceda','Max Clients Limit','96697988-5ce7-4270-bc20-f580b5e13e24','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','96697988-5ce7-4270-bc20-f580b5e13e24','anonymous'),('ad31d0be-3a34-4426-98d1-0a04709cdc13','Allowed Protocol Mapper Types','25c03e82-4734-41ea-bd68-a8ee34cd4499','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','25c03e82-4734-41ea-bd68-a8ee34cd4499','authenticated'),('ad72681f-8b1b-4a39-9054-f513cba2b4fc','Full Scope Disabled','25c03e82-4734-41ea-bd68-a8ee34cd4499','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','25c03e82-4734-41ea-bd68-a8ee34cd4499','anonymous'),('ba9897f9-1ece-4285-8aeb-52921002e957','Trusted Hosts','96697988-5ce7-4270-bc20-f580b5e13e24','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','96697988-5ce7-4270-bc20-f580b5e13e24','anonymous'),('c4e690f4-379a-470c-a1a4-338343229e2d','aes-generated','96697988-5ce7-4270-bc20-f580b5e13e24','aes-generated','org.keycloak.keys.KeyProvider','96697988-5ce7-4270-bc20-f580b5e13e24',NULL),('cefb8c08-3485-49af-8481-49cf80e9f056','rsa-generated','96697988-5ce7-4270-bc20-f580b5e13e24','rsa-generated','org.keycloak.keys.KeyProvider','96697988-5ce7-4270-bc20-f580b5e13e24',NULL),('d8d24456-f70c-4b95-8e82-d4eab3ad1367','hmac-generated','25c03e82-4734-41ea-bd68-a8ee34cd4499','hmac-generated','org.keycloak.keys.KeyProvider','25c03e82-4734-41ea-bd68-a8ee34cd4499',NULL),('dfc245fe-eca7-4257-ab34-924fba3ba131','Allowed Client Scopes','96697988-5ce7-4270-bc20-f580b5e13e24','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','96697988-5ce7-4270-bc20-f580b5e13e24','authenticated'),('e543c71f-bde4-484a-b046-1210944d05bf','Consent Required','96697988-5ce7-4270-bc20-f580b5e13e24','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','96697988-5ce7-4270-bc20-f580b5e13e24','anonymous'),('ec1393cc-db3b-4737-9e15-aa42880f6a0d','Consent Required','25c03e82-4734-41ea-bd68-a8ee34cd4499','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','25c03e82-4734-41ea-bd68-a8ee34cd4499','anonymous'),('ee8aa7ca-4c6c-4a0a-8a2a-298ed166f41e','Allowed Client Scopes','25c03e82-4734-41ea-bd68-a8ee34cd4499','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','25c03e82-4734-41ea-bd68-a8ee34cd4499','anonymous'),('f585c6c6-6187-4ca3-a6cb-ce99c490978c',NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','25c03e82-4734-41ea-bd68-a8ee34cd4499',NULL),('fb409592-8f3d-4372-9018-23fef6da2a49','Trusted Hosts','25c03e82-4734-41ea-bd68-a8ee34cd4499','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','25c03e82-4734-41ea-bd68-a8ee34cd4499','anonymous');
/*!40000 ALTER TABLE `COMPONENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT_CONFIG`
--

DROP TABLE IF EXISTS `COMPONENT_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPONENT_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPO_CONFIG_COMPO` (`COMPONENT_ID`),
  CONSTRAINT `FK_COMPONENT_CONFIG` FOREIGN KEY (`COMPONENT_ID`) REFERENCES `COMPONENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
/*!40000 ALTER TABLE `COMPONENT_CONFIG` DISABLE KEYS */;
INSERT INTO `COMPONENT_CONFIG` VALUES ('00a260cf-9976-4407-bcfa-8761f3462cd2','17188bb7-9f86-41a5-a1bf-60e42c322772','priority','100'),('02de420d-6c05-45c5-a3d7-48412fc1202d','704515d6-7ed5-4808-b6a4-7b820c1bf96a','allowed-protocol-mapper-types','saml-user-property-mapper'),('03fec89c-4ead-42da-97f6-4e8c5d8d3b84','dfc245fe-eca7-4257-ab34-924fba3ba131','allow-default-scopes','true'),('0536f7b6-74ec-4cc7-a95e-2ea4f9c490f9','fb409592-8f3d-4372-9018-23fef6da2a49','client-uris-must-match','true'),('082945ab-4494-407d-981e-603c26e17756','1bf4e0c5-9fb1-4e9c-95d9-bec268d0c57a','priority','100'),('0ad1a1ee-4a6f-42fb-8620-db69db9b3eea','c4e690f4-379a-470c-a1a4-338343229e2d','secret','hmk29ZWk7MU7PMw-S9GxVg'),('0b5e87dc-0af5-459f-af34-1d59766e2594','52e1c5ed-beb7-41d4-b915-fee604647841','priority','100'),('0ddc42be-32db-4dac-b099-2b65ae33d0f1','52e1c5ed-beb7-41d4-b915-fee604647841','algorithm','RSA-OAEP'),('1388b108-40bd-4a8b-8c35-19919d64c6ad','5fea1dd6-d3d9-4ce7-baa4-6a360e0cc19b','allowed-protocol-mapper-types','oidc-address-mapper'),('1a3d70ca-e793-47d9-b2ff-7ff4f146480d','704515d6-7ed5-4808-b6a4-7b820c1bf96a','allowed-protocol-mapper-types','oidc-full-name-mapper'),('1ad8b576-4f3d-4a20-9020-c4640e2d196b','17b017bc-85f9-4658-9e70-31f5cb3872db','priority','100'),('1e27c7e1-5e24-4e90-a4d4-61cba023e295','5fea1dd6-d3d9-4ce7-baa4-6a360e0cc19b','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('209b4aa3-489e-4f27-b94e-2ec408c1fc44','1bf4e0c5-9fb1-4e9c-95d9-bec268d0c57a','secret','93HqFxSQRndkvrdc0-6keQ'),('216484bb-c4f4-48c1-8b8e-8825cf5c00b9','967794e6-23a9-45c9-8c35-4a568f278c46','secret','K04dayhg0aEa7HZ64OQPvq1wAEJ5IEGYLI_44S1gmGaqjMjIXVdcMvlazMzugMebJmr2FS6Uf3YTlIQq-KbF3g'),('2613f6d9-23df-4608-9252-2fce20aa90e0','6b42c24b-b329-46ff-a0d0-4b9210198725','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('2ad6ea96-422c-4a02-b69e-602954e205ce','cefb8c08-3485-49af-8481-49cf80e9f056','keyUse','SIG'),('2c3dde07-f7d0-4640-aeb3-4c7c87024169','6b42c24b-b329-46ff-a0d0-4b9210198725','allowed-protocol-mapper-types','oidc-full-name-mapper'),('30c4c9fc-b6da-46b7-898a-ce1ccf0c364d','17b017bc-85f9-4658-9e70-31f5cb3872db','keyUse','ENC'),('3a123bad-4a61-46c9-b03e-5656969ab3cc','704515d6-7ed5-4808-b6a4-7b820c1bf96a','allowed-protocol-mapper-types','oidc-address-mapper'),('3c6c3833-fa41-4bd4-b4d3-c2250822add4','52e1c5ed-beb7-41d4-b915-fee604647841','privateKey','MIIEpAIBAAKCAQEAx+hjHgywVqiwGsQ2KOi4+99tf2b0CRiZYPgC0adNN+5+OI6hr5x9RnmYtXPrkYaYTjRHvqprjA9bgH3R8Ai7jl922Sb+LpDTszEOJAm61ZZdhF8DHgCIm5DlkNrkzLVkWK3ZDyT+HUjGiKnWVPq8X0eZF1jjBXI1CgE9JHuWTNBEaCIcydkUcde2bvEBvaO7c6CsAPDpzjlEXzG4AcY3b8XJ9g/flbbujT8abrvXqph+W3LEfx2+cYKrcvWhNF47d+ZlW/JGyJD8uRFRpI0+gfG4dmZLGTTEoUVe0OJ/w7MlaPLZHvQbo16aAKkqiIk6dZpLfUGgI1c++3IQr48fKwIDAQABAoIBAAg/4ks8qdBBsNbB7xw8Eloui7W8uWhgr/+s7GzbcxfSSzopRKnbEt5kKTWfvYJpZAKiLK3FGaATiCqixpWZvqeu79ghQE8KofncleFN13x18pECXL4RtpF45shWCCgcejIgpnr2A1iRBsRgAdzK5hgme75XaDLy1hZ+G5hUU00DHoXdUb2xwvvg/5PkJj1y5a30u2Skh8Y7K1X46DpOae+Tyvok4C7tL3Dg8T+ppMG75xENgEFvamdABRZKiaCSADp6uxVmkJMjNZvaNV++g4Z4DgJJGeWq3NT2eZuJxWme4qhIFLyIdvgZpIsv0CLZTh5ZYTXrgyTjrR7tdRguAA0CgYEA7bfL0gvCuyFIzmuscLLCdUaCIe4VVVQbJ11DYj78F4xwzo9ux8n9mvyurrhzyfLIvpTAV7f3QEeiK8PEEFI7xAjUuTGdpXiw+80MqUzA5a3U4CtlRznBUml598fILGfsRpSD8BYY5zZ7vynOCFCDL41Ke3KvbX/nH1VJoMiWCjUCgYEA10guksZ21bpi8TR3z5n9CzgDYxY5rUy8Iw1ci1ELsvBHQGlvgk2/ccEWQPblJQPmlJHG+8+PAm5eXFkLPNFSJTngKTHjnKeYX0oHqkm0d8h2WGEMc4rx6HYMwaserzvBKik5MNI4WNy2fpCWMVlA+D7UFxmx8v2pxNDXRECar98CgYEAp9FLCHvY+zZiKaeF0wG/mf8uuzlSwixgBwgmG+OPICi7Mne7ozuL17BuuVXqGDVXVoO4zbRHzo9Dg1Xuwf7rxlbdpefK/RgZCYoWWCahPwPa9m5sTz4MpltkCXJ2dDLhcGpEQme3KPMjpS6kDuaX1igO3tt10P2sckhJdEJm+ckCgYEAjvcOhsZpsHHAtzICxskadFLUXP8relzVK+n5pUNDI6fRiYL7XGtJUb/KiYXsknJOtCdDH4KtFA47d9RiVBcmGDahGHpbD3N1CwLcqEeeI1Xq0bJRVIHXOGr8+bgr/m8OTnNl2Xghl1Grl81pEIiXTsRakKStuhKepWeTLW5By70CgYBWFlnJhsL3EIQrsq6KKgPQdZGHLn0lpxhrgcWCxoCH8PSBER2WrhwXu26ebTOFAiY/xlc7oBe0DWz4zjRta8pZRo6FGV/vZPvgWcxPGggpcO69EotmQs2UI+q+bEN/8FBu70kd7jHKMYTFkn5n3bcrpRqIU2kjwg3q8ahDUrMJpg=='),('3cfffdab-8a03-481e-a1a3-414ffd1e4131','ee8aa7ca-4c6c-4a0a-8a2a-298ed166f41e','allow-default-scopes','true'),('3fa9eedd-dae1-4af8-9f00-934c3ec40c9d','967794e6-23a9-45c9-8c35-4a568f278c46','algorithm','HS256'),('44188562-f575-4f74-a28d-2185fc91b707','1bf4e0c5-9fb1-4e9c-95d9-bec268d0c57a','kid','8f368ec4-635a-466d-8c40-89675a611b76'),('44919e77-9d93-44b0-abf9-c260f109a434','d8d24456-f70c-4b95-8e82-d4eab3ad1367','priority','100'),('48a4a79f-1b94-49b7-b316-b293b6212abe','6b42c24b-b329-46ff-a0d0-4b9210198725','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('490c2c7f-20bd-4420-9080-87d735e5dac4','704515d6-7ed5-4808-b6a4-7b820c1bf96a','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('532b0642-6ea3-42e2-abc9-98b8fb041099','ba9897f9-1ece-4285-8aeb-52921002e957','host-sending-registration-request-must-match','true'),('533c52e1-98a6-4936-a6c1-6c1e730e4249','c4e690f4-379a-470c-a1a4-338343229e2d','kid','58477389-ee27-49f4-8107-2cd87f79921f'),('59e244b1-37dd-4fe4-8dc4-ff59beb9ec84','ad31d0be-3a34-4426-98d1-0a04709cdc13','allowed-protocol-mapper-types','saml-role-list-mapper'),('6051042a-9c17-42ca-9a9f-807e55d9476c','ad31d0be-3a34-4426-98d1-0a04709cdc13','allowed-protocol-mapper-types','oidc-full-name-mapper'),('63abb893-b681-4338-a858-9b4a469ad027','5fea1dd6-d3d9-4ce7-baa4-6a360e0cc19b','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('63ee40c6-8f5b-4131-9305-0e1766f3d694','967794e6-23a9-45c9-8c35-4a568f278c46','priority','100'),('6618c646-6e5b-4cc6-a206-60b63acd0f2f','d8d24456-f70c-4b95-8e82-d4eab3ad1367','secret','TdWHBNo11nJEWle7UiSbBDVl76oYL7W3FCkjmQBT8gncwS5cMU5eXNEx-qB578sHnAMd5H1j69hJLLspxyCAWw'),('671505c9-4955-465d-9ecd-c517857784b1','17188bb7-9f86-41a5-a1bf-60e42c322772','certificate','MIICkzCCAXsCBgGQAvvxTzANBgkqhkiG9w0BAQsFADANMQswCQYDVQQDDAJ4cDAeFw0yNDA2MTAxNjI4MDRaFw0zNDA2MTAxNjI5NDRaMA0xCzAJBgNVBAMMAnhwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoDqxzswbr1xLWwDdrAHNE5LDwEt2a1tubqN1ci1pGq/VaRgvZX5cTGZskRO5/4XzW2/JqU7DGjSgj/FG3T0mOgLmc8FHwSPKTEiwtX0Y9+84JKRWRsWWZ/7GvnNfNH7KKSk+7Em9O1yxthoXGx3gdAlMi2AeRGBCGzvfXn0teNS5Y8fakcTT2VkPyinVJ7QVb3t40tcrhEqW/MtLM7cFCJq+Isw2lAhJG5halc+NKfpL0Ft+UHWzOL4A6bHvBU0jN3rZaysBJkJIjIkd/qGNwuH3lLWwimGiNZHLRhHQtZbGmW9zGLFunidRFFWapUqeyu/umrYlaNfW+gzMoGn+gwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQBo/5K7LVjCFglFQYce8c0kKrGFJexwNYsqkzTplHDL+1w1/xdXo9a6aT2Snh0mCH0+J8lZamj5FMGAdxZZ6UxnanWFn7BZOrs3L5Jb3DrmGDnSn/p2SfcZHgppSPSJIczqE7oX3ODy0QcPSXiP5e2bq3djJ6kSkn64hFJOMlUz3KHv0lhsz7bT2nl13yrgjquPFI9ley9lmfXj5PQ3tu4CHashu3LQ92BQgn7XokQWLivqmBZ9X/UncG0pbFBSAmgKfLJ0gupMh2atLkUWQIgXro8HeNqL33/666uPQKu+9AHd56itIdB64X+3sa05jnZi04IsiPHpfyUzrzgG7V8a'),('6a345319-1291-4d93-91c2-6980738767f8','ad31d0be-3a34-4426-98d1-0a04709cdc13','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('6bd2e955-a429-4ea3-bd7c-6579010dfd9b','704515d6-7ed5-4808-b6a4-7b820c1bf96a','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('6d42a783-2f73-4699-ab2c-544ab3979fc9','6b42c24b-b329-46ff-a0d0-4b9210198725','allowed-protocol-mapper-types','oidc-address-mapper'),('72d2b825-afb1-4bb5-83e5-d1d3f63fc74c','c4e690f4-379a-470c-a1a4-338343229e2d','priority','100'),('79368140-8714-415d-b169-45420c35dffc','704515d6-7ed5-4808-b6a4-7b820c1bf96a','allowed-protocol-mapper-types','saml-role-list-mapper'),('79562922-34c8-40df-933e-228e90bf41c8','ad31d0be-3a34-4426-98d1-0a04709cdc13','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('7c6a018d-0116-4789-9282-5b2a981720bb','967794e6-23a9-45c9-8c35-4a568f278c46','kid','788bf70c-641f-4c19-86cf-8526428ba109'),('7e6e8c87-d647-4623-941d-8eaf1459cec3','38f2dfb7-ca6e-44ac-b9c1-b3aa6a6f3e24','allow-default-scopes','true'),('8249de87-5f75-4db9-a95e-43795738b084','17188bb7-9f86-41a5-a1bf-60e42c322772','privateKey','MIIEowIBAAKCAQEAoDqxzswbr1xLWwDdrAHNE5LDwEt2a1tubqN1ci1pGq/VaRgvZX5cTGZskRO5/4XzW2/JqU7DGjSgj/FG3T0mOgLmc8FHwSPKTEiwtX0Y9+84JKRWRsWWZ/7GvnNfNH7KKSk+7Em9O1yxthoXGx3gdAlMi2AeRGBCGzvfXn0teNS5Y8fakcTT2VkPyinVJ7QVb3t40tcrhEqW/MtLM7cFCJq+Isw2lAhJG5halc+NKfpL0Ft+UHWzOL4A6bHvBU0jN3rZaysBJkJIjIkd/qGNwuH3lLWwimGiNZHLRhHQtZbGmW9zGLFunidRFFWapUqeyu/umrYlaNfW+gzMoGn+gwIDAQABAoIBADymqxqr8UjaZ13dwIs1LVMc6YM3LW6q7+zqa/EZ1mC3MVG0SXCiOb7jwHHUJUJfioRQluXDPiADzsld2+SwGnG4GlKz1Xz7Fr70fwtb/KERSM+58zyb23inHMUHuACPg+e7yKk5qms3hb94Ncnab9WMlZBmhF5+j1duvPkv6hAD4INwH8usFxRabxzxT3tIkYVKrF8Uv3vEn/+oFbIhEA9O8EPuGSkzW0w1m4hwDo2a9CfxNazshsoR/8AhaogmZEjBanZ+Rxj21WQgkLj5hBVuZOvm7BNPDj4vQ5BlRt8fsO8pzohR5l3tNswzls8S5VgnRO8nyp248kO7ahTX4ekCgYEAzospkT+QwYlGPMrgMeNCwBtpdzYV8YWgpYJndF9c2iYHtObWp7o5XxcgpbKedzynykv0QQd6GEgLfkfK4qyMKqQKGiBKm3nq7OCdDuA3lmuY8+k5X08gGYUvI2Ply3LFkGwrLw1e32QgxfkqwZHlzxhJ4qvhD5SpE3+yWw8kHvkCgYEAxpiHIzAJbyBoZg+lEFUvffUibEGTcuFxc6kLHS4iTmvj6K7OTpf2+r1M6MdFggmFKAMvNBlxtD9pQmsS0lsWNzAP3FkNkdU0/uuxEHMZHiXYS+CSDjRGBbo4QXdjSJ39L/nwuk3OarfcNz7zhnTb5hM43FR+AG+7fs93Yu/d3FsCgYEAuBxeokXqUEqAnKIvdOji0IHe4lAJAXEfQUnb1GVJTIAH8J6wi3S5vWTNSkbNcPZVj0NjaDA1Cr312MxAMwyiKURuaNmOB8eGvT5/YgpGIsSo5Atqg+XxdC4/Vamv5knZiCKT3+5oOnNzr2WrUj8ufgtlmTOjfBMFIAd9QiReC2kCgYBu9PlL56Ldu7WYkFUg8vc94KAC7AB9xwekH2ZeP1BbkFwdvMz3jGApZ2p5BB0Jslf7KwxMh4rHskYVHc2+SbX3z5qM+hRizkR1ySl8j1IRTgOzIR15YitdN9YGfbWy9NJo47Rj4uTZKzCWjU1yaggSW9sA/xQHGmYfS7rgRDQo0QKBgCqBUBfuA76HbpTNyYq92V+UFUjtwFOpYfux3Kbl/fD16KgW2PWsw1W5HoQ88Am/L0r+ZAUS+1IMTmrTfitadi7x/aCWDVssY6o6EHp4ydmkl5Y6dkXXNehP1NuuiBEDDgQpeETICqns8LL1DJLTkmHo9gj8ljLMuD2+vbdnEBxb'),('8324d03e-c090-4e43-88d3-589b5aa663d7','a6c16816-f7d6-4086-beb1-605858d2ceda','max-clients','200'),('863dd899-30a5-4e4a-bb06-5314f8e2a189','17188bb7-9f86-41a5-a1bf-60e42c322772','keyUse','SIG'),('9137acf1-31be-495e-bf57-5bd17979454b','87cbb0ce-829b-449c-992c-0f76d8545a6b','allow-default-scopes','true'),('9839ca08-3616-4f19-b42d-d94dbda1c675','5fea1dd6-d3d9-4ce7-baa4-6a360e0cc19b','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('9fe30ac8-16f1-4fe0-a4ac-0044ec0b3006','ad31d0be-3a34-4426-98d1-0a04709cdc13','allowed-protocol-mapper-types','saml-user-property-mapper'),('a21fdf4a-318e-4d81-8484-d5176a7be515','17b017bc-85f9-4658-9e70-31f5cb3872db','algorithm','RSA-OAEP'),('b2d473b7-7253-4877-99c2-4839de901fac','ba9897f9-1ece-4285-8aeb-52921002e957','client-uris-must-match','true'),('b6293350-0ec7-4cca-a6ea-ecc496d7abc4','704515d6-7ed5-4808-b6a4-7b820c1bf96a','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('bbb5e53e-1917-46c4-8f7f-4abbe19ee38b','5fea1dd6-d3d9-4ce7-baa4-6a360e0cc19b','allowed-protocol-mapper-types','oidc-full-name-mapper'),('bc74b32c-1a90-440a-8917-4b04148e4a5f','704515d6-7ed5-4808-b6a4-7b820c1bf96a','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('bd22cc05-15cd-4202-9350-30767fafc491','17b017bc-85f9-4658-9e70-31f5cb3872db','privateKey','MIIEogIBAAKCAQEAujnCBeCGedvEuKdE7TzJjAAjUH6RvcupVSbbWZdw3YiuWWMSuYgJ0w4AzPpR5q5JBlCj1qQrMfc5fTUHllT2xAVxoC9PHa42lCYSJvJ4JTWXBGvPBd3MpWsmrgKTH6DtHiZ3kvV87mPaOVf6NXhb1JwDygKrVzj4XGFM+OhsrOY+8/WCFtIRMDw6WoXe6LOOcUd4S5uuw3QPt00/8xwWqPetyuJwTe9e1Mvekz33PlthzyUOyNiJlSbVLwekklch8fEQnveHEszu/jO3dH+AJLKlpMEOJb27+4RdamQQ0yEZZgnRo/lG/EfTLA0xUhnKJQ/sz5+Rd2SILScSdm0CKwIDAQABAoIBAATLiu7qzpuhqImWqQQwzgHAWShv8eHAtj3+j6RZbWsO42pizi8fzRz1ndipU2WMtE2o0ucqeABD3OOX83eP/YCjoT7eKPvbKgWbi1kcYjKXFCnlesGsaeIShb7ySwaD9scRd3+9uXdL8+kJFmS9EiRB1ikj83R9/4slaD16gp3bDohRL++9czYtXNIP8VGahfi7TurYcnGJPhBzKgLYl3K/Z09UaLQZFzWLRfIS91tPs57xVBav4qDx8WQbARbZ7rL3NqSMElieiOFvvKPPBfWMJEyxJo/A+3Q4G5tm1qrE7jIbUi7sMUr5c4YkxEpYQJ+/0OXexk4c51KXleaDunkCgYEA+cLEDnkEfvDTIk/JvpdBMH9VUt1liBY5XudK09C1CSI4c0EV753IdcVtYiNCN95hyZhEN9PUsVr3U5G0wpiozxUNNS+EEWOKUrZpt79PHTqFl7HmhJtVDft6aX3SotXKM3MnSmhp45cJ0mp2d+SYpZd4ez6PW0NZmwcC+tTRbFMCgYEAvuCuV1WvY7swgj709RNZGM4tXSiGNPB7TR0xJy76dtVGsPvFXhk878pYuRD0UxeafJUYDhlaHbu6y5AQyUT/oRThyu+brWghFX79y0mHzY09/h7uXzrVa3KQ2AJYh8NMSMcxERgn+DEE4wIEy52DHqLqQGLrUjWuBIMSzJk+l8kCgYAkltzkBeSbuComL6wtiLkbIrxcPGUAb8kN1zKGH2A2K1Y7xEAzb1kLr9Wbd/DegGyw/OaZiyXwqZPsIT9q9rRcSgg6T3C4n22HOoP4UEWF0an6lCxiJuNp/fpr8+vkwQ8zRF5wLyW8GsdslP4wCEQ4lh0naP3Vb+Nzq65LEtxvUwKBgG39wNj4ukGpC3HyX2ueA5iErqVhBb0Z2qN8L+fZbWDu03aHDpuDxZaULn4uY+xBzLb/n0X4m/JITIKi+NlSVk/3XYl4e2f4eiAN9qefLo9nVZLLNidQGs14zjh7WZKaGqpRhlfIaLffX2aEski28mjEDmKd3eaYojddZIbbw7LpAoGAG/A9bu027AMAwr8cEJ735DDA9uusUn5VqEeNO8slxbFkSf8G3GsOIIAdN5LS59RvLDmeB4Tl8qfTkXxPh8iDqDlLLLxdiaTAt7levbkrAO/9oqbk0oui3THqI9pjuOcT+JFwuA6avh2S0v0a7Z3BY5fB3wEdE8hAiAFSFPWRzcA='),('bfd14b16-a29c-4191-9519-38bbc9fad359','ad31d0be-3a34-4426-98d1-0a04709cdc13','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('c11a6bea-c181-4e74-87de-df8b636fcc64','d8d24456-f70c-4b95-8e82-d4eab3ad1367','kid','075dd300-cf24-4545-b2d1-970900f3bdff'),('c1e218c1-26ba-4b43-80c2-0adc3368e872','6b42c24b-b329-46ff-a0d0-4b9210198725','allowed-protocol-mapper-types','saml-role-list-mapper'),('c47ae508-b6f7-49cc-9d2e-4893042f423a','7a6b7c8f-37d0-416a-a9c9-a89f07993a4d','max-clients','200'),('c5f1e544-84d1-4a56-bb19-037412d4a25f','cefb8c08-3485-49af-8481-49cf80e9f056','certificate','MIICmzCCAYMCBgGP/fiffTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjA5MTcwNjIwWhcNMzQwNjA5MTcwODAwWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDXUh0xxVIwtuYqcjVSaNPXiYdoJrx8ENTgINgZsjyoxvcVz9BVjg6kpXGcE0xDD1LSpACefjRjM2KMycCUAn4I2VFAgNrGxnndoTub9uuKHWmR1LEVZLaNBdMo/bYWtkgXGIcBJphxo3sWvTp0zBE7r/4+9qySbHi+IHCKMc0PEu9Bs+kCgTxkGyUqkIPMPrbjzbG61YsG+3fBcJhUGvRA8RtEa2Dgr0GDybZ9i56qTMUjLRxXVd3IpIOvL8jPPswrC2wL8C9WAipuR3vIptIW7gHs+yBKt4omZkvJL/PNvYt4MVqeKVgak32xxrhYGaDCY5s9QmkJEzCqWcc/Q0TpAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAB9x1fdckhdHVr8gXLB6qLiIM3bmvJdHEYuzBf3s4yL0+Diy2gILJfIfLFKE0TmqduGP8NHIaDoafuLzqGfUpChbYKZ9CrqkfLVY0sZ8+LtS5DibEsCyFGiJUbRtl9oUgcUhUpVway7eG9TOzxtU+chzymSEVnQV+JKv9gc1654YmHk4G1h1ndy9poGf4UsbjzLBwwmpOZeDcnJDVzX8Nt4hsNSZ4p401KNjxyg9yWi6z6mIdQr8oD0UyvevRY46N6B5IaSatHNedstMLxpa6pVjCVnJ7biKCUDQVWwRsiOUPaaZcY+8eFShlzYqd8VxaK4ydMrRN1l3wRIJLmCGNao='),('cc67bea0-e974-4d80-8db6-9edfed106895','6b42c24b-b329-46ff-a0d0-4b9210198725','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('ced62f02-2681-40b8-a2be-595651efbb2e','fb409592-8f3d-4372-9018-23fef6da2a49','host-sending-registration-request-must-match','true'),('cf5e1802-84f5-414c-b2a9-bc1eeb814649','5fea1dd6-d3d9-4ce7-baa4-6a360e0cc19b','allowed-protocol-mapper-types','saml-user-property-mapper'),('dac28760-6179-4e9e-a3ac-2471a1b4587d','cefb8c08-3485-49af-8481-49cf80e9f056','privateKey','MIIEpAIBAAKCAQEA11IdMcVSMLbmKnI1UmjT14mHaCa8fBDU4CDYGbI8qMb3Fc/QVY4OpKVxnBNMQw9S0qQAnn40YzNijMnAlAJ+CNlRQIDaxsZ53aE7m/brih1pkdSxFWS2jQXTKP22FrZIFxiHASaYcaN7Fr06dMwRO6/+Pvaskmx4viBwijHNDxLvQbPpAoE8ZBslKpCDzD62482xutWLBvt3wXCYVBr0QPEbRGtg4K9Bg8m2fYueqkzFIy0cV1XdyKSDry/Izz7MKwtsC/AvVgIqbkd7yKbSFu4B7PsgSreKJmZLyS/zzb2LeDFanilYGpN9sca4WBmgwmObPUJpCRMwqlnHP0NE6QIDAQABAoIBAA0ZZsNHYNer2NbOOeY4kGK1cDJq4N6fW4QDG4J8sGoIKLIAAYmi6cskcYPwPJx7yysbZRo/TUqXrrAn+fpHKIm7RtEoxaaAHpvYGjtDy1KMtYZ0rQ1DIkP0DcOZo8E/96TIDjaItY98RZm9i1fdrlK2Qz5rXVZPGQ1gBdiybOo0vRzCzaD6Zb2drSvnMtqbN81X4xf7EVePEvgItwzxGIUINezhUExfAt76AbZqkr5QxAK54nNMzlGN5aZ7TlkiPNGxtO1xIlEp7CsHDe4bzZqlqCz99VQyN42Byk4YPs+sbkfSX16BopJ4BresrRK/FevO1hnlBETvNIefATiqdL0CgYEA79wPX1DU1ELMguVVlQA2WeaEOl6+rsSxcrzeCsFxvjtkomcxSh0VGNVZQSKBkrBOUnQqsbcSY0dg8s58DJCfKue15/RKplKExekpwQXHMpjnmULucufK1At5mYX8fiFwOmlrRmRJV4FKUbZoSydM3fpoutVSU0c2T1F9IvFIp38CgYEA5c9V6+IVyo+ntHfuaWJGv3MQzl735B3KuV+DIzN+i/0nmmARoEFNitt1GfWiqRoxqmKbm2mrdPW5gQ7e9W0jIeCcjhlwxWo1VEdE1djJKx4ELEQ0uQ//BuW833kJaLVGk+H6dgYO7xApcNU0IROCr3YQtp+ZZItiJc4CJlksB5cCgYEA4bXcRV6EGIYPezGh+ker3addUKwtlbqEHSt7avWkOlYbmfOvX0XEv4yso+17rvT3jwG/12ImDIRzx6jk9NH25eILvI2W3bKTPMXvw7LTQ1q9vexNBJX4uNdfg0ehVXPT7zOafjALECwbKo+Szv3ZiJ2GhiINiU5e3f8Z2ZLiQrMCgYB0z468945cB+kWsl9c8bdEWRiRzXPzX7FLyGC/48zPGz6mGW7cJlVj32kGaPTlP4s/MCAoPu4H5V8FWqm51l+lOKZbFFNeBT5WOGOkzyxx3jAA0Cp8ZsUanGwEq2E89+eIA7VriGjO20g1MintJh2nUjvsl/NASBj7Xlt5YpoewQKBgQCW5O64c5IaKETGFH8KdZzCfh89JgqveTmf/JT32J9p9nFAwoS+HD/YjY/3uBXezA8phATIk1KM2zTIrR4bzATrUu4lXXWLiLaXV7VEjSan9KENy+agzSUv2ykIUGB1UXhkhbqf6/02W1SWVe3cv3O/r3u/qKcOwK3aNsglCABzPQ=='),('df521b38-9cfa-4521-a08c-de7ccec13522','d8d24456-f70c-4b95-8e82-d4eab3ad1367','algorithm','HS256'),('e3a9bc96-85fd-4144-90b4-96c0b9ca0c0e','6b42c24b-b329-46ff-a0d0-4b9210198725','allowed-protocol-mapper-types','saml-user-property-mapper'),('e47a48c0-995e-4a31-a651-a337495b745e','5fea1dd6-d3d9-4ce7-baa4-6a360e0cc19b','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('e657144d-5521-4f42-acf6-0f112b18c6dc','52e1c5ed-beb7-41d4-b915-fee604647841','keyUse','ENC'),('ed242917-e4cb-474d-bb7d-dde733ee7c7c','5fea1dd6-d3d9-4ce7-baa4-6a360e0cc19b','allowed-protocol-mapper-types','saml-role-list-mapper'),('ee128337-e436-451d-8189-5e6a59f632a0','17b017bc-85f9-4658-9e70-31f5cb3872db','certificate','MIICmzCCAYMCBgGP/fihuzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjA5MTcwNjIxWhcNMzQwNjA5MTcwODAxWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC6OcIF4IZ528S4p0TtPMmMACNQfpG9y6lVJttZl3DdiK5ZYxK5iAnTDgDM+lHmrkkGUKPWpCsx9zl9NQeWVPbEBXGgL08drjaUJhIm8nglNZcEa88F3cylayauApMfoO0eJneS9XzuY9o5V/o1eFvUnAPKAqtXOPhcYUz46Gys5j7z9YIW0hEwPDpahd7os45xR3hLm67DdA+3TT/zHBao963K4nBN717Uy96TPfc+W2HPJQ7I2ImVJtUvB6SSVyHx8RCe94cSzO7+M7d0f4AksqWkwQ4lvbv7hF1qZBDTIRlmCdGj+Ub8R9MsDTFSGcolD+zPn5F3ZIgtJxJ2bQIrAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAIYids3XJD/sqgWnnbCm0H9LsGFOlzejAEmpL1uibDDBUv0daF7VDhXO5xai+OZpE+DvChtd+HvgjyLdZegoZgPzZ+U+Xk/weKHgm81W8HfdZwUZzhzEBrGc9eaRw0uinZ64hHoBlRk3PGD8Zw6AJzuKUckYxPMKunVX/360t4rsE1nZ/iw/aHNrEtFetr4vOWt6Yl5y9kDOxACfe/7tNpmDvLO1kB+7qFh2V35n/JkAtP8CF3F27G9e2To3zYJsidMv4YKVlSRZf7jEg1Y9z6sib3V2r+/xsVtDoUlgldkLTHrqLZReaqiYV65HFSKB7t2YB3VhI+jh1lTr2NkFSM0='),('f1a89568-c014-47e4-a2a7-66db80683484','ad31d0be-3a34-4426-98d1-0a04709cdc13','allowed-protocol-mapper-types','oidc-address-mapper'),('f46b1148-97b3-45cf-94a0-e9b2c44e97fa','6b42c24b-b329-46ff-a0d0-4b9210198725','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('f7a58ce2-f409-4df7-94a6-f179a4053b57','52e1c5ed-beb7-41d4-b915-fee604647841','certificate','MIICkzCCAXsCBgGQAvvzOTANBgkqhkiG9w0BAQsFADANMQswCQYDVQQDDAJ4cDAeFw0yNDA2MTAxNjI4MDRaFw0zNDA2MTAxNjI5NDRaMA0xCzAJBgNVBAMMAnhwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAx+hjHgywVqiwGsQ2KOi4+99tf2b0CRiZYPgC0adNN+5+OI6hr5x9RnmYtXPrkYaYTjRHvqprjA9bgH3R8Ai7jl922Sb+LpDTszEOJAm61ZZdhF8DHgCIm5DlkNrkzLVkWK3ZDyT+HUjGiKnWVPq8X0eZF1jjBXI1CgE9JHuWTNBEaCIcydkUcde2bvEBvaO7c6CsAPDpzjlEXzG4AcY3b8XJ9g/flbbujT8abrvXqph+W3LEfx2+cYKrcvWhNF47d+ZlW/JGyJD8uRFRpI0+gfG4dmZLGTTEoUVe0OJ/w7MlaPLZHvQbo16aAKkqiIk6dZpLfUGgI1c++3IQr48fKwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQAGvximJeYWzzpibn1XrYEIeoRbtMMyGc6nJ/U4Nf0xypG9dk0+Kq+JzYwboIsUHQbEOR643cFtz7Z3T7hl+MhHoKXi3Vf8MGIkvQ9d19wxDmYXVSwNg5c1LQulT8lFa/wrMMyI24BHmqQ0CgP8rjJKrNpSV37w9p1xZ1wk6IYQMVFiF9mXaBI/moabuulzNBgufV33TXsNG9rN8Yxn4ZugkpZT77RX5V+AJU5fKzBszW7Ri++xCUcp2Y1/ZUkdBktf44k+KfFzlkZqAAcAItKbbWo2Ucf1CjOcOipf/Aiw+a5mMe8jryI9bHX+pk8uce1TC64BHgiesY0xL70ir+sO'),('fd1997e5-06d6-4a9a-b704-51faea4d8bb9','cefb8c08-3485-49af-8481-49cf80e9f056','priority','100'),('ff0f740f-d7c8-445b-86d5-a2ba1f6224db','ad31d0be-3a34-4426-98d1-0a04709cdc13','allowed-protocol-mapper-types','oidc-usermodel-property-mapper');
/*!40000 ALTER TABLE `COMPONENT_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPOSITE_ROLE`
--

DROP TABLE IF EXISTS `COMPOSITE_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPOSITE_ROLE` (
  `COMPOSITE` varchar(36) NOT NULL,
  `CHILD_ROLE` varchar(36) NOT NULL,
  PRIMARY KEY (`COMPOSITE`,`CHILD_ROLE`),
  KEY `IDX_COMPOSITE` (`COMPOSITE`),
  KEY `IDX_COMPOSITE_CHILD` (`CHILD_ROLE`),
  CONSTRAINT `FK_A63WVEKFTU8JO1PNJ81E7MCE2` FOREIGN KEY (`COMPOSITE`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  CONSTRAINT `FK_GR7THLLB9LU8Q4VQA4524JJY8` FOREIGN KEY (`CHILD_ROLE`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
/*!40000 ALTER TABLE `COMPOSITE_ROLE` DISABLE KEYS */;
INSERT INTO `COMPOSITE_ROLE` VALUES ('0d743a02-8f7f-467a-9da6-269634e202e3','000a6f98-6f39-48df-8586-964331b286bc'),('0d743a02-8f7f-467a-9da6-269634e202e3','2c6a402f-6f51-4f54-8361-d540484d07ce'),('0d743a02-8f7f-467a-9da6-269634e202e3','dbec4bd3-3be5-41d9-a9f6-9c8150ccbb76'),('0d743a02-8f7f-467a-9da6-269634e202e3','f4ff3b53-04c5-4732-8f18-7a4a4e13a74d'),('446de375-0991-422f-ae40-d028f821c940','07112198-0f6f-4240-9a91-4402ed904fde'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','08d591eb-bbcd-4187-bf36-125a6261bf37'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','1fd4ec63-7f4f-4a2f-9f44-0e25943ba8d5'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','27e3fe95-05d0-4f3e-83f6-447b45706d7f'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','2bbda57d-b441-46ff-a080-7c022154a959'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','3fa54442-3924-4883-ab06-46fe6ab2c45e'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','403d7da8-9503-4752-a7de-5964786a8eec'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','6888fa37-8f70-462c-82f5-bed5ae1dafc6'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','747b34a1-095a-4560-b517-8dafd968fc1d'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','88720219-ea22-4a49-9ee6-a665e0ccdfe0'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','8a917fd8-734b-4afc-aa16-c823499912a3'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','9555b7d6-fb59-4d3e-aeab-e6293d4aef0b'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','a0344242-4c6e-4a4f-81c6-b82fb2be5128'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','bc9ed322-c7d5-4631-ae46-f922078db89f'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','cbb6b112-6583-4543-9c19-1ea431fccce5'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','d56ca15a-b30d-401c-b957-ba7275d50611'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','dbf0db89-5452-4dc2-aa7f-ac5b0d306806'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','e055cba3-0d58-4a91-8734-1c5dd2146532'),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','e99c4dd4-62d3-4deb-8faf-98b255e4cc50'),('67f7d376-7d3a-4c2a-badb-6cf2f3bc7e96','2418d9f7-8f67-44aa-a55e-37ac4fc09c1b'),('67f7d376-7d3a-4c2a-badb-6cf2f3bc7e96','d6e5cd5c-2fc1-4473-88b8-4091c51ae259'),('88720219-ea22-4a49-9ee6-a665e0ccdfe0','1fd4ec63-7f4f-4a2f-9f44-0e25943ba8d5'),('97938ded-ab6d-4b6a-9ac0-b1cc5c7c3b28','7d103e5d-e799-4f5a-9a51-df9c9d82b23d'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','0241e018-5287-463e-8c95-cf404aa2a161'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','026bfdce-0f6f-46fd-a8f9-5082b2689046'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','07112198-0f6f-4240-9a91-4402ed904fde'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','0867b2b3-837d-4f5c-b39c-f833719bca5e'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','089bf5f2-1400-4ed8-9db6-b623a0ee2e5d'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','15b7c1e4-8952-4a7d-b863-ec1d99eca0bf'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','2418d9f7-8f67-44aa-a55e-37ac4fc09c1b'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','24a15942-e14e-4fe6-9b05-9ba27372fe3c'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','3068e03b-474e-4ee4-95c3-049610c62d1f'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','34771677-495a-46c9-9309-d280d0afddb3'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','3b5f1e05-176a-42c0-8874-fccbc8421283'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','446de375-0991-422f-ae40-d028f821c940'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','4d637b57-1e36-45f3-9d2a-023d3bba31df'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','5b3ec071-7980-4d99-8e22-6a005a2a2ab4'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','5b6e1a16-dd09-4c8e-8799-96586a9bd7f9'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','67f7d376-7d3a-4c2a-badb-6cf2f3bc7e96'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','70eb5eba-edea-45c5-a319-92e7c4dabc70'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','798d1436-8833-48c9-822b-5f005d9cdb80'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','8c5688d4-5706-441f-bace-b42e4409aa57'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','acb6b66c-77be-4244-8dfd-6c5b616a3f01'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','b87bf9f9-4791-476e-9cc7-61ded230e3c2'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','ba26c330-b18d-4667-9088-e55d1fcdc1d7'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','c8335ad3-20db-4fcf-8dad-bcee91789907'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','ca701d2c-d044-4603-a4a1-822867f04cf7'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','cd07dc38-1c1d-4612-ac00-558601590eae'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','d0b7aac5-5aab-445c-b4cc-02fb8cc313bb'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','d34ab21c-07d2-4a8f-b864-6ef1a4be75e0'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','d6e5cd5c-2fc1-4473-88b8-4091c51ae259'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','d91fc653-ab3a-46cd-869f-60eab72c12ce'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','dd9949fd-1b4b-49d1-bc98-ac913d691191'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','e0979c73-21f0-49d8-8ea8-0d2bfe74c0fb'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','e097e925-74ea-4c17-896a-b2389ad5a6bf'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','e575c810-4f99-4b86-8883-3c4494f9e279'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','e9bd79bb-88b3-4643-8f8f-607d95fe17de'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','f11ca8af-b237-40fa-a4e4-35ea70a97aec'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','f93b2b28-5c8b-4a05-a2f0-116b14be082c'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','fb1a6124-61df-4925-a4cd-5907261673ae'),('bccee7b6-3542-423b-8964-b1897097a560','a4913b83-e873-478c-8be7-ef039e7c07b5'),('d2aa49d3-325f-4771-b782-67f6fdc4d253','4fa96b1c-65e9-41df-86cc-163874b7cfd2'),('d2aa49d3-325f-4771-b782-67f6fdc4d253','7f9e44a2-bab3-4f0f-8a0f-2c89f7836bab'),('d2aa49d3-325f-4771-b782-67f6fdc4d253','bccee7b6-3542-423b-8964-b1897097a560'),('d2aa49d3-325f-4771-b782-67f6fdc4d253','d0a4c3af-4a75-4404-bf0d-4e41b3ba16a4'),('d58fea45-abac-4347-9bac-f602bf2ce340','3a7ba11b-27da-4c36-8abb-047b47551bf6'),('e055cba3-0d58-4a91-8734-1c5dd2146532','08d591eb-bbcd-4187-bf36-125a6261bf37'),('e055cba3-0d58-4a91-8734-1c5dd2146532','bc9ed322-c7d5-4631-ae46-f922078db89f'),('e097e925-74ea-4c17-896a-b2389ad5a6bf','24a15942-e14e-4fe6-9b05-9ba27372fe3c'),('e575c810-4f99-4b86-8883-3c4494f9e279','798d1436-8833-48c9-822b-5f005d9cdb80'),('e575c810-4f99-4b86-8883-3c4494f9e279','ba26c330-b18d-4667-9088-e55d1fcdc1d7'),('f4ff3b53-04c5-4732-8f18-7a4a4e13a74d','8f8ba036-fe3d-4122-8190-240691661e57');
/*!40000 ALTER TABLE `COMPOSITE_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CREDENTIAL`
--

DROP TABLE IF EXISTS `CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext,
  `CREDENTIAL_DATA` longtext,
  `PRIORITY` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_CREDENTIAL` (`USER_ID`),
  CONSTRAINT `FK_PFYR0GLASQYL0DEI3KL69R6V0` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `CREDENTIAL` DISABLE KEYS */;
INSERT INTO `CREDENTIAL` VALUES ('26d91861-a518-44cc-b2de-47a4eaf3db16',NULL,'password','11ca4794-c835-4522-b70b-6dea13ca95f2',1718125590779,NULL,'{\"value\":\"DVkQhdz2Orp158yVp6j3Pu9gv36hOkw0fK4E/gFDYGkLFRKpsyolp/7WFKDL59d5/vPfFD8AgqxwYcIuEE3Y4A==\",\"salt\":\"vcT5X4oAm5qIyXmyz+sGsw==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('89594d0c-c582-4a09-9bea-b47912ff854c',NULL,'password','9cce0695-22f5-4b28-9b9c-b64d94dd6a7e',1718124876488,NULL,'{\"value\":\"bwrp8jVzykWt9ojSR2qckWUQHh6a1eOAwTC2z0UETxAosGQCRd3R97uikBgkzTK9Nv6HRSqHbgh531gb4bLQTw==\",\"salt\":\"AihJzSPSLo0I3S+VVA0vmg==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('92423221-782d-46c2-8fc9-ed73d9a1b1e3',NULL,'password','6de3fd49-0280-4c2d-babe-0d78e12e82d3',1717952882072,NULL,'{\"value\":\"ZOgZW/aTl3rkQE0hFHm/Dixg5UmqBTfooEL+HL/AfP10baDXLgilXD4UXi1RsBX4kIV9s9n5GT8mxgPVA+O6wg==\",\"salt\":\"PguHS4MpZf49tBETG/XDDA==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10);
/*!40000 ALTER TABLE `CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-06-09 17:05:59',1,'EXECUTED','8:bda77d94bf90182a1e30c24f1c155ec7','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-06-09 17:05:59',2,'MARK_RAN','8:1ecb330f30986693d1cba9ab579fa219','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-06-09 17:06:02',3,'EXECUTED','8:cb7ace19bc6d959f305605d255d4c843','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-06-09 17:06:02',4,'EXECUTED','8:80230013e961310e6872e871be424a63','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-06-09 17:06:09',5,'EXECUTED','8:67f4c20929126adc0c8e9bf48279d244','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-06-09 17:06:09',6,'MARK_RAN','8:7311018b0b8179ce14628ab412bb6783','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-06-09 17:06:16',7,'EXECUTED','8:037ba1216c3640f8785ee6b8e7c8e3c1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-06-09 17:06:16',8,'MARK_RAN','8:7fe6ffe4af4df289b3157de32c624263','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-06-09 17:06:16',9,'EXECUTED','8:9c136bc3187083a98745c7d03bc8a303','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-06-09 17:06:22',10,'EXECUTED','8:b5f09474dca81fb56a97cf5b6553d331','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-06-09 17:06:24',11,'EXECUTED','8:ca924f31bd2a3b219fdcfe78c82dacf4','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-06-09 17:06:24',12,'MARK_RAN','8:8acad7483e106416bcfa6f3b824a16cd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-06-09 17:06:25',13,'EXECUTED','8:9b1266d17f4f87c78226f5055408fd5e','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-09 17:06:26',14,'EXECUTED','8:d80ec4ab6dbfe573550ff72396c7e910','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-09 17:06:26',15,'MARK_RAN','8:d86eb172171e7c20b9c849b584d147b2','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-09 17:06:26',16,'MARK_RAN','8:5735f46f0fa60689deb0ecdc2a0dea22','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-09 17:06:26',17,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-06-09 17:06:30',18,'EXECUTED','8:5c1a8fd2014ac7fc43b90a700f117b23','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-06-09 17:06:33',19,'EXECUTED','8:1f6c2c2dfc362aff4ed75b3f0ef6b331','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-06-09 17:06:33',20,'EXECUTED','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-09 17:06:33',21,'MARK_RAN','8:9eb2ee1fa8ad1c5e426421a6f8fdfa6a','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-09 17:06:34',22,'MARK_RAN','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-06-09 17:06:34',23,'EXECUTED','8:d9fa18ffa355320395b86270680dd4fe','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-06-09 17:06:35',24,'EXECUTED','8:90cff506fedb06141ffc1c71c4a1214c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-06-09 17:06:35',25,'MARK_RAN','8:11a788aed4961d6d29c427c063af828c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7952743486'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-06-09 17:06:36',26,'EXECUTED','8:a4218e51e1faf380518cce2af5d39b43','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-06-09 17:06:41',27,'EXECUTED','8:d9e9a1bfaa644da9952456050f07bbdc','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-06-09 17:06:41',28,'EXECUTED','8:d1bf991a6163c0acbfe664b615314505','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'7952743486'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-06-09 17:06:46',29,'EXECUTED','8:88a743a1e87ec5e30bf603da68058a8c','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-06-09 17:06:48',30,'EXECUTED','8:c5517863c875d325dea463d00ec26d7a','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-06-09 17:06:49',31,'EXECUTED','8:ada8b4833b74a498f376d7136bc7d327','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-06-09 17:06:50',32,'EXECUTED','8:b9b73c8ea7299457f99fcbb825c263ba','customChange','',NULL,'4.8.0',NULL,NULL,'7952743486'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-09 17:06:50',33,'EXECUTED','8:07724333e625ccfcfc5adc63d57314f3','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'7952743486'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-09 17:06:50',34,'MARK_RAN','8:8b6fd445958882efe55deb26fc541a7b','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-09 17:07:03',35,'EXECUTED','8:29b29cfebfd12600897680147277a9d7','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-06-09 17:07:03',36,'EXECUTED','8:73ad77ca8fd0410c7f9f15a471fa52bc','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7952743486'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-09 17:07:03',37,'EXECUTED','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'7952743486'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-06-09 17:07:03',38,'EXECUTED','8:27180251182e6c31846c2ddab4bc5781','addColumn tableName=FED_USER_CONSENT','',NULL,'4.8.0',NULL,NULL,'7952743486'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-06-09 17:07:03',39,'EXECUTED','8:d56f201bfcfa7a1413eb3e9bc02978f9','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.8.0',NULL,NULL,'7952743486'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-09 17:07:03',40,'MARK_RAN','8:91f5522bf6afdc2077dfab57fbd3455c','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'7952743486'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-09 17:07:03',41,'MARK_RAN','8:0f01b554f256c22caeb7d8aee3a1cdc8','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'7952743486'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-06-09 17:07:03',42,'EXECUTED','8:ab91cf9cee415867ade0e2df9651a947','customChange','',NULL,'4.8.0',NULL,NULL,'7952743486'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-09 17:07:13',43,'EXECUTED','8:ceac9b1889e97d602caf373eadb0d4b7','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-06-09 17:07:13',44,'EXECUTED','8:84b986e628fe8f7fd8fd3c275c5259f2','addColumn tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'7952743486'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-09 17:07:13',45,'EXECUTED','8:a164ae073c56ffdbc98a615493609a52','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'7952743486'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-09 17:07:13',46,'EXECUTED','8:70a2b4f1f4bd4dbf487114bdb1810e64','customChange','',NULL,'4.8.0',NULL,NULL,'7952743486'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-09 17:07:13',47,'MARK_RAN','8:7be68b71d2f5b94b8df2e824f2860fa2','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'7952743486'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-09 17:07:19',48,'EXECUTED','8:bab7c631093c3861d6cf6144cd944982','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-09 17:07:20',49,'EXECUTED','8:fa809ac11877d74d76fe40869916daad','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7952743486'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-06-09 17:07:25',50,'EXECUTED','8:fac23540a40208f5f5e326f6ceb4d291','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-06-09 17:07:26',51,'EXECUTED','8:2612d1b8a97e2b5588c346e817307593','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-06-09 17:07:26',52,'EXECUTED','8:9842f155c5db2206c88bcb5d1046e941','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'7952743486'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-06-09 17:07:26',53,'EXECUTED','8:2e12e06e45498406db72d5b3da5bbc76','update tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7952743486'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-06-09 17:07:26',54,'EXECUTED','8:33560e7c7989250c40da3abdabdc75a4','update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'7952743486'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-09 17:07:26',55,'EXECUTED','8:87a8d8542046817a9107c7eb9cbad1cd','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.8.0',NULL,NULL,'7952743486'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-09 17:07:26',56,'EXECUTED','8:3ea08490a70215ed0088c273d776311e','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.8.0',NULL,NULL,'7952743486'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-09 17:07:28',57,'EXECUTED','8:2d56697c8723d4592ab608ce14b6ed68','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-09 17:07:37',58,'EXECUTED','8:3e423e249f6068ea2bbe48bf907f9d86','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-06-09 17:07:39',59,'EXECUTED','8:15cabee5e5df0ff099510a0fc03e4103','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-06-09 17:07:39',60,'EXECUTED','8:4b80200af916ac54d2ffbfc47918ab0e','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'7952743486'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-09 17:07:40',61,'EXECUTED','8:66564cd5e168045d52252c5027485bbb','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-09 17:07:40',62,'EXECUTED','8:1c7064fafb030222be2bd16ccf690f6f','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.8.0',NULL,NULL,'7952743486'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-06-09 17:07:40',63,'EXECUTED','8:2de18a0dce10cdda5c7e65c9b719b6e5','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'7952743486'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-06-09 17:07:40',64,'EXECUTED','8:03e413dd182dcbd5c57e41c34d0ef682','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'7952743486'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-09 17:07:40',65,'EXECUTED','8:d27b42bb2571c18fbe3fe4e4fb7582a7','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.8.0',NULL,NULL,'7952743486'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-06-09 17:07:41',66,'EXECUTED','8:698baf84d9fd0027e9192717c2154fb8','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-09 17:07:41',67,'EXECUTED','8:ced8822edf0f75ef26eb51582f9a821a','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.8.0',NULL,NULL,'7952743486'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-06-09 17:07:41',68,'EXECUTED','8:f0abba004cf429e8afc43056df06487d','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7952743486'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-06-09 17:07:41',69,'EXECUTED','8:6662f8b0b611caa359fcf13bf63b4e24','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-06-09 17:07:42',70,'EXECUTED','8:9e6b8009560f684250bdbdf97670d39e','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7952743486'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-06-09 17:07:42',71,'EXECUTED','8:4223f561f3b8dc655846562b57bb502e','addColumn tableName=RESOURCE_SERVER','',NULL,'4.8.0',NULL,NULL,'7952743486'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-09 17:07:42',72,'EXECUTED','8:215a31c398b363ce383a2b301202f29e','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'7952743486'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-09 17:07:42',73,'EXECUTED','8:83f7a671792ca98b3cbd3a1a34862d3d','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'7952743486'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-09 17:07:42',74,'MARK_RAN','8:f58ad148698cf30707a6efbdf8061aa7','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'7952743486'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-09 17:07:44',75,'EXECUTED','8:79e4fd6c6442980e58d52ffc3ee7b19c','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-09 17:07:44',76,'EXECUTED','8:87af6a1e6d241ca4b15801d1f86a297d','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.8.0',NULL,NULL,'7952743486'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-09 17:07:44',77,'EXECUTED','8:b44f8d9b7b6ea455305a6d72a200ed15','addColumn tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'7952743486'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-09 17:07:44',78,'MARK_RAN','8:2d8ed5aaaeffd0cb004c046b4a903ac5','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-09 17:07:48',79,'EXECUTED','8:e290c01fcbc275326c511633f6e2acde','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-09 17:07:48',80,'MARK_RAN','8:c9db8784c33cea210872ac2d805439f8','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-09 17:07:49',81,'EXECUTED','8:95b676ce8fc546a1fcfb4c92fae4add5','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'7952743486'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-09 17:07:49',82,'MARK_RAN','8:38a6b2a41f5651018b1aca93a41401e5','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'7952743486'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-09 17:07:50',83,'EXECUTED','8:3fb99bcad86a0229783123ac52f7609c','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'7952743486'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-09 17:07:50',84,'MARK_RAN','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'7952743486'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-09 17:07:50',85,'EXECUTED','8:ab4f863f39adafd4c862f7ec01890abc','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'7952743486'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-06-09 17:07:50',86,'EXECUTED','8:13c419a0eb336e91ee3a3bf8fda6e2a7','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.8.0',NULL,NULL,'7952743486'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-09 17:07:50',87,'EXECUTED','8:e3fb1e698e0471487f51af1ed80fe3ac','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-09 17:07:51',88,'EXECUTED','8:babadb686aab7b56562817e60bf0abd0','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.8.0',NULL,NULL,'7952743486'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-09 17:07:51',89,'EXECUTED','8:72d03345fda8e2f17093d08801947773','addColumn tableName=REALM; customChange','',NULL,'4.8.0',NULL,NULL,'7952743486'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-09 17:07:51',90,'EXECUTED','8:61c9233951bd96ffecd9ba75f7d978a4','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.8.0',NULL,NULL,'7952743486'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-09 17:07:51',91,'EXECUTED','8:ea82e6ad945cec250af6372767b25525','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'7952743486'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-09 17:07:52',92,'EXECUTED','8:d3f4a33f41d960ddacd7e2ef30d126b3','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-09 17:07:52',93,'MARK_RAN','8:1284a27fbd049d65831cb6fc07c8a783','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'7952743486'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-09 17:07:52',94,'EXECUTED','8:9d11b619db2ae27c25853b8a37cd0dea','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'7952743486'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-09 17:07:52',95,'MARK_RAN','8:3002bb3997451bb9e8bac5c5cd8d6327','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-09 17:07:53',96,'EXECUTED','8:dfbee0d6237a23ef4ccbb7a4e063c163','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'7952743486'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-09 17:07:53',97,'EXECUTED','8:75f3e372df18d38c62734eebb986b960','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'7952743486'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-09 17:07:53',98,'MARK_RAN','8:7fee73eddf84a6035691512c85637eef','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'7952743486'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-09 17:07:53',99,'MARK_RAN','8:7a11134ab12820f999fbf3bb13c3adc8','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'7952743486'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-09 17:07:53',100,'EXECUTED','8:f43dfba07ba249d5d932dc489fd2b886','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'7952743486'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-09 17:07:53',101,'MARK_RAN','8:18186f0008b86e0f0f49b0c4d0e842ac','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'7952743486'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-09 17:07:53',102,'EXECUTED','8:09c2780bcb23b310a7019d217dc7b433','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'7952743486'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-09 17:07:53',103,'EXECUTED','8:276a44955eab693c970a42880197fff2','customChange','',NULL,'4.8.0',NULL,NULL,'7952743486'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-06-09 17:07:54',104,'EXECUTED','8:ba8ee3b694d043f2bfc1a1079d0760d7','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.8.0',NULL,NULL,'7952743486'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-06-09 17:07:54',105,'EXECUTED','8:5e06b1d75f5d17685485e610c2851b17','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'7952743486'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-06-09 17:07:54',106,'EXECUTED','8:4b80546c1dc550ac552ee7b24a4ab7c0','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'7952743486'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-06-09 17:07:54',107,'EXECUTED','8:af510cd1bb2ab6339c45372f3e491696','customChange','',NULL,'4.8.0',NULL,NULL,'7952743486');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,_binary '\0',NULL,NULL),(1000,_binary '\0',NULL,NULL),(1001,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEFAULT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `DEFAULT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEFAULT_CLIENT_SCOPE` (
  `REALM_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`REALM_ID`,`SCOPE_ID`),
  KEY `IDX_DEFCLS_REALM` (`REALM_ID`),
  KEY `IDX_DEFCLS_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_R_DEF_CLI_SCOPE_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEFAULT_CLIENT_SCOPE`
--

LOCK TABLES `DEFAULT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('25c03e82-4734-41ea-bd68-a8ee34cd4499','0746fdb1-ad16-44ac-86c0-453262cf5fd5',_binary ''),('25c03e82-4734-41ea-bd68-a8ee34cd4499','19fb6889-0931-4410-9e5e-6705f85764eb',_binary ''),('25c03e82-4734-41ea-bd68-a8ee34cd4499','1e970533-5333-4846-962e-3b4f31ae3274',_binary ''),('25c03e82-4734-41ea-bd68-a8ee34cd4499','202e722d-0e8f-4ff4-8a1c-fc93df002d73',_binary '\0'),('25c03e82-4734-41ea-bd68-a8ee34cd4499','36c9cef3-88ad-48a0-aa18-d9690067205f',_binary ''),('25c03e82-4734-41ea-bd68-a8ee34cd4499','3ec6e56a-2fa1-4c17-b1fe-0519961ba80d',_binary '\0'),('25c03e82-4734-41ea-bd68-a8ee34cd4499','54393530-6700-42b6-9656-f97954488f79',_binary '\0'),('25c03e82-4734-41ea-bd68-a8ee34cd4499','97011950-4978-407d-b10f-e4ff3ea5f378',_binary ''),('25c03e82-4734-41ea-bd68-a8ee34cd4499','b113fac6-9c7c-40c6-b8b4-182331a16522',_binary '\0'),('25c03e82-4734-41ea-bd68-a8ee34cd4499','db1c60eb-bc53-4b2c-858e-f831f0de282d',_binary ''),('96697988-5ce7-4270-bc20-f580b5e13e24','20f73524-d97d-4ac4-87bc-6617c8a6d6de',_binary '\0'),('96697988-5ce7-4270-bc20-f580b5e13e24','21d8fe26-78eb-4c09-ac35-47d2c7c1faf8',_binary ''),('96697988-5ce7-4270-bc20-f580b5e13e24','249c6acb-850c-4d9a-9c17-b23598561775',_binary '\0'),('96697988-5ce7-4270-bc20-f580b5e13e24','295092be-5320-435f-90a4-a4b6da94d82f',_binary ''),('96697988-5ce7-4270-bc20-f580b5e13e24','459c31dc-2bf3-47f4-ac9c-94e08d48e3e5',_binary ''),('96697988-5ce7-4270-bc20-f580b5e13e24','506f8683-6b73-4722-a49d-a7bde1dde690',_binary ''),('96697988-5ce7-4270-bc20-f580b5e13e24','948dc145-7a16-4e17-8f3f-bca6e5eb9a20',_binary '\0'),('96697988-5ce7-4270-bc20-f580b5e13e24','ad1853de-7aa0-4cf5-ae8d-f60c96d01f28',_binary ''),('96697988-5ce7-4270-bc20-f580b5e13e24','d2e3d744-ee54-4869-984e-f6a7afa8f7f4',_binary ''),('96697988-5ce7-4270-bc20-f580b5e13e24','d9599602-2cee-4ceb-bcf3-0fbac2ac31e6',_binary '\0');
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_ENTITY`
--

DROP TABLE IF EXISTS `EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON` text,
  `ERROR` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `EVENT_TIME` bigint DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_EVENT_TIME` (`REALM_ID`,`EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_ENTITY`
--

LOCK TABLES `EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `EVENT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEDERATED_IDENTITY`
--

DROP TABLE IF EXISTS `FEDERATED_IDENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FEDERATED_IDENTITY` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FEDERATED_USER_ID` varchar(255) DEFAULT NULL,
  `FEDERATED_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  KEY `IDX_FEDIDENTITY_USER` (`USER_ID`),
  KEY `IDX_FEDIDENTITY_FEDUSER` (`FEDERATED_USER_ID`),
  CONSTRAINT `FK404288B92EF007A6` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_IDENTITY`
--

LOCK TABLES `FEDERATED_IDENTITY` WRITE;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEDERATED_USER`
--

DROP TABLE IF EXISTS `FEDERATED_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FEDERATED_USER` (
  `ID` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_USER`
--

LOCK TABLES `FEDERATED_USER` WRITE;
/*!40000 ALTER TABLE `FEDERATED_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `FED_USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` text,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ATTRIBUTE`
--

LOCK TABLES `FED_USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CONSENT`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CONSENT` (`USER_ID`,`CLIENT_ID`),
  KEY `IDX_FU_CONSENT_RU` (`REALM_ID`,`USER_ID`),
  KEY `IDX_FU_CNSNT_EXT` (`USER_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT`
--

LOCK TABLES `FED_USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CONSENT_CL_SCOPE`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT_CL_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_CONSENT_CL_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT_CL_SCOPE`
--

LOCK TABLES `FED_USER_CONSENT_CL_SCOPE` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CREDENTIAL`
--

DROP TABLE IF EXISTS `FED_USER_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob,
  `TYPE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` bigint DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext,
  `CREDENTIAL_DATA` longtext,
  `PRIORITY` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CREDENTIAL` (`USER_ID`,`TYPE`),
  KEY `IDX_FU_CREDENTIAL_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CREDENTIAL`
--

LOCK TABLES `FED_USER_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `FED_USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP` (`USER_ID`,`GROUP_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `FED_USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `FED_USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_REQUIRED_ACTION` (
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_FU_REQUIRED_ACTION` (`USER_ID`,`REQUIRED_ACTION`),
  KEY `IDX_FU_REQUIRED_ACTION_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_REQUIRED_ACTION`
--

LOCK TABLES `FED_USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `FED_USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_FU_ROLE_MAPPING` (`USER_ID`,`ROLE_ID`),
  KEY `IDX_FU_ROLE_MAPPING_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ROLE_MAPPING`
--

LOCK TABLES `FED_USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUP_ATTRIBUTE`
--

DROP TABLE IF EXISTS `GROUP_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GROUP_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_GROUP_ATTR_GROUP` (`GROUP_ID`),
  CONSTRAINT `FK_GROUP_ATTRIBUTE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ATTRIBUTE`
--

LOCK TABLES `GROUP_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUP_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `GROUP_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GROUP_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`GROUP_ID`),
  KEY `IDX_GROUP_ROLE_MAPP_GROUP` (`GROUP_ID`),
  CONSTRAINT `FK_GROUP_ROLE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ROLE_MAPPING`
--

LOCK TABLES `GROUP_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `GROUP_ROLE_MAPPING` VALUES ('e044f971-2f39-48d6-b5e7-82f80cd1c39f','34ad0314-1e5b-4f52-8e59-41d620036f2e'),('664e4754-5e8d-414d-9fbd-6830a6ad6364','75fb639b-a3da-45c6-a6b2-ca838c80f656');
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDENTITY_PROVIDER` (
  `INTERNAL_ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ALIAS` varchar(255) DEFAULT NULL,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `STORE_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `AUTHENTICATE_BY_DEFAULT` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ADD_TOKEN_ROLE` bit(1) NOT NULL DEFAULT b'1',
  `TRUST_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `FIRST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `POST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `LINK_ONLY` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`INTERNAL_ID`),
  UNIQUE KEY `UK_2DAELWNIBJI49AVXSRTUF6XJ33` (`PROVIDER_ALIAS`,`REALM_ID`),
  KEY `IDX_IDENT_PROV_REALM` (`REALM_ID`),
  CONSTRAINT `FK2B4EBC52AE5C3B34` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER`
--

LOCK TABLES `IDENTITY_PROVIDER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER_CONFIG`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDENTITY_PROVIDER_CONFIG` (
  `IDENTITY_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FKDC4897CF864C4E43` FOREIGN KEY (`IDENTITY_PROVIDER_ID`) REFERENCES `IDENTITY_PROVIDER` (`INTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_CONFIG`
--

LOCK TABLES `IDENTITY_PROVIDER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER_MAPPER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDENTITY_PROVIDER_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `IDP_ALIAS` varchar(255) NOT NULL,
  `IDP_MAPPER_NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_PROV_MAPP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_IDPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_MAPPER`
--

LOCK TABLES `IDENTITY_PROVIDER_MAPPER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `IDP_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDP_MAPPER_CONFIG` (
  `IDP_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDP_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_IDPMCONFIG` FOREIGN KEY (`IDP_MAPPER_ID`) REFERENCES `IDENTITY_PROVIDER_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_MAPPER_CONFIG`
--

LOCK TABLES `IDP_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KEYCLOAK_GROUP`
--

DROP TABLE IF EXISTS `KEYCLOAK_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KEYCLOAK_GROUP` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PARENT_GROUP` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SIBLING_NAMES` (`REALM_ID`,`PARENT_GROUP`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_GROUP`
--

LOCK TABLES `KEYCLOAK_GROUP` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` DISABLE KEYS */;
INSERT INTO `KEYCLOAK_GROUP` VALUES ('75fb639b-a3da-45c6-a6b2-ca838c80f656','Admin',' ','25c03e82-4734-41ea-bd68-a8ee34cd4499'),('34ad0314-1e5b-4f52-8e59-41d620036f2e','Investidor',' ','25c03e82-4734-41ea-bd68-a8ee34cd4499');
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KEYCLOAK_ROLE`
--

DROP TABLE IF EXISTS `KEYCLOAK_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KEYCLOAK_ROLE` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_REALM_CONSTRAINT` varchar(255) DEFAULT NULL,
  `CLIENT_ROLE` bit(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `CLIENT` varchar(36) DEFAULT NULL,
  `REALM` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_J3RWUVD56ONTGSUHOGM184WW2-2` (`NAME`,`CLIENT_REALM_CONSTRAINT`),
  KEY `IDX_KEYCLOAK_ROLE_CLIENT` (`CLIENT`),
  KEY `IDX_KEYCLOAK_ROLE_REALM` (`REALM`),
  CONSTRAINT `FK_6VYQFE4CN4WLQ8R6KT5VDSJ5C` FOREIGN KEY (`REALM`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_ROLE`
--

LOCK TABLES `KEYCLOAK_ROLE` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` DISABLE KEYS */;
INSERT INTO `KEYCLOAK_ROLE` VALUES ('000a6f98-6f39-48df-8586-964331b286bc','fbe180b7-31be-4f10-b091-0e06f39aacf3',_binary '','${role_view-profile}','view-profile','96697988-5ce7-4270-bc20-f580b5e13e24','fbe180b7-31be-4f10-b091-0e06f39aacf3',NULL),('0241e018-5287-463e-8c95-cf404aa2a161','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_manage-clients}','manage-clients','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('026bfdce-0f6f-46fd-a8f9-5082b2689046','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_manage-users}','manage-users','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('07112198-0f6f-4240-9a91-4402ed904fde','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_query-clients}','query-clients','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('0867b2b3-837d-4f5c-b39c-f833719bca5e','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_view-realm}','view-realm','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('089bf5f2-1400-4ed8-9db6-b623a0ee2e5d','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_manage-identity-providers}','manage-identity-providers','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('08d591eb-bbcd-4187-bf36-125a6261bf37','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_query-users}','query-users','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('0d743a02-8f7f-467a-9da6-269634e202e3','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '\0','${role_default-roles}','default-roles-master','96697988-5ce7-4270-bc20-f580b5e13e24',NULL,NULL),('15b7c1e4-8952-4a7d-b863-ec1d99eca0bf','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_create-client}','create-client','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('1fd4ec63-7f4f-4a2f-9f44-0e25943ba8d5','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_query-clients}','query-clients','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('2418d9f7-8f67-44aa-a55e-37ac4fc09c1b','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_query-groups}','query-groups','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('24a15942-e14e-4fe6-9b05-9ba27372fe3c','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_query-clients}','query-clients','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('27e3fe95-05d0-4f3e-83f6-447b45706d7f','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_manage-identity-providers}','manage-identity-providers','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('2bbda57d-b441-46ff-a080-7c022154a959','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_view-events}','view-events','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('2c6a402f-6f51-4f54-8361-d540484d07ce','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '\0','${role_offline-access}','offline_access','96697988-5ce7-4270-bc20-f580b5e13e24',NULL,NULL),('3068e03b-474e-4ee4-95c3-049610c62d1f','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_query-realms}','query-realms','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('34771677-495a-46c9-9309-d280d0afddb3','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_view-authorization}','view-authorization','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('3a7ba11b-27da-4c36-8abb-047b47551bf6','fbe180b7-31be-4f10-b091-0e06f39aacf3',_binary '','${role_view-consent}','view-consent','96697988-5ce7-4270-bc20-f580b5e13e24','fbe180b7-31be-4f10-b091-0e06f39aacf3',NULL),('3b5f1e05-176a-42c0-8874-fccbc8421283','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_view-events}','view-events','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('3fa54442-3924-4883-ab06-46fe6ab2c45e','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_manage-events}','manage-events','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('403d7da8-9503-4752-a7de-5964786a8eec','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_view-authorization}','view-authorization','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('446de375-0991-422f-ae40-d028f821c940','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_view-clients}','view-clients','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('4cacba99-3b71-4c8a-bb09-fa6fc8c5d7c1','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_realm-admin}','realm-admin','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('4d637b57-1e36-45f3-9d2a-023d3bba31df','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_view-identity-providers}','view-identity-providers','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('4d8b1cd5-7e0b-4292-aa4d-f12771649bbe','56cbb3c5-ef54-43ac-a482-c06f4c27bf84',_binary '','${role_read-token}','read-token','25c03e82-4734-41ea-bd68-a8ee34cd4499','56cbb3c5-ef54-43ac-a482-c06f4c27bf84',NULL),('4fa96b1c-65e9-41df-86cc-163874b7cfd2','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '\0','${role_offline-access}','offline_access','25c03e82-4734-41ea-bd68-a8ee34cd4499',NULL,NULL),('509fe515-f850-44a2-bd76-b8a53fe89b7e','a36be6e4-2474-4704-99fe-0604858eb58b',_binary '','${role_view-applications}','view-applications','25c03e82-4734-41ea-bd68-a8ee34cd4499','a36be6e4-2474-4704-99fe-0604858eb58b',NULL),('5a016c58-703d-4574-94ad-9ea00fac348c','fbe180b7-31be-4f10-b091-0e06f39aacf3',_binary '','${role_view-applications}','view-applications','96697988-5ce7-4270-bc20-f580b5e13e24','fbe180b7-31be-4f10-b091-0e06f39aacf3',NULL),('5b3ec071-7980-4d99-8e22-6a005a2a2ab4','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_manage-authorization}','manage-authorization','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('5b6e1a16-dd09-4c8e-8799-96586a9bd7f9','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '\0','${role_create-realm}','create-realm','96697988-5ce7-4270-bc20-f580b5e13e24',NULL,NULL),('5fb92a44-88ca-4685-9343-357b0940472f','fbe180b7-31be-4f10-b091-0e06f39aacf3',_binary '','${role_delete-account}','delete-account','96697988-5ce7-4270-bc20-f580b5e13e24','fbe180b7-31be-4f10-b091-0e06f39aacf3',NULL),('664e4754-5e8d-414d-9fbd-6830a6ad6364','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '\0','Admin','Admin','25c03e82-4734-41ea-bd68-a8ee34cd4499',NULL,NULL),('67f7d376-7d3a-4c2a-badb-6cf2f3bc7e96','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_view-users}','view-users','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('6888fa37-8f70-462c-82f5-bed5ae1dafc6','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_manage-authorization}','manage-authorization','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('70eb5eba-edea-45c5-a319-92e7c4dabc70','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_create-client}','create-client','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('747b34a1-095a-4560-b517-8dafd968fc1d','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_view-identity-providers}','view-identity-providers','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('798d1436-8833-48c9-822b-5f005d9cdb80','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_query-groups}','query-groups','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('7d103e5d-e799-4f5a-9a51-df9c9d82b23d','a36be6e4-2474-4704-99fe-0604858eb58b',_binary '','${role_view-consent}','view-consent','25c03e82-4734-41ea-bd68-a8ee34cd4499','a36be6e4-2474-4704-99fe-0604858eb58b',NULL),('7f9e44a2-bab3-4f0f-8a0f-2c89f7836bab','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '\0','${role_uma_authorization}','uma_authorization','25c03e82-4734-41ea-bd68-a8ee34cd4499',NULL,NULL),('88720219-ea22-4a49-9ee6-a665e0ccdfe0','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_view-clients}','view-clients','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('8a917fd8-734b-4afc-aa16-c823499912a3','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_manage-clients}','manage-clients','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('8c5688d4-5706-441f-bace-b42e4409aa57','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_manage-realm}','manage-realm','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('8f8ba036-fe3d-4122-8190-240691661e57','fbe180b7-31be-4f10-b091-0e06f39aacf3',_binary '','${role_manage-account-links}','manage-account-links','96697988-5ce7-4270-bc20-f580b5e13e24','fbe180b7-31be-4f10-b091-0e06f39aacf3',NULL),('8fbc5850-3abd-4c43-ac18-fc5b0b3030fb','a36be6e4-2474-4704-99fe-0604858eb58b',_binary '','${role_delete-account}','delete-account','25c03e82-4734-41ea-bd68-a8ee34cd4499','a36be6e4-2474-4704-99fe-0604858eb58b',NULL),('9555b7d6-fb59-4d3e-aeab-e6293d4aef0b','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_query-realms}','query-realms','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('97938ded-ab6d-4b6a-9ac0-b1cc5c7c3b28','a36be6e4-2474-4704-99fe-0604858eb58b',_binary '','${role_manage-consent}','manage-consent','25c03e82-4734-41ea-bd68-a8ee34cd4499','a36be6e4-2474-4704-99fe-0604858eb58b',NULL),('a0344242-4c6e-4a4f-81c6-b82fb2be5128','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_create-client}','create-client','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('a4913b83-e873-478c-8be7-ef039e7c07b5','a36be6e4-2474-4704-99fe-0604858eb58b',_binary '','${role_manage-account-links}','manage-account-links','25c03e82-4734-41ea-bd68-a8ee34cd4499','a36be6e4-2474-4704-99fe-0604858eb58b',NULL),('acb6b66c-77be-4244-8dfd-6c5b616a3f01','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_view-identity-providers}','view-identity-providers','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '\0','${role_admin}','admin','96697988-5ce7-4270-bc20-f580b5e13e24',NULL,NULL),('b87bf9f9-4791-476e-9cc7-61ded230e3c2','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_view-authorization}','view-authorization','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('ba26c330-b18d-4667-9088-e55d1fcdc1d7','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_query-users}','query-users','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('bc9ed322-c7d5-4631-ae46-f922078db89f','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_query-groups}','query-groups','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('bccee7b6-3542-423b-8964-b1897097a560','a36be6e4-2474-4704-99fe-0604858eb58b',_binary '','${role_manage-account}','manage-account','25c03e82-4734-41ea-bd68-a8ee34cd4499','a36be6e4-2474-4704-99fe-0604858eb58b',NULL),('c8335ad3-20db-4fcf-8dad-bcee91789907','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_impersonation}','impersonation','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('ca701d2c-d044-4603-a4a1-822867f04cf7','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_manage-authorization}','manage-authorization','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('cbb6b112-6583-4543-9c19-1ea431fccce5','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_view-realm}','view-realm','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('cd07dc38-1c1d-4612-ac00-558601590eae','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_manage-events}','manage-events','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('d0a4c3af-4a75-4404-bf0d-4e41b3ba16a4','a36be6e4-2474-4704-99fe-0604858eb58b',_binary '','${role_view-profile}','view-profile','25c03e82-4734-41ea-bd68-a8ee34cd4499','a36be6e4-2474-4704-99fe-0604858eb58b',NULL),('d0b7aac5-5aab-445c-b4cc-02fb8cc313bb','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_manage-users}','manage-users','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('d2aa49d3-325f-4771-b782-67f6fdc4d253','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '\0','${role_default-roles}','default-roles-xp','25c03e82-4734-41ea-bd68-a8ee34cd4499',NULL,NULL),('d34ab21c-07d2-4a8f-b864-6ef1a4be75e0','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_impersonation}','impersonation','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('d56ca15a-b30d-401c-b957-ba7275d50611','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_manage-realm}','manage-realm','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('d58fea45-abac-4347-9bac-f602bf2ce340','fbe180b7-31be-4f10-b091-0e06f39aacf3',_binary '','${role_manage-consent}','manage-consent','96697988-5ce7-4270-bc20-f580b5e13e24','fbe180b7-31be-4f10-b091-0e06f39aacf3',NULL),('d6e5cd5c-2fc1-4473-88b8-4091c51ae259','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_query-users}','query-users','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('d91fc653-ab3a-46cd-869f-60eab72c12ce','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_manage-realm}','manage-realm','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('dbec4bd3-3be5-41d9-a9f6-9c8150ccbb76','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '\0','${role_uma_authorization}','uma_authorization','96697988-5ce7-4270-bc20-f580b5e13e24',NULL,NULL),('dbf0db89-5452-4dc2-aa7f-ac5b0d306806','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_impersonation}','impersonation','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('dd9949fd-1b4b-49d1-bc98-ac913d691191','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_manage-identity-providers}','manage-identity-providers','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('e044f971-2f39-48d6-b5e7-82f80cd1c39f','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '\0','Investidor','Investidor','25c03e82-4734-41ea-bd68-a8ee34cd4499',NULL,NULL),('e055cba3-0d58-4a91-8734-1c5dd2146532','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_view-users}','view-users','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('e0979c73-21f0-49d8-8ea8-0d2bfe74c0fb','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_manage-clients}','manage-clients','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('e097e925-74ea-4c17-896a-b2389ad5a6bf','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_view-clients}','view-clients','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('e575c810-4f99-4b86-8883-3c4494f9e279','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_view-users}','view-users','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('e79caeb7-f736-4c7b-a77d-87e2452ca96d','b6427fda-c6c9-4ad2-ad49-0277af0d4981',_binary '','${role_read-token}','read-token','96697988-5ce7-4270-bc20-f580b5e13e24','b6427fda-c6c9-4ad2-ad49-0277af0d4981',NULL),('e99c4dd4-62d3-4deb-8faf-98b255e4cc50','6019d55d-58f6-4833-aa73-88bec3f105c5',_binary '','${role_manage-users}','manage-users','25c03e82-4734-41ea-bd68-a8ee34cd4499','6019d55d-58f6-4833-aa73-88bec3f105c5',NULL),('e9bd79bb-88b3-4643-8f8f-607d95fe17de','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_view-realm}','view-realm','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('f11ca8af-b237-40fa-a4e4-35ea70a97aec','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_manage-events}','manage-events','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL),('f4ff3b53-04c5-4732-8f18-7a4a4e13a74d','fbe180b7-31be-4f10-b091-0e06f39aacf3',_binary '','${role_manage-account}','manage-account','96697988-5ce7-4270-bc20-f580b5e13e24','fbe180b7-31be-4f10-b091-0e06f39aacf3',NULL),('f93b2b28-5c8b-4a05-a2f0-116b14be082c','0a1c55bd-8451-4807-aa9c-51ff150c2556',_binary '','${role_view-events}','view-events','96697988-5ce7-4270-bc20-f580b5e13e24','0a1c55bd-8451-4807-aa9c-51ff150c2556',NULL),('fb1a6124-61df-4925-a4cd-5907261673ae','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',_binary '','${role_query-realms}','query-realms','96697988-5ce7-4270-bc20-f580b5e13e24','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',NULL);
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MIGRATION_MODEL`
--

DROP TABLE IF EXISTS `MIGRATION_MODEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MIGRATION_MODEL` (
  `ID` varchar(36) NOT NULL,
  `VERSION` varchar(36) DEFAULT NULL,
  `UPDATE_TIME` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IDX_UPDATE_TIME` (`UPDATE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
/*!40000 ALTER TABLE `MIGRATION_MODEL` DISABLE KEYS */;
INSERT INTO `MIGRATION_MODEL` VALUES ('ko1d1','19.0.3',1717952877);
/*!40000 ALTER TABLE `MIGRATION_MODEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_CLIENT_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFLINE_CLIENT_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `TIMESTAMP` int DEFAULT NULL,
  `DATA` longtext,
  `CLIENT_STORAGE_PROVIDER` varchar(36) NOT NULL DEFAULT 'local',
  `EXTERNAL_CLIENT_ID` varchar(255) NOT NULL DEFAULT 'local',
  PRIMARY KEY (`USER_SESSION_ID`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`),
  KEY `IDX_US_SESS_ID_ON_CL_SESS` (`USER_SESSION_ID`),
  KEY `IDX_OFFLINE_CSS_PRELOAD` (`CLIENT_ID`,`OFFLINE_FLAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_CLIENT_SESSION`
--

LOCK TABLES `OFFLINE_CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_USER_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFLINE_USER_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `CREATED_ON` int NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `DATA` longtext,
  `LAST_SESSION_REFRESH` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`USER_SESSION_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_CREATEDON` (`CREATED_ON`),
  KEY `IDX_OFFLINE_USS_PRELOAD` (`OFFLINE_FLAG`,`CREATED_ON`,`USER_SESSION_ID`),
  KEY `IDX_OFFLINE_USS_BY_USER` (`USER_ID`,`REALM_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_BY_USERSESS` (`REALM_ID`,`OFFLINE_FLAG`,`USER_SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_USER_SESSION`
--

LOCK TABLES `OFFLINE_USER_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POLICY_CONFIG`
--

DROP TABLE IF EXISTS `POLICY_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `POLICY_CONFIG` (
  `POLICY_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext,
  PRIMARY KEY (`POLICY_ID`,`NAME`),
  CONSTRAINT `FKDC34197CF864C4E43` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POLICY_CONFIG`
--

LOCK TABLES `POLICY_CONFIG` WRITE;
/*!40000 ALTER TABLE `POLICY_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `POLICY_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROTOCOL_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PROTOCOL` varchar(255) NOT NULL,
  `PROTOCOL_MAPPER_NAME` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PROTOCOL_MAPPER_CLIENT` (`CLIENT_ID`),
  KEY `IDX_CLSCOPE_PROTMAP` (`CLIENT_SCOPE_ID`),
  CONSTRAINT `FK_CLI_SCOPE_MAPPER` FOREIGN KEY (`CLIENT_SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`),
  CONSTRAINT `FK_PCM_REALM` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER`
--

LOCK TABLES `PROTOCOL_MAPPER` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER` VALUES ('0288b761-ee75-4fad-8411-cc6a0c76be3c','audience resolve','openid-connect','oidc-audience-resolve-mapper','efe19254-277d-4e31-b445-26e63bf5c78d',NULL),('038a94fb-54ae-4226-b57e-f80697075247','audience resolve','openid-connect','oidc-audience-resolve-mapper','800c5bdd-25fd-401d-a83b-71b5d34c047a',NULL),('0f23d514-ac06-4e53-a85f-24ca97f12c44','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('0fa2a379-3cec-4218-9321-a854638808b2','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('11e13474-7abb-41fc-83e4-769c79cd0f53','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'295092be-5320-435f-90a4-a4b6da94d82f'),('12c739f1-7064-4332-b6de-c62dd370af9d','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('15c795ee-27cd-4a23-90ac-9065038d6a95','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'202e722d-0e8f-4ff4-8a1c-fc93df002d73'),('180cc5d6-3ef2-4b07-8fa2-34424860aa40','realm roles','openid-connect','oidc-usermodel-realm-role-mapper','f3c4f051-c802-49ce-8c91-f35cd80976f3',NULL),('19d0ed43-56dd-40d8-b690-297adcc9ff6b','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'506f8683-6b73-4722-a49d-a7bde1dde690'),('1aa9d7fe-ba3a-461e-b40a-f232e9b89309','address','openid-connect','oidc-address-mapper',NULL,'948dc145-7a16-4e17-8f3f-bca6e5eb9a20'),('1dddc160-d8dd-439f-90df-7483fe6110fc','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('1dff5064-6c7b-4676-9647-00b6a252df1b','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('217417ee-6264-453e-9b29-13a9427e09ad','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('2223180a-a8be-4bef-a61e-977fb64814ce','email','openid-connect','oidc-usermodel-property-mapper',NULL,'1e970533-5333-4846-962e-3b4f31ae3274'),('295b5910-dcf3-40b0-9d00-c22b1b52401c','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'54393530-6700-42b6-9656-f97954488f79'),('3891854e-565f-46d2-a77b-9e0c54ec1ea1','address','openid-connect','oidc-address-mapper',NULL,'b113fac6-9c7c-40c6-b8b4-182331a16522'),('39b457c3-28d2-42c1-b109-9b791912b371','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('39b50503-c545-48a2-aa16-ab44ccf61c04','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('3b70e36b-b594-4a39-9490-a4edaeabde7b','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'d2e3d744-ee54-4869-984e-f6a7afa8f7f4'),('4112751b-092d-4999-a4d7-e28fe734bf02','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'54393530-6700-42b6-9656-f97954488f79'),('476ac0c8-efb7-403e-becd-8a088a88aeaa','role list','saml','saml-role-list-mapper',NULL,'36c9cef3-88ad-48a0-aa18-d9690067205f'),('48634fb8-6ace-4249-95f8-6848fca6363b','acr loa level','openid-connect','oidc-acr-mapper',NULL,'db1c60eb-bc53-4b2c-858e-f831f0de282d'),('4e87cbea-0524-4a1f-91b4-0e8a0844ccd5','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'19fb6889-0931-4410-9e5e-6705f85764eb'),('4eb39580-58e3-4d93-afd2-2acfb3f68a61','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('4f4a72d4-90d3-4ad9-8009-8e1df29774d9','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('50fd65b6-f5c5-4645-b6fe-93e5f8fbc3fb','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('5ba0b437-0d96-413c-8edf-a7112bdf7864','locale','openid-connect','oidc-usermodel-attribute-mapper','52a6015c-275b-484f-8fd2-a2a852da7c64',NULL),('5d9f729c-e0a7-4118-81db-bd691249a184','realm roles','openid-connect','oidc-usermodel-realm-role-mapper','2e363527-f696-4cd6-b2d5-a18e7705cb07',NULL),('5e830395-f858-4983-8128-b972c004bb84','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'20f73524-d97d-4ac4-87bc-6617c8a6d6de'),('5f7c4515-e5cf-4574-9ed2-0ae559f90c33','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'249c6acb-850c-4d9a-9c17-b23598561775'),('61f5dd2b-d10e-4c87-88e5-dcb813e11c17','full name','openid-connect','oidc-full-name-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('64ddb62e-bd19-4cc8-9099-c3d4a6065d2b','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'97011950-4978-407d-b10f-e4ff3ea5f378'),('653edd66-d484-44ad-b686-4e1c407c8ac9','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('6f08b734-f97a-4cb9-b119-7b9b8f61bcae','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('753e10b0-97f0-4930-b652-1f19e25ef2b4','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('7629c47d-f85c-4ce5-8bba-58173c332b8b','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('82f67d1d-566e-463a-8d22-99b4139db292','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('8c540af1-36f1-41e5-abc4-4d274369c57f','locale','openid-connect','oidc-usermodel-attribute-mapper','536cdb3b-4189-4bc2-954f-ae3625c8eb4d',NULL),('8d2c931f-695f-4c8b-97f2-91de68cda2ea','acr loa level','openid-connect','oidc-acr-mapper',NULL,'459c31dc-2bf3-47f4-ac9c-94e08d48e3e5'),('913af361-0968-4b86-bb83-e7e170e40f44','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'20f73524-d97d-4ac4-87bc-6617c8a6d6de'),('9185a2af-b385-4241-81ea-5e0e3aa58a8c','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'506f8683-6b73-4722-a49d-a7bde1dde690'),('9ab31fdc-6ded-4d45-a9c2-766be91946da','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('a97d45a1-b0a4-48d5-8a83-0654d4c564c1','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('a9d99849-0894-409f-9ab4-4f2dfa6ca343','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'97011950-4978-407d-b10f-e4ff3ea5f378'),('aa19a89e-8619-48db-b27a-89a94187ae34','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'506f8683-6b73-4722-a49d-a7bde1dde690'),('b3e338ef-ff7b-4d1e-8382-da143561d832','role list','saml','saml-role-list-mapper',NULL,'ad1853de-7aa0-4cf5-ae8d-f60c96d01f28'),('b4a0824c-4915-45f2-b80b-616faafa6f3f','full name','openid-connect','oidc-full-name-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('c3ee0c32-43a2-478d-a32c-787955e6f9ad','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('c468bf1b-d3fb-4f34-b3ba-e5266a752e1d','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'202e722d-0e8f-4ff4-8a1c-fc93df002d73'),('c99c523f-2f61-4951-91b9-7be951646df8','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'249c6acb-850c-4d9a-9c17-b23598561775'),('ce1e313e-ab77-45d8-bd1f-7df33c20bfac','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('d2be7bba-d911-4ed0-8397-3acef41bfd93','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('d50beb83-7a8d-4ed9-af74-dfbdeada7222','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('da10707a-8ee0-4e91-b315-268504885a52','username','openid-connect','oidc-usermodel-property-mapper',NULL,'21d8fe26-78eb-4c09-ac35-47d2c7c1faf8'),('dafa2c80-852e-466a-b85d-c1d4aeecb288','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'97011950-4978-407d-b10f-e4ff3ea5f378'),('dde21fb0-aff6-4dc5-87d4-1d07f1094aed','email','openid-connect','oidc-usermodel-property-mapper',NULL,'295092be-5320-435f-90a4-a4b6da94d82f'),('eef65c8c-f727-42d3-88fe-5010ed307d2e','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('f27945c3-8518-405e-8e1e-ab8a79495f23','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5'),('f41607bd-184d-4ce8-82e8-6093282a4fc9','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'1e970533-5333-4846-962e-3b4f31ae3274'),('ff766187-b5fb-443c-8325-dc96a8064b00','username','openid-connect','oidc-usermodel-property-mapper',NULL,'0746fdb1-ad16-44ac-86c0-453262cf5fd5');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROTOCOL_MAPPER_CONFIG` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PROTOCOL_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_PMCONFIG` FOREIGN KEY (`PROTOCOL_MAPPER_ID`) REFERENCES `PROTOCOL_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('0f23d514-ac06-4e53-a85f-24ca97f12c44','true','access.token.claim'),('0f23d514-ac06-4e53-a85f-24ca97f12c44','website','claim.name'),('0f23d514-ac06-4e53-a85f-24ca97f12c44','true','id.token.claim'),('0f23d514-ac06-4e53-a85f-24ca97f12c44','String','jsonType.label'),('0f23d514-ac06-4e53-a85f-24ca97f12c44','website','user.attribute'),('0f23d514-ac06-4e53-a85f-24ca97f12c44','true','userinfo.token.claim'),('0fa2a379-3cec-4218-9321-a854638808b2','true','access.token.claim'),('0fa2a379-3cec-4218-9321-a854638808b2','locale','claim.name'),('0fa2a379-3cec-4218-9321-a854638808b2','true','id.token.claim'),('0fa2a379-3cec-4218-9321-a854638808b2','String','jsonType.label'),('0fa2a379-3cec-4218-9321-a854638808b2','locale','user.attribute'),('0fa2a379-3cec-4218-9321-a854638808b2','true','userinfo.token.claim'),('11e13474-7abb-41fc-83e4-769c79cd0f53','true','access.token.claim'),('11e13474-7abb-41fc-83e4-769c79cd0f53','email_verified','claim.name'),('11e13474-7abb-41fc-83e4-769c79cd0f53','true','id.token.claim'),('11e13474-7abb-41fc-83e4-769c79cd0f53','boolean','jsonType.label'),('11e13474-7abb-41fc-83e4-769c79cd0f53','emailVerified','user.attribute'),('11e13474-7abb-41fc-83e4-769c79cd0f53','true','userinfo.token.claim'),('12c739f1-7064-4332-b6de-c62dd370af9d','true','access.token.claim'),('12c739f1-7064-4332-b6de-c62dd370af9d','birthdate','claim.name'),('12c739f1-7064-4332-b6de-c62dd370af9d','true','id.token.claim'),('12c739f1-7064-4332-b6de-c62dd370af9d','String','jsonType.label'),('12c739f1-7064-4332-b6de-c62dd370af9d','birthdate','user.attribute'),('12c739f1-7064-4332-b6de-c62dd370af9d','true','userinfo.token.claim'),('15c795ee-27cd-4a23-90ac-9065038d6a95','true','access.token.claim'),('15c795ee-27cd-4a23-90ac-9065038d6a95','upn','claim.name'),('15c795ee-27cd-4a23-90ac-9065038d6a95','true','id.token.claim'),('15c795ee-27cd-4a23-90ac-9065038d6a95','String','jsonType.label'),('15c795ee-27cd-4a23-90ac-9065038d6a95','username','user.attribute'),('15c795ee-27cd-4a23-90ac-9065038d6a95','true','userinfo.token.claim'),('180cc5d6-3ef2-4b07-8fa2-34424860aa40','true','access.token.claim'),('180cc5d6-3ef2-4b07-8fa2-34424860aa40','realm_access.roles','claim.name'),('180cc5d6-3ef2-4b07-8fa2-34424860aa40','true','id.token.claim'),('180cc5d6-3ef2-4b07-8fa2-34424860aa40','String','jsonType.label'),('180cc5d6-3ef2-4b07-8fa2-34424860aa40','true','multivalued'),('180cc5d6-3ef2-4b07-8fa2-34424860aa40','true','userinfo.token.claim'),('19d0ed43-56dd-40d8-b690-297adcc9ff6b','true','access.token.claim'),('19d0ed43-56dd-40d8-b690-297adcc9ff6b','realm_access.roles','claim.name'),('19d0ed43-56dd-40d8-b690-297adcc9ff6b','String','jsonType.label'),('19d0ed43-56dd-40d8-b690-297adcc9ff6b','true','multivalued'),('19d0ed43-56dd-40d8-b690-297adcc9ff6b','foo','user.attribute'),('1aa9d7fe-ba3a-461e-b40a-f232e9b89309','true','access.token.claim'),('1aa9d7fe-ba3a-461e-b40a-f232e9b89309','true','id.token.claim'),('1aa9d7fe-ba3a-461e-b40a-f232e9b89309','country','user.attribute.country'),('1aa9d7fe-ba3a-461e-b40a-f232e9b89309','formatted','user.attribute.formatted'),('1aa9d7fe-ba3a-461e-b40a-f232e9b89309','locality','user.attribute.locality'),('1aa9d7fe-ba3a-461e-b40a-f232e9b89309','postal_code','user.attribute.postal_code'),('1aa9d7fe-ba3a-461e-b40a-f232e9b89309','region','user.attribute.region'),('1aa9d7fe-ba3a-461e-b40a-f232e9b89309','street','user.attribute.street'),('1aa9d7fe-ba3a-461e-b40a-f232e9b89309','true','userinfo.token.claim'),('1dddc160-d8dd-439f-90df-7483fe6110fc','true','access.token.claim'),('1dddc160-d8dd-439f-90df-7483fe6110fc','updated_at','claim.name'),('1dddc160-d8dd-439f-90df-7483fe6110fc','true','id.token.claim'),('1dddc160-d8dd-439f-90df-7483fe6110fc','long','jsonType.label'),('1dddc160-d8dd-439f-90df-7483fe6110fc','updatedAt','user.attribute'),('1dddc160-d8dd-439f-90df-7483fe6110fc','true','userinfo.token.claim'),('1dff5064-6c7b-4676-9647-00b6a252df1b','true','access.token.claim'),('1dff5064-6c7b-4676-9647-00b6a252df1b','nickname','claim.name'),('1dff5064-6c7b-4676-9647-00b6a252df1b','true','id.token.claim'),('1dff5064-6c7b-4676-9647-00b6a252df1b','String','jsonType.label'),('1dff5064-6c7b-4676-9647-00b6a252df1b','nickname','user.attribute'),('1dff5064-6c7b-4676-9647-00b6a252df1b','true','userinfo.token.claim'),('217417ee-6264-453e-9b29-13a9427e09ad','true','access.token.claim'),('217417ee-6264-453e-9b29-13a9427e09ad','locale','claim.name'),('217417ee-6264-453e-9b29-13a9427e09ad','true','id.token.claim'),('217417ee-6264-453e-9b29-13a9427e09ad','String','jsonType.label'),('217417ee-6264-453e-9b29-13a9427e09ad','locale','user.attribute'),('217417ee-6264-453e-9b29-13a9427e09ad','true','userinfo.token.claim'),('2223180a-a8be-4bef-a61e-977fb64814ce','true','access.token.claim'),('2223180a-a8be-4bef-a61e-977fb64814ce','email','claim.name'),('2223180a-a8be-4bef-a61e-977fb64814ce','true','id.token.claim'),('2223180a-a8be-4bef-a61e-977fb64814ce','String','jsonType.label'),('2223180a-a8be-4bef-a61e-977fb64814ce','email','user.attribute'),('2223180a-a8be-4bef-a61e-977fb64814ce','true','userinfo.token.claim'),('295b5910-dcf3-40b0-9d00-c22b1b52401c','true','access.token.claim'),('295b5910-dcf3-40b0-9d00-c22b1b52401c','phone_number_verified','claim.name'),('295b5910-dcf3-40b0-9d00-c22b1b52401c','true','id.token.claim'),('295b5910-dcf3-40b0-9d00-c22b1b52401c','boolean','jsonType.label'),('295b5910-dcf3-40b0-9d00-c22b1b52401c','phoneNumberVerified','user.attribute'),('295b5910-dcf3-40b0-9d00-c22b1b52401c','true','userinfo.token.claim'),('3891854e-565f-46d2-a77b-9e0c54ec1ea1','true','access.token.claim'),('3891854e-565f-46d2-a77b-9e0c54ec1ea1','true','id.token.claim'),('3891854e-565f-46d2-a77b-9e0c54ec1ea1','country','user.attribute.country'),('3891854e-565f-46d2-a77b-9e0c54ec1ea1','formatted','user.attribute.formatted'),('3891854e-565f-46d2-a77b-9e0c54ec1ea1','locality','user.attribute.locality'),('3891854e-565f-46d2-a77b-9e0c54ec1ea1','postal_code','user.attribute.postal_code'),('3891854e-565f-46d2-a77b-9e0c54ec1ea1','region','user.attribute.region'),('3891854e-565f-46d2-a77b-9e0c54ec1ea1','street','user.attribute.street'),('3891854e-565f-46d2-a77b-9e0c54ec1ea1','true','userinfo.token.claim'),('39b457c3-28d2-42c1-b109-9b791912b371','true','access.token.claim'),('39b457c3-28d2-42c1-b109-9b791912b371','family_name','claim.name'),('39b457c3-28d2-42c1-b109-9b791912b371','true','id.token.claim'),('39b457c3-28d2-42c1-b109-9b791912b371','String','jsonType.label'),('39b457c3-28d2-42c1-b109-9b791912b371','lastName','user.attribute'),('39b457c3-28d2-42c1-b109-9b791912b371','true','userinfo.token.claim'),('39b50503-c545-48a2-aa16-ab44ccf61c04','true','access.token.claim'),('39b50503-c545-48a2-aa16-ab44ccf61c04','given_name','claim.name'),('39b50503-c545-48a2-aa16-ab44ccf61c04','true','id.token.claim'),('39b50503-c545-48a2-aa16-ab44ccf61c04','String','jsonType.label'),('39b50503-c545-48a2-aa16-ab44ccf61c04','firstName','user.attribute'),('39b50503-c545-48a2-aa16-ab44ccf61c04','true','userinfo.token.claim'),('4112751b-092d-4999-a4d7-e28fe734bf02','true','access.token.claim'),('4112751b-092d-4999-a4d7-e28fe734bf02','phone_number','claim.name'),('4112751b-092d-4999-a4d7-e28fe734bf02','true','id.token.claim'),('4112751b-092d-4999-a4d7-e28fe734bf02','String','jsonType.label'),('4112751b-092d-4999-a4d7-e28fe734bf02','phoneNumber','user.attribute'),('4112751b-092d-4999-a4d7-e28fe734bf02','true','userinfo.token.claim'),('476ac0c8-efb7-403e-becd-8a088a88aeaa','Role','attribute.name'),('476ac0c8-efb7-403e-becd-8a088a88aeaa','Basic','attribute.nameformat'),('476ac0c8-efb7-403e-becd-8a088a88aeaa','false','single'),('48634fb8-6ace-4249-95f8-6848fca6363b','true','access.token.claim'),('48634fb8-6ace-4249-95f8-6848fca6363b','true','id.token.claim'),('4eb39580-58e3-4d93-afd2-2acfb3f68a61','true','access.token.claim'),('4eb39580-58e3-4d93-afd2-2acfb3f68a61','updated_at','claim.name'),('4eb39580-58e3-4d93-afd2-2acfb3f68a61','true','id.token.claim'),('4eb39580-58e3-4d93-afd2-2acfb3f68a61','long','jsonType.label'),('4eb39580-58e3-4d93-afd2-2acfb3f68a61','updatedAt','user.attribute'),('4eb39580-58e3-4d93-afd2-2acfb3f68a61','true','userinfo.token.claim'),('4f4a72d4-90d3-4ad9-8009-8e1df29774d9','true','access.token.claim'),('4f4a72d4-90d3-4ad9-8009-8e1df29774d9','profile','claim.name'),('4f4a72d4-90d3-4ad9-8009-8e1df29774d9','true','id.token.claim'),('4f4a72d4-90d3-4ad9-8009-8e1df29774d9','String','jsonType.label'),('4f4a72d4-90d3-4ad9-8009-8e1df29774d9','profile','user.attribute'),('4f4a72d4-90d3-4ad9-8009-8e1df29774d9','true','userinfo.token.claim'),('50fd65b6-f5c5-4645-b6fe-93e5f8fbc3fb','true','access.token.claim'),('50fd65b6-f5c5-4645-b6fe-93e5f8fbc3fb','middle_name','claim.name'),('50fd65b6-f5c5-4645-b6fe-93e5f8fbc3fb','true','id.token.claim'),('50fd65b6-f5c5-4645-b6fe-93e5f8fbc3fb','String','jsonType.label'),('50fd65b6-f5c5-4645-b6fe-93e5f8fbc3fb','middleName','user.attribute'),('50fd65b6-f5c5-4645-b6fe-93e5f8fbc3fb','true','userinfo.token.claim'),('5ba0b437-0d96-413c-8edf-a7112bdf7864','true','access.token.claim'),('5ba0b437-0d96-413c-8edf-a7112bdf7864','locale','claim.name'),('5ba0b437-0d96-413c-8edf-a7112bdf7864','true','id.token.claim'),('5ba0b437-0d96-413c-8edf-a7112bdf7864','String','jsonType.label'),('5ba0b437-0d96-413c-8edf-a7112bdf7864','locale','user.attribute'),('5ba0b437-0d96-413c-8edf-a7112bdf7864','true','userinfo.token.claim'),('5d9f729c-e0a7-4118-81db-bd691249a184','true','access.token.claim'),('5d9f729c-e0a7-4118-81db-bd691249a184','realm_access.roles','claim.name'),('5d9f729c-e0a7-4118-81db-bd691249a184','String','jsonType.label'),('5d9f729c-e0a7-4118-81db-bd691249a184','true','multivalued'),('5d9f729c-e0a7-4118-81db-bd691249a184','foo','user.attribute'),('5e830395-f858-4983-8128-b972c004bb84','true','access.token.claim'),('5e830395-f858-4983-8128-b972c004bb84','upn','claim.name'),('5e830395-f858-4983-8128-b972c004bb84','true','id.token.claim'),('5e830395-f858-4983-8128-b972c004bb84','String','jsonType.label'),('5e830395-f858-4983-8128-b972c004bb84','username','user.attribute'),('5e830395-f858-4983-8128-b972c004bb84','true','userinfo.token.claim'),('5f7c4515-e5cf-4574-9ed2-0ae559f90c33','true','access.token.claim'),('5f7c4515-e5cf-4574-9ed2-0ae559f90c33','phone_number','claim.name'),('5f7c4515-e5cf-4574-9ed2-0ae559f90c33','true','id.token.claim'),('5f7c4515-e5cf-4574-9ed2-0ae559f90c33','String','jsonType.label'),('5f7c4515-e5cf-4574-9ed2-0ae559f90c33','phoneNumber','user.attribute'),('5f7c4515-e5cf-4574-9ed2-0ae559f90c33','true','userinfo.token.claim'),('61f5dd2b-d10e-4c87-88e5-dcb813e11c17','true','access.token.claim'),('61f5dd2b-d10e-4c87-88e5-dcb813e11c17','true','id.token.claim'),('61f5dd2b-d10e-4c87-88e5-dcb813e11c17','true','userinfo.token.claim'),('64ddb62e-bd19-4cc8-9099-c3d4a6065d2b','true','access.token.claim'),('64ddb62e-bd19-4cc8-9099-c3d4a6065d2b','resource_access.${client_id}.roles','claim.name'),('64ddb62e-bd19-4cc8-9099-c3d4a6065d2b','String','jsonType.label'),('64ddb62e-bd19-4cc8-9099-c3d4a6065d2b','true','multivalued'),('64ddb62e-bd19-4cc8-9099-c3d4a6065d2b','foo','user.attribute'),('653edd66-d484-44ad-b686-4e1c407c8ac9','true','access.token.claim'),('653edd66-d484-44ad-b686-4e1c407c8ac9','website','claim.name'),('653edd66-d484-44ad-b686-4e1c407c8ac9','true','id.token.claim'),('653edd66-d484-44ad-b686-4e1c407c8ac9','String','jsonType.label'),('653edd66-d484-44ad-b686-4e1c407c8ac9','website','user.attribute'),('653edd66-d484-44ad-b686-4e1c407c8ac9','true','userinfo.token.claim'),('6f08b734-f97a-4cb9-b119-7b9b8f61bcae','true','access.token.claim'),('6f08b734-f97a-4cb9-b119-7b9b8f61bcae','picture','claim.name'),('6f08b734-f97a-4cb9-b119-7b9b8f61bcae','true','id.token.claim'),('6f08b734-f97a-4cb9-b119-7b9b8f61bcae','String','jsonType.label'),('6f08b734-f97a-4cb9-b119-7b9b8f61bcae','picture','user.attribute'),('6f08b734-f97a-4cb9-b119-7b9b8f61bcae','true','userinfo.token.claim'),('753e10b0-97f0-4930-b652-1f19e25ef2b4','true','access.token.claim'),('753e10b0-97f0-4930-b652-1f19e25ef2b4','birthdate','claim.name'),('753e10b0-97f0-4930-b652-1f19e25ef2b4','true','id.token.claim'),('753e10b0-97f0-4930-b652-1f19e25ef2b4','String','jsonType.label'),('753e10b0-97f0-4930-b652-1f19e25ef2b4','birthdate','user.attribute'),('753e10b0-97f0-4930-b652-1f19e25ef2b4','true','userinfo.token.claim'),('7629c47d-f85c-4ce5-8bba-58173c332b8b','true','access.token.claim'),('7629c47d-f85c-4ce5-8bba-58173c332b8b','middle_name','claim.name'),('7629c47d-f85c-4ce5-8bba-58173c332b8b','true','id.token.claim'),('7629c47d-f85c-4ce5-8bba-58173c332b8b','String','jsonType.label'),('7629c47d-f85c-4ce5-8bba-58173c332b8b','middleName','user.attribute'),('7629c47d-f85c-4ce5-8bba-58173c332b8b','true','userinfo.token.claim'),('82f67d1d-566e-463a-8d22-99b4139db292','true','access.token.claim'),('82f67d1d-566e-463a-8d22-99b4139db292','zoneinfo','claim.name'),('82f67d1d-566e-463a-8d22-99b4139db292','true','id.token.claim'),('82f67d1d-566e-463a-8d22-99b4139db292','String','jsonType.label'),('82f67d1d-566e-463a-8d22-99b4139db292','zoneinfo','user.attribute'),('82f67d1d-566e-463a-8d22-99b4139db292','true','userinfo.token.claim'),('8c540af1-36f1-41e5-abc4-4d274369c57f','true','access.token.claim'),('8c540af1-36f1-41e5-abc4-4d274369c57f','locale','claim.name'),('8c540af1-36f1-41e5-abc4-4d274369c57f','true','id.token.claim'),('8c540af1-36f1-41e5-abc4-4d274369c57f','String','jsonType.label'),('8c540af1-36f1-41e5-abc4-4d274369c57f','locale','user.attribute'),('8c540af1-36f1-41e5-abc4-4d274369c57f','true','userinfo.token.claim'),('8d2c931f-695f-4c8b-97f2-91de68cda2ea','true','access.token.claim'),('8d2c931f-695f-4c8b-97f2-91de68cda2ea','true','id.token.claim'),('913af361-0968-4b86-bb83-e7e170e40f44','true','access.token.claim'),('913af361-0968-4b86-bb83-e7e170e40f44','groups','claim.name'),('913af361-0968-4b86-bb83-e7e170e40f44','true','id.token.claim'),('913af361-0968-4b86-bb83-e7e170e40f44','String','jsonType.label'),('913af361-0968-4b86-bb83-e7e170e40f44','true','multivalued'),('913af361-0968-4b86-bb83-e7e170e40f44','foo','user.attribute'),('9ab31fdc-6ded-4d45-a9c2-766be91946da','true','access.token.claim'),('9ab31fdc-6ded-4d45-a9c2-766be91946da','zoneinfo','claim.name'),('9ab31fdc-6ded-4d45-a9c2-766be91946da','true','id.token.claim'),('9ab31fdc-6ded-4d45-a9c2-766be91946da','String','jsonType.label'),('9ab31fdc-6ded-4d45-a9c2-766be91946da','zoneinfo','user.attribute'),('9ab31fdc-6ded-4d45-a9c2-766be91946da','true','userinfo.token.claim'),('a97d45a1-b0a4-48d5-8a83-0654d4c564c1','true','access.token.claim'),('a97d45a1-b0a4-48d5-8a83-0654d4c564c1','given_name','claim.name'),('a97d45a1-b0a4-48d5-8a83-0654d4c564c1','true','id.token.claim'),('a97d45a1-b0a4-48d5-8a83-0654d4c564c1','String','jsonType.label'),('a97d45a1-b0a4-48d5-8a83-0654d4c564c1','firstName','user.attribute'),('a97d45a1-b0a4-48d5-8a83-0654d4c564c1','true','userinfo.token.claim'),('aa19a89e-8619-48db-b27a-89a94187ae34','true','access.token.claim'),('aa19a89e-8619-48db-b27a-89a94187ae34','resource_access.${client_id}.roles','claim.name'),('aa19a89e-8619-48db-b27a-89a94187ae34','String','jsonType.label'),('aa19a89e-8619-48db-b27a-89a94187ae34','true','multivalued'),('aa19a89e-8619-48db-b27a-89a94187ae34','foo','user.attribute'),('b3e338ef-ff7b-4d1e-8382-da143561d832','Role','attribute.name'),('b3e338ef-ff7b-4d1e-8382-da143561d832','Basic','attribute.nameformat'),('b3e338ef-ff7b-4d1e-8382-da143561d832','false','single'),('b4a0824c-4915-45f2-b80b-616faafa6f3f','true','access.token.claim'),('b4a0824c-4915-45f2-b80b-616faafa6f3f','true','id.token.claim'),('b4a0824c-4915-45f2-b80b-616faafa6f3f','true','userinfo.token.claim'),('c3ee0c32-43a2-478d-a32c-787955e6f9ad','true','access.token.claim'),('c3ee0c32-43a2-478d-a32c-787955e6f9ad','gender','claim.name'),('c3ee0c32-43a2-478d-a32c-787955e6f9ad','true','id.token.claim'),('c3ee0c32-43a2-478d-a32c-787955e6f9ad','String','jsonType.label'),('c3ee0c32-43a2-478d-a32c-787955e6f9ad','gender','user.attribute'),('c3ee0c32-43a2-478d-a32c-787955e6f9ad','true','userinfo.token.claim'),('c468bf1b-d3fb-4f34-b3ba-e5266a752e1d','true','access.token.claim'),('c468bf1b-d3fb-4f34-b3ba-e5266a752e1d','groups','claim.name'),('c468bf1b-d3fb-4f34-b3ba-e5266a752e1d','true','id.token.claim'),('c468bf1b-d3fb-4f34-b3ba-e5266a752e1d','String','jsonType.label'),('c468bf1b-d3fb-4f34-b3ba-e5266a752e1d','true','multivalued'),('c468bf1b-d3fb-4f34-b3ba-e5266a752e1d','foo','user.attribute'),('c99c523f-2f61-4951-91b9-7be951646df8','true','access.token.claim'),('c99c523f-2f61-4951-91b9-7be951646df8','phone_number_verified','claim.name'),('c99c523f-2f61-4951-91b9-7be951646df8','true','id.token.claim'),('c99c523f-2f61-4951-91b9-7be951646df8','boolean','jsonType.label'),('c99c523f-2f61-4951-91b9-7be951646df8','phoneNumberVerified','user.attribute'),('c99c523f-2f61-4951-91b9-7be951646df8','true','userinfo.token.claim'),('ce1e313e-ab77-45d8-bd1f-7df33c20bfac','true','access.token.claim'),('ce1e313e-ab77-45d8-bd1f-7df33c20bfac','family_name','claim.name'),('ce1e313e-ab77-45d8-bd1f-7df33c20bfac','true','id.token.claim'),('ce1e313e-ab77-45d8-bd1f-7df33c20bfac','String','jsonType.label'),('ce1e313e-ab77-45d8-bd1f-7df33c20bfac','lastName','user.attribute'),('ce1e313e-ab77-45d8-bd1f-7df33c20bfac','true','userinfo.token.claim'),('d2be7bba-d911-4ed0-8397-3acef41bfd93','true','access.token.claim'),('d2be7bba-d911-4ed0-8397-3acef41bfd93','gender','claim.name'),('d2be7bba-d911-4ed0-8397-3acef41bfd93','true','id.token.claim'),('d2be7bba-d911-4ed0-8397-3acef41bfd93','String','jsonType.label'),('d2be7bba-d911-4ed0-8397-3acef41bfd93','gender','user.attribute'),('d2be7bba-d911-4ed0-8397-3acef41bfd93','true','userinfo.token.claim'),('d50beb83-7a8d-4ed9-af74-dfbdeada7222','true','access.token.claim'),('d50beb83-7a8d-4ed9-af74-dfbdeada7222','nickname','claim.name'),('d50beb83-7a8d-4ed9-af74-dfbdeada7222','true','id.token.claim'),('d50beb83-7a8d-4ed9-af74-dfbdeada7222','String','jsonType.label'),('d50beb83-7a8d-4ed9-af74-dfbdeada7222','nickname','user.attribute'),('d50beb83-7a8d-4ed9-af74-dfbdeada7222','true','userinfo.token.claim'),('da10707a-8ee0-4e91-b315-268504885a52','true','access.token.claim'),('da10707a-8ee0-4e91-b315-268504885a52','preferred_username','claim.name'),('da10707a-8ee0-4e91-b315-268504885a52','true','id.token.claim'),('da10707a-8ee0-4e91-b315-268504885a52','String','jsonType.label'),('da10707a-8ee0-4e91-b315-268504885a52','username','user.attribute'),('da10707a-8ee0-4e91-b315-268504885a52','true','userinfo.token.claim'),('dafa2c80-852e-466a-b85d-c1d4aeecb288','true','access.token.claim'),('dafa2c80-852e-466a-b85d-c1d4aeecb288','realm_access.roles','claim.name'),('dafa2c80-852e-466a-b85d-c1d4aeecb288','String','jsonType.label'),('dafa2c80-852e-466a-b85d-c1d4aeecb288','true','multivalued'),('dafa2c80-852e-466a-b85d-c1d4aeecb288','foo','user.attribute'),('dde21fb0-aff6-4dc5-87d4-1d07f1094aed','true','access.token.claim'),('dde21fb0-aff6-4dc5-87d4-1d07f1094aed','email','claim.name'),('dde21fb0-aff6-4dc5-87d4-1d07f1094aed','true','id.token.claim'),('dde21fb0-aff6-4dc5-87d4-1d07f1094aed','String','jsonType.label'),('dde21fb0-aff6-4dc5-87d4-1d07f1094aed','email','user.attribute'),('dde21fb0-aff6-4dc5-87d4-1d07f1094aed','true','userinfo.token.claim'),('eef65c8c-f727-42d3-88fe-5010ed307d2e','true','access.token.claim'),('eef65c8c-f727-42d3-88fe-5010ed307d2e','picture','claim.name'),('eef65c8c-f727-42d3-88fe-5010ed307d2e','true','id.token.claim'),('eef65c8c-f727-42d3-88fe-5010ed307d2e','String','jsonType.label'),('eef65c8c-f727-42d3-88fe-5010ed307d2e','picture','user.attribute'),('eef65c8c-f727-42d3-88fe-5010ed307d2e','true','userinfo.token.claim'),('f27945c3-8518-405e-8e1e-ab8a79495f23','true','access.token.claim'),('f27945c3-8518-405e-8e1e-ab8a79495f23','profile','claim.name'),('f27945c3-8518-405e-8e1e-ab8a79495f23','true','id.token.claim'),('f27945c3-8518-405e-8e1e-ab8a79495f23','String','jsonType.label'),('f27945c3-8518-405e-8e1e-ab8a79495f23','profile','user.attribute'),('f27945c3-8518-405e-8e1e-ab8a79495f23','true','userinfo.token.claim'),('f41607bd-184d-4ce8-82e8-6093282a4fc9','true','access.token.claim'),('f41607bd-184d-4ce8-82e8-6093282a4fc9','email_verified','claim.name'),('f41607bd-184d-4ce8-82e8-6093282a4fc9','true','id.token.claim'),('f41607bd-184d-4ce8-82e8-6093282a4fc9','boolean','jsonType.label'),('f41607bd-184d-4ce8-82e8-6093282a4fc9','emailVerified','user.attribute'),('f41607bd-184d-4ce8-82e8-6093282a4fc9','true','userinfo.token.claim'),('ff766187-b5fb-443c-8325-dc96a8064b00','true','access.token.claim'),('ff766187-b5fb-443c-8325-dc96a8064b00','preferred_username','claim.name'),('ff766187-b5fb-443c-8325-dc96a8064b00','true','id.token.claim'),('ff766187-b5fb-443c-8325-dc96a8064b00','String','jsonType.label'),('ff766187-b5fb-443c-8325-dc96a8064b00','username','user.attribute'),('ff766187-b5fb-443c-8325-dc96a8064b00','true','userinfo.token.claim');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM`
--

DROP TABLE IF EXISTS `REALM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_EXPIRATION` bigint DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int DEFAULT NULL,
  `PASSWORD_POLICY` text,
  `REGISTRATION_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `RESET_PASSWORD_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `SOCIAL` bit(1) NOT NULL DEFAULT b'0',
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` bit(1) NOT NULL DEFAULT b'0',
  `VERIFY_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_DETAILS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EDIT_USERNAME_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `OTP_POLICY_COUNTER` int DEFAULT '0',
  `OTP_POLICY_WINDOW` int DEFAULT '1',
  `OTP_POLICY_PERIOD` int DEFAULT '30',
  `OTP_POLICY_DIGITS` int DEFAULT '6',
  `OTP_POLICY_ALG` varchar(36) DEFAULT 'HmacSHA1',
  `OTP_POLICY_TYPE` varchar(36) DEFAULT 'totp',
  `BROWSER_FLOW` varchar(36) DEFAULT NULL,
  `REGISTRATION_FLOW` varchar(36) DEFAULT NULL,
  `DIRECT_GRANT_FLOW` varchar(36) DEFAULT NULL,
  `RESET_CREDENTIALS_FLOW` varchar(36) DEFAULT NULL,
  `CLIENT_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `OFFLINE_SESSION_IDLE_TIMEOUT` int DEFAULT '0',
  `REVOKE_REFRESH_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `ACCESS_TOKEN_LIFE_IMPLICIT` int DEFAULT '0',
  `LOGIN_WITH_EMAIL_ALLOWED` bit(1) NOT NULL DEFAULT b'1',
  `DUPLICATE_EMAILS_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int DEFAULT '0',
  `ALLOW_USER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `SSO_MAX_LIFESPAN_REMEMBER_ME` int NOT NULL,
  `SSO_IDLE_TIMEOUT_REMEMBER_ME` int NOT NULL,
  `DEFAULT_ROLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORVSDMLA56612EAEFIQ6WL5OI` (`NAME`),
  KEY `IDX_REALM_MASTER_ADM_CLI` (`MASTER_ADMIN_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
/*!40000 ALTER TABLE `REALM` DISABLE KEYS */;
INSERT INTO `REALM` VALUES ('25c03e82-4734-41ea-bd68-a8ee34cd4499',86400,300,432000,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'xp',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','EXTERNAL',1800,36000,_binary '\0',_binary '\0','0a1c55bd-8451-4807-aa9c-51ff150c2556',1800,_binary '\0',NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,1,30,6,'HmacSHA1','totp','3d734a0a-acdb-4ce8-bab7-bc67ed6a722a','5a3ba3a1-ec7e-4c24-9a08-a120ef9da27b','7fc28f87-bf89-475e-bd89-a007d93f9950','dc084f23-4a92-4bdb-8a82-c530b2dc4c6d','20defc3a-62e5-4c20-af64-0a7471c4dd92',2592000,_binary '\0',1296000,_binary '',_binary '\0','7a8f1f28-6824-46b9-8aff-205779dc613c',0,_binary '\0',0,0,'d2aa49d3-325f-4771-b782-67f6fdc4d253'),('96697988-5ce7-4270-bc20-f580b5e13e24',60,300,60,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'master',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','EXTERNAL',1800,36000,_binary '\0',_binary '\0','e9692c6a-190b-4fab-9b6a-2e9051e1e3f8',1800,_binary '\0',NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,1,30,6,'HmacSHA1','totp','b76ccfd0-2117-46a6-bcb9-a890b5db05bd','baa0bcd1-5e74-4a77-b7bb-b5b04e4059db','889078cb-f61f-4682-9a28-f4e29bd4f385','a3754d4f-17f4-4d2a-b329-e12a081b0d76','3e6b1a16-ebc8-4f58-af91-0b16731dc8d4',2592000,_binary '\0',900,_binary '',_binary '\0','d45f7921-6cca-4684-ab3b-ada9e931ddd9',0,_binary '\0',0,0,'0d743a02-8f7f-467a-9da6-269634e202e3');
/*!40000 ALTER TABLE `REALM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ATTRIBUTE`
--

DROP TABLE IF EXISTS `REALM_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`NAME`,`REALM_ID`),
  KEY `IDX_REALM_ATTR_REALM` (`REALM_ID`),
  CONSTRAINT `FK_8SHXD6L3E9ATQUKACXGPFFPTW` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('_browser_header.contentSecurityPolicy','25c03e82-4734-41ea-bd68-a8ee34cd4499','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','96697988-5ce7-4270-bc20-f580b5e13e24','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','25c03e82-4734-41ea-bd68-a8ee34cd4499',''),('_browser_header.contentSecurityPolicyReportOnly','96697988-5ce7-4270-bc20-f580b5e13e24',''),('_browser_header.strictTransportSecurity','25c03e82-4734-41ea-bd68-a8ee34cd4499','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','96697988-5ce7-4270-bc20-f580b5e13e24','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','25c03e82-4734-41ea-bd68-a8ee34cd4499','nosniff'),('_browser_header.xContentTypeOptions','96697988-5ce7-4270-bc20-f580b5e13e24','nosniff'),('_browser_header.xFrameOptions','25c03e82-4734-41ea-bd68-a8ee34cd4499','SAMEORIGIN'),('_browser_header.xFrameOptions','96697988-5ce7-4270-bc20-f580b5e13e24','SAMEORIGIN'),('_browser_header.xRobotsTag','25c03e82-4734-41ea-bd68-a8ee34cd4499','none'),('_browser_header.xRobotsTag','96697988-5ce7-4270-bc20-f580b5e13e24','none'),('_browser_header.xXSSProtection','25c03e82-4734-41ea-bd68-a8ee34cd4499','1; mode=block'),('_browser_header.xXSSProtection','96697988-5ce7-4270-bc20-f580b5e13e24','1; mode=block'),('actionTokenGeneratedByAdminLifespan','25c03e82-4734-41ea-bd68-a8ee34cd4499','1036800'),('actionTokenGeneratedByUserLifespan','25c03e82-4734-41ea-bd68-a8ee34cd4499','432000'),('actionTokenGeneratedByUserLifespan-execute-actions','25c03e82-4734-41ea-bd68-a8ee34cd4499',''),('actionTokenGeneratedByUserLifespan-idp-verify-account-via-email','25c03e82-4734-41ea-bd68-a8ee34cd4499',''),('actionTokenGeneratedByUserLifespan-reset-credentials','25c03e82-4734-41ea-bd68-a8ee34cd4499',''),('actionTokenGeneratedByUserLifespan-verify-email','25c03e82-4734-41ea-bd68-a8ee34cd4499',''),('bruteForceProtected','25c03e82-4734-41ea-bd68-a8ee34cd4499','false'),('bruteForceProtected','96697988-5ce7-4270-bc20-f580b5e13e24','false'),('cibaAuthRequestedUserHint','25c03e82-4734-41ea-bd68-a8ee34cd4499','login_hint'),('cibaBackchannelTokenDeliveryMode','25c03e82-4734-41ea-bd68-a8ee34cd4499','poll'),('cibaExpiresIn','25c03e82-4734-41ea-bd68-a8ee34cd4499','120'),('cibaInterval','25c03e82-4734-41ea-bd68-a8ee34cd4499','5'),('client-policies.policies','25c03e82-4734-41ea-bd68-a8ee34cd4499','{\"policies\":[]}'),('client-policies.profiles','25c03e82-4734-41ea-bd68-a8ee34cd4499','{\"profiles\":[]}'),('clientOfflineSessionIdleTimeout','25c03e82-4734-41ea-bd68-a8ee34cd4499','0'),('clientOfflineSessionMaxLifespan','25c03e82-4734-41ea-bd68-a8ee34cd4499','0'),('clientSessionIdleTimeout','25c03e82-4734-41ea-bd68-a8ee34cd4499','0'),('clientSessionMaxLifespan','25c03e82-4734-41ea-bd68-a8ee34cd4499','0'),('defaultSignatureAlgorithm','25c03e82-4734-41ea-bd68-a8ee34cd4499','RS256'),('defaultSignatureAlgorithm','96697988-5ce7-4270-bc20-f580b5e13e24','RS256'),('displayName','96697988-5ce7-4270-bc20-f580b5e13e24','Keycloak'),('displayNameHtml','96697988-5ce7-4270-bc20-f580b5e13e24','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','25c03e82-4734-41ea-bd68-a8ee34cd4499','30'),('failureFactor','96697988-5ce7-4270-bc20-f580b5e13e24','30'),('maxDeltaTimeSeconds','25c03e82-4734-41ea-bd68-a8ee34cd4499','43200'),('maxDeltaTimeSeconds','96697988-5ce7-4270-bc20-f580b5e13e24','43200'),('maxFailureWaitSeconds','25c03e82-4734-41ea-bd68-a8ee34cd4499','900'),('maxFailureWaitSeconds','96697988-5ce7-4270-bc20-f580b5e13e24','900'),('minimumQuickLoginWaitSeconds','25c03e82-4734-41ea-bd68-a8ee34cd4499','60'),('minimumQuickLoginWaitSeconds','96697988-5ce7-4270-bc20-f580b5e13e24','60'),('oauth2DeviceCodeLifespan','25c03e82-4734-41ea-bd68-a8ee34cd4499','600'),('oauth2DevicePollingInterval','25c03e82-4734-41ea-bd68-a8ee34cd4499','5'),('offlineSessionMaxLifespan','25c03e82-4734-41ea-bd68-a8ee34cd4499','5184000'),('offlineSessionMaxLifespan','96697988-5ce7-4270-bc20-f580b5e13e24','5184000'),('offlineSessionMaxLifespanEnabled','25c03e82-4734-41ea-bd68-a8ee34cd4499','false'),('offlineSessionMaxLifespanEnabled','96697988-5ce7-4270-bc20-f580b5e13e24','false'),('parRequestUriLifespan','25c03e82-4734-41ea-bd68-a8ee34cd4499','60'),('permanentLockout','25c03e82-4734-41ea-bd68-a8ee34cd4499','false'),('permanentLockout','96697988-5ce7-4270-bc20-f580b5e13e24','false'),('quickLoginCheckMilliSeconds','25c03e82-4734-41ea-bd68-a8ee34cd4499','1000'),('quickLoginCheckMilliSeconds','96697988-5ce7-4270-bc20-f580b5e13e24','1000'),('waitIncrementSeconds','25c03e82-4734-41ea-bd68-a8ee34cd4499','60'),('waitIncrementSeconds','96697988-5ce7-4270-bc20-f580b5e13e24','60'),('webAuthnPolicyAttestationConveyancePreference','25c03e82-4734-41ea-bd68-a8ee34cd4499','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','25c03e82-4734-41ea-bd68-a8ee34cd4499','not specified'),('webAuthnPolicyAuthenticatorAttachment','25c03e82-4734-41ea-bd68-a8ee34cd4499','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','25c03e82-4734-41ea-bd68-a8ee34cd4499','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','25c03e82-4734-41ea-bd68-a8ee34cd4499','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','25c03e82-4734-41ea-bd68-a8ee34cd4499','false'),('webAuthnPolicyCreateTimeout','25c03e82-4734-41ea-bd68-a8ee34cd4499','0'),('webAuthnPolicyCreateTimeoutPasswordless','25c03e82-4734-41ea-bd68-a8ee34cd4499','0'),('webAuthnPolicyRequireResidentKey','25c03e82-4734-41ea-bd68-a8ee34cd4499','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','25c03e82-4734-41ea-bd68-a8ee34cd4499','not specified'),('webAuthnPolicyRpEntityName','25c03e82-4734-41ea-bd68-a8ee34cd4499','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','25c03e82-4734-41ea-bd68-a8ee34cd4499','keycloak'),('webAuthnPolicyRpId','25c03e82-4734-41ea-bd68-a8ee34cd4499',''),('webAuthnPolicyRpIdPasswordless','25c03e82-4734-41ea-bd68-a8ee34cd4499',''),('webAuthnPolicySignatureAlgorithms','25c03e82-4734-41ea-bd68-a8ee34cd4499','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','25c03e82-4734-41ea-bd68-a8ee34cd4499','ES256'),('webAuthnPolicyUserVerificationRequirement','25c03e82-4734-41ea-bd68-a8ee34cd4499','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','25c03e82-4734-41ea-bd68-a8ee34cd4499','not specified');
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_DEFAULT_GROUPS`
--

DROP TABLE IF EXISTS `REALM_DEFAULT_GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_DEFAULT_GROUPS` (
  `REALM_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`GROUP_ID`),
  UNIQUE KEY `CON_GROUP_ID_DEF_GROUPS` (`GROUP_ID`),
  KEY `IDX_REALM_DEF_GRP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_DEF_GROUPS_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_DEFAULT_GROUPS`
--

LOCK TABLES `REALM_DEFAULT_GROUPS` WRITE;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ENABLED_EVENT_TYPES`
--

DROP TABLE IF EXISTS `REALM_ENABLED_EVENT_TYPES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_ENABLED_EVENT_TYPES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_TYPES_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NWEDRF5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ENABLED_EVENT_TYPES`
--

LOCK TABLES `REALM_ENABLED_EVENT_TYPES` WRITE;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_EVENTS_LISTENERS`
--

DROP TABLE IF EXISTS `REALM_EVENTS_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_EVENTS_LISTENERS` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_LIST_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NXEV9F5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_EVENTS_LISTENERS`
--

LOCK TABLES `REALM_EVENTS_LISTENERS` WRITE;
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` DISABLE KEYS */;
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('25c03e82-4734-41ea-bd68-a8ee34cd4499','jboss-logging'),('96697988-5ce7-4270-bc20-f580b5e13e24','jboss-logging');
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_LOCALIZATIONS`
--

DROP TABLE IF EXISTS `REALM_LOCALIZATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_LOCALIZATIONS` (
  `REALM_ID` varchar(255) NOT NULL,
  `LOCALE` varchar(255) NOT NULL,
  `TEXTS` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`REALM_ID`,`LOCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_LOCALIZATIONS`
--

LOCK TABLES `REALM_LOCALIZATIONS` WRITE;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_REQUIRED_CREDENTIAL`
--

DROP TABLE IF EXISTS `REALM_REQUIRED_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_REQUIRED_CREDENTIAL` (
  `TYPE` varchar(255) NOT NULL,
  `FORM_LABEL` varchar(255) DEFAULT NULL,
  `INPUT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`TYPE`),
  CONSTRAINT `FK_5HG65LYBEVAVKQFKI3KPONH9V` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_REQUIRED_CREDENTIAL`
--

LOCK TABLES `REALM_REQUIRED_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` DISABLE KEYS */;
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',_binary '',_binary '','25c03e82-4734-41ea-bd68-a8ee34cd4499'),('password','password',_binary '',_binary '','96697988-5ce7-4270-bc20-f580b5e13e24');
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SMTP_CONFIG`
--

DROP TABLE IF EXISTS `REALM_SMTP_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_SMTP_CONFIG` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`NAME`),
  CONSTRAINT `FK_70EJ8XDXGXD0B9HH6180IRR0O` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SMTP_CONFIG`
--

LOCK TABLES `REALM_SMTP_CONFIG` WRITE;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SUPPORTED_LOCALES`
--

DROP TABLE IF EXISTS `REALM_SUPPORTED_LOCALES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_SUPPORTED_LOCALES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_SUPP_LOCAL_REALM` (`REALM_ID`),
  CONSTRAINT `FK_SUPPORTED_LOCALES_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SUPPORTED_LOCALES`
--

LOCK TABLES `REALM_SUPPORTED_LOCALES` WRITE;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REDIRECT_URIS`
--

DROP TABLE IF EXISTS `REDIRECT_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REDIRECT_URIS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_REDIR_URI_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_1BURS8PB4OUJ97H5WUPPAHV9F` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
/*!40000 ALTER TABLE `REDIRECT_URIS` DISABLE KEYS */;
INSERT INTO `REDIRECT_URIS` VALUES ('52a6015c-275b-484f-8fd2-a2a852da7c64','/admin/master/console/*'),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','/admin/xp/console/*'),('800c5bdd-25fd-401d-a83b-71b5d34c047a','/realms/master/account/*'),('a36be6e4-2474-4704-99fe-0604858eb58b','/realms/xp/account/*'),('efe19254-277d-4e31-b445-26e63bf5c78d','/realms/xp/account/*'),('fbe180b7-31be-4f10-b091-0e06f39aacf3','/realms/master/account/*');
/*!40000 ALTER TABLE `REDIRECT_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_CONFIG`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REQUIRED_ACTION_CONFIG` (
  `REQUIRED_ACTION_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REQUIRED_ACTION_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_CONFIG`
--

LOCK TABLES `REQUIRED_ACTION_CONFIG` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_PROVIDER`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REQUIRED_ACTION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_ACTION` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REQ_ACT_PROV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_REQ_ACT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_PROVIDER`
--

LOCK TABLES `REQUIRED_ACTION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` DISABLE KEYS */;
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('0c53c4be-ab8e-44a9-a575-53cd26431c01','webauthn-register-passwordless','Webauthn Register Passwordless','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '',_binary '\0','webauthn-register-passwordless',80),('1200f1d5-7bde-4522-84a3-9671ee0d2feb','VERIFY_EMAIL','Verify Email','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '',_binary '\0','VERIFY_EMAIL',50),('158bd80a-9279-408c-8dd2-af628a7b8649','update_user_locale','Update User Locale','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '',_binary '\0','update_user_locale',1000),('1c3e462f-9510-43e3-a503-8d29c166892d','update_user_locale','Update User Locale','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '',_binary '\0','update_user_locale',1000),('1cbb2254-8cab-4a4c-ad36-8b00f421cacd','webauthn-register-passwordless','Webauthn Register Passwordless','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '',_binary '\0','webauthn-register-passwordless',80),('369526be-12dc-4ad2-b05a-7fe43092d0ec','UPDATE_PASSWORD','Update Password','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '',_binary '\0','UPDATE_PASSWORD',30),('3d9d2c37-c473-4953-bb91-2aa7830827c6','UPDATE_PROFILE','Update Profile','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '',_binary '\0','UPDATE_PROFILE',40),('47d94898-b624-4f13-a488-7f9bd7d9fe26','UPDATE_PASSWORD','Update Password','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '',_binary '\0','UPDATE_PASSWORD',30),('4bcdf8fb-1154-486f-93fb-ce06719c0d4e','webauthn-register','Webauthn Register','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '',_binary '\0','webauthn-register',70),('716e0945-039c-4610-8681-1ddc0f7664bf','CONFIGURE_TOTP','Configure OTP','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '',_binary '\0','CONFIGURE_TOTP',10),('836486be-af3c-48d1-bc32-237522804d6b','UPDATE_PROFILE','Update Profile','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '',_binary '\0','UPDATE_PROFILE',40),('85513dd7-a113-46cf-a18f-b72d646e584e','terms_and_conditions','Terms and Conditions','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '\0',_binary '\0','terms_and_conditions',20),('90cab318-1fee-473c-948a-51db675407fe','delete_account','Delete Account','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '\0',_binary '\0','delete_account',60),('bb6117ca-6b6a-4b87-b52f-c1bedd76aa02','delete_account','Delete Account','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '\0',_binary '\0','delete_account',60),('da6a7214-403b-4f12-a091-6e6677d7725b','VERIFY_EMAIL','Verify Email','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '',_binary '\0','VERIFY_EMAIL',50),('e08c6d1d-e641-447e-9c91-ae73756c0560','CONFIGURE_TOTP','Configure OTP','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '',_binary '\0','CONFIGURE_TOTP',10),('e366ffdf-8c11-4eb6-9c03-81a3a2755e18','terms_and_conditions','Terms and Conditions','96697988-5ce7-4270-bc20-f580b5e13e24',_binary '\0',_binary '\0','terms_and_conditions',20),('ec33c32e-41c2-4fdc-a63e-2933e12ac526','webauthn-register','Webauthn Register','25c03e82-4734-41ea-bd68-a8ee34cd4499',_binary '',_binary '\0','webauthn-register',70);
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `RESOURCE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_5HRM2VLF9QL5FU022KQEPOVBR` (`RESOURCE_ID`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU022KQEPOVBR` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_ATTRIBUTE`
--

LOCK TABLES `RESOURCE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_POLICY` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`POLICY_ID`),
  KEY `IDX_RES_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRPOS53XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPP213XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_POLICY`
--

LOCK TABLES `RESOURCE_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SCOPE` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`SCOPE_ID`),
  KEY `IDX_RES_SCOPE_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_FRSRPOS13XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPS213XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SCOPE`
--

LOCK TABLES `RESOURCE_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER` (
  `ID` varchar(36) NOT NULL,
  `ALLOW_RS_REMOTE_MGMT` bit(1) NOT NULL DEFAULT b'0',
  `POLICY_ENFORCE_MODE` varchar(15) NOT NULL,
  `DECISION_STRATEGY` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER`
--

LOCK TABLES `RESOURCE_SERVER` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_PERM_TICKET`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_PERM_TICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_PERM_TICKET` (
  `ID` varchar(36) NOT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `REQUESTER` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint NOT NULL,
  `GRANTED_TIMESTAMP` bigint DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5PMT` (`OWNER`,`REQUESTER`,`RESOURCE_SERVER_ID`,`RESOURCE_ID`,`SCOPE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG82SSPMT` (`RESOURCE_SERVER_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG83SSPMT` (`RESOURCE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG84SSPMT` (`SCOPE_ID`),
  KEY `FK_FRSRPO2128CX4WNKOG82SSRFY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSPMT` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG83SSPMT` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG84SSPMT` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`),
  CONSTRAINT `FK_FRSRPO2128CX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_PERM_TICKET`
--

LOCK TABLES `RESOURCE_SERVER_PERM_TICKET` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_POLICY` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` varchar(20) DEFAULT NULL,
  `LOGIC` varchar(20) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRPT700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SERV_POL_RES_SERV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRPO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_POLICY`
--

LOCK TABLES `RESOURCE_SERVER_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_RESOURCE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_RESOURCE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5HA6` (`NAME`,`OWNER`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_RES_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_RESOURCE`
--

LOCK TABLES `RESOURCE_SERVER_RESOURCE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRST700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_SCOPE_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRSO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_SCOPE`
--

LOCK TABLES `RESOURCE_SERVER_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_URIS`
--

DROP TABLE IF EXISTS `RESOURCE_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_URIS` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`VALUE`),
  CONSTRAINT `FK_RESOURCE_SERVER_URIS` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_URIS`
--

LOCK TABLES `RESOURCE_URIS` WRITE;
/*!40000 ALTER TABLE `RESOURCE_URIS` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `ROLE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ROLE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ROLE_ATTRIBUTE` (`ROLE_ID`),
  CONSTRAINT `FK_ROLE_ATTRIBUTE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE_ATTRIBUTE`
--

LOCK TABLES `ROLE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_MAPPING`
--

DROP TABLE IF EXISTS `SCOPE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SCOPE_MAPPING` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  KEY `IDX_SCOPE_MAPPING_ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_OUSE064PLMLR732LXJCN1Q5F1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_MAPPING`
--

LOCK TABLES `SCOPE_MAPPING` WRITE;
/*!40000 ALTER TABLE `SCOPE_MAPPING` DISABLE KEYS */;
INSERT INTO `SCOPE_MAPPING` VALUES ('efe19254-277d-4e31-b445-26e63bf5c78d','bccee7b6-3542-423b-8964-b1897097a560'),('800c5bdd-25fd-401d-a83b-71b5d34c047a','f4ff3b53-04c5-4732-8f18-7a4a4e13a74d');
/*!40000 ALTER TABLE `SCOPE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_POLICY`
--

DROP TABLE IF EXISTS `SCOPE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SCOPE_POLICY` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`POLICY_ID`),
  KEY `IDX_SCOPE_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRASP13XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPASS3XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_POLICY`
--

LOCK TABLES `SCOPE_POLICY` WRITE;
/*!40000 ALTER TABLE `SCOPE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCOPE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERNAME_LOGIN_FAILURE`
--

DROP TABLE IF EXISTS `USERNAME_LOGIN_FAILURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USERNAME_LOGIN_FAILURE` (
  `REALM_ID` varchar(36) NOT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FAILED_LOGIN_NOT_BEFORE` int DEFAULT NULL,
  `LAST_FAILURE` bigint DEFAULT NULL,
  `LAST_IP_FAILURE` varchar(255) DEFAULT NULL,
  `NUM_FAILURES` int DEFAULT NULL,
  PRIMARY KEY (`REALM_ID`,`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERNAME_LOGIN_FAILURE`
--

LOCK TABLES `USERNAME_LOGIN_FAILURE` WRITE;
/*!40000 ALTER TABLE `USERNAME_LOGIN_FAILURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USERNAME_LOGIN_FAILURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_ATTRIBUTE` (`USER_ID`),
  KEY `IDX_USER_ATTRIBUTE_NAME` (`NAME`,`VALUE`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU043KQEPOVBR` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ATTRIBUTE`
--

LOCK TABLES `USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONSENT`
--

DROP TABLE IF EXISTS `USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `CREATED_DATE` bigint DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_JKUWUVD56ONTGSUHOGM8UEWRT` (`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`USER_ID`),
  KEY `IDX_USER_CONSENT` (`USER_ID`),
  CONSTRAINT `FK_GRNTCSNT_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT`
--

LOCK TABLES `USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONSENT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `USER_CONSENT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_CONSENT_CLIENT_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`),
  KEY `IDX_USCONSENT_CLSCOPE` (`USER_CONSENT_ID`),
  CONSTRAINT `FK_GRNTCSNT_CLSC_USC` FOREIGN KEY (`USER_CONSENT_ID`) REFERENCES `USER_CONSENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT_CLIENT_SCOPE`
--

LOCK TABLES `USER_CONSENT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ENTITY`
--

DROP TABLE IF EXISTS `USER_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EMAIL_CONSTRAINT` varchar(255) DEFAULT NULL,
  `EMAIL_VERIFIED` bit(1) NOT NULL DEFAULT b'0',
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FEDERATION_LINK` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LAST_NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint DEFAULT NULL,
  `SERVICE_ACCOUNT_CLIENT_LINK` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_DYKN684SL8UP1CRFEI6ECKHD7` (`REALM_ID`,`EMAIL_CONSTRAINT`),
  UNIQUE KEY `UK_RU8TT6T700S9V50BU18WS5HA6` (`REALM_ID`,`USERNAME`),
  KEY `IDX_USER_EMAIL` (`EMAIL`),
  KEY `IDX_USER_SERVICE_ACCOUNT` (`REALM_ID`,`SERVICE_ACCOUNT_CLIENT_LINK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ENTITY`
--

LOCK TABLES `USER_ENTITY` WRITE;
/*!40000 ALTER TABLE `USER_ENTITY` DISABLE KEYS */;
INSERT INTO `USER_ENTITY` VALUES ('11ca4794-c835-4522-b70b-6dea13ca95f2','teste@gmail.com','teste@gmail.com',_binary '\0',_binary '',NULL,'Nickelbeck',NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','nickelbeck',1718125590713,NULL,0),('6de3fd49-0280-4c2d-babe-0d78e12e82d3',NULL,'65e580a3-1fdf-4178-92a5-c635eab3604d',_binary '\0',_binary '',NULL,NULL,NULL,'96697988-5ce7-4270-bc20-f580b5e13e24','admin',1717952882042,NULL,0),('9cce0695-22f5-4b28-9b9c-b64d94dd6a7e','pedrogomes980@gmail.com','pedrogomes980@gmail.com',_binary '\0',_binary '',NULL,'Pedro Rocha',NULL,'25c03e82-4734-41ea-bd68-a8ee34cd4499','pedro rocha',1718124876352,NULL,0);
/*!40000 ALTER TABLE `USER_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_CONFIG` (
  `USER_FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FK_T13HPU1J94R2EBPEKR39X5EU5` FOREIGN KEY (`USER_FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_CONFIG`
--

LOCK TABLES `USER_FEDERATION_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_MAPPER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `FEDERATION_MAPPER_TYPE` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_MAP_FED_PRV` (`FEDERATION_PROVIDER_ID`),
  KEY `IDX_USR_FED_MAP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_FEDMAPPERPM_FEDPRV` FOREIGN KEY (`FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`),
  CONSTRAINT `FK_FEDMAPPERPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER`
--

LOCK TABLES `USER_FEDERATION_MAPPER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_MAPPER_CONFIG` (
  `USER_FEDERATION_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_FEDMAPPER_CFG` FOREIGN KEY (`USER_FEDERATION_MAPPER_ID`) REFERENCES `USER_FEDERATION_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER_CONFIG`
--

LOCK TABLES `USER_FEDERATION_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_PROVIDER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `CHANGED_SYNC_PERIOD` int DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `FULL_SYNC_PERIOD` int DEFAULT NULL,
  `LAST_SYNC` int DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `PROVIDER_NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_PRV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_1FJ32F6PTOLW2QY60CD8N01E8` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_PROVIDER`
--

LOCK TABLES `USER_FEDERATION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_USER_GROUP_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_USER_GROUP_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
INSERT INTO `USER_GROUP_MEMBERSHIP` VALUES ('34ad0314-1e5b-4f52-8e59-41d620036f2e','11ca4794-c835-4522-b70b-6dea13ca95f2'),('75fb639b-a3da-45c6-a6b2-ca838c80f656','9cce0695-22f5-4b28-9b9c-b64d94dd6a7e');
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_REQUIRED_ACTION` (
  `USER_ID` varchar(36) NOT NULL,
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_USER_REQACTIONS` (`USER_ID`),
  CONSTRAINT `FK_6QJ3W1JW9CVAFHE19BWSIUVMD` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_REQUIRED_ACTION`
--

LOCK TABLES `USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(255) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_USER_ROLE_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_C4FQV34P1MBYLLOXANG7B1Q3L` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ROLE_MAPPING`
--

LOCK TABLES `USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `USER_ROLE_MAPPING` VALUES ('d2aa49d3-325f-4771-b782-67f6fdc4d253','11ca4794-c835-4522-b70b-6dea13ca95f2'),('0d743a02-8f7f-467a-9da6-269634e202e3','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('15b7c1e4-8952-4a7d-b863-ec1d99eca0bf','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('2418d9f7-8f67-44aa-a55e-37ac4fc09c1b','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('24a15942-e14e-4fe6-9b05-9ba27372fe3c','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('3068e03b-474e-4ee4-95c3-049610c62d1f','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('34771677-495a-46c9-9309-d280d0afddb3','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('4d637b57-1e36-45f3-9d2a-023d3bba31df','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('67f7d376-7d3a-4c2a-badb-6cf2f3bc7e96','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('b3ae207b-7b8e-495c-90ad-1fd934a28d38','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('ca701d2c-d044-4603-a4a1-822867f04cf7','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('cd07dc38-1c1d-4612-ac00-558601590eae','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('d0b7aac5-5aab-445c-b4cc-02fb8cc313bb','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('d6e5cd5c-2fc1-4473-88b8-4091c51ae259','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('d91fc653-ab3a-46cd-869f-60eab72c12ce','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('dd9949fd-1b4b-49d1-bc98-ac913d691191','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('e0979c73-21f0-49d8-8ea8-0d2bfe74c0fb','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('e097e925-74ea-4c17-896a-b2389ad5a6bf','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('e9bd79bb-88b3-4643-8f8f-607d95fe17de','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('f93b2b28-5c8b-4a05-a2f0-116b14be082c','6de3fd49-0280-4c2d-babe-0d78e12e82d3'),('d2aa49d3-325f-4771-b782-67f6fdc4d253','9cce0695-22f5-4b28-9b9c-b64d94dd6a7e');
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_SESSION`
--

DROP TABLE IF EXISTS `USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_SESSION` (
  `ID` varchar(36) NOT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `LAST_SESSION_REFRESH` int DEFAULT NULL,
  `LOGIN_USERNAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `STARTED` int DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `USER_SESSION_STATE` int DEFAULT NULL,
  `BROKER_SESSION_ID` varchar(255) DEFAULT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_SESSION`
--

LOCK TABLES `USER_SESSION` WRITE;
/*!40000 ALTER TABLE `USER_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_SESSION_NOTE`
--

DROP TABLE IF EXISTS `USER_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_SESSION_NOTE` (
  `USER_SESSION` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` text,
  PRIMARY KEY (`USER_SESSION`,`NAME`),
  CONSTRAINT `FK5EDFB00FF51D3472` FOREIGN KEY (`USER_SESSION`) REFERENCES `USER_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_SESSION_NOTE`
--

LOCK TABLES `USER_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `USER_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WEB_ORIGINS`
--

DROP TABLE IF EXISTS `WEB_ORIGINS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WEB_ORIGINS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_WEB_ORIG_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_LOJPHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WEB_ORIGINS`
--

LOCK TABLES `WEB_ORIGINS` WRITE;
/*!40000 ALTER TABLE `WEB_ORIGINS` DISABLE KEYS */;
INSERT INTO `WEB_ORIGINS` VALUES ('52a6015c-275b-484f-8fd2-a2a852da7c64','+'),('536cdb3b-4189-4bc2-954f-ae3625c8eb4d','+');
/*!40000 ALTER TABLE `WEB_ORIGINS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-11 20:07:35
