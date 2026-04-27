-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.31 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para 02_bd_alumnos
CREATE DATABASE IF NOT EXISTS `02_bd_alumnos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `02_bd_alumnos`;

-- Volcando estructura para tabla 02_bd_alumnos.t_alumnos
DROP TABLE IF EXISTS `t_alumnos`;
CREATE TABLE IF NOT EXISTS `t_alumnos` (
  `id_alumno` int NOT NULL AUTO_INCREMENT COMMENT 'id del alumno',
  `apellido_pat` varchar(50) NOT NULL COMMENT 'apellido materno',
  `apellido_mat` varchar(50) NOT NULL COMMENT 'apellido materno',
  `nombre` varchar(50) NOT NULL COMMENT 'nombres',
  `edad` int NOT NULL COMMENT 'edad del alumno',
  `correo` varchar(50) NOT NULL COMMENT 'correo electronico',
  `especialidad` int NOT NULL COMMENT 'especialidad de la carrera',
  `semestre` int NOT NULL COMMENT 'semestre que cursa',
  PRIMARY KEY (`id_alumno`),
  KEY `FK_especialidad` (`especialidad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla 02_bd_alumnos.t_alumnos: 0 rows
/*!40000 ALTER TABLE `t_alumnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_alumnos` ENABLE KEYS */;

-- Volcando estructura para tabla 02_bd_alumnos.t_especialidad
DROP TABLE IF EXISTS `t_especialidad`;
CREATE TABLE IF NOT EXISTS `t_especialidad` (
  `id_especialidad` int NOT NULL COMMENT 'id de la especilidad',
  `nombre_especialidad` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'nombre de la especialidad',
  PRIMARY KEY (`id_especialidad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla 02_bd_alumnos.t_especialidad: 4 rows
/*!40000 ALTER TABLE `t_especialidad` DISABLE KEYS */;
INSERT INTO `t_especialidad` (`id_especialidad`, `nombre_especialidad`) VALUES
	(1, 'Recursos Humanos'),
	(2, 'Secretariado Ejecutivo Bilingue'),
	(3, 'Programacion'),
	(4, 'Electronica');
/*!40000 ALTER TABLE `t_especialidad` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
