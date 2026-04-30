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


-- Volcando estructura de base de datos para 01_bd_playlist
CREATE DATABASE IF NOT EXISTS `01_bd_playlist` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `01_bd_playlist`;

-- Volcando estructura para tabla 01_bd_playlist.t_artistas
DROP TABLE IF EXISTS `t_artistas`;
CREATE TABLE IF NOT EXISTS `t_artistas` (
  `id_artistas` int NOT NULL AUTO_INCREMENT,
  `nombre_artista` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_artistas`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla 01_bd_playlist.t_artistas: ~11 rows (aproximadamente)
INSERT INTO `t_artistas` (`id_artistas`, `nombre_artista`) VALUES
	(1, 'Luis Fonsi'),
	(2, 'Danna Paola'),
	(3, 'Britney Spears'),
	(4, 'Sebastian Yatra'),
	(5, 'Maluma'),
	(6, 'Demi Lovato'),
	(7, 'Joan Sebastian'),
	(8, 'Maneskin'),
	(9, 'Carlos Vives'),
	(10, 'J Balvin'),
	(11, 'Shakira');

-- Volcando estructura para tabla 01_bd_playlist.t_genero_cancion
DROP TABLE IF EXISTS `t_genero_cancion`;
CREATE TABLE IF NOT EXISTS `t_genero_cancion` (
  `id_gen` int NOT NULL AUTO_INCREMENT,
  `nombre_gen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_gen`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla 01_bd_playlist.t_genero_cancion: ~13 rows (aproximadamente)
INSERT INTO `t_genero_cancion` (`id_gen`, `nombre_gen`) VALUES
	(1, 'Pop'),
	(2, 'Reggaeton'),
	(3, 'Electro'),
	(4, 'Metal'),
	(5, 'Baladas'),
	(6, 'K-Pop'),
	(7, 'Rock'),
	(8, 'Country'),
	(9, 'Norteño'),
	(10, 'Clasico'),
	(11, 'Heavy Metal'),
	(12, 'Retro'),
	(13, 'Electro-pop');

-- Volcando estructura para tabla 01_bd_playlist.t_gen_artistas
DROP TABLE IF EXISTS `t_gen_artistas`;
CREATE TABLE IF NOT EXISTS `t_gen_artistas` (
  `id_gen_artistas` char(1) NOT NULL,
  `genero` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_gen_artistas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla 01_bd_playlist.t_gen_artistas: ~4 rows (aproximadamente)
INSERT INTO `t_gen_artistas` (`id_gen_artistas`, `genero`) VALUES
	('B', 'Banda'),
	('G', 'Grupo'),
	('H', 'Hombre'),
	('M', 'Mujer');

-- Volcando estructura para tabla 01_bd_playlist.t_playlist
DROP TABLE IF EXISTS `t_playlist`;
CREATE TABLE IF NOT EXISTS `t_playlist` (
  `id_playlist` int NOT NULL AUTO_INCREMENT,
  `cancion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `artista` int NOT NULL,
  `gen_cancion` int NOT NULL,
  `gen_artista` char(1) NOT NULL,
  PRIMARY KEY (`id_playlist`),
  KEY `FK_t_playlist_t_artistas` (`artista`),
  KEY `FK_t_playlist_t_genero_cancion` (`gen_cancion`),
  KEY `FK_t_playlist_t_gen_artistas` (`gen_artista`),
  CONSTRAINT `FK_t_playlist_t_artistas` FOREIGN KEY (`artista`) REFERENCES `t_artistas` (`id_artistas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_t_playlist_t_gen_artistas` FOREIGN KEY (`gen_artista`) REFERENCES `t_gen_artistas` (`id_gen_artistas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_t_playlist_t_genero_cancion` FOREIGN KEY (`gen_cancion`) REFERENCES `t_genero_cancion` (`id_gen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla 01_bd_playlist.t_playlist: ~2 rows (aproximadamente)
INSERT INTO `t_playlist` (`id_playlist`, `cancion`, `artista`, `gen_cancion`, `gen_artista`) VALUES
	(1, 'Criminal', 3, 1, 'M'),
	(2, 'Mala Famma', 2, 2, 'M');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
