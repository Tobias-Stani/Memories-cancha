-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2024 a las 21:47:27
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `partidos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `id` int(11) NOT NULL,
  `partido` varchar(255) NOT NULL,
  `resultado` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `competencia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`id`, `partido`, `resultado`, `fecha`, `link`, `competencia`) VALUES
(2, 'VELEZ - IQUIQUE', '3-0', '2013-04-02', 'https://www.youtube.com/watch?v=Nd__PsYd5Qo', 'COPA SANTANDER LIBERTADORES'),
(3, 'RIVER VS LIGA DE QUITO', '2-0', '2015-09-23', 'https://www.youtube.com/watch?v=OoEb_BKPyc8', 'COPA SUDAMERICANA'),
(4, 'RIVER VS RACING', '2-1', '2023-07-28', 'https://www.youtube.com/watch?v=5TR7WGRy6Tw&t=22s', 'TORNEO LOCAL'),
(5, 'RIVER VS ARSENAL', '3-1', '2023-09-17', 'https://www.youtube.com/watch?v=f7lvzknJDsM', 'COPA DE LA LIGA'),
(6, 'RIVER VS PLATENSE', '2-1', '2022-05-08', 'https://www.youtube.com/watch?v=vRloVhTRKSI&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=1&t=144s', 'COPA DE LA LIGA'),
(7, 'RIVER VS ARGENTINOS', '4-2', '2022-04-10', 'https://www.youtube.com/watch?v=Wcfg6wai-Dg&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=2', 'COPA DE LA LIGA 2022'),
(8, 'RIVER VS SAN LORENZO', '0-1', '2019-12-08', 'https://www.youtube.com/watch?v=av4xLTerB10&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=4', 'SUPERLIGA '),
(9, 'RIVER VS RACING', '2-2', '2022-02-27', 'https://www.youtube.com/watch?v=2qefmYU-WCc&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=6', 'COPA DE LA LIGA'),
(10, 'RIVER VS COLO COLO', '4-0', '2022-05-19', 'https://www.youtube.com/watch?v=eCRDtK-g9_g&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=7', 'COPA LIBERTADORES'),
(11, 'RIVER VS VELEZ', '0-0', '2022-02-05', 'https://www.youtube.com/watch?v=ATNfd-yQEOI&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=5', 'COPA JUAN GILIBERTO FUNES'),
(12, 'RIVER VS TUCUMAN', '0-0', '2022-06-11', 'https://www.youtube.com/watch?v=_7ltA_mRwrY&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=8', 'TORNEO AFA 2022'),
(13, 'RIVER VS NWELLS', '4-1', '2022-08-13', 'https://www.youtube.com/watch?v=ZJhQgLl4qC0&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=9', 'COPA DE LA LIGA'),
(14, 'RIVER VS CENTRAL CORDOBA', '3-0', '2022-08-21', 'https://www.youtube.com/watch?v=IDJhZq8imAQ&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=10', 'TORNEO AFA 2022'),
(15, 'RIVER VS TALLERES', '0-1', '2022-09-24', 'https://www.youtube.com/watch?v=Vp9Qthzqiok&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=11', 'LIGA PROFESIONAL'),
(16, 'RIVER VS ESTUDIANTES', '5-0', '2022-10-05', 'https://www.youtube.com/watch?v=DL3yRfdsShs&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=12', ''),
(17, 'RIVER VS ARGENTINOS', '2-1', '2023-02-13', 'https://www.youtube.com/watch?v=j7bMJgI-0qc&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=14', 'TORNEO LOCAL'),
(18, 'RIVER VS GODOY CRUZ', '3-0', '2023-03-12', 'https://www.youtube.com/watch?v=EpdIRCm9iIM&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=17', 'TORNEO LOCAL'),
(19, 'HURACAN VS RIVER', '0-3', '2023-04-09', 'https://www.youtube.com/watch?v=r57kPIFMDYQ&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=18', 'TORNEO LOCAL'),
(20, 'RIVER VS SPORTING CRISTAL', '4-2', '2023-04-19', 'https://www.youtube.com/watch?v=kPe9n68Ah08&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=20', 'COPA LIBERTADORES'),
(21, 'RIVER VS BOCA', '1-0', '2023-05-07', 'https://www.youtube.com/watch?v=cKFzxa6_egw&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=22', 'TORNEO LOCAL'),
(22, 'RIVER VS PLATENSE', '2-1', '2023-05-21', 'https://www.youtube.com/watch?v=1OJMfgnXTWc&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=25', 'TORNEO LOCAL'),
(23, 'BARRACAS VS SAN LORENZO', '1-0', '2023-05-28', 'https://www.youtube.com/watch?v=ZJwQL2EV5Ls&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=26', 'TORNEO LOCAL'),
(24, 'RIVER VS FLUMINENSE', '2-0', '2023-06-07', 'https://www.youtube.com/watch?v=WPQ5pBp6af0&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=27', 'COPA LIBERTADORES'),
(25, 'RIVER VS INSTITUTO', '3-1', '2023-06-22', 'https://www.youtube.com/watch?v=6hdsobDWdWk&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=28', 'TORNEO LOCAL'),
(26, 'BARRACAS VS RIVER', '2-1', '2023-07-01', 'https://www.youtube.com/watch?v=3B1K-nRPL-4&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=29', 'TORNEO LOCAL'),
(27, 'VELEZ VS RIVER', '2-0', '2023-09-02', 'https://www.youtube.com/watch?v=ZOZ7r5yI67A&list=PLanUM4FQCDdtPd4c5mzqVdSPgeKu_i-5n&index=33', 'COPA DE LA LIGA'),
(28, 'BANFIELD VS RIVER', '1-1', '2023-09-24', 'https://www.youtube.com/watch?v=WkVoTXZAKIc', 'COPA DE LA LIGA'),
(29, 'RIVER VS VELEZ', '0-0', '2022-07-06', 'https://www.youtube.com/watch?v=INK8V9wHIm0&t=21s', 'COPA LIBERTADORES'),
(30, 'RIVER VS TALLERES', '1-0', '2023-10-08', 'https://www.youtube.com/watch?v=NO8WpUUyhPI', 'COPA DE LA LIGA'),
(31, 'RIVER VS INDEPENDIENTE', '3-0', '2023-10-25', 'https://www.youtube.com/watch?v=SXqOwIndb0g', 'COPA DE LA LIGA'),
(32, 'SAN LORENZO VS BOCA', '1-1', '2023-11-08', 'https://www.youtube.com/watch?v=Mb0vT6nG2Do', 'COPA DE LA LIGA'),
(33, 'LANUS VS RACING ', '0-2', '2023-11-11', 'https://www.youtube.com/watch?v=9U8MzWUVCOk', 'COPA DE LA LIGA'),
(34, 'DEPORTIVO MERLO VS CHICAGO ', '1-2', '2008-11-01', 'https://www.youtube.com/watch?v=iyNjRkY3F9g', '2008-09 Primera B de Argentina, Temporada Regular 2008/09'),
(35, 'RIVER VS ARGENTINOS JUNIORS', '1-1', '2024-01-28', 'https://www.youtube.com/watch?v=m9yo5jTpnew', 'COPA DE LA LIGA 2024 '),
(36, 'RIVER VS BANFIELD', '1-1', '2024-02-18', 'https://www.youtube.com/watch?v=RODsHKsGBpc', 'COPA DE LA LIGA 2024 '),
(37, 'RIVER VS ROSARIO CENTRAL', '2-1', '2024-04-07', 'https://www.youtube.com/watch?v=lQLseKxyvgk&t=87s', 'COPA DE LA LIGA 2024 '),
(38, 'RIVER VS NACIONAL', '2-0', '2024-04-11', 'https://www.youtube.com/watch?v=Raf2TRheGTk', 'COPA LIBERTADORES');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
