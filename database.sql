-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2021 a las 21:41:45
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventasdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_ventas`
--

CREATE TABLE `proveedores_ventas` (
  `id` int(11) NOT NULL,
  `proveedor` text NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `detalle` text NOT NULL,
  `ventas_valor` int(11) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores_ventas`
--

INSERT INTO `proveedores_ventas` (`id`, `proveedor`, `id_proveedor`, `detalle`, `ventas_valor`, `fecha`) VALUES
(1, 'vendedor1', 1, 'comida', 10000, '2021-07-01'),
(2, 'vendedor2', 2, 'recursos', 200000, '2021-07-01'),
(3, 'vendedor3', 3, 'textil', 350000, '2021-07-01'),
(4, 'vendedor1', 1, 'comida', 20000, '2021-07-04'),
(5, 'vendedor1', 1, 'comida', 5000, '2021-07-07'),
(6, 'vendedor1', 1, 'comida', 12000, '2021-07-08'),
(7, 'vendedor3', 3, 'controles', 10000, '2021-07-24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proveedores_ventas`
--
ALTER TABLE `proveedores_ventas`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
