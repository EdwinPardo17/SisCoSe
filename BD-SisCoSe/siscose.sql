-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2018 a las 09:17:23
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
-- Base de datos: `siscose`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellidos` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Id cliente` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` int(10) DEFAULT NULL,
  `Dirección` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Correo` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `Nombre` varchar(40) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `Tipo` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Id Servicio` int(4) NOT NULL,
  `Descripcion` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `Nombre Cliente` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Id cliente` int(20) NOT NULL,
  `Tipo Servicio` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Hora de inicio` datetime(6) NOT NULL,
  `Hora final` datetime(6) NOT NULL,
  `Descripcion Equipo` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Comentario` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id Usuario` int(5) NOT NULL,
  `Nombre` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Correo` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Rol` int(50) DEFAULT NULL,
  `Contraseña` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id Usuario`, `Nombre`, `Apellido`, `Correo`, `Rol`, `Contraseña`, `Telefono`) VALUES
(1, 'Edwin', '\0\0\0P\0\0\0?\0\0\0?\0\0\0?\0\0\0?', 'epardo@jitelcr.com', 1, '\0\0\0?\0\0\0?\0\0\0?\0\0\0?', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id cliente`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`Id Servicio`);

--
-- Indices de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD PRIMARY KEY (`Id cliente`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id Usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
