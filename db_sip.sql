-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-07-2022 a las 15:03:51
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_sip`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pases`
--

DROP TABLE IF EXISTS `tb_pases`;
CREATE TABLE IF NOT EXISTS `tb_pases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) NOT NULL,
  `costo` int(11) NOT NULL,
  `pases` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `tb_pases`
--

INSERT INTO `tb_pases` (`id`, `tipo`, `costo`, `pases`) VALUES
(1, 'Mensual', 25, 96),
(2, 'Semestral', 50, 576),
(3, 'Anual', 80, 1052);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

DROP TABLE IF EXISTS `tb_usuarios`;
CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `fecha_compra` date NOT NULL,
  `id_pase` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pase` (`id_pase`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id`, `nombre`, `fecha_compra`, `id_pase`) VALUES
(1, 'Estefi Ramos', '2022-06-03', 1),
(2, 'Steve Jimbo', '2022-07-02', 1),
(3, 'Luis Martinez', '2022-07-07', 2),
(4, 'Viviana', '2022-06-17', 2);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD CONSTRAINT `tb_usuarios_ibfk_1` FOREIGN KEY (`id_pase`) REFERENCES `tb_pases` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
