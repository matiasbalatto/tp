-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-08-2019 a las 06:49:31
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `titulo_categoria` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `titulo_categoria`) VALUES
(1, 'Procesadores'),
(2, 'Motherboards'),
(3, 'Memorias'),
(4, 'Fuente'),
(5, 'HDD - SSD'),
(6, 'Gabinetes'),
(7, 'Teclados'),
(8, 'Mouses'),
(9, 'Placas de Video');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(11) NOT NULL,
  `categoria_producto` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion_producto` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `precio_producto` float NOT NULL,
  `imagen_producto` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `categoria_producto`, `descripcion_producto`, `precio_producto`, `imagen_producto`) VALUES
(1, 'procesadores', 'Intel Core I7 6700k', 23.999, 'inteli7_6700k.jpg'),
(2, 'motherboards', 'Motherboard B450-M', 2399.99, 'mother_b450m.jpg'),
(3, 'Memorias', 'Corsair DDR 4gb', 1499.99, 'memoria_corsair_vengeance.jpg'),
(4, 'Mouses', 'Logitech g603', 1299, 'logitechg603.jpg'),
(5, 'procesadores', 'intel i7 8500', 17.999, 'inteli7_8500.jpg'),
(6, 'Teclados', 'Logitech g213', 1199.99, 'teclado_logitechg213.jpg'),
(7, 'Fuentes', 'Cougar 500w Reales', 1899.99, 'fuente_cougar.jpg'),
(8, 'Memorias', 'Hyperx 4gb DDR 3', 1499.99, 'memoria_hyperx.jpg'),
(9, 'Gabinetes', 'Gabinete Sentex XDR', 2099.99, 'gabinete_sentey.jpg'),
(10, 'Memorias', 'Crucial DDR3 8 GB', 2999.99, 'memoria_crucial.jpg'),
(11, 'motherboards', 'Gigabyte H3120 DS2', 3199.99, 'mother_gigabyte_h3120ds2.jpg'),
(12, 'HDD-SSD', 'SSD WD 120 GB', 1199.99, 'ssd_wd.jpg'),
(13, 'procesadores', 'Ryzen 7200x', 18.999, 'ryzen7.jpg'),
(14, 'HDD-SSD', 'SSD Adata 240 GB', 2499.99, 'ssd_adata.jpg'),
(15, 'Placas de video', 'EVGA GTX 1060ti', 16000, '1060.jpg'),
(16, 'Placas de Video', 'EVGA GTX 1080', 25000, '1080.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
