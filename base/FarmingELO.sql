-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: farmingelo
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios` (
  `id_Comentarios` int(11) NOT NULL AUTO_INCREMENT,
  `descripción` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL,
  `url_imagen` varchar(45) DEFAULT NULL,
  `id_Publicacion` int(11) NOT NULL,
  PRIMARY KEY (`id_Comentarios`),
  KEY `fk_Comentarios_Publicaciones1_idx` (`id_Publicacion`),
  CONSTRAINT `fk_Comentarios_Publicaciones1` FOREIGN KEY (`id_Publicacion`) REFERENCES `publicaciones` (`id_Publicaciones`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunidades`
--

DROP TABLE IF EXISTS `comunidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comunidades` (
  `id_Comunidades` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `id_Tipo_Juego` int(11) NOT NULL,
  PRIMARY KEY (`id_Comunidades`),
  KEY `fk_Comunidades_Tipo_Juego1_idx` (`id_Tipo_Juego`),
  CONSTRAINT `fk_Comunidades_Tipo_Juego1` FOREIGN KEY (`id_Tipo_Juego`) REFERENCES `tipo_juego` (`id_Tipo_Juego`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunidades`
--

LOCK TABLES `comunidades` WRITE;
/*!40000 ALTER TABLE `comunidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `comunidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipos` (
  `id_Equipos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `slogan` varchar(45) DEFAULT NULL,
  `especialidad` varchar(45) DEFAULT NULL,
  `url_logo` varchar(45) DEFAULT NULL,
  `id_usuario_equipo` int(11) NOT NULL,
  PRIMARY KEY (`id_Equipos`),
  KEY `fk_Equipos_Usuarios_idx` (`id_usuario_equipo`),
  CONSTRAINT `fk_Equipos_Usuarios` FOREIGN KEY (`id_usuario_equipo`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion_liga`
--

DROP TABLE IF EXISTS `inscripcion_liga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscripcion_liga` (
  `id_Inscipcion_Ligas` int(11) NOT NULL,
  `id_Equipos` int(11) NOT NULL AUTO_INCREMENT,
  `id_Ligas` int(11) NOT NULL,
  PRIMARY KEY (`id_Inscipcion_Ligas`),
  KEY `fk_Inscripcion_Liga_Equipos1_idx` (`id_Equipos`),
  KEY `fk_Inscripcion_Liga_Ligas1_idx` (`id_Ligas`),
  CONSTRAINT `fk_Inscripcion_Liga_Equipos1` FOREIGN KEY (`id_Equipos`) REFERENCES `equipos` (`id_Equipos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inscripcion_Liga_Ligas1` FOREIGN KEY (`id_Ligas`) REFERENCES `ligas` (`id_Ligas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion_liga`
--

LOCK TABLES `inscripcion_liga` WRITE;
/*!40000 ALTER TABLE `inscripcion_liga` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscripcion_liga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion_torneos`
--

DROP TABLE IF EXISTS `inscripcion_torneos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscripcion_torneos` (
  `id_Inscripcion_Torneos` int(11) NOT NULL,
  `id_Torneo` int(11) NOT NULL,
  `id_Equipo` int(11) NOT NULL,
  PRIMARY KEY (`id_Inscripcion_Torneos`),
  KEY `fk_Inscripcion_Torneos_Torneos1_idx` (`id_Torneo`),
  KEY `fk_Inscripcion_Torneos_Equipos1_idx` (`id_Equipo`),
  CONSTRAINT `fk_Inscripcion_Torneos_Equipos1` FOREIGN KEY (`id_Equipo`) REFERENCES `equipos` (`id_Equipos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inscripcion_Torneos_Torneos1` FOREIGN KEY (`id_Torneo`) REFERENCES `torneos` (`id_Torneos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion_torneos`
--

LOCK TABLES `inscripcion_torneos` WRITE;
/*!40000 ALTER TABLE `inscripcion_torneos` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscripcion_torneos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligas`
--

DROP TABLE IF EXISTS `ligas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligas` (
  `id_Ligas` int(11) NOT NULL,
  `id_Comunidades` int(11) NOT NULL,
  PRIMARY KEY (`id_Ligas`),
  KEY `fk_Ligas_Comunidades1_idx` (`id_Comunidades`),
  CONSTRAINT `fk_Ligas_Comunidades1` FOREIGN KEY (`id_Comunidades`) REFERENCES `comunidades` (`id_Comunidades`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligas`
--

LOCK TABLES `ligas` WRITE;
/*!40000 ALTER TABLE `ligas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ligas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_feed`
--

DROP TABLE IF EXISTS `news_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_feed` (
  `id_News_Feed` int(11) NOT NULL AUTO_INCREMENT,
  `id_Seguir_Usuario` int(11) NOT NULL,
  `id_Seguir_Comunidad` int(11) NOT NULL,
  PRIMARY KEY (`id_News_Feed`),
  KEY `fk_News_Feed_Seguir_Usuario1_idx` (`id_Seguir_Usuario`),
  KEY `fk_News_Feed_Seguir_Comunidad1_idx` (`id_Seguir_Comunidad`),
  CONSTRAINT `fk_News_Feed_Seguir_Comunidad1` FOREIGN KEY (`id_Seguir_Comunidad`) REFERENCES `seguir_comunidad` (`id_Seguir_Comunidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_News_Feed_Seguir_Usuario1` FOREIGN KEY (`id_Seguir_Usuario`) REFERENCES `seguir_usuario` (`id_Seguir_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_feed`
--

LOCK TABLES `news_feed` WRITE;
/*!40000 ALTER TABLE `news_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `id_Paises` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Paises`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicaciones`
--

DROP TABLE IF EXISTS `publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicaciones` (
  `id_Publicaciones` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL,
  `url_imagen` varchar(45) DEFAULT NULL,
  `id_Usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_Publicaciones`),
  KEY `fk_Publicaciones_Usuarios1_idx` (`id_Usuario`),
  CONSTRAINT `fk_Publicaciones_Usuarios1` FOREIGN KEY (`id_Usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicaciones`
--

LOCK TABLES `publicaciones` WRITE;
/*!40000 ALTER TABLE `publicaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguir_comunidad`
--

DROP TABLE IF EXISTS `seguir_comunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguir_comunidad` (
  `id_Seguir_Comunidad` int(11) NOT NULL,
  `Usuarios_id_usuario` int(11) NOT NULL,
  `Comunidades_id_Comunidades` int(11) NOT NULL,
  PRIMARY KEY (`id_Seguir_Comunidad`),
  KEY `fk_Usuario_Comunidad_Usuarios1_idx` (`Usuarios_id_usuario`),
  KEY `fk_Usuario_Comunidad_Comunidades1_idx` (`Comunidades_id_Comunidades`),
  CONSTRAINT `fk_Usuario_Comunidad_Comunidades1` FOREIGN KEY (`Comunidades_id_Comunidades`) REFERENCES `comunidades` (`id_Comunidades`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_Comunidad_Usuarios1` FOREIGN KEY (`Usuarios_id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguir_comunidad`
--

LOCK TABLES `seguir_comunidad` WRITE;
/*!40000 ALTER TABLE `seguir_comunidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguir_comunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguir_usuario`
--

DROP TABLE IF EXISTS `seguir_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguir_usuario` (
  `id_Seguir_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_Usuario` int(11) NOT NULL,
  `id_Usuario_Seguido` int(11) NOT NULL,
  PRIMARY KEY (`id_Seguir_Usuario`),
  KEY `fk_Seguir_Usuario_Usuarios1_idx` (`id_Usuario`),
  KEY `fk_Seguir_Usuario_Usuario_Seguido1_idx` (`id_Usuario_Seguido`),
  CONSTRAINT `fk_Seguir_Usuario_Usuario_Seguido1` FOREIGN KEY (`id_Usuario_Seguido`) REFERENCES `usuario_seguido` (`id_Usuario_Seguido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Seguir_Usuario_Usuarios1` FOREIGN KEY (`id_Usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguir_usuario`
--

LOCK TABLES `seguir_usuario` WRITE;
/*!40000 ALTER TABLE `seguir_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguir_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_juego`
--

DROP TABLE IF EXISTS `tipo_juego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_juego` (
  `id_Tipo_Juego` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Tipo_Juego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_juego`
--

LOCK TABLES `tipo_juego` WRITE;
/*!40000 ALTER TABLE `tipo_juego` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_juego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuario` (
  `id_Tipo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Tipo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'Administrador'),(2,'Lider de Equipo'),(3,'Jugador');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torneos`
--

DROP TABLE IF EXISTS `torneos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torneos` (
  `id_Torneos` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `pricepool` decimal(10,2) NOT NULL DEFAULT '0.00',
  `id_comunidad` int(11) NOT NULL,
  PRIMARY KEY (`id_Torneos`),
  KEY `fk_Torneos_Comunidades1_idx` (`id_comunidad`),
  CONSTRAINT `fk_Torneos_Comunidades1` FOREIGN KEY (`id_comunidad`) REFERENCES `comunidades` (`id_Comunidades`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torneos`
--

LOCK TABLES `torneos` WRITE;
/*!40000 ALTER TABLE `torneos` DISABLE KEYS */;
/*!40000 ALTER TABLE `torneos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_seguido`
--

DROP TABLE IF EXISTS `usuario_seguido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_seguido` (
  `id_Usuario_Seguido` int(11) NOT NULL,
  PRIMARY KEY (`id_Usuario_Seguido`),
  CONSTRAINT `fk_Usuario_Seguido_Usuarios1` FOREIGN KEY (`id_Usuario_Seguido`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_seguido`
--

LOCK TABLES `usuario_seguido` WRITE;
/*!40000 ALTER TABLE `usuario_seguido` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_seguido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `segundo_nombre` varchar(45) DEFAULT NULL,
  `apellido_paterno` varchar(45) DEFAULT NULL,
  `apellido_materno` varchar(45) DEFAULT NULL,
  `acerca_de` varchar(255) DEFAULT NULL,
  `sexo` tinyint(1) DEFAULT NULL,
  `rating` int(4) NOT NULL DEFAULT '1000',
  `win` int(11) NOT NULL DEFAULT '0',
  `loss` int(11) NOT NULL DEFAULT '0',
  `url_foto` varchar(45) DEFAULT 'img-profile/profile_user.jpg',
  `id_pais` int(11) DEFAULT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fk_Usuarios_Tipo_usuario1_idx` (`id_tipo_usuario`),
  KEY `fk_Usuarios_Paises1_idx` (`id_pais`),
  CONSTRAINT `fk_Usuarios_Paises1` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id_Paises`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuarios_Tipo_usuario1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_Tipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Forze-Sama','s_nhh@hotmail.com','b5p5pw11',NULL,NULL,NULL,NULL,NULL,NULL,1000,0,0,'img-profile/chunda.jpg',NULL,3),(2,'not-jahmilli','anthonysteiner96@gmail.com','j3j3',NULL,NULL,NULL,NULL,NULL,NULL,1000,0,0,'img-profile/profile_user.jpg',NULL,3);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-21 17:33:15
