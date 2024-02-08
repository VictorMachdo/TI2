-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mochileiros
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacao` (
  `IDAvaliacao` int NOT NULL AUTO_INCREMENT,
  `Sexo` varchar(10) DEFAULT NULL,
  `Indicacao` varchar(255) DEFAULT NULL,
  `NivelAvaliacao` int DEFAULT NULL,
  `Idade` int DEFAULT NULL,
  `CPFAvaliador` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`IDAvaliacao`),
  KEY `CPFAvaliador` (`CPFAvaliador`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conteúdo`
--

DROP TABLE IF EXISTS `conteúdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conteúdo` (
  `CódConteúdo` int NOT NULL,
  `Título` varchar(255) DEFAULT NULL,
  `EndEletrônico` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CódConteúdo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteúdo`
--

LOCK TABLES `conteúdo` WRITE;
/*!40000 ALTER TABLE `conteúdo` DISABLE KEYS */;
/*!40000 ALTER TABLE `conteúdo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `denuncia`
--

DROP TABLE IF EXISTS `denuncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `denuncia` (
  `IDDenuncia` int NOT NULL AUTO_INCREMENT,
  `NomeDenunciante` varchar(255) DEFAULT NULL,
  `EmailDenunciante` varchar(255) DEFAULT NULL,
  `TipoDenuncia` varchar(100) DEFAULT NULL,
  `Descricao` text,
  PRIMARY KEY (`IDDenuncia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `denuncia`
--

LOCK TABLES `denuncia` WRITE;
/*!40000 ALTER TABLE `denuncia` DISABLE KEYS */;
/*!40000 ALTER TABLE `denuncia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereço`
--

DROP TABLE IF EXISTS `endereço`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereço` (
  `CPF` varchar(15) NOT NULL,
  `CNPJ` varchar(20) NOT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `Cidade` varchar(255) DEFAULT NULL,
  `Rua` varchar(255) DEFAULT NULL,
  `Número` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CPF`,`CNPJ`),
  KEY `CNPJ` (`CNPJ`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereço`
--

LOCK TABLES `endereço` WRITE;
/*!40000 ALTER TABLE `endereço` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereço` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `IDevento` int NOT NULL AUTO_INCREMENT,
  `L0cal` varchar(255) NOT NULL,
  `Hora` time DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  `Descricao` text,
  `Estado` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `CPFUsuario` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`IDevento`),
  KEY `CPFUsuario` (`CPFUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `IDFornecedor` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Contato` varchar(100) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Local` varchar(255) DEFAULT NULL,
  `Servico` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IDFornecedor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `IDGrupo` int NOT NULL AUTO_INCREMENT,
  `Descricao` text,
  `Nome` varchar(100) NOT NULL,
  `Destino` varchar(100) DEFAULT NULL,
  `Interesses` text,
  `Orcamento` decimal(10,2) DEFAULT NULL,
  `DataPartida` date DEFAULT NULL,
  `DataRetorno` date DEFAULT NULL,
  PRIMARY KEY (`IDGrupo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `CNPJ` varchar(20) NOT NULL,
  `Diária` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`CNPJ`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicequalidadefornecedor`
--

DROP TABLE IF EXISTS `indicequalidadefornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicequalidadefornecedor` (
  `CNPJFornecedor` varchar(18) NOT NULL,
  `QualidadeProdutoServico` tinyint DEFAULT NULL,
  `PrazoEntrega` tinyint DEFAULT NULL,
  `Custo` tinyint DEFAULT NULL,
  `ReclamacaoCliente` tinyint DEFAULT NULL,
  PRIMARY KEY (`CNPJFornecedor`),
  CONSTRAINT `indicequalidadefornecedor_chk_1` CHECK (((`QualidadeProdutoServico` >= 1) and (`QualidadeProdutoServico` <= 9))),
  CONSTRAINT `indicequalidadefornecedor_chk_2` CHECK (((`PrazoEntrega` >= 1) and (`PrazoEntrega` <= 9))),
  CONSTRAINT `indicequalidadefornecedor_chk_3` CHECK (((`Custo` >= -(9)) and (`Custo` <= 9))),
  CONSTRAINT `indicequalidadefornecedor_chk_4` CHECK ((`ReclamacaoCliente` in (1,9)))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicequalidadefornecedor`
--

LOCK TABLES `indicequalidadefornecedor` WRITE;
/*!40000 ALTER TABLE `indicequalidadefornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `indicequalidadefornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monetização`
--

DROP TABLE IF EXISTS `monetização`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monetização` (
  `CódOP` int NOT NULL,
  `Banco` varchar(255) DEFAULT NULL,
  `MeioPagamento` varchar(255) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  PRIMARY KEY (`CódOP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monetização`
--

LOCK TABLES `monetização` WRITE;
/*!40000 ALTER TABLE `monetização` DISABLE KEYS */;
/*!40000 ALTER TABLE `monetização` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operadorturismo`
--

DROP TABLE IF EXISTS `operadorturismo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operadorturismo` (
  `CNPJ` varchar(20) NOT NULL,
  `Credencial` varchar(50) DEFAULT NULL,
  `TipoDeServiço` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CNPJ`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operadorturismo`
--

LOCK TABLES `operadorturismo` WRITE;
/*!40000 ALTER TABLE `operadorturismo` DISABLE KEYS */;
/*!40000 ALTER TABLE `operadorturismo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postagem`
--

DROP TABLE IF EXISTS `postagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postagem` (
  `IDPostagem` int NOT NULL AUTO_INCREMENT,
  `Texto` text,
  `Imagem` varchar(255) DEFAULT NULL,
  `Arquivo` varchar(255) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Numero` int DEFAULT NULL,
  `CPFUsuario` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`IDPostagem`),
  KEY `CPFUsuario` (`CPFUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postagem`
--

LOCK TABLES `postagem` WRITE;
/*!40000 ALTER TABLE `postagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `postagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurante`
--

DROP TABLE IF EXISTS `restaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurante` (
  `CNPJ` varchar(20) NOT NULL,
  `Capacidade` int DEFAULT NULL,
  `ValorUnit` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`CNPJ`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurante`
--

LOCK TABLES `restaurante` WRITE;
/*!40000 ALTER TABLE `restaurante` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segurança`
--

DROP TABLE IF EXISTS `segurança`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `segurança` (
  `Registro` varchar(50) NOT NULL,
  `Encaminhamento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Registro`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segurança`
--

LOCK TABLES `segurança` WRITE;
/*!40000 ALTER TABLE `segurança` DISABLE KEYS */;
/*!40000 ALTER TABLE `segurança` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte`
--

DROP TABLE IF EXISTS `transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte` (
  `CNPJ` varchar(20) NOT NULL,
  `ValorKM` decimal(10,2) DEFAULT NULL,
  `TipoVeículo` varchar(255) DEFAULT NULL,
  `Capacidade` int DEFAULT NULL,
  PRIMARY KEY (`CNPJ`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte`
--

LOCK TABLES `transporte` WRITE;
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariogrupo`
--

DROP TABLE IF EXISTS `usuariogrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuariogrupo` (
  `IDUsuarioGrupo` int NOT NULL AUTO_INCREMENT,
  `CPFUsuario` varchar(11) DEFAULT NULL,
  `IDGrupo` int DEFAULT NULL,
  PRIMARY KEY (`IDUsuarioGrupo`),
  KEY `CPFUsuario` (`CPFUsuario`),
  KEY `IDGrupo` (`IDGrupo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariogrupo`
--

LOCK TABLES `usuariogrupo` WRITE;
/*!40000 ALTER TABLE `usuariogrupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuariogrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuário`
--

DROP TABLE IF EXISTS `usuário`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuário` (
  `CPF` varchar(15) NOT NULL,
  `CodGrupo` int DEFAULT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Interesse` varchar(255) DEFAULT NULL,
  `Gênero` varchar(10) DEFAULT NULL,
  `Idade` int DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `Senha` varchar(100) NOT NULL,
  PRIMARY KEY (`CPF`),
  KEY `CodGrupo` (`CodGrupo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuário`
--

LOCK TABLES `usuário` WRITE;
/*!40000 ALTER TABLE `usuário` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuário` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-05 10:19:06
