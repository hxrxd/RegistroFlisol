-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-04-2016 a las 19:59:37
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `flisol`
--
CREATE DATABASE IF NOT EXISTS `flisol` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `flisol`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partaker`
--
-- Creación: 26-04-2016 a las 17:40:27
--

DROP TABLE IF EXISTS `partaker`;
CREATE TABLE `partaker` (
  `id_partaker` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ics` varchar(20) NOT NULL,
  `ic` varchar(20) NOT NULL,
  `ii` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `partaker`:
--

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `partaker`
--
ALTER TABLE `partaker`
  ADD PRIMARY KEY (`id_partaker`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `partaker`
--
ALTER TABLE `partaker`
  MODIFY `id_partaker` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
