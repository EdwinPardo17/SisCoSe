-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2018 a las 07:13:47
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mysql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Trabajos`
--

CREATE TABLE `trabajos` (
  `Nombre Cliente` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Id cliente` int(20) UNSIGNED ZEROFILL DEFAULT NULL,
  `Tipo Servicio` varchar(40) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Hora de inicio` datetime(6) DEFAULT CURRENT_TIMESTAMP(6),
  `Hora final` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Descripcion equipo` varchar(40) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Comentario` varchar(40) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Trabajos`
--
ALTER TABLE `Trabajos`
  ADD PRIMARY KEY (`Nombre Cliente`,`Hora final`),
  ADD UNIQUE KEY `Id` (`Id cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
